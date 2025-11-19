SparseIterativeStatus_t _SparseGMRESSolve_Double(SparseGMRESOptions *options, DenseMatrix_Double *X, DenseMatrix_Double *B, void *ApplyOperator, const SparseOpaquePreconditioner_Double *Preconditioner)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = 4;
  if (*&X->attributes)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(&X->rowCount + v8);
  if (*&X->attributes)
  {
    v7 = 0;
  }

  v10 = *(&X->rowCount + v7);
  variant = options->variant;
  if (Preconditioner || variant != 2)
  {
    if (options->nvec)
    {
      nvec = options->nvec;
    }

    else
    {
      nvec = 16;
    }

    v14 = variant - 1;
    v15 = v10 * v9;
    if (variant == 2)
    {
      v16 = v15 * nvec;
    }

    else
    {
      v16 = 0;
    }

    v17 = 5 * v10 + 8 * (v16 + v10 + v15 + v10 + v10 * (nvec + v9) * (nvec + 3));
    if (v14 > 1)
    {
      v17 = v10 + 8 * (((nvec + 3) * nvec + (2 * nvec + 2) * v9) * v10 + (v10 + v10 * v9));
    }

    v18 = v17 + 24;
    v19 = malloc_type_malloc(v17 + 24, 0x100004077774924uLL);
    if (v19)
    {
      v20 = v19 + v18;
      *&R.attributes = 0;
      R.rowCount = v9;
      R.columnCount = v10;
      R.columnStride = v9;
      v21 = ((&v19[v15] + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v20 < v21 || (v53 = v19, R.data = v19, LODWORD(v19) = sub_23674EB10(&X->rowCount, B, &R.rowCount, ApplyOperator), v22 = &v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8, v20 < v22) || (Preconditionera = Preconditioner, bzero(v21, v10), v50 = (v22 + 8 * v10), v50 > v20))
      {
        __break(1u);
        return v19;
      }

      v48 = v9;
      if (v10 >= 1)
      {
        v23 = v10;
        v24 = v53;
        v25 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
        do
        {
          cblas_dnrm2_NEWLAPACK();
          *v25++ = v26;
          v24 += v9;
          --v23;
        }

        while (v23);
      }

      if (options->maxIterations)
      {
        maxIterations = options->maxIterations;
      }

      else
      {
        maxIterations = 100;
      }

      rtol = options->rtol;
      v29 = rtol == 0.0;
      if (rtol < 0.0)
      {
        rtol = 0.0;
      }

      if (v29)
      {
        v30 = 0.0000000149011612;
      }

      else
      {
        v30 = rtol;
      }

      if (maxIterations < 1)
      {
LABEL_51:
        reportError = options->reportError;
        if (!options->reportError)
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
        v44 = 1;
        v43 = v53;
      }

      else
      {
        v31 = 0;
        atol = options->atol;
        v33 = v48;
        if (*&R.attributes)
        {
          v33 = 1;
        }

        v34 = 8 * v33;
        while (1)
        {
          if (options->reportStatus && (v31 < nvec || !(v31 % nvec)))
          {
            v35 = v53;
            if (!v31)
            {
              v35 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
            }

            snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v31, *v35);
            (options->reportStatus)(__str);
          }

          _SparseGMRESIterate_Double(options, v31, v50, v21, X, B, &R, Preconditionera, ApplyOperator);
          if (v10 < 1)
          {
            break;
          }

          v36 = 1;
          v37 = v10;
          v38 = v53;
          v39 = v21;
          v40 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v41 = *v39 || fabs(*v38) < atol + v30 * *v40;
            *v39++ = v41;
            v36 &= v41;
            ++v40;
            v38 = (v38 + v34);
            --v37;
          }

          while (v37);
          if (v36)
          {
            goto LABEL_65;
          }

          if (++v31 == maxIterations)
          {
            goto LABEL_51;
          }
        }

        v31 = 0;
LABEL_65:
        v43 = v53;
        if (options->reportStatus)
        {
          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v31 + 1, *v53);
          (options->reportStatus)(__str);
        }

        _SparseGMRESIterate_Double(options, -1, v50, v21, X, B, &R, Preconditionera, ApplyOperator);
        v44 = 0;
      }

      free(v43);
    }

    else
    {
      if (!options->reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23674EC64(v18);
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v18);
      (options->reportError)(__str);
      v44 = -99;
    }
  }

  else
  {
    v12 = options->reportError;
    if (!options->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23674ECE4();
      }

      _SparseTrap();
    }

    memset(&__str[100], 0, 156);
    strcpy(__str, "FGMRES requires a preconditioner.\nIf no preconditioner is available, use GMRES or DQGMRES instead.\n");
    (v12)(__str);
    v44 = -1;
  }

  v45 = *MEMORY[0x277D85DE8];
  LODWORD(v19) = v44;
  return v19;
}

uint64_t sub_23674EB10(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = 4;
  if (*(a1 + 3))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + v7);
  if (*(a1 + 3))
  {
    v6 = 0;
  }

  v9 = *(a1 + v6);
  v10 = *(a4 + 16);
  v25 = *a1;
  v26 = *(a1 + 2);
  v23 = *a3;
  v24 = *(a3 + 2);
  result = v10(a4, 0, 111, &v25, &v23);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (v8 >= 1)
      {
        v13 = 0;
        v14 = *(a2 + 16);
        v15 = *(a3 + 2);
        v16 = *(a2 + 8);
        v17 = *(a3 + 2);
        do
        {
          if (*(a2 + 12))
          {
            v18 = v13;
          }

          else
          {
            v18 = i;
          }

          if (*(a2 + 12))
          {
            v19 = i;
          }

          else
          {
            v19 = v13;
          }

          v20 = *(v14 + 8 * (v19 + v16 * v18));
          if (*(a3 + 3))
          {
            v21 = v13;
          }

          else
          {
            v21 = i;
          }

          if (*(a3 + 3))
          {
            v22 = i;
          }

          else
          {
            v22 = v13;
          }

          *(v15 + 8 * (v22 + v17 * v21)) = v20 - *(v15 + 8 * (v22 + v17 * v21));
          ++v13;
        }

        while (v8 != v13);
      }
    }
  }

  return result;
}

void sub_23674EC64(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_2366B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23674ED2C(FILE *a1, const char *a2, int *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = "UNTITLED";
  if (a2)
  {
    v5 = a2;
  }

  result = fprintf(a1, "%-72s%8s\n", v5, "00000000");
  if ((result & 0x80000000) == 0)
  {
    v7 = a3[1];
    v8 = v7 / 3;
    v9 = v7 / 3 + 1;
    v10 = *(*(a3 + 1) + 8 * v7) - 1;
    result = fprintf(a1, "%14ld %13d %13ld %13ld\n", v10 / 6 + 1 + v8 + 5 + v10 / 2 + 1, v9, v10 / 6 + 1, v10 / 2 + 1);
    if ((result & 0x80000000) == 0)
    {
      v28 = 6373234;
      v11 = *a3;
      v12 = a3[1];
      v13 = *a3 == v12 ? 117 : 114;
      v14 = (~*(a3 + 12) & 0xC) != 0 ? v13 : 115;
      BYTE1(v28) = v14;
      result = fprintf(a1, "%3s            %13d %13d %13ld %13d\n", &v28, v11, v12, *(*(a3 + 1) + 8 * v12), 0);
      if ((result & 0x80000000) == 0)
      {
        snprintf(__str, 0x50uLL, "(%dI22)", 3);
        snprintf(v30, 0x50uLL, "(%dI12)", 6);
        snprintf(v29, 0x50uLL, "(%dE27.16)", 2);
        result = fprintf(a1, "%16s%16s%20s\n", __str, v30, v29);
        if ((result & 0x80000000) == 0)
        {
          v15 = a3[1];
          if ((v15 & 0x80000000) != 0)
          {
LABEL_21:
            v21 = *(*(a3 + 1) + 8 * v15);
            v22 = v21 - 1;
            if (v21 < 1)
            {
              result = 0;
            }

            else
            {
              v23 = 0;
              v24 = -1;
              v25 = 1;
              while (1)
              {
                result = fprintf(a1, "%12d", *(*(a3 + 2) + v23) + 1);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                if (!--v21 || !(v24 + 6 * (v25 / 6)))
                {
                  result = fprintf(a1, "\n");
                  if ((result & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                --v24;
                ++v25;
                v23 += 4;
                if (!v21)
                {
                  while (1)
                  {
                    result = fprintf(a1, "%27.16e", *(*(a3 + 4) + 4 * v21));
                    if ((result & 0x80000000) != 0)
                    {
                      goto LABEL_35;
                    }

                    if ((v21 & 1) != 0 || v22 == v21)
                    {
                      v26 = fprintf(a1, "\n");
                      if (v26 < 0 || v22 == v21)
                      {
                        result = v26 & (v26 >> 31);
                        goto LABEL_35;
                      }
                    }

                    ++v21;
                  }
                }
              }
            }
          }

          else
          {
            v16 = 0;
            v17 = 8 * v15;
            v18 = 8 * v15 + 8;
            v19 = -1;
            v20 = 1;
            while (1)
            {
              result = fprintf(a1, "%22ld", *(*(a3 + 1) + v16) + 1);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v17 == v16 || !(v19 + 3 * (v20 / 3)))
              {
                result = fprintf(a1, "\n");
                if ((result & 0x80000000) != 0)
                {
                  break;
                }
              }

              v16 += 8;
              --v19;
              ++v20;
              if (v18 == v16)
              {
                LODWORD(v15) = a3[1];
                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

LABEL_35:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

int *sub_23674F0B4(FILE *a1, uint64_t a2, size_t a3, char *a4)
{
  __endptr[16] = *MEMORY[0x277D85DE8];
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x66584420uLL);
  if (getline(&__linep, &__linecapp, a1) > 0)
  {
    if (a4)
    {
      v7 = __linep;
      strncpy(a4, __linep, a3);
      a4[strlen(v7) - 1] = 0;
    }

    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v60 = 0;
    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 1.\n";
    }

    else
    {
      if ((sscanf(__linep, "%ld %ld %ld %ld %ld", &v64, &v63, &v62, &v61, &v60) - 6) <= 0xFFFFFFFD)
      {
        v8 = *MEMORY[0x277D85DF8];
        v9 = "Header line 1 is malformed.\n";
LABEL_12:
        v10 = 28;
        goto LABEL_15;
      }

      v55 = 0;
      v56 = 0;
      v53 = 0;
      v54 = 0;
      if (getline(&__linep, &__linecapp, a1) > 0)
      {
        if (sscanf(__linep, "%3s %ld %ld %ld %ld", &v57, &v56, &v55, &v54, &v53) <= 4)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Header line 2 is malformed.\n";
          goto LABEL_12;
        }

        v14 = v57 - 67;
        if (v14 <= 0x2F)
        {
          if (((1 << v14) & 0x804000008040) != 0)
          {
            v15 = 0;
            goto LABEL_24;
          }

          if (((1 << v14) & 0x100000001) != 0)
          {
            v8 = *MEMORY[0x277D85DF8];
            v9 = "Cannot read complex-valued matrix into real-valued type.\n";
            v10 = 57;
            goto LABEL_15;
          }

          if (((1 << v14) & 0x200000002000) != 0)
          {
            v15 = 1;
LABEL_24:
            if (v53 || (v59 & 0xDF) != 0x41)
            {
              v8 = *MEMORY[0x277D85DF8];
              v9 = "Elemental matrices are not supported (yet).\n";
              v10 = 44;
              goto LABEL_15;
            }

            if (v15)
            {
              v16 = 0;
            }

            else
            {
              v16 = 4 * v54;
            }

            v17 = malloc_type_malloc(4 * v54 + 8 * v55 + v16 + 96, 0x10900405D25300CuLL);
            v11 = v17;
            v18 = (v17 + 55) & 0xFFFFFFFFFFFFFFF0;
            v19 = v55;
            *v17 = v56;
            *(v17 + 1) = v19;
            *(v17 + 6) = 0;
            v17[28] = 1;
            *(v17 + 29) = 0;
            v17[31] = 0;
            v20 = (v18 + 8 * v19 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v17 + 1) = v18;
            *(v17 + 2) = v20;
            v21 = (v20 + 4 * v54 + 15) & 0xFFFFFFFFFFFFFFF0;
            if (v15)
            {
              v21 = 0;
            }

            *(v17 + 4) = v21;
            v22 = v58 - 72;
            if (v22 <= 0x2D)
            {
              if (((1 << v22) & 0x240000002400) != 0)
              {
                v23 = *(v17 + 12) & 0xFFF3;
                goto LABEL_40;
              }

              if (((1 << v22) & 0x100000001) != 0)
              {
                v49 = *MEMORY[0x277D85DF8];
                v50 = "Hermitian matrices are not supported with real-valued type (did you mean Symmetric?)\n";
                v51 = 85;
                goto LABEL_80;
              }

              if (((1 << v22) & 0x80000000800) != 0)
              {
                v23 = *(v17 + 12) | 0xE;
LABEL_40:
                *(v17 + 12) = v23;
                if (getline(&__linep, &__linecapp, a1) < 1)
                {
                  v49 = *MEMORY[0x277D85DF8];
                  v50 = "File is missing header line 3.\n";
                }

                else
                {
                  v24 = v63-- < 1;
                  if (!v24)
                  {
                    v25 = 0;
                    while (getline(&__linep, &__linecapp, a1) > 0)
                    {
                      v26 = __linep;
                      __endptr[0] = 0;
                      while (1)
                      {
                        v27 = strtol(v26, __endptr, 0);
                        v28 = __endptr[0];
                        if (__endptr[0] == v26)
                        {
                          break;
                        }

                        v29 = v25 + 1;
                        *(*(v11 + 1) + 8 * v25) = v27 - 1;
                        v26 = v28;
                        v24 = v25++ < v11[1];
                        if (!v24)
                        {
                          goto LABEL_49;
                        }
                      }

                      v29 = v25;
LABEL_49:
                      v30 = v63--;
                      v25 = v29;
                      if (v30 <= 0)
                      {
                        goto LABEL_50;
                      }
                    }

                    v49 = *MEMORY[0x277D85DF8];
                    v50 = "File truncated in pointer lines.\n";
                    v51 = 33;
                    goto LABEL_80;
                  }

LABEL_50:
                  v24 = v62-- < 1;
                  if (!v24)
                  {
                    v31 = 0;
                    while (getline(&__linep, &__linecapp, a1) > 0)
                    {
                      v32 = __linep;
                      __endptr[0] = 0;
                      while (1)
                      {
                        v33 = strtol(v32, __endptr, 0);
                        v34 = __endptr[0];
                        if (__endptr[0] == v32)
                        {
                          break;
                        }

                        v35 = v31 + 1;
                        *(*(v11 + 2) + 4 * v31) = v33 - 1;
                        v31 = v35;
                        v32 = v34;
                        if (v35 >= v54)
                        {
                          goto LABEL_58;
                        }
                      }

                      v35 = v31;
LABEL_58:
                      v36 = v62--;
                      v31 = v35;
                      if (v36 <= 0)
                      {
                        goto LABEL_59;
                      }
                    }

                    v49 = *MEMORY[0x277D85DF8];
                    v50 = "File truncated in row index lines.\n";
                    v51 = 35;
                    goto LABEL_80;
                  }

LABEL_59:
                  if ((v15 & 1) != 0 || (v37 = *(v11 + 4), v24 = v61 < 1, --v61, v24))
                  {
LABEL_73:
                    free(__linep);
                    goto LABEL_17;
                  }

                  v38 = 0;
                  while (getline(&__linep, &__linecapp, a1) > 0)
                  {
                    v39 = strtok(__linep, " \t\n");
                    v52 = 0;
                    if (v39)
                    {
                      v40 = v39;
                      do
                      {
                        v41 = strtod(v40, &v52);
                        v42 = v52;
                        if (*v52)
                        {
                          __memcpy_chk();
                          v43 = __endptr + v42 - v40;
                          *v43 = 69;
                          v44 = strlen(v42);
                          memcpy(v43 + 1, v42, v44 + 1);
                          v45 = strtod(__endptr, &v52);
                          if (*v52)
                          {
                            fprintf(*MEMORY[0x277D85DF8], "Number %s not read correctly as %s\n", v40, __endptr);
                          }
                        }

                        else
                        {
                          v45 = v41;
                        }

                        v46 = v45;
                        v47 = v38 + 1;
                        *(v37 + 4 * v38) = v46;
                        v40 = strtok(0, " \t\n");
                        ++v38;
                      }

                      while (v40);
                    }

                    else
                    {
                      v47 = v38;
                    }

                    v48 = v61--;
                    v38 = v47;
                    if (v48 <= 0)
                    {
                      goto LABEL_73;
                    }
                  }

                  v49 = *MEMORY[0x277D85DF8];
                  v50 = "File truncated in value lines.\n";
                }

                v51 = 31;
LABEL_80:
                fwrite(v50, v51, 1uLL, v49);
                goto LABEL_81;
              }
            }

            fprintf(*MEMORY[0x277D85DF8], "Unsuported matrix type %c%c%c\n", v57, v58, v59);
LABEL_81:
            free(v11);
            goto LABEL_16;
          }
        }

        v8 = *MEMORY[0x277D85DF8];
        v9 = "Unsupported matrix type.\n";
        v10 = 25;
        goto LABEL_15;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 2.\n";
    }

    v10 = 31;
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277D85DF8];
  v9 = "File is missing description line.\n";
  v10 = 34;
LABEL_15:
  fwrite(v9, v10, 1uLL, v8);
LABEL_16:
  v11 = 0;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_23674F7C4(FILE *a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = "UNTITLED";
  if (a2)
  {
    v5 = a2;
  }

  result = fprintf(a1, "%-72s%8s\n", v5, "00000000");
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  v7 = *(a3 + 4);
  v8 = v7 / 3;
  v9 = v7 / 3 + 1;
  v10 = *(*(a3 + 8) + 8 * v7);
  result = fprintf(a1, "%14ld %13d %13ld %13ld\n", (v10 - 1) / 6 + 1 + v8 + 5 + (2 * v10 - 1) / 2 + 1, v9, (v10 - 1) / 6 + 1, (2 * v10 - 1) / 2 + 1);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  v26 = 6373219;
  v11 = (*(a3 + 24) >> 2) & 7;
  if (v11 < 3)
  {
    if (*a3 == *(a3 + 4))
    {
      v12 = 117;
    }

    else
    {
      v12 = 114;
    }

    goto LABEL_13;
  }

  if (v11 == 3)
  {
    v12 = 115;
    goto LABEL_13;
  }

  if (v11 == 7)
  {
    v12 = 104;
LABEL_13:
    BYTE1(v26) = v12;
  }

  result = fprintf(a1, "%3s            %13d %13d %13ld %13d\n", &v26, *a3, *(a3 + 4), *(*(a3 + 8) + 8 * *(a3 + 4)), 0);
  if ((result & 0x80000000) == 0)
  {
    snprintf(__str, 0x50uLL, "(%dI22)", 3);
    snprintf(v28, 0x50uLL, "(%dI12)", 6);
    snprintf(v27, 0x50uLL, "(%dE27.16)", 2);
    result = fprintf(a1, "%16s%16s%20s\n", __str, v28, v27);
    if ((result & 0x80000000) == 0)
    {
      v13 = *(a3 + 4);
      if ((v13 & 0x80000000) != 0)
      {
LABEL_24:
        v19 = *(*(a3 + 8) + 8 * v13);
        if (v19 < 1)
        {
LABEL_35:
          result = 0;
        }

        else
        {
          v20 = 0;
          v21 = -1;
          v22 = 1;
          v23 = *(*(a3 + 8) + 8 * v13);
          while (1)
          {
            result = fprintf(a1, "%12d", *(*(a3 + 16) + v20) + 1);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!--v23 || !(v21 + 6 * (v22 / 6)))
            {
              result = fprintf(a1, "\n");
              if ((result & 0x80000000) != 0)
              {
                break;
              }
            }

            --v21;
            ++v22;
            v20 += 4;
            if (!v23)
            {
              v24 = 0;
              while (1)
              {
                result = fprintf(a1, "%27.16e %27.16e", *(*(a3 + 32) + v24), *(*(a3 + 32) + v24 + 4));
                if ((result & 0x80000000) != 0)
                {
                  goto LABEL_36;
                }

                result = fprintf(a1, "\n");
                if ((result & 0x80000000) != 0)
                {
                  goto LABEL_36;
                }

                v24 += 8;
                if (!--v19)
                {
                  goto LABEL_35;
                }
              }
            }
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = 8 * v13;
        v16 = 8 * v13 + 8;
        v17 = -1;
        v18 = 1;
        while (1)
        {
          result = fprintf(a1, "%22ld", *(*(a3 + 8) + v14) + 1);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v15 == v14 || !(v17 + 3 * (v18 / 3)))
          {
            result = fprintf(a1, "\n");
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }

          v14 += 8;
          --v17;
          ++v18;
          if (v16 == v14)
          {
            LODWORD(v13) = *(a3 + 4);
            goto LABEL_24;
          }
        }
      }
    }
  }

LABEL_36:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

int *sub_23674FB68(FILE *a1, uint64_t a2, size_t a3, char *a4)
{
  __endptr[16] = *MEMORY[0x277D85DE8];
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x66584420uLL);
  if (getline(&__linep, &__linecapp, a1) > 0)
  {
    if (a4)
    {
      v7 = __linep;
      strncpy(a4, __linep, a3);
      a4[strlen(v7) - 1] = 0;
    }

    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 1.\n";
    }

    else
    {
      if ((sscanf(__linep, "%ld %ld %ld %ld %ld", &v71, &v70, &v69, &v68, &v67) - 6) <= 0xFFFFFFFD)
      {
        v8 = *MEMORY[0x277D85DF8];
        v9 = "Header line 1 is malformed.\n";
LABEL_12:
        v10 = 28;
        goto LABEL_15;
      }

      v62 = 0;
      v63 = 0;
      v60 = 0;
      v61 = 0;
      if (getline(&__linep, &__linecapp, a1) > 0)
      {
        if (sscanf(__linep, "%3s %ld %ld %ld %ld", &v64, &v63, &v62, &v61, &v60) <= 4)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Header line 2 is malformed.\n";
          goto LABEL_12;
        }

        v14 = v64 - 67;
        if (v14 >= 0x30 || ((0xA0410000A041uLL >> v14) & 1) == 0)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Unsupported matrix type.\n";
          v10 = 25;
          goto LABEL_15;
        }

        if (v60 || (v66 & 0xDF) != 0x41)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Elemental matrices are not supported (yet).\n";
          v10 = 44;
          goto LABEL_15;
        }

        v15 = 0x200000002000uLL >> v14;
        v16 = 8 * v61;
        if ((0x200000002000uLL >> v14))
        {
          v16 = 0;
        }

        v17 = malloc_type_malloc(4 * v61 + 8 * v62 + v16 + 96, 0x10900405D25300CuLL);
        v11 = v17;
        v18 = (v17 + 55) & 0xFFFFFFFFFFFFFFF0;
        v19 = v62;
        *v17 = v63;
        *(v17 + 1) = v19;
        *(v17 + 6) = 0;
        v17[28] = 1;
        *(v17 + 29) = 0;
        v17[31] = 0;
        v20 = (v18 + 8 * v19 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v17 + 1) = v18;
        *(v17 + 2) = v20;
        v21 = (v20 + 4 * v61 + 15) & 0xFFFFFFFFFFFFFFF0;
        if (v15)
        {
          v21 = 0;
        }

        *(v17 + 4) = v21;
        v22 = v65 - 72;
        if (v22 > 0x2D)
        {
          goto LABEL_77;
        }

        if (((1 << v22) & 0x240000002400) != 0)
        {
          v23 = *(v17 + 12) & 0xFFE3;
        }

        else
        {
          if (((1 << v22) & 0x100000001) == 0)
          {
            if (((1 << v22) & 0x80000000800) != 0)
            {
              v23 = *(v17 + 12) & 0xFFE1 | 0xE;
              goto LABEL_35;
            }

LABEL_77:
            fprintf(*MEMORY[0x277D85DF8], "Unsuported matrix type %c%c%c\n", v64, v65, v66);
            goto LABEL_76;
          }

          v23 = *(v17 + 12) | 0x1E;
        }

LABEL_35:
        *(v17 + 12) = v23;
        if (getline(&__linep, &__linecapp, a1) < 1)
        {
          v37 = *MEMORY[0x277D85DF8];
          v38 = "File is missing header line 3.\n";
        }

        else
        {
          v24 = v70-- < 1;
          if (!v24)
          {
            v25 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v26 = __linep;
              __endptr[0] = 0;
              while (1)
              {
                v27 = strtol(v26, __endptr, 0);
                v28 = __endptr[0];
                if (__endptr[0] == v26)
                {
                  break;
                }

                v29 = v25 + 1;
                *(*(v11 + 1) + 8 * v25) = v27 - 1;
                v26 = v28;
                v24 = v25++ < v11[1];
                if (!v24)
                {
                  goto LABEL_44;
                }
              }

              v29 = v25;
LABEL_44:
              v30 = v70--;
              v25 = v29;
              if (v30 <= 0)
              {
                goto LABEL_45;
              }
            }

            v37 = *MEMORY[0x277D85DF8];
            v38 = "File truncated in pointer lines.\n";
            v39 = 33;
            goto LABEL_75;
          }

LABEL_45:
          v24 = v69-- < 1;
          if (!v24)
          {
            v31 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v32 = __linep;
              __endptr[0] = 0;
              while (1)
              {
                v33 = strtol(v32, __endptr, 0);
                v34 = __endptr[0];
                if (__endptr[0] == v32)
                {
                  break;
                }

                v35 = v31 + 1;
                *(*(v11 + 2) + 4 * v31) = v33 - 1;
                v31 = v35;
                v32 = v34;
                if (v35 >= v61)
                {
                  goto LABEL_53;
                }
              }

              v35 = v31;
LABEL_53:
              v36 = v69--;
              v31 = v35;
              if (v36 <= 0)
              {
                goto LABEL_54;
              }
            }

            v37 = *MEMORY[0x277D85DF8];
            v38 = "File truncated in row index lines.\n";
            v39 = 35;
            goto LABEL_75;
          }

LABEL_54:
          if (v15)
          {
LABEL_55:
            free(__linep);
            goto LABEL_17;
          }

          if ((0x100000001uLL >> v14))
          {
            v40 = *(v11 + 4);
            v61 *= 2;
            v24 = v68-- < 1;
            if (v24)
            {
              goto LABEL_55;
            }

            v41 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v42 = strtok(__linep, " \t\n");
              v59 = 0;
              if (v42)
              {
                v43 = v42;
                do
                {
                  v44 = strtod(v43, &v59);
                  v45 = v59;
                  if (*v59)
                  {
                    __memcpy_chk();
                    v46 = __endptr + v45 - v43;
                    *v46 = 69;
                    v47 = strlen(v45);
                    memcpy(v46 + 1, v45, v47 + 1);
                    v48 = strtod(__endptr, &v59);
                    if (*v59)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "Number %s not read correctly as %s\n", v43, __endptr);
                    }
                  }

                  else
                  {
                    v48 = v44;
                  }

                  v49 = v48;
                  v50 = v41 + 1;
                  *(v40 + 4 * v41) = v49;
                  v43 = strtok(0, " \t\n");
                  ++v41;
                }

                while (v43);
              }

              else
              {
                v50 = v41;
              }

              v51 = v68--;
              v41 = v50;
              if (v51 <= 0)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
            v24 = v68-- < 1;
            if (v24)
            {
              goto LABEL_55;
            }

            v52 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v53 = __linep;
              __endptr[0] = 0;
              v54 = 8 * v52;
              do
              {
                v55 = strtod(v53, __endptr);
                if (__endptr[0] == v53)
                {
                  break;
                }

                v56 = v55;
                ++v52;
                v57 = *(v11 + 4) + v54;
                *v57 = v56;
                *(v57 + 4) = 0;
                v53 = __endptr[0];
                v54 += 8;
              }

              while (v52 < v61);
              v58 = v68--;
              if (v58 <= 0)
              {
                goto LABEL_55;
              }
            }
          }

          v37 = *MEMORY[0x277D85DF8];
          v38 = "File truncated in value lines.\n";
        }

        v39 = 31;
LABEL_75:
        fwrite(v38, v39, 1uLL, v37);
LABEL_76:
        free(v11);
        goto LABEL_16;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 2.\n";
    }

    v10 = 31;
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277D85DF8];
  v9 = "File is missing description line.\n";
  v10 = 34;
LABEL_15:
  fwrite(v9, v10, 1uLL, v8);
LABEL_16:
  v11 = 0;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_2367502D8(FILE *a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = "UNTITLED";
  if (a2)
  {
    v5 = a2;
  }

  result = fprintf(a1, "%-72s%8s\n", v5, "00000000");
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  v7 = *(a3 + 4);
  v8 = v7 / 3;
  v9 = v7 / 3 + 1;
  v10 = *(*(a3 + 8) + 8 * v7);
  result = fprintf(a1, "%14ld %13d %13ld %13ld\n", (v10 - 1) / 6 + 1 + v8 + 5 + (2 * v10 - 1) / 2 + 1, v9, (v10 - 1) / 6 + 1, (2 * v10 - 1) / 2 + 1);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  v26 = 6373219;
  v11 = (*(a3 + 24) >> 2) & 7;
  if (v11 < 3)
  {
    if (*a3 == *(a3 + 4))
    {
      v12 = 117;
    }

    else
    {
      v12 = 114;
    }

    goto LABEL_13;
  }

  if (v11 == 3)
  {
    v12 = 115;
    goto LABEL_13;
  }

  if (v11 == 7)
  {
    v12 = 104;
LABEL_13:
    BYTE1(v26) = v12;
  }

  result = fprintf(a1, "%3s            %13d %13d %13ld %13d\n", &v26, *a3, *(a3 + 4), *(*(a3 + 8) + 8 * *(a3 + 4)), 0);
  if ((result & 0x80000000) == 0)
  {
    snprintf(__str, 0x50uLL, "(%dI22)", 3);
    snprintf(v28, 0x50uLL, "(%dI12)", 6);
    snprintf(v27, 0x50uLL, "(%dE27.16)", 2);
    result = fprintf(a1, "%16s%16s%20s\n", __str, v28, v27);
    if ((result & 0x80000000) == 0)
    {
      v13 = *(a3 + 4);
      if ((v13 & 0x80000000) != 0)
      {
LABEL_24:
        v19 = *(*(a3 + 8) + 8 * v13);
        if (v19 < 1)
        {
LABEL_35:
          result = 0;
        }

        else
        {
          v20 = 0;
          v21 = -1;
          v22 = 1;
          v23 = *(*(a3 + 8) + 8 * v13);
          while (1)
          {
            result = fprintf(a1, "%12d", *(*(a3 + 16) + v20) + 1);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!--v23 || !(v21 + 6 * (v22 / 6)))
            {
              result = fprintf(a1, "\n");
              if ((result & 0x80000000) != 0)
              {
                break;
              }
            }

            --v21;
            ++v22;
            v20 += 4;
            if (!v23)
            {
              v24 = 0;
              while (1)
              {
                result = fprintf(a1, "%27.16e %27.16e", *(*(a3 + 32) + v24), *(*(a3 + 32) + v24 + 8));
                if ((result & 0x80000000) != 0)
                {
                  goto LABEL_36;
                }

                result = fprintf(a1, "\n");
                if ((result & 0x80000000) != 0)
                {
                  goto LABEL_36;
                }

                v24 += 16;
                if (!--v19)
                {
                  goto LABEL_35;
                }
              }
            }
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = 8 * v13;
        v16 = 8 * v13 + 8;
        v17 = -1;
        v18 = 1;
        while (1)
        {
          result = fprintf(a1, "%22ld", *(*(a3 + 8) + v14) + 1);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v15 == v14 || !(v17 + 3 * (v18 / 3)))
          {
            result = fprintf(a1, "\n");
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }

          v14 += 8;
          --v17;
          ++v18;
          if (v16 == v14)
          {
            LODWORD(v13) = *(a3 + 4);
            goto LABEL_24;
          }
        }
      }
    }
  }

LABEL_36:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

int *sub_236750674(FILE *a1, uint64_t a2, size_t a3, char *a4)
{
  __endptr[16] = *MEMORY[0x277D85DE8];
  __linecapp = 81;
  __linep = malloc_type_malloc(0x51uLL, 0x66584420uLL);
  if (getline(&__linep, &__linecapp, a1) > 0)
  {
    if (a4)
    {
      v7 = __linep;
      strncpy(a4, __linep, a3);
      a4[strlen(v7) - 1] = 0;
    }

    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    if (getline(&__linep, &__linecapp, a1) <= 0)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 1.\n";
    }

    else
    {
      if ((sscanf(__linep, "%ld %ld %ld %ld %ld", &v69, &v68, &v67, &v66, &v65) - 6) <= 0xFFFFFFFD)
      {
        v8 = *MEMORY[0x277D85DF8];
        v9 = "Header line 1 is malformed.\n";
LABEL_12:
        v10 = 28;
        goto LABEL_15;
      }

      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
      if (getline(&__linep, &__linecapp, a1) > 0)
      {
        if (sscanf(__linep, "%3s %ld %ld %ld %ld", &v62, &v61, &v60, &v59, &v58) <= 4)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Header line 2 is malformed.\n";
          goto LABEL_12;
        }

        v14 = v62 - 67;
        if (v14 >= 0x30 || ((0xA0410000A041uLL >> v14) & 1) == 0)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Unsupported matrix type.\n";
          v10 = 25;
          goto LABEL_15;
        }

        if (v58 || (v64 & 0xDF) != 0x41)
        {
          v8 = *MEMORY[0x277D85DF8];
          v9 = "Elemental matrices are not supported (yet).\n";
          v10 = 44;
          goto LABEL_15;
        }

        v15 = 0x200000002000uLL >> v14;
        v16 = 16 * v59;
        if ((0x200000002000uLL >> v14))
        {
          v16 = 0;
        }

        v17 = malloc_type_malloc(4 * v59 + 8 * v60 + v16 + 96, 0x10900405D25300CuLL);
        v11 = v17;
        v18 = (v17 + 55) & 0xFFFFFFFFFFFFFFF0;
        v19 = v60;
        *v17 = v61;
        *(v17 + 1) = v19;
        *(v17 + 6) = 0;
        v17[28] = 1;
        *(v17 + 29) = 0;
        v17[31] = 0;
        v20 = (v18 + 8 * v19 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v17 + 1) = v18;
        *(v17 + 2) = v20;
        v21 = (v20 + 4 * v59 + 15) & 0xFFFFFFFFFFFFFFF0;
        if (v15)
        {
          v21 = 0;
        }

        *(v17 + 4) = v21;
        v22 = v63 - 72;
        if (v22 > 0x2D)
        {
          goto LABEL_77;
        }

        if (((1 << v22) & 0x240000002400) != 0)
        {
          v23 = *(v17 + 12) & 0xFFE3;
        }

        else
        {
          if (((1 << v22) & 0x100000001) == 0)
          {
            if (((1 << v22) & 0x80000000800) != 0)
            {
              v23 = *(v17 + 12) & 0xFFE1 | 0xE;
              goto LABEL_35;
            }

LABEL_77:
            fprintf(*MEMORY[0x277D85DF8], "Unsuported matrix type %c%c%c\n", v62, v63, v64);
            goto LABEL_76;
          }

          v23 = *(v17 + 12) | 0x1E;
        }

LABEL_35:
        *(v17 + 12) = v23;
        if (getline(&__linep, &__linecapp, a1) < 1)
        {
          v37 = *MEMORY[0x277D85DF8];
          v38 = "File is missing header line 3.\n";
        }

        else
        {
          v24 = v68-- < 1;
          if (!v24)
          {
            v25 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v26 = __linep;
              __endptr[0] = 0;
              while (1)
              {
                v27 = strtol(v26, __endptr, 0);
                v28 = __endptr[0];
                if (__endptr[0] == v26)
                {
                  break;
                }

                v29 = v25 + 1;
                *(*(v11 + 1) + 8 * v25) = v27 - 1;
                v26 = v28;
                v24 = v25++ < v11[1];
                if (!v24)
                {
                  goto LABEL_44;
                }
              }

              v29 = v25;
LABEL_44:
              v30 = v68--;
              v25 = v29;
              if (v30 <= 0)
              {
                goto LABEL_45;
              }
            }

            v37 = *MEMORY[0x277D85DF8];
            v38 = "File truncated in pointer lines.\n";
            v39 = 33;
            goto LABEL_75;
          }

LABEL_45:
          v24 = v67-- < 1;
          if (!v24)
          {
            v31 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v32 = __linep;
              __endptr[0] = 0;
              while (1)
              {
                v33 = strtol(v32, __endptr, 0);
                v34 = __endptr[0];
                if (__endptr[0] == v32)
                {
                  break;
                }

                v35 = v31 + 1;
                *(*(v11 + 2) + 4 * v31) = v33 - 1;
                v31 = v35;
                v32 = v34;
                if (v35 >= v59)
                {
                  goto LABEL_53;
                }
              }

              v35 = v31;
LABEL_53:
              v36 = v67--;
              v31 = v35;
              if (v36 <= 0)
              {
                goto LABEL_54;
              }
            }

            v37 = *MEMORY[0x277D85DF8];
            v38 = "File truncated in row index lines.\n";
            v39 = 35;
            goto LABEL_75;
          }

LABEL_54:
          if (v15)
          {
LABEL_55:
            free(__linep);
            goto LABEL_17;
          }

          if ((0x100000001uLL >> v14))
          {
            v40 = *(v11 + 4);
            v59 *= 2;
            v24 = v66-- < 1;
            if (v24)
            {
              goto LABEL_55;
            }

            v41 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v42 = strtok(__linep, " \t\n");
              v57 = 0;
              if (v42)
              {
                v43 = v42;
                do
                {
                  v44 = strtod(v43, &v57);
                  v45 = v57;
                  if (*v57)
                  {
                    __memcpy_chk();
                    v46 = __endptr + v45 - v43;
                    *v46 = 69;
                    v47 = strlen(v45);
                    memcpy(v46 + 1, v45, v47 + 1);
                    v48 = strtod(__endptr, &v57);
                    if (*v57)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "Number %s not read correctly as %s\n", v43, __endptr);
                    }
                  }

                  else
                  {
                    v48 = v44;
                  }

                  v49 = v41 + 1;
                  *(v40 + 8 * v41) = v48;
                  v43 = strtok(0, " \t\n");
                  ++v41;
                }

                while (v43);
              }

              else
              {
                v49 = v41;
              }

              v50 = v66--;
              v41 = v49;
              if (v50 <= 0)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
            v24 = v66-- < 1;
            if (v24)
            {
              goto LABEL_55;
            }

            v51 = 0;
            while (getline(&__linep, &__linecapp, a1) > 0)
            {
              v52 = __linep;
              __endptr[0] = 0;
              v53 = 16 * v51;
              do
              {
                v54 = strtod(v52, __endptr);
                if (__endptr[0] == v52)
                {
                  break;
                }

                ++v51;
                v55 = *(v11 + 4) + v53;
                *v55 = v54;
                *(v55 + 8) = 0;
                v52 = __endptr[0];
                v53 += 16;
              }

              while (v51 < v59);
              v56 = v66--;
              if (v56 <= 0)
              {
                goto LABEL_55;
              }
            }
          }

          v37 = *MEMORY[0x277D85DF8];
          v38 = "File truncated in value lines.\n";
        }

        v39 = 31;
LABEL_75:
        fwrite(v38, v39, 1uLL, v37);
LABEL_76:
        free(v11);
        goto LABEL_16;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "File is missing header line 2.\n";
    }

    v10 = 31;
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277D85DF8];
  v9 = "File is missing description line.\n";
  v10 = 34;
