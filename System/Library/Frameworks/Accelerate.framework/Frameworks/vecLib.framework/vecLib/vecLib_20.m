uint64_t SparseMultiply(SparseOpaqueSubfactor_Double *a1, DenseVector_Double a2)
{
  v2 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v2;
  v3 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v3;
  v4 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v4;
  v5 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v5;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  return SparseMultiply(v8, &v7);
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Double *a1, DenseVector_Double a2, DenseVector_Double a3)
{
  v3 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v6;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  return SparseMultiply(v10, &v9, &v8);
}

void SparseMultiply(SparseOpaqueSubfactor_Double *a1, DenseVector_Double a2, char *a3)
{
  v3 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v6;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  SparseMultiply(v8, &v7, a3);
}

void SparseMultiply(SparseOpaqueSubfactor_Double *a1, DenseVector_Double a2, DenseVector_Double a3, char *a4)
{
  v4 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v4;
  v5 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v5;
  v6 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v6;
  v7 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v7;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  SparseMultiply(v10, &v9, &v8, a4);
}

SparseOpaquePreconditioner_Double *SparseCreatePreconditioner@<X0>(SparseMatrix_Double *a1@<X1>, SparsePreconditioner_t a2@<W0>, SparseOpaquePreconditioner_Double *a3@<X8>)
{
  v4 = *(&a1->structure.blockSize + 2);
  v5 = 4;
  if (*&a1->structure.attributes)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*&a1->structure.attributes)
  {
    v5 = 0;
  }

  if (*(&a1->structure.rowCount + v6) * v4 < 1 || *(&a1->structure.rowCount + v5) * v4 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCE70();
    }

    _SparseTrap();
  }

  return _SparseCreatePreconditioner_Double(a3, a2, a1);
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Double *a2, DenseMatrix_Double *a3, DenseMatrix_Double *X)
{
  v60 = *MEMORY[0x277D85DE8];
  reportError = a1->options.base.reportError;
  p_options = &a1->options;
  v6 = reportError;
  v8 = *(&a2->structure.blockSize + 2);
  v9 = 4;
  if (*&a2->structure.attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&a2->structure.rowCount + v10) * v8;
  if (*&a2->structure.attributes)
  {
    v9 = 0;
  }

  v12 = *(&a2->structure.rowCount + v9) * v8;
  if (v11 < 1 || v12 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

LABEL_57:
      _SparseTrap();
    }

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
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", X);
    goto LABEL_54;
  }

  v14 = 4;
  if (*&X->attributes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(&X->rowCount + v15);
  if (*&X->attributes)
  {
    v17 = 0;
  }

  else
  {
    v17 = 4;
  }

  v18 = *(&X->rowCount + v17);
  attributes = a3->attributes;
  v20 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(&a3->rowCount + v21);
  if (!v20)
  {
    v14 = 0;
  }

  v23 = *(&a3->rowCount + v14);
  if (v18 != v23)
  {
    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *&buf = __PAIR64__(v16, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v18;
      HIWORD(buf) = 1024;
      LODWORD(v45) = v22;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v23;
      v27 = MEMORY[0x277D86220];
      v28 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_45;
    }

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
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", X);
LABEL_54:
    (v6)(&buf);
    result = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  if (v16 != v12)
  {
    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *&buf = __PAIR64__(v11, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v12;
      HIWORD(buf) = 1024;
      LODWORD(v45) = v16;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v18;
      v27 = MEMORY[0x277D86220];
      v28 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_45;
    }

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
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", X);
    goto LABEL_54;
  }

  if (v22 != v11)
  {
    if (v6)
    {
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
      v46 = 0u;
      v47 = 0u;
      buf = 0u;
      v45 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", X);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v11, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v12;
    HIWORD(buf) = 1024;
    LODWORD(v45) = v22;
    WORD2(v45) = 1024;
    *(&v45 + 6) = v18;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 0x1Au);
    goto LABEL_57;
  }

  method = a1->method;
  if (method == 2)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 0x40000000;
    v32[2] = sub_2367AC564;
    v32[3] = &unk_278A00590;
    v29 = *&a2->structure.rowIndices;
    v33 = *&a2->structure.rowCount;
    v34 = v29;
    data = a2->data;
    result = _SparseLSMRSolve_Double(p_options, X, a3, v32, 0);
    goto LABEL_58;
  }

  if (method != 1)
  {
    if (v12 == v11)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 0x40000000;
      v40[2] = sub_2367AC40C;
      v40[3] = &unk_278A00550;
      v30 = *&a2->structure.rowIndices;
      v41 = *&a2->structure.rowCount;
      v42 = v30;
      v43 = a2->data;
      result = _SparseCGSolve_Double(p_options, X, a3, v40, 0);
      goto LABEL_58;
    }

    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (v12 != v11)
  {
    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_2367CCEE8();
      goto LABEL_57;
    }

LABEL_53:
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
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", X);
    goto LABEL_54;
  }

  ApplyOperator[0] = MEMORY[0x277D85DD0];
  ApplyOperator[1] = 0x40000000;
  ApplyOperator[2] = sub_2367AC4B8;
  ApplyOperator[3] = &unk_278A00570;
  v25 = *&a2->structure.rowIndices;
  v37 = *&a2->structure.rowCount;
  v38 = v25;
  v39 = a2->data;
  result = _SparseGMRESSolve_Double(p_options, X, a3, ApplyOperator, 0);
LABEL_58:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2367AC40C(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367AC4B8(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367AC564(uint64_t a1, int a2, int a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *__src, SparseMatrix_Double *a2, DenseVector_Double a3, DenseVector_Double a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v10.rowCount = a3.count;
  v10.columnCount = 1;
  v10.columnStride = a3.count;
  *&v10.attributes = 0;
  v10.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v5 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v5;
  v8.data = a2->data;
  result = SparseSolve(&__dst, &v8, &v10, &X);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12 = *MEMORY[0x277D85DE8];
  v10.rowCount = a3.count;
  v10.columnCount = 1;
  v10.columnStride = a3.count;
  *&v10.attributes = 0;
  v10.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v5 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v5;
  v8.data = a2->data;
  result = SparseSolve(&__dst, &v8, &v10, &X);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(int *a1, void *ApplyOperator, uint64_t a3, DenseMatrix_Double *X)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
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
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(&X->rowCount + v11);
  v13 = *(a3 + 12);
  v14 = (v13 & 1) == 0;
  if (v13)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    v8 = 0;
  }

  if (v10 < 1 || v12 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCF60();
      }

      goto LABEL_41;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *__str = 0u;
    v27 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v6(__str);
    v25 = *MEMORY[0x277D85DE8];
    return 0xFFFFFFFFLL;
  }

  v17 = *(a3 + v15);
  v18 = *(a3 + v8);
  if (v17 < 1 || v18 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCFD8();
      }

      goto LABEL_41;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *__str = 0u;
    v27 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for B (%dx%d)\n");
    goto LABEL_54;
  }

  if (v12 != v18)
  {
    if (v6)
    {
      goto LABEL_53;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109888;
      *&__str[4] = v10;
      *&__str[8] = 1024;
      *&__str[10] = v12;
      *&__str[14] = 1024;
      LODWORD(v27) = v17;
      WORD2(v27) = 1024;
      *(&v27 + 6) = v18;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", __str, 0x1Au);
    }

    goto LABEL_41;
  }

  v20 = *a1;
  if (v20 != 2)
  {
    if (v20 == 1)
    {
      if (v10 == v17)
      {
        v21 = *MEMORY[0x277D85DE8];

        return _SparseGMRESSolve_Double(v5, X, a3, ApplyOperator, 0);
      }

      if (!v6)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      }

      goto LABEL_53;
    }

    if (v10 == v17)
    {
      v24 = *MEMORY[0x277D85DE8];

      return _SparseCGSolve_Double(v5, X, a3, ApplyOperator, 0);
    }

    if (v6)
    {
LABEL_53:
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *__str = 0u;
      v27 = 0u;
      snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
      goto LABEL_54;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_51:
      sub_2367CD050();
    }

LABEL_41:
    _SparseTrap();
  }

  v23 = *MEMORY[0x277D85DE8];

  return _SparseLSMRSolve_Double(v5, X, a3, ApplyOperator, 0);
}

uint64_t SparseSolve(int *a1, uint64_t a2, int a3, double *a4, int a5, double *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 1);
  v7 = (a1 + 2);
  v8 = v9;
  if (a5 <= 0)
  {
    if (v8)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      __str = 0u;
      v19 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimension for x (%dx%d)\n");
LABEL_23:
      v8(&__str);
      result = 0xFFFFFFFFLL;
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD0C0();
    }

LABEL_26:
    _SparseTrap();
  }

  if (a3 <= 0)
  {
    if (v8)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      __str = 0u;
      v19 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  X.rowCount = a5;
  X.columnCount = 1;
  X.columnStride = a5;
  *&X.attributes = 0;
  X.data = a6;
  B.rowCount = a3;
  B.columnCount = 1;
  B.columnStride = a3;
  *&B.attributes = 0;
  B.data = a4;
  v10 = *a1;
  if (v10 == 2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = sub_2367ACEB4;
    v13[3] = &unk_278A00608;
    v13[4] = a2;
    result = _SparseLSMRSolve_Double(v7, &X, &B, v13, 0);
    goto LABEL_27;
  }

  if (v10 != 1)
  {
    if (a5 == a3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = sub_2367ACE64;
      v15[3] = &unk_278A005B8;
      v15[4] = a2;
      result = _SparseCGSolve_Double(v7, &X, &B, v15, 0);
      goto LABEL_27;
    }

    if (!v8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a5 != a3)
  {
    if (!v8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_2367CCEE8();
      goto LABEL_26;
    }

LABEL_22:
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    __str = 0u;
    v19 = 0u;
    snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_23;
  }

  ApplyOperator[0] = MEMORY[0x277D85DD0];
  ApplyOperator[1] = 0x40000000;
  ApplyOperator[2] = sub_2367ACE8C;
  ApplyOperator[3] = &unk_278A005E0;
  ApplyOperator[4] = a2;
  result = _SparseGMRESSolve_Double(v7, &X, &B, ApplyOperator, 0);
LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2367ACE64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367ACE8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367ACEB4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Double *a2, DenseMatrix_Double *a3, DenseMatrix_Double *a4, uint64_t type)
{
  v63 = *MEMORY[0x277D85DE8];
  p_options = &a1->options;
  reportError = a1->options.base.reportError;
  v7 = *(&a2->structure.blockSize + 2);
  v8 = 4;
  if (*&a2->structure.attributes)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(&a2->structure.rowCount + v9) * v7;
  if (*&a2->structure.attributes)
  {
    v8 = 0;
  }

  v11 = *(&a2->structure.rowCount + v8) * v7;
  if (v10 < 1 || v11 <= 0)
  {
    if (!reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

      goto LABEL_53;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4, type);
    goto LABEL_42;
  }

  v15 = 4;
  if (*&a4->attributes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&a4->rowCount + v16);
  if (*&a4->attributes)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(&a4->rowCount + v18);
  attributes = a3->attributes;
  v21 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(&a3->rowCount + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(&a3->rowCount + v15);
  if (v19 != v24)
  {
    if (!reportError)
    {
      v29 = v23;
      v30 = v17;
      v31 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      Preconditioner[0].type = 67109888;
      *(&Preconditioner[0].type + 1) = v30;
      LOWORD(Preconditioner[0].mem) = 1024;
      *(&Preconditioner[0].mem + 2) = v31;
      HIWORD(Preconditioner[0].mem) = 1024;
      LODWORD(Preconditioner[0].apply) = v29;
      WORD2(Preconditioner[0].apply) = 1024;
      *(&Preconditioner[0].apply + 6) = v24;
      v32 = MEMORY[0x277D86220];
      v33 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_49;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4, type);
LABEL_42:
    (reportError)(Preconditioner);
    v38 = 0xFFFFFFFFLL;
    goto LABEL_54;
  }

  if (v17 != v11)
  {
    if (!reportError)
    {
      v34 = v17;
      v35 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      Preconditioner[0].type = 67109888;
      *(&Preconditioner[0].type + 1) = v10;
      LOWORD(Preconditioner[0].mem) = 1024;
      *(&Preconditioner[0].mem + 2) = v11;
      HIWORD(Preconditioner[0].mem) = 1024;
      LODWORD(Preconditioner[0].apply) = v34;
      WORD2(Preconditioner[0].apply) = 1024;
      *(&Preconditioner[0].apply + 6) = v35;
      v32 = MEMORY[0x277D86220];
      v33 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_49;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4, type);
    goto LABEL_42;
  }

  if (v23 != v10)
  {
    if (reportError)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      memset(Preconditioner, 0, sizeof(Preconditioner));
      snprintf(Preconditioner, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4, type);
      goto LABEL_42;
    }

    v36 = v23;
    v37 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    Preconditioner[0].type = 67109888;
    *(&Preconditioner[0].type + 1) = v10;
    LOWORD(Preconditioner[0].mem) = 1024;
    *(&Preconditioner[0].mem + 2) = v11;
    HIWORD(Preconditioner[0].mem) = 1024;
    LODWORD(Preconditioner[0].apply) = v36;
    WORD2(Preconditioner[0].apply) = 1024;
    *(&Preconditioner[0].apply + 6) = v37;
    v32 = MEMORY[0x277D86220];
    v33 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_49:
    _os_log_error_impl(&dword_2366B9000, v32, OS_LOG_TYPE_ERROR, v33, Preconditioner, 0x1Au);
    goto LABEL_53;
  }

  if (type <= 1)
  {
    if (reportError)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      strcpy(Preconditioner, "Invalid preconditioner type for this call: for no preconditioner, omit the parameter. User-supplied preconditioners must supply apply() method.");
      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD1B0();
    }

LABEL_53:
    _SparseTrap();
  }

  memset(Preconditioner, 0, 24);
  _SparseCreatePreconditioner_Double(Preconditioner, type, a2);
  if (Preconditioner[0].type)
  {
    if (a1->method == 2)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 0x40000000;
      v43[2] = sub_2367AD5AC;
      v43[3] = &unk_278A00668;
      v41 = *&a2->structure.rowIndices;
      v44 = *&a2->structure.rowCount;
      v45 = v41;
      data = a2->data;
      v28 = _SparseLSMRSolve_Double(p_options, a4, a3, v43, Preconditioner);
    }

    else if (a1->method == 1)
    {
      ApplyOperator[0] = MEMORY[0x277D85DD0];
      ApplyOperator[1] = 0x40000000;
      ApplyOperator[2] = sub_2367AD500;
      ApplyOperator[3] = &unk_278A00648;
      v27 = *&a2->structure.rowIndices;
      v48 = *&a2->structure.rowCount;
      v49 = v27;
      v50 = a2->data;
      v28 = _SparseGMRESSolve_Double(p_options, a4, a3, ApplyOperator, Preconditioner);
    }

    else
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 0x40000000;
      v51[2] = sub_2367AD454;
      v51[3] = &unk_278A00628;
      v42 = *&a2->structure.rowIndices;
      v52 = *&a2->structure.rowCount;
      v53 = v42;
      v54 = a2->data;
      v28 = _SparseCGSolve_Double(p_options, a4, a3, v51, Preconditioner);
    }

    v38 = v28;
    _SparseReleaseOpaquePreconditioner_Double(Preconditioner);
  }

  else
  {
    v38 = 4294967197;
  }

LABEL_54:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

