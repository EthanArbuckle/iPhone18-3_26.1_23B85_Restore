uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v67 = **a4;
  v68 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v68;
        v41 = v38 * v19 + v67;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v64 = *(v4 + 16), v65 = v64 - 1, v64 < 1) || v65 > v64 - 1 || *(*(v4 + 24) + 8 * v65) == 1)
          {
            v66 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v66 = *(*(v4 + 64) + 8 * v65);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          _S0 = *(v54 + v66 * v53 + v55);
          __asm { FCVT            H0, S0 }

          *(v57 + v58 * v53++ + v56) = _S0;
          if (v9 == v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v63;
        v41 = v38 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v59 = *(v4 + 16), v60 = v59 - 1, v59 < 1) || v60 > v59 - 1 || *(*(v4 + 24) + 8 * v60) == 1)
          {
            v61 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v61 = *(*(v4 + 64) + 8 * v60);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          *(v57 + v58 * v53 + v56) = *(v54 + v61 * v53 + v55) << 16;
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v61 = **a4;
  v62 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v60 = v14;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    result = (v20 | v22);
    LOBYTE(v22) = v10 > v24;
    v28 = v7 > v24;
    v29 = v23 | (v14 > v24);
    v30 = v25 | v26;
    v31 = v27 | v22;
    v32 = result | v28;
    while (1)
    {
      if ((v21 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 4, v33 < 4) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      result = v60;
      if (*(*(v5 + 24) + 8 * v60) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v60);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v62;
        v38 = v62 + v35 * v19;
        v39 = v36 * v19 + v61;
        while (2)
        {
          if ((v21 & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 3, v40 < 3) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
          {
            v42 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v42 = *(*(v4 + 64) + 8 * v41);
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v43 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v43 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v37 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = &v38[v42 * v37];
        v46 = v39 + v43 * v37;
        while (2)
        {
          if ((v21 & 1) != 0 || (v47 = *(v4 + 16), v48 = v47 - 2, v47 < 2) || v48 > v47 - 1 || *(*(v4 + 24) + 8 * v48) == 1)
          {
            v49 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v49 = *(*(v4 + 64) + 8 * v48);
          if (v31)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v50 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v50 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v44 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v51 = 0;
        v52 = &v45[v49 * v44];
        v53 = *(v4 + 40);
        v54 = *(v5 + 40);
        v55 = v46 + v50 * v44;
        while (2)
        {
          if ((v21 & 1) != 0 || (v56 = *(v4 + 16), v57 = v56 - 1, v56 < 1) || v57 > v56 - 1 || *(*(v4 + 24) + 8 * v57) == 1)
          {
            v58 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_48:
            v59 = 0;
          }

          else
          {
            v58 = *(*(v4 + 64) + 8 * v57);
            if (v32)
            {
              goto LABEL_48;
            }

LABEL_47:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_48;
            }

            v59 = *(*(v5 + 64) + 8 * v7);
          }

          result = (v55 + v59 * v51);
          *(result + v54) = HIWORD(COERCE_UNSIGNED_INT(*&v52[v58 * v51 + v53] + (COERCE_FLOAT(*&v52[v58 * v51 + v53] & 0xFF800000) * 0.0039062)));
          if (v9 == ++v51)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v36 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v14 = v6 - 4;
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    v14 = *(v4 + 58);
    result = *(v5 + 58);
    while (1)
    {
      if ((v14 & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
      {
        v17 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v17 = *(*(v4 + 64) + 8 * v16);
        if (result)
        {
          break;
        }
      }

      v18 = *(v5 + 16);
      v19 = v18 - 4;
      if (v18 < 4 || v19 > v18 - 1 || *(*(v5 + 24) + 8 * v19) == 1)
      {
        break;
      }

      v20 = *(*(v5 + 64) + 8 * v19);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v20 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v21 = 0;
    v22 = v6 + v17 * v13;
    v23 = v7 + v20 * v13;
    while (1)
    {
      if ((v14 & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 3, v24 < 3) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v26 = *(*(v4 + 64) + 8 * v25);
        if (result)
        {
          break;
        }
      }

      v27 = *(v5 + 16);
      v28 = v27 - 3;
      if (v27 < 3 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
      {
        break;
      }

      v29 = *(*(v5 + 64) + 8 * v28);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v21 == v12)
      {
        goto LABEL_11;
      }
    }

    v29 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v30 = 0;
    v31 = v22 + v26 * v21;
    v32 = v23 + v29 * v21;
    while (1)
    {
      if ((v14 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 2, v33 < 2) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (result)
        {
          break;
        }
      }

      v36 = *(v5 + 16);
      v37 = v36 - 2;
      if (v36 < 2 || v37 > v36 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
      {
        break;
      }

      v38 = *(*(v5 + 64) + 8 * v37);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v30 == v11)
      {
        goto LABEL_25;
      }
    }

    v38 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v39 = 0;
    v40 = v31 + v35 * v30;
    v41 = *(v4 + 40);
    v42 = *(v5 + 40);
    v43 = v32 + v38 * v30;
    while (1)
    {
      if ((v14 & 1) != 0 || (v44 = *(v4 + 16), v45 = v44 - 1, v44 < 1) || v45 > v44 - 1 || *(*(v4 + 24) + 8 * v45) == 1)
      {
        v46 = 0;
        if (result)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v46 = *(*(v4 + 64) + 8 * v45);
        if (result)
        {
          goto LABEL_63;
        }
      }

      v47 = *(v5 + 16);
      v48 = v47 - 1;
      if (v47 < 1 || v48 > v47 - 1 || *(*(v5 + 24) + 8 * v48) == 1)
      {
LABEL_63:
        v49 = 0;
        goto LABEL_64;
      }

      v49 = *(*(v5 + 64) + 8 * v48);
LABEL_64:
      *(v43 + v49 * v39 + v42) = *(v40 + v46 * v39 + v41);
      if (v10 == ++v39)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    v14 = vneg_f32(0x80000000800000);
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v16);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v17 = *(v5 + 16);
      v18 = v17 - 4;
      if (v17 < 4 || v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
      {
        break;
      }

      v19 = *(*(v5 + 64) + 8 * v18);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v19 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v20 = 0;
    result = (v6 + result * v13);
    v21 = v7 + v19 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v22 = *(v4 + 16), v23 = v22 - 3, v22 < 3) || v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
      {
        v24 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v24 = *(*(v4 + 64) + 8 * v23);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v25 = *(v5 + 16);
      v26 = v25 - 3;
      if (v25 < 3 || v26 > v25 - 1 || *(*(v5 + 24) + 8 * v26) == 1)
      {
        break;
      }

      v27 = *(*(v5 + 64) + 8 * v26);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v20 == v12)
      {
        goto LABEL_11;
      }
    }

    v27 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v28 = 0;
    v29 = result + v24 * v20;
    v30 = v21 + v27 * v20;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v31 = *(v4 + 16), v32 = v31 - 2, v31 < 2) || v32 > v31 - 1 || *(*(v4 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v33 = *(*(v4 + 64) + 8 * v32);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v34 = *(v5 + 16);
      v35 = v34 - 2;
      if (v34 < 2 || v35 > v34 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
      {
        break;
      }

      v36 = *(*(v5 + 64) + 8 * v35);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v28 == v11)
      {
        goto LABEL_25;
      }
    }

    v36 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v37 = 0;
    v38 = &v29[v33 * v28];
    v39 = v30 + v36 * v28;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 1, v40 < 1) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
      {
        v42 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v42 = *(*(v4 + 64) + 8 * v41);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v43 = *(v5 + 16);
      v44 = v43 - 1;
      if (v43 < 1 || v44 > v43 - 1 || *(*(v5 + 24) + 8 * v44) == 1)
      {
LABEL_63:
        v45 = 0;
        goto LABEL_64;
      }

      v45 = *(*(v5 + 64) + 8 * v44);
LABEL_64:
      v46 = *&v38[v42 * v37 + *(v4 + 40)];
      *(v39 + v45 * v37++ + *(v5 + 40)) = vmaxnm_f32(vbsl_s8(vcgt_f32(v46, v14), v14, v46), 0x80000000800000);
      if (v10 == v37)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v64 = 1;
    v15 = 1;
    v16 = 1;
LABEL_7:
    v17 = 1;
LABEL_8:
    v18 = 0;
    v19 = v6 < 1;
    v20 = *(v4 + 58);
    v21 = *(v5 + 58);
    result = (v17 | v21);
    v22 = v6 - 1;
    v61 = v14;
    v23 = v11 > v22;
    v24 = v13 | v21;
    v25 = v19 | v21;
    v26 = v10 > v22;
    v27 = v7 > v22;
    v28 = result | (v14 > v22);
    v29 = v15 | v21 | v23;
    v30 = v24 | v26;
    v31 = v25 | v27;
    while (1)
    {
      if ((v20 & 1) != 0 || (v32 = *(v4 + 16), v33 = v32 - 4, v32 < 4) || v33 > v32 - 1 || *(*(v4 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if (v28)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v34 = *(*(v4 + 64) + 8 * v33);
        if (v28)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v35 = *(*(v5 + 64) + 8 * v61);
        if (v16 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v36 = 0;
        v37 = v34 * v18 + v63;
        v38 = v35 * v18 + v62;
        while (2)
        {
          if ((v20 & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 3, v39 < 3) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
          {
            v41 = 0;
            if ((v29 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v41 = *(*(v4 + 64) + 8 * v40);
          if (v29)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v42 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v42 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v36 == v16)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v43 = 0;
        v44 = v37 + v41 * v36;
        v45 = v38 + v42 * v36;
        while (2)
        {
          if ((v20 & 1) != 0 || (v46 = *(v4 + 16), v47 = v46 - 2, v46 < 2) || v47 > v46 - 1 || *(*(v4 + 24) + 8 * v47) == 1)
          {
            v48 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v48 = *(*(v4 + 64) + 8 * v47);
          if (v30)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v49 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v49 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v43 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v50 = 0;
        v51 = v44 + v48 * v43;
        v52 = *(v4 + 40);
        v53 = *(v5 + 40);
        v54 = v45 + v49 * v43;
        while (2)
        {
          if ((v20 & 1) != 0 || (v58 = *(v4 + 16), v59 = v58 - 1, v58 < 1) || v59 > v58 - 1 || *(*(v4 + 24) + 8 * v59) == 1)
          {
            v60 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_42:
            v55 = 0;
          }

          else
          {
            v60 = *(*(v4 + 64) + 8 * v59);
            if (v31)
            {
              goto LABEL_42;
            }

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v55 = *(*(v5 + 64) + 8 * v7);
          }

          result = (v51 + v60 * v50);
          v56 = v54 + v55 * v50;
          v57 = *(result + v52);
          if (v57 > 3.4028e38)
          {
            v57 = 3.4028e38;
          }

          *(v56 + v53) = fmaxf(v57, -3.4028e38);
          if (v9 == ++v50)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v35 = 0;
      if (v16 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v18 == v64)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v16 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v64 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v64 = *(v8 + 8 * (v6 - 4));
  if (v64 >= 1)
  {
    v14 = v6 - 4;
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4, double a5, float16x4_t a6)
{
  v6 = **result;
  v7 = **a2;
  v8 = **a3;
  v9 = **a4;
  v10 = *(v7 + 16);
  if (v10 < 1)
  {
    v10 = 1;
    v13 = 1;
    v12 = 1;
    v14 = 1;
    goto LABEL_10;
  }

  v11 = *(v7 + 24) + 8 * v10;
  v12 = *(v11 - 8);
  if (v10 == 1)
  {
    v13 = 1;
    v14 = 1;
    goto LABEL_10;
  }

  v13 = *(v11 - 16);
  if (v10 < 3)
  {
    v10 = 1;
    v14 = 1;
    goto LABEL_10;
  }

  v14 = *(v11 - 24);
  if (v10 == 3)
  {
    v10 = 1;
    goto LABEL_10;
  }

  v10 = *(v11 - 32);
  if (v10 >= 1)
  {
LABEL_10:
    v15 = 0;
    while (1)
    {
      if ((*(v6 + 58) & 1) != 0 || (v16 = *(v6 + 16), v17 = v16 - 4, v16 < 4) || v17 > v16 - 1 || *(*(v6 + 24) + 8 * v17) == 1)
      {
        result = 0;
        if (*(v7 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v6 + 64) + 8 * v17);
        if (*(v7 + 58))
        {
          break;
        }
      }

      v18 = *(v7 + 16);
      v19 = v18 - 4;
      if (v18 < 4 || v19 > v18 - 1 || *(*(v7 + 24) + 8 * v19) == 1)
      {
        break;
      }

      v20 = *(*(v7 + 64) + 8 * v19);
      if (v14 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v15 == v10)
      {
        return result;
      }
    }

    v20 = 0;
    if (v14 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v21 = 0;
    result = (v8 + result * v15);
    v22 = v9 + v20 * v15;
    while (1)
    {
      if ((*(v6 + 58) & 1) != 0 || (v23 = *(v6 + 16), v24 = v23 - 3, v23 < 3) || v24 > v23 - 1 || *(*(v6 + 24) + 8 * v24) == 1)
      {
        v25 = 0;
        if (*(v7 + 58))
        {
          break;
        }
      }

      else
      {
        v25 = *(*(v6 + 64) + 8 * v24);
        if (*(v7 + 58))
        {
          break;
        }
      }

      v26 = *(v7 + 16);
      v27 = v26 - 3;
      if (v26 < 3 || v27 > v26 - 1 || *(*(v7 + 24) + 8 * v27) == 1)
      {
        break;
      }

      v28 = *(*(v7 + 64) + 8 * v27);
      if (v13 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v21 == v14)
      {
        goto LABEL_11;
      }
    }

    v28 = 0;
    if (v13 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v29 = 0;
    v30 = result + v25 * v21;
    v31 = v22 + v28 * v21;
    while (1)
    {
      if ((*(v6 + 58) & 1) != 0 || (v32 = *(v6 + 16), v33 = v32 - 2, v32 < 2) || v33 > v32 - 1 || *(*(v6 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if (*(v7 + 58))
        {
          break;
        }
      }

      else
      {
        v34 = *(*(v6 + 64) + 8 * v33);
        if (*(v7 + 58))
        {
          break;
        }
      }

      v35 = *(v7 + 16);
      v36 = v35 - 2;
      if (v35 < 2 || v36 > v35 - 1 || *(*(v7 + 24) + 8 * v36) == 1)
      {
        break;
      }

      v37 = *(*(v7 + 64) + 8 * v36);
      if (v12 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v29 == v13)
      {
        goto LABEL_25;
      }
    }

    v37 = 0;
    if (v12 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v38 = 0;
    v39 = &v30[v34 * v29];
    v40 = v31 + v37 * v29;
    while (1)
    {
      if ((*(v6 + 58) & 1) != 0 || (v41 = *(v6 + 16), v42 = v41 - 1, v41 < 1) || v42 > v41 - 1 || *(*(v6 + 24) + 8 * v42) == 1)
      {
        v43 = 0;
        if (*(v7 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v43 = *(*(v6 + 64) + 8 * v42);
        if (*(v7 + 58))
        {
          goto LABEL_63;
        }
      }

      v44 = *(v7 + 16);
      v45 = v44 - 1;
      if (v44 < 1 || v45 > v44 - 1 || *(*(v7 + 24) + 8 * v45) == 1)
      {
LABEL_63:
        v46 = 0;
        goto LABEL_64;
      }

      v46 = *(*(v7 + 64) + 8 * v45);
LABEL_64:
      a6.i32[0] = *&v39[v43 * v38 + *(v6 + 40)];
      a6 = vcvtq_f32_f16(vmaxnm_f16(a6, 0xFC00FC00FC00FC00)).u64[0];
      *(v40 + v46 * v38++ + *(v7 + 40)) = *&a6;
      if (v12 == v38)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)14>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v68 = **a4;
  v69 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v69;
        v41 = v38 * v19 + v68;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v65 = *(v4 + 16), v66 = v65 - 1, v65 < 1) || v66 > v65 - 1 || *(*(v4 + 24) + 8 * v66) == 1)
          {
            v67 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v67 = *(*(v4 + 64) + 8 * v66);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          _H1 = fmaxl(*(v54 + v67 * v53 + v55), COERCE_SHORT_FLOAT(-1024));
          __asm { FCVT            S1, H1 }

          *(v57 + v58 * v53++ + v56) = _S1;
          if (v9 == v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v16 = *(v5 + 16);
      v17 = v16 - 4;
      if (v16 < 4 || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
      {
        break;
      }

      v18 = *(*(v5 + 64) + 8 * v17);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v18 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0;
    result = (v6 + result * v13);
    v20 = v7 + v18 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v21 = *(v4 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
      {
        v23 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v23 = *(*(v4 + 64) + 8 * v22);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v24 = *(v5 + 16);
      v25 = v24 - 3;
      if (v24 < 3 || v25 > v24 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
      {
        break;
      }

      v26 = *(*(v5 + 64) + 8 * v25);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v19 == v12)
      {
        goto LABEL_11;
      }
    }

    v26 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v27 = 0;
    v28 = result + v23 * v19;
    v29 = v20 + v26 * v19;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v30 = *(v4 + 16), v31 = v30 - 2, v30 < 2) || v31 > v30 - 1 || *(*(v4 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v32 = *(*(v4 + 64) + 8 * v31);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v33 = *(v5 + 16);
      v34 = v33 - 2;
      if (v33 < 2 || v34 > v33 - 1 || *(*(v5 + 24) + 8 * v34) == 1)
      {
        break;
      }

      v35 = *(*(v5 + 64) + 8 * v34);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v27 == v11)
      {
        goto LABEL_25;
      }
    }

    v35 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v36 = 0;
    v37 = &v28[v32 * v27];
    v38 = v29 + v35 * v27;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 1, v39 < 1) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
      {
        v41 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v41 = *(*(v4 + 64) + 8 * v40);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v42 = *(v5 + 16);
      v43 = v42 - 1;
      if (v42 < 1 || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
LABEL_63:
        v44 = 0;
        goto LABEL_64;
      }

      v44 = *(*(v5 + 64) + 8 * v43);
LABEL_64:
      v45 = &v37[v41 * v36 + *(v4 + 40)];
      v46 = (v38 + v44 * v36 + *(v5 + 40));
      v47 = *v45;
      v48 = v45[1];
      if (*v45 > COERCE_SHORT_FLOAT(31743))
      {
        v47 = COERCE_SHORT_FLOAT(31743);
      }

      v49 = fmaxl(v47, COERCE_SHORT_FLOAT(-1025));
      if (v48 > COERCE_SHORT_FLOAT(31743))
      {
        v48 = COERCE_SHORT_FLOAT(31743);
      }

      *v46 = v49;
      v46[1] = fmaxl(v48, COERCE_SHORT_FLOAT(-1025));
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)14>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v64 = **a4;
  v65 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v65;
        v41 = v38 * v19 + v64;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v61 = *(v4 + 16), v62 = v61 - 1, v61 < 1) || v62 > v61 - 1 || *(*(v4 + 24) + 8 * v62) == 1)
          {
            v63 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v63 = *(*(v4 + 64) + 8 * v62);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          v59 = v57 + v58 * v53;
          v60 = *(v54 + v63 * v53 + v55);
          if (v60 > COERCE_SHORT_FLOAT(31743))
          {
            v60 = COERCE_SHORT_FLOAT(31743);
          }

          *(v59 + v56) = fmaxl(v60, COERCE_SHORT_FLOAT(-1025));
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(uint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    result = 3347046400;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        v16 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v16 = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v17 = *(v5 + 16);
      v18 = v17 - 4;
      if (v17 < 4 || v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
      {
        break;
      }

      v19 = *(*(v5 + 64) + 8 * v18);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v19 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v20 = 0;
    v21 = v6 + v16 * v13;
    v22 = v7 + v19 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v23 = *(v4 + 16), v24 = v23 - 3, v23 < 3) || v24 > v23 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
      {
        v25 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v25 = *(*(v4 + 64) + 8 * v24);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v26 = *(v5 + 16);
      v27 = v26 - 3;
      if (v26 < 3 || v27 > v26 - 1 || *(*(v5 + 24) + 8 * v27) == 1)
      {
        break;
      }

      v28 = *(*(v5 + 64) + 8 * v27);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v20 == v12)
      {
        goto LABEL_11;
      }
    }

    v28 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v29 = 0;
    v30 = v21 + v25 * v20;
    v31 = v22 + v28 * v20;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v32 = *(v4 + 16), v33 = v32 - 2, v32 < 2) || v33 > v32 - 1 || *(*(v4 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v34 = *(*(v4 + 64) + 8 * v33);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v35 = *(v5 + 16);
      v36 = v35 - 2;
      if (v35 < 2 || v36 > v35 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
      {
        break;
      }

      v37 = *(*(v5 + 64) + 8 * v36);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v29 == v11)
      {
        goto LABEL_25;
      }
    }

    v37 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v38 = 0;
    v39 = v30 + v34 * v29;
    v40 = v31 + v37 * v29;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v41 = *(v4 + 16), v42 = v41 - 1, v41 < 1) || v42 > v41 - 1 || *(*(v4 + 24) + 8 * v42) == 1)
      {
        v43 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v43 = *(*(v4 + 64) + 8 * v42);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v44 = *(v5 + 16);
      v45 = v44 - 1;
      if (v44 < 1 || v45 > v44 - 1 || *(*(v5 + 24) + 8 * v45) == 1)
      {
LABEL_63:
        v46 = 0;
        goto LABEL_64;
      }

      v46 = *(*(v5 + 64) + 8 * v45);
LABEL_64:
      v47 = (v39 + v43 * v38 + *(v4 + 40));
      v48 = (v40 + v46 * v38 + *(v5 + 40));
      v49 = *v47;
      v50 = v47[1];
      if (*v47 > 65504.0)
      {
        v49 = 65504.0;
      }

      _S0 = fmaxf(v49, -65504.0);
      if (v50 > 65504.0)
      {
        v50 = 65504.0;
      }

      _S1 = fmaxf(v50, -65504.0);
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      *v48 = _H0;
      v48[1] = LOWORD(_S1);
      if (v10 == ++v38)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v67 = **a4;
  v68 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v69 = 1;
    v15 = 1;
    v16 = 1;
LABEL_7:
    v17 = 1;
LABEL_8:
    v18 = 0;
    v19 = v6 < 1;
    v20 = *(v4 + 58);
    v21 = *(v5 + 58);
    result = (v17 | v21);
    v22 = v6 - 1;
    v66 = v14;
    v23 = v11 > v22;
    v24 = v13 | v21;
    v25 = v19 | v21;
    v26 = v10 > v22;
    v27 = v7 > v22;
    v28 = result | (v14 > v22);
    v29 = v15 | v21 | v23;
    v30 = v24 | v26;
    v31 = v25 | v27;
    while (1)
    {
      if ((v20 & 1) != 0 || (v32 = *(v4 + 16), v33 = v32 - 4, v32 < 4) || v33 > v32 - 1 || *(*(v4 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if (v28)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v34 = *(*(v4 + 64) + 8 * v33);
        if (v28)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * v66) != 1)
      {
        v35 = *(*(v5 + 64) + 8 * v66);
        if (v16 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v36 = 0;
        v37 = v34 * v18 + v68;
        v38 = v35 * v18 + v67;
        while (2)
        {
          if ((v20 & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 3, v39 < 3) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
          {
            v41 = 0;
            if ((v29 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v41 = *(*(v4 + 64) + 8 * v40);
          if (v29)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v42 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v42 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v36 == v16)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v43 = 0;
        v44 = v37 + v41 * v36;
        v45 = v38 + v42 * v36;
        while (2)
        {
          if ((v20 & 1) != 0 || (v46 = *(v4 + 16), v47 = v46 - 2, v46 < 2) || v47 > v46 - 1 || *(*(v4 + 24) + 8 * v47) == 1)
          {
            v48 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v48 = *(*(v4 + 64) + 8 * v47);
          if (v30)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v49 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v49 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v43 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v50 = 0;
        v51 = v44 + v48 * v43;
        v52 = *(v4 + 40);
        v53 = *(v5 + 40);
        v54 = v45 + v49 * v43;
        while (2)
        {
          if ((v20 & 1) != 0 || (v63 = *(v4 + 16), v64 = v63 - 1, v63 < 1) || v64 > v63 - 1 || *(*(v4 + 24) + 8 * v64) == 1)
          {
            v65 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_42:
            v55 = 0;
          }

          else
          {
            v65 = *(*(v4 + 64) + 8 * v64);
            if (v31)
            {
              goto LABEL_42;
            }

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v55 = *(*(v5 + 64) + 8 * v7);
          }

          result = (v51 + v65 * v50);
          v56 = v54 + v55 * v50;
          v57 = *(result + v52);
          if (v57 > 65504.0)
          {
            v57 = 65504.0;
          }

          _S0 = fmaxf(v57, -65504.0);
          __asm { FCVT            H0, S0 }

          *(v56 + v53) = LOWORD(_S0);
          if (v9 == ++v50)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v35 = 0;
      if (v16 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v18 == v69)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v16 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v69 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v69 = *(v8 + 8 * (v6 - 4));
  if (v69 >= 1)
  {
    v14 = v6 - 4;
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v64 = **a4;
  v65 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v63 = v14;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    result = (v20 | v22);
    LOBYTE(v22) = v10 > v24;
    v28 = v7 > v24;
    v29 = v23 | (v14 > v24);
    v30 = v25 | v26;
    v31 = v27 | v22;
    v32 = result | v28;
    while (1)
    {
      if ((v21 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 4, v33 < 4) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      result = v63;
      if (*(*(v5 + 24) + 8 * v63) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v63);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v65;
        v38 = v65 + v35 * v19;
        v39 = v36 * v19 + v64;
        while (2)
        {
          if ((v21 & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 3, v40 < 3) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
          {
            v42 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v42 = *(*(v4 + 64) + 8 * v41);
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v43 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v43 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v37 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = &v38[v42 * v37];
        v46 = v39 + v43 * v37;
        while (2)
        {
          if ((v21 & 1) != 0 || (v47 = *(v4 + 16), v48 = v47 - 2, v47 < 2) || v48 > v47 - 1 || *(*(v4 + 24) + 8 * v48) == 1)
          {
            v49 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v49 = *(*(v4 + 64) + 8 * v48);
          if (v31)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v50 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v50 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v44 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v51 = 0;
        v52 = &v45[v49 * v44];
        v53 = *(v4 + 40);
        v54 = *(v5 + 40);
        v55 = v46 + v50 * v44;
        while (2)
        {
          if ((v21 & 1) != 0 || (v60 = *(v4 + 16), v61 = v60 - 1, v60 < 1) || v61 > v60 - 1 || *(*(v4 + 24) + 8 * v61) == 1)
          {
            v62 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_53;
            }

LABEL_42:
            v56 = 0;
          }

          else
          {
            v62 = *(*(v4 + 64) + 8 * v61);
            if (v32)
            {
              goto LABEL_42;
            }

LABEL_53:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v56 = *(*(v5 + 64) + 8 * v7);
          }

          result = (v55 + v56 * v51);
          LODWORD(v57) = *&v52[v62 * v51 + v53] << 16;
          v58 = v57;
          v59 = -INFINITY;
          if (v57 < -INFINITY)
          {
            v59 = v57;
          }

          if (v57 <= -INFINITY)
          {
            v58 = v59;
          }

          *(result + v54) = v58;
          if (v9 == ++v51)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v36 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v14 = v6 - 4;
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)14>(uint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v64 = **a4;
  v65 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v14 = 1;
    v15 = 1;
    v16 = 1;
LABEL_7:
    v17 = 1;
LABEL_8:
    v18 = 0;
    v19 = v6 < 1;
    v20 = *(v4 + 58);
    v21 = *(v5 + 58);
    v22 = v17 | v21;
    v23 = v6 - 1;
    v63 = result;
    v24 = v15 | v21;
    v25 = v11 > v23;
    v26 = v13 | v21;
    v27 = v19 | v21;
    v28 = v10 > v23;
    v29 = v7 > v23;
    v30 = v22 | (result > v23);
    v31 = v24 | v25;
    v32 = v26 | v28;
    v33 = v27 | v29;
    while (1)
    {
      if ((v20 & 1) != 0 || (v34 = *(v4 + 16), v35 = v34 - 4, v34 < 4) || v35 > v34 - 1 || *(*(v4 + 24) + 8 * v35) == 1)
      {
        v36 = 0;
        if (v30)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v36 = *(*(v4 + 64) + 8 * v35);
        if (v30)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * v63) != 1)
      {
        v37 = *(*(v5 + 64) + 8 * v63);
        if (v16 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v38 = 0;
        result = v65;
        v39 = v36 * v18 + v65;
        v40 = v37 * v18 + v64;
        while (2)
        {
          if ((v20 & 1) != 0 || (v41 = *(v4 + 16), v42 = v41 - 3, v41 < 3) || v42 > v41 - 1 || *(*(v4 + 24) + 8 * v42) == 1)
          {
            v43 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v43 = *(*(v4 + 64) + 8 * v42);
          if (v31)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v44 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v44 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v38 == v16)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v45 = 0;
        v46 = v39 + v43 * v38;
        v47 = v40 + v44 * v38;
        while (2)
        {
          if ((v20 & 1) != 0 || (v48 = *(v4 + 16), v49 = v48 - 2, v48 < 2) || v49 > v48 - 1 || *(*(v4 + 24) + 8 * v49) == 1)
          {
            v50 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v50 = *(*(v4 + 64) + 8 * v49);
          if (v32)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v51 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v51 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v45 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v52 = 0;
        v53 = v46 + v50 * v45;
        v54 = *(v4 + 40);
        v55 = *(v5 + 40);
        v56 = v47 + v51 * v45;
        while (2)
        {
          if ((v20 & 1) != 0 || (v60 = *(v4 + 16), v61 = v60 - 1, v60 < 1) || v61 > v60 - 1 || *(*(v4 + 24) + 8 * v61) == 1)
          {
            v62 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_53;
            }

LABEL_42:
            v57 = 0;
          }

          else
          {
            v62 = *(*(v4 + 64) + 8 * v61);
            if (v33)
            {
              goto LABEL_42;
            }

LABEL_53:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v57 = *(*(v5 + 64) + 8 * v7);
          }

          v58 = v56 + v57 * v52;
          v59 = *(v53 + v62 * v52 + v54);
          if (COERCE_FLOAT(v59 << 16) > 0.0)
          {
            v59 = 0;
          }

          result = (v59 << 16);
          if (COERCE_FLOAT(v59 << 16) <= 0.0)
          {
            LOWORD(v59) = 0;
          }

          *(v58 + v55) = v59;
          if (v9 == ++v52)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v37 = 0;
      if (v16 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v18 == v14)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v16 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v14 = *(v8 + 8 * (v6 - 4));
  if (v14 >= 1)
  {
    result = v6 - 4;
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  return result;
}

void mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)14>(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = **a2;
  v5 = **a4;
  v6 = *(v4 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v4 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = v18 | v21;
    v23 = v6 - 1;
    v24 = v16 | v21;
    v25 = v11 > v23;
    v26 = v13 | v21;
    v27 = v20 | v21;
    v28 = v10 > v23;
    v29 = v7 > v23;
    v30 = v22 | (v14 > v23);
    v31 = v24 | v25;
    v32 = v26 | v28;
    v33 = v27 | v29;
    while ((v30 & 1) != 0 || *(*(v4 + 24) + 8 * v14) == 1)
    {
      v34 = 0;
      if (v17 >= 1)
      {
        goto LABEL_15;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return;
      }
    }

    v34 = *(*(v4 + 64) + 8 * v14);
    if (v17 < 1)
    {
      goto LABEL_9;
    }

LABEL_15:
    v35 = 0;
    v36 = v34 * v19 + v5;
    while ((v31 & 1) != 0 || *(*(v4 + 24) + 8 * v11) == 1)
    {
      v37 = 0;
      if (v12 >= 1)
      {
        goto LABEL_22;
      }

LABEL_16:
      if (++v35 == v17)
      {
        goto LABEL_9;
      }
    }

    v37 = *(*(v4 + 64) + 8 * v11);
    if (v12 < 1)
    {
      goto LABEL_16;
    }

LABEL_22:
    v38 = 0;
    v39 = v36 + v37 * v35;
    while (1)
    {
      if ((v32 & 1) != 0 || *(*(v4 + 24) + 8 * v10) == 1)
      {
        v40 = 0;
        if (v9 >= 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v40 = *(*(v4 + 64) + 8 * v10);
        if (v9 >= 1)
        {
LABEL_29:
          v41 = 0;
          v42 = v39 + v40 * v38;
          v43 = *(v4 + 40);
          do
          {
            if ((v33 & 1) != 0 || *(*(v4 + 24) + 8 * v7) == 1)
            {
              v44 = 0;
            }

            else
            {
              v44 = *(*(v4 + 64) + 8 * v7);
            }

            *(v42 + v44 * v41++ + v43) = 0;
          }

          while (v9 != v41);
        }
      }

      if (++v38 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v14 = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }
}

uint64_t llvm::SmallVectorImpl<int>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
LABEL_19:
      *v6 = 0;
      return result;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v11 = result;
        memmove(*result, *a2, 4 * v7);
        result = v11;
      }

      *(result + 8) = v7;
      goto LABEL_19;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v12 = a2;
        memmove(*result, *a2, 4 * v8);
        a2 = v12;
LABEL_16:
        v13 = *v6 - v8;
        if (v13)
        {
          memcpy((*v10 + 4 * v8), *a2 + 4 * v8, 4 * v13);
        }

        result = v10;
        *(v10 + 8) = v7;
        goto LABEL_19;
      }

      v10 = result;
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 4);
      a2 = v9;
    }

    v8 = 0;
    goto LABEL_16;
  }

  return result;
}

size_t support::emitVarInt(support *this, unint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2 <= 0x7F)
  {
    v2 = *(this + 4);
    if (v2 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, (2 * a2) | 1);
    }

    else
    {
      *(this + 4) = v2 + 1;
      *v2 = (2 * a2) | 1;
    }

    return 1;
  }

  if (!(a2 >> 14))
  {
    v3 = 2;
LABEL_25:
    v8[0] = ((2 * a2) | 1) << (v3 - 1);
    llvm::raw_ostream::write(this, v8, v3);
    return v3;
  }

  if (a2 < 0x200000)
  {
    v3 = 3;
    goto LABEL_25;
  }

  if (!(a2 >> 28))
  {
    v3 = 4;
    goto LABEL_25;
  }

  if (!(a2 >> 35))
  {
    v3 = 5;
    goto LABEL_25;
  }

  if (!(a2 >> 42))
  {
    v3 = 6;
    goto LABEL_25;
  }

  if (!(a2 >> 49))
  {
    v3 = 7;
    goto LABEL_25;
  }

  if (!HIBYTE(a2))
  {
    v3 = 8;
    goto LABEL_25;
  }

  v4 = *(this + 4);
  if (v4 >= *(this + 3))
  {
    v5 = this;
    v6 = a2;
    llvm::raw_ostream::write(this, 0);
    a2 = v6;
    this = v5;
  }

  else
  {
    *(this + 4) = v4 + 1;
    *v4 = 0;
  }

  v8[0] = a2;
  llvm::raw_ostream::write(this, v8, 8uLL);
  return 9;
}

unint64_t support::anonymous namespace::parseMultiByteVarInt(const void **this, unint64_t a2)
{
  v2 = a2;
  v4 = __clz(__rbit32(a2));
  v9 = HIBYTE(a2);
  v8 = HIDWORD(a2) >> 8;
  __dst = a2 >> 8;
  v5 = *this;
  memcpy(&__dst, *this, v4);
  *this = &v5[v4];
  return ((__dst << 8) | ((v8 | (v9 << 16)) << 40) | v2) >> (v4 + 1);
}

uint64_t support::ResourceStorage::add(_BYTE *a1, std::string::size_type a2, __int128 **a3, llvm::StringMapImpl *a4, uint64_t a5)
{
  if (a3[1])
  {
    LODWORD(v35) = 0;
    v10 = std::system_category();
    v36 = v10;
    llvm::raw_fd_ostream::raw_fd_ostream(v33, a1, a2, &v35, 3, 2, 4);
    if (v35)
    {
      v11 = "Failed to open resource file at ";
    }

    else
    {
      v32 = 261;
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      memset(&v37, 0, 44);
      *(&v37.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
      WORD2(v37.st_mtimespec.tv_sec) = 0;
      v37.st_mtimespec.tv_nsec = 0;
      v13 = llvm::sys::fs::status(&v31, &v37, 1);
      if (v13)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      if (v13)
      {
        v17 = v13;
      }

      else
      {
        v17 = 0;
      }

      v35 = v17;
      v36 = v16;
      if (!v17)
      {
        v19 = a3[1];
        if (v19)
        {
          v20 = *a3;
          if (v13)
          {
            tv_sec = 0;
          }

          else
          {
            tv_sec = v37.st_atimespec.tv_sec;
          }

          v22 = 48 * v19;
          do
          {
            if (*(v20 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v37, *v20, *(v20 + 1));
            }

            else
            {
              v23 = *v20;
              *&v37.st_uid = *(v20 + 2);
              *&v37.st_dev = v23;
            }

            v24 = *(v20 + 24);
            v37.st_atimespec.tv_nsec = *(v20 + 5);
            *&v37.st_rdev = v24;
            v25 = v24;
            if ((v37.st_gid & 0x80000000) == 0)
            {
              v26 = &v37;
            }

            else
            {
              v26 = *&v37.st_dev;
            }

            if ((v37.st_gid & 0x80000000) == 0)
            {
              st_gid_high = SHIBYTE(v37.st_gid);
            }

            else
            {
              st_gid_high = v37.st_ino;
            }

            v28 = llvm::StringMapImpl::hash(v26, st_gid_high, v15);
            (*llvm::StringMap<mlir::func::FuncOp,llvm::MallocAllocator>::try_emplace_with_hash<>(a4, v26, st_gid_high, v28))[1] = tv_sec;
            v29 = support::emitVarInt(v33, *(&v25 + 1));
            v30 = support::emitVarInt(v33, v37.st_atimespec.tv_nsec);
            llvm::raw_ostream::write(v33, v25, *(&v25 + 1));
            if (SHIBYTE(v37.st_gid) < 0)
            {
              operator delete(*&v37.st_dev);
            }

            tv_sec += *(&v25 + 1) + v29 + v30;
            v20 += 3;
            v22 -= 48;
          }

          while (v22);
        }

        v12 = 1;
        goto LABEL_22;
      }

      v11 = "Failed to get the file size for ";
    }

    *&v37.st_dev = v11;
    *&v37.st_uid = a1;
    *&v37.st_rdev = a2;
    LOWORD(v37.st_atimespec.tv_sec) = 1283;
    if (a5)
    {
      llvm::Twine::str(&v37, &v31);
      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
      }

      *a5 = v31;
    }

    v12 = 0;
LABEL_22:
    llvm::raw_fd_ostream::~raw_fd_ostream(v33);
    return v12;
  }

  v33[0] = "No resources to write.";
  v34 = 259;
  if (a5)
  {
    llvm::Twine::str(v33, &v37);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = *&v37.st_dev;
    *(a5 + 16) = *&v37.st_uid;
  }

  return 0;
}

uint64_t support::ResourceStorage::read(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, size_t, unint64_t), uint64_t a5, uint64_t a6)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 12))
  {
    v54 = "No resources to read.";
    v58 = 259;
    if (a6)
    {
      llvm::Twine::str(&v54, &v59);
      if (*(a6 + 23) < 0)
      {
        operator delete(*a6);
      }

      *a6 = v59;
    }

    return 0;
  }

  v58 = 261;
  v54 = a1;
  v55 = a2;
  llvm::MemoryBuffer::getFile(&v54, 0, 1, 0, 0, &v60);
  if ((v61 & 1) == 0)
  {
    v10 = v60;
LABEL_16:
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v54 = &v55;
    v12 = *a3;
    v13 = *(a3 + 8);
    if (v13)
    {
      for (i = *a3; ; ++i)
      {
        v15 = !*i || *i + 1 == 0;
        if (!v15)
        {
          break;
        }
      }
    }

    else
    {
      i = *a3;
    }

    v16 = &v12[v13];
    if (i != v16)
    {
      v51 = v10;
      v17 = *i;
      do
      {
        v18 = (v17 + 2);
        v19 = *v17;
        v22 = v17[1];
        v21 = (v17 + 1);
        v20 = v22;
        v23 = v55;
        v24 = &v55;
        v25 = &v55;
        if (v55)
        {
          while (1)
          {
            while (1)
            {
              v25 = v23;
              v26 = v23[4];
              if (v20 >= v26)
              {
                break;
              }

              v23 = *v25;
              v24 = v25;
              if (!*v25)
              {
                goto LABEL_35;
              }
            }

            if (v26 >= v20)
            {
              break;
            }

            v23 = v25[1];
            if (!v23)
            {
              v24 = v25 + 1;
              goto LABEL_35;
            }
          }
        }

        else
        {
LABEL_35:
          v27 = v25;
          v25 = operator new(0x40uLL);
          v25[4] = v20;
          v25[5] = 0;
          v25[6] = 0;
          v25[7] = 0;
          *v25 = 0;
          v25[1] = 0;
          v25[2] = v27;
          *v24 = v25;
          v28 = v25;
          if (*v54)
          {
            v54 = *v54;
            v28 = *v24;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v55, v28);
          v56 = (v56 + 1);
        }

        v25[5] = v18;
        v25[6] = v19;
        ++i;
        v25[7] = v21;
        while (1)
        {
          v17 = *i;
          if (*i && v17 + 1 != 0)
          {
            break;
          }

          ++i;
        }
      }

      while (i != v16);
      v30 = v54;
      if (v54 == &v55)
      {
        std::__tree<unsigned long long>::destroy(&v54, v55);
        v10 = v51;
        goto LABEL_69;
      }

      v10 = v51;
      v31 = *(v51 + 8);
      do
      {
        v32 = v30[5];
        v33 = v30[6];
        v34 = (v31 + v30[4]);
        v37 = *v34;
        v36 = v34 + 1;
        v35 = *v34;
        v59.__r_.__value_.__r.__words[0] = (v34 + 1);
        if (v37)
        {
          v38 = v35 >> 1;
        }

        else
        {
          v45 = v33;
          v46 = v32;
          if (v35)
          {
            v36 = v59.__r_.__value_.__r.__words[0];
          }

          else
          {
            v38 = *(v34 + 1);
            v36 = v34 + 9;
          }

          v32 = v46;
          v33 = v45;
        }

        v40 = v36 + 1;
        v39 = *v36;
        v59.__r_.__value_.__r.__words[0] = (v36 + 1);
        if (v39)
        {
          v41 = v39 >> 1;
        }

        else
        {
          v47 = v33;
          v48 = v32;
          if (v39)
          {
            v40 = v59.__r_.__value_.__r.__words[0];
          }

          else
          {
            v41 = *(v36 + 1);
            v40 = v36 + 9;
          }

          v32 = v48;
          v33 = v47;
        }

        v42 = a4(a5, v32, v33, v38, v41);
        memcpy(v42, v40, v38);
        v43 = v30[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v30[2];
            v15 = *v44 == v30;
            v30 = v44;
          }

          while (!v15);
        }

        v30 = v44;
      }

      while (v44 != &v55);
    }

    std::__tree<unsigned long long>::destroy(&v54, v55);
    if (!v10)
    {
LABEL_70:
      result = 1;
      if (v61)
      {
        return result;
      }

      goto LABEL_71;
    }

LABEL_69:
    (*(*v10 + 8))(v10);
    goto LABEL_70;
  }

  v10 = v60;
  if (!v60)
  {
    goto LABEL_16;
  }

  v54 = "Failed to read resource at ";
  v56 = a1;
  v57 = a2;
  v58 = 1283;
  if (a6)
  {
    llvm::Twine::str(&v54, &v59);
    if (*(a6 + 23) < 0)
    {
      operator delete(*a6);
    }

    *a6 = v59;
  }

  result = 0;
  if ((v61 & 1) == 0)
  {
LABEL_71:
    v49 = v60;
    v60 = 0;
    if (v49)
    {
      v50 = result;
      (*(*v49 + 8))(v49);
      return v50;
    }
  }

  return result;
}

uint64_t mlir::ShapeEquivalence::ShapeEquivalence(uint64_t result, mlir::ForwardIterator *a2)
{
  *result = result + 16;
  *(result + 8) = 0x400000000;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  if (a2)
  {
    v3 = result;
    v2 = result;
    mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ShapeEquivalence::compute(mlir::FunctionOpInterface)::$_0>, &v3, 1);
    return v2;
  }

  return result;
}

void *mlir::ShapeEquivalence::makeEquivalent(void *result, unint64_t a2, unint64_t a3)
{
  v3 = result;
  v32[4] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = a2;
  v5 = (result + 26);
  v4 = result[26];
  v6 = *(result + 56);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v7 >> 47) ^ v7);
  LODWORD(v7) = -348639895 * ((v8 >> 47) ^ v8);
  v9 = v6 - 1;
  v10 = (v6 - 1) & v7;
  v11 = *(v4 + 16 * v10);
  if (v11 == a3)
  {
    return result;
  }

  v12 = 1;
  while (v11 != -4096)
  {
    v13 = v10 + v12++;
    v10 = v13 & v9;
    v11 = *(v4 + 16 * v10);
    if (v11 == a3)
    {
      return result;
    }
  }

  v14 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v14 >> 47) ^ v14);
  v16 = v9 & (-348639895 * ((v15 >> 47) ^ v15));
  v17 = *(v4 + 16 * v16);
  if (v17 != a2)
  {
    v26 = 1;
    while (v17 != -4096)
    {
      v27 = v16 + v26++;
      v16 = v27 & v9;
      v17 = *(v4 + 16 * v16);
      if (v17 == a2)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_9;
  }

LABEL_8:
  if (v16 == v6)
  {
LABEL_9:
    v18 = v31;
    v31[0] = v32;
    v32[0] = a2;
    v31[1] = 0x400000001;
    v19 = *(result + 2);
    v20 = *result;
    if (v19 >= *(result + 3))
    {
      if (v20 <= v31 && v20 + 48 * v19 > v31)
      {
        v28 = v31 - v20;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,4u>,false>::grow(result, v19 + 1);
        v20 = *v3;
        v18 = &v28[*v3];
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,4u>,false>::grow(result, v19 + 1);
        v20 = *v3;
        v18 = v31;
      }
    }

    v21 = (v20 + 48 * *(v3 + 2));
    *v21 = v21 + 2;
    v21[1] = 0x400000000;
    if (*(v18 + 2))
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(v21, v18);
    }

    v22 = *(v3 + 2) + 1;
    *(v3 + 2) = v22;
    if (v31[0] != v32)
    {
      free(v31[0]);
      v22 = *(v3 + 2);
    }

    v23 = *v3 + 48 * v22 - 48;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>,mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>::operator[](v5, &v30) = v19;
    a3 = v29;
    goto LABEL_15;
  }

  v19 = *(v4 + 16 * v16 + 8);
  v23 = *result + 48 * v19;
LABEL_15:
  v24 = *(v23 + 8);
  if (v24 >= *(v23 + 12))
  {
    v25 = a3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v23 + 16, v24 + 1, 8);
    a3 = v25;
    LODWORD(v24) = *(v23 + 8);
  }

  *(*v23 + 8 * v24) = a3;
  ++*(v23 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>,mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>::operator[](v5, &v29);
  *result = v19;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>,mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (*a1 + 16 * (v12 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v13 = *(a1 + 8);
  if (4 * v13 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v13 = *(v16 + 8);
    v7 = v17;
    goto LABEL_15;
  }

  if (v2 + ~v13 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v13 + 1;
  if (*v7 != -4096)
  {
    --*(a1 + 12);
  }

  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

uint64_t mlir::ShapeEquivalence::getSet(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 224);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 208);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = (v2 - 1) & (-348639895 * ((v5 >> 47) ^ v5));
  v7 = *(v3 + 16 * v6);
  if (v7 != a2)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & (v2 - 1);
      v7 = *(v3 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v6 == v2)
  {
    return 0;
  }

  return *a1 + 48 * *(v3 + 16 * v6 + 8);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ShapeEquivalence::compute(mlir::FunctionOpInterface)::$_0>(void **a1, uint64_t a2)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    {
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
    }

    if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      goto LABEL_98;
    }

    {
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    }

    if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
LABEL_98:
      if (*(a2 + 36))
      {
        v4 = 0;
        do
        {
          v5 = a2 - 96 - 24 * (v4 - 5);
          v6 = v4 + 1;
          v7 = v4++ > 5;
          if (v7)
          {
            v8 = v5;
          }

          else
          {
            v8 = a2 - 16 * v6;
          }

          mlir::ShapeEquivalence::makeEquivalent(v3, *(*(a2 + 72) + 24), v8);
        }

        while (v4 != *(a2 + 36));
      }

      return;
    }
  }

  {
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v15 = *(*(a2 + 48) + 16);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
    {
      llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ShapeEquivalence::compute(mlir::FunctionOpInterface)::$_0>(a2, a2 + 44, v3);
    }

    else if (v15 == &mlir::detail::TypeIDResolver<mlir::mps_spi::RMSNormOp,void>::id)
    {
      v16 = *(*(a2 + 72) + 24);

      mlir::ShapeEquivalence::makeEquivalent(v3, v16, a2 - 16);
    }

    return;
  }

  if (*(a2 + 47) && (v61.var0 = "__no_dynamic_broadcast", v61.var1 = 22, InherentAttr = mlir::Operation::getInherentAttr(a2, v61), (v10 & 1) != 0))
  {
    if (InherentAttr)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v62.var0 = "__no_dynamic_broadcast";
    v62.var1 = 22;
    if (mlir::DictionaryAttr::contains((a2 + 56), v62))
    {
LABEL_22:
      if (*(a2 + 36))
      {
        v11 = 0;
        do
        {
          v12 = a2 - 96 - 24 * (v11 - 5);
          v13 = v11 + 1;
          v7 = v11++ > 5;
          if (v7)
          {
            v14 = v12;
          }

          else
          {
            v14 = a2 - 16 * v13;
          }

          mlir::ShapeEquivalence::makeEquivalent(v3, *(*(a2 + 72) + 24), v14);
        }

        while (v11 != *(a2 + 36));
      }

      return;
    }
  }

  v17 = 0;
  v57 = v59;
  v58 = 0x100000000;
  v54 = &v56;
  v55 = 0x100000000;
  while (1)
  {
    v20 = (*(a2 + 46) & 0x80) != 0 ? *(a2 + 68) : 0;
    if (v17 == v20 || v55 >= 2)
    {
      break;
    }

    v21 = (*(*(*(a2 + 72) + 32 * v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v21)
    {
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v22 = 0;
    }

    *&v53 = v21;
    *(&v53 + 1) = v22;
    if (!mlir::CallOpInterface::getArgOperands(&v53))
    {
      goto LABEL_36;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v53);
    if (v24)
    {
      v25 = 8 * v24;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_53;
        }
      }

LABEL_36:
      v18 = v55;
      if (v55 >= HIDWORD(v55))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, &v56, v55 + 1, 4);
        v18 = v55;
      }

      *(v54 + v18) = v17;
      v19 = &v55;
LABEL_39:
      ++*v19;
      goto LABEL_40;
    }

LABEL_53:
    if (!mlir::CallOpInterface::getArgOperands(&v53) || (mlir::CallableOpInterface::getArgAttrsAttr(&v53), v26))
    {
      v27 = v53;
      v28 = v58;
      if (v58 >= HIDWORD(v58))
      {
        v51 = v53;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v58 + 1, 16);
        v27 = v51;
        v28 = v58;
      }

      *(v57 + v28) = v27;
      v19 = &v58;
      goto LABEL_39;
    }

LABEL_40:
    ++v17;
  }

  v29 = v54;
  if (v55 != 1)
  {
    goto LABEL_92;
  }

  v30 = *(*(a2 + 72) + 32 * *v54 + 24);
  v31 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  *&v53 = v31;
  *(&v53 + 1) = v32;
  if ((mlir::CallOpInterface::getArgOperands(&v53) & 1) == 0)
  {
    if (v58)
    {
      goto LABEL_91;
    }

    goto LABEL_85;
  }

  if (!v58)
  {
LABEL_85:
    if (*(a2 + 36))
    {
      v47 = 0;
      do
      {
        v48 = a2 - 96 - 24 * (v47 - 5);
        v49 = v47 + 1;
        v7 = v47++ > 5;
        if (v7)
        {
          v50 = v48;
        }

        else
        {
          v50 = a2 - 16 * v49;
        }

        mlir::ShapeEquivalence::makeEquivalent(v3, v30, v50);
      }

      while (v47 != *(a2 + 36));
    }

    goto LABEL_91;
  }

  v33 = 0;
  v34 = v57;
  v35 = v57 + 16 * v58;
  while (1)
  {
    v52 = *v34;
    mlir::CallableOpInterface::getArgAttrsAttr(&v52);
    v37 = v36;
    mlir::CallableOpInterface::getArgAttrsAttr(&v53);
    if (v37 > v38)
    {
      break;
    }

    v39 = mlir::CallableOpInterface::getArgAttrsAttr(&v52);
    if (v40)
    {
      v41 = v39;
      v42 = 0;
      for (i = 8 * v40; i; i -= 8)
      {
        v45 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v53) + 8 * v42);
        v46 = *(v41 + 8 * v42);
        if (v45 == 0x8000000000000000)
        {
          if (v46 != 1)
          {
            goto LABEL_66;
          }
        }

        else if (v46 != v45 && v46 != 1)
        {
LABEL_66:
          v33 = 1;
          break;
        }

        ++v42;
      }
    }

    if (++v34 == v35)
    {
      if (v33)
      {
        break;
      }

      goto LABEL_85;
    }
  }

LABEL_91:
  v29 = v54;
LABEL_92:
  if (v29 != &v56)
  {
    free(v29);
  }

  if (v57 != v59)
  {
    free(v57);
  }
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,4u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 48 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x400000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v9, v6);
      }

      v9 += 6;
      v6 += 48;
      v8 -= 48;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = (v6 + 48 * v10 - 48);
      v12 = -48 * v10;
      do
      {
        if (v11 + 2 != *v11)
        {
          free(*v11);
        }

        v11 -= 6;
        v12 += 48;
      }

      while (v12);
      v6 = *a1;
    }
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

void *llvm::DenseMap<mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>,mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>,mlir::Value,unsigned long long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long long>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = &v4[2 * v7];
      v9 = v4 + 2;
      v10 = v7;
      do
      {
        *(v9 - 2) = -4096;
        *v9 = -4096;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[2 * v3];
    do
    {
      *v8 = -4096;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_10:
  if (a2 != a3)
  {
    v12 = 0;
    v13 = v3 - 1;
    do
    {
      v16 = *a2;
      if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
        v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
        v19 = (-348639895 * ((v18 >> 47) ^ v18)) & v13;
        v14 = (*result + 16 * v19);
        v20 = *v14;
        if (v16 != *v14)
        {
          v21 = 0;
          v22 = 1;
          while (v20 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v20 == -8192;
            }

            if (v23)
            {
              v21 = v14;
            }

            v24 = v19 + v22++;
            v19 = v24 & v13;
            v14 = (*result + 16 * (v24 & v13));
            v20 = *v14;
            if (v16 == *v14)
            {
              goto LABEL_14;
            }
          }

          if (v21)
          {
            v14 = v21;
          }
        }

LABEL_14:
        v15 = a2[1];
        *v14 = v16;
        v14[1] = v15;
        *(result + 8) = ++v12;
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t mlir::getElementTypeByteWidth(void *a1)
{
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8))
  {
    v10 = 0;
    v11 = 0;
    return 0;
  }

  v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
  v10 = a1;
  v11 = v2;
  if (!a1)
  {
    return 0;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v10);
  v9 = isSplat;
  if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v4 = isSplat;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;
  if (v4)
  {
    Value = mlir::AffineMapAttr::getValue(&v8);
    if (mlir::Type::isF16(&Value))
    {
      return 4;
    }

    Value = mlir::AffineMapAttr::getValue(&v8);
    if (mlir::Type::isF32(&Value))
    {
      return 8;
    }

    Value = mlir::AffineMapAttr::getValue(&v8);
    if (mlir::Type::isF64(&Value))
    {
      return 16;
    }

    else
    {
      return 0;
    }
  }

  if (!mlir::Type::isIntOrFloat(&v9))
  {
    return 0;
  }

  Value = mlir::ElementsAttr::isSplat(&v10);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&Value);
  v7 = (IntOrFloatBitWidth - (IntOrFloatBitWidth != 0)) >> 3;
  if (IntOrFloatBitWidth)
  {
    return v7 + 1;
  }

  else
  {
    return v7;
  }
}

uint64_t mlir::getMemrefSizeInBytes(void *a1, unint64_t a2)
{
  v20 = a1;
  ElementTypeByteWidth = mlir::getElementTypeByteWidth(a1);
  mlir::ArrayAttr::getValue(&v20);
  if (v4)
  {
    v5 = v4;
    Value = mlir::ArrayAttr::getValue(&v20);
    v7 = v5 - 1;
    v8 = *(Value + 8 * (v5 - 1));
    v9 = v8 == 0;
    v10 = (v8 - (v8 != 0)) / a2;
    if (!v9)
    {
      ++v10;
    }

    v11 = v10 * a2;
    if (v5 < 2)
    {
      goto LABEL_12;
    }

    if (v5 == 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v13 = (Value + 8);
      v14 = 1;
      v15 = v7 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v11 *= *(v13 - 1);
        v14 *= *v13;
        v13 += 2;
        v15 -= 2;
      }

      while (v15);
      v11 *= v14;
      if (v7 == v12)
      {
        goto LABEL_12;
      }
    }

    v16 = ~v12 + v5;
    v17 = (Value + 8 * v12);
    do
    {
      v18 = *v17++;
      v11 *= v18;
      --v16;
    }

    while (v16);
LABEL_12:
    ElementTypeByteWidth *= v11;
  }

  return ElementTypeByteWidth;
}

uint64_t mlir::getBroadcastIndices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72[4] = *MEMORY[0x1E69E9840];
  v65[0] = a1;
  v65[1] = a2;
  v64[0] = a3;
  v64[1] = a4;
  mlir::CallableOpInterface::getArgAttrsAttr(v65);
  if (!v6)
  {
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v64);
  if (!v7)
  {
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v65);
  v9 = v8;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v64);
  if (v9 == 1)
  {
    if (v11)
    {
      v12 = ArgAttrsAttr;
      v13 = 0;
      v14 = 0;
      v15 = 8 * v11;
      do
      {
        if ((v13 & 1) == 0 && (v16 = *(v12 + 8 * v14), v16 == *mlir::CallableOpInterface::getArgAttrsAttr(v65)))
        {
          v13 = 1;
        }

        else
        {
          v17 = *(a5 + 8);
          if (v17 >= *(a5 + 12))
          {
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a5, v14);
          }

          else
          {
            *(*a5 + 8 * v17) = v14;
            *(a5 + 8) = v17 + 1;
          }
        }

        ++v14;
        v15 -= 8;
      }

      while (v15);
    }

    return 1;
  }

  if (v11 == 1)
  {
    v18 = mlir::CallableOpInterface::getArgAttrsAttr(v65);
    if (v19)
    {
      v20 = v18;
      v21 = 0;
      v22 = 0;
      v23 = 8 * v19;
      do
      {
        if ((v21 & 1) == 0 && (v24 = *(v20 + 8 * v22), v24 == *mlir::CallableOpInterface::getArgAttrsAttr(v64)))
        {
          v21 = 1;
        }

        else
        {
          v25 = *(a5 + 8);
          if (v25 >= *(a5 + 12))
          {
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a5, v22);
          }

          else
          {
            *(*a5 + 8 * v25) = v22;
            *(a5 + 8) = v25 + 1;
          }
        }

        ++v22;
        v23 -= 8;
      }

      while (v23);
    }

    return 1;
  }

  v27 = mlir::CallableOpInterface::getArgAttrsAttr(v65);
  v28 = mlir::CallableOpInterface::getArgAttrsAttr(v65);
  v30 = (v28 + 8 * v29);
  v70 = v72;
  v71 = 0x400000000;
  v31 = (v30 - v27) >> 3;
  if (v31 < 5)
  {
    v32 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v31, 8);
    v32 = v71;
  }

  if (v30 != v27)
  {
    memcpy(v70 + 8 * v32, v27, v30 - v27);
    v32 = v71;
  }

  LODWORD(v71) = v32 + ((v30 - v27) >> 3);
  v33 = mlir::CallableOpInterface::getArgAttrsAttr(v64);
  v34 = mlir::CallableOpInterface::getArgAttrsAttr(v64);
  v36 = (v34 + 8 * v35);
  v67 = v69;
  v68 = 0x400000000;
  v37 = (v36 - v33) >> 3;
  if (v37 < 5)
  {
    v38 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v37, 8);
    v38 = v68;
  }

  if (v36 != v33)
  {
    memcpy(v67 + 8 * v38, v33, v36 - v33);
    v38 = v68;
  }

  LODWORD(v68) = v38 + ((v36 - v33) >> 3);
  v39 = mlir::CallableOpInterface::getArgAttrsAttr(v65);
  v41 = v40;
  v42 = mlir::CallableOpInterface::getArgAttrsAttr(v64);
  v44 = v41 == 0;
  v45 = v43 == 0;
  if (v41 | v43)
  {
    v46 = v42;
    v47 = v39 + 8 * v41;
    v48 = v42 + 8 * v43;
    do
    {
      if (v44)
      {
        if (!v45)
        {
          v49 = v70;
          v66 = 1;
          v50 = &v70;
LABEL_41:
          llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(v50, v49, &v66);
        }
      }

      else if (v45)
      {
        v49 = v67;
        v66 = 1;
        v50 = &v67;
        goto LABEL_41;
      }

      if (v44)
      {
        v47 = v39;
      }

      else
      {
        v47 -= 8;
      }

      if (v45)
      {
        v48 = v46;
      }

      else
      {
        v48 -= 8;
      }

      v45 = v48 == v46;
      v44 = v47 == v39;
    }

    while (v47 != v39 || v48 != v46);
  }

  v51 = mlir::OpTrait::util::staticallyKnownBroadcastable(v70, v71, v67, v68);
  v52 = v67;
  if (v51)
  {
    v53 = 1;
    if (v71 && v68)
    {
      v54 = 0;
      v55 = v70;
      v56 = 8 * v71 - 8;
      v57 = 8 * v68 - 8;
      do
      {
        v58 = v55[v54];
        v59 = v52[v54];
        if (v58 != v59 && (v58 == 1 || v59 == 1))
        {
          v61 = *(a5 + 8);
          if (v61 >= *(a5 + 12))
          {
            v63 = v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v61 + 1, 8);
            v52 = v63;
            v61 = *(a5 + 8);
          }

          *(*a5 + 8 * v61) = v54;
          ++*(a5 + 8);
        }

        if (!v56)
        {
          break;
        }

        ++v54;
        v56 -= 8;
        v62 = v57;
        v57 -= 8;
      }

      while (v62);
      v53 = 1;
      v52 = v67;
      if (v67 == v69)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v53 = 0;
  }

  if (v67 != v69)
  {
LABEL_68:
    free(v52);
  }

LABEL_69:
  if (v70 != v72)
  {
    free(v70);
  }

  return v53;
}

uint64_t mlir::getNegativeAxis(mlir *this, uint64_t a2)
{
  if (this >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  return this - v2;
}

unint64_t mlir::tryGetPositiveAxis(uint64_t a1, Location a2, mlir *this, char a4, uint64_t a5)
{
  v70 = *MEMORY[0x1E69E9840];
  v54 = a1;
  v5 = -a2.var0.var0;
  if (-a2.var0.var0 > a1 || a2.var0.var0 <= a1)
  {
    if (a5)
    {
      v52[0] = "invalid axis ";
      v53 = 259;
      mlir::Operation::emitOpError(a5, v52, &v58);
      if (v58)
      {
        LODWORD(v55) = 2;
        v56 = a1;
        v9 = &v55;
        v10 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v55 && v60 + 24 * v61 > &v55)
          {
            v47 = &v55 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v10 = v60;
            v9 = (v60 + v47);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v9 = &v55;
            v10 = v60;
          }
        }

        v11 = &v10[24 * v61];
        v12 = *v9;
        *(v11 + 2) = v9[2];
        *v11 = v12;
        v13 = ++v61;
        if (v58)
        {
          LODWORD(v55) = 3;
          v56 = " is outside of the range [";
          v57 = 26;
          v14 = &v55;
          v15 = v60;
          if (v13 >= v62)
          {
            if (v60 <= &v55 && v60 + 24 * v13 > &v55)
            {
              v50 = &v55 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v13 + 1, 24);
              v15 = v60;
              v14 = (v60 + v50);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v13 + 1, 24);
              v14 = &v55;
              v15 = v60;
            }
          }

          v16 = &v15[24 * v61];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          v18 = ++v61;
          if (v58)
          {
            LODWORD(v55) = 2;
            v56 = v5;
            v19 = &v55;
            v20 = v60;
            if (v18 >= v62)
            {
              if (v60 <= &v55 && v60 + 24 * v18 > &v55)
              {
                v51 = &v55 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v18 + 1, 24);
                v20 = v60;
                v19 = (v60 + v51);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v18 + 1, 24);
                v19 = &v55;
                v20 = v60;
              }
            }

            v21 = &v20[24 * v61];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v61;
          }
        }
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v58, ", ");
      if (*v23)
      {
        v24 = *(v23 + 24);
        LODWORD(v55) = 2;
        v56 = a2.var0.var0 - 1;
        v25 = *(v23 + 32);
        v26 = &v55;
        if (v25 >= *(v23 + 36))
        {
          if (v24 <= &v55 && v24 + 24 * v25 > &v55)
          {
            v48 = &v55 - v24;
            v49 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, v23 + 40, v25 + 1, 24);
            v23 = v49;
            v24 = *(v49 + 24);
            v26 = &v48[v24];
          }

          else
          {
            v46 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, v23 + 40, v25 + 1, 24);
            v23 = v46;
            v24 = *(v46 + 24);
            v26 = &v55;
          }
        }

        v27 = v24 + 24 * *(v23 + 32);
        v28 = *v26;
        *(v27 + 16) = v26[2];
        *v27 = v28;
        ++*(v23 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "].");
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
      }

      if (v69 != 1)
      {
        goto LABEL_56;
      }

      if (v68 != &v69)
      {
        free(v68);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v67;
        v31 = __p;
        if (v67 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v67 = v29;
        operator delete(v31);
      }

      v32 = v64;
      if (!v64)
      {
LABEL_54:
        if (v60 != v63)
        {
          free(v60);
        }

LABEL_56:
        v38 = 0;
        v37 = 0;
        return v37 | v38;
      }

      v33 = v65;
      v34 = v64;
      if (v65 == v64)
      {
LABEL_53:
        v65 = v32;
        operator delete(v34);
        goto LABEL_54;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          operator delete[](v35);
        }
      }

      while (v33 != v32);
    }

    else
    {
      v52[0] = -a2.var0.var0;
      v55 = a2.var0.var0 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_56;
      }

      mlir::emitError(this, a2, &v58);
      if (v58)
      {
        mlir::Diagnostic::append<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(&v59, "invalid axis ", &v54, " is outside of the range [", v52, ", ", &v55, "]");
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v58);
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
      }

      if (v69 != 1)
      {
        goto LABEL_56;
      }

      if (v68 != &v69)
      {
        free(v68);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v67;
        v41 = __p;
        if (v67 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v67 = v39;
        operator delete(v41);
      }

      v32 = v64;
      if (!v64)
      {
        goto LABEL_54;
      }

      v42 = v65;
      v34 = v64;
      if (v65 == v64)
      {
        goto LABEL_53;
      }

      do
      {
        v44 = *--v42;
        v43 = v44;
        *v42 = 0;
        if (v44)
        {
          operator delete[](v43);
        }
      }

      while (v42 != v32);
    }

    v34 = v64;
    goto LABEL_53;
  }

  v37 = ((a2.var0.var0 & (a1 >> 63)) + a1) & 0xFFFFFFFFFFFFFF00;
  v38 = ((LOBYTE(a2.var0.var0) & (a1 >> 63)) + a1);
  return v37 | v38;
}

BOOL mlir::getPositiveAxes(uint64_t *a1, uint64_t a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v63[6] = *MEMORY[0x1E69E9840];
  v61 = v63;
  v62 = 0x600000000;
  if (!a2)
  {
    goto LABEL_34;
  }

  v13 = 8 * a2;
  do
  {
    v17 = *a1;
    v18.var0.var0 = a3;
    PositiveAxis = mlir::tryGetPositiveAxis(*a1, v18, 0, 0, a7);
    if (v19)
    {
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 12))
      {
        v20 = PositiveAxis;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
        PositiveAxis = v20;
        v14 = *(a4 + 8);
      }

      v15 = a4;
    }

    else
    {
      v14 = v62;
      v15 = &v61;
      if (v62 >= HIDWORD(v62))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v62 + 1, 8);
        v14 = v62;
      }

      PositiveAxis = v17;
    }

    *&(*v15)[8 * v14] = PositiveAxis;
    ++*(v15 + 2);
    ++a1;
    v13 -= 8;
  }

  while (v13);
  if (v62)
  {
    if (a6)
    {
      v47 = "invalid axes: ";
      v49 = 259;
      mlir::emitError(a5, &v47, v50);
      v21 = v62;
      if (v62)
      {
        v22 = v61;
        if (v50[0])
        {
          v23 = *v61;
          LODWORD(v47) = 2;
          v48 = v23;
          v24 = &v47;
          v25 = v51;
          if (v52 >= v53)
          {
            if (v51 <= &v47 && v51 + 24 * v52 > &v47)
            {
              v46 = &v47 - v51;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
              v25 = v51;
              v24 = (v51 + v46);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
              v24 = &v47;
              v25 = v51;
            }
          }

          v26 = &v25[24 * v52];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v52;
        }

        if (v21 != 1)
        {
          v37 = (v22 + 8);
          v38 = 8 * v21 - 8;
          do
          {
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, ", ");
            if (v50[0])
            {
              v42 = *v37;
              LODWORD(v47) = 2;
              v48 = v42;
              v43 = v51;
              if (v52 < v53)
              {
                v39 = &v47;
              }

              else if (v51 <= &v47 && v51 + 24 * v52 > &v47)
              {
                v44 = &v47 - v51;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                v43 = v51;
                v39 = (v51 + v44);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                v39 = &v47;
                v43 = v51;
              }

              v40 = &v43[24 * v52];
              v41 = *v39;
              *(v40 + 2) = v39[2];
              *v40 = v41;
              ++v52;
            }

            ++v37;
            v38 -= 8;
          }

          while (v38);
        }
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
      if (v50[0])
      {
        mlir::InFlightDiagnostic::report(v50);
      }

      if (v60 == 1)
      {
        if (v59 != &v60)
        {
          free(v59);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v58;
          v31 = __p;
          if (v58 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v58 = v29;
          operator delete(v31);
        }

        v32 = v55;
        if (v55)
        {
          v33 = v56;
          v34 = v55;
          if (v56 != v55)
          {
            do
            {
              v36 = *--v33;
              v35 = v36;
              *v33 = 0;
              if (v36)
              {
                operator delete[](v35);
              }
            }

            while (v33 != v32);
            v34 = v55;
          }

          v56 = v32;
          operator delete(v34);
        }

        if (v51 != v54)
        {
          free(v51);
        }
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
LABEL_34:
    v28 = 1;
  }

  if (v61 != v63)
  {
    free(v61);
  }

  return v28;
}

BOOL mlir::getPositiveAxes(uint64_t a1, uint64_t a2, AttributeStorage *a3, uint64_t a4, mlir *a5, AttributeStorage *a6, uint64_t a7)
{
  v20[6] = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v16);
  *v19 = v12;
  if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ArgOperands = v20;
    *v19 = 0x600000000;
    mlir::getIntValues<long long>(v16, v17, &ArgOperands, 1);
    result = mlir::getPositiveAxes(ArgOperands, v19[0], a3, a4, a5, a6, a7);
    if (ArgOperands != v20)
    {
      v15 = result;
      free(ArgOperands);
      return v15;
    }
  }

  else
  {
    v13.var0.var0 = a6;
    return mlir::emitOptionalError<char const(&)[66]>(a5, v13, "attribute is not integer type");
  }

  return result;
}

BOOL mlir::getPositiveAxes(uint64_t a1, AttributeStorage *a2, uint64_t a3, mlir *a4, AttributeStorage *a5, uint64_t a6)
{
  v15 = 0;
  v16 = 0;
  v14 = &v15;
  v17 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v14, DefiningOp) & 1) != 0)
  {
    return mlir::getPositiveAxes(v15, v16, a2, a3, a4, a5, a6);
  }

  v13.var0.var0 = a5;
  return mlir::emitOptionalError<char const(&)[66]>(a4, v13, "axes is not a constant");
}

BOOL mlir::getPositivePromotedAxes(uint64_t a1, uint64_t a2, AttributeStorage *a3, uint64_t a4, mlir *a5, AttributeStorage *a6)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = a2;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v20);
  *v23 = v10;
  if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ArgOperands = v24;
    *v23 = 0x600000000;
    mlir::getIntValues<long long>(v20, v21, &ArgOperands, 1);
    if (mlir::getPositiveAxes(ArgOperands, v23[0], a3, a4, a5, a6, 0))
    {
      v13 = *(a4 + 8);
      if (v13)
      {
        v14 = *a4;
        v15 = 8 * v13;
        do
        {
          v16 = *v14;
          if (*v14 == 2)
          {
            v17 = 3;
          }

          else
          {
            v17 = *v14;
          }

          if (v16)
          {
            v18 = 3;
          }

          else
          {
            v18 = 1;
          }

          if (a3 == 2)
          {
            v16 = v18;
          }

          if (a3 == 3)
          {
            v16 = v17;
          }

          if (a3 < 2)
          {
            v16 = 3;
          }

          *v14++ = v16;
          v15 -= 8;
        }

        while (v15);
      }

      result = 1;
    }

    else
    {
      result = 0;
    }

    if (ArgOperands != v24)
    {
      v19 = result;
      free(ArgOperands);
      return v19;
    }
  }

  else
  {
    v11.var0.var0 = a6;
    return mlir::emitOptionalError<char const(&)[66]>(a5, v11, "attribute is not integer type");
  }

  return result;
}

uint64_t mlir::getPositivePromotedAxes(uint64_t *a1, uint64_t a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!mlir::getPositiveAxes(a1, a2, a3, a4, a5, a6, 0))
  {
    return 0;
  }

  v8 = *(a4 + 8);
  if (v8)
  {
    v9 = *a4;
    v10 = 8 * v8;
    do
    {
      v11 = *v9;
      if (*v9 == 2)
      {
        v12 = 3;
      }

      else
      {
        v12 = *v9;
      }

      if (v11)
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      if (a3 == 2)
      {
        v11 = v13;
      }

      if (a3 == 3)
      {
        v11 = v12;
      }

      if (a3 < 2)
      {
        v11 = 3;
      }

      *v9++ = v11;
      v10 -= 8;
    }

    while (v10);
  }

  return 1;
}

BOOL mlir::getPositivePromotedAxes(void *a1, AttributeStorage *a2, uint64_t a3, mlir *a4, AttributeStorage *a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a1 + 8);
    a1 = v9;
  }

  else
  {
    v10 = 0;
  }

  return mlir::getPositivePromotedAxes(a1, v10, a2, a3, a4, a5);
}

unint64_t mlir::getSortedUniquePromotedPositiveAxesAttr(void *a1, AttributeStorage *a2, mlir *a3, AttributeStorage *a4)
{
  v60[6] = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = 0;
  v55 = &v48;
  v58 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v58);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, DefiningOp) & 1) == 0)
  {
    v19.var0.var0 = a4;
    mlir::emitOptionalError<char const(&)[66]>(a3, v19, "axes is not a constant");
    return 0;
  }

  v58 = v60;
  *v59 = 0x600000000;
  v9 = 0;
  v10 = 0;
  if (mlir::getPositiveAxes(v48, v49, a2, &v58, a3, a4, 0))
  {
    v55 = v57;
    v56 = 0x600000000;
    v9 = 0;
    v10 = 0;
    if (!mlir::getPositiveAxes(v58, v59[0], a2, &v55, a3, a4, 0))
    {
LABEL_48:
      if (v55 != v57)
      {
        free(v55);
      }

      goto LABEL_50;
    }

    std::__sort<std::__less<long long,long long> &,long long *>();
    v11 = v55;
    v12 = v55 + 8 * v56;
    if (v56)
    {
      v13 = 8 * v56 - 16;
      v14 = v55;
      while (1)
      {
        v15 = v14;
        v14 += 8;
        if (v14 == v12)
        {
          break;
        }

        v16 = v13;
        v17 = *v15;
        v13 -= 8;
        if (*v15 == v15[1])
        {
          if (v15 + 2 != v12)
          {
            v18 = 8;
            do
            {
              v21 = v17;
              v17 = *&v14[v18];
              if (v21 != v17)
              {
                v15[1] = v17;
                ++v15;
              }

              v18 += 8;
              v16 -= 8;
            }

            while (v16);
          }

          v12 = (v15 + 1);
          break;
        }
      }
    }

    v22 = (v12 - v11) >> 3;
    LODWORD(v56) = v22;
    if (v22)
    {
      v23 = 8 * v22;
      v24 = v11;
      do
      {
        v25 = *v24;
        if (*v24 == 2)
        {
          v26 = 3;
        }

        else
        {
          v26 = *v24;
        }

        if (v25)
        {
          v27 = 3;
        }

        else
        {
          v27 = 1;
        }

        if (a2 == 2)
        {
          v25 = v27;
        }

        if (a2 == 3)
        {
          v25 = v26;
        }

        if (a2 < 2)
        {
          v25 = 3;
        }

        *v24++ = v25;
        v23 -= 8;
      }

      while (v23);
    }

    v52 = v54;
    v53 = 0x600000000;
    if (v22 < 7uLL)
    {
      v28 = 0;
      if (!v22)
      {
        goto LABEL_42;
      }

      v29 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v22, 8);
      v28 = v53;
      v29 = v53;
    }

    v30 = v52 + 8 * v29;
    v31 = (v22 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v31 >= 7)
    {
      v33 = v52 + 8 * v29;
      v32 = v11;
      if ((v33 - v11) >= 0x20)
      {
        v34 = v31 + 1;
        v35 = 8 * (v34 & 0x3FFFFFFFFFFFFFFCLL);
        v30 = (v30 + v35);
        v32 = &v11[v35];
        v36 = (v11 + 16);
        v37 = v33 + 16;
        v38 = v34 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v39 = *v36;
          *(v37 - 1) = *(v36 - 1);
          *v37 = v39;
          v36 += 2;
          v37 += 2;
          v38 -= 4;
        }

        while (v38);
        if (v34 == (v34 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_42:
          LODWORD(v53) = v28 + v22;
          v51 = v56;
          v50 = a1[1] & 0xFFFFFFFFFFFFFFF8;
          Context = mlir::Attribute::getContext(&v50);
          v42 = mlir::IntegerType::get(Context, 64, 2u);
          v43 = mlir::RankedTensorType::get(&v51, 1, v42, 0);
          if (v43)
          {
            v44 = v43;
            v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
            v43 = v44;
          }

          else
          {
            v45 = 0;
          }

          v46 = mlir::DenseElementsAttr::getFromRawBuffer(v43, v45, v52, 8 * v53, 8, 1, 0);
          v47 = v46;
          v10 = v46 & 0xFFFFFFFFFFFFFF00;
          if (v52 != v54)
          {
            free(v52);
          }

          v9 = v47;
          goto LABEL_48;
        }
      }
    }

    else
    {
      v32 = v11;
    }

    do
    {
      v40 = *v32;
      v32 += 8;
      *v30++ = v40;
    }

    while (v32 != &v11[8 * v22]);
    goto LABEL_42;
  }

