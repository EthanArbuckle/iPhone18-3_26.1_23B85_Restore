void sub_183FCDAE4(void **a1, uint64_t **a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void, uint64_t *, __n128))
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  type metadata accessor for CFError(0);
  sub_183FCE950(&qword_1EA854BB0, type metadata accessor for CFError);
  v8 = swift_allocError();
  *v9 = v5;
  v10 = v5;
  v11 = sub_18438FB98();
  v12 = v11;
  v13 = *v6;
  v14 = *(v6 + 8);
  v15 = *(v6 + 9);
  v16.n128_u32[0] = *(v6 + 3);
  v18 = v7;
  if (v15)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  a4(v11, v13, v17 | v14, &v18, v16);
}

void sub_183FCDBE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t _CGContextInit<>.init(width:height:auxiliaryInfo:onResolve:)(size_t a1, size_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  if (*a3 == 5)
  {
    v13 = 0;
    if (a4)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = a4;
      *(v14 + 24) = a5;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_183FCE9B0;
      *(v15 + 24) = v14;
      v21[4] = sub_183FCE9C4;
      v21[5] = v15;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_183FCDA2C;
      v21[3] = &block_descriptor_40;
      v16 = _Block_copy(v21);

      goto LABEL_6;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18439C350;
    *(inited + 32) = @"kCGAdaptiveMaximumBitDepth";
    *(inited + 40) = v12;
    v18 = @"kCGAdaptiveMaximumBitDepth";
    sub_183FCE438(inited);
    swift_setDeallocating();
    sub_183FCE528(inited + 32);
    type metadata accessor for CFString(0);
    sub_183FCE950(&qword_1EA8541E0, type metadata accessor for CFString);
    v13 = sub_18438FC18();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  Adaptive = CGBitmapContextCreateAdaptive(a1, a2, v13, v16, 0, 0, 0, a8);
  sub_183F742A0(a4);
  _Block_release(v16);

  if (Adaptive)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    return 0;
  }
}

uint64_t CGContextRef.AuxiliaryInfo.hashValue.getter()
{
  sub_1843902E8();
  sub_184390318();
  return sub_184390348();
}

uint64_t sub_183FCDF70@<X0>(size_t a1@<X0>, size_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = _CGContextInit<>.init(width:height:auxiliaryInfo:onResolve:onAllocate:onRelease:onError:)(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
  *a9 = result;
  return result;
}

uint64_t sub_183FCDFB0@<X0>(size_t a1@<X0>, size_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  result = _CGContextInit<>.init(width:height:auxiliaryInfo:onResolve:)(a1, a2, a3, a4, a5, a6, a7, a8);
  *a9 = result;
  return result;
}

void CGContextRef.contentToneMappingInfo.getter(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  ContentToneMappingInfo = CGContextGetContentToneMappingInfo(v8, a1, a2, a3, a4, a5, a6, a7);
  if (v10)
  {
    v12 = v10;
    v13 = v10;
    v10 = v12;
  }

  sub_183F875C0(ContentToneMappingInfo, v10, a8);
}

double sub_183FCE034@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  ContentToneMappingInfo = CGContextGetContentToneMappingInfo(*a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    v12 = v10;
    v13 = v10;
    v10 = v12;
  }

  sub_183F875C0(ContentToneMappingInfo, v10, &v17);
  v14 = v18;
  v15 = v19;
  result = *&v17;
  *a9 = v17;
  *(a9 + 20) = v15;
  *(a9 + 16) = v14;
  return result;
}

void sub_183FCE0A4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 20) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v3 = 3;
    }

    else if (v3 == 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  v9 = sub_183F87038();
  CGContextSetContentToneMappingInfo(v2, v3, v9, v4, v5, v6, v7, v8);
}

void CGContextRef.contentToneMappingInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 20) >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v2 = 3;
    }

    else if (v2 == 4)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  v8 = sub_183F87038();
  CGContextSetContentToneMappingInfo(v1, v2, v8, v3, v4, v5, v6, v7);
}

void (*CGContextRef.contentToneMappingInfo.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(__int128 *a1, char a2)
{
  *(a1 + 24) = v8;
  ContentToneMappingInfo = CGContextGetContentToneMappingInfo(v8, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    v12 = v10;
    v13 = v10;
    v10 = v12;
  }

  sub_183F875C0(ContentToneMappingInfo, v10, a1);
  return sub_183FCE2E4;
}

void sub_183FCE2E4(__int128 *a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 4);
    v3 = *(a1 + 20);
    v4 = *a1;
    v6 = v3;
    v5 = v2;
    a1 = &v4;
  }

  CGContextRef.contentToneMappingInfo.setter(a1);
}

unint64_t sub_183FCE330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8544A8);
    v3 = sub_184390158();
    v4 = a1 + 32;

    while (1)
    {
      sub_183FCE8E0(v4, &v11);
      v5 = v11;
      result = sub_183F87EF4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_183F89274(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_183FCE438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854BB8);
    v3 = sub_184390158();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_183F87EF4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 4 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_183FCE528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_183FCE5B4(id *a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  a3.n128_u32[0] = *(*a2 + 12);
  (*(v3 + 16))(a3);
}

uint64_t sub_183FCE62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

uint64_t sub_183FCE670@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v6 = *(v4 + 16);
  v7 = *a1;
  v8 = **a1;
  v9 = *(v7 + 8);
  v10 = *(v7 + 9);
  a4.n128_u32[0] = *(v7 + 3);
  v13 = *a2;
  if (v10)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  result = v6(v8, v11 | v9, &v13, a4);
  *a3 = result;
  return result;
}

uint64_t sub_183FCE6D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_183FCE724@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>, __n128 a4@<Q0>)
{
  v6 = *(v4 + 16);
  v7 = *a1;
  v12 = *a2;
  v8 = *v7;
  v9 = *(v7 + 8);
  a4.n128_u32[0] = *(v7 + 3);
  if (*(v7 + 9))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  result = v6(v8, v10 | v9, &v12, a4);
  *a3 = result & 1;
  return result;
}

uint64_t sub_183FCE790(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

unint64_t sub_183FCE7D8()
{
  result = qword_1EA854BA0;
  if (!qword_1EA854BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854BA0);
  }

  return result;
}

uint64_t _s13AuxiliaryInfoVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13AuxiliaryInfoVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_183FCE8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_183FCE950(unint64_t *a1, void (*a2)(uint64_t))
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

void gpc_free_polygon(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 16);
    v5 = 8;
    do
    {
      v6 = *(v4 + v5);
      if (v6)
      {
        free(v6);
        v4 = *(a1 + 16);
        *(v4 + v5) = 0;
        v2 = *a1;
      }

      ++v3;
      v5 += 16;
    }

    while (v3 < v2);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    free(v7);
    *(a1 + 8) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    free(v8);
    *(a1 + 16) = 0;
  }

  *a1 = 0;
}

void gpc_add_contour(int *a1, int *a2)
{
  if (*a1 == -1)
  {
    v4 = 0;
    v5 = 0;
LABEL_5:
    LODWORD(v6) = -1;
LABEL_6:
    v6 = v6;
    goto LABEL_7;
  }

  v5 = malloc_type_malloc(4 * (*a1 + 1), 0x100004052888210uLL);
  if (*a1 == -1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v15 = malloc_type_malloc(16 * (*a1 + 1), 0x1020040D5A9D86FuLL);
  v4 = v15;
  LODWORD(v6) = *a1;
  if (*a1 <= 0)
  {
    goto LABEL_6;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(a1 + 2);
    v5[v17] = *(*(a1 + 1) + 4 * v17);
    *&v15[v16] = *(v18 + v16);
    ++v17;
    v6 = *a1;
    v16 += 16;
  }

  while (v17 < v6);
LABEL_7:
  v5[v6] = 0;
  v7 = *a2;
  v8 = &v4[16 * v6];
  *v8 = v7;
  if (v7)
  {
    v9 = malloc_type_malloc(16 * v7, 0x1000040451B5BE8uLL);
    v10 = *a2;
    *(v8 + 1) = v9;
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        *(*(v8 + 1) + v11) = *(*(a2 + 1) + v11);
        ++v12;
        v11 += 16;
      }

      while (v12 < *a2);
    }
  }

  else
  {
    *(v8 + 1) = 0;
  }

  v13 = *(a1 + 2);
  if (v13)
  {
    free(v13);
    *(a1 + 2) = 0;
  }

  v14 = *(a1 + 1);
  if (v14)
  {
    free(v14);
  }

  ++*a1;
  *(a1 + 1) = v5;
  *(a1 + 2) = v4;
}

double *build_lmt(double **a1, double **a2, _DWORD *a3, unsigned int *a4, int a5)
{
  v5 = *a4;
  if (v5 < 1)
  {
    return 0;
  }

  v7 = a4;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = (*(a4 + 2) + 16 * v10);
    v13 = *v12;
    v14 = 0;
    v15 = *v12 - 1;
    if (*v12 >= 1)
    {
      v16 = v12[1];
      v17 = v13 & 0x7FFFFFFF;
      v18 = (v16 + 8);
      v19 = 1;
      do
      {
        if (*(v16 + 16 * ((v15 + v19 - 1) % v13) + 8) != *v18)
        {
          goto LABEL_9;
        }

        v20 = v19;
        if (v17 == 1)
        {
          v20 = 0;
        }

        if (*(v16 + 16 * v20 + 8) != *v18)
        {
LABEL_9:
          ++v14;
        }

        ++v19;
        v18 += 2;
        --v17;
      }

      while (v17);
    }

    v11 += v14;
    ++v10;
  }

  while (v10 != v5);
  if (v11)
  {
    v21 = malloc_type_malloc(168 * v11, 0x102004014AE800DuLL);
    if (*v7 < 1)
    {
      return v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0uLL;
  v86 = a3;
  v87 = v7;
  do
  {
    v25 = *(v7 + 2);
    v26 = (v25 + 16 * v22);
    LODWORD(v27) = *v26;
    v89 = v23;
    if ((*v26 & 0x80000000) != 0)
    {
      *v26 = -v27;
    }

    else if (v27)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        v30 = *(v25 + 16 * v22 + 8);
        v31 = *(v30 + 16 * v28 + 8);
        if (*(v30 + 16 * ((v28 + v27 - 1) % v27) + 8) == v31 && *(v30 + 16 * ((v28 + 1) % v27) + 8) == v31)
        {
          ++v28;
        }

        else
        {
          v32 = &v21[21 * v29];
          *v32 = *(v30 + 16 * v28);
          v32[1] = v31;
          v33 = *a2;
          v34 = a2;
          if (*a2)
          {
            do
            {
              v35 = v33;
              if (*v33 <= v31)
              {
                if (*v33 >= v31)
                {
                  goto LABEL_31;
                }

                v36 = 2;
              }

              else
              {
                v36 = 1;
              }

              v33 = *&v33[v36];
            }

            while (v33);
            v34 = &v35[v36];
          }

          v37 = malloc_type_malloc(0x18uLL, 0x102004023CB03E4uLL);
          v24 = 0uLL;
          *v34 = v37;
          *v37 = v31;
          v37[1] = 0.0;
          (*v34)[2] = 0.0;
          ++*a3;
          v25 = *(v7 + 2);
LABEL_31:
          ++v29;
          ++v28;
        }

        v27 = *(v25 + 16 * v22);
      }

      while (v28 < v27);
      v38 = v29 - 1;
      if (v29 >= 1)
      {
        v39 = 0;
        do
        {
          v40 = v39;
          v41 = v21[21 * ((v38 + v39) % v29) + 1];
          v42 = v21[21 * v39++ + 1];
          if (v41 >= v42)
          {
            v43 = v39 == v29 ? 0 : v39;
            v44 = v21[21 * v43 + 1];
            if (v44 > v42)
            {
              v45 = 0;
              v46 = 1;
              do
              {
                v47 = v46;
                v43 = (v43 + 1) % v29;
                ++v45;
                ++v46;
                v58 = v21[21 * v43 + 1] <= v44;
                v44 = v21[21 * v43 + 1];
              }

              while (!v58);
              v48 = 0;
              v49 = 0;
              v50 = &v21[21 * v89];
              *(v50 + 26) = 0;
              *(v50 + 21) = 0;
              *(v50 + 22) = 0;
              v51 = &v21[21 * v40];
              v53 = *v51;
              v52 = v51[1];
              do
              {
                v40 = (v40 + 1) % v29;
                v54 = &v50[v48];
                v54[6] = v53;
                v54[2] = v53;
                v54[3] = v52;
                v55 = &v21[21 * v40];
                v56 = *v55;
                v57 = v55[1];
                v54[4] = *v55;
                v54[5] = v57;
                v54[8] = (v56 - v53) / (v57 - v52);
                v58 = v49 < v45 - 1 && v45 > 1;
                *(v54 + 18) = a5;
                v59 = v54 + 21;
                if (!v58)
                {
                  v59 = 0;
                }

                *(v54 + 7) = v24;
                *(v54 + 8) = v24;
                v60 = v54 - 21;
                if (!(v48 * 8))
                {
                  v60 = 0;
                }

                *(v54 + 18) = v60;
                *(v54 + 19) = v59;
                v54[20] = 0.0;
                ++v49;
                *(v54 + 23) = 0;
                *(v54 + 24) = 0;
                v48 += 21;
                v52 = v57;
                v53 = v56;
                --v47;
              }

              while (v47);
              v89 += v45;
              v61 = bound_list(a1, v42);
              insert_bound(v61, v50);
              v24 = 0uLL;
            }
          }
        }

        while (v39 != v29);
        v62 = 0;
        do
        {
          v63 = (v38 + v62) % v29;
          v64 = v21[21 * v63 + 1];
          v65 = v21[21 * v62 + 1];
          v66 = v62 + 1;
          if (v64 > v65)
          {
            v67 = v66 == v29 ? 0 : v62 + 1;
            if (v21[21 * v67 + 1] >= v65)
            {
              v68 = 0;
              v69 = 1;
              do
              {
                v70 = v69;
                v63 = (v38 + v63) % v29;
                ++v68;
                ++v69;
                v58 = v21[21 * v63 + 1] <= v64;
                v64 = v21[21 * v63 + 1];
              }

              while (!v58);
              v71 = 0;
              v72 = 0;
              v73 = &v21[21 * v89];
              *(v73 + 26) = 0;
              *(v73 + 21) = 0;
              *(v73 + 22) = 0;
              v74 = &v21[21 * v62];
              v76 = *v74;
              v75 = v74[1];
              do
              {
                LODWORD(v62) = (v38 + v62) % v29;
                v77 = &v73[v71];
                v77[6] = v76;
                v77[2] = v76;
                v77[3] = v75;
                v78 = &v21[21 * v62];
                v79 = *v78;
                v80 = v78[1];
                v77[4] = *v78;
                v77[5] = v80;
                v77[8] = (v79 - v76) / (v80 - v75);
                v81 = v72 < v68 - 1 && v68 > 1;
                *(v77 + 18) = a5;
                v82 = v77 + 21;
                if (!v81)
                {
                  v82 = 0;
                }

                *(v77 + 7) = v24;
                *(v77 + 8) = v24;
                v83 = v77 - 21;
                if (!(v71 * 8))
                {
                  v83 = 0;
                }

                *(v77 + 18) = v83;
                *(v77 + 19) = v82;
                v77[20] = 0.0;
                ++v72;
                *(v77 + 23) = 0;
                *(v77 + 24) = 0;
                v71 += 21;
                v75 = v80;
                v76 = v79;
                --v70;
              }

              while (v70);
              v89 += v68;
              v84 = bound_list(a1, v65);
              insert_bound(v84, v73);
              v24 = 0uLL;
            }
          }

          v62 = v66;
        }

        while (v66 != v29);
      }
    }

    ++v22;
    a3 = v86;
    v7 = v87;
    v23 = v89;
  }

  while (v22 < *v87);
  return v21;
}

double build_sbt(int *a1, uint64_t a2, uint64_t a3)
{
  do
  {
    if (*(a3 + 8))
    {
      build_sbt(a1, a2);
    }

    result = *a3;
    v7 = *a1;
    *(a2 + 8 * v7) = *a3;
    *a1 = v7 + 1;
    a3 = *(a3 + 16);
  }

  while (a3);
  return result;
}

void free_sbtree(void **a1)
{
  if (*a1)
  {
    free_sbtree(*a1 + 8);
    free_sbtree(*a1 + 16);
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }
  }
}

double *add_local_min(void **a1, uint64_t a2, double a3, double a4)
{
  v8 = *a1;
  *a1 = malloc_type_malloc(0x28uLL, 0x10200402FC4DB2FuLL);
  result = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  *result = a3;
  result[1] = a4;
  result[2] = 0.0;
  v10 = *a1;
  *v10 = 1;
  v10[3] = v8;
  v10[4] = v10;
  *(*a1 + 1) = result;
  *(*a1 + 2) = result;
  *(a2 + 112) = *a1;
  return result;
}

uint64_t merge_right(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      v3 = *(a2 + 32);
      *(v3 + 4) = 0;
      v4 = *(result + 32);
      if (v4 != v3)
      {
        *(*(v3 + 16) + 16) = *(v4 + 8);
        *(v3 + 16) = *(v4 + 16);
        if (a3)
        {
          v5 = *(result + 32);
          do
          {
            if (*(a3 + 32) == v5)
            {
              *a3 = 0;
              *(a3 + 32) = *(a2 + 32);
            }

            a3 = *(a3 + 24);
          }

          while (a3);
        }
      }
    }
  }

  return result;
}

uint64_t merge_left(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      v3 = *(a2 + 32);
      *(v3 + 4) = 1;
      v4 = *(result + 32);
      if (v4 != v3)
      {
        *(*(v4 + 16) + 16) = *(v3 + 8);
        *(v3 + 8) = *(v4 + 8);
        if (a3)
        {
          v5 = *(result + 32);
          do
          {
            if (*(a3 + 32) == v5)
            {
              *a3 = 0;
              *(a3 + 32) = *(a2 + 32);
            }

            a3 = *(a3 + 24);
          }

          while (a3);
        }
      }
    }
  }

  return result;
}

double *bound_list(double **a1, double a2)
{
  v3 = a1;
  v4 = *a1;
  if (*a1 && (v5 = *v4, *v4 <= a2))
  {
    while (1)
    {
      v6 = v4;
      if (v5 >= a2)
      {
        break;
      }

      v4 = *(v4 + 2);
      if (v4)
      {
        v5 = *v4;
        if (*v4 <= a2)
        {
          continue;
        }
      }

      v3 = (v6 + 2);
      goto LABEL_7;
    }
  }

  else
  {
LABEL_7:
    v7 = malloc_type_malloc(0x18uLL, 0x102004023CB03E4uLL);
    *v3 = v7;
    *v7 = a2;
    v7[1] = 0.0;
    *(*v3 + 2) = v4;
    v6 = *v3;
  }

  return v6 + 1;
}

uint64_t *insert_bound(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(a2 + 16);
    while (1)
    {
      v4 = *(v2 + 16);
      if (v3 < v4 || v3 == v4 && *(a2 + 64) < *(v2 + 64))
      {
        break;
      }

      result = (v2 + 160);
      v2 = *(v2 + 160);
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    *result = a2;
    *(a2 + 160) = v2;
  }

  else
  {
LABEL_7:
    *result = a2;
  }

  return result;
}

char *create_contour_bboxes(int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  result = malloc_type_malloc(32 * v1, 0x1000040E0EAB150uLL);
  v4 = *a1;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 2);
    v7 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    do
    {
      v9 = &result[32 * v5];
      *v9 = v7;
      v9[1] = v8;
      v10 = (v6 + 16 * v5);
      v11 = *v10;
      if (v11 >= 1)
      {
        v12 = (*(v10 + 1) + 8);
        v13 = 1.79769313e308;
        v14 = -1.79769313e308;
        v15 = -1.79769313e308;
        v16 = 1.79769313e308;
        do
        {
          v17 = *(v12 - 1);
          if (v17 < v16)
          {
            *v9->i64 = v17;
            v16 = v17;
          }

          v18 = *v12;
          if (*v12 < v13)
          {
            *&v9->i64[1] = v18;
            v13 = v18;
          }

          if (v17 > v15)
          {
            *v9[1].i64 = v17;
            v15 = v17;
          }

          if (v18 > v14)
          {
            *&v9[1].i64[1] = v18;
            v14 = v18;
          }

          v12 += 2;
          --v11;
        }

        while (v11);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t PBPageLayoutPkg::PBRect::formatText(PBPageLayoutPkg::PBRect *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "height", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "origin_x", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "origin_y", *(this + 3));
  if ((*(this + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "width", *(this + 4));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBRect::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 32));
      if ((*(v3 + 40) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

uint64_t PBPageLayoutPkg::PBRect::readFrom(PBPageLayoutPkg::PBRect *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 40) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 40) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 40) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

void PBPageLayoutPkg::PBRect::~PBRect(PBPageLayoutPkg::PBRect *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1865EE610);
}

float32x4_t *resample_vertical<float,float,4,(AlphaStyle)3>(float32x4_t *result, double a2, double a3, double a4, double a5, float32x4_t _Q4, double a7, double a8, float32x4_t a9, uint64_t a10, uint64_t a11, int a12, float32x4_t **a13, uint64_t a14)
{
  v17 = *a13;
  v18 = a13[1];
  v19 = result->i32[1];
  v20 = &result->u32[2];
  if (a12 >= 4)
  {
    v22 = 0;
    for (i = 4; i <= a12; i += 4)
    {
      v24.i32[0] = 0;
      v25 = 0;
      v26 = 0;
      if (v19 >= 2)
      {
        v41 = (a14 + 8);
        v42 = 2;
        v27 = 0;
        result = v20;
        v28.i32[0] = 0;
        v14.i32[0] = 0;
        v15.i64[0] = 0;
        v29 = 0;
        v30.i32[0] = 0;
        v31 = 0;
        v16.i32[0] = 0;
        v32 = 0;
        v33.i32[0] = 0;
        v34 = 0;
        v35 = 0;
        v36.i32[0] = 0;
        v37.i32[0] = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          v43 = (*(v41 - 1) + 20 * v22);
          v45 = *v43;
          v44 = v43[1];
          v46 = v43[2];
          v47 = v43[3];
          v48 = v43[4];
          v49 = (*v41 + 20 * v22);
          v50 = *result->f32;
          result = (result + 8);
          v37.i32[1] = v38;
          v37.i64[1] = __PAIR64__(v40, v39);
          v33.i32[1] = v34;
          v33.i64[1] = __PAIR64__(v36.u32[0], v35);
          v30.i32[1] = v31;
          v30.i64[1] = __PAIR64__(v32, v16.u32[0]);
          v28.i32[1] = v14.i32[0];
          v28.i64[1] = __PAIR64__(v29, v15.u32[0]);
          v24.i32[1] = v25;
          v24.i64[1] = __PAIR64__(v27, v26);
          v24 = vmlaq_lane_f32(vmlaq_n_f32(v24, v45, v50.f32[0]), *v49, v50, 1);
          v27 = v24.i32[3];
          v26 = v24.i32[2];
          v25 = v24.i32[1];
          v28 = vmlaq_lane_f32(vmlaq_n_f32(v28, v44, v50.f32[0]), v49[1], v50, 1);
          v29 = v28.i32[3];
          v15.i32[0] = v28.i32[2];
          v14.i32[0] = v28.i32[1];
          v30 = vmlaq_lane_f32(vmlaq_n_f32(v30, v46, v50.f32[0]), v49[2], v50, 1);
          v32 = v30.i32[3];
          v16.i32[0] = v30.i32[2];
          v31 = v30.i32[1];
          v33 = vmlaq_lane_f32(vmlaq_n_f32(v33, v47, v50.f32[0]), v49[3], v50, 1);
          v36.i32[0] = v33.i32[3];
          v35 = v33.i32[2];
          v34 = v33.i32[1];
          v37 = vmlaq_lane_f32(vmlaq_n_f32(v37, v48, v50.f32[0]), v49[4], v50, 1);
          v40 = v37.i32[3];
          v39 = v37.i32[2];
          v38 = v37.i32[1];
          v42 += 2;
          v41 += 2;
        }

        while (v42 <= v19);
      }

      else
      {
        v27 = 0;
        v28.i32[0] = 0;
        v14.i32[0] = 0;
        v15.i64[0] = 0;
        v29 = 0;
        v30.i32[0] = 0;
        v31 = 0;
        v16.i32[0] = 0;
        v32 = 0;
        v33.i32[0] = 0;
        v34 = 0;
        v35 = 0;
        v36.i32[0] = 0;
        v37.i32[0] = 0;
        v38 = 0;
        v39 = 0;
        result = v20;
        v40 = 0;
      }

      if (v19)
      {
        v51 = (*(a14 - 8 + 8 * v19) + 20 * v22);
        v37.i32[1] = v38;
        v37.i64[1] = __PAIR64__(v40, v39);
        v33.i32[1] = v34;
        v33.i64[1] = __PAIR64__(v36.u32[0], v35);
        v30.i32[1] = v31;
        v30.i64[1] = __PAIR64__(v32, v16.u32[0]);
        v28.i32[1] = v14.i32[0];
        v28.i64[1] = __PAIR64__(v29, v15.u32[0]);
        v24.i32[1] = v25;
        v24.i64[1] = __PAIR64__(v27, v26);
        v24 = vaddq_f32(vmlaq_n_f32(v24, *v51, result->f32[0]), 0);
        v27 = v24.i32[3];
        v26 = v24.i32[2];
        v25 = v24.i32[1];
        v28 = vaddq_f32(vmlaq_n_f32(v28, v51[1], result->f32[0]), 0);
        v29 = v28.i32[3];
        v15.i32[0] = v28.i32[2];
        v14.i32[0] = v28.i32[1];
        v30 = vaddq_f32(vmlaq_n_f32(v30, v51[2], result->f32[0]), 0);
        v32 = v30.i32[3];
        v16.i32[0] = v30.i32[2];
        v31 = v30.i32[1];
        v33 = vaddq_f32(vmlaq_n_f32(v33, v51[3], result->f32[0]), 0);
        v36.i32[0] = v33.i32[3];
        v35 = v33.i32[2];
        v34 = v33.i32[1];
        v37 = vaddq_f32(vmlaq_n_f32(v37, v51[4], result->f32[0]), 0);
        v40 = v37.i32[3];
        v39 = v37.i32[2];
        v38 = v37.i32[1];
      }

      v28.i32[1] = v31;
      v28.i64[1] = __PAIR64__(v40, v35);
      v24.i32[1] = v25;
      v24.i64[1] = __PAIR64__(v27, v26);
      v14.i32[1] = v15.i32[0];
      v14.i64[1] = __PAIR64__(v30.u32[0], v29);
      v16.i32[1] = v32;
      v16.i64[1] = __PAIR64__(v34, v33.u32[0]);
      v36.i32[1] = v37.i32[0];
      v36.i64[1] = __PAIR64__(v39, v38);
      __asm { FMOV            V4.4S, #1.0 }

      *v17 = v24;
      v17[1] = v14;
      v17[2] = v16;
      v17[3] = v36;
      v17 += 4;
      *v18++ = vmaxnmq_f32(vminnmq_f32(vmaxnmq_f32(v28, 0), _Q4), vpmaxq_f32(vpmaxq_f32(v24, v14), vpmaxq_f32(v16, v36)));
      v22 += 4;
    }

    LODWORD(v21) = a12 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v21) = 0;
  }

  if (v21 < a12)
  {
    __asm { FMOV            V1.2S, #1.0 }

    v21 = v21;
    v57 = a12;
    do
    {
      v58.i32[0] = 0;
      if (v19 >= 2)
      {
        result = (a14 + 8);
        v62 = 2;
        v61 = v20;
        a9.i64[0] = 0;
        v59.i32[0] = 0;
        v60 = 0;
        _Q4.i64[0] = 0;
        do
        {
          v63 = result[-1].i64[1] + 20 * v21;
          v64 = *v63;
          v14.i32[0] = *(v63 + 16);
          v65 = (result->i64[0] + 20 * v21);
          v15.i32[0] = v65[1].i32[0];
          v66 = *v61;
          v61 += 2;
          *v16.f32 = v66;
          v58.i32[1] = a9.i32[0];
          v58.i64[1] = __PAIR64__(v60, v59.u32[0]);
          _Q4 = vmlaq_lane_f32(vmlaq_f32(_Q4, v16, v14), v15, v66, 1);
          v58 = vmlaq_lane_f32(vmlaq_n_f32(v58, v64, v66.f32[0]), *v65, v66, 1);
          v60 = v58.i32[3];
          v59.i32[0] = v58.i32[2];
          a9.i32[0] = v58.i32[1];
          v62 += 2;
          ++result;
        }

        while (v62 <= v19);
      }

      else
      {
        a9.i64[0] = 0;
        v59.i32[0] = 0;
        v60 = 0;
        v61 = v20;
        _Q4.i64[0] = 0;
      }

      if (v19)
      {
        result = (*(a14 - 8 + 8 * v19) + 20 * v21);
        v14.i32[0] = result[1].i32[0];
        v58.i32[1] = a9.i32[0];
        a9.f32[0] = *v61;
        v58.i64[1] = __PAIR64__(v60, v59.u32[0]);
        v67 = vmlaq_f32(_Q4, a9, v14);
        v58 = vaddq_f32(vmlaq_n_f32(v58, *result, *v61), 0);
        v60 = v58.i32[3];
        v59.i32[0] = v58.i32[2];
        a9.i32[0] = v58.i32[1];
        _Q4 = vaddq_f32(v67, 0);
      }

      v68.i64[0] = __PAIR64__(a9.u32[0], v58.u32[0]);
      v68.i64[1] = __PAIR64__(v60, v59.u32[0]);
      v58.i32[1] = a9.i32[0];
      v59.i32[1] = v60;
      *v17++ = v68;
      v18->i32[0] = vmaxnm_f32(vminnm_f32(vmaxnm_f32(*_Q4.f32, 0), _D1), vpmax_f32(vpmax_f32(*v58.f32, v59), 0)).u32[0];
      v18 = (v18 + 4);
      ++v21;
    }

    while (v21 != v57);
  }

  return result;
}

float32x4_t *resample_vertical<float,float,3,(AlphaStyle)3>(float32x4_t *result, uint64_t a2, uint64_t a3, int a4, float32x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = a5[1];
  v8 = result->i32[1];
  v9 = &result->f32[2];
  __asm { FMOV            V0.2S, #1.0 }

  if (a4 >= 2)
  {
    v16 = 0;
    for (i = 2; i <= a4; i += 2)
    {
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = v9;
      if (v8 >= 2)
      {
        result = (4 * v16);
        v21 = (a6 + 8);
        v22 = 2;
        v20 = v9;
        do
        {
          v23 = (*(v21 - 1) + 16 * v16);
          v25 = *v23;
          v24 = v23[1];
          v26 = (*v21 + 16 * v16);
          v27 = *v20;
          v20 += 2;
          v19 = vmlaq_lane_f32(vmlaq_n_f32(v19, v24, v27.f32[0]), v26[1], v27, 1);
          v18 = vmlaq_lane_f32(vmlaq_n_f32(v18, v25, v27.f32[0]), *v26, v27, 1);
          v22 += 2;
          v21 += 2;
        }

        while (v22 <= v8);
      }

      if (v8)
      {
        result = (*(a6 - 8 + 8 * v8) + 16 * v16);
        v19 = vaddq_f32(vmlaq_n_f32(v19, result[1], *v20), 0);
        v18 = vaddq_f32(vmlaq_n_f32(v18, *result, *v20), 0);
      }

      v28 = vpmaxq_f32(v18, v19);
      v29 = vmaxnm_f32(vminnm_f32(vmaxnm_f32(*&vuzp2q_s32(vuzp2q_s32(v18, v19), v18), 0), _D0), vpmax_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)));
      v18.i32[3] = v19.i32[0];
      *v6 = v18;
      v6[1].i64[0] = vextq_s8(v19, v19, 4uLL).u64[0];
      v6 = (v6 + 24);
      *v7++ = v29;
      v16 += 2;
    }

    LODWORD(v15) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 < a4)
  {
    v15 = v15;
    do
    {
      v30 = 0uLL;
      v31 = v9;
      if (v8 >= 2)
      {
        result = (a6 + 8);
        v32 = 2;
        v31 = v9;
        do
        {
          v33 = *v31;
          v31 += 2;
          v30 = vmlaq_lane_f32(vmlaq_n_f32(v30, *(result[-1].i64[1] + 16 * (v15 & 0x3FFFFFFF)), v33.f32[0]), *(result->i64[0] + 16 * (v15 & 0x3FFFFFFF)), v33, 1);
          v32 += 2;
          ++result;
        }

        while (v32 <= v8);
      }

      if (v8)
      {
        result = (16 * (v15 & 0x3FFFFFFF));
        v30 = vaddq_f32(vmlaq_n_f32(v30, *(result + *(a6 - 8 + 8 * v8)), *v31), 0);
      }

      v6->i64[0] = v30.i64[0];
      v6->i32[2] = v30.i32[2];
      v6 = (v6 + 12);
      v7->i32[0] = vmaxnm_f32(vminnm_f32(vmaxnm_f32(vdup_laneq_s32(v30, 3), 0), _D0), vpmax_f32(vpmax_f32(*v30.f32, *&vextq_s8(v30, v30, 8uLL)), _D0)).u32[0];
      v7 = (v7 + 4);
      ++v15;
    }

    while (v15 != a4);
  }

  return result;
}

float32x4_t *resample_vertical<float,float,1,(AlphaStyle)3>(float32x4_t *result, uint64_t a2, uint64_t a3, int a4, float32x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = a5[1];
  v8 = result->i32[1];
  v9 = &result->f32[2];
  if (a4 >= 4)
  {
    v11 = 0;
    v12 = 4;
    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = v9;
      if (v8 >= 2)
      {
        result = (2 * v11);
        v21 = (a6 + 8);
        v22 = 2;
        v20 = v9;
        do
        {
          v23 = (*(v21 - 1) + 8 * v11);
          v25 = *v23;
          v24 = v23[1];
          v26 = (*v21 + 8 * v11);
          v27 = *v20;
          v20 += 2;
          v19 = vmlaq_lane_f32(vmlaq_n_f32(v19, v24, v27.f32[0]), v26[1], v27, 1);
          v18 = vmlaq_lane_f32(vmlaq_n_f32(v18, v25, v27.f32[0]), *v26, v27, 1);
          v22 += 2;
          v21 += 2;
        }

        while (v22 <= v8);
      }

      if (v8)
      {
        result = (*(a6 - 8 + 8 * v8) + 8 * v11);
        v19 = vaddq_f32(vmlaq_n_f32(v19, result[1], *v20), 0);
        v18 = vaddq_f32(vmlaq_n_f32(v18, *result, *v20), 0);
      }

      v28 = vuzp1q_s32(v18, v19);
      *v6++ = v28;
      *v7++ = vmaxnmq_f32(vminnmq_f32(vmaxnmq_f32(vuzp2q_s32(v18, v19), 0), _Q1), v28);
      v12 += 4;
      v11 += 4;
    }

    while (v12 <= a4);
    LODWORD(v10) = a4 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < a4)
  {
    v10 = v10;
    __asm { FMOV            V1.2S, #1.0 }

    do
    {
      v30 = 0;
      v31 = v9;
      if (v8 >= 2)
      {
        v30 = 0;
        result = (a6 + 8);
        v32 = 2;
        v31 = v9;
        do
        {
          v33 = *v31;
          v31 += 2;
          v30 = vmla_lane_f32(vmla_n_f32(v30, *(result[-1].i64[1] + 8 * v10), v33.f32[0]), *(result->i64[0] + 8 * v10), v33, 1);
          v32 += 2;
          ++result;
        }

        while (v32 <= v8);
      }

      if (v8)
      {
        v30 = vadd_f32(vmla_n_f32(v30, *(*(a6 - 8 + 8 * v8) + 8 * v10), *v31), 0);
      }

      v6->i32[0] = v30.i32[0];
      v6 = (v6 + 4);
      v7->i32[0] = vmaxnm_f32(vminnm_f32(vmaxnm_f32(vdup_lane_s32(v30, 1), 0), _D1), v30).u32[0];
      v7 = (v7 + 4);
      ++v10;
    }

    while (v10 != a4);
  }

  return result;
}

