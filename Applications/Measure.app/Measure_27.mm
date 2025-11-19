_DWORD **sub_10020FC74(_DWORD **result, uint64_t a2, _DWORD **a3, uint64_t a4, signed int a5, int a6)
{
  if (a6 >= 1)
  {
    if (a5 > 1)
    {
      v9 = a5 - 2;
      v10 = a6;
      if (((a5 - 2) & 0xFFFFFFFE) + 2 >= a5)
      {
        for (i = 0; i != v10; ++i)
        {
          v19 = result[i];
          v20 = a3[i];
          v21 = *(a4 + 4 * i);
          if (v19)
          {
            v22 = 0;
            v23 = *(a2 + 4 * i);
            do
            {
              v24 = v19[v23];
              *v20 = *v19;
              v20[v21] = v24;
              v22 += 2;
              v19 += 2 * v23;
              v20 += 2 * v21;
            }

            while (v22 <= v9);
          }

          else
          {
            do
            {
              v20[v21] = 0;
              *v20 = 0;
              LODWORD(v19) = v19 + 2;
              v20 += 2 * v21;
            }

            while (v19 <= v9);
          }
        }
      }

      else
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = result[j];
          v13 = a3[j];
          v14 = *(a4 + 4 * j);
          if (v12)
          {
            v15 = 0;
            v16 = *(a2 + 4 * j);
            do
            {
              v17 = v12[v16];
              *v13 = *v12;
              v13[v14] = v17;
              v15 += 2;
              v12 += 2 * v16;
              v13 += 2 * v14;
            }

            while (v15 <= v9);
            *v13 = *v12;
          }

          else
          {
            do
            {
              v13[v14] = 0;
              *v13 = 0;
              LODWORD(v12) = v12 + 2;
              v13 += 2 * v14;
            }

            while (v12 <= v9);
            *v13 = 0;
          }
        }
      }
    }

    else if (a5 == 1)
    {
      v6 = a6;
      do
      {
        v8 = *result;
        if (*result)
        {
          LODWORD(v8) = *v8;
        }

        v7 = *a3++;
        *v7 = v8;
        ++result;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

void **sub_10020FDEC(void **result, uint64_t a2, void **a3, uint64_t a4, signed int a5, int a6)
{
  if (a6 >= 1)
  {
    if (a5 > 1)
    {
      v9 = a5 - 2;
      v10 = a6;
      if (((a5 - 2) & 0xFFFFFFFE) + 2 >= a5)
      {
        for (i = 0; i != v10; ++i)
        {
          v19 = result[i];
          v20 = a3[i];
          v21 = *(a4 + 4 * i);
          if (v19)
          {
            v22 = 0;
            v23 = *(a2 + 4 * i);
            do
            {
              v24 = v19[v23];
              *v20 = *v19;
              v20[v21] = v24;
              v22 += 2;
              v19 += 2 * v23;
              v20 += 2 * v21;
            }

            while (v22 <= v9);
          }

          else
          {
            do
            {
              v20[v21] = 0;
              *v20 = 0;
              LODWORD(v19) = v19 + 2;
              v20 += 2 * v21;
            }

            while (v19 <= v9);
          }
        }
      }

      else
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = result[j];
          v13 = a3[j];
          v14 = *(a4 + 4 * j);
          if (v12)
          {
            v15 = 0;
            v16 = *(a2 + 4 * j);
            do
            {
              v17 = v12[v16];
              *v13 = *v12;
              v13[v14] = v17;
              v15 += 2;
              v12 += 2 * v16;
              v13 += 2 * v14;
            }

            while (v15 <= v9);
            *v13 = *v12;
          }

          else
          {
            do
            {
              v13[v14] = 0;
              *v13 = 0;
              LODWORD(v12) = v12 + 2;
              v13 += 2 * v14;
            }

            while (v12 <= v9);
            *v13 = 0;
          }
        }
      }
    }

    else if (a5 == 1)
    {
      v6 = a6;
      do
      {
        v8 = *result;
        if (*result)
        {
          v8 = *v8;
        }

        v7 = *a3++;
        *v7 = v8;
        ++result;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_10020FF64(uint64_t a1, float32x4_t *a2, uint64_t a3, int a4)
{
  v4 = a4 - 16;
  if (a4 >= 16)
  {
    result = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v87 = result;
        v63 = v6;
        v71 = a3;
        v79 = v4;
        v55 = v9;
        sub_1003C83B4();
        v9 = v55;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v63;
        a3 = v71;
        v4 = v79;
        result = v87;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v10 = v7[3];
          v11 = v8[1];
          v12 = v6[-1];
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v88 = result;
      v64 = v6;
      v72 = a3;
      v80 = v4;
      v56 = v9;
      sub_1003C83FC();
      v9 = v56;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v64;
      a3 = v72;
      v4 = v80;
      result = v88;
      v10 = xmmword_1004B0030;
      v11 = xmmword_1004B0010;
      v12 = v64[-1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

LABEL_16:
      v89 = result;
      v65 = v6;
      v73 = a3;
      v81 = v4;
      v49 = v12;
      v57 = v9;
      v43 = v10;
      v37 = v11;
      sub_1003C83B4();
      v11 = v37;
      v10 = v43;
      v12 = v49;
      v9 = v57;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v65;
      a3 = v73;
      v4 = v81;
      result = v89;
      if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
      {
LABEL_8:
        v13 = v7[3];
        v14 = v8[1];
        v15 = *v6;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_17:
      v90 = result;
      v66 = v6;
      v74 = a3;
      v82 = v4;
      v50 = v12;
      v58 = v9;
      v44 = v10;
      v38 = v11;
      sub_1003C83FC();
      v11 = v38;
      v10 = v44;
      v12 = v50;
      v9 = v58;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v66;
      a3 = v74;
      v4 = v82;
      result = v90;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      v15 = *v66;
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_9:
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }

LABEL_18:
      v91 = result;
      v67 = v6;
      v75 = a3;
      v83 = v4;
      v51 = v12;
      v59 = v9;
      v45 = v10;
      v33 = v15;
      v39 = v11;
      v25 = v14;
      v29 = v13;
      sub_1003C83B4();
      v14 = v25;
      v13 = v29;
      v15 = v33;
      v11 = v39;
      v10 = v45;
      v12 = v51;
      v9 = v59;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v67;
      a3 = v75;
      v4 = v83;
      result = v91;
      if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
      {
LABEL_10:
        v16 = v7[3];
        v17 = v8[1];
        v18 = v6[1];
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

LABEL_19:
      v92 = result;
      v68 = v6;
      v76 = a3;
      v84 = v4;
      v52 = v12;
      v60 = v9;
      v46 = v10;
      v34 = v15;
      v40 = v11;
      v26 = v14;
      v30 = v13;
      sub_1003C83FC();
      v14 = v26;
      v13 = v30;
      v15 = v34;
      v11 = v40;
      v10 = v46;
      v12 = v52;
      v9 = v60;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v68;
      a3 = v76;
      v4 = v84;
      result = v92;
      v16 = xmmword_1004B0030;
      v17 = xmmword_1004B0010;
      v18 = v68[1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_11:
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }

LABEL_20:
      v93 = result;
      v69 = v6;
      v77 = a3;
      v85 = v4;
      v53 = v12;
      v61 = v9;
      v47 = v10;
      v35 = v15;
      v41 = v11;
      v27 = v14;
      v31 = v13;
      v21 = v16;
      v23 = v18;
      v19 = v17;
      sub_1003C83B4();
      v17 = v19;
      v16 = v21;
      v18 = v23;
      v14 = v27;
      v13 = v31;
      v15 = v35;
      v11 = v41;
      v10 = v47;
      v12 = v53;
      v9 = v61;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v69;
      a3 = v77;
      v4 = v85;
      result = v93;
      if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_21:
        v94 = result;
        v70 = v6;
        v78 = a3;
        v86 = v4;
        v54 = v12;
        v62 = v9;
        v48 = v10;
        v36 = v15;
        v42 = v11;
        v28 = v14;
        v32 = v13;
        v22 = v16;
        v24 = v18;
        v20 = v17;
        sub_1003C83FC();
        v17 = v20;
        v16 = v22;
        v18 = v24;
        v14 = v28;
        v13 = v32;
        v15 = v36;
        v11 = v42;
        v10 = v48;
        v12 = v54;
        v9 = v62;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v70;
        a3 = v78;
        v4 = v86;
        result = v94;
      }

LABEL_12:
      *(a3 + result) = vqmovn_high_u16(vqmovn_u16(vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v9, vorrq_s8(vandq_s8(v11, v9), v10)))), vcvtq_s32_f32(vaddq_f32(v12, vorrq_s8(vandq_s8(v14, v12), v13))))), vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v17, v15), v16)))), vcvtq_s32_f32(vaddq_f32(v18, vorrq_s8(vandq_s8(v8[1], v18), v7[3])))));
      result += 16;
      v6 += 4;
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100210374(uint64_t a1, float64x2_t *a2, uint64_t a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    result = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      v10 = v6[-1];
      v11 = *v6;
      v12 = v6[1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v49 = result;
        v37 = v6;
        v41 = a3;
        v45 = v4;
        v33 = v10;
        v25 = v9;
        v29 = v12;
        v21 = v11;
        sub_1003C83B4();
        v11 = v21;
        v9 = v25;
        v12 = v29;
        v10 = v33;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v37;
        a3 = v41;
        v4 = v45;
        result = v49;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v13 = v7[3];
          v14 = v8[1];
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v50 = result;
      v38 = v6;
      v42 = a3;
      v46 = v4;
      v34 = v10;
      v26 = v9;
      v30 = v12;
      v22 = v11;
      sub_1003C83FC();
      v11 = v22;
      v9 = v26;
      v12 = v30;
      v10 = v34;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v38;
      a3 = v42;
      v4 = v46;
      result = v50;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v51 = result;
      v39 = v6;
      v43 = a3;
      v47 = v4;
      v35 = v10;
      v27 = v9;
      v31 = v12;
      v19 = v13;
      v23 = v11;
      v17 = v14;
      sub_1003C83B4();
      v14 = v17;
      v13 = v19;
      v11 = v23;
      v9 = v27;
      v12 = v31;
      v10 = v35;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v39;
      a3 = v43;
      v4 = v47;
      result = v51;
      if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v52 = result;
        v40 = v6;
        v44 = a3;
        v48 = v4;
        v36 = v10;
        v28 = v9;
        v32 = v12;
        v20 = v13;
        v24 = v11;
        v18 = v14;
        sub_1003C83FC();
        v14 = v18;
        v13 = v20;
        v11 = v24;
        v9 = v28;
        v12 = v32;
        v10 = v36;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v40;
        a3 = v44;
        v4 = v48;
        result = v52;
      }

LABEL_8:
      v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      *(a3 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v14, v15), v13)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v8[1], v16), v7[3])))));
      result += 8;
      v6 += 4;
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002105B4(uint64_t a1, float32x4_t *a2, uint64_t a3, int a4)
{
  v4 = a4 - 16;
  if (a4 >= 16)
  {
    result = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v87 = result;
        v63 = v6;
        v71 = a3;
        v79 = v4;
        v55 = v9;
        sub_1003C83B4();
        v9 = v55;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v63;
        a3 = v71;
        v4 = v79;
        result = v87;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v10 = v7[3];
          v11 = v8[1];
          v12 = v6[-1];
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v88 = result;
      v64 = v6;
      v72 = a3;
      v80 = v4;
      v56 = v9;
      sub_1003C83FC();
      v9 = v56;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v64;
      a3 = v72;
      v4 = v80;
      result = v88;
      v10 = xmmword_1004B0030;
      v11 = xmmword_1004B0010;
      v12 = v64[-1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

LABEL_16:
      v89 = result;
      v65 = v6;
      v73 = a3;
      v81 = v4;
      v49 = v12;
      v57 = v9;
      v43 = v10;
      v37 = v11;
      sub_1003C83B4();
      v11 = v37;
      v10 = v43;
      v12 = v49;
      v9 = v57;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v65;
      a3 = v73;
      v4 = v81;
      result = v89;
      if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
      {
LABEL_8:
        v13 = v7[3];
        v14 = v8[1];
        v15 = *v6;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_17:
      v90 = result;
      v66 = v6;
      v74 = a3;
      v82 = v4;
      v50 = v12;
      v58 = v9;
      v44 = v10;
      v38 = v11;
      sub_1003C83FC();
      v11 = v38;
      v10 = v44;
      v12 = v50;
      v9 = v58;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v66;
      a3 = v74;
      v4 = v82;
      result = v90;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      v15 = *v66;
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_9:
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }

LABEL_18:
      v91 = result;
      v67 = v6;
      v75 = a3;
      v83 = v4;
      v51 = v12;
      v59 = v9;
      v45 = v10;
      v33 = v15;
      v39 = v11;
      v25 = v14;
      v29 = v13;
      sub_1003C83B4();
      v14 = v25;
      v13 = v29;
      v15 = v33;
      v11 = v39;
      v10 = v45;
      v12 = v51;
      v9 = v59;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v67;
      a3 = v75;
      v4 = v83;
      result = v91;
      if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
      {
LABEL_10:
        v16 = v7[3];
        v17 = v8[1];
        v18 = v6[1];
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

LABEL_19:
      v92 = result;
      v68 = v6;
      v76 = a3;
      v84 = v4;
      v52 = v12;
      v60 = v9;
      v46 = v10;
      v34 = v15;
      v40 = v11;
      v26 = v14;
      v30 = v13;
      sub_1003C83FC();
      v14 = v26;
      v13 = v30;
      v15 = v34;
      v11 = v40;
      v10 = v46;
      v12 = v52;
      v9 = v60;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v68;
      a3 = v76;
      v4 = v84;
      result = v92;
      v16 = xmmword_1004B0030;
      v17 = xmmword_1004B0010;
      v18 = v68[1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_11:
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }

LABEL_20:
      v93 = result;
      v69 = v6;
      v77 = a3;
      v85 = v4;
      v53 = v12;
      v61 = v9;
      v47 = v10;
      v35 = v15;
      v41 = v11;
      v27 = v14;
      v31 = v13;
      v21 = v16;
      v23 = v18;
      v19 = v17;
      sub_1003C83B4();
      v17 = v19;
      v16 = v21;
      v18 = v23;
      v14 = v27;
      v13 = v31;
      v15 = v35;
      v11 = v41;
      v10 = v47;
      v12 = v53;
      v9 = v61;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v69;
      a3 = v77;
      v4 = v85;
      result = v93;
      if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_21:
        v94 = result;
        v70 = v6;
        v78 = a3;
        v86 = v4;
        v54 = v12;
        v62 = v9;
        v48 = v10;
        v36 = v15;
        v42 = v11;
        v28 = v14;
        v32 = v13;
        v22 = v16;
        v24 = v18;
        v20 = v17;
        sub_1003C83FC();
        v17 = v20;
        v16 = v22;
        v18 = v24;
        v14 = v28;
        v13 = v32;
        v15 = v36;
        v11 = v42;
        v10 = v48;
        v12 = v54;
        v9 = v62;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v70;
        a3 = v78;
        v4 = v86;
        result = v94;
      }

LABEL_12:
      *(a3 + result) = vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v9, vorrq_s8(vandq_s8(v11, v9), v10)))), vcvtq_s32_f32(vaddq_f32(v12, vorrq_s8(vandq_s8(v14, v12), v13))))), vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v17, v15), v16)))), vcvtq_s32_f32(vaddq_f32(v18, vorrq_s8(vandq_s8(v8[1], v18), v7[3])))));
      result += 16;
      v6 += 4;
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002109C4(uint64_t a1, float64x2_t *a2, uint64_t a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    result = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      v10 = v6[-1];
      v11 = *v6;
      v12 = v6[1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v49 = result;
        v37 = v6;
        v41 = a3;
        v45 = v4;
        v33 = v10;
        v25 = v9;
        v29 = v12;
        v21 = v11;
        sub_1003C83B4();
        v11 = v21;
        v9 = v25;
        v12 = v29;
        v10 = v33;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v37;
        a3 = v41;
        v4 = v45;
        result = v49;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v13 = v7[3];
          v14 = v8[1];
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v50 = result;
      v38 = v6;
      v42 = a3;
      v46 = v4;
      v34 = v10;
      v26 = v9;
      v30 = v12;
      v22 = v11;
      sub_1003C83FC();
      v11 = v22;
      v9 = v26;
      v12 = v30;
      v10 = v34;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v38;
      a3 = v42;
      v4 = v46;
      result = v50;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v51 = result;
      v39 = v6;
      v43 = a3;
      v47 = v4;
      v35 = v10;
      v27 = v9;
      v31 = v12;
      v19 = v13;
      v23 = v11;
      v17 = v14;
      sub_1003C83B4();
      v14 = v17;
      v13 = v19;
      v11 = v23;
      v9 = v27;
      v12 = v31;
      v10 = v35;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v39;
      a3 = v43;
      v4 = v47;
      result = v51;
      if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v52 = result;
        v40 = v6;
        v44 = a3;
        v48 = v4;
        v36 = v10;
        v28 = v9;
        v32 = v12;
        v20 = v13;
        v24 = v11;
        v18 = v14;
        sub_1003C83FC();
        v14 = v18;
        v13 = v20;
        v11 = v24;
        v9 = v28;
        v12 = v32;
        v10 = v36;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v40;
        a3 = v44;
        v4 = v48;
        result = v52;
      }

LABEL_8:
      v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      *(a3 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v14, v15), v13)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v8[1], v16), v7[3])))));
      result += 8;
      v6 += 4;
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100210C04(uint64_t a1, float32x4_t *a2, int16x8_t *a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    LODWORD(result) = 0;
    v6 = a2 + 1;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v35 = a3;
        v27 = result;
        v31 = v4;
        v23 = v6;
        v19 = v9;
        sub_1003C83B4();
        v9 = v19;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v23;
        LODWORD(result) = v27;
        v4 = v31;
        a3 = v35;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v10 = v7[3];
          v11 = v8[1];
          v12 = *v6;
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v36 = a3;
      v28 = result;
      v32 = v4;
      v24 = v6;
      v20 = v9;
      sub_1003C83FC();
      v9 = v20;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v24;
      LODWORD(result) = v28;
      v4 = v32;
      a3 = v36;
      v10 = xmmword_1004B0030;
      v11 = xmmword_1004B0010;
      v12 = *v24;
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v37 = a3;
      v29 = result;
      v33 = v4;
      v25 = v6;
      v17 = v12;
      v21 = v9;
      v13 = v11;
      v15 = v10;
      sub_1003C83B4();
      v11 = v13;
      v10 = v15;
      v12 = v17;
      v9 = v21;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v25;
      LODWORD(result) = v29;
      v4 = v33;
      a3 = v37;
      if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v38 = a3;
        v30 = result;
        v34 = v4;
        v26 = v6;
        v18 = v12;
        v22 = v9;
        v14 = v11;
        v16 = v10;
        sub_1003C83FC();
        v11 = v14;
        v10 = v16;
        v12 = v18;
        v9 = v22;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v26;
        LODWORD(result) = v30;
        v4 = v34;
        a3 = v38;
      }

LABEL_8:
      *a3++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v9, vorrq_s8(vandq_s8(v11, v9), v10)))), vcvtq_s32_f32(vaddq_f32(v12, vorrq_s8(vandq_s8(v8[1], v12), v7[3]))));
      v6 += 2;
      result = (result + 8);
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100210DF4(uint64_t a1, float64x2_t *a2, int16x8_t *a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    LODWORD(result) = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      v10 = v6[-1];
      v11 = *v6;
      v12 = v6[1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v49 = a3;
        v41 = result;
        v45 = v4;
        v37 = v6;
        v33 = v10;
        v25 = v9;
        v29 = v12;
        v21 = v11;
        sub_1003C83B4();
        v11 = v21;
        v9 = v25;
        v12 = v29;
        v10 = v33;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v37;
        LODWORD(result) = v41;
        v4 = v45;
        a3 = v49;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v13 = v7[3];
          v14 = v8[1];
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v50 = a3;
      v42 = result;
      v46 = v4;
      v38 = v6;
      v34 = v10;
      v26 = v9;
      v30 = v12;
      v22 = v11;
      sub_1003C83FC();
      v11 = v22;
      v9 = v26;
      v12 = v30;
      v10 = v34;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v38;
      LODWORD(result) = v42;
      v4 = v46;
      a3 = v50;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v51 = a3;
      v43 = result;
      v47 = v4;
      v39 = v6;
      v35 = v10;
      v27 = v9;
      v31 = v12;
      v19 = v13;
      v23 = v11;
      v17 = v14;
      sub_1003C83B4();
      v14 = v17;
      v13 = v19;
      v11 = v23;
      v9 = v27;
      v12 = v31;
      v10 = v35;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v39;
      LODWORD(result) = v43;
      v4 = v47;
      a3 = v51;
      if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v52 = a3;
        v44 = result;
        v48 = v4;
        v40 = v6;
        v36 = v10;
        v28 = v9;
        v32 = v12;
        v20 = v13;
        v24 = v11;
        v18 = v14;
        sub_1003C83FC();
        v14 = v18;
        v13 = v20;
        v11 = v24;
        v9 = v28;
        v12 = v32;
        v10 = v36;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v40;
        LODWORD(result) = v44;
        v4 = v48;
        a3 = v52;
      }

LABEL_8:
      v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      *a3++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v14, v15), v13)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v8[1], v16), v7[3]))));
      v6 += 4;
      result = (result + 8);
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100211030(uint64_t a1, float32x4_t *a2, int16x8_t *a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    LODWORD(result) = 0;
    v6 = a2 + 1;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v35 = a3;
        v27 = result;
        v31 = v4;
        v23 = v6;
        v19 = v9;
        sub_1003C83B4();
        v9 = v19;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v23;
        LODWORD(result) = v27;
        v4 = v31;
        a3 = v35;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v10 = v7[3];
          v11 = v8[1];
          v12 = *v6;
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v36 = a3;
      v28 = result;
      v32 = v4;
      v24 = v6;
      v20 = v9;
      sub_1003C83FC();
      v9 = v20;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v24;
      LODWORD(result) = v28;
      v4 = v32;
      a3 = v36;
      v10 = xmmword_1004B0030;
      v11 = xmmword_1004B0010;
      v12 = *v24;
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v37 = a3;
      v29 = result;
      v33 = v4;
      v25 = v6;
      v17 = v12;
      v21 = v9;
      v13 = v11;
      v15 = v10;
      sub_1003C83B4();
      v11 = v13;
      v10 = v15;
      v12 = v17;
      v9 = v21;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v25;
      LODWORD(result) = v29;
      v4 = v33;
      a3 = v37;
      if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v38 = a3;
        v30 = result;
        v34 = v4;
        v26 = v6;
        v18 = v12;
        v22 = v9;
        v14 = v11;
        v16 = v10;
        sub_1003C83FC();
        v11 = v14;
        v10 = v16;
        v12 = v18;
        v9 = v22;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v26;
        LODWORD(result) = v30;
        v4 = v34;
        a3 = v38;
      }

LABEL_8:
      *a3++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v9, vorrq_s8(vandq_s8(v11, v9), v10)))), vcvtq_s32_f32(vaddq_f32(v12, vorrq_s8(vandq_s8(v8[1], v12), v7[3]))));
      v6 += 2;
      result = (result + 8);
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100211220(uint64_t a1, float64x2_t *a2, int16x8_t *a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    LODWORD(result) = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      v10 = v6[-1];
      v11 = *v6;
      v12 = v6[1];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v49 = a3;
        v41 = result;
        v45 = v4;
        v37 = v6;
        v33 = v10;
        v25 = v9;
        v29 = v12;
        v21 = v11;
        sub_1003C83B4();
        v11 = v21;
        v9 = v25;
        v12 = v29;
        v10 = v33;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v37;
        LODWORD(result) = v41;
        v4 = v45;
        a3 = v49;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v13 = v7[3];
          v14 = v8[1];
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v50 = a3;
      v42 = result;
      v46 = v4;
      v38 = v6;
      v34 = v10;
      v26 = v9;
      v30 = v12;
      v22 = v11;
      sub_1003C83FC();
      v11 = v22;
      v9 = v26;
      v12 = v30;
      v10 = v34;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v38;
      LODWORD(result) = v42;
      v4 = v46;
      a3 = v50;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v51 = a3;
      v43 = result;
      v47 = v4;
      v39 = v6;
      v35 = v10;
      v27 = v9;
      v31 = v12;
      v19 = v13;
      v23 = v11;
      v17 = v14;
      sub_1003C83B4();
      v14 = v17;
      v13 = v19;
      v11 = v23;
      v9 = v27;
      v12 = v31;
      v10 = v35;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v39;
      LODWORD(result) = v43;
      v4 = v47;
      a3 = v51;
      if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v52 = a3;
        v44 = result;
        v48 = v4;
        v40 = v6;
        v36 = v10;
        v28 = v9;
        v32 = v12;
        v20 = v13;
        v24 = v11;
        v18 = v14;
        sub_1003C83FC();
        v14 = v18;
        v13 = v20;
        v11 = v24;
        v9 = v28;
        v12 = v32;
        v10 = v36;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v40;
        LODWORD(result) = v44;
        v4 = v48;
        a3 = v52;
      }

LABEL_8:
      v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      *a3++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v14, v15), v13)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v8[1], v16), v7[3]))));
      v6 += 4;
      result = (result + 8);
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_10021145C(uint64_t result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v83 = a6 - result;
    v82 = a7 - a2;
    v80 = result + 4;
    v81 = a6 + 4;
    v86 = *v10.i32;
    v87 = *v9.i32;
    v84 = vdupq_lane_s32(v10, 0);
    v85 = vdupq_lane_s32(v9, 0);
    do
    {
      v90 = v11;
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100225DAC(a3, *v16.i8, v91, v13, v12, v15);
      v18.i64[0] = 0xFF000000FFLL;
      v18.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v86;
      *v9.i32 = v87;
      if (result > v17)
      {
        goto LABEL_25;
      }

      v19 = result;
      v20 = v17 - result;
      if (v20 > 0x3B && ((v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + result, v12 + result < v80 + v14 * a2 + v21) ? (v22 = v13 + result >= v81 + v14 * a7 + v21) : (v22 = 1), v22))
      {
        v23 = (v20 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = (v13 + v19);
          v93 = vld4q_s8(v25);
          v26 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[0], xmmword_1003E3700));
          v27 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[0], xmmword_1003E3710));
          v28 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[0], xmmword_1003E3720));
          v29 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[0], xmmword_1003E3730));
          v30 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[1], xmmword_1003E3720));
          v31 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[1], xmmword_1003E3730));
          v32 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[1], xmmword_1003E3710));
          v33 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[1], xmmword_1003E3700));
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[2], xmmword_1003E3700));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[2], xmmword_1003E3710));
          v36 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[2], xmmword_1003E3720));
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[2], xmmword_1003E3730));
          v93.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v93.val[3], xmmword_1003E3720));
          v93.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v93.val[3], xmmword_1003E3730));
          v38 = (v12 + v19);
          v39 = vmlaq_f32(v84, v85, v33);
          v40 = vmlaq_f32(v84, v85, v32);
          v41 = vmlaq_f32(v84, v85, v31);
          v42 = vmlaq_f32(v84, v85, v30);
          v43 = vmlaq_f32(v84, v85, v29);
          v44 = vmlaq_f32(v84, v85, v28);
          v45 = vmlaq_f32(v84, v85, v27);
          v46 = vmlaq_f32(v84, v85, v26);
          v47 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL)))));
          v48 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))));
          v49 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0);
          v50 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0);
          v51 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v93.val[3], xmmword_1003E3700)));
          v93.val[3] = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v93.val[3], xmmword_1003E3710)));
          v93.val[2] = vmlaq_f32(v84, v85, v93.val[1]);
          v52 = vmlaq_f32(v84, v85, v93.val[0]);
          v53 = vmlaq_f32(v84, v85, v37);
          v93.val[1] = vmlaq_f32(v84, v85, v36);
          v54 = vmlaq_f32(v84, v85, v35);
          v55 = vmlaq_f32(v84, v85, v34);
          v94.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(v50, v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v18), vminq_s32(v49, v18)));
          v56 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v18);
          v94.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(v47, 0), v18), vminq_s32(vmaxq_s32(v48, 0), v18)));
          v94.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[1], v93.val[1], 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), 0), v18)));
          a3 = vuzp1q_s16(v56, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[2], v93.val[2], 8uLL))))), 0), v18));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[3], v93.val[3], 8uLL))))), 0), v18));
          v94.val[3] = vuzp1q_s8(a3, v16);
          vst4q_s8(v38, v94);
          v19 += 64;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_25;
        }
      }

      else
      {
        result = result;
      }

      do
      {
        v57 = v13 + result;
        a3.n128_u8[0] = *(v13 + result);
        *&v58 = rintf(v86 + (a3.n128_u32[0] * v87));
        v59 = *&v58 & ~(*&v58 >> 31);
        LOBYTE(v58) = *(v13 + result + 1);
        a3.n128_f32[0] = rintf(v86 + (v58 * v87));
        if (v59 >= 255)
        {
          LOBYTE(v59) = -1;
        }

        v60 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
        v61 = (v12 + result);
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        *v61 = v59;
        v61[1] = v60;
        a3.n128_u8[0] = *(v57 + 2);
        *&v62 = rintf(v86 + (a3.n128_u32[0] * v87));
        v63 = *&v62 & ~(*&v62 >> 31);
        LOBYTE(v62) = *(v57 + 3);
        a3.n128_f32[0] = rintf(v86 + (v62 * v87));
        v64 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
        if (v63 >= 255)
        {
          LOBYTE(v63) = -1;
        }

        if (v64 >= 255)
        {
          LOBYTE(v64) = -1;
        }

        v61[2] = v63;
        v61[3] = v64;
        result += 4;
      }

      while (result <= v17);
LABEL_25:
      if (result < v15)
      {
        v65 = v15 - result;
        if (v65 < 4)
        {
          v67 = result;
          goto LABEL_41;
        }

        if ((v83 + v82 * v14) < 0x10)
        {
          v67 = result;
          goto LABEL_41;
        }

        if (v65 >= 0x10)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFF0;
          v68 = result;
          v69 = v65 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v70 = *(v13 + v68);
            v71 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3710)));
            v72 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3700)));
            v73 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3730)));
            v74 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3720)));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))), 0);
            v92.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))))), 0), v18);
            v92.val[2] = vminq_s32(v16, v18);
            v92.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), 0), v18);
            v92.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), 0), v18);
            a3 = vqtbl4q_s8(v92, xmmword_1003E36F0);
            *(v12 + v68) = a3;
            v68 += 16;
            v69 -= 16;
          }

          while (v69);
          if (v65 == v66)
          {
            goto LABEL_3;
          }

          if ((v65 & 0xC) == 0)
          {
            v67 = v66 + result;
            do
            {
LABEL_41:
              a3.n128_u8[0] = *(v13 + v67);
              a3.n128_f32[0] = rintf(v86 + (a3.n128_u32[0] * v87));
              v79 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
              if (v79 >= 255)
              {
                LOBYTE(v79) = -1;
              }

              *(v12 + v67++) = v79;
            }

            while (v15 != v67);
            goto LABEL_3;
          }
        }

        else
        {
          v66 = 0;
        }

        v67 = (v65 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v75 = v66 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        v76 = v66 + result;
        do
        {
          a3.n128_u32[0] = *(v13 + v76);
          v77 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a3.n128_u64[0]))));
          v78 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v77.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v77, v77, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(v78, v16), 0), v18);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v12 + v76) = a3.n128_u32[0];
          v76 += 4;
          v75 += 4;
        }

        while (v75);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }
      }

