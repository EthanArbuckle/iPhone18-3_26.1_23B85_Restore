uint64_t PreprocessingUpdatableSupervisedEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTransformer();
  return (*(v4 + 32))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingUpdatableSupervisedEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    return OUTLINED_FUNCTION_21_38(v23, a3);
  }

  return result;
}

uint64_t sub_237EA16E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingUpdatableSupervisedEstimator.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237EA17F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedEstimator.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237EA18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = swift_task_alloc();
  *(v18 + 16) = v26;
  *v26 = v18;
  v26[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v31, a6, a7, a8, v30, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t Transformer.appending<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  (*(v8 + 16))(v7 - v6, v9, a1);
  OUTLINED_FUNCTION_27_32();
  v10();
  return PreprocessingUpdatableSupervisedEstimator.init(_:_:)(a2);
}

uint64_t sub_237EA1B68(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237EA1BC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237EA1D90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

double sub_237EA20AC@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = a1[2];
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a3 + 64) = MEMORY[0x277D84F90];
  *(a3 + 72) = v4;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = v4;
  *(a3 + 112) = 0x7FF8000000000000;
  result = 0.0;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0x3FF0000000000000;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = v4;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0;
  *(a3 + 240) = v4;
  *(a3 + 248) = v4;
  *(a3 + 256) = v4;
  *(a3 + 264) = v4;
  *(a3 + 272) = v4;
  *(a3 + 280) = v4;
  *(a3 + 288) = 0;
  *(a3 + 48) = a2;
  *(a3 + 56) = 11;
  return result;
}

double sub_237EA2120@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  v5 = MEMORY[0x277D84F90];
  *(a3 + 144) = 0;
  *(a3 + 64) = 11;
  *(a3 + 72) = v5;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = v5;
  *(a3 + 104) = 0;
  *(a3 + 112) = v5;
  *(a3 + 120) = 0x7FF8000000000000;
  result = 0.0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0x3FF0000000000000;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 216) = v5;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = v5;
  *(a3 + 256) = v5;
  *(a3 + 264) = v5;
  *(a3 + 272) = v5;
  *(a3 + 280) = v5;
  *(a3 + 288) = v5;
  *(a3 + 296) = 0;
  *(a3 + 48) = v4;
  *(a3 + 56) = a2;
  return result;
}

double sub_237EA21A0@<D0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(a3, __src, 0x48uLL);
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  v5 = MEMORY[0x277D84F90];
  *(a3 + 88) = MEMORY[0x277D84F90];
  *(a3 + 96) = v5;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = v5;
  *(a3 + 136) = 0x7FF8000000000000;
  result = 0.0;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0x3FF0000000000000;
  *(a3 + 224) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 232) = v5;
  *(a3 + 256) = 0;
  *(a3 + 264) = v5;
  *(a3 + 272) = v5;
  *(a3 + 280) = v5;
  *(a3 + 288) = v5;
  *(a3 + 296) = v5;
  *(a3 + 304) = v5;
  *(a3 + 312) = 0;
  *(a3 + 72) = a2;
  *(a3 + 80) = 11;
  return result;
}

uint64_t sub_237EA2238(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(result + 16);
    if (v2 >= v3)
    {
      v4 = *(result + 16);
    }

    else
    {
      v4 = *(a2 + 16);
    }

    if (v4 >= v2 - 1)
    {
      v4 = v2 - 1;
    }

    if (v3 == v4)
    {
      __break(1u);
    }

    else
    {
      v5 = (result + 32);
      v6 = (a2 + 32);
      v7 = 0.0;
      do
      {
        v8 = *v5++;
        v9 = fabs(v8);
        v10 = *v6++;
        v7 = v7 + v9 * (v10 * v9);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_237EA229C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1[1];
    if (v2 <= *(v4 + 16))
    {
      v6 = *a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E643FC();
        v4 = v7;
      }

      v8 = 0;
      v9 = a2 + 32;
      v10 = v6 + 32;
      v11 = *(v6 + 16);
      while (v2 != v8)
      {
        if (v11 == v8)
        {
          goto LABEL_13;
        }

        if (v8 >= *(v4 + 16))
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_5_92(*(v9 + 8 * v8), *(v10 + 8 * v8));
        if (v2 == v12)
        {
          a1[1] = v4;
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_237EA2358()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = sub_237E613EC(v1 * v2, 0.0);

  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  *(v0 + 224) = 1;
  *(v0 + 232) = v3;
  v4 = sub_237E613EC(v1 * v2, 0.0);

  *(v0 + 240) = v1;
  *(v0 + 248) = v2;
  *(v0 + 256) = 1;
  *(v0 + 264) = v4;
  if (v1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_237C62CCC(v1, 0.0);
  v6 = v5;

  *(v0 + 272) = v6;
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_237C62CCC(v2, 0.0);
    v8 = v7;

    *(v0 + 280) = v8;
    sub_237C62CCC(v2, 0.0);
    v10 = v9;

    *(v0 + 288) = v10;

    *(v0 + 296) = MEMORY[0x277D84F90];
    sub_237C62CCC(v1, 0.0);
    v12 = v11;

    *(v0 + 304) = v12;
    *(v0 + 312) = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_237EA2484()
{
  v1 = *(v0 + 72);
  sub_237EA229C((v0 + 88), v1);
  v2 = *(v0 + 96);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 200);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC();
      v2 = v5;
    }

    v6 = 0;
    v7 = *(v2 + 16);
    while (v6 < v7)
    {
      *(v2 + 8 * v6 + 32) = v4 * *(v2 + 8 * v6 + 32);
      if (v3 == ++v6)
      {
        *(v0 + 96) = v2;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_237EA2238(*(v0 + 88), v1);
    *(v0 + 144) = *(v0 + 200) * (v8 + *(v0 + 144));
  }
}

uint64_t sub_237EA2540(uint64_t a1)
{
  v2 = v1;
  v24 = *MEMORY[0x277D85DE8];
  memcpy(__dst, v1, sizeof(__dst));
  v4 = *(v1 + 72);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 88);
  v8 = *(v2 + 96);
  memcpy(&__src[3], v2, 0x48uLL);
  *(&__src[8] + 1) = v6;
  __src[0] = xmmword_237F1D6A0;
  __src[1] = xmmword_237F1D6B0;
  BYTE10(__src[16]) = 1;
  *(&__src[2] + 1) = 20;
  *(&__src[7] + 1) = v4;
  *&__src[8] = v7;
  *&__src[9] = a1;
  if (v5 < 0.000000001 || v5 > 25.0)
  {
    __break(1u);
    goto LABEL_13;
  }

  *&__src[16] = 0x4038FFFFFFFBB47DLL;
  if (v5 + (v5 + -0.000000001) * 4.0 < 0.000000001)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *&__src[15] = 0x3E112E0BE826D695;
  *(&__src[15] + 1) = v5 + (v5 + -0.000000001) * 4.0;
  swift_retain_n();
  sub_237D81F2C(__dst, v21);
  v10 = sub_237C65348();

  v11 = DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB79C, a1, v8, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v10);
  if (v21[0] >= 1.0e-10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(&__src[10] + 1) = 0x3E112E0BE826D695;
  *&__src[11] = v6;
  *(&__src[11] + 1) = v21[0];
  *&__src[12] = 0x3E112E0BE826D695;
  *(&__src[12] + 1) = v6;
  *&__src[13] = v21[0];
  *(&__src[13] + 1) = v5;
  __src[14] = v6;
  memset(&__src[18], 0, 17);
  *&__src[21] = 0;
  BYTE8(__src[21]) = 0;
  __src[20] = 0x7FF8000000000000uLL;
  *(&__src[19] + 1) = MEMORY[0x277D84F90];
  *&__src[17] = v7;
  *(&__src[17] + 1) = v8;
  WORD4(__src[16]) = 256;
  *(&__src[9] + 8) = vmulq_n_f64(xmmword_237F1D6A0, v21[0]);
  BYTE8(__src[22]) = 0;
  __src[23] = 0uLL;
  *&__src[22] = v5;
  *&__src[2] = *(v2 + 200);
  *(v2 + 152) = sub_237EA3A78(v11);
  v14 = *(v2 + 176);
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  *(v2 + 176) = v17;
  v18 = *(v2 + 184);
  v16 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v16)
  {
    goto LABEL_16;
  }

  *(v2 + 184) = v19;
  if ((v12 & 1) == 0)
  {
    *(v2 + 160) = 1;
  }

  memcpy(v21, __src, sizeof(v21));
  return sub_237C9A114(v21, &qword_27DEB64F0);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_237EA2810(double a1)
{
  v3 = a1;
  v2[2] = &v3;

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v2, v1, MEMORY[0x277D84F78] + 8);
}

void sub_237EA289C()
{
  v2 = v0[21];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_33;
  }

  v5 = v0;
  v6 = v0[10];
  if (!v6)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v4 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_36;
  }

  v8 = v1;
  v9 = v4 % v6;
  v10 = v0[33];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 264) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E643FC();
    v10 = v12;
    *(v5 + 264) = v12;
  }

  v13 = *(v5 + 240);
  if (*(v5 + 256))
  {
    v14 = v9 * v13;
    if ((v9 * v13) >> 64 != (v9 * v13) >> 63)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v15 = 1;
  }

  else
  {
    v15 = *(v5 + 248);
    v14 = v9;
  }

  sub_237EA2E7C(v10 + 32 + 8 * v14, v13, v15, v5);
  *(v5 + 264) = v10;
  v16 = *(v5 + 232);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 232) = v16;
  if ((v17 & 1) == 0)
  {
    sub_237E643FC();
    v16 = v18;
    *(v5 + 232) = v18;
  }

  v19 = *(v5 + 208);
  if (*(v5 + 224))
  {
    v20 = v9 * v19;
    if ((v9 * v19) >> 64 != (v9 * v19) >> 63)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v21 = 1;
  }

  else
  {
    v21 = *(v5 + 216);
    v20 = v9;
  }

  v22 = sub_237EA2ED4(v16 + 32 + 8 * v20, v19, v21, v5);
  *(v5 + 232) = v16;
  v23 = *(v5 + 296);
  MEMORY[0x28223BE20](v22);
  v39 = v5;
  v40 = v9;
  v24 = sub_237C65348();

  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB6A8, v38, v23, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v24);
  v25 = v8;

  v26 = *&v41[3];
  v27 = *(v5 + 280);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC();
    v27 = v28;
  }

  if (v9 < 0)
  {
    goto LABEL_34;
  }

  if (v9 >= *(v27 + 16))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v27 + 8 * v9 + 32) = 1.0 / v26;
  *(v5 + 280) = v27;
  v29 = *(v5 + 96);

  *(v5 + 272) = v29;
  MEMORY[0x28223BE20](v30);
  v39 = v5;
  v40 = v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  v32 = MEMORY[0x277D84F78];
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB6C4, v38, v31, MEMORY[0x277D84F78] + 8);
  memcpy(v42, v5, 0x139uLL);
  if (!sub_237EA38B0())
  {
    if (v42[19] < 1.0)
    {
      *(v5 + 152) = fmin(v42[19] * 1.25, 1.0);
    }

    goto LABEL_30;
  }

  v33 = *&v42[34];
  v34 = *(*&v42[34] + 16);
  if (v34)
  {
    v35 = sub_237EF89B0();
    *(v35 + 16) = v34;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v41[0] = v35 + 32;
  v41[1] = v34;
  v41[2] = 1;
  sub_237EAAD58(v41, v33);
  *(v35 + 16) = v34;
  sub_237EA2540(v35);

  if (!v25)
  {
LABEL_30:
    v36 = *(v5 + 272);
    sub_237EA2810(-*(v5 + 152));
    v37 = v36;

    *(v5 + 296) = v37;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7CC, v37, v31, v32 + 8);
  }
}

uint64_t sub_237EA2C78()
{
  v1 = *(v0 + 296);
  v2 = MEMORY[0x277D839F8];
  v3 = sub_237C65348();
  KeyPath = swift_getKeyPath();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB68C, KeyPath, v1, v2, v2, v3);

  if (v8 <= 4.93038066e-32)
  {
    v6 = 0;
LABEL_6:
    sub_237DC6AD0();
    swift_allocError();
    *v7 = v6;
    return swift_willThrow();
  }

  result = DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB5E0, 0, v1, MEMORY[0x277D839F8], MEMORY[0x277D839B0], v3);
  if (LOBYTE(v8) != 1)
  {
    v6 = 1;
    goto LABEL_6;
  }

  return result;
}

double sub_237EA2DC0(double a1, double a2, double a3, double a4)
{
  v4 = a4 - (a2 - a1 + a2 - a1) + a3;
  v5 = (a2 - a1) * 3.0 - a4 - (a3 + a3);
  if (a2 >= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 1.0;
  v8 = 0.0;
  if (a1 >= a2)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = 32;
  do
  {
    v11 = (v7 + v8) * 0.5;
    v12 = v11 * (v11 * (v5 + v4 * v11) + a3) + a1;
    if (v12 < v6)
    {
      v9 = (v7 + v8) * 0.5;
    }

    if (v7 - v8 < 0.000001)
    {
      break;
    }

    if (v12 < v6)
    {
      v6 = v11 * (v11 * (v5 + v4 * v11) + a3) + a1;
    }

    if (v11 * (v5 + v5 + v4 * 3.0 * v11) + a3 <= 0.0)
    {
      v8 = (v7 + v8) * 0.5;
    }

    else
    {
      v7 = (v7 + v8) * 0.5;
    }

    --v10;
  }

  while (v10);
  return v9;
}

uint64_t sub_237EA2E7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a4 + 296);
      if (v4 >= *(v5 + 16))
      {
        break;
      }

      if ((v4 * a3) >> 64 != (v4 * a3) >> 63)
      {
        goto LABEL_9;
      }

      *(result + 8 * v4 * a3) = *(v5 + 8 * v4 + 32);
      if (a2 == ++v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_237EA2ED4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a2)
  {
    for (i = 4; ; ++i)
    {
      v5 = i - 4;
      v6 = *(a4 + 96);
      if ((i - 4) >= *(v6 + 16))
      {
        break;
      }

      v7 = *(a4 + 304);
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_10;
      }

      if ((v5 * a3) >> 64 != (v5 * a3) >> 63)
      {
        goto LABEL_11;
      }

      *(result + 8 * v5 * a3) = *(v6 + 8 * i) - *(v7 + 8 * i);
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_237EA2F44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  v8 = *(a4 + 208);
  if ((*(a4 + 224) & 1) == 0)
  {
    v9 = *(a4 + 216);
    goto LABEL_5;
  }

  if ((a5 * v8) >> 64 == (a5 * v8) >> 63)
  {
    v9 = 1;
    a5 *= v8;
LABEL_5:
    v10 = *(a4 + 232) + 8 * a5;

    sub_237EA3000(v7, a2, a3, v10 + 32, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_237EA3000(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5)
  {
    goto LABEL_25;
  }

  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = a2 * a6;
  if ((a2 * a6) >> 64 != (a2 * a6) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000050, 0x8000000237EFEBF0);
    v14 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v14);

    MEMORY[0x2383E0710](0x20646E6120, 0xE500000000000000);
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    result = sub_237EF9740();
    __break(1u);
    return result;
  }

  if (!a3 || !a6)
  {
    goto LABEL_24;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = a2 * a3;
  while (1)
  {
    v11 = v10 >= v8;
    if (a3 > 0)
    {
      v11 = v8 >= a2 * a3;
      v10 = a2 * a3;
    }

    if (v11)
    {
      break;
    }

    v12 = v8 + a3;
    if (__OFADD__(v8, a3))
    {
      v12 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a6 <= 0)
    {
      if (v6 >= v7)
      {
        return result;
      }
    }

    else if (v7 >= v6)
    {
      return result;
    }

    v13 = *(a4 + 8 * v7);
    if (__OFADD__(v7, a6))
    {
      v7 = ((v7 + a6) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 += a6;
    }

    v9 = v9 + *(result + 8 * v8) * v13;
    v8 = v12;
  }

  return result;
}

void sub_237EA31E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 80) >= *(a4 + 168))
  {
    v5 = *(a4 + 168);
  }

  else
  {
    v5 = *(a4 + 80);
  }

  if (v5 < 0)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v5)
  {
    v8 = 0;
    do
    {
      v9 = *(a4 + 80);
      v10 = a5 + v9;
      if (__OFADD__(a5, v9))
      {
        goto LABEL_70;
      }

      v11 = __OFSUB__(v10, v8);
      v12 = v10 - v8;
      if (v11)
      {
        goto LABEL_71;
      }

      if (!v9)
      {
        goto LABEL_72;
      }

      if (v12 == 0x8000000000000000 && v9 == -1)
      {
        goto LABEL_75;
      }

      v14 = v12 % v9;
      v15 = *(a4 + 240);
      if (*(a4 + 256))
      {
        v16 = v14 * v15;
        if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
        {
          goto LABEL_76;
        }

        v17 = 1;
      }

      else
      {
        v17 = *(a4 + 248);
        v16 = v12 % v9;
      }

      v18 = *(a4 + 264) + 32 + 8 * v16;
      sub_237E61C54(v14, *(a4 + 280));
      v20 = v19;

      sub_237EA3000(v18, v15, v17, a1, a2, a3);
      v22 = v21;
      v23 = *(a4 + 288);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 288) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237E643FC();
        v23 = v25;
        *(a4 + 288) = v25;
      }

      if (v14 < 0)
      {
        goto LABEL_73;
      }

      if (v14 >= *(v23 + 16))
      {
        goto LABEL_74;
      }

      *(v23 + 8 * v14 + 32) = v20 * v22;

      v26 = *(a4 + 208);
      if (*(a4 + 224))
      {
        v27 = v14 * v26;
        if ((v14 * v26) >> 64 != (v14 * v26) >> 63)
        {
          goto LABEL_77;
        }

        v28 = 1;
      }

      else
      {
        v28 = *(a4 + 216);
        v27 = v14;
      }

      ++v8;
      v29 = *(a4 + 232) + 32 + 8 * v27;
      sub_237E61C54(v14, *(a4 + 288));
      v31 = -v30;

      sub_237EA35FC(v29, v26, v28, a1, a2, a3, v31);
    }

    while (v5 != v8);
  }

  v32 = *(a4 + 208);
  if (*(a4 + 224))
  {
    v33 = a5 * v32;
    if ((a5 * v32) >> 64 != (a5 * v32) >> 63)
    {
LABEL_82:
      __break(1u);
      return;
    }

    v34 = 1;
  }

  else
  {
    v34 = *(a4 + 216);
    v33 = a5;
  }

  sub_237EA37E4(*(a4 + 232) + 32 + 8 * v33, v32, v34);
  if (a5 < 0)
  {
    goto LABEL_79;
  }

  v36 = *(a4 + 280);
  if (*(v36 + 16) <= a5)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_237EA384C(a1, a2, a3, 1.0 / (v35 * *(v36 + 8 * a5 + 32)));
  if (*(a4 + 80) >= *(a4 + 168))
  {
    v37 = *(a4 + 168);
  }

  else
  {
    v37 = *(a4 + 80);
  }

  if (v37 < 0)
  {
    goto LABEL_81;
  }

  if (v37)
  {
    v38 = v37;
    while (v37 >= v38)
    {
      v39 = *(a4 + 80);
      v40 = a5 + v39;
      if (__OFADD__(a5, v39))
      {
        goto LABEL_61;
      }

      v11 = __OFSUB__(v40, --v38);
      v41 = v40 - v38;
      if (v11)
      {
        goto LABEL_62;
      }

      if (!v39)
      {
        goto LABEL_63;
      }

      if (v41 == 0x8000000000000000 && v39 == -1)
      {
        goto LABEL_67;
      }

      v43 = a5;
      v44 = v41 % v39;
      if (v41 % v39 < 0)
      {
        goto LABEL_64;
      }

      v45 = *(a4 + 280);
      if (v44 >= *(v45 + 16))
      {
        goto LABEL_65;
      }

      v46 = *(v45 + 8 * v44 + 32);
      v47 = *(a4 + 208);
      if (*(a4 + 224))
      {
        v48 = v44 * v47;
        if ((v44 * v47) >> 64 != (v44 * v47) >> 63)
        {
          goto LABEL_68;
        }

        v49 = 1;
      }

      else
      {
        v49 = *(a4 + 216);
        v48 = v44;
      }

      v50 = *(a4 + 232) + 32 + 8 * v48;

      sub_237EA3000(v50, v47, v49, a1, a2, a3);
      v52 = v51;

      v53 = *(a4 + 240);
      if (*(a4 + 256))
      {
        v54 = v44 * v53;
        if ((v44 * v53) >> 64 != (v44 * v53) >> 63)
        {
          goto LABEL_69;
        }

        v55 = 1;
      }

      else
      {
        v55 = *(a4 + 248);
        v54 = v44;
      }

      v56 = *(a4 + 288);
      if (v44 >= *(v56 + 16))
      {
        goto LABEL_66;
      }

      v57 = *(a4 + 264) + 32 + 8 * v54;
      v58 = *(v56 + 8 * v44 + 32) - v46 * v52;

      sub_237EA35FC(v57, v53, v55, a1, a2, a3, v58);

      a5 = v43;
      if (!v38)
      {
        return;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
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
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }
}

uint64_t sub_237EA35FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a5 != a2)
  {
    goto LABEL_25;
  }

  if ((a5 * a6) >> 64 != (a5 * a6) >> 63)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = a5 * a3;
  if ((a5 * a3) >> 64 != (a5 * a3) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000041, 0x8000000237F018D0);
    v14 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v14);

    MEMORY[0x2383E0710](0x20646E6120, 0xE500000000000000);
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    result = sub_237EF9740();
    __break(1u);
    return result;
  }

  if (!a3 || !a6)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v9 = 0;
  v10 = a5 * a6;
  while (1)
  {
    v11 = v10 >= v9;
    if (a6 > 0)
    {
      v11 = v9 >= a5 * a6;
      v10 = a5 * a6;
    }

    if (v11)
    {
      break;
    }

    v12 = v9 + a6;
    if (__OFADD__(v9, a6))
    {
      v12 = (a6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a3 <= 0)
    {
      if (v7 >= v8)
      {
        return result;
      }
    }

    else if (v8 >= v7)
    {
      return result;
    }

    v13 = *(result + 8 * v8);
    if (__OFADD__(v8, a3))
    {
      v8 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v8 += a3;
    }

    *(a4 + 8 * v9) = *(a4 + 8 * v9) + v13 * a7;
    v9 = v12;
  }

  return result;
}

uint64_t sub_237EA37E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v4 = 0;
  for (i = 0.0; ; i = i + v7 * v7)
  {
    v6 = v3 >= v4;
    if (a3 > 0)
    {
      v6 = v4 >= v3;
    }

    if (v6)
    {
      break;
    }

    v7 = *(result + 8 * v4);
    if (__OFADD__(v4, a3))
    {
      v4 = ((v4 + a3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v4 += a3;
    }
  }

  return result;
}

uint64_t sub_237EA384C(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  while (1)
  {
    v6 = v4 >= v5;
    if (a3 > 0)
    {
      v6 = v5 >= v4;
    }

    if (v6)
    {
      break;
    }

    *(result + 8 * v5) = *(result + 8 * v5) * a4;
    if (__OFADD__(v5, a3))
    {
      v5 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v5 += a3;
    }
  }

  return result;
}

BOOL sub_237EA38B0()
{
  if ((*(v0 + 312) & 1) != 0 || !*(v0 + 168) || *(v0 + 192) < *(v0 + 144))
  {
    return 1;
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 304);
  v4 = sub_237C65348();
  v5 = MEMORY[0x277D839F8];
  v6 = DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB79C, v3, v2, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v4);
  MEMORY[0x28223BE20](v6);
  KeyPath = swift_getKeyPath();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB784, KeyPath, v2, v5, v5, v4);

  MEMORY[0x28223BE20](v8);
  v9 = swift_getKeyPath();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB784, v9, v3, v5, v5, v4);

  return v10 * 0.9 * v10 < v10 * v10;
}