void sub_2367AD454(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367AD500(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367AD5AC(uint64_t a1, int a2, int a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Double *a2, DenseMatrix_Double *a3, DenseMatrix_Double *X, SparseOpaquePreconditioner_Double *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  reportError = a1->options.base.reportError;
  p_options = &a1->options;
  v7 = reportError;
  v9 = *(&a2->structure.blockSize + 2);
  v10 = 4;
  if (*&a2->structure.attributes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&a2->structure.rowCount + v11) * v9;
  if (*&a2->structure.attributes)
  {
    v10 = 0;
  }

  v13 = *(&a2->structure.rowCount + v10) * v9;
  if (v12 < 1 || v13 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

LABEL_57:
      _SparseTrap();
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buf = 0u;
    v46 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", X, a5);
    goto LABEL_54;
  }

  v15 = 4;
  if (*&X->attributes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&X->rowCount + v16);
  if (*&X->attributes)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(&X->rowCount + v18);
  attributes = a3->attributes;
  v21 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(&a3->rowCount + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(&a3->rowCount + v15);
  if (v19 != v24)
  {
    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *&buf = __PAIR64__(v17, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v19;
      HIWORD(buf) = 1024;
      LODWORD(v46) = v23;
      WORD2(v46) = 1024;
      *(&v46 + 6) = v24;
      v28 = MEMORY[0x277D86220];
      v29 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_45;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buf = 0u;
    v46 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", X, a5);
LABEL_54:
    (v7)(&buf);
    result = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  if (v17 != v13)
  {
    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *&buf = __PAIR64__(v12, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v13;
      HIWORD(buf) = 1024;
      LODWORD(v46) = v17;
      WORD2(v46) = 1024;
      *(&v46 + 6) = v19;
      v28 = MEMORY[0x277D86220];
      v29 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_45;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buf = 0u;
    v46 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", X, a5);
    goto LABEL_54;
  }

  if (v23 != v12)
  {
    if (v7)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      buf = 0u;
      v46 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", X, a5);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v12, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v13;
    HIWORD(buf) = 1024;
    LODWORD(v46) = v23;
    WORD2(v46) = 1024;
    *(&v46 + 6) = v19;
    v28 = MEMORY[0x277D86220];
    v29 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v28, OS_LOG_TYPE_ERROR, v29, &buf, 0x1Au);
    goto LABEL_57;
  }

  method = a1->method;
  if (method == 2)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 0x40000000;
    v33[2] = sub_2367ADE28;
    v33[3] = &unk_278A006C8;
    v30 = *&a2->structure.rowIndices;
    v34 = *&a2->structure.rowCount;
    v35 = v30;
    data = a2->data;
    result = _SparseLSMRSolve_Double(p_options, X, a3, v33, a5);
    goto LABEL_58;
  }

  if (method != 1)
  {
    if (v13 == v12)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 0x40000000;
      v41[2] = sub_2367ADCD0;
      v41[3] = &unk_278A00688;
      v31 = *&a2->structure.rowIndices;
      v42 = *&a2->structure.rowCount;
      v43 = v31;
      v44 = a2->data;
      result = _SparseCGSolve_Double(p_options, X, a3, v41, a5);
      goto LABEL_58;
    }

    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (v13 != v12)
  {
    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_2367CCEE8();
      goto LABEL_57;
    }

LABEL_53:
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buf = 0u;
    v46 = 0u;
    snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", X, a5);
    goto LABEL_54;
  }

  ApplyOperator[0] = MEMORY[0x277D85DD0];
  ApplyOperator[1] = 0x40000000;
  ApplyOperator[2] = sub_2367ADD7C;
  ApplyOperator[3] = &unk_278A006A8;
  v26 = *&a2->structure.rowIndices;
  v38 = *&a2->structure.rowCount;
  v39 = v26;
  v40 = a2->data;
  result = _SparseGMRESSolve_Double(p_options, X, a3, ApplyOperator, a5);
LABEL_58:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2367ADCD0(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367ADD7C(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367ADE28(uint64_t a1, int a2, int a3, DenseMatrix_Double *a4, DenseMatrix_Double *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *__src, SparseMatrix_Double *a2, DenseVector_Double a3, DenseVector_Double a4, SparseOpaquePreconditioner_Double *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v13.rowCount = a3.count;
  v13.columnCount = 1;
  v13.columnStride = a3.count;
  *&v13.attributes = 0;
  v13.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v7 = *&a2->structure.rowIndices;
  *&v11.structure.rowCount = *&a2->structure.rowCount;
  *&v11.structure.rowIndices = v7;
  v11.data = a2->data;
  v10 = *a5;
  result = SparseSolve(&__dst, &v11, &v13, &X, &v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(int *a1, void *ApplyOperator, uint64_t a3, DenseMatrix_Double *X, const SparseOpaquePreconditioner_Double *a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = 4;
  if (*&X->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&X->rowCount + v10);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(&X->rowCount + v12);
  v14 = *(a3 + 12);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
    v9 = 0;
  }

  if (v11 < 1 || v13 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCF60();
      }

      goto LABEL_41;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *__str = 0u;
    v28 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v7(__str);
    v26 = *MEMORY[0x277D85DE8];
    return 0xFFFFFFFFLL;
  }

  v18 = *(a3 + v16);
  v19 = *(a3 + v9);
  if (v18 < 1 || v19 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCFD8();
      }

      goto LABEL_41;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *__str = 0u;
    v28 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for B (%dx%d)\n");
    goto LABEL_54;
  }

  if (v13 != v19)
  {
    if (v7)
    {
      goto LABEL_53;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109888;
      *&__str[4] = v11;
      *&__str[8] = 1024;
      *&__str[10] = v13;
      *&__str[14] = 1024;
      LODWORD(v28) = v18;
      WORD2(v28) = 1024;
      *(&v28 + 6) = v19;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", __str, 0x1Au);
    }

    goto LABEL_41;
  }

  v21 = *a1;
  if (v21 != 2)
  {
    if (v21 == 1)
    {
      if (v11 == v18)
      {
        v22 = *MEMORY[0x277D85DE8];

        return _SparseGMRESSolve_Double(v6, X, a3, ApplyOperator, a5);
      }

      if (!v7)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      }

      goto LABEL_53;
    }

    if (v11 == v18)
    {
      v25 = *MEMORY[0x277D85DE8];

      return _SparseCGSolve_Double(v6, X, a3, ApplyOperator, a5);
    }

    if (v7)
    {
LABEL_53:
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *__str = 0u;
      v28 = 0u;
      snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
      goto LABEL_54;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_51:
      sub_2367CD050();
    }

LABEL_41:
    _SparseTrap();
  }

  v24 = *MEMORY[0x277D85DE8];

  return _SparseLSMRSolve_Double(v6, X, a3, ApplyOperator, a5);
}

uint64_t SparseSolve(int *a1, uint64_t a2, int a3, double *a4, int a5, double *a6, SparseOpaquePreconditioner_Double *Preconditioner)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 1);
  v8 = (a1 + 2);
  v9 = v10;
  if (a5 <= 0)
  {
    if (v9)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      __str = 0u;
      v20 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimension for x (%dx%d)\n");
LABEL_23:
      v9(&__str);
      result = 0xFFFFFFFFLL;
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD0C0();
    }

LABEL_26:
    _SparseTrap();
  }

  if (a3 <= 0)
  {
    if (v9)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      __str = 0u;
      v20 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  X.rowCount = a5;
  X.columnCount = 1;
  X.columnStride = a5;
  *&X.attributes = 0;
  X.data = a6;
  B.rowCount = a3;
  B.columnCount = 1;
  B.columnStride = a3;
  *&B.attributes = 0;
  B.data = a4;
  v11 = *a1;
  if (v11 == 2)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = sub_2367AE78C;
    v14[3] = &unk_278A00740;
    v14[4] = a2;
    result = _SparseLSMRSolve_Double(v8, &X, &B, v14, Preconditioner);
    goto LABEL_27;
  }

  if (v11 != 1)
  {
    if (a5 == a3)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = sub_2367AE73C;
      v16[3] = &unk_278A006F0;
      v16[4] = a2;
      result = _SparseCGSolve_Double(v8, &X, &B, v16, Preconditioner);
      goto LABEL_27;
    }

    if (!v9)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a5 != a3)
  {
    if (!v9)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_2367CCEE8();
      goto LABEL_26;
    }

LABEL_22:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    __str = 0u;
    v20 = 0u;
    snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_23;
  }

  ApplyOperator[0] = MEMORY[0x277D85DD0];
  ApplyOperator[1] = 0x40000000;
  ApplyOperator[2] = sub_2367AE764;
  ApplyOperator[3] = &unk_278A00718;
  ApplyOperator[4] = a2;
  result = _SparseGMRESSolve_Double(v8, &X, &B, ApplyOperator, Preconditioner);
LABEL_27:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2367AE73C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367AE764(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367AE78C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

void SparseIterate(int *a1, int a2, const BOOL *converged, char *state, void *a5, uint64_t a6, uint64_t a7, DenseMatrix_Double *X, SparseOpaquePreconditioner_Double *Preconditioner)
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 1);
  v10 = (a1 + 2);
  v11 = v12;
  v13 = 4;
  if (*&X->attributes)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(&X->rowCount + v14);
  if (*&X->attributes)
  {
    v13 = 0;
  }

  v16 = *(&X->rowCount + v13);
  if (v15 < 1 || v16 <= 0)
  {
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD1F4();
      }

      goto LABEL_62;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *__str = 0u;
    v35 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", state, a5, a6, a7, Preconditioner);
LABEL_50:
    v11(__str);
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  v18 = 4;
  if (*(a6 + 12))
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a6 + v19);
  if (*(a6 + 12))
  {
    v18 = 0;
  }

  v21 = *(a6 + v18);
  if (v20 < 1 || v21 <= 0)
  {
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD26C();
      }

      goto LABEL_62;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *__str = 0u;
    v35 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", state, a5, a6, a7, Preconditioner);
    goto LABEL_50;
  }

  v23 = 4;
  if (*(a7 + 12))
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(a7 + v24);
  if (*(a7 + 12))
  {
    v23 = 0;
  }

  v26 = *(a7 + v23);
  if (v25 < 1 || v26 <= 0)
  {
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD2E4();
      }

      goto LABEL_62;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *__str = 0u;
    v35 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", state, a5, a6, a7, Preconditioner);
    goto LABEL_50;
  }

  if (v16 != v21 || v21 != v26)
  {
    if (v11)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      *__str = 0u;
      v35 = 0u;
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", state, a5, a6, a7, Preconditioner, v15);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67110400;
      *&__str[4] = v15;
      *&__str[8] = 1024;
      *&__str[10] = v16;
      *&__str[14] = 1024;
      LODWORD(v35) = v20;
      WORD2(v35) = 1024;
      *(&v35 + 6) = v21;
      WORD5(v35) = 1024;
      HIDWORD(v35) = v25;
      LOWORD(v36) = 1024;
      *(&v36 + 2) = v21;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", __str, 0x26u);
    }

LABEL_62:
    _SparseTrap();
  }

  if (v25 < v20)
  {
    if (v11)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      *__str = 0u;
      v35 = 0u;
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", state, a5, a6, a7, Preconditioner);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD35C();
    }

    goto LABEL_62;
  }

  v29 = *a1;
  if (v29 == 2)
  {
    v32 = *MEMORY[0x277D85DE8];

    _SparseLSMRIterate_Double(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }

  else if (v29 == 1)
  {
    v30 = *MEMORY[0x277D85DE8];

    _SparseGMRESIterate_Double(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }

  else
  {
    v33 = *MEMORY[0x277D85DE8];

    _SparseCGIterate_Double(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }
}

void SparseIterate(int *a1, int a2, const BOOL *converged, char *state, void *ApplyOperator, uint64_t a6, uint64_t a7, DenseMatrix_Double *X)
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 1);
  v9 = (a1 + 2);
  v10 = v11;
  v12 = 4;
  if (*&X->attributes)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(&X->rowCount + v13);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  v15 = *(&X->rowCount + v12);
  if (v14 < 1 || v15 <= 0)
  {
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD1F4();
      }

      goto LABEL_60;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *__str = 0u;
    v31 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", state, ApplyOperator);
LABEL_50:
    v10(__str);
    goto LABEL_61;
  }

  v17 = 4;
  if (*(a6 + 12))
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a6 + v18);
  if (*(a6 + 12))
  {
    v17 = 0;
  }

  v20 = *(a6 + v17);
  if (v19 < 1 || v20 <= 0)
  {
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD26C();
      }

      goto LABEL_60;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *__str = 0u;
    v31 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", state, ApplyOperator);
    goto LABEL_50;
  }

  v22 = 4;
  if (*(a7 + 12))
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a7 + v23);
  if (*(a7 + 12))
  {
    v22 = 0;
  }

  v25 = *(a7 + v22);
  if (v24 < 1 || v25 <= 0)
  {
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD2E4();
      }

      goto LABEL_60;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *__str = 0u;
    v31 = 0u;
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", state, ApplyOperator);
    goto LABEL_50;
  }

  if (v15 != v20 || v20 != v25)
  {
    if (v10)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *__str = 0u;
      v31 = 0u;
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", state, ApplyOperator, v14);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67110400;
      *&__str[4] = v14;
      *&__str[8] = 1024;
      *&__str[10] = v15;
      *&__str[14] = 1024;
      LODWORD(v31) = v19;
      WORD2(v31) = 1024;
      *(&v31 + 6) = v20;
      WORD5(v31) = 1024;
      HIDWORD(v31) = v24;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = v20;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", __str, 0x26u);
    }

LABEL_60:
    _SparseTrap();
  }

  if (v24 < v19)
  {
    if (v10)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *__str = 0u;
      v31 = 0u;
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", state, ApplyOperator);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD35C();
    }

    goto LABEL_60;
  }

  v28 = *a1;
  if (v28 == 2)
  {
    _SparseLSMRIterate_Double(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }

  else if (v28 == 1)
  {
    _SparseGMRESIterate_Double(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }

  else
  {
    _SparseCGIterate_Double(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }

LABEL_61:
  v29 = *MEMORY[0x277D85DE8];
}

void SparseRetain(SparseOpaqueFactorization_Double *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  status = a1->symbolicFactorization.status;
  p_symbolicFactorization = &a1->symbolicFactorization;
  if (status || !a1->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD3CC();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v11, p_symbolicFactorization);
  v7 = *&v11[40];
  if (a1->status == SparseStatusOK && a1->solveWorkspaceRequiredStatic)
  {
    _SparseRetainNumeric_Double(a1);
    v8 = *&a1->solveWorkspaceRequiredStatic;
    *(a2 + 64) = *&a1->userFactorStorage;
    *(a2 + 80) = v8;
    *(a2 + 96) = *&a1[1].status;
    v9 = *&a1->symbolicFactorization.columnCount;
    *a2 = *&a1->status;
    *(a2 + 16) = v9;
    v10 = *&a1->symbolicFactorization.factorSize_Float;
    *(a2 + 32) = *&a1->symbolicFactorization.workspaceSize_Float;
    *(a2 + 48) = v10;
    goto LABEL_5;
  }

  if (!*&v11[40])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD3CC();
    }

LABEL_4:
    _SparseTrap();
  }

  v24 = 0;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  *&v11[47] = 0u;
  strcpy(v11, "Can only retain valid numeric factorizations.\n");
  v7(v11);
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = -4;
  *(a2 + 8) = -4;
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
}

void SparseRetain(SparseOpaqueSubfactor_Double *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  status = a1->factor.symbolicFactorization.status;
  p_symbolicFactorization = &a1->factor.symbolicFactorization;
  if (status || !a1->factor.symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD410();
    }

    goto LABEL_4;
  }

  p_factorSize_Double = &p_symbolicFactorization[-1].factorSize_Double;
  _SparseGetOptionsFromSymbolicFactor(&v13, p_symbolicFactorization);
  reportError = v13.reportError;
  if (p_factorSize_Double->status == SparseStatusOK && a1->factor.solveWorkspaceRequiredStatic)
  {
    _SparseRetainNumeric_Double(p_factorSize_Double);
    v9 = *&a1->factor.numericFactorization;
    *(a2 + 64) = *&a1->factor.symbolicFactorization.factorSize_Double;
    *(a2 + 80) = v9;
    v10 = *&a1->workspaceRequiredPerRHS;
    *(a2 + 96) = *&a1->factor.solveWorkspaceRequiredPerRHS;
    *(a2 + 112) = v10;
    v11 = *&a1->factor.symbolicFactorization.status;
    *a2 = *&a1->attributes;
    *(a2 + 16) = v11;
    v12 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
    *(a2 + 32) = *&a1->factor.symbolicFactorization.factorization;
    *(a2 + 48) = v12;
    goto LABEL_5;
  }

  if (!v13.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD410();
    }