LABEL_3:
      v13 += a2;
      v12 += a7;
      ++v14;
      v11 = v90 - 1;
    }

    while (v90 != 1);
  }

  return result;
}

uint64_t sub_100211C90(uint64_t result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v83 = a6 - result;
    v82 = a7 - a2;
    v80 = result + 4;
    v81 = a6 + 4;
    v86 = *v10.i32;
    v87 = *v9.i32;
    v84 = vdupq_lane_s32(v10, 0);
    v85 = vdupq_lane_s32(v9, 0);
    do
    {
      v90 = v11;
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100225FD8(a3, *v16.i8, v91, v13, v12, v15);
      v18.i64[0] = 0xFF000000FFLL;
      v18.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v86;
      *v9.i32 = v87;
      if (result > v17)
      {
        goto LABEL_25;
      }

      v19 = result;
      v20 = v17 - result;
      if (v20 > 0x3B && ((v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + result, v12 + result < v80 + v14 * a2 + v21) ? (v22 = v13 + result >= v81 + v14 * a7 + v21) : (v22 = 1), v22))
      {
        v23 = (v20 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = (v13 + v19);
          v93 = vld4q_s8(v25);
          v26 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[0], xmmword_1003E3740), 0x18uLL);
          v27 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[0], xmmword_1003E3750), 0x18uLL);
          v28 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[0], xmmword_1003E3760), 0x18uLL);
          v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[0], xmmword_1003E3770), 0x18uLL);
          v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[1], xmmword_1003E3760), 0x18uLL);
          v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[1], xmmword_1003E3770), 0x18uLL);
          v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[1], xmmword_1003E3750), 0x18uLL);
          v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[1], xmmword_1003E3740), 0x18uLL);
          v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[2], xmmword_1003E3740), 0x18uLL);
          v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[2], xmmword_1003E3750), 0x18uLL);
          v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[2], xmmword_1003E3760), 0x18uLL);
          v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[2], xmmword_1003E3770), 0x18uLL);
          v93.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[3], xmmword_1003E3760), 0x18uLL);
          v93.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[3], xmmword_1003E3770), 0x18uLL);
          v38 = (v12 + v19);
          v39 = vmlaq_f32(v84, v85, v33);
          v40 = vmlaq_f32(v84, v85, v32);
          v41 = vmlaq_f32(v84, v85, v31);
          v42 = vmlaq_f32(v84, v85, v30);
          v43 = vmlaq_f32(v84, v85, v29);
          v44 = vmlaq_f32(v84, v85, v28);
          v45 = vmlaq_f32(v84, v85, v27);
          v46 = vmlaq_f32(v84, v85, v26);
          v47 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL)))));
          v48 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))));
          v49 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0);
          v50 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0);
          v51 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[3], xmmword_1003E3740), 0x18uLL));
          v93.val[3] = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[3], xmmword_1003E3750), 0x18uLL));
          v93.val[2] = vmlaq_f32(v84, v85, v93.val[1]);
          v52 = vmlaq_f32(v84, v85, v93.val[0]);
          v53 = vmlaq_f32(v84, v85, v37);
          v93.val[1] = vmlaq_f32(v84, v85, v36);
          v54 = vmlaq_f32(v84, v85, v35);
          v55 = vmlaq_f32(v84, v85, v34);
          v94.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(v50, v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v18), vminq_s32(v49, v18)));
          v56 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v18);
          v94.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(v47, 0), v18), vminq_s32(vmaxq_s32(v48, 0), v18)));
          v94.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[1], v93.val[1], 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), 0), v18)));
          a3 = vuzp1q_s16(v56, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[2], v93.val[2], 8uLL))))), 0), v18));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[3], v93.val[3], 8uLL))))), 0), v18));
          v94.val[3] = vuzp1q_s8(a3, v16);
          vst4q_s8(v38, v94);
          v19 += 64;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_25;
        }
      }

      else
      {
        result = result;
      }

      do
      {
        v57 = v13 + result;
        a3.n128_u8[0] = *(v13 + result);
        v58 = vmovl_s16(*&vmovl_s8(a3.n128_u64[0])).u64[0];
        *v58.i32 = rintf(v86 + (v58.i32[0] * v87));
        v59 = *v58.i32 & ~(*v58.i32 >> 31);
        v58.i8[0] = *(v13 + result + 1);
        a3.n128_u64[0] = vmovl_s16(*&vmovl_s8(v58)).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0];
        if (v59 >= 255)
        {
          LOBYTE(v59) = -1;
        }

        a3.n128_f32[0] = rintf(v86 + (a3.n128_f32[0] * v87));
        v60 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        v61 = (v12 + result);
        *v61 = v59;
        v61[1] = v60;
        a3.n128_u8[0] = *(v57 + 2);
        v62 = vmovl_s16(*&vmovl_s8(a3.n128_u64[0])).u64[0];
        *v62.i32 = rintf(v86 + (v62.i32[0] * v87));
        v63 = *v62.i32 & ~(*v62.i32 >> 31);
        v62.i8[0] = *(v57 + 3);
        a3 = vmovl_s16(*&vmovl_s8(v62));
        a3.n128_f32[0] = rintf(v86 + (a3.n128_i32[0] * v87));
        v64 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
        if (v63 >= 255)
        {
          LOBYTE(v63) = -1;
        }

        if (v64 >= 255)
        {
          LOBYTE(v64) = -1;
        }

        v61[2] = v63;
        v61[3] = v64;
        result += 4;
      }

      while (result <= v17);
LABEL_25:
      if (result < v15)
      {
        v65 = v15 - result;
        if (v65 < 4)
        {
          v67 = result;
          goto LABEL_41;
        }

        if ((v83 + v82 * v14) < 0x10)
        {
          v67 = result;
          goto LABEL_41;
        }

        if (v65 >= 0x10)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFF0;
          v68 = result;
          v69 = v65 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v70 = *(v13 + v68);
            v71 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v70, xmmword_1003E3750), 0x18uLL));
            v72 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v70, xmmword_1003E3740), 0x18uLL));
            v73 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v70, xmmword_1003E3770), 0x18uLL));
            v74 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v70, xmmword_1003E3760), 0x18uLL));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))), 0);
            v92.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))))), 0), v18);
            v92.val[2] = vminq_s32(v16, v18);
            v92.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), 0), v18);
            v92.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), 0), v18);
            a3 = vqtbl4q_s8(v92, xmmword_1003E36F0);
            *(v12 + v68) = a3;
            v68 += 16;
            v69 -= 16;
          }

          while (v69);
          if (v65 == v66)
          {
            goto LABEL_3;
          }

          if ((v65 & 0xC) == 0)
          {
            v67 = v66 + result;
            do
            {
LABEL_41:
              a3.n128_u8[0] = *(v13 + v67);
              a3 = vmovl_s16(*&vmovl_s8(a3.n128_u64[0]));
              a3.n128_f32[0] = rintf(v86 + (a3.n128_i32[0] * v87));
              v79 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
              if (v79 >= 255)
              {
                LOBYTE(v79) = -1;
              }

              *(v12 + v67++) = v79;
            }

            while (v15 != v67);
            goto LABEL_3;
          }
        }

        else
        {
          v66 = 0;
        }

        v67 = (v65 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v75 = v66 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        v76 = v66 + result;
        do
        {
          a3.n128_u32[0] = *(v13 + v76);
          v77 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(a3, xmmword_1003E3760), 0x18uLL));
          v78 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v77.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v77, v77, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(v78, v16), 0), v18);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v12 + v76) = a3.n128_u32[0];
          v76 += 4;
          v75 += 4;
        }

        while (v75);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }
      }

LABEL_3:
      v13 += a2;
      v12 += a7;
      ++v14;
      v11 = v90 - 1;
    }

    while (v90 != 1);
  }

  return result;
}

uint64_t sub_1002124EC(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v94 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v89 = result + 2 * v15;
    v90 = result + 8;
    v91 = 2 * (a2 >> 1);
    v18 = a6;
    v95 = *v10.i32;
    v96 = *v9.i32;
    v92 = vdupq_lane_s32(v10, 0);
    v93 = vdupq_lane_s32(v9, 0);
    do
    {
      v19 = a6 + v14 * a7;
      v20 = v94 * v14;
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100226204(a3, *v16.i8, v98, v13, v18, v15);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v95;
      *v9.i32 = v96;
      if (result > v17)
      {
        goto LABEL_27;
      }

      v22 = result;
      v23 = v17 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v19 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v18 + result < v90 + v20 + 8 * v24 + v26 * 2) ? (v27 = v13 + 2 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = &v13->i16[v26];
          v100 = vld4q_s16(v30);
          v30 += 32;
          v101 = vld4q_s16(v30);
          v31 = vcvtq_f32_u32(vmovl_u16(*v101.val[1].i8));
          v32 = vcvtq_f32_u32(vmovl_u16(*v100.val[2].i8));
          v33 = vcvtq_f32_u32(vmovl_high_u16(v100.val[2]));
          v34 = vcvtq_f32_u32(vmovl_high_u16(v101.val[1]));
          v35 = vcvtq_f32_u32(vmovl_u16(*v101.val[2].i8));
          v36 = vcvtq_f32_u32(vmovl_u16(*v100.val[3].i8));
          v37 = vcvtq_f32_u32(vmovl_high_u16(v101.val[2]));
          v38 = vcvtq_f32_u32(vmovl_high_u16(v100.val[3]));
          v39 = (v18 + v22);
          v40 = vcvtq_f32_u32(vmovl_u16(*v101.val[3].i8));
          v101.val[1] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v100.val[0])));
          v100.val[3] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_u16(*v100.val[0].i8)));
          v41 = vcvtq_f32_u32(vmovl_high_u16(v101.val[3]));
          v42 = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v100.val[1])));
          v100.val[0] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v101.val[0])));
          v101.val[2] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_u16(*v100.val[1].i8)));
          v101.val[0] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_u16(*v101.val[0].i8)));
          v43 = vmlaq_f32(v92, v93, v34);
          v101.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
          v44 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
          v100.val[2] = vmlaq_f32(v92, v93, v31);
          v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[1].i8)));
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[1], v101.val[1], 8uLL))));
          v101.val[1] = vcvtq_f64_f32(vrndx_f32(*v101.val[0].i8));
          v47 = vcvtq_f64_f32(vrndx_f32(*v100.val[0].i8));
          v48 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[0], v101.val[0], 8uLL)));
          v101.val[3] = vmaxq_s32(vuzp1q_s32(v101.val[3], v44), 0);
          v101.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(v45, v46), 0), v21);
          v49 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[0], v100.val[0], 8uLL)));
          v100.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[3], v100.val[3], 8uLL))))), 0), v21), v101.val[0]);
          v101.val[0] = vmlaq_f32(v92, v93, v37);
          v50 = vmlaq_f32(v92, v93, v35);
          v51 = vmlaq_f32(v92, v93, v33);
          v52 = vmlaq_f32(v92, v93, v32);
          v53 = vmlaq_f32(v92, v93, v41);
          v54 = vmlaq_f32(v92, v93, v40);
          v55 = vmlaq_f32(v92, v93, v38);
          v56 = vmlaq_f32(v92, v93, v36);
          v57 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[2], v100.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v21));
          v100.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v101.val[1]), vcvtq_s64_f64(v48)), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v47), vcvtq_s64_f64(v49)), 0), v21));
          v100.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[0], v101.val[0], 8uLL))))), 0), v21);
          v101.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[2], v101.val[2], 8uLL))))), 0), v21), vminq_s32(v101.val[3], v21)), v57);
          v101.val[0] = vuzp1q_s8(v100.val[0], v100.val[2]);
          v101.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v21)));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v21));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), 0), v21), v100.val[3]);
          v101.val[2] = vuzp1q_s8(a3, v16);
          vst4q_s8(v39, v101);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v58 = 2 * result + 6;
      do
      {
        a3.n128_u16[0] = *(&v13->u16[-3] + v58);
        *&v59 = rintf(v95 + (a3.n128_u32[0] * v96));
        v60 = *&v59 & ~(*&v59 >> 31);
        v61 = &v13->i8[2 * result];
        LOWORD(v59) = *(v61 + 1);
        a3.n128_f32[0] = rintf(v95 + (v59 * v96));
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        v62 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
        if (v62 >= 255)
        {
          LOBYTE(v62) = -1;
        }

        v63 = (v18 + result);
        *v63 = v60;
        v63[1] = v62;
        a3.n128_u16[0] = *(v61 + 2);
        *&v64 = rintf(v95 + (a3.n128_u32[0] * v96));
        v65 = *&v64 & ~(*&v64 >> 31);
        LOWORD(v64) = *(v13->i16 + v58);
        a3.n128_f32[0] = v64;
        if (v65 >= 255)
        {
          v66 = -1;
        }

        else
        {
          v66 = v65;
        }

        a3.n128_f32[0] = rintf(v95 + (a3.n128_f32[0] * v96));
        v67 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
        if (v67 >= 255)
        {
          LOBYTE(v67) = -1;
        }

        v63[2] = v66;
        v63[3] = v67;
        result += 4;
        v58 += 8;
      }

      while (result <= v17);
LABEL_27:
      if (result < v15)
      {
        v68 = v15 - result;
        if (v68 < 4)
        {
          v69 = result;
          goto LABEL_44;
        }

        if (v18 + result < v89 + v20 && v13 + 2 * result < v19 + v15)
        {
          v69 = result;
          goto LABEL_44;
        }

        if (v68 >= 0x10)
        {
          v70 = v68 & 0xFFFFFFFFFFFFFFF0;
          v71 = 2 * result;
          v72 = result;
          v73 = v68 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v75 = *(v13 + v71);
            v74 = *(&v13[1] + v71);
            v76 = vcvtq_f32_u32(vmovl_u16(*v75.i8));
            v77 = vcvtq_f32_u32(vmovl_u16(*v74.i8));
            v78 = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v74)));
            v79 = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v75)));
            v80 = vmlaq_f32(v92, v93, v77);
            v81 = vmlaq_f32(v92, v93, v76);
            v82 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), 0);
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))))), 0);
            v99.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))))), 0), v21);
            v99.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), 0), v21);
            v99.val[2] = vminq_s32(v16, v21);
            v99.val[0] = vminq_s32(v82, v21);
            a3 = vqtbl4q_s8(v99, xmmword_1003E36F0);
            *(v18 + v72) = a3;
            v71 += 32;
            v72 += 16;
            v73 -= 16;
          }

          while (v73);
          if (v68 == v70)
          {
            goto LABEL_3;
          }

          if ((v68 & 0xC) == 0)
          {
            v69 = v70 + result;
            do
            {
LABEL_44:
              a3.n128_u16[0] = v13->u16[v69];
              a3.n128_f32[0] = rintf(v95 + (a3.n128_u32[0] * v96));
              v88 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
              if (v88 >= 255)
              {
                LOBYTE(v88) = -1;
              }

              *(v18 + v69++) = v88;
            }

            while (v15 != v69);
            goto LABEL_3;
          }
        }

        else
        {
          v70 = 0;
        }

        v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v83 = v70 - (v68 & 0xFFFFFFFFFFFFFFFCLL);
        v84 = v70 + result;
        v85 = 2 * v84;
        do
        {
          v86 = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_u16(*&v13->i8[v85])));
          v87 = vcvtq_f64_f32(vrndx_f32(*v86.i8));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v86, v86, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v87), v16), 0), v21);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v18 + v84) = a3.n128_u32[0];
          v85 += 8;
          v84 += 4;
          v83 += 4;
        }

        while (v83);
        if (v68 != (v68 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v13 = (v13 + v91);
      v18 += a7;
      ++v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100212D40(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v94 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v89 = result + 2 * v15;
    v90 = result + 8;
    v91 = 2 * (a2 >> 1);
    v18 = a6;
    v95 = *v10.i32;
    v96 = *v9.i32;
    v92 = vdupq_lane_s32(v10, 0);
    v93 = vdupq_lane_s32(v9, 0);
    do
    {
      v19 = a6 + v14 * a7;
      v20 = v94 * v14;
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100226430(a3, *v16.i8, v98, v13, v18, v15);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v95;
      *v9.i32 = v96;
      if (result > v17)
      {
        goto LABEL_27;
      }

      v22 = result;
      v23 = v17 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v19 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v18 + result < v90 + v20 + 8 * v24 + v26 * 2) ? (v27 = v13 + 2 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = &v13->i16[v26];
          v100 = vld4q_s16(v30);
          v30 += 32;
          v101 = vld4q_s16(v30);
          v31 = vcvtq_f32_s32(vmovl_s16(*v101.val[1].i8));
          v32 = vcvtq_f32_s32(vmovl_s16(*v100.val[2].i8));
          v33 = vcvtq_f32_s32(vmovl_high_s16(v100.val[2]));
          v34 = vcvtq_f32_s32(vmovl_high_s16(v101.val[1]));
          v35 = vcvtq_f32_s32(vmovl_s16(*v101.val[2].i8));
          v36 = vcvtq_f32_s32(vmovl_s16(*v100.val[3].i8));
          v37 = vcvtq_f32_s32(vmovl_high_s16(v101.val[2]));
          v38 = vcvtq_f32_s32(vmovl_high_s16(v100.val[3]));
          v39 = (v18 + v22);
          v40 = vcvtq_f32_s32(vmovl_s16(*v101.val[3].i8));
          v101.val[1] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v100.val[0])));
          v100.val[3] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_s16(*v100.val[0].i8)));
          v41 = vcvtq_f32_s32(vmovl_high_s16(v101.val[3]));
          v42 = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v100.val[1])));
          v100.val[0] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v101.val[0])));
          v101.val[2] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_s16(*v100.val[1].i8)));
          v101.val[0] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_s16(*v101.val[0].i8)));
          v43 = vmlaq_f32(v92, v93, v34);
          v101.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
          v44 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
          v100.val[2] = vmlaq_f32(v92, v93, v31);
          v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[1].i8)));
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[1], v101.val[1], 8uLL))));
          v101.val[1] = vcvtq_f64_f32(vrndx_f32(*v101.val[0].i8));
          v47 = vcvtq_f64_f32(vrndx_f32(*v100.val[0].i8));
          v48 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[0], v101.val[0], 8uLL)));
          v101.val[3] = vmaxq_s32(vuzp1q_s32(v101.val[3], v44), 0);
          v101.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(v45, v46), 0), v21);
          v49 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[0], v100.val[0], 8uLL)));
          v100.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[3], v100.val[3], 8uLL))))), 0), v21), v101.val[0]);
          v101.val[0] = vmlaq_f32(v92, v93, v37);
          v50 = vmlaq_f32(v92, v93, v35);
          v51 = vmlaq_f32(v92, v93, v33);
          v52 = vmlaq_f32(v92, v93, v32);
          v53 = vmlaq_f32(v92, v93, v41);
          v54 = vmlaq_f32(v92, v93, v40);
          v55 = vmlaq_f32(v92, v93, v38);
          v56 = vmlaq_f32(v92, v93, v36);
          v57 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[2], v100.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v21));
          v100.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v101.val[1]), vcvtq_s64_f64(v48)), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v47), vcvtq_s64_f64(v49)), 0), v21));
          v100.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[0], v101.val[0], 8uLL))))), 0), v21);
          v101.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[2], v101.val[2], 8uLL))))), 0), v21), vminq_s32(v101.val[3], v21)), v57);
          v101.val[0] = vuzp1q_s8(v100.val[0], v100.val[2]);
          v101.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v21)));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v21));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), 0), v21), v100.val[3]);
          v101.val[2] = vuzp1q_s8(a3, v16);
          vst4q_s8(v39, v101);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v58 = 2 * result + 6;
      do
      {
        a3.n128_u16[0] = *(&v13->u16[-3] + v58);
        v59 = vmovl_s16(a3.n128_u64[0]).u64[0];
        *v59.i32 = rintf(v95 + (v59.i32[0] * v96));
        v60 = *v59.i32 & ~(*v59.i32 >> 31);
        v61 = &v13->i8[2 * result];
        v59.i16[0] = *(v61 + 1);
        a3.n128_u64[0] = vmovl_s16(v59).u64[0];
        a3.n128_f32[0] = rintf(v95 + (a3.n128_i32[0] * v96));
        v62 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        if (v62 >= 255)
        {
          LOBYTE(v62) = -1;
        }

        v63 = (v18 + result);
        *v63 = v60;
        v63[1] = v62;
        a3.n128_u16[0] = *(v61 + 2);
        v64 = vmovl_s16(a3.n128_u64[0]).u64[0];
        *v64.i32 = rintf(v95 + (v64.i32[0] * v96));
        v65 = *v64.i32 & ~(*v64.i32 >> 31);
        v64.i16[0] = *(v13->i16 + v58);
        a3 = vmovl_s16(v64);
        a3.n128_f32[0] = a3.n128_i32[0];
        if (v65 >= 255)
        {
          v66 = -1;
        }

        else
        {
          v66 = v65;
        }

        a3.n128_f32[0] = rintf(v95 + (a3.n128_f32[0] * v96));
        v67 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
        if (v67 >= 255)
        {
          LOBYTE(v67) = -1;
        }

        v63[2] = v66;
        v63[3] = v67;
        result += 4;
        v58 += 8;
      }

      while (result <= v17);
LABEL_27:
      if (result < v15)
      {
        v68 = v15 - result;
        if (v68 < 4)
        {
          v69 = result;
          goto LABEL_44;
        }

        if (v18 + result < v89 + v20 && v13 + 2 * result < v19 + v15)
        {
          v69 = result;
          goto LABEL_44;
        }

        if (v68 >= 0x10)
        {
          v70 = v68 & 0xFFFFFFFFFFFFFFF0;
          v71 = 2 * result;
          v72 = result;
          v73 = v68 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v75 = *(v13 + v71);
            v74 = *(&v13[1] + v71);
            v76 = vcvtq_f32_s32(vmovl_s16(*v75.i8));
            v77 = vcvtq_f32_s32(vmovl_s16(*v74.i8));
            v78 = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v74)));
            v79 = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v75)));
            v80 = vmlaq_f32(v92, v93, v77);
            v81 = vmlaq_f32(v92, v93, v76);
            v82 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), 0);
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))))), 0);
            v99.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))))), 0), v21);
            v99.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), 0), v21);
            v99.val[2] = vminq_s32(v16, v21);
            v99.val[0] = vminq_s32(v82, v21);
            a3 = vqtbl4q_s8(v99, xmmword_1003E36F0);
            *(v18 + v72) = a3;
            v71 += 32;
            v72 += 16;
            v73 -= 16;
          }

          while (v73);
          if (v68 == v70)
          {
            goto LABEL_3;
          }

          if ((v68 & 0xC) == 0)
          {
            v69 = v70 + result;
            do
            {
LABEL_44:
              a3.n128_u16[0] = v13->u16[v69];
              a3 = vmovl_s16(a3.n128_u64[0]);
              a3.n128_f32[0] = rintf(v95 + (a3.n128_i32[0] * v96));
              v88 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
              if (v88 >= 255)
              {
                LOBYTE(v88) = -1;
              }

              *(v18 + v69++) = v88;
            }

            while (v15 != v69);
            goto LABEL_3;
          }
        }

        else
        {
          v70 = 0;
        }

        v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v83 = v70 - (v68 & 0xFFFFFFFFFFFFFFFCLL);
        v84 = v70 + result;
        v85 = 2 * v84;
        do
        {
          v86 = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_s16(*&v13->i8[v85])));
          v87 = vcvtq_f64_f32(vrndx_f32(*v86.i8));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v86, v86, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v87), v16), 0), v21);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v18 + v84) = a3.n128_u32[0];
          v85 += 8;
          v84 += 4;
          v83 += 4;
        }

        while (v83);
        if (v68 != (v68 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v13 = (v13 + v91);
      v18 += a7;
      ++v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1002135A8(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v80 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v75 = result + 4 * v15;
    v76 = result + 16;
    v77 = 4 * (a2 >> 2);
    v18 = a6;
    v81 = *v10.i32;
    v82 = *v9.i32;
    v78 = vdupq_lane_s32(v10, 0);
    v79 = vdupq_lane_s32(v9, 0);
    do
    {
      v19 = a6 + v14 * a7;
      v20 = v80 * v14;
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_10022665C(a3, *v16.i8, v84, v13, v18, v15);
      v21 = 0uLL;
      *v10.i32 = v81;
      *v9.i32 = v82;
      if (result > v17)
      {
        goto LABEL_27;
      }

      v22 = result;
      v23 = v17 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v19 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v18 + result < v76 + v20 + 16 * v24 + v26 * 4) ? (v27 = v13 + 4 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        v30.i64[0] = 0xFF000000FFLL;
        v30.i64[1] = 0xFF000000FFLL;
        do
        {
          v31 = &v13->i32[v26];
          v32 = &v13[8].i32[v26];
          v33 = &v13[12].i32[v26];
          v85 = vld4q_f32(v31);
          v31 += 16;
          v87 = vld4q_f32(v32);
          v88 = vld4q_f32(v33);
          v89 = vld4q_f32(v31);
          v34 = vcvtq_f32_s32(v87.val[0]);
          v35 = vcvtq_f32_s32(v85.val[0]);
          v36 = vcvtq_f32_s32(v85.val[1]);
          v37 = vcvtq_f32_s32(v89.val[0]);
          v38 = vcvtq_f32_s32(v87.val[2]);
          v39 = vcvtq_f32_s32(v88.val[2]);
          v40 = vcvtq_f32_s32(v85.val[2]);
          v85.val[1] = vcvtq_f32_s32(v85.val[3]);
          v85.val[2] = vcvtq_f32_s32(v88.val[3]);
          v85.val[3] = vcvtq_f32_s32(v87.val[3]);
          v41 = (v18 + v22);
          v85.val[0] = vcvtq_f32_s32(v89.val[2]);
          v87.val[0] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v87.val[1]));
          v87.val[2] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v88.val[1]));
          v88.val[2] = vmlaq_f32(v78, v79, v36);
          v88.val[3] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v89.val[1]));
          v89.val[0] = vmlaq_f32(v78, v79, v35);
          v89.val[1] = vmlaq_f32(v78, v79, v37);
          v88.val[1] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v88.val[0]));
          v87.val[3] = vmlaq_f32(v78, v79, v34);
          v21 = 0uLL;
          v42 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87.val[2], v87.val[2], 8uLL)))));
          v88.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88.val[1], v88.val[1], 8uLL)))));
          v87.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v89.val[1].f32)));
          v88.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87.val[3], v87.val[3], 8uLL))))), 0);
          v89.val[2] = vmaxq_s32(v88.val[0], 0);
          v87.val[3] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88.val[2], v88.val[2], 8uLL))))), 0);
          v88.val[2] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v89.val[1], v89.val[1], 8uLL)));
          v89.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87.val[0], v87.val[0], 8uLL))))), 0);
          v87.val[0] = vminq_s32(v87.val[3], v30);
          v88.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.val[3].i8)));
          v87.val[3] = vmlaq_f32(v78, v79, v85.val[3]);
          v85.val[3] = vmlaq_f32(v78, v79, v85.val[2]);
          v85.val[2] = vmlaq_f32(v78, v79, v85.val[1]);
          v85.val[1] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88.val[3], v88.val[3], 8uLL)));
          v88.val[3] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v89.val[3]));
          v43 = vmlaq_f32(v78, v79, v40);
          v89.val[3] = vmlaq_f32(v78, v79, v85.val[0]);
          v85.val[0] = vmlaq_f32(v78, v79, v39);
          v44 = vmlaq_f32(v78, v79, v38);
          v87.val[0] = vuzp1q_s16(v87.val[0], vminq_s32(vmaxq_s32(vuzp1q_s32(v88.val[0], vcvtq_s64_f64(v85.val[1])), 0), v30));
          v88.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v89.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v89.val[0], v89.val[0], 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(v87.val[2], vcvtq_s64_f64(v88.val[2])), 0), v30)), vuzp1q_s16(vminq_s32(v88.val[1], v30), vminq_s32(v89.val[2], v30)));
          v88.val[1] = vuzp1q_s8(v87.val[0], vuzp1q_s16(vminq_s32(v89.val[1], v30), vminq_s32(vmaxq_s32(v42, 0), v30)));
          v88.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v89.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v89.val[3], v89.val[3], 8uLL))))), 0), v30)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[0], v85.val[0], 8uLL))))), 0), v30)));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[2], v85.val[2], 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88.val[3], v88.val[3], 8uLL))))), 0), v30));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87.val[3], v87.val[3], 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[3], v85.val[3], 8uLL))))), 0), v30));
          v88.val[3] = vuzp1q_s8(a3, v16);
          vst4q_s8(v41, v88);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v45 = 4 * result + 12;
      do
      {
        v46 = rintf(v81 + (*(&v13->i32[-3] + v45) * v82));
        v47 = v46 & ~(v46 >> 31);
        v48 = &v13->i32[result];
        v49 = rintf(v81 + (v48[1] * v82));
        if (v47 >= 255)
        {
          LOBYTE(v47) = -1;
        }

        v50 = v49 & ~(v49 >> 31);
        if (v50 >= 255)
        {
          LOBYTE(v50) = -1;
        }

        v51 = (v18 + result);
        *v51 = v47;
        v51[1] = v50;
        v52 = rintf(v81 + (v48[2] * v82));
        if ((v52 & ~(v52 >> 31)) >= 255)
        {
          v53 = -1;
        }

        else
        {
          v53 = v52 & ~(v52 >> 31);
        }

        v54 = rintf(v81 + (*(v13->i32 + v45) * v82));
        v55 = v54 & ~(v54 >> 31);
        if (v55 >= 255)
        {
          LOBYTE(v55) = -1;
        }

        v51[2] = v53;
        v51[3] = v55;
        result += 4;
        v45 += 16;
      }

      while (result <= v17);
