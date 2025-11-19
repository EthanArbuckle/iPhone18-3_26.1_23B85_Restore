uint64_t Syn_filt(int **a1, unint64_t *a2, char **a3, unsigned int a4, unint64_t *a5, int a6)
{
  v68[1] = *MEMORY[0x1E69E9840];
  v67 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66[8] = v6;
  v66[9] = v6;
  v66[6] = v6;
  v66[7] = v6;
  v66[4] = v6;
  v66[5] = v6;
  v66[2] = v6;
  v66[3] = v6;
  v66[0] = v6;
  v66[1] = v6;
  v64 = v6;
  v65 = v6;
  v7 = *a5;
  v8 = a5[1];
  if (*a5 > v8)
  {
    goto LABEL_81;
  }

  if (v8 - v7 < 0x28)
  {
    goto LABEL_81;
  }

  if (a5[2] > v7)
  {
    goto LABEL_81;
  }

  v9 = *v7;
  v10 = *(v7 + 16);
  *&v66[0] = *(v7 + 32);
  v64 = v9;
  v65 = v10;
  v11 = *a1;
  v12 = (*a1 + 1);
  if (v12 > a1[1] || v11 > v12 || v11 < a1[2])
  {
    goto LABEL_81;
  }

  v13 = v66 + 4 * a4 + 8;
  if (v66 + 8 < v13)
  {
    v14 = 0;
    v58 = 0;
    v59 = *v11;
    v61 = a2[1];
    v62 = a2[2];
    v60 = *a2;
    while (1)
    {
      v15 = (v60 + v14);
      v16 = v60 + v14 + 4;
      *a2 = v16;
      v17 = v16 > v61 || v15 > v16;
      v18 = !v17 && v15 >= v62;
      if (!v18)
      {
        break;
      }

      v19 = &v64 + v14;
      v20 = (v66 + v14 + 4);
      if ((v66 + v14 + 4) < &v64)
      {
        break;
      }

      v21 = (v19 + 40);
      if (v19 + 40 > v68)
      {
        break;
      }

      if (v20 > v21)
      {
        break;
      }

      v22 = *a1;
      v23 = a1[1];
      v24 = *a1 + 2;
      if (v24 > v23)
      {
        break;
      }

      v25 = v22 + 1;
      if (v22 + 1 > v24)
      {
        break;
      }

      if (v25 < a1[2])
      {
        break;
      }

      if ((v66 + v14) < &v64)
      {
        break;
      }

      v26 = v22 + 3;
      if ((v22 + 3) > v23)
      {
        break;
      }

      if (v24 > v26)
      {
        break;
      }

      if ((&v65 + v14 + 12) < &v64)
      {
        break;
      }

      v27 = v22 + 4;
      if ((v22 + 4) > v23)
      {
        break;
      }

      if (v26 > v27)
      {
        break;
      }

      if ((&v65 + v14 + 8) < &v64)
      {
        break;
      }

      v28 = v22 + 5;
      if ((v22 + 5) > v23)
      {
        break;
      }

      if (v27 > v28)
      {
        break;
      }

      if ((&v65 + v14 + 4) < &v64)
      {
        break;
      }

      v29 = v22 + 6;
      if ((v22 + 6) > v23)
      {
        break;
      }

      if (v28 > v29)
      {
        break;
      }

      v30 = (&v64 + v14 + 16);
      if (v30 < &v64)
      {
        break;
      }

      v31 = v22 + 7;
      if ((v22 + 7) > v23)
      {
        break;
      }

      if (v29 > v31)
      {
        break;
      }

      v32 = (&v64 + v14 + 12);
      if (v32 < &v64)
      {
        break;
      }

      v33 = v22 + 8;
      if ((v22 + 8) > v23)
      {
        break;
      }

      if (v31 > v33)
      {
        break;
      }

      v34 = (&v64 + v14 + 8);
      if (v34 < &v64)
      {
        break;
      }

      v35 = v22 + 9;
      if ((v22 + 9) > v23)
      {
        break;
      }

      if (v33 > v35)
      {
        break;
      }

      v36 = (&v64 + v14 + 4);
      if (v36 < &v64)
      {
        break;
      }

      v37 = v22 + 10;
      if ((v22 + 10) > v23)
      {
        break;
      }

      if (v35 > v37)
      {
        break;
      }

      if ((&v64 + v14) < &v64)
      {
        break;
      }

      if (v36 > v68)
      {
        break;
      }

      v38 = (v22 + 11);
      if (v38 > v23 || v37 > v38)
      {
        break;
      }

      v39 = *v15 * v59 - (*v25 * *v20 + *v24 * *(v66 + v14) + *v26 * *(&v65 + v14 + 12) + *v27 * *(&v65 + v14 + 8) + *v28 * *(&v65 + v14 + 4) + *v29 * *v30 + *v31 * *v32 + *v33 * *v34 + *v35 * *v36 + *v37 * *(&v64 + v14));
      if (v39 >= 0)
      {
        v40 = *v15 * v59 - (*v25 * *v20 + *v24 * *(v66 + v14) + *v26 * *(&v65 + v14 + 12) + *v27 * *(&v65 + v14 + 8) + *v28 * *(&v65 + v14 + 4) + *v29 * *v30 + *v31 * *v32 + *v33 * *v34 + *v35 * *v36 + *v37 * *(&v64 + v14));
      }

      else
      {
        v40 = *v25 * *v20 + *v24 * *(v66 + v14) + *v26 * *(&v65 + v14 + 12) + *v27 * *(&v65 + v14 + 8) + *v28 * *(&v65 + v14 + 4) + *v29 * *v30 + *v31 * *v32 + *v33 * *v34 + *v35 * *v36 + *v37 * *(&v64 + v14) - *v15 * v59;
      }

      if (v40 > 0x7FFFFFE)
      {
        v42 = v66 + v14 + 12;
        if (v39 > 0)
        {
          v41 = 0x7FFF;
        }

        else
        {
          v41 = -32768;
        }

        if (v42 > v68 || v21 > v42)
        {
          break;
        }

        v58 = 1;
      }

      else
      {
        if ((v66 + v14 + 12) > v68 || v21 > (v66 + v14 + 12))
        {
          break;
        }

        v41 = (v39 + 2048) >> 12;
      }

      *v21 = v41;
      v14 += 4;
      if (v66 + v14 + 8 >= v13)
      {
        goto LABEL_67;
      }
    }

LABEL_81:
    __break(0x5519u);
  }

  v58 = 0;
LABEL_67:
  v44 = *a3;
  v43 = a3[1];
  v18 = v43 >= *a3;
  v45 = v43 - *a3;
  if (!v18)
  {
    goto LABEL_81;
  }

  if (a3[2] > v44)
  {
    goto LABEL_81;
  }

  v46 = 4 * a4;
  if (v45 < v46)
  {
    goto LABEL_81;
  }

  memcpy(*a3, v66 + 8, 4 * a4);
  if (v44 > &v44[v46])
  {
    goto LABEL_81;
  }

  if (a6)
  {
    v47 = a3[1];
    v48 = &(*a3)[4 * a4 - 40];
    if (v48 > v47)
    {
      goto LABEL_81;
    }

    if (v47 - v48 < 0x28)
    {
      goto LABEL_81;
    }

    if (a3[2] > v48)
    {
      goto LABEL_81;
    }

    v49 = *a5;
    v50 = a5[1];
    if (*a5 > v50)
    {
      goto LABEL_81;
    }

    if (a5[2] > v49)
    {
      goto LABEL_81;
    }

    if (v50 - v49 < 0x28)
    {
      goto LABEL_81;
    }

    v51 = *v48;
    v52 = *&(*a3)[4 * a4 - 24];
    *(v49 + 32) = *&(*a3)[4 * a4 - 8];
    *v49 = v51;
    *(v49 + 16) = v52;
    if (v49 >= v49 + 40)
    {
      goto LABEL_81;
    }
  }

  return v58;
}

double Syn_filt_overflow(int *a1, uint64_t a2, _OWORD *a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v37 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v36[32] = v6;
  *&v36[16] = v6;
  *v36 = v6;
  v35 = v6;
  v34 = v6;
  v33 = v6;
  v32 = v6;
  v31 = v6;
  v30 = v6;
  v29 = v6;
  v7 = *(a4 + 16);
  v27[0] = *a4;
  v27[1] = v7;
  v28 = *(a4 + 32);
  v8 = *a1;
  v9 = &v29;
  do
  {
    v10 = *(a2 + 4 * v5) * v8;
    v11 = v4;
    for (i = 1; i != 11; ++i)
    {
      v13 = &v28 + v11 + 4;
      v14 = &v29 + v11;
      if (&v28 + v11 + 4 < v27 || v14 > &v37 || v13 > v14)
      {
        goto LABEL_31;
      }

      v17 = v10 - *v13 * a1[i];
      if (v17 <= -1073741824)
      {
        v10 = -1073741824;
      }

      else
      {
        v10 = v17;
      }

      if (v10 >= 0x3FFFFFFF)
      {
        v10 = 0x3FFFFFFF;
      }

      v11 -= 4;
    }

    if (v10 >= 0)
    {
      v18 = v10;
    }

    else
    {
      v18 = -v10;
    }

    if (v18 > 0x7FFE7FF)
    {
      if (v17 > 0)
      {
        v19 = 0x7FFF;
      }

      else
      {
        v19 = -32768;
      }

      if (v9 < v27 || v9 + 1 > &v37)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v9 < v27 || v9 + 1 > &v37)
      {
        goto LABEL_31;
      }

      v19 = (v10 + 2048) >> 12;
    }

    *v9++ = v19;
    ++v5;
    v4 += 4;
  }

  while (v5 != 40);
  v20 = *v36;
  a3[6] = v35;
  a3[7] = v20;
  v21 = *&v36[32];
  a3[8] = *&v36[16];
  a3[9] = v21;
  v22 = v32;
  a3[2] = v31;
  a3[3] = v22;
  v23 = v34;
  a3[4] = v33;
  a3[5] = v23;
  v24 = v30;
  *a3 = v29;
  a3[1] = v24;
  if (a3 + 10 < a3 || (result = *&v36[8], v26 = *&v36[24], *a4 = *&v36[8], *(a4 + 16) = v26, *(a4 + 32) = *&v36[40], a4 + 40 < a4))
  {
LABEL_31:
    __break(0x5519u);
  }

  return result;
}