LABEL_50:
  if (v58 != v60)
  {
    free(v58);
  }

  return v10 | v9;
}

uint64_t mlir::getMostDefinedTypeForCPU(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = a1;
  v18 = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = (*(mlir::ValueRange::dereference_iterator(&v17, v3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    *&v15 = v4;
    *(&v15 + 1) = v5;
    if (!v16 || (ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15), NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v7), v9 = mlir::CallableOpInterface::getArgAttrsAttr(&v16), NumElements > mlir::ShapedType::getNumElements(v9, v10)) || (mlir::CallableOpInterface::getArgAttrsAttr(&v15), v12 = v11, mlir::CallableOpInterface::getArgAttrsAttr(&v16), v12 > v13))
    {
      v16 = v15;
    }

    v3 = v18 + 1;
    v18 = v3;
  }

  while (v3 != a2);
  return v16;
}

void mlir::getRankPromotionShapeForANE(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t **a4@<X8>)
{
  v52[0] = a1;
  v52[1] = a2;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v52);
  v7 = mlir::CallableOpInterface::getArgAttrsAttr(v52);
  v9 = v7 + 8 * v8;
  *a4 = (a4 + 2);
  a4[1] = 0x500000000;
  v10 = (v9 - ArgAttrsAttr) >> 3;
  if (v10 < 6)
  {
    v11 = 0;
    if (v9 == ArgAttrsAttr)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), v10, 8);
  v11 = *(a4 + 2);
  if (v9 != ArgAttrsAttr)
  {
LABEL_5:
    v7 = memcpy(&(*a4)[v11], ArgAttrsAttr, v9 - ArgAttrsAttr);
    v11 = *(a4 + 2);
  }