LABEL_15:
  fwrite(v9, v10, 1uLL, v8);
LABEL_16:
  v11 = 0;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void *sub_236750DDC(void *result, _DWORD *a2, uint64_t a3, int *a4, char *__b)
{
  if (result >= 1)
  {
    v9 = result;
    v10 = &__b[4 * result];
    v11 = &__b[8 * result];
    v12 = &__b[12 * result];
    v13 = 4 * result;
    v14 = result;
    memset(__b, 255, v13);
    v15 = v14;
    do
    {
      v16 = a2[v15 - 1];
      if (v16 != -1)
      {
        *&__b[4 * v9 - 4 + 4 * v15] = *&__b[4 * v16];
        *&__b[4 * v16] = v15 - 1;
      }

      --v15;
    }

    while ((v15 + 1) > 1);
    result = memcpy(v12, a4, v13);
    v17 = 0;
    v18 = 0;
    do
    {
      if (a2[v17] == -1)
      {
        v19 = 0;
        *v11 = v17;
        do
        {
          while (1)
          {
            v20 = *&v11[4 * v19];
            v21 = *&__b[4 * v20];
            if (v21 == -1)
            {
              break;
            }

            *&__b[4 * v20] = *&v10[4 * v21];
            *&v11[4 * ++v19] = v21;
            if (v19 < 0)
            {
              goto LABEL_8;
            }
          }

          --v19;
          a4[v18++] = *&v12[4 * v20];
        }

        while ((v19 & 0x80000000) == 0);
      }

LABEL_8:
      ++v17;
    }

    while (v17 != v14);
    v22 = v14;
    v23 = a4;
    v24 = v11;
    do
    {
      v25 = *v23++;
      v26 = a2[*(a3 + 4 * v25)];
      if (v26 != -1)
      {
        LODWORD(v26) = *&v12[4 * v26];
      }

      *v24 = v26;
      v24 += 4;
      --v22;
    }

    while (v22);
    do
    {
      *(a3 + 4 * a4[v22]) = v22;
      ++v22;
    }

    while (v14 != v22);
    do
    {
      v28 = *v11;
      v11 += 4;
      v27 = v28;
      if (v28 != -1)
      {
        LODWORD(v27) = *(a3 + 4 * v27);
      }

      *a2++ = v27;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_236750FA0(int *a1, uint64_t a2, char *a3, char *a4, int *a5, int *a6, int *a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a1;
  v14 = a1[1];
  *a7 = 0;
  *a8 = 0;
  *a5 = 0;
  *a6 = 0;
  v15 = (4 * v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = a11 + v15;
  v143 = 4 * v13 + 7;
  v144 = 4 * v14;
  v17 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = a11 + v15 + v17;
  v142 = 4 * v14 + 7;
  v148 = v13;
  if (a3)
  {
    if (*a1 < 1)
    {
      v20 = 0;
    }

    else
    {
      v19 = 0;
      LODWORD(v20) = 0;
      v21 = *(a1 + 28);
      v22 = a3;
      do
      {
        if (!v21)
        {
          goto LABEL_8;
        }

        v23 = 1;
        v24 = v21;
        v25 = v22;
        do
        {
          v26 = *v25++;
          v23 &= v26;
          --v24;
        }

        while (v24);
        if ((v23 & 1) == 0)
        {
          v27 = v20;
          LODWORD(v20) = v20 + 1;
          v28 = a9;
        }

        else
        {
LABEL_8:
          v27 = (*a5)++;
          v28 = a11;
        }

        *(v28 + 4 * v27) = v19++;
        v22 += v21;
      }

      while (v19 < *a1);
      v20 = v20;
    }

    if (*a5 >= 1)
    {
      v30 = 0;
      v31 = a9 + 4 * v20;
      do
      {
        *(v31 + 4 * v30) = *(a11 + 4 * v30);
        ++v30;
      }

      while (v30 < *a5);
    }

    if (v13 >= 1)
    {
      for (i = 0; i != v13; ++i)
      {
        *(a11 + 4 * *(a9 + 4 * i)) = i;
      }
    }
  }

  else
  {
    if (v13 < 1)
    {
      goto LABEL_34;
    }

    for (j = 0; j != v13; ++j)
    {
      *(a11 + 4 * j) = j;
      *(a9 + 4 * j) = j;
    }
  }

  if (a3)
  {
    if (a1[1] < 1)
    {
      v34 = 0;
    }

    else
    {
      v33 = 0;
      LODWORD(v34) = 0;
      v35 = *(a1 + 28);
      do
      {
        if (!v35)
        {
          goto LABEL_30;
        }

        v36 = 1;
        v37 = v35;
        v38 = a4;
        do
        {
          v39 = *v38++;
          v36 &= v39;
          --v37;
        }

        while (v37);
        if ((v36 & 1) == 0)
        {
          v40 = v34;
          LODWORD(v34) = v34 + 1;
          v41 = a10;
        }

        else
        {
LABEL_30:
          v40 = (*a6)++;
          v41 = a11 + v15;
        }

        *(v41 + 4 * v40) = v33++;
        a4 += v35;
      }

      while (v33 < a1[1]);
      v34 = v34;
    }

    if (*a6 >= 1)
    {
      v43 = 0;
      v44 = a10 + 4 * v34;
      do
      {
        *(v44 + 4 * v43) = *(v16 + 4 * v43);
        ++v43;
      }

      while (v43 < *a6);
    }

    if (v14 >= 1)
    {
      for (k = 0; k != v14; ++k)
      {
        *(v16 + 4 * *(a10 + 4 * k)) = k;
      }
    }

    goto LABEL_45;
  }

LABEL_34:
  if (v14 >= 1)
  {
    for (m = 0; m != v14; ++m)
    {
      *(v16 + 4 * m) = m;
      *(a10 + 4 * m) = m;
    }
  }

LABEL_45:
  v46 = *a1 + ~*a5;
  v47 = a1[1] + ~*a6;
  v146 = v18 + v15;
  v147 = a11 + v15 + v17;
  v48 = (v18 + v15 + v17);
  v145 = v14;
  v49 = &v48[v15];
  bzero(v48, 4 * v13);
  bzero(v49, v144);
  if (v145 >= 1)
  {
    v50 = 0;
    v51 = 0;
    v52 = v148;
    v53 = a2;
    v55 = v146;
    v54 = v147;
    v56 = v49;
    while (1)
    {
      if (*(v16 + 4 * v50) <= v47)
      {
        v57 = (*(a1 + 1) + 8 * v50);
        v59 = *v57;
        v58 = v57[1];
        v60 = v58 - v59;
        if (v58 <= v59)
        {
          return 0xFFFFFFFFLL;
        }

        v61 = 0;
        v62 = (*(a1 + 2) + 4 * v59);
        do
        {
          v64 = *v62++;
          v63 = v64;
          if ((v64 & 0x80000000) == 0 && v63 < *a1 && *(a11 + 4 * v63) <= v46)
          {
            ++*&v48[4 * v63];
            ++v61;
          }

          --v60;
        }

        while (v60);
        if (v61 == 1)
        {
          *(v146 + 4 * v51++) = v50;
        }

        else if (!v61)
        {
          return 0xFFFFFFFFLL;
        }

        *&v49[4 * v50] = v61;
      }

      if (++v50 == v145)
      {
        goto LABEL_63;
      }
    }
  }

  v51 = 0;
  v52 = v148;
  v53 = a2;
  v55 = v146;
  v54 = v147;
  v56 = v49;
LABEL_63:
  v65 = *(v53 + 8);
  v65[1] = 0;
  v66 = v65 + 1;
  *v65 = 0;
  if (v52 < 1)
  {
    v69 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = a11 + ((2 * v143) & 0xFFFFFFFFFFFFFFF0) + 16 * (v142 >> 3);
    do
    {
      v71 = *(v70 + 4 * v68);
      if (v71 == 1)
      {
        *(v54 + 4 * v69++) = v68;
        v71 = *(v70 + 4 * v68);
      }

      else if (!v71)
      {
        if (*(a11 + 4 * v68) <= v46)
        {
          return 0xFFFFFFFFLL;
        }

        v71 = 0;
      }

      v67 += v71;
      v65[v68++ + 2] = v67;
    }

    while (v52 != v68);
  }

  if (v145 >= 1)
  {
    for (n = 0; n != v145; ++n)
    {
      if (*(v16 + 4 * n) <= v47)
      {
        v73 = (*(a1 + 1) + 8 * n);
        v74 = *v73;
        v75 = v73[1];
        if (*v73 < v75)
        {
          v76 = *(a1 + 2);
          do
          {
            v77 = *(v76 + 4 * v74);
            if ((v77 & 0x80000000) == 0 && v77 < *a1 && *(a11 + 4 * v77) <= v46)
            {
              v78 = *(v53 + 16);
              v79 = v66[v77];
              v66[v77] = v79 + 1;
              *(v78 + 4 * v79) = n;
              v75 = v73[1];
            }

            ++v74;
          }

          while (v74 < v75);
        }
      }
    }
  }

  if (v69 >= 1)
  {
    v80 = 0;
    v81 = *(a1 + 1);
    do
    {
      v82 = *(v54 + 4 * v80);
      v83 = &v65[v82];
      v84 = *v83;
      v85 = v83[1];
      v86 = *a7;
      if (v84 >= v85)
      {
        v89 = -1;
      }

      else
      {
        v87 = v84 + 1;
        v88 = (*(v53 + 16) + 4 * v84);
        do
        {
          v90 = *v88++;
          v89 = v90;
          v91 = *(v16 + 4 * v90) < v86 && v87++ < v85;
        }

        while (v91);
      }

      v92 = *(a11 + 4 * v82);
      v93 = *(a9 + 4 * v92);
      v94 = *(a9 + 4 * v86);
      v95 = *(a11 + 4 * v93);
      *(a11 + 4 * v93) = *(a11 + 4 * v94);
      *(a11 + 4 * v94) = v95;
      LODWORD(v93) = *(a9 + 4 * v92);
      *(a9 + 4 * v92) = *(a9 + 4 * v86);
      *(a9 + 4 * v86) = v93;
      v96 = *(v16 + 4 * v89);
      v97 = *a7;
      v98 = *(a10 + 4 * v96);
      v99 = *(a10 + 4 * v97);
      v100 = *(v16 + 4 * v98);
      *(v16 + 4 * v98) = *(v16 + 4 * v99);
      *(v16 + 4 * v99) = v100;
      LODWORD(v98) = *(a10 + 4 * v96);
      *(a10 + 4 * v96) = *(a10 + 4 * v97);
      *(a10 + 4 * v97) = v98;
      ++*a7;
      v101 = (v81 + 8 * v89);
      v103 = *v101;
      v102 = v101[1];
      v91 = v102 <= v103;
      v104 = v102 - v103;
      if (!v91)
      {
        v105 = (*(a1 + 2) + 4 * v103);
        do
        {
          v107 = *v105++;
          v106 = v107;
          if ((v107 & 0x80000000) == 0 && v106 < *a1 && *(a11 + 4 * v106) >= *a7)
          {
            v108 = *&v48[4 * v106];
            *&v48[4 * v106] = v108 - 1;
            if (v108 == 1)
            {
              if (*(a11 + 4 * v106) <= v46)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v108 == 2)
            {
              *(v54 + 4 * v69++) = v106;
            }
          }

          --v104;
        }

        while (v104);
      }

      ++v80;
    }

    while (v80 < v69);
  }

  *a7 = v69;
  if (v51 >= 1)
  {
    v109 = 0;
    v110 = v52 - *a5;
    v111 = *a6;
    do
    {
      v112 = *(v55 + 4 * v109);
      if (*(v16 + 4 * v112) >= *a7)
      {
        v113 = (*(a1 + 1) + 8 * v112);
        v114 = *v113;
        v115 = v113[1];
        if (v114 >= v115)
        {
          v120 = -1;
        }

        else
        {
          do
          {
            while (1)
            {
              v116 = *(*(a1 + 2) + 4 * v114);
              if ((v116 & 0x80000000) == 0 && v116 < *a1)
              {
                v117 = *(a11 + 4 * v116);
                if (v117 <= v46 && v117 >= *a7)
                {
                  break;
                }
              }

              if (++v114 >= v115)
              {
                goto LABEL_122;
              }
            }

            ++v114;
          }

          while (v117 >= v110 - *a8 && v114 < v115);
LABEL_122:
          v120 = v116;
        }

        v121 = *(a11 + 4 * v120);
        v122 = v110 + ~*a8;
        v123 = *(a9 + 4 * v121);
        v124 = *(a9 + 4 * v122);
        v125 = *(a11 + 4 * v123);
        *(a11 + 4 * v123) = *(a11 + 4 * v124);
        *(a11 + 4 * v124) = v125;
        LODWORD(v123) = *(a9 + 4 * v121);
        *(a9 + 4 * v121) = *(a9 + 4 * v122);
        *(a9 + 4 * v122) = v123;
        v126 = *(v16 + 4 * v112);
        LODWORD(v121) = v110 + ~*a8;
        v127 = *(a10 + 4 * v126);
        v128 = *(a10 + 4 * v121);
        LODWORD(v124) = *(v16 + 4 * v127);
        *(v16 + 4 * v127) = *(v16 + 4 * v128);
        *(v16 + 4 * v128) = v124;
        LODWORD(v127) = *(a10 + 4 * v126);
        *(a10 + 4 * v126) = *(a10 + 4 * v121);
        *(a10 + 4 * v121) = v127;
        ++*a8;
        v129 = &v65[v120];
        v131 = *v129;
        v130 = v129[1];
        v91 = v130 <= v131;
        v132 = v130 - v131;
        if (!v91)
        {
          v133 = (*(v53 + 16) + 4 * v131);
          do
          {
            v135 = *v133++;
            v134 = v135;
            v136 = *(v16 + 4 * v135);
            if (v136 >= *a7 && v136 < v145 - v111 - *a8)
            {
              v137 = *&v56[4 * v134];
              *&v56[4 * v134] = v137 - 1;
              if (v137 == 2)
              {
                *(v55 + 4 * v51++) = v134;
              }

              else if (v137 == 1)
              {
                return 0xFFFFFFFFLL;
              }
            }

            --v132;
          }

          while (v132);
        }
      }

      ++v109;
    }

    while (v109 < v51);
  }

  return 0;
}

void sub_236751728(uint64_t a1, float *__b, char *a3)
{
  v4 = __b;
  v6 = *(a1 + 4);
  v7 = *(a1 + 28);
  v8 = (v7 * v7);
  v76 = v6;
  v9 = (v6 * v7);
  if (v9 >= 1)
  {
    memset_pattern16(__b, &unk_23681FB80, 4 * (v6 * v7));
  }

  v72 = 4 * v9;
  v73 = v9;
  v10 = 0;
  v11 = v7 + 1;
  v12 = 4 * (v7 * v7);
  v13 = 4 * v7;
  do
  {
    while (1)
    {
      v74 = v10;
      if (v9 >= 1)
      {
        bzero(a3, v72);
      }

      if (v76 >= 1)
      {
        v14 = 0;
        v75 = *(a1 + 8);
        v15 = *v75;
        while (1)
        {
          v16 = v14 + 1;
          v17 = v75[v14 + 1];
          if (v15 < v17)
          {
            break;
          }

LABEL_51:
          v15 = v17;
          ++v14;
          if (v16 == v76)
          {
            goto LABEL_52;
          }
        }

        v18 = *(a1 + 16);
        v19 = v14 * v7;
        v20 = v12 * v15;
        v21 = v12 * v15 + 4;
        while (1)
        {
          v22 = *(v18 + 4 * v15);
          v23 = *(v18 + 4 * v15);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v14 <= v22 && v23 < *a1)
            {
              v36 = *(a1 + 32);
              v25 = (v36 + 4 * v15 * v8);
              if (v14 == v22)
              {
                if (v7)
                {
                  v37 = 0;
                  v38 = (v36 + v21);
                  v39 = &v4[v23 * v7 + 1];
                  v40 = &a3[4 * v23 * v7 + 4];
                  v41 = v7 - 1;
                  do
                  {
                    v42 = v37 + 1;
                    v43 = v37 + v19;
                    v44 = v41;
                    v45 = v40;
                    v46 = v39;
                    v47 = v38;
                    if (v37 + 1 < v7)
                    {
                      do
                      {
                        v48 = *v46++;
                        v49 = v48;
                        v50 = *v47++;
                        v51 = v4[v43] * (v49 * fabsf(v50));
                        v52 = *v45;
                        if (v51 > *v45)
                        {
                          v52 = v51;
                        }

                        *v45++ = v52;
                        if (v51 <= *&a3[4 * v43])
                        {
                          v51 = *&a3[4 * v43];
                        }

                        *&a3[4 * v43] = v51;
                        --v44;
                      }

                      while (v44);
                    }

                    v53 = v4[v43] * (v4[v43] * fabsf(v25[v37 * v11]));
                    if (v53 <= *&a3[4 * v43])
                    {
                      v53 = *&a3[4 * v43];
                    }

                    *&a3[4 * v43] = v53;
                    v38 = (v38 + v13 + 4);
                    v39 += 4;
                    ++v40;
                    --v41;
                    ++v37;
                  }

                  while (v42 != v7);
                }

                goto LABEL_50;
              }

LABEL_41:
              if (v7)
              {
                v54 = 0;
                v55 = v23 * v7;
                v56 = &v4[v23 * v7];
                v57 = &a3[4 * v55];
                do
                {
                  v58 = v54 + v19;
                  v59 = v7;
                  v60 = v57;
                  v61 = v56;
                  v62 = v25;
                  do
                  {
                    v63 = *v61++;
                    v64 = v63;
                    v65 = *v62++;
                    v66 = v4[v58] * (v64 * fabsf(v65));
                    v67 = *v60;
                    if (v66 > *v60)
                    {
                      v67 = v66;
                    }

                    *v60++ = v67;
                    if (v66 <= *&a3[4 * v58])
                    {
                      v66 = *&a3[4 * v58];
                    }

                    *&a3[4 * v58] = v66;
                    --v59;
                  }

                  while (v59);
                  ++v54;
                  v25 = (v25 + v13);
                }

                while (v54 != v7);
              }
            }
          }

          else if (v14 >= v22)
          {
            v24 = *(a1 + 32);
            v25 = (v24 + 4 * v15 * v8);
            if (v14 != v22)
            {
              goto LABEL_41;
            }

            if (v7)
            {
              v26 = 0;
              v27 = v22 * v7;
              v28 = v24 + v20;
              v29 = &v4[v22 * v7];
              v30 = &a3[4 * v27];
              do
              {
                v31 = v14 * v7;
                if (v26)
                {
                  v32 = 0;
                  v31 = v26 + v19;
                  do
                  {
                    v33 = v4[v31] * (v29[v32] * fabsf(*(v28 + 4 * v32)));
                    v34 = *&v30[4 * v32];
                    if (v33 > v34)
                    {
                      v34 = v33;
                    }

                    *&v30[4 * v32] = v34;
                    if (v33 <= *&a3[4 * v31])
                    {
                      v33 = *&a3[4 * v31];
                    }

                    *&a3[4 * v31] = v33;
                    ++v32;
                  }

                  while (v26 != v32);
                }

                v35 = v4[v31] * (v4[v31] * fabsf(v25[v26 * v11]));
                if (v35 <= *&a3[4 * v31])
                {
                  v35 = *&a3[4 * v31];
                }

                *&a3[4 * v31] = v35;
                ++v26;
                v28 += v13;
              }

              while (v26 != v7);
            }
          }

LABEL_50:
          ++v15;
          v21 += v12;
          v20 += v12;
          if (v15 == v17)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      v9 = v73;
      v68 = v73;
      v69 = a3;
      v70 = v4;
      if (v73 >= 1)
      {
        break;
      }

      v10 = v74 + 1;
      if (v74 == 2)
      {
        return;
      }
    }

    do
    {
      if (*v69 == 0.0)
      {
        *v70 = INFINITY;
      }

      else
      {
        v71 = *v70 / sqrt(*v69);
        *v70 = v71;
      }

      ++v70;
      ++v69;
      --v68;
    }

    while (v68);
    v10 = v74 + 1;
  }

  while (v74 != 2);
  do
  {
    if (fabsf(*v4) == INFINITY)
    {
      *v4 = 1.0;
    }

    ++v4;
    --v9;
  }

  while (v9);
}

void sub_236751B4C(int *a1, uint64_t a2, uint64_t a3, float *__b, char *a5, char *a6)
{
  v8 = __b;
  v11 = a1[1];
  v12 = *a1;
  v13 = *(a1 + 28);
  LODWORD(v14) = v12 * v13;
  v55 = v12 * v13;
  v57 = v11;
  if (v12 * v13 >= 1)
  {
    memset_pattern16(__b, &unk_23681FB80, 4 * (v12 * v13));
    LODWORD(v14) = v12 * v13;
  }

  v15 = (v11 * v13);
  v16 = 4 * v15;
  v56 = v15;
  if (v15 >= 1)
  {
    memset_pattern16(a5, &unk_23681FB80, 4 * (v11 * v13));
    v15 = (v11 * v13);
    LODWORD(v14) = v12 * v13;
  }

  v17 = 0;
  v52 = 4 * v14;
  v53 = v16;
  v18 = 4 * (v13 * v13);
  v19 = &a6[4 * v12];
  do
  {
    v58 = v17;
    if (v14 >= 1)
    {
      bzero(a6, v52);
      v15 = v56;
      v11 = v57;
    }

    if (v15 >= 1)
    {
      bzero(&a6[4 * v12], v53);
      v15 = v56;
      v11 = v57;
    }

    if (v11 >= 1)
    {
      v20 = 0;
      v21 = *(a1 + 1);
      do
      {
        if (a3)
        {
          v22 = *(a3 + 4 * v20);
        }

        else
        {
          v22 = v20;
        }

        v23 = *(v21 + 8 * v20++);
        v24 = *(v21 + 8 * v20);
        if (v23 < v24)
        {
          v25 = *(a1 + 2);
          v26 = v13 * v22;
          v27 = v18 * v23;
          do
          {
            v28 = *(v25 + 4 * v23);
            if ((v28 & 0x80000000) == 0 && v28 < v12)
            {
              if (a2)
              {
                v28 = *(a2 + 4 * v28);
              }

              if (v13)
              {
                v29 = 0;
                v30 = v28 * v13;
                v31 = (*(a1 + 4) + v27);
                v32 = &v8[v30];
                v33 = &a6[4 * v30];
                do
                {
                  v34 = v29 + v26;
                  v35 = v13;
                  v36 = v33;
                  v37 = v32;
                  v38 = v31;
                  do
                  {
                    v39 = *v37++;
                    v40 = v39;
                    v41 = *v38++;
                    v42 = *&a5[4 * v34] * (v40 * fabsf(v41));
                    v43 = *v36;
                    if (v42 > *v36)
                    {
                      v43 = v42;
                    }

                    *v36++ = v43;
                    if (v42 <= *&v19[4 * v34])
                    {
                      v42 = *&v19[4 * v34];
                    }

                    *&v19[4 * v34] = v42;
                    --v35;
                  }

                  while (v35);
                  ++v29;
                  v31 += v13;
                }

                while (v29 != v13);
              }
            }

            ++v23;
            v27 += v18;
          }

          while (v23 != v24);
        }
      }

      while (v20 != v11);
    }

    v14 = (v12 * v13);
    v44 = v14;
    v45 = a6;
    v46 = v8;
    if (v55 >= 1)
    {
      do
      {
        if (*v45 == 0.0)
        {
          *v46 = INFINITY;
        }

        else
        {
          v47 = *v46 / sqrt(*v45);
          *v46 = v47;
        }

        ++v46;
        ++v45;
        --v44;
      }

      while (v44);
    }

    v48 = v15;
    v49 = &a6[4 * v12];
    v50 = a5;
    if (v15 >= 1)
    {
      do
      {
        if (*v49 == 0.0)
        {
          *v50 = INFINITY;
        }

        else
        {
          v51 = *v50 / sqrt(*v49);
          *v50 = v51;
        }

        ++v50;
        ++v49;
        --v48;
      }

      while (v48);
    }

    v17 = v58 + 1;
  }

  while (v58 != 2);
  if (v55 >= 1)
  {
    do
    {
      if (fabsf(*v8) == INFINITY)
      {
        *v8 = 1.0;
      }

      ++v8;
      --v14;
    }

    while (v14);
  }

  if (v15 >= 1)
  {
    do
    {
      if (fabsf(*a5) == INFINITY)
      {
        *a5 = 1065353216;
      }

      a5 += 4;
      --v15;
    }

    while (v15);
  }
}

void _SparseSpMV_Double(double alpha, SparseMatrix_Double *A, DenseMatrix_Double *x, BOOL accumulate, DenseMatrix_Double *y)
{
  v5 = 4;
  if (*&y->attributes)
  {
    v5 = 0;
  }

  v314 = *(&y->rowCount + v5);
  v6 = *(&A->structure.blockSize + 2);
  rowIndices = A->structure.rowIndices;
  data = A->data;
  v297 = data;
  columnStarts = A->structure.columnStarts;
  if (!accumulate && v314 >= 1)
  {
    v8 = 0;
    v9 = 4;
    if ((*&A->structure.attributes & 1) == 0)
    {
      v9 = 0;
    }

    v10 = *(&A->structure.rowCount + v9) * v6;
    do
    {
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = y->data;
        columnStride = y->columnStride;
        do
        {
          if (*&y->attributes)
          {
            v14 = v11;
          }

          else
          {
            v14 = v8;
          }

          if (*&y->attributes)
          {
            v15 = v8;
          }

          else
          {
            v15 = v11;
          }

          v12[v15 + columnStride * v14] = 0.0;
          ++v11;
        }

        while (v10 != v11);
      }

      ++v8;
    }

    while (v8 != v314);
  }

  v295 = (v6 * v6);
  v16 = (*&A->structure.attributes >> 2) & 3;
  if ((v16 - 1) >= 2)
  {
    if (v16)
    {
      columnCount = A->structure.columnCount;
      if (columnCount >= 1)
      {
        v159 = 0;
        v160 = 0;
        v316 = v6 + 1;
        v161 = *columnStarts;
        v302 = 8 * v295;
        v162 = 8 * v6;
        v300 = 1;
        do
        {
          v304 = v160;
          v296 = v160 + 1;
          v303 = columnStarts[v160 + 1];
          if (v161 < v303)
          {
            v163 = v160 * v6;
            v307 = (v297 + v302 * v161);
            v306 = v297 + v302 * v161 + 8;
            do
            {
              v305 = v161;
              v164 = rowIndices[v161];
              v165 = *&A->structure.attributes;
              if ((v165 & 2) == 0 || v304 <= v164)
              {
                v166 = v304 < v164 && (*&A->structure.attributes & 2) == 0;
                if (!v166 && (v164 & 0x80000000) == 0 && v164 < A->structure.rowCount)
                {
                  if (v304 == v164)
                  {
                    v167 = &v297[v161 * v295];
                    if ((v165 & 2) != 0)
                    {
                      if (v314 >= 1)
                      {
                        v168 = 0;
                        v169 = v164 * v6;
                        v299 = v164 * v6 + 1;
                        v301 = v159;
                        do
                        {
                          if (v6)
                          {
                            v170 = 0;
                            v171 = x->data;
                            v313 = y->columnStride;
                            v172 = y->data;
                            v173 = v6 - 1;
                            v175 = v299;
                            v174 = v300;
                            v176 = v306;
                            do
                            {
                              v177 = v167;
                              v178 = v170 + 1;
                              if (v170 + 1 < v6)
                              {
                                v179 = x->columnStride;
                                v180 = y->columnStride;
                                v181 = v175 + v168 * v180;
                                v182 = v168 + v180 * v175;
                                v183 = v174 + v168 * v179;
                                v184 = v168 + v179 * v174;
                                v185 = v173;
                                v186 = v176;
                                do
                                {
                                  if (*&x->attributes)
                                  {
                                    v187 = v170 + v163;
                                  }

                                  else
                                  {
                                    v187 = v168;
                                  }

                                  if (*&x->attributes)
                                  {
                                    v188 = v168;
                                  }

                                  else
                                  {
                                    v188 = v170 + v163;
                                  }

                                  v189 = v171[v188 + v179 * v187];
                                  if (*&y->attributes)
                                  {
                                    v190 = v182;
                                  }

                                  else
                                  {
                                    v190 = v181;
                                  }

                                  v172[v190] = v172[v190] + *v186 * alpha * v189;
                                  v191 = *v186++;
                                  v192 = v191 * alpha;
                                  if (*&x->attributes)
                                  {
                                    v193 = v184;
                                  }

                                  else
                                  {
                                    v193 = v183;
                                  }

                                  v194 = v171[v193];
                                  if (*&y->attributes)
                                  {
                                    v195 = v169 + v170;
                                  }

                                  else
                                  {
                                    v195 = v168;
                                  }

                                  if (*&y->attributes)
                                  {
                                    v196 = v168;
                                  }

                                  else
                                  {
                                    v196 = v169 + v170;
                                  }

                                  v172[v196 + v180 * v195] = v172[v196 + v180 * v195] + v192 * v194;
                                  ++v181;
                                  v182 += v180;
                                  ++v183;
                                  v184 += v179;
                                  --v185;
                                }

                                while (v185);
                              }

                              v167 = v177;
                              if (*&x->attributes)
                              {
                                v197 = v168 + x->columnStride * (v170 + v163);
                              }

                              else
                              {
                                v197 = v170 + v163 + x->columnStride * v168;
                              }

                              v198 = v171[v197];
                              if (*&y->attributes)
                              {
                                v199 = v168 + v313 * (v169 + v170);
                              }

                              else
                              {
                                v199 = v169 + v170 + v313 * v168;
                              }

                              v172[v199] = v172[v199] + v177[v170 * v316] * alpha * v198;
                              v176 += v6 + 1;
                              ++v175;
                              ++v174;
                              --v173;
                              ++v170;
                            }

                            while (v178 != v6);
                          }

                          ++v168;
                          v159 = v301;
                        }

                        while (v168 != v314);
                      }
                    }

                    else if (v314 >= 1)
                    {
                      v237 = 0;
                      v238 = v164 * v6;
                      v239 = v6 * v164;
                      do
                      {
                        if (v6)
                        {
                          v240 = 0;
                          v241 = x->data;
                          v242 = y->data;
                          v243 = y->columnStride;
                          v244 = v307;
                          do
                          {
                            if (v240)
                            {
                              v245 = x->columnStride;
                              v246 = y->columnStride;
                              v247 = v238 + v237 * v246;
                              v248 = v237 + v239 * v246;
                              v249 = v159 + v237 * v245;
                              v250 = v237 + v159 * v245;
                              v251 = v240;
                              v252 = v244;
                              do
                              {
                                if (*&x->attributes)
                                {
                                  v253 = v240 + v163;
                                }

                                else
                                {
                                  v253 = v237;
                                }

                                if (*&x->attributes)
                                {
                                  v254 = v237;
                                }

                                else
                                {
                                  v254 = v240 + v163;
                                }

                                v255 = v241[v254 + v245 * v253];
                                if (*&y->attributes)
                                {
                                  v256 = v248;
                                }

                                else
                                {
                                  v256 = v247;
                                }

                                v242[v256] = v242[v256] + *v252 * alpha * v255;
                                v257 = *v252++;
                                v258 = v257 * alpha;
                                if (*&x->attributes)
                                {
                                  v259 = v250;
                                }

                                else
                                {
                                  v259 = v249;
                                }

                                v260 = v241[v259];
                                if (*&y->attributes)
                                {
                                  v261 = v238 + v240;
                                }

                                else
                                {
                                  v261 = v237;
                                }

                                if (*&y->attributes)
                                {
                                  v262 = v237;
                                }

                                else
                                {
                                  v262 = v238 + v240;
                                }

                                v242[v262 + v246 * v261] = v242[v262 + v246 * v261] + v258 * v260;
                                ++v247;
                                v248 += v246;
                                ++v249;
                                v250 += v245;
                                --v251;
                              }

                              while (v251);
                            }

                            if (*&x->attributes)
                            {
                              v263 = v237 + x->columnStride * (v240 + v163);
                            }

                            else
                            {
                              v263 = v240 + v163 + x->columnStride * v237;
                            }

                            v264 = v241[v263];
                            if (*&y->attributes)
                            {
                              v265 = v237 + v243 * (v238 + v240);
                            }

                            else
                            {
                              v265 = v238 + v240 + v243 * v237;
                            }

                            v242[v265] = v242[v265] + v167[v240 * v316] * alpha * v264;
                            ++v240;
                            v244 = (v244 + v162);
                          }

                          while (v240 != v6);
                        }

                        ++v237;
                      }

                      while (v237 != v314);
                    }
                  }

                  else if (v314 >= 1)
                  {
                    v200 = 0;
                    v201 = v164 * v6;
                    do
                    {
                      if (v6)
                      {
                        v202 = 0;
                        v203 = x->data;
                        v204 = y->data;
                        v205 = x->columnStride;
                        v206 = y->columnStride;
                        v207 = v307;
                        do
                        {
                          v208 = v6;
                          v209 = v200 + v201 * v206;
                          v210 = v201 + v206 * v200;
                          v211 = v207;
                          do
                          {
                            v212 = *v211++;
                            v213 = v212;
                            if (*&x->attributes)
                            {
                              v214 = v202 + v163;
                            }

                            else
                            {
                              v214 = v200;
                            }

                            if (*&x->attributes)
                            {
                              v215 = v200;
                            }

                            else
                            {
                              v215 = v202 + v163;
                            }

                            v216 = v203[v215 + v205 * v214];
                            v217 = v213 * alpha;
                            if (*&y->attributes)
                            {
                              v218 = v209;
                            }

                            else
                            {
                              v218 = v210;
                            }

                            v204[v218] = v204[v218] + v217 * v216;
                            ++v210;
                            v209 += v206;
                            --v208;
                          }

                          while (v208);
                          ++v202;
                          v207 = (v207 + v162);
                        }

                        while (v202 != v6);
                      }

                      ++v200;
                    }

                    while (v200 != v314);
                    v219 = 0;
                    v220 = v6 * v164;
                    do
                    {
                      if (v6)
                      {
                        v221 = 0;
                        v222 = x->data;
                        v223 = y->data;
                        v224 = x->columnStride;
                        v225 = y->columnStride;
                        v226 = v307;
                        do
                        {
                          v227 = v6;
                          v228 = v219 + v220 * v224;
                          v229 = v201 + v224 * v219;
                          v230 = v226;
                          do
                          {
                            v231 = *v230++;
                            v232 = v231 * alpha;
                            if (*&x->attributes)
                            {
                              v233 = v228;
                            }

                            else
                            {
                              v233 = v229;
                            }

                            v234 = v222[v233];
                            if (*&y->attributes)
                            {
                              v235 = v221 + v163;
                            }

                            else
                            {
                              v235 = v219;
                            }

                            if (*&y->attributes)
                            {
                              v236 = v219;
                            }

                            else
                            {
                              v236 = v221 + v163;
                            }

                            v223[v236 + v225 * v235] = v223[v236 + v225 * v235] + v232 * v234;
                            ++v229;
                            v228 += v224;
                            --v227;
                          }

                          while (v227);
                          ++v221;
                          v226 = (v226 + v162);
                        }

                        while (v221 != v6);
                      }

                      ++v219;
                    }

                    while (v219 != v314);
                  }
                }
              }

              v161 = v305 + 1;
              v307 = (v307 + v302);
              v306 += v302;
            }

            while (v305 + 1 != v303);
          }

          v159 += v6;
          v300 += v6;
          v161 = v303;
          v160 = v296;
        }

        while (v296 != columnCount);
      }
    }

    else
    {
      v73 = A->structure.columnCount;
      if (*&A->structure.attributes)
      {
        if (v73 >= 1)
        {
          v74 = 0;
          v75 = *columnStarts;
          v76 = 8 * v295;
          do
          {
            v77 = v74 + 1;
            v78 = columnStarts[v74 + 1];
            if (v75 < v78)
            {
              v79 = v74 * v6;
              v80 = (v297 + v76 * v75);
              do
              {
                v81 = rowIndices[v75];
                if ((v81 & 0x80000000) == 0 && v81 < A->structure.rowCount && v314 >= 1)
                {
                  v83 = 0;
                  v84 = v81 * v6;
                  do
                  {
                    if (v6)
                    {
                      v85 = 0;
                      v86 = x->data;
                      v87 = y->data;
                      v88 = x->columnStride;
                      v89 = y->columnStride;
                      v90 = v80;
                      do
                      {
                        v91 = v6;
                        v92 = v83 + v84 * v88;
                        v93 = v84 + v88 * v83;
                        v94 = v90;
                        do
                        {
                          v95 = *v94++;
                          v96 = v95 * alpha;
                          if (*&x->attributes)
                          {
                            v97 = v92;
                          }

                          else
                          {
                            v97 = v93;
                          }

                          v98 = v86[v97];
                          if (*&y->attributes)
                          {
                            v99 = v85 + v79;
                          }

                          else
                          {
                            v99 = v83;
                          }

                          if (*&y->attributes)
                          {
                            v100 = v83;
                          }

                          else
                          {
                            v100 = v85 + v79;
                          }

                          v87[v100 + v89 * v99] = v87[v100 + v89 * v99] + v96 * v98;
                          ++v93;
                          v92 += v88;
                          --v91;
                        }

                        while (v91);
                        ++v85;
                        v90 += v6;
                      }

                      while (v85 != v6);
                    }

                    ++v83;
                  }

                  while (v83 != v314);
                }

                ++v75;
                v80 = (v80 + v76);
              }

              while (v75 != v78);
            }

            v75 = v78;
            v74 = v77;
          }

          while (v77 != v73);
        }
      }

      else if (v73 >= 1)
      {
        v266 = 0;
        v267 = *columnStarts;
        v268 = 8 * v295;
        do
        {
          v269 = v266 + 1;
          v270 = columnStarts[v266 + 1];
          if (v267 < v270)
          {
            v271 = v266 * v6;
            v272 = (v297 + v268 * v267);
            do
            {
              v273 = rowIndices[v267];
              if ((v273 & 0x80000000) == 0 && v273 < A->structure.rowCount && v314 >= 1)
              {
                v275 = 0;
                v276 = v273 * v6;
                do
                {
                  if (v6)
                  {
                    v277 = 0;
                    v278 = x->data;
                    v279 = y->data;
                    v280 = x->columnStride;
                    v281 = y->columnStride;
                    v282 = v272;
                    do
                    {
                      v283 = v6;
                      v284 = v275 + v276 * v281;
                      v285 = v276 + v281 * v275;
                      v286 = v282;
                      do
                      {
                        v287 = *v286++;
                        v288 = v287;
                        if (*&x->attributes)
                        {
                          v289 = v277 + v271;
                        }

                        else
                        {
                          v289 = v275;
                        }

                        if (*&x->attributes)
                        {
                          v290 = v275;
                        }

                        else
                        {
                          v290 = v277 + v271;
                        }

                        v291 = v278[v290 + v280 * v289];
                        v292 = v288 * alpha;
                        if (*&y->attributes)
                        {
                          v293 = v284;
                        }

                        else
                        {
                          v293 = v285;
                        }

                        v279[v293] = v279[v293] + v292 * v291;
                        ++v285;
                        v284 += v281;
                        --v283;
                      }

                      while (v283);
                      ++v277;
                      v282 += v6;
                    }

                    while (v277 != v6);
                  }

                  ++v275;
                }

                while (v275 != v314);
              }

              ++v267;
              v272 = (v272 + v268);
            }

            while (v267 != v270);
          }

          v267 = v270;
          v266 = v269;
        }

        while (v269 != v73);
      }
    }

    return;
  }

  v315 = A->structure.columnCount;
  if ((*&A->structure.attributes & 1) == 0)
  {
    if (v315 < 1)
    {
      return;
    }

    v101 = 0;
    v102 = 0;
    v103 = *columnStarts;
    v104 = 8 * (v6 * v6);
    v105 = 8 * v6;
    while (1)
    {
      v312 = v101;
      v310 = v102 + 1;
      v106 = columnStarts[v102 + 1];
      if (v103 < v106)
      {
        break;
      }

LABEL_177:
      if ((*&A->structure.attributes & 0xC) == 8 && v314 >= 1)
      {
        v152 = 0;
        do
        {
          if (v6)
          {
            v153 = x->data;
            v154 = y->data;
            v155 = v6;
            v156 = v312;
            do
            {
              if (*&x->attributes)
              {
                v157 = v152 + x->columnStride * v156;
              }

              else
              {
                v157 = v156 + v152 * x->columnStride;
              }

              if (*&y->attributes)
              {
                v158 = v152 + y->columnStride * v156;
              }

              else
              {
                v158 = v156 + v152 * y->columnStride;
              }

              v154[v158] = v154[v158] + alpha * v153[v157];
              ++v156;
              --v155;
            }

            while (v155);
          }

          ++v152;
        }

        while (v152 != v314);
      }

      v101 = v312 + v6;
      v103 = v106;
      v102 = v310;
      if (v310 == v315)
      {
        return;
      }
    }

    v107 = v102 * v6;
    v108 = (v297 + v104 * v103);
    while (1)
    {
      v109 = rowIndices[v103];
      v110 = *&A->structure.attributes;
      if (((v110 & 2) == 0 || v102 <= v109) && v109 < A->structure.rowCount)
      {
        if ((v110 & 2) != 0)
        {
          if ((v109 & 0x80000000) == 0)
          {
LABEL_133:
            if (v109 == v102)
            {
              if (v314 >= 1)
              {
                v111 = 0;
                v112 = (v110 & 0xC) == 8;
                v113 = v109 * v6;
                do
                {
                  if (v6)
                  {
                    v114 = 0;
                    v115 = v108;
                    do
                    {
                      v116 = (v114 + v112) & (v110 << 30 >> 31);
                      v117 = v114 + 1;
                      v118 = v114 + 1 - v112;
                      if ((v110 & 2) != 0)
                      {
                        v119 = v6;
                      }

                      else
                      {
                        v119 = v114 + 1 - v112;
                      }

                      if (v116 < v119)
                      {
                        v120 = x->data;
                        v121 = v114 + v107;
                        v122 = y->data;
                        v123 = x->columnStride;
                        v124 = y->columnStride;
                        v125 = v111 + v124 * (v113 + v116);
                        do
                        {
                          if (*&x->attributes)
                          {
                            v126 = v121;
                          }

                          else
                          {
                            v126 = v111;
                          }

                          if (*&x->attributes)
                          {
                            v127 = v111;
                          }

                          else
                          {
                            v127 = v121;
                          }

                          v128 = v120[v127 + v123 * v126];
                          if (*&y->attributes)
                          {
                            v129 = v125;
                          }

                          else
                          {
                            v129 = v113 + v111 * v124 + v116;
                          }

                          v122[v129] = v122[v129] + v115[v116++] * alpha * v128;
                          v110 = *&A->structure.attributes;
                          if ((v110 & 2) != 0)
                          {
                            v130 = v6;
                          }

                          else
                          {
                            v130 = v118;
                          }

                          v125 += v124;
                        }

                        while (v116 < v130);
                      }

                      v115 = (v115 + v105);
                      v114 = v117;
                    }

                    while (v117 != v6);
                  }

                  ++v111;
                }

                while (v111 != v314);
              }
            }

            else if (v314 >= 1)
            {
              v131 = 0;
              v132 = v109 * v6;
              v133 = v6 * v109;
              do
              {
                if (v6)
                {
                  v134 = 0;
                  v135 = x->data;
                  v136 = y->data;
                  v137 = x->columnStride;
                  v138 = y->columnStride;
                  v139 = v108;
                  do
                  {
                    v140 = v6;
                    v141 = v131 + v133 * v138;
                    v142 = v132 + v138 * v131;
                    v143 = v139;
                    do
                    {
                      v144 = *v143++;
                      v145 = v144;
                      if (*&x->attributes)
                      {
                        v146 = v134 + v107;
                      }

                      else
                      {
                        v146 = v131;
                      }

                      if (*&x->attributes)
                      {
                        v147 = v131;
                      }

                      else
                      {
                        v147 = v134 + v107;
                      }

                      v148 = v135[v147 + v137 * v146];
                      v149 = v145 * alpha;
                      if (*&y->attributes)
                      {
                        v150 = v141;
                      }

                      else
                      {
                        v150 = v142;
                      }

                      v136[v150] = v136[v150] + v149 * v148;
                      ++v142;
                      v141 += v138;
                      --v140;
                    }

                    while (v140);
                    ++v134;
                    v139 = (v139 + v105);
                  }

                  while (v134 != v6);
                }

                ++v131;
              }

              while (v131 != v314);
            }
          }
        }

        else if (v102 >= v109)
        {
          goto LABEL_133;
        }
      }

      ++v103;
      v108 = (v108 + v104);
      if (v103 == v106)
      {
        goto LABEL_177;
      }
    }
  }

  if (v315 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = *columnStarts;
    v20 = 8 * (v6 * v6);
    v21 = 8 * v6;
    while (1)
    {
      v311 = v17;
      v309 = v18 + 1;
      v22 = columnStarts[v18 + 1];
      if (v19 < v22)
      {
        break;
      }

LABEL_75:
      if ((*&A->structure.attributes & 0xC) == 8 && v314 >= 1)
      {
        v66 = 0;
        do
        {
          if (v6)
          {
            v67 = x->data;
            v68 = y->data;
            v69 = v6;
            v70 = v311;
            do
            {
              if (*&x->attributes)
              {
                v71 = v66 + x->columnStride * v70;
              }

              else
              {
                v71 = v70 + v66 * x->columnStride;
              }

              if (*&y->attributes)
              {
                v72 = v66 + y->columnStride * v70;
              }

              else
              {
                v72 = v70 + v66 * y->columnStride;
              }

              v68[v72] = v68[v72] + alpha * v67[v71];
              ++v70;
              --v69;
            }

            while (v69);
          }

          ++v66;
        }

        while (v66 != v314);
      }

      v17 = v311 + v6;
      v19 = v22;
      v18 = v309;
      if (v309 == v315)
      {
        return;
      }
    }

    v23 = v18 * v6;
    v24 = (v297 + v20 * v19);
    while (1)
    {
      v25 = rowIndices[v19];
      v26 = *&A->structure.attributes;
      if (((v26 & 2) == 0 || v18 <= v25) && v25 < A->structure.rowCount)
      {
        if ((v26 & 2) != 0)
        {
          if ((v25 & 0x80000000) == 0)
          {
LABEL_31:
            if (v25 == v18)
            {
              if (v314 >= 1)
              {
                v27 = 0;
                v28 = (v26 & 0xC) == 8;
                v29 = v25 * v6;
                do
                {
                  if (v6)
                  {
                    v30 = 0;
                    v31 = v24;
                    do
                    {
                      v32 = (v30 + v28) & (v26 << 30 >> 31);
                      v33 = v30 + 1;
                      v34 = v30 + 1 - v28;
                      if ((v26 & 2) != 0)
                      {
                        v35 = v6;
                      }

                      else
                      {
                        v35 = v30 + 1 - v28;
                      }

                      if (v32 < v35)
                      {
                        v36 = x->data;
                        v37 = y->data;
                        v38 = v30 + v23;
                        v39 = x->columnStride;
                        v40 = y->columnStride;
                        v41 = v27 + v39 * (v29 + v32);
                        do
                        {
                          if (*&x->attributes)
                          {
                            v42 = v41;
                          }

                          else
                          {
                            v42 = v29 + v27 * v39 + v32;
                          }

                          if (*&y->attributes)
                          {
                            v43 = v38;
                          }

                          else
                          {
                            v43 = v27;
                          }

                          if (*&y->attributes)
                          {
                            v44 = v27;
                          }

                          else
                          {
                            v44 = v38;
                          }

                          v37[v44 + v40 * v43] = v37[v44 + v40 * v43] + v31[v32++] * alpha * v36[v42];
                          v26 = *&A->structure.attributes;
                          if ((v26 & 2) != 0)
                          {
                            v45 = v6;
                          }

                          else
                          {
                            v45 = v34;
                          }

                          v41 += v39;
                        }

                        while (v32 < v45);
                      }

                      v31 = (v31 + v21);
                      v30 = v33;
                    }

                    while (v33 != v6);
                  }

                  ++v27;
                }

                while (v27 != v314);
              }
            }

            else if (v314 >= 1)
            {
              v46 = 0;
              v47 = v25 * v6;
              v48 = v6 * v25;
              do
              {
                if (v6)
                {
                  v49 = 0;
                  v50 = x->data;
                  v51 = y->data;
                  v52 = x->columnStride;
                  v53 = y->columnStride;
                  v54 = v24;
                  do
                  {
                    v55 = v6;
                    v56 = v46 + v48 * v52;
                    v57 = v47 + v52 * v46;
                    v58 = v54;
                    do
                    {
                      v59 = *v58++;
                      v60 = v59 * alpha;
                      if (*&x->attributes)
                      {
                        v61 = v56;
                      }

                      else
                      {
                        v61 = v57;
                      }

                      v62 = v50[v61];
                      if (*&y->attributes)
                      {
                        v63 = v49 + v23;
                      }

                      else
                      {
                        v63 = v46;
                      }

                      if (*&y->attributes)
                      {
                        v64 = v46;
                      }

                      else
                      {
                        v64 = v49 + v23;
                      }

                      v51[v64 + v53 * v63] = v51[v64 + v53 * v63] + v60 * v62;
                      ++v57;
                      v56 += v52;
                      --v55;
                    }

                    while (v55);
                    ++v49;
                    v54 = (v54 + v21);
                  }

                  while (v49 != v6);
                }

                ++v46;
              }

              while (v46 != v314);
            }
          }
        }

        else if (v18 >= v25)
        {
          goto LABEL_31;
        }
      }

      ++v19;
      v24 = (v24 + v20);
      if (v19 == v22)
      {
        goto LABEL_75;
      }
    }
  }
}

void *sub_236752DB4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v9 = (a2 + 8);
  v8 = *(a2 + 8);
  v10 = 4;
  if (a1)
  {
    v10 = 0;
  }

  v11 = *(a2 + v10);
  *a4 = v11;
  *(a4 + 4) = v11;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 24) = 0;
  *(a4 + 28) = *(a2 + 28);
  result = (*(a3 + 24))(4 * *(v8 + 8 * *(a2 + 4)) + 8 * (v11 + *a2 + 2));
  if (result)
  {
    v79 = v6;
    v80 = (a4 + 8);
    v81 = a3;
    v13 = (v5 + 4);
    v14 = *v5;
    v85 = v5[1];
    v15 = v85;
    v16 = &result[v14 + 2];
    v83 = v16;
    v84 = result;
    v17 = *(v5 + 1);
    v18 = v17[v85];
    v19 = result + 2;
    v82 = result;
    if (v14 >= 1)
    {
      v78 = a4;
      v20 = v9;
      v21 = v17[v85];
      bzero(result + 2, 8 * v14);
      v18 = v21;
      v9 = v20;
      a4 = v78;
      result = v82;
    }

    if (v85 >= 1)
    {
      v22 = 0;
      v23 = *v17;
      do
      {
        v24 = v17[++v22];
        if (v23 < v24)
        {
          v25 = *v13;
          do
          {
            v26 = *(v25 + 4 * v23);
            if ((v26 & 0x80000000) == 0 && v26 < v14)
            {
              ++v19[v26];
              v24 = v17[v22];
            }

            ++v23;
          }

          while (v23 < v24);
        }

        v23 = v24;
      }

      while (v22 != v15);
    }

    result[1] = 0;
    v27 = result + 1;
    *result = 0;
    if (v14 > 1)
    {
      v28 = 0;
      v29 = v14 - 1;
      v30 = result + 2;
      do
      {
        v28 += *v30;
        *v30++ = v28;
        --v29;
      }

      while (v29);
    }

    v31 = v16 + v18;
    if (v15 >= 1)
    {
      v32 = 0;
      v33 = *v17;
      do
      {
        v34 = v32++;
        v35 = v17[v32];
        if (v33 < v35)
        {
          v36 = *v13;
          do
          {
            v37 = *(v36 + 4 * v33);
            if ((v37 & 0x80000000) == 0 && v37 < *v5)
            {
              v38 = v27[v37];
              v27[v37] = v38 + 1;
              *(v16 + v38) = v34;
              v35 = v17[v32];
            }

            ++v33;
          }

          while (v33 < v35);
          LODWORD(v15) = v5[1];
        }

        v33 = v35;
      }

      while (v32 < v15);
    }

    if (v79)
    {
      v39 = v9;
    }

    else
    {
      v39 = &v84;
    }

    if (v79)
    {
      v40 = v5 + 4;
    }

    else
    {
      v40 = &v83;
    }

    if (v79)
    {
      v41 = v5;
    }

    else
    {
      v41 = &v85;
    }

    if (v79)
    {
      v42 = &v84;
    }

    else
    {
      v42 = v9;
    }

    if (v79)
    {
      v43 = &v83;
    }

    else
    {
      v43 = (v5 + 4);
    }

    if (v79)
    {
      v5 = &v85;
    }

    if (v11 < 1)
    {
      v60 = 0;
    }

    else
    {
      memset(v31, 255, 4 * v11);
      v44 = 0;
      v45 = 0;
      v46 = *v42;
      v47 = **v42;
      do
      {
        v31[v44] = v44;
        v48 = v44 + 1;
        v49 = v46[v44 + 1];
        if (v47 < v49)
        {
          v50 = *v43;
          do
          {
            v51 = *(v50 + 4 * v47);
            if ((v51 & 0x80000000) == 0 && v51 < *v5)
            {
              v52 = (*v39 + 8 * v51);
              v54 = *v52;
              v53 = v52[1];
              v55 = v53 <= v54;
              v56 = v53 - v54;
              if (!v55)
              {
                v57 = (*v40 + 4 * v54);
                do
                {
                  v59 = *v57++;
                  v58 = v59;
                  if ((v59 & 0x80000000) == 0 && v58 < *v41)
                  {
                    if (v44 > v31[v58])
                    {
                      ++v45;
                    }

                    v31[v58] = v44;
                  }

                  --v56;
                }

                while (v56);
              }
            }

            ++v47;
          }

          while (v47 != v49);
        }

        v47 = v49;
        ++v44;
      }

      while (v48 != v11);
      v60 = 4 * v45;
    }

    v61 = (*(v81 + 24))(v60 + 8 * v11 + 8);
    *v80 = v61;
    if (v61)
    {
      v62 = (v61 + 8 * v11);
      *(a4 + 16) = v62 + 1;
      if (v11 < 1)
      {
        v64 = 0;
      }

      else
      {
        v63 = 0;
        v64 = 0;
        v65 = *v42;
        do
        {
          *(v61 + 8 * v63) = v64;
          v66 = v11 + v63;
          v31[v63] = v11 + v63;
          v67 = v65[v63++];
          v68 = v65[v63];
          if (v67 < v68)
          {
            v69 = *v43;
            do
            {
              v70 = *(v69 + 4 * v67);
              if ((v70 & 0x80000000) == 0 && v70 < *v5)
              {
                v71 = (*v39 + 8 * v70);
                v72 = *v71;
                v73 = v71[1];
                v55 = v73 <= v72;
                v74 = v73 - v72;
                if (!v55)
                {
                  v75 = (*v40 + 4 * v72);
                  do
                  {
                    v77 = *v75++;
                    v76 = v77;
                    if ((v77 & 0x80000000) == 0 && v76 < *v41)
                    {
                      if (v31[v76] < v66)
                      {
                        *(v62 + v64++ + 2) = v76;
                      }

                      v31[v76] = v66;
                    }

                    --v74;
                  }

                  while (v74);
                }
              }

              ++v67;
            }

            while (v67 != v68);
          }
        }

        while (v63 != v11);
      }

      *v62 = v64;
    }

    return (*(v81 + 32))(v82);
  }

  return result;
}

uint64_t sub_2367531BC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v77 = result;
  v13 = a5[4];
  v14 = a5[1];
  if (v13 < v14)
  {
    v15 = a5[3];
    while (1)
    {
      if (v13 == v15)
      {
        v16 = v15 + a10;
      }

      else
      {
        v16 = v13;
      }

      if (v13 == v15 && v15 + a10 >= v14)
      {
        goto LABEL_101;
      }

      v17 = a5[19];
      if (v17 - v14 + v16 >= 0 && (*(a6[6] + (v17 - v14 + v16)) & 1) != 0)
      {
        goto LABEL_100;
      }

      if (v16 >= v15)
      {
        break;
      }

      if (v16 < 0)
      {
        goto LABEL_19;
      }

      if (*(a5 + 7))
      {
        v18 = *(*(a5 + 8) + 4 * v16);
      }

      else
      {
        v18 = v16 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_21:
      v22 = *(a13 + 4 * v18);
      v23 = *(a2 + 12);
      if (v22 >= v23)
      {
        v25 = *(a2 + 4);
        v26 = v25 - *(a2 + 76);
        if (v22 < v26)
        {
          result = ((v22 - v23) / a8);
          v24 = (v22 - v23) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v77) + 4 * result) * a8;
          goto LABEL_31;
        }

        if (v25 > v22)
        {
          v24 = *(*(a2 + 88) + 4 * (v22 - v26));
          goto LABEL_31;
        }
      }

      else if ((v22 & 0x80000000) == 0)
      {
        if (*(a2 + 56))
        {
          v24 = *(*(a2 + 64) + 4 * v22);
        }

        else
        {
          v24 = v22 + *(a7[22] + 4 * v77) * a8;
        }

        goto LABEL_31;
      }

      v24 = 0x7FFFFFFF;
LABEL_31:
      if (v24 == v18)
      {
        v27 = (v22 - v23);
        if (v22 - v23 >= 0)
        {
          if (a11 >= 1)
          {
            v28 = (v16 - v15);
            v29 = 4 * (v15 + a9) - 4 * v15;
            v30 = v15 + a9;
            v31 = a9;
            do
            {
              if (v30 >= v15)
              {
                v34 = *a5;
                v35 = a5[18];
                if (v30 < v34 - v35)
                {
                  v36 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * (v31 / a8));
                  v37 = v31 % a8;
LABEL_45:
                  v33 = v37 + v36 * a8;
                  goto LABEL_46;
                }

                if (v30 >= v34)
                {
LABEL_43:
                  v33 = 0x7FFFFFFF;
                  goto LABEL_46;
                }

                v33 = *(*(a5 + 10) + 4 * (v30 + v35 - v34));
              }

              else
              {
                if (v30 < 0)
                {
                  goto LABEL_43;
                }

                v32 = *(a5 + 7);
                if (!v32)
                {
                  v36 = *(a7[22] + 4 * a4);
                  v37 = v15 + v31;
                  goto LABEL_45;
                }

                v33 = *(v32 + 4 * v30);
              }

LABEL_46:
              v38 = *(a12 + 4 * v33);
              if (v38 >= v23)
              {
                if ((v28 & 0x80000000) != 0)
                {
                  v39 = (*(a5 + 3) + 4 * *(a5 + 4) * v16 + 4 * v30);
                }

                else if (v30 >= v15)
                {
                  v39 = (a6[12] + 4 * a6[2] * v28 + v29);
                }

                else
                {
                  v39 = (*(a5 + 5) + 4 * *(a5 + 6) * v30 + 4 * v28);
                }

                result = *(a3 + 96) + 4 * *(a3 + 16) * v27;
                v40 = (result + 4 * (v38 - v23));
              }

              else
              {
                if ((v28 & 0x80000000) != 0)
                {
                  v39 = (*(a5 + 3) + 4 * *(a5 + 4) * v16 + 4 * v30);
                }

                else if (v30 >= v15)
                {
                  v39 = (a6[12] + 4 * a6[2] * v28 + v29);
                }

                else
                {
                  v39 = (*(a5 + 5) + 4 * *(a5 + 6) * v30 + 4 * v28);
                }

                result = *(a2 + 40);
                v40 = (result + 4 * *(a2 + 48) * v38 + 4 * v27);
              }

              *v40 = *v39 + *v40;
              ++v30;
              ++v31;
              v29 += 4;
            }

            while (v30 < v15 + a9 + a11);
          }

          v41 = a5[18];
          if (v41 >= 1)
          {
            v42 = 0;
            v43 = *a5;
            v44 = a6[4];
            v45 = (v16 - v15);
            v74 = v43 - v41;
            v75 = v43 - v15 - v41;
            v76 = 4 * (v43 - v41);
            v46 = -4 * v15;
            v47 = v43 - v41;
            while ((*(v44 + v42) & 1) != 0)
            {
LABEL_99:
              ++v47;
              ++v42;
              v46 += 4;
              if (v74 + v42 >= v43)
              {
                goto LABEL_100;
              }
            }

            v48 = v74 + v42;
            if (v48 >= v15)
            {
              if (v48 < v74)
              {
                v51 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v75 + v42) / a8));
                v52 = (v75 + v42) % a8;
                goto LABEL_73;
              }

              v50 = *(a5 + 10);
LABEL_70:
              v53 = *(v50 + 4 * v42);
            }

            else if (v48 < 0)
            {
              v53 = 0x7FFFFFFF;
            }

            else
            {
              v49 = *(a5 + 7);
              if (v49)
              {
                v50 = v49 + v76;
                goto LABEL_70;
              }

              v51 = *(a7[22] + 4 * a4);
              v52 = v74 + v42;
LABEL_73:
              v53 = v52 + v51 * a8;
            }

            result = *(a12 + 4 * v53);
            if (result >= v23)
            {
              v56 = *a2 - *(a2 + 72);
              if (result < v56)
              {
                v55 = (result - v23) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v77) + 4 * ((result - v23) / a8)) * a8;
                goto LABEL_84;
              }

              if (*a2 > result)
              {
                v55 = *(*(a2 + 80) + 4 * (result - v56));
                goto LABEL_84;
              }
            }

            else if ((result & 0x80000000) == 0)
            {
              v54 = *(a2 + 56);
              if (v54)
              {
                v55 = *(v54 + 4 * result);
              }

              else
              {
                v55 = result + *(a7[22] + 4 * v77) * a8;
              }

LABEL_84:
              if (v55 == v53)
              {
                if (v23 <= result)
                {
                  if ((v45 & 0x80000000) != 0)
                  {
                    v57 = (*(a5 + 3) + 4 * *(a5 + 4) * v16 + 4 * v47);
                  }

                  else if (v48 >= v15)
                  {
                    v57 = (a6[12] + 4 * a6[2] * v45 + v76 + v46);
                  }

                  else
                  {
                    v57 = (*(a5 + 5) + 4 * *(a5 + 6) * v48 + 4 * v45);
                  }

                  v58 = (*(a3 + 96) + 4 * *(a3 + 16) * v27 + 4 * (result - v23));
                }

                else
                {
                  if ((v45 & 0x80000000) != 0)
                  {
                    v57 = (*(a5 + 3) + 4 * *(a5 + 4) * v16 + 4 * v47);
                  }

                  else if (v48 >= v15)
                  {
                    v57 = (a6[12] + 4 * a6[2] * v45 + v76 + v46);
                  }

                  else
                  {
                    v57 = (*(a5 + 5) + 4 * *(a5 + 6) * v48 + 4 * v45);
                  }

                  v58 = (*(a2 + 40) + 4 * *(a2 + 48) * result + 4 * v27);
                }

                *v58 = *v57 + *v58;
              }

              goto LABEL_99;
            }

            v55 = 0x7FFFFFFF;
            goto LABEL_84;
          }
        }
      }