uint64_t resample_vertical<float,float,5,(AlphaStyle)2>(uint64_t result, double a2, double a3, double a4, double a5, float32x4_t a6, double a7, double a8, float32x4_t a9, uint64_t a10, uint64_t a11, int a12, float32x4_t **a13, uint64_t a14)
{
  v17 = *a13;
  v18 = *(result + 4);
  v19 = (result + 8);
  if (a12 >= 4)
  {
    v21 = 0;
    v22 = 4;
    v23.i64[0] = 0x80000000800000;
    v23.i64[1] = 0x80000000800000;
    a6.i64[1] = 0x7F7FFFFF3F800000;
    do
    {
      v24.i32[0] = 0;
      v25 = 0;
      v26 = 0;
      if (v18 >= 2)
      {
        result = 5 * v21;
        v44 = (a14 + 8);
        v45 = 2;
        v15.i64[0] = 0;
        v42 = v19;
        v27.i32[0] = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31.i32[0] = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35.i32[0] = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39.i32[0] = 0;
        v40 = 0;
        v41 = 0;
        v43 = 0;
        do
        {
          v46 = (*(v44 - 1) + 20 * v21);
          v47 = *v46;
          v48 = v46[1];
          v49 = v46[2];
          v50 = v46[3];
          v51 = v46[4];
          v52 = (*v44 + 20 * v21);
          v53 = *v42;
          v42 += 2;
          v39.i32[1] = v40;
          v39.i64[1] = __PAIR64__(v43, v41);
          v35.i32[1] = v36;
          v35.i64[1] = __PAIR64__(v38, v37);
          v31.i32[1] = v32;
          v31.i64[1] = __PAIR64__(v34, v33);
          v27.i32[1] = v28;
          v27.i64[1] = __PAIR64__(v30, v29);
          v24.i32[1] = v25;
          v24.i64[1] = __PAIR64__(v15.u32[0], v26);
          v24 = vmlaq_lane_f32(vmlaq_n_f32(v24, v47, v53.f32[0]), *v52, v53, 1);
          v15.i32[0] = v24.i32[3];
          v26 = v24.i32[2];
          v25 = v24.i32[1];
          v27 = vmlaq_lane_f32(vmlaq_n_f32(v27, v48, v53.f32[0]), v52[1], v53, 1);
          v30 = v27.i32[3];
          v29 = v27.i32[2];
          v28 = v27.i32[1];
          v31 = vmlaq_lane_f32(vmlaq_n_f32(v31, v49, v53.f32[0]), v52[2], v53, 1);
          v34 = v31.i32[3];
          v33 = v31.i32[2];
          v32 = v31.i32[1];
          v35 = vmlaq_lane_f32(vmlaq_n_f32(v35, v50, v53.f32[0]), v52[3], v53, 1);
          v38 = v35.i32[3];
          v37 = v35.i32[2];
          v36 = v35.i32[1];
          v39 = vmlaq_lane_f32(vmlaq_n_f32(v39, v51, v53.f32[0]), v52[4], v53, 1);
          v43 = v39.i32[3];
          v41 = v39.i32[2];
          v40 = v39.i32[1];
          v45 += 2;
          v44 += 2;
        }

        while (v45 <= v18);
      }

      else
      {
        v15.i64[0] = 0;
        v27.i32[0] = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31.i32[0] = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35.i32[0] = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39.i32[0] = 0;
        v40 = 0;
        v41 = 0;
        v42 = v19;
        v43 = 0;
      }

      if (v18)
      {
        result = *(a14 - 8 + 8 * v18) + 20 * v21;
        v39.i32[1] = v40;
        v39.i64[1] = __PAIR64__(v43, v41);
        v35.i32[1] = v36;
        v35.i64[1] = __PAIR64__(v38, v37);
        v31.i32[1] = v32;
        v31.i64[1] = __PAIR64__(v34, v33);
        v27.i32[1] = v28;
        v27.i64[1] = __PAIR64__(v30, v29);
        v24.i32[1] = v25;
        v24.i64[1] = __PAIR64__(v15.u32[0], v26);
        v24 = vaddq_f32(vmlaq_n_f32(v24, *result, *v42), 0);
        v15.i32[0] = v24.i32[3];
        v26 = v24.i32[2];
        v25 = v24.i32[1];
        v27 = vaddq_f32(vmlaq_n_f32(v27, *(result + 16), *v42), 0);
        v30 = v27.i32[3];
        v29 = v27.i32[2];
        v28 = v27.i32[1];
        v31 = vaddq_f32(vmlaq_n_f32(v31, *(result + 32), *v42), 0);
        v34 = v31.i32[3];
        v33 = v31.i32[2];
        v32 = v31.i32[1];
        v35 = vaddq_f32(vmlaq_n_f32(v35, *(result + 48), *v42), 0);
        v38 = v35.i32[3];
        v37 = v35.i32[2];
        v36 = v35.i32[1];
        v39 = vaddq_f32(vmlaq_n_f32(v39, *(result + 64), *v42), 0);
        v43 = v39.i32[3];
        v41 = v39.i32[2];
        v40 = v39.i32[1];
      }

      v54.i64[0] = __PAIR64__(v32, v27.u32[0]);
      v54.i64[1] = __PAIR64__(v43, v37);
      v55.i64[0] = __PAIR64__(v31.u32[0], v15.u32[0]);
      v55.i64[1] = __PAIR64__(v41, v36);
      v56.i64[0] = __PAIR64__(v30, v26);
      v56.i64[1] = __PAIR64__(v40, v35.u32[0]);
      v57 = vmaxnmq_f32(v54, v55);
      v55.i64[0] = __PAIR64__(v29, v25);
      v58 = vmaxnmq_f32(v57, v56);
      v55.i64[1] = __PAIR64__(v39.u32[0], v34);
      v56.i64[0] = __PAIR64__(v28, v24.u32[0]);
      v56.i64[1] = __PAIR64__(v38, v33);
      v59 = vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v58, v55), v56), 0);
      v60 = vdupq_lane_s32(*v23.f32, 0);
      v61 = v60;
      v61.i32[3] = v59.i32[3];
      v62 = v60;
      v62.i32[2] = v59.i32[2];
      v63 = v60;
      v63.i32[1] = v59.i32[1];
      v60.i32[0] = v59.i32[0];
      v24.i32[1] = v25;
      v24.i64[1] = __PAIR64__(v15.u32[0], v26);
      v27.i32[1] = v28;
      v64 = vmaxnmq_f32(v24, v23);
      v27.i64[1] = __PAIR64__(v30, v29);
      v65 = vmaxnmq_f32(v27, v60);
      v31.i32[1] = v32;
      v31.i64[1] = __PAIR64__(v34, v33);
      v35.i32[1] = v36;
      v35.i64[1] = __PAIR64__(v38, v37);
      v66 = vmaxnmq_f32(v35, v62);
      v39.i32[1] = v40;
      v39.i64[1] = __PAIR64__(v43, v41);
      a9 = vminnmq_f32(vmaxnmq_f32(v31, v63), xmmword_18439C490);
      v14 = vminnmq_f32(vmaxnmq_f32(v39, v61), xmmword_18439C4B0);
      v17[2] = a9;
      v17[3] = vminnmq_f32(v66, xmmword_18439C4A0);
      *v17 = vminnmq_f32(v64, vnegq_f32(v23));
      v17[1] = vminnmq_f32(v65, xmmword_18439C480);
      v17[4] = v14;
      v17 += 5;
      v22 += 4;
      v21 += 4;
    }

    while (v22 <= a12);
    LODWORD(v20) = a12 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 < a12)
  {
    v20 = v20;
    do
    {
      v67.i32[0] = 0;
      if (v18 >= 2)
      {
        v71 = (a14 + 8);
        result = 2;
        v70 = v19;
        a9.i64[0] = 0;
        v68 = 0;
        v69 = 0;
        a6.i64[0] = 0;
        do
        {
          v72 = *(v71 - 1) + 20 * v20;
          v73 = *v72;
          v14.i32[0] = *(v72 + 16);
          v74 = (*v71 + 20 * v20);
          v15.i32[0] = v74[1].i32[0];
          v75 = *v70;
          v70 += 2;
          *v16.f32 = v75;
          v67.i32[1] = a9.i32[0];
          v67.i64[1] = __PAIR64__(v69, v68);
          a6 = vmlaq_lane_f32(vmlaq_f32(a6, v16, v14), v15, v75, 1);
          v67 = vmlaq_lane_f32(vmlaq_n_f32(v67, v73, v75.f32[0]), *v74, v75, 1);
          v69 = v67.i32[3];
          v68 = v67.i32[2];
          a9.i32[0] = v67.i32[1];
          result += 2;
          v71 += 2;
        }

        while (result <= v18);
      }

      else
      {
        a9.i64[0] = 0;
        v68 = 0;
        v69 = 0;
        v70 = v19;
        a6.i64[0] = 0;
      }

      if (v18)
      {
        v76 = (*(a14 - 8 + 8 * v18) + 20 * v20);
        v14.i32[0] = v76[1].i32[0];
        v67.i32[1] = a9.i32[0];
        a9.f32[0] = *v70;
        v67.i64[1] = __PAIR64__(v69, v68);
        v77 = vmlaq_f32(a6, a9, v14);
        v67 = vaddq_f32(vmlaq_n_f32(v67, *v76, *v70), 0);
        v69 = v67.i32[3];
        v68 = v67.i32[2];
        a9.i32[0] = v67.i32[1];
        a6 = vaddq_f32(v77, 0);
      }

      v67.i32[1] = a9.i32[0];
      v67.i64[1] = __PAIR64__(v69, v68);
      a6 = vmaxnmq_f32(v67, a6);
      a6.f32[0] = vmaxvq_f32(a6);
      v78 = fmaxf(a6.f32[0], 0.0);
      if (a6.f32[0] <= 1.0)
      {
        v79 = v78;
      }

      else
      {
        v79 = 1.0;
      }

      *v17 = v67;
      v17[1].f32[0] = v79;
      v17 = (v17 + 20);
      ++v20;
    }

    while (v20 != a12);
  }

  return result;
}

uint64_t resample_vertical<float,float,4,(AlphaStyle)2>(uint64_t result, uint64_t a2, uint64_t a3, int a4, float32x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12 = vdupq_lane_s32(0x80000000800000, 0);
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 16 * v10);
          v19 = *v17;
          v18 = v17[1];
          v20 = (*result + 16 * v10);
          v21 = *v15;
          v15 += 2;
          v14 = vmlaq_lane_f32(vmlaq_n_f32(v14, v18, v21.f32[0]), v20[1], v21, 1);
          v13 = vmlaq_lane_f32(vmlaq_n_f32(v13, v19, v21.f32[0]), *v20, v21, 1);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v22 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v14 = vaddq_f32(vmlaq_n_f32(v14, v22[1], *v15), 0);
        v13 = vaddq_f32(vmlaq_n_f32(v13, *v22, *v15), 0);
      }

      v23 = vmaxnmq_f32(vuzp1q_s32(v13, v14), vuzp2q_s32(v13, v14));
      v24 = vextq_s8(v23, v23, 8uLL).u64[0];
      *v23.i8 = vmaxnm_f32(vmaxnm_f32(vzip1_s32(*v23.i8, v24), vzip2_s32(*v23.i8, v24)), 0);
      v25 = v12;
      v25.i32[3] = v23.i32[1];
      *v6 = vminnmq_f32(vmaxnmq_f32(v13, vextq_s8(v12, v23, 4uLL)), xmmword_18439C4B0);
      v6[1] = vminnmq_f32(vmaxnmq_f32(v14, v25), xmmword_18439C4B0);
      v6 += 2;
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      v26 = 0uLL;
      v27 = v8;
      if (v7 >= 2)
      {
        v28 = (a6 + 8);
        result = 2;
        v27 = v8;
        do
        {
          v29 = *v27;
          v27 += 2;
          v26 = vmlaq_lane_f32(vmlaq_n_f32(v26, *(*(v28 - 1) + 16 * (v9 & 0x3FFFFFFF)), v29.f32[0]), *(*v28 + 16 * (v9 & 0x3FFFFFFF)), v29, 1);
          result += 2;
          v28 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v26 = vaddq_f32(vmlaq_n_f32(v26, *(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF)), *v27), 0);
      }

      v30 = vmaxvq_f32(v26);
      v31 = fmaxf(v30, 0.0);
      if (v30 <= 1.0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 1.0;
      }

      v26.f32[3] = v32;
      *v6++ = v26;
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<float,float,2,(AlphaStyle)2>(uint64_t result, uint64_t a2, uint64_t a3, int a4, float32x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 4)
  {
    v10 = 0;
    v11 = 4;
    v12.i64[0] = 0x80000000800000;
    v12.i64[1] = 0x80000000800000;
    v13 = vdupq_lane_s32(0x80000000800000, 0);
    do
    {
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v17 = 2;
        v16 = v8;
        do
        {
          v18 = (*(result - 8) + 8 * v10);
          v20 = *v18;
          v19 = v18[1];
          v21 = (*result + 8 * v10);
          v22 = *v16;
          v16 += 2;
          v15 = vmlaq_lane_f32(vmlaq_n_f32(v15, v19, v22.f32[0]), v21[1], v22, 1);
          v14 = vmlaq_lane_f32(vmlaq_n_f32(v14, v20, v22.f32[0]), *v21, v22, 1);
          v17 += 2;
          result += 16;
        }

        while (v17 <= v7);
      }

      if (v7)
      {
        v23 = (*(a6 - 8 + 8 * v7) + 8 * v10);
        v15 = vaddq_f32(vmlaq_n_f32(v15, v23[1], *v16), 0);
        v14 = vaddq_f32(vmlaq_n_f32(v14, *v23, *v16), 0);
      }

      v24 = vmaxnmq_f32(vmaxnmq_f32(vuzp1q_s32(v14, v15), vuzp2q_s32(v14, v15)), 0);
      v25 = vzip2q_s32(v13, v24);
      v26 = vzip1q_s32(v12, v24);
      v26.i32[2] = -8388609;
      *v6 = vminnmq_f32(vmaxnmq_f32(v14, v26), xmmword_18439C4C0);
      v6[1] = vminnmq_f32(vmaxnmq_f32(v15, v25), xmmword_18439C4C0);
      v6 += 2;
      v11 += 4;
      v10 += 4;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      v27 = 0;
      v28 = v8;
      if (v7 >= 2)
      {
        v27 = 0;
        v29 = (a6 + 8);
        result = 2;
        v28 = v8;
        do
        {
          v30 = *v28;
          v28 += 2;
          v27 = vmla_lane_f32(vmla_n_f32(v27, *(*(v29 - 1) + 8 * v9), v30.f32[0]), *(*v29 + 8 * v9), v30, 1);
          result += 2;
          v29 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v27 = vadd_f32(vmla_n_f32(v27, *(*(a6 - 8 + 8 * v7) + 8 * v9), *v28), 0);
      }

      v31 = vpmax_f32(v27);
      v32 = fmaxf(v31, 0.0);
      if (v31 <= 1.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1.0;
      }

      v27.f32[1] = v33;
      *v6->f32 = v27;
      v6 = (v6 + 8);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<float,float,5,(AlphaStyle)1>(uint64_t result, double a2, double a3, double a4, double a5, float32x4_t a6, double a7, double a8, float32x4_t a9, uint64_t a10, uint64_t a11, int a12, float32x4_t **a13, uint64_t a14)
{
  v17 = *a13;
  v18 = *(result + 4);
  v19 = (result + 8);
  if (a12 >= 4)
  {
    v21 = 0;
    v22 = 4;
    v23.i64[0] = 0x80000000800000;
    v23.i64[1] = 0x80000000800000;
    a6.i64[1] = 0x7F7FFFFF3F800000;
    do
    {
      v24.i32[0] = 0;
      v25 = 0;
      v26 = 0;
      if (v18 >= 2)
      {
        result = 5 * v21;
        v44 = (a14 + 8);
        v45 = 2;
        v15.i64[0] = 0;
        v42 = v19;
        v27.i32[0] = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31.i32[0] = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35.i32[0] = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39.i32[0] = 0;
        v40 = 0;
        v41 = 0;
        v43 = 0;
        do
        {
          v46 = (*(v44 - 1) + 20 * v21);
          v47 = *v46;
          v48 = v46[1];
          v49 = v46[2];
          v50 = v46[3];
          v51 = v46[4];
          v52 = (*v44 + 20 * v21);
          v53 = *v42;
          v42 += 2;
          v39.i32[1] = v40;
          v39.i64[1] = __PAIR64__(v43, v41);
          v35.i32[1] = v36;
          v35.i64[1] = __PAIR64__(v38, v37);
          v31.i32[1] = v32;
          v31.i64[1] = __PAIR64__(v34, v33);
          v27.i32[1] = v28;
          v27.i64[1] = __PAIR64__(v30, v29);
          v24.i32[1] = v25;
          v24.i64[1] = __PAIR64__(v15.u32[0], v26);
          v24 = vmlaq_lane_f32(vmlaq_n_f32(v24, v47, v53.f32[0]), *v52, v53, 1);
          v15.i32[0] = v24.i32[3];
          v26 = v24.i32[2];
          v25 = v24.i32[1];
          v27 = vmlaq_lane_f32(vmlaq_n_f32(v27, v48, v53.f32[0]), v52[1], v53, 1);
          v30 = v27.i32[3];
          v29 = v27.i32[2];
          v28 = v27.i32[1];
          v31 = vmlaq_lane_f32(vmlaq_n_f32(v31, v49, v53.f32[0]), v52[2], v53, 1);
          v34 = v31.i32[3];
          v33 = v31.i32[2];
          v32 = v31.i32[1];
          v35 = vmlaq_lane_f32(vmlaq_n_f32(v35, v50, v53.f32[0]), v52[3], v53, 1);
          v38 = v35.i32[3];
          v37 = v35.i32[2];
          v36 = v35.i32[1];
          v39 = vmlaq_lane_f32(vmlaq_n_f32(v39, v51, v53.f32[0]), v52[4], v53, 1);
          v43 = v39.i32[3];
          v41 = v39.i32[2];
          v40 = v39.i32[1];
          v45 += 2;
          v44 += 2;
        }

        while (v45 <= v18);
      }

      else
      {
        v15.i64[0] = 0;
        v27.i32[0] = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31.i32[0] = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35.i32[0] = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39.i32[0] = 0;
        v40 = 0;
        v41 = 0;
        v42 = v19;
        v43 = 0;
      }

      if (v18)
      {
        result = *(a14 - 8 + 8 * v18) + 20 * v21;
        v39.i32[1] = v40;
        v39.i64[1] = __PAIR64__(v43, v41);
        v35.i32[1] = v36;
        v35.i64[1] = __PAIR64__(v38, v37);
        v31.i32[1] = v32;
        v31.i64[1] = __PAIR64__(v34, v33);
        v27.i32[1] = v28;
        v27.i64[1] = __PAIR64__(v30, v29);
        v24.i32[1] = v25;
        v24.i64[1] = __PAIR64__(v15.u32[0], v26);
        v24 = vaddq_f32(vmlaq_n_f32(v24, *result, *v42), 0);
        v15.i32[0] = v24.i32[3];
        v26 = v24.i32[2];
        v25 = v24.i32[1];
        v27 = vaddq_f32(vmlaq_n_f32(v27, *(result + 16), *v42), 0);
        v30 = v27.i32[3];
        v29 = v27.i32[2];
        v28 = v27.i32[1];
        v31 = vaddq_f32(vmlaq_n_f32(v31, *(result + 32), *v42), 0);
        v34 = v31.i32[3];
        v33 = v31.i32[2];
        v32 = v31.i32[1];
        v35 = vaddq_f32(vmlaq_n_f32(v35, *(result + 48), *v42), 0);
        v38 = v35.i32[3];
        v37 = v35.i32[2];
        v36 = v35.i32[1];
        v39 = vaddq_f32(vmlaq_n_f32(v39, *(result + 64), *v42), 0);
        v43 = v39.i32[3];
        v41 = v39.i32[2];
        v40 = v39.i32[1];
      }

      v54.i64[0] = __PAIR64__(v32, v27.u32[0]);
      v54.i64[1] = __PAIR64__(v43, v37);
      v55.i64[0] = __PAIR64__(v31.u32[0], v15.u32[0]);
      v55.i64[1] = __PAIR64__(v41, v36);
      v56.i64[0] = __PAIR64__(v30, v26);
      v56.i64[1] = __PAIR64__(v40, v35.u32[0]);
      v57 = vmaxnmq_f32(v54, v55);
      v55.i64[0] = __PAIR64__(v29, v25);
      v58 = vmaxnmq_f32(v57, v56);
      v55.i64[1] = __PAIR64__(v39.u32[0], v34);
      v56.i64[0] = __PAIR64__(v28, v24.u32[0]);
      v56.i64[1] = __PAIR64__(v38, v33);
      v59 = vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v58, v55), v56), 0);
      v60 = vdupq_lane_s32(*v23.f32, 0);
      v61 = v60;
      v61.i32[3] = v59.i32[3];
      v62 = v60;
      v62.i32[2] = v59.i32[2];
      v63 = v60;
      v63.i32[1] = v59.i32[1];
      v60.i32[0] = v59.i32[0];
      v24.i32[1] = v25;
      v24.i64[1] = __PAIR64__(v15.u32[0], v26);
      v27.i32[1] = v28;
      v64 = vmaxnmq_f32(v24, v60);
      v27.i64[1] = __PAIR64__(v30, v29);
      v65 = vmaxnmq_f32(v27, v63);
      v31.i32[1] = v32;
      v31.i64[1] = __PAIR64__(v34, v33);
      v35.i32[1] = v36;
      v35.i64[1] = __PAIR64__(v38, v37);
      v66 = vmaxnmq_f32(v35, v61);
      v39.i32[1] = v40;
      v39.i64[1] = __PAIR64__(v43, v41);
      a9 = vminnmq_f32(vmaxnmq_f32(v31, v62), xmmword_18439C4A0);
      v14 = vminnmq_f32(vmaxnmq_f32(v39, v23), vnegq_f32(v23));
      v17[2] = a9;
      v17[3] = vminnmq_f32(v66, xmmword_18439C4B0);
      *v17 = vminnmq_f32(v64, xmmword_18439C480);
      v17[1] = vminnmq_f32(v65, xmmword_18439C490);
      v17[4] = v14;
      v17 += 5;
      v22 += 4;
      v21 += 4;
    }

    while (v22 <= a12);
    LODWORD(v20) = a12 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 < a12)
  {
    v20 = v20;
    do
    {
      v67.i32[0] = 0;
      if (v18 >= 2)
      {
        v71 = (a14 + 8);
        result = 2;
        v70 = v19;
        a9.i64[0] = 0;
        v68 = 0;
        v69 = 0;
        a6.i64[0] = 0;
        do
        {
          v72 = *(v71 - 1) + 20 * v20;
          v73 = *v72;
          v14.i32[0] = *(v72 + 16);
          v74 = (*v71 + 20 * v20);
          v15.i32[0] = v74[1].i32[0];
          v75 = *v70;
          v70 += 2;
          *v16.f32 = v75;
          v67.i32[1] = a9.i32[0];
          v67.i64[1] = __PAIR64__(v69, v68);
          a6 = vmlaq_lane_f32(vmlaq_f32(a6, v16, v14), v15, v75, 1);
          v67 = vmlaq_lane_f32(vmlaq_n_f32(v67, v73, v75.f32[0]), *v74, v75, 1);
          v69 = v67.i32[3];
          v68 = v67.i32[2];
          a9.i32[0] = v67.i32[1];
          result += 2;
          v71 += 2;
        }

        while (result <= v18);
      }

      else
      {
        a9.i64[0] = 0;
        v68 = 0;
        v69 = 0;
        v70 = v19;
        a6.i64[0] = 0;
      }

      if (v18)
      {
        v76 = (*(a14 - 8 + 8 * v18) + 20 * v20);
        v14.i32[0] = v76[1].i32[0];
        v67.i32[1] = a9.i32[0];
        a9.f32[0] = *v70;
        v67.i64[1] = __PAIR64__(v69, v68);
        v77 = vmlaq_f32(a6, a9, v14);
        v67 = vaddq_f32(vmlaq_n_f32(v67, *v76, *v70), 0);
        v69 = v67.i32[3];
        v68 = v67.i32[2];
        a9.i32[0] = v67.i32[1];
        a6 = vaddq_f32(v77, 0);
      }

      v67.i32[1] = a9.i32[0];
      v67.i64[1] = __PAIR64__(v69, v68);
      v78 = vmaxvq_f32(vmaxnmq_f32(v67, a6));
      v79 = fmaxf(v78, 0.0);
      if (v78 <= 1.0)
      {
        v80 = v79;
      }

      else
      {
        v80 = 1.0;
      }

      v67.f32[0] = v80;
      *v17 = v67;
      v17[1].i32[0] = a6.i32[0];
      v17 = (v17 + 20);
      ++v20;
    }

    while (v20 != a12);
  }

  return result;
}