LABEL_27:
      v56.i64[0] = 0xFF000000FFLL;
      v56.i64[1] = 0xFF000000FFLL;
      if (result < v15)
      {
        v57 = v15 - result;
        if (v57 < 4)
        {
          v58 = result;
          goto LABEL_44;
        }

        if (v18 + result < v75 + v20 && v13 + 4 * result < v19 + v15)
        {
          v58 = result;
          goto LABEL_44;
        }

        if (v57 >= 0x10)
        {
          v59 = v57 & 0xFFFFFFFFFFFFFFF0;
          v60 = 4 * result;
          v61 = result;
          v62 = v57 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v63 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(&v13[3] + v60)));
            v64 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(&v13[2] + v60)));
            v65 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(&v13[1] + v60)));
            v66 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(v13 + v60)));
            v67 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v66.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v66, v66, 8uLL))))), v21);
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v65.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v65, v65, 8uLL))))), v21);
            v86.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), v21), v56);
            v86.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))))), v21), v56);
            v86.val[1] = vminq_s32(v16, v56);
            v86.val[0] = vminq_s32(v67, v56);
            a3 = vqtbl4q_s8(v86, xmmword_1003E36F0);
            *(v18 + v61) = a3;
            v60 += 64;
            v61 += 16;
            v62 -= 16;
          }

          while (v62);
          if (v57 == v59)
          {
            goto LABEL_3;
          }

          if ((v57 & 0xC) == 0)
          {
            v58 = v59 + result;
            do
            {
LABEL_44:
              v73 = rintf(v81 + (v13->i32[v58] * v82));
              v74 = v73 & ~(v73 >> 31);
              if (v74 >= 255)
              {
                LOBYTE(v74) = -1;
              }

              *(v18 + v58++) = v74;
            }

            while (v15 != v58);
            goto LABEL_3;
          }
        }

        else
        {
          v59 = 0;
        }

        v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v68 = v59 - (v57 & 0xFFFFFFFFFFFFFFFCLL);
        v69 = v59 + result;
        v70 = 4 * v69;
        do
        {
          v71 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(v13 + v70)));
          v72 = vcvtq_f64_f32(vrndx_f32(*v71.i8));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v72), v16), v21), v56);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v18 + v69) = a3.n128_u32[0];
          v70 += 16;
          v69 += 4;
          v68 += 4;
        }

        while (v68);
        if (v57 != (v57 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v13 = (v13 + v77);
      v18 += a7;
      ++v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100213DC4(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v80 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v75 = result + 4 * v15;
    v76 = result + 16;
    v77 = 4 * (a2 >> 2);
    v18 = a6;
    v81 = *v10.i32;
    v82 = *v9.i32;
    v78 = vdupq_lane_s32(v10, 0);
    v79 = vdupq_lane_s32(v9, 0);
    do
    {
      v19 = a6 + v14 * a7;
      v20 = v80 * v14;
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_1002268A4(a3, *v16.i8, &v84, v13, v18, v15);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v81;
      *v9.i32 = v82;
      if (result > v17)
      {
        goto LABEL_27;
      }

      v22 = result;
      v23 = v17 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v19 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = 4 * result, v18 + result < v76 + v20 + 16 * v24 + v26) ? (v27 = v13->u64 + 4 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = vmlaq_f32(v78, v79, *(v13 + v26 + 32));
          v31 = vmlaq_f32(v78, v79, *(v13 + v26 + 48));
          v32 = vmlaq_f32(v78, v79, *(v13 + v26 + 16));
          v33 = vmlaq_f32(v78, v79, *(v13 + v26));
          v34 = vmlaq_f32(v78, v79, *(v13 + v26 + 96));
          v35 = vmlaq_f32(v78, v79, *(v13 + v26 + 112));
          v36 = vmlaq_f32(v78, v79, *(v13 + v26 + 64));
          v37 = vmlaq_f32(v78, v79, *(v13 + v26 + 80));
          v38 = vmlaq_f32(v78, v79, *(v13 + v26 + 160));
          v39 = vmlaq_f32(v78, v79, *(v13 + v26 + 176));
          v40 = vmlaq_f32(v78, v79, *(v13 + v26 + 128));
          v41 = vmlaq_f32(v78, v79, *(v13 + v26 + 144));
          v42 = vmlaq_f32(v78, v79, *(v13 + v26 + 224));
          v43 = vmlaq_f32(v78, v79, *(v13 + v26 + 240));
          v44 = vmlaq_f32(v78, v79, *(v13 + v26 + 192));
          v45 = vmlaq_f32(v78, v79, *(v13 + v26 + 208));
          a3 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v21)));
          v46 = v18 + v22;
          *v46 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), 0), v21)));
          *(v46 + 16) = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), 0), v21)));
          v16 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21)));
          *(v46 + 32) = v16;
          *(v46 + 48) = a3;
          v22 += 64;
          v26 += 256;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v47 = 4 * result + 12;
      do
      {
        v48 = rintf(v81 + (*(&v13->f32[-3] + v47) * v82));
        v49 = v48 & ~(v48 >> 31);
        v50 = &v13->f32[result];
        if (v49 >= 255)
        {
          LOBYTE(v49) = -1;
        }

        v51 = rintf(v81 + (v50[1] * v82));
        v52 = v51 & ~(v51 >> 31);
        if (v52 >= 255)
        {
          LOBYTE(v52) = -1;
        }

        v53 = (v18 + result);
        *v53 = v49;
        v53[1] = v52;
        v54 = rintf(v81 + (v50[2] * v82));
        if ((v54 & ~(v54 >> 31)) >= 255)
        {
          v55 = -1;
        }

        else
        {
          v55 = v54 & ~(v54 >> 31);
        }

        v56 = rintf(v81 + (*(v13->f32 + v47) * v82));
        v57 = v56 & ~(v56 >> 31);
        if (v57 >= 255)
        {
          LOBYTE(v57) = -1;
        }

        v53[2] = v55;
        v53[3] = v57;
        result += 4;
        v47 += 16;
      }

      while (result <= v17);
LABEL_27:
      if (result < v15)
      {
        v58 = v15 - result;
        if (v58 < 4)
        {
          v59 = result;
          goto LABEL_44;
        }

        if (v18 + result < v75 + v20 && v13->u64 + 4 * result < v19 + v15)
        {
          v59 = result;
          goto LABEL_44;
        }

        if (v58 >= 0x10)
        {
          v60 = v58 & 0xFFFFFFFFFFFFFFF0;
          v61 = 4 * result;
          v62 = result;
          v63 = v58 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v64 = vmlaq_f32(v78, v79, *(v13 + v61 + 32));
            v65 = vmlaq_f32(v78, v79, *(v13 + v61 + 16));
            v66 = vmlaq_f32(v78, v79, *(v13 + v61));
            v67 = vmlaq_f32(v78, v79, *(v13 + v61 + 48));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v66.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v66, v66, 8uLL))))), 0);
            v85.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))))), 0), v21);
            v85.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v65.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v65, v65, 8uLL))))), 0), v21);
            v85.val[0] = vminq_s32(v16, v21);
            v85.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v67.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v67, v67, 8uLL))))), 0), v21);
            a3 = vqtbl4q_s8(v85, xmmword_1003E36F0);
            *(v18 + v62) = a3;
            v61 += 64;
            v62 += 16;
            v63 -= 16;
          }

          while (v63);
          if (v58 == v60)
          {
            goto LABEL_3;
          }

          if ((v58 & 0xC) == 0)
          {
            v59 = v60 + result;
            do
            {
LABEL_44:
              v73 = rintf(v81 + (v13->f32[v59] * v82));
              v74 = v73 & ~(v73 >> 31);
              if (v74 >= 255)
              {
                LOBYTE(v74) = -1;
              }

              *(v18 + v59++) = v74;
            }

            while (v15 != v59);
            goto LABEL_3;
          }
        }

        else
        {
          v60 = 0;
        }

        v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v68 = v60 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
        v69 = v60 + result;
        v70 = 4 * v69;
        do
        {
          v71 = vmlaq_f32(v78, v79, *(v13 + v70));
          v72 = vcvtq_f64_f32(vrndx_f32(*v71.i8));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v72), v16), 0), v21);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v18 + v69) = a3.n128_u32[0];
          v70 += 16;
          v69 += 4;
          v68 += 4;
        }

        while (v68);
        if (v58 != (v58 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v13 = (v13 + v77);
      v18 += a7;
      ++v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021455C(uint64_t result, unint64_t a2, double a3, double a4, float64x2_t a5, int16x8_t a6, __n128 a7, int32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int *a13, double *a14)
{
  v14 = a13[1];
  if (v14)
  {
    v16 = result;
    v17 = 0;
    v18 = *a13;
    v19 = *a14;
    v20 = a14[1];
    v21 = v18 - 4;
    v67 = result + 8 * v18;
    v68 = result + 32;
    v69 = 8 * (a2 >> 3);
    v70 = a2 & 0xFFFFFFFFFFFFFFF8;
    v22 = a11;
    v65 = v20;
    v66 = v19;
    v74 = v20;
    v75 = v19;
    v72 = vdupq_lane_s64(COERCE__INT64(v20), 0);
    v73 = vdupq_lane_s64(COERCE__INT64(v19), 0);
    do
    {
      v23 = a11 + v17 * a12;
      v24 = v70 * v17;
      result = sub_100226AE4(v19, v20, a5.f64[0], *a6.i64, a7.n128_f64[0], a8, v76, v16, v22, v18);
      v26 = v74;
      v25 = v75;
      if (result > v21)
      {
        goto LABEL_27;
      }

      v27 = result;
      v28 = v21 - result;
      if (v28 > 0x3B && ((v29 = v28 >> 2, v30 = v23 + 4 + (v28 & 0xFFFFFFFFFFFFFFFCLL) + result, v31 = 8 * result, v22 + result < v68 + v24 + 32 * v29 + v31) ? (v32 = &v16->f64[result] >= v30) : (v32 = 1), v32))
      {
        v33 = v29 + 1;
        result = result + 4 * (v33 & 0x7FFFFFFFFFFFFFF0);
        v34 = v33 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          a8 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 320)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 336)))));
          v35 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 352)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 368)))));
          v36.i64[0] = 0xFF000000FFLL;
          v36.i64[1] = 0xFF000000FFLL;
          v37 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 384)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 400))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 416)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 432))))), 0), v36)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 448)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 464))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 480)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 496))))), 0), v36)));
          v38 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 256)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 272))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 288)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 304))))), 0), v36));
          a7 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 128)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 144))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 160)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 176))))), 0), v36)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 192)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 208))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 224)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 240))))), 0), v36)));
          a6 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 48))))), 0), v36);
          a5 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 16))))), 0), v36), a6);
          v39 = v22 + v27;
          *v39 = vuzp1q_s8(a5, vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 80))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 112))))), 0), v36)));
          *(v39 + 16) = a7;
          *(v39 + 32) = vuzp1q_s8(v38, vuzp1q_s16(vminq_s32(vmaxq_s32(a8, 0), v36), vminq_s32(vmaxq_s32(v35, 0), v36)));
          *(v39 + 48) = v37;
          v27 += 64;
          v31 += 512;
          v34 -= 16;
        }

        while (v34);
        v20 = v65;
        v19 = v66;
        v26 = v74;
        v25 = v75;
        if (v33 == (v33 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v40 = 8 * result + 24;
      do
      {
        v41 = rint(v26 + *(&v16[-1] + v40 - 8) * v25);
        v42 = v41 & ~(v41 >> 31);
        v43 = &v16->f64[result];
        if (v42 >= 255)
        {
          LOBYTE(v42) = -1;
        }

        v44 = rint(v26 + v43[1] * v25);
        v45 = v44 & ~(v44 >> 31);
        if (v45 >= 255)
        {
          LOBYTE(v45) = -1;
        }

        v46 = (v22 + result);
        *v46 = v42;
        v46[1] = v45;
        v47 = rint(v26 + v43[2] * v25);
        if ((v47 & ~(v47 >> 31)) >= 255)
        {
          v48 = -1;
        }

        else
        {
          v48 = v47 & ~(v47 >> 31);
        }

        v49 = rint(v26 + *(v16->f64 + v40) * v25);
        v50 = v49 & ~(v49 >> 31);
        if (v50 >= 255)
        {
          LOBYTE(v50) = -1;
        }

        v46[2] = v48;
        v46[3] = v50;
        result += 4;
        v40 += 32;
      }

      while (result <= v21);
LABEL_27:
      v51.i64[0] = 0xFF000000FFLL;
      v51.i64[1] = 0xFF000000FFLL;
      if (result < v18)
      {
        v52 = v18 - result;
        if (v52 < 4)
        {
          v53 = result;
          goto LABEL_44;
        }

        if (v22 + result < v67 + v24 && &v16->f64[result] < v23 + v18)
        {
          v53 = result;
          goto LABEL_44;
        }

        if (v52 >= 0x10)
        {
          v54 = v52 & 0xFFFFFFFFFFFFFFF0;
          v55 = 8 * result;
          v56 = result;
          v57 = v52 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            a5 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 48))))), 0);
            a6 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 16))))), 0), v51);
            a7 = vminq_s32(a5, v51);
            a8 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 80))))), 0), v51);
            v58 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 112))))), 0), v51);
            *(v22 + v56) = vqtbl4q_s8(*a6.i8, xmmword_1003E36F0);
            v55 += 128;
            v56 += 16;
            v57 -= 16;
          }

          while (v57);
          if (v52 == v54)
          {
            goto LABEL_3;
          }

          if ((v52 & 0xC) == 0)
          {
            v53 = v54 + result;
            do
            {
LABEL_44:
              v63 = rint(v26 + v16->f64[v53] * v25);
              v64 = v63 & ~(v63 >> 31);
              if (v64 >= 255)
              {
                LOBYTE(v64) = -1;
              }

              *(v22 + v53++) = v64;
            }

            while (v18 != v53);
            goto LABEL_3;
          }
        }

        else
        {
          v54 = 0;
        }

        v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v59 = v54 - (v52 & 0xFFFFFFFFFFFFFFFCLL);
        v60 = v54 + result;
        v61 = 8 * v60;
        do
        {
          a5 = vmlaq_f64(v72, v73, *(v16 + v61));
          v62 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(a5)), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v61 + 16))))), 0), v51));
          *(v22 + v60) = vuzp1_s8(v62, v62).u32[0];
          v61 += 32;
          v60 += 4;
          v59 += 4;
        }

        while (v59);
        if (v52 != (v52 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v16 = (v16 + v69);
      v22 += a12;
      ++v17;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_100214D20(uint64_t result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = *a8 - 4;
    v83 = a6 - result;
    v84 = *a8;
    v82 = a7 - a2;
    v80 = result + 4;
    v81 = a6 + 4;
    v87 = *v10.i32;
    v88 = *v9.i32;
    v85 = vdupq_lane_s32(v10, 0);
    v86 = vdupq_lane_s32(v9, 0);
    do
    {
      v91 = v11;
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100226D50(a3, *v16.i8, v92, v13, v12, v15);
      v18.i64[0] = 0x7F0000007FLL;
      v18.i64[1] = 0x7F0000007FLL;
      v19.i64[0] = 0x7F0000007FLL;
      v19.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v87;
      *v9.i32 = v88;
      if (result > v17)
      {
        goto LABEL_34;
      }

      v20 = result;
      v21 = v17 - result;
      if (v21 > 0x3B && ((v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + result, v12 + result < v80 + v14 * a2 + v22) ? (v23 = v13 + result >= v81 + v14 * a7 + v22) : (v23 = 1), v23))
      {
        v24 = (v21 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF0);
        v25 = v24 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v26 = (v13 + v20);
          v94 = vld4q_s8(v26);
          v27 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3700));
          v28 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3710));
          v29 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3720));
          v30 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3730));
          v31 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3720));
          v32 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3730));
          v33 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3710));
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3700));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3700));
          v36 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3710));
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3720));
          v38 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3730));
          v94.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3720));
          v94.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3730));
          v39 = (v12 + v20);
          v40 = vmlaq_f32(v85, v86, v34);
          v41 = vmlaq_f32(v85, v86, v33);
          v42 = vmlaq_f32(v85, v86, v32);
          v43 = vmlaq_f32(v85, v86, v31);
          v44 = vmlaq_f32(v85, v86, v30);
          v45 = vmlaq_f32(v85, v86, v29);
          v46 = vmlaq_f32(v85, v86, v28);
          v47 = vmlaq_f32(v85, v86, v27);
          v48 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))));
          v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL)))));
          v50 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), v19);
          v51 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), v19);
          v52 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3700)));
          v94.val[3] = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3710)));
          v94.val[2] = vmlaq_f32(v85, v86, v94.val[1]);
          v53 = vmlaq_f32(v85, v86, v94.val[0]);
          v54 = vmlaq_f32(v85, v86, v38);
          v94.val[1] = vmlaq_f32(v85, v86, v37);
          v55 = vmlaq_f32(v85, v86, v36);
          v56 = vmlaq_f32(v85, v86, v35);
          v95.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(v51, v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL))))), v19), v18), vminq_s32(v50, v18)));
          v57 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), v19), v18);
          v95.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(v48, v19), v18), vminq_s32(vmaxq_s32(v49, v19), v18)));
          v95.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[1], v94.val[1], 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), v19), v18)));
          a3 = vuzp1q_s16(v57, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[2], v94.val[2], 8uLL))))), v19), v18));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[3], v94.val[3], 8uLL))))), v19), v18));
          v95.val[3] = vuzp1q_s8(a3, v16);
          vst4q_s8(v39, v95);
          v20 += 64;
          v25 -= 16;
        }

        while (v25);
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = result;
      }

      do
      {
        v58 = (v13 + result);
        a3.n128_u8[0] = *(v13 + result);
        a3.n128_f32[0] = rintf(v87 + (a3.n128_u32[0] * v88));
        v59 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v59) = -128;
        }

        if (v59 >= 127)
        {
          LOBYTE(v59) = 127;
        }

        a3.n128_u8[0] = v58[1];
        a3.n128_f32[0] = rintf(v87 + (a3.n128_u32[0] * v88));
        v60 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v60) = -128;
        }

        if (v60 >= 127)
        {
          LOBYTE(v60) = 127;
        }

        v61 = (v12 + result);
        *v61 = v59;
        v61[1] = v60;
        a3.n128_u8[0] = v58[2];
        a3.n128_f32[0] = rintf(v87 + (a3.n128_u32[0] * v88));
        v62 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v62) = -128;
        }

        a3.n128_u8[0] = v58[3];
        a3.n128_f32[0] = a3.n128_u32[0];
        if (v62 >= 127)
        {
          v63 = 127;
        }

        else
        {
          v63 = v62;
        }

        a3.n128_f32[0] = rintf(v87 + (a3.n128_f32[0] * v88));
        v64 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v64) = -128;
        }

        if (v64 >= 127)
        {
          LOBYTE(v64) = 127;
        }

        v61[2] = v63;
        v61[3] = v64;
        result += 4;
      }

      while (result <= v17);
LABEL_34:
      v15 = v84;
      if (result < v84)
      {
        v65 = v84 - result;
        if (v65 < 4)
        {
          v67 = result;
          goto LABEL_50;
        }

        if ((v83 + v82 * v14) < 0x10)
        {
          v67 = result;
          goto LABEL_50;
        }

        if (v65 >= 0x10)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFF0;
          v68 = result;
          v69 = v65 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v70 = *(v13 + v68);
            v71 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3710)));
            v72 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3700)));
            v73 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3730)));
            v74 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3720)));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))), v19);
            v93.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))))), v19), v18);
            v93.val[2] = vminq_s32(v16, v18);
            v93.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), v19), v18);
            v93.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), v19), v18);
            a3 = vqtbl4q_s8(v93, xmmword_1003E36F0);
            *(v12 + v68) = a3;
            v68 += 16;
            v69 -= 16;
          }

          while (v69);
          if (v65 == v66)
          {
            goto LABEL_3;
          }

          if ((v65 & 0xC) == 0)
          {
            v67 = v66 + result;
            do
            {
LABEL_50:
              a3.n128_u8[0] = *(v13 + v67);
              a3.n128_f32[0] = rintf(v87 + (a3.n128_u32[0] * v88));
              v79 = a3.n128_f32[0];
              if (a3.n128_f32[0] <= -128)
              {
                LODWORD(v79) = -128;
              }

              if (v79 >= 127)
              {
                LOBYTE(v79) = 127;
              }

              *(v12 + v67++) = v79;
            }

            while (v84 != v67);
            goto LABEL_3;
          }
        }

        else
        {
          v66 = 0;
        }

        v67 = (v65 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v75 = v66 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        v76 = v66 + result;
        do
        {
          a3.n128_u32[0] = *(v13 + v76);
          v77 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a3.n128_u64[0]))));
          v78 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v77.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v77, v77, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(v78, v16), v19), v18);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v12 + v76) = a3.n128_u32[0];
          v76 += 4;
          v75 += 4;
        }

        while (v75);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_50;
        }
      }

LABEL_3:
      v13 += a2;
      v12 += a7;
      ++v14;
      v11 = v91 - 1;
    }

    while (v91 != 1);
  }

  return result;
}

uint64_t sub_10021556C(uint64_t result, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = *a8 - 4;
    v85 = a6 - result;
    v86 = *a8;
    v84 = a7 - a2;
    v82 = result + 4;
    v83 = a6 + 4;
    v89 = *v10.i32;
    v90 = *v9.i32;
    v87 = vdupq_lane_s32(v10, 0);
    v88 = vdupq_lane_s32(v9, 0);
    do
    {
      v93 = v11;
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100226F7C(a3, *v16.i8, v94, v13, v12, v15);
      v18.i64[0] = 0x7F0000007FLL;
      v18.i64[1] = 0x7F0000007FLL;
      v19.i64[0] = 0x7F0000007FLL;
      v19.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v89;
      *v9.i32 = v90;
      if (result > v17)
      {
        goto LABEL_35;
      }

      v20 = result;
      v21 = v17 - result;
      if (v21 > 0x3B && ((v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + result, v12 + result < v82 + v14 * a2 + v22) ? (v23 = v13 + result >= v83 + v14 * a7 + v22) : (v23 = 1), v23))
      {
        v24 = (v21 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF0);
        v25 = v24 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v26 = (v13 + v20);
          v96 = vld4q_s8(v26);
          v27 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[0], xmmword_1003E3740), 0x18uLL);
          v28 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[0], xmmword_1003E3750), 0x18uLL);
          v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[0], xmmword_1003E3760), 0x18uLL);
          v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[0], xmmword_1003E3770), 0x18uLL);
          v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[1], xmmword_1003E3760), 0x18uLL);
          v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[1], xmmword_1003E3770), 0x18uLL);
          v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[1], xmmword_1003E3750), 0x18uLL);
          v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[1], xmmword_1003E3740), 0x18uLL);
          v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[2], xmmword_1003E3740), 0x18uLL);
          v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[2], xmmword_1003E3750), 0x18uLL);
          v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[2], xmmword_1003E3760), 0x18uLL);
          v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[2], xmmword_1003E3770), 0x18uLL);
          v96.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[3], xmmword_1003E3760), 0x18uLL);
          v96.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[3], xmmword_1003E3770), 0x18uLL);
          v39 = (v12 + v20);
          v40 = vmlaq_f32(v87, v88, v34);
          v41 = vmlaq_f32(v87, v88, v33);
          v42 = vmlaq_f32(v87, v88, v32);
          v43 = vmlaq_f32(v87, v88, v31);
          v44 = vmlaq_f32(v87, v88, v30);
          v45 = vmlaq_f32(v87, v88, v29);
          v46 = vmlaq_f32(v87, v88, v28);
          v47 = vmlaq_f32(v87, v88, v27);
          v48 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))));
          v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL)))));
          v50 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), v19);
          v51 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), v19);
          v52 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[3], xmmword_1003E3740), 0x18uLL));
          v96.val[3] = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[3], xmmword_1003E3750), 0x18uLL));
          v96.val[2] = vmlaq_f32(v87, v88, v96.val[1]);
          v53 = vmlaq_f32(v87, v88, v96.val[0]);
          v54 = vmlaq_f32(v87, v88, v38);
          v96.val[1] = vmlaq_f32(v87, v88, v37);
          v55 = vmlaq_f32(v87, v88, v36);
          v56 = vmlaq_f32(v87, v88, v35);
          v97.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(v51, v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL))))), v19), v18), vminq_s32(v50, v18)));
          v57 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), v19), v18);
          v97.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(v48, v19), v18), vminq_s32(vmaxq_s32(v49, v19), v18)));
          v97.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v96.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v96.val[1], v96.val[1], 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), v19), v18)));
          a3 = vuzp1q_s16(v57, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v96.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v96.val[2], v96.val[2], 8uLL))))), v19), v18));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v96.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v96.val[3], v96.val[3], 8uLL))))), v19), v18));
          v97.val[3] = vuzp1q_s8(a3, v16);
          vst4q_s8(v39, v97);
          v20 += 64;
          v25 -= 16;
        }

        while (v25);
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      do
      {
        v58 = v13 + result;
        a3.n128_u8[0] = *(v13 + result);
        v59 = vmovl_s16(*&vmovl_s8(a3.n128_u64[0])).u64[0];
        *v59.i32 = rintf(v89 + (v59.i32[0] * v90));
        v60 = *v59.i32;
        v61 = *v59.i32 <= -128;
        v59.i8[0] = *(v13 + result + 1);
        a3.n128_u64[0] = vmovl_s16(*&vmovl_s8(v59)).u64[0];
        if (v61)
        {
          LODWORD(v60) = -128;
        }

        a3.n128_f32[0] = rintf(v89 + (a3.n128_i32[0] * v90));
        v62 = a3.n128_f32[0];
        if (v60 >= 127)
        {
          LOBYTE(v60) = 127;
        }

        if (v62 <= -128)
        {
          LODWORD(v62) = -128;
        }

        v63 = (v12 + result);
        if (v62 >= 127)
        {
          LOBYTE(v62) = 127;
        }

        *v63 = v60;
        v63[1] = v62;
        a3.n128_u8[0] = *(v58 + 2);
        a3.n128_u64[0] = vmovl_s16(*&vmovl_s8(a3.n128_u64[0])).u64[0];
        a3.n128_f32[0] = rintf(v89 + (a3.n128_i32[0] * v90));
        v64 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v64) = -128;
        }

        a3.n128_u8[0] = *(v58 + 3);
        a3 = vmovl_s16(*&vmovl_s8(a3.n128_u64[0]));
        a3.n128_f32[0] = a3.n128_i32[0];
        if (v64 >= 127)
        {
          v65 = 127;
        }

        else
        {
          v65 = v64;
        }

        a3.n128_f32[0] = rintf(v89 + (a3.n128_f32[0] * v90));
        v66 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v66) = -128;
        }

        if (v66 >= 127)
        {
          LOBYTE(v66) = 127;
        }

        v63[2] = v65;
        v63[3] = v66;
        result += 4;
      }

      while (result <= v17);
LABEL_35:
      v15 = v86;
      if (result < v86)
      {
        v67 = v86 - result;
        if (v67 < 4)
        {
          v69 = result;
          goto LABEL_51;
        }

        if ((v85 + v84 * v14) < 0x10)
        {
          v69 = result;
          goto LABEL_51;
        }

        if (v67 >= 0x10)
        {
          v68 = v67 & 0xFFFFFFFFFFFFFFF0;
          v70 = result;
          v71 = v67 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v72 = *(v13 + v70);
            v73 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v72, xmmword_1003E3750), 0x18uLL));
            v74 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v72, xmmword_1003E3740), 0x18uLL));
            v75 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v72, xmmword_1003E3770), 0x18uLL));
            v76 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v72, xmmword_1003E3760), 0x18uLL));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), v19);
            v95.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), v19), v18);
            v95.val[2] = vminq_s32(v16, v18);
            v95.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))), v19), v18);
            v95.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v76.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v76, v76, 8uLL))))), v19), v18);
            a3 = vqtbl4q_s8(v95, xmmword_1003E36F0);
            *(v12 + v70) = a3;
            v70 += 16;
            v71 -= 16;
          }

          while (v71);
          if (v67 == v68)
          {
            goto LABEL_3;
          }

          if ((v67 & 0xC) == 0)
          {
            v69 = v68 + result;
            do
            {
LABEL_51:
              a3.n128_u8[0] = *(v13 + v69);
              a3 = vmovl_s16(*&vmovl_s8(a3.n128_u64[0]));
              a3.n128_f32[0] = rintf(v89 + (a3.n128_i32[0] * v90));
              v81 = a3.n128_f32[0];
              if (a3.n128_f32[0] <= -128)
              {
                LODWORD(v81) = -128;
              }

              if (v81 >= 127)
              {
                LOBYTE(v81) = 127;
              }

              *(v12 + v69++) = v81;
            }

            while (v86 != v69);
            goto LABEL_3;
          }
        }

        else
        {
          v68 = 0;
        }

        v69 = (v67 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v77 = v68 - (v67 & 0xFFFFFFFFFFFFFFFCLL);
        v78 = v68 + result;
        do
        {
          a3.n128_u32[0] = *(v13 + v78);
          v79 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(a3, xmmword_1003E3760), 0x18uLL));
          v80 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(v80, v16), v19), v18);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v12 + v78) = a3.n128_u32[0];
          v78 += 4;
          v77 += 4;
        }

        while (v77);
        if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_51;
        }
      }

LABEL_3:
      v13 += a2;
      v12 += a7;
      ++v14;
      v11 = v93 - 1;
    }

    while (v93 != 1);
  }

  return result;
}

uint64_t sub_100215DE0(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = result;
    v13 = 0;
    v14 = *a8;
    a3.n128_u64[0] = *a9;
    v15.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v95 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v90 = result + 2 * v14;
    v91 = result + 8;
    v92 = 2 * (a2 >> 1);
    v17 = a6;
    v96 = *v10.i32;
    v97 = *v9.i32;
    v93 = vdupq_lane_s32(v10, 0);
    v94 = vdupq_lane_s32(v9, 0);
    do
    {
      v18 = a7;
      v99 = a6 + v13 * a7;
      v19 = v95 * v13;
      a3.n128_u32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_1002271A8(a3, *v15.i8, v100, v12, v17, v14);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v96;
      *v9.i32 = v97;
      if (result > v16)
      {
        goto LABEL_35;
      }

      v22 = result;
      v23 = v16 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v99 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v17 + result < v91 + v19 + 8 * v24 + v26 * 2) ? (v27 = v12 + 2 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = &v12->i16[v26];
          v102 = vld4q_s16(v30);
          v30 += 32;
          v103 = vld4q_s16(v30);
          v31 = vcvtq_f32_u32(vmovl_u16(*v103.val[1].i8));
          v32 = vcvtq_f32_u32(vmovl_u16(*v102.val[2].i8));
          v33 = vcvtq_f32_u32(vmovl_high_u16(v102.val[2]));
          v34 = vcvtq_f32_u32(vmovl_high_u16(v103.val[1]));
          v35 = vcvtq_f32_u32(vmovl_u16(*v103.val[2].i8));
          v36 = vcvtq_f32_u32(vmovl_u16(*v102.val[3].i8));
          v37 = vcvtq_f32_u32(vmovl_high_u16(v103.val[2]));
          v38 = vcvtq_f32_u32(vmovl_high_u16(v102.val[3]));
          v39 = (v17 + v22);
          v40 = vcvtq_f32_u32(vmovl_u16(*v103.val[3].i8));
          v103.val[1] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v102.val[0])));
          v102.val[3] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_u16(*v102.val[0].i8)));
          v41 = vcvtq_f32_u32(vmovl_high_u16(v103.val[3]));
          v42 = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v102.val[1])));
          v102.val[0] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v103.val[0])));
          v103.val[2] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_u16(*v102.val[1].i8)));
          v103.val[0] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_u16(*v103.val[0].i8)));
          v43 = vmlaq_f32(v93, v94, v34);
          v103.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
          v44 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
          v102.val[2] = vmlaq_f32(v93, v94, v31);
          v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v103.val[1].i8)));
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v103.val[1], v103.val[1], 8uLL))));
          v103.val[1] = vcvtq_f64_f32(vrndx_f32(*v103.val[0].i8));
          v47 = vcvtq_f64_f32(vrndx_f32(*v102.val[0].i8));
          v48 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v103.val[0], v103.val[0], 8uLL)));
          v103.val[3] = vmaxq_s32(vuzp1q_s32(v103.val[3], v44), v21);
          v103.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(v45, v46), v21), v20);
          v49 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v102.val[0], v102.val[0], 8uLL)));
          v102.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v102.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v102.val[3], v102.val[3], 8uLL))))), v21), v20), v103.val[0]);
          v103.val[0] = vmlaq_f32(v93, v94, v37);
          v50 = vmlaq_f32(v93, v94, v35);
          v51 = vmlaq_f32(v93, v94, v33);
          v52 = vmlaq_f32(v93, v94, v32);
          v53 = vmlaq_f32(v93, v94, v41);
          v54 = vmlaq_f32(v93, v94, v40);
          v55 = vmlaq_f32(v93, v94, v38);
          v56 = vmlaq_f32(v93, v94, v36);
          v57 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v102.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v102.val[2], v102.val[2], 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v21), v20));
          v102.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v103.val[1]), vcvtq_s64_f64(v48)), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v47), vcvtq_s64_f64(v49)), v21), v20));
          v102.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v103.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v103.val[0], v103.val[0], 8uLL))))), v21), v20);
          v103.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v103.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v103.val[2], v103.val[2], 8uLL))))), v21), v20), vminq_s32(v103.val[3], v20)), v57);
          v103.val[0] = vuzp1q_s8(v102.val[0], v102.val[2]);
          v103.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), v21), v20)));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), v21), v20));
          v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), v21), v20), v102.val[3]);
          v103.val[2] = vuzp1q_s8(a3, v15);
          vst4q_s8(v39, v103);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v58 = 2 * result + 6;
      do
      {
        a3.n128_u16[0] = *(&v12->u16[-3] + v58);
        a3.n128_f32[0] = rintf(v96 + (a3.n128_u32[0] * v97));
        v59 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v59) = -128;
        }

        v60 = &v12->i8[2 * result];
        a3.n128_u16[0] = *(v60 + 1);
        a3.n128_f32[0] = a3.n128_u32[0];
        if (v59 >= 127)
        {
          LOBYTE(v59) = 127;
        }

        v61 = rintf(v96 + (a3.n128_f32[0] * v97));
        v62 = v61;
        if (v61 <= -128)
        {
          LODWORD(v62) = -128;
        }

        if (v62 >= 127)
        {
          LOBYTE(v62) = 127;
        }

        v63 = (v17 + result);
        *v63 = v59;
        v63[1] = v62;
        LOWORD(v61) = *(v60 + 2);
        v64 = rintf(v96 + (LODWORD(v61) * v97));
        v65 = v64;
        if (v64 <= -128)
        {
          LODWORD(v65) = -128;
        }

        LOWORD(v64) = *(v12->i16 + v58);
        v66 = v96 + (LODWORD(v64) * v97);
        if (v65 >= 127)
        {
          v67 = 127;
        }

        else
        {
          v67 = v65;
        }

        a3.n128_f32[0] = rintf(v66);
        v68 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v68) = -128;
        }

        if (v68 >= 127)
        {
          LOBYTE(v68) = 127;
        }

        v63[2] = v67;
        v63[3] = v68;
        result += 4;
        v58 += 8;
      }

      while (result <= v16);