LABEL_4:
    _SparseTrap();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *&v13.free = 0u;
  v14 = 0u;
  strcpy(&v13, "Can only retain valid objects.\n");
  (reportError)(&v13);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 8) = -3;
  *(a2 + 16) = -3;
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
}

void SparseCleanup(SparseOpaqueFactorization_Double *toFree)
{
  if ((toFree->status & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Double(toFree);
  }
}

void SparseCleanup(SparseOpaqueSubfactor_Double *a1)
{
  status = a1->factor.status;
  p_factor = &a1->factor;
  if ((status & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Double(p_factor);
  }
}

void SparseCleanup(SparseMatrix_Double *a1)
{
  if ((*&a1->structure.attributes & 0x80000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD454();
    }

    _SparseTrap();
  }

  columnStarts = a1->structure.columnStarts;

  free(columnStarts);
}

void SparseCleanup(SparseOpaquePreconditioner_Double *a1)
{
  if (a1->type <= SparsePreconditionerUser)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD498();
    }

    _SparseTrap();
  }

  _SparseReleaseOpaquePreconditioner_Double(a1);
}

void SparseConvertFromCoordinate(SparseAttributes_t a1@<0:W4.2>, const int *a2@<X5>, const int *a3@<X6>, const float *a4@<X7>, unsigned int a5@<W0>, int a6@<W1>, uint64_t a7@<X2>, unsigned int a8@<W3>, uint64_t a9@<X8>)
{
  if ((a5 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_21:
    _SparseTrap();
  }

  if (a6 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_21;
  }

  if (a7 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB64();
    }

    goto LABEL_21;
  }

  v17 = a8;
  if (a5 != a6 && (*&a1 & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_21;
  }

  v18 = malloc_type_malloc(4 * (a7 + a8 * a7 * a8) + 8 * (a6 + 1) + 28, 0x100004000313F17uLL);
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD4DC();
    }

    goto LABEL_21;
  }

  storage = v18;
  v20 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (!v20)
  {
    free(storage);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC20();
    }

    goto LABEL_21;
  }

  *(a9 + 32) = 0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  v21 = a1;
  v22 = v20;
  _SparseConvertFromCoordinate_Float(a9, a5, a6, a7, v17, v21, a2, a3, a4, storage, v20);
  free(v22);
  *(a9 + 24) |= 0x8000u;
}

SparseMatrix_Float *SparseConvertFromCoordinate@<X0>(int m@<W0>, int n@<W1>, uint64_t nBlock@<X2>, SparseAttributes_t attributes@<0:W4.2>, const int *a5@<X5>, const int *a6@<X6>, const float *a7@<X7>, uint8_t a8@<W3>, SparseMatrix_Float *a9@<X8>, char *a10, int *a11)
{
  if (m < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if (n < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if (nBlock < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB64();
    }

    goto LABEL_14;
  }

  if (m != n && (*&attributes & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_14;
  }

  return _SparseConvertFromCoordinate_Float(a9, m, n, nBlock, a8, attributes, a5, a6, a7, a10, a11);
}

void SparseMultiply(float a1, SparseMatrix_Float *a2, DenseMatrix_Float *a3, DenseMatrix_Float *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = 4;
  if (*&a2->structure.attributes)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*&a2->structure.attributes)
  {
    v4 = 0;
  }

  rowCount = a4->rowCount;
  if (a4->columnStride < a4->rowCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_35;
  }

  if (a3->columnStride < a3->rowCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_35;
  }

  if (*&a4->attributes)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
    rowCount = a4->columnCount;
  }

  if (*&a3->attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a3->rowCount + v8);
  v10 = *(&a4->rowCount + v7);
  if (*&a3->attributes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&a3->rowCount + v11);
  if (rowCount != v9)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "Y";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v10;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "X";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v12;
    v23 = 1024;
    v24 = v9;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_34:
    _os_log_error_impl(&dword_2366B9000, v17, OS_LOG_TYPE_ERROR, v18, &A, 0x2Eu);
    goto LABEL_35;
  }

  if (rowCount <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

LABEL_35:
    _SparseTrap();
  }

  v13 = *(&a2->structure.blockSize + 2);
  v14 = *(&a2->structure.rowCount + v5) * v13;
  v15 = *(&a2->structure.rowCount + v4) * v13;
  if (v10 != v14)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "Y";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v10;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "matrix A";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v15;
    v23 = 1024;
    v24 = v14;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  if (v12 != v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "X";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v12;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "matrix A";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v15;
    v23 = 1024;
    v24 = v14;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  v16 = *&a2->structure.rowIndices;
  *&A.structure.rowCount = *&a2->structure.rowCount;
  *&A.structure.rowIndices = v16;
  A.data = a2->data;
  x = *a3;
  v20 = *a4;
  _SparseSpMV_Float(a1, &A, &x, 0, &v20);
  v19 = *MEMORY[0x277D85DE8];
}

void SparseMultiply(float a1, SparseMatrix_Float *a2, DenseVector_Float a3, DenseVector_Float a4)
{
  v4 = *(&a2->structure.blockSize + 2);
  v5 = 4;
  if (*&a2->structure.attributes)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*&a2->structure.attributes)
  {
    v5 = 0;
  }

  if (*(&a2->structure.rowCount + v5) * v4 != a3.count)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBE68();
    }

LABEL_13:
    _SparseTrap();
  }

  if (*(&a2->structure.rowCount + v6) * v4 != a4.count)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBED8();
    }

    goto LABEL_13;
  }

  x.rowCount = a3.count;
  x.columnCount = 1;
  *&x.columnStride = a3.count;
  x.data = a3.data;
  y.rowCount = a4.count;
  y.columnCount = 1;
  y.columnStride = a4.count;
  *&y.attributes = 0;
  y.data = a4.data;
  v7 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v7;
  v8.data = a2->data;
  _SparseSpMV_Float(a1, &v8, &x, 0, &y);
}

void SparseMultiply(SparseMatrix_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3)
{
  v3 = *&a1->structure.rowIndices;
  *&v6.structure.rowCount = *&a1->structure.rowCount;
  *&v6.structure.rowIndices = v3;
  v6.data = a1->data;
  v5 = *a2;
  v4 = *a3;
  SparseMultiply(1.0, &v6, &v5, &v4);
}

void SparseMultiply(SparseMatrix_Float *a1, DenseVector_Float a2, DenseVector_Float a3)
{
  v3 = *&a1->structure.rowIndices;
  *&v4.structure.rowCount = *&a1->structure.rowCount;
  *&v4.structure.rowIndices = v3;
  v4.data = a1->data;
  SparseMultiply(1.0, &v4, a2, a3);
}

void SparseMultiplyAdd(float a1, SparseMatrix_Float *a2, DenseMatrix_Float *a3, DenseMatrix_Float *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = 4;
  if (*&a2->structure.attributes)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*&a2->structure.attributes)
  {
    v4 = 0;
  }

  rowCount = a4->rowCount;
  if (a4->columnStride < a4->rowCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_35;
  }

  if (a3->columnStride < a3->rowCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_35;
  }

  if (*&a4->attributes)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
    rowCount = a4->columnCount;
  }

  if (*&a3->attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a3->rowCount + v8);
  v10 = *(&a4->rowCount + v7);
  if (*&a3->attributes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&a3->rowCount + v11);
  if (rowCount != v9)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "Y";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v10;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "X";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v12;
    v23 = 1024;
    v24 = v9;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_34:
    _os_log_error_impl(&dword_2366B9000, v17, OS_LOG_TYPE_ERROR, v18, &A, 0x2Eu);
    goto LABEL_35;
  }

  if (rowCount <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

LABEL_35:
    _SparseTrap();
  }

  v13 = *(&a2->structure.blockSize + 2);
  v14 = *(&a2->structure.rowCount + v5) * v13;
  v15 = *(&a2->structure.rowCount + v4) * v13;
  if (v10 != v14)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "Y";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v10;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "matrix A";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v15;
    v23 = 1024;
    v24 = v14;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  if (v12 != v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    A.structure.rowCount = 136316418;
    *&A.structure.columnCount = "X";
    WORD2(A.structure.columnStarts) = 1024;
    *(&A.structure.columnStarts + 6) = v12;
    WORD1(A.structure.rowIndices) = 1024;
    HIDWORD(A.structure.rowIndices) = rowCount;
    A.structure.attributes = 2080;
    *&A.structure.blockSize = "matrix A";
    WORD1(A.data) = 1024;
    HIDWORD(A.data) = v15;
    v23 = 1024;
    v24 = v14;
    v17 = MEMORY[0x277D86220];
    v18 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  v16 = *&a2->structure.rowIndices;
  *&A.structure.rowCount = *&a2->structure.rowCount;
  *&A.structure.rowIndices = v16;
  A.data = a2->data;
  x = *a3;
  v20 = *a4;
  _SparseSpMV_Float(a1, &A, &x, 1, &v20);
  v19 = *MEMORY[0x277D85DE8];
}

void SparseMultiplyAdd(SparseMatrix_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3)
{
  v3 = *&a1->structure.rowIndices;
  *&v6.structure.rowCount = *&a1->structure.rowCount;
  *&v6.structure.rowIndices = v3;
  v6.data = a1->data;
  v5 = *a2;
  v4 = *a3;
  SparseMultiplyAdd(1.0, &v6, &v5, &v4);
}

void SparseMultiplyAdd(float a1, SparseMatrix_Float *a2, DenseVector_Float a3, DenseVector_Float a4)
{
  v4 = *(&a2->structure.blockSize + 2);
  v5 = 4;
  if (*&a2->structure.attributes)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*&a2->structure.attributes)
  {
    v5 = 0;
  }

  if (*(&a2->structure.rowCount + v5) * v4 != a3.count)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBE68();
    }

LABEL_13:
    _SparseTrap();
  }

  if (*(&a2->structure.rowCount + v6) * v4 != a4.count)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBED8();
    }

    goto LABEL_13;
  }

  x.rowCount = a3.count;
  x.columnCount = 1;
  *&x.columnStride = a3.count;
  x.data = a3.data;
  y.rowCount = a4.count;
  y.columnCount = 1;
  y.columnStride = a4.count;
  *&y.attributes = 0;
  y.data = a4.data;
  v7 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v7;
  v8.data = a2->data;
  _SparseSpMV_Float(a1, &v8, &x, 1, &y);
}

void SparseMultiplyAdd(SparseMatrix_Float *a1, DenseVector_Float a2, DenseVector_Float a3)
{
  v3 = *&a1->structure.rowIndices;
  *&v4.structure.rowCount = *&a1->structure.rowCount;
  *&v4.structure.rowIndices = v3;
  v4.data = a1->data;
  SparseMultiplyAdd(1.0, &v4, a2, a3);
}

__n128 SparseGetTranspose@<Q0>(SparseMatrix_Float *a1@<X0>, uint64_t a2@<X8>)
{
  a1->structure.attributes = (*&a1->structure.attributes & 0xFFFE | ((*&a1->structure.attributes & 1) == 0));
  *(a2 + 32) = a1->data;
  result = *&a1->structure.rowCount;
  v3 = *&a1->structure.rowIndices;
  *a2 = *&a1->structure.rowCount;
  *(a2 + 16) = v3;
  return result;
}

__n128 SparseGetTranspose@<Q0>(SparseOpaqueFactorization_Float *a1@<X0>, uint64_t a2@<X8>)
{
  a1->attributes = (*&a1->attributes & 0xFFFE | ((*&a1->attributes & 1) == 0));
  _SparseRetainNumeric_Float(a1);
  v4 = *&a1->solveWorkspaceRequiredStatic;
  *(a2 + 64) = *&a1->userFactorStorage;
  *(a2 + 80) = v4;
  *(a2 + 96) = *&a1[1].status;
  v5 = *&a1->symbolicFactorization.columnCount;
  *a2 = *&a1->status;
  *(a2 + 16) = v5;
  result = *&a1->symbolicFactorization.factorSize_Float;
  *(a2 + 32) = *&a1->symbolicFactorization.workspaceSize_Float;
  *(a2 + 48) = result;
  return result;
}

__n128 SparseGetTranspose@<Q0>(SparseOpaqueSubfactor_Float *a1@<X0>, uint64_t a2@<X8>)
{
  a1->attributes = (*&a1->attributes & 0xFFFE | ((*&a1->attributes & 1) == 0));
  _SparseRetainNumeric_Float(&a1->factor);
  v4 = *&a1->factor.numericFactorization;
  *(a2 + 64) = *&a1->factor.symbolicFactorization.factorSize_Double;
  *(a2 + 80) = v4;
  v5 = *&a1->workspaceRequiredPerRHS;
  *(a2 + 96) = *&a1->factor.solveWorkspaceRequiredPerRHS;
  *(a2 + 112) = v5;
  v6 = *&a1->factor.symbolicFactorization.status;
  *a2 = *&a1->attributes;
  *(a2 + 16) = v6;
  result = *&a1->factor.symbolicFactorization.factorization;
  v8 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

SparseOpaqueFactorization_Float *SparseFactor@<X0>(SparseMatrix_Float *a1@<X1>, SparseSymbolicFactorOptions *sfoptions@<X2>, SparseNumericFactorOptions *a3@<X3>, int a4@<W0>, uint64_t a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1->structure.rowCount <= 0)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBF48();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.rowCount must be > 0, but is %d.\n", a3);
LABEL_22:
    reportError = sfoptions->reportError;
LABEL_23:
    result = (reportError)(__str);
    *(a5 + 96) = 0;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *a5 = -4;
    *(a5 + 8) = -4;
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  columnCount = a1->structure.columnCount;
  if (columnCount <= 0)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBFCC();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.columnCount must be > 0, but is %d.\n", a3);
    goto LABEL_22;
  }

  if (!*(&a1->structure.blockSize + 2))
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC114();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.blockSize must be > 0, but is %d.]n", a3);
    goto LABEL_22;
  }

  v8 = *&a1->structure.attributes & 0xC;
  if (a1->structure.rowCount != columnCount && v8 == 12)
  {
    if (!sfoptions->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC050();
      }

      goto LABEL_34;
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n", a3);
    goto LABEL_22;
  }

  if ((a4 - 80) < 4)
  {
    v10 = *MEMORY[0x277D85DE8];

    return _SparseFactorLU_Float(a4, &a1->structure.rowCount, sfoptions, a3, a5);
  }

  if ((a4 - 40) <= 1)
  {
    v13 = *MEMORY[0x277D85DE8];

    return _SparseFactorQR_Float(a5, a4, a1, sfoptions, a3);
  }

  if (v8 != 12)
  {
    reportError = sfoptions->reportError;
    if (reportError)
    {
      memset(&__str[72], 0, 184);
      strcpy(__str, "Cannot perform symmetric matrix factorization of non-symmetric matrix.\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD520();
    }

LABEL_34:
    _SparseTrap();
  }

  v15 = *MEMORY[0x277D85DE8];

  return _SparseFactorSymmetric_Float(a5, a4, a1, sfoptions, a3);
}

SparseOpaqueFactorization_Float *SparseFactor@<X0>(SparseMatrix_Float *a1@<X1>, int a2@<W0>, uint64_t a3@<X8>)
{
  v3 = *&a1->structure.rowIndices;
  *&v7.structure.rowCount = *&a1->structure.rowCount;
  *&v7.structure.rowIndices = v3;
  v7.data = a1->data;
  sfoptions = *byte_28499C198;
  v5 = *ymmword_23681FFA0;
  return SparseFactor(&v7, &sfoptions, &v5, a2, a3);
}

