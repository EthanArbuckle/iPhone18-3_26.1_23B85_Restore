void sub_236763820(uint64_t a1, int a2, int a3, unsigned int a4, void *a5, void *a6, signed int a7, uint64_t a8, int *a9, int *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_236771F34;
  v15 = sub_236771F84;
  if (a4 <= 2)
  {
    if (a4)
    {
      v14 = sub_2367FFEBC;
      v15 = sub_236800CAC;
    }

    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v14 = sub_23673DFC0;
    v15 = sub_23674255C;
LABEL_6:
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = a5[10];
    v20 = a4 - 3 < 2;
    v21 = a1;
    goto LABEL_8;
  }

  v19 = a5[10];
  v21 = a1;
  v18 = atomic_load((a6[6] + 4 * a1));
  v16 = sub_23674255C;
  v14 = sub_23673DFC0;
  v20 = 1;
  v17 = 1;
LABEL_8:
  v22 = a5[15];
  v23 = a1;
  v24 = a1 + 1;
  v25 = a5[11];
  v26 = *(v25 + 4 * v24);
  v27 = v18 + *(v22 + 8 * v24) - *(v22 + 8 * v21);
  v28 = v26 - *(v25 + 4 * v21) + v18;
  v29 = v28;
  if (v17)
  {
    v29 = *(a6[7] + 4 * v21);
  }

  v30 = v28 * v27;
  if (!v20)
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = *(a6[5] + 8 * v21) + 8;
    v32 = v27;
    v33 = v31 + 8 * v30;
    v34 = v28 + a3;
    v35 = v27 - (v28 + a3);
    if (v35 >= a7)
    {
      v36 = a7;
    }

    else
    {
      v36 = v35;
    }

    v37 = v27 - v28;
    if ((v27 - v28) >= a7)
    {
      v38 = a7;
    }

    else
    {
      v38 = v27 - v28;
    }

    v39 = v38;
    v40 = *(v22 + 8 * v23) + v26 - *(v25 + 4 * v23);
    v41 = v40 + a3;
    v42 = v41 + v36;
    if (a2 == a3)
    {
      (v14)(v36, v29, v31 + 8 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      for (i = *(a5[14] + 4 * v23); i != -1; i = *(a5[14] + 4 * v45))
      {
        v44 = a5[16];
        v45 = i;
        v46 = (a5[11] + 4 * i);
        if (*(v19 + 4 * *(v44 + 4 * v61[0])) < v46[1])
        {
          if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v44 + 4 * v42)) < *v46)
          {
            return;
          }

          v47 = (a8 + 8 * (v61[0] - v41) * (v39 + 1));
          if (a12)
          {
            sub_2367F605C(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, (a12 + v45));
          }

          else
          {
            sub_2367F605C(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, 0);
          }
        }
      }
    }

    else
    {
      if (v37 - a2 >= a7)
      {
        v48 = a7;
      }

      else
      {
        v48 = (v37 - a2);
      }

      (v16)(v48, v36, v29, v31 + 8 * (v28 + a2), v31 + 8 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      v49 = *(a5[14] + 4 * v23);
      if (v49 != -1)
      {
        v50 = v40 + a2;
        v51 = v50 + v48;
        do
        {
          v52 = a5[16];
          v53 = v49;
          v54 = (a5[11] + 4 * v49);
          if (*(v19 + 4 * *(v52 + 4 * v61[0])) < v54[1])
          {
            if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v52 + 4 * v42)) < *v54)
            {
              return;
            }

            v55 = (a8 + 8 * (v61[0] - v41) * v39);
            if (a12)
            {
              sub_2367F6248(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, (a12 + v53));
            }

            else
            {
              sub_2367F6248(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, 0);
            }
          }

          v49 = *(a5[14] + 4 * v53);
        }

        while (v49 != -1);
      }
    }
  }
}

