uint64_t sub_2367BF1F4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367BF2A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367BF35C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

void SparseSolve(void *__src, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v13[1] = 1;
  v13[2] = a3;
  v13[3] = 0;
  v14 = a4;
  v11[0] = a5;
  v11[1] = 1;
  v11[2] = a5;
  v11[3] = 0;
  v12 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = *(a2 + 32);
  SparseSolve(__dst, v9, v13, v11);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v16 = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v13[1] = 1;
  v13[2] = a3;
  v13[3] = 0;
  v14 = a4;
  v11[0] = a5;
  v11[1] = 1;
  v11[2] = a5;
  v11[3] = 0;
  v12 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = *(a2 + 32);
  SparseSolve(__dst, v9, v13, v11);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v16 = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v13[1] = 1;
  v13[2] = a3;
  v13[3] = 0;
  v14 = a4;
  v11[0] = a5;
  v11[1] = 1;
  v11[2] = a5;
  v11[3] = 0;
  v12 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = *(a2 + 32);
  SparseSolve(__dst, v9, v13, v11);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v16 = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v13[1] = 1;
  v13[2] = a3;
  v13[3] = 0;
  v14 = a4;
  v11[0] = a5;
  v11[1] = 1;
  v11[2] = a5;
  v11[3] = 0;
  v12 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = *(a2 + 32);
  SparseSolve(__dst, v9, v13, v11);
  v8 = *MEMORY[0x277D85DE8];
}

void SparseSolve(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = 4;
  if (*(a4 + 12))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + v9);
  if (*(a4 + 12))
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(a4 + v11);
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
    v27 = 0u;
    v28 = 0u;
    *__str = 0u;
    v26 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v6(__str);
    v24 = *MEMORY[0x277D85DE8];
    return;
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
    v27 = 0u;
    v28 = 0u;
    *__str = 0u;
    v26 = 0u;
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
      LODWORD(v26) = v17;
      WORD2(v26) = 1024;
      *(&v26 + 6) = v18;
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

        _SparseGMRESSolve_Complex_Double(v5, a4, a3, a2, 0);
        return;
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
      v23 = *MEMORY[0x277D85DE8];

      _SparseCGSolve_Complex_Double(v5, a4, a3, a2, 0);
      return;
    }

    if (v6)
    {
LABEL_53:
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
      v27 = 0u;
      v28 = 0u;
      *__str = 0u;
      v26 = 0u;
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

  v22 = *MEMORY[0x277D85DE8];

  _SparseLSMRSolve_Complex_Double(v5, a4, a3, a2, 0);
}

{
  v41 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 1);
  v5 = (a1 + 2);
  v6 = v7;
  v8 = 4;
  if (*(a4 + 12))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + v9);
  if (*(a4 + 12))
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(a4 + v11);
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
    v27 = 0u;
    v28 = 0u;
    *__str = 0u;
    v26 = 0u;
    snprintf(__str, 0x100uLL, "Bad dimensions for X (%dx%d)\n");
LABEL_54:
    v6(__str);
    v24 = *MEMORY[0x277D85DE8];
    return;
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
    v27 = 0u;
    v28 = 0u;
    *__str = 0u;
    v26 = 0u;
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
      LODWORD(v26) = v17;
      WORD2(v26) = 1024;
      *(&v26 + 6) = v18;
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

        _SparseGMRESSolve_Complex_Float(v5, a4, a3, a2, 0);
        return;
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
      v23 = *MEMORY[0x277D85DE8];

      _SparseCGSolve_Complex_Float(v5, a4, a3, a2, 0);
      return;
    }

    if (v6)
    {
LABEL_53:
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
      v27 = 0u;
      v28 = 0u;
      *__str = 0u;
      v26 = 0u;
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

  v22 = *MEMORY[0x277D85DE8];

  _SparseLSMRSolve_Complex_Float(v5, a4, a3, a2, 0);
}

void SparseSolve(int *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 1);
  v7 = (a1 + 2);
  v8 = v9;
  if (a5 <= 0)
  {
    if (v8)
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
      v8(&__str);
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

  v17[0] = a5;
  v17[1] = 1;
  v17[2] = a5;
  v17[3] = 0;
  v18 = a6;
  v15[0] = a3;
  v15[1] = 1;
  v15[2] = a3;
  v15[3] = 0;
  v16 = a4;
  v10 = *a1;
  if (v10 == 2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = sub_2367BFC5C;
    v12[3] = &unk_278A00A28;
    v12[4] = a2;
    _SparseLSMRSolve_Complex_Double(v7, v17, v15, v12, 0);
    goto LABEL_27;
  }

  if (v10 != 1)
  {
    if (a5 == a3)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = sub_2367BFC0C;
      v14[3] = &unk_278A009D8;
      v14[4] = a2;
      _SparseCGSolve_Complex_Double(v7, v17, v15, v14, 0);
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

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = sub_2367BFC34;
  v13[3] = &unk_278A00A00;
  v13[4] = a2;
  _SparseGMRESSolve_Complex_Double(v7, v17, v15, v13, 0);
LABEL_27:
  v11 = *MEMORY[0x277D85DE8];
}

{
  v35 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 1);
  v7 = (a1 + 2);
  v8 = v9;
  if (a5 <= 0)
  {
    if (v8)
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
      v8(&__str);
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

  v17[0] = a5;
  v17[1] = 1;
  v17[2] = a5;
  v17[3] = 0;
  v18 = a6;
  v15[0] = a3;
  v15[1] = 1;
  v15[2] = a3;
  v15[3] = 0;
  v16 = a4;
  v10 = *a1;
  if (v10 == 2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = sub_2367C9478;
    v12[3] = &unk_278A00C38;
    v12[4] = a2;
    _SparseLSMRSolve_Complex_Float(v7, v17, v15, v12, 0);
    goto LABEL_27;
  }

  if (v10 != 1)
  {
    if (a5 == a3)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = sub_2367C9428;
      v14[3] = &unk_278A00BE8;
      v14[4] = a2;
      _SparseCGSolve_Complex_Float(v7, v17, v15, v14, 0);
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

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = sub_2367C9450;
  v13[3] = &unk_278A00C10;
  v13[4] = a2;
  _SparseGMRESSolve_Complex_Float(v7, v17, v15, v13, 0);
LABEL_27:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2367BFC0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367BFC34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367BFC5C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t SparseSolve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  v7 = *(a2 + 28);
  v8 = 4;
  if (*(a2 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + v9) * v7;
  if (*(a2 + 24))
  {
    v8 = 0;
  }

  v11 = *(a2 + v8) * v7;
  if (v10 < 1 || v11 <= 0)
  {
    if (!v6)
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Bad matrix dimensions %dx%d\n");
    goto LABEL_42;
  }

  v15 = 4;
  if (*(a4 + 12))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + v16);
  if (*(a4 + 12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(a4 + v18);
  v20 = *(a3 + 12);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(a3 + v15);
  if (v19 != v24)
  {
    if (!v6)
    {
      v29 = v23;
      v30 = v17;
      v31 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *__str = 67109888;
      *&__str[4] = v30;
      *&__str[8] = 1024;
      *&__str[10] = v31;
      *&__str[14] = 1024;
      *&__str[16] = v29;
      *&__str[20] = 1024;
      *&__str[22] = v24;
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
LABEL_42:
    v6(__str);
    v38 = 0xFFFFFFFFLL;
    goto LABEL_54;
  }

  if (v17 != v11)
  {
    if (!v6)
    {
      v34 = v17;
      v35 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *__str = 67109888;
      *&__str[4] = v10;
      *&__str[8] = 1024;
      *&__str[10] = v11;
      *&__str[14] = 1024;
      *&__str[16] = v34;
      *&__str[20] = 1024;
      *&__str[22] = v35;
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.");
    goto LABEL_42;
  }

  if (v23 != v10)
  {
    if (v6)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.");
      goto LABEL_42;
    }

    v36 = v23;
    v37 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    *__str = 67109888;
    *&__str[4] = v10;
    *&__str[8] = 1024;
    *&__str[10] = v11;
    *&__str[14] = 1024;
    *&__str[16] = v36;
    *&__str[20] = 1024;
    *&__str[22] = v37;
    v32 = MEMORY[0x277D86220];
    v33 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_49:
    _os_log_error_impl(&dword_2366B9000, v32, OS_LOG_TYPE_ERROR, v33, __str, 0x1Au);
    goto LABEL_53;
  }

  if (a5 <= 1)
  {
    if (v6)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      strcpy(__str, "Invalid preconditioner type for this call: for no preconditioner, omit the parameter. User-supplied preconditioners must supply apply() method.");
      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD1B0();
    }

LABEL_53:
    _SparseTrap();
  }

  memset(__str, 0, 24);
  _SparseCreatePreconditioner_Complex_Double(a5, a2, __str);
  if (*__str)
  {
    if (*a1 == 2)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 0x40000000;
      v43[2] = sub_2367C0364;
      v43[3] = &unk_278A00A88;
      v41 = *(a2 + 16);
      v44 = *a2;
      v45 = v41;
      v46 = *(a2 + 32);
      v28 = _SparseLSMRSolve_Complex_Double(v5, a4, a3, v43, __str);
    }

    else if (*a1 == 1)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 0x40000000;
      v47[2] = sub_2367C02B0;
      v47[3] = &unk_278A00A68;
      v27 = *(a2 + 16);
      v48 = *a2;
      v49 = v27;
      v50 = *(a2 + 32);
      _SparseGMRESSolve_Complex_Double(v5, a4, a3, v47, __str);
    }

    else
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 0x40000000;
      v51[2] = sub_2367C01FC;
      v51[3] = &unk_278A00A48;
      v42 = *(a2 + 16);
      v52 = *a2;
      v53 = v42;
      v54 = *(a2 + 32);
      v28 = _SparseCGSolve_Complex_Double(v5, a4, a3, v51, __str);
    }

    v38 = v28;
    _SparseReleaseOpaquePreconditioner_Complex_Double(__str);
  }

  else
  {
    v38 = 4294967197;
  }

LABEL_54:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

{
  v63 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  v7 = *(a2 + 28);
  v8 = 4;
  if (*(a2 + 24))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + v9) * v7;
  if (*(a2 + 24))
  {
    v8 = 0;
  }

  v11 = *(a2 + v8) * v7;
  if (v10 < 1 || v11 <= 0)
  {
    if (!v6)
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Bad matrix dimensions %dx%d\n");
    goto LABEL_42;
  }

  v15 = 4;
  if (*(a4 + 12))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + v16);
  if (*(a4 + 12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(a4 + v18);
  v20 = *(a3 + 12);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(a3 + v15);
  if (v19 != v24)
  {
    if (!v6)
    {
      v29 = v23;
      v30 = v17;
      v31 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *__str = 67109888;
      *&__str[4] = v30;
      *&__str[8] = 1024;
      *&__str[10] = v31;
      *&__str[14] = 1024;
      *&__str[16] = v29;
      *&__str[20] = 1024;
      *&__str[22] = v24;
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
LABEL_42:
    v6(__str);
    v38 = 0xFFFFFFFFLL;
    goto LABEL_54;
  }

  if (v17 != v11)
  {
    if (!v6)
    {
      v34 = v17;
      v35 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *__str = 67109888;
      *&__str[4] = v10;
      *&__str[8] = 1024;
      *&__str[10] = v11;
      *&__str[14] = 1024;
      *&__str[16] = v34;
      *&__str[20] = 1024;
      *&__str[22] = v35;
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
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.");
    goto LABEL_42;
  }

  if (v23 != v10)
  {
    if (v6)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.");
      goto LABEL_42;
    }

    v36 = v23;
    v37 = v19;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    *__str = 67109888;
    *&__str[4] = v10;
    *&__str[8] = 1024;
    *&__str[10] = v11;
    *&__str[14] = 1024;
    *&__str[16] = v36;
    *&__str[20] = 1024;
    *&__str[22] = v37;
    v32 = MEMORY[0x277D86220];
    v33 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_49:
    _os_log_error_impl(&dword_2366B9000, v32, OS_LOG_TYPE_ERROR, v33, __str, 0x1Au);
    goto LABEL_53;
  }

  if (a5 <= 1)
  {
    if (v6)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      strcpy(__str, "Invalid preconditioner type for this call: for no preconditioner, omit the parameter. User-supplied preconditioners must supply apply() method.");
      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD1B0();
    }

LABEL_53:
    _SparseTrap();
  }

  memset(__str, 0, 24);
  _SparseCreatePreconditioner_Complex_Float(a5, a2, __str);
  if (*__str)
  {
    if (*a1 == 2)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 0x40000000;
      v43[2] = sub_2367C9B80;
      v43[3] = &unk_278A00C98;
      v41 = *(a2 + 16);
      v44 = *a2;
      v45 = v41;
      v46 = *(a2 + 32);
      v28 = _SparseLSMRSolve_Complex_Float(v5, a4, a3, v43, __str);
    }

    else if (*a1 == 1)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 0x40000000;
      v47[2] = sub_2367C9ACC;
      v47[3] = &unk_278A00C78;
      v27 = *(a2 + 16);
      v48 = *a2;
      v49 = v27;
      v50 = *(a2 + 32);
      _SparseGMRESSolve_Complex_Float(v5, a4, a3, v47, __str);
    }

    else
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 0x40000000;
      v51[2] = sub_2367C9A18;
      v51[3] = &unk_278A00C58;
      v42 = *(a2 + 16);
      v52 = *a2;
      v53 = v42;
      v54 = *(a2 + 32);
      v28 = _SparseCGSolve_Complex_Float(v5, a4, a3, v51, __str);
    }

    v38 = v28;
    _SparseReleaseOpaquePreconditioner_Complex_Float(__str);
  }

  else
  {
    v38 = 4294967197;
  }