LABEL_6:
  *(a4 + 2) = v11 + ((v9 - ArgAttrsAttr) >> 3);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v7);
  Context = mlir::Attribute::getContext(v52);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, Context);
  if (Properties)
  {
    v15 = *Properties;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 2);
  if (a3)
  {
    if (v16 <= 1)
    {
      if (!v16)
      {
        *(a4 + 2) = 0;
        if (*(a4 + 3) > 4u)
        {
          v43 = 0;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 5uLL, 8);
          v43 = *(a4 + 2);
        }

        v50 = &(*a4)[v43];
        *v50 = xmmword_1E0984500;
        *(v50 + 16) = unk_1E0984510;
        *(v50 + 32) = 1;
        goto LABEL_72;
      }

      if (v16 != 1)
      {
        return;
      }

      v30 = *a4;
      v20 = **a4;
      *(a4 + 2) = 0;
      if (*(a4 + 3) > 4u)
      {
        v31 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 5uLL, 8);
        v31 = *(a4 + 2);
        v30 = *a4;
      }

      v48 = &v30[v31];
      *v48 = 1;
      *(v48 + 1) = vdupq_n_s64(1uLL);
    }

    else
    {
      switch(v16)
      {
        case 2:
          v36 = *a4;
          v37 = **a4;
          v20 = (*a4)[1];
          *(a4 + 2) = 0;
          if (*(a4 + 3) > 4u)
          {
            v38 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 5uLL, 8);
            v38 = *(a4 + 2);
            v36 = *a4;
          }

          v48 = &v36[v38];
          *v48 = 1;
          break;
        case 3:
          v39 = *a4;
          v40 = **a4;
          v37 = (*a4)[1];
          v20 = (*a4)[2];
          *(a4 + 2) = 0;
          v41 = *(a4 + 3);
          if (v15)
          {
            if (v41 > 4)
            {
              v42 = 0;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 5uLL, 8);
              v42 = *(a4 + 2);
              v39 = *a4;
            }

            v48 = &v39[v42];
            *v48 = 1;
            v48[1] = 1;
            v48[2] = v40;
            v48[3] = v37;
            goto LABEL_71;
          }

          if (v41 > 4)
          {
            v49 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 5uLL, 8);
            v49 = *(a4 + 2);
            v39 = *a4;
          }

          v48 = &v39[v49];
          *v48 = v40;
          break;
        case 4:
          v17 = *a4;
          v18 = **a4;
          v19 = *(*a4 + 1);
          v20 = (*a4)[3];
          *(a4 + 2) = 0;
          if (*(a4 + 3) > 4u)
          {
            v21 = 0;
          }

          else
          {
            v51 = v19;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 5uLL, 8);
            v19 = v51;
            v21 = *(a4 + 2);
            v17 = *a4;
          }

          v48 = &v17[v21];
          *v48 = v18;
          v48[1] = 1;
          *(v48 + 1) = v19;
          goto LABEL_71;
        default:
          return;
      }

      v48[1] = 1;
      v48[2] = v37;
    }

    v48[3] = 1;