uint64_t SparseFactor@<X0>(SparseOpaqueSymbolicFactorization *factor@<X0>, SparseMatrix_Float *a2@<X1>, SparseNumericFactorOptions *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  if (factor->status || !factor->workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD564();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v25, factor);
  reportError = v25.reportError;
  if (*&a2->structure.rowCount != *&factor->rowCount || *(&a2->structure.blockSize + 2) != LOBYTE(factor->factorization) || ((*&factor->attributes ^ *&a2->structure.attributes) & 1) != 0)
  {
    if (v25.reportError)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      memset(&v25, 0, sizeof(v25));
      snprintf(&v25, 0x100uLL, "%s does not match that used for symbolic factorization stored in %s.\n", "Matrix", "symbolicFactor");
      result = (reportError)(&v25);
      *(a6 + 96) = 0;
      *(a6 + 64) = 0u;
      *(a6 + 80) = 0u;
      *(a6 + 32) = 0u;
      *(a6 + 48) = 0u;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      v7 = -4;
LABEL_5:
      *a6 = v7;
      *(a6 + 8) = v7;
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC19C();
    }

LABEL_4:
    _SparseTrap();
  }

  malloc = v25.malloc;
  free = v25.free;
  v16 = a4;
  if (!a4)
  {
    v16 = (v25.malloc)(factor->factorSize_Double);
    if (!v16)
    {
      if (reportError)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        memset(&v25, 0, sizeof(v25));
        factorSize_Double = factor->factorSize_Double;
        snprintf(&v25, 0x100uLL, "Failed to allocate factor storage of size %ld bytes.");
        goto LABEL_30;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC22C(&factor->factorSize_Double);
      }

LABEL_41:
      _SparseTrap();
    }
  }

  v17 = a5;
  if (!a5)
  {
    p_workspaceSize_Double = &factor->workspaceSize_Double;
    v20 = (malloc)(factor->workspaceSize_Double);
    if (a4 | v20)
    {
      v17 = v20;
      if (v20)
      {
        goto LABEL_14;
      }
    }

    else
    {
      (free)(v16);
    }

    if (reportError)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      memset(&v25, 0, sizeof(v25));
      v21 = *p_workspaceSize_Double;
      snprintf(&v25, 0x100uLL, "Failed to allocate workspace of size %ld bytes.");
LABEL_30:
      result = (reportError)(&v25);
      *(a6 + 96) = 0;
      *(a6 + 64) = 0u;
      *(a6 + 80) = 0u;
      *(a6 + 32) = 0u;
      *(a6 + 48) = 0u;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      v7 = -3;
      goto LABEL_5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC2A4(p_workspaceSize_Double);
    }

    goto LABEL_41;
  }