LABEL_54:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t sub_2367C01FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367C02B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367C0364(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

void SparseSolve(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = *(a2 + 28);
  v10 = 4;
  if (*(a2 + 12))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 + v11) * v9;
  if (*(a2 + 12))
  {
    v10 = 0;
  }

  v13 = *(a2 + v10) * v9;
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
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n");
    goto LABEL_54;
  }

  v15 = 4;
  if (*(a4 + 12))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + v16);
  if (*(a4 + 12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(a4 + v18);
  v20 = *(a3 + 12);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(a3 + v15);
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
      LODWORD(v45) = v23;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v24;
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
    snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
LABEL_54:
    v7(&buf);
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
      LODWORD(v45) = v17;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v19;
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
    snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.");
    goto LABEL_54;
  }

  if (v23 != v12)
  {
    if (v7)
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
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.");
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
    LODWORD(v45) = v23;
    WORD2(v45) = 1024;
    *(&v45 + 6) = v19;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 0x1Au);
    goto LABEL_57;
  }

  v25 = *a1;
  if (v25 == 2)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 0x40000000;
    v32[2] = sub_2367C0BA0;
    v32[3] = &unk_278A00AE8;
    v29 = a2[1];
    v33 = *a2;
    v34 = v29;
    v35 = *(a2 + 4);
    _SparseLSMRSolve_Complex_Double(v6, a4, a3, v32, a5);
    goto LABEL_58;
  }

  if (v25 != 1)
  {
    if (v13 == v12)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 0x40000000;
      v40[2] = sub_2367C0A38;
      v40[3] = &unk_278A00AA8;
      v30 = a2[1];
      v41 = *a2;
      v42 = v30;
      v43 = *(a2 + 4);
      _SparseCGSolve_Complex_Double(v6, a4, a3, v40, a5);
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
    snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_54;
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 0x40000000;
  v36[2] = sub_2367C0AEC;
  v36[3] = &unk_278A00AC8;
  v26 = a2[1];
  v37 = *a2;
  v38 = v26;
  v39 = *(a2 + 4);
  _SparseGMRESSolve_Complex_Double(v6, a4, a3, v36, a5);
LABEL_58:
  v31 = *MEMORY[0x277D85DE8];
}

{
  v60 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = *(a2 + 28);
  v10 = 4;
  if (*(a2 + 12))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 + v11) * v9;
  if (*(a2 + 12))
  {
    v10 = 0;
  }

  v13 = *(a2 + v10) * v9;
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
    snprintf(&buf, 0x100uLL, "Bad matrix dimensions %dx%d\n");
    goto LABEL_54;
  }

  v15 = 4;
  if (*(a4 + 12))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + v16);
  if (*(a4 + 12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = *(a4 + v18);
  v20 = *(a3 + 12);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a3 + v22);
  if (!v21)
  {
    v15 = 0;
  }

  v24 = *(a3 + v15);
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
      LODWORD(v45) = v23;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v24;
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
    snprintf(&buf, 0x100uLL, "Dimensions of X (%dx%d) and B (%dx%d) do not match.");
LABEL_54:
    v7(&buf);
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
      LODWORD(v45) = v17;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v19;
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
    snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and X (%dx%d) do not match.");
    goto LABEL_54;
  }

  if (v23 != v12)
  {
    if (v7)
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
      snprintf(&buf, 0x100uLL, "Dimensions of A (%dx%d) and B (%dx%d) do not match.");
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
    LODWORD(v45) = v23;
    WORD2(v45) = 1024;
    *(&v45 + 6) = v19;
    v27 = MEMORY[0x277D86220];
    v28 = "Dimensions of A (%dx%d) and B (%dx%d) do not match.";
LABEL_45:
    _os_log_error_impl(&dword_2366B9000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 0x1Au);
    goto LABEL_57;
  }

  v25 = *a1;
  if (v25 == 2)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 0x40000000;
    v32[2] = sub_2367CA3BC;
    v32[3] = &unk_278A00CF8;
    v29 = a2[1];
    v33 = *a2;
    v34 = v29;
    v35 = *(a2 + 4);
    _SparseLSMRSolve_Complex_Float(v6, a4, a3, v32, a5);
    goto LABEL_58;
  }

  if (v25 != 1)
  {
    if (v13 == v12)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 0x40000000;
      v40[2] = sub_2367CA254;
      v40[3] = &unk_278A00CB8;
      v30 = a2[1];
      v41 = *a2;
      v42 = v30;
      v43 = *(a2 + 4);
      _SparseCGSolve_Complex_Float(v6, a4, a3, v40, a5);
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
    snprintf(&buf, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_54;
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 0x40000000;
  v36[2] = sub_2367CA308;
  v36[3] = &unk_278A00CD8;
  v26 = a2[1];
  v37 = *a2;
  v38 = v26;
  v39 = *(a2 + 4);
  _SparseGMRESSolve_Complex_Float(v6, a4, a3, v36, a5);
LABEL_58:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2367C0A38(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367C0AEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

uint64_t sub_2367C0BA0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

void SparseSolve(void *__src, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, __int128 *a7)
{
  v20 = *MEMORY[0x277D85DE8];
  v17[0] = a3;
  v17[1] = 1;
  v17[2] = a3;
  v17[3] = 0;
  v18 = a4;
  v15[0] = a5;
  v15[1] = 1;
  v15[2] = a5;
  v15[3] = 0;
  v16 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  v14 = *(a2 + 32);
  v11 = *a7;
  v12 = *(a7 + 2);
  SparseSolve(__dst, v13, v17, v15, &v11);
  v10 = *MEMORY[0x277D85DE8];
}

{
  v20 = *MEMORY[0x277D85DE8];
  v17[0] = a3;
  v17[1] = 1;
  v17[2] = a3;
  v17[3] = 0;
  v18 = a4;
  v15[0] = a5;
  v15[1] = 1;
  v15[2] = a5;
  v15[3] = 0;
  v16 = a6;
  memcpy(__dst, __src, sizeof(__dst));
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  v14 = *(a2 + 32);
  v11 = *a7;
  v12 = *(a7 + 2);
  SparseSolve(__dst, v13, v17, v15, &v11);
  v10 = *MEMORY[0x277D85DE8];
}

void SparseSolve(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = 4;
  if (*(a4 + 12))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a4 + v10);
  if (*(a4 + 12))
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(a4 + v12);
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
    v7(__str);
    v25 = *MEMORY[0x277D85DE8];
    return;
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
      LODWORD(v27) = v18;
      WORD2(v27) = 1024;
      *(&v27 + 6) = v19;
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

        _SparseGMRESSolve_Complex_Double(v6, a4, a3, a2, a5);
        return;
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
      v24 = *MEMORY[0x277D85DE8];

      _SparseCGSolve_Complex_Double(v6, a4, a3, a2, a5);
      return;
    }

    if (v7)
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

  _SparseLSMRSolve_Complex_Double(v6, a4, a3, a2, a5);
}

{
  v42 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  v9 = 4;
  if (*(a4 + 12))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a4 + v10);
  if (*(a4 + 12))
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(a4 + v12);
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
    v7(__str);
    v25 = *MEMORY[0x277D85DE8];
    return;
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
      LODWORD(v27) = v18;
      WORD2(v27) = 1024;
      *(&v27 + 6) = v19;
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

        _SparseGMRESSolve_Complex_Float(v6, a4, a3, a2, a5);
        return;
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
      v24 = *MEMORY[0x277D85DE8];

      _SparseCGSolve_Complex_Float(v6, a4, a3, a2, a5);
      return;
    }

    if (v7)
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

  _SparseLSMRSolve_Complex_Float(v6, a4, a3, a2, a5);
}

