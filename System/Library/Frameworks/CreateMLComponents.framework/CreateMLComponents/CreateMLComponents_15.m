uint64_t sub_237D9D244(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = sub_237EF86E0();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_237D0C734();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_237D0C734();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_237EF86C0();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_237EF8620();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_237EF86E0();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0C734();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_237D0C734();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_237EF8620();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_237EF86E0();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_237D0C734();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D9D5E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237D9D628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D9D690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_4_60()
{

  JUMPOUT(0x2383E2DF0);
}

uint64_t OUTLINED_FUNCTION_7_46()
{

  return swift_allocError();
}

uint64_t sub_237D9D910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for PreprocessingUpdatableSupervisedTabularEstimator();
  return PreprocessingUpdatableSupervisedTabularEstimator.annotationColumnID.setter(v10, v12);
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.annotationColumnID.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 40) + 8);
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

void (*PreprocessingUpdatableSupervisedTabularEstimator.annotationColumnID.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  PreprocessingUpdatableSupervisedTabularEstimator.annotationColumnID.getter(a2);
  return sub_237D9DC78;
}

void sub_237D9DC78(uint64_t **a1, char a2)
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
    PreprocessingUpdatableSupervisedTabularEstimator.annotationColumnID.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PreprocessingUpdatableSupervisedTabularEstimator.annotationColumnID.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 32))(a3);
  v7 = type metadata accessor for PreprocessingUpdatableSupervisedTabularEstimator();
  return (*(*(a2 - 8) + 32))(a3 + *(v7 + 52), a1, a2);
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.makeTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  PreprocessingUpdatableSupervisedTabularEstimator.preprocessor.getter(a1, v19 - v18);
  PreprocessingUpdatableSupervisedTabularEstimator.estimator.getter(a1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  swift_getAssociatedConformanceWitness();
  return ComposedTabularTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v23);
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.preprocessed(from:eventHandler:)()
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

uint64_t sub_237D9E0A0()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  PreprocessingUpdatableSupervisedTabularEstimator.preprocessor.getter(v1, v0[10]);
  v2 = *(*(v1 + 32) + 8);
  OUTLINED_FUNCTION_15_0();
  v12 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_237D9E1CC;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v8, v6, v2);
}

uint64_t sub_237D9E1CC()
{
  OUTLINED_FUNCTION_69();
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
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_59();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)()
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
  OUTLINED_FUNCTION_22_3();
  v1[10] = OUTLINED_FUNCTION_27_0();
  v1[11] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_27_0();
  v1[14] = *(*(v3 + 40) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[16] = v11;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237D9E4A4()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingUpdatableSupervisedTabularEstimator.estimator.getter(v0[7], v0[13]);
  OUTLINED_FUNCTION_15_0();
  v12 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v2;
  *v2 = v3;
  v2[1] = sub_237D9E5C0;
  v4 = v0[18];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  return v12(v4, v9, v10, v7, v8, v6, v5);
}

uint64_t sub_237D9E5C0()
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

uint64_t sub_237D9E718()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[10];
  v9 = v0[9];
  v8 = v0[2];
  PreprocessingUpdatableSupervisedTabularEstimator.preprocessor.getter(v0[7], v5);
  (*(v4 + 32))(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v5, v2, v9, v3, v8);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237D9E83C()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.fitted(to:validateOn:eventHandler:)()
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
  OUTLINED_FUNCTION_9_25(v9);

  return PreprocessingUpdatableSupervisedTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237D9EA24()
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

uint64_t sub_237D9EB20()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  v1 = v0[16];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[12] + 8))(v0[14], v0[11]);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_59();

    return v3(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = v0[11];
    v12 = v0[9];
    sub_237C89E7C(v0[3], v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
    {
      v13 = v0[10];
      v14 = v0[11];
      sub_237C89EEC(v0[9]);
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[19] = v15;
      *v15 = v16;
      OUTLINED_FUNCTION_3_64(v15);
      OUTLINED_FUNCTION_59();

      return PreprocessingUpdatableSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
    }

    else
    {
      (*(v0[12] + 32))(v0[13], v0[9], v0[11]);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[17] = v18;
      *v18 = v19;
      v18[1] = sub_237D9ECFC;
      OUTLINED_FUNCTION_59();

      return PreprocessingUpdatableSupervisedTabularEstimator.preprocessed(from:eventHandler:)();
    }
  }
}

uint64_t sub_237D9ECFC()
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

uint64_t sub_237D9EDF8()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v0[11]);
  sub_237C89F54(v4, v3);
  sub_237EF8B90();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_31_0();
  v5(v6);
  if (v1)
  {
    sub_237C89EEC(v0[10]);
    v7 = OUTLINED_FUNCTION_31_0();
    v5(v7);

    OUTLINED_FUNCTION_3_0();

    return v8();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[19] = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_3_64(v10);

    return PreprocessingUpdatableSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
  }
}

uint64_t sub_237D9EF54()
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

uint64_t sub_237D9F050()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  sub_237C89EEC(v0[10]);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237D9F118()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_19_33();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_59();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_237D9F198()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  v1 = *(v0[12] + 8);
  (v1)(v0[13], v0[11]);
  v2 = OUTLINED_FUNCTION_31_0();
  v1(v2);
  OUTLINED_FUNCTION_19_33();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_59();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_237D9F244()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  sub_237C89EEC(*(v0 + 80));
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_19_33();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_59();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.update(_:withPreprocessed:eventHandler:)()
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

uint64_t sub_237D9F394()
{
  v1 = v0[10];
  v2 = v0[6];
  PreprocessingUpdatableSupervisedTabularEstimator.estimator.getter(v1, v0[14]);
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
  v7[1] = sub_237D9F51C;
  v9 = v0[12];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];

  return v14(v2 + v5, v12, v10, v11, v9, v3);
}

uint64_t sub_237D9F51C()
{
  OUTLINED_FUNCTION_69();
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
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_59();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.update(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v1[11] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_27_0();
  v7 = sub_237EF61A0();
  v1[14] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_27_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[17] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_9_25(v9);

  return PreprocessingUpdatableSupervisedTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237D9F7E4()
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

uint64_t sub_237D9F8E0()
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
    PreprocessingUpdatableSupervisedTabularEstimator.estimator.getter(v4, v0[13]);
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

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) + 8);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTabularTransformer();
  return (*(v4 + 64))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  result = (*(v12 + 72))(a1, v13, v12);
  if (!v24)
  {
    (*(v20 + 16))(v23, v3, v22);
    (*(v19 + 32))(v5, v4, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_25_13(v23, a3);
  }

  return result;
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTabularTransformer();
  return (*(v4 + 32))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingUpdatableSupervisedTabularEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v20 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v23 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_2();
  result = (*(v12 + 40))(a1, v13, v12);
  if (!v25)
  {
    (*(v20 + 16))(v23, v3, v22);
    (*(v16 + 32))(v5, v4, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_25_13(v23, a3);
  }

  return result;
}

uint64_t sub_237DA00B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingUpdatableSupervisedTabularEstimator.update(_:with:eventHandler:)();
}

void (*sub_237DA01AC(void *a1, uint64_t a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = PreprocessingUpdatableSupervisedTabularEstimator.annotationColumnID.modify(v4, a2);
  return sub_237C803C0;
}

uint64_t sub_237DA0210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedTabularEstimator.fitted(to:validateOn:eventHandler:)();
}

uint64_t sub_237DA0484(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DA04C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237DA0688(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_19_33()
{
}

uint64_t sub_237DA0968()
{
  v0 = OUTLINED_FUNCTION_8_52();
  MEMORY[0x28223BE20](v0 - 8);
  if (swift_dynamicCastMetatype())
  {
    sub_237EF8260();
    sub_237EF6E50();
    return sub_237EF7090();
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237EF8260();
    sub_237EF6E40();
    return sub_237EF7090();
  }

  type metadata accessor for SerializationError();
  sub_237CA2D6C();
  OUTLINED_FUNCTION_6_46();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_7_47();
  swift_getMetatypeMetadata();
  v2 = sub_237EFA220();
  MEMORY[0x2383E0710](v2);

  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_3_65();
  return swift_willThrow();
}

uint64_t sub_237DA0AC0()
{
  v0 = OUTLINED_FUNCTION_8_52();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCastMetatype())
  {
    sub_237EF8260();
    sub_237EF6DB0();
    v4 = MEMORY[0x277D25130];
LABEL_5:
    (*(v1 + 104))(v3, *v4, v0);
    return sub_237EF7090();
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237EF8260();
    sub_237EF6D00();
    v4 = MEMORY[0x277D25118];
    goto LABEL_5;
  }

  type metadata accessor for SerializationError();
  sub_237CA2D6C();
  OUTLINED_FUNCTION_6_46();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_7_47();
  swift_getMetatypeMetadata();
  v6 = sub_237EFA220();
  MEMORY[0x2383E0710](v6);

  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_3_65();
  return swift_willThrow();
}

uint64_t sub_237DA0C74@<X0>(void *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = swift_dynamicCastMetatype();
  if (v2)
  {
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_0_61();
    sub_237C9339C();
    *a1 = v3;
    v4 = *MEMORY[0x277D251E8];
    sub_237EF7210();
    OUTLINED_FUNCTION_5_58();
    return (*(v5 + 104))(a1, v4);
  }

  else
  {
    v7 = swift_dynamicCastMetatype();
    if (v7)
    {
      MEMORY[0x28223BE20](v7);
      OUTLINED_FUNCTION_0_61();
      sub_237C9339C();
      *a1 = v8;
      v9 = *MEMORY[0x277D251E0];
      sub_237EF7210();
      OUTLINED_FUNCTION_5_58();
      return (*(v10 + 104))(a1, v9);
    }

    else
    {
      type metadata accessor for SerializationError();
      sub_237CA2D6C();
      swift_allocError();
      v12 = v11;
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000032, 0x8000000237EFF340);
      swift_getMetatypeMetadata();
      v13 = sub_237EFA220();
      MEMORY[0x2383E0710](v13);

      MEMORY[0x2383E0710](46, 0xE100000000000000);
      *v12 = 0;
      v12[1] = 0xE000000000000000;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }
}

uint64_t sub_237DA0F18(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, AssociatedTypeWitness, v3);
  return swift_dynamicCast();
}

uint64_t sub_237DA1020(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, AssociatedTypeWitness, v3);
  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_1_71()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_2_66()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0xE000000000000000;

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_3_65()
{
  v3 = *(v1 - 72);
  *v0 = *(v1 - 80);
  v0[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_6_46()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_7_47()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_8_52()
{

  return sub_237EF6E60();
}

void __swiftcall FullyConnectedNetworkConfiguration.init()(CreateMLComponents::FullyConnectedNetworkConfiguration *__return_ptr retstr)
{
  retstr->hiddenUnitCounts._rawValue = &unk_284ACE538;
  retstr->learningRate = 0.001;
  retstr->maximumIterations = 1000;
  retstr->dropoutProbability = 0.2;
  retstr->batchSize = 16;
  retstr->earlyStoppingTolerance = 0.01;
  *&retstr->earlyStopIterationCount = xmmword_237F11780;
}

uint64_t FullyConnectedNetworkConfiguration.hiddenUnitCounts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL static FullyConnectedNetworkConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v14 = *(a2 + 56);
  v16 = sub_237C60C7C(*a1, *a2);
  result = 0;
  if ((v16 & 1) != 0 && v2 == v9 && v3 == v10 && v4 == v11 && v5 == v12 && v6 == v13 && v8 == v15)
  {
    return v7 == v14;
  }

  return result;
}

uint64_t sub_237DA1530(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000237EFF3C0 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
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
        v8 = a1 == 0xD000000000000012 && 0x8000000237EFB100 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x8000000237EFDEA0 == a2;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000237EFF400 == a2;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
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

unint64_t sub_237DA17BC(char a1)
{
  result = 0x676E696E7261656CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7A69536863746162;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x65536D6F646E6172;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_237DA18DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DA1530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DA1904(uint64_t a1)
{
  v2 = sub_237DA1C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DA1940(uint64_t a1)
{
  v2 = sub_237DA1C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullyConnectedNetworkConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2F28);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[2];
  v14[2] = v1[4];
  v14[3] = v10;
  v11 = v1[6];
  v14[0] = v1[7];
  v14[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_237DA1C40();
  sub_237EF8260();
  sub_237EFA1B0();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
  sub_237DA21D0(&qword_280C8CD30);
  OUTLINED_FUNCTION_24_5();
  sub_237EF9A70();
  if (v12)
  {
  }

  else
  {

    LOBYTE(v16) = 1;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A40();
    OUTLINED_FUNCTION_5_59(2);
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
    LOBYTE(v16) = 3;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A40();
    OUTLINED_FUNCTION_5_59(4);
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
    LOBYTE(v16) = 5;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A30();
    OUTLINED_FUNCTION_5_59(6);
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
    OUTLINED_FUNCTION_5_59(7);
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_237DA1C40()
{
  result = qword_27DEB2F30;
  if (!qword_27DEB2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2F30);
  }

  return result;
}

uint64_t FullyConnectedNetworkConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  sub_237D34A74(a1, *v1);
  sub_237EFA150();
  MEMORY[0x2383E2210](v2);
  sub_237EFA150();
  MEMORY[0x2383E2210](v3);
  v7 = 0.0;
  if (v4 != 0.0)
  {
    v7 = v4;
  }

  MEMORY[0x2383E2240](*&v7);
  MEMORY[0x2383E2210](v5);
  return MEMORY[0x2383E2210](v6);
}

uint64_t FullyConnectedNetworkConfiguration.hashValue.getter()
{
  sub_237EFA120();
  FullyConnectedNetworkConfiguration.hash(into:)(v1);
  return sub_237EFA170();
}

uint64_t FullyConnectedNetworkConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2F38);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DA1C40();
  sub_237EFA190();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33[0] = &unk_284ACD9B0;
    OUTLINED_FUNCTION_3_66();
    v34 = 10;
    v35 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    LOBYTE(v28) = 0;
    sub_237DA21D0(&qword_280C8CD28);
    sub_237EF9970();
    v27 = v33[0];
    OUTLINED_FUNCTION_0_62(1);
    sub_237EF9940();
    v13 = v12;
    OUTLINED_FUNCTION_0_62(2);
    v14 = sub_237EF9950();
    OUTLINED_FUNCTION_0_62(3);
    sub_237EF9940();
    v16 = v15;
    OUTLINED_FUNCTION_0_62(4);
    v17 = sub_237EF9950();
    OUTLINED_FUNCTION_0_62(5);
    sub_237EF9930();
    v19 = v18;
    v26 = a2;
    OUTLINED_FUNCTION_0_62(6);
    v20 = sub_237EF9950();
    v32 = 7;
    v21 = sub_237EF9950();
    (*(v7 + 8))(v10, v5);
    v22 = v26;
    v23 = v27;
    *&v28 = v27;
    DWORD2(v28) = v13;
    *&v29 = v14;
    DWORD2(v29) = v16;
    *&v30 = v17;
    *(&v30 + 1) = v19;
    *&v31 = v20;
    *(&v31 + 1) = v21;
    v24 = v29;
    *v26 = v28;
    v22[1] = v24;
    v25 = v31;
    v22[2] = v30;
    v22[3] = v25;
    sub_237C8F200(&v28, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33[0] = v23;
    OUTLINED_FUNCTION_3_66();
    v34 = v20;
    v35 = v21;
  }

  return sub_237D78264(v33);
}

uint64_t sub_237DA2160()
{
  sub_237EFA120();
  FullyConnectedNetworkConfiguration.hash(into:)(v1);
  return sub_237EFA170();
}

uint64_t sub_237DA21D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD350);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237DA2240()
{
  result = qword_27DEB2F40;
  if (!qword_27DEB2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2F40);
  }

  return result;
}

