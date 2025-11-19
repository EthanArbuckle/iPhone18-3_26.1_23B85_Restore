uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)10>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v63 = **a4;
  v64 = **a3;
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
    v62 = v14;
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

      result = v62;
      if (*(*(v5 + 24) + 8 * v62) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v62);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v64;
        v38 = v64 + v35 * v19;
        v39 = v36 * v19 + v63;
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
          if ((v21 & 1) != 0 || (v59 = *(v4 + 16), v60 = v59 - 1, v59 < 1) || v60 > v59 - 1 || *(*(v4 + 24) + 8 * v60) == 1)
          {
            v61 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_42:
            v56 = 0;
          }

          else
          {
            v61 = *(*(v4 + 64) + 8 * v60);
            if (v32)
            {
              goto LABEL_42;
            }

LABEL_52:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v56 = *(*(v5 + 64) + 8 * v7);
          }

          result = (v55 + v56 * v51);
          if (*&v52[v61 * v51 + v53] == 0.0)
          {
            v57 = 1.0;
          }

          else
          {
            v57 = 0.0;
          }

          v58 = v57 + (v57 * 0.0039062);
          *(result + v54) = HIWORD(v58);
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)10>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      *(v43 + v49 * v39 + v42) = *(v40 + v46 * v39 + v41) == 0;
      if (v10 == ++v39)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)10>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = *(v54 + v61 * v53 + v55) == 0;
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

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)10>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = *(v54 + v61 * v53 + v55) == 0;
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)10>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      *(v38 + v44 * v36 + *(v5 + 40)) = v37[v41 * v36 + *(v4 + 40)] == 0;
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)11>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      *(v38 + v44 * v36 + *(v5 + 40)) = vrnda_f32(*&v37[v41 * v36 + *(v4 + 40)]);
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)11>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = roundf(*(v54 + v61 * v53 + v55));
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)11>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4, float16x4_t a5)
{
  v5 = **result;
  v6 = **a2;
  v7 = **a3;
  v8 = **a4;
  v9 = *(v6 + 16);
  if (v9 < 1)
  {
    v9 = 1;
    v12 = 1;
    v11 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v10 = *(v6 + 24) + 8 * v9;
  v11 = *(v10 - 8);
  if (v9 == 1)
  {
    v12 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v12 = *(v10 - 16);
  if (v9 < 3)
  {
    v9 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v13 = *(v10 - 24);
  if (v9 == 3)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v9 = *(v10 - 32);
  if (v9 >= 1)
  {
LABEL_10:
    v14 = 0;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v15 = *(v5 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v5 + 24) + 8 * v16) == 1)
      {
        result = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v5 + 64) + 8 * v16);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v17 = *(v6 + 16);
      v18 = v17 - 4;
      if (v17 < 4 || v18 > v17 - 1 || *(*(v6 + 24) + 8 * v18) == 1)
      {
        break;
      }

      v19 = *(*(v6 + 64) + 8 * v18);
      if (v13 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v14 == v9)
      {
        return result;
      }
    }

    v19 = 0;
    if (v13 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v20 = 0;
    result = (v7 + result * v14);
    v21 = v8 + v19 * v14;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v22 = *(v5 + 16), v23 = v22 - 3, v22 < 3) || v23 > v22 - 1 || *(*(v5 + 24) + 8 * v23) == 1)
      {
        v24 = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        v24 = *(*(v5 + 64) + 8 * v23);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v25 = *(v6 + 16);
      v26 = v25 - 3;
      if (v25 < 3 || v26 > v25 - 1 || *(*(v6 + 24) + 8 * v26) == 1)
      {
        break;
      }

      v27 = *(*(v6 + 64) + 8 * v26);
      if (v12 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v20 == v13)
      {
        goto LABEL_11;
      }
    }

    v27 = 0;
    if (v12 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v28 = 0;
    v29 = result + v24 * v20;
    v30 = v21 + v27 * v20;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v31 = *(v5 + 16), v32 = v31 - 2, v31 < 2) || v32 > v31 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v34 = *(v6 + 16);
      v35 = v34 - 2;
      if (v34 < 2 || v35 > v34 - 1 || *(*(v6 + 24) + 8 * v35) == 1)
      {
        break;
      }

      v36 = *(*(v6 + 64) + 8 * v35);
      if (v11 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v28 == v12)
      {
        goto LABEL_25;
      }
    }

    v36 = 0;
    if (v11 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v37 = 0;
    v38 = &v29[v33 * v28];
    v39 = v30 + v36 * v28;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v40 = *(v5 + 16), v41 = v40 - 1, v40 < 1) || v41 > v40 - 1 || *(*(v5 + 24) + 8 * v41) == 1)
      {
        v42 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v42 = *(*(v5 + 64) + 8 * v41);
        if (*(v6 + 58))
        {
          goto LABEL_63;
        }
      }

      v43 = *(v6 + 16);
      v44 = v43 - 1;
      if (v43 < 1 || v44 > v43 - 1 || *(*(v6 + 24) + 8 * v44) == 1)
      {
LABEL_63:
        v45 = 0;
        goto LABEL_64;
      }

      v45 = *(*(v6 + 64) + 8 * v44);
