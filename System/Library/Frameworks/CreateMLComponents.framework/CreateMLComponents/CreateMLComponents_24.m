uint64_t UniformRandomFloatingPointParameter.range.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t UniformRandomFloatingPointParameter.range.setter(uint64_t a1)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t UniformRandomFloatingPointParameter.init<A>(range:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for UniformRandomFloatingPointParameter();
  v10 = (a4 + *(result + 60));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t UniformRandomFloatingPointParameter.applied<A>(to:generator:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[9] = v4;
  v1[10] = v0;
  v1[7] = v2;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[2] = v10;
  v11 = *(v2 + 16);
  v1[11] = v11;
  v1[12] = *(v11 - 8);
  v1[13] = swift_task_alloc();
  v12 = *(v3 + 24);
  v1[14] = v12;
  v1[15] = *(v12 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237E6FBC4, 0, 0);
}

void sub_237E6FBC4()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[7];
  sub_237EF81A0();
  (*(v2 + *(v3 + 60)))(v1);
  v6 = *(*(v3 + 32) + 24) + **(*(v3 + 32) + 24);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_237E6FD44;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E6FD44()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_237E6FF2C;
  }

  else
  {
    v5 = sub_237E6FEB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237E6FEB4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = OUTLINED_FUNCTION_2_103();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_237E6FF2C()
{
  OUTLINED_FUNCTION_2_0();
  v1 = OUTLINED_FUNCTION_2_103();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_237E6FFA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237E53A6C;

  return UniformRandomFloatingPointParameter.applied<A>(to:generator:eventHandler:)();
}

unint64_t sub_237E70098()
{
  result = sub_237EF84E0();
  if (v1 <= 0x3F)
  {
    result = sub_237E704FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237E70130(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v17 = *((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v6, v4);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v7;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v7 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_237E70280(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = ((*(*(v6 - 8) + 64) + *(v7 + 80)) & ~*(v7 + 80)) + *(*(v6 - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_55:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v8 < 0x7FFFFFFF)
          {
            v21 = (&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v21 = a2 & 0x7FFFFFFF;
              v21[1] = 0;
            }

            else
            {
              *v21 = (a2 - 1);
            }
          }

          else if (v8 >= a2)
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
          }

          else
          {
            if (v10 <= 3)
            {
              v18 = ~(-1 << (8 * v10));
            }

            else
            {
              v18 = -1;
            }

            if (v10)
            {
              v19 = v18 & (~v8 + a2);
              if (v10 <= 3)
              {
                v20 = v10;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v10);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_237E704FC()
{
  result = qword_27DEB5420[0];
  if (!qword_27DEB5420[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27DEB5420);
  }

  return result;
}

uint64_t sub_237E706D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 8);
  v14 = *(a3 + a4 - 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_237EF62C0();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, v8);
  v15 = v5;
  v16 = v14;
  v17 = v6;
  v12 = type metadata accessor for PreprocessingSupervisedTabularEstimator();
  return PreprocessingSupervisedTabularEstimator.annotationColumnID.setter(v10, v12);
}

uint64_t PreprocessingSupervisedTabularEstimator.annotationColumnID.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v5 = sub_237EF62C0();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  (*(v7 + 16))(&v13 - v10, a1, v5, v9);
  (*(v3 + 40))(v11, v4, v3);
  return (*(v7 + 8))(a1, v5);
}

void (*PreprocessingSupervisedTabularEstimator.annotationColumnID.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  swift_getAssociatedTypeWitness();
  v6 = sub_237EF62C0();
  v5[2] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v5[3] = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v5[5] = __swift_coroFrameAllocStub(v9);
  PreprocessingSupervisedTabularEstimator.annotationColumnID.getter(a2);
  return sub_237E70A38;
}

void sub_237E70A38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    PreprocessingSupervisedTabularEstimator.annotationColumnID.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PreprocessingSupervisedTabularEstimator.annotationColumnID.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PreprocessingSupervisedTabularEstimator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PreprocessingSupervisedTabularEstimator();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t PreprocessingSupervisedTabularEstimator.preprocessed(from:eventHandler:)()
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
  v1[10] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237E70C8C()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  PreprocessingSupervisedTabularEstimator.preprocessor.getter(v1, v0[10]);
  v2 = *(*(v1 + 32) + 8);
  v11 = (*(v2 + 24) + **(v2 + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[11] = v3;
  *v3 = v4;
  v3[1] = sub_237D9E1CC;
  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return v11(v8, v9, v6, v7, v5, v2);
}

uint64_t PreprocessingSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v4;
  v1[6] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[2] = v8;
  v1[9] = *(v2 + 16);
  v1[10] = swift_task_alloc();
  v1[11] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v9;
  v1[13] = swift_task_alloc();
  v1[14] = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[16] = v11;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237E70F24()
{
  OUTLINED_FUNCTION_12_2();
  v12 = v0[14];
  PreprocessingSupervisedTabularEstimator.estimator.getter(v0[7], v0[13]);
  v11 = (*(v12 + 56) + **(v12 + 56));
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v1;
  *v1 = v2;
  v1[1] = sub_237E71044;
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  return v11(v3, v8, v9, v6, v7, v5, v4);
}

uint64_t sub_237E71044()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 160) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E7119C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[10];
  v9 = v0[9];
  v8 = v0[2];
  PreprocessingSupervisedTabularEstimator.preprocessor.getter(v0[7], v5);
  (*(v4 + 32))(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v5, v2, v9, v3, v8);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t PreprocessingSupervisedTabularEstimator.fitted(to:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = sub_237EF61A0();
  v1[11] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[12] = v8;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[15] = v9;
  *v9 = v10;
  v9[1] = sub_237E7143C;

  return PreprocessingSupervisedTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237E7143C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E71538()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  v1 = v0[11];
  v2 = v0[9];
  sub_237C89E7C(v0[3], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[10];
    v4 = v0[11];
    sub_237C89EEC(v0[9]);
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    v5 = v0[16];
    sub_237EF8B90();
    if (v5)
    {
      sub_237C89EEC(v0[10]);
      v6 = OUTLINED_FUNCTION_31_0();
      v7(v6);

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_59();

      return v9(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[19] = v20;
      *v20 = v21;
      OUTLINED_FUNCTION_3_64(v20);
      OUTLINED_FUNCTION_59();

      return PreprocessingSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
    }
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[9], v0[11]);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[17] = v17;
    *v17 = v18;
    v17[1] = sub_237E71720;
    OUTLINED_FUNCTION_59();

    return PreprocessingSupervisedTabularEstimator.preprocessed(from:eventHandler:)();
  }
}

uint64_t sub_237E71720()
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

uint64_t sub_237E7181C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  (*(v0[12] + 8))(v0[13], v2);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  sub_237C89F54(v3, v1);
  v4 = v0[18];
  sub_237EF8B90();
  if (v4)
  {
    sub_237C89EEC(v0[10]);
    v5 = OUTLINED_FUNCTION_31_0();
    v6(v5);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_59();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[19] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_3_64(v16);
    OUTLINED_FUNCTION_59();

    return PreprocessingSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
  }
}

uint64_t PreprocessingSupervisedTabularEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTabularTransformer();
  return (*(v4 + 64))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingSupervisedTabularEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  result = (*(v11 + 72))(a1, v12, v11, v19);
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

void (*sub_237E71C7C(void *a1, uint64_t a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = PreprocessingSupervisedTabularEstimator.annotationColumnID.modify(v4, a2);
  return sub_237C803C0;
}

uint64_t sub_237E71CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingSupervisedTabularEstimator.fitted(to:validateOn:eventHandler:)();
}

uint64_t sub_237E71F54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237E7211C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void sub_237E723D4()
{
  v2 = v0[1];
  v3 = v0[3];
  if (v3 >= *(v2 + 16))
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60);
    v6 = *v0;
    swift_beginAccess();
    v7 = *(v6 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_16(inited, xmmword_237F03530);
    v9 = sub_237DA2564();
    OUTLINED_FUNCTION_14_59();
    inited[3].n128_u64[1] = &type metadata for _JSONKey;
    inited[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v10 = swift_allocObject();
    inited[2].n128_u64[0] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v1;
    OUTLINED_FUNCTION_15_43(v10);
    v13 = v7;
    sub_237E486B8(inited);
    sub_237EF93D0();
    OUTLINED_FUNCTION_5_16();
    (*(v11 + 104))(v5);
    swift_willThrow();
  }

  else if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237CBA478(v2 + 32 * v3 + 32, v12);
    sub_237DAE308();
    if (swift_dynamicCast())
    {

      v0[3] = v3 + 1;
    }
  }
}

void sub_237E743E0()
{
  OUTLINED_FUNCTION_0_88();
  if (v5 == v6)
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_13_50(MEMORY[0x277D83A90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_16(inited, xmmword_237F03530);
    sub_237DA2564();
    OUTLINED_FUNCTION_8_81();
    inited[3].n128_u64[1] = &type metadata for _JSONKey;
    inited[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_2_104(v27);
    OUTLINED_FUNCTION_12_53();
    OUTLINED_FUNCTION_5_16();
    (*(v28 + 104))(v25);
    swift_willThrow();
    return;
  }

  v7 = *v2;
  v36 = sub_237DA2564();
  OUTLINED_FUNCTION_6_71();
  sub_237D86C8C();
  OUTLINED_FUNCTION_21_47();
  v8 = OUTLINED_FUNCTION_9_61();
  sub_237D6D628(v8, v36, v3, v4, v9, v10);
  swift_endAccess();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_35();
  if (v19)
  {
LABEL_12:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_26_28(v11, v12, v13, v14, v15, v16, v17, v18, v34, v0, v36, v37, v38, v39, v40);
  sub_237CB6954(v41, v20, v21);
  if (v35)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_18_42();
    OUTLINED_FUNCTION_24_36();
  }

  else
  {
    v29 = v22;
    __swift_destroy_boxed_opaque_existential_1(v41);
    if ((v29 & 0x100000000) == 0)
    {
      OUTLINED_FUNCTION_11_61();
      OUTLINED_FUNCTION_24_36();
      sub_237D6D14C(v30);
      __swift_destroy_boxed_opaque_existential_1(v41);
      swift_endAccess();
      return;
    }

    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_30_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_31_26(MEMORY[0x277D83A90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418);
    v31 = swift_initStackObject();
    OUTLINED_FUNCTION_42_17(v31, xmmword_237F03530);
    sub_237DA2564();
    OUTLINED_FUNCTION_45_18();
    v31[3].n128_u64[1] = &type metadata for _JSONKey;
    v31[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_1_108(v32);
    OUTLINED_FUNCTION_44_18();
    OUTLINED_FUNCTION_38_16();
    OUTLINED_FUNCTION_22_3();
    (*(v33 + 104))(v7);
    swift_willThrow();
    OUTLINED_FUNCTION_20_43();
    OUTLINED_FUNCTION_32_28();
  }

  sub_237D6D14C(v23);
  __swift_destroy_boxed_opaque_existential_1(v41);
  swift_endAccess();
}

void sub_237E74704()
{
  OUTLINED_FUNCTION_0_88();
  if (v4 == v5)
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_13_50(MEMORY[0x277D839F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_16(inited, xmmword_237F03530);
    sub_237DA2564();
    OUTLINED_FUNCTION_8_81();
    inited[3].n128_u64[1] = &type metadata for _JSONKey;
    inited[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_2_104(v25);
    OUTLINED_FUNCTION_12_53();
    OUTLINED_FUNCTION_5_16();
    (*(v26 + 104))(v23);
    swift_willThrow();
    return;
  }

  v34 = sub_237DA2564();
  OUTLINED_FUNCTION_6_71();
  sub_237D86C8C();
  OUTLINED_FUNCTION_21_47();
  v6 = OUTLINED_FUNCTION_9_61();
  sub_237D6D628(v6, v34, v2, v3, v7, v8);
  swift_endAccess();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_35();
  if (v17)
  {
LABEL_12:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_26_28(v9, v10, v11, v12, v13, v14, v15, v16, v32, v0, v34, v35, v36, v37, v38);
  sub_237CB6E10(v39, v18, v19);
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_18_42();
    OUTLINED_FUNCTION_24_36();
LABEL_9:
    sub_237D6D14C(v21);
    __swift_destroy_boxed_opaque_existential_1(v39);
    swift_endAccess();
    return;
  }

  v27 = v20;
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (v27)
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_30_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_31_26(MEMORY[0x277D839F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418);
    v28 = swift_initStackObject();
    OUTLINED_FUNCTION_42_17(v28, xmmword_237F03530);
    sub_237DA2564();
    OUTLINED_FUNCTION_45_18();
    v28[3].n128_u64[1] = &type metadata for _JSONKey;
    v28[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_1_108(v29);
    OUTLINED_FUNCTION_44_18();
    OUTLINED_FUNCTION_39_19();
    OUTLINED_FUNCTION_22_3();
    (*(v30 + 104))(v27);
    swift_willThrow();
    OUTLINED_FUNCTION_20_43();
    OUTLINED_FUNCTION_32_28();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_61();
  OUTLINED_FUNCTION_24_36();
  sub_237D6D14C(v31);
  __swift_destroy_boxed_opaque_existential_1(v39);
  swift_endAccess();
}

uint64_t sub_237E74CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = sub_237EF90F0();
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = v6[1];
  v17 = v6[3];
  if (v17 >= *(v16 + 16))
  {
    sub_237EF93E0();
    v60 = OUTLINED_FUNCTION_45_0();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v29 = a1;
    v30 = *v6;
    swift_beginAccess();
    v31 = *(v30 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_16(inited, xmmword_237F03530);
    v33 = sub_237DA2564();
    OUTLINED_FUNCTION_14_59();
    inited[3].n128_u64[1] = &type metadata for _JSONKey;
    inited[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v34 = swift_allocObject();
    inited[2].n128_u64[0] = v34;
    *(v34 + 16) = v33;
    *(v34 + 24) = a2;
    OUTLINED_FUNCTION_15_43(v34);
    v57 = v31;
    sub_237E486B8(inited);
    OUTLINED_FUNCTION_41_14();
    OUTLINED_FUNCTION_5_16();
    (*(v35 + 104))(v29);
    return swift_willThrow();
  }

  v52 = a3;
  v53 = v5;
  v49 = v13;
  v50 = v12;
  v51 = a4;
  v54 = a1;
  v18 = *v6;
  v60 = sub_237DA2564();
  v56 = v19;
  v55 = v20;
  v22 = v21;
  OUTLINED_FUNCTION_11_28();
  sub_237D86C8C();
  v23 = *(*(v18 + 120) + 16);
  sub_237D86D60(v23);
  v24 = v18;
  sub_237D6D628(v23, v60, v56, v55, v22 & 1, (v18 + 120));
  result = swift_endAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 >= *(v16 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_237CBA478(v16 + 32 * v17 + 32, &v58);
  v26 = v54;
  v27 = v53;
  sub_237CB7708(&v58, v54, a2, v52, v15);
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v58);
    if (__swift_getEnumTagSinglePayload(v15, 1, a2) == 1)
    {
      (*(v49 + 8))(v15, v50);
      v60 = sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      v37 = v36;
      v55 = v36;
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20) + 48);
      *v37 = v26;
      v38 = *(v18 + 120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_237F03530;
      sub_237EF8260();
      v40 = sub_237DA2564();
      v42 = v41;
      v53 = v24;
      *(v39 + 56) = &type metadata for _JSONKey;
      *(v39 + 64) = sub_237CBA80C();
      OUTLINED_FUNCTION_20_22();
      v43 = swift_allocObject();
      *(v39 + 32) = v43;
      *(v43 + 16) = v40;
      *(v43 + 24) = v42;
      OUTLINED_FUNCTION_15_43(v43);
      v58 = v38;
      sub_237E486B8(v39);
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_237EF9330();

      v58 = 0x6465746365707845;
      v59 = 0xE900000000000020;
      v44 = sub_237EFA220();
      MEMORY[0x2383E0710](v44);

      MEMORY[0x2383E0710](0xD000000000000018, 0x8000000237F01130);
      v45 = v55;
      sub_237EF93D0();
      OUTLINED_FUNCTION_10_63();
      (*(v46 + 104))(v45);
      swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_22_3();
      (*(v47 + 32))(v51, v15, a2);
      v6[3] = v17 + 1;
    }
  }

  OUTLINED_FUNCTION_11_28();
  sub_237D6D14C(&v58);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  return swift_endAccess();
}

uint64_t sub_237E7528C()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = sub_237DA2564();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_11_28();
  sub_237D86C8C();
  v10 = *(*(v1 + 120) + 16);
  sub_237D86D60(v10);
  sub_237D6D628(v10, v3, v5, v7, v9 & 1, (v1 + 120));
  result = swift_endAccess();
  v12 = v0[1];
  if (v2 >= *(v12 + 16))
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v17 = sub_237EF99A0();
    sub_237EF8260();
    OUTLINED_FUNCTION_51_15();
    OUTLINED_FUNCTION_22_3();
    (*(v18 + 104))(v17);
    swift_willThrow();
  }

  else
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    sub_237CBA478(v12 + 32 * v2 + 32, v30);
    sub_237CBA478(v30, &v27);
    sub_237DAE308();
    if (swift_dynamicCast())
    {

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      *v14 = sub_237EF99A0();
      sub_237EF8260();
      OUTLINED_FUNCTION_51_15();
      OUTLINED_FUNCTION_22_3();
      (*(v15 + 104))(v14);
    }

    else
    {
      sub_237CBA478(v30, &v27);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD0);
      if (swift_dynamicCast())
      {
        v0[3] = v2 + 1;
        v27 = sub_237DAA044(v1);
        v28 = v20;
        v29 = v21;
        _s14KeyedContainerVMa();

        swift_getWitnessTable();
        sub_237EF99B0();
        __swift_destroy_boxed_opaque_existential_1(v30);
        OUTLINED_FUNCTION_11_28();
        sub_237D6D14C(v30);
        __swift_destroy_boxed_opaque_existential_1(v30);
        return swift_endAccess();
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      v23 = v22;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_237EF9330();

      v27 = 0xD000000000000035;
      v28 = 0x8000000237EFC830;
      v24 = sub_237DA2870(v30);
      MEMORY[0x2383E0710](v24);

      v25 = OUTLINED_FUNCTION_1_14();
      MEMORY[0x2383E0710](v25, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      *v23 = v19;
      sub_237EF8260();
      OUTLINED_FUNCTION_50_16();
      OUTLINED_FUNCTION_22_3();
      (*(v26 + 104))(v23);
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  OUTLINED_FUNCTION_11_28();
  sub_237D6D14C(v30);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return swift_endAccess();
}

uint64_t sub_237E75728@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[3];
  v5 = sub_237DA2564();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_11_28();
  sub_237D86C8C();
  v12 = *(*(v3 + 120) + 16);
  sub_237D86D60(v12);
  sub_237D6D628(v12, v5, v7, v9, v11 & 1, (v3 + 120));
  result = swift_endAccess();
  v14 = v1[1];
  if (v4 >= *(v14 + 16))
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE0);
    sub_237EF8260();
    OUTLINED_FUNCTION_51_15();
    OUTLINED_FUNCTION_22_3();
    (*(v20 + 104))(v19);
    swift_willThrow();
  }

  else
  {
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    sub_237CBA478(v14 + 32 * v4 + 32, v33);
    sub_237CBA478(v33, &v31);
    sub_237DAE308();
    if (swift_dynamicCast())
    {

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      *v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE0);
      sub_237EF8260();
      OUTLINED_FUNCTION_51_15();
      OUTLINED_FUNCTION_22_3();
      (*(v17 + 104))(v16);
    }

    else
    {
      sub_237CBA478(v33, &v31);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD8);
      if (swift_dynamicCast())
      {
        v22 = v34;
        v2[3] = v4 + 1;
        v23 = *(v3 + 120);
        a1[3] = &_s16UnkeyedContainerVN_0;
        a1[4] = sub_237CBA8FC();
        v24 = swift_allocObject();
        *a1 = v24;
        v24[2] = v3;
        v24[3] = v22;
        v24[4] = v23;
        v24[5] = 0;

        sub_237EF8260();
        __swift_destroy_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_11_28();
        sub_237D6D14C(v33);
        __swift_destroy_boxed_opaque_existential_1(v33);
        return swift_endAccess();
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      v26 = v25;
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_237EF9330();

      v31 = 0xD000000000000028;
      v32 = 0x8000000237EFC7B0;
      v27 = sub_237DA2870(v33);
      MEMORY[0x2383E0710](v27);

      v28 = OUTLINED_FUNCTION_1_14();
      MEMORY[0x2383E0710](v28, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      *v26 = v21;
      sub_237EF8260();
      OUTLINED_FUNCTION_50_16();
      OUTLINED_FUNCTION_22_3();
      (*(v29 + 104))(v26);
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  OUTLINED_FUNCTION_11_28();
  sub_237D6D14C(v33);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return swift_endAccess();
}

uint64_t sub_237E75BA8@<X0>(void *a1@<X8>)
{
  v5 = v1;
  v6 = *v1;
  v7 = v1[3];
  v8 = sub_237DA2564();
  OUTLINED_FUNCTION_14_59();
  OUTLINED_FUNCTION_11_28();
  sub_237D86C8C();
  v9 = *(v6[15] + 16);
  sub_237D86D60(v9);
  sub_237D6D628(v9, v8, v2, v3, v4 & 1, v6 + 15);
  v10 = v6[15];
  result = swift_endAccess();
  v12 = v5[1];
  if (v7 >= *(v12 + 16))
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB54A8);
    sub_237EF8260();
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v18 + 104))(v17);
    swift_willThrow();
    OUTLINED_FUNCTION_11_28();
    sub_237D6D14C(v20);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return swift_endAccess();
  }

  else if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v5[3] = v7 + 1;
    sub_237CBA478(v12 + 32 * v7 + 32, v21);
    memcpy(__dst, v6 + 3, 0x58uLL);
    v13 = v6[14];
    v14 = _s19IntermediateDecoderCMa();
    swift_allocObject();
    sub_237EF8260();
    sub_237C9FEDC(__dst, v20);
    sub_237EF8260();
    v15 = sub_237CB2D00(v21, v10, __dst, v13);
    a1[3] = v14;
    a1[4] = sub_237DAE3B4();
    *a1 = v15;
    OUTLINED_FUNCTION_11_28();
    sub_237D6D14C(v20);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_237E76040()
{
  result = sub_237EF9B10();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E76090()
{
  result = sub_237EF9B20();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E76138()
{
  result = sub_237EF9B50();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E76188()
{
  result = sub_237EF9B30();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E762C8()
{
  result = sub_237EF9B60();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E76318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_108(uint64_t a1)
{
  *(v3 + 32) = a1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v2 & 1;

  return sub_237E486B8(v3);
}

uint64_t OUTLINED_FUNCTION_2_104(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5 & 1;

  return sub_237E486B8(v2);
}

uint64_t OUTLINED_FUNCTION_5_87(uint64_t a1)
{
  *(v1 - 72) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_71()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_70()
{
  v7 = *(v5 - 72);

  return sub_237D6D628(v0, v7, v2, v3, v4 & 1, (v1 + 120));
}

uint64_t OUTLINED_FUNCTION_11_61()
{
  *(v1 + 24) = v0 + 1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_53()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_13_50@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_43(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = v2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_49()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_42()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_43()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_47()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_237D86D60(v2);
}

uint64_t OUTLINED_FUNCTION_26_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_237CBA478(v15 + 32 * v16 + 32, va);
}

uint64_t OUTLINED_FUNCTION_27_29()
{

  return sub_237DA2564();
}

uint64_t OUTLINED_FUNCTION_38_16()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_39_19()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_40_16(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_42_17(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_43_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_46_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_50_16()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_51_15()
{

  return sub_237EF93D0();
}

uint64_t TransformerToEstimatorAdaptor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E7686C()
{
  TransformerToEstimatorAdaptor.transformer.getter(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237E76904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_237C5FFA4;

  return TransformerToEstimatorAdaptor.fitted<A>(to:eventHandler:)(a1, v10, v11, v12, a7);
}

uint64_t TransformerToUpdatableEstimatorAdaptor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E769D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;

  return TransformerToUpdatableEstimatorAdaptor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237E76A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_237C606BC;

  return TransformerToUpdatableEstimatorAdaptor.fitted<A>(to:eventHandler:)(a1, v10, v11, v12, a7);
}

uint64_t TemporalTransformerToEstimatorAdaptor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E76B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_237C606BC;

  return TemporalTransformerToEstimatorAdaptor.fitted<A>(to:eventHandler:)(a1, v11, v12, v13, a8);
}

uint64_t TemporalTransformerToUpdatableEstimatorAdaptor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E76BF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;

  return TemporalTransformerToUpdatableEstimatorAdaptor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237E76C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_237C606BC;

  return TemporalTransformerToUpdatableEstimatorAdaptor.fitted<A>(to:eventHandler:)(a1, v11, v12, v13, a8);
}

uint64_t TabularTransformerToEstimatorAdaptor.fitted(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E76D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C606BC;

  return TabularTransformerToEstimatorAdaptor.fitted(to:eventHandler:)(a1, v8, v9, v10, a5);
}

uint64_t _s18CreateMLComponents11TransformerPAAE18adaptedAsEstimatorAA0c2ToF7AdaptorVyxGyF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t TabularTransformerToUpdatableEstimatorAdaptor.fitted(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E76EF0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E76F2C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E76F68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;

  return TabularTransformerToUpdatableEstimatorAdaptor.update(_:with:eventHandler:)();
}

uint64_t sub_237E76FF4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E77030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C606BC;

  return TabularTransformerToUpdatableEstimatorAdaptor.fitted(to:eventHandler:)(a1, v8, v9, v10, a5);
}

uint64_t sub_237E77150(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237E7728C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
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
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_237E775D8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v46 = v4;
  v47 = v5;
  v7 = v6;
  v9 = v8;
  v43 = v10;
  OUTLINED_FUNCTION_38_17();
  swift_getAssociatedTypeWitness();
  v11 = sub_237EF62C0();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v17 = (v15 - v16);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v22 = *(v3 + 32);
  v44 = v3;
  v45 = v9;
  v41 = v22;
  v42 = v3 + 32;
  (v22)(v7, v3, v19);
  v23 = sub_237EF62B0();
  v25 = v24;
  v26 = *(v13 + 8);
  v26(v21, v11);
  (*(v1 + 32))(v47, v1);
  v27 = sub_237EF62B0();
  v29 = v28;
  v26(v17, v11);
  if (v23 == v27 && v25 == v29)
  {
    goto LABEL_7;
  }

  v31 = sub_237EF9D40();

  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_7:
  }

  v32 = v47;
  v48 = v7;
  v49 = v47;
  v33 = v44;
  v50 = v44;
  v51 = v1;
  v34 = type metadata accessor for ComposedSupervisedTabularEstimator();
  v35 = *(v7 - 8);
  v36 = v43;
  v37 = v45;
  (*(v35 + 16))(v43 + *(v34 + 52), v45, v7);
  v38 = *(v32 - 8);
  v39 = v46;
  (*(v38 + 16))(v36 + *(v34 + 56), v46, v32);
  v41(v7, v33);
  (*(v38 + 8))(v39, v32);
  (*(v35 + 8))(v37, v7);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E778C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v17 = v16;
  v15[7] = v16;
  v15[8] = v14;
  v15[5] = v18;
  v15[6] = v19;
  v15[3] = v20;
  v15[4] = v21;
  v15[2] = v22;
  v15[9] = *(v16 + 40);
  v15[10] = *(v16 + 24);
  v15[11] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v15[12] = v23;
  v15[13] = swift_task_alloc();
  v15[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  v15[15] = swift_task_alloc();
  v15[16] = swift_task_alloc();
  v15[17] = swift_task_alloc();
  v15[18] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v15[19] = v24;
  v15[20] = swift_task_alloc();
  v15[21] = swift_task_alloc();
  v25 = *(v17 + 32);
  v15[22] = v25;
  v15[23] = *(v17 + 16);
  v15[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v15[25] = v26;
  v15[26] = swift_task_alloc();
  v15[27] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v40 = v27 + *v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v15[28] = v28;
  *v28 = v29;
  v28[1] = sub_237E77BD4;
  OUTLINED_FUNCTION_18_3();

  return v37(v30, v31, v32, v33, v34, v35, v36, v37, a9, v25 + 56, v40, a12, a13, a14);
}

uint64_t sub_237E77BD4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E77CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[29];
  sub_237EF8B90();
  if (v15)
  {
    (*(v14[25] + 8))(v14[27], v14[24]);
    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_18_3();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[30] = AssociatedConformanceWitness;
    v26 = *(AssociatedConformanceWitness + 8);
    v14[31] = v26;
    v27 = *(v26 + 24);
    v14[32] = v27;
    v14[33] = (v26 + 24) & 0xFFFFFFFFFFFFLL | 0x19C4000000000000;
    v39 = v27 + *v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[34] = v28;
    *v28 = v29;
    v28[1] = sub_237E77EC4;
    OUTLINED_FUNCTION_18_3();

    return v36(v30, v31, v32, v33, v34, v35, v36, v37, v26 + 24, v39, a11, a12, a13, a14);
  }
}

uint64_t sub_237E77EC4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E77FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[35];
  sub_237EF8B90();
  if (v15)
  {
    (*(v14[19] + 8))(v14[21], v14[18]);
    v16 = OUTLINED_FUNCTION_31_0();
    v17(v16);
    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_18_3();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v27 = v14[18];
    v28 = v14[16];
    v29 = v14[4];
    __swift_storeEnumTagSinglePayload(v14[17], 1, 1, v27);
    sub_237C89E7C(v29, v28);
    if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
    {
      sub_237C89EEC(v14[16]);
      OUTLINED_FUNCTION_14_60();
      v46 = v30 + *v30;
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v14[38] = v31;
      *v31 = v32;
      OUTLINED_FUNCTION_7_71(v31);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      v42 = v14[32];
      (*(v14[19] + 32))(v14[20], v14[16], v14[18]);
      v46 = v42 + *v42;
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v14[36] = v43;
      *v43 = v44;
      v43[1] = sub_237E78290;
      OUTLINED_FUNCTION_18_3();
    }

    return v40(v33, v34, v35, v36, v37, v38, v39, v40, a9, v46, a11, a12, a13, a14);
  }
}

uint64_t sub_237E78290()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E7838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[37];
  v16 = v14[19];
  v18 = v14[17];
  v17 = v14[18];
  v19 = v14[15];
  sub_237C89EEC(v18);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v17);
  sub_237C89F54(v19, v18);
  sub_237EF8B90();
  v20 = *(v16 + 8);
  v21 = OUTLINED_FUNCTION_31_0();
  v20(v21);
  if (v15)
  {
    v22 = v14[21];
    v23 = v14[18];
    sub_237C89EEC(v14[17]);
    (v20)(v22, v23);
    v24 = OUTLINED_FUNCTION_31_0();
    v25(v24);
    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_18_3();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_14_60();
    v47 = v35 + *v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[38] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_7_71(v36);
    OUTLINED_FUNCTION_18_3();

    return v45(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, a11, a12, a13, a14);
  }
}

uint64_t sub_237E78570()
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

uint64_t sub_237E7866C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[21];
  v14 = v12[18];
  v15 = v12[17];
  v16 = *(v12[19] + 8);
  v16(v12[20], v14);
  sub_237C89EEC(v15);
  v16(v13, v14);
  v17 = OUTLINED_FUNCTION_31_0();
  v18(v17);
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_237E78764(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 64))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = a3[5];
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTabularTransformer();
    return (*(v8 + 64))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237E788D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v6 = a2[5];
  v40 = a2[3];
  v41 = v6;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v33 = v7;
  v34 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v38 = &v32 - v13;
  v14 = a2[4];
  v15 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v36 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18_43();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v32 - v21;
  v23 = *(v14 + 72);
  v39 = v3;
  v37 = a1;
  v24 = v42;
  result = v23(a1, v15, v14, v20);
  if (!v24)
  {
    v42 = &protocol requirements base descriptor for SupervisedTabularEstimator;
    v26 = v38;
    (*(v41 + 72))(v37, v40);
    (*(v36 + 32))(v42, v22, AssociatedTypeWitness);
    v27 = v11;
    v28 = v33;
    (*(v34 + 32))(v27, v26, v33);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v29 = OUTLINED_FUNCTION_28_6();
    return ComposedTabularTransformer.init(_:_:)(v29, v30, AssociatedTypeWitness, v28, v31);
  }

  return result;
}

uint64_t sub_237E78BB4@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_237EF62C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_237E78C40(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_237EF62C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_237E78CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_task_alloc();
  *(v14 + 16) = v23;
  *v23 = v14;
  v23[1] = sub_237C6A904;

  return sub_237E778C4(a1, a2, a3, a4, a5, a6, v21, v22, a9, a10, a11, a12, a13, a14);
}

void TabularTransformer.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v32 = v2;
  v33 = v0;
  v36 = v3;
  v30 = v4;
  OUTLINED_FUNCTION_1_1();
  v35 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v34 = v8 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = OUTLINED_FUNCTION_41_15(AssociatedTypeWitness);
  OUTLINED_FUNCTION_1();
  v29 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_33_21();
  OUTLINED_FUNCTION_62_2();
  v12 = type metadata accessor for TabularTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_1();
  v28 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &WitnessTable - v15;
  OUTLINED_FUNCTION_0_83();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_15_44();
  TabularTransformer.adaptedAsEstimator()(v19);
  OUTLINED_FUNCTION_33_23();
  v20(v30);
  TabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)();
  (*(v29 + 8))(v1, v31);
  (*(v28 + 8))(v16, v12);
  v21 = OUTLINED_FUNCTION_26_29();
  v22(v21);
  v23 = OUTLINED_FUNCTION_30_39();
  v24(v23);
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  sub_237E775D8();
  v25 = OUTLINED_FUNCTION_28_6();
  v26(v25);
  OUTLINED_FUNCTION_38_0();
}

void TabularEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v29[1] = v2;
  v30 = v0;
  v34 = v4;
  v35 = v3;
  v6 = v5;
  v8 = v7;
  v31 = v9;
  OUTLINED_FUNCTION_1_1();
  v33 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v32 = v13 - v12;
  swift_getAssociatedTypeWitness();
  sub_237EF62C0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_21();
  v18 = type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18_43();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v29 - v24;
  (*(v16 + 16))(v1, v30, v8, v23);
  (*(v35 + 32))(v6);
  OUTLINED_FUNCTION_20_44();
  v26 = OUTLINED_FUNCTION_27_30();
  v27(v26);
  OUTLINED_FUNCTION_62_2();
  v28();
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_6();
  sub_237E775D8();
  (*(v20 + 8))(v25, v18);
  OUTLINED_FUNCTION_38_0();
}

void SupervisedTabularEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v33 = v1;
  v34 = v0;
  v37 = v2;
  v31 = v3;
  OUTLINED_FUNCTION_1_1();
  v36 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v35 = v7 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = OUTLINED_FUNCTION_41_15(AssociatedTypeWitness);
  OUTLINED_FUNCTION_1();
  v30 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  OUTLINED_FUNCTION_62_2();
  v13 = type metadata accessor for TabularTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_1();
  v29 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  OUTLINED_FUNCTION_0_83();
  v28[0] = swift_getWitnessTable();
  type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_15_44();
  TabularTransformer.adaptedAsEstimator()(v20);
  OUTLINED_FUNCTION_33_23();
  v21(v31);
  TabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)();
  (*(v30 + 8))(v12, v32);
  (*(v29 + 8))(v17, v13);
  v22 = OUTLINED_FUNCTION_30_39();
  v23(v22);
  v24 = OUTLINED_FUNCTION_26_29();
  v25(v24);
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  sub_237E775D8();
  v26 = OUTLINED_FUNCTION_28_6();
  v27(v26);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v28[1] = v2;
  v29 = v1;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  v33 = v8;
  OUTLINED_FUNCTION_1_1();
  v32 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v31 = v12 - v11;
  OUTLINED_FUNCTION_37_22();
  swift_getAssociatedTypeWitness();
  sub_237EF62C0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_21();
  v17 = type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18_43();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v28 - v23;
  (*(v15 + 16))(v0, v30, v6, v22);
  v28[0] = v4;
  (*(v4 + 32))(v29, v4);
  OUTLINED_FUNCTION_20_44();
  OUTLINED_FUNCTION_62_2();
  v25();
  v26 = OUTLINED_FUNCTION_27_30();
  v27(v26);
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  sub_237E775D8();
  (*(v19 + 8))(v24, v17);
  OUTLINED_FUNCTION_38_0();
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
  sub_237E775D8();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E79A94()
{
  swift_getAssociatedTypeWitness();
  result = sub_237EF62C0();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_109()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_44()
{

  return TabularEstimatorToSupervisedAdaptor.init(_:annotationColumnID:)();
}

uint64_t OUTLINED_FUNCTION_41_15(uint64_t a1)
{
  *(v1 - 168) = a1;

  return sub_237EF62C0();
}

uint64_t TabularTransformer.callAsFunction(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 8);
  v15 = (*(v12 + 24) + **(v12 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C5FFA4;

  return v15(a1, a2, a3, a4, a5, v12);
}

void __swiftcall BoostedTreeConfiguration.init()(CreateMLComponents::BoostedTreeConfiguration *__return_ptr retstr)
{
  retstr->_learningRate = 0.3;
  *&retstr->maximumDepth = xmmword_237F1BD60;
  *&retstr->minimumLossReduction = xmmword_237F1BD70;
  retstr->randomSeed = 0;
  retstr->earlyStoppingIterationCount.value = 0;
  retstr->earlyStoppingIterationCount.is_nil = 1;
  __asm { FMOV            V0.2D, #1.0 }

  *&retstr->rowSubsample = _Q0;
  retstr->parallelTreeCount = 1;
}

double (*BoostedTreeConfiguration.learningRate.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_237E79EE4;
}

double sub_237E79EE4(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double (*BoostedTreeConfiguration.stepSize.modify(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_237E7B0CC;
}

uint64_t BoostedTreeConfiguration.earlyStoppingIterationCount.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

BOOL static BoostedTreeConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v11 = *(a2 + 64);
  v10 = *(a2 + 72);
  if (*(a1 + 56))
  {
    if (v9 == v11)
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = 0;
    }

    if (v12 != 1 || v8 != v10)
    {
      return 0;
    }

    return *(a1 + 80) == *(a2 + 80);
  }

  v7 = 0;
  if ((*(a2 + 56) & 1) == 0)
  {
    v14 = *(a1 + 48) == *(a2 + 48) && v9 == v11;
    if (v14 && v8 == v10)
    {
      return *(a1 + 80) == *(a2 + 80);
    }
  }

  return v7;
}

uint64_t sub_237E7A184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E7261656C5FLL && a2 == 0xED00006574615267;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x446D756D6978616DLL && a2 == 0xEC00000068747065;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000237EFF3E0 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000237F013F0 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000237F01410 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x8000000237EFDEC0 == a2;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6173627553776F72 && a2 == 0xEC000000656C706DLL;
                if (v12 || (sub_237EF9D40() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x75536E6D756C6F63 && a2 == 0xEF656C706D617362;
                  if (v13 || (sub_237EF9D40() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000011 && 0x8000000237F01430 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_237EF9D40();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_237E7A4B0(char a1)
{
  result = 0x6E696E7261656C5FLL;
  switch(a1)
  {
    case 1:
      result = 0x446D756D6978616DLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x65536D6F646E6172;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0x6173627553776F72;
      break;
    case 8:
      result = 0x75536E6D756C6F63;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E7A614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E7A184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E7A63C(uint64_t a1)
{
  v2 = sub_237E7A9A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E7A678(uint64_t a1)
{
  v2 = sub_237E7A9A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoostedTreeConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5830);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *(v1 + 8);
  v14[3] = *(v1 + 16);
  v15 = v9;
  v10 = *(v1 + 40);
  v14[1] = *(v1 + 48);
  v14[2] = v10;
  v11 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E7A9A0();
  sub_237EFA1B0();
  v26 = 0;
  v12 = v16;
  sub_237EF9A30();
  if (!v12)
  {
    LODWORD(v16) = v11;
    v25 = 1;
    sub_237EF9A50();
    v24 = 2;
    v15 = v8;
    sub_237EF9A50();
    v23 = 3;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A30();
    v22 = 4;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A30();
    v21 = 5;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A50();
    v20 = 6;
    OUTLINED_FUNCTION_1_110();
    sub_237EF99F0();
    v19 = 7;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A30();
    v18 = 8;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A30();
    v17 = 9;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A50();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_237E7A9A0()
{
  result = qword_27DEB5838;
  if (!qword_27DEB5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5838);
  }

  return result;
}

uint64_t BoostedTreeConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2383E2240](*&v1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x2383E2240](*&v12);
  if (v5 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v5;
  }

  MEMORY[0x2383E2240](*&v13);
  MEMORY[0x2383E2210](v7);
  sub_237EFA140();
  if (v8 != 1)
  {
    MEMORY[0x2383E2210](v6);
  }

  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  MEMORY[0x2383E2240](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x2383E2240](*&v15);
  return MEMORY[0x2383E2210](v11);
}

uint64_t BoostedTreeConfiguration.hashValue.getter()
{
  sub_237EFA120();
  BoostedTreeConfiguration.hash(into:)();
  return sub_237EFA170();
}

uint64_t BoostedTreeConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5840);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E7A9A0();
  sub_237EFA190();
  if (!v2)
  {
    v40 = 0;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v12 = v11;
    v39 = 1;
    OUTLINED_FUNCTION_0_90();
    v13 = sub_237EF9950();
    v38 = 2;
    OUTLINED_FUNCTION_0_90();
    v14 = sub_237EF9950();
    v37 = 3;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v16 = v15;
    v36 = 4;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v18 = v17;
    v35 = 5;
    OUTLINED_FUNCTION_0_90();
    v29 = sub_237EF9950();
    v34 = 6;
    OUTLINED_FUNCTION_0_90();
    v28 = sub_237EF98F0();
    v33 = v19 & 1;
    v32 = 7;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v27 = v20;
    v31 = 8;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v23 = v22;
    v30 = 9;
    OUTLINED_FUNCTION_0_90();
    v24 = sub_237EF9950();
    (*(v7 + 8))(v10, v5);
    v25 = v33;
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    v26 = v28;
    *(a2 + 40) = v29;
    *(a2 + 48) = v26;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v23;
    *(a2 + 80) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237E7AE0C()
{
  sub_237EFA120();
  BoostedTreeConfiguration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237E7AE4C()
{
  result = qword_27DEB5848;
  if (!qword_27DEB5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5848);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BoostedTreeConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E7AFC4()
{
  result = qword_27DEB5850;
  if (!qword_27DEB5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5850);
  }

  return result;
}

unint64_t sub_237E7B01C()
{
  result = qword_27DEB5858;
  if (!qword_27DEB5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5858);
  }

  return result;
}

unint64_t sub_237E7B074()
{
  result = qword_27DEB5860[0];
  if (!qword_27DEB5860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5860);
  }

  return result;
}

uint64_t SupervisedEstimator.fitted<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_54(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_34_12();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_1(v5);
  *v6 = v7;
  v6[1] = sub_237C6B728;
  OUTLINED_FUNCTION_2_36();

  return v8();
}

void SupervisedEstimator.fitted<A, B>(to:validateOn:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C6A904;
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

uint64_t UpdatableSupervisedEstimator.update<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_54(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_34_12();
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  OUTLINED_FUNCTION_16_50(v6);
  OUTLINED_FUNCTION_2_36();

  return v7();
}

uint64_t SupervisedEstimator.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_13_51(a1, a2, a3, a4, a5, a6, a7);
  v10 = swift_task_alloc();
  *(v9 + 72) = v10;
  *v10 = v9;
  OUTLINED_FUNCTION_16_50(v10);

  return sub_237D0D458(v8, v7);
}

void sub_237E7B500(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  if (v1)
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_102_1();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 16) = a1;
  v11 = v5 + 16;
  *(v11 + 64) = a1;
  OUTLINED_FUNCTION_15_0();
  v12 = swift_task_alloc();
  *(v11 + 72) = v12;
  OUTLINED_FUNCTION_7_72();
  OUTLINED_FUNCTION_14_61();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_72();
  OUTLINED_FUNCTION_17_50();
  sub_237EF8A60();
  OUTLINED_FUNCTION_8_66();
  *v12 = v7;
  v12[1] = sub_237E7B74C;
  OUTLINED_FUNCTION_102_1();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E7B74C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237E7B884, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

uint64_t SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v16;
  v9[11] = v8;
  v9[8] = a8;
  v9[9] = v14;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[3] = a1;
  v11 = swift_task_alloc();
  v9[12] = v11;
  *v11 = v9;
  OUTLINED_FUNCTION_16_50(v11);

  return sub_237D0D458(a7, v15);
}

uint64_t sub_237E7B950(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  if (!v1)
  {
    *(v5 + 16) = a1;
    v11 = v5 + 16;
    *(v11 + 88) = a1;
    OUTLINED_FUNCTION_15_0();
    v12 = swift_task_alloc();
    *(v11 + 96) = v12;
    OUTLINED_FUNCTION_7_72();
    OUTLINED_FUNCTION_14_61();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_7_72();
    OUTLINED_FUNCTION_17_50();
    sub_237EF8A60();
    OUTLINED_FUNCTION_8_66();
    *v12 = v7;
    v12[1] = sub_237E7BBBC;
    OUTLINED_FUNCTION_102_1();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237E7BBBC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237E7BCF4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

uint64_t UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_13_51(a1, a2, a3, a4, a5, a6, a7);
  v10 = swift_task_alloc();
  *(v9 + 72) = v10;
  *v10 = v9;
  OUTLINED_FUNCTION_16_50(v10);

  return sub_237D0D458(v8, v7);
}

void sub_237E7BD9C(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  if (v1)
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_102_1();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 16) = a1;
  v11 = v5 + 16;
  *(v11 + 64) = a1;
  OUTLINED_FUNCTION_34_12();
  v12 = swift_task_alloc();
  *(v11 + 72) = v12;
  OUTLINED_FUNCTION_23_17();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_17_50();
  sub_237EF8A60();
  OUTLINED_FUNCTION_8_66();
  *v12 = v7;
  v12[1] = sub_237E7C000;
  OUTLINED_FUNCTION_102_1();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E7C000()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237E7C578, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

void dispatch thunk of SupervisedEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_34_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C6B728;
  OUTLINED_FUNCTION_4_89();
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_15_0();
  v8 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_1(v1);
  *v2 = v3;
  v2[1] = sub_237C6A904;
  OUTLINED_FUNCTION_4_89();

  return v8(v4, v5, v6);
}

void dispatch thunk of UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_34_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_16_50(v1);
  OUTLINED_FUNCTION_4_89();
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

uint64_t OUTLINED_FUNCTION_7_72()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_13_51(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = result;
  v8[4] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_61()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_17_50()
{

  return type metadata accessor for AnnotatedFeature();
}

uint64_t ApplyRandomly.init<A>(probability:_:)@<X0>(uint64_t (*a1)(void)@<X0>, double *a2@<X8>, double a3@<D0>)
{
  type metadata accessor for ApplyRandomly();
  result = a1();
  *a2 = a3;
  return result;
}

uint64_t ApplyRandomly.applied<A>(to:generator:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = a8;
  v9[13] = v8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  return MEMORY[0x2822009F8](sub_237E7C720, 0, 0);
}

uint64_t sub_237E7C720()
{
  *(v0 + 16) = xmmword_237F031B0;
  v1 = *(v0 + 104);
  sub_237C65348();
  sub_237C665D8();
  sub_237EF81B0();
  if (*(v0 + 32) < *v1)
  {
    v8 = (*(*(v0 + 80) + 24) + 24);
    v9 = *v8 + **v8;
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_237E7C968;

    __asm { BRAA            X8, X16 }
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v3, v4, AssociatedTypeWitness);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_237E7C968()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_237E7CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_237C5FFA4;

  return ApplyRandomly.applied<A>(to:generator:eventHandler:)(a1, a2, a3, a4, a5, a8, a6, a7);
}

uint64_t sub_237E7CB50()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237E7CBD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
  }

  v9 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_237E7CD2C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 8) & ~v9) + *(v7 + 64);
  v11 = 8 * v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
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
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v10] = 0;
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
        *&a1[v10] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          v20 = &a1[v9 + 8] & ~v9;

          __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v10)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
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
      bzero(a1, v10);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for ConvolutionBatchNormalization()
{
  result = qword_27DEB58E8;
  if (!qword_27DEB58E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237E7CFC4()
{
  result = sub_237EF6940();
  if (v1 <= 0x3F)
  {
    result = sub_237EF6C30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237E7D048()
{
  type metadata accessor for ConvolutionBatchNormalization();
  sub_237EF6940();
  sub_237EF6C30();
  return sub_237EF6B00();
}

uint64_t sub_237E7D0C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756C6F766E6F63 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000237EFEB30 == a2)
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

uint64_t sub_237E7D19C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x74756C6F766E6F63;
  }
}

uint64_t sub_237E7D1E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5920);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E7D9E8();
  sub_237EFA1B0();
  v14[15] = 0;
  sub_237EF6940();
  OUTLINED_FUNCTION_2_105();
  sub_237E7DAFC(v9, v10);
  OUTLINED_FUNCTION_5_88();
  if (!v1)
  {
    type metadata accessor for ConvolutionBatchNormalization();
    v14[14] = 1;
    sub_237EF6C30();
    OUTLINED_FUNCTION_1_111();
    sub_237E7DAFC(v11, v12);
    OUTLINED_FUNCTION_5_88();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237E7D394@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_237EF6C30();
  OUTLINED_FUNCTION_1();
  v25 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v30 = sub_237EF6940();
  OUTLINED_FUNCTION_1();
  v27 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v29 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5910);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for ConvolutionBatchNormalization();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E7D9E8();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_105();
  sub_237E7DAFC(v18, v19);
  sub_237EF9970();
  (*(v27 + 32))(v17, v29, v30);
  OUTLINED_FUNCTION_1_111();
  sub_237E7DAFC(v20, v21);
  sub_237EF9970();
  v22 = OUTLINED_FUNCTION_3_93();
  v23(v22);
  (*(v25 + 32))(v17 + *(v14 + 20), v8, v28);
  sub_237E7DA3C(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_237E7DAA0(v17);
}

uint64_t sub_237E7D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E7D0C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E7D764(uint64_t a1)
{
  v2 = sub_237E7D9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E7D7A0(uint64_t a1)
{
  v2 = sub_237E7D9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E7D810()
{
  sub_237E7DAFC(&qword_27DEB2640, type metadata accessor for ConvolutionBatchNormalization);

  return sub_237EF6890();
}

uint64_t sub_237E7D88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237E7DAFC(&qword_27DEB2640, type metadata accessor for ConvolutionBatchNormalization);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

unint64_t sub_237E7D9E8()
{
  result = qword_27DEB5918;
  if (!qword_27DEB5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5918);
  }

  return result;
}

uint64_t sub_237E7DA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConvolutionBatchNormalization();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E7DAA0(uint64_t a1)
{
  v2 = type metadata accessor for ConvolutionBatchNormalization();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237E7DAFC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ConvolutionBatchNormalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E7DC24()
{
  result = qword_27DEB5928;
  if (!qword_27DEB5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5928);
  }

  return result;
}

unint64_t sub_237E7DC7C()
{
  result = qword_27DEB5930;
  if (!qword_27DEB5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5930);
  }

  return result;
}

unint64_t sub_237E7DCD4()
{
  result = qword_27DEB5938[0];
  if (!qword_27DEB5938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5938);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_88()
{

  return sub_237EF9A70();
}

uint64_t NormalizationScaler.NormalizationStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

uint64_t sub_237E7DE24()
{
  sub_237EFA120();
  NormalizationScaler.NormalizationStrategy.hash(into:)();
  return sub_237EFA170();
}

void NormalizationScaler.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v12 = v1;
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *v0;
  sub_237EF8760();
  sub_237EF8A60();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {

    sub_237C84150();
    swift_allocError();
    *v11 = 0xD00000000000001ALL;
    *(v11 + 8) = 0x8000000237F01450;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_3_94();
    if (v10)
    {
      sub_237D11194();
    }

    else
    {
      sub_237D10DA8();
    }

    if ((sub_237D0510C() & 1) == 0)
    {
      sub_237D05198(0xD000000000000013, 0x8000000237F1C320);
    }

    (*(v5 + 32))(v12, v9, v3);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E7E17C()
{
  NormalizationScaler.fitted<A>(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NormalizationScaler.Transformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  NormalizationScaler.Transformer.scale.getter(v11, v9 - v8);
  sub_237EF8330();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_237E7E3A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
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

uint64_t sub_237E7E440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E7E3A8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237E7E478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E7E4CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t NormalizationScaler.Transformer.hashValue.getter()
{
  sub_237EFA120();
  NormalizationScaler.Transformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237E7E57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  NormalizationScaler.Transformer.applied(to:eventHandler:)(a2, a2, a3, a5);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237E7E5F0()
{
  sub_237EFA120();
  NormalizationScaler.Transformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t NormalizationScaler.Transformer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000027, 0x8000000237F01470);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

void NormalizationScaler.Transformer.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v13 = v0;
  v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v12 = *(v3 + 16);
  v14 = v12;
  v15 = v4;
  v16 = v5;
  type metadata accessor for NormalizationScaler.Transformer.CodingKeys();
  OUTLINED_FUNCTION_2_106();
  OUTLINED_FUNCTION_4_19();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v12 - v10;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA1B0();
  sub_237EF9A70();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_12_6();
}

void NormalizationScaler.Transformer.init(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v33 = v11;
  OUTLINED_FUNCTION_1_1();
  v36 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v38 = v15 - v14;
  type metadata accessor for NormalizationScaler.Transformer.CodingKeys();
  OUTLINED_FUNCTION_2_106();
  OUTLINED_FUNCTION_4_19();
  v39 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v34 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v35 = v8;
  v40 = v8;
  v41 = v6;
  v37 = v4;
  v42 = v4;
  v43 = v2;
  v20 = type metadata accessor for NormalizationScaler.Transformer();
  OUTLINED_FUNCTION_1_1();
  v32 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - v23;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_237EFA190();
  if (!v0)
  {
    v31 = v24;
    v26 = v34;
    v25 = v35;
    v27 = v36;
    v28 = v38;
    sub_237EF9970();
    (*(v26 + 8))(v19, v39);
    v29 = v31;
    (*(v27 + 32))(v31, v28, v25);
    (*(v32 + 32))(v33, v29, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E7EB78()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_237EF7820();
  OUTLINED_FUNCTION_1_1();
  v38 = v7;
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v36 = v9 - v8;
  v10 = sub_237EF7730();
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = *(v3 + 16);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  (*(v23 + 16))(v22 - v21, v1, v19);
  sub_237C65348();
  sub_237EF8190();
  v37 = v18;
  sub_237CFA100(1.0 / v41[0], 0.0);
  v24 = *(v12 + 16);
  v35 = v15;
  v24(v15, v18, v10);
  v25 = v36;
  sub_237EF7810();
  v26 = type metadata accessor for CoreMLPackage();
  v27 = &v5[*(v26 + 24)];
  *(v27 + 10) = 0;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *v27 = 0u;
  v24(v5, v15, v10);
  memcpy(v41, v27, 0x58uLL);
  sub_237C9BD20(v41);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 10) = 0;
  (*(v38 + 16))(&v5[*(v26 + 20)], v25, v39);
  v28 = sub_237E34060();
  v30 = v29;
  v31 = sub_237EF7780();
  v33 = v32;
  swift_isUniquelyReferenced_nonNull_native();
  v42 = *v33;
  sub_237C91098(v28, v30, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v33 = v42;
  v31(&v40, 0);
  (*(v38 + 8))(v25, v39);
  v34 = *(v12 + 8);
  v34(v35, v10);
  v34(v37, v10);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E7EF0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237E7EF60(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E7F044(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237E7F180(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
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
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237E7F384(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_2_106()
{

  return swift_getWitnessTable();
}

uint64_t sub_237E7F4BC()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = v3;
    swift_getAssociatedConformanceWitness();
    v0 = type metadata accessor for DenseVector();
    if (v5 <= 0x3F)
    {
      v6 = type metadata accessor for OptimizerState();
      if (v7 > 0x3F)
      {
        return v6;
      }

      v6 = type metadata accessor for OptimizerStatistics();
      if (v8 > 0x3F)
      {
        return v6;
      }

      else if (v4 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_237E7F628(int *a1, unsigned int a2, uint64_t a3)
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
LABEL_27:
    if (v7 == v11)
    {
      v25 = a1;
      v10 = v7;
      v15 = v5;
    }

    else
    {
      v26 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) == 0)
      {
        v27 = *v26;
        if (*v26 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v25 = (v13 + ((((((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v13;
    }

    return __swift_getEnumTagSinglePayload(v25, v10, v15);
  }

  v14 = *(*(result - 8) + 64);
  v17 = ((v14 + ((v13 + 8 + ((((((6 - (((-9 - ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) - (v13 + 8)) | v16) - v14) - ((((((-49 - v13) | v13) - (v14 + v13)) | v13) - (v14 + v13)) | v13)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v11 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 2:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_27;
      }

LABEL_24:
      v23 = v22 - 1;
      if (v18)
      {
        v23 = 0;
        v24 = *a1;
      }

      else
      {
        v24 = 0;
      }

      result = v11 + (v24 | v23) + 1;
      break;
    default:
      goto LABEL_27;
  }

  return result;
}

void sub_237E7F8E4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v20 = ((v18 + ((v16 + 8 + ((((((v19 + ((v16 + 8 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~(v16 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (((v18 + ((v16 + 8 + ((((((v19 + ((v16 + 8 + ((((v15 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~(v16 | 7)) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v14 + 1;
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

  if (a2 > v14)
  {
    if (v20)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v14;
    }

    if (v20)
    {
      v25 = ~v14 + a2;
      bzero(a1, v20);
      *a1 = v25;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v20) = v24;
        break;
      case 2:
        *(a1 + v20) = v24;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *(a1 + v20) = v24;
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
        goto LABEL_37;
      }

      return;
    case 2:
      *(a1 + v20) = 0;
      if (a2)
      {
        goto LABEL_37;
      }

      return;
    case 3:
LABEL_64:
      __break(1u);
      return;
    case 4:
      *(a1 + v20) = 0;
      goto LABEL_36;
    default:
LABEL_36:
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 == v14)
      {
        v26 = a1;
        v27 = a2;
        v12 = v9;
        AssociatedTypeWitness = v7;
LABEL_39:

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
        goto LABEL_39;
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

void sub_237E7FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v48 = a1;
  v57 = a3;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = sub_237EFA1D0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v49 = &v41 - v7;
  OUTLINED_FUNCTION_1_1();
  v58 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v55 = v3;
  v16 = *(v3 + 32);
  v45 = v4;
  v16(v4, v3, v13);
  v46 = v16;
  v47 = v3 + 32;
  v54 = v11;
  v56 = swift_getAssociatedConformanceWitness();
  v43 = v15;
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  v17 = v44;
  sub_237EF9CE0();
  v18 = v52;
  v19 = (v16)(v4, v55);
  v20 = DenseVector.init(repeating:count:)(v17, v19, AssociatedTypeWitness);
  v21 = v57;
  v22 = v57[13];

  *(v18 + v22) = v20;
  v23 = v18;
  v24 = DenseVector.init(scalars:)(v48);
  v25 = v21[14];
  v26 = v17;

  *(v23 + v25) = v24;
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_13_52();
  v27 = v58;
  v28 = *(v58 + 40);
  v29 = (v23 + v21[15]);
  v48 = v58 + 40;
  v42 = v28;
  v28(v29, v17, AssociatedTypeWitness);
  v30 = (v23 + v21[11]);
  v31 = AssociatedConformanceWitness;
  v41 = type metadata accessor for OptimizerState();
  (*(v27 + 24))(v30 + *(v41 + 52), v50, AssociatedTypeWitness);

  *v30 = v24;
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_13_52();
  v32 = v45;
  v33 = v55;
  v46(v45, v55);
  sub_237EF9430();
  (*(v58 + 8))(v17, AssociatedTypeWitness);
  swift_getWitnessTable();
  v34 = DenseVector.init<A>(scalars:)();

  v30[1] = v34;
  (*(v33 + 48))(v30, v32, v33);
  OUTLINED_FUNCTION_15_45();
  if (v37)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v35 + 8) = v36;
  v38 = *(v35 + 16);
  v37 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (v37)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v35 + 16) = v39;
  DenseVector.maximumAbsoluteValue.getter(v30[1], AssociatedTypeWitness, v31);
  v42(v30 + *(v41 + 44), v26, AssociatedTypeWitness);
  if ((sub_237EF8380() & 1) == 0)
  {
    sub_237DC6AD0();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
  }
}

uint64_t sub_237E8017C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v31 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v30 = v26 - v9;
  v28 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = *(AssociatedConformanceWitness + 8);
  v29 = AssociatedConformanceWitness;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v12 = MEMORY[0x28223BE20](v11);
  v13 = v5;
  v27 = v5;
  v14 = *(v5 + 32);
  v14(v4, v13, v12);
  v15 = *(v34 + 44);
  type metadata accessor for OptimizerState();
  OUTLINED_FUNCTION_4();
  (*(v16 + 24))(v2 + v15, v33);
  OUTLINED_FUNCTION_42_2();
  v26[1] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  v17 = v30;
  OUTLINED_FUNCTION_2_107();
  sub_237EF9CE0();
  v18 = (v14)(v28, v27);
  v19 = v17;
  v20 = DenseVector.init(repeating:count:)(v17, v18, AssociatedTypeWitness);
  v21 = v34;
  v22 = *(v34 + 52);

  *(v3 + v22) = v20;
  v23 = *v33;
  v24 = *(v21 + 56);

  *(v3 + v24) = v23;
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9CE0();
  return (*(v31 + 40))(v3 + *(v21 + 60), v19, AssociatedTypeWitness);
}

void sub_237E80448(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v134 = *(a1 + 24);
  OUTLINED_FUNCTION_47_1();
  swift_getAssociatedTypeWitness();
  v128 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v149 = *(AssociatedConformanceWitness + 16);
  v143 = *(*(v149 + 16) + 8);
  v122 = *(v143 + 16);
  v117[2] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v120 = v117 - v8;
  v141 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = v117 - v10;
  v12 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v131 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  v132 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v148 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = v117 - v27;
  v29 = (v2 + *(a1 + 44));
  v30 = *v29;
  v133 = a1;
  v31 = *(a1 + 64);

  v126 = v31;
  *(v2 + v31) = v30;
  v150 = v12;
  v135 = AssociatedConformanceWitness;
  v127 = type metadata accessor for OptimizerState();
  v151 = v127[13];
  v125 = v2 + 8;
  v118 = v14;
  v32 = (v14 + 8);
  v124 = v134 + 40;
  v33 = v30;
  v146 = v30;
  v147 = v28;
  v136 = v2;
  v144 = v29;
  v145 = (v14 + 8);
  v129 = v30;
  v140 = v11;
  while (1)
  {
    v34 = v149;
    v35 = v150;
    sub_237EF8390();
    v142 = *(*(v34 + 24) + 8);
    LOBYTE(v34) = sub_237EF8400();
    v36 = *v32;
    (*v32)(v28, v35);
    if ((v34 & 1) == 0)
    {
      v139 = v36;
      v66 = v136;
      goto LABEL_8;
    }

    v37 = v150;
    v38 = v29[1];
    v39 = v135;
    static DenseVector.* infix(_:_:)();
    v40 = static DenseVector.- infix(_:_:)(v33, v38, v37, v39);

    v41 = v136;
    v42 = v126;
    *(v136 + v126) = v40;
    v43 = v133;
    sub_237E81260(v133);
    v44 = *(v41 + v42);
    DenseVector.scalars.getter(v44, v37, v39);
    (*(v134 + 40))();

    v45 = *(v43 + 48);
    v46 = *(v125 + v45);
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(v125 + v45) = v48;
    v146 = v44;
    v49 = v33;
    v50 = v150;
    v51 = static DenseVector.- infix(_:_:)(v44, v49, v150, v39);
    v52 = *(v43 + 52);

    v138 = v51;
    *(v41 + v52) = v51;
    OUTLINED_FUNCTION_47_1();
    dot<A>(_:_:)(v53, v54, v55, v39);
    v139 = *(v143 + 8);
    sub_237EF9750();
    v56 = OUTLINED_FUNCTION_17_51();
    (v36)(v56);
    OUTLINED_FUNCTION_42_2();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_7_51();
    v137 = v57;
    sub_237EF9FA0();
    v58 = v130;
    OUTLINED_FUNCTION_2_107();
    sub_237EF9CE0();
    v59 = v39;
    v32 = v145;
    DenseVector.squaredMagnitude.getter(v138, v50, v59);
    OUTLINED_FUNCTION_47_1();
    sub_237EF8D30();
    v60 = OUTLINED_FUNCTION_81_1();
    (v36)(v60);
    v36(v58, v50);
    v29 = v144;
    sub_237EF8330();
    v61 = OUTLINED_FUNCTION_42_2();
    (v36)(v61);
    v28 = v147;
    sub_237EF9750();
    v62 = OUTLINED_FUNCTION_17_51();
    (v36)(v62);
    v63 = OUTLINED_FUNCTION_81_1();
    (v36)(v63);
    if (sub_237EF8410())
    {
      break;
    }

    OUTLINED_FUNCTION_7_51();
    sub_237EF9FA0();
    OUTLINED_FUNCTION_2_107();
    sub_237EF9CE0();
    OUTLINED_FUNCTION_47_1();
    sub_237EF8340();
    v64 = OUTLINED_FUNCTION_81_1();
    (v36)(v64);
    v65 = OUTLINED_FUNCTION_42_2();
    (v36)(v65);
    v36(v148, v50);
    v33 = v129;
  }

  v67 = OUTLINED_FUNCTION_42_2();
  (v36)(v67);
  v68 = OUTLINED_FUNCTION_17_51();
  (v36)(v68);
  v66 = v136;
  v139 = v36;
LABEL_8:
  v69 = v133;
  v70 = *(v133 + 56);
  v71 = v146;
  v72 = v150;
  v73 = static DenseVector.- infix(_:_:)(v146, *(v66 + v70), v150, v135);
  v140 = v73;
  v74 = *(v69 + 52);

  *(v66 + v74) = v73;
  v146 = v71;

  *(v66 + v70) = v71;
  OUTLINED_FUNCTION_81_1();
  v75 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_8_82();
  v141 = v75;
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  v151 = *(v69 + 60);
  v76 = v143;
  sub_237EF8D30();
  v77 = OUTLINED_FUNCTION_6_73();
  v78 = v139;
  (v139)(v77);
  sub_237EF8D30();
  v79 = OUTLINED_FUNCTION_81_1();
  (v78)(v79);
  v148 = *(v76 + 8);
  OUTLINED_FUNCTION_12_55();
  sub_237EF9750();
  v80 = OUTLINED_FUNCTION_6_73();
  (v78)(v80);
  v78(v76, v72);
  OUTLINED_FUNCTION_8_82();
  v81 = v141;
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  sub_237EF8320();
  sub_237EF9750();
  v82 = OUTLINED_FUNCTION_81_1();
  (v78)(v82);
  v83 = OUTLINED_FUNCTION_6_73();
  (v78)(v83);
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  OUTLINED_FUNCTION_12_55();
  sub_237EF8330();
  v84 = OUTLINED_FUNCTION_6_73();
  (v78)(v84);
  v78(v81, v72);
  OUTLINED_FUNCTION_8_82();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  OUTLINED_FUNCTION_47_1();
  sub_237EF9760();
  v85 = OUTLINED_FUNCTION_81_1();
  (v78)(v85);
  v86 = v147;
  sub_237EF8330();
  v87 = OUTLINED_FUNCTION_6_73();
  (v78)(v87);
  v88 = v86;
  v89 = v135;
  v90 = static DenseVector.* infix(_:_:)(v86, v140);
  v78(v88, v72);
  v91 = static DenseVector.+ infix(_:_:)(v146, v90, v72, v89);

  *v144 = v91;
  (*(v118 + 24))(&v151[v136], v121, v72);
  v92 = OUTLINED_FUNCTION_17_51();
  DenseVector.magnitude.getter(v92, v93, v89);
  sub_237EF8390();
  LOBYTE(v90) = sub_237EF8430();
  v94 = OUTLINED_FUNCTION_6_73();
  (v78)(v94);
  v95 = OUTLINED_FUNCTION_81_1();
  v96 = (v78)(v95);
  if (v90)
  {
    v97 = 0;
LABEL_18:
    sub_237DC6AD0();
    swift_allocError();
    *v115 = v97;
    swift_willThrow();
    v116 = OUTLINED_FUNCTION_14_62();
    (v78)(v116);
    v78(v119, v97);
    return;
  }

  v152 = v140;
  MEMORY[0x28223BE20](v96);
  v98 = v89;
  v99 = v128;
  v100 = v134;
  v117[-2] = v128;
  v117[-1] = v100;
  KeyPath = swift_getKeyPath();
  v151 = v117;
  MEMORY[0x28223BE20](KeyPath);
  v117[-4] = v99;
  v117[-3] = v100;
  v117[-2] = v102;
  type metadata accessor for DenseVector();

  swift_getWitnessTable();
  v103 = sub_237EF8750();

  if ((v103 & 1) == 0)
  {
    v97 = 1;
    goto LABEL_18;
  }

  v104 = v78;
  v105 = v144;
  (*(v100 + 48))(v144, v99, v100);
  v106 = v147;
  v107 = v98;
  v108 = v150;
  DenseVector.maximumAbsoluteValue.getter(v140, v150, v107);
  (*(v118 + 40))(v105 + v127[11], v106, v108);
  OUTLINED_FUNCTION_15_45();
  if (v47)
  {
    goto LABEL_21;
  }

  v109[1] = v110;
  v111 = v109[2];
  v47 = __OFADD__(v111, 1);
  v112 = v111 + 1;
  if (v47)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v109[2] = v112;
  if (!__OFADD__(*v109, 1))
  {
    ++*v109;
    v113 = v105 + v127[12];
    if (sub_237EF8380())
    {
      v114 = OUTLINED_FUNCTION_14_62();
      (v104)(v114);
      v104(v119, v113);
      return;
    }

    v97 = 1;
    v78 = v104;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_237E81260(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = *(a1 + 24);
  v6[2] = *(a1 + 16);
  v6[3] = v3;
  v6[6] = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for DenseVector();

  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E81CEC, v6, v4, MEMORY[0x277D84F78] + 8);
}

void sub_237E81368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v61 = a5;
  v82 = a4;
  v79 = a1;
  v80 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = *(AssociatedConformanceWitness + 16);
  v60 = *(v74 + 16);
  v73 = *(v60 + 8);
  v55 = *(v73 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v53 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v52 = &v49[-v10];
  v11 = AssociatedConformanceWitness;
  v75 = *(AssociatedConformanceWitness + 8);
  v59 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v59);
  v58 = &v49[-v12];
  v13 = swift_checkMetadataState();
  v62 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v83 = &v49[-v17];
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v49[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v49[-v23];
  MEMORY[0x28223BE20](v25);
  v81 = a2;
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v57 = v27;
  v71 = v28;
  v29 = &v49[-v26];
  if (v81)
  {
    v30 = v24;
    v70 = v82 + *(type metadata accessor for FISTAOptimizer() + 44);
    v31 = type metadata accessor for OptimizerState();
    v82 = 0;
    v32 = *(v31 + 52);
    v67 = *(v62 + 16);
    v65 = (v62 + 8);
    v68 = v62 + 16;
    v69 = v32;
    v51 = v62 + 40;
    v78 = v29;
    v50 = AssociatedConformanceWitness;
    v77 = v21;
    v66 = v24;
    while (1)
    {
      v33 = v83;
      v34 = v30;
      v67(v30, v70 + v69, v13);
      v35 = v21;
      v36 = v82;
      DenseVector.subscript.getter(v82, v61, v13, v11);
      v37 = v73;
      sub_237EF8D30();
      v38 = *v65;
      (*v65)(v35, v13);
      v38(v34, v13);
      UnsafeMutableVectorPointer.subscript.getter(v36, v79, v81, v80, v13);
      v76 = *(v37 + 8);
      v39 = v71;
      sub_237EF9760();
      v38(v33, v13);
      v64 = swift_getAssociatedConformanceWitness();
      v40 = v72;
      sub_237EF9FA0();
      sub_237EF9CE0();
      v63 = *(*(v74 + 24) + 8);
      sub_237EF9FE0();
      v38(v83, v13);
      v38(v39, v13);
      UnsafeMutableVectorPointer.subscript.getter(v82, v79, v81, v80, v13);
      v41 = v57;
      sub_237EF9410();
      v38(v40, v13);
      sub_237EF9760();
      v38(v41, v13);
      sub_237EF9FA0();
      v42 = v83;
      sub_237EF9CE0();
      sub_237EF9FE0();
      v38(v41, v13);
      v38(v42, v13);
      v43 = v77;
      sub_237EF9760();
      v38(v39, v13);
      v38(v43, v13);
      if ((v82 * v80) >> 64 != (v82 * v80) >> 63)
      {
        break;
      }

      v64 = v82 + 1;
      v63 = v79 + *(v62 + 72) * v82 * v80;
      (*(v62 + 40))();
      swift_getAssociatedConformanceWitness();
      v44 = v41;
      sub_237EF9FB0();
      sub_237EF9D20();
      sub_237EF9FB0();
      v45 = v83;
      sub_237EF9D20();
      v46 = v72;
      v67(v72, v70 + v69, v13);
      sub_237EF8D30();
      v38(v46, v13);
      v38(v44, v13);
      v47 = v50;
      DenseVector.subscript.getter(v82, v56, v13, v50);
      v48 = v71;
      sub_237EF8D30();
      v38(v44, v13);
      v38(v45, v13);
      v30 = v66;
      v21 = v77;
      sub_237EF9750();
      v38(v48, v13);
      v38(v21, v13);
      sub_237EF8340();
      v38(v30, v13);
      v38(v78, v13);
      v82 = v64;
      v11 = v47;
      if (v81 == v64)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t OUTLINED_FUNCTION_13_52()
{

  return sub_237EF9CE0();
}

uint64_t FullyConnectedNetworkRegressor.configuration.getter@<X0>(_OWORD *a1@<X8>)
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

__n128 FullyConnectedNetworkRegressor.configuration.setter(uint64_t a1)
{
  v3 = v1[1];
  v9[0] = *v1;
  v9[1] = v3;
  v4 = v1[3];
  v9[2] = v1[2];
  v9[3] = v4;
  OUTLINED_FUNCTION_22_3();
  (*(v5 + 8))(v9);
  v6 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v8;
  return result;
}

__n128 FullyConnectedNetworkRegressor.init(configuration:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  a2->n128_u64[0] = &unk_284ACECA8;
  a2->n128_u32[2] = 981668463;
  a2[1].n128_u64[0] = 1000;
  a2[1].n128_u32[2] = 1045220557;
  a2[2].n128_u64[0] = 16;
  a2[2].n128_u64[1] = 0x3F847AE147AE147BLL;
  a2[3] = xmmword_237F11780;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  v12[2] = a2[2];
  v12[3] = v5;
  v12[0] = v3;
  v12[1] = v4;
  type metadata accessor for FullyConnectedNetworkRegressor();
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 8))(v12);
  *a2 = v8;
  a2[1] = v9;
  result = v10;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

uint64_t FullyConnectedNetworkRegressor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[13] = v5;
  v0[14] = v6;
  v0[12] = v7;
  v0[19] = *(v1 - 8);
  v0[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_27_31();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237E82020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(v10[19] + 16))(v10[20], v10[13], v10[17]);
  sub_237EF7E90();
  type metadata accessor for AnnotatedFeature();
  v11 = sub_237EF8A90();
  v10[21] = v11;
  v10[10] = v11;
  v12 = sub_237EF89A0();
  v10[22] = v12;
  v10[11] = v12;
  v13 = swift_task_alloc();
  v10[23] = v13;
  v14 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v13 = v10;
  v13[1] = sub_237E82180;
  v16 = OUTLINED_FUNCTION_61_8(WitnessTable);

  return sub_237E8233C(v16, (v10 + 10), (v10 + 11), v17, v18, v19, v14, v14, a9, a10);
}

uint64_t sub_237E82180()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 192) = v0;

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

uint64_t sub_237E822E0()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237E8233C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_12_2();
  v12 = v11;
  v10[88] = a10;
  v10[87] = a9;
  v10[86] = v13;
  v10[85] = v14;
  v10[84] = v11;
  v10[83] = v15;
  v10[82] = v16;
  v10[81] = v17;
  v10[80] = v18;
  v10[79] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  v10[89] = v20;
  OUTLINED_FUNCTION_6_1(v20);
  v10[90] = v21;
  v10[91] = OUTLINED_FUNCTION_27_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A0);
  OUTLINED_FUNCTION_18(v22);
  v10[92] = OUTLINED_FUNCTION_27_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A8);
  v10[93] = v23;
  OUTLINED_FUNCTION_18(v23);
  v10[94] = OUTLINED_FUNCTION_27_0();
  v24 = sub_237EF6B10();
  v10[95] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v10[96] = v25;
  v10[97] = swift_task_alloc();
  v10[98] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B0);
  v10[99] = v26;
  OUTLINED_FUNCTION_6_1(v26);
  v10[100] = v27;
  v10[101] = OUTLINED_FUNCTION_27_0();
  v28 = sub_237EF64C0();
  v10[102] = v28;
  OUTLINED_FUNCTION_6_1(v28);
  v10[103] = v29;
  v10[104] = OUTLINED_FUNCTION_27_0();
  v10[105] = v12[2];
  v10[106] = v12[3];
  v10[107] = v12[4];
  v30 = type metadata accessor for FullyConnectedNetworkRegressorModel();
  v10[108] = v30;
  OUTLINED_FUNCTION_6_1(v30);
  v10[109] = v31;
  v10[110] = OUTLINED_FUNCTION_27_0();
  v10[111] = sub_237EF7E90();
  v32 = sub_237EF90F0();
  v10[112] = v32;
  OUTLINED_FUNCTION_6_1(v32);
  v10[113] = v33;
  v10[114] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_27_31();
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v34, v35, v36);
}

void sub_237E8264C()
{
  v114 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = swift_task_alloc();
  *v8 = v3;
  v8[1] = v7;
  v8[2] = v6;
  v8[3] = v2;
  v8[4] = v1;
  v8[5] = v5;
  v8[6] = v4;
  KeyPath = swift_getKeyPath();

  v10 = swift_task_alloc();
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v1;
  v10[5] = v5;
  v10[6] = v4;
  v10[7] = KeyPath;
  sub_237C9339C();
  v12 = v11;

  *(v0 + 584) = v12;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_1();
  if (sub_237EF8EC0())
  {

LABEL_5:
    sub_237C84150();
    swift_allocError();
    *v19 = 0xD000000000000025;
    *(v19 + 8) = 0x8000000237F014A0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_7_73();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_6;
  }

  v13 = *(v0 + 912);
  v14 = *(v0 + 888);
  *(v0 + 592) = v12;
  OUTLINED_FUNCTION_55_1();
  sub_237EF8E80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v16 = *(v0 + 912);
  if (EnumTagSinglePayload == 1)
  {

    v17 = OUTLINED_FUNCTION_31_0();
    v18(v17);
    goto LABEL_5;
  }

  v22 = *(v0 + 888);
  v23 = sub_237EF7E20();
  OUTLINED_FUNCTION_22_3();
  (*(v24 + 8))(v16, v22);
  v25 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v25;
  v26 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v26;
  *(v0 + 600) = v12;
  swift_getWitnessTable();
  sub_237D13CC4();
  v111 = v23;

  if ((sub_237EF8DD0() & 1) == 0)
  {
    v27 = *(v0 + 848);
    v28 = *(v0 + 840);
    v101 = *(v0 + 696);
    v102 = *(v0 + 704);
    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    v100 = v29;
    v108 = *(v0 + 856);
    v31 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v31;
    v32 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v32;
    v33 = swift_task_alloc();
    *v33 = v28;
    v33[1] = v30;
    v33[2] = v29;
    v33[3] = v27;
    v33[4] = v108;
    v33[5] = v101;
    v33[6] = v102;
    v34 = swift_getKeyPath();

    v35 = swift_task_alloc();
    v35[2] = v30;
    v35[3] = v100;
    v35[4] = v108;
    v35[5] = v101;
    v35[6] = v102;
    v35[7] = v34;
    sub_237C9339C();
    v37 = v36;

    *(v0 + 608) = v37;
    sub_237D13CC4();
  }

  v38 = *(v0 + 880);
  v39 = *(v0 + 832);
  v40 = *(v0 + 824);
  v41 = *(v0 + 816);
  v109 = *(v0 + 696);
  v106 = *(v0 + 680);
  v42 = *(v0 + 672);
  v43 = *(v0 + 640);
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_22_3();
  (*(v44 + 16))(v0 + 208, v0 + 16, v42);
  sub_237E43D20(v113, v111, 0, v38);
  v45 = *(v0 + 56);
  sub_237CDC02C(*(v0 + 64), 0.0);
  *(v0 + 568) = v45;
  *(v0 + 576) = v46;
  (*(v40 + 104))(v39, *MEMORY[0x277D2CD40], v41);
  type metadata accessor for FullyConnectedNetwork();
  sub_237C77B74();
  sub_237EF68C0();
  (*(v40 + 8))(v39, v41);
  OUTLINED_FUNCTION_55_10();
  sub_237E85000(v43, v42, v106, v109);
  v47 = *(v0 + 32);
  *(v0 + 920) = v47;
  if (v47 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v47)
    {
LABEL_25:

      if ((sub_237D0510C() & 1) == 0)
      {
        v78 = FullyConnectedNetworkRegressorModel.debugDescription.getter();
        sub_237D05198(v78, v79);
      }

      OUTLINED_FUNCTION_3_95();
      v80 = OUTLINED_FUNCTION_24_37();
      v81(v80);
      v82 = OUTLINED_FUNCTION_6_74();
      v83(v82);
      v84 = OUTLINED_FUNCTION_22_38();
      v85(v84);

      OUTLINED_FUNCTION_10_3();
LABEL_6:
      OUTLINED_FUNCTION_51_16();

      __asm { BRAA            X1, X16 }
    }

    v48 = 0;
    v49 = &qword_27DEB24B8;
    while (1)
    {
      *(v0 + 928) = v48;
      sub_237EF6A10();
      sub_237EF6B60();
      OUTLINED_FUNCTION_42_18();
      v103 = v50;
      OUTLINED_FUNCTION_6_38();
      sub_237C96710(&qword_27DEB24C0, v49);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v49);
        sub_237EF91A0();
        v51 = *(v0 + 736);
        v52 = *(v0 + 712);
        if (*(v0 + 616))
        {
          v113[0] = *(v0 + 616);
          v103(v113);

          v53 = v51;
          v54 = 0;
        }

        else
        {
          v53 = OUTLINED_FUNCTION_38_7();
        }

        __swift_storeEnumTagSinglePayload(v53, v54, 1, v52);
        v55 = *(v0 + 736);
        v56 = *(v0 + 712);
        v57 = __swift_getEnumTagSinglePayload(v55, 1, v56);
        v58 = *(v0 + 880);
        if (v57 == 1)
        {
          break;
        }

        v59 = v49;
        v110 = *(v0 + 848);
        v112 = *(v0 + 856);
        v105 = *(v0 + 784);
        v107 = *(v0 + 840);
        v60 = *(v0 + 728);
        v61 = *(v0 + 704);
        v62 = *(v0 + 696);
        v104 = *(v0 + 688);
        v63 = *(v0 + 680);
        v64 = (*(*(v0 + 720) + 32))(v60, v55, v56);
        v65 = MEMORY[0x2383E24F0](v64);
        sub_237E85270(v105, v58, v60, v107, v63, v104, v110, v112, v62, v61, (v0 + 624));
        v66 = *(v0 + 728);
        v67 = *(v0 + 720);
        v68 = *(v0 + 712);
        objc_autoreleasePoolPop(v65);
        (*(v67 + 8))(v66, v68);
        v49 = v59;
      }

      v69 = *(v0 + 864);
      sub_237E868B4(*(v0 + 752));
      v70 = *(v58 + *(v69 + 52));
      *(v0 + 936) = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_44_19();
      *(v58 + v71) = v72;
      if ((sub_237EF8DD0() & 1) == 0)
      {
        OUTLINED_FUNCTION_25_36();
        v86 = swift_task_alloc();
        v87 = OUTLINED_FUNCTION_43_20(v86);
        *v87 = v88;
        OUTLINED_FUNCTION_1_112(v87);
        OUTLINED_FUNCTION_12_56();
        OUTLINED_FUNCTION_51_16();

        sub_237E853B0();
        return;
      }

      *(v0 + 960) = 0;
      *(v0 + 1056) = 0;
      v73 = *(v0 + 656);
      if (v73)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
        sub_237C70604(v73);
        sub_237EF6A90();
        OUTLINED_FUNCTION_54_10();
        v91 = sub_237EF8230();
        OUTLINED_FUNCTION_16_51(v91);
        v92 = swift_task_alloc();
        *(v0 + 976) = v92;
        *v92 = v0;
        OUTLINED_FUNCTION_0_92(v92);
        OUTLINED_FUNCTION_15_46();
        OUTLINED_FUNCTION_59_10(v93);
        OUTLINED_FUNCTION_51_16();

        sub_237E859F8(v94, v95, v96, v97, v98);
        return;
      }

      v74 = OUTLINED_FUNCTION_14_63();
      v76 = v75 + 1;
      (*(v77 + 8))(v74);
      if (v76 == v69)
      {
        goto LABEL_25;
      }

      v48 = *(v0 + 928) + 1;
    }
  }

  __break(1u);
}

uint64_t sub_237E83124()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 952) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E83224()
{
  v76 = v0 + 78;
  v1 = v0[116];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  sub_237EF6A90();
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 262);
  v6 = v0 + 71;
  sub_237D0FC4C(v1, v5);
  v83 = v0[119];
  while (1)
  {
    *(v0 + 120) = v5;
    *(v0 + 1056) = v7 & 1;
    v8 = v0[82];
    if (v8)
    {
      break;
    }

    v9 = OUTLINED_FUNCTION_14_63();
    v11 = (v10 + 1);
    (*(v12 + 8))(v9);
    if (v11 == v6)
    {

      if ((sub_237D0510C() & 1) == 0)
      {
        v68 = FullyConnectedNetworkRegressorModel.debugDescription.getter();
        sub_237D05198(v68, v69);
      }

      OUTLINED_FUNCTION_3_95();
      v70 = OUTLINED_FUNCTION_24_37();
      v71(v70);
      v72 = OUTLINED_FUNCTION_6_74();
      v73(v72);
      v74 = OUTLINED_FUNCTION_22_38();
      v75(v74);

      OUTLINED_FUNCTION_10_3();
LABEL_17:
      OUTLINED_FUNCTION_52_13();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_35_20();
    sub_237EF6B60();
    OUTLINED_FUNCTION_42_18();
    OUTLINED_FUNCTION_6_38();
    sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8);
      sub_237EF91A0();
      v13 = v0[92];
      v14 = v0[89];
      if (v0[77])
      {
        OUTLINED_FUNCTION_56_16();
        v15();

        v16 = v13;
        v17 = 0;
      }

      else
      {
        v16 = OUTLINED_FUNCTION_38_7();
      }

      __swift_storeEnumTagSinglePayload(v16, v17, 1, v14);
      v18 = v0[89];
      v19 = OUTLINED_FUNCTION_38_7();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v20, v18);
      v22 = v0[110];
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v81 = v0[107];
      v23 = v0[88];
      v24 = v0;
      v25 = v0[87];
      v26 = v0[86];
      v27 = OUTLINED_FUNCTION_60_10();
      v29 = v28(v27);
      v30 = MEMORY[0x2383E24F0](v29);
      v31 = OUTLINED_FUNCTION_48_14();
      sub_237E85270(v31, v32, v33, v34, v35, v26, v36, v81, v25, v23, v76);
      if (v83)
      {
        v48 = v24[109];
        v80 = v24[108];
        v82 = v24[110];
        v49 = v24[101];
        v50 = v24[100];
        v51 = v24[99];
        v52 = v24[96];
        v78 = v24[95];
        v79 = v24[98];
        v53 = v24[94];
        v77 = v24[91];
        v54 = v24[90];
        v55 = v24[89];

        objc_autoreleasePoolPop(v30);
        (*(v50 + 8))(v49, v51);
        sub_237E868B4(v53);
        (*(v54 + 8))(v77, v55);
        (*(v52 + 8))(v79, v78);
        (*(v48 + 8))(v82, v80);

        goto LABEL_17;
      }

      objc_autoreleasePoolPop(v30);
      v37 = OUTLINED_FUNCTION_21_48();
      v38(v37);
      v83 = 0;
      v0 = v24;
    }

    v6 = v0[108];
    result = sub_237E868B4(v0[94]);
    v40 = *(v22 + *(v6 + 13));
    v0[117] = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_44_19();
    *(v22 + v41) = v42;
    v43 = sub_237EF8DD0();
    v7 = 0;
    v5 = 0.0;
    if ((v43 & 1) == 0)
    {
      OUTLINED_FUNCTION_25_36();
      v44 = swift_task_alloc();
      v45 = OUTLINED_FUNCTION_43_20(v44);
      *v45 = v46;
      OUTLINED_FUNCTION_1_112();
      OUTLINED_FUNCTION_12_56();
      OUTLINED_FUNCTION_52_13();

      return sub_237E853B0();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
  sub_237C70604(v8);
  sub_237EF6A90();
  OUTLINED_FUNCTION_54_10();
  v59 = sub_237EF8230();
  OUTLINED_FUNCTION_16_51(v59);
  v60 = swift_task_alloc();
  v0[122] = v60;
  *v60 = v0;
  OUTLINED_FUNCTION_0_92();
  OUTLINED_FUNCTION_15_46();
  OUTLINED_FUNCTION_59_10(v61);
  OUTLINED_FUNCTION_52_13();

  return sub_237E859F8(v62, v63, v64, v65, v66);
}

uint64_t sub_237E837E4()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_14_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  v7[123] = v0;

  if (v0)
  {
  }

  else
  {
    v7[124] = v3;
    v7[125] = v5;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E83908()
{
  v89 = v0;
  v1 = *(v0 + 125);
  v2 = *(v0 + 124);
  v3 = v0[121];
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0x676E696E69617274, 0xEE00726F7272655FLL, v1);
  swift_isUniquelyReferenced_nonNull_native();
  v88 = v3;
  sub_237C91610(0xD000000000000012, 0x8000000237EFCC20, v2);
  v0[126] = v3;
  if ((sub_237EF8DD0() & 1) == 0)
  {
    v20 = *(v0 + 2);
    *(v0 + 25) = *(v0 + 1);
    *(v0 + 26) = v20;
    v21 = *(v0 + 4);
    *(v0 + 27) = *(v0 + 3);
    *(v0 + 28) = v21;
    v22 = swift_task_alloc();
    v0[127] = v22;
    *v22 = v0;
    v22[1] = sub_237E8404C;
    v23 = v0[110];
LABEL_8:
    OUTLINED_FUNCTION_59_10(v23);
    OUTLINED_FUNCTION_53_13();

    return sub_237E859F8(v24, v25, v26, v27, v28);
  }

  v87 = v0[123];
  v4 = *(v0 + 1056);
  v5 = v0[117];
  v6 = v0[115];
  v7 = v0[82];
  v8 = sub_237C908A4(v3);

  v0[65] = 0xD00000000000001ELL;
  v0[66] = 0x8000000237F1C7A0;
  v0[67] = v5;
  v0[68] = v6;
  *(v0 + 552) = 0;
  v0[70] = v8;
  v7(v0 + 65);
  sub_237C5EE40(v7);
  v9 = v0[70];

  if (v4)
  {

    v10 = OUTLINED_FUNCTION_31_0();
    v11(v10);
LABEL_4:
    if ((sub_237D0510C() & 1) == 0)
    {
      v12 = FullyConnectedNetworkRegressorModel.debugDescription.getter();
      sub_237D05198(v12, v13);
    }

    OUTLINED_FUNCTION_3_95();
    v14 = OUTLINED_FUNCTION_24_37();
    v15(v14);
    v16 = OUTLINED_FUNCTION_6_74();
    v17(v16);
    v18 = OUTLINED_FUNCTION_22_38();
    v19(v18);

    OUTLINED_FUNCTION_10_3();
LABEL_25:
    OUTLINED_FUNCTION_53_13();

    __asm { BRAA            X1, X16 }
  }

  v78 = v0 + 78;
  while (1)
  {
    v31 = OUTLINED_FUNCTION_14_63();
    v33 = v32 + 1;
    (*(v34 + 8))(v31);
    if (v33 == v9)
    {

      goto LABEL_4;
    }

    OUTLINED_FUNCTION_35_20();
    sub_237EF6B60();
    OUTLINED_FUNCTION_42_18();
    v77 = v35;
    OUTLINED_FUNCTION_6_38();
    sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8);
      sub_237EF91A0();
      v36 = v0[92];
      v37 = v0[89];
      if (v0[77])
      {
        v88 = v0[77];
        v77(&v88);

        v38 = v36;
        v39 = 0;
      }

      else
      {
        v38 = v0[92];
        v39 = 1;
      }

      __swift_storeEnumTagSinglePayload(v38, v39, 1, v37);
      v40 = v0[92];
      v41 = v0[89];
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v41);
      v43 = v0[110];
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v83 = v0[106];
      v85 = v0[107];
      v81 = v0[105];
      v44 = v0[98];
      v45 = v0;
      v46 = v0[91];
      v47 = v0[90];
      v48 = v0[88];
      v49 = v0[87];
      v50 = v0[86];
      v51 = v45[85];
      v52 = (*(v47 + 32))(v46, v40, v41);
      v53 = MEMORY[0x2383E24F0](v52);
      sub_237E85270(v44, v43, v46, v81, v51, v50, v83, v85, v49, v48, v78);
      if (v87)
      {
        v63 = v45[109];
        v84 = v45[108];
        v86 = v45[110];
        v64 = v45[101];
        v65 = v45[100];
        v66 = v45[99];
        v67 = v45[96];
        v80 = v45[95];
        v82 = v45[98];
        v68 = v45[94];
        v79 = v45[91];
        v69 = v45[90];
        v70 = v45[89];

        objc_autoreleasePoolPop(v53);
        (*(v65 + 8))(v64, v66);
        sub_237E868B4(v68);
        (*(v69 + 8))(v79, v70);
        (*(v67 + 8))(v82, v80);
        (*(v63 + 8))(v86, v84);
        OUTLINED_FUNCTION_32_29();

        goto LABEL_25;
      }

      objc_autoreleasePoolPop(v53);
      v54 = OUTLINED_FUNCTION_21_48();
      v55(v54);
      v87 = 0;
      v0 = v45;
    }

    v9 = v0[108];
    result = sub_237E868B4(v0[94]);
    v56 = *(v43 + *(v9 + 52));
    v0[117] = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_44_19();
    *(v43 + v57) = v58;
    if ((sub_237EF8DD0() & 1) == 0)
    {
      break;
    }

    v0[120] = 0;
    *(v0 + 1056) = 0;
    v59 = v0[82];
    if (v59)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237F03530;
      strcpy((inited + 32), "training_loss");
      *(inited + 46) = -4864;
      sub_237C70604(v59);
      sub_237EF6A90();
      OUTLINED_FUNCTION_54_10();
      v61 = sub_237EF8230();
      OUTLINED_FUNCTION_16_51(v61);
      v62 = swift_task_alloc();
      v0[122] = v62;
      *v62 = v0;
      OUTLINED_FUNCTION_0_92();
      OUTLINED_FUNCTION_15_46();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_25_36();
  v73 = swift_task_alloc();
  v74 = OUTLINED_FUNCTION_43_20(v73);
  *v74 = v75;
  OUTLINED_FUNCTION_1_112(v74);
  OUTLINED_FUNCTION_12_56();
  OUTLINED_FUNCTION_53_13();

  return sub_237E853B0();
}

uint64_t sub_237E8404C()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_14_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  v7[128] = v0;

  if (v0)
  {
  }

  else
  {
    v7[129] = v3;
    v7[130] = v5;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E84170()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 960);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v4);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0xD000000000000010, 0x8000000237EFDE10, v1);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0xD000000000000014, 0x8000000237EFDDF0, v2);
  v86 = *(v0 + 1024);
  v5 = *(v0 + 1056);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 656);
  v9 = sub_237C908A4(v3);

  *(v0 + 520) = 0xD00000000000001ELL;
  *(v0 + 528) = 0x8000000237F1C7A0;
  *(v0 + 536) = v6;
  *(v0 + 544) = v7;
  *(v0 + 552) = 0;
  *(v0 + 560) = v9;
  v10 = v0;
  v8(v0 + 520);
  sub_237C5EE40(v8);

  if (v5)
  {

    v11 = OUTLINED_FUNCTION_21_48();
    v12(v11);
LABEL_3:
    if ((sub_237D0510C() & 1) == 0)
    {
      v13 = FullyConnectedNetworkRegressorModel.debugDescription.getter();
      sub_237D05198(v13, v14);
    }

    v15 = OUTLINED_FUNCTION_24_37();
    v16(v15);
    v17 = OUTLINED_FUNCTION_6_74();
    v18(v17);
    v19 = OUTLINED_FUNCTION_22_38();
    v20(v19);

    OUTLINED_FUNCTION_10_3();
LABEL_22:
    OUTLINED_FUNCTION_40_17();

    __asm { BRAA            X1, X16 }
  }

  v79 = (v0 + 624);
  while (1)
  {
    v21 = *(v10 + 920);
    v22 = *(v10 + 928) + 1;
    (*(*(v10 + 768) + 8))(*(v10 + 784), *(v10 + 760));
    if (v22 == v21)
    {

      goto LABEL_3;
    }

    ++*(v10 + 928);
    sub_237EF6A10();
    sub_237EF6B60();
    OUTLINED_FUNCTION_6_38();
    sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8);
      sub_237EF91A0();
      v23 = *(v10 + 736);
      v24 = *(v10 + 712);
      if (*(v10 + 616))
      {
        OUTLINED_FUNCTION_56_16();
        v25();

        v26 = v23;
        v27 = 0;
      }

      else
      {
        v26 = OUTLINED_FUNCTION_38_7();
      }

      __swift_storeEnumTagSinglePayload(v26, v27, 1, v24);
      v28 = *(v10 + 712);
      v29 = OUTLINED_FUNCTION_38_7();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, v30, v28);
      v32 = *(v10 + 880);
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v84 = *(v10 + 856);
      v33 = *(v10 + 704);
      v34 = *(v10 + 696);
      v35 = *(v10 + 688);
      v36 = OUTLINED_FUNCTION_60_10();
      v38 = v37(v36);
      v39 = MEMORY[0x2383E24F0](v38);
      v40 = OUTLINED_FUNCTION_48_14();
      sub_237E85270(v40, v41, v42, v43, v44, v35, v45, v84, v34, v33, v79);
      if (v86)
      {
        v65 = *(v10 + 872);
        v83 = *(v10 + 864);
        v85 = *(v10 + 880);
        v66 = *(v10 + 808);
        v67 = *(v10 + 800);
        v68 = *(v10 + 792);
        v69 = *(v10 + 768);
        v81 = *(v10 + 760);
        v82 = *(v10 + 784);
        v70 = *(v10 + 752);
        v80 = *(v10 + 728);
        v71 = *(v10 + 720);
        v72 = *(v10 + 712);

        objc_autoreleasePoolPop(v39);
        (*(v67 + 8))(v66, v68);
        sub_237E868B4(v70);
        (*(v71 + 8))(v80, v72);
        (*(v69 + 8))(v82, v81);
        (*(v65 + 8))(v85, v83);
        OUTLINED_FUNCTION_32_29();

        goto LABEL_22;
      }

      objc_autoreleasePoolPop(v39);
      v46 = OUTLINED_FUNCTION_21_48();
      v47(v46);
      v86 = 0;
    }

    v48 = *(v10 + 864);
    result = sub_237E868B4(*(v10 + 752));
    v50 = *(v48 + 52);
    v51 = *(v32 + v50);
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    *(v10 + 936) = v53;
    if (v52)
    {
      __break(1u);
      return result;
    }

    *(v32 + v50) = v53;
    if ((sub_237EF8DD0() & 1) == 0)
    {
      break;
    }

    *(v10 + 960) = 0;
    *(v10 + 1056) = 0;
    v54 = *(v10 + 656);
    if (v54)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
      sub_237C70604(v54);
      sub_237EF6A90();
      inited[3].n128_f64[0] = *(v10 + 1052);
      sub_237C758C4();
      *(v10 + 968) = sub_237EF8230();
      v56 = *(v10 + 32);
      *(v10 + 336) = *(v10 + 16);
      *(v10 + 352) = v56;
      v57 = *(v10 + 64);
      *(v10 + 368) = *(v10 + 48);
      *(v10 + 384) = v57;
      v58 = swift_task_alloc();
      *(v10 + 976) = v58;
      *v58 = v10;
      OUTLINED_FUNCTION_0_92();
      OUTLINED_FUNCTION_59_10(*(v10 + 880));
      OUTLINED_FUNCTION_40_17();

      return sub_237E859F8(v59, v60, v61, v62, v63);
    }
  }

  v75 = *(v10 + 32);
  *(v10 + 272) = *(v10 + 16);
  *(v10 + 288) = v75;
  v76 = *(v10 + 64);
  *(v10 + 304) = *(v10 + 48);
  *(v10 + 320) = v76;
  v77 = swift_task_alloc();
  *(v10 + 944) = v77;
  *v77 = v10;
  OUTLINED_FUNCTION_1_112(v77);
  OUTLINED_FUNCTION_40_17();

  return sub_237E853B0();
}

uint64_t sub_237E848DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[98];
  v14 = v12[96];
  v15 = v12[95];
  (*(v12[100] + 8))(v12[101], v12[99]);
  (*(v14 + 8))(v13, v15);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_7_73();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_237E849E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_31_27();
  v13(v12);
  v14 = OUTLINED_FUNCTION_55_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_7_73();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_237E84AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_31_27();
  v13(v12);
  v14 = OUTLINED_FUNCTION_55_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_7_73();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t FullyConnectedNetworkRegressor.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  v10[20] = a9;
  v10[21] = a10;
  v10[18] = v11;
  v10[19] = v13;
  v10[16] = v14;
  v10[17] = v15;
  v10[14] = v16;
  v10[15] = v17;
  v10[12] = v18;
  v10[13] = v19;
  v10[22] = *(v13 - 8);
  v10[23] = OUTLINED_FUNCTION_27_0();
  v10[24] = *(v12 - 8);
  v10[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_27_31();
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v20, v21, v22);
}

uint64_t sub_237E84CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26_2();
  v12 = v10[22];
  v11 = v10[23];
  v13 = v10[19];
  v14 = v10[14];
  (*(v10[24] + 16))(v10[25], v10[13], v10[18]);
  sub_237EF7E90();
  type metadata accessor for AnnotatedFeature();
  v15 = sub_237EF8A90();
  v10[26] = v15;
  v10[10] = v15;
  (*(v12 + 16))(v11, v14, v13);
  v16 = sub_237EF8A90();
  v10[27] = v16;
  v10[11] = v16;
  v17 = swift_task_alloc();
  v10[28] = v17;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v17 = v10;
  v17[1] = sub_237E84E2C;
  OUTLINED_FUNCTION_61_8(WitnessTable);
  OUTLINED_FUNCTION_45();

  return sub_237E8233C(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_237E84E2C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();

    return v10();
  }
}

uint64_t sub_237E84F98()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void sub_237E85000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24D0);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = v4[1];
  v30[0] = *v4;
  v30[1] = v13;
  v14 = v4[3];
  v30[2] = v4[2];
  v30[3] = v14;
  v19 = *(a2 + 16);
  v20 = a3;
  v21 = *(a2 + 24);
  v22 = a4;
  v23 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  sub_237C9339C();
  if (!v5)
  {
    v31 = v15;
    v16 = sub_237EF64F0();
    v17 = sub_237EF64E0();
    v28 = v16;
    v29 = MEMORY[0x277D2CD60];
    v26 = 0;
    v27 = v17;
    v24 = 0u;
    v25 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8);
    sub_237C96710(&qword_27DEB24D8, &qword_27DEAE2B8);
    sub_237D7E5CC();
    sub_237C96710(&qword_27DEB24E8, &qword_27DEAE2B0);
    sub_237E9194C(v12);
    sub_237EF6B70();
  }
}

uint64_t sub_237E85270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v19[1] = a1;
  v13 = sub_237EF6B10();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237EF8B90();
  if (v11)
  {
    *a11 = v11;
  }

  else
  {
    v18 = type metadata accessor for FullyConnectedNetworkRegressorModel();
    sub_237E444D0(a3, v18);
    sub_237EF69F0();
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_237E853B0()
{
  OUTLINED_FUNCTION_2_0();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[5] = v5;
  v0[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v7);
  v0[11] = OUTLINED_FUNCTION_27_0();
  v8 = sub_237EF6B10();
  v0[12] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v0[13] = v9;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E854A0()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = v3[2];
  v0[16] = v5;
  *v4 = v5;
  v4[1] = v2;
  v6 = v3[3];
  v0[17] = v6;
  v4[2] = v6;
  v7 = v3[4];
  v0[18] = v7;
  v4[3] = v7;
  v4[4] = v1;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v2;
  v9[3] = v7;
  v9[4] = v1;
  v9[5] = KeyPath;
  OUTLINED_FUNCTION_26_30();
  sub_237EF7E90();
  OUTLINED_FUNCTION_45_19();
  v11 = v10;
  v0[19] = v10;

  v0[2] = v11;
  v12 = swift_task_alloc();
  v0[20] = v12;
  OUTLINED_FUNCTION_26_30();
  type metadata accessor for FullyConnectedNetworkRegressorModel();
  sub_237EF8A60();
  OUTLINED_FUNCTION_19_46();
  OUTLINED_FUNCTION_18_44();
  *v12 = v0;
  v12[1] = sub_237E8561C;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_45();

  return Regressor.prediction<A>(from:)(v13, v14, v15, v16, v17);
}

uint64_t sub_237E8561C()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E85738()
{
  v23 = v0[17];
  v24 = v0[18];
  v22 = v0[16];
  v1 = v0[13];
  v26 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v27 = v0[12];
  v0[3] = v0[22];
  v25 = sub_237EF64B0();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
  OUTLINED_FUNCTION_17_52();
  sub_237C96710(v8, v9);
  sub_237EF6B30();
  v10 = swift_task_alloc();
  *v10 = v22;
  v10[1] = v3;
  v10[2] = v23;
  v10[3] = v24;
  v10[4] = v2;
  KeyPath = swift_getKeyPath();

  v12 = swift_task_alloc();
  v12[2] = v3;
  v12[3] = v24;
  v12[4] = v2;
  v12[5] = KeyPath;
  sub_237C9339C();
  v14 = v13;

  v0[4] = v14;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v25);
  sub_237EF6B30();
  sub_237EF6500();
  v18 = *(v1 + 8);
  v18(v26, v27);
  v19 = OUTLINED_FUNCTION_55_1();
  (v18)(v19);

  OUTLINED_FUNCTION_10_3();

  return v20();
}

uint64_t sub_237E85988()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237E859F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237E85A2C()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v5 = v3[2];
  v0[12] = v5;
  *v4 = v5;
  v4[1] = v2;
  v6 = v3[3];
  v0[13] = v6;
  v4[2] = v6;
  v7 = v3[4];
  v0[14] = v7;
  v4[3] = v7;
  v4[4] = v1;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v2;
  v9[3] = v7;
  v9[4] = v1;
  v9[5] = KeyPath;
  OUTLINED_FUNCTION_26_30();
  sub_237EF7E90();
  OUTLINED_FUNCTION_45_19();
  v11 = v10;
  v0[15] = v10;

  v0[2] = v11;
  v12 = swift_task_alloc();
  v0[16] = v12;
  OUTLINED_FUNCTION_26_30();
  type metadata accessor for FullyConnectedNetworkRegressorModel();
  sub_237EF8A60();
  OUTLINED_FUNCTION_19_46();
  OUTLINED_FUNCTION_18_44();
  *v12 = v0;
  v12[1] = sub_237E85BA8;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_45();

  return Regressor.prediction<A>(from:)(v13, v14, v15, v16, v17);
}

uint64_t sub_237E85BA8()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (!v0)
  {
    *(v5 + 144) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E85CC4()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  v7 = swift_task_alloc();
  *v7 = v5;
  v7[1] = v6;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = KeyPath;
  sub_237C9339C();
  v11 = v10;

  v0[3] = v1;
  v0[4] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
  sub_237E4540C();
  OUTLINED_FUNCTION_17_52();
  sub_237C96710(v12, v13);
  OUTLINED_FUNCTION_37_23();
  rootMeanSquaredError<A, B, C>(_:_:)(v14, v15, v16);
  v0[5] = v1;
  v0[6] = v11;
  OUTLINED_FUNCTION_37_23();
  maximumAbsoluteError<A, B, C>(_:_:)();

  OUTLINED_FUNCTION_10_3();

  return v17();
}

uint64_t sub_237E85EB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return FullyConnectedNetworkRegressor.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237E85F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237C6A904;

  return FullyConnectedNetworkRegressor.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

uint64_t sub_237E86090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v39 = v36 - v6;
  v7 = *(a2 + 16);
  v36[1] = *(a2 + 24);
  v37 = v7;
  v8 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v38 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = v36 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v36 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v36 - v27;
  (*(v10 + 16))(v13, v41, v8, v26);
  sub_237D4A7B4(v13, v37, v21);
  sub_237EF69B0();
  v29 = *(v16 + 8);
  v29(v21, v14);
  sub_237EF6AE0();
  v29(v24, v14);
  type metadata accessor for AnnotatedFeature();
  sub_237EF64B0();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_237EF6B20();
  v34 = *(v16 + 16);
  v34(v21, v28, v14);
  v34(v38, v24, v14);
  sub_237EF6410();
  v29(v24, v14);
  return (v29)(v28, v14);
}

uint64_t sub_237E863B0@<X0>(uint64_t a1@<X0>, void *a2@<X7>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FullyConnectedNetworkRegressor();
  result = sub_237E86090(a1, v7, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_237E86418@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v27[1] = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v29 = v8;
  MEMORY[0x28223BE20](v9);
  v28 = v27 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  sub_237C9339C();
  v17 = sub_237EF6430();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  sub_237EF6970();
  sub_237C9339C();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  sub_237EF6970();
  v24 = *(v6 + 16);
  v24(v28, v16, v4);
  v24(v29, v13, v4);
  sub_237EF6410();
  v25 = *(v6 + 8);
  v25(v13, v4);
  return (v25)(v16, v4);
}

uint64_t sub_237E86728(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  a3(v10);
  sub_237EF6950();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_237E8684C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E868B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_73()
{
}

__n128 OUTLINED_FUNCTION_16_51(uint64_t a1)
{
  *(v1 + 968) = a1;
  v2 = *(v1 + 32);
  *(v1 + 336) = *(v1 + 16);
  *(v1 + 352) = v2;
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(v1 + 368) = result;
  *(v1 + 384) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_44()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_19_46()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_25_36()
{
  v1 = *(v0 + 32);
  *(v0 + 272) = *(v0 + 16);
  *(v0 + 288) = v1;
  result = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 304) = result;
  *(v0 + 320) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_27_31()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 48) = result;
  *(v1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_27()
{
  v1 = *(v0 + 808);
  sub_237C5EE40(*(v0 + 656));
  return v1;
}

uint64_t OUTLINED_FUNCTION_32_29()
{
}

uint64_t OUTLINED_FUNCTION_35_20()
{
  ++*(v0 + 928);

  return sub_237EF6A10();
}

void OUTLINED_FUNCTION_45_19()
{

  sub_237C9339C();
}

unint64_t OUTLINED_FUNCTION_54_10()
{
  *(v1 + 48) = *(v0 + 1052);

  return sub_237C758C4();
}

uint64_t OUTLINED_FUNCTION_61_8(uint64_t a1)
{
  v3 = *(v1 + 96);
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  return v3;
}

uint64_t sub_237E86DC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E86E14()
{
  sub_237EF8CF0();
  swift_getWitnessTable();
  sub_237EF8A90();
  sub_237EF8A60();
  swift_getWitnessTable();
  v0 = sub_237EF8800();

  sub_237EF8260();
  swift_getWitnessTable();
  sub_237EF8D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
  sub_237E87168();
  sub_237EFA000();

  sub_237EF9380();
  swift_getWitnessTable();
  sub_237EF8240();
  return v0;
}

uint64_t sub_237E87070()
{
  sub_237EF8260();
  sub_237EF8250();
  swift_getWitnessTable();
  v0 = sub_237EF8860();

  return v0 & 1;
}

unint64_t sub_237E87168()
{
  result = qword_280C8E200;
  if (!qword_280C8E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEADDA0);
    sub_237C85170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8E200);
  }

  return result;
}

uint64_t sub_237E871F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v30 = v7;
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EF62C0();
  sub_237EF62B0();
  sub_237EF60D0();
  v11 = v10;

  if (v11)
  {
    sub_237EF8260();
    v12 = sub_237EF62B0();
    v14 = v13;
    sub_237CD1200();
    OUTLINED_FUNCTION_45_0();
    *v15 = v34;
    *(v15 + 8) = a3;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    v16 = v33;
    *(v15 + 32) = v32;
    *(v15 + 48) = v16;
    *(v15 + 64) = 0;
  }

  else
  {
    result = sub_237EF60F0();
    if (result)
    {
      return result;
    }

    sub_237EF8260();
    v18 = sub_237EF62B0();
    v28 = v19;
    v29 = v18;
    sub_237EF62B0();
    sub_237EF61D0();

    sub_237EF62F0();
    (*(v30 + 8))(v9, v31);
    v20 = sub_237EFA220();
    v22 = v21;
    *&v32 = a4;
    swift_getMetatypeMetadata();
    v23 = sub_237EF85D0();
    v25 = v24;
    sub_237CD1200();
    OUTLINED_FUNCTION_45_0();
    *v26 = v34;
    *(v26 + 8) = a3;
    v27 = v28;
    *(v26 + 16) = v29;
    *(v26 + 24) = v27;
    *(v26 + 32) = v20;
    *(v26 + 40) = v22;
    *(v26 + 48) = v23;
    *(v26 + 56) = v25;
    *(v26 + 64) = 1;
  }

  return swift_willThrow();
}

uint64_t DataFrame.init<A, B, C>(_:featuresColumnID:annotationsColumnID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a3;
  v39 = a2;
  v34 = a1;
  v40 = a8;
  v44 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v43 = v13;
  MEMORY[0x28223BE20](v14);
  v37 = &v32 - v15;
  v42 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v41 = v16;
  MEMORY[0x28223BE20](v17);
  v35 = &v32 - v18;
  v38 = sub_237EF62C0();
  v33 = sub_237EF62B0();
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  KeyPath = swift_getKeyPath();
  v54 = a4;
  v55 = a7;
  v56 = KeyPath;
  sub_237C8FFEC(sub_237E87B10, v53, a4, a5, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v20);
  OUTLINED_FUNCTION_1_113();
  v61 = a1;
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF6220();
  v21 = sub_237EF62C0();
  v22 = v36;
  v33 = sub_237EF62B0();
  v32 = v23;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v24 = swift_getKeyPath();
  v46 = a4;
  v47 = a7;
  v48 = v24;
  v25 = a7;
  v26 = v34;
  v27 = v34;
  sub_237C8FFEC(sub_237D66284, v45, a4, a6, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v28);
  OUTLINED_FUNCTION_1_113();
  v61 = v27;
  sub_237EF8A60();
  swift_getWitnessTable();
  v29 = v37;
  sub_237EF6220();
  sub_237EF6190();
  v30 = v35;
  sub_237EF6110();
  sub_237EF6110();
  (*(*(v21 - 8) + 8))(v22, v21);
  (*(*(v38 - 8) + 8))(v39);
  (*(*(a4 - 8) + 8))(v26, a4);
  (*(v43 + 8))(v29, v44);
  return (*(v41 + 8))(v30, v42);
}

uint64_t sub_237E87894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_237EF60D0();
  if (v16)
  {
    sub_237CD1200();
    OUTLINED_FUNCTION_45_0();
    *v17 = a3;
    *(v17 + 8) = a4;
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = v32;
    *(v17 + 32) = v31;
    *(v17 + 48) = v18;
    *(v17 + 64) = 0;
    swift_willThrow();
    sub_237EF8260();
    return sub_237EF8260();
  }

  else
  {
    OUTLINED_FUNCTION_2_108();
    sub_237EF62F0();
    v20 = v15;
    v21 = *(v10 + 8);
    v21(v20, v8);
    result = swift_dynamicCastMetatype();
    if (!result)
    {
      result = swift_dynamicCastMetatype();
      if (!result)
      {
        result = swift_dynamicCastMetatype();
        if (!result)
        {
          result = swift_dynamicCastMetatype();
          if (!result)
          {
            v29 = a4;
            sub_237EF8260();
            sub_237EF8260();
            v22 = v21;
            v23 = v30;
            OUTLINED_FUNCTION_2_108();
            sub_237EF62F0();
            v22(v23, v8);
            v24 = sub_237EFA220();
            v26 = v25;
            sub_237CD1200();
            OUTLINED_FUNCTION_45_0();
            v27 = v29;
            *v28 = a3;
            *(v28 + 8) = v27;
            *(v28 + 16) = a1;
            *(v28 + 24) = a2;
            *(v28 + 32) = v24;
            *(v28 + 40) = v26;
            strcpy((v28 + 48), "numeric type");
            *(v28 + 61) = 0;
            *(v28 + 62) = -5120;
            *(v28 + 64) = 1;
            return swift_willThrow();
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_113()
{
  *(v1 - 336) = v0;
}

uint64_t OUTLINED_FUNCTION_2_108()
{

  return sub_237EF61D0();
}

void sub_237E87B68(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_237D0B7D4();
    v3 = v4;
  }

  *v1 = v3;
}

uint64_t sub_237E87BCC()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[6];
  v5 = [v4 lock];
  v13 = MEMORY[0x277D84F90];
  if (v2[3])
  {

    sub_237D0B7D4();
    OUTLINED_FUNCTION_4_90();
    if (v7)
    {
      OUTLINED_FUNCTION_0_93(v6);
      sub_237D0B7D4();
    }

    OUTLINED_FUNCTION_3_96();
  }

  if (v2[4])
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0B7D4();
    }

    OUTLINED_FUNCTION_4_90();
    if (v7)
    {
      OUTLINED_FUNCTION_0_93(v8);
      sub_237D0B7D4();
    }

    OUTLINED_FUNCTION_3_96();
  }

  MEMORY[0x28223BE20](v5);
  v12[2] = v2;
  v12[3] = &v13;
  v9 = sub_237E896D0(0x676E696E69617274, 0xE800000000000000, sub_237E89994, v12);
  if (!v1)
  {
    v3 = sub_237E88AC0(v9, v10);
  }

  [v4 unlock];
  return v3;
}

id sub_237E87DE0()
{
  v1 = *(v0 + 48);
  [v1 lock];
  sub_237EF85E0();
  sub_237EF85E0();
  v2 = XGBoosterSetParam();

  if (!v2)
  {
    return [v1 unlock];
  }

  result = XGBGetLastError();
  if (result)
  {
    sub_237EF8640();
    OUTLINED_FUNCTION_6_75();
    v4 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_2_109(v4, v5);
    return [v1 unlock];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237E87EDC()
{
  v1 = *(v0 + 48);
  [v1 lock];
  XGBoosterGetNumFeature();
  [v1 unlock];
  return 0;
}

id sub_237E87F70()
{
  v1 = *(v0 + 48);
  [v1 lock];
  result = XGBoosterUpdateOneIter();
  if (result)
  {
    result = XGBGetLastError();
    if (result)
    {
      sub_237EF8640();
      OUTLINED_FUNCTION_6_75();
      v3 = OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_2_109(v3, v4);
      return [v1 unlock];
    }
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (!v6)
    {
      *(v0 + 40) = v7;
      return [v1 unlock];
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237E8802C(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = result >> 32;
      if (result >> 32 >= result)
      {
        v8 = result;

        v4 = v8;
        v5 = v7;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 16);
      v2 = *(result + 24);

      v4 = v3;
      v5 = v2;
LABEL_6:
      v6 = sub_237E898EC(v4, v5);
      goto LABEL_7;
    default:

      v6 = sub_237E89858();
LABEL_7:
      v9 = v6;

      result = v9;
      break;
  }

  return result;
}

id sub_237E88118()
{
  v1 = *(v0 + 48);
  [v1 lock];
  if (XGBoosterPredictFromDMatrix())
  {
    if (XGBGetLastError())
    {
      v2 = sub_237EF8640();
      v4 = v3;
      sub_237D5206C();
      OUTLINED_FUNCTION_45_0();
      *v5 = v2;
      v5[1] = v4;
      swift_willThrow();
      return [v1 unlock];
    }

    __break(1u);
  }

  else
  {
    v6 = *(MEMORY[0x277D84F90] + 16);
    if (v6)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = *(MEMORY[0x277D84F90] + 8 * v7 + 32);
        if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
        {
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }

        v8 *= v9;
        ++v7;
      }

      while (v6 != v7);
    }
  }

  result = sub_237EF9740();
  __break(1u);
  return result;
}

id sub_237E88474(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  [v5 lock];

  if (!sub_237E8802C(a1, a2))
  {
    return [v5 unlock];
  }

  result = XGBGetLastError();
  if (result)
  {
    sub_237EF8640();
    OUTLINED_FUNCTION_6_75();
    v7 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_2_109(v7, v8);
    return [v5 unlock];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237E88538()
{
  v2 = *(v0 + 48);
  [v2 lock];
  if (!XGBoosterSaveModelToBuffer())
  {
    sub_237D14FC4();
    v1 = sub_237E894A0(v5, v6);
    [v2 unlock];
    return v1;
  }

  result = XGBGetLastError();
  if (result)
  {
    sub_237EF8640();
    OUTLINED_FUNCTION_6_75();
    OUTLINED_FUNCTION_45_0();
    *v4 = v0;
    v4[1] = v1;
    swift_willThrow();
    [v2 unlock];
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237E88668(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  if (!a1)
  {
    v8 = MEMORY[0x277D84F90];
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v6 = *(a1 + 16);

  sub_237D0B7D4();
  v8 = v7;
  v9 = *(v7 + 16);
  OUTLINED_FUNCTION_4_90();
  if (v11)
  {
    OUTLINED_FUNCTION_0_93(v10);
    sub_237D0B7D4();
    v8 = v20;
  }

  *(v8 + 16) = v3;
  *(v8 + 8 * v9 + 32) = v6;
  if (a2)
  {
LABEL_5:
    v12 = *(a2 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0B7D4();
      v8 = v21;
    }

    v13 = *(v8 + 16);
    OUTLINED_FUNCTION_4_90();
    if (v11)
    {
      OUTLINED_FUNCTION_0_93(v14);
      sub_237D0B7D4();
      v8 = v22;
    }

    *(v8 + 16) = v3;
    *(v8 + 8 * v13 + 32) = v12;
  }

LABEL_11:
  result = XGBoosterCreate();
  if (result)
  {

    result = XGBGetLastError();
    if (result)
    {
      v16 = sub_237EF8640();
      v18 = v17;
      sub_237D5206C();
      OUTLINED_FUNCTION_45_0();
      *v19 = v16;
      v19[1] = v18;
      swift_willThrow();

      swift_deallocPartialClassInstance();
      return v2;
    }

    __break(1u);
  }

  else
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_237E888B8()
{
  XGBoosterFree();

  return v0;
}

uint64_t sub_237E888F0()
{
  sub_237E888B8();

  return swift_deallocClassInstance();
}

uint64_t sub_237E88948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB5CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F04760;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  if (__OFSUB__(*(a3 + 40), 1))
  {
    __break(1u);
  }

  sub_237E87B68(0);
  result = XGBoosterEvalOneIter();
  if (result)
  {

    result = XGBGetLastError();
    if (result)
    {
      v8 = sub_237EF8640();
      v10 = v9;
      sub_237D5206C();
      swift_allocError();
      *v11 = v8;
      v11[1] = v10;
      return swift_willThrow();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237E88AC0(void *a1, unint64_t a2)
{
  v4 = sub_237EF5C70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[1] = sub_237C758C4();
  v8 = sub_237EF8230();
  v88 = a1;
  v89 = a2;
  sub_237EF5C50();
  v9 = sub_237D05400();
  v10 = sub_237EF91D0();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  v88 = v10;
  v89 = v12;
  sub_237EF5C50();
  v14 = sub_237EF91B0();
  v13(v7, v4);

  v82[2] = sub_237C60B7C(1, v14);
  v82[3] = v9;
  v16 = v15;
  v18 = v17 >> 1;
  v20 = (v19 + 16 * v15 + 8);
  v83 = v17 >> 1;
  while (1)
  {
    if (v18 == v16)
    {
      goto LABEL_80;
    }

    if (v16 >= v18)
    {
      break;
    }

    v21 = *v20;
    v88 = *(v20 - 1);
    v89 = v21;
    v86 = 58;
    v87 = 0xE100000000000000;
    sub_237EF8260();
    v22 = sub_237EF91C0();
    if (v22[2] != 2)
    {
      goto LABEL_77;
    }

    v84 = v16;
    v85 = v20;
    v24 = v22[4];
    v23 = v22[5];
    v25 = v22[6];
    v26 = v22[7];
    v88 = 0;
    sub_237EF8260();
    sub_237EF8260();
    LOBYTE(v25) = sub_237E895D8(v25, v26);

    if ((v25 & 1) == 0)
    {

LABEL_79:

      v8 = sub_237EF8230();
LABEL_80:
      swift_unknownObjectRelease();
      return v8;
    }

    v27 = *&v88;
    v88 = v24;
    v89 = v23;
    v86 = 45;
    v87 = 0xE100000000000000;
    v28 = sub_237EF91C0();
    if (*(v28 + 16) != 2)
    {
      goto LABEL_76;
    }

    sub_237EF8260();
    v29 = sub_237EF9890();

    if (v29)
    {
      if (v29 != 1)
      {
LABEL_76:

LABEL_77:

        goto LABEL_79;
      }

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    if (!*(v28 + 16))
    {
      goto LABEL_82;
    }

    sub_237EF8260();

    switch(sub_237E89454())
    {
      case 1u:
        v88 = 0;
        v89 = 0xE000000000000000;
        if (v30)
        {
          v61 = 0x69746164696C6176;
        }

        else
        {
          v61 = 0x676E696E69617274;
        }

        if (v30)
        {
          v62 = 0xEA00000000006E6FLL;
        }

        else
        {
          v62 = 0xE800000000000000;
        }

        MEMORY[0x2383E0710](v61, v62);

        MEMORY[0x2383E0710](0x7272655F78616D5FLL, 0xEA0000000000726FLL);
        v64 = v88;
        v63 = v89;
        swift_isUniquelyReferenced_nonNull_native();
        v88 = v8;
        v65 = sub_237D30F88(v64, v63);
        if (__OFADD__(v8[2], (v66 & 1) == 0))
        {
          goto LABEL_86;
        }

        v37 = v65;
        v67 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318);
        if (sub_237EF96B0())
        {
          v68 = sub_237D30F88(v64, v63);
          v18 = v83;
          v41 = v85;
          if ((v67 & 1) != (v69 & 1))
          {
            goto LABEL_91;
          }

          v37 = v68;
        }

        else
        {
          v18 = v83;
          v41 = v85;
        }

        v8 = v88;
        if (v67)
        {
LABEL_71:
          *(v8[7] + 8 * v37) = v27;
LABEL_72:
        }

        else
        {
          v88[(v37 >> 6) + 8] |= 1 << v37;
          v79 = (v8[6] + 16 * v37);
          *v79 = v64;
          v79[1] = v63;
          *(v8[7] + 8 * v37) = v27;
          v80 = v8[2];
          v73 = __OFADD__(v80, 1);
          v74 = v80 + 1;
          if (v73)
          {
            goto LABEL_90;
          }

LABEL_74:
          v8[2] = v74;
        }

        v20 = v41 + 2;
        v16 = v84 + 1;
        break;
      case 2u:
      case 3u:
        v88 = 0;
        v89 = 0xE000000000000000;
        if (v30)
        {
          v31 = 0x69746164696C6176;
        }

        else
        {
          v31 = 0x676E696E69617274;
        }

        if (v30)
        {
          v32 = 0xEA00000000006E6FLL;
        }

        else
        {
          v32 = 0xE800000000000000;
        }

        MEMORY[0x2383E0710](v31, v32);

        MEMORY[0x2383E0710](0x73736F6C5FLL, 0xE500000000000000);
        v34 = v88;
        v33 = v89;
        swift_isUniquelyReferenced_nonNull_native();
        v88 = v8;
        v35 = sub_237D30F88(v34, v33);
        if (__OFADD__(v8[2], (v36 & 1) == 0))
        {
          goto LABEL_83;
        }

        v37 = v35;
        v38 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318);
        if (sub_237EF96B0())
        {
          v39 = sub_237D30F88(v34, v33);
          v18 = v83;
          v41 = v85;
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_91;
          }

          v37 = v39;
        }

        else
        {
          v18 = v83;
          v41 = v85;
        }

        v8 = v88;
        if (v38)
        {
          goto LABEL_71;
        }

        v88[(v37 >> 6) + 8] |= 1 << v37;
        v75 = (v8[6] + 16 * v37);
        *v75 = v34;
        v75[1] = v33;
        *(v8[7] + 8 * v37) = v27;
        v76 = v8[2];
        v73 = __OFADD__(v76, 1);
        v74 = v76 + 1;
        if (!v73)
        {
          goto LABEL_74;
        }

        goto LABEL_87;
      case 4u:
      case 5u:
        v88 = 0;
        v89 = 0xE000000000000000;
        if (v30)
        {
          v42 = 0x69746164696C6176;
        }

        else
        {
          v42 = 0x676E696E69617274;
        }

        if (v30)
        {
          v43 = 0xEA00000000006E6FLL;
        }

        else
        {
          v43 = 0xE800000000000000;
        }

        MEMORY[0x2383E0710](v42, v43);

        MEMORY[0x2383E0710](0x636172756363615FLL, 0xE900000000000079);
        v45 = v88;
        v44 = v89;
        swift_isUniquelyReferenced_nonNull_native();
        v88 = v8;
        v46 = sub_237D30F88(v45, v44);
        if (__OFADD__(v8[2], (v47 & 1) == 0))
        {
          goto LABEL_84;
        }

        v48 = v46;
        v49 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318);
        if (sub_237EF96B0())
        {
          v50 = sub_237D30F88(v45, v44);
          v18 = v83;
          v41 = v85;
          if ((v49 & 1) != (v51 & 1))
          {
            goto LABEL_91;
          }

          v48 = v50;
        }

        else
        {
          v18 = v83;
          v41 = v85;
        }

        v70 = 1.0 - v27;
        v8 = v88;
        if (v49)
        {
          *(v88[7] + 8 * v48) = v70;
          goto LABEL_72;
        }

        v88[(v48 >> 6) + 8] |= 1 << v48;
        v71 = (v8[6] + 16 * v48);
        *v71 = v45;
        v71[1] = v44;
        *(v8[7] + 8 * v48) = v70;
        v72 = v8[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          goto LABEL_88;
        }

        goto LABEL_74;
      case 6u:
        goto LABEL_79;
      default:
        v88 = 0;
        v89 = 0xE000000000000000;
        if (v30)
        {
          v52 = 0x69746164696C6176;
        }

        else
        {
          v52 = 0x676E696E69617274;
        }

        if (v30)
        {
          v53 = 0xEA00000000006E6FLL;
        }

        else
        {
          v53 = 0xE800000000000000;
        }

        MEMORY[0x2383E0710](v52, v53);

        MEMORY[0x2383E0710](0x726F7272655FLL, 0xE600000000000000);
        v55 = v88;
        v54 = v89;
        swift_isUniquelyReferenced_nonNull_native();
        v88 = v8;
        v56 = sub_237D30F88(v55, v54);
        if (__OFADD__(v8[2], (v57 & 1) == 0))
        {
          goto LABEL_85;
        }

        v37 = v56;
        v58 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318);
        if (sub_237EF96B0())
        {
          v59 = sub_237D30F88(v55, v54);
          v18 = v83;
          v41 = v85;
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_91;
          }

          v37 = v59;
        }

        else
        {
          v18 = v83;
          v41 = v85;
        }

        v8 = v88;
        if (v58)
        {
          goto LABEL_71;
        }

        v88[(v37 >> 6) + 8] |= 1 << v37;
        v77 = (v8[6] + 16 * v37);
        *v77 = v55;
        v77[1] = v54;
        *(v8[7] + 8 * v37) = v27;
        v78 = v8[2];
        v73 = __OFADD__(v78, 1);
        v74 = v78 + 1;
        if (!v73)
        {
          goto LABEL_74;
        }

        goto LABEL_89;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

uint64_t sub_237E89454()
{
  v0 = sub_237EF9890();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237E894A0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_237EF5F00();
    }

    else
    {
      sub_237EF5CD0();
      swift_allocObject();
      sub_237EF5C90();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_237EF5F80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}