uint64_t sub_237DA2294(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_237DA22D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for FullyConnectedNetworkConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237DA2414()
{
  result = qword_27DEB2F48;
  if (!qword_27DEB2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2F48);
  }

  return result;
}

unint64_t sub_237DA246C()
{
  result = qword_27DEB2F50;
  if (!qword_27DEB2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2F50);
  }

  return result;
}

unint64_t sub_237DA24C4()
{
  result = qword_27DEB2F58;
  if (!qword_27DEB2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2F58);
  }

  return result;
}

void OUTLINED_FUNCTION_3_66()
{
  *(v2 - 160) = v3;
  *(v2 - 152) = v0;
  *(v2 - 144) = v4;
  *(v2 - 136) = v1;
  *(v2 - 128) = v5;
}

uint64_t sub_237DA2564()
{
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  return 0x207865646E49;
}

uint64_t sub_237DA2648()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

void sub_237DA2678(uint64_t a1@<X8>)
{
  sub_237DA25F0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_237DA26B8@<X0>(uint64_t a1@<X8>)
{
  result = sub_237DA25FC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_237DA26E8(uint64_t a1)
{
  v2 = sub_237CBA80C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DA2724(uint64_t a1)
{
  v2 = sub_237CBA80C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DA2760()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v1 setFormatOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEB2F60);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_237DA27D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_237DA2834()
{
  type metadata accessor for BlobJSONDateFormatter();
  v0 = swift_allocObject();
  result = sub_237DA2760();
  qword_27DEE2438 = v0;
  return result;
}

uint64_t sub_237DA2870(void *a1)
{
  sub_237CBA478(a1, v12);
  sub_237C75918(0, &qword_280C8CD00);
  v2 = OUTLINED_FUNCTION_12_12();
  if (v2)
  {

    return 0x76206C6C756E2061;
  }

  else
  {
    OUTLINED_FUNCTION_1_73(v2, v3);
    sub_237C75918(0, &qword_280C8CCF8);
    v5 = OUTLINED_FUNCTION_12_12();
    if (v5)
    {

      return 0x7265626D756E2061;
    }

    else
    {
      OUTLINED_FUNCTION_1_73(v5, v6);
      v7 = OUTLINED_FUNCTION_12_12();
      if (v7)
      {

        return 0x676E697274732061;
      }

      else
      {
        OUTLINED_FUNCTION_1_73(v7, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD8);
        v9 = OUTLINED_FUNCTION_12_12();
        if (v9)
        {

          return 0x7961727261206E61;
        }

        else
        {
          OUTLINED_FUNCTION_1_73(v9, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD0);
          if (OUTLINED_FUNCTION_12_12())
          {

            return 0x6F69746369642061;
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            swift_getDynamicType();
            return sub_237EFA220();
          }
        }
      }
    }
  }
}

unint64_t sub_237DA2A44()
{
  result = qword_280C8CE08;
  if (!qword_280C8CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8CE08);
  }

  return result;
}

unint64_t sub_237DA2A9C()
{
  result = qword_280C8CE10[0];
  if (!qword_280C8CE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8CE10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_73(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_237CBA478(v2, va);
}

char *sub_237DA2B08(char *a1)
{
  ObjectType = swift_getObjectType();
  sub_237EF8FC0();
  OUTLINED_FUNCTION_1();
  v36 = v4;
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_237EF8FA0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v9 = sub_237EF80D0();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_5();
  v35 = *a1;
  v33 = a1[1];
  v32 = a1[2];
  v10 = *(a1 + 1);
  *&v1[OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_task] = 0;
  v34 = OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_queue;
  sub_237C75918(0, &qword_27DEB3040);
  sub_237EF80C0();
  *v40 = MEMORY[0x277D84F90];
  sub_237DA6BE4(&qword_27DEB3048, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3050);
  OUTLINED_FUNCTION_0_14();
  sub_237C96710(v11, &qword_27DEB3050);
  sub_237EF9270();
  (*(v36 + 104))(v7, *MEMORY[0x277D85260], v37);
  *&v1[v34] = sub_237EF8FE0();
  v12 = &v1[OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_configuration];
  *v12 = v35;
  v12[1] = v33;
  v12[2] = v32;
  *(v12 + 1) = v10;
  v13 = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
  *&v1[OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_captureSession] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v41.receiver = v1;
  v41.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v41, sel_init);
  if (qword_27DEAD0C0 != -1)
  {
    OUTLINED_FUNCTION_1_74();
    swift_once();
  }

  v19 = sub_237EF7DB0();
  __swift_project_value_buffer(v19, qword_27DEE2440);
  v20 = sub_237EF7D90();
  v21 = sub_237EF8F70();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_30_21();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_237C51000, v20, v21, "Initializing video camera sequence", v22, 2u);
    OUTLINED_FUNCTION_0_43();
    MEMORY[0x2383E2DF0]();
  }

  v23 = OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_captureSession;
  [*&v18[OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_captureSession] beginConfiguration];
  OUTLINED_FUNCTION_22_27();
  v25 = v24;
  sub_237DD64E8(v40);
  if (v39)
  {
  }

  else
  {

    OUTLINED_FUNCTION_22_27();
    v26 = *&v18[OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_queue];
    v28 = v27;
    v29 = v18;
    v30 = v26;
    sub_237DD660C(v40, v29, v30);

    [*&v18[v23] commitConfiguration];
  }

  return v18;
}

id sub_237DA2F80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27DEAD0C0 != -1)
  {
    OUTLINED_FUNCTION_1_74();
    swift_once();
  }

  v3 = sub_237EF7DB0();
  __swift_project_value_buffer(v3, qword_27DEE2440);
  v4 = sub_237EF7D90();
  v5 = sub_237EF8F70();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_30_21();
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_237C51000, v4, v5, "Destroying video camera sequence", v6, 2u);
    OUTLINED_FUNCTION_0_43();
    MEMORY[0x2383E2DF0]();
  }

  if (*&v1[OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_task])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    sub_237EF8B70();
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_237DA3188()
{
  OUTLINED_FUNCTION_37_0();
  sub_237EF80B0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_21();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v3 = *&v0[OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_captureSession];
  OUTLINED_FUNCTION_31_14();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  OUTLINED_FUNCTION_3_67(v4);
  OUTLINED_FUNCTION_4_62(COERCE_DOUBLE(1107296256));
  v16[2] = v5;
  v16[3] = &block_descriptor_35;
  v6 = _Block_copy(v16);
  v7 = v3;
  v8 = v0;
  sub_237EF80C0();
  OUTLINED_FUNCTION_5_60();
  sub_237DA6BE4(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3078);
  OUTLINED_FUNCTION_0_14();
  sub_237C96710(v11, &qword_27DEB3078);
  OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_17_33();
  _Block_release(v6);
  v12 = OUTLINED_FUNCTION_21_28();
  v13(v12);
  v14 = OUTLINED_FUNCTION_20_28();
  v15(v14);

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DA3394(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (qword_27DEAD0C0 != -1)
  {
    swift_once();
  }

  v7 = sub_237EF7DB0();
  __swift_project_value_buffer(v7, qword_27DEE2440);
  v8 = sub_237EF7D90();
  v9 = sub_237EF8F70();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_237C51000, v8, v9, "Starting video capture session", v10, 2u);
    MEMORY[0x2383E2DF0](v10, -1, -1);
  }

  [a1 startRunning];
  v11 = OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_task;
  if (*(a2 + OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_task))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    sub_237EF8B70();
  }

  v12 = sub_237EF8B60();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = v13;
  v15 = a1;
  *(a2 + v11) = sub_237DA3DD4(0, 0, v6, &unk_237F14090, v14);
}

uint64_t sub_237DA35CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB30A0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB30A8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB30B0);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DA3768, 0, 0);
}

uint64_t sub_237DA3768()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_getKeyPath();
  sub_237EF5DD0();

  v4 = sub_237C96710(&qword_27DEB30B8, &qword_27DEB30A8);
  MEMORY[0x2383E0180](v3, v4);
  (*(v2 + 8))(v1, v3);
  sub_237EF8090();
  v5 = OUTLINED_FUNCTION_13_6();
  v6(v5);
  swift_beginAccess();
  OUTLINED_FUNCTION_16_34(qword_27DEB30C0, &qword_27DEB30B0);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[17] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_38(v7);

  return MEMORY[0x282200308](v9, v10, v11);
}

uint64_t sub_237DA38F0()
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

uint64_t sub_237DA3A04()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 153);
  if (v1 == 2 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    goto LABEL_6;
  }

  v3 = Strong;
  if (sub_237EF8B80())
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

LABEL_6:

    OUTLINED_FUNCTION_3_0();

    return v4();
  }

  if ((v1 & 1) == 0)
  {
    sub_237DA3BD8();
  }

  OUTLINED_FUNCTION_16_34(qword_27DEB30C0, &qword_27DEB30B0);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 136) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_9_38();

  return MEMORY[0x282200308](v8, v9, v10);
}

uint64_t sub_237DA3B50()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 40) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_237DA3BD8()
{
  OUTLINED_FUNCTION_37_0();
  sub_237EF80B0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_21();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_10();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  OUTLINED_FUNCTION_3_67(v3);
  OUTLINED_FUNCTION_4_62(COERCE_DOUBLE(1107296256));
  v14[2] = v4;
  v14[3] = &block_descriptor_49;
  v5 = _Block_copy(v14);
  v6 = v0;
  sub_237EF80C0();
  OUTLINED_FUNCTION_5_60();
  sub_237DA6BE4(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3078);
  OUTLINED_FUNCTION_0_14();
  sub_237C96710(v9, &qword_27DEB3078);
  OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_17_33();
  _Block_release(v5);
  v10 = OUTLINED_FUNCTION_21_28();
  v11(v10);
  v12 = OUTLINED_FUNCTION_20_28();
  v13(v12);

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DA3DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_237DA66E4(a3, v21 - v9);
  v11 = sub_237EF8B60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_237DA6550(v10);
  }

  else
  {
    sub_237EF8B50();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_237EF8AD0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_237EF85E0() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_237DA6550(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_237DA6550(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_237DA4024(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_237DA4068()
{
  OUTLINED_FUNCTION_37_0();
  sub_237EF80B0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_21();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v3 = *(v0 + OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_captureSession);
  OUTLINED_FUNCTION_4_10();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  OUTLINED_FUNCTION_3_67(v4);
  OUTLINED_FUNCTION_4_62(COERCE_DOUBLE(1107296256));
  v15[2] = v5;
  v15[3] = &block_descriptor_29;
  v6 = _Block_copy(v15);
  v7 = v3;
  sub_237EF80C0();
  OUTLINED_FUNCTION_5_60();
  sub_237DA6BE4(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3078);
  OUTLINED_FUNCTION_0_14();
  sub_237C96710(v10, &qword_27DEB3078);
  OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_17_33();
  _Block_release(v6);
  v11 = OUTLINED_FUNCTION_21_28();
  v12(v11);
  v13 = OUTLINED_FUNCTION_20_28();
  v14(v13);

  OUTLINED_FUNCTION_38_0();
}

id sub_237DA4270(void *a1)
{
  if (qword_27DEAD0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_237EF7DB0();
  __swift_project_value_buffer(v2, qword_27DEE2440);
  v3 = sub_237EF7D90();
  v4 = sub_237EF8F70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_237C51000, v3, v4, "Stopping video capture session", v5, 2u);
    MEMORY[0x2383E2DF0](v5, -1, -1);
  }

  return [a1 stopRunning];
}

uint64_t sub_237DA4368(uint64_t a1)
{
  v2 = _s8ObserverC5StateOMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_state;
  swift_beginAccess();
  sub_237DA62BC(a1 + v12, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_237DA6320(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (qword_27DEAD0C0 != -1)
  {
    swift_once();
  }

  v14 = sub_237EF7DB0();
  __swift_project_value_buffer(v14, qword_27DEE2440);
  v15 = sub_237EF7D90();
  v16 = sub_237EF8F70();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_237C51000, v15, v16, "Capture session stopped", v17, 2u);
    MEMORY[0x2383E2DF0](v17, -1, -1);
  }

  type metadata accessor for VideoReaderError();
  sub_237DA6BE4(qword_27DEAFA98, type metadata accessor for VideoReaderError);
  v18 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v19[0] = v18;
  sub_237EF8AE0();
  (*(v9 + 8))(v11, v8);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  swift_beginAccess();
  sub_237DA63B4(v4, a1 + v12);
  return swift_endAccess();
}

uint64_t sub_237DA4698()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = sub_237DA4778;

  return MEMORY[0x282200740](v0 + 2, &type metadata for SendablePixelBuffer, &type metadata for SendablePixelBuffer, 0, 0, &unk_237F14040, v2, &type metadata for SendablePixelBuffer);
}

uint64_t sub_237DA4778()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DA4898()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DA48F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DA4994, 0, 0);
}

uint64_t sub_237DA4994()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_237EF8B60();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_31_14();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_237DA51E4(v1, &unk_237F14058, v7);
  sub_237DA6550(v1);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v12 = v2;
  sub_237DA51E4(v1, &unk_237F14068, v11);
  sub_237DA6550(v1);
  v13 = swift_task_alloc();
  v0[7] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3068);
  *v13 = v0;
  v13[1] = sub_237DA4B0C;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822004D0]();
}

uint64_t sub_237DA4B0C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DA4C08()
{
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_2_0();
    **(v0 + 24) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    sub_237EF8BB0();

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237DA4CB4()
{
  OUTLINED_FUNCTION_39_0();
  if (qword_27DEAD0C0 != -1)
  {
    OUTLINED_FUNCTION_1_74();
    swift_once();
  }

  v0 = sub_237EF7DB0();
  __swift_project_value_buffer(v0, qword_27DEE2440);
  v1 = sub_237EF7D90();
  v2 = sub_237EF8F80();
  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_30_21();
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_237C51000, v1, v2, "Frame capture timed out", v3, 2u);
    OUTLINED_FUNCTION_0_43();
    MEMORY[0x2383E2DF0]();
  }

  swift_willThrow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  sub_237EF8BB0();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237DA4E04()
{
  v1 = sub_237EF95E0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DA4EC0, 0, 0);
}