LABEL_64:
      a5.i32[0] = *&v38[v42 * v37 + *(v5 + 40)];
      a5 = vcvtq_f32_f16(vrnda_f16(a5)).u64[0];
      *(v39 + v45 * v37++ + *(v6 + 40)) = *&a5;
      if (v11 == v37)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)11>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          _H0 = roundl(*(v54 + v67 * v53 + v55));
          __asm { FCVT            S0, H0 }

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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)11>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      v47 = roundl(v45[1]);
      *v46 = roundl(*v45);
      v46[1] = v47;
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)11>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = roundl(*(v54 + v61 * v53 + v55));
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)11>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      _S0 = roundf(*v45);
      _S1 = roundf(v45[1]);
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      *v46 = LOWORD(_S0);
      v46[1] = LOWORD(_S1);
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)11>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          _S0 = roundf(*(v54 + v66 * v53 + v55));
          __asm { FCVT            H0, S0 }

          *(v57 + v58 * v53++ + v56) = LOWORD(_S0);
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

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)11>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = roundf(COERCE_FLOAT(*(v54 + v61 * v53 + v55) << 16));
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)11>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
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
    v61 = v14;
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

      result = v61;
      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v61);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v63;
        v38 = v63 + v35 * v19;
        v39 = v36 * v19 + v62;
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

          v60 = roundf(COERCE_FLOAT(*&v52[v58 * v51 + v53] << 16));
          result = (v55 + v59 * v51);
          *(result + v54) = HIWORD(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(LODWORD(v60) & 0xFF800000) * 0.0039062)));
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)11>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
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
    v61 = v14;
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

      result = v61;
      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v61);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v63;
        v38 = v63 + v35 * v19;
        v39 = v36 * v19 + v62;
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

          v60 = roundf(*&v52[v58 * v51 + v53]);
          result = (v55 + v59 * v51);
          *(result + v54) = HIWORD(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(LODWORD(v60) & 0xFF800000) * 0.0039062)));
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

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v42 = **a4;
  v43 = **a3;
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
    v44 = 1;
    v50 = 1;
    v8 = 1;
    goto LABEL_7;
  }

  v7 = *(v5 + 24) + 8 * v6;
  v8 = *(v7 - 8);
  if (v6 == 1)
  {
    v44 = 1;
    v50 = 1;
LABEL_7:
    v48 = 1;
LABEL_8:
    v45 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v9 = *(v4 + 16), v10 = v9 - 4, v9 < 4) || v10 > v9 - 1 || *(*(v4 + 24) + 8 * v10) == 1)
      {
        v11 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = *(*(v4 + 64) + 8 * v10);
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      v12 = *(v5 + 16);
      v13 = v12 - 4;
      if (v12 >= 4 && v13 <= v12 - 1 && *(*(v5 + 24) + 8 * v13) != 1)
      {
        v14 = *(*(v5 + 64) + 8 * v13);
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
LABEL_21:
      if (v48 >= 1)
      {
        v49 = 0;
        v47 = v43 + v11 * v45;
        v46 = v42 + v14 * v45;
        do
        {
          if ((*(v4 + 58) & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 3, v15 < 3) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
          {
            v17 = 0;
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v17 = *(*(v4 + 64) + 8 * v16);
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          v18 = *(v5 + 16);
          v19 = v18 - 3;
          if (v18 >= 3 && v19 <= v18 - 1 && *(*(v5 + 24) + 8 * v19) != 1)
          {
            v20 = *(*(v5 + 64) + 8 * v19);
            goto LABEL_35;
          }

LABEL_34:
          v20 = 0;
LABEL_35:
          if (v50 >= 1)
          {
            v21 = 0;
            v22 = v47 + v17 * v49;
            v23 = v46 + v20 * v49;
            while (1)
            {
              if ((*(v4 + 58) & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 2, v24 < 2) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
              {
                v26 = 0;
                if (*(v5 + 58))
                {
                  break;
                }
              }

              else
              {
                v26 = *(*(v4 + 64) + 8 * v25);
                if (*(v5 + 58))
                {
                  break;
                }
              }

              v27 = *(v5 + 16);
              v28 = v27 - 2;
              if (v27 < 2 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
              {
                break;
              }

              v29 = *(*(v5 + 64) + 8 * v28);
              if (v8 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v21 == v50)
              {
                goto LABEL_23;
              }
            }

            v29 = 0;
            if (v8 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v30 = 0;
            v31 = v22 + v26 * v21;
            v32 = v23 + v29 * v21;
            while (2)
            {
              if ((*(v4 + 58) & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 1, v33 < 1) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
              {
                v35 = 0;
                if ((*(v5 + 58) & 1) == 0)
                {
LABEL_56:
                  v36 = *(v5 + 16);
                  v37 = v36 - 1;
                  if (v36 >= 1 && v37 <= v36 - 1 && *(*(v5 + 24) + 8 * v37) != 1)
                  {
                    v38 = *(*(v5 + 64) + 8 * v37);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v35 = *(*(v4 + 64) + 8 * v34);
                if ((*(v5 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v38 = 0;
LABEL_62:
              v39 = (v31 + v35 * v30 + *(v4 + 40));
              v40 = v32 + v38 * v30 + *(v5 + 40);
              *v40 = __divsc3(1.0, 0.0, *v39, v39[1]);
              *(v40 + 4) = v41;
              if (v8 == ++v30)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v49;
        }

        while (v49 != v48);
      }

      if (++v45 == v44)
      {
        return;
      }
    }
  }

  v50 = *(v7 - 16);
  if (v6 < 3)
  {
    v44 = 1;
    goto LABEL_7;
  }

  v48 = *(v7 - 24);
  if (v6 == 3)
  {
    v44 = 1;
    goto LABEL_8;
  }

  v44 = *(v7 - 32);
  if (v44 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = 1.0 / *(v54 + v61 * v53 + v55);
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

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v51 = **a4;
  v52 = **a3;
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
    v53 = 1;
    v60 = 1;
    v8 = 1;
    goto LABEL_7;
  }

  v7 = *(v5 + 24) + 8 * v6;
  v8 = *(v7 - 8);
  if (v6 == 1)
  {
    v53 = 1;
    v60 = 1;
LABEL_7:
    v57 = 1;
LABEL_8:
    v54 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v9 = *(v4 + 16), v10 = v9 - 4, v9 < 4) || v10 > v9 - 1 || *(*(v4 + 24) + 8 * v10) == 1)
      {
        v11 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = *(*(v4 + 64) + 8 * v10);
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      v12 = *(v5 + 16);
      v13 = v12 - 4;
      if (v12 >= 4 && v13 <= v12 - 1 && *(*(v5 + 24) + 8 * v13) != 1)
      {
        v14 = *(*(v5 + 64) + 8 * v13);
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
LABEL_21:
      if (v57 >= 1)
      {
        v58 = 0;
        v56 = v52 + v11 * v54;
        v55 = v51 + v14 * v54;
        do
        {
          if ((*(v4 + 58) & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 3, v15 < 3) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
          {
            v17 = 0;
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v17 = *(*(v4 + 64) + 8 * v16);
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          v18 = *(v5 + 16);
          v19 = v18 - 3;
          if (v18 >= 3 && v19 <= v18 - 1 && *(*(v5 + 24) + 8 * v19) != 1)
          {
            v20 = *(*(v5 + 64) + 8 * v19);
            goto LABEL_35;
          }

LABEL_34:
          v20 = 0;
LABEL_35:
          if (v60 >= 1)
          {
            v21 = 0;
            v59 = v56 + v17 * v58;
            v22 = v55 + v20 * v58;
            while (1)
            {
              if ((*(v4 + 58) & 1) != 0 || (v23 = *(v4 + 16), v24 = v23 - 2, v23 < 2) || v24 > v23 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
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
              v27 = v26 - 2;
              if (v26 < 2 || v27 > v26 - 1 || *(*(v5 + 24) + 8 * v27) == 1)
              {
                break;
              }

              v28 = *(*(v5 + 64) + 8 * v27);
              if (v8 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v21 == v60)
              {
                goto LABEL_23;
              }
            }

            v28 = 0;
            if (v8 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v29 = 0;
            v30 = v59 + v25 * v21;
            v31 = v22 + v28 * v21;
            while (2)
            {
              if ((*(v4 + 58) & 1) != 0 || (v32 = *(v4 + 16), v33 = v32 - 1, v32 < 1) || v33 > v32 - 1 || *(*(v4 + 24) + 8 * v33) == 1)
              {
                v34 = 0;
                if ((*(v5 + 58) & 1) == 0)
                {
LABEL_56:
                  v35 = *(v5 + 16);
                  v36 = v35 - 1;
                  if (v35 >= 1 && v36 <= v35 - 1 && *(*(v5 + 24) + 8 * v36) != 1)
                  {
                    v37 = *(*(v5 + 64) + 8 * v36);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v34 = *(*(v4 + 64) + 8 * v33);
                if ((*(v5 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v37 = 0;
LABEL_62:
              v38 = v31 + v37 * v29;
              v39 = (v30 + v34 * v29 + *(v4 + 40));
              v40 = *(v5 + 40);
              _H0 = *v39;
              _H1 = v39[1];
              __asm
              {
                FCVT            S2, H0
                FCVT            S3, H1
              }

              v49.f32[0] = __divsc3(1.0, 0.0, _S2, _S3);
              v49.i32[1] = v50;
              *(v38 + v40) = vcvtq_f32_f16(vcvt_f16_f32(v49)).u64[0];
              if (v8 == ++v29)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v58;
        }

        while (v58 != v57);
      }

      if (++v54 == v53)
      {
        return;
      }
    }
  }

  v60 = *(v7 - 16);
  if (v6 < 3)
  {
    v53 = 1;
    goto LABEL_7;
  }

  v57 = *(v7 - 24);
  if (v6 == 3)
  {
    v53 = 1;
    goto LABEL_8;
  }

  v53 = *(v7 - 32);
  if (v53 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          _H1 = *(v54 + v67 * v53 + v55);
          __asm { FCVT            S1, H1 }

          *(v57 + v58 * v53++ + v56) = 1.0 / _S1;
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

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v51 = **a4;
  v52 = **a3;
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
    v53 = 1;
    v59 = 1;
    v8 = 1;
    goto LABEL_7;
  }

  v7 = *(v5 + 24) + 8 * v6;
  v8 = *(v7 - 8);
  if (v6 == 1)
  {
    v53 = 1;
    v59 = 1;
LABEL_7:
    v57 = 1;
LABEL_8:
    v54 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v9 = *(v4 + 16), v10 = v9 - 4, v9 < 4) || v10 > v9 - 1 || *(*(v4 + 24) + 8 * v10) == 1)
      {
        v11 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = *(*(v4 + 64) + 8 * v10);
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      v12 = *(v5 + 16);
      v13 = v12 - 4;
      if (v12 >= 4 && v13 <= v12 - 1 && *(*(v5 + 24) + 8 * v13) != 1)
      {
        v14 = *(*(v5 + 64) + 8 * v13);
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
LABEL_21:
      if (v57 >= 1)
      {
        v58 = 0;
        v56 = v52 + v11 * v54;
        v55 = v51 + v14 * v54;
        do
        {
          if ((*(v4 + 58) & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 3, v15 < 3) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
          {
            v17 = 0;
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v17 = *(*(v4 + 64) + 8 * v16);
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          v18 = *(v5 + 16);
          v19 = v18 - 3;
          if (v18 >= 3 && v19 <= v18 - 1 && *(*(v5 + 24) + 8 * v19) != 1)
          {
            v20 = *(*(v5 + 64) + 8 * v19);
            goto LABEL_35;
          }

LABEL_34:
          v20 = 0;
LABEL_35:
          if (v59 >= 1)
          {
            v21 = 0;
            v22 = v56 + v17 * v58;
            v23 = v55 + v20 * v58;
            while (1)
            {
              if ((*(v4 + 58) & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 2, v24 < 2) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
              {
                v26 = 0;
                if (*(v5 + 58))
                {
                  break;
                }
              }

              else
              {
                v26 = *(*(v4 + 64) + 8 * v25);
                if (*(v5 + 58))
                {
                  break;
                }
              }

              v27 = *(v5 + 16);
              v28 = v27 - 2;
              if (v27 < 2 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
              {
                break;
              }

              v29 = *(*(v5 + 64) + 8 * v28);
              if (v8 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v21 == v59)
              {
                goto LABEL_23;
              }
            }

            v29 = 0;
            if (v8 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v30 = 0;
            v31 = v22 + v26 * v21;
            v32 = v23 + v29 * v21;
            while (2)
            {
              if ((*(v4 + 58) & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 1, v33 < 1) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
              {
                v35 = 0;
                if ((*(v5 + 58) & 1) == 0)
                {
LABEL_56:
                  v36 = *(v5 + 16);
                  v37 = v36 - 1;
                  if (v36 >= 1 && v37 <= v36 - 1 && *(*(v5 + 24) + 8 * v37) != 1)
                  {
                    v38 = *(*(v5 + 64) + 8 * v37);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v35 = *(*(v4 + 64) + 8 * v34);
                if ((*(v5 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v38 = 0;
LABEL_62:
              v39 = (v31 + v35 * v30 + *(v4 + 40));
              v40 = (v32 + v38 * v30 + *(v5 + 40));
              _H0 = *v39;
              _H1 = v39[1];
              __asm
              {
                FCVT            S2, H0
                FCVT            S3, H1
              }

              _S0 = __divsc3(1.0, 0.0, _S2, _S3);
              __asm
              {
                FCVT            H0, S0
                FCVT            H1, S1
              }

              *v40 = LOWORD(_S0);
              v40[1] = _S1;
              if (v8 == ++v30)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v58;
        }

        while (v58 != v57);
      }

      if (++v54 == v53)
      {
        return;
      }
    }
  }

  v59 = *(v7 - 16);
  if (v6 < 3)
  {
    v53 = 1;
    goto LABEL_7;
  }

  v57 = *(v7 - 24);
  if (v6 == 3)
  {
    v53 = 1;
    goto LABEL_8;
  }

  v53 = *(v7 - 32);
  if (v53 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *(v54 + v61 * v53 + v55);
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

void mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v47 = **a4;
  v48 = **a3;
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
    v49 = 1;
    v55 = 1;
    v8 = 1;
    goto LABEL_7;
  }

  v7 = *(v5 + 24) + 8 * v6;
  v8 = *(v7 - 8);
  if (v6 == 1)
  {
    v49 = 1;
    v55 = 1;
LABEL_7:
    v53 = 1;
LABEL_8:
    v50 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v9 = *(v4 + 16), v10 = v9 - 4, v9 < 4) || v10 > v9 - 1 || *(*(v4 + 24) + 8 * v10) == 1)
      {
        v11 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = *(*(v4 + 64) + 8 * v10);
        if (*(v5 + 58))
        {
          goto LABEL_20;
        }
      }

      v12 = *(v5 + 16);
      v13 = v12 - 4;
      if (v12 >= 4 && v13 <= v12 - 1 && *(*(v5 + 24) + 8 * v13) != 1)
      {
        v14 = *(*(v5 + 64) + 8 * v13);
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
LABEL_21:
      if (v53 >= 1)
      {
        v54 = 0;
        v52 = v48 + v11 * v50;
        v51 = v47 + v14 * v50;
        do
        {
          if ((*(v4 + 58) & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 3, v15 < 3) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
          {
            v17 = 0;
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          else
          {
            v17 = *(*(v4 + 64) + 8 * v16);
            if (*(v5 + 58))
            {
              goto LABEL_34;
            }
          }

          v18 = *(v5 + 16);
          v19 = v18 - 3;
          if (v18 >= 3 && v19 <= v18 - 1 && *(*(v5 + 24) + 8 * v19) != 1)
          {
            v20 = *(*(v5 + 64) + 8 * v19);
            goto LABEL_35;
          }

LABEL_34:
          v20 = 0;
LABEL_35:
          if (v55 >= 1)
          {
            v21 = 0;
            v22 = v52 + v17 * v54;
            v23 = v51 + v20 * v54;
            while (1)
            {
              if ((*(v4 + 58) & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 2, v24 < 2) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
              {
                v26 = 0;
                if (*(v5 + 58))
                {
                  break;
                }
              }

              else
              {
                v26 = *(*(v4 + 64) + 8 * v25);
                if (*(v5 + 58))
                {
                  break;
                }
              }

              v27 = *(v5 + 16);
              v28 = v27 - 2;
              if (v27 < 2 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
              {
                break;
              }

              v29 = *(*(v5 + 64) + 8 * v28);
              if (v8 >= 1)
              {
                goto LABEL_50;
              }

LABEL_37:
              if (++v21 == v55)
              {
                goto LABEL_23;
              }
            }

            v29 = 0;
            if (v8 < 1)
            {
              goto LABEL_37;
            }

LABEL_50:
            v30 = 0;
            v31 = v22 + v26 * v21;
            v32 = v23 + v29 * v21;
            while (2)
            {
              if ((*(v4 + 58) & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 1, v33 < 1) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
              {
                v35 = 0;
                if ((*(v5 + 58) & 1) == 0)
                {
LABEL_56:
                  v36 = *(v5 + 16);
                  v37 = v36 - 1;
                  if (v36 >= 1 && v37 <= v36 - 1 && *(*(v5 + 24) + 8 * v37) != 1)
                  {
                    v38 = *(*(v5 + 64) + 8 * v37);
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                v35 = *(*(v4 + 64) + 8 * v34);
                if ((*(v5 + 58) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v38 = 0;
LABEL_62:
              v39 = (v31 + v35 * v30 + *(v4 + 40));
              v40 = (v32 + v38 * v30 + *(v5 + 40));
              _S0 = __divsc3(1.0, 0.0, *v39, v39[1]);
              __asm
              {
                FCVT            H0, S0
                FCVT            H1, S1
              }

              *v40 = LOWORD(_S0);
              v40[1] = _S1;
              if (v8 == ++v30)
              {
                goto LABEL_37;
              }

              continue;
            }
          }

LABEL_23:
          ++v54;
        }

        while (v54 != v53);
      }

      if (++v50 == v49)
      {
        return;
      }
    }
  }

  v55 = *(v7 - 16);
  if (v6 < 3)
  {
    v49 = 1;
    goto LABEL_7;
  }

  v53 = *(v7 - 24);
  if (v6 == 3)
  {
    v49 = 1;
    goto LABEL_8;
  }

  v49 = *(v7 - 32);
  if (v49 >= 1)
  {
    goto LABEL_8;
  }
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          _S1 = 1.0 / *(v54 + v66 * v53 + v55);
          __asm { FCVT            H1, S1 }

          *(v57 + v58 * v53++ + v56) = LOWORD(_S1);
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

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)12>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = 1.0 / COERCE_FLOAT(*(v54 + v61 * v53 + v55) << 16);
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)12>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
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
    v61 = v14;
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

      result = v61;
      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v61);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v63;
        v38 = v63 + v35 * v19;
        v39 = v36 * v19 + v62;
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

          v60 = 1.0 / COERCE_FLOAT(*&v52[v58 * v51 + v53] << 16);
          result = (v55 + v59 * v51);
          *(result + v54) = HIWORD(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(LODWORD(v60) & 0xFF800000) * 0.0039062)));
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)12>(uint64_t **result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
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
    v61 = v14;
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

      result = v61;
      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v61);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v63;
        v38 = v63 + v35 * v19;
        v39 = v36 * v19 + v62;
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

          v60 = 1.0 / *&v52[v58 * v51 + v53];
          result = (v55 + v59 * v51);
          *(result + v54) = HIWORD(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(LODWORD(v60) & 0xFF800000) * 0.0039062)));
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)12>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      v50 = v43 + v49 * v39;
      v51 = *(v40 + v46 * v39 + v41);
      if ((v51 + 1) >= 3)
      {
        v51 = 0;
      }

      *(v50 + v42) = v51;
      if (v10 == ++v39)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)12>(uint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
              goto LABEL_51;
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

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v57 = *(*(v5 + 64) + 8 * v7);
          }

          v58 = v56 + v57 * v52;
          v59 = *(v53 + v62 * v52 + v54);
          result = (v59 + 1);
          if (result >= 3)
          {
            v59 = 0;
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

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)12>(uint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
              goto LABEL_51;
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

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v57 = *(*(v5 + 64) + 8 * v7);
          }

          v58 = v56 + v57 * v52;
          v59 = *(v53 + v62 * v52 + v54);
          result = (v59 + 1);
          if (result >= 3)
          {
            v59 = 0;
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)12>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      v45 = v38 + v44 * v36;
      v46 = v37[v41 * v36 + *(v4 + 40)];
      if ((v46 + 1) >= 3)
      {
        v46 = 0;
      }

      *(v45 + *(v5 + 40)) = v46;
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      *(v38 + v44 * v36 + *(v5 + 40)) = *&v37[v41 * v36 + *(v4 + 40)];
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = *(v54 + v61 * v53 + v55);
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4, float16x4_t a5)
{
  v5 = **result;
  v6 = **a2;
  v7 = **a3;
  v8 = **a4;
  v9 = *(v6 + 16);
  if (v9 < 1)
  {
    v9 = 1;
    v12 = 1;
    v11 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v10 = *(v6 + 24) + 8 * v9;
  v11 = *(v10 - 8);
  if (v9 == 1)
  {
    v12 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v12 = *(v10 - 16);
  if (v9 < 3)
  {
    v9 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v13 = *(v10 - 24);
  if (v9 == 3)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v9 = *(v10 - 32);
  if (v9 >= 1)
  {
LABEL_10:
    v14 = 0;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v15 = *(v5 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v5 + 24) + 8 * v16) == 1)
      {
        result = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v5 + 64) + 8 * v16);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v17 = *(v6 + 16);
      v18 = v17 - 4;
      if (v17 < 4 || v18 > v17 - 1 || *(*(v6 + 24) + 8 * v18) == 1)
      {
        break;
      }

      v19 = *(*(v6 + 64) + 8 * v18);
      if (v13 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v14 == v9)
      {
        return result;
      }
    }

    v19 = 0;
    if (v13 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v20 = 0;
    result = (v7 + result * v14);
    v21 = v8 + v19 * v14;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v22 = *(v5 + 16), v23 = v22 - 3, v22 < 3) || v23 > v22 - 1 || *(*(v5 + 24) + 8 * v23) == 1)
      {
        v24 = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        v24 = *(*(v5 + 64) + 8 * v23);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v25 = *(v6 + 16);
      v26 = v25 - 3;
      if (v25 < 3 || v26 > v25 - 1 || *(*(v6 + 24) + 8 * v26) == 1)
      {
        break;
      }

      v27 = *(*(v6 + 64) + 8 * v26);
      if (v12 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v20 == v13)
      {
        goto LABEL_11;
      }
    }

    v27 = 0;
    if (v12 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v28 = 0;
    v29 = result + v24 * v20;
    v30 = v21 + v27 * v20;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v31 = *(v5 + 16), v32 = v31 - 2, v31 < 2) || v32 > v31 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v34 = *(v6 + 16);
      v35 = v34 - 2;
      if (v34 < 2 || v35 > v34 - 1 || *(*(v6 + 24) + 8 * v35) == 1)
      {
        break;
      }

      v36 = *(*(v6 + 64) + 8 * v35);
      if (v11 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v28 == v12)
      {
        goto LABEL_25;
      }
    }

    v36 = 0;
    if (v11 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v37 = 0;
    v38 = &v29[v33 * v28];
    v39 = v30 + v36 * v28;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v40 = *(v5 + 16), v41 = v40 - 1, v40 < 1) || v41 > v40 - 1 || *(*(v5 + 24) + 8 * v41) == 1)
      {
        v42 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v42 = *(*(v5 + 64) + 8 * v41);
        if (*(v6 + 58))
        {
          goto LABEL_63;
        }
      }

      v43 = *(v6 + 16);
      v44 = v43 - 1;
      if (v43 < 1 || v44 > v43 - 1 || *(*(v6 + 24) + 8 * v44) == 1)
      {
LABEL_63:
        v45 = 0;
        goto LABEL_64;
      }

      v45 = *(*(v6 + 64) + 8 * v44);
LABEL_64:
      a5.i32[0] = *&v38[v42 * v37 + *(v5 + 40)];
      a5 = vcvtq_f32_f16(a5).u64[0];
      *(v39 + v45 * v37++ + *(v6 + 40)) = *&a5;
      if (v11 == v37)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          _H0 = *(v54 + v67 * v53 + v55);
          __asm { FCVT            S0, H0 }

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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      *(v38 + v44 * v36 + *(v5 + 40)) = *&v37[v41 * v36 + *(v4 + 40)];
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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

          *(v57 + v58 * v53 + v56) = *(v54 + v61 * v53 + v55);
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

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
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
      _S0 = *v45;
      _S1 = *(v45 + 1);
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      *v46 = _S0;
      v46[1] = _S1;
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}