void SparseSolve(int *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 1);
  v8 = (a1 + 2);
  v9 = v10;
  if (a5 <= 0)
  {
    if (v9)
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
      v22 = 0u;
      v23 = 0u;
      __str = 0u;
      v21 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimension for x (%dx%d)\n");
LABEL_23:
      v9(&__str);
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
      v22 = 0u;
      v23 = 0u;
      __str = 0u;
      v21 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  v18[0] = a5;
  v18[1] = 1;
  v18[2] = a5;
  v18[3] = 0;
  v19 = a6;
  v16[0] = a3;
  v16[1] = 1;
  v16[2] = a3;
  v16[3] = 0;
  v17 = a4;
  v11 = *a1;
  if (v11 == 2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = sub_2367C14B4;
    v13[3] = &unk_278A00B60;
    v13[4] = a2;
    _SparseLSMRSolve_Complex_Double(v8, v18, v16, v13, a7);
    goto LABEL_27;
  }

  if (v11 != 1)
  {
    if (a5 == a3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = sub_2367C1464;
      v15[3] = &unk_278A00B10;
      v15[4] = a2;
      _SparseCGSolve_Complex_Double(v8, v18, v16, v15, a7);
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
    v22 = 0u;
    v23 = 0u;
    __str = 0u;
    v21 = 0u;
    snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_23;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = sub_2367C148C;
  v14[3] = &unk_278A00B38;
  v14[4] = a2;
  _SparseGMRESSolve_Complex_Double(v8, v18, v16, v14, a7);
LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
}

{
  v36 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 1);
  v8 = (a1 + 2);
  v9 = v10;
  if (a5 <= 0)
  {
    if (v9)
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
      v22 = 0u;
      v23 = 0u;
      __str = 0u;
      v21 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimension for x (%dx%d)\n");
LABEL_23:
      v9(&__str);
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
      v22 = 0u;
      v23 = 0u;
      __str = 0u;
      v21 = 0u;
      snprintf(&__str, 0x100uLL, "Bad dimensions for b (%dx%d)\n");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD138();
    }

    goto LABEL_26;
  }

  v18[0] = a5;
  v18[1] = 1;
  v18[2] = a5;
  v18[3] = 0;
  v19 = a6;
  v16[0] = a3;
  v16[1] = 1;
  v16[2] = a3;
  v16[3] = 0;
  v17 = a4;
  v11 = *a1;
  if (v11 == 2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = sub_2367CACD0;
    v13[3] = &unk_278A00D70;
    v13[4] = a2;
    _SparseLSMRSolve_Complex_Float(v8, v18, v16, v13, a7);
    goto LABEL_27;
  }

  if (v11 != 1)
  {
    if (a5 == a3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = sub_2367CAC80;
      v15[3] = &unk_278A00D20;
      v15[4] = a2;
      _SparseCGSolve_Complex_Float(v8, v18, v16, v15, a7);
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
    v22 = 0u;
    v23 = 0u;
    __str = 0u;
    v21 = 0u;
    snprintf(&__str, 0x100uLL, "Counts of X (%d) and B (%d) do not match.");
    goto LABEL_23;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = sub_2367CACA8;
  v14[3] = &unk_278A00D48;
  v14[4] = a2;
  _SparseGMRESSolve_Complex_Float(v8, v18, v16, v14, a7);
LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2367C1464(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367C148C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367C14B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

void SparseIterate(int *a1, uint64_t a2, char *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 1);
  v10 = (a1 + 2);
  v11 = v12;
  v13 = 4;
  if (*(a8 + 12))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a8 + v14);
  if (*(a8 + 12))
  {
    v13 = 0;
  }

  v16 = *(a8 + v13);
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
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", a4, a5, a6, a7, a9);
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
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", a4, a5, a6, a7, a9);
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
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", a4, a5, a6, a7, a9);
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
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", a4, a5, a6, a7, a9, v15);
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
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", a4, a5, a6, a7, a9);
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

    _SparseLSMRIterate_Complex_Double(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }

  else if (v29 == 1)
  {
    v30 = *MEMORY[0x277D85DE8];

    _SparseGMRESIterate_Complex_Double(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }

  else
  {
    v33 = *MEMORY[0x277D85DE8];

    _SparseCGIterate_Complex_Double(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }
}

void SparseIterate(int *a1, uint64_t a2, char *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 1);
  v9 = (a1 + 2);
  v10 = v11;
  v12 = 4;
  if (*(a8 + 12))
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a8 + v13);
  if (*(a8 + 12))
  {
    v12 = 0;
  }

  v15 = *(a8 + v12);
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
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).");
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
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).");
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
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).");
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
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", v14);
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
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).");
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
    _SparseLSMRIterate_Complex_Double(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

  else if (v28 == 1)
  {
    _SparseGMRESIterate_Complex_Double(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

  else
  {
    _SparseCGIterate_Complex_Double(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

LABEL_61:
  v29 = *MEMORY[0x277D85DE8];
}

void SparseRetain(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  if (v5 || !*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD3CC();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v11, v4);
  v7 = *&v11[40];
  if (!*a1 && *(a1 + 80))
  {
    _SparseRetainNumeric_Complex_Double(a1);
    v8 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v8;
    *(a2 + 96) = *(a1 + 96);
    v9 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v9;
    v10 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
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

{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  if (v5 || !*(a1 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD410();
    }

    goto LABEL_4;
  }

  p_factorSize_Double = &v4[-1].factorSize_Double;
  _SparseGetOptionsFromSymbolicFactor(&v13, v4);
  reportError = v13.reportError;
  if (!*p_factorSize_Double && *(a1 + 88))
  {
    _SparseRetainNumeric_Complex_Double(p_factorSize_Double);
    v9 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v9;
    v10 = *(a1 + 112);
    *(a2 + 96) = *(a1 + 96);
    *(a2 + 112) = v10;
    v11 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v11;
    v12 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
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

{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  if (v5 || !*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD3CC();
    }

    goto LABEL_4;
  }

  _SparseGetOptionsFromSymbolicFactor(v11, v4);
  v7 = *&v11[40];
  if (!*a1 && *(a1 + 80))
  {
    _SparseRetainNumeric_Complex_Float(a1);
    v8 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v8;
    *(a2 + 96) = *(a1 + 96);
    v9 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v9;
    v10 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
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

{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  if (v5 || !*(a1 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD410();
    }

    goto LABEL_4;
  }

  p_factorSize_Double = &v4[-1].factorSize_Double;
  _SparseGetOptionsFromSymbolicFactor(&v13, v4);
  reportError = v13.reportError;
  if (!*p_factorSize_Double && *(a1 + 88))
  {
    _SparseRetainNumeric_Complex_Float(p_factorSize_Double);
    v9 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v9;
    v10 = *(a1 + 112);
    *(a2 + 96) = *(a1 + 96);
    *(a2 + 112) = v10;
    v11 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v11;
    v12 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
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

void SparseCleanup(uint64_t a1)
{
  if ((*a1 & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Complex_Double(a1);
  }
}

{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if ((v2 & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Complex_Double(v1);
  }
}

{
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD454();
    }

    _SparseTrap();
  }

  v2 = *(a1 + 8);

  free(v2);
}

{
  if ((*a1 & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Complex_Float(a1);
  }
}

{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if ((v2 & 0x80000000) == 0)
  {
    _SparseDestroyOpaqueNumeric_Complex_Float(v1);
  }
}

{
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD454();
    }

    _SparseTrap();
  }

  v2 = *(a1 + 8);

  free(v2);
}

void SparseCleanup(_DWORD *a1)
{
  if (*a1 <= 1u)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD498();
    }

    _SparseTrap();
  }

  _SparseReleaseOpaquePreconditioner_Complex_Double(a1);
}

{
  if (*a1 <= 1u)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2367CD498();
    }

    _SparseTrap();
  }

  _SparseReleaseOpaquePreconditioner_Complex_Float(a1);
}

void SparseConvertFromCoordinate(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int *a6@<X5>, int *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
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

  v18 = malloc_type_malloc(4 * a3 + 8 * ((a2 + 1) + a4 * a3 * a4) + 28, 0x100004000313F17uLL);
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
  _SparseConvertFromCoordinate_Complex_Float(a1, a2, a3, a4, v21, a6, a7, a8, a9, v19, v20);
  free(v22);
  *(a9 + 24) |= 0x8000u;
}

void SparseConvertFromCoordinate(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, char a5@<W4>, int *a6@<X5>, int *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned int *a11)
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

  _SparseConvertFromCoordinate_Complex_Float(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

int64_t SparseMultiply(uint64_t a1, __int128 *a2, __int128 *a3, float a4, float a5)
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
  result = _SparseSpMV_Complex_Float(buf, &v24, 0, &v22, a4, a5);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

int64_t SparseMultiply(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, float a6, float a7)
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
  return _SparseSpMV_Complex_Float(v12, v16, 0, v14, a6, a7);
}

int64_t SparseMultiply(uint64_t a1, uint64_t a2, uint64_t a3)
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

int64_t SparseMultiply(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return SparseMultiply(v7, a2, a3, a4, a5, 1.0, 0.0);
}

int64_t SparseMultiplyAdd(uint64_t a1, __int128 *a2, __int128 *a3, float a4, float a5)
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
  result = _SparseSpMV_Complex_Float(buf, &v24, 1, &v22, a4, a5);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

int64_t SparseMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3)
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

int64_t SparseMultiplyAdd(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, float a6, float a7)
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
  return _SparseSpMV_Complex_Float(v12, v16, 1, v14, a6, a7);
}

int64_t SparseMultiplyAdd(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return SparseMultiplyAdd(v7, a2, a3, a4, a5, 1.0, 0.0);
}

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, void *a3)
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
          _SparseSolveOpaque_Complex_Float(factor, 0, a2, a3, v8, v9, v10, v11);
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

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, uint64_t a2, uint64_t a3, void *a4)
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
          _SparseSolveOpaque_Complex_Float(factor, a2, a3, a4, v10, v11, v12, v13);
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

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, SparseControl_t a2, int *a3, void *a4)
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
      _SparseSolveOpaque_Complex_Float(factor, 0, &v18, a4, v10, v11, v12, v13);
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

void SparseSolve(SparseOpaqueSymbolicFactorization *factor, SparseControl_t a2, int *a3, int a4, uint64_t a5, void *a6)
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
        _SparseSolveOpaque_Complex_Float(factor, &v29, v27, a6, v14, v15, v16, v17);
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

void SparseSolve(uint64_t a1, uint64_t a2, void *a3)
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

  _SparseSolveSubfactor_Complex_Float(a1, 0, a2, a3);
LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
}