unint64_t energy_new(unint64_t result)
{
  v1 = result + 160;
  v2 = (result + 8);
  v3 = *result * *result;
  v4 = -2;
  while (1)
  {
    v5 = *(v2 - 1) * *(v2 - 1);
    if (v5 >= (v3 ^ 0x7FFFFFFF))
    {
      break;
    }

    v6 = v2 + 1;
    if ((v2 + 1) > v1 || v2 > v6)
    {
      goto LABEL_43;
    }

    v7 = v5 + v3;
    v8 = *v2 * *v2;
    if (v8 >= (v7 ^ 0x7FFFFFFF))
    {
      break;
    }

    if (v6 < result || (v2 + 2) > v1 || v6 > v2 + 2)
    {
      goto LABEL_43;
    }

    v9 = v8 + v7;
    v10 = *v6 * *v6;
    v11 = v10 >= (v9 ^ 0x7FFFFFFF);
    v3 = v10 + v9;
    if (v11 || v3 >> 30 != 0)
    {
      break;
    }

    v2 += 3;
    v4 += 3;
    if (v4 > 0x24)
    {
      return v3 >> 3;
    }
  }

  v13 = 0;
  v14 = result + 32;
  v15 = -8;
  while (1)
  {
    v16 = v14 - 24;
    if (v14 - 24 > v1 || v14 - 28 > v16)
    {
      break;
    }

    if (v16 < result)
    {
      break;
    }

    v18 = v14 - 20;
    if (v14 - 20 > v1)
    {
      break;
    }

    if (v16 > v18)
    {
      break;
    }

    if (v18 < result)
    {
      break;
    }

    v19 = v14 - 16;
    if (v14 - 16 > v1)
    {
      break;
    }

    if (v18 > v19)
    {
      break;
    }

    if (v19 < result)
    {
      break;
    }

    v20 = v14 - 12;
    if (v14 - 12 > v1)
    {
      break;
    }

    if (v19 > v20)
    {
      break;
    }

    if (v20 < result)
    {
      break;
    }

    v21 = v14 - 8;
    if (v14 - 8 > v1)
    {
      break;
    }

    if (v20 > v21)
    {
      break;
    }

    if (v21 < result)
    {
      break;
    }

    v22 = v14 - 4;
    if (v14 - 4 > v1 || v21 > v22 || v22 < result || v14 > v1 || v22 > v14)
    {
      break;
    }

    v23 = vshrq_n_s32(*(v14 - 32), 2uLL);
    v24 = vshrq_n_s32(*(v14 - 16), 2uLL);
    v13 += vaddvq_s32(vmlaq_s32(vmulq_s32(v24, v24), v23, v23));
    v15 += 8;
    v14 += 32;
    if (v15 >= 0x20)
    {
      if (v13 >> 30)
      {
        return 0x7FFFFFFFLL;
      }

      else
      {
        return 2 * v13;
      }
    }
  }

LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t Inv_sqrt(uint64_t result)
{
  if (result < 1)
  {
    return 0x3FFFFFFFLL;
  }

  v1 = __clz(result) ^ 0x1F;
  v2 = 30 - v1;
  if (result >> 30)
  {
    v2 = 0;
  }

  v3 = result << v2;
  if (result >> 30)
  {
    v4 = 30;
  }

  else
  {
    v4 = v1;
  }

  v5 = v3 >> ((v4 & 1) == 0);
  v6 = &inv_sqrt_table[4 * (v5 >> 25)];
  v7 = v6 - 64;
  v8 = v6 - 60;
  if (v6 - 64 >= inv_sqrt_table && v8 <= gamma3 && v7 <= v8)
  {
    v11 = v6 - 56;
    if (v11 <= gamma3 && v8 <= v11)
    {
      return ((((v5 >> 9) & 0xFFFE) * (*v8 - *v7) + (*v7 << 16)) >> ((v4 >> 1) + 1));
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t Lsf_lsp(uint64_t result, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = &cos_table[*(result + v2) >> 8];
    v4 = v3 + 1;
    v5 = v3 + 2;
    v6 = v3 + 1 < cos_table || v5 > acos_slope;
    v7 = v6 || v4 > v5;
    v8 = !v7 && v3 >= cos_table;
    if (!v8 || v3 > v4)
    {
      break;
    }

    *(a2 + v2) = *v3 + (((v3[1] - *v3) * *(result + v2)) >> 8);
    v2 += 4;
    if (v2 == 40)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t D_plsf_3(unint64_t a1, unsigned int a2, int a3, __int16 *a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v5;
  v45 = v5;
  if (a3)
  {
    for (i = 0; i != 10; ++i)
    {
      v7 = (a1 + i * 4 + 40);
      v8 = a1 + i * 4 + 44;
      if (v8 > a1 + 80 || v7 > v8)
      {
        goto LABEL_63;
      }

      *(&v44 + i * 4) = ((3277 * mean_lsf_3[i]) >> 15) + ((29491 * *v7) >> 15);
    }

    if (a2 == 8)
    {
      for (j = 0; j != 10; ++j)
      {
        *(a1 + j * 4) = *(&v44 + j * 4) - *(a1 + j * 4) - mean_lsf_3[j];
      }
    }

    else
    {
      for (k = 0; k != 10; ++k)
      {
        *(a1 + k * 4) = *(&v44 + k * 4) - (mean_lsf_3[k] + ((pred_fac[k] * *(a1 + k * 4)) >> 15));
      }
    }
  }

  else
  {
    v11 = &dico1_lsf_3;
    v12 = mr515_3_lsf;
    v13 = dico2_lsf_3;
    v14 = &mr795_1_lsf;
    v15 = &mr795_1_lsf;
    v16 = &mr795_1_lsf + 6144;
    if (a2 != 5)
    {
      v16 = dico2_lsf_3;
      v15 = &dico1_lsf_3;
    }

    if (a2 >= 2)
    {
      v14 = &mean_lsf_5;
      v12 = &dico3_lsf_3;
      v13 = v16;
      v11 = v15;
    }

    v17 = &v11[12 * *a4];
    v18 = v17 + 4;
    if (v17 < v11 || v18 > v13 || v17 > v18)
    {
      goto LABEL_63;
    }

    v21 = a4[1];
    v22 = v17 + 8;
    LODWORD(v47) = *v17;
    if (v17 + 8 > v13 || v18 > v22)
    {
      goto LABEL_63;
    }

    DWORD1(v47) = *(v17 + 1);
    v24 = v17 + 12;
    if (v24 > v13 || v22 > v24)
    {
      goto LABEL_63;
    }

    DWORD2(v47) = *v22;
    v26 = &dico2_lsf_3[3 * (v21 << (a2 < 2))];
    if (v26 < dico2_lsf_3)
    {
      goto LABEL_63;
    }

    v27 = v26 + 1;
    if (v26 + 1 > mr515_3_lsf)
    {
      goto LABEL_63;
    }

    if (v26 > v27)
    {
      goto LABEL_63;
    }

    v28 = a4[2];
    v29 = v26 + 2;
    HIDWORD(v47) = *v26;
    if (v26 + 2 > mr515_3_lsf)
    {
      goto LABEL_63;
    }

    if (v27 > v29)
    {
      goto LABEL_63;
    }

    LODWORD(v48) = v26[1];
    v30 = v26 + 3;
    if (v30 > mr515_3_lsf)
    {
      goto LABEL_63;
    }

    if (v29 > v30)
    {
      goto LABEL_63;
    }

    DWORD1(v48) = *v29;
    v31 = &v12[16 * v28];
    if (v31 < v12)
    {
      goto LABEL_63;
    }

    v32 = v31 + 4;
    if (v31 + 4 > v14)
    {
      goto LABEL_63;
    }

    if (v31 > v32)
    {
      goto LABEL_63;
    }

    v33 = v31 + 8;
    DWORD2(v48) = *v31;
    if (v31 + 8 > v14)
    {
      goto LABEL_63;
    }

    if (v32 > v33)
    {
      goto LABEL_63;
    }

    HIDWORD(v48) = *(v31 + 1);
    v34 = (v31 + 12);
    if (v31 + 12 > v14)
    {
      goto LABEL_63;
    }

    if (v33 > v34)
    {
      goto LABEL_63;
    }

    LODWORD(v49) = *(v31 + 2);
    v35 = (v31 + 16);
    if (v35 > v14 || v34 > v35)
    {
      goto LABEL_63;
    }

    HIDWORD(v49) = *v34;
    if (a2 == 8)
    {
      for (m = 0; m != 10; ++m)
      {
        *(&v44 + m * 4) = mean_lsf_3[m] + *(&v47 + m * 4) + *(a1 + m * 4);
      }
    }

    else
    {
      for (n = 0; n != 10; ++n)
      {
        *(&v44 + n * 4) = mean_lsf_3[n] + *(&v47 + n * 4) + ((pred_fac[n] * *(a1 + n * 4)) >> 15);
      }
    }

    v39 = v48;
    *a1 = v47;
    *(a1 + 16) = v39;
    *(a1 + 32) = v49;
    if (a1 + 40 < a1)
    {
LABEL_63:
      __break(0x5519u);
    }
  }

  v40 = 0;
  v41 = 205;
  do
  {
    if (*(&v44 + v40) > v41)
    {
      v41 = *(&v44 + v40);
    }

    *(&v44 + v40) = v41;
    v41 += 205;
    v40 += 4;
  }

  while (v40 != 40);
  v42 = v45;
  *(a1 + 40) = v44;
  *(a1 + 56) = v42;
  *(a1 + 72) = v46;
  if (a1 + 40 > a1 + 80)
  {
    goto LABEL_63;
  }

  return Lsf_lsp(&v44, a5);
}

uint64_t Lsp_Az(uint64_t a1, _DWORD *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40;
  memset(v26, 170, sizeof(v26));
  v23 = a1;
  v24 = a1 + 40;
  v25 = a1;
  Get_lsp_pol(&v23, &v26[3]);
  v23 = a1 + 4;
  v24 = v4;
  v25 = a1;
  result = Get_lsp_pol(&v23, v26);
  v6 = 6;
  do
  {
    v7 = (v6 - 1);
    v8 = (v6 - 2);
    v9 = &v26[3] + 4 * v8;
    v10 = v9 + 4;
    v12 = v9 < &v26[3] || v10 > &v27 || v9 > v10;
    v13 = &v26[3] + v7;
    v14 = !v12 && v13 >= &v26[3];
    if (!v14 || (*v13 += *(&v26[3] + v8), v15 = v26 + v8, v15 < v26) || v15 + 1 > &v26[3] || v15 > v15 + 1 || (v16 = v26 + v7, v16 < v26))
    {
LABEL_24:
      __break(0x5519u);
    }

    *v16 -= *v15;
    v6 = v7;
  }

  while (v7 > 1);
  v17 = 0;
  *a2 = 4096;
  v18 = 1;
  do
  {
    v19 = *(&v26[3] + v18 * 4);
    v20 = *(v26 + v18 * 4);
    a2[v18] = (((v20 + v19) >> 12) & 1) + ((v20 + v19) >> 13);
    v21 = &a2[v17 + 10];
    if (v21 < a2)
    {
      goto LABEL_24;
    }

    v22 = &a2[v17 + 11];
    if (v22 > (a2 + 11) || v21 > v22)
    {
      goto LABEL_24;
    }

    *v21 = (((v19 - v20) >> 12) & 1) + ((v19 - v20) >> 13);
    --v17;
    ++v18;
  }

  while (v17 != -5);
  return result;
}

uint64_t Log2_norm(uint64_t result, int a2, _DWORD *a3, int *a4)
{
  if (result <= 0)
  {
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    v4 = &log2_table[4 * (result >> 25)];
    v5 = v4 - 128;
    v6 = v4 - 124;
    v8 = v4 - 128 < log2_table || v6 > pow2_table || v5 > v6;
    if (v8 || (v9 = v4 - 120, v9 > pow2_table) || v6 > v9)
    {
      __break(0x5519u);
    }

    else
    {
      *a4 = ((*v6 - *v5) * ((result >> 9) & 0xFFFE) + (*v5 << 16)) >> 16;
      *a3 = 30 - a2;
    }
  }

  return result;
}

uint64_t Pow2(uint64_t result, int a2)
{
  v2 = &pow2_table[4 * (a2 >> 10)];
  v3 = v2 + 4;
  v5 = v2 < pow2_table || v3 > window_200_40 || v2 >= v3;
  v6 = v2 + 8;
  if (v5 || v6 > window_200_40 || v3 > v6)
  {
    __break(0x5519u);
  }

  else if (result < -1)
  {
    return 0;
  }

  else
  {
    v9 = ((a2 & 0x3FF) << 6) * (*(v2 + 1) - *v2) + (*v2 << 16);
    return (v9 >> (30 - result)) + ((v9 >> (29 - result)) & 1);
  }

  return result;
}

void *Pred_lt_3or6_40(void *result, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = result[1];
  v6 = 6 - (a3 << (a4 != 0));
  v7 = -4;
  if (a3 <= 0)
  {
    v7 = 0;
  }

  v8 = *result + 4 * -a2 + v7;
  if (a3 <= 0)
  {
    v6 = -a3 << (a4 != 0);
  }

  v9 = &inter6[4 * v6];
  v10 = &inter6[4 * (6 - v6)];
  v13 = v9 + 4 > startPos || v9 > v9 + 4 || v9 < inter6;
  v187 = v13;
  v14 = v9 + 24;
  v15 = v9 + 28 > startPos || v14 > v9 + 28;
  v167 = v9 + 24;
  v17 = v15 || v14 < inter6;
  v186 = v17;
  v18 = v9 + 48;
  v19 = v9 + 52 > startPos || v18 > v9 + 52;
  v166 = v9 + 48;
  v21 = v19 || v18 < inter6;
  v185 = v21;
  v22 = v9 + 72;
  v23 = v9 + 76 > startPos || v22 > v9 + 76;
  v165 = v9 + 72;
  v25 = v23 || v22 < inter6;
  v184 = v25;
  v26 = v9 + 96;
  v27 = v9 + 100 > startPos || v26 > v9 + 100;
  v164 = v9 + 96;
  v29 = v27 || v26 < inter6;
  v183 = v29;
  v30 = v9 + 120;
  v31 = v9 + 124 > startPos || v30 > v9 + 124;
  v163 = v9 + 120;
  v33 = v31 || v30 < inter6;
  v182 = v33;
  v34 = v9 + 144;
  v35 = v9 + 148 > startPos || v34 > v9 + 148;
  v162 = v9 + 144;
  v37 = v35 || v34 < inter6;
  v181 = v37;
  v38 = v9 + 168;
  v39 = v9 + 172 > startPos || v38 > v9 + 172;
  v161 = v9 + 168;
  v41 = v39 || v38 < inter6;
  v180 = v41;
  v42 = v9 + 192;
  v43 = v9 + 196 > startPos || v42 > v9 + 196;
  v160 = v9 + 192;
  v45 = v43 || v42 < inter6;
  v179 = v45;
  v46 = v9 + 216;
  v168 = v9;
  v49 = v9 + 220 > startPos || v46 > v9 + 220 || v46 < inter6;
  v178 = v49;
  v52 = v10 + 4 > startPos || v10 > v10 + 4 || v10 < inter6;
  v177 = v52;
  v53 = v10 + 24;
  v54 = v10 + 28 > startPos || v53 > v10 + 28;
  v159 = v46;
  v56 = v54 || v53 < inter6;
  v176 = v56;
  v57 = v10 + 48;
  v60 = v10 + 52 > startPos || v57 > v10 + 52 || v57 < inter6;
  v175 = v60;
  v61 = v10 + 72;
  v64 = v10 + 76 > startPos || v61 > v10 + 76 || v61 < inter6;
  v174 = v64;
  v65 = v10 + 96;
  v68 = v10 + 100 > startPos || v65 > v10 + 100 || v65 < inter6;
  v173 = v68;
  v69 = v10 + 120;
  v72 = v10 + 124 > startPos || v69 > v10 + 124 || v69 < inter6;
  v172 = v72;
  v73 = v10 + 144;
  v76 = v10 + 148 > startPos || v73 > v10 + 148 || v73 < inter6;
  v171 = v76;
  v77 = v10 + 168;
  v80 = v10 + 172 > startPos || v77 > v10 + 172 || v77 < inter6;
  v170 = v80;
  v81 = v10 + 192;
  v84 = v10 + 196 > startPos || v81 > v10 + 196 || v81 < inter6;
  v169 = v84;
  v85 = v10 + 216;
  v87 = v10 + 220 <= startPos && v85 <= v10 + 220 && v85 >= inter6;
  v88 = result[2];
  v89 = !v87;
  while (1)
  {
    v90 = (v8 + v4);
    v91 = (v8 + v4 + 4);
    v92 = v91 > v5 || v90 > v91;
    v93 = !v92 && v90 >= v88;
    v94 = !v93;
    if (v94 || v187)
    {
      break;
    }

    v96 = v90 - 1;
    v95 = *v90;
    v97 = v90 >= 4 && v96 >= v88;
    v98 = !v97;
    if ((v98 | v186))
    {
      break;
    }

    v99 = v8 + v4;
    v100 = (v8 + v4 - 8);
    v101 = v100 <= v96 && v100 >= v88;
    v102 = !v101;
    if ((v102 | v185))
    {
      break;
    }

    v103 = (v99 - 12);
    v104 = v99 - 12 <= v100 && v103 >= v88;
    v105 = !v104;
    if ((v105 | v184))
    {
      break;
    }

    v106 = v8 + v4;
    v107 = (v8 + v4 - 16);
    v108 = v107 <= v103 && v107 >= v88;
    v109 = !v108;
    if ((v109 | v183))
    {
      break;
    }

    v110 = (v106 - 20);
    v111 = v106 - 20 <= v107 && v110 >= v88;
    v112 = !v111;
    if ((v112 | v182))
    {
      break;
    }

    v113 = (v8 + v4 - 24);
    v114 = v113 <= v110 && v113 >= v88;
    v115 = !v114;
    if ((v115 | v181))
    {
      break;
    }

    v116 = (v8 + v4 - 28);
    v117 = v116 <= v113 && v116 >= v88;
    v118 = !v117;
    if ((v118 | v180))
    {
      break;
    }

    v119 = v8 + v4;
    v120 = (v8 + v4 - 32);
    v121 = v120 <= v116 && v120 >= v88;
    v122 = !v121;
    if ((v122 | v179))
    {
      break;
    }

    v123 = (v119 - 36);
    v124 = v119 - 36 <= v120 && v123 >= v88;
    v125 = !v124;
    if (v125 || v178)
    {
      break;
    }

    v126 = (v8 + v4 + 8);
    v127 = v126 > v5 || v91 > v126;
    v128 = v127;
    if (v128 || v177)
    {
      break;
    }

    v129 = (v8 + v4 + 12);
    v130 = v129 > v5 || v126 > v129;
    v131 = v130;
    if ((v131 | v176))
    {
      break;
    }

    v132 = v8 + v4;
    v133 = (v8 + v4 + 16);
    v134 = v133 > v5 || v129 > v133;
    v135 = v134;
    if (v135 || v175)
    {
      break;
    }

    v136 = (v132 + 20);
    v137 = v132 + 20 > v5 || v133 > v136;
    v138 = v137;
    if (v138 || v174)
    {
      break;
    }

    v139 = (v8 + v4 + 24);
    v140 = v139 > v5 || v136 > v139;
    v141 = v140;
    if (v141 || v173)
    {
      break;
    }

    v142 = (v8 + v4 + 28);
    v143 = v142 > v5 || v139 > v142;
    v144 = v143;
    if (v144 || v172)
    {
      break;
    }

    v145 = v8 + v4;
    v146 = (v8 + v4 + 32);
    v147 = v146 > v5 || v142 > v146;
    v148 = v147;
    if (v148 || v171)
    {
      break;
    }

    v149 = (v145 + 36);
    v150 = v145 + 36 > v5 || v146 > v149;
    v151 = v150;
    if (v151 || v170)
    {
      break;
    }

    v152 = (v8 + v4 + 40);
    v153 = v152 > v5 || v149 > v152;
    v154 = v153;
    if (v154 || v169)
    {
      break;
    }

    v155 = v8 + v4 + 44;
    v156 = v155 > v5 || v152 > v155;
    v157 = v156;
    if ((v157 | v89))
    {
      break;
    }

    v158 = (*result + v4);
    if ((v158 + 1) > result[1] || v158 > v158 + 1 || v158 < v88)
    {
      break;
    }

    *v158 = (*v168 * v95 + *v167 * *v96 + *v166 * *v100 + *v165 * *v103 + *v164 * *v107 + *v163 * *v110 + *v162 * *v113 + *v161 * *v116 + *v160 * *v120 + *v159 * *v123 + *v10 * *v91 + *(v10 + 6) * *v126 + *(v10 + 12) * *v129 + *(v10 + 18) * *v133 + *(v10 + 24) * *v136 + *(v10 + 30) * *v139 + *(v10 + 36) * *v142 + *(v10 + 42) * *v146 + *(v10 + 48) * *v149 + *(v10 + 54) * *v152 + 0x4000) >> 15;
    v4 += 4;
    if (v4 == 160)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t decompress10(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unint64_t a6)
{
  if (result >= 124)
  {
    v6 = 124;
  }

  else
  {
    v6 = result;
  }

  v7 = (a6 + 4 * a3);
  if (v7 < a6 || (v8 = a6 + 32, (v7 + 1) > a6 + 32) || v7 > v7 + 1 || (v9 = v6 / 25, v10 = v6 % 25, v11 = v6 % 25 / 5, *v7 = a2 & 1 | (2 * (v10 - 5 * v11)), v12 = (a6 + 4 * a4), v12 < a6) || (v12 + 1) > v8 || v12 > v12 + 1 || (*v12 = (a2 >> 1) & 1 | (2 * v11), v13 = (a6 + 4 * a5), v13 < a6) || (v13 + 1) > v8 || v13 > v13 + 1)
  {
    __break(0x5519u);
  }

  else
  {
    *v13 = 2 * v9 + (a2 >> 2);
  }

  return result;
}

uint64_t ec_gain_pitch(unint64_t a1, int a2, int *a3)
{
  result = gmed_n(a1, 5u);
  v7 = &pdown[a2];
  v8 = v7 + 1;
  if (v7 < pdown || v8 > qua_gain_pitch || v7 >= v8)
  {
    __break(0x5519u);
  }

  else
  {
    v11 = *(a1 + 20);
    if (result < v11)
    {
      v11 = result;
    }

    *a3 = (v11 * *v7) >> 15;
  }

  return result;
}

_DWORD *ec_gain_code(unint64_t a1, _DWORD *a2, int a3, int *a4)
{
  result = gmed_n(a1, 5u);
  v9 = &cdown[a3];
  v10 = v9 + 1;
  if (v9 >= cdown && v10 <= qua_gain_code && v9 <= v10)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(a1 + 20);
    if (result < v15)
    {
      v15 = result;
    }

    *a4 = (v15 * *v9) >> 15;
    while (1)
    {
      v16 = &a2[v13 + 4];
      v17 = &a2[v13 + 5];
      if (v17 > (a2 + 8) || v16 > v17)
      {
        break;
      }

      v14 += *v16;
      if (++v13 == 4)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v20 += a2[v19];
          if (v20 >= 0x7FFF)
          {
            v20 = 0x7FFF;
          }

          if (v20 <= -32768)
          {
            v20 = -32768;
          }

          ++v19;
        }

        while (v19 != 4);
        v21 = v14 >> 2;
        if (v21 <= -2381)
        {
          LOWORD(v21) = -2381;
        }

        return gc_pred_update(a2, v21, v20 >> 2);
      }
    }
  }

  __break(0x5519u);
  return result;
}

int32x4_t *Dec_gain(int32x4_t *result, int a2, int a3, uint64_t a4, int a5, int *a6, int *a7)
{
  v10 = result;
  v39 = -1431655766;
  v40 = -1431655766;
  v11 = 4 * a3;
  if ((a2 - 3) < 2)
  {
    goto LABEL_4;
  }

  if (!a2)
  {
    v17 = &table_gain_MR475[(v11 | 2) - 2 * a5];
    v18 = v17 + 1;
    if (v17 >= table_gain_MR475 && v18 <= table_gain_lowrates && v17 <= v18)
    {
      v22 = *v17;
      v21 = v17 + 2;
      *a6 = v22;
      if (v21 <= table_gain_lowrates && v18 <= v21)
      {
        v24 = *v18;
        if (*v18)
        {
          v25 = -1;
          v26 = *v18;
          do
          {
            v27 = v26 ^ (2 * v26);
            v26 *= 2;
            ++v25;
          }

          while ((v27 & 0x80000000) == 0);
        }

        else
        {
          v25 = 0;
        }

        Log2_norm((v24 << v25), v25, &v39, &v40);
        v39 -= 12;
        v30 = (v40 >> 5) + (v39 << 10) + ((v40 >> 4) & 1);
        v31 = (((49320 * v39 + ((24660 * v40) >> 14)) << 13) + 0x8000) >> 16;
        goto LABEL_40;
      }
    }

LABEL_49:
    __break(0x5519u);
    return result;
  }

  if (a2 == 6)
  {
LABEL_4:
    v12 = &table_gain_highrates[v11];
    v13 = (v12 + 1);
    v14 = table_gain_MR475;
    if (v12 < table_gain_highrates || v13 > table_gain_MR475 || v12 > v13)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v12 = &table_gain_lowrates[4 * a3];
    if (v12 < table_gain_lowrates)
    {
      goto LABEL_49;
    }

    v13 = (v12 + 1);
    v14 = &pred_MR122;
    if (v12 + 1 > &pred_MR122 || v12 > v13)
    {
      goto LABEL_49;
    }
  }

  v28 = v12 + 2;
  *a6 = *v12;
  if (v12 + 2 > v14)
  {
    goto LABEL_49;
  }

  if (v13 > v28)
  {
    goto LABEL_49;
  }

  v29 = v12 + 3;
  if (v12 + 3 > v14 || v28 > v29 || v12 + 4 > v14 || v29 > v12 + 4)
  {
    goto LABEL_49;
  }

  v24 = v12[1];
  v30 = *v28;
  v31 = *v29;
LABEL_40:
  gc_pred(v10, a2, a4, &v39, &v40, 0, 0);
  v32 = Pow2(14, v40) * v24;
  v33 = v32 << (v39 - 9);
  v34 = v33 >> (v39 - 9);
  v35 = v33 >> 16;
  if (v34 == v32)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0x7FFF;
  }

  v37 = v32 >> (25 - v39);
  if (v39 <= 10)
  {
    v38 = v37;
  }

  else
  {
    v38 = v36;
  }

  *a7 = v38;

  return gc_pred_update(v10, v30, v31);
}

uint64_t d_gain_code(int32x4_t *a1, int a2, int a3, uint64_t a4, unsigned int *a5)
{
  v23 = -1431655766;
  v24 = -1431655766;
  gc_pred(a1, a2, a4, &v24, &v23, &v22, &v21);
  v9 = &qua_gain_code[3 * a3];
  if (a2 == 7)
  {
    result = Pow2(v24, v23);
    if (v9 < qua_gain_code)
    {
      goto LABEL_33;
    }

    v11 = v9 + 1;
    if (v9 + 1 > ph_imp_mid || v9 > v11)
    {
      goto LABEL_33;
    }

    v12 = 16 * result;
    if (result >= 2048)
    {
      v12 = 0x7FFF;
    }

    v13 = (*v9 * v12) >> 14;
    if (v13 >> 15)
    {
      v14 = 0x7FFF;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }
  }

  else
  {
    result = Pow2(14, v23);
    if (v9 < qua_gain_code)
    {
      goto LABEL_33;
    }

    v11 = v9 + 1;
    if (v9 + 1 > ph_imp_mid || v9 > v11)
    {
      goto LABEL_33;
    }

    v15 = 2 * result * *v9;
    v16 = 9 - v24;
    if (v24 >= 9)
    {
      if (v24 != 9)
      {
        if (v16 < 0)
        {
          v16 = -1;
        }

        v17 = v24 + v16 - 8;
        while (((v15 ^ (2 * v15)) & 0x80000000) == 0)
        {
          v15 *= 2;
          if (!--v17)
          {
            goto LABEL_23;
          }
        }

        v15 = (v15 >> 31) ^ 0x7FFFFFFF;
      }
    }

    else
    {
      v15 >>= v16;
    }

LABEL_23:
    v14 = v15 >> 16;
    if (v14 >= 0x7FFF)
    {
      v14 = 0x7FFF;
    }
  }

  *a5 = v14;
  if (v11 < qua_gain_code || (v18 = v9 + 2, v9 + 2 > ph_imp_mid) || v11 > v18 || v9 + 3 > ph_imp_mid || v18 > v9 + 3)
  {
LABEL_33:
    __break(0x5519u);
    return result;
  }

  v19 = *v11;
  v20 = *v18;

  return gc_pred_update(a1, v19, v20);
}

uint64_t gmed_n(unint64_t a1, unsigned int a2)
{
  v2 = 0;
  *&v32[4] = *MEMORY[0x1E69E9840];
  v31 = -1431655766;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[0] = v3;
  v30[1] = v3;
  v28 = -1431655766;
  v27[0] = v3;
  v27[1] = v3;
  v4 = a2;
  do
  {
    v5 = v27 + v2 + 4;
    if ((v27 + v2) < v27 || v5 > v29 || v27 + v2 > v5)
    {
      goto LABEL_42;
    }

    *(v27 + v2) = *(a1 + v2);
    v2 += 4;
    --v4;
  }

  while (v4);
  v8 = 0;
  do
  {
    v9 = 0;
    v10 = -32767;
    v11 = v27;
    v12 = a2;
    do
    {
      v13 = v11 + 1;
      if (v11 < v27 || v13 > v29 || v11 >= v13)
      {
        goto LABEL_42;
      }

      v17 = *v11++;
      v16 = v17;
      v18 = v17 <= v10;
      if (v17 >= v10)
      {
        LODWORD(v4) = v9;
      }

      if (!v18)
      {
        v10 = v16;
      }

      ++v9;
      --v12;
    }

    while (v12);
    v19 = v27 + v4;
    v20 = v19 + 1;
    if (v19 < v27 || v20 > v29 || v19 >= v20)
    {
      goto LABEL_42;
    }

    *v19 = -32768;
    v23 = v30 + 4 * v8;
    if (v23 < v30 || v23 + 4 > v32 || v23 > v23 + 4)
    {
      goto LABEL_42;
    }

    *(v30 + v8++) = v4;
  }

  while (v8 != a2);
  v24 = v30 + (a2 >> 1);
  if (v24 < v30 || v24 + 1 > v32 || v24 > v24 + 1 || (v25 = (a1 + 4 * *v24), v25 < a1) || (v25 + 1) > a1 + 4 * a2 || v25 > v25 + 1)
  {
LABEL_42:
    __break(0x5519u);
  }

  return *v25;
}

uint64_t gc_pred(int32x4_t *a1, int a2, uint64_t a3, int *a4, _DWORD *a5, _DWORD *a6, int *a7)
{
  v13 = 0;
  v14 = 0uLL;
  do
  {
    v14 = vmlaq_s32(v14, *(a3 + v13), *(a3 + v13));
    v13 += 16;
  }

  while (v13 != 160);
  v15 = vaddvq_s32(v14);
  v43 = -1431655766;
  v44 = -1431655766;
  v16 = 2 * v15;
  if (v15 > 0x3FFFFFFE)
  {
    v16 = 0x7FFFFFFF;
  }

  if (a2 == 7)
  {
    v17 = 52428 * ((v16 + 0x8000) >> 16);
    if (v16 >= 0x8000)
    {
      v18 = -1;
      v27 = 52428 * ((v16 + 0x8000) >> 16);
      do
      {
        v28 = v27 ^ (2 * v27);
        v27 *= 2;
        ++v18;
      }

      while ((v28 & 0x80000000) == 0);
    }

    else
    {
      v18 = 0;
    }

    result = Log2_norm(v17 << v18, v18, &v44, &v43);
    v29 = 0;
    v30 = a1 + 1;
    v31 = 4;
    v32 = &pred_MR122;
    while ((v30->i64 + 4) <= &a1[2] && v30 < (v30->i64 + 4))
    {
      v35 = v30->i32[0];
      v30 = (v30 + 4);
      v34 = v35;
      v36 = *v32++;
      v29 += v36 * v34;
      if (!--v31)
      {
        v37 = 2 * (v29 - v43) - (v44 << 16) + 2749821;
        v38 = v37 >> 17;
        *a4 = v37 >> 17;
        v39 = v37 >> 2;
        goto LABEL_41;
      }
    }

    __break(0x5519u);
    return result;
  }

  v19 = 30 - (__clz(v16) ^ 0x1F);
  if (v16 >> 30)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if (v16 >> 30)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 << v19;
  }

  if (v16)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v16)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  result = Log2_norm(v23, v22, &v44, &v43);
  v25 = -49320 * v44 + 2 * ((-24660 * v43) >> 15);
  if (a2 > 4)
  {
    if (a2 != 5)
    {
LABEL_34:
      v26 = v25 + 2134784;
      goto LABEL_37;
    }

    v26 = v25 + 2183936;
    *a7 = v23 >> 16;
    *a6 = -11 - v22;
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v26 = v25 + 2085632;
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v26 = v25 + 2065152;
  }

LABEL_37:
  v40 = vaddvq_s32(vmlaq_s32((v26 << 9), *a1, xmmword_19B0B2FD0)) >> 15;
  if (a2 == 4)
  {
    v41 = 10878;
  }

  else
  {
    v41 = 10886;
  }

  v42 = v40 * v41;
  v39 = v42 >> 9;
  v38 = v42 >> 24;
  *a4 = v38;
LABEL_41:
  *a5 = v39 - (v38 << 15);
  return result;
}

_DWORD *gc_pred_update(_DWORD *result, int a2, int a3)
{
  v3 = result + 4;
  v4 = 4;
  while (1)
  {
    v5 = (v4 - 1);
    v6 = (v4 - 2);
    v7 = &result[v6];
    v8 = v7 + 1;
    v9 = v7 < result || v8 > v3;
    v10 = v9 || v7 > v8;
    v11 = &result[v5];
    v12 = !v10 && v11 >= result;
    if (!v12 || v11 > v11 + 1)
    {
      break;
    }

    *v11 = *v7;
    v14 = &v3[v6];
    if (v14 < v3)
    {
      break;
    }

    if (v14 + 1 > result + 8)
    {
      break;
    }

    if (v14 > v14 + 1)
    {
      break;
    }

    v15 = &v3[v5];
    if (v15 < v3 || v15 >= v15 + 1)
    {
      break;
    }

    *v15 = *v14;
    v4 = v5;
    if (v5 <= 1)
    {
      result[4] = a2;
      *result = a3;
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t Get_lsp_pol(uint64_t result, _DWORD *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *result + 4;
  v7 = v5 <= v3 && v2 <= v5 && v2 >= v4;
  if (v7 && ((v23 = -1024 * *v2, v8 = (v2 + 2), (v2 + 3) <= v3) ? (v9 = v8 > (v2 + 3)) : (v9 = 1), !v9 ? (v10 = v8 >= v4) : (v10 = 0), v10 && (v2 + 5) <= v3 && v2 + 4 <= v2 + 5 && (v2 + 4) >= v4 && (v2 + 7) <= v3 && (v11 = v2 + 6, v2 + 6 <= v2 + 7) && v11 >= v4 && (v2 + 9) <= v3 && (v12 = v2 + 8, v2 + 8 <= v2 + 9) && v12 >= v4))
  {
    v13 = v2[2];
    v14 = v2[4];
    v15 = *v11;
    v16 = *v12;
    v20 = 0x2000000 - 4 * ((v23 >> 16) * v13 + (((v23 & 0xFFFE) * v13) >> 16));
    v24 = v23 - (v13 << 10);
    v18 = 2 * v24 - 4 * ((v20 >> 16) * v14 + (((v20 & 0xFFFE) * v14) >> 16));
    v21 = v20 + 0x1000000 - 4 * ((v24 >> 16) * v14 + (((v24 & 0xFFFE) * v14) >> 16));
    v25 = v24 - (v14 << 10);
    v17 = 2 * v21 - 4 * ((v18 >> 16) * v15 + (((v18 & 0xFFFE) * v15) >> 16));
    v19 = v18 + v25 - 4 * ((v21 >> 16) * v15 + (((v21 & 0xFFFE) * v15) >> 16));
    v22 = v21 + 0x1000000 - 4 * ((v25 >> 16) * v15 + (((v25 & 0xFFFE) * v15) >> 16));
    v26 = v25 - (*v11 << 10);
    *a2 = 0x1000000;
    a2[1] = v26 - (v16 << 10);
    a2[2] = v22 + 0x1000000 - 4 * ((v26 >> 16) * v16 + (((v26 & 0xFFFE) * v16) >> 16));
    a2[3] = v19 + v26 - 4 * ((v22 >> 16) * v16 + (((v22 & 0xFFFE) * v16) >> 16));
    a2[4] = v17 + v22 - 4 * ((v19 >> 16) * v16 + (((v19 & 0xFFFE) * v16) >> 16));
    a2[5] = 2 * v19 - 4 * ((v17 >> 16) * v16 + (((v17 & 0xFFFE) * v16) >> 16));
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

void E_MAIN_encode(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  LODWORD(v1169) = v2;
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v1380[1] = *MEMORY[0x1E69E9840];
  v1108 = v3 + 4096;
  memset(v1340, 255, sizeof(v1340));
  p_C = v1339;
  memset(v1339, 255, sizeof(v1339));
  memset(v1338, 255, sizeof(v1338));
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v1337[15] = v9;
  v1337[14] = v9;
  v1337[13] = v9;
  v1337[12] = v9;
  v1337[11] = v9;
  v1337[10] = v9;
  v1337[9] = v9;
  v1337[8] = v9;
  v1337[7] = v9;
  v1337[6] = v9;
  v1337[5] = v9;
  v1337[4] = v9;
  v1337[3] = v9;
  v1337[2] = v9;
  v1337[1] = v9;
  v1337[0] = v9;
  v1336[1] = v9;
  v1336[0] = v9;
  v1335 = v9;
  v1334 = v9;
  v1333 = v9;
  v1332 = v9;
  v1331 = v9;
  v1330 = v9;
  v1329 = v9;
  v1328 = v9;
  v1327 = v9;
  v1326 = v9;
  v1325 = v9;
  v1324 = v9;
  v1323 = v9;
  v1322 = v9;
  v1321 = v9;
  v1320 = v9;
  v1319 = v9;
  v1318 = v9;
  v1317 = v9;
  v1316 = v9;
  v1315 = v9;
  v1314 = v9;
  v1313 = v9;
  v1312 = v9;
  v1311 = v9;
  v1310 = v9;
  v1309 = v9;
  v1308 = v9;
  v1307 = v9;
  v1306 = v9;
  v1305 = v9;
  v1304 = v9;
  v1303 = v9;
  v1302 = v9;
  v1301 = v9;
  v1300 = v9;
  v1299 = v9;
  v1298 = v9;
  v1297 = v9;
  v1296 = v9;
  v1295 = v9;
  v1294 = v9;
  v1293 = v9;
  v1292 = v9;
  v1291 = v9;
  v1290 = v9;
  v1289 = v9;
  v1288 = v9;
  v1287 = v9;
  v1286 = v9;
  v1285[7] = v9;
  v1285[6] = v9;
  v1285[5] = v9;
  v1285[4] = v9;
  v1285[3] = v9;
  v1285[2] = v9;
  v1285[1] = v9;
  v1285[0] = v9;
  v1284[7] = v9;
  v1284[6] = v9;
  v1284[5] = v9;
  v1284[4] = v9;
  v1284[3] = v9;
  v1284[2] = v9;
  v1284[1] = v9;
  v1284[0] = v9;
  v1283[11] = v9;
  v1283[10] = v9;
  v1283[9] = v9;
  v1283[8] = v9;
  v1283[7] = v9;
  v1283[6] = v9;
  v1283[5] = v9;
  v1283[4] = v9;
  v1283[3] = v9;
  v1283[2] = v9;
  v1283[1] = v9;
  v1283[0] = v9;
  v1282 = v9;
  v1281 = v9;
  v1280 = v9;
  __B = v9;
  v1278 = v9;
  v1277 = v9;
  v1276 = v9;
  v1275 = v9;
  v1274 = v9;
  v1273 = v9;
  v1272 = v9;
  v1271 = v9;
  v1270 = v9;
  v1269 = v9;
  v1268 = v9;
  v1267 = v9;
  v1266 = v9;
  v1265 = v9;
  v1264 = v9;
  v1263 = v9;
  v1262 = v9;
  v1261[11] = v9;
  v1261[10] = v9;
  v1261[9] = v9;
  v1261[8] = v9;
  v1261[7] = v9;
  v1261[6] = v9;
  v1261[5] = v9;
  v1261[4] = v9;
  v1261[3] = v9;
  v1261[2] = v9;
  v1261[1] = v9;
  v1261[0] = v9;
  v1260 = v9;
  v1259 = v9;
  v1258[1] = v9;
  v1258[0] = v9;
  v1257[16] = v9;
  v1257[15] = v9;
  v1257[14] = v9;
  v1257[13] = v9;
  v1257[12] = v9;
  v1257[10] = v9;
  v1257[11] = v9;
  v1257[8] = v9;
  v1257[9] = v9;
  v1257[6] = v9;
  v1257[7] = v9;
  v1257[4] = v9;
  v1257[5] = v9;
  v1257[2] = v9;
  v1257[3] = v9;
  v1257[0] = v9;
  v1257[1] = v9;
  v1255 = v9;
  v1256 = v9;
  v1253 = v9;
  v1254 = v9;
  v1251 = v9;
  v1252 = v9;
  v1249 = v9;
  v1250 = v9;
  v1247 = v9;
  v1248 = v9;
  v1245 = v9;
  v1246 = v9;
  v1243 = v9;
  v1244 = v9;
  __A1 = v9;
  v1242 = v9;
  v1239 = v9;
  v1240 = v9;
  v1237 = v9;
  v1238 = v9;
  v1235 = v9;
  v1236 = v9;
  v1233 = v9;
  v1234 = v9;
  v1231 = v9;
  v1232 = v9;
  v1229 = v9;
  v1230 = v9;
  v1227 = v9;
  v1228 = v9;
  v1225 = v9;
  v1226 = v9;
  v1224[14] = v9;
  v1224[15] = v9;
  v1224[12] = v9;
  v1224[13] = v9;
  v1224[10] = v9;
  v1224[11] = v9;
  v1224[8] = v9;
  v1224[9] = v9;
  v1224[6] = v9;
  v1224[7] = v9;
  v1224[4] = v9;
  v1224[5] = v9;
  v1224[2] = v9;
  v1224[3] = v9;
  v1224[0] = v9;
  v1224[1] = v9;
  v1222 = -1;
  v1220 = v9;
  v1221 = v9;
  __C = v9;
  v1219 = v9;
  v1217[0] = NAN;
  v1216 = v9;
  v1215 = v9;
  v1214 = v9;
  v1213 = v9;
  v1212 = v9;
  v1211 = v9;
  v1210 = v9;
  v1209 = v9;
  v1208 = v9;
  v1207 = v9;
  v1206 = v9;
  v1205 = v9;
  LODWORD(v1204[1]) = -1;
  v1204[0] = -1;
  v1203 = -1;
  v1202 = -1;
  v1144 = &v1200 + 4;
  v1140 = &v1201;
  v1141 = &v1200 | 0xC;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1200 = v9;
  v1201 = v9;
  v1172 = -1431655766;
  v1171 = -1431655766;
  v1199[22] = v9;
  v1199[23] = v9;
  v1199[20] = v9;
  v1199[21] = v9;
  v1199[18] = v9;
  v1199[19] = v9;
  v1199[16] = v9;
  v1199[17] = v9;
  v1199[14] = v9;
  v1199[15] = v9;
  v1199[12] = v9;
  v1199[13] = v9;
  v1199[10] = v9;
  v1199[11] = v9;
  v1199[8] = v9;
  v1199[9] = v9;
  v1199[6] = v9;
  v1199[7] = v9;
  v1199[4] = v9;
  v1199[5] = v9;
  v1199[2] = v9;
  v1199[3] = v9;
  v1199[0] = v9;
  v1199[1] = v9;
  v1197 = v9;
  v1198 = v9;
  v1195 = v9;
  v1196 = v9;
  v1193 = v9;
  v1194 = v9;
  v1191 = v9;
  v1192 = v9;
  v1189 = 0xAAAAAAAAAAAAAAAALL;
  v1188[6] = v9;
  v1188[7] = v9;
  v1188[4] = v9;
  v1188[5] = v9;
  v1188[2] = v9;
  v1188[3] = v9;
  v1188[0] = v9;
  v1188[1] = v9;
  v1186 = v9;
  v1187 = v9;
  v1184 = v9;
  v1185 = v9;
  v1183 = v9;
  v1181 = v9;
  v1182 = v9;
  v1160 = (v4 + 6072);
  v1137 = (v6 + 56);
  v1138 = v6;
  v1179 = v9;
  v1180 = v9;
  v10 = (v4 + 4952);
  v1177 = v9;
  v1178 = v9;
  v11 = (v4 + 5962);
  v1170 = -21846;
  v1158 = v7;
  v1142 = *v7;
  v1155 = (v4 + 3020);
  __X = (v4 + 1996);
  v1176 = v9;
  NativeInt16ToFloat32Scaled_ARM();
  __e = -*(v4 + 3022);
  v12.n128_f64[0] = ldexp(1.0, __e);
  v13 = 0;
  v14 = (v4 + 4952);
  do
  {
    v15 = v14 + 1 > v11 || v14 > v14 + 1;
    if (v15)
    {
      goto LABEL_1617;
    }

    v16 = *v14++;
    v17 = v12.n128_f64[0] * v16;
    v1339[v13++] = v17;
  }

  while (v13 != 248);
  v1120 = (v4 + 5448);
  __dst = v4;
  v1126 = (v4 + 1536);
  v1153 = (v4 + 5448);
  E_UTIL_decim_12k8(v1340, 0x140u, 0x100u, (v4 + 464), (v4 + 3992));
  v18 = *(v4 + 4072);
  v1267 = *(v4 + 4056);
  v1268 = v18;
  v1269 = *(v4 + 4088);
  v19 = *(v4 + 4008);
  v1263 = *(v4 + 3992);
  v1264 = v19;
  v20 = *(v4 + 4040);
  v1150 = v4 + 3992;
  v1265 = *(v4 + 4024);
  *&v1270 = *(v4 + 513);
  v1266 = v20;
  v1334 = 0u;
  v1335 = 0u;
  memset(v1336, 0, 28);
  E_UTIL_decim_12k8(&v1334, 0xFu, 0xCu, (v4 + 1488), &v1263);
  p_C = 4828;
  E_UTIL_hp50_12k8(__dst + 116, 0x100uLL, (__dst + 4828));
  v1263 = *(v4 + 4828);
  v12.n128_u32[0] = E_UTIL_hp50_12k8(v4 + 372, 0xCuLL, &v1263).u32[0];
  if (v1160 < v4)
  {
    goto LABEL_1617;
  }

  v1173 = NAN;
  v21 = (v4 + 4896);
  E_UTIL_f_preemph(v4 + 116, 256, v4 + 1224, 0.68);
  v1173 = *(v4 + 1224);
  E_UTIL_f_preemph(v4 + 372, 12, &v1173, 0.68);
  v1107 = (v4 + 6048);
  p_C = *(v4 + 756);
  LODWORD(v1364) = -1;
  vDSP_svesq(v4 + 116, 1, &v1364, 0x100uLL);
  v22 = *&v1364 + *&v1364;
  v23 = *p_C + v22;
  *p_C = v22;
  v1168 = v23;
  if (v23 < 686080.0)
  {
    *(p_C + 280) &= 0x1FFFu;
  }

  memset(v1341, 255, 0x400uLL);
  v24 = 0;
  v25.i64[0] = 0x3F0000003F000000;
  v25.i64[1] = 0x3F0000003F000000;
  do
  {
    v1341[v24] = vmulq_f32(*&v4[v24 * 16 + 464], v25);
    ++v24;
  }

  while (v24 != 64);
  for (i = 0; i != 1024; i += 8)
  {
    E_DTX_filter5((v1341 + i), (v1341 + i + 4), (p_C + 200));
  }

  for (j = 0; j != 64; ++j)
  {
    E_DTX_filter5(&v1341[j], &v1341[j] + 2, (p_C + 208));
    E_DTX_filter5(&v1341[j] + 1, &v1341[j] + 3, (p_C + 216));
  }

  v28 = 0;
  v29 = (p_C + 240);
  _S10 = 1053871091;
  do
  {
    v31 = &v1341[v28];
    E_DTX_filter5(&v1341[v28], &v1341[v28 + 1], (p_C + 224));
    E_DTX_filter5(v31 + 2, v31 + 6, (p_C + 232));
    v32 = *(&v1341[v28 + 1] + 3) + (*v29 * -0.40781);
    v33 = *v29 + (v32 * 0.40781);
    if (fabsf(v32) <= 1.0e-10)
    {
      v32 = 0.0;
    }

    *v29 = v32;
    v34 = v31[3];
    v31[7] = (v34 - v33) * 0.5;
    v31[3] = (v33 + v34) * 0.5;
    v28 += 2;
  }

  while (v28 != 64);
  v35 = 0;
  v12.n128_u64[0] = *(p_C + 244);
  v36 = *(p_C + 252);
  v37 = vdup_n_s32(0xBED0CBF3);
  v38 = vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL);
  do
  {
    v39 = &v1341[v35];
    v40.i32[0] = v1341[v35 + 2];
    v41 = *&v1341[v35];
    v40.i32[1] = v1341[v35 + 3];
    _D6 = vmla_f32(v40, v37, v12.n128_u64[0]);
    v43 = v12.n128_f32[0] + (_D6.f32[0] * 0.40781);
    v39[8] = (v41 - v43) * 0.5;
    *v39 = (v41 + v43) * 0.5;
    __asm { FMLA            S7, S10, V6.S[1] }

    v12.n128_u64[0] = vand_s8(_D6, vmovn_s64(vcgtq_f64(vcvtq_f64_f32(vabs_f32(_D6)), v38)));
    _D6.i32[0] = v1341[v35 + 1];
    v39[12] = (_D6.f32[0] - _S7) * 0.5;
    v39[4] = (_D6.f32[0] + _S7) * 0.5;
    _D6.f32[0] = *(&v1341[v35 + 3] + 2) + (v36 * -0.40781);
    v46 = v36 + (_D6.f32[0] * 0.40781);
    if (fabsf(_D6.f32[0]) <= 1.0e-10)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *(&v1341[v35 + 3] + 2) + (v36 * -0.40781);
    }

    v47 = v39[6];
    v39[14] = (v47 - v46) * 0.5;
    v39[6] = (v47 + v46) * 0.5;
    v35 += 4;
  }

  while (v35 != 64);
  v48 = 0;
  *(p_C + 244) = v12.n128_u64[0];
  *(p_C + 252) = v36;
  v49 = (p_C + 260);
  v12.n128_u32[0] = *(p_C + 256);
  v50 = (p_C + 264);
  _CF = p_C + 260 <= p_C + 264 && v49 >= v29;
  v53 = _CF || v49 == 0;
  do
  {
    v54 = &v1341[v48];
    v55 = *&v1341[v48 + 4] + (v12.n128_f32[0] * -0.40781);
    v56 = v12.n128_f32[0] + (v55 * 0.40781);
    if (fabsf(v55) <= 1.0e-10)
    {
      v12.n128_f32[0] = 0.0;
    }

    else
    {
      v12.n128_f32[0] = *&v1341[v48 + 4] + (v12.n128_f32[0] * -0.40781);
    }

    v57 = *v54;
    v54[16] = (*v54 - v56) * 0.5;
    *v54 = (v57 + v56) * 0.5;
    if (!v53)
    {
      goto LABEL_1622;
    }

    v58 = v54[24] + (*v49 * -0.40781);
    v59 = *v49 + (v58 * 0.40781);
    if (fabsf(v58) <= 1.0e-10)
    {
      v58 = 0.0;
    }

    *v49 = v58;
    v60 = v54[8];
    v54[24] = (v60 - v59) * 0.5;
    v54[8] = (v59 + v60) * 0.5;
    v48 += 8;
  }

  while (v48 != 64);
  v1148 = v21;
  *(p_C + 256) = v12.n128_u32[0];
  HIDWORD(v1346[2]) = E_DTX_level_calculation(v1341, (p_C + 196), 16, 64, 4, 1, 0.25);
  DWORD2(v1346[2]) = E_DTX_level_calculation(v1341, (p_C + 192), 8, 32, 8, 7, 0.5);
  DWORD1(v1346[2]) = E_DTX_level_calculation(v1341, (p_C + 188), 8, 32, 8, 3, 0.5);
  LODWORD(v1346[2]) = E_DTX_level_calculation(v1341, (p_C + 184), 8, 32, 8, 2, 0.5);
  HIDWORD(v1346[1]) = E_DTX_level_calculation(v1341, (p_C + 180), 4, 16, 16, 14, 1.0);
  DWORD2(v1346[1]) = E_DTX_level_calculation(v1341, (p_C + 176), 4, 16, 16, 6, 1.0);
  DWORD1(v1346[1]) = E_DTX_level_calculation(v1341, (p_C + 172), 4, 16, 16, 4, 1.0);
  v61 = 12;
  LODWORD(v1346[1]) = E_DTX_level_calculation(v1341, (p_C + 168), 4, 16, 16, 12, 1.0);
  HIDWORD(v1346[0]) = E_DTX_level_calculation(v1341, (p_C + 164), 2, 8, 32, 8, 2.0);
  DWORD2(v1346[0]) = E_DTX_level_calculation(v1341, (p_C + 160), 2, 8, 32, 24, 2.0);
  DWORD1(v1346[0]) = E_DTX_level_calculation(v1341, (p_C + 156), 2, 8, 32, 16, 2.0);
  v12.n128_f32[0] = E_DTX_level_calculation(v1341, (p_C + 152), 2, 8, 32, 0, 2.0);
  LODWORD(v1346[0]) = v12.n128_u32[0];
  v62 = (p_C + 8);
  v63 = p_C + 56;
  v64 = 0.0;
  v65 = (p_C + 56);
  do
  {
    if ((v62 + 1) > v63 || v62 > v62 + 1)
    {
      goto LABEL_1617;
    }

    v67 = *v62++;
    v12.n128_f64[0] = ((*(&v1345 + v61 + 4) / v67) * (*(&v1345 + v61 + 4) / v67));
    v64 = v64 + v12.n128_f64[0];
    v61 += 4;
  }

  while (v61 != 60);
  v68 = (p_C + 12);
  v12.n128_u32[0] = 0;
  v69 = 11;
  do
  {
    if ((v68 + 1) > v63 || v68 > v68 + 1)
    {
      goto LABEL_1617;
    }

    v71 = *v68++;
    v12.n128_f32[0] = v12.n128_f32[0] + v71;
    --v69;
  }

  while (v69);
  v72 = v12.n128_f32[0] * 0.0625;
  v73 = (v72 * 0.125) * 8.0;
  v74 = *(p_C + 268);
  if (v74 < v73)
  {
    *(p_C + 268) = v73;
    v74 = (v72 * 0.125) * 8.0;
  }

  v75 = log10((v72 * 4.6566e-10)) * -1024.0 / 0.301029996;
  v76 = log10(((v74 - v73) * 4.6566e-10)) * -1024.0 / 0.301029996;
  v77 = ((v76 + -22527.0) * -0.040895) + -96.0;
  if (v77 < -96.0)
  {
    v77 = -96.0;
  }

  if (v77 > 96.0)
  {
    v77 = 96.0;
  }

  v12.n128_f32[0] = (((v75 + -31744.0) * 0.046028) + 768.0) + v77;
  if (v12.n128_f32[0] < 204.8)
  {
    v12.n128_f32[0] = 204.8;
  }

  v78 = *(p_C + 278) >> 1;
  if (v64 > ((v12.n128_f32[0] * 12.0) * 0.0078125))
  {
    LOWORD(v78) = v78 | 0x4000;
  }

  *(p_C + 278) = v78;
  if ((~*(p_C + 280) & 0x7C00) == 0)
  {
    v79 = 0;
    *(p_C + 276) = 20;
    v80 = 1.0;
    v81 = __dst;
    goto LABEL_85;
  }

  v81 = __dst;
  if ((v78 & 0x7F80) == 0)
  {
    goto LABEL_83;
  }

  v82 = v1346;
  v83 = 0.0;
  v84 = 12;
  v85 = (p_C + 56);
  do
  {
    if ((v85 + 1) > p_C + 104 || v85 > v85 + 1)
    {
      goto LABEL_1617;
    }

    v87 = *v82++;
    v88 = v87;
    v89 = *v85++;
    v90 = v89;
    v91 = v88 <= v89;
    if (v88 <= v89)
    {
      v92 = v88;
    }

    else
    {
      v92 = v90;
    }

    if (v91)
    {
      v88 = v90;
    }

    v93 = 184.0;
    if (v88 < 184.0)
    {
      v88 = 184.0;
    }

    if (v92 >= 184.0)
    {
      v93 = v92;
    }

    v83 = v83 + ((v88 / v93) * 64.0);
    --v84;
  }

  while (v84);
  if (v83 > 1000.0)
  {
LABEL_83:
    v79 = 0;
    *(p_C + 276) = 20;
LABEL_84:
    v80 = 1.0;
    goto LABEL_85;
  }

  v127 = *(p_C + 276);
  if ((v78 & 0x4000) != 0)
  {
    if (!*(p_C + 276))
    {
      goto LABEL_1614;
    }

    *(p_C + 276) = --v127;
  }

  if (v127 == 20)
  {
    v79 = 0;
    goto LABEL_84;
  }

LABEL_1614:
  v80 = 0.1;
  if ((v78 & 0x4000) == 0)
  {
    v80 = 0.5;
  }

  v79 = v127 == 0;
LABEL_85:
  v94 = (p_C + 104);
  for (k = 60; k != 108; k += 4)
  {
    if (v65 + 1 > v94 || v65 > v65 + 1)
    {
      goto LABEL_1617;
    }

    *v65 = *v65 + (v80 * (*(v1344 + k + 4) - *v65));
    ++v65;
  }

  v97 = 0.05;
  v98 = 0.057;
  if (!v79)
  {
    v98 = 0.05;
  }

  v99 = 0.015;
  if (!v79)
  {
    v99 = 0.0;
  }

  if ((v78 & 0x7800) != 0)
  {
    v97 = v99;
  }

  else
  {
    v79 = 1;
    v98 = 0.064;
  }

  v100 = 2.0;
  if (!v79)
  {
    v100 = 0.0;
  }

  v101 = 12;
  v102 = (p_C + 104);
  do
  {
    if ((v102 + 1) > p_C + 152 || v102 > v102 + 1)
    {
      goto LABEL_1617;
    }

    if ((v102 - 23) > v63)
    {
      goto LABEL_1617;
    }

    v104 = v102 - 24;
    if (v102 - 24 > v102 - 23)
    {
      goto LABEL_1617;
    }

    v105 = *(v102 - 24);
    v106 = *v102 - v105;
    if (v106 >= 0.0)
    {
      v109 = v105 + (v100 + (v97 * v106));
      *v104 = v109;
      v15 = v109 <= 20000.0;
      v108 = 1184645120;
      if (v15)
      {
        goto LABEL_112;
      }

LABEL_111:
      *v104 = v108;
      goto LABEL_112;
    }

    v107 = v105 + ((v98 * v106) + -2.0);
    *v104 = v107;
    v108 = 1109393408;
    if (v107 < 40.0)
    {
      goto LABEL_111;
    }

LABEL_112:
    ++v102;
    --v101;
  }

  while (v101);
  v110 = v1346[1];
  *v94 = v1346[0];
  *(p_C + 120) = v110;
  *(p_C + 136) = v1346[2];
  v111 = (((v12.n128_f32[0] + -217.6) * -0.033967) + -0.5 + 12.0);
  if (v111 <= 2)
  {
    LOWORD(v111) = 2;
  }

  if (v1168 < 30000.0)
  {
    v113 = 0;
    *(p_C + 272) = 0;
    goto LABEL_121;
  }

  if ((v78 & 0x4000) != 0)
  {
    v115 = *(p_C + 272) + 1;
    *(p_C + 272) = v115;
    if ((((v12.n128_f32[0] + -768.0) * 0.0090843) + -0.5 + 8.0) <= v115)
    {
      goto LABEL_124;
    }

    v114 = 0;
LABEL_125:
    v113 = 1;
  }

  else
  {
    *(p_C + 272) = 0;
    v112 = *(p_C + 274);
    _VF = __OFSUB__(v112, 1);
    v111 = v112 - 1;
    if (v111 < 0 == _VF)
    {
LABEL_124:
      v114 = 0;
      *(p_C + 274) = v111;
      goto LABEL_125;
    }

    v113 = 0;
LABEL_121:
    v114 = 1;
  }

  v116 = 0.0;
  for (m = 4; m != 48; m += 4)
  {
    v116 = v116 + *(v1346 + m);
  }

  v12.n128_f64[0] = v116 * 0.0625;
  v118 = *(p_C + 282);
  v119 = *(p_C + 284);
  if (v119 - v118 <= -56)
  {
    LOWORD(v119) = 0;
    LOWORD(v118) = 0;
    *(p_C + 264) = 0;
    *(p_C + 284) = 0;
  }

  v12.n128_f32[0] = v12.n128_f64[0];
  *(p_C + 282) = v118 + 1;
  if ((v78 & 0x4000) != 0)
  {
    v121 = v1169;
    if (v12.n128_f32[0] <= 129.15)
    {
      goto LABEL_143;
    }
  }

  else
  {
    _NF = v12.n128_f32[0] > 129.15 && *(p_C + 268) < v12.n128_f32[0];
    v121 = v1169;
    if (!_NF)
    {
      goto LABEL_143;
    }
  }

  v122 = *v50;
  if (*v50 < v12.n128_f32[0])
  {
    *v50 = v12.n128_f32[0];
    v122 = v12.n128_f32[0];
  }

  *(p_C + 284) = v119 + 1;
  if ((v119 + 1) >= 25)
  {
    v12.n128_f32[0] = v122 * 0.5;
    if ((v122 * 0.5) > 410.0)
    {
      v12.n128_f32[0] = *(p_C + 268) + ((v12.n128_f32[0] - *(p_C + 268)) * 0.15);
      *(p_C + 268) = v12.n128_u32[0];
    }

    *(p_C + 264) = 0;
    *(p_C + 282) = 0;
  }

LABEL_143:
  v1108[1970] = v113 ^ 1;
  v123 = *(v81 + 757);
  if (v121)
  {
    v124 = *(v123 + 696) + 1;
    *(v123 + 696) = v124;
    if (v114)
    {
      if (!*(v123 + 694))
      {
        *(v123 + 696) = 0;
        goto LABEL_160;
      }

      v125 = *(v123 + 694) - 1;
      *(v123 + 694) = v125;
      if (v125 + v124 <= 29)
      {
LABEL_160:
        *v7 = 10;
        v126 = v1138;
        goto LABEL_161;
      }
    }

    else
    {
      *(v123 + 694) = 7;
    }
  }

  else
  {
    E_DTX_reset(v123);
  }

  v126 = v1138;
  if (*v7 != 10)
  {
    v126 = v1138 + 1;
    if ((v1138 + 1) > v1137 || v126 < v1138)
    {
      goto LABEL_1617;
    }

    *v1138 = v113;
  }

LABEL_161:
  memset(v1341, 255, 0x640uLL);
  MEMORY[0x19EAE5FA0](__dst, 1, &E_ROM_hamming_cos, 1, v1341, 1, 384);
  memset(&v1341[96], 0, 64);
  __C = 0u;
  v1219 = 0u;
  v1220 = 0u;
  v1221 = 0u;
  v1222 = 0;
  p_C = &__C;
  vDSP_conv(v1341, 1, v1341, 1, &__C, 1, 0x11uLL, 0x180uLL);
  v12.n128_u32[0] = __C;
  if (*&__C < 1.0)
  {
    LODWORD(__C) = 1065353216;
  }

  v128 = 4;
  v129 = &E_ROM_lag_window;
  do
  {
    v130 = v129 + 1;
    if (v129 < &E_ROM_lag_window || v130 > E_ROM_mean_isf || v129 > v130)
    {
      goto LABEL_1617;
    }

    v133 = *v129++;
    v12.n128_f32[0] = v133 * *(&__C + v128);
    *(&__C + v128) = v12.n128_f32[0];
    v128 += 4;
  }

  while (v128 != 68);
  v134 = 0;
  v12.n128_u64[0] = -1;
  v12.n128_u64[1] = -1;
  v1341[3] = v12;
  *(&v1341[2] + 4) = v12;
  *(&v1341[1] + 4) = v12;
  *(v1341 + 4) = v12;
  *v1341 = -*(&__C + 1) / *&__C;
  LODWORD(v1258[0]) = 1065353216;
  *(v1258 + 1) = *v1341;
  v12.n128_f32[0] = *&__C + (*(&__C + 1) * *v1341);
  v135 = 2;
  v136 = 0.01;
  do
  {
    v137 = 0.0;
    v138 = v1258;
    v139 = v134;
    do
    {
      v140 = (&__C + v139 + 8);
      v141 = (&__C + v139 + 12);
      v143 = v140 < &__C || v141 > &v1223 || v140 > v141;
      v144 = v138 + 1;
      if (v143 || v138 < v1258 || v144 > v1261 + 1 || v138 > v144)
      {
        goto LABEL_1617;
      }

      v148 = *v138++;
      v137 = v137 + (*v140 * v148);
      v139 -= 4;
    }

    while (v139 != -8);
    v149 = v1341 + v135;
    v150 = v149 - 1;
    if (v149 - 1 < v1341 || v149 > &v1341[4] || v150 > v149)
    {
      goto LABEL_1617;
    }

    v151 = 0;
    v152 = -v137 / v12.n128_f32[0];
    *v150 = v152;
    v153 = v134;
    do
    {
      v154 = (v1258 + v151 + 4);
      v155 = (v1258 + v151 + 8);
      v157 = v154 < v1258 || v155 > v1261 + 1 || v154 > v155;
      v158 = (v1258 + v153 + 4);
      v159 = (v1258 + v153 + 8);
      if (v157 || v158 < v1258 || v159 > v1261 + 1 || v158 > v159)
      {
        goto LABEL_1617;
      }

      v163 = *v154 + (v152 * *v158);
      *v158 = *v158 + (v152 * *v154);
      *v154 = v163;
      v151 += 4;
      v153 -= 4;
    }

    while (((2 * v135) & 0x1FFFFFFFCLL) != v151);
    v164 = v1258 + 4 * v135;
    if (v164 < v1258 || v164 + 4 > v1261 + 4 || v164 > v164 + 4)
    {
      goto LABEL_1617;
    }

    *(v1258 + v135) = v152;
    v12.n128_f32[0] = v12.n128_f32[0] + (v152 * v137);
    if (v12.n128_f32[0] <= 0.0)
    {
      v12.n128_f32[0] = 0.01;
    }

    ++v135;
    v134 += 4;
  }

  while (v135 != 17);
  v1146 = v114;
  v1164 = v126;
  v165 = 0;
  LODWORD(v1341[2]) = -1;
  v12.n128_u64[0] = -1;
  v12.n128_u64[1] = -1;
  v1341[0] = v12;
  v1341[1] = v12;
  v1346[1] = v12;
  v1346[0] = v12;
  *&v1168 = &v1341[2] + 4;
  v166 = v1261;
  do
  {
    v167 = v1258 + v165 + 4;
    v169 = (v1258 + v165) < v1258 || v167 > v1261 + 4 || v1258 + v165 > v167;
    v170 = v166 + 1;
    v173 = v169 || v166 < v1258 || v170 > v1261 + 1 || v166 > v170;
    v174 = v1341 + v165;
    v175 = v1341 + v165 + 4;
    if (v173 || v174 < v1341 || v175 > &v1341[2] + 4 || v174 > v175)
    {
      goto LABEL_1617;
    }

    v12.n128_u32[0] = *(v1258 + v165);
    v179 = *v166;
    *(v1341 + v165) = v12.n128_f32[0] + *v166;
    v180 = v1346 + v165;
    if ((v1346 + v165) < v1346 || v180 + 4 > &v1346[2] || v180 > v180 + 4)
    {
      goto LABEL_1617;
    }

    v12.n128_f32[0] = v12.n128_f32[0] - v179;
    *(v1346 + v165) = v12.n128_u32[0];
    v165 += 4;
    --v166;
  }

  while (v165 != 32);
  v181 = 0;
  v12.n128_f32[0] = *&v1259 + *&v1259;
  *&v1341[2] = *&v1259 + *&v1259;
  do
  {
    v182 = v1346 + v181;
    v183 = (v1346 + v181 + 8);
    v184 = v1346 + v181 + 4;
    v186 = (v1346 + v181) < v1346 || v184 > &v1346[2] || v182 > v184;
    v187 = v182 + 12;
    if (v186 || v183 < v1346 || v187 > &v1346[2] || v183 > v187)
    {
      goto LABEL_1617;
    }

    v12.n128_f32[0] = *(v1346 + v181) + *v183;
    *v183 = v12.n128_f32[0];
    v181 += 4;
  }

  while (v181 != 24);
  v191 = 1.0;
  v192 = 8;
  E_LPC_chebyshev(v1341, 8u, 9, 1.0);
  v193 = v12.n128_f32[0];
  v194 = 0;
  v195 = 0;
  LODWORD(v1167) = 0;
  v1169 = &v1213;
  v196 = v1341;
  v197 = &v1341[2] + 1;
  do
  {
    p_C = (v194 + 1);
    v198 = &E_ROM_grid[4 * p_C];
    v199 = v198 + 1;
    v201 = v198 < E_ROM_grid || v199 > E_ROM_f_interpol_frac || v198 > v199;
    if (v201 || v196 > v197 || v192 + 1 > v197 - v196)
    {
      goto LABEL_1617;
    }

    v202 = *v198;
    E_LPC_chebyshev(v196, v192, v192 + 1, *v198);
    v203 = v12.n128_f32[0];
    v12.n128_f32[0] = v193 * v12.n128_f32[0];
    if (v12.n128_f32[0] <= 0.0)
    {
      v204 = 4;
      do
      {
        E_LPC_chebyshev(v196, v192, v192 + 1, (v191 + v202) * 0.5);
        if ((v203 * v12.n128_f32[0]) <= 0.0)
        {
          v193 = v12.n128_f32[0];
          v191 = (v191 + v202) * 0.5;
        }

        else
        {
          v203 = v12.n128_f32[0];
          v202 = (v191 + v202) * 0.5;
        }

        --v204;
      }

      while (v204);
      v205 = &v1209 + v195;
      if (v205 < &v1209 || v205 + 1 > &v1213 || v205 > v205 + 1)
      {
        goto LABEL_1617;
      }

      v12.n128_f32[0] = (v203 * (v191 - v202)) / (v193 - v203);
      v191 = v202 - v12.n128_f32[0];
      *v205 = v202 - v12.n128_f32[0];
      v197 = v1167 == 1 ? (&v1341[2] + 4) : &v1346[2];
      v196 = (v1167 == 1 ? v1341 : v1346);
      v192 = v1167 == 1 ? 8 : 7;
      if (v196 > v197)
      {
        goto LABEL_1617;
      }

      v206 = v192 + 1;
      if (v206 > v197 - v196)
      {
        goto LABEL_1617;
      }

      ++v195;
      LODWORD(v1167) = 1 - v1167;
      E_LPC_chebyshev(v196, v192, v206, v202 - v12.n128_f32[0]);
      v193 = v12.n128_f32[0];
    }

    else
    {
      ++v194;
      v193 = v203;
      v191 = v202;
    }
  }

  while (v195 <= 14 && v194 < 100);
  v12.n128_u32[0] = v1261[0];
  HIDWORD(v1212) = v1261[0];
  if (v195 <= 14)
  {
    v207 = 1118;
    v208 = &v1209;
    do
    {
      v209 = (v208 + 4);
      if (v208 < &v1209 || v209 > &v1213 || v208 > v209)
      {
        goto LABEL_1617;
      }

      v12.n128_u32[0] = *&__dst[4 * v207];
      *v208 = v12.n128_u32[0];
      v208 = (v208 + 4);
      ++v207;
    }

    while (v207 != 1134);
  }

  v212 = 0;
  v213 = v1258;
  v12.n128_u32[0] = 0;
  memset(v1341, 0, 64);
  p_C = &v1366 + 8;
  v1166 = (v1341 + 4);
  v214 = &v1260 + 12;
  v215 = __dst;
  v1136 = v10;
  do
  {
    v216 = &E_ROM_f_interpol_frac[v212];
    v217 = v216 + 1;
    if (v216 < E_ROM_f_interpol_frac || v217 > &E_ROM_interpol_frac || v216 > v217)
    {
      goto LABEL_1617;
    }

    v220 = 0;
    v12.n128_u32[0] = *v216;
    v221 = 1.0 - *v216;
    do
    {
      v222 = v1341 + v220 + 4;
      if ((v1341 + v220) < v1341 || v222 > &v1341[4] || v1341 + v220 > v222)
      {
        goto LABEL_1617;
      }

      *(v1341 + v220) = (v12.n128_f32[0] * *(&v1209 + v220)) + (*&v215[v220 + 4472] * v221);
      v220 += 4;
    }

    while (v220 != 64);
    if (v213 > &v1263)
    {
      goto LABEL_1617;
    }

    v1167 = v212;
    *&v225 = -1;
    *(&v225 + 1) = -1;
    *(&v1346[1] + 12) = v225;
    v1346[0] = v225;
    v1346[1] = v225;
    *&v1366 = -1;
    v1365 = v225;
    v1364 = v225;
    *&v1348 = v1341;
    *(&v1348 + 1) = &v1341[4];
    *&v1349 = v1341;
    v226 = 8;
    *&v1168 = v214;
    E_LPC_f_isp_pol_get(&v1348, v1346, 8, 9);
    *&v1348 = v1341 + 4;
    *(&v1348 + 1) = &v1341[4];
    *&v1349 = v1341;
    v227 = v1136;
    E_LPC_f_isp_pol_get(&v1348, &v1364, 7, 8);
    v215 = __dst;
    do
    {
      v228 = &v1364 + --v226;
      v229 = (v228 - 1);
      v231 = v228 - 2 < &v1364 || v229 > &v1366 + 8 || (v228 - 2) > v229;
      v232 = v228 + 1;
      if (v231 || v228 < &v1364 || v232 > &v1366 + 2 || v228 > v232)
      {
        goto LABEL_1617;
      }

      v12.n128_f32[0] = *v228 - *(v228 - 2);
      *v228 = v12.n128_f32[0];
    }

    while (v226 > 2);
    v236 = 0;
    v12.n128_u32[0] = HIDWORD(v1341[3]);
    v237 = *(&v1341[3] + 3) + 1.0;
    v238 = 1.0 - *(&v1341[3] + 3);
    do
    {
      v239 = v1346 + v236 + 4;
      if ((v1346 + v236) < v1346 || v239 > &v1346[2] + 12 || v1346 + v236 > v239)
      {
        goto LABEL_1617;
      }

      *(v1346 + v236) = *(v1346 + v236) * v237;
      v242 = &v1364 + v236;
      if ((&v1364 + v236) < &v1364 || v242 + 4 > &v1366 + 8 || v242 > v242 + 4)
      {
        goto LABEL_1617;
      }

      *(&v1364 + v236) = v238 * *(&v1364 + v236);
      v236 += 4;
    }

    while (v236 != 32);
    v243 = 0;
    *v213 = 1065353216;
    v244 = v213 + 68;
    v245 = *&v1168;
    do
    {
      v246 = (v1346 + v243 + 4);
      v247 = (v1346 + v243 + 8);
      v249 = v246 < v1346 || v247 > &v1346[2] + 3 || v246 > v247;
      v250 = (&v1364 + v243 + 4);
      v251 = (&v1364 + v243 + 8);
      v254 = v249 || v250 < &v1364 || v251 > &v1366 + 2 || v250 > v251;
      v255 = (v213 + v243 + 4);
      v256 = v213 + v243 + 8;
      if (v254 || v255 < v213 || v256 > v244 || v255 > v256)
      {
        goto LABEL_1617;
      }

      v260 = *v246;
      v261 = *v250;
      *v255 = (*v246 + *v250) * 0.5;
      if (v245 < v213 || (v245 + 1) > v244 || v245 > v245 + 1)
      {
        goto LABEL_1617;
      }

      *v245-- = (v260 - v261) * 0.5;
      v243 += 4;
    }

    while (v243 != 28);
    v262 = *&v1346[2] * 0.5 * (v12.n128_f32[0] + 1.0);
    *(v213 + 8) = v262;
    *(v213 + 16) = v12.n128_u32[0];
    v212 = (v1167 + 1);
    v214 = (*&v1168 + 68);
    v213 = (v213 + 68);
  }

  while (v1167 != 3);
  p_C = 0;
  v263 = v1210;
  *(__dst + 4472) = v1209;
  *(__dst + 4488) = v263;
  v12.n128_u32[0] = v1211;
  v264 = v1212;
  *(__dst + 4504) = v1211;
  *(__dst + 4520) = v264;
  v1139 = __dst + 4536;
  v265 = &v1339[248];
  do
  {
    v266 = &v1209 + p_C + 4;
    v268 = (&v1209 + p_C) < &v1209 || v266 > &v1213 || &v1209 + p_C > v266;
    v269 = &v1205 + p_C;
    v270 = &v1205 + p_C + 4;
    if (v268 || v269 < &v1205 || v270 > &v1209 || v269 > v270)
    {
      goto LABEL_1617;
    }

    v12.n128_f32[0] = acosf(*(&v1209 + p_C)) * 2037.18327;
    *(&v1205 + p_C) = v12.n128_u32[0];
    p_C += 4;
  }

  while (p_C != 60);
  p_C = &v1203;
  v12.n128_f32[0] = acosf(*(&v1212 + 3));
  v274 = 0;
  v12.n128_f32[0] = v12.n128_f32[0] * 2037.18327 * 0.5;
  HIDWORD(v1208) = v12.n128_u32[0];
  v1116 = (__dst + 4888);
  v12.n128_f32[0] = *(&v1205 + 1) - *&v1205;
  v275 = __X;
  do
  {
    v276 = (&v1205 + v274 + 8);
    v277 = (&v1205 + v274 + 4);
    if (v277 < &v1205 || v277 > v276)
    {
      goto LABEL_1617;
    }

    if ((*v276 - *v277) < v12.n128_f32[0])
    {
      v12.n128_f32[0] = *v276 - *v277;
    }

    v274 += 4;
  }

  while (v274 != 52);
  v12.n128_f32[0] = (v12.n128_f32[0] * 0.2) + (*(__dst + 1222) * 0.8);
  if (v12.n128_f32[0] > 120.0)
  {
    v12.n128_f32[0] = 120.0;
  }

  *(__dst + 1222) = v12.n128_u32[0];
  __A = (__dst + 192);
  v279 = v1258;
  p_C = -64;
  do
  {
    if (v279 > &v1263)
    {
      goto LABEL_1617;
    }

    MEMORY[0x19EAE5FA0](v279, 1, &kGammaTable_GAMMA1, 1, &v1213, 1, 17);
    vDSP_conv(v275 - 451, 1, v1217, -1, v275, 1, 0x40uLL, 0x11uLL);
    v279 = (v279 + 68);
    v275 += 64;
    p_C += 64;
  }

  while (p_C < 0xC0);
  E_UTIL_deemph(__X, 0x100uLL, __dst + 1226);
  p_C = &v1341[64] + 12;
  *&v1341[0] = *(__dst + 4876);
  DWORD2(v1341[0]) = *(__dst + 1221);
  memcpy(v1341 + 12, __X, 0x400uLL);
  v280 = 0;
  v12.n128_u32[0] = 0;
  do
  {
    v281 = &__dst[v280 + 3008];
    v282 = &__dst[v280 + 3012];
    if (v281 < __X || v282 > v1155 || v281 > v282)
    {
      goto LABEL_1617;
    }

    v285 = *v281;
    if (fabsf(*v281) <= 1.0e-10)
    {
      v285 = 0.0;
    }

    *&__dst[v280 + 4876] = v285;
    v280 += 4;
  }

  while (v280 != 12);
  v286 = 0;
  v12.n128_u32[0] = 1040522936;
  v287 = __X;
  do
  {
    v288 = (v1341 + v286);
    v289 = (v1341 + v286 + 4);
    v292 = (v1341 + v286) >= v1341 && v289 <= &v1341[64] + 3 && v288 <= v289 && v289 >= v1341;
    v293 = v288 + 2;
    v294 = v292 && v293 >= v1341;
    v295 = v288 + 3;
    v296 = v288 + 4;
    v299 = !v294 || v295 < v1341 || v296 > &v1341[64] + 3 || v295 > v296;
    v300 = (v288 + 5);
    v302 = v299 || v300 > &v1341[64] + 12 || v296 > v300;
    v303 = v287 + 1;
    if (v302 || v287 < __X || v303 > v1155 || v287 > v303)
    {
      goto LABEL_1617;
    }

    *v287++ = ((((*(v1341 + v286) * 0.13) + (*v289 * 0.23)) + (*v293 * 0.28)) + (*v295 * 0.23)) + (*v296 * 0.13);
    v286 += 8;
  }

  while (v286 != 1024);
  v307 = v1108[1969];
  v308 = *(__dst + 1237);
  if (*v1158)
  {
    *&v1341[0] = v1155;
    *(&v1341[0] + 1) = v1150;
    *&v1341[1] = v1155;
    v309 = (__dst + 4912);
    v310 = __X;
    v311 = 64;
  }

  else
  {
    *&v1341[0] = v1155;
    *(&v1341[0] + 1) = v1150;
    *&v1341[1] = v1155;
    v309 = (__dst + 4912);
    v310 = __X;
    v311 = 128;
  }

  v312 = E_GAIN_open_loop_search(v310, v311, v308, v309, __dst + 1198, v1341, v307);
  v313 = v312;
  v314 = *(__dst + 1228);
  if (v314 > 0.6)
  {
    *(__dst + 1237) = E_GAIN_olag_median(v312, __dst + 1232);
    *(__dst + 1229) = 1065353216;
    v314 = *(__dst + 1228);
    goto LABEL_477;
  }

  v315 = *(__dst + 1229) * 0.9;
  *(__dst + 1229) = v315;
  if (v315 >= 0.8)
  {
LABEL_477:
    v316 = 1;
  }

  else
  {
    v316 = 0;
  }

  v1108[1969] = v316;
  v317 = *(*v1107 + 280) >> 1;
  if (v314 > 0.65)
  {
    LOWORD(v317) = v317 | 0x4000;
  }

  *(*v1107 + 280) = v317;
  v1145 = 2 * v313;
  if (!*v1158)
  {
    v1156 = 2 * v313;
LABEL_813:
    v1161 = v313;
    v577 = 0;
    *&v578 = -1;
    *(&v578 + 1) = -1;
    v1341[2] = v578;
    v1341[3] = v578;
    v1341[0] = v578;
    v1341[1] = v578;
    *(&v1347[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v1347[0] = 0xAAAAAAAAAAAAAAAALL;
    __asm { FMOV            V0.2D, #0.390625 }

    v580 = vdupq_n_s64(0xBFD5555555555555);
    v1151 = v1108 + 1898;
    v581 = (v1108 + 1898);
    do
    {
      v582 = &v1341[v577];
      v583 = *v581++;
      v584 = vmovl_high_s16(v583);
      v585.i64[0] = v584.i32[2];
      v585.i64[1] = v584.i32[3];
      v586 = vcvtq_f64_s64(v585);
      v585.i64[0] = v584.i32[0];
      v585.i64[1] = v584.i32[1];
      v587 = vcvtq_f64_s64(v585);
      v588 = vmovl_s16(*v583.i8);
      v585.i64[0] = v588.i32[2];
      v585.i64[1] = v588.i32[3];
      v589 = vcvtq_f64_s64(v585);
      v585.i64[0] = v588.i32[0];
      v585.i64[1] = v588.i32[1];
      v590 = vsubq_f32(*(&v1205 + v577 * 16 + 16), E_ROM_f_mean_isf[v577 + 1]);
      v591 = vsubq_f32(*(&v1205 + v577 * 16), E_ROM_f_mean_isf[v577]);
      *v582 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v591.f32), _Q0, vmulq_f64(vcvtq_f64_s64(v585), v580))), vmlaq_f64(vcvt_hight_f64_f32(v591), _Q0, vmulq_f64(v589, v580)));
      v582[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v590.f32), _Q0, vmulq_f64(v587, v580))), vmlaq_f64(vcvt_hight_f64_f32(v590), _Q0, vmulq_f64(v586, v580)));
      v577 += 2;
    }

    while (v577 != 4);
    *&v592 = -1;
    *(&v592 + 1) = -1;
    v1346[2] = v592;
    v1346[3] = v592;
    v1346[0] = v592;
    v1346[1] = v592;
    LODWORD(v1342[0]) = -1;
    *&v1364 = v1341;
    v1166 = &v1341[4];
    *(&v1364 + 1) = &v1341[4];
    *&v1365 = v1341;
    *&v1348 = E_ROM_dico1_isf;
    *(&v1348 + 1) = &E_ROM_dico1_isf[2304];
    *&v1349 = E_ROM_dico1_isf;
    E_LPC_stage1_isf_vq(&v1364, &v1348, 9u, v1347);
    p_C = 0;
    LODWORD(v1169) = v1200;
    LODWORD(v1168) = DWORD2(v1200);
    v593 = 1.0e30;
    LODWORD(v1167) = HIDWORD(v1200);
    while (1)
    {
      v594 = 0;
      v595 = &E_ROM_dico1_isf[9 * *(v1347 + p_C)];
      do
      {
        v596 = &v595[v594];
        v597 = &v595[v594 + 1];
        if (&v595[v594] < E_ROM_dico1_isf || v597 > E_ROM_dico2_isf || v596 > v597)
        {
          goto LABEL_1618;
        }

        v12.n128_f32[0] = *(v1341 + v594 * 4) - *v596;
        *(v1346 + v594 * 4) = v12.n128_u32[0];
        ++v594;
      }

      while (v594 != 9);
      *&v1364 = E_ROM_dico21_isf_36b;
      *(&v1364 + 1) = E_ROM_dico22_isf_36b;
      *&v1365 = E_ROM_dico21_isf_36b;
      v600 = E_LPC_isf_sub_vq(v1346, &v1364, 5u, 128, v1342);
      v601 = *v1342;
      *&v1364 = E_ROM_dico22_isf_36b;
      *(&v1364 + 1) = E_ROM_dico23_isf_36b;
      *&v1365 = E_ROM_dico22_isf_36b;
      v602 = E_LPC_isf_sub_vq(&v1346[1] + 1, &v1364, 4u, 128, v1342);
      v12.n128_f32[0] = v601 + *v1342;
      if ((v601 + *v1342) < v593)
      {
        LODWORD(v1169) = *(v1347 + p_C);
        LODWORD(v1167) = v602;
        LODWORD(v1168) = v600;
        v593 = v601 + *v1342;
      }

      if (++p_C == 4)
      {
        LODWORD(v1200) = v1169;
        *(&v1200 + 1) = __PAIR64__(v1167, LODWORD(v1168));
        p_C = &v1341[2] + 4;
        *&v1364 = &v1341[2] + 4;
        *(&v1364 + 1) = &v1341[4];
        *&v1365 = v1341;
        *&v1348 = E_ROM_dico2_isf;
        *(&v1348 + 1) = &E_ROM_dico2_isf[1792];
        *&v1349 = E_ROM_dico2_isf;
        E_LPC_stage1_isf_vq(&v1364, &v1348, 7u, v1347);
        v603 = 0;
        v604 = 1.0e30;
        do
        {
          v605 = 0;
          v606 = &E_ROM_dico2_isf[7 * *(v1347 + v603)];
          do
          {
            v607 = &v606[v605];
            v608 = &v606[v605 + 1];
            if (&v606[v605] < E_ROM_dico2_isf || v608 > E_ROM_dico21_isf || v607 > v608)
            {
              goto LABEL_1617;
            }

            v12.n128_f32[0] = *(&v1341[2] + v605 * 4 + 4) - *v607;
            *(v1346 + v605 * 4) = v12.n128_u32[0];
            ++v605;
          }

          while (v605 != 7);
          *&v1364 = E_ROM_dico23_isf_36b;
          *(&v1364 + 1) = E_ROM_dico1_isf_noise;
          *&v1365 = E_ROM_dico23_isf_36b;
          v611 = E_LPC_isf_sub_vq(v1346, &v1364, 7u, 64, v1342);
          v12.n128_u32[0] = v1342[0];
          if (*v1342 < v604)
          {
            DWORD1(v1200) = *(v1347 + v603);
            LODWORD(v1201) = v611;
            v604 = *v1342;
          }

          ++v603;
          v569 = __dst;
        }

        while (v603 != 4);
        v612 = 0;
        v613 = v1200;
        v614 = &E_ROM_dico1_isf[9 * v1200];
        v12.n128_u32[0] = 1076090634;
        do
        {
          v615 = v614 + 1;
          if (v614 < E_ROM_dico1_isf || v615 > E_ROM_dico2_isf || v614 > v615)
          {
            goto LABEL_1617;
          }

          v618 = *v614++;
          *(&v1176 + v612) = ((v618 * 2.56) + 0.5);
          v612 += 2;
        }

        while (v612 != 18);
        v619 = 0;
        v620 = WORD2(v1200);
        v621 = &E_ROM_dico2_isf[7 * DWORD1(v1200)];
        do
        {
          v622 = v621 + 1;
          if (v621 < E_ROM_dico2_isf || v622 > E_ROM_dico21_isf || v621 > v622)
          {
            goto LABEL_1617;
          }

          v625 = *v621++;
          *(&v1177 + v619 + 2) = ((v625 * 2.56) + 0.5);
          v619 += 2;
        }

        while (v619 != 14);
        v626 = 0;
        v627 = WORD4(v1200);
        v628 = &E_ROM_dico21_isf_36b[5 * DWORD2(v1200)];
        do
        {
          v629 = v628 + 1;
          if (v628 < E_ROM_dico21_isf_36b || v629 > E_ROM_dico22_isf_36b || v628 > v629)
          {
            goto LABEL_1617;
          }

          v632 = *v628++;
          *(&v1176 + v626) += ((v632 * 2.56) + 0.5);
          v626 += 2;
        }

        while (v626 != 10);
        v633 = 0;
        v634 = WORD6(v1200);
        v635 = &E_ROM_dico22_isf_36b[4 * SHIDWORD(v1200)];
        do
        {
          v636 = v635 + 1;
          if (v635 < E_ROM_dico22_isf_36b || v636 > E_ROM_dico23_isf_36b || v635 > v636)
          {
            goto LABEL_1617;
          }

          v639 = *v635++;
          *((&v1176 | 0xA) + v633) += ((v639 * 2.56) + 0.5);
          v633 += 2;
        }

        while (v633 != 8);
        v640 = 0;
        v559 = v1201;
        v641 = &E_ROM_dico23_isf_36b[7 * v1201];
        do
        {
          v642 = v641 + 1;
          if (v641 < E_ROM_dico23_isf_36b || v642 > E_ROM_dico1_isf_noise || v641 > v642)
          {
            goto LABEL_1617;
          }

          v645 = *v641++;
          *(&v1177 + v640 + 2) += ((v645 * 2.56) + 0.5);
          v640 += 2;
        }

        while (v640 != 14);
        v646 = 0;
        v12 = vdupq_n_s16(0x2AABu);
        do
        {
          v647 = *(&v1176 + v646);
          *(&v1176 + v646) = vaddq_s16(vaddq_s16(E_ROM_mean_isf[v646 / 0x10], v647), vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*&v1151[v646], v12.n128_u64[0]), 0xFuLL), vmull_high_s16(*&v1151[v646], v12), 0xFuLL));
          *&v1151[v646] = v647;
          v646 += 16;
        }

        while (v646 != 32);
        v648 = 0;
        v649 = 128;
        v517 = &v1339[248];
        v518 = (__dst + 4792);
        do
        {
          v650 = *(&v1176 + v648);
          if (v649 > v650)
          {
            *(&v1176 + v648) = v649;
            v650 = v649;
          }

          v649 = v650 + 128;
          v648 += 2;
        }

        while (v648 != 30);
        v651 = (v126 + 1);
        if ((v126 + 1) <= v1137 && v126 <= v651)
        {
          *v126 = v613;
          v652 = (v126 + 2);
          if (v651 <= (v126 + 2) && v652 <= v1137 && v651 >= v1138)
          {
            v126[1] = v620;
            v653 = (v126 + 3);
            if (v652 <= (v126 + 3) && v653 <= v1137 && v652 >= v1138)
            {
              v126[2] = v627;
              v576 = v126 + 4;
              if (v653 <= (v126 + 4) && v576 <= v1137 && v653 >= v1138)
              {
                v126[3] = v634;
                if (v576 <= v126 + 5 && (v126 + 5) <= v1137 && v576 >= v1138)
                {
                  goto LABEL_906;
                }
              }
            }
          }
        }

LABEL_1617:
        __break(0x5519u);
LABEL_1618:
        LODWORD(v1200) = v1169;
        *(&v1200 + 1) = __PAIR64__(v1167, LODWORD(v1168));
        __break(0x5519u);
LABEL_1619:
        LODWORD(v1200) = v1169;
        v1102 = v1144;
        v1104 = v1140;
        v1103 = v1141;
        goto LABEL_1621;
      }
    }
  }

  v318 = *(__dst + 1237);
  *&v1341[0] = v1155;
  *(&v1341[0] + 1) = v1150;
  *&v1341[1] = v1155;
  v319 = E_GAIN_open_loop_search(__dst + 563, 0x40uLL, v318, __dst + 1228, __dst + 1198, v1341, v316);
  v320 = __dst;
  v321 = v319;
  v322 = *(__dst + 1228);
  if (v322 <= 0.6)
  {
    v324 = *(__dst + 1229) * 0.9;
  }

  else
  {
    v323 = E_GAIN_olag_median(v319, __dst + 1232);
    v320 = __dst;
    *(__dst + 1237) = v323;
    v322 = *(__dst + 1228);
    v324 = 1.0;
  }

  v320[1229] = v324;
  v1108[1969] = v324 >= 0.8;
  v325 = *(v320 + 756);
  v326 = *(v325 + 280) >> 1;
  if (v322 > 0.65)
  {
    LOWORD(v326) = v326 | 0x4000;
  }

  *(v325 + 280) = v326;
  v327 = *v1158;
  if (v327 != 10)
  {
    v1156 = 2 * v321;
    if (v327 > 0)
    {
      v1161 = v313;
      v475 = 0;
      *&v476 = -1;
      *(&v476 + 1) = -1;
      v1341[2] = v476;
      v1341[3] = v476;
      v1341[0] = v476;
      v1341[1] = v476;
      *(&v1347[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v1347[0] = 0xAAAAAAAAAAAAAAAALL;
      __asm { FMOV            V0.2D, #0.390625 }

      v478 = vdupq_n_s64(0xBFD5555555555555);
      v1131 = v1108 + 1898;
      v479 = (v1108 + 1898);
      do
      {
        v480 = &v1341[v475];
        v481 = *v479++;
        v482 = vmovl_high_s16(v481);
        v483.i64[0] = v482.i32[2];
        v483.i64[1] = v482.i32[3];
        v484 = vcvtq_f64_s64(v483);
        v483.i64[0] = v482.i32[0];
        v483.i64[1] = v482.i32[1];
        v485 = vcvtq_f64_s64(v483);
        v486 = vmovl_s16(*v481.i8);
        v483.i64[0] = v486.i32[2];
        v483.i64[1] = v486.i32[3];
        v487 = vcvtq_f64_s64(v483);
        v483.i64[0] = v486.i32[0];
        v483.i64[1] = v486.i32[1];
        v488 = vsubq_f32(*(&v1205 + v475 * 16 + 16), E_ROM_f_mean_isf[v475 + 1]);
        v489 = vsubq_f32(*(&v1205 + v475 * 16), E_ROM_f_mean_isf[v475]);
        *v480 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v489.f32), _Q0, vmulq_f64(vcvtq_f64_s64(v483), v478))), vmlaq_f64(vcvt_hight_f64_f32(v489), _Q0, vmulq_f64(v487, v478)));
        v480[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v488.f32), _Q0, vmulq_f64(v485, v478))), vmlaq_f64(vcvt_hight_f64_f32(v488), _Q0, vmulq_f64(v484, v478)));
        v475 += 2;
      }

      while (v475 != 4);
      *&v490 = -1;
      *(&v490 + 1) = -1;
      v1346[2] = v490;
      v1346[3] = v490;
      v1346[0] = v490;
      v1346[1] = v490;
      LODWORD(v1342[0]) = -1;
      *&v1364 = v1341;
      *(&v1364 + 1) = &v1341[4];
      *&v1365 = v1341;
      *&v1348 = E_ROM_dico1_isf;
      *(&v1348 + 1) = &E_ROM_dico1_isf[2304];
      *&v1349 = E_ROM_dico1_isf;
      E_LPC_stage1_isf_vq(&v1364, &v1348, 9u, v1347);
      v491 = 0;
      LODWORD(v1169) = v1200;
      LODWORD(v1167) = HIDWORD(v1200);
      LODWORD(v1168) = DWORD2(v1200);
      v492 = 1.0e30;
      p_C = E_ROM_dico2_isf;
      LODWORD(v1166) = v1201;
      while (1)
      {
        v493 = 0;
        v494 = &E_ROM_dico1_isf[9 * *(v1347 + v491)];
        do
        {
          v495 = &v494[v493];
          v496 = &v494[v493 + 1];
          if (&v494[v493] < E_ROM_dico1_isf || v496 > E_ROM_dico2_isf || v495 > v496)
          {
            goto LABEL_1619;
          }

          v12.n128_f32[0] = *(v1341 + v493 * 4) - *v495;
          *(v1346 + v493 * 4) = v12.n128_u32[0];
          ++v493;
        }

        while (v493 != 9);
        *&v1364 = E_ROM_dico21_isf;
        *(&v1364 + 1) = E_ROM_dico22_isf;
        *&v1365 = E_ROM_dico21_isf;
        v499 = E_LPC_isf_sub_vq(v1346, &v1364, 3u, 64, v1342);
        v500 = *v1342;
        *&v1364 = E_ROM_dico22_isf;
        *(&v1364 + 1) = E_ROM_dico23_isf;
        *&v1365 = E_ROM_dico22_isf;
        v501 = E_LPC_isf_sub_vq((v1346 | 0xC), &v1364, 3u, 128, v1342);
        v502 = v500 + *v1342;
        *&v1364 = E_ROM_dico23_isf;
        *(&v1364 + 1) = E_ROM_dico24_isf;
        *&v1365 = E_ROM_dico23_isf;
        v503 = E_LPC_isf_sub_vq(&v1346[1] + 2, &v1364, 3u, 128, v1342);
        v12.n128_f32[0] = v502 + *v1342;
        if ((v502 + *v1342) < v492)
        {
          LODWORD(v1169) = *(v1347 + v491);
          LODWORD(v1166) = v503;
          LODWORD(v1167) = v501;
          LODWORD(v1168) = v499;
          v492 = v502 + *v1342;
        }

        if (++v491 == 4)
        {
          LODWORD(v1200) = v1169;
          *(&v1200 + 1) = __PAIR64__(v1167, LODWORD(v1168));
          LODWORD(v1201) = v1166;
          *&v1364 = &v1341[2] + 4;
          *(&v1364 + 1) = &v1341[4];
          *&v1365 = v1341;
          *&v1348 = E_ROM_dico2_isf;
          *(&v1348 + 1) = &E_ROM_dico2_isf[1792];
          *&v1349 = E_ROM_dico2_isf;
          E_LPC_stage1_isf_vq(&v1364, &v1348, 7u, v1347);
          v504 = 0;
          LODWORD(v1168) = DWORD1(v1200);
          LODWORD(v1167) = DWORD1(v1201);
          v505 = 1.0e30;
          LODWORD(v1166) = DWORD2(v1201);
          while (1)
          {
            v506 = 0;
            v507 = &E_ROM_dico2_isf[7 * *(v1347 + v504)];
            do
            {
              v508 = &v507[v506];
              v509 = &v507[v506 + 1];
              if (&v507[v506] < E_ROM_dico2_isf || v509 > E_ROM_dico21_isf || v508 > v509)
              {
                v1103 = &v1201 + 1;
                v1102 = &v1200 + 2;
                v1104 = (&v1201 + 8);
LABEL_1621:
                *v1102 = LODWORD(v1168);
                *v1103 = v1167;
                *v1104 = v1166;
                __break(0x5519u);
LABEL_1622:
                *(p_C + 256) = v12.n128_u32[0];
                __break(0x5519u);
              }

              v12.n128_f32[0] = *(&v1341[2] + v506 * 4 + 4) - *v508;
              *(v1346 + v506 * 4) = v12.n128_u32[0];
              ++v506;
            }

            while (v506 != 7);
            *&v1364 = E_ROM_dico24_isf;
            *(&v1364 + 1) = E_ROM_dico25_isf;
            *&v1365 = E_ROM_dico24_isf;
            LODWORD(v1169) = E_LPC_isf_sub_vq(v1346, &v1364, 3u, 32, v1342);
            v512 = *v1342;
            *&v1364 = E_ROM_dico25_isf;
            *(&v1364 + 1) = E_ROM_dico21_isf_36b;
            *&v1365 = E_ROM_dico25_isf;
            v513 = E_LPC_isf_sub_vq((v1346 | 0xC), &v1364, 4u, 32, v1342);
            v12.n128_f32[0] = v512 + *v1342;
            if ((v512 + *v1342) < v505)
            {
              LODWORD(v1168) = *(v1347 + v504);
              LODWORD(v1166) = v513;
              LODWORD(v1167) = v1169;
              v505 = v512 + *v1342;
            }

            ++v504;
            v227 = v1136;
            if (v504 == 4)
            {
              v514 = 0;
              DWORD1(v1200) = LODWORD(v1168);
              *(&v1201 + 4) = __PAIR64__(v1166, v1167);
              v515 = v1200;
              v516 = &E_ROM_dico1_isf[9 * v1200];
              v12.n128_u32[0] = 1076090634;
              v517 = &v1339[248];
              v518 = (__dst + 4792);
              do
              {
                v519 = v516 + 1;
                if (v516 < E_ROM_dico1_isf || v519 > E_ROM_dico2_isf || v516 > v519)
                {
                  goto LABEL_1617;
                }

                v522 = *v516++;
                *(&v1176 + v514) = ((v522 * 2.56) + 0.5);
                v514 += 2;
              }

              while (v514 != 18);
              v523 = 0;
              v524 = WORD2(v1200);
              v525 = &E_ROM_dico2_isf[7 * DWORD1(v1200)];
              do
              {
                v526 = v525 + 1;
                if (v525 < E_ROM_dico2_isf || v526 > E_ROM_dico21_isf || v525 > v526)
                {
                  goto LABEL_1617;
                }

                v529 = *v525++;
                *(&v1177 + v523 + 2) = ((v529 * 2.56) + 0.5);
                v523 += 2;
              }

              while (v523 != 14);
              v530 = 0;
              v531 = WORD4(v1200);
              v532 = &E_ROM_dico21_isf[3 * DWORD2(v1200)];
              do
              {
                v533 = v532 + 1;
                if (v532 < E_ROM_dico21_isf || v533 > E_ROM_dico22_isf || v532 > v533)
                {
                  goto LABEL_1617;
                }

                v536 = *v532++;
                *(&v1176 + v530) += ((v536 * 2.56) + 0.5);
                v530 += 2;
              }

              while (v530 != 6);
              v537 = 0;
              v538 = WORD6(v1200);
              v539 = &E_ROM_dico22_isf[3 * HIDWORD(v1200)];
              do
              {
                v540 = v539 + 1;
                if (v539 < E_ROM_dico22_isf || v540 > E_ROM_dico23_isf || v539 > v540)
                {
                  goto LABEL_1617;
                }

                v543 = *v539++;
                *(&v1176 + v537 + 6) += ((v543 * 2.56) + 0.5);
                v537 += 2;
              }

              while (v537 != 6);
              v544 = 0;
              v545 = v1201;
              v546 = &E_ROM_dico23_isf[3 * v1201];
              do
              {
                v547 = v546 + 1;
                if (v546 < E_ROM_dico23_isf || v547 > E_ROM_dico24_isf || v546 > v547)
                {
                  goto LABEL_1617;
                }

                v550 = *v546++;
                *((&v1176 | 0xC) + v544) += ((v550 * 2.56) + 0.5);
                v544 += 2;
              }

              while (v544 != 6);
              v551 = 0;
              v552 = WORD2(v1201);
              v553 = &E_ROM_dico24_isf[3 * DWORD1(v1201)];
              do
              {
                v554 = v553 + 1;
                if (v553 < E_ROM_dico24_isf || v554 > E_ROM_dico25_isf || v553 > v554)
                {
                  goto LABEL_1617;
                }

                v557 = *v553++;
                *(&v1177 + v551 + 2) += ((v557 * 2.56) + 0.5);
                v551 += 2;
              }

              while (v551 != 6);
              v558 = 0;
              v559 = WORD4(v1201);
              v560 = &E_ROM_dico25_isf[4 * SDWORD2(v1201)];
              do
              {
                v561 = v560 + 1;
                if (v560 < E_ROM_dico25_isf || v561 > E_ROM_dico21_isf_36b || v560 > v561)
                {
                  goto LABEL_1617;
                }

                v564 = *v560++;
                *(&v1177 + v558 + 8) += ((v564 * 2.56) + 0.5);
                v558 += 2;
              }

              while (v558 != 8);
              v565 = 0;
              v12 = vdupq_n_s16(0x2AABu);
              do
              {
                v566 = *(&v1176 + v565);
                *(&v1176 + v565) = vaddq_s16(vaddq_s16(E_ROM_mean_isf[v565 / 0x10], v566), vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*&v1131[v565], v12.n128_u64[0]), 0xFuLL), vmull_high_s16(*&v1131[v565], v12), 0xFuLL));
                *&v1131[v565] = v566;
                v565 += 16;
              }

              while (v565 != 32);
              v567 = 0;
              v568 = 128;
              v569 = __dst;
              do
              {
                v570 = *(&v1176 + v567);
                if (v568 > v570)
                {
                  *(&v1176 + v567) = v568;
                  v570 = v568;
                }

                v568 = v570 + 128;
                v567 += 2;
              }

              while (v567 != 30);
              v571 = (v1164 + 1);
              if ((v1164 + 1) > v1137)
              {
                goto LABEL_1617;
              }

              if (v1164 > v571)
              {
                goto LABEL_1617;
              }

              *v1164 = v515;
              v572 = (v1164 + 2);
              if (v571 > (v1164 + 2))
              {
                goto LABEL_1617;
              }

              if (v572 > v1137)
              {
                goto LABEL_1617;
              }

              if (v571 < v1138)
              {
                goto LABEL_1617;
              }

              v1164[1] = v524;
              v573 = (v1164 + 3);
              if (v572 > (v1164 + 3))
              {
                goto LABEL_1617;
              }

              if (v573 > v1137)
              {
                goto LABEL_1617;
              }

              if (v572 < v1138)
              {
                goto LABEL_1617;
              }

              v1164[2] = v531;
              v574 = (v1164 + 4);
              if (v573 > (v1164 + 4))
              {
                goto LABEL_1617;
              }

              if (v574 > v1137)
              {
                goto LABEL_1617;
              }

              if (v573 < v1138)
              {
                goto LABEL_1617;
              }

              v1164[3] = v538;
              v575 = (v1164 + 5);
              if (v574 > (v1164 + 5))
              {
                goto LABEL_1617;
              }

              if (v575 > v1137)
              {
                goto LABEL_1617;
              }

              if (v574 < v1138)
              {
                goto LABEL_1617;
              }

              v1164[4] = v545;
              v576 = (v1164 + 6);
              if (v575 > (v1164 + 6))
              {
                goto LABEL_1617;
              }

              if (v576 > v1137)
              {
                goto LABEL_1617;
              }

              if (v575 < v1138)
              {
                goto LABEL_1617;
              }

              v1164[5] = v552;
              if (v576 > v1164 + 7 || (v1164 + 7) > v1137 || v576 < v1138)
              {
                goto LABEL_1617;
              }

LABEL_906:
              v654 = 0;
              *v576 = v559;
              v655 = v576 + 1;
              do
              {
                v656 = &v1176 + v654 + 2;
                v658 = (&v1176 + v654) < &v1176 || v656 > &v1178 || &v1176 + v654 > v656;
                v659 = &v1178 + v654;
                v660 = &v1178 + v654 + 2;
                if (v658 || v659 < &v1178 || v660 > &v1180 || v659 > v660)
                {
                  goto LABEL_1617;
                }

                *(&v1178 + v654) = *(&v1176 + v654);
                v654 += 2;
              }

              while (v654 != 30);
              v664 = 0;
              HIWORD(v1179) = 2 * HIWORD(v1177);
              do
              {
                v665 = (&v1178 + v664);
                v666 = (&v1178 + v664 + 2);
                if ((&v1178 + v664) < &v1178 || v666 > &v1180 || v665 > v666)
                {
                  goto LABEL_1617;
                }

                v669 = *v665;
                v670 = &E_ROM_cos[v669 >> 7];
                v671 = v670 + 1;
                v672 = v670 + 2;
                v673 = v670 + 1 < E_ROM_cos || v672 > &word_19B317122;
                v674 = v673 || v671 > v672;
                v675 = !v674 && v670 >= E_ROM_cos;
                if (!v675 || v670 > v671)
                {
                  goto LABEL_1617;
                }

                *(&v1178 + v664) = *v670 + (((v670[1] - *v670) * (v669 & 0x7Fu)) >> 7);
                v664 += 2;
              }

              while (v664 != 32);
              v1144 = v655;
              v12.n128_u32[0] = 0;
              v1106 = 0.0;
              if (*v1158 == 8)
              {
                v677 = v569 + 4728;
                v678 = &v1205;
                v679 = 15;
                v680 = (v569 + 4728);
                do
                {
                  if ((v680 + 1) > v518 || v680 > v680 + 1)
                  {
                    goto LABEL_1617;
                  }

                  v682 = *v678;
                  v678 = (v678 + 4);
                  v683 = v682;
                  v684 = *v680++;
                  v12.n128_f32[0] = v12.n128_f32[0] + ((v683 - v684) * (v683 - v684));
                  --v679;
                }

                while (v679);
                v1173 = v12.n128_f32[0];
                v685 = (v12.n128_f32[0] / -400000.0) + 1.25;
                if (v685 > 1.0)
                {
                  v685 = 1.0;
                }

                if (v685 < 0.0)
                {
                  v685 = 0.0;
                }

                v1106 = v685;
                v686 = v1206;
                *v677 = v1205;
                *(v569 + 4744) = v686;
                v12.n128_u32[0] = v1207;
                v687 = v1208;
                *(v569 + 4760) = v1207;
                *(v569 + 4776) = v687;
                if (v677 > v518)
                {
                  goto LABEL_1617;
                }
              }

              if (v1108[1968] == 1)
              {
                v1108[1968] = 0;
                v12.n128_u32[0] = v1178;
                v688 = v1179;
                *v11 = v1178;
                *(v11 + 1) = v688;
                if (v11 > v569 + 2997)
                {
                  goto LABEL_1617;
                }
              }

              v689 = 0;
              v690 = v1188;
              p_C = &v1190;
              *&v691 = 0xAAAAAAAAAAAAAAAALL;
              *(&v691 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v1341[0] = v691;
              v1341[1] = v691;
              do
              {
                v692 = 0;
                v693 = *(&E_ROM_interpol_frac + v689);
                v12 = vdupq_n_s32(0x8000 - v693);
                v694 = vdupq_n_s16(v693);
                do
                {
                  v1341[v692 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmulq_s32(v12, vmovl_s16(*&v11[v692])), *v694.i8, *(&v1178 + v692 * 2)), 0xFuLL), vmlal_high_s16(vmulq_s32(v12, vmovl_high_s16(*&v11[v692])), v694, *(&v1178 + v692 * 2)), 0xFuLL);
                  v692 += 8;
                }

                while (v692 != 16);
                if (v690 > &v1190)
                {
                  goto LABEL_1617;
                }

                E_LPC_isp_a_conversion(v1341, v690);
                v690 += 34;
                ++v689;
              }

              while (v689 != 3);
              if (v690 > &v1190)
              {
                goto LABEL_1617;
              }

              if (&v1190 - v690 < 33)
              {
                goto LABEL_1617;
              }

              if (v1188 > v690)
              {
                goto LABEL_1617;
              }

              E_LPC_isp_a_conversion(&v1178, v690);
              for (n = 0; n != 68; ++n)
              {
                *(v1257 + n) = vcvts_n_f32_s32(*(v1188 + n), 0xCuLL);
              }

              v12.n128_u32[0] = v1178;
              v696 = v1179;
              *v11 = v1178;
              *(v11 + 1) = v696;
              v697 = __dst;
              if (v11 > __dst + 2997)
              {
                goto LABEL_1617;
              }

              p_C = v1257;
              v698 = -64;
              v699 = 248;
              do
              {
                if (p_C > v1258)
                {
                  goto LABEL_1617;
                }

                vDSP_conv(&v697[v699 * 4 - 800], 1, (p_C + 64), -1, &v1339[v699], 1, 0x40uLL, 0x11uLL);
                v700 = __dst + 4536;
                v701 = v1153;
                v702 = v1126;
                v697 = __dst;
                v699 += 64;
                v698 += 64;
                p_C += 68;
              }

              while (v698 < 0xC0);
              if (v1146)
              {
                v12.n128_u32[0] = 0;
                v703 = 256;
                do
                {
                  if (v517 + 1 > v1340 || v517 > v517 + 1)
                  {
                    goto LABEL_1617;
                  }

                  v705 = *v517++;
                  v12.n128_f32[0] = v12.n128_f32[0] + (v705 * v705);
                  --v703;
                }

                while (v703);
                v1173 = v12.n128_f32[0];
                E_DTX_buffer(*(__dst + 757), &v1205, v1142, v12.n128_f32[0]);
                v700 = __dst + 4536;
                v701 = v1153;
                v702 = v1126;
                v697 = __dst;
              }

              v706 = 0;
              v707 = v1145;
              if (v1145 <= 42)
              {
                v707 = 42;
              }

              v708 = v707 - 8;
              v709 = v707 + 7;
              if (v1161 > 112)
              {
                v709 = 231;
              }

              LODWORD(v1140) = v709;
              if (v1161 <= 112)
              {
                v710 = v708;
              }

              else
              {
                v710 = 216;
              }

              v1147 = v710;
              v711 = v697 + 4600;
              if (v1156 <= 42)
              {
                v712 = 42;
              }

              else
              {
                v712 = v1156;
              }

              v713 = v712 - 8;
              v714 = v712 + 7;
              if (v1156 <= 224)
              {
                v715 = v714;
              }

              else
              {
                v715 = 231;
              }

              if (v1156 <= 224)
              {
                v716 = v713;
              }

              else
              {
                v716 = 216;
              }

              v1113 = v716;
              v1114 = v715;
              *&v1168 = &v1348;
              v1119 = (v697 + 4892);
              v717 = (v697 + 4892) <= v1148 && v697 + 4892 >= v1116;
              v1109 = (v697 + 4900);
              v1117 = (v697 + 6046);
              v718 = v697 + 4540;
              v1135 = v697 + 5420;
              v719 = v697 + 5452;
              v1112 = (v697 + 6036);
              v12.n128_f64[0] = --2.00000143;
              v1169 = v1346;
              v720 = v717;
              v1111 = v720;
              v1132 = 5450;
              v721 = (v697 + 5450);
              v1157 = v1257;
              v1152 = v1258;
              v1133 = 0xFFFFFFFF00000000;
              v1134 = (v697 + 6042);
              v1130 = 5448;
              p_C = E_ROM_inter4_2;
              v722 = v1338;
              v1162 = v697;
              v1163 = v697;
              v1167 = v1339;
              v1118 = (v697 + 4600);
              v1110 = v697 + 4540;
              while (2)
              {
                v1165 = v722;
                v723 = 0;
                v724 = v706 == 128;
                v725 = *v1158 > 0;
                v726 = !v724 || !v725;
                v1149 = v706;
                if (v724 && v725)
                {
                  v727 = 0;
                }

                else
                {
                  v727 = v706;
                }

                v728 = v1140;
                if (!v726)
                {
                  v728 = v1114;
                }

                LODWORD(v1140) = v728;
                v729 = v1147;
                if (!v726)
                {
                  v729 = v1113;
                }

                v1147 = v729;
                do
                {
                  v730 = &v1163[v723 + 192];
                  v731 = &v1163[v723 + 196];
                  v733 = v730 < v697 || v731 > v702 || v730 > v731;
                  v734 = &v718[v723];
                  if (v733 || v734 > v711 || &v700[v723] > v734)
                  {
                    goto LABEL_1617;
                  }

                  v12.n128_f32[0] = *v730 - *&v697[v723 + 4536];
                  *(&v1334 + v723) = v12.n128_u32[0];
                  v723 += 4;
                }

                while (v723 != 64);
                if (v1157 > v1258)
                {
                  goto LABEL_1617;
                }

                v1141 = v721;
                v1143 = v719;
                v1154 = v701;
                vDSP_conv(&__A[v706], 1, v1157 + 16, -1, &v1339[v706 + 248], 1, 0x40uLL, 0x11uLL);
                v12 = AMR_E_UTIL_synthesis(v1157, &v1339[v1149 + 248], v1337, 64, &v1334, 0);
                if (v1152 > &v1263)
                {
                  goto LABEL_1617;
                }

                MEMORY[0x19EAE5FA0](v1152, 1, &kGammaTable_GAMMA1, 1, &v1213, 1, 17, v12);
                vDSP_conv(&v1334, 1, v1217, -1, &v1318, 1, 0x40uLL, 0x11uLL);
                E_UTIL_deemph(&v1318, 0x40uLL, __dst + 1227);
                v1266 = 0u;
                v1265 = 0u;
                v1264 = 0u;
                v1263 = 0u;
                v1271 = v1322;
                v1272 = v1323;
                v1273 = v1324;
                v1274 = v1325;
                v1267 = v1318;
                v1268 = v1319;
                v1269 = v1320;
                v1270 = v1321;
                v1173 = 0.0;
                E_UTIL_f_preemph(&v1267, 32, &v1173, 0.68);
                MEMORY[0x19EAE5FA0](v1152, 1, &kGammaTable_GAMMA1, 1, &v1213, 1, 17);
                AMR_E_UTIL_synthesis(&v1213, &v1267, &v1267, 32, &v1263, 0);
                vDSP_conv(&v1263, 1, v1157 + 16, -1, v1284, 1, 0x20uLL, 0x11uLL);
                for (ii = 0; ii != 32; ++ii)
                {
                  v738 = &v1167[ii + 280];
                  v739 = &v1167[ii + 281];
                  if (v738 < v1339 || v739 > v1340 || v738 > v739)
                  {
                    goto LABEL_1617;
                  }

                  v12.n128_f32[0] = *v738;
                  *(v1285 + ii * 4) = *v738;
                }

                MEMORY[0x19EAE5FA0](v1152, 1, &kGammaTable_GAMMA1, 1, &v1213, 1, 17);
                v1283[11] = 0u;
                *(&v1283[10] + 4) = 0u;
                *(&v1283[9] + 4) = 0u;
                *(&v1283[8] + 4) = 0u;
                *(&v1283[7] + 4) = 0u;
                *(&v1283[6] + 4) = 0u;
                *(&v1283[5] + 4) = 0u;
                *(&v1283[4] + 4) = 0u;
                *(&v1283[3] + 4) = 0u;
                *(&v1283[2] + 4) = 0u;
                *(&v1283[1] + 4) = 0u;
                *(v1283 + 4) = 0u;
                v1280 = v1214;
                v1281 = v1215;
                v1282 = v1216;
                *v1283 = v1217[0];
                __B = v1213;
                AMR_E_UTIL_synthesis(v1157, &__B, &__B, 64, v1283 + 4, 0);
                v1173 = 0.0;
                E_UTIL_deemph(&__B, 0x40uLL, &v1173);
                if (*v1158 > 1)
                {
                  *&v1341[0] = &v1339[v1149 + 248];
                  *(&v1341[0] + 1) = v1340;
                  *&v1341[1] = v1339;
                  v742 = E_GAIN_closed_loop_search(v1341, &v1318, &__B, v1147, v1140, &v1172, v727, 128, 160);
                  v743 = v1144;
                  if (v727)
                  {
                    v744 = v1144 + 1;
                    v745 = __dst;
                    v748 = v1120;
                    v747 = v721;
                    v746 = v1143;
                    if ((v1144 + 1) > v1137 || v1144 > v744 || v1144 < v1138)
                    {
                      goto LABEL_1617;
                    }

                    *v1144 = v1172 + 4 * (v742 - v1147);
                    goto LABEL_1067;
                  }

                  v745 = __dst;
                  v748 = v1120;
                  v747 = v721;
                  v746 = v1143;
                  if (v742 > 127)
                  {
                    if (v742 > 0x9F)
                    {
                      LOWORD(v749) = v742 + 280;
                    }

                    else
                    {
                      v749 = 2 * v742 + (v1172 >> 1) + 120;
                    }
                  }

                  else
                  {
                    LOWORD(v749) = v1172 + 4 * v742 - 136;
                  }
                }

                else
                {
                  *&v1341[0] = &v1339[v1149 + 248];
                  *(&v1341[0] + 1) = v1340;
                  *&v1341[1] = v1339;
                  v742 = E_GAIN_closed_loop_search(v1341, &v1318, &__B, v1147, v1140, &v1172, v727, 34, 92);
                  v743 = v1144;
                  if (v727)
                  {
                    v744 = v1144 + 1;
                    v745 = __dst;
                    v747 = v721;
                    v746 = v1143;
                    if ((v1144 + 1) > v1137 || v1144 > v744 || v1144 < v1138)
                    {
                      goto LABEL_1617;
                    }

                    *v1144 = ((v1172 << 15) + ((v742 - v1147) << 17)) >> 16;
                    v748 = v1120;
LABEL_1067:
                    v12.n128_u32[0] = *v1116;
                    if (*v1116 >= 60.0 || (v12.n128_u32[0] = *v1119, *v1119 <= 0.9))
                    {
                      v754 = 0;
                      v1121 = 0;
                    }

                    else
                    {
                      v754 = 1;
                      v1121 = 1;
                    }

                    v755 = 0;
                    v1166 = (v748 + 2 * v1149);
                    if (v1172 <= 0)
                    {
                      v756 = 0;
                    }

                    else
                    {
                      v756 = -2;
                    }

                    if (v1172 <= 0)
                    {
                      v757 = 0;
                    }

                    else
                    {
                      v757 = -4;
                    }

                    v758 = v1166 + v756 + -2 * v742 - 30;
                    v1127 = v1172;
                    v759 = &E_ROM_inter4_2[2 * v1172 + 6 + 2 * v757];
                    v760 = &v1135[v756 - 2 * v742];
                    do
                    {
                      v761 = 0;
                      v762 = 0;
                      v763 = v760;
                      v764 = v758;
                      do
                      {
                        if (v763 > v11)
                        {
                          goto LABEL_1617;
                        }

                        if (v764 > v763)
                        {
                          goto LABEL_1617;
                        }

                        if (v764 < v227)
                        {
                          goto LABEL_1617;
                        }

                        v765 = &v759[v761];
                        if (&v759[v761] < E_ROM_inter4_2 || v765 + 1 > word_19B3359E4 || v765 > v765 + 1)
                        {
                          goto LABEL_1617;
                        }

                        v766 = *v764++;
                        v762 += *v765 * v766;
                        v761 += 8;
                        v763 += 2;
                      }

                      while (v761 != 256);
                      v767 = v1166 + v755;
                      if (v767 + 1 > v11 || v767 > v767 + 1 || v767 < v227)
                      {
                        goto LABEL_1617;
                      }

                      v768 = (v762 + 0x2000) >> 14;
                      if (v768 <= -32768)
                      {
                        v768 = -32768;
                      }

                      if (v768 >= 0x7FFF)
                      {
                        LOWORD(v768) = 0x7FFF;
                      }

                      *v767 = v768;
                      v758 += 2;
                      ++v755;
                      v760 += 2;
                    }

                    while (v755 != 65);
                    v769 = 0.0;
                    if (*v1158 >= 2)
                    {
                      if (v11 - v1166 < 127)
                      {
                        goto LABEL_1617;
                      }

                      E_UTIL_convolve(v1166, *(v745 + 3022), &__B, &__A1);
                      v770 = E_ACELP_xy1_corr(&v1318, &__A1, &v1203);
                      if ((v754 & (v770 > 0.95)) != 0)
                      {
                        v769 = 0.95;
                      }

                      else
                      {
                        v769 = v770;
                      }

                      *v1341 = -v769;
                      MEMORY[0x19EAE6050](&__A1, 1, v1341, &v1318, 1, &v1286, 1, 64);
                      v747 = v721;
                      v746 = v1143;
                      v748 = v1120;
                      v745 = __dst;
                    }

                    v771 = 0;
                    v772 = v1133;
                    do
                    {
                      v773 = (v748 + (v772 >> 31));
                      v775 = v773 + 1 <= v11 && v773 <= v773 + 1 && v773 >= v227;
                      v776 = &v1154[v771 / 2];
                      v777 = v747 + v771;
                      v780 = v775 && v777 <= v11 && v776 <= v777 && v776 >= v227;
                      v781 = &v746[v771];
                      if (!v780 || v781 > v11 || v777 > v781 || v777 < v227)
                      {
                        goto LABEL_1617;
                      }

                      *(&v1180 + v771) = (5898 * (*&v1162[v771 + 5450] + *v773) + 20972 * *&v1162[v771 + 5448] + 0x4000) >> 15;
                      v771 += 2;
                      v772 += 0x100000000;
                    }

                    while (v771 != 128);
                    E_UTIL_convolve(&v1180, *(v745 + 3022), &__B, &v1225);
                    v785 = E_ACELP_xy1_corr(&v1318, &v1225, &v1202);
                    if ((v754 & (v785 > 0.95)) != 0)
                    {
                      v786 = 0.95;
                    }

                    else
                    {
                      v786 = v785;
                    }

                    *v1341 = -v786;
                    MEMORY[0x19EAE6050](&v1225, 1, v1341, &v1318, 1, &v1302, 1, 64);
                    if (*v1158 < 2)
                    {
                      v1144 = v744;
                    }

                    else
                    {
                      v787 = 0;
                      v12.n128_u32[0] = 0;
                      do
                      {
                        v12.n128_f32[0] = (v12.n128_f32[0] + (*(&v1286 + v787) * *(&v1286 + v787))) - (*(&v1302 + v787) * *(&v1302 + v787));
                        v787 += 4;
                      }

                      while (v787 != 256);
                      if ((v1144 + 2) > v1137 || v744 > v1144 + 2 || v744 < v1138)
                      {
                        goto LABEL_1617;
                      }

                      v12.n128_f64[0] = v12.n128_f32[0];
                      *v744 = v12.n128_f64[0] < 0.1;
                      v1144 += 2;
                      if (v12.n128_f64[0] < 0.1)
                      {
                        v1314 = v1298;
                        v1315 = v1299;
                        v1316 = v1300;
                        v1317 = v1301;
                        v1310 = v1294;
                        v1311 = v1295;
                        v1312 = v1296;
                        v1313 = v1297;
                        v1306 = v1290;
                        v1307 = v1291;
                        v1308 = v1292;
                        v1309 = v1293;
                        v1302 = v1286;
                        v1303 = v1287;
                        v1304 = v1288;
                        v786 = v769;
                        v1305 = v1289;
LABEL_1143:
                        v12.n128_f64[0] = ldexp(1.0, __e);
                        v792 = 0;
                        v793 = v1154;
                        do
                        {
                          if (v793 + 1 > v11 || v793 > v793 + 1 || v793 < v227)
                          {
                            goto LABEL_1617;
                          }

                          v796 = *v793++;
                          v797 = *(v1284 + v792) - (v786 * v796) * v12.n128_f64[0];
                          *(v1284 + v792) = v797;
                          v792 += 4;
                        }

                        while (v792 != 256);
                        v1173 = 0.0;
                        v798 = vcvtd_n_f64_s32(*v1134, 0xFuLL);
                        E_UTIL_f_preemph(&__B, 64, &v1173, v798);
                        if (v1127 <= 2)
                        {
                          v799 = v742;
                        }

                        else
                        {
                          v799 = v742 + 1;
                        }

                        if (v799 <= 63)
                        {
                          v800 = v799;
                          p_B = &__B;
                          v802 = 64 - v799;
                          do
                          {
                            v803 = p_B + 1;
                            v805 = p_B < &__B || v803 > v1284 || p_B > v803;
                            v806 = &p_B[v800];
                            v807 = &p_B[v800 + 1];
                            if (v805 || v806 < &__B || v807 > v1284 || v806 > v807)
                            {
                              goto LABEL_1617;
                            }

                            v811 = *p_B++;
                            v12.n128_f32[0] = *v806 + (v811 * 0.85);
                            *v806 = v12.n128_f32[0];
                            --v802;
                          }

                          while (v802);
                        }

                        v1128 = v799;
                        v812 = &v1286;
                        v813 = &v1302;
                        v814 = 64;
                        do
                        {
                          vDSP_dotpr(v813++, 1, &__B, 1, v812++, v814--);
                        }

                        while (v814);
                        v815 = *v1158;
                        if (v815 > 4)
                        {
                          v817 = v1137;
                          v816 = v1138;
                          if (v815 - 7 >= 2 && v815 != 5 && v815 != 6)
                          {
                            return;
                          }

                          E_ACELP_4t(&v1286);
                          v818 = (v1144 + 1);
                          if ((v1144 + 1) > v1137)
                          {
                            goto LABEL_1617;
                          }

                          if (v1144 > v818)
                          {
                            goto LABEL_1617;
                          }

                          if (v1144 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          *v1144 = v1200;
                          v819 = (v1144 + 2);
                          v820 = v1134;
                          v821 = v1128;
                          if (v818 > (v1144 + 2))
                          {
                            goto LABEL_1617;
                          }

                          if (v819 > v1137)
                          {
                            goto LABEL_1617;
                          }

                          if (v818 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          v1144[1] = WORD2(v1200);
                          v822 = (v1144 + 3);
                          if (v819 > (v1144 + 3))
                          {
                            goto LABEL_1617;
                          }

                          if (v822 > v1137)
                          {
                            goto LABEL_1617;
                          }

                          if (v819 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          v1144[2] = WORD4(v1200);
                          v823 = (v1144 + 4);
                          if (v822 > (v1144 + 4))
                          {
                            goto LABEL_1617;
                          }

                          if (v823 > v1137)
                          {
                            goto LABEL_1617;
                          }

                          if (v822 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          v1144[3] = WORD6(v1200);
                          v824 = (v1144 + 5);
                          if (v823 > (v1144 + 5))
                          {
                            goto LABEL_1617;
                          }

                          if (v824 > v1137)
                          {
                            goto LABEL_1617;
                          }

                          if (v823 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          v1144[4] = v1201;
                          v825 = (v1144 + 6);
                          if (v824 > (v1144 + 6))
                          {
                            goto LABEL_1617;
                          }

                          if (v825 > v1137)
                          {
                            goto LABEL_1617;
                          }

                          if (v824 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          v1144[5] = WORD2(v1201);
                          v826 = v1144 + 7;
                          if (v825 > (v1144 + 7))
                          {
                            goto LABEL_1617;
                          }

                          if (v826 > v1137)
                          {
                            goto LABEL_1617;
                          }

                          if (v825 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          v1144[6] = WORD4(v1201);
                          v827 = v1144 + 8;
                          if (v826 > v1144 + 8 || v827 > v1137 || v826 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          v828 = WORD6(v1201);
                        }

                        else
                        {
                          v817 = v1137;
                          v816 = v1138;
                          if (*v1158 <= 1u)
                          {
                            if (*v1158)
                            {
                              goto LABEL_1214;
                            }

                            v1175 = NAN;
                            *&v1008 = -1;
                            *(&v1008 + 1) = -1;
                            v1379 = v1008;
                            v1378 = v1008;
                            v1377 = v1008;
                            v1376 = v1008;
                            v1375 = v1008;
                            v1374 = v1008;
                            v1373 = v1008;
                            v1372 = v1008;
                            v1371 = v1008;
                            v1370 = v1008;
                            v1369 = v1008;
                            v1368 = v1008;
                            v1367 = v1008;
                            v1366 = v1008;
                            v1365 = v1008;
                            v1364 = v1008;
                            v1363 = v1008;
                            v1362 = v1008;
                            v1361 = v1008;
                            v1360 = v1008;
                            v1359 = v1008;
                            v1358 = v1008;
                            v1357 = v1008;
                            v1356 = v1008;
                            v1355 = v1008;
                            v1354 = v1008;
                            v1353 = v1008;
                            v1352 = v1008;
                            v1351 = v1008;
                            v1350 = v1008;
                            v1349 = v1008;
                            v1348 = v1008;
                            v1347[15] = v1008;
                            v1347[14] = v1008;
                            v1347[13] = v1008;
                            v1347[12] = v1008;
                            v1347[11] = v1008;
                            v1347[10] = v1008;
                            v1347[9] = v1008;
                            v1347[8] = v1008;
                            v1347[7] = v1008;
                            v1347[6] = v1008;
                            v1347[5] = v1008;
                            v1347[4] = v1008;
                            v1347[3] = v1008;
                            v1347[2] = v1008;
                            v1347[1] = v1008;
                            v1347[0] = v1008;
                            memset(v1346, 255, sizeof(v1346));
                            *&v1009 = -1;
                            *(&v1009 + 1) = -1;
                            v1345 = v1009;
                            v1344[2] = v1009;
                            v1344[1] = v1009;
                            v1344[0] = v1009;
                            v1343[3] = v1009;
                            v1343[2] = v1009;
                            v1343[1] = v1009;
                            v1343[0] = v1009;
                            v1342[7] = v1009;
                            v1342[6] = v1009;
                            v1342[5] = v1009;
                            v1342[4] = v1009;
                            v1342[3] = v1009;
                            v1342[2] = v1009;
                            v1342[1] = v1009;
                            v1342[0] = v1009;
                            memset(v1341, 255, sizeof(v1341));
                            v1010 = 0;
                            v1011 = 1.0;
                            do
                            {
                              v1012 = vmulq_f32(v1284[v1010], v1284[v1010]);
                              v1011 = (((v1011 + v1012.f32[0]) + v1012.f32[1]) + v1012.f32[2]) + v1012.f32[3];
                              ++v1010;
                            }

                            while (v1010 != 16);
                            v1013 = 0;
                            v1014 = 1.0;
                            do
                            {
                              v1015 = vmulq_f32(*(&v1286 + v1013), *(&v1286 + v1013));
                              v1014 = (((v1014 + v1015.f32[0]) + v1015.f32[1]) + v1015.f32[2]) + v1015.f32[3];
                              v1013 += 16;
                            }

                            while (v1013 != 256);
                            v1016 = 0;
                            v1017 = 0;
                            v1018 = sqrtf(v1014 / v1011);
                            do
                            {
                              v1019 = v1016;
                              do
                              {
                                v1020 = *(&v1286 + v1017);
                                v1021 = (v1020 + v1020) + (v1018 * *(v1284 + v1017));
                                if (v1021 >= 0.0)
                                {
                                  v1022 = -1.0;
                                  v1023 = 1.0;
                                }

                                else
                                {
                                  v1020 = -v1020;
                                  v1021 = -v1021;
                                  v1022 = 1.0;
                                  v1023 = -1.0;
                                }

                                *(&v1364 + v1017) = v1023;
                                *(&v1348 + v1017) = v1022;
                                *(&v1286 + v1017) = v1020;
                                *(v1347 + v1017) = v1021;
                                _CF = v1017 >= 0x3E;
                                v1017 += 2;
                              }

                              while (!_CF);
                              v1016 = 1;
                              v1017 = 1;
                            }

                            while ((v1019 & 1) == 0);
                            v1024 = 0;
                            v1025 = v1347;
                            v1026 = 1;
                            do
                            {
                              v1027 = 0;
                              v1028 = v1026;
                              do
                              {
                                __I = 0xAAAAAAAAAAAAAAAALL;
                                vDSP_maxvi(v1025, 2, &v1175, &__I, 0x20uLL);
                                v1029 = v1347 + (v1024 + __I);
                                v1030 = v1029 + 1;
                                if (v1029 < v1347 || v1030 > &v1348 || v1029 > v1030)
                                {
                                  goto LABEL_1617;
                                }

                                *v1029 = v1027++ + -16.0;
                              }

                              while (v1027 != 16);
                              v1026 = 0;
                              v1024 = 1;
                              v1025 = v1347 + 1;
                            }

                            while ((v1028 & 1) != 0);
                            memset(v1346, 0, 256);
                            memset(&v1346[32], 0, 256);
                            v1346[30] = v1283[10];
                            v1346[31] = v1283[11];
                            v1346[28] = v1283[8];
                            v1346[29] = v1283[9];
                            v1346[26] = v1283[6];
                            v1346[27] = v1283[7];
                            v1346[24] = v1283[4];
                            v1346[25] = v1283[5];
                            v1346[22] = v1283[2];
                            v1346[23] = v1283[3];
                            v1346[20] = v1283[0];
                            v1346[21] = v1283[1];
                            v1346[18] = v1281;
                            v1346[19] = v1282;
                            v1346[16] = __B;
                            v1346[17] = v1280;
                            MEMORY[0x19EAE5FB0](&v1346[16], 1, &v1346[48], 1, 64);
                            v1033 = 0;
                            v12.n128_u32[0] = 0;
                            v1034 = &v1346[16] + 2;
                            v1035 = v1341;
                            do
                            {
                              if (v1034 - 1 > v1347)
                              {
                                goto LABEL_1617;
                              }

                              v1036 = v1342 + v1033;
                              if ((v1346 + v1033) > v1346)
                              {
                                goto LABEL_1617;
                              }

                              v1037 = (v1036 + 252);
                              if (v1036 + 252 > v1346 + v1033)
                              {
                                goto LABEL_1617;
                              }

                              if (v1037 < v1343)
                              {
                                goto LABEL_1617;
                              }

                              v12.n128_f32[0] = v12.n128_f32[0] + (*(v1034 - 2) * *(v1034 - 2));
                              *v1037 = v12.n128_f32[0] * 0.5;
                              if (v1034 > v1347)
                              {
                                goto LABEL_1617;
                              }

                              v1038 = (v1036 + 124);
                              if (v1038 < v1342)
                              {
                                goto LABEL_1617;
                              }

                              v1039 = (&v1342[8] + v1033);
                              if (v1039 > v1343 || v1038 > v1039)
                              {
                                goto LABEL_1617;
                              }

                              v12.n128_f32[0] = v12.n128_f32[0] + (*(v1034 - 1) * *(v1034 - 1));
                              *v1038 = v12.n128_f32[0] * 0.5;
                              v1033 -= 4;
                              v1034 += 2;
                            }

                            while (v1033 != -128);
                            v1040 = 0;
                            v1041 = 0;
                            v1042 = 0;
                            v1043 = 0;
                            v1044 = 31;
                            v1045 = 1023;
                            v1046 = &v1346[16] + 1;
                            do
                            {
                              if (v1043 > 0x1E)
                              {
                                v1058 = v1341 + v1045;
                                v12.n128_u32[0] = 0;
                                v1059 = v1046;
                                v1055 = &v1346[16];
                              }

                              else
                              {
                                v12.n128_u32[0] = 0;
                                v1047 = v1041;
                                v1048 = v1042;
                                v1049 = v1044;
                                v1050 = &v1346[16];
                                do
                                {
                                  v1051 = v1050 + 1;
                                  if (v1050 + 1 > v1347)
                                  {
                                    goto LABEL_1617;
                                  }

                                  if (v1046 < v1346)
                                  {
                                    goto LABEL_1617;
                                  }

                                  v1052 = &v1050[v1040 + 2];
                                  if (v1052 > v1347)
                                  {
                                    goto LABEL_1617;
                                  }

                                  v1053 = &v1341[255] + v1047 + 12;
                                  if (v1053 < v1341)
                                  {
                                    goto LABEL_1617;
                                  }

                                  v1054 = &v1341[256] + v1047;
                                  if (v1054 > v1342)
                                  {
                                    goto LABEL_1617;
                                  }

                                  if (v1053 > v1054)
                                  {
                                    goto LABEL_1617;
                                  }

                                  v12.n128_f32[0] = v12.n128_f32[0] + (*v1050 * v1050[v1040 + 1]);
                                  *v1053 = v12.n128_u32[0];
                                  v1055 = v1050 + 2;
                                  if (v1050 + 2 > v1347)
                                  {
                                    goto LABEL_1617;
                                  }

                                  if (&v1050[v1040 + 3] > v1347)
                                  {
                                    goto LABEL_1617;
                                  }

                                  v1056 = &v1341[255] + v1048 + 8;
                                  if (v1056 < v1341)
                                  {
                                    goto LABEL_1617;
                                  }

                                  v1057 = &v1341[255] + v1048 + 12;
                                  if (v1057 > v1342 || v1056 > v1057)
                                  {
                                    goto LABEL_1617;
                                  }

                                  v12.n128_f32[0] = v12.n128_f32[0] + (*v1051 * *v1052);
                                  *v1056 = v12.n128_u32[0];
                                  v1048 -= 132;
                                  v1047 -= 132;
                                  v1050 = v1055;
                                  --v1049;
                                }

                                while (v1049);
                                v1058 = (&v1341[255] + v1047 + 12);
                                v1059 = &v1055[v1040 + 1];
                              }

                              if (v1055 < v1346 || v1055 + 1 > v1347 || v1055 > v1055 + 1 || v1059 < v1346 || v1059 + 1 > v1347 || v1059 > v1059 + 1 || v1058 < v1341 || v1058 + 1 > v1342 || v1058 > v1058 + 1)
                              {
                                goto LABEL_1617;
                              }

                              ++v1043;
                              v1045 -= 32;
                              v1046 += 2;
                              --v1044;
                              *v1058 = v12.n128_f32[0] + (*v1055 * *v1059);
                              v1042 -= 4;
                              v1041 -= 128;
                              v1040 += 2;
                            }

                            while (v1043 != 32);
                            v1060 = 0;
                            v1061 = v1341;
                            do
                            {
                              if (*(&v1364 + v1060) >= 0.0)
                              {
                                v1062 = &v1364;
                              }

                              else
                              {
                                v1062 = &v1348;
                              }

                              MEMORY[0x19EAE5FA0](v1061, 1, v1062 | 4, 2, v1061, 1, 32, v1035);
                              v1061 += 8;
                              _CF = v1060 >= 0x3E;
                              v1060 += 2;
                            }

                            while (!_CF);
                            v1063 = 0;
                            v1064 = 0;
                            v1065 = v1341;
                            v1066 = v1342;
                            v12.n128_u32[0] = 1.0;
                            v1067 = -1.0;
                            LODWORD(v1068) = 1;
                            do
                            {
                              v1069 = 0;
                              v1070 = *(&v1286 + v1063);
                              v1071 = *v1066++;
                              v1072 = v1071;
                              v1073 = -1;
                              v1074 = 1;
                              do
                              {
                                if ((v1343 + v1069 + 4) > v1346 || (v1065 + v1069 + 4) > v1342)
                                {
                                  goto LABEL_1617;
                                }

                                if (((v12.n128_f32[0] * ((v1070 + *(&v1286 + v1074)) * (v1070 + *(&v1286 + v1074)))) - (v1067 * ((v1072 + *(&v1342[8] + v1069)) + *(v1065 + v1069)))) > 0.0)
                                {
                                  v12.n128_f32[0] = (v1072 + *(&v1342[8] + v1069)) + *(v1065 + v1069);
                                  v1067 = (v1070 + *(&v1286 + v1074)) * (v1070 + *(&v1286 + v1074));
                                  v1073 = v1074;
                                }

                                v1069 += 4;
                                _CF = v1074 >= 0x3E;
                                v1074 += 2;
                              }

                              while (!_CF);
                              if (v1073 < 0)
                              {
                                v1068 = v1068;
                              }

                              else
                              {
                                v1068 = v1073;
                              }

                              if (v1073 >= 0)
                              {
                                v1064 = v1063;
                              }

                              v1065 += 8;
                              _CF = v1063 >= 0x3E;
                              v1063 += 2;
                            }

                            while (!_CF);
                            v12.n128_u32[0] = 0;
                            v1186 = 0u;
                            v1187 = 0u;
                            v1184 = 0u;
                            v1185 = 0u;
                            v1183 = 0u;
                            v1181 = 0u;
                            v1182 = 0u;
                            v1180 = 0u;
                            v1076 = &v1364 + 4 * v1064;
                            v1077 = v1076 + 4;
                            if (v1076 < &v1364 || v1077 > v1380 || v1076 > v1077)
                            {
                              goto LABEL_1617;
                            }

                            v1080 = v1064 / 2;
                            v12.n128_u32[0] = *(&v1364 + v1064);
                            v1081 = (&v1180 + 2 * v1064);
                            v1082 = (v1081 + 2) > v1188 || v1081 > (v1081 + 2);
                            v1083 = !v1082 && v1081 >= &v1180;
                            v1084 = v1083;
                            if (v12.n128_f32[0] <= 0.0)
                            {
                              if (!v1084)
                              {
                                goto LABEL_1617;
                              }

                              *v1081 = -512;
                              v1080 += 32;
                              v1085 = 48;
                            }

                            else
                            {
                              if (!v1084)
                              {
                                goto LABEL_1617;
                              }

                              *v1081 = 512;
                              v1085 = 16;
                            }

                            v1086 = &v1364 + 4 * v1068;
                            v1087 = v1086 + 4;
                            v1088 = v1086 < &v1364 || v1087 > v1380;
                            if (v1088 || v1086 > v1087)
                            {
                              goto LABEL_1617;
                            }

                            v1090 = v1068 >> 1;
                            v12.n128_u32[0] = *(&v1364 + v1068);
                            v1091 = (&v1180 + 2 * v1068);
                            v1094 = (v1091 + 2) <= v1188 && v1091 <= (v1091 + 2) && v1091 >= &v1180;
                            if (v12.n128_f32[0] <= 0.0)
                            {
                              if (!v1094)
                              {
                                goto LABEL_1617;
                              }

                              *v1091 = -512;
                              v1090 += 32;
                              v1095 = 48;
                            }

                            else
                            {
                              if (!v1094)
                              {
                                goto LABEL_1617;
                              }

                              *v1091 = 512;
                              v1095 = 16;
                            }

                            v1096 = 0;
                            v1097 = &v1346[v1085] - 4 * v1064;
                            v1098 = &v1346[v1095] - 4 * v1068;
                            v828 = v1090 + (v1080 << 6);
                            LODWORD(v1200) = v1090 + (v1080 << 6);
                            do
                            {
                              v1099 = &v1097[v1096];
                              if (&v1097[v1096] < v1346)
                              {
                                goto LABEL_1617;
                              }

                              if (v1099 + 1 > v1347)
                              {
                                goto LABEL_1617;
                              }

                              if (v1099 > v1099 + 1)
                              {
                                goto LABEL_1617;
                              }

                              v1100 = &v1098[v1096];
                              if (&v1098[v1096] < v1346)
                              {
                                goto LABEL_1617;
                              }

                              v1101 = &v1098[v1096 + 4];
                              if (v1101 > v1347 || v1100 > v1101)
                              {
                                goto LABEL_1617;
                              }

                              v12.n128_f32[0] = *v1099 + *v1100;
                              *(&v1225 + v1096) = v12.n128_u32[0];
                              v1096 += 4;
                            }

                            while (v1096 != 256);
                            v826 = v1144;
                            v827 = v1144 + 1;
                            v817 = v1137;
                            v816 = v1138;
                            v820 = v1134;
                            v821 = v1128;
                            if ((v1144 + 1) > v1137 || v1144 > v827 || v1144 < v1138)
                            {
                              goto LABEL_1617;
                            }
                          }

                          else
                          {
                            if (v815 != 2 && v815 != 3 && v815 != 4)
                            {
                              return;
                            }

LABEL_1214:
                            E_ACELP_4t(&v1286);
                            v829 = (v1144 + 1);
                            if ((v1144 + 1) > v1137)
                            {
                              goto LABEL_1617;
                            }

                            if (v1144 > v829)
                            {
                              goto LABEL_1617;
                            }

                            if (v1144 < v1138)
                            {
                              goto LABEL_1617;
                            }

                            *v1144 = v1200;
                            v830 = (v1144 + 2);
                            v820 = v1134;
                            v821 = v1128;
                            if (v829 > (v1144 + 2))
                            {
                              goto LABEL_1617;
                            }

                            if (v830 > v1137)
                            {
                              goto LABEL_1617;
                            }

                            if (v829 < v1138)
                            {
                              goto LABEL_1617;
                            }

                            v1144[1] = WORD2(v1200);
                            v826 = v1144 + 3;
                            if (v830 > (v1144 + 3))
                            {
                              goto LABEL_1617;
                            }

                            if (v826 > v1137)
                            {
                              goto LABEL_1617;
                            }

                            if (v830 < v1138)
                            {
                              goto LABEL_1617;
                            }

                            v1144[2] = WORD4(v1200);
                            v827 = v1144 + 4;
                            if (v826 > v1144 + 4 || v827 > v1137 || v826 < v1138)
                            {
                              goto LABEL_1617;
                            }

                            v828 = WORD6(v1200);
                          }
                        }

                        *v826 = v828;
                        v831 = *v820;
                        v832 = 64;
                        do
                        {
                          v833 = (&v1180 + 2 * --v832);
                          v834 = (v833 + 2);
                          if (v833 < &v1180 || v834 > v1188 || v833 > v834)
                          {
                            goto LABEL_1617;
                          }

                          if ((v833 - 2) < &v1180 || (v833 - 2) > v833)
                          {
                            goto LABEL_1617;
                          }

                          *v833 = (((*v833 << 15) | 0x4000u) - v831 * *(v833 - 1)) >> 15;
                        }

                        while (v832 > 1);
                        if (v821 <= 63)
                        {
                          v838 = v821 - 64;
                          v839 = v821;
                          v840 = &v1180;
                          do
                          {
                            v841 = &v840[v839];
                            if (&v840[v839] < &v1180)
                            {
                              goto LABEL_1617;
                            }

                            v842 = v841 + 1 > v1188 || v841 > v841 + 1;
                            v843 = v840 + 1;
                            v844 = !v842 && v840 >= &v1180;
                            v845 = !v844 || v843 > v1188;
                            if (v845 || v840 > v843)
                            {
                              goto LABEL_1617;
                            }

                            v847 = *v840++;
                            *v841 = (27853 * v847 + (*v841 << 15) + 0x4000) >> 15;
                            _CF = __CFADD__(v838++, 1);
                          }

                          while (!_CF);
                        }

                        v1129 = v827;
                        LODWORD(v1341[0]) = -1;
                        LODWORD(v1346[0]) = -1;
                        LODWORD(v1364) = -1;
                        vDSP_svesq(&v1225, 1, v1341, 0x40uLL);
                        v848 = 0.01;
                        *v1341 = *v1341 + 0.01;
                        vDSP_dotpr2(&v1318, 1, &__A1, 1, &v1225, 1, v1346, &v1364, 0x40uLL);
                        LODWORD(v1204[0]) = v1341[0];
                        *(v1204 + 4) = vmul_f32(vadd_f32(__PAIR64__(v1364, v1346[0]), vdup_n_s32(0x3C23D70Au)), COERCE_FLOAT32X2_T(--2.00000143));
                        v1144 = v1129 + 1;
                        v851 = (v1129 + 1) <= v817 && v1129 <= v1129 + 1 && v1129 >= v816;
                        if (*v1158 > 1)
                        {
                          v852 = 7;
                        }

                        else
                        {
                          v852 = 6;
                        }

                        E_ACELP_gains_quantise(&v1180, v852, &v1170, &v1171, &v1203, v1121, __dst + 3013, v786);
                        v227 = v1136;
                        if (!v851)
                        {
                          goto LABEL_1617;
                        }

                        *v1129 = v853;
                        v854 = *(__dst + 3017);
                        v855 = v1112;
                        v856 = 3;
                        do
                        {
                          if (v855 + 1 > v1134 || v855 > v855 + 1)
                          {
                            goto LABEL_1617;
                          }

                          v859 = *v855++;
                          v858 = v859;
                          if (v859 < v854)
                          {
                            v854 = v858;
                          }

                          --v856;
                        }

                        while (v856);
                        v860 = 0;
                        v861 = v854;
                        if (v854 >= 8)
                        {
                          v862 = 8;
                        }

                        else
                        {
                          v862 = v854;
                        }

                        v863 = v1171;
                        if (v1171 <= 0x7FFFFFF && v861 >= 1)
                        {
                          v860 = 0;
                          do
                          {
                            v863 *= 2;
                            ++v860;
                          }

                          while (v863 <= 0x7FFFFFF && v860 < v862);
                        }

                        if (v863 >= 2147450879)
                        {
                          v864 = 0x7FFF;
                        }

                        else
                        {
                          v864 = (v863 + 0x8000) >> 16;
                        }

                        v865 = *(__dst + 3022);
                        v866 = (v1166 - 31);
                        v869 = v11 >= v1166 - 248 && v1136 <= v866 && v11 - (v1166 - 31) > 622;
                        if (v860 <= *(__dst + 3022))
                        {
                          if (!v869)
                          {
                            goto LABEL_1617;
                          }

                          v872 = 78;
                          v12 = vnegq_s32(vdupq_n_s32((v865 - v860)));
                          v873 = (v1166 - 31);
                          do
                          {
                            if (v873 < v866 || &v873[1] > v1166 + 16 || v873 > &v873[1])
                            {
                              goto LABEL_1617;
                            }

                            *v873 = vraddhn_s32(vshlq_s32(vshll_n_s16(*v873, 0x10uLL), v12), 0);
                            ++v873;
                            --v872;
                          }

                          while (v872);
                        }

                        else
                        {
                          if (!v869)
                          {
                            goto LABEL_1617;
                          }

                          v12.n128_u64[0] = vdup_n_s16(v860 - v865);
                          v870 = 78;
                          v871 = (v1166 - 31);
                          do
                          {
                            if (v871 < v866 || &v871[1] > v1166 + 16 || v871 > &v871[1])
                            {
                              goto LABEL_1617;
                            }

                            *v871 = vqshl_s16(*v871, v12.n128_u64[0]);
                            ++v871;
                            --v870;
                          }

                          while (v870);
                        }

                        *(__dst + 3022) = v860;
                        if ((v1111 & 1) == 0)
                        {
                          goto LABEL_1617;
                        }

                        v874 = 0;
                        v875 = v1170;
                        v876 = vcvtd_n_f64_s32(v1170, 0xEuLL);
                        v877 = 0.1;
                        v878 = (v876 * 0.1) + (*v1119 * 0.9);
                        if (v878 < 0.6)
                        {
                          v878 = 0.6;
                        }

                        *v1119 = v878;
                        v879 = v1166[5];
                        v1195 = v1166[4];
                        v1196 = v879;
                        v880 = v1166[7];
                        v1197 = v1166[6];
                        v1198 = v880;
                        v881 = v1166[1];
                        v1191 = *v1166;
                        v1192 = v881;
                        v12 = v1166[2];
                        v882 = v1166[3];
                        v1193 = v12;
                        v1194 = v882;
                        do
                        {
                          if ((&v1191 + v874 + 8) > v1199)
                          {
                            goto LABEL_1617;
                          }

                          v12.n128_u64[0] = vraddhn_s32(vshll_n_s16(*(&v1191 + v874), 0xDuLL), 0);
                          *(&v1191 + v874) = v12.n128_u64[0];
                          v874 += 8;
                        }

                        while (v874 != 128);
                        __ea = v864;
                        LODWORD(v1341[0]) = -1431655766;
                        LODWORD(v1346[0]) = -1431655766;
                        v883 = E_UTIL_dot_product12(&v1191, &v1191, v1341);
                        v884 = 2 * v875 * v875;
                        v1122 = v884;
                        if (v884 && (v885 = v884 ^ (v884 >> 31), v885 <= 0x3FFFFFFF))
                        {
                          v886 = 0;
                          do
                          {
                            v887 = v885 >> 29;
                            v885 *= 2;
                            ++v886;
                          }

                          while (!v887);
                          v888 = v883;
                          v889 = v886;
                        }

                        else
                        {
                          v888 = v883;
                          v889 = 0;
                        }

                        v890 = v1341[0];
                        v891 = E_UTIL_dot_product12(&v1180, &v1180, v1346);
                        v892 = __ea;
                        if (__ea)
                        {
                          v893 = __dst;
                          v894 = v1122;
                          if (__ea == 0xFFFF)
                          {
                            v892 = 15;
                          }

                          else
                          {
                            v895 = (__ea ^ (__ea >> 15));
                            if (v895 >= 0x4000)
                            {
                              v892 = 0;
                            }

                            else
                            {
                              v896 = 0;
                              do
                              {
                                v895 = (2 * v895);
                                ++v896;
                              }

                              while (v895 < 0x4000);
                              v892 = v896;
                            }
                          }
                        }

                        else
                        {
                          v893 = __dst;
                          v894 = v1122;
                        }

                        v897 = (v894 << v889 >> 16) * (v888 >> 16);
                        v898 = (((__ea << v892) * (__ea << v892)) >> 15) * (v891 >> 16);
                        v899 = v890 + 6 - v889 - 10 - LODWORD(v1346[0]) + 2 * v892;
                        if (v899 < 0)
                        {
                          v900 = v897 >> 15 >> (1 - v899);
                          if (v899 <= 0xFFFFFFE1)
                          {
                            v900 = 0;
                          }

                          v901 = v898 >> 16;
                        }

                        else
                        {
                          v900 = v897 >> 16;
                          v901 = v898 >> 15 >> (v899 + 1);
                        }

                        v1123 = ((v900 - v901) << 15) / (v901 + v900 + 1);
                        *(v893 + 3021) = (v1123 >> 2) + 0x2000;
                        v902 = v1166[5];
                        v1195 = v1166[4];
                        v1196 = v902;
                        v903 = v1166[7];
                        v1197 = v1166[6];
                        v1198 = v903;
                        v904 = v1166[1];
                        v1191 = *v1166;
                        v1192 = v904;
                        v905 = v1166[3];
                        v1193 = v1166[2];
                        v1194 = v905;
                        v906 = (*(&v1333 + 3) + ((v875 * -0.000061035) * *(&v1256 + 3)));
                        v907 = __ea;
                        v908 = -*(v893 + 3022);
                        v12.n128_f64[0] = ldexp(-1.0, v908);
                        v909 = __dst;
                        v12.n128_f32[0] = v906 + v12.n128_f64[0] * v907 * *(&v1240 + 3);
                        *(__dst + 1227) = v12.n128_u32[0];
                        v910 = v1154;
                        if (*v1158 == 8)
                        {
                          v12.n128_f64[0] = ldexp(1.0, v908);
                          v910 = v1154;
                          v909 = __dst;
                          v911 = 0;
                          v912 = v1154;
                          do
                          {
                            v914 = v912 + 1 <= v11 && v912 <= v912 + 1 && v912 >= v1136;
                            v915 = &v1165[v911];
                            v916 = &v1165[v911 + 4];
                            if (!v914 || v915 < v1338 || v916 > v1339 || v915 > v916)
                            {
                              goto LABEL_1617;
                            }

                            v920 = *v912++;
                            v921 = v12.n128_f64[0] * v920 * (v875 * 0.000061035);
                            *v915 = v921;
                            v911 += 4;
                          }

                          while (v911 != 256);
                        }

                        v922 = 1;
                        v923 = &v1180;
                        v924 = v910;
                        v925 = 64;
                        do
                        {
                          if (v924 + 1 > v11 || v924 > v924 + 1 || v924 < v1136)
                          {
                            goto LABEL_1617;
                          }

                          v928 = *v924 * v875 + 32 * __ea * *v923 + 0x2000;
                          v929 = v928 >> 14;
                          if (((v928 >> 14) + 0x7FFF) > 0xFFFE)
                          {
                            if (v929 < 0x8000)
                            {
                              *v924 = 0x8000;
                              v922 = 0x7FFF;
                            }

                            else
                            {
                              v922 = 0x7FFF;
                              *v924 = 0x7FFF;
                            }
                          }

                          else
                          {
                            *v924 = v928 >> 14;
                            if (v929 < 0)
                            {
                              v929 = -v929;
                            }

                            if (v929 > v922)
                            {
                              v922 = v929;
                            }
                          }

                          v923 = (v923 + 2);
                          ++v924;
                          --v925;
                        }

                        while (v925);
                        if (!v922)
                        {
                          goto LABEL_1384;
                        }

                        if (v922 == 0xFFFF)
                        {
                          v930 = 14;
                          goto LABEL_1385;
                        }

                        v931 = (v922 ^ (v922 >> 15));
                        if (v931 < 0x4000)
                        {
                          v932 = 0;
                          do
                          {
                            v930 = v932;
                            v931 = (2 * v931);
                            ++v932;
                          }

                          while (v931 < 0x4000);
                        }

                        else
                        {
LABEL_1384:
                          v930 = -1;
                        }

LABEL_1385:
                        v933 = *(v909 + 3022);
                        *(v909 + 3020) = *(v909 + 3019);
                        *(v909 + 1509) = *(v909 + 6034);
                        *(v909 + 3017) = v930 + v933;
                        __e = -v933;
                        v12.n128_f64[0] = ldexp(1.0, -v933);
                        v934 = 0;
                        v936 = v1130;
                        v935 = v1132;
                        do
                        {
                          v937 = &__dst[v936];
                          v939 = &__dst[v935] <= v11 && v937 <= &__dst[v935] && v937 >= v1136;
                          v940 = &v1167[v934 + 248];
                          v941 = &v1167[v934 + 249];
                          if (!v939 || v940 < v1339 || v941 > v1340 || v940 > v941)
                          {
                            goto LABEL_1617;
                          }

                          v945 = v12.n128_f64[0] * *v937;
                          *v940 = v945;
                          ++v934;
                          v936 += 2;
                          v935 += 2;
                        }

                        while (v934 != 64);
                        v12.n128_u32[0] = AMR_E_UTIL_synthesis(v1157, &v1339[v1149 + 248], v1224, 64, v1139, 1).n128_u32[0];
                        if (*v1158 < 8)
                        {
                          v697 = __dst;
                          v702 = v1126;
                          v953 = v1154;
                          v700 = __dst + 4536;
                          v954 = v1149;
                          v711 = v1118;
                          v718 = v1110;
                          v956 = v1141;
                          v955 = v1143;
                        }

                        else
                        {
                          v946 = ldexp(1.0, -*(__dst + 3022)) * v907;
                          v947 = v946;
                          v948 = *(__dst + 1230);
                          v949 = v947;
                          if (v948 <= v947)
                          {
                            v950 = v949 / 1.19;
                            v951 = v1118;
                            v952 = v1123;
                            if (v948 > v950)
                            {
                              v950 = *(__dst + 1230);
                            }
                          }

                          else
                          {
                            v950 = v949 * 1.19;
                            if (v948 < v950)
                            {
                              v950 = *(__dst + 1230);
                            }

                            v951 = v1118;
                            v952 = v1123;
                          }

                          v957 = 0;
                          v12.n128_f64[0] = vcvtd_n_f64_s32(v952, 0xFuLL);
                          v958 = (1.0 - v12.n128_f64[0]) * 0.5;
                          *(__dst + 1230) = v950;
                          v959 = (((v1106 * v958) * v950) + (1.0 - (v1106 * v958)) * v946) * 0.001953125;
                          v960 = &v1180;
                          do
                          {
                            v961 = (&v1263 + v957);
                            v962 = *v960++;
                            *v961 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v962.i8)), v959);
                            v961[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v962)), v959);
                            v957 += 32;
                          }

                          while (v957 != 256);
                          v963 = 0;
                          v964 = (v12.n128_f64[0] + 1.0) * 0.125;
                          v1173 = v964;
                          v965 = &v1338[4 * v1149];
                          v12.n128_f32[0] = -v964;
                          *v965 = *v965 + (*&v1263 - (v964 * *(&v1263 + 1)));
                          do
                          {
                            v966 = (&v1263 + v963);
                            v967 = (&v1263 + v963 + 4);
                            v968 = (&v1263 + v963) < &v1263 || v966 > v967;
                            v969 = &v1165[v963 + 4];
                            v970 = &v1165[v963 + 8];
                            if (v968 || v969 < v1338 || v970 > v1339 || v969 > v970)
                            {
                              goto LABEL_1617;
                            }

                            *v969 = *v969 + ((*v967 + (v12.n128_f32[0] * *v966)) + (v12.n128_f32[0] * v966[2]));
                            v963 += 4;
                          }

                          while (v963 != 248);
                          v974 = v965 + 63;
                          if (v965 + 63 < v1338)
                          {
                            goto LABEL_1617;
                          }

                          if (v965 + 64 > v1339)
                          {
                            goto LABEL_1617;
                          }

                          if (v974 > v965 + 64)
                          {
                            goto LABEL_1617;
                          }

                          *v974 = *v974 + (*(&v1278 + 3) + (v12.n128_f32[0] * *(&v1278 + 2)));
                          *&v975 = -1;
                          *(&v975 + 1) = -1;
                          v1379 = v975;
                          v1378 = v975;
                          v1377 = v975;
                          v1376 = v975;
                          v1375 = v975;
                          v1374 = v975;
                          v1373 = v975;
                          v1372 = v975;
                          v1371 = v975;
                          v1370 = v975;
                          v1369 = v975;
                          v1368 = v975;
                          v1367 = v975;
                          v1366 = v975;
                          v1365 = v975;
                          v1364 = v975;
                          v1341[18] = v975;
                          v1341[19] = v975;
                          v1341[16] = v975;
                          v1341[17] = v975;
                          v1341[14] = v975;
                          v1341[15] = v975;
                          v1341[12] = v975;
                          v1341[13] = v975;
                          v1341[10] = v975;
                          v1341[11] = v975;
                          v1341[8] = v975;
                          v1341[9] = v975;
                          v1341[6] = v975;
                          v1341[7] = v975;
                          v1341[4] = v975;
                          v1341[5] = v975;
                          v1341[2] = v975;
                          v1341[3] = v975;
                          v1341[0] = v975;
                          v1341[1] = v975;
                          LODWORD(v1352) = -1;
                          v1351 = v975;
                          v1350 = v975;
                          v1349 = v975;
                          v1348 = v975;
                          v12.n128_u32[0] = AMR_E_UTIL_synthesis(v1157, v965, &v1364, 64, v951, 1).n128_u32[0];
                          v954 = v1149;
                          if (v1109 > __dst + 1226)
                          {
                            goto LABEL_1617;
                          }

                          E_UTIL_deemph(&v1364, 0x40uLL, v1109);
                          E_UTIL_hp50_12k8(&v1364, 0x40uLL, (__dst + 4844));
                          memcpy(v1346, &v1340[5 * v1149], 0x140uLL);
                          if (v1117 > v1107)
                          {
                            goto LABEL_1617;
                          }

                          v976 = 0;
                          v977 = *v1117;
                          do
                          {
                            v977 = 31821 * v977 + 13849;
                            *(v1341 + v976) = v977;
                            v976 += 4;
                          }

                          while (v976 != 320);
                          v978 = 0;
                          *v1117 = v977;
                          do
                          {
                            v979 = vmulq_f32(*&v1165[v978], *&v1165[v978]);
                            v848 = (((v848 + v979.f32[0]) + v979.f32[1]) + v979.f32[2]) + v979.f32[3];
                            v978 += 16;
                          }

                          while (v978 != 256);
                          v980 = 0;
                          v981 = 0.01;
                          do
                          {
                            v982 = vmulq_f32(v1341[v980], v1341[v980]);
                            v981 = (((v981 + v982.f32[0]) + v982.f32[1]) + v982.f32[2]) + v982.f32[3];
                            ++v980;
                          }

                          while (v980 != 20);
                          v983 = 0;
                          v984 = sqrtf(v848 / v981);
                          do
                          {
                            v1341[v983] = vmulq_n_f32(v1341[v983], v984);
                            ++v983;
                          }

                          while (v983 != 20);
                          v985 = 0;
                          v986 = *(__dst + 1215);
                          v987 = *(__dst + 1216);
                          v988 = *(__dst + 1217);
                          v989 = *(__dst + 1218);
                          do
                          {
                            v990 = v989;
                            v989 = v988;
                            v988 = *(&v1364 + v985);
                            v991 = v987 * -0.86426;
                            v987 = v986;
                            v986 = (((v991 + (v986 * 1.7871)) + (v988 * 0.89355)) + (v989 * -1.7871)) + (v990 * 0.89355);
                            *(&v1364 + v985) = v986;
                            v985 += 4;
                          }

                          while (v985 != 256);
                          v992 = 0;
                          *(__dst + 1215) = v986;
                          *(__dst + 1216) = v987;
                          *(__dst + 1217) = v988;
                          *(__dst + 1218) = v989;
                          v12.n128_u32[0] = 981668463;
                          v993 = 0.001;
                          do
                          {
                            v994 = (&v1364 + v992);
                            if ((&v1364 + v992) < &v1364 || v994 > (&v1364 + v992 + 4))
                            {
                              goto LABEL_1617;
                            }

                            v996 = v994[1];
                            v993 = v993 + (v996 * v996);
                            v12.n128_f32[0] = v12.n128_f32[0] + (v996 * *(&v1364 + v992));
                            v992 += 4;
                          }

                          while (v992 != 252);
                          v997 = 1.0 - (v12.n128_f32[0] / v993);
                          if (v1108[1970])
                          {
                            v997 = v997 * 1.25;
                          }

                          if (v997 >= 0.1)
                          {
                            v877 = v997;
                          }

                          MEMORY[0x19EAE5FA0](v1157, 1, &kGammaTable_0_6, 1, &v1348, 1, 17);
                          AMR_E_UTIL_synthesis(&v1348, v1341, v1341, 80, (__dst + 4664), 1);
                          E_UTIL_bp_6k_7k(v1341, (__dst + 4112));
                          E_UTIL_bp_6k_7k(v1346, (__dst + 4232));
                          v998 = 0;
                          v999 = 0.001;
                          v1000 = 0.001;
                          do
                          {
                            v1000 = v1000 + (*(v1346 + v998) * *(v1346 + v998));
                            v999 = v999 + (*(v1341 + v998) * *(v1341 + v998));
                            v998 += 4;
                          }

                          while (v998 != 320);
                          v1001 = 0;
                          v1002 = 0;
                          v697 = __dst;
                          v1003 = *(*(__dst + 757) + 694);
                          if (v877 <= 1.0)
                          {
                            v1004 = v877;
                          }

                          else
                          {
                            v1004 = 1.0;
                          }

                          v1005 = sqrtf(v1000 / v999);
                          v1006 = *(__dst + 1231) * (((18725 * v1003) >> 17) + ((18725 * v1003) >> 31));
                          if (v1003 > 6)
                          {
                            v1006 = 1.0;
                          }

                          *(__dst + 1231) = v1006;
                          v12.n128_f32[0] = (v1004 * (1.0 - v1006)) + (v1005 * v1006);
                          v1007 = 100000.0;
                          v702 = v1126;
                          v953 = v1154;
                          v700 = __dst + 4536;
                          v711 = v1118;
                          v718 = v1110;
                          v956 = v1141;
                          v955 = v1143;
                          do
                          {
                            if (v1007 > ((v12.n128_f32[0] - *&E_ROM_hp_gain[2 * v1001]) * (v12.n128_f32[0] - *&E_ROM_hp_gain[2 * v1001])))
                            {
                              v1002 = v1001;
                              v1007 = (v12.n128_f32[0] - *&E_ROM_hp_gain[2 * v1001]) * (v12.n128_f32[0] - *&E_ROM_hp_gain[2 * v1001]);
                            }

                            ++v1001;
                          }

                          while (v1001 != 16);
                          if ((v1129 + 2) > v1137 || v1144 > v1129 + 2 || v1144 < v1138)
                          {
                            goto LABEL_1617;
                          }

                          *v1144 = v1002;
                          v1144 = v1129 + 2;
                        }

                        v1152 = (v1152 + 68);
                        v1157 = (v1157 + 68);
                        v706 = v954 + 64;
                        v1167 += 64;
                        v1135 += 128;
                        v721 = v956 + 128;
                        v719 = v955 + 128;
                        v1162 += 128;
                        v1163 += 256;
                        v701 = v953 + 64;
                        v1133 += 0x4000000000;
                        v722 = v1165 + 256;
                        v1130 += 128;
                        v1132 += 128;
                        if (v954 >= 0xC0)
                        {
                          memcpy(v697, v697 + 1024, 0x200uLL);
                          p_C = __dst;
                          if (__dst + 512 < __dst)
                          {
                            goto LABEL_1617;
                          }

                          memcpy(v1126, __dst + 2048, 0x1CCuLL);
                          if (v1126 > __X)
                          {
                            goto LABEL_1617;
                          }

                          memcpy(v1136, __dst + 5464, 0x1F0uLL);
                          if (v1136 > v1120)
                          {
                            goto LABEL_1617;
                          }

                          return;
                        }

                        continue;
                      }
                    }

                    if ((v11 - v1166) < 0x80)
                    {
                      goto LABEL_1617;
                    }

                    v788 = v1185;
                    v789 = v1186;
                    v790 = v1183;
                    v1166[4] = v1184;
                    v1166[5] = v788;
                    v12 = v1187;
                    v1166[6] = v789;
                    v1166[7] = v12;
                    v791 = v1181;
                    *v1166 = v1180;
                    v1166[1] = v791;
                    v12.n128_u32[0] = v1182;
                    v1166[2] = v1182;
                    v1166[3] = v790;
                    if (v1166 >= v1166 + 8)
                    {
                      goto LABEL_1617;
                    }

                    v1253 = v1237;
                    v1254 = v1238;
                    v1255 = v1239;
                    v1256 = v1240;
                    v1249 = v1233;
                    v1250 = v1234;
                    v1251 = v1235;
                    v1252 = v1236;
                    v1245 = v1229;
                    v1246 = v1230;
                    v1247 = v1231;
                    v1248 = v1232;
                    __A1 = v1225;
                    v1242 = v1226;
                    v1243 = v1227;
                    v1244 = v1228;
                    v1203 = v1202;
                    goto LABEL_1143;
                  }

                  v745 = __dst;
                  v747 = v721;
                  v746 = v1143;
                  if (v742 > 91)
                  {
                    LOWORD(v749) = v742 + 24;
                  }

                  else
                  {
                    v749 = 2 * v742 + (v1172 >> 1) - 68;
                  }

                  v748 = v1120;
                }

                break;
              }

              v744 = v743 + 1;
              if ((v743 + 1) > v1137 || v743 > v744 || v743 < v1138)
              {
                goto LABEL_1617;
              }

              *v743 = v749;
              if (v742 <= 42)
              {
                v750 = 42;
              }

              else
              {
                v750 = v742;
              }

              v751 = v750 - 8;
              v752 = v750 + 7;
              if (v742 > 224)
              {
                v752 = 231;
              }

              LODWORD(v1140) = v752;
              if (v742 <= 224)
              {
                v753 = v751;
              }

              else
              {
                v753 = 216;
              }

              v1147 = v753;
              goto LABEL_1067;
            }
          }
        }
      }
    }

    goto LABEL_813;
  }

  p_C = 256;
  vDSP_conv(__A, 1, &v1262 + 3, -1, &v1339[248], 1, 0x100uLL, 0x11uLL);
  v12.n128_u32[0] = 0;
  do
  {
    if (v265 + 1 > v1340 || v265 > v265 + 1)
    {
      goto LABEL_1617;
    }

    v329 = *v265++;
    v12.n128_f32[0] = v12.n128_f32[0] + (v329 * v329);
    --p_C;
  }

  while (p_C);
  v1173 = v12.n128_f32[0];
  E_DTX_buffer(*(__dst + 757), &v1205, v1142, v12.n128_f32[0]);
  v330 = 0;
  v331 = *(__dst + 757);
  memset(v1346, 0, 64);
  v332 = (v331 + 656);
  v333 = (v331 + 688);
  v12.n128_u32[0] = 0;
  p_C = v1164;
  do
  {
    v334 = (v331 + v330 + 656);
    v335 = v331 + v330 + 660;
    if (v335 > v333 || v334 > v335)
    {
      goto LABEL_1617;
    }

    v12.n128_f32[0] = v12.n128_f32[0] + (*v334 * 0.125);
    v330 += 4;
  }

  while (v330 != 32);
  v337 = (v331 + 624);
  v338 = v331 + 512;
  v339 = -1;
  v340 = 7;
  v341 = (v331 + 624);
  do
  {
    v339 += v340;
    v342 = v341 + 1 > v332 || v341 > v341 + 1;
    v343 = (v338 + 4 * v339);
    v344 = v343 + 1;
    if (v342 || v343 < v338 || v344 > v337 || v343 > v344)
    {
      goto LABEL_1617;
    }

    *v341 = *v341 - *v343;
    ++v341;
    --v340;
  }

  while (v340);
  v348 = 8;
  do
  {
    v349 = &v337[--v348];
    v351 = v349 - 1 < v337 || v349 > v332 || v349 - 1 > v349;
    v352 = v349 + 1;
    if (v351 || v349 < v337 || v352 > v332 || v349 > v352)
    {
      goto LABEL_1617;
    }

    *v349 = *(v349 - 1);
  }

  while (v348 > 1);
  v356 = 0;
  *v337 = 0.0;
  v357 = -1;
  v358 = 27;
  v359 = -2;
  v360 = 2;
  do
  {
    v361 = 4 * (v357 + v358);
    v362 = v361 + 520;
    v363 = v361 + 516;
    v364 = 4 * (v359 + v358);
    ++v356;
    v365 = v360;
    do
    {
      v366 = (v331 + v364 + 512);
      v367 = v331 + v364 + 516;
      v369 = v366 < v338 || v367 > v337 || v366 > v367;
      v370 = (v331 + v363);
      v371 = v331 + v362;
      if (v369 || v370 < v338 || v371 > v337 || v370 > v371)
      {
        goto LABEL_1617;
      }

      --v365;
      *v370 = *v366;
      v362 += 4;
      v363 += 4;
      v364 += 4;
    }

    while (v365 > 1);
    ++v360;
    v358 += v357--;
    v359 -= 2;
  }

  while (v356 != 6);
  v375 = *v333;
  v376 = *v333 << 6;
  v377 = 1;
  v378 = *v333;
  do
  {
    if (--v378 < 0)
    {
      v378 = 7;
    }

    v379 = 64 * v378;
    v380 = 0.0;
    v381 = v376;
    v382 = 16;
    do
    {
      v383 = (v331 + v381);
      v384 = v331 + v381 + 4;
      v386 = v331 + v381 < v331 || v384 > v338 || v383 > v384;
      v387 = (v331 + v379);
      v388 = v331 + v379 + 4;
      if (v386 || v387 < v331 || v388 > v338 || v387 > v388)
      {
        goto LABEL_1617;
      }

      v380 = v380 + ((*v383 - *v387) * (*v383 - *v387));
      v379 += 4;
      v381 += 4;
      --v382;
    }

    while (v382);
    v392 = v338 + 4 * v377;
    v393 = (v392 - 4);
    if (v392 - 4 < v338)
    {
      goto LABEL_1617;
    }

    if (v393 > v392)
    {
      goto LABEL_1617;
    }

    *v393 = v380;
    *v337 = v380 + *v337;
    v394 = &v337[v377];
    if (v394 + 1 > v332 || v394 > v394 + 1)
    {
      goto LABEL_1617;
    }

    *v394 = *v393 + *v394;
    ++v377;
  }

  while (v377 != 8);
  v395 = 0;
  v396 = 0;
  v397 = 0;
  v398 = *(v331 + 624);
  v399 = (v331 + 628);
  v400 = -7;
  v401 = v398;
  do
  {
    if (v399 + 1 > v332 || v399 > v399 + 1)
    {
      goto LABEL_1617;
    }

    v403 = *v399++;
    v404 = v403;
    if (v403 > v401)
    {
      v396 = v400 + 8;
      v397 = v400 + 8;
      v401 = v404;
    }

    if (v404 < v398)
    {
      v395 = v400 + 8;
      v398 = v404;
    }

    _CF = __CFADD__(v400++, 1);
  }

  while (!_CF);
  v405 = 0;
  v406 = 0;
  LOWORD(v1364) = v396;
  WORD2(v1364) = v395;
  v407 = 4 * v397;
  v408 = -1;
  v409 = -100000000.0;
  do
  {
    v410 = (v331 + v405 + 624);
    v411 = v331 + v405 + 628;
    if (v411 > v332 || v410 > v411)
    {
      goto LABEL_1617;
    }

    if (*v410 > v409 && v407 != v405)
    {
      v408 = v406;
      v409 = *v410;
    }

    ++v406;
    v405 += 4;
  }

  while (v405 != 32);
  v414 = 0;
  WORD1(v1364) = v408;
  do
  {
    *(&v1364 + v414) = (((v375 - *(&v1364 + v414)) >> 12) & 8) + v375 - *(&v1364 + v414);
    v414 += 2;
  }

  while (v414 != 6);
  if ((v401 / 2.25) <= v398)
  {
    LOWORD(v1364) = -1;
  }

  if ((v409 / 2.25) <= v398)
  {
    WORD1(v1364) = -1;
  }

  *&v415 = -1;
  *(&v415 + 1) = -1;
  v1341[6] = v415;
  v1341[7] = v415;
  v1341[4] = v415;
  v1341[5] = v415;
  v1341[2] = v415;
  v1341[3] = v415;
  v1341[0] = v415;
  v1341[1] = v415;
  v416 = v331 + 64 * SWORD2(v1364);
  v417 = v1341;
  v418 = &v1364;
  v419 = 1;
  do
  {
    v420 = v419;
    v421 = *v418;
    if (v421 != -1)
    {
      v422 = 0;
      v423 = v331 + (v421 << 6);
      do
      {
        v424 = (v423 + v422);
        v425 = v423 + v422 + 4;
        if (v423 + v422 < v331 || v425 > v338 || v424 > v425)
        {
          goto LABEL_1617;
        }

        *(v417 + v422) = *v424;
        v428 = (v416 + v422);
        if (v416 + v422 < v331 || (v428 + 1) > v338 || v428 > v428 + 1)
        {
          goto LABEL_1617;
        }

        *v424 = *v428;
        v422 += 4;
      }

      while (v422 != 64);
    }

    v419 = 0;
    v418 = (&v1364 + 2);
    v417 = &v1341[4];
  }

  while ((v420 & 1) != 0);
  v429 = 0;
  v430 = v331;
  do
  {
    v431 = 0;
    v432 = 0.0;
    do
    {
      v432 = v432 + *(v430 + v431);
      v431 += 64;
    }

    while (v431 != 512);
    *(v1346 + v429++) = v432;
    v430 += 4;
  }

  while (v429 != 16);
  v433 = v1341;
  v434 = &v1364;
  v435 = 1;
  do
  {
    v436 = v435;
    v437 = *v434;
    if (v437 != -1)
    {
      v438 = (v331 + (v437 << 6));
      v439 = 16;
      while (v438 >= v331 && (v438 + 1) <= v338 && v438 <= v438 + 1)
      {
        v440 = *v433;
        v433 = (v433 + 4);
        *v438++ = v440;
        if (!--v439)
        {
          goto LABEL_633;
        }
      }

      goto LABEL_1617;
    }

LABEL_633:
    v435 = 0;
    v434 = (&v1364 + 2);
    v433 = &v1341[4];
  }

  while ((v436 & 1) != 0);
  v441 = 0;
  v442.i64[0] = 0x3E0000003E000000;
  v442.i64[1] = 0x3E0000003E000000;
  do
  {
    v1346[v441] = vmulq_f32(v1346[v441], v442);
    ++v441;
  }

  while (v441 != 4);
  v443 = 0;
  v444 = ((v12.n128_f32[0] + 2.0) * 2.625);
  if (v444 >= 63)
  {
    v444 = 63;
  }

  *(v331 + 690) = v444 & ~(v444 >> 31);
  do
  {
    v1346[v443] = vsubq_f32(v1346[v443], mean_isf_noise_amr_wb[v443]);
    ++v443;
  }

  while (v443 != 4);
  *&v1341[0] = E_ROM_dico1_isf_noise;
  *(&v1341[0] + 1) = &E_ROM_dico2_isf_noise;
  *&v1341[1] = E_ROM_dico1_isf_noise;
  v445 = E_LPC_isf_sub_vq(v1346, v1341, 2u, 64, &v1348);
  v446 = (v1164 + 1);
  if ((v1164 + 1) > v1137)
  {
    goto LABEL_1617;
  }

  if (v1164 > v446)
  {
    goto LABEL_1617;
  }

  *v1164 = v445;
  p_C = (v1164 + 2);
  *&v1341[0] = &E_ROM_dico2_isf_noise;
  *(&v1341[0] + 1) = &E_ROM_dico3_isf_noise;
  *&v1341[1] = &E_ROM_dico2_isf_noise;
  v447 = E_LPC_isf_sub_vq(v1346 + 2, v1341, 3u, 64, &v1348);
  if ((v1164 + 2) > v1137)
  {
    goto LABEL_1617;
  }

  if (v446 > p_C)
  {
    goto LABEL_1617;
  }

  if (v446 < v1138)
  {
    goto LABEL_1617;
  }

  v1164[1] = v447;
  *&v1341[0] = &E_ROM_dico3_isf_noise;
  *(&v1341[0] + 1) = &E_ROM_dico4_isf_noise;
  *&v1341[1] = &E_ROM_dico3_isf_noise;
  v448 = E_LPC_isf_sub_vq(&v1346[1] + 1, v1341, 3u, 64, &v1348);
  v449 = (v1164 + 3);
  if ((v1164 + 3) > v1137)
  {
    goto LABEL_1617;
  }

  if (p_C > v449)
  {
    goto LABEL_1617;
  }

  if (p_C < v1138)
  {
    goto LABEL_1617;
  }

  v1164[2] = v448;
  *&v1341[0] = &E_ROM_dico4_isf_noise;
  *(&v1341[0] + 1) = &E_ROM_dico5_isf_noise;
  *&v1341[1] = &E_ROM_dico4_isf_noise;
  v450 = E_LPC_isf_sub_vq(&v1346[2], v1341, 4u, 32, &v1348);
  p_C = (v1164 + 4);
  if ((v1164 + 4) > v1137)
  {
    goto LABEL_1617;
  }

  if (v449 > p_C)
  {
    goto LABEL_1617;
  }

  if (v449 < v1138)
  {
    goto LABEL_1617;
  }

  v1164[3] = v450;
  *&v1341[0] = &E_ROM_dico5_isf_noise;
  *(&v1341[0] + 1) = &E_ROM_qua_gain6b;
  *&v1341[1] = &E_ROM_dico5_isf_noise;
  v451 = E_LPC_isf_sub_vq(&v1346[3], v1341, 4u, 32, &v1348);
  v452 = (v1164 + 5);
  if ((v1164 + 5) > v1137)
  {
    goto LABEL_1617;
  }

  if (p_C > v452)
  {
    goto LABEL_1617;
  }

  if (p_C < v1138)
  {
    goto LABEL_1617;
  }

  v1164[4] = v451;
  v453 = (v1164 + 6);
  if ((v1164 + 6) > v1137 || v452 > v453 || v452 < v1138)
  {
    goto LABEL_1617;
  }

  *v452 = *(v331 + 690);
  v12.n128_u32[0] = 0;
  v454 = 8;
  do
  {
    if (v337 + 1 > v332 || v337 > v337 + 1)
    {
      goto LABEL_1617;
    }

    v456 = *v337++;
    v12.n128_f32[0] = v12.n128_f32[0] + v456;
    --v454;
  }

  while (v454);
  v457 = 0.0;
  v458 = 8;
  v459 = (v331 + 656);
  do
  {
    if (v459 + 1 > v333 || v459 > v459 + 1)
    {
      goto LABEL_1617;
    }

    v461 = *v459++;
    v457 = v457 + (v461 * 0.125);
    --v458;
  }

  while (v458);
  v462 = 0.0;
  v463 = 8;
  do
  {
    if (v332 + 1 > v333 || v332 > v332 + 1)
    {
      goto LABEL_1617;
    }

    v465 = *v332++;
    v462 = v462 + vabds_f32(v465, v457);
    --v463;
  }

  while (v463);
  if ((v1164 + 7) > v1137 || v453 > v1164 + 7 || v453 < v1138)
  {
    goto LABEL_1617;
  }

  v466 = v462 > 1.406;
  if (v12.n128_f32[0] > 5147600.0)
  {
    v466 = 1;
  }

  *v453 = v466;
  v467 = *(v331 + 690) / 2.625 + -2.0;
  v12.n128_f64[0] = exp2(v467);
  v468 = (v331 + 692);
  if (v331 + 692 > v331 + 694)
  {
    goto LABEL_1617;
  }

  v469 = 0;
  v470 = v12.n128_f64[0];
  v471 = *v468;
  do
  {
    v471 = 31821 * v471 + 13849;
    *&v1338[v469] = v471;
    v469 += 4;
  }

  while (v469 != 1024);
  v472 = 0;
  *v468 = v471;
  do
  {
    v473 = vmulq_f32(*&v1338[v472], *&v1338[v472]);
    v136 = (((v136 + v473.f32[0]) + v473.f32[1]) + v473.f32[2]) + v473.f32[3];
    v472 += 16;
  }

  while (v472 != 1024);
  v474 = 0;
  v12.n128_f32[0] = sqrtf((v470 * 256.0) / v136);
  do
  {
    *&v1338[v474] = vmulq_n_f32(*&v1338[v474], v12.n128_f32[0]);
    v474 += 16;
  }

  while (v474 != 1024);
  if (v1160 <= __dst)
  {
    goto LABEL_1617;
  }

  v12 = 0uLL;
  *(v1136 + 29) = 0u;
  *(v1136 + 30) = 0u;
  *(v1136 + 27) = 0u;
  *(v1136 + 28) = 0u;
  *(v1136 + 25) = 0u;
  *(v1136 + 26) = 0u;
  *(v1136 + 23) = 0u;
  *(v1136 + 24) = 0u;
  *(v1136 + 21) = 0u;
  *(v1136 + 22) = 0u;
  *(v1136 + 19) = 0u;
  *(v1136 + 20) = 0u;
  *(v1136 + 17) = 0u;
  *(v1136 + 18) = 0u;
  *(v1136 + 15) = 0u;
  *(v1136 + 16) = 0u;
  *(v1136 + 13) = 0u;
  *(v1136 + 14) = 0u;
  *(v1136 + 11) = 0u;
  *(v1136 + 12) = 0u;
  *(v1136 + 9) = 0u;
  *(v1136 + 10) = 0u;
  *(v1136 + 7) = 0u;
  *(v1136 + 8) = 0u;
  *(v1136 + 5) = 0u;
  *(v1136 + 6) = 0u;
  *(v1136 + 3) = 0u;
  *(v1136 + 4) = 0u;
  *(v1136 + 1) = 0u;
  *(v1136 + 2) = 0u;
  *v1136 = 0u;
  if (v1136 > v1120)
  {
    goto LABEL_1617;
  }

  *(__dst + 5994) = 0uLL;
  *(__dst + 6010) = 0uLL;
  if (__dst + 5994 > __dst + 6026)
  {
    goto LABEL_1617;
  }

  *(__dst + 4568) = 0uLL;
  *(__dst + 4584) = 0uLL;
  *v1139 = 0uLL;
  *(__dst + 4552) = 0uLL;
  if (v1139 > __dst + 4600)
  {
    goto LABEL_1617;
  }

  *(__dst + 1227) = 0;
  *(__dst + 3021) = 0;
  v1108[1968] = 1;
  *(__dst + 611) = 0x3F19999A42F00000;
  *(__dst + 1230) = 0;
  memcpy(__dst, __dst + 1024, 0x200uLL);
  if (__dst + 512 < __dst)
  {
    goto LABEL_1617;
  }

  p_C = v1126;
  memcpy(v1126, __dst + 2048, 0x1CCuLL);
  if (v1126 > __X)
  {
    goto LABEL_1617;
  }
}