uint64_t sub_237DA4EC0()
{
  OUTLINED_FUNCTION_2_0();
  sub_237EFA050();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_237DA4F84;
  OUTLINED_FUNCTION_23();

  return sub_237DA6754(v2, v3, v4, 0, 1);
}

uint64_t sub_237DA4F84()
{
  OUTLINED_FUNCTION_39_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_13_6();
  v5(v4);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237DA5104()
{
  OUTLINED_FUNCTION_39_0();
  type metadata accessor for VideoReaderError();
  sub_237DA6BE4(qword_27DEAFA98, type metadata accessor for VideoReaderError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DA51E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_237DA66E4(a1, v17 - v8);
  v10 = sub_237EF8B60();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_237DA6550(v9);
  }

  else
  {
    sub_237EF8B50();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_237EF8AD0();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_237DA538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_237DA53AC, 0, 0);
}

uint64_t sub_237DA53AC()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = sub_237DA5498;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0](v5, v6, v7, v8, v9, v10, v2, v11);
}

uint64_t sub_237DA5498()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 48) = v0;

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

uint64_t sub_237DA55B8(uint64_t a1, char *a2)
{
  v4 = sub_237EF80B0();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_237EF80D0();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v20[1] = *&a2[OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_queue];
  (*(v11 + 16))(v20 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_237DA665C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237DA4024;
  aBlock[3] = &block_descriptor_2;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  sub_237EF80C0();
  v24 = MEMORY[0x277D84F90];
  sub_237DA6BE4(&qword_27DEB3070, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3078);
  sub_237C96710(&unk_27DEB3080, &qword_27DEB3078);
  sub_237EF9270();
  MEMORY[0x2383E10B0](0, v9, v6, v17);
  _Block_release(v17);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
}

uint64_t sub_237DA5960(uint64_t a1, uint64_t a2)
{
  v4 = _s8ObserverC5StateOMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_state;
  swift_beginAccess();
  sub_237DA62BC(a1 + v10, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11);
  sub_237DA6320(v9);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v11 - 8) + 16))(v6, a2, v11);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
    swift_beginAccess();
    sub_237DA63B4(v6, a1 + v10);
    return swift_endAccess();
  }

  else
  {
    result = sub_237EF9740();
    __break(1u);
  }

  return result;
}

void sub_237DA5B30()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v45 = v4;
  v5 = _s8ObserverC5StateOMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = sub_237EF80E0();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = *(v1 + OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_queue);
  *(v21 - v20) = v23;
  (*(v18 + 104))(v21 - v20, *MEMORY[0x277D85200], v16);
  v24 = v23;
  LOBYTE(v23) = sub_237EF80F0();
  (*(v18 + 8))(v22, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_state;
  swift_beginAccess();
  sub_237DA62BC(v1 + v25, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_237DA6320(v9);
    if (qword_27DEAD0C0 == -1)
    {
LABEL_4:
      v26 = sub_237EF7DB0();
      __swift_project_value_buffer(v26, qword_27DEE2440);
      v27 = sub_237EF7D90();
      v28 = sub_237EF8F80();
      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_30_21();
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_237C51000, v27, v28, "Discarding frame", v29, 2u);
        OUTLINED_FUNCTION_0_43();
        MEMORY[0x2383E2DF0]();
      }

      goto LABEL_16;
    }

LABEL_18:
    OUTLINED_FUNCTION_1_74();
    swift_once();
    goto LABEL_4;
  }

  v30 = v12;
  (*(v12 + 32))(v15, v9, v10);
  [v3 setVideoRotationAngle_];
  v31 = [v3 inputPorts];
  sub_237C75918(0, &qword_27DEB3038);
  v32 = sub_237EF8910();

  sub_237C85538(0, (v32 & 0xC000000000000001) == 0, v32);
  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x2383E1490](0, v32);
  }

  else
  {
    v33 = *(v32 + 32);
  }

  v34 = v33;

  if ([v34 sourceDevicePosition] == 2)
  {
    v35 = [v34 sourceDeviceType];
    if (v35)
    {
      v36 = v35;
      sub_237EF8590();
      v37 = sub_237EF86A0();

      v30 = v12;

      if (v37)
      {
        [v3 setAutomaticallyAdjustsVideoMirroring_];
        [v3 setVideoMirrored_];
      }
    }
  }

  v38 = CMSampleBufferGetImageBuffer(v45);
  if (v38)
  {
    v46 = v38;
    v39 = v38;
    sub_237EF8AF0();

    (*(v30 + 8))(v15, v10);
    v40 = v44;
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v10);
    swift_beginAccess();
    sub_237DA63B4(v40, v1 + v25);
    swift_endAccess();
  }

  else
  {
    (*(v30 + 8))(v15, v10);
  }

LABEL_16:
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DA60E4()
{
  result = _s8ObserverC5StateOMa(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_237DA61E0()
{
  sub_237DA6238();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_237DA6238()
{
  if (!qword_27DEB3028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB3030);
    v0 = sub_237EF8B00();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEB3028);
    }
  }
}

uint64_t sub_237DA62BC(uint64_t a1, uint64_t a2)
{
  v4 = _s8ObserverC5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237DA6320(uint64_t a1)
{
  v2 = _s8ObserverC5StateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_237DA63B4(uint64_t a1, uint64_t a2)
{
  v4 = _s8ObserverC5StateOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237DA6418()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_1(v6);
  *v7 = v8;
  v7[1] = sub_237C6B728;

  return sub_237DA48F4(v4, v2, v5);
}

uint64_t sub_237DA64BC()
{
  OUTLINED_FUNCTION_12_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_37(v1);

  return sub_237DA4E04();
}

uint64_t sub_237DA6550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237DA65B8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_37(v4);

  return sub_237DA538C(v6, v7, v1, v2);
}

uint64_t sub_237DA665C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_237DA5960(v2, v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237DA66E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237DA6754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_237EF95D0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_237DA6854, 0, 0);
}

uint64_t sub_237DA6854()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_237EF95E0();
  v5 = sub_237DA6BE4(&qword_27DEB3090, MEMORY[0x277D85928]);
  OUTLINED_FUNCTION_13_6();
  sub_237EFA030();
  sub_237DA6BE4(&qword_27DEB3098, MEMORY[0x277D858F8]);
  sub_237EF9600();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_237DA69E0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_237DA69E0()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
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

uint64_t sub_237DA6B80()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DA6BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237DA6C3C()
{
  OUTLINED_FUNCTION_39_0();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_14_37(v5);

  return sub_237DA35CC(v7, v8, v1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_3_67(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_53()
{

  return sub_237EF9270();
}

uint64_t OUTLINED_FUNCTION_16_34(unint64_t *a1, uint64_t *a2)
{

  return sub_237C96710(a1, a2);
}

void OUTLINED_FUNCTION_17_33()
{

  JUMPOUT(0x2383E10B0);
}

void OUTLINED_FUNCTION_22_27()
{
  *(v3 - 112) = v0;
  *(v3 - 111) = v1;
  *(v3 - 110) = v2;
  *(v3 - 104) = v4;
}

uint64_t OUTLINED_FUNCTION_25_21()
{

  return sub_237EF80D0();
}

uint64_t PreprocessingSupervisedTemporalEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 32))(a3);
  v7 = type metadata accessor for PreprocessingSupervisedTemporalEstimator();
  return (*(*(a2 - 8) + 32))(a3 + *(v7 + 52), a1, a2);
}

uint64_t PreprocessingSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v9[14] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  v9[15] = OUTLINED_FUNCTION_27_0();
  v9[16] = *(a4 + 32);
  v9[17] = *(a4 + 16);
  v9[18] = swift_getAssociatedTypeWitness();
  v9[19] = type metadata accessor for PreprocessedFeatureSequence();
  v9[20] = type metadata accessor for AnnotatedFeature();
  v9[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[22] = v11;
  v9[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[24] = v12;
  v9[25] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[26] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v9[27] = v14;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1_1();
  v9[31] = v15;
  v9[32] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v9[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[34] = v16;
  v9[35] = OUTLINED_FUNCTION_27_0();
  v17 = swift_getAssociatedTypeWitness();
  v9[36] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v9[37] = v18;
  v9[38] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_237DA73F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v16 = v14[34];
  v15 = v14[35];
  v17 = v14[9];
  v18 = v14[5];
  v14[2] = sub_237EF8110();
  (*(v16 + 16))(v15, v18, v17);
  sub_237EF86F0();
  v19 = v14[33];
  v20 = v14[30];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = v14[38];
    OUTLINED_FUNCTION_4_14();
    v49 = v14[15];
    (*(v22 + 8))(v21);
    v47 = v14[2];

    OUTLINED_FUNCTION_18_3();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, v47, v49, a12, a13, a14);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_30_5();
    v32 = OUTLINED_FUNCTION_29_4();
    v33(v32);
    OUTLINED_FUNCTION_30_22();
    v51 = v50 + 40;
    OUTLINED_FUNCTION_15_0();
    v48 = v34 + *v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[39] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_5_61(v35);
    OUTLINED_FUNCTION_18_3();

    return v45(v37, v38, v39, v40, v41, v42, v43, v44, a9, v48, v51, a12, a13, a14);
  }
}

uint64_t sub_237DA765C()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[40] = v0;

  if (v0)
  {
    v8 = v3[24];
    v7 = v3[25];
    v9 = v3[17];
    (*(v3[22] + 8))(v3[23], v3[10]);
    (*(v8 + 8))(v7, v9);

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v15 = v3[28];
    v14 = v3[29];
    v16 = v3[26];
    v17 = v3[27];
    v19 = v3[24];
    v18 = v3[25];
    v20 = v3[17];
    (*(v3[22] + 8))(v3[23], v3[10]);
    (*(v19 + 8))(v18, v20);
    (*(v17 + 16))(v15, v14, v16);
    v21 = swift_task_alloc();
    v3[41] = v21;
    swift_getAssociatedConformanceWitness();
    *v21 = v5;
    v21[1] = sub_237DA788C;
    OUTLINED_FUNCTION_45();

    return PreprocessedFeatureSequence.init<A>(_:)(v22, v23, v24, v25, v26);
  }
}

uint64_t sub_237DA788C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DA798C()
{
  v0[4] = v0[3];
  v1 = v0[31];
  v19 = v0[32];
  v24 = v0[29];
  v2 = v0[27];
  v20 = v0[30];
  v21 = v0[26];
  v3 = v0[21];
  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  AnnotatedFeature.annotation.getter(v20, v5);
  AnnotatedFeature.init(feature:annotation:)((v0 + 4), v5, v4, v6, v3);
  sub_237EF8A60();
  sub_237EF8260();
  sub_237EF8A20();

  (*(v2 + 8))(v24, v21);
  (*(v1 + 8))(v19, v20);
  v7 = v0[33];
  v8 = v0[30];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v9 = v0[38];
    OUTLINED_FUNCTION_4_14();
    (*(v10 + 8))(v9);
    v22 = v0[2];

    v11 = v0[1];

    return v11(v22);
  }

  else
  {
    OUTLINED_FUNCTION_30_5();
    v13 = OUTLINED_FUNCTION_29_4();
    v14(v13);
    OUTLINED_FUNCTION_30_22();
    OUTLINED_FUNCTION_15_0();
    v23 = (v15 + *v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[39] = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_5_61();

    return v23(v18);
  }
}

uint64_t PreprocessingSupervisedTemporalEstimator.fitted(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v4;
  v1[6] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[9] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[10] = OUTLINED_FUNCTION_27_0();
  v1[11] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_27_0();
  v1[14] = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[16] = v10;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237DA7DC8()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[7];
  v2 = v0[4];
  PreprocessingSupervisedTemporalEstimator.estimator.getter(v1, v0[13]);
  v0[2] = v2;
  OUTLINED_FUNCTION_15_0();
  v5 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  v0[20] = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PreprocessedFeatureSequence();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedFeature();
  sub_237EF8A60();
  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_9_39();
  *v4 = v0;
  v4[1] = sub_237DA7FA4;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DA7FA4()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t PreprocessingSupervisedTemporalEstimator.fitted(toPreprocessed:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v4;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v8;
  v1[11] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[12] = OUTLINED_FUNCTION_27_0();
  v1[13] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_27_0();
  v1[16] = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[17] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[18] = v11;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_237DA8330()
{
  OUTLINED_FUNCTION_26_2();
  v1 = *(v0 + 72);
  v4 = *(v0 + 40);
  PreprocessingSupervisedTemporalEstimator.estimator.getter(v1, *(v0 + 120));
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_15_0();
  v5 = v2 + *v2;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *(v0 + 176) = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PreprocessedFeatureSequence();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedFeature();
  sub_237EF8A60();
  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_9_39();
  *v3 = v0;
  v3[1] = sub_237DA8524;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DA8524()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t PreprocessingSupervisedTemporalEstimator.fitted<A, B>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  v6[1] = sub_237DA883C;
  OUTLINED_FUNCTION_45();

  return PreprocessingSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_237DA883C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

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

uint64_t sub_237DA8958()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 72);
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 80) = v4;
    *v4 = v5;
    v4[1] = sub_237CA8F6C;

    return PreprocessingSupervisedTemporalEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t PreprocessingSupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v21[10] = a20;
  v21[11] = v20;
  v21[8] = a17;
  v21[9] = a19;
  v21[6] = v22;
  v21[7] = v23;
  v21[4] = v24;
  v21[5] = v25;
  v21[2] = v26;
  v21[3] = v27;
  v28 = swift_task_alloc();
  v21[12] = v28;
  *v28 = v21;
  v28[1] = sub_237DA8B24;
  OUTLINED_FUNCTION_45();

  return PreprocessingSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_237DA8B24()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[13] = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v3[14] = v9;
    *v9 = v5;
    v9[1] = sub_237DA8C9C;
    v10 = v3[10];
    v11 = v3[8];
    v12 = v3[9];
    v13 = v3[6];
    v14 = v3[7];
    v15 = v3[4];
    v16 = v3[5];
    v17 = v3[3];

    return PreprocessingSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(v17, v15, v16, v13, v14, v11, v12, v10);
  }
}

uint64_t sub_237DA8C9C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v4;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237DA8D9C()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 128);
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 136) = v4;
    *v4 = v5;
    v4[1] = sub_237DA8E98;

    return PreprocessingSupervisedTemporalEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
  }
}

uint64_t sub_237DA8E98()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DA8F90()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DA8FF8()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DA9054()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingSupervisedTemporalEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTemporalTransformer();
  return (*(v4 + 56))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingSupervisedTemporalEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  result = (*(v11 + 64))(a1, v12, v11, v19);
  if (!v23)
  {
    v25 = v30;
    (*(v28 + 16))(v31, v22, v30);
    (*(v27 + 32))(v17, v21, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v31, v17, v25, AssociatedTypeWitness, v29);
  }

  return result;
}

uint64_t sub_237DA93CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return PreprocessingSupervisedTemporalEstimator.fitted<A, B>(to:eventHandler:)();
}

