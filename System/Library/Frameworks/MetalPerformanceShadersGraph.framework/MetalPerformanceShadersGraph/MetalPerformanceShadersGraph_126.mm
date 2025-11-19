uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v58 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v58 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v57 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v57 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v57 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v59 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  v56 = v53[1] + v54[1];
                  *v55 = *v53 + *v54;
                  v55[1] = v56;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v57);
      v41 = (v41 + v58);
    }

    while (v40 != v59);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  *v55 = *v53 + *v54;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v56);
      v41 = (v41 + v57);
    }

    while (v40 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v59 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v59 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v57 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v57 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v56 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v56 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v56 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v55 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v56 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v59 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  v54 = COERCE_FLOAT(*v51 << 16) + COERCE_FLOAT(*v52 << 16);
                  *v53 = HIWORD(COERCE_UNSIGNED_INT(v54 + (COERCE_FLOAT(LODWORD(v54) & 0xFF800000) * 0.0039062)));
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v59);
      }

      ++v38;
      v41 = (v41 + v55);
      v40 = (v40 + v56);
      v39 = (v39 + v57);
    }

    while (v38 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v52 + *v51;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v52 + *v51;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v52 + *v51;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v52 + *v51;
                  v53 += v37;
                  v52 += v33;
                  v51 += v25;
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 += v34;
              v48 += v26;
              v47 += v19;
            }

            while (v46 != v13);
          }

          ++v42;
          v45 += v35;
          v44 += v27;
          v43 += result;
        }

        while (v42 != v57);
      }

      ++v38;
      v41 += v54;
      v40 += v55;
      v39 += v56;
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  *v55 = vsub_f32(*v53, *v54);
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v56);
      v41 = (v41 + v57);
    }

    while (v40 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  *v55 = *v53 - *v54;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v56);
      v41 = (v41 + v57);
    }

    while (v40 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4, float16x4_t a5)
{
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = **a2;
  v8 = *(v7 + 16);
  v9 = v8 - 1;
  if (v8 <= 0)
  {
    v12 = v8 - 2;
    v11 = 1;
    goto LABEL_5;
  }

  v10 = *(v7 + 24);
  v11 = *(v10 + 8 * v9);
  if (v8 == 1)
  {
    v12 = -1;
LABEL_5:
    v13 = v8 - 3;
    v14 = 1;
    v15 = 1;
LABEL_6:
    v16 = v8 - 4;
    v17 = 1;
    v18 = 1;
    v19 = 1;
LABEL_7:
    v20 = 1;
    goto LABEL_8;
  }

  v12 = v8 - 2;
  v14 = *(v10 + 8 * (v8 - 2));
  if (v8 <= 2)
  {
    v12 = 0;
    v15 = 0;
    v13 = -1;
    goto LABEL_6;
  }

  v13 = v8 - 3;
  v18 = *(v10 + 8 * (v8 - 3));
  if (v8 == 3)
  {
    v15 = 0;
    v13 = 0;
    v19 = 0;
    v16 = -1;
    v12 = 1;
    v17 = 1;
    goto LABEL_7;
  }

  v17 = 0;
  v15 = 0;
  v19 = 0;
  v16 = v8 - 4;
  v20 = *(v10 + 8 * (v8 - 4));
LABEL_8:
  v59 = v20;
  if (*(v5 + 58))
  {
    v21 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_27;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v58 = 0;
LABEL_27:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v5 + 64) + 8 * v25);
    }

    v30 = v23 - 2;
    goto LABEL_32;
  }

  if (v23 >= 2)
  {
    v30 = 0;
    result = 0;
    v58 = 0;
LABEL_32:
    if (v30 > v23 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(*(v5 + 64) + 8 * v30);
    }

    v26 = v23 - 1;
    goto LABEL_37;
  }

  v26 = 0;
  v21 = 0;
  v58 = 0;
  result = 0;
  v27 = 0;
  if (v23 != 1)
  {
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v26 > v23 - 1)
  {
LABEL_38:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v28 = 0;
    v57 = 0;
    v29 = 0;
    goto LABEL_68;
  }

  if (*(*(v5 + 24) + 8 * v26) == 1)
  {
    v27 = 0;
    if (*(v6 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v27 = *(*(v5 + 64) + 8 * v26);
    if (*(v6 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v31 = *(v6 + 16);
  v32 = v31 - 4;
  if (v31 >= 4)
  {
    if (v32 > v31 - 1 || *(*(v6 + 24) + 8 * v32) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v6 + 64) + 8 * v32);
    }

    v33 = v31 - 3;
    goto LABEL_57;
  }

  if (v31 == 3)
  {
    v33 = 0;
    v57 = 0;
LABEL_57:
    if (v33 > v31 - 1 || *(*(v6 + 24) + 8 * v33) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(*(v6 + 64) + 8 * v33);
    }

    v39 = v31 - 2;
    goto LABEL_62;
  }

  if (v31 >= 2)
  {
    v39 = 0;
    v29 = 0;
    v57 = 0;
LABEL_62:
    if (v39 > v31 - 1 || *(*(v6 + 24) + 8 * v39) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v6 + 64) + 8 * v39);
    }

    v34 = v31 - 1;
LABEL_67:
    if (v34 <= v31 - 1)
    {
      if (*(*(v6 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if ((*(v7 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v35 = *(*(v6 + 64) + 8 * v34);
        if ((*(v7 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v35 = 0;
    if ((*(v7 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_92;
  }

  v34 = 0;
  v28 = 0;
  v57 = 0;
  v29 = 0;
  v35 = 0;
  if (v31 == 1)
  {
    goto LABEL_67;
  }

  if (*(v7 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v17 & 1) != 0 || v16 > v8 - 1 || *(*(v7 + 24) + 8 * v16) == 1)
  {
    v37 = 0;
    if (v19)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v37 = *(*(v7 + 64) + 8 * v16);
    if (v19)
    {
      goto LABEL_84;
    }
  }

  if (v13 > v8 - 1 || *(*(v7 + 24) + 8 * v13) == 1)
  {
LABEL_84:
    v38 = 0;
    if (v15)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v38 = *(*(v7 + 64) + 8 * v13);
  if (v15)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v12 > v8 - 1 || *(*(v7 + 24) + 8 * v12) == 1)
  {
LABEL_87:
    v36 = 0;
    if (v8 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v36 = *(*(v7 + 64) + 8 * v12);
  if (v8 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v9 <= v8 - 1 && *(*(v7 + 24) + 8 * v9) != 1)
  {
    v40 = *(*(v7 + 64) + 8 * v9);
    goto LABEL_93;
  }

LABEL_92:
  v40 = 0;
LABEL_93:
  if (v59 >= 1)
  {
    v41 = 0;
    v42 = (**a3 + *(v5 + 40));
    v43 = (*(*a3 + 8) + *(v6 + 40));
    v44 = (**a4 + *(v7 + 40));
    do
    {
      if (v18 >= 1)
      {
        v45 = 0;
        v46 = v42;
        v47 = v43;
        v48 = v44;
        do
        {
          if (v14 >= 1)
          {
            v49 = 0;
            v50 = v46;
            v51 = v47;
            v52 = v48;
            do
            {
              v53 = v11;
              v54 = v50;
              v55 = v51;
              v56 = v52;
              if (v11 >= 1)
              {
                do
                {
                  a5.i32[0] = *v54;
                  a5 = vsub_f32(*&vcvtq_f32_f16(a5), *v55);
                  *v56 = *&a5;
                  v56 = (v56 + v40);
                  v55 = (v55 + v35);
                  v54 = (v54 + v27);
                  --v53;
                }

                while (v53);
              }

              ++v49;
              v52 = (v52 + v36);
              v51 = (v51 + v28);
              v50 = (v50 + v21);
            }

            while (v49 != v14);
          }

          ++v45;
          v48 = (v48 + v38);
          v47 = (v47 + v29);
          v46 = (v46 + result);
        }

        while (v45 != v18);
      }

      ++v41;
      v44 = (v44 + v37);
      v43 = (v43 + v57);
      v42 = (v42 + v58);
    }

    while (v41 != v59);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v64 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v63 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v63 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v63 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v63 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v62 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v62 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v62 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v62 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v64 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  _H0 = *v53;
                  __asm { FCVT            S0, H0 }

                  *v55 = _S0 - *v54;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v62);
      v41 = (v41 + v63);
    }

    while (v40 != v64);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4, double a5, float16x4_t a6)
{
  v6 = **a1;
  v7 = (*a1)[1];
  v8 = **a2;
  v9 = *(v8 + 16);
  v10 = v9 - 1;
  if (v9 <= 0)
  {
    v13 = v9 - 2;
    v12 = 1;
    goto LABEL_5;
  }

  v11 = *(v8 + 24);
  v12 = *(v11 + 8 * v10);
  if (v9 == 1)
  {
    v13 = -1;
LABEL_5:
    v14 = v9 - 3;
    v15 = 1;
    v16 = 1;
LABEL_6:
    v17 = v9 - 4;
    v18 = 1;
    v19 = 1;
    v20 = 1;
LABEL_7:
    v21 = 1;
    goto LABEL_8;
  }

  v13 = v9 - 2;
  v15 = *(v11 + 8 * (v9 - 2));
  if (v9 <= 2)
  {
    v13 = 0;
    v16 = 0;
    v14 = -1;
    goto LABEL_6;
  }

  v14 = v9 - 3;
  v19 = *(v11 + 8 * (v9 - 3));
  if (v9 == 3)
  {
    v16 = 0;
    v14 = 0;
    v20 = 0;
    v17 = -1;
    v13 = 1;
    v18 = 1;
    goto LABEL_7;
  }

  v18 = 0;
  v16 = 0;
  v20 = 0;
  v17 = v9 - 4;
  v21 = *(v11 + 8 * (v9 - 4));
LABEL_8:
  v60 = v21;
  if (*(v6 + 58))
  {
    v22 = 0;
    v59 = 0;
    result = 0;
    goto LABEL_38;
  }

  v24 = *(v6 + 16);
  v25 = v24 - 4;
  if (v24 >= 4)
  {
    if (v25 > v24 - 1 || *(*(v6 + 24) + 8 * v25) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v6 + 64) + 8 * v25);
    }

    v26 = v24 - 3;
    goto LABEL_27;
  }

  if (v24 == 3)
  {
    v26 = 0;
    v59 = 0;
LABEL_27:
    if (v26 > v24 - 1 || *(*(v6 + 24) + 8 * v26) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v6 + 64) + 8 * v26);
    }

    v31 = v24 - 2;
    goto LABEL_32;
  }

  if (v24 >= 2)
  {
    v31 = 0;
    result = 0;
    v59 = 0;
LABEL_32:
    if (v31 > v24 - 1 || *(*(v6 + 24) + 8 * v31) == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(*(v6 + 64) + 8 * v31);
    }

    v27 = v24 - 1;
    goto LABEL_37;
  }

  v27 = 0;
  v22 = 0;
  v59 = 0;
  result = 0;
  v28 = 0;
  if (v24 != 1)
  {
    if ((*(v7 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v27 > v24 - 1)
  {
LABEL_38:
    v28 = 0;
    if ((*(v7 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v29 = 0;
    v58 = 0;
    v30 = 0;
    goto LABEL_68;
  }

  if (*(*(v6 + 24) + 8 * v27) == 1)
  {
    v28 = 0;
    if (*(v7 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v28 = *(*(v6 + 64) + 8 * v27);
    if (*(v7 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v32 = *(v7 + 16);
  v33 = v32 - 4;
  if (v32 >= 4)
  {
    if (v33 > v32 - 1 || *(*(v7 + 24) + 8 * v33) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v7 + 64) + 8 * v33);
    }

    v34 = v32 - 3;
    goto LABEL_57;
  }

  if (v32 == 3)
  {
    v34 = 0;
    v58 = 0;
LABEL_57:
    if (v34 > v32 - 1 || *(*(v7 + 24) + 8 * v34) == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(*(v7 + 64) + 8 * v34);
    }

    v40 = v32 - 2;
    goto LABEL_62;
  }

  if (v32 >= 2)
  {
    v40 = 0;
    v30 = 0;
    v58 = 0;
LABEL_62:
    if (v40 > v32 - 1 || *(*(v7 + 24) + 8 * v40) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(*(v7 + 64) + 8 * v40);
    }

    v35 = v32 - 1;
LABEL_67:
    if (v35 <= v32 - 1)
    {
      if (*(*(v7 + 24) + 8 * v35) == 1)
      {
        v36 = 0;
        if ((*(v8 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v36 = *(*(v7 + 64) + 8 * v35);
        if ((*(v8 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v36 = 0;
    if ((*(v8 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_92;
  }

  v35 = 0;
  v29 = 0;
  v58 = 0;
  v30 = 0;
  v36 = 0;
  if (v32 == 1)
  {
    goto LABEL_67;
  }

  if (*(v8 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v18 & 1) != 0 || v17 > v9 - 1 || *(*(v8 + 24) + 8 * v17) == 1)
  {
    v38 = 0;
    if (v20)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v38 = *(*(v8 + 64) + 8 * v17);
    if (v20)
    {
      goto LABEL_84;
    }
  }

  if (v14 > v9 - 1 || *(*(v8 + 24) + 8 * v14) == 1)
  {
LABEL_84:
    v39 = 0;
    if (v16)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v39 = *(*(v8 + 64) + 8 * v14);
  if (v16)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v13 > v9 - 1 || *(*(v8 + 24) + 8 * v13) == 1)
  {
LABEL_87:
    v37 = 0;
    if (v9 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v37 = *(*(v8 + 64) + 8 * v13);
  if (v9 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v10 <= v9 - 1 && *(*(v8 + 24) + 8 * v10) != 1)
  {
    v41 = *(*(v8 + 64) + 8 * v10);
    goto LABEL_93;
  }

LABEL_92:
  v41 = 0;
LABEL_93:
  if (v60 >= 1)
  {
    v42 = 0;
    v43 = (**a3 + *(v6 + 40));
    v44 = (*(*a3 + 8) + *(v7 + 40));
    v45 = (**a4 + *(v8 + 40));
    do
    {
      if (v19 >= 1)
      {
        v46 = 0;
        v47 = v43;
        v48 = v44;
        v49 = v45;
        do
        {
          if (v15 >= 1)
          {
            v50 = 0;
            v51 = v47;
            v52 = v48;
            v53 = v49;
            do
            {
              v54 = v12;
              v55 = v51;
              v56 = v52;
              v57 = v53;
              if (v12 >= 1)
              {
                do
                {
                  a6.i32[0] = *v56;
                  a6 = vcvtq_f32_f16(a6).u64[0];
                  *v57 = vsub_f32(*v55, a6);
                  v57 = (v57 + v41);
                  v56 = (v56 + v36);
                  v55 = (v55 + v28);
                  --v54;
                }

                while (v54);
              }

              ++v50;
              v53 = (v53 + v37);
              v52 = (v52 + v29);
              v51 = (v51 + v22);
            }

            while (v50 != v15);
          }

          ++v46;
          v49 = (v49 + v39);
          v48 = (v48 + v30);
          v47 = (v47 + result);
        }

        while (v46 != v19);
      }

      ++v42;
      v45 = (v45 + v38);
      v44 = (v44 + v58);
      v43 = (v43 + v59);
    }

    while (v42 != v60);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v64 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v63 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v63 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v63 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v63 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v62 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v62 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v62 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v62 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v64 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  _H1 = *v54;
                  __asm { FCVT            S1, H1 }

                  *v55 = *v53 - _S1;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v62);
      v41 = (v41 + v63);
    }

    while (v40 != v64);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v37 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v37 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v37 > v30 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v37);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v55 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v36 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v36 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v38 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v38 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v39 = 0;
    v40 = (**a3 + *(v4 + 40));
    v41 = (*(*a3 + 8) + *(v5 + 40));
    v42 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v43 = 0;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        do
        {
          if (v13 >= 1)
          {
            v47 = 0;
            v48 = v44;
            v49 = v45;
            v50 = v46;
            do
            {
              v51 = v10;
              v52 = v48;
              v53 = v49;
              v54 = v50;
              if (v10 >= 1)
              {
                do
                {
                  *v54 = COERCE_FLOAT(*v52 << 16) - *v53;
                  v54 = (v54 + v38);
                  v53 = (v53 + v34);
                  v52 = (v52 + v26);
                  --v51;
                }

                while (v51);
              }

              ++v47;
              v50 = (v50 + v35);
              v49 = (v49 + v27);
              v48 = (v48 + v20);
            }

            while (v47 != v13);
          }

          ++v43;
          v46 = (v46 + v36);
          v45 = (v45 + v28);
          v44 = (v44 + result);
        }

        while (v43 != v17);
      }

      ++v39;
      v42 = (v42 + v55);
      v41 = (v41 + v56);
      v40 = (v40 + v57);
    }

    while (v39 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v37 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v37 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v37 > v30 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v37);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v55 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v36 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v36 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v38 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v38 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v39 = 0;
    v40 = (**a3 + *(v4 + 40));
    v41 = (*(*a3 + 8) + *(v5 + 40));
    v42 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v43 = 0;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        do
        {
          if (v13 >= 1)
          {
            v47 = 0;
            v48 = v44;
            v49 = v45;
            v50 = v46;
            do
            {
              v51 = v10;
              v52 = v48;
              v53 = v49;
              v54 = v50;
              if (v10 >= 1)
              {
                do
                {
                  *v54 = *v52 - COERCE_FLOAT(*v53 << 16);
                  v54 = (v54 + v38);
                  v53 = (v53 + v34);
                  v52 = (v52 + v26);
                  --v51;
                }

                while (v51);
              }

              ++v47;
              v50 = (v50 + v35);
              v49 = (v49 + v27);
              v48 = (v48 + v20);
            }

            while (v47 != v13);
          }

          ++v43;
          v46 = (v46 + v36);
          v45 = (v45 + v28);
          v44 = (v44 + result);
        }

        while (v43 != v17);
      }

      ++v39;
      v42 = (v42 + v55);
      v41 = (v41 + v56);
      v40 = (v40 + v57);
    }

    while (v39 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v58 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v58 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v57 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v57 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v57 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v59 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  v56 = v53[1] - v54[1];
                  *v55 = *v53 - *v54;
                  v55[1] = v56;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v57);
      v41 = (v41 + v58);
    }

    while (v40 != v59);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  *v55 = *v53 - *v54;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v56);
      v41 = (v41 + v57);
    }

    while (v40 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v59 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v59 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v57 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v57 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v56 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v56 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v56 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v55 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v56 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v59 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  v54 = COERCE_FLOAT(*v51 << 16) - COERCE_FLOAT(*v52 << 16);
                  *v53 = HIWORD(COERCE_UNSIGNED_INT(v54 + (COERCE_FLOAT(LODWORD(v54) & 0xFF800000) * 0.0039062)));
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v59);
      }

      ++v38;
      v41 = (v41 + v55);
      v40 = (v40 + v56);
      v39 = (v39 + v57);
    }

    while (v38 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v51 - *v52;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v51 - *v52;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v51 - *v52;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v51 - *v52;
                  v53 += v37;
                  v52 += v33;
                  v51 += v25;
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 += v34;
              v48 += v26;
              v47 += v19;
            }

            while (v46 != v13);
          }

          ++v42;
          v45 += v35;
          v44 += v27;
          v43 += result;
        }

        while (v42 != v57);
      }

      ++v38;
      v41 += v54;
      v40 += v55;
      v39 += v56;
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(uint64_t **a1, uint64_t **a2, void **a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
    goto LABEL_7;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 != 3)
  {
    v16 = 0;
    v14 = 0;
    v18 = 0;
    v15 = v7 - 4;
    v19 = *(v9 + 8 * (v7 - 4));
    if (*(v4 + 58))
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v14 = 0;
  v12 = 0;
  v18 = 0;
  v15 = -1;
  v11 = 1;
  v16 = 1;
LABEL_7:
  v19 = 1;
  if (*(v4 + 58))
  {
LABEL_8:
    v20 = 0;
    v21 = 0;
    result = 0;
    goto LABEL_37;
  }

LABEL_14:
  v23 = *(v4 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(*(v4 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_26;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v21 = 0;
LABEL_26:
    if (v25 > v23 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v25);
    }

    v30 = v23 - 2;
    goto LABEL_31;
  }

  if (v23 >= 2)
  {
    v30 = 0;
    result = 0;
    v21 = 0;
LABEL_31:
    if (v30 > v23 - 1 || *(*(v4 + 24) + 8 * v30) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v30);
    }

    v26 = v23 - 1;
    goto LABEL_36;
  }

  v26 = 0;
  v20 = 0;
  v21 = 0;
  result = 0;
  v27 = 0;
  if (v23 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

LABEL_36:
  if (v26 > v23 - 1)
  {
LABEL_37:
    v27 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_23:
    v28 = 0;
    v29 = 0;
    v61 = 0;
    goto LABEL_67;
  }

  if (*(*(v4 + 24) + 8 * v26) == 1)
  {
    v27 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v27 = *(*(v4 + 64) + 8 * v26);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_38:
  v31 = *(v5 + 16);
  v32 = v31 - 4;
  if (v31 >= 4)
  {
    if (v32 > v31 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(*(v5 + 64) + 8 * v32);
    }

    v33 = v31 - 3;
    goto LABEL_56;
  }

  if (v31 == 3)
  {
    v33 = 0;
    v29 = 0;
LABEL_56:
    if (v33 > v31 - 1 || *(*(v5 + 24) + 8 * v33) == 1)
    {
      v61 = 0;
    }

    else
    {
      v61 = *(*(v5 + 64) + 8 * v33);
    }

    v37 = v31 - 2;
    goto LABEL_61;
  }

  if (v31 >= 2)
  {
    v37 = 0;
    v61 = 0;
    v29 = 0;
LABEL_61:
    if (v37 > v31 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v37);
    }

    v34 = v31 - 1;
LABEL_66:
    if (v34 <= v31 - 1)
    {
      if (*(*(v5 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v35 = *(*(v5 + 64) + 8 * v34);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_50;
    }

LABEL_67:
    v35 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_50:
    v36 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_92;
  }

  v34 = 0;
  v28 = 0;
  v29 = 0;
  v61 = 0;
  v35 = 0;
  if (v31 == 1)
  {
    goto LABEL_66;
  }

  if (*(v6 + 58))
  {
    goto LABEL_50;
  }

LABEL_68:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v59 = 0;
    if (v18)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v59 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_83;
    }
  }

  if (v12 <= v7 - 1 && *(*(v6 + 24) + 8 * v12) != 1)
  {
    v60 = *(*(v6 + 64) + 8 * v12);
    if (v14)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

LABEL_83:
  v60 = 0;
  if (v14)
  {
    goto LABEL_86;
  }

LABEL_84:
  if (v11 <= v7 - 1 && *(*(v6 + 24) + 8 * v11) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v11);
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

LABEL_86:
  v36 = 0;
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_87:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v38 = *(*(v6 + 64) + 8 * v8);
    if (v19 < 1)
    {
      return result;
    }

    goto LABEL_93;
  }

LABEL_92:
  v38 = 0;
  if (v19 < 1)
  {
    return result;
  }

LABEL_93:
  v39 = 0;
  v40 = *a3;
  v41 = (*v40 + *(v4 + 40));
  v42 = (v40[1] + *(v5 + 40));
  v43 = (**a4 + *(v6 + 40));
  do
  {
    if (v17 >= 1)
    {
      v44 = 0;
      v45 = v41;
      v46 = v42;
      v47 = v43;
      do
      {
        if (v13 >= 1)
        {
          v48 = 0;
          v49 = v45;
          v50 = v46;
          v51 = v47;
          do
          {
            v52 = v10;
            v53 = v49;
            v54 = v50;
            v55 = v51;
            if (v10 >= 1)
            {
              do
              {
                v56 = v53[1];
                v57 = v54[1];
                v58 = (v56 * *v54) + (*v53 * v57);
                *v55 = (*v53 * *v54) - (v56 * v57);
                v55[1] = v58;
                v55 = (v55 + v38);
                v54 = (v54 + v35);
                v53 = (v53 + v27);
                --v52;
              }

              while (v52);
            }

            ++v48;
            v51 = (v51 + v36);
            v50 = (v50 + v28);
            v49 = (v49 + v20);
          }

          while (v48 != v13);
        }

        ++v44;
        v47 = (v47 + v60);
        v46 = (v46 + v61);
        v45 = (v45 + result);
      }

      while (v44 != v17);
    }

    ++v39;
    v43 = (v43 + v59);
    v42 = (v42 + v29);
    v41 = (v41 + v21);
  }

  while (v39 != v19);
  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)2>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  *v55 = *v53 * *v54;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v56);
      v41 = (v41 + v57);
    }

    while (v40 != v58);
  }

  return result;
}