LABEL_14:
  *(a6 + 96) = 0;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v18 = BYTE1(factor->factorization);
  if ((v18 - 80) >= 4)
  {
    if ((v18 - 40) > 1)
    {
      result = _SparseNumericFactorSymmetric_Float(a6, factor, a2, a3, v16, v17);
    }

    else
    {
      result = _SparseNumericFactorQR_Float(a6, factor, a2, a3, v16, v17);
    }
  }

  else
  {
    result = _SparseNumericFactorLU_Float(factor, a2, a3, v16, v17, a6);
  }

  *(a6 + 72) = a4 != 0;
  if (!a5)
  {
    result = (free)(v17);
  }

  if (!a4 && (*a6 & 0x80000000) != 0)
  {
    result = (free)(v16);
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseFactor@<X0>(SparseOpaqueSymbolicFactorization *a1@<X0>, SparseMatrix_Float *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *&a1->factorization;
  factor[0] = *&a1->status;
  factor[1] = v3;
  v4 = *&a1->factorSize_Double;
  factor[2] = *&a1->workspaceSize_Double;
  factor[3] = v4;
  v5 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v5;
  v8.data = a2->data;
  v7 = *ymmword_23681FFA0;
  return SparseFactor(factor, &v8, &v7, 0, 0, a3);
}

uint64_t SparseFactor@<X0>(SparseOpaqueSymbolicFactorization *a1@<X0>, SparseMatrix_Float *a2@<X1>, SparseNumericFactorOptions *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *&a1->factorization;
  factor[0] = *&a1->status;
  factor[1] = v4;
  v5 = *&a1->factorSize_Double;
  factor[2] = *&a1->workspaceSize_Double;
  factor[3] = v5;
  v6 = *&a2->structure.rowIndices;
  *&v10.structure.rowCount = *&a2->structure.rowCount;
  *&v10.structure.rowIndices = v6;
  v10.data = a2->data;
  v7 = *&a3->pivotTolerance;
  *&v9.control = *&a3->control;
  *&v9.pivotTolerance = v7;
  return SparseFactor(factor, &v10, &v9, 0, 0, a4);
}

uint64_t SparseSolve(SparseOpaqueFactorization_Float *factor, DenseMatrix_Float *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v18, &factor->symbolicFactorization);
  reportError = v18.reportError;
  if (p_symbolicFactorization->status == SparseStatusOK && factor->symbolicFactorization.workspaceSize_Float && factor->status == SparseStatusOK && factor->solveWorkspaceRequiredStatic)
  {
    rowCount = a2->rowCount;
    if (a2->columnStride >= a2->rowCount)
    {
      if (*&a2->attributes)
      {
        v9 = 0;
        rowCount = a2->columnCount;
      }

      else
      {
        v9 = 4;
      }

      v10 = *(&a2->rowCount + v9);
      if (v10 <= 0)
      {
        if (v18.reportError)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          memset(&v18, 0, sizeof(v18));
          snprintf(&v18, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366FFDD4();
        }
      }

      else
      {
        factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
        v12 = factor->symbolicFactorization.rowCount * factorization_low;
        v13 = factor->symbolicFactorization.columnCount * factorization_low;
        if (v12 <= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        if (rowCount == v14)
        {
          free = v18.free;
          v16 = (v18.malloc)(factor->solveWorkspaceRequiredPerRHS + *&factor[1].status * v10);
          if (v16)
          {
            v17 = v16;
            _SparseSolveOpaque_Float(factor, 0, a2, v16);
            result = (free)(v17);
            goto LABEL_5;
          }

          if (reportError)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            memset(&v18, 0, sizeof(v18));
            snprintf(&v18, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CC3F4();
          }
        }

        else
        {
          if (v18.reportError)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            memset(&v18, 0, sizeof(v18));
            snprintf(&v18, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CC360();
          }
        }
      }
    }

    else
    {
      if (v18.reportError)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        memset(&v18, 0, sizeof(v18));
        snprintf(&v18, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC46C();
      }
    }

LABEL_4:
    _SparseTrap();
  }

  if (!v18.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(&v18, 0, sizeof(v18));
  snprintf(&v18, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  result = (reportError)(&v18);
LABEL_5:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(SparseOpaqueFactorization_Float *factor, DenseMatrix_Float *a2, DenseMatrix_Float *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v38, &factor->symbolicFactorization);
  reportError = v38.reportError;
  if (p_symbolicFactorization->status == SparseStatusOK && factor->symbolicFactorization.workspaceSize_Float && factor->status == SparseStatusOK && factor->solveWorkspaceRequiredStatic)
  {
    v10 = *&factor->attributes ^ *&factor->symbolicFactorization.attributes;
    factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
    v12 = factor->symbolicFactorization.rowCount * factorization_low;
    v13 = factor->symbolicFactorization.columnCount * factorization_low;
    if (v10)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v10)
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    if (BYTE1(factor->symbolicFactorization.factorization) == 40)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    rowCount = a2->rowCount;
    if (a2->columnStride < a2->rowCount)
    {
      if (v38.reportError)
      {
        goto LABEL_30;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC574();
      }

      goto LABEL_4;
    }

    if (a3->columnStride < a3->rowCount)
    {
      if (v38.reportError)
      {
LABEL_30:
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
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        memset(&v38, 0, sizeof(v38));
        snprintf(&v38, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBD60();
      }

LABEL_4:
      _SparseTrap();
    }

    attributes = a2->attributes;
    if ((*&attributes & 1) == 0)
    {
      rowCount = a2->columnCount;
    }

    v19 = a3->attributes;
    if (*&attributes)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    v21 = (*&v19 & 1) == 0;
    if (*&v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }

    v23 = *(&a3->rowCount + v22);
    v24 = *(&a2->rowCount + v20);
    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = 4;
    }

    v26 = *(&a3->rowCount + v25);
    if (rowCount == v23)
    {
      if (rowCount <= 0)
      {
        if (v38.reportError)
        {
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
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          memset(&v38, 0, sizeof(v38));
          snprintf(&v38, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC4F0();
        }

        goto LABEL_4;
      }

      if (v24 == v16)
      {
        if (v26 == v15)
        {
          free = v38.free;
          v28 = 4;
          if (*&attributes)
          {
            v28 = 0;
          }

          v29 = (v38.malloc)(factor->solveWorkspaceRequiredPerRHS + *&factor[1].status * *(&a2->rowCount + v28));
          if (v29)
          {
            v30 = v29;
            _SparseSolveOpaque_Float(factor, a2, a3, v29);
            result = (free)(v30);
            goto LABEL_5;
          }

          if (reportError)
          {
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
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            memset(&v38, 0, sizeof(v38));
            snprintf(&v38, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CC3F4();
          }

          goto LABEL_4;
        }

        if (v38.reportError)
        {
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
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          memset(&v38, 0, sizeof(v38));
          v33 = "X";
          goto LABEL_64;
        }

        v36 = v16;
        v37 = v15;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v38.control = 136316418;
        *&v38.orderMethod = "X";
        WORD2(v38.order) = 1024;
        *(&v38.order + 6) = v26;
        WORD1(v38.ignoreRowsAndColumns) = 1024;
        HIDWORD(v38.ignoreRowsAndColumns) = rowCount;
        LOWORD(v38.malloc) = 2080;
        *(&v38.malloc + 2) = "matrix factorization Factored";
        WORD1(v38.free) = 1024;
        HIDWORD(v38.free) = v37;
        LOWORD(v38.reportError) = 1024;
        *(&v38.reportError + 2) = v36;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v38.reportError)
        {
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
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          memset(&v38, 0, sizeof(v38));
          v33 = "B";
LABEL_64:
          snprintf(&v38, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v33);
          goto LABEL_10;
        }

        v34 = v16;
        v35 = v15;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v38.control = 136316418;
        *&v38.orderMethod = "B";
        WORD2(v38.order) = 1024;
        *(&v38.order + 6) = v24;
        WORD1(v38.ignoreRowsAndColumns) = 1024;
        HIDWORD(v38.ignoreRowsAndColumns) = rowCount;
        LOWORD(v38.malloc) = 2080;
        *(&v38.malloc + 2) = "matrix factorization Factored";
        WORD1(v38.free) = 1024;
        HIDWORD(v38.free) = v35;
        LOWORD(v38.reportError) = 1024;
        *(&v38.reportError + 2) = v34;
        v31 = MEMORY[0x277D86220];
        v32 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v38.reportError)
      {
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
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        memset(&v38, 0, sizeof(v38));
        snprintf(&v38, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_10;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v38.control = 136316418;
      *&v38.orderMethod = "B";
      WORD2(v38.order) = 1024;
      *(&v38.order + 6) = v24;
      WORD1(v38.ignoreRowsAndColumns) = 1024;
      HIDWORD(v38.ignoreRowsAndColumns) = rowCount;
      LOWORD(v38.malloc) = 2080;
      *(&v38.malloc + 2) = "X";
      WORD1(v38.free) = 1024;
      HIDWORD(v38.free) = v26;
      LOWORD(v38.reportError) = 1024;
      *(&v38.reportError + 2) = v23;
      v31 = MEMORY[0x277D86220];
      v32 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v31, OS_LOG_TYPE_ERROR, v32, &v38, 0x2Eu);
    goto LABEL_4;
  }

  if (!v38.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

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
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(&v38, 0, sizeof(v38));
  snprintf(&v38, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  result = (reportError)(&v38);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseSolve(SparseOpaqueFactorization_Float *factor, DenseMatrix_Float *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v15, &factor->symbolicFactorization);
  reportError = v15.reportError;
  if (p_symbolicFactorization->status == SparseStatusOK && factor->symbolicFactorization.workspaceSize_Float && factor->status == SparseStatusOK && factor->solveWorkspaceRequiredStatic)
  {
    rowCount = a2->rowCount;
    if (a2->columnStride >= a2->rowCount)
    {
      if (*&a2->attributes)
      {
        v10 = 0;
        rowCount = a2->columnCount;
      }

      else
      {
        v10 = 4;
      }

      if (*(&a2->rowCount + v10) <= 0)
      {
        if (v15.reportError)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v16 = 0u;
          memset(&v15, 0, sizeof(v15));
          snprintf(&v15, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366FFDD4();
        }
      }

      else
      {
        factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
        v12 = factor->symbolicFactorization.rowCount * factorization_low;
        v13 = factor->symbolicFactorization.columnCount * factorization_low;
        if (v12 <= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        if (rowCount == v14)
        {
          _SparseSolveOpaque_Float(factor, 0, a2, a3);
          goto LABEL_5;
        }

        if (v15.reportError)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v16 = 0u;
          memset(&v15, 0, sizeof(v15));
          snprintf(&v15, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC360();
        }
      }
    }

    else
    {
      if (v15.reportError)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        memset(&v15, 0, sizeof(v15));
        snprintf(&v15, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC46C();
      }
    }

LABEL_4:
    _SparseTrap();
  }

  if (!v15.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(&v15, 0, sizeof(v15));
  snprintf(&v15, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  (reportError)(&v15);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
}

void SparseSolve(SparseOpaqueFactorization_Float *factor, DenseMatrix_Float *a2, DenseMatrix_Float *a3, void *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v32, &factor->symbolicFactorization);
  reportError = v32.reportError;
  if (p_symbolicFactorization->status == SparseStatusOK && factor->symbolicFactorization.workspaceSize_Float && factor->status == SparseStatusOK && factor->solveWorkspaceRequiredStatic)
  {
    v11 = *&factor->attributes ^ *&factor->symbolicFactorization.attributes;
    factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
    v13 = factor->symbolicFactorization.rowCount * factorization_low;
    v14 = factor->symbolicFactorization.columnCount * factorization_low;
    if (v11)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (v11)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (BYTE1(factor->symbolicFactorization.factorization) == 40)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    rowCount = a2->rowCount;
    if (a2->columnStride < a2->rowCount)
    {
      if (v32.reportError)
      {
        goto LABEL_30;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC574();
      }

      goto LABEL_4;
    }

    if (a3->columnStride < a3->rowCount)
    {
      if (v32.reportError)
      {
LABEL_30:
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        memset(&v32, 0, sizeof(v32));
        snprintf(&v32, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBD60();
      }

LABEL_4:
      _SparseTrap();
    }

    if (*&a2->attributes)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
      rowCount = a2->columnCount;
    }

    if (*&a3->attributes)
    {
      v20 = 0;
    }

    else
    {
      v20 = 4;
    }

    v21 = *(&a3->rowCount + v20);
    v22 = *(&a2->rowCount + v19);
    if (*&a3->attributes)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(&a3->rowCount + v23);
    if (rowCount == v21)
    {
      if (rowCount <= 0)
      {
        if (v32.reportError)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          memset(&v32, 0, sizeof(v32));
          snprintf(&v32, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC4F0();
        }

        goto LABEL_4;
      }

      if (v22 == v17)
      {
        if (v24 == v16)
        {
          _SparseSolveOpaque_Float(factor, a2, a3, a4);
          goto LABEL_5;
        }

        if (v32.reportError)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          memset(&v32, 0, sizeof(v32));
          v27 = "X";
          goto LABEL_59;
        }

        v30 = v17;
        v31 = v16;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v32.control = 136316418;
        *&v32.orderMethod = "X";
        WORD2(v32.order) = 1024;
        *(&v32.order + 6) = v24;
        WORD1(v32.ignoreRowsAndColumns) = 1024;
        HIDWORD(v32.ignoreRowsAndColumns) = rowCount;
        LOWORD(v32.malloc) = 2080;
        *(&v32.malloc + 2) = "matrix factorization Factored";
        WORD1(v32.free) = 1024;
        HIDWORD(v32.free) = v31;
        LOWORD(v32.reportError) = 1024;
        *(&v32.reportError + 2) = v30;
        v25 = MEMORY[0x277D86220];
        v26 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v32.reportError)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          memset(&v32, 0, sizeof(v32));
          v27 = "B";
LABEL_59:
          snprintf(&v32, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v27);
          goto LABEL_10;
        }

        v28 = v17;
        v29 = v16;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v32.control = 136316418;
        *&v32.orderMethod = "B";
        WORD2(v32.order) = 1024;
        *(&v32.order + 6) = v22;
        WORD1(v32.ignoreRowsAndColumns) = 1024;
        HIDWORD(v32.ignoreRowsAndColumns) = rowCount;
        LOWORD(v32.malloc) = 2080;
        *(&v32.malloc + 2) = "matrix factorization Factored";
        WORD1(v32.free) = 1024;
        HIDWORD(v32.free) = v29;
        LOWORD(v32.reportError) = 1024;
        *(&v32.reportError + 2) = v28;
        v25 = MEMORY[0x277D86220];
        v26 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v32.reportError)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        memset(&v32, 0, sizeof(v32));
        snprintf(&v32, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_10;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v32.control = 136316418;
      *&v32.orderMethod = "B";
      WORD2(v32.order) = 1024;
      *(&v32.order + 6) = v22;
      WORD1(v32.ignoreRowsAndColumns) = 1024;
      HIDWORD(v32.ignoreRowsAndColumns) = rowCount;
      LOWORD(v32.malloc) = 2080;
      *(&v32.malloc + 2) = "X";
      WORD1(v32.free) = 1024;
      HIDWORD(v32.free) = v24;
      LOWORD(v32.reportError) = 1024;
      *(&v32.reportError + 2) = v21;
      v25 = MEMORY[0x277D86220];
      v26 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v25, OS_LOG_TYPE_ERROR, v26, &v32, 0x2Eu);
    goto LABEL_4;
  }

  if (!v32.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  memset(&v32, 0, sizeof(v32));
  snprintf(&v32, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  (reportError)(&v32);
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t SparseSolve(SparseOpaqueFactorization_Float *factor, DenseVector_Float a2)
{
  v30 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  data = a2.data;
  count = a2.count;
  _SparseGetOptionsFromSymbolicFactor(&v16, &factor->symbolicFactorization);
  reportError = v16.reportError;
  if (p_symbolicFactorization->status || !factor->symbolicFactorization.workspaceSize_Float || factor->status || !factor->solveWorkspaceRequiredStatic)
  {
    if (!v16.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F736C();
      }

      goto LABEL_4;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    memset(&v16, 0, sizeof(v16));
    snprintf(&v16, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
  }

  else
  {
    factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
    v10 = factor->symbolicFactorization.rowCount * factorization_low;
    v11 = factor->symbolicFactorization.columnCount * factorization_low;
    if (v10 > v11)
    {
      v11 = v10;
    }

    if (v11 == count)
    {
      free = v16.free;
      Soln.rowCount = count;
      Soln.columnCount = 1;
      Soln.columnStride = count;
      *&Soln.attributes = 0;
      Soln.data = data;
      v13 = (v16.malloc)(*&factor[1].status + factor->solveWorkspaceRequiredPerRHS);
      if (v13)
      {
        v14 = v13;
        _SparseSolveOpaque_Float(factor, 0, &Soln, v13);
        result = (free)(v14);
        goto LABEL_5;
      }

      if (reportError)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        memset(&v16, 0, sizeof(v16));
        snprintf(&v16, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC3F4();
      }

LABEL_4:
      _SparseTrap();
    }

    if (!v16.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC5F8();
      }

      goto LABEL_4;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    memset(&v16, 0, sizeof(v16));
    snprintf(&v16, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
  }

LABEL_10:
  result = (reportError)(&v16);
LABEL_5:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(SparseOpaqueFactorization_Float *factor, DenseVector_Float a2, DenseVector_Float a3)
{
  v40 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  data = a3.data;
  count = a3.count;
  v8 = a2.data;
  v9 = a2.count;
  _SparseGetOptionsFromSymbolicFactor(&v26, &factor->symbolicFactorization);
  reportError = v26.reportError;
  if (p_symbolicFactorization->status || !factor->symbolicFactorization.workspaceSize_Float || factor->status || !factor->solveWorkspaceRequiredStatic)
  {
    if (!v26.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F736C();
      }

      goto LABEL_4;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    snprintf(&v26, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
  }

  else
  {
    v12 = *&factor->attributes ^ *&factor->symbolicFactorization.attributes;
    factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
    v14 = factor->symbolicFactorization.rowCount * factorization_low;
    v15 = factor->symbolicFactorization.columnCount * factorization_low;
    v16 = (v12 & 1) == 0;
    if (v12)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = v14;
    }

    if (BYTE1(factor->symbolicFactorization.factorization) == 40)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (v18 == count)
    {
      if (v19 == v9)
      {
        free = v26.free;
        RHS.rowCount = v9;
        RHS.columnCount = 1;
        RHS.columnStride = v9;
        *&RHS.attributes = 0;
        RHS.data = v8;
        Soln.rowCount = count;
        Soln.columnCount = 1;
        Soln.columnStride = count;
        *&Soln.attributes = 0;
        v21 = *&factor[1].status + factor->solveWorkspaceRequiredPerRHS;
        Soln.data = data;
        v22 = (v26.malloc)(v21);
        if (v22)
        {
          v23 = v22;
          _SparseSolveOpaque_Float(factor, &RHS, &Soln, v22);
          result = (free)(v23);
          goto LABEL_5;
        }

        if (reportError)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          memset(&v26, 0, sizeof(v26));
          snprintf(&v26, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC3F4();
        }

LABEL_4:
        _SparseTrap();
      }

      if (!v26.reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC71C();
        }

        goto LABEL_4;
      }
    }

    else if (!v26.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC68C();
      }

      goto LABEL_4;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    snprintf(&v26, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
  }

LABEL_10:
  result = (reportError)(&v26);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseSolve(SparseOpaqueFactorization_Float *factor, DenseVector_Float a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  data = a2.data;
  count = a2.count;
  _SparseGetOptionsFromSymbolicFactor(&v13, &factor->symbolicFactorization);
  reportError = v13.reportError;
  if (p_symbolicFactorization->status == SparseStatusOK && factor->symbolicFactorization.workspaceSize_Float && factor->status == SparseStatusOK && factor->solveWorkspaceRequiredStatic)
  {
    factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
    v11 = factor->symbolicFactorization.rowCount * factorization_low;
    v12 = factor->symbolicFactorization.columnCount * factorization_low;
    if (v11 > v12)
    {
      v12 = v11;
    }

    if (v12 == count)
    {
      v13.control = count;
      *&v13.orderMethod = 1;
      v13.order = count;
      v13.ignoreRowsAndColumns = data;
      _SparseSolveOpaque_Float(factor, 0, &v13, a3);
      goto LABEL_5;
    }

    if (v13.reportError)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      memset(&v13, 0, sizeof(v13));
      snprintf(&v13, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC5F8();
    }

LABEL_4:
    _SparseTrap();
  }

  if (!v13.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  memset(&v13, 0, sizeof(v13));
  snprintf(&v13, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  (reportError)(&v13);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
}

void SparseSolve(SparseOpaqueFactorization_Float *factor, DenseVector_Float a2, DenseVector_Float a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  p_symbolicFactorization = &factor->symbolicFactorization;
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  data = a3.data;
  count = a3.count;
  v10 = a2.data;
  v11 = a2.count;
  _SparseGetOptionsFromSymbolicFactor(&v22, &factor->symbolicFactorization);
  reportError = v22.reportError;
  if (p_symbolicFactorization->status == SparseStatusOK && factor->symbolicFactorization.workspaceSize_Float && factor->status == SparseStatusOK && factor->solveWorkspaceRequiredStatic)
  {
    v13 = *&factor->attributes ^ *&factor->symbolicFactorization.attributes;
    factorization_low = LOBYTE(factor->symbolicFactorization.factorization);
    v15 = factor->symbolicFactorization.rowCount * factorization_low;
    v16 = factor->symbolicFactorization.columnCount * factorization_low;
    v17 = (v13 & 1) == 0;
    if (v13)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    if (v17)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if (BYTE1(factor->symbolicFactorization.factorization) == 40)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    if (v19 == count)
    {
      if (v20 == v11)
      {
        v22.control = v11;
        *&v22.orderMethod = 1;
        v22.order = v11;
        v22.ignoreRowsAndColumns = v10;
        Soln.rowCount = count;
        Soln.columnCount = 1;
        Soln.columnStride = count;
        *&Soln.attributes = 0;
        Soln.data = data;
        _SparseSolveOpaque_Float(factor, &v22, &Soln, a4);
        goto LABEL_5;
      }

      if (v22.reportError)
      {
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC71C();
      }
    }

    else
    {
      if (v22.reportError)
      {
LABEL_31:
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        memset(&v22, 0, sizeof(v22));
        snprintf(&v22, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC68C();
      }
    }

LABEL_4:
    _SparseTrap();
  }

  if (!v22.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(&v22, 0, sizeof(v22));
  snprintf(&v22, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  (reportError)(&v22);
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

void SparseRefactor(SparseMatrix_Float *a1, SparseOpaqueFactorization_Float *a2, SparseNumericFactorOptions *a3, void *a4, __n128 a5)
{
  if (a1->structure.rowCount != a2->symbolicFactorization.rowCount || a1->structure.columnCount != a2->symbolicFactorization.columnCount || *(&a1->structure.blockSize + 2) != LOBYTE(a2->symbolicFactorization.factorization) || ((*&a2->symbolicFactorization.attributes ^ *&a1->structure.attributes) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC7AC();
    }

    _SparseTrap();
  }

  v6 = BYTE1(a2->symbolicFactorization.factorization);
  if ((v6 - 80) >= 4)
  {
    if ((v6 - 40) > 1)
    {

      _SparseRefactorSymmetric_Float(a1, a2, a3, a4);
    }

    else
    {

      _SparseRefactorQR_Float(a1, a2, a3, a4);
    }
  }

  else
  {

    _SparseRefactorLU_Float(a1, a2, a3, a4, a5);
  }
}

uint64_t SparseRefactor(SparseMatrix_Float *a1, SparseOpaqueFactorization_Float *a2, SparseNumericFactorOptions *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2->symbolicFactorization.status || !a2->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5A8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v15, &a2->symbolicFactorization);
  free = v15.free;
  reportError = v15.reportError;
  v9 = (v15.malloc)(a2->symbolicFactorization.workspaceSize_Double);
  if (!v9)
  {
    a2->status = SparseInternalError;
    if (reportError)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      memset(&v15, 0, sizeof(v15));
      snprintf(&v15, 0x100uLL, "Failed to allocate workspace of size %ld.", a2->symbolicFactorization.workspaceSize_Double);
      result = (reportError)(&v15);
      goto LABEL_5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC83C(&a2->symbolicFactorization.workspaceSize_Double);
    }

LABEL_4:
    _SparseTrap();
  }

  v10 = v9;
  v11 = *&a1->structure.rowIndices;
  *&v15.control = *&a1->structure.rowCount;
  *&v15.ignoreRowsAndColumns = v11;
  v15.free = a1->data;
  v12 = *&a3->pivotTolerance;
  *&v14.control = *&a3->control;
  *&v14.pivotTolerance = v12;
  SparseRefactor(&v15, a2, &v14, v9, *&v14.control);
  result = (free)(v10);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseRefactor(SparseMatrix_Float *a1, SparseOpaqueFactorization_Float *factor, void *a3)
{
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    _SparseTrap();
  }

  memset(&v9, 0, sizeof(v9));
  _SparseGetOptionsFromNumericFactor_Float(&v9, factor);
  v6 = *&a1->structure.rowIndices;
  *&v8.structure.rowCount = *&a1->structure.rowCount;
  *&v8.structure.rowIndices = v6;
  v8.data = a1->data;
  v7 = v9;
  SparseRefactor(&v8, factor, &v7, a3, *&v9.control);
}

uint64_t SparseRefactor(SparseMatrix_Float *a1, SparseOpaqueFactorization_Float *factor)
{
  if (factor->symbolicFactorization.status || !factor->symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5EC();
    }

    _SparseTrap();
  }

  memset(&v8, 0, sizeof(v8));
  _SparseGetOptionsFromNumericFactor_Float(&v8, factor);
  v4 = *&a1->structure.rowIndices;
  *&v7.structure.rowCount = *&a1->structure.rowCount;
  *&v7.structure.rowIndices = v4;
  v7.data = a1->data;
  v6 = v8;
  return SparseRefactor(&v7, factor, &v6);
}

uint64_t SparseUpdateFactor(unsigned __int8 a1, SparseOpaqueFactorization_Float *a2, int a3, const int *a4, SparseMatrix_Float *a5)
{
  if (a5->structure.rowCount != a2->symbolicFactorization.rowCount || a5->structure.columnCount != a2->symbolicFactorization.columnCount || *(&a5->structure.blockSize + 2) != LOBYTE(a2->symbolicFactorization.factorization) || ((*&a2->symbolicFactorization.attributes ^ *&a5->structure.attributes) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC93C();
    }

LABEL_9:
    _SparseTrap();
  }

  if (BYTE1(a2->symbolicFactorization.factorization) - 81 > 2)
  {
    a2->status = SparseParameterError;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD630();
    }

    goto LABEL_9;
  }

  v5 = *&a5->structure.rowIndices;
  v7[0] = *&a5->structure.rowCount;
  v7[1] = v5;
  data = a5->data;
  return _SparseUpdatePartialRefactorLU_Float(a2, a3, a4, v7);
}

void SparseCreateSubfactor(SparseOpaqueFactorization_Float *a1@<X1>, int a2@<W0>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1->symbolicFactorization.status || !a1->symbolicFactorization.workspaceSize_Float || a1->status || !a1->solveWorkspaceRequiredStatic)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD7C8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v24, &a1->symbolicFactorization);
  v7 = *&v24[40];
  v8 = BYTE1(a1->symbolicFactorization.factorization);
  if (a2 <= 4)
  {
    if (a2 <= 2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          if (v8 - 2 >= 3)
          {
            if (*&v24[40])
            {
              memset(&v24[59], 0, 197);
              strcpy(v24, "Subfactor Type only valid for LDL^T or LU factorizations.\n");
LABEL_46:
              v7(v24);
              *a3 = 0u;
              *(a3 + 16) = 0u;
              *(a3 + 96) = 0u;
              *(a3 + 112) = 0u;
              *(a3 + 64) = 0u;
              *(a3 + 80) = 0u;
              *(a3 + 32) = 0u;
              *(a3 + 48) = 0u;
              *(a3 + 8) = -3;
              *(a3 + 16) = -3;
              goto LABEL_5;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              sub_2367CD740();
            }

            goto LABEL_4;
          }

          goto LABEL_36;
        }

LABEL_38:
        if (*&v24[40])
        {
          memset(&v24[24], 0, 232);
          strcpy(v24, "Invalid subfactor type.");
          goto LABEL_46;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CD784();
        }

        goto LABEL_4;
      }

      goto LABEL_36;
    }

    if (a2 != 3)
    {
      if (v8 - 2 >= 3)
      {
        if (*&v24[40])
        {
          memset(&v24[53], 0, 203);
          strcpy(v24, "Subfactor Type only valid for LDL^T factorizations.\n");
          goto LABEL_46;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CD6FC();
        }

        goto LABEL_4;
      }

      goto LABEL_36;
    }

    if (v8 < 5 && ((0x1Du >> v8) & 1) != 0)
    {
      v10 = 6;
      goto LABEL_37;
    }

    if (!*&v24[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }

LABEL_44:
    memset(&v24[66], 0, 190);
    strcpy(&v24[64], "\n");
    v11 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
    goto LABEL_45;
  }

  if ((a2 - 7) >= 2)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v9 = v8 - 40;
        if (v9 > 0x2B || ((1 << v9) & 0xE0000000001) == 0)
        {
          if (*&v24[40])
          {
            memset(&v24[58], 0, 198);
            strcpy(v24, "SparseSubfactorQ only valid for QR or LU factorizations.\n");
            goto LABEL_46;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CD6B8();
          }

LABEL_4:
          _SparseTrap();
        }

        goto LABEL_36;
      }

      goto LABEL_38;
    }

    if (v8 < 5 && ((0x1Du >> v8) & 1) != 0)
    {
LABEL_36:
      v10 = 2;
      goto LABEL_37;
    }

    if (!*&v24[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

LABEL_42:
      sub_2367CCB20();
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  if ((v8 & 0xFE) != 0x28)
  {
    if (!*&v24[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD674();
      }

      goto LABEL_4;
    }

    memset(&v24[66], 0, 190);
    strcpy(&v24[64], "\n");
    v11 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
LABEL_45:
    v20 = *(v11 + 1);
    *v24 = *v11;
    *&v24[16] = v20;
    v21 = *(v11 + 3);
    *&v24[32] = *(v11 + 2);
    *&v24[48] = v21;
    goto LABEL_46;
  }

  v10 = 4;
LABEL_37:
  _SparseRetainNumeric_Float(a1);
  v22 = 0;
  workStatic = 0;
  v12 = *&a1->solveWorkspaceRequiredStatic;
  *&v24[64] = *&a1->userFactorStorage;
  *&v24[80] = v12;
  *&v24[96] = *&a1[1].status;
  v13 = *&a1->symbolicFactorization.columnCount;
  *v24 = *&a1->status;
  *&v24[16] = v13;
  v14 = *&a1->symbolicFactorization.factorSize_Float;
  *&v24[32] = *&a1->symbolicFactorization.workspaceSize_Float;
  *&v24[48] = v14;
  _SparseGetWorkspaceRequired_Float(a2, v24, &workStatic, &v22);
  v15 = *&a1->symbolicFactorization.workspaceSize_Float;
  *(a3 + 56) = *&a1->symbolicFactorization.factorSize_Float;
  v16 = *&a1->solveWorkspaceRequiredStatic;
  *(a3 + 72) = *&a1->userFactorStorage;
  *(a3 + 88) = v16;
  v17 = *&a1->symbolicFactorization.columnCount;
  *(a3 + 8) = *&a1->status;
  *(a3 + 24) = v17;
  *a3 = v10;
  *(a3 + 2) = 0;
  *(a3 + 4) = a2;
  v18 = *&a1[1].status;
  *(a3 + 40) = v15;
  v19 = workStatic;
  *(a3 + 104) = v18;
  *(a3 + 112) = v19;
  *(a3 + 120) = v22;
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v22, &a1->factor.symbolicFactorization);
  v4 = *&v22[40];
  attributes = a2->attributes;
  v6 = (*&attributes & 1) == 0;
  v7 = 4;
  if (*&attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a2->rowCount + v8);
  if (v6)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (!*&v22[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCBEC();
      }

      goto LABEL_25;
    }

    memset(&v22[34], 0, 222);
    strcpy(v22, "XB must have non-zero dimension.\n");
LABEL_34:
    result = v4(v22);
    goto LABEL_35;
  }

  v10 = *(&a2->rowCount + v7);
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v12 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12 > v13)
  {
    v13 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (v10 != v16)
  {
    if (!*&v22[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCC30();
      }

      goto LABEL_25;
    }

    memset(v22, 0, sizeof(v22));
    snprintf(v22, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n");
    goto LABEL_34;
  }

  v17 = *&v22[32];
  v18 = (*&v22[24])(a1->workspaceRequiredPerRHS + *&a1[1].attributes * v9);
  if (!v18)
  {
    if (v4)
    {
      memset(v22, 0, sizeof(v22));
      snprintf(v22, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
      goto LABEL_34;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC20();
    }

LABEL_25:
    _SparseTrap();
  }

  v19 = v18;
  _SparseSolveSubfactor_Float(a1, 0, a2, v18);
  result = v17(v19);
LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_69;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, &a1->factor.symbolicFactorization);
  reportError = v31.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v9 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v10 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v9 >= v10)
  {
    v11 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (*&attributes)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (*&attributes)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  rowCount = a2->rowCount;
  if (a2->columnStride < a2->rowCount)
  {
    if (v31.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC574();
    }

LABEL_69:
    _SparseTrap();
  }

  if (a3->columnStride >= a3->rowCount)
  {
    if (*&a2->attributes)
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
      rowCount = a2->columnCount;
    }

    if (*&a3->attributes)
    {
      v19 = 0;
    }

    else
    {
      v19 = 4;
    }

    v20 = *(&a3->rowCount + v19);
    v21 = *(&a2->rowCount + v18);
    if (*&a3->attributes)
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(&a3->rowCount + v22);
    if (rowCount == v20)
    {
      if (rowCount <= 0)
      {
        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          snprintf(&v31, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC4F0();
        }

        goto LABEL_69;
      }

      if (v21 == v15)
      {
        if (v23 == v14)
        {
          free = v31.free;
          v25 = (v31.malloc)(a1->workspaceRequiredPerRHS + *&a1[1].attributes * rowCount);
          if (v25)
          {
            v26 = v25;
            _SparseSolveSubfactor_Float(a1, a2, a3, v25);
            result = (free)(v26);
            goto LABEL_70;
          }

          if (reportError)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            memset(&v31, 0, sizeof(v31));
            snprintf(&v31, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
            goto LABEL_27;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CBC20();
          }

          goto LABEL_69;
        }

        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          v29 = "X";
          goto LABEL_57;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v31.control = 136316418;
        *&v31.orderMethod = "X";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v23;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        LOWORD(v31.malloc) = 2080;
        *(&v31.malloc + 2) = "subfactor dimension";
        WORD1(v31.free) = 1024;
        HIDWORD(v31.free) = v14;
        LOWORD(v31.reportError) = 1024;
        *(&v31.reportError + 2) = v15;
        v27 = MEMORY[0x277D86220];
        v28 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          v29 = "B";
LABEL_57:
          snprintf(&v31, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v29);
          goto LABEL_27;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v31.control = 136316418;
        *&v31.orderMethod = "B";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v21;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        LOWORD(v31.malloc) = 2080;
        *(&v31.malloc + 2) = "subfactor dimension";
        WORD1(v31.free) = 1024;
        HIDWORD(v31.free) = v14;
        LOWORD(v31.reportError) = 1024;
        *(&v31.reportError + 2) = v15;
        v27 = MEMORY[0x277D86220];
        v28 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v31.reportError)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      v31.control = 136316418;
      *&v31.orderMethod = "B";
      WORD2(v31.order) = 1024;
      *(&v31.order + 6) = v21;
      WORD1(v31.ignoreRowsAndColumns) = 1024;
      HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
      LOWORD(v31.malloc) = 2080;
      *(&v31.malloc + 2) = "X";
      WORD1(v31.free) = 1024;
      HIDWORD(v31.free) = v23;
      LOWORD(v31.reportError) = 1024;
      *(&v31.reportError + 2) = v20;
      v27 = MEMORY[0x277D86220];
      v28 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &v31, 0x2Eu);
    goto LABEL_69;
  }

  if (!v31.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_69;
  }

LABEL_26:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(&v31, 0, sizeof(v31));
  snprintf(&v31, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  result = (reportError)(&v31);
LABEL_70:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, char *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_23;
  }

  _SparseGetOptionsFromSymbolicFactor(v18, &a1->factor.symbolicFactorization);
  v6 = *&v18[40];
  v7 = 4;
  if (*&a2->attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a2->rowCount + v8);
  if ((*&a2->attributes & 1) == 0)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (*&v18[40])
    {
      memset(&v18[34], 0, 222);
      strcpy(v18, "XB must have non-zero dimension.\n");
LABEL_28:
      v6(v18);
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCBEC();
    }

LABEL_23:
    _SparseTrap();
  }

  v10 = *(&a2->rowCount + v7);
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v12 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12 > v13)
  {
    v13 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (v10 != v16)
  {
    if (*&v18[40])
    {
      memset(v18, 0, sizeof(v18));
      snprintf(v18, 0x100uLL, "XB dimension (%d) must match maximum subfactor dimension (%d).\n", v10, v16);
      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCC30();
    }

    goto LABEL_23;
  }

  _SparseSolveSubfactor_Float(a1, 0, a2, a3);
LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
}

void SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3, char *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_64;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, &a1->factor.symbolicFactorization);
  reportError = v31.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v12 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v11 >= v12)
  {
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v13 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (*&attributes)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (*&attributes)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  rowCount = a2->rowCount;
  if (a2->columnStride < a2->rowCount)
  {
    if (v31.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC574();
    }

LABEL_64:
    _SparseTrap();
  }

  if (a3->columnStride >= a3->rowCount)
  {
    if (*&a2->attributes)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
      rowCount = a2->columnCount;
    }

    if (*&a3->attributes)
    {
      v20 = 0;
    }

    else
    {
      v20 = 4;
    }

    v21 = *(&a3->rowCount + v20);
    v22 = *(&a2->rowCount + v19);
    if (*&a3->attributes)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(&a3->rowCount + v23);
    if (rowCount == v21)
    {
      if (rowCount <= 0)
      {
        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          snprintf(&v31, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC4F0();
        }

        goto LABEL_64;
      }

      if (v22 == v17)
      {
        if (v24 == v16)
        {
          _SparseSolveSubfactor_Float(a1, a2, a3, a4);
          goto LABEL_65;
        }

        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          v28 = "X";
          goto LABEL_56;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        v31.control = 136316418;
        *&v31.orderMethod = "X";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v24;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        LOWORD(v31.malloc) = 2080;
        *(&v31.malloc + 2) = "subfactor dimension";
        WORD1(v31.free) = 1024;
        HIDWORD(v31.free) = v16;
        LOWORD(v31.reportError) = 1024;
        *(&v31.reportError + 2) = v17;
        v26 = MEMORY[0x277D86220];
        v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          v28 = "B";
LABEL_56:
          snprintf(&v31, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v28);
          goto LABEL_27;
        }

        v29 = v22;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        v31.control = 136316418;
        *&v31.orderMethod = "B";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v29;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        LOWORD(v31.malloc) = 2080;
        *(&v31.malloc + 2) = "subfactor dimension";
        WORD1(v31.free) = 1024;
        HIDWORD(v31.free) = v16;
        LOWORD(v31.reportError) = 1024;
        *(&v31.reportError + 2) = v17;
        v26 = MEMORY[0x277D86220];
        v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v31.reportError)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_27;
      }

      v25 = v22;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v31.control = 136316418;
      *&v31.orderMethod = "B";
      WORD2(v31.order) = 1024;
      *(&v31.order + 6) = v25;
      WORD1(v31.ignoreRowsAndColumns) = 1024;
      HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
      LOWORD(v31.malloc) = 2080;
      *(&v31.malloc + 2) = "X";
      WORD1(v31.free) = 1024;
      HIDWORD(v31.free) = v24;
      LOWORD(v31.reportError) = 1024;
      *(&v31.reportError + 2) = v21;
      v26 = MEMORY[0x277D86220];
      v27 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &v31, 0x2Eu);
    goto LABEL_64;
  }

  if (!v31.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_64;
  }

LABEL_26:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(&v31, 0, sizeof(v31));
  snprintf(&v31, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v31);
LABEL_65:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2)
{
  v2 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v2;
  v3 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v3;
  v4 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v4;
  v5 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v5;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  return SparseSolve(v8, &v7);
}

uint64_t SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, DenseVector_Float a3)
{
  v3 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v6;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  return SparseSolve(v10, &v9, &v8);
}

void SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, char *a3)
{
  v3 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v6;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  SparseSolve(v8, &v7, a3);
}

void SparseSolve(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, DenseVector_Float a3, char *a4)
{
  v4 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v4;
  v5 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v5;
  v6 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v6;
  v7 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v7;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  SparseSolve(v10, &v9, &v8, a4);
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v22, &a1->factor.symbolicFactorization);
  v4 = *&v22[40];
  attributes = a2->attributes;
  v6 = (*&attributes & 1) == 0;
  v7 = 4;
  if (*&attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a2->rowCount + v8);
  if (v6)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (!*&v22[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCD30();
      }

      goto LABEL_25;
    }

    memset(&v22[34], 0, 222);
    strcpy(v22, "XY must have non-zero dimension.\n");
LABEL_34:
    result = v4(v22);
    goto LABEL_35;
  }

  v10 = *(&a2->rowCount + v7);
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v12 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12 > v13)
  {
    v13 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (v10 != v16)
  {
    if (!*&v22[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCD74();
      }

      goto LABEL_25;
    }

    memset(v22, 0, sizeof(v22));
    snprintf(v22, 0x100uLL, "XY dimension (%d) must match maximum subfactor dimension (%d).\n");
    goto LABEL_34;
  }

  v17 = *&v22[32];
  v18 = (*&v22[24])(a1->workspaceRequiredPerRHS + *&a1[1].attributes * v9);
  if (!v18)
  {
    if (v4)
    {
      memset(v22, 0, sizeof(v22));
      snprintf(v22, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
      goto LABEL_34;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC20();
    }

LABEL_25:
    _SparseTrap();
  }

  v19 = v18;
  _SparseMultiplySubfactor_Float(a1, 0, a2, v18);
  result = v17(v19);
LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_69;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, &a1->factor.symbolicFactorization);
  reportError = v31.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v9 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v10 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v9 >= v10)
  {
    v11 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (*&attributes)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (*&attributes)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  rowCount = a2->rowCount;
  if (a2->columnStride < a2->rowCount)
  {
    if (v31.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

LABEL_69:
    _SparseTrap();
  }

  if (a3->columnStride >= a3->rowCount)
  {
    if (*&a2->attributes)
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
      rowCount = a2->columnCount;
    }

    if (*&a3->attributes)
    {
      v19 = 0;
    }

    else
    {
      v19 = 4;
    }

    v20 = *(&a3->rowCount + v19);
    v21 = *(&a2->rowCount + v18);
    if (*&a3->attributes)
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(&a3->rowCount + v22);
    if (rowCount == v20)
    {
      if (rowCount <= 0)
      {
        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          snprintf(&v31, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CCDEC();
        }

        goto LABEL_69;
      }

      if (v21 == v14)
      {
        if (v23 == v15)
        {
          free = v31.free;
          v25 = (v31.malloc)(a1->workspaceRequiredPerRHS + *&a1[1].attributes * rowCount);
          if (v25)
          {
            v26 = v25;
            _SparseMultiplySubfactor_Float(a1, a2, a3, v25);
            result = (free)(v26);
            goto LABEL_70;
          }

          if (reportError)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            memset(&v31, 0, sizeof(v31));
            snprintf(&v31, 0x100uLL, "Failed to allocate workspace of size %ld.\n");
            goto LABEL_27;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CBC20();
          }

          goto LABEL_69;
        }

        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          v29 = "Y";
          goto LABEL_57;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v31.control = 136316418;
        *&v31.orderMethod = "Y";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v23;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        LOWORD(v31.malloc) = 2080;
        *(&v31.malloc + 2) = "subfactor dimension";
        WORD1(v31.free) = 1024;
        HIDWORD(v31.free) = v15;
        LOWORD(v31.reportError) = 1024;
        *(&v31.reportError + 2) = v14;
        v27 = MEMORY[0x277D86220];
        v28 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          v29 = "X";
LABEL_57:
          snprintf(&v31, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v29);
          goto LABEL_27;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v31.control = 136316418;
        *&v31.orderMethod = "X";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v21;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        LOWORD(v31.malloc) = 2080;
        *(&v31.malloc + 2) = "subfactor dimension";
        WORD1(v31.free) = 1024;
        HIDWORD(v31.free) = v15;
        LOWORD(v31.reportError) = 1024;
        *(&v31.reportError + 2) = v14;
        v27 = MEMORY[0x277D86220];
        v28 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v31.reportError)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "X");
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      v31.control = 136316418;
      *&v31.orderMethod = "X";
      WORD2(v31.order) = 1024;
      *(&v31.order + 6) = v21;
      WORD1(v31.ignoreRowsAndColumns) = 1024;
      HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
      LOWORD(v31.malloc) = 2080;
      *(&v31.malloc + 2) = "Y";
      WORD1(v31.free) = 1024;
      HIDWORD(v31.free) = v23;
      LOWORD(v31.reportError) = 1024;
      *(&v31.reportError + 2) = v20;
      v27 = MEMORY[0x277D86220];
      v28 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &v31, 0x2Eu);
    goto LABEL_69;
  }

  if (!v31.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_69;
  }