void E_MAIN_reset(uint64_t a1, int a2)
{
  *(a1 + 5416) = 0u;
  *(a1 + 5432) = 0u;
  *(a1 + 5384) = 0u;
  *(a1 + 5400) = 0u;
  *(a1 + 5352) = 0u;
  *(a1 + 5368) = 0u;
  *(a1 + 5320) = 0u;
  *(a1 + 5336) = 0u;
  *(a1 + 5288) = 0u;
  *(a1 + 5304) = 0u;
  *(a1 + 5256) = 0u;
  *(a1 + 5272) = 0u;
  *(a1 + 5224) = 0u;
  *(a1 + 5240) = 0u;
  *(a1 + 5192) = 0u;
  *(a1 + 5208) = 0u;
  *(a1 + 5160) = 0u;
  *(a1 + 5176) = 0u;
  *(a1 + 5128) = 0u;
  *(a1 + 5144) = 0u;
  *(a1 + 5096) = 0u;
  *(a1 + 5112) = 0u;
  *(a1 + 5064) = 0u;
  *(a1 + 5080) = 0u;
  *(a1 + 5032) = 0u;
  *(a1 + 5048) = 0u;
  *(a1 + 5000) = 0u;
  *(a1 + 5016) = 0u;
  *(a1 + 4968) = 0u;
  *(a1 + 4984) = 0u;
  *(a1 + 4952) = 0u;
  if (a1 + 4952 > (a1 + 5448) || (v3 = a1 + 5994, *(a1 + 5994) = 0uLL, *(a1 + 6010) = 0uLL, v4 = (a1 + 6026), v3 > v4))
  {
LABEL_21:
    __break(0x5519u);
    return;
  }

  *(a1 + 4568) = 0u;
  *(a1 + 4584) = 0u;
  *(a1 + 4536) = 0u;
  *(a1 + 4552) = 0u;
  *(a1 + 4908) = 0;
  *(a1 + 6042) = 0;
  *(a1 + 6064) = 1;
  *(a1 + 4888) = 0x3F19999A42F00000;
  *(a1 + 4920) = 0;
  if (a2)
  {
    *(a1 + 480) = 0uLL;
    *(a1 + 496) = 0uLL;
    *(a1 + 448) = 0uLL;
    *(a1 + 464) = 0uLL;
    *(a1 + 416) = 0uLL;
    *(a1 + 432) = 0uLL;
    *(a1 + 384) = 0uLL;
    *(a1 + 400) = 0uLL;
    *(a1 + 352) = 0uLL;
    *(a1 + 368) = 0uLL;
    *(a1 + 320) = 0uLL;
    *(a1 + 336) = 0uLL;
    *(a1 + 288) = 0uLL;
    *(a1 + 304) = 0uLL;
    *(a1 + 256) = 0uLL;
    *(a1 + 272) = 0uLL;
    *(a1 + 224) = 0uLL;
    *(a1 + 240) = 0uLL;
    *(a1 + 192) = 0uLL;
    *(a1 + 208) = 0uLL;
    *(a1 + 160) = 0uLL;
    *(a1 + 176) = 0uLL;
    *(a1 + 128) = 0uLL;
    *(a1 + 144) = 0uLL;
    *(a1 + 96) = 0uLL;
    *(a1 + 112) = 0uLL;
    *(a1 + 64) = 0uLL;
    *(a1 + 80) = 0uLL;
    *(a1 + 32) = 0uLL;
    *(a1 + 48) = 0uLL;
    *a1 = 0uLL;
    *(a1 + 16) = 0uLL;
    *(a1 + 1980) = 0uLL;
    *(a1 + 1968) = 0uLL;
    *(a1 + 1952) = 0uLL;
    *(a1 + 1936) = 0uLL;
    *(a1 + 1920) = 0uLL;
    *(a1 + 1904) = 0uLL;
    *(a1 + 1888) = 0uLL;
    *(a1 + 1872) = 0uLL;
    *(a1 + 1856) = 0uLL;
    *(a1 + 1840) = 0uLL;
    *(a1 + 1824) = 0uLL;
    *(a1 + 1808) = 0uLL;
    *(a1 + 1792) = 0uLL;
    *(a1 + 1776) = 0uLL;
    *(a1 + 1760) = 0uLL;
    *(a1 + 1744) = 0uLL;
    *(a1 + 1728) = 0uLL;
    *(a1 + 1712) = 0uLL;
    *(a1 + 1696) = 0uLL;
    *(a1 + 1680) = 0uLL;
    *(a1 + 1664) = 0uLL;
    *(a1 + 1648) = 0uLL;
    *(a1 + 1632) = 0uLL;
    *(a1 + 1616) = 0uLL;
    *(a1 + 1600) = 0uLL;
    *(a1 + 1584) = 0uLL;
    *(a1 + 1568) = 0uLL;
    *(a1 + 1552) = 0uLL;
    *(a1 + 4876) = 0;
    *(a1 + 1536) = 0uLL;
    *(a1 + 4884) = 0;
    *(a1 + 3992) = 0uLL;
    *(a1 + 4008) = 0uLL;
    *(a1 + 4024) = 0uLL;
    *(a1 + 4040) = 0uLL;
    *(a1 + 4056) = 0uLL;
    *(a1 + 4072) = 0uLL;
    *(a1 + 4088) = 0uLL;
    *(a1 + 4828) = 0uLL;
    *(a1 + 4104) = 0;
    memset_pattern16(v4, &unk_19B0B3940, 8uLL);
    *(a1 + 4792) = 0u;
    *(a1 + 4808) = 0u;
    v5 = (a1 + 4472);
    v6 = -15;
    while (1)
    {
      v7 = (v5 + 1) > a1 + 4536 || v5 >= v5 + 1;
      if (v7)
      {
        goto LABEL_21;
      }

      v8 = cos((v6 + 16) * 3.14159265 * 0.0625);
      *v5++ = v8;
      v7 = __CFADD__(v6++, 1);
      if (v7)
      {
        *(a1 + 4532) = 1027101164;
        *(a1 + 5962) = E_ROM_isp;
        *(a1 + 5978) = unk_19B316D60;
        *(a1 + 4896) = 0;
        *(a1 + 4904) = 0;
        *(a1 + 6044) = 8;
        *(a1 + 6034) = 0x8000800080008;
        *(a1 + 4912) = 0;
        *(a1 + 6065) = 0;
        v9 = (a1 + 4928);
        v10 = 5;
        while ((v9 + 1) <= a1 + 4948 && v9 < v9 + 1)
        {
          *v9++ = 40;
          if (!--v10)
          {
            *(a1 + 4948) = 40;
            bzero((a1 + 3020), 0x2CCuLL);
            *(a1 + 4464) = 0;
            *(a1 + 4432) = 0u;
            *(a1 + 4448) = 0u;
            *(a1 + 4400) = 0u;
            *(a1 + 4416) = 0u;
            *(a1 + 4368) = 0u;
            *(a1 + 4384) = 0u;
            *(a1 + 4336) = 0u;
            *(a1 + 4352) = 0u;
            *(a1 + 4304) = 0u;
            *(a1 + 4320) = 0u;
            *(a1 + 4272) = 0u;
            *(a1 + 4288) = 0u;
            *(a1 + 4240) = 0u;
            *(a1 + 4256) = 0u;
            *(a1 + 4208) = 0u;
            *(a1 + 4224) = 0u;
            *(a1 + 4176) = 0u;
            *(a1 + 4192) = 0u;
            *(a1 + 4144) = 0u;
            *(a1 + 4160) = 0u;
            *(a1 + 4112) = 0u;
            *(a1 + 4128) = 0u;
            *(a1 + 4696) = 0u;
            *(a1 + 4712) = 0u;
            *(a1 + 4664) = 0u;
            *(a1 + 4680) = 0u;
            *(a1 + 4632) = 0u;
            *(a1 + 4648) = 0u;
            *(a1 + 4600) = 0u;
            *(a1 + 4616) = 0u;
            *(a1 + 4844) = 0u;
            *(a1 + 4860) = 0u;
            *(a1 + 4728) = E_ROM_isf;
            *(a1 + 4744) = unk_19B316D80;
            *(a1 + 4760) = xmmword_19B316D90;
            *(a1 + 4776) = unk_19B316DA0;
            *(a1 + 4900) = 0;
            *(a1 + 6046) = 21845;
            *(a1 + 4924) = 1065353216;
            *(a1 + 6066) = 0;
            E_DTX_reset(*(a1 + 6056));
            v12 = *(a1 + 6048);

            E_DTX_vad_reset(v12);
            return;
          }
        }

        goto LABEL_21;
      }
    }
  }
}