uint64_t resample_vertical<float,float,4,(AlphaStyle)1>(uint64_t result, uint64_t a2, uint64_t a3, int a4, float32x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12 = vdupq_lane_s32(0x80000000800000, 0);
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 16 * v10);
          v19 = *v17;
          v18 = v17[1];
          v20 = (*result + 16 * v10);
          v21 = *v15;
          v15 += 2;
          v14 = vmlaq_lane_f32(vmlaq_n_f32(v14, v18, v21.f32[0]), v20[1], v21, 1);
          v13 = vmlaq_lane_f32(vmlaq_n_f32(v13, v19, v21.f32[0]), *v20, v21, 1);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v22 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v14 = vaddq_f32(vmlaq_n_f32(v14, v22[1], *v15), 0);
        v13 = vaddq_f32(vmlaq_n_f32(v13, *v22, *v15), 0);
      }

      v23 = vmaxnmq_f32(vuzp1q_s32(v13, v14), vuzp2q_s32(v13, v14));
      v24 = vextq_s8(v23, v23, 8uLL).u64[0];
      *v23.i8 = vmaxnm_f32(vmaxnm_f32(vzip1_s32(*v23.i8, v24), vzip2_s32(*v23.i8, v24)), 0);
      v25 = v12;
      v25.i32[0] = v23.i32[1];
      v26 = v12;
      v26.i32[0] = v23.i32[0];
      *v6 = vminnmq_f32(vmaxnmq_f32(v13, v26), xmmword_18439C480);
      v6[1] = vminnmq_f32(vmaxnmq_f32(v14, v25), xmmword_18439C480);
      v6 += 2;
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      v27 = 0uLL;
      v28 = v8;
      if (v7 >= 2)
      {
        v29 = (a6 + 8);
        result = 2;
        v28 = v8;
        do
        {
          v30 = *v28;
          v28 += 2;
          v27 = vmlaq_lane_f32(vmlaq_n_f32(v27, *(*(v29 - 1) + 16 * (v9 & 0x3FFFFFFF)), v30.f32[0]), *(*v29 + 16 * (v9 & 0x3FFFFFFF)), v30, 1);
          result += 2;
          v29 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v27 = vaddq_f32(vmlaq_n_f32(v27, *(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF)), *v28), 0);
      }

      v31 = vmaxvq_f32(v27);
      v32 = fmaxf(v31, 0.0);
      if (v31 <= 1.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1.0;
      }

      v27.f32[0] = v33;
      *v6++ = v27;
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<float,float,2,(AlphaStyle)1>(uint64_t result, uint64_t a2, uint64_t a3, int a4, float32x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 4)
  {
    v10 = 0;
    v11 = 4;
    v12 = vdupq_lane_s32(0x80000000800000, 0);
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 8 * v10);
          v19 = *v17;
          v18 = v17[1];
          v20 = (*result + 8 * v10);
          v21 = *v15;
          v15 += 2;
          v14 = vmlaq_lane_f32(vmlaq_n_f32(v14, v18, v21.f32[0]), v20[1], v21, 1);
          v13 = vmlaq_lane_f32(vmlaq_n_f32(v13, v19, v21.f32[0]), *v20, v21, 1);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v22 = (*(a6 - 8 + 8 * v7) + 8 * v10);
        v14 = vaddq_f32(vmlaq_n_f32(v14, v22[1], *v15), 0);
        v13 = vaddq_f32(vmlaq_n_f32(v13, *v22, *v15), 0);
      }

      v23 = vmaxnmq_f32(vmaxnmq_f32(vuzp1q_s32(v13, v14), vuzp2q_s32(v13, v14)), 0);
      *v6 = vminnmq_f32(vmaxnmq_f32(v13, vzip1q_s32(v23, v12)), xmmword_18439C4D0);
      v6[1] = vminnmq_f32(vmaxnmq_f32(v14, vzip2q_s32(v23, v12)), xmmword_18439C4D0);
      v6 += 2;
      v11 += 4;
      v10 += 4;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      v24 = 0;
      v25 = v8;
      if (v7 >= 2)
      {
        v24 = 0;
        v26 = (a6 + 8);
        result = 2;
        v25 = v8;
        do
        {
          v27 = *v25;
          v25 += 2;
          v24 = vmla_lane_f32(vmla_n_f32(v24, *(*(v26 - 1) + 8 * v9), v27.f32[0]), *(*v26 + 8 * v9), v27, 1);
          result += 2;
          v26 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v24 = vadd_f32(vmla_n_f32(v24, *(*(a6 - 8 + 8 * v7) + 8 * v9), *v25), 0);
      }

      v28 = vpmax_f32(v24);
      v29 = fmaxf(v28, 0.0);
      if (v28 <= 1.0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 1.0;
      }

      v24.f32[0] = v30;
      *v6->f32 = v24;
      v6 = (v6 + 8);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<float,float,4,(AlphaStyle)0>(uint64_t result, uint64_t a2, uint64_t a3, int a4, float32x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    for (i = 2; i <= a4; i += 2)
    {
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v15 = 2;
        v14 = v8;
        do
        {
          v16 = (*(result - 8) + 16 * v10);
          v18 = *v16;
          v17 = v16[1];
          v19 = (*result + 16 * v10);
          v20 = *v14;
          v14 += 2;
          v13 = vmlaq_lane_f32(vmlaq_n_f32(v13, v17, v20.f32[0]), v19[1], v20, 1);
          v12 = vmlaq_lane_f32(vmlaq_n_f32(v12, v18, v20.f32[0]), *v19, v20, 1);
          v15 += 2;
          result += 16;
        }

        while (v15 <= v7);
      }

      if (v7)
      {
        v21 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v13 = vaddq_f32(vmlaq_n_f32(v13, v21[1], *v14), 0);
        v12 = vaddq_f32(vmlaq_n_f32(v12, *v21, *v14), 0);
      }

      *v6 = v12;
      v6[1] = v13;
      v6 += 2;
      v10 += 2;
    }

    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      v22 = 0uLL;
      v23 = v8;
      if (v7 >= 2)
      {
        v24 = (a6 + 8);
        result = 2;
        v23 = v8;
        do
        {
          v25 = *v23;
          v23 += 2;
          v22 = vmlaq_lane_f32(vmlaq_n_f32(v22, *(*(v24 - 1) + 16 * (v9 & 0x3FFFFFFF)), v25.f32[0]), *(*v24 + 16 * (v9 & 0x3FFFFFFF)), v25, 1);
          result += 2;
          v24 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v22 = vaddq_f32(vmlaq_n_f32(v22, *(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF)), *v23), 0);
      }

      *v6++ = v22;
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<float,float,3,(AlphaStyle)0>(uint64_t result, double a2, double a3, double a4, float32x4_t a5, double a6, uint64_t a7, uint64_t a8, int a9, float32x4_t **a10, uint64_t a11)
{
  v11 = *a10;
  v12 = *(result + 4);
  v13 = (result + 8);
  if (a9 >= 4)
  {
    v15 = 0;
    for (i = 4; i <= a9; i += 4)
    {
      v17.i32[0] = 0;
      v18 = 0;
      v19 = 0;
      if (v12 >= 2)
      {
        result = 3 * v15;
        v28 = (a11 + 8);
        v29 = 2;
        a6 = 0.0;
        v26 = v13;
        v20.i32[0] = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        a5.i32[0] = 0;
        v24 = 0;
        v25 = 0;
        v27 = 0;
        do
        {
          v30 = (*(v28 - 1) + 12 * v15);
          v31 = *v30;
          v32 = v30[1];
          v33 = v30[2];
          v34 = (*v28 + 12 * v15);
          v35 = *v26;
          v26 += 2;
          a5.i32[1] = v24;
          a5.i64[1] = __PAIR64__(v27, v25);
          v20.i32[1] = v21;
          v20.i64[1] = __PAIR64__(v23, v22);
          v17.i32[1] = v18;
          v17.i64[1] = __PAIR64__(LODWORD(a6), v19);
          v17 = vmlaq_lane_f32(vmlaq_n_f32(v17, v31, v35.f32[0]), *v34, v35, 1);
          LODWORD(a6) = v17.i32[3];
          v19 = v17.i32[2];
          v18 = v17.i32[1];
          v20 = vmlaq_lane_f32(vmlaq_n_f32(v20, v32, v35.f32[0]), v34[1], v35, 1);
          v23 = v20.i32[3];
          v22 = v20.i32[2];
          v21 = v20.i32[1];
          a5 = vmlaq_lane_f32(vmlaq_n_f32(a5, v33, v35.f32[0]), v34[2], v35, 1);
          v27 = a5.u32[3];
          v25 = a5.u32[2];
          v24 = a5.u32[1];
          v29 += 2;
          v28 += 2;
        }

        while (v29 <= v12);
      }

      else
      {
        a6 = 0.0;
        v20.i32[0] = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        a5.i32[0] = 0;
        v24 = 0;
        v25 = 0;
        v26 = v13;
        v27 = 0;
      }

      if (v12)
      {
        result = *(a11 - 8 + 8 * v12) + 12 * v15;
        a5.i32[1] = v24;
        a5.i64[1] = __PAIR64__(v27, v25);
        v20.i32[1] = v21;
        v20.i64[1] = __PAIR64__(v23, v22);
        v17.i32[1] = v18;
        v17.i64[1] = __PAIR64__(LODWORD(a6), v19);
        v17 = vaddq_f32(vmlaq_n_f32(v17, *result, *v26), 0);
        LODWORD(a6) = v17.i32[3];
        v19 = v17.i32[2];
        v18 = v17.i32[1];
        v20 = vaddq_f32(vmlaq_n_f32(v20, *(result + 16), *v26), 0);
        v23 = v20.i32[3];
        v22 = v20.i32[2];
        v21 = v20.i32[1];
        a5 = vaddq_f32(vmlaq_n_f32(a5, *(result + 32), *v26), 0);
        v27 = a5.u32[3];
        v25 = a5.u32[2];
        v24 = a5.u32[1];
      }

      v20.i32[1] = v21;
      v20.i64[1] = __PAIR64__(v23, v22);
      v17.i32[1] = v18;
      v17.i64[1] = __PAIR64__(LODWORD(a6), v19);
      a5.i32[1] = v24;
      a5.i64[1] = __PAIR64__(v27, v25);
      *v11 = v17;
      v11[1] = v20;
      v11[2] = a5;
      v11 += 3;
      v15 += 4;
    }

    LODWORD(v14) = a9 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 < a9)
  {
    v14 = v14;
    do
    {
      v36 = 0uLL;
      v37 = v13;
      if (v12 >= 2)
      {
        v38 = (a11 + 8);
        result = 2;
        v37 = v13;
        do
        {
          v39 = *(v38 - 1) + 12 * v14;
          v40.i64[0] = *v39;
          a5.i32[0] = *(v39 + 8);
          v40.i64[1] = a5.i64[0];
          v41 = *v38 + 12 * v14;
          a5.i64[0] = *v41;
          LODWORD(a6) = *(v41 + 8);
          *&a5.i64[1] = a6;
          v42 = *v37;
          v37 += 2;
          HIDWORD(a6) = v42.i32[1];
          v36 = vmlaq_lane_f32(vmlaq_n_f32(v36, v40, v42.f32[0]), a5, v42, 1);
          result += 2;
          v38 += 2;
        }

        while (result <= v12);
      }

      if (v12)
      {
        v43 = *(a11 - 8 + 8 * v12) + 12 * v14;
        v44.i64[0] = *v43;
        a5.i32[0] = *(v43 + 8);
        v44.i64[1] = a5.i64[0];
        v36 = vaddq_f32(vmlaq_n_f32(v36, v44, *v37), 0);
      }

      v11->i64[0] = v36.i64[0];
      v11->i32[2] = v36.i32[2];
      v11 = (v11 + 12);
      ++v14;
    }

    while (v14 != a9);
  }

  return result;
}

uint64_t resample_vertical<float,float,1,(AlphaStyle)0>(uint64_t result, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, uint64_t a7, int a8, float32x4_t **a9, uint64_t a10)
{
  v10 = *a9;
  v11 = *(result + 4);
  v12 = (result + 8);
  if (a8 >= 8)
  {
    v14 = 0;
    for (i = 8; i <= a8; i += 8)
    {
      v16 = 0uLL;
      a4 = 0uLL;
      v17 = v12;
      if (v11 >= 2)
      {
        v18 = (a10 + 8);
        result = 2;
        v17 = v12;
        do
        {
          v19 = *(v18 - 1) + 4 * v14;
          v20 = *v19;
          a5 = *(v19 + 16);
          v21 = (*v18 + 4 * v14);
          v22 = *v17;
          v17 += 2;
          a4 = vmlaq_lane_f32(vmlaq_n_f32(a4, a5, v22.f32[0]), v21[1], v22, 1);
          v16 = vmlaq_lane_f32(vmlaq_n_f32(v16, v20, v22.f32[0]), *v21, v22, 1);
          result += 2;
          v18 += 2;
        }

        while (result <= v11);
      }

      if (v11)
      {
        v23 = *(a10 - 8 + 8 * v11) + 4 * v14;
        a5 = *(v23 + 16);
        a4 = vaddq_f32(vmlaq_n_f32(a4, a5, *v17), 0);
        v16 = vaddq_f32(vmlaq_n_f32(v16, *v23, *v17), 0);
      }

      *v10 = v16;
      v10[1] = a4;
      v10 += 2;
      v14 += 8;
    }

    v13 = a8 & 0x7FFFFFF8;
  }

  else
  {
    v13 = 0;
  }

  for (j = v13 | 4; j <= a8; j += 4)
  {
    v25 = 4 * v13;
    v26 = 0uLL;
    v27 = v12;
    if (v11 >= 2)
    {
      v28 = (a10 + 8);
      result = 2;
      v27 = v12;
      do
      {
        a4 = *(*(v28 - 1) + v25);
        a5 = *(*v28 + v25);
        v29 = *v27;
        v27 += 2;
        v26 = vmlaq_lane_f32(vmlaq_n_f32(v26, a4, v29.f32[0]), a5, v29, 1);
        result += 2;
        v28 += 2;
      }

      while (result <= v11);
    }

    if (v11)
    {
      a4 = *(*(a10 - 8 + 8 * v11) + v25);
      v26 = vaddq_f32(vmlaq_n_f32(v26, a4, *v27), 0);
    }

    *v10++ = v26;
    v13 = j;
  }

  for (; v13 < a8; ++v13)
  {
    v30 = 0;
    v31 = v12;
    if (v11 >= 2)
    {
      v30 = 0;
      v32 = (a10 + 8);
      v33 = 2;
      v31 = v12;
      do
      {
        result = *(v32 - 1);
        a4.i32[0] = *(result + 4 * v13);
        a5.i32[0] = *(*v32 + 4 * v13);
        v34 = *v31++;
        v30 = vmla_lane_f32(vmla_f32(v30, v34, *a4.f32), *a5.f32, v34, 1);
        v33 += 2;
        v32 += 2;
      }

      while (v33 <= v11);
    }

    if (v11)
    {
      a4.i32[0] = *(*(a10 - 8 + 8 * v11) + 4 * v13);
      a5.i32[0] = v31->i32[0];
      v30.i32[0] = vadd_f32(vmla_f32(v30, *a5.f32, *a4.f32), 0).u32[0];
    }

    v10->i32[0] = v30.i32[0];
    v10 = (v10 + 4);
  }

  return result;
}

uint64_t resample_vertical<half,half,4,(AlphaStyle)3>(uint64_t result, double a2, double a3, double a4, double a5, float32x4_t _Q4, double a7, double a8, float32x4_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14)
{
  v17 = *a13;
  v18 = *(a13 + 8);
  v19 = *(result + 4);
  v20 = (result + 8);
  if (a12 >= 4)
  {
    v22 = 0;
    for (i = 4; i <= a12; i += 4)
    {
      v24.i32[0] = 0;
      v14.i64[0] = 0;
      v25 = 0;
      if (v19 >= 2)
      {
        v41 = (a14 + 8);
        v42 = 2;
        v26 = 0;
        result = v20;
        v27.i32[0] = 0;
        v28.i32[0] = 0;
        v15.i64[0] = 0;
        v29 = 0;
        v30.i32[0] = 0;
        v31 = 0;
        v16.i32[0] = 0;
        v32 = 0;
        v33.i32[0] = 0;
        v34 = 0;
        v35 = 0;
        v36.i32[0] = 0;
        v37.i32[0] = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          v43 = *(v41 - 1) + 10 * v22;
          v45 = *v43;
          v44 = *(v43 + 16);
          v46 = *(v43 + 32);
          v47 = *v41 + 10 * v22;
          v48 = *(v47 + 16);
          v49 = *result;
          result += 8;
          v37.i32[1] = v38;
          v37.i64[1] = __PAIR64__(v40, v39);
          v33.i32[1] = v34;
          v33.i64[1] = __PAIR64__(v36.u32[0], v35);
          v30.i32[1] = v31;
          v30.i64[1] = __PAIR64__(v32, v16.u32[0]);
          v27.i32[1] = v28.i32[0];
          v27.i64[1] = __PAIR64__(v29, v15.u32[0]);
          v24.i32[1] = v14.i32[0];
          v24.i64[1] = __PAIR64__(v26, v25);
          v24 = vmlaq_lane_f32(vmlaq_n_f32(v24, vcvtq_f32_f16(*v45.i8), v49.f32[0]), vcvtq_f32_f16(*v47), v49, 1);
          v26 = v24.i32[3];
          v25 = v24.i32[2];
          v14.i32[0] = v24.i32[1];
          v27 = vmlaq_lane_f32(vmlaq_n_f32(v27, vcvt_hight_f32_f16(v45), v49.f32[0]), vcvt_hight_f32_f16(*v47), v49, 1);
          v29 = v27.i32[3];
          v15.i32[0] = v27.i32[2];
          v28.i32[0] = v27.i32[1];
          v30 = vmlaq_lane_f32(vmlaq_n_f32(v30, vcvtq_f32_f16(*v44.i8), v49.f32[0]), vcvtq_f32_f16(*v48.i8), v49, 1);
          v32 = v30.i32[3];
          v16.i32[0] = v30.i32[2];
          v31 = v30.i32[1];
          v33 = vmlaq_lane_f32(vmlaq_n_f32(v33, vcvt_hight_f32_f16(v44), v49.f32[0]), vcvt_hight_f32_f16(v48), v49, 1);
          v36.i32[0] = v33.i32[3];
          v35 = v33.i32[2];
          v34 = v33.i32[1];
          v37 = vmlaq_lane_f32(vmlaq_n_f32(v37, vcvtq_f32_f16(v46), v49.f32[0]), vcvtq_f32_f16(*(v47 + 32)), v49, 1);
          v40 = v37.i32[3];
          v39 = v37.i32[2];
          v38 = v37.i32[1];
          v42 += 2;
          v41 += 2;
        }

        while (v42 <= v19);
      }

      else
      {
        v26 = 0;
        v27.i32[0] = 0;
        v28.i32[0] = 0;
        v15.i64[0] = 0;
        v29 = 0;
        v30.i32[0] = 0;
        v31 = 0;
        v16.i32[0] = 0;
        v32 = 0;
        v33.i32[0] = 0;
        v34 = 0;
        v35 = 0;
        v36.i32[0] = 0;
        v37.i32[0] = 0;
        v38 = 0;
        v39 = 0;
        result = v20;
        v40 = 0;
      }

      if (v19)
      {
        v50 = *(a14 - 8 + 8 * v19) + 10 * v22;
        v51 = *(v50 + 16);
        v37.i32[1] = v38;
        v37.i64[1] = __PAIR64__(v40, v39);
        v33.i32[1] = v34;
        v33.i64[1] = __PAIR64__(v36.u32[0], v35);
        v30.i32[1] = v31;
        v30.i64[1] = __PAIR64__(v32, v16.u32[0]);
        v27.i32[1] = v28.i32[0];
        v27.i64[1] = __PAIR64__(v29, v15.u32[0]);
        v24.i32[1] = v14.i32[0];
        v24.i64[1] = __PAIR64__(v26, v25);
        v24 = vaddq_f32(vmlaq_n_f32(v24, vcvtq_f32_f16(*v50), *result), 0);
        v26 = v24.i32[3];
        v25 = v24.i32[2];
        v14.i32[0] = v24.i32[1];
        v27 = vaddq_f32(vmlaq_n_f32(v27, vcvt_hight_f32_f16(*v50), *result), 0);
        v29 = v27.i32[3];
        v15.i32[0] = v27.i32[2];
        v28.i32[0] = v27.i32[1];
        v30 = vaddq_f32(vmlaq_n_f32(v30, vcvtq_f32_f16(*v51.i8), *result), 0);
        v32 = v30.i32[3];
        v16.i32[0] = v30.i32[2];
        v31 = v30.i32[1];
        v33 = vaddq_f32(vmlaq_n_f32(v33, vcvt_hight_f32_f16(v51), *result), 0);
        v36.i32[0] = v33.i32[3];
        v35 = v33.i32[2];
        v34 = v33.i32[1];
        v37 = vaddq_f32(vmlaq_n_f32(v37, vcvtq_f32_f16(*(v50 + 32)), *result), 0);
        v40 = v37.i32[3];
        v39 = v37.i32[2];
        v38 = v37.i32[1];
      }

      v27.i32[1] = v31;
      v27.i64[1] = __PAIR64__(v40, v35);
      v24.i32[1] = v14.i32[0];
      v24.i64[1] = __PAIR64__(v26, v25);
      v28.i32[1] = v15.i32[0];
      v28.i64[1] = __PAIR64__(v30.u32[0], v29);
      v16.i32[1] = v32;
      v16.i64[1] = __PAIR64__(v34, v33.u32[0]);
      v36.i32[1] = v37.i32[0];
      v36.i64[1] = __PAIR64__(v39, v38);
      __asm { FMOV            V4.4S, #1.0 }

      *v17 = vcvt_hight_f16_f32(vcvt_f16_f32(v24), v28);
      v17[1] = vcvt_hight_f16_f32(vcvt_f16_f32(v16), v36);
      v17 += 2;
      *v18++ = vcvt_f16_f32(vmaxnmq_f32(vminnmq_f32(vmaxnmq_f32(v27, 0), _Q4), vpmaxq_f32(vpmaxq_f32(v24, v28), vpmaxq_f32(v16, v36))));
      v22 += 4;
    }

    LODWORD(v21) = a12 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v21) = 0;
  }

  if (v21 < a12)
  {
    __asm { FMOV            V1.2S, #1.0 }

    v21 = v21;
    v57 = a12;
    do
    {
      v58.i32[0] = 0;
      if (v19 >= 2)
      {
        result = a14 + 8;
        v62 = 2;
        v61 = v20;
        a9.i64[0] = 0;
        v59.i32[0] = 0;
        v60 = 0;
        _Q4.i64[0] = 0;
        do
        {
          v63 = *(result - 8) + 10 * v21;
          v64 = *v63;
          v14.i16[0] = *(v63 + 8);
          v65 = (*result + 10 * v21);
          v15.i16[0] = v65[1].i16[0];
          v14 = vcvtq_f32_f16(*v14.f32);
          v15 = vcvtq_f32_f16(*v15.f32);
          v66 = *v61;
          v61 += 2;
          *v16.f32 = v66;
          v58.i32[1] = a9.i32[0];
          v58.i64[1] = __PAIR64__(v60, v59.u32[0]);
          _Q4 = vmlaq_lane_f32(vmlaq_f32(_Q4, v14, v16), v15, v66, 1);
          v58 = vmlaq_lane_f32(vmlaq_n_f32(v58, vcvtq_f32_f16(v64), v66.f32[0]), vcvtq_f32_f16(*v65), v66, 1);
          v60 = v58.i32[3];
          v59.i32[0] = v58.i32[2];
          a9.i32[0] = v58.i32[1];
          v62 += 2;
          result += 16;
        }

        while (v62 <= v19);
      }

      else
      {
        a9.i64[0] = 0;
        v59.i32[0] = 0;
        v60 = 0;
        v61 = v20;
        _Q4.i64[0] = 0;
      }

      if (v19)
      {
        result = *(a14 - 8 + 8 * v19) + 10 * v21;
        v14.i16[0] = *(result + 8);
        v14 = vcvtq_f32_f16(*v14.f32);
        v58.i32[1] = a9.i32[0];
        a9.f32[0] = *v61;
        v58.i64[1] = __PAIR64__(v60, v59.u32[0]);
        v67 = vmlaq_f32(_Q4, v14, a9);
        v58 = vaddq_f32(vmlaq_n_f32(v58, vcvtq_f32_f16(*result), *v61), 0);
        v60 = v58.i32[3];
        v59.i32[0] = v58.i32[2];
        a9.i32[0] = v58.i32[1];
        _Q4 = vaddq_f32(v67, 0);
      }

      v68.i64[0] = __PAIR64__(a9.u32[0], v58.u32[0]);
      v68.i64[1] = __PAIR64__(v60, v59.u32[0]);
      v58.i32[1] = a9.i32[0];
      v59.i32[1] = v60;
      _S3 = vmaxnm_f32(vminnm_f32(vmaxnm_f32(*_Q4.f32, 0), _D1), vpmax_f32(vpmax_f32(*v58.f32, v59), 0)).u32[0];
      *v17->i8 = vcvt_f16_f32(v68);
      v17 = (v17 + 8);
      __asm { FCVT            H3, S3 }

      v18->i16[0] = _S3;
      v18 = (v18 + 2);
      ++v21;
    }

    while (v21 != v57);
  }

  return result;
}

uint64_t resample_vertical<half,half,3,(AlphaStyle)3>(uint64_t result, int8x16_t _Q0, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = *a6;
  v8 = *(a6 + 8);
  v9 = *(result + 4);
  v10 = (result + 8);
  __asm { FMOV            V0.2S, #1.0 }

  if (a5 >= 2)
  {
    v16 = 0;
    for (i = 2; i <= a5; i += 2)
    {
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = v10;
      if (v9 >= 2)
      {
        result = 8 * v16;
        v21 = (a7 + 8);
        v22 = 2;
        v20 = v10;
        do
        {
          v23 = *(*(v21 - 1) + 8 * v16);
          v24 = *(*v21 + 8 * v16);
          v25 = *v20;
          v20 += 2;
          v19 = vmlaq_lane_f32(vmlaq_n_f32(v19, vcvt_hight_f32_f16(v23), v25.f32[0]), vcvt_hight_f32_f16(v24), v25, 1);
          v18 = vmlaq_lane_f32(vmlaq_n_f32(v18, vcvtq_f32_f16(*v23.i8), v25.f32[0]), vcvtq_f32_f16(*v24.i8), v25, 1);
          v22 += 2;
          v21 += 2;
        }

        while (v22 <= v9);
      }

      if (v9)
      {
        result = *(a7 - 8 + 8 * v9);
        v26 = *(result + 8 * v16);
        v19 = vaddq_f32(vmlaq_n_f32(v19, vcvt_hight_f32_f16(v26), *v20), 0);
        v18 = vaddq_f32(vmlaq_n_f32(v18, vcvtq_f32_f16(*v26.i8), *v20), 0);
      }

      v27 = v18;
      v27.i32[3] = v19.i32[0];
      v28 = vextq_s8(v19, _Q0, 4uLL);
      v29 = vuzp2q_s32(vuzp2q_s32(v18, v19), v18).u64[0];
      v30 = vpmaxq_f32(v18, v19);
      v31 = vminnm_f32(vmaxnm_f32(v29, 0), *_Q0.i8);
      *v30.f32 = vmaxnm_f32(v31, vpmax_f32(*v30.f32, *&vextq_s8(v30, v30, 8uLL)));
      *v7 = vcvt_f16_f32(v27);
      v7[1].i32[0] = vcvt_hight_f16_f32(*&v31, v28).i32[2];
      v7 = (v7 + 12);
      *v8++ = vcvt_f16_f32(v30).u32[0];
      v16 += 2;
    }

    LODWORD(v15) = a5 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 < a5)
  {
    v15 = v15;
    do
    {
      v32 = 0uLL;
      v33 = v10;
      if (v9 >= 2)
      {
        result = a7 + 8;
        v34 = 2;
        v33 = v10;
        do
        {
          v35 = *v33;
          v33 += 2;
          v32 = vmlaq_lane_f32(vmlaq_n_f32(v32, vcvtq_f32_f16(*(*(result - 8) + 8 * (v15 & 0x3FFFFFFF))), v35.f32[0]), vcvtq_f32_f16(*(*result + 8 * (v15 & 0x3FFFFFFF))), v35, 1);
          v34 += 2;
          result += 16;
        }

        while (v34 <= v9);
      }

      if (v9)
      {
        result = 8 * (v15 & 0x3FFFFFFF);
        v32 = vaddq_f32(vmlaq_n_f32(v32, vcvtq_f32_f16(*(*(a7 - 8 + 8 * v9) + result)), *v33), 0);
      }

      _S4 = vmaxnm_f32(vminnm_f32(vmaxnm_f32(vdup_laneq_s32(v32, 3), 0), *_Q0.i8), vpmax_f32(vpmax_f32(*v32.f32, *&vextq_s8(v32, v32, 8uLL)), *_Q0.i8)).u32[0];
      v37 = vcvt_f16_f32(v32);
      __asm { FCVT            H4, S4 }

      v7->i32[0] = v37.i32[0];
      v7->i16[2] = v37.i16[2];
      v7 = (v7 + 6);
      *v8 = _S4;
      v8 = (v8 + 2);
      ++v15;
    }

    while (v15 != a5);
  }

  return result;
}

uint64_t resample_vertical<half,half,1,(AlphaStyle)3>(uint64_t result, double a2, double a3, double a4, float16x4_t _D3, float32x4_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11)
{
  v11 = *a10;
  v12 = *(a10 + 8);
  v13 = *(result + 4);
  v14 = (result + 8);
  if (a9 >= 4)
  {
    v16 = 0;
    v17 = 4;
    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = v14;
      if (v13 >= 2)
      {
        result = 4 * v16;
        v26 = (a11 + 8);
        v27 = 2;
        v25 = v14;
        do
        {
          v28 = *(*(v26 - 1) + 4 * v16);
          v29 = *(*v26 + 4 * v16);
          v30 = *v25;
          v25 += 2;
          v24 = vmlaq_lane_f32(vmlaq_n_f32(v24, vcvt_hight_f32_f16(v28), v30.f32[0]), vcvt_hight_f32_f16(v29), v30, 1);
          v23 = vmlaq_lane_f32(vmlaq_n_f32(v23, vcvtq_f32_f16(*v28.i8), v30.f32[0]), vcvtq_f32_f16(*v29.i8), v30, 1);
          v27 += 2;
          v26 += 2;
        }

        while (v27 <= v13);
      }

      if (v13)
      {
        result = *(a11 - 8 + 8 * v13);
        v31 = *(result + 4 * v16);
        v24 = vaddq_f32(vmlaq_n_f32(v24, vcvt_hight_f32_f16(v31), *v25), 0);
        v23 = vaddq_f32(vmlaq_n_f32(v23, vcvtq_f32_f16(*v31.i8), *v25), 0);
      }

      a6 = vuzp1q_s32(v23, v24);
      v32 = vmaxnmq_f32(vminnmq_f32(vmaxnmq_f32(vuzp2q_s32(v23, v24), 0), _Q1), a6);
      _D3 = vcvt_f16_f32(a6);
      *v11++ = *&_D3;
      *v12++ = vcvt_f16_f32(v32);
      v17 += 4;
      v16 += 4;
    }

    while (v17 <= a9);
    LODWORD(v15) = a9 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 < a9)
  {
    v15 = v15;
    __asm { FMOV            V1.2S, #1.0 }

    do
    {
      _D2 = 0;
      v35 = v14;
      if (v13 >= 2)
      {
        _D2 = 0;
        result = a11 + 8;
        v36 = 2;
        v35 = v14;
        do
        {
          _D3.i32[0] = *(*(result - 8) + 4 * v15);
          a6.i32[0] = *(*result + 4 * v15);
          _D3 = vcvtq_f32_f16(_D3).u64[0];
          v37 = *v35;
          v35 += 2;
          a6.i64[0] = vcvtq_f32_f16(*a6.f32).u64[0];
          _D2 = vmla_lane_f32(vmla_n_f32(_D2, _D3, v37.f32[0]), *a6.f32, v37, 1);
          v36 += 2;
          result += 16;
        }

        while (v36 <= v13);
      }

      if (v13)
      {
        _D3.i32[0] = *(*(a11 - 8 + 8 * v13) + 4 * v15);
        _D2 = vadd_f32(vmla_n_f32(_D2, *&vcvtq_f32_f16(_D3), *v35), 0);
      }

      _D3 = vmaxnm_f32(vminnm_f32(vmaxnm_f32(vdup_lane_s32(_D2, 1), 0), _D1), _D2);
      __asm { FCVT            H2, S2 }

      *v11 = _H2;
      v11 = (v11 + 2);
      __asm { FCVT            H2, S3 }

      v12->i16[0] = _H2;
      v12 = (v12 + 2);
      ++v15;
    }

    while (v15 != a9);
  }

  return result;
}

uint64_t resample_vertical<half,half,5,(AlphaStyle)2>(uint64_t result, double a2, double a3, double a4, double a5, float32x4_t a6, double a7, double a8, float32x4_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t *a13, uint64_t a14)
{
  v17 = *a13;
  v18 = *(result + 4);
  v19 = (result + 8);
  if (a12 >= 4)
  {
    v21 = 0;
    for (i = 4; i <= a12; i += 4)
    {
      v23.i32[0] = 0;
      v24 = 0;
      v25 = 0;
      if (v18 >= 2)
      {
        result = 5 * v21;
        v41 = (a14 + 8);
        v42 = 2;
        v15.i64[0] = 0;
        v39 = v19;
        a9.i32[0] = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v14.i32[0] = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32.i32[0] = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36.i32[0] = 0;
        v37 = 0;
        v38 = 0;
        v40 = 0;
        do
        {
          v43 = *(v41 - 1) + 10 * v21;
          v45 = *v43;
          v44 = *(v43 + 16);
          v46 = *(v43 + 32);
          v47 = *v41 + 10 * v21;
          v48 = *(v47 + 16);
          v49 = *v39;
          v39 += 2;
          v36.i32[1] = v37;
          v36.i64[1] = __PAIR64__(v40, v38);
          v32.i32[1] = v33;
          v32.i64[1] = __PAIR64__(v35, v34);
          v14.i32[1] = v29;
          v14.i64[1] = __PAIR64__(v31, v30);
          a9.i32[1] = v26;
          a9.i64[1] = __PAIR64__(v28, v27);
          v23.i32[1] = v24;
          v23.i64[1] = __PAIR64__(v15.u32[0], v25);
          v23 = vmlaq_lane_f32(vmlaq_n_f32(v23, vcvtq_f32_f16(*v45.i8), v49.f32[0]), vcvtq_f32_f16(*v47), v49, 1);
          v15.i32[0] = v23.i32[3];
          v25 = v23.i32[2];
          v24 = v23.i32[1];
          a9 = vmlaq_lane_f32(vmlaq_n_f32(a9, vcvt_hight_f32_f16(v45), v49.f32[0]), vcvt_hight_f32_f16(*v47), v49, 1);
          v28 = a9.u32[3];
          v27 = a9.u32[2];
          v26 = a9.u32[1];
          v14 = vmlaq_lane_f32(vmlaq_n_f32(v14, vcvtq_f32_f16(*v44.i8), v49.f32[0]), vcvtq_f32_f16(*v48.i8), v49, 1);
          v31 = v14.i32[3];
          v30 = v14.i32[2];
          v29 = v14.i32[1];
          v32 = vmlaq_lane_f32(vmlaq_n_f32(v32, vcvt_hight_f32_f16(v44), v49.f32[0]), vcvt_hight_f32_f16(v48), v49, 1);
          v35 = v32.i32[3];
          v34 = v32.i32[2];
          v33 = v32.i32[1];
          v36 = vmlaq_lane_f32(vmlaq_n_f32(v36, vcvtq_f32_f16(v46), v49.f32[0]), vcvtq_f32_f16(*(v47 + 32)), v49, 1);
          v40 = v36.i32[3];
          v38 = v36.i32[2];
          v37 = v36.i32[1];
          v42 += 2;
          v41 += 2;
        }

        while (v42 <= v18);
      }

      else
      {
        v15.i64[0] = 0;
        a9.i32[0] = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v14.i32[0] = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32.i32[0] = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36.i32[0] = 0;
        v37 = 0;
        v38 = 0;
        v39 = v19;
        v40 = 0;
      }

      if (v18)
      {
        result = *(a14 - 8 + 8 * v18) + 10 * v21;
        v50 = *(result + 16);
        v36.i32[1] = v37;
        v36.i64[1] = __PAIR64__(v40, v38);
        v32.i32[1] = v33;
        v32.i64[1] = __PAIR64__(v35, v34);
        v14.i32[1] = v29;
        v14.i64[1] = __PAIR64__(v31, v30);
        a9.i32[1] = v26;
        a9.i64[1] = __PAIR64__(v28, v27);
        v23.i32[1] = v24;
        v23.i64[1] = __PAIR64__(v15.u32[0], v25);
        v23 = vaddq_f32(vmlaq_n_f32(v23, vcvtq_f32_f16(*result), *v39), 0);
        v15.i32[0] = v23.i32[3];
        v25 = v23.i32[2];
        v24 = v23.i32[1];
        a9 = vaddq_f32(vmlaq_n_f32(a9, vcvt_hight_f32_f16(*result), *v39), 0);
        v28 = a9.u32[3];
        v27 = a9.u32[2];
        v26 = a9.u32[1];
        v14 = vaddq_f32(vmlaq_n_f32(v14, vcvtq_f32_f16(*v50.i8), *v39), 0);
        v31 = v14.i32[3];
        v30 = v14.i32[2];
        v29 = v14.i32[1];
        v32 = vaddq_f32(vmlaq_n_f32(v32, vcvt_hight_f32_f16(v50), *v39), 0);
        v35 = v32.i32[3];
        v34 = v32.i32[2];
        v33 = v32.i32[1];
        v36 = vaddq_f32(vmlaq_n_f32(v36, vcvtq_f32_f16(*(result + 32)), *v39), 0);
        v40 = v36.i32[3];
        v38 = v36.i32[2];
        v37 = v36.i32[1];
      }

      v51.i64[0] = __PAIR64__(v29, a9.u32[0]);
      v51.i64[1] = __PAIR64__(v40, v34);
      v52.i64[0] = __PAIR64__(v14.u32[0], v15.u32[0]);
      v52.i64[1] = __PAIR64__(v38, v33);
      v53 = vmaxnmq_f32(v51, v52);
      v52.i64[0] = __PAIR64__(v28, v25);
      v52.i64[1] = __PAIR64__(v37, v32.u32[0]);
      v54 = vmaxnmq_f32(v53, v52);
      v52.i64[0] = __PAIR64__(v27, v24);
      v52.i64[1] = __PAIR64__(v36.u32[0], v31);
      v55 = vmaxnmq_f32(v54, v52);
      v52.i64[0] = __PAIR64__(v26, v23.u32[0]);
      v52.i64[1] = __PAIR64__(v35, v30);
      v56 = vmaxnmq_f32(vmaxnmq_f32(v55, v52), 0);
      v57.i64[0] = 0x80000000800000;
      v57.i64[1] = 0x80000000800000;
      v58 = vdupq_lane_s32(0x80000000800000, 0);
      v59 = v58;
      v59.i32[3] = v56.i32[3];
      v60 = v58;
      v60.i32[2] = v56.i32[2];
      v61 = v58;
      v61.i32[1] = v56.i32[1];
      v58.i32[0] = v56.i32[0];
      v23.i32[1] = v24;
      v23.i64[1] = __PAIR64__(v15.u32[0], v25);
      a9.i32[1] = v26;
      a9.i64[1] = __PAIR64__(v28, v27);
      v14.i32[1] = v29;
      v14.i64[1] = __PAIR64__(v31, v30);
      v32.i32[1] = v33;
      v32.i64[1] = __PAIR64__(v35, v34);
      v36.i32[1] = v37;
      v36.i64[1] = __PAIR64__(v40, v38);
      v62 = vminnmq_f32(vmaxnmq_f32(a9, v58), xmmword_18439C480);
      a9.i64[1] = 0x7F7FFFFF3F800000;
      a6 = vminnmq_f32(vmaxnmq_f32(v32, v60), xmmword_18439C4A0);
      *v17 = vcvt_hight_f16_f32(vcvt_f16_f32(vminnmq_f32(vmaxnmq_f32(v23, v57), vnegq_f32(v57))), v62);
      *(v17 + 16) = vcvt_hight_f16_f32(vcvt_f16_f32(vminnmq_f32(vmaxnmq_f32(v14, v61), xmmword_18439C490)), a6);
      *(v17 + 32) = vcvt_f16_f32(vminnmq_f32(vmaxnmq_f32(v36, v59), xmmword_18439C4B0));
      v17 += 40;
      v21 += 4;
    }

    LODWORD(v20) = a12 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 < a12)
  {
    v20 = v20;
    do
    {
      v63.i32[0] = 0;
      if (v18 >= 2)
      {
        v67 = (a14 + 8);
        result = 2;
        v66 = v19;
        a9.i64[0] = 0;
        v64 = 0;
        v65 = 0;
        a6.i64[0] = 0;
        do
        {
          v68 = *(v67 - 1) + 10 * v20;
          v69 = *v68;
          v14.i16[0] = *(v68 + 8);
          v70 = (*v67 + 10 * v20);
          v15.i16[0] = v70[1].i16[0];
          v14 = vcvtq_f32_f16(*v14.f32);
          v15 = vcvtq_f32_f16(*v15.f32);
          v71 = *v66;
          v66 += 2;
          *v16.f32 = v71;
          v63.i32[1] = a9.i32[0];
          v63.i64[1] = __PAIR64__(v65, v64);
          a6 = vmlaq_lane_f32(vmlaq_f32(a6, v14, v16), v15, v71, 1);
          v63 = vmlaq_lane_f32(vmlaq_n_f32(v63, vcvtq_f32_f16(v69), v71.f32[0]), vcvtq_f32_f16(*v70), v71, 1);
          v65 = v63.i32[3];
          v64 = v63.i32[2];
          a9.i32[0] = v63.i32[1];
          result += 2;
          v67 += 2;
        }

        while (result <= v18);
      }

      else
      {
        a9.i64[0] = 0;
        v64 = 0;
        v65 = 0;
        v66 = v19;
        a6.i64[0] = 0;
      }

      if (v18)
      {
        v72 = (*(a14 - 8 + 8 * v18) + 10 * v20);
        v14.i16[0] = v72[1].i16[0];
        v14 = vcvtq_f32_f16(*v14.f32);
        v63.i32[1] = a9.i32[0];
        a9.f32[0] = *v66;
        v63.i64[1] = __PAIR64__(v65, v64);
        v73 = vmlaq_f32(a6, v14, a9);
        v63 = vaddq_f32(vmlaq_n_f32(v63, vcvtq_f32_f16(*v72), *v66), 0);
        v65 = v63.i32[3];
        v64 = v63.i32[2];
        a9.i32[0] = v63.i32[1];
        a6 = vaddq_f32(v73, 0);
      }

      v63.i32[1] = a9.i32[0];
      v63.i64[1] = __PAIR64__(v65, v64);
      v74 = vmaxvq_f32(vmaxnmq_f32(v63, a6));
      v75 = fmaxf(v74, 0.0);
      if (v74 <= 1.0)
      {
        v76 = v75;
      }

      else
      {
        v76 = 1.0;
      }

      a6.f32[0] = v76;
      a6 = vcvt_hight_f16_f32(*a6.f32, a6);
      *v17 = vcvt_f16_f32(v63);
      *(v17 + 8) = a6.i16[4];
      v17 += 10;
      ++v20;
    }

    while (v20 != a12);
  }

  return result;
}

uint64_t resample_vertical<half,half,4,(AlphaStyle)2>(uint64_t result, uint64_t a2, uint64_t a3, int a4, float16x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12 = vdupq_lane_s32(0x80000000800000, 0);
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = *(*(result - 8) + 8 * v10);
          v18 = *(*result + 8 * v10);
          v19 = *v15;
          v15 += 2;
          v14 = vmlaq_lane_f32(vmlaq_n_f32(v14, vcvt_hight_f32_f16(v17), v19.f32[0]), vcvt_hight_f32_f16(v18), v19, 1);
          v13 = vmlaq_lane_f32(vmlaq_n_f32(v13, vcvtq_f32_f16(*v17.i8), v19.f32[0]), vcvtq_f32_f16(*v18.i8), v19, 1);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        result = 8 * v10;
        v20 = *(*(a6 - 8 + 8 * v7) + 8 * v10);
        v14 = vaddq_f32(vmlaq_n_f32(v14, vcvt_hight_f32_f16(v20), *v15), 0);
        v13 = vaddq_f32(vmlaq_n_f32(v13, vcvtq_f32_f16(*v20.i8), *v15), 0);
      }

      v21 = vmaxnmq_f32(vuzp1q_s32(v13, v14), vuzp2q_s32(v13, v14));
      v22 = vextq_s8(v21, v21, 8uLL).u64[0];
      *v21.i8 = vmaxnm_f32(vmaxnm_f32(vzip1_s32(*v21.i8, v22), vzip2_s32(*v21.i8, v22)), 0);
      v23 = v12;
      v23.i32[3] = v21.i32[1];
      *v6++ = vcvt_hight_f16_f32(vcvt_f16_f32(vminnmq_f32(vmaxnmq_f32(v13, vextq_s8(v12, v21, 4uLL)), xmmword_18439C4B0)), vminnmq_f32(vmaxnmq_f32(v14, v23), xmmword_18439C4B0));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      v24 = 0uLL;
      v25 = v8;
      if (v7 >= 2)
      {
        v26 = (a6 + 8);
        result = 2;
        v25 = v8;
        do
        {
          v27 = *v25;
          v25 += 2;
          v24 = vmlaq_lane_f32(vmlaq_n_f32(v24, vcvtq_f32_f16(*(*(v26 - 1) + 8 * (v9 & 0x3FFFFFFF))), v27.f32[0]), vcvtq_f32_f16(*(*v26 + 8 * (v9 & 0x3FFFFFFF))), v27, 1);
          result += 2;
          v26 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v24 = vaddq_f32(vmlaq_n_f32(v24, vcvtq_f32_f16(*(*(a6 - 8 + 8 * v7) + 8 * (v9 & 0x3FFFFFFF))), *v25), 0);
      }

      v28 = vmaxvq_f32(v24);
      v29 = fmaxf(v28, 0.0);
      if (v28 <= 1.0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 1.0;
      }

      v24.f32[3] = v30;
      *v6->i8 = vcvt_f16_f32(v24);
      v6 = (v6 + 8);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<half,half,2,(AlphaStyle)2>(uint64_t result, double a2, double a3, double a4, float32x4_t a5, float16x4_t a6, __n128 a7, uint64_t a8, uint64_t a9, int a10, __n128 **a11, uint64_t a12)
{
  v12 = *a11;
  v13 = *(result + 4);
  v14 = (result + 8);
  if (a10 >= 4)
  {
    v16 = 0;
    v17 = 4;
    v18.i64[0] = 0x80000000800000;
    v18.i64[1] = 0x80000000800000;
    v19 = vdupq_lane_s32(0x80000000800000, 0);
    a6.i32[1] = 1065353216;
    do
    {
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = v14;
      if (v13 >= 2)
      {
        result = a12 + 8;
        v23 = 2;
        v22 = v14;
        do
        {
          v24 = *(*(result - 8) + 4 * v16);
          v25 = *(*result + 4 * v16);
          v26 = *v22;
          v22 += 2;
          v21 = vmlaq_lane_f32(vmlaq_n_f32(v21, vcvt_hight_f32_f16(v24), v26.f32[0]), vcvt_hight_f32_f16(v25), v26, 1);
          v20 = vmlaq_lane_f32(vmlaq_n_f32(v20, vcvtq_f32_f16(*v24.i8), v26.f32[0]), vcvtq_f32_f16(*v25.i8), v26, 1);
          v23 += 2;
          result += 16;
        }

        while (v23 <= v13);
      }

      if (v13)
      {
        result = 4 * v16;
        v27 = *(*(a12 - 8 + 8 * v13) + 4 * v16);
        v21 = vaddq_f32(vmlaq_n_f32(v21, vcvt_hight_f32_f16(v27), *v22), 0);
        v20 = vaddq_f32(vmlaq_n_f32(v20, vcvtq_f32_f16(*v27.i8), *v22), 0);
      }

      v28 = vmaxnmq_f32(vmaxnmq_f32(vuzp1q_s32(v20, v21), vuzp2q_s32(v20, v21)), 0);
      v29 = vzip1q_s32(v18, v28);
      v29.i32[2] = -8388609;
      a7 = vcvt_hight_f16_f32(vcvt_f16_f32(vminnmq_f32(vmaxnmq_f32(v20, v29), xmmword_18439C4C0)), vminnmq_f32(vmaxnmq_f32(v21, vzip2q_s32(v19, v28)), xmmword_18439C4C0));
      *v12++ = a7;
      v17 += 4;
      v16 += 4;
    }

    while (v17 <= a10);
    LODWORD(v15) = a10 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 < a10)
  {
    v15 = v15;
    do
    {
      a5.i64[0] = 0;
      v30 = v14;
      if (v13 >= 2)
      {
        a5.i64[0] = 0;
        v31 = (a12 + 8);
        result = 2;
        v30 = v14;
        do
        {
          a6.i32[0] = *(*(v31 - 1) + 4 * v15);
          a7.n128_u32[0] = *(*v31 + 4 * v15);
          a6 = vcvtq_f32_f16(a6).u64[0];
          v32 = *v30;
          v30 += 2;
          a7.n128_u64[0] = vcvtq_f32_f16(a7.n128_u64[0]).u64[0];
          *a5.f32 = vmla_lane_f32(vmla_n_f32(*a5.f32, a6, v32.f32[0]), a7.n128_u64[0], v32, 1);
          result += 2;
          v31 += 2;
        }

        while (result <= v13);
      }

      if (v13)
      {
        a6.i32[0] = *(*(a12 - 8 + 8 * v13) + 4 * v15);
        a6 = vcvtq_f32_f16(a6).u64[0];
        *a5.f32 = vadd_f32(vmla_n_f32(*a5.f32, a6, *v30), 0);
      }

      v33 = vpmax_f32(*a5.f32);
      v34 = fmaxf(v33, 0.0);
      if (v33 <= 1.0)
      {
        v35 = v34;
      }

      else
      {
        v35 = 1.0;
      }

      a5.f32[1] = v35;
      v12->n128_u32[0] = vcvt_f16_f32(a5).u32[0];
      v12 = (v12 + 4);
      ++v15;
    }

    while (v15 != a10);
  }

  return result;
}

uint64_t resample_vertical<half,half,5,(AlphaStyle)1>(uint64_t result, double a2, double a3, double a4, double a5, float32x4_t a6, double a7, double a8, float32x4_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t *a13, uint64_t a14)
{
  v17 = *a13;
  v18 = *(result + 4);
  v19 = (result + 8);
  if (a12 >= 4)
  {
    v21 = 0;
    for (i = 4; i <= a12; i += 4)
    {
      v23.i32[0] = 0;
      v24 = 0;
      v25 = 0;
      if (v18 >= 2)
      {
        result = 5 * v21;
        v41 = (a14 + 8);
        v42 = 2;
        v15.i64[0] = 0;
        v39 = v19;
        a9.i32[0] = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v14.i32[0] = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32.i32[0] = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36.i32[0] = 0;
        v37 = 0;
        v38 = 0;
        v40 = 0;
        do
        {
          v43 = *(v41 - 1) + 10 * v21;
          v45 = *v43;
          v44 = *(v43 + 16);
          v46 = *(v43 + 32);
          v47 = *v41 + 10 * v21;
          v48 = *(v47 + 16);
          v49 = *v39;
          v39 += 2;
          v36.i32[1] = v37;
          v36.i64[1] = __PAIR64__(v40, v38);
          v32.i32[1] = v33;
          v32.i64[1] = __PAIR64__(v35, v34);
          v14.i32[1] = v29;
          v14.i64[1] = __PAIR64__(v31, v30);
          a9.i32[1] = v26;
          a9.i64[1] = __PAIR64__(v28, v27);
          v23.i32[1] = v24;
          v23.i64[1] = __PAIR64__(v15.u32[0], v25);
          v23 = vmlaq_lane_f32(vmlaq_n_f32(v23, vcvtq_f32_f16(*v45.i8), v49.f32[0]), vcvtq_f32_f16(*v47), v49, 1);
          v15.i32[0] = v23.i32[3];
          v25 = v23.i32[2];
          v24 = v23.i32[1];
          a9 = vmlaq_lane_f32(vmlaq_n_f32(a9, vcvt_hight_f32_f16(v45), v49.f32[0]), vcvt_hight_f32_f16(*v47), v49, 1);
          v28 = a9.u32[3];
          v27 = a9.u32[2];
          v26 = a9.u32[1];
          v14 = vmlaq_lane_f32(vmlaq_n_f32(v14, vcvtq_f32_f16(*v44.i8), v49.f32[0]), vcvtq_f32_f16(*v48.i8), v49, 1);
          v31 = v14.i32[3];
          v30 = v14.i32[2];
          v29 = v14.i32[1];
          v32 = vmlaq_lane_f32(vmlaq_n_f32(v32, vcvt_hight_f32_f16(v44), v49.f32[0]), vcvt_hight_f32_f16(v48), v49, 1);
          v35 = v32.i32[3];
          v34 = v32.i32[2];
          v33 = v32.i32[1];
          v36 = vmlaq_lane_f32(vmlaq_n_f32(v36, vcvtq_f32_f16(v46), v49.f32[0]), vcvtq_f32_f16(*(v47 + 32)), v49, 1);
          v40 = v36.i32[3];
          v38 = v36.i32[2];
          v37 = v36.i32[1];
          v42 += 2;
          v41 += 2;
        }

        while (v42 <= v18);
      }

      else
      {
        v15.i64[0] = 0;
        a9.i32[0] = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v14.i32[0] = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32.i32[0] = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36.i32[0] = 0;
        v37 = 0;
        v38 = 0;
        v39 = v19;
        v40 = 0;
      }

      if (v18)
      {
        result = *(a14 - 8 + 8 * v18) + 10 * v21;
        v50 = *(result + 16);
        v36.i32[1] = v37;
        v36.i64[1] = __PAIR64__(v40, v38);
        v32.i32[1] = v33;
        v32.i64[1] = __PAIR64__(v35, v34);
        v14.i32[1] = v29;
        v14.i64[1] = __PAIR64__(v31, v30);
        a9.i32[1] = v26;
        a9.i64[1] = __PAIR64__(v28, v27);
        v23.i32[1] = v24;
        v23.i64[1] = __PAIR64__(v15.u32[0], v25);
        v23 = vaddq_f32(vmlaq_n_f32(v23, vcvtq_f32_f16(*result), *v39), 0);
        v15.i32[0] = v23.i32[3];
        v25 = v23.i32[2];
        v24 = v23.i32[1];
        a9 = vaddq_f32(vmlaq_n_f32(a9, vcvt_hight_f32_f16(*result), *v39), 0);
        v28 = a9.u32[3];
        v27 = a9.u32[2];
        v26 = a9.u32[1];
        v14 = vaddq_f32(vmlaq_n_f32(v14, vcvtq_f32_f16(*v50.i8), *v39), 0);
        v31 = v14.i32[3];
        v30 = v14.i32[2];
        v29 = v14.i32[1];
        v32 = vaddq_f32(vmlaq_n_f32(v32, vcvt_hight_f32_f16(v50), *v39), 0);
        v35 = v32.i32[3];
        v34 = v32.i32[2];
        v33 = v32.i32[1];
        v36 = vaddq_f32(vmlaq_n_f32(v36, vcvtq_f32_f16(*(result + 32)), *v39), 0);
        v40 = v36.i32[3];
        v38 = v36.i32[2];
        v37 = v36.i32[1];
      }

      v51.i64[0] = __PAIR64__(v29, a9.u32[0]);
      v51.i64[1] = __PAIR64__(v40, v34);
      v52.i64[0] = __PAIR64__(v14.u32[0], v15.u32[0]);
      v52.i64[1] = __PAIR64__(v38, v33);
      v53 = vmaxnmq_f32(v51, v52);
      v52.i64[0] = __PAIR64__(v28, v25);
      v52.i64[1] = __PAIR64__(v37, v32.u32[0]);
      v54 = vmaxnmq_f32(v53, v52);
      v52.i64[0] = __PAIR64__(v27, v24);
      v52.i64[1] = __PAIR64__(v36.u32[0], v31);
      v55 = vmaxnmq_f32(v54, v52);
      v52.i64[0] = __PAIR64__(v26, v23.u32[0]);
      v52.i64[1] = __PAIR64__(v35, v30);
      v56 = vmaxnmq_f32(vmaxnmq_f32(v55, v52), 0);
      v57.i64[0] = 0x80000000800000;
      v57.i64[1] = 0x80000000800000;
      v58 = vdupq_lane_s32(0x80000000800000, 0);
      v59 = v58;
      v59.i32[3] = v56.i32[3];
      v60 = v58;
      v60.i32[2] = v56.i32[2];
      v61 = v58;
      v61.i32[1] = v56.i32[1];
      v58.i32[0] = v56.i32[0];
      v23.i32[1] = v24;
      v23.i64[1] = __PAIR64__(v15.u32[0], v25);
      v62 = vmaxnmq_f32(v23, v58);
      a9.i32[1] = v26;
      a9.i64[1] = __PAIR64__(v28, v27);
      v14.i32[1] = v29;
      v14.i64[1] = __PAIR64__(v31, v30);
      v63 = vmaxnmq_f32(a9, v61);
      v32.i32[1] = v33;
      v32.i64[1] = __PAIR64__(v35, v34);
      v36.i32[1] = v37;
      v36.i64[1] = __PAIR64__(v40, v38);
      a9.i64[1] = 0x7F7FFFFF3F800000;
      a6 = vminnmq_f32(vmaxnmq_f32(v14, v60), xmmword_18439C4A0);
      *v17 = vcvt_hight_f16_f32(vcvt_f16_f32(vminnmq_f32(v62, xmmword_18439C480)), vminnmq_f32(v63, xmmword_18439C490));
      *(v17 + 16) = vcvt_hight_f16_f32(vcvt_f16_f32(a6), vminnmq_f32(vmaxnmq_f32(v32, v59), xmmword_18439C4B0));
      *(v17 + 32) = vcvt_f16_f32(vminnmq_f32(vmaxnmq_f32(v36, v57), vnegq_f32(v57)));
      v17 += 40;
      v21 += 4;
    }

    LODWORD(v20) = a12 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 < a12)
  {
    v20 = v20;
    do
    {
      v64.i32[0] = 0;
      if (v18 >= 2)
      {
        v68 = (a14 + 8);
        result = 2;
        v67 = v19;
        a9.i64[0] = 0;
        v65 = 0;
        v66 = 0;
        a6.i64[0] = 0;
        do
        {
          v69 = *(v68 - 1) + 10 * v20;
          v70 = *v69;
          v14.i16[0] = *(v69 + 8);
          v71 = (*v68 + 10 * v20);
          v15.i16[0] = v71[1].i16[0];
          v14 = vcvtq_f32_f16(*v14.f32);
          v15 = vcvtq_f32_f16(*v15.f32);
          v72 = *v67;
          v67 += 2;
          *v16.f32 = v72;
          v64.i32[1] = a9.i32[0];
          v64.i64[1] = __PAIR64__(v66, v65);
          a6 = vmlaq_lane_f32(vmlaq_f32(a6, v14, v16), v15, v72, 1);
          v64 = vmlaq_lane_f32(vmlaq_n_f32(v64, vcvtq_f32_f16(v70), v72.f32[0]), vcvtq_f32_f16(*v71), v72, 1);
          v66 = v64.i32[3];
          v65 = v64.i32[2];
          a9.i32[0] = v64.i32[1];
          result += 2;
          v68 += 2;
        }

        while (result <= v18);
      }

      else
      {
        a9.i64[0] = 0;
        v65 = 0;
        v66 = 0;
        v67 = v19;
        a6.i64[0] = 0;
      }

      if (v18)
      {
        v73 = (*(a14 - 8 + 8 * v18) + 10 * v20);
        v14.i16[0] = v73[1].i16[0];
        v14 = vcvtq_f32_f16(*v14.f32);
        v64.i32[1] = a9.i32[0];
        a9.f32[0] = *v67;
        v64.i64[1] = __PAIR64__(v66, v65);
        v74 = vmlaq_f32(a6, v14, a9);
        v64 = vaddq_f32(vmlaq_n_f32(v64, vcvtq_f32_f16(*v73), *v67), 0);
        v66 = v64.i32[3];
        v65 = v64.i32[2];
        a9.i32[0] = v64.i32[1];
        a6 = vaddq_f32(v74, 0);
      }

      v64.i32[1] = a9.i32[0];
      v64.i64[1] = __PAIR64__(v66, v65);
      v75 = vmaxvq_f32(vmaxnmq_f32(v64, a6));
      v76 = fmaxf(v75, 0.0);
      if (v75 <= 1.0)
      {
        v77 = v76;
      }

      else
      {
        v77 = 1.0;
      }

      v64.f32[0] = v77;
      a6 = vcvt_hight_f16_f32(*a6.f32, a6);
      *v17 = vcvt_f16_f32(v64);
      *(v17 + 8) = a6.i16[4];
      v17 += 10;
      ++v20;
    }

    while (v20 != a12);
  }

  return result;
}

uint64_t resample_vertical<half,half,4,(AlphaStyle)1>(uint64_t result, uint64_t a2, uint64_t a3, int a4, float16x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12 = vdupq_lane_s32(0x80000000800000, 0);
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = *(*(result - 8) + 8 * v10);
          v18 = *(*result + 8 * v10);
          v19 = *v15;
          v15 += 2;
          v14 = vmlaq_lane_f32(vmlaq_n_f32(v14, vcvt_hight_f32_f16(v17), v19.f32[0]), vcvt_hight_f32_f16(v18), v19, 1);
          v13 = vmlaq_lane_f32(vmlaq_n_f32(v13, vcvtq_f32_f16(*v17.i8), v19.f32[0]), vcvtq_f32_f16(*v18.i8), v19, 1);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        result = 8 * v10;
        v20 = *(*(a6 - 8 + 8 * v7) + 8 * v10);
        v14 = vaddq_f32(vmlaq_n_f32(v14, vcvt_hight_f32_f16(v20), *v15), 0);
        v13 = vaddq_f32(vmlaq_n_f32(v13, vcvtq_f32_f16(*v20.i8), *v15), 0);
      }

      v21 = vmaxnmq_f32(vuzp1q_s32(v13, v14), vuzp2q_s32(v13, v14));
      v22 = vextq_s8(v21, v21, 8uLL).u64[0];
      *v21.i8 = vmaxnm_f32(vmaxnm_f32(vzip1_s32(*v21.i8, v22), vzip2_s32(*v21.i8, v22)), 0);
      v23 = v12;
      v23.i32[0] = v21.i32[1];
      v24 = v12;
      v24.i32[0] = v21.i32[0];
      *v6++ = vcvt_hight_f16_f32(vcvt_f16_f32(vminnmq_f32(vmaxnmq_f32(v13, v24), xmmword_18439C480)), vminnmq_f32(vmaxnmq_f32(v14, v23), xmmword_18439C480));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      v25 = 0uLL;
      v26 = v8;
      if (v7 >= 2)
      {
        v27 = (a6 + 8);
        result = 2;
        v26 = v8;
        do
        {
          v28 = *v26;
          v26 += 2;
          v25 = vmlaq_lane_f32(vmlaq_n_f32(v25, vcvtq_f32_f16(*(*(v27 - 1) + 8 * (v9 & 0x3FFFFFFF))), v28.f32[0]), vcvtq_f32_f16(*(*v27 + 8 * (v9 & 0x3FFFFFFF))), v28, 1);
          result += 2;
          v27 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v25 = vaddq_f32(vmlaq_n_f32(v25, vcvtq_f32_f16(*(*(a6 - 8 + 8 * v7) + 8 * (v9 & 0x3FFFFFFF))), *v26), 0);
      }

      v29 = vmaxvq_f32(v25);
      v30 = fmaxf(v29, 0.0);
      if (v29 <= 1.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1.0;
      }

      v25.f32[0] = v31;
      *v6->i8 = vcvt_f16_f32(v25);
      v6 = (v6 + 8);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<half,half,2,(AlphaStyle)1>(uint64_t result, double a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, uint64_t a8, uint64_t a9, int a10, __n128 **a11, uint64_t a12)
{
  v12 = *a11;
  v13 = *(result + 4);
  v14 = (result + 8);
  if (a10 >= 4)
  {
    v16 = 0;
    v17 = 4;
    v18 = vdupq_lane_s32(0x80000000800000, 0);
    do
    {
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = v14;
      if (v13 >= 2)
      {
        result = a12 + 8;
        v22 = 2;
        v21 = v14;
        do
        {
          v23 = *(*(result - 8) + 4 * v16);
          v24 = *(*result + 4 * v16);
          v25 = *v21;
          v21 += 2;
          v20 = vmlaq_lane_f32(vmlaq_n_f32(v20, vcvt_hight_f32_f16(v23), v25.f32[0]), vcvt_hight_f32_f16(v24), v25, 1);
          v19 = vmlaq_lane_f32(vmlaq_n_f32(v19, vcvtq_f32_f16(*v23.i8), v25.f32[0]), vcvtq_f32_f16(*v24.i8), v25, 1);
          v22 += 2;
          result += 16;
        }

        while (v22 <= v13);
      }

      if (v13)
      {
        result = 4 * v16;
        v26 = *(*(a12 - 8 + 8 * v13) + 4 * v16);
        v20 = vaddq_f32(vmlaq_n_f32(v20, vcvt_hight_f32_f16(v26), *v21), 0);
        v19 = vaddq_f32(vmlaq_n_f32(v19, vcvtq_f32_f16(*v26.i8), *v21), 0);
      }

      v27 = vmaxnmq_f32(vmaxnmq_f32(vuzp1q_s32(v19, v20), vuzp2q_s32(v19, v20)), 0);
      v28 = vzip2q_s32(v27, v18);
      a7 = vzip1q_s32(v27, v18);
      a6 = vminnmq_f32(vmaxnmq_f32(v20, v28), xmmword_18439C4D0);
      a5 = vcvt_hight_f16_f32(vcvt_f16_f32(vminnmq_f32(vmaxnmq_f32(v19, a7), xmmword_18439C4D0)), a6);
      *v12++ = a5;
      v17 += 4;
      v16 += 4;
    }

    while (v17 <= a10);
    LODWORD(v15) = a10 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 < a10)
  {
    v15 = v15;
    do
    {
      a5.i64[0] = 0;
      v29 = v14;
      if (v13 >= 2)
      {
        a5.i64[0] = 0;
        v30 = (a12 + 8);
        result = 2;
        v29 = v14;
        do
        {
          a6.i32[0] = *(*(v30 - 1) + 4 * v15);
          a7.i32[0] = *(*v30 + 4 * v15);
          a6.i64[0] = vcvtq_f32_f16(*a6.f32).u64[0];
          v31 = *v29;
          v29 += 2;
          a7.i64[0] = vcvtq_f32_f16(*a7.f32).u64[0];
          *a5.f32 = vmla_lane_f32(vmla_n_f32(*a5.f32, *a6.f32, v31.f32[0]), *a7.f32, v31, 1);
          result += 2;
          v30 += 2;
        }

        while (result <= v13);
      }

      if (v13)
      {
        a6.i32[0] = *(*(a12 - 8 + 8 * v13) + 4 * v15);
        a6.i64[0] = vcvtq_f32_f16(*a6.f32).u64[0];
        *a5.f32 = vadd_f32(vmla_n_f32(*a5.f32, *a6.f32, *v29), 0);
      }

      v32 = vpmax_f32(*a5.f32);
      v33 = fmaxf(v32, 0.0);
      if (v32 <= 1.0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1.0;
      }

      a5.f32[0] = v34;
      v12->n128_u32[0] = vcvt_f16_f32(a5).u32[0];
      v12 = (v12 + 4);
      ++v15;
    }

    while (v15 != a10);
  }

  return result;
}

uint64_t resample_vertical<half,half,4,(AlphaStyle)0>(uint64_t result, uint64_t a2, uint64_t a3, int a4, float16x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    for (i = 2; i <= a4; i += 2)
    {
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v15 = 2;
        v14 = v8;
        do
        {
          v16 = *(*(result - 8) + 8 * v10);
          v17 = *(*result + 8 * v10);
          v18 = *v14;
          v14 += 2;
          v13 = vmlaq_lane_f32(vmlaq_n_f32(v13, vcvt_hight_f32_f16(v16), v18.f32[0]), vcvt_hight_f32_f16(v17), v18, 1);
          v12 = vmlaq_lane_f32(vmlaq_n_f32(v12, vcvtq_f32_f16(*v16.i8), v18.f32[0]), vcvtq_f32_f16(*v17.i8), v18, 1);
          v15 += 2;
          result += 16;
        }

        while (v15 <= v7);
      }

      if (v7)
      {
        result = 8 * v10;
        v19 = *(*(a6 - 8 + 8 * v7) + 8 * v10);
        v13 = vaddq_f32(vmlaq_n_f32(v13, vcvt_hight_f32_f16(v19), *v14), 0);
        v12 = vaddq_f32(vmlaq_n_f32(v12, vcvtq_f32_f16(*v19.i8), *v14), 0);
      }

      *v6++ = vcvt_hight_f16_f32(vcvt_f16_f32(v12), v13);
      v10 += 2;
    }

    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      v20 = 0uLL;
      v21 = v8;
      if (v7 >= 2)
      {
        v22 = (a6 + 8);
        result = 2;
        v21 = v8;
        do
        {
          v23 = *v21;
          v21 += 2;
          v20 = vmlaq_lane_f32(vmlaq_n_f32(v20, vcvtq_f32_f16(*(*(v22 - 1) + 8 * (v9 & 0x3FFFFFFF))), v23.f32[0]), vcvtq_f32_f16(*(*v22 + 8 * (v9 & 0x3FFFFFFF))), v23, 1);
          result += 2;
          v22 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v20 = vaddq_f32(vmlaq_n_f32(v20, vcvtq_f32_f16(*(*(a6 - 8 + 8 * v7) + 8 * (v9 & 0x3FFFFFFF))), *v21), 0);
      }

      *v6->i8 = vcvt_f16_f32(v20);
      v6 = (v6 + 8);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<half,half,3,(AlphaStyle)0>(uint64_t result, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, uint64_t a7, int a8, float16x8_t **a9, uint64_t a10)
{
  v10 = *a9;
  v11 = *(result + 4);
  v12 = (result + 8);
  if (a8 >= 4)
  {
    v14 = 0;
    for (i = 4; i <= a8; i += 4)
    {
      v16.i32[0] = 0;
      v17 = 0;
      v18 = 0;
      if (v11 >= 2)
      {
        result = 3 * v14;
        v28 = (a10 + 8);
        v29 = 2;
        v19 = 0;
        v26 = v12;
        v20.i32[0] = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        a5.i32[0] = 0;
        v24 = 0;
        v25 = 0;
        v27 = 0;
        do
        {
          v30 = *(v28 - 1) + 6 * v14;
          v31 = *v30;
          v32 = *(v30 + 16);
          v33 = (*v28 + 6 * v14);
          v34 = *v26;
          v26 += 2;
          a5.i32[1] = v24;
          a5.i64[1] = __PAIR64__(v27, v25);
          v20.i32[1] = v21;
          v20.i64[1] = __PAIR64__(v23, v22);
          v16.i32[1] = v17;
          v16.i64[1] = __PAIR64__(v19, v18);
          v16 = vmlaq_lane_f32(vmlaq_n_f32(v16, vcvtq_f32_f16(*v31.i8), v34.f32[0]), vcvtq_f32_f16(*v33), v34, 1);
          v19 = v16.i32[3];
          v18 = v16.i32[2];
          v17 = v16.i32[1];
          v20 = vmlaq_lane_f32(vmlaq_n_f32(v20, vcvt_hight_f32_f16(v31), v34.f32[0]), vcvt_hight_f32_f16(*v33->i8), v34, 1);
          v23 = v20.i32[3];
          v22 = v20.i32[2];
          v21 = v20.i32[1];
          a5 = vmlaq_lane_f32(vmlaq_n_f32(a5, vcvtq_f32_f16(v32), v34.f32[0]), vcvtq_f32_f16(v33[2]), v34, 1);
          v27 = a5.u32[3];
          v25 = a5.u32[2];
          v24 = a5.u32[1];
          v29 += 2;
          v28 += 2;
        }

        while (v29 <= v11);
      }

      else
      {
        v19 = 0;
        v20.i32[0] = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        a5.i32[0] = 0;
        v24 = 0;
        v25 = 0;
        v26 = v12;
        v27 = 0;
      }

      if (v11)
      {
        result = *(a10 - 8 + 8 * v11) + 6 * v14;
        a5.i32[1] = v24;
        a5.i64[1] = __PAIR64__(v27, v25);
        v20.i32[1] = v21;
        v20.i64[1] = __PAIR64__(v23, v22);
        v16.i32[1] = v17;
        v16.i64[1] = __PAIR64__(v19, v18);
        v16 = vaddq_f32(vmlaq_n_f32(v16, vcvtq_f32_f16(*result), *v26), 0);
        v19 = v16.i32[3];
        v18 = v16.i32[2];
        v17 = v16.i32[1];
        v20 = vaddq_f32(vmlaq_n_f32(v20, vcvt_hight_f32_f16(*result), *v26), 0);
        v23 = v20.i32[3];
        v22 = v20.i32[2];
        v21 = v20.i32[1];
        a5 = vaddq_f32(vmlaq_n_f32(a5, vcvtq_f32_f16(*(result + 16)), *v26), 0);
        v27 = a5.u32[3];
        v25 = a5.u32[2];
        v24 = a5.u32[1];
      }

      v16.i32[1] = v17;
      v16.i64[1] = __PAIR64__(v19, v18);
      v20.i32[1] = v21;
      a4.i64[1] = __PAIR64__(v23, v22);
      a5.i32[1] = v24;
      v35 = vcvt_hight_f16_f32(vcvt_f16_f32(v16), a4);
      a5.i64[1] = __PAIR64__(v27, v25);
      *a4.f32 = vcvt_f16_f32(a5);
      *v10 = v35;
      v10[1].i64[0] = a4.i64[0];
      v10 = (v10 + 24);
      v14 += 4;
    }

    LODWORD(v13) = a8 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 < a8)
  {
    v13 = v13;
    do
    {
      v36 = 0uLL;
      v37 = v12;
      if (v11 >= 2)
      {
        v38 = (a10 + 8);
        result = 2;
        v37 = v12;
        do
        {
          v39 = *(v38 - 1) + 6 * v13;
          a4.i32[0] = *v39;
          a4.i16[2] = *(v39 + 4);
          v40 = *v38 + 6 * v13;
          a5.i32[0] = *v40;
          a5.i16[2] = *(v40 + 4);
          a4 = vcvtq_f32_f16(*a4.f32);
          v41 = *v37;
          v37 += 2;
          a5 = vcvtq_f32_f16(*a5.f32);
          v36 = vmlaq_lane_f32(vmlaq_n_f32(v36, a4, v41.f32[0]), a5, v41, 1);
          result += 2;
          v38 += 2;
        }

        while (result <= v11);
      }

      if (v11)
      {
        v42 = *(a10 - 8 + 8 * v11) + 6 * v13;
        a4.i32[0] = *v42;
        a4.i16[2] = *(v42 + 4);
        a4 = vcvtq_f32_f16(*a4.f32);
        v36 = vaddq_f32(vmlaq_n_f32(v36, a4, *v37), 0);
      }

      v43 = vcvt_f16_f32(v36);
      v10->i32[0] = v43.i32[0];
      v10->i16[2] = v43.i16[2];
      v10 = (v10 + 6);
      ++v13;
    }

    while (v13 != a8);
  }

  return result;
}

uint64_t resample_vertical<half,half,1,(AlphaStyle)0>(uint64_t result, double a2, double a3, float32x4_t _Q2, float32x4_t _Q3, uint64_t a6, uint64_t a7, int a8, float16x8_t **a9, uint64_t a10)
{
  v10 = *a9;
  v11 = *(result + 4);
  v12 = (result + 8);
  if (a8 >= 8)
  {
    v14 = 0;
    for (i = 8; i <= a8; i += 8)
    {
      v16 = 0uLL;
      _Q2 = 0uLL;
      v17 = v12;
      if (v11 >= 2)
      {
        result = a10 + 8;
        v18 = 2;
        v17 = v12;
        do
        {
          v19 = *(*(result - 8) + 2 * v14);
          v20 = *(*result + 2 * v14);
          v21 = vcvt_hight_f32_f16(v19);
          _Q3 = vcvtq_f32_f16(*v19.i8);
          v22 = *v17;
          v17 += 2;
          _Q2 = vmlaq_lane_f32(vmlaq_n_f32(_Q2, v21, v22.f32[0]), vcvt_hight_f32_f16(v20), v22, 1);
          v16 = vmlaq_lane_f32(vmlaq_n_f32(v16, _Q3, v22.f32[0]), vcvtq_f32_f16(*v20.i8), v22, 1);
          v18 += 2;
          result += 16;
        }

        while (v18 <= v11);
      }

      if (v11)
      {
        result = *(a10 - 8 + 8 * v11);
        v23 = *(result + 2 * v14);
        v24 = vcvt_hight_f32_f16(v23);
        _Q3 = vcvtq_f32_f16(*v23.i8);
        _Q2 = vaddq_f32(vmlaq_n_f32(_Q2, v24, *v17), 0);
        v16 = vaddq_f32(vmlaq_n_f32(v16, _Q3, *v17), 0);
      }

      *v10++ = vcvt_hight_f16_f32(vcvt_f16_f32(v16), _Q2);
      v14 += 8;
    }

    v13 = a8 & 0x7FFFFFF8;
  }

  else
  {
    v13 = 0;
  }

  for (j = v13 | 4; j <= a8; j += 4)
  {
    v26 = 2 * v13;
    v27 = 0uLL;
    v28 = v12;
    if (v11 >= 2)
    {
      v29 = (a10 + 8);
      result = 2;
      v28 = v12;
      do
      {
        _Q2 = vcvtq_f32_f16(*(*(v29 - 1) + v26));
        v30 = *v28;
        v28 += 2;
        _Q3 = vcvtq_f32_f16(*(*v29 + v26));
        v27 = vmlaq_lane_f32(vmlaq_n_f32(v27, _Q2, v30.f32[0]), _Q3, v30, 1);
        result += 2;
        v29 += 2;
      }

      while (result <= v11);
    }

    if (v11)
    {
      _Q2 = vcvtq_f32_f16(*(*(a10 - 8 + 8 * v11) + v26));
      v27 = vaddq_f32(vmlaq_n_f32(v27, _Q2, *v28), 0);
    }

    *v10->i8 = vcvt_f16_f32(v27);
    v10 = (v10 + 8);
    v13 = j;
  }

  for (; v13 < a8; ++v13)
  {
    _D1 = 0;
    v32 = v12;
    if (v11 >= 2)
    {
      _D1 = 0;
      v33 = (a10 + 8);
      v34 = 2;
      v32 = v12;
      do
      {
        result = *(v33 - 1);
        _Q2.i16[0] = *(result + 2 * v13);
        _Q3.i16[0] = *(*v33 + 2 * v13);
        __asm { FCVT            S2, H2 }

        v39 = *v32++;
        __asm { FCVT            S3, H3 }

        _D1 = vmla_lane_f32(vmla_f32(_D1, *_Q2.f32, v39), *_Q3.f32, v39, 1);
        v34 += 2;
        v33 += 2;
      }

      while (v34 <= v11);
    }

    if (v11)
    {
      _Q2.i16[0] = *(*(a10 - 8 + 8 * v11) + 2 * v13);
      __asm { FCVT            S2, H2 }

      _Q3.i32[0] = v32->i32[0];
      _D1.i32[0] = vadd_f32(vmla_f32(_D1, *_Q2.f32, *_Q3.f32), 0).u32[0];
    }

    __asm { FCVT            H1, S1 }

    v10->i16[0] = _H1;
    v10 = (v10 + 2);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,4,(AlphaStyle)3>(uint64_t result, double a2, double a3, double a4, int32x4_t a5, double a6, uint16x8_t a7, double a8, int32x4_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14)
{
  v16 = *a13;
  v17 = *(a13 + 8);
  v18 = *(result + 4);
  v123 = (result + 8);
  if (a12 >= 4)
  {
    v20 = 0;
    v119 = a14 - 8;
    v116 = a14;
    v118 = (a14 + 8);
    v21 = 4;
    v22.i64[0] = 0x200000002000;
    v22.i64[1] = 0x200000002000;
    a5.i32[0] = -2147450880;
    a5.i16[2] = 0x8000;
    a5.i16[3] = 0x8000;
    v117 = a12;
    v120 = a12;
    do
    {
      v121 = v21;
      v122 = v20;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      result = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      if (v18 >= 2)
      {
        v43 = v118;
        v44 = 2;
        v42 = v123;
        v45 = 5 * v20;
        do
        {
          v46 = *(v43 - 1) + 4 * v45;
          v47 = *v46;
          v48 = *(v46 + 16);
          v49 = *(v46 + 32);
          a9 = *(v46 + 48);
          v50 = *(v46 + 64);
          v51 = (*v43 + 4 * v45);
          v52 = vmovn_s32(v50);
          v53 = *v42;
          v42 += 2;
          *v50.i8 = veor_s8(vmovn_s32(v47), *a5.i8);
          v54 = vdup_n_s16(v53);
          *v15.i8 = veor_s8(v52, *a5.i8);
          *v47.i8 = vdup_n_s16(HIWORD(v53));
          v55.i64[0] = __PAIR64__(v24, v23);
          v55.i64[1] = __PAIR64__(result, v25);
          v56 = vshlq_n_s32(vaddl_s16(v54, *v47.i8), 0xFuLL);
          v57.i64[0] = __PAIR64__(v27, v26);
          v57.i64[1] = __PAIR64__(v29, v28);
          v58.i64[0] = __PAIR64__(v31, v30);
          v58.i64[1] = __PAIR64__(v33, v32);
          v59.i64[0] = __PAIR64__(v35, v34);
          v59.i64[1] = __PAIR64__(v37, v36);
          v60.i64[0] = __PAIR64__(v39, v38);
          v60.i64[1] = __PAIR64__(v41, v40);
          v61 = vmlal_s16(vmlal_s16(vaddq_s32(v56, v55), *v50.i8, v54), veor_s8(vmovn_s32(*v51), *a5.i8), *v47.i8);
          result = v61.u32[3];
          v25 = v61.i32[2];
          v24 = v61.i32[1];
          v23 = v61.i32[0];
          v62 = vmlal_s16(vmlal_s16(vaddq_s32(v56, v57), veor_s8(vmovn_s32(v48), *a5.i8), v54), veor_s8(vmovn_s32(v51[1]), *a5.i8), *v47.i8);
          v29 = v62.i32[3];
          v28 = v62.i32[2];
          v27 = v62.i32[1];
          v26 = v62.i32[0];
          v63 = vmlal_s16(vmlal_s16(vaddq_s32(v56, v58), veor_s8(vmovn_s32(v49), *a5.i8), v54), veor_s8(vmovn_s32(v51[2]), *a5.i8), *v47.i8);
          v33 = v63.i32[3];
          v32 = v63.i32[2];
          v31 = v63.i32[1];
          v30 = v63.i32[0];
          v64 = vmlal_s16(vmlal_s16(vaddq_s32(v56, v59), veor_s8(vmovn_s32(a9), *a5.i8), v54), veor_s8(vmovn_s32(v51[3]), *a5.i8), *v47.i8);
          v37 = v64.i32[3];
          v36 = v64.i32[2];
          v35 = v64.i32[1];
          v34 = v64.i32[0];
          v65 = vmlal_s16(vmlal_s16(vaddq_s32(v56, v60), *v15.i8, v54), veor_s8(vmovn_s32(v51[4]), *a5.i8), *v47.i8);
          v41 = v65.u32[3];
          v40 = v65.u32[2];
          v39 = v65.u32[1];
          v38 = v65.i32[0];
          v44 += 2;
          v43 += 2;
        }

        while (v44 <= v18);
      }

      else
      {
        v42 = v123;
      }

      if (v18)
      {
        v66 = (*(v119 + 8 * v18) + 20 * v122);
        v67 = vld1_dup_s16(v42);
        v68.i64[0] = __PAIR64__(v39, v38);
        v69 = vshll_n_s16(v67, 0xFuLL);
        v68.i64[1] = __PAIR64__(v41, v40);
        v70.i64[0] = __PAIR64__(v35, v34);
        v70.i64[1] = __PAIR64__(v37, v36);
        v71 = vaddq_s32(v69, v68);
        v72.i64[0] = __PAIR64__(v31, v30);
        v72.i64[1] = __PAIR64__(v33, v32);
        v73 = vaddq_s32(v69, v70);
        v15.i64[0] = __PAIR64__(v27, v26);
        v74 = vaddq_s32(v69, v72);
        v15.i64[1] = __PAIR64__(v29, v28);
        v75.i64[0] = __PAIR64__(v24, v23);
        v75.i64[1] = __PAIR64__(result, v25);
        v76 = vmlal_s16(vaddq_s32(v69, v75), veor_s8(vmovn_s32(*v66), *a5.i8), v67);
        result = v76.u32[3];
        v25 = v76.i32[2];
        v24 = v76.i32[1];
        v77 = vmlal_s16(vaddq_s32(v69, v15), veor_s8(vmovn_s32(v66[1]), *a5.i8), v67);
        v29 = v77.i32[3];
        v23 = v76.i32[0];
        v28 = v77.i32[2];
        v27 = v77.i32[1];
        v78 = vmlal_s16(v74, veor_s8(vmovn_s32(v66[2]), *a5.i8), v67);
        v33 = v78.i32[3];
        v32 = v78.i32[2];
        v31 = v78.i32[1];
        v26 = v77.i32[0];
        v79 = vmlal_s16(v73, veor_s8(vmovn_s32(v66[3]), *a5.i8), v67);
        v37 = v79.i32[3];
        v36 = v79.i32[2];
        v30 = v78.i32[0];
        v35 = v79.i32[1];
        a9 = vmlal_s16(v71, veor_s8(vmovn_s32(v66[4]), *a5.i8), v67);
        v41 = a9.u32[3];
        v34 = v79.i32[0];
        v40 = a9.u32[2];
        v39 = a9.u32[1];
        v38 = a9.i32[0];
      }

      v80.i64[0] = __PAIR64__(v24, v23);
      v80.i64[1] = __PAIR64__(result, v25);
      v81 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v80, v22), 0xEuLL));
      v80.i64[0] = __PAIR64__(v27, v26);
      v80.i64[1] = __PAIR64__(v29, v28);
      v82 = vshrq_n_s32(vaddq_s32(v80, v22), 0xEuLL);
      v80.i16[0] = vqmovun_s32(v82).u16[0];
      v83.i64[0] = __PAIR64__(v31, v30);
      v83.i64[1] = __PAIR64__(v33, v32);
      v124.val[0] = vqmovun_high_s32(v81, v82);
      v84 = vshrq_n_s32(vaddq_s32(v83, v22), 0xEuLL);
      v83.i64[0] = __PAIR64__(v35, v34);
      v83.i64[1] = __PAIR64__(v37, v36);
      *v84.i8 = vqmovun_s32(v84);
      v85 = vshrq_n_s32(vaddq_s32(v83, v22), 0xEuLL);
      v86 = vqmovun_s32(v85);
      v87.i64[0] = __PAIR64__(v39, v38);
      v87.i64[1] = __PAIR64__(v41, v40);
      v124.val[1] = vqmovun_high_s32(*v84.i8, v85);
      *a9.i8 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v87, v22), 0xEuLL));
      v88 = vqtbl2q_s8(v124, xmmword_18439C4E0);
      v14 = vqtbl2q_s8(*(&a9 - 1), xmmword_18439C4F0);
      v86.i16[3] = a9.i16[3];
      v80.i16[1] = v84.i16[1];
      v80.i32[1] = v86.i32[1];
      a7 = vpmaxq_u16(v88, v14);
      *a7.i8 = vpmax_u16(*a7.i8, *&vextq_s8(a7, a7, 8uLL));
      *v16 = v88;
      v16[1] = v14;
      v16 += 2;
      *v17++ = vmax_u16(*v80.i8, *a7.i8);
      v20 = v122 + 4;
      v21 = v121 + 4;
    }

    while (v121 + 4 <= v120);
    a12 = v117;
    v19 = v117 & 0x7FFFFFFC;
    a14 = v116;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < a12)
  {
    v89 = a14 - 8;
    v90 = (a14 + 8);
    v91.i64[0] = 0x200000002000;
    v91.i64[1] = 0x200000002000;
    v92 = v19;
    v93 = a12;
    do
    {
      if (v18 >= 2)
      {
        v94 = 0;
        LODWORD(result) = 0;
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v99 = v90;
        v100 = 2;
        v98 = v123;
        do
        {
          v101 = *(v99 - 1) + 20 * v92;
          v102 = *v101;
          a5.i32[0] = *(v101 + 16);
          v103 = (*v99 + 20 * v92);
          a7.i32[0] = v103[1].i32[0];
          v104 = *v98++;
          v105 = vdup_n_s16(v104);
          a9.i32[0] = v104;
          v106 = vdup_n_s16(HIWORD(v104));
          v14.i32[0] = HIWORD(v104);
          *a7.i8 = veor_s8(vmovn_s32(a7), 0x8000800080008000);
          v15.i32[0] = v97;
          v107 = vaddq_s32(vshll_n_s16(*a9.i8, 0xFuLL), v15);
          v15.i64[0] = __PAIR64__(result, v94);
          v15.i64[1] = __PAIR64__(v96, v95);
          v108 = vmlal_s16(vaddq_s32(vshll_n_s16(v105, 0xFuLL), v15), veor_s8(vmovn_s32(v102), 0x8000800080008000), v105);
          v109 = vaddq_s32(vmlal_s16(v107, veor_s8(vmovn_s32(a5), 0x8000800080008000), *a9.i8), vshll_n_s16(*v14.i8, 0xFuLL));
          a5 = vmlal_s16(vaddq_s32(v108, vshll_n_s16(v106, 0xFuLL)), veor_s8(vmovn_s32(*v103), 0x8000800080008000), v106);
          v96 = a5.u32[3];
          v95 = a5.u32[2];
          result = a5.u32[1];
          v94 = a5.i32[0];
          v97 = vmlal_s16(v109, *a7.i8, *v14.i8).u32[0];
          v100 += 2;
          v99 += 2;
        }

        while (v100 <= v18);
      }

      else
      {
        v94 = 0;
        result = 0;
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = v123;
      }

      if (v18)
      {
        v110 = (*(v89 + 8 * v18) + 20 * v92);
        a5.i32[0] = v110[1].i32[0];
        v111 = *v98;
        v112 = vdup_n_s16(v111);
        a7.i32[0] = v111;
        *a5.i8 = veor_s8(vmovn_s32(a5), 0x8000800080008000);
        a9.i64[0] = __PAIR64__(result, v94);
        a9.i64[1] = __PAIR64__(v96, v95);
        v113 = vaddq_s32(vshll_n_s16(v112, 0xFuLL), a9);
        a9.i32[0] = v97;
        v114 = vmlal_s16(v113, veor_s8(vmovn_s32(*v110), 0x8000800080008000), v112);
        v96 = v114.u32[3];
        v95 = v114.u32[2];
        result = v114.u32[1];
        v94 = v114.i32[0];
        v97 = vmlal_s16(vaddq_s32(vshll_n_s16(*a7.i8, 0xFuLL), a9), *a5.i8, *a7.i8).u32[0];
      }

      v115.i64[0] = __PAIR64__(result, v94);
      v115.i64[1] = __PAIR64__(v96, v95);
      *v115.i8 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v115, v91), 0xEuLL));
      a5.i32[0] = v97;
      a5 = vshrq_n_s32(vaddq_s32(a5, v91), 0xEuLL);
      *a5.i8 = vqmovun_s32(a5);
      v16->i64[0] = v115.i64[0];
      v16 = (v16 + 8);
      v17->i16[0] = vmax_u16(*a5.i8, vpmax_u16(vpmax_u16(*v115.i8, *v91.i8), *v91.i8)).u16[0];
      v17 = (v17 + 2);
      ++v92;
    }

    while (v92 != v93);
  }

  return result;
}