LABEL_100:
      v13 = v16 + 1;
      if (v16 + 1 >= v14)
      {
        goto LABEL_101;
      }
    }

    v19 = v14 - v17;
    v20 = __OFSUB__(v16, v19);
    v21 = v16 - v19;
    if (v21 < 0 != v20)
    {
      v18 = (v16 - v15) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v16 - v15) / a8)) * a8;
      goto LABEL_21;
    }

    if (v14 > v16)
    {
      v18 = *(*(a5 + 11) + 4 * v21);
      goto LABEL_21;
    }

LABEL_19:
    v18 = 0x7FFFFFFF;
    goto LABEL_21;
  }

LABEL_101:
  v59 = a5[18];
  if (v59 >= 1)
  {
    v60 = 0;
    v61 = *a5;
    v62 = v61 - v59;
    v63 = a6[4];
    result = v77;
    while ((*(v63 + v60) & 1) != 0)
    {
LABEL_126:
      ++v60;
      if (v62 + v60 >= v61)
      {
        return result;
      }
    }

    v64 = v62 + v60;
    v65 = a5[3];
    if (v64 < v65)
    {
      if (v64 < 0)
      {
        v68 = 0x7FFFFFFF;
      }

      else
      {
        v66 = *(a5 + 7);
        if (v66)
        {
          v67 = v66 + 4 * v62;
LABEL_111:
          v68 = *(v67 + 4 * v60);
          goto LABEL_114;
        }

        v68 = v62 + v60 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_114:
      v69 = *(a12 + 4 * v68);
      v70 = *(a2 + 12);
      if (v69 >= v70)
      {
        v73 = *a2 - *(a2 + 72);
        if (v69 < v73)
        {
          v72 = (v69 - v70) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v77) + 4 * ((v69 - v70) / a8)) * a8;
          goto LABEL_124;
        }

        if (*a2 > v69)
        {
          v72 = *(*(a2 + 80) + 4 * (v69 - v73));
          goto LABEL_124;
        }
      }

      else if ((v69 & 0x80000000) == 0)
      {
        v71 = *(a2 + 56);
        if (v71)
        {
          v72 = *(v71 + 4 * v69);
        }

        else
        {
          v72 = v69 + *(a7[22] + 4 * v77) * a8;
        }

        goto LABEL_124;
      }

      v72 = 0x7FFFFFFF;
LABEL_124:
      if (v72 == v68)
      {
        *(v63 + v60) = 1;
      }

      goto LABEL_126;
    }

    if (v64 < v62)
    {
      v68 = (v62 + v60 - v65) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v62 + v60 - v65) / a8)) * a8;
      goto LABEL_114;
    }

    v67 = *(a5 + 10);
    goto LABEL_111;
  }

  return result;
}