double sub_237EA3A78(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 368);
  if (v3 >= *(v1 + 40))
  {
LABEL_43:
    if (qword_27DEAD0C8 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_44;
  }

  v4 = *(v1 + 216);
  v56 = (v1 + 272);
  while (1)
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 144);
    v59 = *&v6;
    v58 = v4;
    MEMORY[0x28223BE20](a1);
    v55 = &v58;

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
    v8 = MEMORY[0x277D84F78];
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v54, v7, MEMORY[0x277D84F78] + 8);
    v9 = *&v59;
    v59 = v5;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7CC, v9, v7, v8 + 8);
    v10 = v56;

    v11 = v59;

    *(v2 + 272) = v11;
    v12 = memcpy(__dst, (v2 + 48), 0x48uLL);
    MEMORY[0x28223BE20](v12);
    v55 = __dst;
    MEMORY[0x28223BE20](v13);
    v53[2] = v10;
    v53[3] = sub_237EAB754;
    v53[4] = v14;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v53, v7, v8 + 8);
    *(v2 + 368) = v3 + 1;
    v15 = *(v2 + 376);
    if (__OFADD__(v15, 1))
    {
      break;
    }

    *(v2 + 376) = v15 + 1;
    v16 = *(v2 + 120);
    sub_237EA229C(v10, v16);
    v17 = sub_237EA2238(*(v2 + 272), v16);
    v19 = v18 + *(v2 + 328);
    *(v2 + 224) = v19;
    v20 = *(v2 + 32);
    if (v20 != 1.0)
    {
      v19 = v19 * v20;
      *(v2 + 224) = v19;
      v59 = v20;
      MEMORY[0x28223BE20](v17);
      v55 = &v59;
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v54, v7, MEMORY[0x277D84F78] + 8);
    }

    v21 = *(v2 + 280);
    v22 = sub_237C65348();
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB79C, v6, v21, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v22);
    v23 = v59;
    *(v2 + 232) = v59;
    *&v24 = *(v2 + 152);
    v57 = v24;
    v25 = v4 * *&v24;
    v26 = *(v2 + 136) + v4 * *&v24;
    if (sub_237EA4088(v26))
    {
      *(v2 + 352) = v4;
      return v4;
    }

    if ((*(v2 + 265) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v19 <= v26 && *(v2 + 160) <= v23)
    {
      *(v2 + 265) = 0;
LABEL_18:
      *&a1 = COERCE_DOUBLE(sub_237EA42D0());
      if (v36)
      {
        v35 = *(v2 + 168);
        *(v2 + 266) = 0;
      }

      else
      {
        v35 = *&a1;
      }

      goto LABEL_23;
    }

    v27 = *(v2 + 176);
    if (v19 > v27 || v26 >= v19)
    {
      goto LABEL_18;
    }

    v29 = *&v57;
    v30 = *(v2 + 192);
    v31 = *(v2 + 184) - *&v57;
    *(v2 + 176) = v27 - *&v57 * *(v2 + 168);
    *(v2 + 184) = v31;
    v32.f64[0] = v29 * v30;
    v32.f64[1] = v29;
    *(v2 + 200) = vsubq_f64(*(v2 + 200), v32);
    *(v2 + 224) = v19 - v25;
    *(v2 + 232) = v23 - v29;
    *&a1 = COERCE_DOUBLE(sub_237EA42D0());
    if (v33)
    {
      v34 = *(v2 + 168);
      *(v2 + 266) = 0;
      v35 = v34;
    }

    else
    {
      v35 = *&a1;
      v34 = *(v2 + 168);
    }

    v37 = *(v2 + 152);
    v38.f64[0] = v34 * v37;
    v38.f64[1] = v37;
    *(v2 + 176) = vaddq_f64(*(v2 + 176), v38);
    v38.f64[0] = v37 * *(v2 + 192);
    v38.f64[1] = v37;
    *(v2 + 200) = vaddq_f64(*(v2 + 200), v38);
LABEL_23:
    v39 = *(v2 + 264);
    if (v39 == 1)
    {
      v40 = *(v2 + 192);
      v41 = *(v2 + 168);
      v42 = vabdd_f64(v40, v41);
      v43 = *(v2 + 256);
      *(v2 + 256) = v42;
      if (v40 >= v41)
      {
        v44 = v41;
      }

      else
      {
        v44 = v40;
      }

      if (v41 > v40)
      {
        v45 = v41;
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v45)
      {
        goto LABEL_51;
      }

      v46 = v41 + (v40 - v41) * 0.5;
      if (v43 * 1.33333333 <= v42)
      {
        v35 = v46;
      }
    }

    else
    {
      v41 = *(v2 + 168);
      v45 = v35 + (v35 - v41) * 4.0;
      v44 = v41;
      if (v41 > v45)
      {
        goto LABEL_50;
      }
    }

    *(v2 + 240) = v44;
    *(v2 + 248) = v45;
    v47 = *(v2 + 24);
    if (v35 <= v47)
    {
      v35 = *(v2 + 24);
    }

    if (*(v2 + 16) < v35)
    {
      v35 = *(v2 + 16);
    }

    if ((v39 & (v45 - v44 <= v47)) != 0)
    {
      v4 = v41;
    }

    else
    {
      v4 = v35;
    }

    *(v2 + 216) = v4;
    v3 = *(v2 + 368);
    if (v3 >= *(v2 + 40))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_44:
  v48 = sub_237EF7DB0();
  __swift_project_value_buffer(v48, qword_27DEE2458);
  v49 = sub_237EF7D90();
  v50 = sub_237EF8F80();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_237C51000, v49, v50, "The optimizer reached the function evaluation limit when adjusting the step size.", v51, 2u);
    MEMORY[0x2383E2DF0](v51, -1, -1);
  }

  v4 = *(v2 + 168);
  *(v2 + 352) = v4;
  *(v2 + 360) = 1;
  return v4;
}

BOOL sub_237EA4038(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    v3 = 0;
    v4 = 8 * a3 * a2;
    while (v4 != v3 && (~*(result + v3) & 0x7FF0000000000000) != 0)
    {
      v3 += 8 * a3;
    }

    return v4 == v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237EA4088(double a1)
{
  v2 = v1;
  if (*(v1 + 264) == 1 && ((v3 = *(v1 + 216), v3 <= *(v1 + 240)) || *(v1 + 248) <= v3) || *(v1 + 266) != 1)
  {
    if (qword_27DEAD0C8 != -1)
    {
      swift_once();
    }

    v7 = sub_237EF7DB0();
    __swift_project_value_buffer(v7, qword_27DEE2458);
    v8 = sub_237EF7D90();
    v9 = sub_237EF8F80();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Failed to find a suitable step size. Tolerances may be too small or dataset may be poorly scaled. This typically happens when the number of features is much larger than the number of training examples. Consider pruning features manually or increasing the regularization value.";
    goto LABEL_18;
  }

  v4 = *(v1 + 216);
  if (*(v1 + 16) <= v4 && *(v1 + 224) <= a1 && *(v1 + 232) <= *(v1 + 152))
  {
LABEL_27:
    v12 = 1;
    goto LABEL_20;
  }

  v5 = *(v1 + 24);
  if ((v4 > v5 || *(v1 + 224) <= a1 && *(v1 + 152) > *(v1 + 232)) && (!*(v1 + 264) || *(v1 + 248) - *(v1 + 240) > v5))
  {
    if (*(v1 + 224) > a1 || fabs(*(v1 + 232)) > -*(v1 + 160))
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (qword_27DEAD0C8 != -1)
  {
    swift_once();
  }

  v13 = sub_237EF7DB0();
  __swift_project_value_buffer(v13, qword_27DEE2458);
  v8 = sub_237EF7D90();
  v9 = sub_237EF8F80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Reached the minimum allowed step size.";
LABEL_18:
    _os_log_impl(&dword_237C51000, v8, v9, v11, v10, 2u);
    MEMORY[0x2383E2DF0](v10, -1, -1);
  }

LABEL_19:

  v12 = 0;
LABEL_20:
  *(v2 + 360) = v12;
  return 1;
}

uint64_t sub_237EA42D0()
{
  v1 = *(v0 + 216) - *(v0 + 168);
  v2 = *(v0 + 184);
  if (v2 * v1 >= 1.0e-10)
  {
    return 0;
  }

  v4 = v0;
  v5 = *(v0 + 176);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = (v5 - v7) / v1;
  v9 = v6 + v2 + v8 * 3.0;
  v10 = fabs(v9);
  v11 = fabs(v2);
  v12 = fabs(v6);
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v10 > v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if (v5 >= v7)
  {
    v17 = sub_237EF8C00();
    if ((sub_237EF8C00() ^ v17))
    {
      *(v4 + 264) = 1;
      memcpy(v24, v4, sizeof(v24));
      v18 = sub_237EA4548(v9, v14);
    }

    else
    {
      if (v12 < v11)
      {
        memcpy(v24, v4, sizeof(v24));
        v16 = sub_237EA45C8(v9, v14);
        v15 = 1;
        goto LABEL_17;
      }

      memcpy(v24, v4, sizeof(v24));
      v18 = sub_237EA46AC();
    }

    v16 = v18;
    v15 = 0;
    goto LABEL_17;
  }

  v15 = 1;
  *(v0 + 264) = 1;
  memcpy(v24, v0, sizeof(v24));
  v16 = sub_237EA44B8(v9, v14, v8);
LABEL_17:
  sub_237EA4764();
  v19 = *(v4 + 248);
  if (v16 < v19)
  {
    v19 = v16;
  }

  if (*(v4 + 240) > v19)
  {
    v19 = *(v4 + 240);
  }

  if (v15 && *(v4 + 264))
  {
    v20 = *(v4 + 192);
    v21 = *(v4 + 168);
    v22 = v21 + (v20 - v21) * 0.666666667;
    if (v22 > v19)
    {
      v23 = v21 + (v20 - v21) * 0.666666667;
    }

    else
    {
      v23 = v19;
    }

    if (v19 >= v22)
    {
      v19 = v21 + (v20 - v21) * 0.666666667;
    }

    if (v21 >= v20)
    {
      v19 = v23;
    }
  }

  return *&v19;
}

double sub_237EA44B8(double a1, double a2, double a3)
{
  v4 = v3[21];
  v5 = v3[23];
  v6 = v3[27];
  v7 = v3[29];
  v8 = sqrt(a1 / a2 * (a1 / a2) - v5 / a2 * (v7 / a2)) * a2;
  v9 = -v8;
  if (v6 >= v4)
  {
    v9 = v8;
  }

  result = v4 + (v6 - v4) * ((v9 - v5 + a1) / (v7 + v9 + v9 - v5));
  v11 = v4 + (v6 - v4) * (v5 / (v5 + a3) * 0.5);
  v12 = vabdd_f64(result, v4);
  v13 = vabdd_f64(v11, v4);
  v14 = (v11 + result) * 0.5;
  if (v12 >= v13)
  {
    return v14;
  }

  return result;
}

double sub_237EA4548(double a1, double a2)
{
  v3 = v2[21];
  v4 = v2[23];
  v5 = v2[27];
  v6 = v2[29];
  v7 = sqrt(a1 / a2 * (a1 / a2) - v4 / a2 * (v6 / a2)) * a2;
  v8 = -v7;
  if (v3 >= v5)
  {
    v8 = v7;
  }

  result = v5 + (v3 - v5) * ((v8 - v6 + a1) / (v4 + v8 + v8 - v6));
  if (vabdd_f64(v5 + (v3 - v5) * (v6 / (v6 - v4)), v5) >= vabdd_f64(result, v5))
  {
    return v5 + (v3 - v5) * (v6 / (v6 - v4));
  }

  return result;
}

double sub_237EA45C8(double a1, double a2)
{
  v3 = *(v2 + 168);
  v4 = *(v2 + 184);
  v5 = *(v2 + 216);
  v6 = *(v2 + 232);
  v7 = a1 / a2 * (a1 / a2) - v4 / a2 * (v6 / a2);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = sqrt(v7) * a2;
  v9 = -v8;
  if (v3 >= v5)
  {
    v9 = v8;
  }

  if (fabs(v8) > 1.0e-10 || (v10 = (v9 - v6 + a1) / (v9 + v4 - v6 + v9), v10 >= 0.0))
  {
    if (v3 >= v5)
    {
      result = *(v2 + 240);
    }

    else
    {
      result = *(v2 + 248);
    }
  }

  else
  {
    result = v5 + (v3 - v5) * v10;
  }

  v12 = v5 + (v3 - v5) * (v6 / (v6 - v4));
  v13 = vabdd_f64(v5, result);
  v14 = vabdd_f64(v5, v12);
  if (*(v2 + 264))
  {
    v15 = v13 < v14;
  }

  else
  {
    v15 = v14 < v13;
  }

  if (!v15)
  {
    return v12;
  }

  return result;
}

double sub_237EA46AC()
{
  v1 = *(v0 + 216);
  if (*(v0 + 264))
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 192);
    v4 = *(v0 + 208);
    v5 = v3 - v1;
    v6 = v2 + v4 + (*(v0 + 224) - *(v0 + 200)) * 3.0 / (v3 - v1);
    v7 = fabs(v6);
    v8 = fabs(v4);
    v9 = fabs(v2);
    if (v8 <= v9)
    {
      v8 = v9;
    }

    if (v7 <= v8)
    {
      v7 = v8;
    }

    v10 = v7 * sqrt(v6 / v7 * (v6 / v7) - v4 / v7 * (v2 / v7));
    if (v3 >= v1)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    return v1 + v5 * ((v6 + v11 - v2) / (v4 + v11 + v11 - v2));
  }

  else if (*(v0 + 168) >= v1)
  {
    return *(v0 + 240);
  }

  else
  {
    return *(v0 + 248);
  }
}

void sub_237EA4764()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  if (v2 >= v1)
  {
    v3 = *(v0 + 232);
    v4 = sub_237EF8C00();
    v5 = *(v0 + 184);
    if ((sub_237EF8C00() ^ v4))
    {
      *(v0 + 192) = *(v0 + 168);
      *(v0 + 200) = v2;
      *(v0 + 208) = v5;
    }

    *(v0 + 168) = *(v0 + 216);
    *(v0 + 176) = v1;
    *(v0 + 184) = v3;
  }

  else
  {
    *(v0 + 192) = *(v0 + 216);
    *(v0 + 200) = v1;
    *(v0 + 208) = *(v0 + 232);
  }
}

void *sub_237EA47F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[7] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  v8[6] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB6E0, v8, v6, MEMORY[0x277D84F78] + 8);
}

void *sub_237EA4880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a7;
  v11[6] = a8;
  v11[7] = a9;
  v11[8] = a1;
  v11[9] = a2;
  v11[10] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB62D8);
  return DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(sub_237EAB710, v11, v9, MEMORY[0x277D84F78] + 8);
}

void sub_237EA491C(double a1)
{
  v2 = v1;
  if (*(v1 + 136) >= a1)
  {
    if (qword_27DEAD0C8 != -1)
    {
      swift_once();
    }

    v8 = sub_237EF7DB0();
    __swift_project_value_buffer(v8, qword_27DEE2458);
    sub_237EAAFB8(v1, v9, &qword_27DEB6360);
    v4 = sub_237EF7D90();
    v5 = sub_237EF8F80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v2 + 168);
      sub_237C9A114(v2, &qword_27DEB6360);
      v7 = "The optimizer failed to converge after %ld iterations.";
      goto LABEL_10;
    }

LABEL_11:
    sub_237C9A114(v2, &qword_27DEB6360);
    goto LABEL_12;
  }

  if (qword_27DEAD0C8 != -1)
  {
    swift_once();
  }

  v3 = sub_237EF7DB0();
  __swift_project_value_buffer(v3, qword_27DEE2458);
  sub_237EAAFB8(v1, v9, &qword_27DEB6360);
  v4 = sub_237EF7D90();
  v5 = sub_237EF8F70();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_11;
  }

  v6 = swift_slowAlloc();
  *v6 = 134217984;
  *(v6 + 4) = *(v2 + 168);
  sub_237C9A114(v2, &qword_27DEB6360);
  v7 = "The optimizer converged after %ld iterations.";
LABEL_10:
  _os_log_impl(&dword_237C51000, v4, v5, v7, v6, 0xCu);
  MEMORY[0x2383E2DF0](v6, -1, -1);
LABEL_12:
}

void LinearSupportVectorClassifier.Configuration.init()(uint64_t a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 10;
  *(a1 + 16) = 0x3F847AE147AE147BLL;
  *(a1 + 24) = 1;
}

double LinearSupportVectorClassifier.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

double LinearSupportVectorClassifier.configuration.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  return result;
}

uint64_t LinearSupportVectorClassifier.labels.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t LinearSupportVectorClassifier.init(labels:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  sub_237EF8260();
  v9 = sub_237EF8C70();

  if (v9 == 2)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
    *(a3 + 32) = a1;
  }

  else
  {
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000047, 0x8000000237F017C0);
    sub_237EF8C70();

    v11 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v11);

    MEMORY[0x2383E0710](0x736C6562616C20, 0xE700000000000000);
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    *v12 = 0xD00000000000001DLL;
    *(v12 + 8) = 0x8000000237F1D6C0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    *(v12 + 32) = 5;
    return swift_willThrow();
  }

  return result;
}