uint64_t sub_237DA94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v26 = swift_task_alloc();
  *(v20 + 16) = v26;
  *v26 = v20;
  v26[1] = sub_237C6A904;

  return PreprocessingSupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a10, a6, a7, a8, v32, v33, a9, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t Transformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  type metadata accessor for TransformerToTemporalAdaptor();
  OUTLINED_FUNCTION_22_3();
  v23 = MEMORY[0x28223BE20](v22);
  (*(v17 + 16))(v21, v6, a2, v23);
  TransformerToTemporalAdaptor.init(_:)(v21, a2, a4);
  (*(v11 + 16))(v15, a1, a3);
  swift_getWitnessTable();
  return PreprocessingSupervisedTemporalEstimator.init(_:_:)(v15, a3, a5);
}

{
  v6 = v5;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  type metadata accessor for TransformerToTemporalAdaptor();
  OUTLINED_FUNCTION_22_3();
  v23 = MEMORY[0x28223BE20](v22);
  (*(v17 + 16))(v21, v6, a2, v23);
  TransformerToTemporalAdaptor.init(_:)(v21, a2, a4);
  (*(v11 + 16))(v15, a1, a3);
  swift_getWitnessTable();
  return PreprocessingTemporalEstimator.init(_:_:)(v15, a3, a5);
}

uint64_t sub_237DA9B4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237DA9D14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_9_39()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_30_22()
{
  PreprocessingSupervisedTemporalEstimator.preprocessor.getter(v3, v2);

  return AnnotatedFeature.feature.getter(v0, v1);
}

uint64_t sub_237DAA044(uint64_t a1)
{
  swift_beginAccess();
  sub_237EF8260();
  return a1;
}

uint64_t sub_237DAA0A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237DAA0F8()
{
  sub_237EF8260();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3158);
  sub_237DAE428();
  v0 = sub_237EF8760();

  return v0;
}

BOOL sub_237DAA1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EFA1E0();
  sub_237DD7458(a3, &v6);

  v4 = v7 != 0;
  sub_237DAE34C(&v6);
  return v4;
}

uint64_t sub_237DAA264(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EF9D00();
  MEMORY[0x2383E0710](2238496, 0xE300000000000000);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_237EFA1E0();
  MEMORY[0x2383E0710](v2);

  MEMORY[0x2383E0710](10530, 0xE200000000000000);
  return 0;
}

uint64_t sub_237DAA314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_28_19();
  sub_237DD7458(a3, &v26);

  if (v27)
  {
    sub_237C91804(&v26, &v22);
    sub_237C91804(&v22, &v26);
    sub_237DAE308();
    v10 = swift_dynamicCast();
    LOBYTE(v11) = v10;
    if (v10)
    {
    }
  }

  else
  {
    sub_237DAE34C(&v26);
    v28 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    v13[3] = a5;
    v13[4] = a6;
    __swift_allocate_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_22_3();
    v15 = *(v14 + 16);
    v15();
    swift_beginAccess();
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_237EF8260();
    sub_237EF9330();

    v25[0] = 0xD00000000000001DLL;
    v25[1] = 0x8000000237EFF670;
    v23 = a5;
    v24 = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    (v15)(boxed_opaque_existential_1, a1, a5);
    v17 = sub_237DAA264(&v22);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(&v22);
    MEMORY[0x2383E0710](v17, v19);

    v11 = v25;
    OUTLINED_FUNCTION_18_19();
    sub_237EF93D0();
    OUTLINED_FUNCTION_13_29();
    (*(v20 + 104))(v13);
    swift_willThrow();
  }

  return v11 & 1;
}

void sub_237DAA588()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  v4 = OUTLINED_FUNCTION_19_34();
  if (v5)
  {
    OUTLINED_FUNCTION_9_40(v4);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v6 = OUTLINED_FUNCTION_5_62();
    v7(v6);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    v8 = OUTLINED_FUNCTION_21_29();
    v11 = sub_237CB4740(v8, v9, v10);
    if (v0)
    {
      OUTLINED_FUNCTION_20_29();
    }

    else
    {
      if (v11 != 2)
      {
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_39_11();
        __swift_destroy_boxed_opaque_existential_1(v17);
        goto LABEL_8;
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D839B0]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_15_33();
      v15 = OUTLINED_FUNCTION_30_23();
      v16(v15);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
    }

    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_237DAE34C(v4);
    sub_237EF93E0();
    v12 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_33_13(v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_24_22(v13);
    OUTLINED_FUNCTION_6_47();
    v2();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v2();
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_14_38();
    OUTLINED_FUNCTION_7_48();
    (*(v14 + 104))(v1);
    swift_willThrow();
  }

LABEL_8:
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_12_6();
}

void sub_237DAA804()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  v4 = OUTLINED_FUNCTION_19_34();
  if (v5)
  {
    OUTLINED_FUNCTION_9_40(v4);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v6 = OUTLINED_FUNCTION_5_62();
    v7(v6);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    v8 = OUTLINED_FUNCTION_21_29();
    sub_237CB4914(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v0, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
    if (v0)
    {
      OUTLINED_FUNCTION_20_29();
    }

    else
    {
      if ((v16 & 1) == 0)
      {
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_39_11();
        __swift_destroy_boxed_opaque_existential_1(v26);
        goto LABEL_8;
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D83B88]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_15_33();
      v20 = OUTLINED_FUNCTION_30_23();
      v21(v20);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
    }

    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_237DAE34C(v4);
    sub_237EF93E0();
    v17 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_33_13(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_24_22(v18);
    OUTLINED_FUNCTION_6_47();
    v2();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v2();
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_14_38();
    OUTLINED_FUNCTION_7_48();
    (*(v19 + 104))(v1);
    swift_willThrow();
  }

LABEL_8:
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DAAA78()
{
  OUTLINED_FUNCTION_7_38();
  swift_beginAccess();
  sub_237D6D14C(v1);
  __swift_destroy_boxed_opaque_existential_1(v1);
  return swift_endAccess();
}

void sub_237DAAFA8()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  v4 = OUTLINED_FUNCTION_19_34();
  if (v5)
  {
    OUTLINED_FUNCTION_9_40(v4);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v6 = OUTLINED_FUNCTION_5_62();
    v7(v6);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    v8 = OUTLINED_FUNCTION_21_29();
    v16 = sub_237CB51D8(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v0, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
    if (v0)
    {
      OUTLINED_FUNCTION_20_29();
LABEL_8:
      OUTLINED_FUNCTION_39_11();
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_9;
    }

    if ((v16 & 0x100000000) != 0)
    {
      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D849A8]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_38_9();
      OUTLINED_FUNCTION_15_33();
      v20 = OUTLINED_FUNCTION_30_23();
      v21(v20);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_237DAE34C(v4);
    sub_237EF93E0();
    v17 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_33_13(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_24_22(v18);
    OUTLINED_FUNCTION_6_47();
    v2();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v2();
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_14_38();
    OUTLINED_FUNCTION_7_48();
    (*(v19 + 104))(v1);
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_12_6();
}

void sub_237DAB218()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  v4 = OUTLINED_FUNCTION_19_34();
  if (v5)
  {
    OUTLINED_FUNCTION_9_40(v4);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v6 = OUTLINED_FUNCTION_5_62();
    v7(v6);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    v8 = OUTLINED_FUNCTION_21_29();
    sub_237CB5570(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v0, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
    if (v0)
    {
      OUTLINED_FUNCTION_20_29();
    }

    else
    {
      if ((v16 & 1) == 0)
      {
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_39_11();
        __swift_destroy_boxed_opaque_existential_1(v26);
        goto LABEL_8;
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D84A28]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_38_9();
      OUTLINED_FUNCTION_15_33();
      v20 = OUTLINED_FUNCTION_30_23();
      v21(v20);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
    }

    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_237DAE34C(v4);
    sub_237EF93E0();
    v17 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_33_13(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_24_22(v18);
    OUTLINED_FUNCTION_6_47();
    v2();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v2();
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_14_38();
    OUTLINED_FUNCTION_7_48();
    (*(v19 + 104))(v1);
    swift_willThrow();
  }

LABEL_8:
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_12_6();
}

void sub_237DAB488()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  v4 = OUTLINED_FUNCTION_19_34();
  if (v5)
  {
    OUTLINED_FUNCTION_9_40(v4);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v6 = OUTLINED_FUNCTION_5_62();
    v7(v6);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    v8 = OUTLINED_FUNCTION_21_29();
    sub_237CB584C(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v0, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
    if (v0)
    {
      OUTLINED_FUNCTION_20_29();
    }

    else
    {
      if ((v16 & 1) == 0)
      {
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_39_11();
        __swift_destroy_boxed_opaque_existential_1(v26);
        goto LABEL_8;
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D83E88]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_15_33();
      v20 = OUTLINED_FUNCTION_30_23();
      v21(v20);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
    }

    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_237DAE34C(v4);
    sub_237EF93E0();
    v17 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_33_13(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_24_22(v18);
    OUTLINED_FUNCTION_6_47();
    v2();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v2();
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_14_38();
    OUTLINED_FUNCTION_7_48();
    (*(v19 + 104))(v1);
    swift_willThrow();
  }

LABEL_8:
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_12_6();
}

void sub_237DABBD4()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  v4 = OUTLINED_FUNCTION_19_34();
  if (v5)
  {
    OUTLINED_FUNCTION_9_40(v4);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v6 = OUTLINED_FUNCTION_5_62();
    v7(v6);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    v8 = OUTLINED_FUNCTION_21_29();
    v16 = sub_237CB62FC(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v0, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
    if (v0)
    {
      OUTLINED_FUNCTION_20_29();
LABEL_8:
      OUTLINED_FUNCTION_39_11();
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_9;
    }

    if ((v16 & 0x100000000) != 0)
    {
      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D84CC0]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_37_11();
      OUTLINED_FUNCTION_15_33();
      v20 = OUTLINED_FUNCTION_30_23();
      v21(v20);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_237DAE34C(v4);
    sub_237EF93E0();
    v17 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_33_13(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_24_22(v18);
    OUTLINED_FUNCTION_6_47();
    v2();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v2();
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_14_38();
    OUTLINED_FUNCTION_7_48();
    (*(v19 + 104))(v1);
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_12_6();
}

void sub_237DABE44()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  v4 = OUTLINED_FUNCTION_19_34();
  if (v5)
  {
    OUTLINED_FUNCTION_9_40(v4);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v6 = OUTLINED_FUNCTION_5_62();
    v7(v6);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    v8 = OUTLINED_FUNCTION_21_29();
    sub_237CB65E4(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v0, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
    if (v0)
    {
      OUTLINED_FUNCTION_20_29();
    }

    else
    {
      if ((v16 & 1) == 0)
      {
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_39_11();
        __swift_destroy_boxed_opaque_existential_1(v26);
        goto LABEL_8;
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D84D38]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_37_11();
      OUTLINED_FUNCTION_15_33();
      v20 = OUTLINED_FUNCTION_30_23();
      v21(v20);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
    }

    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_237DAE34C(v4);
    sub_237EF93E0();
    v17 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_33_13(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_24_22(v18);
    OUTLINED_FUNCTION_6_47();
    v2();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v2();
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_14_38();
    OUTLINED_FUNCTION_7_48();
    (*(v19 + 104))(v1);
    swift_willThrow();
  }

LABEL_8:
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_12_6();
}

void sub_237DAC0B4()
{
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  if (v16)
  {
    OUTLINED_FUNCTION_9_40(&v15);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v2 = OUTLINED_FUNCTION_5_62();
    v3(v2);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    sub_237CB6954(&v14, v4, v5);
    if (v13)
    {
      goto LABEL_8;
    }

    if ((v6 & 0x100000000) != 0)
    {
      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D83A90]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_38_9();
      OUTLINED_FUNCTION_15_33();
      v11 = OUTLINED_FUNCTION_30_23();
      v12(v11);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
LABEL_8:
      OUTLINED_FUNCTION_39_11();
      __swift_destroy_boxed_opaque_existential_1(&v14);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_237DAE34C(&v15);
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_51_7(v9);
    OUTLINED_FUNCTION_6_47();
    v0();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v0();
    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_46_10();
    OUTLINED_FUNCTION_13_29();
    (*(v10 + 104))(v8);
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_32_15();
}

void sub_237DAC35C()
{
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  if (v16)
  {
    OUTLINED_FUNCTION_9_40(&v15);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v2 = OUTLINED_FUNCTION_5_62();
    v3(v2);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    sub_237CB6E10(&v14, v4, v5);
    if (!v13)
    {
      if ((v6 & 1) == 0)
      {
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_39_11();
        __swift_destroy_boxed_opaque_existential_1(&v14);
        goto LABEL_8;
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D839F8]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_37_11();
      OUTLINED_FUNCTION_15_33();
      v11 = OUTLINED_FUNCTION_30_23();
      v12(v11);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
    }

    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_237DAE34C(&v15);
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_51_7(v9);
    OUTLINED_FUNCTION_6_47();
    v0();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v0();
    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_46_10();
    OUTLINED_FUNCTION_13_29();
    (*(v10 + 104))(v8);
    swift_willThrow();
  }

LABEL_8:
  OUTLINED_FUNCTION_32_15();
}

void sub_237DAC604()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_27_21();

  v4 = OUTLINED_FUNCTION_19_34();
  if (v5)
  {
    OUTLINED_FUNCTION_9_40(v4);
    sub_237D86C8C();
    OUTLINED_FUNCTION_11_38();
    v6 = OUTLINED_FUNCTION_5_62();
    v7(v6);
    OUTLINED_FUNCTION_8_54();
    swift_endAccess();
    v8 = OUTLINED_FUNCTION_21_29();
    sub_237CB7150(v8, v9, v10);
    if (v0)
    {
      OUTLINED_FUNCTION_20_29();
    }

    else
    {
      if (v11)
      {
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_39_11();
        __swift_destroy_boxed_opaque_existential_1(v17);
        goto LABEL_6;
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_31_15();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_16_35(MEMORY[0x277D837D0]);
      sub_237EF8260();
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_37_11();
      OUTLINED_FUNCTION_15_33();
      v15 = OUTLINED_FUNCTION_30_23();
      v16(v15);
      swift_willThrow();
      OUTLINED_FUNCTION_10_39();
    }

    OUTLINED_FUNCTION_39_11();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_237DAE34C(v4);
    sub_237EF93E0();
    v12 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_33_13(v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150);
    OUTLINED_FUNCTION_24_22(v13);
    OUTLINED_FUNCTION_6_47();
    v2();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_23_28();
    OUTLINED_FUNCTION_41_9();

    OUTLINED_FUNCTION_2_67("No value associated with key ");
    OUTLINED_FUNCTION_25_22();
    v2();
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_3_68();

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_14_38();
    OUTLINED_FUNCTION_7_48();
    (*(v14 + 104))(v1);
    swift_willThrow();
  }

LABEL_6:
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_12_6();
}

void sub_237DAC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v67 = v23;
  v68 = v21;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v64 = v34;
  v69 = v35;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v62 = v37;
  v63 = v36;
  MEMORY[0x28223BE20](v36);
  v39 = &v61 - v38;
  OUTLINED_FUNCTION_1_1();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_27_15();
  sub_237EFA1E0();
  sub_237DD7458(v29, &v71);

  if (v72)
  {
    v65 = a21;
    v66 = v29;
    OUTLINED_FUNCTION_9_40(&v71);
    sub_237D86C8C();
    v43 = v25;
    v44 = *(*(v31 + 120) + 16);
    sub_237D86D60(v44);
    (*(v41 + 16))(v22, v33, v27);
    v45 = v22;
    v46 = v65;
    sub_237D4FDC0(v44, v45, (v31 + 120), v27, v43);
    swift_endAccess();
    v48 = v67;
    v47 = v68;
    v49 = v69;
    sub_237CB7708(v70, v67, v69, v46, v39);
    if (!v47)
    {
      if (__swift_getEnumTagSinglePayload(v39, 1, v49) == 1)
      {
        (*(v62 + 8))(v39, v63);
        sub_237EF93E0();
        v68 = OUTLINED_FUNCTION_45_0();
        v51 = v50;
        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20) + 48);
        *v51 = v48;
        *&v71 = 0;
        *(&v71 + 1) = 0xE000000000000000;
        sub_237EF8260();
        sub_237EF9330();

        *&v71 = 0x6465746365707845;
        *(&v71 + 1) = 0xE900000000000020;
        v52 = sub_237EFA220();
        MEMORY[0x2383E0710](v52);

        MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237EFF690);
        sub_237EF93D0();
        OUTLINED_FUNCTION_22_3();
        (*(v53 + 104))(v51);
        swift_willThrow();
        OUTLINED_FUNCTION_48_9();
LABEL_8:
        sub_237DAAA78();
        __swift_destroy_boxed_opaque_existential_1(v70);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_22_3();
      (*(v60 + 32))(v64, v39, v49);
    }

    OUTLINED_FUNCTION_48_9();
    goto LABEL_8;
  }

  sub_237DAE34C(&v71);
  v69 = sub_237EF93E0();
  v68 = OUTLINED_FUNCTION_45_0();
  v55 = v54;
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150) + 48);
  v55[3] = v27;
  v55[4] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  v57 = *(v41 + 16);
  v57(boxed_opaque_existential_1, v33, v27);
  OUTLINED_FUNCTION_22_28();
  OUTLINED_FUNCTION_23_28();
  OUTLINED_FUNCTION_41_9();

  v58 = OUTLINED_FUNCTION_2_67("No value associated with key ");
  v57(v58, v33, v27);
  sub_237DAA264(v70);
  OUTLINED_FUNCTION_3_68();

  OUTLINED_FUNCTION_18_19();
  sub_237EF93D0();
  OUTLINED_FUNCTION_7_48();
  (*(v59 + 104))(v55);
  swift_willThrow();
LABEL_9:
  OUTLINED_FUNCTION_12_6();
}

void sub_237DACD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v65 = v21;
  v23 = v22;
  v62 = v24;
  v63 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v59 = v34;
  OUTLINED_FUNCTION_1_1();
  v36 = v35;
  v64 = a21;
  MEMORY[0x28223BE20](v37);
  v39 = v58 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_38();
  swift_beginAccess();

  sub_237D86C8C();
  v40 = *(*(v31 + 120) + 16);
  sub_237D86D60(v40);
  v60 = *(v36 + 16);
  v60(v39, v33, v27);
  sub_237D4FDC0(v40, v39, (v31 + 120), v27, v23);
  swift_endAccess();
  sub_237EFA1E0();
  OUTLINED_FUNCTION_27_21();

  v61 = v29;
  if (!v71)
  {

    sub_237DAE34C(&v69);
    v59 = sub_237EF93E0();
    v65 = OUTLINED_FUNCTION_45_0();
    v45 = v44;
    v58[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150) + 48);
    v45[3] = v27;
    v45[4] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    v47 = v60;
    v60(boxed_opaque_existential_1, v33, v27);
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_237EF8260();
    sub_237EF9330();

    *&v69 = 0x6720746F6E6E6143;
    *(&v69 + 1) = 0xEB00000000207465;
    sub_237EF99A0();
    v48 = sub_237EFA220();
    MEMORY[0x2383E0710](v48);

    MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFF650);
    v67 = v27;
    v68 = v23;
    v49 = __swift_allocate_boxed_opaque_existential_1(&v66);
    v47(v49, v33, v27);
    v50 = sub_237DAA264(&v66);
    v52 = v51;
    __swift_destroy_boxed_opaque_existential_1(&v66);
    MEMORY[0x2383E0710](v50, v52);

    sub_237EF93D0();
    OUTLINED_FUNCTION_13_29();
    (*(v53 + 104))(v45);
    swift_willThrow();
LABEL_6:
    sub_237DAAA78();
    goto LABEL_7;
  }

  v60 = v23;
  sub_237C91804(&v69, &v66);
  sub_237CBA478(&v66, &v69);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_237EF93E0();
    v65 = OUTLINED_FUNCTION_45_0();
    v55 = v54;
    OUTLINED_FUNCTION_49_10();

    *&v69 = 0xD000000000000035;
    *(&v69 + 1) = 0x8000000237EFC830;
    v56 = sub_237DA2870(&v66);
    MEMORY[0x2383E0710](v56);

    OUTLINED_FUNCTION_1_71();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v55 = v41;
    sub_237EF8260();
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v57 + 104))(v55);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v66);
    goto LABEL_6;
  }

  *&v69 = sub_237DAA044(v31);
  *(&v69 + 1) = v42;
  v70 = v43;
  _s14KeyedContainerVMa();
  swift_getWitnessTable();
  sub_237EF99B0();
  __swift_destroy_boxed_opaque_existential_1(&v66);
  sub_237DAAA78();
