void mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v65 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v65 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v66 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v57 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v66 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v49 = v16;
  if (*(v4 + 58))
  {
    v64 = 0;
    v48 = 0;
    v56 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v48 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v56 = 0;
    v48 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v64 = 0;
  v48 = 0;
  v56 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v63 = 0;
    v47 = 0;
    v55 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v47 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v55 = 0;
    v47 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v62 = 0;
    v46 = 0;
    v54 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v63 = 0;
  v47 = 0;
  v55 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v46 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v46 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v54 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v54 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v62 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v62 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v49 >= 1)
  {
    v30 = 0;
    v53 = (**a3 + *(v4 + 40));
    v52 = (*(*a3 + 8) + *(v5 + 40));
    v51 = (**a4 + *(v6 + 40));
    do
    {
      v50 = v30;
      if (v57 >= 1)
      {
        v31 = 0;
        v60 = v52;
        v61 = v53;
        v59 = v51;
        do
        {
          v58 = v31;
          if (v66 >= 1)
          {
            v32 = 0;
            v33 = v60;
            v34 = v61;
            v35 = v59;
            do
            {
              v67 = v32;
              v36 = v65;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v65 >= 1)
              {
                do
                {
                  _H0 = *v37;
                  __asm { FCVT            S0, H0; float }

                  *v39 = fmodf(_S0, *v38);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v67 + 1;
              v35 = (v35 + v62);
              v33 = (v33 + v63);
              v34 = (v34 + v64);
            }

            while (v67 + 1 != v66);
          }

          v31 = v58 + 1;
          v59 = (v59 + v54);
          v60 = (v60 + v55);
          v61 = (v61 + v56);
        }

        while (v58 + 1 != v57);
      }

      v30 = v50 + 1;
      v51 = (v51 + v46);
      v52 = (v52 + v47);
      v53 = (v53 + v48);
    }

    while (v50 + 1 != v49);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v71 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v71 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v72 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v63 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v72 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v63 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v55 = v16;
  if (*(v4 + 58))
  {
    v70 = 0;
    v54 = 0;
    v62 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v54 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(*(v4 + 64) + 8 * v19);
    }

    v21 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v21 = 0;
    v62 = 0;
    v54 = 0;
LABEL_32:
    if (v21 > v17 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v70 = 0;
    }

    else
    {
      v70 = *(*(v4 + 64) + 8 * v21);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v70 = 0;
  v54 = 0;
  v62 = 0;
  v73 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v73 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v69 = 0;
    v53 = 0;
    v61 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v73 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v73 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v22 = *(v5 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v5 + 24) + 8 * v23) == 1)
    {
      v53 = 0;
    }

    else
    {
      v53 = *(*(v5 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_57;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v53 = 0;
LABEL_57:
    if (v24 > v22 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v61 = 0;
    }

    else
    {
      v61 = *(*(v5 + 64) + 8 * v24);
    }

    v27 = v22 - 2;
    goto LABEL_62;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v61 = 0;
    v53 = 0;
LABEL_62:
    if (v27 > v22 - 1 || *(*(v5 + 24) + 8 * v27) == 1)
    {
      v69 = 0;
    }

    else
    {
      v69 = *(*(v5 + 64) + 8 * v27);
    }

    v25 = v22 - 1;
LABEL_67:
    if (v25 <= v22 - 1)
    {
      if (*(*(v5 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v26 = *(*(v5 + 64) + 8 * v25);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v26 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v68 = 0;
    v52 = 0;
    v60 = 0;
    goto LABEL_92;
  }

  v25 = 0;
  v69 = 0;
  v53 = 0;
  v61 = 0;
  v26 = 0;
  if (v22 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v52 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v52 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v60 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v60 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v68 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v68 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v28 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v28 = 0;
LABEL_93:
  if (v55 >= 1)
  {
    v29 = 0;
    v59 = (**a3 + *(v4 + 40));
    v58 = (*(*a3 + 8) + *(v5 + 40));
    v57 = (**a4 + *(v6 + 40));
    do
    {
      v56 = v29;
      if (v63 >= 1)
      {
        v30 = 0;
        v66 = v58;
        v67 = v59;
        v65 = v57;
        do
        {
          v64 = v30;
          if (v72 >= 1)
          {
            v31 = 0;
            v32 = v66;
            v33 = v67;
            v34 = v65;
            do
            {
              v35 = v71;
              v36 = v33;
              v37 = v32;
              v38 = v34;
              if (v71 >= 1)
              {
                do
                {
                  v39 = *v36;
                  v40 = v36[1];
                  _H0 = *v37;
                  __asm { FCVT            S10, H0 }

                  _H0 = v37[1];
                  __asm { FCVT            S11, H0 }

                  v49 = truncf(__divsc3(*v36, v40, _S10, _S11));
                  v51 = truncf(v50);
                  *v38 = v39 - ((v49 * _S10) - (v51 * _S11));
                  v38[1] = v40 - ((v51 * _S10) + (v49 * _S11));
                  v38 = (v38 + v28);
                  v37 = (v37 + v26);
                  v36 = (v36 + v73);
                  --v35;
                }

                while (v35);
              }

              ++v31;
              v34 = (v34 + v68);
              v32 = (v32 + v69);
              v33 = (v33 + v70);
            }

            while (v31 != v72);
          }

          v30 = v64 + 1;
          v65 = (v65 + v60);
          v66 = (v66 + v61);
          v67 = (v67 + v62);
        }

        while (v64 + 1 != v63);
      }

      v29 = v56 + 1;
      v57 = (v57 + v52);
      v58 = (v58 + v53);
      v59 = (v59 + v54);
    }

    while (v56 + 1 != v55);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v65 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v65 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v66 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v57 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v66 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v49 = v16;
  if (*(v4 + 58))
  {
    v64 = 0;
    v48 = 0;
    v56 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v48 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v56 = 0;
    v48 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v64 = 0;
  v48 = 0;
  v56 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v63 = 0;
    v47 = 0;
    v55 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v47 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v55 = 0;
    v47 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v62 = 0;
    v46 = 0;
    v54 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v63 = 0;
  v47 = 0;
  v55 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v46 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v46 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v54 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v54 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v62 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v62 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v49 >= 1)
  {
    v30 = 0;
    v53 = (**a3 + *(v4 + 40));
    v52 = (*(*a3 + 8) + *(v5 + 40));
    v51 = (**a4 + *(v6 + 40));
    do
    {
      v50 = v30;
      if (v57 >= 1)
      {
        v31 = 0;
        v60 = v52;
        v61 = v53;
        v59 = v51;
        do
        {
          v58 = v31;
          if (v66 >= 1)
          {
            v32 = 0;
            v33 = v60;
            v34 = v61;
            v35 = v59;
            do
            {
              v67 = v32;
              v36 = v65;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v65 >= 1)
              {
                do
                {
                  _H1 = *v38;
                  __asm { FCVT            S1, H1; float }

                  *v39 = fmodf(*v37, _S1);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v67 + 1;
              v35 = (v35 + v62);
              v33 = (v33 + v63);
              v34 = (v34 + v64);
            }

            while (v67 + 1 != v66);
          }

          v31 = v58 + 1;
          v59 = (v59 + v54);
          v60 = (v60 + v55);
          v61 = (v61 + v56);
        }

        while (v58 + 1 != v57);
      }

      v30 = v50 + 1;
      v51 = (v51 + v46);
      v52 = (v52 + v47);
      v53 = (v53 + v48);
    }

    while (v50 + 1 != v49);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v59 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v59 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v60 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v51 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v60 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v51 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v43 = v16;
  if (*(v4 + 58))
  {
    v58 = 0;
    v42 = 0;
    v50 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v42 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v50 = 0;
    v42 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v58 = 0;
  v42 = 0;
  v50 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v57 = 0;
    v41 = 0;
    v49 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v41 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v49 = 0;
    v41 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v56 = 0;
    v40 = 0;
    v48 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v57 = 0;
  v41 = 0;
  v49 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v40 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v40 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v48 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v48 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v56 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v56 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v43 >= 1)
  {
    v30 = 0;
    v47 = (**a3 + *(v4 + 40));
    v46 = (*(*a3 + 8) + *(v5 + 40));
    v45 = (**a4 + *(v6 + 40));
    do
    {
      v44 = v30;
      if (v51 >= 1)
      {
        v31 = 0;
        v54 = v46;
        v55 = v47;
        v53 = v45;
        do
        {
          v52 = v31;
          if (v60 >= 1)
          {
            v32 = 0;
            v33 = v54;
            v34 = v55;
            v35 = v53;
            do
            {
              v61 = v32;
              v36 = v59;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v59 >= 1)
              {
                do
                {
                  *v39 = fmodf(COERCE_FLOAT(*v37 << 16), *v38);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v61 + 1;
              v35 = (v35 + v56);
              v33 = (v33 + v57);
              v34 = (v34 + v58);
            }

            while (v61 + 1 != v60);
          }

          v31 = v52 + 1;
          v53 = (v53 + v48);
          v54 = (v54 + v49);
          v55 = (v55 + v50);
        }

        while (v52 + 1 != v51);
      }

      v30 = v44 + 1;
      v45 = (v45 + v40);
      v46 = (v46 + v41);
      v47 = (v47 + v42);
    }

    while (v44 + 1 != v43);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v59 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v59 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v60 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v51 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v60 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v51 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v43 = v16;
  if (*(v4 + 58))
  {
    v58 = 0;
    v42 = 0;
    v50 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v42 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v50 = 0;
    v42 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v58 = 0;
  v42 = 0;
  v50 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v57 = 0;
    v41 = 0;
    v49 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v41 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v49 = 0;
    v41 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v56 = 0;
    v40 = 0;
    v48 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v57 = 0;
  v41 = 0;
  v49 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v40 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v40 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v48 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v48 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v56 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v56 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v43 >= 1)
  {
    v30 = 0;
    v47 = (**a3 + *(v4 + 40));
    v46 = (*(*a3 + 8) + *(v5 + 40));
    v45 = (**a4 + *(v6 + 40));
    do
    {
      v44 = v30;
      if (v51 >= 1)
      {
        v31 = 0;
        v54 = v46;
        v55 = v47;
        v53 = v45;
        do
        {
          v52 = v31;
          if (v60 >= 1)
          {
            v32 = 0;
            v33 = v54;
            v34 = v55;
            v35 = v53;
            do
            {
              v61 = v32;
              v36 = v59;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v59 >= 1)
              {
                do
                {
                  *v39 = fmodf(*v37, COERCE_FLOAT(*v38 << 16));
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v61 + 1;
              v35 = (v35 + v56);
              v33 = (v33 + v57);
              v34 = (v34 + v58);
            }

            while (v61 + 1 != v60);
          }

          v31 = v52 + 1;
          v53 = (v53 + v48);
          v54 = (v54 + v49);
          v55 = (v55 + v50);
        }

        while (v52 + 1 != v51);
      }

      v30 = v44 + 1;
      v45 = (v45 + v40);
      v46 = (v46 + v41);
      v47 = (v47 + v42);
    }

    while (v44 + 1 != v43);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v76 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v76 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v77 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v68 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v77 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v68 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v60 = v16;
  if (*(v4 + 58))
  {
    v75 = 0;
    v59 = 0;
    v67 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v59 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(*(v4 + 64) + 8 * v19);
    }

    v21 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v21 = 0;
    v67 = 0;
    v59 = 0;
LABEL_32:
    if (v21 > v17 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v75 = 0;
    }

    else
    {
      v75 = *(*(v4 + 64) + 8 * v21);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v75 = 0;
  v59 = 0;
  v67 = 0;
  v78 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v78 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v74 = 0;
    v58 = 0;
    v66 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v78 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v78 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v22 = *(v5 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v5 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v5 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_57;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
LABEL_57:
    if (v24 > v22 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(*(v5 + 64) + 8 * v24);
    }

    v27 = v22 - 2;
    goto LABEL_62;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v66 = 0;
    v58 = 0;
LABEL_62:
    if (v27 > v22 - 1 || *(*(v5 + 24) + 8 * v27) == 1)
    {
      v74 = 0;
    }

    else
    {
      v74 = *(*(v5 + 64) + 8 * v27);
    }

    v25 = v22 - 1;
LABEL_67:
    if (v25 <= v22 - 1)
    {
      if (*(*(v5 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v26 = *(*(v5 + 64) + 8 * v25);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v26 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v73 = 0;
    v57 = 0;
    v65 = 0;
    goto LABEL_92;
  }

  v25 = 0;
  v74 = 0;
  v58 = 0;
  v66 = 0;
  v26 = 0;
  if (v22 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v57 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v57 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v65 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v65 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v73 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v73 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v28 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v28 = 0;
LABEL_93:
  if (v60 >= 1)
  {
    v29 = 0;
    v64 = (**a3 + *(v4 + 40));
    v63 = (*(*a3 + 8) + *(v5 + 40));
    v62 = (**a4 + *(v6 + 40));
    do
    {
      v61 = v29;
      if (v68 >= 1)
      {
        v30 = 0;
        v71 = v63;
        v72 = v64;
        v70 = v62;
        do
        {
          v69 = v30;
          if (v77 >= 1)
          {
            v31 = 0;
            v32 = v71;
            v33 = v72;
            v34 = v70;
            do
            {
              v35 = v76;
              v36 = v33;
              v37 = v32;
              v38 = v34;
              if (v76 >= 1)
              {
                do
                {
                  _H10 = *v36;
                  _H11 = v36[1];
                  _H2 = *v37;
                  _H3 = v37[1];
                  __asm
                  {
                    FCVT            S0, H10
                    FCVT            S1, H11
                    FCVT            S8, H2
                    FCVT            S9, H3
                  }

                  _S0 = __divsc3(_S0, _S1, _S8, _S9);
                  __asm
                  {
                    FCVT            H0, S0
                    FCVT            H1, S1
                  }

                  *&_S0 = truncl(*&_S0);
                  *&_S1 = truncl(*&_S1);
                  __asm
                  {
                    FCVT            S2, H0
                    FCVT            S1, H1
                  }

                  _S0 = (_S8 * _S2) - (_S9 * _S1);
                  _S3 = (_S8 * _S1) + (_S9 * _S2);
                  __asm
                  {
                    FCVT            H0, S0
                    FCVT            H1, S3
                  }

                  *v38 = _H10 - *&_S0;
                  v38[1] = _H11 - *&_S1;
                  v38 = (v38 + v28);
                  v37 = (v37 + v26);
                  v36 = (v36 + v78);
                  --v35;
                }

                while (v35);
              }

              ++v31;
              v34 = (v34 + v73);
              v32 = (v32 + v74);
              v33 = (v33 + v75);
            }

            while (v31 != v77);
          }

          v30 = v69 + 1;
          v70 = (v70 + v65);
          v71 = (v71 + v66);
          v72 = (v72 + v67);
        }

        while (v69 + 1 != v68);
      }

      v29 = v61 + 1;
      v62 = (v62 + v57);
      v63 = (v63 + v58);
      v64 = (v64 + v59);
    }

    while (v61 + 1 != v60);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v68 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v68 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v69 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v60 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v69 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v60 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v52 = v16;
  if (*(v4 + 58))
  {
    v67 = 0;
    v51 = 0;
    v59 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v51 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v59 = 0;
    v51 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v67 = 0;
  v51 = 0;
  v59 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v66 = 0;
    v50 = 0;
    v58 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v50 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v58 = 0;
    v50 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v65 = 0;
    v49 = 0;
    v57 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v66 = 0;
  v50 = 0;
  v58 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v49 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v49 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v57 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v57 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v65 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v65 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v52 >= 1)
  {
    v30 = 0;
    v56 = (**a3 + *(v4 + 40));
    v55 = (*(*a3 + 8) + *(v5 + 40));
    v54 = (**a4 + *(v6 + 40));
    do
    {
      v53 = v30;
      if (v60 >= 1)
      {
        v31 = 0;
        v63 = v55;
        v64 = v56;
        v62 = v54;
        do
        {
          v61 = v31;
          if (v69 >= 1)
          {
            v32 = 0;
            v33 = v63;
            v34 = v64;
            v35 = v62;
            do
            {
              v70 = v32;
              v36 = v68;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v68 >= 1)
              {
                do
                {
                  _H0 = *v37;
                  _H1 = *v38;
                  __asm
                  {
                    FCVT            S0, H0; float
                    FCVT            S1, H1; float
                  }

                  _S0 = fmodf(_S0, _S1);
                  __asm { FCVT            H0, S0 }

                  *v39 = LOWORD(_S0);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v70 + 1;
              v35 = (v35 + v65);
              v33 = (v33 + v66);
              v34 = (v34 + v67);
            }

            while (v70 + 1 != v69);
          }

          v31 = v61 + 1;
          v62 = (v62 + v57);
          v63 = (v63 + v58);
          v64 = (v64 + v59);
        }

        while (v61 + 1 != v60);
      }

      v30 = v53 + 1;
      v54 = (v54 + v49);
      v55 = (v55 + v50);
      v56 = (v56 + v51);
    }

    while (v53 + 1 != v52);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v58 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v58 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v59 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v50 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v59 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v50 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v42 = v16;
  if (*(v4 + 58))
  {
    v57 = 0;
    v41 = 0;
    v49 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v41 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(*(v4 + 64) + 8 * v19);
    }

    v21 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v21 = 0;
    v49 = 0;
    v41 = 0;
LABEL_32:
    if (v21 > v17 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v21);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v57 = 0;
  v41 = 0;
  v49 = 0;
  v61 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v61 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v56 = 0;
    v40 = 0;
    v48 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v61 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v61 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v22 = *(v5 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v5 + 24) + 8 * v23) == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = *(*(v5 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_57;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v40 = 0;
LABEL_57:
    if (v24 > v22 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(*(v5 + 64) + 8 * v24);
    }

    v26 = v22 - 2;
    goto LABEL_62;
  }

  if (v22 >= 2)
  {
    v26 = 0;
    v48 = 0;
    v40 = 0;
LABEL_62:
    if (v26 > v22 - 1 || *(*(v5 + 24) + 8 * v26) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v26);
    }

    v25 = v22 - 1;
LABEL_67:
    if (v25 <= v22 - 1)
    {
      if (*(*(v5 + 24) + 8 * v25) == 1)
      {
        v60 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v60 = *(*(v5 + 64) + 8 * v25);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v60 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v55 = 0;
    v39 = 0;
    v47 = 0;
    goto LABEL_92;
  }

  v25 = 0;
  v56 = 0;
  v40 = 0;
  v48 = 0;
  v60 = 0;
  if (v22 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v39 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v39 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v47 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v47 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v55 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v55 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v27 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v27 = 0;
LABEL_93:
  if (v42 >= 1)
  {
    v28 = 0;
    v46 = (**a3 + *(v4 + 40));
    v45 = (*(*a3 + 8) + *(v5 + 40));
    v44 = (**a4 + *(v6 + 40));
    do
    {
      v43 = v28;
      if (v50 >= 1)
      {
        v29 = 0;
        v53 = v45;
        v54 = v46;
        v52 = v44;
        do
        {
          v51 = v29;
          if (v59 >= 1)
          {
            v30 = 0;
            v32 = v53;
            v31 = v54;
            v33 = v52;
            do
            {
              v34 = v58;
              v35 = v31;
              v36 = v32;
              v37 = v33;
              if (v58 >= 1)
              {
                do
                {
                  v38 = fmodf(COERCE_FLOAT(*v35 << 16), COERCE_FLOAT(*v36 << 16));
                  *v37 = HIWORD(COERCE_UNSIGNED_INT(v38 + (COERCE_FLOAT(LODWORD(v38) & 0xFF800000) * 0.0039062)));
                  v37 = (v37 + v27);
                  v36 = (v36 + v60);
                  v35 = (v35 + v61);
                  --v34;
                }

                while (v34);
              }

              ++v30;
              v33 = (v33 + v55);
              v32 = (v32 + v56);
              v31 = (v31 + v57);
            }

            while (v30 != v59);
          }

          v29 = v51 + 1;
          v52 = (v52 + v47);
          v53 = (v53 + v48);
          v54 = (v54 + v49);
        }

        while (v51 + 1 != v50);
      }

      v28 = v43 + 1;
      v44 = (v44 + v39);
      v45 = (v45 + v40);
      v46 = (v46 + v41);
    }

    while (v43 + 1 != v42);
  }
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)5>(uint64_t result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = *(*result + 8);
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
    v55 = 0;
    v56 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v55 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v56 = 0;
    v55 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v55 = 0;
  v56 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v54 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v54 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v54 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v53 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v54 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v53 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v53 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = *v50 / *v51;
                  *v52 = *v50 % *v51;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v56);
        }

        while (v41 != v57);
      }

      ++v37;
      v40 = (v40 + v53);
      v39 = (v39 + v54);
      v38 = (v38 + v55);
    }

    while (v37 != v18);
  }

  return result;
}

unint64_t mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)5>(unint64_t result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = *(*result + 8);
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
    v55 = 0;
    v56 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v55 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v56 = 0;
    v55 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v55 = 0;
  v56 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v54 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v54 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v54 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v53 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v54 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v53 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v53 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 / *v51);
                  *v52 = *v50 % *v51;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v56);
        }

        while (v41 != v57);
      }

      ++v37;
      v40 = (v40 + v53);
      v39 = (v39 + v54);
      v38 = (v38 + v55);
    }

    while (v37 != v18);
  }

  return result;
}

unint64_t mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)5>(unint64_t result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = *(*result + 8);
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
    v60 = 1;
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
  v60 = *(v9 + 8 * (v7 - 3));
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
    v59 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v57 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v59 = 0;
    v57 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v57 = 0;
  v59 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v56 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v56 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v56 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v55 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v56 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      if (v60 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  v53 = *v50;
                  v54 = *v51;
                  result = (v53 / v54);
                  *v52 = v53 % v54;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v59);
        }

        while (v41 != v60);
      }

      ++v37;
      v40 = (v40 + v55);
      v39 = (v39 + v56);
      v38 = (v38 + v57);
    }

    while (v37 != v58);
  }

  return result;
}

unint64_t mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)5>(unint64_t result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = *(*result + 8);
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
    v60 = 1;
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
  v60 = *(v9 + 8 * (v7 - 3));
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
    v59 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v57 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v59 = 0;
    v57 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v57 = 0;
  v59 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v56 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v56 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v56 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v55 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v56 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      if (v60 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  v53 = *v50;
                  v54 = *v51;
                  result = (v53 / v54);
                  *v52 = v53 % v54;
                  v52 += v36;
                  v51 += v32;
                  v50 += v24;
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 += v33;
              v47 += v25;
              v46 += v19;
            }

            while (v45 != v13);
          }

          ++v41;
          v44 += v34;
          v43 += v26;
          v42 += v59;
        }

        while (v41 != v60);
      }

      ++v37;
      v40 += v55;
      v39 += v56;
      v38 += v57;
    }

    while (v37 != v58);
  }

  return result;
}

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v61 = 1;
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
  v61 = *(v9 + 8 * (v7 - 3));
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
    v60 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v57 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v60 = 0;
    v57 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v57 = 0;
  v60 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v56 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v56 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v56 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v55 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v56 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v59 = v37;
      if (v61 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 | (*(v50 + 1) << 32));
                  v53 = v50[1] < v51[1];
                  if (*v50 != *v51)
                  {
                    v53 = *v50 < *v51;
                  }

                  if (v53)
                  {
                    v54 = *v50 | (*(v50 + 1) << 32);
                  }

                  else
                  {
                    v54 = *v51 | (*(v51 + 1) << 32);
                  }

                  *v52 = v54;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v60);
        }

        while (v41 != v61);
      }

      ++v37;
      v40 = (v40 + v55);
      v39 = (v39 + v56);
      v38 = (v38 + v57);
    }

    while (v59 + 1 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
                  v56 = *v53;
                  if (*v54 < *v53)
                  {
                    v56 = *v54;
                  }

                  *v55 = v56;
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

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v69 = 1;
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
  v69 = *(v9 + 8 * (v7 - 3));
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
  v66 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v65 = 0;
    v68 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v65 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v68 = 0;
    v65 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v65 = 0;
  v68 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v64 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v64 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v64 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v63 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v64 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v63 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v63 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v67 = v37;
      if (v69 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  _H0 = *v50;
                  __asm { FCVT            S0, H0 }

                  _H1 = v50[1];
                  __asm { FCVT            S1, H1 }

                  result = (*v51 | (*(v51 + 1) << 32));
                  v61 = v51[1] > _S1;
                  if (*v51 != _S0)
                  {
                    v61 = *v51 > _S0;
                  }

                  if (v61)
                  {
                    v62 = LODWORD(_S0) | (LODWORD(_S1) << 32);
                  }

                  else
                  {
                    v62 = *v51 | (*(v51 + 1) << 32);
                  }

                  *v52 = v62;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v68);
        }

        while (v41 != v69);
      }

      ++v37;
      v40 = (v40 + v63);
      v39 = (v39 + v64);
      v38 = (v38 + v65);
    }

    while (v67 + 1 != v66);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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

                  if (*v54 < _S0)
                  {
                    _S0 = *v54;
                  }

                  *v55 = _S0;
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

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v69 = 1;
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
  v69 = *(v9 + 8 * (v7 - 3));
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
  v66 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v65 = 0;
    v68 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v65 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v68 = 0;
    v65 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v65 = 0;
  v68 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v64 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v64 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v64 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v63 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v64 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v63 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v63 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v67 = v37;
      if (v69 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 | (*(v50 + 1) << 32));
                  _H2 = *v51;
                  __asm { FCVT            S2, H2 }

                  _H3 = v51[1];
                  __asm { FCVT            S3, H3 }

                  v61 = v50[1] < _S3;
                  if (*v50 != _S2)
                  {
                    v61 = *v50 < _S2;
                  }

                  if (v61)
                  {
                    v62 = *v50 | (*(v50 + 1) << 32);
                  }

                  else
                  {
                    v62 = LODWORD(_S2) | (LODWORD(_S3) << 32);
                  }

                  *v52 = v62;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v68);
        }

        while (v41 != v69);
      }

      ++v37;
      v40 = (v40 + v63);
      v39 = (v39 + v64);
      v38 = (v38 + v65);
    }

    while (v67 + 1 != v66);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v65 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v64 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v64 = 0;
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
    v64 = 0;
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
  v64 = 0;
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
    v63 = 0;
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
      v63 = 0;
    }

    else
    {
      v63 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v63 = 0;
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
    v63 = 0;
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
  v63 = 0;
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
  if (v65 >= 1)
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
                  v56 = *v53;
                  _H1 = *v54;
                  __asm { FCVT            S1, H1 }

                  if (*v53 > _S1)
                  {
                    v56 = _S1;
                  }

                  *v55 = v56;
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
      v42 = (v42 + v63);
      v41 = (v41 + v64);
    }

    while (v40 != v65);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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

    v37 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v37 = 0;
    v28 = 0;
    v57 = 0;
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
    v56 = 0;
    v36 = 0;
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
    v56 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v56 = *(*(v6 + 64) + 8 * v15);
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
  if (v59 >= 1)
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
                  LODWORD(v55) = *v52 << 16;
                  if (*v53 < v55)
                  {
                    v55 = *v53;
                  }

                  *v54 = v55;
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
      v42 = (v42 + v56);
      v41 = (v41 + v57);
      v40 = (v40 + v58);
    }

    while (v39 != v59);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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

    v37 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v37 = 0;
    v28 = 0;
    v57 = 0;
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
    v56 = 0;
    v36 = 0;
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
    v56 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v56 = *(*(v6 + 64) + 8 * v15);
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
  if (v59 >= 1)
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
                  v55 = *v52;
                  if (*v52 > COERCE_FLOAT(*v53 << 16))
                  {
                    v55 = *v53 << 16;
                  }

                  *v54 = v55;
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
      v42 = (v42 + v56);
      v41 = (v41 + v57);
      v40 = (v40 + v58);
    }

    while (v39 != v59);
  }

  return result;
}

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)15>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v61 = 1;
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
  v61 = *(v9 + 8 * (v7 - 3));
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
    v60 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v57 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v60 = 0;
    v57 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v57 = 0;
  v60 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v56 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v56 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v56 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v55 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v56 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v59 = v37;
      if (v61 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 | (*(v50 + 1) << 16));
                  v53 = v50[1] < v51[1];
                  if (*v50 != *v51)
                  {
                    v53 = *v50 < *v51;
                  }

                  if (v53)
                  {
                    v54 = *v50 | (*(v50 + 1) << 16);
                  }

                  else
                  {
                    v54 = *v51 | (*(v51 + 1) << 16);
                  }

                  *v52 = v54;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v60);
        }

        while (v41 != v61);
      }

      ++v37;
      v40 = (v40 + v55);
      v39 = (v39 + v56);
      v38 = (v38 + v57);
    }

    while (v59 + 1 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
                  v56 = *v53;
                  if (*v54 < *v53)
                  {
                    v56 = *v54;
                  }

                  *v55 = v56;
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

unint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)15>(unint64_t result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = *(*result + 8);
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
  v57 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    v58 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v56 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v58 = 0;
    v56 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v56 = 0;
  v58 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v55 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v55 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v55 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v54 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v55 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      if (v59 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  v53 = *v50;
                  result = (v53 << 16);
                  if (COERCE_FLOAT(*v51 << 16) < COERCE_FLOAT(v53 << 16))
                  {
                    LOWORD(v53) = *v51;
                  }

                  *v52 = v53;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v58);
        }

        while (v41 != v59);
      }

      ++v37;
      v40 = (v40 + v54);
      v39 = (v39 + v55);
      v38 = (v38 + v56);
    }

    while (v37 != v57);
  }

  return result;
}