void LinearSupportVectorClassifier.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_49();
  v214 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v202 = v9;
  v203 = v10;
  v219 = v11;
  v201 = v12;
  v275 = *MEMORY[0x277D85DE8];
  v13 = *v0;
  v210 = *(v0 + 8);
  v14 = *(v0 + 16);
  v207 = *(v0 + 24);
  v206 = *(v0 + 32);
  v15 = v7[3];
  v233 = v7[2];
  v208 = v15;
  v234 = v15;
  v16 = v7[4];
  v17 = v7[5];
  v216 = v233;
  v217 = v16;
  v235 = v5;
  v236 = v16;
  v18 = v7[6];
  v19 = v7[7];
  v237 = v17;
  v218 = v17;
  v238 = v18;
  v21 = v7[8];
  v20 = v7[9];
  v239 = v19;
  v240 = v21;
  v241 = v20;
  v242 = v3;
  KeyPath = swift_getKeyPath();
  v232[2] = v6;
  v232[3] = v17;
  v209 = v18;
  v232[4] = v18;
  v232[5] = v19;
  v212 = v21;
  v213 = v19;
  v232[6] = v21;
  v232[7] = v20;
  v205 = v20;
  v232[8] = v4;
  v232[9] = KeyPath;
  OUTLINED_FUNCTION_8_8();
  v23 = sub_237EF7E90();
  v215 = v6;
  v211 = v4;
  v25 = sub_237C8FFEC(sub_237CF9EA4, v232, v6, v23, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v24);

  v220 = v25;
  v26 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v28 = v26;
  v29 = v216;
  v30 = v217;
  v31 = v218;
  sub_237EDB96C(&v220, v28, v216, WitnessTable, v217, v218, v228);
  if (v1)
  {

    goto LABEL_11;
  }

  v194 = v8;

  v214 = &v191;
  v199 = v228[1];
  v200 = v228[0];
  v198 = v229;
  v204 = v230;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_51();
  v34 = v208;
  v33 = v209;
  *(v35 - 80) = v29;
  *(v35 - 72) = v34;
  *(v35 - 64) = v215;
  *(v35 - 56) = v30;
  v36 = v31;
  *(v35 - 48) = v31;
  *(v35 - 40) = v33;
  v38 = v212;
  v37 = v213;
  *(v35 - 32) = v213;
  *(v35 - 24) = v38;
  v39 = v205;
  v40 = v211;
  *(v35 - 16) = v205;
  *(v35 - 8) = v40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_42();
  v214 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_51();
  v43 = v215;
  *(v44 - 64) = v215;
  *(v44 - 56) = v36;
  *(v44 - 48) = v33;
  *(v44 - 40) = v37;
  *(v44 - 32) = v38;
  *(v44 - 24) = v39;
  v45 = v211;
  *(v44 - 16) = v211;
  *(v44 - 8) = v46;
  v49 = sub_237C8FFEC(sub_237CFA07C, v47, v43, v34, MEMORY[0x277D84A98], v45, MEMORY[0x277D84AC0], v48);
  v219 = 0;

  v249[0] = v49;
  v50 = sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  v51 = sub_237E5E22C(v249, v34, v50);
  v214 = &v191;
  v249[0] = v49;
  MEMORY[0x28223BE20](v51);
  v52 = v215;
  *(&v191 - 12) = v216;
  *(&v191 - 11) = v34;
  v54 = v217;
  v53 = v218;
  *(&v191 - 10) = v52;
  *(&v191 - 9) = v54;
  *(&v191 - 8) = v53;
  *(&v191 - 7) = v33;
  v55 = v212;
  *(&v191 - 6) = v213;
  *(&v191 - 5) = v55;
  v187 = v39;
  v188 = v45;
  v211 = v56;
  v189 = v56;
  v190 = v57;
  v197 = v57;
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v58 = v219;
  sub_237C9339C();
  v60 = v59;

  v61 = v199;
  v249[0] = v200;
  v249[1] = v199;
  LOBYTE(v249[2]) = v198;
  v249[3] = v204;

  sub_237EF8260();
  v196 = v60;
  v62 = v60;
  LOBYTE(v60) = v207;
  sub_237D80DD0(v249, v62, v207, v264);
  *&v243[0] = v13;
  *&v243[1] = v210;
  v243[2] = v14;
  v244 = v60;
  v245 = v206;
  memcpy(v248, v264, 0x48uLL);
  sub_237EA5FB4(v248, v249);
  v63 = sub_237E613EC(v61, 0.0);
  v64 = v249[1];
  sub_237EA2358();
  v254 = 1.0;

  v250 = v63;
  if (v64 < 0)
  {
    goto LABEL_108;
  }

  sub_237C62CCC(v64, 0.0);
  v66 = v65;

  v251 = v66;
  memcpy(v274, v249, sizeof(v274));
  OUTLINED_FUNCTION_26_31();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_4_93();
  *(v68 - 16) = v274;
  MEMORY[0x28223BE20](v69);
  v187 = &v250;
  v188 = sub_237D81F94;
  v189 = v70;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  v215 = &v250;
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAADBC, (&v191 - 6), v214, MEMORY[0x277D84F78] + 8);
  if (__OFADD__(v257, 1))
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
  }

  ++v257;
  if (__OFADD__(v258, 1))
  {
    goto LABEL_110;
  }

  ++v258;
  OUTLINED_FUNCTION_36_2();
  if (!(v96 ^ v73 | v149))
  {
    LOBYTE(v74) = 0;
    goto LABEL_9;
  }

  v75 = fabs(v72);
  MEMORY[0x28223BE20](v71);
  v76 = MEMORY[0x277D839F8];
  v189 = MEMORY[0x277D839F8];
  v77 = sub_237C65348();
  v190 = v77;
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_33();
  DenseVector.withUnsafeVectorPointer<A>(_:)(v78, v79, v80, v81, v82, v83);

  OUTLINED_FUNCTION_42_19(v248[0]);
  v260 = v75;
  sub_237EA2484();
  v74 = &v191;
  v84 = v251;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_13_54();
  *(v86 - 16) = v76;
  *(v86 - 8) = v77;
  swift_getKeyPath();
  v87 = OUTLINED_FUNCTION_25_39();
  v195 = v77;
  DenseVector.withUnsafeVectorPointer<A>(_:)(v87, v88, v89, v90, v91, v77);

  v92 = v248[0] / v75;
  v252 = v92;
  OUTLINED_FUNCTION_44_21();
  if (!(v96 ^ v73 | v149))
  {
LABEL_9:

    sub_237D81F64(v264);

    sub_237DC6AD0();
    OUTLINED_FUNCTION_45_0();
    *v93 = v74;
    swift_willThrow();

LABEL_10:
    OUTLINED_FUNCTION_34_18(v248);
    sub_237C9A114(v248, &qword_27DEB6360);
    goto LABEL_11;
  }

  v192 = 0.8;
  v94 = v209;
  v95 = v213;
  while (1)
  {
    v96 = v256 >= v210 || v92 < v14;
    if (v96 || (v255 & 1) != 0)
    {
      break;
    }

    if (v256)
    {
      sub_237EA289C();
      if (v58)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_34_18(v268);
      sub_237EA2C78();
      v97 = v269;
      v221 = v273;
      v98 = v270;
      v99 = v271;
      v100 = *&v268[12];
      v101 = v268[9];
      v102 = v272;
      v259 = v269;

      v103 = sub_237C9A114(&v221, &qword_27DEB25E8);
      v104 = 0;
      v193 = v100;
      v262 = v100;
      v263 = 0;
      v219 = v101;
      v105 = v101 + 32;
      v106 = 1;
LABEL_21:
      if (v106)
      {
        memcpy(v267, v249, sizeof(v267));
        OUTLINED_FUNCTION_26_31();
        MEMORY[0x28223BE20](v107);
        OUTLINED_FUNCTION_4_93();
        OUTLINED_FUNCTION_32_31(v108);
        MEMORY[0x28223BE20](v109);
        OUTLINED_FUNCTION_20_35();
        v110 = v214;
        *(v111 - 32) = v215;
        *(v111 - 24) = sub_237EAB754;
        *(v111 - 16) = v112;
        DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v113, v110, MEMORY[0x277D84F78] + 8);
        v73 = __OFADD__(v98++, 1);
        if (v73)
        {
          goto LABEL_103;
        }

        v257 = v98;
        v73 = __OFADD__(v99++, 1);
        if (v73)
        {
          goto LABEL_104;
        }

        v258 = v99;
        v114 = v253;
        OUTLINED_FUNCTION_3_99();
        if (!(v96 ^ v73 | v149))
        {
          goto LABEL_89;
        }

        v115 = *(v219 + 16);
        v116 = v251;
        if (v115)
        {
          if (v115 > *(*&v251 + 16))
          {
            goto LABEL_106;
          }

          v117 = v250;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237E643FC();
            v116 = v118;
          }

          v119 = 0;
          v120 = v117 + 32;
          v121 = *(v219 + 16);
          v122 = *(v117 + 16);
          do
          {
            if (v121 == v119)
            {
              goto LABEL_92;
            }

            if (v122 == v119)
            {
              goto LABEL_93;
            }

            if (v119 >= *(*&v116 + 16))
            {
              goto LABEL_94;
            }

            OUTLINED_FUNCTION_5_92(*(v105 + 8 * v119), *(v120 + 8 * v119));
          }

          while (v115 != v123);
          v251 = v116;
        }

        if (!*(*&v116 + 16))
        {
          goto LABEL_44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v116 = v124;
        }

        v125 = 0;
        v126 = *(*&v116 + 16);
        while (v125 < v126)
        {
          OUTLINED_FUNCTION_21_51();
          if (v149)
          {
            v251 = v116;
LABEL_44:
            if (*(v219 + 16))
            {
              OUTLINED_FUNCTION_7_76();
              if (v127 != v128)
              {
                v129 = 0.0;
                do
                {
                  v129 = OUTLINED_FUNCTION_6_78(v129);
                }

                while (!v149);
                goto LABEL_51;
              }

LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

            v129 = 0.0;
LABEL_51:
            v130 = v102 * (v114 + v129);
            v253 = v130;
            if (v104)
            {
              v131 = v97 > v130;
            }

            else
            {
              v131 = 1;
            }

            if (!v131 || v104 >= 3)
            {
              goto LABEL_68;
            }

            v133 = v261;
            OUTLINED_FUNCTION_20_48();
            v134 = v195;
            v103 = DenseVector.withUnsafeVectorPointer<A>(_:)(v135, v136, v137, v138, v139, v195);
            if (v248[0] <= 0.0)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_20_48();
            DenseVector.withUnsafeVectorPointer<A>(_:)(v140, v141, v142, v143, v144, v134);
            v147 = OUTLINED_FUNCTION_35_22(v145, v146, v248[0]);
            if (v147 == v2)
            {
              goto LABEL_68;
            }

            v148 = v147;
            v149 = v147 < 0.1 || v104 == 2;
            if (v149)
            {
              v263 = 1;
            }

            if (v97 <= v130 && v147 >= v192)
            {
LABEL_68:
              v106 = 0;
            }

            else
            {
              v254 = v147 * v254;
              sub_237EA2810(v2 - v147);
              v150 = v214;
              DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB084, v133, v214, MEMORY[0x277D84F78] + 8);

              v248[0] = v148;
              MEMORY[0x28223BE20](v151);
              OUTLINED_FUNCTION_27();
              *(v152 - 16) = v248;
              v103 = DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB0B4, v153, v150, MEMORY[0x277D84F78] + 8);
              v106 = 1;
            }

            v73 = __OFADD__(v104++, 1);
            if (v73)
            {
              goto LABEL_105;
            }

            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:

        sub_237D81F64(v264);
        goto LABEL_101;
      }

      v160 = MEMORY[0x277D839F8];
      v161 = v195;
    }

    else
    {
      v154 = *(*&v84 + 16);
      if (v154)
      {
        v155 = sub_237EF89B0();
        v156 = v155;
        *(v155 + 16) = v154;
        v157 = *(*&v84 + 16);
        v158 = 32;
        v159 = v154;
        do
        {
          if (!v157)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

          *(v155 + v158) = -*(*&v84 + v158);
          --v157;
          v158 += 8;
          --v159;
        }

        while (v159);
      }

      else
      {
        v156 = MEMORY[0x277D84F90];
      }

      *(v156 + 16) = v154;
      sub_237EA2540(v156);
      if (v58)
      {

        sub_237D81F64(v264);

LABEL_101:

        goto LABEL_10;
      }

      v163 = v251;
      v248[0] = v251;
      v243[0] = -v254;
      MEMORY[0x28223BE20](v162);
      v189 = v243;

      v164 = MEMORY[0x277D84F78];
      v165 = v214;
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, &v187, v214, MEMORY[0x277D84F78] + 8);
      v166 = v248[0];

      v261 = *&v166;
      v167 = *&v166;
      v168 = v215;
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB0D0, v167, v165, v164 + 8);
      v259 = v253;

      v262 = v163;
      memcpy(v266, v249, sizeof(v266));
      OUTLINED_FUNCTION_26_31();
      MEMORY[0x28223BE20](v169);
      OUTLINED_FUNCTION_4_93();
      OUTLINED_FUNCTION_32_31(v170);
      MEMORY[0x28223BE20](v171);
      OUTLINED_FUNCTION_20_35();
      *(v172 - 32) = v168;
      *(v172 - 24) = sub_237EAB754;
      *(v172 - 16) = v173;
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v174, v165, v164 + 8);
      if (__OFADD__(v257, 1))
      {
        goto LABEL_112;
      }

      ++v257;
      v160 = MEMORY[0x277D839F8];
      v161 = v195;
      if (__OFADD__(v258, 1))
      {
        goto LABEL_113;
      }

      ++v258;
      if ((~*&v253 & 0x7FF0000000000000) == 0)
      {
LABEL_89:

        sub_237D81F64(v264);

        sub_237DC6AD0();
        OUTLINED_FUNCTION_45_0();
        *v184 = 0;
        goto LABEL_90;
      }

      sub_237EA2484();
    }

    MEMORY[0x28223BE20](v103);
    OUTLINED_FUNCTION_13_54();
    *(v175 - 16) = v160;
    *(v175 - 8) = v161;
    swift_getKeyPath();
    v176 = OUTLINED_FUNCTION_25_39();
    DenseVector.withUnsafeVectorPointer<A>(_:)(v176, v177, v178, v179, v180, v181);

    v252 = v248[0] / v260;
    OUTLINED_FUNCTION_36_2();
    if (!(v96 ^ v73 | v149))
    {

      sub_237D81F64(v264);

      sub_237DC6AD0();
      OUTLINED_FUNCTION_45_0();
      *v186 = 1;
LABEL_90:
      swift_willThrow();
      goto LABEL_10;
    }

    if (__OFADD__(v256, 1))
    {
      goto LABEL_111;
    }

    ++v256;
    v225[0] = v13;
    v225[1] = v210;
    *&v225[2] = v14;
    v226 = v207;
    v227 = v206;
    OUTLINED_FUNCTION_34_18(v248);
    v247[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6360);
    OUTLINED_FUNCTION_2_115();
    OUTLINED_FUNCTION_38_19();
    v247[4] = sub_237C96710(v182, v183);
    OUTLINED_FUNCTION_43_22();
    v247[0] = swift_allocObject();
    OUTLINED_FUNCTION_34_18((v247[0] + 16));
    v222[0] = v200;
    v222[1] = v199;
    v223 = v198;
    v224 = v204;
    memset(v246, 0, 40);
    sub_237EAAFB8(v248, v243, &qword_27DEB6360);
    sub_237EA606C(v247, v211, v197, v222, v196, v246, v202, v203, v194);
    v94 = v209;
    v95 = v213;
    v84 = v248[12];
    v92 = v248[17];
    __swift_destroy_boxed_opaque_existential_1(v247);
  }

  OUTLINED_FUNCTION_34_18(v265);
  v185 = v265[11];

  sub_237EA491C(v14);
  v225[0] = v185;
  if (v264[7])
  {
    sub_237E6F7F0(v225, v264[7]);
    sub_237D81F64(v264);
    v185 = v225[0];
  }

  else
  {
    sub_237D81F64(v264);
  }

  memcpy(v231, v215, 0x49uLL);
  OUTLINED_FUNCTION_34_18(v248);
  sub_237EAAFB8(v231, v243, &qword_27DEB2A08);
  sub_237C9A114(v248, &qword_27DEB6360);
  v190 = v205;
  v188 = v95;
  v189 = v212;
  v187 = v94;
  sub_237D070B8(v185, v231, v211, v197, v201);
LABEL_11:
  OUTLINED_FUNCTION_18_46();
}

void sub_237EA5FB4(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = __dst[1];
  v5 = sub_237E613EC(__dst[1], 0.5 / *v2);
  v6 = __OFSUB__(v4, 1);
  v7 = v4 - 1;
  if (v6)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC();
    v8 = v9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if (v7 < *(v8 + 16))
  {
    *(v8 + 8 * v7 + 32) = 0;
    sub_237EA21A0(__dst, v8, a2);
    sub_237D81F2C(__dst, &v10);
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_237EA606C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, void (*a7)(void *), uint64_t a8, uint64_t a9)
{
  if (a7)
  {
    v11 = result;
    v48 = *a4;
    v47 = a4[1];
    v46 = *(a4 + 16);
    v45 = a4[3];
    v38 = a6[1];
    v39 = *a6;
    v37 = a6[2];
    v40 = *(a6 + 3);
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    v15 = result[3];
    v14 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v15);
    v16 = *(v14 + 32);

    if (v16(v15, v14) >= 5 && v16(v15, v14) % 10 && (v17 = v14, v18 = v11[3], v19 = v11[4], __swift_project_boxed_opaque_existential_1(v11, v18), __dst[0] = v13, v20 = v19, v14 = v17, (sub_237E6A680(__dst, v18, v20) & 1) == 0))
    {
      return sub_237C5EE40(a7);
    }

    else
    {
      v36 = v14;
      v52 = MEMORY[0x277D84F98];
      v21 = v11[3];
      v22 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v21);
      (*(v22 + 24))(__src, v21, v22);
      memcpy(__dst, __src, 0x49uLL);
      v23 = __dst[0];

      sub_237C9A114(__dst, &qword_27DEB2A08);
      v50 = v23;
      v42 = *(a9 + 24);
      sub_237EF8260();
      sub_237EF8260();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
      v24 = sub_237C65348();
      sub_237C96710(qword_27DEB64F8, &qword_27DEB25E8);
      sub_237D07114(&v50, a2, a3, v41, v55);
      if (v46)
      {
        v25 = v48;
      }

      else
      {
        v25 = v47;
      }

      v56 = v45 + 32;
      v57 = v48;
      v58 = v47;
      v59 = v25;
      v60 = v46;
      OUTLINED_FUNCTION_24_39();
      sub_237EA7F48(v26, v27, v28);
      if (v49)
      {
        sub_237C5EE40(a7);
        __src[0] = MEMORY[0x277D839F8];
        __src[1] = v42;
        __src[2] = MEMORY[0x277CBFDC0];
        __src[3] = v24;
        OUTLINED_FUNCTION_46_20();
        OUTLINED_FUNCTION_3_11();
        (*(v29 + 8))(v55);
      }

      else
      {
        if (v40)
        {
          __dst[10] = v40 + 32;
          __dst[11] = v39;
          if (v37)
          {
            v30 = v39;
          }

          else
          {
            v30 = v38;
          }

          __dst[12] = v38;
          __dst[13] = v30;
          v54 = v37 & 1;
          OUTLINED_FUNCTION_24_39();
          sub_237EA8244(v31, v32, v33);
        }

        __src[0] = MEMORY[0x277D839F8];
        __src[1] = v42;
        __src[2] = MEMORY[0x277CBFDC0];
        __src[3] = v24;
        OUTLINED_FUNCTION_46_20();
        OUTLINED_FUNCTION_3_11();
        (*(v34 + 8))(v55);
        v35 = v16(v15, v36);
        __src[0] = 0xD00000000000001DLL;
        __src[1] = 0x8000000237F1D6C0;
        __src[2] = v35;
        __src[3] = v12;
        LOBYTE(__src[4]) = 0;
        __src[5] = v52;
        sub_237EF8260();
        a7(__src);
        sub_237C5EE40(a7);
        swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

void LinearSupportVectorClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_19_49();
  v302 = v30;
  v308 = v33;
  v309 = v32;
  v35 = v34;
  v37 = v36;
  v288 = v38;
  v289 = v39;
  v294 = v40;
  v304 = v41;
  v287 = v42;
  v364 = *MEMORY[0x277D85DE8];
  v43 = *v29;
  v292 = *(v29 + 8);
  v44 = *(v29 + 16);
  v291 = *(v29 + 24);
  v290 = *(v29 + 32);
  v45 = v36[3];
  v320 = v36[2];
  v296 = v45;
  v321 = v45;
  v322 = v34;
  v323 = v32;
  v46 = v36[5];
  v306 = v36[4];
  v307 = v320;
  v324 = v306;
  v325 = v46;
  v305 = v46;
  v48 = v36[7];
  v326 = v36[6];
  v47 = v326;
  v327 = v48;
  v50 = v36[9];
  v328 = v36[8];
  v49 = v328;
  v329 = v50;
  v330 = v33;
  v331 = a29;
  KeyPath = swift_getKeyPath();
  v300 = v50;
  v319[2] = v35;
  v319[3] = v309;
  v319[4] = v46;
  v319[5] = v47;
  v298 = a29;
  v299 = v47;
  v295 = v48;
  v319[6] = v48;
  v297 = v49;
  v319[7] = v49;
  v319[8] = v50;
  v319[9] = v308;
  v319[10] = a29;
  v319[11] = KeyPath;
  v52 = v306;
  v53 = sub_237EF7E90();
  v303 = v35;
  v55 = sub_237C8FFEC(sub_237DDE678, v319, v35, v53, MEMORY[0x277D84A98], v308, MEMORY[0x277D84AC0], v54);

  *&v337[0] = v55;
  v293 = v53;
  v56 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v302 = v56;
  v57 = v56;
  v58 = v307;
  v59 = v305;
  sub_237EDB96C(v337, v57, v307, WitnessTable, v306, v305, v338);
  if (v30)
  {

    goto LABEL_4;
  }

  v281 = v37;

  v285 = &v274;
  v283 = v338[1];
  v284 = v338[0];
  v282 = LOBYTE(v338[2]);
  v286 = v338[3];
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_85();
  *(v61 - 96) = v58;
  v63 = v296;
  v62 = v297;
  v64 = v303;
  *(v61 - 88) = v296;
  *(v61 - 80) = v64;
  *(v61 - 72) = v309;
  *(v61 - 64) = v52;
  v66 = v299;
  v65 = v300;
  *(v61 - 56) = v59;
  *(v61 - 48) = v66;
  v67 = v295;
  *(v61 - 40) = v295;
  *(v61 - 32) = v62;
  v68 = v308;
  *(v61 - 24) = v65;
  *(v61 - 16) = v68;
  v69 = v298;
  *(v61 - 8) = v298;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_42();
  v285 = v70;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_8_85();
  v72 = v309;
  *(v73 - 80) = v303;
  *(v73 - 72) = v72;
  v74 = v305;
  *(v73 - 64) = v305;
  *(v73 - 56) = v66;
  *(v73 - 48) = v67;
  *(v73 - 40) = v62;
  *(v73 - 32) = v65;
  *(v73 - 24) = v68;
  *(v73 - 16) = v69;
  *(v73 - 8) = v75;
  v78 = sub_237C8FFEC(sub_237DDC108, v76, v72, v293, MEMORY[0x277D84A98], v69, MEMORY[0x277D84AC0], v77);

  *&v337[0] = v78;
  v80 = v306;
  v79 = v307;
  sub_237EDB96C(v337, v302, v307, WitnessTable, v306, v74, v338);

  WitnessTable = &v274;
  v279 = v338[1];
  v280 = v338[0];
  v278 = LOBYTE(v338[2]);
  v302 = v338[3];
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_8_85();
  *(v82 - 96) = v79;
  *(v82 - 88) = v63;
  v83 = v303;
  v84 = v309;
  *(v82 - 80) = v303;
  *(v82 - 72) = v84;
  *(v82 - 64) = v80;
  *(v82 - 56) = v74;
  v85 = v300;
  v86 = v295;
  *(v82 - 48) = v299;
  *(v82 - 40) = v86;
  v87 = v297;
  *(v82 - 32) = v297;
  *(v82 - 24) = v85;
  v88 = v308;
  v89 = v298;
  *(v82 - 16) = v308;
  *(v82 - 8) = v89;
  v90 = swift_getKeyPath();
  WitnessTable = &v274;
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_8_85();
  *(v91 - 80) = v83;
  *(v91 - 72) = v84;
  v92 = v299;
  *(v91 - 64) = v74;
  *(v91 - 56) = v92;
  *(v91 - 48) = v86;
  *(v91 - 40) = v87;
  v93 = v300;
  *(v91 - 32) = v300;
  *(v91 - 24) = v88;
  *(v91 - 16) = v89;
  *(v91 - 8) = v94;
  v95 = v296;
  v98 = sub_237C8FFEC(sub_237DDE678, v96, v83, v296, MEMORY[0x277D84A98], v88, MEMORY[0x277D84AC0], v97);
  v293 = 0;

  v338[0] = v98;
  v99 = v95;
  v100 = sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  v101 = v92;
  v102 = sub_237E5E22C(v338, v99, v100);
  v104 = v103;
  if (sub_237E5E170(v102, v103, v99, v101, v93) != 2)
  {

    v338[0] = 0;
    v338[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000051, 0x8000000237F01810);
    v142 = sub_237E5E170(v102, v104, v99, v299, v300);

    *&v337[0] = v142;
    v143 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v143);

    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237F01870);
    v144 = v338[0];
    v145 = v338[1];
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    *v146 = 0xD00000000000001DLL;
    *(v146 + 8) = 0x8000000237F1D6C0;
    *(v146 + 16) = v144;
    *(v146 + 24) = v145;
    *(v146 + 32) = 5;
    swift_willThrow();
    goto LABEL_4;
  }

  v276 = &v274;
  v338[0] = v98;
  MEMORY[0x28223BE20](2);
  v274 = v98;
  v105 = v306;
  v106 = v307;
  *(&v274 - 14) = v307;
  *(&v274 - 13) = v99;
  v304 = v104;
  v107 = v309;
  *(&v274 - 12) = v303;
  *(&v274 - 11) = v107;
  v108 = v305;
  *(&v274 - 10) = v105;
  *(&v274 - 9) = v108;
  v109 = v295;
  *(&v274 - 8) = v299;
  *(&v274 - 7) = v109;
  v110 = v300;
  *(&v274 - 6) = v297;
  *(&v274 - 5) = v110;
  v285 = v102;
  OUTLINED_FUNCTION_1_24();
  v277 = COERCE_DOUBLE(swift_getWitnessTable());
  v111 = v293;
  sub_237C9339C();
  WitnessTable = v112;
  v275 = v111;

  OUTLINED_FUNCTION_22_42();
  v276 = v113;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_8_85();
  *(v115 - 96) = v106;
  *(v115 - 88) = v99;
  v116 = v303;
  v117 = v309;
  *(v115 - 80) = v303;
  *(v115 - 72) = v117;
  *(v115 - 64) = v105;
  *(v115 - 56) = v108;
  v118 = v108;
  v119 = v298;
  v120 = v299;
  v121 = v295;
  *(v115 - 48) = v299;
  *(v115 - 40) = v121;
  v122 = v297;
  v293 = v100;
  v123 = v300;
  *(v115 - 32) = v297;
  *(v115 - 24) = v123;
  v124 = v308;
  *(v115 - 16) = v308;
  *(v115 - 8) = v119;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_42();
  v274 = v125;
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_8_85();
  *(v127 - 80) = v116;
  *(v127 - 72) = v117;
  *(v127 - 64) = v118;
  *(v127 - 56) = v120;
  *(v127 - 48) = v121;
  *(v127 - 40) = v122;
  *(v127 - 32) = v123;
  *(v127 - 24) = v124;
  v128 = v298;
  *(v127 - 16) = v298;
  *(v127 - 8) = v129;
  v130 = v275;
  v133 = sub_237C8FFEC(sub_237DDE678, v131, v117, v296, MEMORY[0x277D84A98], v128, MEMORY[0x277D84AC0], v132);
  v276 = v130;

  OUTLINED_FUNCTION_22_42();
  v275 = v134;
  v294 = v133;
  v310 = v133;
  MEMORY[0x28223BE20](v135);
  v136 = v296;
  *(&v274 - 14) = v307;
  *(&v274 - 13) = v136;
  *(&v274 - 12) = v116;
  *(&v274 - 11) = v117;
  v138 = v304;
  v137 = v305;
  *(&v274 - 10) = v306;
  *(&v274 - 9) = v137;
  *(&v274 - 8) = v120;
  *(&v274 - 7) = v121;
  v139 = v300;
  *(&v274 - 6) = v122;
  *(&v274 - 5) = v139;
  v270 = v308;
  v271 = v128;
  v272 = v285;
  v273 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  v140 = v276;
  sub_237C9339C();
  if (v140)
  {

    goto LABEL_4;
  }

  v298 = v141;

  v147 = v283;
  v338[0] = v284;
  v338[1] = v283;
  LOBYTE(v338[2]) = v282;
  v338[3] = v286;

  v148 = WitnessTable;
  sub_237EF8260();
  v149 = v291;
  sub_237D80DD0(v338, v148, v291, v353);
  *&v332[0] = v43;
  *&v332[1] = v292;
  v332[2] = v44;
  v333 = v149;
  v334 = v290;
  memcpy(v337, v353, 0x48uLL);
  sub_237EA5FB4(v337, v338);
  v150 = sub_237E613EC(v147, 0.0);
  v151 = v338[1];
  sub_237EA2358();
  v343 = 1.0;

  v339 = v150;
  if (v151 < 0)
  {
    goto LABEL_108;
  }

  sub_237C62CCC(v151, 0.0);
  v153 = v152;

  v340 = v153;
  v154 = memcpy(v363, v338, sizeof(v363));
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_4_93();
  *(v155 - 16) = v363;
  MEMORY[0x28223BE20](v156);
  v270 = &v339;
  v271 = sub_237EAB754;
  v272 = v157;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  v308 = &v339;
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, (&v274 - 6), v303, MEMORY[0x277D84F78] + 8);
  if (__OFADD__(v346, 1))
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
  }

  v346 = (v346 + 1);
  if (__OFADD__(v347, 1))
  {
    goto LABEL_110;
  }

  ++v347;
  OUTLINED_FUNCTION_36_2();
  if (!(v184 ^ v160 | v233) || (v161 = fabs(v159), MEMORY[0x28223BE20](v158), v162 = MEMORY[0x277D839F8], v272 = MEMORY[0x277D839F8], v163 = sub_237C65348(), v273 = v163, swift_getKeyPath(), OUTLINED_FUNCTION_31_28(), OUTLINED_FUNCTION_29_33(), DenseVector.withUnsafeVectorPointer<A>(_:)(v164, v165, v166, v167, v168, v169), , OUTLINED_FUNCTION_42_19(v337[0]), v349 = v161, sub_237EA2484(), v170 = v340, MEMORY[0x28223BE20](v171), OUTLINED_FUNCTION_13_54(), *(v172 - 16) = v162, *(v172 - 8) = v163, swift_getKeyPath(), OUTLINED_FUNCTION_31_28(), OUTLINED_FUNCTION_29_33(), DenseVector.withUnsafeVectorPointer<A>(_:)(v173, v174, v175, v176, v177, v178), , v179 = v337[0] / v161, v341 = v179, OUTLINED_FUNCTION_44_21(), !(v184 ^ v160 | v233)))
  {

    sub_237D81F64(v353);

    sub_237DC6AD0();
    OUTLINED_FUNCTION_45_0();
    *v180 = 0;
    swift_willThrow();

    goto LABEL_16;
  }

  v294 = v163;

  v277 = 0.8;
  v181 = v299;
  v182 = v300;
  v183 = v297;
  while (1)
  {
    v184 = v345 >= v292 || v179 < v44;
    if (v184 || (v344 & 1) != 0)
    {
      goto LABEL_98;
    }

    if (v345)
    {
      break;
    }

    v238 = *(*&v170 + 16);
    if (v238)
    {
      v239 = sub_237EF89B0();
      v240 = v239;
      *(v239 + 16) = v238;
      v241 = *(*&v170 + 16);
      v242 = 32;
      v243 = v238;
      do
      {
        if (!v241)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        *(v239 + v242) = -*(*&v170 + v242);
        --v241;
        v242 += 8;
        --v243;
      }

      while (v243);
    }

    else
    {
      v240 = MEMORY[0x277D84F90];
    }

    *(v240 + 16) = v238;
    sub_237EA2540(v240);

    v245 = v340;
    v337[0] = v340;
    v332[0] = -v343;
    MEMORY[0x28223BE20](v244);
    v272 = v332;

    v246 = MEMORY[0x277D84F78];
    v247 = v303;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, &v270, v303, MEMORY[0x277D84F78] + 8);
    v248 = v337[0];

    v350 = *&v248;
    v249 = *&v248;
    v250 = v308;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7CC, v249, v247, v246 + 8);
    v348 = v342;

    v351 = *&v245;
    memcpy(v355, v338, sizeof(v355));
    OUTLINED_FUNCTION_26_31();
    MEMORY[0x28223BE20](v251);
    OUTLINED_FUNCTION_4_93();
    OUTLINED_FUNCTION_32_31(v252);
    MEMORY[0x28223BE20](v253);
    OUTLINED_FUNCTION_20_35();
    *(v254 - 32) = v250;
    *(v254 - 24) = sub_237EAB754;
    *(v254 - 16) = v255;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v256, v247, v246 + 8);
    if (__OFADD__(v346, 1))
    {
      goto LABEL_112;
    }

    v346 = (v346 + 1);
    if (__OFADD__(v347, 1))
    {
      goto LABEL_113;
    }

    ++v347;
    if ((~*&v342 & 0x7FF0000000000000) == 0)
    {
LABEL_92:

      sub_237D81F64(v353);

      sub_237DC6AD0();
      OUTLINED_FUNCTION_45_0();
      *v266 = 0;
LABEL_93:
      swift_willThrow();
LABEL_16:
      OUTLINED_FUNCTION_33_25(v337);
      sub_237C9A114(v337, &qword_27DEB6360);
      goto LABEL_4;
    }

    sub_237EA2484();