void SparseSolve(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
          _SparseSolveSubfactor_Complex_Float(a1, a2, a3, a4);
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

void SparseSolve(_OWORD *a1, int a2, uint64_t a3, void *a4)
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

void SparseSolve(_OWORD *a1, int a2, uint64_t a3, int a4, uint64_t a5, void *a6)
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

int64_t sub_2367C8A10(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367C8AC4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367C8B78(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

uint64_t sub_2367C9428(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367C9450(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367C9478(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

int64_t sub_2367C9A18(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367C9ACC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367C9B80(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

int64_t sub_2367CA254(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367CA308(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v5;
  v12 = *(a1 + 64);
  v9 = *a4;
  v10 = *(a4 + 16);
  v7 = *a5;
  v8 = *(a5 + 16);
  if (a2)
  {
    return SparseMultiplyAdd(v11, &v9, &v7, 1.0, 0.0);
  }

  else
  {
    return SparseMultiply(v11, &v9, &v7, 1.0, 0.0);
  }
}

int64_t sub_2367CA3BC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v7;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiplyAdd(&v15, &v10, &v13, 1.0, 0.0);
  }

  else
  {
    v9 = *(a1 + 48);
    if (a3 == 111)
    {
      v15 = *(a1 + 32);
      v16 = v9;
      v17 = *(a1 + 64);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = *(a1 + 64);
      SparseGetConjugateTranspose(&v10, &v15);
    }

    v10 = *a4;
    *&v11 = *(a4 + 16);
    v13 = *a5;
    v14 = *(a5 + 16);
    return SparseMultiply(&v15, &v10, &v13, 1.0, 0.0);
  }
}

uint64_t sub_2367CAC80(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367CACA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_2367CACD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  v7 = *a5;
  v8 = *(a5 + 2);
  return (*(*(a1 + 32) + 16))();
}

void SparseIterate(int *a1, uint64_t a2, char *a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 1);
  v10 = (a1 + 2);
  v11 = v12;
  v13 = 4;
  if (*(a8 + 12))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a8 + v14);
  if (*(a8 + 12))
  {
    v13 = 0;
  }

  v16 = *(a8 + v13);
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
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).", a4, a5, a6, a7, a9);
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
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).", a4, a5, a6, a7, a9);
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
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).", a4, a5, a6, a7, a9);
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
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", a4, a5, a6, a7, a9, v15);
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
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).", a4, a5, a6, a7, a9);
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

    _SparseLSMRIterate_Complex_Float(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }

  else if (v29 == 1)
  {
    v30 = *MEMORY[0x277D85DE8];

    _SparseGMRESIterate_Complex_Float(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }

  else
  {
    v33 = *MEMORY[0x277D85DE8];

    _SparseCGIterate_Complex_Float(v10, a2, a4, a3, a8, a6, a7, a9, a5);
  }
}

void SparseIterate(int *a1, uint64_t a2, char *a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 1);
  v9 = (a1 + 2);
  v10 = v11;
  v12 = 4;
  if (*(a8 + 12))
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a8 + v13);
  if (*(a8 + 12))
  {
    v12 = 0;
  }

  v15 = *(a8 + v12);
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
    snprintf(__str, 0x100uLL, "Invalid size for X (%dx%d).");
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
    snprintf(__str, 0x100uLL, "Invalid size for B (%dx%d).");
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
    snprintf(__str, 0x100uLL, "Invalid size for R (%dx%d).");
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
      snprintf(__str, 0x100uLL, "Sizes of X (%dx%d), B (%dx%d) and R (%dx%d) are inconsistent.", v14);
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
      snprintf(__str, 0x100uLL, "Sizes of residual matrix R(%dx%d) must be at least as large as right-hand side B (%dx%d).");
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
    _SparseLSMRIterate_Complex_Float(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

  else if (v28 == 1)
  {
    _SparseGMRESIterate_Complex_Float(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

  else
  {
    _SparseCGIterate_Complex_Float(v9, a2, a4, a3, a8, a6, a7, 0, a5);
  }

LABEL_61:
  v29 = *MEMORY[0x277D85DE8];
}

void *sub_2367CB9C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = 2 * *result;
  return result;
}

uint64_t *sub_2367CB9EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_2367CBB64()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CBC20()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CBCDC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366FFDB8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CBD60()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB8A8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CBDE4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB8A8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CBE68()
{
  sub_2367CB8D0(*MEMORY[0x277D85DE8]);
  sub_2367CB9E0();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CBED8()
{
  sub_2367CB8D0(*MEMORY[0x277D85DE8]);
  sub_2367CB9E0();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CBF48()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB968();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CBFCC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB968();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC050()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB934();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC114()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB994();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC19C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB9A4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC22C(uint64_t *a1)
{
  sub_2367CB9EC(a1, *MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2367CC2A4(uint64_t *a1)
{
  sub_2367CB9EC(a1, *MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2367CC360()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366FFDB8();
  sub_2367CBA04();
  sub_2367CB9B4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC3F4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F711C();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC46C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB8A8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC4F0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366FFDB8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC574()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB8A8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC5F8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB968();
  sub_2367CB9F8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC68C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB97C();
  sub_2367CB8FC();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC71C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB97C();
  sub_2367CB8FC();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC7AC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB9A4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CC83C(uint64_t *a1)
{
  sub_2367CB9EC(a1, *MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2367CC93C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB9A4();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CCC30()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CCD74()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CCDEC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366FFDB8();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CCE70()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CCEE8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CCF60()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CCFD8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD050()
{
  sub_2367CB8D0(*MEMORY[0x277D85DE8]);
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD0C0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB918();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD138()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB918();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD1F4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD26C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD2E4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23672AC04();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD35C()
{
  sub_2367CB8D0(*MEMORY[0x277D85DE8]);
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Au);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD91C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2367CB934();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2367CD9E0(void *a1)
{
  sub_2367CB9C4(a1, *MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2367CDA58(void *a1)
{
  sub_2367CB9C4(a1, *MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2367CDAD0(void *a1)
{
  sub_2367CB9C4(a1, *MEMORY[0x277D85DE8]);
  sub_2367CB9D4();
  sub_2366F7110();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

SparseNumericFactorOptions *__cdecl _SparseGetOptionsFromNumericFactor_Float(SparseNumericFactorOptions *__return_ptr retstr, SparseNumericFactorOptions *factor)
{
  pivotTolerance = factor[2].pivotTolerance;
  v3 = *(*&pivotTolerance + 16);
  *&retstr->control = **&pivotTolerance;
  *&retstr->pivotTolerance = v3;
  return factor;
}

int *sub_2367CDB58(int *result, unsigned int *a2)
{
  v3 = result;
  if ((*(a2 + 6) ^ *(result + 6)))
  {
    v8 = a2[1];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = *a2;
      do
      {
        if (v11 >= 1)
        {
          v12 = (*(a2 + 2) + v9 * a2[2]);
          v13 = (*(result + 2) + v9);
          v14 = 4 * result[2];
          v15 = v11;
          do
          {
            *v12++ = *v13;
            v13 = (v13 + v14);
            --v15;
          }

          while (v15);
        }

        ++v10;
        v9 += 4;
      }

      while (v10 != v8);
    }
  }

  else
  {
    v4 = result[2];
    if (v4 == *result && a2[2] == v4)
    {
      v5 = *(a2 + 2);
      v6 = *(v3 + 2);
      v7 = 4 * v3[1] * v4;

      return memcpy(v5, v6, v7);
    }

    else if (result[1] >= 1)
    {
      v16 = 0;
      do
      {
        result = memcpy((*(a2 + 2) + 4 * (a2[2] * v16)), (*(v3 + 2) + 4 * v3[2] * v16), 4 * *v3);
        ++v16;
      }

      while (v16 < v3[1]);
    }
  }

  return result;
}

void sub_2367CDC98(int *a1)
{
  v2 = a1[2];
  if (v2 == *a1)
  {
    v3 = *(a1 + 2);
    v4 = 4 * a1[1] * v2;

    bzero(v3, v4);
  }

  else if (a1[1] >= 1)
  {
    v5 = 0;
    do
    {
      bzero((*(a1 + 2) + 4 * a1[2] * v5++), 4 * *a1);
    }

    while (v5 < a1[1]);
  }
}

uint64_t sub_2367CDD30(int a1, uint64_t a2, void *a3, void *a4)
{
  result = ilaenv_NEWLAPACK();
  *a3 = 8 * *(a2 + 88) + 32;
  *a4 = 4 * (result + a1 + *(a2 + 192));
  return result;
}

void sub_2367CDDD4(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v613 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 25);
  v577 = v8;
  if (v8 <= 0x27)
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 80);
    sub_2367D0250(*(v27 + 64), *(v26 + 136), a2, a3);
    sub_2367D0340(v577, v26, v27, a3, a4);
    sub_2367D07B0(v577, v26, v27, 0, a3);
    sub_2367D0B0C(v577, v26, v27, a3, a4);
    v28 = *(v27 + 64);
    v29 = *(v26 + 136);
    v30 = *MEMORY[0x277D85DE8];

    sub_2367D0250(v28, v29, 0, a3);
  }

  else
  {
    v9 = a4 + a5;
    v569 = a4 + a5;
    if (v8 - 81 < 3)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 80);
      v582 = v11;
      if (a2)
      {
        sub_2367CDB58(a2, a3);
        v11 = v582;
      }

      v12 = *(a1 + 24);
      v559 = v12 * v12;
      v558 = a3;
      if (*(a1 + 4))
      {
        v13 = 4;
        if (*(a3 + 12))
        {
          v13 = 0;
        }

        v14 = *(a3 + v13);
        LODWORD(v608) = v14;
        v15 = *(v10 + 56);
        v595 = v15;
        LODWORD(v597) = v12;
        v16 = (&a4[v15 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
        if (v9 >= v16)
        {
          v578 = (v16 + 4 * v15 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v9 >= v578)
          {
            v17 = *(v11 + 104);
            if (v17)
            {
              if (v14 >= 1)
              {
                v18 = 0;
                do
                {
                  if (v15 >= 1)
                  {
                    v19 = 0;
                    v20 = *(v10 + 144);
                    v21 = *(a3 + 16);
                    v22 = *(a3 + 8);
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v24 = v19;
                      }

                      else
                      {
                        v24 = v18;
                      }

                      if (*(a3 + 12))
                      {
                        v25 = v18;
                      }

                      else
                      {
                        v25 = v19;
                      }

                      v23 = v19 % v12 + *(v20 + 4 * (v19 / v12)) * v12;
                      *&a4[v23 + v18 * v15] = *(v21 + 4 * (v25 + v24 * v22)) * *(v17 + 4 * v23);
                      ++v19;
                    }

                    while (v15 != v19);
                  }

                  ++v18;
                }

                while (v18 != v14);
              }
            }

            else if (v14 >= 1)
            {
              v63 = 0;
              do
              {
                if (v15 >= 1)
                {
                  v64 = 0;
                  v65 = *(v10 + 144);
                  v66 = *(a3 + 16);
                  v67 = *(a3 + 8);
                  do
                  {
                    if (*(a3 + 12))
                    {
                      v68 = v64;
                    }

                    else
                    {
                      v68 = v63;
                    }

                    if (*(a3 + 12))
                    {
                      v69 = v63;
                    }

                    else
                    {
                      v69 = v64;
                    }

                    a4[v64 % v12 + v63 * v15 + *(v65 + 4 * (v64 / v12)) * v12] = *(v66 + 4 * (v69 + v68 * v67));
                    ++v64;
                  }

                  while (v15 != v64);
                }

                ++v63;
              }

              while (v63 != v14);
            }

            v584 = v15;
            v591 = (&a4[v15 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
            if (v12 == 1)
            {
              v70 = *(v10 + 100);
              if (v70 >= 1)
              {
                v71 = *(v10 + 60);
                v72 = v71 - v70;
                v73 = *(v10 + 120);
                v74 = *(v582 + 40);
                v75 = *(v73 + 8 * v71);
                v76 = 4 * v71 - 4;
                v77 = 4 * v15;
                do
                {
                  --v71;
                  v78 = *(v73 + 8 * v71);
                  v79 = v78 + 1;
                  if (v78 + 1 < v75)
                  {
                    v80 = *(v10 + 128);
                    v81 = *(v10 + 136);
                    do
                    {
                      if (v14 >= 1)
                      {
                        v82 = *(v81 + 4 * *(v80 + 4 * v79));
                        v83 = -*(v74 + 4 * v79);
                        v84 = a4;
                        v85 = v14;
                        do
                        {
                          *(v84 + v76) = *(v84 + v76) + (v83 * *&v84[v82]);
                          v84 = (v84 + v77);
                          --v85;
                        }

                        while (v85);
                      }

                      ++v79;
                    }

                    while (v79 != v75);
                  }

                  v75 = v78;
                  if (v14 >= 1)
                  {
                    v86 = *(v74 + 4 * v78);
                    v87 = a4;
                    v88 = v14;
                    do
                    {
                      *(v87 + v76) = v86 * *(v87 + v76);
                      v87 = (v87 + v77);
                      --v88;
                    }

                    while (v88);
                  }

                  v76 -= 4;
                }

                while (v71 > v72);
              }
            }

            else
            {
              v89 = *(v10 + 100);
              if (v89 >= 1)
              {
                v90 = *(v10 + 60);
                v91 = *(v10 + 96) + v89;
                v92 = 4 * v559;
                do
                {
                  v93 = *(v10 + 120);
                  v94 = *(v93 + 8 * v90--);
                  v95 = *(v93 + 8 * v90) + 1;
                  v96 = v597;
                  v97 = v597;
                  if (v95 < v94)
                  {
                    v98 = *(v10 + 128);
                    v99 = *(v10 + 136);
                    v100 = v608;
                    v101 = *(v582 + 40) + v92 * v95;
                    do
                    {
                      if (v100 >= 1)
                      {
                        v102 = 0;
                        v103 = *(v99 + 4 * *(v98 + 4 * v95)) * v96;
                        do
                        {
                          if (v96 >= 1)
                          {
                            v104 = 0;
                            v105 = v101;
                            do
                            {
                              v106 = v97 * v90 + v102 * v595 + v104;
                              v107 = *&a4[v106];
                              v108 = v105;
                              v109 = v103;
                              v110 = v97;
                              do
                              {
                                v111 = *v108++;
                                v107 = v107 - (v111 * *&a4[v109]);
                                *&a4[v106] = v107;
                                ++v109;
                                --v110;
                              }

                              while (v110);
                              ++v104;
                              v105 += v96;
                            }

                            while (v104 != v97);
                          }

                          ++v102;
                          v103 += v595;
                        }

                        while (v102 != v100);
                      }

                      ++v95;
                      v101 += v92;
                    }

                    while (v95 != v94);
                  }

                  --v91;
                  v112 = *(v582 + 48) + 4 * v97 * v91;
                  sgetrs_NEWLAPACK();
                }

                while (v90 > *(v10 + 60) - *(v10 + 100));
              }
            }

            v561 = *(v10 + 104);
            if (v561 <= 0)
            {
              v113 = v597;
              goto LABEL_430;
            }

            v113 = v597;
            LODWORD(v114) = v608;
            v115 = 4 * v559;
            __n = 4 * v584;
            while (1)
            {
              v116 = *(v10 + 112);
              v560 = v561--;
              v117 = *(v116 + 4 * v560);
              v574 = *(v116 + 4 * v561);
              if (v574 < v117)
              {
                v118 = v574;
                v119 = *(v10 + 120);
                v120 = *(v119 + 8 * v574);
                do
                {
                  v121 = v118 + 1;
                  v122 = *(v119 + 8 * (v118 + 1));
                  if (v120 < v122)
                  {
                    v123 = *(v10 + 128);
                    v124 = *(v10 + 136);
                    v125 = v113 * v118;
                    v126 = *(v582 + 40) + v115 * v120;
                    do
                    {
                      if (v114 >= 1)
                      {
                        v127 = 0;
                        v128 = *(v124 + 4 * *(v123 + 4 * v120)) * v113;
                        do
                        {
                          if (v113 >= 1)
                          {
                            v129 = 0;
                            v130 = v126;
                            do
                            {
                              v131 = v125 + v127 * v595 + v129;
                              v132 = *&a4[v131];
                              v133 = v130;
                              v134 = v128;
                              v135 = v113;
                              do
                              {
                                v136 = *v133++;
                                v132 = v132 - (v136 * *&a4[v134]);
                                *&a4[v131] = v132;
                                ++v134;
                                --v135;
                              }

                              while (v135);
                              ++v129;
                              v130 += v113;
                            }

                            while (v129 != v113);
                          }

                          ++v127;
                          v128 += v595;
                        }

                        while (v127 != v114);
                      }

                      ++v120;
                      v126 += v115;
                    }

                    while (v120 != v122);
                  }

                  v120 = v122;
                  v118 = v121;
                }

                while (v121 != v117);
              }

              if (*(v10 + 168) < 1)
              {
                v216 = v574;
                goto LABEL_258;
              }

              v137 = 0;
              v138 = 4 * v595;
              v139 = v582;
              v140 = v577;
              v141 = v574;
              v563 = v117;
              do
              {
                v142 = *(v10 + 176);
                v143 = *(v142 + 4 * v137);
                v144 = v143 >= v141 && v143 < v117;
                if (!v144)
                {
                  v145 = v137 + 1;
                  goto LABEL_190;
                }

                if (v140 == 83)
                {
                  v146 = *(v139[9] + 4 * v137);
                  v147 = *(v139[10] + 4 * v137);
                  v148 = *(v139[11] + 4 * v137);
                }

                else
                {
                  v146 = 0;
                  v147 = 0;
                  v148 = 0;
                }

                v145 = v137 + 1;
                v149 = v146 + (*(v142 + 4 * (v137 + 1)) - v143) * v113;
                v150 = v149;
                if (v140 == 83)
                {
                  v150 = *(v139[8] + 4 * v137);
                }

                v151 = v113 * (*(*(v10 + 200) + 8 * v145) - *(*(v10 + 200) + 8 * v137));
                v152 = *(v139[14] + 8 * v137) + 8 + 4 * (v149 + v147 + v113 * (*(*(v10 + 184) + 8 * v145) - *(*(v10 + 184) + 8 * v137))) * v149 + 4 * (v151 + v148) * v149 + 4 * v149 + 4 * v147;
                if (v140 == 81)
                {
                  v153 = 0;
                }

                else
                {
                  v153 = v152;
                }

                v154 = &v153[v149];
                if (v148 <= 0)
                {
                  v154 = 0;
                }

                v565 = v154;
                if (v150)
                {
                  v581 = v148;
                  v571 = v146 + (*(v142 + 4 * (v137 + 1)) - v143) * v113;
                  v570 = v153;
                  if (v140 == 81)
                  {
                    if (v114 >= 1)
                    {
                      v155 = 0;
                      v156 = &a4[v143 * v113];
                      v157 = v578;
                      do
                      {
                        v158 = v156;
                        v159 = v157;
                        v160 = v150;
                        if (v150 >= 1)
                        {
                          do
                          {
                            v161 = *v158++;
                            *v159++ = v161;
                            --v160;
                          }

                          while (v160);
                        }

                        ++v155;
                        v157 += v150;
                        v156 = (v156 + v138);
                      }

                      while (v155 != v114);
                      goto LABEL_153;
                    }

LABEL_160:
                    cblas_strsm_NEWLAPACK();
                    v170 = v570;
                    v169 = v571;
                    v168 = v581;
                    v138 = 4 * v595;
                    LODWORD(v117) = v563;
                    v141 = v574;
                    v140 = v577;
                  }

                  else
                  {
                    if (v114 < 1)
                    {
                      goto LABEL_160;
                    }

                    v162 = 0;
                    v163 = v578;
                    do
                    {
                      if (v150 >= 1)
                      {
                        v164 = v153;
                        v165 = v163;
                        v166 = v150;
                        do
                        {
                          v167 = *v164++;
                          *v165++ = a4[v162 * v595 + v167];
                          --v166;
                        }

                        while (v166);
                      }

                      ++v162;
                      v163 += v150;
                    }

                    while (v162 != v114);
LABEL_153:
                    cblas_strsm_NEWLAPACK();
                    v140 = v577;
                    if (v577 == 81)
                    {
                      v141 = v574;
                      v138 = 4 * v595;
                      LODWORD(v117) = v563;
                      v168 = v581;
                      v169 = v571;
                      v170 = v570;
                      v171 = 0;
                      v172 = v578;
                      v173 = a4;
                      do
                      {
                        if (v150 >= 1)
                        {
                          v174 = &v173[*(*(v10 + 176) + 4 * v137) * v113];
                          v175 = v172;
                          v176 = v150;
                          do
                          {
                            v177 = *v175++;
                            *v174++ = v177;
                            --v176;
                          }

                          while (v176);
                        }

                        ++v171;
                        v173 += v595;
                        v172 += v150;
                      }

                      while (v171 != v114);
                    }

                    else
                    {
                      v141 = v574;
                      v138 = 4 * v595;
                      LODWORD(v117) = v563;
                      v168 = v581;
                      v169 = v571;
                      v170 = v570;
                      v178 = 0;
                      v179 = v578;
                      do
                      {
                        if (v150 >= 1)
                        {
                          v180 = v179;
                          v181 = v570;
                          v182 = v150;
                          do
                          {
                            v183 = *v180++;
                            v184 = v183;
                            v185 = *v181++;
                            a4[v178 * v595 + v185] = v184;
                            --v182;
                          }

                          while (v182);
                        }

                        ++v178;
                        v179 += v150;
                      }

                      while (v178 != v114);
                    }
                  }

                  v186 = v169 + v168 + v151;
                  if (v186 > v150)
                  {
                    v187 = (v578 + 4 * v150 * v114);
                    v585 = (v169 - v150);
                    v562 = v186;
                    if (v169 > v150)
                    {
                      cblas_sgemm_NEWLAPACK();
                      v186 = v562;
                      v170 = v570;
                      v169 = v571;
                      v168 = v581;
                      v138 = 4 * v595;
                      LODWORD(v117) = v563;
                      v141 = v574;
                      v140 = v577;
                    }

                    if (v186 > v169)
                    {
                      cblas_sgemm_NEWLAPACK();
                      v186 = v562;
                      v170 = v570;
                      v169 = v571;
                      v168 = v581;
                      v138 = 4 * v595;
                      LODWORD(v117) = v563;
                      v141 = v574;
                      v140 = v577;
                    }

                    if (v114 >= 1)
                    {
                      v188 = 0;
                      v189 = (*(v10 + 200) + 8 * v137);
                      v190 = *v189;
                      v191 = v189[1];
                      v192 = 4 * v186 - 4 * v150;
                      v193 = &v170[v150];
                      v194 = a4;
                      do
                      {
                        v195 = v188 * v595;
                        if (v169 <= v150)
                        {
                          v203 = 0;
                        }

                        else
                        {
                          v196 = v193;
                          v197 = v187;
                          v198 = v585;
                          do
                          {
                            v199 = *v197++;
                            v200 = v199;
                            v202 = *v196++;
                            v201 = v202;
                            if (v202 < 0)
                            {
                              v201 = -v201;
                            }

                            *&a4[v195 + v201] = v200 + *&a4[v195 + v201];
                            --v198;
                          }

                          while (v198);
                          v203 = v585;
                        }

                        v204 = v190;
                        if (v190 < v191)
                        {
                          do
                          {
                            if (v113 >= 1)
                            {
                              v205 = v203;
                              v206 = &v194[*(*(v10 + 208) + 4 * v204) * v113];
                              v203 += v113;
                              v207 = v113;
                              do
                              {
                                *v206 = v187[v205] + *v206;
                                ++v206;
                                ++v205;
                                --v207;
                              }

                              while (v207);
                            }

                            ++v204;
                          }

                          while (v204 != v191);
                        }

                        if (v168 >= 1)
                        {
                          v208 = &a4[v195];
                          v209 = v203;
                          v210 = v565;
                          v211 = v168;
                          do
                          {
                            v212 = *v210++;
                            *&v208[v212] = v187[v209++] + *&v208[v212];
                            --v211;
                          }

                          while (v211);
                        }

                        ++v188;
                        v187 = (v187 + v192);
                        v194 = (v194 + v138);
                      }

                      while (v188 != v114);
                    }
                  }

                  v139 = v582;
                  v145 = v137 + 1;
                }

LABEL_190:
                v213 = *(v10 + 168);
                v137 = v145;
              }

              while (v145 < v213);
              v214 = v597;
              v114 = v608;
              v116 = *(v10 + 112);
              v215 = (v116 + 4 * v561);
              v216 = *v215;
              if (v213 < 1)
              {
                v113 = v597;
              }

              else
              {
                v217 = v215[1];
                v575 = *v215;
                v564 = v217;
                do
                {
                  v218 = v213--;
                  v219 = *(v10 + 176);
                  v220 = *(v219 + 4 * v213);
                  if (v220 >= v216 && v220 < v217)
                  {
                    if (v140 == 83)
                    {
                      v222 = v582;
                      v223 = *(*(v582 + 80) + 4 * v213);
                      v224 = *(*(v582 + 88) + 4 * v213);
                      v225 = *(v219 + 4 * v218);
                      v226 = *(*(v582 + 72) + 4 * v213) + (v225 - v220) * v214;
                      v227 = *(*(v582 + 64) + 4 * v213);
                    }

                    else
                    {
                      v224 = 0;
                      v223 = 0;
                      v225 = *(v219 + 4 * v218);
                      v226 = (v225 - v220) * v214;
                      v227 = v226;
                      v222 = v582;
                    }

                    v228 = *(*(v222 + 112) + 8 * v213) + 8;
                    v229 = *(v10 + 184);
                    v230 = *(v229 + 8 * v218);
                    v231 = *(v229 + 8 * v213);
                    v232 = *(v10 + 200);
                    v233 = *(v232 + 8 * v218);
                    v234 = *(v232 + 8 * v213);
                    v235 = v223 + v226 + v214 * (v230 - v231);
                    v236 = v224 + v226 + v214 * (v233 - v234);
                    if (v140 == 81)
                    {
                      v237 = 0;
                      v238 = 0;
                    }

                    else
                    {
                      v237 = v228 + 4 * v226 * v235 + 4 * v226 * (v224 + v214 * (v233 - v234));
                      v238 = v237 + 4 * v226 + 4 * v223;
                    }

                    v239 = (v237 + 4 * v226);
                    if (v223 <= 0)
                    {
                      v239 = 0;
                    }

                    if (v227)
                    {
                      v568 = v218;
                      v572 = v236;
                      if (v114 >= 1)
                      {
                        v240 = 0;
                        v241 = v220 * v214;
                        v242 = v225 * v214;
                        v243 = &a4[v241];
                        v244 = v591;
                        v245 = v578;
                        do
                        {
                          if (v237)
                          {
                            if (v227 < 1)
                            {
                              LODWORD(v251) = 0;
                            }

                            else
                            {
                              v246 = v238;
                              v247 = v245;
                              v248 = v227;
                              do
                              {
                                v250 = *v246++;
                                v249 = v250;
                                if (v250 < 0)
                                {
                                  v249 = -v249;
                                }

                                *v247++ = a4[v240 * v595 + v249];
                                --v248;
                              }

                              while (v248);
                              LODWORD(v251) = v227;
                            }

                            if (v251 < v226)
                            {
                              v251 = v251;
                              do
                              {
                                v253 = *(v237 + 4 * v251);
                                if (v253 < 0)
                                {
                                  v253 = -v253;
                                }

                                v245[v251++] = *(v591 + 4 * v240 * v584 + 4 * v253);
                              }

                              while (v226 != v251);
                              LODWORD(v251) = v226;
                            }
                          }

                          else if (v241 >= v242)
                          {
                            LODWORD(v251) = 0;
                          }

                          else
                          {
                            v252 = 0;
                            do
                            {
                              v245[v252] = v243[v252];
                              ++v252;
                            }

                            while (v242 - v241 != v252);
                            LODWORD(v251) = v242 - v241;
                          }

                          v254 = v231;
                          if (v230 > v231)
                          {
                            do
                            {
                              if (v214 >= 1)
                              {
                                v255 = v251;
                                v256 = (v244 + 4 * *(*(v10 + 192) + 4 * v254) * v214);
                                LODWORD(v251) = v214 + v251;
                                v257 = v214;
                                do
                                {
                                  v258 = *v256++;
                                  v245[v255++] = v258;
                                  --v257;
                                }

                                while (v257);
                              }

                              ++v254;
                            }

                            while (v254 != v230);
                          }

                          if (v223 >= 1)
                          {
                            v259 = v251;
                            v260 = v239;
                            v261 = v223;
                            do
                            {
                              v262 = *v260++;
                              v245[v259++] = *(v591 + 4 * v240 * v584 + 4 * v262);
                              --v261;
                            }

                            while (v261);
                          }

                          ++v240;
                          v245 += v236;
                          v243 += v595;
                          v244 += __n;
                        }

                        while (v240 != v114);
                      }

                      if (v235 > v227)
                      {
                        cblas_sgemm_NEWLAPACK();
                      }

                      if (v227 >= 2)
                      {
                        cblas_strsm_NEWLAPACK();
                      }

                      if (v237)
                      {
                        v140 = v577;
                        v216 = v575;
                        v217 = v564;
                        v218 = v568;
                        if (v114 >= 1)
                        {
                          v263 = 0;
                          v264 = v578;
                          do
                          {
                            if (v227 >= 1)
                            {
                              v265 = v264;
                              v266 = v237;
                              v267 = v227;
                              do
                              {
                                v268 = *v265++;
                                v269 = v268;
                                v270 = *v266++;
                                *(v591 + 4 * v263 * v584 + 4 * v270) = v269;
                                --v267;
                              }

                              while (v267);
                            }

                            ++v263;
                            v264 += v572;
                          }

                          while (v263 != v114);
                        }
                      }

                      else
                      {
                        v140 = v577;
                        v216 = v575;
                        v217 = v564;
                        v218 = v568;
                        if (v114 >= 1)
                        {
                          v271 = 0;
                          v272 = *(v10 + 176);
                          v273 = *(v272 + 4 * v213);
                          v274 = v273 * v214;
                          v275 = *(v272 + 4 * v568);
                          v276 = ((v275 - v273) * v214);
                          v277 = (v591 + 4 * v274);
                          v278 = v578;
                          do
                          {
                            v279 = v277;
                            v280 = v278;
                            v281 = v276;
                            if (v274 < v275 * v214)
                            {
                              do
                              {
                                v282 = *v280++;
                                *v279++ = v282;
                                --v281;
                              }

                              while (v281);
                            }

                            ++v271;
                            v278 += v572;
                            v277 = (v277 + __n);
                          }

                          while (v271 != v114);
                        }
                      }
                    }
                  }
                }

                while (v218 > 1);
                v116 = *(v10 + 112);
                v216 = *(v116 + 4 * v561);
                v113 = v597;
                LODWORD(v114) = v608;
              }

LABEL_258:
              if (v114 >= 1)
              {
                v283 = 4 * (*(v116 + 4 * v560) - v216) * v113;
                v284 = v114;
                v285 = v216 * v113;
                do
                {
                  memcpy(&a4[v285], (v591 + v285 * 4), v283);
                  v285 += v595;
                  --v284;
                }

                while (v284);
              }

              v115 = 4 * v559;
              if (v560 <= 1)
              {
LABEL_430:
                v487 = *(v10 + 96);
                if (v113 == 1)
                {
                  if (v487 >= 1)
                  {
                    v488 = *(v10 + 120);
                    v489 = v608;
                    v490 = *(v582 + 40);
                    v491 = *(v488 + 8 * v487);
                    v492 = 4 * v487 - 4;
                    v493 = 4 * v595;
                    do
                    {
                      v494 = *(v488 + 8 * (v487 - 1));
                      v495 = v494 + 1;
                      if (v494 + 1 < v491)
                      {
                        v497 = *(v10 + 128);
                        v496 = *(v10 + 136);
                        do
                        {
                          if (v489 >= 1)
                          {
                            v498 = *(v496 + 4 * *(v497 + 4 * v495));
                            v499 = -*(v490 + 4 * v495);
                            v500 = a4;
                            v501 = v489;
                            do
                            {
                              *(v500 + v492) = *(v500 + v492) + (v499 * *&v500[v498]);
                              v500 = (v500 + v493);
                              --v501;
                            }

                            while (v501);
                          }

                          ++v495;
                        }

                        while (v495 != v491);
                      }

                      v491 = v494;
                      if (v489 >= 1)
                      {
                        v502 = *(v490 + 4 * v494);
                        v503 = a4;
                        v504 = v489;
                        do
                        {
                          *(v503 + v492) = v502 * *(v503 + v492);
                          v503 = (v503 + v493);
                          --v504;
                        }

                        while (v504);
                      }

                      v492 -= 4;
                      v144 = v487-- < 2;
                    }

                    while (!v144);
                  }
                }

                else if (v487 >= 1)
                {
                  v505 = 4 * v559;
                  do
                  {
                    v506 = v487 - 1;
                    v507 = *(v10 + 120);
                    v508 = *(v507 + 8 * v487);
                    v509 = *(v507 + 8 * (v487 - 1)) + 1;
                    v510 = v597;
                    if (v509 < v508)
                    {
                      v511 = *(v10 + 128);
                      v512 = *(v10 + 136);
                      v513 = v608;
                      v514 = *(v582 + 40) + v505 * v509;
                      do
                      {
                        if (v513 >= 1)
                        {
                          v515 = 0;
                          v516 = *(v512 + 4 * *(v511 + 4 * v509)) * v510;
                          do
                          {
                            if (v510 >= 1)
                            {
                              v517 = 0;
                              v518 = v514;
                              do
                              {
                                v519 = v510 * v506 + v515 * v595 + v517;
                                v520 = *&a4[v519];
                                v521 = v518;
                                v522 = v516;
                                v523 = v510;
                                do
                                {
                                  v524 = *v521++;
                                  v520 = v520 - (v524 * *&a4[v522]);
                                  *&a4[v519] = v520;
                                  ++v522;
                                  --v523;
                                }

                                while (v523);
                                ++v517;
                                v518 += v510;
                              }

                              while (v517 != v510);
                            }

                            ++v515;
                            v516 += v595;
                          }

                          while (v515 != v513);
                        }

                        ++v509;
                        v514 += v505;
                      }

                      while (v509 != v508);
                    }

                    v525 = *(v582 + 48) + 4 * v510 * v506;
                    sgetrs_NEWLAPACK();
                    v144 = v487-- <= 1;
                  }

                  while (!v144);
                }

                v526 = *(v582 + 96);
                v527 = v608;
                if (v526)
                {
                  if (v608 >= 1)
                  {
                    v528 = 0;
                    v529 = 0;
                    v530 = v597;
                    do
                    {
                      if (v584 >= 1)
                      {
                        v531 = 0;
                        v532 = *(v10 + 136);
                        v533 = *(v558 + 16);
                        v534 = *(v558 + 8);
                        do
                        {
                          v535 = v531 + *(v532 + 4 * (v531 / v530)) * v530 - v531 / v530 * v530;
                          v536 = *&a4[v535 + v528] * *(v526 + 4 * v535);
                          if (*(v558 + 12))
                          {
                            v537 = v531;
                          }

                          else
                          {
                            v537 = v529;
                          }

                          if (*(v558 + 12))
                          {
                            v538 = v529;
                          }

                          else
                          {
                            v538 = v531;
                          }

                          *(v533 + 4 * (v538 + v537 * v534)) = v536;
                          ++v531;
                        }

                        while (v584 != v531);
                      }

                      ++v529;
                      v528 += v595;
                    }

                    while (v529 != v527);
                  }
                }

                else if (v608 >= 1)
                {
                  v539 = 0;
                  v540 = 0;
                  v541 = v597;
                  do
                  {
                    if (v584 >= 1)
                    {
                      v542 = 0;
                      v543 = *(v10 + 136);
                      v544 = *(v558 + 16);
                      v545 = *(v558 + 8);
                      do
                      {
                        if (*(v558 + 12))
                        {
                          v546 = v542;
                        }

                        else
                        {
                          v546 = v540;
                        }

                        if (*(v558 + 12))
                        {
                          v547 = v540;
                        }

                        else
                        {
                          v547 = v542;
                        }

                        *(v544 + 4 * (v547 + v546 * v545)) = a4[v539 + v542 + *(v543 + 4 * (v542 / v541)) * v541 - v542 / v541 * v541];
                        ++v542;
                      }

                      while (v584 != v542);
                    }

                    ++v540;
                    v539 += v595;
                  }

                  while (v540 != v527);
                }

                goto LABEL_501;
              }
            }
          }
        }

LABEL_502:
        __break(1u);
      }

      v47 = 4;
      if (*(a3 + 12))
      {
        v47 = 0;
      }

      v48 = *(a3 + v47);
      v594 = v48;
      v596 = *(a1 + 24);
      v49 = *(v10 + 56);
      v593 = v49;
      v50 = (&a4[v49 * v48 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
      if (v9 < v50)
      {
        goto LABEL_502;
      }

      v583 = ((v50 + 4 * v49 * v48 + 7) & 0xFFFFFFFFFFFFFFF8);
      v567 = v9 - v583;
      if (v9 < v583)
      {
        goto LABEL_502;
      }

      v51 = *(v11 + 96);
      if (v51)
      {
        if (v48 >= 1)
        {
          v52 = 0;
          do
          {
            if (v49 >= 1)
            {
              v53 = 0;
              v54 = *(v10 + 136);
              v55 = *(a3 + 16);
              v56 = *(a3 + 8);
              do
              {
                if (*(a3 + 12))
                {
                  v58 = v53;
                }

                else
                {
                  v58 = v52;
                }

                if (*(a3 + 12))
                {
                  v59 = v52;
                }

                else
                {
                  v59 = v53;
                }

                v57 = v53 % v12 + *(v54 + 4 * (v53 / v12)) * v12;
                *&a4[v57 + v52 * v49] = *(v55 + 4 * (v59 + v58 * v56)) * *(v51 + 4 * v57);
                ++v53;
              }

              while (v49 != v53);
            }

            ++v52;
          }

          while (v52 != v48);
        }
      }

      else if (v48 >= 1)
      {
        v286 = 0;
        do
        {
          v287 = 0;
          do
          {
            if (v49 >= 1)
            {
              v288 = 0;
              v289 = *(v10 + 136);
              v290 = *(a3 + 16);
              v291 = *(a3 + 8);
              do
              {
                if (*(a3 + 12))
                {
                  v292 = v288;
                }

                else
                {
                  v292 = v287;
                }

                if (*(a3 + 12))
                {
                  v293 = v287;
                }

                else
                {
                  v293 = v288;
                }

                a4[(v288 % v12 + v287 * v49 + *(v289 + 4 * (v288 / v12)) * v12)] = *(v290 + 4 * (v293 + v292 * v291));
                ++v288;
              }

              while (v49 != v288);
            }

            ++v287;
          }

          while (v287 != v48);
          ++v286;
        }

        while (v286 != v48);
      }

      v294 = *(v10 + 96);
      v576 = (&a4[v49 * v48 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
      if (v12 == 1)
      {
        if (v294 >= 1)
        {
          v295 = 0;
          v296 = *(v10 + 120);
          v297 = *(v582 + 40);
          v298 = *v296;
          v299 = 4 * v49;
          v300 = a4;
          do
          {
            if (v48 >= 1)
            {
              v301 = *(v297 + 4 * v298);
              v302 = v300;
              v303 = v48;
              do
              {
                *v302 = v301 * *v302;
                v302 = (v302 + v299);
                --v303;
              }

              while (v303);
            }

            v304 = v296[++v295];
            v305 = v298 + 1;
            if (v305 < v304)
            {
              v307 = *(v10 + 128);
              v306 = *(v10 + 136);
              do
              {
                if (v48 >= 1)
                {
                  v308 = 0;
                  v309 = -*(v297 + 4 * v305);
                  v310 = &a4[*(v306 + 4 * *(v307 + 4 * v305))];
                  v311 = v48;
                  do
                  {
                    *(v310 + v308) = *(v310 + v308) + (v309 * *(v300 + v308));
                    v308 += v299;
                    --v311;
                  }

                  while (v311);
                }

                ++v305;
              }

              while (v305 != v304);
            }

            ++v300;
            v298 = v304;
          }

          while (v295 != v294);
        }

        v12 = 1;
      }

      else
      {
        v312 = v582;
        if (v294 >= 1)
        {
          v313 = 0;
          v314 = **(v10 + 120);
          v315 = 4 * v559;
          do
          {
            v317 = v312 + 40;
            v316 = *(v312 + 40);
            v318 = *(v317 + 8) + 4 * v596 * v313;
            LODWORD(v597) = 0;
            sgetrs_NEWLAPACK();
            v319 = v313 + 1;
            v320 = *(*(v10 + 120) + 8 * (v313 + 1));
            v321 = v314 + 1;
            if (v314 + 1 < v320)
            {
              v322 = *(v10 + 128);
              v323 = *(v10 + 136);
              v324 = v596 * v313;
              v325 = *(v582 + 40) + v315 * v321;
              do
              {
                if (v594 >= 1)
                {
                  v326 = 0;
                  v327 = *(v323 + 4 * *(v322 + 4 * v321)) * v596;
                  do
                  {
                    if (v596 >= 1)
                    {
                      v328 = 0;
                      v329 = v325;
                      do
                      {
                        v330 = v329;
                        v331 = v327;
                        v332 = v596;
                        do
                        {
                          v333 = *v330++;
                          *&a4[v331] = *&a4[v331] - (v333 * *&a4[v324 + v326 * v49 + v328]);
                          ++v331;
                          --v332;
                        }

                        while (v332);
                        ++v328;
                        v329 += v596;
                      }

                      while (v328 != v596);
                    }

                    ++v326;
                    v327 += v49;
                  }

                  while (v326 != v594);
                }

                ++v321;
                v325 += v315;
              }

              while (v321 != v320);
            }

            v314 = v320;
            v313 = v319;
            v312 = v582;
          }

          while (v319 < *(v10 + 96));
          v12 = v596;
        }
      }

      if (*(v10 + 104) >= 1)
      {
        _X24 = 0;
        v335 = v594;
        v336 = *(v10 + 112);
        __na = *v336;
        v592 = 4 * v559;
        v337 = MEMORY[0x277D85FA0];
        v338 = 0;
        v566 = v49;
        do
        {
          v339 = *(v10 + 168);
          if (v567 < 8 * v339)
          {
            goto LABEL_502;
          }

          v340 = v338;
          v586 = v336[v338 + 1];
          v341 = &v583[8 * v339];
          bzero(v583, 8 * v339);
          v579 = v341;
          v342 = &v341[4 * *(v10 + 168) + 7] & 0xFFFFFFFFFFFFFFF8;
          if (v569 < v342)
          {
            goto LABEL_502;
          }

          v343 = v342 + 40 * *(v10 + 336);
          v344 = v582;
          if (v343 > v569)
          {
            goto LABEL_502;
          }

          v345 = (v343 + *v337 - 1) & -*v337;
          v346 = atomic_load((v582 + 136));
          v347 = *(v10 + 52);
          v348 = *(v10 + 56);
          v573 = v340;
          if (v347 < 2)
          {
            v375 = ((v345 + 4 * v348 + 7) & 0xFFFFFFFFFFFFFFF8);
            if (v569 < v375)
            {
              goto LABEL_502;
            }

            v376 = atomic_load((v582 + 136));
            v377 = __na;
            v378 = v586;
            if (v569 < (&v375[4 * v376 * v335 + 7] & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_502;
            }

            v379 = *(v10 + 168);
            if (v379 >= 1)
            {
              for (i = 0; i < v379; ++i)
              {
                v381 = *(*(v10 + 176) + 4 * i);
                if (v381 >= v377 && v381 < v378)
                {
                  sub_2367D3C84(i, v577, v12, v10, v344, v335, a4, v593, v583, v579, v375, v345);
                  v378 = v586;
                  v377 = __na;
                  v344 = v582;
                  v379 = *(v10 + 168);
                }
              }
            }
          }

          else
          {
            v349 = (*v337 + 4 * (v348 + v346 * v335) + 7) & -*v337;
            v611 = 0u;
            v612 = 0u;
            v610 = 0u;
            v608 = 0u;
            v609 = 0u;
            LODWORD(v608) = v347;
            atomic_store(0, &v608 + 1);
            atomic_store(0, (&v608 | 0xC));
            atomic_store(0, &v609);
            v350 = v610;
            do
            {
              _X2 = 0;
              _X7 = *(&v610 + 1);
              __asm { CASPAL          X6, X7, X2, X3, [X10] }

              _ZF = _X6 == v350;
              v350 = _X6;
            }

            while (!_ZF);
            *&v611 = v349;
            *(&v611 + 1) = v345;
            v603 = 0;
            v597 = v577;
            v598 = v10;
            v599 = v12;
            v600 = v582;
            *&v601 = v583;
            *(&v601 + 1) = v579;
            v602 = v335;
            v604 = a4;
            v605 = 0;
            v606 = v593;
            v607 = v342;
            *&v612 = &v597;
            v358 = __na;
            v359 = v586;
            if (*(v10 + 336) >= 1)
            {
              v360 = 0;
              do
              {
                v361 = *(*(v10 + 176) + 4 * *(*(v10 + 344) + 4 * v360));
                if (v361 >= v358 && v361 < v359)
                {
                  v363 = *(v10 + 368) + 8 * v360;
                  v364 = *(v363 + 8);
                  v365 = *v363;
                  v366 = &v607[40 * v360];
                  v367 = v364 - v365;
                  atomic_store(v367, v366);
                  *(v366 + 2) = v360;
                  *(v366 + 2) = sub_2367D3AC8;
                  if (!v367)
                  {
                    _X0 = 0;
                    _X1 = 0;
                    __asm { CASP            X0, X1, X0, X1, [X10] }

                    while (1)
                    {
                      *(v366 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v366 + 4) = 0;
                      _X2 = _X0 & 1 | v366;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }

                      if (_X4 == _X0)
                      {
                        break;
                      }

                      _X1 = 0;
                      __asm { CASP            X0, X1, X24, X25, [X10] }
                    }

                    if (_X0)
                    {
                      __ulock_wake();
                      v359 = v586;
                      v358 = __na;
                    }
                  }
                }

                ++v360;
              }

              while (v360 < *(v10 + 336));
            }

            sub_2366FCD2C(&v608, 1);
            v344 = v582;
          }

          if (v567 < 40 * *(v10 + 336))
          {
            goto LABEL_502;
          }

          v383 = v594;
          v384 = (*(v10 + 112) + 4 * v573);
          v386 = *v384;
          v385 = v384[1];
          v387 = (&v583[40 * *(v10 + 336) - 1 + *MEMORY[0x277D85FA0]] & -*MEMORY[0x277D85FA0]);
          v388 = atomic_load((v344 + 140));
          __nb = v383;
          if (*(v10 + 52) < 2)
          {
            v409 = atomic_load((v344 + 140));
            if (v569 < ((&v387[v409 * v594 + 1] + 3) & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_502;
            }

            v410 = *(v10 + 168);
            v411 = v577;
            if (v410 >= 1)
            {
              do
              {
                v412 = *(*(v10 + 176) + 4 * v410 - 4);
                if (v412 >= v386 && v412 < v385)
                {
                  sub_2367D49E0(v410 - 1, v411, v596, v10, v582, __nb, a4, v593, v576, v49, v387);
                  v411 = v577;
                }

                --v410;
              }

              while ((v410 + 1) > 1);
            }
          }

          else
          {
            v389 = v388 * v594;
            v390 = *MEMORY[0x277D85FA0];
            v611 = 0u;
            v612 = 0u;
            v580 = (v390 + 4 * v389 - 1) & -v390;
            v610 = 0u;
            v608 = 0u;
            v609 = 0u;
            LODWORD(v608) = sub_2366FCCD0(0);
            atomic_store(0, &v608 + 1);
            atomic_store(0, (&v608 | 0xC));
            atomic_store(0, &v609);
            v391 = v610;
            do
            {
              _X2 = 0;
              _X5 = *(&v610 + 1);
              __asm { CASPAL          X4, X5, X2, X3, [X8] }

              _ZF = _X4 == v391;
              v391 = _X4;
            }

            while (!_ZF);
            *&v611 = v580;
            *(&v611 + 1) = v387;
            v597 = v577;
            v598 = v10;
            v599 = v596;
            v600 = v582;
            v601 = 0uLL;
            v602 = __nb;
            v603 = v576;
            v604 = a4;
            v605 = v49;
            v606 = v593;
            v607 = v583;
            *&v612 = &v597;
            v395 = *(v10 + 336);
            if (v395 >= 1)
            {
              do
              {
                v396 = v395--;
                v397 = *(*(v10 + 176) + 4 * *(*(v10 + 344) + 4 * v395));
                if (v397 >= v386 && v397 < v385)
                {
                  v399 = *(v10 + 352);
                  v400 = *(v399 + 8 * v396);
                  v401 = *(v399 + 8 * v395);
                  v402 = &v607[40 * v395];
                  LODWORD(v400) = v400 - v401;
                  atomic_store(v400, v402);
                  *(v402 + 2) = v395;
                  *(v402 + 2) = sub_2367D4844;
                  if (!v400)
                  {
                    do
                    {
                      _X0 = 0;
                      _X1 = 0;
                      __asm { CASP            X0, X1, X0, X1, [X10] }

                      *(v402 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v402 + 4) = 0;
                      _X2 = _X0 & 1 | v402;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }
                    }

                    while (_X4 != _X0);
                    if (_X0)
                    {
                      __ulock_wake();
                    }
                  }
                }
              }

              while (v396 > 1);
            }

            sub_2366FCD2C(&v608, 1);
          }

          v336 = *(v10 + 112);
          v414 = v336[v573];
          v335 = v594;
          v12 = v596;
          v338 = v573 + 1;
          if (v594 >= 1)
          {
            __nc = 4 * (v336[v338] - v414) * v596;
            v415 = v596 * v414;
            v416 = v594;
            do
            {
              memcpy(&a4[v415], (v576 + v415 * 4), __nc);
              v415 += v593;
              --v416;
            }

            while (v416);
            v336 = *(v10 + 112);
            v414 = v336[v573];
            v49 = v566;
            v338 = v573 + 1;
          }

          __na = v336[v338];
          if (v414 < __na)
          {
            v417 = *(v10 + 120);
            v418 = v414;
            v419 = *(v417 + 8 * v414);
            do
            {
              v420 = v418 + 1;
              v421 = *(v417 + 8 * (v418 + 1));
              if (v419 < v421)
              {
                v422 = *(v10 + 128);
                v423 = *(v10 + 136);
                v424 = v596 * v418;
                v425 = *(v582 + 40) + v592 * v419;
                do
                {
                  if (v594 >= 1)
                  {
                    v426 = 0;
                    v427 = *(v423 + 4 * *(v422 + 4 * v419)) * v596;
                    do
                    {
                      if (v596 >= 1)
                      {
                        v428 = 0;
                        v429 = v425;
                        do
                        {
                          v430 = v429;
                          v431 = v427;
                          v432 = v596;
                          do
                          {
                            v433 = *v430++;
                            *&a4[v431] = *&a4[v431] - (v433 * *&a4[v424 + v426 * v593 + v428]);
                            ++v431;
                            --v432;
                          }

                          while (v432);
                          ++v428;
                          v429 += v596;
                        }

                        while (v428 != v596);
                      }

                      ++v426;
                      v427 += v593;
                    }

                    while (v426 != v594);
                  }

                  ++v419;
                  v425 += v592;
                }

                while (v419 != v421);
              }

              v419 = v421;
              v418 = v420;
            }

            while (v420 != __na);
          }

          v337 = MEMORY[0x277D85FA0];
        }

        while (v338 < *(v10 + 104));
      }

      if (v12 == 1)
      {
        v434 = *(v10 + 100);
        if (v434 >= 1)
        {
          v435 = *(v10 + 60);
          v436 = v435 - v434;
          v437 = *(v10 + 120);
          v438 = *(v582 + 40);
          v439 = v436;
          v440 = *(v437 + 8 * v436);
          v441 = &a4[v436];
          v442 = 4 * v593;
          do
          {
            if (v594 >= 1)
            {
              v443 = *(v438 + 4 * v440);
              v444 = v441;
              v445 = v594;
              do
              {
                *v444 = v443 * *v444;
                v444 = (v444 + v442);
                --v445;
              }

              while (v445);
            }

            ++v439;
            v446 = *(v437 + 8 * v439);
            v447 = v440 + 1;
            if (v447 < v446)
            {
              v449 = *(v10 + 128);
              v448 = *(v10 + 136);
              do
              {
                if (v594 >= 1)
                {
                  v450 = 0;
                  v451 = -*(v438 + 4 * v447);
                  v452 = &a4[*(v448 + 4 * *(v449 + 4 * v447))];
                  v453 = v594;
                  do
                  {
                    *(v452 + v450) = *(v452 + v450) + (v451 * *(v441 + v450));
                    v450 += v442;
                    --v453;
                  }

                  while (v453);
                }

                ++v447;
              }

              while (v447 != v446);
            }

            ++v441;
            v440 = v446;
          }

          while (v439 < v435);
        }
      }

      else
      {
        v454 = *(v10 + 100);
        if (v454 >= 1)
        {
          v455 = *(v10 + 96);
          v456 = *(v10 + 60) - v454;
          v457 = *(*(v10 + 120) + 8 * v456);
          v458 = 4 * v559;
          do
          {
            v459 = *(v582 + 40);
            v460 = *(v582 + 48) + 4 * v596 * v455;
            LODWORD(v597) = 0;
            sgetrs_NEWLAPACK();
            if (v597)
            {
              goto LABEL_502;
            }

            v461 = v456 + 1;
            v462 = *(*(v10 + 120) + 8 * (v456 + 1));
            v463 = v457 + 1;
            if (v457 + 1 < v462)
            {
              v464 = *(v10 + 128);
              v465 = *(v10 + 136);
              v466 = v596 * v456;
              v467 = *(v582 + 40) + v458 * v463;
              do
              {
                if (v594 >= 1)
                {
                  v468 = 0;
                  v469 = *(v465 + 4 * *(v464 + 4 * v463)) * v596;
                  do
                  {
                    if (v596 >= 1)
                    {
                      v470 = 0;
                      v471 = v467;
                      do
                      {
                        v472 = v471;
                        v473 = v469;
                        v474 = v596;
                        do
                        {
                          v475 = *v472++;
                          *&a4[v473] = *&a4[v473] - (v475 * *&a4[v466 + v468 * v593 + v470]);
                          ++v473;
                          --v474;
                        }

                        while (v474);
                        ++v470;
                        v471 += v596;
                      }

                      while (v470 != v596);
                    }

                    ++v468;
                    v469 += v593;
                  }

                  while (v468 != v594);
                }

                ++v463;
                v467 += v458;
              }

              while (v463 != v462);
            }

            ++v455;
            v457 = v462;
            v456 = v461;
          }

          while (v461 < *(v10 + 60));
        }
      }

      v476 = *(v582 + 104);
      if (v476)
      {
        if (v594 >= 1)
        {
          v477 = 0;
          for (j = 0; j != v594; ++j)
          {
            if (v49 >= 1)
            {
              v479 = 0;
              v480 = *(v10 + 144);
              v481 = *(v558 + 16);
              v482 = *(v558 + 8);
              do
              {
                v483 = v479 + *(v480 + 4 * (v479 / v596)) * v596 - v479 / v596 * v596;
                v484 = *&a4[v483 + v477] * *(v476 + 4 * v483);
                if (*(v558 + 12))
                {
                  v485 = v479;
                }

                else
                {
                  v485 = j;
                }

                if (*(v558 + 12))
                {
                  v486 = j;
                }

                else
                {
                  v486 = v479;
                }

                *(v481 + 4 * (v486 + v485 * v482)) = v484;
                ++v479;
              }

              while (v49 != v479);
            }

            v477 += v593;
          }
        }
      }

      else if (v594 >= 1)
      {
        v548 = 0;
        for (k = 0; k != v594; ++k)
        {
          if (v49 >= 1)
          {
            v550 = 0;
            v551 = *(v10 + 144);
            v552 = *(v558 + 16);
            v553 = *(v558 + 8);
            do
            {
              if (*(v558 + 12))
              {
                v554 = v550;
              }

              else
              {
                v554 = k;
              }

              if (*(v558 + 12))
              {
                v555 = k;
              }

              else
              {
                v555 = v550;
              }

              *(v552 + 4 * (v555 + v554 * v553)) = a4[v548 + v550 + *(v551 + 4 * (v550 / v596)) * v596 - v550 / v596 * v596];
              ++v550;
            }

            while (v49 != v550);
          }

          v548 += v593;
        }
      }

      goto LABEL_501;
    }

    if (v8 == 40)
    {
      v31 = *(a1 + 24);
      v32 = *(a1 + 4);
      v33 = *(a1 + 20);
      v34 = 12;
      if ((v33 ^ v32))
      {
        v35 = 16;
      }

      else
      {
        v35 = 12;
      }

      if (((v33 ^ v32) & 1) == 0)
      {
        v34 = 16;
      }

      v36 = *(a1 + v35) * v31;
      v37 = *(a1 + v34) * v31;
      if (v36 <= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v36;
      }

      v39 = 4;
      if (*(a3 + 12))
      {
        v39 = 0;
      }

      v40 = *(a3 + v39);
      v41 = *(a1 + 32);
      v42 = *(a1 + 80);
      v597 = __PAIR64__(v40, v38);
      v599 = a4;
      v598 = v38;
      v44 = v33 & 1 ^ *(v41 + 52);
      v45 = v32 & 1;
      if (a2)
      {
        v46 = a2;
      }

      else
      {
        v46 = a3;
      }

      sub_2367CDB58(v46, &v597);
      if (v44 == v45)
      {
        sub_2367D0E40(*(v41 + 56), v41, v42, &v597, a3, &a4[v40 * v38], v569);
        sub_2367D12EC(v41, v42, a3, a4);
      }

      else
      {
        v556 = &a4[v40 * v38];
        sub_2367D1514(v41, v42, &v597, v556);
        sub_2367D1804(*(v41 + 56), v41, v42, &v597, a3, v556);
      }

LABEL_501:
      v557 = *MEMORY[0x277D85DE8];
      return;
    }

    v60 = *(a1 + 32);
    v61 = *(a1 + 80);
    if (a2)
    {
      sub_2367CDB58(a2, a3);
    }

    sub_2367D1514(v60, v61, a3, a4);
    v62 = *MEMORY[0x277D85DE8];

    sub_2367D12EC(v60, v61, a3, a4);
  }
}

int *sub_2367D0250(int *result, uint64_t a2, int *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (*(a4 + 12))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  if (*(a4 + 12))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = *(a4 + v5);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(a4 + v6);
      while (v9 < 1)
      {
LABEL_30:
        if (++v8 == v7)
        {
          return result;
        }
      }

      v10 = 0;
      while (a2)
      {
        v11 = *(v4 + 2);
        if (*(a2 + v10) != 1)
        {
          goto LABEL_23;
        }

        v12 = v4[2];
        v13 = v8 + v12 * v10;
        v14 = v10 + v8 * v12;
        if (v4[3])
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        v16 = *(v11 + 4 * v15);
        v17 = *(a4 + 16);
        v18 = *(a4 + 8);
        if (*(a4 + 12))
        {
          goto LABEL_27;
        }

        v19 = v10 + v18 * v8;
LABEL_29:
        *(v17 + 4 * v19) = v16;
        if (v9 == ++v10)
        {
          goto LABEL_30;
        }
      }

      v11 = *(v4 + 2);
LABEL_23:
      v20 = v4[2];
      v21 = v8 + v20 * v10;
      v22 = v10 + v8 * v20;
      if (v4[3])
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v16 = *&result[v10] * *(v11 + 4 * v23);
      v17 = *(a4 + 16);
      v18 = *(a4 + 8);
      if ((*(a4 + 12) & 1) == 0)
      {
        v19 = v10 + v8 * v18;
        goto LABEL_29;
      }

LABEL_27:
      v19 = v8 + v18 * v10;
      goto LABEL_29;
    }
  }

  else if (a3)
  {
    return sub_2367CDB58(a3, a4);
  }

  return result;
}

uint64_t sub_2367D0340(uint64_t result, uint64_t a2, void *a3, uint64_t a4, _DWORD *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  if (*(a2 + 64) >= 1)
  {
    v8 = 0;
    v9 = *(a4 + v5);
    v55 = result;
    v56 = result - 3;
    do
    {
      v10 = v8;
      if (result == 4)
      {
        v11 = atomic_load((a3[6] + 4 * v8));
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 120);
      ++v8;
      v13 = *(v12 + 8 * (v10 + 1));
      v14 = *(v12 + 8 * v10);
      v15 = *(*(a2 + 88) + 4 * (v10 + 1)) - *(*(a2 + 88) + 4 * v10) + v11;
      v16 = v15;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v10);
      }

      v17 = 2 * v15;
      if (v56 >= 2)
      {
        v17 = 0;
      }

      v61 = v17;
      if (v16)
      {
        v18 = v11 + v13 - v14;
        v58 = v18;
        v59 = v10 + 1;
        v57 = *(a3[5] + 8 * v10);
        v54 = v18;
        if (v9 <= 0)
        {
          cblas_strsm_NEWLAPACK();
          v8 = v10 + 1;
          result = v55;
        }

        else
        {
          v19 = 0;
          v20 = 4 * v16;
          v53 = 4 * v15 * v18;
          v21 = *(a3[5] + 8 * v10) + v53 + 4 * v17 + 8;
          v22 = a5;
          do
          {
            if (v16 >= 1)
            {
              v23 = *(a4 + 16);
              v24 = v16;
              v25 = v21;
              v26 = v22;
              do
              {
                if (*(a4 + 12))
                {
                  v27 = v19 + *(a4 + 8) * *v25;
                }

                else
                {
                  v27 = *v25 + *(a4 + 8) * v19;
                }

                *v26++ = *(v23 + 4 * v27);
                ++v25;
                --v24;
              }

              while (v24);
            }

            ++v19;
            v22 = (v22 + v20);
          }

          while (v19 != v9);
          cblas_strsm_NEWLAPACK();
          v28 = 0;
          v29 = a5;
          result = v55;
          v8 = v10 + 1;
          do
          {
            if (v16 >= 1)
            {
              v30 = *(a4 + 16);
              v31 = v16;
              v32 = (v57 + v53 + 4 * v61 + 8);
              v33 = v29;
              do
              {
                if (*(a4 + 12))
                {
                  v34 = v28 + *(a4 + 8) * *v32;
                }

                else
                {
                  v34 = *v32 + *(a4 + 8) * v28;
                }

                v35 = *v33++;
                *(v30 + 4 * v34) = v35;
                ++v32;
                --v31;
              }

              while (v31);
            }

            ++v28;
            v29 = (v29 + v20);
          }

          while (v28 != v9);
        }

        v36 = v58 - v16;
        if (v58 > v16)
        {
          cblas_sgemm_NEWLAPACK();
          v8 = v10 + 1;
          result = v55;
          if (v9 >= 1)
          {
            v37 = 0;
            v38 = 0;
            v39 = *(a2 + 120);
            v40 = *(v39 + 8 * v10) - *(*(a2 + 88) + 4 * v10) + *(*(a2 + 88) + 4 * v59);
            v41 = v15 - v16;
            v42 = *(v39 + 8 * v59);
            do
            {
              if (v15 > v16)
              {
                v43 = *(a4 + 16);
                v44 = v37;
                v45 = (v57 + 4 * v15 * v54 + 4 * v61 + 4 * v16 + 8);
                v46 = v16;
                do
                {
                  if (*(a4 + 12))
                  {
                    v47 = v38 + *(a4 + 8) * *v45;
                  }

                  else
                  {
                    v47 = *v45 + *(a4 + 8) * v38;
                  }

                  *(v43 + 4 * v47) = *&a5[v16 * v9 + v44] + *(v43 + 4 * v47);
                  ++v46;
                  ++v45;
                  ++v44;
                }

                while (v46 < v15);
              }

              if (v40 < v42)
              {
                v48 = &a5[v16 * v9 + v41];
                v49 = *(a4 + 16);
                v50 = v40;
                do
                {
                  if (*(a4 + 12))
                  {
                    v51 = v38 + *(a4 + 8) * *(*(a2 + 128) + 4 * v50);
                  }

                  else
                  {
                    v51 = *(*(a2 + 128) + 4 * v50) + *(a4 + 8) * v38;
                  }

                  v52 = *v48++;
                  *(v49 + 4 * v51) = v52 + *(v49 + 4 * v51);
                  ++v50;
                }

                while (v50 < v42);
              }

              ++v38;
              v37 += v36;
              v41 += v36;
            }

            while (v38 != v9);
          }
        }
      }
    }

    while (v8 < *(a2 + 64));
  }

  return result;
}