LABEL_35:
      a7 = v18;
      if (result < v14)
      {
        v69 = v14 - result;
        if (v69 < 4)
        {
          v70 = result;
          goto LABEL_52;
        }

        if (v17 + result < v90 + v19 && v12 + 2 * result < v99 + v14)
        {
          v70 = result;
          goto LABEL_52;
        }

        if (v69 >= 0x10)
        {
          v71 = v69 & 0xFFFFFFFFFFFFFFF0;
          v72 = 2 * result;
          v73 = result;
          v74 = v69 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v76 = *(v12 + v72);
            v75 = *(&v12[1] + v72);
            v77 = vcvtq_f32_u32(vmovl_u16(*v76.i8));
            v78 = vcvtq_f32_u32(vmovl_u16(*v75.i8));
            v79 = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v75)));
            v80 = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v76)));
            v81 = vmlaq_f32(v93, v94, v78);
            v82 = vmlaq_f32(v93, v94, v77);
            v83 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))))), v21);
            v15 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), v21);
            v101.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), v21), v20);
            v101.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))))), v21), v20);
            v101.val[2] = vminq_s32(v15, v20);
            v101.val[0] = vminq_s32(v83, v20);
            a3 = vqtbl4q_s8(v101, xmmword_1003E36F0);
            *(v17 + v73) = a3;
            v72 += 32;
            v73 += 16;
            v74 -= 16;
          }

          while (v74);
          if (v69 == v71)
          {
            goto LABEL_3;
          }

          if ((v69 & 0xC) == 0)
          {
            v70 = v71 + result;
            do
            {
LABEL_52:
              a3.n128_u16[0] = v12->u16[v70];
              a3.n128_f32[0] = rintf(v96 + (a3.n128_u32[0] * v97));
              v89 = a3.n128_f32[0];
              if (a3.n128_f32[0] <= -128)
              {
                LODWORD(v89) = -128;
              }

              if (v89 >= 127)
              {
                LOBYTE(v89) = 127;
              }

              *(v17 + v70++) = v89;
            }

            while (v14 != v70);
            goto LABEL_3;
          }
        }

        else
        {
          v71 = 0;
        }

        v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v84 = v71 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
        v85 = v71 + result;
        v86 = 2 * v85;
        do
        {
          v87 = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_u16(*&v12->i8[v86])));
          v88 = vcvtq_f64_f32(vrndx_f32(*v87.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87, v87, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v88), v15), v21), v20);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v17 + v85) = a3.n128_u32[0];
          v86 += 8;
          v85 += 4;
          v84 += 4;
        }

        while (v84);
        if (v69 != (v69 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v12 = (v12 + v92);
      v17 += v18;
      ++v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021665C(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = result;
    v13 = 0;
    v14 = *a8;
    a3.n128_u64[0] = *a9;
    v15.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v92 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v87 = result + 2 * v14;
    v88 = result + 8;
    v89 = 2 * (a2 >> 1);
    v17 = a6;
    v93 = *v10.i32;
    v94 = *v9.i32;
    v90 = vdupq_lane_s32(v10, 0);
    v91 = vdupq_lane_s32(v9, 0);
    do
    {
      v18 = a7;
      v96 = a6 + v13 * a7;
      v19 = v92 * v13;
      a3.n128_u32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_1002273D4(a3, *v15.i8, v97, v12, v17, v14);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v93;
      *v9.i32 = v94;
      if (result > v16)
      {
        goto LABEL_35;
      }

      v22 = result;
      v23 = v16 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v96 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v17 + result < v88 + v19 + 8 * v24 + v26 * 2) ? (v27 = v12 + 2 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = &v12->i16[v26];
          v99 = vld4q_s16(v30);
          v30 += 32;
          v100 = vld4q_s16(v30);
          v31 = vcvtq_f32_s32(vmovl_s16(*v100.val[1].i8));
          v32 = vcvtq_f32_s32(vmovl_s16(*v99.val[2].i8));
          v33 = vcvtq_f32_s32(vmovl_high_s16(v99.val[2]));
          v34 = vcvtq_f32_s32(vmovl_high_s16(v100.val[1]));
          v35 = vcvtq_f32_s32(vmovl_s16(*v100.val[2].i8));
          v36 = vcvtq_f32_s32(vmovl_s16(*v99.val[3].i8));
          v37 = vcvtq_f32_s32(vmovl_high_s16(v100.val[2]));
          v38 = vcvtq_f32_s32(vmovl_high_s16(v99.val[3]));
          v39 = (v17 + v22);
          v40 = vcvtq_f32_s32(vmovl_s16(*v100.val[3].i8));
          v100.val[1] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v99.val[0])));
          v99.val[3] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_s16(*v99.val[0].i8)));
          v41 = vcvtq_f32_s32(vmovl_high_s16(v100.val[3]));
          v42 = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v99.val[1])));
          v99.val[0] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v100.val[0])));
          v100.val[2] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_s16(*v99.val[1].i8)));
          v100.val[0] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_s16(*v100.val[0].i8)));
          v43 = vmlaq_f32(v90, v91, v34);
          v100.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
          v44 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
          v99.val[2] = vmlaq_f32(v90, v91, v31);
          v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[1].i8)));
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[1], v100.val[1], 8uLL))));
          v100.val[1] = vcvtq_f64_f32(vrndx_f32(*v100.val[0].i8));
          v47 = vcvtq_f64_f32(vrndx_f32(*v99.val[0].i8));
          v48 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[0], v100.val[0], 8uLL)));
          v100.val[3] = vmaxq_s32(vuzp1q_s32(v100.val[3], v44), v21);
          v100.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(v45, v46), v21), v20);
          v49 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v99.val[0], v99.val[0], 8uLL)));
          v99.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v99.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v99.val[3], v99.val[3], 8uLL))))), v21), v20), v100.val[0]);
          v100.val[0] = vmlaq_f32(v90, v91, v37);
          v50 = vmlaq_f32(v90, v91, v35);
          v51 = vmlaq_f32(v90, v91, v33);
          v52 = vmlaq_f32(v90, v91, v32);
          v53 = vmlaq_f32(v90, v91, v41);
          v54 = vmlaq_f32(v90, v91, v40);
          v55 = vmlaq_f32(v90, v91, v38);
          v56 = vmlaq_f32(v90, v91, v36);
          v57 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v99.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v99.val[2], v99.val[2], 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v21), v20));
          v99.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v100.val[1]), vcvtq_s64_f64(v48)), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v47), vcvtq_s64_f64(v49)), v21), v20));
          v99.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[0], v100.val[0], 8uLL))))), v21), v20);
          v100.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[2], v100.val[2], 8uLL))))), v21), v20), vminq_s32(v100.val[3], v20)), v57);
          v100.val[0] = vuzp1q_s8(v99.val[0], v99.val[2]);
          v100.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), v21), v20)));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), v21), v20));
          v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), v21), v20), v99.val[3]);
          v100.val[2] = vuzp1q_s8(a3, v15);
          vst4q_s8(v39, v100);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v58 = 2 * result + 6;
      do
      {
        a3.n128_u16[0] = *(&v12->u16[-3] + v58);
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = rintf(v93 + (a3.n128_i32[0] * v94));
        v59 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v59) = -128;
        }

        v60 = &v12->i8[2 * result];
        a3.n128_u16[0] = *(v60 + 1);
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = rintf(v93 + (a3.n128_i32[0] * v94));
        if (v59 >= 127)
        {
          LOBYTE(v59) = 127;
        }

        v61 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v61) = -128;
        }

        if (v61 >= 127)
        {
          LOBYTE(v61) = 127;
        }

        v62 = (v17 + result);
        *v62 = v59;
        v62[1] = v61;
        a3.n128_u16[0] = *(v60 + 2);
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = rintf(v93 + (a3.n128_i32[0] * v94));
        v63 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v63) = -128;
        }

        a3.n128_u16[0] = *(v12->u16 + v58);
        a3 = vmovl_s16(a3.n128_u64[0]);
        a3.n128_f32[0] = v93 + (a3.n128_i32[0] * v94);
        if (v63 >= 127)
        {
          v64 = 127;
        }

        else
        {
          v64 = v63;
        }

        a3.n128_f32[0] = rintf(a3.n128_f32[0]);
        v65 = a3.n128_f32[0];
        if (a3.n128_f32[0] <= -128)
        {
          LODWORD(v65) = -128;
        }

        if (v65 >= 127)
        {
          LOBYTE(v65) = 127;
        }

        v62[2] = v64;
        v62[3] = v65;
        result += 4;
        v58 += 8;
      }

      while (result <= v16);
LABEL_35:
      a7 = v18;
      if (result < v14)
      {
        v66 = v14 - result;
        if (v66 < 4)
        {
          v67 = result;
          goto LABEL_52;
        }

        if (v17 + result < v87 + v19 && v12 + 2 * result < v96 + v14)
        {
          v67 = result;
          goto LABEL_52;
        }

        if (v66 >= 0x10)
        {
          v68 = v66 & 0xFFFFFFFFFFFFFFF0;
          v69 = 2 * result;
          v70 = result;
          v71 = v66 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v73 = *(v12 + v69);
            v72 = *(&v12[1] + v69);
            v74 = vcvtq_f32_s32(vmovl_s16(*v73.i8));
            v75 = vcvtq_f32_s32(vmovl_s16(*v72.i8));
            v76 = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v72)));
            v77 = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v73)));
            v78 = vmlaq_f32(v90, v91, v75);
            v79 = vmlaq_f32(v90, v91, v74);
            v80 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), v21);
            v15 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))))), v21);
            v98.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v76.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v76, v76, 8uLL))))), v21), v20);
            v98.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v77.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v77, v77, 8uLL))))), v21), v20);
            v98.val[2] = vminq_s32(v15, v20);
            v98.val[0] = vminq_s32(v80, v20);
            a3 = vqtbl4q_s8(v98, xmmword_1003E36F0);
            *(v17 + v70) = a3;
            v69 += 32;
            v70 += 16;
            v71 -= 16;
          }

          while (v71);
          if (v66 == v68)
          {
            goto LABEL_3;
          }

          if ((v66 & 0xC) == 0)
          {
            v67 = v68 + result;
            do
            {
LABEL_52:
              a3.n128_u16[0] = v12->u16[v67];
              a3 = vmovl_s16(a3.n128_u64[0]);
              a3.n128_f32[0] = rintf(v93 + (a3.n128_i32[0] * v94));
              v86 = a3.n128_f32[0];
              if (a3.n128_f32[0] <= -128)
              {
                LODWORD(v86) = -128;
              }

              if (v86 >= 127)
              {
                LOBYTE(v86) = 127;
              }

              *(v17 + v67++) = v86;
            }

            while (v14 != v67);
            goto LABEL_3;
          }
        }

        else
        {
          v68 = 0;
        }

        v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v81 = v68 - (v66 & 0xFFFFFFFFFFFFFFFCLL);
        v82 = v68 + result;
        v83 = 2 * v82;
        do
        {
          v84 = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_s16(*&v12->i8[v83])));
          v85 = vcvtq_f64_f32(vrndx_f32(*v84.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84, v84, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v85), v15), v21), v20);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v17 + v82) = a3.n128_u32[0];
          v83 += 8;
          v82 += 4;
          v81 += 4;
        }

        while (v81);
        if (v66 != (v66 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v12 = (v12 + v89);
      v17 += v18;
      ++v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100216EEC(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = result;
    v13 = 0;
    v14 = *a8;
    a3.n128_u64[0] = *a9;
    v15.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v75 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = result + 4 * v14;
    v71 = result + 16;
    v72 = 4 * (a2 >> 2);
    v17 = a6;
    v76 = *v10.i32;
    v77 = *v9.i32;
    v73 = vdupq_lane_s32(v10, 0);
    v74 = vdupq_lane_s32(v9, 0);
    do
    {
      v18 = a7;
      v79 = a6 + v13 * a7;
      v19 = v75 * v13;
      a3.n128_u32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100227600(a3, *v15.i8, v80, v12, v17, v14);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v76;
      *v9.i32 = v77;
      if (result > v16)
      {
        goto LABEL_35;
      }

      v21 = result;
      v22 = v16 - result;
      if (v22 > 0x3B && ((v23 = v22 >> 2, v24 = v79 + 4 + (v22 & 0xFFFFFFFFFFFFFFFCLL) + result, v25 = result, v17 + result < v71 + v19 + 16 * v23 + v25 * 4) ? (v26 = v12 + 4 * result >= v24) : (v26 = 1), v26))
      {
        v27 = v23 + 1;
        result = result + 4 * (v27 & 0x7FFFFFFFFFFFFFF0);
        v28 = v27 & 0x7FFFFFFFFFFFFFF0;
        v29.i64[0] = 0x7F0000007FLL;
        v29.i64[1] = 0x7F0000007FLL;
        do
        {
          v30 = &v12->i32[v25];
          v31 = &v12[8].i32[v25];
          v32 = &v12[12].i32[v25];
          v81 = vld4q_f32(v30);
          v30 += 16;
          v83 = vld4q_f32(v31);
          v84 = vld4q_f32(v32);
          v85 = vld4q_f32(v30);
          v33 = vcvtq_f32_s32(v83.val[0]);
          v34 = vcvtq_f32_s32(v81.val[0]);
          v35 = vcvtq_f32_s32(v81.val[1]);
          v36 = vcvtq_f32_s32(v85.val[0]);
          v37 = vcvtq_f32_s32(v83.val[2]);
          v38 = vcvtq_f32_s32(v84.val[2]);
          v39 = vcvtq_f32_s32(v81.val[2]);
          v81.val[1] = vcvtq_f32_s32(v81.val[3]);
          v81.val[2] = vcvtq_f32_s32(v84.val[3]);
          v81.val[3] = vcvtq_f32_s32(v83.val[3]);
          v40 = (v17 + v21);
          v81.val[0] = vcvtq_f32_s32(v85.val[2]);
          v83.val[0] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v83.val[1]));
          v83.val[2] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v84.val[1]));
          v84.val[2] = vmlaq_f32(v73, v74, v35);
          v84.val[3] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v85.val[1]));
          v85.val[0] = vmlaq_f32(v73, v74, v34);
          v85.val[1] = vmlaq_f32(v73, v74, v36);
          v84.val[1] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v84.val[0]));
          v83.val[3] = vmlaq_f32(v73, v74, v33);
          v20.i64[0] = 0x7F0000007FLL;
          v20.i64[1] = 0x7F0000007FLL;
          v41 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83.val[2], v83.val[2], 8uLL)))));
          v84.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84.val[1], v84.val[1], 8uLL)))));
          v83.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[1].f32)));
          v84.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83.val[3], v83.val[3], 8uLL))))), v20);
          v85.val[2] = vmaxq_s32(v84.val[0], v20);
          v83.val[3] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84.val[2], v84.val[2], 8uLL))))), v20);
          v84.val[2] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[1], v85.val[1], 8uLL)));
          v85.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83.val[0], v83.val[0], 8uLL))))), v20);
          v83.val[0] = vminq_s32(v83.val[3], v29);
          v84.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.val[3].i8)));
          v83.val[3] = vmlaq_f32(v73, v74, v81.val[3]);
          v81.val[3] = vmlaq_f32(v73, v74, v81.val[2]);
          v81.val[2] = vmlaq_f32(v73, v74, v81.val[1]);
          v81.val[1] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84.val[3], v84.val[3], 8uLL)));
          v84.val[3] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v85.val[3]));
          v42 = vmlaq_f32(v73, v74, v39);
          v85.val[3] = vmlaq_f32(v73, v74, v81.val[0]);
          v81.val[0] = vmlaq_f32(v73, v74, v38);
          v43 = vmlaq_f32(v73, v74, v37);
          v83.val[0] = vuzp1q_s16(v83.val[0], vminq_s32(vmaxq_s32(vuzp1q_s32(v84.val[0], vcvtq_s64_f64(v81.val[1])), v20), v29));
          v84.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[0], v85.val[0], 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(v83.val[2], vcvtq_s64_f64(v84.val[2])), v20), v29)), vuzp1q_s16(vminq_s32(v84.val[1], v29), vminq_s32(v85.val[2], v29)));
          v84.val[1] = vuzp1q_s8(v83.val[0], vuzp1q_s16(vminq_s32(v85.val[1], v29), vminq_s32(vmaxq_s32(v41, v20), v29)));
          v84.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[3], v85.val[3], 8uLL))))), v20), v29)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81.val[0], v81.val[0], 8uLL))))), v20), v29)));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81.val[2], v81.val[2], 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84.val[3], v84.val[3], 8uLL))))), v20), v29));
          v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83.val[3], v83.val[3], 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81.val[3], v81.val[3], 8uLL))))), v20), v29));
          v84.val[3] = vuzp1q_s8(a3, v15);
          vst4q_s8(v40, v84);
          v21 += 64;
          v25 += 64;
          v28 -= 16;
        }

        while (v28);
        if (v27 == (v27 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v44 = 4 * result + 12;
      do
      {
        v45 = rintf(v76 + (*(&v12->i32[-3] + v44) * v77));
        if (v45 <= -128)
        {
          LODWORD(v45) = -128;
        }

        v46 = &v12->i32[result];
        if (v45 >= 127)
        {
          LOBYTE(v45) = 127;
        }

        v47 = rintf(v76 + (v46[1] * v77));
        if (v47 <= -128)
        {
          LODWORD(v47) = -128;
        }

        if (v47 >= 127)
        {
          LOBYTE(v47) = 127;
        }

        v48 = (v17 + result);
        *v48 = v45;
        v48[1] = v47;
        v49 = rintf(v76 + (v46[2] * v77));
        if (v49 <= -128)
        {
          LODWORD(v49) = -128;
        }

        if (v49 >= 127)
        {
          v50 = 127;
        }

        else
        {
          v50 = v49;
        }

        v51 = rintf(v76 + (*(v12->i32 + v44) * v77));
        if (v51 <= -128)
        {
          LODWORD(v51) = -128;
        }

        if (v51 >= 127)
        {
          LOBYTE(v51) = 127;
        }

        v48[2] = v50;
        v48[3] = v51;
        result += 4;
        v44 += 16;
      }

      while (result <= v16);
LABEL_35:
      a7 = v18;
      v52.i64[0] = 0x7F0000007FLL;
      v52.i64[1] = 0x7F0000007FLL;
      if (result < v14)
      {
        v53 = v14 - result;
        if (v53 < 4)
        {
          v54 = result;
          goto LABEL_52;
        }

        if (v17 + result < v70 + v19 && v12 + 4 * result < v79 + v14)
        {
          v54 = result;
          goto LABEL_52;
        }

        if (v53 >= 0x10)
        {
          v55 = v53 & 0xFFFFFFFFFFFFFFF0;
          v56 = 4 * result;
          v57 = result;
          v58 = v53 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v59 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(&v12[3] + v56)));
            v60 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(&v12[2] + v56)));
            v61 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(&v12[1] + v56)));
            v62 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(v12 + v56)));
            v63 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), v20);
            v15 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))), v20);
            v82.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL))))), v20), v52);
            v82.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL))))), v20), v52);
            v82.val[1] = vminq_s32(v15, v52);
            v82.val[0] = vminq_s32(v63, v52);
            a3 = vqtbl4q_s8(v82, xmmword_1003E36F0);
            *(v17 + v57) = a3;
            v56 += 64;
            v57 += 16;
            v58 -= 16;
          }

          while (v58);
          if (v53 == v55)
          {
            goto LABEL_3;
          }

          if ((v53 & 0xC) == 0)
          {
            v54 = v55 + result;
            do
            {
LABEL_52:
              v69 = rintf(v76 + (v12->i32[v54] * v77));
              if (v69 <= -128)
              {
                LODWORD(v69) = -128;
              }

              if (v69 >= 127)
              {
                LOBYTE(v69) = 127;
              }

              *(v17 + v54++) = v69;
            }

            while (v14 != v54);
            goto LABEL_3;
          }
        }

        else
        {
          v55 = 0;
        }

        v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v64 = v55 - (v53 & 0xFFFFFFFFFFFFFFFCLL);
        v65 = v55 + result;
        v66 = 4 * v65;
        do
        {
          v67 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(v12 + v66)));
          v68 = vcvtq_f64_f32(vrndx_f32(*v67.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v67, v67, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v68), v15), v20), v52);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v17 + v65) = a3.n128_u32[0];
          v66 += 16;
          v65 += 4;
          v64 += 4;
        }

        while (v64);
        if (v53 != (v53 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v12 = (v12 + v72);
      v17 += v18;
      ++v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100217730(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = result;
    v13 = 0;
    v14 = *a8;
    a3.n128_u64[0] = *a9;
    v15.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v76 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v71 = result + 4 * v14;
    v72 = result + 16;
    v73 = 4 * (a2 >> 2);
    v17 = a6;
    v77 = *v10.i32;
    v78 = *v9.i32;
    v74 = vdupq_lane_s32(v10, 0);
    v75 = vdupq_lane_s32(v9, 0);
    do
    {
      v18 = a7;
      v80 = a6 + v13 * a7;
      v19 = v76 * v13;
      a3.n128_u32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100227848(a3, *v15.i8, &v81, v12, v17, v14);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v77;
      *v9.i32 = v78;
      if (result > v16)
      {
        goto LABEL_35;
      }

      v22 = result;
      v23 = v16 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v80 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = 4 * result, v17 + result < v72 + v19 + 16 * v24 + v26) ? (v27 = v12->u64 + 4 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = vmlaq_f32(v74, v75, *(v12 + v26 + 32));
          v31 = vmlaq_f32(v74, v75, *(v12 + v26 + 48));
          v32 = vmlaq_f32(v74, v75, *(v12 + v26 + 16));
          v33 = vmlaq_f32(v74, v75, *(v12 + v26));
          v34 = vmlaq_f32(v74, v75, *(v12 + v26 + 96));
          v35 = vmlaq_f32(v74, v75, *(v12 + v26 + 112));
          v36 = vmlaq_f32(v74, v75, *(v12 + v26 + 64));
          v37 = vmlaq_f32(v74, v75, *(v12 + v26 + 80));
          v38 = vmlaq_f32(v74, v75, *(v12 + v26 + 160));
          v39 = vmlaq_f32(v74, v75, *(v12 + v26 + 176));
          v40 = vmlaq_f32(v74, v75, *(v12 + v26 + 128));
          v41 = vmlaq_f32(v74, v75, *(v12 + v26 + 144));
          v42 = vmlaq_f32(v74, v75, *(v12 + v26 + 224));
          v43 = vmlaq_f32(v74, v75, *(v12 + v26 + 240));
          v44 = vmlaq_f32(v74, v75, *(v12 + v26 + 192));
          v45 = vmlaq_f32(v74, v75, *(v12 + v26 + 208));
          a3 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v21), v20)));
          v46 = v17 + v22;
          *v46 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), v21), v20)));
          *(v46 + 16) = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), v21), v20)));
          v15 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), v21), v20)));
          *(v46 + 32) = v15;
          *(v46 + 48) = a3;
          v22 += 64;
          v26 += 256;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v47 = 4 * result + 12;
      do
      {
        v48 = rintf(v77 + (*(&v12->f32[-3] + v47) * v78));
        if (v48 <= -128)
        {
          LODWORD(v48) = -128;
        }

        v49 = &v12->f32[result];
        v50 = rintf(v77 + (v49[1] * v78));
        if (v48 >= 127)
        {
          LOBYTE(v48) = 127;
        }

        if (v50 <= -128)
        {
          LODWORD(v50) = -128;
        }

        if (v50 >= 127)
        {
          LOBYTE(v50) = 127;
        }

        v51 = (v17 + result);
        *v51 = v48;
        v51[1] = v50;
        v52 = rintf(v77 + (v49[2] * v78));
        if (v52 <= -128)
        {
          LODWORD(v52) = -128;
        }

        if (v52 >= 127)
        {
          v53 = 127;
        }

        else
        {
          v53 = v52;
        }

        v54 = rintf(v77 + (*(v12->f32 + v47) * v78));
        if (v54 <= -128)
        {
          LODWORD(v54) = -128;
        }

        if (v54 >= 127)
        {
          LOBYTE(v54) = 127;
        }

        v51[2] = v53;
        v51[3] = v54;
        result += 4;
        v47 += 16;
      }

      while (result <= v16);