LABEL_88:
    MEMORY[0x28223BE20](v190);
    OUTLINED_FUNCTION_13_54();
    v257 = v294;
    *(v258 - 16) = MEMORY[0x277D839F8];
    *(v258 - 8) = v257;
    swift_getKeyPath();
    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_39_20();
    DenseVector.withUnsafeVectorPointer<A>(_:)(v259, v260, v261, v262, v263, v257);

    v341 = v337[0] / v349;
    OUTLINED_FUNCTION_36_2();
    if (!(v184 ^ v160 | v233))
    {

      sub_237D81F64(v353);

      sub_237DC6AD0();
      OUTLINED_FUNCTION_45_0();
      *v268 = 1;
      goto LABEL_93;
    }

    v264 = v302;
    v265 = v304;
    if (__OFADD__(v345, 1))
    {
      goto LABEL_111;
    }

    ++v345;
    v315[0] = v43;
    v315[1] = v292;
    *&v315[2] = v44;
    v316 = v291;
    v317 = v290;
    OUTLINED_FUNCTION_33_25(v337);
    v336[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6360);
    OUTLINED_FUNCTION_2_115();
    v336[4] = sub_237C96710(qword_27DEB6368, &qword_27DEB6360);
    OUTLINED_FUNCTION_43_22();
    v336[0] = swift_allocObject();
    OUTLINED_FUNCTION_33_25((v336[0] + 16));
    v312[0] = v284;
    v312[1] = v283;
    v313 = v282;
    v314 = v286;
    v335[0] = v280;
    v335[1] = v279;
    v335[2] = v278;
    v335[3] = v264;
    v335[4] = v298;
    sub_237EAAFB8(v337, v332, &qword_27DEB6360);

    sub_237EF8260();
    sub_237EA606C(v336, v285, v265, v312, WitnessTable, v335, v288, v289, v281);
    v181 = v299;
    v170 = v337[12];
    v179 = v337[17];
    OUTLINED_FUNCTION_37_25();
    __swift_destroy_boxed_opaque_existential_1(v336);
  }

  sub_237EA289C();
  OUTLINED_FUNCTION_33_25(v357);
  sub_237EA2C78();
  v185 = v358;
  v311 = v362;
  v183 = v359;
  v186 = v360;
  v187 = v357[12];
  v188 = v357[9];
  v189 = v361;
  v348 = v358;

  v190 = sub_237C9A114(&v311, &qword_27DEB25E8);
  v182 = 0;
  v293 = v187;
  v351 = v187;
  v352 = 0;
  v309 = v188;
  v181 = (v188 + 32);
  v191 = 1;
LABEL_25:
  if ((v191 & 1) == 0)
  {
    v182 = v300;
    v183 = v297;
    goto LABEL_88;
  }

  memcpy(v356, v338, sizeof(v356));
  OUTLINED_FUNCTION_26_31();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_32_31(v193);
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_20_35();
  *(v195 - 32) = v308;
  *(v195 - 24) = sub_237EAB754;
  *(v195 - 16) = v196;
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v197, v303, MEMORY[0x277D84F78] + 8);
  v160 = __OFADD__(v183, 1);
  v183 = (v183 + 1);
  if (v160)
  {
    goto LABEL_103;
  }

  v346 = v183;
  v160 = __OFADD__(v186++, 1);
  if (v160)
  {
    goto LABEL_104;
  }

  v347 = v186;
  v198 = v342;
  OUTLINED_FUNCTION_3_99();
  if (!(v184 ^ v160 | v233))
  {
    goto LABEL_92;
  }

  v199 = *(v309 + 16);
  v200 = v340;
  if (v199)
  {
    if (v199 > *(*&v340 + 16))
    {
      goto LABEL_106;
    }

    v201 = v339;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC();
      v200 = v202;
    }

    v203 = 0;
    v204 = v201 + 32;
    v205 = *(v309 + 16);
    v206 = *(v201 + 16);
    do
    {
      if (v205 == v203)
      {
        goto LABEL_95;
      }

      if (v206 == v203)
      {
        goto LABEL_96;
      }

      if (v203 >= *(*&v200 + 16))
      {
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_5_92(*&v181[v203], *(v204 + 8 * v203));
    }

    while (v199 != v207);
    v340 = v200;
  }

  if (!*(*&v200 + 16))
  {
    goto LABEL_48;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC();
    v200 = v208;
  }

  v209 = 0;
  v210 = *(*&v200 + 16);
  while (v209 < v210)
  {
    OUTLINED_FUNCTION_21_51();
    if (v233)
    {
      v340 = v200;
LABEL_48:
      if (*(v309 + 16))
      {
        OUTLINED_FUNCTION_7_76();
        if (v211 != v212)
        {
          v213 = 0.0;
          do
          {
            v213 = OUTLINED_FUNCTION_6_78(v213);
          }

          while (!v233);
          goto LABEL_55;
        }

LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v213 = 0.0;
LABEL_55:
      v214 = v189 * (v198 + v213);
      v342 = v214;
      if (v182)
      {
        v215 = v185 > v214;
      }

      else
      {
        v215 = 1;
      }

      if (!v215 || v182 >= 3)
      {
        goto LABEL_73;
      }

      v217 = v350;
      OUTLINED_FUNCTION_31_28();
      OUTLINED_FUNCTION_20_48();
      v218 = v294;
      v190 = DenseVector.withUnsafeVectorPointer<A>(_:)(v219, v220, v221, v222, v223, v294);
      if (v337[0] <= 0.0)
      {
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_31_28();
      OUTLINED_FUNCTION_20_48();
      DenseVector.withUnsafeVectorPointer<A>(_:)(v224, v225, v226, v227, v228, v218);
      v231 = OUTLINED_FUNCTION_35_22(v229, v230, v337[0]);
      if (v231 == v31)
      {
        goto LABEL_73;
      }

      v232 = v231;
      v233 = v231 < 0.1 || v182 == 2;
      if (v233)
      {
        v352 = 1;
      }

      if (v185 <= v214 && v231 >= v277)
      {
LABEL_73:
        v191 = 0;
      }

      else
      {
        v343 = v231 * v343;
        sub_237EA2810(v31 - v231);
        v234 = v303;
        DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7B4, v217, v303, MEMORY[0x277D84F78] + 8);

        v337[0] = v232;
        MEMORY[0x28223BE20](v235);
        OUTLINED_FUNCTION_27();
        *(v236 - 16) = v337;
        v190 = DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v237, v234, MEMORY[0x277D84F78] + 8);
        v191 = 1;
      }

      v160 = __OFADD__(v182++, 1);
      if (v160)
      {
        goto LABEL_105;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:

  OUTLINED_FUNCTION_33_25(v354);
  v267 = v354[11];

  sub_237EA491C(v44);
  v315[0] = v267;
  if (v353[7])
  {
    sub_237E6F7F0(v315, v353[7]);
    sub_237D81F64(v353);
    v267 = v315[0];
  }

  else
  {
    sub_237D81F64(v353);
  }

  v269 = v287;
  memcpy(v318, v308, 0x49uLL);
  OUTLINED_FUNCTION_33_25(v337);
  sub_237EAAFB8(v318, v332, &qword_27DEB2A08);
  sub_237C9A114(v337, &qword_27DEB6360);
  v272 = v183;
  v273 = v182;
  v270 = v181;
  v271 = v295;
  sub_237D070B8(v267, v318, v285, v304, v269);
LABEL_4:
  OUTLINED_FUNCTION_18_46();
}

uint64_t sub_237EA7D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
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
    *v23 = 0xD00000000000001DLL;
    *(v23 + 8) = 0x8000000237F1D6C0;
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

void LinearSupportVectorClassifier.encode(_:to:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for LinearSupportVectorClassifierModel();
  sub_237D08AB0();
}

void *sub_237EA7F48(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  memcpy(__dst, a2, 0x61uLL);
  sub_237C65348();
  v6 = type metadata accessor for LinearSupportVectorClassifierModel();
  result = sub_237D08544(a1, v6);
  if (!v3)
  {
    v8 = result;
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180);
    sub_237C96710(&qword_280C8CCD0, &qword_27DEB5180);
    swift_getKeyPath();

    sub_237EF8260();
    sub_237E64964(v8, v5);
    v10 = v9;

    v11 = sub_237CAE03C(v10);
    MEMORY[0x28223BE20](v11);
    swift_getKeyPath();

    sub_237E64964(v8, v5);

    v12 = sub_237CAE474();
    sub_237CB0CC4(v8, v5, sub_237E6442C, 0, v12);
    sub_237CB0030();
    v14 = v13;
    sub_237C9A114(v16, qword_27DEB2000);
    __dst[3] = MEMORY[0x277D839F8];
    __dst[0] = v14;
    return sub_237E60F7C(__dst, 0xD000000000000011, 0x8000000237EFB8A0);
  }

  return result;
}

void *sub_237EA8244(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  memcpy(__dst, a2, 0x61uLL);
  sub_237C65348();
  v6 = type metadata accessor for LinearSupportVectorClassifierModel();
  result = sub_237D08544(a1, v6);
  if (!v3)
  {
    v8 = result;
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180);
    sub_237C96710(&qword_280C8CCD0, &qword_27DEB5180);
    swift_getKeyPath();

    sub_237EF8260();
    sub_237E64964(v8, v5);
    v10 = v9;

    v11 = sub_237CAE03C(v10);
    MEMORY[0x28223BE20](v11);
    swift_getKeyPath();

    sub_237E64964(v8, v5);

    v12 = sub_237CAE474();
    sub_237CB0CC4(v8, v5, sub_237E6442C, 0, v12);
    sub_237CB0030();
    v14 = v13;
    sub_237C9A114(v16, qword_27DEB2000);
    __dst[3] = MEMORY[0x277D839F8];
    __dst[0] = v14;
    return sub_237E60F7C(__dst, 0xD000000000000013, 0x8000000237EFDDD0);
  }

  return result;
}