uint64_t sub_236753908(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, uint64_t a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v100 = result;
  v13 = a5[3];
  if (a11 >= 1)
  {
    v14 = v13 + a9;
    v15 = v13 + a10;
    v16 = *(a2 + 12);
    v107 = a5 + 10;
    v17 = 4 * v14;
    v105 = a5 + 12;
    v109 = a5 + 6;
    v18 = a5 + 8;
    v19 = 4 * v15 - 4 * v13;
    while (1)
    {
      result = v15 - v13;
      if (v15 < v13)
      {
        break;
      }

      v21 = a5[1];
      v22 = v21 - a5[19];
      v23 = __OFSUB__(v15, v22);
      v24 = v15 - v22;
      if (v24 < 0 != v23)
      {
        v20 = (v15 - v13) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v15 - v13) / a8)) * a8;
      }

      else
      {
        if (v15 >= v21)
        {
          goto LABEL_12;
        }

        v20 = *(*(a5 + 11) + 4 * v24);
      }

LABEL_14:
      v25 = *(a13 + 4 * v20);
      v26 = (v25 - v16);
      if (v25 - v16 >= 0)
      {
        v27 = a5[4];
        if (v27 < v13)
        {
          v28 = a5 + 6;
          if (result < 0)
          {
            v29 = a5 + 8;
          }

          else
          {
            v28 = a5 + 10;
            v29 = a5 + 12;
          }

          do
          {
            if (v27 < 0)
            {
              v31 = 0x7FFFFFFF;
            }

            else
            {
              v30 = *(a5 + 7);
              if (v30)
              {
                v31 = *(v30 + 4 * v27);
              }

              else
              {
                v31 = v27 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v32 = *(a12 + 4 * v31);
            if (v32 >= v16)
            {
              v37 = v32 - v16;
              if (result >= 0)
              {
                v38 = v27;
              }

              else
              {
                v38 = v15;
              }

              if (result >= 0)
              {
                v39 = v15 - v13;
              }

              else
              {
                v39 = v27;
              }

              v35 = (*v28 + 4 * *v29 * v38 + 4 * v39);
              v36 = (*(a3 + 96) + 4 * *(a3 + 16) * v26 + 4 * v37);
            }

            else
            {
              if (result >= 0)
              {
                v33 = v27;
              }

              else
              {
                v33 = v15;
              }

              if (result >= 0)
              {
                v34 = v15 - v13;
              }

              else
              {
                v34 = v27;
              }

              v35 = (*v28 + 4 * *v29 * v33 + 4 * v34);
              v36 = (*(a2 + 40) + 4 * *(a2 + 48) * v32 + 4 * v26);
            }

            *v36 = *v35 + *v36;
            ++v27;
          }

          while (v13 != v27);
        }

        v40 = *a5;
        if (v14 < v40)
        {
          v41 = 0;
          v42 = a5[18];
          v43 = v40 - v42;
          v44 = v13 + a9 + v42 - v40;
          v45 = v17 + 4 * v42 - 4 * v40;
          v46 = -4 * v13;
          v47 = v13 + a9;
          while (((v44 + v41) & 0x80000000) == 0 && (*(*(a6 + 32) + (v44 + v41)) & 1) != 0)
          {
LABEL_69:
            ++v47;
            ++v41;
            v46 += 4;
            if (v14 + v41 >= v40)
            {
              goto LABEL_70;
            }
          }

          v48 = v14 + v41;
          if (v14 + v41 >= v13)
          {
            if (v48 < v43)
            {
              v51 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v41) / a8));
              v52 = (a9 + v41) % a8;
              goto LABEL_54;
            }

            v50 = *(a5 + 10) + v45;
LABEL_51:
            v53 = *(v50 + 4 * v41);
          }

          else if (v48 < 0)
          {
            v53 = 0x7FFFFFFF;
          }

          else
          {
            v49 = *(a5 + 7);
            if (v49)
            {
              v50 = v49 + v17;
              goto LABEL_51;
            }

            v51 = *(a7[22] + 4 * a4);
            v52 = v13 + a9 + v41;
LABEL_54:
            v53 = v52 + v51 * a8;
          }

          v54 = *(a12 + 4 * v53);
          if (v54 >= v16)
          {
            if (result < 0)
            {
              v55 = (*v109 + 4 * *v18 * v15 + 4 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v17 + v46);
            }

            else
            {
              v55 = (*v107 + 4 * *v105 * v48 + 4 * result);
            }

            v56 = (*(a3 + 96) + 4 * *(a3 + 16) * v26 + 4 * (v54 - v16));
          }

          else
          {
            if (result < 0)
            {
              v55 = (*v109 + 4 * *v18 * v15 + 4 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v17 + v46);
            }

            else
            {
              v55 = (*v107 + 4 * *v105 * v48 + 4 * result);
            }

            v56 = (*(a2 + 40) + 4 * *(a2 + 48) * v54 + 4 * v26);
          }

          *v56 = *v55 + *v56;
          goto LABEL_69;
        }
      }

