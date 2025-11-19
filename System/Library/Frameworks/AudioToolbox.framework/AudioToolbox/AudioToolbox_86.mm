__n128 qlsf_ARSN_tcvq_Enc_16k(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5, const float *a6, unint64_t a7, uint64_t a8, __int16 a9)
{
  v9 = a8;
  v67 = *MEMORY[0x1E69E9840];
  v17.n128_u64[0] = -1;
  v17.n128_u64[1] = -1;
  __A[2] = v17;
  __A[3] = v17;
  __A[0] = v17;
  __A[1] = v17;
  v65[0] = v17;
  v65[1] = v17;
  v64[0] = v17;
  v64[1] = v17;
  v63[0] = v17;
  v63[1] = v17;
  v62[0] = v17;
  v62[1] = v17;
  v60 = v17;
  v61 = v17;
  v58 = v17;
  v59 = v17;
  v18 = *a5;
  v19 = a5[2];
  v20 = *a5 + 2;
  v23 = v20 <= a5[1] && v18 <= v20 && v18 >= v19;
  if (a9 == 1)
  {
    if (v23)
    {
      *v18 = 1;
      if (*a5 + 2 >= v19)
      {
        BcTcvq(1, a1, a2, &v58, v62, a6, a7, a8, (*a5 + 2), a5[1]);
        if (v9 < 31)
        {
          goto LABEL_50;
        }

        for (i = 0; i != 16; ++i)
        {
          v25 = (a1 + i * 4);
          v26 = a1 + i * 4 + 4;
          if (a1 + i * 4 < a1 || v26 > a2 || v25 > v26)
          {
            goto LABEL_61;
          }

          v64[0].n128_f32[i] = (*v25 - v58.n128_f32[i]) * *&scale_inv_ARSN[i];
        }

        v29 = SVQ_2d(v64, __A, v62, v64, a6, a7, &AR_SVQ_CB1, 32);
        v30 = *a5 + 22;
        if (v30 <= a5[1])
        {
          v31 = (*a5 + 20);
          if (v31 <= v30 && v31 >= a5[2])
          {
            *v31 = v29;
            if (a6 + 8 >= a6)
            {
              v32 = SVQ_2d(v65, __A, v63, v64, (a6 + 8), a7, &AR_SVQ_CB2, 16);
              v33 = *a5;
              v34 = *a5 + 24;
              if (v34 <= a5[1])
              {
                v35 = (v33 + 22);
                if (v33 + 22 <= v34 && v35 >= a5[2])
                {
                  v36 = 0;
                  *v35 = v32;
                  do
                  {
                    *(&v58 + v36 * 16) = vmlaq_f32(*(&v58 + v36 * 16), scale_ARSN[v36], v62[v36]);
                    ++v36;
                  }

                  while (v36 != 4);
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }
    }

LABEL_61:
    __break(0x5519u);
  }

  if (!v23)
  {
    goto LABEL_61;
  }

  *v18 = 0;
  if (*a5 + 2 < v19)
  {
    goto LABEL_61;
  }

  BcTcvq(0, a1, a2, &v58, v62, a6, a7, a8, (*a5 + 2), a5[1]);
  if (v9 < 31)
  {
    goto LABEL_50;
  }

  v37 = v64;
  v38 = &v58;
  v39 = 16;
  v40 = a1;
  do
  {
    if (v40 < a1 || (v40 + 1) > a2 || v40 > v40 + 1)
    {
      goto LABEL_61;
    }

    v41 = *v40++;
    v42 = v41;
    v43 = *v38++;
    *v37++ = v42 - v43;
    --v39;
  }

  while (v39);
  v44 = SVQ_2d(v64, __A, v62, v64, a6, a7, &AR_SVQ_CB1, 32);
  v45 = *a5 + 22;
  if (v45 > a5[1])
  {
    goto LABEL_61;
  }

  v46 = (*a5 + 20);
  if (v46 > v45)
  {
    goto LABEL_61;
  }

  if (v46 < a5[2])
  {
    goto LABEL_61;
  }

  *v46 = v44;
  if (a6 + 8 < a6)
  {
    goto LABEL_61;
  }

  v47 = SVQ_2d(v65, __A, v63, v64, (a6 + 8), a7, &AR_SVQ_CB2, 16);
  v48 = *a5;
  v49 = *a5 + 24;
  if (v49 > a5[1])
  {
    goto LABEL_61;
  }

  v50 = (v48 + 22);
  if (v48 + 22 > v49 || v50 < a5[2])
  {
    goto LABEL_61;
  }

  v51 = 0;
  *v50 = v47;
  do
  {
    *(&v58 + v51 * 16) = vaddq_f32(*(&v58 + v51 * 16), v62[v51]);
    ++v51;
  }

  while (v51 != 4);
LABEL_50:
  if (a2 < a1)
  {
    goto LABEL_61;
  }

  if ((a2 - a1) < 61)
  {
    goto LABEL_61;
  }

  for (j = 0; j != 16; ++j)
  {
    __A[0].n128_f32[j] = v58.n128_f32[j] - *(a1 + j * 4);
  }

  for (k = 0; k != 4; ++k)
  {
    __A[k] = vmulq_f32(__A[k], __A[k]);
  }

  if (a7 < a6)
  {
    goto LABEL_61;
  }

  if ((a7 - a6) < 61)
  {
    goto LABEL_61;
  }

  __C = NAN;
  vDSP_dotpr(__A, 1, a6, 1, &__C, 0x10uLL);
  if (a4 < a3)
  {
    goto LABEL_61;
  }

  if (a4 - a3 <= 0x3F)
  {
    goto LABEL_61;
  }

  result = v58;
  v55 = v59;
  v56 = v61;
  *(a3 + 32) = v60;
  *(a3 + 48) = v56;
  *a3 = result;
  *(a3 + 16) = v55;
  if (a3 + 64 < a3)
  {
    goto LABEL_61;
  }

  return result;
}

__int16 *vq_dec_lvq(int a1, float *a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20)
{
  v74 = *MEMORY[0x1E69E9840];
  v26.i64[0] = -1;
  v26.i64[1] = -1;
  v73[2] = v26;
  v73[3] = v26;
  v73[0] = v26;
  v73[1] = v26;
  __A = 0.0;
  vDSP_vfill(&__A, a2, 1, 0x10uLL);
  v27 = a5 - 1;
  if (a1 == 1)
  {
    if (a5 >= 2)
    {
      v28 = 0;
      v29 = 0;
      v30 = &CB_lsf[a6];
      v31 = v30 + 1 > offset_lvq_modes_SN || v30 >= v30 + 1;
      v33 = !v31 && v30 >= CB_lsf;
      do
      {
        v34 = (a3 + 2 * v29);
        v35 = v34 + 1;
        v36 = v34 < a3 || v35 > a4;
        v37 = v36 || v34 >= v35;
        if (v37 || !v33)
        {
          goto LABEL_69;
        }

        v38 = &Quantizers + 2 * v28 + 2 * *v30;
        v39 = v38 + 2;
        v40 = v38 < &Quantizers || v39 > &Quantizers_p;
        if (v40 || v38 >= v39)
        {
          goto LABEL_69;
        }

        v43 = *v38;
        v42 = v38[1];
        v44 = v43 + (*v34 << 6);
        v31 = v42 >= v44;
        v45 = v42 - v44;
        v46 = !v31 || v43 > v44;
        if (v46 || v45 < 64)
        {
          goto LABEL_69;
        }

        MEMORY[0x19EAE5DC0](a2, 1);
        v28 = ++v29;
      }

      while (v27 > v29);
    }

    v47 = (a3 + 2 * v27);
    if (v47 < a3)
    {
      goto LABEL_69;
    }

    v48 = deindex_lvq(v47, a4, v73, a6, 1, a7, a9, a10, a11, a12, a17, a18);
  }

  else
  {
    if (a5 >= 2)
    {
      v49 = 0;
      v50 = 0;
      v51 = &CB_p_lsf[a6];
      v54 = v51 + 1 <= offset_lvq_modes_pred && v51 < v51 + 1 && v51 >= CB_p_lsf;
      while (1)
      {
        v55 = (a3 + 2 * v50);
        v56 = v55 + 1;
        v57 = v55 < a3 || v56 > a4;
        v58 = v57 || v55 >= v56;
        if (v58 || !v54)
        {
          break;
        }

        v59 = &Quantizers_p + 2 * v49 + 2 * *v51;
        v60 = v59 + 2;
        v61 = v59 < &Quantizers_p || v60 > &finegain;
        if (v61 || v59 >= v60)
        {
          break;
        }

        v64 = *v59;
        v63 = v59[1];
        v65 = v64 + (*v55 << 6);
        v31 = v63 >= v65;
        v66 = v63 - v65;
        v67 = !v31 || v64 > v65;
        if (v67 || v66 < 64)
        {
          break;
        }

        MEMORY[0x19EAE5DC0](a2, 1);
        v49 = ++v50;
        if (v27 <= v50)
        {
          goto LABEL_66;
        }
      }

LABEL_69:
      __break(0x5519u);
    }

LABEL_66:
    v68 = (a3 + 2 * v27);
    if (v68 < a3)
    {
      goto LABEL_69;
    }

    v48 = deindex_lvq(v68, a4, v73, a6, 0, a7, a13, a14, a15, a16, a19, a20);
  }

  v69 = v48;
  MEMORY[0x19EAE5DC0](a2, 1, v73, 1, a2, 1, 16);
  return v69;
}

__int16 *deindex_lvq(__int16 *result, unint64_t a2, float32x4_t *a3, int a4, int a5, int a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  v14 = a4;
  if (a5 == 1)
  {
    v15 = &offset_lvq_modes_SN[2 * a4];
    v16 = v15 + 2;
    v18 = v15 < offset_lvq_modes_SN || v16 > offset_in_lvq_mode_SN || v15 > v16;
    v19 = &min_lat_bits_SN[a4];
    v20 = v19 + 1;
    if (v18 || v19 < min_lat_bits_SN || v20 > CB_p_lsf || v19 > v20)
    {
      goto LABEL_57;
    }

    v24 = &offset_in_lvq_mode_SN[42 * a4];
    v25 = &v24[2 * (a6 - min_lat_bits_SN[a4])];
    if (v25 < v24 || v25 + 2 > v24 + 42 || v25 > v25 + 2)
    {
      goto LABEL_57;
    }

    v26 = &scales;
    v27 = &no_lead;
  }

  else
  {
    v15 = &offset_lvq_modes_pred[2 * a4];
    v28 = v15 + 2;
    v30 = v15 < offset_lvq_modes_pred || v28 > offset_in_lvq_mode_pred || v15 > v28;
    v31 = &min_lat_bits_pred[a4];
    v32 = v31 + 1;
    if (v30 || v31 < min_lat_bits_pred || v32 > &word_19B386482 || v31 > v32)
    {
      goto LABEL_57;
    }

    v36 = &offset_in_lvq_mode_pred[64 * a4];
    v25 = &v36[2 * (a6 - min_lat_bits_pred[a4])];
    if (v25 < v36 || v25 + 2 > v36 + 64 || v25 > v25 + 2)
    {
      goto LABEL_57;
    }

    v26 = &scales_p;
    v27 = &no_lead_p;
  }

  if (a2 >= result && (a2 - result) >= 5)
  {
    result = decode_indexes(result, a6, v26, v27, a11, a12, a7, a8, a9, a10, a3, *v25 + *v15);
    if (a5 == 1)
    {
      v37 = (&sigma_MSLVQ + 64 * v14);
      v38 = 16;
      v39 = v37;
      while (v39 >= v37 && v39 + 1 <= v37 + 16 && v39 <= v39 + 1)
      {
        v40 = *v39++;
        a3->f32[0] = v40 * a3->f32[0];
        a3 = (a3 + 4);
        if (!--v38)
        {
          return result;
        }
      }
    }

    else
    {
      v41 = (&sigma_p + 64 * v14);
      v42 = 16;
      v43 = v41;
      while (v43 >= v41 && v43 + 1 <= v41 + 16 && v43 <= v43 + 1)
      {
        v44 = *v43++;
        a3->f32[0] = v44 * a3->f32[0];
        a3 = (a3 + 4);
        if (!--v42)
        {
          return result;
        }
      }
    }
  }

LABEL_57:
  __break(0x5519u);
  return result;
}

uint64_t decode_indexes(__int16 *a1, int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, float32x4_t *a11, __int16 a12)
{
  if (a2 <= 30)
  {
    v16 = a1 + 2;
    if (a1 + 2 > a1 + 3 || v16 < a1)
    {
      goto LABEL_112;
    }

    *v16 = 0;
    if (a2 <= 15)
    {
      a1[1] = 0;
    }
  }

  v17 = 0;
  v12 = a11;
  do
  {
    if (a1[v17] < 0)
    {
      __A = 0.0;
      v31 = 1;
      vDSP_vfill(&__A, a11->f32, 1, 0x10uLL);
      a1[v17] = 0;
      return v31;
    }

    ++v17;
  }

  while (v17 != 3);
  v18 = a5 + 4 * a12;
  v19 = (v18 + 2);
  if (v18 + 2 < a5)
  {
    goto LABEL_112;
  }

  v20 = v18 + 4;
  if (v20 > a6 || v19 > v20)
  {
    goto LABEL_112;
  }

  v21 = 4 * a12;
  v22 = (a9 + 4 * (v21 + *v19));
  v23 = v22 + 1;
  v24 = v22 < a9 || v23 > a10;
  if (v24 || v22 > v23)
  {
    goto LABEL_112;
  }

  v26 = *v22;
  if (*v22)
  {
    if (a1 + 2 > a1 + 3 || a1 + 2 < a1 || a1 + 1 > a1 + 3)
    {
      goto LABEL_112;
    }

    v27 = a1[2];
    if (v26 <= v27 >> 2)
    {
      v30 = 0;
      goto LABEL_31;
    }

    v28 = (v27 << 30) + (a1[1] << 15) + *a1;
    if (v27 >= 4)
    {
      v57 = v27 >> 2;
      v58 = __clz(v57);
      v59 = v57 << v58;
      v60 = -v58;
      v61 = (v28 >> v60) + v59;
      v62 = ((v61 % v26) << v60) + (v28 & ~(-1 << v60));
      v29 = ((v61 / v26) << v60) + v62 / v26;
      v30 = v62 % v26;
      if (!v29)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v29 = v28 / v26;
      v30 = v28 % v26;
      if (!(v28 / v26))
      {
        goto LABEL_31;
      }
    }

LABEL_77:
    v63 = (a5 + 4 * a12);
    if (v63 >= a5 && (v63 + 1) <= a6 && v63 <= v63 + 1)
    {
      v64 = *v63;
      v65 = (a7 + 4 * (v21 + v64));
      if (v65 >= a7 && (v65 + 1) <= a8 && v65 <= v65 + 1)
      {
        if (v29 >= *v65)
        {
          goto LABEL_113;
        }

        if (v64 >= 1)
        {
          v66 = 1;
          v67 = 0x20000;
          while (1)
          {
            v68 = (a7 + 4 * (v21 + v66));
            v69 = v68 + 1;
            v70 = v68 < a7 || v69 > a8;
            if (v70 || v68 > v69)
            {
              goto LABEL_112;
            }

            if (v29 >= *v68)
            {
              ++v66;
              v24 = v64 < v67 >> 16;
              v67 += 0x10000;
              if (!v24)
              {
                continue;
              }
            }

            v72 = v66 - 1;
            goto LABEL_98;
          }
        }

        v72 = 0;
LABEL_98:
        v73 = (a7 + 4 * (v72 + v21));
        if (v73 < a7 || (v73 + 1) > a8 || v73 > v73 + 1)
        {
          goto LABEL_112;
        }

        v74 = v29 - *v73;
        if (v74 >= 0x7F710)
        {
          goto LABEL_113;
        }

        v75 = 1;
        v76 = &dword_19B3678D4;
        while (v74 >= *v76)
        {
          v76 = &table_no_cv[++v75];
          v77 = v76 + 1;
          if (v76 < table_no_cv || v77 > pl_HQ || v76 > v77)
          {
            goto LABEL_112;
          }
        }

        v80 = v75 - 1;
        v81 = &table_no_cv[v75 - 1];
        v82 = v81 + 1;
        if (v81 < table_no_cv || v82 > pl_HQ || v81 > v82)
        {
          goto LABEL_112;
        }

        decode_comb(v74 - *v81, a11->f32, v80);
        v85 = (a3 + 4 * (v72 + 6 * a12));
        v86 = v85 + 1;
        v87 = v85 < a3 || v86 > a4;
        if (v87 || v85 > v86)
        {
          goto LABEL_112;
        }

        v89 = vmulq_n_f32(a11[1], *v85);
        *a11 = vmulq_n_f32(*a11, *v85);
        a11[1] = v89;
        if (v30)
        {
          goto LABEL_32;
        }

LABEL_129:
        v31 = 0;
        a11[2] = 0u;
        a11[3] = 0u;
        return v31;
      }
    }

LABEL_112:
    __break(0x5519u);
    goto LABEL_113;
  }

  v30 = 0;
  v29 = *a1;
  if (*a1)
  {
    goto LABEL_77;
  }

LABEL_31:
  *a11 = 0u;
  a11[1] = 0u;
  if (!v30)
  {
    goto LABEL_129;
  }

LABEL_32:
  v32 = *v19;
  if (v32 >= 1)
  {
    v33 = 1;
    v34 = 0x20000;
    while (1)
    {
      v35 = (a9 + 4 * (v21 + v33));
      v36 = v35 + 1;
      v37 = v35 < a9 || v36 > a10;
      if (v37 || v35 > v36)
      {
        goto LABEL_112;
      }

      if (v30 >= *v35)
      {
        ++v33;
        v24 = v32 < v34 >> 16;
        v34 += 0x10000;
        if (!v24)
        {
          continue;
        }
      }

      v39 = v33 - 1;
      goto LABEL_46;
    }
  }

  v39 = 0;
LABEL_46:
  v40 = (a9 + 4 * (v39 + v21));
  if (v40 < a9 || (v40 + 1) > a10 || v40 > v40 + 1)
  {
    goto LABEL_112;
  }

  v41 = v30 - *v40;
  if (v41 >= 0x7F710)
  {
LABEL_113:
    __A = 0.0;
    v31 = 1;
    vDSP_vfill(&__A, v12, 1, 0x10uLL);
    return v31;
  }

  v42 = 1;
  v43 = &dword_19B3678D4;
  while (v41 >= *v43)
  {
    v43 = &table_no_cv[++v42];
    v44 = v43 + 1;
    if (v43 < table_no_cv || v44 > pl_HQ || v43 > v44)
    {
      goto LABEL_112;
    }
  }

  v47 = v42 - 1;
  v48 = &table_no_cv[v42 - 1];
  v49 = v48 + 1;
  if (v48 < table_no_cv || v49 > pl_HQ || v48 > v49)
  {
    goto LABEL_112;
  }

  decode_comb(v41 - *v48, a11[2].f32, v47);
  v52 = (a3 + 4 * (v39 + 6 * a12 + 3));
  v53 = v52 + 1;
  v54 = v52 < a3 || v53 > a4;
  if (v54 || v52 > v53)
  {
    goto LABEL_112;
  }

  v31 = 0;
  v56 = vmulq_n_f32(a11[3], *v52);
  a11[2] = vmulq_n_f32(a11[2], *v52);
  a11[3] = v56;
  return v31;
}

float decode_comb(int a1, float *a2, int a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = &pi0[a3];
  v4 = v3 + 1;
  if (v3 < pi0 || v3 > v4 || v4 > no_vals)
  {
    goto LABEL_86;
  }

  v7 = a3;
  v8 = pi0[a3];
  v9 = &no_vals[a3];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60[0] = v10;
  v60[1] = v10;
  if (v9 < no_vals)
  {
    goto LABEL_86;
  }

  if (v9 + 1 > vals)
  {
    goto LABEL_86;
  }

  if (v9 > v9 + 1)
  {
    goto LABEL_86;
  }

  v11 = no_vals[a3];
  v12 = &vals[4 * a3];
  v13 = &v12[v11 - 1];
  if (v13 < v12)
  {
    goto LABEL_86;
  }

  v59 = (v12 + 4);
  if (v13 + 1 > v12 + 4)
  {
    goto LABEL_86;
  }

  if (v13 > v13 + 1)
  {
    goto LABEL_86;
  }

  v14 = (&no_vals_ind + 16 * a3);
  v15 = &v14[v11 - 1];
  if (v15 < v14)
  {
    goto LABEL_86;
  }

  v16 = (v14 + 4);
  if (v15 + 1 > v14 + 4 || v15 > v15 + 1)
  {
    goto LABEL_86;
  }

  v18 = (a2 + 8);
  v19 = *v15;
  if (*v15 >= 1)
  {
    v20 = *v13;
    v21 = a2;
    v22 = *v15;
    while (v21 >= a2 && (v21 + 1) <= v18 && v21 <= v21 + 1)
    {
      *v21++ = v20;
      if (!--v22)
      {
        goto LABEL_23;
      }
    }

LABEL_86:
    __break(0x5519u);
  }

LABEL_23:
  v23 = a1 / v8;
  v24 = a1 % v8;
  switch(v11)
  {
    case 4:
      v31 = v14 + 2;
      if (v14 + 2 < v14 || (v14 + 3) > v16 || v31 > v14 + 3)
      {
        goto LABEL_86;
      }

      v32 = *v31;
      v30 = v32 + v19;
      v33 = &C_VQ + 36 * v32 + 36 * v19;
      v34 = &v33[4 * v32];
      v35 = (v34 + 4);
      v36 = v34 < v33 || v35 > (v33 + 36);
      if (v36 || v34 > v35)
      {
        goto LABEL_86;
      }

      if (v32 > 8)
      {
        goto LABEL_86;
      }

      v38 = *v34;
      v58 = v24 / v38;
      idx2c((v32 + v19), v60, v32, v24 % v38);
      v39 = v12 + 2;
      if (v12 + 2 < v12 || (v12 + 3) > v59 || v39 > v12 + 3)
      {
        goto LABEL_86;
      }

      put_value(a2, v18, v60, v19, v32, *v39);
      v24 = v58;
      goto LABEL_48;
    case 3:
      v30 = v19;
LABEL_48:
      v40 = v14 + 1;
      if (v14 + 1 < v14 || (v14 + 2) > v16 || v40 > v14 + 2)
      {
        goto LABEL_86;
      }

      v41 = *v40;
      v42 = v41 + v30;
      v43 = &C_VQ + 36 * v41 + 36 * v30;
      v44 = &v43[4 * v41];
      v45 = (v44 + 4);
      v46 = v44 < v43 || v45 > (v43 + 36);
      if (v46 || v44 > v45)
      {
        goto LABEL_86;
      }

      if (v41 > 8)
      {
        goto LABEL_86;
      }

      v48 = *v44;
      v49 = v24 / v48;
      idx2c((v41 + v30), v60, v41, v24 % v48);
      v50 = v12 + 1;
      if (v12 + 1 < v12)
      {
        goto LABEL_86;
      }

      if ((v12 + 2) > v59)
      {
        goto LABEL_86;
      }

      if (v50 > v12 + 2)
      {
        goto LABEL_86;
      }

      put_value(a2, v18, v60, v30, v41, *v50);
      v25 = *v14;
      if (*v14 > 8)
      {
        goto LABEL_86;
      }

      idx2c(8, v60, *v14, v49);
      v26 = *v12;
      v27 = a2;
      v28 = v18;
      v29 = v42;
      goto LABEL_64;
    case 2:
      if ((v14 + 1) > v16)
      {
        goto LABEL_86;
      }

      if (v14 > v14 + 1)
      {
        goto LABEL_86;
      }

      v25 = *v14;
      if (*v14 > 8)
      {
        goto LABEL_86;
      }

      idx2c(8, v60, *v14, v24);
      if ((v12 + 1) > v59 || v12 > v12 + 1)
      {
        goto LABEL_86;
      }

      v26 = *v12;
      v27 = a2;
      v28 = v18;
      v29 = v19;
LABEL_64:
      put_value(v27, v28, v60, v29, v25, v26);
      break;
  }

  v51 = &pl_par[v7];
  if (v51 < pl_par || v51 + 1 > pi0 || v51 > v51 + 1)
  {
    goto LABEL_86;
  }

  v52 = *v51;
  if (v52)
  {
    v53 = 7;
  }

  else
  {
    v53 = 8;
  }

  v54 = 1;
  v55 = a2;
  do
  {
    if (v55 < a2 || (v55 + 1) > v18 || v55 > v55 + 1)
    {
      goto LABEL_86;
    }

    result = *v55;
    if (*v55 > 0.0)
    {
      if (v23)
      {
        result = -result;
        *v55 = result;
        v54 = -v54;
      }

      v23 >>= 1;
    }

    ++v55;
    --v53;
  }

  while (v53);
  if (v52 && v54 != v52)
  {
    v57 = a2 + 7;
    if ((a2 + 7) > v18 || v57 < a2)
    {
      goto LABEL_86;
    }

    result = -*v57;
    *v57 = result;
  }

  return result;
}

uint64_t idx2c(uint64_t result, _DWORD *a2, int a3, int a4)
{
  v4 = (a3 - 1);
  v5 = &C_VQ + 36 * result - 36;
  v6 = v5 + 36;
  v7 = &v5[4 * v4];
  v8 = v7 + 4;
  if (v7 >= v5 && v8 <= v6 && v7 <= v8)
  {
    LODWORD(v5) = 0;
    LODWORD(v6) = 0;
    v4 = v4;
    v11 = result - 2;
    do
    {
      v12 = *v7 + v6;
      if (v12 > a4)
      {
        goto LABEL_19;
      }

      LODWORD(v5) = v5 + 1;
      v13 = &C_VQ + 36 * v11;
      v7 = &v13[4 * v4];
      v14 = (v7 + 4);
      --v11;
      v16 = v7 < v13 || v14 > (v13 + 36) || v7 > v14;
      LODWORD(v6) = v12;
    }

    while (!v16);
  }

  while (1)
  {
    do
    {
      __break(0x5519u);
LABEL_19:
      v17 = a2 + 1;
    }

    while (a2 + 1 < a2 || v17 > &a2[a3]);
    *a2 = v5;
    if (a3 == 1)
    {
      break;
    }

    if (a3 >= 1)
    {
      v18 = (4 * a3 - 4) >> 2;
      if (v18 >= v4)
      {
        v19 = v5 + 1;
        result = idx2c((result - (v5 + 1)), a2 + 1, v4, (a4 - v6));
        do
        {
          *v17++ += v19;
          --v18;
        }

        while (v18);
        return result;
      }
    }
  }

  return result;
}

float put_value(float *a1, unint64_t a2, int *a3, int a4, int a5, float result)
{
  v38[1] = *MEMORY[0x1E69E9840];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  if (a5 >= 1)
  {
    v6 = a5;
    while (1)
    {
      v8 = *a3++;
      v7 = v8;
      v9 = v37 + 4 * v8;
      v10 = v9 + 4;
      v11 = v9 < v37 || v10 > v38;
      if (v11 || v9 >= v10)
      {
        break;
      }

      *(v37 + v7) = result;
      v13 = v36 + v7;
      v14 = v13 + 1;
      v15 = v13 < v36 || v14 > v37;
      if (v15 || v13 >= v14)
      {
        break;
      }

      *v13 = 1;
      if (!--v6)
      {
        goto LABEL_18;
      }
    }

LABEL_55:
    __break(0x5519u);
  }

LABEL_18:
  v17 = (a5 + a4);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v36;
    v20 = v37;
    v21 = (a5 + a4);
    do
    {
      v22 = v19 + 1;
      if (v19 < v36 || v22 > v37 || v19 >= v22)
      {
        goto LABEL_55;
      }

      if (!*v19)
      {
        v25 = &a1[v18];
        if (v25 < a1 || (v25 + 1) > a2 || v25 > v25 + 1 || v20 < v37 || v20 + 1 > v38 || v20 > v20 + 1)
        {
          goto LABEL_55;
        }

        ++v18;
        *v20 = *v25;
      }

      ++v20;
      ++v19;
      --v21;
    }

    while (v21);
    v26 = v37;
    for (i = a1; ; ++i)
    {
      v28 = v26 + 1;
      v29 = v26 < v37 || v28 > v38;
      v30 = v29 || v26 >= v28;
      v31 = i + 1;
      v32 = !v30 && i >= a1;
      v33 = !v32 || v31 > a2;
      if (v33 || i >= v31)
      {
        break;
      }

      v35 = *v26++;
      result = v35;
      *i = v35;
      if (!--v17)
      {
        return result;
      }
    }

    goto LABEL_55;
  }

  return result;
}

unint64_t BcTcvq(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, _WORD *a9, unint64_t a10)
{
  v427 = *MEMORY[0x1E69E9840];
  *&v15 = -1;
  *(&v15 + 1) = -1;
  v422[3] = v15;
  v422[2] = v15;
  v422[1] = v15;
  v422[0] = v15;
  v421[3] = v15;
  v421[1] = v15;
  v421[2] = v15;
  v400 = -21846;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v420[11] = v16;
  v421[0] = v15;
  v420[9] = v16;
  v420[10] = v16;
  v420[7] = v16;
  v420[8] = v16;
  v420[5] = v16;
  v420[6] = v16;
  v420[3] = v16;
  v420[4] = v16;
  v420[1] = v16;
  v420[2] = v16;
  v419[1] = v16;
  v420[0] = v16;
  v418[1] = v16;
  v419[0] = v16;
  v417[11] = v16;
  v418[0] = v16;
  v417[9] = v16;
  v417[10] = v16;
  v417[7] = v16;
  v417[8] = v16;
  v417[5] = v16;
  v417[6] = v16;
  v417[3] = v16;
  v417[4] = v16;
  v417[1] = v16;
  v417[2] = v16;
  v416[1] = v16;
  v417[0] = v16;
  v415[1] = v16;
  v416[0] = v16;
  v414[3] = v15;
  v415[0] = v16;
  v414[1] = v15;
  v414[2] = v15;
  v413[3] = v15;
  v414[0] = v15;
  v413[1] = v15;
  v413[2] = v15;
  v412[3] = v15;
  v413[0] = v15;
  v412[1] = v15;
  v412[2] = v15;
  v411[3] = v15;
  v412[0] = v15;
  v411[1] = v15;
  v411[2] = v15;
  v410[1] = v16;
  v411[0] = v15;
  v409[1] = v16;
  v410[0] = v16;
  v408[1] = v16;
  v409[0] = v16;
  v408[0] = v16;
  memset(v407, 0, sizeof(v407));
  memset(__b, 255, sizeof(__b));
  v17 = 0;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v405[2] = v18;
  v405[3] = v18;
  v405[0] = v18;
  v405[1] = v18;
  v392 = a1;
  if (a1)
  {
    v19 = &SN_IntraCoeff;
  }

  else
  {
    v19 = &AR_IntraCoeff;
  }

  v403 = 0xAAAAAAAAAAAAAAAALL;
  v404 = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v20 = &SN_TCVQ_CB_SUB3;
  }

  else
  {
    v20 = &AR_TCVQ_CB_SUB3;
  }

  v21 = &SN_TCVQ_CB_SUB1;
  if (!a1)
  {
    v21 = &AR_TCVQ_CB_SUB1;
  }

  v391 = v21;
  v401 = 0xAAAAAAAAAAAAAAAALL;
  v402 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v22 = 0;
    v23 = 2 * v17;
    v24 = v422 + 8 * v17;
    v25 = v421 + 8 * v17;
    v26 = 1;
    do
    {
      v27 = v26;
      v28 = (a2 + 4 * (v23 | v22));
      v29 = v28 + 1;
      v30 = v28 < a2 || v29 > a3;
      v31 = v30 || v28 > v29;
      v32 = &v24[4 * v22];
      v33 = (v32 + 4);
      v34 = !v31 && v32 >= v24;
      if (!v34 || v33 > (v24 + 8) || v32 > v33)
      {
        goto LABEL_509;
      }

      *v32 = *v28;
      v37 = (a6 + 4 * (v23 | v22));
      if (v37 < a6)
      {
        goto LABEL_509;
      }

      if ((v37 + 1) > a7)
      {
        goto LABEL_509;
      }

      if (v37 > v37 + 1)
      {
        goto LABEL_509;
      }

      v38 = &v25[4 * v22];
      if (v38 < v25 || v38 + 4 > v25 + 8 || v38 > v38 + 4)
      {
        goto LABEL_509;
      }

      v26 = 0;
      *v38 = *v37;
      v22 = 1;
    }

    while ((v27 & 1) != 0);
    v34 = v17 >= 7;
    v17 = (v17 + 1);
  }

  while (!v34);
  v39 = 0;
  v40 = v411;
  do
  {
    v41 = &v411[4 * v39];
    v42 = v40;
    v43 = 16;
    do
    {
      if (v42 < v41 || v42 + 1 > v41 + 16 || v42 > v42 + 1)
      {
        goto LABEL_509;
      }

      *v42++ = 0;
      --v43;
    }

    while (v43);
    ++v39;
    v40 += 4;
  }

  while (v39 != 4);
  v44 = 0;
  v45 = *v422;
  v46 = *v421;
  v47 = *(v422 + 1);
  v48 = *(v421 + 1);
  do
  {
    v49 = &NTRANS + 4 * v44;
    v50 = v49 + 4;
    if (v49 < &NTRANS || v50 > word_19B388CA4 || v49 > v50)
    {
      goto LABEL_509;
    }

    v53 = &dword_19B388CE4[v44];
    if (v53 < dword_19B388CE4 || v53 >= v53 + 1)
    {
      goto LABEL_509;
    }

    v54 = *v53;
    v55 = &v391[8 * *v53];
    if (v55 + 1 > v55 + 2 || v55 > v55 + 1)
    {
      goto LABEL_509;
    }

    v57 = (v46 * ((v45 - *v55) * (v45 - *v55))) + (((v47 - v55[1]) * (v47 - v55[1])) * v48);
    if ((v54 + 8) <= 127)
    {
      v58 = (v54 + 8);
      v59 = &v391[8 * v58 + 4];
      do
      {
        if (v59 >= v59 + 1 || v59 - 1 > v59)
        {
          goto LABEL_509;
        }

        if (((v46 * ((v45 - *(v59 - 1)) * (v45 - *(v59 - 1)))) + (((v47 - *v59) * (v47 - *v59)) * v48)) < v57)
        {
          v57 = (v46 * ((v45 - *(v59 - 1)) * (v45 - *(v59 - 1)))) + (((v47 - *v59) * (v47 - *v59)) * v48);
          LOWORD(v54) = v58;
        }

        v59 += 16;
        v30 = v58 < 120;
        v58 += 8;
      }

      while (v30);
    }

    v61 = v418 + 2 * v44;
    if (v61 < v418)
    {
      goto LABEL_509;
    }

    if (v61 + 2 > v419)
    {
      goto LABEL_509;
    }

    if (v61 > v61 + 2)
    {
      goto LABEL_509;
    }

    *(v418 + v44) = *(&NTRANS + v44);
    v62 = v415 + 2 * v44;
    if (v62 < v415)
    {
      goto LABEL_509;
    }

    if (v62 + 2 > v416)
    {
      goto LABEL_509;
    }

    if (v62 > v62 + 2)
    {
      goto LABEL_509;
    }

    *(v415 + v44) = v54;
    v63 = v411 + v44;
    if (v63 < v411 || v63 + 1 > v412 || v63 > v63 + 1)
    {
      goto LABEL_509;
    }

    *v63 = v57;
    v64 = &v391[8 * v54];
    v65 = v64 + 4;
    if (v64 + 4 > v64 + 8 || v64 > v65)
    {
      goto LABEL_509;
    }

    v67 = &__b[8 * v44];
    *v67 = *v64;
    v68 = v67 + 1;
    if (v67 + 1 > v67 + 2 || v68 < v67)
    {
      goto LABEL_509;
    }

    *v68 = *v65;
    v34 = v44 >= 0xE;
    v44 += 2;
  }

  while (!v34);
  v70 = 0;
  if (a1)
  {
    v71 = &SN_IntraCoeff;
  }

  else
  {
    v71 = &AR_IntraCoeff;
  }

  v72 = &dword_19B387B0C;
  if (!a1)
  {
    v72 = &dword_19B388B7C;
  }

  v73 = *v19;
  v74 = flt_19B0AFFF8[a1 == 0];
  if (a1)
  {
    v75 = &unk_19B387B10;
  }

  else
  {
    v75 = &unk_19B388B80;
  }

  v76 = *(v71 + 2);
  v77 = *(v71 + 3);
  v78 = *(&v422[0] + 1);
  if (a1)
  {
    v79 = &unk_19B386F04;
  }

  else
  {
    v79 = &unk_19B387F74;
  }

  v80 = *(&v421[0] + 1);
  do
  {
    v81 = &dword_19B388CE4[v70];
    v82 = v81 + 1;
    if (v81 < dword_19B388CE4 || v82 > dword_19B388D24 || v81 > v82)
    {
      goto LABEL_509;
    }

    v85 = *(&NTRANS + v70);
    v86 = &__b[8 * v85];
    v87 = v86 + 1 > v86 + 2 || v86 > v86 + 1;
    if (v87 || v72 > v75)
    {
      goto LABEL_509;
    }

    v88 = *v81;
    v89 = &v79[8 * *v81];
    if (v89 + 1 > v89 + 2 || v89 > v89 + 1)
    {
      goto LABEL_509;
    }

    v91 = v86[1];
    v92 = (v74 * v91) + (v73 * *v86);
    v93 = (v91 * v77) + (v76 * *v86);
    v96 = (*&v80 * (((*&v78 - v92) - *v89) * ((*&v78 - v92) - *v89))) + ((((*(&v78 + 1) - v93) - v89[1]) * ((*(&v78 + 1) - v93) - v89[1])) * *(&v80 + 1));
    if ((v88 + 8) <= 127)
    {
      v97 = (v88 + 8);
      v98 = &v79[8 * v97 + 4];
      do
      {
        if (v98 >= v98 + 1 || v98 - 1 > v98)
        {
          goto LABEL_509;
        }

        v94 = *&v78 - v92;
        v95 = *(&v78 + 1) - v93;
        if (((*&v80 * ((v94 - *(v98 - 1)) * (v94 - *(v98 - 1)))) + (((v95 - *v98) * (v95 - *v98)) * *(&v80 + 1))) < v96)
        {
          v96 = (*&v80 * ((v94 - *(v98 - 1)) * (v94 - *(v98 - 1)))) + (((v95 - *v98) * (v95 - *v98)) * *(&v80 + 1));
          LOWORD(v88) = v97;
        }

        v98 += 16;
        v30 = v97 < 120;
        v97 += 8;
      }

      while (v30);
    }

    v100 = v419 + v70;
    if (v100 < v419)
    {
      goto LABEL_509;
    }

    if (v100 + 1 > v420)
    {
      goto LABEL_509;
    }

    if (v100 > v100 + 1)
    {
      goto LABEL_509;
    }

    *v100 = v85;
    v101 = v416 + v70;
    if (v101 < v416)
    {
      goto LABEL_509;
    }

    if (v101 + 1 > v417)
    {
      goto LABEL_509;
    }

    if (v101 > v101 + 1)
    {
      goto LABEL_509;
    }

    *v101 = v88;
    v102 = v411 + v85;
    if (v102 < v411)
    {
      goto LABEL_509;
    }

    if (v102 + 1 > v412)
    {
      goto LABEL_509;
    }

    if (v102 > v102 + 1)
    {
      goto LABEL_509;
    }

    v103 = v412 + v70;
    if (v103 < v412 || v103 + 1 > v413 || v103 > v103 + 1)
    {
      goto LABEL_509;
    }

    *v103 = v96 + *v102;
    v104 = &v79[8 * v88];
    v105 = v104 + 1;
    v106 = v104 + 1 > v104 + 2 || v104 > v105;
    v107 = &__b[8 * v70 + 128];
    v108 = v107 + 1;
    if (v106 || v107 > v108)
    {
      goto LABEL_509;
    }

    *v107 = v92 + *v104;
    if (v108 > v107 + 2)
    {
      goto LABEL_509;
    }

    *v108 = v93 + *v105;
    ++v70;
  }

  while (v70 != 16);
  v388 = v79;
  if (v392)
  {
    v110 = &unk_19B386F04;
  }

  else
  {
    v110 = &unk_19B387F74;
  }

  v111 = 2;
  v393 = v19;
  v394 = v110;
  do
  {
    v112 = 0;
    v113 = v111 - 1;
    v114 = &v19[4 * v111 - 4];
    v115 = v114 + 2;
    v117 = v114 + 1 <= v114 + 2 && v114 <= v114 + 1;
    v398 = v117;
    v118 = &__b[128 * v113];
    v119 = v114 + 3 > v114 + 4 || v115 > v114 + 3;
    v120 = v422 + 8 * v111;
    v121 = !v119;
    v396 = v121;
    v122 = &v394[512 * v111];
    v123 = v421 + 2 * v111;
    v125 = (v120 | 4) <= v120 + 8 && v120 <= (v120 | 4);
    v126 = &v411[4 * v113];
    v127 = &v418[2 * v111];
    v129 = (v123 | 4) > (v123 + 2) || v123 > (v123 | 4);
    v130 = (v126 + 16);
    v131 = &v415[2 * v111];
    v132 = &v411[4 * v111];
    v395 = v111;
    v133 = &__b[128 * v111];
    do
    {
      v134 = &dword_19B388CE4[v112];
      v135 = v134 + 1;
      v137 = v134 < dword_19B388CE4 || v135 > dword_19B388D24 || v134 > v135;
      if (v137 || !v398)
      {
        goto LABEL_509;
      }

      v138 = *(&NTRANS + v112);
      v139 = &v118[8 * v138];
      v140 = v139 + 1 > v139 + 2 || v139 > v139 + 1;
      if (v140 || !v396 || !v125)
      {
        goto LABEL_509;
      }

      v141 = *v134;
      v142 = &v122[8 * *v134];
      v143 = v142 + 1 > v142 + 2 || v142 > v142 + 1;
      v144 = v143;
      if (v144 || v129)
      {
        goto LABEL_509;
      }

      v145 = v114[1];
      v146 = v139[1];
      v147 = (v145 * v146) + (*v114 * *v139);
      v148 = v114[3];
      v149 = (v146 * v148) + (*v115 * *v139);
      v150 = *(v120 + 4);
      v151 = *v120 - v147;
      v153 = *v123;
      v154 = v123[1];
      v155 = (*v123 * ((v151 - *v142) * (v151 - *v142))) + ((((v150 - v149) - v142[1]) * ((v150 - v149) - v142[1])) * v154);
      if ((v141 + 8) <= 63)
      {
        v156 = (v141 + 8);
        v157 = 8 * v156;
        v158 = v110;
        while (1)
        {
          v159 = &v158[v157 + 1024];
          v160 = &v158[v157 + 1028];
          if (v160 > &v158[v157 + 1032] || v159 > v160)
          {
            break;
          }

          v152 = v150 - v149;
          if (((v153 * ((v151 - *v159) * (v151 - *v159))) + (((v152 - *v160) * (v152 - *v160)) * v154)) < v155)
          {
            v155 = (v153 * ((v151 - *v159) * (v151 - *v159))) + (((v152 - *v160) * (v152 - *v160)) * v154);
            LOWORD(v141) = v156;
          }

          v158 += 64;
          v30 = v156 < 56;
          v156 += 8;
          if (!v30)
          {
            goto LABEL_203;
          }
        }

LABEL_509:
        __break(0x5519u);
      }

LABEL_203:
      v162 = &v126[v138];
      if (v162 < v126 || (v162 + 1) > v130 || v162 > v162 + 1)
      {
        goto LABEL_509;
      }

      v163 = &v122[8 * v141];
      if (v163 + 1 > v163 + 2 || v163 > v163 + 1)
      {
        goto LABEL_509;
      }

      v165 = &word_19B388CA4[2 * v112];
      if (v165 < word_19B388CA4)
      {
        goto LABEL_509;
      }

      if (v165 + 2 > dword_19B388CE4)
      {
        goto LABEL_509;
      }

      if (v165 > v165 + 2)
      {
        goto LABEL_509;
      }

      v166 = &dword_19B388D24[v112];
      if (v166 < dword_19B388D24)
      {
        goto LABEL_509;
      }

      if (v166 >= v166 + 1)
      {
        goto LABEL_509;
      }

      v167 = *v165;
      v168 = &v118[8 * v167];
      if (v168 + 1 > v168 + 2)
      {
        goto LABEL_509;
      }

      if (v168 > v168 + 1)
      {
        goto LABEL_509;
      }

      v169 = *v166;
      v170 = &v122[8 * *v166];
      if (v170 + 1 > v170 + 2 || v170 > v170 + 1)
      {
        goto LABEL_509;
      }

      v171 = *v162;
      v173 = *v163;
      v172 = v163[1];
      v174 = v168[1];
      v175 = (v145 * v174) + (*v114 * *v168);
      v176 = (v148 * v174) + (*v115 * *v168);
      v177 = *v120 - v175;
      v178 = v150 - v176;
      v179 = (v153 * ((v177 - *v170) * (v177 - *v170))) + ((((v150 - v176) - v170[1]) * ((v150 - v176) - v170[1])) * v154);
      if ((v169 + 8) <= 63)
      {
        v180 = (v169 + 8);
        v181 = 8 * v180;
        v182 = v110;
        do
        {
          v183 = &v182[v181 + 1024];
          v184 = &v182[v181 + 1028];
          if (v184 > &v182[v181 + 1032] || v183 > v184)
          {
            goto LABEL_509;
          }

          if (((v153 * ((v177 - *v183) * (v177 - *v183))) + (((v178 - *v184) * (v178 - *v184)) * v154)) < v179)
          {
            v179 = (v153 * ((v177 - *v183) * (v177 - *v183))) + (((v178 - *v184) * (v178 - *v184)) * v154);
            LOWORD(v169) = v180;
          }

          v182 += 64;
          v30 = v180 < 56;
          v180 += 8;
        }

        while (v30);
      }

      v186 = &v126[v167];
      if (v186 < v126 || (v186 + 1) > v130 || v186 > v186 + 1)
      {
        goto LABEL_509;
      }

      v187 = &v122[8 * v169];
      if (v187 + 1 > v187 + 2 || v187 > v187 + 1)
      {
        goto LABEL_509;
      }

      v189 = v155 + v171;
      v190 = v179 + *v186;
      v191 = &NTRANS + 64 * (v189 > v190);
      v192 = &v191[4 * v112];
      v193 = (v192 + 4);
      v194 = v192 < v191 || v193 > (v191 + 64);
      v195 = v194 || v192 > v193;
      v196 = v127 + v112;
      v197 = (v196 + 1);
      v198 = !v195 && v196 >= v127;
      v199 = !v198 || v197 > (v127 + 2);
      if (v199 || v196 > v197)
      {
        goto LABEL_509;
      }

      v202 = *v187;
      v201 = v187[1];
      *v196 = *v192;
      v203 = v131 + v112;
      if (v203 < v131 || v203 + 1 > v131 + 16 || v203 > v203 + 1)
      {
        goto LABEL_509;
      }

      v204 = v189 <= v190 ? v141 : v169;
      *v203 = v204;
      v205 = &v132[v112];
      if (v205 < v132 || v205 + 1 > v132 + 16 || v205 > v205 + 1)
      {
        goto LABEL_509;
      }

      v206 = v147 + v173;
      v207 = v175 + v202;
      if (v189 <= v190)
      {
        v208 = v189;
      }

      else
      {
        v208 = v190;
      }

      *v205 = v208;
      v209 = &v133[8 * v112];
      if (v189 > v190)
      {
        v206 = v207;
      }

      *v209 = v206;
      v210 = v209 + 1;
      if (v209 + 1 > v209 + 2 || v210 < v209)
      {
        goto LABEL_509;
      }

      v212 = v149 + v172;
      if (v189 > v190)
      {
        v212 = v176 + v201;
      }

      *v210 = v212;
      ++v112;
    }

    while (v112 != 16);
    v111 = v395 + 1;
    v110 += 512;
    v19 = v393;
  }

  while (v395 != 3);
  for (i = 0; i != 16; ++i)
  {
    v214 = 3;
    v215 = i;
    do
    {
      v216 = &v418[2 * v214];
      v217 = &v216[v215];
      v218 = (v217 + 1);
      if (v217 < v216 || v218 > (v216 + 16) || v217 > v218)
      {
        goto LABEL_509;
      }

      v215 = *v217;
    }

    while (v214-- != 0);
    *(v408 + i) = v215;
  }

  v222 = 0;
  v223 = v407;
  do
  {
    v224 = 0;
    v225 = *(v408 + v222);
    v226 = &v407[v222];
    v227 = v409;
    v228 = 3.4028e38;
    v397 = v222;
    do
    {
      v400 = v222;
      v399 = v224;
      v229 = v224;
      BcTcvq_FixSearch(v422, v20, v409, __b, 4, v225, v224, &v400, v421, v19);
      v231 = v230;
      v232 = v20;
      v233 = v19;
      v234 = 5;
      do
      {
        BcTcvq_FixSearch(v422, v232, v409, __b, v234, v225, v229, &v400, v421, v233);
        v235 = v234;
        v231 = v231 + v236;
        ++v234;
      }

      while (v235 < 7);
      v19 = v233;
      v20 = v232;
      LOWORD(v222) = v397;
      if (v231 < v228)
      {
        v237 = 0;
        *(v405 + v397) = v231;
        *(v410 + v397) = (v225 & 0xFFFC) + v229;
        v238 = v409 + 8 * v399;
        do
        {
          v239 = (v227 + v237);
          v240 = v227 + v237 + 2;
          v242 = v227 + v237 < v238 || v240 > (v238 + 8) || v239 > v240;
          v243 = (v223 + v237);
          v244 = v223 + v237 + 2;
          if (v242 || v243 < v226 || v244 > (v226 + 1) || v243 > v244)
          {
            goto LABEL_509;
          }

          *v243 = *v239;
          v237 += 2;
        }

        while (v237 != 8);
        v228 = v231;
      }

      v224 = v399 + 1;
      v227 = (v227 + 8);
    }

    while (v399 != 3);
    v222 = v397 + 1;
    ++v223;
  }

  while (v397 != 15);
  v248 = 0;
  *&v249 = -1;
  *(&v249 + 1) = -1;
  v426 = v249;
  v425 = v249;
  v424 = v249;
  v423 = v249;
  v251 = &v403 + 4;
  v250 = &v424;
  do
  {
    v252 = (v414 + v248);
    v253 = (v414 + v248 + 4);
    v255 = (v414 + v248) < v414 || v253 > v415 || v252 > v253;
    v256 = v405 + v248;
    v257 = v405 + v248 + 4;
    if (v255 || v256 < v405 || v257 > __b || v256 > v257)
    {
      goto LABEL_509;
    }

    *(&v423 + v248) = *v252 + *(v405 + v248);
    v248 += 4;
  }

  while (v248 != 64);
  v261 = 0;
  v262 = *&v423;
  for (j = 1; j != 16; ++j)
  {
    if (*(&v423 + j) < v262)
    {
      v261 = j;
      v262 = *(&v423 + j);
    }
  }

  v264 = 3;
  LOWORD(v402) = v261;
  v265 = v261;
  do
  {
    v266 = v264;
    v267 = &v415[2 * v264];
    v268 = v267 + v265;
    v269 = (v268 + 1);
    v271 = v268 < v267 || v269 > (v267 + 2) || v268 > v269;
    v272 = &v403 + 2 * v266;
    v273 = v272 + 2;
    if (v271 || v272 < &v403 || v273 > v405 || v272 > v273)
    {
      goto LABEL_509;
    }

    *(&v403 + v266) = *v268;
    v277 = &v418[2 * v266];
    v278 = &v277[v265];
    if (v278 < v277)
    {
      goto LABEL_509;
    }

    if (v278 + 1 > v277 + 16)
    {
      goto LABEL_509;
    }

    if (v278 > v278 + 1)
    {
      goto LABEL_509;
    }

    v279 = &v401 + 2 * v266;
    if (v279 < &v401 || v279 + 2 > &v403 || v279 > v279 + 2)
    {
      goto LABEL_509;
    }

    v265 = *v278;
    *(&v401 + v266) = v265;
    v264 = v266 - 1;
  }

  while (v266);
  v280 = 0;
  v281 = v261;
  v282 = &v407[v261];
  do
  {
    v283 = (v282 + v280);
    v284 = v282 + v280 + 2;
    v286 = (v282 + v280) < v282 || v284 > (v282 + 1) || v283 > v284;
    v287 = (&v403 + v280 + 8);
    v288 = &v404 + v280 + 2;
    if (v286 || v287 < &v403 || v288 > v405 || v287 > v288)
    {
      goto LABEL_509;
    }

    *v287 = *v283;
    v280 += 2;
  }

  while (v280 != 8);
  *&v292 = -1;
  *(&v292 + 1) = -1;
  v426 = v292;
  v425 = v292;
  v424 = v292;
  v423 = v292;
  v293 = &v391[8 * v403];
  if (v293 + 1 > v293 + 2 || v293 > v293 + 1)
  {
    goto LABEL_509;
  }

  v295 = *v293;
  v296 = v293[1];
  *&v423 = *v293;
  *(&v423 + 1) = v296;
  v297 = &v388[8 * SWORD1(v403)];
  if (v297 + 1 > v297 + 2 || v297 > v297 + 1)
  {
    goto LABEL_509;
  }

  v298 = 0;
  v299 = v297[1];
  *(&v423 + 2) = ((v74 * v296) + (v73 * v295)) + *v297;
  *(&v423 + 3) = ((v77 * v296) + (v76 * v295)) + v299;
  v300 = 2;
  do
  {
    v301 = v298;
    v302 = &v19[4 * v300 - 4];
    v303 = v302 + 2;
    v304 = v302 + 1 > v302 + 2 || v302 > v302 + 1;
    v305 = &v423 + 8 * v300 - 8;
    v306 = v305 | 4;
    if (v304 || v306 > v305 + 8 || v305 > v306)
    {
      goto LABEL_509;
    }

    if (v302 + 3 > v302 + 4)
    {
      goto LABEL_509;
    }

    if (v303 > v302 + 3)
    {
      goto LABEL_509;
    }

    if (v251 + 2 > v405)
    {
      goto LABEL_509;
    }

    v309 = &v394[512 * v300 + 8 * *v251];
    if (&v309->i32[1] > &v309[1] || v309 > &v309->i32[1])
    {
      goto LABEL_509;
    }

    v310 = *(v305 + 4);
    v311.f32[0] = (v302[1] * v310) + (*v302 * *v305);
    v311.f32[1] = (v310 * v302[3]) + (*v303 * *v305);
    *v250 = vadd_f32(v311, *v309);
    v298 = 1;
    v251 = &v403 + 6;
    v250 = &v424 + 1;
    v300 = 3;
  }

  while ((v301 & 1) == 0);
  v312 = 0;
  v313 = 0;
  v314 = &SN_TCVQ_CB_SUB2;
  if (!v392)
  {
    v314 = &AR_TCVQ_CB_SUB2;
  }

  v315 = &v404;
  do
  {
    v316 = &v19[v313];
    v317 = &v19[v313 + 12];
    v318 = &v19[v313 + 14];
    v319 = &v19[v313 + 13];
    v320 = v319 > v318 || v317 > v319;
    v321 = (&v424 + v312 + 8);
    v322 = (&v424 + v312 + 12);
    if (v320 || v322 > (&v425 + v312) || v321 > v322)
    {
      goto LABEL_509;
    }

    v325 = (v316 + 16);
    v326 = (v316 + 15);
    if (v326 > v325)
    {
      goto LABEL_509;
    }

    if (v318 > v326)
    {
      goto LABEL_509;
    }

    if (v315 < &v403)
    {
      goto LABEL_509;
    }

    if (v315 + 2 > v405)
    {
      goto LABEL_509;
    }

    if (v315 > (v315 + 2))
    {
      goto LABEL_509;
    }

    v327 = &v314[8 * *v315];
    v328 = &v327[128] + 4;
    if (&v327[128].i32[1] > &v327[129])
    {
      goto LABEL_509;
    }

    v329 = v327 + 128;
    if (v329 > v328)
    {
      goto LABEL_509;
    }

    v330.f32[0] = (*v319 * *v322) + (*v317 * *v321);
    v330.f32[1] = (*v322 * *v326) + (*v318 * *v321);
    v313 += 4;
    *(&v425 + v312) = vadd_f32(v330, *v329);
    v312 += 8;
    v314 += 256;
    v315 = (v315 + 2);
  }

  while (v313 != 16);
  for (k = 0; k != 8; ++k)
  {
    v332 = 0;
    v333 = &v423 + 8 * k;
    v334 = 1;
    do
    {
      v335 = v334;
      v336 = &v333[4 * v332];
      v337 = (v336 + 4);
      v339 = v336 < v333 || v337 > (v333 + 8) || v336 > v337;
      v340 = (a4 + 8 * k + 4 * v332);
      v341 = v340 + 1;
      if (v339 || v340 < a4 || v341 > a5 || v340 > v341)
      {
        goto LABEL_509;
      }

      v334 = 0;
      *v340 = *v336;
      v332 = 1;
    }

    while ((v335 & 1) != 0);
  }

  v345 = v410 + v281;
  if (v345 < v410 || v345 + 1 > v411 || v345 > v345 + 1)
  {
    goto LABEL_509;
  }

  v346 = 0;
  v347 = *v345;
  *&v423 = 0xAAAAAAAAAAAAAAAALL;
  result = a10;
  do
  {
    v349 = &v423 + v346 + 2;
    if ((&v423 + v346) < &v423 || v349 > &v423 + 8 || &v423 + v346 > v349)
    {
      goto LABEL_509;
    }

    *(&v423 + v346) = 0;
    v346 += 2;
  }

  while (v346 != 8);
  LOWORD(v352) = 4;
  do
  {
    v353 = &v401 + v352;
    v354 = v353 + 1;
    if (v353 < &v401 || v354 > &v403 || v353 > v354)
    {
      goto LABEL_509;
    }

    if (*v353 >= 8)
    {
      v357 = &v423 + 2 * v352;
      v358 = v357 - 2;
      if (v357 - 2 < &v423 || v357 > &v423 + 8 || v358 > v357)
      {
        goto LABEL_509;
      }

      *v358 = 1;
    }

    v34 = v352 != 0;
    v352 = v352 - 1;
  }

  while (v352 != 0 && v34);
  if ((a9 + 1) > a10 || a9 + 1 < a9)
  {
    goto LABEL_509;
  }

  v359 = 0;
  *a9 = v347;
  v360 = &v423;
  v361 = &v403;
  v362 = 1;
  do
  {
    v363 = v362;
    v364 = &a9[v359];
    v365 = v364 + 1;
    v366 = (v364 + 2);
    if (v365 < a9 || v366 > a10 || v365 > v366)
    {
      goto LABEL_509;
    }

    v369 = 16 * *v360;
    *v365 = v369;
    if (v361 + 2 > v405)
    {
      goto LABEL_509;
    }

    v362 = 0;
    *v365 = v369 + (*v361 >> 3);
    v361 = (&v403 + 2);
    v360 = (&v423 + 2);
    v359 = 1;
  }

  while ((v363 & 1) != 0);
  for (m = 0; m != 2; ++m)
  {
    v371 = &a9[m + 3];
    v372 = &a9[m + 4];
    if (v371 < a9 || v372 > a10 || v371 > v372)
    {
      goto LABEL_509;
    }

    v375 = 8 * *(&v423 + m * 2 + 4);
    *v371 = v375;
    v376 = (&v403 + m * 2 + 4);
    if (v376 < &v403)
    {
      goto LABEL_509;
    }

    v377 = (&v403 + m * 2 + 6);
    if (v377 > v405 || v376 > v377)
    {
      goto LABEL_509;
    }

    *v371 = v375 + (*v376 >> 3);
  }

  for (n = 0; n != 4; ++n)
  {
    v379 = (&v403 + n * 2 + 8);
    v380 = (&v404 + n * 2 + 2);
    v382 = v379 < &v403 || v380 > v405 || v379 > v380;
    v383 = &a9[n + 5];
    v384 = &a9[n + 6];
    if (v382 || v383 < a9 || v384 > a10 || v383 > v384)
    {
      goto LABEL_509;
    }

    *v383 = *v379 >> 3;
  }

  return result;
}

unint64_t SVQ_2d(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, int a8)
{
  v8 = 0;
  v9 = 0;
  v10 = a7 + 192;
  if (a8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a8;
  }

  v12 = 3.4028e38;
LABEL_5:
  v13 = 0;
  v14 = (a7 + 24 * v8);
  v17 = (v14 + 3) <= v10 && v14 <= v14 + 3 && v14 >= a7;
  v18 = 0.0;
  while (1)
  {
    v19 = (result + v13);
    v20 = result + v13 + 4;
    v21 = result + v13 < result || v20 > a2;
    v22 = v21 || v19 > v20;
    if (v22 || !v17)
    {
      break;
    }

    v23 = (*v14 + v13);
    v24 = (v23 + 1) > v14[1] || v23 > v23 + 1;
    v25 = !v24 && v23 >= v14[2];
    v26 = (a5 + v13);
    v27 = a5 + v13 + 4;
    v28 = v25 && v26 >= a5;
    v29 = !v28 || v27 > a6;
    if (v29 || v26 > v27)
    {
      break;
    }

    v18 = v18 + (((*v19 - *v23) * (*v19 - *v23)) * *v26);
    v13 += 4;
    if (v13 == 32)
    {
      if (v18 < v12)
      {
        v12 = v18;
        v9 = v8;
      }

      if (++v8 != v11)
      {
        goto LABEL_5;
      }

      v31 = (a7 + 24 * v9);
      v32 = v31 + 3;
      if (v31 >= a7 && v32 <= v10 && v31 <= v32)
      {
        v35 = 0;
        v36 = v31[2];
        while (1)
        {
          v37 = (*v31 + v35);
          v38 = (v37 + 1) > v31[1] || v37 > v37 + 1;
          v39 = !v38 && v37 >= v36;
          v40 = (a3 + v35);
          v41 = a3 + v35 + 4;
          v42 = v39 && v40 >= a3;
          v43 = !v42 || v41 > a4;
          if (v43 || v40 > v41)
          {
            break;
          }

          *v40 = *v37;
          v35 += 4;
          if (v35 == 32)
          {
            return v9;
          }
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

float *BcTcvq_FixSearch(float *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, __int16 *a8, uint64_t a9, uint64_t a10)
{
  v10 = (&FixBranch_tbl + 32 * (a6 >> 2) + 8 * a7);
  v11 = &v10[(a5 - 4)];
  v12 = (v11 + 1);
  v13 = v11 < v10 || v12 > (v10 + 4);
  if (!v13 && v11 <= v12)
  {
    v15 = &NTRANS2 + 64 * *v11;
    v16 = *a8;
    v17 = &v15[4 * v16 + 128];
    v18 = (v17 + 4);
    v19 = v17 < v15 + 128 || v18 > (v15 + 192);
    if (!v19 && v17 <= v18)
    {
      v21 = (a10 + 16 * (a5 - 1));
      v22 = v21 + 2;
      if (v21 + 1 <= v21 + 2 && v21 <= v21 + 1)
      {
        v23 = (a4 + ((a5 - 1) << 7) + 8 * v16);
        if (v23 + 1 <= v23 + 2 && v23 <= v23 + 1)
        {
          v24 = v21 + 3;
          if (v21 + 3 <= v21 + 4 && v22 <= v24)
          {
            result += 2 * a5;
            if (result + 1 <= result + 2 && result <= result + 1)
            {
              v25 = (a5 - 4);
              v26 = *v17;
              v27 = a5;
              v28 = a2 + (v25 << 8);
              v29 = (v28 + 8 * v26);
              v30 = v29 + 1 > v29 + 2 || v29 > v29 + 1;
              v31 = (a9 + 8 * a5);
              v32 = (v31 + 1);
              v33 = v30 || v32 > (v31 + 2);
              if (!v33 && v31 <= v32)
              {
                v35 = v23[1];
                v36 = (v21[1] * v35) + (*v21 * *v23);
                v37 = (v35 * *v24) + (*v22 * *v23);
                v38 = *result - v36;
                v39 = result[1] - v37;
                v40 = v31[1];
                v41 = (*v31 * ((v38 - *v29) * (v38 - *v29))) + (((v39 - v29[1]) * (v39 - v29[1])) * v40);
                if ((v26 + 8) > 31)
                {
LABEL_42:
                  v48 = &v15[4 * v16];
                  if (v48 >= v15 && v48 + 4 <= v15 + 64 && v48 <= v48 + 4)
                  {
                    *a8 = *v48;
                    v49 = a3 + 8 * a7;
                    v50 = (v49 + 2 * v25);
                    if (v50 >= v49 && (v50 + 1) <= v49 + 8 && v50 <= v50 + 1)
                    {
                      *v50 = v26;
                      v51 = (v28 + 8 * v26);
                      if (v51 + 1 <= v51 + 2 && v51 <= v51 + 1)
                      {
                        v53 = (a4 + (v27 << 7) + 8 * *a8);
                        if (v53 + 1 <= v53 + 2 && v53 <= v53 + 1)
                        {
                          *v53 = v36 + *v51;
                          v53[1] = v37 + v51[1];
                          return result;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v42 = (v26 + 8);
                  v43 = (a2 + (v25 << 8) + 8 * v42);
                  while (v43 + 1 <= v43 + 2 && v43 <= v43 + 1)
                  {
                    v45 = *v43;
                    v46 = v43[1];
                    v43 += 16;
                    v47 = (*v31 * ((v38 - v45) * (v38 - v45))) + (((v39 - v46) * (v39 - v46)) * v40);
                    if (v47 < v41)
                    {
                      v41 = v47;
                      LOWORD(v26) = v42;
                    }

                    v13 = v42 < 24;
                    v42 += 8;
                    if (!v13)
                    {
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

  __break(0x5519u);
  return result;
}

__int16 *mvs2s(__int16 *result, unint64_t a2, __int16 *a3, unint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    if (a3 >= result)
    {
      v9 = a5 + 1;
      v10 = a5;
      v11 = a3;
      for (i = result; ; --i)
      {
        v13 = &i[v10];
        v14 = &i[v10 - 1];
        v15 = v14 < result || v13 > a2;
        if (v15 || v14 > v13)
        {
          break;
        }

        v17 = &v11[v10];
        v18 = &v11[v10 - 1];
        if (v18 < a3 || v17 > a4 || v18 > v17)
        {
          break;
        }

        *v18 = *v14;
        --v9;
        --v11;
        if (v9 <= 1)
        {
          return result;
        }
      }
    }

    else
    {
      v6 = result;
      for (j = a3; v6 >= result && (v6 + 1) <= a2 && v6 <= v6 + 1 && j >= a3 && (j + 1) <= a4 && j <= j + 1; ++j)
      {
        v8 = *v6++;
        *j = v8;
        if (!--v5)
        {
          return result;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

unint64_t quantize_data(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5, unint64_t a6, _DWORD *a7, unint64_t a8, int *a9, unint64_t a10, unsigned int *a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, float *a17, unint64_t a18, __int16 a19, int *a20, unint64_t a21)
{
  v181 = *MEMORY[0x1E69E9840];
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v170[0] = v21;
  v170[1] = v21;
  v169[0] = v21;
  v169[1] = v21;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v167 = v21;
  v168 = v21;
  v166[0] = v21;
  v166[1] = v21;
  v165[0] = v21;
  v165[1] = v21;
  if (a19 < 1)
  {
    if ((a9 + 1) <= a10 && a9 + 1 >= a9)
    {
      *a9 = 0;
      if ((a11 + 1) <= a12 && a11 + 1 >= a11)
      {
        *a11 = -1;
        v98 = 8;
        v99 = a7;
        v100 = a5;
        while (v99 >= a7)
        {
          if ((v99 + 1) > a8)
          {
            break;
          }

          if (v99 > v99 + 1)
          {
            break;
          }

          *v99 = 0;
          if (v100 < a5 || (v100 + 1) > a6 || v100 > v100 + 1)
          {
            break;
          }

          *v100++ = 0;
          ++v99;
          if (!--v98)
          {
            return result;
          }
        }
      }
    }

    goto LABEL_264;
  }

  for (i = 0; i != 32; i += 4)
  {
    v23 = (a13 + i);
    v24 = a13 + i + 4;
    if (a13 + i < a13 || v24 > a14 || v23 > v24)
    {
      goto LABEL_264;
    }

    v27 = (a15 + i);
    if (a15 + i < a15)
    {
      goto LABEL_264;
    }

    if ((v27 + 1) > a16)
    {
      goto LABEL_264;
    }

    if (v27 > v27 + 1)
    {
      goto LABEL_264;
    }

    v28 = (result + i);
    if (result + i < result)
    {
      goto LABEL_264;
    }

    if ((v28 + 1) > a2)
    {
      goto LABEL_264;
    }

    if (v28 > v28 + 1)
    {
      goto LABEL_264;
    }

    v29 = v169 + i;
    if ((v169 + i) < v169)
    {
      goto LABEL_264;
    }

    if (v29 + 4 > v170)
    {
      goto LABEL_264;
    }

    if (v29 > v29 + 4)
    {
      goto LABEL_264;
    }

    v30 = *v23;
    *(v169 + i) = *v28 * *v27;
    v31 = (a3 + i);
    if (a3 + i < a3)
    {
      goto LABEL_264;
    }

    if ((v31 + 1) > a4)
    {
      goto LABEL_264;
    }

    if (v31 > v31 + 1)
    {
      goto LABEL_264;
    }

    v32 = v170 + i;
    if ((v170 + i) < v170 || v32 + 4 > v171 || v32 > v32 + 4)
    {
      goto LABEL_264;
    }

    *(v170 + i) = (v30 * v30) * *v31;
  }

  v33 = 0;
  result = 1;
  do
  {
    v34 = (v169 + v33);
    v35 = (v169 + v33 + 4);
    if ((v169 + v33) < v169 || v35 > v170 || v34 > v35)
    {
      goto LABEL_264;
    }

    v38 = *(v169 + v33);
    v39 = v166 + v33;
    v40 = v166 + v33 + 4;
    v43 = v40 <= &v167 && v39 <= v40 && v39 >= v166;
    if (v38 >= 0.0)
    {
      if (!v43)
      {
        goto LABEL_264;
      }

      *v39 = 1;
    }

    else
    {
      if (!v43)
      {
        goto LABEL_264;
      }

      *v39 = -1;
      result = -result;
      *v34 = -v38;
    }

    v33 += 4;
  }

  while (v33 != 32);
  v167 = xmmword_19B0A5860;
  v168 = xmmword_19B0B20C0;
  v44 = 7;
  v45 = 28;
  do
  {
    v46 = 0;
    v47 = 1;
    v48 = *v169;
    do
    {
      v49 = (v169 + v46 + 4);
      v50 = (v169 + v46 + 8);
      if (v49 < v169 || v50 > v170 || v49 > v50)
      {
        goto LABEL_264;
      }

      if (v48 >= *v49)
      {
        v48 = *v49;
      }

      else
      {
        *(v169 + v46) = *v49;
        *v49 = v48;
        v53 = (&v167 + v46);
        if ((&v167 + v46) < &v167)
        {
          goto LABEL_264;
        }

        if (&v53->u8[4] > v169)
        {
          goto LABEL_264;
        }

        if (v53 > &v53->u8[4])
        {
          goto LABEL_264;
        }

        v54 = &v167 + v46 + 4;
        if (v54 < &v167)
        {
          goto LABEL_264;
        }

        v55 = &v167 + v46 + 8;
        if (v55 > v169 || v54 > v55)
        {
          goto LABEL_264;
        }

        v47 = 0;
        *v53 = vrev64_s32(*v53);
      }

      v46 += 4;
    }

    while (v45 != v46);
    if (!--v44)
    {
      break;
    }

    v45 -= 4;
  }

  while (!v47);
  v56 = 0;
  v164 = SHIDWORD(v168);
  *&v57 = -1;
  *(&v57 + 1) = -1;
  v179 = v57;
  v180 = v57;
  v177 = v57;
  v178 = v57;
  v175 = -1;
  v174[10] = v57;
  v174[11] = v57;
  v174[8] = v57;
  v174[9] = v57;
  v174[6] = v57;
  v174[7] = v57;
  v174[4] = v57;
  v174[5] = v57;
  v174[2] = v57;
  v174[3] = v57;
  v174[0] = v57;
  v174[1] = v57;
  v172 = -1;
  v171[10] = v57;
  v171[11] = v57;
  v171[8] = v57;
  v171[9] = v57;
  v171[6] = v57;
  v171[7] = v57;
  v171[4] = v57;
  v171[5] = v57;
  v171[2] = v57;
  v171[3] = v57;
  v171[0] = v57;
  v171[1] = v57;
  do
  {
    v58 = (&v167 + v56);
    v59 = (&v167 + v56 + 4);
    if ((&v167 + v56) < &v167 || v59 > v169 || v58 > v59)
    {
      goto LABEL_264;
    }

    v62 = v170 + *v58;
    v63 = v62 + 1;
    v64 = v62 < v170 || v63 > v171;
    if (v64 || v62 > v63)
    {
      goto LABEL_264;
    }

    v66 = *v62;
    *(&v177 + v56) = *v62;
    *(&v179 + v56) = (v66 + v66) * *(v169 + v56);
    v56 += 4;
  }

  while (v56 != 32);
  if ((a17 + 1) > a18 || a17 + 1 < a17 || (a20 + 1) > a21 || a20 + 1 < a20)
  {
    goto LABEL_264;
  }

  if (*a20 >= 1)
  {
    v67 = 0;
    v68 = *a17 * *a17;
    v69 = -*a17;
    v70 = *a20 & ~(*a20 >> 31);
    v71 = *(&v180 + 3);
    v72 = *(&v178 + 3);
    v73 = -1;
    v74 = 0.0;
    v75 = pl_HQ;
    v76 = -1;
    while (1)
    {
      v77 = v174 + v67;
      v78 = v77 + 1;
      v79 = v77 < v174 || v78 > v176;
      if (v79 || v77 > v78)
      {
        goto LABEL_264;
      }

      *(v174 + v67) = 0;
      v81 = v171 + v67;
      if (v81 < v171 || v81 + 1 > v173 || v81 > v81 + 1)
      {
        goto LABEL_264;
      }

      v82 = 0;
      v83 = 0;
      *v81 = 0.0;
      v84 = 0.0;
      v85 = 0.0;
      do
      {
        v86 = &v75[v82 / 4];
        v87 = &v75[v82 / 4 + 1];
        if (&v75[v82 / 4] < pl_HQ || v87 > pl_par || v86 > v87)
        {
          goto LABEL_264;
        }

        v90 = *v86;
        if (*v86 == 0.0)
        {
          v75 = &v86[8 - v83];
          goto LABEL_131;
        }

        v91 = &v179 + v82;
        if ((&v179 + v82) < &v179)
        {
          goto LABEL_264;
        }

        if (v91 + 4 > &v181)
        {
          goto LABEL_264;
        }

        if (v91 > v91 + 4)
        {
          goto LABEL_264;
        }

        v85 = v85 + (*(&v179 + v82) * v90);
        *v77 = v85;
        v92 = &v177 + v82;
        if ((&v177 + v82) < &v177 || v92 + 4 > &v179 || v92 > v92 + 4)
        {
          goto LABEL_264;
        }

        v84 = v84 + ((v90 * *(&v177 + v82)) * v90);
        *v81 = v84;
        ++v83;
        v82 += 4;
      }

      while (v82 != 28);
      v93 = v75 + 7;
      v75 = v93 + 1;
      if (v93 + 1 > pl_par)
      {
        goto LABEL_264;
      }

      if (v93 > v75)
      {
        goto LABEL_264;
      }

      v94 = &pl_par[v67];
      if (v94 < pl_par || v94 + 1 > pi0 || v94 > v94 + 1)
      {
        goto LABEL_264;
      }

      v95 = *v93;
      v96 = v72 * *v93;
      if (*v94)
      {
        v84 = v84 + (v96 * v95);
        if (*v94 == result)
        {
          v85 = v85 + (v71 * v95);
        }

        else
        {
          v85 = v85 + (-v71 * v95);
        }

        *v77 = v85;
      }

      else
      {
        v85 = v85 + (v71 * v95);
        *v77 = v85;
        v84 = v84 + (v96 * v95);
      }

      *v81 = v84;
LABEL_131:
      v97 = (v85 * v69) + (v68 * v84);
      if (v97 < v74)
      {
        v74 = v97;
        v73 = v67;
        v76 = 0;
      }

      if (++v67 == v70)
      {
        goto LABEL_149;
      }
    }
  }

  v74 = 0.0;
  v76 = -1;
  v73 = -1;
LABEL_149:
  if (a19 != 1)
  {
    v101 = 1;
    while (1)
    {
      v102 = &a17[v101];
      v103 = v102 + 1;
      if (v102 < a17 || v103 > a18 || v102 > v103)
      {
        goto LABEL_264;
      }

      v106 = &a20[v101];
      if (v106 < a20 || (v106 + 1) > a21 || v106 > v106 + 1)
      {
        goto LABEL_264;
      }

      v107 = *v106;
      if (*v106 >= 1)
      {
        break;
      }

LABEL_182:
      if (++v101 == a19)
      {
        goto LABEL_183;
      }
    }

    v108 = 0;
    v109 = *v102 * *v102;
    v110 = -*v102;
    v111 = v107 & ~(v107 >> 31);
    v112 = v174;
    v113 = v171;
    while (1)
    {
      v114 = v113 + 1;
      v115 = v113 < v171 || v114 > v173;
      v116 = v115 || v113 > v114;
      v117 = v112 + 1;
      v118 = !v116 && v112 >= v174;
      v119 = !v118 || v117 > v176;
      if (v119 || v112 > v117)
      {
        goto LABEL_264;
      }

      v121 = *v113++;
      v122 = v121;
      v123 = *v112++;
      v124 = (v123 * v110) + (v109 * v122);
      if (v124 < v74)
      {
        v74 = v124;
        v73 = v108;
        v76 = v101;
      }

      ++v108;
      if (!--v111)
      {
        goto LABEL_182;
      }
    }
  }

LABEL_183:
  if ((v76 & 0x80000000) != 0)
  {
    v162 = 8;
    v163 = a5;
    v126 = a11;
    do
    {
      if (v163 < a5 || (v163 + 1) > a6 || v163 > v163 + 1)
      {
        goto LABEL_264;
      }

      *v163++ = 0;
      --v162;
    }

    while (v162);
    if ((a9 + 1) > a10)
    {
      goto LABEL_264;
    }

    if (a9 + 1 < a9)
    {
      goto LABEL_264;
    }

    *a9 = v73;
    v161 = a11 + 1;
    if ((a11 + 1) > a12)
    {
      goto LABEL_264;
    }
  }

  else
  {
    v125 = 0;
    v126 = a11;
    do
    {
      v127 = v165 + *(&v167 + v125);
      v128 = v127 + 1;
      if (v127 < v165 || v128 > v166 || v127 > v128)
      {
        goto LABEL_264;
      }

      *v127 = v125++;
    }

    while (v125 != 8);
    for (j = 0; j != 8; ++j)
    {
      v132 = &pl_HQ[8 * v73 + *(v165 + j * 4)];
      v133 = v132 + 1;
      v135 = v132 < pl_HQ || v133 > pl_par || v132 > v133;
      v136 = &a7[j];
      v137 = &a7[j + 1];
      if (v135 || v136 < a7 || v137 > a8 || v136 > v137)
      {
        goto LABEL_264;
      }

      *v136 = *v132 * *(v166 + j * 4);
    }

    v141 = &pl_par[v73];
    if (v141 < pl_par || v141 + 1 > pi0 || v141 > v141 + 1)
    {
      goto LABEL_264;
    }

    v142 = *v141;
    if (v142 && result != v142)
    {
      v143 = &a7[v164];
      if (v143 < a7 || (v143 + 1) > a8 || v143 > v143 + 1)
      {
        goto LABEL_264;
      }

      *v143 = -*v143;
    }

    v144 = &a17[v76];
    if (v144 < a17 || (v144 + 1) > a18 || v144 > v144 + 1)
    {
      goto LABEL_264;
    }

    v145 = 0;
    v146 = *v144;
    do
    {
      v147 = &a7[v145];
      v148 = &a7[v145 + 1];
      v150 = &a7[v145] < a7 || v148 > a8 || v147 > v148;
      v151 = (a13 + v145 * 4);
      v152 = a13 + v145 * 4 + 4;
      v155 = v150 || v151 < a13 || v152 > a14 || v151 > v152;
      v156 = &a5[v145];
      v157 = &a5[v145 + 1];
      if (v155 || v156 < a5 || v157 > a6 || v156 > v157)
      {
        goto LABEL_264;
      }

      *v156 = (v146 * *v147) * *v151;
      ++v145;
    }

    while (v145 != 8);
    if ((a9 + 1) > a10 || a9 + 1 < a9 || (*a9 = v73, v161 = a11 + 1, (a11 + 1) > a12))
    {
LABEL_264:
      __break(0x5519u);
    }
  }

  if (v161 < v126)
  {
    goto LABEL_264;
  }

  *v126 = v76;
  return result;
}

uint64_t encode_comb(float *a1, unint64_t a2, int a3)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = &pl_par[a3];
  v4 = v3 + 1;
  if (v3 < pl_par || v4 > pi0 || v3 > v4)
  {
    goto LABEL_58;
  }

  v7 = 0;
  v8 = 0;
  v9 = a3;
  v10 = *v3 == 0;
  v11 = 7;
  if (v10)
  {
    v11 = 8;
  }

  v12 = a1;
  do
  {
    if (v12 < a1 || (v12 + 1) > a2 || v12 > v12 + 1)
    {
      goto LABEL_58;
    }

    v13 = *v12++;
    v14 = 1 << v8;
    v15 = v13 <= 0.0;
    if (v13 >= 0.0)
    {
      v14 = 0;
    }

    else
    {
      ++v8;
    }

    v7 += v14;
    if (!v15)
    {
      ++v8;
    }

    --v11;
  }

  while (v11);
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50[0] = v16;
  v50[1] = v16;
  v17 = &no_vals[a3];
  *&v16 = -1;
  *(&v16 + 1) = -1;
  v49[0] = v16;
  v49[1] = v16;
  if (v17 < no_vals || v17 + 1 > vals || v17 > v17 + 1)
  {
    goto LABEL_58;
  }

  v18 = *v17;
  if (*v17 != 1)
  {
    v20 = v49;
    v21 = 8;
    v22 = a1;
    do
    {
      if (v22 < a1 || (v22 + 1) > a2 || v22 > v22 + 1)
      {
        goto LABEL_58;
      }

      v23 = *v22++;
      *v20++ = fabsf(v23);
      --v21;
    }

    while (v21);
    v24 = &vals[4 * a3];
    v25 = v24 + 1;
    v48 = (v24 + 4);
    if (v24 + 1 <= v24 + 4 && v24 <= v25)
    {
      v26 = *v24;
      pos = find_pos(v49, v50, 8, v50, v51, *v24);
      if (pos <= 8)
      {
        v19 = c2idx(8, v50, pos);
        if (v18 == 2)
        {
          goto LABEL_54;
        }

        take_out_val(v49, v50, v49, v50, 8, v26);
        v28 = (&no_vals_ind + 16 * v9);
        v29 = v28 + 1;
        v46 = (v28 + 4);
        if (v28 + 1 <= v28 + 4 && v28 <= v29)
        {
          v31 = v28 + 2;
          v30 = *v28;
          if ((v28 + 2) <= v46 && v29 <= v31)
          {
            v32 = 8 - v30;
            v33 = &C_VQ + 36 * (8 - v30);
            v45 = *v29;
            v34 = &v33[4 * v45];
            if (v34 >= v33 && v34 + 4 <= v33 + 36 && v34 <= v34 + 4)
            {
              v47 = v24 + 2;
              if ((v24 + 2) <= v48 && v25 <= v47)
              {
                v35 = *v34;
                v36 = *v25;
                v37 = find_pos(v49, v50, v32, v50, v51, *v25);
                if (v37 <= 8)
                {
                  v19 = c2idx(v32, v50, v37) + v35 * v19;
                  if (v18 == 3)
                  {
                    goto LABEL_54;
                  }

                  take_out_val(v49, v50, v49, v50, v32, v36);
                  if ((v28 + 3) <= v46 && v31 <= v28 + 3)
                  {
                    v38 = (v32 - v45);
                    v39 = &C_VQ + 36 * v38;
                    v40 = &v39[4 * *v31];
                    if (v40 >= v39 && v40 + 4 <= v39 + 36 && v40 <= v40 + 4 && (v24 + 3) <= v48 && v47 <= v24 + 3)
                    {
                      v41 = *v40;
                      v42 = find_pos(v49, v50, v38, v50, v51, *v47);
                      if (v42 <= 8)
                      {
                        v19 = c2idx(v38, v50, v42) + v41 * v19;
                        goto LABEL_54;
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

LABEL_58:
    __break(0x5519u);
  }

  v19 = 0;
LABEL_54:
  v43 = &pi0[v9];
  if (v43 < pi0 || v43 >= v43 + 1 || v43 + 1 > no_vals)
  {
    goto LABEL_58;
  }

  return (v19 + *v43 * v7);
}

float *find_pos(float *result, unint64_t a2, int a3, unint64_t a4, unint64_t a5, float a6)
{
  if (a3 < 1)
  {
    return 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = a3;
    for (i = result; i >= result && (i + 1) <= a2 && i <= i + 1; ++i)
    {
      if (COERCE_INT(a6 * 10.0) == COERCE_INT(*i * 10.0))
      {
        v10 = (a4 + 4 * v7);
        if (v10 < a4 || (v10 + 1) > a5 || v10 > v10 + 1)
        {
          break;
        }

        v7 = (v7 + 1);
        *v10 = v6;
      }

      ++v6;
      if (!--v8)
      {
        return v7;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t c2idx(uint64_t result, int *a2, unsigned int a3)
{
  if (a3 == 1)
  {
    v3 = 0;
LABEL_25:
    if (a2 + 1 >= a2)
    {
      return (*a2 + v3);
    }
  }

  else
  {
    v3 = 0;
    v4 = a3;
    v5 = &a2[a3];
    v6 = &C_VQ + 4 * a3;
    v7 = a2;
    while (1)
    {
      a2 = v7 + 1;
      v8 = v7 + 1 < v7 || a2 > v5;
      if (v8)
      {
        break;
      }

      v9 = *v7;
      if (*v7 >= 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = &C_VQ + 36 * result;
        v13 = &v6[36 * result];
        while (1)
        {
          v14 = &v13[v10 - 36];
          v15 = &v13[v10 - 40];
          v16 = v15 < &v12[v10 - 36] || v14 > &v12[v10];
          if (v16 || v15 > v14)
          {
            goto LABEL_27;
          }

          v11 += *v15;
          v10 -= 36;
          if (!(36 * (v9 & ~(v9 >> 31)) + v10))
          {
            goto LABEL_20;
          }
        }
      }

      v11 = 0;
LABEL_20:
      if (v4 > 1)
      {
        v18 = 1;
        do
        {
          v7[v18++] += ~v9;
        }

        while (v4 != v18);
      }

      v8 = v4-- < 1;
      if (v8)
      {
        break;
      }

      result = (result + ~v9);
      v3 += v11;
      v6 -= 4;
      ++v7;
      if (v4 == 1)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_27:
  __break(0x5519u);
  return result;
}

_DWORD *take_out_val(_DWORD *result, unint64_t a2, unint64_t a3, unint64_t a4, int a5, float a6)
{
  if (a5 >= 1)
  {
    v6 = 0;
    v7 = a5;
    for (i = result; i >= result && (i + 1) <= a2 && i <= i + 1; ++i)
    {
      if (COERCE_INT(*i * 10.0) != COERCE_INT(a6 * 10.0))
      {
        v9 = (a3 + 4 * v6);
        if (v9 < a3 || (v9 + 1) > a4 || v9 > v9 + 1)
        {
          break;
        }

        ++v6;
        *v9 = *i;
      }

      if (!--v7)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

unint64_t permute(unint64_t result, unint64_t a2, __int16 *a3)
{
  v3 = (result + 4 * *a3);
  v4 = v3 + 1;
  if (v3 < result || v4 > a2 || v3 >= v4)
  {
    goto LABEL_28;
  }

  v7 = (result + 4 * a3[1]);
  v8 = v7 + 1;
  v9 = v7 < result || v8 > a2;
  if (v9 || v7 >= v8)
  {
    goto LABEL_28;
  }

  v11 = *v3;
  *v3 = *v7;
  *v7 = v11;
  v12 = a3[2];
  if (v12 < 0)
  {
    return result;
  }

  v13 = (result + 4 * v12);
  v14 = v13 + 1;
  v15 = v13 < result || v14 > a2;
  v16 = v15 || v13 >= v14;
  if (v16 || (v17 = (result + 4 * a3[3]), v17 < result) || (v17 + 1) > a2 || v17 > v17 + 1)
  {
LABEL_28:
    __break(0x5519u);
    return result;
  }

  v18 = *v13;
  *v13 = *v17;
  *v17 = v18;
  return result;
}

unint64_t *q_data(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, unint64_t *a7, unint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (*result >= result[2] && *a2 >= a2[2] && *a3 >= a3[2] && *a4 >= a4[2])
  {
    v15 = *a5;
    if (v15 >= *(a5 + 16) && *a6 >= *(a6 + 16) && *a7 >= a7[2] && *a8 >= a8[2] && *a9 >= *(a9 + 16))
    {
      v18 = *a10;
      v19 = *a10 + 2;
      if (v19 <= *(a10 + 8) && v18 <= v19 && v18 >= *(a10 + 16) && *a11 >= *(a11 + 16))
      {
        v20 = result;
        quantize_data(*result, result[1], *a2, a2[1], *a3, a3[1], *a4, a4[1], v15, *(a5 + 8), *a6, *(a6 + 8), *a7, a7[1], *a8, a8[1], *a9, *(a9 + 8), *v18, *a11, *(a11 + 8));
        result = (*v20 + 32);
        if (result >= v20[2])
        {
          v22 = *a2 + 32;
          if (v22 >= a2[2])
          {
            v23 = (*a3 + 32);
            if (v23 >= a3[2])
            {
              v24 = (*a4 + 32);
              if (v24 >= a4[2])
              {
                v25 = (*a5 + 4);
                if (v25 >= *(a5 + 16))
                {
                  v26 = (*a6 + 4);
                  if (v26 >= *(a6 + 16))
                  {
                    v27 = *a7 + 32;
                    if (v27 >= a7[2])
                    {
                      v28 = *a8 + 32;
                      if (v28 >= a8[2])
                      {
                        v29 = (*a9 + 12);
                        if (v29 >= *(a9 + 16))
                        {
                          v30 = *a10 + 4;
                          if (v30 <= *(a10 + 8))
                          {
                            v31 = (*a10 + 2);
                            if (v31 <= v30 && v31 >= *(a10 + 16) && (*a11 + 12) >= *(a11 + 16))
                            {
                              return quantize_data(result, v20[1], v22, a2[1], v23, a3[1], v24, a4[1], v25, *(a5 + 8), v26, *(a6 + 8), v27, a7[1], v28, a8[1], v29, *(a9 + 8), *v31, (*a11 + 12), *(a11 + 8));
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

  __break(0x5519u);
  return result;
}

float vlpc_1st_cod(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, _OWORD *a5, unint64_t a6, float a7)
{
  v62[1] = *MEMORY[0x1E69E9840];
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v60 = v7;
  v61 = v7;
  v58 = v7;
  v59 = v7;
  if (a1 + 4 > a2 || a1 + 4 < a1)
  {
    goto LABEL_71;
  }

  v8 = 0;
  v9 = a7 / 12800.0;
  v10 = 1.0 / (a7 / 12800.0);
  v11 = -1;
  v12 = (a7 / 12800.0) / *a1;
  do
  {
    v13 = (a1 + v8 + 4);
    v14 = (a1 + v8 + 8);
    if (v13 < a1 || v14 > a2 || v13 > v14)
    {
      goto LABEL_71;
    }

    v17 = &v58 + v8;
    if ((&v58 + v8) < &v58)
    {
      goto LABEL_71;
    }

    if (v17 + 4 > v62)
    {
      goto LABEL_71;
    }

    if (v17 > v17 + 4)
    {
      goto LABEL_71;
    }

    v18 = *v13;
    v19 = v9 / (*v13 - *(a1 + v8));
    *(&v58 + v8) = v12 + v19;
    v20 = a1 + v8 + 12;
    if (v20 > a2)
    {
      goto LABEL_71;
    }

    if (v14 > v20)
    {
      goto LABEL_71;
    }

    v21 = (&v58 + v8 + 4);
    if (v21 < &v58)
    {
      goto LABEL_71;
    }

    v22 = (&v58 + v8 + 8);
    if (v22 > v62 || v21 > v22)
    {
      goto LABEL_71;
    }

    v12 = v9 / (*v14 - v18);
    *v21 = v19 + v12;
    v11 += 2;
    v8 += 8;
  }

  while (v11 < 0xC);
  v23 = a1 + 60;
  if (a1 + 60 > a2 || v23 < a1 || a1 + 64 > a2 || v23 > a1 + 64 || (*&v24 = -1, *(&v24 + 1) = -1, v57[2] = v24, v57[3] = v24, v57[0] = v24, v57[1] = v24, LODWORD(v24) = *(a1 + 60), v25 = v9 / (*&v24 - *(a1 + 56)), *(&v61 + 2) = v12 + v25, *(&v61 + 3) = v25 + (v9 / ((a7 * 0.5) - *&v24)), a6 < a5) || a6 - a5 <= 0x3F || (v26 = v58, v27 = v59, v28 = v61, a5[2] = v60, a5[3] = v28, *a5 = v26, a5[1] = v27, a5 + 4 < a5))
  {
LABEL_71:
    __break(0x5519u);
  }

  for (i = 0; i != 64; i += 4)
  {
    v30 = (a1 + i);
    v31 = a1 + i + 4;
    v33 = a1 + i < a1 || v31 > a2 || v30 > v31;
    v34 = (a3 + i);
    v35 = a3 + i + 4;
    if (v33 || v34 < a3 || v35 > a4 || v34 > v35)
    {
      goto LABEL_71;
    }

    *(v57 + i) = v10 * (*v30 - *v34);
  }

  v39 = 0;
  v40 = 0;
  v41 = 1.0e30;
  v42 = dico_lsf_abs_8b;
  do
  {
    v43 = 0;
    v44 = 0.0;
    do
    {
      if (&v42[v43 + 4] > rat)
      {
        goto LABEL_71;
      }

      v44 = v44 + ((*(&v58 + v43) * (*(v57 + v43) - *&v42[v43])) * (*(v57 + v43) - *&v42[v43]));
      v43 += 4;
    }

    while (v43 != 64);
    if (v44 < v41)
    {
      v41 = v44;
      v40 = v39;
    }

    ++v39;
    v42 += 64;
  }

  while (v39 != 256);
  v45 = 0;
  v46 = &dico_lsf_abs_8b[64 * v40];
  do
  {
    v47 = &v46[v45];
    v48 = &v46[v45 + 4];
    v50 = &v46[v45] < dico_lsf_abs_8b || v48 > rat || v47 > v48;
    v51 = (a3 + v45);
    v52 = a3 + v45 + 4;
    if (v50 || v51 < a3 || v52 > a4 || v51 > v52)
    {
      goto LABEL_71;
    }

    result = *v51 + (v9 * *v47);
    *v51 = result;
    v45 += 4;
  }

  while (v45 != 64);
  return result;
}

uint64_t vlpc_2st_cod(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int *a5, unint64_t a6, int a7, float a8)
{
  v107[0] = *MEMORY[0x1E69E9840];
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v103[2] = v9;
  v103[3] = v9;
  v103[0] = v9;
  v103[1] = v9;
  v102[2] = v9;
  v102[3] = v9;
  v102[0] = v9;
  v102[1] = v9;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v101[2] = v9;
  v101[3] = v9;
  v101[0] = v9;
  v101[1] = v9;
  if (a2 < a1 || (a2 - a1) <= 60)
  {
    goto LABEL_127;
  }

  v17 = 1.0 / (a8 / 12800.0);
  lsf_weight_2st(a1, v103, v104, 1, a8);
  for (i = 0; i != 64; i += 4)
  {
    v19 = (a1 + i);
    v20 = a1 + i + 4;
    v21 = a1 + i < a1 || v20 > a2;
    v22 = v21 || v19 > v20;
    v23 = (a3 + i);
    v24 = a3 + i + 4;
    if (v22 || v23 < a3 || v24 > a4 || v23 > v24)
    {
      goto LABEL_127;
    }

    *(v102 + i) = v17 * (*v19 - *v23);
  }

  for (j = 0; j != 4; ++j)
  {
    v102[j] = vdivq_f32(v102[j], v103[j]);
  }

  v29 = 0;
  v30 = 0.0;
  do
  {
    v31 = vmulq_f32(v102[v29], v102[v29]);
    v30 = (((v30 + v31.f32[0]) + v31.f32[1]) + v31.f32[2]) + v31.f32[3];
    ++v29;
  }

  while (v29 != 4);
  if (v30 < 8.0)
  {
    v32 = a5 + 1;
    if ((a5 + 1) <= a6 && v32 >= a5)
    {
      *a5 = 0;
      v33 = a5 + 2;
      if (v33 <= a6 && v32 <= v33)
      {
        *v32 = 0;
        return 10;
      }
    }

LABEL_127:
    __break(0x5519u);
  }

  if (a4 < a3 || (a4 - a3) < 61)
  {
    goto LABEL_127;
  }

  lsf_weight_2st(a3, v103, v104, a7, a8);
  for (k = 0; k != 64; k += 4)
  {
    v36 = (a1 + k);
    v37 = a1 + k + 4;
    v39 = a1 + k < a1 || v37 > a2 || v36 > v37;
    v40 = (a3 + k);
    v41 = a3 + k + 4;
    if (v39 || v40 < a3 || v41 > a4 || v40 > v41)
    {
      goto LABEL_127;
    }

    *(v102 + k) = v17 * (*v36 - *v40);
  }

  v96 = a3;
  for (m = 0; m != 4; ++m)
  {
    v102[m] = vdivq_f32(v102[m], v103[m]);
  }

  v46 = 0;
  v47 = 0;
  v100 = -1431655766;
  *&v48 = 0xAAAAAAAAAAAAAAAALL;
  *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v106[0] = v48;
  v106[1] = v48;
  v105[0] = v48;
  v105[1] = v48;
  *&v48 = -1;
  *(&v48 + 1) = -1;
  v99 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 2;
  v104[0] = v48;
  v104[1] = v48;
  do
  {
    v98 = v49;
    v50 = 0;
    v97 = v46;
    v51 = &v102[2 * v47];
    do
    {
      v52 = (v51 + v50);
      if ((v51 + v50) < v102)
      {
        goto LABEL_127;
      }

      if (v52 + 1 > v103 || v52 > v52 + 1)
      {
        goto LABEL_127;
      }

      *(v104 + v50) = *v52;
      v50 += 4;
    }

    while (v50 != 32);
    re8_PPV(v104, v105, v106, v107);
    re8_cod(v106, v107, &v100, &v99, v105, v106);
    v54 = 0;
    v55 = &v101[2 * v47];
    do
    {
      v56 = (v55 + v54);
      if ((v55 + v54) < v101)
      {
        goto LABEL_127;
      }

      if (v56 + 1 > v102 || v56 > v56 + 1)
      {
        goto LABEL_127;
      }

      *v56 = *(v106 + v54);
      v54 += 4;
    }

    while (v54 != 32);
    v58 = &a5[v47];
    if (v58 < a5 || (v58 + 1) > a6 || v58 > v58 + 1)
    {
      goto LABEL_127;
    }

    v59 = v100;
    *v58 = v100;
    v60 = (v59 - 3) & 0xFFFFFFFE;
    if (v59 < 5)
    {
      v60 = 0;
    }

    v61 = v59 - v60;
    if ((v59 - v60) < 1)
    {
      v49 = v98;
    }

    else
    {
      v62 = v99;
      v63 = v98;
      v64 = v98;
      v65 = v61 + 1;
      do
      {
        v66 = &a5[v64 + 1];
        if (&a5[v64] < a5 || v66 > a6 || &a5[v64] > v66)
        {
          goto LABEL_127;
        }

        a5[v63] = v62 & 0xF;
        v49 = v63 + 1;
        v62 >>= 4;
        ++v64;
        --v65;
        ++v63;
      }

      while (v65 > 1);
      v99 = v62;
    }

    if (v59 >= 5)
    {
      v69 = (v59 - 3) >> 1;
      v70 = v49;
      do
      {
        v71 = 0;
        v72 = 0;
        do
        {
          v73 = 2 * v72;
          v74 = *(v105 + v71);
          v72 = (2 * v72) | v74 & 1;
          *(v105 + v71) = v74 >> 1;
          v71 += 4;
        }

        while (v71 != 32);
        v75 = &a5[v70];
        if (v75 < a5)
        {
          goto LABEL_127;
        }

        v76 = v75 + 1;
        if ((v75 + 1) > a6 || v75 > v76)
        {
          goto LABEL_127;
        }

        *v75 = v72 & 0xF;
        v77 = v75 + 2;
        if (v77 > a6 || v76 > v77)
        {
          goto LABEL_127;
        }

        v70 += 2;
        *v76 = v73 >> 4;
        v21 = v69-- <= 1;
      }

      while (!v21);
      v49 = v70;
    }

    v46 = 1;
    v47 = 1;
  }

  while ((v97 & 1) == 0);
  for (n = 0; n != 64; n += 4)
  {
    v80 = (a3 + n);
    v81 = a3 + n + 4;
    if (a3 + n < a3 || v81 > a4 || v80 > v81)
    {
      goto LABEL_127;
    }

    *v80 = *v80 + ((a8 / 12800.0) * (*(v103 + n) * *(v101 + n)));
  }

  v84 = 0;
  LODWORD(v34) = 0;
  v85 = 1;
  do
  {
    v86 = v85;
    v87 = &a5[v84];
    v88 = v87 + 1;
    if (v87 < a5 || v88 > a6 || v87 > v88)
    {
      goto LABEL_127;
    }

    v85 = 0;
    v91 = *v87;
    v92 = v34 + 4 * v91 + 5;
    if (v91)
    {
      v92 = v34 + 4 * v91 + 2;
    }

    v93 = v34 + 4 * v91 + 2 + v91;
    if (v91 >= 5)
    {
      v92 = v93 - 4;
    }

    v94 = v93 - 3;
    if (v91 >= 7)
    {
      v34 = v94;
    }

    else
    {
      v34 = v92;
    }

    v84 = 1;
  }

  while ((v86 & 1) != 0);
  v_sort(v96, 0, 15, 16);
  reorder_lsf(v96, 50.0, a8);
  return v34;
}

float lsf_weight_2st(unint64_t a1, float *a2, unint64_t a3, int a4, float a5)
{
  v24 = *MEMORY[0x1E69E9840];
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *&v22[12] = v5;
  *v22 = v5;
  v21 = v5;
  v20 = v5;
  v6 = a5 * 0.5;
  v7 = (a1 + 4);
  v19 = *a1;
  for (i = 1; i != 16; ++i)
  {
    if ((v7 - 1) < a1 || v7 - 1 > v7)
    {
LABEL_26:
      __break(0x5519u);
    }

    *(&v19 + i) = *v7 - *(v7 - 1);
    ++v7;
  }

  v23 = v6 - *(a1 + 60);
  v10 = (v6 * 0.0625);
  v11 = 4;
  v12 = a2;
  do
  {
    v15 = (v12 + 1) <= a3 && v12 <= v12 + 1 && v12 >= a2;
    if (a4 == 1)
    {
      v16 = 65.0;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    else if (a4)
    {
      v16 = 63.0;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = 60.0;
    }

    v17 = v16 / (v10 / sqrt((*(&v19 + v11 - 4) * *(&v19 + v11))));
    *v12++ = v17;
    v11 += 4;
  }

  while (v11 != 68);
  return *&v10;
}

void tcx_ltp_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, unint64_t a10, _DWORD *a11, __int16 *a12, unint64_t a13, __int16 *a14, unint64_t a15, float *a16, unsigned int *a17, _DWORD *a18, float *a19, float *a20, int a21, int a22, int a23, int a24, int a25, int a26, uint64_t a27, int a28, _OWORD *a29)
{
  v29 = MEMORY[0x1EEE9AC00](a1);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v261 = v39;
  v262 = v40;
  v41 = v29;
  v43 = a18;
  v42 = a19;
  v278[1] = *MEMORY[0x1E69E9840];
  v273 = 0;
  memset(v272, 0, sizeof(v272));
  if (!a21)
  {
    *a17 = v30;
    *a18 = 0;
    *a19 = 0.0;
  }

  v265 = v30;
  memset(__b, 255, sizeof(__b));
  memset(v275, 255, sizeof(v275));
  v44 = v265;
  *&v45 = -1;
  *(&v45 + 1) = -1;
  v269[0] = v45;
  v269[1] = v45;
  v269[2] = v45;
  v269[3] = v45;
  v270 = -1;
  v264 = a9 + 1;
  if ((a9 + 1) > a10 || v264 < a9)
  {
    goto LABEL_423;
  }

  v46 = a16;
  *a9 = 0;
  v263 = a28 | v41;
  if (!(a28 | v41))
  {
    v68 = 0.0;
    v70 = a20;
    v69 = a9;
    v71 = a14;
    v72 = a11;
    goto LABEL_205;
  }

  v259 = v38;
  v260 = v36;
  v48 = *v34;
  v47 = *(v34 + 8);
  v49 = *(v34 + 16);
  bzero(v277, 0x400uLL);
  v50 = v265;
  if (a26 == 6)
  {
    v51 = 8;
  }

  else
  {
    v51 = 16;
  }

  v52 = v32 - (v51 >> 1);
  v53 = v32 + (v51 >> 1);
  if ((v32 - (v51 >> 1)) < a22)
  {
    LOWORD(v52) = a22;
    LOWORD(v53) = v51 + a22;
  }

  v54 = v53 - 1;
  v55 = v54;
  v56 = a25 - v51;
  if (v54 > a25)
  {
    v54 = a25;
  }

  if (v55 > a25)
  {
    v57 = v56 + 1;
  }

  else
  {
    v57 = v52;
  }

  v58 = (v57 - 4);
  v59 = 0.0;
  if (v58 <= (v54 + 4))
  {
    v258 = v54;
    v60 = (v54 + 4);
    v61 = v277;
    do
    {
      v62 = &v48[-v58];
      v63 = v62 > v47 || v49 > v62;
      if (v63 || v48 > v47 || (v50 & 0x80000000) != 0)
      {
        goto LABEL_423;
      }

      v64 = (v47 - v62) >> 2 < v265 || v49 > v48;
      if (v64 || (v47 - v48) >> 2 < v265)
      {
        goto LABEL_423;
      }

      LODWORD(__C) = -1;
      vDSP_dotpr(v48, 1, v62, 1, &__C, v265);
      v50 = v265;
      if (v61 < v277 || v61 + 1 > v278 || v61 > v61 + 1)
      {
        goto LABEL_423;
      }

      *v61 = __C;
      v58 = (v58 + 1);
      ++v61;
    }

    while (v58 <= v60);
    v59 = *&v277[16];
    v54 = v258;
  }

  v66 = (v57 + 1);
  if (v66 <= v54)
  {
    v73 = &v277[20];
    v67 = v57;
    do
    {
      v74 = v73 + 1;
      if (v73 < v277 || v74 > v278 || v73 > v74)
      {
        goto LABEL_423;
      }

      if (*v73 > v59)
      {
        v59 = *v73;
        v67 = v66;
      }

      v66 = (v66 + 1);
      ++v73;
    }

    while (v66 <= v54);
  }

  else
  {
    v67 = v57;
  }

  if (v48 > v47)
  {
    goto LABEL_423;
  }

  if (v49 > v48)
  {
    goto LABEL_423;
  }

  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_423;
  }

  v77 = v50;
  if ((v47 - v48) >> 2 < v50)
  {
    goto LABEL_423;
  }

  LODWORD(__C) = -1;
  vDSP_dotpr(v48, 1, v48, 1, &__C, v50);
  v78 = &v48[-v67];
  v79 = v78 > v47 || v49 > v78;
  if (v79 || v77 > (v47 - v78) >> 2)
  {
    goto LABEL_423;
  }

  v80 = *&__C;
  LODWORD(__C) = -1;
  vDSP_dotpr(v78, 1, v78, 1, &__C, v77);
  v81 = *&__C;
  if (v67 >= a23)
  {
    v89 = v265;
    if ((a12 + 2) > a13)
    {
      goto LABEL_423;
    }

    if (a12 + 2 < a12)
    {
      goto LABEL_423;
    }

    *a12 = v67;
    if ((a14 + 2) > a15)
    {
      goto LABEL_423;
    }

    if (a14 + 2 < a14)
    {
      goto LABEL_423;
    }

    *a14 = 0;
    if ((a9 + 2) > a10 || a9 + 2 < v264)
    {
      goto LABEL_423;
    }

    v90 = (a24 - a22) * a26 - a23 + (a26 >> 1) * (a23 - a24) + v67;
  }

  else
  {
    v82 = &v277[-4 * v57 + 16];
    if (v67 < a24)
    {
      v83 = 1;
    }

    else
    {
      v83 = 2;
    }

    v84 = &v82[4 * v67];
    if (v67 == v57)
    {
      __C = &v82[4 * v67];
      v267 = v278;
      v268 = v277;
      v85 = a26;
      interpolate_corr(&__C, 0, a26);
      v87 = v86;
      v88 = 0;
    }

    else
    {
      v57 = v67 - 1;
      v91 = &v82[4 * (v67 - 1)];
      __C = v91;
      v267 = v278;
      v268 = v277;
      interpolate_corr(&__C, v83, a26);
      v87 = v92;
      v93 = 2 * v83;
      v88 = v83;
      if (((2 * v83) & 0xFFFE) >= a26)
      {
        v85 = a26;
      }

      else
      {
        do
        {
          __C = v91;
          v267 = v278;
          v268 = v277;
          interpolate_corr(&__C, v93, a26);
          if (v94 > v87)
          {
            v87 = v94;
            v88 = v93;
          }

          v93 += v83;
        }

        while (a26 > v93);
        v85 = a26;
      }
    }

    if (v85 >= 1)
    {
      for (i = 0; i < v85; i += v83)
      {
        __C = v84;
        v267 = v278;
        v268 = v277;
        interpolate_corr(&__C, i, v85);
        if (v96 > v87)
        {
          v87 = v96;
          v88 = i;
          v57 = v67;
        }
      }
    }

    v89 = v265;
    if ((a12 + 2) > a13)
    {
      goto LABEL_423;
    }

    if (a12 + 2 < a12)
    {
      goto LABEL_423;
    }

    *a12 = v57;
    if ((a14 + 2) > a15 || a14 + 2 < a14)
    {
      goto LABEL_423;
    }

    *a14 = v88;
    v97 = (a9 + 2) <= a10 && a9 + 2 >= v264;
    v98 = v97;
    if (v57 >= a24)
    {
      if (!v98)
      {
        goto LABEL_423;
      }

      v90 = (a24 - a22) * a26 + (v88 >> 1) + (v57 - a24) * (a26 >> 1);
    }

    else
    {
      if (!v98)
      {
        goto LABEL_423;
      }

      v90 = v88 + (v57 - a22) * a26;
    }
  }

  *v264 = v90;
  v99 = v89;
  v100 = vcvtps_s32_f32(((*a12 / v89) * 8.0) + 0.5);
  if (v100 < 9)
  {
    v101 = v100 + 1;
  }

  else
  {
    v101 = 9;
  }

  GetTCXAvgTemporalFlatnessMeasure(*a27, *(a27 + 8), v101);
  v103 = *a12;
  v104 = vcvtps_s32_f32(((v103 * 8.0) / v99) + 0.5);
  if (v104 < 9)
  {
    v105 = v104 + 1;
  }

  else
  {
    v105 = 9;
  }

  v106 = *a27;
  v107 = (v105 + 8);
  v108 = *(*a27 + 300) - *(a27 + 8) - v105;
  v36 = v260;
  v43 = a18;
  v72 = a11;
  v70 = a20;
  if (*(a27 + 28) | (v262 == 2))
  {
    v109 = v106 + 8;
    v110 = v106 + 104;
    v111 = (v106 + 8 + 4 * v108);
    v112 = v111 + 1;
    v114 = v111 < v106 + 8 || v112 > v110 || v111 > v112;
    v42 = a19;
    v38 = v259;
    v71 = a14;
    v46 = a16;
    v44 = v265;
    v69 = a9;
    if (v114)
    {
      goto LABEL_423;
    }

    v115 = *v111;
    if (v107 < 2)
    {
      v116 = 0;
    }

    else
    {
      v116 = 0;
      for (j = 1; j != v107; ++j)
      {
        if (v112 < v109 || (v112 + 1) > v110 || v112 > v112 + 1)
        {
          goto LABEL_423;
        }

        v118 = *v112++;
        v119 = v118;
        if (v115 < v118)
        {
          v116 = j;
          v115 = v119;
        }
      }
    }

    v120 = v115;
    if (v116 + 1 < v107)
    {
      v121 = v105 - v116 + 7;
      v122 = (4 * v108 + 4 * v116 + v106 + 12);
      v120 = v115;
      do
      {
        if (v122 < v109 || (v122 + 1) > v110 || v122 > v122 + 1)
        {
          goto LABEL_423;
        }

        v123 = *v122++;
        v124 = v123;
        if (v120 > v123)
        {
          v120 = v124;
        }

        --v121;
      }

      while (v121);
    }

    if (v120 > (v115 * 0.375))
    {
      LODWORD(v107) = v116 - 3;
    }
  }

  else
  {
    v42 = a19;
    v38 = v259;
    v71 = a14;
    v46 = a16;
    v44 = v265;
    v69 = a9;
  }

  if (v107 < 1)
  {
    v128 = 0.0;
  }

  else
  {
    v125 = v106 + 300;
    v126 = v106 + 204;
    v127 = (v126 + 4 * v108);
    v107 = v107;
    v128 = 0.0;
    do
    {
      if ((v127 + 1) > v125 || v127 > v127 + 1 || v127 < v126)
      {
        goto LABEL_423;
      }

      v131 = *v127++;
      v132 = v131;
      if (v128 <= v131)
      {
        v128 = v132;
      }

      --v107;
    }

    while (v107);
  }

  v68 = v59 / sqrtf((v80 * v81) + 0.1);
  if (v261 || v262 != 1)
  {
    v134 = v261 == 1;
    if (v261 == 1 && v262 == 2)
    {
      v135 = *a20;
      if (v68 > *a20)
      {
        v135 = v68;
      }

      if (v135 > 0.5 && v128 < 3.5)
      {
        goto LABEL_174;
      }

      v134 = 1;
    }

    if (!v134 || v68 <= 0.44 || ((1.2 - v68) * v99) >= v103)
    {
      v137 = !v134;
      if (v262 != 1)
      {
        v137 = 1;
      }

      if ((v137 & 1) != 0 || v68 <= 0.44 || v102 >= 6.0 && (v102 >= 7.0 || v128 >= 22.0))
      {
LABEL_175:
        if (!*v69)
        {
          goto LABEL_205;
        }

        goto LABEL_176;
      }
    }
  }

  else if ((v68 * *a20) <= 0.25 || v102 >= 3.5)
  {
    goto LABEL_175;
  }

LABEL_174:
  *v69 = 1;
LABEL_176:
  if ((v71 + 2) > a15)
  {
    goto LABEL_423;
  }

  if (v71 + 2 < v71)
  {
    goto LABEL_423;
  }

  if (v44 > 1200)
  {
    goto LABEL_423;
  }

  v138 = *a12;
  v139 = *v71;
  *v277 = *v38;
  *&v277[16] = v38[2];
  predict_signal(v277, __b, v138, v139, a26, v265);
  v140 = *v38;
  if (*v38 < v38[2])
  {
    goto LABEL_423;
  }

  v141 = v38[1];
  v142 = (v69 + 2);
  if (v69 != -8 && (v142 < v69 || (v69 + 3) > a10 || v142 > (v69 + 3)))
  {
    goto LABEL_423;
  }

  if (v140 > v141 || v265 > (v141 - v140) >> 2)
  {
    goto LABEL_423;
  }

  get_gain(v140, __b, v265, 0);
  if (v143 >= 0.875)
  {
    v146 = 0.625;
    v145 = 3;
    v46 = a16;
    v44 = v265;
  }

  else
  {
    v46 = a16;
    v44 = v265;
    if (v143 >= 0.625)
    {
      v146 = 0.46875;
      v145 = 2;
    }

    else if (v143 >= 0.375)
    {
      v146 = 0.3125;
      v145 = 1;
    }

    else
    {
      v144 = v143 < 0.125;
      if (v143 >= 0.125)
      {
        v145 = 0;
      }

      else
      {
        v145 = -1;
      }

      v146 = 0.15625;
      if (v144)
      {
        v146 = 0.0;
      }
    }
  }

  v69[2] = v145;
  *v46 = v146;
  if (v142 < v69 || (v69 + 3) > a10 || v142 > (v69 + 3))
  {
    goto LABEL_423;
  }

  if (v145 == -1)
  {
    *v69 = 0;
  }

  else
  {
    *a11 = 12;
    if (*v69)
    {
      goto LABEL_218;
    }
  }

LABEL_205:
  if ((a12 + 2) > a13)
  {
    goto LABEL_423;
  }

  if (a12 + 2 < a12)
  {
    goto LABEL_423;
  }

  *a12 = v44;
  if ((v71 + 2) > a15)
  {
    goto LABEL_423;
  }

  if (v71 + 2 < v71)
  {
    goto LABEL_423;
  }

  *v71 = 0;
  v147 = v69 + 2;
  if ((v69 + 2) > a10)
  {
    goto LABEL_423;
  }

  if (v264 > v147)
  {
    goto LABEL_423;
  }

  *v264 = 0;
  if (v44 > 0x4B0)
  {
    goto LABEL_423;
  }

  if (v44)
  {
    bzero(__b, (4 * v44));
    v44 = v265;
    v46 = a16;
  }

  *v46 = 0.0;
  if (v147 < v69 || (v69 + 3) > a10 || v147 > v69 + 3)
  {
    goto LABEL_423;
  }

  *v147 = 0;
  *v72 = v263 != 0;
  v146 = 0.0;
LABEL_218:
  if (a28)
  {
    *v46 = 0.0;
    if (*v42 != 0.0)
    {
      v146 = 0.0;
LABEL_232:
      v153 = a29;
      if (a29)
      {
        goto LABEL_265;
      }

      v154 = 0;
      v155 = v44;
      v156 = -v44;
      v157 = v44;
      v158 = -4 * v44;
      while (1)
      {
        v159 = 0.0;
        if (v154 < v155)
        {
          break;
        }

LABEL_254:
        v173 = v272 + 4 * v154;
        v174 = v173 + 4;
        if (v173 < v272 || v174 > v274 || v173 > v174)
        {
          goto LABEL_423;
        }

        *(v272 + v154++) = v159;
        --v157;
        ++v156;
        if (v154 == 17)
        {
          v177 = *v272;
          if (*v272 < 100.0)
          {
            v177 = 100.0;
          }

          *v272 = v177 * 1.0001;
          v153 = v269;
          lev_dur(v269, &v271, v272, v274, 16, 0, 0);
          v146 = *a16;
LABEL_265:
          if (v146 <= 0.0)
          {
            *v277 = 0;
            vDSP_vfill(v277, v275, 1, 0x10uLL);
            goto LABEL_272;
          }

          if ((a12 + 2) <= a13 && a12 + 2 >= a12 && (v71 + 2) <= a15 && v71 + 2 >= v71)
          {
            v178 = *(v38 + 1);
            v179 = *a12;
            v180 = *v71;
            *v277 = *v38 - 64;
            *&v277[8] = v178;
            predict_signal(v277, v275, v179, v180, a26, 16);
LABEL_272:
            v181 = 0;
            v182 = *v36;
            v183 = v36[1];
            v184 = v36[2];
            do
            {
              v185 = &v182[v181 * 4 - 64];
              v186 = &v182[v181 * 4 - 60];
              if (v186 > v183 || v185 > v186 || v185 < v184)
              {
                goto LABEL_423;
              }

              v189 = *v38 + v181 * 4;
              v190 = (v189 - 64);
              v191 = v189 - 60;
              v192 = v191 > v38[1] || v190 > v191;
              v193 = !v192 && v190 >= v38[2];
              v194 = &v275[v181];
              v195 = &v275[v181 + 1];
              v196 = v193 && v194 >= v275;
              v197 = !v196 || v195 > __b;
              if (v197 || v194 > v195)
              {
                goto LABEL_423;
              }

              v275[v181] = (*v185 - *v190) + (*a16 * v275[v181]);
              ++v181;
            }

            while (v181 != 16);
            *v277 = 0;
            vDSP_vfill(v277, &v275[16], 1, 0x40uLL);
            syn_filt(v153);
            v44 = v265;
            v46 = a16;
            v199 = 0;
            v200 = 1.0;
            do
            {
              v201 = &v275[v199 + 48];
              v202 = &v275[v199 + 49];
              if (v201 < v275 || v202 > __b || v201 > v202)
              {
                goto LABEL_423;
              }

              *v201 = v200 * *v201;
              v200 = v200 + -0.03125;
              ++v199;
            }

            while (v199 != 32);
            v205 = 0;
            v206 = v38[2];
            while (1)
            {
              v207 = (*v38 + v205 * 4);
              v208 = (v207 + 1) > v38[1] || v207 > v207 + 1;
              v209 = !v208 && v207 >= v206;
              v210 = &__b[v205];
              v211 = &__b[v205 + 1];
              v212 = v209 && v210 >= __b;
              v213 = !v212 || v211 > v277;
              v214 = v213 || v210 > v211;
              v215 = &v275[v205 + 16];
              v216 = &v275[v205 + 17];
              v217 = !v214 && v215 >= v275;
              v218 = !v217 || v216 > __b;
              if (v218 || v215 > v216)
              {
                break;
              }

              v220 = (*v36 + v205 * 4);
              v221 = (v220 + 1) > v36[1] || v220 > v220 + 1;
              if (v221 || v220 < v36[2])
              {
                break;
              }

              *v220 = (*v207 - (*a16 * __b[v205++])) + *v215;
              if (v205 == 64)
              {
                goto LABEL_342;
              }
            }
          }

LABEL_423:
          __break(0x5519u);
        }
      }

      v160 = v38[1];
      v161 = v38[2];
      v162 = (*v38 + v158);
      v163 = v156;
      v164 = v157;
      while (1)
      {
        v165 = (v162 + 1) > v160 || v162 > v162 + 1;
        v166 = !v165 && v162 >= v161;
        v167 = (*v38 + 4 * v163);
        v168 = v167 + 1;
        v169 = !v166 || v168 > v160;
        v170 = v169 || v167 > v168;
        if (v170 || v167 < v161)
        {
          goto LABEL_423;
        }

        v172 = *v162++;
        v159 = v159 + (v172 * *v167);
        ++v163;
        if (!--v164)
        {
          goto LABEL_254;
        }
      }
    }

LABEL_223:
    v148 = *v38;
    if (*v38 < v38[2])
    {
      goto LABEL_423;
    }

    v149 = *v36;
    if (*v36 < v36[2])
    {
      goto LABEL_423;
    }

    v150 = v36[1];
    v97 = v150 >= v149;
    v151 = v150 - v149;
    if (!v97)
    {
      goto LABEL_423;
    }

    v152 = v38[1];
    if (v148 > v152)
    {
      goto LABEL_423;
    }

    if (v152 - v148 < 0x100)
    {
      goto LABEL_423;
    }

    if (v151 <= 0xFF)
    {
      goto LABEL_423;
    }

    memmove(*v36, v148, 0x100uLL);
    v46 = a16;
    v44 = v265;
    if (v149 + 256 < v149)
    {
      goto LABEL_423;
    }

    goto LABEL_342;
  }

  if (*v42 != 0.0)
  {
    goto LABEL_232;
  }

  if (v146 == 0.0)
  {
    goto LABEL_223;
  }

  v244 = 0;
  v245 = v38[2];
  v246 = 0.0;
  do
  {
    v247 = (*v38 + v244 * 4);
    v249 = (v247 + 1) <= v38[1] && v247 <= v247 + 1 && v247 >= v245;
    v250 = &__b[v244];
    v251 = &__b[v244 + 1];
    if (!v249 || v250 < __b || v251 > v277 || v250 > v251)
    {
      goto LABEL_423;
    }

    v255 = (*v36 + v244 * 4);
    v256 = (v255 + 1) > v36[1] || v255 > v255 + 1;
    if (v256 || v255 < v36[2])
    {
      goto LABEL_423;
    }

    *v255 = *v247 + (-(v246 * *v46) * __b[v244]);
    v246 = v246 + 0.015625;
    ++v244;
  }

  while (v244 != 64);
LABEL_342:
  if (a28 || *v46 == 0.0)
  {
    if (v44 >= 65)
    {
      v223 = v38[2];
      v224 = 256;
      do
      {
        v225 = (*v38 + v224);
        v226 = (v225 + 1) > v38[1] || v225 > v225 + 1;
        if (v226 || v225 < v223)
        {
          goto LABEL_423;
        }

        v228 = (*v36 + v224);
        v229 = (v228 + 1) > v36[1] || v228 > v228 + 1;
        if (v229 || v228 < v36[2])
        {
          goto LABEL_423;
        }

        *v228 = *v225;
        v224 += 4;
      }

      while (4 * v44 != v224);
    }
  }

  else if (v44 >= 65)
  {
    v231 = v38[2];
    v232 = 64;
    do
    {
      v233 = (*v38 + v232 * 4);
      v234 = (v233 + 1) > v38[1] || v233 > v233 + 1;
      v235 = !v234 && v233 >= v231;
      v236 = &__b[v232];
      v237 = &__b[v232 + 1];
      v238 = v235 && v236 >= __b;
      v239 = !v238 || v237 > v277;
      if (v239 || v236 > v237)
      {
        goto LABEL_423;
      }

      v241 = (*v36 + v232 * 4);
      v242 = (v241 + 1) > v36[1] || v241 > v241 + 1;
      if (v242 || v241 < v36[2])
      {
        goto LABEL_423;
      }

      *v241 = *v233 - (*v46 * __b[v232++]);
    }

    while (v44 != v232);
  }

  if ((a12 + 2) > a13)
  {
    goto LABEL_423;
  }

  if (a12 + 2 < a12)
  {
    goto LABEL_423;
  }

  *a17 = *a12;
  if ((v71 + 2) > a15 || v71 + 2 < v71)
  {
    goto LABEL_423;
  }

  *v43 = *v71;
  *v42 = *v46;
  *v70 = v68;
}

uint64_t WindowSignal(uint64_t result, int a2, int a3, int a4, int *a5, int *a6, uint64_t *a7, int *a8, float *a9, unint64_t a10, int a11)
{
  v11 = -1431655766;
  if (!a11)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v13 = *(result + 8564);
        v14 = result + 8068;
        v16 = 8308;
      }

      else
      {
        v13 = -1431655766;
        v12 = 0xAAAAAAAAAAAAAAAALL;
        if (a3 != 3)
        {
LABEL_42:
          switch(a4)
          {
            case 0:
              v11 = *(result + 8572);
              v17 = result + 5520;
              v18 = 7200;
              goto LABEL_48;
            case 3:
              v11 = *(result + 8560);
              v17 = result + 7228;
              v18 = 8068;
              goto LABEL_48;
            case 2:
              v11 = *(result + 8564);
              v17 = result + 8068;
              v18 = 8308;
              goto LABEL_48;
          }

          v17 = 0xAAAAAAAAAAAAAAAALL;
          goto LABEL_50;
        }

        v13 = *(result + 8560);
        v14 = result + 7228;
        v16 = 8068;
      }
    }

    else
    {
      if (a3 != -2)
      {
        v13 = -1431655766;
        v12 = 0xAAAAAAAAAAAAAAAALL;
        if (!a3)
        {
          v14 = *(result + 7200);
          if (v14 < *(result + 7216))
          {
            goto LABEL_125;
          }

          v13 = *(result + 8556);
          v12 = *(result + 7208);
        }

        goto LABEL_42;
      }

      v13 = *(result + 8568);
      v14 = result + 8308;
      v16 = 8548;
    }

    v12 = result + v16;
    goto LABEL_42;
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (a3 < 0)
  {
    if (a3 == -2)
    {
      v13 = *(result + 17144);
      v14 = result + 16888;
      v15 = 17128;
      goto LABEL_29;
    }

    if (a3 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1431655766;
    }

    if (a3 == -1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
    }

    if (a3 == -1)
    {
      v12 = 0;
    }
  }

  else if (a3)
  {
    if (a3 == 2)
    {
      v13 = *(result + 17140);
      v14 = result + 16648;
      v15 = 16888;
      goto LABEL_29;
    }

    if (a3 == 3)
    {
      v13 = *(result + 17136);
      v14 = result + 15808;
      v15 = 16648;
LABEL_29:
      v12 = result + v15;
      goto LABEL_30;
    }

    v13 = -1431655766;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    v14 = *(result + 15784);
    if (v14 < *(result + 15800))
    {
      goto LABEL_125;
    }

    v13 = *(result + 17132);
    v12 = *(result + 15792);
  }

LABEL_30:
  v17 = 0xAAAAAAAAAAAAAAAALL;
  if (a4 > 1)
  {
    if (a4 == 3)
    {
      v11 = *(result + 17136);
      v17 = result + 15808;
      v18 = 16648;
      goto LABEL_48;
    }

    if (a4 == 2)
    {
      v11 = *(result + 17140);
      v17 = result + 16648;
      v18 = 16888;
      goto LABEL_48;
    }
  }

  else
  {
    if (a4 == -1)
    {
      v11 = 0;
      v17 = 0;
      v19 = 0;
      goto LABEL_51;
    }

    if (!a4)
    {
      v11 = *(result + 17148);
      v17 = result + 14104;
      v18 = 15784;
LABEL_48:
      v19 = result + v18;
      goto LABEL_51;
    }
  }

LABEL_50:
  v19 = 0xAAAAAAAAAAAAAAAALL;
LABEL_51:
  v20 = *a8;
  if (a3 == -2)
  {
    v21 = 17128;
    if (!a11)
    {
      v21 = 8548;
    }

    v22 = 17144;
    if (!a11)
    {
      v22 = 8568;
    }

    v20 += *(result + v21);
    *a8 = v20;
    a2 = *(result + v22) / -2;
  }

  if (v17 <= v19 && (v11 & 0x80000000) == 0 && (v19 - v17) >> 2 >= v11 && v14 <= v12 && (v13 & 0x80000000) == 0 && (v12 - v14) >> 2 >= v13)
  {
    v23 = *a7;
    v24 = (*a7 + 4 * (v13 / -2) + 4 * a2);
    if (v24 >= a7[2])
    {
      v25 = a9;
      v26 = a7[1];
      if (v13 >= 1)
      {
        v27 = 0;
        v28 = 4 * (v13 / -2) + 4 * a2;
        v29 = v23 + v28;
        while (1)
        {
          v30 = &a9[v27];
          v31 = v29 + v27 * 4 + 4;
          v32 = v31 < v29 + v27 * 4 || v31 > v26;
          v33 = v30 + 1;
          v34 = !v32 && v33 >= v30;
          if (!v34 || v33 > a10)
          {
            goto LABEL_125;
          }

          *v30 = v24[v27] * *(v14 + v27 * 4);
          if (v13 == ++v27)
          {
            v24 = (v23 + v28 + v27 * 4);
            v36 = &a9[v27];
            goto LABEL_79;
          }
        }
      }

      v36 = a9;
LABEL_79:
      v37 = v20 - ((v11 + v13) >> 1);
      if (v37 >= 1)
      {
        while (1)
        {
          v38 = v24 + 1;
          v39 = v24 + 1 < v24 || v38 > v26;
          v40 = v36 + 1;
          v41 = !v39 && v40 >= v36;
          if (!v41 || v40 > a10)
          {
            goto LABEL_125;
          }

          *v36++ = *v24++;
          if (!--v37)
          {
            goto LABEL_93;
          }
        }
      }

      v40 = v36;
      v38 = v24;
LABEL_93:
      if (v11 >= 1)
      {
        v43 = 0;
        v44 = 4 * v11;
        v45 = v17;
        do
        {
          v46 = &v38[v43 / 4 + 1];
          if (v46 < &v38[v43 / 4] || v46 > v26)
          {
            goto LABEL_125;
          }

          v48 = v45 + v44;
          v49 = (v45 + v44 - 4);
          if (v49 < v17)
          {
            goto LABEL_125;
          }

          if (v48 > v17 + 4 * v11)
          {
            goto LABEL_125;
          }

          if (v49 > v48)
          {
            goto LABEL_125;
          }

          v50 = &v40[v43 / 4 + 1];
          if (v50 < &v40[v43 / 4] || v50 > a10)
          {
            goto LABEL_125;
          }

          v40[v43 / 4] = v38[v43 / 4] * *v49;
          v43 += 4;
          v45 -= 4;
        }

        while (v44 != v43);
      }

      if (a3)
      {
LABEL_106:
        *a5 = v13;
        *a6 = v11;
        return result;
      }

      if (a11)
      {
        if (a10 >= a9)
        {
          v51 = *(result + 17140);
          if ((a10 - a9) >> 2 >= v51 && (v51 & 0x8000) == 0 && v51 <= 60)
          {
            if (v51 >= 1)
            {
              v52 = (result + 16648);
              v53 = v51 & 0x7FFF;
              do
              {
                v54 = *v52++;
                *v25 = *v25 * v54;
                ++v25;
                --v53;
              }

              while (v53);
            }

            goto LABEL_106;
          }
        }
      }

      else if (a10 >= a9)
      {
        v55 = *(result + 8564);
        if ((a10 - a9) >> 2 >= v55 && (v55 & 0x8000) == 0 && v55 <= 60)
        {
          if (v55 >= 1)
          {
            v56 = (result + 8068);
            v57 = v55 & 0x7FFF;
            do
            {
              v58 = *v56++;
              *v25 = *v25 * v58;
              ++v25;
              --v57;
            }

            while (v57);
          }

          goto LABEL_106;
        }
      }
    }
  }

LABEL_125:
  __break(0x5519u);
  return result;
}

void TCX_MDCT(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v78 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v15 = v5 / 2;
  if (v5 >= 2)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = (v14 + 4 * (v15 + v7 + ~v16));
      v19 = v18 + 1;
      v20 = v18 < v14 || v19 > v13;
      v21 = v20 || v18 > v19;
      v22 = &__b[v15 + v3 / 2 + v16];
      v23 = v22 + 1;
      v24 = !v21 && v22 >= __b;
      v25 = !v24 || v23 > &v78;
      if (v25 || v22 > v23)
      {
        break;
      }

      *v22 = -*v18;
      v16 = ++v17;
      if (v15 <= v17)
      {
        goto LABEL_20;
      }
    }

LABEL_105:
    __break(0x5519u);
  }

LABEL_20:
  v27 = v7 / 2;
  if (v7 >= 2)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = (v14 + 4 * v29);
      v31 = v30 + 1;
      v32 = v30 < v14 || v31 > v13;
      v33 = v32 || v30 > v31;
      v34 = (v14 + 4 * (~v28 + v7));
      v35 = v34 + 1;
      v36 = !v33 && v34 >= v14;
      v37 = !v36 || v35 > v13;
      v38 = v37 || v34 > v35;
      v39 = &__b[2 * v15 + v3 / 2 + v28];
      v40 = v39 + 1;
      v41 = !v38 && v39 >= __b;
      v42 = !v41 || v40 > &v78;
      if (v42 || v39 > v40)
      {
        goto LABEL_105;
      }

      *v39 = *v30 - *v34;
      v28 = ++v29;
    }

    while (v27 > v29);
  }

  if (v5 > 1)
  {
    v44 = 0;
    v45 = 0;
    v46 = v3 / 2;
    while (1)
    {
      v47 = (v14 + 4 * (v15 + v7 + v44));
      v48 = v47 + 1;
      v49 = v47 < v14 || v48 > v13;
      v50 = v49 || v47 > v48;
      v51 = &__b[v15 + v3 / 2 + ~v44];
      v52 = v51 + 1;
      v53 = !v50 && v51 >= __b;
      v54 = !v53 || v52 > &v78;
      if (v54 || v51 > v52)
      {
        goto LABEL_105;
      }

      *v51 = -*v47;
      v44 = ++v45;
      if (v15 <= v45)
      {
        goto LABEL_69;
      }
    }
  }

  v46 = v3 / 2;
LABEL_69:
  if (v3 >= 2)
  {
    v56 = 0;
    v57 = 0;
    do
    {
      v58 = (v14 + 4 * (v56 + v5 + v7));
      v59 = v58 + 1;
      v60 = v58 < v14 || v59 > v13;
      v61 = v60 || v58 > v59;
      v62 = ~v56;
      v63 = (v14 + 4 * (v5 + v7 + v3 + ~v56));
      v64 = v63 + 1;
      v65 = !v61 && v63 >= v14;
      v66 = !v65 || v64 > v13;
      v67 = v66 || v63 > v64;
      v68 = &__b[v46 + v62];
      v69 = v68 + 1;
      v70 = !v67 && v68 >= __b;
      v71 = !v70 || v69 > &v78;
      if (v71 || v68 > v69)
      {
        goto LABEL_105;
      }

      *v68 = -*v63 - *v58;
      v56 = ++v57;
    }

    while (v46 > v57);
  }

  v73 = v9 - v11;
  if (v9 < v11)
  {
    goto LABEL_105;
  }

  v74 = v27 + v5 + v46;
  if (v73 >> 2 < v74 || (v74 & 0x8000) != 0 || v74 > 1200)
  {
    goto LABEL_105;
  }

  edct(__b);
  if (v74 >= 1)
  {
    v75 = sqrtf(160.0 / v74);
    v76 = v74 & 0x7FFF;
    do
    {
      *v11 = *v11 * v75;
      ++v11;
      --v76;
    }

    while (v76);
  }
}

void AnalyzePowerSpectrum(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12)
{
  TCX_MDST(a9);
  if (*(a1 + 68720))
  {
    attenuateNbSpectrum(a3, a11, a12);
  }

  v17 = a3 - 1;
  if (a3 >= 1)
  {
    v18 = a11;
    v19 = a6;
    v20 = a3;
    while (v18 >= a11)
    {
      if ((v18 + 1) > a12)
      {
        break;
      }

      if (v18 > v18 + 1)
      {
        break;
      }

      v21 = *v18 * *v18;
      *v18 = v21;
      if (v19 < a6 || (v19 + 1) > a7 || v19 > v19 + 1)
      {
        break;
      }

      v22 = *v19++;
      *v18++ = v21 + (v22 * v22);
      if (!--v20)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_141;
  }

LABEL_12:
  v23 = (a1 + 122108);
  v24 = *(a1 + 140);
  v25 = *(a1 + 122140) * v24 != *(a1 + 111820) * *(a1 + 111852) || *(a1 + 52108) != 1;
  if (a3 > 0x4B0 || a12 < a11 || (v26 = (a12 - a11) >> 2, v26 < a3))
  {
LABEL_141:
    __break(0x5519u);
    return;
  }

  v27 = *(a1 + 122112);
  v28 = a1 + 111856;
  v29 = !v25;
  if (!a3)
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    v30 = (a1 + 111856);
    v31 = a3;
    while ((v30 + 1) <= v28 + 4 * a3 && v30 <= v30 + 1)
    {
      *v30++ = 0;
      if (!--v31)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_141;
  }

LABEL_27:
  if (a11)
  {
    v33 = v27 * a2 / v24;
    if (v33 + 6 < a3)
    {
      v34 = (a11 + 4 * v33);
      if ((v34 - 8) >= a11)
      {
        v35 = a11 + 4 * a3;
        v36 = (v34 - 7);
        if ((v34 - 7) <= v35 && (v34 - 8) <= v36)
        {
          v37 = v34 - 6;
          if ((v34 - 6) <= v35 && v36 <= v37)
          {
            v38 = v34 - 5;
            if ((v34 - 5) <= v35 && v37 <= v38)
            {
              v39 = v34 - 4;
              if ((v34 - 4) <= v35 && v38 <= v39)
              {
                v40 = v34 - 3;
                if ((v34 - 3) <= v35 && v39 <= v40)
                {
                  v41 = v34 - 2;
                  if ((v34 - 2) <= v35 && v40 <= v41)
                  {
                    v42 = v34 - 1;
                    if ((v34 - 1) <= v35 && v41 <= v42 && v34 <= v35 && v42 <= v34)
                    {
                      v43 = v34 + 1;
                      if ((v34 + 1) <= v35 && v34 <= v43)
                      {
                        v44 = v34 + 2;
                        if ((v34 + 2) <= v35 && v43 <= v44)
                        {
                          v45 = v34 + 3;
                          if ((v34 + 3) <= v35 && v44 <= v45)
                          {
                            v46 = v34 + 4;
                            if ((v34 + 4) <= v35 && v45 <= v46)
                            {
                              v47 = v34 + 5;
                              if ((v34 + 5) <= v35 && v46 <= v47)
                              {
                                v48 = (v34 + 6);
                                if ((v34 + 6) <= v35 && v47 <= v48 && (v34 + 7) <= v35 && v48 <= (v34 + 7))
                                {
                                  v49 = *v34;
                                  v50 = v33;
                                  v51 = (((((((((((((*(v34 - 8) + *(v34 - 7)) + *(v34 - 6)) + *(v34 - 5)) + *(v34 - 4)) + *(v34 - 3)) + *(v34 - 2)) + *(v34 - 1)) + *v34) + v34[1]) + v34[2]) + v34[3]) + v34[4]) + v34[5]) + v34[6];
                                  v52 = a3 - 7;
                                  v53 = v28 + 4 * a3;
                                  if (a3 - 7 <= v33)
                                  {
                                    v54 = 0;
LABEL_86:
                                    v73 = 4 * v50;
                                    v74 = a1 + 111860;
                                    v75 = v17 - v50;
                                    v76 = a11;
                                    v77 = a1 + 111856;
                                    while (1)
                                    {
                                      v78 = (v76 + v73);
                                      v79 = (v76 + v73 - 4);
                                      v80 = v79 < a11 || v78 > v35;
                                      v81 = v80 || v79 > v78;
                                      v82 = v78 + 1;
                                      v83 = v81 || v82 > v35;
                                      v84 = v83 || v78 > v82;
                                      v85 = v78 + 2;
                                      v86 = !v84 && v82 >= a11;
                                      v87 = !v86 || v85 > v35;
                                      v88 = v87 || v82 > v85;
                                      v89 = (v77 + v73);
                                      v90 = v74 + v73;
                                      v91 = !v88 && v89 >= v28;
                                      v92 = !v91 || v90 > v53;
                                      if (v92 || v89 > v90)
                                      {
                                        break;
                                      }

                                      *v89 = v51 >= (((*v79 + *v78) + *v82) * ((*v89 * -0.5) + 1.75));
                                      v77 += 4;
                                      v74 += 4;
                                      v76 += 4;
                                      if (!--v75)
                                      {
                                        v94 = (v28 + 4 * v17);
                                        if (v94 >= v28 && (v94 + 1) <= v53 && v94 <= v94 + 1)
                                        {
                                          *v94 = 1;
                                          if (v54 < 1)
                                          {
                                            goto LABEL_127;
                                          }

                                          v95 = v28 + 4 * v54;
                                          v96 = (v95 + 4);
                                          if (v95 + 4 >= v28 && v95 + 8 <= v53 && v96 <= v95 + 8)
                                          {
                                            *v96 = 0;
                                            goto LABEL_127;
                                          }
                                        }

                                        goto LABEL_141;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v54 = 0;
                                    v55 = 4 * v33;
                                    v56 = a1 + 111860;
                                    v57 = a11;
                                    v58 = a1 + 111856;
                                    while (1)
                                    {
                                      v59 = v57 + v55;
                                      v60 = (v57 + v55 - 4);
                                      v61 = (v57 + v55 + 4);
                                      v62 = v57 + v55 + 8;
                                      v63 = v60 >= a11 && v61 >= a11;
                                      v64 = !v63 || v62 > v35;
                                      if (v64 || v61 > v62)
                                      {
                                        break;
                                      }

                                      v66 = (v59 + 28);
                                      if (v59 + 28 < a11)
                                      {
                                        break;
                                      }

                                      v67 = v59 + 32;
                                      if (v67 > v35)
                                      {
                                        break;
                                      }

                                      if (v66 > v67)
                                      {
                                        break;
                                      }

                                      v68 = (v57 + v55 - 32);
                                      if (v68 < a11)
                                      {
                                        break;
                                      }

                                      v69 = v57 + v55 - 28;
                                      if (v69 > v35)
                                      {
                                        break;
                                      }

                                      if (v68 > v69)
                                      {
                                        break;
                                      }

                                      v70 = (v58 + v55);
                                      if (v58 + v55 < v28 || v56 + v55 > v53 || v70 > v56 + v55)
                                      {
                                        break;
                                      }

                                      v71 = v49 + *v60;
                                      v49 = *v61;
                                      v51 = v51 + (*v66 - *v68);
                                      v72 = (v71 + *v61) * ((*v70 * -0.5) + 1.75);
                                      if (v51 < v72)
                                      {
                                        v54 = v33;
                                      }

                                      ++v33;
                                      *v70 = v51 >= v72;
                                      v58 += 4;
                                      v56 += 4;
                                      v57 += 4;
                                      if (v52 == v33)
                                      {
                                        v50 = v52;
                                        goto LABEL_86;
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
        }
      }

      goto LABEL_141;
    }
  }

LABEL_127:
  if (*(a1 + 64) > 24400)
  {
    *v23 = 1.0;
    return;
  }

  v97 = ((*(a1 + 86164) + *(a1 + 86164)) * a2);
  if (v97 < 0 || v26 < v97)
  {
    goto LABEL_141;
  }

  v98 = 32.0;
  if (!*(a1 + 52108))
  {
    v98 = 64.0;
  }

  v99 = v97 >> 1;
  v100 = a11 + 4 * v97;
  v101 = (v100 - 4);
  while (v99 < v97)
  {
    if (v101 < a11 || (v101 + 1) > v100 || v101 > v101 + 1)
    {
      goto LABEL_141;
    }

    v102 = *v101--;
    --v97;
    if (v102 > v98)
    {
      v99 = v97 + 1;
      break;
    }
  }

  *v23 = ((v99 / a2) * 0.7) + (*v23 * 0.3);
}

void TNSAnalysis(uint64_t a1, int a2, int a3, unsigned int a4, __int128 *a5, unint64_t a6, int *a7, _DWORD *a8, _DWORD *a9)
{
  *v241 = *MEMORY[0x1E69E9840];
  *a8 = 0;
  if (!*(a1 + 17168))
  {
    return;
  }

  v10 = a1 + 48 * (a3 == 1) + 17176;
  v11 = v10 + 24 * a4;
  if (v11)
  {
    v12 = v11 + 24;
    v13 = v11 < v10 || v12 > a1 + 48 * (a3 == 1) + 17224;
    if (v13 || v11 > v12)
    {
      goto LABEL_342;
    }
  }

  *(a1 + 17272) = v11;
  v15 = *(v11 + 16);
  v228 = a6;
  v211 = v15;
  v214 = a2;
  if (a3 == 3)
  {
    if (v15 >= a2 / 2)
    {
      v32 = a2 / 4;
      v33 = (a5 + 4 * (a2 / 4));
      if (v33 < a5)
      {
        goto LABEL_342;
      }

      if (a6 < v33)
      {
        goto LABEL_342;
      }

      if (a6 - v33 <= 0x1F)
      {
        goto LABEL_342;
      }

      v230 = *v33;
      v232 = v33[1];
      v34 = a5 + 2;
      if (a5 + 2 < a5)
      {
        goto LABEL_342;
      }

      v35 = a5 + 4;
      if (a5 + 4 < a5)
      {
        goto LABEL_342;
      }

      if ((v32 - 8) <= 0)
      {
        v37 = a6 - v34;
      }

      else
      {
        if (a6 < v35)
        {
          goto LABEL_342;
        }

        if (a6 < v34)
        {
          goto LABEL_342;
        }

        v36 = 4 * (v32 - 8);
        v37 = a6 - v34;
        if (v36 > a6 - v34)
        {
          goto LABEL_342;
        }

        if (v36 > a6 - v35)
        {
          goto LABEL_342;
        }

        v38 = a1;
        memmove(a5 + 4, a5 + 2, 4 * (v32 - 8));
        a6 = v228;
        a1 = v38;
        if ((v35 + v36) < v35)
        {
          goto LABEL_342;
        }
      }

      if (a6 < v34)
      {
        goto LABEL_342;
      }

      if (v37 <= 0x1F)
      {
        goto LABEL_342;
      }

      *v34 = v230;
      v34[1] = v232;
      if (v35 < v34)
      {
        goto LABEL_342;
      }
    }

    else
    {
      v16 = a5 + 2;
      if (a5 + 2 < a5)
      {
        goto LABEL_342;
      }

      v17 = a5 + 4;
      if (a5 + 4 < a5)
      {
        goto LABEL_342;
      }

      v18 = (v15 + ((v15 & 0x8000) >> 15)) >> 1;
      v19 = v18 - 8;
      if (v15 >= 18)
      {
        if (a6 < v17 || a6 < v16)
        {
          goto LABEL_342;
        }

        v20 = 4 * v19;
        if (v20 > a6 - v16 || v20 > a6 - v17)
        {
          goto LABEL_342;
        }

        v22 = a1;
        memmove(a5 + 4, a5 + 2, 4 * v19);
        a6 = v228;
        v15 = v211;
        a2 = v214;
        a1 = v22;
        if ((v17 + v20) < v17)
        {
          goto LABEL_342;
        }
      }

      v23 = (a5 + 4 * (a2 / 4));
      if (v23 < a5)
      {
        goto LABEL_342;
      }

      if (a6 < v16)
      {
        goto LABEL_342;
      }

      if (a6 < v23)
      {
        goto LABEL_342;
      }

      if (a6 - v23 < 0x20)
      {
        goto LABEL_342;
      }

      if (a6 - v16 <= 0x1F)
      {
        goto LABEL_342;
      }

      v24 = v23[1];
      *v16 = *v23;
      v16[1] = v24;
      if (v17 < v16)
      {
        goto LABEL_342;
      }

      v25 = v23 + 2;
      if (v23 + 2 < a5)
      {
        goto LABEL_342;
      }

      v26 = a5 + 4 * v18 + 32;
      if (v26 < a5)
      {
        goto LABEL_342;
      }

      if (v15 >= 18)
      {
        v27 = 4 * v19;
        v28 = a6 >= v26 && a6 >= v25;
        v29 = !v28 || v27 > a6 - v25;
        if (v29 || v27 > a6 - v26)
        {
          goto LABEL_342;
        }

        v31 = a1;
        memmove(v26, v25, 4 * v19);
        a1 = v31;
        if (&v26[v27] < v26)
        {
          goto LABEL_342;
        }
      }
    }
  }

  v210 = a1;
  v39 = *(a1 + 17272);
  v238[0] = -1;
  v238[1] = -1;
  __C = -1;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, &__C, 1, 3uLL);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, v238 + 1, 1, 3uLL);
  ResetTnsData(a7);
  if (*v39)
  {
    v40 = v39;
    v217 = a7;
    v41 = v39[1];
    if (v39[1])
    {
      v42 = 0;
      v220 = (v39 + 22);
      v221 = (v39 + 16);
      do
      {
        v43 = v42 + 1;
        v44 = (v221 + 2 * (v42 + 1));
        v45 = v44 + 1;
        if (v44 < v221 || v45 > v220 || v44 > v45)
        {
          goto LABEL_342;
        }

        v48 = (v221 + 2 * v42);
        if ((v48 + 1) > v220 || v48 > v48 + 1)
        {
          goto LABEL_342;
        }

        v49 = *(*(v39 + 1) + 16 * v42 + 4);
        if (v49 >= 1)
        {
          v50 = 0;
          v51 = *v44;
          v52 = *v48 - v51;
          v53 = &v238[-1] + 3 * v42;
          do
          {
            v54 = v52 * v50 / v49;
            v55 = a5 + v54 + v51;
            if (v55 > v228 || v55 < a5)
            {
              goto LABEL_342;
            }

            v56 = v50 + 1;
            v57 = v52 * (v50 + 1) / v49 - v54;
            if ((v228 - v55) >> 2 < v57 || (v57 & 0x8000) != 0)
            {
              goto LABEL_342;
            }

            if (v57 < 1)
            {
              v60 = 0.0;
            }

            else
            {
              v59 = v57 & 0x7FFF;
              v60 = 0.0;
              do
              {
                v61 = *v55++;
                v60 = v60 + (v61 * v61);
                --v59;
              }

              while (v59);
            }

            v62 = &v53[v50];
            if (v62 < v53)
            {
              goto LABEL_342;
            }

            if (v62 + 1 > v53 + 3 || v62 > v62 + 1)
            {
              goto LABEL_342;
            }

            *v62 = v60;
            v50 = v56;
          }

          while (v56 != v49);
        }

        v42 = v43;
      }

      while (v43 < v41);
      v64 = 0;
      v215 = (a7 + 25);
      v216 = a7 + 1;
      v65 = a7;
      do
      {
        v235 = -1;
        *&v66 = -1;
        *(&v66 + 1) = -1;
        v234[0] = v66;
        v234[1] = v66;
        v222 = v64;
        v218 = v64 + 1;
        v219 = v65;
        v67 = (v221 + 2 * (v64 + 1));
        v68 = v67 + 1;
        if (v67 < v221 || v68 > v220 || v67 > v68)
        {
          goto LABEL_342;
        }

        v71 = (v221 + 2 * v64);
        if ((v71 + 1) > v220 || v71 > v71 + 1)
        {
          goto LABEL_342;
        }

        v223 = *v67;
        v224 = *v71 - v223;
        v72 = v40;
        v73 = v64;
        v74 = *(*(v40 + 1) + 16 * v64 + 4);
        LODWORD(__A[0]) = 0;
        vDSP_vfill(__A, v234, 1, 9uLL);
        v226 = v74;
        if (v74 < 1)
        {
          v81 = 0;
          v76 = v228;
          v40 = v72;
        }

        else
        {
          v75 = 0;
          v225 = &v238[-1] + 3 * v222;
          v76 = v228;
          v40 = v72;
          while (1)
          {
            v77 = &v225[v75];
            v78 = (v77 + 1);
            if (v77 < v225 || v78 > (v225 + 3) || v77 > v78)
            {
              goto LABEL_342;
            }

            v81 = v75;
            if (*v77 <= 25.6)
            {
              break;
            }

            v227 = v75 + 1;
            if (*v40)
            {
              v82 = 0;
              v83 = 0;
              v84 = 1.0 / *v77;
              v85 = v224 * v75 / v226;
              v86 = a5 + v85 + v223;
              v87 = (v76 - v86) >> 2;
              v88 = ~v85 + v224 * v227 / v226;
              v89 = a5 + 4 * v85 + 4 * v223 + 4;
              v90 = v228 - a5 - 4 - 4 * (v85 + v223);
              do
              {
                v91 = &tnsAcfWindow[v82];
                v92 = &tnsAcfWindow[v82 + 4];
                if (&tnsAcfWindow[v82] < tnsAcfWindow || v92 > tnsCoeff4 || v91 > v92)
                {
                  goto LABEL_342;
                }

                if (v86 < a5)
                {
                  goto LABEL_342;
                }

                v95 = (v89 + v82);
                if (v89 + v82 > v76)
                {
                  goto LABEL_342;
                }

                if (v95 < v86)
                {
                  goto LABEL_342;
                }

                if (v76 < v86)
                {
                  goto LABEL_342;
                }

                if (v90 >> 2 < v88)
                {
                  goto LABEL_342;
                }

                if ((v88 & 0x8000) != 0)
                {
                  goto LABEL_342;
                }

                if (v87 < v88)
                {
                  goto LABEL_342;
                }

                v96 = *v91;
                LODWORD(__A[0]) = -1;
                vDSP_dotpr(v86, 1, v95, 1, __A, v88 & 0x7FFF);
                v76 = v228;
                v97 = (v234 + v82 + 4);
                if (v97 < v234)
                {
                  goto LABEL_342;
                }

                v98 = (v234 + v82 + 8);
                if (v98 > v236 || v97 > v98)
                {
                  goto LABEL_342;
                }

                v40 = v72;
                *v97 = *v97 + ((v84 * v96) * *__A);
                ++v83;
                v82 += 4;
                LOWORD(v88) = v88 - 1;
                v90 -= 4;
              }

              while (v83 < *v72);
            }

            v75 = v227;
            if (v227 == v226)
            {
              v41 = v40[1];
              v73 = v222;
              goto LABEL_137;
            }
          }

          v73 = v222;
        }

        v41 = v40[1];
        if (v81 == v226)
        {
LABEL_137:
          v99 = *(v40 + 1);
          v100 = v99 + 16 * v73;
          v101 = v100 + 16;
          if (v100 < v99 || v101 > v99 + 16 * v41 || v100 > v101)
          {
            goto LABEL_342;
          }

          v104 = &v216[12 * v222];
          v105 = *(v100 + 4);
          *v234 = v105;
          if ((v104 + 12) > v215 || v216 > v104)
          {
            goto LABEL_342;
          }

          *v104 = v224;
          v106 = v224 / 4 >= *v40 ? *v40 : (v224 / 4);
          if (v104 > v104 + 12)
          {
            goto LABEL_342;
          }

          v107 = v104 + 2;
          v108 = (v104 + 10);
          *&v109 = -1;
          *(&v109 + 1) = -1;
          v239[0] = v109;
          v239[1] = v109;
          v110 = 4 * v106;
          memset(__A, 0, sizeof(__A));
          if (v106 < 1)
          {
            *v108 = (v105 + 1.0e-30) / 1.0e-30;
            v145 = v219;
          }

          else
          {
            v111 = 0;
            v112 = v105;
            v113 = __A + 4 * v106;
            do
            {
              v114 = __A + v111 + 4;
              if ((__A + v111) < __A || v114 > v241 || __A + v111 > v114)
              {
                goto LABEL_342;
              }

              *(__A + v111) = v112;
              v117 = (v234 + v111 + 4);
              if (v117 < v234)
              {
                goto LABEL_342;
              }

              v118 = (v234 + v111 + 8);
              if (v118 > v236)
              {
                goto LABEL_342;
              }

              if (v117 > v118)
              {
                goto LABEL_342;
              }

              v119 = &v113[v111];
              if (&v113[v111] < __A || v119 + 4 > v241 || v119 > v119 + 4)
              {
                goto LABEL_342;
              }

              v112 = *v117;
              *v119 = *v117;
              v111 += 4;
            }

            while (v110 != v111);
            v120 = 0;
            v121 = 4 * v106;
            v122 = v106;
            do
            {
              v123 = 0.0;
              if (*__A >= 0.000015259)
              {
                v124 = &v113[4 * v120];
                if (v124 < __A)
                {
                  goto LABEL_342;
                }

                if (v124 + 1 > v241 || v124 > v124 + 1)
                {
                  goto LABEL_342;
                }

                v123 = -*v124 / *__A;
              }

              if (v123 >= -0.999)
              {
                v126 = v123;
              }

              else
              {
                v126 = -0.999;
              }

              if (v126 > 0.999)
              {
                v126 = 0.999;
              }

              v127 = v239 + v120;
              v128 = v127 + 1;
              if (v127 < v239 || v128 > __A || v127 > v128)
              {
LABEL_342:
                __break(0x5519u);
              }

              v131 = 0;
              *v127 = v126;
              v132 = v121;
              v133 = v122;
              do
              {
                v134 = __A + v132 + 4;
                v136 = (__A + v132) < __A || v134 > v241 || __A + v132 > v134;
                v137 = __A + v131;
                v138 = __A + v131 + 4;
                if (v136 || v137 < __A || v138 > v241 || v137 > v138)
                {
                  goto LABEL_342;
                }

                v142 = *(__A + v132);
                v143 = *(__A + v131);
                *(__A + v131) = v143 + (v126 * v142);
                *(__A + v132) = v142 + (v126 * v143);
                v131 += 4;
                v132 += 4;
                --v133;
              }

              while (v133);
              ++v120;
              --v122;
              v121 += 4;
            }

            while (v120 != v106);
            v144 = 0;
            *v108 = (v105 + 1.0e-30) / (*__A + 1.0e-30);
            v145 = v219;
            do
            {
              v146 = v239 + v144;
              v147 = v146 + 1;
              if (v146 < v239 || v147 > __A || v146 > v147)
              {
                goto LABEL_342;
              }

              v150 = *v146;
              v151 = -15;
              v152 = &unk_19B35D2AC;
              while (1)
              {
                if (v152 - 1 < tnsCoeff4 || v152 - 1 > v152)
                {
                  goto LABEL_342;
                }

                if (v150 <= ((*(v152 - 1) + *v152) * 0.5))
                {
                  break;
                }

                ++v152;
                v28 = __CFADD__(v151++, 1);
                if (v28)
                {
                  v154 = 7;
                  goto LABEL_223;
                }
              }

              v154 = v151 + 7;
LABEL_223:
              v155 = &v107[v144];
              if (v155 < v107 || v155 + 1 > v108 || v155 > v155 + 1)
              {
                goto LABEL_342;
              }

              *v155 = v154;
              ++v144;
            }

            while (v144 != v106);
          }

          v156 = v106;
          do
          {
            v157 = v156;
            if (v156 < 1)
            {
              v104[1] = v106 & (v106 >> 31);
              v160 = (v104 + 11);
              v164 = 0.0;
              goto LABEL_255;
            }

            v158 = &v145[v110 / 4 + 3];
            if (v158 > v108)
            {
              goto LABEL_342;
            }

            v159 = &v145[v110 / 4 + 2];
            if (v159 > v158 || v159 < v107)
            {
              goto LABEL_342;
            }

            v156 = v157 - 1;
            v110 -= 4;
          }

          while (!v145[v157 + 2]);
          v104[11] = 0;
          v160 = (v104 + 11);
          *(v160 - 10) = v157;
          v161 = v157 & 0x7FFFFFFF;
          v162 = v161 + 1;
          v163 = v161;
          v164 = 0.0;
          do
          {
            v165 = &v145[v163 + 2];
            v166 = &v145[v163 + 3];
            if (v166 > v108 || v165 > v166 || v165 < v107)
            {
              goto LABEL_342;
            }

            v169 = &tnsCoeff4[v145[v163 + 2]];
            v170 = (v169 + 8);
            v171 = v169 + 9;
            v172 = v170 < tnsCoeff4 || v171 > interpol_frac_16k;
            if (v172 || v170 > v171)
            {
              goto LABEL_342;
            }

            v164 = v164 + (*v170 * *v170);
            *v160 = v164;
            --v162;
            --v163;
          }

          while (v162 > 1);
LABEL_255:
          *v160 = v164 / v106;
        }

        else
        {
          v145 = v219;
        }

        v65 = v145 + 12;
        v64 = v218;
      }

      while (v218 < v41);
    }

    else
    {
      v76 = v228;
    }

    v174 = v217;
    if (a9)
    {
      *a9 = v217[11];
    }

    if (v41)
    {
      v175 = v217 + 1;
      v176 = *(v40 + 1);
      v177 = &v217[12 * v41 - 9];
      do
      {
        v178 = &v175[12 * v41 - 12];
        v179 = v178 + 48;
        if (v175 > v178 || v179 > (v217 + 25))
        {
          goto LABEL_342;
        }

        v181 = v176 + 16 * (v41 - 1);
        if (v176 > v181 || v181 + 16 > v176 + 16 * v40[1])
        {
          goto LABEL_342;
        }

        v182 = v178 + 40;
        v174 = v217;
        if (*(v178 + 40) <= *(v181 + 8))
        {
          v183 = *v217;
          if (*(v178 + 44) > *(v181 + 12))
          {
            goto LABEL_281;
          }

          if (v183 < 1)
          {
            if (v178 <= v179)
            {
              *(v178 + 4) = 0;
              v186 = v178 + 8;
              v187 = v177;
              v188 = 8;
              v174 = v217;
              while (v187 >= v186 && (v187 + 1) <= v182 && v187 <= v187 + 1)
              {
                *v187++ = 0;
                if (!--v188)
                {
                  goto LABEL_282;
                }
              }
            }

            goto LABEL_342;
          }

          if (v178 > v179)
          {
            goto LABEL_342;
          }

          *(v178 + 4) = 0;
          v184 = v177;
          v185 = 8;
          v174 = v217;
          do
          {
            if (v184 < v178 + 8 || (v184 + 1) > v182 || v184 > v184 + 1)
            {
              goto LABEL_342;
            }

            *v184++ = 0;
            --v185;
          }

          while (v185);
          *(v178 + 4) = 1;
        }

        v183 = *v174;
LABEL_281:
        *v174 = v183 + 1;
LABEL_282:
        v177 -= 48;
        v13 = v41-- > 1;
      }

      while (v13);
    }

    v189 = *v174;
    *a8 = *v174 > 0;
    if (v189 < 1)
    {
      goto LABEL_294;
    }

    ApplyTnsFilter(*(v210 + 17272), v174, a5, v76, 1);
  }

  else
  {
    *a8 = 0;
  }

  v76 = v228;
LABEL_294:
  if (a3 == 3)
  {
    v190 = v211;
    if (v211 >= v214 / 2)
    {
      v205 = a5 + 2;
      if (a5 + 2 < a5)
      {
        goto LABEL_342;
      }

      v206 = v76 - v205;
      if (v76 < v205)
      {
        goto LABEL_342;
      }

      if (v206 <= 0x1F)
      {
        goto LABEL_342;
      }

      v231 = *v205;
      v233 = a5[3];
      v207 = a5 + 4;
      if (a5 + 4 < a5)
      {
        goto LABEL_342;
      }

      if ((v214 / 4 - 8) >= 1)
      {
        if (v76 < v207)
        {
          goto LABEL_342;
        }

        v208 = 4 * (v214 / 4 - 8);
        if (v208 > v76 - v207)
        {
          goto LABEL_342;
        }

        if (v208 > v206)
        {
          goto LABEL_342;
        }

        memmove(a5 + 2, v207, 4 * (v214 / 4 - 8));
        v76 = v228;
        if ((v205 + v208) < v205)
        {
          goto LABEL_342;
        }
      }

      v209 = (a5 + 4 * (v214 / 4));
      if (v209 < a5)
      {
        goto LABEL_342;
      }

      if (v76 < v209)
      {
        goto LABEL_342;
      }

      if (v76 - v209 <= 0x1F)
      {
        goto LABEL_342;
      }

      *v209 = v231;
      v209[1] = v233;
      if (v209 + 2 < v209)
      {
        goto LABEL_342;
      }
    }

    else
    {
      v191 = (v211 + ((v211 & 0x8000) >> 15)) >> 1;
      v192 = a5 + 4 * v191;
      v193 = v192 + 32;
      if (v192 + 32 < a5)
      {
        goto LABEL_342;
      }

      v194 = v214 / 4;
      v195 = (a5 + 4 * (v214 / 4));
      v196 = v195 + 2;
      if (v195 + 2 < a5)
      {
        goto LABEL_342;
      }

      v197 = v191 - 8;
      if (v211 >= 18)
      {
        if (v76 < v196)
        {
          goto LABEL_342;
        }

        if (v76 < v193)
        {
          goto LABEL_342;
        }

        v198 = 4 * v197;
        if (v198 > v76 - v193)
        {
          goto LABEL_342;
        }

        if (v198 > v76 - v196)
        {
          goto LABEL_342;
        }

        memmove(v195 + 2, v193, 4 * v197);
        v76 = v228;
        v190 = v211;
        if ((v196 + v198) < v196)
        {
          goto LABEL_342;
        }
      }

      v199 = a5 + 2;
      if (a5 + 2 < a5)
      {
        goto LABEL_342;
      }

      if (v195 < a5)
      {
        goto LABEL_342;
      }

      if (v76 < v195)
      {
        goto LABEL_342;
      }

      if (v76 < v199)
      {
        goto LABEL_342;
      }

      if (v76 - v199 < 0x20)
      {
        goto LABEL_342;
      }

      if (v76 - v195 <= 0x1F)
      {
        goto LABEL_342;
      }

      v200 = a5[3];
      *v195 = *v199;
      v195[1] = v200;
      if (v196 < v195)
      {
        goto LABEL_342;
      }

      v201 = a5 + 4;
      if (a5 + 4 < a5)
      {
        goto LABEL_342;
      }

      if (v190 >= 18)
      {
        if (v76 < v201)
        {
          goto LABEL_342;
        }

        v202 = 4 * v197;
        if (v202 > v76 - v201)
        {
          goto LABEL_342;
        }

        if (v202 > v76 - v199)
        {
          goto LABEL_342;
        }

        memmove(v199, v201, 4 * v197);
        v76 = v228;
        if ((v199 + v202) < v199)
        {
          goto LABEL_342;
        }
      }

      if (v192 > v76)
      {
        goto LABEL_342;
      }

      if (v192 < a5)
      {
        goto LABEL_342;
      }

      v203 = v194 - v191;
      if (v194 - v191 < 0 || (v76 - v192) >> 2 < v203)
      {
        goto LABEL_342;
      }

      if (v203 >= 1)
      {
        bzero(v192, 4 * (v194 - v191));
        v76 = v228;
      }

      v204 = v195 + 4 * ((v211 + ((v211 & 0x8000) >> 15)) >> 1);
      if (v204 > v76 || v204 < a5 || v203 > (v76 - v204) >> 2)
      {
        goto LABEL_342;
      }

      if (v203 >= 1)
      {
        bzero(v204, 4 * (v194 - v191));
      }
    }
  }
}

uint64_t EncodeTnsData(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _DWORD *a5, _DWORD *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (*(a1 + 1) < 2u)
  {
    v8 = a4;
    v9 = a4 + 24;
    v10 = a4;
    v6 = &tnsEnabledWBTCX20BitMap;
  }

  else if (*(a1 + 16) > 511)
  {
    v8 = a4;
    v9 = a4 + 24;
    v10 = a4;
    v6 = &tnsEnabledSWBTCX20BitMap;
  }

  else
  {
    v8 = a4;
    v9 = a4 + 24;
    v10 = a4;
    v6 = &tnsEnabledSWBTCX10BitMap;
  }

  return GetParameters(v6, 1, a2, a3, &v8, a5, a6);
}

__int16 *ProcessIGF(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, int a5, int a6, int a7)
{
  if (a7)
  {
    v7 = a5 != 0;
  }

  else
  {
    v7 = 0;
  }

  *&v273[12] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  v9 = *a3;
  if (*a3 < a3[2] || *a4 < a4[2])
  {
    goto LABEL_401;
  }

  v254 = v8;
  v252 = *a4;
  v10 = a5 != 0 && a6 == 0 ? *a4 : 0;
  v11 = a1 + 16 + 260 * v8;
  if (a1 + 16 > v11)
  {
    goto LABEL_401;
  }

  v246 = (a1 + 796);
  if (v11 + 260 > a1 + 796)
  {
    goto LABEL_401;
  }

  v12 = a3[1];
  v13 = a4[1];
  v256 = *(a2 + 52108);
  v266 = v11;
  v14 = *(v11 + 96);
  *(a1 + 1988) = v14;
  v251 = v13;
  v15 = a5 != 0 && a6 == 0 ? v13 : 0;
  v16 = (v9 + 656);
  if (v9 + 656 < v9)
  {
    goto LABEL_401;
  }

  v17 = a1;
  if ((WORD6(v14) - 164) >= 1)
  {
    if (v12 < v16)
    {
      goto LABEL_401;
    }

    v18 = 4 * (WORD6(v14) - 164);
    if (v18 > v12 - v16)
    {
      goto LABEL_401;
    }

    if ((WORD6(v14) - 164) >= 0x345u)
    {
      goto LABEL_401;
    }

    memmove((a1 + 2020), v16, v18);
    if (a1 + 2020 + v18 < a1 + 2020)
    {
      goto LABEL_401;
    }
  }

  v19 = v266[41];
  v265 = v266 + 41;
  v267 = v266 + 23;
  if (v19 < 1)
  {
    v74 = 0;
  }

  else
  {
    v20 = 0;
    v259 = v266 + 30;
    v261 = v266 + 36;
    v21 = a1 + 800;
    do
    {
      v22 = &v261[v20];
      v23 = v22 + 1;
      v25 = v22 < v261 || v23 > v265 || v22 > v23;
      v26 = &v259[v20];
      v27 = v26 + 1;
      v29 = v25 || v27 > v261 || v26 > v27;
      v263 = v20 + 1;
      v30 = &v259[v20 + 1];
      v31 = v30 + 1;
      if (v29 || v30 < v259 || v31 > v261 || v30 > v31)
      {
        goto LABEL_401;
      }

      v35 = *v26;
      if (v35 < *v30)
      {
        v36 = *v22;
        do
        {
          v37 = v35 + 1;
          v38 = &v266[v35 + 1];
          v39 = v38 + 1;
          v41 = v38 < v266 || v39 > v267 || v38 > v39;
          v42 = &v266[v35];
          v43 = v42 + 1;
          if (v41 || v42 < v266 || v43 > v267 || v42 > v43)
          {
            goto LABEL_401;
          }

          v47 = *v38;
          v48 = *v42;
          v49 = v47 - v48;
          if (v10)
          {
            v50 = 1.0;
            if (v47 <= v48)
            {
              v56 = 1.0e-15;
            }

            else
            {
              v51 = 0;
              v52 = v10 + 4 * v48;
              v53 = v36 + v47 - v48;
              v54 = v47 - v48;
              v55 = 1.0e-15;
              v56 = 1.0e-15;
              v57 = 1.0e-15;
              v58 = v10 + 4 * v36;
              v59 = v9 + 4 * v36;
              do
              {
                v60 = (v52 + v51);
                v61 = v52 + v51 + 4;
                if (v52 + v51 < v10 || v61 > v15 || v60 > v61)
                {
                  goto LABEL_401;
                }

                v64 = (v59 + v51);
                if (v59 + v51 < v9)
                {
                  goto LABEL_401;
                }

                if ((v64 + 1) > v12)
                {
                  goto LABEL_401;
                }

                if (v64 > v64 + 1)
                {
                  goto LABEL_401;
                }

                v65 = (v58 + v51);
                if (v58 + v51 < v10 || (v65 + 1) > v15 || v65 > v65 + 1)
                {
                  goto LABEL_401;
                }

                v55 = v55 + *v60;
                v56 = v56 + (*v64 * *v64);
                v57 = v57 + *v65;
                v51 += 4;
                --v54;
              }

              while (v54);
              v36 = v53;
              v50 = v55 / v57;
            }

            v72 = (v56 / v49) * v50;
          }

          else
          {
            v66 = (v9 + 4 * v48);
            if (v66 > v12 || v66 < v9)
            {
              goto LABEL_401;
            }

            if ((v12 - v66) >> 2 < v49 || (v49 & 0x8000) != 0)
            {
              goto LABEL_401;
            }

            if (v49 < 1)
            {
              v70 = 0.0;
            }

            else
            {
              v69 = v49 & 0x7FFF;
              v70 = 0.0;
              do
              {
                v71 = *v66++;
                v70 = v70 + (v71 * v71);
                --v69;
              }

              while (v69);
            }

            v72 = (v70 / v49) + 1.0e-15;
          }

          v73 = (v21 + 4 * v35);
          if (v73 < v21 || (v73 + 1) > a1 + 892 || v73 > v73 + 1)
          {
            goto LABEL_401;
          }

          *v73 = fmaxf(fminf(((logf(v72) * 2.8854) + 16.0) + 0.5, 91.0), 0.0);
          v35 = v37;
        }

        while (v37 < *v30);
        v19 = *v265;
      }

      v20 = v263;
    }

    while (v263 < v19);
    v74 = v19 > 0;
    v17 = a1;
  }

  if (a5)
  {
    v75 = v252;
  }

  else
  {
    v75 = 0;
  }

  if (a5)
  {
    v76 = v251;
  }

  else
  {
    v76 = 0;
  }

  v77 = *(a2 + 110932);
  v247 = v77 == 1;
  if (v254 && v74)
  {
    v78 = 0;
    v79 = v17 + 1636;
    v80 = v17;
    do
    {
      v81 = (v80 + 405);
      v82 = (v80 + 404) < v17 + 1616 || v81 > v79;
      if (v82 || (v80 + 404) > v81)
      {
        goto LABEL_401;
      }

      v80[404] = 0;
      if ((v80 + 409) < v79)
      {
        goto LABEL_401;
      }

      if ((v80 + 410) > v17 + 1656)
      {
        goto LABEL_401;
      }

      if (v80 + 409 > v80 + 410)
      {
        goto LABEL_401;
      }

      v80[409] = 0;
      if ((v80 + 394) < v17 + 1576 || (v80 + 395) > v17 + 1596 || v80 + 394 > v80 + 395)
      {
        goto LABEL_401;
      }

      v80[394] = 0;
      ++v78;
      ++v80;
    }

    while (v78 < *v265);
  }

  v84 = 0;
  v85 = v17 + 1576;
  v86 = v17 + 1596;
  v87 = (v17 + 1616);
  do
  {
    v88 = v17 + v84;
    v89 = (v17 + v84 + 1576);
    v90 = v17 + v84 + 1580;
    v91 = v90 > v86 || v89 > v90;
    v92 = (v88 + 1596);
    v93 = v88 + 1600;
    if (v91 || v93 > v87 || v92 > v93)
    {
      goto LABEL_401;
    }

    *v92 = *v89;
    *v89 = 0;
    v84 += 4;
  }

  while (v84 != 20);
  if (v77 == 1 || *(v17 + 1656))
  {
    v96 = 5;
    while ((v87 + 1) <= v17 + 1636 && v87 <= v87 + 1)
    {
      *v87 = 0.0;
      if ((v87 + 6) > v17 + 1656 || v87 + 5 > v87 + 6)
      {
        break;
      }

      v87[5] = 0.0;
      ++v87;
      if (!--v96)
      {
        goto LABEL_154;
      }
    }

    goto LABEL_401;
  }

  if (!v75)
  {
    if (*v265 >= 1)
    {
      v212 = 0;
      v213 = 0;
      while (1)
      {
        v214 = v17 + v212 + 1576;
        v215 = v17 + v212 + 1580;
        v216 = v214 < v85 || v215 > v86;
        if (v216 || v214 > v215)
        {
          goto LABEL_401;
        }

        *(v17 + 4 * v213++ + 1576) = 1;
        v212 += 4;
        if (v213 >= *v265)
        {
          goto LABEL_154;
        }
      }
    }

    *(v17 + 1656) = v247;
    v98 = v266;
    LODWORD(v99) = v266[26];
LABEL_362:
    v218 = v98[50];
    if (v99 < v218)
    {
      v219 = v218 - v99;
      v220 = (v9 + 4 * v99);
      while (v220 >= v9 && (v220 + 1) <= v12 && v220 <= v220 + 1)
      {
        *v220++ = 0;
        if (!--v219)
        {
          goto LABEL_368;
        }
      }

      goto LABEL_401;
    }

    goto LABEL_368;
  }

  v160 = v266[41];
  if (v160 >= 1)
  {
    v161 = 0;
    v162 = v266 + 44;
    v163 = (v266 + 49);
    v245 = (v266 + 52);
    v260 = (v266 + 57);
    v248 = v17 + 1596;
    v253 = (v17 + 1656);
    v250 = v17 + 1576;
    v249 = v17 + 1636;
    do
    {
      v164 = &v162[v161];
      if (v164 + 4 > v163 || v164 > v164 + 4)
      {
        goto LABEL_401;
      }

      v262 = v161 + 1;
      v166 = &v162[v161 + 1];
      if (v166 < v162 || (v166 + 1) > v163 || v166 > v166 + 1)
      {
        goto LABEL_401;
      }

      v264 = v161;
      v167 = v162[v161];
      v168 = *v166;
      v169 = 0.0;
      v170 = 1.0;
      v171 = 1.0;
      if (v167 < v168)
      {
        v172 = 0;
        v173 = *v166;
        v174 = v168 - v167;
        v175 = (v75 + 4 * v167);
        do
        {
          if (v175 < v75 || (v175 + 1) > v76 || v175 > v175 + 1)
          {
            goto LABEL_401;
          }

          v176 = *v175++;
          v177 = v176;
          v178 = 1.1755e-38;
          if (v176 >= 1.1755e-38)
          {
            v178 = v177;
          }

          v179 = log(v178);
          v172 += (v179 * 1.44269502) & ~((v179 * 1.44269502) >> 31);
          v171 = v171 + v177;
          --v174;
        }

        while (v174);
        v169 = v172;
        v17 = a1;
        v86 = v248;
        v168 = v173;
      }

      v180 = v168 - v167;
      v181 = v171 / (v168 - v167);
      if (v181 != 0.0)
      {
        v182 = exp2(((v169 / (v168 - v167)) + 0.5));
        v170 = fminf(v182 / v181, 1.0);
      }

      v183 = 1.0;
      if (v167 < v168)
      {
        v184 = 0;
        v185 = v168;
        v186 = 0;
        v187 = v185 - v167;
        v188 = (v75 + 4 * v167);
        do
        {
          if (v188 < v75 || (v188 + 1) > v76 || v188 > v188 + 1)
          {
            goto LABEL_401;
          }

          v189 = *v188++;
          v190 = v189;
          if (v189 <= 1.1755e-38)
          {
            v190 = 1.1755e-38;
          }

          v191 = log(v190);
          v192 = (v191 * 1.44269502) & ~((v191 * 1.44269502) >> 31);
          v184 += v192 * v192;
          if (v192 > v186)
          {
            v186 = (v191 * 1.44269502) & ~((v191 * 1.44269502) >> 31);
          }

          --v187;
        }

        while (v187);
        v193 = v184 / v180;
        v194 = v184 / v180 < 1 || v186 == 0;
        v17 = a1;
        v86 = v248;
        if (!v194)
        {
          v195 = v186 / sqrt(v193);
          if (v195 <= 1.0)
          {
            v195 = 1.0;
          }

          v183 = v195;
        }
      }

      v85 = v250;
      v196 = (v249 + 4 * v264);
      v197 = &v87[v264];
      v198 = v170 / v183;
      v162 = v266 + 44;
      v163 = (v266 + 49);
      if (!v256 || *v253)
      {
        if (v196 < v249)
        {
          goto LABEL_401;
        }

        if (v196 + 1 > v253)
        {
          goto LABEL_401;
        }

        if (v196 > v196 + 1)
        {
          goto LABEL_401;
        }

        *(v249 + 4 * v264) = v198;
        if (v197 < v87 || (v197 + 1) > v249 || v197 > v197 + 1)
        {
          goto LABEL_401;
        }

        *v197 = v198;
      }

      if (v197 < v87 || (v197 + 1) > v249 || v197 > v197 + 1 || v196 < v249 || v196 + 1 > v253 || v196 > v196 + 1)
      {
        goto LABEL_401;
      }

      v199 = (v198 + *v197) + (*v196 * 0.5);
      if (v199 > 2.7)
      {
        v199 = 2.7;
      }

      *v197 = v198;
      *v196 = v199;
      v200 = (v260 + 4 * v264);
      if (v200 < v260 || v200 + 1 > v266 + 62 || v200 > v200 + 1)
      {
        goto LABEL_401;
      }

      if (v199 <= *v200)
      {
        v203 = &v245[v264];
        if (v203 < v245 || (v203 + 1) > v260 || v203 > v203 + 1)
        {
          goto LABEL_401;
        }

        v204 = *v203;
        v201 = (v250 + 4 * v264);
        v207 = (v201 + 1) <= v86 && v201 <= v201 + 1 && v201 >= v250;
        if (v199 <= v204)
        {
          if (!v207)
          {
            goto LABEL_401;
          }

          *v201 = 0;
          goto LABEL_341;
        }

        if (!v207)
        {
          goto LABEL_401;
        }

        v202 = 1;
      }

      else
      {
        v201 = (v250 + 4 * v264);
        if (v201 < v250 || (v201 + 1) > v86 || v201 > v201 + 1)
        {
          goto LABEL_401;
        }

        v202 = 2;
      }

      *v201 = v202;
LABEL_341:
      v160 = *v265;
      v161 = v262;
    }

    while (v262 < v160);
  }

  v208 = *v246;
  if (v208 <= 0xB && ((1 << v208) & 0xEF7) != 0)
  {
    v209 = v85 + 4 * v160;
    v210 = (v209 - 8);
    if (v209 - 8 < v85)
    {
      goto LABEL_401;
    }

    v211 = (v209 - 4);
    if (v209 - 4 > v86 || v210 > v211 || v209 > v86 || v211 > v209)
    {
      goto LABEL_401;
    }

    *v211 = *v210;
  }

LABEL_154:
  *(v17 + 1656) = v247;
  v98 = v266;
  v99 = v266[26];
  if (!v75)
  {
    goto LABEL_362;
  }

  v101 = v266[27];
  v100 = v266[28];
  v102 = v266[29];
  v103 = (v99 - 1);
  if (v99 >= 1)
  {
    v104 = 0;
    v105 = 0;
    v106 = 0.0;
    do
    {
      v107 = v75 + v104 + 4;
      if (v75 + v104 < v75 || v107 > v76 || v75 + v104 > v107)
      {
        goto LABEL_401;
      }

      v106 = v106 + (v105 * *(v75 + 4 * v105));
      ++v105;
      v104 += 4;
    }

    while (v99 != v105);
    v110 = 2.0;
    if (*v246 - 2 < 3)
    {
      v110 = 1.0;
    }

    v111 = (v9 + 4 * v103);
    if (v111 < v9)
    {
      goto LABEL_401;
    }

    if ((v111 + 1) > v12)
    {
      goto LABEL_401;
    }

    if (v111 > v111 + 1)
    {
      goto LABEL_401;
    }

    v112 = (v75 + 4 * v103);
    if (v112 < v75 || (v112 + 1) > v76 || v112 > v112 + 1)
    {
      goto LABEL_401;
    }

    v113 = v106 / (v110 * v99);
    v114 = *v111;
    v115 = 0;
    if (*v112 >= v113)
    {
      v116 = (v9 + 4 * v99);
      if (v116 < v9 || (v116 + 1) > v12 || v116 > v116 + 1)
      {
        goto LABEL_401;
      }

      v115 = *v116;
    }

    if (v99 < v101 - 1)
    {
      v117 = 4 * v99;
      v118 = v9;
      v119 = v75;
      do
      {
        v120 = (v119 + v117);
        v121 = v119 + v117 + 4;
        if (v119 + v117 < v75 || v121 > v76 || v120 > v121)
        {
          goto LABEL_401;
        }

        v124 = *v120;
        v125 = (v118 + v117);
        if (v124 >= v113)
        {
          v126 = v125 - 1;
          if ((v125 - 1) < v9)
          {
            goto LABEL_401;
          }

          if (v125 > v12)
          {
            goto LABEL_401;
          }

          if (v126 > v125)
          {
            goto LABEL_401;
          }

          *v126 = v114;
          v127 = (v118 + v117 + 4);
          if (v127 > v12)
          {
            goto LABEL_401;
          }

          if (v125 > v127)
          {
            goto LABEL_401;
          }

          v128 = v118 + v117 + 8;
          if (v128 > v12 || v127 > v128)
          {
            goto LABEL_401;
          }

          v114 = *v125;
          v115 = *v127;
        }

        else
        {
          if (v125 < v9 || (v125 + 1) > v12 || v125 > v125 + 1)
          {
            goto LABEL_401;
          }

          v114 = *v125;
          *v125 = v115;
          v115 = 0;
        }

        LODWORD(v99) = v99 + 1;
        v119 += 4;
        v118 += 4;
      }

      while (v101 - 1 > v99);
      v99 = (v101 - 1);
    }

    v129 = (v75 + 4 * v99);
    if (v129 < v75 || (v129 + 1) > v76 || v129 > v129 + 1)
    {
LABEL_401:
      __break(0x5519u);
    }

    if (*v129 < v113)
    {
      v130 = (v9 + 4 * v99);
      if (v130 < v9 || (v130 + 1) > v12 || v130 > v130 + 1)
      {
        goto LABEL_401;
      }

      *v130 = 0;
    }
  }

  v131 = v266[50];
  if (v101 < v131)
  {
    v132 = v131 - v101;
    v133 = 4 * v101;
    v134 = v9;
    v135 = v75;
    do
    {
      v136 = (v134 + v133);
      v137 = v134 + v133 + 4;
      v138 = v134 + v133 < v9 || v137 > v12;
      if (v138 || v136 > v137)
      {
        goto LABEL_401;
      }

      *v136 = 0;
      v140 = (v135 + v133);
      if (v135 + v133 < v75 || (v140 + 1) > v76 || v140 > v140 + 1)
      {
        goto LABEL_401;
      }

      *v140 = 0;
      v135 += 4;
      v134 += 4;
    }

    while (--v132);
  }

  if (v100 < v102)
  {
    v141 = v17 + 800;
    do
    {
      v142 = &v266[v100];
      v143 = v142 + 1;
      v144 = v142 < v266 || v143 > v267;
      v145 = v144 || v142 > v143;
      v146 = v100 + 1;
      v147 = &v266[v100 + 1];
      v148 = v147 + 1;
      v149 = !v145 && v147 >= v266;
      v150 = !v149 || v148 > v267;
      if (v150 || v147 > v148)
      {
        goto LABEL_401;
      }

      v152 = *v142;
      v153 = *v147;
      if (v152 <= *v147)
      {
        v154 = *v147;
      }

      else
      {
        v154 = v152;
      }

      if (v152 < v153)
      {
        v155 = 0;
        v156 = v154 - v152;
        v157 = (v9 + 4 * v152);
        do
        {
          if (v157 < v9 || (v157 + 1) > v12 || v157 > v157 + 1)
          {
            goto LABEL_401;
          }

          v158 = *v157++;
          if (v158 != 0.0)
          {
            ++v155;
          }

          --v156;
        }

        while (v156);
        if (v155)
        {
          v159 = (v141 + 4 * v100);
          if ((v159 + 1) > v17 + 892 || v159 > v159 + 1 || v159 < v141)
          {
            goto LABEL_401;
          }

          if (*v159)
          {
            --*v159;
          }
        }
      }

      v100 = v146;
    }

    while (v102 != v146);
  }

LABEL_368:
  v221 = *(a2 + 129332);
  v222 = *(a2 + 125964);
  v223 = *(a2 + 125968);
  v272 = -1;
  *&v224 = -1;
  *(&v224 + 1) = -1;
  v271[2] = v224;
  v271[3] = v224;
  v271[0] = v224;
  v271[1] = v224;
  v269 = 0.0;
  v268[0] = a2 + 125988;
  v268[1] = a2 + 129332;
  v268[2] = a2 + 125988;
  ITF_Detect(v268, v222, v223, v271, v273, &v269, &v270);
  v225 = v221 < 1.15;
  if (v269 >= 1.15)
  {
    v225 = 0;
  }

  *(a2 + 125984) = v225;
  v226 = *(a2 + 50);
  *(v17 + 2008) = 0;
  if (v17 + 2008 > (v17 + 2012))
  {
    goto LABEL_401;
  }

  result = IGFEncWriteBitstream(v17);
  if (!a5)
  {
    v228 = *(a2 + 50);
    v229 = *(a2 + 40);
    *(a2 + 50) = v226;
    v230 = v229 + 4 * v226;
    if (v230 > v229 + 7812)
    {
      goto LABEL_401;
    }

    if (v230 < v229)
    {
      goto LABEL_401;
    }

    v231 = (v228 - v226);
    if (v231 < 0 || (7812 - 4 * v226) >> 2 < (v228 - v226))
    {
      goto LABEL_401;
    }

    v232 = (v17 + 1980);
    v233 = *(v17 + 1980);
    if (v231 < 1)
    {
      v235 = 0;
    }

    else
    {
      v234 = 0;
      v235 = 0;
      v236 = v17 + 1660;
      v237 = 0x80u >> (v233 & 7);
      result = (v17 + 1660 + (v233 >> 3));
      do
      {
        v238 = (v230 + 4 * v234);
        v239 = v238[1];
        if (v239 != 0xFFFF)
        {
          LOWORD(v240) = v238[1];
          if (v239 >= 1)
          {
            LOWORD(v241) = 0;
            v242 = 1 << (v239 - 1);
            do
            {
              v243 = *v238;
              if (v237 == 128)
              {
                if (result >= v232 || result < v236)
                {
                  goto LABEL_401;
                }

                *result = 0;
              }

              if ((v242 & v243) != 0)
              {
                if (result >= v232 || result < v236)
                {
                  goto LABEL_401;
                }

                *result |= v237;
              }

              v244 = v237 >= 2;
              if (v237 >= 2)
              {
                v237 >>= 1;
              }

              else
              {
                v237 = 128;
              }

              if (!v244)
              {
                result = (result + 1);
              }

              v242 >>= 1;
              v241 = (v241 + 1);
              v240 = v238[1];
            }

            while (v241 < v240);
          }

          v235 += v240;
        }

        ++v234;
      }

      while (v234 != v231);
      v233 = *v232;
    }

    *v232 = v233 + v235;
    *(a2 + 36) -= *(v17 + 2008);
  }

  return result;
}

void ITF_Detect(void *a1, int a2, int a3, _DWORD *a4, unint64_t a5, float *a6, _DWORD *a7)
{
  *v125 = *MEMORY[0x1E69E9840];
  __C = -1;
  v121 = -1;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, &__C, 1, 3uLL);
  v115 = a2;
  v10 = a3 - a2;
  v116 = v10;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = a1[1];
    v14 = *a1 - 656;
    v15 = v10;
    do
    {
      v16 = v10 * v12 / 3u;
      v17 = v14 + 4 * (v16 + v115);
      if (v17 > v13 || a1[2] > v17)
      {
        goto LABEL_161;
      }

      v18 = v12 + 1;
      v19 = v116 * (v12 + 1) / 3u - v16;
      if ((v13 - v17) >> 2 < v19 || (v19 & 0x8000) != 0)
      {
        goto LABEL_161;
      }

      if (v19 < 1)
      {
        v23 = 0.0;
      }

      else
      {
        v21 = ((v15 / 3) - (v11 / 3)) & 0x7FFF;
        v22 = (v14 + 4 * (v115 + ((v11 * 0x5555555555555556uLL) >> 64)));
        v23 = 0.0;
        do
        {
          v24 = *v22++;
          v23 = v23 + (v24 * v24);
          --v21;
        }

        while (v21);
      }

      v25 = &__C + v12;
      if (v25 + 1 > &v122 || v25 > v25 + 1)
      {
        goto LABEL_161;
      }

      *v25 = v23;
      v10 = v116;
      v15 += v116;
      v11 += v116;
      v12 = v18;
    }

    while (v18 != 3);
  }

  v118 = -1;
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v117[2] = v27;
  v117[3] = v27;
  v117[0] = v27;
  v117[1] = v27;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, v117, 1, 0x11uLL);
  v28 = 0;
  do
  {
    v29 = *(&__C + v28);
    if (v29 <= 32768.0)
    {
      *a6 = 0.0;
      return;
    }

    v30 = 0;
    v31 = 1.0 / v29;
    v114 = v28 + 1;
    v32 = v10 * (v28 + 1) / 3;
    v33 = v10 * v28 / 3;
    v34 = v33 + v115;
    v35 = (v32 - v33);
    v36 = v32 - v33 - 1;
    v37 = 4 * v35 - 4;
    do
    {
      if (&tnsAcfWindow[v30 + 4] > tnsCoeff4)
      {
        goto LABEL_161;
      }

      v38 = a1[1];
      v39 = (*a1 + 4 * v34 - 656);
      if (v39 > v38 || a1[2] > v39 || (v35 & 0x80000000) != 0 || (v38 - v39) >> 2 < v35)
      {
        goto LABEL_161;
      }

      v40 = (*a1 + 4 * v34 - 652 + v30);
      v41 = v40 <= &v39[v35] && v40 >= v39;
      v42 = v41 && v36 <= v35;
      v43 = !v42 || v37 >> 2 < v36;
      if (v43 || v36 < 0)
      {
        goto LABEL_161;
      }

      v45 = *&tnsAcfWindow[v30];
      LODWORD(__A[0]) = -1;
      vDSP_dotpr(v39, 1, v40, 1, __A, v36 & 0x7FFF);
      v46 = (v117 + v30 + 4);
      if (v46 < v117)
      {
        goto LABEL_161;
      }

      v47 = (v117 + v30 + 8);
      if (v47 > v119 || v46 > v47)
      {
        goto LABEL_161;
      }

      *v46 = *v46 + ((v31 * v45) * *__A);
      v30 += 4;
      --v36;
      v37 -= 4;
    }

    while (v30 != 32);
    v28 = v114;
    v10 = v116;
  }

  while (v114 != 3);
  *a6 = 0.0;
  LODWORD(v117[0]) = 1077936128;
  memset(&__A[6], 0, 32);
  if (v116 / 4 >= 8)
  {
    v48 = 8;
  }

  else
  {
    v48 = v116 / 4;
  }

  memset(__A, 0, 96);
  v49 = v48;
  memset(v123, 0, sizeof(v123));
  if (v116 >= 4)
  {
    v50 = 0;
    v51 = __A + 4 * v48;
    v52 = 3.0;
    v53 = v49;
    do
    {
      v54 = __A + v50 + 4;
      if ((__A + v50) < __A || v54 > v125 || __A + v50 > v54)
      {
        goto LABEL_161;
      }

      *(__A + v50) = v52;
      v57 = (v117 + v50 + 4);
      if (v57 < v117)
      {
        goto LABEL_161;
      }

      v58 = (v117 + v50 + 8);
      if (v58 > v119)
      {
        goto LABEL_161;
      }

      if (v57 > v58)
      {
        goto LABEL_161;
      }

      v59 = &v51[v50];
      if (&v51[v50] < __A || v59 + 4 > v125 || v59 > v59 + 4)
      {
        goto LABEL_161;
      }

      v52 = *v57;
      *v59 = *v57;
      v50 += 4;
      --v53;
    }

    while (v53);
    v60 = 0;
    v61 = v49;
    v62 = v49;
    while (1)
    {
      v63 = 0.0;
      if (*__A >= 0.000015259)
      {
        v64 = &v51[4 * v60];
        if (v64 < __A)
        {
          break;
        }

        if (v64 + 1 > v125 || v64 > v64 + 1)
        {
          break;
        }

        v63 = -*v64 / *__A;
      }

      if (v63 >= -0.999)
      {
        v66 = v63;
      }

      else
      {
        v66 = -0.999;
      }

      if (v66 > 0.999)
      {
        v66 = 0.999;
      }

      v67 = v123 + v60;
      v68 = v67 + 1;
      v69 = v67 < v123 || v68 > __A;
      if (v69 || v67 > v68)
      {
        break;
      }

      *v67 = v66;
      v71 = __A;
      v72 = v62;
      do
      {
        v73 = &v71[v61];
        if (&v71[v61] < __A)
        {
          goto LABEL_161;
        }

        v74 = v73 + 1 > v125 || v73 > v73 + 1;
        v75 = v71 + 1;
        v76 = !v74 && v71 >= __A;
        v77 = !v76 || v75 > v125;
        if (v77 || v71 > v75)
        {
          goto LABEL_161;
        }

        v79 = *v73 + (v66 * *v71);
        *v71 = *v71 + (v66 * *v73);
        ++v71;
        *v73 = v79;
        --v72;
      }

      while (v72);
      ++v60;
      --v62;
      ++v61;
      if (v60 == v49)
      {
        goto LABEL_103;
      }
    }

LABEL_161:
    __break(0x5519u);
  }

LABEL_103:
  v80 = a4 + 1;
  if ((a4 + 1) > a5)
  {
    goto LABEL_161;
  }

  if (v80 < a4)
  {
    goto LABEL_161;
  }

  *a4 = 1065353216;
  if ((a4 + 2) > a5 || v80 > a4 + 2)
  {
    goto LABEL_161;
  }

  *v80 = v123[0];
  if (v116 >= 8)
  {
    v81 = 0;
    v82 = 1;
    do
    {
      if (v82 >> 1 <= 1)
      {
        v83 = 1;
      }

      else
      {
        v83 = v82 >> 1;
      }

      v84 = v123 + v82;
      if (v82 >= 2)
      {
        v85 = 0;
        v88 = v84 + 1 <= __A && v84 <= v84 + 1 && v84 >= v123;
        v89 = v83;
        v90 = v81;
        do
        {
          v91 = &a4[v85 + 1];
          v92 = &a4[v85 + 2];
          if (v91 < a4 || v92 > a5 || v91 > v92)
          {
            goto LABEL_161;
          }

          if (!v88)
          {
            goto LABEL_161;
          }

          v95 = (a4 + v90 + 4);
          if (v95 < a4)
          {
            goto LABEL_161;
          }

          v96 = a4 + v90 + 8;
          if (v96 > a5 || v95 > v96)
          {
            goto LABEL_161;
          }

          v97 = *v91;
          v98 = *v84;
          *v91 = *v91 + (*v84 * *v95);
          *v95 = *v95 + (v98 * v97);
          v90 -= 4;
          ++v85;
          --v89;
        }

        while (v89);
        if ((v82 & 1) == 0)
        {
          goto LABEL_155;
        }

        v83 = v83;
      }

      else
      {
        v83 = 0;
      }

      v99 = v84 + 1;
      v101 = v84 < v123 || v99 > __A || v84 > v99;
      v102 = &a4[v83];
      v103 = (v102 + 1);
      v104 = (v102 + 2);
      if (v101 || v103 < a4 || v104 > a5 || v103 > v104)
      {
        goto LABEL_161;
      }

      *v103 = *v103 + (*v84 * *v103);
LABEL_155:
      v108 = v82 + 1;
      v109 = &a4[v82 + 1];
      if (v109 < a4 || (v109 + 1) > a5 || v109 > v109 + 1)
      {
        goto LABEL_161;
      }

      *v109 = *(v123 + v82);
      v81 += 4;
      ++v82;
    }

    while (v108 != v49);
  }

  *a6 = (*v117 + 1.0e-30) / (*__A + 1.0e-30);
  *a7 = 8;
}

unint64_t lag_wind_11465(unint64_t result, unint64_t a2, int a3, int a4)
{
  if (a3 <= 23999)
  {
    switch(a3)
    {
      case 8000:
        v5 = lag_window_8k;
        goto LABEL_17;
      case 12800:
        v4 = &lag_window_12k8;
        break;
      case 16000:
        v4 = &lag_window_16k;
        break;
      default:
        return result;
    }
  }

  else if (a3 > 31999)
  {
    if (a3 != 32000)
    {
      if (a3 != 48000)
      {
        return result;
      }

      v5 = &lag_window_48k;
      goto LABEL_17;
    }

    v4 = &lag_window_32k;
  }

  else
  {
    if (a3 != 24000 && a3 != 25600)
    {
      return result;
    }

    v4 = &lag_window_25k6;
  }

  v5 = &v4[68 * a4];
LABEL_17:
  v6 = 0;
  while (1)
  {
    v7 = &v5[v6];
    v8 = (v7 + 1);
    v9 = v7 < v5 || v8 > (v5 + 17);
    v10 = v9 || v7 >= v8;
    v11 = (result + 4 * v6);
    v12 = v11 + 1;
    v13 = !v10 && v11 >= result;
    v14 = !v13 || v12 > a2;
    if (v14 || v11 >= v12)
    {
      break;
    }

    *v11 = *v7 * *v11;
    v10 = v6++ >= 0x10;
    if (v10)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t GetParameters(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, unint64_t *a5, _DWORD *a6, _DWORD *a7)
{
  v11 = 0;
  v47 = -1431655766;
  v45 = (a1 + 2);
  v12 = a1 + 162;
  v14 = *a1;
  result = (a1 + 18);
  v43 = v14;
  v44 = v12;
  v41 = result;
  while (v43 < 1)
  {
LABEL_51:
    v11 = (v11 + 1);
    if (v11 == a2)
    {
      return result;
    }
  }

  v15 = v41;
  v16 = v43;
  while (v45 <= v15 - 64 && v15 <= v44)
  {
    result = (*(v15 - 40))(a3, a4, v11, &v47);
    if (*(v15 - 48) || *(v15 - 24))
    {
      v18 = *a5;
      v19 = *a5 + 24;
      if (v19 > a5[1] || v18 > v19 || v18 < a5[2])
      {
        break;
      }

      v22 = v47;
      v24 = *(v18 + 8);
      v23 = *(v18 + 16);
      v25 = *v18;
      v26 = *v18 + 4;
      *v18 = v26;
      v27 = v25 > v26 || v26 > v24;
      if (v27 || v25 < v23)
      {
        break;
      }

      *v25 = v22;
    }

    else
    {
      v30 = *a5;
      v31 = *a5 + 24;
      if (v31 > a5[1] || v30 > v31 || v30 < a5[2])
      {
        break;
      }

      v34 = v47;
      v36 = *(v30 + 8);
      v35 = *(v30 + 16);
      v37 = *v30;
      v38 = *v30 + 4;
      *v30 = v38;
      v39 = v37 > v38 || v38 > v36;
      if (v39 || v37 < v35)
      {
        break;
      }

      *v37 = v34 - 1;
    }

    ++*a6;
    v29 = *(v15 - 64);
    if (!v29)
    {
      v29 = (*(v15 - 56))(v47, v11);
    }

    *a7 += v29;
    result = *(v15 - 8);
    if (result)
    {
      if (v47 >= 1)
      {
        result = GetParameters();
      }
    }

    v15 += 64;
    if (!--v16)
    {
      goto LABEL_51;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t ResetTnsData(_DWORD *a1)
{
  v1 = 0;
  v2 = a1 + 1;
  *a1 = 0;
  result = (a1 + 25);
  v4 = 1;
LABEL_2:
  v5 = v4;
  v6 = &v2[12 * v1];
  if (v6 + 48 <= result)
  {
    *v6 = 0;
    *(v6 + 40) = 1065353216;
    v7 = v6 + 40;
    if (v6 <= v6 + 48)
    {
      *(v6 + 4) = 0;
      v8 = (v6 + 8);
      v9 = v8;
      v10 = 8;
      while (v9 >= v8 && (v9 + 1) <= v7 && v9 <= v9 + 1)
      {
        *v9++ = 0;
        if (!--v10)
        {
          v4 = 0;
          v1 = 1;
          if (v5)
          {
            goto LABEL_2;
          }

          return result;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void TCX_MDST(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v140[0] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v15 = v5 / 2;
  if (v5 >= 2)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = (v14 + 4 * (v15 + v7 + ~v16));
      v19 = v18 + 1;
      v20 = v18 < v14 || v19 > v13;
      v21 = v20 || v18 > v19;
      v22 = &__b[v15 + v3 / 2 + v16];
      v23 = v22 + 1;
      v24 = !v21 && v22 >= __b;
      v25 = !v24 || v23 > v138;
      if (v25 || v22 > v23)
      {
        break;
      }

      *v22 = -*v18;
      v16 = ++v17;
      if (v15 <= v17)
      {
        goto LABEL_20;
      }
    }

LABEL_179:
    __break(0x5519u);
  }

LABEL_20:
  v27 = v7 / 2;
  if (v7 >= 2)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = (v14 + 4 * v29);
      v31 = v30 + 1;
      v32 = v30 < v14 || v31 > v13;
      v33 = v32 || v30 > v31;
      v34 = (v14 + 4 * (~v28 + v7));
      v35 = v34 + 1;
      v36 = !v33 && v34 >= v14;
      v37 = !v36 || v35 > v13;
      v38 = v37 || v34 > v35;
      v39 = &__b[2 * v15 + v3 / 2 + v28];
      v40 = v39 + 1;
      v41 = !v38 && v39 >= __b;
      v42 = !v41 || v40 > v138;
      if (v42 || v39 > v40)
      {
        goto LABEL_179;
      }

      v44 = -*v34 - *v30;
      *v39 = v44;
      v28 = ++v29;
    }

    while (v27 > v29);
  }

  if (v5 > 1)
  {
    v45 = 0;
    v46 = 0;
    v47 = v3 / 2;
    while (1)
    {
      v48 = (v14 + 4 * (v15 + v7 + v45));
      v49 = v48 + 1;
      v50 = v48 < v14 || v49 > v13;
      v51 = v50 || v48 > v49;
      v52 = &__b[v15 + v3 / 2 + ~v45];
      v53 = v52 + 1;
      v54 = !v51 && v52 >= __b;
      v55 = !v54 || v53 > v138;
      if (v55 || v52 > v53)
      {
        goto LABEL_179;
      }

      *v52 = -*v48;
      v45 = ++v46;
      if (v15 <= v46)
      {
        goto LABEL_69;
      }
    }
  }

  v47 = v3 / 2;
LABEL_69:
  if (v3 >= 2)
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = (v14 + 4 * (v57 + v5 + v7));
      v60 = v59 + 1;
      v61 = v59 < v14 || v60 > v13;
      v62 = v61 || v59 > v60;
      v63 = ~v57;
      v64 = (v14 + 4 * (v5 + v7 + v3 + ~v57));
      v65 = v64 + 1;
      v66 = !v62 && v64 >= v14;
      v67 = !v66 || v65 > v13;
      v68 = v67 || v64 > v65;
      v69 = &__b[v47 + v63];
      v70 = v69 + 1;
      v71 = !v68 && v69 >= __b;
      v72 = !v71 || v70 > v138;
      if (v72 || v69 > v70)
      {
        goto LABEL_179;
      }

      *v69 = *v64 - *v59;
      v57 = ++v58;
    }

    while (v47 > v58);
  }

  if (v9 < v11)
  {
    goto LABEL_179;
  }

  v74 = v27 + v5 + v47;
  if ((v9 - v11) >> 2 < v74)
  {
    goto LABEL_179;
  }

  if (((v27 + v5 + v47) & 0x8000) != 0)
  {
    goto LABEL_179;
  }

  v75 = v74;
  if (v74 > 1200)
  {
    goto LABEL_179;
  }

  v136 = v27 + v5 + v47;
  memset(v139, 255, sizeof(v139));
  memset(v138, 255, sizeof(v138));
  edct_table = get_edct_table(v75);
  v78 = v77;
  v79 = v136 >> 1;
  if (v75 >= 2)
  {
    v80 = 0;
    v81 = 0;
    v82 = &__b[v136 & 0x7FFF];
    v83 = v136 & 0x7FFF;
    if (v79 <= 1)
    {
      v84 = 1;
    }

    else
    {
      v84 = v136 >> 1;
    }

    v85 = v136 >> 1;
    v86 = 4 * v84;
    do
    {
      v87 = &__b[v83];
      v88 = &__b[v83 - 1];
      v89 = v88 < __b || v87 > v82;
      if (v89 || v88 > v87)
      {
        goto LABEL_179;
      }

      v91 = &edct_table[v81 / 4];
      v92 = &edct_table[v81 / 4 + 1];
      if (v92 > v78)
      {
        goto LABEL_179;
      }

      if (v91 > v92)
      {
        goto LABEL_179;
      }

      if (v91 < edct_table)
      {
        goto LABEL_179;
      }

      v93 = &__b[v80];
      if (&__b[v80] < __b)
      {
        goto LABEL_179;
      }

      if (v93 + 1 > v82)
      {
        goto LABEL_179;
      }

      if (v93 > v93 + 1)
      {
        goto LABEL_179;
      }

      v94 = &edct_table[v85];
      if (&edct_table[v85] > v78)
      {
        goto LABEL_179;
      }

      v95 = (v94 - 4);
      if (v94 < 4)
      {
        goto LABEL_179;
      }

      if (v95 < edct_table)
      {
        goto LABEL_179;
      }

      v96 = &v139[v81];
      if (&v139[v81] < v139)
      {
        goto LABEL_179;
      }

      if (v96 + 4 > v140)
      {
        goto LABEL_179;
      }

      if (v96 > v96 + 4)
      {
        goto LABEL_179;
      }

      v97 = *v88;
      v98 = *v91;
      v99 = *v93;
      v100 = *v95;
      *&v139[v81] = (*v93 * *v95) + (*v88 * *v91);
      v101 = &v138[v81];
      if (&v138[v81] < v138 || v101 + 4 > v139 || v101 > v101 + 4)
      {
        goto LABEL_179;
      }

      *&v138[v81] = (v99 * v98) - (v97 * v100);
      v81 += 4;
      --v85;
      v80 += 2;
      v83 -= 2;
    }

    while (v86 != v81);
  }

  if (v136 > 0x4B1u)
  {
    goto LABEL_179;
  }

  DoFFT(v139);
  if (v75 >= 2)
  {
    v102 = 0;
    v103 = 2.3562 / v75;
    if (v79 <= 1)
    {
      v104 = 1;
    }

    else
    {
      v104 = v136 >> 1;
    }

    do
    {
      v105 = &v139[v102 + 4];
      v107 = &v139[v102] < v139 || v105 > v140 || &v139[v102] > v105;
      v108 = &v138[v102];
      v109 = &v138[v102 + 4];
      if (v107 || v108 < v138 || v109 > v139 || v108 > v109)
      {
        goto LABEL_179;
      }

      v113 = *&v139[v102];
      v114 = *&v138[v102];
      *&v138[v102] = v114 + (v113 * v103);
      *&v139[v102] = v113 - (v114 * v103);
      v102 += 4;
    }

    while (4 * v104 != v102);
    v115 = 0;
    v116 = 0;
    v117 = v136 & 0x7FFF;
    v118 = v136 >> 1;
    v119 = 4 * v104;
    v120 = &v11[v136 & 0x7FF];
    do
    {
      v121 = &v139[v116 + 4];
      v122 = &v139[v116] < v139 || v121 > v140;
      if (v122 || &v139[v116] > v121)
      {
        goto LABEL_179;
      }

      v124 = &edct_table[v116 / 4];
      v125 = &edct_table[v116 / 4 + 1];
      if (v125 > v78)
      {
        goto LABEL_179;
      }

      if (v124 > v125)
      {
        goto LABEL_179;
      }

      if (v124 < edct_table)
      {
        goto LABEL_179;
      }

      v126 = &v138[v116];
      if (&v138[v116] < v138)
      {
        goto LABEL_179;
      }

      if (v126 + 1 > v139)
      {
        goto LABEL_179;
      }

      if (v126 > v126 + 1)
      {
        goto LABEL_179;
      }

      v127 = &edct_table[v118];
      if (&edct_table[v118] > v78)
      {
        goto LABEL_179;
      }

      v128 = (v127 - 4);
      if (v127 < 4)
      {
        goto LABEL_179;
      }

      if (v128 < edct_table)
      {
        goto LABEL_179;
      }

      v129 = &v11[v115];
      if (&v11[v115] < v11)
      {
        goto LABEL_179;
      }

      if ((v129 + 1) > v120)
      {
        goto LABEL_179;
      }

      if (v129 > v129 + 1)
      {
        goto LABEL_179;
      }

      v130 = *&v139[v116];
      v131 = *v126;
      *v129 = (*v126 * *v128) + (v130 * *v124);
      v132 = &v11[v117];
      v133 = &v11[v117 - 1];
      if (v133 < v11 || v132 > v120 || v133 > v132)
      {
        goto LABEL_179;
      }

      v116 += 4;
      *v133 = (v131 * *v124) - (v130 * *v128);
      v117 -= 2;
      v115 += 2;
      --v118;
    }

    while (v119 != v116);
  }

  if (v136)
  {
    v134 = sqrtf(160.0 / v136);
    v135 = v136 & 0x7FF;
    do
    {
      *v11 = *v11 * v134;
      ++v11;
      --v135;
    }

    while (v135);
  }
}

uint64_t attenuateNbSpectrum(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result >= 20)
  {
    v3 = result / 0x14uLL;
    v4 = flt_19B0B0010[(result - 160) < 0x14];
    for (i = (a2 + 4 * (result - v3)); i >= a2 && (i + 1) <= a3 && i <= i + 1; ++i)
    {
      *i = v4 * *i;
      v4 = v4 * v4;
      if (!--v3)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

float *interpolate_corr(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  v4 = &E_ROM_inter4_1_11466;
  v5 = &Env_TR_Cdbk1;
  if (a3 == 6)
  {
    v5 = &E_ROM_inter4_1_11466;
    v4 = &E_ROM_inter6_1;
  }

  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  result = (*a1 + 4);
  v10 = 4 * a2;
  v11 = 4 * a3;
  v12 = v11 - v10;
  v13 = 0.0;
  v14 = v4;
  while ((v7 + 1) <= v6)
  {
    if (v7 > v7 + 1)
    {
      break;
    }

    if (v7 < v8)
    {
      break;
    }

    v15 = &v14[v10];
    if (&v14[v10] < v4)
    {
      break;
    }

    v16 = &v14[v10 + 4];
    if (v16 > v5)
    {
      break;
    }

    if (v15 > v16)
    {
      break;
    }

    if ((result + 1) > v6)
    {
      break;
    }

    if (result > result + 1)
    {
      break;
    }

    if (result < v8)
    {
      break;
    }

    v17 = &v14[v12];
    if (&v14[v12] < v4)
    {
      break;
    }

    v18 = &v14[v12 + 4];
    if (v18 > v5 || v17 > v18)
    {
      break;
    }

    v19 = *v7--;
    v13 = v13 + ((*result * *v17) + (v19 * *v15));
    v14 += v11;
    ++result;
    if (v3++ >= 3)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t GetTCXAvgTemporalFlatnessMeasure(uint64_t result, int a2, int a3)
{
  v3 = 0.0;
  if (a3 >= -7)
  {
    v4 = (result + 204 + 4 * (*(result + 300) - (a2 + a3)));
    v5 = (a3 + 8);
    while (1)
    {
      v6 = (v4 + 1) > result + 300 || v4 >= v4 + 1;
      if (v6 || v4 < result + 204)
      {
        break;
      }

      v8 = *v4++;
      v3 = v3 + v8;
      if (!--v5)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

float *predict_signal(float *result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  if ((-a4 & 0x8000u) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = -4;
  }

  if ((-a4 & 0x8000u) == 0)
  {
    v7 = -a4;
  }

  else
  {
    LOWORD(v7) = a5 - a4;
  }

  v8 = &inter6_2tcx2;
  if (a5 != 6)
  {
    v8 = &inter4_2tcx2;
  }

  if (a6 >= 1)
  {
    v9 = &v8[16 * v7];
    v10 = v9 + 1;
    v11 = (v9 + 2);
    v13 = v9 + 3 <= v9 + 4 && v11 <= (v9 + 3);
    if (v10 >= v9 && v11 <= (v9 + 4) && v10 <= v11)
    {
      v14 = 0;
      v15 = *(result + 1);
      v16 = *(result + 2);
      v17 = *result + 4 * ~a3 + v6;
      v18 = *v10;
      while (1)
      {
        v19 = (v17 + v14);
        result = (v17 + v14 + 4);
        v20 = (v17 + v14 + 8);
        v21 = v20 > v15 || result > v20;
        if (v21 || result < v16)
        {
          break;
        }

        if (!v13)
        {
          break;
        }

        v23 = (v17 + v14 + 12);
        if (v23 > v15)
        {
          break;
        }

        if (v20 > v23)
        {
          break;
        }

        if (v19 > result)
        {
          break;
        }

        if (v19 < v16)
        {
          break;
        }

        v24 = v17 + v14 + 16;
        if (v24 > v15 || v23 > v24)
        {
          break;
        }

        *(a2 + v14) = (((v9[2] * *v20) + (v18 * *result)) + (*v9 * *v19)) + (v9[3] * *v23);
        v14 += 4;
        if (4 * a6 == v14)
        {
          return result;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}