uint64_t sub_237EA8540()
{
  LinearSupportVectorClassifier.fitted<A>(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t LinearSupportVectorClassifier.makeTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = MEMORY[0x277D84F90];
  v2 = *(a1 + 72);
  sub_237EF8260();
  OUTLINED_FUNCTION_38_19();
  v6 = sub_237E5E16C(v3, v4, v5, v2);
  v12 = v7;
  v13 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
  OUTLINED_FUNCTION_8_8();
  sub_237C96710(v9, v10);
  return sub_237D07114(&v15, v13, v12, v8, a2);
}

void LinearSupportVectorClassifier.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_19_49();
  v236 = v2;
  v237 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v275 = *MEMORY[0x277D85DE8];
  v14 = *v0;
  v15 = *(v0 + 8);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);
  v19 = sub_237EF8B90();
  if (v1)
  {
    goto LABEL_6;
  }

  v220 = v9;
  v221 = v18;
  v222 = v17;
  v223 = v15;
  v219 = v11;
  v226 = v13;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_51();
  v21 = v7[2];
  v20 = v7[3];
  *(v22 - 80) = v21;
  *(v22 - 72) = *&v20;
  v229 = *&v20;
  v233 = v7[4];
  v23 = v233;
  v234 = v21;
  v25 = v7[6];
  v235 = v7[5];
  v24 = v235;
  *(v22 - 64) = v5;
  *(v22 - 56) = v23;
  v26 = v7[7];
  v27 = v7[8];
  *(v22 - 48) = v24;
  *(v22 - 40) = v25;
  v28 = v7[9];
  *(v22 - 32) = v26;
  *(v22 - 24) = v27;
  v29 = v237;
  *(v22 - 16) = v28;
  *(v22 - 8) = v29;
  v231 = 0;
  KeyPath = swift_getKeyPath();
  v232 = &v213;
  MEMORY[0x28223BE20](KeyPath);
  v212[2] = v5;
  v212[3] = v235;
  v230 = v25;
  v212[4] = v25;
  v212[5] = v26;
  v227 = v27;
  v228 = v26;
  v212[6] = v27;
  v212[7] = v28;
  v225 = v28;
  v212[8] = v29;
  v212[9] = v31;
  v33 = v233;
  v32 = v234;
  v34 = sub_237EF7E90();
  v218 = v7;
  v224 = v5;
  v35 = v231;
  v37 = sub_237C8FFEC(sub_237CFA07C, v212, v5, v34, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v36);

  *v247 = v37;
  v38 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v40 = v235;
  sub_237EDB96C(v247, v38, v32, WitnessTable, v33, v235, v249);
  if (v35)
  {

LABEL_6:
    OUTLINED_FUNCTION_18_46();
    return;
  }

  v231 = v212;
  v215 = v249[1];
  v216 = v249[0];
  v214 = LOBYTE(v249[2]);
  v232 = v249[3];
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9_51();
  v42 = v229;
  v43 = v230;
  *(v44 - 80) = v32;
  *(v44 - 72) = v42;
  v45 = v224;
  *(v44 - 64) = v224;
  *(v44 - 56) = v33;
  *(v44 - 48) = v40;
  *(v44 - 40) = v43;
  v47 = v227;
  v46 = v228;
  *(v44 - 32) = v228;
  *(v44 - 24) = v47;
  v48 = v225;
  v49 = v237;
  *(v44 - 16) = v225;
  *(v44 - 8) = v49;
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_42();
  v231 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_51();
  *(v52 - 64) = v45;
  *(v52 - 56) = v40;
  *(v52 - 48) = v43;
  *(v52 - 40) = v46;
  *(v52 - 32) = v47;
  *(v52 - 24) = v48;
  *(v52 - 16) = v49;
  *(v52 - 8) = v53;
  v54 = v229;
  v57 = sub_237C8FFEC(sub_237CFA07C, v55, v45, *&v229, MEMORY[0x277D84A98], v49, MEMORY[0x277D84AC0], v56);
  v217 = 0;

  OUTLINED_FUNCTION_22_42();
  v236 = v58;
  v231 = v57;
  v238 = v57;
  MEMORY[0x28223BE20](v59);
  v60 = v233;
  v212[-12] = v234;
  *&v212[-11] = v54;
  v212[-10] = v45;
  v212[-9] = v60;
  v61 = v230;
  v212[-8] = v40;
  v212[-7] = v61;
  v62 = v227;
  v212[-6] = v228;
  v212[-5] = v62;
  v212[-4] = v48;
  v212[-3] = v49;
  v63 = v226;
  v210 = v226;
  sub_237EF8A60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v64 = v217;
  sub_237C9339C();
  if (v64)
  {

    goto LABEL_6;
  }

  v66 = v65;
  v67 = v54;

  v68 = v215;
  v249[0] = v216;
  v249[1] = v215;
  LOBYTE(v249[2]) = v214;
  v249[3] = v232;
  sub_237EF8260();

  v237 = v66;
  v69 = v66;
  LOBYTE(v66) = v222;
  sub_237D80DD0(v249, v69, v222, v259);
  *v246 = v14;
  *&v246[1] = v223;
  *&v246[2] = v16;
  LOBYTE(v246[3]) = v66;
  *&v246[4] = v221;
  memcpy(v247, v259, sizeof(v247));
  sub_237EA5FB4(v247, v249);
  v70 = v63;
  v72 = v63[3];
  v71 = v70[4];
  v70 += 3;
  v73 = *(v70 + 7);
  v75 = v70 + 8;
  v74 = v70[8];
  v76 = *(v70 + 2);
  v262 = *(v70 + 1);
  v263 = v76;
  v264 = v70[6];
  v260 = v74;
  v235 = v70;
  v261 = *(v70 + 72);
  if (v72)
  {
    v77 = v72[2];
    if (v77 == v68)
    {
      memcpy(v246, v250, 0x49uLL);
      *v247 = v72;
      *&v247[8] = v71;
      v78 = *(v235 + 2);
      *&v247[16] = *(v235 + 1);
      *&v247[32] = v78;
      *&v247[48] = *(v235 + 6);
      *&v247[56] = v73;
      *&v247[64] = *v75;
      v248 = *(v75 + 8);
      sub_237EAAFB8(v247, v245, &qword_27DEB2A08);
      sub_237C9A114(v246, &qword_27DEB2A08);
      *&v250[0] = v72;
      *(&v250[0] + 1) = v71;
      v250[1] = v262;
      v250[2] = v263;
      *&v250[3] = v264;
      *(&v250[3] + 1) = v73;
      *&v250[4] = v260;
      BYTE8(v250[4]) = v261;
      sub_237EA2358();
      MEMORY[0x28223BE20](v79);
      v210 = MEMORY[0x277D839F8];
      v80 = sub_237C65348();
      v211 = v80;
      swift_getKeyPath();
      OUTLINED_FUNCTION_38_19();
      OUTLINED_FUNCTION_39_20();
      DenseVector.withUnsafeVectorPointer<A>(_:)(v81, v82, v83, v84, v85, v80);

      v255 = 1.0 / (fabs(v73) + v245[0] + 1.0);
      goto LABEL_22;
    }

    sub_237D81F64(v259);

    OUTLINED_FUNCTION_17_56();
    sub_237C9A114(v247, &qword_27DEB6360);
    v99 = sub_237E5E170(v226[1], v226[2], *&v67, v230, v225);
    if (!__OFSUB__(v99, 1))
    {
      v100 = v216;
      if (v99 != 1)
      {
        v101 = v77 / (v99 - 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_237F04760;
        v103 = *&v215;
        *(v102 + 32) = v100;
        *(v102 + 40) = v103;

        v246[0] = 0;
        v246[1] = 0xE000000000000000;
        sub_237EF9330();

        v246[0] = 0xD000000000000017;
        v246[1] = 0x8000000237F00E30;
        *&v245[0] = v101;
        v104 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v104);

        MEMORY[0x2383E0710](0xD000000000000015, 0x8000000237F00E50);
        v245[0] = v103;
        v105 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v105);

        MEMORY[0x2383E0710](46, 0xE100000000000000);
        v106 = v246[0];
        v107 = v246[1];
        sub_237C84150();
        OUTLINED_FUNCTION_45_0();
        *v108 = v102;
        *(v108 + 8) = v106;
        *(v108 + 16) = v107;
        *(v108 + 24) = 0;
        *(v108 + 32) = 6;
        swift_willThrow();
        goto LABEL_6;
      }

LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v86 = sub_237E613EC(v68, 0.0);
  v87 = v249[1];
  sub_237EA2358();
  *&v250[4] = 0x3FF0000000000000;

  *&v250[0] = v86;
  if (v87 < 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  sub_237C62CCC(v87, 0.0);
  v89 = v88;

  *(&v250[0] + 1) = v89;
  v90 = memcpy(v274, v249, sizeof(v274));
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_4_93();
  *(v91 - 16) = v274;
  MEMORY[0x28223BE20](v92);
  v212[-4] = v250;
  v212[-3] = sub_237EAB754;
  v210 = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, &v212[-6], v94, MEMORY[0x277D84F78] + 8);
  if (__OFADD__(v252, 1))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  ++v252;
  if (__OFADD__(v253, 1))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  ++v253;
  OUTLINED_FUNCTION_36_2();
  if (!(v127 ^ v97 | v192))
  {
    v98 = 0;
LABEL_20:
    sub_237D81F64(v259);

    sub_237DC6AD0();
    OUTLINED_FUNCTION_45_0();
    *v125 = v98;
    swift_willThrow();

    OUTLINED_FUNCTION_17_56();
    sub_237C9A114(v247, &qword_27DEB6360);
    goto LABEL_6;
  }

  v109 = fabs(v96);
  MEMORY[0x28223BE20](v95);
  v110 = MEMORY[0x277D839F8];
  v210 = MEMORY[0x277D839F8];
  v111 = sub_237C65348();
  v211 = v111;
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_41();
  OUTLINED_FUNCTION_39_20();
  DenseVector.withUnsafeVectorPointer<A>(_:)(v112, v113, v114, v115, v116, v111);

  v117 = 1.0 / (v109 + *v247 + 1.0);
  v255 = v117;
  sub_237EA2484();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_13_54();
  *(v119 - 16) = v110;
  *(v119 - 8) = v111;
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_41();
  OUTLINED_FUNCTION_39_20();
  DenseVector.withUnsafeVectorPointer<A>(_:)(v120, v121, v122, v123, v124, v111);

  *&v250[3] = *v247 / v117;
  OUTLINED_FUNCTION_36_2();
  if (!(v127 ^ v97 | v192))
  {
    v98 = 1;
    goto LABEL_20;
  }

LABEL_22:
  v126 = v232;
  v127 = v251 >= *&v223 || *&v250[3] < v16;
  if (v127 || (BYTE8(v250[4]) & 1) != 0)
  {

    sub_237D81F64(v259);

    OUTLINED_FUNCTION_17_56();
    sub_237C9A114(v247, &qword_27DEB6360);
    goto LABEL_6;
  }

  v233 = v250;
  if (!v251)
  {
    v128 = *(&v250[0] + 1);
    v129 = *(*(&v250[0] + 1) + 16);
    if (v129)
    {
      v130 = sub_237EF89B0();
      *(v130 + 16) = v129;
    }

    else
    {
      v130 = MEMORY[0x277D84F90];
    }

    *v247 = v130 + 32;
    *&v247[8] = v129;
    *&v247[16] = 1;
    sub_237EAAD58(v247, v128);
    *(v130 + 16) = v129;
    sub_237EA2540(v130);

    v131 = *(&v250[0] + 1);
    v132 = *(&v250[0] + 1);
    sub_237EA2810(-*&v250[4]);
    v133 = v132;

    v256 = v133;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
    v135 = MEMORY[0x277D84F78];
    OUTLINED_FUNCTION_38_19();
    v136 = v233;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(v137, v138, v139, v140);
    v254 = *(&v250[3] + 1);

    v257 = v131;
    v141 = memcpy(v266, v249, sizeof(v266));
    MEMORY[0x28223BE20](v141);
    OUTLINED_FUNCTION_4_93();
    *(v142 - 16) = v266;
    MEMORY[0x28223BE20](v143);
    OUTLINED_FUNCTION_20_35();
    *(v144 - 32) = v136;
    *(v144 - 24) = sub_237EAB754;
    *(v144 - 16) = v145;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, v146, v134, v135 + 8);
    if (__OFADD__(v252, 1))
    {
      __break(1u);
    }

    else
    {
      ++v252;
      if (!__OFADD__(v253, 1))
      {
        ++v253;
        if ((~*(&v250[3] + 1) & 0x7FF0000000000000) == 0)
        {
          sub_237D81F64(v259);

          sub_237DC6AD0();
          OUTLINED_FUNCTION_45_0();
          *v147 = 0;
          goto LABEL_88;
        }

        sub_237EA2484();
        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_106;
  }

  sub_237EA289C();
  OUTLINED_FUNCTION_27_33(v268);
  sub_237EA2C78();
  v148 = v269;
  v239 = v273;
  v149 = v270;
  v150 = v271;
  v151 = v268[12];
  v152 = v268[9];
  v153 = v272;
  v254 = v269;

  isUniquelyReferenced_nonNull_native = sub_237C9A114(&v239, &qword_27DEB25E8);
  v155 = 0;
  v257 = v151;
  v258 = 0;
  v234 = v152;
  v230 = v151;
  v231 = (v152 + 32);
  v229 = 0.8;
  v156 = 1;
  v157 = 0;
  v158 = v233;
  while ((v156 & 1) != 0)
  {
    memcpy(v267, v249, sizeof(v267));
    OUTLINED_FUNCTION_26_31();
    MEMORY[0x28223BE20](v159);
    OUTLINED_FUNCTION_4_93();
    OUTLINED_FUNCTION_32_31(v160);
    MEMORY[0x28223BE20](v161);
    v212[-4] = v158;
    v212[-3] = sub_237EAB754;
    v210 = v162;
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
    v164 = v157;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB76C, &v212[-6], v163, MEMORY[0x277D84F78] + 8);
    v97 = __OFADD__(v149++, 1);
    if (v97)
    {
      goto LABEL_100;
    }

    v252 = v149;
    v97 = __OFADD__(v150++, 1);
    if (v97)
    {
      goto LABEL_101;
    }

    v253 = v150;
    v165 = *(&v250[3] + 1);
    OUTLINED_FUNCTION_3_99();
    if (!(v127 ^ v97 | v192))
    {
      sub_237D81F64(v259);

      sub_237DC6AD0();
      OUTLINED_FUNCTION_45_0();
      *v207 = 0;
      swift_willThrow();
      goto LABEL_34;
    }

    sub_237EA229C(v158, v234);
    v166 = *(&v250[0] + 1);
    v167 = *(*(&v250[0] + 1) + 16);
    if (!v167)
    {
      goto LABEL_51;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237E643FC();
      v166 = isUniquelyReferenced_nonNull_native;
    }

    v168 = 0;
    v169 = *(v166 + 16);
    do
    {
      if (v168 >= v169)
      {
        __break(1u);
        goto LABEL_93;
      }

      *(v166 + 8 * v168 + 32) = v153 * *(v166 + 8 * v168 + 32);
      ++v168;
    }

    while (v167 != v168);
    *(&v250[0] + 1) = v166;
LABEL_51:
    if (*(v234 + 16))
    {
      OUTLINED_FUNCTION_7_76();
      if (v170 != v171)
      {
        v172 = 0.0;
        do
        {
          v172 = OUTLINED_FUNCTION_6_78(v172);
        }

        while (!v192);
        goto LABEL_58;
      }

LABEL_103:
      __break(1u);
    }

    v172 = 0.0;
LABEL_58:
    v173 = v153 * (v165 + v172);
    *(&v250[3] + 1) = v173;
    if (v155)
    {
      v174 = v148 > v173;
    }

    else
    {
      v174 = 1;
    }

    if (!v174 || v155 >= 3)
    {
      v156 = 0;
    }

    else
    {
      v176 = v256;
      v177 = sub_237C65348();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_20_48();
      isUniquelyReferenced_nonNull_native = DenseVector.withUnsafeVectorPointer<A>(_:)(v178, v179, v180, v181, v182, v177);
      if (*v247 <= 0.0)
      {
        v156 = 0;
LABEL_79:
        v158 = v233;
      }

      else
      {
        OUTLINED_FUNCTION_30_41();
        OUTLINED_FUNCTION_20_48();
        DenseVector.withUnsafeVectorPointer<A>(_:)(v183, v184, v185, v186, v187, v177);
        v190 = OUTLINED_FUNCTION_35_22(v188, v189, *v247);
        if (v190 == 1.0)
        {
          goto LABEL_77;
        }

        v191 = v190;
        v192 = v190 < 0.1 || v155 == 2;
        if (v192)
        {
          v258 = 1;
        }

        if (v148 <= v173 && v190 >= v229)
        {
LABEL_77:
          v156 = 0;
          goto LABEL_79;
        }

        *&v250[4] = v190 * *&v250[4];
        sub_237EA2810(1.0 - v190);
        v193 = v233;
        DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7B4, v176, v163, MEMORY[0x277D84F78] + 8);

        *v247 = v191;
        MEMORY[0x28223BE20](v194);
        OUTLINED_FUNCTION_27();
        *(v195 - 16) = v247;
        v158 = v193;
        isUniquelyReferenced_nonNull_native = DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237EAB7E4, v196, v163, MEMORY[0x277D84F78] + 8);
        v157 = v164;
        v156 = 1;
      }
    }

    v97 = __OFADD__(v155++, 1);
    if (v97)
    {
      goto LABEL_102;
    }
  }

  v126 = v232;
LABEL_86:
  v236 = *(&v250[0] + 1);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v210 = MEMORY[0x277D839F8];
  v197 = sub_237C65348();
  v211 = v197;
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_41();
  OUTLINED_FUNCTION_20_48();
  DenseVector.withUnsafeVectorPointer<A>(_:)(v198, v199, v200, v201, v202, v197);

  *&v250[3] = *v247 / v255;
  OUTLINED_FUNCTION_36_2();
  if (!(v127 ^ v97 | v192))
  {
    sub_237D81F64(v259);

    sub_237DC6AD0();
    OUTLINED_FUNCTION_45_0();
    *v203 = 1;
LABEL_88:
    swift_willThrow();
LABEL_34:
    OUTLINED_FUNCTION_17_56();
    sub_237C9A114(v247, &qword_27DEB6360);
    goto LABEL_6;
  }

  if (!__OFADD__(v251, 1))
  {
    ++v251;
    v245[0] = v14;
    v245[1] = v223;
    v245[2] = v16;
    LOBYTE(v245[3]) = v222;
    v245[4] = v221;
    OUTLINED_FUNCTION_17_56();
    v244[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6360);
    OUTLINED_FUNCTION_2_115();
    v244[4] = sub_237C96710(v204, &qword_27DEB6360);
    OUTLINED_FUNCTION_43_22();
    v244[0] = swift_allocObject();
    OUTLINED_FUNCTION_27_33((v244[0] + 16));
    v205 = v226[1];
    v206 = v226[2];
    v240[0] = v216;
    v240[1] = v215;
    v241 = v214;
    v242 = v126;
    memset(v243, 0, 40);
    sub_237EAAFB8(v247, v246, &qword_27DEB6360);
    sub_237EA606C(v244, v205, v206, v240, v237, v243, v219, v220, v218);

    __swift_destroy_boxed_opaque_existential_1(v244);
    OUTLINED_FUNCTION_27_33(v265);
    v158 = v265[11];

    sub_237EA491C(v16);
    v240[0] = v158;
    if (v259[7])
    {
      sub_237E6F7F0(v240, v259[7]);
      sub_237D81F64(v259);
      v158 = v240[0];
    }

    else
    {
LABEL_93:
      sub_237D81F64(v259);
    }

    v208 = v226;

    *v208 = v158;
    memcpy(v243, v233, 0x49uLL);
    OUTLINED_FUNCTION_27_33(v246);
    sub_237EAAFB8(v243, v245, &qword_27DEB2A08);
    sub_237C9A114(v246, &qword_27DEB6360);
    memcpy(v244, v243, 0x49uLL);
    v209 = v235;
    memcpy(v245, v235, 0x49uLL);
    sub_237C9A114(v245, qword_27DEB0300);
    memcpy(v209, v244, 0x49uLL);
    goto LABEL_6;
  }

LABEL_106:
  __break(1u);
}

uint64_t sub_237EA9D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
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
    *v21 = 0xD00000000000001DLL;
    *(v21 + 8) = 0x8000000237F1D6C0;
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

void LinearSupportVectorClassifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  memcpy(__dst, (a1 + 32), sizeof(__dst));
  if (v5)
  {
    *v11 = *a1;
    *&v11[16] = *(a1 + 16);
    *&v11[24] = v5;
    memcpy(&v11[32], (a1 + 32), 0x41uLL);
    type metadata accessor for LinearSupportVectorClassifierModel();
    sub_237D08AB0();
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

void LinearSupportVectorClassifier.decodeWithOptimizer(from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v20 = a3;
  sub_237D08F3C(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5]);
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
    memcpy(__dst, &__src[24], 0x49uLL);
    sub_237C9A114(__dst, qword_27DEB0300);
    memcpy(&__src[24], v16, 0x49uLL);
    memcpy(v20, __src, 0x61uLL);
  }
}