uint64_t E_DTX_reset(uint64_t result)
{
  if (result)
  {
    *(result + 688) = 0;
    v1 = 8;
    for (i = result; ; i += 4)
    {
      *i = E_ROM_isf;
      i[1] = unk_19B316D80;
      i[2] = xmmword_19B316D90;
      i[3] = unk_19B316DA0;
      if (i >= i + 4)
      {
        break;
      }

      if (!--v1)
      {
        *(result + 692) = 480597;
        *(result + 656) = 0u;
        *(result + 672) = 0u;
        *(result + 696) = 30;
        *(result + 512) = 0u;
        *(result + 528) = 0u;
        *(result + 544) = 0u;
        *(result + 560) = 0u;
        *(result + 576) = 0u;
        *(result + 592) = 0u;
        *(result + 608) = 0u;
        *(result + 624) = 0u;
        *(result + 636) = 0u;
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t E_DTX_vad_reset(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    *(result + 200) = 0u;
    *(result + 278) = 0;
    *(result + 272) = 0;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 248) = 0u;
    while (1)
    {
      v2 = result + v1;
      v3 = (result + v1 + 8);
      v4 = result + v1 + 12;
      if (v4 > result + 56 || v3 > v4)
      {
        break;
      }

      *v3 = 1125515264;
      v6 = v2 + 108;
      if (v2 + 108 > (result + 152))
      {
        break;
      }

      v7 = (v2 + 104);
      if (v7 > v6)
      {
        break;
      }

      *v7 = 1125515264;
      v8 = result + v1 + 60;
      if (v8 > result + 104)
      {
        break;
      }

      v9 = (result + v1 + 56);
      if (v9 > v8)
      {
        break;
      }

      *v9 = 1125515264;
      v10 = result + v1 + 156;
      if (v10 > result + 200)
      {
        break;
      }

      v11 = (result + v1 + 152);
      if (v11 > v10)
      {
        break;
      }

      *v11 = 0;
      v1 += 4;
      if (v1 == 48)
      {
        *(result + 282) = 0;
        *(result + 264) = 0x4500200000000000;
        *result = 0;
        *(result + 276) = 0;
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

__n128 E_UTIL_decim_12k8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  memset(v27, 255, sizeof(v27));
  v9 = *(a5 + 80);
  v25[4] = *(a5 + 64);
  v25[5] = v9;
  v25[6] = *(a5 + 96);
  v26 = *(a5 + 112);
  v10 = *(a5 + 16);
  v25[0] = *a5;
  v25[1] = v10;
  v11 = *(a5 + 48);
  v12 = 4 * a2;
  v25[2] = *(a5 + 32);
  v25[3] = v11;
  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_8;
  }

  v14 = (1717986919 * (4 * a2)) >> 33;
  if (v14 > a3)
  {
    goto LABEL_8;
  }

  v15 = 0;
  v23 = 1061997773;
  v16 = v25 + 4;
  v17 = v14;
  do
  {
    __C = NAN;
    vDSP_dotpr(&v16[v15 & 0xFFFFFFFC], 1, &E_ROM_fir_ipol[30 * (v15 & 3)], 1, &__C, 0x1EuLL);
    *(a4 + 4 * v15++) = __C;
    v16 += 4;
  }

  while (v17 != v15);
  MEMORY[0x19EAE6090](a4, 1, &v23, a4, 1, v17);
  v18 = v25 + v12;
  if ((v25 + v12) > v28 || v25 > (v25 + v12) || (v19 = *(v18 + 5), *(a5 + 64) = *(v18 + 4), *(a5 + 80) = v19, *(a5 + 96) = *(v18 + 6), *(a5 + 112) = *(v18 + 14), v20 = *(v18 + 1), *a5 = *v18, *(a5 + 16) = v20, result = *(v18 + 2), v22 = *(v18 + 3), *(a5 + 32) = result, *(a5 + 48) = v22, a5 + 120 < a5))
  {
LABEL_8:
    __break(0x5519u);
  }

  return result;
}

int8x16_t E_UTIL_hp50_12k8(float *__X, vDSP_Length __N, int32x2_t *a3)
{
  v4 = __N;
  v13 = *MEMORY[0x1E69E9840];
  if (E_UTIL_hp50_12k8_onceToken != -1)
  {
    dispatch_once(&E_UTIL_hp50_12k8_onceToken, &__block_literal_global_11444);
  }

  v6 = &a3[2];
  if (&a3[1].u8[4] > &a3[2] || &a3[1].u8[4] < a3 || (*v12.i8 = vrev64_s32(a3[1]), &a3[1] > v6) || (v12.i32[2] = a3->i32[1], a3 + 4 > v6))
  {
    __break(0x5519u);
  }

  v12.i32[3] = a3->i32[0];
  vDSP_biquad(E_UTIL_hp50_12k8_biquad, v12.i32, __X, 1, __X, 1, v4);
  v7 = vrev64q_s32(v12);
  v8 = vextq_s8(v7, v7, 8uLL);
  v9 = vabsq_f32(v8);
  v10 = vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL);
  result = vandq_s8(v8, vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v9.f32), v10), vcgtq_f64(vcvt_hight_f64_f32(v9), v10)));
  *a3->i8 = result;
  return result;
}

