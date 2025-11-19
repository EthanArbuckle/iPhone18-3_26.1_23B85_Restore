uint64_t SparseSolve(int *a1, uint64_t a2, int a3, float *a4, int a5, float *a6, SparseOpaquePreconditioner_Float *Preconditioner)
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
    v14[2] = sub_2367B7C98;
    v14[3] = &unk_278A00950;
    v14[4] = a2;
    result = _SparseLSMRSolve_Float(v8, &X, &B, v14, Preconditioner);
    goto LABEL_27;
  }

  if (v11 != 1)
  {
    if (a5 == a3)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = sub_2367B7C48;
      v16[3] = &unk_278A00900;
      v16[4] = a2;
      result = _SparseCGSolve_Float(v8, &X, &B, v16, Preconditioner);
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
  ApplyOperator[2] = sub_2367B7C70;
  ApplyOperator[3] = &unk_278A00928;
  ApplyOperator[4] = a2;
  result = _SparseGMRESSolve_Float(v8, &X, &B, ApplyOperator, Preconditioner);
LABEL_27:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2367B7C48(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367B7C70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367B7C98(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

void SparseIterate(int *a1, int a2, const BOOL *converged, char *state, void *a5, uint64_t a6, uint64_t a7, DenseMatrix_Float *X, SparseOpaquePreconditioner_Float *Preconditioner)
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

    _SparseLSMRIterate_Float(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }

  else if (v29 == 1)
  {
    v30 = *MEMORY[0x277D85DE8];

    _SparseGMRESIterate_Float(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }

  else
  {
    v33 = *MEMORY[0x277D85DE8];

    _SparseCGIterate_Float(v10, a2, state, converged, X, a6, a7, Preconditioner, a5);
  }
}

void SparseIterate(int *a1, int a2, const BOOL *converged, char *state, void *ApplyOperator, uint64_t a6, uint64_t a7, DenseMatrix_Float *X)
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
    _SparseLSMRIterate_Float(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }

  else if (v28 == 1)
  {
    _SparseGMRESIterate_Float(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }

  else
  {
    _SparseCGIterate_Float(v9, a2, state, converged, X, a6, a7, 0, ApplyOperator);
  }

LABEL_61:
  v29 = *MEMORY[0x277D85DE8];
}

void SparseRetain(SparseOpaqueFactorization_Float *a1@<X0>, uint64_t a2@<X8>)
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
    _SparseRetainNumeric_Float(a1);
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

void SparseRetain(SparseOpaqueSubfactor_Float *a1@<X0>, uint64_t a2@<X8>)
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
    _SparseRetainNumeric_Float(p_factorSize_Double);
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

void SparseCleanup(SparseOpaqueFactorization_Float *toFree)
{
  if ((toFree->status & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Float(toFree);
  }
}

void SparseCleanup(SparseOpaqueSubfactor_Float *a1)
{
  status = a1->factor.status;
  p_factor = &a1->factor;
  if ((status & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Float(p_factor);
  }
}

void SparseCleanup(SparseMatrix_Float *a1)
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

void SparseCleanup(SparseOpaquePreconditioner_Float *a1)
{
  if (a1->type <= SparsePreconditionerUser)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD498();
    }

    _SparseTrap();
  }

  _SparseReleaseOpaquePreconditioner_Float(a1);
}

void SparseConvertFromCoordinate(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int *a6@<X5>, int *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>)
{
  if ((a1 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_21:
    _SparseTrap();
  }

  if (a2 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_21;
  }

  if (a3 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB64();
    }

    goto LABEL_21;
  }

  if (a1 != a2 && (a5 & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_21;
  }

  v18 = malloc_type_malloc(((16 * a4 * a4) | 4) * a3 + 8 * (a2 + 1) + 28, 0x100004000313F17uLL);
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD4DC();
    }

    goto LABEL_21;
  }

  v19 = v18;
  v20 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  if (!v20)
  {
    free(v19);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBC20();
    }

    goto LABEL_21;
  }

  *(a9 + 32) = 0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  v21 = a5;
  v22 = v20;
  _SparseConvertFromCoordinate_Complex_Double(a1, a2, a3, a4, v21, a6, a7, a8, a9, v19, v20);
  free(v22);
  *(a9 + 24) |= 0x8000u;
}

void SparseConvertFromCoordinate(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, char a5@<W4>, int *a6@<X5>, int *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned int *a11)
{
  if (a1 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if (a2 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if (a3 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBB64();
    }

    goto LABEL_14;
  }

  if (a1 != a2 && (a5 & 0xC) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBBDC();
    }

    goto LABEL_14;
  }

  _SparseConvertFromCoordinate_Complex_Double(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t SparseMultiply(uint64_t a1, __int128 *a2, __int128 *a3, double a4, double a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = 4;
  if (*(a1 + 24))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 24))
  {
    v5 = 0;
  }

  v7 = *a3;
  if (*(a3 + 2) < *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_35;
  }

  if (*(a2 + 2) < *a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_35;
  }

  if (*(a3 + 6))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
    v7 = *(a3 + 1);
  }

  if (*(a2 + 6))
  {
    v9 = 0;
  }

  else
  {
    v9 = 4;
  }

  v10 = *(a2 + v9);
  v11 = *(a3 + v8);
  if (*(a2 + 6))
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + v12);
  if (v7 != v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "Y";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "X";
    *&buf[34] = 1024;
    *&buf[36] = v13;
    v27 = 1024;
    v28 = v10;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_34:
    _os_log_error_impl(&dword_2366B9000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x2Eu);
    goto LABEL_35;
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

LABEL_35:
    _SparseTrap();
  }

  v14 = *(a1 + 28);
  v15 = *(a1 + v6) * v14;
  v16 = *(a1 + v5) * v14;
  if (v11 != v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "Y";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "matrix A";
    *&buf[34] = 1024;
    *&buf[36] = v16;
    v27 = 1024;
    v28 = v15;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  if (v13 != v16)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "X";
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "matrix A";
    *&buf[34] = 1024;
    *&buf[36] = v16;
    v27 = 1024;
    v28 = v15;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  v17 = *(a1 + 16);
  *buf = *a1;
  *&buf[16] = v17;
  *&buf[32] = *(a1 + 32);
  v24 = *a2;
  v25 = *(a2 + 2);
  v22 = *a3;
  v23 = *(a3 + 2);
  result = _SparseSpMV_Complex_Double(buf, &v24, 0, &v22, a4, a5);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseMultiply(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v7 = *(a1 + 28);
  v8 = 4;
  if (*(a1 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 24))
  {
    v8 = 0;
  }

  if (*(a1 + v8) * v7 != a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBE68();
    }

LABEL_13:
    _SparseTrap();
  }

  if (*(a1 + v9) * v7 != a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBED8();
    }

    goto LABEL_13;
  }

  v16[0] = a2;
  v16[1] = 1;
  v17 = a2;
  v18 = a3;
  v14[0] = a4;
  v14[1] = 1;
  v14[2] = a4;
  v14[3] = 0;
  v15 = a5;
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v13 = *(a1 + 32);
  return _SparseSpMV_Complex_Double(v12, v16, 0, v14, a6, a7);
}

uint64_t SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 16);
  v5 = *a3;
  v6 = *(a3 + 16);
  return SparseMultiply(v9, &v7, &v5, 1.0, 0.0);
}

{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_69;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, (a1 + 16));
  reportError = v31.reportError;
  v7 = *a1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 20) * v8;
  v10 = *(a1 + 24) * v8;
  if (v9 >= v10)
  {
    v11 = *(a1 + 24) * v8;
  }

  else
  {
    v11 = *(a1 + 20) * v8;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v7)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *a2;
  if (*(a2 + 8) < *a2)
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

  if (*(a3 + 8) >= *a3)
  {
    if (*(a2 + 12))
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
      v16 = *(a2 + 4);
    }

    if (*(a3 + 12))
    {
      v19 = 0;
    }

    else
    {
      v19 = 4;
    }

    v20 = *(a3 + v19);
    v21 = *(a2 + v18);
    if (*(a3 + 12))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a3 + v22);
    if (v16 == v20)
    {
      if (v16 <= 0)
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
          v25 = (v31.malloc)(*(a1 + 112) + *(a1 + 120) * v16);
          if (v25)
          {
            v26 = v25;
            _SparseMultiplySubfactor_Complex_Double(a1, a2, a3, v25);
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
        HIDWORD(v31.ignoreRowsAndColumns) = v16;
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
        HIDWORD(v31.ignoreRowsAndColumns) = v16;
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
      HIDWORD(v31.ignoreRowsAndColumns) = v16;
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

{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_69;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, (a1 + 16));
  reportError = v31.reportError;
  v7 = *a1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 20) * v8;
  v10 = *(a1 + 24) * v8;
  if (v9 >= v10)
  {
    v11 = *(a1 + 24) * v8;
  }

  else
  {
    v11 = *(a1 + 20) * v8;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v7)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *a2;
  if (*(a2 + 8) < *a2)
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

  if (*(a3 + 8) >= *a3)
  {
    if (*(a2 + 12))
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
      v16 = *(a2 + 4);
    }

    if (*(a3 + 12))
    {
      v19 = 0;
    }

    else
    {
      v19 = 4;
    }

    v20 = *(a3 + v19);
    v21 = *(a2 + v18);
    if (*(a3 + 12))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a3 + v22);
    if (v16 == v20)
    {
      if (v16 <= 0)
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
          v25 = (v31.malloc)(*(a1 + 112) + *(a1 + 120) * v16);
          if (v25)
          {
            v26 = v25;
            _SparseMultiplySubfactor_Complex_Float(a1, a2, a3, v25);
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
        HIDWORD(v31.ignoreRowsAndColumns) = v16;
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
        HIDWORD(v31.ignoreRowsAndColumns) = v16;
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
      HIDWORD(v31.ignoreRowsAndColumns) = v16;
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

uint64_t SparseMultiply(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return SparseMultiply(v7, a2, a3, a4, a5, 1.0, 0.0);
}

uint64_t SparseMultiplyAdd(uint64_t a1, __int128 *a2, __int128 *a3, double a4, double a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = 4;
  if (*(a1 + 24))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 24))
  {
    v5 = 0;
  }

  v7 = *a3;
  if (*(a3 + 2) < *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBDE4();
    }

    goto LABEL_35;
  }

  if (*(a2 + 2) < *a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBD60();
    }

    goto LABEL_35;
  }

  if (*(a3 + 6))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
    v7 = *(a3 + 1);
  }

  if (*(a2 + 6))
  {
    v9 = 0;
  }

  else
  {
    v9 = 4;
  }

  v10 = *(a2 + v9);
  v11 = *(a3 + v8);
  if (*(a2 + 6))
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + v12);
  if (v7 != v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "Y";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "X";
    *&buf[34] = 1024;
    *&buf[36] = v13;
    v27 = 1024;
    v28 = v10;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
LABEL_34:
    _os_log_error_impl(&dword_2366B9000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x2Eu);
    goto LABEL_35;
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBCDC();
    }