LABEL_71:
    v48[4] = v20;
LABEL_72:
    v47 = 5;
    goto LABEL_73;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      *(a4 + 2) = 0;
      if (*(a4 + 3) > 3u)
      {
        v32 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 4uLL, 8);
        v32 = *(a4 + 2);
      }

      v46 = &(*a4)[v32];
      *v46 = xmmword_1E09844E0;
      *(v46 + 1) = unk_1E09844F0;
      v47 = 4;
      goto LABEL_73;
    }

    if (v16 != 1)
    {
      return;
    }

    v22 = *a4;
    v23 = **a4;
    *(a4 + 2) = 0;
    if (*(a4 + 3) > 3u)
    {
      v24 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 4uLL, 8);
      v24 = *(a4 + 2);
      v22 = *a4;
    }

    v44 = &v22[v24];
    *v44 = 1;
    *(v44 + 1) = vdupq_n_s64(1uLL);
    goto LABEL_64;
  }

  if (v16 == 2)
  {
    v33 = *a4;
    v34 = **a4;
    v23 = (*a4)[1];
    *(a4 + 2) = 0;
    if (*(a4 + 3) > 3u)
    {
      v35 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 4uLL, 8);
      v35 = *(a4 + 2);
      v33 = *a4;
    }

    v44 = &v33[v35];
    *v44 = 1;
    v44[1] = v34;
  }

  else
  {
    if (v16 != 3)
    {
      return;
    }

    v25 = *a4;
    v27 = **a4;
    v26 = (*a4)[1];
    v23 = (*a4)[2];
    *(a4 + 2) = 0;
    v28 = *(a4 + 3);
    if (v15)
    {
      if (v28 > 3)
      {
        v29 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 4uLL, 8);
        v29 = *(a4 + 2);
        v25 = *a4;
      }

      v44 = &v25[v29];
      *v44 = 1;
      v44[1] = v27;
      v44[2] = v26;
      goto LABEL_64;
    }

    if (v28 > 3)
    {
      v45 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 2), 4uLL, 8);
      v45 = *(a4 + 2);
      v25 = *a4;
    }

    v44 = &v25[v45];
    *v44 = v27;
    v44[1] = v26;
  }

  v44[2] = 1;