LABEL_26:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(&v31, 0, sizeof(v31));
  snprintf(&v31, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  result = (reportError)(&v31);
LABEL_70:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, char *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_23;
  }

  _SparseGetOptionsFromSymbolicFactor(v18, &a1->factor.symbolicFactorization);
  v6 = *&v18[40];
  v7 = 4;
  if (*&a2->attributes)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&a2->rowCount + v8);
  if ((*&a2->attributes & 1) == 0)
  {
    v7 = 0;
  }

  if (v9 <= 0)
  {
    if (*&v18[40])
    {
      memset(&v18[34], 0, 222);
      strcpy(v18, "XY must have non-zero dimension.\n");
LABEL_28:
      v6(v18);
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCD30();
    }

LABEL_23:
    _SparseTrap();
  }

  v10 = *(&a2->rowCount + v7);
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v12 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12 > v13)
  {
    v13 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (v10 != v16)
  {
    if (*&v18[40])
    {
      memset(v18, 0, sizeof(v18));
      snprintf(v18, 0x100uLL, "XY dimension (%d) must match maximum subfactor dimension (%d).\n", v10, v16);
      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCD74();
    }

    goto LABEL_23;
  }

  _SparseMultiplySubfactor_Float(a1, 0, a2, a3);
LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
}

void SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseMatrix_Float *a2, DenseMatrix_Float *a3, char *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(&a1->contents + 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_64;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, &a1->factor.symbolicFactorization);
  reportError = v31.reportError;
  attributes = a1->attributes;
  factorization_low = LOBYTE(a1->factor.symbolicFactorization.factorization);
  v11 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  v12 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  if (v11 >= v12)
  {
    v13 = a1->factor.symbolicFactorization.columnCount * factorization_low;
  }

  else
  {
    v13 = a1->factor.symbolicFactorization.rowCount * factorization_low;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(&a1->contents + 2) == 6 && BYTE1(a1->factor.symbolicFactorization.factorization) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (*&attributes)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (*&attributes)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  rowCount = a3->rowCount;
  if (a3->columnStride < a3->rowCount)
  {
    if (v31.reportError)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

LABEL_64:
    _SparseTrap();
  }

  if (a2->columnStride >= a2->rowCount)
  {
    if (*&a3->attributes)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
      rowCount = a3->columnCount;
    }

    if (*&a2->attributes)
    {
      v20 = 0;
    }

    else
    {
      v20 = 4;
    }

    v21 = *(&a2->rowCount + v20);
    v22 = *(&a3->rowCount + v19);
    if (*&a2->attributes)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(&a2->rowCount + v23);
    if (rowCount == v21)
    {
      if (rowCount <= 0)
      {
        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          snprintf(&v31, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_27;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CBCDC();
        }

        goto LABEL_64;
      }

      if (v22 == v17)
      {
        if (v24 == v16)
        {
          _SparseMultiplySubfactor_Float(a1, a2, a3, a4);
          goto LABEL_65;
        }

        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          v28 = "X";
          goto LABEL_56;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        v31.control = 136316418;
        *&v31.orderMethod = "X";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v24;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        LOWORD(v31.malloc) = 2080;
        *(&v31.malloc + 2) = "subfactor dimension";
        WORD1(v31.free) = 1024;
        HIDWORD(v31.free) = v16;
        LOWORD(v31.reportError) = 1024;
        *(&v31.reportError + 2) = v17;
        v26 = MEMORY[0x277D86220];
        v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v31.reportError)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          memset(&v31, 0, sizeof(v31));
          v28 = "Y";
LABEL_56:
          snprintf(&v31, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v28);
          goto LABEL_27;
        }

        v29 = v22;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        v31.control = 136316418;
        *&v31.orderMethod = "Y";
        WORD2(v31.order) = 1024;
        *(&v31.order + 6) = v29;
        WORD1(v31.ignoreRowsAndColumns) = 1024;
        HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
        LOWORD(v31.malloc) = 2080;
        *(&v31.malloc + 2) = "subfactor dimension";
        WORD1(v31.free) = 1024;
        HIDWORD(v31.free) = v16;
        LOWORD(v31.reportError) = 1024;
        *(&v31.reportError + 2) = v17;
        v26 = MEMORY[0x277D86220];
        v27 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v31.reportError)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(&v31, 0, sizeof(v31));
        snprintf(&v31, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "Y");
        goto LABEL_27;
      }

      v25 = v22;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v31.control = 136316418;
      *&v31.orderMethod = "Y";
      WORD2(v31.order) = 1024;
      *(&v31.order + 6) = v25;
      WORD1(v31.ignoreRowsAndColumns) = 1024;
      HIDWORD(v31.ignoreRowsAndColumns) = rowCount;
      LOWORD(v31.malloc) = 2080;
      *(&v31.malloc + 2) = "X";
      WORD1(v31.free) = 1024;
      HIDWORD(v31.free) = v24;
      LOWORD(v31.reportError) = 1024;
      *(&v31.reportError + 2) = v21;
      v26 = MEMORY[0x277D86220];
      v27 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &v31, 0x2Eu);
    goto LABEL_64;
  }

  if (!v31.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_64;
  }