LABEL_35:
    _SparseTrap();
  }

  v14 = *(a1 + 28);
  v15 = *(a1 + v6) * v14;
  v16 = *(a1 + v5) * v14;
  if (v11 != v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "Y";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "matrix A";
    *&buf[34] = 1024;
    *&buf[36] = v16;
    v27 = 1024;
    v28 = v15;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  if (v13 != v16)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 136316418;
    *&buf[4] = "X";
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "matrix A";
    *&buf[34] = 1024;
    *&buf[36] = v16;
    v27 = 1024;
    v28 = v15;
    v19 = MEMORY[0x277D86220];
    v20 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
    goto LABEL_34;
  }

  v17 = *(a1 + 16);
  *buf = *a1;
  *&buf[16] = v17;
  *&buf[32] = *(a1 + 32);
  v24 = *a2;
  v25 = *(a2 + 2);
  v22 = *a3;
  v23 = *(a3 + 2);
  result = _SparseSpMV_Complex_Double(buf, &v24, 1, &v22, a4, a5);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 16);
  v5 = *a3;
  v6 = *(a3 + 16);
  return SparseMultiplyAdd(v9, &v7, &v5, 1.0, 0.0);
}

uint64_t SparseMultiplyAdd(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v7 = *(a1 + 28);
  v8 = 4;
  if (*(a1 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 24))
  {
    v8 = 0;
  }

  if (*(a1 + v8) * v7 != a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBE68();
    }

LABEL_13:
    _SparseTrap();
  }

  if (*(a1 + v9) * v7 != a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBED8();
    }

    goto LABEL_13;
  }

  v16[0] = a2;
  v16[1] = 1;
  v17 = a2;
  v18 = a3;
  v14[0] = a4;
  v14[1] = 1;
  v14[2] = a4;
  v14[3] = 0;
  v15 = a5;
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v13 = *(a1 + 32);
  return _SparseSpMV_Complex_Double(v12, v16, 1, v14, a6, a7);
}

uint64_t SparseMultiplyAdd(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return SparseMultiplyAdd(v7, a2, a3, a4, a5, 1.0, 0.0);
}

__n128 SparseGetTranspose@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 & 0x20) != 0 && (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD80C();
    }

    _SparseTrap();
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFDE | ((*(a1 + 24) & 1) == 0);
  *(a2 + 32) = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  return result;
}

{
  v4 = *(a1 + 4);
  if (v4 & 0x20) != 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD894();
    }

    _SparseTrap();
  }

  *(a1 + 4) = v4 & 0xFFDE | ((v4 & 1) == 0);
  _SparseRetainNumeric_Complex_Double(a1);
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

{
  v3 = *(a1 + 24);
  if (v3 & 0x20) != 0 && (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD80C();
    }

    _SparseTrap();
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFDE | ((*(a1 + 24) & 1) == 0);
  *(a2 + 32) = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  return result;
}

{
  v4 = *(a1 + 4);
  if (v4 & 0x20) != 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD894();
    }

    _SparseTrap();
  }

  *(a1 + 4) = v4 & 0xFFDE | ((v4 & 1) == 0);
  _SparseRetainNumeric_Complex_Float(a1);
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 SparseGetConjugateTranspose@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 & 0x20) == 0 && (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD850();
    }

    _SparseTrap();
  }

  *(a1 + 24) = v3 & 0xFFFE | ((v3 & 1) == 0) | 0x20;
  *(a2 + 32) = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  return result;
}

{
  v4 = *(a1 + 4);
  if (v4 & 0x20) == 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD8D8();
    }

    _SparseTrap();
  }

  *(a1 + 4) = v4 & 0xFFFE | ((v4 & 1) == 0) | 0x20;
  _SparseRetainNumeric_Complex_Double(a1);
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

{
  v3 = *(a1 + 24);
  if (v3 & 0x20) == 0 && (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD850();
    }

    _SparseTrap();
  }

  *(a1 + 24) = v3 & 0xFFFE | ((v3 & 1) == 0) | 0x20;
  *(a2 + 32) = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  return result;
}

{
  v4 = *(a1 + 4);
  if (v4 & 0x20) == 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD8D8();
    }

    _SparseTrap();
  }

  *(a1 + 4) = v4 & 0xFFFE | ((v4 & 1) == 0) | 0x20;
  _SparseRetainNumeric_Complex_Float(a1);
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 SparseGetTranspose@<Q0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*a1 & 0x20) != 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD894();
    }

    _SparseTrap();
  }

  *a1 = v4 & 0xFFDE | ((v4 & 1) == 0);
  _SparseRetainNumeric_Complex_Double((a1 + 4));
  v5 = *(a1 + 5);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = v5;
  v6 = *(a1 + 7);
  *(a2 + 96) = *(a1 + 6);
  *(a2 + 112) = v6;
  v7 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

{
  v4 = *a1;
  if (*a1 & 0x20) != 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD894();
    }

    _SparseTrap();
  }

  *a1 = v4 & 0xFFDE | ((v4 & 1) == 0);
  _SparseRetainNumeric_Complex_Float((a1 + 4));
  v5 = *(a1 + 5);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = v5;
  v6 = *(a1 + 7);
  *(a2 + 96) = *(a1 + 6);
  *(a2 + 112) = v6;
  v7 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 SparseGetConjugateTranspose@<Q0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*a1 & 0x20) == 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD8D8();
    }

    _SparseTrap();
  }

  *a1 = v4 & 0xFFFE | ((v4 & 1) == 0) | 0x20;
  _SparseRetainNumeric_Complex_Double((a1 + 4));
  v5 = *(a1 + 5);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = v5;
  v6 = *(a1 + 7);
  *(a2 + 96) = *(a1 + 6);
  *(a2 + 112) = v6;
  v7 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

{
  v4 = *a1;
  if (*a1 & 0x20) == 0 && (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD8D8();
    }

    _SparseTrap();
  }

  *a1 = v4 & 0xFFFE | ((v4 & 1) == 0) | 0x20;
  _SparseRetainNumeric_Complex_Float((a1 + 4));
  v5 = *(a1 + 5);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = v5;
  v6 = *(a1 + 7);
  *(a2 + 96) = *(a1 + 6);
  *(a2 + 112) = v6;
  v7 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

uint64_t SparseFactor@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2 <= 0)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.rowCount must be > 0, but is %d.\n");
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBF48();
    }

LABEL_40:
    _SparseTrap();
  }

  v8 = *(a2 + 4);
  if (v8 <= 0)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.columnCount must be > 0, but is %d.\n");
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBFCC();
    }

    goto LABEL_40;
  }

  if (!*(a2 + 28))
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.blockSize must be > 0, but is %d.]n");
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC114();
    }

    goto LABEL_40;
  }

  v9 = *(a2 + 24);
  v10 = v9 & 0x1C;
  if (v7 != v8 && v10 == 12)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n");
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC050();
    }

    goto LABEL_40;
  }

  if (v7 != v8 && v10 == 28)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseHermitian, but %s.rowCount (%d) != %s.columnCount (%d).\n");
LABEL_22:
      v12 = *(a3 + 40);
LABEL_23:
      result = v12(__str);
      *(a5 + 96) = 0;
      *(a5 + 64) = 0u;
      *(a5 + 80) = 0u;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *a5 = -4;
      *(a5 + 8) = -4;
      v16 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD91C();
    }

    goto LABEL_40;
  }

  if ((a1 - 80) >= 4)
  {
    if ((a1 - 40) > 1)
    {
      v17 = (v9 >> 2) & 7;
      if (v17 == 7)
      {
        v19 = *MEMORY[0x277D85DE8];

        return _SparseFactorHermitian_Complex_Double(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v17 != 3)
        {
          v12 = *(a3 + 40);
          if (v12)
          {
            memset(&__str[72], 0, 184);
            strcpy(__str, "Cannot perform Hermitian matrix factorization of non-Hermitian matrix.\n");
            goto LABEL_23;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CD99C();
          }

          goto LABEL_40;
        }

        v18 = *MEMORY[0x277D85DE8];

        return _SparseFactorSymmetric_Complex_Double(a1, a2, a3, a4, a5);
      }
    }

    else
    {
      v15 = *MEMORY[0x277D85DE8];

      return _SparseFactorQR_Complex_Double(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    return _SparseFactorLU_Complex_Double(a1, a2, a3, a4, a5);
  }
}

{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2 <= 0)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.rowCount must be > 0, but is %d.\n");
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBF48();
    }

LABEL_40:
    _SparseTrap();
  }

  v8 = *(a2 + 4);
  if (v8 <= 0)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.columnCount must be > 0, but is %d.\n");
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CBFCC();
    }

    goto LABEL_40;
  }

  if (!*(a2 + 28))
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.blockSize must be > 0, but is %d.]n");
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC114();
    }

    goto LABEL_40;
  }

  v9 = *(a2 + 24);
  v10 = v9 & 0x1C;
  if (v7 != v8 && v10 == 12)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseSymmetric, but %s.rowCount (%d) != %s.columnCount (%d).\n");
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC050();
    }

    goto LABEL_40;
  }

  if (v7 != v8 && v10 == 28)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "%s.attributes.kind=SparseHermitian, but %s.rowCount (%d) != %s.columnCount (%d).\n");
LABEL_22:
      v12 = *(a3 + 40);
LABEL_23:
      result = v12(__str);
      *(a5 + 96) = 0;
      *(a5 + 64) = 0u;
      *(a5 + 80) = 0u;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *a5 = -4;
      *(a5 + 8) = -4;
      v16 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD91C();
    }

    goto LABEL_40;
  }

  if ((a1 - 80) >= 4)
  {
    if ((a1 - 40) > 1)
    {
      v17 = (v9 >> 2) & 7;
      if (v17 == 7)
      {
        v19 = *MEMORY[0x277D85DE8];

        return _SparseFactorHermitian_Complex_Float(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v17 != 3)
        {
          v12 = *(a3 + 40);
          if (v12)
          {
            memset(&__str[72], 0, 184);
            strcpy(__str, "Cannot perform Hermitian matrix factorization of non-Hermitian matrix.\n");
            goto LABEL_23;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CD99C();
          }

          goto LABEL_40;
        }

        v18 = *MEMORY[0x277D85DE8];

        return _SparseFactorSymmetric_Complex_Float(a1, a2, a3, a4, a5);
      }
    }

    else
    {
      v15 = *MEMORY[0x277D85DE8];

      return _SparseFactorQR_Complex_Float(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    return _SparseFactorLU_Complex_Float(a1, a2, a3, a4, a5);
  }
}

uint64_t SparseFactor@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  v6[0] = *byte_28499C198;
  v6[1] = *&byte_28499C198[16];
  v6[2] = *&byte_28499C198[32];
  v5[0] = *ymmword_23681FF58;
  v5[1] = *&ymmword_23681FF58[16];
  return SparseFactor(a1, v7, v6, v5, a3);
}