uint64_t sub_237EAA29C()
{
  LinearSupportVectorClassifier.update<A>(_:with:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static LinearSupportVectorClassifier.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *(a2 + 24) ^ *(a1 + 24) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_237EAA45C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79746C616E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000237EFF3E0 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000237EFFE30 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x616546656C616373 && a2 == 0xED00007365727574)
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

unint64_t sub_237EAA5C8(char a1)
{
  result = 0x79746C616E6570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x616546656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237EAA69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237EAA45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237EAA6E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C8CFF4();
  *a1 = result;
  return result;
}

uint64_t sub_237EAA72C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237EAA780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LinearSupportVectorClassifier.Configuration.encode(to:)(void *a1, _OWORD *a2)
{
  v4 = a2[2];
  v16 = a2[1];
  v17 = v4;
  v5 = a2[4];
  v18 = a2[3];
  v19 = v5;
  type metadata accessor for LinearSupportVectorClassifier.Configuration.CodingKeys();
  OUTLINED_FUNCTION_15_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v15 = *(v2 + 8);
  v14[1] = *(v2 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  sub_237EFA1B0();
  LOBYTE(v16) = 0;
  v12 = v20;
  sub_237EF9A30();
  if (!v12)
  {
    LOBYTE(v16) = 1;
    sub_237EF9A50();
    LOBYTE(v16) = 2;
    sub_237EF9A30();
    LOBYTE(v16) = 3;
    sub_237EF9A20();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t LinearSupportVectorClassifier.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2383E2240](*&v1);
  MEMORY[0x2383E2210](v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x2383E2240](*&v4);
  return sub_237EFA140();
}

uint64_t LinearSupportVectorClassifier.Configuration.hashValue.getter()
{
  sub_237EFA120();
  LinearSupportVectorClassifier.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t LinearSupportVectorClassifier.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a9;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v27[7] = a10;
  type metadata accessor for LinearSupportVectorClassifier.Configuration.CodingKeys();
  OUTLINED_FUNCTION_15_50();
  swift_getWitnessTable();
  v12 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v10)
  {
    v18 = v14;
    v19 = v28;
    LOBYTE(v27[0]) = 0;
    OUTLINED_FUNCTION_9_65();
    sub_237EF9930();
    v21 = v20;
    LOBYTE(v27[0]) = 1;
    OUTLINED_FUNCTION_9_65();
    v22 = sub_237EF9950();
    LOBYTE(v27[0]) = 2;
    OUTLINED_FUNCTION_9_65();
    sub_237EF9930();
    v24 = v23;
    LOBYTE(v27[0]) = 3;
    OUTLINED_FUNCTION_9_65();
    v26 = sub_237EF9920();
    (*(v18 + 8))(v17, v12);
    *v19 = v21;
    *(v19 + 8) = v22;
    *(v19 + 16) = v24;
    *(v19 + 24) = v26 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237EAACA8()
{
  sub_237EFA120();
  LinearSupportVectorClassifier.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t *sub_237EAAD58(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = result[2];
    v6 = *(a2 + 16);
    while (v6 != v3)
    {
      if ((v3 * v5) >> 64 != (v3 * v5) >> 63)
      {
        goto LABEL_9;
      }

      *(v4 + 8 * v3 * v5) = -*(a2 + 32 + 8 * v3);
      if (v2 == ++v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_237EAADF0(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4 * a3;
      if ((v4 * a3) >> 64 != (v4 * a3) >> 63)
      {
        break;
      }

      ++v4;
      *(result + 8 * v5) = *(result + 8 * v5) * a4;
      if (a2 == v4)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  return result;
}

double sub_237EAAE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v5 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EAB5C4, v7, a4, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v5);
  return *&v7[5];
}

uint64_t sub_237EAAEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v7 = sub_237C65348();
  return DenseVector.withUnsafeVectorPointer<A>(_:)(a5, v9, a4, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v7);
}

uint64_t sub_237EAAF40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a5 * a6) >> 64 != (a5 * a6) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  while (8 * a6 * a5 != v6 && 8 * a3 * a2 != v7)
  {
    v8 = v8 + *(a4 + v6) * *(result + v7);
    v7 += 8 * a3;
    v6 += 8 * a6;
  }

  return result;
}

uint64_t sub_237EAAFB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_237EAB03C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v7 = sub_237EAAE54(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_237EAB13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_237EAB1FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237EAB254()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EAB290(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_237EAB2D0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_237EAB330()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EAB36C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_237EAB3B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_237EAB418(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237EAB598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = sub_237EAAF40(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = v10;
  }

  return result;
}

BOOL sub_237EAB5E0@<W0>(_BOOL8 a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_237EA4038(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

double sub_237EAB610@<D0>(double *a1@<X8>)
{
  swift_getAtKeyPath();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_237EAB660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_237EA2F44(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v9;
  }

  return result;
}

double OUTLINED_FUNCTION_5_92(double a1, double a2)
{
  v4 = v3 + 8 * v2;
  result = *(v4 + 32) + (a1 + a1) * a2;
  *(v4 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237EAAEC8(a1, a2, a3, a4, sub_237EAB538);
}

void *OUTLINED_FUNCTION_17_56()
{

  return memcpy((v0 + 824), (v0 + 1144), 0x139uLL);
}

double OUTLINED_FUNCTION_21_51()
{
  v3 = v1 + 8 * v0;
  result = v2 * *(v3 + 32);
  *(v3 + 32) = result;
  return result;
}

void *OUTLINED_FUNCTION_27_33(void *a1)
{

  return memcpy(a1, (v1 + 1144), 0x139uLL);
}

void *OUTLINED_FUNCTION_33_25(void *a1)
{

  return memcpy(a1, (v1 + 1376), 0x139uLL);
}

void *OUTLINED_FUNCTION_34_18(void *a1)
{

  return memcpy(a1, (v1 + 1320), 0x139uLL);
}

double OUTLINED_FUNCTION_35_22(double a1, double a2, double a3)
{

  return sub_237EA2DC0(v4, v5, a3, v6);
}

uint64_t OUTLINED_FUNCTION_37_25()
{
  v2 = v0[122];
  v3 = v0[123];
  v4 = v0[124];
  v5 = v0[125];

  return sub_237EAB13C(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_46_20()
{

  return type metadata accessor for LinearSupportVectorClassifierModel();
}

uint64_t FullyConnectedNetworkRegressor.makeTransformer()@<X0>(char *a1@<X8>)
{
  v3 = v1[1];
  v11[0] = *v1;
  v11[1] = v3;
  v4 = v1[3];
  v6 = *v1;
  v5 = v1[1];
  v11[2] = v1[2];
  v11[3] = v4;
  v10[0] = v6;
  v10[1] = v5;
  v7 = v1[3];
  v10[2] = v1[2];
  v10[3] = v7;
  sub_237C8F200(v11, &v9);
  return sub_237E43D20(v10, MEMORY[0x277D84F90], 0, a1);
}

uint64_t FullyConnectedNetworkRegressor.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 360) = a6;
  *(v8 + 368) = a7;
  *(v8 + 344) = a4;
  *(v8 + 352) = a5;
  *(v8 + 328) = a2;
  *(v8 + 336) = a3;
  *(v8 + 320) = a1;
  v11 = sub_237EF6B10();
  *(v8 + 376) = v11;
  *(v8 + 384) = *(v11 - 8);
  *(v8 + 392) = OUTLINED_FUNCTION_27_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  *(v8 + 400) = v12;
  *(v8 + 408) = *(v12 - 8);
  *(v8 + 416) = OUTLINED_FUNCTION_27_0();
  *(v8 + 424) = *(a5 + 16);
  *(v8 + 432) = *(a5 + 24);
  v13 = sub_237EF7E90();
  *(v8 + 440) = v13;
  *(v8 + 448) = *(v13 - 8);
  *(v8 + 456) = OUTLINED_FUNCTION_27_0();
  *(v8 + 464) = type metadata accessor for AnnotatedFeature();
  sub_237EF90F0();
  *(v8 + 472) = OUTLINED_FUNCTION_27_0();
  *(v8 + 480) = *(a6 - 8);
  *(v8 + 488) = OUTLINED_FUNCTION_27_0();
  v14 = v7[1];
  *(v8 + 16) = *v7;
  *(v8 + 32) = v14;
  v15 = v7[3];
  *(v8 + 48) = v7[2];
  *(v8 + 64) = v15;

  return MEMORY[0x2822009F8](sub_237EABDE4, 0, 0);
}

uint64_t sub_237EABDE4()
{
  (*(*(v0 + 480) + 16))(*(v0 + 488), *(v0 + 328), *(v0 + 360));
  v1 = sub_237EF8A90();
  *(v0 + 496) = v1;
  *(v0 + 264) = v1;
  v2 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  if (sub_237EF8EC0())
  {

    sub_237C84150();
    swift_allocError();
    *v4 = 0xD000000000000026;
    *(v4 + 8) = 0x8000000237F01940;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_1_116();

    OUTLINED_FUNCTION_3_0();
LABEL_8:

    return v34();
  }

  v5 = *(v0 + 424);
  v6 = *(v0 + 432);
  v7 = *(v0 + 320);
  v59 = *(*(v0 + 352) + 32);
  v57 = type metadata accessor for FullyConnectedNetworkRegressorModel();
  v8 = *(v57 + 48);
  v60 = WitnessTable;
  v61 = v2;
  if (*(*(v7 + v8) + 16))
  {
    v9 = v5;
  }

  else
  {
    v11 = *(v0 + 464);
    v10 = *(v0 + 472);
    *(v0 + 312) = v1;
    sub_237EF8E80();
    result = __swift_getEnumTagSinglePayload(v10, 1, v11);
    if (result == 1)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v13 = *(v0 + 464);
    v14 = *(v0 + 472);
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);
    v17 = *(v0 + 440);
    (*(v16 + 16))(v15, v14, v17);
    (*(*(v13 - 8) + 8))(v14, v13);
    v18 = sub_237EF7E20();
    (*(v16 + 8))(v15, v17);

    *(v7 + v8) = v18;
    v9 = *(v0 + 424);
    v6 = *(v0 + 432);
  }

  v20 = *(v0 + 360);
  v19 = *(v0 + 368);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  v22 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v22;
  *(v0 + 272) = v1;
  v23 = swift_task_alloc();
  *v23 = v9;
  v23[1] = v20;
  v23[2] = v6;
  v23[3] = v59;
  v23[4] = v19;
  KeyPath = swift_getKeyPath();

  v25 = swift_task_alloc();
  v25[2] = v20;
  v25[3] = v59;
  v25[4] = v19;
  v25[5] = KeyPath;
  sub_237C9339C();
  v27 = v26;

  *(v0 + 280) = v27;
  sub_237EF8A60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237D13CC4();
  v28 = *(v0 + 424);
  v29 = *(v0 + 432);
  v58 = *(v0 + 400);
  v31 = *(v0 + 360);
  v30 = *(v0 + 368);

  v32 = swift_task_alloc();
  v32[2] = v28;
  v32[3] = v31;
  v32[4] = v29;
  v32[5] = v59;
  v32[6] = v30;
  v32[7] = v0 + 16;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  v35 = sub_237C8FFEC(sub_237EAC9A0, v32, v31, v58, v33, v30, MEMORY[0x277D84950], v0 + 288);
  v36 = *(v0 + 416);
  v37 = *(v0 + 320);

  *(v0 + 296) = v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8);
  sub_237C90604();
  sub_237E86418(v38, v36);

  result = sub_237E444D0(v36, v57);
  v39 = *(v57 + 52);
  v40 = *(v37 + v39);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  *(v0 + 504) = v42;
  if (v41)
  {
    __break(1u);
    goto LABEL_18;
  }

  v43 = *(v0 + 336);
  *(v37 + v39) = v42;
  v44 = *(v0 + 392);
  if (!v43)
  {
    v53 = *(v0 + 408);
    v52 = *(v0 + 416);
    v54 = *(v0 + 400);
    v55 = *(v0 + 376);
    v56 = *(v0 + 384);

    (*(v56 + 8))(v44, v55);
    (*(v53 + 8))(v52, v54);
    OUTLINED_FUNCTION_1_116();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_8;
  }

  v45 = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  strcpy((inited + 32), "training_loss");
  *(inited + 46) = -4864;
  sub_237C70604(v45);
  sub_237EF6A90();
  *(inited + 48) = *(v0 + 552);
  sub_237C758C4();
  *(v0 + 512) = sub_237EF8230();
  v47 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v47;
  v48 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v48;
  *(v0 + 304) = v1;
  v49 = swift_task_alloc();
  *(v0 + 520) = v49;
  *v49 = v0;
  v49[1] = sub_237EAC500;
  v50 = *(v0 + 352);
  v51 = *(v0 + 320);

  return sub_237E859F8(v51, v0 + 304, v50, v61, v60);
}

uint64_t sub_237EAC500(double a1, double a2)
{
  v6 = *v3;
  *(*v3 + 528) = v2;

  if (v2)
  {
    v7 = sub_237EAC81C;
  }

  else
  {
    *(v6 + 536) = a2;
    *(v6 + 544) = a1;
    v7 = sub_237EAC63C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237EAC63C()
{
  v18 = v0;
  v1 = v0[68];
  v2 = v0[67];
  v4 = *(v0 + 63);
  v3 = *(v0 + 64);
  v5 = *(v0 + 51);
  v13 = *(v0 + 50);
  v14 = *(v0 + 52);
  v6 = *(v0 + 48);
  v11 = *(v0 + 47);
  v12 = *(v0 + 49);
  v7 = *(v0 + 42);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0x676E696E69617274, 0xEE00726F7272655FLL, v1);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0xD000000000000012, 0x8000000237EFCC20, v2);
  v8 = sub_237C908A4(v3);

  v15[0] = 0xD00000000000001ELL;
  v15[1] = 0x8000000237F01920;
  v15[2] = v4;
  v15[3] = v4;
  v16 = 0;
  v17 = v8;
  v7(v15);
  sub_237C5EE40(v7);

  (*(v6 + 8))(v12, v11);
  (*(v5 + 8))(v14, v13);
  OUTLINED_FUNCTION_1_116();

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237EAC81C()
{
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[47];
  v6 = v0[48];
  sub_237C5EE40(v0[42]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237EAC914@<X0>(uint64_t a1@<X0>, void *a2@<X7>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FullyConnectedNetworkRegressor();
  result = sub_237E86090(a1, v7, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_237EAC9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C90C10;

  return FullyConnectedNetworkRegressor.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237EACAA8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void SupervisedTemporalEstimator.fitted<A, B>(to:)()
{
  OUTLINED_FUNCTION_0_97();
  OUTLINED_FUNCTION_34_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_6_79();

  __asm { BRAA            X8, X16 }
}

void SupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:)()
{
  OUTLINED_FUNCTION_1_117();
  OUTLINED_FUNCTION_7_77(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_1(v1);
  *v2 = v3;
  v2[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X8, X16 }
}

void UpdatableSupervisedTemporalEstimator.update<A, B>(_:with:)()
{
  OUTLINED_FUNCTION_0_97();
  OUTLINED_FUNCTION_34_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;
  OUTLINED_FUNCTION_6_79();

  __asm { BRAA            X8, X16 }
}

void dispatch thunk of SupervisedTemporalEstimator.fitted<A, B>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_0_97();
  OUTLINED_FUNCTION_34_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_5_93();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of SupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_1_117();
  OUTLINED_FUNCTION_7_77(a13);
  v19 = (v13 + *v13);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_9_1(v14);
  *v15 = v16;
  v15[1] = sub_237C5FFA4;
  v17 = OUTLINED_FUNCTION_2_116();

  return v19(v17);
}

void dispatch thunk of UpdatableSupervisedTemporalEstimator.update<A, B>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_0_97();
  OUTLINED_FUNCTION_34_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;
  OUTLINED_FUNCTION_5_93();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X8, X16 }
}

uint64_t PreprocessingTemporalEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 32))(a3);
  v7 = type metadata accessor for PreprocessingTemporalEstimator();
  return (*(*(a2 - 8) + 32))(a3 + *(v7 + 52), a1, a2);
}

uint64_t PreprocessingTemporalEstimator.preprocessed<A>(from:eventHandler:)()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[9] = v5;
  v1[10] = v6;
  v1[7] = v7;
  v1[8] = v2;
  v1[5] = v8;
  v1[6] = v9;
  v1[13] = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_27_0();
  v1[16] = *(v3 + 32);
  v1[17] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[18] = v11;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_1_1();
  v1[22] = v12;
  v1[23] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v1[24] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[25] = v13;
  v1[26] = OUTLINED_FUNCTION_27_0();
  v1[27] = OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_15_0();
  v1[28] = v14;
  v1[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_237EAD7A0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[9];
  v4 = v0[5];
  v0[30] = swift_getAssociatedTypeWitness();
  v0[31] = type metadata accessor for PreprocessedFeatureSequence();
  v0[2] = sub_237EF8110();
  (*(v2 + 16))(v1, v4, v3);
  sub_237EF86F0();
  v5 = v0[24];
  v6 = v0[21];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = v0[29];
    OUTLINED_FUNCTION_13_17();
    (*(v8 + 8))(v7);

    v9 = OUTLINED_FUNCTION_28_11();

    return v10(v9);
  }

  else
  {
    v12 = v0[15];
    v13 = v0[8];
    (*(v0[22] + 32))(v0[23], v0[24], v0[21]);
    PreprocessingTemporalEstimator.preprocessor.getter(v13, v12);
    OUTLINED_FUNCTION_15_0();
    v17 = (v14 + *v14);
    v15 = swift_task_alloc();
    v0[32] = v15;
    *v15 = v0;
    v16 = OUTLINED_FUNCTION_2_117(v15);

    return v17(v16);
  }
}

uint64_t sub_237EADA44()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[33] = v0;

  if (v0)
  {
    (*(v3[14] + 8))(v3[15], v3[13]);

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_19();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v12 = v3[19];
    v11 = v3[20];
    v13 = v3[17];
    v14 = v3[18];
    (*(v3[14] + 8))(v3[15], v3[13]);
    (*(v14 + 16))(v12, v11, v13);
    v15 = swift_task_alloc();
    v3[34] = v15;
    swift_getAssociatedConformanceWitness();
    *v15 = v5;
    v15[1] = sub_237EADC44;
    OUTLINED_FUNCTION_15_19();

    return PreprocessedFeatureSequence.init<A>(_:)(v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237EADC44()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237EADD48()
{
  v0[4] = v0[3];
  v1 = v0[22];
  v17 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  sub_237EF8A60();
  sub_237EF8260();
  sub_237EF8A20();

  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v17, v2);
  v6 = v0[24];
  v7 = v0[21];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v8 = v0[29];
    OUTLINED_FUNCTION_13_17();
    (*(v9 + 8))(v8);

    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X2, X16 }
  }

  v12 = v0[15];
  v13 = v0[8];
  (*(v0[22] + 32))(v0[23], v0[24], v0[21]);
  PreprocessingTemporalEstimator.preprocessor.getter(v13, v12);
  OUTLINED_FUNCTION_15_0();
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_2_117();
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

uint64_t PreprocessingTemporalEstimator.fitted(toPreprocessed:eventHandler:)()
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
  v1[15] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[16] = v9;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_237EAE124()
{
  OUTLINED_FUNCTION_19_18();
  v1 = v0[7];
  v2 = v0[4];
  PreprocessingTemporalEstimator.estimator.getter(v1, v0[13]);
  v0[2] = v2;
  OUTLINED_FUNCTION_15_0();
  v5 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  v0[20] = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PreprocessedFeatureSequence();
  sub_237EF8A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_237EAE304;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237EAE304()
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
  *(v10 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237EAE45C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[10];
  v9 = v0[9];
  v6 = v0[3];
  PreprocessingTemporalEstimator.preprocessor.getter(v0[7], v5);
  (*(v4 + 32))(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v5, v2, v9, v3, v6);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X1, X16 }
}

uint64_t PreprocessingTemporalEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  v6[1] = sub_237EAE654;

  return PreprocessingTemporalEstimator.preprocessed<A>(from:eventHandler:)();
}

uint64_t sub_237EAE654()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
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

uint64_t sub_237EAE774()
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
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_237D1AA1C;

    return PreprocessingTemporalEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t PreprocessingTemporalEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTemporalTransformer();
  return (*(v4 + 32))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingTemporalEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    return ComposedTemporalTransformer.init(_:_:)(v31, v17, v25, AssociatedTypeWitness, v29);
  }

  return result;
}

uint64_t sub_237EAEB70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingTemporalEstimator.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237EAF1C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237EAF38C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

size_t sub_237EAF654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v87 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v69 = &v64[-v7];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08);
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v75 = &v64[-v11];
  MEMORY[0x28223BE20](v12);
  v74 = &v64[-v13];
  MEMORY[0x28223BE20](v14);
  v70 = &v64[-v15];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6610);
  MEMORY[0x28223BE20](v73);
  v68 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v66 = &v64[-v18];
  MEMORY[0x28223BE20](v19);
  v65 = &v64[-v20];
  v81 = a1;
  v21 = *(a1 + 16);
  v79 = a2;
  v22 = *(a2 + 16);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v90 = MEMORY[0x277D84F90];
  result = sub_237C635D8(0, v23, 0);
  v89 = v90;
  v71 = v22;
  v72 = v21;
  if (!v23)
  {
    v44 = v69;
    goto LABEL_13;
  }

  v25 = 0;
  v88 = v23;
  v67 = v9;
  do
  {
    if (v21 == v25)
    {
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

    result = sub_237C9E294(v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v25, v9, &qword_27DEAFD08);
    if (v22 == v25)
    {
      goto LABEL_24;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
    v27 = *(v26 - 8);
    v28 = v79 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25;
    v29 = *(v73 + 48);
    v85 = v29;
    v30 = v68;
    sub_237CF9FF0(v9, v68, &qword_27DEAFD08);
    v86 = v25;
    v31 = *(v27 + 16);
    v31(&v30[v29], v28, v26);
    v32 = v76;
    v84 = *(v76 + 48);
    v33 = *(v78 + 48);
    v82 = *&v30[v84];
    v83 = v33;
    v34 = v74;
    v31(v74, v30, v26);
    *&v34[*(v32 + 48)] = v82;
    v35 = v34;
    v36 = v75;
    sub_237CF9FF0(v35, v75, &qword_27DEAFD08);
    v37 = v87;
    v38 = *&v36[*(v32 + 48)];
    (*(v27 + 32))(v87, v36, v26);
    v31((v37 + v83), &v30[v85], v26);
    *(v37 + v84) = v38;
    v39 = v89;
    sub_237C65484(v30, qword_27DEB6610);
    v90 = v39;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    v89 = v39;
    if (v41 >= v40 >> 1)
    {
      sub_237C635D8(v40 > 1, v41 + 1, 1);
      v89 = v90;
    }

    v42 = v87;
    v25 = v86 + 1;
    v43 = v89;
    *(v89 + 16) = v41 + 1;
    result = sub_237CF9FF0(v42, v43 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v41, &qword_27DEAD3A8);
    v23 = v88;
    v44 = v69;
    v22 = v71;
    v21 = v72;
    v9 = v67;
  }

  while (v88 != v25);
LABEL_13:
  while (v21 != v23)
  {
    if (v23 >= v21)
    {
      goto LABEL_25;
    }

    result = sub_237C9E294(v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v23, v70, &qword_27DEAFD08);
    if (__OFADD__(v23, 1))
    {
      goto LABEL_26;
    }

    if (v22 == v23)
    {
      sub_237C65484(v70, &qword_27DEAFD08);
      return v89;
    }

    if (v23 >= v22)
    {
      goto LABEL_27;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
    v46 = *(v45 - 8);
    v47 = v79 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v23;
    v48 = v73;
    v49 = *(v73 + 48);
    v50 = v66;
    sub_237CF9FF0(v70, v66, &qword_27DEAFD08);
    v88 = v23;
    v51 = *(v46 + 16);
    v51(&v50[v49], v47, v45);
    v52 = v65;
    sub_237CF9FF0(v50, v65, qword_27DEB6610);
    v53 = v76;
    v87 = *(v76 + 48);
    v54 = *(v52 + v87);
    v55 = *(v48 + 48);
    v85 = *(v78 + 48);
    v86 = v55;
    v56 = v74;
    v51(v74, v52, v45);
    *&v56[*(v53 + 48)] = v54;
    v57 = v56;
    v58 = v75;
    sub_237CF9FF0(v57, v75, &qword_27DEAFD08);
    v59 = *&v58[*(v53 + 48)];
    (*(v46 + 32))(v44, v58, v45);
    v51((v44 + v85), v52 + v86, v45);
    *(v44 + v87) = v59;
    v60 = v89;
    sub_237C65484(v52, qword_27DEB6610);
    v90 = v60;
    v62 = *(v60 + 16);
    v61 = *(v60 + 24);
    v89 = v60;
    if (v62 >= v61 >> 1)
    {
      sub_237C635D8(v61 > 1, v62 + 1, 1);
      v44 = v69;
      v89 = v90;
    }

    v63 = v89;
    *(v89 + 16) = v62 + 1;
    result = sub_237CF9FF0(v44, v63 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v62, &qword_27DEAD3A8);
    v23 = v88 + 1;
    v22 = v71;
    v21 = v72;
  }

  return v89;
}

void sub_237EAFEA4(uint64_t a1, uint64_t a2, double (*a3)(void (**)(char *, char *, uint64_t), char *), uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v6 = sub_237EF6B10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6608);
  MEMORY[0x28223BE20](v54);
  v51 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v45 = &v43 - v14;
  MEMORY[0x28223BE20](v15);
  v44 = &v43 - v16;
  v17 = *(a1 + 16);
  v55 = a2;
  v58 = *(a2 + 16);
  v59 = a1;
  if (v58 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v58;
  }

  v62 = MEMORY[0x277D84F90];
  sub_237C62FA0();
  v19 = v62;
  v61 = v6;
  v53 = v17;
  if (v18)
  {
    v49 = v7;
    v50 = v9;
    v20 = 0;
    v46 = (v7 + 32);
    v47 = v7 + 16;
    v48 = v18;
    while (v17 != v20)
    {
      v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v22 = *(v7 + 72) * v20;
      v23 = *(v7 + 16);
      v24 = v50;
      v23(v50, v59 + v21 + v22, v6);
      if (v58 == v20)
      {
        goto LABEL_23;
      }

      v25 = v55 + v21;
      v26 = *(v54 + 48);
      v27 = *v46;
      v60 = v19;
      v28 = v51;
      v27(v51, v24, v6);
      v23(v28 + v26, v25 + v22, v6);
      v29 = v56(v28, v28 + v26);
      v30 = v28;
      v19 = v60;
      sub_237C65484(v30, &qword_27DEB6608);
      v62 = v19;
      v31 = *(v19 + 16);
      if (v31 >= *(v19 + 24) >> 1)
      {
        sub_237C62FA0();
        v19 = v62;
      }

      ++v20;
      *(v19 + 16) = v31 + 1;
      *(v19 + 8 * v31 + 32) = v29;
      v18 = v48;
      v7 = v49;
      v6 = v61;
      v17 = v53;
      if (v48 == v20)
      {
        goto LABEL_11;
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
  }

  else
  {
LABEL_11:
    v60 = v7 + 16;
    v51 = (v7 + 32);
    while (v17 != v18)
    {
      if (v18 >= v17)
      {
        goto LABEL_24;
      }

      v32 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v33 = *(v7 + 72) * v18;
      v34 = *(v7 + 16);
      v34(v52, v59 + v32 + v33, v6);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_25;
      }

      if (v58 == v18)
      {
        (*(v7 + 8))(v52, v6);
        return;
      }

      if (v18 >= v58)
      {
        goto LABEL_26;
      }

      v35 = v54;
      v36 = v55 + v32;
      v37 = *(v54 + 48);
      v38 = v45;
      (*v51)(v45, v52, v61);
      v39 = (v38 + v37);
      v6 = v61;
      v34(v39, v36 + v33, v61);
      v40 = v44;
      sub_237CF9FF0(v38, v44, &qword_27DEB6608);
      v41 = v56(v40, (v40 + *(v35 + 48)));
      sub_237C65484(v40, &qword_27DEB6608);
      v62 = v19;
      v42 = *(v19 + 16);
      if (v42 >= *(v19 + 24) >> 1)
      {
        sub_237C62FA0();
        v19 = v62;
      }

      *(v19 + 16) = v42 + 1;
      *(v19 + 8 * v42 + 32) = v41;
      ++v18;
      v17 = v53;
    }
  }
}

void sub_237EB0364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v43 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v46 = v9;
  MEMORY[0x28223BE20](v10);
  v42 = &v35 - v11;
  sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v44 = v12;
  v45 = v13;
  MEMORY[0x28223BE20](v12);
  v41 = &v35 - v14;
  v39 = a1;
  MEMORY[0x2383E08A0](a3, v8);
  v15 = a2[3];
  v38 = a2[2];
  v47 = v38;
  v48 = v15;
  v16 = a2[4];
  v17 = a2[5];
  v49 = a3;
  v50 = v16;
  v36 = v16;
  v19 = a2[6];
  v18 = a2[7];
  v51 = v17;
  v52 = v19;
  v20 = a2[8];
  v21 = a2[9];
  v53 = v18;
  v54 = v20;
  v55 = v21;
  v56 = a4;
  v57 = 0;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  v37 = v15;
  v23[2] = v15;
  v23[3] = a3;
  v24 = v17;
  v25 = a3;
  v23[4] = v24;
  v23[5] = v19;
  v23[6] = v18;
  v23[7] = v20;
  v23[8] = v21;
  v23[9] = a4;
  v40 = a4;
  v23[10] = KeyPath;
  v26 = v43;
  swift_getWitnessTable();
  v28 = v41;
  v27 = v42;
  sub_237EF9860();

  (*(v46 + 8))(v27, v26);
  v29 = v44;
  swift_getWitnessTable();
  sub_237EF8830();
  v30 = (*(v45 + 8))(v28, v29);
  if (v58)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v30);
    v31 = v37;
    *(&v35 - 12) = v38;
    *(&v35 - 11) = v31;
    v32 = v36;
    *(&v35 - 10) = v25;
    *(&v35 - 9) = v32;
    *(&v35 - 8) = v24;
    *(&v35 - 7) = v19;
    *(&v35 - 6) = v18;
    *(&v35 - 5) = v20;
    v33 = v40;
    *(&v35 - 4) = v21;
    *(&v35 - 3) = v33;
    *(&v35 - 2) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08);
    sub_237C9339C();
  }
}

uint64_t sub_237EB06EC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4[2];
  v12[1] = a4[1];
  v14 = v8;
  v9 = a4[4];
  v15 = a4[3];
  v13 = a5;
  v16 = v9;
  v17 = a6;
  v18 = a2;
  v19 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237C8FFEC(sub_237EB5870, v12, a5, MEMORY[0x277D849A8], v10, a6, MEMORY[0x277D84950], &v20);
}

uint64_t sub_237EB07AC(uint64_t a1)
{
  type metadata accessor for LSTMFCN(0);
  sub_237C962B0();
  sub_237EF6510();
  v2 = *(type metadata accessor for TimeSeriesClassifier.Model() + 84);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0);
  result = __swift_getEnumTagSinglePayload(a1 + v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_237EF6790();
  }

  return result;
}

uint64_t sub_237EB0898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0.0;
    v4 = 0.0;
    do
    {
      v5 = v4;
      v6 = *(a1 + 32 + 8 * v2++);
      v7 = v6 - v3;
      v4 = v5 + v7;
      v3 = v5 + v7 - v5 - v7;
    }

    while (v1 != v2);
    *&result = v4 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t TimeSeriesClassifier.labels.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t TimeSeriesClassifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v8[14] = a2;
  v8[15] = a3;
  v8[13] = a1;
  memcpy(v8 + 2, v7, 0x50uLL);

  return MEMORY[0x2822009F8](sub_237EB0A44, 0, 0);
}

uint64_t sub_237EB0A44()
{
  sub_237EF7E90();
  type metadata accessor for AnnotatedFeature();
  v1 = sub_237EF89A0();
  v0[20] = v1;
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  v3 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_237EB0B60;
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];

  return TimeSeriesClassifier.fitted<A, B>(to:validateOn:eventHandler:)(v9, v7, (v0 + 12), v8, v5, v6, v4, v3);
}