int32x4_t *resample_vertical<int,unsigned short,3,(AlphaStyle)3>(int32x4_t *result, uint64_t a2, uint64_t a3, int a4, int16x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = a5[1];
  v8 = result->i32[1];
  v9 = &result->i16[4];
  if (a4 >= 2)
  {
    v11 = 0;
    v12 = 2;
    v13.i64[0] = 0x200000002000;
    v13.i64[1] = 0x200000002000;
    do
    {
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = v9;
      if (v8 >= 2)
      {
        result = (4 * v11);
        v17 = (a6 + 8);
        v18 = 2;
        v16 = v9;
        do
        {
          v19 = (*(v17 - 1) + 16 * v11);
          v20 = *v19;
          v21 = v19[1];
          v22 = (*v17 + 16 * v11);
          v23 = *v16;
          v16 += 2;
          v24 = vdup_n_s16(v23);
          v25 = vshll_n_s16(v24, 0xFuLL);
          v26 = vdup_n_s16(HIWORD(v23));
          v27 = vshll_n_s16(v26, 0xFuLL);
          v15 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v15, veor_s8(vmovn_s32(v21), 0x8000800080008000), v24), v25), veor_s8(vmovn_s32(v22[1]), 0x8000800080008000), v26), v27);
          v14 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v20), 0x8000800080008000), v24), v25), veor_s8(vmovn_s32(*v22), 0x8000800080008000), v26), v27);
          v18 += 2;
          v17 += 2;
        }

        while (v18 <= v8);
      }

      if (v8)
      {
        result = (*(a6 - 8 + 8 * v8) + 16 * v11);
        v28 = vld1_dup_s16(v16);
        v29 = vshll_n_s16(v28, 0xFuLL);
        v15 = vaddq_s32(vmlal_s16(v15, veor_s8(vmovn_s32(result[1]), 0x8000800080008000), v28), v29);
        v14 = vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(*result), 0x8000800080008000), v28), v29);
      }

      v30 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v14, v13), 0xEuLL));
      v31 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v15, v13), 0xEuLL));
      v32 = vpmax_u16(v30, v31);
      v33 = vuzp2_s16(vuzp2_s16(v30, v31), v30);
      v30.i16[3] = v31.i16[0];
      *v6 = v30;
      v6[1].i32[0] = vext_s8(v31, *v13.i8, 2uLL).u32[0];
      v6 = (v6 + 12);
      v7->i32[0] = vmax_u16(v33, vpmax_u16(v32, *v13.i8)).u32[0];
      v7 = (v7 + 4);
      v12 += 2;
      v11 += 2;
    }

    while (v12 <= a4);
    LODWORD(v10) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < a4)
  {
    v10 = v10;
    v34.i64[0] = 0x200000002000;
    v34.i64[1] = 0x200000002000;
    do
    {
      v35 = 0uLL;
      v36 = v9;
      if (v8 >= 2)
      {
        result = (a6 + 8);
        v37 = 2;
        v36 = v9;
        do
        {
          v38 = *v36;
          v36 += 2;
          v39 = vdup_n_s16(v38);
          v40 = vdup_n_s16(HIWORD(v38));
          v35 = vaddq_s32(vmlal_s16(vmlal_s16(v35, veor_s8(vmovn_s32(*(result[-1].i64[1] + 16 * (v10 & 0x3FFFFFFF))), 0x8000800080008000), v39), veor_s8(vmovn_s32(*(result->i64[0] + 16 * (v10 & 0x3FFFFFFF))), 0x8000800080008000), v40), vaddq_s32(vshll_n_s16(v39, 0xFuLL), vshll_n_s16(v40, 0xFuLL)));
          v37 += 2;
          ++result;
        }

        while (v37 <= v8);
      }

      if (v8)
      {
        result = (16 * (v10 & 0x3FFFFFFF));
        v41 = vld1_dup_s16(v36);
        v35 = vaddq_s32(vmlal_s16(v35, veor_s8(vmovn_s32(*(result + *(a6 - 8 + 8 * v8))), 0x8000800080008000), v41), vshll_n_s16(v41, 0xFuLL));
      }

      v42 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v35, v34), 0xEuLL));
      v6->i32[0] = v42.i32[0];
      v6->i16[2] = v42.i16[2];
      v6 = (v6 + 6);
      v7->i16[0] = vmax_u16(vdup_lane_s16(v42, 3), vpmax_u16(vpmax_u16(v42, *v34.i8), *v34.i8)).u16[0];
      v7 = (v7 + 2);
      ++v10;
    }

    while (v10 != a4);
  }

  return result;
}