LABEL_26:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(&v31, 0, sizeof(v31));
  snprintf(&v31, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
LABEL_27:
  (reportError)(&v31);
LABEL_65:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2)
{
  v2 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v2;
  v3 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v3;
  v4 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v4;
  v5 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v5;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  return SparseMultiply(v8, &v7);
}

uint64_t SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, DenseVector_Float a3)
{
  v3 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v6;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  return SparseMultiply(v10, &v9, &v8);
}

void SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, char *a3)
{
  v3 = *&a1->factor.numericFactorization;
  v8[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v8[5] = v3;
  v4 = *&a1->workspaceRequiredPerRHS;
  v8[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v8[7] = v4;
  v5 = *&a1->factor.symbolicFactorization.status;
  v8[0] = *&a1->attributes;
  v8[1] = v5;
  v6 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v8[2] = *&a1->factor.symbolicFactorization.factorization;
  v8[3] = v6;
  v7.rowCount = a2.count;
  v7.columnCount = 1;
  v7.columnStride = a2.count;
  *&v7.attributes = 0;
  v7.data = a2.data;
  SparseMultiply(v8, &v7, a3);
}

void SparseMultiply(SparseOpaqueSubfactor_Float *a1, DenseVector_Float a2, DenseVector_Float a3, char *a4)
{
  v4 = *&a1->factor.numericFactorization;
  v10[4] = *&a1->factor.symbolicFactorization.factorSize_Double;
  v10[5] = v4;
  v5 = *&a1->workspaceRequiredPerRHS;
  v10[6] = *&a1->factor.solveWorkspaceRequiredPerRHS;
  v10[7] = v5;
  v6 = *&a1->factor.symbolicFactorization.status;
  v10[0] = *&a1->attributes;
  v10[1] = v6;
  v7 = *&a1->factor.symbolicFactorization.workspaceSize_Double;
  v10[2] = *&a1->factor.symbolicFactorization.factorization;
  v10[3] = v7;
  v9.rowCount = a2.count;
  v9.columnCount = 1;
  v9.columnStride = a2.count;
  *&v9.attributes = 0;
  v9.data = a2.data;
  v8.rowCount = a3.count;
  v8.columnCount = 1;
  v8.columnStride = a3.count;
  *&v8.attributes = 0;
  v8.data = a3.data;
  SparseMultiply(v10, &v9, &v8, a4);
}

SparseOpaquePreconditioner_Float *SparseCreatePreconditioner@<X0>(SparseMatrix_Float *a1@<X1>, SparsePreconditioner_t a2@<W0>, SparseOpaquePreconditioner_Float *a3@<X8>)
{
  v4 = *(&a1->structure.blockSize + 2);
  v5 = 4;
  if (*&a1->structure.attributes)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*&a1->structure.attributes)
  {
    v5 = 0;
  }

  if (*(&a1->structure.rowCount + v6) * v4 < 1 || *(&a1->structure.rowCount + v5) * v4 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCE70();
    }

    _SparseTrap();
  }

  return _SparseCreatePreconditioner_Float(a3, a2, a1);
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Float *a2, DenseMatrix_Float *a3, DenseMatrix_Float *X)
{
  v60 = *MEMORY[0x277D85DE8];
  reportError = a1->options.base.reportError;
  p_options = &a1->options;
  v6 = reportError;
  v8 = *(&a2->structure.blockSize + 2);
  v9 = 4;
  if (*&a2->structure.attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&a2->structure.rowCount + v10) * v8;
  if (*&a2->structure.attributes)
  {
    v9 = 0;
  }

  v12 = *(&a2->structure.rowCount + v9) * v8;
  if (v11 < 1 || v12 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

LABEL_57:
      _SparseTrap();
    }

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
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", X);
    goto LABEL_54;
  }

  v14 = 4;
  if (*&X->attributes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(&X->rowCount + v15);
  if (*&X->attributes)
  {
    v17 = 0;
  }

  else
  {
    v17 = 4;
  }

  v18 = *(&X->rowCount + v17);
  attributes = a3->attributes;
  v20 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(&a3->rowCount + v21);
  if (!v20)
  {
    v14 = 0;
  }

  v23 = *(&a3->rowCount + v14);
  if (v18 != v23)
  {
    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *&buf = __PAIR64__(v16, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v18;
      HIWORD(buf) = 1024;
      LODWORD(v45) = v22;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v23;
      v27 = MEMORY[0x277D86220];
      v28 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_45;
    }

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
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", X);
LABEL_54:
    (v6)(&buf);
    result = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  if (v16 != v12)
  {
    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *&buf = __PAIR64__(v11, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v12;
      HIWORD(buf) = 1024;
      LODWORD(v45) = v16;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v18;
      v27 = MEMORY[0x277D86220];
      v28 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_45;
    }

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
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", X);
    goto LABEL_54;
  }

  if (v22 != v11)
  {
    if (v6)
    {
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
      v46 = 0u;
      v47 = 0u;
      buf = 0u;
      v45 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", X);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v11, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v12;
    HIWORD(buf) = 1024;
    LODWORD(v45) = v22;
    WORD2(v45) = 1024;
    *(&v45 + 6) = v18;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 0x1Au);
    goto LABEL_57;
  }

  method = a1->method;
  if (method == 2)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 0x40000000;
    v32[2] = sub_2367B5A70;
    v32[3] = &unk_278A007A0;
    v29 = *&a2->structure.rowIndices;
    v33 = *&a2->structure.rowCount;
    v34 = v29;
    data = a2->data;
    result = _SparseLSMRSolve_Float(p_options, X, a3, v32, 0);
    goto LABEL_58;
  }

  if (method != 1)
  {
    if (v12 == v11)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 0x40000000;
      v40[2] = sub_2367B5918;
      v40[3] = &unk_278A00760;
      v30 = *&a2->structure.rowIndices;
      v41 = *&a2->structure.rowCount;
      v42 = v30;
      v43 = a2->data;
      result = _SparseCGSolve_Float(p_options, X, a3, v40, 0);
      goto LABEL_58;
    }

    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (v12 != v11)
  {
    if (!v6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_2367CCEE8();
      goto LABEL_57;
    }

LABEL_53:
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
    v46 = 0u;
    v47 = 0u;
    buf = 0u;
    v45 = 0u;
    snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", X);
    goto LABEL_54;
  }

  ApplyOperator[0] = MEMORY[0x277D85DD0];
  ApplyOperator[1] = 0x40000000;
  ApplyOperator[2] = sub_2367B59C4;
  ApplyOperator[3] = &unk_278A00780;
  v25 = *&a2->structure.rowIndices;
  v37 = *&a2->structure.rowCount;
  v38 = v25;
  v39 = a2->data;
  result = _SparseGMRESSolve_Float(p_options, X, a3, ApplyOperator, 0);
LABEL_58:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2367B5918(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B59C4(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B5A70(uint64_t a1, int a2, int a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *__src, SparseMatrix_Float *a2, DenseVector_Float a3, DenseVector_Float a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v10.rowCount = a3.count;
  v10.columnCount = 1;
  v10.columnStride = a3.count;
  *&v10.attributes = 0;
  v10.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v5 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v5;
  v8.data = a2->data;
  result = SparseSolve(&__dst, &v8, &v10, &X);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12 = *MEMORY[0x277D85DE8];
  v10.rowCount = a3.count;
  v10.columnCount = 1;
  v10.columnStride = a3.count;
  *&v10.attributes = 0;
  v10.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v5 = *&a2->structure.rowIndices;
  *&v8.structure.rowCount = *&a2->structure.rowCount;
  *&v8.structure.rowIndices = v5;
  v8.data = a2->data;
  result = SparseSolve(&__dst, &v8, &v10, &X);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(int *a1, void *ApplyOperator, uint64_t a3, DenseMatrix_Float *X)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
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
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(&X->rowCount + v11);
  v13 = *(a3 + 12);
  v14 = (v13 & 1) == 0;
  if (v13)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    v8 = 0;
  }

  if (v10 < 1 || v12 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCF60();
      }

      goto LABEL_41;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *__str = 0u;
    v27 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v6(__str);
    v25 = *MEMORY[0x277D85DE8];
    return 0xFFFFFFFFLL;
  }

  v17 = *(a3 + v15);
  v18 = *(a3 + v8);
  if (v17 < 1 || v18 <= 0)
  {
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCFD8();
      }

      goto LABEL_41;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *__str = 0u;
    v27 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for B (%dx%d)\n");
    goto LABEL_54;
  }

  if (v12 != v18)
  {
    if (v6)
    {
      goto LABEL_53;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109888;
      *&__str[4] = v10;
      *&__str[8] = 1024;
      *&__str[10] = v12;
      *&__str[14] = 1024;
      LODWORD(v27) = v17;
      WORD2(v27) = 1024;
      *(&v27 + 6) = v18;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", __str, 0x1Au);
    }

    goto LABEL_41;
  }

  v20 = *a1;
  if (v20 != 2)
  {
    if (v20 == 1)
    {
      if (v10 == v17)
      {
        v21 = *MEMORY[0x277D85DE8];

        return _SparseGMRESSolve_Float(v5, X, a3, ApplyOperator, 0);
      }

      if (!v6)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      }

      goto LABEL_53;
    }

    if (v10 == v17)
    {
      v24 = *MEMORY[0x277D85DE8];

      return _SparseCGSolve_Float(v5, X, a3, ApplyOperator, 0);
    }

    if (v6)
    {
LABEL_53:
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *__str = 0u;
      v27 = 0u;
      snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
      goto LABEL_54;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_51:
      sub_2367CD050();
    }

LABEL_41:
    _SparseTrap();
  }

  v23 = *MEMORY[0x277D85DE8];

  return _SparseLSMRSolve_Float(v5, X, a3, ApplyOperator, 0);
}

uint64_t SparseSolve(int *a1, uint64_t a2, int a3, float *a4, int a5, float *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 1);
  v7 = (a1 + 2);
  v8 = v9;
  if (a5 <= 0)
  {
    if (v8)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      __str = 0u;
      v19 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimension for x (%dx%d)\n");
LABEL_23:
      v8(&__str);
      result = 0xFFFFFFFFLL;
      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD0C0();
    }