LABEL_35:
      a7 = v18;
      if (result < v14)
      {
        v55 = v14 - result;
        if (v55 < 4)
        {
          v56 = result;
          goto LABEL_52;
        }

        if (v17 + result < v71 + v19 && v12->u64 + 4 * result < v80 + v14)
        {
          v56 = result;
          goto LABEL_52;
        }

        if (v55 >= 0x10)
        {
          v57 = v55 & 0xFFFFFFFFFFFFFFF0;
          v58 = 4 * result;
          v59 = result;
          v60 = v55 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v61 = vmlaq_f32(v74, v75, *(v12 + v58 + 32));
            v62 = vmlaq_f32(v74, v75, *(v12 + v58 + 16));
            v63 = vmlaq_f32(v74, v75, *(v12 + v58));
            v64 = vmlaq_f32(v74, v75, *(v12 + v58 + 48));
            v15 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), v21);
            v82.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))), v21), v20);
            v82.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), v21), v20);
            v82.val[0] = vminq_s32(v15, v20);
            v82.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))))), v21), v20);
            a3 = vqtbl4q_s8(v82, xmmword_1003E36F0);
            *(v17 + v59) = a3;
            v58 += 64;
            v59 += 16;
            v60 -= 16;
          }

          while (v60);
          if (v55 == v57)
          {
            goto LABEL_3;
          }

          if ((v55 & 0xC) == 0)
          {
            v56 = v57 + result;
            do
            {
LABEL_52:
              v70 = rintf(v77 + (v12->f32[v56] * v78));
              if (v70 <= -128)
              {
                LODWORD(v70) = -128;
              }

              if (v70 >= 127)
              {
                LOBYTE(v70) = 127;
              }

              *(v17 + v56++) = v70;
            }

            while (v14 != v56);
            goto LABEL_3;
          }
        }

        else
        {
          v57 = 0;
        }

        v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v65 = v57 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
        v66 = v57 + result;
        v67 = 4 * v66;
        do
        {
          v68 = vmlaq_f32(v74, v75, *(v12 + v67));
          v69 = vcvtq_f64_f32(vrndx_f32(*v68.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v68, v68, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v69), v15), v21), v20);
          a3.n128_u64[0] = vmovn_s32(a3);
          a3.n128_u64[0] = vuzp1_s8(a3.n128_u64[0], a3.n128_u64[0]);
          *(v17 + v66) = a3.n128_u32[0];
          v67 += 16;
          v66 += 4;
          v65 += 4;
        }

        while (v65);
        if (v55 != (v55 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v12 = (v12 + v73);
      v17 += v18;
      ++v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100217EF0(uint64_t result, unint64_t a2, double a3, double a4, float64x2_t a5, int16x8_t a6, __n128 a7, int32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int *a13, double *a14)
{
  v14 = a13[1];
  if (v14)
  {
    v15 = result;
    v16 = 0;
    v17 = *a13;
    v18 = *a14;
    v19 = a14[1];
    v20 = v17 - 4;
    v64 = result + 8 * v17;
    v65 = result + 32;
    v66 = 8 * (a2 >> 3);
    v67 = a2 & 0xFFFFFFFFFFFFFFF8;
    v21 = a11;
    v62 = v19;
    v63 = v18;
    v71 = v19;
    v72 = v18;
    v69 = vdupq_lane_s64(COERCE__INT64(v19), 0);
    v70 = vdupq_lane_s64(COERCE__INT64(v18), 0);
    do
    {
      v22 = a12;
      v73 = a11 + v16 * a12;
      v23 = v67 * v16;
      result = sub_100227A88(v18, v19, a5.f64[0], *a6.i64, a7.n128_f64[0], a8, v74, v15, v21, v17);
      v25 = v71;
      v24 = v72;
      if (result > v20)
      {
        goto LABEL_35;
      }

      v26 = result;
      v27 = v20 - result;
      if (v27 > 0x3B && ((v28 = v27 >> 2, v29 = v73 + 4 + (v27 & 0xFFFFFFFFFFFFFFFCLL) + result, v30 = 8 * result, v21 + result < v65 + v23 + 32 * v28 + v30) ? (v31 = &v15->f64[result] >= v29) : (v31 = 1), v31))
      {
        v32 = v28 + 1;
        result = result + 4 * (v32 & 0x7FFFFFFFFFFFFFF0);
        v33 = v32 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          a8 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 320)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 336)))));
          v34 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 352)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 368)))));
          v35.i64[0] = 0x7F0000007FLL;
          v35.i64[1] = 0x7F0000007FLL;
          v36.i64[0] = 0x7F0000007FLL;
          v36.i64[1] = 0x7F0000007FLL;
          v37 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 384)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 400))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 416)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 432))))), v35), v36)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 448)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 464))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 480)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 496))))), v35), v36)));
          v38 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 256)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 272))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 288)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 304))))), v35), v36));
          a7 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 128)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 144))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 160)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 176))))), v35), v36)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 192)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 208))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 224)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 240))))), v35), v36)));
          a6 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 48))))), v35), v36);
          a5 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 16))))), v35), v36), a6);
          v39 = v21 + v26;
          *v39 = vuzp1q_s8(a5, vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 80))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 112))))), v35), v36)));
          *(v39 + 16) = a7;
          *(v39 + 32) = vuzp1q_s8(v38, vuzp1q_s16(vminq_s32(vmaxq_s32(a8, v35), v36), vminq_s32(vmaxq_s32(v34, v35), v36)));
          *(v39 + 48) = v37;
          v26 += 64;
          v30 += 512;
          v33 -= 16;
        }

        while (v33);
        v19 = v62;
        v18 = v63;
        v25 = v71;
        v24 = v72;
        if (v32 == (v32 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v40 = 8 * result + 24;
      do
      {
        v41 = rint(v25 + *(&v15[-1] + v40 - 8) * v24);
        if (v41 <= -128)
        {
          LODWORD(v41) = -128;
        }

        v42 = &v15->f64[result];
        v43 = rint(v25 + v42[1] * v24);
        if (v41 >= 127)
        {
          LOBYTE(v41) = 127;
        }

        if (v43 <= -128)
        {
          LODWORD(v43) = -128;
        }

        if (v43 >= 127)
        {
          LOBYTE(v43) = 127;
        }

        v44 = (v21 + result);
        *v44 = v41;
        v44[1] = v43;
        v45 = rint(v25 + v42[2] * v24);
        if (v45 <= -128)
        {
          LODWORD(v45) = -128;
        }

        if (v45 >= 127)
        {
          v46 = 127;
        }

        else
        {
          v46 = v45;
        }

        v47 = rint(v25 + *(v15->f64 + v40) * v24);
        if (v47 <= -128)
        {
          LODWORD(v47) = -128;
        }

        if (v47 >= 127)
        {
          LOBYTE(v47) = 127;
        }

        v44[2] = v46;
        v44[3] = v47;
        result += 4;
        v40 += 32;
      }

      while (result <= v20);
LABEL_35:
      a12 = v22;
      v48.i64[0] = 0x7F0000007FLL;
      v48.i64[1] = 0x7F0000007FLL;
      v49.i64[0] = 0x7F0000007FLL;
      v49.i64[1] = 0x7F0000007FLL;
      if (result < v17)
      {
        v50 = v17 - result;
        if (v50 < 4)
        {
          v51 = result;
          goto LABEL_52;
        }

        if (v21 + result < v64 + v23 && &v15->f64[result] < v73 + v17)
        {
          v51 = result;
          goto LABEL_52;
        }

        if (v50 >= 0x10)
        {
          v52 = v50 & 0xFFFFFFFFFFFFFFF0;
          v53 = 8 * result;
          v54 = result;
          v55 = v50 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            a5 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 48))))), v48);
            a6 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 16))))), v48), v49);
            a7 = vminq_s32(a5, v49);
            a8 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 80))))), v48), v49);
            v56 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 112))))), v48), v49);
            *(v21 + v54) = vqtbl4q_s8(*a6.i8, xmmword_1003E36F0);
            v53 += 128;
            v54 += 16;
            v55 -= 16;
          }

          while (v55);
          if (v50 == v52)
          {
            goto LABEL_3;
          }

          if ((v50 & 0xC) == 0)
          {
            v51 = v52 + result;
            do
            {
LABEL_52:
              v61 = rint(v25 + v15->f64[v51] * v24);
              if (v61 <= -128)
              {
                LODWORD(v61) = -128;
              }

              if (v61 >= 127)
              {
                LOBYTE(v61) = 127;
              }

              *(v21 + v51++) = v61;
            }

            while (v17 != v51);
            goto LABEL_3;
          }
        }

        else
        {
          v52 = 0;
        }

        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v57 = v52 - (v50 & 0xFFFFFFFFFFFFFFFCLL);
        v58 = v52 + result;
        v59 = 8 * v58;
        do
        {
          a5 = vmlaq_f64(v69, v70, *(v15 + v59));
          v60 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(a5)), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v59 + 16))))), v48), v49));
          *(v21 + v58) = vuzp1_s8(v60, v60).u32[0];
          v59 += 32;
          v58 += 4;
          v57 += 4;
        }

        while (v57);
        if (v50 != (v50 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v15 = (v15 + v66);
      v21 += v22;
      ++v16;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1002186E0(uint64_t result, uint64_t a2, int16x8_t a3, uint64_t a4, uint64_t a5, int16x8_t *a6, unint64_t a7, int *a8, unint64_t *a9)
{
  v101 = result;
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = 0;
    v14 = *a8;
    a3.i64[0] = *a9;
    v15.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v98 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v92 = &a6->i8[2 * v14];
    v93 = &a6->i64[1];
    v94 = a2;
    v95 = 2 * (a7 >> 1);
    v17 = result;
    v99 = *v10.i32;
    v100 = *v9.i32;
    v96 = vdupq_lane_s32(v10, 0);
    v97 = vdupq_lane_s32(v9, 0);
    do
    {
      v104 = v11;
      v102 = v101 + v13 * a2;
      v103 = v98 * v13;
      a3.i32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100227CF4(a3, *v15.i8, v105, v17, v12, v14);
      v18.i64[0] = 0xFFFF0000FFFFLL;
      v18.i64[1] = 0xFFFF0000FFFFLL;
      *v10.i32 = v99;
      *v9.i32 = v100;
      if (result > v16)
      {
        goto LABEL_26;
      }

      v19 = result;
      v20 = v16 - result;
      if (v20 > 0x3B && ((v21 = result, v12->u64 + v21 * 2 < v102 + 4 + (v20 & 0xFFFFFFFFFFFFFFFCLL) + result) ? (v22 = v17 + result >= &v93[v20 >> 2] + 2 * result + v103) : (v22 = 1), v22))
      {
        v23 = (v20 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = (v17 + v19);
          v106 = vld4q_s8(v25);
          v26 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[0], xmmword_1003E3700));
          v27 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[0], xmmword_1003E3710));
          v28 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[0], xmmword_1003E3720));
          v29 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[1], xmmword_1003E3710));
          v30 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[1], xmmword_1003E3700));
          v31 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[1], xmmword_1003E3720));
          v32 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[1], xmmword_1003E3730));
          v33 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[2], xmmword_1003E3720));
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[2], xmmword_1003E3730));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[2], xmmword_1003E3700));
          v36 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[2], xmmword_1003E3710));
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[3], xmmword_1003E3720));
          v38 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[3], xmmword_1003E3730));
          v39 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[3], xmmword_1003E3710));
          v40 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[3], xmmword_1003E3700));
          v41 = &v12->i16[v21];
          v106.val[0] = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v106.val[0], xmmword_1003E3730)));
          v106.val[1] = vmlaq_f32(v96, v97, v28);
          v42 = vmlaq_f32(v96, v97, v32);
          v43 = vmlaq_f32(v96, v97, v31);
          v44 = vmlaq_f32(v96, v97, v30);
          v45 = vmlaq_f32(v96, v97, v29);
          v106.val[3] = vmlaq_f32(v96, v97, v27);
          v106.val[2] = vmlaq_f32(v96, v97, v26);
          v46 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106.val[1], v106.val[1], 8uLL)))));
          v106.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106.val[2], v106.val[2], 8uLL))))), 0);
          v106.val[2] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0);
          v47 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0);
          v48 = vmlaq_f32(v96, v97, v40);
          v49 = vmlaq_f32(v96, v97, v39);
          v50 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106.val[0], v106.val[0], 8uLL))))), 0), v18);
          v51 = vmlaq_f32(v96, v97, v36);
          v52 = vmlaq_f32(v96, v97, v35);
          v53 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8)));
          v106.val[0] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL)));
          v54 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v18);
          v55 = vcvtq_s64_f64(v106.val[0]);
          v56 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8)));
          v106.val[0].i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
          v57 = vminq_s32(v47, v18);
          v58 = vmaxq_s32(vuzp1q_s32(v53, v55), 0);
          v59 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL))))), 0), v18);
          v60 = vmlaq_f32(v96, v97, v34);
          v61 = vmlaq_f32(v96, v97, v33);
          v62 = vmlaq_f32(v96, v97, v38);
          v63 = vmlaq_f32(v96, v97, v37);
          v64 = vminq_s32(vmaxq_s32(vuzp1q_s32(v56, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[0].i8)))), 0), v18);
          v107.val[0] = vuzp1q_s16(vminq_s32(v106.val[1], v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106.val[3], v106.val[3], 8uLL))))), 0), v18));
          v107.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v18), vminq_s32(v106.val[2], v18));
          v107.val[2] = vuzp1q_s16(vminq_s32(v58, v18), v64);
          v107.val[3] = vuzp1q_s16(v59, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v49.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v49, v49, 8uLL))))), 0), v18));
          v106.val[2] = vuzp1q_s16(v57, v54);
          v106.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(v46, 0), v18), v50);
          v15 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))), 0), v18);
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), 0), v18);
          v65 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), 0), v18), a3);
          v106.val[3] = vuzp1q_s16(v15, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL))))), 0), v18));
          vst4q_s16(v41, *(&v106 + 16));
          v41 += 32;
          vst4q_s16(v41, v107);
          v21 += 64;
          v19 += 64;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = result;
      }

      v66 = &v12->i16[result];
      do
      {
        v67 = v17 + result;
        a3.i8[0] = *(v17 + result);
        *&v68 = rintf(v99 + (a3.u32[0] * v100));
        v69 = *&v68 & ~(*&v68 >> 31);
        LOBYTE(v68) = *(v17 + result + 1);
        *a3.i32 = rintf(v99 + (v68 * v100));
        if (v69 >= 0xFFFF)
        {
          LOWORD(v69) = -1;
        }

        v70 = *a3.i32 & ~(*a3.i32 >> 31);
        if (v70 >= 0xFFFF)
        {
          LOWORD(v70) = -1;
        }

        *v66 = v69;
        v66[1] = v70;
        a3.i8[0] = *(v67 + 2);
        *a3.i32 = rintf(v99 + (a3.u32[0] * v100));
        v71 = *a3.i32 & ~(*a3.i32 >> 31);
        if (v71 >= 0xFFFF)
        {
          LOWORD(v71) = -1;
        }

        a3.i8[0] = *(v67 + 3);
        *a3.i32 = rintf(v99 + (a3.u32[0] * v100));
        v72 = *a3.i32 & ~(*a3.i32 >> 31);
        if (v72 >= 0xFFFF)
        {
          LOWORD(v72) = -1;
        }

        v66[2] = v71;
        v66[3] = v72;
        result += 4;
        v66 += 4;
      }

      while (result <= v16);
LABEL_26:
      a2 = v94;
      if (result < v14)
      {
        v73 = v14 - result;
        if (v73 < 4)
        {
          v74 = result;
          goto LABEL_45;
        }

        if (v12 + 2 * result < v102 + v14 && v17 + result < &v92[v103])
        {
          v74 = result;
          goto LABEL_45;
        }

        if (v73 >= 0x10)
        {
          v76 = v73 & 0xFFFFFFFFFFFFFFF0;
          v77 = 2 * result;
          v78 = result;
          v79 = v73 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v80 = *(v17 + v78);
            v81 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v80, xmmword_1003E3710)));
            v82 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v80, xmmword_1003E3700)));
            v83 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v80, xmmword_1003E3730)));
            v84 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v80, xmmword_1003E3720)));
            a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84, v84, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83, v83, 8uLL))))), 0), v18));
            v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), 0), v18));
            v85 = (v12 + v77);
            *v85 = a3;
            v85[1] = v15;
            v78 += 16;
            v77 += 32;
            v79 -= 16;
          }

          while (v79);
          if (v73 == v76)
          {
            goto LABEL_3;
          }

          if ((v73 & 0xC) == 0)
          {
            v74 = v76 + result;
            do
            {
LABEL_45:
              a3.i8[0] = *(v17 + v74);
              *a3.i32 = rintf(v99 + (a3.u32[0] * v100));
              v91 = *a3.i32 & ~(*a3.i32 >> 31);
              if (v91 >= 0xFFFF)
              {
                LOWORD(v91) = -1;
              }

              v12->i16[v74++] = v91;
            }

            while (v14 != v74);
            goto LABEL_3;
          }
        }

        else
        {
          v76 = 0;
        }

        v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v86 = v76 - (v73 & 0xFFFFFFFFFFFFFFFCLL);
        v87 = v76 + result;
        v88 = 2 * v87;
        do
        {
          a3.i32[0] = *(v17 + v87);
          v89 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a3.i8))));
          v90 = vcvtq_f64_f32(vrndx_f32(*v89.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v89, v89, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v90), v15), 0), v18);
          *a3.i8 = vmovn_s32(a3);
          *(v12->i64 + v88) = a3.i64[0];
          v87 += 4;
          v88 += 8;
          v86 += 4;
        }

        while (v86);
        if (v73 != (v73 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_45;
        }
      }

LABEL_3:
      v17 += v94;
      v12 = (v12 + v95);
      ++v13;
      v11 = v104 - 1;
    }

    while (v104 != 1);
  }

  return result;
}

uint64_t sub_100218F54(uint64_t result, uint64_t a2, int16x8_t a3, uint64_t a4, uint64_t a5, int16x8_t *a6, unint64_t a7, int *a8, unint64_t *a9)
{
  v100 = result;
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = 0;
    v14 = *a8;
    a3.i64[0] = *a9;
    v15.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v97 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v91 = &a6->i8[2 * v14];
    v92 = &a6->i64[1];
    v93 = a2;
    v94 = 2 * (a7 >> 1);
    v17 = result;
    v98 = *v10.i32;
    v99 = *v9.i32;
    v95 = vdupq_lane_s32(v10, 0);
    v96 = vdupq_lane_s32(v9, 0);
    do
    {
      v103 = v11;
      v101 = v100 + v13 * a2;
      v102 = v97 * v13;
      a3.i32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100227F1C(a3, *v15.i8, v104, v17, v12, v14);
      v18.i64[0] = 0xFFFF0000FFFFLL;
      v18.i64[1] = 0xFFFF0000FFFFLL;
      *v10.i32 = v98;
      *v9.i32 = v99;
      if (result > v16)
      {
        goto LABEL_26;
      }

      v19 = result;
      v20 = v16 - result;
      if (v20 > 0x3B && ((v21 = result, v12->u64 + v21 * 2 < v101 + 4 + (v20 & 0xFFFFFFFFFFFFFFFCLL) + result) ? (v22 = v17 + result >= &v92[v20 >> 2] + 2 * result + v102) : (v22 = 1), v22))
      {
        v23 = (v20 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = (v17 + v19);
          v105 = vld4q_s8(v25);
          v26 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[0], xmmword_1003E3740), 0x18uLL);
          v27 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[0], xmmword_1003E3750), 0x18uLL);
          v28 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[0], xmmword_1003E3760), 0x18uLL);
          v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[1], xmmword_1003E3750), 0x18uLL);
          v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[1], xmmword_1003E3740), 0x18uLL);
          v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[1], xmmword_1003E3760), 0x18uLL);
          v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[1], xmmword_1003E3770), 0x18uLL);
          v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[2], xmmword_1003E3760), 0x18uLL);
          v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[2], xmmword_1003E3770), 0x18uLL);
          v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[2], xmmword_1003E3740), 0x18uLL);
          v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[2], xmmword_1003E3750), 0x18uLL);
          v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[3], xmmword_1003E3760), 0x18uLL);
          v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[3], xmmword_1003E3770), 0x18uLL);
          v39 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[3], xmmword_1003E3750), 0x18uLL);
          v40 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[3], xmmword_1003E3740), 0x18uLL);
          v41 = &v12->i16[v21];
          v105.val[0] = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[0], xmmword_1003E3770), 0x18uLL));
          v105.val[1] = vmlaq_f32(v95, v96, v28);
          v42 = vmlaq_f32(v95, v96, v32);
          v43 = vmlaq_f32(v95, v96, v31);
          v44 = vmlaq_f32(v95, v96, v30);
          v45 = vmlaq_f32(v95, v96, v29);
          v105.val[3] = vmlaq_f32(v95, v96, v27);
          v105.val[2] = vmlaq_f32(v95, v96, v26);
          v46 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105.val[1], v105.val[1], 8uLL)))));
          v105.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105.val[2], v105.val[2], 8uLL))))), 0);
          v105.val[2] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0);
          v47 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0);
          v48 = vmlaq_f32(v95, v96, v40);
          v49 = vmlaq_f32(v95, v96, v39);
          v50 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105.val[0], v105.val[0], 8uLL))))), 0), v18);
          v51 = vmlaq_f32(v95, v96, v36);
          v52 = vmlaq_f32(v95, v96, v35);
          v53 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8)));
          v105.val[0] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL)));
          v54 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v18);
          v55 = vcvtq_s64_f64(v105.val[0]);
          v56 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8)));
          v105.val[0].i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
          v57 = vminq_s32(v47, v18);
          v58 = vmaxq_s32(vuzp1q_s32(v53, v55), 0);
          v59 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL))))), 0), v18);
          v60 = vmlaq_f32(v95, v96, v34);
          v61 = vmlaq_f32(v95, v96, v33);
          v62 = vmlaq_f32(v95, v96, v38);
          v63 = vmlaq_f32(v95, v96, v37);
          v64 = vminq_s32(vmaxq_s32(vuzp1q_s32(v56, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[0].i8)))), 0), v18);
          v106.val[0] = vuzp1q_s16(vminq_s32(v105.val[1], v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105.val[3], v105.val[3], 8uLL))))), 0), v18));
          v106.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v18), vminq_s32(v105.val[2], v18));
          v106.val[2] = vuzp1q_s16(vminq_s32(v58, v18), v64);
          v106.val[3] = vuzp1q_s16(v59, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v49.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v49, v49, 8uLL))))), 0), v18));
          v105.val[2] = vuzp1q_s16(v57, v54);
          v105.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(v46, 0), v18), v50);
          v15 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))), 0), v18);
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), 0), v18);
          v65 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), 0), v18), a3);
          v105.val[3] = vuzp1q_s16(v15, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL))))), 0), v18));
          vst4q_s16(v41, *(&v105 + 16));
          v41 += 32;
          vst4q_s16(v41, v106);
          v21 += 64;
          v19 += 64;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = result;
      }

      v66 = &v12->i16[result];
      do
      {
        v67 = (v17 + result);
        a3.i8[0] = *(v17 + result);
        a3.i64[0] = vmovl_s16(*&vmovl_s8(*a3.i8)).u64[0];
        *a3.i32 = rintf(v98 + (a3.i32[0] * v99));
        v68 = *a3.i32 & ~(*a3.i32 >> 31);
        if (v68 >= 0xFFFF)
        {
          LOWORD(v68) = -1;
        }

        a3.i8[0] = v67[1];
        a3.i64[0] = vmovl_s16(*&vmovl_s8(*a3.i8)).u64[0];
        *a3.i32 = rintf(v98 + (a3.i32[0] * v99));
        v69 = *a3.i32 & ~(*a3.i32 >> 31);
        if (v69 >= 0xFFFF)
        {
          LOWORD(v69) = -1;
        }

        *v66 = v68;
        v66[1] = v69;
        a3.i8[0] = v67[2];
        a3.i64[0] = vmovl_s16(*&vmovl_s8(*a3.i8)).u64[0];
        *a3.i32 = rintf(v98 + (a3.i32[0] * v99));
        v70 = *a3.i32 & ~(*a3.i32 >> 31);
        if (v70 >= 0xFFFF)
        {
          LOWORD(v70) = -1;
        }

        a3.i8[0] = v67[3];
        a3 = vmovl_s16(*&vmovl_s8(*a3.i8));
        *a3.i32 = rintf(v98 + (a3.i32[0] * v99));
        v71 = *a3.i32 & ~(*a3.i32 >> 31);
        if (v71 >= 0xFFFF)
        {
          LOWORD(v71) = -1;
        }

        v66[2] = v70;
        v66[3] = v71;
        result += 4;
        v66 += 4;
      }

      while (result <= v16);
LABEL_26:
      a2 = v93;
      if (result < v14)
      {
        v72 = v14 - result;
        if (v72 < 4)
        {
          v73 = result;
          goto LABEL_45;
        }

        if (v12 + 2 * result < v101 + v14 && v17 + result < &v91[v102])
        {
          v73 = result;
          goto LABEL_45;
        }

        if (v72 >= 0x10)
        {
          v75 = v72 & 0xFFFFFFFFFFFFFFF0;
          v76 = 2 * result;
          v77 = result;
          v78 = v72 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v79 = *(v17 + v77);
            v80 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v79, xmmword_1003E3750), 0x18uLL));
            v81 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v79, xmmword_1003E3740), 0x18uLL));
            v82 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v79, xmmword_1003E3770), 0x18uLL));
            v83 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v79, xmmword_1003E3760), 0x18uLL));
            a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83, v83, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))))), 0), v18));
            v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))))), 0), v18));
            v84 = (v12 + v76);
            *v84 = a3;
            v84[1] = v15;
            v77 += 16;
            v76 += 32;
            v78 -= 16;
          }

          while (v78);
          if (v72 == v75)
          {
            goto LABEL_3;
          }

          if ((v72 & 0xC) == 0)
          {
            v73 = v75 + result;
            do
            {
LABEL_45:
              a3.i8[0] = *(v17 + v73);
              a3 = vmovl_s16(*&vmovl_s8(*a3.i8));
              *a3.i32 = rintf(v98 + (a3.i32[0] * v99));
              v90 = *a3.i32 & ~(*a3.i32 >> 31);
              if (v90 >= 0xFFFF)
              {
                LOWORD(v90) = -1;
              }

              v12->i16[v73++] = v90;
            }

            while (v14 != v73);
            goto LABEL_3;
          }
        }

        else
        {
          v75 = 0;
        }

        v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v85 = v75 - (v72 & 0xFFFFFFFFFFFFFFFCLL);
        v86 = v75 + result;
        v87 = 2 * v86;
        do
        {
          a3.i32[0] = *(v17 + v86);
          v88 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(a3, xmmword_1003E3760), 0x18uLL));
          v89 = vcvtq_f64_f32(vrndx_f32(*v88.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88, v88, 8uLL))));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v89), v15), 0), v18);
          *a3.i8 = vmovn_s32(a3);
          *(v12->i64 + v87) = a3.i64[0];
          v86 += 4;
          v87 += 8;
          v85 += 4;
        }

        while (v85);
        if (v72 != (v72 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_45;
        }
      }

LABEL_3:
      v17 += v93;
      v12 = (v12 + v94);
      ++v13;
      v11 = v103 - 1;
    }

    while (v103 != 1);
  }

  return result;
}