int32x4_t *resample_vertical<int,unsigned short,1,(AlphaStyle)3>(int32x4_t *result, uint64_t a2, uint64_t a3, int a4, uint16x4_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = a5[1];
  v8 = result->i32[1];
  v9 = &result->i16[4];
  if (a4 >= 4)
  {
    v11 = 0;
    v12 = 4;
    v13.i64[0] = 0x200000002000;
    v13.i64[1] = 0x200000002000;
    do
    {
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = v9;
      if (v8 >= 2)
      {
        result = (2 * v11);
        v17 = (a6 + 8);
        v18 = 2;
        v16 = v9;
        do
        {
          v19 = (*(v17 - 1) + 8 * v11);
          v20 = *v19;
          v21 = v19[1];
          v22 = (*v17 + 8 * v11);
          v23 = *v16;
          v16 += 2;
          v24 = vdup_n_s16(v23);
          v25 = vshll_n_s16(v24, 0xFuLL);
          v26 = vdup_n_s16(HIWORD(v23));
          v27 = vshll_n_s16(v26, 0xFuLL);
          v15 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v15, veor_s8(vmovn_s32(v21), 0x8000800080008000), v24), v25), veor_s8(vmovn_s32(v22[1]), 0x8000800080008000), v26), v27);
          v14 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v20), 0x8000800080008000), v24), v25), veor_s8(vmovn_s32(*v22), 0x8000800080008000), v26), v27);
          v18 += 2;
          v17 += 2;
        }

        while (v18 <= v8);
      }

      if (v8)
      {
        result = (*(a6 - 8 + 8 * v8) + 8 * v11);
        v28 = vld1_dup_s16(v16);
        v29 = vshll_n_s16(v28, 0xFuLL);
        v15 = vaddq_s32(vmlal_s16(v15, veor_s8(vmovn_s32(result[1]), 0x8000800080008000), v28), v29);
        v14 = vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(*result), 0x8000800080008000), v28), v29);
      }

      v30 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v14, v13), 0xEuLL));
      v31 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v15, v13), 0xEuLL));
      v32 = vuzp1_s16(v30, v31);
      *v6++ = v32;
      *v7++ = vmax_u16(vuzp2_s16(v30, v31), v32);
      v12 += 4;
      v11 += 4;
    }

    while (v12 <= a4);
    LODWORD(v10) = a4 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < a4)
  {
    v10 = v10;
    do
    {
      if (v8 >= 2)
      {
        v33 = 0uLL;
        result = (a6 + 8);
        v35 = 2;
        v34 = v9;
        do
        {
          v36 = *v34++;
          v33 = vmlal_s16(vmlal_s16(v33, vuzp1_s16(veor_s8(*(result[-1].i64[1] + 8 * v10), 0x800000008000), 0x200000002000), vdup_n_s16(v36)), vuzp1_s16(veor_s8(*(result->i64[0] + 8 * v10), 0x800000008000), 0x200000002000), vdup_n_s16(HIWORD(v36)));
          *v33.i8 = vadd_s32(*v33.i8, vadd_s32(vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(v36), 0x10uLL), 0x10uLL), 0xFuLL), vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(HIWORD(v36)), 0x10uLL), 0x10uLL), 0xFuLL)));
          v35 += 2;
          ++result;
        }

        while (v35 <= v8);
      }

      else
      {
        v33 = 0uLL;
        v34 = v9;
      }

      if (v8)
      {
        v37 = *v34;
        v33 = vmlal_s16(v33, vuzp1_s16(veor_s8(*(*(a6 - 8 + 8 * v8) + 8 * v10), 0x800000008000), 0x200000002000), vdup_n_s16(v37));
        *v33.i8 = vadd_s32(*v33.i8, vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(v37), 0x10uLL), 0x10uLL), 0xFuLL));
      }

      *v33.i8 = vshr_n_s32(vadd_s32(*v33.i8, 0x200000002000), 0xEuLL);
      v38 = vqmovun_s32(v33);
      v6->i16[0] = v38.i16[0];
      v6 = (v6 + 2);
      v7->i16[0] = vmax_u16(vdup_lane_s16(v38, 1), v38).u16[0];
      v7 = (v7 + 2);
      ++v10;
    }

    while (v10 != a4);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,5,(AlphaStyle)2>(uint64_t result, double a2, double a3, double a4, double a5, int32x4_t a6, double a7, int32x4_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t *a12, uint64_t a13)
{
  v17 = *a12;
  v18 = *(result + 4);
  v125 = (result + 8);
  if (a11 >= 4)
  {
    v20 = 0;
    v120 = a13;
    v121 = (a13 + 8);
    v122 = a13 - 8;
    v21 = 4;
    v22.i64[0] = 0x200000002000;
    v22.i64[1] = 0x200000002000;
    v119 = a11;
    v123 = a11;
    do
    {
      v124 = v20;
      v23 = 0;
      v24 = 0;
      result = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      if (v18 >= 2)
      {
        v43 = v121;
        v44 = 2;
        v42 = v125;
        v45 = 5 * v20;
        do
        {
          v46 = (*(v43 - 1) + 4 * v45);
          v47 = (*v43 + 4 * v45);
          v48 = *v42;
          v42 += 2;
          v49 = vdup_n_s16(v48);
          v50 = vdup_n_s16(HIWORD(v48));
          v51.i64[0] = __PAIR64__(v24, v23);
          v51.i64[1] = __PAIR64__(v25, result);
          v52 = vshlq_n_s32(vaddl_s16(v49, v50), 0xFuLL);
          v53.i64[0] = __PAIR64__(v27, v26);
          v53.i64[1] = __PAIR64__(v29, v28);
          v54.i64[0] = __PAIR64__(v31, v30);
          v54.i64[1] = __PAIR64__(v33, v32);
          v55.i64[0] = __PAIR64__(v35, v34);
          v55.i64[1] = __PAIR64__(v37, v36);
          v56.i64[0] = __PAIR64__(v39, v38);
          v56.i64[1] = __PAIR64__(v41, v40);
          v57 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v51), veor_s8(vmovn_s32(*v46), 0x8000800080008000), v49), veor_s8(vmovn_s32(*v47), 0x8000800080008000), v50);
          v25 = v57.i32[3];
          result = v57.u32[2];
          v24 = v57.i32[1];
          v23 = v57.i32[0];
          v58 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v53), veor_s8(vmovn_s32(v46[1]), 0x8000800080008000), v49), veor_s8(vmovn_s32(v47[1]), 0x8000800080008000), v50);
          v29 = v58.i32[3];
          v28 = v58.i32[2];
          v27 = v58.i32[1];
          v26 = v58.i32[0];
          v59 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v54), veor_s8(vmovn_s32(v46[2]), 0x8000800080008000), v49), veor_s8(vmovn_s32(v47[2]), 0x8000800080008000), v50);
          v33 = v59.i32[3];
          v32 = v59.i32[2];
          v31 = v59.i32[1];
          v30 = v59.i32[0];
          v60 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v55), veor_s8(vmovn_s32(v46[3]), 0x8000800080008000), v49), veor_s8(vmovn_s32(v47[3]), 0x8000800080008000), v50);
          v37 = v60.i32[3];
          v36 = v60.i32[2];
          v35 = v60.i32[1];
          v34 = v60.i32[0];
          v61 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v56), veor_s8(vmovn_s32(v46[4]), 0x8000800080008000), v49), veor_s8(vmovn_s32(v47[4]), 0x8000800080008000), v50);
          v41 = v61.i32[3];
          v40 = v61.i32[2];
          v39 = v61.i32[1];
          v38 = v61.i32[0];
          v44 += 2;
          v43 += 2;
        }

        while (v44 <= v18);
      }

      else
      {
        v42 = v125;
      }

      if (v18)
      {
        v62 = (*(v122 + 8 * v18) + 20 * v124);
        v63 = vld1_dup_s16(v42);
        v64.i64[0] = __PAIR64__(v39, v38);
        v65 = vshll_n_s16(v63, 0xFuLL);
        v64.i64[1] = __PAIR64__(v41, v40);
        v66.i64[0] = __PAIR64__(v35, v34);
        v66.i64[1] = __PAIR64__(v37, v36);
        v67 = vaddq_s32(v65, v64);
        v68.i64[0] = __PAIR64__(v31, v30);
        v68.i64[1] = __PAIR64__(v33, v32);
        v69 = vaddq_s32(v65, v66);
        v70.i64[0] = __PAIR64__(v27, v26);
        v71 = vaddq_s32(v65, v68);
        v70.i64[1] = __PAIR64__(v29, v28);
        v72.i64[0] = __PAIR64__(v24, v23);
        v72.i64[1] = __PAIR64__(v25, result);
        v73 = vmlal_s16(vaddq_s32(v65, v72), veor_s8(vmovn_s32(*v62), 0x8000800080008000), v63);
        v25 = v73.i32[3];
        result = v73.u32[2];
        v24 = v73.i32[1];
        v74 = vmlal_s16(vaddq_s32(v65, v70), veor_s8(vmovn_s32(v62[1]), 0x8000800080008000), v63);
        v29 = v74.i32[3];
        v23 = v73.i32[0];
        v28 = v74.i32[2];
        v27 = v74.i32[1];
        v75 = vmlal_s16(v71, veor_s8(vmovn_s32(v62[2]), 0x8000800080008000), v63);
        v33 = v75.i32[3];
        v32 = v75.i32[2];
        v31 = v75.i32[1];
        v26 = v74.i32[0];
        v76 = vmlal_s16(v69, veor_s8(vmovn_s32(v62[3]), 0x8000800080008000), v63);
        v37 = v76.i32[3];
        v36 = v76.i32[2];
        v30 = v75.i32[0];
        v35 = v76.i32[1];
        v77 = vmlal_s16(v67, veor_s8(vmovn_s32(v62[4]), 0x8000800080008000), v63);
        v41 = v77.i32[3];
        v34 = v76.i32[0];
        v40 = v77.i32[2];
        v39 = v77.i32[1];
        v38 = v77.i32[0];
      }

      v78.i64[0] = __PAIR64__(v24, v23);
      v78.i64[1] = __PAIR64__(v25, result);
      a6 = vshrq_n_s32(vaddq_s32(v78, v22), 0xEuLL);
      *a6.i8 = vqmovun_s32(a6);
      v79.i64[0] = __PAIR64__(v27, v26);
      v79.i64[1] = __PAIR64__(v29, v28);
      v80 = vshrq_n_s32(vaddq_s32(v79, v22), 0xEuLL);
      v81 = vqmovun_s32(v80);
      v82 = vqmovun_high_s32(*a6.i8, v80);
      v80.i64[0] = __PAIR64__(v31, v30);
      v80.i64[1] = __PAIR64__(v33, v32);
      *v80.i8 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v80, v22), 0xEuLL));
      v83.i64[0] = __PAIR64__(v35, v34);
      v83.i64[1] = __PAIR64__(v37, v36);
      v14 = vshrq_n_s32(vaddq_s32(v83, v22), 0xEuLL);
      v84 = vqmovun_s32(v14);
      v83.i64[0] = __PAIR64__(v39, v38);
      v83.i64[1] = __PAIR64__(v41, v40);
      v85 = *v80.i8;
      v13 = vshrq_n_s32(vaddq_s32(v83, v22), 0xEuLL);
      *v13.i8 = vqmovun_s32(v13);
      v86.i32[0] = vext_s8(*a6.i8, *v80.i8, 6uLL).u32[0];
      v87.i32[0] = vext_s8(vzip2_s16(v81, *a6.i8), *a6.i8, 2uLL).u32[0];
      v15.i32[0] = vtrn2_s16(*a6.i8, vzip2_s16(*a6.i8, v81)).u32[0];
      a6.i16[1] = v81.i16[1];
      v81.i16[1] = v80.i16[1];
      v88 = vext_s8(*v13.i8, v84, 4uLL);
      v89 = vext_s8(*v80.i8, *v13.i8, 2uLL);
      v80.i16[3] = v84.i16[3];
      *v16.i8 = vext_s8(*v13.i8, v84, 2uLL);
      v84.i16[3] = v13.i16[3];
      v81.i32[1] = v84.i32[1];
      v90 = vqmovun_high_s32(v85, v14);
      v86.i32[1] = vext_s8(v88, v88, 2uLL).i32[1];
      *v14.i8 = vext_s8(*v16.i8, *v16.i8, 2uLL);
      v87.i32[1] = v14.i32[1];
      v15.i32[1] = v89.i32[1];
      a6.i32[1] = v80.i32[1];
      *a6.i8 = vmax_u16(vmax_u16(vmax_u16(vmax_u16(v81, v86), v87), v15), *a6.i8);
      a8 = vmaxq_u16(v90, vqtbl1q_s8(a6, xmmword_18439C500));
      v91 = 0;
      v91.i16[3] = a6.i16[3];
      *v17 = vmaxq_u16(v82, vqtbl1q_s8(a6, xmmword_18439C510));
      *(v17 + 16) = a8;
      *a6.i8 = vmax_u16(*v13.i8, v91);
      *(v17 + 32) = a6.i64[0];
      v17 += 40;
      v21 += 4;
      v20 = v124 + 4;
    }

    while (v21 <= v123);
    a11 = v119;
    LODWORD(v19) = v119 & 0x7FFFFFFC;
    a13 = v120;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (v19 < a11)
  {
    v92 = a13 - 8;
    v19 = v19;
    v93 = a11;
    v94 = (a13 + 8);
    v95.i64[0] = 0x200000002000;
    v95.i64[1] = 0x200000002000;
    do
    {
      if (v18 >= 2)
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        LODWORD(result) = 0;
        v101 = v94;
        v102 = 2;
        v100 = v125;
        do
        {
          v103 = *(v101 - 1) + 20 * v19;
          v104 = *v103;
          a8.i32[0] = *(v103 + 16);
          v105 = (*v101 + 20 * v19);
          v13.i32[0] = v105[1].i32[0];
          v106 = *v100++;
          v107 = vdup_n_s16(v106);
          v14.i32[0] = v106;
          v108 = vdup_n_s16(HIWORD(v106));
          v15.i32[0] = HIWORD(v106);
          *v13.i8 = veor_s8(vmovn_s32(v13), 0x8000800080008000);
          v16.i32[0] = result;
          v109 = vaddq_s32(vshll_n_s16(*v14.i8, 0xFuLL), v16);
          v16.i64[0] = __PAIR64__(v97, v96);
          v16.i64[1] = __PAIR64__(v99, v98);
          v110 = vmlal_s16(vaddq_s32(vshll_n_s16(v107, 0xFuLL), v16), veor_s8(vmovn_s32(v104), 0x8000800080008000), v107);
          v111 = vaddq_s32(vmlal_s16(v109, veor_s8(vmovn_s32(a8), 0x8000800080008000), *v14.i8), vshll_n_s16(v15, 0xFuLL));
          a8 = vmlal_s16(vaddq_s32(v110, vshll_n_s16(v108, 0xFuLL)), veor_s8(vmovn_s32(*v105), 0x8000800080008000), v108);
          v99 = a8.u32[3];
          v98 = a8.u32[2];
          v97 = a8.u32[1];
          v96 = a8.i32[0];
          result = vmlal_s16(v111, *v13.i8, v15).u32[0];
          v102 += 2;
          v101 += 2;
        }

        while (v102 <= v18);
      }

      else
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        result = 0;
        v100 = v125;
      }

      if (v18)
      {
        v112 = (*(v92 + 8 * v18) + 20 * v19);
        a8.i32[0] = v112[1].i32[0];
        v113 = *v100;
        v114 = vdup_n_s16(v113);
        v13.i32[0] = v113;
        *a8.i8 = veor_s8(vmovn_s32(a8), 0x8000800080008000);
        v14.i64[0] = __PAIR64__(v97, v96);
        v14.i64[1] = __PAIR64__(v99, v98);
        v115 = vaddq_s32(vshll_n_s16(v114, 0xFuLL), v14);
        v14.i32[0] = result;
        v116 = vmlal_s16(v115, veor_s8(vmovn_s32(*v112), 0x8000800080008000), v114);
        v99 = v116.u32[3];
        v98 = v116.u32[2];
        v97 = v116.u32[1];
        v96 = v116.i32[0];
        result = vmlal_s16(vaddq_s32(vshll_n_s16(*v13.i8, 0xFuLL), v14), *a8.i8, *v13.i8).u32[0];
      }

      v117.i64[0] = __PAIR64__(v97, v96);
      v117.i64[1] = __PAIR64__(v99, v98);
      *v117.i8 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v117, v95), 0xEuLL));
      a8.i32[0] = result;
      a8 = vshrq_n_s32(vaddq_s32(a8, v95), 0xEuLL);
      v118 = vqmovun_high_s32(*v117.i8, a8);
      a6 = vqtbl2q_s8(*(&a6 - 1), xmmword_18439C520);
      *v17 = v117.i64[0];
      *(v17 + 8) = vmaxvq_u16(a6);
      v17 += 10;
      ++v19;
    }

    while (v19 != v93);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,4,(AlphaStyle)2>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint16x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 16 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 16 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vshll_n_s16(v22, 0xFuLL);
          v24 = vdup_n_s16(HIWORD(v21));
          v25 = vshll_n_s16(v24, 0xFuLL);
          v14 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v19), 0x8000800080008000), v22), v23), veor_s8(vmovn_s32(v20[1]), 0x8000800080008000), v24), v25);
          v13 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v13, veor_s8(vmovn_s32(v18), 0x8000800080008000), v22), v23), veor_s8(vmovn_s32(*v20), 0x8000800080008000), v24), v25);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v26 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v27 = vld1_dup_s16(v15);
        v28 = vshll_n_s16(v27, 0xFuLL);
        v14 = vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v26[1]), 0x8000800080008000), v27), v28);
        v13 = vaddq_s32(vmlal_s16(v13, veor_s8(vmovn_s32(*v26), 0x8000800080008000), v27), v28);
      }

      v29 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL));
      v30 = vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL);
      v31 = vqmovun_s32(v30);
      v32 = vuzp1_s16(v29, v31);
      v33 = vuzp2_s16(v29, v31);
      v34 = vqmovun_high_s32(v29, v30);
      *v30.i8 = vmax_u16(v32, v33);
      *v30.i8 = vmax_u16(vuzp1_s16(*v30.i8, *v12.i8), vuzp2_s16(*v30.i8, *v12.i8));
      *v6++ = vmaxq_u16(v34, vqtbl1q_s8(v30, xmmword_18439C530));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    v35.i64[0] = 0x200000002000;
    v35.i64[1] = 0x200000002000;
    do
    {
      v36 = 0uLL;
      v37 = v8;
      if (v7 >= 2)
      {
        v38 = (a6 + 8);
        result = 2;
        v37 = v8;
        do
        {
          v39 = *v37;
          v37 += 2;
          v40 = vdup_n_s16(v39);
          v41 = vdup_n_s16(HIWORD(v39));
          v36 = vaddq_s32(vmlal_s16(vmlal_s16(v36, veor_s8(vmovn_s32(*(*(v38 - 1) + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v40), veor_s8(vmovn_s32(*(*v38 + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v41), vaddq_s32(vshll_n_s16(v40, 0xFuLL), vshll_n_s16(v41, 0xFuLL)));
          result += 2;
          v38 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v42 = vld1_dup_s16(v37);
        v36 = vaddq_s32(vmlal_s16(v36, veor_s8(vmovn_s32(*(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v42), vshll_n_s16(v42, 0xFuLL));
      }

      v43 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v36, v35), 0xEuLL));
      v43.i16[3] = vmaxv_u16(v43);
      *v6->i8 = v43;
      v6 = (v6 + 8);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,2,(AlphaStyle)2>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint16x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 4)
  {
    v10 = 0;
    v11 = 4;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 8 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 8 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vshll_n_s16(v22, 0xFuLL);
          v24 = vdup_n_s16(HIWORD(v21));
          v25 = vshll_n_s16(v24, 0xFuLL);
          v14 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v19), 0x8000800080008000), v22), v23), veor_s8(vmovn_s32(v20[1]), 0x8000800080008000), v24), v25);
          v13 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v13, veor_s8(vmovn_s32(v18), 0x8000800080008000), v22), v23), veor_s8(vmovn_s32(*v20), 0x8000800080008000), v24), v25);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v26 = (*(a6 - 8 + 8 * v7) + 8 * v10);
        v27 = vld1_dup_s16(v15);
        v28 = vshll_n_s16(v27, 0xFuLL);
        v14 = vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v26[1]), 0x8000800080008000), v27), v28);
        v13 = vaddq_s32(vmlal_s16(v13, veor_s8(vmovn_s32(*v26), 0x8000800080008000), v27), v28);
      }

      v29 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL));
      v30 = vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL);
      v31 = vqmovun_s32(v30);
      v32 = vuzp1_s16(v29, v31);
      v33 = vuzp2_s16(v29, v31);
      v34 = vqmovun_high_s32(v29, v30);
      *v30.i8 = vmax_u16(v32, v33);
      *v6++ = vmaxq_u16(v34, vqtbl1q_s8(v30, xmmword_18439C540));
      v11 += 4;
      v10 += 4;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      if (v7 >= 2)
      {
        v35 = 0uLL;
        v37 = (a6 + 8);
        result = 2;
        v36 = v8;
        do
        {
          v38 = *v36++;
          v35 = vmlal_s16(vmlal_s16(v35, vuzp1_s16(veor_s8(*(*(v37 - 1) + 8 * v9), 0x800000008000), 0x200000002000), vdup_n_s16(v38)), vuzp1_s16(veor_s8(*(*v37 + 8 * v9), 0x800000008000), 0x200000002000), vdup_n_s16(HIWORD(v38)));
          *v35.i8 = vadd_s32(*v35.i8, vadd_s32(vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(v38), 0x10uLL), 0x10uLL), 0xFuLL), vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(HIWORD(v38)), 0x10uLL), 0x10uLL), 0xFuLL)));
          result += 2;
          v37 += 2;
        }

        while (result <= v7);
      }

      else
      {
        v35 = 0uLL;
        v36 = v8;
      }

      if (v7)
      {
        v39 = *v36;
        v35 = vmlal_s16(v35, vuzp1_s16(veor_s8(*(*(a6 - 8 + 8 * v7) + 8 * v9), 0x800000008000), 0x200000002000), vdup_n_s16(v39));
        *v35.i8 = vadd_s32(*v35.i8, vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(v39), 0x10uLL), 0x10uLL), 0xFuLL));
      }

      *v35.i8 = vshr_n_s32(vadd_s32(*v35.i8, 0x200000002000), 0xEuLL);
      v40 = vqmovun_s32(v35);
      v6->i16[0] = v40.i16[0];
      v6->i16[1] = vmaxv_u16(v40);
      v6 = (v6 + 4);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,5,(AlphaStyle)1>(uint64_t result, double a2, double a3, double a4, double a5, uint16x8_t a6, double a7, int32x4_t a8, uint64_t a9, uint64_t a10, int a11, uint16x8_t **a12, uint64_t a13)
{
  v17 = *a12;
  v18 = *(result + 4);
  v125 = (result + 8);
  if (a11 >= 4)
  {
    v20 = 0;
    v120 = a13;
    v121 = (a13 + 8);
    v122 = a13 - 8;
    v21 = 4;
    v22.i64[0] = 0x200000002000;
    v22.i64[1] = 0x200000002000;
    v119 = a11;
    v123 = a11;
    do
    {
      v124 = v20;
      v23 = 0;
      v24 = 0;
      result = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      if (v18 >= 2)
      {
        v43 = v121;
        v44 = 2;
        v42 = v125;
        v45 = 5 * v20;
        do
        {
          v46 = (*(v43 - 1) + 4 * v45);
          v47 = (*v43 + 4 * v45);
          v48 = *v42;
          v42 += 2;
          v49 = vdup_n_s16(v48);
          *v16.i8 = veor_s8(vmovn_s32(v46[2]), 0x8000800080008000);
          v50 = vdup_n_s16(HIWORD(v48));
          v51.i64[0] = __PAIR64__(v24, v23);
          v51.i64[1] = __PAIR64__(v25, result);
          v52 = vshlq_n_s32(vaddl_s16(v49, v50), 0xFuLL);
          v53.i64[0] = __PAIR64__(v27, v26);
          v53.i64[1] = __PAIR64__(v29, v28);
          v54.i64[0] = __PAIR64__(v31, v30);
          v54.i64[1] = __PAIR64__(v33, v32);
          v55.i64[0] = __PAIR64__(v35, v34);
          v55.i64[1] = __PAIR64__(v37, v36);
          v56.i64[0] = __PAIR64__(v39, v38);
          v56.i64[1] = __PAIR64__(v41, v40);
          v57 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v51), veor_s8(vmovn_s32(*v46), 0x8000800080008000), v49), veor_s8(vmovn_s32(*v47), 0x8000800080008000), v50);
          v25 = v57.i32[3];
          result = v57.u32[2];
          v24 = v57.i32[1];
          v23 = v57.i32[0];
          v58 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v53), veor_s8(vmovn_s32(v46[1]), 0x8000800080008000), v49), veor_s8(vmovn_s32(v47[1]), 0x8000800080008000), v50);
          v29 = v58.i32[3];
          v28 = v58.i32[2];
          v27 = v58.i32[1];
          v26 = v58.i32[0];
          v59 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v54), *v16.i8, v49), veor_s8(vmovn_s32(v47[2]), 0x8000800080008000), v50);
          v33 = v59.i32[3];
          v32 = v59.i32[2];
          v31 = v59.i32[1];
          v30 = v59.i32[0];
          v60 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v55), veor_s8(vmovn_s32(v46[3]), 0x8000800080008000), v49), veor_s8(vmovn_s32(v47[3]), 0x8000800080008000), v50);
          v37 = v60.i32[3];
          v36 = v60.i32[2];
          v35 = v60.i32[1];
          v34 = v60.i32[0];
          v61 = vmlal_s16(vmlal_s16(vaddq_s32(v52, v56), veor_s8(vmovn_s32(v46[4]), 0x8000800080008000), v49), veor_s8(vmovn_s32(v47[4]), 0x8000800080008000), v50);
          v41 = v61.i32[3];
          v40 = v61.i32[2];
          v39 = v61.i32[1];
          v38 = v61.i32[0];
          v44 += 2;
          v43 += 2;
        }

        while (v44 <= v18);
      }

      else
      {
        v42 = v125;
      }

      if (v18)
      {
        v62 = (*(v122 + 8 * v18) + 20 * v124);
        v63 = vld1_dup_s16(v42);
        v64.i64[0] = __PAIR64__(v39, v38);
        v65 = vshll_n_s16(v63, 0xFuLL);
        v64.i64[1] = __PAIR64__(v41, v40);
        v66.i64[0] = __PAIR64__(v35, v34);
        v66.i64[1] = __PAIR64__(v37, v36);
        v67 = vaddq_s32(v65, v64);
        v68.i64[0] = __PAIR64__(v31, v30);
        v68.i64[1] = __PAIR64__(v33, v32);
        v69 = vaddq_s32(v65, v66);
        v70.i64[0] = __PAIR64__(v27, v26);
        v71 = vaddq_s32(v65, v68);
        v70.i64[1] = __PAIR64__(v29, v28);
        v72.i64[0] = __PAIR64__(v24, v23);
        v72.i64[1] = __PAIR64__(v25, result);
        v73 = vmlal_s16(vaddq_s32(v65, v72), veor_s8(vmovn_s32(*v62), 0x8000800080008000), v63);
        v25 = v73.i32[3];
        result = v73.u32[2];
        v24 = v73.i32[1];
        v74 = vmlal_s16(vaddq_s32(v65, v70), veor_s8(vmovn_s32(v62[1]), 0x8000800080008000), v63);
        v29 = v74.i32[3];
        v23 = v73.i32[0];
        v28 = v74.i32[2];
        v27 = v74.i32[1];
        v75 = vmlal_s16(v71, veor_s8(vmovn_s32(v62[2]), 0x8000800080008000), v63);
        v33 = v75.i32[3];
        v32 = v75.i32[2];
        v31 = v75.i32[1];
        v26 = v74.i32[0];
        v76 = vmlal_s16(v69, veor_s8(vmovn_s32(v62[3]), 0x8000800080008000), v63);
        v37 = v76.i32[3];
        v36 = v76.i32[2];
        v30 = v75.i32[0];
        v35 = v76.i32[1];
        v77 = vmlal_s16(v67, veor_s8(vmovn_s32(v62[4]), 0x8000800080008000), v63);
        v41 = v77.i32[3];
        v34 = v76.i32[0];
        v40 = v77.i32[2];
        v39 = v77.i32[1];
        v38 = v77.i32[0];
      }

      v78.i64[0] = __PAIR64__(v24, v23);
      v78.i64[1] = __PAIR64__(v25, result);
      v79 = vshrq_n_s32(vaddq_s32(v78, v22), 0xEuLL);
      *v79.i8 = vqmovun_s32(v79);
      v80.i64[0] = __PAIR64__(v27, v26);
      v80.i64[1] = __PAIR64__(v29, v28);
      v81 = vshrq_n_s32(vaddq_s32(v80, v22), 0xEuLL);
      v82 = vqmovun_s32(v81);
      v83 = vqmovun_high_s32(*v79.i8, v81);
      v81.i64[0] = __PAIR64__(v31, v30);
      v81.i64[1] = __PAIR64__(v33, v32);
      *v81.i8 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v81, v22), 0xEuLL));
      v84.i64[0] = __PAIR64__(v35, v34);
      v84.i64[1] = __PAIR64__(v37, v36);
      v85 = vshrq_n_s32(vaddq_s32(v84, v22), 0xEuLL);
      v86 = vqmovun_s32(v85);
      v13 = vqmovun_high_s32(*v81.i8, v85);
      v85.i64[0] = __PAIR64__(v39, v38);
      v14.i64[1] = __PAIR64__(v41, v40);
      v87.i32[0] = vext_s8(*v79.i8, *v81.i8, 6uLL).u32[0];
      v88.i32[0] = vext_s8(vzip2_s16(v82, *v79.i8), *v79.i8, 2uLL).u32[0];
      v89.i32[0] = vtrn2_s16(*v79.i8, vzip2_s16(*v79.i8, v82)).u32[0];
      v79.i16[1] = v82.i16[1];
      v82.i16[1] = v81.i16[1];
      *v14.i8 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v14, v22), 0xEuLL));
      v15 = vext_s8(*v14.i8, v86, 4uLL);
      v90 = vext_s8(*v14.i8, v86, 2uLL);
      v91 = vext_s8(*v81.i8, *v14.i8, 2uLL);
      v81.i16[3] = v86.i16[3];
      v86.i16[3] = v14.i16[3];
      v82.i32[1] = v86.i32[1];
      v87.i32[1] = vext_s8(*&v15, *&v15, 2uLL).i32[1];
      v88.i32[1] = vext_s8(v90, v90, 2uLL).i32[1];
      v89.i32[1] = v91.i32[1];
      v79.i32[1] = v81.i32[1];
      *v79.i8 = vmax_u16(vmax_u16(vmax_u16(vmax_u16(v82, v87), v88), v89), *v79.i8);
      a8 = vqtbl1q_s8(v79, xmmword_18439C550);
      a6 = vmaxq_u16(v83, vqtbl1q_s8(v79, xmmword_18439C560));
      *v17 = a6;
      v17[1] = vmaxq_u16(v13, a8);
      v17[2].i64[0] = v14.i64[0];
      v17 = (v17 + 40);
      v21 += 4;
      v20 = v124 + 4;
    }

    while (v21 <= v123);
    a11 = v119;
    LODWORD(v19) = v119 & 0x7FFFFFFC;
    a13 = v120;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (v19 < a11)
  {
    v92 = a13 - 8;
    v19 = v19;
    v93 = a11;
    v94 = (a13 + 8);
    v95.i64[0] = 0x200000002000;
    v95.i64[1] = 0x200000002000;
    do
    {
      if (v18 >= 2)
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        LODWORD(result) = 0;
        v101 = v94;
        v102 = 2;
        v100 = v125;
        do
        {
          v103 = *(v101 - 1) + 20 * v19;
          v104 = *v103;
          a8.i32[0] = *(v103 + 16);
          v105 = (*v101 + 20 * v19);
          v13.i32[0] = v105[1].i32[0];
          v106 = *v100++;
          v107 = vdup_n_s16(v106);
          v14.i32[0] = v106;
          v108 = vdup_n_s16(HIWORD(v106));
          v15.i32[0] = HIWORD(v106);
          *v13.i8 = veor_s8(vmovn_s32(v13), 0x8000800080008000);
          v16.i32[0] = result;
          v109 = vaddq_s32(vshll_n_s16(*v14.i8, 0xFuLL), v16);
          v16.i64[0] = __PAIR64__(v97, v96);
          v16.i64[1] = __PAIR64__(v99, v98);
          v110 = vmlal_s16(vaddq_s32(vshll_n_s16(v107, 0xFuLL), v16), veor_s8(vmovn_s32(v104), 0x8000800080008000), v107);
          v111 = vaddq_s32(vmlal_s16(v109, veor_s8(vmovn_s32(a8), 0x8000800080008000), *v14.i8), vshll_n_s16(v15, 0xFuLL));
          a8 = vmlal_s16(vaddq_s32(v110, vshll_n_s16(v108, 0xFuLL)), veor_s8(vmovn_s32(*v105), 0x8000800080008000), v108);
          v99 = a8.u32[3];
          v98 = a8.u32[2];
          v97 = a8.u32[1];
          v96 = a8.i32[0];
          result = vmlal_s16(v111, *v13.i8, v15).u32[0];
          v102 += 2;
          v101 += 2;
        }

        while (v102 <= v18);
      }

      else
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        result = 0;
        v100 = v125;
      }

      if (v18)
      {
        v112 = (*(v92 + 8 * v18) + 20 * v19);
        a8.i32[0] = v112[1].i32[0];
        v113 = *v100;
        v114 = vdup_n_s16(v113);
        v13.i32[0] = v113;
        *a8.i8 = veor_s8(vmovn_s32(a8), 0x8000800080008000);
        v14.i64[0] = __PAIR64__(v97, v96);
        v14.i64[1] = __PAIR64__(v99, v98);
        v115 = vaddq_s32(vshll_n_s16(v114, 0xFuLL), v14);
        v14.i32[0] = result;
        v116 = vmlal_s16(v115, veor_s8(vmovn_s32(*v112), 0x8000800080008000), v114);
        v99 = v116.u32[3];
        v98 = v116.u32[2];
        v97 = v116.u32[1];
        v96 = v116.i32[0];
        result = vmlal_s16(vaddq_s32(vshll_n_s16(*v13.i8, 0xFuLL), v14), *a8.i8, *v13.i8).u32[0];
      }

      v117.i64[0] = __PAIR64__(v97, v96);
      v117.i64[1] = __PAIR64__(v99, v98);
      *v117.i8 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v117, v95), 0xEuLL));
      a8.i32[0] = result;
      a8 = vshrq_n_s32(vaddq_s32(a8, v95), 0xEuLL);
      v118 = vqmovun_high_s32(*v117.i8, a8);
      a6 = vqtbl2q_s8(*(&a6 - 1), xmmword_18439C520);
      v117.i16[0] = vmaxvq_u16(a6);
      *a8.i8 = vqmovun_s32(a8);
      v17->i64[0] = v117.i64[0];
      v17->i16[4] = a8.i16[0];
      v17 = (v17 + 10);
      ++v19;
    }

    while (v19 != v93);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,4,(AlphaStyle)1>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint16x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    v13.i64[0] = 0xFFFFLL;
    v13.i64[1] = 0xFFFFLL;
    do
    {
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v17 = 2;
        v16 = v8;
        do
        {
          v18 = (*(result - 8) + 16 * v10);
          v19 = *v18;
          v20 = v18[1];
          v21 = (*result + 16 * v10);
          v22 = *v16;
          v16 += 2;
          v23 = vdup_n_s16(v22);
          v24 = vshll_n_s16(v23, 0xFuLL);
          v25 = vdup_n_s16(HIWORD(v22));
          v26 = vshll_n_s16(v25, 0xFuLL);
          v15 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v15, veor_s8(vmovn_s32(v20), 0x8000800080008000), v23), v24), veor_s8(vmovn_s32(v21[1]), 0x8000800080008000), v25), v26);
          v14 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v19), 0x8000800080008000), v23), v24), veor_s8(vmovn_s32(*v21), 0x8000800080008000), v25), v26);
          v17 += 2;
          result += 16;
        }

        while (v17 <= v7);
      }

      if (v7)
      {
        v27 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v28 = vld1_dup_s16(v16);
        v29 = vshll_n_s16(v28, 0xFuLL);
        v15 = vaddq_s32(vmlal_s16(v15, veor_s8(vmovn_s32(v27[1]), 0x8000800080008000), v28), v29);
        v14 = vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(*v27), 0x8000800080008000), v28), v29);
      }

      v30 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL));
      v31 = vshrq_n_s32(vaddq_s32(v15, v12), 0xEuLL);
      v32 = vqmovun_s32(v31);
      v33 = vuzp1_s16(v30, v32);
      v34 = vuzp2_s16(v30, v32);
      v35 = vqmovun_high_s32(v30, v31);
      *v31.i8 = vmax_u16(v33, v34);
      v31.i64[0] = vmovl_u16(vmax_u16(vuzp1_s16(*v31.i8, *v12.i8), vuzp2_s16(*v31.i8, *v12.i8))).u64[0];
      v36.i64[0] = v31.u32[0];
      v36.i64[1] = v31.u32[1];
      *v6++ = vmaxq_u16(v35, vandq_s8(v36, v13));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    v37.i64[0] = 0x200000002000;
    v37.i64[1] = 0x200000002000;
    do
    {
      v38 = 0uLL;
      v39 = v8;
      if (v7 >= 2)
      {
        v40 = (a6 + 8);
        result = 2;
        v39 = v8;
        do
        {
          v41 = *v39;
          v39 += 2;
          v42 = vdup_n_s16(v41);
          v43 = vdup_n_s16(HIWORD(v41));
          v38 = vaddq_s32(vmlal_s16(vmlal_s16(v38, veor_s8(vmovn_s32(*(*(v40 - 1) + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v42), veor_s8(vmovn_s32(*(*v40 + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v43), vaddq_s32(vshll_n_s16(v42, 0xFuLL), vshll_n_s16(v43, 0xFuLL)));
          result += 2;
          v40 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v44 = vld1_dup_s16(v39);
        v38 = vaddq_s32(vmlal_s16(v38, veor_s8(vmovn_s32(*(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v44), vshll_n_s16(v44, 0xFuLL));
      }

      v45 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v38, v37), 0xEuLL));
      v45.i16[0] = vmaxv_u16(v45);
      *v6->i8 = v45;
      v6 = (v6 + 8);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,2,(AlphaStyle)1>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint16x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 4)
  {
    v10 = 0;
    v11 = 4;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 8 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 8 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vshll_n_s16(v22, 0xFuLL);
          v24 = vdup_n_s16(HIWORD(v21));
          v25 = vshll_n_s16(v24, 0xFuLL);
          v14 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v19), 0x8000800080008000), v22), v23), veor_s8(vmovn_s32(v20[1]), 0x8000800080008000), v24), v25);
          v13 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v13, veor_s8(vmovn_s32(v18), 0x8000800080008000), v22), v23), veor_s8(vmovn_s32(*v20), 0x8000800080008000), v24), v25);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v26 = (*(a6 - 8 + 8 * v7) + 8 * v10);
        v27 = vld1_dup_s16(v15);
        v28 = vshll_n_s16(v27, 0xFuLL);
        v14 = vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v26[1]), 0x8000800080008000), v27), v28);
        v13 = vaddq_s32(vmlal_s16(v13, veor_s8(vmovn_s32(*v26), 0x8000800080008000), v27), v28);
      }

      v29 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL));
      v30 = vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL);
      v31 = vqmovun_s32(v30);
      *v6++ = vmaxq_u16(vqmovun_high_s32(v29, v30), vmovl_u16(vmax_u16(vuzp1_s16(v29, v31), vuzp2_s16(v29, v31))));
      v11 += 4;
      v10 += 4;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      if (v7 >= 2)
      {
        v32 = 0uLL;
        v34 = (a6 + 8);
        result = 2;
        v33 = v8;
        do
        {
          v35 = *v33++;
          v32 = vmlal_s16(vmlal_s16(v32, vuzp1_s16(veor_s8(*(*(v34 - 1) + 8 * v9), 0x800000008000), 0x200000002000), vdup_n_s16(v35)), vuzp1_s16(veor_s8(*(*v34 + 8 * v9), 0x800000008000), 0x200000002000), vdup_n_s16(HIWORD(v35)));
          *v32.i8 = vadd_s32(*v32.i8, vadd_s32(vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(v35), 0x10uLL), 0x10uLL), 0xFuLL), vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(HIWORD(v35)), 0x10uLL), 0x10uLL), 0xFuLL)));
          result += 2;
          v34 += 2;
        }

        while (result <= v7);
      }

      else
      {
        v32 = 0uLL;
        v33 = v8;
      }

      if (v7)
      {
        v36 = *v33;
        v32 = vmlal_s16(v32, vuzp1_s16(veor_s8(*(*(a6 - 8 + 8 * v7) + 8 * v9), 0x800000008000), 0x200000002000), vdup_n_s16(v36));
        *v32.i8 = vadd_s32(*v32.i8, vshl_n_s32(vshr_n_s32(vshl_n_s32(vdup_n_s32(v36), 0x10uLL), 0x10uLL), 0xFuLL));
      }

      *v32.i8 = vshr_n_s32(vadd_s32(*v32.i8, 0x200000002000), 0xEuLL);
      v37 = vqmovun_s32(v32);
      v6->i16[1] = v37.i16[1];
      v6->i16[0] = vmaxv_u16(v37);
      v6 = (v6 + 4);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,4,(AlphaStyle)0>(uint64_t result, uint64_t a2, uint64_t a3, int a4, int16x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 16 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 16 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vshll_n_s16(v22, 0xFuLL);
          v24 = vdup_n_s16(HIWORD(v21));
          v25 = vshll_n_s16(v24, 0xFuLL);
          v14 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v19), 0x8000800080008000), v22), v23), veor_s8(vmovn_s32(v20[1]), 0x8000800080008000), v24), v25);
          v13 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v13, veor_s8(vmovn_s32(v18), 0x8000800080008000), v22), v23), veor_s8(vmovn_s32(*v20), 0x8000800080008000), v24), v25);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v26 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v27 = vld1_dup_s16(v15);
        v28 = vshll_n_s16(v27, 0xFuLL);
        v14 = vaddq_s32(vmlal_s16(v14, veor_s8(vmovn_s32(v26[1]), 0x8000800080008000), v27), v28);
        v13 = vaddq_s32(vmlal_s16(v13, veor_s8(vmovn_s32(*v26), 0x8000800080008000), v27), v28);
      }

      *v6++ = vqmovun_high_s32(vqmovun_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL)), vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    v29.i64[0] = 0x200000002000;
    v29.i64[1] = 0x200000002000;
    do
    {
      v30 = 0uLL;
      v31 = v8;
      if (v7 >= 2)
      {
        v32 = (a6 + 8);
        result = 2;
        v31 = v8;
        do
        {
          v33 = *v31;
          v31 += 2;
          v34 = vdup_n_s16(v33);
          v35 = vdup_n_s16(HIWORD(v33));
          v30 = vaddq_s32(vmlal_s16(vmlal_s16(v30, veor_s8(vmovn_s32(*(*(v32 - 1) + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v34), veor_s8(vmovn_s32(*(*v32 + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v35), vaddq_s32(vshll_n_s16(v34, 0xFuLL), vshll_n_s16(v35, 0xFuLL)));
          result += 2;
          v32 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v36 = vld1_dup_s16(v31);
        v30 = vaddq_s32(vmlal_s16(v30, veor_s8(vmovn_s32(*(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF))), 0x8000800080008000), v36), vshll_n_s16(v36, 0xFuLL));
      }

      *v6->i8 = vqmovun_s32(vshrq_n_s32(vaddq_s32(v30, v29), 0xEuLL));
      v6 = (v6 + 8);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,3,(AlphaStyle)0>(uint64_t result, double a2, double a3, double a4, double a5, double a6, int32x4_t a7, double a8, int32x4_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t *a13, uint64_t a14)
{
  v14 = *a13;
  v15 = *(result + 4);
  v16 = (result + 8);
  if (a12 >= 4)
  {
    v18 = 0;
    v19 = 4;
    v20.i64[0] = 0x200000002000;
    v20.i64[1] = 0x200000002000;
    do
    {
      if (v15 >= 2)
      {
        v21 = 0;
        v22 = 0;
        LODWORD(result) = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v33 = (a14 + 8);
        v34 = 2;
        v32 = v16;
        do
        {
          v35 = (*(v33 - 1) + 12 * v18);
          v36 = *v35;
          v37 = v35[1];
          v38 = v35[2];
          v39 = (*v33 + 12 * v18);
          v40 = *v32;
          v32 += 2;
          v41 = vdup_n_s16(v40);
          v42 = vshll_n_s16(v41, 0xFuLL);
          *a7.i8 = veor_s8(vmovn_s32(*v39), 0x8000800080008000);
          v43 = vdup_n_s16(HIWORD(v40));
          *a9.i8 = veor_s8(vmovn_s32(v39[2]), 0x8000800080008000);
          v44 = vshll_n_s16(v43, 0xFuLL);
          v45.i64[0] = __PAIR64__(v29, v28);
          v45.i64[1] = __PAIR64__(v31, v30);
          v46 = vaddq_s32(v42, v45);
          v47.i64[0] = __PAIR64__(v25, v24);
          v47.i64[1] = __PAIR64__(v27, v26);
          v48 = vaddq_s32(v42, v47);
          v49.i64[0] = __PAIR64__(v22, v21);
          v49.i64[1] = __PAIR64__(v23, result);
          v50 = vmlal_s16(vaddq_s32(v42, v49), veor_s8(vmovn_s32(v36), 0x8000800080008000), v41);
          v51 = vaddq_s32(vmlal_s16(v46, veor_s8(vmovn_s32(v38), 0x8000800080008000), v41), v44);
          v52 = vmlal_s16(vaddq_s32(v50, v44), *a7.i8, v43);
          v23 = v52.i32[3];
          result = v52.u32[2];
          v22 = v52.i32[1];
          v21 = v52.i32[0];
          v53 = vmlal_s16(vaddq_s32(vmlal_s16(v48, veor_s8(vmovn_s32(v37), 0x8000800080008000), v41), v44), veor_s8(vmovn_s32(v39[1]), 0x8000800080008000), v43);
          v27 = v53.i32[3];
          v26 = v53.i32[2];
          v25 = v53.i32[1];
          v24 = v53.i32[0];
          v54 = vmlal_s16(v51, *a9.i8, v43);
          v31 = v54.i32[3];
          v30 = v54.i32[2];
          v29 = v54.i32[1];
          v28 = v54.i32[0];
          v34 += 2;
          v33 += 2;
        }

        while (v34 <= v15);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        result = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = v16;
      }

      if (v15)
      {
        v55 = (*(a14 - 8 + 8 * v15) + 12 * v18);
        *a7.i8 = vld1_dup_s16(v32);
        v56.i64[0] = __PAIR64__(v29, v28);
        v56.i64[1] = __PAIR64__(v31, v30);
        a9 = vshll_n_s16(*a7.i8, 0xFuLL);
        v57.i64[0] = __PAIR64__(v25, v24);
        v57.i64[1] = __PAIR64__(v27, v26);
        v58.i64[0] = __PAIR64__(v22, v21);
        v58.i64[1] = __PAIR64__(v23, result);
        v59 = vmlal_s16(vaddq_s32(a9, v58), veor_s8(vmovn_s32(*v55), 0x8000800080008000), *a7.i8);
        v23 = v59.i32[3];
        result = v59.u32[2];
        v22 = v59.i32[1];
        v60 = vmlal_s16(vaddq_s32(a9, v57), veor_s8(vmovn_s32(v55[1]), 0x8000800080008000), *a7.i8);
        v27 = v60.i32[3];
        v26 = v60.i32[2];
        v21 = v59.i32[0];
        v25 = v60.i32[1];
        v61 = vmlal_s16(vaddq_s32(a9, v56), veor_s8(vmovn_s32(v55[2]), 0x8000800080008000), *a7.i8);
        v31 = v61.i32[3];
        v24 = v60.i32[0];
        v30 = v61.i32[2];
        v29 = v61.i32[1];
        v28 = v61.i32[0];
      }

      v62.i64[0] = __PAIR64__(v22, v21);
      v62.i64[1] = __PAIR64__(v23, result);
      v63.i64[0] = __PAIR64__(v25, v24);
      v63.i64[1] = __PAIR64__(v27, v26);
      v64.i64[0] = __PAIR64__(v29, v28);
      v64.i64[1] = __PAIR64__(v31, v30);
      *v14 = vqmovun_high_s32(vqmovun_s32(vshrq_n_s32(vaddq_s32(v62, v20), 0xEuLL)), vshrq_n_s32(vaddq_s32(v63, v20), 0xEuLL));
      *(v14 + 16) = vqmovun_s32(vshrq_n_s32(vaddq_s32(v64, v20), 0xEuLL));
      v14 += 24;
      v19 += 4;
      v18 += 4;
    }

    while (v19 <= a12);
    LODWORD(v17) = a12 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 < a12)
  {
    v17 = v17;
    v65.i64[0] = 0x200000002000;
    v65.i64[1] = 0x200000002000;
    do
    {
      v66 = 0uLL;
      v67 = v16;
      if (v15 >= 2)
      {
        v68 = (a14 + 8);
        result = 2;
        v67 = v16;
        do
        {
          v69 = *(v68 - 1) + 12 * v17;
          v70 = *v69;
          a7.i32[0] = *(v69 + 8);
          v71 = (*v68 + 12 * v17);
          a9.i32[0] = v71[1].i32[0];
          v72 = vuzp1_s16(v70, *a7.i8);
          v73 = *v67;
          v67 += 2;
          v74 = vdup_n_s16(v73);
          v75 = veor_s8(vuzp1_s16(*v71, *a9.i8), 0x8000800080008000);
          *a9.i8 = vdup_n_s16(HIWORD(v73));
          v76 = vmlal_s16(vmlal_s16(v66, veor_s8(v72, 0x8000800080008000), v74), v75, *a9.i8);
          a7 = vshll_n_s16(*a9.i8, 0xFuLL);
          v66 = vaddq_s32(v76, vaddq_s32(vshll_n_s16(v74, 0xFuLL), a7));
          result += 2;
          v68 += 2;
        }

        while (result <= v15);
      }

      if (v15)
      {
        v77 = (*(a14 - 8 + 8 * v15) + 12 * v17);
        a7.i32[0] = v77[1].i32[0];
        v78 = veor_s8(vuzp1_s16(*v77, *a7.i8), 0x8000800080008000);
        *a7.i8 = vld1_dup_s16(v67);
        v66 = vaddq_s32(vmlal_s16(v66, v78, *a7.i8), vshll_n_s16(*a7.i8, 0xFuLL));
      }

      v79 = vqmovun_s32(vshlq_s32(vaddq_s32(v66, v65), xmmword_18439C570));
      *v14 = v79.i32[0];
      *(v14 + 4) = v79.i16[2];
      v14 += 6;
      ++v17;
    }

    while (v17 != a12);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned short,1,(AlphaStyle)0>(uint64_t result, double a2, double a3, __n128 a4, int32x4_t a5, double a6, int32x4_t a7, int32x4_t a8, uint64_t a9, uint64_t a10, int a11, __n128 **a12, uint64_t a13)
{
  v13 = *a12;
  v14 = *(result + 4);
  v15 = (result + 8);
  if (a11 >= 8)
  {
    v17 = 0;
    v18 = 8;
    v19.i64[0] = 0x200000002000;
    v19.i64[1] = 0x200000002000;
    do
    {
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = v15;
      if (v14 >= 2)
      {
        v23 = (a13 + 8);
        result = 2;
        v22 = v15;
        do
        {
          v24 = *(v23 - 1) + 4 * v17;
          v25 = *v24;
          a7 = *(v24 + 16);
          v26 = (*v23 + 4 * v17);
          v27 = *v22;
          v22 += 2;
          v28 = vdup_n_s16(v27);
          *a7.i8 = veor_s8(vmovn_s32(a7), 0x8000800080008000);
          v29 = vshll_n_s16(v28, 0xFuLL);
          *a8.i8 = veor_s8(vmovn_s32(*v26), 0x8000800080008000);
          v30 = vdup_n_s16(HIWORD(v27));
          v31 = vshll_n_s16(v30, 0xFuLL);
          v21 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v21, *a7.i8, v28), v29), veor_s8(vmovn_s32(v26[1]), 0x8000800080008000), v30), v31);
          v20 = vaddq_s32(vmlal_s16(vaddq_s32(vmlal_s16(v20, veor_s8(vmovn_s32(v25), 0x8000800080008000), v28), v29), *a8.i8, v30), v31);
          result += 2;
          v23 += 2;
        }

        while (result <= v14);
      }

      if (v14)
      {
        v32 = (*(a13 - 8 + 8 * v14) + 4 * v17);
        *a8.i8 = vld1_dup_s16(v22);
        *a7.i8 = veor_s8(vmovn_s32(v32[1]), 0x8000800080008000);
        v33 = vshll_n_s16(*a8.i8, 0xFuLL);
        v21 = vaddq_s32(vmlal_s16(v21, *a7.i8, *a8.i8), v33);
        v20 = vaddq_s32(vmlal_s16(v20, veor_s8(vmovn_s32(*v32), 0x8000800080008000), *a8.i8), v33);
      }

      a5 = vshrq_n_s32(vaddq_s32(v21, v19), 0xEuLL);
      a4 = vqmovun_high_s32(vqmovun_s32(vshrq_n_s32(vaddq_s32(v20, v19), 0xEuLL)), a5);
      *v13++ = a4;
      v18 += 8;
      v17 += 8;
    }

    while (v18 <= a11);
    v16 = a11 & 0x7FFFFFF8;
  }

  else
  {
    v16 = 0;
  }

  v34 = v16 | 4;
  if ((v16 | 4) <= a11)
  {
    v35.i64[0] = 0x200000002000;
    v35.i64[1] = 0x200000002000;
    do
    {
      v36 = 0uLL;
      v37 = 4 * v16;
      v38 = v15;
      if (v14 >= 2)
      {
        v39 = (a13 + 8);
        result = 2;
        v38 = v15;
        do
        {
          v40 = *v38;
          v38 += 2;
          *a7.i8 = vdup_n_s16(v40);
          a8 = vshll_n_s16(*a7.i8, 0xFuLL);
          v41 = vdup_n_s16(HIWORD(v40));
          a5 = vaddq_s32(a8, vshll_n_s16(v41, 0xFuLL));
          v36 = vaddq_s32(vmlal_s16(vmlal_s16(v36, veor_s8(vmovn_s32(*(*(v39 - 1) + v37)), 0x8000800080008000), *a7.i8), veor_s8(vmovn_s32(*(*v39 + v37)), 0x8000800080008000), v41), a5);
          result += 2;
          v39 += 2;
        }

        while (result <= v14);
      }

      if (v14)
      {
        v42 = vld1_dup_s16(v38);
        *a5.i8 = veor_s8(vmovn_s32(*(*(a13 - 8 + 8 * v14) + v37)), 0x8000800080008000);
        a7 = vshll_n_s16(v42, 0xFuLL);
        v36 = vaddq_s32(vmlal_s16(v36, *a5.i8, v42), a7);
      }

      a4.n128_u64[0] = vqmovun_s32(vshrq_n_s32(vaddq_s32(v36, v35), 0xEuLL));
      v13->n128_u64[0] = a4.n128_u64[0];
      v13 = (v13 + 8);
      v16 = v34;
      v34 += 4;
    }

    while (v34 <= a11);
  }

  for (; v16 < a11; ++v16)
  {
    v43 = 0uLL;
    if (v14 >= 2)
    {
      v45 = (a13 + 8);
      result = 2;
      v44 = v15;
      do
      {
        v46 = *v44++;
        a4.n128_u32[0] = *(*(v45 - 1) + 4 * v16) ^ 0xFFFF8000;
        a5.i32[0] = v46;
        a7.i32[0] = *(*v45 + 4 * v16) ^ 0xFFFF8000;
        a8.i32[0] = HIWORD(v46);
        v43 = vmlal_s16(vmlal_s16(v43, a4.n128_u64[0], *a5.i8), *a7.i8, *a8.i8);
        a4.n128_u64[0] = vadd_s32(vshl_n_s32(vshr_n_s32(vshl_n_s32(*a5.i8, 0x10uLL), 0x10uLL), 0xFuLL), vshl_n_s32(vshr_n_s32(vshl_n_s32(*a8.i8, 0x10uLL), 0x10uLL), 0xFuLL));
        *v43.i8 = vadd_s32(*v43.i8, a4.n128_u64[0]);
        result += 2;
        v45 += 2;
      }

      while (result <= v14);
    }

    else
    {
      v44 = v15;
    }

    if (v14)
    {
      a4.n128_u32[0] = *(*(a13 - 8 + 8 * v14) + 4 * v16) ^ 0xFFFF8000;
      a5.i16[0] = *v44;
      v43 = vmlal_s16(v43, a4.n128_u64[0], *a5.i8);
      *v43.i8 = vadd_s32(*v43.i8, vshl_n_s32(vshr_n_s32(vshl_n_s32(*a5.i8, 0x10uLL), 0x10uLL), 0xFuLL));
    }

    *v43.i8 = vshr_n_s32(vadd_s32(*v43.i8, 0x200000002000), 0xEuLL);
    v13->n128_u16[0] = vqmovun_s32(v43).u16[0];
    v13 = (v13 + 2);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,4,(AlphaStyle)3>(uint64_t result, double a2, double a3, int32x4_t a4, double a5, int32x4_t a6, int32x4_t a7, uint8x8_t a8, int32x4_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14)
{
  v14 = *a13;
  v15 = *(a13 + 8);
  v16 = *(result + 4);
  v113 = (result + 8);
  if (a12 >= 4)
  {
    v18 = 0;
    v109 = a14 - 8;
    v106 = a14;
    v108 = (a14 + 8);
    v19 = 4;
    v20.i64[0] = 0x200000002000;
    v20.i64[1] = 0x200000002000;
    a4.i32[1] = -1;
    v107 = a12;
    v110 = a12;
    do
    {
      v111 = v19;
      v112 = v18;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      result = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      if (v16 >= 2)
      {
        v41 = v108;
        v42 = 2;
        v40 = v113;
        v43 = 5 * v18;
        do
        {
          v44 = *(v41 - 1) + 4 * v43;
          v46 = *(v44 + 32);
          v45 = *(v44 + 48);
          v47 = *v44;
          a7 = *(v44 + 16);
          v48 = *(v44 + 64);
          v49 = (*v41 + 4 * v43);
          v50 = vmovn_s32(v46);
          v51 = *v40;
          v40 += 2;
          v52 = vdup_n_s16(v51);
          v46.i64[0] = __PAIR64__(v37, v36);
          v46.i64[1] = __PAIR64__(v39, v38);
          v53 = vmlal_s16(v46, vmovn_s32(v48), v52);
          v48.i64[0] = __PAIR64__(v33, v32);
          v48.i64[1] = __PAIR64__(v35, v34);
          v54 = vmlal_s16(v48, vmovn_s32(v45), v52);
          v55.i64[0] = __PAIR64__(v29, v28);
          v55.i64[1] = __PAIR64__(v31, v30);
          v56 = vmlal_s16(v55, v50, v52);
          v57.i64[0] = __PAIR64__(v25, v24);
          v57.i64[1] = __PAIR64__(v27, v26);
          v58 = vmlal_s16(v57, vmovn_s32(a7), v52);
          v59.i64[0] = __PAIR64__(v22, v21);
          v59.i64[1] = __PAIR64__(result, v23);
          v60 = vmlal_s16(v59, vmovn_s32(v47), v52);
          v61 = vdup_n_s16(HIWORD(v51));
          v62 = vmlal_s16(v60, vmovn_s32(*v49), v61);
          result = v62.u32[3];
          v23 = v62.i32[2];
          v22 = v62.i32[1];
          v21 = v62.i32[0];
          v63 = vmlal_s16(v58, vmovn_s32(v49[1]), v61);
          v27 = v63.i32[3];
          v26 = v63.i32[2];
          v25 = v63.i32[1];
          v24 = v63.i32[0];
          v64 = vmlal_s16(v56, vmovn_s32(v49[2]), v61);
          v31 = v64.u32[3];
          v30 = v64.u32[2];
          v29 = v64.u32[1];
          v28 = v64.i32[0];
          a9 = vmlal_s16(v54, vmovn_s32(v49[3]), v61);
          v35 = a9.u32[3];
          v34 = a9.u32[2];
          v33 = a9.u32[1];
          v32 = a9.i32[0];
          v65 = vmlal_s16(v53, vmovn_s32(v49[4]), v61);
          v39 = v65.i32[3];
          v38 = v65.i32[2];
          v37 = v65.i32[1];
          v36 = v65.i32[0];
          v42 += 2;
          v41 += 2;
        }

        while (v42 <= v16);
      }

      else
      {
        v40 = v113;
      }

      if (v16)
      {
        v66 = (*(v109 + 8 * v16) + 20 * v112);
        v67 = vld1_dup_s16(v40);
        v68.i64[0] = __PAIR64__(v22, v21);
        v68.i64[1] = __PAIR64__(result, v23);
        v69 = vmlal_s16(v68, vmovn_s32(*v66), v67);
        result = v69.u32[3];
        v23 = v69.i32[2];
        v22 = v69.i32[1];
        v70.i64[0] = __PAIR64__(v25, v24);
        v70.i64[1] = __PAIR64__(v27, v26);
        v71 = vmlal_s16(v70, vmovn_s32(v66[1]), v67);
        v27 = v71.i32[3];
        v26 = v71.i32[2];
        v25 = v71.i32[1];
        v72.i64[0] = __PAIR64__(v29, v28);
        v72.i64[1] = __PAIR64__(v31, v30);
        a7 = vmlal_s16(v72, vmovn_s32(v66[2]), v67);
        v31 = a7.u32[3];
        v30 = a7.u32[2];
        v29 = a7.u32[1];
        v73.i64[0] = __PAIR64__(v33, v32);
        v21 = v69.i32[0];
        v73.i64[1] = __PAIR64__(v35, v34);
        a9 = vmlal_s16(v73, vmovn_s32(v66[3]), v67);
        v35 = a9.u32[3];
        v34 = a9.u32[2];
        v33 = a9.u32[1];
        v24 = v71.i32[0];
        v74.i64[0] = __PAIR64__(v37, v36);
        v74.i64[1] = __PAIR64__(v39, v38);
        v28 = a7.i32[0];
        v75 = vmlal_s16(v74, vmovn_s32(v66[4]), v67);
        v39 = v75.i32[3];
        v32 = a9.i32[0];
        v38 = v75.i32[2];
        v37 = v75.i32[1];
        v36 = v75.i32[0];
      }

      v76.i64[0] = __PAIR64__(v25, v24);
      v76.i64[1] = __PAIR64__(v27, v26);
      v77.i64[0] = __PAIR64__(v22, v21);
      v77.i64[1] = __PAIR64__(result, v23);
      v78 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v77, v20), 0xEuLL)), vshrq_n_s32(vaddq_s32(v76, v20), 0xEuLL));
      v76.i64[0] = __PAIR64__(v33, v32);
      v76.i64[1] = __PAIR64__(v35, v34);
      v79.i64[0] = __PAIR64__(v29, v28);
      v79.i64[1] = __PAIR64__(v31, v30);
      a6 = vqmovun_high_s16(vqmovun_s16(v78), vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v79, v20), 0xEuLL)), vshrq_n_s32(vaddq_s32(v76, v20), 0xEuLL)));
      v76.i64[0] = __PAIR64__(v37, v36);
      v76.i64[1] = __PAIR64__(v39, v38);
      v80 = vshrq_n_s32(vaddq_s32(v76, v20), 0xEuLL);
      *v80.i8 = vqmovn_s32(v80);
      *a7.i8 = vqmovun_s16(v80);
      v81 = vqtbl2q_s8(*a6.i8, xmmword_18439C580);
      a8 = vpmax_u8(vpmax_u8(*v81.i8, *&vextq_s8(v81, v81, 8uLL)), *v20.i8);
      *a9.i8 = vqtbl1_s8(a6, -15857404);
      a9.i8[3] = a7.i8[3];
      *a6.i8 = vmax_u8(*a9.i8, a8);
      *v14++ = v81;
      *v15++ = a6.i32[0];
      v18 = v112 + 4;
      v19 = v111 + 4;
    }

    while (v111 + 4 <= v110);
    a12 = v107;
    v17 = v107 & 0x7FFFFFFC;
    a14 = v106;
  }

  else
  {
    v17 = 0;
  }

  if (v17 < a12)
  {
    v82 = a14 - 8;
    v83 = (a14 + 8);
    v84.i64[0] = 0x200000002000;
    v84.i64[1] = 0x200000002000;
    v85 = v17;
    v86 = a12;
    do
    {
      if (v16 >= 2)
      {
        v87 = 0;
        LODWORD(result) = 0;
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v92 = v83;
        v93 = 2;
        v91 = v113;
        do
        {
          v94 = *(v92 - 1) + 20 * v85;
          v95 = *v94;
          a4.i32[0] = *(v94 + 16);
          v96 = (*v92 + 20 * v85);
          a6.i32[0] = v96[1].i32[0];
          v97 = *v91++;
          *a7.i8 = vdup_n_s16(v97);
          a8.i32[0] = v97;
          *a6.i8 = vmovn_s32(a6);
          a9.i32[0] = v90;
          v98 = vmlal_s16(a9, vmovn_s32(a4), a8);
          v99.i64[0] = __PAIR64__(result, v87);
          v99.i64[1] = __PAIR64__(v89, v88);
          v100 = vmlal_s16(v99, vmovn_s32(v95), *a7.i8);
          a7.i32[0] = HIWORD(v97);
          a4 = vmlal_s16(v100, vmovn_s32(*v96), vdup_n_s16(HIWORD(v97)));
          v89 = a4.u32[3];
          v88 = a4.u32[2];
          result = a4.u32[1];
          v87 = a4.i32[0];
          a9 = vmlal_s16(v98, *a6.i8, *a7.i8);
          v90 = a9.i32[0];
          v93 += 2;
          v92 += 2;
        }

        while (v93 <= v16);
      }

      else
      {
        v87 = 0;
        result = 0;
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = v113;
      }

      if (v16)
      {
        v101 = (*(v82 + 8 * v16) + 20 * v85);
        v102 = *v101;
        a4.i32[0] = v101[1].i32[0];
        *a4.i8 = vmovn_s32(a4);
        *v102.i8 = vmovn_s32(*v101);
        v103.i64[0] = __PAIR64__(result, v87);
        v103.i64[1] = __PAIR64__(v89, v88);
        a7.i32[0] = *v91;
        a6 = vmlal_s16(v103, *v102.i8, vdup_n_s16(a7.u32[0]));
        v89 = a6.u32[3];
        v88 = a6.u32[2];
        result = a6.u32[1];
        v87 = a6.i32[0];
        v102.i32[0] = v90;
        v90 = vmlal_s16(v102, *a4.i8, *a7.i8).u32[0];
      }

      v104.i64[0] = __PAIR64__(result, v87);
      v104.i64[1] = __PAIR64__(v89, v88);
      a4.i32[0] = v90;
      a4 = vshrq_n_s32(vaddq_s32(a4, v84), 0xEuLL);
      v105 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v104, v84), 0xEuLL)), a4);
      *v105.i8 = vqmovun_s16(v105);
      *a4.i8 = vpmax_u8(vpmax_u8(*v105.i8, *v84.i8), *v84.i8);
      v14->i32[0] = vmovn_s16(vzip1q_s8(v105, v84)).u32[0];
      v14 = (v14 + 4);
      *v15 = vmax_u8(vdup_lane_s8(*v105.i8, 4), *a4.i8).u8[0];
      v15 = (v15 + 1);
      ++v85;
    }

    while (v85 != v86);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,3,(AlphaStyle)3>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a5;
  v7 = a5[1];
  v8 = *(result + 4);
  v9 = (result + 8);
  if (a4 >= 2)
  {
    v11 = 0;
    v12 = 2;
    v13.i64[0] = 0x200000002000;
    v13.i64[1] = 0x200000002000;
    do
    {
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = v9;
      if (v8 >= 2)
      {
        v17 = (a6 + 8);
        v18 = 2;
        v16 = v9;
        do
        {
          v19 = (*(v17 - 1) + 16 * v11);
          v20 = *v19;
          v21 = v19[1];
          v22 = (*v17 + 16 * v11);
          v23 = *v16;
          v16 += 2;
          v24 = vdup_n_s16(v23);
          v25 = vmlal_s16(v14, vmovn_s32(v20), v24);
          *v20.i8 = vdup_n_s16(HIWORD(v23));
          v15 = vmlal_s16(vmlal_s16(v15, vmovn_s32(v21), v24), vmovn_s32(v22[1]), *v20.i8);
          v14 = vmlal_s16(v25, vmovn_s32(*v22), *v20.i8);
          v18 += 2;
          v17 += 2;
        }

        while (v18 <= v8);
      }

      if (v8)
      {
        v26 = (*(a6 - 8 + 8 * v8) + 16 * v11);
        v27 = vld1_dup_s16(v16);
        v15 = vmlal_s16(v15, vmovn_s32(v26[1]), v27);
        v14 = vmlal_s16(v14, vmovn_s32(*v26), v27);
      }

      v28 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v14, v13), 0xEuLL)), vshrq_n_s32(vaddq_s32(v15, v13), 0xEuLL));
      v29 = vqmovun_s16(v28);
      v30 = v29.u8[4];
      result = v29.u8[2];
      v31 = v29.u8[1];
      v32 = v29.u8[0];
      v33 = vext_s8(v29, *v13.i8, 1uLL);
      v34 = vpmax_u8(vpmax_u8(v29, *v13.i8), *v13.i8);
      v35 = vqmovun_high_s16(v29, v28);
      v28.i16[0] = vmax_u8(vqtbl1_s8(v35, -63741), v34).u16[0];
      v35.i16[0] = v32;
      v35.i16[1] = v31;
      v35.i16[2] = result;
      v35.i16[3] = v30;
      *v6 = vmovn_s16(v35).u32[0];
      *(v6 + 4) = v33.i16[2];
      v6 += 6;
      *v7++ = v28.i16[0];
      v12 += 2;
      v11 += 2;
    }

    while (v12 <= a4);
    LODWORD(v10) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < a4)
  {
    v10 = v10;
    v36.i64[0] = 0x200000002000;
    v36.i64[1] = 0x200000002000;
    do
    {
      v37 = 0uLL;
      v38 = v9;
      if (v8 >= 2)
      {
        result = a6 + 8;
        v39 = 2;
        v38 = v9;
        do
        {
          v40 = *v38;
          v38 += 2;
          v37 = vmlal_s16(vmlal_s16(v37, vmovn_s32(*(*(result - 8) + 16 * (v10 & 0x3FFFFFFF))), vdup_n_s16(v40)), vmovn_s32(*(*result + 16 * (v10 & 0x3FFFFFFF))), vdup_n_s16(HIWORD(v40)));
          v39 += 2;
          result += 16;
        }

        while (v39 <= v8);
      }

      if (v8)
      {
        result = 16 * (v10 & 0x3FFFFFFF);
        v41 = vld1_dup_s16(v38);
        v37 = vmlal_s16(v37, vmovn_s32(*(*(a6 - 8 + 8 * v8) + result)), v41);
      }

      v42 = vshrq_n_s32(vaddq_s32(v37, v36), 0xEuLL);
      *v42.i8 = vqmovn_s32(v42);
      *v42.i8 = vqmovun_s16(v42);
      *v6 = v42.i16[0];
      *(v6 + 2) = v42.i8[2];
      v6 += 3;
      *v7 = vmax_u8(vdup_lane_s8(*v42.i8, 3), vpmax_u8(vpmax_u8(*v42.i8, *v36.i8), *v36.i8)).u8[0];
      v7 = (v7 + 1);
      ++v10;
    }

    while (v10 != a4);
  }

  return result;
}

