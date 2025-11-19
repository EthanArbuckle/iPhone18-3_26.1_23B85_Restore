uint64_t sub_237DCFEBC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    v7 = sub_237C822D8;
  }

  else
  {

    v7 = sub_237DCFFC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237DCFFC8()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v9 = v0[3];
  (*(v0[20] + 32))(v1, v0[22], v2);
  (*(v5 + 32))(v4, v3, v6);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v1, v4, v2, v6, v9);

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237DD00F4(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 32))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = a3[5];
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTransformer();
    return (*(v8 + 32))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237DD025C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v34 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = *(v12 + 40);
  v35 = a1;
  v24 = v39;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v29 = v13;
    v30 = v18;
    v39 = v14;
    v26 = AssociatedTypeWitness;
    (*(v36 + 40))(v35, v38, v36);
    v27 = v30;
    v28 = v39;
    (*(v34 + 32))(v30, v22, v39);
    (*(v31 + 32))(v9, v37, v26);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v27, v9, v28, v26, v32);
  }

  return result;
}

uint64_t sub_237DD055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C92CC8;

  return sub_237DCF6AC(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t Estimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_237DD069C(a1, a2, a3, a4, a5, sub_237DCF5CC);
}

{
  return sub_237DD069C(a1, a2, a3, a4, a5, sub_237DCF510);
}

uint64_t sub_237DD069C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_19_0();
  v12 = v11;
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_1();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v9, v19);
  (*(v14 + 16))(v17, v12, v8);
  return a6(v21, v17, v9, v8, v7, v6);
}

uint64_t sub_237DD082C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237DD09F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_1_81()
{

  return swift_getWitnessTable();
}

uint64_t sub_237DD0CC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v12 = sub_237EF90F0();
  v26 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_237CBA478(a2, v29);
  v15 = *(v6 + 16);
  _s19IntermediateDecoderCMa();
  swift_allocObject();
  sub_237EF8260();
  sub_237C9FEDC(a3, v28);
  v16 = v15;
  v17 = a1;
  sub_237CB2D00(v29, MEMORY[0x277D84F90], a3, v16);
  v18 = v30;
  sub_237CB7708(a2, a1, a4, a5, v14);
  if (!v18)
  {
    v20 = v26;
    v19 = v27;
    if (__swift_getEnumTagSinglePayload(v14, 1, a4) != 1)
    {

      return (*(*(a4 - 8) + 32))(v19, v14, a4);
    }

    (*(v20 + 8))(v14, v12);
    v21 = sub_237EF93E0();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v23 = v17;
    sub_237EF93D0();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84170], v21);
    swift_willThrow();
  }
}

uint64_t sub_237DD0F4C()
{

  return swift_deallocClassInstance();
}

void sub_237DD0FB8()
{
  v1 = v0;
  v8[1] = *MEMORY[0x277D85DE8];
  sub_237EF5EC0();
  v2 = sub_237EF8560();

  v3 = [v0 fileExistsAtPath_];

  if (v3)
  {
    v4 = sub_237EF5E50();
    v8[0] = 0;
    v5 = [v1 removeItemAtURL:v4 error:v8];

    if (v5)
    {
      v6 = v8[0];
    }

    else
    {
      v7 = v8[0];
      sub_237EF5DC0();

      swift_willThrow();
    }
  }
}

uint64_t sub_237DD10BC()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  sub_237EF5EC0();
  v1 = sub_237EF8560();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v4];

  return (v2 & v4);
}

uint64_t TimeSeriesClassifier.Model.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = a5;
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  OUTLINED_FUNCTION_1_1();
  *(v8 + 144) = v12;
  *(v8 + 152) = OUTLINED_FUNCTION_27_0();
  v13 = *--v11;
  *(v8 + 160) = v13;
  *(v8 + 168) = OUTLINED_FUNCTION_27_0();
  v14 = v11[3];
  *(v8 + 176) = v14;
  v15 = v11[4];
  *(v8 + 184) = v15;
  v16 = v11[5];
  *(v8 + 192) = v16;
  v17 = v11[6];
  *(v8 + 200) = v17;
  v18 = v11[7];
  *(v8 + 208) = v18;
  v19 = v11[8];
  *(v8 + 216) = v19;
  v20 = v11[9];
  *(v8 + 224) = v20;
  v21 = v11[10];
  *(v8 + 232) = v21;
  *(v8 + 16) = v14;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  *&v23 = v18;
  *(&v23 + 1) = v19;
  *(v8 + 24) = v15;
  *(v8 + 32) = a6;
  *(v8 + 56) = v23;
  *(v8 + 40) = v22;
  *(v8 + 72) = v20;
  *(v8 + 80) = v21;
  *(v8 + 88) = a7;
  v24 = _s18PredictionSequenceVMa();
  *(v8 + 240) = v24;
  OUTLINED_FUNCTION_18(v24);
  *(v8 + 248) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_237DD12F8()
{
  v12 = v0[31];
  v14 = v0[30];
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  v13 = v0[12];
  (*(v0[20] + 16))(v1, v4, v5);
  (*(v3 + 16))(v2, v7, v6);
  sub_237DD14A4(v1, v2, *(v4 + *(v5 + 104)), v6, v12);
  v8 = type metadata accessor for ClassificationDistribution();
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:)(v12, v8, v14, WitnessTable, v13);

  OUTLINED_FUNCTION_10_3();

  return v10();
}

uint64_t sub_237DD14A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_24_25();
  v7 = type metadata accessor for TimeSeriesClassifier.Model();
  (*(*(v7 - 8) + 32))(a5, a1, v7);
  OUTLINED_FUNCTION_24_25();
  v8 = _s18PredictionSequenceVMa();
  result = (*(*(a4 - 8) + 32))(a5 + *(v8 + 100), a2, a4);
  *(a5 + *(v8 + 104)) = a3;
  return result;
}

uint64_t sub_237DD15E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return TimeSeriesClassifier.Model.applied<A>(to:eventHandler:)(a1, a2, v13, v14, a7, a5, a6);
}