{
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  v6[0] = *byte_28499C198;
  v6[1] = *&byte_28499C198[16];
  v6[2] = *&byte_28499C198[32];
  v5[0] = *ymmword_23681FFA0;
  v5[1] = *&ymmword_23681FFA0[16];
  return SparseFactor(a1, v7, v6, v5, a3);
}

uint64_t SparseFactor@<X0>(SparseOpaqueSymbolicFactorization *factor@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
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
  if (*a2 != *&factor->rowCount || *(a2 + 28) != LOBYTE(factor->factorization) || ((*&factor->attributes ^ *(a2 + 24)) & 1) != 0)
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
    v16 = (v25.malloc)(2 * *&factor[1].status);
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
        v22 = 2 * *&factor[1].status;
        memset(&v25, 0, sizeof(v25));
        snprintf(&v25, 0x100uLL, "Failed to allocate factor storage of size %ld bytes.");
        goto LABEL_35;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD9E0(&factor[1]);
      }

LABEL_42:
      _SparseTrap();
    }
  }

  v17 = a5;
  if (!a5)
  {
    p_factorSize_Float = &factor->factorSize_Float;
    v20 = (malloc)(2 * factor->factorSize_Float);
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
      v21 = 2 * *p_factorSize_Float;
      memset(&v25, 0, sizeof(v25));
      snprintf(&v25, 0x100uLL, "Failed to allocate workspace of size %ld bytes.");
LABEL_35:
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
      sub_2367CDA58(p_factorSize_Float);
    }

    goto LABEL_42;
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
      if ((*(a2 + 24) & 0x1C) == 0xC)
      {
        result = _SparseNumericFactorSymmetric_Complex_Double(factor, a2, a3, v16, v17, a6);
      }

      else
      {
        result = _SparseNumericFactorHermitian_Complex_Double(factor, a2, a3, v16, v17, a6);
      }
    }

    else
    {
      result = _SparseNumericFactorQR_Complex_Double(factor, a2, a3, v16, v17, a6);
    }
  }

  else
  {
    result = _SparseNumericFactorLU_Complex_Double(factor, a2, a3, v16, v17, a6);
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
  if (*a2 != *&factor->rowCount || *(a2 + 28) != LOBYTE(factor->factorization) || ((*&factor->attributes ^ *(a2 + 24)) & 1) != 0)
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
    v16 = (v25.malloc)(2 * factor->factorSize_Double);
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
        v22 = 2 * factor->factorSize_Double;
        memset(&v25, 0, sizeof(v25));
        snprintf(&v25, 0x100uLL, "Failed to allocate factor storage of size %ld bytes.");
        goto LABEL_35;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD9E0(&factor->factorSize_Double);
      }

LABEL_42:
      _SparseTrap();
    }
  }

  v17 = a5;
  if (!a5)
  {
    p_workspaceSize_Double = &factor->workspaceSize_Double;
    v20 = (malloc)(2 * factor->workspaceSize_Double);
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
      v21 = 2 * *p_workspaceSize_Double;
      memset(&v25, 0, sizeof(v25));
      snprintf(&v25, 0x100uLL, "Failed to allocate workspace of size %ld bytes.");
LABEL_35:
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
      sub_2367CDA58(p_workspaceSize_Double);
    }

    goto LABEL_42;
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
      if ((*(a2 + 24) & 0x1C) == 0xC)
      {
        result = _SparseNumericFactorSymmetric_Complex_Float(factor, a2, a3, v16, v17, a6);
      }

      else
      {
        result = _SparseNumericFactorHermitian_Complex_Float(factor, a2, a3, v16, v17, a6);
      }
    }

    else
    {
      result = _SparseNumericFactorQR_Complex_Float(factor, a2, a3, v16, v17, a6);
    }
  }

  else
  {
    result = _SparseNumericFactorLU_Complex_Float(factor, a2, a3, v16, v17, a6);
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

uint64_t SparseFactor@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  factor[0] = *a1;
  factor[1] = v3;
  v4 = a1[3];
  factor[2] = a1[2];
  factor[3] = v4;
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 32);
  v7[0] = *ymmword_23681FF58;
  v7[1] = *&ymmword_23681FF58[16];
  return SparseFactor(factor, v8, v7, 0, 0, a3);
}

{
  v3 = a1[1];
  factor[0] = *a1;
  factor[1] = v3;
  v4 = a1[3];
  factor[2] = a1[2];
  factor[3] = v4;
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 32);
  v7[0] = *ymmword_23681FFA0;
  v7[1] = *&ymmword_23681FFA0[16];
  return SparseFactor(factor, v8, v7, 0, 0, a3);
}

uint64_t SparseFactor@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  factor[0] = *a1;
  factor[1] = v4;
  v5 = a1[3];
  factor[2] = a1[2];
  factor[3] = v5;
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = *(a2 + 32);
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return SparseFactor(factor, v10, v9, 0, 0, a4);
}

{
  v4 = a1[1];
  factor[0] = *a1;
  factor[1] = v4;
  v5 = a1[3];
  factor[2] = a1[2];
  factor[3] = v5;
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = *(a2 + 32);
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return SparseFactor(factor, v10, v9, 0, 0, a4);
}