LABEL_7:
  OUTLINED_FUNCTION_12_6();
}

void sub_237DAD260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_13_4();
  v51 = v10;
  v52 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v48 = v22;
  OUTLINED_FUNCTION_1_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_38();
  swift_beginAccess();
  sub_237D86C8C();
  v28 = *(*(v19 + 120) + 16);
  sub_237D86D60(v28);
  v49 = *(v24 + 16);
  v49(v27, v21, v15);
  sub_237D4FDC0(v28, v27, (v19 + 120), v15, v13);
  swift_endAccess();
  sub_237EFA1E0();
  sub_237DD7458(v17, &v56);

  v50 = v17;
  if (!v57)
  {
    sub_237DAE34C(&v56);
    v48 = sub_237EF93E0();
    v51 = OUTLINED_FUNCTION_45_0();
    v34 = v33;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3150) + 48);
    v34[3] = v15;
    v34[4] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v36 = v49;
    v49(boxed_opaque_existential_1, v21, v15);
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_237EF8260();
    sub_237EF9330();
    v56 = v53;
    MEMORY[0x2383E0710](0xD00000000000003ELL, 0x8000000237EFF610);
    v54 = v15;
    v55 = v13;
    v37 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v36(v37, v21, v15);
    v38 = sub_237DAA264(&v53);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    MEMORY[0x2383E0710](v38, v40);

    sub_237EF93D0();
    OUTLINED_FUNCTION_13_29();
    (*(v41 + 104))(v34);
    swift_willThrow();
LABEL_6:
    sub_237DAAA78();
    goto LABEL_7;
  }

  v47 = v15;
  v49 = v13;
  sub_237C91804(&v56, &v53);
  sub_237CBA478(&v53, &v56);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v43 = v42;
    OUTLINED_FUNCTION_49_10();

    *&v56 = 0xD000000000000028;
    *(&v56 + 1) = 0x8000000237EFC7B0;
    v44 = sub_237DA2870(&v53);
    MEMORY[0x2383E0710](v44);

    OUTLINED_FUNCTION_1_71();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v43 = v29;
    sub_237EF8260();
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v45 + 104))(v43);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v53);
    goto LABEL_6;
  }

  v30 = *(v19 + 120);
  v31 = v48;
  *(v48 + 24) = &_s16UnkeyedContainerVN_0;
  v31[4] = sub_237CBA8FC();
  v32 = swift_allocObject();
  *v31 = v32;
  v32[2] = v19;
  v32[3] = a10;
  v32[4] = v30;
  v32[5] = 0;

  sub_237EF8260();
  __swift_destroy_boxed_opaque_existential_1(&v53);
  sub_237DAAA78();
LABEL_7:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DAD708@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v24[2] = a5;
  v24[1] = a4;
  sub_237C66728(a1, __dst);
  swift_beginAccess();
  sub_237D86C8C();
  v10 = *(a2[15] + 16);
  sub_237D86D60(v10);
  v11 = *&__dst[24];
  v12 = *&__dst[32];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  sub_237D4FDC0(v10, v16, a2 + 15, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1E0();
  sub_237DD7458(a3, __dst);

  if (*&__dst[24])
  {
    sub_237C91804(__dst, &v27);
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v28 = sub_237DAE308();
    *&v27 = v18;
    if (*&__dst[24])
    {
      sub_237DAE34C(__dst);
    }
  }

  sub_237CBA478(&v27, v26);
  v19 = a2[15];
  memcpy(__dst, a2 + 3, sizeof(__dst));
  v20 = a2[14];
  v21 = _s19IntermediateDecoderCMa();
  swift_allocObject();
  sub_237EF8260();
  sub_237C9FEDC(__dst, v25);
  sub_237EF8260();
  v22 = sub_237CB2D00(v26, v19, __dst, v20);
  a6[3] = v21;
  a6[4] = sub_237DAE3B4();
  *a6 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v27);
  sub_237DAAA78();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237DAD9B4@<X0>(void *a1@<X8>)
{
  v4[3] = &type metadata for _JSONKey;
  v4[4] = sub_237CBA80C();
  v2 = swift_allocObject();
  v4[0] = v2;
  *(v2 + 16) = 0x7265707573;
  *(v2 + 24) = 0xE500000000000000;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  return OUTLINED_FUNCTION_45_8(v4, a1);
}

uint64_t sub_237DADA64@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v6[3] = a1;
  v6[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_22_3();
  (*(v4 + 16))();
  return OUTLINED_FUNCTION_45_8(v6, a3);
}