uint64_t sub_1002197F0(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int16x8_t *a6, unint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v65 = &a6->i8[-result];
    v62 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v63 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v64 = (a7 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v60 = result + 8;
    v61 = &a6->i64[1];
    v18 = 2 * (a7 >> 1);
    v19 = 2 * (a2 >> 1);
    v20 = &a6->i8[4];
    v68 = *v10.i32;
    v69 = *v9.i32;
    v66 = vdupq_lane_s32(v10, 0);
    v67 = vdupq_lane_s32(v9, 0);
    do
    {
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100228144(a3, *v16.i8, &v70, v13, v12, v15);
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      *v10.i32 = v68;
      *v9.i32 = v69;
      if (result <= v17)
      {
        v22 = result;
        v23 = v17 - result;
        if (v23 <= 0x1B)
        {
          goto LABEL_14;
        }

        v24 = v23 >> 2;
        v25 = result;
        v26 = v25 * 2 + 8 * v24;
        if (v12->u64 + v25 * 2 < v60 + v62 * v14 + v26 && v13 + 2 * result < v61 + v63 * v14 + v26)
        {
          goto LABEL_14;
        }

        v28 = v24 + 1;
        v22 = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF8);
        v29 = v28 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v30 = &v13->i16[v25];
          v71 = vld4q_s16(v30);
          v31 = vcvtq_f32_u32(vmovl_u16(*v71.val[0].i8));
          v32 = vcvtq_f32_u32(vmovl_high_u16(v71.val[0]));
          v33 = vcvtq_f32_u32(vmovl_u16(*v71.val[1].i8));
          v34 = vcvtq_f32_u32(vmovl_high_u16(v71.val[1]));
          v35 = vcvtq_f32_u32(vmovl_u16(*v71.val[2].i8));
          v36 = vcvtq_f32_u32(vmovl_high_u16(v71.val[2]));
          v37 = vcvtq_f32_u32(vmovl_u16(*v71.val[3].i8));
          v71.val[0] = vcvtq_f32_u32(vmovl_high_u16(v71.val[3]));
          v38 = &v12->i16[v25];
          v71.val[1] = vmlaq_f32(v66, v67, v32);
          v71.val[2] = vmlaq_f32(v66, v67, v31);
          v71.val[3] = vmlaq_f32(v66, v67, v34);
          v39 = vmlaq_f32(v66, v67, v33);
          v40 = vmlaq_f32(v66, v67, v36);
          v41 = vmlaq_f32(v66, v67, v35);
          v42 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[3], v71.val[3], 8uLL))))), 0);
          v71.val[3] = vmlaq_f32(v66, v67, v71.val[0]);
          v71.val[0] = vmlaq_f32(v66, v67, v37);
          v72.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21), vminq_s32(v42, v21));
          v72.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[2], v71.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[1], v71.val[1], 8uLL))))), 0), v21));
          v16 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[3], v71.val[3], 8uLL))))), 0), v21);
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[0], v71.val[0], 8uLL))))), 0), v21);
          v72.val[3] = vuzp1q_s16(a3, v16);
          v72.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))), 0), v21));
          vst4q_s16(v38, v72);
          v25 += 32;
          v29 -= 8;
        }

        while (v29);
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF8);
        if (v28 != (v28 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_14:
          v43 = 2 * v22;
          v44 = v20;
          v45 = v13;
          result = v22;
          do
          {
            a3.n128_u16[0] = v45->u16[v22];
            a3.n128_f32[0] = rintf(v68 + (a3.n128_u32[0] * v69));
            v46 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            if (v46 >= 0xFFFF)
            {
              LOWORD(v46) = -1;
            }

            v47 = &v45->i8[v43];
            a3.n128_u16[0] = v45->u16[v43 / 2 + 1];
            a3.n128_f32[0] = rintf(v68 + (a3.n128_u32[0] * v69));
            v48 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            v49 = &v44[v43];
            *(v49 - 2) = v46;
            *(v49 - 1) = v48;
            a3.n128_u16[0] = *(v47 + 2);
            a3.n128_f32[0] = rintf(v68 + (a3.n128_u32[0] * v69));
            v50 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            if (v50 >= 0xFFFF)
            {
              LOWORD(v50) = -1;
            }

            a3.n128_u16[0] = *(v47 + 3);
            a3.n128_f32[0] = rintf(v68 + (a3.n128_u32[0] * v69));
            *&v44[2 * v22] = v50;
            if ((a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31)) >= 0xFFFF)
            {
              v51 = -1;
            }

            else
            {
              v51 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            }

            *(v49 + 1) = v51;
            result += 4;
            v45 = (v45 + 8);
            v44 += 8;
          }

          while (result <= v17);
        }
      }

      if (result < v15)
      {
        v52 = result;
        v53 = v15 - result;
        if (v53 < 8)
        {
          goto LABEL_37;
        }

        if (&v65[v64 * v14] <= 0xF)
        {
          goto LABEL_37;
        }

        v54 = 2 * result;
        v55 = v53 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v56 = *(v13 + v54);
          v57 = vmlaq_f32(v66, v67, vcvtq_f32_u32(vmovl_high_u16(v56)));
          v58 = vmlaq_f32(v66, v67, vcvtq_f32_u32(vmovl_u16(*v56.i8)));
          v16 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL))))), 0), v21);
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL))))), 0), v21), v16);
          *(v12 + v54) = a3;
          v54 += 16;
          v55 -= 8;
        }

        while (v55);
        v52 = (v53 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v53 != (v53 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_37:
          do
          {
            a3.n128_u16[0] = v13->u16[v52];
            a3.n128_f32[0] = rintf(v68 + (a3.n128_u32[0] * v69));
            v59 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            if (v59 >= 0xFFFF)
            {
              LOWORD(v59) = -1;
            }

            v12->i16[v52++] = v59;
          }

          while (v15 != v52);
        }
      }

      v13 = (v13 + v19);
      v12 = (v12 + v18);
      ++v14;
      v20 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100219D10(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int16x8_t *a6, unint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v65 = &a6->i8[-result];
    v62 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v63 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v64 = (a7 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v60 = result + 8;
    v61 = &a6->i64[1];
    v18 = 2 * (a7 >> 1);
    v19 = 2 * (a2 >> 1);
    v20 = &a6->i8[4];
    v68 = *v10.i32;
    v69 = *v9.i32;
    v66 = vdupq_lane_s32(v10, 0);
    v67 = vdupq_lane_s32(v9, 0);
    do
    {
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_10022838C(a3, *v16.i8, &v70, v13, v12, v15);
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      *v10.i32 = v68;
      *v9.i32 = v69;
      if (result <= v17)
      {
        v22 = result;
        v23 = v17 - result;
        if (v23 <= 0x1B)
        {
          goto LABEL_14;
        }

        v24 = v23 >> 2;
        v25 = result;
        v26 = v25 * 2 + 8 * v24;
        if (v12->u64 + v25 * 2 < v60 + v62 * v14 + v26 && v13 + 2 * result < v61 + v63 * v14 + v26)
        {
          goto LABEL_14;
        }

        v28 = v24 + 1;
        v22 = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF8);
        v29 = v28 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v30 = &v13->i16[v25];
          v71 = vld4q_s16(v30);
          v31 = vcvtq_f32_s32(vmovl_s16(*v71.val[0].i8));
          v32 = vcvtq_f32_s32(vmovl_high_s16(v71.val[0]));
          v33 = vcvtq_f32_s32(vmovl_s16(*v71.val[1].i8));
          v34 = vcvtq_f32_s32(vmovl_high_s16(v71.val[1]));
          v35 = vcvtq_f32_s32(vmovl_s16(*v71.val[2].i8));
          v36 = vcvtq_f32_s32(vmovl_high_s16(v71.val[2]));
          v37 = vcvtq_f32_s32(vmovl_s16(*v71.val[3].i8));
          v71.val[0] = vcvtq_f32_s32(vmovl_high_s16(v71.val[3]));
          v38 = &v12->i16[v25];
          v71.val[1] = vmlaq_f32(v66, v67, v32);
          v71.val[2] = vmlaq_f32(v66, v67, v31);
          v71.val[3] = vmlaq_f32(v66, v67, v34);
          v39 = vmlaq_f32(v66, v67, v33);
          v40 = vmlaq_f32(v66, v67, v36);
          v41 = vmlaq_f32(v66, v67, v35);
          v42 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[3], v71.val[3], 8uLL))))), 0);
          v71.val[3] = vmlaq_f32(v66, v67, v71.val[0]);
          v71.val[0] = vmlaq_f32(v66, v67, v37);
          v72.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21), vminq_s32(v42, v21));
          v72.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[2], v71.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[1], v71.val[1], 8uLL))))), 0), v21));
          v16 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[3], v71.val[3], 8uLL))))), 0), v21);
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[0], v71.val[0], 8uLL))))), 0), v21);
          v72.val[3] = vuzp1q_s16(a3, v16);
          v72.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))), 0), v21));
          vst4q_s16(v38, v72);
          v25 += 32;
          v29 -= 8;
        }

        while (v29);
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF8);
        if (v28 != (v28 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_14:
          v43 = 2 * v22;
          v44 = v20;
          v45 = v13;
          result = v22;
          do
          {
            a3.n128_u16[0] = v45->u16[v22];
            a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
            a3.n128_f32[0] = rintf(v68 + (a3.n128_i32[0] * v69));
            v46 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            if (v46 >= 0xFFFF)
            {
              LOWORD(v46) = -1;
            }

            v47 = &v45->i8[v43];
            a3.n128_u16[0] = v45->u16[v43 / 2 + 1];
            a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
            a3.n128_f32[0] = rintf(v68 + (a3.n128_i32[0] * v69));
            v48 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            v49 = &v44[v43];
            *(v49 - 2) = v46;
            *(v49 - 1) = v48;
            a3.n128_u16[0] = *(v47 + 2);
            a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
            a3.n128_f32[0] = rintf(v68 + (a3.n128_i32[0] * v69));
            v50 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            if (v50 >= 0xFFFF)
            {
              LOWORD(v50) = -1;
            }

            a3.n128_u16[0] = *(v47 + 3);
            a3 = vmovl_s16(a3.n128_u64[0]);
            a3.n128_f32[0] = rintf(v68 + (a3.n128_i32[0] * v69));
            *&v44[2 * v22] = v50;
            if ((a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31)) >= 0xFFFF)
            {
              v51 = -1;
            }

            else
            {
              v51 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            }

            *(v49 + 1) = v51;
            result += 4;
            v45 = (v45 + 8);
            v44 += 8;
          }

          while (result <= v17);
        }
      }

      if (result < v15)
      {
        v52 = result;
        v53 = v15 - result;
        if (v53 < 8)
        {
          goto LABEL_37;
        }

        if (&v65[v64 * v14] <= 0xF)
        {
          goto LABEL_37;
        }

        v54 = 2 * result;
        v55 = v53 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v56 = *(v13 + v54);
          v57 = vmlaq_f32(v66, v67, vcvtq_f32_s32(vmovl_high_s16(v56)));
          v58 = vmlaq_f32(v66, v67, vcvtq_f32_s32(vmovl_s16(*v56.i8)));
          v16 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL))))), 0), v21);
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL))))), 0), v21), v16);
          *(v12 + v54) = a3;
          v54 += 16;
          v55 -= 8;
        }

        while (v55);
        v52 = (v53 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v53 != (v53 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_37:
          do
          {
            a3.n128_u16[0] = v13->u16[v52];
            a3 = vmovl_s16(a3.n128_u64[0]);
            a3.n128_f32[0] = rintf(v68 + (a3.n128_i32[0] * v69));
            v59 = a3.n128_f32[0] & ~(a3.n128_f32[0] >> 31);
            if (v59 >= 0xFFFF)
            {
              LOWORD(v59) = -1;
            }

            v12->i16[v52++] = v59;
          }

          while (v15 != v52);
        }
      }

      v13 = (v13 + v19);
      v12 = (v12 + v18);
      ++v14;
      v20 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021A244(uint64_t result, unint64_t a2, __n128 a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, int16x8_t *a10, unint64_t a11, int *a12, uint64_t a13)
{
  v13 = a12[1];
  if (v13)
  {
    v15 = result;
    v16 = *a12;
    a3.n128_u64[0] = *a13;
    v17 = *(a13 + 8);
    *&a7 = *a13;
    *&v17 = v17;
    v18 = v16 - 4;
    v19 = 2 * (a11 >> 1);
    v20 = 4 * (a2 >> 2);
    v51 = v17;
    v52 = *&a7;
    v49 = vdupq_lane_s32(*&v17, 0);
    v50 = vdupq_lane_s32(*&a7, 0);
    do
    {
      a3.n128_u32[0] = LODWORD(a7);
      result = sub_1002285D4(a3, *&v17, &v53, v15, a10, v16);
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      if (result <= v18)
      {
        v22 = result;
        v23 = v18 - result;
        result = result;
        if (v23 <= 0x1B)
        {
          goto LABEL_9;
        }

        v24 = (v23 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v25 = v22;
        v26 = v22;
        v27 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = &v15->i32[v26];
          v54 = vld4q_f32(v28);
          v28 += 16;
          v55 = vld4q_f32(v28);
          v29 = vcvtq_f32_s32(v54.val[1]);
          v30 = vcvtq_f32_s32(v54.val[2]);
          v31 = vcvtq_f32_s32(v54.val[3]);
          v32 = &a10->i16[v25];
          v54.val[0] = vmlaq_f32(v49, v50, vcvtq_f32_s32(v54.val[0]));
          v54.val[1] = vmlaq_f32(v49, v50, vcvtq_f32_s32(v55.val[0]));
          v54.val[2] = vmlaq_f32(v49, v50, v29);
          v54.val[3] = vmlaq_f32(v49, v50, vcvtq_f32_s32(v55.val[1]));
          v55.val[1] = vcvtq_f64_f32(vrndx_f32(*v54.val[1].f32));
          v55.val[0] = vmlaq_f32(v49, v50, v30);
          v33 = vmlaq_f32(v49, v50, vcvtq_f32_s32(v55.val[2]));
          v34 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[1], v54.val[1], 8uLL))));
          v54.val[1] = vmlaq_f32(v49, v50, v31);
          v35 = vmlaq_f32(v49, v50, vcvtq_f32_s32(v55.val[3]));
          v55.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[2], v54.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[3], v54.val[3], 8uLL))))), 0), v21));
          v55.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[0], v54.val[0], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v55.val[1]), v34), 0), v21));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), 0), v21);
          v36 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[1], v54.val[1], 8uLL))))), 0), v21), a3);
          v55.val[3] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55.val[0], v55.val[0], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))))), 0), v21));
          vst4q_s16(v32, *(&v55 + 16));
          v25 += 32;
          v26 += 32;
          v27 -= 8;
        }

        while (v27);
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v37 = 2 * result;
          v38 = 4 * result;
          do
          {
            v39 = vmlaq_f32(v49, v50, vcvtq_f32_s32(*(v15 + v38)));
            a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21);
            a3.n128_u64[0] = vmovn_s32(a3);
            *(a10->i64 + v37) = a3.n128_u64[0];
            result += 4;
            v37 += 8;
            v38 += 16;
          }

          while (result <= v18);
        }
      }

      v17 = v51;
      *&a7 = v52;
      if (result < v16)
      {
        v40 = v16 - result;
        v41 = result;
        if (v40 <= 7)
        {
          goto LABEL_22;
        }

        v41 = (v40 & 0xFFFFFFFFFFFFFFF8) + result;
        v42 = 4 * result;
        v43 = 2 * result;
        v44 = v40 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45 = vmlaq_f32(v49, v50, vcvtq_f32_s32(*(&v15[1] + v42)));
          v46 = vmlaq_f32(v49, v50, vcvtq_f32_s32(*(v15 + v42)));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0), v21));
          *(a10 + v43) = a3;
          v42 += 32;
          v43 += 16;
          v44 -= 8;
        }

        while (v44);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            v47 = rintf(*&v51 + (v15->i32[v41] * v52));
            v48 = v47 & ~(v47 >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            a10->i16[v41++] = v48;
          }

          while (v16 != v41);
        }
      }

      v15 = (v15 + v20);
      a10 = (a10 + v19);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10021A66C(uint64_t result, unint64_t a2, int16x8_t a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, int16x8_t *a10, unint64_t a11, int *a12, uint64_t a13)
{
  v13 = a12[1];
  if (v13)
  {
    v15 = result;
    v16 = *a12;
    a3.i64[0] = *a13;
    v17 = *(a13 + 8);
    *&a7 = *a13;
    *&v17 = v17;
    v18 = v16 - 4;
    v19 = 2 * (a11 >> 1);
    v20 = 4 * (a2 >> 2);
    v51 = v17;
    v52 = *&a7;
    v49 = vdupq_lane_s32(*&v17, 0);
    v50 = vdupq_lane_s32(*&a7, 0);
    do
    {
      a3.i32[0] = LODWORD(a7);
      result = sub_100228818(a3, *&v17, &v53, v15, a10, v16);
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      if (result <= v18)
      {
        v22 = result;
        v23 = v18 - result;
        result = result;
        if (v23 <= 0x1B)
        {
          goto LABEL_9;
        }

        v24 = (v23 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v25 = 2 * v22;
        v26 = 4 * v22;
        v27 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = vmlaq_f32(v49, v50, *(v15 + v26 + 16));
          v29 = vmlaq_f32(v49, v50, *(v15 + v26));
          v30 = vmlaq_f32(v49, v50, *(v15 + v26 + 32));
          v31 = vmlaq_f32(v49, v50, *(v15 + v26 + 48));
          v32 = vmlaq_f32(v49, v50, *(v15 + v26 + 64));
          v33 = vmlaq_f32(v49, v50, *(v15 + v26 + 80));
          v34 = vmlaq_f32(v49, v50, *(v15 + v26 + 96));
          v35 = vmlaq_f32(v49, v50, *(v15 + v26 + 112));
          v36 = (a10 + v25);
          *v36 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v29.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v29, v29, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v28.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v28, v28, 8uLL))))), 0), v21));
          v36[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), 0), v21));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))))), 0), v21));
          v36[2] = a3;
          v36[3] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), 0), v21));
          v25 += 64;
          v26 += 128;
          v27 -= 8;
        }

        while (v27);
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v37 = 2 * result;
          v38 = 4 * result;
          do
          {
            v39 = vmlaq_f32(v49, v50, *(v15 + v38));
            a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21);
            *a3.i8 = vmovn_s32(a3);
            *(a10->i64 + v37) = a3.i64[0];
            result += 4;
            v37 += 8;
            v38 += 16;
          }

          while (result <= v18);
        }
      }

      v17 = v51;
      *&a7 = v52;
      if (result < v16)
      {
        v40 = v16 - result;
        v41 = result;
        if (v40 <= 7)
        {
          goto LABEL_22;
        }

        v41 = (v40 & 0xFFFFFFFFFFFFFFF8) + result;
        v42 = 4 * result;
        v43 = 2 * result;
        v44 = v40 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45 = vmlaq_f32(v49, v50, *(v15 + v42 + 16));
          v46 = vmlaq_f32(v49, v50, *(v15 + v42));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0), v21));
          *(a10 + v43) = a3;
          v42 += 32;
          v43 += 16;
          v44 -= 8;
        }

        while (v44);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            v47 = rintf(*&v51 + (v15->f32[v41] * v52));
            v48 = v47 & ~(v47 >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            a10->i16[v41++] = v48;
          }

          while (v16 != v41);
        }
      }

      v15 = (v15 + v20);
      a10 = (a10 + v19);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10021AA70(uint64_t result, unint64_t a2, double a3, double a4, float64x2_t a5, int32x4_t a6, float64x2_t a7, __n128 a8, uint64_t a9, uint64_t a10, int16x8_t *a11, unint64_t a12, int *a13, double *a14)
{
  v14 = a13[1];
  if (v14)
  {
    v16 = result;
    v17 = *a13;
    v18 = *a14;
    v19 = a14[1];
    a8.n128_f64[0] = v18;
    v20 = v17 - 4;
    v21 = 2 * (a12 >> 1);
    v22 = 8 * (a2 >> 3);
    v44 = a8;
    v42 = vdupq_lane_s64(COERCE__INT64(v19), 0);
    v43 = vdupq_lane_s64(COERCE__INT64(v18), 0);
    do
    {
      result = sub_100228A54(v18, v19, a5.f64[0], *a6.i64, a7.f64[0], a8, &v45, v16, a11, v17);
      v23.i64[0] = 0xFFFF0000FFFFLL;
      v23.i64[1] = 0xFFFF0000FFFFLL;
      if (result <= v20)
      {
        v24 = result;
        v25 = v20 - result;
        result = result;
        if (v25 <= 0x1B)
        {
          goto LABEL_9;
        }

        v26 = (v25 >> 2) + 1;
        result = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
        v27 = 2 * v24;
        v28 = 8 * v24;
        v29 = v26 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v30 = (a11 + v27);
          a6 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 128)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 144))))), 0), v23);
          a5 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 160)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 176))))), 0), v23);
          v31 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 192)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 208))))), 0), v23), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 224)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 240))))), 0), v23));
          v32 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 80))))), 0), v23), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 112))))), 0), v23));
          a7 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 16))))), 0), v23), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 48))))), 0), v23));
          *v30 = a7;
          v30[1] = v32;
          v30[2] = vuzp1q_s16(a6, a5);
          v30[3] = v31;
          v27 += 64;
          v28 += 256;
          v29 -= 8;
        }

        while (v29);
        if (v26 != (v26 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v33 = 2 * result;
          v34 = 8 * result;
          do
          {
            a5 = vmlaq_f64(v42, v43, *(v16 + v34));
            *&a11->i8[v33] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(a5)), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v34 + 16))))), 0), v23));
            result += 4;
            v33 += 8;
            v34 += 32;
          }

          while (result <= v20);
        }
      }

      a8 = v44;
      if (result < v17)
      {
        v35 = v17 - result;
        v36 = result;
        if (v35 <= 7)
        {
          goto LABEL_22;
        }

        v36 = (v35 & 0xFFFFFFFFFFFFFFF8) + result;
        v37 = 8 * result;
        v38 = 2 * result;
        v39 = v35 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          a7 = vmlaq_f64(v42, v43, *(v16 + v37));
          a6 = vcvtq_s64_f64(vrndxq_f64(a7));
          a5 = vuzp1q_s32(a6, vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v37 + 16)))));
          *(a11 + v38) = vuzp1q_s16(vminq_s32(vmaxq_s32(a5, 0), v23), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v37 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v37 + 48))))), 0), v23));
          v37 += 64;
          v38 += 16;
          v39 -= 8;
        }

        while (v39);
        if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            v40 = rint(v19 + v16->f64[v36] * v44.n128_f64[0]);
            v41 = v40 & ~(v40 >> 31);
            if (v41 >= 0xFFFF)
            {
              LOWORD(v41) = -1;
            }

            a11->i16[v36++] = v41;
          }

          while (v17 != v36);
        }
      }

      v16 = (v16 + v22);
      a11 = (a11 + v21);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_10021AE74(uint64_t result, uint64_t a2, int32x4_t a3, uint64_t a4, uint64_t a5, int16x8_t *a6, unint64_t a7, int *a8, unint64_t *a9)
{
  v92 = result;
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = 0;
    v14 = *a8;
    a3.i64[0] = *a9;
    v15.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v89 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v84 = &a6->i64[1];
    v85 = a2;
    v83 = &a6->i8[2 * v14];
    v87 = 2 * (a7 >> 1);
    v17 = result;
    v90 = *v10.i32;
    v91 = *v9.i32;
    v88 = vdupq_lane_s32(v9, 0);
    v86 = vdupq_lane_s32(v10, 0);
    do
    {
      v96 = v11;
      v94 = v89 * v13;
      v95 = v13;
      v93 = v92 + v13 * a2;
      a3.i32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100228CBC(a3, *v15.i8, v97, v17, v12, v14);
      *v10.i32 = v90;
      *v9.i32 = v91;
      if (result > v16)
      {
        goto LABEL_34;
      }

      v18 = result;
      v19 = v16 - result;
      if (v19 > 0x3B && ((v20 = result, v12->u64 + v20 * 2 < v93 + 4 + (v19 & 0xFFFFFFFFFFFFFFFCLL) + result) ? (v21 = v17 + result >= &v84[v19 >> 2] + 2 * result + v94) : (v21 = 1), v21))
      {
        v22 = (v19 >> 2) + 1;
        result = result + 4 * (v22 & 0x7FFFFFFFFFFFFFF0);
        v23 = v22 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v24 = (v17 + v18);
          v98 = vld4q_s8(v24);
          v25 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[0], xmmword_1003E3700));
          v26 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[0], xmmword_1003E3710));
          v27 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[0], xmmword_1003E3720));
          v28 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[0], xmmword_1003E3730));
          v29 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[1], xmmword_1003E3700));
          v30 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[1], xmmword_1003E3710));
          v31 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[1], xmmword_1003E3720));
          v32 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[1], xmmword_1003E3730));
          v33 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[2], xmmword_1003E3720));
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[2], xmmword_1003E3730));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[2], xmmword_1003E3700));
          v36 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[2], xmmword_1003E3710));
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[3], xmmword_1003E3720));
          v38 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[3], xmmword_1003E3730));
          v98.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v98.val[3], xmmword_1003E3700));
          v98.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v98.val[3], xmmword_1003E3710));
          v39 = &v12->i16[v20];
          v40 = vmlaq_f32(v86, v88, v28);
          v41 = vmlaq_f32(v86, v88, v27);
          v42 = vmlaq_f32(v86, v88, v32);
          v43 = vmlaq_f32(v86, v88, v31);
          v44 = vmlaq_f32(v86, v88, v30);
          v98.val[3] = vmlaq_f32(v86, v88, v29);
          v98.val[2] = vmlaq_f32(v86, v88, v26);
          v45 = vmlaq_f32(v86, v88, v25);
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8)));
          v47 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL)));
          v48 = vmlaq_f32(v86, v88, v98.val[1]);
          v98.val[1] = vmlaq_f32(v86, v88, v98.val[0]);
          v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL)))));
          v98.val[0] = vmlaq_f32(v86, v88, v36);
          v50 = vmlaq_f32(v86, v88, v35);
          v51 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[0].i8)));
          v52 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[0], v98.val[0], 8uLL))));
          v98.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[2], v98.val[2], 8uLL))))));
          v53 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[1], v98.val[1], 8uLL)))));
          *v26.f32 = vqmovn_s32(v49);
          v54 = vmlaq_f32(v86, v88, v34);
          v55 = vmlaq_f32(v86, v88, v33);
          v99.val[1] = vqmovn_high_s32(*v26.f32, vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))));
          v56 = vmlaq_f32(v86, v88, v38);
          v57 = vmlaq_f32(v86, v88, v37);
          v98.val[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[3], v98.val[3], 8uLL)))))), vuzp1q_s32(v46, vcvtq_s64_f64(v47)));
          v99.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))));
          v98.val[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL)))))), vuzp1q_s32(v51, v52));
          v15 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL)))));
          a3 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL)))));
          v98.val[3] = vqmovn_high_s32(vqmovn_s32(v53), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL))))));
          v99.val[3] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL)))))), a3);
          v99.val[2] = vqmovn_high_s32(vqmovn_s32(v15), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))));
          vst4q_s16(v39, v99);
          v39 += 32;
          vst4q_s16(v39, v98);
          v20 += 64;
          v18 += 64;
          v23 -= 16;
        }

        while (v23);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = result;
      }

      v58 = &v12->i16[result];
      do
      {
        v59 = (v17 + result);
        a3.i8[0] = *(v17 + result);
        *a3.i32 = rintf(v90 + (a3.u32[0] * v91));
        v60 = *a3.i32;
        if (*a3.i32 <= -32768)
        {
          LODWORD(v60) = -32768;
        }

        if (v60 >= 0x7FFF)
        {
          LOWORD(v60) = 0x7FFF;
        }

        a3.i8[0] = v59[1];
        *a3.i32 = rintf(v90 + (a3.u32[0] * v91));
        v61 = *a3.i32;
        if (*a3.i32 <= -32768)
        {
          LODWORD(v61) = -32768;
        }

        if (v61 >= 0x7FFF)
        {
          LOWORD(v61) = 0x7FFF;
        }

        *v58 = v60;
        v58[1] = v61;
        a3.i8[0] = v59[2];
        *a3.i32 = rintf(v90 + (a3.u32[0] * v91));
        v62 = *a3.i32;
        if (*a3.i32 <= -32768)
        {
          LODWORD(v62) = -32768;
        }

        if (v62 >= 0x7FFF)
        {
          LOWORD(v62) = 0x7FFF;
        }

        a3.i8[0] = v59[3];
        *a3.i32 = rintf(v90 + (a3.u32[0] * v91));
        v63 = *a3.i32;
        if (*a3.i32 <= -32768)
        {
          LODWORD(v63) = -32768;
        }

        if (v63 >= 0x7FFF)
        {
          LOWORD(v63) = 0x7FFF;
        }

        v58[2] = v62;
        v58[3] = v63;
        result += 4;
        v58 += 4;
      }

      while (result <= v16);
LABEL_34:
      a2 = v85;
      if (result < v14)
      {
        v64 = v14 - result;
        if (v64 < 4)
        {
          v65 = result;
          goto LABEL_53;
        }

        if (v12 + 2 * result < v93 + v14 && v17 + result < &v83[v94])
        {
          v65 = result;
          goto LABEL_53;
        }

        if (v64 >= 0x10)
        {
          v67 = v64 & 0xFFFFFFFFFFFFFFF0;
          v68 = 2 * result;
          v69 = result;
          v70 = v64 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v71 = *(v17 + v69);
            v72 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vqtbl1q_s8(v71, xmmword_1003E3710)));
            v73 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vqtbl1q_s8(v71, xmmword_1003E3700)));
            v74 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vqtbl1q_s8(v71, xmmword_1003E3720)));
            v75 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vqtbl1q_s8(v71, xmmword_1003E3730)));
            a3 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))));
            v15 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))));
            v76 = &v12->i8[v68];
            *v76 = a3;
            v76[1] = v15;
            v69 += 16;
            v68 += 32;
            v70 -= 16;
          }

          while (v70);
          if (v64 == v67)
          {
            goto LABEL_3;
          }

          if ((v64 & 0xC) == 0)
          {
            v65 = v67 + result;
            do
            {
LABEL_53:
              a3.i8[0] = *(v17 + v65);
              *a3.i32 = rintf(v90 + (a3.u32[0] * v91));
              v82 = *a3.i32;
              if (*a3.i32 <= -32768)
              {
                LODWORD(v82) = -32768;
              }

              if (v82 >= 0x7FFF)
              {
                LOWORD(v82) = 0x7FFF;
              }

              v12->i16[v65++] = v82;
            }

            while (v14 != v65);
            goto LABEL_3;
          }
        }

        else
        {
          v67 = 0;
        }

        v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v77 = v67 - (v64 & 0xFFFFFFFFFFFFFFFCLL);
        v78 = v67 + result;
        v79 = 2 * v78;
        do
        {
          a3.i32[0] = *(v17 + v78);
          v80 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a3.i8))));
          v81 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8)));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))));
          a3 = vuzp1q_s32(v81, v15);
          *a3.i8 = vqmovn_s32(a3);
          *(v12->i64 + v79) = a3.i64[0];
          v78 += 4;
          v79 += 8;
          v77 += 4;
        }

        while (v77);
        if (v64 != (v64 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_53;
        }
      }

LABEL_3:
      v17 += v85;
      v12 = (v12 + v87);
      v13 = v95 + 1;
      v11 = v96 - 1;
    }

    while (v96 != 1);
  }

  return result;
}

uint64_t sub_10021B688(uint64_t result, uint64_t a2, int32x4_t a3, uint64_t a4, uint64_t a5, int16x8_t *a6, unint64_t a7, int *a8, unint64_t *a9)
{
  v92 = result;
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = 0;
    v14 = *a8;
    a3.i64[0] = *a9;
    v15.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v89 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v84 = &a6->i64[1];
    v85 = a2;
    v83 = &a6->i8[2 * v14];
    v87 = 2 * (a7 >> 1);
    v17 = result;
    v90 = *v10.i32;
    v91 = *v9.i32;
    v88 = vdupq_lane_s32(v9, 0);
    v86 = vdupq_lane_s32(v10, 0);
    do
    {
      v96 = v11;
      v94 = v89 * v13;
      v95 = v13;
      v93 = v92 + v13 * a2;
      a3.i32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100228EE4(a3, *v15.i8, v97, v17, v12, v14);
      *v10.i32 = v90;
      *v9.i32 = v91;
      if (result > v16)
      {
        goto LABEL_34;
      }

      v18 = result;
      v19 = v16 - result;
      if (v19 > 0x3B && ((v20 = result, v12->u64 + v20 * 2 < v93 + 4 + (v19 & 0xFFFFFFFFFFFFFFFCLL) + result) ? (v21 = v17 + result >= &v84[v19 >> 2] + 2 * result + v94) : (v21 = 1), v21))
      {
        v22 = (v19 >> 2) + 1;
        result = result + 4 * (v22 & 0x7FFFFFFFFFFFFFF0);
        v23 = v22 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v24 = (v17 + v18);
          v98 = vld4q_s8(v24);
          v25 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[0], xmmword_1003E3740), 0x18uLL);
          v26 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[0], xmmword_1003E3750), 0x18uLL);
          v27 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[0], xmmword_1003E3760), 0x18uLL);
          v28 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[0], xmmword_1003E3770), 0x18uLL);
          v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[1], xmmword_1003E3740), 0x18uLL);
          v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[1], xmmword_1003E3750), 0x18uLL);
          v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[1], xmmword_1003E3760), 0x18uLL);
          v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[1], xmmword_1003E3770), 0x18uLL);
          v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[2], xmmword_1003E3760), 0x18uLL);
          v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[2], xmmword_1003E3770), 0x18uLL);
          v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[2], xmmword_1003E3740), 0x18uLL);
          v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[2], xmmword_1003E3750), 0x18uLL);
          v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[3], xmmword_1003E3760), 0x18uLL);
          v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[3], xmmword_1003E3770), 0x18uLL);
          v98.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[3], xmmword_1003E3740), 0x18uLL);
          v98.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[3], xmmword_1003E3750), 0x18uLL);
          v39 = &v12->i16[v20];
          v40 = vmlaq_f32(v86, v88, v28);
          v41 = vmlaq_f32(v86, v88, v27);
          v42 = vmlaq_f32(v86, v88, v32);
          v43 = vmlaq_f32(v86, v88, v31);
          v44 = vmlaq_f32(v86, v88, v30);
          v98.val[3] = vmlaq_f32(v86, v88, v29);
          v98.val[2] = vmlaq_f32(v86, v88, v26);
          v45 = vmlaq_f32(v86, v88, v25);
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8)));
          v47 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL)));
          v48 = vmlaq_f32(v86, v88, v98.val[1]);
          v98.val[1] = vmlaq_f32(v86, v88, v98.val[0]);
          v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL)))));
          v98.val[0] = vmlaq_f32(v86, v88, v36);
          v50 = vmlaq_f32(v86, v88, v35);
          v51 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[0].i8)));
          v52 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[0], v98.val[0], 8uLL))));
          v98.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[2], v98.val[2], 8uLL))))));
          v53 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[1], v98.val[1], 8uLL)))));
          *v26.f32 = vqmovn_s32(v49);
          v54 = vmlaq_f32(v86, v88, v34);
          v55 = vmlaq_f32(v86, v88, v33);
          v99.val[1] = vqmovn_high_s32(*v26.f32, vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))));
          v56 = vmlaq_f32(v86, v88, v38);
          v57 = vmlaq_f32(v86, v88, v37);
          v98.val[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[3], v98.val[3], 8uLL)))))), vuzp1q_s32(v46, vcvtq_s64_f64(v47)));
          v99.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))));
          v98.val[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL)))))), vuzp1q_s32(v51, v52));
          v15 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL)))));
          a3 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL)))));
          v98.val[3] = vqmovn_high_s32(vqmovn_s32(v53), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL))))));
          v99.val[3] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL)))))), a3);
          v99.val[2] = vqmovn_high_s32(vqmovn_s32(v15), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))));
          vst4q_s16(v39, v99);
          v39 += 32;
          vst4q_s16(v39, v98);
          v20 += 64;
          v18 += 64;
          v23 -= 16;
        }

        while (v23);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = result;
      }

      v58 = &v12->i16[result];
      do
      {
        v59 = (v17 + result);
        a3.i8[0] = *(v17 + result);
        a3.i64[0] = vmovl_s16(*&vmovl_s8(*a3.i8)).u64[0];
        *a3.i32 = rintf(v90 + (a3.i32[0] * v91));
        v60 = *a3.i32;
        if (*a3.i32 <= -32768)
        {
          LODWORD(v60) = -32768;
        }

        a3.i8[0] = v59[1];
        a3.i64[0] = vmovl_s16(*&vmovl_s8(*a3.i8)).u64[0];
        *a3.i32 = rintf(v90 + (a3.i32[0] * v91));
        v61 = *a3.i32;
        if (v60 >= 0x7FFF)
        {
          LOWORD(v60) = 0x7FFF;
        }

        if (v61 <= -32768)
        {
          LODWORD(v61) = -32768;
        }

        if (v61 >= 0x7FFF)
        {
          LOWORD(v61) = 0x7FFF;
        }

        *v58 = v60;
        v58[1] = v61;
        a3.i8[0] = v59[2];
        a3.i64[0] = vmovl_s16(*&vmovl_s8(*a3.i8)).u64[0];
        *a3.i32 = rintf(v90 + (a3.i32[0] * v91));
        v62 = *a3.i32;
        if (*a3.i32 <= -32768)
        {
          LODWORD(v62) = -32768;
        }

        if (v62 >= 0x7FFF)
        {
          LOWORD(v62) = 0x7FFF;
        }

        a3.i8[0] = v59[3];
        a3 = vmovl_s16(*&vmovl_s8(*a3.i8));
        *a3.i32 = rintf(v90 + (a3.i32[0] * v91));
        v63 = *a3.i32;
        if (*a3.i32 <= -32768)
        {
          LODWORD(v63) = -32768;
        }

        if (v63 >= 0x7FFF)
        {
          LOWORD(v63) = 0x7FFF;
        }

        v58[2] = v62;
        v58[3] = v63;
        result += 4;
        v58 += 4;
      }

      while (result <= v16);
LABEL_34:
      a2 = v85;
      if (result < v14)
      {
        v64 = v14 - result;
        if (v64 < 4)
        {
          v65 = result;
          goto LABEL_53;
        }

        if (v12 + 2 * result < v93 + v14 && v17 + result < &v83[v94])
        {
          v65 = result;
          goto LABEL_53;
        }

        if (v64 >= 0x10)
        {
          v67 = v64 & 0xFFFFFFFFFFFFFFF0;
          v68 = 2 * result;
          v69 = result;
          v70 = v64 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v71 = *(v17 + v69);
            v72 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v71, xmmword_1003E3750), 0x18uLL));
            v73 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v71, xmmword_1003E3740), 0x18uLL));
            v74 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v71, xmmword_1003E3760), 0x18uLL));
            v75 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v71, xmmword_1003E3770), 0x18uLL));
            a3 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))));
            v15 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))));
            v76 = &v12->i8[v68];
            *v76 = a3;
            v76[1] = v15;
            v69 += 16;
            v68 += 32;
            v70 -= 16;
          }

          while (v70);
          if (v64 == v67)
          {
            goto LABEL_3;
          }

          if ((v64 & 0xC) == 0)
          {
            v65 = v67 + result;
            do
            {
LABEL_53:
              a3.i8[0] = *(v17 + v65);
              a3 = vmovl_s16(*&vmovl_s8(*a3.i8));
              *a3.i32 = rintf(v90 + (a3.i32[0] * v91));
              v82 = *a3.i32;
              if (*a3.i32 <= -32768)
              {
                LODWORD(v82) = -32768;
              }

              if (v82 >= 0x7FFF)
              {
                LOWORD(v82) = 0x7FFF;
              }

              v12->i16[v65++] = v82;
            }

            while (v14 != v65);
            goto LABEL_3;
          }
        }

        else
        {
          v67 = 0;
        }

        v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v77 = v67 - (v64 & 0xFFFFFFFFFFFFFFFCLL);
        v78 = v67 + result;
        v79 = 2 * v78;
        do
        {
          a3.i32[0] = *(v17 + v78);
          v80 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(a3, xmmword_1003E3760), 0x18uLL));
          v81 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8)));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))));
          a3 = vuzp1q_s32(v81, v15);
          *a3.i8 = vqmovn_s32(a3);
          *(v12->i64 + v79) = a3.i64[0];
          v78 += 4;
          v79 += 8;
          v77 += 4;
        }

        while (v77);
        if (v64 != (v64 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_53;
        }
      }