uint64_t SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v22, &factor->columnCount);
  reportError = v22.reportError;
  if (!*p_columnCount && factor->workspaceSize_Double && factor->status == SparseStatusOK && factor[1].workspaceSize_Float)
  {
    v8 = *a2;
    if (*(a2 + 8) >= *a2)
    {
      if (*(a2 + 12))
      {
        v9 = 0;
        v8 = *(a2 + 4);
      }

      else
      {
        v9 = 4;
      }

      v10 = *(a2 + v9);
      if (v10 <= 0)
      {
        if (v22.reportError)
        {
          v34 = 0u;
          v35 = 0u;
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
          v23 = 0u;
          memset(&v22, 0, sizeof(v22));
          snprintf(&v22, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366FFDD4();
        }
      }

      else
      {
        workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
        v12 = *&factor->attributes * workspaceSize_Float_low;
        v13 = LODWORD(factor->factorization) * workspaceSize_Float_low;
        if (v12 <= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        if (v8 == v14)
        {
          free = v22.free;
          v16 = (v22.malloc)(factor[1].workspaceSize_Double + factor[1].factorSize_Float * v10);
          if (v16)
          {
            v21 = v16;
            _SparseSolveOpaque_Complex_Double(factor, 0, a2, v16, v17, v18, v19, v20);
            result = (free)(v21);
            goto LABEL_5;
          }

          if (reportError)
          {
            v34 = 0u;
            v35 = 0u;
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
            v23 = 0u;
            memset(&v22, 0, sizeof(v22));
            snprintf(&v22, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CC3F4();
          }
        }

        else
        {
          if (v22.reportError)
          {
            v34 = 0u;
            v35 = 0u;
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
            v23 = 0u;
            memset(&v22, 0, sizeof(v22));
            snprintf(&v22, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
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
      if (v22.reportError)
      {
        v34 = 0u;
        v35 = 0u;
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
        v23 = 0u;
        memset(&v22, 0, sizeof(v22));
        snprintf(&v22, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
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
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(&v22, 0, sizeof(v22));
  snprintf(&v22, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  result = (reportError)(&v22);
LABEL_5:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v36 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v22, &factor->columnCount);
  reportError = v22.reportError;
  if (!*p_columnCount && factor->workspaceSize_Double && factor->status == SparseStatusOK && factor[1].workspaceSize_Float)
  {
    v8 = *a2;
    if (*(a2 + 8) >= *a2)
    {
      if (*(a2 + 12))
      {
        v9 = 0;
        v8 = *(a2 + 4);
      }

      else
      {
        v9 = 4;
      }

      v10 = *(a2 + v9);
      if (v10 <= 0)
      {
        if (v22.reportError)
        {
          v34 = 0u;
          v35 = 0u;
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
          v23 = 0u;
          memset(&v22, 0, sizeof(v22));
          snprintf(&v22, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366FFDD4();
        }
      }

      else
      {
        workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
        v12 = *&factor->attributes * workspaceSize_Float_low;
        v13 = LODWORD(factor->factorization) * workspaceSize_Float_low;
        if (v12 <= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        if (v8 == v14)
        {
          free = v22.free;
          v16 = (v22.malloc)(factor[1].workspaceSize_Double + factor[1].factorSize_Float * v10);
          if (v16)
          {
            v21 = v16;
            _SparseSolveOpaque_Complex_Float(factor, 0, a2, v16, v17, v18, v19, v20);
            result = (free)(v21);
            goto LABEL_5;
          }

          if (reportError)
          {
            v34 = 0u;
            v35 = 0u;
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
            v23 = 0u;
            memset(&v22, 0, sizeof(v22));
            snprintf(&v22, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CC3F4();
          }
        }

        else
        {
          if (v22.reportError)
          {
            v34 = 0u;
            v35 = 0u;
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
            v23 = 0u;
            memset(&v22, 0, sizeof(v22));
            snprintf(&v22, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
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
      if (v22.reportError)
      {
        v34 = 0u;
        v35 = 0u;
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
        v23 = 0u;
        memset(&v22, 0, sizeof(v22));
        snprintf(&v22, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
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
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(&v22, 0, sizeof(v22));
  snprintf(&v22, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  result = (reportError)(&v22);
LABEL_5:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v42, &factor->columnCount);
  reportError = v42.reportError;
  if (!*p_columnCount && factor->workspaceSize_Double && factor->status == SparseStatusOK && factor[1].workspaceSize_Float)
  {
    v10 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v12 = *&factor->attributes * workspaceSize_Float_low;
    v13 = LODWORD(factor->factorization) * workspaceSize_Float_low;
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

    if (BYTE1(factor->workspaceSize_Float) == 40)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = *a2;
    if (*(a2 + 8) < *a2)
    {
      if (v42.reportError)
      {
        goto LABEL_30;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC574();
      }

      goto LABEL_4;
    }

    if (*(a3 + 8) < *a3)
    {
      if (v42.reportError)
      {
LABEL_30:
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
        v43 = 0u;
        memset(&v42, 0, sizeof(v42));
        snprintf(&v42, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBD60();
      }

LABEL_4:
      _SparseTrap();
    }

    v18 = *(a2 + 12);
    if ((v18 & 1) == 0)
    {
      v17 = *(a2 + 4);
    }

    v19 = *(a3 + 12);
    if (v18)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    v21 = (v19 & 1) == 0;
    if (v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }

    v23 = *(a3 + v22);
    v24 = *(a2 + v20);
    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = 4;
    }

    v26 = *(a3 + v25);
    if (v17 == v23)
    {
      if (v17 <= 0)
      {
        if (v42.reportError)
        {
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
          v43 = 0u;
          memset(&v42, 0, sizeof(v42));
          snprintf(&v42, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
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
          free = v42.free;
          v28 = 4;
          if (v18)
          {
            v28 = 0;
          }

          v29 = (v42.malloc)(factor[1].workspaceSize_Double + factor[1].factorSize_Float * *(a2 + v28));
          if (v29)
          {
            v34 = v29;
            _SparseSolveOpaque_Complex_Double(factor, a2, a3, v29, v30, v31, v32, v33);
            result = (free)(v34);
            goto LABEL_5;
          }

          if (reportError)
          {
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
            v43 = 0u;
            memset(&v42, 0, sizeof(v42));
            snprintf(&v42, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CC3F4();
          }

          goto LABEL_4;
        }

        if (v42.reportError)
        {
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
          v43 = 0u;
          memset(&v42, 0, sizeof(v42));
          v37 = "X";
          goto LABEL_64;
        }

        v40 = v16;
        v41 = v15;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v42.control = 136316418;
        *&v42.orderMethod = "X";
        WORD2(v42.order) = 1024;
        *(&v42.order + 6) = v26;
        WORD1(v42.ignoreRowsAndColumns) = 1024;
        HIDWORD(v42.ignoreRowsAndColumns) = v17;
        LOWORD(v42.malloc) = 2080;
        *(&v42.malloc + 2) = "matrix factorization Factored";
        WORD1(v42.free) = 1024;
        HIDWORD(v42.free) = v41;
        LOWORD(v42.reportError) = 1024;
        *(&v42.reportError + 2) = v40;
        v35 = MEMORY[0x277D86220];
        v36 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v42.reportError)
        {
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
          v43 = 0u;
          memset(&v42, 0, sizeof(v42));
          v37 = "B";
LABEL_64:
          snprintf(&v42, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v37);
          goto LABEL_10;
        }

        v38 = v16;
        v39 = v15;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v42.control = 136316418;
        *&v42.orderMethod = "B";
        WORD2(v42.order) = 1024;
        *(&v42.order + 6) = v24;
        WORD1(v42.ignoreRowsAndColumns) = 1024;
        HIDWORD(v42.ignoreRowsAndColumns) = v17;
        LOWORD(v42.malloc) = 2080;
        *(&v42.malloc + 2) = "matrix factorization Factored";
        WORD1(v42.free) = 1024;
        HIDWORD(v42.free) = v39;
        LOWORD(v42.reportError) = 1024;
        *(&v42.reportError + 2) = v38;
        v35 = MEMORY[0x277D86220];
        v36 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v42.reportError)
      {
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
        v43 = 0u;
        memset(&v42, 0, sizeof(v42));
        snprintf(&v42, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_10;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v42.control = 136316418;
      *&v42.orderMethod = "B";
      WORD2(v42.order) = 1024;
      *(&v42.order + 6) = v24;
      WORD1(v42.ignoreRowsAndColumns) = 1024;
      HIDWORD(v42.ignoreRowsAndColumns) = v17;
      LOWORD(v42.malloc) = 2080;
      *(&v42.malloc + 2) = "X";
      WORD1(v42.free) = 1024;
      HIDWORD(v42.free) = v26;
      LOWORD(v42.reportError) = 1024;
      *(&v42.reportError + 2) = v23;
      v35 = MEMORY[0x277D86220];
      v36 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v35, OS_LOG_TYPE_ERROR, v36, &v42, 0x2Eu);
    goto LABEL_4;
  }

  if (!v42.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
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
  v43 = 0u;
  memset(&v42, 0, sizeof(v42));
  snprintf(&v42, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  result = (reportError)(&v42);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v56 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v42, &factor->columnCount);
  reportError = v42.reportError;
  if (!*p_columnCount && factor->workspaceSize_Double && factor->status == SparseStatusOK && factor[1].workspaceSize_Float)
  {
    v10 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v12 = *&factor->attributes * workspaceSize_Float_low;
    v13 = LODWORD(factor->factorization) * workspaceSize_Float_low;
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

    if (BYTE1(factor->workspaceSize_Float) == 40)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = *a2;
    if (*(a2 + 8) < *a2)
    {
      if (v42.reportError)
      {
        goto LABEL_30;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC574();
      }

      goto LABEL_4;
    }

    if (*(a3 + 8) < *a3)
    {
      if (v42.reportError)
      {
LABEL_30:
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
        v43 = 0u;
        memset(&v42, 0, sizeof(v42));
        snprintf(&v42, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBD60();
      }

LABEL_4:
      _SparseTrap();
    }

    v18 = *(a2 + 12);
    if ((v18 & 1) == 0)
    {
      v17 = *(a2 + 4);
    }

    v19 = *(a3 + 12);
    if (v18)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    v21 = (v19 & 1) == 0;
    if (v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4;
    }

    v23 = *(a3 + v22);
    v24 = *(a2 + v20);
    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = 4;
    }

    v26 = *(a3 + v25);
    if (v17 == v23)
    {
      if (v17 <= 0)
      {
        if (v42.reportError)
        {
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
          v43 = 0u;
          memset(&v42, 0, sizeof(v42));
          snprintf(&v42, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
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
          free = v42.free;
          v28 = 4;
          if (v18)
          {
            v28 = 0;
          }

          v29 = (v42.malloc)(factor[1].workspaceSize_Double + factor[1].factorSize_Float * *(a2 + v28));
          if (v29)
          {
            v34 = v29;
            _SparseSolveOpaque_Complex_Float(factor, a2, a3, v29, v30, v31, v32, v33);
            result = (free)(v34);
            goto LABEL_5;
          }

          if (reportError)
          {
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
            v43 = 0u;
            memset(&v42, 0, sizeof(v42));
            snprintf(&v42, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_10;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2367CC3F4();
          }

          goto LABEL_4;
        }

        if (v42.reportError)
        {
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
          v43 = 0u;
          memset(&v42, 0, sizeof(v42));
          v37 = "X";
          goto LABEL_64;
        }

        v40 = v16;
        v41 = v15;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v42.control = 136316418;
        *&v42.orderMethod = "X";
        WORD2(v42.order) = 1024;
        *(&v42.order + 6) = v26;
        WORD1(v42.ignoreRowsAndColumns) = 1024;
        HIDWORD(v42.ignoreRowsAndColumns) = v17;
        LOWORD(v42.malloc) = 2080;
        *(&v42.malloc + 2) = "matrix factorization Factored";
        WORD1(v42.free) = 1024;
        HIDWORD(v42.free) = v41;
        LOWORD(v42.reportError) = 1024;
        *(&v42.reportError + 2) = v40;
        v35 = MEMORY[0x277D86220];
        v36 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v42.reportError)
        {
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
          v43 = 0u;
          memset(&v42, 0, sizeof(v42));
          v37 = "B";
LABEL_64:
          snprintf(&v42, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v37);
          goto LABEL_10;
        }

        v38 = v16;
        v39 = v15;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v42.control = 136316418;
        *&v42.orderMethod = "B";
        WORD2(v42.order) = 1024;
        *(&v42.order + 6) = v24;
        WORD1(v42.ignoreRowsAndColumns) = 1024;
        HIDWORD(v42.ignoreRowsAndColumns) = v17;
        LOWORD(v42.malloc) = 2080;
        *(&v42.malloc + 2) = "matrix factorization Factored";
        WORD1(v42.free) = 1024;
        HIDWORD(v42.free) = v39;
        LOWORD(v42.reportError) = 1024;
        *(&v42.reportError + 2) = v38;
        v35 = MEMORY[0x277D86220];
        v36 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v42.reportError)
      {
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
        v43 = 0u;
        memset(&v42, 0, sizeof(v42));
        snprintf(&v42, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_10;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v42.control = 136316418;
      *&v42.orderMethod = "B";
      WORD2(v42.order) = 1024;
      *(&v42.order + 6) = v24;
      WORD1(v42.ignoreRowsAndColumns) = 1024;
      HIDWORD(v42.ignoreRowsAndColumns) = v17;
      LOWORD(v42.malloc) = 2080;
      *(&v42.malloc + 2) = "X";
      WORD1(v42.free) = 1024;
      HIDWORD(v42.free) = v26;
      LOWORD(v42.reportError) = 1024;
      *(&v42.reportError + 2) = v23;
      v35 = MEMORY[0x277D86220];
      v36 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v35, OS_LOG_TYPE_ERROR, v36, &v42, 0x2Eu);
    goto LABEL_4;
  }

  if (!v42.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
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
  v43 = 0u;
  memset(&v42, 0, sizeof(v42));
  snprintf(&v42, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  result = (reportError)(&v42);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, _OWORD *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v19, &factor->columnCount);
  reportError = v19.reportError;
  if (!*p_columnCount && factor->workspaceSize_Double && factor->status == SparseStatusOK && factor[1].workspaceSize_Float)
  {
    v13 = *a2;
    if (*(a2 + 8) >= *a2)
    {
      if (*(a2 + 12))
      {
        v14 = 0;
        v13 = *(a2 + 4);
      }

      else
      {
        v14 = 4;
      }

      if (*(a2 + v14) <= 0)
      {
        if (v19.reportError)
        {
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
          v20 = 0u;
          memset(&v19, 0, sizeof(v19));
          snprintf(&v19, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2366FFDD4();
        }
      }

      else
      {
        workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
        v16 = *&factor->attributes * workspaceSize_Float_low;
        v17 = LODWORD(factor->factorization) * workspaceSize_Float_low;
        if (v16 <= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        if (v13 == v18)
        {
          _SparseSolveOpaque_Complex_Double(factor, 0, a2, a3, v8, v9, v10, v11);
          goto LABEL_5;
        }

        if (v19.reportError)
        {
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
          v20 = 0u;
          memset(&v19, 0, sizeof(v19));
          snprintf(&v19, 0x100uLL, "%s (%dx%d) is not consistent with largest dimension of matrix factorization %s (%d).\n");
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
      if (v19.reportError)
      {
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
        v20 = 0u;
        memset(&v19, 0, sizeof(v19));
        snprintf(&v19, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
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

  if (!v19.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

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
  v20 = 0u;
  memset(&v19, 0, sizeof(v19));
  snprintf(&v19, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  (reportError)(&v19);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v36, &factor->columnCount);
  reportError = v36.reportError;
  if (!*p_columnCount && factor->workspaceSize_Double && factor->status == SparseStatusOK && factor[1].workspaceSize_Float)
  {
    v15 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v17 = *&factor->attributes * workspaceSize_Float_low;
    v18 = LODWORD(factor->factorization) * workspaceSize_Float_low;
    if (v15)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v15)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    if (BYTE1(factor->workspaceSize_Float) == 40)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = *a2;
    if (*(a2 + 8) < *a2)
    {
      if (v36.reportError)
      {
        goto LABEL_30;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC574();
      }

      goto LABEL_4;
    }

    if (*(a3 + 8) < *a3)
    {
      if (v36.reportError)
      {
LABEL_30:
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
        v37 = 0u;
        memset(&v36, 0, sizeof(v36));
        snprintf(&v36, 0x100uLL, "%s.columnStride (%d) must be at least %s.rowCount (%d).\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CBD60();
      }

LABEL_4:
      _SparseTrap();
    }

    if (*(a2 + 12))
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
      v22 = *(a2 + 4);
    }

    if (*(a3 + 12))
    {
      v24 = 0;
    }

    else
    {
      v24 = 4;
    }

    v25 = *(a3 + v24);
    v26 = *(a2 + v23);
    if (*(a3 + 12))
    {
      v27 = 4;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(a3 + v27);
    if (v22 == v25)
    {
      if (v22 <= 0)
      {
        if (v36.reportError)
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
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          snprintf(&v36, 0x100uLL, "%s (%dx%d) must represent at least one right-hand side.\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC4F0();
        }

        goto LABEL_4;
      }

      if (v26 == v21)
      {
        if (v28 == v20)
        {
          _SparseSolveOpaque_Complex_Double(factor, a2, a3, a4, v10, v11, v12, v13);
          goto LABEL_5;
        }

        if (v36.reportError)
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
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v31 = "X";
          goto LABEL_59;
        }

        v34 = v21;
        v35 = v20;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "X";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v28;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v22;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "matrix factorization Factored";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v35;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v34;
        v29 = MEMORY[0x277D86220];
        v30 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }

      else
      {
        if (v36.reportError)
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
          v37 = 0u;
          memset(&v36, 0, sizeof(v36));
          v31 = "B";
LABEL_59:
          snprintf(&v36, 0x100uLL, "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n", v31);
          goto LABEL_10;
        }

        v32 = v21;
        v33 = v20;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v36.control = 136316418;
        *&v36.orderMethod = "B";
        WORD2(v36.order) = 1024;
        *(&v36.order + 6) = v26;
        WORD1(v36.ignoreRowsAndColumns) = 1024;
        HIDWORD(v36.ignoreRowsAndColumns) = v22;
        LOWORD(v36.malloc) = 2080;
        *(&v36.malloc + 2) = "matrix factorization Factored";
        WORD1(v36.free) = 1024;
        HIDWORD(v36.free) = v33;
        LOWORD(v36.reportError) = 1024;
        *(&v36.reportError + 2) = v32;
        v29 = MEMORY[0x277D86220];
        v30 = "%s (size %dx%d) does not match dimensions of %s (%d x %d).\n";
      }
    }

    else
    {
      if (v36.reportError)
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
        v37 = 0u;
        memset(&v36, 0, sizeof(v36));
        snprintf(&v36, 0x100uLL, "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n", "B");
        goto LABEL_10;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v36.control = 136316418;
      *&v36.orderMethod = "B";
      WORD2(v36.order) = 1024;
      *(&v36.order + 6) = v26;
      WORD1(v36.ignoreRowsAndColumns) = 1024;
      HIDWORD(v36.ignoreRowsAndColumns) = v22;
      LOWORD(v36.malloc) = 2080;
      *(&v36.malloc + 2) = "X";
      WORD1(v36.free) = 1024;
      HIDWORD(v36.free) = v28;
      LOWORD(v36.reportError) = 1024;
      *(&v36.reportError + 2) = v25;
      v29 = MEMORY[0x277D86220];
      v30 = "%s (%dx%d) and %s (%dx%d) do not represent the same number of right-hand sides.\n";
    }

    _os_log_error_impl(&dword_2366B9000, v29, OS_LOG_TYPE_ERROR, v30, &v36, 0x2Eu);
    goto LABEL_4;
  }

  if (!v36.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
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
  v37 = 0u;
  memset(&v36, 0, sizeof(v36));
  snprintf(&v36, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  (reportError)(&v36);
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t SparseSolve(SparseOpaqueSymbolicFactorization *factor, int a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v22, &factor->columnCount);
  reportError = v22.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
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
  }

  else
  {
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v11 = *&factor->attributes * workspaceSize_Float_low;
    v12 = LODWORD(factor->factorization) * workspaceSize_Float_low;
    if (v11 > v12)
    {
      v12 = v11;
    }

    if (v12 == a2)
    {
      free = v22.free;
      v20[0] = a2;
      v20[1] = 1;
      v20[2] = a2;
      v20[3] = 0;
      v21 = a3;
      v14 = (v22.malloc)(factor[1].factorSize_Float + factor[1].workspaceSize_Double);
      if (v14)
      {
        v19 = v14;
        _SparseSolveOpaque_Complex_Double(factor, 0, v20, v14, v15, v16, v17, v18);
        result = (free)(v19);
        goto LABEL_5;
      }

      if (reportError)
      {
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
        snprintf(&v22, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC3F4();
      }

LABEL_4:
      _SparseTrap();
    }

    if (!v22.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC5F8();
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
    snprintf(&v22, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
  }

LABEL_10:
  result = (reportError)(&v22);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v36 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v22, &factor->columnCount);
  reportError = v22.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
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
  }

  else
  {
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v11 = *&factor->attributes * workspaceSize_Float_low;
    v12 = LODWORD(factor->factorization) * workspaceSize_Float_low;
    if (v11 > v12)
    {
      v12 = v11;
    }

    if (v12 == a2)
    {
      free = v22.free;
      v20[0] = a2;
      v20[1] = 1;
      v20[2] = a2;
      v20[3] = 0;
      v21 = a3;
      v14 = (v22.malloc)(factor[1].factorSize_Float + factor[1].workspaceSize_Double);
      if (v14)
      {
        v19 = v14;
        _SparseSolveOpaque_Complex_Float(factor, 0, v20, v14, v15, v16, v17, v18);
        result = (free)(v19);
        goto LABEL_5;
      }

      if (reportError)
      {
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
        snprintf(&v22, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC3F4();
      }

LABEL_4:
      _SparseTrap();
    }

    if (!v22.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC5F8();
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
    snprintf(&v22, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
  }

LABEL_10:
  result = (reportError)(&v22);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(SparseOpaqueSymbolicFactorization *factor, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v34, &factor->columnCount);
  reportError = v34.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (!v34.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F736C();
      }

      goto LABEL_4;
    }

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
    v35 = 0u;
    memset(&v34, 0, sizeof(v34));
    snprintf(&v34, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
  }

  else
  {
    v14 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v16 = *&factor->attributes * workspaceSize_Float_low;
    v17 = LODWORD(factor->factorization) * workspaceSize_Float_low;
    v18 = (v14 & 1) == 0;
    if (v14)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = v16;
    }

    if (BYTE1(factor->workspaceSize_Float) == 40)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    if (v20 == a4)
    {
      if (v21 == a2)
      {
        free = v34.free;
        v32[0] = a2;
        v32[1] = 1;
        v32[2] = a2;
        v32[3] = 0;
        v33 = a3;
        v30[0] = a4;
        v30[1] = 1;
        v30[2] = a4;
        v30[3] = 0;
        v23 = factor[1].factorSize_Float + factor[1].workspaceSize_Double;
        v31 = a5;
        v24 = (v34.malloc)(v23);
        if (v24)
        {
          v29 = v24;
          _SparseSolveOpaque_Complex_Double(factor, v32, v30, v24, v25, v26, v27, v28);
          result = (free)(v29);
          goto LABEL_5;
        }

        if (reportError)
        {
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
          v35 = 0u;
          memset(&v34, 0, sizeof(v34));
          snprintf(&v34, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC3F4();
        }

LABEL_4:
        _SparseTrap();
      }

      if (!v34.reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC71C();
        }

        goto LABEL_4;
      }
    }

    else if (!v34.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC68C();
      }

      goto LABEL_4;
    }

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
    v35 = 0u;
    memset(&v34, 0, sizeof(v34));
    snprintf(&v34, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
  }

LABEL_10:
  result = (reportError)(&v34);
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v48 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v34, &factor->columnCount);
  reportError = v34.reportError;
  if (*p_columnCount || !factor->workspaceSize_Double || factor->status || !factor[1].workspaceSize_Float)
  {
    if (!v34.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F736C();
      }

      goto LABEL_4;
    }

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
    v35 = 0u;
    memset(&v34, 0, sizeof(v34));
    snprintf(&v34, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
  }

  else
  {
    v14 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v16 = *&factor->attributes * workspaceSize_Float_low;
    v17 = LODWORD(factor->factorization) * workspaceSize_Float_low;
    v18 = (v14 & 1) == 0;
    if (v14)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = v16;
    }

    if (BYTE1(factor->workspaceSize_Float) == 40)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    if (v20 == a4)
    {
      if (v21 == a2)
      {
        free = v34.free;
        v32[0] = a2;
        v32[1] = 1;
        v32[2] = a2;
        v32[3] = 0;
        v33 = a3;
        v30[0] = a4;
        v30[1] = 1;
        v30[2] = a4;
        v30[3] = 0;
        v23 = factor[1].factorSize_Float + factor[1].workspaceSize_Double;
        v31 = a5;
        v24 = (v34.malloc)(v23);
        if (v24)
        {
          v29 = v24;
          _SparseSolveOpaque_Complex_Float(factor, v32, v30, v24, v25, v26, v27, v28);
          result = (free)(v29);
          goto LABEL_5;
        }

        if (reportError)
        {
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
          v35 = 0u;
          memset(&v34, 0, sizeof(v34));
          snprintf(&v34, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC3F4();
        }

LABEL_4:
        _SparseTrap();
      }

      if (!v34.reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2367CC71C();
        }

        goto LABEL_4;
      }
    }

    else if (!v34.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CC68C();
      }

      goto LABEL_4;
    }

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
    v35 = 0u;
    memset(&v34, 0, sizeof(v34));
    snprintf(&v34, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
  }

LABEL_10:
  result = (reportError)(&v34);
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, SparseControl_t a2, int *a3, _OWORD *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v18, &factor->columnCount);
  reportError = v18.reportError;
  if (!*p_columnCount && factor->workspaceSize_Double && factor->status == SparseStatusOK && factor[1].workspaceSize_Float)
  {
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v16 = *&factor->attributes * workspaceSize_Float_low;
    v17 = LODWORD(factor->factorization) * workspaceSize_Float_low;
    if (v16 > v17)
    {
      v17 = v16;
    }

    if (v17 == a2)
    {
      v18.control = a2;
      *&v18.orderMethod = 1;
      v18.order = a2;
      v18.ignoreRowsAndColumns = a3;
      _SparseSolveOpaque_Complex_Double(factor, 0, &v18, a4, v10, v11, v12, v13);
      goto LABEL_5;
    }

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
      snprintf(&v18, 0x100uLL, "%s.count (%d) is not equal to largest dimension of matrix factorization %s.\n");
      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC5F8();
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
  (reportError)(&v18);
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, SparseControl_t a2, int *a3, int a4, uint64_t a5, _OWORD *a6)
{
  v43 = *MEMORY[0x277D85DE8];
  p_columnCount = &factor->columnCount;
  if (factor->columnCount || !factor->workspaceSize_Double)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v29, &factor->columnCount);
  reportError = v29.reportError;
  if (!*p_columnCount && factor->workspaceSize_Double && factor->status == SparseStatusOK && factor[1].workspaceSize_Float)
  {
    v19 = LOWORD(factor->rowCount) ^ WORD2(factor->factorization);
    workspaceSize_Float_low = LOBYTE(factor->workspaceSize_Float);
    v21 = *&factor->attributes * workspaceSize_Float_low;
    v22 = LODWORD(factor->factorization) * workspaceSize_Float_low;
    v23 = (v19 & 1) == 0;
    if (v19)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v21;
    }

    if (BYTE1(factor->workspaceSize_Float) == 40)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    if (v25 == a4)
    {
      if (v26 == a2)
      {
        v29.control = a2;
        *&v29.orderMethod = 1;
        v29.order = a2;
        v29.ignoreRowsAndColumns = a3;
        v27[0] = a4;
        v27[1] = 1;
        v27[2] = a4;
        v27[3] = 0;
        v28 = a5;
        _SparseSolveOpaque_Complex_Double(factor, &v29, v27, a6, v14, v15, v16, v17);
        goto LABEL_5;
      }

      if (v29.reportError)
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
      if (v29.reportError)
      {
LABEL_31:
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        memset(&v29, 0, sizeof(v29));
        snprintf(&v29, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
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

  if (!v29.reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F736C();
    }

    goto LABEL_4;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(&v29, 0, sizeof(v29));
  snprintf(&v29, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
LABEL_10:
  (reportError)(&v29);
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
}

void SparseRefactor(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (*a1 != *(a2 + 12) || *(a1 + 4) != *(a2 + 16) || *(a1 + 28) != *(a2 + 24) || (v5 = *(a1 + 24), ((*(a2 + 20) ^ v5) & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC7AC();
    }

    _SparseTrap();
  }

  v6 = *(a2 + 25);
  if ((v6 - 80) >= 4)
  {
    if ((v6 - 40) > 1)
    {
      if ((v5 & 0x1C) == 0xC)
      {

        _SparseRefactorSymmetric_Complex_Double(a1, a2, a3, a4);
      }

      else
      {

        _SparseRefactorHermitian_Complex_Double(a1, a2, a3, a4);
      }
    }

    else
    {

      _SparseRefactorQR_Complex_Double(a1, a2, a3, a4);
    }
  }

  else
  {

    _SparseRefactorLU_Complex_Double(a1, a2, a3, a4);
  }
}

{
  if (*a1 != *(a2 + 12) || *(a1 + 4) != *(a2 + 16) || *(a1 + 28) != *(a2 + 24) || (v5 = *(a1 + 24), ((*(a2 + 20) ^ v5) & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC7AC();
    }

    _SparseTrap();
  }

  v6 = *(a2 + 25);
  if ((v6 - 80) >= 4)
  {
    if ((v6 - 40) > 1)
    {
      if ((v5 & 0x1C) == 0xC)
      {

        _SparseRefactorSymmetric_Complex_Float(a1, a2, a3, a4);
      }

      else
      {

        _SparseRefactorHermitian_Complex_Float(a1, a2, a3, a4);
      }
    }

    else
    {

      _SparseRefactorQR_Complex_Float(a1, a2, a3, a4);
    }
  }

  else
  {

    _SparseRefactorLU_Complex_Float(a1, a2, a3, a4);
  }
}

uint64_t SparseRefactor(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5A8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v16, (a2 + 8));
  free = v16.free;
  reportError = v16.reportError;
  v9 = (v16.malloc)(2 * *(a2 + 48));
  if (!v9)
  {
    *a2 = -3;
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
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      v14 = 2 * *(a2 + 48);
      memset(&v16, 0, sizeof(v16));
      snprintf(&v16, 0x100uLL, "Failed to allocate workspace of size %ld.", v14);
      result = (reportError)(&v16);
      goto LABEL_5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CDAD0((a2 + 48));
    }

LABEL_4:
    _SparseTrap();
  }

  v10 = v9;
  v11 = *(a1 + 16);
  *&v16.control = *a1;
  *&v16.ignoreRowsAndColumns = v11;
  v16.free = *(a1 + 32);
  v12 = a3[1];
  v15[0] = *a3;
  v15[1] = v12;
  SparseRefactor(&v16, a2, v15, v9);
  result = (free)(v10);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5A8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(&v16, (a2 + 8));
  free = v16.free;
  reportError = v16.reportError;
  v9 = (v16.malloc)(2 * *(a2 + 40));
  if (!v9)
  {
    *a2 = -3;
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
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      v14 = 2 * *(a2 + 40);
      memset(&v16, 0, sizeof(v16));
      snprintf(&v16, 0x100uLL, "Failed to allocate workspace of size %ld.", v14);
      result = (reportError)(&v16);
      goto LABEL_5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CDAD0((a2 + 40));
    }

LABEL_4:
    _SparseTrap();
  }

  v10 = v9;
  v11 = *(a1 + 16);
  *&v16.control = *a1;
  *&v16.ignoreRowsAndColumns = v11;
  v16.free = *(a1 + 32);
  v12 = a3[1];
  v15[0] = *a3;
  v15[1] = v12;
  SparseRefactor(&v16, a2, v15, v9);
  result = (free)(v10);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseRefactor(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    _SparseTrap();
  }

  v10 = 0u;
  v11 = 0u;
  _SparseGetOptionsFromNumericFactor_Complex_Double(a2, &v10);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  v7[0] = v10;
  v7[1] = v11;
  SparseRefactor(v8, a2, v7, a3);
}

{
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F73F0();
    }

    _SparseTrap();
  }

  v10 = 0u;
  v11 = 0u;
  _SparseGetOptionsFromNumericFactor_Complex_Float(a2, &v10);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  v7[0] = v10;
  v7[1] = v11;
  SparseRefactor(v8, a2, v7, a3);
}

uint64_t SparseRefactor(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5EC();
    }

    _SparseTrap();
  }

  v9 = 0u;
  v10 = 0u;
  _SparseGetOptionsFromNumericFactor_Complex_Double(a2, &v9);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  v6[0] = v9;
  v6[1] = v10;
  return SparseRefactor(v7, a2, v6);
}

{
  if (*(a2 + 8) || !*(a2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD5EC();
    }

    _SparseTrap();
  }

  v9 = 0u;
  v10 = 0u;
  _SparseGetOptionsFromNumericFactor_Complex_Float(a2, &v9);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  v6[0] = v9;
  v6[1] = v10;
  return SparseRefactor(v7, a2, v6);
}

uint64_t SparseUpdateFactor(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*a5 != *(a2 + 12) || *(a5 + 4) != *(a2 + 16) || *(a5 + 28) != *(a2 + 24) || ((*(a2 + 20) ^ *(a5 + 24)) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC93C();
    }

LABEL_9:
    _SparseTrap();
  }

  if (*(a2 + 25) - 81 > 2)
  {
    *a2 = -4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD630();
    }

    goto LABEL_9;
  }

  v5 = *(a5 + 16);
  v7[0] = *a5;
  v7[1] = v5;
  v8 = *(a5 + 32);
  return _SparseUpdatePartialRefactorLU_Complex_Double(a2, a3, a4, v7);
}

{
  if (*a5 != *(a2 + 12) || *(a5 + 4) != *(a2 + 16) || *(a5 + 28) != *(a2 + 24) || ((*(a2 + 20) ^ *(a5 + 24)) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CC93C();
    }

LABEL_9:
    _SparseTrap();
  }

  if (*(a2 + 25) - 81 > 2)
  {
    *a2 = -4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD630();
    }

    goto LABEL_9;
  }

  v5 = *(a5 + 16);
  v7[0] = *a5;
  v7[1] = v5;
  v8 = *(a5 + 32);
  return _SparseUpdatePartialRefactorLU_Complex_Float(a2, a3, a4, v7);
}

uint64_t SparseCreateSubfactor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || !*(a2 + 32) || *a2 || !*(a2 + 80))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD7C8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v25, (a2 + 8));
  v7 = *&v25[40];
  v8 = *(a2 + 25);
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          if (v8 - 2 >= 3)
          {
            if (*&v25[40])
            {
              memset(&v25[59], 0, 197);
              strcpy(v25, "Subfactor Type only valid for LDL^T or LU factorizations.\n");
LABEL_46:
              result = v7(v25);
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
        if (*&v25[40])
        {
          memset(&v25[24], 0, 232);
          strcpy(v25, "Invalid subfactor type.");
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

    if (a1 != 3)
    {
      if (v8 - 2 >= 3)
      {
        if (*&v25[40])
        {
          memset(&v25[53], 0, 203);
          strcpy(v25, "Subfactor Type only valid for LDL^T factorizations.\n");
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

    if (!*&v25[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }

LABEL_44:
    memset(&v25[66], 0, 190);
    strcpy(&v25[64], "\n");
    v11 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
    goto LABEL_45;
  }

  if ((a1 - 7) >= 2)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        v9 = v8 - 40;
        if (v9 > 0x2B || ((1 << v9) & 0xE0000000001) == 0)
        {
          if (*&v25[40])
          {
            memset(&v25[58], 0, 198);
            strcpy(v25, "SparseSubfactorQ only valid for QR or LU factorizations.\n");
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

    if (!*&v25[40])
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
    if (!*&v25[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD674();
      }

      goto LABEL_4;
    }

    memset(&v25[66], 0, 190);
    strcpy(&v25[64], "\n");
    v11 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
LABEL_45:
    v21 = *(v11 + 1);
    *v25 = *v11;
    *&v25[16] = v21;
    v22 = *(v11 + 3);
    *&v25[32] = *(v11 + 2);
    *&v25[48] = v22;
    goto LABEL_46;
  }

  v10 = 4;
LABEL_37:
  _SparseRetainNumeric_Complex_Double(a2);
  v23 = 0;
  v24 = 0;
  v12 = *(a2 + 80);
  *&v25[64] = *(a2 + 64);
  *&v25[80] = v12;
  *&v25[96] = *(a2 + 96);
  v13 = *(a2 + 16);
  *v25 = *a2;
  *&v25[16] = v13;
  v14 = *(a2 + 48);
  *&v25[32] = *(a2 + 32);
  *&v25[48] = v14;
  result = _SparseGetWorkspaceRequired_Complex_Double(a1, v25, &v24, &v23);
  v16 = *(a2 + 32);
  *(a3 + 56) = *(a2 + 48);
  v17 = *(a2 + 80);
  *(a3 + 72) = *(a2 + 64);
  *(a3 + 88) = v17;
  v18 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v18;
  *a3 = v10;
  *(a3 + 2) = 0;
  *(a3 + 4) = a1;
  v19 = *(a2 + 96);
  *(a3 + 40) = v16;
  v20 = v24;
  *(a3 + 104) = v19;
  *(a3 + 112) = v20;
  *(a3 + 120) = v23;
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) || !*(a2 + 32) || *a2 || !*(a2 + 80))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD7C8();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v25, (a2 + 8));
  v7 = *&v25[40];
  v8 = *(a2 + 25);
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          if (v8 - 2 >= 3)
          {
            if (*&v25[40])
            {
              memset(&v25[59], 0, 197);
              strcpy(v25, "Subfactor Type only valid for LDL^T or LU factorizations.\n");
LABEL_46:
              result = v7(v25);
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
        if (*&v25[40])
        {
          memset(&v25[24], 0, 232);
          strcpy(v25, "Invalid subfactor type.");
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

    if (a1 != 3)
    {
      if (v8 - 2 >= 3)
      {
        if (*&v25[40])
        {
          memset(&v25[53], 0, 203);
          strcpy(v25, "Subfactor Type only valid for LDL^T factorizations.\n");
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

    if (!*&v25[40])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }

LABEL_44:
    memset(&v25[66], 0, 190);
    strcpy(&v25[64], "\n");
    v11 = "Subfactor Type only valid for Cholesky and LDL^T factorizations.\n";
    goto LABEL_45;
  }

  if ((a1 - 7) >= 2)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        v9 = v8 - 40;
        if (v9 > 0x2B || ((1 << v9) & 0xE0000000001) == 0)
        {
          if (*&v25[40])
          {
            memset(&v25[58], 0, 198);
            strcpy(v25, "SparseSubfactorQ only valid for QR or LU factorizations.\n");
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

    if (!*&v25[40])
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
    if (!*&v25[40])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2367CD674();
      }

      goto LABEL_4;
    }

    memset(&v25[66], 0, 190);
    strcpy(&v25[64], "\n");
    v11 = "Subfactor Type only valid for QR and CholeskyAtA factorizations.\n";
LABEL_45:
    v21 = *(v11 + 1);
    *v25 = *v11;
    *&v25[16] = v21;
    v22 = *(v11 + 3);
    *&v25[32] = *(v11 + 2);
    *&v25[48] = v22;
    goto LABEL_46;
  }

  v10 = 4;
LABEL_37:
  _SparseRetainNumeric_Complex_Float(a2);
  v23 = 0;
  v24 = 0;
  v12 = *(a2 + 80);
  *&v25[64] = *(a2 + 64);
  *&v25[80] = v12;
  *&v25[96] = *(a2 + 96);
  v13 = *(a2 + 16);
  *v25 = *a2;
  *&v25[16] = v13;
  v14 = *(a2 + 48);
  *&v25[32] = *(a2 + 32);
  *&v25[48] = v14;
  result = _SparseGetWorkspaceRequired_Complex_Float(a1, v25, &v24, &v23);
  v16 = *(a2 + 32);
  *(a3 + 56) = *(a2 + 48);
  v17 = *(a2 + 80);
  *(a3 + 72) = *(a2 + 64);
  *(a3 + 88) = v17;
  v18 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v18;
  *a3 = v10;
  *(a3 + 2) = 0;
  *(a3 + 4) = a1;
  v19 = *(a2 + 96);
  *(a3 + 40) = v16;
  v20 = v24;
  *(a3 + 104) = v19;
  *(a3 + 112) = v20;
  *(a3 + 120) = v23;
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v22, (a1 + 16));
  v4 = *&v22[40];
  v5 = *(a2 + 12);
  v6 = (v5 & 1) == 0;
  v7 = 4;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
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

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
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

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
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
  v18 = (*&v22[24])(*(a1 + 112) + *(a1 + 120) * v9);
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
  _SparseSolveSubfactor_Complex_Double(a1, 0, a2, v18);
  result = v17(v19);
LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v22, (a1 + 16));
  v4 = *&v22[40];
  v5 = *(a2 + 12);
  v6 = (v5 & 1) == 0;
  v7 = 4;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
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

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
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

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
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
  v18 = (*&v22[24])(*(a1 + 112) + *(a1 + 120) * v9);
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
  _SparseSolveSubfactor_Complex_Float(a1, 0, a2, v18);
  result = v17(v19);
LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SparseSolve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_69;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, (a1 + 16));
  reportError = v31.reportError;
  v7 = *a1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 20) * v8;
  v10 = *(a1 + 24) * v8;
  if (v9 >= v10)
  {
    v11 = *(a1 + 24) * v8;
  }

  else
  {
    v11 = *(a1 + 20) * v8;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v7)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *a2;
  if (*(a2 + 8) < *a2)
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

  if (*(a3 + 8) >= *a3)
  {
    if (*(a2 + 12))
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
      v16 = *(a2 + 4);
    }

    if (*(a3 + 12))
    {
      v19 = 0;
    }

    else
    {
      v19 = 4;
    }

    v20 = *(a3 + v19);
    v21 = *(a2 + v18);
    if (*(a3 + 12))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a3 + v22);
    if (v16 == v20)
    {
      if (v16 <= 0)
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
          v25 = (v31.malloc)(*(a1 + 112) + *(a1 + 120) * v16);
          if (v25)
          {
            v26 = v25;
            _SparseSolveSubfactor_Complex_Double(a1, a2, a3, v25);
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
        HIDWORD(v31.ignoreRowsAndColumns) = v16;
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
        HIDWORD(v31.ignoreRowsAndColumns) = v16;
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
      HIDWORD(v31.ignoreRowsAndColumns) = v16;
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

{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCA8();
    }

    goto LABEL_69;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, (a1 + 16));
  reportError = v31.reportError;
  v7 = *a1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 20) * v8;
  v10 = *(a1 + 24) * v8;
  if (v9 >= v10)
  {
    v11 = *(a1 + 24) * v8;
  }

  else
  {
    v11 = *(a1 + 20) * v8;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v7)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = *a2;
  if (*(a2 + 8) < *a2)
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

  if (*(a3 + 8) >= *a3)
  {
    if (*(a2 + 12))
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
      v16 = *(a2 + 4);
    }

    if (*(a3 + 12))
    {
      v19 = 0;
    }

    else
    {
      v19 = 4;
    }

    v20 = *(a3 + v19);
    v21 = *(a2 + v18);
    if (*(a3 + 12))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a3 + v22);
    if (v16 == v20)
    {
      if (v16 <= 0)
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
          v25 = (v31.malloc)(*(a1 + 112) + *(a1 + 120) * v16);
          if (v25)
          {
            v26 = v25;
            _SparseSolveSubfactor_Complex_Float(a1, a2, a3, v25);
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
        HIDWORD(v31.ignoreRowsAndColumns) = v16;
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
        HIDWORD(v31.ignoreRowsAndColumns) = v16;
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
      HIDWORD(v31.ignoreRowsAndColumns) = v16;
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

void SparseSolve(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_23;
  }

  _SparseGetOptionsFromSymbolicFactor(v18, (a1 + 16));
  v6 = *&v18[40];
  v7 = 4;
  if (*(a2 + 12))
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if ((*(a2 + 12) & 1) == 0)
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

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
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

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
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

  _SparseSolveSubfactor_Complex_Double(a1, 0, a2, a3);
LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
}

void SparseSolve(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_64;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, (a1 + 16));
  reportError = v31.reportError;
  v9 = *a1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 20) * v10;
  v12 = *(a1 + 24) * v10;
  if (v11 >= v12)
  {
    v13 = *(a1 + 24) * v10;
  }

  else
  {
    v13 = *(a1 + 20) * v10;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (v9)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v9)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = *a2;
  if (*(a2 + 8) < *a2)
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

  if (*(a3 + 8) >= *a3)
  {
    if (*(a2 + 12))
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
      v18 = *(a2 + 4);
    }

    if (*(a3 + 12))
    {
      v20 = 0;
    }

    else
    {
      v20 = 4;
    }

    v21 = *(a3 + v20);
    v22 = *(a2 + v19);
    if (*(a3 + 12))
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a3 + v23);
    if (v18 == v21)
    {
      if (v18 <= 0)
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
          _SparseSolveSubfactor_Complex_Double(a1, a2, a3, a4);
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
        HIDWORD(v31.ignoreRowsAndColumns) = v18;
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
        HIDWORD(v31.ignoreRowsAndColumns) = v18;
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
      HIDWORD(v31.ignoreRowsAndColumns) = v18;
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

uint64_t SparseSolve(_OWORD *a1, int a2, uint64_t a3)
{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  return SparseSolve(v10, v8);
}

{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  return SparseSolve(v10, v8);
}

uint64_t SparseSolve(_OWORD *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  return SparseSolve(v14, v12, v10);
}

{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  return SparseSolve(v14, v12, v10);
}

void SparseSolve(_OWORD *a1, int a2, uint64_t a3, _OWORD *a4)
{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  SparseSolve(v10, v8, a4);
}

void SparseSolve(_OWORD *a1, int a2, uint64_t a3, int a4, uint64_t a5, _OWORD *a6)
{
  v6 = a1[5];
  v14[4] = a1[4];
  v14[5] = v6;
  v7 = a1[7];
  v14[6] = a1[6];
  v14[7] = v7;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  SparseSolve(v14, v12, v10, a6);
}

uint64_t SparseMultiply(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v22, (a1 + 16));
  v4 = *&v22[40];
  v5 = *(a2 + 12);
  v6 = (v5 & 1) == 0;
  v7 = 4;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
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

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
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

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
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
  v18 = (*&v22[24])(*(a1 + 112) + *(a1 + 120) * v9);
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
  _SparseMultiplySubfactor_Complex_Double(a1, 0, a2, v18);
  result = v17(v19);
LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_25;
  }

  _SparseGetOptionsFromSymbolicFactor(v22, (a1 + 16));
  v4 = *&v22[40];
  v5 = *(a2 + 12);
  v6 = (v5 & 1) == 0;
  v7 = 4;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
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

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
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

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
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
  v18 = (*&v22[24])(*(a1 + 112) + *(a1 + 120) * v9);
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
  _SparseMultiplySubfactor_Complex_Float(a1, 0, a2, v18);
  result = v17(v19);
LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_23;
  }

  _SparseGetOptionsFromSymbolicFactor(v18, (a1 + 16));
  v6 = *&v18[40];
  v7 = 4;
  if (*(a2 + 12))
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if ((*(a2 + 12) & 1) == 0)
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

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
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

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
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

  _SparseMultiplySubfactor_Complex_Double(a1, 0, a2, a3);
LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
}

{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_23;
  }

  _SparseGetOptionsFromSymbolicFactor(v18, (a1 + 16));
  v6 = *&v18[40];
  v7 = 4;
  if (*(a2 + 12))
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if ((*(a2 + 12) & 1) == 0)
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

  v10 = *(a2 + v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 20) * v11;
  v13 = *(a1 + 24) * v11;
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

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
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

  _SparseMultiplySubfactor_Complex_Float(a1, 0, a2, a3);
LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
}

void SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_64;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, (a1 + 16));
  reportError = v31.reportError;
  v9 = *a1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 20) * v10;
  v12 = *(a1 + 24) * v10;
  if (v11 >= v12)
  {
    v13 = *(a1 + 24) * v10;
  }

  else
  {
    v13 = *(a1 + 20) * v10;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (v9)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v9)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = *a3;
  if (*(a3 + 8) < *a3)
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

  if (*(a2 + 8) >= *a2)
  {
    if (*(a3 + 12))
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
      v18 = *(a3 + 4);
    }

    if (*(a2 + 12))
    {
      v20 = 0;
    }

    else
    {
      v20 = 4;
    }

    v21 = *(a2 + v20);
    v22 = *(a3 + v19);
    if (*(a2 + 12))
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a2 + v23);
    if (v18 == v21)
    {
      if (v18 <= 0)
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
          _SparseMultiplySubfactor_Complex_Double(a1, a2, a3, a4);
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
        HIDWORD(v31.ignoreRowsAndColumns) = v18;
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
        HIDWORD(v31.ignoreRowsAndColumns) = v18;
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
      HIDWORD(v31.ignoreRowsAndColumns) = v18;
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

{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCCEC();
    }

    goto LABEL_64;
  }

  _SparseGetOptionsFromSymbolicFactor(&v31, (a1 + 16));
  reportError = v31.reportError;
  v9 = *a1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 20) * v10;
  v12 = *(a1 + 24) * v10;
  if (v11 >= v12)
  {
    v13 = *(a1 + 24) * v10;
  }

  else
  {
    v13 = *(a1 + 20) * v10;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (*(a1 + 4) == 6 && *(a1 + 33) == 40)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (v9)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v9)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = *a3;
  if (*(a3 + 8) < *a3)
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

  if (*(a2 + 8) >= *a2)
  {
    if (*(a3 + 12))
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
      v18 = *(a3 + 4);
    }

    if (*(a2 + 12))
    {
      v20 = 0;
    }

    else
    {
      v20 = 4;
    }

    v21 = *(a2 + v20);
    v22 = *(a3 + v19);
    if (*(a2 + 12))
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a2 + v23);
    if (v18 == v21)
    {
      if (v18 <= 0)
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
          _SparseMultiplySubfactor_Complex_Float(a1, a2, a3, a4);
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
        HIDWORD(v31.ignoreRowsAndColumns) = v18;
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
        HIDWORD(v31.ignoreRowsAndColumns) = v18;
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
      HIDWORD(v31.ignoreRowsAndColumns) = v18;
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

uint64_t SparseMultiply(_OWORD *a1, int a2, uint64_t a3)
{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  return SparseMultiply(v10, v8);
}

{
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  return SparseMultiply(v10, v8);
}

uint64_t SparseMultiply(_OWORD *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  return SparseMultiply(v14, v12, v10);
}

{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  return SparseMultiply(v14, v12, v10);
}

void SparseMultiply(_OWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  SparseMultiply(v10, v8, a4);
}

{
  v4 = a1[5];
  v10[4] = a1[4];
  v10[5] = v4;
  v5 = a1[7];
  v10[6] = a1[6];
  v10[7] = v5;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = a1[3];
  v10[2] = a1[2];
  v10[3] = v7;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a2;
  v8[3] = 0;
  v9 = a3;
  SparseMultiply(v10, v8, a4);
}

void SparseMultiply(_OWORD *a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[5];
  v14[4] = a1[4];
  v14[5] = v6;
  v7 = a1[7];
  v14[6] = a1[6];
  v14[7] = v7;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  SparseMultiply(v14, v12, v10, a6);
}

{
  v6 = a1[5];
  v14[4] = a1[4];
  v14[5] = v6;
  v7 = a1[7];
  v14[6] = a1[6];
  v14[7] = v7;
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  v12[0] = a2;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = 0;
  v13 = a3;
  v10[0] = a4;
  v10[1] = 1;
  v10[2] = a4;
  v10[3] = 0;
  v11 = a5;
  SparseMultiply(v14, v12, v10, a6);
}

void SparseCreatePreconditioner(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 28);
  v5 = 4;
  if (*(a2 + 24))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 24))
  {
    v5 = 0;
  }

  if (*(a2 + v6) * v4 < 1 || *(a2 + v5) * v4 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCE70();
    }

    _SparseTrap();
  }

  _SparseCreatePreconditioner_Complex_Double(a1, a2, a3);
}

{
  v4 = *(a2 + 28);
  v5 = 4;
  if (*(a2 + 24))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 24))
  {
    v5 = 0;
  }

  if (*(a2 + v6) * v4 < 1 || *(a2 + v5) * v4 <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CCE70();
    }

    _SparseTrap();
  }

  _SparseCreatePreconditioner_Complex_Float(a1, a2, a3);
}

void SparseSolve(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = *(a2 + 28);
  v9 = 4;
  if (*(a2 + 12))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + v10) * v8;
  if (*(a2 + 12))
  {
    v9 = 0;
  }

  v12 = *(a2 + v9) * v8;
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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n");
    goto LABEL_54;
  }

  v14 = 4;
  if (*(a4 + 12))
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + v15);
  if (*(a4 + 12))
  {
    v17 = 0;
  }

  else
  {
    v17 = 4;
  }

  v18 = *(a4 + v17);
  v19 = *(a3 + 12);
  v20 = (v19 & 1) == 0;
  if (v19)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a3 + v21);
  if (!v20)
  {
    v14 = 0;
  }

  v23 = *(a3 + v14);
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
      LODWORD(v44) = v22;
      WORD2(v44) = 1024;
      *(&v44 + 6) = v23;
      v26 = MEMORY[0x277D86220];
      v27 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_45;
    }

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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
LABEL_54:
    v6(&buf);
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
      LODWORD(v44) = v16;
      WORD2(v44) = 1024;
      *(&v44 + 6) = v18;
      v26 = MEMORY[0x277D86220];
      v27 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_45;
    }

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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.");
    goto LABEL_54;
  }

  if (v22 != v11)
  {
    if (v6)
    {
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
      v45 = 0u;
      v46 = 0u;
      buf = 0u;
      v44 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.");
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
    LODWORD(v44) = v22;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v18;
    v26 = MEMORY[0x277D86220];
    v27 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &buf, 0x1Au);
    goto LABEL_57;
  }

  v24 = *a1;
  if (v24 == 2)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 0x40000000;
    v31[2] = sub_2367BF35C;
    v31[3] = &unk_278A009B0;
    v28 = a2[1];
    v32 = *a2;
    v33 = v28;
    v34 = *(a2 + 4);
    _SparseLSMRSolve_Complex_Double(v5, a4, a3, v31, 0);
    goto LABEL_58;
  }

  if (v24 != 1)
  {
    if (v12 == v11)
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 0x40000000;
      v39[2] = sub_2367BF1F4;
      v39[3] = &unk_278A00970;
      v29 = a2[1];
      v40 = *a2;
      v41 = v29;
      v42 = *(a2 + 4);
      _SparseCGSolve_Complex_Double(v5, a4, a3, v39, 0);
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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_54;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 0x40000000;
  v35[2] = sub_2367BF2A8;
  v35[3] = &unk_278A00990;
  v25 = a2[1];
  v36 = *a2;
  v37 = v25;
  v38 = *(a2 + 4);
  _SparseGMRESSolve_Complex_Double(v5, a4, a3, v35, 0);
LABEL_58:
  v30 = *MEMORY[0x277D85DE8];
}

{
  v59 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = *(a2 + 28);
  v9 = 4;
  if (*(a2 + 12))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + v10) * v8;
  if (*(a2 + 12))
  {
    v9 = 0;
  }

  v12 = *(a2 + v9) * v8;
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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n");
    goto LABEL_54;
  }

  v14 = 4;
  if (*(a4 + 12))
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + v15);
  if (*(a4 + 12))
  {
    v17 = 0;
  }

  else
  {
    v17 = 4;
  }

  v18 = *(a4 + v17);
  v19 = *(a3 + 12);
  v20 = (v19 & 1) == 0;
  if (v19)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a3 + v21);
  if (!v20)
  {
    v14 = 0;
  }

  v23 = *(a3 + v14);
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
      LODWORD(v44) = v22;
      WORD2(v44) = 1024;
      *(&v44 + 6) = v23;
      v26 = MEMORY[0x277D86220];
      v27 = "Dimensions of X (%dx%d) and B (%dx%d) do not match.";
      goto LABEL_45;
    }

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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
LABEL_54:
    v6(&buf);
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
      LODWORD(v44) = v16;
      WORD2(v44) = 1024;
      *(&v44 + 6) = v18;
      v26 = MEMORY[0x277D86220];
      v27 = "Dimensions of A (%dx%d) and X (%dx%d) do not match.";
      goto LABEL_45;
    }

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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.");
    goto LABEL_54;
  }

  if (v22 != v11)
  {
    if (v6)
    {
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
      v45 = 0u;
      v46 = 0u;
      buf = 0u;
      v44 = 0u;
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.");
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
    LODWORD(v44) = v22;
    WORD2(v44) = 1024;
    *(&v44 + 6) = v18;
    v26 = MEMORY[0x277D86220];
    v27 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v26, OS_LOG_TYPE_ERROR, v27, &buf, 0x1Au);
    goto LABEL_57;
  }

  v24 = *a1;
  if (v24 == 2)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 0x40000000;
    v31[2] = sub_2367C8B78;
    v31[3] = &unk_278A00BC0;
    v28 = a2[1];
    v32 = *a2;
    v33 = v28;
    v34 = *(a2 + 4);
    _SparseLSMRSolve_Complex_Float(v5, a4, a3, v31, 0);
    goto LABEL_58;
  }

  if (v24 != 1)
  {
    if (v12 == v11)
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 0x40000000;
      v39[2] = sub_2367C8A10;
      v39[3] = &unk_278A00B80;
      v29 = a2[1];
      v40 = *a2;
      v41 = v29;
      v42 = *(a2 + 4);
      _SparseCGSolve_Complex_Float(v5, a4, a3, v39, 0);
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
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v44 = 0u;
    snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_54;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 0x40000000;
  v35[2] = sub_2367C8AC4;
  v35[3] = &unk_278A00BA0;
  v25 = a2[1];
  v36 = *a2;
  v37 = v25;
  v38 = *(a2 + 4);
  _SparseGMRESSolve_Complex_Float(v5, a4, a3, v35, 0);
LABEL_58:
  v30 = *MEMORY[0x277D85DE8];
}