uint64_t sub_237DADEEC()
{
  result = sub_237EF9E30();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237DADF3C()
{
  result = sub_237EF9E40();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237DADFE4()
{
  result = sub_237EF9E70();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237DAE034()
{
  result = sub_237EF9E50();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237DAE174()
{
  result = sub_237EF9E80();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237DAE1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

unint64_t sub_237DAE308()
{
  result = qword_280C8CD00;
  if (!qword_280C8CD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C8CD00);
  }

  return result;
}

uint64_t sub_237DAE34C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237DAE3B4()
{
  result = qword_280C8D9D0;
  if (!qword_280C8D9D0)
  {
    _s19IntermediateDecoderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D9D0);
  }

  return result;
}

unint64_t sub_237DAE428()
{
  result = qword_27DEB3160[0];
  if (!qword_27DEB3160[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB3158);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3160);
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_2_67@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 128) = 0xD00000000000001DLL;
  *(v3 - 120) = (a1 - 32) | 0x8000000000000000;
  *(v3 - 144) = v1;
  *(v3 - 136) = v2;

  return __swift_allocate_boxed_opaque_existential_1((v3 - 168));
}

void OUTLINED_FUNCTION_3_68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 168);

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_4_63()
{

  return sub_237DAA264((v0 - 168));
}

uint64_t OUTLINED_FUNCTION_8_54()
{

  return sub_237D4FDC0(v4, v3, (v2 + 120), v0, v1);
}

uint64_t OUTLINED_FUNCTION_9_40(_OWORD *a1)
{
  sub_237C91804(a1, (v1 - 168));

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_38()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_237D86D60(v2);
}

uint64_t OUTLINED_FUNCTION_14_38()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_22_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_28()
{
  *(v1 - 200) = *(v0 + 120);
  *(v1 - 168) = 0;
  *(v1 - 160) = 0xE000000000000000;

  return sub_237EF8260();
}

uint64_t *OUTLINED_FUNCTION_24_22(uint64_t a1)
{
  *(v4 - 184) = *(a1 + 48);
  v2[3] = v1;
  v2[4] = v3;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

double OUTLINED_FUNCTION_27_21()
{

  return sub_237DD7458(v0, (v1 - 112));
}

uint64_t OUTLINED_FUNCTION_28_19()
{

  return sub_237EFA1E0();
}

uint64_t OUTLINED_FUNCTION_37_11()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_38_9()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_39_11()
{

  return sub_237DAAA78();
}

uint64_t OUTLINED_FUNCTION_41_9()
{

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_43_11()
{

  return sub_237DAA264((v0 - 168));
}

uint64_t OUTLINED_FUNCTION_45_8@<X0>(void *a1@<X0>, void *a2@<X8>)
{

  return sub_237DAD708(a1, v5, v4, v3, v2, a2);
}

uint64_t OUTLINED_FUNCTION_46_10()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_49_10()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_50_9()
{
  *(v1 - 208) = *(v0 + 120);
  *(v1 - 168) = 0;
  *(v1 - 160) = 0xE000000000000000;

  return sub_237EF8260();
}

uint64_t *OUTLINED_FUNCTION_51_7(uint64_t a1)
{
  *(v4 - 192) = *(a1 + 48);
  v2[3] = v1;
  v2[4] = v3;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t sub_237DAE914(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v193 = a3;
  v188 = a2;
  v203[1] = *MEMORY[0x277D85DE8];
  v173 = sub_237EF7DB0();
  OUTLINED_FUNCTION_1();
  v183 = v6;
  MEMORY[0x28223BE20](v7);
  v180 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  OUTLINED_FUNCTION_1();
  v181 = v9;
  MEMORY[0x28223BE20](v10);
  v187 = &v163 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2E90);
  MEMORY[0x28223BE20](v12 - 8);
  v192 = &v163 - v13;
  v195 = sub_237EF7D80();
  OUTLINED_FUNCTION_1();
  v178 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v169 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v191 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v163 - v20;
  v22 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  v196 = v26;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_16();
  v189 = v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v194 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_16();
  v184 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  v35 = &v163 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_16();
  v185 = v37;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  v40 = &v163 - v39;
  v177 = a1;
  v41 = sub_237EF5E50();
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2E98);
  v42 = swift_allocObject();
  v175 = xmmword_237F03530;
  *(v42 + 16) = xmmword_237F03530;
  v43 = *MEMORY[0x277CBE8A0];
  *(v42 + 32) = *MEMORY[0x277CBE8A0];
  v203[0] = 0;
  v174 = v43;
  v200 = v4;
  v44 = sub_237DAFF64(v41, v42, 5, v203, v4);

  v45 = v203[0];
  if (v44)
  {
    v190 = v21;
    v46 = sub_237EF8910();
    v47 = v45;

    v48 = 0;
    v197 = *(v46 + 16);
    v201 = (v24 + 8);
    v202 = v24 + 16;
    v186 = (v24 + 32);
    v49 = MEMORY[0x277D84F90];
    v50 = v22;
    v198 = v22;
    v199 = v24;
    while (v197 != v48)
    {
      if (v48 >= *(v46 + 16))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      v51 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v52 = *(v24 + 72);
      (*(v24 + 16))(v40, v46 + v51 + v52 * v48, v50);
      if (sub_237DD10BC())
      {
        v172 = *v186;
        v172(v185, v40, v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203[0] = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_9_41(v49[2]);
          v50 = v198;
          v49 = v203[0];
        }

        v24 = v199;
        v56 = v49[2];
        v55 = v49[3];
        v57 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          v58 = OUTLINED_FUNCTION_3_69(v55);
          v60 = v59;
          v171 = v61;
          sub_237C637AC(v58, v59, 1);
          v57 = v60;
          v56 = v171;
          v50 = v198;
          v49 = v203[0];
        }

        ++v48;
        v49[2] = v57;
        v172((v49 + v51 + v56 * v52), v185, v50);
      }

      else
      {
        OUTLINED_FUNCTION_1_75();
        v53(v40, v50);
        ++v48;
        v24 = v199;
      }
    }

    v62 = 0;
    v63 = v49[2];
    v185 = MEMORY[0x277D84F90];
    while (v63 != v62)
    {
      if (v62 >= v49[2])
      {
        goto LABEL_71;
      }

      v64 = (*(v199 + 80) + 32) & ~*(v199 + 80);
      v65 = *(v199 + 72);
      (*(v199 + 16))(v35, v49 + v64 + v65 * v62, v50);
      v66 = v50;
      sub_237EF5EC0();
      v67 = sub_237EF8560();

      v68 = [v200 isReadableFileAtPath_];

      if (v68)
      {
        v197 = *v186;
        (v197)(v184, v35, v66);
        v70 = v185;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v72 = v70;
        v203[0] = v70;
        if (v71)
        {
          v50 = v66;
        }

        else
        {
          OUTLINED_FUNCTION_9_41(v70[2]);
          v50 = v198;
          v72 = v203[0];
        }

        v74 = v72[2];
        v73 = v72[3];
        if (v74 >= v73 >> 1)
        {
          v75 = OUTLINED_FUNCTION_3_69(v73);
          sub_237C637AC(v75, v74 + 1, 1);
          v50 = v198;
          v72 = v203[0];
        }

        ++v62;
        v72[2] = v74 + 1;
        v185 = v72;
        (v197)(v72 + v64 + v74 * v65, v184, v50);
      }

      else
      {
        OUTLINED_FUNCTION_1_75();
        v69(v35, v66);
        ++v62;
        v50 = v66;
      }
    }

    v76 = v185[2];
    if (v76)
    {
      v203[0] = MEMORY[0x277D84F90];
      v77 = v185;
      sub_237C62D90(0, v76, 0);
      v78 = v198;
      v79 = v203[0];
      v80 = v77 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
      v197 = *(v199 + 72);
      v81 = *(v199 + 16);
      do
      {
        v82 = v194;
        v81(v194, v80, v78);
        v83 = sub_237EF5E40();
        v78 = v198;
        v84 = v83;
        v86 = v85;
        OUTLINED_FUNCTION_1_75();
        v87(v82, v78);
        v203[0] = v79;
        v89 = v79[2];
        v88 = v79[3];
        if (v89 >= v88 >> 1)
        {
          v91 = OUTLINED_FUNCTION_3_69(v88);
          sub_237C62D90(v91, v89 + 1, 1);
          v78 = v198;
          v79 = v203[0];
        }

        v79[2] = v89 + 1;
        v90 = &v79[2 * v89];
        v90[4] = v84;
        v90[5] = v86;
        v80 += v197;
        --v76;
      }

      while (v76);

      v93 = v79;
    }

    else
    {

      v93 = MEMORY[0x277D84F90];
    }

    v96 = v180;
    v170 = v93[2];
    if (!v170)
    {

      return MEMORY[0x277D84F90];
    }

    v97 = 0;
    v172 = (v93 + 4);
    v184 = (v178 + 32);
    v186 = (v178 + 8);
    v168 = "verifyAuthorizationStatus()";
    v167 = "lue but found null instead.";
    v166 = (v183 + 8);
    v165 = (v178 + 16);
    v194 = MEMORY[0x277D84F90];
    *&v92 = 134349056;
    v164 = v92;
    *&v92 = 134349314;
    v163 = v92;
    v171 = v93;
    while (1)
    {
      if (v97 >= v93[2])
      {
        goto LABEL_75;
      }

      v98 = v172 + 16 * v97;
      v99 = *v98;
      v100 = *(v98 + 1);
      sub_237EF8260();
      v183 = v99;
      v185 = v100;
      sub_237EF5E70();
      v101 = sub_237EF5E50();
      v102 = swift_allocObject();
      *(v102 + 16) = v175;
      v103 = v174;
      *(v102 + 32) = v174;
      v203[0] = 0;
      v104 = v103;
      v105 = sub_237DAFF64(v101, v102, 5, v203, v200);

      v106 = v203[0];
      if (!v105)
      {
        v160 = v203[0];

        v161 = sub_237EF5DC0();

        v179 = v161;
        swift_willThrow();
        OUTLINED_FUNCTION_1_75();
        v162(v189, v198);
        return v194;
      }

      v178 = v97;
      v107 = sub_237EF8910();
      v108 = v106;

      v109 = *(v107 + 16);
      if (v109)
      {
        break;
      }

      v111 = 0;
      v139 = 0;
      v112 = 0;
LABEL_56:
      sub_237EF7DA0();
      if (v109)
      {
        v140 = sub_237EF7D90();
        v141 = sub_237EF8F90();
        if (os_log_type_enabled(v140, v141))
        {
          v96 = swift_slowAlloc();
          *v96 = v164;
          *(v96 + 4) = v112;
          _os_log_impl(&dword_237C51000, v140, v141, "Skipped %{public}ld files since they were not readable.", v96, 0xCu);
          OUTLINED_FUNCTION_6_48();
        }
      }

      v142 = v195;
      if (v139)
      {
        v143 = v169;
        (*v165)(v169, v188, v195);
        v144 = sub_237EF7D90();
        v145 = sub_237EF8F90();
        if (os_log_type_enabled(v144, v145))
        {
          v96 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v203[0] = v146;
          *v96 = v163;
          *(v96 + 4) = v111;
          *(v96 + 12) = 2082;
          sub_237D9D5E0(qword_27DEB2EA0, MEMORY[0x277D85578]);
          v147 = sub_237EF9AB0();
          v149 = v148;
          OUTLINED_FUNCTION_8_55();
          v150(v143, v142);
          v151 = sub_237DAFA64(v147, v149, v203);

          *(v96 + 14) = v151;
          _os_log_impl(&dword_237C51000, v144, v145, "Skipped %{public}ld files since they do not conform to type %{public}s.", v96, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v146);
          MEMORY[0x2383E2DF0](v146, -1, -1);
          OUTLINED_FUNCTION_6_48();
        }

        else
        {

          OUTLINED_FUNCTION_8_55();
          v152(v143, v142);
        }
      }

      (*v166)(v96, v173);
      OUTLINED_FUNCTION_1_75();
      v153(v189, v198);
      v97 = (v178 + 1);
      v93 = v171;
      if (v178 + 1 == v170)
      {

        return v194;
      }
    }

    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = v198;
    v197 = v107 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
    v114 = v196;
    while (1)
    {
      if (v110 >= *(v107 + 16))
      {
        goto LABEL_72;
      }

      v115 = *(v199 + 16);
      v115(v114, v197 + *(v199 + 72) * v110, v113);
      sub_237EF5EC0();
      v116 = sub_237EF8560();

      v113 = [v200 isReadableFileAtPath_];

      if (v113)
      {
        sub_237EF5E10();
        sub_237EF7D60();
        v117 = v192;
        sub_237EF7D50();
        v113 = v195;
        if (__swift_getEnumTagSinglePayload(v117, 1, v195) == 1)
        {
          OUTLINED_FUNCTION_1_75();
          v118 = OUTLINED_FUNCTION_4_64();
          v119(v118);
          sub_237D9D628(v117);
          goto LABEL_52;
        }

        v123 = v190;
        (*v184)(v190, v117, v113);
        v124 = v113;
        v113 = v123;
        if ((sub_237EF7D70() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_55();
          v134(v123, v124);
          OUTLINED_FUNCTION_1_75();
          v114 = v196;
          v135 = OUTLINED_FUNCTION_4_64();
          v136(v135);
LABEL_52:
          v122 = __OFADD__(v111++, 1);
          if (v122)
          {
            goto LABEL_74;
          }

          goto LABEL_53;
        }

        sub_237EF5E40();
        v125 = v187;
        sub_237EF5E70();

        v126 = (v125 + *(v182 + 36));
        v127 = v185;
        *v126 = v183;
        v126[1] = v127;
        sub_237EF8260();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237D0C70C(0, *(v194 + 16) + 1, 1, v194);
          v194 = v137;
        }

        v129 = *(v194 + 16);
        v128 = *(v194 + 24);
        if (v129 >= v128 >> 1)
        {
          sub_237D0C70C(v128 > 1, v129 + 1, 1, v194);
          v194 = v138;
        }

        OUTLINED_FUNCTION_8_55();
        v130(v190, v195);
        OUTLINED_FUNCTION_1_75();
        v114 = v196;
        v131 = v198;
        v132(v196, v198);
        v133 = v194;
        *(v194 + 16) = v129 + 1;
        v113 = v131;
        sub_237D9D690(v187, v133 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v129);
      }

      else
      {
        if ((v193 & 1) == 0)
        {

          type metadata accessor for DatasetError();
          sub_237D9D5E0(&qword_27DEAFA00, type metadata accessor for DatasetError);
          v154 = swift_allocError();
          v155 = v196;
          v156 = v198;
          v115(v157, v196, v198);
          swift_storeEnumTagMultiPayload();
          v179 = v154;
          swift_willThrow();
          v158 = *v201;
          (*v201)(v155, v156);
          v158(v189, v156);
          return v194;
        }

        OUTLINED_FUNCTION_1_75();
        v114 = v196;
        v120 = OUTLINED_FUNCTION_4_64();
        v121(v120);
        v122 = __OFADD__(v112++, 1);
        if (v122)
        {
          goto LABEL_73;
        }
      }

LABEL_53:
      if (v109 == ++v110)
      {

        LODWORD(v109) = v112 > 0;
        v139 = v111 > 0;
        v96 = v180;
        goto LABEL_56;
      }
    }
  }

  v94 = v203[0];
  v95 = sub_237EF5DC0();

  v179 = v95;
  swift_willThrow();
  return v194;
}

unint64_t sub_237DAFA64(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_237EF8260();
  v6 = sub_237DAFB28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_237CBA478(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_237DAFB28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_237DAFC28(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_237EF9420();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_237DAFC28(uint64_t a1, unint64_t a2)
{
  v3 = sub_237DAFC74(a1, a2);
  sub_237DAFD8C(&unk_284ACD9D8);
  return v3;
}

uint64_t sub_237DAFC74(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_237EF8650())
  {
    result = sub_237D6D2A4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_237EF9310();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_237EF9420();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_237DAFD8C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_237DAFE70(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_237DAFE70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21C8);
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

id sub_237DAFF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_237EF8900();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

void OUTLINED_FUNCTION_6_48()
{

  JUMPOUT(0x2383E2DF0);
}

void OUTLINED_FUNCTION_9_41(uint64_t a1@<X8>)
{

  sub_237C637AC(0, a1 + 1, 1);
}

void sub_237DB0074()
{
  sub_237DB0130();
  if (v0 <= 0x3F)
  {
    sub_237EF7E90();
    sub_237EF90F0();
    swift_getTupleTypeMetadata2();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_237DB0130()
{
  if (!qword_27DEB31E8)
  {
    sub_237EF6820();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEDF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DEB31E8);
    }
  }
}

uint64_t sub_237DB01AC(uint64_t a1)
{
  v4 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v40 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_30();
  sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v38 = v8;
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v37 = v10 - v9;
  v11 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_49();
  v15 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  (*(v26 + 16))(v24 - v23, v41, a1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    (*(v17 + 32))(v21, v25, v15);
    sub_237EF67E0();
    v34 = sub_237EF6A00();
    v35 = *(v13 + 8);
    v35(v2, v11);
    if (v34 != 2)
    {
      (*(v17 + 8))(v21, v15);
      sub_237CBA860(v25 + v33, &qword_27DEAEDF0);
      return 0;
    }

    sub_237EF67E0();
    sub_237EF6A30();
    v35(v2, v11);
    v31 = sub_237EF6470();
    (*(v38 + 8))(v37, v39);
    (*(v17 + 8))(v21, v15);
    sub_237CBA860(v25 + v33, &qword_27DEAEDF0);
    return v31;
  }

  v27 = sub_237EF90F0();
  v28 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v40 + 32))(v1, v25, v4);
  v29 = *(sub_237EF7E20() + 16);

  if (v29 != 2)
  {
    (*(v40 + 8))(v1, v4);
    OUTLINED_FUNCTION_5_16();
    (*(v36 + 8))(v25 + v28, v27);
    return 0;
  }

  result = sub_237EF7E20();
  if (*(result + 16) >= 2uLL)
  {
    v31 = *(result + 40);

    (*(v40 + 8))(v1, v4);
    OUTLINED_FUNCTION_5_16();
    (*(v32 + 8))(v25 + v28, v27);
    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_237DB0660(uint64_t a1)
{
  v4 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_30();
  v8 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v17 = OUTLINED_FUNCTION_11_39(v16);
  v18(v17, v1, a1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    (*(v10 + 32))(v14, v2, v8);
    v25 = sub_237EF6810();
    (*(v10 + 8))(v14, v8);
    sub_237CBA860(v2 + v27, &qword_27DEAEDF0);
    return v25;
  }

  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_10_40();
  v20 = *(swift_getTupleTypeMetadata2() + 48);
  v21 = OUTLINED_FUNCTION_9_42();
  v22(v21);
  v23 = *(sub_237EF7E20() + 16);

  if (v23 != 2)
  {
    (*(v6 + 8))(v1, v4);
    OUTLINED_FUNCTION_5_16();
    (*(v28 + 8))(v2 + v20, v19);
    return 0;
  }

  result = sub_237EF7E20();
  if (*(result + 16))
  {
    v25 = *(result + 32);

    (*(v6 + 8))(v1, v4);
    OUTLINED_FUNCTION_5_16();
    (*(v26 + 8))(v2 + v20, v19);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_237DB0960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_237EF6B10();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v17 = OUTLINED_FUNCTION_11_39(v16);
  v18(v17, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_237EF7E90();
    v20 = sub_237EF90F0();
    v21 = *(swift_getTupleTypeMetadata2() + 48);
    OUTLINED_FUNCTION_22_3();
    (*(v22 + 32))(a2, v3, v19);
    OUTLINED_FUNCTION_5_16();
    return (*(v23 + 8))(v3 + v21, v20);
  }

  else
  {
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    v26 = OUTLINED_FUNCTION_9_42();
    v27(v26);
    sub_237EF67E0();
    sub_237D152D0(v10, a1[2], a1[3], a1[4]);
    (*(v13 + 8))(v2, v11);
    return sub_237CBA860(v3 + v25, &qword_27DEAEDF0);
  }
}

uint64_t sub_237DB0BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  v8 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_237EF7E90();
    v21 = sub_237EF90F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v21 - 8) + 32))(a2, v18 + *(TupleTypeMetadata2 + 48), v21);
    OUTLINED_FUNCTION_22_3();
    return (*(v23 + 8))(v18, v20);
  }

  else
  {
    v26[0] = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    (*(v10 + 32))(v14, v18, v8);
    v25 = sub_237EF67B0();
    MEMORY[0x28223BE20](v25);
    v26[-4] = *(a1 + 16);
    *&v26[-3] = *(a1 + 24);
    sub_237EF7E90();
    sub_237CA0A1C();
    sub_237CBA860(v7, &qword_27DEAD2C0);
    (*(v10 + 8))(v14, v8);
    return sub_237CBA860(v18 + v26[0], &qword_27DEAEDF0);
  }
}

uint64_t sub_237DB0F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;
  v15 = a2;
  v13 = sub_237EF6450();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_237EF6B10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  MEMORY[0x28223BE20](v9);
  sub_237EF7E90();
  (*(v6 + 16))(v8, v12, v5);
  sub_237EF6A30();
  sub_237EF6440();
  (*(v2 + 8))(v4, v13);
  v14 = v8;
  sub_237EF7DE0();
  (*(v6 + 8))(v8, v5);
  swift_getWitnessTable();
  sub_237C651A0();
  return sub_237EF7F30();
}