LABEL_3:
      v17 += v85;
      v12 = (v12 + v87);
      v13 = v95 + 1;
      v11 = v96 - 1;
    }

    while (v96 != 1);
  }

  return result;
}

uint64_t sub_10021BEC4(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int16x8_t *a6, unint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v67 = &a6->i8[-result];
    v64 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v65 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v66 = (a7 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v62 = result + 8;
    v63 = &a6->i64[1];
    v18 = 2 * (a7 >> 1);
    v68 = 2 * (a2 >> 1);
    v19 = &a6->i8[4];
    v71 = *v10.i32;
    v72 = *v9.i32;
    v69 = vdupq_lane_s32(v10, 0);
    v70 = vdupq_lane_s32(v9, 0);
    do
    {
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_10022910C(a3, *v16.i8, &v73, v13, v12, v15);
      *v10.i32 = v71;
      *v9.i32 = v72;
      if (result <= v17)
      {
        v20 = result;
        v21 = v17 - result;
        if (v21 <= 0x1B)
        {
          goto LABEL_14;
        }

        v22 = v21 >> 2;
        v23 = result;
        v24 = v23 * 2 + 8 * v22;
        if (v12->u64 + v23 * 2 < v62 + v64 * v14 + v24 && v13 + 2 * result < v63 + v65 * v14 + v24)
        {
          goto LABEL_14;
        }

        v26 = v22 + 1;
        v20 = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
        v27 = v26 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = &v13->i16[v23];
          v74 = vld4q_s16(v28);
          v29 = vcvtq_f32_u32(vmovl_u16(*v74.val[0].i8));
          v30 = vcvtq_f32_u32(vmovl_high_u16(v74.val[0]));
          v31 = vcvtq_f32_u32(vmovl_u16(*v74.val[1].i8));
          v32 = vcvtq_f32_u32(vmovl_high_u16(v74.val[1]));
          v33 = vcvtq_f32_u32(vmovl_u16(*v74.val[2].i8));
          v34 = vcvtq_f32_u32(vmovl_high_u16(v74.val[2]));
          v35 = vcvtq_f32_u32(vmovl_u16(*v74.val[3].i8));
          v74.val[0] = vcvtq_f32_u32(vmovl_high_u16(v74.val[3]));
          v74.val[1] = vmlaq_f32(v69, v70, v30);
          v74.val[2] = vmlaq_f32(v69, v70, v29);
          v74.val[3] = vmlaq_f32(v69, v70, v32);
          v36 = vmlaq_f32(v69, v70, v31);
          v37 = vmlaq_f32(v69, v70, v34);
          v38 = vmlaq_f32(v69, v70, v33);
          v39 = vmlaq_f32(v69, v70, v74.val[0]);
          v40 = vmlaq_f32(v69, v70, v35);
          v41 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[3], v74.val[3], 8uLL))))));
          a3 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL)))));
          v16 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[2], v74.val[2], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[1], v74.val[1], 8uLL))))));
          v74.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))));
          v42 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL)))))), a3);
          v43 = &v12->i16[v23];
          vst4q_s16(v43, *v16.i8);
          v23 += 32;
          v27 -= 8;
        }

        while (v27);
        result = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
        if (v26 != (v26 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_14:
          v44 = 2 * v20;
          v45 = v19;
          v46 = v13;
          result = v20;
          do
          {
            a3.n128_u16[0] = v46->u16[v20];
            a3.n128_f32[0] = rintf(v71 + (a3.n128_u32[0] * v72));
            v47 = a3.n128_f32[0];
            if (a3.n128_f32[0] <= -32768)
            {
              LODWORD(v47) = -32768;
            }

            if (v47 >= 0x7FFF)
            {
              LOWORD(v47) = 0x7FFF;
            }

            v48 = &v46->i8[v44];
            a3.n128_u16[0] = v46->u16[v44 / 2 + 1];
            a3.n128_f32[0] = rintf(v71 + (a3.n128_u32[0] * v72));
            v49 = a3.n128_f32[0];
            if (a3.n128_f32[0] <= -32768)
            {
              LODWORD(v49) = -32768;
            }

            if (v49 >= 0x7FFF)
            {
              LOWORD(v49) = 0x7FFF;
            }

            v50 = &v45[v44];
            *(v50 - 2) = v47;
            *(v50 - 1) = v49;
            a3.n128_u16[0] = *(v48 + 2);
            a3.n128_f32[0] = rintf(v71 + (a3.n128_u32[0] * v72));
            v51 = a3.n128_f32[0];
            if (a3.n128_f32[0] <= -32768)
            {
              LODWORD(v51) = -32768;
            }

            a3.n128_u16[0] = *(v48 + 3);
            a3.n128_f32[0] = rintf(v71 + (a3.n128_u32[0] * v72));
            v52 = a3.n128_f32[0];
            if (v51 >= 0x7FFF)
            {
              LOWORD(v51) = 0x7FFF;
            }

            if (v52 <= -32768)
            {
              LODWORD(v52) = -32768;
            }

            *&v45[2 * v20] = v51;
            if (v52 >= 0x7FFF)
            {
              v53 = 0x7FFF;
            }

            else
            {
              v53 = v52;
            }

            *(v50 + 1) = v53;
            result += 4;
            v46 = (v46 + 8);
            v45 += 8;
          }

          while (result <= v17);
        }
      }

      if (result < v15)
      {
        v54 = result;
        v55 = v15 - result;
        if (v55 < 8)
        {
          goto LABEL_47;
        }

        if (&v67[v66 * v14] <= 0xF)
        {
          goto LABEL_47;
        }

        v56 = 2 * result;
        v57 = v55 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v58 = *(v13 + v56);
          v59 = vmlaq_f32(v69, v70, vcvtq_f32_u32(vmovl_high_u16(v58)));
          v60 = vmlaq_f32(v69, v70, vcvtq_f32_u32(vmovl_u16(*v58.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8)));
          a3 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(v16, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL))))));
          *(v12 + v56) = a3;
          v56 += 16;
          v57 -= 8;
        }

        while (v57);
        v54 = (v55 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v55 != (v55 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_47:
          do
          {
            a3.n128_u16[0] = v13->u16[v54];
            a3.n128_f32[0] = rintf(v71 + (a3.n128_u32[0] * v72));
            v61 = a3.n128_f32[0];
            if (a3.n128_f32[0] <= -32768)
            {
              LODWORD(v61) = -32768;
            }

            if (v61 >= 0x7FFF)
            {
              LOWORD(v61) = 0x7FFF;
            }

            v12->i16[v54++] = v61;
          }

          while (v15 != v54);
        }
      }

      v13 = (v13 + v68);
      v12 = (v12 + v18);
      ++v14;
      v19 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021C3C0(uint64_t result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, int16x8_t *a6, unint64_t a7, int *a8, unint64_t *a9)
{
  v11 = a8[1];
  if (v11)
  {
    v12 = a6;
    v13 = result;
    v14 = 0;
    v15 = *a8;
    a3.n128_u64[0] = *a9;
    v16.i64[0] = a9[1];
    *v9.i32 = *a9;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v67 = &a6->i8[-result];
    v64 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v65 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v66 = (a7 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v62 = result + 8;
    v63 = &a6->i64[1];
    v18 = 2 * (a7 >> 1);
    v68 = 2 * (a2 >> 1);
    v19 = &a6->i8[4];
    v71 = *v10.i32;
    v72 = *v9.i32;
    v69 = vdupq_lane_s32(v10, 0);
    v70 = vdupq_lane_s32(v9, 0);
    do
    {
      a3.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100229354(a3, *v16.i8, &v73, v13, v12, v15);
      *v10.i32 = v71;
      *v9.i32 = v72;
      if (result <= v17)
      {
        v20 = result;
        v21 = v17 - result;
        if (v21 <= 0x1B)
        {
          goto LABEL_14;
        }

        v22 = v21 >> 2;
        v23 = result;
        v24 = v23 * 2 + 8 * v22;
        if (v12->u64 + v23 * 2 < v62 + v64 * v14 + v24 && v13 + 2 * result < v63 + v65 * v14 + v24)
        {
          goto LABEL_14;
        }

        v26 = v22 + 1;
        v20 = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
        v27 = v26 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = &v13->i16[v23];
          v74 = vld4q_s16(v28);
          v29 = vcvtq_f32_s32(vmovl_s16(*v74.val[0].i8));
          v30 = vcvtq_f32_s32(vmovl_high_s16(v74.val[0]));
          v31 = vcvtq_f32_s32(vmovl_s16(*v74.val[1].i8));
          v32 = vcvtq_f32_s32(vmovl_high_s16(v74.val[1]));
          v33 = vcvtq_f32_s32(vmovl_s16(*v74.val[2].i8));
          v34 = vcvtq_f32_s32(vmovl_high_s16(v74.val[2]));
          v35 = vcvtq_f32_s32(vmovl_s16(*v74.val[3].i8));
          v74.val[0] = vcvtq_f32_s32(vmovl_high_s16(v74.val[3]));
          v74.val[1] = vmlaq_f32(v69, v70, v30);
          v74.val[2] = vmlaq_f32(v69, v70, v29);
          v74.val[3] = vmlaq_f32(v69, v70, v32);
          v36 = vmlaq_f32(v69, v70, v31);
          v37 = vmlaq_f32(v69, v70, v34);
          v38 = vmlaq_f32(v69, v70, v33);
          v39 = vmlaq_f32(v69, v70, v74.val[0]);
          v40 = vmlaq_f32(v69, v70, v35);
          v41 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[3], v74.val[3], 8uLL))))));
          a3 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL)))));
          v16 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[2], v74.val[2], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[1], v74.val[1], 8uLL))))));
          v74.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))));
          v42 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL)))))), a3);
          v43 = &v12->i16[v23];
          vst4q_s16(v43, *v16.i8);
          v23 += 32;
          v27 -= 8;
        }

        while (v27);
        result = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
        if (v26 != (v26 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_14:
          v44 = 2 * v20;
          v45 = v19;
          v46 = v13;
          result = v20;
          do
          {
            a3.n128_u16[0] = v46->u16[v20];
            a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
            a3.n128_f32[0] = rintf(v71 + (a3.n128_i32[0] * v72));
            v47 = a3.n128_f32[0];
            if (a3.n128_f32[0] <= -32768)
            {
              LODWORD(v47) = -32768;
            }

            if (v47 >= 0x7FFF)
            {
              LOWORD(v47) = 0x7FFF;
            }

            v48 = &v46->i8[v44];
            a3.n128_u16[0] = v46->u16[v44 / 2 + 1];
            a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
            a3.n128_f32[0] = rintf(v71 + (a3.n128_i32[0] * v72));
            v49 = a3.n128_f32[0];
            if (a3.n128_f32[0] <= -32768)
            {
              LODWORD(v49) = -32768;
            }

            if (v49 >= 0x7FFF)
            {
              LOWORD(v49) = 0x7FFF;
            }

            v50 = &v45[v44];
            *(v50 - 2) = v47;
            *(v50 - 1) = v49;
            a3.n128_u16[0] = *(v48 + 2);
            a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
            a3.n128_f32[0] = rintf(v71 + (a3.n128_i32[0] * v72));
            v51 = a3.n128_f32[0];
            if (a3.n128_f32[0] <= -32768)
            {
              LODWORD(v51) = -32768;
            }

            a3.n128_u16[0] = *(v48 + 3);
            a3 = vmovl_s16(a3.n128_u64[0]);
            a3.n128_f32[0] = rintf(v71 + (a3.n128_i32[0] * v72));
            v52 = a3.n128_f32[0];
            if (v51 >= 0x7FFF)
            {
              LOWORD(v51) = 0x7FFF;
            }

            if (v52 <= -32768)
            {
              LODWORD(v52) = -32768;
            }

            *&v45[2 * v20] = v51;
            if (v52 >= 0x7FFF)
            {
              v53 = 0x7FFF;
            }

            else
            {
              v53 = v52;
            }

            *(v50 + 1) = v53;
            result += 4;
            v46 = (v46 + 8);
            v45 += 8;
          }

          while (result <= v17);
        }
      }

      if (result < v15)
      {
        v54 = result;
        v55 = v15 - result;
        if (v55 < 8)
        {
          goto LABEL_47;
        }

        if (&v67[v66 * v14] <= 0xF)
        {
          goto LABEL_47;
        }

        v56 = 2 * result;
        v57 = v55 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v58 = *(v13 + v56);
          v59 = vmlaq_f32(v69, v70, vcvtq_f32_s32(vmovl_high_s16(v58)));
          v60 = vmlaq_f32(v69, v70, vcvtq_f32_s32(vmovl_s16(*v58.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8)));
          a3 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(v16, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL))))));
          *(v12 + v56) = a3;
          v56 += 16;
          v57 -= 8;
        }

        while (v57);
        v54 = (v55 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v55 != (v55 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_47:
          do
          {
            a3.n128_u16[0] = v13->u16[v54];
            a3 = vmovl_s16(a3.n128_u64[0]);
            a3.n128_f32[0] = rintf(v71 + (a3.n128_i32[0] * v72));
            v61 = a3.n128_f32[0];
            if (a3.n128_f32[0] <= -32768)
            {
              LODWORD(v61) = -32768;
            }

            if (v61 >= 0x7FFF)
            {
              LOWORD(v61) = 0x7FFF;
            }

            v12->i16[v54++] = v61;
          }

          while (v15 != v54);
        }
      }

      v13 = (v13 + v68);
      v12 = (v12 + v18);
      ++v14;
      v19 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021C8D0(uint64_t result, unint64_t a2, __n128 a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, int16x8_t *a10, unint64_t a11, int *a12, uint64_t a13)
{
  v13 = a12[1];
  if (v13)
  {
    v15 = result;
    v16 = *a12;
    a3.n128_u64[0] = *a13;
    v17 = *(a13 + 8);
    *&a7 = *a13;
    *&v17 = v17;
    v18 = v16 - 4;
    v19 = 2 * (a11 >> 1);
    v20 = 4 * (a2 >> 2);
    v48 = v17;
    v49 = *&a7;
    v46 = vdupq_lane_s32(*&v17, 0);
    v47 = vdupq_lane_s32(*&a7, 0);
    do
    {
      a3.n128_u32[0] = LODWORD(a7);
      result = sub_10022959C(a3, *&v17, &v50, v15, a10, v16);
      if (result <= v18)
      {
        v21 = result;
        v22 = v18 - result;
        result = result;
        if (v22 <= 0x1B)
        {
          goto LABEL_9;
        }

        v23 = (v22 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF8);
        v24 = v21;
        v25 = v21;
        v26 = v23 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = &v15->i32[v25];
          v51 = vld4q_f32(v27);
          v27 += 16;
          v52 = vld4q_f32(v27);
          v28 = vcvtq_f32_s32(v51.val[1]);
          v29 = vcvtq_f32_s32(v51.val[2]);
          v30 = vcvtq_f32_s32(v51.val[3]);
          v51.val[1] = vmlaq_f32(v46, v47, vcvtq_f32_s32(v51.val[0]));
          v51.val[2] = vmlaq_f32(v46, v47, vcvtq_f32_s32(v52.val[1]));
          v51.val[3] = vmlaq_f32(v46, v47, v28);
          v51.val[0] = vmlaq_f32(v46, v47, vcvtq_f32_s32(v52.val[0]));
          v52.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51.val[1], v51.val[1], 8uLL)))));
          v52.val[0] = vmlaq_f32(v46, v47, vcvtq_f32_s32(v52.val[2]));
          v31 = vmlaq_f32(v46, v47, v29);
          v32 = vmlaq_f32(v46, v47, vcvtq_f32_s32(v52.val[3]));
          v33 = vmlaq_f32(v46, v47, v30);
          v51.val[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51.val[3], v51.val[3], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51.val[2], v51.val[2], 8uLL))))));
          a3 = vqmovn_high_s32(vqmovn_s32(v52.val[1]), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51.val[0], v51.val[0], 8uLL))))));
          v51.val[3] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))));
          v51.val[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52.val[0], v52.val[0], 8uLL))))));
          v34 = &a10->i16[v24];
          vst4q_s16(v34, *a3.n128_u64);
          v24 += 32;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v35 = 2 * result;
          v36 = 4 * result;
          do
          {
            v37 = vmlaq_f32(v46, v47, vcvtq_f32_s32(*(v15 + v36)));
            a3 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL)))));
            a3.n128_u64[0] = vqmovn_s32(a3);
            *(a10->i64 + v35) = a3.n128_u64[0];
            result += 4;
            v35 += 8;
            v36 += 16;
          }

          while (result <= v18);
        }
      }

      v17 = v48;
      *&a7 = v49;
      if (result < v16)
      {
        v38 = v16 - result;
        v39 = result;
        if (v38 <= 7)
        {
          goto LABEL_24;
        }

        v39 = (v38 & 0xFFFFFFFFFFFFFFF8) + result;
        v40 = 4 * result;
        v41 = 2 * result;
        v42 = v38 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v43 = vmlaq_f32(v46, v47, vcvtq_f32_s32(*(&v15[1] + v40)));
          v44 = vmlaq_f32(v46, v47, vcvtq_f32_s32(*(v15 + v40)));
          a3 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))));
          *(a10 + v41) = a3;
          v40 += 32;
          v41 += 16;
          v42 -= 8;
        }

        while (v42);
        if (v38 != (v38 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_24:
          do
          {
            v45 = rintf(*&v48 + (v15->i32[v39] * v49));
            if (v45 <= -32768)
            {
              LODWORD(v45) = -32768;
            }

            if (v45 >= 0x7FFF)
            {
              LOWORD(v45) = 0x7FFF;
            }

            a10->i16[v39++] = v45;
          }

          while (v16 != v39);
        }
      }

      v15 = (v15 + v20);
      a10 = (a10 + v19);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10021CCBC(uint64_t result, unint64_t a2, __n128 a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, int16x8_t *a11, unint64_t a12, int *a13, unint64_t *a14)
{
  v14 = a13[1];
  if (v14)
  {
    v16 = result;
    v17 = *a13;
    a3.n128_u64[0] = *a14;
    v18.i64[0] = a14[1];
    a3.n128_f32[0] = *a14;
    *&a8 = *v18.i64;
    v19 = v17 - 4;
    v20 = 2 * (a12 >> 1);
    v21 = 4 * (a2 >> 2);
    v51 = *&a8;
    v52 = a3;
    v49 = vdupq_lane_s32(*&a8, 0);
    v50 = vdupq_lane_s32(a3.n128_u64[0], 0);
    do
    {
      v18.i32[0] = LODWORD(a8);
      result = sub_1002297E0(a3, *v18.i8, &v53, v16, a11, v17);
      if (result <= v19)
      {
        v22 = result;
        v23 = v19 - result;
        result = result;
        if (v23 <= 0x1B)
        {
          goto LABEL_9;
        }

        v24 = (v23 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v25 = 2 * v22;
        v26 = 4 * v22;
        v27 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = vmlaq_f32(v49, v50, *(v16 + v26 + 48));
          v29 = vmlaq_f32(v49, v50, *(v16 + v26 + 32));
          v30 = vmlaq_f32(v49, v50, *(v16 + v26 + 16));
          v31 = vmlaq_f32(v49, v50, *(v16 + v26));
          v32 = vmlaq_f32(v49, v50, *(v16 + v26 + 80));
          v33 = vmlaq_f32(v49, v50, *(v16 + v26 + 64));
          v34 = vmlaq_f32(v49, v50, *(v16 + v26 + 112));
          v35 = vmlaq_f32(v49, v50, *(v16 + v26 + 96));
          v36 = (a11 + v25);
          v18 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))));
          *v36 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))));
          v36[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v29.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v29, v29, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v28.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v28, v28, 8uLL))))));
          v36[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))));
          v36[3] = v18;
          v25 += 64;
          v26 += 128;
          v27 -= 8;
        }

        while (v27);
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v37 = 2 * result;
          v38 = 4 * result;
          do
          {
            v39 = vmlaq_f32(v49, v50, *(v16 + v38));
            v40 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8)));
            v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))));
            *&a11->i8[v37] = vqmovn_s32(vuzp1q_s32(v40, v18));
            result += 4;
            v37 += 8;
            v38 += 16;
          }

          while (result <= v19);
        }
      }

      *&a8 = v51;
      a3 = v52;
      if (result < v17)
      {
        v41 = v17 - result;
        v42 = result;
        if (v41 <= 7)
        {
          goto LABEL_24;
        }

        v42 = (v41 & 0xFFFFFFFFFFFFFFF8) + result;
        v43 = 4 * result;
        v44 = 2 * result;
        v45 = v41 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v46 = vmlaq_f32(v49, v50, *(v16 + v43 + 16));
          v47 = vmlaq_f32(v49, v50, *(v16 + v43));
          v18 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))));
          *(a11 + v44) = v18;
          v43 += 32;
          v44 += 16;
          v45 -= 8;
        }

        while (v45);
        if (v41 != (v41 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_24:
          do
          {
            v48 = rintf(v51 + (v16->f32[v42] * v52.n128_f32[0]));
            if (v48 <= -32768)
            {
              LODWORD(v48) = -32768;
            }

            if (v48 >= 0x7FFF)
            {
              LOWORD(v48) = 0x7FFF;
            }

            a11->i16[v42++] = v48;
          }

          while (v17 != v42);
        }
      }

      v16 = (v16 + v21);
      a11 = (a11 + v20);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_10021D084(uint64_t result, unint64_t a2, double a3, double a4, float64x2_t a5, int32x4_t a6, float64x2_t a7, __n128 a8, uint64_t a9, uint64_t a10, int16x8_t *a11, unint64_t a12, int *a13, double *a14)
{
  v14 = a13[1];
  if (v14)
  {
    v16 = result;
    v17 = *a13;
    v18 = *a14;
    v19 = a14[1];
    a8.n128_f64[0] = v18;
    v20 = v17 - 4;
    v21 = 2 * (a12 >> 1);
    v22 = 8 * (a2 >> 3);
    v42 = a8;
    v40 = vdupq_lane_s64(COERCE__INT64(v19), 0);
    v41 = vdupq_lane_s64(COERCE__INT64(v18), 0);
    do
    {
      result = sub_100229A1C(v18, v19, a5.f64[0], *a6.i64, a7.f64[0], a8, &v43, v16, a11, v17);
      if (result <= v20)
      {
        v23 = result;
        v24 = v20 - result;
        result = result;
        if (v24 <= 0x1B)
        {
          goto LABEL_9;
        }

        v25 = (v24 >> 2) + 1;
        result = result + 4 * (v25 & 0x7FFFFFFFFFFFFFF8);
        v26 = 2 * v23;
        v27 = 8 * v23;
        v28 = v25 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v29 = &a11->i8[v26];
          v30 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 160)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 176)))));
          a7 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 128)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 144)))));
          v31 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 192)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 208)))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 224)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 240))))));
          a5 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 80)))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 112))))));
          a6 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 16)))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 48))))));
          *v29 = a6;
          v29[1] = a5;
          v29[2] = vqmovn_high_s32(vqmovn_s32(a7), v30);
          v29[3] = v31;
          v26 += 64;
          v27 += 256;
          v28 -= 8;
        }

        while (v28);
        if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v32 = 2 * result;
          v33 = 8 * result;
          do
          {
            a5 = vmlaq_f64(v40, v41, *(v16 + v33));
            *&a11->i8[v32] = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(a5)), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v33 + 16))))));
            result += 4;
            v32 += 8;
            v33 += 32;
          }

          while (result <= v20);
        }
      }

      a8 = v42;
      if (result < v17)
      {
        v34 = v17 - result;
        v35 = result;
        if (v34 <= 7)
        {
          goto LABEL_24;
        }

        v35 = (v34 & 0xFFFFFFFFFFFFFFF8) + result;
        v36 = 8 * result;
        v37 = 2 * result;
        v38 = v34 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          a7 = vmlaq_f64(v40, v41, *(v16 + v36 + 48));
          a6 = vcvtq_s64_f64(vrndxq_f64(a7));
          a5 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v36 + 32)))), a6);
          *(a11 + v37) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v36)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v36 + 16)))))), a5);
          v36 += 64;
          v37 += 16;
          v38 -= 8;
        }

        while (v38);
        if (v34 != (v34 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_24:
          do
          {
            v39 = rint(v19 + v16->f64[v35] * v42.n128_f64[0]);
            if (v39 <= -32768)
            {
              LODWORD(v39) = -32768;
            }

            if (v39 >= 0x7FFF)
            {
              LOWORD(v39) = 0x7FFF;
            }

            a11->i16[v35++] = v39;
          }

          while (v17 != v35);
        }
      }

      v16 = (v16 + v22);
      a11 = (a11 + v21);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_10021D44C(uint64_t result, uint64_t a2, double a3, double a4, double a5, int64x2_t a6, uint64_t a7, uint64_t a8, int32x4_t *a9, unint64_t a10, int *a11, double *a12)
{
  v84 = result;
  v12 = a11[1];
  if (v12)
  {
    v13 = a9;
    v14 = 0;
    v15 = *a11;
    v16 = a12[1];
    *&a5 = *a12;
    *&v16 = v16;
    v17 = v15 - 4;
    v80 = &a9->i8[4 * v15];
    v81 = a9 + 1;
    v82 = 4 * (a10 >> 2);
    v83 = a10 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = result;
    v85 = v16;
    v86 = a5;
    v89 = vdupq_lane_s32(*&v16, 0);
    v90 = vdupq_lane_s32(*&a5, 0);
    while (1)
    {
      v19 = a2;
      v87 = v84 + v14 * a2;
      v88 = v83 * v14;
      result = sub_100229C84(*&a5, *&v16, a5, a6, v91, v18, v13, v15);
      v16 = v85;
      a5 = v86;
      if (result > v17)
      {
        goto LABEL_18;
      }

      v21 = result;
      v22 = v17 - result;
      if (v22 <= 0x3B)
      {
        break;
      }

      v23 = result;
      if (v13->u64 + v23 * 4 < v87 + 4 + (v22 & 0xFFFFFFFFFFFFFFFCLL) + result && v18 + result < &v81[v22 >> 2] + 4 * result + v88)
      {
        break;
      }

      v25 = (v22 >> 2) + 1;
      result = result + 4 * (v25 & 0x7FFFFFFFFFFFFFF0);
      v26 = v25 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v27 = (v18 + v21);
        v94 = vld4q_s8(v27);
        v28 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3720));
        v29 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3730));
        v30 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3700));
        v31 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3710));
        v32 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3720));
        v33 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3730));
        v34 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3700));
        v35 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3710));
        v36 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3720));
        v37 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3730));
        v38 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3700));
        v39 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3710));
        v40 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3720));
        v41 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3730));
        v42 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3700));
        v94.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3710));
        v43 = &v13->i32[v23];
        v94.val[1] = vmlaq_f32(v89, v90, v31);
        v94.val[2] = vmlaq_f32(v89, v90, v35);
        v44 = vmlaq_f32(v89, v90, v30);
        v94.val[3] = vmlaq_f32(v89, v90, v34);
        v45 = vmlaq_f32(v89, v90, v33);
        v46 = vmlaq_f32(v89, v90, v29);
        v47 = vmlaq_f32(v89, v90, v32);
        v48 = vmlaq_f32(v89, v90, v28);
        v49 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8)));
        v50 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8)));
        v51 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL)));
        v52 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))));
        v53 = vmlaq_f32(v89, v90, v39);
        v54 = vmlaq_f32(v89, v90, v94.val[0]);
        v55 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8)));
        v56 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))));
        v57 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[1], v94.val[1], 8uLL)))));
        v94.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[2], v94.val[2], 8uLL)))));
        v94.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL)))));
        v58 = vmlaq_f32(v89, v90, v38);
        v59 = vmlaq_f32(v89, v90, v42);
        v94.val[2] = vuzp1q_s32(v55, v56);
        v95.val[0] = vuzp1q_s32(v50, vcvtq_s64_f64(v51));
        v95.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[3], v94.val[3], 8uLL)))));
        v95.val[2] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL)))));
        v60 = vmlaq_f32(v89, v90, v41);
        v61 = vmlaq_f32(v89, v90, v37);
        v95.val[3] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL)))));
        v92.val[1] = vuzp1q_s32(v49, v52);
        v92.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL)))));
        v62 = vmlaq_f32(v89, v90, v40);
        v92.val[3] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))));
        v63 = vmlaq_f32(v89, v90, v36);
        v20 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8)));
        v92.val[2] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL)))));
        v93.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL)))));
        a6 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8)));
        v93.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL)))));
        v93.val[3] = vuzp1q_s32(a6, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL)))));
        v93.val[2] = vuzp1q_s32(v20, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL)))));
        v64 = &v13[8].i32[v23];
        v65 = &v13[12].i32[v23];
        vst4q_f32(v43, v93);
        v43 += 16;
        vst4q_f32(v64, v95);
        vst4q_f32(v65, v94);
        vst4q_f32(v43, v92);
        v23 += 64;
        v21 += 64;
        v26 -= 16;
      }

      while (v26);
      v16 = v85;
      a5 = v86;
      if (v25 != (v25 & 0x7FFFFFFFFFFFFFF0))
      {
        goto LABEL_16;
      }

LABEL_18:
      a2 = v19;
      if (result < v15)
      {
        v72 = result;
        v73 = v15 - result;
        if (v73 > 3 && (v13 + 4 * result < v87 + v15 ? (v74 = v18 + result >= &v80[v88]) : (v74 = 1), v74))
        {
          v75 = (v73 & 0xFFFFFFFFFFFFFFFCLL) + result;
          v76 = 4 * result;
          v77 = v73 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v20.i32[0] = *(v18 + v72);
            v78 = vmlaq_f32(v89, v90, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v20.i8))));
            v79 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8)));
            a6 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))));
            v20 = vuzp1q_s32(v79, a6);
            *(v13 + v76) = v20;
            v72 += 4;
            v76 += 16;
            v77 -= 4;
          }

          while (v77);
          if (v73 == (v73 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_3;
          }
        }

        else
        {
          v75 = result;
        }

        do
        {
          v20.i8[0] = *(v18 + v75);
          *v20.i32 = rintf(*&v16 + (v20.u32[0] * *&a5));
          v13->i32[v75++] = *v20.i32;
        }

        while (v15 != v75);
      }

LABEL_3:
      v18 += v19;
      v13 = (v13 + v82);
      ++v14;
      if (!--v12)
      {
        return result;
      }
    }

    result = result;