int32x4_t *resample_vertical<int,unsigned char,1,(AlphaStyle)3>(int32x4_t *result, double a2, double a3, int16x4_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v9 = *a8;
  v10 = *(a8 + 8);
  v11 = result->i32[1];
  v12 = &result->i16[4];
  if (a7 >= 4)
  {
    v14 = 0;
    v15 = 4;
    v16.i64[0] = 0x200000002000;
    v16.i64[1] = 0x200000002000;
    do
    {
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = v12;
      if (v11 >= 2)
      {
        result = (2 * v14);
        v20 = (a9 + 8);
        v21 = 2;
        v19 = v12;
        do
        {
          v22 = (*(v20 - 1) + 8 * v14);
          v23 = *v22;
          v24 = v22[1];
          v25 = (*v20 + 8 * v14);
          v26 = *v19;
          v19 += 2;
          v27 = vdup_n_s16(v26);
          v28 = vmlal_s16(v17, vmovn_s32(v23), v27);
          *v23.i8 = vdup_n_s16(HIWORD(v26));
          v18 = vmlal_s16(vmlal_s16(v18, vmovn_s32(v24), v27), vmovn_s32(v25[1]), *v23.i8);
          v17 = vmlal_s16(v28, vmovn_s32(*v25), *v23.i8);
          v21 += 2;
          v20 += 2;
        }

        while (v21 <= v11);
      }

      if (v11)
      {
        result = (*(a9 - 8 + 8 * v11) + 8 * v14);
        v29 = vld1_dup_s16(v19);
        v18 = vmlal_s16(v18, vmovn_s32(result[1]), v29);
        v17 = vmlal_s16(v17, vmovn_s32(*result), v29);
      }

      v30 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v17, v16), 0xEuLL)), vshrq_n_s32(vaddq_s32(v18, v16), 0xEuLL));
      *v30.i8 = vqmovun_s16(v30);
      a4 = vmax_u8(vuzp2_s8(*v30.i8, *v16.i8), vuzp1_s8(*v30.i8, *v16.i8));
      *v9++ = vmovn_s16(v30).u32[0];
      *v10++ = a4.i32[0];
      v15 += 4;
      v14 += 4;
    }

    while (v15 <= a7);
    LODWORD(v13) = a7 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 < a7)
  {
    v13 = v13;
    do
    {
      if (v11 >= 2)
      {
        v31 = 0uLL;
        result = (a9 + 8);
        v33 = 2;
        v32 = v12;
        do
        {
          v34 = *v32;
          v32 += 2;
          a4 = vuzp1_s16(*(result->i64[0] + 8 * v13), 0x200000002000);
          v31 = vmlal_s16(vmlal_s16(v31, vuzp1_s16(*(result[-1].i64[1] + 8 * v13), 0x200000002000), vdup_n_s16(v34)), a4, vdup_n_s16(HIWORD(v34)));
          v33 += 2;
          ++result;
        }

        while (v33 <= v11);
      }

      else
      {
        v31 = 0uLL;
        v32 = v12;
      }

      if (v11)
      {
        a4 = vuzp1_s16(*(*(a9 - 8 + 8 * v11) + 8 * v13), 0x200000002000);
        v35 = vld1_dup_s16(v32);
        v31 = vmlal_s16(v31, a4, v35);
      }

      *v31.i8 = vshr_n_s32(vadd_s32(*v31.i8, 0x200000002000), 0xEuLL);
      *v31.i8 = vqmovn_s32(v31);
      v36 = vqmovun_s16(v31);
      v37 = v36.u16[0];
      v36.i32[0] = v36.u8[1];
      *v9 = v37;
      v9 = (v9 + 1);
      a4.i32[0] = v37;
      *v10 = vmax_u8(v36, a4).u8[0];
      v10 = (v10 + 1);
      ++v13;
    }

    while (v13 != a7);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,5,(AlphaStyle)2>(uint64_t result, double a2, double a3, uint8x8_t a4, double a5, int32x4_t a6, double a7, int32x4_t a8, int16x4_t a9, uint64_t a10, uint64_t a11, int a12, uint8x16_t **a13, uint64_t a14)
{
  v16 = *a13;
  v17 = *(result + 4);
  v115 = (result + 8);
  if (a12 >= 4)
  {
    v19 = 0;
    v110 = a14;
    v111 = (a14 + 8);
    v112 = a14 - 8;
    v20 = 4;
    v21.i64[0] = 0x200000002000;
    v21.i64[1] = 0x200000002000;
    *&a4 = NAN;
    a6.i32[1] = -1;
    a8 = xmmword_18439C590;
    v109 = a12;
    v113 = a12;
    do
    {
      v114 = v19;
      v22 = 0;
      v23 = 0;
      result = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      if (v17 >= 2)
      {
        v42 = v111;
        v43 = 2;
        v41 = v115;
        v44 = 5 * v19;
        do
        {
          v45 = (*(v42 - 1) + 4 * v44);
          v46 = (*v42 + 4 * v44);
          v47 = *v41;
          v41 += 2;
          v48 = vdup_n_s16(v47);
          v49.i64[0] = __PAIR64__(v38, v37);
          v49.i64[1] = __PAIR64__(v40, v39);
          v50 = vmlal_s16(v49, vmovn_s32(v45[4]), v48);
          v51.i64[0] = __PAIR64__(v34, v33);
          v51.i64[1] = __PAIR64__(v36, v35);
          v52 = vmlal_s16(v51, vmovn_s32(v45[3]), v48);
          v53.i64[0] = __PAIR64__(v30, v29);
          v53.i64[1] = __PAIR64__(v32, v31);
          v54 = vmlal_s16(v53, vmovn_s32(v45[2]), v48);
          v55.i64[0] = __PAIR64__(v26, v25);
          v55.i64[1] = __PAIR64__(v28, v27);
          v56 = vmlal_s16(v55, vmovn_s32(v45[1]), v48);
          v57.i64[0] = __PAIR64__(v23, v22);
          v57.i64[1] = __PAIR64__(v24, result);
          v58 = vmlal_s16(v57, vmovn_s32(*v45), v48);
          v59 = vdup_n_s16(HIWORD(v47));
          v60 = vmlal_s16(v58, vmovn_s32(*v46), v59);
          v24 = v60.i32[3];
          result = v60.u32[2];
          v23 = v60.i32[1];
          v22 = v60.i32[0];
          v61 = vmlal_s16(v56, vmovn_s32(v46[1]), v59);
          v28 = v61.i32[3];
          v27 = v61.i32[2];
          v26 = v61.i32[1];
          v25 = v61.i32[0];
          v62 = vmlal_s16(v54, vmovn_s32(v46[2]), v59);
          v32 = v62.i32[3];
          v31 = v62.i32[2];
          v30 = v62.i32[1];
          v29 = v62.i32[0];
          v63 = vmlal_s16(v52, vmovn_s32(v46[3]), v59);
          v36 = v63.i32[3];
          v35 = v63.i32[2];
          v34 = v63.i32[1];
          v33 = v63.i32[0];
          v64 = vmlal_s16(v50, vmovn_s32(v46[4]), v59);
          v40 = v64.i32[3];
          v39 = v64.i32[2];
          v38 = v64.i32[1];
          v37 = v64.i32[0];
          v43 += 2;
          v42 += 2;
        }

        while (v43 <= v17);
      }

      else
      {
        v41 = v115;
      }

      if (v17)
      {
        v65 = (*(v112 + 8 * v17) + 20 * v114);
        v66 = vld1_dup_s16(v41);
        v67.i64[0] = __PAIR64__(v23, v22);
        v67.i64[1] = __PAIR64__(v24, result);
        v68 = vmlal_s16(v67, vmovn_s32(*v65), v66);
        v24 = v68.i32[3];
        result = v68.u32[2];
        v23 = v68.i32[1];
        v69.i64[0] = __PAIR64__(v26, v25);
        v69.i64[1] = __PAIR64__(v28, v27);
        v70 = vmlal_s16(v69, vmovn_s32(v65[1]), v66);
        v28 = v70.i32[3];
        v27 = v70.i32[2];
        v26 = v70.i32[1];
        v71.i64[0] = __PAIR64__(v30, v29);
        v71.i64[1] = __PAIR64__(v32, v31);
        v72 = vmlal_s16(v71, vmovn_s32(v65[2]), v66);
        v32 = v72.i32[3];
        v31 = v72.i32[2];
        v30 = v72.i32[1];
        v73.i64[0] = __PAIR64__(v34, v33);
        v22 = v68.i32[0];
        v73.i64[1] = __PAIR64__(v36, v35);
        v74 = vmlal_s16(v73, vmovn_s32(v65[3]), v66);
        v36 = v74.i32[3];
        v35 = v74.i32[2];
        v34 = v74.i32[1];
        v25 = v70.i32[0];
        v75.i64[0] = __PAIR64__(v38, v37);
        v75.i64[1] = __PAIR64__(v40, v39);
        v29 = v72.i32[0];
        v76 = vmlal_s16(v75, vmovn_s32(v65[4]), v66);
        v40 = v76.i32[3];
        v33 = v74.i32[0];
        v39 = v76.i32[2];
        v38 = v76.i32[1];
        v37 = v76.i32[0];
      }

      v77.i64[0] = __PAIR64__(v26, v25);
      v77.i64[1] = __PAIR64__(v28, v27);
      v78.i64[0] = __PAIR64__(v23, v22);
      v78.i64[1] = __PAIR64__(v24, result);
      v79 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v78, v21), 0xEuLL)), vshrq_n_s32(vaddq_s32(v77, v21), 0xEuLL));
      v77.i64[0] = __PAIR64__(v34, v33);
      v77.i64[1] = __PAIR64__(v36, v35);
      v80.i64[0] = __PAIR64__(v30, v29);
      v80.i64[1] = __PAIR64__(v32, v31);
      v15 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v80, v21), 0xEuLL)), vshrq_n_s32(vaddq_s32(v77, v21), 0xEuLL));
      v81 = vqmovun_high_s16(vqmovun_s16(v79), v15);
      v77.i64[0] = __PAIR64__(v38, v37);
      v77.i64[1] = __PAIR64__(v40, v39);
      v82 = vshrq_n_s32(vaddq_s32(v77, v21), 0xEuLL);
      *v82.i8 = vqmovn_s32(v82);
      *v82.i8 = vqmovun_s16(v82);
      *v15.i8 = vqtbl1_s8(v81, -15857404);
      v15.i8[3] = v82.i8[3];
      v83 = vqtbl1_s8(v81, -15923197);
      v83.i8[3] = v82.i8[2];
      *v15.i8 = vmax_u8(*v15.i8, v83);
      v84 = vqtbl1_s8(v81, -15988990);
      v84.i8[3] = v82.i8[1];
      *v15.i8 = vmax_u8(*v15.i8, v84);
      v85 = vqtbl1_s8(v81, -16054783);
      v85.i8[3] = v82.i8[0];
      *v15.i8 = vmax_u8(vmax_u8(*v15.i8, v85), vqtbl1_s8(v81, -4042652416));
      v14 = vmaxq_u8(v81, vqtbl1q_s8(v15, xmmword_18439C590));
      v85.i32[0] = 0;
      v85.i8[3] = v15.i8[3];
      a9 = vmaxq_u8(v82, v85.u32[0]).u64[0];
      *v16 = v14;
      v16[1].i32[0] = a9.i32[0];
      v16 = (v16 + 20);
      v20 += 4;
      v19 = v114 + 4;
    }

    while (v20 <= v113);
    a12 = v109;
    LODWORD(v18) = v109 & 0x7FFFFFFC;
    a14 = v110;
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 < a12)
  {
    v86 = a14 - 8;
    v18 = v18;
    v87 = a12;
    v88 = (a14 + 8);
    v89.i64[0] = 0x200000002000;
    v89.i64[1] = 0x200000002000;
    do
    {
      if (v17 >= 2)
      {
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        LODWORD(result) = 0;
        v95 = v88;
        v96 = 2;
        v94 = v115;
        do
        {
          v97 = *(v95 - 1) + 20 * v18;
          v98 = *v97;
          a6.i32[0] = *(v97 + 16);
          v99 = (*v95 + 20 * v18);
          a8.i32[0] = v99[1].i32[0];
          v100 = *v94++;
          a9 = vdup_n_s16(v100);
          v14.i32[0] = v100;
          *a8.i8 = vmovn_s32(a8);
          v15.i32[0] = result;
          v101 = vmlal_s16(v15, vmovn_s32(a6), *v14.i8);
          v102.i64[0] = __PAIR64__(v91, v90);
          v102.i64[1] = __PAIR64__(v93, v92);
          v103 = vmlal_s16(v102, vmovn_s32(v98), a9);
          a9.i32[0] = HIWORD(v100);
          a6 = vmlal_s16(v103, vmovn_s32(*v99), vdup_n_s16(HIWORD(v100)));
          v93 = a6.u32[3];
          v92 = a6.u32[2];
          v91 = a6.u32[1];
          v90 = a6.i32[0];
          v15 = vmlal_s16(v101, *a8.i8, a9);
          result = v15.u32[0];
          v96 += 2;
          v95 += 2;
        }

        while (v96 <= v17);
      }

      else
      {
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        result = 0;
        v94 = v115;
      }

      if (v17)
      {
        v104 = (*(v86 + 8 * v17) + 20 * v18);
        v105 = *v104;
        a6.i32[0] = v104[1].i32[0];
        *a6.i8 = vmovn_s32(a6);
        *v105.i8 = vmovn_s32(*v104);
        v106.i64[0] = __PAIR64__(v91, v90);
        v106.i64[1] = __PAIR64__(v93, v92);
        a9.i32[0] = *v94;
        a8 = vmlal_s16(v106, *v105.i8, vdup_n_s16(a9.u32[0]));
        v93 = a8.u32[3];
        v92 = a8.u32[2];
        v91 = a8.u32[1];
        v90 = a8.i32[0];
        v105.i32[0] = result;
        result = vmlal_s16(v105, *a6.i8, a9).u32[0];
      }

      v107.i64[0] = __PAIR64__(v91, v90);
      v107.i64[1] = __PAIR64__(v93, v92);
      a6.i32[0] = result;
      v108 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v107, v89), 0xEuLL)), vshrq_n_s32(vaddq_s32(a6, v89), 0xEuLL));
      *v108.i8 = vqmovun_s16(v108);
      a6 = vzip1q_s8(v108, v89);
      v108.u64[1] = a4;
      a4 = vqtbl1_s8(v108, 0xF0E0D0403020100);
      *a6.i8 = vmovn_s16(a6);
      v16->i32[0] = a6.i32[0];
      v16->i8[4] = vmaxv_u8(a4);
      v16 = (v16 + 5);
      ++v18;
    }

    while (v18 != v87);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,4,(AlphaStyle)2>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint8x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 16 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 16 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vmlal_s16(v13, vmovn_s32(v18), v22);
          *v18.i8 = vdup_n_s16(HIWORD(v21));
          v14 = vmlal_s16(vmlal_s16(v14, vmovn_s32(v19), v22), vmovn_s32(v20[1]), *v18.i8);
          v13 = vmlal_s16(v23, vmovn_s32(*v20), *v18.i8);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v24 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v25 = vld1_dup_s16(v15);
        v14 = vmlal_s16(v14, vmovn_s32(v24[1]), v25);
        v13 = vmlal_s16(v13, vmovn_s32(*v24), v25);
      }

      v26 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL)), vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL)));
      v27 = vmax_u8(vuzp1_s8(v26, *v12.i8), vuzp2_s8(v26, *v12.i8));
      *v28.i8 = vmax_u8(vuzp1_s8(v27, *v12.i8), vuzp2_s8(v27, *v12.i8));
      v28.i64[1] = v28.i64[0];
      *v6++ = vmax_u8(v26, vqtbl1_s8(v28, 0x1FFFFFF00FFFFFFLL));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    v29.i64[0] = 0x200000002000;
    v29.i64[1] = 0x200000002000;
    do
    {
      v30 = 0uLL;
      v31 = v8;
      if (v7 >= 2)
      {
        v32 = (a6 + 8);
        v33 = 2;
        v31 = v8;
        do
        {
          v34 = *v31;
          v31 += 2;
          v30 = vmlal_s16(vmlal_s16(v30, vmovn_s32(*(*(v32 - 1) + 16 * (v9 & 0x3FFFFFFF))), vdup_n_s16(v34)), vmovn_s32(*(*v32 + 16 * (v9 & 0x3FFFFFFF))), vdup_n_s16(HIWORD(v34)));
          v33 += 2;
          v32 += 2;
        }

        while (v33 <= v7);
      }

      if (v7)
      {
        v35 = vld1_dup_s16(v31);
        v30 = vmlal_s16(v30, vmovn_s32(*(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF))), v35);
      }

      v36 = vshrq_n_s32(vaddq_s32(v30, v29), 0xEuLL);
      *v36.i8 = vqmovn_s32(v36);
      *v36.i8 = vqmovun_s16(v36);
      v37 = v36.u8[2];
      v38 = v36.u8[1];
      v39 = v36.u8[0];
      v36.i8[0] = vmaxv_u8(*v36.i8);
      result = v36.u32[0];
      v36.i16[0] = v39;
      v36.i16[1] = v38;
      v36.i16[2] = v37;
      v36.i16[3] = result;
      v6->i32[0] = vmovn_s16(v36).u32[0];
      v6 = (v6 + 4);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,2,(AlphaStyle)2>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint8x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 4)
  {
    v10 = 0;
    v11 = 4;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 8 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 8 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vmlal_s16(v13, vmovn_s32(v18), v22);
          *v18.i8 = vdup_n_s16(HIWORD(v21));
          v14 = vmlal_s16(vmlal_s16(v14, vmovn_s32(v19), v22), vmovn_s32(v20[1]), *v18.i8);
          v13 = vmlal_s16(v23, vmovn_s32(*v20), *v18.i8);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v24 = (*(a6 - 8 + 8 * v7) + 8 * v10);
        v25 = vld1_dup_s16(v15);
        v14 = vmlal_s16(v14, vmovn_s32(v24[1]), v25);
        v13 = vmlal_s16(v13, vmovn_s32(*v24), v25);
      }

      v26 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL)), vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL)));
      *v27.i8 = vmax_u8(vuzp1_s8(v26, *v12.i8), vuzp2_s8(v26, *v12.i8));
      v27.i64[1] = v27.i64[0];
      *v6++ = vmax_u8(v26, vqtbl1_s8(v27, 0x3FF02FF01FF00FFLL));
      v11 += 4;
      v10 += 4;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      if (v7 >= 2)
      {
        v28 = 0uLL;
        v30 = (a6 + 8);
        result = 2;
        v29 = v8;
        do
        {
          v31 = *v29;
          v29 += 2;
          v28 = vmlal_s16(vmlal_s16(v28, vuzp1_s16(*(*(v30 - 1) + 8 * v9), 0x200000002000), vdup_n_s16(v31)), vuzp1_s16(*(*v30 + 8 * v9), 0x200000002000), vdup_n_s16(HIWORD(v31)));
          result += 2;
          v30 += 2;
        }

        while (result <= v7);
      }

      else
      {
        v28 = 0uLL;
        v29 = v8;
      }

      if (v7)
      {
        v32 = vld1_dup_s16(v29);
        v28 = vmlal_s16(v28, vuzp1_s16(*(*(a6 - 8 + 8 * v7) + 8 * v9), 0x200000002000), v32);
      }

      *v28.i8 = vshr_n_s32(vadd_s32(*v28.i8, 0x200000002000), 0xEuLL);
      *v28.i8 = vqmovn_s32(v28);
      v33 = vqmovun_s16(v28);
      v6->i8[0] = v33.i8[0];
      v6->i8[1] = vmaxv_u8(v33);
      v6 = (v6 + 2);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