float *E_UTIL_f_preemph(float *result, int a2, float *a3, float a4)
{
  v4 = &result[a2];
  v5 = &result[a2 - 1];
  v6 = v5 + 1;
  if (v5 >= result && v6 <= v4 && v5 <= v6)
  {
    v9 = *v5;
    v10 = -a4;
    while (1)
    {
      v11 = &result[--a2];
      v12 = v11 + 1;
      v13 = v11 < result || v12 > v4;
      if (v13 || v11 > v12)
      {
        break;
      }

      if (v11 - 1 < result || v11 - 1 > v11)
      {
        break;
      }

      *v11 = *v11 + (v10 * *(v11 - 1));
      if (a2 <= 1)
      {
        if (result + 1 >= result && (result + 1) <= v4)
        {
          *result = *result + (v10 * *a3);
          *a3 = v9;
          return result;
        }

        break;
      }
    }
  }

  __break(0x5519u);
  return result;
}

void E_UTIL_deemph(float *__X, vDSP_Length __N, float *a3)
{
  v4 = __N;
  v12 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __E_UTIL_deemph_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  v8 = 1059984507;
  if (E_UTIL_deemph_onceToken != -1)
  {
    dispatch_once(&E_UTIL_deemph_onceToken, block);
  }

  v11 = *a3;
  v10 = 0;
  __Delay = 0;
  vDSP_biquad(E_UTIL_deemph_biquad, &__Delay, __X, 1, __X, 1, v4);
  v6 = v11;
  if (fabsf(v11) < 1.0e-10)
  {
    v6 = 0.0;
  }

  *a3 = v6;
}