uint64_t sub_237EB0B60()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237EB0CB0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t TimeSeriesClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 592) = v45;
  *(v9 + 584) = v44;
  *(v9 + 576) = a8;
  *(v9 + 568) = a7;
  *(v9 + 560) = a6;
  *(v9 + 552) = a5;
  *(v9 + 544) = a4;
  *(v9 + 536) = a3;
  *(v9 + 528) = a2;
  *(v9 + 520) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE8);
  OUTLINED_FUNCTION_18(v12);
  *(v9 + 600) = OUTLINED_FUNCTION_27_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8);
  *(v9 + 608) = v13;
  OUTLINED_FUNCTION_6_1(v13);
  *(v9 + 616) = v14;
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD00);
  *(v9 + 648) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  v16 = sub_237EF64C0();
  *(v9 + 672) = v16;
  OUTLINED_FUNCTION_6_1(v16);
  *(v9 + 680) = v17;
  *(v9 + 688) = OUTLINED_FUNCTION_27_0();
  v18 = a6[2];
  *(v9 + 696) = v18;
  v19 = a6[3];
  *(v9 + 704) = v19;
  v20 = a6[4];
  *(v9 + 712) = v20;
  v21 = a6[5];
  *(v9 + 720) = v21;
  *&v22 = v18;
  *(&v22 + 1) = v19;
  *&v23 = v20;
  *(&v23 + 1) = v21;
  v24 = a6[6];
  *(v9 + 728) = v24;
  v25 = a6[7];
  *(v9 + 736) = v25;
  v26 = a6[8];
  *(v9 + 744) = v26;
  v27 = a6[9];
  *(v9 + 752) = v27;
  *&v28 = v24;
  *(&v28 + 1) = v25;
  *(v9 + 256) = v22;
  *(v9 + 272) = v23;
  *&v22 = v26;
  *(&v22 + 1) = v27;
  *(v9 + 288) = v28;
  *(v9 + 304) = v22;
  v29 = type metadata accessor for TimeSeriesClassifier.Model();
  *(v9 + 760) = v29;
  OUTLINED_FUNCTION_6_1(v29);
  *(v9 + 768) = v30;
  *(v9 + 776) = OUTLINED_FUNCTION_17_57();
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  *(v9 + 800) = v31;
  OUTLINED_FUNCTION_6_1(v31);
  *(v9 + 808) = v32;
  *(v9 + 816) = OUTLINED_FUNCTION_17_57();
  *(v9 + 824) = swift_task_alloc();
  *(v9 + 832) = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08);
  *(v9 + 840) = v33;
  OUTLINED_FUNCTION_6_1(v33);
  *(v9 + 848) = v34;
  *(v9 + 856) = OUTLINED_FUNCTION_17_57();
  *(v9 + 864) = swift_task_alloc();
  v35 = sub_237EF6B10();
  *(v9 + 872) = v35;
  OUTLINED_FUNCTION_6_1(v35);
  *(v9 + 880) = v36;
  *(v9 + 888) = OUTLINED_FUNCTION_17_57();
  *(v9 + 896) = swift_task_alloc();
  *(v9 + 904) = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8);
  OUTLINED_FUNCTION_18(v37);
  *(v9 + 912) = OUTLINED_FUNCTION_27_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v38);
  *(v9 + 920) = OUTLINED_FUNCTION_17_57();
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = swift_task_alloc();
  *(v9 + 944) = sub_237EF7E90();
  v39 = type metadata accessor for AnnotatedFeature();
  *(v9 + 952) = v39;
  v40 = sub_237EF90F0();
  *(v9 + 960) = v40;
  OUTLINED_FUNCTION_6_1(v40);
  *(v9 + 968) = v41;
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = *(v39 - 8);
  *(v9 + 1000) = swift_task_alloc();
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = *(a7 - 8);
  *(v9 + 1024) = OUTLINED_FUNCTION_27_0();
  memcpy((v9 + 16), v8, 0x50uLL);

  return MEMORY[0x2822009F8](sub_237EB1260, 0, 0);
}