uint64_t sub_237DD16B0()
{
  result = type metadata accessor for TimeSeriesClassifier.Model();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237DD175C(int *a1, unsigned int a2, uint64_t a3)
{
  v76 = sub_237EF6750();
  v90 = *(v76 - 8);
  v3 = *(v90 + 84);
  v70 = sub_237EF6930();
  v86 = *(v70 - 8);
  v4 = *(v86 + 84);
  v69 = sub_237EF6C30();
  v83 = *(v69 - 8);
  v5 = *(v83 + 84);
  v74 = v5;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v78 = v3;
  v75 = v5;
  if (v5 > v3)
  {
    v3 = v5;
  }

  v73 = sub_237EF6820();
  v81 = *(v73 - 8);
  v72 = *(v81 + 84);
  if (v72 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(v81 + 84);
  }

  v68 = sub_237EF6580();
  v7 = *(v68 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v71 = v9;
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  v79 = v6;
  v77 = v16;
  if (v16 <= v6)
  {
    v16 = v6;
  }

  v17 = *(a3 + 32);
  v18 = *(v17 - 8);
  if (v16 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v16;
  }

  v20 = *(v18 + 84);
  if (v20 <= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = *(v18 + 84);
  }

  v89 = v8;
  v22 = v8 == 0;
  v23 = *(v90 + 64);
  v24 = *(v86 + 80);
  v25 = *(v83 + 80);
  v26 = *(v86 + 64);
  v27 = *(v83 + 64);
  v28 = *(v81 + 80);
  v29 = *(v81 + 64);
  v30 = *(v7 + 80);
  v31 = *(v11 + 80);
  v32 = *(v7 + 64);
  if (v22)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = *(*(v10 - 8) + 64);
  if (v12)
  {
    v35 = 3;
  }

  else
  {
    v35 = 4;
  }

  v36 = *(v18 + 80);
  v37 = *(v18 + 64);
  if (v15)
  {
    v38 = 4;
  }

  else
  {
    v38 = 5;
  }

  if (!a2)
  {
    return 0;
  }

  v87 = v15;
  v85 = v10;
  v39 = *(v83 + 80) | v24;
  v82 = v26 + v25;
  v84 = *(v83 + 80);
  v40 = (v82 & ~v25) + v27;
  v41 = (v28 | 7) + v40;
  v42 = ((v29 + 7 + ((v29 + v28) & ~v28)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = v30 | v31 | 7;
  v44 = ((((v29 + 7 + ((v42 + v28 + ((v42 + (v28 | 7) + ((v41 + ((v40 + v39 + ((v40 + v39 + ((v23 + v39) & ~v39)) & ~v39)) & ~v39)) & ~(v28 | 7))) & ~(v28 | 7))) & ~v28)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v43 + 8;
  v45 = v33 + 3;
  v46 = (v31 + 8 + ((((((v33 + 3 + ((v30 + 16) & ~v30)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v31;
  v47 = v34 + v31;
  v48 = ((v35 + v34 + ((v34 + v31 + ((v34 + v31 + v46) & ~v31)) & ~v31)) & 0xFFFFFFFFFFFFFFFCLL) + v38 + 7;
  v49 = ((((((((((((v48 + (v44 & ~v43)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v36 + 8;
  result = a1;
  if (v21 >= a2)
  {
LABEL_58:
    if (v19 < v20)
    {
      result = (a1 + v49) & ~v36;
      v59 = v20;
      v60 = v17;
      goto LABEL_60;
    }

    if (v79 == v19)
    {
      v59 = v78;
      if (v78 == v79)
      {
        v60 = v76;
      }

      else
      {
        result = (a1 + v23 + v39) & ~v39;
        if (v75 == v79)
        {
          v59 = v4;
          if (v4 >= v74)
          {
            v60 = v70;
          }

          else
          {
            result = (v82 + result) & ~v84;
            v59 = v74;
            v60 = v69;
          }
        }

        else
        {
          result = (((v41 + ((v40 + v39 + ((result + v39 + v40) & ~v39)) & ~v39)) & ~(v28 | 7)) + v28) & ~v28;
          v59 = v72;
          v60 = v73;
        }
      }

LABEL_60:

      return __swift_getEnumTagSinglePayload(result, v59, v60);
    }

    v61 = (a1 + v44) & ~v43;
    if (v77 != v19)
    {
      v62 = *((v48 + v61) & 0xFFFFFFFFFFFFFFF8);
      if (v62 >= 0xFFFFFFFF)
      {
        LODWORD(v62) = -1;
      }

      return (v62 + 1);
    }

    if (v87 < 2)
    {
      return 0;
    }

    v63 = (v30 + ((v61 + 11) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v30;
    if (v71 == v87)
    {
      v12 = v89;
      v64 = v68;
    }

    else
    {
      v65 = (v31 + 8 + ((((((v45 + v63) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v31;
      if (v12 == v87)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, v12, v85);
LABEL_87:
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      v63 = (v47 + ((v47 + v65) & ~v31)) & ~v31;
      v64 = v85;
    }

    v67 = __swift_getEnumTagSinglePayload(v63, v12, v64);
    if (v67 >= 2)
    {
      EnumTagSinglePayload = v67 - 1;
    }

    else
    {
      EnumTagSinglePayload = 0;
    }

    goto LABEL_87;
  }

  v51 = ((v37 + (v49 & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v52 = v51 & 0xFFFFFFF8;
  if ((v51 & 0xFFFFFFF8) != 0)
  {
    v53 = 2;
  }

  else
  {
    v53 = a2 - v21 + 1;
  }

  if (v53 >= 0x10000)
  {
    v54 = 4;
  }

  else
  {
    v54 = 2;
  }

  if (v53 < 0x100)
  {
    v54 = 1;
  }

  if (v53 >= 2)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  switch(v55)
  {
    case 1:
      v56 = *(a1 + v51);
      if (!v56)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    case 2:
      v56 = *(a1 + v51);
      if (!v56)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    case 3:
      __break(1u);
      return result;
    case 4:
      v56 = *(a1 + v51);
      if (!v56)
      {
        goto LABEL_58;
      }

LABEL_55:
      v57 = v56 - 1;
      if (v52)
      {
        v57 = 0;
        v58 = *a1;
      }

      else
      {
        v58 = 0;
      }

      result = v21 + (v58 | v57) + 1;
      break;
    default:
      goto LABEL_58;
  }

  return result;
}

void sub_237DD1E84(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v82 = sub_237EF6750();
  v93 = *(v82 - 8);
  v4 = *(v93 + 84);
  v76 = sub_237EF6930();
  v91 = *(v76 - 8);
  v5 = *(v91 + 84);
  v75 = sub_237EF6C30();
  v87 = *(v75 - 8);
  v6 = *(v87 + 84);
  v78 = v6;
  v79 = v5;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v83 = v4;
  v81 = v6;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v74 = sub_237EF6820();
  v86 = *(v74 - 8);
  v80 = *(v86 + 84);
  if (v80 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v86 + 84);
  }

  v73 = sub_237EF6580();
  v9 = *(v73 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v97 = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD38);
  v12 = *(v71 - 8);
  v13 = *(v12 + 84);
  v77 = v11;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  v70 = v15;
  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  v84 = v8;
  if (v17 <= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v90 = *(a4 + 32);
  v20 = *(v90 - 8);
  v21 = *(v20 + 84);
  if (v21 <= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = *(v20 + 84);
  }

  v72 = v10;
  if (v10)
  {
    v23 = *(v9 + 64);
  }

  else
  {
    v23 = *(v9 + 64) + 1;
  }

  v24 = *(v87 + 80);
  v25 = *(v87 + 80) | *(v91 + 80);
  v94 = *(v93 + 64) + v25;
  v85 = *(v91 + 64) + v24;
  v26 = (v85 & ~v24) + *(v87 + 64);
  v27 = *(v86 + 80);
  v92 = (v27 | 7) + v26;
  v28 = *(v86 + 64);
  v29 = v28 + 7;
  v30 = ((v28 + 7 + ((v28 + v27) & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = *(v9 + 80);
  v32 = *(v12 + 80);
  v33 = v23 + 3;
  v34 = v32 + 8;
  v35 = *(*(v71 - 8) + 64);
  v36 = v35 + v32;
  v37 = (v35 + v32 + ((v35 + v32 + ((v32 + 8 + ((((((v23 + 3 + ((v31 + 16) & ~v31)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v32)) & ~v32)) & ~v32;
  if (!v13)
  {
    ++v35;
  }

  v88 = v35;
  v38 = v35 + v37;
  v39 = (v35 + v37 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v16)
  {
    v40 = 4;
  }

  else
  {
    v40 = 5;
  }

  v41 = v39 + v40;
  v42 = *(v20 + 80);
  v43 = v31 | v32 | 7;
  v44 = ((((v29 + ((v30 + v27 + ((v30 + (v27 | 7) + ((v92 + ((v26 + v25 + ((v26 + v25 + (v94 & ~v25)) & ~v25)) & ~v25)) & ~(v27 | 7))) & ~(v27 | 7))) & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v43 + 8;
  v45 = v41 + (v44 & ~v43);
  v46 = ((((((((((((v45 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v42 + 8;
  v47 = ((*(*(v90 - 8) + 64) + (v46 & ~v42) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((*(*(v90 - 8) + 64) + (v46 & ~v42) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v48 = a3 - v22 + 1;
    }

    else
    {
      v48 = 2;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 < 2)
    {
      v49 = 0;
    }

    v97 = v49;
  }

  if (a2 > v22)
  {
    if (((*(*(v90 - 8) + 64) + (v46 & ~v42) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v50 = a2 - v22;
    }

    else
    {
      v50 = 1;
    }

    if (((*(*(v90 - 8) + 64) + (v46 & ~v42) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      bzero(a1, v47);
      *a1 = ~v22 + a2;
    }

    switch(v97)
    {
      case 1:
        *(a1 + v47) = v50;
        break;
      case 2:
        *(a1 + v47) = v50;
        break;
      case 3:
        goto LABEL_113;
      case 4:
        *(a1 + v47) = v50;
        break;
      default:
        return;
    }

    return;
  }

  v51 = ~v25;
  v52 = ~v24;
  v53 = ~(v27 | 7);
  v54 = ~v43;
  v55 = ~v32;
  v56 = ~v42;
  switch(v97)
  {
    case 1:
      *(a1 + v47) = 0;
      goto LABEL_66;
    case 2:
      *(a1 + v47) = 0;
      goto LABEL_66;
    case 3:
LABEL_113:
      __break(1u);
      return;
    case 4:
      *(a1 + v47) = 0;
      goto LABEL_66;
    default:
LABEL_66:
      if (!a2)
      {
        return;
      }

      if (v19 < v21)
      {
        v57 = (a1 + v46) & v56;
        v58 = a2;
        v13 = v21;
        v59 = v90;
LABEL_69:

        __swift_storeEnumTagSinglePayload(v57, v58, v13, v59);
        return;
      }

      if (v19 < a2)
      {
        v60 = (((((((((((v45 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
        if (v60 != -8)
        {
          v61 = ~v19 + a2;
          bzero(a1, (v60 + 8));
          *a1 = v61;
        }

        return;
      }

      if (v84 == v19)
      {
        v13 = v83;
        if (v83 == v84)
        {
          v57 = a1;
          v58 = a2;
          v59 = v82;
          goto LABEL_69;
        }

        v57 = (a1 + v94) & v51;
        if (v81 == v84)
        {
          v13 = v79;
          if (v79 >= v78)
          {
            v58 = a2;
            v59 = v76;
          }

          else
          {
            v57 = (v85 + v57) & v52;
            v58 = a2;
            v13 = v78;
            v59 = v75;
          }

          goto LABEL_69;
        }

        v66 = ((v92 + ((v26 + v25 + ((v57 + v25 + v26) & v51)) & v51)) & v53);
        v13 = v80;
        if (v80 >= a2)
        {
          v57 = &v66[v27] & ~v27;
          v58 = a2;
          v59 = v74;
          goto LABEL_69;
        }

        if (v30)
        {
          v67 = ~v80 + a2;
          bzero(((v92 + ((v26 + v25 + ((v57 + v25 + v26) & v51)) & v51)) & v53), v30);
LABEL_93:
          *v66 = v67;
        }
      }

      else
      {
        v62 = ((a1 + v44) & v54);
        if (v17 != v19)
        {
          v64 = ((v62 + v41 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v64 = a2 & 0x7FFFFFFF;
            v64[1] = 0;
          }

          else
          {
            *v64 = a2 - 1;
          }

          return;
        }

        v63 = a2 - v16;
        if (a2 < v16)
        {
          v57 = (v31 + ((v62 + 11) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v31;
          if (v77 == v16)
          {
            v58 = a2 + 2;
            v13 = v72;
            v59 = v73;
            goto LABEL_69;
          }

          v57 = (v34 + ((((((v33 + v57) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & v55;
          if (v13 == v16)
          {
            v58 = a2 + 1;
          }

          else
          {
            v66 = ((v36 + ((v36 + v57) & v55)) & v55);
            if (a2 >= v70)
            {
              if (v88 <= 3)
              {
                v68 = ~(-1 << (8 * v88));
              }

              else
              {
                v68 = -1;
              }

              if (v88)
              {
                v67 = v68 & (a2 - v70);
                if (v88 <= 3)
                {
                  v69 = v88;
                }

                else
                {
                  v69 = 4;
                }

                bzero(v66, v88);
                switch(v69)
                {
                  case 2:
                    *v66 = v67;
                    break;
                  case 3:
                    *v66 = v67;
                    v66[2] = BYTE2(v67);
                    break;
                  case 4:
                    goto LABEL_93;
                  default:
                    *v66 = v67;
                    break;
                }
              }

              return;
            }

            v58 = a2 + 2;
            v57 = (v36 + ((v36 + v57) & v55)) & v55;
          }

          v59 = v71;
          goto LABEL_69;
        }

        v65 = (v38 + 3) & 0xFFFFFFFC;
        if (v65 != -4)
        {
          bzero(((a1 + v44) & v54), v65 + 4);
          *v62 = v63;
        }
      }

      return;
  }
}

void sub_237DD27B4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v33 = v4;
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v13 = *(v12 + 88);
  v31 = *(v13 + 8);
  v32 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = *(v3 + 40);
  v28 = *(v3 + 16);
  v29 = v18;
  v19 = *(v3 + 64);
  v30 = *(v3 + 56);
  v21 = *(v3 + 72);
  v20 = *(v3 + 80);
  v34 = v28;
  v35 = v18;
  v36 = v30;
  v37 = v19;
  v38 = v21;
  v39 = v20;
  type metadata accessor for TimeSeriesClassifier.Model();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v28 - v24;
  (*(v26 + 16))(&v28 - v24, v1, v23);
  (*(v7 + 16))(v11, v1 + *(v3 + 100), v5);
  sub_237EF8BC0();
  sub_237DD29D4(v25, v17, *(v1 + *(v3 + 104)), v28, *(&v28 + 1), v5, v29, *(&v29 + 1), v30, v19, v21, v20, v32, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31, v32, v33, v34, *(&v34 + 1), v35);
  OUTLINED_FUNCTION_38_0();
}

void sub_237DD29D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_37_0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v78 = v29;
  v32 = v31;
  v34 = v33;
  v85 = v35;
  v93 = v36;
  v94 = v37;
  v91 = v38;
  AssociatedTypeWitness = a25;
  sub_237EF6430();
  OUTLINED_FUNCTION_1_1();
  v89 = v40;
  v90 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5();
  v88 = v42 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v43);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  v86 = &v78 - v45;
  v46 = sub_237EF6450();
  v47 = OUTLINED_FUNCTION_18(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5();
  v82 = v49 - v48;
  v50 = sub_237EF6B10();
  v51 = OUTLINED_FUNCTION_18(v50);
  MEMORY[0x28223BE20](v51);
  v87 = &v78 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v83 = &v78 - v54;
  v55 = v34;
  v81 = v34;
  v95 = v34;
  v96 = v32;
  v97 = v30;
  v98 = v28;
  v99 = v26;
  v100 = a21;
  v101 = a22;
  v102 = a23;
  v103 = a24;
  v104 = AssociatedTypeWitness;
  v56 = _s18PredictionSequenceV13AsyncIteratorVMa();
  v57 = v91;
  *(v91 + v56[30]) = 0;
  v95 = v55;
  v96 = v32;
  v97 = v28;
  v98 = v26;
  v99 = a21;
  v100 = a22;
  v101 = a23;
  v102 = a24;
  v58 = type metadata accessor for TimeSeriesClassifier.Model();
  OUTLINED_FUNCTION_77();
  v84 = v59;
  v60 = v93;
  (*(v59 + 16))(v57, v93, v58);
  *(v57 + v56[25]) = v85;
  v61 = v56[26];
  v79 = v56;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  (*(v62 + 16))(v57 + v61, v94, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_237F04760;
  v80 = v58;
  *(v63 + 32) = *(v60 + *(v58 + 96));
  *(v63 + 40) = *(v60 + *(v58 + 92));
  sub_237D14E78();
  sub_237EF6460();
  v64 = sub_237EF64B0();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v64);
  v68 = *MEMORY[0x277D2CCC8];
  v69 = v88;
  v70 = *(v89 + 104);
  v71 = v90;
  v70(v88, v68, v90);
  sub_237EF6A60();
  sub_237EF6460();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v64);
  v70(v69, v68, v71);
  sub_237EF6A60();
  v75 = v79;
  v76 = v91;
  sub_237EF6700();
  (*(v62 + 8))(v94, AssociatedTypeWitness);
  (*(v84 + 8))(v93, v80);
  v77 = (v76 + v75[29]);
  *v77 = 0;
  v77[1] = 0xE000000000000000;
  v77[2] = 0;
  v77[3] = 0;
  v77[4] = 1;
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DD2E9C(uint64_t a1)
{
  sub_237DD27B4();
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_237DD2EFC(uint64_t a1, void *a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  OUTLINED_FUNCTION_18(v5);
  v3[22] = OUTLINED_FUNCTION_27_0();
  v3[23] = a2[2];
  v3[24] = a2[5];
  v3[25] = sub_237EF7E90();
  OUTLINED_FUNCTION_1_1();
  v3[26] = v6;
  v3[27] = OUTLINED_FUNCTION_27_0();
  v7 = sub_237EF6430();
  v3[28] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v3[29] = v8;
  v3[30] = OUTLINED_FUNCTION_27_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v9);
  v3[31] = OUTLINED_FUNCTION_27_0();
  v10 = sub_237EF6450();
  OUTLINED_FUNCTION_18(v10);
  v3[32] = OUTLINED_FUNCTION_27_0();
  v11 = sub_237EF6B10();
  v3[33] = v11;
  OUTLINED_FUNCTION_6_1(v11);
  v3[34] = v12;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v13 = sub_237EF6720();
  v3[40] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v3[41] = v14;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v15 = type metadata accessor for TemporalFeature();
  v3[44] = v15;
  v16 = sub_237EF90F0();
  v3[45] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v3[46] = v17;
  v18 = OUTLINED_FUNCTION_27_0();
  v3[47] = v18;
  v3[48] = *(v15 - 8);
  v3[49] = OUTLINED_FUNCTION_27_0();
  v3[50] = a2[11];
  v3[51] = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_task_alloc();
  v3[52] = v21;
  *v21 = v3;
  v21[1] = sub_237DD32E0;

  return MEMORY[0x282200308](v18, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_237DD32E0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DD33DC()
{
  v1 = *(v0 + 376);
  if (__swift_getEnumTagSinglePayload(v1, 1, *(v0 + 352)) == 1)
  {
    v2 = *(v0 + 152);
    (*(*(v0 + 368) + 8))(v1, *(v0 + 360));
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    OUTLINED_FUNCTION_12_39();

    OUTLINED_FUNCTION_10_3();
LABEL_5:

    return v3();
  }

  v4 = *(v0 + 424);
  v5 = OUTLINED_FUNCTION_23_30();
  v6(v5);
  sub_237DD4190();
  v7 = *(v0 + 392);
  if (v4)
  {
    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 352));
    OUTLINED_FUNCTION_14_43();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_5;
  }

  v9 = *(v0 + 168);
  v10 = *(*(v0 + 160) + 116);
  *(v0 + 448) = v10;
  v11 = v9 + v10;
  if (*(v9 + v10) != *v7 || *(v9 + v10 + 8) != v7[1])
  {
    v13 = sub_237EF9D40();
    v14 = *(v0 + 392);
    v15 = *(v0 + 160);
    v16 = *(v0 + 168);
    if ((v13 & 1) == 0)
    {
      v33 = *(v0 + 344);
      v34 = *(v0 + 328);
      v35 = *(v0 + 320);
      v32 = *(v0 + 240);
      v36 = *(v0 + 232);
      v17 = *(v0 + 224);
      *(v16 + *(v15 + 120)) = 0;
      v18 = *v14;
      v19 = v7[1];
      v31 = *(v14 + 1);
      v20 = v14[4];
      sub_237EF8260();

      *v11 = v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v31;
      *(v11 + 32) = v20;
      sub_237EF6460();
      *&v31 = sub_237EF64B0();
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v25 = *MEMORY[0x277D2CCC8];
      v26 = *(v36 + 104);
      v26(v32, v25, v17);
      sub_237EF6A60();
      sub_237EF6460();
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v31);
      v26(v32, v25, v17);
      sub_237EF6A60();
      sub_237EF6700();
      (*(v34 + 40))(v16 + *(v15 + 112), v33, v35);
    }
  }

  sub_237DD437C();
  v30 = swift_task_alloc();
  *(v0 + 432) = v30;
  *v30 = v0;
  v30[1] = sub_237DD3848;

  return sub_237DD462C();
}

uint64_t sub_237DD3848()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DD3944()
{
  v75 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v2 + *(v1 + 120));
  *(v0 + 16) = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  v70 = v6;
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  *(v0 + 56) = v8;
  *(v0 + 64) = v9;
  *(v0 + 72) = v10;
  if (v3 >= *(v2 + *(type metadata accessor for TimeSeriesClassifier.Model() + 96)))
  {
    v65 = v10;
    v69 = v9;
    v66 = v5;
    v67 = v7;
    v68 = v8;
    v12 = *(v0 + 328);
    v62 = *(v0 + 440);
    v13 = *(v0 + 312);
    v57 = *(v0 + 320);
    v14 = *(v0 + 272);
    v15 = *(v0 + 216);
    v64 = *(v0 + 264);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    (*(*(v0 + 208) + 16))(v15, v18 + *(v19 + 108), *(v0 + 200));
    sub_237D4A7B4(v15, v17, v13);
    sub_237EF6950();
    v63 = *(v14 + 8);
    v63(v13, v64);
    v20 = v18 + *(v19 + 112);
    (*(v12 + 16))(v16, v20, v57);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v57);
    sub_237C9442C();
    if (v62)
    {
      v21 = *(v0 + 384);
      v60 = *(v0 + 392);
      v22 = *(v0 + 352);
      v23 = *(v0 + 280);
      v24 = *(v0 + 264);
      sub_237DD516C(*(v0 + 176));
      v63(v23, v24);
      sub_237DD4C0C();
      (*(v21 + 8))(v60, v22);
      OUTLINED_FUNCTION_14_43();
      OUTLINED_FUNCTION_30_26(*(v0 + 240));

      OUTLINED_FUNCTION_3_0();
      goto LABEL_7;
    }

    v26 = *(v0 + 408);
    v55 = *(v0 + 392);
    v56 = *(v0 + 400);
    v53 = *(v0 + 384);
    v54 = *(v0 + 352);
    v27 = *(v0 + 328);
    v47 = *(v0 + 320);
    v48 = *(v0 + 336);
    v29 = *(v0 + 288);
    v28 = *(v0 + 296);
    v31 = *(v0 + 272);
    v30 = *(v0 + 280);
    v32 = *(v0 + 264);
    v58 = *(v0 + 184);
    v59 = *(v0 + 192);
    v61 = *(v0 + 168);
    v49 = v61 + *(v0 + 448);
    v51 = v32;
    v52 = *(v0 + 152);
    sub_237DD516C(*(v0 + 176));
    v63(v30, v32);
    v50 = v28;
    (*(v31 + 32))(v28, v29, v32);
    (*(v27 + 40))(v20, v48, v47);
    *(v0 + 128) = sub_237EF6AB0();
    v33 = swift_task_alloc();
    v33[2] = v58;
    v33[3] = v66;
    v33[4] = v26;
    v33[5] = v59;
    v33[6] = v70;
    v33[7] = v67;
    v33[8] = v68;
    v33[9] = v69;
    v33[10] = v65;
    v33[11] = v56;
    v33[12] = v61;
    v34 = swift_task_alloc();
    v34[2] = v58;
    v34[3] = v66;
    v34[4] = v26;
    v34[5] = v59;
    v34[6] = v70;
    v34[7] = v67;
    v34[8] = v68;
    v34[9] = v69;
    v34[10] = v65;
    v34[11] = v56;
    v34[12] = sub_237DD51D4;
    v34[13] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3C0);
    type metadata accessor for Classification();
    sub_237C96060();
    sub_237C9339C();
    v36 = v35;

    v37 = *(v49 + 8);
    v38 = *(v49 + 32);
    v71[0] = *v49;
    v71[1] = v37;
    v72 = *(v49 + 16);
    v73 = v38;
    *(v0 + 136) = v36;
    v39 = sub_237EF8A60();
    sub_237EF8260();
    swift_getWitnessTable();
    ClassificationDistribution.init<A>(_:)(v0 + 136, v39, v74);
    v63(v50, v51);
    *(v0 + 144) = v74[0];
    v40 = type metadata accessor for ClassificationDistribution();
    TemporalFeature.init(id:feature:)(v71, v0 + 144, v40, v0 + 80);
    v41 = *(v0 + 88);
    v42 = *(v0 + 112);
    v43 = *(v0 + 120);
    v44 = *(v0 + 96);
    *v52 = *(v0 + 80);
    *(v52 + 8) = v41;
    *(v52 + 16) = v44;
    *(v52 + 32) = v42;
    *(v52 + 40) = v43;
    sub_237DD4C0C();
    (*(v53 + 8))(v55, v54);
  }

  else
  {
    v11 = *(v0 + 152);
    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 352));
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
  }

  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_30_26(v45);

  OUTLINED_FUNCTION_10_3();
LABEL_7:

  return v25();
}

uint64_t sub_237DD3FA8()
{
  OUTLINED_FUNCTION_8_57();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DD4090()
{
  (*(v0[48] + 8))(v0[49], v0[44]);
  OUTLINED_FUNCTION_8_57();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DD4190()
{
  sub_237EF7E90();
  v1 = sub_237EF7E20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v3 = *(v0 + *(type metadata accessor for TimeSeriesClassifier.Model() + 92));
  *(inited + 32) = v3;
  v4 = sub_237C60C7C(v1, inited);

  result = swift_setDeallocating();
  if ((v4 & 1) == 0)
  {
    v6 = sub_237EF7E20();
    sub_237EF9330();

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_237F03530;
    *(v7 + 32) = v3;
    v8 = MEMORY[0x2383E0A10]();
    v10 = v9;

    MEMORY[0x2383E0710](v8, v10);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237C84150();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = 0xD00000000000001CLL;
    *(v11 + 16) = 0x8000000237EFFCB0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 6;
    return swift_willThrow();
  }

  return result;
}

void sub_237DD437C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v26 = v4;
  v5 = v2[1].n128_u64[0];
  v6 = v2[2].n128_u64[1];
  OUTLINED_FUNCTION_34_0();
  sub_237EF7EE0();
  OUTLINED_FUNCTION_1_1();
  v24 = v8;
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237F04760;
  v22 = v3[7].n128_i32[2];
  v13 = *(v1 + v22);
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3698);
  *(v12 + 64) = sub_237C96710(qword_27DEB36A0, &qword_27DEB3698);
  *(v12 + 32) = v13;
  *(v12 + 40) = v13;
  v23 = v13;
  v14 = v3[1].n128_u64[1];
  v27 = v5;
  v28 = v14;
  v29 = v6;
  v15 = *(v1 + *(OUTLINED_FUNCTION_21_31(v3[3], v3[4]) + 92));
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
  OUTLINED_FUNCTION_6_15();
  *(v12 + 104) = sub_237C96710(v16, &qword_27DEADDA0);
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v12 + 72) = 0;
  *(v12 + 80) = v15;
  sub_237EF7E90();
  type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v17 = v26;
  sub_237EF7FC0();
  v18 = v25;
  sub_237EF7EC0();
  (*(v24 + 8))(v10, v18);
  sub_237EF7FB0();
  v19 = v1 + v3[7].n128_i32[1];
  v20 = *(v17 + 24);
  if (v20 < *(v19 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v19 + 24) = v20;
  if (!__OFADD__(v23, 1))
  {
    *(v1 + v22) = v23 + 1;
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_237DD462C()
{
  OUTLINED_FUNCTION_2_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = *(v2 + 16);
  v1[13] = *(v2 + 40);
  sub_237EF7E90();
  v3 = type metadata accessor for TemporalFeature();
  v1[14] = v3;
  OUTLINED_FUNCTION_34_0();
  v4 = sub_237EF90F0();
  v1[15] = v4;
  OUTLINED_FUNCTION_6_1(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_27_0();
  v1[18] = *(v3 - 8);
  v1[19] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237DD4748()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 120);
  *(v0 + 16) = *(v0 + 96);
  v3 = *(v0 + 104);
  *(v0 + 176) = v2;
  v4 = *(v1 + 80);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  *(v0 + 24) = *(v1 + 24);
  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 56) = v6;
  *(v0 + 72) = v4;
  OUTLINED_FUNCTION_34_0();
  v7 = *(type metadata accessor for TimeSeriesClassifier.Model() + 96);
  *(v0 + 180) = v7;
  if (*(*(v0 + 88) + *(v0 + 176)) >= *(*(v0 + 88) + v7))
  {

    OUTLINED_FUNCTION_10_3();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_17_36();
    OUTLINED_FUNCTION_34_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_29_19();
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_1_82(v8);

    return MEMORY[0x282200308](v9, v10, v11);
  }
}

uint64_t sub_237DD48B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DD49AC()
{
  v1 = *(v0 + 136);
  if (__swift_getEnumTagSinglePayload(v1, 1, *(v0 + 112)) == 1)
  {
    (*(*(v0 + 128) + 8))(v1, *(v0 + 120));
    goto LABEL_3;
  }

  v3 = *(v0 + 168);
  v4 = OUTLINED_FUNCTION_23_30();
  v5(v4);
  sub_237DD4190();
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 112);
  if (v3)
  {
    (*(v7 + 8))(*(v0 + 152), *(v0 + 112));

    OUTLINED_FUNCTION_3_0();
    goto LABEL_6;
  }

  sub_237DD437C();
  (*(v7 + 8))(v6, v8);
  if (*(*(v0 + 88) + *(v0 + 176)) >= *(*(v0 + 88) + *(v0 + 180)))
  {
LABEL_3:

    OUTLINED_FUNCTION_10_3();
LABEL_6:

    return v2();
  }

  OUTLINED_FUNCTION_17_36();
  OUTLINED_FUNCTION_34_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29_19();
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_1_82();

  return MEMORY[0x282200308](v11, v12, v13);
}

uint64_t sub_237DD4BA4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DD4C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, float a9@<S0>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a5;
  v27 = a6;
  v28 = a2;
  v29 = a1;
  v25 = a8;
  v16 = sub_237EF90F0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v24 - v21;
  v30 = a3;
  v31 = a4;
  v32 = v26;
  v33 = v27;
  v34 = a7;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  type metadata accessor for TimeSeriesClassifier.Model();
  sub_237EF8260();
  sub_237EF8260();
  sub_237E5E174(v29, a4, v22);

  (*(v17 + 16))(v19, v22, v16);
  result = __swift_getEnumTagSinglePayload(v19, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 8))(v22, v16);
    return Classification.init(label:probability:)(v19, a4, v25, a9);
  }

  return result;
}

void sub_237DD4E4C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v4 = v2[2].n128_u64[1];
  v29 = v2[1].n128_u64[0];
  v5 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237F04760;
  v10 = v3[7].n128_i32[2];
  v11 = *(v0 + v10);
  v12 = *(v1 + v3[6].n128_i32[1]);
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v9;
  v27 = xmmword_237F04760;
  v26[0] = v10;
  v26[1] = v8;
  v28 = v11 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
  v13[7] = v14;
  OUTLINED_FUNCTION_6_15();
  v16 = sub_237C96710(v15, &qword_27DEADDA0);
  v17 = v28;
  v13[8] = v16;
  if (v17 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16;
  v13[4] = 0;
  v13[5] = v17;
  v19 = v3[1].n128_u64[1];
  v30 = v29;
  v31 = v19;
  v32 = v4;
  v20 = *(v1 + *(OUTLINED_FUNCTION_21_31(v3[3], v3[4]) + 92));
  v13[12] = v14;
  v13[13] = v18;
  if (v20 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13[9] = 0;
  v13[10] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  *(v21 + 56) = v14;
  *(v21 + 64) = v18;
  if (v11 < v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v21 + 32) = v12;
  *(v21 + 40) = v11;
  *(v21 + 96) = v14;
  *(v21 + 104) = v18;
  *(v21 + 72) = 0;
  *(v21 + 80) = v20;
  sub_237EF7E90();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237EF7FA0();

  sub_237EF7FB0();
  *(v1 + v26[0]) = v28;
  v22 = v1 + v3[7].n128_i32[1];
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, v12);
  v25 = v23 + v12;
  if (v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v22 + 24) >= v25)
  {
    *(v22 + 16) = v25;
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_237DD5088(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237C6A904;

  return sub_237DD2EFC(a1, a2);
}

uint64_t sub_237DD5130(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DD516C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237DD5268()
{
  result = type metadata accessor for TimeSeriesClassifier.Model();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = sub_237EF7E90();
      if (v3 <= 0x3F)
      {
        result = sub_237EF6720();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_57()
{
}

uint64_t OUTLINED_FUNCTION_21_31(__n128 a1, __n128 a2)
{
  *(v3 - 120) = a1;
  *(v3 - 104) = a2;
  *(v3 - 88) = v2;

  return type metadata accessor for TimeSeriesClassifier.Model();
}

uint64_t OUTLINED_FUNCTION_22_29()
{

  return sub_237EF7E90();
}

uint64_t OUTLINED_FUNCTION_29_19()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_30_26@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 168) = v1;
  *(v3 - 160) = a1;
  v5 = *(v2 + 176);
  *(v3 - 152) = *(v2 + 216);
  *(v3 - 144) = v5;
}

uint64_t TemporalAdaptor.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  OUTLINED_FUNCTION_1_1();
  v8[10] = v11;
  v8[11] = *(v12 + 64);
  v8[12] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v8[13] = v13;
  v8[14] = swift_task_alloc();
  v8[15] = *(a5 + 24);
  v8[16] = *(a5 + 16);
  v8[17] = swift_getAssociatedTypeWitness();
  v8[18] = type metadata accessor for TemporalFeature();
  v8[19] = *(a7 + 8);
  v14 = sub_237EF9AE0();
  v8[20] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v8[21] = v15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DD57B4, 0, 0);
}

uint64_t sub_237DD57B4()
{
  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[20];
  v21 = v0[23];
  v26 = v0[17];
  v18 = v0[16];
  v19 = v0[15];
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v20 = v0[5];
  v25 = v0[2];
  (*(v0[13] + 16))();
  (*(v2 + 16))(v1, v4, v6);
  v9 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = v18;
  *(v11 + 3) = v7;
  *(v11 + 4) = v19;
  *(v11 + 5) = v5;
  (*(v2 + 32))(&v11[v9], v1, v6);
  v12 = &v11[v10];
  *v12 = v8;
  v12[1] = v20;
  sub_237C70604(v8);
  sub_237EF8BD0();

  (*(v22 + 16))(v23, v21, v24);
  v13 = (*(v5 + 24))(v7);
  LOBYTE(v6) = v14;
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:count:)(v23, v13, v6 & 1, v26, v24, WitnessTable, v25);
  (*(v22 + 8))(v21, v24);

  OUTLINED_FUNCTION_3_0();

  return v16();
}

uint64_t sub_237DD5A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a6;
  v8[13] = a8;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  v8[14] = swift_getAssociatedTypeWitness();
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DD5AE0, 0, 0);
}

uint64_t sub_237DD5AE0()
{
  v16 = *(v0 + 104);
  v1 = *(v0 + 64);
  v2 = *v1;
  v3 = v1[1];
  *(v0 + 128) = v3;
  v4 = v1[4];
  v5 = *(v1 + 1);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  swift_getAssociatedTypeWitness();
  v6 = *(type metadata accessor for TemporalFeature() + 28);
  v7 = *(v16 + 24);
  sub_237EF8260();
  v15 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_237DD5C64;
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return v15(v9, v1 + v6, v12, v13, v10, v11);
}

uint64_t sub_237DD5C64()
{
  OUTLINED_FUNCTION_2_0();
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v2 = v5;
  *(v5 + 144) = v0;

  if (v0)
  {

    v3 = sub_237DD5DE4;
  }

  else
  {
    v3 = sub_237DD5D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237DD5D74()
{
  OUTLINED_FUNCTION_2_0();
  TemporalFeature.init(id:feature:)((v0 + 2), v0[15], v0[14], v0[7]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DD5DE4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DD5E58(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = v2[2];
  v19 = v2[3];
  v8 = v2[4];
  v9 = type metadata accessor for TemporalAdaptor();
  OUTLINED_FUNCTION_6_1(v9);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = (v2 + ((*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_237CEF6D4;

  return sub_237DD5A24(a1, a2, v2 + v11, v14, v15, v7, v19, v8);
}

uint64_t sub_237DD5FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237CEF6D4;

  return TemporalAdaptor.applied<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t Transformer.adaptedAsTemporal()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  return (*(v5 + 32))(a2, v9, a1);
}

uint64_t sub_237DD61A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237DD62E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void sub_237DD64E8(char *a1)
{
  v3 = v1;
  v4 = a1[2];
  v9 = *a1;
  v5 = sub_237DD6774(&v9);
  if (!v2)
  {
    v6 = v5;
    [v3 setSessionPreset_];
    objc_allocWithZone(MEMORY[0x277CE5AD8]);
    v7 = v6;
    v8 = sub_237DD6CD0(v7);
    if ([v3 canAddInput_])
    {
      [v3 addInput_];
    }

    else
    {
      type metadata accessor for VideoReaderError();
      sub_237DD70A8();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

void sub_237DD660C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 1);
  v8 = [objc_allocWithZone(MEMORY[0x277CE5B60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150);
  if (v7)
  {
    v9 = 875704422;
  }

  else
  {
    v9 = 1111970369;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = sub_237EF8590();
  *(inited + 40) = v11;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v9;
  v12 = sub_237EF8230();
  sub_237DD7028(v12, v8);
  [v8 setAlwaysDiscardsLateVideoFrames_];
  if ([v4 canAddOutput_])
  {
    [v4 addOutput_];
  }

  [v8 setSampleBufferDelegate:a2 queue:a3];
}

uint64_t sub_237DD6774(char *a1)
{
  v32 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_237F15930;
  v2 = *MEMORY[0x277CE5878];
  v3 = *MEMORY[0x277CE5870];
  *(v1 + 32) = *MEMORY[0x277CE5878];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x277CE5850];
  v5 = *MEMORY[0x277CE5860];
  *(v1 + 48) = *MEMORY[0x277CE5850];
  *(v1 + 56) = v5;
  v6 = *MEMORY[0x277CE5840];
  v7 = *MEMORY[0x277CE5848];
  *(v1 + 64) = *MEMORY[0x277CE5840];
  *(v1 + 72) = v7;
  v8 = *MEMORY[0x277CE5880];
  v33 = *MEMORY[0x277CE5888];
  v9 = *MEMORY[0x277CE5888];
  *(v1 + 80) = *MEMORY[0x277CE5880];
  *(v1 + 88) = v9;
  v34 = *MEMORY[0x277CE5890];
  *(v1 + 96) = *MEMORY[0x277CE5890];
  sub_237C75918(0, &qword_27DEB37B0);
  v10 = *MEMORY[0x277CE5EA8];
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v33;
  v19 = v34;
  v20 = v10;
  v35 = sub_237DD6B08(v1, v10, 0);
  v21 = [v35 devices];
  sub_237C75918(0, &qword_27DEB37B8);
  v22 = sub_237EF8910();

  v23 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  result = sub_237D6DA5C(v22);
  v25 = result;
  for (i = 0; v25 != i; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383E1490](i, v22);
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      result = *(v22 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    MEMORY[0x2383E09D0](result);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_237EF8980();
    }

    result = sub_237EF89F0();
    v23 = v36;
  }

  v37 = v23;
  v27 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v27)
  {
    v28 = v27;
    sub_237DD6FD0(0, v23);
    result = sub_237D6A77C(v23);
    if (result < 0)
    {
      goto LABEL_20;
    }

    v29 = sub_237D6DA5C(v23);
    v30 = __OFADD__(v29, 1);
    result = v29 + 1;
    if (v30)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    sub_237E4BF14(result, 1);
    sub_237DD6E90(0, 0, 1, v28);
    v23 = v37;
  }

  LOBYTE(v36) = v32;
  v31 = sub_237DD6B98(&v36, v23);

  if (!v31)
  {
    type metadata accessor for VideoReaderError();
    sub_237DD70A8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v31;
}

id sub_237DD6B08(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for DeviceType(0);
  v5 = sub_237EF8900();

  v6 = [swift_getObjCClassFromMetadata() discoverySessionWithDeviceTypes:v5 mediaType:a2 position:a3];

  return v6;
}

id sub_237DD6B98(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *a1;
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_21:
  v4 = sub_237EF9710();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = 0;
  v6 = a2 & 0xC000000000000001;
  do
  {
    if (v6)
    {
      v7 = MEMORY[0x2383E1490](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = [v7 position];
    if (v10 == 1)
    {
      if (v3)
      {
        return v8;
      }
    }

    else if (v10 == 2 && (v3 & 1) == 0)
    {
      return v8;
    }

    ++v5;
  }

  while (v9 != v4);
  sub_237C85538(0, v6 == 0, a2);
  if (v6)
  {
    return MEMORY[0x2383E1490](0, a2);
  }

  else
  {
    return *(a2 + 32);
  }
}

id sub_237DD6CD0(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [v2 initWithDevice:a1 error:v8];
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

uint64_t sub_237DD6D98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_15;
  }

  result = sub_237D0CC78((v9 + 32 + 40 * a2), v13 - a2, (v10 + 40 * a3));
  v14 = *(v9 + 16);
  v11 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
}

void sub_237DD6E90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_237C75918(0, &qword_27DEB37B8);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_237EF9710();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_237D0D048((v8 + 8 * v6), &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_237EF9710();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_237DD6FD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_237EF9710();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_237DD7028(uint64_t a1, void *a2)
{
  v3 = sub_237EF8200();

  [a2 setVideoSettings_];
}

unint64_t sub_237DD70A8()
{
  result = qword_27DEAFA98[0];
  if (!qword_27DEAFA98[0])
  {
    type metadata accessor for VideoReaderError();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAFA98);
  }

  return result;
}

void *sub_237DD7100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_237D2FC30();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_237DD7148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_237D2FC30();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  sub_237EF8260();
  return v6;
}

void *sub_237DD71C8(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v8 = sub_237D2FC80(a1);
      if (v9)
      {
        v7 = *(*(a2 + 56) + 8 * v8);
        v10 = v7;
        return v7;
      }
    }

    return 0;
  }

  v5 = a1;
  v6 = sub_237EF9720();

  if (!v6)
  {
    return 0;
  }

  sub_237C75918(0, a3);
  swift_dynamicCast();
  return v12;
}

uint64_t sub_237DD7298@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_237D2FC30(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for TensorDescription();
    OUTLINED_FUNCTION_4();
    sub_237DDA78C(v7 + *(v9 + 72) * v6, a2, type metadata accessor for TensorDescription);
    OUTLINED_FUNCTION_29();
    v13 = v8;
  }

  else
  {
    type metadata accessor for TensorDescription();
    OUTLINED_FUNCTION_37_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_237DD734C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_237D2FC30();
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237DD73A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_237D2FC30(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_237EF70E0();
    OUTLINED_FUNCTION_4();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    OUTLINED_FUNCTION_29();
    v13 = v8;
  }

  else
  {
    sub_237EF70E0();
    OUTLINED_FUNCTION_37_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

double sub_237DD7458@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_237D2FC30(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_237CBA478(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t ColumnSelectorTransformer.init(transformers:columnMapping:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ColumnSelectorTransformer.transformers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ColumnSelectorTransformer.columnMapping.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ColumnSelectorTransformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 88) = a5[4];
  v8 = a5[2];
  *(v6 + 96) = v8;
  *(v6 + 104) = swift_getAssociatedTypeWitness();
  v9 = sub_237EF6290();
  *(v6 + 112) = v9;
  OUTLINED_FUNCTION_6_1(v9);
  *(v6 + 120) = v10;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = a5[3];
  v11 = sub_237EF6290();
  *(v6 + 144) = v11;
  OUTLINED_FUNCTION_6_1(v11);
  *(v6 + 152) = v12;
  *(v6 + 160) = swift_task_alloc();
  v13 = sub_237EF6310();
  *(v6 + 168) = v13;
  OUTLINED_FUNCTION_6_1(v13);
  *(v6 + 176) = v14;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = *(v8 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_getTupleTypeMetadata2();
  v15 = sub_237EF90F0();
  *(v6 + 232) = v15;
  OUTLINED_FUNCTION_6_1(v15);
  *(v6 + 240) = v16;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = *v5;
  sub_237EF8260();

  return MEMORY[0x2822009F8](sub_237DD7824, 0, 0);
}

uint64_t sub_237DD7824()
{
  v4 = *(v0 + 264);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = sub_237EF61A0();
  *(v0 + 280) = v7;
  v8 = *(v7 - 8);
  *(v0 + 288) = v8;
  (*(v8 + 16))(v5, v6, v7);
  v9 = *(v4 + 32);
  *(v0 + 360) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v4 + 64);
  if (v12)
  {
    v13 = 0;
    v14 = *(v0 + 264);
LABEL_8:
    v17 = *(v0 + 248);
    v18 = *(v0 + 216);
    v5 = *(v0 + 224);
    v19 = *(v0 + 200);
    v20 = *(v0 + 96);
    v21 = (v12 - 1) & v12;
    v22 = __clz(__rbit64(v12)) | (v13 << 6);
    v23 = (*(v14 + 48) + 16 * v22);
    v3 = *v23;
    v1 = v23[1];
    (*(v19 + 16))(v18, *(v14 + 56) + *(v19 + 72) * v22, v20);
    v24 = *(v5 + 48);
    *v17 = v3;
    *(v17 + 1) = v1;
    v25 = *(v19 + 32);
    v2 = v19 + 32;
    v25(&v17[v24], v18, v20);
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v5);
    sub_237EF8260();
    v16 = v13;
  }

  else
  {
    v15 = 0;
    v16 = ((63 - v11) >> 6) - 1;
    while (v16 != v15)
    {
      v13 = v15 + 1;
      v14 = *(v0 + 264);
      v12 = *(v14 + 8 * v15++ + 72);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    v21 = 0;
  }

  *(v0 + 296) = v21;
  *(v0 + 304) = v16;
  v29 = OUTLINED_FUNCTION_33_15();
  v30(v29);
  v31 = OUTLINED_FUNCTION_23_0();
  if (__swift_getEnumTagSinglePayload(v31, v32, v5) == 1)
  {
    OUTLINED_FUNCTION_5_69();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_21;
  }

  v33 = OUTLINED_FUNCTION_10_46();
  v34(v33);
  sub_237EF8B90();
  *(v0 + 328) = sub_237EF60D0();
  if (v39)
  {
    OUTLINED_FUNCTION_24_26();
    OUTLINED_FUNCTION_3_23();
    v40 = swift_allocError();
    OUTLINED_FUNCTION_2_72(v40, v41);
    OUTLINED_FUNCTION_45_10(v42, v43, v44, v45, v46, v47, v48, v49, v70, v71, v72, v73, v74, v75, v76, v78, v80, v81);

    (*(v3 + 8))(v21, v2);
    (*(v1 + 8))(v77, v79);
LABEL_20:
    OUTLINED_FUNCTION_5_69();

    OUTLINED_FUNCTION_3_0();
LABEL_21:
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_25_24();
  sub_237EF62F0();
  v50 = *(v2 + 8);
  v51 = OUTLINED_FUNCTION_55_1();
  v50(v51);
  if (!swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_8_58();
    v62 = sub_237EF62F0();
    v63 = OUTLINED_FUNCTION_55_1();
    v50(v63);
    *(v0 + 16) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAF578);
    sub_237EF85D0();
    *(v0 + 24) = OUTLINED_FUNCTION_46_12();
    swift_getMetatypeMetadata();
    sub_237EF85D0();
    sub_237CD1200();
    OUTLINED_FUNCTION_3_23();
    v64 = swift_allocError();
    OUTLINED_FUNCTION_2_72(v64, v65);
    OUTLINED_FUNCTION_36_14(v66, v67);

    (*(v73 + 8))();
    (*(v76 + 8))();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_34_10();
  v52 = swift_task_alloc();
  OUTLINED_FUNCTION_7_53(v52);
  MEMORY[0] = v0;
  OUTLINED_FUNCTION_6_55();
  OUTLINED_FUNCTION_68_2();

  return Transformer.applied<A>(to:eventHandler:)(v53, v54, v55, v56, v57, v58, v59);
}

uint64_t sub_237DD7CD8(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  (*(v3[19] + 8))(v3[20], v3[18]);
  if (v1)
  {

    v4 = sub_237DD8404;
  }

  else
  {
    v4 = sub_237DD7E28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237DD7E28()
{
  v2 = sub_237DD7148(*(v0 + 312), *(v0 + 320), *(v0 + 272));
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    sub_237EF60D0();
    v6 = *(v0 + 344);
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = (*(v0 + 120) + 8);
    if (v10)
    {
      *(v0 + 40) = v6;
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_35_12();
      sub_237EF6110();
    }

    else
    {
      *(v0 + 48) = v6;
      sub_237EF8A60();
      sub_237EF8260();
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_35_12();
      sub_237EF60E0();
    }

    (*v9)(v7, v8);
  }

  else
  {
    *(v0 + 32) = *(v0 + 344);
    v4 = *(v0 + 184);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v9 = *(v0 + 104);
    v13 = *(v0 + 112);
    v80 = *(v0 + 56);
    v5 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    sub_237EF6220();
    sub_237EF6200();
    v14 = *(v12 + 8);
    v1 = v12 + 8;
    v14(v11, v13);
    sub_237EF6140();
  }

  result = (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 96));
  v82 = *(v0 + 352);
  v16 = *(v0 + 296);
  v17 = *(v0 + 304);
  if (v16)
  {
    v18 = *(v0 + 264);
    goto LABEL_13;
  }

  do
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= (((1 << *(v0 + 360)) + 63) >> 6))
    {
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
      v23 = 0;
      goto LABEL_14;
    }

    v18 = *(v0 + 264);
    v16 = *(v18 + 8 * v19 + 64);
    ++v17;
  }

  while (!v16);
  v17 = v19;
LABEL_13:
  v20 = *(v0 + 248);
  v21 = *(v0 + 216);
  v5 = *(v0 + 224);
  v22 = *(v0 + 200);
  v4 = *(v0 + 96);
  v23 = (v16 - 1) & v16;
  v24 = __clz(__rbit64(v16)) | (v17 << 6);
  v25 = *(v18 + 48) + 16 * v24;
  v9 = *v25;
  v26 = *(v25 + 8);
  (*(v22 + 16))(v21, *(v18 + 56) + *(v22 + 72) * v24, v4);
  v27 = *(v5 + 48);
  *v20 = v9;
  *(v20 + 1) = v26;
  v28 = *(v22 + 32);
  v1 = v22 + 32;
  v28(&v20[v27], v21, v4);
  OUTLINED_FUNCTION_29();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v5);
  sub_237EF8260();
LABEL_14:
  *(v0 + 296) = v23;
  *(v0 + 304) = v17;
  v32 = OUTLINED_FUNCTION_33_15();
  v33(v32);
  v34 = OUTLINED_FUNCTION_23_0();
  if (__swift_getEnumTagSinglePayload(v34, v35, v5) == 1)
  {
    OUTLINED_FUNCTION_5_69();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_27;
  }

  v36 = OUTLINED_FUNCTION_10_46();
  v37(v36);
  sub_237EF8B90();
  if (v82)
  {
    OUTLINED_FUNCTION_17_37();

    v38 = OUTLINED_FUNCTION_55_1();
    v39(v38);
    v9[1](v17, v82);
LABEL_26:
    OUTLINED_FUNCTION_5_69();

    OUTLINED_FUNCTION_3_0();
LABEL_27:
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 328) = sub_237EF60D0();
  if (v44)
  {
    OUTLINED_FUNCTION_24_26();
    OUTLINED_FUNCTION_3_23();
    v45 = swift_allocError();
    OUTLINED_FUNCTION_2_72(v45, v46);
    OUTLINED_FUNCTION_45_10(v47, v48, v49, v50, v51, v52, v53, v54, v74, v75, v76, v77, v78, v79, v80, 0, v84, v85);

    (*(v1 + 8))(v17, v9);
    (*(v4 + 8))(v81, v83);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_25_24();
  sub_237EF62F0();
  v55 = v9[1];
  v56 = OUTLINED_FUNCTION_55_1();
  v55(v56);
  if (!swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_8_58();
    v66 = sub_237EF62F0();
    v67 = OUTLINED_FUNCTION_55_1();
    v55(v67);
    *(v0 + 16) = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAF578);
    sub_237EF85D0();
    *(v0 + 24) = OUTLINED_FUNCTION_46_12();
    swift_getMetatypeMetadata();
    sub_237EF85D0();
    sub_237CD1200();
    OUTLINED_FUNCTION_3_23();
    v68 = swift_allocError();
    OUTLINED_FUNCTION_2_72(v68, v69);
    OUTLINED_FUNCTION_36_14(v70, v71);

    (*(v77 + 8))();
    (*(v80 + 8))(v78, 0);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_34_10();
  v57 = swift_task_alloc();
  OUTLINED_FUNCTION_7_53(v57);
  MEMORY[0] = v0;
  OUTLINED_FUNCTION_6_55();
  OUTLINED_FUNCTION_68_2();

  return Transformer.applied<A>(to:eventHandler:)(v58, v59, v60, v61, v62, v63, v64);
}

uint64_t sub_237DD8404()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[12];
  v6 = v0[7];

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v6, v1);
  OUTLINED_FUNCTION_5_69();

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237DD8500(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F66736E617274 && a2 == 0xEC0000007372656DLL;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614D6E6D756C6F63 && a2 == 0xED0000676E697070)
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

uint64_t sub_237DD85D4(char a1)
{
  if (a1)
  {
    return 0x614D6E6D756C6F63;
  }

  else
  {
    return 0x726F66736E617274;
  }
}

uint64_t sub_237DD8634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DD8500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DD8668(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DD86BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237DD8710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C90C10;

  return ColumnSelectorTransformer.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t ColumnSelectorTransformer.debugDescription.getter()
{
  sub_237EF8260();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000028, 0x8000000237EFFCE0);
  sub_237EF82B0();
  swift_getWitnessTable();
  sub_237EF9D00();

  MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFD10);
  v0 = sub_237EF8220();
  MEMORY[0x2383E0710](v0);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t ColumnSelectorTransformer<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = *(a2 + 16);
  v17 = a4;
  type metadata accessor for ColumnSelectorTransformer.CodingKeys();
  OUTLINED_FUNCTION_9_45();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v18 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v11 = *v4;
  v16[0] = v4[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EF8260();
  v12 = v6;
  sub_237EFA1B0();
  v23 = v11;
  v22 = 0;
  sub_237EF82B0();
  v20 = MEMORY[0x277D837D8];
  v21 = v17;
  swift_getWitnessTable();
  v13 = v19;
  sub_237EF9A70();
  if (v13)
  {

    return (*(v18 + 8))(v10, v6);
  }

  else
  {
    v15 = v18;

    v23 = v16[0];
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37C0);
    sub_237DD8E28(&qword_27DEB37C8);
    sub_237EF9A70();
    return (*(v15 + 8))(v10, v12);
  }
}

uint64_t ColumnSelectorTransformer<>.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ColumnSelectorTransformer.CodingKeys();
  OUTLINED_FUNCTION_9_45();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_237EF82B0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_28_21();
  sub_237EF9970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37C0);
  sub_237DD8E28(qword_27DEB37D0);
  OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_28_21();
  sub_237EF9970();
  v5 = OUTLINED_FUNCTION_26_17();
  v6(v5);
  *a2 = v9;
  a2[1] = v9;
  sub_237EF8260();
  sub_237EF8260();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237DD8E28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB37C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_237DD8ED8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v282 = a2;
  v260 = a3;
  sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v257 = v6;
  v258 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  v259 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3858);
  MEMORY[0x28223BE20](v8 - 8);
  v256 = &v253 - v9;
  OUTLINED_FUNCTION_12_1();
  v305 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v296 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v303 = v12;
  OUTLINED_FUNCTION_12_1();
  v13 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v264 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v254 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_1();
  v294 = v18;
  OUTLINED_FUNCTION_12_1();
  v304 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v293 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v288 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v287 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v255 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_1();
  v263 = v27;
  OUTLINED_FUNCTION_12_1();
  v261 = type metadata accessor for CoreMLPackage();
  OUTLINED_FUNCTION_1();
  v292 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_2();
  v265 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_16();
  v266 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_16();
  v262 = v34;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_16();
  v307 = v36;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  v39 = &v253 - v38;
  v40 = *(a1 + 16);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_2();
  v284 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_1();
  v269 = v45;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v274 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_2();
  v278 = v49;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_22_1();
  v277 = v51;
  v52 = *v3;
  v286 = v3[1];
  OUTLINED_FUNCTION_28_21();
  v321[0] = sub_237EF8260();
  v290 = v40;
  OUTLINED_FUNCTION_28_21();
  sub_237EF8250();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_21();
  v324 = sub_237EF8D00();
  v53 = v52 + 64;
  v54 = 1 << *(v52 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v52 + 64);
  v275 = (v54 + 63) >> 6;
  v268 = v41 + 16;
  v283 = (v41 + 32);
  v272 = v282 + 8;
  v273 = (v47 + 32);
  v57 = v293;
  v315 = (v293 + 16);
  v310 = (v264 + 88);
  LODWORD(v309) = *MEMORY[0x277D253C8];
  v308 = (v264 + 8);
  v301 = v296 + 8;
  v302 = v296 + 16;
  v58 = v39;
  v59 = v263;
  v60 = v304;
  v291 = (v293 + 24);
  v314 = (v293 + 8);
  v270 = v41;
  v271 = v41 + 8;
  v276 = v52;
  v61 = v58;
  sub_237EF8260();
  v62 = 0;
  v316 = MEMORY[0x277D84F90];
  v295 = v13;
  v267 = v53;
  v298 = v61;
  while (1)
  {
    if (v56)
    {
      v63 = v56;
      v280 = v62;
      v64 = v62;
LABEL_11:
      v281 = (v63 - 1) & v63;
      v68 = __clz(__rbit64(v63)) | (v64 << 6);
      v69 = (*(v276 + 48) + 16 * v68);
      v71 = *v69;
      v70 = v69[1];
      v72 = v269;
      v73 = v270;
      v74 = v290;
      (*(v270 + 16))(v269, *(v276 + 56) + *(v270 + 72) * v68, v290);
      v76 = v278;
      v75 = TupleTypeMetadata2;
      v77 = *(TupleTypeMetadata2 + 48);
      *v278 = v71;
      v76[1] = v70;
      v78 = v74;
      v66 = v76;
      v65 = v75;
      (*(v73 + 32))(v76 + v77, v72, v78);
      OUTLINED_FUNCTION_29();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v65);
      sub_237EF8260();
      v67 = v277;
      v61 = v298;
    }

    else
    {
      v66 = v278;
      v65 = TupleTypeMetadata2;
      v67 = v277;
      while (1)
      {
        v64 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_121;
        }

        if (v64 >= v275)
        {
          break;
        }

        v63 = *(v53 + 8 * v64);
        ++v62;
        if (v63)
        {
          v280 = v64;
          goto LABEL_11;
        }
      }

      v280 = v62;
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v147, v148, v149, v65);
      v281 = 0;
    }

    (*v273)(v67, v66, v274);
    v82 = OUTLINED_FUNCTION_23_0();
    if (__swift_getEnumTagSinglePayload(v82, v83, v65) == 1)
    {

      if (*(v316 + 16) == 1)
      {
        v159 = v256;
        sub_237CA34E8(v316, v256);
        v160 = OUTLINED_FUNCTION_23_0();
        if (__swift_getEnumTagSinglePayload(v160, v161, v261) == 1)
        {
          goto LABEL_142;
        }

        sub_237DDA7EC(v159, v260);
        sub_237EF8260();
        goto LABEL_86;
      }

      v164 = v255;
      sub_237EF7720();
      v165 = v259;
      sub_237EF7810();
      v167 = v260;
      v166 = v261;
      v168 = v260 + *(v261 + 24);
      *(v168 + 80) = 0;
      *(v168 + 48) = 0u;
      *(v168 + 64) = 0u;
      *(v168 + 16) = 0u;
      *(v168 + 32) = 0u;
      *v168 = 0u;
      v312 = *v315;
      v312(v167, v164, v304);
      memcpy(v321, v168, sizeof(v321));
      sub_237C9BD20(v321);
      *v168 = 0u;
      *(v168 + 16) = 0u;
      *(v168 + 32) = 0u;
      *(v168 + 48) = 0u;
      *(v168 + 64) = 0u;
      v308 = v168;
      *(v168 + 80) = 0;
      v169 = v257;
      v170 = v258;
      (*(v257 + 16))(v167 + *(v166 + 20), v165, v258);
      v313 = "statusDictionary";
      v171 = sub_237E34060();
      v173 = v172;
      v174 = sub_237EF7780();
      v176 = v175;
      swift_isUniquelyReferenced_nonNull_native();
      v318[0] = *v176;
      sub_237C91098(v171, v173, 0xD00000000000001ALL, v313 | 0x8000000000000000);
      *v176 = v318[0];
      v174(v319, 0);
      v177 = v304;
      (*(v169 + 8))(v259, v170);
      v311 = *v314;
      v311(v164, v177);
      v307 = *(v316 + 16);
      if (!v307)
      {
        sub_237EF8260();
        v181 = v295;
LABEL_85:
        v222 = v254;
        sub_237EF7190();
        (*(v264 + 104))(v222, *MEMORY[0x277D253D0], v181);
        sub_237EF7660();
LABEL_86:
        v223 = *(v316 + 16);
        if (v223)
        {
          OUTLINED_FUNCTION_28();
          v225 = v316 + v224;
          v315 = *(v226 + 72);
          v227 = MEMORY[0x277D84F90];
          v228 = v316 + v224;
          v314 = v223;
          while (1)
          {
            OUTLINED_FUNCTION_0_65();
            v229 = v266;
            sub_237DDA78C(v228, v266, v230);
            v231 = sub_237EF76A0();
            sub_237D0F8BC(v229);
            v232 = *(v231 + 16);
            v233 = *(v227 + 16);
            v234 = v233 + v232;
            if (__OFADD__(v233, v232))
            {
              goto LABEL_124;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v234 > *(v227 + 24) >> 1)
            {
              if (v233 <= v234)
              {
                v236 = v233 + v232;
              }

              else
              {
                v236 = v233;
              }

              sub_237D0BCB8(isUniquelyReferenced_nonNull_native, v236, 1, v227);
              v227 = v237;
            }

            if (*(v231 + 16))
            {
              OUTLINED_FUNCTION_12_40();
              if (v212 != v188)
              {
                goto LABEL_128;
              }

              OUTLINED_FUNCTION_15_34();
              swift_arrayInitWithCopy();

              if (v232)
              {
                v238 = *(v227 + 16);
                v188 = __OFADD__(v238, v232);
                v239 = v238 + v232;
                if (v188)
                {
                  goto LABEL_131;
                }

                *(v227 + 16) = v239;
              }
            }

            else
            {

              if (v232)
              {
                goto LABEL_125;
              }
            }

            v228 += v315;
            if (!--v223)
            {
              sub_237EF76B0();
              v240 = MEMORY[0x277D84F90];
              v241 = v314;
              while (1)
              {
                OUTLINED_FUNCTION_0_65();
                v242 = v265;
                sub_237DDA78C(v225, v265, v243);
                v244 = sub_237EF76F0();
                sub_237D0F8BC(v242);
                v245 = *(v244 + 16);
                v246 = *(v240 + 16);
                v247 = v246 + v245;
                if (__OFADD__(v246, v245))
                {
                  goto LABEL_126;
                }

                v248 = swift_isUniquelyReferenced_nonNull_native();
                if (!v248 || v247 > *(v240 + 24) >> 1)
                {
                  if (v246 <= v247)
                  {
                    v249 = v246 + v245;
                  }

                  else
                  {
                    v249 = v246;
                  }

                  sub_237D0BCB8(v248, v249, 1, v240);
                  v240 = v250;
                }

                if (*(v244 + 16))
                {
                  OUTLINED_FUNCTION_12_40();
                  if (v212 != v188)
                  {
                    goto LABEL_129;
                  }

                  OUTLINED_FUNCTION_15_34();
                  swift_arrayInitWithCopy();

                  if (v245)
                  {
                    v251 = *(v240 + 16);
                    v188 = __OFADD__(v251, v245);
                    v252 = v251 + v245;
                    if (v188)
                    {
                      goto LABEL_132;
                    }

                    *(v240 + 16) = v252;
                  }
                }

                else
                {

                  if (v245)
                  {
                    goto LABEL_127;
                  }
                }

                v225 += v315;
                if (!--v241)
                {
                  goto LABEL_119;
                }
              }
            }
          }
        }

        sub_237EF76B0();
LABEL_119:
        swift_bridgeObjectRelease_n();

        sub_237EF7700();
        sub_237E36B18();
        return;
      }

      OUTLINED_FUNCTION_28();
      v306 = (v316 + v178);
      v310 = (v293 + 32);
      sub_237EF8260();
      v313 = 0;
      v179 = 0;
      v180 = MEMORY[0x277D84F90];
      v181 = v295;
      v183 = v261;
      v182 = v262;
      while (1)
      {
        if (v179 >= *(v316 + 16))
        {
          goto LABEL_130;
        }

        v309 = v179;
        OUTLINED_FUNCTION_0_65();
        sub_237DDA78C(v184, v182, v185);
        if (v308[10])
        {
          v186 = *(v183 + 24);
          memcpy(v319, (v182 + v186), sizeof(v319));
          if (v319[10])
          {
            memcpy(__dst, (v182 + v186), sizeof(__dst));
            v323 = v319[10];
            memcpy(v318, (v182 + v186), sizeof(v318));
            sub_237C9FEDC(v318, v317);
            v187 = sub_237E6542C(__dst);
            v188 = __OFADD__(v313, v187);
            v313 += v187;
            if (v188)
            {
              goto LABEL_133;
            }

            v189 = sub_237EF75C0();
            v190 = *(v189 + 16);
            if (v190)
            {
              v191 = (*(v293 + 80) + 32) & ~*(v293 + 80);
              v303 = v189;
              v192 = v189 + v191;
              v193 = *(v293 + 72);
              do
              {
                v194 = v287;
                v312(v287, v192, v177);
                sub_237ECF820();
                v311(v194, v177);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_237D0BD38(0, *(v180 + 16) + 1, 1, v180);
                  v180 = v198;
                }

                v196 = *(v180 + 16);
                v195 = *(v180 + 24);
                if (v196 >= v195 >> 1)
                {
                  v199 = OUTLINED_FUNCTION_5_2(v195);
                  sub_237D0BD38(v199, v200, v201, v180);
                  v180 = v202;
                }

                *(v180 + 16) = v196 + 1;
                v197 = v180 + v191 + v196 * v193;
                v177 = v304;
                (*v310)(v197, v288, v304);
                v192 += v193;
                --v190;
              }

              while (v190);
              sub_237C9BD20(v319);

              v181 = v295;
              v183 = v261;
              v182 = v262;
            }

            else
            {
              sub_237C9BD20(v319);
            }

            goto LABEL_82;
          }
        }

        v203 = (v182 + *(v183 + 24));
        memcpy(v320, v203, sizeof(v320));
        v204 = v203[10];
        if (v204)
        {
          v205 = v308;
          memcpy(v318, v308, sizeof(v318));
          memcpy(v319, v203, 0x50uLL);
          v319[10] = v204;
          sub_237C9FEDC(v319, v317);
          sub_237C9BD20(v318);
          memcpy(v205, v320, 0x50uLL);
          v205[10] = v204;
          v206 = sub_237EF75C0();
          v207 = *(v206 + 16);
          v208 = *(v180 + 16);
          if (__OFADD__(v208, v207))
          {
            goto LABEL_134;
          }

          v209 = v206;
          v210 = swift_isUniquelyReferenced_nonNull_native();
          if (!v210 || v208 + v207 > *(v180 + 24) >> 1)
          {
            OUTLINED_FUNCTION_44_11(v210);
            v180 = v211;
          }

          v177 = v304;
          v182 = v262;
          if (!*(v209 + 16))
          {

            if (v207)
            {
              goto LABEL_135;
            }

            goto LABEL_82;
          }

          OUTLINED_FUNCTION_12_40();
          if (v212 != v188)
          {
            goto LABEL_136;
          }

          OUTLINED_FUNCTION_15_34();
          OUTLINED_FUNCTION_26_22();

          if (v207)
          {
            v213 = *(v180 + 16);
            v188 = __OFADD__(v213, v207);
            v214 = v213 + v207;
            if (v188)
            {
              goto LABEL_139;
            }

LABEL_77:
            *(v180 + 16) = v214;
          }
        }

        else
        {
          v215 = sub_237EF75C0();
          v216 = *(v215 + 16);
          v217 = *(v180 + 16);
          if (__OFADD__(v217, v216))
          {
            goto LABEL_137;
          }

          v218 = v215;
          v219 = swift_isUniquelyReferenced_nonNull_native();
          if (!v219 || v217 + v216 > *(v180 + 24) >> 1)
          {
            OUTLINED_FUNCTION_44_11(v219);
            v180 = v220;
          }

          v177 = v304;
          v182 = v262;
          if (!*(v218 + 16))
          {

            if (v216)
            {
              goto LABEL_138;
            }

            goto LABEL_82;
          }

          OUTLINED_FUNCTION_12_40();
          if (v212 != v188)
          {
            goto LABEL_140;
          }

          OUTLINED_FUNCTION_15_34();
          OUTLINED_FUNCTION_26_22();

          if (v216)
          {
            v221 = *(v180 + 16);
            v188 = __OFADD__(v221, v216);
            v214 = v221 + v216;
            if (v188)
            {
              goto LABEL_141;
            }

            goto LABEL_77;
          }
        }

LABEL_82:
        sub_237D0F8BC(v182);
        v179 = v309 + 1;
        if (v309 + 1 == v307)
        {
          goto LABEL_85;
        }
      }
    }

    v84 = *v67;
    v297 = v67[1];
    v85 = v67 + *(v65 + 48);
    v86 = v290;
    (*v283)(v284, v85, v290);
    v87 = v285;
    (*(v282 + 8))(v86);
    v285 = v87;
    if (v87)
    {
      v162 = OUTLINED_FUNCTION_13_35();
      v163(v162);

      return;
    }

    v88 = sub_237EF75C0();
    v313 = *(v88 + 16);
    if (v313)
    {
      break;
    }

LABEL_35:

    v145 = OUTLINED_FUNCTION_13_35();
    v146(v145);
    sub_237D0F8BC(v61);
    v53 = v267;
    v62 = v280;
    v56 = v281;
  }

  OUTLINED_FUNCTION_28();
  v312 = (v88 + v89);
  v90 = sub_237EF8260();
  v91 = 0;
  v289 = v84;
  v92 = v84;
  v306 = v90;
  v311 = v88;
  while (v91 < *(v88 + 16))
  {
    (*(v57 + 16))(v59, v312 + *(v57 + 72) * v91, v60);
    sub_237EF7650();
    v93 = OUTLINED_FUNCTION_21_32();
    v95 = v94(v93);
    if (v95 == v309)
    {
      v96 = OUTLINED_FUNCTION_16_39();
      v97(v96);
      v98 = OUTLINED_FUNCTION_21_32();
      v99(v98);
    }

    else
    {
      v100 = OUTLINED_FUNCTION_21_32();
      v101(v100);
      v102 = *(sub_237EF76A0() + 16);

      if (v102 != 1)
      {

        type metadata accessor for SerializationError();
        sub_237CA2D6C();
        OUTLINED_FUNCTION_3_23();
        swift_allocError();
        OUTLINED_FUNCTION_42_11();
        v153 = v152 + 11;
LABEL_39:
        *v150 = v153;
        v150[1] = v151;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v155 = OUTLINED_FUNCTION_16_39();
        v156(v155);
        v157 = OUTLINED_FUNCTION_13_35();
        v158(v157);
        sub_237D0F8BC(v298);
        return;
      }

      v103 = *(sub_237EF76F0() + 16);

      if (!v103)
      {

        type metadata accessor for SerializationError();
        sub_237CA2D6C();
        OUTLINED_FUNCTION_3_23();
        swift_allocError();
        OUTLINED_FUNCTION_42_11();
        v153 = v154 + 12;
        goto LABEL_39;
      }

      if (!*(sub_237EF76A0() + 16))
      {
        goto LABEL_122;
      }

      v104 = v296;
      OUTLINED_FUNCTION_28();
      v105 = *(v104 + 16);
      v299 = v106;
      v300 = v105;
      v108 = v303;
      v109 = v92;
      v110 = v305;
      v105(v303, v107 + v106, v305);

      sub_237EF70A0();
      v111 = *(v104 + 8);
      v112 = v110;
      v92 = v109;
      v111(v108, v112);
      sub_237EF76C0();

      v113 = v59;
      v114 = *(sub_237EF76F0() + 16);

      if (v114 == 1)
      {

        v115 = v286;
        v116 = v297;
        v117 = v289;
        v118 = v289;
        if (*(v286 + 16))
        {
          v116 = v297;
          v119 = sub_237D2FC30();
          v118 = v117;
          if (v120)
          {
            v121 = (*(v115 + 56) + 16 * v119);
            v118 = *v121;
            v116 = v121[1];
          }
        }

        sub_237EF8260();
        v122 = sub_237DDA48C(v118, v116, v324);
        v124 = v123;

        v125 = sub_237EF76F0();
        if (!*(v125 + 16))
        {
          goto LABEL_123;
        }

        v126 = v303;
        v306 = v111;
        v127 = v122;
        v128 = v305;
        v300(v303, v125 + v299, v305);

        sub_237EF70A0();
        v129 = v128;
        v92 = v127;
        v306(v126, v129);
        sub_237EF76C0();

        v319[0] = v127;
        v319[1] = v124;
        v306 = v124;
        sub_237EF8260();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3860);
        sub_237EF8CA0();
      }

      v59 = v113;
      v130 = v298;
      v60 = v304;
      (*v291)(v298, v113, v304);
      OUTLINED_FUNCTION_0_65();
      sub_237DDA78C(v130, v307, v131);
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v293;
      if ((v132 & 1) == 0)
      {
        sub_237D0BF80(0, *(v316 + 16) + 1, 1, v316);
        v316 = v140;
      }

      v134 = *(v316 + 16);
      v133 = *(v316 + 24);
      if (v134 >= v133 >> 1)
      {
        v141 = OUTLINED_FUNCTION_5_2(v133);
        sub_237D0BF80(v141, v142, v143, v316);
        v316 = v144;
      }

      v135 = OUTLINED_FUNCTION_16_39();
      v136(v135);
      *(v316 + 16) = v134 + 1;
      OUTLINED_FUNCTION_28();
      sub_237DDA7EC(v307, v138 + v137 + *(v139 + 72) * v134);
    }

    ++v91;
    v88 = v311;
    if (v313 == v91)
    {

      v61 = v298;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_237DDA48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_237E478D8(a1, a2, a3);
  if ((result & 1) == 0)
  {
    sub_237EF8260();
    return a1;
  }

  v7 = 0;
LABEL_3:
  if (!__OFADD__(v7++, 1))
  {
    sub_237EF8260();
    MEMORY[0x2383E0710](95, 0xE100000000000000);
    v9 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v9);

    if (*(a3 + 16))
    {
      sub_237EFA120();
      sub_237EF8610();
      v10 = sub_237EFA170();
      v11 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(a3 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(a3 + 48) + 16 * v12);
        if (*v13 != a1 || v13[1] != a2)
        {
          v15 = sub_237EF9D40();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_3;
      }
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237DDA618()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237DDA66C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237DDA78C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237DDA7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMLPackage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_2_72(uint64_t a1, void *a2)
{
  *a2 = 0x7463656C6553;
  a2[1] = 0xE600000000000000;
  a2[2] = v3;
  a2[3] = v2;
}

uint64_t OUTLINED_FUNCTION_7_53(uint64_t a1)
{
  *(v1 + 336) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_58()
{

  return sub_237EF6130();
}

uint64_t OUTLINED_FUNCTION_10_46()
{
  v1 = v0[32];
  result = v0[26];
  v0[39] = *v1;
  v0[40] = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_37()
{
}

unint64_t OUTLINED_FUNCTION_24_26()
{

  return sub_237CD1200();
}

uint64_t OUTLINED_FUNCTION_25_24()
{

  return sub_237EF6130();
}

uint64_t OUTLINED_FUNCTION_26_22()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_34_10()
{
  v3 = *(v1 + 136);

  return MEMORY[0x2821345E0](v0, v3, v3);
}

uint64_t OUTLINED_FUNCTION_35_12()
{

  return sub_237EF6220();
}

uint64_t OUTLINED_FUNCTION_36_14(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_44_11(char a1)
{
  if (v1 <= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v1;
  }

  sub_237D0BD38(a1, v5, 1, v3);
}

uint64_t OUTLINED_FUNCTION_45_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18)
{
  *(a2 + 32) = a17;
  *(a2 + 48) = a18;
  *(a2 + 64) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return sub_237EF90F0();
}

double sub_237DDAC74@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for LogisticRegressionClassifier();
  LogisticRegressionClassifier.configuration.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double LogisticRegressionClassifier.configuration.setter(uint64_t *a1)
{
  sub_237C65348();
  sub_237DDAE0C(a1, v5);
  v3 = v5[1];
  *(v1 + 8) = v5[0];
  *(v1 + 24) = v3;
  result = *&v6;
  *(v1 + 40) = v6;
  *(v1 + 56) = v7;
  return result;
}

uint64_t sub_237DDAE0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 49);
  v9 = a1[6] & 1;
  type metadata accessor for LogisticRegressionClassifier.Configuration();
  result = type metadata accessor for LogisticRegressionClassifier.Configuration();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = 10;
  *(a2 + 48) = v9;
  *(a2 + 49) = v8;
  return result;
}

void (*LogisticRegressionClassifier.configuration.modify(void *a1, uint64_t a2))(_OWORD **a1)
{
  v5 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v5;
  v5[7] = a2;
  v5[8] = v2;
  LogisticRegressionClassifier.configuration.getter(v5);
  return sub_237DDAF94;
}

void sub_237DDAF94(_OWORD **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3[0] = **a1;
  v3[1] = v2;
  v3[2] = v1[2];
  v4 = *(v1 + 24);
  LogisticRegressionClassifier.configuration.setter(v3);

  free(v1);
}

uint64_t LogisticRegressionClassifier.labels.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double LogisticRegressionClassifier.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_237F15C20;
  *(a1 + 16) = 25;
  result = 1.0;
  *(a1 + 24) = xmmword_237F15C30;
  *(a1 + 40) = 10;
  *(a1 + 48) = 1;
  return result;
}

double LogisticRegressionClassifier.init(labels:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  sub_237C65348();
  sub_237DDAE0C(a2, v7);
  v5 = v7[1];
  *(a3 + 8) = v7[0];
  *(a3 + 24) = v5;
  result = *&v8;
  *(a3 + 40) = v8;
  *(a3 + 56) = v9;
  return result;
}

uint64_t LogisticRegressionClassifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  OUTLINED_FUNCTION_7_54();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237DDB1A4()
{
  v69 = v0;
  v1 = v0;
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v53 = v3;
  v5 = swift_task_alloc();
  v58 = v4[2];
  *v5 = v58;
  v52 = v4[3];
  v5[1] = v52;
  v5[2] = v2;
  v6 = v4[4];
  v5[3] = v6;
  v7 = v4[5];
  v5[4] = v7;
  v56 = v7;
  v57 = v6;
  v8 = v4[6];
  v5[5] = v8;
  v9 = v4[7];
  v5[6] = v9;
  v10 = v4[8];
  v5[7] = v10;
  v11 = v4[9];
  v5[8] = v11;
  v5[9] = v3;
  KeyPath = swift_getKeyPath();

  v13 = swift_task_alloc();
  v13[2] = v2;
  v13[3] = v7;
  v55 = v8;
  v13[4] = v8;
  v13[5] = v9;
  v50 = v9;
  v51 = v10;
  v13[6] = v10;
  v13[7] = v11;
  v13[8] = v53;
  v13[9] = KeyPath;
  v14 = sub_237EF7E90();
  v16 = sub_237C8FFEC(sub_237CF9EA4, v13, v2, v14, MEMORY[0x277D84A98], v53, MEMORY[0x277D84AC0], v15);

  v1[9] = v16;
  v17 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237EDB96C((v1 + 9), v17, v58, WitnessTable, v57, v56, v68);
  v20 = v1[15];
  v19 = v1[16];

  v48 = v68[1];
  v49 = v68[0];
  v47 = v68[2];
  v54 = v68[3];
  v21 = swift_task_alloc();
  *v21 = v58;
  v21[1] = v52;
  v22.n128_u64[0] = v57;
  v22.n128_u64[1] = v56;
  v23.n128_u64[0] = v8;
  v23.n128_u64[1] = v50;
  v21[2] = v20;
  v45 = v23;
  v46 = v22;
  v24 = OUTLINED_FUNCTION_11_43(v21, v22, v23);
  v24[7] = v10;
  v24[8] = v11;
  v24[9] = v19;
  v25 = swift_getKeyPath();

  v26 = swift_task_alloc();
  v27.n128_u64[0] = v56;
  v27.n128_u64[1] = v8;
  v28.n128_u64[0] = v50;
  v28.n128_u64[1] = v10;
  *(v26 + 16) = v20;
  v29 = OUTLINED_FUNCTION_11_43(v26, v27, v28);
  v29[7] = v11;
  v29[8] = v19;
  v29[9] = v25;
  v31 = sub_237C8FFEC(sub_237CFA07C, v26, v20, v52, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v30);

  v1[9] = v31;
  v32 = sub_237EF8A60();
  sub_237EF8260();
  swift_getWitnessTable();
  v33 = sub_237E5E22C((v1 + 9), v52, v32);
  v35 = v34;
  if (sub_237E5E170(v33, v34, v52, v8, v11) <= 1)
  {

    sub_237C84150();
    v40 = swift_allocError();
    OUTLINED_FUNCTION_5_70(v40, v41);
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v36 = v1[15];
    v37 = v1[16];
    v1[9] = v31;
    v38 = swift_task_alloc();
    *(v38 + 16) = v58;
    *(v38 + 24) = v52;
    *(v38 + 32) = v36;
    *(v38 + 56) = v45;
    *(v38 + 40) = v46;
    *(v38 + 72) = v51;
    *(v38 + 80) = v11;
    *(v38 + 88) = v37;
    *(v38 + 96) = v33;
    *(v38 + 104) = v35;
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    sub_237C9339C();

    v39 = *(v1 + 2);
    v60 = *(v1 + 1);
    v61 = v39;
    v62 = *(v1 + 3);
    v63 = *(v1 + 32);
    v64 = v49;
    v65 = v48;
    v66 = v47;
    v67 = v54;
    sub_237E5E170(v33, v35, v52, v55, v11);
    BaseLogisticRegressionClassifier.fitted(features:annotations:classCount:eventHandler:)();
    v43 = v1[10];

    memcpy(v68, __src, 0x59uLL);
    sub_237DBDA84(v68, v33, v35, v43);
    OUTLINED_FUNCTION_3_0();
  }

  return v44();
}

uint64_t sub_237DDB740@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E5E354();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[19] = v11;
  v9[20] = v12;
  v9[17] = a7;
  v9[18] = a8;
  v9[15] = a5;
  v9[16] = a6;
  v9[13] = a3;
  v9[14] = a4;
  v9[11] = a1;
  v9[12] = a2;
  v9[21] = *v8;
  OUTLINED_FUNCTION_7_54();
  return MEMORY[0x2822009F8](sub_237DDB7DC, 0, 0);
}

uint64_t sub_237DDB7DC()
{
  v98 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v83 = *(v0 + 17);
  v3 = v0[16];
  v4 = swift_task_alloc();
  v82 = v3[2];
  *v4 = v82;
  v74 = v3[3];
  *(v4 + 8) = v74;
  *(v4 + 16) = v83;
  v81 = v3[4];
  *(v4 + 32) = v81;
  v5 = v3[5];
  *(v4 + 40) = v5;
  v6 = v3[6];
  *(v4 + 48) = v6;
  v7 = v3[7];
  *(v4 + 56) = v7;
  v8 = v3[8];
  *(v4 + 64) = v8;
  v9 = v3[9];
  *(v4 + 72) = v9;
  *(v4 + 80) = v1;
  *(v4 + 88) = v2;
  KeyPath = swift_getKeyPath();

  v11 = swift_task_alloc();
  *&v12 = v5;
  v72 = v6;
  v73 = v8;
  *(&v12 + 1) = v6;
  *(v11 + 32) = v12;
  *(v11 + 16) = v83;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v75 = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = v1;
  *(v11 + 80) = v2;
  *(v11 + 88) = KeyPath;
  v13 = sub_237EF7E90();
  v15 = sub_237C8FFEC(sub_237DDE678, v11, v83, v13, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v14);

  v0[9] = v15;
  v79 = v13;
  v16 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v17 = v5;
  sub_237EDB96C((v0 + 9), v16, v82, WitnessTable, v81, v5, v97);
  v18 = v0[20];
  v69 = v0 + 9;
  v70 = v0[19];
  v76 = v0;
  v64 = v0[18];
  v65 = v0[17];

  v59 = v97[1];
  v60 = v97[0];
  v58 = v97[2];
  v68 = v97[3];
  v19 = swift_task_alloc();
  *v19 = v82;
  *(v19 + 8) = v74;
  *(v19 + 16) = v65;
  *(v19 + 24) = v64;
  *&v20 = v81;
  *(&v20 + 1) = v17;
  *&v21 = v6;
  *(&v21 + 1) = v7;
  v62 = v21;
  v63 = v20;
  *(v19 + 32) = v20;
  *(v19 + 48) = v21;
  *(v19 + 64) = v73;
  *(v19 + 72) = v75;
  *(v19 + 80) = v70;
  *(v19 + 88) = v18;
  v22 = v18;
  v23 = swift_getKeyPath();

  v24 = swift_task_alloc();
  *(v24 + 16) = v65;
  *(v24 + 24) = v64;
  *&v25 = v17;
  *(&v25 + 1) = v6;
  *&v26 = v7;
  *(&v26 + 1) = v73;
  v61 = v26;
  *(v24 + 32) = v25;
  *(v24 + 48) = v26;
  v66 = v25;
  *(v24 + 64) = v75;
  *(v24 + 72) = v70;
  *(v24 + 80) = v22;
  *(v24 + 88) = v23;
  v28 = sub_237C8FFEC(sub_237DDC108, v24, v64, v79, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v27);

  v0[9] = v28;
  sub_237EDB96C((v0 + 9), v16, v82, WitnessTable, v81, v17, v97);

  v29 = v97[0];
  v71 = v97[1];
  v67 = v97[2];
  v30 = v97[3];
  v31 = sub_237EF8260();
  v32 = sub_237E5E16C(v31, v74, v6, v75);
  v80 = v33;
  if (sub_237E5E170(v32, v33, v74, v6, v75) <= 1)
  {

    sub_237C84150();
    v49 = swift_allocError();
    OUTLINED_FUNCTION_5_70(v49, v50);
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v55 = v29;
    v57 = v30;
    v34 = v0[19];
    v35 = v0[20];
    v37 = v0[17];
    v36 = v0[18];
    v38 = swift_task_alloc();
    *v38 = v82;
    *(v38 + 8) = v74;
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    *(v38 + 32) = v63;
    *(v38 + 48) = v62;
    *(v38 + 64) = v73;
    *(v38 + 72) = v75;
    *(v38 + 80) = v34;
    *(v38 + 88) = v35;
    v78 = v32;
    v39 = swift_getKeyPath();

    v40 = swift_task_alloc();
    *(v40 + 16) = v37;
    *(v40 + 24) = v36;
    *(v40 + 32) = v66;
    *(v40 + 48) = v61;
    *(v40 + 64) = v75;
    *(v40 + 72) = v34;
    *(v40 + 80) = v35;
    *(v40 + 88) = v39;
    v56 = sub_237C8FFEC(sub_237DDE678, v40, v37, v74, MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v41);

    v0[9] = v56;
    v42 = swift_task_alloc();
    *(v42 + 16) = v82;
    *(v42 + 24) = v74;
    *(v42 + 32) = v37;
    *(v42 + 40) = v36;
    *(v42 + 48) = v63;
    *(v42 + 64) = v62;
    *(v42 + 80) = v73;
    *(v42 + 88) = v75;
    *(v42 + 96) = v34;
    *(v42 + 104) = v35;
    *(v42 + 112) = v78;
    *(v42 + 120) = v80;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    sub_237C9339C();

    v43 = swift_task_alloc();
    *v43 = v82;
    *(v43 + 8) = v74;
    *(v43 + 16) = v37;
    *(v43 + 24) = v36;
    *(v43 + 32) = v63;
    *(v43 + 48) = v62;
    *(v43 + 64) = v73;
    *(v43 + 72) = v75;
    *(v43 + 80) = v34;
    *(v43 + 88) = v35;
    v44 = swift_getKeyPath();

    v45 = swift_task_alloc();
    *(v45 + 16) = v37;
    *(v45 + 24) = v36;
    *(v45 + 32) = v66;
    *(v45 + 48) = v61;
    *(v45 + 64) = v75;
    *(v45 + 72) = v34;
    *(v45 + 80) = v35;
    *(v45 + 88) = v44;
    v47 = sub_237C8FFEC(sub_237DDE678, v45, v36, v74, MEMORY[0x277D84A98], v35, MEMORY[0x277D84AC0], v46);

    v76[9] = v47;
    v48 = swift_task_alloc();
    *(v48 + 16) = v82;
    *(v48 + 24) = v74;
    *(v48 + 32) = v37;
    *(v48 + 40) = v36;
    *(v48 + 48) = v63;
    *(v48 + 64) = v62;
    *(v48 + 80) = v73;
    *(v48 + 88) = v75;
    *(v48 + 96) = v34;
    *(v48 + 104) = v35;
    *(v48 + 112) = v78;
    *(v48 + 120) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    sub_237C9339C();

    v52 = *(v69 - 5);
    v85 = *(v69 - 7);
    v86 = v52;
    v87 = *(v69 - 3);
    v88 = *(v69 - 4);
    v89 = v60;
    v90 = v59;
    v91 = v58;
    v92 = v68;
    v93 = v55;
    v94 = v71;
    v95 = v67;
    v96 = v57;
    sub_237E5E170(v78, v80, v74, v72, v75);
    BaseLogisticRegressionClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)();
    v53 = v76[11];

    memcpy(v97, __src, 0x59uLL);
    sub_237DBDA84(v97, v78, v80, v53);
    OUTLINED_FUNCTION_3_0();
  }

  return v54();
}

uint64_t sub_237DDC134@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E5E354();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_237DDC17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237E5E354();
  if (v18)
  {
    (*(v14 + 16))(v16, a1, a2);
    v19 = sub_237EF85D0();
    v21 = v20;
    sub_237C84150();
    v22 = swift_allocError();
    *v23 = 0xD00000000000001CLL;
    *(v23 + 8) = 0x8000000237F15C70;
    *(v23 + 16) = v19;
    *(v23 + 24) = v21;
    *(v23 + 32) = 3;
    result = swift_willThrow();
    *a11 = v22;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void LogisticRegressionClassifier.encode(_:to:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for LogisticRegressionClassifierModel();
  sub_237DBE914();
}

uint64_t sub_237DDC3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237CD5B14;

  return LogisticRegressionClassifier.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237DDC4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C90C10;

  return LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v18, a6, a7);
}

double LogisticRegressionClassifier.makeTransformer()@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = MEMORY[0x277D84F90];
  v3 = a1[3];
  v4 = a1[6];
  v5 = a1[9];
  v6 = sub_237EF8260();
  v13 = sub_237E5E16C(v6, v3, v4, v5);
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
  v11 = a1[7];
  v10 = a1[8];
  sub_237DDC6C4();
  return sub_237DBDD68(&v15, v13, v8, v3, v9, a2, v4, v11, v10, v5);
}

unint64_t sub_237DDC6C4()
{
  result = qword_280C8CD38;
  if (!qword_280C8CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAECA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8CD38);
  }

  return result;
}

uint64_t LogisticRegressionClassifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  OUTLINED_FUNCTION_7_54();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237DDC75C()
{
  v61 = v0;
  sub_237EF8B90();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v44 = v2;
  v46 = v1;
  v3 = *(v0 + 120);
  v4 = swift_task_alloc();
  v52 = v3[2];
  *v4 = v52;
  v43 = v3[3];
  v4[1] = v43;
  v4[2] = v1;
  v48 = v3[4];
  v4[3] = v48;
  v50 = v3[5];
  v4[4] = v50;
  v5 = v3[6];
  v4[5] = v5;
  v6 = v3[7];
  v4[6] = v6;
  v7 = v3[8];
  v4[7] = v7;
  v8 = v3[9];
  v4[8] = v8;
  v4[9] = v2;
  KeyPath = swift_getKeyPath();

  v10 = swift_task_alloc();
  v10[2] = v46;
  v10[3] = v50;
  v40 = v6;
  v41 = v5;
  v10[4] = v5;
  v10[5] = v6;
  v42 = v7;
  v10[6] = v7;
  v10[7] = v8;
  v10[8] = v44;
  v10[9] = KeyPath;
  v11 = sub_237EF7E90();
  v13 = sub_237C8FFEC(sub_237CFA07C, v10, v46, v11, MEMORY[0x277D84A98], v44, MEMORY[0x277D84AC0], v12);

  *(v0 + 72) = v13;
  v14 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237EDB96C(v0 + 72, v14, v52, WitnessTable, v48, v50, &v53);
  v16 = *(v0 + 128);
  v17 = *(v0 + 136);
  v39 = v16;
  v47 = *(v0 + 88);

  v37 = *(&v53 + 1);
  v38 = v53;
  v36 = v54;
  v51 = *(&v54 + 1);
  v18 = swift_task_alloc();
  *v18 = v52;
  v18[1] = v43;
  v19.n128_u64[0] = v48;
  v19.n128_u64[1] = v50;
  v49 = v19;
  v20.n128_u64[0] = v41;
  v20.n128_u64[1] = v40;
  v45 = v20;
  v18[2] = v16;
  v21 = OUTLINED_FUNCTION_11_43(v18, v19, v20);
  v22 = v7;
  v21[7] = v7;
  v21[8] = v8;
  v21[9] = v17;
  v23 = swift_getKeyPath();

  v24 = swift_task_alloc();
  v25.n128_u64[0] = v50;
  v25.n128_u64[1] = v41;
  v26.n128_u64[0] = v40;
  v26.n128_u64[1] = v22;
  *(v24 + 16) = v39;
  v27 = OUTLINED_FUNCTION_11_43(v24, v25, v26);
  v27[7] = v8;
  v27[8] = v17;
  v27[9] = v23;
  v29 = v28;
  v31 = sub_237C8FFEC(sub_237CFA07C, v24, v28, v43, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v30);

  *(v0 + 72) = v31;
  v32 = swift_task_alloc();
  *(v32 + 16) = v52;
  *(v32 + 24) = v43;
  *(v32 + 32) = v29;
  *(v32 + 56) = v45;
  *(v32 + 40) = v49;
  *(v32 + 72) = v42;
  *(v32 + 80) = v8;
  *(v32 + 88) = v17;
  *(v32 + 96) = v47;
  sub_237EF8A60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237C9339C();

  v33 = *(v0 + 32);
  v53 = *(v0 + 16);
  v54 = v33;
  v55 = *(v0 + 48);
  v56 = *(v0 + 64);
  v57 = v38;
  v58 = v37;
  v59 = v36;
  v60 = v51;
  BaseLogisticRegressionClassifier.update(_:features:annotations:eventHandler:)();

  OUTLINED_FUNCTION_3_0();

  return v35();
}

uint64_t sub_237DDCBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v23 = a3;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EF8260();
  sub_237EF8260();
  v13 = sub_237E5E354();
  v15 = v14;

  if (v15)
  {
    (*(v10 + 16))(v12, a1, a2);
    v17 = sub_237EF85D0();
    v19 = v18;
    sub_237C84150();
    v20 = swift_allocError();
    *v21 = 0xD00000000000001CLL;
    *(v21 + 8) = 0x8000000237F15C70;
    *(v21 + 16) = v17;
    *(v21 + 24) = v19;
    *(v21 + 32) = 3;
    result = swift_willThrow();
    *a8 = v20;
  }

  else
  {
    *v23 = v13;
  }

  return result;
}

void LogisticRegressionClassifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  memcpy(__dst, (a1 + 24), sizeof(__dst));
  if (v5)
  {
    *v11 = *a1;
    *&v11[16] = v5;
    memcpy(&v11[24], (a1 + 24), 0x51uLL);
    *&v11[104] = *(a1 + 104);
    type metadata accessor for LogisticRegressionClassifierModel();
    sub_237DBE914();
    if (!v2)
    {
      *v11 = v5;
      memcpy(&v11[8], __dst, 0x41uLL);
      v6 = *(a2 + 24);
      v7 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v6);
      v8 = *(v7 + 16);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
      v10 = sub_237D91558(&qword_27DEB2A10);
      v8(v11, v9, v10, v6, v7);
    }
  }

  else
  {
    sub_237EF9740();
    __break(1u);
  }
}

void LogisticRegressionClassifier.decodeWithOptimizer(from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v20 = a3;
  sub_237DBEDA4(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5]);
  if (!v3)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
    v15 = *(v7 + 16);
    v8 = sub_237D91558(&qword_27DEB2A20);
    v15(v18, v5, v5, v8, v6, v7);
    memcpy(v16, v18, 0x49uLL);
    memcpy(__dst, &__src[16], 0x49uLL);
    sub_237D09E34(__dst);
    memcpy(&__src[16], v16, 0x49uLL);
    memcpy(v20, __src, 0x70uLL);
  }
}

uint64_t sub_237DDD174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237CD5B14;

  return LogisticRegressionClassifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

void sub_237DDD3DC(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 48);
  v6[0] = *(a1 + a2 - 64);
  v6[1] = v4;
  v5 = *(a1 + a2 - 16);
  v6[2] = *(a1 + a2 - 32);
  v6[3] = v5;
  type metadata accessor for LogisticRegressionClassifier.Configuration();
  LogisticRegressionClassifier.Configuration.optimizationStrategy.getter(v6);
  *a3 = v6[0];
}

_BYTE *sub_237DDD438(char *a1)
{
  v2 = *a1;
  type metadata accessor for LogisticRegressionClassifier.Configuration();
  return LogisticRegressionClassifier.Configuration.optimizationStrategy.setter(&v2);
}

_BYTE *(*LogisticRegressionClassifier.Configuration.optimizationStrategy.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 49);
  return sub_237DDD4C8;
}

BOOL static LogisticRegressionClassifier.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 24), *(a2 + 24)))))) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 40) == *(a2 + 40) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0)
  {
    return *(a1 + 49) == *(a2 + 49);
  }

  return result;
}

uint64_t sub_237DDD55C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C616E6550326CLL && a2 == 0xE900000000000079;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746C616E6550316CLL && a2 == 0xE900000000000079;
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
        v8 = a1 == 0x657A695370657473 && a2 == 0xE800000000000000;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000237EFFE30 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x8000000237EFF400 == a2;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x616546656C616373 && a2 == 0xED00007365727574;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000015 && 0x8000000237EFFE50 == a2)
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

unint64_t sub_237DDD7E0(char a1)
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

uint64_t sub_237DDD998()
{
  sub_237EFA120();
  sub_237C5EDA8(v2, *v0);
  return sub_237EFA170();
}

uint64_t sub_237DDDA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DDD55C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DDDAAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D87608();
  *a1 = result;
  return result;
}

uint64_t sub_237DDDAF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DDDB48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LogisticRegressionClassifier.Configuration.encode(to:)(void *a1, _OWORD *a2)
{
  v4 = a2[2];
  v20 = a2[1];
  v21 = v4;
  v5 = a2[4];
  v22 = a2[3];
  v23 = v5;
  type metadata accessor for LogisticRegressionClassifier.Configuration.CodingKeys();
  OUTLINED_FUNCTION_2_73();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = *(v2 + 16);
  v17 = *(v2 + 40);
  v18 = v12;
  v24 = *(v2 + 48);
  HIDWORD(v16) = *(v2 + 49);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  LOBYTE(v20) = 0;
  v13 = v19;
  sub_237EF9A30();
  if (!v13)
  {
    v14 = BYTE4(v16);
    LOBYTE(v20) = 1;
    OUTLINED_FUNCTION_8_59();
    LOBYTE(v20) = 2;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A50();
    LOBYTE(v20) = 3;
    OUTLINED_FUNCTION_8_59();
    LOBYTE(v20) = 4;
    OUTLINED_FUNCTION_8_59();
    LOBYTE(v20) = 5;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A50();
    LOBYTE(v20) = 6;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A20();
    LOBYTE(v20) = v14;
    v25 = 7;
    sub_237DDDE38();
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_237DDDE38()
{
  result = qword_27DEB3868;
  if (!qword_27DEB3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3868);
  }

  return result;
}

uint64_t LogisticRegressionClassifier.Configuration.hash(into:)()
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

uint64_t LogisticRegressionClassifier.Configuration.hashValue.getter()
{
  sub_237EFA120();
  LogisticRegressionClassifier.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t LogisticRegressionClassifier.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LogisticRegressionClassifier.Configuration.CodingKeys();
  OUTLINED_FUNCTION_2_73();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v2)
  {
    sub_237EF9930();
    v6 = v5;
    OUTLINED_FUNCTION_1_83(1);
    sub_237EF9930();
    v8 = v7;
    OUTLINED_FUNCTION_1_83(2);
    v9 = sub_237EF9950();
    OUTLINED_FUNCTION_1_83(3);
    sub_237EF9930();
    v11 = v10;
    OUTLINED_FUNCTION_1_83(4);
    sub_237EF9930();
    v13 = v12;
    OUTLINED_FUNCTION_1_83(5);
    v15 = sub_237EF9950();
    OUTLINED_FUNCTION_1_83(6);
    v19 = sub_237EF9920();
    sub_237DDE2A4();
    sub_237EF9970();
    v16 = OUTLINED_FUNCTION_12_41();
    v17(v16);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v11;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
    *(a2 + 48) = v19 & 1;
    *(a2 + 49) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237DDE268()
{
  sub_237EFA120();
  LogisticRegressionClassifier.Configuration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237DDE2A4()
{
  result = qword_27DEB3870[0];
  if (!qword_27DEB3870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3870);
  }

  return result;
}

uint64_t sub_237DDE320(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237DDE408(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_237DDE448()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237DDE4A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 50))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_237DDE4EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_237DDE558(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_5_70(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000001CLL;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0xD000000000000022;
  *(a2 + 24) = v2;
  *(a2 + 32) = 5;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_7_54()
{
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 8);
  *(v1 + 32) = v2;
  result = *(v0 + 40);
  *(v1 + 48) = result;
  *(v1 + 64) = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_59()
{

  return sub_237EF9A30();
}

uint64_t OUTLINED_FUNCTION_11_43(uint64_t result, __n128 a2, __n128 a3)
{
  *(result + 40) = a3;
  *(result + 24) = a2;
  return result;
}

void (*sub_237DDE784(void (**a1)(uint64_t a1), uint64_t a2, uint64_t a3))(uint64_t a1)
{
  result = __swift_coroFrameAllocStub(0x60uLL);
  v8 = result;
  *a1 = result;
  if (v3[2])
  {
    v9 = a3 * *v3;
    if ((a3 * *v3) >> 64 == v9 >> 63)
    {
      v10 = v9 + a2;
      if (!__OFADD__(v9, a2))
      {
        *(result + 10) = sub_237DDE764();
        sub_237DDE890(v8 + 4, v10);
        *(v8 + 11) = v11;
        return sub_237CC7CFC;
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

  v13 = v3[1];
  v14 = a2 * v13;
  if ((a2 * v13) >> 64 != (a2 * v13) >> 63)
  {
    goto LABEL_10;
  }

  v15 = __OFADD__(v14, a3);
  v16 = v14 + a3;
  if (!v15)
  {
    *(result + 8) = sub_237DDE764();
    sub_237DDE890(v8 + 4, v16);
    *(v8 + 9) = v17;
    return sub_237CC7C9C;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237DDE890(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4();
    v5 = v6;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5[2] <= a2)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_237DDE918(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC();
    v5 = v6;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5[2] <= a2)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_237DDE9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v25 = a4;
  v27 = a2;
  v7 = sub_237EF61A0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v26 = a1;
  if (v13)
  {
    v22[0] = a3;
    v22[1] = v4;
    v23 = v9;
    v24 = v7;
    v28 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v13, 0);
    v14 = v28;
    v15 = (a1 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v28 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_237EF8260();
      if (v19 >= v18 >> 1)
      {
        sub_237C62D90(v18 > 1, v19 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 4;
      --v13;
    }

    while (v13);
    v9 = v23;
    v7 = v24;
    a3 = v22[0];
  }

  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237C96710(&qword_27DEAEC30, &qword_27DEAEBD0);
  sub_237EF6180();

  sub_237DE134C(v26, v27, a3, v25);
  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_237DDEBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v10 = *(a2 + 16);
  if (v10)
  {
    sub_237EF8260();
    v11 = 0;
    v23 = v7;
    v12 = (v7 + 56);
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      sub_237EF8260();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0B340();
        v13 = v20;
      }

      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        sub_237D0B340();
        v13 = v21;
      }

      *(v13 + 16) = v16 + 1;
      *(v13 + 8 * v16 + 32) = v11;

      v18 = v15 >= 4 ? 1 : v14;
      v19 = __OFADD__(v11, v18);
      v11 += v18;
      if (v19)
      {
        break;
      }

      v12 += 32;
      if (!--v10)
      {
        v7 = v23;

        v5 = a4;
        v8 = a1;
        v6 = a3;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 0;
    v13 = MEMORY[0x277D84F90];
LABEL_14:
    result = v8 * v11;
    if ((v8 * v11) >> 64 == (v8 * v11) >> 63)
    {
      result = sub_237E61300(result, NAN);
      *a5 = v6;
      *(a5 + 8) = v5;
      *(a5 + 16) = v7;
      *(a5 + 24) = v13;
      *(a5 + 32) = v8;
      *(a5 + 40) = v11;
      *(a5 + 48) = 0;
      *(a5 + 56) = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237DDED34(uint64_t a1, unint64_t a2)
{
  v41 = a1;
  v5 = sub_237EF6310();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3920);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3928);
  result = MEMORY[0x28223BE20](v12);
  v32 = (&v30 - v14);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v2 + 16);
  if (*(v15 + 16) <= a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = *(v2 + 24);
  if (*(v16 + 16) > a2)
  {
    v17 = v15 + 32 * a2;
    v36 = *(v17 + 32);
    v37 = v2;
    v18 = *(v17 + 40);
    v35 = *(v17 + 48);
    v34 = *(v17 + 56);
    v33 = *(v16 + 8 * a2 + 32);
    v19 = *(v9 + 52);
    (*(v6 + 16))(&v11[v19], v41, v5);
    (*(v6 + 32))(v8, &v11[v19], v5);
    v20 = v32;
    v21 = v32 + *(v12 + 52);
    sub_237DE1A48(&qword_27DEB3930);
    v41 = v18;
    sub_237EF8260();
    sub_237EF86F0();
    v31 = *(v12 + 56);
    *(v20 + v31) = 0;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3938);
    v22 = 0;
    v23 = *(result + 36);
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      sub_237DE1A48(&qword_27DEB3940);
      sub_237EF8DE0();
      if (*&v21[v23] == v38[0])
      {

        v28 = v31;
        v27 = v32;
        *v32 = v24;
        *(v27 + v28) = 1;
        return sub_237C863A0(v27, &qword_27DEB3928);
      }

      v25 = sub_237EF8F00();
      sub_237DE1A8C(v26, v39);
      v25(v38, 0);
      sub_237EF8DF0();
      v40[0] = v39[0];
      v40[1] = v39[1];
      sub_237DDF12C(v40, v36, v41, v35, v34, v22, v33);
      if (v3)
      {

        v29 = v32;
        *v32 = v24;
        sub_237C863A0(v40, &qword_27DEAED60);
        v27 = v29;
        return sub_237C863A0(v27, &qword_27DEB3928);
      }

      result = sub_237C863A0(v40, &qword_27DEAED60);
      v22 = (v22 + 1);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_237DDF12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void (*a6)(uint64_t a1), uint64_t a7)
{
  v8 = v7;
  sub_237DE1A8C(a1, &v48);
  if (!v49)
  {
    return sub_237C863A0(&v48, &qword_27DEAED60);
  }

  sub_237C91804(&v48, &v50);
  if (a5 >= 4u)
  {
    if (a4)
    {
      sub_237CBA478(&v50, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3948);
      if (!swift_dynamicCast())
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        sub_237C863A0(&v44, &qword_27DEB3950);
        sub_237CBA478(&v50, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3958);
        if (!swift_dynamicCast())
        {
          v46 = 0;
          v44 = 0u;
          v45 = 0u;
          sub_237C863A0(&v44, &qword_27DEB3960);
          sub_237CBA478(&v50, &v48);
          sub_237C75918(0, &qword_280C8CCF8);
          if (swift_dynamicCast())
          {
            v17 = v44;
            [v44 floatValue];
            v19 = v18;
LABEL_24:
            v35 = sub_237DDE784(&v48, a6, a7);
            *v36 = v19;
            (v35)(&v48, 0);

            goto LABEL_4;
          }

          goto LABEL_25;
        }

LABEL_17:
        sub_237C531B8(&v44, &v48);
        v28 = v49;
        v29 = __swift_project_boxed_opaque_existential_1(&v48, v49);
        MEMORY[0x28223BE20](v29);
        v31 = v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 16))(v31);
        v25 = sub_237DE1AFC(v31, v28);
LABEL_20:
        v33 = sub_237DDE784(&v44, a6, a7);
        *v34 = v25;
        (v33)(&v44, 0);
        __swift_destroy_boxed_opaque_existential_1(&v50);
        v15 = &v48;
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }
    }

    else
    {
      sub_237CBA478(&v50, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3948);
      if (!swift_dynamicCast())
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        sub_237C863A0(&v44, &qword_27DEB3950);
        sub_237CBA478(&v50, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3958);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v46 = 0;
          v44 = 0u;
          v45 = 0u;
          sub_237C863A0(&v44, &qword_27DEB3960);
          sub_237CBA478(&v50, &v48);
          sub_237C75918(0, &qword_280C8CCF8);
          if (swift_dynamicCast())
          {
            v17 = v44;
            v19 = [v44 integerValue];
            goto LABEL_24;
          }

LABEL_25:
          v38 = *v8;
          v37 = v8[1];
          *&v48 = 0;
          *(&v48 + 1) = 0xE000000000000000;
          sub_237EF8260();
          sub_237EF9330();
          MEMORY[0x2383E0710](0xD000000000000025, 0x8000000237EFFEC0);
          MEMORY[0x2383E0710](a2, a3);
          MEMORY[0x2383E0710](0x6720747562202C27, 0xEB0000000020746FLL);
          __swift_project_boxed_opaque_existential_1(&v50, v51);
          swift_getDynamicType();
          v39 = sub_237EFA220();
          MEMORY[0x2383E0710](v39);

          MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
          *&v44 = a6;
          v40 = sub_237EF9AB0();
          MEMORY[0x2383E0710](v40);

          v41 = v48;
          sub_237C84150();
          swift_allocError();
          *v42 = v38;
          *(v42 + 8) = v37;
          *(v42 + 16) = v41;
          *(v42 + 32) = 4;
          swift_willThrow();
          goto LABEL_4;
        }

        goto LABEL_17;
      }
    }

    sub_237C531B8(&v44, &v48);
    v20 = v49;
    v21 = __swift_project_boxed_opaque_existential_1(&v48, v49);
    v43[1] = v43;
    v22 = *(v20 - 8);
    MEMORY[0x28223BE20](v21);
    v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v24);
    if (sub_237EF9200() < 65)
    {
      v43[0] = a6;
      v26 = sub_237EF9210();
      v27 = sub_237EF91F0();
      (*(v22 + 8))(v24, v20);
      if (v26)
      {
        v25 = v27;
      }

      else
      {
        v25 = v27;
      }

      a6 = v43[0];
    }

    else
    {
      sub_237CE3484();
      sub_237DE21D4();
      sub_237EF81C0();
      (*(v22 + 8))(v24, v20);
      v25 = *&v44;
    }

    goto LABEL_20;
  }

  sub_237DDF848(&v50, a2, a3, a4, a5, a4, a6, a7);
LABEL_4:
  v15 = &v50;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_237DDF848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  v84 = a8;
  v85 = a6;
  v88 = a7;
  v89 = a4;
  v95 = a5;
  v86 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3970);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v72 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA58);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = &v72 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  v79 = *(v82 - 8);
  v15 = MEMORY[0x28223BE20](v82);
  v77 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v81 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v72 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v72 - v29;
  v83 = a1;
  sub_237CBA478(a1, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3978);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v90, &v92);
    v31 = __swift_project_boxed_opaque_existential_1(&v92, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3910);
    sub_237CF446C();
    sub_237CF0114(v31, a2, v86, v89, v95, v85, v88, v84);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(&v92);
    return;
  }

  v72 = a2;
  v32 = v84;
  sub_237CBA478(v83, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3980);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v90, &v92);
    v33 = __swift_project_boxed_opaque_existential_1(&v92, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3910);
    sub_237CE3484();
LABEL_7:
    v34 = v33;
    v35 = v72;
    v37 = v85;
    v36 = v86;
    v39 = v88;
    v38 = v89;
    v40 = v95;
    v41 = v32;
LABEL_8:
    sub_237CF04F0(v34, v35, v36, v38, v40, v37, v39, v41);
    goto LABEL_9;
  }

  sub_237CBA478(v83, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3988);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v90, &v92);
    v33 = __swift_project_boxed_opaque_existential_1(&v92, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3910);
    sub_237C65348();
    goto LABEL_7;
  }

  sub_237CBA478(v83, &v92);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    (*(v28 + 32))(v30, v26, v27);
    sub_237DE0520(v30, v72, v86, v89, v95, v85, v88, v32);
    (*(v28 + 8))(v30, v27);
    return;
  }

  __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
  sub_237C863A0(v26, &qword_27DEAEA78);
  sub_237CBA478(v83, &v92);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    v42 = v81;
    (*(v81 + 32))(v23, v20, v21);
    sub_237DE08AC(v23, v72, v86, v89, v95, v85, v88, v32);
    (*(v42 + 8))(v23, v21);
    return;
  }

  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  sub_237C863A0(v20, &qword_27DEAD600);
  sub_237CBA478(v83, &v92);
  v43 = v80;
  v44 = v82;
  v45 = swift_dynamicCast();
  v46 = v88;
  v47 = v86;
  if (v45)
  {
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
    v48 = v79;
    v49 = v78;
    (*(v79 + 32))(v78, v43, v44);
    sub_237DE0C34(v49, v72, v47, v89, v95, v85, v46, v32);
    (*(v48 + 8))(v49, v44);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
    sub_237C863A0(v43, &qword_27DEAEAA0);
    sub_237CBA478(v83, &v92);
    sub_237C75918(0, &qword_27DEAF160);
    v50 = swift_dynamicCast();
    v51 = v85;
    v52 = v95;
    v53 = v89;
    if (v50)
    {
      v54 = *&v90[0];
      v55 = v77;
      sub_237EF7EB0();
      sub_237DE0C34(v55, v72, v47, v53, v52, v51, v46, v32);
      (*(v79 + 8))(v55, v82);

      return;
    }

    v56 = v85;
    sub_237CBA478(v83, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3990);
    if (swift_dynamicCast())
    {
      sub_237C531B8(v90, &v92);
      v57 = __swift_project_boxed_opaque_existential_1(&v92, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3910);
      sub_237DE2228();
      v34 = v57;
      v35 = v72;
      v36 = v47;
      v38 = v89;
      v40 = v95;
      v37 = v56;
      v39 = v46;
      v41 = v32;
      goto LABEL_8;
    }

    sub_237CBA478(v83, &v92);
    v58 = v75;
    v59 = v76;
    v60 = swift_dynamicCast();
    v61 = v87;
    if (v60)
    {
      __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
      v62 = v58;
      v63 = v73;
      v64 = v74;
      (*(v73 + 32))(v74, v62, v59);
      sub_237DE0FC0(v64, v72, v47, v89, v95, v56, v46, v32);
      (*(v63 + 8))(v74, v59);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v58, 1, 1, v59);
      sub_237C863A0(v58, &qword_27DEB3970);
      v66 = *v61;
      v65 = v61[1];
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_237EF8260();
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000031, 0x8000000237EFFEF0);
      MEMORY[0x2383E0710](v72, v47);
      MEMORY[0x2383E0710](0x6720747562202C27, 0xEB0000000020746FLL);
      __swift_project_boxed_opaque_existential_1(v83, v83[3]);
      swift_getDynamicType();
      v67 = sub_237EFA220();
      MEMORY[0x2383E0710](v67);

      MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
      *&v90[0] = v46;
      v68 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v68);

      v69 = v92;
      v70 = v93;
      sub_237C84150();
      swift_allocError();
      *v71 = v66;
      *(v71 + 8) = v65;
      *(v71 + 16) = v69;
      *(v71 + 24) = v70;
      *(v71 + 32) = 4;
      swift_willThrow();
    }
  }
}

uint64_t sub_237DE0520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  v12 = sub_237EF7E20();
  v13 = sub_237C60C7C(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237F03530;
        *(v16 + 32) = v15;
        sub_237C96710(&qword_27DEB1968, &qword_27DEAEA50);
        sub_237EF7F60();

        v17 = SLODWORD(v31[0]);
        v18 = sub_237DDE784(v31, a7, a8 + v15);
        *v19 = v17;
        result = (v18)(v31, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = v8[1];
    v30 = *v8;
    sub_237EF8260();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFFF30);
    v21 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383E0710](a2, a3);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFF60);
    sub_237EF7E20();
    v22 = MEMORY[0x2383E0A10]();
    v24 = v23;

    MEMORY[0x2383E0710](v22, v24);

    MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
    v31[4] = a7;
    v25 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v25);

    sub_237C84150();
    swift_allocError();
    *v26 = v30;
    *(v26 + 8) = v20;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0xE000000000000000;
    *(v26 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DE08AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v12 = sub_237EF7E20();
  v13 = sub_237C60C7C(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237F03530;
        *(v16 + 32) = v15;
        sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0);
        sub_237EF7F60();

        v17 = v31[0];
        v18 = sub_237DDE784(v31, a7, a8 + v15);
        *v19 = v17;
        result = (v18)(v31, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = v8[1];
    v30 = *v8;
    sub_237EF8260();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFFF30);
    v21 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383E0710](a2, a3);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFF60);
    sub_237EF7E20();
    v22 = MEMORY[0x2383E0A10]();
    v24 = v23;

    MEMORY[0x2383E0710](v22, v24);

    MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
    v31[4] = a7;
    v25 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v25);

    sub_237C84150();
    swift_allocError();
    *v26 = v30;
    *(v26 + 8) = v20;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0xE000000000000000;
    *(v26 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DE0C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  v12 = sub_237EF7E20();
  v13 = sub_237C60C7C(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237F03530;
        *(v16 + 32) = v15;
        sub_237C96710(qword_280C8CD78, &qword_27DEAEA60);
        sub_237EF7F60();

        v17 = *v31;
        v18 = sub_237DDE784(v31, a7, a8 + v15);
        *v19 = v17;
        result = (v18)(v31, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = v8[1];
    v30 = *v8;
    sub_237EF8260();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFFF30);
    v21 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383E0710](a2, a3);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFF60);
    sub_237EF7E20();
    v22 = MEMORY[0x2383E0A10]();
    v24 = v23;

    MEMORY[0x2383E0710](v22, v24);

    MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
    v31[4] = a7;
    v25 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v25);

    sub_237C84150();
    swift_allocError();
    *v26 = v30;
    *(v26 + 8) = v20;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0xE000000000000000;
    *(v26 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DE0FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA58);
  v12 = sub_237EF7E20();
  v13 = sub_237C60C7C(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237F03530;
        *(v16 + 32) = v15;
        sub_237C96710(&qword_27DEB39A0, &qword_27DEAEA58);
        sub_237EF7F60();

        _H0 = v36[0];
        __asm { FCVT            S8, H0 }

        v23 = sub_237DDE784(v36, a7, a8 + v15);
        *v24 = _S8;
        result = (v23)(v36, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v25 = v8[1];
    v35 = *v8;
    sub_237EF8260();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFFF30);
    v26 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v26);

    MEMORY[0x2383E0710](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383E0710](a2, a3);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFF60);
    sub_237EF7E20();
    v27 = MEMORY[0x2383E0A10]();
    v29 = v28;

    MEMORY[0x2383E0710](v27, v29);

    MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
    v36[4] = a7;
    v30 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v30);

    sub_237C84150();
    swift_allocError();
    *v31 = v35;
    *(v31 + 8) = v25;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0xE000000000000000;
    *(v31 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DE134C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v34 = a4;
  v9 = sub_237EF6310();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_237EF6100();
  sub_237EF8260();
  sub_237EF8260();
  sub_237DDEBB4(v13, a1, a2, a3, &v29);
  v25 = 0;
  v26 = a1;
  v27 = 0;
  v14 = (v10 + 8);
  v28 = 0;
  sub_237EF8260();
  while (1)
  {
    sub_237E47668(v33);
    if (!v33[2])
    {

      v16 = v31;
      v17 = v32;
      v18 = *(&v32 + 1);
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;

      result = sub_237C863A0(&v21, &qword_27DEB3910);
      v20 = v34;
      *v34 = v16;
      *(v20 + 16) = v17;
      *(v20 + 3) = v18;
      return result;
    }

    v15 = v33[0];
    sub_237EF61D0();
    sub_237C863A0(v33, &qword_27DEB3918);
    sub_237DDED34(v12, v15);
    if (v5)
    {
      break;
    }

    (*v14)(v12, v9);
  }

  (*v14)(v12, v9);

  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  return sub_237C863A0(&v21, &qword_27DEB3910);
}

uint64_t sub_237DE15C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D0);
  OUTLINED_FUNCTION_1();
  v22 = v1;
  v23 = v0;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C8);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB38F8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  sub_237EF62F0();
  if (swift_dynamicCastMetatype())
  {
    sub_237EF62E0();
    sub_237EF6280();
    (*(v7 + 8))(v10, v5);
LABEL_7:
    LODWORD(v25) = 2143289344;
    sub_237C96710(&qword_27DEB3900, &qword_27DEB17C8);
    sub_237EF61F0();
    (*(v13 + 8))(v16, v11);
    sub_237C96710(&qword_27DEB3908, &qword_27DEB38F8);
    return sub_237EF8720();
  }

  v19 = v22;
  v18 = v23;
  if (swift_dynamicCastMetatype())
  {
    sub_237EF62E0();
    goto LABEL_7;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237EF62E0();
    sub_237EF6280();
    (*(v19 + 8))(v4, v18);
    goto LABEL_7;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_237EF9330();

  v25 = 0xD00000000000001ELL;
  v26 = 0x8000000237EFFEA0;
  v21 = sub_237EF6300();
  MEMORY[0x2383E0710](v21);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  result = sub_237EF9740();
  __break(1u);
  return result;
}

float sub_237DE1A20@<S0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

float sub_237DE1A34@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_237DE1A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_237EF6310();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237DE1A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

float sub_237DE1AFC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v37 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = *(a2 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = sub_237EF8140();
  v20 = sub_237EF8160();
  if (v19 == 11)
  {
    if (v20 == 52)
    {
      (*(v10 + 16))(v18, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v10 + 8))(a1, a2);
        return v42;
      }

      else
      {
        sub_237EF8360();
        sub_237EF8150();
        v28 = v38;
        swift_getAssociatedConformanceWitness();
        sub_237EF91F0();
        (*(v37 + 8))(v9, v28);
        v29 = v39;
        sub_237EF8170();
        (*(v10 + 8))(a1, a2);
        v30 = v41;
        swift_getAssociatedConformanceWitness();
        sub_237EF91F0();
        (*(v40 + 8))(v29, v30);
        sub_237EF8BF0();
      }

      return v27;
    }

LABEL_16:
    sub_237CE3484();
    sub_237EF8180();
LABEL_17:
    (*(v10 + 8))(a1, a2);
    return *&v42;
  }

  if (v19 == 8)
  {
    if (v20 == 23)
    {
      (*(v10 + 16))(v16, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_237EF8360();
        sub_237EF8150();
        v23 = v38;
        swift_getAssociatedConformanceWitness();
        sub_237EF91F0();
        (*(v37 + 8))(v9, v23);
        v24 = v39;
        sub_237EF8170();
        (*(v10 + 8))(a1, a2);
        v25 = v41;
        swift_getAssociatedConformanceWitness();
        sub_237EF91F0();
        (*(v40 + 8))(v24, v25);
        sub_237EF8C40();
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v19 != 5 || v20 != 10)
  {
    goto LABEL_16;
  }

  (*(v10 + 16))(v13, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(a1, a2);
    _H0 = LOWORD(v42);
  }

  else
  {
    sub_237EF8360();
    sub_237EF8150();
    v31 = v38;
    swift_getAssociatedConformanceWitness();
    sub_237EF91F0();
    (*(v37 + 8))(v9, v31);
    v32 = v39;
    sub_237EF8170();
    (*(v10 + 8))(a1, a2);
    v33 = v41;
    swift_getAssociatedConformanceWitness();
    sub_237EF91F0();
    (*(v40 + 8))(v32, v33);
    sub_237EFA1C0();
  }

  __asm { FCVT            S0, H0 }

  return result;
}

unint64_t sub_237DE21D4()
{
  result = qword_27DEB3968;
  if (!qword_27DEB3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3968);
  }

  return result;
}

unint64_t sub_237DE2228()
{
  result = qword_27DEB3998;
  if (!qword_27DEB3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3998);
  }

  return result;
}

uint64_t sub_237DE2280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v40 = sub_237EF6FA0();
  MEMORY[0x28223BE20](v40);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB39A8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v39 - v7;
  v43 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  sub_237EF67E0();
  sub_237EF6A30();
  v25 = *(v18 + 8);
  v25(v24, v16);
  v26 = sub_237EF6470();
  v27 = v9 + 8;
  v28 = *(v9 + 8);
  v41 = v27;
  v42 = v26;
  v29 = v15;
  v30 = v16;
  v31 = v43;
  v28(v29, v43);
  sub_237EF67E0();
  sub_237EF6A30();
  v44 = v25;
  v48 = v18 + 8;
  v25(v21, v30);
  sub_237EF6470();
  v28(v12, v31);
  v32 = v45;
  sub_237EF6FF0();
  sub_237EF67B0();
  if (__swift_getEnumTagSinglePayload(v32, 1, v30) == 1)
  {
    sub_237DE2714(v32);
    sub_237EF7010();
    v33 = v44;
  }

  else
  {
    sub_237EF6AB0();
    v34 = v32;
    v35 = v44;
    v44(v34, v30);
    sub_237EF7010();
    v36 = v39;
    sub_237EF6FB0();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v40);
    sub_237EF7000();
    v33 = v35;
  }

  sub_237EF67E0();
  sub_237EF6AB0();
  v33(v24, v30);
  sub_237EF6FB0();
  sub_237EF7020();
  v37 = sub_237EF6820();
  return (*(*(v37 - 8) + 8))(a1, v37);
}

uint64_t sub_237DE2714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TemporalTransformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = a8;
  v9[17] = v8;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  OUTLINED_FUNCTION_1_1();
  v9[18] = v10;
  v9[19] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[20] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  v9[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v9[22] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v9[23] = v12;
  v9[24] = OUTLINED_FUNCTION_27_0();
  v13 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v13);
  v9[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[26] = v14;
  v9[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v9[28] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[29] = v15;
  v9[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237DE29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v16 = sub_237EF8110();
  OUTLINED_FUNCTION_22_14(v16);
  OUTLINED_FUNCTION_23_8();
  v15[23] = sub_237EF8A60();
  sub_237EF8970();
  v17 = OUTLINED_FUNCTION_19_15();
  v18(v17);
  OUTLINED_FUNCTION_31_6();
  v19 = v15[17];
  v20 = v15[14];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = OUTLINED_FUNCTION_15_35();
    v22(v21);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    (*(v14[23] + 32))(v14[24], v14[25], v14[22]);
    sub_237EF8B90();
    v45 = v14[14] + 40;
    OUTLINED_FUNCTION_15_0();
    v46 = v32 + *v32;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[32] = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_3_74(v33);
    OUTLINED_FUNCTION_18_3();

    return v43(v35, v36, v37, v38, v39, v40, v41, v42, v45, v46, a11, a12, a13, a14);
  }
}

uint64_t sub_237DE2C78()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237DE2D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = *(v14 + 80);
  sub_237EF8A20();
  if (v15)
  {
    v16 = *(v14 + 184);
    a9 = *(v14 + 176);
    a10 = *(v14 + 192);
    v17 = *(v14 + 80);
    (*(*(v14 + 144) + 16))(*(v14 + 152), *(v14 + 136), *(v14 + 96));

    v18 = sub_237EF85D0();
    v20 = v19;
    v21 = sub_237EF8A00();
    v22 = sub_237EF8710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
    sub_237C758C4();
    v23 = sub_237EF8230();
    *(v14 + 16) = v18;
    *(v14 + 24) = v20;
    *(v14 + 32) = v21;
    *(v14 + 40) = v22;
    *(v14 + 48) = 0;
    *(v14 + 56) = v23;
    v17(v14 + 16);
    sub_237C5EE40(v17);

    (*(v16 + 8))(a10, a9);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_10_47();
    v25(v24);
  }

  v26 = *(v14 + 264);
  v27 = *(v14 + 200);
  v28 = *(v14 + 176);
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    v29 = OUTLINED_FUNCTION_15_35();
    v30(v29);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    (*(*(v14 + 184) + 32))(*(v14 + 192), *(v14 + 200), *(v14 + 176));
    sub_237EF8B90();
    if (v26)
    {
      v40 = OUTLINED_FUNCTION_10_47();
      v41(v40);
      v42 = OUTLINED_FUNCTION_6_23();
      v43(v42);

      OUTLINED_FUNCTION_25_25();

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_18_3();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v65 = *(v14 + 112) + 40;
      OUTLINED_FUNCTION_15_0();
      v66 = v52 + *v52;
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      *(v14 + 256) = v53;
      *v53 = v54;
      OUTLINED_FUNCTION_3_74();
      OUTLINED_FUNCTION_18_3();

      return v63(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237DE3118()
{
  v0 = OUTLINED_FUNCTION_10_47();
  v1(v0);
  v2 = OUTLINED_FUNCTION_19_35();
  v3(v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t TemporalTransformer.applied<A, B, C>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[18] = v24;
  v9[19] = v8;
  v9[16] = a8;
  v9[17] = v23;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  OUTLINED_FUNCTION_1_1();
  v9[20] = v10;
  v9[21] = OUTLINED_FUNCTION_27_0();
  v9[22] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[23] = AssociatedTypeWitness;
  v12 = type metadata accessor for AnnotatedFeature();
  v9[24] = v12;
  OUTLINED_FUNCTION_18(v12);
  v9[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[26] = v13;
  v9[27] = OUTLINED_FUNCTION_27_0();
  v9[28] = *(AssociatedTypeWitness - 8);
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  OUTLINED_FUNCTION_23_8();
  v9[31] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1_1();
  v9[32] = v14;
  v9[33] = OUTLINED_FUNCTION_27_0();
  v15 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v15);
  v9[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[35] = v16;
  v9[36] = OUTLINED_FUNCTION_27_0();
  v9[37] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[38] = v17;
  v9[39] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_237DE350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v16 = sub_237EF8110();
  OUTLINED_FUNCTION_22_14(v16);
  OUTLINED_FUNCTION_23_8();
  v15[32] = sub_237EF8A60();
  sub_237EF8970();
  v17 = OUTLINED_FUNCTION_19_15();
  v18(v17);
  OUTLINED_FUNCTION_31_6();
  v19 = v15[26];
  v20 = v15[23];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = v14[39];
    OUTLINED_FUNCTION_5_71();
    v50 = v14[21];
    (*(v22 + 8))(v21);
    v48 = v14[8];

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, v48, v50, a11, a12, a13, a14);
  }

  else
  {
    (*(v14[32] + 32))(v14[33], v14[34], v14[31]);
    sub_237EF8B90();
    v32 = OUTLINED_FUNCTION_29_20();
    v51 = v33;
    AnnotatedFeature.feature.getter(v32, v34);
    OUTLINED_FUNCTION_7_55(v51);
    v49 = v35 + *v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[41] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_2_74(v36);
    OUTLINED_FUNCTION_18_3();

    return v46(v38, v39, v40, v41, v42, v43, v44, v45, v49, v51, a11, a12, a13, a14);
  }
}

uint64_t sub_237DE3844()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  v3[42] = v0;

  (*(v3[26] + 8))(v3[27], v3[14]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_237DE397C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 80);
  (*(*(v0 + 224) + 16))(v2, *(v0 + 240), v4);
  AnnotatedFeature.annotation.getter(v1, v5);
  AnnotatedFeature.init(feature:annotation:)(v2, v5, v4, v6, v3);
  sub_237EF8A20();
  if (v7)
  {
    v40 = *(v0 + 248);
    v41 = *(v0 + 264);
    v38 = *(v0 + 240);
    v39 = *(v0 + 256);
    v8 = *(v0 + 224);
    v37 = *(v0 + 184);
    v9 = *(v0 + 80);
    (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 152), *(v0 + 96));

    v10 = sub_237EF85D0();
    v12 = v11;
    v13 = sub_237EF8A00();
    v14 = sub_237EF8710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
    sub_237C758C4();
    v15 = sub_237EF8230();
    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    *(v0 + 32) = v13;
    *(v0 + 40) = v14;
    *(v0 + 48) = 0;
    *(v0 + 56) = v15;
    v9(v0 + 16);
    sub_237C5EE40(v9);

    (*(v8 + 8))(v38, v37);
    (*(v39 + 8))(v41, v40);
  }

  else
  {
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 184));
    v16 = OUTLINED_FUNCTION_19_35();
    v17(v16);
  }

  v18 = *(v0 + 336);
  v19 = *(v0 + 272);
  v20 = *(v0 + 248);
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = *(v0 + 312);
    OUTLINED_FUNCTION_5_71();
    (*(v22 + 8))(v21);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X2, X16 }
  }

  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 272), *(v0 + 248));
  sub_237EF8B90();
  if (v18)
  {
    v25 = OUTLINED_FUNCTION_11_44();
    v26(v25);
    v27 = OUTLINED_FUNCTION_6_23();
    v28(v27);

    OUTLINED_FUNCTION_5_71();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v31 = OUTLINED_FUNCTION_29_20();
  AnnotatedFeature.feature.getter(v31, v32);
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 328) = v33;
  *v33 = v34;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DE3E48()
{
  v0 = OUTLINED_FUNCTION_11_44();
  v1(v0);
  v2 = OUTLINED_FUNCTION_19_35();
  v3(v2);
  OUTLINED_FUNCTION_5_71();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t TemporalTransformer.callAsFunction<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_7_55(v15);
  v30 = v16 + *v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v14 + 16) = v17;
  *v17 = v18;
  v17[1] = sub_237C6A904;
  OUTLINED_FUNCTION_18_3();

  return v27(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v30, a12, a13, a14);
}

uint64_t TemporalTransformer.callAsFunction<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_0_66();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237D01354;
  OUTLINED_FUNCTION_14_44();

  return TemporalTransformer.applied<A>(to:eventHandler:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t dispatch thunk of TemporalTransformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_7_55(v15);
  v30 = v16 + *v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v14 + 16) = v17;
  *v17 = v18;
  v17[1] = sub_237C6A904;
  OUTLINED_FUNCTION_14_44();
  OUTLINED_FUNCTION_18_3();

  return v27(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v30, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_25_25()
{
}

uint64_t ComposedTabularTransformer.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ComposedTabularTransformer();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ComposedTabularTransformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a5 + 24);
  OUTLINED_FUNCTION_1_1();
  v6[9] = v8;
  v6[10] = swift_task_alloc();
  v6[11] = *(a5 + 16);
  OUTLINED_FUNCTION_1_1();
  v6[12] = v9;
  v6[13] = swift_task_alloc();
  v10 = sub_237EF61A0();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DE46D8, 0, 0);
}

uint64_t sub_237DE46D8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  ComposedTabularTransformer.inner.getter(v1, v0[13]);
  OUTLINED_FUNCTION_5_72(*(v1 + 32));
  v10 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_237DE47FC;
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  return v10(v4, v8, v6, v7, v5, v1);
}

uint64_t sub_237DE47FC()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v7 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_237DE4CF8;
  }

  else
  {
    v8 = sub_237DE4960;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237DE4960()
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
    v4 = v0[6];
    ComposedTabularTransformer.outer.getter(v4, v0[10]);
    OUTLINED_FUNCTION_5_72(*(v4 + 40));
    v12 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_237DE4B00;
    v7 = v0[16];
    v8 = v0[8];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];

    return v12(v11, v7, v9, v10, v8, v4);
  }
}

uint64_t sub_237DE4B00()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v7 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_237DE4D74;
  }

  else
  {
    v8 = sub_237DE4C64;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237DE4C64()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DE4CF8()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DE4D74()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DE4E08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DE4E5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237DE4EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C78AF8;

  return ComposedTabularTransformer.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t ComposedTabularTransformer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFFF80);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](8236, 0xE200000000000000);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t static ComposedTabularTransformer<>.== infix(_:_:)()
{
  if (sub_237EF8520())
  {
    type metadata accessor for ComposedTabularTransformer();
    v0 = sub_237EF8520();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t ComposedTabularTransformer<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = *(a2 + 16);
  v17 = a3;
  v5 = *(a2 + 40);
  v18 = v16;
  v14 = *(a2 + 24);
  v19 = v14;
  v20 = v5;
  type metadata accessor for ComposedTabularTransformer.CodingKeys();
  OUTLINED_FUNCTION_1_84();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  LOBYTE(v18) = 0;
  v12 = v21;
  sub_237EF9A70();
  if (!v12)
  {
    LOBYTE(v18) = 1;
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t ComposedTabularTransformer<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a8;
  v43 = a7;
  v49 = a5;
  OUTLINED_FUNCTION_1_1();
  v41 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v46 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  v45 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v50 = v20 - v19;
  type metadata accessor for ComposedTabularTransformer.CodingKeys();
  OUTLINED_FUNCTION_1_84();
  swift_getWitnessTable();
  v52 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v44 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v51 = a2;
  v53 = a2;
  v54 = a3;
  v47 = a3;
  v55 = a4;
  v56 = a6;
  v25 = type metadata accessor for ComposedTabularTransformer();
  OUTLINED_FUNCTION_1_1();
  v40 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v39 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v24;
  v30 = v57;
  sub_237EFA190();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v25;
  v31 = v45;
  v33 = v46;
  v32 = v47;
  LOBYTE(v53) = 0;
  sub_237EF9970();
  (*(v31 + 32))(v29, v50, v51);
  LOBYTE(v53) = 1;
  sub_237EF9970();
  v34 = OUTLINED_FUNCTION_7_2();
  v35(v34);
  v36 = v57;
  (*(v41 + 32))(&v29[*(v57 + 52)], v33, v32);
  v37 = v40;
  (*(v40 + 16))(v42, v29, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v37 + 8))(v29, v36);
}

uint64_t sub_237DE587C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237DE5A44(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

_BYTE *sub_237DE5CD0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237DE5E24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v55 = a4;
  v56 = a5;
  v57 = a2;
  v58 = a3;
  v52 = a13;
  v53 = a8;
  v50 = a12;
  v51 = a14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0);
  OUTLINED_FUNCTION_18(v18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v54 = &v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298);
  OUTLINED_FUNCTION_18(v23);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = a1[7];
  v59 = a6;
  v60 = a7;
  v61 = v53;
  v62 = a10;
  v29 = v51;
  v63 = a11;
  v64 = v50;
  v65 = v52;
  v66 = v51;
  v30 = type metadata accessor for FullyConnectedNetworkClassifierModel();
  v53 = v30[21];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_237EF8260();
  v35 = sub_237E5E170(v57, v58, a7, a11, v29);
  sub_237C6C074(v27, v35, v28, a9);
  sub_237EF6580();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_237EF6530();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v44, v45);
  sub_237EF6680();

  __swift_storeEnumTagSinglePayload(v26, 0, 1, v52);
  result = sub_237DE8DEC(v26, &a9[v53]);
  v47 = &a9[v30[22]];
  v48 = v58;
  *v47 = v57;
  *(v47 + 1) = v48;
  v49 = v56;
  *&a9[v30[23]] = v55;
  *&a9[v30[24]] = v49;
  return result;
}

uint64_t sub_237DE6104(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v5, v6);
  sub_237EF6510();
  v7 = *(a2 + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  if (!__swift_getEnumTagSinglePayload(v3 + v7, 1, v8))
  {
    sub_237EF66A0();
  }
}

uint64_t FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a1;
  v6[5] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v8);
  v6[8] = swift_task_alloc();
  v6[9] = *(a5 + 16);
  v6[10] = *(a5 + 32);
  v9 = sub_237EF7E90();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = sub_237EF6B10();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DE636C, 0, 0);
}

uint64_t sub_237DE636C()
{
  v2 = v0[6];
  v1 = v0[7];
  if (*(v1 + *(v2 + 96)) < 1)
  {
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237EFB950);
    MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237F163F0);
    MEMORY[0x2383E0710](0xD000000000000034, 0x8000000237EFB990);
    sub_237C6514C();
    swift_allocError();
    *v30 = 0;
    v30[1] = 0xE000000000000000;
  }

  else
  {
    v3 = sub_237EF7E20();
    v4 = *(v1 + *(v2 + 92));
    v5 = sub_237C60C7C(v3, v4);

    if (v5)
    {
      v7 = v0[17];
      v6 = v0[18];
      v9 = v0[15];
      v8 = v0[16];
      v11 = v0[14];
      v10 = v0[13];
      v12 = v0[9];
      v38 = v0[10];
      v43 = v0[8];
      v41 = v0[7];
      v13 = v0[6];
      v40 = v0[4];
      (*(v0[12] + 16))(v10, v0[5], v0[11]);
      v37 = v13[5];
      sub_237D4A7B4(v10, v12, v8);
      sub_237EF69B0();
      v14 = *(v9 + 8);
      v15 = v8;
      v14(v8, v11);
      v39 = v6;
      v42 = v7;
      sub_237EF6AE0();
      v14(v7, v11);
      sub_237EF6950();
      v16 = *(type metadata accessor for FullyConnectedNetwork() + 28);
      v17 = sub_237EF64B0();
      OUTLINED_FUNCTION_4();
      (*(v18 + 16))(v43, v41 + v16, v17);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v17);
      v19 = swift_task_alloc();
      *(v19 + 16) = v41;
      *(v19 + 24) = v15;
      v36 = v11;
      sub_237EF6520();

      sub_237C65484(v43, &qword_27DEAD5F0);
      v14(v15, v11);
      v0[2] = sub_237EF6AB0();
      v20 = swift_task_alloc();
      v20[2] = v12;
      v35 = v13[3];
      v20[3] = v35;
      v20[4] = v38;
      v20[5] = v37;
      v21 = v13[6];
      v20[6] = v21;
      v22 = v13[7];
      v20[7] = v22;
      v23 = v13[8];
      v20[8] = v23;
      v24 = v13[9];
      v20[9] = v24;
      v20[10] = v41;
      v25 = swift_task_alloc();
      v25[2] = v12;
      v25[3] = v35;
      v25[4] = v38;
      v25[5] = v37;
      v25[6] = v21;
      v25[7] = v22;
      v25[8] = v23;
      v25[9] = v24;
      v25[10] = sub_237DE6B4C;
      v25[11] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3C0);
      type metadata accessor for Classification();
      sub_237C96060();
      sub_237C9339C();
      v27 = v26;

      v0[3] = v27;
      v28 = sub_237EF8A60();
      OUTLINED_FUNCTION_1_24();
      swift_getWitnessTable();
      ClassificationDistribution.init<A>(_:)((v0 + 3), v28, v40);
      v14(v42, v36);
      v14(v39, v36);

      v29 = v0[1];
      goto LABEL_7;
    }

    v31 = sub_237EF7E20();
    sub_237EF9330();

    v32 = MEMORY[0x2383E0A10](v4, MEMORY[0x277D83B88]);
    MEMORY[0x2383E0710](v32);

    MEMORY[0x2383E0710](0x7078652073617720, 0xEE002E6465746365);
    sub_237C84150();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = 0xD000000000000025;
    *(v33 + 16) = 0x8000000237EFFFA0;
    *(v33 + 24) = 0;
    *(v33 + 32) = 6;
  }

  swift_willThrow();

  v29 = v0[1];
LABEL_7:

  return v29();
}

uint64_t sub_237DE6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, uint64_t a11, uint64_t a12)
{
  v27 = a6;
  v28 = a8;
  v29 = a2;
  v30 = a1;
  v26 = a9;
  v17 = sub_237EF90F0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v25 - v22;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = v27;
  v35 = a7;
  v36 = v28;
  v37 = a11;
  v38 = a12;
  type metadata accessor for FullyConnectedNetworkClassifierModel();
  sub_237E5E174(v30, a4, v23);
  (*(v18 + 16))(v20, v23, v17);
  result = __swift_getEnumTagSinglePayload(v20, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 8))(v23, v17);
    return Classification.init(label:probability:)(v20, a4, v26, a10);
  }

  return result;
}