LABEL_26:
    _SparseTrap();
  }

  if (a3 <= 0)
  {
    if (v8)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      __str = 0u;
      v19 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  X.rowCount = a5;
  X.columnCount = 1;
  X.columnStride = a5;
  *&X.attributes = 0;
  X.data = a6;
  B.rowCount = a3;
  B.columnCount = 1;
  B.columnStride = a3;
  *&B.attributes = 0;
  B.data = a4;
  v10 = *a1;
  if (v10 == 2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = sub_2367B63C0;
    v13[3] = &unk_278A00818;
    v13[4] = a2;
    result = _SparseLSMRSolve_Float(v7, &X, &B, v13, 0);
    goto LABEL_27;
  }

  if (v10 != 1)
  {
    if (a5 == a3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = sub_2367B6370;
      v15[3] = &unk_278A007C8;
      v15[4] = a2;
      result = _SparseCGSolve_Float(v7, &X, &B, v15, 0);
      goto LABEL_27;
    }

    if (!v8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a5 != a3)
  {
    if (!v8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_2367CCEE8();
      goto LABEL_26;
    }

LABEL_22:
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    __str = 0u;
    v19 = 0u;
    snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_23;
  }

  ApplyOperator[0] = MEMORY[0x277D85DD0];
  ApplyOperator[1] = 0x40000000;
  ApplyOperator[2] = sub_2367B6398;
  ApplyOperator[3] = &unk_278A007F0;
  ApplyOperator[4] = a2;
  result = _SparseGMRESSolve_Float(v7, &X, &B, ApplyOperator, 0);
LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2367B6370(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367B6398(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367B63C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Float *a2, DenseMatrix_Float *a3, DenseMatrix_Float *a4, uint64_t type)
{
  v63 = *MEMORY[0x277D85DE8];
  p_options = &a1->options;
  reportError = a1->options.base.reportError;
  v7 = *(&a2->structure.blockSize + 2);
  v8 = 4;
  if (*&a2->structure.attributes)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(&a2->structure.rowCount + v9) * v7;
  if (*&a2->structure.attributes)
  {
    v8 = 0;
  }

  v11 = *(&a2->structure.rowCount + v8) * v7;
  if (v10 < 1 || v11 <= 0)
  {
    if (!reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

      goto LABEL_53;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Bad matrix dimensions %dx%d\n", a4, type);
    goto LABEL_42;
  }

  v15 = 4;
  if (*&a4->attributes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&a4->rowCount + v16);
  if (*&a4->attributes)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(&a4->rowCount + v18);
  attributes = a3->attributes;
  v21 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(&a3->rowCount + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(&a3->rowCount + v15);
  if (v19 != v24)
  {
    if (!reportError)
    {
      v29 = v23;
      v30 = v17;
      v31 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      Preconditioner[0].type = 67109888;
      *(&Preconditioner[0].type + 1) = v30;
      LOWORD(Preconditioner[0].mem) = 1024;
      *(&Preconditioner[0].mem + 2) = v31;
      HIWORD(Preconditioner[0].mem) = 1024;
      LODWORD(Preconditioner[0].apply) = v29;
      WORD2(Preconditioner[0].apply) = 1024;
      *(&Preconditioner[0].apply + 6) = v24;
      v32 = MEMORY[0x277D86220];
      v33 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_49;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", a4, type);
LABEL_42:
    (reportError)(Preconditioner);
    v38 = 0xFFFFFFFFLL;
    goto LABEL_54;
  }

  if (v17 != v11)
  {
    if (!reportError)
    {
      v34 = v17;
      v35 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      Preconditioner[0].type = 67109888;
      *(&Preconditioner[0].type + 1) = v10;
      LOWORD(Preconditioner[0].mem) = 1024;
      *(&Preconditioner[0].mem + 2) = v11;
      HIWORD(Preconditioner[0].mem) = 1024;
      LODWORD(Preconditioner[0].apply) = v34;
      WORD2(Preconditioner[0].apply) = 1024;
      *(&Preconditioner[0].apply + 6) = v35;
      v32 = MEMORY[0x277D86220];
      v33 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_49;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(Preconditioner, 0, sizeof(Preconditioner));
    snprintf(Preconditioner, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", a4, type);
    goto LABEL_42;
  }

  if (v23 != v10)
  {
    if (reportError)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      memset(Preconditioner, 0, sizeof(Preconditioner));
      snprintf(Preconditioner, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", a4, type);
      goto LABEL_42;
    }

    v36 = v23;
    v37 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    Preconditioner[0].type = 67109888;
    *(&Preconditioner[0].type + 1) = v10;
    LOWORD(Preconditioner[0].mem) = 1024;
    *(&Preconditioner[0].mem + 2) = v11;
    HIWORD(Preconditioner[0].mem) = 1024;
    LODWORD(Preconditioner[0].apply) = v36;
    WORD2(Preconditioner[0].apply) = 1024;
    *(&Preconditioner[0].apply + 6) = v37;
    v32 = MEMORY[0x277D86220];
    v33 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_49:
    _os_log_error_impl(&dword_2366B9000, v32, OS_LOG_TYPE_ERROR, v33, Preconditioner, 0x1Au);
    goto LABEL_53;
  }

  if (type <= 1)
  {
    if (reportError)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      strcpy(Preconditioner, "Invalid preconditioner type for this call: for no preconditioner, omit the parameter. User-supplied preconditioners must supply apply() method.");
      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD1B0();
    }

LABEL_53:
    _SparseTrap();
  }

  memset(Preconditioner, 0, 24);
  _SparseCreatePreconditioner_Float(Preconditioner, type, a2);
  if (Preconditioner[0].type)
  {
    if (a1->method == 2)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 0x40000000;
      v43[2] = sub_2367B6AB8;
      v43[3] = &unk_278A00878;
      v41 = *&a2->structure.rowIndices;
      v44 = *&a2->structure.rowCount;
      v45 = v41;
      data = a2->data;
      v28 = _SparseLSMRSolve_Float(p_options, a4, a3, v43, Preconditioner);
    }

    else if (a1->method == 1)
    {
      ApplyOperator[0] = MEMORY[0x277D85DD0];
      ApplyOperator[1] = 0x40000000;
      ApplyOperator[2] = sub_2367B6A0C;
      ApplyOperator[3] = &unk_278A00858;
      v27 = *&a2->structure.rowIndices;
      v48 = *&a2->structure.rowCount;
      v49 = v27;
      v50 = a2->data;
      v28 = _SparseGMRESSolve_Float(p_options, a4, a3, ApplyOperator, Preconditioner);
    }

    else
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 0x40000000;
      v51[2] = sub_2367B6960;
      v51[3] = &unk_278A00838;
      v42 = *&a2->structure.rowIndices;
      v52 = *&a2->structure.rowCount;
      v53 = v42;
      v54 = a2->data;
      v28 = _SparseCGSolve_Float(p_options, a4, a3, v51, Preconditioner);
    }

    v38 = v28;
    _SparseReleaseOpaquePreconditioner_Float(Preconditioner);
  }

  else
  {
    v38 = 4294967197;
  }

LABEL_54:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

void sub_2367B6960(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B6A0C(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B6AB8(uint64_t a1, int a2, int a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *a1, SparseMatrix_Float *a2, DenseMatrix_Float *a3, DenseMatrix_Float *X, SparseOpaquePreconditioner_Float *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  reportError = a1->options.base.reportError;
  p_options = &a1->options;
  v7 = reportError;
  v9 = *(&a2->structure.blockSize + 2);
  v10 = 4;
  if (*&a2->structure.attributes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(&a2->structure.rowCount + v11) * v9;
  if (*&a2->structure.attributes)
  {
    v10 = 0;
  }

  v13 = *(&a2->structure.rowCount + v10) * v9;
  if (v12 < 1 || v13 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCE70();
      }

LABEL_57:
      _SparseTrap();
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buf = 0u;
    v46 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n", X, a5);
    goto LABEL_54;
  }

  v15 = 4;
  if (*&X->attributes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(&X->rowCount + v16);
  if (*&X->attributes)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(&X->rowCount + v18);
  attributes = a3->attributes;
  v21 = (*&attributes & 1) == 0;
  if (*&attributes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(&a3->rowCount + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(&a3->rowCount + v15);
  if (v19 != v24)
  {
    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *&buf = __PAIR64__(v17, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v19;
      HIWORD(buf) = 1024;
      LODWORD(v46) = v23;
      WORD2(v46) = 1024;
      *(&v46 + 6) = v24;
      v28 = MEMORY[0x277D86220];
      v29 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_45;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buf = 0u;
    v46 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", X, a5);
LABEL_54:
    (v7)(&buf);
    result = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  if (v17 != v13)
  {
    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *&buf = __PAIR64__(v12, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v13;
      HIWORD(buf) = 1024;
      LODWORD(v46) = v17;
      WORD2(v46) = 1024;
      *(&v46 + 6) = v19;
      v28 = MEMORY[0x277D86220];
      v29 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_45;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buf = 0u;
    v46 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.", X, a5);
    goto LABEL_54;
  }

  if (v23 != v12)
  {
    if (v7)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      buf = 0u;
      v46 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.", X, a5);
      goto LABEL_54;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *&buf = __PAIR64__(v12, 67109888);
    WORD4(buf) = 1024;
    *(&buf + 10) = v13;
    HIWORD(buf) = 1024;
    LODWORD(v46) = v23;
    WORD2(v46) = 1024;
    *(&v46 + 6) = v19;
    v28 = MEMORY[0x277D86220];
    v29 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v28, OS_LOG_TYPE_ERROR, v29, &buf, 0x1Au);
    goto LABEL_57;
  }

  method = a1->method;
  if (method == 2)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 0x40000000;
    v33[2] = sub_2367B7334;
    v33[3] = &unk_278A008D8;
    v30 = *&a2->structure.rowIndices;
    v34 = *&a2->structure.rowCount;
    v35 = v30;
    data = a2->data;
    result = _SparseLSMRSolve_Float(p_options, X, a3, v33, a5);
    goto LABEL_58;
  }

  if (method != 1)
  {
    if (v13 == v12)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 0x40000000;
      v41[2] = sub_2367B71DC;
      v41[3] = &unk_278A00898;
      v31 = *&a2->structure.rowIndices;
      v42 = *&a2->structure.rowCount;
      v43 = v31;
      v44 = a2->data;
      result = _SparseCGSolve_Float(p_options, X, a3, v41, a5);
      goto LABEL_58;
    }

    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (v13 != v12)
  {
    if (!v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_2367CCEE8();
      goto LABEL_57;
    }

LABEL_53:
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buf = 0u;
    v46 = 0u;
    snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.", X, a5);
    goto LABEL_54;
  }

  ApplyOperator[0] = MEMORY[0x277D85DD0];
  ApplyOperator[1] = 0x40000000;
  ApplyOperator[2] = sub_2367B7288;
  ApplyOperator[3] = &unk_278A008B8;
  v26 = *&a2->structure.rowIndices;
  v38 = *&a2->structure.rowCount;
  v39 = v26;
  v40 = a2->data;
  result = _SparseGMRESSolve_Float(p_options, X, a3, ApplyOperator, a5);
LABEL_58:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2367B71DC(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B7288(uint64_t a1, int a2, uint64_t a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  v5 = *(a1 + 48);
  *&v8.structure.rowCount = *(a1 + 32);
  *&v8.structure.rowIndices = v5;
  v8.data = *(a1 + 64);
  v7 = *a4;
  v6 = *a5;
  if (a2)
  {
    SparseMultiplyAdd(1.0, &v8, &v7, &v6);
  }

  else
  {
    SparseMultiply(1.0, &v8, &v7, &v6);
  }
}

void sub_2367B7334(uint64_t a1, int a2, int a3, DenseMatrix_Float *a4, DenseMatrix_Float *a5)
{
  if (a2)
  {
    if (a3 == 111)
    {
      v5 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v5;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v7 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v7 & 0xFFFE | ((v7 & 1) == 0));
    }

    SparseMultiplyAdd(1.0, &v11, &v10, &v9);
  }

  else
  {
    if (a3 == 111)
    {
      v6 = *(a1 + 48);
      *&v11.structure.rowCount = *(a1 + 32);
      *&v11.structure.rowIndices = v6;
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
    }

    else
    {
      *&v11.structure.rowCount = *(a1 + 32);
      v11.structure.rowIndices = *(a1 + 48);
      v8 = *(a1 + 56);
      *&v11.structure.blockSize = *(a1 + 58);
      v11.data = *(a1 + 64);
      v10 = *a4;
      v9 = *a5;
      v11.structure.attributes = (v8 & 0xFFFE | ((v8 & 1) == 0));
    }

    SparseMultiply(1.0, &v11, &v10, &v9);
  }
}

uint64_t SparseSolve(SparseIterativeMethod *__src, SparseMatrix_Float *a2, DenseVector_Float a3, DenseVector_Float a4, SparseOpaquePreconditioner_Float *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v13.rowCount = a3.count;
  v13.columnCount = 1;
  v13.columnStride = a3.count;
  *&v13.attributes = 0;
  v13.data = a3.data;
  X.rowCount = a4.count;
  X.columnCount = 1;
  X.columnStride = a4.count;
  *&X.attributes = 0;
  X.data = a4.data;
  memcpy(&__dst, __src, sizeof(__dst));
  v7 = *&a2->structure.rowIndices;
  *&v11.structure.rowCount = *&a2->structure.rowCount;
  *&v11.structure.rowIndices = v7;
  v11.data = a2->data;
  v10 = *a5;
  result = SparseSolve(&__dst, &v11, &v13, &X, &v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(int *a1, void *ApplyOperator, uint64_t a3, DenseMatrix_Float *X, const SparseOpaquePreconditioner_Float *a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = 4;
  if (*&X->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&X->rowCount + v10);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(&X->rowCount + v12);
  v14 = *(a3 + 12);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
    v9 = 0;
  }

  if (v11 < 1 || v13 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCF60();
      }

      goto LABEL_41;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *__str = 0u;
    v28 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v7(__str);
    v26 = *MEMORY[0x277D85DE8];
    return 0xFFFFFFFFLL;
  }

  v18 = *(a3 + v16);
  v19 = *(a3 + v9);
  if (v18 < 1 || v19 <= 0)
  {
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CCFD8();
      }

      goto LABEL_41;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *__str = 0u;
    v28 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for B (%dx%d)\n");
    goto LABEL_54;
  }

  if (v13 != v19)
  {
    if (v7)
    {
      goto LABEL_53;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109888;
      *&__str[4] = v11;
      *&__str[8] = 1024;
      *&__str[10] = v13;
      *&__str[14] = 1024;
      LODWORD(v28) = v18;
      WORD2(v28) = 1024;
      *(&v28 + 6) = v19;
      _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Dimensions of X (%dx%d) and B (%dx%d) do not match.", __str, 0x1Au);
    }

    goto LABEL_41;
  }

  v21 = *a1;
  if (v21 != 2)
  {
    if (v21 == 1)
    {
      if (v11 == v18)
      {
        v22 = *MEMORY[0x277D85DE8];

        return _SparseGMRESSolve_Float(v6, X, a3, ApplyOperator, a5);
      }

      if (!v7)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      }

      goto LABEL_53;
    }

    if (v11 == v18)
    {
      v25 = *MEMORY[0x277D85DE8];

      return _SparseCGSolve_Float(v6, X, a3, ApplyOperator, a5);
    }

    if (v7)
    {
LABEL_53:
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *__str = 0u;
      v28 = 0u;
      snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
      goto LABEL_54;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_51:
      sub_2367CD050();
    }

LABEL_41:
    _SparseTrap();
  }

  v24 = *MEMORY[0x277D85DE8];

  return _SparseLSMRSolve_Float(v6, X, a3, ApplyOperator, a5);
}