LABEL_70:
      ++v15;
      v19 += 4;
      if (v15 >= v13 + a10 + a11)
      {
        goto LABEL_71;
      }
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v15);
      }

      else
      {
        v20 = v15 + *(a7[22] + 4 * a4) * a8;
      }

      goto LABEL_14;
    }

LABEL_12:
    v20 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_71:
  v57 = a5[19];
  if (v57 < 1)
  {
    return result;
  }

  v58 = 0;
  v59 = 0;
  v60 = a5[1];
  v61 = *(a6 + 48);
  v62 = v13 + a9;
  v63 = v60 - v57;
  v104 = a5 + 10;
  v103 = a5 + 12;
  v99 = v60;
  v110 = 4 * v62;
  v108 = a5 + 6;
  v106 = a5 + 8;
  v64 = 4 * v63 - 4 * v13;
  v101 = v63;
  do
  {
    if (*(v61 + v58))
    {
      goto LABEL_151;
    }

    v65 = v63 - v13;
    if (v63 >= v13)
    {
      if (v63 >= v101)
      {
        v66 = *(*(a5 + 11) + 4 * (v63 - v101));
      }

      else
      {
        if (v65 < a10 || v65 >= a11 + a10)
        {
          __break(1u);
          return result;
        }

        v66 = v65 % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * (v65 / a8)) * a8;
      }
    }

    else if (v63 < 0)
    {
      v66 = 0x7FFFFFFF;
    }

    else if (*(a5 + 7))
    {
      v66 = *(*(a5 + 8) + 4 * v63);
    }

    else
    {
      v66 = v63 + *(a7[22] + 4 * a4) * a8;
    }

    v67 = *(a13 + 4 * v66);
    v68 = *(a2 + 12);
    if (v67 >= v68)
    {
      v70 = *(a2 + 4);
      v71 = v70 - *(a2 + 76);
      if (v67 >= v71)
      {
        if (v70 <= v67)
        {
LABEL_93:
          v69 = 0x7FFFFFFF;
          goto LABEL_95;
        }

        v69 = *(*(a2 + 88) + 4 * (v67 - v71));
      }

      else
      {
        result = ((v67 - v68) / a8);
        v69 = (v67 - v68) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v100) + 4 * result) * a8;
      }
    }

    else
    {
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_93;
      }

      if (*(a2 + 56))
      {
        v69 = *(*(a2 + 64) + 4 * v67);
      }

      else
      {
        v69 = v67 + *(a7[22] + 4 * v100) * a8;
      }
    }

LABEL_95:
    if (v69 == v66)
    {
      result = (v67 - v68);
      if (v67 - v68 >= 0)
      {
        v102 = v59;
        v72 = a5[4];
        if (v72 < v13)
        {
          v73 = a5 + 6;
          if (v65 < 0)
          {
            v74 = a5 + 8;
          }

          else
          {
            v73 = a5 + 10;
            v74 = a5 + 12;
          }

          do
          {
            if (v72 < 0)
            {
              v76 = 0x7FFFFFFF;
            }

            else
            {
              v75 = *(a5 + 7);
              if (v75)
              {
                v76 = *(v75 + 4 * v72);
              }

              else
              {
                v76 = v72 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v77 = *(a12 + 4 * v76);
            if (v77 >= v68)
            {
              v82 = v77 - v68;
              if (v65 >= 0)
              {
                v83 = v72;
              }

              else
              {
                v83 = v63;
              }

              if (v65 >= 0)
              {
                v84 = v63 - v13;
              }

              else
              {
                v84 = v72;
              }

              v80 = (*v73 + 4 * *v74 * v83 + 4 * v84);
              v81 = (*(a3 + 96) + 4 * *(a3 + 16) * result + 4 * v82);
            }

            else
            {
              if (v65 >= 0)
              {
                v78 = v72;
              }

              else
              {
                v78 = v63;
              }

              if (v65 >= 0)
              {
                v79 = v63 - v13;
              }

              else
              {
                v79 = v72;
              }

              v80 = (*v73 + 4 * *v74 * v78 + 4 * v79);
              v81 = (*(a2 + 40) + 4 * *(a2 + 48) * v77 + 4 * result);
            }

            *v81 = *v80 + *v81;
            ++v72;
          }

          while (v13 != v72);
        }

        v85 = *a5;
        if (v62 < v85)
        {
          v86 = 0;
          v87 = a5[18];
          v88 = v85 - v87;
          v89 = v13 + a9 + v87 - v85;
          v90 = v110 + 4 * v87 - 4 * v85;
          v91 = -4 * v13;
          v92 = v13 + a9;
          do
          {
            if (v89 + v86 < 0 || (*(*(a6 + 32) + (v89 + v86)) & 1) == 0)
            {
              v93 = v62 + v86;
              if (v62 + v86 >= v13)
              {
                if (v93 >= v88)
                {
                  v95 = *(*(a5 + 10) + v90 + 4 * v86);
                }

                else
                {
                  v95 = (a9 + v86) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v86) / a8)) * a8;
                }
              }

              else if (v93 < 0)
              {
                v95 = 0x7FFFFFFF;
              }

              else
              {
                v94 = *(a5 + 7);
                if (v94)
                {
                  v95 = *(v94 + v110 + 4 * v86);
                }

                else
                {
                  v95 = v13 + a9 + v86 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v96 = *(a12 + 4 * v95);
              if (v96 >= v68)
              {
                if (v65 < 0)
                {
                  v97 = (*v108 + 4 * *v106 * v63 + 4 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v110 + v91);
                }

                else
                {
                  v97 = (*v104 + 4 * *v103 * v93 + 4 * v65);
                }

                v98 = (*(a3 + 96) + 4 * *(a3 + 16) * result + 4 * (v96 - v68));
              }

              else
              {
                if (v65 < 0)
                {
                  v97 = (*v108 + 4 * *v106 * v63 + 4 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v110 + v91);
                }

                else
                {
                  v97 = (*v104 + 4 * *v103 * v93 + 4 * v65);
                }

                v98 = (*(a2 + 40) + 4 * *(a2 + 48) * v96 + 4 * result);
              }

              *v98 = *v97 + *v98;
            }

            ++v92;
            ++v86;
            v91 += 4;
          }

          while (v62 + v86 < v85);
        }

        *(v61 + v58) = 1;
        v59 = v102 + 1;
        v60 = v99;
      }
    }

LABEL_151:
    ++v63;
    ++v58;
    v64 += 4;
  }

  while (v63 < v60);
  if (v59 > 0)
  {
    atomic_fetch_add_explicit((a6 + 24), -v59, memory_order_release);
  }

  return result;
}

void sub_2367541F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = a5[3];
  v62 = a5[1];
  if (v12 + a10 < v62)
  {
    v13 = a5[19];
    v61 = v13 - v62;
    v14 = v12 + a10;
    v64 = a5 + 10;
    v63 = a5 + 12;
    v15 = a5 + 6;
    v16 = a5 + 8;
    v60 = v62 - v13;
    for (i = 4 * a10; ; i += 4)
    {
      if (v61 + v14 < 0 || (*(a6[6] + (v61 + v14)) & 1) == 0)
      {
        v18 = v14 - v12;
        if (v14 >= v12)
        {
          v19 = v14 >= v60 ? *(*(a5 + 11) + 4 * (v14 - v60)) : (v14 - v12) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v14 - v12) / a8)) * a8;
        }

        else if (v14 < 0)
        {
          v19 = 0x7FFFFFFF;
        }

        else
        {
          v19 = *(a5 + 7) ? *(*(a5 + 8) + 4 * v14) : v14 + *(a7[22] + 4 * a4) * a8;
        }

        v20 = *(a12 + 4 * v19);
        v21 = *(a2 + 12);
        v22 = (v20 - v21);
        if (v20 - v21 >= 0)
        {
          v23 = a5[4];
          if (v23 < v12)
          {
            if (v18 >= 0)
            {
              v24 = a5 + 10;
            }

            else
            {
              v24 = a5 + 6;
            }

            if (v18 >= 0)
            {
              v25 = a5 + 12;
            }

            else
            {
              v25 = a5 + 8;
            }

            do
            {
              if (v23 < 0)
              {
                v27 = 0x7FFFFFFF;
              }

              else
              {
                v26 = *(a5 + 7);
                if (v26)
                {
                  v27 = *(v26 + 4 * v23);
                }

                else
                {
                  v27 = v23 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v28 = *(a11 + 4 * v27);
              if (v28 >= v21)
              {
                v33 = v28 - v21;
                if (v18 >= 0)
                {
                  v34 = v23;
                }

                else
                {
                  v34 = v14;
                }

                if (v18 >= 0)
                {
                  v35 = v14 - v12;
                }

                else
                {
                  v35 = v23;
                }

                v31 = (*v24 + 4 * *v25 * v34 + 4 * v35);
                v32 = (*(a3 + 96) + 4 * *(a3 + 16) * v22 + 4 * v33);
              }

              else
              {
                if (v18 >= 0)
                {
                  v29 = v23;
                }

                else
                {
                  v29 = v14;
                }

                if (v18 >= 0)
                {
                  v30 = v14 - v12;
                }

                else
                {
                  v30 = v23;
                }

                v31 = (*v24 + 4 * *v25 * v29 + 4 * v30);
                v32 = (*(a2 + 40) + 4 * *(a2 + 48) * v28 + 4 * v22);
              }

              *v32 = *v31 + *v32;
              ++v23;
            }

            while (v12 != v23);
          }

          v36 = *a5;
          v37 = a5[18];
          v38 = v36 - v37;
          if (v12 + a9 < v36 - v37)
          {
            v39 = a7[24] + 4 * *(a7[23] + 8 * a4);
            v40 = a6[12] - 4 * v12 + a6[2] * i;
            v41 = a9;
            v42 = v12 + a9;
            do
            {
              v43 = *(a11 + 4 * (v41 % a8 + *(v39 + 4 * (v41 / a8)) * a8));
              if (v43 >= v21)
              {
                v44 = (*(a3 + 96) + 4 * *(a3 + 16) * v22 + 4 * (v43 - v21));
              }

              else
              {
                v44 = (*(a2 + 40) + 4 * *(a2 + 48) * v43 + 4 * v22);
              }

              *v44 = *(v40 + 4 * v42++) + *v44;
              ++v41;
            }

            while (v42 < v38);
          }

          if (v37 >= 1)
          {
            break;
          }
        }
      }

LABEL_78:
      if (++v14 >= v62)
      {
        return;
      }
    }

    v45 = 0;
    v46 = a6[4];
    v47 = v36 - v12 - v37;
    v48 = 4 * v36 - 4 * v37;
    v49 = -4 * v12;
    v50 = v38;
    while ((*(v46 + v45) & 1) != 0)
    {
LABEL_77:
      ++v50;
      ++v45;
      v49 += 4;
      if (v38 + v45 >= v36)
      {
        goto LABEL_78;
      }
    }

    v51 = v38 + v45;
    if (v51 >= v12)
    {
      if (v51 >= v38)
      {
        v53 = *(a5 + 10);
        goto LABEL_59;
      }

      v54 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v47 + v45) / a8));
      v55 = (v47 + v45) % a8;
    }

    else
    {
      if (v51 < 0)
      {
        v56 = 0x7FFFFFFF;
        goto LABEL_63;
      }

      v52 = *(a5 + 7);
      if (v52)
      {
        v53 = v52 + v48;
LABEL_59:
        v56 = *(v53 + 4 * v45);
LABEL_63:
        v57 = *(a11 + 4 * v56);
        if (v57 >= v21)
        {
          if (v18 < 0)
          {
            v58 = (*v15 + 4 * *v16 * v14 + 4 * v50);
          }

          else if (v51 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48 + v49);
          }

          else
          {
            v58 = (*v64 + 4 * *v63 * v51 + 4 * v18);
          }

          v59 = (*(a3 + 96) + 4 * *(a3 + 16) * v22 + 4 * (v57 - v21));
        }

        else
        {
          if (v18 < 0)
          {
            v58 = (*v15 + 4 * *v16 * v14 + 4 * v50);
          }

          else if (v51 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48 + v49);
          }

          else
          {
            v58 = (*v64 + 4 * *v63 * v51 + 4 * v18);
          }

          v59 = (*(a2 + 40) + 4 * *(a2 + 48) * v57 + 4 * v22);
        }

        *v59 = *v58 + *v59;
        goto LABEL_77;
      }

      v54 = *(a7[22] + 4 * a4);
      v55 = v38 + v45;
    }

    v56 = v55 + v54 * a8;
    goto LABEL_63;
  }
}

uint64_t _SparseNumericFactorLU_Float@<X0>(__int128 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v8 = a1[2];
  *(a6 + 56) = a1[3];
  v9 = *(a1 + 17);
  v10 = *(a1 + 3);
  *a6 = -3;
  *(a6 + 4) = *(a1 + 6) & 1;
  *(a6 + 40) = v8;
  v11 = *a1;
  *(a6 + 24) = a1[1];
  *(a6 + 8) = v11;
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  atomic_fetch_add((v10 + 48), 1u);
  if (*(a3 + 4) == 4)
  {
    v12 = *(v10 + 40);
    if (!v12)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        sub_23672AC1C(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      _SparseTrap();
    }

    memset(&v27[14] + 4, 0, 28);
    memset(&v27[9] + 4, 0, 80);
    strcpy(v27, "nfoptions->scalingMethod=SparseScalingHungarianScalingAndOrdering is only supported if a combined symbolic+numeric call to SparseFactor() is made.\n");
    result = v12(v27);
    *a6 = -4;
    v26 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *(a6 + 80) = sub_236754888(v9, *(a1 + 16), v10, *(a1 + 6), a3, a4);
    _SparseRefactorLU_Float(a2, a6, a3, a5, v16);
    v17 = *MEMORY[0x277D85DE8];

    return sub_2367557D4(a6);
  }

  return result;
}