LABEL_64:
  v44[3] = v23;
  v47 = 4;
LABEL_73:
  *(a4 + 2) += v47;
}

void *mlir::getRankPromotionTypeForANE(uint64_t a1, uint64_t a2)
{
  v95[5] = *MEMORY[0x1E69E9840];
  v83 = a1;
  v84 = a2;
  if (!mlir::CallOpInterface::getArgOperands(&v83))
  {
    return v83;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v83);
  if (v3)
  {
    v4 = 8 * v3;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    return v83;
  }

LABEL_6:
  if ((mlir::CallOpInterface::getArgOperands(&v83) & 1) == 0)
  {
    return v83;
  }

  mlir::getRankPromotionShapeForANE(v83, v84, 0, &v93);
  v5 = mlir::CallableOpInterface::getArgAttrsAttr(&v83);
  v6 = v94;
  if (v7 == v94 && !memcmp(v5, v93, 8 * v94))
  {
    result = v83;
  }

  else
  {
    v8 = v83;
    if (*(*v83 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v8 = 0;
    }

    v82 = v8;
    if (v8)
    {
      *&v91 = mlir::DenseElementsAttr::getRawStringData(&v82);
      *(&v91 + 1) = v9;
      if (mlir::ElementsAttr::isSplat(&v91))
      {
        v10 = v93;
        v11 = v94;
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v82);
        MemorySpace = mlir::MemRefType::getMemorySpace(&v82);
        result = mlir::MemRefType::get(v10, v11, RHS, 0, MemorySpace);
        if (result)
        {
          v15 = result;
          mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*result + 8);
          result = v15;
        }
      }

      else
      {
        mlir::ArrayAttr::getValue(&v82);
        v19 = v18;
        *&v91 = mlir::DenseElementsAttr::getRawStringData(&v82);
        *(&v91 + 1) = v20;
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v91);
        *&v91 = v92;
        *(&v91 + 1) = 0x300000000;
        v88 = &v90;
        v89 = 0x100000000;
        Results = mlir::AffineMap::getResults(&CallableForCallee);
        v22 = *Results;
        if (*Results && (v85 = *Results, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v85, v23);
        v80 = v85;
        LHS = mlir::AffineBinaryOpExpr::getLHS(&v80);
        if (LHS && (v25 = LHS, v85 = LHS, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v85, v26);
        v27 = v85;
        v28 = mlir::AffineBinaryOpExpr::getRHS(&v80);
        if (v28 && (v29 = v28, v85 = v28, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v85, v30);
        v79 = v85;
        if (v85 && mlir::arith::FastMathFlagsAttr::getValue(&v79) == 2)
        {
          v31 = mlir::AffineBinaryOpExpr::getRHS(&v79);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v88, v31);
          v80 = v27;
        }

        if (v19 - 1 >= 1)
        {
          do
          {
            v32 = mlir::AffineBinaryOpExpr::getLHS(&v80);
            if (v32 && (v33 = v32, v85 = v32, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v85, v34);
            v35 = v85;
            v36 = mlir::AffineBinaryOpExpr::getRHS(&v80);
            if (v36 && (v37 = v36, v85 = v36, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v85, v38);
            v79 = v85;
            if (v85 && mlir::arith::FastMathFlagsAttr::getValue(&v79) == 1)
            {
              AffineConstantExpr = mlir::AffineBinaryOpExpr::getRHS(&v79);
            }

            else
            {
              Context = mlir::Attribute::getContext(&v82);
              AffineConstantExpr = mlir::getAffineConstantExpr(1, Context, v41);
            }

            v42 = DWORD2(v91);
            if (DWORD2(v91) >= HIDWORD(v91))
            {
              v43 = AffineConstantExpr;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v92, DWORD2(v91) + 1, 8);
              AffineConstantExpr = v43;
              v42 = DWORD2(v91);
            }

            *(v91 + 8 * v42) = AffineConstantExpr;
            ++DWORD2(v91);
            v80 = v35;
            --v19;
          }

          while (v19 > 1);
        }

        v44 = mlir::AffineBinaryOpExpr::getRHS(&v80);
        v45 = DWORD2(v91);
        if (DWORD2(v91) >= HIDWORD(v91))
        {
          v74 = v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v92, DWORD2(v91) + 1, 8);
          v44 = v74;
          v45 = DWORD2(v91);
        }

        *(v91 + 8 * v45) = v44;
        ++DWORD2(v91);
        if (v89 == 1)
        {
          v85 = llvm::dyn_cast_if_present<mlir::AffineConstantExpr,mlir::AffineExpr>(v88);
          v46 = mlir::AffineBinaryOpExpr::getLHS(&v85);
        }

        else
        {
          v46 = 1;
        }

        v85 = &v87;
        v86 = 0x100000000;
        v47 = mlir::Attribute::getContext(&v82);
        AffineDimExpr = mlir::getAffineDimExpr(0, v47, v48);
        v77 = mlir::AffineExpr::operator*(&AffineDimExpr, *(v91 + 16));
        Value = mlir::ArrayAttr::getValue(&v82);
        v78 = mlir::AffineExpr::operator*(&v77, *(Value + 8) / v46);
        v50 = mlir::Attribute::getContext(&v82);
        v77 = mlir::getAffineDimExpr(1, v50, v51);
        if (v89 == 1)
        {
          v77 = mlir::AffineExpr::floorDiv(&v77, *v88);
        }

        v52 = mlir::AffineExpr::operator*(&v77, *(v91 + 16));
        v78 = mlir::AffineExpr::operator+(&v78, v52);
        v53 = mlir::Attribute::getContext(&v82);
        AffineDimExpr = mlir::getAffineDimExpr(2, v53, v54);
        v55 = mlir::AffineExpr::operator*(&AffineDimExpr, *(v91 + 8));
        v78 = mlir::AffineExpr::operator+(&v78, v55);
        v56 = mlir::Attribute::getContext(&v82);
        AffineDimExpr = mlir::getAffineDimExpr(3, v56, v57);
        v58 = mlir::AffineExpr::operator*(&AffineDimExpr, *v91);
        v59 = mlir::AffineExpr::operator+(&v78, v58);
        v78 = v59;
        if (v89 == 1)
        {
          v60 = mlir::Attribute::getContext(&v82);
          AffineDimExpr = mlir::getAffineDimExpr(1, v60, v61);
          v62 = mlir::AffineExpr::operator%(&AffineDimExpr, *v88);
          v59 = mlir::AffineExpr::operator+(&v78, v62);
          v78 = v59;
        }

        v63 = v86;
        if (v86 >= HIDWORD(v86))
        {
          v75 = v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, &v87, v86 + 1, 8);
          v59 = v75;
          v63 = v86;
        }

        *(v85 + v63) = v59;
        LODWORD(v86) = v86 + 1;
        v64 = v86;
        v65 = v85;
        v66 = mlir::Attribute::getContext(&v82);
        v67 = mlir::AffineMap::get(4, 0, v65, v64, v66);
        v68 = mlir::ArrayAttr::getValue(&v82);
        v70 = v69;
        v71 = mlir::AffineBinaryOpExpr::getRHS(&v82);
        result = mlir::MemRefType::get(v68, v70, v71, v67, 0);
        v72 = result;
        if (result)
        {
          mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*result + 8);
          result = v72;
        }

        if (v85 != &v87)
        {
          free(v85);
          result = v72;
        }

        if (v88 != &v90)
        {
          free(v88);
          result = v72;
        }

        if (v91 != v92)
        {
          free(v91);
          result = v72;
        }
      }
    }

    else
    {
      v16 = v93;
      isSplat = mlir::ElementsAttr::isSplat(&v83);
      *&v91 = v16;
      *(&v91 + 1) = v6;
      v92[0] = 1;
      result = mlir::ShapedType::cloneWith(&v83, &v91, isSplat);
    }
  }

  if (v93 != v95)
  {
    v73 = result;
    free(v93);
    return v73;
  }

  return result;
}