LABEL_16:
    v66 = &v13->i32[result];
    do
    {
      v20.i8[0] = *(v18 + result);
      *&v67 = rintf(*&v16 + (v20.u32[0] * *&a5));
      v68 = *&v67;
      LOBYTE(v67) = *(v18 + result + 1);
      *&v69 = rintf(*&v16 + (v67 * *&a5));
      *v66 = v68;
      v66[1] = *&v69;
      LOBYTE(v69) = *(v18 + result + 2);
      *&v70 = rintf(*&v16 + (v69 * *&a5));
      v71 = *&v70;
      LOBYTE(v70) = *(v18 + result + 3);
      *v20.i32 = rintf(*&v16 + (v70 * *&a5));
      v66[2] = v71;
      v66[3] = *v20.i32;
      result += 4;
      v66 += 4;
    }

    while (result <= v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10021DA7C(uint64_t result, uint64_t a2, double a3, double a4, int32x4_t a5, int64x2_t a6, uint64_t a7, uint64_t a8, int32x4_t *a9, unint64_t a10, int *a11, uint64_t a12)
{
  v98 = result;
  v14 = a11[1];
  if (v14)
  {
    v15 = a9;
    v16 = 0;
    v17 = *a11;
    v18.i64[0] = *(a12 + 8);
    *v12.i32 = *a12;
    *v13.i32 = *v18.i64;
    v19 = v17 - 4;
    v93 = &a9->i8[4 * v17];
    v94 = a9 + 1;
    v96 = 4 * (a10 >> 2);
    v97 = a10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = result;
    v99 = v13.i32[0];
    v100 = v12.i32[0];
    v103 = vdupq_lane_s32(v13, 0);
    v104 = vdupq_lane_s32(v12, 0);
    v95 = a2;
    while (1)
    {
      v101 = v98 + v16 * a2;
      v102 = v97 * v16;
      v18.i32[0] = v13.i32[0];
      result = sub_100229E94(*v12.i32, *v18.i8, *a5.i64, a6, v105, v20, v15, v17);
      v13.i32[0] = v99;
      v12.i32[0] = v100;
      if (result > v19)
      {
        goto LABEL_18;
      }

      v22 = result;
      v23 = v19 - result;
      if (v23 <= 0x3B)
      {
        break;
      }

      v24 = result;
      if (v15->u64 + v24 * 4 < v101 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result && v20 + result < &v94[v23 >> 2] + 4 * result + v102)
      {
        break;
      }

      v26 = (v23 >> 2) + 1;
      result = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF0);
      v27 = v26 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v28 = (v20 + v22);
        v108 = vld4q_s8(v28);
        v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[0], xmmword_1003E3760), 0x18uLL);
        v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[0], xmmword_1003E3770), 0x18uLL);
        v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[0], xmmword_1003E3740), 0x18uLL);
        v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[0], xmmword_1003E3750), 0x18uLL);
        v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[1], xmmword_1003E3760), 0x18uLL);
        v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[1], xmmword_1003E3770), 0x18uLL);
        v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[1], xmmword_1003E3740), 0x18uLL);
        v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[1], xmmword_1003E3750), 0x18uLL);
        v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[2], xmmword_1003E3760), 0x18uLL);
        v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[2], xmmword_1003E3770), 0x18uLL);
        v39 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[2], xmmword_1003E3740), 0x18uLL);
        v40 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[2], xmmword_1003E3750), 0x18uLL);
        v41 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[3], xmmword_1003E3760), 0x18uLL);
        v42 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[3], xmmword_1003E3770), 0x18uLL);
        v43 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[3], xmmword_1003E3740), 0x18uLL);
        v108.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[3], xmmword_1003E3750), 0x18uLL);
        v44 = &v15->i32[v24];
        v108.val[1] = vmlaq_f32(v103, v104, v32);
        v108.val[2] = vmlaq_f32(v103, v104, v36);
        v45 = vmlaq_f32(v103, v104, v31);
        v108.val[3] = vmlaq_f32(v103, v104, v35);
        v46 = vmlaq_f32(v103, v104, v34);
        v47 = vmlaq_f32(v103, v104, v30);
        v48 = vmlaq_f32(v103, v104, v33);
        v49 = vmlaq_f32(v103, v104, v29);
        v30.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
        a5 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v49.i8)));
        v50 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8)));
        v51 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8)));
        v52 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL)));
        v53 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))));
        v54 = vmlaq_f32(v103, v104, v40);
        v55 = vmlaq_f32(v103, v104, v108.val[0]);
        v56 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8)));
        v57 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))));
        v58 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108.val[1], v108.val[1], 8uLL)))));
        v108.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108.val[2], v108.val[2], 8uLL)))));
        v108.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL)))));
        v59 = vmlaq_f32(v103, v104, v39);
        v60 = vmlaq_f32(v103, v104, v43);
        v108.val[2] = vuzp1q_s32(v56, v57);
        v109.val[0] = vuzp1q_s32(v51, vcvtq_s64_f64(v52));
        v109.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108.val[3], v108.val[3], 8uLL)))));
        v109.val[2] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL)))));
        v61 = vmlaq_f32(v103, v104, v42);
        v62 = vmlaq_f32(v103, v104, v38);
        v109.val[3] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))));
        v106.val[1] = vuzp1q_s32(v50, v53);
        v106.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL)))));
        v63 = vmlaq_f32(v103, v104, v41);
        v106.val[3] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL)))));
        v64 = vmlaq_f32(v103, v104, v37);
        v21 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8)));
        v106.val[2] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL)))));
        v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))));
        v107.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL)))));
        a6 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8)));
        v107.val[0] = vuzp1q_s32(a5, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.f32))));
        v107.val[3] = vuzp1q_s32(a6, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL)))));
        v107.val[2] = vuzp1q_s32(v21, v18);
        v65 = &v15[8].i32[v24];
        v66 = &v15[12].i32[v24];
        vst4q_f32(v44, v107);
        v44 += 16;
        vst4q_f32(v65, v109);
        vst4q_f32(v66, v108);
        vst4q_f32(v44, v106);
        v24 += 64;
        v22 += 64;
        v27 -= 16;
      }

      while (v27);
      v13.i32[0] = v99;
      v12.i32[0] = v100;
      if (v26 != (v26 & 0x7FFFFFFFFFFFFFF0))
      {
        goto LABEL_16;
      }

LABEL_18:
      a2 = v95;
      if (result < v17)
      {
        v73 = v17 - result;
        if (v73 < 4)
        {
          v74 = result;
          goto LABEL_37;
        }

        if (v15 + 4 * result < v101 + v17 && v20 + result < &v93[v102])
        {
          v74 = result;
          goto LABEL_37;
        }

        if (v73 >= 0x10)
        {
          v76 = v73 & 0xFFFFFFFFFFFFFFF0;
          v77 = 4 * result;
          v78 = result;
          v79 = v73 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v80 = *(v20 + v78);
            v81 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3760), 0x18uLL));
            v82 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3770), 0x18uLL));
            v83 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3740), 0x18uLL));
            v84 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3750), 0x18uLL));
            v85 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.i8)));
            a6 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84, v84, 8uLL))));
            v86 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8)));
            v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))));
            a5 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83, v83, 8uLL)))));
            v87 = (v15 + v77);
            v87[2] = a5;
            v87[3] = vuzp1q_s32(v85, a6);
            v21 = vuzp1q_s32(v86, v18);
            *v87 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL)))));
            v87[1] = v21;
            v78 += 16;
            v77 += 64;
            v79 -= 16;
          }

          while (v79);
          if (v73 == v76)
          {
            goto LABEL_3;
          }

          if ((v73 & 0xC) == 0)
          {
            v74 = v76 + result;
            do
            {
LABEL_37:
              v21.i8[0] = *(v20 + v74);
              v21.i64[0] = vmovl_s16(*&vmovl_s8(*v21.i8)).u64[0];
              *v21.i32 = rintf(*v13.i32 + (v21.i32[0] * *v12.i32));
              v15->i32[v74++] = *v21.i32;
            }

            while (v17 != v74);
            goto LABEL_3;
          }
        }

        else
        {
          v76 = 0;
        }

        v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v88 = v76 - (v73 & 0xFFFFFFFFFFFFFFFCLL);
        v89 = v76 + result;
        v90 = 4 * v89;
        do
        {
          v21.i32[0] = *(v20 + v89);
          v91 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v21, xmmword_1003E3760), 0x18uLL));
          v92 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v91.i8)));
          v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v91, v91, 8uLL))));
          v21 = vuzp1q_s32(v92, v18);
          *(v15 + v90) = v21;
          v89 += 4;
          v90 += 16;
          v88 += 4;
        }

        while (v88);
        if (v73 == (v73 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      }

LABEL_3:
      v20 += v95;
      v15 = (v15 + v96);
      ++v16;
      if (!--v14)
      {
        return result;
      }
    }

    result = result;
LABEL_16:
    v67 = &v15->i32[result];
    do
    {
      v21.i8[0] = *(v20 + result);
      v68 = vmovl_s16(*&vmovl_s8(*v21.i8)).u64[0];
      *v68.i32 = rintf(*v13.i32 + (v68.i32[0] * *v12.i32));
      v69 = *v68.i32;
      v68.i8[0] = *(v20 + result + 1);
      v70 = vmovl_s16(*&vmovl_s8(v68)).u64[0];
      *v70.i32 = rintf(*v13.i32 + (v70.i32[0] * *v12.i32));
      *v67 = v69;
      v67[1] = *v70.i32;
      v70.i8[0] = *(v20 + result + 2);
      v71 = vmovl_s16(*&vmovl_s8(v70)).u64[0];
      *v71.i32 = rintf(*v13.i32 + (v71.i32[0] * *v12.i32));
      v72 = *v71.i32;
      v71.i8[0] = *(v20 + result + 3);
      v21 = vmovl_s16(*&vmovl_s8(v71));
      *v21.i32 = rintf(*v13.i32 + (v21.i32[0] * *v12.i32));
      v67[2] = v72;
      v67[3] = *v21.i32;
      result += 4;
      v67 += 4;
    }

    while (result <= v19);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10021E20C(uint64_t result, unint64_t a2, double a3, double a4, int32x4_t a5, int64x2_t a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, int32x4_t *a13, unint64_t a14, int *a15, uint64_t a16)
{
  v17 = a15[1];
  if (v17)
  {
    v19 = result;
    v20 = *a15;
    v21.i64[0] = *(a16 + 8);
    *&a10 = *a16;
    *v16.i32 = *v21.i64;
    v22 = v20 - 4;
    v23 = 4 * (a14 >> 2);
    v24 = 2 * (a2 >> 1);
    v52 = *v16.i32;
    v53 = *&a10;
    v54 = vdupq_lane_s32(v16, 0);
    v55 = vdupq_lane_s32(*&a10, 0);
    do
    {
      v21.i32[0] = v16.i32[0];
      result = sub_10022A0A4(*&a10, *v21.i8, *a5.i64, a6, &v56, v19, a13, v20);
      *v16.i32 = v52;
      *&a10 = v53;
      if (result <= v22)
      {
        v26 = result;
        v27 = v22 - result;
        result = result;
        if (v27 <= 0xB)
        {
          goto LABEL_9;
        }

        v28 = (v27 >> 2) + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFFCLL);
        v29 = v26;
        v30 = v26;
        v31 = v28 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v32 = &v19->i16[v30];
          v57 = vld4_s16(v32);
          v33 = vcvtq_f32_u32(vmovl_u16(v57.val[2]));
          v34 = &a13->i32[v29];
          *v57.val[1].i8 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_u16(v57.val[1])));
          *v57.val[2].i8 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_u16(v57.val[0])));
          v58.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v57.val[1]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*v57.val[1].i8, *v57.val[1].i8, 8uLL)))));
          v58.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v57.val[2]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*v57.val[2].i8, *v57.val[2].i8, 8uLL)))));
          *v57.val[1].i8 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_u16(v57.val[3])));
          *v57.val[0].i8 = vmlaq_f32(v54, v55, v33);
          a5 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v57.val[0])));
          v25 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*v57.val[0].i8, *v57.val[0].i8, 8uLL))));
          a6 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v57.val[1])));
          v21 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*v57.val[1].i8, *v57.val[1].i8, 8uLL))));
          v58.val[3] = vuzp1q_s32(a6, v21);
          v58.val[2] = vuzp1q_s32(a5, v25);
          vst4q_f32(v34, v58);
          v29 += 16;
          v30 += 16;
          v31 -= 4;
        }

        while (v31);
        if (v28 != (v28 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_9:
          v35 = 2 * result + 6;
          v36 = &a13->i32[result];
          do
          {
            v25.i16[0] = *(&v19->i16[-3] + v35);
            *&v37 = rintf(v52 + (v25.u32[0] * v53));
            v38 = *&v37;
            v39 = &v19->i8[2 * result];
            LOWORD(v37) = *(v39 + 1);
            *&v40 = rintf(v52 + (v37 * v53));
            *v36 = v38;
            v36[1] = *&v40;
            LOWORD(v40) = *(v39 + 2);
            *&v41 = rintf(v52 + (v40 * v53));
            v42 = *&v41;
            LOWORD(v41) = *(v19->i16 + v35);
            *v25.i32 = rintf(v52 + (v41 * v53));
            v36[2] = v42;
            v36[3] = *v25.i32;
            result += 4;
            v35 += 8;
            v36 += 4;
          }

          while (result <= v22);
        }
      }

      if (result < v20)
      {
        v43 = v20 - result;
        v44 = result;
        if (v43 <= 7)
        {
          goto LABEL_20;
        }

        v44 = (v43 & 0xFFFFFFFFFFFFFFF8) + result;
        v45 = 2 * result;
        v46 = 4 * result;
        v47 = v43 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v48 = *(v19 + v45);
          v49 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_u16(*v48.i8)));
          v50 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_high_u16(v48)));
          v21 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8)));
          a6 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v49.i8)));
          a5 = vuzp1q_s32(a6, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v49, v49, 8uLL)))));
          v25 = vuzp1q_s32(v21, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL)))));
          v51 = (a13 + v46);
          *v51 = a5;
          v51[1] = v25;
          v45 += 16;
          v46 += 32;
          v47 -= 8;
        }

        while (v47);
        if (v43 != (v43 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_20:
          do
          {
            v25.i16[0] = v19->i16[v44];
            *v25.i32 = rintf(v52 + (v25.u32[0] * v53));
            a13->i32[v44++] = *v25.i32;
          }

          while (v20 != v44);
        }
      }

      v19 = (v19 + v24);
      a13 = (a13 + v23);
      --v17;
    }

    while (v17);
  }

  return result;
}

int16x8_t *sub_10021E548(int16x8_t *result, unint64_t a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, int32x4_t *a11, unint64_t a12, int *a13, uint64_t a14)
{
  v14 = a13[1];
  if (!v14)
  {
    return result;
  }

  v15 = *a13;
  v16 = *a14;
  a7.n128_f32[0] = *a14;
  a8.n128_f32[0] = *(a14 + 8);
  v17 = a2 >> 1;
  v18 = a12 >> 2;
  v19 = v15 - 8;
  if (v15 < 8)
  {
    if (v15 >= 1)
    {
      v20 = &a11->i32[3];
      v21 = 4 * v18;
      v22 = &result->i16[3];
      v23 = 2 * v17;
      do
      {
        v16.i16[0] = *(v22 - 3);
        v16 = vmovl_s16(v16).u64[0];
        *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
        *(v20 - 3) = *v16.i32;
        if (v15 != 1)
        {
          v16.i16[0] = *(v22 - 2);
          v16 = vmovl_s16(v16).u64[0];
          *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
          *(v20 - 2) = *v16.i32;
          if (v15 != 2)
          {
            v16.i16[0] = *(v22 - 1);
            v16 = vmovl_s16(v16).u64[0];
            *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
            *(v20 - 1) = *v16.i32;
            if (v15 != 3)
            {
              v16.i16[0] = *v22;
              v16 = vmovl_s16(v16).u64[0];
              *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
              *v20 = *v16.i32;
              if (v15 != 4)
              {
                v16.i16[0] = v22[1];
                v16 = vmovl_s16(v16).u64[0];
                *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
                v20[1] = *v16.i32;
                if (v15 != 5)
                {
                  v16.i16[0] = v22[2];
                  v16 = vmovl_s16(v16).u64[0];
                  *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
                  v20[2] = *v16.i32;
                  if (v15 != 6)
                  {
                    v16.i16[0] = v22[3];
                    v16 = vmovl_s16(v16).u64[0];
                    *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
                    v20[3] = *v16.i32;
                  }
                }
              }
            }
          }
        }

        v20 = (v20 + v21);
        v22 = (v22 + v23);
        --v14;
      }

      while (v14);
    }

    return result;
  }

  v24 = vdupq_lane_s32(a8.n128_u64[0], 0);
  v25 = v19;
  v26 = v19 <= 7;
  v27 = 7;
  if (!v26)
  {
    v27 = v25;
  }

  v28 = v27 & 0x7FFFFFF8;
  v29 = v28 + 9;
  if (v28 + 9 <= v15)
  {
    v29 = *a13;
  }

  v30 = v29 - 8 - v28;
  v31 = v29 & 7;
  v32 = v30 - v31;
  v33 = vdupq_lane_s32(a7.n128_u64[0], 0);
  v34 = vdupq_lane_s32(a8.n128_u64[0], 0);
  v35 = v29 - 8 - v31 - v28;
  v36 = result + 1;
  v37 = 2 * v17;
  v38 = a11 + 2;
  v39 = 4 * v18;
  while (2)
  {
    v40 = 0;
    v41 = v38;
    v42 = v36;
    do
    {
      v43 = v42;
      v44 = v41;
      v45 = result[v40 / 8];
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v119 = result;
        v50 = a11;
        v115 = v14;
        v107 = a8;
        v111 = a7;
        v103 = v24;
        v95 = v31;
        v99 = v30;
        v91 = v32;
        v83 = v34;
        v87 = v33;
        v75 = v36;
        v79 = v35;
        v67 = v38;
        v71 = v37;
        v63 = v39;
        v59 = v45;
        sub_1003C83B4();
        v45 = v59;
        v39 = v63;
        v38 = v67;
        v37 = v71;
        v36 = v75;
        v35 = v79;
        v34 = v83;
        v33 = v87;
        v32 = v91;
        v31 = v95;
        v30 = v99;
        v24 = v103;
        a8 = v107;
        a7 = v111;
        v14 = v115;
        a11 = v50;
        result = v119;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_22;
        }
      }

      v120 = result;
      v51 = a11;
      v116 = v14;
      v108 = a8;
      v112 = a7;
      v104 = v24;
      v96 = v31;
      v100 = v30;
      v92 = v32;
      v84 = v34;
      v88 = v33;
      v76 = v36;
      v80 = v35;
      v68 = v38;
      v72 = v37;
      v64 = v39;
      v60 = v45;
      sub_1003C83FC();
      v45 = v60;
      v39 = v64;
      v38 = v68;
      v37 = v72;
      v36 = v76;
      v35 = v80;
      v34 = v84;
      v33 = v88;
      v32 = v92;
      v31 = v96;
      v30 = v100;
      v24 = v104;
      a8 = v108;
      a7 = v112;
      v14 = v116;
      a11 = v51;
      result = v120;
LABEL_22:
      v46 = vaddq_f32(v24, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v45.i8)), a7.n128_f32[0]));
      v47 = &a11[v40 / 4];
      *v47 = vcvtq_s32_f32(vaddq_f32(v46, vorrq_s8(vandq_s8(xmmword_1004B0010, v46), xmmword_1004B0030)));
      if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v121 = result;
        v57 = a11;
        v117 = v14;
        v109 = a8;
        v113 = a7;
        v105 = v24;
        v97 = v31;
        v101 = v30;
        v93 = v32;
        v85 = v34;
        v89 = v33;
        v77 = v36;
        v81 = v35;
        v69 = v38;
        v73 = v37;
        v65 = v39;
        v61 = v45;
        sub_1003C83B4();
        v45 = v61;
        v39 = v65;
        v38 = v69;
        v37 = v73;
        v36 = v77;
        v35 = v81;
        v34 = v85;
        v33 = v89;
        v32 = v93;
        v31 = v97;
        v30 = v101;
        v24 = v105;
        a8 = v109;
        a7 = v113;
        v14 = v117;
        a11 = v57;
        result = v121;
        if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
        {
          goto LABEL_24;
        }
      }

      v122 = result;
      v58 = a11;
      v118 = v14;
      v110 = a8;
      v114 = a7;
      v106 = v24;
      v98 = v31;
      v102 = v30;
      v94 = v32;
      v86 = v34;
      v90 = v33;
      v78 = v36;
      v82 = v35;
      v70 = v38;
      v74 = v37;
      v66 = v39;
      v62 = v45;
      sub_1003C83FC();
      v45 = v62;
      v39 = v66;
      v38 = v70;
      v37 = v74;
      v36 = v78;
      v35 = v82;
      v34 = v86;
      v33 = v90;
      v32 = v94;
      v31 = v98;
      v30 = v102;
      v24 = v106;
      a8 = v110;
      a7 = v114;
      v14 = v118;
      a11 = v58;
      result = v122;
LABEL_24:
      v48 = vaddq_f32(v24, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v45)), a7.n128_f32[0]));
      v49 = vcvtq_s32_f32(vaddq_f32(v48, vorrq_s8(vandq_s8(xmmword_1004B0010, v48), xmmword_1004B0030)));
      v47[1] = v49;
      v40 += 8;
      v42 = v43 + 1;
      v41 = v44 + 2;
    }

    while (v40 <= v25);
    if (v15 > v40)
    {
      v52 = v40 & 0xFFFFFFF8;
      if (v30 <= 7)
      {
        goto LABEL_39;
      }

      v52 += v32;
      v53 = v35;
      do
      {
        v54 = *v43++;
        v55 = vmlaq_f32(v34, v33, vcvtq_f32_s32(vmovl_s16(*v54.i8)));
        v56 = vmlaq_f32(v34, v33, vcvtq_f32_s32(vmovl_high_s16(v54)));
        v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL)))));
        *v44 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL)))));
        v44[1] = v49;
        v44 += 2;
        v53 -= 8;
      }

      while (v53);
      if (v31)
      {
LABEL_39:
        do
        {
          v49.i16[0] = result->i16[v52];
          v49.i64[0] = vmovl_s16(*v49.i8).u64[0];
          *v49.i32 = rintf(a8.n128_f32[0] + (v49.i32[0] * a7.n128_f32[0]));
          a11->i32[v52++] = *v49.i32;
        }

        while (v52 < v15);
      }
    }

    result = (result + v37);
    a11 = (a11 + v39);
    v36 = (v36 + v37);
    v38 = (v38 + v39);
    if (--v14)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10021EA78(uint64_t result, unint64_t a2, double a3, double a4, double a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, int *a12, unint64_t *a13)
{
  v13 = a12[1];
  if (!v13)
  {
    return result;
  }

  v14 = *a12;
  a6.n128_u64[0] = *a13;
  a7.n128_u64[0] = a13[1];
  v15 = a2 >> 2;
  v16 = a11 >> 2;
  if (v14 >= 4)
  {
    v21 = 0;
    v22 = vdupq_lane_s64(a7.n128_i64[0], 0);
    v23 = a10 - result;
    v24 = (a11 & 0xFFFFFFFFFFFFFFFCLL) - (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v25 = v14 & 3;
    v26 = vdupq_lane_s64(a6.n128_i64[0], 0);
    v27 = v22;
    v28 = 4 * v16;
    v29 = 4 * v15;
    v30 = v25 - v14;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = v23 + v24 * v21;
      v35 = 4;
      do
      {
        v36 = v35;
        v38 = *(result + v31);
        v37 = *(result + v31 + 8);
        if (atomic_load_explicit(&qword_1004B0130, memory_order_acquire))
        {
          if (atomic_load_explicit(&qword_1004B0130, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v72 = result;
          v74 = a10;
          v68 = a7;
          v70 = a6;
          v66 = v22;
          v62 = v24;
          v64 = v23;
          v60 = v25;
          v56 = v27;
          v58 = v26;
          v52 = v29;
          v54 = v28;
          v48 = v34;
          v50 = v30;
          sub_1003C84D4();
          v34 = v48;
          v30 = v50;
          v29 = v52;
          v28 = v54;
          v27 = v56;
          v26 = v58;
          v25 = v60;
          v24 = v62;
          v23 = v64;
          v22 = v66;
          a7 = v68;
          a6 = v70;
          result = v72;
          a10 = v74;
          if (atomic_load_explicit(&qword_1004B0130, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        v73 = result;
        v75 = a10;
        v69 = a7;
        v71 = a6;
        v67 = v22;
        v63 = v24;
        v65 = v23;
        v61 = v25;
        v57 = v27;
        v59 = v26;
        v53 = v29;
        v55 = v28;
        v49 = v34;
        v51 = v30;
        sub_1003C84D4();
        v34 = v49;
        v30 = v51;
        v29 = v53;
        v28 = v55;
        v27 = v57;
        v26 = v59;
        v25 = v61;
        v24 = v63;
        v23 = v65;
        v22 = v67;
        a7 = v69;
        a6 = v71;
        result = v73;
        a10 = v75;
LABEL_14:
        v39.i64[0] = v38;
        v39.i64[1] = SHIDWORD(v38);
        v40 = vcvtq_f64_s64(v39);
        v39.i64[0] = v37;
        v39.i64[1] = SHIDWORD(v37);
        *(a10 + v31) = vuzp1q_s32(vcvtaq_s64_f64(vaddq_f64(v22, vmulq_n_f64(v40, a6.n128_f64[0]))), vcvtaq_s64_f64(vaddq_f64(v22, vmulq_n_f64(vcvtq_f64_s64(v39), a6.n128_f64[0]))));
        v33 += 0x400000000;
        v32 += 4;
        v31 += 16;
        v35 = v36 + 4;
      }

      while (v14 - 4 >= v32);
      if (v14 > v32)
      {
        v41 = v33 >> 32;
        v42 = v14 - (v33 >> 32);
        if (v42 < 4)
        {
          goto LABEL_28;
        }

        if (v34 < 0x10)
        {
          goto LABEL_28;
        }

        v41 += v42 - v25;
        v43 = v30 + v36;
        v44 = 4 * v36;
        do
        {
          v45 = *(result + v44);
          v46.i64[0] = SDWORD2(v45);
          v46.i64[1] = SHIDWORD(v45);
          v47 = vcvtq_f64_s64(v46);
          v46.i64[0] = v45;
          v46.i64[1] = SDWORD1(v45);
          *(a10 + v44) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v27, v26, vcvtq_f64_s64(v46)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v27, v26, v47))));
          v44 += 16;
          v43 += 4;
        }

        while (v43);
        if (v25)
        {
LABEL_28:
          do
          {
            *(a10 + 4 * v41) = rint(a7.n128_f64[0] + *(result + 4 * v41) * a6.n128_f64[0]);
            ++v41;
          }

          while (v41 < v14);
        }
      }

      ++v21;
      a10 += v28;
      result += v29;
      if (!--v13)
      {
        return result;
      }
    }
  }

  if (v14 >= 1)
  {
    v17 = (result + 8);
    v18 = 4 * v15;
    v19 = (a10 + 8);
    v20 = 4 * v16;
    do
    {
      *(v19 - 2) = rint(a7.n128_f64[0] + *(v17 - 2) * a6.n128_f64[0]);
      if (v14 != 1)
      {
        *(v19 - 1) = rint(a7.n128_f64[0] + *(v17 - 1) * a6.n128_f64[0]);
        if (v14 != 2)
        {
          *v19 = rint(a7.n128_f64[0] + *v17 * a6.n128_f64[0]);
        }
      }

      v17 = (v17 + v18);
      v19 = (v19 + v20);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10021ED88(uint64_t result, unint64_t a2, double a3, double a4, double a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, int *a12, double *a13)
{
  v13 = a12[1];
  if (!v13)
  {
    return result;
  }

  v14 = *a12;
  a6.n128_f32[0] = *a13;
  a7.n128_f32[0] = a13[1];
  v15 = a2 >> 2;
  v16 = a11 >> 2;
  v17 = v14 - 4;
  if (v14 >= 4)
  {
    v22 = vdupq_lane_s32(a7.n128_u64[0], 0);
    v23 = v14 & 3;
    v24 = 4 * v15;
    v25 = 4 * v16;
    v26 = vdupq_lane_s32(a6.n128_u64[0], 0);
    v27 = v23 - v14;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 4;
      do
      {
        v32 = v31;
        v33 = *(result + v28);
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v62 = result;
          v64 = a10;
          v60 = v13;
          v58 = v14;
          v54 = a7;
          v56 = a6;
          v52 = v22;
          v48 = v24;
          v50 = v23;
          v46 = v25;
          v44 = v26;
          v42 = v27;
          v40 = v33;
          sub_1003C83B4();
          v33 = v40;
          v27 = v42;
          v26 = v44;
          v25 = v46;
          v24 = v48;
          v23 = v50;
          v22 = v52;
          a7 = v54;
          a6 = v56;
          v14 = v58;
          v13 = v60;
          result = v62;
          a10 = v64;
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        v63 = result;
        v65 = a10;
        v61 = v13;
        v59 = v14;
        v55 = a7;
        v57 = a6;
        v53 = v22;
        v49 = v24;
        v51 = v23;
        v47 = v25;
        v45 = v26;
        v43 = v27;
        v41 = v33;
        sub_1003C83FC();
        v33 = v41;
        v27 = v43;
        v26 = v45;
        v25 = v47;
        v24 = v49;
        v23 = v51;
        v22 = v53;
        a7 = v55;
        a6 = v57;
        v14 = v59;
        v13 = v61;
        result = v63;
        a10 = v65;
LABEL_14:
        v34 = vaddq_f32(v22, vmulq_n_f32(v33, a6.n128_f32[0]));
        *(a10 + v28) = vcvtq_s32_f32(vaddq_f32(v34, vorrq_s8(vandq_s8(xmmword_1004B0010, v34), xmmword_1004B0030)));
        v30 += 0x400000000;
        v29 += 4;
        v28 += 16;
        v31 = v32 + 4;
      }

      while (v17 >= v29);
      if (v14 > v29)
      {
        v35 = v30 >> 32;
        v36 = v14 - (v30 >> 32);
        if (v36 < 4)
        {
          goto LABEL_27;
        }

        v35 += v36 - v23;
        v37 = v27 + v32;
        v38 = 4 * v32;
        do
        {
          v39 = vmlaq_f32(v22, v26, *(result + v38));
          *(a10 + v38) = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL)))));
          v38 += 16;
          v37 += 4;
        }

        while (v37);
        if (v23)
        {
LABEL_27:
          do
          {
            *(a10 + 4 * v35) = rintf(a7.n128_f32[0] + (*(result + 4 * v35) * a6.n128_f32[0]));
            ++v35;
          }

          while (v35 < v14);
        }
      }

      result += v24;
      a10 += v25;
      if (!--v13)
      {
        return result;
      }
    }
  }

  if (v14 >= 1)
  {
    v18 = (result + 8);
    v19 = 4 * v15;
    v20 = (a10 + 8);
    v21 = 4 * v16;
    do
    {
      *(v20 - 2) = rintf(a7.n128_f32[0] + (*(v18 - 2) * a6.n128_f32[0]));
      if (v14 != 1)
      {
        *(v20 - 1) = rintf(a7.n128_f32[0] + (*(v18 - 1) * a6.n128_f32[0]));
        if (v14 != 2)
        {
          *v20 = rintf(a7.n128_f32[0] + (*v18 * a6.n128_f32[0]));
        }
      }

      v18 = (v18 + v19);
      v20 = (v20 + v21);
      --v13;
    }

    while (v13);
  }

  return result;
}