uint64_t sub_237DB11B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a5;
  v81 = a4;
  v78 = a1;
  v79 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v71 = v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v72 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v12 = a3[3];
  v68 = a3[2];
  v69 = v12;
  v70 = v13;
  v14 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v76 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v65 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_49();
  sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v66 = v27;
  v67 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v74 = v32;
  v75 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  (*(v40 + 16))(v38 - v37, v73, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v76;
    (*(v76 + 32))(v22, v39, v14);
    v42 = *(v41 + 16);
    v75 = v22;
    v42(v19, v22, v14);
    v43 = v71;
    v44 = v77;
    if (swift_dynamicCast())
    {
      v45 = sub_237EF90F0();
      OUTLINED_FUNCTION_10_40();
      v46 = *(swift_getTupleTypeMetadata2() + 48);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
      v47 = v43;
      v48 = v72;
      v49 = v70;
      (*(v72 + 32))(v70, v47, v44);
      sub_237C651A0();
      sub_237D16240();
      (*(v48 + 8))(v49, v77);
      (*(v76 + 8))(v75, v14);
      OUTLINED_FUNCTION_5_16();
      return (*(v50 + 8))(v39 + v46, v45);
    }

    else
    {
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v44);
      sub_237CBA860(v43, &qword_27DEAD600);
      result = sub_237EF9740();
      __break(1u);
    }
  }

  else
  {
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    (*(v74 + 32))(v35, v39, v75);
    sub_237EF67E0();
    sub_237EF6A30();
    v76 = sub_237EF6470();
    v52 = *(v24 + 8);
    v53 = v65;
    v52(v5, v65);
    sub_237EF6A30();
    v54 = sub_237EF6470();
    v55 = (v52)(v5, v53);
    MEMORY[0x28223BE20](v55);
    v56 = v69;
    v57 = v81;
    *(&v64 - 8) = v68;
    *(&v64 - 7) = v57;
    v58 = a3[4];
    *(&v64 - 6) = v56;
    *(&v64 - 5) = v58;
    *(&v64 - 4) = v76;
    *(&v64 - 3) = v54;
    v62 = v78;
    v63 = v79;
    sub_237EF69C0();
    (*(v66 + 8))(v30, v67);
    (*(v74 + 8))(v35, v75);
    return sub_237CBA860(v39 + v77, &qword_27DEAEDF0);
  }

  return result;
}

uint64_t sub_237DB183C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a2;
  v107 = a5;
  v108 = a4;
  v104 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v96 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v97 = v12;
  v98 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v14 = a3[3];
  v93 = a3[2];
  v94 = v14;
  v95 = v15;
  v16 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v103 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v92 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v102 = &v86 - v22;
  v23 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v100 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26();
  v99 = v26 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v86 - v29;
  sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v89 = v32;
  v90 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v87 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_49();
  v101 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v91 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5();
  v88 = v40 - v39;
  v41 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_5();
  v48 = v47 - v46;
  (*(v49 + 16))(v47 - v46, v106, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v51 = v100;
    (*(v100 + 32))(v30, v48 + *(TupleTypeMetadata2 + 48), v23);
    v52 = v99;
    (*(v51 + 16))(v99, v30, v23);
    if (__swift_getEnumTagSinglePayload(v52, 1, v16) == 1)
    {
      v53 = *(v51 + 8);
      v53(v30, v23);
      v53(v52, v23);
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
      return (*(v103 + 8))(v48, v16);
    }

    else
    {
      v106 = v30;
      v65 = v102;
      v66 = v103;
      (*(v103 + 32))(v102, v52, v16);
      (*(v66 + 16))(v92, v65, v16);
      v67 = v96;
      v68 = v98;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
        v69 = v97;
        v70 = v95;
        (*(v97 + 32))(v95, v67, v68);
        sub_237C651A0();
        sub_237D1651C();
        (*(v69 + 8))(v70, v68);
        v71 = *(v66 + 8);
        v71(v102, v16);
        (*(v51 + 8))(v106, v23);
        return (v71)(v48, v16);
      }

      else
      {
        OUTLINED_FUNCTION_37_1();
        __swift_storeEnumTagSinglePayload(v82, v83, v84, v68);
        sub_237CBA860(v67, &qword_27DEAD600);
        result = sub_237EF9740();
        __break(1u);
      }
    }
  }

  else
  {
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    (*(v43 + 32))(v5, v48, v41);
    sub_237EF67B0();
    v60 = v101;
    if (__swift_getEnumTagSinglePayload(v6, 1, v101) == 1)
    {
      (*(v43 + 8))(v5, v41);
      sub_237CBA860(v6, &qword_27DEAD2C0);
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
      return sub_237CBA860(&v59[v48], &qword_27DEAEDF0);
    }

    else
    {
      v102 = v59;
      v103 = v5;
      v106 = v41;
      v72 = v91;
      v73 = v88;
      (*(v91 + 32))(v88, v6, v60);
      v74 = v87;
      sub_237EF6A30();
      v75 = sub_237EF6470();
      v76 = (*(v89 + 8))(v74, v90);
      MEMORY[0x28223BE20](v76);
      v77 = v94;
      v78 = v108;
      *(&v86 - 8) = v93;
      *(&v86 - 7) = v78;
      v79 = a3[4];
      *(&v86 - 6) = v77;
      *(&v86 - 5) = v79;
      v81 = v104;
      v80 = v105;
      *(&v86 - 4) = v75;
      *(&v86 - 3) = v81;
      v85 = v80;
      sub_237EF90F0();
      sub_237EF69C0();
      (*(v72 + 8))(v73, v60);
      (*(v43 + 8))(v103, v106);
      return sub_237CBA860(&v102[v48], &qword_27DEAEDF0);
    }
  }

  return result;
}

uint64_t sub_237DB20D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  if (result)
  {
    result = a3(result, a2, 1);
    if (!v5)
    {
      return __swift_storeEnumTagSinglePayload(a5, 0, 1, a4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237DB2170(uint64_t result)
{
  if (result)
  {
    v2 = v1[6];
    v3 = v1[7];
    v4 = v1[8];
    v5[0] = result;
    v5[1] = v2;
    v5[2] = v3;
    v5[3] = v3;
    v6 = 0;
    return v4(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237DB2248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69736963657270 && a2 == 0xEE0065767275436ELL;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75436C6C61636572 && a2 == 0xEB00000000657672)
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

uint64_t sub_237DB231C(char a1)
{
  if (a1)
  {
    return 0x75436C6C61636572;
  }

  else
  {
    return 0x6F69736963657270;
  }
}

uint64_t sub_237DB2368(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB31F0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB2BC8();
  sub_237EFA1B0();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3200);
  sub_237DB2C70(&qword_27DEB3208, sub_237DB2C1C);
  OUTLINED_FUNCTION_2_68();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    OUTLINED_FUNCTION_2_68();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_237DB24F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3218);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB2BC8();
  sub_237EFA190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3200);
  v11 = 0;
  sub_237DB2C70(&qword_27DEB3220, sub_237DB2CE8);
  OUTLINED_FUNCTION_1_76();
  v9 = v12;
  v11 = 1;
  OUTLINED_FUNCTION_1_76();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_237DB26D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000237EFFA10 == a2)
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

uint64_t sub_237DB27A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_237DB27DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3248);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB31B0();
  sub_237EFA1B0();
  v12 = 0;
  sub_237EF9A40();
  if (!v1)
  {
    v11 = 1;
    sub_237EF9A40();
  }

  return (*(v5 + 8))(v8, v3);
}

float sub_237DB2938(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3258);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB31B0();
  sub_237EFA190();
  if (!v1)
  {
    v12[15] = 0;
    sub_237EF9940();
    v2 = v10;
    v12[14] = 1;
    sub_237EF9940();
    (*(v6 + 8))(v9, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_237DB2AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DB2248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DB2B08(uint64_t a1)
{
  v2 = sub_237DB2BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB2B44(uint64_t a1)
{
  v2 = sub_237DB2BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB2B80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237DB24F8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_237DB2BC8()
{
  result = qword_27DEB31F8;
  if (!qword_27DEB31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB31F8);
  }

  return result;
}

unint64_t sub_237DB2C1C()
{
  result = qword_27DEB3210;
  if (!qword_27DEB3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3210);
  }

  return result;
}

uint64_t sub_237DB2C70(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB3200);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237DB2CE8()
{
  result = qword_27DEB3228;
  if (!qword_27DEB3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3228);
  }

  return result;
}

uint64_t sub_237DB2D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DB26D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DB2D6C(uint64_t a1)
{
  v2 = sub_237DB31B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB2DA8(uint64_t a1)
{
  v2 = sub_237DB31B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237DB2DE4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237DB2938(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

uint64_t sub_237DB2E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    OUTLINED_FUNCTION_3_70();
    v5 = v26;
    v6 = (a1 + 32);
    v7 = *(v26 + 16);
    v8 = v2;
    do
    {
      v9 = *v6;
      if (v7 >= *(v26 + 24) >> 1)
      {
        sub_237C63670();
      }

      *(v26 + 16) = v7 + 1;
      *(v26 + 4 * v7 + 32) = v9;
      v6 += 2;
      ++v7;
      --v8;
    }

    while (v8);
    OUTLINED_FUNCTION_3_70();
    v10 = a2;
    v3 = v26;
    v11 = *(v26 + 16);
    v12 = (a1 + 36);
    do
    {
      v13 = *v12;
      v26 = v5;
      if (v11 >= *(v5 + 24) >> 1)
      {
        sub_237C63670();
      }

      *(v5 + 16) = v11 + 1;
      *(v5 + 4 * v11 + 32) = v13;
      v12 += 2;
      ++v11;
      --v2;
    }

    while (v2);
  }

  else
  {
    v10 = a2;
    v5 = MEMORY[0x277D84F90];
  }

  v14 = *(v10 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    OUTLINED_FUNCTION_4_65();
    v16 = v26;
    v17 = (v10 + 32);
    v18 = *(v26 + 16);
    v19 = v14;
    do
    {
      v20 = *v17;
      if (v18 >= *(v26 + 24) >> 1)
      {
        sub_237C63670();
      }

      *(v26 + 16) = v18 + 1;
      *(v26 + 4 * v18 + 32) = v20;
      v17 += 2;
      ++v18;
      --v19;
    }

    while (v19);
    OUTLINED_FUNCTION_4_65();
    v15 = v26;
    v21 = *(v26 + 16);
    v22 = (a2 + 36);
    do
    {
      v23 = *v22;
      if (v21 >= *(v26 + 24) >> 1)
      {
        sub_237C63670();
      }

      *(v26 + 16) = v21 + 1;
      *(v26 + 4 * v21 + 32) = v23;
      v22 += 2;
      ++v21;
      --v14;
    }

    while (v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  return MEMORY[0x282183E50](v5, v3, v16, v15);
}

unint64_t sub_237DB30AC()
{
  result = qword_27DEB3230;
  if (!qword_27DEB3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3230);
  }

  return result;
}

unint64_t sub_237DB3104()
{
  result = qword_27DEB3238;
  if (!qword_27DEB3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3238);
  }

  return result;
}

unint64_t sub_237DB315C()
{
  result = qword_27DEB3240;
  if (!qword_27DEB3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3240);
  }

  return result;
}

unint64_t sub_237DB31B0()
{
  result = qword_27DEB3250;
  if (!qword_27DEB3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3250);
  }

  return result;
}

_BYTE *sub_237DB3204(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237DB32E4()
{
  result = qword_27DEB3260;
  if (!qword_27DEB3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3260);
  }

  return result;
}

unint64_t sub_237DB333C()
{
  result = qword_27DEB3268;
  if (!qword_27DEB3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3268);
  }

  return result;
}