uint64_t E_GAIN_open_loop_search(const float *__F, vDSP_Length __P, int a3, float *a4, float *a5, unint64_t *a6, int a7)
{
  v12 = __F;
  v51 = *MEMORY[0x1E69E9840];
  v48 = -1.0e23;
  v50 = -1;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  __C[22] = v13;
  __C[23] = v13;
  __C[20] = v13;
  __C[21] = v13;
  __C[18] = v13;
  __C[19] = v13;
  __C[16] = v13;
  __C[17] = v13;
  __C[14] = v13;
  __C[15] = v13;
  __C[12] = v13;
  __C[13] = v13;
  __C[10] = v13;
  __C[11] = v13;
  __C[8] = v13;
  __C[9] = v13;
  __C[6] = v13;
  __C[7] = v13;
  __C[4] = v13;
  __C[5] = v13;
  __C[2] = v13;
  __C[3] = v13;
  v14 = __P;
  __C[0] = v13;
  __C[1] = v13;
  vDSP_conv(__F - 115, 1, __F, 1, __C, 1, 0x62uLL, __P);
  MEMORY[0x19EAE5FA0](__C, 1, &unk_19B3358E0, -1, __C, 1, 98);
  if (a3 >= 1 && a7 == 1)
  {
    MEMORY[0x19EAE5FA0](__C, 1, &E_ROM_corrweight[213 - a3], -1, __C, 1, 98);
  }

  v47 = 0xAAAAAAAAAAAAAAAALL;
  vDSP_maxvi(__C, 1, &v48, &v47, 0x62uLL);
  v15 = v47;
  v16 = *a6;
  v17 = a6[1];
  v18 = (*a6 + 460);
  v19 = v14;
  v20 = a6[2];
  do
  {
    v21 = a5[4];
    v22 = a5[5];
    a5[3] = v21;
    a5[4] = v22;
    v23 = a5[6];
    a5[5] = v23;
    v24 = *v12;
    a5[6] = *v12;
    v25 = a5[1];
    v26 = ((((((v21 * 0.83787) + (v22 * -2.5098)) + (v23 * 2.5098)) + (v24 * -0.83787)) + (*a5 * 2.6444)) + (v25 * -2.3509)) + (a5[2] * 0.70001);
    a5[1] = *a5;
    a5[2] = v25;
    *a5 = v26;
    if ((v18 + 1) > v17 || v18 > v18 + 1 || v18 < v20)
    {
      goto LABEL_36;
    }

    *v18++ = v26;
    ++v12;
    --v19;
  }

  while (v19);
  v27 = ((v15 << 32) - 0x7300000000) >> 30;
  v28 = 0.0;
  v29 = v14;
  v30 = 0.0;
  v31 = 0.0;
  do
  {
    v32 = (v16 + v27 + 460);
    v33 = v16 + v27 + 464;
    v35 = v33 <= v17 && v32 <= v33 && v32 >= v20;
    v36 = (v16 + 115);
    v37 = (v16 + 116);
    if (!v35 || v37 > v17 || v36 > v37 || v36 < v20)
    {
      goto LABEL_36;
    }

    v30 = v30 + (*v32 * *v32);
    v41 = v16[115];
    v31 = v31 + (v41 * v41);
    v28 = v28 + (v41 * *v32);
    ++v16;
    --v29;
  }

  while (v29);
  v42 = v28 / (sqrt((v31 * v30)) + 0.00001);
  *a4 = v42;
  v44 = *a6;
  v43 = a6[1];
  v45 = (*a6 + 4 * v14);
  if (v45 > v43 || v20 > v45 || v43 < v44 || v43 - v45 < 0x1CC || v20 > v44 || v43 - v44 < 0x1CC || (memmove(*a6, v45, 0x1CCuLL), v44 >= v44 + 460))
  {
LABEL_36:
    __break(0x5519u);
  }

  return (115 - v15);
}