__int8 *resample_vertical<int,unsigned char,5,(AlphaStyle)1>(__int8 *result, double a2, double a3, uint8x8_t a4, double a5, int32x4_t a6, double a7, int32x4_t a8, int16x4_t a9, uint64_t a10, uint64_t a11, int a12, uint8x16_t **a13, uint64_t a14)
{
  v16 = *a13;
  v17 = *(result + 1);
  v119 = (result + 8);
  if (a12 >= 4)
  {
    v19 = 0;
    v114 = a14;
    v115 = (a14 + 8);
    v116 = a14 - 8;
    v20 = 4;
    v21.i64[0] = 0x200000002000;
    v21.i64[1] = 0x200000002000;
    *&a4 = NAN;
    a6.i32[1] = -1;
    a8 = xmmword_18439C5A0;
    v113 = a12;
    v117 = a12;
    do
    {
      v118 = v19;
      v22 = 0;
      v23 = 0;
      result = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      if (v17 >= 2)
      {
        v42 = v115;
        v43 = 2;
        v41 = v119;
        v44 = 5 * v19;
        do
        {
          v45 = (*(v42 - 1) + 4 * v44);
          v46 = (*v42 + 4 * v44);
          v47 = *v41;
          v41 += 2;
          v48 = vdup_n_s16(v47);
          v49.i64[0] = __PAIR64__(v38, v37);
          v49.i64[1] = __PAIR64__(v40, v39);
          v50 = vmlal_s16(v49, vmovn_s32(v45[4]), v48);
          v51.i64[0] = __PAIR64__(v34, v33);
          v51.i64[1] = __PAIR64__(v36, v35);
          v52 = vmlal_s16(v51, vmovn_s32(v45[3]), v48);
          v53.i64[0] = __PAIR64__(v30, v29);
          v53.i64[1] = __PAIR64__(v32, v31);
          v54 = vmlal_s16(v53, vmovn_s32(v45[2]), v48);
          v55.i64[0] = __PAIR64__(v26, v25);
          v55.i64[1] = __PAIR64__(v28, v27);
          v56 = vmlal_s16(v55, vmovn_s32(v45[1]), v48);
          v57.i64[0] = __PAIR64__(v23, v22);
          v57.i64[1] = __PAIR64__(v24, result);
          v58 = vmlal_s16(v57, vmovn_s32(*v45), v48);
          v59 = vdup_n_s16(HIWORD(v47));
          v60 = vmlal_s16(v58, vmovn_s32(*v46), v59);
          v24 = v60.i32[3];
          result = v60.u32[2];
          v23 = v60.i32[1];
          v22 = v60.i32[0];
          v61 = vmlal_s16(v56, vmovn_s32(v46[1]), v59);
          v28 = v61.i32[3];
          v27 = v61.i32[2];
          v26 = v61.i32[1];
          v25 = v61.i32[0];
          v62 = vmlal_s16(v54, vmovn_s32(v46[2]), v59);
          v32 = v62.i32[3];
          v31 = v62.i32[2];
          v30 = v62.i32[1];
          v29 = v62.i32[0];
          v63 = vmlal_s16(v52, vmovn_s32(v46[3]), v59);
          v36 = v63.i32[3];
          v35 = v63.i32[2];
          v34 = v63.i32[1];
          v33 = v63.i32[0];
          v64 = vmlal_s16(v50, vmovn_s32(v46[4]), v59);
          v40 = v64.i32[3];
          v39 = v64.i32[2];
          v38 = v64.i32[1];
          v37 = v64.i32[0];
          v43 += 2;
          v42 += 2;
        }

        while (v43 <= v17);
      }

      else
      {
        v41 = v119;
      }

      if (v17)
      {
        v65 = (*(v116 + 8 * v17) + 20 * v118);
        v66 = vld1_dup_s16(v41);
        v67.i64[0] = __PAIR64__(v23, v22);
        v67.i64[1] = __PAIR64__(v24, result);
        v68 = vmlal_s16(v67, vmovn_s32(*v65), v66);
        v24 = v68.i32[3];
        result = v68.u32[2];
        v23 = v68.i32[1];
        v69.i64[0] = __PAIR64__(v26, v25);
        v69.i64[1] = __PAIR64__(v28, v27);
        v70 = vmlal_s16(v69, vmovn_s32(v65[1]), v66);
        v28 = v70.i32[3];
        v27 = v70.i32[2];
        v26 = v70.i32[1];
        v71.i64[0] = __PAIR64__(v30, v29);
        v71.i64[1] = __PAIR64__(v32, v31);
        v72 = vmlal_s16(v71, vmovn_s32(v65[2]), v66);
        v32 = v72.i32[3];
        v31 = v72.i32[2];
        v30 = v72.i32[1];
        v73.i64[0] = __PAIR64__(v34, v33);
        v22 = v68.i32[0];
        v73.i64[1] = __PAIR64__(v36, v35);
        v74 = vmlal_s16(v73, vmovn_s32(v65[3]), v66);
        v36 = v74.i32[3];
        v35 = v74.i32[2];
        v34 = v74.i32[1];
        v25 = v70.i32[0];
        v75.i64[0] = __PAIR64__(v38, v37);
        v75.i64[1] = __PAIR64__(v40, v39);
        v29 = v72.i32[0];
        v76 = vmlal_s16(v75, vmovn_s32(v65[4]), v66);
        v40 = v76.i32[3];
        v33 = v74.i32[0];
        v39 = v76.i32[2];
        v38 = v76.i32[1];
        v37 = v76.i32[0];
      }

      v77.i64[0] = __PAIR64__(v26, v25);
      v77.i64[1] = __PAIR64__(v28, v27);
      v78.i64[0] = __PAIR64__(v23, v22);
      v78.i64[1] = __PAIR64__(v24, result);
      v79.i64[0] = __PAIR64__(v34, v33);
      v79.i64[1] = __PAIR64__(v36, v35);
      v80 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v78, v21), 0xEuLL)), vshrq_n_s32(vaddq_s32(v77, v21), 0xEuLL));
      v77.i64[0] = __PAIR64__(v30, v29);
      v77.i64[1] = __PAIR64__(v32, v31);
      v81 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v77, v21), 0xEuLL)), vshrq_n_s32(vaddq_s32(v79, v21), 0xEuLL));
      v79.i64[0] = __PAIR64__(v38, v37);
      v79.i64[1] = __PAIR64__(v40, v39);
      v82 = vqmovun_high_s16(vqmovun_s16(v80), v81);
      v83 = vshrq_n_s32(vaddq_s32(v79, v21), 0xEuLL);
      *v83.i8 = vqmovn_s32(v83);
      a9 = vqmovun_s16(v83);
      *v79.i8 = vqtbl1_s8(v82, -15857404);
      v79.i8[3] = a9.i8[3];
      v84 = vqtbl1_s8(v82, -15923197);
      v84.i8[3] = a9.i8[2];
      *v79.i8 = vmax_u8(*v79.i8, v84);
      v85 = vqtbl1_s8(v82, -15988990);
      v85.i8[3] = a9.i8[1];
      v86 = vqtbl1_s8(v82, -16054783);
      v86.i8[3] = a9.i8[0];
      *v79.i8 = vmax_u8(vmax_u8(vmax_u8(*v79.i8, v85), v86), vqtbl1_s8(v82, -4042652416));
      v15 = vqtbl1q_s8(v79, xmmword_18439C5A0);
      v14 = vmaxq_u8(v82, v15);
      *v16 = v14;
      v16[1].i32[0] = a9.i32[0];
      v16 = (v16 + 20);
      v20 += 4;
      v19 = v118 + 4;
    }

    while (v20 <= v117);
    a12 = v113;
    v18 = v113 & 0x7FFFFFFC;
    a14 = v114;
  }

  else
  {
    v18 = 0;
  }

  if (v18 < a12)
  {
    v87 = a14 - 8;
    v88 = v18;
    v89 = a12;
    v90 = (a14 + 8);
    v91.i64[0] = 0x200000002000;
    v91.i64[1] = 0x200000002000;
    do
    {
      if (v17 >= 2)
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v98 = v90;
        v99 = 2;
        v97 = v119;
        do
        {
          v100 = *(v98 - 1) + 20 * v88;
          v101 = *v100;
          a6.i32[0] = *(v100 + 16);
          v102 = (*v98 + 20 * v88);
          a8.i32[0] = v102[1].i32[0];
          v103 = *v97++;
          a9 = vdup_n_s16(v103);
          v14.i32[0] = v103;
          *a8.i8 = vmovn_s32(a8);
          v15.i32[0] = v96;
          v104 = vmlal_s16(v15, vmovn_s32(a6), *v14.i8);
          v105.i64[0] = __PAIR64__(v93, v92);
          v105.i64[1] = __PAIR64__(v95, v94);
          v106 = vmlal_s16(v105, vmovn_s32(v101), a9);
          a9.i32[0] = HIWORD(v103);
          a6 = vmlal_s16(v106, vmovn_s32(*v102), vdup_n_s16(HIWORD(v103)));
          v95 = a6.u32[3];
          v94 = a6.u32[2];
          v93 = a6.u32[1];
          v92 = a6.i32[0];
          v15 = vmlal_s16(v104, *a8.i8, a9);
          v96 = v15.i32[0];
          v99 += 2;
          v98 += 2;
        }

        while (v99 <= v17);
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v97 = v119;
      }

      if (v17)
      {
        v107 = (*(v87 + 8 * v17) + 20 * v88);
        v108 = *v107;
        a6.i32[0] = v107[1].i32[0];
        *a6.i8 = vmovn_s32(a6);
        *v108.i8 = vmovn_s32(*v107);
        v109.i64[0] = __PAIR64__(v93, v92);
        v109.i64[1] = __PAIR64__(v95, v94);
        a9.i32[0] = *v97;
        a8 = vmlal_s16(v109, *v108.i8, vdup_n_s16(a9.u32[0]));
        v95 = a8.u32[3];
        v94 = a8.u32[2];
        v93 = a8.u32[1];
        v92 = a8.i32[0];
        v108.i32[0] = v96;
        v96 = vmlal_s16(v108, *a6.i8, a9).u32[0];
      }

      v110.i64[0] = __PAIR64__(v93, v92);
      v110.i64[1] = __PAIR64__(v95, v94);
      a6.i32[0] = v96;
      a6 = vshrq_n_s32(vaddq_s32(a6, v91), 0xEuLL);
      *v110.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v110, v91), 0xEuLL)), a6));
      v111 = v110.u8[3];
      v112 = v110.u8[2];
      result = &v16->i8[4];
      v16->i8[4] = v110.i8[4];
      v110.u64[1] = a4;
      a4 = vqtbl1_s8(v110, 0xF0E0D0403020100);
      v110.i8[0] = vmaxv_u8(a4);
      v110.i16[1] = v110.u8[1];
      v110.i16[2] = v112;
      v110.i16[3] = v111;
      v16->i32[0] = vmovn_s16(v110).u32[0];
      v16 = (v16 + 5);
      ++v88;
    }

    while (v88 != v89);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,2,(AlphaStyle)1>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint8x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 4)
  {
    v10 = 0;
    v11 = 4;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 8 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 8 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vmlal_s16(v13, vmovn_s32(v18), v22);
          *v18.i8 = vdup_n_s16(HIWORD(v21));
          v14 = vmlal_s16(vmlal_s16(v14, vmovn_s32(v19), v22), vmovn_s32(v20[1]), *v18.i8);
          v13 = vmlal_s16(v23, vmovn_s32(*v20), *v18.i8);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v24 = (*(a6 - 8 + 8 * v7) + 8 * v10);
        v25 = vld1_dup_s16(v15);
        v14 = vmlal_s16(v14, vmovn_s32(v24[1]), v25);
        v13 = vmlal_s16(v13, vmovn_s32(*v24), v25);
      }

      v26 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL)), vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL)));
      *v6++ = vmax_u8(v26, (*&vzip1_s8(vmax_u8(vuzp1_s8(v26, *v12.i8), vuzp2_s8(v26, *v12.i8)), *v12.i8) & 0xFF00FF00FF00FFLL));
      v11 += 4;
      v10 += 4;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    do
    {
      if (v7 >= 2)
      {
        v27 = 0uLL;
        v29 = (a6 + 8);
        result = 2;
        v28 = v8;
        do
        {
          v30 = *v28;
          v28 += 2;
          v27 = vmlal_s16(vmlal_s16(v27, vuzp1_s16(*(*(v29 - 1) + 8 * v9), 0x200000002000), vdup_n_s16(v30)), vuzp1_s16(*(*v29 + 8 * v9), 0x200000002000), vdup_n_s16(HIWORD(v30)));
          result += 2;
          v29 += 2;
        }

        while (result <= v7);
      }

      else
      {
        v27 = 0uLL;
        v28 = v8;
      }

      if (v7)
      {
        v31 = vld1_dup_s16(v28);
        v27 = vmlal_s16(v27, vuzp1_s16(*(*(a6 - 8 + 8 * v7) + 8 * v9), 0x200000002000), v31);
      }

      *v27.i8 = vshr_n_s32(vadd_s32(*v27.i8, 0x200000002000), 0xEuLL);
      *v27.i8 = vqmovn_s32(v27);
      v32 = vqmovun_s16(v27);
      v6->i8[1] = v32.i8[1];
      v6->i8[0] = vmaxv_u8(v32);
      v6 = (v6 + 2);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,4,(AlphaStyle)0>(uint64_t result, uint64_t a2, uint64_t a3, int a4, int8x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 16 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 16 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vmlal_s16(v13, vmovn_s32(v18), v22);
          *v18.i8 = vdup_n_s16(HIWORD(v21));
          v14 = vmlal_s16(vmlal_s16(v14, vmovn_s32(v19), v22), vmovn_s32(v20[1]), *v18.i8);
          v13 = vmlal_s16(v23, vmovn_s32(*v20), *v18.i8);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v24 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v25 = vld1_dup_s16(v15);
        v14 = vmlal_s16(v14, vmovn_s32(v24[1]), v25);
        v13 = vmlal_s16(v13, vmovn_s32(*v24), v25);
      }

      *v6++ = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL)), vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL)));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    v26.i64[0] = 0x200000002000;
    v26.i64[1] = 0x200000002000;
    do
    {
      v27 = 0uLL;
      v28 = v8;
      if (v7 >= 2)
      {
        v29 = (a6 + 8);
        result = 2;
        v28 = v8;
        do
        {
          v30 = *v28;
          v28 += 2;
          v27 = vmlal_s16(vmlal_s16(v27, vmovn_s32(*(*(v29 - 1) + 16 * (v9 & 0x3FFFFFFF))), vdup_n_s16(v30)), vmovn_s32(*(*v29 + 16 * (v9 & 0x3FFFFFFF))), vdup_n_s16(HIWORD(v30)));
          result += 2;
          v29 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v31 = vld1_dup_s16(v28);
        v27 = vmlal_s16(v27, vmovn_s32(*(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF))), v31);
      }

      v32 = vshrq_n_s32(vaddq_s32(v27, v26), 0xEuLL);
      *v32.i8 = vqmovn_s32(v32);
      v6->i32[0] = vqmovun_s16(v32).u32[0];
      v6 = (v6 + 4);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

float32x2_t *resample_horizontal<float,float,4,true>(float32x2_t *result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t *a12, int *a13, int a14)
{
  if (a10 >= 1 && a14 >= 1)
  {
    v14 = 0;
    v15 = *a12;
    v16 = a12[1];
    v17 = *a13;
    v18 = a13[1];
    if (v17 >> 4 >= v18 >> 2)
    {
      v19 = v18 >> 2;
    }

    else
    {
      v19 = v17 >> 4;
    }

    v20 = a10;
    v21 = 4 * a2;
    v22 = v21 + 8;
    v23 = result + (v21 + 8) * a10;
    if (v19 >= *&v23[-v21 - 4] + *&v23[-v21 - 8])
    {
      v19 = *&v23[-v21 - 4] + *&v23[-v21 - 8];
    }

    v24 = (4 * a2 + 23) / (4 * a2 + 8);
    if (a2 > 1)
    {
      v24 = 1;
    }

    v25 = a2 > 3;
    v26 = (a2 & 3) == 0;
    if ((a2 & 3) != 0)
    {
      v27 = (16 * (a2 & 3)) | 0x40;
    }

    else
    {
      v27 = 128;
    }

    v28 = a2 >> 2;
    if (!v26)
    {
      v25 = 0;
    }

    v29 = ((v27 - 1) & 0xFFFFFFFFFFFFFFC0) + 64 * (v28 - v25);
    v30 = a14;
    while (1)
    {
      v31 = *(a11 + 8 * v14);
      if (v20 <= v24)
      {
        v32 = 0;
        v33 = result;
      }

      else
      {
        v32 = 0;
        v33 = result;
        while (1)
        {
          v34 = v33->i32[0];
          v35 = (v15 + 16 * v34);
          v36 = (v35 + v29);
          if (v35 + v29 > 16 * v19 + v15)
          {
            break;
          }

          if (v35 >= v36)
          {
            v41.i64[0] = 0x8000000080000000;
            v41.i64[1] = 0x8000000080000000;
            v42.i64[0] = 0x8000000080000000;
            v42.i64[1] = 0x8000000080000000;
            v43.i64[0] = 0x8000000080000000;
            v43.i64[1] = 0x8000000080000000;
            v44.i64[0] = 0x8000000080000000;
            v44.i64[1] = 0x8000000080000000;
            v45.i64[0] = 0x8000000080000000;
            v45.i64[1] = 0x8000000080000000;
          }

          else
          {
            v37 = v33 + 1;
            v38 = v33->i32[1];
            v39 = (v16 + 4 * v34);
            v40 = &v36[-4];
            if (v35 < v40)
            {
              v42.i64[0] = 0x8000000080000000;
              v42.i64[1] = 0x8000000080000000;
              v43.i64[0] = 0x8000000080000000;
              v43.i64[1] = 0x8000000080000000;
              v44.i64[0] = 0x8000000080000000;
              v44.i64[1] = 0x8000000080000000;
              v45.i64[0] = 0x8000000080000000;
              v45.i64[1] = 0x8000000080000000;
              v47 = v35;
              v41.i64[0] = 0x8000000080000000;
              v41.i64[1] = 0x8000000080000000;
              do
              {
                v48 = *v37->f32;
                v37 += 2;
                a8 = v48;
                v35 = v47 + 4;
                v42 = vmlaq_n_f32(v42, *v47, v48.f32[0]);
                v43 = vmlaq_lane_f32(v43, v47[1], *v48.f32, 1);
                v44 = vmlaq_laneq_f32(v44, v47[2], v48, 2);
                v45 = vmlaq_laneq_f32(v45, v47[3], v48, 3);
                v49 = *v39++;
                v41 = vmlaq_f32(v41, v49, a8);
                v38 -= 4;
                v47 = v35;
              }

              while (v35 < v40);
            }

            else
            {
              v41.i64[0] = 0x8000000080000000;
              v41.i64[1] = 0x8000000080000000;
              v42.i64[0] = 0x8000000080000000;
              v42.i64[1] = 0x8000000080000000;
              v43.i64[0] = 0x8000000080000000;
              v43.i64[1] = 0x8000000080000000;
              v44.i64[0] = 0x8000000080000000;
              v44.i64[1] = 0x8000000080000000;
              v45.i64[0] = 0x8000000080000000;
              v45.i64[1] = 0x8000000080000000;
            }

            if (v38 >= 1)
            {
              a8 = *v37->f32;
              v42 = vmlaq_n_f32(v42, *v35, COERCE_FLOAT(*v37->f32));
              v43 = vmlaq_lane_f32(v43, v35[1], *v37, 1);
              v44 = vmlaq_laneq_f32(v44, v35[2], *v37->f32, 2);
              v45 = vmlaq_laneq_f32(v45, v35[3], *v37->f32, 3);
              v41 = vmlaq_f32(v41, *v39, *v37->f32);
            }
          }

          *v31 = vaddq_f32(vaddq_f32(v42, v44), vaddq_f32(v43, v45));
          v46 = vaddq_f32(v41, vextq_s8(v41, v41, 8uLL));
          v31[1].i32[0] = vaddq_f32(v46, vdupq_lane_s32(*v46.f32, 1)).u32[0];
          v31 = (v31 + 20);
          ++v32;
          v33 = (v33 + v22);
          if (v32 == v20 - v24)
          {
            v32 = v20 - v24;
            break;
          }
        }
      }

      if (v32 < v20)
      {
        break;
      }

LABEL_92:
      v15 += v17;
      v16 += v18;
      if (++v14 == v30)
      {
        return result;
      }
    }

    while (1)
    {
      v50 = v33->i32[1];
      v51 = v33->i32[0];
      if (v51 >= v19)
      {
        v52 = v19;
      }

      else
      {
        v52 = v33->i32[0];
      }

      v53 = v19 - v52;
      if (v50 >= v53)
      {
        v50 = v53;
      }

      if (v50 < 1)
      {
        v63.i64[0] = 0x8000000080000000;
        v63.i64[1] = 0x8000000080000000;
        v58.i64[0] = 0x8000000080000000;
        v58.i64[1] = 0x8000000080000000;
        v60.i64[0] = 0x8000000080000000;
        v60.i64[1] = 0x8000000080000000;
        v61.i64[0] = 0x8000000080000000;
        v61.i64[1] = 0x8000000080000000;
        v62.i64[0] = 0x8000000080000000;
        v62.i64[1] = 0x8000000080000000;
        goto LABEL_89;
      }

      v54 = (v15 + 16 * v51);
      v55 = &v54[v50 - 4];
      v56 = (v16 + 4 * v51);
      v57 = v33 + 1;
      v58.i64[0] = 0x8000000080000000;
      v58.i64[1] = 0x8000000080000000;
      if (v54 >= v55)
      {
        v60.i64[0] = 0x8000000080000000;
        v60.i64[1] = 0x8000000080000000;
        v61.i64[0] = 0x8000000080000000;
        v61.i64[1] = 0x8000000080000000;
        v62.i64[0] = 0x8000000080000000;
        v62.i64[1] = 0x8000000080000000;
        v63.i64[0] = 0x8000000080000000;
        v63.i64[1] = 0x8000000080000000;
        goto LABEL_56;
      }

      v59 = v50;
      v60.i64[0] = 0x8000000080000000;
      v60.i64[1] = 0x8000000080000000;
      v61.i64[0] = 0x8000000080000000;
      v61.i64[1] = 0x8000000080000000;
      v62.i64[0] = 0x8000000080000000;
      v62.i64[1] = 0x8000000080000000;
      v63.i64[0] = 0x8000000080000000;
      v63.i64[1] = 0x8000000080000000;
      do
      {
        v64 = v59;
        if ((v23 - v57) < 0x10)
        {
          if (v59)
          {
            if (v59 == 1)
            {
              a8.i64[0] = v57->u32[0];
            }

            else
            {
              v67 = 0;
              if (v59 != 2)
              {
                v68 = 0;
                if ((v50 & 1) == 0)
                {
                  v68.i32[0] = v57[1].i32[1];
                }

                v67.i32[0] = v57[1].i32[0];
                v67 = vzip1_s32(v67, v68);
              }

              *a8.f32 = *v57;
              *&a8.u32[2] = v67;
            }
          }

          else
          {
            a8 = 0uLL;
          }
        }

        else
        {
          a8 = *v57->f32;
        }

        v57 += 2;
        v65 = v54 + 4;
        v58 = vmlaq_n_f32(v58, *v54, a8.f32[0]);
        v60 = vmlaq_lane_f32(v60, v54[1], *a8.f32, 1);
        v61 = vmlaq_laneq_f32(v61, v54[2], a8, 2);
        v62 = vmlaq_laneq_f32(v62, v54[3], a8, 3);
        v66 = *v56++;
        v63 = vmlaq_f32(v63, v66, a8);
        v59 -= 4;
        v54 = v65;
      }

      while (v65 < v55);
      if (v64 >= 5)
      {
        break;
      }

LABEL_89:
      *v31 = vaddq_f32(vaddq_f32(v58, v61), vaddq_f32(v60, v62));
      v80 = vaddq_f32(v63, vextq_s8(v63, v63, 8uLL));
      v31[1].i32[0] = vaddq_f32(v80, vdupq_lane_s32(*v80.f32, 1)).u32[0];
      v31 = (v31 + 20);
      ++v32;
      v33 = (v33 + v22);
      if (v32 == v20)
      {
        goto LABEL_92;
      }
    }

    v50 = v64 - 4;
    v54 = v65;
LABEL_56:
    v69 = v50;
    while (1)
    {
      if ((v23 - v57) < 0x10)
      {
        if (v69 == 1)
        {
          v76 = v57->i32[0];
          v57 += 2;
          a8.i64[0] = v76;
          v72 = *v54;
          goto LABEL_69;
        }

        v77 = 0;
        if (v69 != 2)
        {
          v78 = 0;
          if ((v50 & 1) == 0)
          {
            v78.i32[0] = v57[1].i32[1];
          }

          v77.i32[0] = v57[1].i32[0];
          v77 = vzip1_s32(v77, v78);
        }

        *a8.f32 = *v57;
        *&a8.u32[2] = v77;
      }

      else
      {
        a8 = *v57->f32;
      }

      v57 += 2;
      if (v69 >= 4)
      {
        v70 = v54[3];
LABEL_61:
        v71 = v54[2];
LABEL_62:
        v72 = *v54;
        v73 = v54[1];
        goto LABEL_63;
      }

      if (v69 >= 2)
      {
        v71 = 0uLL;
        v70 = 0uLL;
        if (v69 == 2)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      v72 = *v54;
      if (v69 != 1)
      {
        v73 = v54[1];
        goto LABEL_70;
      }

LABEL_69:
      v73 = 0uLL;
LABEL_70:
      v71 = 0uLL;
      v70 = 0uLL;
LABEL_63:
      v58 = vmlaq_n_f32(v58, v72, a8.f32[0]);
      v60 = vmlaq_lane_f32(v60, v73, *a8.f32, 1);
      v61 = vmlaq_laneq_f32(v61, v71, a8, 2);
      v62 = vmlaq_laneq_f32(v62, v70, a8, 3);
      if (v69 <= 3)
      {
        if (v69)
        {
          if (v69 == 1)
          {
            v72.i64[0] = v56->u32[0];
          }

          else
          {
            v79 = 0;
            if (v69 != 2)
            {
              LODWORD(v79) = v56->i32[2];
            }

            v72.i64[0] = v56->i64[0];
            v72.i64[1] = v79;
          }
        }

        else
        {
          v72 = 0uLL;
        }

        v63 = vmlaq_f32(v63, v72, a8);
        goto LABEL_89;
      }

      v54 += 4;
      v74 = *v56++;
      v63 = vmlaq_f32(v63, v74, a8);
      v75 = __OFSUB__(v69, 4);
      v69 -= 4;
      if (((v69 & 0x80000000) != 0) ^ v75 | (v69 == 0))
      {
        goto LABEL_89;
      }
    }
  }

  return result;
}

int *resample_horizontal<float,float,3,true>(int *result, unsigned int a2, double a3, double a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t *a8, int *a9, int a10)
{
  if (a6 >= 1 && a10 >= 1)
  {
    v14 = 0;
    v15 = *a8;
    v16 = a8[1];
    v17 = *a9;
    v18 = a9[1];
    v19 = v17 / 0xC;
    if (v17 / 0xC >= v18 >> 2)
    {
      v19 = v18 >> 2;
    }

    v20 = 4 * a2 + 8;
    v21 = result + v20 * a6;
    v22 = *&v21[-v20 + 4] + *&v21[-v20];
    if (v19 < v22)
    {
      v22 = v19;
    }

    v23 = (4 * a2 + 39) / (4 * a2 + 8);
    if (a2 > 5)
    {
      v23 = 1;
    }

    if (a2 % 5)
    {
      v24 = a2 % 5;
    }

    else
    {
      v24 = 5;
    }

    if (a2 % 5)
    {
      v25 = 0;
    }

    else
    {
      v25 = a2 > 4;
    }

    v26 = ((12 * v24 + 63) & 0x7FFFFFFC0) + 60 * (a2 / 5 - v25);
    *&a3 = v24;
    v27 = vdupq_lane_s32(*&a3, 0);
    if (a2 >= 5)
    {
      v28 = 5;
    }

    else
    {
      v28 = a2;
    }

    *&a4 = v28;
    v29 = vdupq_lane_s32(*&a4, 0);
    v30 = a10;
    v31 = vcgtq_f32(v29, xmmword_18439C5B0);
    v32 = vcgtq_f32(v29, xmmword_18439C5C0);
    v33 = vcgtq_f32(v27, xmmword_18439C5B0);
    do
    {
      v34 = *(a7 + 8 * v14);
      if (a6 <= v23)
      {
        v35 = 0;
        v36 = result;
      }

      else
      {
        v35 = 0;
        v36 = result;
        do
        {
          v37 = *v36;
          v38 = (v15 + 12 * v37);
          v39 = (v38 + v26);
          if (v38 + v26 > 12 * v22 + v15)
          {
            goto LABEL_36;
          }

          if (v38 >= v39)
          {
            v44.i64[0] = 0x8000000080000000;
            v44.i64[1] = 0x8000000080000000;
            v45.i64[0] = 0x8000000080000000;
            v45.i64[1] = 0x8000000080000000;
            v46.i64[0] = 0x8000000080000000;
            v46.i64[1] = 0x8000000080000000;
            v47.i64[0] = 0x8000000080000000;
            v47.i64[1] = 0x8000000080000000;
            v48.i64[0] = 0x8000000080000000;
            v48.i64[1] = 0x8000000080000000;
            v49.i64[0] = 0x8000000080000000;
            v49.i64[1] = 0x8000000080000000;
          }

          else
          {
            v40 = (v36 + 2);
            v41 = v36[1];
            v42 = (v16 + 4 * v37);
            v43 = &v39[-6];
            if (v38 < v43)
            {
              v46.i64[0] = 0x8000000080000000;
              v46.i64[1] = 0x8000000080000000;
              v47.i64[0] = 0x8000000080000000;
              v47.i64[1] = 0x8000000080000000;
              v48.i64[0] = 0x8000000080000000;
              v48.i64[1] = 0x8000000080000000;
              v49.i64[0] = 0x8000000080000000;
              v49.i64[1] = 0x8000000080000000;
              v44.i64[0] = 0x8000000080000000;
              v44.i64[1] = 0x8000000080000000;
              v45.i64[0] = 0x8000000080000000;
              v45.i64[1] = 0x8000000080000000;
              do
              {
                v11 = vandq_s8(v40[1], v32);
                v70 = vandq_s8(*v40, v31);
                v40 = (v40 + 20);
                v72 = *v38;
                v71 = v38[1];
                v13 = v38[2];
                v73 = v38[3];
                v74 = vzip1q_s32(v70, v70);
                v74.i32[2] = v70.i32[0];
                v38 = (v38 + 60);
                v75 = vzip1q_s32(v11, v11);
                v75.i32[2] = v11.i32[0];
                v76 = vextq_s8(v70, v70, 4uLL);
                v49 = vmlaq_f32(v49, v75, v73);
                v48 = vmlaq_f32(v48, vextq_s8(v70, vdupq_laneq_s32(v70, 3), 8uLL), v13);
                v46 = vmlaq_f32(v46, v74, v72);
                v47 = vmlaq_f32(v47, vzip1q_s32(v76, v76), v71);
                v12 = *v42;
                v77 = v42[1];
                v42 = (v42 + 20);
                v45 = vmlaq_f32(v45, v11, v77);
                v44 = vmlaq_f32(v44, v70, v12);
                v41 -= 5;
              }

              while (v38 < v43);
            }

            else
            {
              v44.i64[0] = 0x8000000080000000;
              v44.i64[1] = 0x8000000080000000;
              v45.i64[0] = 0x8000000080000000;
              v45.i64[1] = 0x8000000080000000;
              v46.i64[0] = 0x8000000080000000;
              v46.i64[1] = 0x8000000080000000;
              v47.i64[0] = 0x8000000080000000;
              v47.i64[1] = 0x8000000080000000;
              v48.i64[0] = 0x8000000080000000;
              v48.i64[1] = 0x8000000080000000;
              v49.i64[0] = 0x8000000080000000;
              v49.i64[1] = 0x8000000080000000;
            }

            if (v41 >= 1)
            {
              if (v41 >= 9)
              {
                v50 = vandq_s8(v40[1], v32);
                v51 = vandq_s8(*v40, v31);
                v40 = (v40 + 20);
                v53 = *v38;
                v52 = v38[1];
                v54 = v38[2];
                v55 = v38[3];
                v56 = vzip1q_s32(v51, v51);
                v56.i32[2] = v51.i32[0];
                v38 = (v38 + 60);
                v57 = vzip1q_s32(v50, v50);
                v57.i32[2] = v50.i32[0];
                v58 = vextq_s8(v51, v51, 4uLL);
                v49 = vmlaq_f32(v49, v57, v55);
                v48 = vmlaq_f32(v48, vextq_s8(v51, vdupq_laneq_s32(v51, 3), 8uLL), v54);
                v46 = vmlaq_f32(v46, v56, v53);
                v47 = vmlaq_f32(v47, vzip1q_s32(v58, v58), v52);
                v59 = *v42;
                v60 = v42[1];
                v42 = (v42 + 20);
                v45 = vmlaq_f32(v45, v50, v60);
                v44 = vmlaq_f32(v44, v51, v59);
              }

              v61 = vandq_s8(v40[1], vcgtq_f32(v27, xmmword_18439C5C0));
              v11 = vandq_s8(*v40, v33);
              v13 = v38[2];
              v62 = vzip1q_s32(v11, v11);
              v62.i32[2] = v11.i32[0];
              v63 = vzip1q_s32(v61, v61);
              v63.i32[2] = v61.i32[0];
              v64 = vextq_s8(v11, v11, 4uLL);
              v49 = vmlaq_f32(v49, v63, v38[3]);
              v48 = vmlaq_f32(v48, vextq_s8(v11, vdupq_laneq_s32(v11, 3), 8uLL), v13);
              v46 = vmlaq_f32(v46, v62, *v38);
              v47 = vmlaq_f32(v47, vzip1q_s32(v64, v64), v38[1]);
              v12 = *v42;
              v45 = vmlaq_f32(v45, v61, v42[1]);
              v44 = vmlaq_f32(v44, v11, *v42);
            }
          }

          v10 = vextq_s8(v48, v49, 4uLL);
          v65 = vaddq_f32(v46, v10);
          v66 = vaddq_f32(v47, vextq_s8(v49, v49, 4uLL).u64[0]);
          v67 = vaddq_f32(vextq_s8(v66, vaddq_f32(v48, 0), 8uLL), vaddq_f32(v65, vextq_s8(v65, v66, 0xCuLL)));
          v68 = vextq_s8(v44, v45, 0xCuLL);
          v68.i32[2] = 0;
          v69 = vaddq_f32(v44, v68);
          *v34 = *v67.i8;
          v34[1] = vzip1_s32(*&vdupq_laneq_s32(v67, 2), vadd_f32(*&vextq_s8(v69, v69, 8uLL), vadd_f32(*v69.i8, vdup_lane_s32(*v69.i8, 1))));
          v34 += 2;
          ++v35;
          v36 = (v36 + v20);
        }

        while (v35 != a6 - v23);
        v35 = a6 - v23;
      }

LABEL_36:
      if (v35 >= a6)
      {
        goto LABEL_159;
      }

      do
      {
        v78 = *v36;
        if (v78 >= v22)
        {
          v79 = v22;
        }

        else
        {
          v79 = *v36;
        }

        v80 = v22 - v79;
        if (v36[1] >= v80)
        {
          v81 = v80;
        }

        else
        {
          v81 = v36[1];
        }

        if (v81 < 1)
        {
          v90.i64[0] = 0x8000000080000000;
          v90.i64[1] = 0x8000000080000000;
          v91.i64[0] = 0x8000000080000000;
          v91.i64[1] = 0x8000000080000000;
          v86.i64[0] = 0x8000000080000000;
          v86.i64[1] = 0x8000000080000000;
          v87.i64[0] = 0x8000000080000000;
          v87.i64[1] = 0x8000000080000000;
          v88.i64[0] = 0x8000000080000000;
          v88.i64[1] = 0x8000000080000000;
          v89.i64[0] = 0x8000000080000000;
          v89.i64[1] = 0x8000000080000000;
          goto LABEL_156;
        }

        v82 = (v15 + 12 * v78);
        v83 = &v82[-6] + 12 * v81;
        v84 = (v16 + 4 * v78);
        v85 = (v36 + 2);
        v86.i64[0] = 0x8000000080000000;
        v86.i64[1] = 0x8000000080000000;
        v87.i64[0] = 0x8000000080000000;
        v87.i64[1] = 0x8000000080000000;
        v88.i64[0] = 0x8000000080000000;
        v88.i64[1] = 0x8000000080000000;
        v89.i64[0] = 0x8000000080000000;
        v89.i64[1] = 0x8000000080000000;
        v90.i64[0] = 0x8000000080000000;
        v90.i64[1] = 0x8000000080000000;
        v91.i64[0] = 0x8000000080000000;
        v91.i64[1] = 0x8000000080000000;
        if (v82 < v83)
        {
          while (1)
          {
            if ((v21 - v85) >= 0x20)
            {
              v10 = vandq_s8(v85[1], v32);
              v11 = vandq_s8(*v85, v31);
              goto LABEL_47;
            }

            if (!v81)
            {
              break;
            }

            if (v81 < 4)
            {
              if (v81 == 1)
              {
                v11.i64[0] = v85->u32[0];
              }

              else
              {
                v100 = 0;
                if (v81 != 2)
                {
                  LODWORD(v100) = v85->i32[2];
                }

                v11.i64[0] = v85->i64[0];
                v11.i64[1] = v100;
              }

              goto LABEL_80;
            }

            if (v81 == 4)
            {
              v10 = 0uLL;
            }

            else if (v81 == 5)
            {
              v10.i64[0] = v85[1].u32[0];
            }

            else
            {
              v101 = 0;
              if (v81 != 6)
              {
                v102 = 0;
                if ((v81 & 1) == 0)
                {
                  v102.i32[0] = v85[1].i32[3];
                }

                v101.i32[0] = v85[1].i32[2];
                v101 = vzip1_s32(v101, v102);
              }

              v10.i64[0] = v85[1].i64[0];
              *&v10.u32[2] = v101;
            }

            v11 = *v85;
LABEL_47:
            v85 = (v85 + 20);
            v92 = v82[2];
            v12 = v82[3];
            v13 = *v82;
            v93 = v82[1];
            v82 = (v82 + 60);
            v94 = vzip1q_s32(v10, v10);
            v94.i32[2] = v10.i32[0];
            v95 = vzip1q_s32(v11, v11);
            v95.i32[2] = v11.i32[0];
            v96 = vextq_s8(v11, v11, 4uLL);
            v87 = vmlaq_f32(v87, vzip1q_s32(v96, v96), v93);
            v88 = vmlaq_f32(v88, vextq_s8(v11, vdupq_laneq_s32(v11, 3), 8uLL), v92);
            v86 = vmlaq_f32(v86, v95, v13);
            v89 = vmlaq_f32(v89, v94, v12);
            if (v81)
            {
              if (v81 < 4)
              {
                if (v81 == 1)
                {
                  v92.i64[0] = v84->u32[0];
                }

                else
                {
                  v97 = 0;
                  if (v81 != 2)
                  {
                    LODWORD(v97) = v84->i32[2];
                  }

                  v92.i64[0] = v84->i64[0];
                  v92.i64[1] = v97;
                }

                v12 = 0uLL;
              }

              else
              {
                if (v81 == 4)
                {
                  v12 = 0uLL;
                }

                else if (v81 == 5)
                {
                  v12.i64[0] = v84[1].u32[0];
                }

                else
                {
                  v98 = 0;
                  if (v81 != 6)
                  {
                    v99 = 0;
                    if ((v81 & 1) == 0)
                    {
                      v99.i32[0] = v84[1].i32[3];
                    }

                    v98.i32[0] = v84[1].i32[2];
                    v98 = vzip1_s32(v98, v99);
                  }

                  v12.i64[0] = v84[1].i64[0];
                  *&v12.u32[2] = v98;
                }

                v92 = *v84;
              }

              v84 = (v84 + 20);
              v90 = vmlaq_f32(v90, v92, v11);
              v91 = vmlaq_f32(v91, v12, v10);
              if (v82 >= v83)
              {
                if (v81 < 6)
                {
                  goto LABEL_156;
                }

                v81 -= 5;
                goto LABEL_90;
              }
            }

            else
            {
              v90 = vmlaq_f32(v90, 0, v11);
              v91 = vmlaq_f32(v91, 0, v10);
              if (v82 >= v83)
              {
                goto LABEL_156;
              }

              v84 = (v84 + 20);
            }

            v81 -= 5;
          }

          v11 = 0uLL;
LABEL_80:
          v10 = 0uLL;
          goto LABEL_47;
        }

LABEL_90:
        v103 = 0;
        v104 = v81;
        v105 = 3 * v81;
        v106 = 3 * v81;
        while (1)
        {
          v107 = v105 + v103;
          if ((v21 - v85) >= 0x20)
          {
            v10.f32[0] = fminf(v104, 8.0);
            v108 = vdupq_lane_s32(*v10.f32, 0);
            v109 = vcgtq_f32(v108, xmmword_18439C5B0);
            v12 = *v85;
            v10 = vandq_s8(v85[1], vcgtq_f32(v108, xmmword_18439C5C0));
            v11 = vandq_s8(*v85, v109);
            goto LABEL_93;
          }

          if (v104 < 4)
          {
            break;
          }

          if (v104 == 4)
          {
            v10 = 0uLL;
          }

          else if (v104 == 5)
          {
            v10.i64[0] = v85[1].u32[0];
          }

          else
          {
            if (v105 + v103 == 18)
            {
              v11.i64[0] = 0;
            }

            else
            {
              v117 = 0;
              if ((v104 & 1) == 0)
              {
                v117.i32[0] = v85[1].i32[3];
              }

              v11.i32[0] = v85[1].i32[2];
              *v11.f32 = vzip1_s32(*v11.f32, v117);
            }

            v10.i64[0] = v85[1].i64[0];
            v10.i64[1] = v11.i64[0];
          }

          v11 = *v85;
LABEL_93:
          v85 = (v85 + 20);
          if (v104 <= 5)
          {
            goto LABEL_115;
          }

          v110 = v82[2];
          v12 = v82[3];
          v13 = *v82;
          v111 = v82[1];
          v82 = (v82 + 60);
          v112 = vzip1q_s32(v10, v10);
          v112.i32[2] = v10.i32[0];
          v113 = vzip1q_s32(v11, v11);
          v113.i32[2] = v11.i32[0];
          v114 = vextq_s8(v11, v11, 4uLL);
          v87 = vmlaq_f32(v87, v111, vzip1q_s32(v114, v114));
          v88 = vmlaq_f32(v88, v110, vextq_s8(v11, vdupq_laneq_s32(v11, 3), 8uLL));
          v86 = vmlaq_f32(v86, v13, v113);
          v89 = vmlaq_f32(v89, v12, v112);
          if (v104 < 8)
          {
            goto LABEL_133;
          }

          v12 = v84[1];
LABEL_96:
          v115 = *v84;
          v84 = (v84 + 20);
          v90 = vmlaq_f32(v90, v115, v11);
          v91 = vmlaq_f32(v91, v12, v10);
          v103 -= 15;
          v116 = v104 <= 5;
          v104 -= 5;
          if (v116)
          {
            goto LABEL_156;
          }
        }

        if (v107 == 3)
        {
          v11.i64[0] = v85->u32[0];
        }

        else
        {
          if (v107 == 6)
          {
            v10.i64[0] = 0;
          }

          else
          {
            v10.i32[0] = v85->i32[2];
          }

          v11.i64[0] = v85->i64[0];
          v11.i64[1] = v10.i64[0];
        }

        v10 = 0uLL;
        v85 = (v85 + 20);
LABEL_115:
        v118 = v105 + v103;
        if (v104 >= 3)
        {
          if (v118 == 8)
          {
            v110 = 0uLL;
            v12 = 0uLL;
          }

          else if ((v118 - 8) < 4)
          {
            v12 = 0uLL;
            v110 = 0uLL;
            if (v106 + v103 != 8)
            {
              if (v106 + v103 == 9)
              {
                v110.i64[0] = v82[2].u32[0];
              }

              else
              {
                v110.i64[0] = v82[2].i64[0];
                v13.i32[0] = v82[2].i32[2];
                v110.i64[1] = v13.i64[0];
              }
            }
          }

          else
          {
            if (v106 + v103 == 12)
            {
              v12 = 0uLL;
            }

            else if (v106 + v103 == 13)
            {
              v12.i64[0] = v82[3].u32[0];
            }

            else
            {
              v119 = 0;
              if ((v118 & 1) == 0)
              {
                v119.i32[0] = v82[3].i32[3];
              }

              v12.i64[0] = v82[3].i64[0];
              v13.i32[0] = v82[3].i32[2];
              *&v12.u32[2] = vzip1_s32(*v13.f32, v119);
            }

            v110 = v82[2];
          }

          v13 = v82[1];
          v120 = vzip1q_s32(v10, v10);
          v120.i32[2] = v10.i32[0];
          v121 = vzip1q_s32(v11, v11);
          v121.i32[2] = v11.i32[0];
          v122 = vextq_s8(v11, v11, 4uLL);
          v87 = vmlaq_f32(v87, v13, vzip1q_s32(v122, v122));
          v88 = vmlaq_f32(v88, v110, vextq_s8(v11, vdupq_laneq_s32(v11, 3), 8uLL));
          v86 = vmlaq_f32(v86, *v82, v121);
          v89 = vmlaq_f32(v89, v12, v120);
          if (v107 == 9)
          {
            goto LABEL_153;
          }

          v82 = (v82 + 60);
LABEL_133:
          if (v104 == 4)
          {
            v12 = 0uLL;
          }

          else if (v104 == 5)
          {
            v12.i64[0] = v84[1].u32[0];
          }

          else
          {
            if (v105 + v103 == 18)
            {
              v110.i64[0] = 0;
            }

            else
            {
              v110.i32[0] = v84[1].i32[2];
            }

            v12.i64[0] = v84[1].i64[0];
            v12.i64[1] = v110.i64[0];
          }

          goto LABEL_96;
        }

        if (v104 == 2)
        {
          v13.i64[0] = v82[1].i64[0];
          v110.i64[0] = 0;
          v123 = vzip1q_s32(v10, v10);
          v123.i32[2] = v10.i32[0];
          v124 = vzip1q_s32(v11, v11);
          v124.i32[2] = v11.i32[0];
          v125 = vextq_s8(v11, v11, 4uLL);
          v87 = vmlaq_f32(v87, v13, vzip1q_s32(v125, v125));
          v88 = vmlaq_f32(v88, 0, vextq_s8(v11, vdupq_laneq_s32(v11, 3), 8uLL));
          v86 = vmlaq_f32(v86, *v82, v124);
          v89 = vmlaq_f32(v89, 0, v123);
          goto LABEL_154;
        }

        v12 = 0uLL;
        v110 = 0uLL;
        if (v118)
        {
          if (v118 == 1)
          {
            v110.i64[0] = v82->u32[0];
          }

          else
          {
            v110.i64[0] = v82->i64[0];
            v13.i32[0] = v82->i32[2];
            v110.i64[1] = v13.i64[0];
          }
        }

        v13 = vzip1q_s32(v10, v10);
        v13.i32[2] = v10.i32[0];
        v126 = vzip1q_s32(v11, v11);
        v126.i32[2] = v11.i32[0];
        v127 = vextq_s8(v11, v11, 4uLL);
        v87 = vmlaq_f32(v87, 0, vzip1q_s32(v127, v127));
        v88 = vmlaq_f32(v88, 0, vextq_s8(v11, vdupq_laneq_s32(v11, 3), 8uLL));
        v86 = vmlaq_f32(v86, v110, v126);
        v89 = vmlaq_f32(v89, 0, v13);
        if (v104)
        {
          if (v104 == 1)
          {
            v12.i64[0] = v84->u32[0];
            goto LABEL_155;
          }

LABEL_153:
          v110.i32[0] = v84->i32[2];
LABEL_154:
          v12.i64[0] = v84->i64[0];
          v12.i64[1] = v110.i64[0];
        }

LABEL_155:
        v90 = vmlaq_f32(v90, v12, v11);
        v91 = vmlaq_f32(v91, 0, v10);
LABEL_156:
        v10 = vextq_s8(v88, v89, 4uLL);
        v128 = vaddq_f32(v86, v10);
        v129 = vaddq_f32(v87, vextq_s8(v89, v89, 4uLL).u64[0]);
        v130 = vaddq_f32(vextq_s8(v129, vaddq_f32(v88, 0), 8uLL), vaddq_f32(v128, vextq_s8(v128, v129, 0xCuLL)));
        v131 = vextq_s8(v90, v91, 0xCuLL);
        v131.i32[2] = 0;
        v132 = vaddq_f32(v90, v131);
        *v34 = *v130.i8;
        v34[1] = vzip1_s32(*&vdupq_laneq_s32(v130, 2), vadd_f32(*&vextq_s8(v132, v132, 8uLL), vadd_f32(*v132.i8, vdup_lane_s32(*v132.i8, 1))));
        v34 += 2;
        ++v35;
        v36 = (v36 + v20);
      }

      while (v35 != a6);
LABEL_159:
      v15 += v17;
      v16 += v18;
      ++v14;
    }

    while (v14 != v30);
  }

  return result;
}