uint64_t sub_236754888(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v48 = *MEMORY[0x277D85DE8];
  if (a6 || (v6 = (*(a3 + 24))(a4)) != 0)
  {
    v12 = v6 + a4;
    v13 = 4 * *(a3 + 56);
    v14 = *(a5 + 4);
    if ((v14 - 2) >= 3)
    {
      if (v14 == 1)
      {
        if (!*(a5 + 8))
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    v15 = (v6 + 151) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_34;
    }

    v16 = ((v15 + 4 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 < v16)
    {
      goto LABEL_34;
    }

    if (a2 < 2)
    {
      v17 = 0;
    }

    else
    {
      if (v12 < ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_34;
      }

      v17 = (v15 + 4 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    if (a1 == 83)
    {
      v18 = *(a3 + 168);
      v19 = (v16 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v19)
      {
        goto LABEL_34;
      }

      v20 = 4 * v18;
      v21 = (v19 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v21)
      {
        goto LABEL_34;
      }

      v22 = (v21 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v22)
      {
        goto LABEL_34;
      }

      v23 = (v22 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v23)
      {
        goto LABEL_34;
      }

      v24 = v16;
      v16 = v23;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v21 = 0;
      v24 = 0;
      v19 = 0;
      v22 = 0;
      if (!v13)
      {
LABEL_21:
        v25 = 0;
LABEL_26:
        v27 = (v16 + 8 * *(a3 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v12 >= v27)
        {
          v28 = *(a5 + 16);
          *v6 = *a5;
          *(v6 + 16) = v28;
          *(v6 + 32) = 1;
          *(v6 + 40) = v15;
          *(v6 + 48) = v17;
          *(v6 + 56) = 0;
          *(v6 + 64) = v24;
          *(v6 + 72) = v19;
          *(v6 + 80) = v21;
          *(v6 + 88) = v22;
          *(v6 + 96) = v13;
          *(v6 + 104) = v25;
          *(v6 + 112) = v16;
          v29 = (v27 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
          *(v6 + 120) = v29;
          *(v6 + 128) = v12 - v29;
          *(v6 + 136) = 0;
          bzero(v16, 8 * *(a3 + 168));
          goto LABEL_28;
        }

LABEL_34:
        __break(1u);
      }
    }

    v25 = (v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v25)
    {
      goto LABEL_34;
    }

    v26 = (v25 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v26)
    {
      goto LABEL_34;
    }

    v13 = v16;
    v16 = v26;
    goto LABEL_26;
  }

  if (!*(a3 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672AC58();
    }

    _SparseTrap();
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
  v34 = 0u;
  v35 = 0u;
  *__str = 0u;
  v33 = 0u;
  snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorLU.", a4);
  (*(a3 + 40))(__str);
  v6 = 0;
LABEL_28:
  v30 = *MEMORY[0x277D85DE8];
  return v6;
}

void _SparseRefactorLU_Float(unsigned int *a1, char *a2, uint64_t a3, char *a4, __n128 a5)
{
  v5 = a4;
  v7 = a1;
  v215 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 10);
  v182 = a2[25];
  v9 = *(a1 + 28);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v181 = a2;
  v12 = *(a3 + 4);
  v185 = v8;
  v186 = v10;
  if (v12 <= 1)
  {
    if (*(a3 + 4))
    {
      v17 = *(a3 + 8);
      if (v17)
      {
        v18 = *a1;
        if (v18 >= 1)
        {
          v19 = 0;
          for (i = 0; i != v18; ++i)
          {
            if (v9)
            {
              v21 = (v17 + 4 * *(*(v186 + 152) + 4 * i) * v9);
              v22 = (*(v8 + 96) + v19);
              v23 = v9;
              do
              {
                v24 = *v21++;
                a5.n128_u32[0] = v24;
                *v22++ = v24;
                --v23;
              }

              while (v23);
            }

            v19 += 4 * v9;
          }
        }

        v25 = a1[1];
        if (v25 >= 1)
        {
          v26 = 0;
          v27 = 0;
          v28 = v17 + 4 * v18 * v9;
          do
          {
            if (v9)
            {
              v29 = (v28 + 4 * *(*(v186 + 160) + 4 * v27) * v9);
              v30 = (*(v8 + 104) + v26);
              v31 = v9;
              do
              {
                v32 = *v29++;
                a5.n128_u32[0] = v32;
                *v30++ = v32;
                --v31;
              }

              while (v31);
            }

            ++v27;
            v26 += 4 * v9;
          }

          while (v27 != v25);
        }
      }
    }
  }

  else
  {
    if (v12 == 2)
    {
      v33 = (a1[1] + *a1) * v9;
      v34 = *(a1 + 1);
      v192 = *a1;
      v193 = v34;
      v194 = *(a1 + 4);
      sub_236751B4C(&v192, *(v10 + 136), *(v10 + 144), *(v8 + 96), *(v8 + 104), a4);
LABEL_25:
      v7 = a1;
      v8 = v185;
      v5 = a4;
      goto LABEL_26;
    }

    if (v12 == 3)
    {
      v13 = *a1;
      v14 = sub_2366FD568(v13, v7[1], *(*(v7 + 1) + 8 * v7[1]), v9) + 4 * v13 * v9 + 8;
      if (v11 >= v14)
      {
        v16 = 0;
        v15 = a4;
      }

      else
      {
        v15 = (*(v186 + 24))(v14);
        v16 = v15;
      }

      v35 = (4 * (*a1 * v9) + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = *(a1 + 1);
      v192 = *a1;
      v193 = v36;
      v194 = *(a1 + 4);
      sub_2366FD5C4(&v192, v15, *(v185 + 96), *(v185 + 104), &v15[v35]);
      v7 = a1;
      v8 = v185;
      v5 = a4;
      if (v16)
      {
        (*(v186 + 32))(v16);
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v37 = *(a3 + 8);
  if (v37 && *(a3 + 4) != 1)
  {
    v38 = *v7;
    v39 = &v37[4 * v38 * v9];
    v40 = *(v8 + 96);
    if (v40)
    {
      if (v38 >= 1)
      {
        for (j = 0; j != v38; ++j)
        {
          if (v9)
          {
            v42 = &v37[4 * *(*(v186 + 152) + 4 * j) * v9];
            v43 = v9;
            v44 = v40;
            do
            {
              v45 = *v44++;
              a5.n128_u32[0] = v45;
              *v42++ = v45;
              --v43;
            }

            while (v43);
          }

          v40 += v9;
        }
      }

      v46 = v7[1];
      if (v46 >= 1)
      {
        v47 = 0;
        for (k = 0; k != v46; ++k)
        {
          if (v9)
          {
            v49 = &v39[4 * *(*(v186 + 160) + 4 * k) * v9];
            v50 = (*(v8 + 104) + v47);
            v51 = v9;
            do
            {
              v52 = *v50++;
              a5.n128_u32[0] = v52;
              *v49++ = v52;
              --v51;
            }

            while (v51);
          }

          v47 += 4 * v9;
        }
      }
    }

    else
    {
      if (v38 * v9 >= 1)
      {
        memset_pattern16(v37, &unk_23681FB80, 4 * (v38 * v9));
        v5 = a4;
        v7 = a1;
        v8 = v185;
      }

      if ((v7[1] * v9) >= 1)
      {
        memset_pattern16(v39, &unk_23681FB80, 4 * v7[1] * v9);
        v5 = a4;
        v7 = a1;
        v8 = v185;
      }
    }
  }

  v53 = v186;
  if (*(*(v186 + 120) + 8 * *(v186 + 60)) >= 1)
  {
    v54 = *(v186 + 64);
    v55 = &v5[8 * v54 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (&v5[v11] < v55 || &v5[v11] < ((v55 + 4 * v54 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    bzero((&v5[8 * v54 + 7] & 0xFFFFFFFFFFFFFFF8), 4 * v54);
    v56 = a1;
    v57 = *(a1 + 28);
    LODWORD(v192) = v57;
    v58 = (v57 * v57);
    LODWORD(v59) = *(v186 + 60);
    if (v59 < 1)
    {
      v8 = v185;
    }

    else
    {
      v60 = 0;
      v61 = 4 * v58;
      v62 = 4 * v57;
      v8 = v185;
      v63 = v186;
      a2 = a4;
      do
      {
        v64 = v60;
        v65 = *(v63 + 120);
        v66 = *(v65 + 8 * v60++);
        v67 = *(v65 + 8 * v60);
        if (v66 != v67)
        {
          if (v66 < v67)
          {
            v68 = *(v186 + 128);
            v69 = v58 * v66;
            do
            {
              v70 = *(v68 + 4 * v66);
              *(v55 + 4 * v70) = v60;
              *&a2[8 * v70] = v69;
              ++v66;
              v69 += v58;
            }

            while (v66 < *(v65 + 8 * v60));
          }

          v71 = *(*(v186 + 160) + 4 * v64);
          v72 = *(v56 + 1);
          v73 = (v72 + 8 * v71);
          v74 = *v73;
          if (*v73 < v73[1])
          {
            v75 = v61 * v74;
            do
            {
              v76 = *(*(v56 + 2) + 4 * v74);
              if ((v76 & 0x80000000) == 0 && v76 < *v56 && v64 < *(v55 + 4 * v76))
              {
                v77 = *(v8 + 96);
                v78 = (*(v8 + 40) + 4 * *&a2[8 * v76]);
                v79 = *(v56 + 4);
                if (v77)
                {
                  if (v57)
                  {
                    v80 = 0;
                    v81 = (v77 + 4 * *(*(v186 + 136) + 4 * v76));
                    v82 = *(v8 + 104) + 4 * v64;
                    v83 = (v79 + v75);
                    do
                    {
                      v84 = v81;
                      v85 = v83;
                      v86 = v78;
                      v87 = v57;
                      do
                      {
                        v88 = *v84++;
                        v89 = v88;
                        v90 = *v85++;
                        a5.n128_f32[0] = (v89 * v90) * *(v82 + 4 * v80);
                        *v86++ = a5.n128_u32[0];
                        --v87;
                      }

                      while (v87);
                      ++v80;
                      v78 += v62;
                      v83 = (v83 + v62);
                    }

                    while (v80 != v57);
                  }
                }

                else
                {
                  memcpy(v78, (v79 + 4 * v74 * v58), 4 * v58);
                  a2 = a4;
                  v56 = a1;
                  v8 = v185;
                  v72 = *(a1 + 1);
                }
              }

              ++v74;
              v75 += v61;
            }

            while (v74 < *(v72 + 8 * v71 + 8));
          }
        }

        v63 = v186;
        v59 = *(v186 + 60);
      }

      while (v60 < v59);
    }

    v91 = *(v186 + 96);
    if (v57 == 1)
    {
      if (v91 >= 1)
      {
        v92 = *(v186 + 120);
        v93 = *(v8 + 40);
        a5.n128_u32[0] = 1.0;
        do
        {
          v94 = *v92++;
          *(v93 + 4 * v94) = 1.0 / *(v93 + 4 * v94);
          --v91;
        }

        while (v91);
      }

      v95 = *(v186 + 100);
      if (v95 >= 1)
      {
        LODWORD(v98) = v59 - v95;
        v96 = *(v186 + 120);
        v97 = *(v8 + 40);
        v98 = v98;
        a5.n128_u32[0] = 1.0;
        do
        {
          *(v97 + 4 * *(v96 + 8 * v98)) = 1.0 / *(v97 + 4 * *(v96 + 8 * v98));
          ++v98;
        }

        while (v98 < v59);
      }
    }

    else if (v91 < 1)
    {
LABEL_85:
      v104 = *(v186 + 100);
      if (v104 >= 1)
      {
        v105 = *(v186 + 60) - v104;
        do
        {
          v106 = *(*(v186 + 120) + 8 * v105) * v58;
          v107 = *(v8 + 40);
          v108 = *(v8 + 48) + 4 * v91 * v57;
          LODWORD(v208[0]) = 0;
          sgetrf_NEWLAPACK();
          v8 = v185;
          if (LODWORD(v208[0]))
          {
            break;
          }

          LODWORD(v57) = v192;
          ++v105;
          LODWORD(v91) = v91 + 1;
        }

        while (v105 < *(v186 + 60));
      }
    }

    else
    {
      v99 = 0;
      v100 = v186;
      while (1)
      {
        v101 = *(*(v100 + 120) + 8 * v99) * v58;
        v102 = *(v8 + 40);
        v103 = *(v8 + 48) + 4 * v57 * v99;
        LODWORD(v208[0]) = 0;
        sgetrf_NEWLAPACK();
        v8 = v185;
        if (LODWORD(v208[0]))
        {
          break;
        }

        LODWORD(v57) = v192;
        ++v99;
        v100 = v186;
        if (v99 >= *(v186 + 96))
        {
          LODWORD(v91) = *(v186 + 96);
          goto LABEL_85;
        }
      }
    }

    v53 = v186;
    v5 = a4;
    v7 = a1;
  }

  v109 = *(v7 + 28);
  v110 = *(v53 + 168);
  v111 = &v5[8 * v110];
  v112 = *(v53 + 52);
  if (v112 >= 2)
  {
    _X0 = 0;
    v114 = *(v53 + 56);
    v115 = 6 * v114;
    v116 = 4 * v114 + 8;
    if (v182 != 82)
    {
      v116 = 0;
    }

    v117 = v116 + 4 * v115 + 48;
    LODWORD(v208[0]) = v112;
    atomic_store(0, v208 + 1);
    atomic_store(0, (v208 | 0xC));
    atomic_store(0, v209);
    v118 = v210;
    do
    {
      _X5 = v211;
      __asm { CASPAL          X4, X5, X0, X1, [X25] }

      _ZF = _X4 == v118;
      v118 = _X4;
    }

    while (!_ZF);
    v212 = v116 + 4 * v115 + 48;
    v213 = &v5[8 * v110];
    v125 = &v111[40 * *(v186 + 336) + ((v117 * v112 + 7) & 0xFFFFFFFFFFFFFFF8)];
    LOBYTE(v192) = v182;
    *(&v192 + 1) = v7;
    *&v193 = v186;
    DWORD2(v193) = v109;
    v194 = v8;
    v195 = v5;
    v196 = *(v8 + 120);
    v197 = &v111[(v117 * v112 + 7) & 0xFFFFFFFFFFFFFFF8];
    v198 = sub_2367921D4(256, v125 + 16 * v112);
    v199 = v126;
    v200 = 0;
    v201 = 0;
    v202 = 0;
    v203 = v125;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v214 = &v192;
    if (*(v186 + 52))
    {
      v127 = 0;
      v128 = 0;
      do
      {
        v129 = *(v186 + 56);
        madvise(v111, 8 * v129, 3);
        madvise(&v111[8 * v129], 0x64uLL, 3);
        madvise(&v111[12 * v129], 0x64uLL, 3);
        madvise(&v111[16 * v129], 0x64uLL, 3);
        madvise(&v111[20 * v129], 0x64uLL, 3);
        *(v203 + v127 + 8) = *(v186 + 392);
        v130 = (*(v186 + 24))();
        v131 = (v203 + v127);
        *v131 = v130;
        madvise(v130, v131[1], 3);
        ++v128;
        v127 += 16;
        v111 += v117;
      }

      while (v128 < *(v186 + 52));
    }

    if (*(v185 + 128) >= 0x8000000uLL)
    {
      v132 = 0x8000000;
    }

    else
    {
      v132 = *(v185 + 128);
    }

    madvise(*(v185 + 120), v132, 3);
    if (*(v186 + 336) >= 1)
    {
      _X20 = 0;
      v134 = 0;
      v135 = 0;
      do
      {
        v136 = v135;
        if (*(*(v186 + 176) + 4 * *(*(v186 + 344) + 4 * v135++)) >= *(*(v186 + 112) + 4 * (v134 + 1)))
        {
          ++v134;
        }

        v138 = *(*(v186 + 368) + 8 * v135) - *(*(v186 + 368) + 8 * v136);
        v139 = &v197[40 * v136];
        atomic_store(v138, v139);
        *(v139 + 2) = v136;
        *(v139 + 3) = v134;
        *(v139 + 2) = sub_236758B7C;
        if (!v138)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X24] }

          *(v139 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v139 + 4) = 0;
          v143 = _X0 & 1;
          _X2 = v143 | v139;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X24] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X20, X21, [X10] }

            *(v139 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v139 + 4) = 0;
            v143 = _X0 & 1;
            _X2 = v143 | v139;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v143)
          {
            __ulock_wake();
          }
        }
      }

      while (v135 < *(v186 + 336));
    }

    _X0 = 0;
    _X1 = 0;
    v188 = xmmword_28499C288;
    v189 = off_28499C298;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v190 = _X0 & 0xFFFFFFFFFFFFFFFELL;
    v191 = 0;
    _X2 = &v188 | _X0 & 1;
    _X5 = 0;
    __asm { CASPL           X4, X5, X2, X3, [X8] }

    if (_X4 == _X0)
    {
      if ((_X0 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    else
    {
      _X2 = 0;
      do
      {
        _X5 = 0;
        __asm { CASP            X4, X5, X2, X3, [X8] }

        v190 = _X4 & 0xFFFFFFFFFFFFFFFELL;
        v191 = 0;
        _X0 = &v188 | _X4 & 1;
        _X7 = 0;
        __asm { CASPL           X6, X7, X0, X1, [X8] }
      }

      while (_X6 != _X4);
      if ((_X4 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    __ulock_wake();
LABEL_127:
    v169 = sub_2366FCD2C(v208, 1);
    if (v169)
    {
      if (v200)
      {
        v201 = v200;
        operator delete(v200);
      }

      goto LABEL_138;
    }

    if (*(v186 + 52))
    {
      v178 = 0;
      v179 = 0;
      do
      {
        (*(v186 + 32))(*(v203 + v178));
        ++v179;
        v178 += 16;
      }

      while (v179 < *(v186 + 52));
    }

    if (v200)
    {
      v201 = v200;
      operator delete(v200);
    }

LABEL_137:
    v169 = 0;
    goto LABEL_138;
  }

  v156 = *(v181 + 5);
  v157 = *(v8 + 120);
  v158 = *(v8 + 128);
  v208[0] = v157;
  v187 = 0;
  LODWORD(v188) = 0;
  v159 = (*(v53 + 24))(*(v53 + 392), a2, a5);
  v161 = *(v186 + 392);
  *&v192 = v159;
  *(&v192 + 1) = v161;
  if (*(v186 + 168) < 1)
  {
    v170 = 0;
    v171 = 0;
    v168 = v185;
LABEL_131:
    atomic_store(v171, (v168 + 136));
    atomic_store(v170, (v168 + 140));
    (*(v186 + 32))(v159);
    goto LABEL_137;
  }

  v162 = 0;
  v163 = 0;
  v164 = v110;
  v165 = v157 + v158;
  v166 = v156 - 8 * v110;
  v168 = v185;
  v167 = v186;
  while (1)
  {
    if (*(*(v167 + 176) + 4 * v162) >= *(*(v167 + 112) + 4 * (v163 + 1)))
    {
      ++v163;
    }

    v169 = sub_23675900C(v162, v163, a1, v182, v167, v109, v168, v160, a4, v164, v208, v165, &v188, &v187, v111, v166, &v192, 0, 0);
    if (v169)
    {
      break;
    }

    ++v162;
    v168 = v185;
    v167 = v186;
    if (v162 >= *(v186 + 168))
    {
      v170 = v187;
      v171 = v188;
      v159 = v192;
      goto LABEL_131;
    }
  }

LABEL_138:
  *v181 = v169;
  v180 = *MEMORY[0x277D85DE8];
}

void sub_23675579C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367557D4(uint64_t result)
{
  if (*result != -3)
  {
    v1 = *(result + 32);
    v2 = *(result + 80);
    v3 = v1[42];
    v4 = 40 * v1[84];
    v6 = v1[13];
    v5 = v1[14];
    *(result + 88) = v4 + 12 * v3 + (*MEMORY[0x277D85FA0] + 4 * v5) * v6 + 56;
    LODWORD(v2) = atomic_load((v2 + 140));
    *(result + 96) = 8 * (v5 + v6 * v2);
  }

  return result;
}

uint64_t _SparseFactorLU_Float@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v550 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*(a2 + 1) + 8 * v7);
  if (a1 == 80)
  {
    v9 = 83;
  }

  else
  {
    v9 = a1;
  }

  if (v6 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *a5 = -3;
  v11 = a2[6] & 1;
  *(a5 + 4) = v11;
  *(a5 + 8) = -3;
  *(a5 + 12) = v6;
  *(a5 + 16) = v7;
  *(a5 + 20) = v11;
  v528 = a2;
  *(a5 + 24) = *(a2 + 28);
  v527 = v9;
  *(a5 + 25) = v9;
  *(a5 + 80) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 57) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v522 = (a5 + 80);
  v542 = 0;
  if (sub_236720B94(v10, v8, &v542))
  {
    v12 = *(a3 + 40);
    if (!v12)
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        sub_23672B05C(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v12(__str);
LABEL_118:
    v165 = -4;
LABEL_119:
    *a5 = v165;
LABEL_120:
    v121 = *MEMORY[0x277D85DE8];
    return result;
  }

  v14 = a3;
  v15 = v542;
  v16 = (*(a3 + 24))(v542);
  if (!v16)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v15);
    result = (*(a3 + 40))(__str);
    goto LABEL_120;
  }

  v17 = v16;
  __src = v16;
  if (*(a4 + 4) == 4)
  {
    if (*(v528 + 28) != 1)
    {
      v55 = *(a3 + 40);
      if (!v55)
      {
        v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v65)
        {
          sub_23672ACD0(v65, v66, v67, v68, v69, v70, v71, v72);
        }

        _SparseTrap();
      }

      memset(&__str[98], 0, 158);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is only supported for blockSize=1\n");
      v55(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_118;
    }

    if (*(a3 + 16))
    {
      v18 = *(a3 + 40);
      if (!v18)
      {
        v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v82)
        {
          sub_23672AD0C(v82, v83, v84, v85, v86, v87, v88, v89);
        }

        _SparseTrap();
      }

      memset(&__str[123], 0, 133);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.ignoreRowsAndColumns!=NULL\n");
      v18(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_118;
    }

    if (*(a3 + 4) == 1)
    {
      v64 = *(a3 + 40);
      if (!v64)
      {
        v113 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v113)
        {
          sub_23672B020(v113, v114, v115, v116, v117, v118, v119, v120);
        }

        _SparseTrap();
      }

      memset(&__str[125], 0, 131);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.orderMethod==SparseOrderUser\n");
      v64(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_118;
    }

    v90 = v528;
    v91 = (*(a3 + 24))(4 * *v528);
    v92 = (*(a3 + 24))(4 * (v90[1] + *v90));
    v93 = *v528;
    v94 = &v92[v93];
    v95 = sub_2366FD568(v93, v90[1], *(*(v90 + 1) + 8 * v90[1]), 1);
    if (v95 >= v15)
    {
      v17 = (*(a3 + 24))(v95);
    }

    v96 = *(v528 + 1);
    *__str = *v528;
    *&__str[16] = v96;
    *&__str[32] = *(v528 + 4);
    v538 = v91;
    v519 = v94;
    v520 = v92;
    v97 = sub_2366FD5C4(__str, v91, v92, v94, v17);
    if (v17 != __src)
    {
      (*(a3 + 32))(v17);
    }

    v14 = a3;
    if (v97 != v528[1])
    {
      v98 = *(a3 + 40);
      if (!v98)
      {
        v156 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v156)
        {
          sub_23672AD48(v156, v157, v158, v159, v160, v161, v162, v163);
        }

        _SparseTrap();
      }

      memset(&__str[39], 0, 217);
      strcpy(__str, "Matrix is structurally rank deficient\n");
      v98(__str);
      v164 = *(a3 + 32);
      v537 = (a3 + 32);
      v164(v91);
      (*v537)(v92);
      result = (*v537)(__src);
      v165 = -2;
      goto LABEL_119;
    }
  }

  else
  {
    v519 = 0;
    v520 = 0;
    v538 = 0;
  }

  v27 = *(v528 + 1);
  *v541 = *v528;
  *&v541[16] = v27;
  *a5 = -3;
  if (*v541 >= *&v541[4])
  {
    v28 = *&v541[4];
  }

  else
  {
    v28 = *v541;
  }

  if (*v541 <= *&v541[4])
  {
    v29 = *&v541[4];
  }

  else
  {
    v29 = *v541;
  }

  v30 = v541[28];
  v31 = v28 + 1;
  v32 = 4 * v28;
  v33 = v32 + 8;
  if (v527 != 83)
  {
    v33 = 0;
  }

  v34 = v541[28] * (*&v541[4] + *v541) + 8;
  if (!*(v14 + 16))
  {
    v34 = 0;
  }

  v35 = 8 * (*&v541[4] + *v541) + 24 * v31 + v33 + v34 + 464;
  result = (*(v14 + 24))(v35);
  v36 = result;
  if (!result)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v35);
    (*(a3 + 40))(__str);
    goto LABEL_267;
  }

  v37 = result;
  v38 = result + v35;
  v39 = (result + 407) & 0xFFFFFFFFFFFFFFF8;
  v40 = a3;
  if (v38 >= v39)
  {
    v41 = *(a3 + 16);
    v42 = *(a3 + 32);
    *__str = *a3;
    *&__str[16] = v41;
    *&__str[32] = v42;
    result = 1;
    if ((*(a3 + 3) & 0x40) == 0)
    {
      result = sub_2366FCCD0(0x10u);
      v40 = a3;
      v37 = v36;
    }

    *v37 = *__str;
    *(v37 + 16) = *&__str[16];
    *(v37 + 32) = *&__str[32];
    *(v37 + 48) = 1;
    *(v37 + 52) = result;
    *(v37 + 56) = v28 * v30;
    *(v37 + 60) = v28;
    *(v37 + 64) = v29;
    *(v37 + 84) = 0u;
    *(v37 + 100) = 0u;
    *(v37 + 116) = 0u;
    *(v37 + 132) = 0u;
    *(v37 + 148) = 0u;
    *(v37 + 164) = 0u;
    *(v37 + 180) = 0u;
    *(v37 + 196) = 0u;
    *(v37 + 212) = 0u;
    *(v37 + 228) = 0u;
    *(v37 + 244) = 0u;
    *(v37 + 384) = 0u;
    *(v37 + 68) = 0u;
    *(v37 + 260) = 0u;
    *(v37 + 276) = 0u;
    *(v37 + 292) = 0u;
    *(v37 + 308) = 0u;
    *(v37 + 324) = 0u;
    *(v37 + 340) = 0u;
    *(v37 + 356) = 0u;
    *(v37 + 372) = 0u;
    v43 = *v541;
    v44 = (v39 + 4 * *v541 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v38 >= v44)
    {
      *(v37 + 136) = v39;
      v45 = *&v541[4];
      v46 = (v44 + 4 * *&v541[4] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v38 >= v46)
      {
        *(v37 + 144) = v44;
        v47 = (v46 + 4 * v43 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v38 >= v47)
        {
          *(v37 + 152) = v46;
          v48 = (v47 + 4 * v45 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v38 >= v48)
          {
            *(v37 + 160) = v47;
            v49 = v48 + 8 * v31;
            if (v49 <= v38)
            {
              v50 = 8 * v31;
              *(v37 + 120) = v48;
              v51 = v49 + v50;
              if (v49 + v50 <= v38)
              {
                *(v37 + 184) = v49;
                v52 = (v51 + v50) & 0xFFFFFFFFFFFFFFF8;
                if (v38 >= v52)
                {
                  *(v37 + 200) = v51;
                  if (v527 == 83)
                  {
                    if (v38 < ((v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_553;
                    }

                    *(v37 + 304) = v52;
                    v52 = (v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  if (!*(v40 + 16))
                  {
                    goto LABEL_49;
                  }

                  v53 = v541[28];
                  if (v38 >= ((v52 + (v45 + v43) * v541[28] + 7) & 0xFFFFFFFFFFFFFFF8))
                  {
                    *(v37 + 72) = v52;
                    *(v37 + 80) = v52 + v43 * v53;
LABEL_49:
                    v545 = 0;
                    if (sub_236720B94(v28, *(*&v541[8] + 8 * v28), &v545))
                    {
                      v54 = *(a3 + 40);
                      if (!v54)
                      {
                        v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v73)
                        {
                          sub_23672AF6C(v73, v74, v75, v76, v77, v78, v79, v80);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[56], 0, 200);
                      strcpy(__str, "Symbolic workspace requirement calculation overflowed.\n");
                      v54(__str);
                      (*(a3 + 32))(v36);
                      goto LABEL_113;
                    }

                    v56 = v545;
                    v57 = *(a3 + 16);
                    if (v57)
                    {
                      bzero(*(v36 + 72), (*&v541[4] + *v541) * v541[28]);
                      v58 = *(a3 + 16);
                      v59 = *v58;
                      if ((*v58 & 0x80000000) != 0)
                      {
                        LODWORD(v57) = 0;
                        v60 = 0;
                      }

                      else
                      {
                        v60 = 0;
                        LODWORD(v57) = 0;
                        v61 = *v541 * v541[28];
                        v62 = v58 + 1;
                        do
                        {
                          if (v59 >= v61)
                          {
                            *(*(v36 + 80) + (v59 - v61)) = 1;
                            LODWORD(v57) = v57 + 1;
                          }

                          else
                          {
                            *(*(v36 + 72) + v59) = 1;
                            ++v60;
                          }

                          v63 = *v62++;
                          v59 = v63;
                        }

                        while ((v63 & 0x80000000) == 0);
                      }

                      if (v541[24])
                      {
                        *(v36 + 72) = vextq_s8(*(v36 + 72), *(v36 + 72), 8uLL);
                        v81 = v60;
                      }

                      else
                      {
                        v81 = v57;
                        LODWORD(v57) = v60;
                      }
                    }

                    else
                    {
                      v81 = 0;
                    }

                    v99 = v541[28];
                    v100 = *v541;
                    v101 = *&v541[4];
                    v102 = *v541 * v541[28] - v57;
                    if (v102 != *&v541[4] * v541[28] - v81)
                    {
                      if (!*(a3 + 40))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          sub_23672AD84();
                        }

                        _SparseTrap();
                      }

                      memset(__str, 0, 256);
                      snprintf(__str, 0x100uLL, "Sparse LU factorization only supports square matrices, but supplied matrix without any ignored rows and columns has shape %dx%d.\n", v102, *&v541[4] * v541[28] - v81);
                      (*(a3 + 40))(__str);
                      (*(a3 + 32))(v36);
LABEL_113:
                      v111 = 0;
                      v112 = -4;
LABEL_114:
                      *a5 = v112;
                      goto LABEL_268;
                    }

                    if (*(a3 + 4) == 1)
                    {
                      v103 = *(a3 + 8);
                      if (v103)
                      {
                        if (*&v541[4] >= 1)
                        {
                          v104 = 0;
                          v105 = *(v36 + 136);
                          do
                          {
                            *(v105 + 4 * v104) = *(v103 + 4 * v104);
                            ++v104;
                          }

                          while (v104 < *&v541[4]);
                          v100 = *v541;
                        }

                        if (v100 < 1)
                        {
                          goto LABEL_132;
                        }

                        v106 = 0;
                        v107 = *(v36 + 144);
                        do
                        {
                          *(v107 + 4 * v106) = *(v103 + 4 * (v106 + *&v541[4]));
                          ++v106;
                        }

                        while (v106 < *v541);
                        v100 = *v541;
                      }

                      else
                      {
                        if (*v541 >= 1)
                        {
                          v122 = 0;
                          v123 = *(v36 + 136);
                          do
                          {
                            *(v123 + 4 * v122) = v122;
                            ++v122;
                          }

                          while (v122 < *v541);
                          v101 = *&v541[4];
                          v100 = *v541;
                        }

                        if (v101 >= 1)
                        {
                          v124 = 0;
                          v125 = *(v36 + 144);
                          do
                          {
                            *(v125 + 4 * v124) = v124;
                            ++v124;
                          }

                          while (v124 < *&v541[4]);
                          v100 = *v541;
                        }
                      }

                      if (v100 >= 1)
                      {
                        v126 = 0;
                        v127 = *(v36 + 152);
                        v128 = *(v36 + 136);
                        do
                        {
                          *(v127 + 4 * *(v128 + 4 * v126)) = v126;
                          ++v126;
                        }

                        while (v126 < *v541);
                      }

LABEL_132:
                      v129 = *&v541[4];
                      if (*&v541[4] >= 1)
                      {
                        v130 = 0;
                        v131 = *(v36 + 160);
                        v132 = *(v36 + 144);
                        do
                        {
                          *(v131 + 4 * *(v132 + 4 * v130)) = v130;
                          ++v130;
                          v129 = *&v541[4];
                        }

                        while (v130 < *&v541[4]);
                      }

                      if (v57 > 0)
                      {
                        v133 = sub_236721ACC(*v541, v99, *(v36 + 136), *(v36 + 152), *(v36 + 72), __src);
                        *(v36 + 88) = v133;
                        v28 = (*(v36 + 60) - v133);
                        *(v36 + 60) = v28;
                        v129 = *&v541[4];
                      }

                      if (v81 <= 0)
                      {
                        v134 = *(v36 + 92);
                      }

                      else
                      {
                        v134 = sub_236721ACC(v129, v541[28], *(v36 + 144), *(v36 + 160), *(v36 + 80), __src);
                        *(v36 + 92) = v134;
                        v129 = *&v541[4];
                      }

                      if (*v541 - *(v36 + 88) == v129 - v134)
                      {
                        v135 = sub_236798D30(v28, v541, *(v36 + 136), *(v36 + 160), (v36 + 96), (v36 + 100), (v36 + 104), __src);
                        if (v135 >= 1)
                        {
                          if (!*(a3 + 40))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                            {
                              sub_23672AEB0();
                            }

                            _SparseTrap();
                          }

                          memset(__str, 0, 256);
                          snprintf(__str, 0x100uLL, "User-supplied ordering does not place an entry on diagonal %d.", v135 - 1);
                          (*(a3 + 40))(__str);
                          (*(a3 + 32))(v36);
                          goto LABEL_113;
                        }

                        v174 = (*(a3 + 24))(4 * *(v36 + 104) + 4);
                        v175 = v36;
                        *(v36 + 112) = v174;
                        v176 = __src;
                        memcpy(v174, __src, 4 * *(v36 + 104) + 4);
                        v177 = v28;
                        v178 = v56;
                        goto LABEL_194;
                      }

                      v136 = *(a3 + 40);
                      if (!v136)
                      {
                        v166 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v166)
                        {
                          sub_23672AE38(v166, v167, v168, v169, v170, v171, v172, v173);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[74], 0, 182);
                      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
                      v136(__str);
                      *a5 = -4;
                      (*(a3 + 32))(v36);
LABEL_267:
                      v111 = 0;
LABEL_268:
                      v293 = a3;
LABEL_269:
                      v294 = v538;
LABEL_270:
                      v526 = v111;
                      if (v294)
                      {
                        (*(v293 + 32))();
                        v293 = a3;
                        v111 = v526;
                      }

                      if (!v111)
                      {
                        result = (*(v293 + 32))(__src);
                        goto LABEL_120;
                      }

                      v295 = *(v528 + 28);
                      v296 = *(v111 + 168);
                      if (v296 >= 0)
                      {
                        v297 = v296;
                      }

                      else
                      {
                        v297 = -v296;
                      }

                      v298 = 8 * v297;
                      if (v296 < 0)
                      {
                        v298 = -8 * v297;
                      }

                      v299 = v298 + 40;
                      v300 = v298 >= 0xFFFFFFFFFFFFFFD8 || v296 < 0;
                      v535 = (v295 * v295);
                      v301 = *(v111 + 336);
                      v302 = MEMORY[0x277D85FA0];
                      if (v301 < 1)
                      {
                        v306 = 0;
                        v305 = 0;
                        v347 = 0;
                        v346 = 0;
                      }

                      else
                      {
                        v515 = v297;
                        v516 = *(v111 + 168);
                        v517 = v298 + 40;
                        v303 = 0;
                        v304 = 0;
                        v305 = 0;
                        v306 = 0;
                        v307 = *(v111 + 344);
                        v308 = *(v111 + 384);
                        v518 = *(v528 + 28);
                        v523 = (2 * v295);
                        v531 = -*MEMORY[0x277D85FA0];
                        v532 = *MEMORY[0x277D85FA0] - 1;
                        v311 = *v307;
                        v309 = v307 + 1;
                        v310 = v311;
                        do
                        {
                          v312 = *v309++;
                          v313 = v312;
                          v314 = v312;
                          v315 = *v308;
                          v539 = v308 + 1;
                          v540 = 0;
                          v316 = sub_23681EB64(v315, v315 >> 63, v535, 0, &v540);
                          if ((v317 << 63 >> 63) ^ v317 | v540)
                          {
                            v318 = 1;
                          }

                          else
                          {
                            v318 = v317 << 63 >> 63 == -1;
                          }

                          v319 = v318;
                          v320 = v300 | v319;
                          if ((v527 & 0xFE) == 0x52)
                          {
                            v321 = *(v526[22] + 4 * v314) - *(v526[22] + 4 * v310);
                            v322 = v523 * v321;
                            v320 |= ((((v321 * v523) >> 64) + (v321 >> 63) * v523) << 63) >> 63 == -1;
                          }

                          else
                          {
                            v322 = 0;
                          }

                          v323 = 0;
                          if (v314 - v310 < 0)
                          {
                            v328 = 0;
                            v329 = 0;
                            v330 = 0;
                            v327 = 1;
                          }

                          else
                          {
                            v324 = 24 * (v314 - v310);
                            v325 = v324 + 4 * v322;
                            v326 = __CFADD__(v324, 4 * v322);
                            v327 = 1;
                            v328 = 0;
                            v329 = 0;
                            if (v322 >> 62)
                            {
                              v330 = 0;
                            }

                            else
                            {
                              v330 = 0;
                              if (!v326)
                              {
                                v330 = v325 + 4 * v316;
                                v331 = __CFADD__(v325, 4 * v316);
                                if (v316 >> 62)
                                {
                                  v323 = 0;
                                  v328 = 0;
                                  v329 = 0;
                                }

                                else
                                {
                                  v329 = v325 + 8 * v316;
                                  v332 = __CFADD__(v325, 8 * v316);
                                  v333 = v316 >> 60 != 0;
                                  v334 = __CFADD__(v325, 16 * v316);
                                  v335 = v325 + 16 * v316;
                                  if (v334)
                                  {
                                    v333 = 1;
                                  }

                                  v336 = !v332;
                                  if (v332)
                                  {
                                    v337 = 0;
                                  }

                                  else
                                  {
                                    v337 = v335;
                                  }

                                  if (v336)
                                  {
                                    v338 = v329;
                                  }

                                  else
                                  {
                                    v338 = 0;
                                  }

                                  if (!v336)
                                  {
                                    v333 = 1;
                                  }

                                  if (v316 >> 61)
                                  {
                                    v337 = 0;
                                    v338 = 0;
                                    v339 = 1;
                                  }

                                  else
                                  {
                                    v339 = v333;
                                  }

                                  v340 = !v331;
                                  if (v331)
                                  {
                                    v323 = 0;
                                  }

                                  else
                                  {
                                    v323 = v337;
                                  }

                                  if (v340)
                                  {
                                    v328 = v338;
                                  }

                                  else
                                  {
                                    v328 = 0;
                                  }

                                  if (v340)
                                  {
                                    v327 = v339;
                                  }

                                  else
                                  {
                                    v329 = 0;
                                    v327 = 1;
                                  }
                                }
                              }
                            }
                          }

                          v341 = v327 | v320 & 1;
                          v342 = (v330 + v532) & v531;
                          v343 = (v329 + v532) & v531;
                          v344 = (v328 + v532) & v531;
                          v345 = (v323 + v532) & v531;
                          v334 = __CFADD__(v304, v345);
                          v304 += v345;
                          if (v334)
                          {
                            v341 = 1;
                          }

                          v334 = __CFADD__(v303, v344);
                          v303 += v344;
                          if (v334)
                          {
                            v341 = 1;
                          }

                          v334 = __CFADD__(v306, v343);
                          v306 += v343;
                          if (v334)
                          {
                            v341 = 1;
                          }

                          v334 = __CFADD__(v305, v342);
                          v305 += v342;
                          if (v334)
                          {
                            v300 = 1;
                          }

                          else
                          {
                            v300 = v341;
                          }

                          v310 = v313;
                          --v301;
                          v308 = v539;
                        }

                        while (v301);
                        v346 = (v303 + 1) >> 1;
                        v347 = (v304 + 1) >> 1;
                        v293 = a3;
                        v111 = v526;
                        v302 = MEMORY[0x277D85FA0];
                        v295 = v518;
                        v299 = v517;
                        v296 = v516;
                        v297 = v515;
                      }

                      if (v305 > v346)
                      {
                        v346 = v305;
                      }

                      if (v306 > v347)
                      {
                        v347 = v306;
                      }

                      v318 = v296 < 0;
                      v348 = v296 < 0;
                      v349 = 16 * v297;
                      if (v318)
                      {
                        v349 = -v349;
                      }

                      v334 = __CFADD__(v349, 32);
                      v350 = v349 + 32;
                      if (v334)
                      {
                        v348 = 1;
                      }

                      v334 = __CFADD__(v350, v299);
                      v351 = v350 + v299;
                      v352 = v334;
                      if (v348)
                      {
                        v351 = v299;
                      }

                      v353 = (v348 || v300) | v352;
                      if (v527 == 83)
                      {
                        v354 = v353;
                      }

                      else
                      {
                        v354 = v300;
                      }

                      if (v527 == 83)
                      {
                        v355 = v351;
                      }

                      else
                      {
                        v355 = v299;
                      }

                      v356 = *(*(v111 + 120) + 8 * *(v111 + 60));
                      v357 = v356 * v535;
                      v358 = v354 || (v356 * v535) >> 64 != (v356 * v535) >> 63;
                      if (v295 == 1)
                      {
                        v359 = 0;
                      }

                      else
                      {
                        v359 = 4 * v295 * (*(v111 + 100) + *(v111 + 96)) + 8;
                      }

                      v334 = __CFADD__(v355, v359);
                      v360 = v355 + v359;
                      if (v334)
                      {
                        v361 = (v359 >> 63) + 1;
                      }

                      else
                      {
                        v361 = v359 >> 63;
                      }

                      v363 = v361 << 63 >> 63 != v361 || v361 << 63 >> 63 == -1;
                      v334 = __CFADD__(*v302, v360);
                      v364 = *v302 + v360;
                      if (v334)
                      {
                        v363 = 1;
                      }

                      v365 = v358 || v363;
                      v366 = *(v111 + 56);
                      v367 = v357 >> 63;
                      v334 = __CFADD__(v357, 2 * v366);
                      v368 = v357 + 2 * v366;
                      if (v334)
                      {
                        v369 = v367 + 1;
                      }

                      else
                      {
                        v369 = v367;
                      }

                      v370 = v369 << 63 >> 63;
                      v371 = v370 != v369;
                      if (v365)
                      {
                        goto LABEL_426;
                      }

                      if ((*(v111 + 56) >> 63))
                      {
                        goto LABEL_426;
                      }

                      if (v371)
                      {
                        goto LABEL_426;
                      }

                      if (v370 < 0)
                      {
                        goto LABEL_426;
                      }

                      v372 = 4 * v368 + 144;
                      if (v368 >> 62 || 4 * v368 >= 0xFFFFFFFFFFFFFF70)
                      {
                        goto LABEL_426;
                      }

                      v334 = __CFADD__(v372, v364);
                      v373 = v372 + v364;
                      v374 = v334;
                      v375 = v346 + v373;
                      v376 = __CFADD__(v346, v373);
                      *(a5 + 56) = v375;
                      if (v374)
                      {
                        goto LABEL_426;
                      }

                      if (v376)
                      {
                        goto LABEL_426;
                      }

                      v377 = 8 * v368 + 144;
                      if (v368 >> 61 || 8 * v368 >= 0xFFFFFFFFFFFFFF70)
                      {
                        goto LABEL_426;
                      }

                      v334 = __CFADD__(v377, v364);
                      v378 = v377 + v364;
                      v379 = v334;
                      v334 = __CFADD__(v347, v378);
                      v380 = v347 + v378;
                      v381 = v334;
                      *(a5 + 64) = v380;
                      if (v379 || v381)
                      {
LABEL_426:
                        v394 = *(v293 + 40);
                        if (!v394)
                        {
                          v395 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                          if (v395)
                          {
                            sub_23672AFE4(v395, v396, v397, v398, v399, v400, v401, v402);
                          }

                          _SparseTrap();
                        }

                        memset(&__str[40], 0, 216);
                        strcpy(__str, "Computation of factor size overflowed.\n");
                        v394(__str);
                        (*(a3 + 32))(__src);
                        result = sub_23680EF08(v526, a3);
                        goto LABEL_120;
                      }

                      v382 = *(v111 + 64);
                      *(v111 + 392) = 8;
                      v383 = *(v111 + 56);
                      if (v383 >= 0)
                      {
                        v384 = v383;
                      }

                      else
                      {
                        v384 = -v383;
                      }

                      v385 = 8 * (v384 + 2 * v384);
                      if (v383 < 0)
                      {
                        v385 = -8 * (v384 + 2 * v384);
                      }

                      v386 = v385 + 48;
                      v387 = v385 >= 0xFFFFFFFFFFFFFFD0;
                      if (v527 == 82)
                      {
                        v318 = v383 < 0;
                        v388 = v383 < 0;
                        v389 = 4 * v384;
                        if (v318)
                        {
                          v389 = -v389;
                        }

                        v334 = __CFADD__(v389, 8);
                        v390 = v389 + 8;
                        if (v334)
                        {
                          v388 = 1;
                        }

                        v334 = __CFADD__(v390, v386);
                        v391 = v390 + v386;
                        v392 = v334;
                        if (!v388)
                        {
                          v386 = v391;
                        }

                        LOBYTE(v393) = v388 | v392;
                      }

                      else
                      {
                        v393 = v383 >> 31;
                      }

                      v403 = 0;
                      v404 = v387 | v393;
                      v405 = *(v111 + 52);
                      v406 = v405 < 0;
                      if (v405 >= 0)
                      {
                        v407 = v405;
                      }

                      else
                      {
                        v407 = -v405;
                      }

                      v408 = !is_mul_ok(v407, v386);
                      v409 = v407 * v386;
                      if (!(v407 * v386))
                      {
                        v406 = 0;
                      }

                      v410 = 1;
                      if (!v408 && !v406)
                      {
                        v403 = 0;
                        if (v405 >= 0)
                        {
                          v411 = v409;
                        }

                        else
                        {
                          v411 = -v409;
                        }

                        v412 = *(v111 + 168);
                        if (v412 >= 0)
                        {
                          v413 = *(v111 + 168);
                        }

                        else
                        {
                          v413 = -v412;
                        }

                        v414 = 8 * v413;
                        if (v412 < 0)
                        {
                          v414 = -v414;
                        }

                        v334 = __CFADD__(v411, v414);
                        v415 = v411 + v414;
                        v416 = v334;
                        v410 = 1;
                        if ((v412 & 0x80000000) == 0 && (v416 & 1) == 0)
                        {
                          v403 = v415 + 8;
                          v410 = v415 >= 0xFFFFFFFFFFFFFFF8;
                        }
                      }

                      v417 = v410 | v404 & 1;
                      if (v405 >= 2)
                      {
                        v418 = *(v111 + 336);
                        if (v418 >= 0)
                        {
                          v419 = *(v111 + 336);
                        }

                        else
                        {
                          v419 = -v418;
                        }

                        v420 = 40 * v419;
                        if (v418 < 0)
                        {
                          v420 = -v420;
                        }

                        v421 = v403 + v420;
                        v422 = __CFADD__(v403, v420);
                        v423 = 1;
                        if ((v418 & 0x80000000) == 0 && !v422)
                        {
                          v424 = v421 + 49152;
                          if (v421 >= 0xFFFFFFFFFFFF4000 || (v334 = __CFADD__(v424, 16 * v407), v425 = v424 + 16 * v407, v334))
                          {
                            v423 = 1;
                          }

                          else
                          {
                            v403 = v425 + 24;
                            v423 = v425 >= 0xFFFFFFFFFFFFFFE8;
                          }
                        }

                        v417 |= v423;
                      }

                      v478 = 12 * v382 + 16;
                      if (v478 <= v403)
                      {
                        v479 = v403;
                      }

                      else
                      {
                        v479 = v478;
                      }

                      *(a5 + 40) = v479;
                      *(a5 + 48) = v479;
                      if (!v417)
                      {
                        if (v479 <= v542 || ((*(v293 + 32))(__src), __src = (*(a3 + 24))(v479), v111 = v526, __src))
                        {
                          *(a5 + 8) = 0;
                          *(a5 + 32) = v111;
                          v481 = sub_236754888(v527, *(a5 + 24), v111, v375, a4, 0);
                          if (v481)
                          {
                            v483 = __src;
                            *v522 = v481;
                            if (v520)
                            {
                              v484 = *(v528 + 28);
                              v485 = *v528;
                              if (v485 >= 1)
                              {
                                v486 = 0;
                                for (i = 0; i != v485; ++i)
                                {
                                  if (v484)
                                  {
                                    v488 = (*(v481 + 96) + v486);
                                    v489 = &v520[*(v526[19] + 4 * i) * v484];
                                    v490 = v484;
                                    do
                                    {
                                      v491 = *v489++;
                                      *v488++ = v491;
                                      --v490;
                                    }

                                    while (v490);
                                  }

                                  v486 += 4 * v484;
                                }
                              }

                              v492 = v528[1];
                              if (v492 >= 1)
                              {
                                v493 = 0;
                                for (j = 0; j != v492; ++j)
                                {
                                  if (v484)
                                  {
                                    v495 = (*(v481 + 104) + v493);
                                    v496 = &v519[*(v526[20] + 4 * j) * v484];
                                    v497 = v484;
                                    do
                                    {
                                      v498 = *v496++;
                                      *v495++ = v498;
                                      --v497;
                                    }

                                    while (v497);
                                  }

                                  v493 += 4 * v484;
                                }
                              }

                              (*(a3 + 32))(v520, v519, v526, __src);
                              v483 = __src;
                            }

                            _SparseRefactorLU_Float(v528, a5, a4, v483, v482);
                            (*(a3 + 32))(__src);
                            result = sub_2367557D4(a5);
                          }

                          else
                          {
                            result = (*(a3 + 32))(__src);
                          }
                        }

                        else
                        {
                          if (!*(a3 + 40))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                            {
                              sub_2366F716C();
                            }

                            _SparseTrap();
                          }

                          memset(__str, 0, 256);
                          snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v479);
                          result = (*(a3 + 40))(__str);
                        }

                        goto LABEL_120;
                      }

                      v480 = *(v293 + 40);
                      if (!v480)
                      {
                        v499 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v499)
                        {
                          sub_23672AFA8(v499, v500, v501, v502, v503, v504, v505, v506);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[73], 0, 183);
                      strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
                      v480(__str);
                      result = (*(a3 + 32))(__src);
                      goto LABEL_118;
                    }

                    v544 = 0uLL;
                    *&v543 = __PAIR64__(*v541, *&v541[4]);
                    *(&v543 + 1) = __src;
                    v108 = (4 * *(*&v541[8] + 8 * *&v541[4]) + 7) & 0xFFFFFFFFFFFFFFF8;
                    v533 = v56;
                    *&v544 = &__src[2 * *v541 + 2];
                    v109 = (v544 + v108);
                    if (sub_236750FA0(v541, &v543, *(v36 + 72), *(v36 + 80), (v36 + 88), (v36 + 92), (v36 + 96), (v36 + 100), *(v36 + 152), *(v36 + 160), v544 + v108))
                    {
                      v110 = *(a3 + 40);
                      if (!v110)
                      {
                        v147 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v147)
                        {
                          sub_23672ADFC(v147, v148, v149, v150, v151, v152, v153, v154);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[33], 0, 223);
                      strcpy(__str, "Matrix is structurally singular.");
                      v110(__str);
                      (*(a3 + 32))(v36);
LABEL_155:
                      v155 = -2;
LABEL_156:
                      *a5 = v155;
LABEL_509:
                      v293 = a3;
                      v111 = 0;
                      goto LABEL_269;
                    }

                    v137 = *v541;
                    v138 = vsub_s32(*v541, *(v36 + 88));
                    v139 = *(v36 + 60) - *(v36 + 88);
                    *(v36 + 60) = v139;
                    if ((vceq_s32(v138, vdup_lane_s32(v138, 1)).u8[0] & 1) == 0)
                    {
                      v179 = *(a3 + 40);
                      if (!v179)
                      {
                        v461 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v461)
                        {
                          sub_23672AE38(v461, v462, v463, v464, v465, v466, v467, v468);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[74], 0, 182);
                      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
                      v179(__str);
                      *a5 = -4;
                      (*(a3 + 32))(v36);
                      goto LABEL_509;
                    }

                    v140 = v36;
                    v141 = *(v36 + 96);
                    v142 = *(v36 + 100) + v141;
                    if (v538)
                    {
                      v143 = *(v36 + 152);
                      v144 = *(v36 + 160);
                      v145 = v109;
                      if (v137 >= 1)
                      {
                        v146 = 0;
                        do
                        {
                          *(v144 + v146) = *&v538[4 * *(v143 + v146)];
                          v146 += 4;
                        }

                        while (4 * v137 != v146);
                      }
                    }

                    else
                    {
                      *__str = *v541;
                      *&__str[16] = *&v541[16];
                      *v548 = v543;
                      *&v548[16] = v544;
                      v180 = v139;
                      if (sub_236710A64(__str, v548, v139 - v142, *(v36 + 152) + 4 * v141, v139 - v142, (*(v36 + 160) + 4 * v141), v109) != v139 - v142)
                      {
                        v469 = *(a3 + 40);
                        if (!v469)
                        {
                          v507 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                          if (v507)
                          {
                            sub_23672AE74(v507, v508, v509, v510, v511, v512, v513, v514);
                          }

                          _SparseTrap();
                        }

                        memset(&__str[74], 0, 182);
                        strcpy(__str, "Unable to construct maximal transversal, matrix is structurally singular.");
                        v469(__str);
                        goto LABEL_155;
                      }

                      v140 = v36;
                      v143 = *(v36 + 152);
                      v144 = *(v36 + 160);
                      v139 = v180;
                      v145 = v109;
                    }

                    v525 = v139;
                    *__str = *v541;
                    *&__str[16] = *&v541[16];
                    v181 = sub_2367D4EEC(__str, v139 - v142, (v143 + 4 * *(v140 + 96)), (v144 + 4 * *(v140 + 96)), v145, v145 + ((4 * (v139 - v142) + 11) & 0xFFFFFFFFFFFFFFF8));
                    *(v36 + 104) = v181;
                    v182 = (*(a3 + 24))(4 * v181 + 4);
                    v183 = v36;
                    *(v36 + 112) = v182;
                    if ((*(v36 + 104) & 0x80000000) != 0)
                    {
                      goto LABEL_185;
                    }

                    v184 = v109;
                    v185 = 0;
                    do
                    {
                      *(v182 + 4 * v185) = *(v36 + 96) + *&v109[4 * v185];
                      v186 = *(v36 + 104);
                      v318 = v185++ < v186;
                    }

                    while (v318);
                    if (v186 < 1)
                    {
LABEL_185:
                      v175 = v183;
                      if (*v541 >= 1)
                      {
                        v212 = 0;
                        v213 = *(v183 + 136);
                        v214 = *(v183 + 152);
                        do
                        {
                          *(v213 + 4 * *(v214 + 4 * v212)) = v212;
                          ++v212;
                        }

                        while (v212 < *v541);
                      }

                      v178 = v533;
                      if (*&v541[4] >= 1)
                      {
                        v215 = 0;
                        v216 = *(v183 + 144);
                        v217 = *(v183 + 160);
                        do
                        {
                          *(v216 + 4 * *(v217 + 4 * v215)) = v215;
                          ++v215;
                        }

                        while (v215 < *&v541[4]);
                      }

                      v218 = *(a3 + 8);
                      if (v218)
                      {
                        memcpy(v218, *(v183 + 136), 4 * *v541);
                        memcpy((*(a3 + 8) + 4 * *v541), *(v175 + 144), 4 * *&v541[4]);
                      }

                      v176 = __src;
                      v177 = v525;
LABEL_194:
                      v219 = v177 - (*(v175 + 96) + *(v175 + 100));
                      *__str = v219;
                      *&__str[4] = v219;
                      *&__str[16] = 0;
                      *&__str[24] = 0;
                      *&__str[8] = v176;
                      *v548 = v219;
                      *&v548[4] = v219;
                      v220 = &v176[2 * v219 + 8 + 2 * v219];
                      *&v548[16] = 0;
                      *&v548[24] = 0;
                      *&v548[8] = &v176[2 * v219 + 4];
                      v221 = 4 * *(*&v541[8] + 8 * v177);
                      v222 = (v221 + 7) & 0xFFFFFFFFFFFFFFF8;
                      v534 = v178;
                      v223 = &v220[v222];
                      v546 = *v541;
                      v547 = *&v541[16];
                      sub_236789F74(&v546, *(v175 + 104), *(v175 + 112), *(v175 + 136), *(v175 + 144), __str, v548, v220, v221, &v220[v222]);
                      v224 = 8 * v219;
                      *(v36 + 216) = (*(a3 + 24))(v224 + 8);
                      *(v36 + 240) = (*(a3 + 24))(v224 + 8);
                      sub_23676C728(v527, v219, *&__str[8], *&__str[16], *&v548[8], *&v548[16], (v36 + 168), (v36 + 176), *(v36 + 184), (v36 + 192), *(v36 + 200), (v36 + 208), *(v36 + 216), (v36 + 224), (v36 + 232), v541[28], a3, v223);
                      v225 = sub_23676DFE0(*(v36 + 60), *(v36 + 168), *(*(v36 + 216) + 8 * *(v36 + 168)));
                      if (v225 <= v534)
                      {
                        sub_23676E074(v36, v541[28], __src);
                      }

                      else
                      {
                        v226 = (*(a3 + 24))(v225);
                        sub_23676E074(v36, v541[28], v226);
                        if (v226 != __src)
                        {
                          (*(a3 + 32))(v226);
                        }
                      }

                      v227 = sub_2366F8F4C(v219, *(v36 + 168));
                      v228 = v227;
                      v229 = __src;
                      if (v227 > v534)
                      {
                        v229 = (*(a3 + 24))(v227);
                      }

                      sub_2366F8F68(v527, v219, *(v36 + 168), *(v36 + 176), *(v36 + 184), *(v36 + 192), *(v36 + 200), *(v36 + 208), *(v36 + 216), *(v36 + 224), *(v36 + 232), *(v36 + 240), (v36 + 248), (v36 + 256), *(v36 + 304), a3, v229, v228);
                      if (v229 != __src)
                      {
                        (*(a3 + 32))(v229);
                      }

                      v230 = sub_2366FAB28(*(v36 + 60), *(v36 + 168));
                      v231 = __src;
                      if (v230 > v534)
                      {
                        v231 = (*(a3 + 24))(v230, __src);
                      }

                      sub_2366FAB3C(v36, v231);
                      if ((*(v36 + 168) & 0x80000000) == 0)
                      {
                        v232 = *(v36 + 176);
                        v233 = -1;
                        do
                        {
                          *v232++ += *(v36 + 96);
                          v234 = *(v36 + 168);
                          ++v233;
                        }

                        while (v233 < v234);
                        if (v234 >= 1)
                        {
                          v235 = 0;
                          v236 = *(v36 + 184);
                          v237 = *(v36 + 200);
                          v238 = *v236;
                          do
                          {
                            v239 = v235++;
                            v240 = v236[v235];
                            v241 = v240 - v238;
                            if (v240 > v238)
                            {
                              v242 = (*(v36 + 192) + 4 * v238);
                              do
                              {
                                *v242++ += *(v36 + 96);
                                --v241;
                              }

                              while (v241);
                            }

                            v243 = *(v237 + 8 * v239);
                            v244 = *(v237 + 8 * v235);
                            v318 = v244 <= v243;
                            v245 = v244 - v243;
                            if (!v318)
                            {
                              v246 = (*(v36 + 208) + 4 * v243);
                              do
                              {
                                *v246++ += *(v36 + 96);
                                --v245;
                              }

                              while (v245);
                            }

                            v238 = v240;
                          }

                          while (v235 < *(v36 + 168));
                        }
                      }

                      if (v527 == 83)
                      {
                        LODWORD(v247) = *(v36 + 96);
                        v248 = *(v36 + 60) - *(v36 + 100);
                        if (v248 > v247)
                        {
                          v249 = *(v36 + 304) - 4;
                          do
                          {
                            *(v249 + 4 * v248) = *(v249 + 4 * v248 - 4 * v247);
                            v247 = *(v36 + 96);
                            --v248;
                          }

                          while (v248 > v247);
                        }
                      }

                      v250 = (*(a3 + 24))(8 * *v541 + 16);
                      *(v36 + 312) = v250;
                      v251 = *v541;
                      v252 = *&v541[4];
                      v253 = *&v541[8];
                      v254 = *&v541[16];
                      v255 = v250 + 2;
                      bzero(v250 + 2, 8 * *v541);
                      if (v252 >= 1)
                      {
                        v256 = 0;
                        v257 = *(v36 + 144);
                        v258 = *(v36 + 96);
                        do
                        {
                          v259 = *(v257 + 4 * v256);
                          if (v259 >= v258 && v259 < *(v36 + 60) - *(v36 + 100))
                          {
                            v260 = (v253 + 8 * v256);
                            v261 = *v260;
                            v262 = v260[1];
                            while (v261 < v262)
                            {
                              v263 = *(v254 + 4 * v261);
                              if ((v263 & 0x80000000) == 0 && v263 < v251)
                              {
                                v264 = *(*(v36 + 136) + 4 * v263);
                                if (v264 <= v259)
                                {
                                  ++v255[v264];
                                  v262 = v260[1];
                                }
                              }

                              ++v261;
                            }
                          }

                          ++v256;
                        }

                        while (v256 != v252);
                      }

                      v250[1] = 0;
                      v265 = v250 + 1;
                      if (v251 >= 1)
                      {
                        v266 = 0;
                        v267 = v251;
                        do
                        {
                          v266 += *v255;
                          *v255++ = v266;
                          --v267;
                        }

                        while (v267);
                      }

                      v268 = v265[v251];
                      v269 = (*(a3 + 24))(12 * v268 + 8);
                      v270 = (v269 + 4 * v268 + 7) & 0xFFFFFFFFFFFFFFF8;
                      *(v36 + 320) = v269;
                      *(v36 + 328) = v270;
                      *v250 = 0;
                      if (v252 > 0)
                      {
                        v271 = 0;
                        v272 = *(v36 + 144);
                        do
                        {
                          v273 = *(v272 + 4 * v271);
                          if (v273 >= *(v36 + 96) && v273 < *(v36 + 60) - *(v36 + 100))
                          {
                            v274 = (v253 + 8 * v271);
                            v275 = *v274;
                            v276 = v274[1];
                            while (v275 < v276)
                            {
                              v277 = *(v254 + 4 * v275);
                              if ((v277 & 0x80000000) == 0 && v277 < v251)
                              {
                                v278 = *(*(v36 + 136) + 4 * v277);
                                if (v278 <= v273)
                                {
                                  v279 = v265[v278];
                                  *(v269 + 4 * v279) = v273;
                                  *(v270 + 8 * v279) = v275;
                                  ++v265[v278];
                                  v276 = v274[1];
                                }
                              }

                              ++v275;
                            }
                          }

                          ++v271;
                        }

                        while (v271 != v252);
                      }

                      v280 = *(v36 + 168);
                      if (v280 < 1)
                      {
                        v282 = 0;
                      }

                      else
                      {
                        v281 = 0;
                        v282 = 0;
                        v283 = *(v36 + 176);
                        v284 = *v283;
                        do
                        {
                          v285 = v283[++v281];
                          if (v284 < v285)
                          {
                            v286 = *(v36 + 312);
                            v287 = v284;
                            v288 = *(v286 + 8 * v284);
                            do
                            {
                              *(v286 + 8 * v287++) = v282;
                              v289 = *(v286 + 8 * v287);
                              if (v288 < v289)
                              {
                                do
                                {
                                  v290 = *(v269 + 4 * v288);
                                  if (v290 >= v283[v281])
                                  {
                                    *(v269 + 4 * v282) = v290;
                                    *(v270 + 8 * v282++) = *(v270 + 8 * v288);
                                    v289 = *(v286 + 8 * v287);
                                  }

                                  ++v288;
                                }

                                while (v288 < v289);
                                v285 = v283[v281];
                              }

                              v288 = v289;
                            }

                            while (v287 < v285);
                            v280 = *(v36 + 168);
                          }

                          v284 = v285;
                        }

                        while (v281 < v280);
                      }

                      *(*(v36 + 312) + 8 * (*(v36 + 60) - *(v36 + 100))) = v282;
                      v291 = sub_2366FB334(v280);
                      if (v534 >= v291)
                      {
                        sub_2366FB348(v36, __src);
                      }

                      else
                      {
                        v292 = (*(a3 + 24))(v291);
                        sub_2366FB348(v36, v292);
                        if (v292 != __src)
                        {
                          (*(a3 + 32))(v292);
                        }
                      }

                      *__str = *v541;
                      *&__str[16] = *&v541[16];
                      if (!sub_2368124D8(__str, *(v36 + 88), *(v36 + 92), *(v36 + 96), *(v36 + 100), *(v36 + 104), *(v36 + 112), *(v36 + 136), *(v36 + 160), *(v36 + 120), (v36 + 128), a3))
                      {
                        v426 = 0;
                        v427 = 0;
                        v428 = 0;
                        v111 = v36;
                        *(v36 + 288) = 0;
                        *(v36 + 296) = 0;
                        v429 = *(v36 + 168) & ~(*(v36 + 168) >> 31);
                        v430 = v541[28];
                        v293 = a3;
                        v294 = v538;
                        while (v429 != v428)
                        {
                          v431 = (*(*(v36 + 176) + 4 * v428 + 4) - *(*(v36 + 176) + 4 * v428)) * v430;
                          v432 = *(*(v36 + 184) + 8 * v428);
                          v433 = *(*(v36 + 184) + 8 * v428 + 8);
                          v434 = __OFSUB__(v433, v432);
                          v435 = v433 - v432;
                          if (v435 >= 0)
                          {
                            v436 = v435;
                          }

                          else
                          {
                            v436 = -v435;
                          }

                          v437 = (v436 * v430) >> 64;
                          v438 = v436 * v430;
                          if (v435 < 0 != v434)
                          {
                            v439 = -v438;
                          }

                          else
                          {
                            v439 = v436 * v430;
                          }

                          v440 = v437 != 0;
                          v434 = __OFADD__(v431, v439);
                          v441 = v431 + v439;
                          v442 = v434;
                          v444 = *(*(v36 + 200) + 8 * v428);
                          v443 = *(*(v36 + 200) + 8 * v428 + 8);
                          v445 = __OFSUB__(v443, v444);
                          v446 = v443 - v444;
                          if (v446 >= 0)
                          {
                            v447 = v446;
                          }

                          else
                          {
                            v447 = -v446;
                          }

                          v448 = (v447 * v430) >> 64;
                          v449 = v447 * v430;
                          if (v446 < 0 != v445)
                          {
                            v450 = -v449;
                          }

                          else
                          {
                            v450 = v449;
                          }

                          v451 = v448 != 0;
                          v452 = v431 + v450;
                          v453 = __OFADD__(v431, v450);
                          v454 = (v441 * v431) >> 64 != (v441 * v431) >> 63;
                          v434 = __OFADD__(v427, v441 * v431);
                          v427 += v441 * v431;
                          v455 = v434;
                          v456 = v452 - v431;
                          v457 = (v452 - v431) * v431;
                          v458 = (v456 * v431) >> 64 != v457 >> 63;
                          v434 = __OFADD__(v426, v457);
                          v426 += v457;
                          v459 = v434;
                          *(v36 + 288) = v427;
                          *(v36 + 296) = v426;
                          if (!v440 && v438 <= (v435 >> 63) + 0x7FFFFFFFFFFFFFFFLL && (v442 & 1) == 0 && !v451 && v449 <= (v446 >> 63) + 0x7FFFFFFFFFFFFFFFLL && !v453 && !v454 && (v455 & 1) == 0 && !v458)
                          {
                            ++v428;
                            if (!v459)
                            {
                              continue;
                            }
                          }

                          v460 = *(a3 + 40);
                          if (!v460)
                          {
                            v470 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                            if (v470)
                            {
                              sub_23672AF30(v470, v471, v472, v473, v474, v475, v476, v477);
                            }

                            _SparseTrap();
                          }

                          memset(&__str[36], 0, 220);
                          strcpy(__str, "factor size calculation overflowed\n");
                          v460(__str, v449, v36, v455, v454, v458, v451);
                          (*(a3 + 32))(v36);
                          v111 = 0;
                          v112 = -3;
                          goto LABEL_114;
                        }

                        goto LABEL_270;
                      }

                      (*(a3 + 32))(*(v36 + 112));
                      (*(a3 + 32))(v36);
                      goto LABEL_267;
                    }

                    v187 = 0;
                    v530 = 4 * v29;
                    while (1)
                    {
                      v188 = 8 * (*(*&v541[8] + 8 * *&v541[4]) + v525 + 2);
                      v189 = *(v183 + 112);
                      v190 = *(v189 + 4 * v187++);
                      v191 = *(v183 + 152);
                      v192 = *(v183 + 160);
                      __b = *(v183 + 136);
                      v194 = *(v183 + 144);
                      v195 = (*(v189 + 4 * v187) - v190);
                      *v548 = *v541;
                      *&v548[8] = *&v541[8];
                      *&v548[24] = *&v541[24];
                      v196 = v191 + 4 * v190;
                      v546 = v543;
                      v547 = v544;
                      v197 = v192 + 4 * v190;
                      sub_23670BC48(v548, &v546, v195, v196, v197, v184 + ((v530 + 7) & 0xFFFFFFFFFFFFFFF8), v184, __str, v530, __b, 4 * *v541, v194);
                      *v548 = *__str;
                      *&v548[16] = *&__str[16];
                      if (sub_2367E3E64(v527, v548, 0, __b, v194, a3))
                      {
                        break;
                      }

                      if (v195 <= 0)
                      {
                        v211 = v196;
                        v205 = 4 * v195;
                        memcpy(v211, v194, v205);
                        v206 = v197;
                      }

                      else
                      {
                        v198 = v196;
                        v199 = __b;
                        v200 = v195;
                        do
                        {
                          v202 = *v198++;
                          v201 = v202;
                          v203 = *v199++;
                          v194[v203] = v201;
                          --v200;
                        }

                        while (v200);
                        v204 = v196;
                        v205 = 4 * v195;
                        memcpy(v204, v194, 4 * v195);
                        v206 = v197;
                        v207 = v197;
                        do
                        {
                          v209 = *v207++;
                          v208 = v209;
                          v210 = *__b++;
                          v194[v210] = v208;
                          --v195;
                        }

                        while (v195);
                      }

                      memcpy(v206, v194, v205);
                      v183 = v36;
                      v184 = v109;
                      if (v187 >= *(v36 + 104))
                      {
                        goto LABEL_185;
                      }
                    }

                    (*(a3 + 32))(v36);
                    v155 = -3;
                    goto LABEL_156;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_553:
  __break(1u);
  return result;
}

uint64_t _SparseUpdatePartialRefactorLU_Float(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v197 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v8 = *(a1 + 25);
  v9 = *(a4 + 28);
  v169 = v9;
  v10 = *(v6 + 168);
  v11 = *(v6 + 56);
  v145 = 8 * v10 + 16 * v11 + 4 * (9 * v11 + v10);
  v12 = v10 + 8 * v11 + 8 * v10 + 40 * *(v6 + 336) + (v145 + 120) * *(v6 + 52) + 49208;
  v13 = (*(v6 + 24))(v12);
  v14 = *(v6 + 56);
  v15 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v13 + v15;
  v146 = v14;
  if (*(v6 + 168) >= 1)
  {
    v17 = 0;
    v18 = v7[14];
    v19 = *(v6 + 176);
    while (1)
    {
      if (v8 == 83)
      {
        v20 = *(v7[9] + 4 * v17);
        v21 = *(v7[10] + 4 * v17);
        v22 = *(v7[11] + 4 * v17);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      v23 = v17 + 1;
      v24 = v20 + (*(v19 + 4 * (v17 + 1)) - *(v19 + 4 * v17)) * v9;
      if (v8 == 83)
      {
        v25 = *(v7[8] + 4 * v17);
      }

      else
      {
        v25 = v24;
        if (v8 == 81)
        {
          if (v24 >= 1)
          {
            v26 = 0;
            do
            {
              *(v13 + 4 * (v26 + *(v19 + 4 * v17) * v9)) = v17;
              *(v16 + 4 * (v26 + *(v19 + 4 * v17) * v9)) = v17;
              ++v26;
            }

            while (v24 != v26);
          }

          goto LABEL_16;
        }
      }

      if (v25 >= 1)
      {
        v27 = v24;
        v28 = v24 + v21 + (*(*(v6 + 184) + 8 * v23) - *(*(v6 + 184) + 8 * v17)) * v9;
        v29 = v25;
        v30 = *(v18 + 8 * v17) + 8;
        v31 = 4 * (v22 + (*(*(v6 + 200) + 8 * v23) - *(*(v6 + 200) + 8 * v17)) * v9) + 4 * v28;
        v32 = (v30 + (v31 + 4) * v27 + 4 * v21);
        v33 = (v30 + v31 * v27);
        do
        {
          v34 = *v33++;
          *(v13 + 4 * v34) = v17;
          v35 = *v32++;
          *(v16 + 4 * v35) = v17;
          --v29;
        }

        while (v29);
      }

LABEL_16:
      ++v17;
      if (v23 >= *(v6 + 168))
      {
        v14 = *(v6 + 56);
        break;
      }
    }
  }

  memset(__str, 0, sizeof(__str));
  v178 = 0;
  v179 = v6;
  v170[0] = v6;
  sub_23672A590(v168, v14, __str, v170);
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v179 + 32))();
  }

  v36 = *(v6 + 56);
  memset(__str, 0, sizeof(__str));
  v178 = 0;
  v179 = v6;
  v170[0] = v6;
  sub_23672A590(v167, v36, __str, v170);
  v144 = v12;
  v151 = v8;
  v153 = v7;
  v148 = a1;
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v179 + 32))();
  }

  v143 = v15;
  v37 = v16 + v15;
  v152 = *(v6 + 168);
  bzero((v16 + v15), v152);
  if (a2 >= 1)
  {
    v38 = 0;
    v39 = (v9 * v9);
    v40 = 4 * v39;
    v155 = a2;
    v149 = -4 * v39;
    while (1)
    {
      v41 = (a3 + 8 * v38);
      v43 = *v41;
      v42 = v41[1];
      v44 = v43 / v169;
      v45 = v42 / v169;
      v46 = *(*(v6 + 136) + 4 * (v43 / v169));
      v47 = *(*(v6 + 144) + 4 * (v42 / v169));
      v48 = v43 % v169 + v46 * v169;
      LODWORD(v170[0]) = v48;
      v49 = v42 % v169 + v47 * v169;
      LODWORD(v166[0]) = v49;
      v50 = *(v6 + 72);
      if (v50 && (*(v50 + v43) & 1) != 0)
      {
        goto LABEL_60;
      }

      v51 = *(v6 + 80);
      if (v51)
      {
        if (*(v51 + v42))
        {
          goto LABEL_60;
        }
      }

      if (v47 < *(v6 + 96))
      {
        goto LABEL_35;
      }

      if (v47 >= *(v6 + 60) - *(v6 + 100))
      {
        goto LABEL_35;
      }

      v52 = *(v6 + 112);
      do
      {
        v54 = *v52++;
        v53 = v54;
      }

      while (v47 >= v54);
      if (v46 >= v53)
      {
LABEL_35:
        v59 = (*(v6 + 120) + 8 * v47);
        v61 = *v59;
        v60 = v59[1];
        v62 = v60 <= v61;
        v63 = v60 - v61;
        if (v62)
        {
LABEL_39:
          v67 = 0;
        }

        else
        {
          v64 = v149 * v61;
          v65 = (*(v6 + 128) + 4 * v61);
          while (1)
          {
            v66 = *v65++;
            if (v66 == v44)
            {
              break;
            }

            v64 -= v40;
            if (!--v63)
            {
              goto LABEL_39;
            }
          }

          v67 = (*(v153 + 40) - v64);
        }

        v68 = (*(a4 + 8) + 8 * v45);
        v70 = *v68;
        v69 = v68[1];
        v62 = v69 <= v70;
        v71 = v69 - v70;
        if (v62)
        {
LABEL_45:
          v75 = 0;
        }

        else
        {
          v72 = v149 * v70;
          v73 = (*(a4 + 16) + 4 * v70);
          while (1)
          {
            v74 = *v73++;
            if (v74 == v44)
            {
              break;
            }

            v72 -= v40;
            if (!--v71)
            {
              goto LABEL_45;
            }
          }

          v75 = (*(a4 + 32) - v72);
        }

        memcpy(v67, v75, v40);
        if (v46 == v47)
        {
          if (v169 == 1)
          {
            *v67 = 1.0 / *v67;
          }

          else
          {
            v76 = *(v6 + 96);
            if (v46 >= v76)
            {
              v46 = v76 + v46 - *(v6 + 60) + *(v6 + 100);
            }

            v77 = *(v153 + 48) + 4 * v46 * v169;
            LODWORD(v165[0]) = 0;
            sgetrf_NEWLAPACK();
          }
        }

        goto LABEL_60;
      }

      v55 = *(v13 + 4 * v48);
      v56 = *(v16 + 4 * v49);
      if (v55 < v56)
      {
        break;
      }

      if (v55 > v56)
      {
        v57 = (v168[0] + 32 * v56);
        v58 = v170;
        goto LABEL_55;
      }

LABEL_56:
      if (v55 <= v56)
      {
        v78 = v56;
      }

      else
      {
        v78 = v55;
      }

      *(v37 + v78) = 1;
LABEL_60:
      if (++v38 == v155)
      {
        goto LABEL_61;
      }
    }

    v57 = (v167[0] + 32 * v55);
    v58 = v166;
LABEL_55:
    sub_236725158(v57, v58);
    goto LABEL_56;
  }

LABEL_61:
  v158 = (v37 + ((v152 + 7) & 0xFFFFFFFFFFFFFFF8));
  v79 = *(v6 + 168);
  if (v79 >= 1)
  {
    for (i = 0; i != v79; ++i)
    {
      if ((*(v37 + i) & 1) == 0)
      {
        v81 = (*(v6 + 240) + 8 * i);
        v83 = *v81;
        v82 = v81[1];
        v62 = v82 <= v83;
        v84 = v82 - v83;
        if (!v62)
        {
          v85 = (*(v6 + 248) + 4 * v83);
          while (1)
          {
            v86 = *v85++;
            if (*(v37 + v86) == 1)
            {
              break;
            }

            if (!--v84)
            {
              goto LABEL_70;
            }
          }

          *(v37 + i) = 1;
        }
      }

LABEL_70:
      ;
    }
  }

  v156 = v146 & 0x3FFFFFFFFFFFFFFFLL;
  v87 = v79;
  v88 = 8 * v79;
  v89 = &v158[v88];
  bzero(v158, v88);
  v90 = *(v6 + 52);
  if (v90 != 1)
  {
    _X0 = 0;
    LODWORD(v170[0]) = *(v6 + 52);
    atomic_store(0, v170 + 1);
    atomic_store(0, (v170 | 0xC));
    atomic_store(0, v171);
    v110 = v172;
    do
    {
      _X5 = v173;
      __asm { CASPAL          X4, X5, X0, X1, [X19] }

      _ZF = _X4 == v110;
      v110 = _X4;
    }

    while (!_ZF);
    v174 = v145 + 104;
    v175 = &v158[v88];
    v176 = 0;
    v117 = &v89[40 * *(v6 + 336) + (((v145 + 104) * v90 + 7) & 0xFFFFFFFFFFFFFFF8)];
    __str[0] = v151;
    *&__str[8] = a4;
    v178 = v6;
    LODWORD(v179) = v169;
    v180 = v153;
    v181 = v37 + ((v152 + 7) & 0xFFFFFFFFFFFFFFF8);
    v182 = 0;
    v183 = &v89[((v145 + 104) * v90 + 7) & 0xFFFFFFFFFFFFFFF8];
    v184 = sub_2367921D4(256, v117 + 16 * v90);
    v185 = v118;
    __p[0] = 0;
    __p[1] = 0;
    v187 = 0;
    v188 = v117;
    v189 = v37;
    v190 = v152;
    v191 = v13;
    v192 = v146 & 0x3FFFFFFFFFFFFFFFLL;
    v193 = v16;
    v194 = v146 & 0x3FFFFFFFFFFFFFFFLL;
    v195 = v168;
    v196 = v167;
    v176 = __str;
    if (*(v6 + 52))
    {
      v119 = 0;
      v120 = 0;
      do
      {
        *(v117 + v119 + 8) = *(v6 + 392);
        v121 = (*(v6 + 24))();
        v117 = v188;
        *(v188 + v119) = v121;
        ++v120;
        v119 += 16;
      }

      while (v120 < *(v6 + 52));
    }

    if (*(v6 + 336) >= 1)
    {
      _X22 = 0;
      v123 = 0;
      v124 = 0;
      do
      {
        v125 = v124;
        v62 = *(*(v6 + 176) + 4 * *(*(v6 + 344) + 4 * v124++)) < *(*(v6 + 112) + 4 * (v123 + 1));
        if (!v62)
        {
          ++v123;
        }

        v126 = *(*(v6 + 368) + 8 * v124) - *(*(v6 + 368) + 8 * v125);
        v127 = &v183[40 * v125];
        atomic_store(v126, v127);
        *(v127 + 2) = v125;
        *(v127 + 3) = v123;
        *(v127 + 2) = sub_23676066C;
        if (!v126)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X27] }

          *(v127 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v127 + 4) = 0;
          v131 = _X0 & 1;
          _X2 = v131 | v127;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X27] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X22, X23, [X10] }

            *(v127 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v127 + 4) = 0;
            v131 = _X0 & 1;
            _X2 = v131 | v127;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v131)
          {
            __ulock_wake();
          }
        }
      }

      while (v124 < *(v6 + 336));
    }

    v138 = sub_2366FCD2C(v170, 1);
    v108 = v138;
    if (!v138)
    {
      if (*(v6 + 52))
      {
        v139 = 0;
        v140 = 0;
        do
        {
          (*(v6 + 32))(*(v188 + v139));
          ++v140;
          v139 += 16;
        }

        while (v140 < *(v6 + 52));
      }

      v108 = -3;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v138)
    {
      goto LABEL_109;
    }

LABEL_108:
    (*(v6 + 32))(v13);
    v108 = 0;
    goto LABEL_109;
  }

  v91 = *(v6 + 56);
  v92 = (4 * v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = &v89[v92];
  *__str = &v158[v88];
  *&__str[8] = v91 & 0x3FFFFFFFFFFFFFFFLL;
  LODWORD(v178) = 1;
  bzero(v89, 4 * v91);
  v94 = *(v6 + 168);
  v95 = 4 * v94;
  v170[0] = v93;
  v170[1] = v94 & 0x3FFFFFFFFFFFFFFFLL;
  v171[0] = 1;
  v147 = v93;
  bzero(v93, 4 * v94);
  v166[0] = 0;
  v166[1] = 0;
  v165[0] = 0;
  v165[1] = 0;
  v164[0] = 0;
  v164[1] = 0;
  v163[0] = 0;
  v163[1] = 0;
  v162[0] = 0;
  v162[1] = 0;
  v96 = (*(v6 + 24))(*(v6 + 392));
  v97 = *(v6 + 392);
  v161[0] = v96;
  v161[1] = v97;
  v98 = v153;
  v99 = (v153 + 136);
  LODWORD(v97) = atomic_load((v153 + 136));
  v160 = v97;
  v100 = (v98 + 140);
  v101 = atomic_load((v98 + 140));
  v159 = v101;
  if (*(v6 + 168) < 1)
  {
LABEL_82:
    atomic_store(v160, v99);
    atomic_store(v101, v100);
    (*(v6 + 32))(v163[0]);
    (*(v6 + 32))(v162[0]);
    (*(v6 + 32))(v166[0]);
    (*(v6 + 32))(v165[0]);
    (*(v6 + 32))(v164[0]);
    goto LABEL_108;
  }

  v102 = 0;
  v103 = 0;
  v104 = v95;
  LODWORD(v95) = 0;
  v150 = v87;
  v105 = (v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = v144 - v105 - (((v152 + 7) & 0xFFFFFFFFFFFFFFF8) + 2 * v143 + v88 + v92);
  v107 = &v147[v105];
  while (1)
  {
    v95 = *(*(v6 + 176) + 4 * v103) < *(*(v6 + 112) + 4 * (v95 + 1)) ? v95 : (v95 + 1);
    if (*(v37 + v103) == 1 || (sub_23675B824(v103, a4, v151, v6, v169, v153, v168, v167, v163, v162, v166, v165, v164, __str, v37, v152, v107), (*(v37 + v103) & 1) != 0))
    {
      *(v167[0] + v102 + 8) = *(v167[0] + v102);
      *(v168[0] + v102 + 8) = *(v168[0] + v102);
      v108 = sub_23675DB04(v103, v95, a4, v151, v6, v169, v153, &v160, &v159, v158, v150, v166, v165, v164, __str, v170, v37, v152, v13, v156, v16, v156, v107, v106, v161, 0, 0);
      if (v108)
      {
        break;
      }
    }

    ++v103;
    v102 += 32;
    if (v103 >= *(v6 + 168))
    {
      v101 = v159;
      v99 = (v153 + 136);
      v100 = (v153 + 140);
      goto LABEL_82;
    }
  }

  (*(v6 + 32))(v163[0]);
  (*(v6 + 32))(v162[0]);
  (*(v6 + 32))(v166[0]);
  (*(v6 + 32))(v165[0]);
  (*(v6 + 32))(v164[0]);
  (*(v6 + 32))(v13);
LABEL_109:
  *__str = v167;
  sub_23672A890(__str);
  *__str = v168;
  sub_23672A890(__str);
  *v148 = v108;
  result = sub_2367557D4(v148);
  v142 = *MEMORY[0x277D85DE8];
  return result;
}