uint64_t E_GAIN_olag_median(int a1, _DWORD *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v2 = a2 + 5;
  v3 = 5;
  do
  {
    v4 = &a2[--v3];
    v6 = v4 - 1 < a2 || v4 > v2 || v4 - 1 >= v4;
    v7 = v4 + 1;
    if (v6 || v7 > v2 || v4 >= v7)
    {
LABEL_77:
      __break(0x5519u);
    }

    *v4 = *(v4 - 1);
  }

  while (v3 > 1);
  *a2 = a1;
  v43 = a2[4];
  v42 = *a2;
  v10 = 3;
  v11 = 5;
  while (v10 >= 2)
  {
    v12 = &v41 + --v10;
    v13 = v12 + 1;
    if (v12 < &v41 || v13 > &v44 || v12 >= v13)
    {
      goto LABEL_77;
    }

    v16 = *v12;
LABEL_35:
    v21 = 2 * v10;
    v22 = v10;
    if (2 * v10 <= v11)
    {
      v23 = v10;
      while (1)
      {
        if (v21 >= v11)
        {
          v22 = v21;
        }

        else
        {
          v24 = &v41 + v21;
          v25 = v24 + 1;
          v27 = v24 < &v41 || v25 > &v44 || v24 >= v25;
          v28 = &v41 + (v21 | 1);
          v29 = v28 + 1;
          if (v27 || v28 < &v41 || v29 > &v44 || v28 >= v29)
          {
            goto LABEL_77;
          }

          v22 = *v24 >= *v28 ? v21 : v21 | 1;
        }

        v33 = &v41 + v22;
        v34 = v33 + 1;
        if (v33 < &v41 || v34 > &v44 || v33 >= v34)
        {
          goto LABEL_77;
        }

        v37 = *v33;
        if (v16 >= v37)
        {
          break;
        }

        v38 = &v41 + v23;
        if (v38 < &v41 || v38 + 1 > &v44 || v38 > v38 + 1)
        {
          goto LABEL_77;
        }

        *v38 = v37;
        v21 = 2 * v22;
        v23 = v22;
        if (2 * v22 > v11)
        {
          goto LABEL_72;
        }
      }

      v22 = v23;
    }

LABEL_72:
    v39 = &v41 + v22;
    if (v39 < &v41 || v39 + 1 > &v44 || v39 > v39 + 1)
    {
      goto LABEL_77;
    }

    *v39 = v16;
  }

  v17 = &v41 + v11;
  v18 = v17 + 1;
  if (v17 < &v41 || v18 > &v44 || v17 >= v18)
  {
    goto LABEL_77;
  }

  v16 = *v17;
  *v17 = v42;
  if (--v11 != 1)
  {
    v10 = 1;
    goto LABEL_35;
  }

  return DWORD2(v42);
}

void E_DTX_buffer(unint64_t a1, __int128 *a2, int a3, float a4)
{
  v4 = *(a1 + 688);
  if (v4 == 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 688) = v5;
  v6 = (a1 + 64 * v5);
  v7 = v6 <= a1 + 512 && v6 >= a1;
  if (v7 && (v8 = *a2, v9 = a2[1], v10 = a2[3], v6[2] = a2[2], v6[3] = v10, *v6 = v8, v6[1] = v9, v6 < v6 + 4) && (v11 = &E_ROM_en_adjust[a3], v11 >= E_ROM_en_adjust) && v11 + 1 <= block_size_wb && v11 <= v11 + 1 && (v12 = (a1 + 656 + 4 * *(a1 + 688)), v12 >= a1 + 656) && (v12 + 1) <= a1 + 688 && v12 <= v12 + 1)
  {
    v13 = log10((a4 + 1.0e-10) * 0.00390625) / 0.301029996;
    *v12 = *v11 + v13;
  }

  else
  {
    __break(0x5519u);
  }
}

uint64_t E_GAIN_closed_loop_search(uint64_t *a1, const float *a2, unint64_t a3, int a4, int a5, unsigned int *a6, int a7, int a8, int a9)
{
  v69[1] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v64 = NAN;
  v58 = a5;
  v59 = a4;
  v13 = (a4 - 4);
  v14 = (a5 + 4);
  v15 = *a1;
  v61 = a1[2];
  v62 = a1[1];
  *&v16 = -1;
  *(&v16 + 1) = -1;
  __B[14] = v16;
  __B[15] = v16;
  __B[12] = v16;
  __B[13] = v16;
  __B[10] = v16;
  __B[11] = v16;
  __B[8] = v16;
  __B[9] = v16;
  __B[6] = v16;
  __B[7] = v16;
  __B[4] = v16;
  __B[5] = v16;
  __B[2] = v16;
  __B[3] = v16;
  __C = NAN;
  v66 = NAN;
  v60 = v15 - 4 * v14;
  __B[0] = v16;
  __B[1] = v16;
  AMR_E_UTIL_f_convolve((v60 + 4 * (v14 - v13)), a3, __B);
  if (v14 >= v13)
  {
    v17 = 4 - v59;
    do
    {
      vDSP_dotpr(a2, 1, __B, 1, &__C, 0x40uLL);
      vDSP_svesq(__B, 1, &v66, 0x40uLL);
      v18 = v66 + 0.01;
      v66 = v66 + 0.01;
      v19 = &__b[v13];
      if (v19 < __b || v19 + 1 > __B || v19 > v19 + 1)
      {
LABEL_76:
        __break(0x5519u);
      }

      __b[v13] = __C / sqrtf(v18);
      if (v13 != v14)
      {
        v20 = (v60 + 4 * (--v17 + v14));
        v23 = (v20 + 1) <= v62 && v20 <= v20 + 1 && v20 >= v61;
        LODWORD(v24) = 64;
        do
        {
          v24 = (v24 - 1);
          v25 = __B + v24;
          v26 = v25 - 1;
          v28 = v25 - 1 < __B || v25 > v69 || v26 > v25;
          if (v28 || !v23)
          {
            goto LABEL_76;
          }

          v29 = (a3 + 4 * v24);
          v30 = (v29 + 1);
          v31 = v29 < a3 || v30 > a3 + 256;
          v32 = v31 || v29 > v30;
          v33 = v25 + 1;
          v34 = v32 || v33 > v69;
          if (v34 || v25 > v33)
          {
            goto LABEL_76;
          }

          v36 = *v20;
          *v25 = *v26 + (*v20 * *v29);
        }

        while (v24 > 1);
        *__B = v36;
      }

      ++v13;
    }

    while (v58 + 5 != v13);
  }

  *&__B[0] = 0xAAAAAAAAAAAAAAAALL;
  vDSP_maxvi(&__b[v59], 1, &v64, __B, v58 - v59 + 1);
  v37 = (LODWORD(__B[0]) + v59);
  if (a7 || v37 < a9)
  {
    if (a7)
    {
      v39 = 1;
    }

    else
    {
      v39 = v37 < a8;
    }

    v40 = !v39 || a8 == 34;
    if (v40)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    if (v40)
    {
      v42 = -2;
    }

    else
    {
      v42 = -3;
    }

    v43 = &__b[v37];
    v66 = NAN;
    v44 = v43 - 3;
    v45 = v43 - 4;
    if (LODWORD(__B[0]))
    {
      v46 = v43 - 4;
    }

    else
    {
      v46 = v43 - 3;
    }

    if (LODWORD(__B[0]))
    {
      v47 = 8 * v42 + 32;
    }

    else
    {
      v47 = 0;
    }

    if (LODWORD(__B[0]))
    {
      v48 = v42;
    }

    else
    {
      v48 = 0;
    }

    vDSP_dotpr(v46, 1, &E_ROM_inter4_1[v47], 1, &v66, 8uLL);
    v49 = v66;
    v50 = v48 + v41;
    v51 = 8 * (v48 + v41);
    do
    {
      v66 = NAN;
      if (v50 >= 0)
      {
        v52 = v44;
      }

      else
      {
        v52 = v45;
      }

      v53 = v51 + 32;
      if (v50 >= 0)
      {
        v53 = v51;
      }

      vDSP_dotpr(v52, 1, &E_ROM_inter4_1[v53], 1, &v66, 8uLL);
      if (v66 > v49)
      {
        v48 = v50;
        v49 = v66;
      }

      v50 += v41;
      v51 += 8 * v41;
    }

    while (v50 < 4);
    v37 = (v37 + (v48 >> 31));
    v38 = v48 + 4 * (v48 >> 31);
  }

  else
  {
    v38 = 0;
  }

  *a6 = v38;
  return v37;
}

float *E_UTIL_convolve(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v8[14] = v6;
  v8[15] = v6;
  v8[12] = v6;
  v8[13] = v6;
  v8[10] = v6;
  v8[11] = v6;
  v8[8] = v6;
  v8[9] = v6;
  v8[6] = v6;
  v8[7] = v6;
  v8[4] = v6;
  v8[5] = v6;
  v8[2] = v6;
  v8[3] = v6;
  v8[0] = v6;
  v8[1] = v6;
  ldexpf(1.0, -a2);
  NativeInt16ToFloat32Scaled_ARM();
  return AMR_E_UTIL_f_convolve(v8, a3, a4);
}

float E_ACELP_xy1_corr(const float *a1, const float *__B, float *a3)
{
  v10 = NAN;
  __C = NAN;
  vDSP_dotpr(a1, 1, __B, 1, &__C, 0x40uLL);
  vDSP_svesq(__B, 1, &v10, 0x40uLL);
  v5 = v10;
  v6 = __C;
  v7 = (__C * -2.0) + 0.01;
  *a3 = v10;
  a3[1] = v7;
  if (v5 == 0.0)
  {
    return 1.0;
  }

  v8 = v6 / v5;
  result = 0.0;
  if (v8 >= 0.0)
  {
    result = v8;
    if (v8 > 1.2)
    {
      return 1.2;
    }
  }

  return result;
}

