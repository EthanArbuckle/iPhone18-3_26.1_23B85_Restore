uint64_t vt_Copy_420vf_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2)
{
  v7 = 2 * *result;
  v8 = *(result + 13);
  v9 = v8 * a2 / v7;
  v10 = 2 * ((v8 + v8 * a2) / v7 - v9);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(result + 19);
    v13 = *(result + 24) & 0xFFFFFFFE;
    v15 = *(result + 7);
    v14 = *(result + 8);
    v16 = *v14;
    v17 = v14[1];
    v18 = v14[2];
    *&v19 = *(v12 + 128);
    *&v20 = *(v12 + 136);
    v21 = *&v20 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    LOWORD(v20) = *(v12 + 142);
    v22 = *v12;
    v23 = *(v12 + 8);
    v24 = *(v12 + 16);
    v25 = *(v12 + 20);
    v26 = *(v12 + 28);
    v27 = *(result + 44) + 2 * (*(result + 28) * a2 / v7);
    v28 = **(result + 17);
    v29 = v19;
    v30 = v20;
    v31 = v21 * v22;
    v32 = v21 * v23;
    v33 = v21 * v24;
    v34 = v21 * v25;
    v35 = v21 * v26;
    v36 = (**(result + 16) + v28 * (*(result + 15) + 2 * v9) + 8 * *(result + 14));
    v37 = v15[2];
    v38 = v37 + v27 * v18;
    v39 = *v15 + v27 * v16;
    v40 = v15[1] + v27 / 2 * v17;
    v41 = *(result + 36);
    if (v37)
    {
      v42 = (v38 + v41);
    }

    else
    {
      v42 = 0;
    }

    v43 = (v39 + v41);
    v44 = v40 + v41;
    do
    {
      v45 = &v43[v16];
      v46 = &v42[v18];
      v47 = &v36[v28];
      if (v13 >= 1)
      {
        v48 = 0;
        v49 = &v36[v28];
        v50 = &v43[v16];
        v51 = &v42[v18];
        do
        {
          if (v42)
          {
            v52 = *v42;
            v53 = v42[1];
            v42 += 2;
            v54 = *v51;
            v55 = v51[1];
            v51 += 2;
          }

          else
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v55 = 0;
          }

          LOBYTE(v2) = *(v44 + v48 + 1);
          v56 = LODWORD(v2) - v30;
          v57 = v32 * v56;
          LOBYTE(v3) = *v43;
          v58 = v31 * (LODWORD(v3) - v29);
          v59 = (v32 * v56) + v58;
          v60 = v52 | (v52 << 8);
          if (v42)
          {
            v61 = v60;
          }

          else
          {
            v61 = -1;
          }

          if (v42)
          {
            v62 = v53 | (v53 << 8);
          }

          else
          {
            v62 = -1;
          }

          if (v42)
          {
            v63 = v54 | (v54 << 8);
          }

          else
          {
            v63 = -1;
          }

          v64 = v55 | (v55 << 8);
          if (!v42)
          {
            v64 = -1;
          }

          v65 = 65535.0;
          if (v59 <= 65535.0)
          {
            v65 = (v32 * v56) + v58;
            if (v59 < 0.0)
            {
              v65 = 0.0;
            }
          }

          LOBYTE(v59) = *(v44 + v48);
          v66 = LODWORD(v59) - v30;
          v67 = (v34 * v56) + (v66 * v33);
          LOBYTE(v6) = v43[1];
          LOBYTE(v5) = *v50;
          LOBYTE(v4) = v50[1];
          *v36 = llroundf(v65);
          v68 = 65535.0;
          if ((v58 + v67) <= 65535.0)
          {
            v68 = v58 + v67;
            if ((v58 + v67) < 0.0)
            {
              v68 = 0.0;
            }
          }

          v3 = v35 * v66;
          v69 = v3 + v58;
          *(v36 + 1) = llroundf(v68);
          v70 = 65535.0;
          if (v69 <= 65535.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = v31 * (LODWORD(v6) - v29);
          *(v36 + 2) = llroundf(v70);
          *(v36 + 3) = v61;
          v72 = 65535.0;
          if ((v57 + v71) <= 65535.0)
          {
            v72 = v57 + v71;
            if ((v57 + v71) < 0.0)
            {
              v72 = 0.0;
            }
          }

          *(v36 + 4) = llroundf(v72);
          v73 = 65535.0;
          if ((v67 + v71) <= 65535.0)
          {
            v73 = v67 + v71;
            if ((v67 + v71) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v3 + v71;
          *(v36 + 5) = llroundf(v73);
          v75 = (v3 + v71) <= 65535.0;
          v76 = 65535.0;
          if (v75)
          {
            v76 = v74;
            if (v74 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v31 * (LODWORD(v5) - v29);
          *(v36 + 6) = llroundf(v76);
          *(v36 + 7) = v62;
          v78 = 65535.0;
          if ((v57 + v77) <= 65535.0)
          {
            v78 = v57 + v77;
            if ((v57 + v77) < 0.0)
            {
              v78 = 0.0;
            }
          }

          *v49 = llroundf(v78);
          v79 = 65535.0;
          if ((v67 + v77) <= 65535.0)
          {
            v79 = v67 + v77;
            if ((v67 + v77) < 0.0)
            {
              v79 = 0.0;
            }
          }

          v6 = v3 + v77;
          *(v49 + 1) = llroundf(v79);
          v75 = (v3 + v77) <= 65535.0;
          v5 = 65535.0;
          if (v75)
          {
            v5 = v6;
            if (v6 < 0.0)
            {
              v5 = 0.0;
            }
          }

          v4 = v31 * (LODWORD(v4) - v29);
          v80 = v57 + v4;
          *(v49 + 2) = llroundf(v5);
          *(v49 + 3) = v63;
          v75 = (v57 + v4) <= 65535.0;
          v81 = 65535.0;
          if (v75)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v67 + v4;
          *(v49 + 4) = llroundf(v81);
          v83 = 65535.0;
          if (v82 <= 65535.0)
          {
            v83 = v82;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          *(v49 + 5) = llroundf(v83);
          v2 = 65535.0;
          if ((v3 + v4) <= 65535.0)
          {
            v2 = v3 + v4;
            if ((v3 + v4) < 0.0)
            {
              v2 = 0.0;
            }
          }

          v43 += 2;
          v50 += 2;
          v36 += 16;
          *(v49 + 6) = llroundf(v2);
          *(v49 + 7) = v64;
          v49 += 16;
          v48 += 2;
        }

        while (v48 < v13);
      }

      v43 = &v45[v16];
      v44 += v17;
      v42 = &v46[v18];
      v36 = &v47[v28];
      v11 += 2;
    }

    while (v11 < v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, unsigned __int8 *a2, double a3, double a4, float a5)
{
  v5 = 2 * *result;
  v207 = result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v209 = 2 * ((v6 + v6 * a2) / v5 - v7);
  if (v209 >= 1)
  {
    v8 = 0;
    v9 = *(result + 19);
    v10 = *(result + 24) & 0xFFFFFFFE;
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = **(result + 17);
    v17 = 8191.0 / *(v9 + 128);
    LOWORD(a5) = *(v9 + 140);
    v18 = LODWORD(a5);
    LOWORD(a5) = *(v9 + 142);
    v19 = LODWORD(a5);
    v20 = v17 * *v9;
    v216 = v17 * *(v9 + 16);
    v217 = v17 * *(v9 + 8);
    v214 = v17 * *(v9 + 28);
    v215 = v17 * *(v9 + 20);
    v212 = *(v9 + 76);
    v213 = *(v9 + 72);
    v21 = *(v9 + 84);
    v210 = v21;
    v211 = *(v9 + 80);
    v22 = *(v9 + 88);
    v23 = *(v9 + 92);
    v24 = *(v9 + 96);
    v25 = *(v9 + 100);
    v26 = v9 + 16548;
    result = a2;
    v27 = *(v207 + 44) + 2 * (*(v207 + 28) * a2 / v5);
    v28 = v9 + 32932;
    v29 = *(v9 + 104);
    v30 = *(v9 + 108);
    v31 = *(v9 + 112);
    v32 = *(v9 + 116);
    v33 = *(v9 + 120);
    v34 = v9 + 164;
    v35 = (**(v207 + 16) + v16 * (*(v207 + 15) + 2 * v7) + 8 * *(v207 + 14));
    v36 = v11[2];
    v37 = v36 + v27 * v15;
    _ZF = v36 == 0;
    v39 = *v11 + v27 * v13;
    v40 = v11[1] + v27 / 2 * v14;
    v41 = *(v207 + 36);
    v42 = (v37 + v41);
    if (_ZF)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    v44 = (v39 + v41);
    v45 = v40 + v41;
    v218 = v20;
    v219 = LODWORD(a5);
    v220 = v18;
    do
    {
      v46 = &v44[v13];
      v47 = &v43[v15];
      v48 = &v35[v16];
      if (v10 >= 1)
      {
        v49 = 0;
        v50 = &v35[v16];
        v51 = &v44[v13];
        v52 = &v43[v15];
        do
        {
          LOBYTE(v21) = *(v45 + v49 + 1);
          v53 = LODWORD(v21) - v19;
          v54 = LODWORD(v217);
          v55 = v217 * v53;
          LOBYTE(v54) = *v44;
          v56 = v20 * (v54 - v18);
          v57 = (v217 * v53) + v56;
          v58 = 8191.0;
          if (v57 <= 8191.0)
          {
            v58 = (v217 * v53) + v56;
            if (v57 < 0.0)
            {
              v58 = 0.0;
            }
          }

          LOBYTE(v57) = *(v45 + v49);
          v59 = LODWORD(v57) - v19;
          v60 = (v215 * v53) + (v59 * v216);
          v61 = 8191.0;
          if ((v56 + v60) <= 8191.0)
          {
            v61 = v56 + v60;
            if ((v56 + v60) < 0.0)
            {
              v61 = 0.0;
            }
          }

          v62 = v214 * v59;
          v63 = (v214 * v59) + v56;
          v64 = 8191.0;
          if (v63 <= 8191.0)
          {
            v64 = v63;
            if (v63 < 0.0)
            {
              v64 = 0.0;
            }
          }

          LOBYTE(v63) = v44[1];
          v65 = v20 * (LODWORD(v63) - v18);
          v66 = 8191.0;
          if ((v55 + v65) <= 8191.0)
          {
            v66 = v55 + v65;
            if ((v55 + v65) < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = 8191.0;
          if ((v60 + v65) <= 8191.0)
          {
            v67 = v60 + v65;
            if ((v60 + v65) < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v62 + v65;
          v69 = 8191.0;
          if (v68 <= 8191.0)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          LOBYTE(v68) = *v51;
          v70 = LODWORD(v68) - v18;
          v71 = v20 * v70;
          v72 = 8191.0;
          if ((v55 + (v20 * v70)) <= 8191.0)
          {
            v72 = v55 + (v20 * v70);
            if (v72 < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = 8191.0;
          if ((v60 + v71) <= 8191.0)
          {
            v73 = v60 + v71;
            if ((v60 + v71) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v62 + v71;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          LOBYTE(v70) = v51[1];
          v76 = v20 * (LODWORD(v70) - v18);
          v77 = 8191.0;
          if ((v55 + v76) <= 8191.0)
          {
            v77 = v55 + v76;
            if ((v55 + v76) < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = v60 + v76;
          v79 = (v60 + v76) <= 8191.0;
          v80 = 8191.0;
          if (v79)
          {
            v80 = v78;
            if (v78 < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = v62 + v76;
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = v81;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          if (v43)
          {
            v83 = *v43;
            v84 = v43[1];
            v43 += 2;
            v85 = *v52;
            v86 = v52[1];
            v52 += 2;
          }

          else
          {
            v83 = 0;
            v84 = 0;
            v85 = 0;
            v86 = 0;
          }

          _S1 = fmaxf(v58, 0.0);
          v88 = 8191.0;
          LOWORD(_S1) = *(v34 + 2 * llroundf(fminf(_S1, 8191.0)));
          __asm { FCVT            S12, H1 }

          LOWORD(_S1) = *(v34 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          __asm { FCVT            S31, H1 }

          LOWORD(_S1) = *(v34 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          __asm { FCVT            S8, H1 }

          _H3 = *(v34 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          _H16 = *(v34 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          _H17 = *(v34 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          _H7 = *(v34 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          _H2 = *(v34 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          _H1 = *(v34 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          _H9 = *(v34 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          _H10 = *(v34 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          _H11 = *(v34 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          v104 = fmaxf(_S12, fmaxf(_S31, _S8));
          v105 = (((v31 * _S31) + (v30 * _S12)) + (v32 * _S8)) + (v33 * v104);
          v106 = 8191.0;
          if (v105 <= 8191.0)
          {
            v106 = (((v31 * _S31) + (v30 * _S12)) + (v32 * _S8)) + (v33 * v104);
            if (v105 < 0.0)
            {
              v106 = 0.0;
            }
          }

          __asm
          {
            FCVT            S4, H3
            FCVT            S5, H16
            FCVT            S6, H17
          }

          _H13 = *(v26 + 2 * llroundf(v106));
          v111 = (((v31 * _S5) + (v30 * _S4)) + (v32 * _S6)) + (v33 * fmaxf(_S4, fmaxf(_S5, _S6)));
          v112 = 8191.0;
          if (v111 <= 8191.0)
          {
            v112 = v111;
            if (v111 < 0.0)
            {
              v112 = 0.0;
            }
          }

          __asm
          {
            FCVT            S7, H7
            FCVT            S14, H2
            FCVT            S2, H1
          }

          _H1 = *(v26 + 2 * llroundf(v112));
          v117 = fmaxf(_S7, fmaxf(_S14, _S2));
          v118 = (((v31 * _S14) + (v30 * _S7)) + (v32 * _S2)) + (v33 * v117);
          v119 = 8191.0;
          if (v118 <= 8191.0)
          {
            v119 = (((v31 * _S14) + (v30 * _S7)) + (v32 * _S2)) + (v33 * v117);
            if (v118 < 0.0)
            {
              v119 = 0.0;
            }
          }

          __asm
          {
            FCVT            S3, H9
            FCVT            S16, H10
            FCVT            S17, H11
          }

          _H9 = *(v26 + 2 * llroundf(v119));
          v124 = fmaxf(_S3, fmaxf(_S16, _S17));
          v125 = (((v31 * _S16) + (v30 * _S3)) + (v32 * _S17)) + (v33 * v124);
          if (v125 <= 8191.0)
          {
            v88 = (((v31 * _S16) + (v30 * _S3)) + (v32 * _S17)) + (v33 * v124);
            if (v125 < 0.0)
            {
              v88 = 0.0;
            }
          }

          __asm { FCVT            S10, H13 }

          v127 = _S31 * _S10;
          v128 = _S8 * _S10;
          __asm { FCVT            S1, H1 }

          v130 = _S4 * _S1;
          v131 = _S5 * _S1;
          v132 = _S6 * _S1;
          __asm { FCVT            S6, H9 }

          v134 = _S7 * _S6;
          v135 = _S14 * _S6;
          _H30 = *(v26 + 2 * llroundf(v88));
          _S2 = _S2 * _S6;
          __asm { FCVT            S6, H30 }

          v139 = _S3 * _S6;
          v140 = _S16 * _S6;
          v141 = _S17 * _S6;
          v142 = ((v212 * v127) + ((_S12 * _S10) * v213)) + (v128 * v211);
          v143 = ((v22 * v127) + ((_S12 * _S10) * v210)) + (v128 * v23);
          v144 = ((v25 * v127) + ((_S12 * _S10) * v24)) + (v128 * v29);
          v145 = ((v212 * v131) + (v130 * v213)) + (v132 * v211);
          v146 = ((v22 * v131) + (v130 * v210)) + (v132 * v23);
          v147 = ((v25 * v131) + (v130 * v24)) + (v132 * v29);
          v148 = ((v212 * v135) + (v134 * v213)) + (_S2 * v211);
          v149 = ((v22 * v135) + (v134 * v210)) + (_S2 * v23);
          v150 = ((v25 * v135) + (v134 * v24)) + (_S2 * v29);
          v151 = ((v212 * v140) + (v139 * v213)) + (v141 * v211);
          v152 = ((v22 * v140) + (v139 * v210)) + (v141 * v23);
          v153 = ((v25 * v140) + (v139 * v24)) + (v141 * v29);
          LOWORD(_S2) = *(v28 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          __asm { FCVT            S7, H2 }

          _H14 = *(v28 + 2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0)));
          _H13 = *(v28 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          _H6 = *(v28 + 2 * llroundf(fminf(fmaxf(v145, 0.0), 8191.0)));
          _H5 = *(v28 + 2 * llroundf(fminf(fmaxf(v146, 0.0), 8191.0)));
          _H4 = *(v28 + 2 * llroundf(fminf(fmaxf(v147, 0.0), 8191.0)));
          _H12 = *(v28 + 2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0)));
          _H11 = *(v28 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
          _H10 = *(v28 + 2 * llroundf(fminf(fmaxf(v150, 0.0), 8191.0)));
          _H9 = *(v28 + 2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0)));
          _H8 = *(v28 + 2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0)));
          _H31 = *(v28 + 2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0)));
          if (v43)
          {
            v166 = v83 | (v83 << 8);
          }

          else
          {
            v166 = -1;
          }

          v167 = v84 | (v84 << 8);
          if (v43)
          {
            v168 = v85 | (v85 << 8);
          }

          else
          {
            v167 = -1;
            v168 = -1;
          }

          v169 = v86 | (v86 << 8);
          if (!v43)
          {
            v169 = -1;
          }

          v170 = 65535.0;
          v171 = 65535.0;
          if (_S7 <= 65535.0)
          {
            __asm { FCMP            H2, #0 }

            v171 = _S7;
            if (_NF)
            {
              v171 = 0.0;
            }
          }

          __asm { FCVT            S3, H14 }

          v174 = 65535.0;
          if (_S3 <= 65535.0)
          {
            __asm { FCMP            H14, #0 }

            v174 = _S3;
            if (_NF)
            {
              v174 = 0.0;
            }
          }

          __asm { FCVT            S7, H13 }

          v177 = 65535.0;
          if (_S7 <= 65535.0)
          {
            __asm { FCMP            H13, #0 }

            v177 = _S7;
            if (_NF)
            {
              v177 = 0.0;
            }
          }

          v179 = llroundf(v174);
          __asm { FCVT            S2, H6 }

          *v35 = bswap32(v166) >> 16;
          *(v35 + 1) = __rev16(llroundf(v171));
          *(v35 + 2) = __rev16(v179);
          *(v35 + 3) = __rev16(llroundf(v177));
          v181 = 65535.0;
          if (_S2 <= 65535.0)
          {
            __asm { FCMP            H6, #0 }

            v181 = _S2;
            if (_NF)
            {
              v181 = 0.0;
            }
          }

          __asm { FCVT            S3, H5 }

          v184 = 65535.0;
          v20 = v218;
          if (_S3 <= 65535.0)
          {
            __asm { FCMP            H5, #0 }

            v184 = _S3;
            if (_NF)
            {
              v184 = 0.0;
            }
          }

          __asm { FCVT            S5, H4 }

          v187 = 65535.0;
          v18 = v220;
          if (_S5 <= 65535.0)
          {
            __asm { FCMP            H4, #0 }

            v187 = _S5;
            if (_NF)
            {
              v187 = 0.0;
            }
          }

          v189 = llroundf(v184);
          __asm { FCVT            S2, H12 }

          *(v35 + 4) = bswap32(v167) >> 16;
          *(v35 + 5) = __rev16(llroundf(v181));
          *(v35 + 6) = __rev16(v189);
          *(v35 + 7) = __rev16(llroundf(v187));
          v191 = 65535.0;
          if (_S2 <= 65535.0)
          {
            __asm { FCMP            H12, #0 }

            v191 = _S2;
            if (_NF)
            {
              v191 = 0.0;
            }
          }

          __asm { FCVT            S3, H11 }

          v194 = 65535.0;
          if (_S3 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v194 = _S3;
            if (_NF)
            {
              v194 = 0.0;
            }
          }

          __asm { FCVT            S4, H10 }

          v197 = 65535.0;
          if (_S4 <= 65535.0)
          {
            __asm { FCMP            H10, #0 }

            v197 = _S4;
            if (_NF)
            {
              v197 = 0.0;
            }
          }

          v199 = llroundf(v194);
          __asm { FCVT            S2, H9 }

          *v50 = bswap32(v168) >> 16;
          *(v50 + 1) = __rev16(llroundf(v191));
          *(v50 + 2) = __rev16(v199);
          *(v50 + 3) = __rev16(llroundf(v197));
          v21 = 65535.0;
          if (_S2 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v21 = _S2;
            if (_NF)
            {
              v21 = 0.0;
            }
          }

          __asm { FCVT            S3, H8 }

          v203 = 65535.0;
          v19 = v219;
          if (_S3 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v203 = _S3;
            if (_NF)
            {
              v203 = 0.0;
            }
          }

          __asm { FCVT            S3, H31 }

          if (_S3 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v170 = _S3;
            if (_NF)
            {
              v170 = 0.0;
            }
          }

          v44 += 2;
          v51 += 2;
          v35 += 16;
          result = __rev16(llroundf(v203));
          *(v50 + 4) = bswap32(v169) >> 16;
          *(v50 + 5) = __rev16(llroundf(v21));
          *(v50 + 6) = result;
          *(v50 + 7) = __rev16(llroundf(v170));
          v50 += 16;
          v49 += 2;
        }

        while (v49 < v10);
      }

      v44 = &v46[v13];
      v45 += v14;
      v43 = &v47[v15];
      v35 = &v48[v16];
      v8 += 2;
    }

    while (v8 < v209);
  }

  *&v207[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = 2 * *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = 2 * ((v7 + v7 * a2) / v6 - v8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v185 = v20 * *(v11 + 16);
    v186 = v20 * *(v11 + 8);
    v24 = v20 * *(v11 + 20);
    v25 = v20 * *(v11 + 28);
    v183 = v25;
    v184 = v24;
    v26 = *(v11 + 72);
    v27 = *(v11 + 76);
    v28 = *(v11 + 80);
    v29 = *(v11 + 84);
    v30 = *(v11 + 88);
    v31 = *(v11 + 92);
    v32 = *(v11 + 96);
    v33 = *(v11 + 100);
    v34 = *(v11 + 104);
    v35 = *(result + 15) + 2 * v8;
    v36 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
    v37 = v11 + 16548;
    v38 = v11 + 164;
    v39 = (**(result + 16) + v18 * v35 + 8 * *(result + 14));
    v40 = v13[2];
    v41 = v40 + v36 * v17;
    _ZF = v40 == 0;
    v43 = *v13 + v36 * v15;
    v44 = v13[1] + v36 / 2 * v16;
    v45 = *(result + 36);
    v46 = (v41 + v45);
    if (_ZF)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    v48 = (v43 + v45);
    v49 = v44 + v45;
    v187 = v22;
    v188 = v21;
    do
    {
      v50 = &v48[v15];
      v51 = &v47[v17];
      v52 = &v39[v18];
      if (v12 >= 1)
      {
        v53 = 0;
        v54 = &v39[v18];
        v55 = &v48[v15];
        v56 = &v47[v17];
        do
        {
          LOBYTE(v25) = *(v49 + v53 + 1);
          v57 = LODWORD(v25) - v22;
          v58 = LODWORD(v186);
          v59 = v186 * v57;
          LOBYTE(v58) = *v48;
          v60 = v23 * (v58 - v21);
          v61 = (v186 * v57) + v60;
          v62 = 8191.0;
          if (v61 <= 8191.0)
          {
            v62 = (v186 * v57) + v60;
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }
          }

          LOBYTE(v61) = *(v49 + v53);
          v63 = LODWORD(v61) - v22;
          v64 = (v184 * v57) + (v63 * v185);
          v65 = 8191.0;
          if ((v60 + v64) <= 8191.0)
          {
            v65 = v60 + v64;
            if ((v60 + v64) < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v183 * v63;
          v67 = (v183 * v63) + v60;
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          LOBYTE(v67) = v48[1];
          v69 = v23 * (LODWORD(v67) - v21);
          v70 = 8191.0;
          if ((v59 + v69) <= 8191.0)
          {
            v70 = v59 + v69;
            if ((v59 + v69) < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = 8191.0;
          if ((v64 + v69) <= 8191.0)
          {
            v71 = v64 + v69;
            if ((v64 + v69) < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v66 + v69;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          LOBYTE(v72) = *v55;
          v74 = v23 * (LODWORD(v72) - v21);
          v75 = 8191.0;
          if ((v59 + v74) <= 8191.0)
          {
            v75 = v59 + v74;
            if ((v59 + v74) < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = 8191.0;
          if ((v64 + v74) <= 8191.0)
          {
            v76 = v64 + v74;
            if ((v64 + v74) < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v66 + v74;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          LOBYTE(_S14) = v55[1];
          v79 = v23 * (LODWORD(_S14) - v21);
          v80 = v59 + v79;
          v81 = (v59 + v79) <= 8191.0;
          v82 = 8191.0;
          if (v81)
          {
            v82 = v80;
            if (v80 < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v64 + v79;
          v81 = (v64 + v79) <= 8191.0;
          v84 = 8191.0;
          if (v81)
          {
            v84 = v83;
            if (v83 < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v66 + v79;
          v86 = 8191.0;
          if (v85 <= 8191.0)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          if (v47)
          {
            v87 = *v47;
            v88 = v47[1];
            v47 += 2;
            v89 = *v56;
            v90 = v56[1];
            v56 += 2;
          }

          else
          {
            v87 = 0;
            v88 = 0;
            v89 = 0;
            v90 = 0;
          }

          _H4 = *(v38 + 2 * llroundf(fminf(fmaxf(v62, 0.0), 8191.0)));
          __asm { FCVT            S26, H4 }

          _H4 = *(v38 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          _H27 = *(v38 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm
          {
            FCVT            S4, H4
            FCVT            S27, H27
          }

          _H28 = *(v38 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H29 = *(v38 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H30 = *(v38 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H31 = *(v38 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H9 = *(v38 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          _H12 = *(v38 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm
          {
            FCVT            S9, H9
            FCVT            S12, H12
          }

          _H8 = *(v38 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H10 = *(v38 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v38 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v118 = ((v27 * _S4) + (_S26 * v26)) + (_S27 * v28);
          v119 = ((v30 * _S4) + (_S26 * v29)) + (_S27 * v31);
          v120 = ((v33 * _S4) + (_S26 * v32)) + (_S27 * v34);
          v121 = ((v27 * _S29) + (_S28 * v26)) + (_S30 * v28);
          v122 = ((v30 * _S29) + (_S28 * v29)) + (_S30 * v31);
          v123 = ((v33 * _S29) + (_S28 * v32)) + (_S30 * v34);
          v124 = ((v27 * _S9) + (_S31 * v26)) + (_S12 * v28);
          v125 = ((v30 * _S9) + (_S31 * v29)) + (_S12 * v31);
          v126 = ((v33 * _S9) + (_S31 * v32)) + (_S12 * v34);
          v127 = ((v27 * _S10) + (_S8 * v26)) + (_S11 * v28);
          v128 = ((v30 * _S10) + (_S8 * v29)) + (_S11 * v31);
          v129 = ((v33 * _S10) + (_S8 * v32)) + (_S11 * v34);
          _H14 = *(v37 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          __asm { FCVT            S4, H14 }

          _H13 = *(v37 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          _H12 = *(v37 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          _H11 = *(v37 + 2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0)));
          _H10 = *(v37 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          _H8 = *(v37 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          _H30 = *(v37 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          v143 = v87 | (v87 << 8);
          if (v47)
          {
            v144 = v143;
          }

          else
          {
            v144 = -1;
          }

          if (v47)
          {
            v145 = v88 | (v88 << 8);
          }

          else
          {
            v145 = -1;
          }

          if (v47)
          {
            v146 = v89 | (v89 << 8);
          }

          else
          {
            v146 = -1;
          }

          v147 = v90 | (v90 << 8);
          if (!v47)
          {
            v147 = -1;
          }

          v148 = 65535.0;
          v149 = 65535.0;
          if (_S4 <= 65535.0)
          {
            __asm { FCMP            H14, #0 }

            v149 = _S4;
            if (_NF)
            {
              v149 = 0.0;
            }
          }

          __asm { FCVT            S14, H13 }

          v152 = 65535.0;
          v22 = v187;
          if (_S14 <= 65535.0)
          {
            __asm { FCMP            H13, #0 }

            v152 = _S14;
            if (_NF)
            {
              v152 = 0.0;
            }
          }

          __asm { FCVT            S14, H12 }

          v154 = 65535.0;
          v21 = v188;
          if (_S14 <= 65535.0)
          {
            __asm { FCMP            H12, #0 }

            v154 = _S14;
            if (_NF)
            {
              v154 = 0.0;
            }
          }

          __asm { FCVT            S12, H11 }

          *v39 = bswap32(v144) >> 16;
          *(v39 + 1) = __rev16(llroundf(v149));
          *(v39 + 2) = __rev16(llroundf(v152));
          *(v39 + 3) = __rev16(llroundf(v154));
          v157 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v157 = _S12;
            if (_NF)
            {
              v157 = 0.0;
            }
          }

          __asm { FCVT            S12, H10 }

          v160 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H10, #0 }

            v160 = _S12;
            if (_NF)
            {
              v160 = 0.0;
            }
          }

          __asm { FCVT            S12, H9 }

          v163 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v163 = _S12;
            if (_NF)
            {
              v163 = 0.0;
            }
          }

          __asm { FCVT            S9, H8 }

          *(v39 + 4) = bswap32(v145) >> 16;
          *(v39 + 5) = __rev16(llroundf(v157));
          *(v39 + 6) = __rev16(llroundf(v160));
          *(v39 + 7) = __rev16(llroundf(v163));
          v166 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v166 = _S9;
            if (_NF)
            {
              v166 = 0.0;
            }
          }

          __asm { FCVT            S9, H31 }

          v169 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v169 = _S9;
            if (_NF)
            {
              v169 = 0.0;
            }
          }

          __asm { FCVT            S9, H30 }

          v172 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v172 = _S9;
            if (_NF)
            {
              v172 = 0.0;
            }
          }

          v174 = llroundf(v166);
          __asm { FCVT            S4, H29 }

          *v54 = bswap32(v146) >> 16;
          *(v54 + 1) = __rev16(v174);
          *(v54 + 2) = __rev16(llroundf(v169));
          *(v54 + 3) = __rev16(llroundf(v172));
          v176 = 65535.0;
          if (_S4 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v176 = _S4;
            if (_NF)
            {
              v176 = 0.0;
            }
          }

          __asm { FCVT            S29, H28 }

          v25 = 65535.0;
          if (_S29 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v25 = _S29;
            if (_NF)
            {
              v25 = 0.0;
            }
          }

          __asm { FCVT            S28, H27 }

          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v148 = _S28;
            if (_NF)
            {
              v148 = 0.0;
            }
          }

          v48 += 2;
          v55 += 2;
          v39 += 16;
          *(v54 + 4) = bswap32(v147) >> 16;
          *(v54 + 5) = __rev16(llroundf(v176));
          *(v54 + 6) = __rev16(llroundf(v25));
          *(v54 + 7) = __rev16(llroundf(v148));
          v54 += 16;
          v53 += 2;
        }

        while (v53 < v12);
      }

      v48 = &v50[v15];
      v49 += v16;
      v47 = &v51[v17];
      v39 = &v52[v18];
      v10 += 2;
    }

    while (v10 < v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2)
{
  v4 = 2 * *result;
  v5 = *(result + 13);
  v6 = v5 * a2 / v4;
  v7 = 2 * ((v5 + v5 * a2) / v4 - v6);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result + 19);
    v10 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v11 = *(result + 8);
    v13 = *v11;
    v14 = v11[1];
    v15 = v11[2];
    *&v16 = *(v9 + 128);
    *&v17 = *(v9 + 136);
    v18 = *&v17 / *&v16;
    LOWORD(v16) = *(v9 + 140);
    LOWORD(v17) = *(v9 + 142);
    v19 = *v9;
    v20 = *(v9 + 8);
    v21 = *(v9 + 16);
    v22 = *(v9 + 20);
    v23 = *(v9 + 28);
    v24 = *(result + 44) + 2 * (*(result + 28) * a2 / v4);
    v25 = **(result + 17);
    v26 = v16;
    v27 = v17;
    v28 = v18 * v19;
    v29 = v18 * v20;
    v30 = v18 * v21;
    v31 = v18 * v22;
    v32 = v18 * v23;
    v33 = (**(result + 16) + v25 * (*(result + 15) + 2 * v6) + 8 * *(result + 14));
    v34 = v12[2];
    v35 = v34 + v24 * v15;
    v36 = *v12 + v24 * v13;
    v37 = v12[1] + v24 / 2 * v14;
    v38 = *(result + 36);
    if (v34)
    {
      v39 = (v35 + v38);
    }

    else
    {
      v39 = 0;
    }

    v40 = (v36 + v38);
    v41 = v37 + v38;
    do
    {
      v42 = &v40[v13];
      v43 = &v39[v15];
      v44 = &v33[v25];
      if (v10 >= 1)
      {
        v45 = 0;
        v46 = &v33[v25];
        v47 = &v40[v13];
        v48 = &v39[v15];
        do
        {
          if (v39)
          {
            v49 = *v39;
            v50 = v39[1];
            v39 += 2;
            v51 = *v48;
            v52 = v48[1];
            v48 += 2;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
          }

          LOBYTE(v2) = *(v41 + v45 + 1);
          v53 = LODWORD(v2) - v27;
          v54 = v29 * v53;
          LOBYTE(v3) = *v40;
          v55 = v28 * (LODWORD(v3) - v26);
          v56 = (v29 * v53) + v55;
          v57 = v49 | (v49 << 8);
          if (v39)
          {
            v58 = v57;
          }

          else
          {
            v58 = -1;
          }

          if (v39)
          {
            v59 = v50 | (v50 << 8);
          }

          else
          {
            v59 = -1;
          }

          if (v39)
          {
            v60 = v51 | (v51 << 8);
          }

          else
          {
            v60 = -1;
          }

          v61 = v52 | (v52 << 8);
          if (!v39)
          {
            v61 = -1;
          }

          v62 = 65535.0;
          if (v56 <= 65535.0)
          {
            v62 = (v29 * v53) + v55;
            if (v56 < 0.0)
            {
              v62 = 0.0;
            }
          }

          LOBYTE(v56) = *(v41 + v45);
          v63 = LODWORD(v56) - v27;
          v64 = (v31 * v53) + (v63 * v30);
          v65 = v55 + v64;
          v66 = 65535.0;
          if ((v55 + v64) <= 65535.0)
          {
            v66 = v55 + v64;
            if (v65 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = v32 * v63;
          v68 = v67 + v55;
          v69 = 65535.0;
          if (v68 <= 65535.0)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          LOBYTE(v68) = v40[1];
          v71 = LODWORD(v68) - v26;
          v70 = v28 * v71;
          LOBYTE(v65) = *v47;
          LOBYTE(v71) = v47[1];
          *v33 = bswap32(v58) >> 16;
          *(v33 + 1) = __rev16(llroundf(v62));
          *(v33 + 2) = __rev16(llroundf(v66));
          *(v33 + 3) = __rev16(llroundf(v69));
          v72 = 65535.0;
          if ((v54 + v70) <= 65535.0)
          {
            v72 = v54 + v70;
            if ((v54 + v70) < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = 65535.0;
          if ((v64 + v70) <= 65535.0)
          {
            v73 = v64 + v70;
            if ((v64 + v70) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v67 + v70;
          v75 = 65535.0;
          if (v74 <= 65535.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = v28 * (LODWORD(v65) - v26);
          *(v33 + 4) = bswap32(v59) >> 16;
          *(v33 + 5) = __rev16(llroundf(v72));
          *(v33 + 6) = __rev16(llroundf(v73));
          *(v33 + 7) = __rev16(llroundf(v75));
          v77 = 65535.0;
          if ((v54 + v76) <= 65535.0)
          {
            v77 = v54 + v76;
            if ((v54 + v76) < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = 65535.0;
          if ((v64 + v76) <= 65535.0)
          {
            v78 = v64 + v76;
            if ((v64 + v76) < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v67 + v76;
          v80 = (v67 + v76) <= 65535.0;
          v81 = 65535.0;
          if (v80)
          {
            v81 = v79;
            if (v79 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v28 * (LODWORD(v71) - v26);
          v83 = llroundf(v77);
          v84 = v54 + v82;
          *v46 = bswap32(v60) >> 16;
          *(v46 + 1) = __rev16(v83);
          *(v46 + 2) = __rev16(llroundf(v78));
          *(v46 + 3) = __rev16(llroundf(v81));
          v80 = (v54 + v82) <= 65535.0;
          v2 = 65535.0;
          if (v80)
          {
            v2 = v84;
            if (v84 < 0.0)
            {
              v2 = 0.0;
            }
          }

          v85 = v64 + v82;
          v80 = (v64 + v82) <= 65535.0;
          v86 = 65535.0;
          if (v80)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v67 + v82;
          v3 = 65535.0;
          if (v87 <= 65535.0)
          {
            v3 = v87;
            if (v87 < 0.0)
            {
              v3 = 0.0;
            }
          }

          v40 += 2;
          v47 += 2;
          v33 += 16;
          *(v46 + 4) = bswap32(v61) >> 16;
          *(v46 + 5) = __rev16(llroundf(v2));
          *(v46 + 6) = __rev16(llroundf(v86));
          *(v46 + 7) = __rev16(llroundf(v3));
          v46 += 16;
          v45 += 2;
        }

        while (v45 < v10);
      }

      v40 = &v42[v13];
      v41 += v14;
      v39 = &v43[v15];
      v33 = &v44[v25];
      v8 += 2;
    }

    while (v8 < v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

char *vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD(char *result, uint64_t a2, int16x4_t _D0, double a4, float32x4_t _Q2)
{
  v6 = 2 * *result;
  v274 = result;
  v7 = *(result + 13);
  v8 = v7 * a2;
  v9 = v7 * a2 / v6;
  v279 = 2 * ((v7 + v8) / v6 - v9);
  if (v279 >= 1)
  {
    v10 = 0;
    v11 = *(result + 24);
    v12 = *(result + 19);
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    result = v14[1];
    v16 = v14[2];
    v17 = **(v274 + 17);
    v18 = v12[17].u16[2];
    v19 = v12[17].u16[3];
    _D0.i32[0] = v12->i32[0];
    v20.i32[0] = v12[3].i32[1];
    _S7 = v12[10].f32[1];
    _S16 = v12[11].f32[0];
    _S17 = v12[11].f32[1];
    _S18 = v12[12].f32[0];
    _S19 = v12[12].f32[1];
    _S20 = v12[13].f32[0];
    v304 = v12[15].f32[0];
    v27 = &v12[2068] + 4;
    v28 = v11 & 0xFFFFFFFE;
    _Q2.f32[0] = 8191.0 / v12[16].u32[0];
    v29 = v18;
    v30 = v19;
    _S29 = _Q2.f32[0] * v12->f32[0];
    v32 = &v12[20] + 4;
    v33 = &v12[4116] + 4;
    __asm { FCVT            H0, S29 }

    v303 = *_D0.i16;
    *_D0.i16 = v18;
    _Q0 = vdupq_lane_s16(_D0, 0);
    v302 = _Q0;
    *_Q0.i16 = -v19;
    v20.i32[1] = v12[1].i32[0];
    *v5.f32 = vmul_n_f32(v20, _Q2.f32[0]);
    *_Q2.f32 = vmul_n_f32(v12[2], _Q2.f32[0]);
    v300 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v297 = vmulq_n_f16(v300, *_Q0.i16);
    v298 = vdupq_lane_s32(vcvt_f16_f32(_Q2), 0);
    v38 = vmulq_n_f16(v298, *_Q0.i16);
    v307 = v12[13].f32[1];
    __asm { FCVT            H0, S21 }

    v295 = *_Q0.i16;
    v296 = v38;
    v306 = v12[14].f32[0];
    __asm { FCVT            H0, S22 }

    v294 = *_Q0.i16;
    v305 = v12[14].f32[1];
    __asm { FCVT            H0, S23 }

    v293 = *_Q0.i16;
    __asm { FCVT            H0, S27 }

    v292 = *_Q0.i16;
    v316 = v12[9].f32[0];
    __asm { FCVT            H0, S3 }

    v291 = *_Q0.i16;
    v315 = v12[9].f32[1];
    __asm { FCVT            H0, S5 }

    v290 = *_Q0.i16;
    v314 = v12[10].f32[0];
    __asm { FCVT            H0, S6 }

    v289 = *_Q0.i16;
    v40 = *(v274 + 44) + 2 * (*(v274 + 28) * a2 / v6);
    v41 = v13[1];
    v42 = v13[2];
    v43 = *v13;
    v278 = result;
    v44 = v41 + result * (v40 / 2);
    v45 = *(v274 + 36);
    v46 = (v42 + v16 * v40 + v45);
    v47 = (**(v274 + 16) + v17 * (*(v274 + 15) + 2 * v9) + 8 * *(v274 + 14));
    if (!v42)
    {
      v46 = 0;
    }

    v48 = (v44 + v45);
    v49 = (v43 + v15 * v40 + v45);
    v313 = _S7;
    __asm { FCVT            H0, S7 }

    v288 = _H0;
    v312 = _S16;
    __asm { FCVT            H0, S16 }

    v287 = _H0;
    v311 = _S17;
    __asm { FCVT            H0, S17 }

    v286 = _H0;
    v310 = _S18;
    __asm { FCVT            H0, S18 }

    v285 = _H0;
    v309 = _S19;
    __asm { FCVT            H0, S19 }

    v284 = _H0;
    v308 = _S20;
    __asm { FCVT            H0, S20 }

    v283 = _H0;
    v301 = v5.f32[0];
    _Q0.i32[0] = _Q2.i32[1];
    LODWORD(v281) = HIDWORD(_Q2.u64[0]);
    LODWORD(v299) = _Q2.i64[0];
    v282 = v5.f32[1];
    v56 = 0uLL;
    v276 = **(v274 + 17);
    v277 = v16;
    v280 = v30;
    do
    {
      v57 = v49 + v15;
      v58 = v46 + v16;
      v59 = (v47 + v17);
      if (v11 < 8)
      {
        v162 = 0;
        v161 = v48;
        v63 = v46 + v16;
        v62 = (v49 + v15);
        v61 = v59;
      }

      else
      {
        v60 = 0;
        v61 = v59;
        v62 = (v49 + v15);
        v63 = v46 + v16;
        do
        {
          if (v46)
          {
            v64 = *v46++;
            v65 = v64;
            v66 = *v63;
            v63 += 8;
            _Q0.i64[0] = v66;
          }

          else
          {
            v65 = 0;
            _Q0 = 0uLL;
          }

          v67 = *&v48[v60];
          *v68.i8 = vzip1_s8(v67, 0);
          v68.u64[1] = vzip2_s8(v67, 0);
          v69 = vcvtq_f16_u16(v68);
          v70 = vmlaq_f16(v297, v300, v69);
          v71 = vmlaq_f16(v296, v298, v69);
          v72 = vtrn2q_s16(v70, v70);
          v73 = vtrn1q_s16(v70, v70);
          v74 = vuzp1q_s16(v71, _Q0);
          *v74.i8 = vadd_f16(*v74.i8, *&vuzp2q_s16(v71, _Q0));
          v75 = *v49++;
          v76 = vzip1q_s16(v74, v74);
          *v74.i8 = vzip1_s8(v75, 0);
          v74.u64[1] = vzip2_s8(v75, 0);
          v77 = *v62++;
          *v71.i8 = vzip1_s8(v77, 0);
          v71.u64[1] = vzip2_s8(v77, 0);
          v78 = vcvtq_f16_u16(v71);
          v79 = vsubq_f16(vcvtq_f16_u16(v74), v302);
          v80 = vsubq_f16(v78, v302);
          v81 = vmlaq_n_f16(v72, v79, v303);
          v82 = vmlaq_n_f16(v72, v80, v303);
          v83 = vmlaq_n_f16(v76, v79, v303);
          v84 = vmlaq_n_f16(v76, v80, v303);
          v85 = vmlaq_n_f16(v73, v79, v303);
          v86 = vmlaq_n_f16(v73, v80, v303);
          if (v46)
          {
            *v87.i8 = vzip1_s8(v65, 0);
            v87.u64[1] = vzip2_s8(v65, 0);
            v88 = vcvtq_f16_u16(v87);
            v89 = vdupq_n_s16(0x1C04u);
            v90 = vmulq_f16(v88, v89);
            *v88.i8 = vzip1_s8(*_Q0.i8, 0);
            v88.u64[1] = vzip2_s8(*_Q0.i8, 0);
            _Q2 = vmulq_f16(vcvtq_f16_u16(v88), v89);
          }

          else
          {
            v90.i64[0] = 0x3C003C003C003C00;
            v90.i64[1] = 0x3C003C003C003C00;
            _Q2.i32[0] = 1006648320;
            _Q2.i16[2] = 15360;
            _Q2.i16[3] = 15360;
            _Q2.i16[4] = 15360;
            _Q2.i16[5] = 15360;
            _Q2.i16[6] = 15360;
            _Q2.i16[7] = 15360;
          }

          v91.i64[0] = 0x9000900090009000;
          v91.i64[1] = 0x9000900090009000;
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v81, v56), v91));
          v93.i16[0] = *&v32[2 * v92.u16[0]];
          v93.i16[1] = *&v32[2 * v92.u16[1]];
          v93.i16[2] = *&v32[2 * v92.u16[2]];
          v93.i16[3] = *&v32[2 * v92.u16[3]];
          v93.i16[4] = *&v32[2 * v92.u16[4]];
          v93.i16[5] = *&v32[2 * v92.u16[5]];
          v93.i16[6] = *&v32[2 * v92.u16[6]];
          v93.i16[7] = *&v32[2 * v92.u16[7]];
          v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v83, v56), v91));
          v95.i16[0] = *&v32[2 * v94.u16[0]];
          v95.i16[1] = *&v32[2 * v94.u16[1]];
          v95.i16[2] = *&v32[2 * v94.u16[2]];
          v95.i16[3] = *&v32[2 * v94.u16[3]];
          v95.i16[4] = *&v32[2 * v94.u16[4]];
          v95.i16[5] = *&v32[2 * v94.u16[5]];
          v95.i16[6] = *&v32[2 * v94.u16[6]];
          v95.i16[7] = *&v32[2 * v94.u16[7]];
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v85, v56), v91));
          v97.i16[0] = *&v32[2 * v96.u16[0]];
          v97.i16[1] = *&v32[2 * v96.u16[1]];
          v97.i16[2] = *&v32[2 * v96.u16[2]];
          v97.i16[3] = *&v32[2 * v96.u16[3]];
          v97.i16[4] = *&v32[2 * v96.u16[4]];
          v97.i16[5] = *&v32[2 * v96.u16[5]];
          v97.i16[6] = *&v32[2 * v96.u16[6]];
          v97.i16[7] = *&v32[2 * v96.u16[7]];
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v82, v56), v91));
          v99.i16[0] = *&v32[2 * v98.u16[0]];
          v99.i16[1] = *&v32[2 * v98.u16[1]];
          v99.i16[2] = *&v32[2 * v98.u16[2]];
          v99.i16[3] = *&v32[2 * v98.u16[3]];
          v99.i16[4] = *&v32[2 * v98.u16[4]];
          v99.i16[5] = *&v32[2 * v98.u16[5]];
          v99.i16[6] = *&v32[2 * v98.u16[6]];
          v99.i16[7] = *&v32[2 * v98.u16[7]];
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v84, v56), v91));
          v101.i16[0] = *&v32[2 * v100.u16[0]];
          v101.i16[1] = *&v32[2 * v100.u16[1]];
          v101.i16[2] = *&v32[2 * v100.u16[2]];
          v101.i16[3] = *&v32[2 * v100.u16[3]];
          v101.i16[4] = *&v32[2 * v100.u16[4]];
          v101.i16[5] = *&v32[2 * v100.u16[5]];
          v101.i16[6] = *&v32[2 * v100.u16[6]];
          v101.i16[7] = *&v32[2 * v100.u16[7]];
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v86, v56), v91));
          v103.i16[0] = *&v32[2 * v102.u16[0]];
          v103.i16[1] = *&v32[2 * v102.u16[1]];
          v103.i16[2] = *&v32[2 * v102.u16[2]];
          v103.i16[3] = *&v32[2 * v102.u16[3]];
          v103.i16[4] = *&v32[2 * v102.u16[4]];
          v103.i16[5] = *&v32[2 * v102.u16[5]];
          v103.i16[6] = *&v32[2 * v102.u16[6]];
          v103.i16[7] = *&v32[2 * v102.u16[7]];
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v295), v95, v294), v97, v293), vmaxq_f16(vmaxq_f16(v93, v95), v97), v292), v56), v91));
          v104.i16[0] = *&v27[2 * v104.u16[0]];
          v104.i16[1] = *&v27[2 * v104.u16[1]];
          v104.i16[2] = *&v27[2 * v104.u16[2]];
          v104.i16[3] = *&v27[2 * v104.u16[3]];
          v104.i16[4] = *&v27[2 * v104.u16[4]];
          v104.i16[5] = *&v27[2 * v104.u16[5]];
          v104.i16[6] = *&v27[2 * v104.u16[6]];
          v104.i16[7] = *&v27[2 * v104.u16[7]];
          v105 = vmulq_f16(v93, v104);
          v106 = vmulq_f16(v95, v104);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, v295), v101, v294), v103, v293), vmaxq_f16(vmaxq_f16(v99, v101), v103), v292), v56), v91));
          v108 = vmulq_f16(v97, v104);
          v104.i16[0] = *&v27[2 * v107.u16[0]];
          v104.i16[1] = *&v27[2 * v107.u16[1]];
          v104.i16[2] = *&v27[2 * v107.u16[2]];
          v104.i16[3] = *&v27[2 * v107.u16[3]];
          v104.i16[4] = *&v27[2 * v107.u16[4]];
          v104.i16[5] = *&v27[2 * v107.u16[5]];
          v104.i16[6] = *&v27[2 * v107.u16[6]];
          v104.i16[7] = *&v27[2 * v107.u16[7]];
          v109 = vmulq_f16(v99, v104);
          v110 = vmulq_f16(v101, v104);
          v111 = vmulq_f16(v103, v104);
          v112 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v291), v110, v290), v111, v289);
          v113 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v288), v110, v287), v111, v286);
          v114 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, v283), v110, v284), v109, v285);
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v291), v106, v290), v108, v289), 0), v91));
          v116 = *&v33[2 * v115.u16[0]];
          v117 = *&v33[2 * v115.u16[1]];
          v118 = *&v33[2 * v115.u16[2]];
          v119 = *&v33[2 * v115.u16[3]];
          v120 = *&v33[2 * v115.u16[4]];
          v121 = *&v33[2 * v115.u16[5]];
          v122 = *&v33[2 * v115.u16[6]];
          v123 = *&v33[2 * v115.u16[7]];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v288), v106, v287), v108, v286), 0), v91));
          v125 = *&v33[2 * v124.u16[0]];
          v126 = *&v33[2 * v124.u16[1]];
          v127 = *&v33[2 * v124.u16[2]];
          v128 = *&v33[2 * v124.u16[3]];
          v129 = *&v33[2 * v124.u16[4]];
          v130 = *&v33[2 * v124.u16[5]];
          v131 = *&v33[2 * v124.u16[6]];
          v132 = *&v33[2 * v124.u16[7]];
          v56 = 0uLL;
          v133 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v108, v283), v106, v284), v105, v285), 0), v91));
          v134 = *&v33[2 * v133.u16[0]];
          v135 = *&v33[2 * v133.u16[1]];
          v136 = *&v33[2 * v133.u16[2]];
          v137 = *&v33[2 * v133.u16[3]];
          v138 = *&v33[2 * v133.u16[4]];
          v139 = *&v33[2 * v133.u16[5]];
          v140 = *&v33[2 * v133.u16[6]];
          v141 = *&v33[2 * v133.u16[7]];
          v142 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v91));
          v143 = *&v33[2 * v142.u16[0]];
          v144 = *&v33[2 * v142.u16[1]];
          v145 = *&v33[2 * v142.u16[2]];
          v146 = *&v33[2 * v142.u16[3]];
          v147 = *&v33[2 * v142.u16[4]];
          v148 = *&v33[2 * v142.u16[5]];
          v149 = *&v33[2 * v142.u16[6]];
          v150 = *&v33[2 * v142.u16[7]];
          v151 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v113, 0), v91));
          _Q0.i16[0] = *&v33[2 * v151.u16[0]];
          _Q0.i16[1] = *&v33[2 * v151.u16[1]];
          _Q0.i16[2] = *&v33[2 * v151.u16[2]];
          _Q0.i16[3] = *&v33[2 * v151.u16[3]];
          _Q0.i16[4] = *&v33[2 * v151.u16[4]];
          _Q0.i16[5] = *&v33[2 * v151.u16[5]];
          _Q0.i16[6] = *&v33[2 * v151.u16[6]];
          _Q0.i16[7] = *&v33[2 * v151.u16[7]];
          v152 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v114, 0), v91));
          v153 = *&v33[2 * v152.u16[0]];
          result = &v33[2 * v152.u16[6]];
          v154 = *&v33[2 * v152.u16[1]];
          v155 = *&v33[2 * v152.u16[2]];
          v156 = *&v33[2 * v152.u16[3]];
          v157 = *&v33[2 * v152.u16[4]];
          v158 = *&v33[2 * v152.u16[5]];
          v159 = *result;
          v160 = *&v33[2 * v152.u16[7]];
          vst4q_s16(v47, *(&v90 - 3));
          v47 += 32;
          vst4q_s16(v61, *(&_Q2 - 3));
          v61 += 32;
          v60 += 8;
          v30 = v280;
        }

        while (v60 < v11 - 7);
        v161 = &v48[v60];
        v162 = v11 & 0xFFFFFFF8;
      }

      for (; v162 < v28; v61 += 8)
      {
        _Q0.i8[0] = v161[1];
        v163 = _Q0.u32[0] - v30;
        v164 = v282 * v163;
        _Q2.i8[0] = v49->i8[0];
        v165 = _S29 * (_Q2.u32[0] - v29);
        v166 = (v282 * v163) + v165;
        v167 = 8191.0;
        if (v166 <= 8191.0)
        {
          v167 = (v282 * v163) + v165;
          if (v166 < 0.0)
          {
            v167 = 0.0;
          }
        }

        LOBYTE(v166) = *v161;
        v168 = LODWORD(v166) - v30;
        v169 = (v281 * v163) + (v168 * v299);
        v170 = 8191.0;
        if ((v165 + v169) <= 8191.0)
        {
          v170 = v165 + v169;
          if ((v165 + v169) < 0.0)
          {
            v170 = 0.0;
          }
        }

        v171 = v301 * v168;
        v172 = v171 + v165;
        v173 = 8191.0;
        if (v172 <= 8191.0)
        {
          v173 = v172;
          if (v172 < 0.0)
          {
            v173 = 0.0;
          }
        }

        LOBYTE(v172) = v49->i8[1];
        v174 = _S29 * (LODWORD(v172) - v29);
        v175 = 8191.0;
        if ((v164 + v174) <= 8191.0)
        {
          v175 = v164 + v174;
          if ((v164 + v174) < 0.0)
          {
            v175 = 0.0;
          }
        }

        v176 = 8191.0;
        if ((v169 + v174) <= 8191.0)
        {
          v176 = v169 + v174;
          if ((v169 + v174) < 0.0)
          {
            v176 = 0.0;
          }
        }

        v177 = v171 + v174;
        v178 = 8191.0;
        if (v177 <= 8191.0)
        {
          v178 = v177;
          if (v177 < 0.0)
          {
            v178 = 0.0;
          }
        }

        LOBYTE(v177) = v62->i8[0];
        v179 = _S29 * (LODWORD(v177) - v29);
        v180 = v164 + v179;
        v181 = 8191.0;
        if ((v164 + v179) <= 8191.0)
        {
          v181 = v164 + v179;
          if (v180 < 0.0)
          {
            v181 = 0.0;
          }
        }

        v182 = 8191.0;
        if ((v169 + v179) <= 8191.0)
        {
          v182 = v169 + v179;
          if ((v169 + v179) < 0.0)
          {
            v182 = 0.0;
          }
        }

        v183 = v171 + v179;
        v184 = 8191.0;
        if (v183 <= 8191.0)
        {
          v184 = v183;
          if (v183 < 0.0)
          {
            v184 = 0.0;
          }
        }

        LOBYTE(v180) = v62->i8[1];
        v185 = _S29 * (LODWORD(v180) - v29);
        v186 = v164 + v185;
        v187 = 8191.0;
        if (v186 <= 8191.0)
        {
          v187 = v186;
          if (v186 < 0.0)
          {
            v187 = 0.0;
          }
        }

        v188 = 8191.0;
        if ((v169 + v185) <= 8191.0)
        {
          v188 = v169 + v185;
          if ((v169 + v185) < 0.0)
          {
            v188 = 0.0;
          }
        }

        v189 = v171 + v185;
        v190 = (v171 + v185) <= 8191.0;
        v191 = 8191.0;
        if (v190)
        {
          v191 = v189;
          if (v189 < 0.0)
          {
            v191 = 0.0;
          }
        }

        if (v46)
        {
          v192 = v46->i8[0];
          LOBYTE(v169) = v46->i8[1];
          v46 = (v46 + 2);
          v193 = *v63;
          LOBYTE(v180) = v63[1];
          v63 += 2;
          *_Q0.i32 = LODWORD(v189) * 0.0039216;
          _S1 = LODWORD(v169) * 0.0039216;
          _S7 = LODWORD(v171) * 0.0039216;
          _Q2.f32[0] = LODWORD(v180);
          _S5 = LODWORD(v180) * 0.0039216;
          __asm
          {
            FCVT            H2, S0
            FCVT            H0, S1
            FCVT            H1, S7
            FCVT            H4, S5
          }
        }

        else
        {
          _Q2.i32[0] = 0;
          _Q0.i32[0] = 0;
          _H1 = 0;
          _H4 = 0;
        }

        _H5 = *&v32[2 * llroundf(fminf(fmaxf(v167, 0.0), 8191.0))];
        __asm { FCVT            S15, H5 }

        _H5 = *&v32[2 * llroundf(fminf(fmaxf(v170, 0.0), 8191.0))];
        __asm { FCVT            S27, H5 }

        _H5 = *&v32[2 * llroundf(fminf(fmaxf(v173, 0.0), 8191.0))];
        __asm { FCVT            S31, H5 }

        _H6 = *&v32[2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0))];
        _H7 = *&v32[2 * llroundf(fminf(fmaxf(v176, 0.0), 8191.0))];
        _H16 = *&v32[2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0))];
        _H5 = *&v32[2 * llroundf(fminf(fmaxf(v181, 0.0), 8191.0))];
        _H13 = *&v32[2 * llroundf(fminf(fmaxf(v182, 0.0), 8191.0))];
        _H14 = *&v32[2 * llroundf(fminf(fmaxf(v184, 0.0), 8191.0))];
        _H9 = *&v32[2 * llroundf(fminf(fmaxf(v187, 0.0), 8191.0))];
        _H10 = *&v32[2 * llroundf(fminf(fmaxf(v188, 0.0), 8191.0))];
        _H11 = *&v32[2 * llroundf(fminf(fmaxf(v191, 0.0), 8191.0))];
        v214 = fmaxf(_S15, fmaxf(_S27, _S31));
        v215 = (((v306 * _S27) + (v307 * _S15)) + (v305 * _S31)) + (v304 * v214);
        v216 = 8191.0;
        if (v215 <= 8191.0)
        {
          v216 = (((v306 * _S27) + (v307 * _S15)) + (v305 * _S31)) + (v304 * v214);
          if (v215 < 0.0)
          {
            v216 = 0.0;
          }
        }

        __asm
        {
          FCVT            S3, H6
          FCVT            S21, H7
          FCVT            S23, H16
        }

        _H12 = *&v27[2 * llroundf(v216)];
        v221 = (((v306 * _S21) + (v307 * _S3)) + (v305 * _S23)) + (v304 * fmaxf(_S3, fmaxf(_S21, _S23)));
        v222 = 8191.0;
        if (v221 <= 8191.0)
        {
          v222 = v221;
          if (v221 < 0.0)
          {
            v222 = 0.0;
          }
        }

        __asm
        {
          FCVT            S5, H5
          FCVT            S13, H13
          FCVT            S14, H14
        }

        _H6 = *&v27[2 * llroundf(v222)];
        v227 = fmaxf(_S5, fmaxf(_S13, _S14));
        v228 = (((v306 * _S13) + (v307 * _S5)) + (v305 * _S14)) + (v304 * v227);
        v229 = 8191.0;
        if (v228 <= 8191.0)
        {
          v229 = (((v306 * _S13) + (v307 * _S5)) + (v305 * _S14)) + (v304 * v227);
          if (v228 < 0.0)
          {
            v229 = 0.0;
          }
        }

        __asm
        {
          FCVT            S7, H9
          FCVT            S16, H10
          FCVT            S9, H11
        }

        _H10 = *&v27[2 * llroundf(v229)];
        v234 = (((v306 * _S16) + (v307 * _S7)) + (v305 * _S9)) + (v304 * fmaxf(_S7, fmaxf(_S16, _S9)));
        v235 = 8191.0;
        if (v234 <= 8191.0)
        {
          v235 = v234;
          if (v234 < 0.0)
          {
            v235 = 0.0;
          }
        }

        __asm { FCVT            S17, H12 }

        v237 = _S15 * _S17;
        v238 = _S27 * _S17;
        v239 = _S31 * _S17;
        __asm { FCVT            S6, H6 }

        v241 = _S3 * _S6;
        v242 = _S21 * _S6;
        v243 = _S23 * _S6;
        __asm { FCVT            S23, H10 }

        v245 = _S5 * _S23;
        v246 = _S13 * _S23;
        v247 = _S14 * _S23;
        _H10 = *&v27[2 * llroundf(v235)];
        __asm { FCVT            S10, H10 }

        v250 = _S7 * _S10;
        v251 = _S16 * _S10;
        v252 = _S9 * _S10;
        v253 = ((v315 * v238) + (v237 * v316)) + (v239 * v314);
        v254 = ((v312 * v238) + (v237 * v313)) + (v239 * v311);
        v255 = ((v309 * v238) + (v237 * v310)) + (v239 * v308);
        v256 = ((v315 * v242) + (v241 * v316)) + (v243 * v314);
        v257 = ((v312 * v242) + (v241 * v313)) + (v243 * v311);
        v258 = ((v309 * v242) + (v241 * v310)) + (v243 * v308);
        v259 = ((v315 * v246) + (v245 * v316)) + (v247 * v314);
        v260 = ((v312 * v246) + (v245 * v313)) + (v247 * v311);
        v261 = ((v309 * v246) + (v245 * v310)) + (v247 * v308);
        v262 = ((v315 * v251) + (v250 * v316)) + (v252 * v314);
        v263 = ((v312 * v251) + (v250 * v313)) + (v252 * v311);
        v264 = ((v309 * v251) + (v250 * v310)) + (v252 * v308);
        LOWORD(v251) = *&v33[2 * llroundf(fminf(fmaxf(v254, 0.0), 8191.0))];
        LOWORD(v255) = *&v33[2 * llroundf(fminf(fmaxf(v255, 0.0), 8191.0))];
        v265 = *&v33[2 * llroundf(fminf(fmaxf(v256, 0.0), 8191.0))];
        v266 = *&v33[2 * llroundf(fminf(fmaxf(v257, 0.0), 8191.0))];
        v267 = *&v33[2 * llroundf(fminf(fmaxf(v258, 0.0), 8191.0))];
        v268 = *&v33[2 * llroundf(fminf(fmaxf(v259, 0.0), 8191.0))];
        v269 = *&v33[2 * llroundf(fminf(fmaxf(v260, 0.0), 8191.0))];
        v270 = *&v33[2 * llroundf(fminf(fmaxf(v261, 0.0), 8191.0))];
        v271 = *&v33[2 * llroundf(fminf(fmaxf(v262, 0.0), 8191.0))];
        v272 = *&v33[2 * llroundf(fminf(fmaxf(v263, 0.0), 8191.0))];
        v273 = *&v33[2 * llroundf(fminf(fmaxf(v264, 0.0), 8191.0))];
        *v47 = *&v33[2 * llroundf(fminf(fmaxf(v253, 0.0), 8191.0))];
        v47[1] = LOWORD(v251);
        v47[2] = LOWORD(v255);
        if (!v46)
        {
          _Q2.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v47[3] = _Q2.i16[0];
        v47[4] = v265;
        v47[5] = v266;
        v47[6] = v267;
        if (v46)
        {
          _Q2.i16[0] = _Q0.i16[0];
        }

        else
        {
          _Q2.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v47[7] = _Q2.i16[0];
        *v61 = v268;
        v61[1] = v269;
        v61[2] = v270;
        if (!v46)
        {
          _H1 = COERCE_UNSIGNED_INT(1.0);
        }

        v61[3] = _H1;
        v61[4] = v271;
        v61[5] = v272;
        v61[6] = v273;
        v162 += 2;
        v161 += 2;
        v49 = (v49 + 2);
        _Q0.i16[0] = _H4;
        if (!v46)
        {
          _Q0.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v61[7] = _Q0.i16[0];
        v62 = (v62 + 2);
        v47 += 8;
      }

      v49 = &v57[v15];
      v16 = v277;
      v48 = &v278[v48];
      v46 = (v58 + v277);
      v47 = (v59 + v276);
      v17 = v276;
      v10 += 2;
      v56 = 0uLL;
    }

    while (v10 < v279);
  }

  *&v274[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = 2 * *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = 2 * ((v7 + v7 * a2) / v6 - v8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    v19 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    v20 = LODWORD(a5);
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v174 = v19 * *(v11 + 16);
    v175 = v19 * *(v11 + 8);
    v172 = v19 * *(v11 + 28);
    v173 = v19 * *(v11 + 20);
    v170 = *(v11 + 76);
    v171 = *(v11 + 72);
    v168 = *(v11 + 84);
    v169 = *(v11 + 80);
    v166 = *(v11 + 92);
    v167 = *(v11 + 88);
    v164 = *(v11 + 100);
    v165 = *(v11 + 96);
    v23 = v11 + 16548;
    v24 = *(result + 15) + 2 * v8;
    v25 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
    v26 = v11 + 32932;
    v162 = *(v11 + 108);
    v163 = *(v11 + 104);
    v27 = *(v11 + 112);
    v28 = *(v11 + 116);
    v161 = v27;
    v29 = *(v11 + 120);
    v30 = v11 + 164;
    v31 = **(result + 16) + v18 * v24 + 8 * *(result + 14);
    v32 = v13[2];
    v33 = v32 + v25 * v17;
    _ZF = v32 == 0;
    v35 = *v13 + v25 * v15;
    v36 = v13[1] + v25 / 2 * v16;
    v37 = *(result + 36);
    v38 = (v33 + v37);
    if (_ZF)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    v40 = (v35 + v37);
    v41 = v36 + v37;
    v177 = LODWORD(a5);
    v178 = v20;
    v176 = v22;
    do
    {
      v42 = &v40[v15];
      v43 = &v39[v17];
      v44 = v31 + v18;
      if (v12 >= 1)
      {
        v45 = 0;
        v46 = v31 + v18;
        v47 = &v40[v15];
        v48 = &v39[v17];
        do
        {
          LOBYTE(v27) = *(v41 + v45 + 1);
          v49 = LODWORD(v27) - v21;
          v50 = LODWORD(v175);
          v51 = v175 * v49;
          LOBYTE(v50) = *v40;
          v52 = v22 * (v50 - v20);
          v53 = (v175 * v49) + v52;
          v54 = 8191.0;
          if (v53 <= 8191.0)
          {
            v54 = (v175 * v49) + v52;
            if (v53 < 0.0)
            {
              v54 = 0.0;
            }
          }

          LOBYTE(v53) = *(v41 + v45);
          v55 = LODWORD(v53) - v21;
          v56 = (v173 * v49) + (v55 * v174);
          v57 = 8191.0;
          if ((v52 + v56) <= 8191.0)
          {
            v57 = v52 + v56;
            if ((v52 + v56) < 0.0)
            {
              v57 = 0.0;
            }
          }

          v58 = v172 * v55;
          v59 = (v172 * v55) + v52;
          v60 = 8191.0;
          if (v59 <= 8191.0)
          {
            v60 = v59;
            if (v59 < 0.0)
            {
              v60 = 0.0;
            }
          }

          LOBYTE(v59) = v40[1];
          v61 = v22 * (LODWORD(v59) - v20);
          v62 = 8191.0;
          if ((v51 + v61) <= 8191.0)
          {
            v62 = v51 + v61;
            if ((v51 + v61) < 0.0)
            {
              v62 = 0.0;
            }
          }

          v63 = 8191.0;
          if ((v56 + v61) <= 8191.0)
          {
            v63 = v56 + v61;
            if ((v56 + v61) < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = v58 + v61;
          v65 = 8191.0;
          if (v64 <= 8191.0)
          {
            v65 = v64;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          LOBYTE(v64) = *v47;
          v66 = LODWORD(v64) - v20;
          v67 = v22 * v66;
          v68 = 8191.0;
          if ((v51 + (v22 * v66)) <= 8191.0)
          {
            v68 = v51 + (v22 * v66);
            if (v68 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = 8191.0;
          if ((v56 + v67) <= 8191.0)
          {
            v69 = v56 + v67;
            if ((v56 + v67) < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v58 + v67;
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          LOBYTE(v66) = v47[1];
          v72 = v22 * (LODWORD(v66) - v20);
          v73 = 8191.0;
          if ((v51 + v72) <= 8191.0)
          {
            v73 = v51 + v72;
            if ((v51 + v72) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = 8191.0;
          if ((v56 + v72) <= 8191.0)
          {
            v74 = v56 + v72;
            if ((v56 + v72) < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v58 + v72;
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          if (v39)
          {
            LOBYTE(v75) = *v39;
            LOBYTE(v20) = v39[1];
            v39 += 2;
            LOBYTE(v22) = *v48;
            LOBYTE(v5) = v48[1];
            v48 += 2;
            _S1 = LODWORD(v75) * 0.0039216;
            _S16 = LODWORD(v20) * 0.0039216;
            _S17 = LODWORD(v22) * 0.0039216;
            _S18 = LODWORD(v5) * 0.0039216;
            __asm
            {
              FCVT            H9, S1
              FCVT            H10, S16
              FCVT            H8, S17
              FCVT            H31, S18
            }
          }

          else
          {
            LOWORD(_H9) = 0;
            LOWORD(_H10) = 0;
            LOWORD(_H8) = 0;
            LOWORD(_H31) = 0;
          }

          _S1 = fmaxf(v54, 0.0);
          v89 = 8191.0;
          LOWORD(_S1) = *(v30 + 2 * llroundf(fminf(_S1, 8191.0)));
          __asm { FCVT            S1, H1 }

          _H16 = *(v30 + 2 * llroundf(fminf(fmaxf(v57, 0.0), 8191.0)));
          __asm { FCVT            S12, H16 }

          _H16 = *(v30 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          __asm { FCVT            S13, H16 }

          _H16 = *(v30 + 2 * llroundf(fminf(fmaxf(v62, 0.0), 8191.0)));
          _H15 = *(v30 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          _H17 = *(v30 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          _H5 = *(v30 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          _H6 = *(v30 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          _H14 = *(v30 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          _H2 = *(v30 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          _H4 = *(v30 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          _H3 = *(v30 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          v104 = (((v161 * _S12) + (v162 * _S1)) + (v28 * _S13)) + (v29 * fmaxf(_S1, fmaxf(_S12, _S13)));
          v105 = 8191.0;
          if (v104 <= 8191.0)
          {
            v105 = v104;
            if (v104 < 0.0)
            {
              v105 = 0.0;
            }
          }

          __asm
          {
            FCVT            S30, H16
            FCVT            S15, H15
            FCVT            S7, H17
          }

          _H16 = *(v23 + 2 * llroundf(v105));
          v110 = (((v161 * _S15) + (v162 * _S30)) + (v28 * _S7)) + (v29 * fmaxf(_S30, fmaxf(_S15, _S7)));
          v111 = 8191.0;
          if (v110 <= 8191.0)
          {
            v111 = v110;
            if (v110 < 0.0)
            {
              v111 = 0.0;
            }
          }

          __asm
          {
            FCVT            S20, H5
            FCVT            S21, H6
            FCVT            S22, H14
          }

          _H5 = *(v23 + 2 * llroundf(v111));
          v116 = (((v161 * _S21) + (v162 * _S20)) + (v28 * _S22)) + (v29 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v117 = 8191.0;
          if (v116 <= 8191.0)
          {
            v117 = v116;
            if (v116 < 0.0)
            {
              v117 = 0.0;
            }
          }

          __asm
          {
            FCVT            S17, H2
            FCVT            S18, H4
            FCVT            S19, H3
            FCVT            S2, H16
          }

          v122 = _S1 * _S2;
          v123 = _S12 * _S2;
          v124 = _S13 * _S2;
          __asm { FCVT            S1, H5 }

          v126 = _S30 * _S1;
          v127 = _S15 * _S1;
          LOWORD(_S2) = *(v23 + 2 * llroundf(v117));
          v128 = _S7 * _S1;
          __asm { FCVT            S2, H2 }

          v130 = _S20 * _S2;
          v131 = _S21 * _S2;
          v132 = _S22 * _S2;
          v133 = fmaxf(_S17, fmaxf(_S18, _S19));
          v134 = (((v161 * _S18) + (v162 * _S17)) + (v28 * _S19)) + (v29 * v133);
          if (v134 <= 8191.0)
          {
            v89 = (((v161 * _S18) + (v162 * _S17)) + (v28 * _S19)) + (v29 * v133);
            if (v134 < 0.0)
            {
              v89 = 0.0;
            }
          }

          _H7 = *(v23 + 2 * llroundf(v89));
          __asm { FCVT            S7, H7 }

          v137 = _S17 * _S7;
          v138 = _S18 * _S7;
          v139 = _S19 * _S7;
          v140 = ((v170 * v123) + (v122 * v171)) + (v124 * v169);
          v141 = ((v170 * v127) + (v126 * v171)) + (v128 * v169);
          v142 = ((v167 * v127) + (v126 * v168)) + (v128 * v166);
          v143 = ((v164 * v127) + (v126 * v165)) + (v128 * v163);
          v144 = ((v170 * v131) + (v130 * v171)) + (v132 * v169);
          v145 = ((v167 * v131) + (v130 * v168)) + (v132 * v166);
          v146 = ((v164 * v131) + (v130 * v165)) + (v132 * v163);
          v147 = ((v170 * v138) + (v137 * v171)) + (v139 * v169);
          v148 = ((v167 * v138) + (v137 * v168)) + (v139 * v166);
          v149 = ((v164 * v138) + (v137 * v165)) + (v139 * v163);
          LOWORD(v137) = *(v26 + 2 * llroundf(fminf(fmaxf(((v167 * v123) + (v122 * v168)) + (v124 * v166), 0.0), 8191.0)));
          v150 = *(v26 + 2 * llroundf(fminf(fmaxf(((v164 * v123) + (v122 * v165)) + (v124 * v163), 0.0), 8191.0)));
          v5 = fminf(fmaxf(v141, 0.0), 8191.0);
          LOWORD(v5) = *(v26 + 2 * llroundf(v5));
          v151 = *(v26 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          v152 = *(v26 + 2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0)));
          v153 = *(v26 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          v154 = *(v26 + 2 * llroundf(fminf(fmaxf(v145, 0.0), 8191.0)));
          v27 = fminf(fmaxf(v146, 0.0), 8191.0);
          LOWORD(v27) = *(v26 + 2 * llroundf(v27));
          v155 = *(v26 + 2 * llroundf(fminf(fmaxf(v147, 0.0), 8191.0)));
          v156 = *(v26 + 2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0)));
          v157 = *(v26 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
          *v31 = *(v26 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          *(v31 + 2) = LOWORD(v137);
          *(v31 + 4) = v150;
          if (v39)
          {
            v158 = _H9;
          }

          else
          {
            LOWORD(v158) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v31 + 6) = v158;
          *(v31 + 8) = LOWORD(v5);
          *(v31 + 10) = v151;
          *(v31 + 12) = v152;
          if (v39)
          {
            v159 = _H10;
          }

          else
          {
            LOWORD(v159) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v31 + 14) = v159;
          *v46 = v153;
          *(v46 + 2) = v154;
          v40 += 2;
          v47 += 2;
          v31 += 16;
          *(v46 + 4) = LOWORD(v27);
          if (v39)
          {
            v160 = _H8;
          }

          else
          {
            LOWORD(v160) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v46 + 6) = v160;
          *(v46 + 8) = v155;
          *(v46 + 10) = v156;
          *(v46 + 12) = v157;
          if (v39)
          {
            *&v27 = _H31;
          }

          else
          {
            LOWORD(v27) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v46 + 14) = LOWORD(v27);
          v46 += 16;
          v45 += 2;
          v21 = v177;
          v20 = v178;
          v22 = v176;
        }

        while (v45 < v12);
      }

      v40 = &v42[v15];
      v41 += v16;
      v39 = &v43[v17];
      v31 = v44 + v18;
      v10 += 2;
    }

    while (v10 < v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

char *vt_Copy_420vf_TRC_Mat_TRC_RGhA_neon_fp16_GCD(char *result, uint64_t a2)
{
  v5 = 2 * *result;
  v242 = result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v244 = 2 * ((v6 + v6 * a2) / v5 - v7);
  if (v244 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = *(result + 19);
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    result = v12[1];
    v14 = v12[2];
    v15 = **(v242 + 17);
    v16 = v10[17].u16[2];
    v17 = v10[17].u16[3];
    v2.i32[0] = v10->i32[0];
    v3.i32[0] = v10[3].i32[1];
    v18 = &v10[20] + 4;
    v19 = v9 & 0xFFFFFFFE;
    v20 = v16;
    v21 = v17;
    v4.f32[0] = 8191.0 / v10[16].u32[0];
    _S20 = v4.f32[0] * v10->f32[0];
    v23 = &v10[2068] + 4;
    __asm { FCVT            H9, S20 }

    *v2.i16 = v16;
    v262 = vdupq_lane_s16(v2, 0);
    v263 = _H9;
    v29 = -v17;
    v3.i32[1] = v10[1].i32[0];
    *v3.f32 = vmul_n_f32(*v3.f32, v4.f32[0]);
    *v4.f32 = vmul_n_f32(v10[2], v4.f32[0]);
    v260 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v257 = vmulq_n_f16(v260, v29);
    v258 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v274 = v10[9].f32[0];
    __asm { FCVT            H0, S0 }

    v255 = _H0;
    v256 = vmulq_n_f16(v258, v29);
    v273 = v10[9].f32[1];
    __asm { FCVT            H0, S1 }

    v254 = _H0;
    v272 = v10[10].f32[0];
    __asm { FCVT            H0, S2 }

    v253 = _H0;
    v271 = v10[10].f32[1];
    __asm { FCVT            H0, S3 }

    v252 = _H0;
    v270 = v10[11].f32[0];
    __asm { FCVT            H0, S4 }

    v251 = _H0;
    v269 = v10[11].f32[1];
    __asm { FCVT            H0, S5 }

    v250 = _H0;
    v268 = v10[12].f32[0];
    __asm { FCVT            H0, S6 }

    v249 = _H0;
    v267 = v10[12].f32[1];
    __asm { FCVT            H0, S7 }

    v248 = _H0;
    v266 = v10[13].f32[0];
    __asm { FCVT            H0, S24 }

    v247 = _H0;
    v40 = v11[1];
    v39 = v11[2];
    v41 = *(v242 + 44) + 2 * (*(v242 + 28) * a2 / v5);
    v42 = *v11;
    v243 = result;
    v43 = v40 + result * (v41 / 2);
    v44 = *(v242 + 36);
    v45 = (v39 + v14 * v41 + v44);
    v46 = **(v242 + 16) + v15 * (*(v242 + 15) + 2 * v7) + 8 * *(v242 + 14);
    if (!v39)
    {
      v45 = 0;
    }

    v47 = (v43 + v44);
    v48 = (v42 + v13 * v41 + v44);
    v261 = v3.f32[0];
    v49.i32[0] = v4.i32[1];
    LODWORD(v245) = HIDWORD(v4.u64[0]);
    LODWORD(v259) = v4.i64[0];
    v246 = v3.f32[1];
    v265 = v20;
    v275 = v21;
    v264 = _S20;
    do
    {
      v50 = v48 + v13;
      v51 = v45 + v14;
      v52 = v46 + v15;
      if (v9 < 8)
      {
        v150 = 0;
        v149 = v47;
        v56 = (v45 + v14);
        v55 = (v48 + v13);
        v54 = v46 + v15;
      }

      else
      {
        v53 = 0;
        v54 = v46 + v15;
        v55 = (v48 + v13);
        v56 = (v45 + v14);
        do
        {
          if (v45)
          {
            v57 = *v45++;
            v58 = v57;
            v59 = *v56++;
            v60 = v59;
          }

          else
          {
            v58 = 0;
            v60 = 0;
          }

          v61 = *&v47[v53];
          *v62.i8 = vzip1_s8(v61, 0);
          v62.u64[1] = vzip2_s8(v61, 0);
          v63 = vcvtq_f16_u16(v62);
          v64 = vmlaq_f16(v257, v260, v63);
          v65 = vmlaq_f16(v256, v258, v63);
          v66 = vtrn2q_s16(v64, v64);
          v67 = vtrn1q_s16(v64, v64);
          v68 = vuzp1q_s16(v65, v258);
          *v68.i8 = vadd_f16(*v68.i8, *&vuzp2q_s16(v65, v258));
          v69 = *v48++;
          v70 = vzip1q_s16(v68, v68);
          *v65.i8 = vzip1_s8(v69, 0);
          v65.u64[1] = vzip2_s8(v69, 0);
          v71 = *v55++;
          *v72.i8 = vzip1_s8(v71, 0);
          v72.u64[1] = vzip2_s8(v71, 0);
          v73 = vsubq_f16(vcvtq_f16_u16(v65), v262);
          v74 = vsubq_f16(vcvtq_f16_u16(v72), v262);
          v75 = vmlaq_n_f16(v66, v73, v263);
          v76 = vmlaq_n_f16(v66, v74, v263);
          v77 = vmlaq_n_f16(v70, v73, v263);
          v78 = vmlaq_n_f16(v70, v74, v263);
          v79 = vmlaq_n_f16(v67, v73, v263);
          v80 = vmlaq_n_f16(v67, v74, v263);
          if (v45)
          {
            *v81.i8 = vzip1_s8(v58, 0);
            v81.u64[1] = vzip2_s8(v58, 0);
            v82 = vdupq_n_s16(0x1C04u);
            v83 = vmulq_f16(vcvtq_f16_u16(v81), v82);
            *v84.i8 = vzip1_s8(v60, 0);
            v84.u64[1] = vzip2_s8(v60, 0);
            v85 = vmulq_f16(vcvtq_f16_u16(v84), v82);
          }

          else
          {
            v83.i64[0] = 0x3C003C003C003C00;
            v83.i64[1] = 0x3C003C003C003C00;
            v85.i64[0] = 0x3C003C003C003C00;
            v85.i64[1] = 0x3C003C003C003C00;
          }

          v86.i64[0] = 0x9000900090009000;
          v86.i64[1] = 0x9000900090009000;
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v75, 0), v86));
          v88.i16[0] = *&v18[2 * v87.u16[0]];
          v88.i16[1] = *&v18[2 * v87.u16[1]];
          v88.i16[2] = *&v18[2 * v87.u16[2]];
          v88.i16[3] = *&v18[2 * v87.u16[3]];
          v88.i16[4] = *&v18[2 * v87.u16[4]];
          v88.i16[5] = *&v18[2 * v87.u16[5]];
          v88.i16[6] = *&v18[2 * v87.u16[6]];
          v88.i16[7] = *&v18[2 * v87.u16[7]];
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v77, 0), v86));
          v90.i16[0] = *&v18[2 * v89.u16[0]];
          v90.i16[1] = *&v18[2 * v89.u16[1]];
          v90.i16[2] = *&v18[2 * v89.u16[2]];
          v90.i16[3] = *&v18[2 * v89.u16[3]];
          v90.i16[4] = *&v18[2 * v89.u16[4]];
          v90.i16[5] = *&v18[2 * v89.u16[5]];
          v90.i16[6] = *&v18[2 * v89.u16[6]];
          v90.i16[7] = *&v18[2 * v89.u16[7]];
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v79, 0), v86));
          v89.i16[0] = *&v18[2 * v91.u16[0]];
          v89.i16[1] = *&v18[2 * v91.u16[1]];
          v89.i16[2] = *&v18[2 * v91.u16[2]];
          v89.i16[3] = *&v18[2 * v91.u16[3]];
          v89.i16[4] = *&v18[2 * v91.u16[4]];
          v89.i16[5] = *&v18[2 * v91.u16[5]];
          v89.i16[6] = *&v18[2 * v91.u16[6]];
          v89.i16[7] = *&v18[2 * v91.u16[7]];
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v76, 0), v86));
          v93.i16[0] = *&v18[2 * v92.u16[0]];
          v93.i16[1] = *&v18[2 * v92.u16[1]];
          v93.i16[2] = *&v18[2 * v92.u16[2]];
          v93.i16[3] = *&v18[2 * v92.u16[3]];
          v93.i16[4] = *&v18[2 * v92.u16[4]];
          v93.i16[5] = *&v18[2 * v92.u16[5]];
          v93.i16[6] = *&v18[2 * v92.u16[6]];
          v93.i16[7] = *&v18[2 * v92.u16[7]];
          v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v78, 0), v86));
          v92.i16[0] = *&v18[2 * v94.u16[0]];
          v92.i16[1] = *&v18[2 * v94.u16[1]];
          v92.i16[2] = *&v18[2 * v94.u16[2]];
          v92.i16[3] = *&v18[2 * v94.u16[3]];
          v92.i16[4] = *&v18[2 * v94.u16[4]];
          v92.i16[5] = *&v18[2 * v94.u16[5]];
          v92.i16[6] = *&v18[2 * v94.u16[6]];
          v92.i16[7] = *&v18[2 * v94.u16[7]];
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v80, 0), v86));
          v94.i16[0] = *&v18[2 * v95.u16[0]];
          v94.i16[1] = *&v18[2 * v95.u16[1]];
          v94.i16[2] = *&v18[2 * v95.u16[2]];
          v94.i16[3] = *&v18[2 * v95.u16[3]];
          v94.i16[4] = *&v18[2 * v95.u16[4]];
          v94.i16[5] = *&v18[2 * v95.u16[5]];
          v94.i16[6] = *&v18[2 * v95.u16[6]];
          v94.i16[7] = *&v18[2 * v95.u16[7]];
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v88, v255), v90, v254), v89, v253), 0), v86));
          v97 = *&v23[2 * v96.u16[0]];
          v98 = *&v23[2 * v96.u16[1]];
          v99 = *&v23[2 * v96.u16[2]];
          v100 = *&v23[2 * v96.u16[3]];
          v101 = *&v23[2 * v96.u16[4]];
          v102 = *&v23[2 * v96.u16[5]];
          v103 = *&v23[2 * v96.u16[6]];
          v104 = *&v23[2 * v96.u16[7]];
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v88, v252), v90, v251), v89, v250), 0), v86));
          v106 = *&v23[2 * v105.u16[0]];
          v107 = *&v23[2 * v105.u16[1]];
          v108 = *&v23[2 * v105.u16[2]];
          v109 = *&v23[2 * v105.u16[3]];
          v110 = *&v23[2 * v105.u16[4]];
          v111 = *&v23[2 * v105.u16[5]];
          v112 = *&v23[2 * v105.u16[6]];
          v113 = *&v23[2 * v105.u16[7]];
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v89, v247), v90, v248), v88, v249), 0), v86));
          v115 = *&v23[2 * v114.u16[0]];
          v116 = *&v23[2 * v114.u16[1]];
          v117 = *&v23[2 * v114.u16[2]];
          v118 = *&v23[2 * v114.u16[3]];
          v119 = *&v23[2 * v114.u16[4]];
          v120 = *&v23[2 * v114.u16[5]];
          v121 = *&v23[2 * v114.u16[6]];
          v122 = *&v23[2 * v114.u16[7]];
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v255), v92, v254), v94, v253), 0), v86));
          v124 = *&v23[2 * v123.u16[0]];
          v125 = *&v23[2 * v123.u16[1]];
          v126 = *&v23[2 * v123.u16[2]];
          v127 = *&v23[2 * v123.u16[3]];
          v128 = *&v23[2 * v123.u16[4]];
          v129 = *&v23[2 * v123.u16[5]];
          v130 = *&v23[2 * v123.u16[6]];
          v131 = *&v23[2 * v123.u16[7]];
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v252), v92, v251), v94, v250), 0), v86));
          v133 = *&v23[2 * v132.u16[0]];
          v134 = *&v23[2 * v132.u16[1]];
          v135 = *&v23[2 * v132.u16[2]];
          v136 = *&v23[2 * v132.u16[3]];
          v137 = *&v23[2 * v132.u16[4]];
          v138 = *&v23[2 * v132.u16[5]];
          v139 = *&v23[2 * v132.u16[6]];
          v140 = *&v23[2 * v132.u16[7]];
          v49 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, v247), v92, v248), v93, v249), 0), v86));
          v141 = *&v23[2 * v49.u16[0]];
          result = &v23[2 * v49.u16[4]];
          v142 = *&v23[2 * v49.u16[1]];
          v143 = *&v23[2 * v49.u16[2]];
          v144 = *&v23[2 * v49.u16[3]];
          v145 = *result;
          v146 = *&v23[2 * v49.u16[5]];
          v147 = *&v23[2 * v49.u16[6]];
          v148 = *&v23[2 * v49.u16[7]];
          vst4q_s16(v46, *(&v83 - 3));
          v46 += 64;
          vst4q_s16(v54, *(&v85 - 3));
          v54 += 64;
          v53 += 8;
        }

        while (v53 < v9 - 7);
        v149 = &v47[v53];
        v150 = v9 & 0xFFFFFFF8;
        v21 = v275;
      }

      for (; v150 < v19; _S20 = v264)
      {
        v49.i8[0] = v149[1];
        v151 = v49.u32[0] - v21;
        v152 = LODWORD(v246);
        v153 = v246 * v151;
        LOBYTE(v152) = v48->i8[0];
        v154 = v152 - v20;
        v155 = _S20 * v154;
        v156 = (v246 * v151) + (_S20 * v154);
        v157 = 8191.0;
        if (v156 <= 8191.0)
        {
          v157 = (v246 * v151) + (_S20 * v154);
          if (v156 < 0.0)
          {
            v157 = 0.0;
          }
        }

        LOBYTE(v154) = *v149;
        v158 = LODWORD(v154) - v21;
        v159 = (v245 * v151) + (v158 * v259);
        v160 = 8191.0;
        if ((v155 + v159) <= 8191.0)
        {
          v160 = v155 + v159;
          if ((v155 + v159) < 0.0)
          {
            v160 = 0.0;
          }
        }

        v161 = LODWORD(v261);
        v162 = v261 * v158;
        v163 = (v261 * v158) + v155;
        v164 = 8191.0;
        if (v163 <= 8191.0)
        {
          v164 = v163;
          if (v163 < 0.0)
          {
            v164 = 0.0;
          }
        }

        LOBYTE(v161) = v48->i8[1];
        v165 = v161 - v20;
        v166 = _S20 * v165;
        v167 = v153 + (_S20 * v165);
        v168 = 8191.0;
        if (v167 <= 8191.0)
        {
          v168 = v153 + (_S20 * v165);
          if (v167 < 0.0)
          {
            v168 = 0.0;
          }
        }

        v169 = 8191.0;
        if ((v159 + v166) <= 8191.0)
        {
          v169 = v159 + v166;
          if ((v159 + v166) < 0.0)
          {
            v169 = 0.0;
          }
        }

        v170 = v162 + v166;
        v171 = 8191.0;
        if (v170 <= 8191.0)
        {
          v171 = v170;
          if (v170 < 0.0)
          {
            v171 = 0.0;
          }
        }

        LOBYTE(v165) = v55->i8[0];
        v172 = _S20 * (LODWORD(v165) - v20);
        v173 = v153 + v172;
        v174 = 8191.0;
        if ((v153 + v172) <= 8191.0)
        {
          v174 = v153 + v172;
          if (v173 < 0.0)
          {
            v174 = 0.0;
          }
        }

        v175 = 8191.0;
        if ((v159 + v172) <= 8191.0)
        {
          v175 = v159 + v172;
          if ((v159 + v172) < 0.0)
          {
            v175 = 0.0;
          }
        }

        v176 = v162 + v172;
        v177 = 8191.0;
        if (v176 <= 8191.0)
        {
          v177 = v176;
          if (v176 < 0.0)
          {
            v177 = 0.0;
          }
        }

        LOBYTE(v173) = v55->i8[1];
        v178 = LODWORD(v173) - v20;
        v179 = _S20 * v178;
        v180 = v153 + (_S20 * v178);
        v181 = 8191.0;
        if (v180 <= 8191.0)
        {
          v181 = v153 + (_S20 * v178);
          if (v180 < 0.0)
          {
            v181 = 0.0;
          }
        }

        v182 = 8191.0;
        if ((v159 + v179) <= 8191.0)
        {
          v182 = v159 + v179;
          if ((v159 + v179) < 0.0)
          {
            v182 = 0.0;
          }
        }

        v183 = v162 + v179;
        v184 = (v162 + v179) <= 8191.0;
        v185 = 8191.0;
        if (v184)
        {
          v185 = v183;
          if (v183 < 0.0)
          {
            v185 = 0.0;
          }
        }

        if (v45)
        {
          LOBYTE(v178) = v45->i8[0];
          LOBYTE(v183) = v45->i8[1];
          v45 = (v45 + 2);
          LOBYTE(v159) = v56->i8[0];
          LOBYTE(v162) = v56->i8[1];
          v56 = (v56 + 2);
          _S0 = LODWORD(v178) * 0.0039216;
          _S28 = LODWORD(v183) * 0.0039216;
          _S9 = LODWORD(v159) * 0.0039216;
          _S1 = LODWORD(v162) * 0.0039216;
          __asm
          {
            FCVT            H11, S0
            FCVT            H12, S28
            FCVT            H9, S9
            FCVT            H28, S1
          }
        }

        else
        {
          LOWORD(_H11) = 0;
          LOWORD(_H12) = 0;
          LOWORD(_H9) = 0;
          LOWORD(_H28) = 0;
        }

        _H0 = *&v18[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v18[2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H21 = *&v18[2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0))];
        __asm { FCVT            S21, H21 }

        _H24 = *&v18[2 * llroundf(fminf(fmaxf(v168, 0.0), 8191.0))];
        __asm { FCVT            S24, H24 }

        _H25 = *&v18[2 * llroundf(fminf(fmaxf(v169, 0.0), 8191.0))];
        _H26 = *&v18[2 * llroundf(fminf(fmaxf(v171, 0.0), 8191.0))];
        __asm
        {
          FCVT            S25, H25
          FCVT            S26, H26
        }

        _H27 = *&v18[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
        __asm { FCVT            S27, H27 }

        _H29 = *&v18[2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0))];
        __asm { FCVT            S29, H29 }

        _H13 = *&v18[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
        __asm { FCVT            S13, H13 }

        _H14 = *&v18[2 * llroundf(fminf(fmaxf(v181, 0.0), 8191.0))];
        __asm { FCVT            S14, H14 }

        _H17 = *&v18[2 * llroundf(fminf(fmaxf(v182, 0.0), 8191.0))];
        _H10 = *&v18[2 * llroundf(fminf(fmaxf(v185, 0.0), 8191.0))];
        __asm
        {
          FCVT            S17, H17
          FCVT            S10, H10
        }

        v218 = ((v273 * _S1) + (_S0 * v274)) + (_S21 * v272);
        v219 = ((v270 * _S1) + (_S0 * v271)) + (_S21 * v269);
        v220 = ((v267 * _S1) + (_S0 * v268)) + (_S21 * v266);
        v221 = ((v273 * _S25) + (_S24 * v274)) + (_S26 * v272);
        v222 = ((v270 * _S25) + (_S24 * v271)) + (_S26 * v269);
        v223 = ((v267 * _S25) + (_S24 * v268)) + (_S26 * v266);
        v224 = ((v273 * _S29) + (_S27 * v274)) + (_S13 * v272);
        v225 = ((v270 * _S29) + (_S27 * v271)) + (_S13 * v269);
        v226 = ((v267 * _S29) + (_S27 * v268)) + (_S13 * v266);
        v227 = ((v273 * _S17) + (_S14 * v274)) + (_S10 * v272);
        v228 = ((v270 * _S17) + (_S14 * v271)) + (_S10 * v269);
        v229 = ((v267 * _S17) + (_S14 * v268)) + (_S10 * v266);
        LOWORD(v219) = *&v23[2 * llroundf(fminf(fmaxf(v219, 0.0), 8191.0))];
        *v49.i32 = fminf(fmaxf(v220, 0.0), 8191.0);
        v49.i16[0] = *&v23[2 * llroundf(*v49.i32)];
        v230 = *&v23[2 * llroundf(fminf(fmaxf(v221, 0.0), 8191.0))];
        v231 = *&v23[2 * llroundf(fminf(fmaxf(v222, 0.0), 8191.0))];
        v232 = *&v23[2 * llroundf(fminf(fmaxf(v223, 0.0), 8191.0))];
        v233 = *&v23[2 * llroundf(fminf(fmaxf(v224, 0.0), 8191.0))];
        v234 = *&v23[2 * llroundf(fminf(fmaxf(v225, 0.0), 8191.0))];
        v235 = *&v23[2 * llroundf(fminf(fmaxf(v226, 0.0), 8191.0))];
        v236 = *&v23[2 * llroundf(fminf(fmaxf(v227, 0.0), 8191.0))];
        v237 = *&v23[2 * llroundf(fminf(fmaxf(v228, 0.0), 8191.0))];
        v238 = *&v23[2 * llroundf(fminf(fmaxf(v229, 0.0), 8191.0))];
        *v46 = *&v23[2 * llroundf(fminf(fmaxf(v218, 0.0), 8191.0))];
        *(v46 + 2) = LOWORD(v219);
        *(v46 + 4) = v49.i16[0];
        if (v45)
        {
          v239 = _H11;
        }

        else
        {
          LOWORD(v239) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v46 + 6) = v239;
        *(v46 + 8) = v230;
        *(v46 + 10) = v231;
        *(v46 + 12) = v232;
        if (v45)
        {
          v240 = _H12;
        }

        else
        {
          LOWORD(v240) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v46 + 14) = v240;
        *v54 = v233;
        *(v54 + 2) = v234;
        *(v54 + 4) = v235;
        if (v45)
        {
          v241 = _H9;
        }

        else
        {
          LOWORD(v241) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v54 + 6) = v241;
        *(v54 + 8) = v236;
        *(v54 + 10) = v237;
        *(v54 + 12) = v238;
        v150 += 2;
        v149 += 2;
        v48 = (v48 + 2);
        if (v45)
        {
          *v49.i16 = _H28;
        }

        else
        {
          v49.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        *(v54 + 14) = v49.i16[0];
        v55 = (v55 + 2);
        v46 += 16;
        v54 += 16;
        v20 = v265;
        v21 = v275;
      }

      v48 = &v50[v13];
      v47 = &v243[v47];
      v45 = (v51 + v14);
      v46 = v52 + v15;
      v8 += 2;
    }

    while (v8 < v244);
  }

  *&v242[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = 2 * *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = 2 * ((v7 + v7 * a2) / v6 - v8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v146 = v20 * *(v11 + 16);
    v147 = v20 * *(v11 + 8);
    v24 = v20 * *(v11 + 20);
    v25 = v20 * *(v11 + 28);
    v144 = v25;
    v145 = v24;
    v26 = *(v11 + 72);
    v27 = *(v11 + 76);
    v28 = *(v11 + 80);
    v29 = *(v11 + 84);
    v30 = *(v11 + 88);
    v31 = *(v11 + 92);
    v32 = *(v11 + 96);
    v33 = *(v11 + 100);
    v34 = *(v11 + 104);
    v35 = *(result + 15) + 2 * v8;
    v36 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
    v37 = v11 + 16548;
    v38 = v11 + 164;
    v39 = **(result + 16) + v18 * v35 + 8 * *(result + 14);
    v40 = v13[2];
    v41 = v40 + v36 * v17;
    _ZF = v40 == 0;
    v43 = *v13 + v36 * v15;
    v44 = v13[1] + v36 / 2 * v16;
    v45 = *(result + 36);
    v46 = (v41 + v45);
    if (_ZF)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    v48 = (v43 + v45);
    v49 = v44 + v45;
    do
    {
      v50 = &v48[v15];
      v51 = &v47[v17];
      v52 = v39 + v18;
      if (v12 >= 1)
      {
        v53 = 0;
        v54 = v39 + v18;
        v55 = &v48[v15];
        v56 = &v47[v17];
        do
        {
          LOBYTE(v25) = *(v49 + v53 + 1);
          v57 = LODWORD(v25) - v22;
          v58 = LODWORD(v147);
          v59 = v147 * v57;
          LOBYTE(v58) = *v48;
          v60 = v23 * (v58 - v21);
          v61 = (v147 * v57) + v60;
          v62 = 8191.0;
          if (v61 <= 8191.0)
          {
            v62 = (v147 * v57) + v60;
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }
          }

          LOBYTE(v61) = *(v49 + v53);
          v63 = LODWORD(v61) - v22;
          v64 = (v145 * v57) + (v63 * v146);
          v65 = 8191.0;
          if ((v60 + v64) <= 8191.0)
          {
            v65 = v60 + v64;
            if ((v60 + v64) < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v144 * v63;
          v67 = (v144 * v63) + v60;
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          LOBYTE(v67) = v48[1];
          v69 = v23 * (LODWORD(v67) - v21);
          v70 = 8191.0;
          if ((v59 + v69) <= 8191.0)
          {
            v70 = v59 + v69;
            if ((v59 + v69) < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = 8191.0;
          if ((v64 + v69) <= 8191.0)
          {
            v71 = v64 + v69;
            if ((v64 + v69) < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v66 + v69;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          LOBYTE(v72) = *v55;
          v74 = LODWORD(v72) - v21;
          v75 = v23 * v74;
          v76 = 8191.0;
          if ((v59 + (v23 * v74)) <= 8191.0)
          {
            v76 = v59 + (v23 * v74);
            if (v76 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = 8191.0;
          if ((v64 + v75) <= 8191.0)
          {
            v77 = v64 + v75;
            if ((v64 + v75) < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = v66 + v75;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          LOBYTE(v74) = v55[1];
          v80 = v23 * (LODWORD(v74) - v21);
          v81 = 8191.0;
          if ((v59 + v80) <= 8191.0)
          {
            v81 = v59 + v80;
            if ((v59 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = 8191.0;
          if ((v64 + v80) <= 8191.0)
          {
            v82 = v64 + v80;
            if ((v64 + v80) < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v66 + v80;
          v84 = (v66 + v80) <= 8191.0;
          v85 = 8191.0;
          if (v84)
          {
            v85 = v83;
            if (v83 < 0.0)
            {
              v85 = 0.0;
            }
          }

          if (v47)
          {
            LOBYTE(v83) = *v47;
            LOBYTE(v64) = v47[1];
            v47 += 2;
            LOBYTE(v66) = *v56;
            LOBYTE(_S13) = v56[1];
            v56 += 2;
            _S9 = LODWORD(v83) * 0.0039216;
            _S10 = LODWORD(v64) * 0.0039216;
            _S2 = LODWORD(v66) * 0.0039216;
            _S7 = _S13 * 0.0039216;
            __asm
            {
              FCVT            H12, S9
              FCVT            H13, S10
              FCVT            H10, S2
              FCVT            H9, S7
            }
          }

          else
          {
            LOWORD(_H12) = 0;
            _S13 = 0;
            LOWORD(_H10) = 0;
            LOWORD(_H9) = 0;
          }

          _H2 = *(v38 + 2 * llroundf(fminf(fmaxf(v62, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H7 = *(v38 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H27 = *(v38 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v38 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H29 = *(v38 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          _H30 = *(v38 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm
          {
            FCVT            S29, H29
            FCVT            S30, H30
          }

          _H31 = *(v38 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v38 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H11 = *(v38 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H4 = *(v38 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v38 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          _H6 = *(v38 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm
          {
            FCVT            S5, H5
            FCVT            S6, H6
          }

          v120 = ((v27 * _S7) + (_S2 * v26)) + (_S27 * v28);
          v121 = ((v30 * _S7) + (_S2 * v29)) + (_S27 * v31);
          v122 = ((v33 * _S7) + (_S2 * v32)) + (_S27 * v34);
          v123 = ((v27 * _S29) + (_S28 * v26)) + (_S30 * v28);
          v124 = ((v30 * _S29) + (_S28 * v29)) + (_S30 * v31);
          v125 = ((v33 * _S29) + (_S28 * v32)) + (_S30 * v34);
          v126 = ((v27 * _S8) + (_S31 * v26)) + (_S11 * v28);
          v127 = ((v30 * _S8) + (_S31 * v29)) + (_S11 * v31);
          v128 = ((v33 * _S8) + (_S31 * v32)) + (_S11 * v34);
          v129 = ((v27 * _S5) + (_S4 * v26)) + (_S6 * v28);
          v130 = ((v30 * _S5) + (_S4 * v29)) + (_S6 * v31);
          v131 = ((v33 * _S5) + (_S4 * v32)) + (_S6 * v34);
          LOWORD(_S5) = *(v37 + 2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0)));
          LOWORD(v122) = *(v37 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          v132 = *(v37 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          v133 = *(v37 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          v134 = *(v37 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          v135 = *(v37 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          v136 = *(v37 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          v137 = *(v37 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          v138 = *(v37 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          v139 = *(v37 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          v25 = fminf(fmaxf(v131, 0.0), 8191.0);
          LOWORD(v25) = *(v37 + 2 * llroundf(v25));
          *v39 = *(v37 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          *(v39 + 2) = LOWORD(_S5);
          *(v39 + 4) = LOWORD(v122);
          if (v47)
          {
            v140 = _H12;
          }

          else
          {
            LOWORD(v140) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v39 + 6) = v140;
          *(v39 + 8) = v132;
          *(v39 + 10) = v133;
          *(v39 + 12) = v134;
          if (v47)
          {
            v141 = *&_S13;
          }

          else
          {
            LOWORD(v141) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v39 + 14) = v141;
          *v54 = v135;
          *(v54 + 2) = v136;
          v48 += 2;
          v55 += 2;
          v39 += 16;
          *(v54 + 4) = v137;
          if (v47)
          {
            v142 = _H10;
          }

          else
          {
            LOWORD(v142) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v54 + 6) = v142;
          *(v54 + 8) = v138;
          *(v54 + 10) = v139;
          *(v54 + 12) = LOWORD(v25);
          if (v47)
          {
            v143 = _H9;
          }

          else
          {
            LOWORD(v143) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v54 + 14) = v143;
          v54 += 16;
          v53 += 2;
        }

        while (v53 < v12);
      }

      v48 = &v50[v15];
      v49 += v16;
      v47 = &v51[v17];
      v39 = v52 + v18;
      v10 += 2;
    }

    while (v10 < v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_rgb_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, int16x8_t a3, double a4, double a5, int16x4_t a6, double a7, float32x4_t a8, double a9, float32x4_t a10)
{
  v20 = 2 * *result;
  v21 = *(result + 13);
  v22 = v21 * a2 / v20;
  v23 = 2 * ((v21 + v21 * a2) / v20 - v22);
  if (v23 >= 1)
  {
    v24 = 0;
    v25 = *(result + 24);
    v26 = *(result + 19);
    v27 = *(result + 7);
    v28 = *(result + 8);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    v32 = **(result + 17);
    v33 = v26[17].u16[2];
    v34 = v26[17].u16[3];
    a8.i32[0] = v26[3].i32[1];
    a10.f32[0] = 1.0 / v26[16].u32[0];
    *a3.i32 = v33;
    v35 = v34;
    _S2 = a10.f32[0] * v26->f32[0];
    *a6.i16 = v33;
    v37 = vdupq_lane_s16(a6, 0);
    __asm { FCVT            H4, S2 }

    *_Q8.i16 = -v34;
    a8.i32[1] = v26[1].i32[0];
    *a8.f32 = vmul_n_f32(*a8.f32, a10.f32[0]);
    v43 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    *a10.f32 = vmul_n_f32(v26[2], a10.f32[0]);
    v44 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v45 = vmulq_n_f16(v43, *_Q8.i16);
    v46 = vmulq_n_f16(v44, *_Q8.i16);
    v48 = v27[1];
    v47 = v27[2];
    v49 = *(result + 44) + 2 * (*(result + 28) * a2 / v20);
    v50 = *v27;
    v51 = v48 + v30 * (v49 / 2);
    v52 = *(result + 36);
    v53 = (v47 + v31 * v49 + v52);
    v54 = (**(result + 16) + v32 * (*(result + 15) + 2 * v22) + 8 * *(result + 14));
    if (!v47)
    {
      v53 = 0;
    }

    v55 = (v51 + v52);
    v56 = (v50 + v29 * v49 + v52);
    do
    {
      v57 = v56 + v29;
      v58 = v53 + v31;
      v59 = v54 + v32;
      if (v25 < 8)
      {
        v83 = 0;
        v82 = v55;
        v63 = (v53 + v31);
        v62 = (v56 + v29);
        v61 = (v54 + v32);
      }

      else
      {
        v60 = 0;
        v61 = (v54 + v32);
        v62 = (v56 + v29);
        v63 = (v53 + v31);
        do
        {
          if (v53)
          {
            v64 = *v53++;
            v65 = v64;
            v66 = *v63++;
            *v67.i8 = vzip1_s8(v65, 0);
            v67.u64[1] = vzip2_s8(v65, 0);
            v68 = vdupq_n_s16(0x1C04u);
            _Q26 = vmulq_f16(vcvtq_f16_u16(v67), v68);
            *v69.i8 = vzip1_s8(v66, 0);
            v69.u64[1] = vzip2_s8(v66, 0);
            _Q30 = vmulq_f16(vcvtq_f16_u16(v69), v68);
          }

          else
          {
            _Q26.i32[0] = 1006648320;
            _Q26.i16[2] = 15360;
            _Q26.i16[3] = 15360;
            _Q26.i16[4] = 15360;
            _Q26.i16[5] = 15360;
            _Q26.i16[6] = 15360;
            _Q26.i16[7] = 15360;
            _Q30.i32[0] = 1006648320;
            _Q30.i16[2] = 15360;
            _Q30.i16[3] = 15360;
            _Q30.i16[4] = 15360;
            _Q30.i16[5] = 15360;
            _Q30.i16[6] = 15360;
            _Q30.i16[7] = 15360;
          }

          v70 = *&v55[v60];
          *v71.i8 = vzip1_s8(v70, 0);
          v71.u64[1] = vzip2_s8(v70, 0);
          v72 = vcvtq_f16_u16(v71);
          v73 = vmlaq_f16(v45, v43, v72);
          v74 = vmlaq_f16(v46, v44, v72);
          v75 = vtrn2q_s16(v73, v73);
          v76 = vtrn1q_s16(v73, v73);
          v77 = vuzp1q_s16(v74, a3);
          *v77.i8 = vadd_f16(*v77.i8, *&vuzp2q_s16(v74, a3));
          v78 = *v56++;
          v79 = vzip1q_s16(v77, v77);
          *v77.i8 = vzip1_s8(v78, 0);
          v77.u64[1] = vzip2_s8(v78, 0);
          v80 = *v62++;
          *v11.i8 = vzip1_s8(v80, 0);
          v11.u64[1] = vzip2_s8(v80, 0);
          _Q31 = vsubq_f16(vcvtq_f16_u16(v77), v37);
          _Q8 = vsubq_f16(vcvtq_f16_u16(v11), v37);
          _Q23 = vmlaq_n_f16(v75, _Q31, _H4);
          _Q27 = vmlaq_n_f16(v75, _Q8, _H4);
          _Q24 = vmlaq_n_f16(v79, _Q31, _H4);
          _Q28 = vmlaq_n_f16(v79, _Q8, _H4);
          _Q25 = vmlaq_n_f16(v76, _Q31, _H4);
          vst4q_s16(v54, *_Q23.i8);
          v54 += 32;
          v81 = vmlaq_n_f16(v76, _Q8, _H4);
          vst4q_s16(v61, *_Q27.i8);
          v61 += 32;
          v60 += 8;
        }

        while (v60 < v25 - 7);
        v82 = &v55[v60];
        v83 = v25 & 0xFFFFFFF8;
      }

      while (v83 < (v25 & 0xFFFFFFFE))
      {
        if (v53)
        {
          _Q23.i8[0] = v53->i8[0];
          _Q24.i8[0] = v53->i8[1];
          v53 = (v53 + 2);
          _Q25.i8[0] = v63->i8[0];
          _Q26.i8[0] = v63->i8[1];
          v63 = (v63 + 2);
          *_Q23.i32 = _Q23.u32[0] * 0.0039216;
          *_Q24.i32 = _Q24.u32[0] * 0.0039216;
          *_Q28.i32 = _Q25.u32[0] * 0.0039216;
          *_Q25.i32 = _Q26.u32[0];
          *_Q27.i32 = _Q26.u32[0] * 0.0039216;
          __asm
          {
            FCVT            H26, S23
            FCVT            H25, S24
            FCVT            H24, S28
            FCVT            H23, S27
          }
        }

        else
        {
          _H26 = 0;
          _Q25.i32[0] = 0;
          _Q24.i32[0] = 0;
          _Q23.i32[0] = 0;
        }

        _Q27.i8[0] = *v82;
        v85 = _Q27.u32[0] - v35;
        _Q28.i8[0] = v82[1];
        v86 = _Q28.u32[0] - v35;
        v87 = a8.f32[1] * v86;
        v88 = (a10.f32[1] * v86) + (v85 * a10.f32[0]);
        *_Q27.i32 = a8.f32[0] * v85;
        _Q30.i8[0] = v56->i8[0];
        v89 = _S2 * (_Q30.u32[0] - *a3.i32);
        _Q31.i8[0] = v56->i8[1];
        v90 = _S2 * (_Q31.u32[0] - *a3.i32);
        _Q8.i8[0] = v62->i8[0];
        v91 = _S2 * (_Q8.u32[0] - *a3.i32);
        v11.i8[0] = v62->i8[1];
        *v11.i32 = _S2 * (v11.u32[0] - *a3.i32);
        _S10 = v87 + v89;
        _S11 = v89 + v88;
        *_Q30.i32 = *_Q27.i32 + v89;
        _S12 = v87 + v90;
        _S13 = v88 + v90;
        *_Q31.i32 = *_Q27.i32 + v90;
        _S14 = v87 + v91;
        _S15 = v88 + v91;
        *_Q8.i32 = *_Q27.i32 + v91;
        _S29 = v87 + *v11.i32;
        *_Q28.i32 = v88 + *v11.i32;
        __asm { FCVT            H10, S10 }

        *v54 = LOWORD(_S10);
        __asm { FCVT            H10, S11 }

        v54[1] = LOWORD(_S10);
        __asm { FCVT            H30, S30 }

        v54[2] = _Q30.i16[0];
        if (!v53)
        {
          _H26 = COERCE_UNSIGNED_INT(1.0);
        }

        v54[3] = _H26;
        __asm { FCVT            H26, S12 }

        v54[4] = _H26;
        __asm { FCVT            H26, S13 }

        v54[5] = _H26;
        *_Q26.i32 = *_Q27.i32 + *v11.i32;
        __asm { FCVT            H27, S31 }

        v54[6] = _Q27.i16[0];
        if (_ZF)
        {
          _Q25.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v54[7] = _Q25.i16[0];
        __asm { FCVT            H25, S14 }

        *v61 = _H25;
        __asm { FCVT            H25, S15 }

        v61[1] = _H25;
        __asm { FCVT            H25, S8 }

        v61[2] = _Q25.i16[0];
        if (_ZF)
        {
          _Q24.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v61[3] = _Q24.i16[0];
        __asm { FCVT            H24, S29 }

        v61[4] = _H24;
        __asm { FCVT            H24, S28 }

        v61[5] = _H24;
        __asm { FCVT            H24, S26 }

        v61[6] = _Q24.i16[0];
        v83 += 2;
        v82 += 2;
        v56 = (v56 + 2);
        if (_ZF)
        {
          _Q23.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v61[7] = _Q23.i16[0];
        v62 = (v62 + 2);
        v54 += 8;
        v61 += 8;
      }

      v56 = &v57[v29];
      v55 += v30;
      v53 = (v58 + v31);
      v54 = &v59[v32];
      v24 += 2;
    }

    while (v24 < v23);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (8 * (v28 + v25) + 8) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 8 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5)
{
  v15 = 2 * *result;
  v16 = *(result + 13);
  v17 = v16 * a2 / v15;
  v18 = 2 * ((v16 + v16 * a2) / v15 - v17);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = *(result + 19);
    v21 = *(result + 24) & 0xFFFFFFFE;
    v23 = *(result + 7);
    v22 = *(result + 8);
    v24 = *v22;
    v25 = v22[1];
    v26 = v22[2];
    v27 = *(v20 + 128);
    LOWORD(a4) = *(v20 + 140);
    LOWORD(a5) = *(v20 + 142);
    v28 = *v20;
    v29 = *(v20 + 8);
    v30 = *(v20 + 16);
    v31 = *(v20 + 20);
    v32 = *(v20 + 28);
    v33 = *(result + 44) + 2 * (*(result + 28) * a2 / v15);
    v34 = **(result + 17);
    v35 = 1.0 / v27;
    v36 = LODWORD(a4);
    v37 = LODWORD(a5);
    v38 = v35 * v28;
    v39 = (**(result + 16) + v34 * (*(result + 15) + 2 * v17) + 8 * *(result + 14));
    v40 = v23[2];
    v41 = v40 + v33 * v26;
    v42 = *v23 + v33 * v24;
    v43 = v23[1] + v33 / 2 * v25;
    v44 = *(result + 36);
    if (v40)
    {
      v45 = (v41 + v44);
    }

    else
    {
      v45 = 0;
    }

    v46 = (v42 + v44);
    v47 = v43 + v44;
    do
    {
      v48 = &v46[v24];
      v49 = &v45[v26];
      v50 = &v39[v34];
      if (v21 >= 1)
      {
        v51 = 0;
        v52 = &v39[v34];
        v53 = &v46[v24];
        v54 = &v45[v26];
        do
        {
          if (v45)
          {
            LOBYTE(_S17) = *v45;
            LOBYTE(_S18) = v45[1];
            v45 += 2;
            LOBYTE(_S19) = *v54;
            LOBYTE(_S20) = v54[1];
            v54 += 2;
            _S17 = LODWORD(_S17) * 0.0039216;
            _S18 = LODWORD(_S18) * 0.0039216;
            _S21 = LODWORD(_S19) * 0.0039216;
            _S19 = LODWORD(_S20);
            _S22 = LODWORD(_S20) * 0.0039216;
            __asm
            {
              FCVT            H20, S17
              FCVT            H19, S18
              FCVT            H18, S21
              FCVT            H17, S22
            }
          }

          else
          {
            _H20 = 0;
            _S19 = 0.0;
            _S18 = 0.0;
            _S17 = 0.0;
          }

          LOBYTE(_S21) = *(v47 + v51);
          v60 = LODWORD(_S21) - v37;
          LOBYTE(_S22) = *(v47 + v51 + 1);
          v61 = LODWORD(_S22) - v37;
          v62 = (v35 * v29) * v61;
          v63 = ((v35 * v31) * v61) + (v60 * (v35 * v30));
          _S21 = (v35 * v32) * v60;
          LOBYTE(_S24) = *v46;
          v64 = v38 * (LODWORD(_S24) - v36);
          LOBYTE(_S25) = v46[1];
          v65 = v38 * (LODWORD(_S25) - v36);
          v46 += 2;
          LOBYTE(_S26) = *v53;
          v66 = v38 * (LODWORD(_S26) - v36);
          LOBYTE(v14) = v53[1];
          v14 = v38 * (LODWORD(v14) - v36);
          v53 += 2;
          _S28 = v62 + v64;
          _S29 = v64 + v63;
          _S24 = _S21 + v64;
          _S30 = v62 + v65;
          _S31 = v63 + v65;
          _S25 = _S21 + v65;
          _S8 = v62 + v66;
          _S9 = v63 + v66;
          _S26 = _S21 + v66;
          _S23 = v62 + v14;
          _S22 = v63 + v14;
          __asm { FCVT            H28, S28 }

          *v39 = LOWORD(_S28);
          __asm { FCVT            H28, S29 }

          *(v39 + 1) = LOWORD(_S28);
          __asm { FCVT            H24, S24 }

          *(v39 + 2) = LOWORD(_S24);
          if (!v45)
          {
            _H20 = COERCE_UNSIGNED_INT(1.0);
          }

          *(v39 + 3) = _H20;
          __asm { FCVT            H20, S30 }

          *(v39 + 4) = _H20;
          __asm { FCVT            H20, S31 }

          *(v39 + 5) = _H20;
          _S20 = _S21 + v14;
          __asm { FCVT            H21, S25 }

          *(v39 + 6) = LOWORD(_S21);
          if (_ZF)
          {
            LOWORD(_S19) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v39 + 7) = LOWORD(_S19);
          v39 += 16;
          __asm { FCVT            H19, S8 }

          *v52 = _H19;
          __asm { FCVT            H19, S9 }

          *(v52 + 1) = _H19;
          __asm { FCVT            H19, S26 }

          *(v52 + 2) = LOWORD(_S19);
          if (_ZF)
          {
            LOWORD(_S18) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v52 + 3) = LOWORD(_S18);
          __asm { FCVT            H18, S23 }

          *(v52 + 4) = _H18;
          __asm { FCVT            H18, S22 }

          *(v52 + 5) = _H18;
          __asm { FCVT            H18, S20 }

          *(v52 + 6) = LOWORD(_S18);
          if (_ZF)
          {
            LOWORD(_S17) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v52 + 7) = LOWORD(_S17);
          v52 += 16;
          v51 += 2;
        }

        while (v51 < v21);
      }

      v46 = &v48[v24];
      v47 += v25;
      v45 = &v49[v26];
      v39 = &v50[v34];
      v19 += 2;
    }

    while (v19 < v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (16 * (v28 + v25) + 16) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 16 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD(unint64_t result, uint64_t a2, double _D0, double a4, float32x4_t _Q2)
{
  v7 = 2 * *result;
  v262 = result;
  v8 = *(result + 104);
  v9 = v8 * a2;
  v10 = v8 * a2 / v7;
  v267 = 2 * ((v8 + v9) / v7 - v10);
  if (v267 >= 1)
  {
    v11 = 0;
    v12 = *(result + 96);
    v13 = *(result + 152);
    v14 = *(result + 56);
    v15 = *(result + 64);
    v16 = *v15;
    result = v15[1];
    v17 = v15[2];
    v18 = **(v262 + 136);
    v19 = v13[17].u16[2];
    v20 = v13[17].u16[3];
    v21.i32[0] = v13[3].i32[1];
    _S6 = v13[10].f32[1];
    _S7 = v13[11].f32[0];
    _S16 = v13[11].f32[1];
    _S17 = v13[12].f32[0];
    _S18 = v13[12].f32[1];
    _S19 = v13[13].f32[0];
    v296 = v13[13].f32[1];
    v295 = v13[14].f32[0];
    v294 = v13[14].f32[1];
    _S15 = v13[15].f32[0];
    v29 = &v13[2068] + 4;
    v30 = v12 & 0xFFFFFFFE;
    _Q2.f32[0] = 8191.0 / v13[16].u32[0];
    v293 = v19;
    v31 = v20;
    *&_D0 = _Q2.f32[0] * v13->f32[0];
    v32 = &v13[20] + 4;
    v33 = &v13[4116] + 4;
    v291 = *&_D0;
    __asm { FCVT            H0, S0 }

    v290 = *&_D0;
    *&_D0 = v19;
    v289 = vdupq_lane_s16(*&_D0, 0);
    v37 = -v20;
    v21.i32[1] = v13[1].i32[0];
    *v5.f32 = vmul_n_f32(v21, _Q2.f32[0]);
    *_Q2.f32 = vmul_n_f32(v13[2], _Q2.f32[0]);
    v287 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v284 = vmulq_n_f16(v287, v37);
    v285 = vdupq_lane_s32(vcvt_f16_f32(_Q2), 0);
    _Q0 = vmulq_n_f16(v285, v37);
    v283 = _Q0;
    __asm { FCVT            H0, S20 }

    v282 = *_Q0.i16;
    __asm { FCVT            H0, S22 }

    v281 = *_Q0.i16;
    __asm { FCVT            H0, S23 }

    v280 = *_Q0.i16;
    __asm { FCVT            H0, S15 }

    v279 = *_Q0.i16;
    v305 = v13[9].f32[0];
    __asm { FCVT            H0, S3 }

    v278 = *_Q0.i16;
    v304 = v13[9].f32[1];
    __asm { FCVT            H0, S4 }

    v277 = *_Q0.i16;
    v303 = v13[10].f32[0];
    __asm { FCVT            H0, S5 }

    v276 = *_Q0.i16;
    v40 = v14[1];
    v39 = v14[2];
    v41 = *(v262 + 44) + 2 * (*(v262 + 28) * a2 / v7);
    v42 = *v14;
    v266 = result;
    v43 = v40 + result * (v41 / 2);
    v44 = *(v262 + 36);
    v45 = **(v262 + 128) + v18 * (*(v262 + 120) + 2 * v10) + 16 * *(v262 + 112);
    if (v39)
    {
      v46 = (v39 + v17 * v41 + v44);
    }

    else
    {
      v46 = 0;
    }

    v47 = (v43 + v44);
    v48 = (v42 + v16 * v41 + v44);
    v302 = _S6;
    __asm { FCVT            H0, S6 }

    v275 = _H0;
    v301 = _S7;
    __asm { FCVT            H0, S7 }

    v274 = _H0;
    v300 = _S16;
    __asm { FCVT            H0, S16 }

    v273 = _H0;
    v299 = _S17;
    __asm { FCVT            H0, S17 }

    v272 = _H0;
    v298 = _S18;
    __asm { FCVT            H0, S18 }

    v271 = _H0;
    v297 = _S19;
    __asm { FCVT            H0, S19 }

    v270 = _H0;
    v288 = v5.f32[0];
    _Q0.i32[0] = _Q2.i32[1];
    LODWORD(v268) = HIDWORD(_Q2.u64[0]);
    LODWORD(v286) = _Q2.i64[0];
    v269 = v5.f32[1];
    v55 = 0uLL;
    v308 = _S15;
    v264 = **(v262 + 136);
    v265 = v17;
    v292 = v31;
    do
    {
      v56 = v48 + v16;
      v57 = v46 + v17;
      v58 = v45 + v18;
      if (v12 < 8)
      {
        v141 = 0;
        v140 = v47;
        v62 = v46 + v17;
        v61 = (v48 + v16);
        v60 = v58;
      }

      else
      {
        v59 = 0;
        v60 = v58;
        v61 = (v48 + v16);
        v62 = v46 + v17;
        do
        {
          if (v46)
          {
            v63 = *v46++;
            v64 = v63;
            v65 = *v62;
            v62 += 8;
            _Q0.i64[0] = v65;
          }

          else
          {
            v64 = 0;
            _Q0 = 0uLL;
          }

          v66 = *&v47[v59];
          *v67.i8 = vzip1_s8(v66, 0);
          v67.u64[1] = vzip2_s8(v66, 0);
          v68 = vcvtq_f16_u16(v67);
          v69 = vmlaq_f16(v284, v287, v68);
          v70 = vmlaq_f16(v283, v285, v68);
          v71 = vtrn2q_s16(v69, v69);
          v72 = vtrn1q_s16(v69, v69);
          v73 = vuzp1q_s16(v70, _Q0);
          *v73.i8 = vadd_f16(*v73.i8, *&vuzp2q_s16(v70, _Q0));
          v74 = *v48++;
          v75 = vzip1q_s16(v73, v73);
          *v73.i8 = vzip1_s8(v74, 0);
          v73.u64[1] = vzip2_s8(v74, 0);
          v76 = *v61++;
          *v70.i8 = vzip1_s8(v76, 0);
          v70.u64[1] = vzip2_s8(v76, 0);
          v77 = vsubq_f16(vcvtq_f16_u16(v73), v289);
          v78 = vsubq_f16(vcvtq_f16_u16(v70), v289);
          v79 = vmlaq_n_f16(v71, v77, v290);
          v80 = vmlaq_n_f16(v71, v78, v290);
          v81 = vmlaq_n_f16(v75, v77, v290);
          v82 = vmlaq_n_f16(v75, v78, v290);
          v83 = vmlaq_n_f16(v72, v77, v290);
          v84 = vmlaq_n_f16(v72, v78, v290);
          if (v46)
          {
            *v85.i8 = vzip1_s8(v64, 0);
            v85.u64[1] = vzip2_s8(v64, 0);
            v86 = vcvtq_f16_u16(v85);
            v87 = vdupq_n_s16(0x1C04u);
            v88 = vmulq_f16(v86, v87);
            v306 = vcvtq_f32_f16(*v88.i8);
            *v89.i8 = vzip1_s8(*_Q0.i8, 0);
            v89.u64[1] = vzip2_s8(*_Q0.i8, 0);
            _Q6 = vcvtq_f32_f16(*&vextq_s8(v88, v88, 8uLL));
            v91 = vmulq_f16(vcvtq_f16_u16(v89), v87);
            v92 = vcvtq_f32_f16(*v91.i8);
            v93 = vcvtq_f32_f16(*&vextq_s8(v91, v91, 8uLL));
          }

          else
          {
            __asm { FMOV            V6.4S, #1.0 }

            v92 = _Q6;
            v306 = _Q6;
            v93 = _Q6;
          }

          v307 = v93;
          v94.i64[0] = 0x9000900090009000;
          v94.i64[1] = 0x9000900090009000;
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v79, v55), v94));
          v96.i16[0] = *&v32[2 * v95.u16[0]];
          v96.i16[1] = *&v32[2 * v95.u16[1]];
          v96.i16[2] = *&v32[2 * v95.u16[2]];
          v96.i16[3] = *&v32[2 * v95.u16[3]];
          v96.i16[4] = *&v32[2 * v95.u16[4]];
          v96.i16[5] = *&v32[2 * v95.u16[5]];
          v96.i16[6] = *&v32[2 * v95.u16[6]];
          v96.i16[7] = *&v32[2 * v95.u16[7]];
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v81, v55), v94));
          v98.i16[0] = *&v32[2 * v97.u16[0]];
          v98.i16[1] = *&v32[2 * v97.u16[1]];
          v98.i16[2] = *&v32[2 * v97.u16[2]];
          v98.i16[3] = *&v32[2 * v97.u16[3]];
          v98.i16[4] = *&v32[2 * v97.u16[4]];
          v98.i16[5] = *&v32[2 * v97.u16[5]];
          v98.i16[6] = *&v32[2 * v97.u16[6]];
          v98.i16[7] = *&v32[2 * v97.u16[7]];
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v83, v55), v94));
          v100.i16[0] = *&v32[2 * v99.u16[0]];
          v100.i16[1] = *&v32[2 * v99.u16[1]];
          v100.i16[2] = *&v32[2 * v99.u16[2]];
          v100.i16[3] = *&v32[2 * v99.u16[3]];
          v100.i16[4] = *&v32[2 * v99.u16[4]];
          v100.i16[5] = *&v32[2 * v99.u16[5]];
          v100.i16[6] = *&v32[2 * v99.u16[6]];
          v100.i16[7] = *&v32[2 * v99.u16[7]];
          v101 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v80, v55), v94));
          v102.i16[0] = *&v32[2 * v101.u16[0]];
          v102.i16[1] = *&v32[2 * v101.u16[1]];
          v102.i16[2] = *&v32[2 * v101.u16[2]];
          v102.i16[3] = *&v32[2 * v101.u16[3]];
          v102.i16[4] = *&v32[2 * v101.u16[4]];
          v102.i16[5] = *&v32[2 * v101.u16[5]];
          v102.i16[6] = *&v32[2 * v101.u16[6]];
          v102.i16[7] = *&v32[2 * v101.u16[7]];
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v82, v55), v94));
          v104.i16[0] = *&v32[2 * v103.u16[0]];
          v104.i16[1] = *&v32[2 * v103.u16[1]];
          v104.i16[2] = *&v32[2 * v103.u16[2]];
          v104.i16[3] = *&v32[2 * v103.u16[3]];
          v104.i16[4] = *&v32[2 * v103.u16[4]];
          v104.i16[5] = *&v32[2 * v103.u16[5]];
          v104.i16[6] = *&v32[2 * v103.u16[6]];
          v104.i16[7] = *&v32[2 * v103.u16[7]];
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v84, v55), v94));
          v106.i16[0] = *&v32[2 * v105.u16[0]];
          v106.i16[1] = *&v32[2 * v105.u16[1]];
          v106.i16[2] = *&v32[2 * v105.u16[2]];
          v106.i16[3] = *&v32[2 * v105.u16[3]];
          v106.i16[4] = *&v32[2 * v105.u16[4]];
          v106.i16[5] = *&v32[2 * v105.u16[5]];
          v106.i16[6] = *&v32[2 * v105.u16[6]];
          v106.i16[7] = *&v32[2 * v105.u16[7]];
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v96, v282), v98, v281), v100, v280), vmaxq_f16(vmaxq_f16(v96, v98), v100), v279), v55), v94));
          v107.i16[0] = *&v29[2 * v107.u16[0]];
          v107.i16[1] = *&v29[2 * v107.u16[1]];
          v107.i16[2] = *&v29[2 * v107.u16[2]];
          v107.i16[3] = *&v29[2 * v107.u16[3]];
          v107.i16[4] = *&v29[2 * v107.u16[4]];
          v107.i16[5] = *&v29[2 * v107.u16[5]];
          v107.i16[6] = *&v29[2 * v107.u16[6]];
          v107.i16[7] = *&v29[2 * v107.u16[7]];
          v108 = vmulq_f16(v96, v107);
          v109 = vmulq_f16(v98, v107);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v282), v104, v281), v106, v280), vmaxq_f16(vmaxq_f16(v102, v104), v106), v279), v55), v94));
          v111 = vmulq_f16(v100, v107);
          v100.i16[0] = *&v29[2 * v110.u16[0]];
          v100.i16[1] = *&v29[2 * v110.u16[1]];
          v100.i16[2] = *&v29[2 * v110.u16[2]];
          v100.i16[3] = *&v29[2 * v110.u16[3]];
          v100.i16[4] = *&v29[2 * v110.u16[4]];
          v100.i16[5] = *&v29[2 * v110.u16[5]];
          v100.i16[6] = *&v29[2 * v110.u16[6]];
          v100.i16[7] = *&v29[2 * v110.u16[7]];
          v112 = vmulq_f16(v102, v100);
          v113 = vmulq_f16(v104, v100);
          v114 = vmulq_f16(v106, v100);
          v115 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v108, v278), v109, v277), v111, v276);
          v116 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v108, v275), v109, v274), v111, v273);
          v117 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, v270), v109, v271), v108, v272);
          v118 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, v278), v113, v277), v114, v276);
          v119 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, v275), v113, v274), v114, v273);
          v120 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v114, v270), v113, v271), v112, v272);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, v55), v94));
          v114.i16[0] = *&v33[2 * v121.u16[0]];
          v114.i16[1] = *&v33[2 * v121.u16[1]];
          v114.i16[2] = *&v33[2 * v121.u16[2]];
          v114.i16[3] = *&v33[2 * v121.u16[3]];
          v114.i16[4] = *&v33[2 * v121.u16[4]];
          v114.i16[5] = *&v33[2 * v121.u16[5]];
          v114.i16[6] = *&v33[2 * v121.u16[6]];
          v114.i16[7] = *&v33[2 * v121.u16[7]];
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, v55), v94));
          v122.i16[0] = *&v33[2 * v122.u16[0]];
          v122.i16[1] = *&v33[2 * v122.u16[1]];
          v122.i16[2] = *&v33[2 * v122.u16[2]];
          v122.i16[3] = *&v33[2 * v122.u16[3]];
          v122.i16[4] = *&v33[2 * v122.u16[4]];
          v122.i16[5] = *&v33[2 * v122.u16[5]];
          v122.i16[6] = *&v33[2 * v122.u16[6]];
          v122.i16[7] = *&v33[2 * v122.u16[7]];
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, v55), v94));
          v117.i16[0] = *&v33[2 * v123.u16[0]];
          v117.i16[1] = *&v33[2 * v123.u16[1]];
          v117.i16[2] = *&v33[2 * v123.u16[2]];
          v117.i16[3] = *&v33[2 * v123.u16[3]];
          v117.i16[4] = *&v33[2 * v123.u16[4]];
          v117.i16[5] = *&v33[2 * v123.u16[5]];
          v117.i16[6] = *&v33[2 * v123.u16[6]];
          v117.i16[7] = *&v33[2 * v123.u16[7]];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v118, v55), v94));
          v6.i16[0] = *&v33[2 * v124.u16[0]];
          v6.i16[1] = *&v33[2 * v124.u16[1]];
          v6.i16[2] = *&v33[2 * v124.u16[2]];
          v6.i16[3] = *&v33[2 * v124.u16[3]];
          v6.i16[4] = *&v33[2 * v124.u16[4]];
          v6.i16[5] = *&v33[2 * v124.u16[5]];
          v6.i16[6] = *&v33[2 * v124.u16[6]];
          v6.i16[7] = *&v33[2 * v124.u16[7]];
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, v55), v94));
          v125.i16[0] = *&v33[2 * v125.u16[0]];
          v125.i16[1] = *&v33[2 * v125.u16[1]];
          v125.i16[2] = *&v33[2 * v125.u16[2]];
          v125.i16[3] = *&v33[2 * v125.u16[3]];
          v125.i16[4] = *&v33[2 * v125.u16[4]];
          v125.i16[5] = *&v33[2 * v125.u16[5]];
          v125.i16[6] = *&v33[2 * v125.u16[6]];
          v125.i16[7] = *&v33[2 * v125.u16[7]];
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, v55), v94));
          result = v126.u16[5];
          v120.i16[0] = *&v33[2 * v126.u16[0]];
          v120.i16[1] = *&v33[2 * v126.u16[1]];
          v120.i16[2] = *&v33[2 * v126.u16[2]];
          v120.i16[3] = *&v33[2 * v126.u16[3]];
          v120.i16[4] = *&v33[2 * v126.u16[4]];
          v120.i16[5] = *&v33[2 * v126.u16[5]];
          v120.i16[6] = *&v33[2 * v126.u16[6]];
          v120.i16[7] = *&v33[2 * v126.u16[7]];
          v309.val[3] = v306;
          v309.val[0] = vcvtq_f32_f16(*v114.i8);
          v309.val[1] = vcvtq_f32_f16(*v122.i8);
          v309.val[2] = vcvtq_f32_f16(*v117.i8);
          v127 = v45 + 128;
          vst4q_f32(v45, v309);
          v128 = (v45 + 64);
          v129 = vcvtq_f32_f16(*&vextq_s8(v114, v114, 8uLL));
          v130 = vcvtq_f32_f16(*&vextq_s8(v122, v122, 8uLL));
          v131 = vcvtq_f32_f16(*&vextq_s8(v117, v117, 8uLL));
          vst4q_f32(v128, *(&_Q6 - 3));
          v132 = vcvtq_f32_f16(*v6.i8);
          v133 = vcvtq_f32_f16(*v125.i8);
          v134 = vcvtq_f32_f16(*v120.i8);
          v135 = v60 + 128;
          vst4q_f32(v60, *(&v92 - 3));
          v136 = (v60 + 64);
          v137 = v307;
          v138 = vcvtq_f32_f16(*&vextq_s8(v6, v6, 8uLL));
          _Q2 = vcvtq_f32_f16(*&vextq_s8(v125, v125, 8uLL));
          _Q0 = vextq_s8(v120, v120, 8uLL);
          v139 = vcvtq_f32_f16(*_Q0.i8);
          vst4q_f32(v136, *(&_Q2 - 1));
          v45 = v127;
          v60 = v135;
          v59 += 8;
          _S15 = v308;
        }

        while (v59 < v12 - 7);
        v140 = &v47[v59];
        v141 = v12 & 0xFFFFFFF8;
      }

      for (; v141 < v30; v55 = 0uLL)
      {
        _Q0.i8[0] = v140[1];
        v142 = _Q0.u32[0] - v31;
        v143 = v269 * v142;
        _Q2.i8[0] = v48->i8[0];
        v144 = LODWORD(v293);
        v145 = LODWORD(v291);
        v146 = v291 * (_Q2.u32[0] - v293);
        v147 = (v269 * v142) + v146;
        v148 = 8191.0;
        if (v147 <= 8191.0)
        {
          v148 = (v269 * v142) + v146;
          if (v147 < 0.0)
          {
            v148 = 0.0;
          }
        }

        LOBYTE(v147) = *v140;
        v149 = LODWORD(v147) - v31;
        v150 = (v268 * v142) + (v149 * v286);
        v151 = 8191.0;
        if ((v146 + v150) <= 8191.0)
        {
          v151 = v146 + v150;
          if ((v146 + v150) < 0.0)
          {
            v151 = 0.0;
          }
        }

        v152 = v288 * v149;
        v153 = v152 + v146;
        v154 = 8191.0;
        if (v153 <= 8191.0)
        {
          v154 = v153;
          if (v153 < 0.0)
          {
            v154 = 0.0;
          }
        }

        LOBYTE(v153) = v48->i8[1];
        v155 = v291 * (LODWORD(v153) - v293);
        v156 = 8191.0;
        if ((v143 + v155) <= 8191.0)
        {
          v156 = v143 + v155;
          if ((v143 + v155) < 0.0)
          {
            v156 = 0.0;
          }
        }

        v157 = 8191.0;
        if ((v150 + v155) <= 8191.0)
        {
          v157 = v150 + v155;
          if ((v150 + v155) < 0.0)
          {
            v157 = 0.0;
          }
        }

        v158 = v152 + v155;
        v159 = 8191.0;
        if (v158 <= 8191.0)
        {
          v159 = v158;
          if (v158 < 0.0)
          {
            v159 = 0.0;
          }
        }

        LOBYTE(v158) = v61->i8[0];
        v160 = v291 * (LODWORD(v158) - v293);
        v161 = 8191.0;
        if ((v143 + v160) <= 8191.0)
        {
          v161 = v143 + v160;
          if ((v143 + v160) < 0.0)
          {
            v161 = 0.0;
          }
        }

        v162 = 8191.0;
        if ((v150 + v160) <= 8191.0)
        {
          v162 = v150 + v160;
          if ((v150 + v160) < 0.0)
          {
            v162 = 0.0;
          }
        }

        v163 = v152 + v160;
        v164 = 8191.0;
        if (v163 <= 8191.0)
        {
          v164 = v163;
          if (v163 < 0.0)
          {
            v164 = 0.0;
          }
        }

        v6.i8[0] = v61->i8[1];
        v165 = v291 * (v6.u32[0] - v293);
        v166 = v143 + v165;
        v167 = 8191.0;
        if (v166 <= 8191.0)
        {
          v167 = v166;
          if (v166 < 0.0)
          {
            v167 = 0.0;
          }
        }

        v168 = 8191.0;
        if ((v150 + v165) <= 8191.0)
        {
          v168 = v150 + v165;
          if ((v150 + v165) < 0.0)
          {
            v168 = 0.0;
          }
        }

        v169 = v152 + v165;
        v170 = 8191.0;
        if ((v152 + v165) <= 8191.0)
        {
          v170 = v152 + v165;
          if (v169 < 0.0)
          {
            v170 = 0.0;
          }
        }

        if (v46)
        {
          LOBYTE(v169) = v46->i8[0];
          LOBYTE(v150) = v46->i8[1];
          v46 = (v46 + 2);
          LOBYTE(v144) = *v62;
          LOBYTE(v145) = *(v62 + 1);
          v62 += 2;
          v171 = LODWORD(v169) * 0.0039216;
          v172 = LODWORD(v150) * 0.0039216;
          v173 = v144 * 0.0039216;
          v174 = v145 * 0.0039216;
        }

        else
        {
          v171 = 0.0;
          v172 = 0.0;
          v173 = 0.0;
          v174 = 0.0;
        }

        _H18 = *&v32[2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0))];
        __asm { FCVT            S27, H18 }

        _H5 = *&v32[2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0))];
        __asm { FCVT            S5, H5 }

        _H6 = *&v32[2 * llroundf(fminf(fmaxf(v154, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        _H7 = *&v32[2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0))];
        _H16 = *&v32[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
        _H17 = *&v32[2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0))];
        _H11 = *&v32[2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0))];
        _H12 = *&v32[2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0))];
        _H13 = *&v32[2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0))];
        _H23 = *&v32[2 * llroundf(fminf(fmaxf(v167, 0.0), 8191.0))];
        _H25 = *&v32[2 * llroundf(fminf(fmaxf(v168, 0.0), 8191.0))];
        _H26 = *&v32[2 * llroundf(fminf(fmaxf(v170, 0.0), 8191.0))];
        v190 = fmaxf(_S27, fmaxf(_S5, _S6));
        v191 = (((v295 * _S5) + (v296 * _S27)) + (v294 * _S6)) + (_S15 * v190);
        v192 = 8191.0;
        if (v191 <= 8191.0)
        {
          v192 = (((v295 * _S5) + (v296 * _S27)) + (v294 * _S6)) + (_S15 * v190);
          if (v191 < 0.0)
          {
            v192 = 0.0;
          }
        }

        __asm
        {
          FCVT            S7, H7
          FCVT            S16, H16
          FCVT            S17, H17
        }

        _H31 = *&v29[2 * llroundf(v192)];
        v197 = fmaxf(_S7, fmaxf(_S16, _S17));
        v198 = (((v295 * _S16) + (v296 * _S7)) + (v294 * _S17)) + (_S15 * v197);
        v199 = 8191.0;
        if (v198 <= 8191.0)
        {
          v199 = (((v295 * _S16) + (v296 * _S7)) + (v294 * _S17)) + (_S15 * v197);
          if (v198 < 0.0)
          {
            v199 = 0.0;
          }
        }

        __asm
        {
          FCVT            S9, H11
          FCVT            S10, H12
          FCVT            S11, H13
        }

        _H12 = *&v29[2 * llroundf(v199)];
        v204 = fmaxf(_S9, fmaxf(_S10, _S11));
        v205 = (((v295 * _S10) + (v296 * _S9)) + (v294 * _S11)) + (_S15 * v204);
        v206 = 8191.0;
        if (v205 <= 8191.0)
        {
          v206 = (((v295 * _S10) + (v296 * _S9)) + (v294 * _S11)) + (_S15 * v204);
          if (v205 < 0.0)
          {
            v206 = 0.0;
          }
        }

        __asm
        {
          FCVT            S23, H23
          FCVT            S25, H25
          FCVT            S26, H26
        }

        _H13 = *&v29[2 * llroundf(v206)];
        v211 = (((v295 * _S25) + (v296 * _S23)) + (v294 * _S26)) + (_S15 * fmaxf(_S23, fmaxf(_S25, _S26)));
        v212 = 8191.0;
        if (v211 <= 8191.0)
        {
          v212 = v211;
          if (v211 < 0.0)
          {
            v212 = 0.0;
          }
        }

        __asm { FCVT            S18, H31 }

        v214 = _S27 * _S18;
        v215 = _S5 * _S18;
        v216 = _S6 * _S18;
        __asm { FCVT            S18, H12 }

        v218 = _S7 * _S18;
        v219 = _S16 * _S18;
        v220 = _S17 * _S18;
        __asm { FCVT            S18, H13 }

        v222 = _S9 * _S18;
        v223 = _S10 * _S18;
        v224 = _S11 * _S18;
        _H27 = *&v29[2 * llroundf(v212)];
        __asm { FCVT            S27, H27 }

        v227 = _S23 * _S27;
        _S25 = _S25 * _S27;
        _S26 = _S26 * _S27;
        *v6.i32 = ((v304 * v215) + (v214 * v305)) + (v216 * v303);
        v230 = ((v301 * v215) + (v214 * v302)) + (v216 * v300);
        _S5 = ((v298 * v215) + (v214 * v299)) + (v216 * v297);
        v232 = ((v304 * v219) + (v218 * v305)) + (v220 * v303);
        v233 = ((v301 * v219) + (v218 * v302)) + (v220 * v300);
        v234 = ((v298 * v219) + (v218 * v299)) + (v220 * v297);
        v235 = ((v304 * v223) + (v222 * v305)) + (v224 * v303);
        v236 = ((v301 * v223) + (v222 * v302)) + (v224 * v300);
        v237 = ((v298 * v223) + (v222 * v299)) + (v224 * v297);
        v238 = ((v304 * _S25) + (v227 * v305)) + (_S26 * v303);
        v239 = ((v301 * _S25) + (v227 * v302)) + (_S26 * v300);
        v240 = ((v298 * _S25) + (v227 * v299)) + (_S26 * v297);
        LOWORD(_S25) = *&v33[2 * llroundf(fminf(fmaxf(*v6.i32, 0.0), 8191.0))];
        LOWORD(_S26) = *&v33[2 * llroundf(fminf(fmaxf(v230, 0.0), 8191.0))];
        LOWORD(_S5) = *&v33[2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0))];
        _H6 = *&v33[2 * llroundf(fminf(fmaxf(v232, 0.0), 8191.0))];
        _H19 = *&v33[2 * llroundf(fminf(fmaxf(v233, 0.0), 8191.0))];
        _H7 = *&v33[2 * llroundf(fminf(fmaxf(v234, 0.0), 8191.0))];
        _H16 = *&v33[2 * llroundf(fminf(fmaxf(v235, 0.0), 8191.0))];
        _H17 = *&v33[2 * llroundf(fminf(fmaxf(v236, 0.0), 8191.0))];
        _H18 = *&v33[2 * llroundf(fminf(fmaxf(v237, 0.0), 8191.0))];
        _H20 = *&v33[2 * llroundf(fminf(fmaxf(v238, 0.0), 8191.0))];
        _H22 = *&v33[2 * llroundf(fminf(fmaxf(v239, 0.0), 8191.0))];
        _H4 = *&v33[2 * llroundf(fminf(fmaxf(v240, 0.0), 8191.0))];
        __asm
        {
          FCVT            S23, H25
          FCVT            S25, H26
        }

        *v45 = _S23;
        *(v45 + 4) = _S25;
        __asm { FCVT            S5, H5 }

        if (!v46)
        {
          v171 = 1.0;
        }

        *(v45 + 8) = _S5;
        *(v45 + 12) = v171;
        __asm
        {
          FCVT            S2, H6
          FCVT            S5, H19
        }

        *(v45 + 16) = _S2;
        *(v45 + 20) = _S5;
        __asm { FCVT            S2, H7 }

        if (_ZF)
        {
          v172 = 1.0;
        }

        *(v45 + 24) = _S2;
        *(v45 + 28) = v172;
        __asm
        {
          FCVT            S2, H16
          FCVT            S3, H17
          FCVT            S5, H18
        }

        *v60 = _S2;
        *(v60 + 4) = _S3;
        __asm
        {
          FCVT            S2, H20
          FCVT            S3, H22
          FCVT            S4, H4
        }

        if (_ZF)
        {
          v173 = 1.0;
        }

        *(v60 + 8) = _S5;
        *(v60 + 12) = v173;
        if (_ZF)
        {
          *_Q0.i32 = 1.0;
        }

        else
        {
          *_Q0.i32 = v174;
        }

        *(v60 + 16) = _Q2.i32[0];
        *(v60 + 20) = _S3;
        v141 += 2;
        v140 += 2;
        v48 = (v48 + 2);
        *(v60 + 24) = _S4;
        *(v60 + 28) = _Q0.i32[0];
        v61 = (v61 + 2);
        v45 += 32;
        v60 += 32;
        _S15 = v308;
        v31 = v292;
      }

      v48 = &v56[v16];
      v17 = v265;
      v47 += v266;
      v46 = (v57 + v265);
      v45 = v58 + v264;
      v18 = v264;
      v11 += 2;
    }

    while (v11 < v267);
  }

  *(v262 + 4 * a2 + 160) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (16 * (v28 + v25) + 16) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 16 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = 2 * *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = 2 * ((v7 + v7 * a2) / v6 - v8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    v19 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    v20 = LODWORD(a5);
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v183 = v19 * *(v11 + 16);
    v184 = v19 * *(v11 + 8);
    v181 = v19 * *(v11 + 28);
    v182 = v19 * *(v11 + 20);
    v179 = *(v11 + 76);
    v180 = *(v11 + 72);
    v177 = *(v11 + 84);
    v178 = *(v11 + 80);
    v175 = *(v11 + 92);
    v176 = *(v11 + 88);
    v173 = *(v11 + 100);
    v174 = *(v11 + 96);
    v23 = v11 + 16548;
    v24 = *(result + 15) + 2 * v8;
    v25 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
    v26 = v11 + 32932;
    v171 = *(v11 + 108);
    v172 = *(v11 + 104);
    v27 = *(v11 + 112);
    v28 = *(v11 + 116);
    v170 = v27;
    v29 = *(v11 + 120);
    v30 = v11 + 164;
    v31 = **(result + 16) + v18 * v24 + 16 * *(result + 14);
    v32 = v13[2];
    v33 = v32 + v25 * v17;
    _ZF = v32 == 0;
    v34 = *v13 + v25 * v15;
    v35 = v13[1] + v25 / 2 * v16;
    v36 = *(result + 36);
    v37 = (v33 + v36);
    if (_ZF)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    v39 = (v34 + v36);
    v40 = v35 + v36;
    v186 = LODWORD(a5);
    v187 = v20;
    v185 = v22;
    do
    {
      v41 = &v39[v15];
      v42 = &v38[v17];
      v43 = v31 + v18;
      if (v12 >= 1)
      {
        v44 = 0;
        v45 = v31 + v18;
        v46 = &v39[v15];
        v47 = &v38[v17];
        do
        {
          LOBYTE(v27) = *(v40 + v44 + 1);
          v48 = LODWORD(v27) - v21;
          v49 = LODWORD(v184);
          v50 = v184 * v48;
          LOBYTE(v49) = *v39;
          v51 = v22 * (v49 - v20);
          v52 = (v184 * v48) + v51;
          v53 = 8191.0;
          if (v52 <= 8191.0)
          {
            v53 = (v184 * v48) + v51;
            if (v52 < 0.0)
            {
              v53 = 0.0;
            }
          }

          LOBYTE(v52) = *(v40 + v44);
          v54 = LODWORD(v52) - v21;
          v55 = (v182 * v48) + (v54 * v183);
          v56 = 8191.0;
          if ((v51 + v55) <= 8191.0)
          {
            v56 = v51 + v55;
            if ((v51 + v55) < 0.0)
            {
              v56 = 0.0;
            }
          }

          v57 = v181 * v54;
          v58 = (v181 * v54) + v51;
          v59 = 8191.0;
          if (v58 <= 8191.0)
          {
            v59 = v58;
            if (v58 < 0.0)
            {
              v59 = 0.0;
            }
          }

          LOBYTE(v58) = v39[1];
          v60 = v22 * (LODWORD(v58) - v20);
          v61 = 8191.0;
          if ((v50 + v60) <= 8191.0)
          {
            v61 = v50 + v60;
            if ((v50 + v60) < 0.0)
            {
              v61 = 0.0;
            }
          }

          v62 = 8191.0;
          if ((v55 + v60) <= 8191.0)
          {
            v62 = v55 + v60;
            if ((v55 + v60) < 0.0)
            {
              v62 = 0.0;
            }
          }

          v63 = v57 + v60;
          v64 = 8191.0;
          if (v63 <= 8191.0)
          {
            v64 = v63;
            if (v63 < 0.0)
            {
              v64 = 0.0;
            }
          }

          LOBYTE(v63) = *v46;
          v65 = LODWORD(v63) - v20;
          v66 = v22 * v65;
          v67 = 8191.0;
          if ((v50 + (v22 * v65)) <= 8191.0)
          {
            v67 = v50 + (v22 * v65);
            if (v67 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = 8191.0;
          if ((v55 + v66) <= 8191.0)
          {
            v68 = v55 + v66;
            if ((v55 + v66) < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v57 + v66;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          LOBYTE(v65) = v46[1];
          v71 = v22 * (LODWORD(v65) - v20);
          v72 = 8191.0;
          if ((v50 + v71) <= 8191.0)
          {
            v72 = v50 + v71;
            if ((v50 + v71) < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = 8191.0;
          if ((v55 + v71) <= 8191.0)
          {
            v73 = v55 + v71;
            if ((v55 + v71) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v57 + v71;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          if (v38)
          {
            LOBYTE(v74) = *v38;
            LOBYTE(v20) = v38[1];
            v38 += 2;
            LOBYTE(v22) = *v47;
            LOBYTE(v5) = v47[1];
            v47 += 2;
            v76 = LODWORD(v74) * 0.0039216;
            v77 = LODWORD(v20) * 0.0039216;
            v78 = LODWORD(v22) * 0.0039216;
            v79 = v5 * 0.0039216;
          }

          else
          {
            v76 = 0.0;
            v77 = 0.0;
            v78 = 0.0;
            v79 = 0.0;
          }

          _S1 = fmaxf(v53, 0.0);
          v81 = 8191.0;
          LOWORD(_S1) = *(v30 + 2 * llroundf(fminf(_S1, 8191.0)));
          __asm { FCVT            S1, H1 }

          _H16 = *(v30 + 2 * llroundf(fminf(fmaxf(v56, 0.0), 8191.0)));
          __asm { FCVT            S12, H16 }

          _H16 = *(v30 + 2 * llroundf(fminf(fmaxf(v59, 0.0), 8191.0)));
          __asm { FCVT            S13, H16 }

          _H16 = *(v30 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          _H15 = *(v30 + 2 * llroundf(fminf(fmaxf(v62, 0.0), 8191.0)));
          _H17 = *(v30 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          _H5 = *(v30 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          _H6 = *(v30 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          _H14 = *(v30 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          _H2 = *(v30 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          _H4 = *(v30 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          _H3 = *(v30 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          v99 = (((v170 * _S12) + (v171 * _S1)) + (v28 * _S13)) + (v29 * fmaxf(_S1, fmaxf(_S12, _S13)));
          v100 = 8191.0;
          if (v99 <= 8191.0)
          {
            v100 = v99;
            if (v99 < 0.0)
            {
              v100 = 0.0;
            }
          }

          __asm
          {
            FCVT            S30, H16
            FCVT            S15, H15
            FCVT            S7, H17
          }

          _H16 = *(v23 + 2 * llroundf(v100));
          v105 = (((v170 * _S15) + (v171 * _S30)) + (v28 * _S7)) + (v29 * fmaxf(_S30, fmaxf(_S15, _S7)));
          v106 = 8191.0;
          if (v105 <= 8191.0)
          {
            v106 = v105;
            if (v105 < 0.0)
            {
              v106 = 0.0;
            }
          }

          __asm
          {
            FCVT            S20, H5
            FCVT            S21, H6
            FCVT            S22, H14
          }

          _H5 = *(v23 + 2 * llroundf(v106));
          v111 = (((v170 * _S21) + (v171 * _S20)) + (v28 * _S22)) + (v29 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v112 = 8191.0;
          if (v111 <= 8191.0)
          {
            v112 = v111;
            if (v111 < 0.0)
            {
              v112 = 0.0;
            }
          }

          __asm
          {
            FCVT            S17, H2
            FCVT            S18, H4
            FCVT            S19, H3
            FCVT            S2, H16
          }

          v117 = _S1 * _S2;
          v118 = _S12 * _S2;
          v119 = _S13 * _S2;
          __asm { FCVT            S1, H5 }

          v121 = _S30 * _S1;
          v122 = _S15 * _S1;
          LOWORD(_S2) = *(v23 + 2 * llroundf(v112));
          v123 = _S7 * _S1;
          __asm { FCVT            S2, H2 }

          v125 = _S20 * _S2;
          v126 = _S21 * _S2;
          v127 = _S22 * _S2;
          v128 = fmaxf(_S17, fmaxf(_S18, _S19));
          v129 = (((v170 * _S18) + (v171 * _S17)) + (v28 * _S19)) + (v29 * v128);
          if (v129 <= 8191.0)
          {
            v81 = (((v170 * _S18) + (v171 * _S17)) + (v28 * _S19)) + (v29 * v128);
            if (v129 < 0.0)
            {
              v81 = 0.0;
            }
          }

          _H7 = *(v23 + 2 * llroundf(v81));
          __asm { FCVT            S7, H7 }

          _S17 = _S17 * _S7;
          _S18 = _S18 * _S7;
          v134 = _S19 * _S7;
          v135 = ((v179 * v122) + (v121 * v180)) + (v123 * v178);
          v136 = ((v176 * v122) + (v121 * v177)) + (v123 * v175);
          v137 = ((v173 * v122) + (v121 * v174)) + (v123 * v172);
          v138 = ((v179 * v126) + (v125 * v180)) + (v127 * v178);
          v139 = ((v176 * v126) + (v125 * v177)) + (v127 * v175);
          v140 = ((v173 * v126) + (v125 * v174)) + (v127 * v172);
          v141 = ((v179 * _S18) + (_S17 * v180)) + (v134 * v178);
          v142 = ((v176 * _S18) + (_S17 * v177)) + (v134 * v175);
          v143 = ((v173 * _S18) + (_S17 * v174)) + (v134 * v172);
          LOWORD(_S17) = *(v26 + 2 * llroundf(fminf(fmaxf(((v179 * v118) + (v117 * v180)) + (v119 * v178), 0.0), 8191.0)));
          LOWORD(_S18) = *(v26 + 2 * llroundf(fminf(fmaxf(((v176 * v118) + (v117 * v177)) + (v119 * v175), 0.0), 8191.0)));
          _H16 = *(v26 + 2 * llroundf(fminf(fmaxf(((v173 * v118) + (v117 * v174)) + (v119 * v172), 0.0), 8191.0)));
          _H19 = *(v26 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          _H20 = *(v26 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          _H3 = *(v26 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          _H5 = *(v26 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          _H6 = *(v26 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
          _H1 = *(v26 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          _H2 = *(v26 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
          _H4 = *(v26 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          _H7 = *(v26 + 2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0)));
          __asm
          {
            FCVT            S17, H17
            FCVT            S18, H18
          }

          *v31 = _S17;
          *(v31 + 4) = _S18;
          __asm { FCVT            S16, H16 }

          v5 = 1.0;
          if (v38)
          {
            v157 = v76;
          }

          else
          {
            v157 = 1.0;
          }

          *(v31 + 8) = _S16;
          *(v31 + 12) = v157;
          __asm
          {
            FCVT            S16, H19
            FCVT            S17, H20
          }

          *(v31 + 16) = _S16;
          *(v31 + 20) = _S17;
          __asm { FCVT            S3, H3 }

          if (_ZF)
          {
            v161 = 1.0;
          }

          else
          {
            v161 = v77;
          }

          *(v31 + 24) = _S3;
          *(v31 + 28) = v161;
          __asm
          {
            FCVT            S3, H5
            FCVT            S5, H6
          }

          *v45 = _S3;
          *(v45 + 4) = _S5;
          v39 += 2;
          v46 += 2;
          __asm
          {
            FCVT            S1, H1
            FCVT            S2, H2
            FCVT            S3, H4
            FCVT            S4, H7
          }

          if (_ZF)
          {
            v169 = 1.0;
          }

          else
          {
            v169 = v78;
          }

          *(v45 + 8) = _S1;
          *(v45 + 12) = v169;
          if (_ZF)
          {
            v27 = 1.0;
          }

          else
          {
            v27 = v79;
          }

          v31 += 32;
          *(v45 + 16) = _S2;
          *(v45 + 20) = _S3;
          *(v45 + 24) = _S4;
          *(v45 + 28) = v27;
          v45 += 32;
          v44 += 2;
          v21 = v186;
          v20 = v187;
          v22 = v185;
        }

        while (v44 < v12);
      }

      v39 = &v41[v15];
      v40 += v16;
      v38 = &v42[v17];
      v31 = v43 + v18;
      v10 += 2;
    }

    while (v10 < v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (16 * (v28 + v25) + 16) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 16 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_RGfA_neon_fp16_GCD(uint64_t result, uint64_t a2, double _D0, double a4, float32x4_t a5)
{
  v8 = 2 * *result;
  v218 = result;
  v9 = *(result + 104);
  v10 = v9 * a2 / v8;
  v225 = 2 * ((v9 + v9 * a2) / v8 - v10);
  if (v225 >= 1)
  {
    v11 = 0;
    v12 = *(result + 96);
    v13 = *(result + 152);
    v14 = *(result + 56);
    v15 = *(result + 64);
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = **(result + 136);
    v20 = v13[17].u16[2];
    v21 = v13[17].u16[3];
    v22.i32[0] = v13[3].i32[1];
    v23 = &v13[20] + 4;
    v24 = v12 & 0xFFFFFFFE;
    v25 = v20;
    v258 = v21;
    a5.f32[0] = 8191.0 / v13[16].u32[0];
    *&_D0 = a5.f32[0] * v13->f32[0];
    v26 = &v13[2068] + 4;
    v245 = *&_D0;
    __asm { FCVT            H0, S0 }

    v244 = *&_D0;
    *&_D0 = v20;
    v220 = vdupq_lane_s16(*&_D0, 0);
    v30 = -v21;
    v22.i32[1] = v13[1].i32[0];
    *v6.f32 = vmul_n_f32(v22, a5.f32[0]);
    *a5.f32 = vmul_n_f32(v13[2], a5.f32[0]);
    v242 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v239 = vmulq_n_f16(v242, v30);
    v240 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    _Q0 = vmulq_n_f16(v240, v30);
    v238 = _Q0;
    v255 = v13[9].f32[0];
    __asm { FCVT            H0, S3 }

    v237 = *_Q0.i16;
    v254 = v13[9].f32[1];
    __asm { FCVT            H0, S4 }

    v236 = *_Q0.i16;
    v253 = v13[10].f32[0];
    __asm { FCVT            H0, S5 }

    v235 = *_Q0.i16;
    v252 = v13[10].f32[1];
    __asm { FCVT            H0, S6 }

    v234 = *_Q0.i16;
    v251 = v13[11].f32[0];
    __asm { FCVT            H0, S7 }

    v233 = *_Q0.i16;
    v250 = v13[11].f32[1];
    __asm { FCVT            H0, S19 }

    v232 = *_Q0.i16;
    v249 = v13[12].f32[0];
    __asm { FCVT            H0, S16 }

    v231 = *_Q0.i16;
    v248 = v13[12].f32[1];
    __asm { FCVT            H0, S23 }

    v230 = *_Q0.i16;
    v247 = v13[13].f32[0];
    __asm { FCVT            H0, S20 }

    v229 = *_Q0.i16;
    v32 = *(result + 44) + 2 * (*(result + 28) * a2 / v8);
    v33 = v14[2];
    v223 = v16;
    result = v14[1] + v16 * (v32 / 2);
    v34 = *(v218 + 36);
    v35 = **(v218 + 128) + v19 * (*(v218 + 120) + 2 * v10) + 16 * *(v218 + 112);
    if (v33)
    {
      v36 = (v33 + v18 * v32 + v34);
    }

    else
    {
      v36 = 0;
    }

    v37 = (result + v34);
    v38 = (*v14 + v17 * v32 + v34);
    v243 = v6.f32[0];
    _Q0.i32[0] = a5.i32[1];
    LODWORD(v227) = HIDWORD(a5.u64[0]);
    LODWORD(v241) = a5.i64[0];
    v228 = v6.f32[1];
    v39.i64[0] = 0x9000900090009000;
    v39.i64[1] = 0x9000900090009000;
    v246 = v25;
    v224 = v17;
    v221 = v19;
    v222 = v18;
    do
    {
      v40 = v38 + v17;
      v41 = v36 + v18;
      v42 = v35 + v19;
      v226 = v36 + v18;
      if (v12 < 8)
      {
        v126 = 0;
        v125 = v37;
        v45 = (v38 + v17);
        v44 = v42;
      }

      else
      {
        v43 = 0;
        v44 = v42;
        v45 = (v38 + v17);
        do
        {
          if (v36)
          {
            v46 = *v36++;
            v47 = v46;
            v48 = *v41;
            v41 += 8;
            _Q0.i64[0] = v48;
          }

          else
          {
            v47 = 0;
            _Q0 = 0uLL;
          }

          v49 = *&v37[v43];
          *v50.i8 = vzip1_s8(v49, 0);
          v50.u64[1] = vzip2_s8(v49, 0);
          v51 = vcvtq_f16_u16(v50);
          v52 = vmlaq_f16(v239, v242, v51);
          v53 = vmlaq_f16(v238, v240, v51);
          v54 = vtrn2q_s16(v52, v52);
          v55 = vtrn1q_s16(v52, v52);
          v56 = vuzp1q_s16(v53, _Q0);
          *v56.i8 = vadd_f16(*v56.i8, *&vuzp2q_s16(v53, _Q0));
          v57 = *v38++;
          v58 = vzip1q_s16(v56, v56);
          *v56.i8 = vzip1_s8(v57, 0);
          v56.u64[1] = vzip2_s8(v57, 0);
          v59 = *v45++;
          *v53.i8 = vzip1_s8(v59, 0);
          v53.u64[1] = vzip2_s8(v59, 0);
          v60 = vsubq_f16(vcvtq_f16_u16(v56), v220);
          v61 = vsubq_f16(vcvtq_f16_u16(v53), v220);
          v62 = vmlaq_n_f16(v54, v60, v244);
          v63 = vmlaq_n_f16(v54, v61, v244);
          v64 = vmlaq_n_f16(v58, v60, v244);
          v65 = vmlaq_n_f16(v58, v61, v244);
          v66 = vmlaq_n_f16(v55, v60, v244);
          v67 = vmlaq_n_f16(v55, v61, v244);
          if (v36)
          {
            *v68.i8 = vzip1_s8(v47, 0);
            v68.u64[1] = vzip2_s8(v47, 0);
            v69 = vdupq_n_s16(0x1C04u);
            v70 = vmulq_f16(vcvtq_f16_u16(v68), v69);
            v256 = vcvtq_f32_f16(*v70.i8);
            *v71.i8 = vzip1_s8(*_Q0.i8, 0);
            v71.u64[1] = vzip2_s8(*_Q0.i8, 0);
            _Q3 = vcvtq_f32_f16(*&vextq_s8(v70, v70, 8uLL));
            v73 = vmulq_f16(vcvtq_f16_u16(v71), v69);
            v257 = vcvtq_f32_f16(*v73.i8);
            v74 = vcvtq_f32_f16(*&vextq_s8(v73, v73, 8uLL));
          }

          else
          {
            __asm { FMOV            V3.4S, #1.0 }

            v256 = _Q3;
            v257 = _Q3;
            v74 = _Q3;
          }

          v75 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v62, 0), v39));
          v76.i16[0] = *&v23[2 * v75.u16[0]];
          v76.i16[1] = *&v23[2 * v75.u16[1]];
          v76.i16[2] = *&v23[2 * v75.u16[2]];
          v76.i16[3] = *&v23[2 * v75.u16[3]];
          v76.i16[4] = *&v23[2 * v75.u16[4]];
          v76.i16[5] = *&v23[2 * v75.u16[5]];
          v76.i16[6] = *&v23[2 * v75.u16[6]];
          v76.i16[7] = *&v23[2 * v75.u16[7]];
          v77 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v64, 0), v39));
          v78.i16[0] = *&v23[2 * v77.u16[0]];
          v78.i16[1] = *&v23[2 * v77.u16[1]];
          v78.i16[2] = *&v23[2 * v77.u16[2]];
          v78.i16[3] = *&v23[2 * v77.u16[3]];
          v78.i16[4] = *&v23[2 * v77.u16[4]];
          v78.i16[5] = *&v23[2 * v77.u16[5]];
          v78.i16[6] = *&v23[2 * v77.u16[6]];
          v78.i16[7] = *&v23[2 * v77.u16[7]];
          v79 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v66, 0), v39));
          v80.i16[0] = *&v23[2 * v79.u16[0]];
          v80.i16[1] = *&v23[2 * v79.u16[1]];
          v80.i16[2] = *&v23[2 * v79.u16[2]];
          v80.i16[3] = *&v23[2 * v79.u16[3]];
          v80.i16[4] = *&v23[2 * v79.u16[4]];
          v80.i16[5] = *&v23[2 * v79.u16[5]];
          v80.i16[6] = *&v23[2 * v79.u16[6]];
          v80.i16[7] = *&v23[2 * v79.u16[7]];
          v81 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v63, 0), v39));
          v82.i16[0] = *&v23[2 * v81.u16[0]];
          v82.i16[1] = *&v23[2 * v81.u16[1]];
          v82.i16[2] = *&v23[2 * v81.u16[2]];
          v82.i16[3] = *&v23[2 * v81.u16[3]];
          v82.i16[4] = *&v23[2 * v81.u16[4]];
          v82.i16[5] = *&v23[2 * v81.u16[5]];
          v82.i16[6] = *&v23[2 * v81.u16[6]];
          v82.i16[7] = *&v23[2 * v81.u16[7]];
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v65, 0), v39));
          v84.i16[0] = *&v23[2 * v83.u16[0]];
          v84.i16[1] = *&v23[2 * v83.u16[1]];
          v84.i16[2] = *&v23[2 * v83.u16[2]];
          v84.i16[3] = *&v23[2 * v83.u16[3]];
          v84.i16[4] = *&v23[2 * v83.u16[4]];
          v84.i16[5] = *&v23[2 * v83.u16[5]];
          v84.i16[6] = *&v23[2 * v83.u16[6]];
          v84.i16[7] = *&v23[2 * v83.u16[7]];
          v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v67, 0), v39));
          v86 = v85.u16[0];
          v87 = v85.u16[1];
          v88 = v85.u16[2];
          v89 = v85.u16[3];
          v90 = v85.u16[4];
          v91 = v85.u16[5];
          v92 = v85.u16[6];
          v93 = v85.u16[7];
          v94 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, v237), v78, v236), v80, v235);
          v95 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, v234), v78, v233), v80, v232);
          v96 = vmlaq_n_f16(vmulq_n_f16(v80, v229), v78, v230);
          v80.i16[0] = *&v23[2 * v86];
          v80.i16[1] = *&v23[2 * v87];
          v80.i16[2] = *&v23[2 * v88];
          v80.i16[3] = *&v23[2 * v89];
          v80.i16[4] = *&v23[2 * v90];
          v80.i16[5] = *&v23[2 * v91];
          v80.i16[6] = *&v23[2 * v92];
          v80.i16[7] = *&v23[2 * v93];
          v97 = vmlaq_n_f16(v96, v76, v231);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v94, 0), v39));
          v98.i16[0] = *&v26[2 * v98.u16[0]];
          v98.i16[1] = *&v26[2 * v98.u16[1]];
          v98.i16[2] = *&v26[2 * v98.u16[2]];
          v98.i16[3] = *&v26[2 * v98.u16[3]];
          v98.i16[4] = *&v26[2 * v98.u16[4]];
          v98.i16[5] = *&v26[2 * v98.u16[5]];
          v98.i16[6] = *&v26[2 * v98.u16[6]];
          v98.i16[7] = *&v26[2 * v98.u16[7]];
          v99 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v82, v237), v84, v236), v80, v235);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v39));
          v101 = v100.u16[0];
          v102 = v100.u16[1];
          v103 = v100.u16[2];
          v104 = v100.u16[3];
          v105 = v100.u16[4];
          v106 = v100.u16[5];
          v107 = v100.u16[6];
          v108 = v100.u16[7];
          v109 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v82, v234), v84, v233), v80, v232);
          _Q29.i16[0] = *&v26[2 * v101];
          _Q29.i16[1] = *&v26[2 * v102];
          _Q29.i16[2] = *&v26[2 * v103];
          _Q29.i16[3] = *&v26[2 * v104];
          _Q29.i16[4] = *&v26[2 * v105];
          _Q29.i16[5] = *&v26[2 * v106];
          _Q29.i16[6] = *&v26[2 * v107];
          _Q29.i16[7] = *&v26[2 * v108];
          v110 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v80, v229), v84, v230), v82, v231);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v97, 0), v39));
          v111.i16[0] = *&v26[2 * v111.u16[0]];
          v111.i16[1] = *&v26[2 * v111.u16[1]];
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v99, 0), v39));
          v111.i16[2] = *&v26[2 * v111.u16[2]];
          v111.i16[3] = *&v26[2 * v111.u16[3]];
          v111.i16[4] = *&v26[2 * v111.u16[4]];
          v111.i16[5] = *&v26[2 * v111.u16[5]];
          v111.i16[6] = *&v26[2 * v111.u16[6]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v39));
          v111.i16[7] = *&v26[2 * v111.u16[7]];
          v112.i16[0] = *&v26[2 * v112.u16[0]];
          v112.i16[1] = *&v26[2 * v112.u16[1]];
          v112.i16[2] = *&v26[2 * v112.u16[2]];
          v112.i16[3] = *&v26[2 * v112.u16[3]];
          v112.i16[4] = *&v26[2 * v112.u16[4]];
          v112.i16[5] = *&v26[2 * v112.u16[5]];
          v112.i16[6] = *&v26[2 * v112.u16[6]];
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v39));
          v112.i16[7] = *&v26[2 * v112.u16[7]];
          v113.i16[0] = *&v26[2 * v113.u16[0]];
          v113.i16[1] = *&v26[2 * v113.u16[1]];
          v113.i16[2] = *&v26[2 * v113.u16[2]];
          v113.i16[3] = *&v26[2 * v113.u16[3]];
          v113.i16[4] = *&v26[2 * v113.u16[4]];
          v113.i16[5] = *&v26[2 * v113.u16[5]];
          v113.i16[6] = *&v26[2 * v113.u16[6]];
          v113.i16[7] = *&v26[2 * v113.u16[7]];
          result = v114.u16[6];
          v5.i16[0] = *&v26[2 * v114.u16[0]];
          v260.val[3] = v256;
          v260.val[0] = vcvtq_f32_f16(*v98.i8);
          v260.val[1] = vcvtq_f32_f16(*_Q29.i8);
          v5.i16[1] = *&v26[2 * v114.u16[1]];
          v5.i16[2] = *&v26[2 * v114.u16[2]];
          v5.i16[3] = *&v26[2 * v114.u16[3]];
          v5.i16[4] = *&v26[2 * v114.u16[4]];
          v5.i16[5] = *&v26[2 * v114.u16[5]];
          v5.i16[6] = *&v26[2 * v114.u16[6]];
          v260.val[2] = vcvtq_f32_f16(*v111.i8);
          v5.i16[7] = *&v26[2 * v114.u16[7]];
          v115 = v35 + 128;
          vst4q_f32(v35, v260);
          v116 = (v35 + 64);
          v117 = vcvtq_f32_f16(*&vextq_s8(v98, v98, 8uLL));
          v118 = vcvtq_f32_f16(*&vextq_s8(_Q29, _Q29, 8uLL));
          v119 = vcvtq_f32_f16(*&vextq_s8(v111, v111, 8uLL));
          vst4q_f32(v116, *(&_Q3 - 3));
          v259.val[3] = v257;
          v259.val[0] = vcvtq_f32_f16(*v112.i8);
          v259.val[1] = vcvtq_f32_f16(*v113.i8);
          v259.val[2] = vcvtq_f32_f16(*v5.i8);
          v120 = v44 + 128;
          vst4q_f32(v44, v259);
          v121 = (v44 + 64);
          v122 = vcvtq_f32_f16(*&vextq_s8(v112, v112, 8uLL));
          v123 = vcvtq_f32_f16(*&vextq_s8(v113, v113, 8uLL));
          _Q0 = vextq_s8(v5, v5, 8uLL);
          v124 = vcvtq_f32_f16(*_Q0.i8);
          vst4q_f32(v121, *(&v74 - 3));
          v35 = v115;
          v44 = v120;
          v43 += 8;
        }

        while (v43 < v12 - 7);
        v125 = &v37[v43];
        v126 = v12 & 0xFFFFFFF8;
      }

      for (; v126 < v24; v25 = v246)
      {
        _Q0.i8[0] = v125[1];
        v127 = _Q0.u32[0] - v258;
        v128 = LODWORD(v228);
        v129 = v228 * v127;
        LOBYTE(v128) = v38->i8[0];
        v130 = v245 * (v128 - v25);
        v131 = (v228 * v127) + v130;
        v132 = 8191.0;
        if (v131 <= 8191.0)
        {
          v132 = (v228 * v127) + v130;
          if (v131 < 0.0)
          {
            v132 = 0.0;
          }
        }

        LOBYTE(v131) = *v125;
        v133 = LODWORD(v131) - v258;
        v134 = (v227 * v127) + (v133 * v241);
        v135 = 8191.0;
        if ((v130 + v134) <= 8191.0)
        {
          v135 = v130 + v134;
          if ((v130 + v134) < 0.0)
          {
            v135 = 0.0;
          }
        }

        v136 = v243 * v133;
        v137 = (v243 * v133) + v130;
        v138 = 8191.0;
        if (v137 <= 8191.0)
        {
          v138 = v137;
          if (v137 < 0.0)
          {
            v138 = 0.0;
          }
        }

        LOBYTE(v137) = v38->i8[1];
        v139 = v245 * (LODWORD(v137) - v25);
        v140 = 8191.0;
        if ((v129 + v139) <= 8191.0)
        {
          v140 = v129 + v139;
          if ((v129 + v139) < 0.0)
          {
            v140 = 0.0;
          }
        }

        v141 = 8191.0;
        if ((v134 + v139) <= 8191.0)
        {
          v141 = v134 + v139;
          if ((v134 + v139) < 0.0)
          {
            v141 = 0.0;
          }
        }

        v142 = v136 + v139;
        v143 = 8191.0;
        if (v142 <= 8191.0)
        {
          v143 = v142;
          if (v142 < 0.0)
          {
            v143 = 0.0;
          }
        }

        LOBYTE(v142) = v45->i8[0];
        v144 = v245 * (LODWORD(v142) - v25);
        v145 = v129 + v144;
        v146 = 8191.0;
        if ((v129 + v144) <= 8191.0)
        {
          v146 = v129 + v144;
          if (v145 < 0.0)
          {
            v146 = 0.0;
          }
        }

        v147 = 8191.0;
        if ((v134 + v144) <= 8191.0)
        {
          v147 = v134 + v144;
          if ((v134 + v144) < 0.0)
          {
            v147 = 0.0;
          }
        }

        v148 = v136 + v144;
        v149 = 8191.0;
        if (v148 <= 8191.0)
        {
          v149 = v148;
          if (v148 < 0.0)
          {
            v149 = 0.0;
          }
        }

        LOBYTE(v145) = v45->i8[1];
        v150 = v245 * (LODWORD(v145) - v25);
        v151 = v129 + v150;
        v152 = 8191.0;
        if (v151 <= 8191.0)
        {
          v152 = v151;
          if (v151 < 0.0)
          {
            v152 = 0.0;
          }
        }

        v153 = 8191.0;
        if ((v134 + v150) <= 8191.0)
        {
          v153 = v134 + v150;
          if ((v134 + v150) < 0.0)
          {
            v153 = 0.0;
          }
        }

        v154 = v136 + v150;
        v155 = 8191.0;
        if ((v136 + v150) <= 8191.0)
        {
          v155 = v136 + v150;
          if (v154 < 0.0)
          {
            v155 = 0.0;
          }
        }

        if (v36)
        {
          LOBYTE(v154) = v36->i8[0];
          LOBYTE(v134) = v36->i8[1];
          v36 = (v36 + 2);
          _Q29.i8[0] = *v41;
          v5.i8[0] = *(v41 + 1);
          v41 += 2;
          v156 = LODWORD(v154) * 0.0039216;
          v157 = LODWORD(v134) * 0.0039216;
          v158 = _Q29.u32[0] * 0.0039216;
          v159 = v5.u32[0] * 0.0039216;
        }

        else
        {
          v156 = 0.0;
          v157 = 0.0;
          v158 = 0.0;
          v159 = 0.0;
        }

        _H29 = *&v23[2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0))];
        v161 = llroundf(fminf(fmaxf(v135, 0.0), 8191.0));
        __asm { FCVT            S1, H29 }

        _H29 = *&v23[2 * v161];
        __asm { FCVT            S29, H29 }

        _H2 = *&v23[2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H3 = *&v23[2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0))];
        __asm { FCVT            S3, H3 }

        _H6 = *&v23[2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0))];
        _H21 = *&v23[2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0))];
        __asm
        {
          FCVT            S6, H6
          FCVT            S21, H21
        }

        _H24 = *&v23[2 * llroundf(fminf(fmaxf(v146, 0.0), 8191.0))];
        __asm { FCVT            S24, H24 }

        _H25 = *&v23[2 * llroundf(fminf(fmaxf(v147, 0.0), 8191.0))];
        __asm { FCVT            S25, H25 }

        _H26 = *&v23[2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0))];
        __asm { FCVT            S26, H26 }

        _H27 = *&v23[2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0))];
        __asm { FCVT            S27, H27 }

        _H22 = *&v23[2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0))];
        _H28 = *&v23[2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0))];
        __asm
        {
          FCVT            S22, H22
          FCVT            S28, H28
        }

        *v5.i32 = ((v254 * _S29) + (_S1 * v255)) + (_S2 * v253);
        v185 = ((v251 * _S29) + (_S1 * v252)) + (_S2 * v250);
        _S1 = ((v248 * _S29) + (_S1 * v249)) + (_S2 * v247);
        v187 = ((v254 * _S6) + (_S3 * v255)) + (_S21 * v253);
        v188 = ((v251 * _S6) + (_S3 * v252)) + (_S21 * v250);
        v189 = ((v248 * _S6) + (_S3 * v249)) + (_S21 * v247);
        v190 = ((v254 * _S25) + (_S24 * v255)) + (_S26 * v253);
        v191 = ((v251 * _S25) + (_S24 * v252)) + (_S26 * v250);
        v192 = ((v248 * _S25) + (_S24 * v249)) + (_S26 * v247);
        v193 = ((v254 * _S22) + (_S27 * v255)) + (_S28 * v253);
        v194 = ((v251 * _S22) + (_S27 * v252)) + (_S28 * v250);
        v195 = ((v248 * _S22) + (_S27 * v249)) + (_S28 * v247);
        LOWORD(_S27) = *&v26[2 * llroundf(fminf(fmaxf(*v5.i32, 0.0), 8191.0))];
        LOWORD(_S28) = *&v26[2 * llroundf(fminf(fmaxf(v185, 0.0), 8191.0))];
        LOWORD(_S1) = *&v26[2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0))];
        _H2 = *&v26[2 * llroundf(fminf(fmaxf(v187, 0.0), 8191.0))];
        *_Q29.i32 = fminf(fmaxf(v188, 0.0), 8191.0);
        _Q29.i16[0] = *&v26[2 * llroundf(*_Q29.i32)];
        _H3 = *&v26[2 * llroundf(fminf(fmaxf(v189, 0.0), 8191.0))];
        _H6 = *&v26[2 * llroundf(fminf(fmaxf(v190, 0.0), 8191.0))];
        _H21 = *&v26[2 * llroundf(fminf(fmaxf(v191, 0.0), 8191.0))];
        _H24 = *&v26[2 * llroundf(fminf(fmaxf(v192, 0.0), 8191.0))];
        _H25 = *&v26[2 * llroundf(fminf(fmaxf(v193, 0.0), 8191.0))];
        _H26 = *&v26[2 * llroundf(fminf(fmaxf(v194, 0.0), 8191.0))];
        _H0 = *&v26[2 * llroundf(fminf(fmaxf(v195, 0.0), 8191.0))];
        __asm
        {
          FCVT            S22, H27
          FCVT            S27, H28
        }

        *v35 = _S22;
        *(v35 + 4) = _S27;
        __asm { FCVT            S1, H1 }

        if (!v36)
        {
          v156 = 1.0;
        }

        *(v35 + 8) = _S1;
        *(v35 + 12) = v156;
        __asm
        {
          FCVT            S1, H2
          FCVT            S2, H29
        }

        *(v35 + 16) = _S1;
        *(v35 + 20) = _S2;
        __asm { FCVT            S1, H3 }

        if (_ZF)
        {
          v210 = 1.0;
        }

        else
        {
          v210 = v157;
        }

        *(v35 + 24) = _S1;
        *(v35 + 28) = v210;
        __asm
        {
          FCVT            S1, H6
          FCVT            S2, H21
          FCVT            S3, H24
        }

        *v44 = _S1;
        *(v44 + 4) = _S2;
        __asm
        {
          FCVT            S1, H25
          FCVT            S2, H26
          FCVT            S0, H0
        }

        if (_ZF)
        {
          v158 = 1.0;
        }

        *(v44 + 8) = _S3;
        *(v44 + 12) = v158;
        if (_ZF)
        {
          v217 = 1.0;
        }

        else
        {
          v217 = v159;
        }

        *(v44 + 16) = _S1;
        *(v44 + 20) = _S2;
        v126 += 2;
        v125 += 2;
        v38 = (v38 + 2);
        *(v44 + 24) = _Q0.i32[0];
        *(v44 + 28) = v217;
        v45 = (v45 + 2);
        v35 += 32;
        v44 += 32;
      }

      v17 = v224;
      v38 = &v40[v224];
      v37 += v223;
      v18 = v222;
      v36 = (v226 + v222);
      v35 = v42 + v221;
      v19 = v221;
      v11 += 2;
    }

    while (v11 < v225);
  }

  *(v218 + 4 * a2 + 160) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (16 * (v28 + v25) + 16) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 16 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = 2 * *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = 2 * ((v6 + v6 * a2) / v5 - v7);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v157 = v19 * *(v10 + 16);
    v158 = v19 * *(v10 + 8);
    v23 = v19 * *(v10 + 20);
    _S4 = v19 * *(v10 + 28);
    v155 = _S4;
    v156 = v23;
    v25 = *(v10 + 72);
    v26 = *(v10 + 76);
    v27 = *(v10 + 80);
    v28 = *(v10 + 84);
    v29 = *(v10 + 88);
    v30 = *(v10 + 92);
    v31 = *(v10 + 96);
    v32 = *(v10 + 100);
    v33 = *(v10 + 104);
    v34 = *(result + 15) + 2 * v7;
    v35 = *(result + 44) + 2 * (*(result + 28) * a2 / v5);
    v36 = v10 + 16548;
    v37 = v10 + 164;
    v38 = **(result + 16) + v17 * v34 + 16 * *(result + 14);
    v39 = v12[2];
    v40 = v39 + v35 * v16;
    _ZF = v39 == 0;
    v41 = *v12 + v35 * v14;
    v42 = v12[1] + v35 / 2 * v15;
    v43 = *(result + 36);
    v44 = (v40 + v43);
    if (_ZF)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    v46 = (v41 + v43);
    v47 = v42 + v43;
    v159 = v22;
    do
    {
      v48 = &v46[v14];
      v49 = &v45[v16];
      v50 = v38 + v17;
      if (v11 >= 1)
      {
        v51 = 0;
        v52 = v38 + v17;
        v53 = &v46[v14];
        v54 = &v45[v16];
        do
        {
          LOBYTE(_S4) = *(v47 + v51 + 1);
          v55 = LODWORD(_S4) - v21;
          v56 = LODWORD(v158);
          v57 = v158 * v55;
          LOBYTE(v56) = *v46;
          v58 = v22 * (v56 - v20);
          v59 = (v158 * v55) + v58;
          v60 = 8191.0;
          if (v59 <= 8191.0)
          {
            v60 = (v158 * v55) + v58;
            if (v59 < 0.0)
            {
              v60 = 0.0;
            }
          }

          LOBYTE(v59) = *(v47 + v51);
          v61 = LODWORD(v59) - v21;
          v62 = LODWORD(v157);
          v63 = (v156 * v55) + (v61 * v157);
          v64 = 8191.0;
          if ((v58 + v63) <= 8191.0)
          {
            v64 = v58 + v63;
            if ((v58 + v63) < 0.0)
            {
              v64 = 0.0;
            }
          }

          v65 = v155 * v61;
          v66 = (v155 * v61) + v58;
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          LOBYTE(v66) = v46[1];
          v68 = v22 * (LODWORD(v66) - v20);
          v69 = 8191.0;
          if ((v57 + v68) <= 8191.0)
          {
            v69 = v57 + v68;
            if ((v57 + v68) < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = 8191.0;
          if ((v63 + v68) <= 8191.0)
          {
            v70 = v63 + v68;
            if ((v63 + v68) < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = v65 + v68;
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          LOBYTE(v71) = *v53;
          v73 = LODWORD(v71) - v20;
          v74 = v22 * v73;
          v75 = 8191.0;
          if ((v57 + (v22 * v73)) <= 8191.0)
          {
            v75 = v57 + (v22 * v73);
            if (v75 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = 8191.0;
          if ((v63 + v74) <= 8191.0)
          {
            v76 = v63 + v74;
            if ((v63 + v74) < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v65 + v74;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          LOBYTE(v73) = v53[1];
          v79 = v22 * (LODWORD(v73) - v20);
          v80 = 8191.0;
          if ((v57 + v79) <= 8191.0)
          {
            v80 = v57 + v79;
            if ((v57 + v79) < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = 8191.0;
          if ((v63 + v79) <= 8191.0)
          {
            v81 = v63 + v79;
            if ((v63 + v79) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v20;
          v83 = v65 + v79;
          v84 = (v65 + v79) <= 8191.0;
          v85 = 8191.0;
          if (v84)
          {
            v85 = v83;
            if (v83 < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = v21;
          if (v45)
          {
            LOBYTE(v83) = *v45;
            LOBYTE(v63) = v45[1];
            v45 += 2;
            LOBYTE(v62) = *v54;
            LOBYTE(v21) = v54[1];
            v54 += 2;
            v87 = LODWORD(v83) * 0.0039216;
            v88 = LODWORD(v63) * 0.0039216;
            v89 = v62 * 0.0039216;
            v90 = LODWORD(v21) * 0.0039216;
          }

          else
          {
            v87 = 0.0;
            v88 = 0.0;
            v89 = 0.0;
            v90 = 0.0;
          }

          _H2 = *(v37 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H7 = *(v37 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H26 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm
          {
            FCVT            S28, H28
            FCVT            S29, H29
          }

          _H8 = *(v37 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          _H12 = *(v37 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H4 = *(v37 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v37 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          _H6 = *(v37 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm
          {
            FCVT            S5, H5
            FCVT            S6, H6
          }

          v118 = ((v26 * _S7) + (_S2 * v25)) + (_S26 * v27);
          v119 = ((v29 * _S7) + (_S2 * v28)) + (_S26 * v30);
          _S2 = ((v32 * _S7) + (_S2 * v31)) + (_S26 * v33);
          v121 = ((v26 * _S28) + (_S27 * v25)) + (_S29 * v27);
          v122 = ((v29 * _S28) + (_S27 * v28)) + (_S29 * v30);
          v123 = ((v32 * _S28) + (_S27 * v31)) + (_S29 * v33);
          v124 = ((v26 * _S9) + (_S8 * v25)) + (_S12 * v27);
          v125 = ((v29 * _S9) + (_S8 * v28)) + (_S12 * v30);
          v126 = ((v32 * _S9) + (_S8 * v31)) + (_S12 * v33);
          v127 = ((v26 * _S5) + (_S4 * v25)) + (_S6 * v27);
          v128 = ((v29 * _S5) + (_S4 * v28)) + (_S6 * v30);
          v129 = ((v32 * _S5) + (_S4 * v31)) + (_S6 * v33);
          LOWORD(_S5) = *(v36 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          LOWORD(_S6) = *(v36 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          LOWORD(_S2) = *(v36 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          _H7 = *(v36 + 2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0)));
          _H26 = *(v36 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          _H29 = *(v36 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          _H8 = *(v36 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          _H12 = *(v36 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          _H4 = *(v36 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm
          {
            FCVT            S5, H5
            FCVT            S6, H6
          }

          *v38 = _S5;
          *(v38 + 4) = _S6;
          __asm { FCVT            S2, H2 }

          if (v45)
          {
            v142 = v87;
          }

          else
          {
            v142 = 1.0;
          }

          *(v38 + 8) = _S2;
          *(v38 + 12) = v142;
          __asm
          {
            FCVT            S2, H7
            FCVT            S5, H26
          }

          *(v38 + 16) = _S2;
          *(v38 + 20) = _S5;
          __asm { FCVT            S2, H27 }

          if (_ZF)
          {
            v146 = 1.0;
          }

          else
          {
            v146 = v88;
          }

          *(v38 + 24) = _S2;
          *(v38 + 28) = v146;
          __asm
          {
            FCVT            S2, H28
            FCVT            S5, H29
          }

          *v52 = _S2;
          *(v52 + 4) = _S5;
          v46 += 2;
          v53 += 2;
          __asm
          {
            FCVT            S2, H8
            FCVT            S5, H9
            FCVT            S6, H12
            FCVT            S4, H4
          }

          if (_ZF)
          {
            v153 = 1.0;
          }

          else
          {
            v153 = v89;
          }

          *(v52 + 8) = _S2;
          *(v52 + 12) = v153;
          if (_ZF)
          {
            v154 = 1.0;
          }

          else
          {
            v154 = v90;
          }

          v38 += 32;
          *(v52 + 16) = _S5;
          *(v52 + 20) = _S6;
          *(v52 + 24) = _S4;
          *(v52 + 28) = v154;
          v52 += 32;
          v51 += 2;
          v21 = v86;
          v20 = v82;
          v22 = v159;
        }

        while (v51 < v11);
      }

      v46 = &v48[v14];
      v47 += v15;
      v45 = &v49[v16];
      v38 = v50 + v17;
      v9 += 2;
    }

    while (v9 < v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}