unint64_t mlir::calculateANEStridesFromAffineMap(uint64_t a1, uint64_t a2)
{
  v63[4] = *MEMORY[0x1E69E9840];
  v56 = a1;
  *(a2 + 8) = 0;
  mlir::ArrayAttr::getValue(&v56);
  v4 = *(a2 + 8);
  if (v3 != v4)
  {
    if (v3 >= v4)
    {
      if (v3 > *(a2 + 12))
      {
        v5 = v3;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v3, 8);
        v3 = v5;
        v4 = *(a2 + 8);
      }

      if (v3 != v4)
      {
        v6 = v3;
        bzero((*a2 + 8 * v4), 8 * (v3 - v4));
        LODWORD(v3) = v6;
      }
    }

    *(a2 + 8) = v3;
    v4 = v3;
  }

  *(*a2 + 8 * v4 - 8) = 1;
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v56);
  v62 = v7;
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&RawStringData);
  v8 = mlir::AffineMap::getResult(&CallableForCallee, 0);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  RawStringData = v63;
  v62 = 0x400000000;
  v57 = v8;
  CallableForCallee = v60;
  v59 = 0x200000000;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v57) >= 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v57, v10);
  v55 = v57;
  if (!v57)
  {
LABEL_36:
    v23 = 0;
    goto LABEL_38;
  }

  while (!mlir::arith::FastMathFlagsAttr::getValue(&v55))
  {
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v55);
    v57 = RHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v57) >= 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = RHS;
    }

    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v57, v14);
    v54 = v57;
    if (!v57)
    {
      v18 = mlir::AffineBinaryOpExpr::getRHS(&v55);
      v57 = v18;
      if (mlir::arith::FastMathFlagsAttr::getValue(&v57) == 6)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v57, v19);
      v20 = v57;
      if (!v57)
      {
        goto LABEL_34;
      }

      v21 = v59;
      if (v59 >= HIDWORD(v59))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&CallableForCallee, v60, v59 + 1, 8);
        v21 = v59;
      }

      *(CallableForCallee + v21) = v20;
      v17 = &v59;
      goto LABEL_33;
    }

    if (mlir::arith::FastMathFlagsAttr::getValue(&v54) == 1)
    {
      v15 = v54;
      v16 = v62;
      if (v62 >= HIDWORD(v62))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&RawStringData, v63, v62 + 1, 8);
        v16 = v62;
      }

      *(RawStringData + v16) = v15;
      v17 = &v62;
LABEL_33:
      ++*v17;
    }

LABEL_34:
    LHS = mlir::AffineBinaryOpExpr::getLHS(&v55);
    v57 = LHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v57) < 5)
    {
      v12 = LHS;
    }

    else
    {
      v12 = 0;
    }

    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v57, v12);
    v55 = v57;
    if (!v57)
    {
      goto LABEL_36;
    }
  }

  v23 = v55;
LABEL_38:
  v24 = v62;
  if (v62 >= HIDWORD(v62))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&RawStringData, v63, v62 + 1, 8);
    v24 = v62;
  }

  *(RawStringData + v24) = v23;
  LODWORD(v62) = v62 + 1;
  v57 = mlir::AffineBinaryOpExpr::getRHS(&v56);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v57);
  mlir::ArrayAttr::getValue(&v56);
  if (v26)
  {
    v27 = IntOrFloatBitWidth;
    v28 = v26 - 1;
    v29 = IntOrFloatBitWidth >> 3;
    if (v62)
    {
      v30 = RawStringData;
      v31 = 8 * v62;
      while (1)
      {
        v32 = mlir::AffineBinaryOpExpr::getLHS(v30);
        v57 = v32;
        if (mlir::arith::FastMathFlagsAttr::getValue(&v57) == 6)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v57, v33);
        v54 = v57;
        if (!v57)
        {
          v57 = v32;
          if (mlir::arith::FastMathFlagsAttr::getValue(&v57) >= 5)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v57, v34);
          v53 = v57;
          v35 = mlir::AffineBinaryOpExpr::getLHS(&v53);
          v57 = v35;
          if (mlir::arith::FastMathFlagsAttr::getValue(&v57) == 6)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }

          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v57, v36);
          v54 = v57;
        }

        v37 = mlir::AffineBinaryOpExpr::getRHS(v30);
        v57 = v37;
        v38 = mlir::arith::FastMathFlagsAttr::getValue(&v57) == 5 ? v37 : 0;
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v57, v38);
        v53 = v57;
        if (!v54 || !v57)
        {
          break;
        }

        v39 = mlir::AffineBinaryOpExpr::getLHS(&v53);
        *(*a2 + 8 * mlir::AffineDimExpr::getPosition(&v54)) = v39;
        if (v28 != mlir::AffineDimExpr::getPosition(&v54))
        {
          Position = mlir::AffineDimExpr::getPosition(&v54);
          v41 = *(*a2 + 8 * Position);
          v42 = v41 * v29;
          v43 = v41 >> 1;
          if (v27 != 4)
          {
            v43 = v42;
          }

          *(*a2 + 8 * Position) = v43;
        }

        v30 = (v30 + 8);
        v31 -= 8;
        if (!v31)
        {
          goto LABEL_64;
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_64:
      if (v59)
      {
        v44 = CallableForCallee;
        v45 = 8 * v59;
        do
        {
          *(*a2 + 8 * mlir::AffineDimExpr::getPosition(v44)) = 1;
          if (v28 != mlir::AffineDimExpr::getPosition(v44))
          {
            v46 = mlir::AffineDimExpr::getPosition(v44);
            v47 = *(*a2 + 8 * v46);
            v48 = v47 * v29;
            v49 = v47 >> 1;
            if (v27 != 4)
            {
              v49 = v48;
            }

            *(*a2 + 8 * v46) = v49;
          }

          v44 = (v44 + 8);
          v45 -= 8;
        }

        while (v45);
      }

      v11 = 1;
    }

    if (CallableForCallee != v60)
    {
      free(CallableForCallee);
    }

    if (RawStringData != v63)
    {
      free(RawStringData);
    }

    return v11;
  }

  else
  {
    v51 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::getIndexFromDim(v51, v52);
  }
}