void E_ACELP_4t(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v382 = v5;
  v384 = v7;
  v385 = v6;
  v9 = v8;
  v10 = v2;
  v11 = 0;
  v466 = *MEMORY[0x1E69E9840];
  v425 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v424 = v12;
  v423 = v12;
  v422[1] = 0xAAAAAAAAAAAAAAAALL;
  v422[0] = 0xAAAAAAAAAAAAAAAALL;
  memset(v420, 170, sizeof(v420));
  LODWORD(v401) = 0;
  v386 = 4;
  v388 = v3;
  v395 = v13;
  if (v3 <= 51)
  {
    if (v3 != 20)
    {
      if (v3 == 36)
      {
        LODWORD(v401) = 1065353216;
        *&v423 = 0x800000004;
        v387 = 8;
        DWORD2(v423) = 8;
        goto LABEL_23;
      }

      v387 = 0;
      if (v3 != 44)
      {
        goto LABEL_25;
      }

      LODWORD(v401) = 1065353216;
      v423 = xmmword_19B0B2FE0;
      v15 = 10;
LABEL_19:
      v387 = v15;
LABEL_23:
      v11 = 1;
      v18 = 4;
      goto LABEL_24;
    }

    LODWORD(v401) = 0x40000000;
    *&v423 = 0x800000004;
    v386 = 4;
    v11 = 1;
    v17 = 4;
LABEL_17:
    v387 = v17;
    goto LABEL_25;
  }

  if (v3 <= 71)
  {
    if (v3 != 52)
    {
      v387 = 0;
      if (v3 != 64)
      {
        goto LABEL_25;
      }

      LODWORD(v401) = 1061997773;
      v423 = xmmword_19B0B2300;
      *&v424 = 0x800000008;
      v14 = 16;
      goto LABEL_21;
    }

    LODWORD(v401) = 1065353216;
    v423 = xmmword_19B0B2FE0;
    v15 = 12;
    goto LABEL_19;
  }

  if (v3 != 72)
  {
    v387 = 0;
    if (v3 != 88)
    {
      goto LABEL_25;
    }

    LODWORD(v401) = 1056964608;
    v423 = xmmword_19B0B2310;
    v424 = xmmword_19B0B1650;
    v425 = 0x800000008;
    v11 = 1;
    if (v4 > 7)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v386 = v16;
    v17 = 24;
    goto LABEL_17;
  }

  LODWORD(v401) = 1061158912;
  v423 = xmmword_19B0B22F0;
  *&v424 = 0x700000006;
  DWORD2(v424) = 8;
  v14 = 18;
LABEL_21:
  v387 = v14;
  v11 = 1;
  v18 = 3;
LABEL_24:
  v386 = v18;
LABEL_25:
  v383 = v11;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v462[3] = v19;
  v462[2] = v19;
  v462[1] = v19;
  v462[0] = v19;
  v461[3] = v19;
  v461[2] = v19;
  v461[1] = v19;
  v461[0] = v19;
  v460[7] = v19;
  v460[6] = v19;
  v460[5] = v19;
  v460[4] = v19;
  v460[3] = v19;
  v460[2] = v19;
  v460[1] = v19;
  v460[0] = v19;
  v444 = v19;
  v445 = v19;
  v446 = v19;
  v447 = v19;
  v448 = v19;
  v449 = v19;
  v450 = v19;
  v451 = v19;
  v452 = v19;
  v453 = v19;
  v454 = v19;
  v455 = v19;
  v456 = v19;
  v457 = v19;
  v458 = v19;
  v459 = v19;
  v443[3] = v19;
  v443[2] = v19;
  v443[1] = v19;
  v443[0] = v19;
  v442[3] = v19;
  v442[2] = v19;
  v442[1] = v19;
  v442[0] = v19;
  memset(v441, 255, sizeof(v441));
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v436[0] = v20;
  v436[1] = v20;
  v436[2] = v20;
  v436[3] = v20;
  v437[0] = v20;
  v437[1] = v20;
  v437[2] = v20;
  v437[3] = v20;
  v438[0] = v20;
  v438[1] = v20;
  v438[2] = v20;
  v438[3] = v20;
  v439[0] = v20;
  v439[1] = v20;
  v439[2] = v20;
  v440 = v20;
  memset(__b, 255, sizeof(__b));
  v21 = 0;
  *&v22 = -1;
  *(&v22 + 1) = -1;
  __C[0] = v22;
  __C[1] = v22;
  __C[2] = v22;
  __C[3] = v22;
  __C[4] = v22;
  __C[5] = v22;
  __C[6] = v22;
  __C[7] = v22;
  __C[8] = v22;
  __C[9] = v22;
  __C[10] = v22;
  __C[11] = v22;
  __C[12] = v22;
  __C[13] = v22;
  __C[14] = v22;
  __C[15] = v22;
  v23 = (*v9 * *v9) + 1.0;
  v24 = (*v10 * *v10) + 1.0;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v428 = v25;
  v429 = v25;
  v430 = v25;
  v431 = v25;
  v432 = v25;
  v433 = v25;
  v427[5] = v25;
  v427[4] = v25;
  v427[3] = v25;
  v427[2] = v25;
  v427[1] = v25;
  v427[0] = v25;
  v421[7] = v25;
  v421[6] = v25;
  v421[5] = v25;
  v421[4] = v25;
  v421[3] = v25;
  v421[2] = v25;
  HIDWORD(v401) = -1;
  v400 = NAN;
  v26 = v9 + 64;
  v391 = (v10 + 64);
  v392 = v10;
  v27 = -6;
  v421[1] = v25;
  v421[0] = v25;
  do
  {
    v28 = &v9[v21 + 2];
    v29 = &v9[v21 + 3];
    if (v29 > v26 || v28 > v29)
    {
      goto LABEL_567;
    }

    v31 = &v10[v21];
    v32 = &v10[v21 + 3];
    if (v32 > v391)
    {
      goto LABEL_567;
    }

    if ((v31 + 2) > v32)
    {
      goto LABEL_567;
    }

    v33 = &v9[v21 + 3];
    if (v33 < v9)
    {
      goto LABEL_567;
    }

    v34 = &v9[v21 + 4];
    if (v34 > v26)
    {
      goto LABEL_567;
    }

    if (v33 > v34)
    {
      goto LABEL_567;
    }

    v35 = &v10[v21 + 3];
    if (v35 < v10)
    {
      goto LABEL_567;
    }

    v36 = &v10[v21 + 4];
    if (v36 > v391)
    {
      goto LABEL_567;
    }

    if (v35 > v36)
    {
      goto LABEL_567;
    }

    v37 = &v9[v21 + 4];
    if (v37 < v9)
    {
      goto LABEL_567;
    }

    v38 = &v9[v21 + 5];
    if (v38 > v26)
    {
      goto LABEL_567;
    }

    if (v37 > v38)
    {
      goto LABEL_567;
    }

    v39 = &v10[v21 + 4];
    if (v39 < v10)
    {
      goto LABEL_567;
    }

    v40 = &v10[v21 + 5];
    if (v40 > v391)
    {
      goto LABEL_567;
    }

    if (v39 > v40)
    {
      goto LABEL_567;
    }

    v41 = &v9[v21 + 5];
    if (v41 < v9)
    {
      goto LABEL_567;
    }

    v42 = &v9[v21 + 6];
    if (v42 > v26)
    {
      goto LABEL_567;
    }

    if (v41 > v42)
    {
      goto LABEL_567;
    }

    v43 = &v10[v21 + 5];
    if (v43 < v10)
    {
      goto LABEL_567;
    }

    v44 = &v10[v21 + 6];
    if (v44 > v391)
    {
      goto LABEL_567;
    }

    if (v43 > v44)
    {
      goto LABEL_567;
    }

    v45 = &v9[v21 + 6];
    if (v45 < v9)
    {
      goto LABEL_567;
    }

    v46 = &v9[v21 + 7];
    if (v46 > v26)
    {
      goto LABEL_567;
    }

    if (v45 > v46)
    {
      goto LABEL_567;
    }

    v47 = &v10[v21 + 6];
    if (v47 < v10)
    {
      goto LABEL_567;
    }

    v48 = &v10[v21 + 7];
    if (v48 > v391)
    {
      goto LABEL_567;
    }

    if (v47 > v48)
    {
      goto LABEL_567;
    }

    v49 = &v9[v21 + 7];
    if (v49 < v9)
    {
      goto LABEL_567;
    }

    v50 = &v9[v21 + 8];
    if (v50 > v26)
    {
      goto LABEL_567;
    }

    if (v49 > v50)
    {
      goto LABEL_567;
    }

    v51 = &v10[v21 + 7];
    if (v51 < v10)
    {
      goto LABEL_567;
    }

    v52 = &v10[v21 + 8];
    if (v52 > v391 || v51 > v52)
    {
      goto LABEL_567;
    }

    v23 = ((((((v23 + (v9[v21 + 1] * v9[v21 + 1])) + (*v28 * *v28)) + (*v33 * *v33)) + (*v37 * *v37)) + (*v41 * *v41)) + (*v45 * *v45)) + (*v49 * *v49);
    v24 = ((((((v24 + (v31[1] * v31[1])) + (v31[2] * v31[2])) + (*v35 * *v35)) + (*v39 * *v39)) + (*v43 * *v43)) + (*v47 * *v47)) + (*v51 * *v51);
    v27 += 7;
    v21 += 7;
  }

  while (v27 < 0x39);
  v400 = sqrtf(v24 / v23);
  MEMORY[0x19EAE6080](v9, 1, &v400, v10, 1, &v401, __C, 1, 64);
  for (i = 0; i != 64; ++i)
  {
    v54 = 1.0;
    if (*(__C + i * 4) < 0.0)
    {
      v10[i] = -v10[i];
      v54 = -1.0;
    }

    *(v460 + i * 4) = v54;
  }

  vDSP_vabs(__C, 1, __C, 1, 0x40uLL);
  v55 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  v56 = v421;
  do
  {
    for (j = 0; j != 8; ++j)
    {
      __I[0] = 0xAAAAAAAAAAAAAAAALL;
      vDSP_maxvi(__C + v55, 4, &v401 + 1, __I, 0x10uLL);
      v58 = v55 + LOWORD(__I[0]);
      v59 = __C + (v55 + LOWORD(__I[0]));
      v60 = v59 + 1;
      if (v59 < __C || v60 > __b || v59 > v60)
      {
        goto LABEL_567;
      }

      *v59 = j + -8.0;
      *(v56 + j) = v58;
    }

    *(v422 + v55) = v421[2 * v55];
    ++v55;
    v56 += 2;
  }

  while (v55 != 4);
  memset(v441, 0, 256);
  memset(&v441[32], 0, 256);
  v63 = v395[14];
  v441[31] = v395[15];
  v441[30] = v63;
  v64 = v395[12];
  v441[29] = v395[13];
  v441[28] = v64;
  v65 = v395[10];
  v441[27] = v395[11];
  v441[26] = v65;
  v66 = v395[8];
  v441[25] = v395[9];
  v441[24] = v66;
  v67 = v395[6];
  v441[23] = v395[7];
  v441[22] = v67;
  v68 = v395[4];
  v441[21] = v395[5];
  v441[20] = v68;
  v69 = v395[2];
  v441[19] = v395[3];
  v441[18] = v69;
  v70 = *v395;
  v441[17] = v395[1];
  v441[16] = v70;
  MEMORY[0x19EAE5FB0](&v441[16], 1);
  v71 = v437;
  v1 = v439;
  MEMORY[0x19EAE60E0](&v441[16], 1, &v444, 1, 64);
  v72 = 0;
  v73 = &v444 + 2;
  v74 = 0.0;
  v75 = -4;
  do
  {
    v76 = (v436 + v72);
    v77 = (&v440 + v72 + 12);
    v79 = (v441 + v72) <= v441 && v77 <= (v441 + v72) && v77 >= v439;
    if (!v79)
    {
      goto LABEL_567;
    }

    v80 = v74 + (*(v73 - 2) * 0.5);
    *v77 = v80;
    if (v73 > v460)
    {
      goto LABEL_567;
    }

    if (v73 < 4)
    {
      goto LABEL_567;
    }

    if ((v439 + v72) > v439)
    {
      goto LABEL_567;
    }

    v81 = v76 + 47;
    if (v76 + 47 > (v439 + v72))
    {
      goto LABEL_567;
    }

    if (v81 < v438)
    {
      goto LABEL_567;
    }

    v82 = v80 + (*(v73 - 1) * 0.5);
    *v81 = v82;
    if (v73 < &v444)
    {
      goto LABEL_567;
    }

    if (v73 + 1 > v460)
    {
      goto LABEL_567;
    }

    if (v73 > v73 + 1)
    {
      goto LABEL_567;
    }

    if ((v438 + v72) > v438)
    {
      goto LABEL_567;
    }

    v83 = v76 + 31;
    if (v76 + 31 > (v438 + v72))
    {
      goto LABEL_567;
    }

    if (v83 < v437)
    {
      goto LABEL_567;
    }

    v84 = v82 + (*v73 * 0.5);
    *v83 = v84;
    if (v73 + 1 < &v444)
    {
      goto LABEL_567;
    }

    if (v73 + 2 > v460)
    {
      goto LABEL_567;
    }

    if (v73 + 1 > v73 + 2)
    {
      goto LABEL_567;
    }

    v85 = v76 + 15;
    if (v85 < v436)
    {
      goto LABEL_567;
    }

    v86 = (&v436[4] + v72);
    if (v86 > v437 || v85 > v86)
    {
      goto LABEL_567;
    }

    v74 = v84 + (v73[1] * 0.5);
    *v85 = v74;
    v75 += 4;
    v73 += 4;
    v72 -= 4;
  }

  while (v75 < 0x3C);
  v87 = 0;
  v88 = 0;
  v89 = &v436[3] + v72 + 12;
  v90 = &v441[16] + 1;
  v91 = v436;
  v92 = 15;
  v93 = 255;
  v94 = __b;
  do
  {
    if (v88 != 15)
    {
      v91 = &__b[3072];
      v71 = v436;
      v89 = &__b[4 * v93 + 3008];
    }

    if (v88 > 0xE)
    {
      v118 = &__b[4 * v93 + 2048];
      v117 = &__b[4 * v93 + 1024];
      v96 = 0.0;
      v119 = v90;
      v113 = &v441[16];
      v116 = &__b[4 * v93];
    }

    else
    {
      v95 = 0;
      v96 = 0.0;
      v97 = v92;
      v98 = &v441[16];
      do
      {
        if (v98 + 1 > v442)
        {
          goto LABEL_567;
        }

        if (v90 < v441)
        {
          goto LABEL_567;
        }

        v1 = &v98[v87];
        v99 = &v98[v87 + 2];
        if (v99 > v442)
        {
          goto LABEL_567;
        }

        v100 = &v94[v95 + 3072];
        if (v100 > &__b[3072])
        {
          goto LABEL_567;
        }

        v101 = &v94[v95];
        v102 = &v94[v95 + 3068];
        if (v102 > v100)
        {
          goto LABEL_567;
        }

        if (v102 < &__b[2048])
        {
          goto LABEL_567;
        }

        v103 = v96 + (*v98 * v1[1]);
        *v102 = v103;
        v1 = v98 + 2;
        if (v98 + 2 > v442)
        {
          goto LABEL_567;
        }

        v104 = &v98[v87 + 3];
        if (v104 > v442)
        {
          goto LABEL_567;
        }

        v105 = &v94[v95 + 2048];
        if (v105 > &__b[2048])
        {
          goto LABEL_567;
        }

        v106 = (v101 + 2044);
        if (v101 + 2044 > v105)
        {
          goto LABEL_567;
        }

        if (v106 < &__b[1024])
        {
          goto LABEL_567;
        }

        v107 = v103 + (v98[1] * *v99);
        *v106 = v107;
        v108 = v98 + 3;
        if (v98 + 3 > v442)
        {
          goto LABEL_567;
        }

        v109 = &v98[v87 + 4];
        if (v109 > v442)
        {
          goto LABEL_567;
        }

        v110 = (v101 + 1020);
        if (v101 + 1020 < __b)
        {
          goto LABEL_567;
        }

        v111 = &v94[v95 + 1024];
        if (v111 > &__b[1024])
        {
          goto LABEL_567;
        }

        if (v110 > v111)
        {
          goto LABEL_567;
        }

        v112 = v107 + (*v1 * *v104);
        *v110 = v112;
        v113 = v98 + 4;
        if (v98 + 4 > v442)
        {
          goto LABEL_567;
        }

        if (&v98[v87 + 5] > v442)
        {
          goto LABEL_567;
        }

        v1 = &v89[v95 + 4];
        if (v1 > v71)
        {
          goto LABEL_567;
        }

        v114 = &v89[v95];
        if (&v89[v95] > v1 || v114 < v91)
        {
          goto LABEL_567;
        }

        v96 = v112 + (*v108 * *v109);
        *v114 = v96;
        v95 -= 68;
        v98 = v113;
        --v97;
      }

      while (v97);
      v89 += v95;
      v115 = &v94[v95];
      v116 = &v94[v95 + 1020];
      v117 = (v115 + 2044);
      v118 = (v115 + 3068);
      v119 = &v113[v87 + 1];
    }

    if (v113 < v441)
    {
      goto LABEL_567;
    }

    v1 = v113 + 1;
    if (v113 + 1 > v442)
    {
      goto LABEL_567;
    }

    if (v113 > v1)
    {
      goto LABEL_567;
    }

    if (v119 < v441)
    {
      goto LABEL_567;
    }

    v120 = v119 + 1;
    if (v119 + 1 > v442)
    {
      goto LABEL_567;
    }

    if (v119 > v120)
    {
      goto LABEL_567;
    }

    if (v118 + 1 > &__b[3072])
    {
      goto LABEL_567;
    }

    if (v118 > v118 + 1)
    {
      goto LABEL_567;
    }

    if (v118 < &__b[2048])
    {
      goto LABEL_567;
    }

    v121 = v96 + (*v113 * *v119);
    *v118 = v121;
    v122 = v113 + 2;
    if (v113 + 2 > v442)
    {
      goto LABEL_567;
    }

    if (v1 > v122)
    {
      goto LABEL_567;
    }

    v123 = v119 + 2;
    if (v119 + 2 > v442)
    {
      goto LABEL_567;
    }

    if (v120 > v123)
    {
      goto LABEL_567;
    }

    if (v117 + 1 > &__b[2048])
    {
      goto LABEL_567;
    }

    if (v117 > v117 + 1)
    {
      goto LABEL_567;
    }

    if (v117 < &__b[1024])
    {
      goto LABEL_567;
    }

    v124 = v121 + (*v1 * *v120);
    *v117 = v124;
    v125 = v113 + 3;
    if (v125 > v442 || v122 > v125 || v119 + 3 > v442 || v123 > v119 + 3 || v116 < __b || v116 + 1 > &__b[1024] || v116 > v116 + 1)
    {
      goto LABEL_567;
    }

    ++v88;
    v93 -= 16;
    v90 += 4;
    *v116 = v124 + (*v122 * *v123);
    --v92;
    v94 -= 64;
    v87 += 4;
  }

  while (v88 != 16);
  v126 = 0;
  v127 = 0;
  v128 = &v441[16] + 3;
  v129 = 15;
  v130 = 255;
  v131 = __b;
  do
  {
    v132 = &v441[16];
    if (v127 > 0xE)
    {
      v146 = &__b[4 * v130 + 3072];
      v133 = 0.0;
      v147 = v128;
      v145 = &v441[16];
    }

    else
    {
      v133 = 0.0;
      v134 = v131;
      v135 = v129;
      do
      {
        if (v132 + 1 > v442)
        {
          goto LABEL_567;
        }

        if (v128 < v441)
        {
          goto LABEL_567;
        }

        v136 = &v132[v126 + 4];
        if (v136 > v442)
        {
          goto LABEL_567;
        }

        if (v134 + 1024 > v436)
        {
          goto LABEL_567;
        }

        v137 = v134 + 1023;
        if (v134 + 1023 > v134 + 1024)
        {
          goto LABEL_567;
        }

        if (v137 < &__b[3072])
        {
          goto LABEL_567;
        }

        v138 = v133 + (*v132 * v132[v126 + 3]);
        *v137 = v138;
        if (v132 + 2 > v442)
        {
          goto LABEL_567;
        }

        v139 = &v132[v126 + 5];
        if (v139 > v442)
        {
          goto LABEL_567;
        }

        if (v134 + 767 > &__b[3072])
        {
          goto LABEL_567;
        }

        v140 = v134 + 766;
        if (v134 + 766 > v134 + 767)
        {
          goto LABEL_567;
        }

        if (v140 < &__b[2048])
        {
          goto LABEL_567;
        }

        v141 = v138 + (v132[1] * *v136);
        *v140 = v141;
        if (v132 + 3 > v442)
        {
          goto LABEL_567;
        }

        v142 = &v132[v126 + 6];
        if (v142 > v442)
        {
          goto LABEL_567;
        }

        if (v134 + 511 > &__b[2048])
        {
          goto LABEL_567;
        }

        v143 = v134 + 510;
        if (v134 + 510 > v134 + 511)
        {
          goto LABEL_567;
        }

        if (v143 < &__b[1024])
        {
          goto LABEL_567;
        }

        v144 = v141 + (v132[2] * *v139);
        *v143 = v144;
        v145 = v132 + 4;
        if (v132 + 4 > v442 || &v132[v126 + 7] > v442 || v134 + 254 < __b || v134 + 255 > &__b[1024] || v134 + 254 > v134 + 255)
        {
          goto LABEL_567;
        }

        v133 = v144 + (v132[3] * *v142);
        v134[254] = v133;
        v134 -= 17;
        v132 += 4;
        --v135;
      }

      while (v135);
      v146 = v134 + 1023;
      v147 = &v145[v126 + 3];
    }

    if (v145 < v441 || v145 + 1 > v442 || v145 > v145 + 1 || v147 < v441 || v147 + 1 > v442 || v147 > v147 + 1 || v146 + 1 > v436 || v146 > v146 + 1 || v146 < &__b[3072])
    {
      goto LABEL_567;
    }

    --v130;
    ++v127;
    v128 += 4;
    *v146 = v133 + (*v145 * *v147);
    --v129;
    --v131;
    v126 += 4;
  }

  while (v127 != 16);
  v148 = 0;
  *&v149 = -1;
  *(&v149 + 1) = -1;
  v417 = v149;
  v418 = v149;
  v415 = v149;
  v416 = v149;
  v413 = v149;
  v414 = v149;
  v411 = v149;
  v412 = v149;
  v409 = v149;
  v410 = v149;
  v407 = v149;
  v408 = v149;
  v405 = v149;
  v406 = v149;
  *__I = v149;
  v404 = v149;
  v402[14] = v149;
  v402[15] = v149;
  v402[12] = v149;
  v402[13] = v149;
  v402[10] = v149;
  v402[11] = v149;
  v402[8] = v149;
  v402[9] = v149;
  v402[6] = v149;
  v402[7] = v149;
  v402[4] = v149;
  v402[5] = v149;
  v402[2] = v149;
  v402[3] = v149;
  v402[0] = v149;
  v402[1] = v149;
  v150 = v460;
  v467 = vld4q_f32(v150);
  v150 += 16;
  v469 = vld4q_f32(v150);
  v151 = v461;
  v470 = vld4q_f32(v151);
  v399 = v467;
  v398 = v469;
  v397 = v470;
  v152 = v462;
  v468 = vld4q_f32(v152);
  v396 = v468;
  do
  {
    v153 = v399.val[v148];
    v154 = v398.val[v148];
    v155 = v397.val[v148];
    v156 = v396.val[v148];
    v157 = &__I[8 * v148];
    *(v157 + 2) = v155;
    *(v157 + 3) = v156;
    *v157 = v153;
    *(v157 + 1) = v154;
    v158 = &v402[4 * v148];
    v158[2] = vnegq_f32(v155);
    v158[3] = vnegq_f32(v156);
    *v158 = vnegq_f32(v153);
    v158[1] = vnegq_f32(v154);
    ++v148;
  }

  while (v148 != 4);
  v159 = 0;
  v160 = __b;
  do
  {
    v161 = v159++;
    v162 = &__I[8 * (v159 & 3)];
    v165 = v162 + 8 <= &v419 && v162 <= v162 + 8 && v162 >= __I;
    v166 = &v402[4 * (v159 & 3)];
    v169 = v166 + 4 <= __I && v166 <= v166 + 4 && v166 >= v402;
    v170 = v160 + 2;
    do
    {
      v171 = &v170[-2];
      if (&v170[-2] < __b)
      {
        goto LABEL_567;
      }

      v172 = v170;
      v173 = v170 - 1;
      if (v173 > v436)
      {
        goto LABEL_567;
      }

      if (v171 > v173)
      {
        goto LABEL_567;
      }

      if (v172 > v436)
      {
        goto LABEL_567;
      }

      if (v173 > v172)
      {
        goto LABEL_567;
      }

      v174 = &v172[1];
      if (&v172[1] > v436 || v172 > v174 || &v172[2] > v436 || v174 > &v172[2])
      {
        goto LABEL_567;
      }

      if (*(v460 + v161) >= 0.0)
      {
        v175 = &__I[8 * (v159 & 3)];
        if (!v165)
        {
          goto LABEL_567;
        }
      }

      else
      {
        v175 = &v402[4 * (v159 & 3)];
        if (!v169)
        {
          goto LABEL_567;
        }
      }

      v176 = vmulq_f32(v172[1], v175[3]);
      v177 = vmulq_f32(*v172, v175[2]);
      v178 = vmulq_f32(v172[-1], v175[1]);
      v172[-2] = vmulq_f32(v172[-2], *v175);
      v172[-1] = v178;
      *v172 = v177;
      v172[1] = v176;
      v170 = v172 + 4;
      v79 = v161 >= 0x3C;
      v161 += 4;
    }

    while (!v79);
    v160 = v172 + 2;
  }

  while (v159 != 4);
  v179 = 0;
  v1 = v443;
  v180 = 1.0;
  v181 = -1.0;
  do
  {
    v389 = v179;
    v182 = &E_ROM_tipos[4 * v179];
    if (v182 > E_ROM_grid || v182 < E_ROM_tipos)
    {
      goto LABEL_567;
    }

    v184 = __memcpy_chk();
    if (v184 > v184 + v387)
    {
      goto LABEL_567;
    }

    if (v388 == 44 || v388 == 36)
    {
      v186 = v422 + LOBYTE(v420[0]);
      if (v186 < v422)
      {
        goto LABEL_567;
      }

      if (v186 + 1 > &v423)
      {
        goto LABEL_567;
      }

      if (v186 > v186 + 1)
      {
        goto LABEL_567;
      }

      v187 = *v186;
      LODWORD(v428) = v187;
      v188 = v422 + BYTE1(v420[0]);
      if (v188 < v422)
      {
        goto LABEL_567;
      }

      if (v188 + 1 > &v423)
      {
        goto LABEL_567;
      }

      if (v188 > v188 + 1)
      {
        goto LABEL_567;
      }

      v189 = *v188;
      DWORD1(v428) = v189;
      v190 = &v392[v187];
      if (v190 < v392)
      {
        goto LABEL_567;
      }

      if ((v190 + 1) > v391)
      {
        goto LABEL_567;
      }

      if (v190 > v190 + 1)
      {
        goto LABEL_567;
      }

      v191 = &v392[v189];
      if (v191 < v392)
      {
        goto LABEL_567;
      }

      if ((v191 + 1) > v391)
      {
        goto LABEL_567;
      }

      if (v191 > v191 + 1)
      {
        goto LABEL_567;
      }

      *(&v401 + 1) = *v190 + *v191;
      v192 = &v436[4 * LOBYTE(v420[0])];
      v193 = &v192[v187 >> 2];
      if (v193 < v192)
      {
        goto LABEL_567;
      }

      if (v193 + 1 > v192 + 16)
      {
        goto LABEL_567;
      }

      if (v193 > v193 + 1)
      {
        goto LABEL_567;
      }

      v194 = &v436[4 * BYTE1(v420[0])];
      v195 = &v194[v189 >> 2];
      if (v195 < v194)
      {
        goto LABEL_567;
      }

      if (v195 + 1 > v194 + 16)
      {
        goto LABEL_567;
      }

      if (v195 > v195 + 1)
      {
        goto LABEL_567;
      }

      v196 = &__b[1024 * LOBYTE(v420[0])];
      v197 = &v196[16 * (v187 >> 2) + (v189 >> 2)];
      if (v197 < v196)
      {
        goto LABEL_567;
      }

      if (v197 + 1 > v196 + 256)
      {
        goto LABEL_567;
      }

      if (v197 > v197 + 1)
      {
        goto LABEL_567;
      }

      *&v401 = (*v193 + *v195) + *v197;
      v198 = v460 + 4 * v187;
      if (v198 < v460)
      {
        goto LABEL_567;
      }

      if (v198 + 4 > &v463)
      {
        goto LABEL_567;
      }

      if (v198 > v198 + 4)
      {
        goto LABEL_567;
      }

      v199 = v460 + 4 * v189;
      if (v199 < v460 || v199 + 4 > &v463 || v199 > v199 + 4)
      {
        goto LABEL_567;
      }

      if (*(v460 + v187) >= 0.0)
      {
        v200 = &v441[16];
      }

      else
      {
        v200 = &v441[48];
      }

      v201 = v200 - 4 * v187;
      if (*(v460 + v189) >= 0.0)
      {
        v202 = &v441[16];
      }

      else
      {
        v202 = &v441[48];
      }

      MEMORY[0x19EAE5DC0](v201, 1, v202 - 4 * v189, 1, &v444, 1, 64);
      if (v388 == 44)
      {
        LOWORD(v420[1]) = 256;
      }

      v185 = 2;
    }

    else if (v388 == 20)
    {
      v185 = 0;
      v401 = 0;
      v444 = 0u;
      v445 = 0u;
      v446 = 0u;
      v447 = 0u;
      v448 = 0u;
      v449 = 0u;
      v450 = 0u;
      v451 = 0u;
      v452 = 0u;
      v453 = 0u;
      v454 = 0u;
      v455 = 0u;
      v456 = 0u;
      v457 = 0u;
      v458 = 0u;
      v459 = 0u;
    }

    else
    {
      v203 = v422 + LOBYTE(v420[0]);
      if (v203 < v422)
      {
        goto LABEL_567;
      }

      if (v203 + 1 > &v423)
      {
        goto LABEL_567;
      }

      if (v203 > v203 + 1)
      {
        goto LABEL_567;
      }

      v204 = *v203;
      LODWORD(v428) = v204;
      v205 = v422 + BYTE1(v420[0]);
      if (v205 < v422)
      {
        goto LABEL_567;
      }

      if (v205 + 1 > &v423)
      {
        goto LABEL_567;
      }

      if (v205 > v205 + 1)
      {
        goto LABEL_567;
      }

      v206 = *v205;
      DWORD1(v428) = v206;
      v207 = v422 + BYTE2(v420[0]);
      if (v207 < v422)
      {
        goto LABEL_567;
      }

      if (v207 + 1 > &v423)
      {
        goto LABEL_567;
      }

      if (v207 > v207 + 1)
      {
        goto LABEL_567;
      }

      v208 = *v207;
      DWORD2(v428) = v208;
      v209 = v422 + BYTE3(v420[0]);
      if (v209 < v422)
      {
        goto LABEL_567;
      }

      if (v209 + 1 > &v423)
      {
        goto LABEL_567;
      }

      if (v209 > v209 + 1)
      {
        goto LABEL_567;
      }

      v210 = *v209;
      HIDWORD(v428) = v210;
      v211 = &v392[v204];
      if (v211 < v392)
      {
        goto LABEL_567;
      }

      if ((v211 + 1) > v391)
      {
        goto LABEL_567;
      }

      if (v211 > v211 + 1)
      {
        goto LABEL_567;
      }

      v212 = &v392[v206];
      if (v212 < v392)
      {
        goto LABEL_567;
      }

      if ((v212 + 1) > v391)
      {
        goto LABEL_567;
      }

      if (v212 > v212 + 1)
      {
        goto LABEL_567;
      }

      v213 = &v392[v208];
      if (v213 < v392)
      {
        goto LABEL_567;
      }

      if ((v213 + 1) > v391)
      {
        goto LABEL_567;
      }

      if (v213 > v213 + 1)
      {
        goto LABEL_567;
      }

      v214 = &v392[v210];
      if (v214 < v392)
      {
        goto LABEL_567;
      }

      if ((v214 + 1) > v391)
      {
        goto LABEL_567;
      }

      if (v214 > v214 + 1)
      {
        goto LABEL_567;
      }

      *(&v401 + 1) = ((*v211 + *v212) + *v213) + *v214;
      v215 = v460 + 4 * v204;
      if (v215 < v460 || v215 + 4 > &v463 || v215 > v215 + 4)
      {
        goto LABEL_567;
      }

      v216 = &v441[48];
      if (*(v460 + v204) >= 0.0)
      {
        v216 = &v441[16];
      }

      v217 = v460 + 4 * v206;
      if (v217 < v460 || v217 + 4 > &v463 || v217 > v217 + 4)
      {
        goto LABEL_567;
      }

      v218 = &v441[48];
      if (*(v460 + v206) >= 0.0)
      {
        v218 = &v441[16];
      }

      v219 = v460 + 4 * v208;
      if (v219 < v460)
      {
        goto LABEL_567;
      }

      if (v219 + 4 > &v463)
      {
        goto LABEL_567;
      }

      if (v219 > v219 + 4)
      {
        goto LABEL_567;
      }

      v220 = v460 + 4 * v210;
      if (v220 < v460 || v220 + 4 > &v463 || v220 > v220 + 4)
      {
        goto LABEL_567;
      }

      v221 = v216 - 4 * v204;
      if (*(v460 + v208) >= 0.0)
      {
        v222 = &v441[16];
      }

      else
      {
        v222 = &v441[48];
      }

      v223 = v222 - 4 * v208;
      if (*(v460 + v210) >= 0.0)
      {
        v224 = &v441[16];
      }

      else
      {
        v224 = &v441[48];
      }

      v225 = v224 - 4 * v210;
      MEMORY[0x19EAE5DC0](v221, 1, v218 - 4 * v206, 1, &v444, 1, 64);
      MEMORY[0x19EAE5DC0](&v444, 1, v223, 1, &v444, 1, 64);
      MEMORY[0x19EAE5DC0](&v444, 1, v225, 1, &v444, 1, 64);
      vDSP_svesq(&v444, 1, &v401, 0x40uLL);
      *&v401 = *&v401 * 0.5;
      if (v388 == 72)
      {
        LOWORD(v420[2]) = 256;
      }

      v185 = 4;
    }

    if (v185 < v387)
    {
      v226 = 0;
      v227 = v185;
      v390 = ((v387 + ~v185) >> 1) + 1;
      while (1)
      {
        v228 = (v420 + v227) >= v421 || (v420 + v227) < v420;
        v393 = v226;
        v229 = &v423 + v226;
        v230 = v229 + 1;
        v231 = !v228 && v229 >= &v423;
        v232 = !v231 || v230 > &v426;
        if (v232 || v229 > v230)
        {
          break;
        }

        v394 = v227;
        v234 = *v229;
        if (v234 >= 1)
        {
          v235 = *(v420 + v227);
          v236 = &v421[2 * v235];
          v237 = &v436[4 * v235];
          LODWORD(v465[1]) = -1;
          do
          {
            v238 = v236 + 1;
            v239 = v236 < v421 || v238 > v422;
            if (v239 || v236 > v238)
            {
              goto LABEL_567;
            }

            v241 = *v236;
            vDSP_dotpr(&v441[16], 1, &v444 + v241, 1, &v465[1], 64 - v241);
            v242 = v460 + v241;
            v243 = v242 + 1;
            v244 = v242 < v460 || v243 > &v463;
            v245 = v244 || v242 > v243;
            v246 = &v237[v241 >> 2];
            v247 = (v246 + 1);
            v248 = !v245 && v246 >= v237;
            v249 = !v248 || v247 > (v237 + 16);
            v250 = v249 || v246 > v247;
            v251 = v443 + (v241 >> 2);
            v252 = v251 + 1;
            v253 = !v250 && v251 >= v443;
            v254 = !v253 || v252 > &v444;
            if (v254 || v251 > v252)
            {
              goto LABEL_567;
            }

            *v251 = *v246 + (*v242 * *&v465[1]);
            ++v236;
          }

          while (--v234);
        }

        v256 = v420 + (v227 | 1);
        if (v256 >= v421)
        {
          break;
        }

        v257 = 0;
        v258 = *v256;
        v259 = *v256;
        do
        {
          vDSP_dotpr(&v441[16], 1, &v444 + v259, 1, (v442 + v257), 64 - v259);
          v260 = v460 + v259;
          if (v260 < v460 || v260 + 1 > &v463 || v260 > v260 + 1)
          {
            goto LABEL_567;
          }

          *(v442 + v257) = *v260 * *(v442 + v257);
          v259 += 4;
          v257 += 4;
        }

        while (v257 != 64);
        MEMORY[0x19EAE5DC0](v442, 1, &v436[4 * v258], 1, v442, 1, 16);
        v261 = *v229;
        if (v261 >= 1)
        {
          v262 = 0;
          v263 = 0;
          v264 = 0;
          v265 = v394;
          v266 = *(v420 + v394);
          v267 = &v421[2 * v266];
          v268 = *v256;
          v269 = &__b[1024 * v266];
          v271 = v391;
          v270 = v392;
          v273 = 1.0;
          v274 = -1.0;
          while (1)
          {
            v275 = v267 + v262;
            v276 = v275 + 1;
            v277 = v275 < v421 || v276 > v422;
            if (v277 || v275 > v276)
            {
              goto LABEL_567;
            }

            v279 = *v275;
            v280 = &v392[v279];
            v281 = v280 + 1;
            v282 = v280 < v392 || v281 > v391;
            if (v282 || v280 > v281)
            {
              goto LABEL_567;
            }

            v284 = v443 + (v279 >> 2);
            v285 = v284 + 1;
            v286 = v284 < v443 || v285 > &v444;
            if (v286 || v284 > v285)
            {
              goto LABEL_567;
            }

            if (v268 <= 0x3F)
            {
              v288 = 0;
              v289 = *(&v401 + 1) + *v280;
              v290 = *&v401 + *v284;
              v291 = &v269[16 * (v279 >> 2)];
              do
              {
                v292 = &v291[v288 / 4];
                v293 = &v291[v288 / 4 + 1];
                v294 = (v442 + v288 + 4) <= v443 && v292 >= v269;
                v295 = !v294 || v293 > (v269 + 256);
                if (v295 || v292 > v293)
                {
                  goto LABEL_567;
                }

                v272 = &v392[v268];
                if ((v273 * ((v289 + v272[v288]) * (v289 + v272[v288]))) > (v274 * ((v290 + *(v442 + v288)) + *v292)))
                {
                  v264 = v268 + v288;
                  v273 = (v290 + *(v442 + v288)) + *v292;
                  v274 = (v289 + v272[v288]) * (v289 + v272[v288]);
                  v263 = v279;
                }

                v288 += 4;
              }

              while (v268 + v288 - 4 < 0x3C);
            }

            if (++v262 == v261)
            {
              goto LABEL_426;
            }
          }
        }

        v264 = 0;
        v263 = 0;
        v273 = 1.0;
        v271 = v391;
        v270 = v392;
        v265 = v394;
LABEL_426:
        v297 = (v270 + 4 * v263);
        if (v297 < v270)
        {
          break;
        }

        if ((v297 + 1) > v271)
        {
          break;
        }

        if (v297 > v297 + 1)
        {
          break;
        }

        v298 = (v270 + 4 * v264);
        if (v298 < v270 || (v298 + 1) > v271 || v298 > v298 + 1)
        {
          break;
        }

        *(&v401 + 1) = (*(&v401 + 1) + *v297) + *v298;
        *&v401 = v273;
        *(&v428 + v265) = v263;
        *(&v428 + (v394 | 1)) = v264;
        if (v265 < (v387 - 2))
        {
          v299 = v460 + 4 * v263;
          if (v299 < v460)
          {
            break;
          }

          if (v299 + 4 > &v463)
          {
            break;
          }

          if (v299 > v299 + 4)
          {
            break;
          }

          v300 = v460 + 4 * v264;
          if (v300 < v460 || v300 + 4 > &v463 || v300 > v300 + 4)
          {
            break;
          }

          if (*(v460 + v263) >= 0.0)
          {
            v301 = &v441[16];
          }

          else
          {
            v301 = &v441[48];
          }

          v302 = v301 - 4 * v263;
          if (*(v460 + v264) >= 0.0)
          {
            v303 = &v441[16];
          }

          else
          {
            v303 = &v441[48];
          }

          v304 = v303 - 4 * v264;
          MEMORY[0x19EAE5DC0](&v444, 1, v302, 1, &v444, 1, 64);
          MEMORY[0x19EAE5DC0](&v444, 1, v304, 1, &v444, 1, 64);
        }

        v227 = v265 + 2;
        v226 = v393 + 1;
        if (v393 + 1 == v390)
        {
          goto LABEL_447;
        }
      }

LABEL_567:
      __break(0x5519u);
      goto LABEL_568;
    }

LABEL_447:
    v305 = *(&v401 + 1) * *(&v401 + 1);
    *(&v401 + 1) = v305;
    v306 = *&v401;
    v400 = (v180 * v305) - (v181 * *&v401);
    if (v400 > 0.0)
    {
      v307 = __memcpy_chk();
      v180 = v306;
      v181 = v305;
      if (v307 > v307 + 4 * v387)
      {
        goto LABEL_567;
      }
    }

    v179 = v389 + 1;
  }

  while (v389 + 1 != v386);
  v385[6] = 0u;
  v385[7] = 0u;
  v385[4] = 0u;
  v385[5] = 0u;
  v385[2] = 0u;
  v385[3] = 0u;
  *v385 = 0u;
  v385[1] = 0u;
  if (v385 + 8 < v385)
  {
    goto LABEL_567;
  }

  v384[14] = 0uLL;
  v384[15] = 0uLL;
  v384[12] = 0uLL;
  v384[13] = 0uLL;
  v384[10] = 0uLL;
  v384[11] = 0uLL;
  v384[8] = 0uLL;
  v384[9] = 0uLL;
  v384[6] = 0uLL;
  v384[7] = 0uLL;
  v384[4] = 0uLL;
  v384[5] = 0uLL;
  v384[2] = 0uLL;
  v384[3] = 0uLL;
  *v384 = 0uLL;
  v384[1] = 0uLL;
  if (v384 + 16 < v384)
  {
    goto LABEL_567;
  }

  *&v308 = -1;
  *(&v308 + 1) = -1;
  v433 = v308;
  v432 = v308;
  v431 = v308;
  v430 = v308;
  v429 = v308;
  v428 = v308;
  if (v383)
  {
    v309 = 0;
    v1 = __C;
    if (v387 <= 1)
    {
      v310 = 1;
    }

    else
    {
      v310 = v387;
    }

    while (1)
    {
      v311 = v427 + v309;
      v312 = v311 + 1;
      v313 = v311 < v427 || v312 > &v428;
      if (v313 || v311 > v312)
      {
        goto LABEL_567;
      }

      v315 = *v311;
      v316 = v460 + 4 * *v311;
      v317 = v316 + 4;
      v318 = v316 < v460 || v317 > &v463;
      if (v318 || v316 > v317)
      {
        goto LABEL_567;
      }

      v320 = v315 >= 0 ? *v311 : v315 + 3;
      v321 = v320 >> 2;
      v322 = v385 + v315;
      v323 = v322 + 1 > v385 + 64 || v322 > v322 + 1;
      v324 = !v323 && v322 >= v385;
      v325 = v324;
      if (*(v460 + v315) <= 0.0)
      {
        if (!v325)
        {
          goto LABEL_567;
        }

        *v322 -= 512;
        v321 += 16;
        v326 = v315;
      }

      else
      {
        if (!v325)
        {
          goto LABEL_567;
        }

        *v322 += 512;
        v326 = v315 + 128;
        *v311 = v315 + 128;
      }

      v327 = &v428 + 4 * (6 * (v315 - (v320 & 0xFFFFFFFC)));
      v328 = v327 | 4;
      v329 = v327 < &v428 || v328 > __C;
      if (v329 || v327 > v328)
      {
        goto LABEL_567;
      }

      while ((*v327 & 0x80000000) == 0)
      {
        v331 = v327 + 4;
        if (v327 + 4 >= &v428)
        {
          v332 = v327 + 8;
          if (v327 + 8 <= __C)
          {
            v327 += 4;
            if (v331 <= v332)
            {
              continue;
            }
          }
        }

        goto LABEL_567;
      }

      *v327 = v321;
      MEMORY[0x19EAE5DC0](v384, 1, &v441[48] - 4 * v326, 1, v384, 1, 64);
      if (++v309 == v310)
      {
        break;
      }
    }
  }

  if (v388 > 51)
  {
    if (v388 <= 71)
    {
      if (v388 == 52)
      {
        v355 = 0;
        v356 = &v428 + 1;
        do
        {
          *(v382 + v355) = apac::ACELPEncoder::ACELP_quant_3p_3N1(*(v356 - 1), *v356, v356[1], 4);
          v355 += 4;
          v356 += 6;
        }

        while (v355 != 16);
      }

      else if (v388 == 64)
      {
        v333 = (v382 + 16);
        v334 = &v428;
        v335 = 4;
        do
        {
          v336 = E_ACELP_quant_4p_4N(v334, 4);
          *(v333 - 4) = v336 >> 14;
          *v333++ = v336 & 0x3FFF;
          v334 = (v334 + 24);
          --v335;
        }

        while (v335);
      }

      return;
    }

    if (v388 != 88)
    {
      if (v388 == 72)
      {
        v343 = 0;
        v344 = 1;
        do
        {
          v345 = v344;
          v346 = E_ACELP_quant_5p_5N(&v428 + 24 * v343, 4);
          v344 = 0;
          v347 = (v382 + 4 * v343);
          *v347 = (v346 >> 10) & 0x3FF;
          v347[4] = v346 & 0x3FF;
          v343 = 1;
        }

        while ((v345 & 1) != 0);
        v348 = (v382 + 24);
        v349 = &v431;
        v350 = 2;
        do
        {
          v351 = E_ACELP_quant_4p_4N(v349, 4);
          *(v348 - 4) = v351 >> 14;
          *v348++ = v351 & 0x3FFF;
          v349 = (v349 + 24);
          --v350;
        }

        while (v350);
      }

      return;
    }

    v357 = 0;
    v1 = &v465[1];
    v358 = &v428;
    while (2)
    {
      v359 = 0;
      v360 = 0;
      v361 = 0;
      memset(v465, 170, sizeof(v465));
      v463 = 0xAAAAAAAAAAAAAAAALL;
      v464 = 0xAAAAAAAAAAAAAAAALL;
      do
      {
        v362 = *(v358 + v359);
        if ((v362 & 8) != 0)
        {
          v363 = &v463 + 4 * v361;
          v367 = v363 + 4;
          if (v363 < &v463 || v367 > &v465[1] || v363 > v367)
          {
            goto LABEL_567;
          }

          ++v361;
        }

        else
        {
          v363 = &v465[1] + 4 * v360;
          v364 = v363 + 4;
          if (v363 < &v465[1] || v364 > &v466 || v363 > v364)
          {
            goto LABEL_567;
          }

          ++v360;
        }

        *v363 = v362;
        v359 += 4;
      }

      while (v359 != 24);
      v370 = 0;
      if (v360 > 2)
      {
        if (v360 > 4)
        {
          if (v360 == 5)
          {
            v378 = E_ACELP_quant_5p_5N(&v465[1], 3);
            v370 = v463 & 7 | (8 * ((v463 >> 4) & 1)) | (16 * v378);
            v360 = 1;
          }

          else if (v360 == 6)
          {
            v374 = E_ACELP_quant_5p_5N(&v465[1], 3);
            v360 = 0;
            v370 = BYTE4(v465[3]) & 7 | (8 * ((HIDWORD(v465[3]) >> 4) & 1)) | (16 * v374);
          }
        }

        else if (v360 == 3)
        {
          v377 = apac::ACELPEncoder::ACELP_quant_3p_3N1(LODWORD(v465[1]), HIDWORD(v465[1]), v465[2], 3);
          v370 = apac::ACELPEncoder::ACELP_quant_3p_3N1(v463, HIDWORD(v463), v464, 3) + (v377 << 10);
        }

        else
        {
          v371 = E_ACELP_quant_4p_4N(&v465[1], 3);
          v370 = apac::ACELPEncoder::ACELP_quant_2p_2N1(v463, SHIDWORD(v463), 3) + (v371 << 7);
          v360 = 2;
        }

LABEL_565:
        v379 = (v382 + 4 * v357);
        *v379 = ((v370 + (v360 << 20)) >> 11) & 0x7FF;
        v379[4] = v370 & 0x7FF;
        ++v357;
        v358 = (v358 + 24);
        if (v357 == 4)
        {
          return;
        }

        continue;
      }

      break;
    }

    if (v360)
    {
      if (v360 != 1)
      {
        if (v360 != 2)
        {
          goto LABEL_565;
        }

        v372 = E_ACELP_quant_4p_4N(&v463, 3);
        v373 = apac::ACELPEncoder::ACELP_quant_2p_2N1(LODWORD(v465[1]), SHIDWORD(v465[1]), 3) + (v372 << 7);
        goto LABEL_564;
      }

      v375 = E_ACELP_quant_5p_5N(&v463, 3);
      v376 = v465[1];
    }

    else
    {
      v375 = E_ACELP_quant_5p_5N(&v463, 3);
      v376 = HIDWORD(v465[0]);
    }

    v373 = v376 & 7 | (8 * ((v376 >> 4) & 1)) | (16 * v375);
LABEL_564:
    v370 = v373 + 0x80000;
    goto LABEL_565;
  }

  v1 = v382;
  switch(v388)
  {
    case 20:
      v352 = 0;
      v353 = &v428;
      do
      {
        v354 = *v353;
        v353 += 6;
        *(v382 + v352) = v354 & 0x1F;
        v352 += 4;
      }

      while (v352 != 16);
      return;
    case 36:
LABEL_568:
      v380 = 0;
      v381 = &v428 + 1;
      do
      {
        LODWORD(v1[v380++]) = apac::ACELPEncoder::ACELP_quant_2p_2N1(*(v381 - 1), *v381, 4);
        v381 += 6;
      }

      while (v380 != 4);
      return;
    case 44:
      v337 = 0;
      v338 = 1;
      do
      {
        v339 = v338;
        v340 = apac::ACELPEncoder::ACELP_quant_3p_3N1(*(&v428 + 6 * v337), *(&v428 + 6 * v337 + 1), *(&v428 + 6 * v337 + 2), 4);
        v338 = 0;
        *(v382 + 4 * v337) = v340;
        v337 = 1;
      }

      while ((v339 & 1) != 0);
      v341 = 0;
      v342 = &v431 + 1;
      do
      {
        *(v382 + 8 + v341) = apac::ACELPEncoder::ACELP_quant_2p_2N1(*(v342 - 1), *v342, 4);
        v341 += 4;
        v342 += 6;
      }

      while (v341 != 8);
      break;
  }
}