void sub_236763C1C(uint64_t a1, atomic_uint *volatile *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = *(v10 + 64);
  v12 = *(a1 + 40);
  v13 = v12 + *(v10 + 48);
  v14 = *(v11 + 2);
  v15 = ((v12 + 4 * *(v14 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v15)
  {
    goto LABEL_7;
  }

  a7 = *(v11 + 8);
  v8 = ((&v15[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v8)
  {
    goto LABEL_7;
  }

  a8 = (&v8[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < a8)
  {
    goto LABEL_7;
  }

  v16 = a8 + 8 * a7 * a7;
  if (v16 > v13)
  {
    goto LABEL_7;
  }

  v9 = a2;
  a4 = *v11;
  if (a4 - 2 > 2)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v16 + 33280 > v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_236763820(*v9, *(v9 + 1), *(v9 + 2), a4, v14, *(v11 + 3), a7, a8, v15, v8, v12, *(v11 + 7), v16);
  atomic_fetch_add(v9[2], 1u);
}

void sub_236763D4C(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v8 = *a1;
  v7 = a1[1];
  *a3 = v7;
  *(a3 + 4) = v8;
  v9 = a1[6];
  v10 = (&a2[v8 + 1] + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a3 + 24) = 0;
  *(a3 + 32) = v10;
  *(a3 + 24) = v9;
  *(a3 + 28) = v5;
  v11 = *(a1 + 1);
  v12 = v10 + 4 * v6 * v11[v7];
  *(a3 + 8) = a2;
  *(a3 + 16) = v12;
  *(a3 + 24) = v9 ^ 2;
  v13 = a2 + 2;
  if (v8 >= 1)
  {
    bzero(v13, 8 * v8);
  }

  if (v7 >= 1)
  {
    v14 = 0;
    v15 = *v11;
    do
    {
      v16 = v11[++v14];
      if (v15 < v16)
      {
        v17 = *(a1 + 2);
        do
        {
          v18 = *(v17 + 4 * v15);
          if ((v18 & 0x80000000) == 0 && v18 < v8)
          {
            ++*(v13 + v18);
            v16 = v11[v14];
          }

          ++v15;
        }

        while (v15 < v16);
      }

      v15 = v16;
    }

    while (v14 != v7);
  }

  a2[1] = 0;
  v19 = a2 + 1;
  *a2 = 0;
  if (v8 > 1)
  {
    v20 = 0;
    v21 = v8 - 1;
    v22 = a2 + 2;
    do
    {
      v20 += *v22;
      *v22++ = v20;
      --v21;
    }

    while (v21);
  }

  if (v7 >= 1)
  {
    v23 = 0;
    v24 = *v11;
    v25 = 4 * v5;
    v26 = 4 * v6;
    do
    {
      v27 = v23++;
      v28 = v11[v23];
      if (v24 < v28)
      {
        v29 = *(a1 + 2);
        v30 = v26 * v24;
        do
        {
          v31 = *(v29 + 4 * v24);
          if ((v31 & 0x80000000) == 0 && v31 < *a1)
          {
            v32 = v19[v31];
            v19[v31] = v32 + 1;
            *(v12 + 4 * v32) = v27;
            if (v5)
            {
              v33 = 0;
              v34 = (v10 + 4 * v32 * v6);
              v35 = (*(a1 + 4) + v30);
              do
              {
                v36 = v5;
                v37 = v35;
                v38 = v34;
                do
                {
                  *v38++ = *v37;
                  v37 = (v37 + v25);
                  --v36;
                }

                while (v36);
                ++v33;
                v34 = (v34 + v25);
                ++v35;
              }

              while (v33 != v5);
            }
          }

          ++v24;
          v28 = v11[v23];
          v30 += v26;
        }

        while (v24 < v28);
        LODWORD(v7) = a1[1];
      }

      v24 = v28;
    }

    while (v23 < v7);
  }
}

SparseOpaqueFactorization_Float *__cdecl _SparseNumericFactorQR_Float(SparseOpaqueFactorization_Float *__return_ptr retstr, SparseOpaqueSymbolicFactorization *symbolicFactor, const SparseMatrix_Float *Matrix, const SparseNumericFactorOptions *options, void *factorStorage, void *workspace)
{
  v6 = workspace;
  *&retstr->symbolicFactorization.factorSize_Float = 0u;
  *&retstr->userFactorStorage = 0u;
  *&retstr->symbolicFactorization.columnCount = 0u;
  *&retstr->symbolicFactorization.workspaceSize_Float = 0u;
  *&retstr->status = 0u;
  v12 = *&symbolicFactor->workspaceSize_Double;
  *&retstr->symbolicFactorization.factorSize_Double = *&symbolicFactor->factorSize_Double;
  *&retstr->symbolicFactorization.workspaceSize_Double = v12;
  v13 = *&symbolicFactor->status;
  *&retstr->symbolicFactorization.factorization = *&symbolicFactor->factorization;
  v14 = BYTE1(symbolicFactor->factorization);
  rowCount = Matrix->structure.rowCount;
  columnCount = Matrix->structure.columnCount;
  v17 = *(&Matrix->structure.blockSize + 2);
  retstr->status = SparseInternalError;
  *&retstr->symbolicFactorization.status = v13;
  LOBYTE(retstr->numericFactorization) = 1;
  retstr->solveWorkspaceRequiredPerRHS = 0;
  p_solveWorkspaceRequiredPerRHS = &retstr->solveWorkspaceRequiredPerRHS;
  *&retstr[1].status = 0;
  v19 = retstr + 1;
  retstr->solveWorkspaceRequiredStatic = 0;
  workspaceSize_Float = symbolicFactor->workspaceSize_Float;
  atomic_fetch_add((workspaceSize_Float + 48), 1u);
  if (BYTE1(symbolicFactor->factorization) == 40)
  {
    if (Matrix->structure.columnCount <= Matrix->structure.rowCount)
    {
      v21 = Matrix->structure.rowCount;
    }

    else
    {
      v21 = Matrix->structure.columnCount;
    }

    v27 = columnCount;
    v28 = v14;
    sub_2367CDD30(v21 * *(&Matrix->structure.blockSize + 2), symbolicFactor->workspaceSize_Float, p_solveWorkspaceRequiredPerRHS, v19);
    columnCount = v27;
    v14 = v28;
    v22 = 2 * v21;
    v6 = workspace;
    v23 = *&v19->status + 4 * *(&Matrix->structure.blockSize + 2) * v22;
  }

  else
  {
    *p_solveWorkspaceRequiredPerRHS = 0;
    v23 = 8 * Matrix->structure.columnCount * *(&Matrix->structure.blockSize + 2);
  }

  if (rowCount >= columnCount)
  {
    v24 = columnCount;
  }

  else
  {
    v24 = rowCount;
  }

  *&retstr[1].status = v23;
  retstr->solveWorkspaceRequiredStatic = sub_2367640B8(v14, v24 * v17, workspaceSize_Float, symbolicFactor->factorSize_Double, workspaceSize_Float, options, factorStorage);

  _SparseRefactorQR_Float(Matrix, retstr, v25, v6);
  return result;
}

uint64_t sub_2367640B8(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v11 = result;
  if (!a7)
  {
    result = (*(a5 + 24))(a4);
    a7 = result;
    if (!result)
    {
      return a7;
    }
  }

  v12 = a7 + a4;
  v13 = (a7 + 71) & 0xFFFFFFFFFFFFFFF8;
  if (a7 + a4 >= v13)
  {
    v14 = a6[1];
    *a7 = *a6;
    *(a7 + 16) = v14;
    *(a7 + 40) = 0;
    v15 = (a7 + 40);
    *(a7 + 32) = 1;
    *(a7 + 48) = 0;
    *(a7 + 56) = 0;
    v16 = *(a3 + 88);
    v17 = v13 + 8 * v16;
    if (v17 <= v12)
    {
      *v15 = v13;
      v18 = (v17 + 4 * a2 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 >= v18)
      {
        *(a7 + 48) = v17;
        if (v11 != 40)
        {
          v19 = 0;
LABEL_10:
          *(a7 + 56) = v19;
          if (v16 >= 1)
          {
            v20 = 0;
            do
            {
              v21 = (*(a3 + 120) + 8 * v20);
              v22 = (*(a3 + 104) + 8 * v20);
              v23 = (*(a3 + 96) + 4 * v20);
              *(*v15 + 8 * v20) = v18;
              v24 = v20 + 1;
              v25 = v22[1] - *v22;
              v26 = v23[1] - *v23;
              v27 = v21[1] - *v21;
              if (v11 != 40)
              {
                v27 = v26;
              }

              v18 += 4 * v25 * v27;
              v20 = v24;
            }

            while (v16 != v24);
          }

          return a7;
        }

        if (v12 >= ((v18 + 4 * *(*(a3 + 104) + 8 * v16) + 7) & 0xFFFFFFFFFFFFFFF8))
        {
          v19 = (v17 + 4 * a2 + 7) & 0xFFFFFFFFFFFFFFF8;
          v18 = (v18 + 4 * *(*(a3 + 104) + 8 * v16) + 7) & 0xFFFFFFFFFFFFFFF8;
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
  return result;
}

void _SparseRefactorQR_Float(const SparseMatrix_Float *Matrix, SparseOpaqueFactorization_Float *Factorization, const SparseNumericFactorOptions *nfoptions, void *workspace)
{
  v6 = Matrix;
  Factorization->status = SparseInternalError;
  workspaceSize_Float = Factorization->symbolicFactorization.workspaceSize_Float;
  v8 = (*&Matrix->structure.attributes >> 2) & 3;
  if (v8 > 1)
  {
    v11 = Factorization->symbolicFactorization.workspaceSize_Float;
    if (v8 == 2)
    {
      v10 = sub_236766614(Matrix, v11);
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = sub_236766AE0(&Matrix->structure.rowCount, v11);
      if (!v10)
      {
        return;
      }
    }
  }

  else if (v8)
  {
    v10 = sub_2367662A8(Matrix, Factorization->symbolicFactorization.workspaceSize_Float);
    if (!v10)
    {
      return;
    }
  }

  else
  {
    if (*(workspaceSize_Float + 53) != 1)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v9 = *&Matrix->structure.rowIndices;
    v16 = *&Matrix->structure.rowCount;
    v17 = v9;
    data = Matrix->data;
    v10 = sub_236765F90(&v16, workspaceSize_Float);
    if (!v10)
    {
      return;
    }
  }

  v6 = v10;
  v12 = 1;
LABEL_13:
  data = 0;
  v16 = 0u;
  v17 = 0u;
  if (*(workspaceSize_Float + 52))
  {
    v13 = *&v6->structure.rowIndices;
    v16 = *&v6->structure.rowCount;
    v17 = v13;
    data = v6->data;
    v14 = workspace;
  }

  else
  {
    sub_236763D4C(&v6->structure.rowCount, workspace, &v16);
    v15 = v6->structure.columnStarts[v6->structure.columnCount];
    v14 = (workspace + 8 * v6->structure.rowCount + 4 * v15 + v15 * 4 * BYTE12(v17) * BYTE12(v17) + 31) & 0xFFFFFFFFFFFFFFF8;
  }

  Factorization->status = sub_236766F0C(BYTE1(Factorization->symbolicFactorization.factorization), &v16, workspaceSize_Float, Factorization->solveWorkspaceRequiredStatic, v14, workspace + Factorization->symbolicFactorization.workspaceSize_Double - v14);
  if (v12)
  {
    (*(workspaceSize_Float + 32))(v6);
  }
}

SparseOpaqueFactorization_Float *__cdecl _SparseFactorQR_Float(SparseOpaqueFactorization_Float *__return_ptr retstr, SparseFactorization_t factorType, const SparseMatrix_Float *Matrix, const SparseSymbolicFactorOptions *sfoptions, const SparseNumericFactorOptions *nfoptions)
{
  v6 = sfoptions;
  v8 = factorType;
  v415 = *MEMORY[0x277D85DE8];
  *&retstr->status = 0u;
  *&retstr->symbolicFactorization.columnCount = 0u;
  *&retstr[1].status = 0;
  *&retstr->userFactorStorage = 0u;
  *&retstr->solveWorkspaceRequiredStatic = 0u;
  *&retstr->symbolicFactorization.workspaceSize_Float = 0u;
  *&retstr->symbolicFactorization.factorSize_Float = 0u;
  retstr->status = SparseInternalError;
  rowCount = Matrix->structure.rowCount;
  columnCount = Matrix->structure.columnCount;
  retstr->symbolicFactorization.status = SparseInternalError;
  retstr->symbolicFactorization.rowCount = rowCount;
  retstr->symbolicFactorization.columnCount = columnCount;
  attributes = Matrix->structure.attributes;
  retstr->symbolicFactorization.attributes = (*&Matrix->structure.attributes & 1);
  LOBYTE(retstr->symbolicFactorization.factorization) = *(&Matrix->structure.blockSize + 2);
  BYTE1(retstr->symbolicFactorization.factorization) = factorType;
  v13 = (attributes >> 2) & 3;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      result = sub_236766614(Matrix, sfoptions);
      if (!result)
      {
        goto LABEL_370;
      }
    }

    else
    {
      result = sub_236766AE0(&Matrix->structure.rowCount, sfoptions);
      if (!result)
      {
        goto LABEL_370;
      }
    }
  }

  else if (v13)
  {
    result = sub_2367662A8(Matrix, sfoptions);
    if (!result)
    {
      goto LABEL_370;
    }
  }

  else
  {
    v14 = *&Matrix->structure.rowIndices;
    *__str = *&Matrix->structure.rowCount;
    *&__str[16] = v14;
    *&__str[32] = Matrix->data;
    result = sub_236765F90(__str, sfoptions);
    if (!result)
    {
      goto LABEL_370;
    }
  }

  v16 = result;
  v17 = 8 * rowCount + 16;
  p_symbolicFactorization = &result->symbolicFactorization;
  v18 = v17 + 4 * *(*&result->symbolicFactorization.status + 8 * columnCount);
  v19 = (v6->malloc)(v18);
  if (v19)
  {
    v20 = v19;
    v407 = v6;
    v384 = v17;
    v385 = columnCount;
    v386 = nfoptions;
    v411 = 0u;
    v412 = 0u;
    p_attributes = &v16->attributes;
    v22 = *&v16->attributes;
    LODWORD(v411) = *&v16->attributes;
    DWORD1(v411) = v16->status;
    v23 = SDWORD1(v411);
    v24 = v19 + 8 * SDWORD1(v411) + 8;
    *(&v411 + 1) = v19;
    *&v412 = v24;
    DWORD2(v412) = v16->symbolicFactorization.factorization;
    BYTE12(v412) = BYTE4(v16->symbolicFactorization.factorization);
    v25 = v19 + 16;
    if (SDWORD1(v411) >= 1)
    {
      bzero((v19 + 16), 8 * SDWORD1(v411));
      p_attributes = &v16->attributes;
    }

    if (v22 >= 1)
    {
      v26 = 0;
      v27 = *&v16->symbolicFactorization.status;
      v28 = *v27;
      do
      {
        v29 = v27[++v26];
        if (v28 < v29)
        {
          v30 = *&v16->symbolicFactorization.columnCount;
          do
          {
            v31 = *(v30 + 4 * v28);
            if ((v31 & 0x80000000) == 0 && v31 < v23)
            {
              ++*(v25 + 8 * v31);
              v29 = v27[v26];
            }

            ++v28;
          }

          while (v28 < v29);
        }

        v28 = v29;
      }

      while (v26 != v22);
    }

    v20[1] = 0;
    v32 = v20 + 1;
    *v20 = 0;
    if (v23 > 1)
    {
      v33 = 0;
      v34 = v23 - 1;
      v35 = v20 + 2;
      do
      {
        v33 += *v35;
        *v35++ = v33;
        --v34;
      }

      while (v34);
    }

    if (v22 >= 1)
    {
      v36 = 0;
      v37 = *&v16->symbolicFactorization.status;
      v38 = *v37;
      do
      {
        v39 = v36++;
        v40 = v37[v36];
        if (v38 < v40)
        {
          v41 = *&v16->symbolicFactorization.columnCount;
          do
          {
            v42 = *(v41 + 4 * v38);
            if ((v42 & 0x80000000) == 0 && v42 < v16->status)
            {
              v43 = v32[v42];
              v32[v42] = v43 + 1;
              *(v24 + 4 * v43) = v39;
              v40 = v37[v36];
            }

            ++v38;
          }

          while (v38 < v40);
          LODWORD(v22) = *p_attributes;
        }

        v38 = v40;
      }

      while (v36 < v22);
    }

    v403 = v20;
    v392 = v8;
    v44 = BYTE4(v16->symbolicFactorization.factorization);
    factorization = v16->symbolicFactorization.factorization;
    if (factorization)
    {
      v46 = p_attributes;
    }

    else
    {
      v46 = v16;
    }

    status = v46->status;
    if (factorization)
    {
      v48 = v16;
    }

    else
    {
      v48 = p_attributes;
    }

    v49 = status * BYTE4(v16->symbolicFactorization.factorization);
    v50 = v48->status * BYTE4(v16->symbolicFactorization.factorization);
    if (v6->ignoreRowsAndColumns)
    {
      v399 = v48->status;
      v405 = p_attributes;
      v51 = v50 + v49 + 4 * (v50 + v49 + v16->status + *&v16->attributes + 2) + 48;
      v52 = (v6->malloc)(v51);
      if (!v52)
      {
        if (!v6->reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672EC38();
          }

          _SparseTrap();
        }

        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v51);
        (v6->reportError)(__str);
        v86 = v20;
        retstr->status = SparseInternalError;
        goto LABEL_226;
      }

      v53 = v52;
      v54 = &v52[v51];
      v55 = (&v52[v49 + 7] & 0xFFFFFFFFFFFFFFF8);
      if (v54 < v55)
      {
        goto LABEL_456;
      }

      v379 = Matrix;
      v387 = retstr;
      v56 = (v55 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      p_attributes = v405;
      if (v54 < v56)
      {
        goto LABEL_456;
      }

      v57 = (v56 + 4 * v49 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v57)
      {
        goto LABEL_456;
      }

      v58 = ((v57 + 4 * v50 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v54 < v58)
      {
        goto LABEL_456;
      }

      v59 = (&v58[status + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
      if (v54 < v59 || v54 < ((v59 + 4 * v399 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_456;
      }

      v50 = BYTE4(v16->symbolicFactorization.factorization);
      factorization = v16->symbolicFactorization.factorization;
      if (factorization)
      {
        v60 = v405;
      }

      else
      {
        v60 = v16;
      }

      if (factorization)
      {
        v61 = v16;
      }

      else
      {
        v61 = v405;
      }

      v62 = *v60;
      v63 = *v61;
      if (*(v407 + 16))
      {
        *v393 = v63;
        v395 = *(v407 + 16);
        v400 = v62 * v50;
        v64 = v63 * BYTE4(v16->symbolicFactorization.factorization);
        v389 = *v60;
        bzero(v52, v62 * BYTE4(v16->symbolicFactorization.factorization));
        v397 = v64;
        bzero(v55, v64);
        if (v389 >= 1)
        {
          v65 = (v389 + 3) & 0xFFFFFFFC;
          v66 = vdupq_n_s64(v389 - 1);
          v67 = xmmword_23681F910;
          v68 = xmmword_23681F920;
          v69 = v58 + 2;
          v70 = vdupq_n_s64(4uLL);
          do
          {
            v71 = vmovn_s64(vcgeq_u64(v66, v68));
            if (vuzp1_s16(v71, *v66.i8).u8[0])
            {
              *(v69 - 2) = v50;
            }

            if (vuzp1_s16(v71, *&v66).i8[2])
            {
              *(v69 - 1) = v50;
            }

            if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, *&v67))).i32[1])
            {
              *v69 = v50;
              v69[1] = v50;
            }

            v67 = vaddq_s64(v67, v70);
            v68 = vaddq_s64(v68, v70);
            v69 += 4;
            v65 -= 4;
          }

          while (v65);
        }

        p_attributes = v405;
        if (v393[0] >= 1)
        {
          v72 = (v393[0] + 3) & 0xFFFFFFFC;
          v73 = vdupq_n_s64(*v393 - 1);
          v74 = xmmword_23681F910;
          v75 = xmmword_23681F920;
          v76 = (v59 + 8);
          v77 = vdupq_n_s64(4uLL);
          do
          {
            v78 = vmovn_s64(vcgeq_u64(v73, v75));
            if (vuzp1_s16(v78, *v73.i8).u8[0])
            {
              *(v76 - 2) = v50;
            }

            if (vuzp1_s16(v78, *&v73).i8[2])
            {
              *(v76 - 1) = v50;
            }

            if (vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, *&v74))).i32[1])
            {
              *v76 = v50;
              v76[1] = v50;
            }

            v74 = vaddq_s64(v74, v77);
            v75 = vaddq_s64(v75, v77);
            v76 += 4;
            v72 -= 4;
          }

          while (v72);
        }

        v79 = *v395;
        if (*v395 < 0)
        {
          v81 = 0;
          v80 = 0;
        }

        else
        {
          v80 = 0;
          v81 = 0;
          v82 = v395 + 1;
          do
          {
            v83 = v79 - v400;
            if (v79 >= v400)
            {
              *(v57 + 4 * v81++) = v83;
              *(v55 + v83) = 1;
              v84 = (v59 + 4 * (v83 / v50));
            }

            else
            {
              *(v56 + 4 * v80++) = v79;
              v53[v79] = 1;
              v84 = &v58[v79 / v50];
            }

            --*v84;
            v85 = *v82++;
            v79 = v85;
          }

          while ((v85 & 0x80000000) == 0);
        }

        if (v16->symbolicFactorization.factorization)
        {
          if (SDWORD1(v411) >= 1)
          {
            v87 = 0;
            v88 = 0;
            v89 = *(&v411 + 1);
            v90 = v412;
            do
            {
              if (*(v59 + 4 * v88))
              {
                v91 = (v89 + 8 * v88);
                v93 = *v91;
                v92 = v91[1];
                v160 = v92 <= v93;
                v94 = v92 - v93;
                if (v160)
                {
LABEL_102:
                  *(v59 + 4 * v88) = 0;
                  if (v50)
                  {
                    v98 = v87;
                    v99 = v50;
                    do
                    {
                      if ((*(v55 + v98) & 1) == 0)
                      {
                        *(v57 + 4 * v81++) = v98;
                      }

                      *(v55 + v98++) = 1;
                      --v99;
                    }

                    while (v99);
                  }
                }

                else
                {
                  v95 = (v90 + 4 * v93);
                  while (1)
                  {
                    v97 = *v95++;
                    v96 = v97;
                    if ((v97 & 0x80000000) == 0 && v96 < v411 && v58[v96])
                    {
                      break;
                    }

                    if (!--v94)
                    {
                      goto LABEL_102;
                    }
                  }
                }
              }

              ++v88;
              v87 += v50;
            }

            while (v88 < SDWORD1(v411));
          }

          if (*v405 >= 1)
          {
            v100 = 0;
            v101 = 0;
            do
            {
              if (v58[v101])
              {
                v102 = (*&p_symbolicFactorization->status + 8 * v101);
                v104 = *v102;
                v103 = v102[1];
                v160 = v103 <= v104;
                v105 = v103 - v104;
                if (v160)
                {
LABEL_117:
                  v58[v101] = 0;
                  if (v50)
                  {
                    v109 = v100;
                    v110 = v50;
                    do
                    {
                      if ((v53[v109] & 1) == 0)
                      {
                        *(v56 + 4 * v80++) = v109;
                      }

                      v53[v109++] = 1;
                      --v110;
                    }

                    while (v110);
                  }
                }

                else
                {
                  v106 = (*&v16->symbolicFactorization.columnCount + 4 * v104);
                  while (1)
                  {
                    v108 = *v106++;
                    v107 = v108;
                    if ((v108 & 0x80000000) == 0 && v107 < v16->status && *(v59 + 4 * v107))
                    {
                      break;
                    }

                    if (!--v105)
                    {
                      goto LABEL_117;
                    }
                  }
                }
              }

              ++v101;
              v100 += v50;
            }

            while (v101 < *v405);
          }
        }

        else
        {
          if (*v405 >= 1)
          {
            v111 = 0;
            v112 = 0;
            do
            {
              if (*(v59 + 4 * v112))
              {
                v113 = (*&p_symbolicFactorization->status + 8 * v112);
                v115 = *v113;
                v114 = v113[1];
                v160 = v114 <= v115;
                v116 = v114 - v115;
                if (v160)
                {
LABEL_133:
                  *(v59 + 4 * v112) = 0;
                  if (v50)
                  {
                    v120 = v111;
                    v121 = v50;
                    do
                    {
                      if ((*(v55 + v120) & 1) == 0)
                      {
                        *(v57 + 4 * v81++) = v120;
                      }

                      *(v55 + v120++) = 1;
                      --v121;
                    }

                    while (v121);
                  }
                }

                else
                {
                  v117 = (*&v16->symbolicFactorization.columnCount + 4 * v115);
                  while (1)
                  {
                    v119 = *v117++;
                    v118 = v119;
                    if ((v119 & 0x80000000) == 0 && v118 < v16->status && v58[v118])
                    {
                      break;
                    }

                    if (!--v116)
                    {
                      goto LABEL_133;
                    }
                  }
                }
              }

              ++v112;
              v111 += v50;
            }

            while (v112 < *v405);
          }

          if (SDWORD1(v411) >= 1)
          {
            v122 = 0;
            v123 = 0;
            v124 = *(&v411 + 1);
            v125 = v412;
            do
            {
              if (v58[v123])
              {
                v126 = (v124 + 8 * v123);
                v128 = *v126;
                v127 = v126[1];
                v160 = v127 <= v128;
                v129 = v127 - v128;
                if (v160)
                {
LABEL_148:
                  v58[v123] = 0;
                  if (v50)
                  {
                    v133 = v122;
                    v134 = v50;
                    do
                    {
                      if ((v53[v133] & 1) == 0)
                      {
                        *(v56 + 4 * v80++) = v133;
                      }

                      v53[v133++] = 1;
                      --v134;
                    }

                    while (v134);
                  }
                }

                else
                {
                  v130 = (v125 + 4 * v128);
                  while (1)
                  {
                    v132 = *v130++;
                    v131 = v132;
                    if ((v132 & 0x80000000) == 0 && v131 < v411 && *(v59 + 4 * v131))
                    {
                      break;
                    }

                    if (!--v129)
                    {
                      goto LABEL_148;
                    }
                  }
                }
              }

              ++v123;
              v122 += v50;
            }

            while (v123 < SDWORD1(v411));
          }
        }

        LODWORD(v49) = v400 - v80;
        LODWORD(v50) = v397 - v81;
        *(v56 + 4 * v80) = -1;
        *(v57 + 4 * v81) = -1;
        factorization = v16->symbolicFactorization.factorization;
      }

      else
      {
        LODWORD(v49) = v62 * v50;
        LODWORD(v50) = v63 * v50;
      }
    }

    else
    {
      v379 = Matrix;
      v387 = retstr;
      v56 = 0;
      v57 = 0;
      v59 = 0;
      v58 = 0;
      v55 = 0;
      v53 = 0;
    }

    v135 = (factorization ^ (v49 < v50)) & 1;
    if (v49 < v50)
    {
      v136 = v50;
    }

    else
    {
      v136 = v49;
    }

    if (v49 < v50)
    {
      v137 = v49;
    }

    else
    {
      v137 = v50;
    }

    if (v49 < v50)
    {
      v138 = v53;
    }

    else
    {
      v138 = v55;
    }

    if (v49 < v50)
    {
      v139 = v59;
    }

    else
    {
      v139 = v58;
    }

    v382 = v139;
    __src = v138;
    if (v49 < v50)
    {
      v140 = v56;
    }

    else
    {
      v58 = v59;
      v140 = v57;
    }

    if (v49 < v50)
    {
      v141 = v57;
    }

    else
    {
      v141 = v56;
    }

    if (v135)
    {
      v142 = v16;
    }

    else
    {
      v142 = &v411;
    }

    v388 = v142;
    if (v135)
    {
      v143 = &v411;
    }

    else
    {
      v143 = v16;
    }

    v398 = v136;
    v401 = v137;
    if (v136 < v137)
    {
      goto LABEL_456;
    }

    v144 = &v411 + 1;
    v394 = v143;
    v396 = *v143;
    v390 = v135;
    if (!v135)
    {
      v144 = p_attributes;
    }

    *v406 = *v144;
    v145 = v406[0] * v44;
    v146 = v145 + 8;
    v147 = v407;
    if (!*(v407 + 16))
    {
      v146 = 0;
    }

    v148 = v146 + 4 * v145 + 224;
    v149 = (*(v407 + 24))(v148);
    if (!v149)
    {
      if (!*(v407 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672EC38();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v148);
      (*(v407 + 40))(__str);
      v150 = 0;
      v387->status = SparseInternalError;
      goto LABEL_342;
    }

    v150 = v149;
    v151 = v149 + v148;
    v152 = (v149 + 215) & 0xFFFFFFFFFFFFFFF8;
    if (v149 + v148 < v152)
    {
      goto LABEL_456;
    }

    v153 = (v152 + 4 * v145 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v151 < v153)
    {
      goto LABEL_456;
    }

    __n = v406[0] * v44;
    v377 = v141;
    if (*(v407 + 16))
    {
      if (v151 < ((v153 + v145 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_456;
      }
    }

    else
    {
      v153 = 0;
    }

    v154 = *v407;
    v155 = *(v407 + 32);
    *(v149 + 16) = *(v407 + 16);
    *(v149 + 32) = v155;
    *v149 = v154;
    *(v149 + 48) = 1;
    *(v149 + 52) = v390;
    *(v149 + 53) = 0;
    *(v149 + 56) = v398;
    *(v149 + 60) = v401;
    *(v149 + 96) = 0u;
    v378 = (v149 + 96);
    *(v149 + 72) = 0;
    *(v149 + 80) = 0;
    *(v149 + 64) = v152;
    *(v149 + 88) = 0;
    v156 = 5 * v406[0] + 2 * v396;
    *(v149 + 112) = 0u;
    v157 = v396 - v406[0] + 8 * v406[0];
    v158 = v157 + 5;
    v159 = v157 + 2;
    *(v149 + 128) = 0;
    *(v149 + 136) = v396 * v44;
    v160 = v156 <= v158;
    if (v156 > v158)
    {
      v161 = v156 + 1;
    }

    else
    {
      v161 = v159;
    }

    v162 = 56;
    if (!v160)
    {
      v162 = 40;
    }

    *(v149 + 144) = 0uLL;
    v376 = (v149 + 144);
    *(v149 + 160) = 0uLL;
    *(v149 + 176) = 0;
    *(v149 + 184) = 0;
    *(v149 + 192) = 0;
    v375 = (v149 + 184);
    *(v149 + 200) = v153;
    v381 = v162 + 4 * v161;
    v163 = *v406;
    v164 = (*(v407 + 24))(v381 + 12 * v406[0] + 24);
    if (v164)
    {
      v165 = v164;
      v166 = v164 + v381 + 12 * v406[0] + 24;
      v167 = (v164 + 4 * *v406 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v166 < v167)
      {
        goto LABEL_456;
      }

      v373 = v140;
      v168 = (v167 + 4 * *v406 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v166 < v168)
      {
        goto LABEL_456;
      }

      v374 = ((v167 + 4 * *v406 + 7) & 0xFFFFFFFFFFFFFFF8);
      v169 = ((v168 + 4 * *v406 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v166 < v169 || v166 < (&v169[v381 + 7] & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_456;
      }

      if (*(v407 + 16))
      {
        memcpy(*(v150 + 200), __src, __n);
        v163 = *v406;
      }

      v170 = (&v411 + 8);
      v171 = 1 << *(v407 + 4);
      if ((v171 & 0x2C) != 0)
      {
        memset(__str, 0, 32);
        v172 = v407;
        sub_236752DB4(0, v394, v407, __str);
        v173 = *(v150 + 64);
        v408 = *__str;
        v409 = *&__str[16];
        v174 = sub_2367E3E64(v392, &v408, 0, v165, v173, v407);
        (*(v407 + 32))(*&__str[8]);
        if (!v174)
        {
          v175 = *(v150 + 64);
          v163 = *v406;
          goto LABEL_243;
        }
      }

      else
      {
        if ((v171 & 0x11) == 0)
        {
          v181 = *(v407 + 8);
          v175 = *(v150 + 64);
          if (v181)
          {
            if (v163 < 1)
            {
              goto LABEL_243;
            }

            for (i = 0; i != v163; i = i + 1)
            {
              *(v175 + 4 * *(v181 + 4 * i)) = i;
            }
          }

          else
          {
            if (v163 < 1)
            {
              goto LABEL_243;
            }

            v183 = 0;
            v184 = vdupq_n_s64(v163 - 1);
            v185 = xmmword_23681F910;
            v186 = xmmword_23681F920;
            v187 = (v175 + 8);
            v188 = vdupq_n_s64(4uLL);
            do
            {
              v189 = vmovn_s64(vcgeq_u64(v184, v186));
              if (vuzp1_s16(v189, *v184.i8).u8[0])
              {
                *(v187 - 2) = v183;
              }

              if (vuzp1_s16(v189, *&v184).i8[2])
              {
                *(v187 - 1) = v183 + 1;
              }

              if (vuzp1_s16(*&v184, vmovn_s64(vcgeq_u64(v184, *&v185))).i32[1])
              {
                *v187 = v183 + 2;
                v187[1] = v183 + 3;
              }

              v183 += 4;
              v185 = vaddq_s64(v185, v188);
              v186 = vaddq_s64(v186, v188);
              v187 += 4;
            }

            while (((v163 + 3) & 0xFFFFFFFC) != v183);
          }

          for (j = 0; j != v163; j = j + 1)
          {
            v165[*(v175 + 4 * j)] = j;
          }

LABEL_243:
          v191 = *(v394 + 16);
          *__str = *v394;
          *&__str[16] = v191;
          sub_236768978(__str, v382, v58, v165, v175, v374, v169, &v169[4 * v163]);
          sub_236750DDC(*v406, v374, v165, *(v150 + 64), v169);
          v192 = *(v150 + 64);
          v193 = *&v388->symbolicFactorization.columnCount;
          *__str = *&v388->status;
          *&__str[16] = v193;
          sub_2366EE0E8(__str, v382, v58, v165, v192, v374, v167, v169, &v169[16 * *v406]);
          v194 = sub_236768200(v394, v382, v58, v165, *(v150 + 64), v374, v167, v169, v407, &v169[4 * v163 + 4]);
          v195 = *v406;
          *(v150 + 88) = v194;
          *(v150 + 80) = 0;
          if (v406[0] < 1)
          {
            v196 = 0;
            v198 = v398;
          }

          else
          {
            v196 = 0;
            v197 = v167;
            v198 = v398;
            do
            {
              v199 = *v197++;
              v196 += v199;
              --v195;
            }

            while (v195);
            *(v150 + 80) = v196;
          }

          if (v194 < 1)
          {
            v200 = 0;
          }

          else
          {
            v200 = 0;
            v201 = v194;
            v202 = (v169 + 4);
            v203 = *v169;
            v204 = v167;
            do
            {
              v206 = *v204++;
              v205 = v206;
              v207 = *v202++;
              v200 += v205 * v44;
              v196 += v205 * (v207 - v203);
              v203 = v207;
              --v201;
            }

            while (v201);
            *(v150 + 80) = v196;
          }

          v391 = v198;
          v402 = 8 * (v198 - v401 + v200);
          v208 = v402 + 12 * v194 + 8 * (v200 + 2 * v194 + 2) + 44;
          v209 = (*(v407 + 24))(v208);
          if (v209)
          {
            v210 = v209 + v208;
            v211 = *(v150 + 88);
            v212 = v211 + 1;
            v213 = (v209 + 4 * (v211 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v209 + v208 >= v213)
            {
              *v378 = v209;
              v214 = v213 + 8 * v212;
              if (v214 <= v210)
              {
                *(v150 + 104) = v213;
                v215 = (v214 + 4 * v200 + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v210 >= v215)
                {
                  *(v150 + 112) = v214;
                  v216 = (v215 + 4 * v200 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v210 >= v216)
                  {
                    *v376 = v215;
                    v217 = v216 + 8 * v212;
                    if (v217 <= v210)
                    {
                      *(v150 + 120) = v216;
                      v218 = v217 + v402;
                      if (v217 + v402 <= v210)
                      {
                        *(v150 + 128) = v217;
                        v219 = (v218 + 4 * v211 + 15) & 0xFFFFFFFFFFFFFFF8;
                        if (v210 >= v219)
                        {
                          *(v150 + 152) = v218;
                          if (v210 >= ((v219 + 4 * v211 + 7) & 0xFFFFFFFFFFFFFFF8))
                          {
                            *(v150 + 160) = v219;
                            if ((v211 & 0x80000000) == 0)
                            {
                              v220 = 0;
                              do
                              {
                                *(v209 + 4 * v220) = *&v169[4 * v220];
                                v160 = v220++ < *(v150 + 88);
                              }

                              while (v160);
                              v211 = *(v150 + 88);
                            }

                            sub_236812888(v211, v374, v218, v219);
                            v221 = *(v150 + 88);
                            if (v221 < 1)
                            {
                              v223 = 0;
                              v226 = *v406;
                              v227 = v396 * v44;
                            }

                            else
                            {
                              v222 = 0;
                              v223 = 0;
                              v224 = *(v150 + 152);
                              v225 = *v224;
                              v226 = *v406;
                              v227 = v396 * v44;
                              do
                              {
                                v228 = v224[++v222];
                                v229 = v391;
                                if (v225 < v228)
                                {
                                  v230 = v228 - v225;
                                  v231 = (*(v150 + 160) + 4 * v225);
                                  v232 = v398;
                                  do
                                  {
                                    v233 = *v231++;
                                    v232 += (*(v167 + 4 * v233) - *(*(v150 + 96) + 4 * v233 + 4) + *(*(v150 + 96) + 4 * v233)) * v44;
                                    --v230;
                                  }

                                  while (v230);
                                  v229 = v232;
                                }

                                if (v223 <= v229)
                                {
                                  v223 = v229;
                                }

                                v225 = v224[v222];
                              }

                              while (v222 != v221);
                            }

                            v234 = *(v407 + 16);
                            if (v234)
                            {
                              if ((v221 & 0x80000000) == 0)
                              {
                                v235 = 0;
                                v236 = *v378;
                                do
                                {
                                  *&v169[4 * v235] = v236[v235];
                                  v237 = *(v150 + 88);
                                  v160 = v235++ < v237;
                                }

                                while (v160);
                                if ((v237 & 0x80000000) == 0)
                                {
                                  v238 = 0;
                                  v239 = 0;
                                  do
                                  {
                                    v236[v238] = v239;
                                    v240 = *&v169[4 * v238];
                                    v241 = *&v169[4 * v238 + 4];
                                    if (v240 < v241)
                                    {
                                      v242 = v241 - v240;
                                      v243 = (*(v150 + 64) + 4 * v240);
                                      do
                                      {
                                        v244 = *v243++;
                                        v239 += v58[v244];
                                        --v242;
                                      }

                                      while (v242);
                                    }

                                    v160 = v238++ < *(v150 + 88);
                                  }

                                  while (v160);
                                }
                              }

                              v245 = v375;
                              if (v226 >= 1)
                              {
                                v246 = *(v150 + 64);
                                v247 = v246;
                                v248 = v169;
                                v249 = v226;
                                do
                                {
                                  v250 = *v247++;
                                  *v248 = v250;
                                  v248 += 4;
                                  --v249;
                                }

                                while (v249);
                                v251 = 0;
                                v252 = 0;
                                v253 = __n - 1;
                                do
                                {
                                  if (v44)
                                  {
                                    v254 = 0;
                                    v255 = *(v150 + 200);
                                    do
                                    {
                                      v256 = *&v169[4 * v251] * v44;
                                      v257 = v254 + v256;
                                      v258 = *(v255 + v256);
                                      if (v258)
                                      {
                                        v259 = v253;
                                      }

                                      else
                                      {
                                        v259 = v252;
                                      }

                                      v253 -= v258;
                                      v252 += v258 ^ 1;
                                      v246[v259] = v257;
                                      ++v254;
                                      ++v255;
                                    }

                                    while (v44 != v254);
                                  }

                                  v251 = v251 + 1;
                                }

                                while (v251 != v226);
                              }
                            }

                            else
                            {
                              v245 = v375;
                              if (v44 < 2)
                              {
LABEL_313:
                                if (v234)
                                {
                                  v270 = v227 + 8;
                                }

                                else
                                {
                                  v270 = 0;
                                }

                                __b = v169;
                                if (v381 < 8 * v223 + 4 * (v223 + v396 + 2 * v44 * v226) + v270 + 32)
                                {
                                  __b = (*(v407 + 24))();
                                }

                                sub_23679A9A8(v394, v388, v150, *(v150 + 152), *(v150 + 160), v223, v377, v373, __b);
                                if (__b != v169)
                                {
                                  (*(v407 + 32))(__b);
                                }

                                *(v150 + 168) = 0;
                                *(v150 + 176) = 0;
                                *(v150 + 72) = 0;
                                *v245 = 0;
                                v245[1] = 0;
                                v272 = *(v150 + 88);
                                if (v272 >= 1)
                                {
                                  v273 = 0;
                                  v274 = 0;
                                  v275 = 0;
                                  v276 = 0;
                                  v277 = 0;
                                  v278 = 0;
                                  v279 = 0;
                                  v280 = 0;
                                  v281 = *(v150 + 96);
                                  v282 = *(v150 + 104);
                                  v283 = *(v150 + 120);
                                  while (1)
                                  {
                                    v284 = v278 + 1;
                                    v285 = *(v281 + 4 * (v278 + 1)) - *(v281 + 4 * v278);
                                    v286 = *(v283 + 8 * (v278 + 1)) - *(v283 + 8 * v278);
                                    if (v286 < v285)
                                    {
                                      break;
                                    }

                                    v287 = *(v282 + 8 * v284) - *(v282 + 8 * v278);
                                    v288 = v287;
                                    v289 = v286 * v287;
                                    if (v289 > v277)
                                    {
                                      *(v150 + 168) = v289;
                                      v277 = v286 * v287;
                                    }

                                    if (v276 < v287)
                                    {
                                      *(v150 + 176) = v287;
                                      v276 = v287;
                                    }

                                    v275 += v289;
                                    *(v150 + 72) = v275;
                                    v290 = *(v150 + 152);
                                    v291 = *(v290 + 4 * v278);
                                    v292 = *(v290 + 4 * v284);
                                    if (v291 < v292)
                                    {
                                      v293 = v292 - v291;
                                      v294 = (*(v150 + 160) + 4 * v291);
                                      do
                                      {
                                        v295 = *v294++;
                                        v296 = *(v281 + 4 * (v295 + 1)) - *(v281 + 4 * v295);
                                        v297 = *(v282 + 8 * (v295 + 1)) - *(v282 + 8 * v295);
                                        v298 = *(v283 + 8 * (v295 + 1)) - *(v283 + 8 * v295);
                                        if (v298 >= v297)
                                        {
                                          v298 = v297;
                                        }

                                        v299 = v298 - v296;
                                        v280 += v299 * (v296 - v297);
                                        v279 -= v299;
                                        --v293;
                                      }

                                      while (v293);
                                    }

                                    if (v286 >= v288)
                                    {
                                      v286 = v288;
                                    }

                                    v300 = v286 - v285;
                                    v280 += v300 * (v288 - v285);
                                    if (v280 > v274)
                                    {
                                      *v245 = v280;
                                      v274 = v280;
                                    }

                                    v279 += v300;
                                    if (v279 > v273)
                                    {
                                      *(v150 + 192) = v279;
                                      v273 = v279;
                                    }

                                    v278 = v284;
                                    if (v284 == v272)
                                    {
                                      goto LABEL_341;
                                    }
                                  }

                                  v387->status = SparseMatrixIsSingular;
                                  (*(v407 + 32))();
                                  (*(v407 + 32))(v150);
                                  v150 = 0;
                                }

LABEL_341:
                                v301 = v165;
                                v147 = v407;
                                (*(v407 + 32))(v301);
LABEL_342:
                                if (*(v147 + 16))
                                {
                                  (*(v147 + 32))(v53);
                                }

                                p_free = (v147 + 32);
                                (*(v147 + 32))(v403);
                                if (!v150)
                                {
                                  goto LABEL_369;
                                }

                                v302 = v16->status;
                                v303 = *&v16->attributes;
                                v304 = BYTE4(v16->symbolicFactorization.factorization);
                                if (v302 >= v303)
                                {
                                  v305 = *&v16->attributes;
                                }

                                else
                                {
                                  v305 = v16->status;
                                }

                                if (*(v150 + 52))
                                {
                                  v306 = 0;
                                  v307 = 0;
                                  LODWORD(v303) = v16->status;
                                }

                                else
                                {
                                  v309 = v302 + 2;
                                  v310 = 8 * (v302 + 2);
                                  v311 = v310 + 8;
                                  v312 = v310 >= 0xFFFFFFFFFFFFFFF8;
                                  if (v309 >> 61 || v312)
                                  {
                                    goto LABEL_364;
                                  }

                                  v313 = *(*&p_symbolicFactorization->status + 8 * v303);
                                  v307 = v311 + 4 * v313;
                                  v314 = __CFADD__(v311, 4 * v313);
                                  if (v313 >> 62 || v314 || !is_mul_ok(v313, (4 * v304 * v304)))
                                  {
                                    goto LABEL_364;
                                  }

                                  v306 = v313 * (4 * v304 * v304);
                                }

                                if (v392 == 40)
                                {
                                  v308 = 0;
                                }

                                else
                                {
                                  v308 = *(v150 + 168);
                                }

                                v315 = *(v150 + 184);
                                v316 = v315 + v308;
                                if (!__CFADD__(v315, v308))
                                {
                                  *__str = 1;
                                  LODWORD(v408) = -1;
                                  v413 = 10000;
                                  v319 = ilaenv_NEWLAPACK();
                                  v320 = v319;
                                  if (v392 != 40)
                                  {
                                    v320 = v319 + 1;
                                  }

                                  v321 = *(v150 + 176);
                                  v322 = !is_mul_ok(v320, v321);
                                  v323 = v320 * v321;
                                  v324 = __CFADD__(v316, v323);
                                  v325 = v316 + v323;
                                  v326 = v324;
                                  if (!v322 && !v326)
                                  {
                                    v324 = __CFADD__(v325, v306);
                                    v327 = v325 + v306;
                                    if (!v324)
                                    {
                                      v328 = v303 * v304;
                                      v329 = v307 + 4 * v328;
                                      v330 = __CFADD__(v307, 4 * v328);
                                      if (!(v328 >> 62) && !v330)
                                      {
                                        v331 = *(v150 + 88);
                                        v324 = __CFADD__(v329, 8 * v331);
                                        v332 = v329 + 8 * v331;
                                        v333 = v324;
                                        if ((v331 & 0x80000000) == 0 && !v333)
                                        {
                                          v324 = __CFADD__(v332, 40);
                                          v334 = v332 + 40;
                                          if (!v324)
                                          {
                                            if ((v321 & 0x80000000) == 0)
                                            {
                                              v335 = *(v150 + 176);
                                            }

                                            else
                                            {
                                              v335 = -v321;
                                            }

                                            v336 = 2 * v335;
                                            if ((v321 & 0x80000000) != 0)
                                            {
                                              v336 = -v336;
                                            }

                                            v324 = __CFADD__(v334, v336);
                                            v337 = v334 + v336;
                                            v338 = v324;
                                            if ((v321 & 0x80000000) == 0 && !v338)
                                            {
                                              v339 = v337 + 4 * v327;
                                              v340 = __CFADD__(v337, 4 * v327);
                                              v387->symbolicFactorization.workspaceSize_Double = v339;
                                              if (!(v327 >> 62) && !v340)
                                              {
                                                v324 = __CFADD__(v337, 8 * v327);
                                                v341 = v337 + 8 * v327;
                                                v342 = v324;
                                                v387->symbolicFactorization.factorSize_Float = v341;
                                                if (!(v327 >> 61) && !v342)
                                                {
                                                  if (v392 == 40)
                                                  {
                                                    v343 = (v150 + 72);
                                                    v344 = *(v150 + 88);
                                                    v345 = *(*(v150 + 104) + 8 * v344);
                                                  }

                                                  else
                                                  {
                                                    v345 = 0;
                                                    v343 = (v150 + 80);
                                                    LODWORD(v344) = *(v150 + 88);
                                                  }

                                                  v346 = v344 + 1;
                                                  if (v344 >= -1)
                                                  {
                                                    v347 = v344 + 1;
                                                  }

                                                  else
                                                  {
                                                    v347 = -v346;
                                                  }

                                                  v348 = 8 * v347;
                                                  if (v344 < -1)
                                                  {
                                                    v348 = -8 * v347;
                                                  }

                                                  v324 = __CFADD__(v348, 96);
                                                  v349 = v348 + 96;
                                                  v350 = v324;
                                                  v147 = v407;
                                                  if (v344 >= -1 && !(v347 >> 61) && !v350)
                                                  {
                                                    v351 = 8 * v346 + 96;
                                                    if ((8 * v346) < 0xFFFFFFFFFFFFFFA0)
                                                    {
                                                      v352 = v304 * v305;
                                                      v353 = *v343;
                                                      v324 = __CFADD__(v353, v345);
                                                      v354 = v353 + v345;
                                                      v355 = v324;
                                                      v324 = __CFADD__(v352, v354);
                                                      v356 = v352 + v354;
                                                      v357 = v324;
                                                      if (!v355 && !v357)
                                                      {
                                                        v358 = *(v150 + 176);
                                                        if (v358 >= 0)
                                                        {
                                                          v359 = *(v150 + 176);
                                                        }

                                                        else
                                                        {
                                                          v359 = -v358;
                                                        }

                                                        v360 = 2 * v359;
                                                        if (v358 < 0)
                                                        {
                                                          v360 = -v360;
                                                        }

                                                        v324 = __CFADD__(v356, v360);
                                                        v361 = v356 + v360;
                                                        v362 = v324;
                                                        if ((v358 & 0x80000000) == 0 && !v362)
                                                        {
                                                          v363 = v349 + 4 * v361;
                                                          v364 = __CFADD__(v349, 4 * v361);
                                                          v387->symbolicFactorization.factorSize_Double = v363;
                                                          if (!(v361 >> 62) && !v364)
                                                          {
                                                            v365 = __CFADD__(v351, 8 * v361);
                                                            *&v387->userFactorStorage = v351 + 8 * v361;
                                                            if (!(v361 >> 61) && !v365)
                                                            {
                                                              v387->symbolicFactorization.workspaceSize_Float = v150;
                                                              v387->symbolicFactorization.status = SparseStatusOK;
                                                              v366 = (*(v407 + 24))(v339);
                                                              if (v366)
                                                              {
                                                                v367 = v366;
                                                                workspaceSize_Float = 0;
                                                                v408 = 0u;
                                                                v409 = 0u;
                                                                if (*(v150 + 52))
                                                                {
                                                                  v408 = *&v16->status;
                                                                  v409 = *&v16->symbolicFactorization.columnCount;
                                                                  workspaceSize_Float = v16->symbolicFactorization.workspaceSize_Float;
                                                                  v368 = v366;
                                                                }

                                                                else
                                                                {
                                                                  sub_236763D4C(v16, v366, &v408);
                                                                  v369 = 4 * *(*&v16->symbolicFactorization.status + 8 * v385);
                                                                  v368 = (&v367->symbolicFactorization.rowCount + v384 + v369 + v369 * BYTE12(v409) * BYTE12(v409) + 3) & 0xFFFFFFFFFFFFFFF8;
                                                                }

                                                                v370 = sub_2367640B8(v392, v352, v150, v363, v150, v386, 0);
                                                                v387->solveWorkspaceRequiredStatic = v370;
                                                                if (v370)
                                                                {
                                                                  v387->status = sub_236766F0C(v392, &v408, v150, v370, v368, v367 + v339 - v368);
                                                                  if (v392 == 40)
                                                                  {
                                                                    if (*&v16->attributes <= v16->status)
                                                                    {
                                                                      v371 = v16->status;
                                                                    }

                                                                    else
                                                                    {
                                                                      v371 = *&v16->attributes;
                                                                    }

                                                                    sub_2367CDD30(v371 * BYTE4(v16->symbolicFactorization.factorization), v150, &v387->solveWorkspaceRequiredPerRHS, &v387[1]);
                                                                    v372 = *&v387[1].status + 4 * *(&v379->structure.blockSize + 2) * (2 * v371);
                                                                  }

                                                                  else
                                                                  {
                                                                    v387->solveWorkspaceRequiredPerRHS = 0;
                                                                    v372 = 4 * *&v16->attributes * BYTE4(v16->symbolicFactorization.factorization);
                                                                  }

                                                                  *&v387[1].status = v372;
                                                                }

                                                                else
                                                                {
                                                                  if (!*(v407 + 40))
                                                                  {
                                                                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                                                    {
                                                                      sub_23672ECA8();
                                                                    }

                                                                    _SparseTrap();
                                                                  }

                                                                  memset(__str, 0, 256);
                                                                  snprintf(__str, 0x100uLL, "Failed to allocate space for QR factors of size %ld.", v363);
                                                                  (*(v407 + 40))(__str);
                                                                }

                                                                (*p_free)(v367);
                                                              }

                                                              else
                                                              {
                                                                if (!*(v407 + 40))
                                                                {
                                                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                                                  {
                                                                    sub_23672ED18();
                                                                  }

                                                                  _SparseTrap();
                                                                }

                                                                memset(__str, 0, 256);
                                                                snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld for QR Numeric factorization.", v339);
                                                                (*(v407 + 40))(__str);
                                                              }

                                                              goto LABEL_369;
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
                                      }
                                    }
                                  }
                                }

LABEL_364:
                                v317 = *(v147 + 40);
                                if (!v317)
                                {
                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                  {
                                    sub_23672ED88();
                                  }

                                  _SparseTrap();
                                }

                                memset(&__str[70], 0, 186);
                                strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
                                v317(__str);
                                (*p_free)(v150);
                                goto LABEL_369;
                              }

                              if (v226 >= 1)
                              {
                                v260 = *(v150 + 64);
                                v261 = v260;
                                v262 = v165;
                                v263 = v226;
                                do
                                {
                                  v264 = *v261++;
                                  *v262++ = v264;
                                  --v263;
                                }

                                while (v263);
                                v265 = 0;
                                LODWORD(v266) = 0;
                                do
                                {
                                  v267 = 0;
                                  v266 = v266;
                                  do
                                  {
                                    v260[v266++] = v267++ + v165[v265] * v44;
                                  }

                                  while (v44 != v267);
                                  v265 = v265 + 1;
                                }

                                while (v265 != v226);
                                LODWORD(v221) = *(v150 + 88);
                              }

                              if ((v221 & 0x80000000) == 0)
                              {
                                v268 = *v378;
                                v269 = -1;
                                do
                                {
                                  *v268++ *= v44;
                                  ++v269;
                                }

                                while (v269 < *(v150 + 88));
                              }
                            }

                            *(v150 + 80) *= (v44 * v44);
                            goto LABEL_313;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_456:
            __break(1u);
          }

          v6 = v407;
          (*(v407 + 32))(v165);
          (*(v407 + 32))(v150);
          goto LABEL_219;
        }

        if (!v390)
        {
          v170 = p_symbolicFactorization;
        }

        v176 = _SparseCOLAMDWorkspaceSize(v396, v163, *(*&v170->status + 8 * v163), v401);
        v172 = v407;
        v177 = (*(v407 + 24))(v176);
        if (v177)
        {
          v178 = v177;
          _SparseCOLAMD(v394, v388, v58, 0, *(v150 + 64), v177);
          (*(v407 + 32))(v178);
          v175 = *(v150 + 64);
          v163 = *v406;
          if (v406[0] >= 1)
          {
            v179 = 0;
            do
            {
              v165[*(v175 + 4 * v179)] = v179;
              ++v179;
            }

            while (*v406 != v179);
          }

          goto LABEL_243;
        }
      }

      (*(v172 + 32))(v165);
    }

    else
    {
      v172 = v407;
    }

    (*(v172 + 32))(v150);
    v6 = v172;
LABEL_219:
    v86 = v403;
LABEL_226:
    (v6->free)(v86);
    p_free = &v6->free;
LABEL_369:
    result = (*p_free)(v16);
    goto LABEL_370;
  }

  if (!v6->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EDD0();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.", v18);
  (v6->reportError)(__str);
  result = (v6->free)(v16);
LABEL_370:
  v318 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_236765F90(int *a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 24))(12 * *a1);
  v5 = *a1;
  v39 = v4;
  v6 = (v4 + 8 * v5);
  bzero(v6, 4 * v5);
  v7 = a1[1];
  __n = *a1;
  v38 = *(a1 + 28);
  v8 = v38 * v38;
  v9 = 8 * v7 + 8;
  v10 = 4 * *(*(a1 + 1) + 8 * v7);
  v11 = v9 + v10 + v10 * v8 + 64;
  v12 = (*(a2 + 24))(v11);
  v13 = v12;
  if (v12)
  {
    v36 = a2;
    v14 = v12 + v11;
    v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v12 + v11 < v15 || (v16 = v15 + v9, v15 + v9 > v14) || (v17 = (v16 + v10 + 7) & 0xFFFFFFFFFFFFFFF8, v14 < v17) || v14 < ((v17 + v10 * v8 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    v18 = *(a1 + 28);
    v19 = a1[6];
    *v12 = __n;
    *(v12 + 4) = v7;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = v19;
    *(v12 + 28) = v18;
    *(v12 + 32) = v17;
    v20 = a1[1];
    if (v20 < 1)
    {
      v22 = 0;
      v33 = v7;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 1);
      v24 = 4 * v38 * v38;
      do
      {
        v25 = v21;
        *(*(v13 + 8) + 8 * v21) = v22;
        v26 = *(v23 + 8 * v21++);
        if (v26 < *(v23 + 8 * v21))
        {
          v27 = v24 * v26;
          do
          {
            v28 = *(*(a1 + 2) + 4 * v26);
            if ((v28 & 0x80000000) == 0 && v28 < *a1)
            {
              if (v25 >= v6[v28])
              {
                *(*(v13 + 16) + 4 * v22) = v28;
                v6[v28] = v21;
                *(v39 + 8 * v28) = v22;
                memcpy((*(v13 + 32) + 4 * v22 * v8), (*(a1 + 4) + 4 * v26 * v8), 4 * v8);
                ++v22;
                v23 = *(a1 + 1);
              }

              else if (v38)
              {
                v29 = (*(v13 + 32) + 4 * *(v39 + 8 * v28) * v8);
                v30 = (*(a1 + 4) + v27);
                v31 = v38 * v38;
                do
                {
                  v32 = *v30++;
                  *v29 = v32 + *v29;
                  ++v29;
                  --v31;
                }

                while (v31);
              }
            }

            ++v26;
            v27 += v24;
          }

          while (v26 < *(v23 + 8 * v21));
          v20 = a1[1];
        }
      }

      while (v21 < v20);
      v15 = *(v13 + 8);
      v33 = *(v13 + 4);
    }

    *(v15 + 8 * v33) = v22;
    (*(v36 + 32))(v39);
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *__str = 0u;
    v41 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v11);
    (*(a2 + 40))(__str);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_2367662A8(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = 8 * *(a1 + 4);
  v43 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = v4 + 8;
  v7 = 4 * *(*(a1 + 8) + v4);
  v42 = (v5 * v5);
  v8 = v4 + 8 + v7 + v7 * v42 + 64;
  result = (*(a2 + 24))(v8);
  if (result)
  {
    v10 = result + v8;
    v11 = (result + 47) & 0xFFFFFFFFFFFFFFF8;
    if (result + v8 < v11 || (v12 = v11 + v6, v11 + v6 > v10) || (v13 = (v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8, v10 < v13) || v10 < ((v13 + v7 * v42 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    v14 = *(a1 + 24);
    v15 = v43;
    *result = v43;
    *(result + 4) = v43;
    *(result + 8) = v11;
    *(result + 16) = v12;
    *(result + 24) = v14;
    *(result + 28) = v5;
    *(result + 32) = v13;
    *(result + 24) = v14 & 0xFFF3;
    if (v43 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v5 * v5);
      __n = 4 * v42;
      v41 = result;
      v19 = *(a1 + 8);
      v20 = 4 * v5;
      v21 = 4 * v5 + 4;
      v22 = 4 * v5 * v5;
      while (1)
      {
        v23 = v16;
        *(*(result + 8) + 8 * v16) = v17;
        v24 = *(v19 + 8 * v16++);
        if (v24 < *(v19 + 8 * v16))
        {
          break;
        }

LABEL_35:
        if (v16 == v15)
        {
          v11 = *(result + 8);
          goto LABEL_40;
        }
      }

      v25 = v22 * v24;
      v44 = v23;
      while (1)
      {
        v26 = *(*(a1 + 16) + 4 * v24);
        v27 = *(a1 + 24);
        if ((v27 & 2) != 0 && v23 > v26)
        {
          goto LABEL_34;
        }

        v28 = (v27 >> 1) & 1;
        if (v23 >= v26)
        {
          v28 = 1;
        }

        if (v28 != 1 || v26 >= v15)
        {
          goto LABEL_34;
        }

        *(*(result + 16) + 4 * v17) = v26;
        v30 = *(a1 + 32);
        v31 = (*(result + 32) + 4 * v17 * v18);
        v45 = v17 + 1;
        if (v23 == v26)
        {
          bzero(v31, __n);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v5)
            {
              v36 = 0;
              v37 = v30 + v25;
              result = v41;
              v15 = v43;
              v23 = v44;
              v17 = v45;
              do
              {
                v38 = 0;
                do
                {
                  *&v31[4 * v38] = *(v37 + 4 * v38);
                  ++v38;
                }

                while (v36 + v38 < v5);
                ++v36;
                v31 += v21;
                v37 += v21;
              }

              while (v36 != v5);
              goto LABEL_33;
            }
          }

          else if (v5)
          {
            v32 = 0;
            v33 = v30 + v25;
            v34 = 1;
            result = v41;
            v15 = v43;
            v23 = v44;
            v17 = v45;
            do
            {
              v35 = 0;
              do
              {
                *&v31[4 * v35] = *(v33 + 4 * v35);
                ++v35;
              }

              while (v34 != v35);
              ++v32;
              ++v34;
              v31 += v20;
              v33 += v20;
            }

            while (v32 != v5);
LABEL_33:
            v18 = (v5 * v5);
            goto LABEL_34;
          }
        }

        else
        {
          memcpy(v31, (v30 + 4 * v24 * v18), __n);
        }

        result = v41;
        v18 = (v5 * v5);
        v15 = v43;
        v23 = v44;
        v17 = v45;
LABEL_34:
        ++v24;
        v19 = *(a1 + 8);
        v25 += v22;
        if (v24 >= *(v19 + 8 * v16))
        {
          goto LABEL_35;
        }
      }
    }

    v17 = 0;
LABEL_40:
    *(v11 + 8 * v15) = v17;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    *__str = 0u;
    v47 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
    result = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_236766614(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = 8 * v4 + 8;
  v65 = v4;
  v66 = (v5 * v5);
  v7 = 4 * (*(*(a1 + 8) + 8 * v4) + v4);
  v8 = v6 + v7 + v7 * v66 + 64;
  v9 = (*(a2 + 24))(v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9 + v8;
    v12 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + v8 < v12 || (v13 = v12 + v6, LODWORD(v14) = v65, v12 + v6 > v11) || (v15 = (v13 + v7 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || v11 < ((v15 + v7 * v66 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    v16 = *(v3 + 24);
    *v9 = v65;
    *(v9 + 4) = v65;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v16;
    *(v9 + 28) = v5;
    *(v9 + 32) = v15;
    *(v9 + 24) = v16 & 0xFFF3;
    if (v65 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      __n = 4 * v66;
      v19 = 4 * v5;
      v20 = 16 * v5 + 16;
      v21 = 4 * v5 * v5;
      v22 = 4 * v5 + 4;
      v67 = v10;
      v63 = vdupq_n_s64(v5 - 1);
      v62 = vdupq_n_s64(4uLL);
      do
      {
        v23 = v17;
        v24 = v10[2];
        *(v10[1] + 8 * v17) = v18;
        *(v24 + 4 * v18) = v17;
        v25 = v10[4];
        v26 = v18;
        bzero((v25 + 4 * v18 * v66), __n);
        if (v5)
        {
          v27 = (v5 + 3) & 0x1FC;
          v28 = xmmword_23681F920;
          v29 = xmmword_23681F910;
          do
          {
            v30 = vmovn_s64(vcgeq_u64(v63, v28));
            if (vuzp1_s16(v30, *v28.i8).u8[0])
            {
              *(v25 + v21 * v26) = 1065353216;
            }

            if (vuzp1_s16(v30, *&v28).i8[2])
            {
              *(v25 + v5 * (v19 * v26 + 4) + 4) = 1065353216;
            }

            if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v63, *&v29))).i32[1])
            {
              *(v25 + v5 * (v19 * v26 + 8) + 8) = 1065353216;
              *(v25 + v5 * (v19 * v26 + 12) + 12) = 1065353216;
            }

            v29 = vaddq_s64(v29, v62);
            v28 = vaddq_s64(v28, v62);
            v25 += v20;
            v27 -= 4;
          }

          while (v27);
        }

        v18 = v26 + 1;
        v31 = *(v3 + 8);
        v32 = *(v31 + 8 * v23);
        v17 = v23 + 1;
        if (v32 >= *(v31 + 8 * (v23 + 1)))
        {
          v14 = v65;
        }

        else
        {
          v33 = v21 * v32;
          v34 = v21 * v32 + 4;
          v14 = v65;
          do
          {
            v35 = *(*(v3 + 16) + 4 * v32);
            v36 = *(v3 + 24);
            if ((v36 & 2) == 0 || v23 <= v35)
            {
              v37 = v23 >= v35 || (v36 >> 1) & 1;
              if (v37 && v35 < v14)
              {
                v39 = *(v3 + 32);
                if (v23 == v35)
                {
                  v40 = v67[4];
                  v41 = *(v67[1] + 8 * v23);
                  if ((v36 & 2) != 0)
                  {
                    if (v5)
                    {
                      v42 = 0;
                      v43 = v40 + v21 * v41 + 4;
                      v44 = (v39 + v34);
                      v45 = v5 - 1;
                      do
                      {
                        if (++v42 < v5)
                        {
                          v46 = v45;
                          v47 = v44;
                          v48 = v43;
                          do
                          {
                            v49 = *v47++;
                            *v48++ = v49;
                            --v46;
                          }

                          while (v46);
                        }

                        v43 += v22;
                        v44 = (v44 + v22);
                        --v45;
                      }

                      while (v42 != v5);
                    }
                  }

                  else if (v5)
                  {
                    v56 = 0;
                    v57 = v40 + 4 * v41 * v66;
                    v58 = v39 + v33;
                    do
                    {
                      if (v56)
                      {
                        for (i = 0; i != v56; ++i)
                        {
                          *(v57 + 4 * i) = *(v58 + 4 * i);
                        }
                      }

                      ++v56;
                      v57 += v19;
                      v58 += v19;
                    }

                    while (v56 != v5);
                  }
                }

                else
                {
                  *(v67[2] + 4 * v18) = v35;
                  v50 = v22;
                  v51 = v23;
                  v52 = v21;
                  v53 = v3;
                  v54 = v17;
                  v55 = v18;
                  memcpy((v67[4] + 4 * v18 * v66), (v39 + 4 * v32 * v66), __n);
                  v17 = v54;
                  v3 = v53;
                  v21 = v52;
                  v23 = v51;
                  v22 = v50;
                  v19 = 4 * v5;
                  v14 = v65;
                  v18 = v55 + 1;
                  v31 = *(v3 + 8);
                }
              }
            }

            ++v32;
            v33 += v21;
            v34 += v21;
          }

          while (v32 < *(v31 + 8 * v17));
        }

        v10 = v67;
        v20 = 16 * v5 + 16;
      }

      while (v17 != v14);
      v12 = v67[1];
    }

    *(v12 + 8 * v14) = v18;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *__str = 0u;
    v69 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
  }

  v60 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_236766AE0(__int128 *a1, uint64_t a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v7 = *(*(a1 + 1) + 8 * v4);
  v8 = 8 * (v4 + v7) + 16;
  v9 = v8 + 8 * v7 * v6 + 72;
  v10 = (*(a2 + 24))(v9);
  if (!v10)
  {
    if (*(a2 + 40))
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      *__str = 0u;
      v66 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v8 + 8 * v7 * v6 + 72);
LABEL_12:
      (*(a2 + 40))(__str);
      v11 = 0;
      goto LABEL_56;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v11 = v10;
  v61 = v4;
  v62 = a2;
  v12 = v10 + v9;
  v13 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + v9 < v13)
  {
    goto LABEL_57;
  }

  v14 = (v13 + 8 * v7 * v6);
  if (v14 > v12)
  {
    goto LABEL_57;
  }

  v15 = *(a1 + 28);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v10 + 28) = v15;
  *(v10 + 29) = 0;
  *(v10 + 31) = 0;
  *(v10 + 32) = v13;
  v16 = 16 * v7;
  v17 = (*(a2 + 24))(v16);
  if (!v17)
  {
    if (*(a2 + 40))
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      *__str = 0u;
      v66 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v16);
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_54:
      sub_23672EEB0();
    }

LABEL_55:
    _SparseTrap();
  }

  v18 = v17;
  v19 = v14 + v8;
  if ((*(a1 + 24) & 2) != 0)
  {
    if (v12 >= v19)
    {
      v21 = a1[1];
      v63 = *a1;
      v64 = v21;
      sub_2367861D0(&v63, 0, v14, v17, 0, __str);
      goto LABEL_15;
    }

LABEL_57:
    __break(1u);
  }

  if (v12 < v19)
  {
    goto LABEL_57;
  }

  v20 = a1[1];
  v63 = *a1;
  v64 = v20;
  sub_236785FB0(&v63, 0, v14, v17, 0, __str);
LABEL_15:
  v22 = v66;
  *v11 = *__str;
  *(v11 + 16) = v22;
  if (v61 >= 1)
  {
    v23 = 0;
    v24 = *(v11 + 8);
    v25 = *v24;
    v26 = 4 * v5 * v5;
    v27 = 4 * v5;
    v28 = 4 * v5 + 4;
    do
    {
      v29 = v23 + 1;
      v30 = v24[v23 + 1];
      if (v25 < v30)
      {
        v31 = *(v11 + 16);
        v32 = *(a1 + 4);
        v33 = *(v11 + 32) + v26 * v25;
        do
        {
          v34 = *(v18 + 8 * v25);
          if (v34 >= 0)
          {
            v35 = *(v18 + 8 * v25);
          }

          else
          {
            v35 = -v34;
          }

          if (v23 == *(v31 + 4 * v25))
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              if (v5)
              {
                v53 = 0;
                if (((v34 & 0x4000000000000000) != 0) ^ __OFSUB__(v34, -v34) | (v34 == -v34))
                {
                  v34 = -v34;
                }

                v54 = v32 + v26 * (v34 - 1);
                v55 = v33;
                do
                {
                  v56 = 0;
                  v57 = 0;
                  do
                  {
                    v58 = *(v54 + 4 * v56);
                    *(v55 + 4 * v56) = v58;
                    *(v55 + v57) = v58;
                    v57 += v27;
                    ++v56;
                  }

                  while (v53 + v56 < v5);
                  ++v53;
                  v55 += v28;
                  v54 += v28;
                }

                while (v53 != v5);
              }
            }

            else if (v5)
            {
              v36 = 0;
              if (((v34 & 0x4000000000000000) != 0) ^ __OFSUB__(v34, -v34) | (v34 == -v34))
              {
                v34 = -v34;
              }

              v37 = v32 + v26 * (v34 - 1);
              v38 = v33;
              v39 = v33;
              v40 = 1;
              do
              {
                v41 = 0;
                v42 = v39;
                do
                {
                  v43 = *(v37 + 4 * v41);
                  *v42 = v43;
                  *(v38 + 4 * v41++) = v43;
                  v42 = (v42 + v27);
                }

                while (v40 != v41);
                ++v36;
                ++v40;
                ++v39;
                v38 += v27;
                v37 += v27;
              }

              while (v36 != v5);
            }
          }

          else if (v5)
          {
            v44 = 0;
            v45 = 0;
            v46 = v32 + 4 * (v35 - 1) * v6;
            v47 = v33;
            do
            {
              v48 = v5;
              v49 = v45;
              v50 = v44;
              v51 = v47;
              do
              {
                if (v34 >= 0)
                {
                  v52 = v50;
                }

                else
                {
                  v52 = v49;
                }

                *v51++ = *(v46 + 4 * v52);
                ++v50;
                v49 += v5;
                --v48;
              }

              while (v48);
              ++v45;
              v47 = (v47 + v27);
              v44 += v5;
            }

            while (v45 != v5);
          }

          ++v25;
          v33 += v26;
        }

        while (v25 != v30);
      }

      v25 = v30;
      ++v23;
    }

    while (v29 != v61);
  }

  (*(v62 + 32))(v18);
LABEL_56:
  v59 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_236766F0C(int a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *(a2 + 28);
  v13 = ilaenv_NEWLAPACK();
  if (a1 == 40)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = a5 + a6;
  v17 = *(a3 + 88);
  v18 = a5 + 8 * v17;
  v19 = (v18 + 4 * *(a3 + 184) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (a5 + a6 < v19 || (v14 = (v19 + 4 * v11 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v16 < v14) || (v121 = 4 * v15 * *(a3 + 176), v127 = ((v14 + v121 + 7) & 0xFFFFFFFFFFFFFFF8), v16 < v127))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 40)
  {
    if (v16 >= (&v127[4 * *(a3 + 168) + 7] & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v127 = 0;
LABEL_11:
  if (v17 < 1)
  {
    return 0;
  }

  v119 = v14;
  v20 = 0;
  v21 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v129 = a5;
  v120 = a1;
  while (1)
  {
    if (a1 == 40)
    {
      v127 = *(*(a4 + 40) + 8 * v20);
    }

    v23 = *(a3 + 96);
    v22 = *(a3 + 104);
    v24 = *(v22 + 8 * (v20 + 1));
    v25 = *(v22 + 8 * v20);
    v26 = *(a3 + 120);
    v27 = *(v26 + 8 * (v20 + 1));
    v28 = *(v26 + 8 * v20);
    v128 = v20 + 1;
    v123 = *(v23 + 4 * v20);
    v124 = *(v23 + 4 * (v20 + 1));
    v29 = *(a2 + 28);
    v30 = *a2;
    if (v24 > v25)
    {
      v31 = 0;
      v32 = *(a3 + 112) + 4 * v25;
      do
      {
        *(v19 + 4 * *(v32 + 4 * v31)) = v31;
        ++v31;
      }

      while (v24 - v25 != v31);
    }

    v33 = v24 - v25;
    v34 = v33;
    v125 = v27 - v28;
    v126 = v33;
    bzero(v127, (v27 - v28) * 4 * v33);
    v35 = *(a3 + 120);
    v36 = *(v35 + 8 * v20);
    v37 = *(v35 + 8 * v128);
    if (v36 < v37)
    {
      v38 = *(a3 + 128);
      v39 = *(a3 + 136);
      if (v29 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v29;
      }

      v41 = 4 * (v29 * v29);
      v42 = v127;
      do
      {
        v43 = *(v38 + 8 * v36);
        v44 = v43 / v39;
        v45 = v43 % v39;
        if ((v43 / v39))
        {
          v46 = (v44 << 32) - 0x100000000;
          v47 = *(a3 + 104);
          v48 = *(v47 + 8 * v44);
          v49 = v46 >> 29;
          v50 = *(v47 + (v46 >> 29));
          v51 = *(*(a3 + 96) + 4 * v44) - *(*(a3 + 96) + (v46 >> 30));
          v52 = v50 + v45 + v51;
          if (v52 < v48)
          {
            v53 = *(a3 + 112);
            v54 = (*(v129 + v49) + (4 * (v48 - v50) - 4 * v51 + 4) * v45);
            do
            {
              v55 = *v54++;
              *&v42[4 * *(v19 + 4 * *(v53 + 4 * v52++))] = v55;
            }

            while (v52 < v48);
          }
        }

        else
        {
          v56 = v45 / v29;
          v57 = (*(a2 + 1) + 8 * (v45 / v29));
          v58 = *v57;
          v59 = v57[1];
          if ((a2[6] & 0xC) == 4)
          {
            if (v58 < v59)
            {
              v60 = *(a2 + 2);
              v61 = (v56 * v29);
              v62 = v41 * v58;
              do
              {
                v63 = *(v60 + 4 * v58);
                if ((v63 & 0x80000000) == 0 && v63 < v30)
                {
                  v64 = a2[6];
                  v65 = v64 & 2;
                  if ((v56 <= v63 || v65 == 0) && (v56 >= v63 || v65 != 0))
                  {
                    v68 = *(a2 + 4);
                    v69 = v45 % v29;
                    v70 = v45 % v29 * v29;
                    v71 = *(a3 + 200);
                    if (v56 == v63)
                    {
                      if (v71)
                      {
                        v72 = (v71 + v61);
                        v73 = (v19 + 4 * v61);
                        v74 = v40;
                        v75 = v68 + 4 * v70;
                        do
                        {
                          v76 = *v72++;
                          if ((v76 & 1) == 0)
                          {
                            *&v42[4 * *v73] = *(v75 + v62);
                          }

                          ++v73;
                          v75 += 4;
                          --v74;
                        }

                        while (v74);
                      }

                      else if ((v64 & 2) != 0)
                      {
                        v83 = v69;
                        v84 = v68 + 4 * v70 + 4 * v69;
                        do
                        {
                          *&v42[4 * *(v19 + 4 * v61 + 4 * v83++)] = *(v84 + v62);
                          v84 += 4;
                        }

                        while (v83 < v29);
                      }

                      else if ((v69 & 0x80000000) == 0)
                      {
                        v88 = (v69 + 1);
                        v89 = v68 + 4 * v70;
                        v90 = (v19 + 4 * v61);
                        do
                        {
                          v91 = *v90++;
                          *&v42[4 * v91] = *(v89 + v62);
                          v89 += 4;
                          --v88;
                        }

                        while (v88);
                      }
                    }

                    else
                    {
                      v77 = (v63 * v29);
                      v78 = (v19 + 4 * v77);
                      if (v71)
                      {
                        v79 = (v71 + v77);
                        v80 = (v68 + v62 + 4 * v70);
                        v81 = v40;
                        do
                        {
                          v82 = *v79++;
                          if ((v82 & 1) == 0)
                          {
                            *&v42[4 * *v78] = *v80;
                          }

                          ++v78;
                          ++v80;
                          --v81;
                        }

                        while (v81);
                      }

                      else
                      {
                        v85 = v68 + 4 * v70;
                        v86 = v40;
                        do
                        {
                          v87 = *v78++;
                          *&v42[4 * v87] = *(v85 + v62);
                          v85 += 4;
                          --v86;
                        }

                        while (v86);
                      }
                    }
                  }
                }

                ++v58;
                v62 += v41;
              }

              while (v58 != v59);
            }
          }

          else if (v58 < v59)
          {
            v92 = *(a2 + 2);
            v93 = v41 * v58 + 4 * v29 * (v45 % v29);
            do
            {
              v94 = *(v92 + 4 * v58);
              if ((v94 & 0x80000000) == 0 && v94 < v30)
              {
                v95 = *(a2 + 4);
                v96 = *(a3 + 200);
                v97 = (v94 * v29);
                v98 = (v19 + 4 * v97);
                if (v96)
                {
                  v99 = (v96 + v97);
                  v100 = (v95 + v93);
                  v101 = v40;
                  do
                  {
                    v102 = *v99++;
                    if ((v102 & 1) == 0)
                    {
                      *&v42[4 * *v98] = *v100;
                    }

                    ++v98;
                    ++v100;
                    --v101;
                  }

                  while (v101);
                }

                else
                {
                  v103 = v40;
                  do
                  {
                    v104 = *v98++;
                    *&v42[4 * v104] = *(v95 + v93);
                    v95 += 4;
                    --v103;
                  }

                  while (v103);
                }
              }

              ++v58;
              v93 += v41;
            }

            while (v58 != v59);
          }
        }

        v42 += 4 * v34;
        ++v36;
      }

      while (v36 != v37);
    }

    v105 = *(a3 + 152);
    v106 = *(v105 + 4 * v128);
    if (v106 > *(v105 + 4 * v20))
    {
      do
      {
        v107 = v106 - 1;
        v108 = *(*(a3 + 160) + 4 * v106 - 4);
        v109 = *(*(a3 + 96) + 4 * (v108 + 1)) - *(*(a3 + 96) + 4 * v108);
        v110 = *(*(a3 + 104) + 8 * (v108 + 1)) - *(*(a3 + 104) + 8 * v108);
        v111 = *(*(a3 + 120) + 8 * (v108 + 1)) - *(*(a3 + 120) + 8 * v108);
        if (v110 < v111)
        {
          v111 = *(*(a3 + 104) + 8 * (v108 + 1)) - *(*(a3 + 104) + 8 * v108);
        }

        *(v129 + 8 * v108) = 0;
        v21 += 4 * (v111 - v109) * (v109 - v110);
        v106 = v107;
      }

      while (v107 > *(*(a3 + 152) + 4 * v20));
    }

    v112 = v124 - v123;
    a1 = v120;
    if (v126 <= v124 - v123)
    {
      v114 = v21;
      v21 = 0;
    }

    else
    {
      v113 = v126 >= v125 ? v125 : v126;
      *(v129 + 8 * v20) = v21;
      v114 = v21 + 4 * (v113 - v112) * (v126 - (v124 - v123));
    }

    v115 = *(*(a3 + 104) + 8 * v20);
    v116 = *(a3 + 144) + 4 * v115;
    if (v120 == 40 ? sub_2366F33E8(v125, v126, v112, v116, v127, v126, 0, v34, *(a4 + 56) + 4 * v115, v21, v119, v121) : sub_2366F33E8(v125, v126, v112, v116, v127, v126, *(*(a4 + 40) + 8 * v20), v34, 0, v21, v119, v121))
    {
      break;
    }

    ++v20;
    v21 = v114;
    if (v128 >= *(a3 + 88))
    {
      return 0;
    }
  }

  return 4294967294;
}

SparseMatrix_Double *__cdecl _SparseConvertFromOpaque_Double(SparseMatrix_Double *__return_ptr retstr, sparse_matrix_double matrix)
{
  if (*(matrix + 8) && sparse_commit(matrix))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712E9C();
    }

    goto LABEL_73;
  }

  v4 = *(matrix + 7);
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236713044();
    }

LABEL_73:
    _SparseTrap();
  }

  v5 = *v4;
  if (*v4 > 1)
  {
    if (v5 != 4)
    {
      if (v5 == 2)
      {
        v20 = *(matrix + 1);
        if (!(v20 ^ v20 | (v20 >> 63)))
        {
          v21 = *(matrix + 2);
          if (!(v21 ^ v21 | (v21 >> 63)))
          {
            v22 = *(*(v4 + 24) + 8 * v21);
            v23 = (v21 << 32) + 0x100000000;
            result = malloc_type_malloc(4 * v22 + (v23 >> 29) + 8 * v22, 0x100004000313F17uLL);
            v11 = (&result->structure.rowCount + (v23 >> 29));
            v12 = &v11[v22];
            if ((v21 & 0x80000000) == 0)
            {
              v24 = 0;
              v25 = *(matrix + 7);
              do
              {
                *(&result->structure.rowCount + v24) = *(*(v25 + 24) + 8 * v24);
                ++v24;
              }

              while (v21 + 1 != v24);
            }

            if (v22 >= 1)
            {
              v26 = 0;
              v27 = *(matrix + 7);
              v28 = (&result->structure.rowCount + (v23 >> 29));
              do
              {
                v12[v26] = *(*(v27 + 16) + 8 * v26);
                *v28++ = *(*(v27 + 8) + 8 * v26++);
              }

              while (v22 != v26);
            }

            v29 = *matrix - 1;
            if (v29 >= 8)
            {
              v19 = 0x8000;
            }

            else
            {
              v19 = word_23681FC10[v29];
            }

            retstr->structure.rowCount = v20;
            retstr->structure.columnCount = v21;
            goto LABEL_78;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

LABEL_72:
          sub_236712F54();
          goto LABEL_73;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

LABEL_64:
        sub_236712EE4();
        goto LABEL_73;
      }

      goto LABEL_33;
    }

    v41 = *(matrix + 1);
    if (v41 ^ v41 | (v41 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v42 = *(matrix + 2);
    if (v42 ^ v42 | (v42 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v43 = ((v42 << 32) + 0x100000000) >> 29;
    v44 = malloc_type_malloc(v43, 0x100004000313F17uLL);
    v45 = v44;
    if (v42 < 1)
    {
      v48 = 0;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      do
      {
        *(v44 + v47) = v48;
        if (v41 >= 1)
        {
          v49 = (*(*(matrix + 7) + 8) + v46);
          v50 = v41;
          do
          {
            v51 = *v49++;
            if (v51 != 0.0)
            {
              ++v48;
            }

            --v50;
          }

          while (v50);
        }

        ++v47;
        v46 += 8 * v41;
      }

      while (v47 != (v42 & 0x7FFFFFFF));
    }

    *(v44 + v42) = v48;
    v52 = malloc_type_malloc(v43 + 4 * v48 + 8 * v48, 0x100004000313F17uLL);
    memcpy(v52, v45, v43);
    free(v45);
    v11 = &v52[v43];
    v12 = &v52[8 * v48 + v43];
    if (v42 >= 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      do
      {
        if (v41 >= 1)
        {
          v63 = 0;
          v64 = *(matrix + 7);
          result = v41;
          v65 = v60;
          do
          {
            if (*(*(v64 + 8) + v65) != 0.0)
            {
              v12[v62] = v63;
              v11[v62++] = *(*(v64 + 8) + v65);
            }

            ++v63;
            v65 += 8;
            result = (result - 1);
          }

          while (result);
        }

        ++v61;
        v60 += 8 * v41;
      }

      while (v61 != (v42 & 0x7FFFFFFF));
    }

    v66 = *matrix - 1;
    if (v66 >= 8)
    {
      v19 = 0x8000;
    }

    else
    {
      v19 = word_23681FC10[v66];
    }

    retstr->structure.rowCount = v41;
    retstr->structure.columnCount = v42;
LABEL_105:
    retstr->structure.columnStarts = v52;
    goto LABEL_106;
  }

  if (v5 == -4)
  {
    v30 = *(matrix + 1);
    if (v30 ^ v30 | (v30 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v31 = *(matrix + 2);
    if (v31 ^ v31 | (v31 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v32 = ((v30 << 32) + 0x100000000) >> 29;
    v33 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v34 = v33;
    if (v30 < 1)
    {
      v37 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        *(v33 + v36) = v37;
        if (v31 >= 1)
        {
          v38 = (*(*(matrix + 7) + 8) + v35);
          v39 = v31;
          do
          {
            v40 = *v38++;
            if (v40 != 0.0)
            {
              ++v37;
            }

            --v39;
          }

          while (v39);
        }

        ++v36;
        v35 += 8 * v31;
      }

      while (v36 != (v30 & 0x7FFFFFFF));
    }

    *(v33 + v30) = v37;
    v52 = malloc_type_malloc(v32 + 4 * v37 + 8 * v37, 0x100004000313F17uLL);
    memcpy(v52, v34, v32);
    free(v34);
    v11 = &v52[v32];
    v12 = &v52[8 * v37 + v32];
    if (v30 >= 1)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      do
      {
        if (v31 >= 1)
        {
          v56 = 0;
          v57 = *(matrix + 7);
          result = v31;
          v58 = v53;
          do
          {
            if (*(*(v57 + 8) + v58) != 0.0)
            {
              v12[v55] = v56;
              v11[v55++] = *(*(v57 + 8) + v58);
            }

            ++v56;
            v58 += 8;
            result = (result - 1);
          }

          while (result);
        }

        ++v54;
        v53 += 8 * v31;
      }

      while (v54 != (v30 & 0x7FFFFFFF));
    }

    v59 = *matrix - 1;
    if (v59 >= 8)
    {
      v19 = -32767;
    }

    else
    {
      v19 = word_23681FC20[v59];
    }

    retstr->structure.rowCount = v31;
    retstr->structure.columnCount = v30;
    goto LABEL_105;
  }

  if (v5 != -2)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712FC4(v5);
    }

    goto LABEL_73;
  }

  v6 = *(matrix + 1);
  if (v6 ^ v6 | (v6 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_64;
  }

  v7 = *(matrix + 2);
  if (v7 ^ v7 | (v7 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v8 = *(*(v4 + 24) + 8 * v6);
  v9 = (v6 << 32) + 0x100000000;
  result = malloc_type_malloc(4 * v8 + (v9 >> 29) + 8 * v8, 0x100004000313F17uLL);
  v11 = (&result->structure.rowCount + (v9 >> 29));
  v12 = &v11[v8];
  if ((v6 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = *(matrix + 7);
    do
    {
      *(&result->structure.rowCount + v13) = *(*(v14 + 24) + 8 * v13);
      ++v13;
    }

    while (v6 + 1 != v13);
  }

  if (v8 >= 1)
  {
    v15 = 0;
    v16 = *(matrix + 7);
    v17 = (&result->structure.rowCount + (v9 >> 29));
    do
    {
      v12[v15] = *(*(v16 + 16) + 8 * v15);
      *v17++ = *(*(v16 + 8) + 8 * v15++);
    }

    while (v8 != v15);
  }

  v18 = *matrix - 1;
  if (v18 >= 8)
  {
    v19 = -32767;
  }

  else
  {
    v19 = word_23681FC20[v18];
  }

  retstr->structure.rowCount = v7;
  retstr->structure.columnCount = v6;
LABEL_78:
  retstr->structure.columnStarts = &result->structure.rowCount;
LABEL_106:
  retstr->structure.rowIndices = v12;
  *&retstr->structure.attributes = 0;
  retstr->structure.attributes = v19;
  *(&retstr->structure.blockSize + 2) = 1;
  retstr->data = v11;
  return result;
}

uint64_t sub_236767CA0(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, int *a5, int *a6, uint64_t a7, _DWORD *a8, _DWORD *a9, uint64_t a10)
{
  v10 = a10;
  v11 = a10 + 20 * result + 44;
  v12 = (a10 + 4 * result + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v11 < v12 || (v13 = result, v14 = 4 * result, v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || (v16 = (v15 + 4 * result + 11) & 0xFFFFFFFFFFFFFFF8, v11 < v16) || (v17 = (v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v17) || v11 < ((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    *(v15 + 4 * result) = -1;
    v18 = (result - 1);
    if (result < 1)
    {
      result = 0;
      *a8 = 0;
    }

    else
    {
      v22 = (result - 1);
      do
      {
        if (a3)
        {
          v23 = *(a3 + 4 * a5[v22]);
        }

        else
        {
          v23 = 1;
        }

        *(v17 + 4 * v22) = v23;
        *(a10 + 4 * v22) = v22;
        *(v12 + 4 * v22) = -1;
        v24 = a6[v22];
        if (v24 == -1)
        {
          v24 = result;
        }

        *(v16 + 4 * v22) = *(v15 + 4 * v24);
        *(v15 + 4 * v24) = v22;
        *(v15 + 4 * v22) = -1;
        v25 = v22-- <= 0;
      }

      while (!v25);
      v58 = v15;
      v26 = (result - 1);
      v59 = (v15 + 4 * result + 11) & 0xFFFFFFFFFFFFFFF8;
      if (a3)
      {
        v28 = v17;
        v29 = a10;
        v30 = a5;
        v31 = result - 1;
        v32 = result;
        do
        {
          if (!*v28)
          {
            *v28 = -1;
            *v29 = -1;
            *(a4 + 4 * *v30) = v31--;
          }

          ++v30;
          ++v29;
          ++v28;
          --v32;
        }

        while (v32);
        v26 = (result - 1);
      }

      do
      {
        if (*(v17 + 4 * v26) != -1)
        {
          v33 = *(v58 + 4 * v26);
          while (v33 != -1)
          {
            if (*(a7 + 4 * v33) - *(v17 + 4 * v33) == *(a7 + 4 * v26))
            {
              v33 = sub_236768070(v33, v26, a10, v12, v58, v16, a7, v17);
              v16 = v59;
            }

            else
            {
              v33 = *(v16 + 4 * v33);
            }
          }
        }

        v25 = v26-- <= 0;
      }

      while (!v25);
      v53 = v13;
      v55 = a4;
      v56 = a5;
      if ((*a9 & 0x80000000) == 0)
      {
        if (a3)
        {
          v34 = 1;
        }

        else
        {
          v34 = a2;
        }

        do
        {
          if (*(v17 + 4 * v18) != -1)
          {
            v35 = *(v58 + 4 * v18);
            while (v35 != -1)
            {
              v36 = v12;
              v37 = v10;
              v38 = v35;
              v39 = *(v17 + 4 * v35);
              v40 = sub_236768138(v34, *(a7 + 4 * v35), v39);
              v41 = *(a7 + 4 * v18);
              v42 = *(v17 + 4 * v18);
              v43 = v40 + sub_236768138(v34, v41, v42);
              if (sub_236768138(v34, v41 + v39, v42 + v39) >= v43)
              {
                v35 = *(v59 + 4 * v38);
                v10 = v37;
                v12 = v36;
              }

              else
              {
                v10 = v37;
                v12 = v36;
                v35 = sub_236768070(v38, v18, v37, v36, v58, v59, a7, v17);
              }
            }
          }

          v25 = v18-- <= 0;
        }

        while (!v25);
      }

      v44 = 0;
      v45 = 0;
      result = 0;
      v46 = a6;
      do
      {
        if (*(v10 + 4 * v44) != -1)
        {
          a8[result] = v45;
          v47 = *(v10 + 4 * v44);
          *(a7 + 4 * result) = *(a7 + 4 * v47);
          a6[result] = a6[v47];
          for (i = *(v10 + 4 * v44); i != -1; i = *(v12 + 4 * i))
          {
            *(v10 + 4 * i) = result;
            *(v55 + 4 * v56[i]) = v45++;
          }

          result = (result + 1);
        }

        ++v44;
      }

      while (v44 != v53);
      v49 = 0;
      a8[result] = v45;
      do
      {
        v56[*(v55 + 4 * v49)] = v49;
        ++v49;
      }

      while (v53 != v49);
      if (result >= 1)
      {
        v50 = result;
        do
        {
          v51 = *v46;
          if (v51 != -1)
          {
            *v46 = *(v10 + 4 * v51);
          }

          ++v46;
          --v50;
        }

        while (v50);
      }
    }
  }

  return result;
}

uint64_t sub_236768070(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 4 * a2);
  if (v8 == -1)
  {
    v10 = -1;
  }

  else
  {
    do
    {
      v9 = v8;
      v8 = *(a4 + 4 * v8);
    }

    while (v8 != -1);
    v10 = v9;
  }

  *(a4 + 4 * v10) = *(a3 + 4 * a1);
  *(a3 + 4 * a1) = -1;
  v11 = *(a6 + 4 * a1);
  v12 = v11;
  if (v11 == -1)
  {
    v12 = *(a5 + 4 * a1);
  }

  v13 = (a5 + 4 * a2);
  v14 = *v13;
  if (*v13 == a1)
  {
    *v13 = v11;
    v14 = v11;
  }

  while (v14 != -1)
  {
    v13 = (a6 + 4 * v14);
    v14 = *v13;
    if (*v13 == a1)
    {
      v14 = *(a6 + 4 * a1);
      *v13 = v14;
    }
  }

  *v13 = *(a5 + 4 * a1);
  *(a5 + 4 * a1) = -1;
  *(a7 + 4 * a2) += *(a8 + 4 * a1);
  *(a8 + 4 * a2) += *(a8 + 4 * a1);
  *(a8 + 4 * a1) = -1;
  return v12;
}

float sub_236768138(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 * a3;
  v4 = ((a2 - a3) * a1);
  v5 = ((v4 * v4) * v3) * 0.5 + ((v3 * v3) * v3) / 3.0 + ((v3 * v4) * (v3 + 1)) * 0.5;
  v6 = log2(v3) / 10.0 + 0.1;
  return ((v4 * 4.0) * v4) + ((v5 / fminf(v6, 1.0)) + 256.0);
}

uint64_t sub_236768200(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int *a5, int *a6, uint64_t a7, _DWORD *a8, _DWORD *a9, _DWORD *a10)
{
  v10 = a10;
  v11 = *result;
  v12 = *(result + 4);
  v13 = &a10[6 * v12 + 15 + v11];
  v14 = (&a10[v12 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < v14)
  {
    goto LABEL_92;
  }

  v15 = 4 * v12;
  v85 = (&a10[v12 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < v16 || (v17 = (v16 + 4 * v12 + 11) & 0xFFFFFFFFFFFFFFF8, v13 < v17) || (v18 = (v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v18) || (v19 = (v18 + v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v19) || (v20 = ((v18 + v15 + 7) & 0xFFFFFFFFFFFFFFF8), v21 = ((v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8), v13 < v21) || v13 < ((&v21[v11 + 1] + 3) & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_92:
    __break(1u);
  }

  else
  {
    v25 = result;
    v80 = *(result + 28);
    *(v16 + 4 * v12) = -1;
    if (v12 >= 1)
    {
      v26 = (v12 - 1);
      do
      {
        if (a3)
        {
          v27 = *(a3 + 4 * a5[v26]);
        }

        else
        {
          v27 = 1;
        }

        *(v18 + 4 * v26) = v27;
        a10[v26] = v26;
        *(v85 + 4 * v26) = -1;
        v28 = a6[v26];
        if (v28 == -1)
        {
          v28 = v12;
        }

        *(v17 + 4 * v26) = *(v16 + 4 * v28);
        *(v16 + 4 * v28) = v26;
        *(v16 + 4 * v26) = -1;
        v29 = v26-- <= 0;
      }

      while (!v29);
    }

    v89 = v16;
    v92 = (v16 + 4 * v12 + 11) & 0xFFFFFFFFFFFFFFF8;
    v90 = (v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v11 >= 1)
    {
      memset(v21, 255, 4 * v11);
      v15 = 4 * v12;
      v18 = v90;
    }

    if (v12 >= 1)
    {
      v30 = (v12 - 1);
      do
      {
        if (*(v18 + 4 * v30))
        {
          v31 = (*(v25 + 8) + 8 * a5[v30]);
          v33 = *v31;
          v32 = v31[1];
          v29 = v32 <= v33;
          v34 = v32 - v33;
          if (!v29)
          {
            v35 = (*(v25 + 16) + 4 * v33);
            do
            {
              v37 = *v35++;
              v36 = v37;
              if ((v37 & 0x80000000) == 0 && v36 < *v25)
              {
                v21[v36] = v30;
              }

              --v34;
            }

            while (v34);
          }
        }

        v29 = v30-- <= 0;
      }

      while (!v29);
    }

    v38 = v15;
    bzero(v20, v15);
    v39 = (&a10[v12 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
    if (v11 >= 1)
    {
      v40 = a2;
      do
      {
        v42 = *v21++;
        v41 = v42;
        if (v42 != -1)
        {
          if (a2)
          {
            v43 = *v40;
          }

          else
          {
            v43 = 1;
          }

          *&v20[4 * v41] += v43;
        }

        ++v40;
        --v11;
      }

      while (v11);
    }

    if (v12 < 1)
    {
      result = 0;
      *a8 = 0;
    }

    else
    {
      v44 = 0;
      v45 = v92;
      v46 = v90;
      do
      {
        v47 = a6[v44 / 4];
        if (v47 != -1)
        {
          v48 = *&v20[v44];
          if (v48 >= *(a7 + v44))
          {
            v48 = *(a7 + v44);
          }

          *&v20[4 * v47] += v48 - *(v90 + v44);
        }

        v44 += 4;
      }

      while (v38 != v44);
      if (a3)
      {
        v49 = v12;
        v50 = v90;
        v51 = a10;
        v52 = a5;
        v53 = v12 - 1;
        do
        {
          if (!*v50)
          {
            *v50 = -1;
            *v51 = -1;
            *(a4 + 4 * *v52) = v53--;
          }

          ++v52;
          ++v51;
          ++v50;
          --v49;
        }

        while (v49);
      }

      v54 = (v12 - 1);
      do
      {
        if (*(v46 + 4 * v54) != -1)
        {
          v55 = *(v89 + 4 * v54);
          while (v55 != -1)
          {
            if (*(a7 + 4 * v55) - *(v46 + 4 * v55) == *(a7 + 4 * v54))
            {
              v55 = sub_2367687B4(v55, v54, a10, v85, v89, v92, v20, a7, v46);
              v46 = v90;
              v45 = v92;
            }

            else
            {
              v55 = *(v45 + 4 * v55);
            }
          }
        }

        v29 = v54-- <= 0;
      }

      while (!v29);
      v78 = v12;
      v79 = a5;
      v82 = a6;
      v56 = (v12 - 1);
      if ((*a9 & 0x80000000) == 0)
      {
        v57 = v20;
        v58 = v80;
        if (a3)
        {
          v58 = 1;
        }

        v88 = v58;
        v86 = a7;
        do
        {
          if (*(v46 + 4 * v56) != -1)
          {
            v59 = *(v89 + 4 * v56);
            while (v59 != -1)
            {
              v91 = v59;
              v60 = *(v57 + 4 * v59);
              v61 = *(a7 + 4 * v59);
              if (v60 >= v61)
              {
                v62 = *(a7 + 4 * v59);
              }

              else
              {
                v62 = *(v57 + 4 * v59);
              }

              v63 = *(v90 + 4 * v59);
              v64 = sub_2367688A8(v88, v60, v61, v63);
              v65 = *(v57 + 4 * v56);
              v66 = *(a7 + 4 * v56);
              v67 = v56;
              v68 = *(v90 + 4 * v56);
              v69 = v64 + sub_2367688A8(v88, v65, v66, v68);
              if (sub_2367688A8(v88, v60 - v62 + v63 + v65, v66 + v63, v68 + v63) >= v69)
              {
                v59 = *(v92 + 4 * v91);
                v10 = a10;
                a7 = v86;
              }

              else
              {
                v10 = a10;
                a7 = v86;
                v59 = sub_2367687B4(v91, v67, a10, v85, v89, v92, v57, v86, v90);
              }

              v56 = v67;
            }
          }

          v29 = v56-- <= 0;
          v39 = v85;
          v46 = v90;
        }

        while (!v29);
      }

      v70 = 0;
      v71 = 0;
      result = 0;
      v72 = v82;
      do
      {
        if (*(v10 + 4 * v70) != -1)
        {
          a8[result] = v71;
          v73 = *(v10 + 4 * v70);
          *(a7 + 4 * result) = *(a7 + 4 * v73);
          v82[result] = v82[v73];
          for (i = *(v10 + 4 * v70); i != -1; i = *(v39 + 4 * i))
          {
            *(v10 + 4 * i) = result;
            *(a4 + 4 * v79[i]) = v71++;
          }

          result = (result + 1);
        }

        ++v70;
      }

      while (v70 != v78);
      v75 = 0;
      a8[result] = v71;
      do
      {
        v79[*(a4 + 4 * v75)] = v75;
        ++v75;
      }

      while (v78 != v75);
      if (result >= 1)
      {
        v76 = result;
        do
        {
          v77 = *v72;
          if (v77 != -1)
          {
            *v72 = *(v10 + 4 * v77);
          }

          ++v72;
          --v76;
        }

        while (v76);
      }
    }
  }

  return result;
}

uint64_t sub_2367687B4(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a3 + 4 * a2);
  if (v9 == -1)
  {
    v11 = -1;
  }

  else
  {
    do
    {
      v10 = v9;
      v9 = *(a4 + 4 * v9);
    }

    while (v9 != -1);
    v11 = v10;
  }

  *(a4 + 4 * v11) = *(a3 + 4 * a1);
  *(a3 + 4 * a1) = -1;
  v12 = *(a6 + 4 * a1);
  v13 = v12;
  if (v12 == -1)
  {
    v13 = *(a5 + 4 * a1);
  }

  v14 = (a5 + 4 * a2);
  v15 = *v14;
  if (*v14 == a1)
  {
    *v14 = v12;
    v15 = v12;
  }

  while (v15 != -1)
  {
    v14 = (a6 + 4 * v15);
    v15 = *v14;
    if (*v14 == a1)
    {
      v15 = *(a6 + 4 * a1);
      *v14 = v15;
    }
  }

  *v14 = *(a5 + 4 * a1);
  *(a5 + 4 * a1) = -1;
  v16 = *(a7 + 4 * a1);
  v17 = *(a8 + 4 * a1);
  if (v16 < v17)
  {
    v17 = *(a7 + 4 * a1);
  }

  *(a7 + 4 * a2) += v16 - v17 + *(a9 + 4 * a1);
  *(a8 + 4 * a2) += *(a9 + 4 * a1);
  *(a9 + 4 * a2) += *(a9 + 4 * a1);
  *(a9 + 4 * a1) = -1;
  return v13;
}

float sub_2367688A8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 * a2;
  v5 = a1 * a3;
  if (v4 >= v5)
  {
    v6 = a1 * a3;
  }

  else
  {
    v6 = a1 * a2;
  }

  v7 = v6;
  v8 = a1 * a4;
  if (v4 <= v5)
  {
    v4 = a1 * a3;
  }

  v9 = v7 - v8;
  v10 = (v5 - v8);
  v11 = (((v4 + v4) * v7) * v7) + (((v7 + v7) * v7) * v7) / -3.0;
  v12 = log2(v5) / 10.0 + 0.1;
  return ((v9 * 4.0) * v10) + ((v11 / fminf(v12, 1.0)) + 256.0);
}

uint64_t sub_236768978(uint64_t result, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *__b)
{
  v15 = result;
  if (__b)
  {
    v16 = *result;
    if (v16 >= 1)
    {
      result = memset(__b, 255, 4 * v16);
    }
  }

  v17 = *(v15 + 4);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = a3 != 0;
    v20 = a2 != 0;
    if (__b)
    {
      v19 = 0;
    }

    else
    {
      v20 = 0;
    }

    do
    {
      *(a6 + 4 * v18) = -1;
      *(a7 + 4 * v18) = -1;
      v21 = *(a5 + 4 * v18);
      if (!a3 || *(a3 + 4 * v21))
      {
        v22 = (*(v15 + 8) + 8 * v21);
        v23 = *v22;
        v24 = v22[1];
        if (v23 < v24)
        {
          v25 = *(v15 + 16);
          do
          {
            v26 = *(v25 + 4 * v23);
            if ((v26 & 0x80000000) == 0 && v26 < *v15)
            {
              if (v20)
              {
                if (*(a2 + 4 * v26))
                {
                  v27 = &__b[4 * v26];
                  v28 = *v27;
                  goto LABEL_24;
                }
              }

              else if (!v19 || *(a3 + 4 * v26))
              {
                v27 = &__b[4 * v26];
                result = (__b ? __b : a4);
                v28 = *(result + 4 * v26);
                if (__b || (result = v28, v18 > v28))
                {
LABEL_24:
                  while (!__b || v28 != -1)
                  {
                    v29 = *(a7 + 4 * v28);
                    if (v18 == v29)
                    {
                      goto LABEL_29;
                    }

                    result = v28;
                    *(a7 + 4 * v28) = v18;
                    v28 = v29;
                    if (v29 == -1)
                    {
                      *(a6 + 4 * result) = v18;
                      *(a7 + 4 * result) = v18;
LABEL_29:
                      if (!__b)
                      {
                        goto LABEL_31;
                      }

                      break;
                    }
                  }

                  *v27 = v18;
                }
              }
            }

LABEL_31:
            ++v23;
          }

          while (v23 != v24);
        }
      }

      ++v18;
    }

    while (v18 != v17);
  }

  return result;
}

void _SparseConvertFromOpaque_Complex_Float(void *A@<X0>, uint64_t a2@<X8>)
{
  if (A[8] && sparse_commit(A))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712E9C();
    }

    goto LABEL_75;
  }

  v4 = A[7];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236713044();
    }

LABEL_75:
    _SparseTrap();
  }

  v5 = *v4;
  if (*v4 > 1)
  {
    if (v5 != 4)
    {
      if (v5 == 2)
      {
        v20 = A[1];
        if (!(v20 ^ v20 | (v20 >> 63)))
        {
          v21 = A[2];
          if (!(v21 ^ v21 | (v21 >> 63)))
          {
            v22 = *(*(v4 + 24) + 8 * v21);
            v23 = (v21 << 32) + 0x100000000;
            v10 = malloc_type_malloc(4 * v22 + (v23 >> 29) + 8 * v22, 0x100004000313F17uLL);
            v11 = v10 + (v23 >> 29);
            v12 = &v11[8 * v22];
            if ((v21 & 0x80000000) == 0)
            {
              v24 = 0;
              v25 = A[7];
              do
              {
                v10[v24] = *(*(v25 + 24) + 8 * v24);
                ++v24;
              }

              while (v21 + 1 != v24);
            }

            if (v22 >= 1)
            {
              v26 = 0;
              v27 = (v10 + (v23 >> 29));
              do
              {
                v28 = A[7];
                *(v12 + 4 * v26) = *(*(v28 + 16) + 8 * v26);
                *v27++ = *(*(v28 + 8) + 8 * v26++);
              }

              while (v22 != v26);
            }

            v29 = *A - 1;
            if (v29 >= 8)
            {
              v19 = 0x8000;
            }

            else
            {
              v19 = word_23681FC10[v29];
            }

            *a2 = v20;
            *(a2 + 4) = v21;
            goto LABEL_80;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

LABEL_74:
          sub_236712F54();
          goto LABEL_75;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_75;
        }

LABEL_66:
        sub_236712EE4();
        goto LABEL_75;
      }

      goto LABEL_33;
    }

    v42 = A[1];
    if (v42 ^ v42 | (v42 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_66;
    }

    v43 = A[2];
    if (v43 ^ v43 | (v43 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    v44 = ((v43 << 32) + 0x100000000) >> 29;
    v45 = malloc_type_malloc(v44, 0x100004000313F17uLL);
    v46 = v45;
    if (v43 < 1)
    {
      v48 = 0;
    }

    else
    {
      v47 = 0;
      v48 = 0;
      v49 = 4;
      do
      {
        *(v45 + v47) = v48;
        if (v42 >= 1)
        {
          v50 = (*(A[7] + 8) + v49);
          v51 = v42;
          do
          {
            v52 = *(v50 - 1) != 0.0;
            v53 = *v50 != 0.0 || *(v50 - 1) != 0.0;
            v48 += v53;
            v50 += 2;
            --v51;
          }

          while (v51);
        }

        ++v47;
        v49 += 8 * v42;
      }

      while (v47 != (v43 & 0x7FFFFFFF));
    }

    *(v45 + v43) = v48;
    v54 = malloc_type_malloc(v44 + 4 * v48 + 8 * v48, 0x100004000313F17uLL);
    memcpy(v54, v46, v44);
    free(v46);
    v11 = &v54[v44];
    v12 = &v54[8 * v48 + v44];
    if (v43 >= 1)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      do
      {
        if (v42 >= 1)
        {
          v67 = 0;
          v68 = v42;
          v69 = v64;
          do
          {
            v70 = A[7];
            v71 = (*(v70 + 8) + v69);
            if (*v71 != 0.0 || v71[1] != 0.0)
            {
              *(v12 + 4 * v66) = v67;
              *&v11[8 * v66++] = *(*(v70 + 8) + v69);
            }

            ++v67;
            v69 += 8;
            --v68;
          }

          while (v68);
        }

        ++v65;
        v64 += 8 * v42;
      }

      while (v65 != (v43 & 0x7FFFFFFF));
    }

    v72 = *A - 1;
    if (v72 >= 8)
    {
      v19 = 0x8000;
    }

    else
    {
      v19 = word_23681FC10[v72];
    }

    *a2 = v42;
    *(a2 + 4) = v43;
LABEL_109:
    *(a2 + 8) = v54;
    goto LABEL_110;
  }

  if (v5 == -4)
  {
    v30 = A[1];
    if (v30 ^ v30 | (v30 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_66;
    }

    v31 = A[2];
    if (v31 ^ v31 | (v31 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    v32 = ((v30 << 32) + 0x100000000) >> 29;
    v33 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v34 = v33;
    if (v30 < 1)
    {
      v36 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 4;
      do
      {
        *(v33 + v35) = v36;
        if (v31 >= 1)
        {
          v38 = (*(A[7] + 8) + v37);
          v39 = v31;
          do
          {
            v40 = *(v38 - 1) != 0.0;
            v41 = *v38 != 0.0 || *(v38 - 1) != 0.0;
            v36 += v41;
            v38 += 2;
            --v39;
          }

          while (v39);
        }

        ++v35;
        v37 += 8 * v31;
      }

      while (v35 != (v30 & 0x7FFFFFFF));
    }

    *(v33 + v30) = v36;
    v54 = malloc_type_malloc(v32 + 4 * v36 + 8 * v36, 0x100004000313F17uLL);
    memcpy(v54, v34, v32);
    free(v34);
    v11 = &v54[v32];
    v12 = &v54[8 * v36 + v32];
    if (v30 >= 1)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      do
      {
        if (v31 >= 1)
        {
          v58 = 0;
          v59 = v31;
          v60 = v55;
          do
          {
            v61 = A[7];
            v62 = (*(v61 + 8) + v60);
            if (*v62 != 0.0 || v62[1] != 0.0)
            {
              *(v12 + 4 * v57) = v58;
              *&v11[8 * v57++] = *(*(v61 + 8) + v60);
            }

            ++v58;
            v60 += 8;
            --v59;
          }

          while (v59);
        }

        ++v56;
        v55 += 8 * v31;
      }

      while (v56 != (v30 & 0x7FFFFFFF));
    }

    v63 = *A - 1;
    if (v63 >= 8)
    {
      v19 = -32767;
    }

    else
    {
      v19 = word_23681FC20[v63];
    }

    *a2 = v31;
    *(a2 + 4) = v30;
    goto LABEL_109;
  }

  if (v5 != -2)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712FC4(v5);
    }

    goto LABEL_75;
  }

  v6 = A[1];
  if (v6 ^ v6 | (v6 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    goto LABEL_66;
  }

  v7 = A[2];
  if (v7 ^ v7 | (v7 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v8 = *(*(v4 + 24) + 8 * v6);
  v9 = (v6 << 32) + 0x100000000;
  v10 = malloc_type_malloc(4 * v8 + (v9 >> 29) + 8 * v8, 0x100004000313F17uLL);
  v11 = v10 + (v9 >> 29);
  v12 = &v11[8 * v8];
  if ((v6 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = A[7];
    do
    {
      v10[v13] = *(*(v14 + 24) + 8 * v13);
      ++v13;
    }

    while (v6 + 1 != v13);
  }

  if (v8 >= 1)
  {
    v15 = 0;
    v16 = (v10 + (v9 >> 29));
    do
    {
      v17 = A[7];
      *(v12 + 4 * v15) = *(*(v17 + 16) + 8 * v15);
      *v16++ = *(*(v17 + 8) + 8 * v15++);
    }

    while (v8 != v15);
  }

  v18 = *A - 1;
  if (v18 >= 8)
  {
    v19 = -32767;
  }

  else
  {
    v19 = word_23681FC20[v18];
  }

  *a2 = v7;
  *(a2 + 4) = v6;
LABEL_80:
  *(a2 + 8) = v10;
LABEL_110:
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  *(a2 + 24) = v19;
  *(a2 + 28) = 1;
  *(a2 + 32) = v11;
}

SparseMatrix_Float *__cdecl _SparseConvertFromOpaque_Float(SparseMatrix_Float *__return_ptr retstr, sparse_matrix_float matrix)
{
  if (*(matrix + 8) && sparse_commit(matrix))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712E9C();
    }

    goto LABEL_73;
  }

  v4 = *(matrix + 7);
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236713044();
    }

LABEL_73:
    _SparseTrap();
  }

  v5 = *v4;
  if (*v4 > 1)
  {
    if (v5 != 4)
    {
      if (v5 == 2)
      {
        v20 = *(matrix + 1);
        if (!(v20 ^ v20 | (v20 >> 63)))
        {
          v21 = *(matrix + 2);
          if (!(v21 ^ v21 | (v21 >> 63)))
          {
            v22 = *(*(v4 + 24) + 8 * v21);
            v23 = (v21 << 32) + 0x100000000;
            v24 = 4 * v22 + (v23 >> 29);
            result = malloc_type_malloc(v24 + 4 * v22, 0x100004000313F17uLL);
            v12 = (&result->structure.rowCount + (v23 >> 29));
            if ((v21 & 0x80000000) == 0)
            {
              v25 = 0;
              v26 = *(matrix + 7);
              do
              {
                *(&result->structure.rowCount + v25) = *(*(v26 + 24) + 8 * v25);
                ++v25;
              }

              while (v21 + 1 != v25);
            }

            if (v22 >= 1)
            {
              v27 = 0;
              v28 = *(matrix + 7);
              do
              {
                LODWORD(v12[v22 + v27]) = *(*(v28 + 16) + 8 * v27);
                v12[v27] = *(*(v28 + 8) + 4 * v27);
                ++v27;
              }

              while (v22 != v27);
            }

            v17 = (&result->structure.rowCount + v24);
            v29 = *matrix - 1;
            if (v29 >= 8)
            {
              v19 = 0x8000;
            }

            else
            {
              v19 = word_23681FC10[v29];
            }

            retstr->structure.rowCount = v20;
            retstr->structure.columnCount = v21;
            goto LABEL_78;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

LABEL_72:
          sub_236712F54();
          goto LABEL_73;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

LABEL_64:
        sub_236712EE4();
        goto LABEL_73;
      }

      goto LABEL_33;
    }

    v41 = *(matrix + 1);
    if (v41 ^ v41 | (v41 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v42 = *(matrix + 2);
    if (v42 ^ v42 | (v42 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v43 = ((v42 << 32) + 0x100000000) >> 29;
    v44 = malloc_type_malloc(v43, 0x100004000313F17uLL);
    v45 = v44;
    if (v42 < 1)
    {
      v48 = 0;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      do
      {
        *(v44 + v47) = v48;
        if (v41 >= 1)
        {
          v49 = (*(*(matrix + 7) + 8) + v46);
          v50 = v41;
          do
          {
            v51 = *v49++;
            if (v51 != 0.0)
            {
              ++v48;
            }

            --v50;
          }

          while (v50);
        }

        ++v47;
        v46 += 4 * v41;
      }

      while (v47 != (v42 & 0x7FFFFFFF));
    }

    *(v44 + v42) = v48;
    v61 = v43 + 4 * v48;
    v53 = malloc_type_malloc(v61 + 4 * v48, 0x100004000313F17uLL);
    memcpy(v53, v45, v43);
    free(v45);
    v12 = &v53[v43];
    v17 = &v53[v61];
    if (v42 >= 1)
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      do
      {
        if (v41 >= 1)
        {
          v65 = 0;
          v66 = *(matrix + 7);
          result = v41;
          v67 = v62;
          do
          {
            if (*(*(v66 + 8) + v67) != 0.0)
            {
              v17[v64] = v65;
              v12[v64++] = *(*(v66 + 8) + v67);
            }

            ++v65;
            v67 += 4;
            result = (result - 1);
          }

          while (result);
        }

        ++v63;
        v62 += 4 * v41;
      }

      while (v63 != (v42 & 0x7FFFFFFF));
    }

    v68 = *matrix - 1;
    if (v68 >= 8)
    {
      v19 = 0x8000;
    }

    else
    {
      v19 = word_23681FC10[v68];
    }

    retstr->structure.rowCount = v41;
    retstr->structure.columnCount = v42;
LABEL_105:
    retstr->structure.columnStarts = v53;
    goto LABEL_106;
  }

  if (v5 == -4)
  {
    v30 = *(matrix + 1);
    if (v30 ^ v30 | (v30 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    v31 = *(matrix + 2);
    if (v31 ^ v31 | (v31 >> 63))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v32 = ((v30 << 32) + 0x100000000) >> 29;
    v33 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v34 = v33;
    if (v30 < 1)
    {
      v37 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        *(v33 + v36) = v37;
        if (v31 >= 1)
        {
          v38 = (*(*(matrix + 7) + 8) + v35);
          v39 = v31;
          do
          {
            v40 = *v38++;
            if (v40 != 0.0)
            {
              ++v37;
            }

            --v39;
          }

          while (v39);
        }

        ++v36;
        v35 += 4 * v31;
      }

      while (v36 != (v30 & 0x7FFFFFFF));
    }

    *(v33 + v30) = v37;
    v52 = v32 + 4 * v37;
    v53 = malloc_type_malloc(v52 + 4 * v37, 0x100004000313F17uLL);
    memcpy(v53, v34, v32);
    free(v34);
    v12 = &v53[v32];
    v17 = &v53[v52];
    if (v30 >= 1)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      do
      {
        if (v31 >= 1)
        {
          v57 = 0;
          v58 = *(matrix + 7);
          result = v31;
          v59 = v54;
          do
          {
            if (*(*(v58 + 8) + v59) != 0.0)
            {
              v17[v56] = v57;
              v12[v56++] = *(*(v58 + 8) + v59);
            }

            ++v57;
            v59 += 4;
            result = (result - 1);
          }

          while (result);
        }

        ++v55;
        v54 += 4 * v31;
      }

      while (v55 != (v30 & 0x7FFFFFFF));
    }

    v60 = *matrix - 1;
    if (v60 >= 8)
    {
      v19 = -32767;
    }

    else
    {
      v19 = word_23681FC20[v60];
    }

    retstr->structure.rowCount = v31;
    retstr->structure.columnCount = v30;
    goto LABEL_105;
  }

  if (v5 != -2)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236712FC4(v5);
    }

    goto LABEL_73;
  }

  v6 = *(matrix + 1);
  if (v6 ^ v6 | (v6 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_64;
  }

  v7 = *(matrix + 2);
  if (v7 ^ v7 | (v7 >> 63))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v8 = *(*(v4 + 24) + 8 * v6);
  v9 = (v6 << 32) + 0x100000000;
  v10 = 4 * v8 + (v9 >> 29);
  result = malloc_type_malloc(v10 + 4 * v8, 0x100004000313F17uLL);
  v12 = (&result->structure.rowCount + (v9 >> 29));
  if ((v6 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = *(matrix + 7);
    do
    {
      *(&result->structure.rowCount + v13) = *(*(v14 + 24) + 8 * v13);
      ++v13;
    }

    while (v6 + 1 != v13);
  }

  if (v8 >= 1)
  {
    v15 = 0;
    v16 = *(matrix + 7);
    do
    {
      LODWORD(v12[v8 + v15]) = *(*(v16 + 16) + 8 * v15);
      v12[v15] = *(*(v16 + 8) + 4 * v15);
      ++v15;
    }

    while (v8 != v15);
  }

  v17 = (&result->structure.rowCount + v10);
  v18 = *matrix - 1;
  if (v18 >= 8)
  {
    v19 = -32767;
  }

  else
  {
    v19 = word_23681FC20[v18];
  }

  retstr->structure.rowCount = v7;
  retstr->structure.columnCount = v6;
LABEL_78:
  retstr->structure.columnStarts = &result->structure.rowCount;
LABEL_106:
  retstr->structure.rowIndices = v17;
  *&retstr->structure.attributes = 0;
  retstr->structure.attributes = v19;
  *(&retstr->structure.blockSize + 2) = 1;
  retstr->data = v12;
  return result;
}

_DWORD *sub_236769998(FILE *a1, int a2, size_t a3, char *__dst)
{
  strncpy(__dst, "MatrixMarket Matrix", a3);
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x458AA608uLL);
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
LABEL_17:
    v9 = *MEMORY[0x277D85DF8];
    v10 = "File does not contain any non-comment lines.\n";
    v11 = 45;
LABEL_18:
    fwrite(v10, v11, 1uLL, v9);
    return 0;
  }

  v5 = 2;
  while (1)
  {
    v6 = __linep;
    if (*__linep != 37)
    {
      break;
    }

    if (!strncmp(__linep, "%%MatrixMarket", 0xEuLL))
    {
      strtok(v6, " \t\n\r");
      v7 = strtok(0, " \t\n\r");
      if (v7)
      {
        v8 = v7;
        do
        {
          if (strcasecmp(v8, "matrix") && strcasecmp(v8, "coordinate") && strcasecmp(v8, "real") && strcasecmp(v8, "integer"))
          {
            if (!strcasecmp(v8, "general"))
            {
              v5 &= 0xFFFFFFF3;
            }

            else
            {
              if (strcasecmp(v8, "symmetric"))
              {
                fprintf(*MEMORY[0x277D85DF8], "Unsupported symbol in MatrixMarket header '%s'\n", v8);
                return 0;
              }

              v5 |= 0xCu;
            }
          }

          v8 = strtok(0, " \t\n\r");
        }

        while (v8);
      }
    }

    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      goto LABEL_17;
    }
  }

  v37 = 0;
  v38 = 0;
  v36 = 0;
  if (sscanf(__linep, "%ld %ld %ld", &v38, &v37, &v36) != 3)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = "Matrix description line is malformed.\n";
    v11 = 38;
    goto LABEL_18;
  }

  v12 = malloc_type_malloc(12 * v36 + 8 * v37 + 96, 0x10900405D25300CuLL);
  v14 = (v12 + 55) & 0xFFFFFFFFFFFFFFF0;
  v15 = v37;
  *v12 = v38;
  v12[1] = v15;
  *(v12 + 12) = v5;
  *(v12 + 13) = 0;
  *(v12 + 28) = 1;
  v16 = (v14 + 8 * v15 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 + 1) = v14;
  *(v12 + 2) = v16;
  *(v12 + 4) = (v16 + 4 * v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (getline(&__linep, &__linecapp, a1) < 1)
  {
    v18 = 0;
    v22 = -1;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v20 = 0.0;
    v21 = -1;
    v22 = -1;
    do
    {
      v23 = __linep;
      __endptr = 0;
      if (__linep)
      {
        do
        {
          if (v17 == 2)
          {
            v20 = strtod(v23, &__endptr);
            v26 = __endptr;
            v25 = v23 != __endptr;
            v17 = 2 * (v23 == __endptr);
          }

          else if (v17 == 1)
          {
            v24 = strtol(v23, &__endptr, 0);
            v25 = 0;
            v19 = v24 - 1;
            v26 = __endptr;
            v17 = v23 == __endptr ? 1 : 2;
          }

          else
          {
            v27 = strtol(v23, &__endptr, 0);
            v25 = 0;
            v21 = v27 - 1;
            v26 = __endptr;
            v17 = v23 != __endptr;
          }

          if (v23 == v26)
          {
            break;
          }

          if (v25)
          {
            v28 = v19 - v22;
            if (v19 < v22)
            {
              fwrite("Error, columns are expected to appear in increasing order.\n", 0x3BuLL, 1uLL, *MEMORY[0x277D85DF8]);
              goto LABEL_56;
            }

            if (v19 > v22)
            {
              v29 = (v28 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v30 = vdupq_n_s64(v28 - 1);
              v31 = (*(v12 + 1) + 8 * v22 + 16);
              v32 = 1;
              do
              {
                v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v32 - 1), xmmword_23681F920)));
                if (v33.i8[0])
                {
                  *(v31 - 1) = v18;
                }

                if (v33.i8[4])
                {
                  *v31 = v18;
                }

                v32 += 2;
                v31 += 2;
                v29 -= 2;
              }

              while (v29);
              v22 = v19;
            }

            *(*(v12 + 2) + 4 * v18) = v21;
            *(*(v12 + 4) + 8 * v18++) = v20;
          }

          v23 = v26;
        }

        while (v26);
      }
    }

    while (getline(&__linep, &__linecapp, a1) > 0);
  }

  if (v22 < v37)
  {
    v34 = *(v12 + 1) + 8;
    do
    {
      *(v34 + 8 * v22++) = v18;
    }

    while (v22 < v37);
  }

  if (v18 >= v36)
  {
    free(__linep);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Error, coordinate list ended before reaching expected %ld entries.\n", v36);
LABEL_56:
    free(v12);
    return 0;
  }

  return v12;
}

uint64_t sub_236769E58(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  if (v5 >= a3)
  {
    v5 = a3;
  }

  if (v5 >= a4)
  {
    v5 = a4;
  }

  v6 = 8 * (a3 + (v5 + 3) * a4 + 3) + 168;
  v7 = 16 * a4 * a5 + 104;
  if (!a2)
  {
    v7 = 104;
  }

  return v7 + v6 * a5;
}

void _SparseLSMRIterate_Double(const SparseLSMROptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Double *X, DenseMatrix_Double *B, DenseMatrix_Double *R, const SparseOpaquePreconditioner_Double *Preconditioner, void *ApplyOperator)
{
  v9 = Preconditioner;
  v13 = converged;
  v14 = options;
  v15 = 4;
  if (*&B->attributes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&B->rowCount + v16);
  if (*&X->attributes)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(&X->rowCount + v18);
  if (*&X->attributes)
  {
    v15 = 0;
  }

  v20 = *(&X->rowCount + v15);
  v21 = ApplyOperator;
  nvec = options->nvec;
  if (nvec >= v17)
  {
    nvec = v17;
  }

  if (nvec >= v19)
  {
    v23 = *(&X->rowCount + v18);
  }

  else
  {
    v23 = nvec;
  }

  v78[0] = v19;
  v78[1] = v20;
  v78[2] = v19;
  v78[3] = 0;
  v79 = &state[168 * v20 + 7] & 0xFFFFFFFFFFFFFFF8;
  v76[0] = v19;
  v76[1] = v20;
  v76[2] = v19;
  v76[3] = 0;
  v77 = v79 + 8 * (v20 * v19);
  v24 = v77 + 8 * (v20 * v19);
  *&v74 = __PAIR64__(v20, v17);
  *(&v74 + 1) = v17;
  v75 = v24 + 8 * (v20 * v19 * v23);
  *&v72 = __PAIR64__(v20, v19);
  *(&v72 + 1) = v19;
  v73 = v75 + 8 * v20 * v17;
  v25 = (v73 + 8 * (v20 * v19));
  *&v70 = __PAIR64__(v20, v19);
  *(&v70 + 1) = v19;
  v71 = 0;
  *&v68 = __PAIR64__(v20, v19);
  *(&v68 + 1) = v19;
  v69 = 0;
  if (Preconditioner)
  {
    v26 = 8 * (v20 * v19);
    v71 = (v73 + v26);
    v69 = &v25[v26 / 8];
    if ((iteration & 0x80000000) == 0)
    {
      v25 = (v25 + v26 + v26);
      goto LABEL_18;
    }

    sub_2366FD390(&X->rowCount, &v70);
    mem = v9->mem;
    apply = v9->apply;
    v82 = v70;
    v83 = v71;
    v80 = *&X->rowCount;
    data = X->data;
    (apply)(mem, 111, &v82, &v80);
    v21 = ApplyOperator;
  }

  else if ((iteration & 0x80000000) == 0)
  {
LABEL_18:
    v27 = &v25[v20];
    v28 = &v27[v20];
    if (iteration)
    {
      goto LABEL_71;
    }

    v67 = state;
    v30 = &v27[v20];
    v32 = sub_23676A2AC(options, v17, v19, v20, converged, &v74, &v72, &X->rowCount, &B->rowCount, &v70, v78, v76, v24, Preconditioner, ApplyOperator, state);
    v14 = options;
    iteration = 0;
    v13 = converged;
    v28 = v30;
    v21 = ApplyOperator;
    v9 = Preconditioner;
    v27 = &v25[v20];
    state = v67;
    if ((v32 & 1) == 0)
    {
LABEL_71:
      v33 = state;
      v34 = X;
      v35 = v28;
      sub_23676A6BC(iteration, v14->lambda, v17, v19, v20, v13, &v74, &v72, v34, &v70, &v68, v78, v76, v24, v25, v27, v28, v9, v21, state);
      if (v20 >= 1)
      {
        v36 = 0;
        v37 = 4;
        if ((*&R->attributes & 1) == 0)
        {
          v37 = 0;
        }

        v38 = *(&R->rowCount + v37);
        v39 = (v33 + 72);
        do
        {
          if (v38 >= 1)
          {
            v40 = (*&R->attributes & 1) != 0 ? v36 : R->columnStride * v36;
            v41 = R->data;
            v41[v40] = fabs(*v39);
            if (v38 != 1)
            {
              columnStride = R->columnStride;
              v43 = columnStride * v36;
              v44 = (*&R->attributes & 1) != 0 ? v36 + columnStride : v43 + 1;
              v41[v44] = *&v25[v36];
              if (v38 >= 3)
              {
                v45 = v43 + 2;
                if (*&R->attributes)
                {
                  v45 = v36 + 2 * columnStride;
                }

                v41[v45] = *&v27[v36];
                if (v38 != 3)
                {
                  if (*&R->attributes)
                  {
                    v46 = 3;
                  }

                  else
                  {
                    v46 = v36;
                  }

                  if (*&R->attributes)
                  {
                    v47 = v36;
                  }

                  else
                  {
                    v47 = 3;
                  }

                  v41[v47 + columnStride * v46] = *&v35[v36];
                }
              }
            }
          }

          ++v36;
          v39 += 21;
        }

        while (v20 != v36);
      }
    }

    return;
  }

  v50 = 4;
  if (*&X->attributes)
  {
    v51 = 4;
  }

  else
  {
    v51 = 0;
  }

  v52 = *(&X->rowCount + v51);
  if (*&X->attributes)
  {
    v50 = 0;
  }

  v53 = *(&X->rowCount + v50);
  v54 = v21[2];
  v82 = *&X->rowCount;
  v83 = X->data;
  v80 = *&R->rowCount;
  data = R->data;
  v54(v21, 0, 111, &v82, &v80);
  if (v53 >= 1)
  {
    for (i = 0; i != v53; ++i)
    {
      if (v52 >= 1)
      {
        v56 = 0;
        v57 = B->data;
        v58 = R->data;
        v59 = B->columnStride;
        v60 = R->columnStride;
        do
        {
          if (*&B->attributes)
          {
            v61 = v56;
          }

          else
          {
            v61 = i;
          }

          if (*&B->attributes)
          {
            v62 = i;
          }

          else
          {
            v62 = v56;
          }

          v63 = v57[v62 + v61 * v59];
          if (*&R->attributes)
          {
            v64 = v56;
          }

          else
          {
            v64 = i;
          }

          if (*&R->attributes)
          {
            v65 = i;
          }

          else
          {
            v65 = v56;
          }

          v58[v65 + v64 * v60] = v63 - v58[v65 + v64 * v60];
          ++v56;
        }

        while (v52 != v56);
      }
    }
  }
}

uint64_t sub_23676A2AC(uint64_t a1, int a2, int a3, int a4, uint64_t a5, unsigned int *a6, __int128 *a7, int *a8, int *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = *(a1 + 16);
  if (v20 >= a2)
  {
    v20 = a2;
  }

  if (v20 >= a3)
  {
    v20 = a3;
  }

  v52 = v20;
  sub_2366FD390(a9, a6);
  sub_2366FD4D0(a8);
  v21 = 1;
  if (a4 >= 1)
  {
    v22 = 0;
    v54 = a4;
    v24 = -a4;
    v25 = 1;
LABEL_7:
    v26 = a16;
    v27 = a16 + 168 * v22++;
    do
    {
      if ((*(a5 + v22 - 1) & 1) == 0)
      {
        *v27 = 0;
        v28 = *(a6 + 2) + 8 * (a6[2] * (v22 - 1));
        *(v27 + 8) = 0;
        cblas_dnrm2_NEWLAPACK();
        *(v27 + 16) = v29;
        if (v29 > 0.0)
        {
          cblas_dscal_NEWLAPACK();
          v25 = 0;
          a16 = v26;
          if (v24 + v22)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }

        *v27 = 1;
        *(v27 + 72) = 0;
      }

      ++v22;
      v27 += 168;
    }

    while (v24 + v22 != 1);
    a16 = v26;
    if (v25)
    {
      v21 = 1;
      return v21 & 1;
    }

LABEL_17:
    v30 = *(a15 + 16);
    v59 = *a6;
    v60 = *(a6 + 2);
    if (a14)
    {
      v57 = *a10;
      v58 = *(a10 + 2);
      v30();
      v31 = *(a14 + 8);
      v32 = *(a14 + 16);
      v59 = *a10;
      v60 = *(a10 + 2);
      v57 = *a7;
      v58 = *(a7 + 2);
      v32(v31, 112, &v59, &v57);
    }

    else
    {
      v57 = *a7;
      v58 = *(a7 + 2);
      v30();
    }

    v33 = v54;
    v34 = 0;
    v35 = 0;
    __n = 8 * a3;
    v36 = (a16 + 160);
    __asm { FMOV            V0.2D, #1.0 }

    v50 = _Q0;
    v21 = 1;
    do
    {
      if ((*(a5 + v35) & 1) == 0 && *(v36 - 18) != 0.0)
      {
        v42 = (*(a7 + 2) + 8 * v35 * *(a7 + 2));
        v43 = *(a11 + 16);
        v44 = *(a11 + 8);
        v53 = *(a12 + 16);
        v45 = *(a12 + 8);
        cblas_dnrm2_NEWLAPACK();
        *(v36 - 19) = v46;
        if (v46 > 0.0)
        {
          cblas_dscal_NEWLAPACK();
          v46 = *(v36 - 19);
        }

        v47 = v46 * *(v36 - 18);
        if (v47 == 0.0)
        {
          *(v36 - 160) = 1;
        }

        else
        {
          *(v36 - 80) = v52 > 0;
          *(v36 - 19) = 0;
          *(v36 - 18) = v52;
          *(v36 - 79) = 0;
          if (v52 >= 1)
          {
            memcpy((a13 + 8 * v34), v42, __n);
            v46 = *(v36 - 19);
            v47 = v46 * *(v36 - 18);
          }

          *(v36 - 11) = v47;
          *(v36 - 17) = v46;
          *(v36 - 8) = xmmword_23681FBD0;
          *(v36 - 7) = v50;
          memcpy((v43 + 8 * v35 * v44), v42, __n);
          bzero((v53 + 8 * v35 * v45), __n);
          v21 = 0;
          v48 = *(v36 - 19);
          *(v36 - 7) = *(v36 - 18);
          *(v36 - 8) = 0.0;
          *(v36 - 12) = 0.0;
          *(v36 - 3) = xmmword_23681FE30;
          *(v36 - 4) = 0.0;
          *(v36 - 3) = 0.0;
          *v36 = v48 * v48;
          *(v36 - 1) = xmmword_23681FE40;
        }

        v33 = v54;
      }

      ++v35;
      v36 += 21;
      v34 += a3 * v52;
    }

    while (v33 != v35);
  }

  return v21 & 1;
}

uint64_t sub_23676A6BC(int a1, double a2, uint64_t a3, int a4, int a5, _BYTE *a6, __int128 *a7, __int128 *a8, uint64_t a9, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (*(a9 + 12))
  {
    v23 = *(a9 + 8);
  }

  v153 = a6;
  if (a5 >= 1)
  {
    v24 = a5;
    v25 = a6;
    v26 = a20;
    v27 = a15;
    v28 = a16;
    v29 = a17;
    do
    {
      v30 = *v25++;
      if ((v30 & 1) == 0 && *v26 == 1)
      {
        *v27 = 0;
        *v28 = 0;
        *v29 = 0xBFF0000000000000;
      }

      ++v29;
      ++v28;
      ++v27;
      v26 += 168;
      --v24;
    }

    while (v24);
    v31 = 0;
    v32 = (a20 + 8);
    do
    {
      if ((a6[v31] & 1) == 0 && (*(v32 - 1) & 1) == 0)
      {
        v33 = *(a7 + 2);
        v34 = (*(a7 + 2) * v31);
        v35 = -*v32;
        cblas_dscal_NEWLAPACK();
        a6 = v153;
      }

      ++v31;
      v32 += 21;
    }

    while (a5 != v31);
  }

  if (a18)
  {
    v36 = *(a18 + 8);
    v37 = *(a18 + 16);
    v156 = *a8;
    v157 = *(a8 + 2);
    v154 = *a10;
    v155 = *(a10 + 2);
    v37(v36, 111, &v156, &v154);
    v38 = *(a19 + 16);
    v156 = *a10;
    v39 = *(a10 + 2);
  }

  else
  {
    v38 = *(a19 + 16);
    v156 = *a8;
    v39 = *(a8 + 2);
  }

  v157 = v39;
  v154 = *a7;
  v155 = *(a7 + 2);
  result = v38(a19, 1, 111, &v156, &v154);
  v41 = v153;
  if (a5 >= 1)
  {
    v151 = a5;
    v42 = 0;
    v43 = 0;
    v139 = a4;
    v44 = 8 * a4;
    v134 = a4;
    v45 = a20 + 88;
    v147 = a4;
    v46 = -a5;
    while (2)
    {
      v141 = v43;
      v47 = (v45 + 168 * v42);
      v48 = v44 * v42;
      v49 = v42++;
      while (1)
      {
        if ((v41[v42 - 1] & 1) == 0 && (*(v47 - 11) & 1) == 0)
        {
          v50 = *(a7 + 2) + 8 * *(a7 + 2) * (v42 - 1);
          v51 = *(a8 + 2);
          v52 = *(a8 + 2);
          v53 = *v47;
          result = cblas_dnrm2_NEWLAPACK();
          v41 = v153;
          *(v47 - 9) = v54;
          if (v54 > 0.0)
          {
            break;
          }
        }

        ++v42;
        v47 += 21;
        v48 += v44;
        ++v49;
        if (v46 + v42 == 1)
        {
          v62 = v134;
          v64 = a16;
          v63 = a17;
          v65 = a20;
          v66 = a11;
          if ((v141 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_34;
        }
      }

      cblas_dscal_NEWLAPACK();
      if (*(v47 - 8) == 1)
      {
        v55 = *v47;
        v56 = *(v47 - 1) + 1;
        *(v47 - 1) = v56;
        if (v56 >= v55)
        {
          v56 = 0;
          *(v47 - 1) = 0;
          *(v47 - 7) = 1;
        }

        if (v134 >= 1)
        {
          v57 = (a14 + 8 * v56 * v134 + v48 * v53);
          v58 = (v51 + 8 * v52 * v49);
          v59 = v147;
          do
          {
            v60 = *v58++;
            *v57++ = v60;
            --v59;
          }

          while (v59);
        }
      }

      v61 = -*(v47 - 9);
      v43 = 1;
      v62 = v134;
      result = cblas_dscal_NEWLAPACK();
      v41 = v153;
      v64 = a16;
      v63 = a17;
      v65 = a20;
      v66 = a11;
      v45 = a20 + 88;
      if (v151 != v42)
      {
        continue;
      }

      break;
    }

LABEL_34:
    v67 = *(a19 + 16);
    if (a18)
    {
      v156 = *a7;
      v157 = *(a7 + 2);
      v154 = *a10;
      v155 = *(a10 + 2);
      v67();
      v68 = *(a18 + 8);
      v69 = *(a18 + 16);
      v156 = *a10;
      v157 = *(a10 + 2);
      v154 = *v66;
      v155 = *(v66 + 2);
      result = v69(v68, 112, &v156, &v154);
      v70 = 0;
      v41 = v153;
      do
      {
        if (v62 >= 1)
        {
          v71 = (*(a8 + 2) + 8 * *(a8 + 2) * v70);
          v72 = (*(v66 + 2) + 8 * *(v66 + 2) * v70);
          v73 = v147;
          do
          {
            v74 = *v72++;
            *v71 = v74 + *v71;
            ++v71;
            --v73;
          }

          while (v73);
        }

        ++v70;
      }

      while (v70 != v151);
    }

    else
    {
      v156 = *a7;
      v157 = *(a7 + 2);
      v154 = *a8;
      v155 = *(a8 + 2);
      result = (v67)();
      v41 = v153;
    }

LABEL_42:
    v75 = 0;
    v76 = 0;
    v135 = fabs(a2);
    v77 = 8 * v139;
    v78 = v151;
    v136 = a2;
    do
    {
      if ((v41[v76] & 1) == 0)
      {
        v79 = v65 + 168 * v76;
        if ((*v79 & 1) == 0)
        {
          if ((*(a9 + 12) & 1) == 0)
          {
            v80 = *(a9 + 8) * v76;
          }

          v150 = *(a8 + 2);
          v148 = *(a8 + 2);
          v81 = *(a12 + 16);
          v82 = *(a12 + 8);
          v83 = *(a13 + 16);
          v84 = *(a13 + 8);
          if (*(v79 + 16) > 0.0)
          {
            v140 = *(a9 + 16);
            v142 = *(a13 + 16);
            v143 = *(a12 + 8);
            v145 = *(a12 + 16);
            if (*(v79 + 80) == 1)
            {
              v85 = *(v79 + 88);
              if ((*(v79 + 81) & 1) == 0)
              {
                v85 = *(v79 + 84) + 1;
              }

              v62 = v134;
              if (v85 >= 1)
              {
                v86 = v85;
                v87 = a14 + v75 * *(v79 + 88);
                do
                {
                  cblas_ddot_NEWLAPACK();
                  cblas_daxpy_NEWLAPACK();
                  v87 += v77;
                  --v86;
                }

                while (v86);
              }
            }

            cblas_dnrm2_NEWLAPACK();
            *(v79 + 8) = v88;
            v64 = a16;
            v63 = a17;
            v81 = v145;
            v82 = v143;
            v83 = v142;
            if (v88 > 0.0)
            {
              cblas_dscal_NEWLAPACK();
              v83 = v142;
              v82 = v143;
              v81 = v145;
            }
          }

          v89 = *(v79 + 24);
          v90 = 0.0;
          v91 = 0.0;
          v92 = v89;
          if (a2 != 0.0)
          {
            v93 = v135 + fabs(v89);
            v92 = 0.0;
            if (v93 != 0.0)
            {
              v92 = v93 * sqrt(a2 / v93 * (a2 / v93) + v89 / v93 * (v89 / v93));
            }

            v91 = a2 / v92;
          }

          v146 = v91;
          v94 = *(v79 + 48);
          v95 = *(v79 + 16);
          v96 = fabs(v92) + fabs(v95);
          if (v96 != 0.0)
          {
            v90 = v96 * sqrt(v95 / v96 * (v95 / v96) + v92 / v96 * (v92 / v96));
          }

          *(v79 + 48) = v90;
          v97 = v92 / v90;
          v98 = v95 / v90;
          v99 = *(v79 + 8);
          v100 = v98 * v99;
          *(v79 + 24) = v92 / v90 * v99;
          v101 = *(v79 + 56);
          v144 = *(v79 + 64);
          v102 = v90 * *(v79 + 32);
          v103 = fabs(v98 * v99) + fabs(v102);
          v104 = 0.0;
          if (v103 != 0.0)
          {
            v104 = v103 * sqrt(v100 / v103 * (v100 / v103) + v102 / v103 * (v102 / v103));
          }

          v105 = v90 * *(v79 + 40);
          *(v79 + 32) = v102 / v104;
          *(v79 + 40) = v100 / v104;
          v106 = *(v79 + 72);
          *(v79 + 56) = v104;
          *(v79 + 64) = v102 / v104 * v106;
          *(v79 + 72) = -(v100 / v104 * v106);
          v65 = a20;
          if (v62 <= 0)
          {
            result = cblas_daxpy_NEWLAPACK();
            v78 = v151;
          }

          else
          {
            v107 = (v83 + 8 * v84 * v76);
            v108 = (v81 + 8 * v82 * v76);
            v109 = v147;
            v110 = v108;
            do
            {
              v111 = *v110++;
              *v107 = v111 + *(v79 + 48) * -v105 / (v94 * v101) * *v107;
              ++v107;
              --v109;
            }

            while (v109);
            v112 = *(v79 + 64) / (*(v79 + 48) * *(v79 + 56));
            result = cblas_daxpy_NEWLAPACK();
            v78 = v151;
            v113 = (v150 + 8 * v148 * v76);
            v114 = v147;
            do
            {
              v115 = *v113++;
              *v108 = v115 + -v100 / *(v79 + 48) * *v108;
              ++v108;
              --v114;
            }

            while (v114);
          }

          v116 = *(v79 + 104);
          v117 = v89 / v92 * v116;
          v118 = -(v98 * v117);
          *(v79 + 104) = v118;
          v119 = *(v79 + 136);
          v120 = *(v79 + 120);
          v121 = fabs(v105) + fabs(v120);
          v122 = 0.0;
          v41 = v153;
          if (v121 != 0.0)
          {
            v122 = v121 * sqrt(v105 / v121 * (v105 / v121) + v120 / v121 * (v120 / v121));
          }

          v123 = v120 / v122;
          v124 = *(v79 + 56);
          v125 = *(v79 + 64);
          v126 = v105 / v122 * v124;
          v127 = v123 * v124;
          v128 = v97 * v117 * v123 - v105 / v122 * *(v79 + 96);
          *(v79 + 96) = v128;
          v129 = (v144 - v119 * *(v79 + 128)) / v122;
          *(v79 + 128) = v129;
          *(v79 + 136) = v126;
          v130 = *(v79 + 112) + -(v146 * v116) * -(v146 * v116);
          *(v79 + 112) = v130;
          *(v79 + 120) = v127;
          *&a15[v76] = sqrt(v130 + (v128 - (v125 - v126 * v129) / v127) * (v128 - (v125 - v126 * v129) / v127) + v118 * v118);
          v131 = *(v79 + 160) + *(v79 + 16) * *(v79 + 16);
          *(v79 + 160) = v131;
          *&v64[v76] = sqrt(v131);
          *(v79 + 160) = *(v79 + 160) + *(v79 + 8) * *(v79 + 8);
          v132 = *(v79 + 144);
          a2 = v136;
          if (v101 > v132)
          {
            *(v79 + 144) = v101;
            v132 = v101;
          }

          v133 = *(v79 + 152);
          if (a1 >= 1 && v101 < v133)
          {
            *(v79 + 152) = v101;
            v133 = v101;
          }

          if (v132 <= v102)
          {
            v132 = v102;
          }

          if (v133 >= v102)
          {
            v133 = v102;
          }

          *&v63[v76] = v132 / v133;
        }
      }

      ++v76;
      v75 += v77;
    }

    while (v76 != v78);
  }

  return result;
}

SparseIterativeStatus_t _SparseLSMRSolve_Double(SparseLSMROptions *options, DenseMatrix_Double *X, DenseMatrix_Double *B, void *ApplyOperator, const SparseOpaquePreconditioner_Double *Preconditioner)
{
  v5 = Preconditioner;
  v134 = *MEMORY[0x277D85DE8];
  v9 = 4;
  if (*&B->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&B->rowCount + v10);
  if (*&X->attributes)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(&X->rowCount + v12);
  if (*&X->attributes)
  {
    v9 = 0;
  }

  v14 = *(&X->rowCount + v9);
  maxIterations = options->maxIterations;
  if (maxIterations <= 0)
  {
    maxIterations = 4 * v13;
  }

  v100 = maxIterations;
  nvec = options->nvec;
  if (nvec >= v11)
  {
    nvec = v11;
  }

  if (nvec >= v13)
  {
    nvec = *(&X->rowCount + v12);
  }

  v17 = 8 * (v11 + (nvec + 3) * v13 + 3) + 168;
  v18 = 8 * (2 * v13 * v14) + 104;
  if (!Preconditioner)
  {
    v18 = 104;
  }

  v19 = 9 * v14 + v18 + v17 * v14 + 16;
  v20 = malloc_type_malloc(v19, 0xEC5780E5uLL);
  if (v20)
  {
    v21 = v20;
    v22 = v20 + v19;
    v23 = options->nvec;
    if (v23 >= v11)
    {
      v23 = v11;
    }

    if (v23 >= v13)
    {
      v24 = v13;
    }

    else
    {
      v24 = v23;
    }

    v25 = (&v20[21 * v14] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v22 >= v25)
    {
      v116[0] = v13;
      v116[1] = v14;
      v116[2] = v13;
      v116[3] = 0;
      v26 = v14 * v13;
      v27 = v25 + 8 * (v14 * v13);
      if (v27 <= v22)
      {
        v117 = (&v20[21 * v14] + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = 8 * v26;
        v114[0] = v13;
        v114[1] = v14;
        v114[2] = v13;
        v114[3] = 0;
        v29 = v27 + v28;
        if (v27 + v28 <= v22)
        {
          v115 = v27;
          v30 = (v29 + 8 * (v24 * v26)) & 0xFFFFFFFFFFFFFFF8;
          if (v22 >= v30)
          {
            *&v112 = __PAIR64__(v14, v11);
            *(&v112 + 1) = v11;
            v31 = v30 + 8 * v14 * v11;
            if (v31 <= v22)
            {
              v113 = v30;
              *&v110 = __PAIR64__(v14, v13);
              v32 = (v31 + v28);
              *(&v110 + 1) = v13;
              if (v31 + v28 <= v22)
              {
                v111 = v30 + 8 * v14 * v11;
                *&v108 = __PAIR64__(v14, v13);
                *(&v108 + 1) = v13;
                v109 = 0;
                *&v106 = __PAIR64__(v14, v13);
                *(&v106 + 1) = v13;
                v107 = 0;
                if (v5)
                {
                  v33 = &v32[v28] & 0xFFFFFFFFFFFFFFF8;
                  if (v22 < v33)
                  {
                    goto LABEL_111;
                  }

                  v109 = v32;
                  v32 = (v33 + v28);
                  if (v33 + v28 > v22)
                  {
                    goto LABEL_111;
                  }

                  v107 = v33;
                }

                v34 = &v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
                if (v22 >= v34)
                {
                  v35 = 8 * v14;
                  v36 = v34 + v35;
                  if (v34 + v35 <= v22)
                  {
                    v37 = v36 + v35;
                    if (v36 + v35 <= v22)
                    {
                      v38 = (v37 + v35) & 0xFFFFFFFFFFFFFFF8;
                      if (v22 >= v38)
                      {
                        v97 = (v36 + v35);
                        v98 = (v34 + v35);
                        v101 = v29;
                        v99 = ((v37 + v35) & 0xFFFFFFFFFFFFFFF8);
                        if (v38 + v35 <= v22)
                        {
                          bzero(v32, v14);
                          if (sub_23676A2AC(options, v11, v13, v14, v32, &v112, &v110, &X->rowCount, &B->rowCount, &v108, v116, v114, v101, v5, ApplyOperator, v21))
                          {
                            if (!v5)
                            {
LABEL_42:
                              free(v21);
                              result = SparseIterativeConverged;
                              goto LABEL_106;
                            }

                            v39 = X;
                            sub_2366FD390(&X->rowCount, &v108);
                            mem = v5->mem;
                            apply = v5->apply;
                          }

                          else
                          {
                            convergenceTest = options->convergenceTest;
                            if (convergenceTest)
                            {
                              if (convergenceTest == SparseLSMRCTFongSaunders && v14 >= 1)
                              {
                                v44 = (v21 + 2);
                                v45 = v14;
                                v46 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                                do
                                {
                                  v47 = *v44;
                                  v44 += 21;
                                  *v46++ = v47;
                                  --v45;
                                }

                                while (v45);
                              }
                            }

                            else if (v14 >= 1)
                            {
                              v48 = v21 + 9;
                              v49 = v14;
                              v50 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              do
                              {
                                v51 = *v48;
                                v48 += 21;
                                *v50++ = fabs(v51);
                                --v49;
                              }

                              while (v49);
                            }

                            conditionLimit = options->conditionLimit;
                            if (conditionLimit <= 0.0)
                            {
                              v53 = 0.0;
                            }

                            else
                            {
                              v53 = 1.0 / conditionLimit;
                            }

                            reportStatus = options->reportStatus;
                            if (reportStatus)
                            {
                              (reportStatus)("\n   Itn       y(1)           norm rbar    Abar'rbar Compatible    LS    norm Abar cond Abar\n");
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e\n", 0, *X->data, 0.0, v21[2], v21[2] * v21[1], 1.0, v21[1] / v21[2]);
                              (options->reportStatus)(__str);
                            }

                            rtol = options->rtol;
                            v56 = rtol == 0.0;
                            if (rtol < 0.0)
                            {
                              rtol = 0.0;
                            }

                            if (v56)
                            {
                              v57 = 0.0000000149011612;
                            }

                            else
                            {
                              v57 = rtol;
                            }

                            v58 = X;
                            v60 = v97;
                            v59 = v98;
                            if (v100 < 1)
                            {
LABEL_104:
                              free(v21);
                              result = SparseIterativeMaxIterations;
                              goto LABEL_106;
                            }

                            v61 = 0;
                            v94 = v21 + 9;
                            v95 = v5;
                            v102 = v21;
                            v93 = ApplyOperator;
                            v92 = v11;
                            while (1)
                            {
                              v91 = ApplyOperator;
                              v62 = v58;
                              sub_23676A6BC(v61, options->lambda, v11, v13, v14, v32, &v112, &v110, v58, &v108, &v106, v116, v114, v101, v59, v60, v99, v5, v91, v21);
                              v63 = options->convergenceTest;
                              v96 = v61;
                              if (v63 == SparseLSMRCTFongSaunders)
                              {
                                break;
                              }

                              v58 = v62;
                              v64 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              if (v63 || v14 < 1)
                              {
                                goto LABEL_107;
                              }

                              v65 = 1;
                              v66 = v14;
                              v67 = v94;
                              v68 = v32;
                              do
                              {
                                v69 = *v68 || fabs(*v67) <= options->atol + v57 * *v64;
                                *v68++ = v69;
                                v65 &= v69;
                                ++v64;
                                v67 += 21;
                                --v66;
                              }

                              while (v66);
LABEL_98:
                              v21 = v102;
                              v64 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              v61 = v96;
                              if (v65)
                              {
                                goto LABEL_107;
                              }

                              if (options->reportStatus && (v96 < 0xA || !(v96 % 0xA)))
                              {
                                v88 = fabs(*v94);
                                snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v96, *v58->data, 0.0, *v98, v88, *v98 / *(&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8), v88 / (*v98 * *v97), *v97, *v99);
                                (options->reportStatus)(__str);
                                v58 = X;
                              }

                              v61 = v96 + 1;
                              v5 = v95;
                              ApplyOperator = v93;
                              v11 = v92;
                              v60 = v97;
                              v59 = v98;
                              if (v96 + 1 == v100)
                              {
                                goto LABEL_104;
                              }
                            }

                            v58 = v62;
                            v64 = (&v32[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                            if (*&v62->attributes)
                            {
                              columnStride = v62->columnStride;
                            }

                            if (v14 >= 1)
                            {
                              v71 = 0;
                              v65 = 1;
                              v72 = 9;
                              v73 = v99;
                              while (1)
                              {
                                if ((v32[v71] & 1) == 0)
                                {
                                  if ((*&v58->attributes & 1) == 0)
                                  {
                                    v74 = (v58->columnStride * v71);
                                  }

                                  v75 = v102[v72];
                                  data = v58->data;
                                  cblas_dnrm2_NEWLAPACK();
                                  v78 = 1.0 / *v73;
                                  if (v78 + 1.0 <= 1.0 || v78 <= v53)
                                  {
                                    free(v102);
                                    result = SparseIterativeIllConditioned;
                                    goto LABEL_106;
                                  }

                                  v79 = v64[v14];
                                  v80 = v64[2 * v14];
                                  v81 = fabs(v75) / (v79 * v80);
                                  if (v81 + 1.0 > 1.0 && (atol = options->atol, v81 > atol) && ((v83 = v79 / *v64, v84 = v83 / (v77 * v80 / *v64 + 1.0), v85 = options->btol + v77 * (v80 * atol) / *v64, v84 + 1.0 > 1.0) ? (v86 = v83 > v85) : (v86 = 0), v86))
                                  {
                                    v87 = v32[v71] != 0;
                                  }

                                  else
                                  {
                                    v87 = 1;
                                    v32[v71] = 1;
                                  }

                                  v58 = X;
                                  v65 &= v87;
                                }

                                ++v71;
                                ++v73;
                                ++v64;
                                v72 += 21;
                                if (v14 == v71)
                                {
                                  goto LABEL_98;
                                }
                              }
                            }

LABEL_107:
                            if (options->reportStatus)
                            {
                              v90 = fabs(*v94);
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v61, *v58->data, 0.0, *v98, v90, *v98 / *v64, v90 / (*v98 * *v97), *v97, *v99);
                              (options->reportStatus)(__str);
                              v58 = X;
                            }

                            if (!v95)
                            {
                              goto LABEL_42;
                            }

                            v39 = v58;
                            sub_2366FD390(&v58->rowCount, &v108);
                            mem = v95->mem;
                            apply = v95->apply;
                          }

                          *__str = v108;
                          *&v119 = v109;
                          v104 = *&v39->rowCount;
                          v105 = v39->data;
                          (apply)(mem, 111, __str, &v104);
                          goto LABEL_42;
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

LABEL_111:
    __break(1u);
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23676B928(v19);
    }

    _SparseTrap();
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  *__str = 0u;
  v119 = 0u;
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v19);
  (options->reportError)(__str);
  result = SparseIterativeInternalError;
LABEL_106:
  v89 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23676B928(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23676C054(int a1, int a2, int a3)
{
  v3 = a3 * a2;
  if (!a1)
  {
    v3 = 0;
  }

  return 8 * (v3 + ((2 * a2) | 1) * a3);
}

SparseIterativeStatus_t _SparseCGSolve_Double(const SparseCGOptions *options, DenseMatrix_Double *X, DenseMatrix_Double *B, void *ApplyOperator, const SparseOpaquePreconditioner_Double *Preconditioner)
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = 4;
  if (*&X->attributes)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(&X->rowCount + v9);
  if (*&X->attributes)
  {
    v8 = 0;
  }

  v11 = *(&X->rowCount + v8);
  v12 = v11 * v10;
  if (Preconditioner)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = 8 * (((2 * v10) | 1) * v11 + (v11 + v12) + v13) + v11 + 24;
  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  if (v15)
  {
    v16 = v15;
    v60 = options;
    *&R.attributes = 0;
    R.rowCount = v10;
    R.columnCount = v11;
    R.columnStride = v10;
    v17 = (&v15[v11 * v10] + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = v15 + v14;
    if (v15 + v14 < v17)
    {
      goto LABEL_83;
    }

    R.data = v15;
    v18 = 4;
    if (*&X->attributes)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(&X->rowCount + v19);
    if (*&X->attributes)
    {
      v18 = 0;
    }

    v21 = *(&X->rowCount + v18);
    v22 = *(ApplyOperator + 2);
    *__str = *&X->rowCount;
    *&__str[16] = X->data;
    v65 = *&R.rowCount;
    v66 = v15;
    v22(ApplyOperator, 0, 111, __str, &v65);
    if (v21 >= 1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (v20 >= 1)
        {
          v24 = 0;
          data = B->data;
          columnStride = B->columnStride;
          attributes = R.attributes;
          do
          {
            if (*&B->attributes)
            {
              v28 = v24;
            }

            else
            {
              v28 = i;
            }

            if (*&B->attributes)
            {
              v29 = i;
            }

            else
            {
              v29 = v24;
            }

            v30 = data[v29 + v28 * columnStride];
            if (attributes)
            {
              v31 = v24;
            }

            else
            {
              v31 = i;
            }

            if (attributes)
            {
              v32 = i;
            }

            else
            {
              v32 = v24;
            }

            v16[v32 + v31 * v10] = v30 - v16[v32 + v31 * v10];
            ++v24;
          }

          while (v20 != v24);
        }
      }
    }

    v33 = v17 + 8 * v11;
    if (v33 > v62)
    {
      goto LABEL_83;
    }

    if (v11 >= 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = v16;
      do
      {
        cblas_dnrm2_NEWLAPACK();
        *(v17 + 8 * v35++) = v37;
        v34 += v10;
        ++v36;
      }

      while (v11 != v35);
    }

    v38 = ((v33 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v62 < v38)
    {
LABEL_83:
      __break(1u);
    }

    bzero((v17 + 8 * v11), v11);
    if (v60->maxIterations)
    {
      maxIterations = v60->maxIterations;
    }

    else
    {
      maxIterations = 100;
    }

    atol = v60->atol;
    v41.n128_u64[0] = *&v60->rtol;
    v44 = v41.n128_f64[0] == 0.0;
    if (v41.n128_f64[0] < 0.0)
    {
      v41.n128_f64[0] = 0.0;
    }

    if (v44)
    {
      v45 = 0.0000000149011612;
    }

    else
    {
      v45 = v41.n128_f64[0];
    }

    reportStatus = v60->reportStatus;
    if (reportStatus)
    {
      v39 = (reportStatus)("   Itr   ||r[0]||_2\n", v41);
    }

    if (maxIterations < 1)
    {
LABEL_68:
      reportError = v60->reportError;
      if (!v60->reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23674EC1C();
        }

        _SparseTrap();
      }

      memset(&__str[35], 0, 221);
      strcpy(__str, "Exceeded maximum iteration limit.\n");
      (reportError)(__str);
      v57 = SparseIterativeMaxIterations;
    }

    else
    {
      v47 = 0;
      while (1)
      {
        if (v60->reportStatus && (v47 < 0xA || !(v47 % 0xA)))
        {
          if (v47)
          {
            v48 = v16;
          }

          else
          {
            v48 = v17;
          }

          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v47, *v48);
          v39 = (v60->reportStatus)(__str);
        }

        _SparseCGIterate_Double(v39, v47, v38, (v17 + 8 * v11), X, v40, &R, Preconditioner, ApplyOperator);
        v16 = R.data;
        if (v11 < 1)
        {
          break;
        }

        v49 = 8 * R.columnStride;
        v50 = 1;
        v51 = v11;
        v52 = (v17 + 8 * v11);
        v53 = v17;
        v54 = R.data;
        do
        {
          if (!*v52)
          {
            v55 = fabs(*v54) < atol + v45 * *v53;
            *v52 = v55;
            v50 &= v55;
          }

          v54 = (v54 + v49);
          ++v53;
          ++v52;
          --v51;
        }

        while (v51);
        if (v50)
        {
          goto LABEL_77;
        }

        if (++v47 == maxIterations)
        {
          goto LABEL_68;
        }
      }

      v47 = 0;
LABEL_77:
      if (!v60->reportStatus)
      {
        v57 = SparseIterativeConverged;
        goto LABEL_80;
      }

      snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v47 + 1, *v16);
      (v60->reportStatus)(__str);
      v57 = SparseIterativeConverged;
    }

    v16 = R.data;
LABEL_80:
    free(v16);
    goto LABEL_81;
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674EC64(v14);
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v14);
  (options->reportError)(__str);
  v57 = SparseIterativeInternalError;
LABEL_81:
  v58 = *MEMORY[0x277D85DE8];
  return v57;
}

uint64_t sub_23676C5D0(int a1, void *a2)
{
  v2 = 1;
  if (a1 < -1)
  {
    v10 = 0;
  }

  else
  {
    v3 = a1 + 1;
    v4 = v3 >> 60;
    if (a1 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = -a1;
    }

    v6 = 8 * v5;
    if (a1 < 0)
    {
      v6 = -v6;
    }

    v7 = __CFADD__(v6, 16 * v3);
    v8 = v6 + 16 * v3;
    v9 = v7;
    v7 = __CFADD__(v8, 8);
    v10 = v8 + 8;
    v11 = v7;
    if (v9)
    {
      v10 = 0;
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (a1 < 0)
    {
      v10 = 0;
      v12 = 1;
    }

    if (v4)
    {
      v10 = 0;
      v2 = 1;
    }

    else
    {
      v2 = v12;
    }
  }

  if (a1 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = -a1;
  }

  v14 = 4 * v13;
  if (a1 < 0)
  {
    v14 = -4 * v13;
  }

  v7 = __CFADD__(v14, 24);
  v15 = v14 + 24;
  v16 = v7;
  v17 = v10 < 0;
  v7 = __CFADD__(v15, 2 * v10);
  v18 = v15 + 2 * v10;
  if (v7)
  {
    v17 = 1;
  }

  if (v16)
  {
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

  if (a1 < 0)
  {
    v18 = 0;
    v19 = 1;
  }

  v20 = 20 * v13;
  if (a1 < 0)
  {
    v20 = -v20;
  }

  v7 = __CFADD__(v20, 4);
  v21 = v20 + 4;
  v22 = v7;
  v7 = __CFADD__(v21, 2 * v10);
  v23 = v21 + 2 * v10;
  v24 = v7;
  v25 = 16 * a1 + 32;
  v7 = __CFADD__(v23, v25);
  v26 = v23 + v25;
  v27 = v7;
  v7 = __CFADD__(v26, 64);
  v28 = v26 + 64;
  if (v7)
  {
    v27 = 1;
  }

  if (v24)
  {
    v28 = 0;
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v10 >= 0;
  if (v10 >= 0)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v29;
  }

  else
  {
    v32 = 1;
  }

  if (v22)
  {
    v31 = 0;
    v32 = 1;
  }

  if (a1 < 0)
  {
    v31 = 0;
    v32 = 1;
  }

  v33 = v19 | v2 | v32;
  v34 = 12 * a1 + 8;
  if (8 * a1 > v34)
  {
    v34 = 8 * a1;
  }

  v35 = v34 + 8;
  if (v31 > v35)
  {
    v35 = v31;
  }

  *a2 = v18 + v35;
  if (__CFADD__(v18, v35))
  {
    return 1;
  }

  else
  {
    return v33;
  }
}

void *sub_23676C728(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, void *a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, unsigned __int8 a16, _DWORD *a17, char *a18)
{
  v19 = a17;
  v20 = a2;
  v21 = *(a3 + 8 * a2);
  v22 = *(a5 + 8 * a2);
  v265 = a2 + 1;
  v23 = 4 * a2;
  v24 = 16 * (a2 + 1) + 8 * a2;
  v254 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = &a18[v254];
  v281 = a18;
  v282 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  v268 = v282;
  v283 = 1;
  bzero(a18, v23);
  v251 = v24 + 15;
  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v21 <= a2)
  {
    v27 = v20;
  }

  else
  {
    v27 = v21;
  }

  sub_23676F4FC(v279, v20, v27, a17, v25);
  v262 = a2;
  if (v22 <= a2)
  {
    v28 = v20;
  }

  else
  {
    v28 = v22;
  }

  sub_23676F4FC(v277, v20, v28, a17, v25 + v26);
  v29 = &a18[v254 + v26 + v26];
  sub_23676F4FC(v275, v20, 2 * v21, a17, v29);
  sub_23676F4FC(v273, v20, 2 * v22, a17, v29 + v26);
  v267 = (v29 + v26 + v26);
  v30 = &v267[(16 * v20 + 39) & 0xFFFFFFFFFFFFFFF0];
  v31 = &v30[v254];
  v271[0] = v30;
  v271[1] = v268;
  v272 = 1;
  bzero(v30, v23);
  v32 = &v31[v254];
  v33 = a7;
  *a7 = 0;
  if (v262 < 1)
  {
    v148 = 0;
    v36 = v262;
  }

  else
  {
    v34 = 0;
    v266 = &v32[(4 * v265 + 7) & 0xFFFFFFFFFFFFFFF8];
    v35 = (v266 + v254);
    v259 = v32 + 4;
    v253 = v31 - 4;
    v36 = v262;
    v37 = v31;
    v269 = &v31[v254];
    v263 = v31;
    do
    {
      v38 = v34;
      v39 = *v33;
      *&v37[4 * v34] = v39;
      *&v32[4 * v39] = v34++;
      *&v259[4 * (*v33)++] = v34;
      v40 = sub_23676D678(v275, v38, v266);
      sub_23676D6EC(v36, *v33 - 1, v40, v41, v279, &v281, v271, v42, v267);
      v43 = *(a5 + 8 * v34);
      v44 = *(a5 + 8 * v38);
      v45 = v283;
      if (v283 > 2147483630)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v45 = v283;
      }

      v46 = v43 - v44;
      v47 = v45 + 1;
      v283 = v45 + 1;
      if (v43 - v44 < 1)
      {
        v48 = 0;
      }

      else
      {
        v48 = 0;
        v49 = (a6 + 4 * v44);
        v50 = v281;
        v51 = v46 & 0x7FFFFFFF;
        do
        {
          v53 = *v49++;
          v52 = v53;
          if (v50[v53] <= v45)
          {
            *&v35[4 * v48] = v52;
            v50[v52] = v47;
            ++v48;
          }

          --v51;
        }

        while (v51);
      }

      v54 = (v280 + 16 * *&v37[4 * v38]);
      v55 = v54[1];
      if (v55)
      {
        v56 = *v54;
        v57 = &v56[v55];
        v58 = v274;
        v59 = v281;
        do
        {
          v60 = (v58 + 16 * *v56);
          v61 = v60[1];
          if (v61)
          {
            v62 = *v60;
            v63 = 4 * v61;
            do
            {
              v64 = *v62;
              v65 = v38 < *v62 && v59[*v62] <= v45;
              if (v65)
              {
                *&v35[4 * v48] = v64;
                v59[v64] = v47;
                ++v48;
              }

              ++v62;
              v63 -= 4;
            }

            while (v63);
          }

          ++v56;
        }

        while (v56 != v57);
      }

      std::__sort<std::__less<int,int> &,int *>();
      sub_23676D9A0(v273, v35, v48);
      v66 = sub_23676D678(v273, v38, v266);
      sub_23676D6EC(v36, *v33 - 1, v66, v67, v277, &v281, v271, v68, v267);
      v69 = *(a3 + 8 * v34);
      v70 = *(a3 + 8 * v38);
      v71 = v283;
      if (v283 > 2147483630)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v71 = v283;
      }

      v72 = v69 - v70;
      v73 = v71 + 1;
      v283 = v71 + 1;
      if (v69 - v70 < 1)
      {
        v74 = 0;
      }

      else
      {
        v74 = 0;
        v75 = (a4 + 4 * v70);
        v76 = v281;
        v77 = v72 & 0x7FFFFFFF;
        do
        {
          v79 = *v75++;
          v78 = v79;
          if (v76[v79] <= v71)
          {
            *&v35[4 * v74] = v78;
            v76[v78] = v73;
            ++v74;
          }

          --v77;
        }

        while (v77);
      }

      v80 = (v278 + 16 * *&v37[4 * v38]);
      v81 = v80[1];
      if (v81)
      {
        v82 = *v80;
        v83 = &v82[v81];
        v84 = v276;
        v85 = v281;
        do
        {
          v86 = (v84 + 16 * *v82);
          v87 = v86[1];
          if (v87)
          {
            v88 = *v86;
            v89 = 4 * v87;
            do
            {
              v90 = *v88;
              if (v38 < *v88 && v85[*v88] <= v71)
              {
                *&v35[4 * v74] = v90;
                v85[v90] = v73;
                ++v74;
              }

              ++v88;
              v89 -= 4;
            }

            while (v89);
          }

          ++v82;
        }

        while (v82 != v83);
      }

      std::__sort<std::__less<int,int> &,int *>();
      sub_23676D9A0(v275, v35, v74);
      v92 = *v33;
      v93 = v92 - 1;
      if (v92 != 1)
      {
        v94 = v92 - 2;
        v95 = v276;
        v96 = *(v276 + 16 * (v92 - 2) + 8);
        v97 = v283;
        if (v283 > 2147483630)
        {
          v283 = 1;
          v98 = v94;
          v99 = v93;
          bzero(v281, 4 * v282);
          v94 = v98;
          v93 = v99;
          v97 = v283;
          v95 = v276;
        }

        v100 = v97 + 1;
        v283 = v100;
        v101 = (v95 + 16 * v94);
        v102 = v101[1];
        v103 = v281;
        if (v102)
        {
          v104 = *v101;
          v105 = 4 * v102;
          do
          {
            v106 = *v104++;
            v103[v106] = v100;
            v105 -= 4;
          }

          while (v105);
          v100 = v283;
        }

        v107 = &v269[4 * v93];
        v108 = *v107;
        if (v103[*v107] >= v100)
        {
          v109 = *&v269[4 * v94];
          if (v109 < v108)
          {
            v110 = *v107;
            do
            {
              if (v103[v109] < v283)
              {
                v103[v109] = v283;
                ++v96;
                v110 = *v107;
              }

              ++v109;
            }

            while (v109 < v110);
            v100 = v283;
          }

          v111 = (v95 + 16 * v93);
          v112 = v111[1];
          if (v112)
          {
            v113 = 0;
            v114 = *v111;
            v115 = 4 * v112;
            do
            {
              v116 = *v114++;
              v117 = v103[v116];
              v65 = v117 < v100;
              v118 = v117 >= v100;
              if (v65)
              {
                ++v113;
              }

              v96 -= v118;
              v115 -= 4;
            }

            while (v115);
          }

          else
          {
            v113 = 0;
          }

          v119 = v274;
          v120 = *(v274 + 16 * v94 + 8);
          if (v100 > 2147483630)
          {
            v283 = 1;
            v255 = v34;
            v121 = v94;
            v122 = v93;
            bzero(v103, 4 * v282);
            v94 = v121;
            v34 = v255;
            v93 = v122;
            v100 = v283;
            v119 = v274;
          }

          v123 = v100 + 1;
          v283 = v100 + 1;
          v124 = (v119 + 16 * v94);
          v125 = v124[1];
          v126 = v281;
          if (v125)
          {
            v127 = *v124;
            v128 = 4 * v125;
            do
            {
              v129 = *v127++;
              v126[v129] = v123;
              v128 -= 4;
            }

            while (v128);
            v123 = v283;
          }

          if (v126[v108] >= v123)
          {
            v130 = *&v269[4 * v94];
            v131 = *v107;
            if (v130 < *v107)
            {
              do
              {
                if (v126[v130] < v283)
                {
                  v126[v130] = v283;
                  ++v120;
                  v131 = *v107;
                }

                ++v130;
              }

              while (v130 < v131);
            }

            v132 = (v119 + 16 * v93);
            v133 = v132[1];
            if (v133)
            {
              v134 = 0;
              v135 = *v132;
              v136 = 4 * v133;
              do
              {
                v137 = *v135++;
                v138 = v126[v137];
                v65 = v138 < v283;
                v139 = v138 >= v283;
                if (v65)
                {
                  ++v134;
                }

                v120 -= v139;
                v136 -= 4;
              }

              while (v136);
            }

            else
            {
              v134 = 0;
            }

            v140 = v131 - *&v269[4 * v94];
            v143 = v96 == v140 + 1 && v120 == v96 && v113 == 0 && v134 == 0;
            if (v143 || (*a17 & 0x80000000) == 0 && (v144 = v107[1] - v131, v145 = v140 + *(v276 + 16 * v94 + 8), v256 = v140 + v125, v146 = sub_23676F5EC(a16, v144 + *(v276 + 16 * v93 + 8), v144 + v133, v144), v147 = v146 + sub_23676F5EC(a16, v145, v256, v140), sub_23676F5EC(a16, v145 + v113, v256 + v134, v144 + v140) < v147))
            {
              *&v263[4 * v38] = *&v253[4 * v38];
              sub_23676DB54(v275, v38);
              sub_23676DB54(v273, v38);
              sub_23676DB54(v279, *a7 - 2);
              sub_23676DB54(v277, *a7 - 2);
              --*a7;
            }
          }
        }
      }

      v37 = v263;
      v33 = a7;
      v36 = v262;
      v32 = v269;
    }

    while (v34 != v262);
    v148 = *a7;
    v19 = a17;
  }

  *&v32[4 * v148] = v36;
  v149 = v32;
  v150 = (*(v19 + 24))(4 * *v33 + 4);
  *a8 = v150;
  memcpy(v150, v149, 4 * *v33 + 4);
  sub_23676DEF8(*v33, v275, a9, a10, v19);
  sub_23676DEF8(*v33, v273, a11, a12, v19);
  sub_23676F6E4(v273);
  sub_23676F6E4(v275);
  v270 = *v33;
  v151 = 8 * v270;
  v152 = (*(v19 + 24))(v151 + 16);
  bzero(v152, v151 + 16);
  v153 = v270;
  if (v270 < 1)
  {
    v155 = 0;
  }

  else
  {
    v154 = 0;
    v155 = 0;
    v156 = v152 + 2;
    v157 = v280;
    do
    {
      v158 = *(v157 + 16 * v154 + 8);
      v159 = v283;
      if (v283 > 2147483630)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v153 = v270;
        v159 = v283;
        v157 = v280;
      }

      v160 = v159 + 1;
      v283 = v160;
      v161 = (v157 + 16 * v154);
      v162 = v161[1];
      if (v162)
      {
        v163 = *v161;
        v164 = v281;
        v165 = 4 * v162;
        do
        {
          v166 = *v163++;
          v164[v166] = v160;
          ++v156[v166];
          v165 -= 4;
        }

        while (v165);
      }

      v155 += v158;
      v167 = (v278 + 16 * v154);
      v168 = v167[1];
      if (v168)
      {
        v169 = *v167;
        v170 = v281;
        v171 = 4 * v168;
        v172 = v283;
        do
        {
          v173 = *v169;
          if (v170[v173] < v172)
          {
            ++v155;
            ++v156[v173];
          }

          ++v169;
          v171 -= 4;
        }

        while (v171);
      }

      ++v154;
    }

    while (v154 != v153);
    v174 = v152[1];
    v175 = v153;
    do
    {
      v174 += *v156;
      *v156++ = v174;
      --v175;
    }

    while (v175);
  }

  *a14 = (*(v19 + 24))(4 * v155);
  *a15 = (*(v19 + 24))(v155);
  v176 = (*(v19 + 24))(4 * v155);
  v177 = (*(v19 + 24))(v155);
  v178 = v270;
  if (v270 < 1)
  {
    v198 = &a13[v270];
    *v198 = 0;
    v249 = v283;
    if (v283 > 2147483630)
    {
      v283 = 1;
      bzero(v281, 4 * v282);
      v249 = v283;
    }

    v239 = 0;
    v283 = v249 + 1;
  }

  else
  {
    v179 = 0;
    v180 = 0;
    v181 = a14;
    do
    {
      a13[v179] = v180;
      v182 = v283;
      if (v283 > 2147483630)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v181 = a14;
        v178 = v270;
        v182 = v283;
      }

      v283 = v182 + 1;
      v183 = (v280 + 16 * v179);
      v184 = v183[1];
      if (v184)
      {
        v185 = *v183;
        v186 = *v181;
        v187 = *a15;
        v188 = 4 * v184;
        v189 = v281;
        do
        {
          v190 = *v185++;
          *(v186 + 4 * v180) = v190;
          *(v187 + v180) = 1;
          *(v29 + 8 * v190) = v180++;
          v189[v190] = v283;
          v188 -= 4;
        }

        while (v188);
      }

      v191 = (v278 + 16 * v179);
      v192 = v191[1];
      if (v192)
      {
        v193 = *v191;
        v194 = v281;
        v195 = 4 * v192;
        do
        {
          v196 = *v193;
          if (v194[*v193] >= v283)
          {
            *(*a15 + *(v29 + 8 * v196)) = 3;
          }

          else
          {
            *(*v181 + 4 * v180) = v196;
            *(*a15 + v180++) = 2;
          }

          ++v193;
          v195 -= 4;
        }

        while (v195);
      }

      ++v179;
    }

    while (v179 != v178);
    v197 = 0;
    v198 = &a13[v178];
    *v198 = v180;
    v199 = *a13;
    v200 = v152 + 1;
    do
    {
      v201 = v197++;
      v202 = a13[v197];
      if (v199 < v202)
      {
        v203 = *v181;
        v204 = *a15;
        do
        {
          v205 = *(v203 + 4 * v199);
          v206 = v200[v205];
          *(v176 + 4 * v206) = v201;
          *(v177 + v206) = *(v204 + v199);
          v200[v205] = v206 + 1;
          ++v199;
          v202 = a13[v197];
        }

        while (v199 < v202);
      }

      v199 = v202;
    }

    while (v197 != v178);
    v207 = v29 + 8 * v178;
    v208 = v283;
    if (v283 > 2147483630)
    {
      v283 = 1;
      bzero(v281, 4 * v282);
      v181 = a14;
      v178 = v270;
      v208 = v283;
    }

    v209 = 0;
    v210 = 0;
    v211 = v208 + 1;
    v283 = v211;
    do
    {
      *(v207 + 4 * v209) = v178;
      v212 = v152[v209];
      v213 = v209 + 1;
      v214 = v152[v209 + 1];
      v65 = v214 <= v212;
      v215 = v214 - v212;
      if (!v65)
      {
        v216 = 0;
        v217 = v210;
        v218 = &a18[16 * (v251 >> 3) + 4 + 8 * v210 + v254];
        v219 = v177 + v212;
        v220 = v176 + 4 * v212;
        do
        {
          v221 = *(v219 + v216);
          if (v221 == 3)
          {
            v222 = *(v220 + 4 * v216);
            if (v222 >= *(v207 + 4 * v209))
            {
              v222 = *(v207 + 4 * v209);
            }

            *(v207 + 4 * v209) = v222;
          }

          *(v218 - 1) = *(v220 + 4 * v216);
          *v218 = v221;
          v218 += 8;
          ++v216;
        }

        while (v215 != v216);
        v210 += v216;
        if (v217 + v216 - 1 >= 0)
        {
          v223 = v281;
          do
          {
            v224 = v29 + 8 * --v210;
            v225 = *v224;
            if (*v224 < *(v207 + 4 * v209))
            {
              v226 = *(v224 + 4);
              v227 = v223[v225];
              v228 = __OFSUB__(v227, v283);
              v229 = v227 - v283;
              if (v229 < 0 != v228)
              {
                v223[v225] = v283 + v226;
                v230 = &v152[v225];
                v232 = *v230;
                v231 = v230[1];
                v65 = v231 <= v232;
                v233 = v231 - v232;
                if (!v65)
                {
                  v234 = (v176 + 4 * v232);
                  v235 = (v177 + v232);
                  do
                  {
                    v236 = *v235++;
                    if ((v236 & v226) != 0)
                    {
                      v237 = v29 + 8 * v210;
                      *v237 = *v234;
                      *(v237 + 4) = v226;
                      ++v210;
                    }

                    ++v234;
                    --v233;
                  }

                  while (v233);
                }
              }

              else if (v229 != v226)
              {
                *(v207 + 4 * v209) = v225;
              }
            }
          }

          while (v210 > 0);
          v211 = v283;
        }
      }

      if (v211 >= 2147483628)
      {
        v283 = 1;
        bzero(v281, 4 * v282);
        v181 = a14;
        v178 = v270;
        v211 = v283;
      }

      v211 += 3;
      v283 = v211;
      v209 = v213;
    }

    while (v213 != v178);
    v238 = 0;
    v239 = 0;
    v240 = *a13;
    do
    {
      v241 = v240;
      a13[v238] = v239;
      v242 = v238 + 1;
      v240 = a13[v238 + 1];
      if (v241 >= v240)
      {
        goto LABEL_180;
      }

      v243 = 0;
      v244 = *v181;
      do
      {
        v245 = *(v244 + 4 * v241);
        if (v238 <= *(v207 + 4 * v245))
        {
          *(v244 + 4 * v239) = v245;
          v246 = *(v207 + 4 * v245);
          v247 = *a15;
          if (v238 == v246)
          {
            v243 = 1;
            v248 = 3;
          }

          else
          {
            v248 = *(v247 + v241);
          }

          *(v247 + v239++) = v248;
        }

        ++v241;
      }

      while (v240 != v241);
      v241 = v240;
      if ((v243 & 1) == 0)
      {
LABEL_180:
        if (v239 < v241)
        {
          *(*v181 + 4 * v239) = *(v207 + 4 * v238);
          *(*a15 + v239++) = 3;
        }
      }

      ++v238;
    }

    while (v242 != v178);
    v19 = a17;
  }

  *v198 = v239;
  (*(v19 + 32))(v152);
  (*(v19 + 32))(v176);
  (*(v19 + 32))(v177);
  sub_23676F6E4(v277);
  return sub_23676F6E4(v279);
}

void sub_23676D620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_23676F6E4(&a53);
  sub_23676F6E4(&a68);
  sub_23676F6E4((v68 - 256));
  _Unwind_Resume(a1);
}

unint64_t sub_23676D678(uint64_t a1, int a2, unint64_t a3)
{
  v3 = *(*(a1 + 72) + 8 * a2);
  if (v3)
  {
    v4 = 0;
    do
    {
      *(a3 + 4 * v4++) = *v3;
      v3 = *(v3 + 8);
    }

    while (v3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (4 * v5)
  {
    v6 = (a3 + 4 * v5 - 4);
    if (v6 > a3)
    {
      v7 = a3 + 4;
      do
      {
        v8 = *(v7 - 4);
        *(v7 - 4) = *v6;
        *v6-- = v8;
        v9 = v7 >= v6;
        v7 += 4;
      }

      while (!v9);
    }
  }

  return a3;
}

void *sub_23676D6EC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v16 = a9;
  sub_23672AB18(a6);
  v57 = a6;
  *(*a6 + 4 * a2) = *(a6 + 16);
  if (a4)
  {
    v53 = 0;
    v17 = (4 * a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = &a9[v17];
    v19 = a3;
    v20 = &a9[v17 + v17];
    v21 = v19 + 4 * a4;
    v54 = v19;
    do
    {
      v23 = *(v21 - 4);
      v21 -= 4;
      v22 = v23;
      v24 = sub_23676D678(a5, v23, &v20[v17]);
      if (!v25)
      {
LABEL_11:
        v55 = v22;
        v56 = v21;
        *v18 = v22;
        *v20 = 0;
        sub_23672AB18(a7);
        v30 = 1;
        while (1)
        {
          v31 = v18[v30 - 1];
          v32 = sub_23676D678(a5, v31, &v20[v17]);
          v33 = *&v20[4 * v30 - 4];
          if (v34 <= v33)
          {
            *(*a7 + 4 * v31) = *(a7 + 16);
            --v30;
          }

          else
          {
            *&v20[4 * v30 - 4] = v33 + 1;
            v35 = *(v32 + 4 * v33);
            sub_23676D678(a5, v35, &v20[v17]);
            if (v36 && *(*a7 + 4 * v35) < *(a7 + 16))
            {
              v37 = sub_23676D678(a5, v35, &v20[v17]);
              if (v38)
              {
                v39 = *v57;
                v40 = 4 * v38;
                while (*&v39[4 * *v37] < *(v57 + 16))
                {
                  ++v37;
                  v40 -= 4;
                  if (!v40)
                  {
                    goto LABEL_19;
                  }
                }

                v41 = v30;
                v18[v30] = v35;
                v42 = *(v57 + 16);
                v43 = &a9[v17];
                do
                {
                  v44 = *v43;
                  v43 += 4;
                  *&v39[4 * v44] = v42;
                  --v41;
                }

                while (v41);
                v19 = v54;
                v21 = v56;
                goto LABEL_27;
              }

LABEL_19:
              v18[v30] = v35;
              *&v20[4 * v30++] = 0;
            }
          }

          if (v30 <= 0)
          {
            v21 = v56;
            v19 = v54;
            v46 = v55;
            *(*v57 + 4 * v55) = *(v57 + 16);
            v45 = v53;
            v26 = a9;
            ++v53;
            goto LABEL_26;
          }
        }
      }

      v26 = *v57;
      v27 = 4 * v25;
      while (1)
      {
        v28 = *v24;
        if (v28 != a2 && *&v26[4 * v28] >= *(v57 + 16))
        {
          break;
        }

        ++v24;
        v27 -= 4;
        if (!v27)
        {
          goto LABEL_11;
        }
      }

      v45 = v22;
      v46 = *(v57 + 16);
LABEL_26:
      *&v26[4 * v45] = v46;
LABEL_27:
      ;
    }

    while (v21 != v19);
    v47 = v53;
    if (v53)
    {
      v16 = a9;
      v48 = &a9[4 * v53 - 4];
      if (v48 > a9)
      {
        v49 = (a9 + 4);
        do
        {
          v50 = *(v49 - 4);
          *(v49 - 4) = *v48;
          *v48 = v50;
          v48 -= 4;
          v51 = v49 >= v48;
          v49 += 4;
        }

        while (!v51);
      }
    }

    else
    {
      v16 = a9;
    }
  }

  else
  {
    v47 = 0;
  }

  return sub_23676D9A0(a5, v16, v47);
}

void *sub_23676D9A0(uint64_t a1, char *__src, unint64_t a3)
{
  v3 = a3;
  if (a3 > *(a1 + 56))
  {
    v6 = 4 * *(a1 + 64) + 40;
    v7 = (*(*a1 + 24))(v6);
    if (v7)
    {
      v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
      *v7 = v8;
      v7[1] = (v7 + v6 - v8) >> 2;
      v7[2] = 0;
      v7[3] = 0;
    }

    v9 = *(a1 + 40);
    *(v9 + 16) = v7;
    v7[3] = v9;
    *(a1 + 40) = v7;
    *(a1 + 48) = *v7;
    *(a1 + 64) *= 2;
  }

  v10 = *(a1 + 8);
  v11 = (*(a1 + 16) + 16 * v10);
  v11[1] = v3;
  v12 = *(a1 + 56);
  *v11 = *(a1 + 48);
  *(a1 + 48) += 4 * v3;
  *(a1 + 56) = v12 - v3;
  result = memcpy(*(*(a1 + 16) + 16 * v10), __src, 4 * v3);
  v14 = *(a1 + 104);
  if (v3 + v14 > *(*(a1 + 96) + 8))
  {
    v15 = 16 * *(a1 + 64) + 40;
    result = (*(*a1 + 24))(v15);
    if (result)
    {
      v16 = (result + 39) & 0xFFFFFFFFFFFFFFF8;
      *result = v16;
      result[1] = (result + v15 - v16) >> 4;
      result[2] = 0;
      result[3] = 0;
    }

    LODWORD(v14) = 0;
    v17 = *(a1 + 96);
    *(v17 + 16) = result;
    result[3] = v17;
    *(a1 + 96) = result;
    *(a1 + 104) = 0;
    *(a1 + 112) *= 2;
  }

  if (v3)
  {
    v18 = *(a1 + 8);
    do
    {
      v19 = *(*(a1 + 72) + 8 * *__src);
      v14 = **(a1 + 96) + 16 * v14;
      *v14 = v18;
      *(v14 + 8) = v19;
      v20 = *(a1 + 104);
      v21 = *__src;
      __src += 4;
      *(*(a1 + 72) + 8 * v21) = **(a1 + 96) + 16 * v20;
      LODWORD(v14) = v20 + 1;
      *(a1 + 104) = v20 + 1;
      --v3;
    }

    while (v3);
  }

  ++*(a1 + 8);
  return result;
}

uint64_t sub_23676DB54(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = v3 - 1;
  v5 = *(result + 16);
  v6 = (v5 + 16 * (v3 - 1));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = 4 * v7;
    do
    {
      v10 = *v8++;
      *(*(result + 72) + 8 * v10) = *(*(*(result + 72) + 8 * v10) + 8);
      v9 -= 4;
    }

    while (v9);
    v5 = *(result + 16);
    v11 = *(v5 + 16 * v4 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = (v5 + 16 * v4);
  *(result + 104) -= v11;
  v13 = v5 + 16 * v3;
  v14 = *(v13 - 24);
  if (v14)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    LODWORD(v17) = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      if (v11 <= v17)
      {
        break;
      }

      v20 = *(v13 - 32);
      v21 = *(v20 + 4 * v15);
      v22 = *v12;
      result = *(*v12 + v17);
      if (v21 >= result)
      {
        if (v21 == result)
        {
          if (v21 != a2)
          {
            *(v20 + 4 * v18++) = v21;
          }

          LODWORD(v16) = v16 + 1;
        }

        else if (result != a2)
        {
          v22[v19++] = result;
          v23 = *(*(v2 + 72) + 8 * v22[v17]);
          v24 = **(v2 + 96) + 16 * *(v2 + 104);
          *v24 = *(v2 + 8) - 2;
          *(v24 + 8) = v23;
          v25 = *(v2 + 104);
          result = *(v2 + 72);
          *(result + 8 * *(*v12 + v17)) = **(v2 + 96) + 16 * v25;
          *(v2 + 104) = v25 + 1;
        }

        LODWORD(v17) = v17 + 1;
      }

      else
      {
        if (v21 != a2)
        {
          *(v20 + 4 * v18++) = v21;
        }

        LODWORD(v16) = v16 + 1;
      }

      v15 = v16;
    }

    while (v14 > v16);
    v17 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    LODWORD(v16) = 0;
  }

  if (v14 > v16)
  {
    v16 = v16;
    v26 = *(v13 - 32);
    do
    {
      v27 = *(v26 + 4 * v16);
      if (v27 != a2)
      {
        *(v26 + 4 * v18++) = v27;
      }

      ++v16;
    }

    while (v14 > v16);
  }

  while (v11 > v17)
  {
    v28 = *v12;
    v29 = *(*v12 + v17);
    if (v29 != a2)
    {
      v28[v19++] = v29;
      v30 = *(*(v2 + 72) + 8 * v28[v17]);
      v31 = **(v2 + 96) + 16 * *(v2 + 104);
      *v31 = *(v2 + 8) - 2;
      *(v31 + 8) = v30;
      v32 = *(v2 + 104);
      result = *(v2 + 72);
      *(result + 8 * *(*v12 + v17)) = **(v2 + 96) + 16 * v32;
      *(v2 + 104) = v32 + 1;
    }

    ++v17;
  }

  if (v19)
  {
    v33 = *(v13 - 32);
    v34 = *(v2 + 40);
    v35 = *v34;
    v36 = v33 - *v34;
    if (v33 < *v34 || (v37 = v34[1], v33 >= v35 + 4 * v37))
    {
      v39 = v33 + 4 * v14;
      v40 = v19;
      v41 = v39 + 4 * v19;
      v42 = v34[3];
      v43 = *v42;
      v44 = v42[1];
      v45 = v19 + v18;
      if (v41 <= v43 + 4 * v44)
      {
        v50 = v44 - ((v33 - v43) >> 2);
        if (v45 != -1)
        {
          v50 = v45;
        }

        *(v13 - 32) = v33;
        *(v13 - 24) = v50;
        memcpy((v33 + 4 * v18), *v12, 4 * v40);
        v51 = *(v13 - 32);
        v52 = *(v13 - 24);
      }

      else
      {
        v46 = *v12 - v35;
        if (v45 == -1)
        {
          v45 = v34[1] - (v46 >> 2);
        }

        v47 = v35 + v46;
        memcpy((v35 + v46 + 4 * v19), *(v13 - 32), 4 * v18);
        *(v13 - 32) = v47;
        *(v13 - 24) = v45;
      }
    }

    else
    {
      if (v18 != v16)
      {
        *(v33 + 4 * v18) = *(*v12 + v19 - 1);
      }

      if (v19 + v18 == -1)
      {
        v38 = v37 - (v36 >> 2);
      }

      else
      {
        v38 = v19 + v18;
      }

      *(v13 - 32) = v33;
      *(v13 - 24) = v38;
    }

    result = std::__sort<std::__less<int,int> &,int *>();
  }

  else if (v18 != v16)
  {
    v48 = v18;
    v49 = *(v2 + 16) + 16 * *(v2 + 8);
    *(v49 - 32) = *(v13 - 32);
    *(v49 - 24) = v48;
  }

  v53 = *(v13 - 32);
  v54 = *(v2 + 40);
  v55 = *v54;
  if (v53 < *v54 || (v56 = v54[1], v53 >= v55 + 4 * v56))
  {
    *(v2 + 48) = *v54;
  }

  else
  {
    v57 = v53 + 4 * *(v13 - 24);
    *(v2 + 48) = v57;
    *(v2 + 56) = v56 - ((v57 - v55) >> 2);
  }

  --*(v2 + 8);
  return result;
}

uint64_t sub_23676DEF8(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a1 <= 0)
  {
    result = (*(a5 + 24))(0);
    v22 = 0;
    *a4 = result;
  }

  else
  {
    v9 = 0;
    v10 = (*(a2 + 16) + 8);
    v11 = a1;
    do
    {
      v12 = *v10;
      v10 += 2;
      v9 += v12;
      --v11;
    }

    while (v11);
    result = (*(a5 + 24))(4 * v9);
    v14 = 0;
    v15 = 0;
    *a4 = result;
    v16 = *(a2 + 16);
    do
    {
      *(a3 + 8 * v14) = v15;
      v17 = (v16 + 16 * v14);
      v18 = v17[1];
      if (v18)
      {
        v19 = *v17;
        v20 = 4 * v18;
        do
        {
          v21 = *v19++;
          v22 = v15 + 1;
          *(result + 4 * v15++) = v21;
          v20 -= 4;
        }

        while (v20);
      }

      else
      {
        v22 = v15;
      }

      ++v14;
      v15 = v22;
    }

    while (v14 != a1);
  }

  *(a3 + 8 * a1) = v22;
  return result;
}

uint64_t sub_23676DFE0(int a1, int a2, uint64_t a3)
{
  v3 = 2 * a2;
  v4 = 8 * a2 + 8 * a2 + 24;
  if (v4 <= 8 * (2 * a2 + 2) + 16)
  {
    v4 = 8 * (v3 + 2) + 16;
  }

  if (v4 <= a3 + 4 * (a3 + a2) + 8 * ((2 * a2) | 1) + 40)
  {
    v4 = a3 + 4 * (a3 + a2) + 8 * ((2 * a2) | 1) + 40;
  }

  v5 = v4 + 4 * (3 * a2 + 2 * a1 + 1) + 40;
  if (12 * a2 + 16 > v5)
  {
    v5 = 12 * a2 + 16;
  }

  return a3 + 12 * a2 + 8 * a2 + 4 * (a3 + 2 * a1 + v3) + v5 + 80;
}

char *sub_23676E074(uint64_t a1, unsigned __int8 a2, char *a3)
{
  v3 = a3;
  v5 = *(a1 + 60);
  v6 = (4 * v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = &a3[v6];
  v228 = a3;
  v229 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  v230 = 1;
  bzero(a3, 4 * v5);
  v8 = *(a1 + 60);
  v9 = (4 * v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v226[0] = v7;
  v226[1] = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v227 = 1;
  bzero(v7, 4 * v8);
  v10 = *(a1 + 168);
  v11 = *(a1 + 216);
  v201 = 2 * v10;
  v202 = v11[v10];
  v200 = v10 + 2;
  v12 = (v202 + 8 * (v10 + 2) + 4 * (v202 + 2 * v10) + 39) & 0xFFFFFFFFFFFFFFF8;
  v220 = &v7[v9 + v12];
  sub_23676F7B0(&v222, v10, v11, v10 + 1, *(a1 + 224), v202, *(a1 + 232), v202, &v7[v9]);
  v13 = *(a1 + 168);
  v14 = 12 * v13;
  v15 = (12 * v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(a1 + 168);
  if (v13 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 184);
    v19 = *(a1 + 200);
    v22 = *v18;
    v20 = v18 + 1;
    v21 = v22;
    v25 = *v19;
    v23 = v19 + 1;
    v24 = v25;
    v26 = (*(a1 + 176) + 4);
    v27 = &v3[v6 + 4 + v12 + v9];
    do
    {
      v28 = v20[v17];
      v29 = *v26 - *(v26 - 1);
      v30 = v23[v17];
      *(v27 - 1) = v29 + v28 - v21;
      *v27 = v29 + v30 - v24;
      *(v27 + 1) = v29;
      ++v26;
      v27 += 12;
      v24 = v30;
      v21 = v28;
      ++v17;
    }

    while (v17 < *(a1 + 168));
    v16 = *(a1 + 168);
  }

  __n = v220 + v15;
  v205 = v6;
  v206 = v3;
  v203 = v12;
  v204 = v9;
  v207 = v15;
  if ((*a1 & 0x80000000) == 0 && v16 >= 1)
  {
    v31 = 0;
    __src = v14 / 0xC;
    do
    {
      v32 = sub_23676EE48(&v222, v31);
      if (v32 != 0x7FFFFFFF && (v32 & 0xFF00000000) == 0x300000000)
      {
        sub_23676EEDC(v31, v32, &v222, v220, __src, a1, a2, &v228);
      }

      ++v31;
      v34 = *(a1 + 168);
    }

    while (v31 < v34);
    if (v34 < 1)
    {
      v16 = *(a1 + 168);
    }

    else
    {
      v35 = (__n + 8 * v34);
      v36 = &v3[v203 + v207 + v6 + v9];
      do
      {
        v208 = v34--;
        if (v34 == *(v223 + 4 * v34))
        {
          v37 = v230;
          v38 = v228;
          if (v230 > 2147483630)
          {
            v230 = 1;
            bzero(v228, 4 * v229);
            v37 = v230;
            v38 = v228;
          }

          v39 = 0;
          v230 = v37 + 1;
          *&v38[4 * v34] = v37 + 1;
          v40 = *(a1 + 216);
          v41 = v34;
          do
          {
            v42 = v41;
            v43 = (v40 + 8 * v41);
            for (i = *v43; i < v43[1]; ++i)
            {
              v45 = *(v223 + 4 * *(*(a1 + 224) + 4 * i));
              v46 = *(*(a1 + 232) + i);
              if (*&v228[4 * v45] >= v230)
              {
                if (v34 != v45)
                {
                  v48 = v35[v45];
                  if (v48 != -1)
                  {
                    v49 = __n + 8 * v48;
                    v51 = *(v49 + 4);
                    v50 = (v49 + 4);
                    if (v51 != v46)
                    {
                      *v50 = 3;
                    }
                  }
                }
              }

              else
              {
                *&v228[4 * v45] = v230;
                if (v34 == sub_23676EE48(&v222, v45))
                {
                  v35[v45] = v39;
                  v47 = __n + 8 * v39;
                  *v47 = v45;
                  *(v47 + 4) = v46;
                  ++v39;
                }

                else
                {
                  v35[v45] = -1;
                }
              }

              v40 = *(a1 + 216);
              v43 = (v40 + 8 * v42);
            }

            v41 = *(v224 + 4 * v42);
          }

          while (v41 != -1);
          v52 = 126 - 2 * __clz(v39);
          if (v39)
          {
            v53 = v52;
          }

          else
          {
            v53 = 0;
          }

          sub_23676F950(__n, (__n + 8 * v39), v231, v53, 1);
          v54 = (v39 - 1);
          if (v39 >= 1)
          {
            v55 = v39;
            do
            {
              v56 = *(__n + 8 * (v55 - 1));
              if (*(v223 + 4 * v56) == v56 && v55 >= 2)
              {
                v58 = 0;
                do
                {
                  v59 = *&v36[8 * v58];
                  v60 = *(v223 + 4 * v59) == v59 && BYTE4(v56) == BYTE4(v59);
                  if (v60 && (BYTE4(v56) == 3 || sub_23676F2D0(&v222, v56, *&v36[8 * v58], &v228, v226, v35)))
                  {
                    sub_23676EEDC(v59, v56, &v222, v220, __src, a1, a2, &v228);
                  }

                  ++v58;
                }

                while (v54 != v58);
              }

              --v54;
              v61 = v55-- > 1;
            }

            while (v61);
          }
        }
      }

      while (v208 > 1);
      v16 = *(a1 + 168);
      v3 = v206;
      v9 = v204;
    }

    v12 = v203;
  }

  v198 = 4 * *(a1 + 60) + 7;
  v62 = __n + (v198 & 0xFFFFFFFFFFFFFFF8);
  v197 = 4 * v16 + 7;
  v63 = v197 & 0xFFFFFFFFFFFFFFF8;
  v221 = v62 + (v198 & 0xFFFFFFFFFFFFFFF8);
  v64 = v221 + (v197 & 0xFFFFFFFFFFFFFFF8);
  v65 = (v64 + (v197 & 0xFFFFFFFFFFFFFFF8));
  v199 = (4 * (v16 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v65 + v199;
  v67 = v230;
  __srca = (v65 + v199);
  if (v230 > 2147483630)
  {
    v230 = 1;
    bzero(v228, 4 * v229);
    v66 = v65 + v199;
    v67 = v230;
    v16 = *(a1 + 168);
  }

  v68 = v67 + 1;
  v230 = v67 + 1;
  if (v16 >= 1)
  {
    v69 = 0;
    v70 = &v66[v63];
    v71 = &v66[v63 + v63];
    v72 = v16;
    v73 = v228 - 4;
    v74 = (v225 + 8 * v16);
    v75 = v74;
    do
    {
      v76 = *--v75;
      if (v76 == *v74)
      {
        *&v66[4 * v69] = v72 - 1;
        *&v70[4 * v69] = v72 - 1;
        *(v71 + 8 * v69++) = *(*(a1 + 216) + 8 * v72 - 8);
        *&v73[4 * v72] = v68;
      }

      --v72;
      v74 = v75;
    }

    while ((v72 + 1) > 1);
    if (v69)
    {
      v77 = 0;
      v78 = 0;
      v79 = *(a1 + 216);
      v80 = v224;
      v81 = v223;
      v82 = v228;
      v83 = v12 + v207 + v9 + v6;
      v84 = &v3[v83];
      v85 = &v3[(v198 & 0xFFFFFFFFFFFFFFF8) + v83];
      while (1)
      {
        while (1)
        {
          v86 = v69 - 1;
          v87 = *&v70[4 * v69 - 4];
          v88 = *(v71 + 8 * (v69 - 1));
          if (v88 >= *(v79 + 8 + 8 * v87))
          {
            break;
          }

          v89 = *(v81 + 4 * *(*(a1 + 224) + 4 * v88));
          *(v71 + 8 * v86) = v88 + 1;
          v90 = v230;
          if (*&v82[4 * v89] >= v230)
          {
LABEL_73:
            if (!v69)
            {
              goto LABEL_84;
            }
          }

          else
          {
            *&v66[4 * v69] = v89;
            *&v70[4 * v69] = v89;
            *(v71 + 8 * v69) = *(v79 + 8 * v89);
            *&v82[4 * v89] = v90;
            if (!++v69)
            {
              goto LABEL_84;
            }
          }
        }

        v91 = *(v80 + 4 * v87);
        if (v91 != -1)
        {
          *&v70[4 * v86] = v91;
          *(v71 + 8 * v86) = *(v79 + 8 * v91);
          goto LABEL_73;
        }

        v92 = *&v66[4 * v86];
        *(v221 + 4 * v77) = v92;
        v65[v77] = v78;
        if (v92 != -1)
        {
          v93 = *(a1 + 176);
          do
          {
            *(v64 + 4 * v92) = v77;
            v94 = (v93 + 4 * v92);
            v95 = *v94;
            if (v95 < v94[1])
            {
              v96 = &v84[4 * v78];
              v97 = &v85[4 * v95];
              do
              {
                *v96 = v95;
                v96 += 4;
                *v97 = v78;
                v97 += 4;
                ++v95;
                ++v78;
              }

              while (v95 < v94[1]);
            }

            v92 = *(v80 + 4 * v92);
          }

          while (v92 != -1);
        }

        ++v77;
        --v69;
        if (!v86)
        {
          goto LABEL_84;
        }
      }
    }
  }

  v78 = 0;
  v77 = 0;
LABEL_84:
  v65[v77] = v78;
  v98 = *(a1 + 168);
  if (v98 < 1)
  {
    v103 = 0uLL;
  }

  else
  {
    v99 = 0;
    v100 = &v3[v12 + 8 + v9 + v6];
    v101 = 0uLL;
    do
    {
      if (v99 == *(v223 + 4 * v99))
      {
        v102 = vld1_dup_f32(v100);
        v101 = vaddw_s32(v101, vsub_s32(*(v100 - 2), v102));
      }

      ++v99;
      v100 += 3;
    }

    while (v98 != v99);
    v103 = vshlq_n_s64(v101, 2uLL);
  }

  v219 = v103.i64[1];
  v104 = (*(a1 + 24))(v103.i64[0]);
  v105 = (*(a1 + 24))(v219);
  v209 = v77 + 1;
  __na = 8 * (v77 + 1);
  v212 = v77;
  v213 = &__srca[__na / 8];
  v218 = v77;
  if (v77 < 1)
  {
    v108 = 0;
    v107 = 0;
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = v230;
    do
    {
      v110 = v106;
      __srca[v106] = v108;
      v213[v106] = v107;
      if (v109 > 2147483630)
      {
        v230 = 1;
        bzero(v228, 4 * v229);
        v109 = v230;
      }

      v111 = v109 + 1;
      v230 = v111;
      v112 = v65[v106++];
      if (v112 < v65[v110 + 1])
      {
        v113 = v228;
        do
        {
          *&v113[4 * v112++] = v111;
        }

        while (v112 < v65[v106]);
      }

      v114 = *(v221 + 4 * v110);
      if (v114 != -1)
      {
        v115 = *(a1 + 184);
        v116 = v228;
        v117 = v224;
        do
        {
          v118 = (v115 + 8 * v114);
          v120 = *v118;
          v119 = v118[1];
          v61 = v119 <= v120;
          v121 = v119 - v120;
          if (!v61)
          {
            v122 = (*(a1 + 192) + 4 * v120);
            do
            {
              v123 = *v122++;
              v124 = *(v62 + 4 * v123);
              if (*&v116[4 * v124] < v111)
              {
                *(v104 + 4 * v108++) = v124;
                v111 = v230;
                *&v116[4 * v124] = v230;
              }

              --v121;
            }

            while (v121);
          }

          v114 = *(v117 + 4 * v114);
        }

        while (v114 != -1);
      }

      if (v111 > 2147483630)
      {
        v230 = 1;
        bzero(v228, 4 * v229);
        v111 = v230;
      }

      v109 = v111 + 1;
      v230 = v109;
      v125 = v65[v110];
      if (v125 < v65[v106])
      {
        v126 = v228;
        do
        {
          *&v126[4 * v125++] = v109;
        }

        while (v125 < v65[v106]);
      }

      v127 = *(v221 + 4 * v110);
      if (v127 == -1)
      {
        v77 = v212;
      }

      else
      {
        v128 = *(a1 + 200);
        v129 = v228;
        v130 = v224;
        v77 = v212;
        do
        {
          v131 = (v128 + 8 * v127);
          v133 = *v131;
          v132 = v131[1];
          v61 = v132 <= v133;
          v134 = v132 - v133;
          if (!v61)
          {
            v135 = (*(a1 + 208) + 4 * v133);
            do
            {
              v136 = *v135++;
              v137 = *(v62 + 4 * v136);
              if (*&v129[4 * v137] < v109)
              {
                *(v105 + 4 * v107++) = v137;
                v109 = v230;
                *&v129[4 * v137] = v230;
              }

              --v134;
            }

            while (v134);
          }

          v127 = *(v130 + 4 * v127);
        }

        while (v127 != -1);
      }
    }

    while (v106 != v218);
  }

  __srca[v77] = v108;
  v138 = *(a1 + 184);
  v213[v77] = v107;
  memcpy(v138, __srca, __na);
  memcpy(*(a1 + 200), v213, __na);
  (*(a1 + 32))(*(a1 + 192));
  (*(a1 + 32))(*(a1 + 208));
  *(a1 + 192) = v104;
  *(a1 + 208) = v105;
  v139 = *(a1 + 168);
  v140 = &__srca[v139 + 1];
  v141 = *(*(a1 + 216) + 8 * v139);
  v142 = (4 * v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = v140 + v142;
  v144 = v140 + v142 + ((v141 + 7) & 0xFFFFFFFFFFFFFFF8);
  v145 = 4 * v139;
  bzero(v144, 4 * v139);
  if (v77 < 1)
  {
    v165 = 0;
    v167 = v207;
    v172 = v209;
  }

  else
  {
    v196 = v142;
    v214 = v139;
    v146 = 0;
    v147 = 0;
    v148 = &v144[(v145 + 7) & 0xFFFFFFFFFFFFFFF8];
    do
    {
      __srca[v146] = v147;
      v149 = v230;
      if (v230 > 2147483630)
      {
        v230 = 1;
        bzero(v228, 4 * v229);
        v149 = v230;
      }

      v230 = v149 + 1;
      v150 = *(v221 + 4 * v146);
      if (v150 != -1)
      {
        v151 = *(a1 + 216);
        v152 = v224;
        do
        {
          v153 = (v151 + 8 * v150);
          v154 = *v153;
          v155 = v153[1];
          if (*v153 < v155)
          {
            v156 = *(a1 + 224);
            v157 = v228;
            do
            {
              v158 = *(v64 + 4 * *(v156 + 4 * v154));
              if (v146 != v158)
              {
                if (*&v157[4 * v158] >= v230)
                {
                  v161 = *&v148[8 * v158];
                  v162 = (*(*(a1 + 232) + v154) | v143[v161]);
                  v143[v161] |= *(*(a1 + 232) + v154);
                  if (v162 == 3)
                  {
                    v163 = *&v144[4 * v158];
                    if (v146 < v163)
                    {
                      v163 = v146;
                    }

                    *&v144[4 * v158] = v163;
                  }
                }

                else
                {
                  *&v157[4 * v158] = v230;
                  *&v148[8 * v158] = v147;
                  *(v140 + v147) = v158;
                  v159 = *(*(a1 + 232) + v154);
                  v143[v147] = v159;
                  if (v159 == 3)
                  {
                    v160 = *&v144[4 * v158];
                    if (v146 < v160)
                    {
                      v160 = v146;
                    }

                    *&v144[4 * v158] = v160;
                  }

                  ++v147;
                  v155 = v153[1];
                }
              }

              ++v154;
            }

            while (v154 < v155);
          }

          v150 = *(v152 + 4 * v150);
        }

        while (v150 != -1);
      }

      ++v146;
    }

    while (v146 != v218);
    v164 = 0;
    v165 = 0;
    __srca[v212] = v147;
    v77 = v212;
    v166 = *__srca;
    v167 = v207;
    v168 = ((2 * v198) & 0xFFFFFFFFFFFFFFF0) + 16 * (v197 >> 3) + v203 + v207;
    v169 = v168 + v196;
    v170 = &v206[8 * v214 + 8 + v168 + v205 + v204 + v199];
    v171 = &v206[8 * v214 + 8 + v169 + v204 + v205 + v199];
    v172 = v209;
    do
    {
      __srca[v164] = v165;
      v173 = v164 + 1;
      v174 = __srca[v164 + 1];
      v175 = v174 - v166;
      if (v174 > v166)
      {
        v176 = 0;
        v177 = v170 + 4 * v166;
        v178 = v171 + v166;
        do
        {
          v179 = *(v177 + 4 * v176);
          if (v164 <= *&v144[4 * v179])
          {
            *(v140 + v165) = v179;
            v143[v165++] = *(v178 + v176);
          }

          ++v176;
        }

        while (v175 != v176);
      }

      v166 = v174;
      ++v164;
    }

    while (v173 != v218);
  }

  __srca[v77] = v165;
  *(a1 + 168) = v77;
  memcpy(*(a1 + 176), v65, 4 * v172);
  memcpy(*(a1 + 216), __srca, __na);
  memcpy(*(a1 + 224), v140, 4 * __srca[v77]);
  memcpy(*(a1 + 232), v143, __srca[v77]);
  memcpy(*(a1 + 136), *(a1 + 152), 4 * *(a1 + 60));
  result = memcpy(*(a1 + 144), *(a1 + 160), 4 * *(a1 + 60));
  v182 = *(a1 + 136);
  v181 = *(a1 + 144);
  v183 = *(a1 + 176);
  if (*(v183 + 4 * *(a1 + 168)) >= 1)
  {
    v184 = 0;
    v185 = *(a1 + 96);
    v186 = v182 + 4 * v185;
    v187 = v181 + 4 * v185;
    result = *(a1 + 160);
    v188 = &v206[v205 + v204 + ((8 * v200 + 5 * v202 + 4 * v201 + 39) & 0xFFFFFFFFFFFFFFF8) + v167];
    v189 = *(a1 + 152) + 4 * v185;
    v190 = &result[4 * v185];
    do
    {
      *(v189 + 4 * v184) = *(v186 + 4 * *(v188 + 4 * v184));
      *&v190[4 * v184] = *(v187 + 4 * *(v188 + 4 * v184));
      ++v184;
    }

    while (v184 < *(v183 + 4 * *(a1 + 168)));
  }

  LODWORD(v191) = *(a1 + 60);
  if (*(a1 + 88) + v191 >= 1)
  {
    v192 = 0;
    v193 = *(a1 + 152);
    do
    {
      *(v182 + 4 * *(v193 + 4 * v192)) = v192;
      ++v192;
      v191 = *(a1 + 60);
    }

    while (v192 < *(a1 + 88) + v191);
  }

  if (*(a1 + 92) + v191 >= 1)
  {
    v194 = 0;
    v195 = *(a1 + 160);
    do
    {
      *(v181 + 4 * *(v195 + 4 * v194)) = v194;
      ++v194;
    }

    while (v194 < *(a1 + 92) + *(a1 + 60));
  }

  return result;
}