unint64_t sub_237DB3394()
{
  result = qword_27DEB3270;
  if (!qword_27DEB3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3270);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_76()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_2_68()
{

  return sub_237EF9A70();
}

void OUTLINED_FUNCTION_3_70()
{

  sub_237C63670();
}

void OUTLINED_FUNCTION_4_65()
{

  sub_237C63670();
}

uint64_t sub_237DB34A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746F6F6D536E6F6ELL && a2 == 0xE900000000000068;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F6D654D776F6CLL && a2 == 0xE900000000000079;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1953718630 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

uint64_t sub_237DB3604(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x746F6F6D536E6F6ELL;
      break;
    case 2:
      result = 0x726F6D654D776F6CLL;
      break;
    case 3:
      result = 1953718630;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237DB3684(uint64_t a1)
{
  v2 = sub_237DB3E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB36C0(uint64_t a1)
{
  v2 = sub_237DB3E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB3704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DB34A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DB372C(uint64_t a1)
{
  v2 = sub_237DB3CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB3768(uint64_t a1)
{
  v2 = sub_237DB3CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB37A4(uint64_t a1)
{
  v2 = sub_237DB3D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB37E0(uint64_t a1)
{
  v2 = sub_237DB3D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB381C(uint64_t a1)
{
  v2 = sub_237DB3D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB3858(uint64_t a1)
{
  v2 = sub_237DB3D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB3894(uint64_t a1)
{
  v2 = sub_237DB3DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB38D0(uint64_t a1)
{
  v2 = sub_237DB3DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OptimizationStrategy.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3278);
  OUTLINED_FUNCTION_1();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3280);
  OUTLINED_FUNCTION_1();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3288);
  OUTLINED_FUNCTION_1();
  v34 = v12;
  v35 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3290);
  OUTLINED_FUNCTION_1();
  v31 = v16;
  v32 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3298);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB3CC8();
  sub_237EFA1B0();
  switch(v26)
  {
    case 1:
      v43 = 1;
      sub_237DB3DC4();
      v27 = v33;
      OUTLINED_FUNCTION_3_71();
      v29 = v34;
      v28 = v35;
      goto LABEL_6;
    case 2:
      v44 = 2;
      sub_237DB3D70();
      v27 = v36;
      OUTLINED_FUNCTION_3_71();
      v29 = v37;
      v28 = v38;
      goto LABEL_6;
    case 3:
      v45 = 3;
      sub_237DB3D1C();
      v27 = v39;
      OUTLINED_FUNCTION_3_71();
      v29 = v40;
      v28 = v41;
LABEL_6:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_237DB3E18();
      sub_237EF99C0();
      (*(v31 + 8))(v19, v32);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_237DB3CC8()
{
  result = qword_27DEB32A0;
  if (!qword_27DEB32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32A0);
  }

  return result;
}

unint64_t sub_237DB3D1C()
{
  result = qword_27DEB32A8;
  if (!qword_27DEB32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32A8);
  }

  return result;
}

unint64_t sub_237DB3D70()
{
  result = qword_27DEB32B0;
  if (!qword_27DEB32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32B0);
  }

  return result;
}

unint64_t sub_237DB3DC4()
{
  result = qword_27DEB32B8;
  if (!qword_27DEB32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32B8);
  }

  return result;
}

unint64_t sub_237DB3E18()
{
  result = qword_27DEB32C0;
  if (!qword_27DEB32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32C0);
  }

  return result;
}

uint64_t OptimizationStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

uint64_t OptimizationStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v65 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32C8);
  OUTLINED_FUNCTION_1();
  v64 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19();
  v67 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32D0);
  OUTLINED_FUNCTION_1();
  v61 = v7;
  v62 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v63 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32D8);
  OUTLINED_FUNCTION_1();
  v59 = v11;
  v60 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32E0);
  OUTLINED_FUNCTION_1();
  v58 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32E8);
  OUTLINED_FUNCTION_1();
  v66 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB3CC8();
  v25 = v69;
  sub_237EFA190();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v55 = v15;
  v56 = v19;
  v57 = v14;
  v26 = v67;
  v27 = v68;
  v69 = a1;
  v28 = v24;
  v29 = sub_237EF9980();
  result = sub_237CADBA0(v29, 0);
  if (v32 == v33 >> 1)
  {
    goto LABEL_8;
  }

  v54 = 0;
  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    return result;
  }

  v34 = *(v31 + v32);
  sub_237CADB98(v32 + 1);
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  if (v36 != v38 >> 1)
  {
LABEL_8:
    v44 = v66;
    v45 = sub_237EF93E0();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v47 = &type metadata for OptimizationStrategy;
    sub_237EF98C0();
    sub_237EF93D0();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v28, v20);
    a1 = v69;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v65;
  v40 = v66;
  v53 = v34;
  v41 = v34;
  v42 = v64;
  switch(v41)
  {
    case 1:
      v71 = 1;
      sub_237DB3DC4();
      v48 = v57;
      OUTLINED_FUNCTION_2_69();
      swift_unknownObjectRelease();
      v50 = v59;
      v49 = v60;
      goto LABEL_18;
    case 2:
      v72 = 2;
      sub_237DB3D70();
      v48 = v63;
      OUTLINED_FUNCTION_2_69();
      swift_unknownObjectRelease();
      v50 = v61;
      v49 = v62;
LABEL_18:
      (*(v50 + 8))(v48, v49);
      goto LABEL_19;
    case 3:
      v73 = 3;
      sub_237DB3D1C();
      v51 = v54;
      sub_237EF98B0();
      if (v51)
      {
        (*(v40 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v69;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v42 + 8))(v26, v27);
LABEL_19:
      (*(v40 + 8))(v28, v20);
      *v39 = v53;
      result = __swift_destroy_boxed_opaque_existential_1(v69);
      break;
    default:
      v70 = 0;
      sub_237DB3E18();
      v43 = v56;
      OUTLINED_FUNCTION_2_69();
      swift_unknownObjectRelease();
      (*(v58 + 8))(v43, v55);
      goto LABEL_19;
  }

  return result;
}

unint64_t sub_237DB4520()
{
  result = qword_27DEB32F0;
  if (!qword_27DEB32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32F0);
  }

  return result;
}

_BYTE *sub_237DB4584(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237DB46A4()
{
  result = qword_27DEB32F8;
  if (!qword_27DEB32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32F8);
  }

  return result;
}

unint64_t sub_237DB46FC()
{
  result = qword_27DEB3300;
  if (!qword_27DEB3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3300);
  }

  return result;
}

unint64_t sub_237DB4754()
{
  result = qword_27DEB3308;
  if (!qword_27DEB3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3308);
  }

  return result;
}

unint64_t sub_237DB47AC()
{
  result = qword_27DEB3310;
  if (!qword_27DEB3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3310);
  }

  return result;
}

unint64_t sub_237DB4804()
{
  result = qword_27DEB3318;
  if (!qword_27DEB3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3318);
  }

  return result;
}

unint64_t sub_237DB485C()
{
  result = qword_27DEB3320;
  if (!qword_27DEB3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3320);
  }

  return result;
}

unint64_t sub_237DB48B4()
{
  result = qword_27DEB3328;
  if (!qword_27DEB3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3328);
  }

  return result;
}

unint64_t sub_237DB490C()
{
  result = qword_27DEB3330;
  if (!qword_27DEB3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3330);
  }

  return result;
}

unint64_t sub_237DB4964()
{
  result = qword_27DEB3338;
  if (!qword_27DEB3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3338);
  }

  return result;
}

unint64_t sub_237DB49BC()
{
  result = qword_27DEB3340;
  if (!qword_27DEB3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3340);
  }

  return result;
}

unint64_t sub_237DB4A14()
{
  result = qword_27DEB3348;
  if (!qword_27DEB3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3348);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_69()
{

  return sub_237EF98B0();
}

uint64_t OUTLINED_FUNCTION_3_71()
{

  return sub_237EF99C0();
}

uint64_t sub_237DB4AB0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_35(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_49(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_6_50(v4);

  return AudioReader.AsyncBuffers.Iterator.next()();
}

uint64_t sub_237DB4B38()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      OUTLINED_FUNCTION_14_39();
      OUTLINED_FUNCTION_13_31();
      OUTLINED_FUNCTION_11_40();
    }

    else
    {
      OUTLINED_FUNCTION_10_41();
    }

    return MEMORY[0x2822009F8](sub_237DB4C74, v8, v7);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v9();
  }
}

uint64_t sub_237DB4C74()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DB4CFC()
{
  OUTLINED_FUNCTION_12_2();
  v1[3] = v2;
  v1[4] = v0;
  if (v3)
  {
    swift_getObjectType();
    v4 = sub_237EF8AD0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[5] = v4;
  v1[6] = v6;

  return MEMORY[0x2822009F8](sub_237DB4D98, v4, v6);
}

uint64_t sub_237DB4D98()
{
  OUTLINED_FUNCTION_2_0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_237DB4E34;

  return AudioReader.MicrophoneAsyncBuffers.Iterator.next()();
}

uint64_t sub_237DB4E34()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x2822009F8](sub_237DB4F48, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v9();
  }
}

uint64_t sub_237DB4F48()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DB4FD0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_35(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_49(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_6_50(v4);

  return VideoReader.AsyncFrames.Iterator.next()();
}

uint64_t sub_237DB5058()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      OUTLINED_FUNCTION_14_39();
      OUTLINED_FUNCTION_13_31();
      OUTLINED_FUNCTION_11_40();
    }

    else
    {
      OUTLINED_FUNCTION_10_41();
    }

    return MEMORY[0x2822009F8](sub_237DB62B4, v8, v7);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v9();
  }
}

uint64_t sub_237DB5194(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_237EF8AD0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_237DB5234, v4, v6);
}

uint64_t sub_237DB5234()
{
  OUTLINED_FUNCTION_2_0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_237DB52CC;
  v2 = *(v0 + 24);

  return VideoReader.CameraAsyncBuffers.Iterator.next()(v2);
}

uint64_t sub_237DB52CC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x2822009F8](sub_237DB62B8, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v9();
  }
}

uint64_t sub_237DB53E0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_35(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_49(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_6_50(v4);

  return AudioFeaturePrint.FeatureSequence.Iterator.next()();
}

uint64_t sub_237DB5468()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_35(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_49(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_50(v4);

  return HumanBodyActionCounter.CumulativeSumSequence.Iterator.next()(v6);
}

uint64_t sub_237DB54F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_237DB557C()
{
  v0 = [objc_opt_self() authorizationStatusForMediaType_];
  if (v0 == 2 || v0 == 1)
  {
    type metadata accessor for VideoReaderError();
    sub_237DB624C(qword_27DEAFA98, 255, type metadata accessor for VideoReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    if (!v0)
    {

      return MEMORY[0x2822009F8](sub_237DB56E8, 0, 0);
    }

    OUTLINED_FUNCTION_3_0();
  }

  return v1();
}

uint64_t sub_237DB56E8()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_237DB5774;
  v1 = swift_continuation_init();
  sub_237DB593C(v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_237DB5774()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_14_0();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  OUTLINED_FUNCTION_24_0();

  return v4();
}

uint64_t VideoReader.CameraAsyncBuffers.makeAsyncIterator()()
{
  v1 = *v0;
  if ([*(*v0 + OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_captureSession) isRunning])
  {
    result = sub_237EF9740();
    __break(1u);
  }

  else
  {
    type metadata accessor for VideoReader.CameraAsyncBuffers.Iterator();
    v2 = swift_allocObject();
    sub_237DB5B58(v1);
    return v2;
  }

  return result;
}

void sub_237DB593C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277CE5EA8];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6[4] = sub_237DB6294;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_237DB54F0;
  v6[3] = &block_descriptor_3;
  v5 = _Block_copy(v6);

  [v2 requestAccessForMediaType:v3 completionHandler:v5];
  _Block_release(v5);
}

uint64_t sub_237DB5A2C(char a1, uint64_t a2)
{
  if (a1)
  {

    return MEMORY[0x282200950](a2);
  }

  else
  {
    type metadata accessor for VideoReaderError();
    sub_237DB624C(qword_27DEAFA98, 255, type metadata accessor for VideoReaderError);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    v4 = swift_allocError();
    *v5 = v3;

    return MEMORY[0x282200958](a2, v4);
  }
}

uint64_t sub_237DB5B30@<X0>(uint64_t *a1@<X8>)
{
  result = VideoReader.CameraAsyncBuffers.makeAsyncIterator()();
  *a1 = result;
  return result;
}

uint64_t sub_237DB5B58(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 30;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  v3 = a1;
  sub_237DA3188();

  return v2;
}

uint64_t VideoReader.CameraAsyncBuffers.Iterator.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  sub_237DA4068();

  return v1;
}

uint64_t VideoReader.CameraAsyncBuffers.Iterator.__deallocating_deinit()
{
  VideoReader.CameraAsyncBuffers.Iterator.deinit();

  return swift_deallocClassInstance();
}

uint64_t VideoReader.CameraAsyncBuffers.Iterator.next()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_5_63(sub_237DB5C24);
}

uint64_t sub_237DB5C24()
{
  OUTLINED_FUNCTION_12_2();
  sub_237EF8B90();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_237DB5CFC;

  return sub_237DA4684();
}

uint64_t sub_237DB5CFC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_237DB5E20, 0, 0);
  }
}

void sub_237DB5E20()
{
  v1 = v0[6];
  v2 = *(v1 + 32);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v0[3];
  v5 = v0[5];
  *(v1 + 32) = v3;
  v6 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];

  *v5 = 0xD000000000000028;
  v5[1] = 0x8000000237EFFAA0;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = 30;
  v5[5] = v6;
  OUTLINED_FUNCTION_3_0();

  v7();
}

unint64_t sub_237DB5F00(uint64_t a1)
{
  result = sub_237DB5F28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237DB5F28()
{
  result = qword_27DEB3350;
  if (!qword_27DEB3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3350);
  }

  return result;
}

uint64_t sub_237DB5FC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237C6A904;

  return VideoReader.CameraAsyncBuffers.Iterator.next()(a1);
}

uint64_t sub_237DB6060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_237DB612C;

  return (sub_237DB5194)(a1, a2, a3);
}

uint64_t sub_237DB612C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  OUTLINED_FUNCTION_24_0();

  return v7();
}

uint64_t sub_237DB624C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_13_31()
{

  return sub_237EF8AD0();
}

uint64_t OUTLINED_FUNCTION_14_39()
{

  return swift_getObjectType();
}

uint64_t sub_237DB6354(uint64_t a1)
{
  OUTLINED_FUNCTION_16_36();
  MEMORY[0x2383E2210](a1);
  return sub_237EFA170();
}

uint64_t sub_237DB6394()
{
  OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_1_77();
  sub_237EF8610();
  return sub_237EFA170();
}

uint64_t sub_237DB63F4()
{
  OUTLINED_FUNCTION_16_36();
  sub_237EF8610();
  return sub_237EFA170();
}

uint64_t sub_237DB649C(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_36();
  a2(a1);
  OUTLINED_FUNCTION_7_50();

  return sub_237EFA170();
}

uint64_t sub_237DB64EC()
{
  sub_237EF8610();
}

uint64_t sub_237DB6590(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_8_56();
  }

  sub_237EF8610();
}

uint64_t sub_237DB660C()
{
  sub_237EF8610();
}

uint64_t sub_237DB668C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_40();
  }

  sub_237EF8610();
}

uint64_t sub_237DB6714(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_2_70();
  }

  else
  {
    OUTLINED_FUNCTION_9_43();
  }

  sub_237EF8610();
}

uint64_t sub_237DB676C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_72();
  }

  sub_237EF8610();
}

uint64_t sub_237DB67E0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_12_36();
      goto LABEL_3;
    case 2:
LABEL_3:
      OUTLINED_FUNCTION_10_42();
      break;
    default:
      break;
  }

  sub_237EF8610();
}

uint64_t sub_237DB68EC()
{
  sub_237EF8610();
}

uint64_t sub_237DB6960()
{
  sub_237EF8610();
}

uint64_t sub_237DB69CC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_3_72();
      break;
    case 5:
    case 6:
      OUTLINED_FUNCTION_12_36();
      goto LABEL_4;
    case 7:
LABEL_4:
      OUTLINED_FUNCTION_10_42();
      break;
    default:
      break;
  }

  sub_237EF8610();
}

uint64_t sub_237DB6B0C()
{
  sub_237EF8610();
}

uint64_t sub_237DB6B78()
{
  OUTLINED_FUNCTION_6_51();
  OUTLINED_FUNCTION_5_64();

  return sub_237EFA170();
}

uint64_t sub_237DB6BE8(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  MEMORY[0x2383E2210](a2);
  return sub_237EFA170();
}

uint64_t sub_237DB6C2C()
{
  sub_237EFA120();
  OUTLINED_FUNCTION_1_77();
  sub_237EF8610();
  return sub_237EFA170();
}