void sub_237EB1260()
{
  v474 = v0;
  v1 = v0;
  v2 = v0[123];
  v3 = v0[119];
  (*(v0[127] + 16))(v0[128], v0[66], v0[71]);
  v4 = sub_237EF8A90();
  v0[57] = v4;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    (*(v0[121] + 8))(v0[123], v0[120]);

    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    *v6 = 0xD000000000000014;
    *(v6 + 8) = 0x8000000237F1DCE0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 2;
    swift_willThrow();
LABEL_8:

    v29 = v1[1];
LABEL_9:

    v29();
    return;
  }

  v7 = v0[124];
  v10 = *(v7 + 32);
  v8 = v7 + 32;
  v9 = v10;
  v10(v1[126], v1[123], v1[119]);
  v11 = *(sub_237EF7E20() + 16);

  v12 = v1[126];
  if (v11 != 2)
  {
    v24 = v1[124];
    v25 = v1[119];

    v26 = sub_237EF7E20();
    sub_237C84150();
    v27 = OUTLINED_FUNCTION_45_0();
    *v28 = v26;
    v28[1] = 0xD000000000000036;
    v28[2] = 0x8000000237EFD2D0;
    v28[3] = 0;
    OUTLINED_FUNCTION_10_68(v27, v28);
    (*(v24 + 8))(v12, v25);
    goto LABEL_8;
  }

  v13 = sub_237EF7E20();
  if (!*(v13 + 16))
  {
    goto LABEL_119;
  }

  v14 = *(v13 + 32);

  v15 = v1[2];
  v16 = v1[126];
  if (v14 < v15)
  {
    v17 = v1[124];
    v18 = v1[119];

    v19 = sub_237EF7E20();
    sub_237EF9330();

    *&v473[0] = 0xD000000000000025;
    *(&v473[0] + 1) = 0x8000000237EFB9D0;
    v1[64] = v15;
    v20 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v20);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v21 = v473[0];
    sub_237C84150();
    v22 = OUTLINED_FUNCTION_45_0();
    *v23 = v19;
    *(v23 + 8) = v21;
    *(v23 + 24) = 0;
    OUTLINED_FUNCTION_10_68(v22, v23);
    (*(v17 + 8))(v16, v18);
    goto LABEL_8;
  }

  v404 = v1[2];
  v401 = v1[3];
  v391 = v1[4];
  v385 = v1[5];
  v405 = v1[7];
  v30 = *(v1 + 16);
  v31 = sub_237EF7E20();
  if (*(v31 + 16) < 2uLL)
  {
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
    v434 = v1[126];
    v325 = v1[124];
    v326 = v1[119];
    v327 = v1[117];
    v457 = v1[99];
    v328 = v1[95];
    v443 = v1[83];
    v329 = v1[68];

    sub_237C65484((v1 + 46), qword_27DEB6580);

    v330 = OUTLINED_FUNCTION_49_2();
    WitnessTable(v330);
    sub_237C65484(v327, &qword_27DEAD2C0);

    (*(v325 + 8))(v434, v326);
    sub_237C5EE40(v329);
    sub_237C65484(v443, &qword_27DEAFD00);

    (WitnessTable)(v457, v328);
    goto LABEL_8;
  }

  v32 = (v1 + 71);
  v33 = v1[122];
  v34 = v1[119];
  v35 = *(v31 + 40);
  v444 = *(v1 + 89);
  v458 = *(v1 + 87);
  v427 = *(v1 + 93);
  v435 = *(v1 + 91);
  v416 = *(v1 + 71);
  v421 = *(v1 + 73);

  v1[58] = v4;
  v36 = swift_task_alloc();
  *(v36 + 16) = v458;
  *(v36 + 32) = v416;
  *(v36 + 48) = v444;
  *(v36 + 64) = v435;
  *(v36 + 80) = v427;
  *(v36 + 96) = v421;
  v393 = v35;
  *(v36 + 112) = v35;
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF87D0();

  if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
  {
    v73 = v1[126];
    v74 = v1[125];
    v75 = v1[124];
    v76 = v1[122];
    v77 = v1[119];

    v9(v74, v76, v77);
    v78 = sub_237EF7E20();
    sub_237C84150();
    v79 = OUTLINED_FUNCTION_45_0();
    *v80 = v78;
    v80[1] = 0xD000000000000036;
    v80[2] = 0x8000000237EFD2D0;
    v80[3] = 0;
    OUTLINED_FUNCTION_10_68(v79, v80);
    v81 = *(v75 + 8);
    v81(v74, v77);
    v81(v73, v77);
    goto LABEL_8;
  }

  v37 = v1[122];
  v38 = v1[121];
  v39 = v1[120];
  v40 = v1[94];
  v422 = v1[93];
  v417 = v1[92];
  v41 = v1[91];
  v42 = v1[90];
  v399 = v1[89];
  v445 = *(v1 + 87);
  v414 = v1;
  v43 = v1[74];
  v44 = *(v414 + 584);
  v45 = *(v414 + 560);
  v373 = *(v414 + 544);
  v378 = v32;
  v459 = *v32;
  (*(v38 + 8))(v37, v39);
  v46 = powf((v30 * 0.01) / v30, 1.0 / v385);
  sub_237CDC02C(v405, 0.0);
  v47 = *(v414 + 88);
  v48 = *(*(v45 - 1) + 16);
  v48(v414 + 96, v414 + 16, v45);
  v48(v414 + 176, v414 + 16, v45);
  v397 = sub_237E5E16C(v47, *(&v445 + 1), v41, v40);
  v394 = v49;
  v380 = v4;
  *(v414 + 472) = v4;
  v50 = swift_task_alloc();
  *v50 = v445;
  *(v50 + 16) = v459;
  *(v50 + 32) = v399;
  *(v50 + 40) = v42;
  *(v50 + 48) = v41;
  *(v50 + 56) = v417;
  *(v50 + 64) = v422;
  *(v50 + 72) = v40;
  *(v50 + 80) = v44;
  *(v50 + 88) = v43;
  KeyPath = swift_getKeyPath();

  v52 = swift_task_alloc();
  *(v52 + 16) = v459;
  *(v52 + 32) = v42;
  *(v52 + 40) = v41;
  *(v52 + 48) = v417;
  *(v52 + 56) = v422;
  *(v52 + 64) = v40;
  *(v52 + 72) = v44;
  *(v52 + 80) = v43;
  *(v52 + 88) = KeyPath;
  sub_237C9339C();
  v54 = v53;

  *(v414 + 480) = v54;
  v55 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  v56 = swift_getWitnessTable();
  sub_237EB0364(v414 + 480, v45, v55, v56);
  v58 = v57;

  v377 = v58;
  if (v373)
  {
    v59 = *(v58 + 16);
    if (v59)
    {
      v60 = *(v414 + 848);
      v61 = *(v414 + 808);
      *&v473[0] = MEMORY[0x277D84F90];
      sub_237C635F8(0, v59, 0);
      v62 = *&v473[0];
      OUTLINED_FUNCTION_28();
      v64 = v58 + v63;
      v418 = *(v60 + 72);
      do
      {
        v446 = v59;
        v65 = *(v414 + 864);
        v66 = *(v414 + 856);
        v67 = *(v414 + 800);
        sub_237C9E294(v64, v65, &qword_27DEAFD08);
        sub_237C9E294(v65, v66, &qword_27DEAFD08);
        OUTLINED_FUNCTION_5_94();
        sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0);
        sub_237EF7F00();
        sub_237C65484(v65, &qword_27DEAFD08);
        (*(v61 + 8))(v66, v67);
        *&v473[0] = v62;
        v69 = *(v62 + 16);
        v68 = *(v62 + 24);
        if (v69 >= v68 >> 1)
        {
          v72 = OUTLINED_FUNCTION_7_78(v68);
          sub_237C635F8(v72, v69 + 1, 1);
          v62 = *&v473[0];
        }

        *(v62 + 16) = v69 + 1;
        OUTLINED_FUNCTION_28();
        (*(v71 + 32))(v62 + v70 + *(v71 + 72) * v69);
        v64 += v418;
        --v59;
      }

      while (v446 != 1);
    }

    v82 = *(v414 + 936);
    v83 = *(v414 + 928);
    v84 = *(v414 + 912);
    v85 = *(v414 + 872);
    v86 = sub_237EF6430();
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v86);
    sub_237EF6AF0();
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v85);
    sub_237CF9FF0(v83, v82, &qword_27DEAD2C0);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v414 + 936), 1, 1, *(v414 + 872));
  }

  v428 = *(v414 + 752);
  v87 = *(v414 + 744);
  v423 = v87;
  v88 = *(v414 + 736);
  v89 = *(v414 + 728);
  v90 = *(v414 + 720);
  v91 = *(v414 + 712);
  v460 = v378[8];
  v92 = *(v414 + 592);
  v93 = *(v414 + 584);
  v447 = *(v414 + 560);
  *(v414 + 488) = v380;
  v94 = swift_task_alloc();
  v436 = *v378;
  v95 = *v378;
  *v94 = v460;
  *(v94 + 16) = v95;
  *(v94 + 32) = v91;
  *(v94 + 40) = v90;
  *(v94 + 48) = v89;
  *(v94 + 56) = v88;
  *(v94 + 64) = v87;
  *(v94 + 72) = v428;
  *(v94 + 80) = v93;
  *(v94 + 88) = v92;
  v96 = swift_getKeyPath();

  v97 = swift_task_alloc();
  *(v97 + 16) = v436;
  *(v97 + 32) = v90;
  *(v97 + 40) = v89;
  *(v97 + 48) = v88;
  *(v97 + 56) = v423;
  *(v97 + 64) = v428;
  *(v97 + 72) = v93;
  *(v97 + 80) = v92;
  *(v97 + 88) = v96;
  sub_237C9339C();
  v99 = v98;

  *(v414 + 496) = v99;
  v100 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  v101 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_49();
  v105 = sub_237EB06EC(v102, v103, v104, v447, v100, v101);
  v429 = v101;
  v437 = v100;

  v106 = *(v105 + 16);
  v396 = v105;
  if (v106)
  {
    v8 = *(v414 + 808);
    v107 = OUTLINED_FUNCTION_15_51(MEMORY[0x277D84F90]);
    sub_237C63650(v107, v108, v109);
    v110 = 0;
    v111 = *&v473[0];
    v12 = v394;
    while (v110 < *(v396 + 16))
    {
      v112 = v106;
      OUTLINED_FUNCTION_8_86();
      OUTLINED_FUNCTION_9_66();
      sub_237EB3ACC(v113, v114, v115, v116, v117, v118, v119, v120, v331, v333, v335, v337, v339);
      *&v473[0] = v111;
      v122 = *(v111 + 16);
      v121 = *(v111 + 24);
      if (v122 >= v121 >> 1)
      {
        v124 = OUTLINED_FUNCTION_7_78(v121);
        sub_237C63650(v124, v122 + 1, 1);
        v12 = v394;
        v111 = *&v473[0];
      }

      ++v110;
      *(v111 + 16) = v122 + 1;
      OUTLINED_FUNCTION_28();
      (*(v8 + 32))(v111 + v123 + *(v8 + 72) * v122);
      v106 = v112;
      if (v112 == v110)
      {
        v368 = v111;
        goto LABEL_32;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:

    sub_237C65484(v12, &qword_27DEAFD00);
    v308 = v362;
LABEL_113:
    v386 = *(v8 + 1008);
    v309 = *(v8 + 992);
    v384 = *(v8 + 952);
    v382 = *(v8 + 936);
    v310 = *(v8 + 792);
    v311 = *(v8 + 768);
    v312 = *(v8 + 760);
    v313 = *(v8 + 688);
    v314 = *(v8 + 680);
    v315 = *(v8 + 672);
    v308(v313, HIDWORD(v367), v315);
    type metadata accessor for LSTMFCN(0);
    sub_237C962B0();
    sub_237EF68C0();
    (*(v314 + 8))(v313, v315);
    sub_237C65484(v382, &qword_27DEAD2C0);
    (*(v309 + 8))(v386, v384);
    v316 = OUTLINED_FUNCTION_18_47();
    v317(v316);

    (*(v311 + 8))(v310, v312);

    v29 = *(v8 + 8);
    goto LABEL_9;
  }

  v368 = MEMORY[0x277D84F90];
LABEL_32:
  v125 = *(v414 + 752);
  v387 = *(v414 + 744);
  v389 = *(v414 + 872);
  v126 = *(v414 + 736);
  v127 = *(v414 + 728);
  v128 = *(v414 + 720);
  v390 = v128;
  v129 = *(v414 + 712);
  v130 = *(v414 + 592);
  v131 = *(v414 + 584);
  v424 = *(v414 + 560);
  v132 = swift_task_alloc();
  v133 = v378[8];
  v134 = *v378;
  *(v132 + 16) = v133;
  *(v132 + 32) = v134;
  v448 = v134;
  v461 = v133;
  *(v132 + 48) = v129;
  *(v132 + 56) = v128;
  *(v132 + 64) = v127;
  *(v132 + 72) = v126;
  *(v132 + 80) = v387;
  *(v132 + 88) = v125;
  *(v132 + 96) = v131;
  *(v132 + 104) = v130;
  v419 = *(&v134 + 1);
  v369 = sub_237C8FFEC(sub_237EB52B4, v132, *(&v134 + 1), v389, MEMORY[0x277D84A98], v130, MEMORY[0x277D84AC0], v135);

  v136 = swift_task_alloc();
  *v136 = v461;
  *(v136 + 16) = v448;
  *(v136 + 32) = v129;
  *(v136 + 40) = v128;
  *(v136 + 48) = v127;
  *(v136 + 56) = v126;
  *(v136 + 64) = v387;
  *(v136 + 72) = v125;
  *(v136 + 80) = v131;
  *(v136 + 88) = v130;
  v137 = swift_getKeyPath();

  v138 = swift_task_alloc();
  *(v138 + 16) = v448;
  *(v138 + 32) = v128;
  *(v138 + 40) = v127;
  *(v138 + 48) = v126;
  *(v138 + 56) = v387;
  *(v138 + 64) = v125;
  *(v138 + 72) = v131;
  *(v138 + 80) = v130;
  *(v138 + 88) = v137;
  v1 = v414;
  v140 = sub_237C8FFEC(sub_237DDE678, v138, v419, *(&v461 + 1), MEMORY[0x277D84A98], v130, MEMORY[0x277D84AC0], v139);

  *(v414 + 504) = v140;
  OUTLINED_FUNCTION_20_49();
  v144 = sub_237EB06EC(v141, v142, v143, v424, v437, v429);

  v145 = *(v144 + 16);
  v379 = v144;
  if (v145)
  {
    v146 = *(v414 + 880);
    v147 = OUTLINED_FUNCTION_15_51(MEMORY[0x277D84F90]);
    sub_237C635F8(v147, v148, v149);
    v150 = 0;
    v392 = *&v473[0];
    while (v150 < *(v144 + 16))
    {
      OUTLINED_FUNCTION_8_86();
      OUTLINED_FUNCTION_9_66();
      sub_237EB3D88(v151, v152, v153, v154, v331, v333, v335, v337, v339);
      v155 = v392;
      *&v473[0] = v392;
      v157 = *(v392 + 16);
      v156 = *(v392 + 24);
      if (v157 >= v156 >> 1)
      {
        v160 = OUTLINED_FUNCTION_7_78(v156);
        sub_237C635F8(v160, v157 + 1, 1);
        v155 = *&v473[0];
      }

      ++v150;
      *(v155 + 16) = v157 + 1;
      OUTLINED_FUNCTION_28();
      v392 = v158;
      (*(v146 + 32))(v158 + v159 + *(v146 + 72) * v157);
      v144 = v379;
      if (v145 == v150)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
    v318 = *(v414 + 1008);
    v319 = *(v414 + 992);
    v320 = *(v414 + 952);
    v321 = *(v414 + 936);
    v433 = *(v414 + 920);
    v426 = *(v414 + 872);
    v456 = *(v414 + 792);
    v322 = *(v414 + 784);
    v323 = *(v414 + 760);
    v442 = *(v414 + 664);
    v413 = *(v414 + 544);

    v324 = *v349;
    (*v349)(v322, v323);
    sub_237C65484(v321, &qword_27DEAD2C0);

    (*(v319 + 8))(v318, v320);
    (*v371)(v433, v426);
    sub_237C5EE40(v413);
    sub_237C65484(v442, &qword_27DEAFD00);

    v324(v456, v323);
    goto LABEL_8;
  }

  v392 = MEMORY[0x277D84F90];
LABEL_40:
  if (!*(v377 + 16))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v161 = *(v414 + 864);
  v162 = *(v414 + 808);
  v163 = *(v414 + 800);
  OUTLINED_FUNCTION_28();
  sub_237C9E294(v165 + v164, v161, &qword_27DEAFD08);
  v166 = sub_237EF7E20();
  (*(v162 + 8))(v161, v163);
  if (!*(v166 + 16))
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v167 = *(v414 + 792);
  v462 = *(v414 + 760);
  v168 = *(v414 + 752);
  v169 = *(v414 + 744);
  v170 = *(v414 + 736);
  v171 = *(v414 + 728);
  v172 = *(v414 + 720);
  v449 = *(v414 + 712);
  v173 = *(v414 + 704);
  v174 = *(v414 + 696);
  v388 = *(v166 + 32);

  v175 = sub_237E5E16C(v47, v173, v171, v168);
  sub_237C93998(v175, v176, v393, v404, v401, v174, v173, v449, v167, v172, v171, v170, v169, v168);
  v177 = (v167 + *(v462 + 84));
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0);
  if (__swift_getEnumTagSinglePayload(v177, 1, v354) != 1)
  {
    *v177 = v30;
    sub_237EF8260();
    sub_237EF8260();
    v178 = sub_237EAF654(v377, v368);

    v467 = v178;
    if ((v385 & 0x8000000000000000) == 0)
    {
      v179 = MEMORY[0x277D2CD48];
      v8 = v414;
      if (!v385)
      {

        HIDWORD(v367) = *v179;
LABEL_112:
        v307 = *(v8 + 680);

        v308 = *(v307 + 104);
        goto LABEL_113;
      }

      v395 = 0;
      if (v391)
      {
        v348 = v177;
        v180 = 0;
        v181 = *(v414 + 680);
        v182 = v181 + 104;
        v183 = (v181 + 8);
        v184 = *(v414 + 808);
        v381 = (v184 + 40);
        v375 = v472;
        v185 = (v184 + 32);
        v372 = (*(v414 + 880) + 8);
        v186 = *(v414 + 768);
        v350 = (v186 + 8);
        v351 = (v186 + 16);
        v398 = *(v414 + 840);
        v400 = v185;
        v344 = v182 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v347 = *(v414 + 760);
        v374 = *(v414 + 648);
        v425 = *(v414 + 616);
        v415 = *(v414 + 608);
        v352 = *(v414 + 552);
        v187 = *MEMORY[0x277D2CD40];
        HIDWORD(v367) = *MEMORY[0x277D2CD48];
        v370 = xmmword_237F08A50;
        v345 = *(v414 + 544);
        v364 = v182;
        v353 = v183;
        HIDWORD(v346) = *MEMORY[0x277D2CD40];
        while (2)
        {
          v409 = *(v8 + 824);
          v450 = *(v8 + 816);
          v438 = *(v8 + 752);
          v430 = *(v8 + 728);
          v420 = *(v8 + 704);
          v188 = *(v8 + 688);
          v189 = *(v414 + 672);
          v365 = v180;
          v355 = v180 + 1;
          v463 = *(v414 + 664);
          sub_237EB543C();
          v363 = *v182;
          (*v182)(v188, v187, v189);
          v190 = type metadata accessor for LSTMFCN(0);
          v359 = sub_237C962B0();
          sub_237EF68C0();
          v191 = v189;
          v1 = v414;
          v357 = *v183;
          (*v183)(v188, v191);
          v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
          v193 = swift_allocObject();
          *(v193 + 16) = v370;
          v194 = v391;
          OUTLINED_FUNCTION_3_100(v193, v195, v196, v197, v198, v199, v200, v201, v332, v334, v336, v338, v340, v341, v342, v343, v344, v345, v346, v347, v348, v350, v351, v352, v353, v354, v355, v357, v359, v190, v363, v364, v365, v367, v368, v369, v370, *(&v370 + 1), v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v383, v385, v388, v389, v390, v391, v392, v393);
          sub_237EF7DE0();
          v383 = v192;
          WitnessTable = swift_allocObject();
          *(WitnessTable + 1) = xmmword_237F04760;
          *(WitnessTable + 4) = v194;
          *(WitnessTable + 5) = sub_237E5E170(v397, v394, v420, v430, v438);
          sub_237EF7DE0();
          sub_237CF7A7C(v409, v450, v463);
          v202 = 0;
          v203 = 0;
          v204 = v467;
          v376 = v467[2];
          v205 = 0.0;
          while (1)
          {
            v206 = v376 >= v203;
            if (v391 > 0)
            {
              v206 = v203 >= v376;
            }

            v390 = v202;
            if (v206)
            {
              break;
            }

            if (__OFADD__(v203, v391))
            {
              v207 = (&v203[v391] >> 63) ^ 0x8000000000000000;
            }

            else
            {
              v207 = &v203[v391];
            }

            v208 = v204[2];
            v451 = v203;
            v209 = __OFSUB__(v208, v203);
            v210 = v208 - v203;
            if (v209)
            {
              __break(1u);
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            if (v210 >= v391)
            {
              v211 = v391;
            }

            else
            {
              v211 = v210;
            }

            v212 = sub_237EF7E20();
            v464 = v211;
            v469 = v211;
            v470 = v388;
            v471 = v393;
            v389 = v207;
            if (*(v212 + 16) == 3)
            {
              v213 = 32;
              while (*(v212 + v213) == *&v468[v213])
              {
                v213 += 8;
                if (v213 == 56)
                {

                  v214 = v211;
                  goto LABEL_64;
                }
              }
            }

            v215 = swift_allocObject();
            *(v215 + 16) = v370;
            v214 = v211;
            OUTLINED_FUNCTION_3_100(v215, v216, v217, v218, v219, v220, v221, v222, v332, v334, v336, v338, v340, v341, v342, v343, v344, v345, v346, v347, v348, v350, v351, v352, v353, v354, v356, v358, v360, v361, v362, v364, v366, v367, v368, v369, v370, *(&v370 + 1), v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v383, v385, v388, v207, v390, v391, v392, v393);
            sub_237EF7DE0();
            v223 = OUTLINED_FUNCTION_18_47();
            v224(v223);
LABEL_64:
            v225 = v1[94];
            v226 = v1[91];
            WitnessTable = v1[88];
            v410 = v1[83];
            v406 = *(v374 + 36);
            v227 = sub_237EF7E20();
            v472[0] = v214;
            v472[1] = sub_237E5E170(v397, v394, WitnessTable, v226, v225);
            if (*(v227 + 16) == 2)
            {
              v228 = 0;
              v229 = 0;
              while (1)
              {
                v230 = v228;
                if (*(v227 + 32 + 8 * v229) != v375[v229])
                {
                  break;
                }

                v228 = 1;
                v229 = 1;
                if (v230)
                {

                  v231 = v464;
                  goto LABEL_70;
                }
              }
            }

            v232 = v1[103];
            v233 = v1[100];
            WitnessTable = v1[94];
            v234 = v1[91];
            v235 = v1[88];

            v236 = swift_allocObject();
            *(v236 + 16) = xmmword_237F04760;
            v231 = v464;
            *(v236 + 32) = v464;
            *(v236 + 40) = sub_237E5E170(v397, v394, v235, v234, WitnessTable);
            sub_237EF7DE0();
            (*v381)(v410 + v406, v232, v233);
LABEL_70:
            v204 = v467;
            if (v231 < 0)
            {
              goto LABEL_123;
            }

            if (v231)
            {
              v237 = 0;
              OUTLINED_FUNCTION_28();
              v402 = v467 + v238;
              while (1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
                v239 = swift_allocObject();
                *(v239 + 16) = xmmword_237F04760;
                v12 = &qword_27DEAF7F8;
                v8 = &unk_237F09CD0;
                v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
                *(v239 + 56) = v240;
                v241 = sub_237C96710(&qword_27DEAF808, &qword_27DEAF7F8);
                *(v239 + 32) = 0;
                *(v239 + 96) = v240;
                *(v239 + 104) = v241;
                *(v239 + 64) = v241;
                *(v239 + 72) = 0;
                if ((v451 & 0x8000000000000000) != 0)
                {
                  break;
                }

                v8 = &v451[v237];
                if (&v451[v237] >= v204[2])
                {
                  goto LABEL_115;
                }

                v242 = v241;
                v439 = v1[83];
                v243 = v1[80];
                v244 = &v402[*(v425 + 72) * v8];
                v245 = OUTLINED_FUNCTION_18_47();
                sub_237C9E294(v245, v246, &qword_27DEAD3A8);
                OUTLINED_FUNCTION_5_94();
                sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0);
                sub_237EF7FA0();

                sub_237C65484(v243, &qword_27DEAD3A8);
                v12 = v439;
                sub_237EF7EA0();
                v1[55] = v240;
                v1[56] = v242;
                v1[52] = 0;
                if (v8 >= v467[2])
                {
                  goto LABEL_116;
                }

                WitnessTable = v467;
                v247 = v1[80];
                sub_237C9E294(v244, v247, &qword_27DEAD3A8);
                sub_237EF7F90();
                sub_237C65484(v247, &qword_27DEAD3A8);
                sub_237EF7EA0();
                __swift_destroy_boxed_opaque_existential_1((v1 + 52));
                ++v237;
                v231 = v464;
                v204 = v467;
                if (v464 == v237)
                {
                  goto LABEL_77;
                }
              }

              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
              goto LABEL_117;
            }

LABEL_77:
            sub_237C9E294(v1[83], v1[82], &qword_27DEAFD00);
            v248 = &v451[v231];
            if (__OFADD__(v451, v231))
            {
              goto LABEL_125;
            }

            WitnessTable = &unk_237F1CD90;
            if (v248 < v451)
            {
              goto LABEL_126;
            }

            if ((v451 & 0x8000000000000000) != 0)
            {
              goto LABEL_127;
            }

            v249 = v204[2];
            if (v249 < v451 || v249 < v248)
            {
              goto LABEL_128;
            }

            if (v248 != v451)
            {
              *&v473[0] = MEMORY[0x277D84F90];
              v8 = v231 & ~(v231 >> 63);
              v251 = *(v425 + 80);
              sub_237EF8260();
              sub_237C62DB0();
              if ((v231 & 0x8000000000000000) == 0)
              {
                v431 = v204 + ((v251 + 32) & ~v251);
                v12 = *&v473[0];
                v252 = v451;
                v253 = v464;
                while (v253)
                {
                  v465 = v253;
                  v254 = v1[100];
                  v255 = v1[80];
                  v256 = v1[79];
                  v257 = v1[78];
                  v452 = v252;
                  sub_237C9E294(v431 + *(v425 + 72) * v252, v255, &qword_27DEAD3A8);
                  sub_237C9E294(v255, v256, &qword_27DEAD3A8);
                  v258 = *(v398 + 48);
                  v259 = v12;
                  v260 = *(v256 + v258);
                  v261 = *(v415 + 48);
                  v262 = *v400;
                  (*v400)(v257, v256, v254);
                  v440 = v260;
                  *(v257 + v258) = v260;
                  v12 = v259;
                  v262(v257 + v261, v256 + v261, v254);
                  WitnessTable = &unk_237F1CD90;
                  sub_237C65484(v257, &qword_27DEAD3A8);
                  sub_237C65484(v255, &qword_27DEAD3A8);
                  *&v473[0] = v259;
                  v8 = v259[2];
                  v263 = v259[3];
                  if (v8 >= v263 >> 1)
                  {
                    OUTLINED_FUNCTION_7_78(v263);
                    sub_237C62DB0();
                    v12 = *&v473[0];
                  }

                  v12[2] = v8 + 1;
                  v12[v8 + 4] = v440;
                  v252 = v452 + 1;
                  v253 = v465 - 1;
                  v1 = v414;
                  v204 = v467;
                  if (v465 == 1)
                  {

                    goto LABEL_92;
                  }
                }

LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              __break(1u);
              goto LABEL_131;
            }

LABEL_92:
            v264 = v1[82];
            sub_237EB07AC(v1[99]);

            sub_237C65484(v264, &qword_27DEAFD00);
            sub_237EF6A90();
            v265 = OUTLINED_FUNCTION_49_2();
            v266(v265);
            v205 = v205 + *(v1 + 258);
            v203 = v389;
            v202 = v390 + 1;
            if (__OFADD__(v390, 1))
            {
              goto LABEL_129;
            }
          }

          if (__swift_getEnumTagSinglePayload(v348, 1, v354) == 1)
          {
            goto LABEL_137;
          }

          v267 = v1[99];
          *v348 = v30 * powf(v46, v366);
          v268 = *(v347 + 108);
          v269 = *(v267 + v268);
          v209 = __OFADD__(v269, 1);
          v270 = v269 + 1;
          v271 = v364;
          v272 = v395;
          if (v209)
          {
            goto LABEL_135;
          }

          *(v267 + v268) = v270;
          v273 = v353;
          v466 = *(v369 + 16);
          if (v466)
          {
            v274 = *(v414 + 792);
            v441 = v378[9];
            v453 = v378[8];
            v432 = v378[10];
            v403 = *v378;
            v407 = v378[1];
            v411 = v378[11];
            v362(*(v414 + 688), HIDWORD(v367), *(v414 + 672));
            sub_237EF68C0();
            v275 = OUTLINED_FUNCTION_49_2();
            v358(v275);
            v276 = swift_task_alloc();
            *(v276 + 16) = v453;
            *(v276 + 32) = v403;
            *(v276 + 48) = v441;
            *(v276 + 64) = v432;
            *(v276 + 80) = v411;
            *(v276 + 96) = v407;
            *(v276 + 112) = v274;
            sub_237EF8260();
            sub_237EF8260();
            sub_237EAFEA4(v369, v392, sub_237EB5634, v276);
            v278 = v277;

            v279 = sub_237EB0898(v278);
            LOBYTE(v276) = v280;

            if (v276)
            {
              goto LABEL_139;
            }

            sub_237D0FC4C(v366, *&v279);
            v271 = v364;
          }

          else
          {
            v281 = 0;
            v279 = 0;
          }

          if (v373)
          {
            v408 = v279;
            v412 = v281;
            v282 = *(v414 + 920);
            v454 = *(v414 + 872);
            v283 = *(v414 + 688);
            v284 = *(v414 + 672);
            v362(v283, HIDWORD(v367), v284);

            sub_237EF68C0();
            (v358)(v283, v284);
            v285 = *v351;
            v286 = OUTLINED_FUNCTION_18_47();
            v285(v286);
            v287 = OUTLINED_FUNCTION_49_2();
            sub_237C9E294(v287, v288, &qword_27DEAD2C0);
            if (__swift_getEnumTagSinglePayload(v282, 1, v454) == 1)
            {
              goto LABEL_138;
            }

            sub_237C9498C();
            v289 = *(v414 + 920);
            v290 = *(v414 + 872);
            v291 = *v350;
            (*v350)(*(v414 + 784), *(v414 + 760));
            (*v372)(v289, v290);
            v292 = v473[1];
            *(v414 + 368) = v473[0];
            *(v414 + 384) = v292;
            *(v414 + 400) = v473[2];
            if (v466)
            {
              v293 = *(v414 + 760);
              (v285)(*(v414 + 776), *(v414 + 792), v293);
              sub_237C94DB4(v369, v379, v293, v294, v295, v296, v297, v298, v332, v334, SHIDWORD(v334));
              v291(*(v414 + 776), *(v414 + 760));
              v299 = v473[1];
              *(v414 + 320) = v473[0];
              *(v414 + 336) = v299;
              *(v414 + 352) = v473[2];
              sub_237CAFFF0();
              v301 = v300;
              sub_237C65484(v414 + 320, qword_27DEB6580);
              v455 = v301;
            }

            else
            {
              v455 = 0;
            }

            v302 = v205 / v390;
            v303 = *(v414 + 544);
            memcpy(v473, (v414 + 16), sizeof(v473));
            v304 = *(v267 + v268);
            sub_237CAFFF0();
            v306 = v305;
            sub_237C65484(v414 + 368, qword_27DEB6580);

            sub_237EB41BC(v304, v408, v466 == 0, v455, v466 == 0, v345, v302, v306);
            sub_237C5EE40(v303);
            sub_237C5EE40(v303);
            v272 = 0;
            v8 = v414;
            v271 = v364;
            v273 = v353;
            v281 = v412;
          }

          else
          {
            v8 = v414;
          }

          v12 = *(v8 + 664);
          if ((v281 & 1) == 0)
          {
            v395 = v272;
            v182 = v271;
            sub_237C65484(v12, &qword_27DEAFD00);
            v180 = v356;
            v183 = v273;
            v187 = HIDWORD(v346);
            if (v356 != v385)
            {
              continue;
            }

            goto LABEL_112;
          }

          goto LABEL_120;
        }
      }

      goto LABEL_134;
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_237EB3A64(uint64_t a1, uint64_t a2)
{
  sub_237EF7E90();
  result = sub_237EF7E20();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 40);

    return v4 != a2;
  }

  return result;
}

uint64_t sub_237EB3ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_237F03530;
  *(v16 + 32) = sub_237E5E170(a2, a3, a5, a10, a13);
  sub_237EF8260();
  sub_237EF7DE0();
}

uint64_t sub_237EB3BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v6 = sub_237EF7E90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = sub_237EF6B10();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  sub_237D4A7B4(v9, a2, v14);
  sub_237EF6950();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_237EB3D88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a3;
  v20[1] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v20 - v12;
  v14 = sub_237EF6B10();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237E5E170(a1, a2, v20[0], a6, a9);
  v18 = sub_237EF64B0();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
  sub_237EF6990();
  sub_237EF6950();
  return (*(v15 + 8))(v17, v14);
}

double sub_237EB3F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for LSTMFCN(0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237EF6B10();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  sub_237C96128(a3, v9);
  sub_237C962B0();
  sub_237EF6830();
  sub_237C96378(v9);
  v17 = *MEMORY[0x277D2CD58];
  v18 = sub_237EF64D0();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
  sub_237EF6570();
  sub_237C65484(v6, &qword_27DEB24C8);
  sub_237EF6A90();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v19(v16, v10);
  return v21[3];
}

uint64_t sub_237EB41BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, void (*a6)(void *), double a7, double a8)
{
  v15 = *(v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F04760;
  strcpy((inited + 32), "training_loss");
  *(inited + 46) = -4864;
  v17 = MEMORY[0x277D839F8];
  *(inited + 48) = a7;
  *(inited + 72) = v17;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000237EFB8A0;
  *(inited + 120) = v17;
  *(inited + 96) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
  sub_237C758C4();
  v25 = sub_237EF8230();
  if ((a3 & 1) == 0)
  {
    v22 = v17;
    v21[0] = a2;
    sub_237E60F7C(v21, 0x69746164696C6176, 0xEF73736F6C5F6E6FLL);
  }

  if ((a5 & 1) == 0)
  {
    v22 = v17;
    v21[0] = a4;
    sub_237E60F7C(v21, 0xD000000000000013, 0x8000000237EFDDD0);
  }

  v21[0] = 0xD000000000000014;
  v21[1] = 0x8000000237F1DCE0;
  v21[2] = a1;
  v22 = v15;
  v23 = 0;
  v24 = v25;
  a6(v21);
}

uint64_t sub_237EB439C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, _DWORD *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237E5E354();
  if (v16)
  {
    (*(v12 + 16))(v14, a1, a2);
    v17 = sub_237EF85D0();
    v19 = v18;
    sub_237C84150();
    v20 = swift_allocError();
    *v21 = 0xD000000000000014;
    *(v21 + 8) = 0x8000000237F1DCE0;
    *(v21 + 16) = v17;
    *(v21 + 24) = v19;
    *(v21 + 32) = 3;
    result = swift_willThrow();
    *a9 = v20;
    return result;
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EB451C@<X0>(uint64_t *a1@<X8>)
{
  sub_237EF7E90();
  result = sub_237EF7E20();
  *a1 = result;
  return result;
}

unint64_t sub_237EB455C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_237C842E0(*a2, *a1);
  *a3 = result;
  return result;
}

uint64_t sub_237EB4590(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  sub_237E6A2DC();
  v6 = *a2;
  v7 = sub_237E6A31C(v4, *a2);
  *(v6 + 8 * v4 + 32) = v5;
  return nullsub_1(v7, v8);
}

uint64_t sub_237EB45E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a3;
  v25 = a2;
  sub_237EF7E90();
  result = sub_237EF7E20();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = a4;
  v15 = *(result + 32);

  result = sub_237EF7E20();
  if (*(result + 16) < 2uLL)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = a5;
  v16 = *(result + 40);

  if (!__OFSUB__(a1, v15))
  {
    v21 = a6;
    v20[1] = a9;
    v20[2] = a10;
    v22 = a1 - v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v17 = swift_allocObject();
    v20[3] = v20;
    *(v17 + 16) = xmmword_237F04760;
    *(v17 + 32) = a1;
    *(v17 + 40) = v16;
    v18 = MEMORY[0x28223BE20](v17);
    MEMORY[0x28223BE20](v18);
    sub_237EF8260();
    v19 = v21;
    sub_237EF7DE0();

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08);
    *(v19 + *(result + 48)) = v22;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237EB47F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_237EF7E90();
  swift_getWitnessTable();
  result = sub_237D14E4C();
  if (a8 < a6)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a6 == a8)
  {
    return result;
  }

  if ((a7 & 0x8000000000000000) == 0)
  {
    v23 = a8;
    while (a6 < a8)
    {
      if (a7)
      {
        v14 = 0;
        while (2)
        {
          v15 = v14++;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
          result = swift_initStackObject();
          v16 = 0;
          *(result + 16) = xmmword_237F04760;
          *(result + 32) = a6;
          *(result + 40) = v15;
          v17 = *(a4 + 16);
          v18 = 32;
          while (v18 != 48 && v17)
          {
            v19 = *(result + v18);
            v20 = *(a4 + v18);
            v21 = v19 * v20;
            if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            v18 += 8;
            --v17;
            v22 = __OFADD__(v16, v21);
            v16 += v21;
            if (v22)
            {
              goto LABEL_19;
            }
          }

          *(a1 + 4 * v16) = 0;
          if (v14 != a7)
          {
            continue;
          }

          break;
        }
      }

      ++a6;
      a8 = v23;
      if (a6 == v23)
      {
        return result;
      }
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_237EB49D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = MEMORY[0x28223BE20](a1);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v39 = v24;
  v40 = v22;
  v41 = result;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  if (!v20)
  {
    return result;
  }

  if (a6 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v25 = 0;
  v38 = a15;
  v37 = a14;
  v34 = a10;
  v46 = xmmword_237F04760;
  v35 = v20;
  v36 = v21;
  do
  {
    v45 = v25;
    v26 = v34;
    if (a6)
    {
      v27 = 0;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        inited = swift_initStackObject();
        *(inited + 16) = v46;
        v29 = v45;
        *(inited + 32) = v45;
        *(inited + 40) = v27;
        v30 = swift_initStackObject();
        *(v30 + 16) = v46;
        *(v30 + 32) = v29;
        *(v30 + 40) = v27;
        sub_237D16AC4();
        swift_setDeallocating();
        sub_237CE3484();
        sub_237EF8190();
        v31 = v47;
        v32 = sub_237D166DC(inited, v26);
        result = swift_setDeallocating();
        *(v36 + 4 * v32) = v31;
        ++v27;
      }

      while (a6 != v27);
    }

    v25 = v45 + 1;
  }

  while (v45 + 1 != v35);
  return result;
}

uint64_t sub_237EB4C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a1;
  v34 = a2;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v29 = sub_237EF6B10();
  v40 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE528);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v30 = *(v17 + 56);
  v35 = *(v11 + 16);
  v35(v13, a2, v10);
  v33 = sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0);
  v32 = sub_237D4AD7C;
  sub_237EF7F00();
  v31 = *(v11 + 8);
  v31(v13, v10);
  v20 = sub_237EF6720();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v20);
  sub_237CD67F4();
  sub_237C65484(v9, &qword_27DEAE3B8);
  v21 = *(v40 + 8);
  v40 += 8;
  v22 = v29;
  v21(v15, v29);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD00);
  v35(v13, v34 + *(v23 + 36), v10);
  sub_237EF7F00();
  v31(v13, v10);
  v24 = *MEMORY[0x277D2CD58];
  v25 = sub_237EF64D0();
  v26 = v38;
  (*(*(v25 - 8) + 104))(v38, v24, v25);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  sub_237EF6570();
  sub_237C65484(v26, &qword_27DEB24C8);
  v21(v15, v22);
  return sub_237C65484(v19, &qword_27DEAE528);
}

uint64_t sub_237EB5094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C606BC;

  return TimeSeriesClassifier.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237EB5174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C5FFA4;

  return TimeSeriesClassifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v18, a6, a7);
}

void sub_237EB52FC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v14 = 0;
      MEMORY[0x2383E2E10](&v14, 8);
      v5 = (v14 * v2) >> 64;
      if (v2 > v14 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v14 * v2)
        {
          do
          {
            v14 = 0;
            MEMORY[0x2383E2E10](&v14, 8);
          }

          while (v6 > v14 * v2);
          v5 = (v14 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = *(v1 + 32 + 8 * v4);
        v10 = *(v1 + 32 + 8 * v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E6439C();
          v1 = v11;
        }

        v12 = *(v1 + 16);
        if (v4 >= v12)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + 8 * v4) = v10;
        if (v7 >= v12)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + 8 * v7) = v9;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_237EB543C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (v6 >= 2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_22:
      sub_237E642D8();
      v5 = v16;
    }

    v8 = 0;
    do
    {
      v18 = 0;
      MEMORY[0x2383E2E10](&v18, 8);
      v9 = (v18 * v6) >> 64;
      if (v6 > v18 * v6)
      {
        v10 = -v6 % v6;
        if (v10 > v18 * v6)
        {
          do
          {
            v18 = 0;
            MEMORY[0x2383E2E10](&v18, 8);
          }

          while (v10 > v18 * v6);
          v9 = (v18 * v6) >> 64;
        }
      }

      v11 = v8 + v9;
      if (__OFADD__(v8, v9))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v8 != v11)
      {
        v12 = *(v5 + 16);
        if (v8 >= v12)
        {
          goto LABEL_19;
        }

        v13 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
        v14 = *(v2 + 72);
        sub_237C9E294(v13 + v14 * v8, v4, &qword_27DEAD3A8);
        if (v11 >= v12)
        {
          goto LABEL_20;
        }

        sub_237EB5770(v13 + v14 * v11, v13 + v14 * v8);
        if (v11 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        sub_237EB57E0(v4, v13 + v14 * v11);
      }

      ++v8;
    }

    while (v6-- > 2);
    *v17 = v5;
  }
}

uint64_t sub_237EB5688()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EB56C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_237EB5704(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_237EB5770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_237EB57E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_3_100(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  result[4] = v56;
  result[5] = a51;
  result[6] = a56;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_68(unint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 6;
  STACK[0x250] = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_17_57()
{

  return swift_task_alloc();
}

uint64_t RobustScaler.quantileRange.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t RobustScaler.quantileRange.setter(uint64_t a1)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}