unint64_t mlir::anec::getIndexFromDim(int a1, unint64_t a2)
{
  if (a1 <= 1)
  {
    v2 = a2 - 3;
    v6 = (a2 - 3) & 0xFFFFFFFFFFFFFF00;
    if (a2 < 3)
    {
      v2 = 0;
      v6 = 0;
    }

    if (a1 == 1)
    {
      v7 = v6;
    }

    else
    {
      v2 = 0;
      v7 = 0;
    }

    if (a1)
    {
      v3 = v7;
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0;
    v2 = a2 > 4;
  }

  else
  {
    v2 = a2 - 2;
    v3 = (a2 - 2) & 0xFFFFFFFFFFFFFF00;
    if (a2 < 2)
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = a2 - 1;
    v5 = (a2 - 1) & 0xFFFFFFFFFFFFFF00;
    if (!a2)
    {
      v4 = 0;
      v5 = 0;
    }

    if (a1 != 4)
    {
      v4 = 0;
      v5 = 0;
    }

    if (a1 != 3)
    {
      v2 = v4;
      v3 = v5;
    }
  }

  return v3 | v2;
}

uint64_t mlir::calculateLayoutPermutationForANE(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v111[6] = *MEMORY[0x1E69E9840];
  if (a3 - 6 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = *(a1 + 8);
    if (v4 == *(a2 + 8))
    {
      v108 = v111;
      v110 = 6;
      v7 = 8 * a3;
      memset(v111, 255, 8 * a3);
      v109 = a3;
      v104 = v107;
      v106 = 6;
      memset(v107, 255, v7);
      v105 = a3;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v94[0] = 0;
      if (v4)
      {
        v10 = a1;
        v11 = a2;
        v12 = 0;
        v13 = 0;
        while (1)
        {
          v19 = *(*v10 + 4 * v13);
          if (v19 <= 1)
          {
            break;
          }

          v20 = a3 - 1;
          if (v19 == 4)
          {
            goto LABEL_20;
          }

          if (v19 == 3)
          {
            v20 = a3 - 2;
LABEL_20:
            v19 = v20;
            goto LABEL_21;
          }

          if (v19 != 2 || a3 <= 4)
          {
LABEL_167:
            std::__throw_bad_optional_access[abi:nn200100]();
          }

          v19 = 1;
LABEL_21:
          v108[v19] = v13;
          v22 = *(*v11 + 4 * v94[0]);
          if (v22 <= 1)
          {
            if (!v22)
            {
              goto LABEL_35;
            }

            v23 = a3 - 3;
            if (v22 != 1)
            {
              goto LABEL_167;
            }

            goto LABEL_34;
          }

          v23 = a3 - 1;
          if (v22 == 4)
          {
            goto LABEL_34;
          }

          if (v22 == 3)
          {
            v23 = a3 - 2;
LABEL_34:
            v22 = v23;
            goto LABEL_35;
          }

          if (v22 != 2 || a3 <= 4)
          {
            goto LABEL_167;
          }

          v22 = 1;
LABEL_35:
          *&v104[8 * v22] = v94[0];
          v25 = v92;
          if (!v92)
          {
            v17 = 0;
            goto LABEL_37;
          }

          v14 = v94[0];
          v15 = v92 - 1;
          v16 = (v92 - 1) & (((0xBF58476D1CE4E5B9 * v94[0]) >> 31) ^ (484763065 * LODWORD(v94[0])));
          v17 = (v90 + 16 * v16);
          v18 = *v17;
          if (v94[0] != *v17)
          {
            v26 = 0;
            v27 = 1;
            while (v18 != -1)
            {
              if (v26)
              {
                v28 = 0;
              }

              else
              {
                v28 = (v18 + 2) == 0;
              }

              if (v28)
              {
                v26 = v17;
              }

              v29 = v16 + v27++;
              v16 = v29 & v15;
              v17 = (v90 + 16 * (v29 & v15));
              v18 = *v17;
              if (v94[0] == *v17)
              {
                goto LABEL_6;
              }
            }

            if (v26)
            {
              v17 = v26;
            }

LABEL_37:
            v99[0] = v17;
            if (4 * v12 + 4 >= 3 * v92)
            {
              v25 = 2 * v92;
            }

            else if (v92 + ~v12 - HIDWORD(v91) > v92 >> 3)
            {
LABEL_39:
              LODWORD(v91) = ++v12;
              if (*v17 != -1)
              {
                --HIDWORD(v91);
              }

              v14 = v94[0];
              *v17 = v94[0];
              *(v17 + 1) = 0;
              v4 = *(v10 + 8);
              goto LABEL_6;
            }

            llvm::DenseMap<unsigned long,unsigned long,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,unsigned long>>::grow(&v90, v25);
            llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(&v90, v94, v99);
            v12 = v91;
            v17 = v99[0];
            v11 = a2;
            v10 = a1;
            goto LABEL_39;
          }

LABEL_6:
          *(v17 + 1) = v22;
          v13 = v14 + 1;
          v94[0] = (v14 + 1);
          if (v14 + 1 >= v4)
          {
            goto LABEL_57;
          }
        }

        if (!v19)
        {
          goto LABEL_21;
        }

        v20 = a3 - 3;
        if (v19 != 1)
        {
          goto LABEL_167;
        }

        goto LABEL_20;
      }

LABEL_57:
      v31 = 0;
      v100 = 0;
      *v99 = 0u;
      __dst = &v103;
      v102 = 0x600000000;
      v95 = 0;
      *v94 = 0u;
      v96 = v98;
      v97 = 0x600000000;
      do
      {
        if (v108[v31] == -1)
        {
          v93 = v31;
          llvm::SetVector<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseSet<unsigned long long,llvm::DenseMapInfo<unsigned long long,void>>,5u>::insert(v99, &v93);
        }

        if (*&v104[8 * v31] == -1)
        {
          v93 = v31;
          llvm::SetVector<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseSet<unsigned long long,llvm::DenseMapInfo<unsigned long long,void>>,5u>::insert(v94, &v93);
        }

        ++v31;
      }

      while (a3 != v31);
      *(a4 + 8) = 0;
      if (*(a4 + 12) >= a3)
      {
        v32 = 0;
        v33 = a3;
        if (!a3)
        {
LABEL_68:
          v34 = 0;
          *(a4 + 8) = a3;
          while (1)
          {
            v39 = v108[v34];
            if (v39 != -1)
            {
              v89 = v108[v34];
              v40 = v92;
              if (!v92)
              {
                v37 = 0;
                goto LABEL_75;
              }

              v35 = v92 - 1;
              v36 = (v92 - 1) & (((0xBF58476D1CE4E5B9 * v39) >> 31) ^ (484763065 * v39));
              v37 = v90 + 16 * v36;
              v38 = *v37;
              if (v39 == *v37)
              {
LABEL_70:
                *(*a4 + 8 * v34) = *(v37 + 1);
                goto LABEL_71;
              }

              v70 = 0;
              v71 = 1;
              while (v38 != -1)
              {
                if (v70)
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v38 == -2;
                }

                if (v72)
                {
                  v70 = v37;
                }

                v73 = v36 + v71++;
                v36 = v73 & v35;
                v37 = v90 + 16 * (v73 & v35);
                v38 = *v37;
                if (v39 == *v37)
                {
                  goto LABEL_70;
                }
              }

              if (v70)
              {
                v37 = v70;
              }

LABEL_75:
              v93 = v37;
              v41 = v91;
              if (4 * v91 + 4 >= 3 * v92)
              {
                v40 = 2 * v92;
              }

              else if (v92 + ~v91 - HIDWORD(v91) > v92 >> 3)
              {
LABEL_77:
                LODWORD(v91) = v41 + 1;
                if (*v37 != -1)
                {
                  --HIDWORD(v91);
                }

                *v37 = v89;
                *(v37 + 1) = 0;
                goto LABEL_70;
              }

              llvm::DenseMap<unsigned long,unsigned long,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,unsigned long>>::grow(&v90, v40);
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(&v90, &v89, &v93);
              v41 = v91;
              v37 = v93;
              goto LABEL_77;
            }

            v42 = v94[1];
            if (LODWORD(v94[1]))
            {
              v43 = v95;
              if (!v95)
              {
                goto LABEL_71;
              }

              v44 = ((v95 - 1) & (((0xBF58476D1CE4E5B9 * v34) >> 31) ^ (484763065 * v34)));
              v45 = *(v94[0] + v44);
              if (v34 != v45)
              {
                v46 = 1;
                while (v45 != -1)
                {
                  v47 = v44 + v46++;
                  v44 = (v47 & (v95 - 1));
                  v45 = *(v94[0] + v44);
                  if (v34 == v45)
                  {
                    goto LABEL_94;
                  }
                }

                goto LABEL_71;
              }
            }

            else
            {
              if (v97)
              {
                v48 = 8 * v97;
                v44 = v96;
                while (*v44 != v34)
                {
                  ++v44;
                  v48 -= 8;
                  if (!v48)
                  {
                    goto LABEL_71;
                  }
                }
              }

              else
              {
                v44 = v96;
              }

              v43 = v96 + 8 * v97;
            }

LABEL_94:
            if (v44 == v43)
            {
              goto LABEL_71;
            }

            *(*a4 + 8 * v34) = v34;
            v49 = v99[1];
            if (LODWORD(v99[1]))
            {
              if (!v100)
              {
                goto LABEL_115;
              }

              v50 = (v100 - 1) & (((0xBF58476D1CE4E5B9 * v34) >> 31) ^ (484763065 * v34));
              v51 = *(v99[0] + v50);
              if (v34 == v51)
              {
LABEL_98:
                *(v99[0] + v50) = -2;
                LODWORD(v99[1]) = v49 - 1;
                ++HIDWORD(v99[1]);
                v52 = __dst;
                v53 = v102;
                v54 = __dst + 8 * v102;
                if (v102)
                {
                  v55 = 8 * v102;
                  do
                  {
                    if (*v52 == v34)
                    {
                      goto LABEL_103;
                    }

                    v52 += 8;
                    v55 -= 8;
                  }

                  while (v55);
                  v52 = __dst + 8 * v102;
                }

LABEL_103:
                v56 = v52 + 8;
                v57 = v54 - (v52 + 8);
                if (v54 == v52 + 8)
                {
                  goto LABEL_114;
                }

LABEL_113:
                memmove(v52, v56, v57);
                v53 = v102;
                v42 = v94[1];
LABEL_114:
                LODWORD(v102) = v53 - 1;
                goto LABEL_115;
              }

              v74 = 1;
              while (v51 != -1)
              {
                v75 = v50 + v74++;
                v50 = v75 & (v100 - 1);
                v51 = *(v99[0] + v50);
                if (v34 == v51)
                {
                  goto LABEL_98;
                }
              }
            }

            else
            {
              v53 = v102;
              if (v102)
              {
                v58 = 8 * v102;
                v52 = __dst;
                while (*v52 != v34)
                {
                  v52 += 8;
                  v58 -= 8;
                  if (!v58)
                  {
                    goto LABEL_115;
                  }
                }
              }

              else
              {
                v52 = __dst;
              }

              v59 = __dst + 8 * v102;
              if (v52 != v59)
              {
                v56 = v52 + 8;
                v57 = v59 - (v52 + 8);
                if (v59 != v52 + 8)
                {
                  goto LABEL_113;
                }

                goto LABEL_114;
              }
            }

LABEL_115:
            if (v42)
            {
              if (v95)
              {
                v60 = (v95 - 1) & (((0xBF58476D1CE4E5B9 * v34) >> 31) ^ (484763065 * v34));
                v61 = *(v94[0] + v60);
                if (v34 == v61)
                {
LABEL_118:
                  *(v94[0] + v60) = -2;
                  LODWORD(v94[1]) = v42 - 1;
                  ++HIDWORD(v94[1]);
                  v62 = v96;
                  v63 = v97;
                  v64 = v96 + 8 * v97;
                  if (v97)
                  {
                    v65 = 8 * v97;
                    do
                    {
                      if (*v62 == v34)
                      {
                        goto LABEL_123;
                      }

                      v62 += 8;
                      v65 -= 8;
                    }

                    while (v65);
                    v62 = v96 + 8 * v97;
                  }

LABEL_123:
                  v66 = v62 + 8;
                  v67 = v64 - (v62 + 8);
                  if (v64 != v62 + 8)
                  {
LABEL_133:
                    memmove(v62, v66, v67);
                    v63 = v97;
                  }

LABEL_134:
                  LODWORD(v97) = v63 - 1;
                  goto LABEL_71;
                }

                v76 = 1;
                while (v61 != -1)
                {
                  v77 = v60 + v76++;
                  v60 = v77 & (v95 - 1);
                  v61 = *(v94[0] + v60);
                  if (v34 == v61)
                  {
                    goto LABEL_118;
                  }
                }
              }
            }

            else
            {
              v63 = v97;
              if (v97)
              {
                v68 = 8 * v97;
                v62 = v96;
                while (*v62 != v34)
                {
                  v62 += 8;
                  v68 -= 8;
                  if (!v68)
                  {
                    goto LABEL_71;
                  }
                }
              }

              else
              {
                v62 = v96;
              }

              v69 = v96 + 8 * v97;
              if (v62 != v69)
              {
                v66 = v62 + 8;
                v67 = v69 - (v62 + 8);
                if (v69 != v62 + 8)
                {
                  goto LABEL_133;
                }

                goto LABEL_134;
              }
            }

LABEL_71:
            if (++v34 == a3)
            {
              v78 = v96;
              if (v102)
              {
                v79 = v97 == 0;
              }

              else
              {
                v79 = 1;
              }

              if (!v79)
              {
                v80 = __dst;
                v81 = *a4;
                v82 = 8 * v97 - 8;
                v83 = 8 * v102 - 8;
                v84 = v96;
                do
                {
                  v86 = *v84++;
                  v85 = v86;
                  v87 = *v80++;
                  *(v81 + 8 * v87) = v85;
                  if (!v83)
                  {
                    break;
                  }

                  v88 = v82;
                  v82 -= 8;
                  v83 -= 8;
                }

                while (v88);
              }

              if (v78 != v98)
              {
                free(v78);
              }

              llvm::deallocate_buffer(v94[0], (8 * v95));
            }
          }
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, a3, 8);
        v32 = *(a4 + 8);
        v33 = a3 - v32;
        if (a3 == v32)
        {
          goto LABEL_68;
        }
      }

      bzero((*a4 + 8 * v32), 8 * v33);
      goto LABEL_68;
    }
  }

  return 0;
}

uint64_t llvm::SetVector<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseSet<unsigned long long,llvm::DenseMapInfo<unsigned long long,void>>,5u>::insert(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v6 = (a1 + 24);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = v7;
    if (v8)
    {
      v10 = *a2;
      v11 = 8 * v8;
      v9 = *(a1 + 24);
      while (*v9 != v10)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_14;
        }
      }
    }

    if (v9 == &v7[v8])
    {
      v10 = *a2;
LABEL_14:
      if (v8 >= *(a1 + 36))
      {
        v16 = (a1 + 24);
        v17 = v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v8 + 1, 8);
        v10 = v17;
        v6 = v16;
        v8 = *(a1 + 32);
        v7 = *(a1 + 24);
      }

      v7[v8] = v10;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 6)
      {
        v14 = *v6;
        v15 = 8 * v13;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }

      return 1;
    }

    return 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

void *mlir::getMostDefinedTypeForANE(uint64_t a1, uint64_t a2)
{
  MostDefinedTypeForCPU = mlir::getMostDefinedTypeForCPU(a1, a2);

  return mlir::getRankPromotionTypeForANE(MostDefinedTypeForCPU, v3);
}

uint64_t mlir::getRequiresCHWRankPromotion(mlir *this, mlir::MLIRContext *a2)
{
  Instance = mlir::ANEPropertiesRegistry::getInstance(this);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, this);
  if (Properties)
  {
    v5 = *Properties;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

double mlir::anec::getAllDims@<D0>(uint64_t a1@<X8>)
{
  *a1 = a1 + 16;
  *(a1 + 32) = 4;
  *(a1 + 16) = xmmword_1E098452C;
  *&result = 0x500000005;
  *(a1 + 8) = 0x500000005;
  return result;
}

uint64_t mlir::anec::getMaximumDimSize(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0x10000;
  }

  else
  {
    return qword_1E0984558[a1];
  }
}

uint64_t mlir::anec::getDimFromIndex(mlir::anec *this, unint64_t a2)
{
  if (a2 && (a2 - 1) == this)
  {
    return 0x100000004;
  }

  if (a2 >= 2 && (a2 - 2) == this)
  {
    return 0x100000003;
  }

  if (a2 >= 3 && (a2 - 3) == this)
  {
    return 0x100000001;
  }

  if (a2 >= 4 && (a2 - 4) == this)
  {
    return (2 * (a2 != 4)) | 0x100000000;
  }

  v3 = (a2 - 5) == this && a2 > 4;
  v4 = 0x100000000;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void mlir::anec::getANEDefaultLayout(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v33 = v35;
  v35[0] = 4;
  v34 = 0xC00000001;
  v36 = 1;
  v37 = v39;
  v39[0] = 4;
  v38 = 0xC00000001;
  v30 = v32;
  v31 = 0xC00000002;
  v32[0] = 0x400000001;
  v40 = 2;
  v41 = v43;
  v42 = 0xC00000002;
  v43[0] = 0x400000001;
  v27 = &v28 + 8;
  v29 = 4;
  v28 = xmmword_1E09844B0;
  v43[6] = 3;
  v44 = &v46;
  v47 = 4;
  v46 = 0x100000000;
  v45 = 0xC00000003;
  v25 = &v26[8];
  *&v26[16] = 0x400000003;
  *v26 = xmmword_1E09844C0;
  v48 = 4;
  v49 = v51;
  v51[0] = *&v26[8];
  v50 = 0xC00000004;
  v21 = &v23;
  v24 = 4;
  v23 = xmmword_1E098452C;
  v22 = 0xC00000005;
  v52 = 5;
  v53 = &v55;
  v55 = xmmword_1E098452C;
  v56 = 4;
  v54 = 0xC00000005;
  llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::DenseMap(&v19, &v36, 5);
  if (v53 != &v55)
  {
    free(v53);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v44 != &v46)
  {
    free(v44);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v21 != &v23)
  {
    free(v21);
  }

  if (v25 != &v26[8])
  {
    free(v25);
  }

  if (v27 != &v28 + 8)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v2 = v19;
  if ((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v3 = v20;
    if (v20)
    {
      goto LABEL_23;
    }

LABEL_50:
    v7 = 0;
    goto LABEL_51;
  }

  if (v20)
  {
    v8 = (v20 - 1) & (((0xBF58476D1CE4E5B9 * a1) >> 31) ^ (484763065 * a1));
    v9 = v19 + 72 * v8;
    v10 = *v9;
    if (*v9 == a1)
    {
      goto LABEL_36;
    }

    v11 = 1;
    while (v10 != -1)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v20 - 1);
      v9 = v19 + 72 * v8;
      v10 = *v9;
      if (*v9 == a1)
      {
        goto LABEL_36;
      }
    }
  }

  v9 = v19 + 72 * v20;
LABEL_36:
  v13 = (v9 + 8);
  if (v9 + 8 == a2)
  {
    v3 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  v14 = *(v9 + 4);
  v15 = *(a2 + 8);
  if (v15 >= v14)
  {
    if (v14)
    {
      memmove(*a2, *v13, 4 * v14);
    }

LABEL_49:
    *(a2 + 8) = v14;
    v2 = v19;
    v3 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }

LABEL_23:
    v4 = 72 * v3;
    v5 = v2 + 24;
    do
    {
      if (*(v5 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = *(v5 - 2);
        if (v5 != v6)
        {
          free(v6);
        }
      }

      v5 += 72;
      v4 -= 72;
    }

    while (v4);
    v2 = v19;
    v7 = 72 * v20;
LABEL_51:
    llvm::deallocate_buffer(v2, v7);
  }

  if (*(a2 + 12) >= v14)
  {
    if (v15)
    {
      memmove(*a2, *v13, 4 * v15);
      goto LABEL_47;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v14, 4);
  }

  v15 = 0;
LABEL_47:
  v16 = *(v9 + 4) - v15;
  if (v16)
  {
    memcpy((*a2 + 4 * v15), *v13 + 4 * v15, 4 * v16);
  }

  goto LABEL_49;
}

uint64_t mlir::anec::getKernelDimFromIndex(unint64_t this, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  mlir::anec::getKernelDimMap(&v26);
  v4 = v26;
  v5 = &v27;
  if (v26)
  {
    v7 = 4;
    v6 = &v27;
  }

  else
  {
    v6 = v27;
    v7 = v28;
    if (!v28)
    {
      v8 = 0;
LABEL_6:
      v11 = &v6[4 * v8];
      goto LABEL_7;
    }
  }

  v9 = v7 - 1;
  v8 = (v7 - 1) & (((0xBF58476D1CE4E5B9 * a2) >> 31) ^ (484763065 * a2));
  v10 = v6[4 * v8];
  if (v10 == a2)
  {
    goto LABEL_6;
  }

  v24 = 1;
  while (v10 != -1)
  {
    v25 = v8 + v24++;
    v8 = v25 & v9;
    v10 = v6[4 * v8];
    if (v10 == a2)
    {
      goto LABEL_6;
    }
  }

  if ((v26 & 1) == 0)
  {
    v6 = v27;
    v8 = v28;
    goto LABEL_6;
  }

  v11 = &v29;
LABEL_7:
  v12 = v28;
  v13 = v27 + 32 * v28;
  if (v26)
  {
    v13 = &v29;
  }

  if (v11 == v13 || (v15 = v11 + 8, v14 = *(v11 + 1), this >= (v15[1] - v14) >> 2))
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    if (v26)
    {
      goto LABEL_12;
    }

LABEL_14:
    v5 = v27;
    if (!v28)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v16 = *(v14 + 4 * this);
  v17 = v16 & 0xFFFFFF00;
  v18 = v16;
  v19 = 0x100000000;
  if ((v26 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = 4;
LABEL_15:
  v20 = 32 * v12;
  v21 = v5 + 16;
  do
  {
    if (*(v21 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = *(v21 - 1);
      if (v22)
      {
        *v21 = v22;
        operator delete(v22);
      }
    }

    v21 += 4;
    v20 -= 32;
  }

  while (v20);
  v4 = v26;
LABEL_21:
  if ((v4 & 1) == 0)
  {
    llvm::deallocate_buffer(v27, (32 * v28));
  }

  return v19 | v17 | v18;
}

void mlir::anec::getKernelDimMap(int *a1@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = 2;
  v3 = operator new(8uLL);
  v12 = v3;
  *v3 = 0x100000000;
  v13 = v3 + 1;
  v14 = v3 + 1;
  v4 = operator new(0xCuLL);
  *v4 = 0x100000000;
  v4[2] = 4;
  v15 = 3;
  v5 = operator new(0xCuLL);
  v17 = v5 + 3;
  v18 = (v5 + 3);
  *v5 = *v4;
  v5[2] = v4[2];
  v16 = v5;
  v6 = operator new(0x10uLL);
  *v6 = xmmword_1E09844D0;
  v19 = 4;
  v7 = operator new(0x10uLL);
  *v7 = *v6;
  v20 = v7;
  v21 = v7 + 1;
  v22 = v7 + 1;
  v23 = 5;
  v8 = operator new(0x14uLL);
  v25 = v8 + 5;
  v26 = (v8 + 5);
  v8[4] = 2;
  *v8 = xmmword_1E0984540;
  __p = v8;
  v10 = &v11;
  v9 = &v27;
  llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::SmallDenseMap<llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>> const*>(a1, &v10, &v9);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  operator delete(v6);
  operator delete(v4);
}

uint64_t mlir::anec::getReferenceFormatIndex(mlir::anec *this, unint64_t a2, unint64_t a3)
{
  if (a2 && (a2 - 1) == this)
  {
    v3 = a3 - 1;
    v4 = (a3 - 1) & 0xFFFFFFFFFFFFFF00;
    if (!a3)
    {
      v3 = 0;
      v4 = 0;
    }

    return v4 | v3;
  }

  if (a2 >= 2 && (a2 - 2) == this)
  {
    v3 = a3 - 2;
    v4 = (a3 - 2) & 0xFFFFFFFFFFFFFF00;
    v5 = a3 >= 2;
    goto LABEL_12;
  }

  if (a2 >= 3 && (a2 - 3) == this)
  {
    v3 = a3 - 3;
    v4 = (a3 - 3) & 0xFFFFFFFFFFFFFF00;
    v5 = a3 >= 3;
LABEL_12:
    if (!v5)
    {
      v3 = 0;
      v4 = 0;
    }

    return v4 | v3;
  }

  if (a2 >= 4 && (a2 - 4) == this)
  {
    if (a2 != 4)
    {
      v4 = 0;
      v3 = a3 > 4;
      return v4 | v3;
    }

LABEL_22:
    v3 = 0;
    v4 = 0;
    return v4 | v3;
  }

  if (a2 < 5)
  {
    return 0;
  }

  v7 = a2 - 5 == this;
  result = 0;
  if (v7)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t mlir::anec::allElementsOnAxis(uint64_t a1, uint64_t a2, int a3)
{
  v16[0] = a1;
  v16[1] = a2;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v16);
  if (!v5)
  {
    return 1;
  }

  v6 = ArgAttrsAttr;
  v7 = 0;
  v8 = 8 * v5 - 8;
  do
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v16);
    if (v7 == v9 - 1)
    {
      v10 = 0;
      v11 = 4;
    }

    else if (v9 >= 2 && v7 == v9 - 2)
    {
      v10 = 0;
      v11 = 3;
    }

    else if (v9 >= 3 && v7 == v9 - 3)
    {
      v10 = 0;
      v11 = 1;
    }

    else if (v9 >= 4 && v7 == v9 - 4)
    {
      v10 = 0;
      v11 = 2 * (v9 != 4);
    }

    else
    {
      v11 = 0;
      v10 = v9 < 5 || v7 != v9 - 5;
    }

    if (v11 != a3)
    {
      v10 = 1;
    }

    v13 = *(v6 + 8 * v7) != 1 && v10;
    if (v13)
    {
      break;
    }

    ++v7;
    v14 = v8;
    v8 -= 8;
  }

  while (v14);
  return v13 ^ 1u;
}

uint64_t mlir::anec::verifyCompatibilityWithFlatten(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a1;
  v19[1] = a2;
  v18[0] = a3;
  v18[1] = a4;
  result = mlir::CallOpInterface::getArgOperands(v19);
  if (result)
  {
    result = mlir::CallOpInterface::getArgOperands(v18);
    if (result)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v19);
      v6 = v5;
      mlir::CallableOpInterface::getArgAttrsAttr(v18);
      if (v6 == v7 && (mlir::CallableOpInterface::getArgAttrsAttr(v19), v8 <= 4) && (mlir::CallableOpInterface::getArgAttrsAttr(v19), v9 >= 4) && (v10 = *mlir::CallableOpInterface::getArgAttrsAttr(v19), v10 == *mlir::CallableOpInterface::getArgAttrsAttr(v18)) && (ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v19), NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v12), v14 = mlir::CallableOpInterface::getArgAttrsAttr(v18), NumElements == mlir::ShapedType::getNumElements(v14, v15)))
      {
        v17[0] = mlir::CallableOpInterface::getArgAttrsAttr(v18);
        v17[1] = v16;
        return llvm::any_of<llvm::detail::zippy<llvm::detail::zip_enumerator,llvm::detail::index_stream,llvm::ArrayRef<long long>>,mlir::anec::verifyCompatibilityWithFlatten(mlir::ShapedType,mlir::ShapedType)::$_0>(v17, v18) ^ 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t llvm::any_of<llvm::detail::zippy<llvm::detail::zip_enumerator,llvm::detail::index_stream,llvm::ArrayRef<long long>>,mlir::anec::verifyCompatibilityWithFlatten(mlir::ShapedType,mlir::ShapedType)::$_0>(uint64_t *a1, mlir::CallableOpInterface *this)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  v6 = 8 * v2;
  while (1)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(this);
    if (v4 == v7 - 1 || v7 >= 2 && v4 == v7 - 2)
    {
      break;
    }

    if (v7 >= 3 && v4 == v7 - 3)
    {
      goto LABEL_4;
    }

    if (v7 >= 4 && v4 == v7 - 4)
    {
      if (v7 == 4)
      {
        goto LABEL_4;
      }

      break;
    }

    if (v7 < 5 || v4 != v7 - 5)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      return 0;
    }

LABEL_4:
    ++v4;
    v6 -= 8;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(v5 + 8 * v4) == 1)
  {
    goto LABEL_4;
  }

  return 1;
}

uint64_t llvm::dyn_cast_if_present<mlir::AffineConstantExpr,mlir::AffineExpr>(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v4 = *a1, mlir::arith::FastMathFlagsAttr::getValue(&v4) == 5))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v4, v2);
  return v4;
}

int *llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::SmallDenseMap<llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>> const*>(int *a1, void *a2, void *a3)
{
  v6 = ((*a3 - *a2) >> 5) | (((*a3 - *a2) >> 5) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = v7 | (v7 >> 8) | ((v7 | (v7 >> 8)) >> 16);
  v9 = (HIDWORD(v8) | v8) + 1;
  v10 = a1 + 2;
  if (v9 <= 4)
  {
    *a1 = 1;
  }

  else
  {
    *a1 &= ~1u;
    buffer = llvm::allocate_buffer(32 * ((HIDWORD(v8) | v8) + 1), 8uLL);
    *(a1 + 1) = buffer;
    *(a1 + 2) = v9;
    v12 = *a1;
    *a1 = *a1 & 1;
    if ((v12 & 1) == 0)
    {
      v13 = &buffer[4 * v9];
      goto LABEL_6;
    }
  }

  v13 = (a1 + 34);
  buffer = v10;
LABEL_6:
  v14 = v13 - buffer - 32;
  if (v14 < 0x20)
  {
    v15 = buffer;
    do
    {
LABEL_11:
      *v15 = -1;
      v15 += 32;
    }

    while (v15 != v13);
    goto LABEL_12;
  }

  v16 = (v14 >> 5) + 1;
  v15 = &buffer[4 * (v16 & 0xFFFFFFFFFFFFFFELL)];
  v17 = buffer + 4;
  v18 = v16 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *(v17 - 4) = -1;
    *v17 = -1;
    v17 += 8;
    v18 -= 2;
  }

  while (v18);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_11;
  }

LABEL_12:
  v19 = *a2;
  for (i = *a3; v19 != i; v19 += 4)
  {
    if (*a1)
    {
      v21 = 4;
      v22 = v10;
    }

    else
    {
      v21 = a1[4];
      if (!v21)
      {
        v27 = 0;
LABEL_21:
        llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::InsertIntoBucket<unsigned long long const&,std::vector<mlir::anec::KernelDim> const&>(a1, v27, v19, (v19 + 1));
        continue;
      }

      v22 = *(a1 + 1);
    }

    v23 = v21 - 1;
    v24 = v23 & (((0xBF58476D1CE4E5B9 * *v19) >> 31) ^ (484763065 * *v19));
    v25 = &v22[4 * v24];
    v26 = *v25;
    if (*v19 != *v25)
    {
      v28 = 0;
      v29 = 1;
      while (v26 != -1)
      {
        if (v28)
        {
          v30 = 0;
        }

        else
        {
          v30 = v26 == -2;
        }

        if (v30)
        {
          v28 = v25;
        }

        v31 = v24 + v29++;
        v24 = v31 & v23;
        v25 = &v22[4 * v24];
        v26 = *v25;
        if (*v19 == *v25)
        {
          goto LABEL_16;
        }
      }

      if (v28)
      {
        v27 = v28;
      }

      else
      {
        v27 = v25;
      }

      goto LABEL_21;
    }

LABEL_16:
    ;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::LookupBucketFor<unsigned long long>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (v4 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (v3 + 32 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 32 * v6);
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::InsertIntoBucket<unsigned long long const&,std::vector<mlir::anec::KernelDim> const&>(_DWORD *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v17 = a2;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  v14 = a1;
  v15 = a4;
  v16 = a3;
  llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::LookupBucketFor<unsigned long long>(v14, v16, &v17);
  a1 = v14;
  a3 = v16;
  a4 = v15;
  v5 = *v14;
  v4 = v17;
LABEL_6:
  *a1 = v5 + 2;
  if (*v4 != -1)
  {
    --a1[1];
  }

  *v4 = *a3;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v9 = *a4;
  v8 = *(a4 + 8);
  v10 = v8 - *a4;
  if (v8 != *a4)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v11 = operator new(v8 - *a4);
    v4[1] = v11;
    v4[2] = v11;
    v12 = &v11[v10];
    v4[3] = &v11[v10];
    memcpy(v11, v9, v10);
    v4[2] = v12;
  }

  return v4;
}

void llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::grow(uint64_t a1, unsigned int a2)
{
  v21[12] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      v15 = a1;
      buffer = llvm::allocate_buffer(32 * a2, 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    v17 = (32 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::moveFromOldBuckets(a1, v5, &v17[v5]);

    llvm::deallocate_buffer(v5, v17);
  }

  v7 = &v18;
  if (*(a1 + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    v20 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v7 = v21;
  }

  v8 = *(a1 + 40);
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    *v7 = v8;
    *(v7 + 1) = *(a1 + 48);
    v7[3] = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v7 += 4;
  }

  v9 = *(a1 + 72);
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    *v7 = v9;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    *(v7 + 1) = *(a1 + 80);
    v7[3] = *(a1 + 96);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    v7 += 4;
  }

  v10 = *(a1 + 104);
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    *v7 = v10;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    *(v7 + 1) = *(a1 + 112);
    v7[3] = *(a1 + 128);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    v7 += 4;
  }

  if (a2 >= 5)
  {
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(32 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::moveFromOldBuckets(a1, &v18, v7);
}