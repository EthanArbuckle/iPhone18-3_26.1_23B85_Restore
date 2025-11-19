uint64_t sub_100311930(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003119B4(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478EF8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100311C24(uint64_t a1)
{
  *a1 = off_100478EF8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100311CD4(uint64_t a1)
{
  *a1 = off_100478EF8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

float *sub_100311DA4(float *result, const __int16 *a2, unint64_t a3, int a4, int a5, float32x4_t a6, double a7, float32x4_t a8)
{
  v8 = *(result + 2);
  v9 = *(result + 4);
  v10 = (a5 * a4);
  v11 = (v10 - 4);
  if (v10 < 4)
  {
    LODWORD(v12) = 0;
    goto LABEL_15;
  }

  if (v8 <= 1)
  {
    if (v11 > 0x1B && ((v9 + 1) <= a3 || v9 >= a3 + ((4 * v11) & 0x1FFFFFFF0) + 16))
    {
      v36 = (v11 >> 2) + 1;
      v12 = 4 * (v36 & 0x3FFFFFF8);
      v37 = v36 & 0x3FFFFFF8;
      v38 = a3;
      v39 = a2;
      do
      {
        a6.f32[0] = *v9;
        v55 = vld4q_s16(v39);
        v39 += 32;
        v56.val[1] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v55.val[1])), *v9);
        v56.val[0] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v55.val[0])), *v9);
        v56.val[3] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v55.val[3])), *v9);
        v56.val[2] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v55.val[2])), *v9);
        a8 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v55.val[1].i8)), *v9);
        v55.val[0] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v55.val[0].i8)), *v9);
        v55.val[3] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v55.val[3].i8)), *v9);
        v55.val[2] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v55.val[2].i8)), *v9);
        result = v38 + 32;
        vst4q_f32(v38, *(&a8 - 1));
        v40 = v38 + 16;
        vst4q_f32(v40, v56);
        v38 = result;
        v37 -= 8;
      }

      while (v37);
      if (v36 == (v36 & 0x3FFFFFF8))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = (a3 + 4 * v12);
    v19 = &a2[v12];
    do
    {
      v20 = *v19++;
      a6 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(v20)), *v9);
      *v18++ = a6;
      v12 += 4;
    }

    while (v12 <= v11);
    goto LABEL_15;
  }

  v12 = 0;
  v13 = a5;
  v14 = &a2[v13];
  do
  {
    a6 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&a2[v12])), *v9);
    v15 = v14;
    result = (v8 - 1);
    v16 = v9 + 1;
    do
    {
      v17 = *v16++;
      a8 = vcvtq_f32_u32(vmovl_u16(*v15));
      a6 = vmlaq_n_f32(a6, a8, v17);
      v15 = (v15 + v13 * 2);
      result = (result - 1);
    }

    while (result);
    *(a3 + 4 * v12) = a6;
    v12 += 4;
    ++v14;
  }

  while (v12 <= v11);
LABEL_15:
  if (v12 >= v10)
  {
    return result;
  }

  v21 = v12;
  if (v8 <= 1)
  {
    v29 = v10 - v12;
    if (v29 < 4 || (v30 = a3 + 4 * v12, v30 < (v9 + 1)) && v9 < a3 + 4 * v10)
    {
      v31 = v12;
      goto LABEL_26;
    }

    if (v29 >= 0x10)
    {
      v41 = v29 & 0xFFFFFFFFFFFFFFF0;
      v42 = vld1q_dup_f32(v9);
      v43 = &a2[v21 + 8];
      v44 = (v30 + 32);
      v45 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v46 = v43[-1];
        v47 = vcvtq_f32_u32(vmovl_high_u16(*v43));
        v48 = vmulq_f32(v42, vcvtq_f32_u32(vmovl_u16(*v43->i8)));
        v44[-2] = vmulq_f32(v42, vcvtq_f32_u32(vmovl_u16(*v46.i8)));
        v44[-1] = vmulq_f32(v42, vcvtq_f32_u32(vmovl_high_u16(v46)));
        *v44 = v48;
        v44[1] = vmulq_f32(v42, v47);
        v44 += 4;
        v43 += 2;
        v45 -= 16;
      }

      while (v45);
      if (v29 == v41)
      {
        return result;
      }

      if ((v29 & 0xC) == 0)
      {
        v31 = v41 + v21;
        goto LABEL_26;
      }
    }

    else
    {
      v41 = 0;
    }

    v31 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + v21;
    v49 = vld1q_dup_f32(v9);
    v50 = v41 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    v51 = v41 + v21;
    v52 = &a2[v51];
    v53 = (a3 + 4 * v51);
    do
    {
      v54 = *v52++;
      *v53++ = vmulq_f32(v49, vcvtq_f32_u32(vmovl_u16(v54)));
      v50 += 4;
    }

    while (v50);
    if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_26:
    v32 = (a3 + 4 * v31);
    v33 = v10 - v31;
    v34 = &a2[v31];
    do
    {
      v35 = *v34++;
      *v32++ = *v9 * v35;
      --v33;
    }

    while (v33);
    return result;
  }

  v22 = v8 - 1;
  v23 = a5;
  v24 = &a2[v12 + v23];
  do
  {
    a6.i16[0] = a2[v21];
    a6.f32[0] = *v9 * a6.u32[0];
    v25 = v24;
    v26 = v22;
    v27 = v9 + 1;
    do
    {
      v28 = *v27++;
      a8.i16[0] = *v25;
      a8.f32[0] = a8.u32[0];
      a6.f32[0] = a6.f32[0] + (v28 * a8.f32[0]);
      v25 = (v25 + v23 * 2);
      --v26;
    }

    while (v26);
    *(a3 + 4 * v21++) = a6.i32[0];
    ++v24;
  }

  while (v21 != v10);
  return result;
}

uint64_t sub_1003120FC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100312180(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478F78;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_1003123F0(uint64_t a1)
{
  *a1 = off_100478F78;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003124A0(uint64_t a1)
{
  *a1 = off_100478F78;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

double *sub_100312570(double *result, const __int16 *a2, unint64_t a3, int a4, int a5, double a6, float64x2_t a7, float64x2_t a8, float64x2_t a9, float64x2_t a10, double a11)
{
  v11 = *(result + 2);
  v12 = *(result + 4);
  v13 = (a5 * a4);
  v14 = (v13 - 4);
  if (v13 < 4)
  {
    LODWORD(v15) = 0;
    goto LABEL_15;
  }

  if (v11 <= 1)
  {
    if (v14 > 0x1B && ((v12 + 1) <= a3 || v12 >= a3 + ((8 * v14) & 0x3FFFFFFE0) + 32))
    {
      v43 = (v14 >> 2) + 1;
      v15 = 4 * (v43 & 0x3FFFFFF8);
      v44 = v43 & 0x3FFFFFF8;
      v45 = a3;
      v46 = a2;
      do
      {
        a6 = *v12;
        v86 = vld4q_s16(v46);
        v46 += 32;
        v47 = vmovl_u16(*v86.val[0].i8);
        v48.i64[0] = v47.u32[0];
        v48.i64[1] = v47.u32[1];
        v49 = vcvtq_f64_u64(v48);
        v48.i64[0] = v47.u32[2];
        v48.i64[1] = v47.u32[3];
        v50 = vcvtq_f64_u64(v48);
        v51 = vmovl_high_u16(v86.val[0]);
        v48.i64[0] = v51.u32[0];
        v48.i64[1] = v51.u32[1];
        v52 = vcvtq_f64_u64(v48);
        v48.i64[0] = v51.u32[2];
        v48.i64[1] = v51.u32[3];
        a7 = vcvtq_f64_u64(v48);
        v53 = vmovl_u16(*v86.val[1].i8);
        v48.i64[0] = v53.u32[0];
        v48.i64[1] = v53.u32[1];
        v54 = vcvtq_f64_u64(v48);
        v48.i64[0] = v53.u32[2];
        v48.i64[1] = v53.u32[3];
        v55 = vcvtq_f64_u64(v48);
        v56 = vmovl_high_u16(v86.val[1]);
        v48.i64[0] = v56.u32[0];
        v48.i64[1] = v56.u32[1];
        v57 = vcvtq_f64_u64(v48);
        v48.i64[0] = v56.u32[2];
        v48.i64[1] = v56.u32[3];
        v58 = vcvtq_f64_u64(v48);
        v59 = vmovl_u16(*v86.val[2].i8);
        v48.i64[0] = v59.u32[0];
        v48.i64[1] = v59.u32[1];
        v60 = vcvtq_f64_u64(v48);
        v48.i64[0] = v59.u32[2];
        v48.i64[1] = v59.u32[3];
        v61 = vcvtq_f64_u64(v48);
        v62 = vmovl_high_u16(v86.val[2]);
        v48.i64[0] = v62.u32[0];
        v48.i64[1] = v62.u32[1];
        v63 = vcvtq_f64_u64(v48);
        v48.i64[0] = v62.u32[2];
        v48.i64[1] = v62.u32[3];
        v64 = vcvtq_f64_u64(v48);
        v65 = vmovl_u16(*v86.val[3].i8);
        v48.i64[0] = v65.u32[0];
        v48.i64[1] = v65.u32[1];
        v66 = vcvtq_f64_u64(v48);
        v48.i64[0] = v65.u32[2];
        v48.i64[1] = v65.u32[3];
        v67 = vcvtq_f64_u64(v48);
        v86.val[0] = vmovl_high_u16(v86.val[3]);
        v48.i64[0] = v86.val[0].u32[0];
        v48.i64[1] = v86.val[0].u32[1];
        v86.val[1] = vcvtq_f64_u64(v48);
        v87.val[1] = vmulq_n_f64(v55, *v12);
        v87.val[0] = vmulq_n_f64(v50, *v12);
        v87.val[3] = vmulq_n_f64(v67, *v12);
        v87.val[2] = vmulq_n_f64(v61, *v12);
        v86.val[3] = vmulq_n_f64(v54, *v12);
        v86.val[2] = vmulq_n_f64(v49, *v12);
        v68 = vmulq_n_f64(v66, *v12);
        v69 = vmulq_n_f64(v60, *v12);
        v70 = v45;
        vst4q_f64(v70, *(&v86 + 32));
        v70 += 8;
        vst4q_f64(v70, v87);
        v48.i64[0] = v86.val[0].u32[2];
        v48.i64[1] = v86.val[0].u32[3];
        v86.val[3] = vmulq_n_f64(v57, a6);
        v86.val[2] = vmulq_n_f64(v52, a6);
        v71 = vmulq_n_f64(v86.val[1], a6);
        v72 = vmulq_n_f64(v63, a6);
        v73 = v45 + 16;
        vst4q_f64(v73, *(&v86 + 32));
        a8 = vcvtq_f64_u64(v48);
        a10 = vmulq_n_f64(v58, a6);
        a9 = vmulq_n_f64(a7, a6);
        v74 = vmulq_n_f64(a8, a6);
        v75 = vmulq_n_f64(v64, a6);
        result = v45 + 24;
        vst4q_f64(result, *a9.f64);
        v45 += 32;
        v44 -= 8;
      }

      while (v44);
      if (v43 == (v43 & 0x3FFFFFF8))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    v27 = &a2[v15 + 2];
    v28 = a3 + 8 * v15 + 16;
    do
    {
      LOWORD(a7.f64[0]) = *(v27 - 2);
      a7.f64[0] = *v12 * *&a7.f64[0];
      LOWORD(a8.f64[0]) = *(v27 - 1);
      a8.f64[0] = *v12 * *&a8.f64[0];
      LOWORD(a9.f64[0]) = *v27;
      a9.f64[0] = *v12 * *&a9.f64[0];
      LOWORD(a10.f64[0]) = v27[1];
      a10.f64[0] = *&a10.f64[0];
      a6 = *v12 * a10.f64[0];
      *(v28 - 16) = a7.f64[0];
      *(v28 - 8) = a8.f64[0];
      *v28 = a9.f64[0];
      *(v28 + 8) = a6;
      v28 += 32;
      v15 += 4;
      v27 += 4;
    }

    while (v15 <= v14);
    goto LABEL_15;
  }

  v15 = 0;
  v16 = a5;
  v17 = &a2[v16 + 2];
  do
  {
    v18 = &a2[v15];
    LOWORD(a6) = *v18;
    a6 = *v12 * *&a6;
    LOWORD(a7.f64[0]) = v18[1];
    a7.f64[0] = *v12 * *&a7.f64[0];
    LOWORD(a8.f64[0]) = v18[2];
    a8.f64[0] = *v12 * *&a8.f64[0];
    LOWORD(a10.f64[0]) = v18[3];
    v19 = *v12 * *&a10.f64[0];
    v20 = v17;
    result = (v11 - 1);
    v21 = v12 + 1;
    do
    {
      v22 = *v21++;
      a10.f64[0] = v22;
      LOWORD(a11) = *(v20 - 2);
      *&v23 = *&a11;
      a6 = a6 + v22 * *&v23;
      LOWORD(v23) = *(v20 - 1);
      *&v24 = v23;
      a7.f64[0] = a7.f64[0] + v22 * *&v24;
      LOWORD(v24) = *v20;
      *&v25 = v24;
      a8.f64[0] = a8.f64[0] + v22 * *&v25;
      LOWORD(v25) = v20[1];
      a11 = v25;
      v19 = v19 + v22 * a11;
      v20 = (v20 + v16 * 2);
      result = (result - 1);
    }

    while (result);
    v26 = (a3 + 8 * v15);
    *v26 = a6;
    v26[1] = a7.f64[0];
    v26[2] = a8.f64[0];
    v26[3] = v19;
    v15 += 4;
    v17 += 8;
  }

  while (v15 <= v14);
LABEL_15:
  if (v15 >= v13)
  {
    return result;
  }

  v29 = v15;
  if (v11 <= 1)
  {
    v37 = v13 - v15;
    if (v37 > 7 && ((v38 = (a3 + 8 * v15), v38 >= (v12 + 1)) || v12 >= a3 + 8 * v13))
    {
      v15 = (v37 & 0xFFFFFFFFFFFFFFF8) + v15;
      v76 = vld1q_dup_f64(v12);
      v77 = &a2[v29];
      v78 = v37 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v79 = *v77++;
        v80 = vmovl_high_u16(v79);
        v81.i64[0] = v80.u32[2];
        v81.i64[1] = v80.u32[3];
        v82 = vcvtq_f64_u64(v81);
        v81.i64[0] = v80.u32[0];
        v81.i64[1] = v80.u32[1];
        v83 = vcvtq_f64_u64(v81);
        v84 = vmovl_u16(*v79.i8);
        v81.i64[0] = v84.u32[2];
        v81.i64[1] = v84.u32[3];
        v85 = vcvtq_f64_u64(v81);
        v81.i64[0] = v84.u32[0];
        v81.i64[1] = v84.u32[1];
        v38[2] = vmulq_f64(v76, v83);
        v38[3] = vmulq_f64(v76, v82);
        *v38 = vmulq_f64(v76, vcvtq_f64_u64(v81));
        v38[1] = vmulq_f64(v76, v85);
        v38 += 4;
        v78 -= 8;
      }

      while (v78);
      if (v37 == (v37 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    else
    {
      v15 = v15;
    }

    v39 = (a3 + 8 * v15);
    v40 = v13 - v15;
    v41 = &a2[v15];
    do
    {
      v42 = *v41++;
      *v39++ = *v12 * v42;
      --v40;
    }

    while (v40);
    return result;
  }

  v30 = v11 - 1;
  v31 = a5;
  v32 = &a2[v15 + v31];
  do
  {
    LOWORD(a6) = a2[v29];
    a6 = *v12 * *&a6;
    v33 = v32;
    v34 = v30;
    v35 = v12 + 1;
    do
    {
      v36 = *v35++;
      LOWORD(a8.f64[0]) = *v33;
      a8.f64[0] = *&a8.f64[0];
      a6 = a6 + v36 * a8.f64[0];
      v33 = (v33 + v31 * 2);
      --v34;
    }

    while (v34);
    *(a3 + 8 * v29++) = a6;
    ++v32;
  }

  while (v29 != v13);
  return result;
}

uint64_t sub_100312970(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003129F4(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478FF8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100312C64(uint64_t a1)
{
  *a1 = off_100478FF8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100312D14(uint64_t a1)
{
  *a1 = off_100478FF8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

float *sub_100312DE4(float *result, const __int16 *a2, unint64_t a3, int a4, int a5, double a6, float32x4_t a7, float32x4_t a8)
{
  v8 = *(result + 2);
  v9 = *(result + 4);
  v10 = (a5 * a4);
  v11 = (v10 - 4);
  if (v10 < 4)
  {
    LODWORD(v12) = 0;
    goto LABEL_15;
  }

  if (v8 <= 1)
  {
    if (v11 > 0x1B && ((v9 + 1) <= a3 || v9 >= a3 + ((4 * v11) & 0x1FFFFFFF0) + 16))
    {
      v38 = (v11 >> 2) + 1;
      v12 = 4 * (v38 & 0x3FFFFFF8);
      v39 = v38 & 0x3FFFFFF8;
      v40 = a3;
      v41 = a2;
      do
      {
        v57 = vld4q_s16(v41);
        v41 += 32;
        v58.val[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v57.val[1])), *v9);
        v58.val[0] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v57.val[0])), *v9);
        v58.val[3] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v57.val[3])), *v9);
        v58.val[2] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v57.val[2])), *v9);
        a8 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57.val[1].i8)), *v9);
        a7 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57.val[0].i8)), *v9);
        v57.val[3] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57.val[3].i8)), *v9);
        v57.val[2] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57.val[2].i8)), *v9);
        result = v40 + 32;
        vst4q_f32(v40, *a7.f32);
        v42 = v40 + 16;
        vst4q_f32(v42, v58);
        v40 = result;
        v39 -= 8;
      }

      while (v39);
      if (v38 == (v38 & 0x3FFFFFF8))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
    }

    v19 = (a3 + 4 * v12);
    v20 = &a2[v12];
    do
    {
      v21 = *v20++;
      a7 = vcvtq_f32_s32(vmovl_s16(v21));
      *v19++ = vmulq_n_f32(a7, *v9);
      v12 += 4;
    }

    while (v12 <= v11);
    goto LABEL_15;
  }

  v12 = 0;
  v13 = a5;
  v14 = &a2[v13];
  do
  {
    a7 = vcvtq_f32_s32(vmovl_s16(*&a2[v12]));
    v15 = vmulq_n_f32(a7, *v9);
    v16 = v14;
    result = (v8 - 1);
    v17 = v9 + 1;
    do
    {
      v18 = *v17++;
      a7.i16[1] = HIWORD(v18);
      a8 = vcvtq_f32_s32(vmovl_s16(*v16));
      v15 = vmlaq_n_f32(v15, a8, v18);
      v16 = (v16 + v13 * 2);
      result = (result - 1);
    }

    while (result);
    *(a3 + 4 * v12) = v15;
    v12 += 4;
    ++v14;
  }

  while (v12 <= v11);
LABEL_15:
  if (v12 >= v10)
  {
    return result;
  }

  v22 = v12;
  if (v8 <= 1)
  {
    v31 = v10 - v12;
    if (v31 < 4 || (v32 = a3 + 4 * v12, v32 < (v9 + 1)) && v9 < a3 + 4 * v10)
    {
      v33 = v12;
      goto LABEL_26;
    }

    if (v31 >= 0x10)
    {
      v43 = v31 & 0xFFFFFFFFFFFFFFF0;
      v44 = vld1q_dup_f32(v9);
      v45 = &a2[v22 + 8];
      v46 = (v32 + 32);
      v47 = v31 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v48 = v45[-1];
        v49 = vcvtq_f32_s32(vmovl_high_s16(*v45));
        v50 = vmulq_f32(v44, vcvtq_f32_s32(vmovl_s16(*v45->i8)));
        v46[-2] = vmulq_f32(v44, vcvtq_f32_s32(vmovl_s16(*v48.i8)));
        v46[-1] = vmulq_f32(v44, vcvtq_f32_s32(vmovl_high_s16(v48)));
        *v46 = v50;
        v46[1] = vmulq_f32(v44, v49);
        v46 += 4;
        v45 += 2;
        v47 -= 16;
      }

      while (v47);
      if (v31 == v43)
      {
        return result;
      }

      if ((v31 & 0xC) == 0)
      {
        v33 = v43 + v22;
        goto LABEL_26;
      }
    }

    else
    {
      v43 = 0;
    }

    v33 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + v22;
    v51 = vld1q_dup_f32(v9);
    v52 = v43 - (v31 & 0xFFFFFFFFFFFFFFFCLL);
    v53 = v43 + v22;
    v54 = &a2[v53];
    v55 = (a3 + 4 * v53);
    do
    {
      v56 = *v54++;
      *v55++ = vmulq_f32(v51, vcvtq_f32_s32(vmovl_s16(v56)));
      v52 += 4;
    }

    while (v52);
    if (v31 == (v31 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_26:
    v34 = (a3 + 4 * v33);
    v35 = v10 - v33;
    v36 = &a2[v33];
    do
    {
      v37 = *v36++;
      *v34++ = *v9 * v37;
      --v35;
    }

    while (v35);
    return result;
  }

  v23 = v8 - 1;
  v24 = a5;
  v25 = &a2[v12 + v24];
  do
  {
    a7.i16[0] = a2[v22];
    a7.i64[0] = vmovl_s16(*a7.f32).u64[0];
    v26 = *v9 * a7.i32[0];
    v27 = v25;
    v28 = v23;
    v29 = v9 + 1;
    do
    {
      v30 = *v29++;
      a7.i16[1] = HIWORD(v30);
      a8.i16[0] = *v27;
      a8.i64[0] = vmovl_s16(*a8.f32).u64[0];
      a8.f32[0] = a8.i32[0];
      v26 = v26 + (v30 * a8.f32[0]);
      v27 = (v27 + v24 * 2);
      --v28;
    }

    while (v28);
    *(a3 + 4 * v22++) = v26;
    ++v25;
  }

  while (v22 != v10);
  return result;
}

uint64_t sub_100313144(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003131C8(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100479078;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100313438(uint64_t a1)
{
  *a1 = off_100479078;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003134E8(uint64_t a1)
{
  *a1 = off_100479078;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

double *sub_1003135B8(double *result, const __int16 *a2, unint64_t a3, int a4, int a5, double a6, float64x2_t a7, float64x2_t a8, float64x2_t a9, float64x2_t a10, int16x4_t a11)
{
  v11 = *(result + 2);
  v12 = *(result + 4);
  v13 = (a5 * a4);
  v14 = (v13 - 4);
  if (v13 < 4)
  {
    LODWORD(v15) = 0;
    goto LABEL_15;
  }

  if (v11 <= 1)
  {
    if (v14 > 0x1B && ((v12 + 1) <= a3 || v12 >= a3 + ((8 * v14) & 0x3FFFFFFE0) + 32))
    {
      v45 = (v14 >> 2) + 1;
      v15 = 4 * (v45 & 0x3FFFFFF8);
      v46 = v45 & 0x3FFFFFF8;
      v47 = a3;
      v48 = a2;
      do
      {
        v49 = *v12;
        v89 = vld4q_s16(v48);
        v48 += 32;
        v50 = vmovl_s16(*v89.val[0].i8);
        v51.i64[0] = v50.i32[0];
        v51.i64[1] = v50.i32[1];
        v52 = vcvtq_f64_s64(v51);
        v51.i64[0] = v50.i32[2];
        v51.i64[1] = v50.i32[3];
        v53 = vcvtq_f64_s64(v51);
        v54 = vmovl_high_s16(v89.val[0]);
        v51.i64[0] = v54.i32[0];
        v51.i64[1] = v54.i32[1];
        v55 = vcvtq_f64_s64(v51);
        v51.i64[0] = v54.i32[2];
        v51.i64[1] = v54.i32[3];
        a7 = vcvtq_f64_s64(v51);
        v56 = vmovl_s16(*v89.val[1].i8);
        v51.i64[0] = v56.i32[0];
        v51.i64[1] = v56.i32[1];
        v57 = vcvtq_f64_s64(v51);
        v51.i64[0] = v56.i32[2];
        v51.i64[1] = v56.i32[3];
        v58 = vcvtq_f64_s64(v51);
        v59 = vmovl_high_s16(v89.val[1]);
        v51.i64[0] = v59.i32[0];
        v51.i64[1] = v59.i32[1];
        v60 = vcvtq_f64_s64(v51);
        v51.i64[0] = v59.i32[2];
        v51.i64[1] = v59.i32[3];
        v61 = vcvtq_f64_s64(v51);
        v62 = vmovl_s16(*v89.val[2].i8);
        v51.i64[0] = v62.i32[0];
        v51.i64[1] = v62.i32[1];
        v63 = vcvtq_f64_s64(v51);
        v51.i64[0] = v62.i32[2];
        v51.i64[1] = v62.i32[3];
        v64 = vcvtq_f64_s64(v51);
        v65 = vmovl_high_s16(v89.val[2]);
        v51.i64[0] = v65.i32[0];
        v51.i64[1] = v65.i32[1];
        v66 = vcvtq_f64_s64(v51);
        v51.i64[0] = v65.i32[2];
        v51.i64[1] = v65.i32[3];
        v67 = vcvtq_f64_s64(v51);
        v68 = vmovl_s16(*v89.val[3].i8);
        v51.i64[0] = v68.i32[0];
        v51.i64[1] = v68.i32[1];
        v69 = vcvtq_f64_s64(v51);
        v51.i64[0] = v68.i32[2];
        v51.i64[1] = v68.i32[3];
        v70 = vcvtq_f64_s64(v51);
        v89.val[0] = vmovl_high_s16(v89.val[3]);
        v51.i64[0] = v89.val[0].i32[0];
        v51.i64[1] = v89.val[0].i32[1];
        v89.val[1] = vcvtq_f64_s64(v51);
        v90.val[1] = vmulq_n_f64(v58, *v12);
        v90.val[0] = vmulq_n_f64(v53, *v12);
        v90.val[3] = vmulq_n_f64(v70, *v12);
        v90.val[2] = vmulq_n_f64(v64, *v12);
        v89.val[3] = vmulq_n_f64(v57, *v12);
        v89.val[2] = vmulq_n_f64(v52, *v12);
        v71 = vmulq_n_f64(v69, *v12);
        v72 = vmulq_n_f64(v63, *v12);
        v73 = v47;
        vst4q_f64(v73, *(&v89 + 32));
        v73 += 8;
        vst4q_f64(v73, v90);
        v51.i64[0] = v89.val[0].i32[2];
        v51.i64[1] = v89.val[0].i32[3];
        v89.val[3] = vmulq_n_f64(v60, v49);
        v89.val[2] = vmulq_n_f64(v55, v49);
        v74 = vmulq_n_f64(v89.val[1], v49);
        v75 = vmulq_n_f64(v66, v49);
        v76 = v47 + 16;
        vst4q_f64(v76, *(&v89 + 32));
        a8 = vcvtq_f64_s64(v51);
        a10 = vmulq_n_f64(v61, v49);
        a9 = vmulq_n_f64(a7, v49);
        v77 = vmulq_n_f64(a8, v49);
        v78 = vmulq_n_f64(v67, v49);
        result = v47 + 24;
        vst4q_f64(result, *a9.f64);
        v47 += 32;
        v46 -= 8;
      }

      while (v46);
      if (v45 == (v45 & 0x3FFFFFF8))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    v27 = &a2[v15 + 2];
    v28 = a3 + 8 * v15 + 16;
    do
    {
      LOWORD(a7.f64[0]) = *(v27 - 2);
      a7.f64[0] = *v12 * vmovl_s16(*&a7.f64[0]).i32[0];
      LOWORD(a8.f64[0]) = *(v27 - 1);
      a8.f64[0] = *v12 * vmovl_s16(*&a8.f64[0]).i32[0];
      LOWORD(a9.f64[0]) = *v27;
      a9.f64[0] = *v12 * vmovl_s16(*&a9.f64[0]).i32[0];
      LOWORD(a10.f64[0]) = v27[1];
      a10.f64[0] = vmovl_s16(*&a10.f64[0]).i32[0];
      v29 = *v12 * a10.f64[0];
      *(v28 - 16) = a7.f64[0];
      *(v28 - 8) = a8.f64[0];
      *v28 = a9.f64[0];
      *(v28 + 8) = v29;
      v28 += 32;
      v15 += 4;
      v27 += 4;
    }

    while (v15 <= v14);
    goto LABEL_15;
  }

  v15 = 0;
  v16 = a5;
  v17 = &a2[v16 + 2];
  do
  {
    v18 = &a2[v15];
    LOWORD(a6) = *v18;
    a6 = *v12 * vmovl_s16(*&a6).i32[0];
    LOWORD(a7.f64[0]) = v18[1];
    a7.f64[0] = *v12 * vmovl_s16(*&a7.f64[0]).i32[0];
    LOWORD(a8.f64[0]) = v18[2];
    a8.f64[0] = *v12 * vmovl_s16(*&a8.f64[0]).i32[0];
    LOWORD(a10.f64[0]) = v18[3];
    v19 = *v12 * vmovl_s16(*&a10.f64[0]).i32[0];
    v20 = v17;
    result = (v11 - 1);
    v21 = v12 + 1;
    do
    {
      v22 = *v21++;
      a10.f64[0] = v22;
      a11.i16[0] = *(v20 - 2);
      *&v23 = vmovl_s16(a11).i32[0];
      a6 = a6 + v22 * *&v23;
      v23.i16[0] = *(v20 - 1);
      *&v24 = vmovl_s16(v23).i32[0];
      a7.f64[0] = a7.f64[0] + v22 * *&v24;
      v24.i16[0] = *v20;
      *&v25 = vmovl_s16(v24).i32[0];
      a8.f64[0] = a8.f64[0] + v22 * *&v25;
      v25.i16[0] = v20[1];
      *&a11 = vmovl_s16(v25).i32[0];
      v19 = v19 + v22 * *&a11;
      v20 = (v20 + v16 * 2);
      result = (result - 1);
    }

    while (result);
    v26 = (a3 + 8 * v15);
    *v26 = a6;
    v26[1] = a7.f64[0];
    v26[2] = a8.f64[0];
    v26[3] = v19;
    v15 += 4;
    v17 += 8;
  }

  while (v15 <= v14);
LABEL_15:
  if (v15 >= v13)
  {
    return result;
  }

  v30 = v15;
  if (v11 <= 1)
  {
    v39 = v13 - v15;
    if (v39 > 7 && ((v40 = (a3 + 8 * v15), v40 >= (v12 + 1)) || v12 >= a3 + 8 * v13))
    {
      v15 = (v39 & 0xFFFFFFFFFFFFFFF8) + v15;
      v79 = vld1q_dup_f64(v12);
      v80 = &a2[v30];
      v81 = v39 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v82 = *v80++;
        v83 = vmovl_high_s16(v82);
        v84.i64[0] = v83.i32[2];
        v84.i64[1] = v83.i32[3];
        v85 = vcvtq_f64_s64(v84);
        v84.i64[0] = v83.i32[0];
        v84.i64[1] = v83.i32[1];
        v86 = vcvtq_f64_s64(v84);
        v87 = vmovl_s16(*v82.i8);
        v84.i64[0] = v87.i32[2];
        v84.i64[1] = v87.i32[3];
        v88 = vcvtq_f64_s64(v84);
        v84.i64[0] = v87.i32[0];
        v84.i64[1] = v87.i32[1];
        v40[2] = vmulq_f64(v79, v86);
        v40[3] = vmulq_f64(v79, v85);
        *v40 = vmulq_f64(v79, vcvtq_f64_s64(v84));
        v40[1] = vmulq_f64(v79, v88);
        v40 += 4;
        v81 -= 8;
      }

      while (v81);
      if (v39 == (v39 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    else
    {
      v15 = v15;
    }

    v41 = (a3 + 8 * v15);
    v42 = v13 - v15;
    v43 = &a2[v15];
    do
    {
      v44 = *v43++;
      *v41++ = *v12 * v44;
      --v42;
    }

    while (v42);
    return result;
  }

  v31 = v11 - 1;
  v32 = a5;
  v33 = &a2[v15 + v32];
  do
  {
    LOWORD(a7.f64[0]) = a2[v30];
    v34 = *v12 * vmovl_s16(*&a7.f64[0]).i32[0];
    v35 = v33;
    v36 = v31;
    v37 = v12 + 1;
    do
    {
      v38 = *v37++;
      a7.f64[0] = v38;
      LOWORD(a8.f64[0]) = *v35;
      a8.f64[0] = vmovl_s16(*&a8.f64[0]).i32[0];
      v34 = v34 + v38 * a8.f64[0];
      v35 = (v35 + v32 * 2);
      --v36;
    }

    while (v36);
    *(a3 + 8 * v30++) = v34;
    ++v33;
  }

  while (v30 != v13);
  return result;
}

uint64_t sub_100313A28(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100313AAC(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_1004790F8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100313D1C(uint64_t a1)
{
  *a1 = off_1004790F8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100313DCC(uint64_t a1)
{
  *a1 = off_1004790F8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

float32x4_t *sub_100313E9C(float32x4_t *result, float32x4_t *a2, unint64_t a3, int a4, int a5)
{
  v5 = result->u32[2];
  v6 = result[2].i64[0];
  v7 = (a5 * a4);
  v8 = (v7 - 4);
  if (v7 < 4)
  {
    LODWORD(v9) = 0;
    goto LABEL_13;
  }

  if (v5 > 1)
  {
    v9 = 0;
    v10 = 4 * a5;
    v11 = (a2 + v10);
    do
    {
      v12 = vmulq_n_f32(a2[v9 / 4], *v6);
      result = v11;
      v13 = v5 - 1;
      v14 = v6 + 1;
      do
      {
        v15 = *v14++;
        v12 = vmlaq_n_f32(v12, *result, v15);
        result = (result + v10);
        --v13;
      }

      while (v13);
      *(a3 + 4 * v9) = v12;
      v9 += 4;
      ++v11;
    }

    while (v9 <= v8);
    goto LABEL_13;
  }

  if (v8 <= 0xB)
  {
    v9 = 0;
LABEL_11:
    v16 = (a3 + 4 * v9);
    v17 = &a2[v9 / 4];
    do
    {
      v18 = *v17++;
      *v16++ = vmulq_n_f32(v18, *v6);
      v9 += 4;
    }

    while (v9 <= v8);
    goto LABEL_13;
  }

  v9 = 0;
  v33 = ((4 * v8) & 0x1FFFFFFF0) + 16;
  v34 = a3 + v33;
  v36 = a2 + v33 > a3 && v34 > a2;
  if (v6 < v34 && (v6 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v36)
  {
    goto LABEL_11;
  }

  v38 = (v8 >> 2) + 1;
  v9 = 4 * (v38 & 0x3FFFFFFC);
  v39 = v38 & 0x3FFFFFFC;
  v40 = a3;
  v41 = a2;
  do
  {
    v42 = v41[2];
    v43 = v41[3];
    v44 = *v41;
    v45 = v41[1];
    v41 += 4;
    v46 = vmulq_n_f32(v45, *v6);
    v47 = vmulq_n_f32(v44, *v6);
    v48 = vmulq_n_f32(v43, *v6);
    v40[2] = vmulq_n_f32(v42, *v6);
    v40[3] = v48;
    *v40 = v47;
    v40[1] = v46;
    v40 += 4;
    v39 -= 4;
  }

  while (v39);
  if (v38 != (v38 & 0x3FFFFFFC))
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v9 < v7)
  {
    v19 = v9;
    if (v5 <= 1)
    {
      v28 = v7 - v9;
      if (v28 <= 0xB)
      {
        goto LABEL_21;
      }

      v49 = 4 * v9;
      v50 = a3 + 4 * v7;
      v51 = a3 + v49 >= a2->u64 + 4 * v7 || a2->u64 + 4 * v9 >= v50;
      v52 = !v51;
      if (v6 < v50 && a3 + v49 < (v6 + 1))
      {
        goto LABEL_21;
      }

      if (v52)
      {
        goto LABEL_21;
      }

      v19 += v28 & 0xFFFFFFFFFFFFFFF8;
      v54 = vld1q_dup_f32(v6);
      v55 = v49 + 16;
      v56 = (a2 + v49 + 16);
      v57 = (a3 + v55);
      v58 = v28 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v59 = vmulq_f32(v54, *v56);
        v57[-1] = vmulq_f32(v54, v56[-1]);
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 8;
      }

      while (v58);
      if (v28 != (v28 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_21:
        v29 = (a3 + 4 * v19);
        v30 = &a2->f32[v19];
        v31 = v7 - v19;
        do
        {
          v32 = *v30++;
          *v29++ = *v6 * v32;
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v20 = v5 - 1;
      v21 = a5;
      v22 = &a2->f32[v9 + v21];
      do
      {
        v23 = *v6 * a2->f32[v19];
        v24 = v22;
        v25 = v20;
        v26 = v6 + 1;
        do
        {
          v27 = *v26++;
          v23 = v23 + (v27 * *v24);
          v24 = (v24 + v21 * 4);
          --v25;
        }

        while (v25);
        *(a3 + 4 * v19++) = v23;
        ++v22;
      }

      while (v19 != v7);
    }
  }

  return result;
}

uint64_t sub_100314128(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003141AC(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100479178;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_10031441C(uint64_t a1)
{
  *a1 = off_100479178;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003144CC(uint64_t a1)
{
  *a1 = off_100479178;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

double *sub_10031459C(double *result, const float *a2, unint64_t a3, int a4, int a5)
{
  v5 = *(result + 2);
  v6 = *(result + 4);
  v7 = (a5 * a4);
  v8 = (v7 - 4);
  if (v7 < 4)
  {
    LODWORD(v9) = 0;
    goto LABEL_15;
  }

  if (v5 <= 1)
  {
    if (v8 > 0xB && ((v6 + 1) <= a3 || v6 >= a3 + ((8 * v8) & 0x3FFFFFFE0) + 32))
    {
      v37 = (v8 >> 2) + 1;
      v9 = 4 * (v37 & 0x3FFFFFFC);
      v38 = v37 & 0x3FFFFFFC;
      v39 = a3;
      v40 = a2;
      do
      {
        v49 = vld4q_f32(v40);
        v40 += 16;
        v50.val[1] = vmulq_n_f64(vcvt_hight_f64_f32(v49.val[1]), *v6);
        v50.val[0] = vmulq_n_f64(vcvt_hight_f64_f32(v49.val[0]), *v6);
        v50.val[3] = vmulq_n_f64(vcvt_hight_f64_f32(v49.val[3]), *v6);
        v50.val[2] = vmulq_n_f64(vcvt_hight_f64_f32(v49.val[2]), *v6);
        v49.val[1] = vmulq_n_f64(vcvtq_f64_f32(*&v49.val[1].f64[0]), *v6);
        v49.val[0] = vmulq_n_f64(vcvtq_f64_f32(*&v49.val[0].f64[0]), *v6);
        v49.val[3] = vmulq_n_f64(vcvtq_f64_f32(*&v49.val[3].f64[0]), *v6);
        v49.val[2] = vmulq_n_f64(vcvtq_f64_f32(*&v49.val[2].f64[0]), *v6);
        result = v39 + 16;
        vst4q_f64(v39, v49);
        v41 = v39 + 8;
        vst4q_f64(v41, v50);
        v39 = result;
        v38 -= 4;
      }

      while (v38);
      if (v37 == (v37 & 0x3FFFFFFC))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0;
    }

    v19 = (a3 + 8 * v9 + 16);
    v20 = &a2[v9 + 2];
    do
    {
      v21 = vmulq_n_f64(vcvtq_f64_f32(*v20), *v6);
      v19[-1] = vmulq_n_f64(vcvtq_f64_f32(v20[-1]), *v6);
      *v19 = v21;
      v9 += 4;
      v19 += 2;
      v20 += 2;
    }

    while (v9 <= v8);
    goto LABEL_15;
  }

  v9 = 0;
  v10 = a5;
  v11 = &a2[v10 + 2];
  do
  {
    v12 = &a2[v9];
    v13 = vmulq_n_f64(vcvtq_f64_f32(*v12), *v6);
    v14 = vmulq_n_f64(vcvtq_f64_f32(v12[1]), *v6);
    v15 = v11;
    result = (v5 - 1);
    v16 = v6 + 1;
    do
    {
      v17 = vld1q_dup_f64(v16++);
      v13 = vmlaq_f64(v13, vcvtq_f64_f32(v15[-1]), v17);
      v14 = vmlaq_f64(v14, vcvtq_f64_f32(*v15), v17);
      v15 = (v15 + v10 * 4);
      result = (result - 1);
    }

    while (result);
    v18 = (a3 + 8 * v9);
    *v18 = v13;
    v18[1] = v14;
    v9 += 4;
    v11 += 16;
  }

  while (v9 <= v8);
LABEL_15:
  if (v9 >= v7)
  {
    return result;
  }

  v22 = v9;
  if (v5 <= 1)
  {
    v31 = v7 - v9;
    if (v31 > 7 && ((v32 = a3 + 8 * v9, v32 >= (v6 + 1)) || v6 >= a3 + 8 * v7))
    {
      v9 = (v31 & 0xFFFFFFFFFFFFFFF8) + v9;
      v42 = vld1q_dup_f64(v6);
      v43 = &a2[v22 + 4];
      v44 = (v32 + 32);
      v45 = v31 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v46 = v43[-1];
        v47 = vcvt_hight_f64_f32(*v43);
        v48 = vmulq_f64(v42, vcvtq_f64_f32(*v43->f32));
        v44[-2] = vmulq_f64(v42, vcvtq_f64_f32(*v46.f32));
        v44[-1] = vmulq_f64(v42, vcvt_hight_f64_f32(v46));
        *v44 = v48;
        v44[1] = vmulq_f64(v42, v47);
        v44 += 4;
        v43 += 2;
        v45 -= 8;
      }

      while (v45);
      if (v31 == (v31 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    else
    {
      v9 = v9;
    }

    v33 = (a3 + 8 * v9);
    v34 = v7 - v9;
    v35 = &a2[v9];
    do
    {
      v36 = *v35++;
      *v33++ = *v6 * v36;
      --v34;
    }

    while (v34);
    return result;
  }

  v23 = v5 - 1;
  v24 = a5;
  v25 = &a2[v9 + v24];
  do
  {
    v26 = *v6 * a2[v22];
    v27 = v25;
    v28 = v23;
    v29 = v6 + 1;
    do
    {
      v30 = *v29++;
      v26 = v26 + v30 * *v27;
      v27 = (v27 + v24 * 4);
      --v28;
    }

    while (v28);
    *(a3 + 8 * v22++) = v26;
    ++v25;
  }

  while (v22 != v7);
  return result;
}

uint64_t sub_10031488C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100314910(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_1004791F8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100314B80(uint64_t a1)
{
  *a1 = off_1004791F8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100314C30(uint64_t a1)
{
  *a1 = off_1004791F8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100314D00(uint64_t result, float64x2_t *a2, unint64_t a3, int a4, int a5)
{
  v5 = *(result + 8);
  v6 = *(result + 32);
  v7 = (a5 * a4);
  v8 = (v7 - 4);
  if (v7 < 4)
  {
    LODWORD(v9) = 0;
    goto LABEL_13;
  }

  if (v5 > 1)
  {
    v9 = 0;
    v10 = 8 * a5;
    v11 = &a2[1] + v10;
    do
    {
      v12 = &a2[v9 / 2];
      v13 = vmulq_n_f64(*v12, *v6);
      v14 = vmulq_n_f64(v12[1], *v6);
      v15 = v11;
      result = v5 - 1;
      v16 = v6 + 1;
      do
      {
        v17 = vld1q_dup_f64(v16++);
        v13 = vmlaq_f64(v13, v15[-1], v17);
        v14 = vmlaq_f64(v14, *v15, v17);
        v15 = (v15 + v10);
        --result;
      }

      while (result);
      v18 = (a3 + 8 * v9);
      *v18 = v13;
      v18[1] = v14;
      v9 += 4;
      v11 += 32;
    }

    while (v9 <= v8);
    goto LABEL_13;
  }

  if (v8 <= 0xB)
  {
    v9 = 0;
LABEL_11:
    v19 = 8 * v9 + 16;
    v20 = (a3 + v19);
    v21 = (a2 + v19);
    do
    {
      v22 = vmulq_n_f64(*v21, *v6);
      v20[-1] = vmulq_n_f64(v21[-1], *v6);
      *v20 = v22;
      v9 += 4;
      v20 += 2;
      v21 += 2;
    }

    while (v9 <= v8);
    goto LABEL_13;
  }

  v9 = 0;
  v37 = ((8 * v8) & 0x3FFFFFFE0) + 32;
  v38 = a3 + v37;
  v40 = a2 + v37 > a3 && v38 > a2;
  if (v6 < v38 && (v6 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v40)
  {
    goto LABEL_11;
  }

  v42 = (v8 >> 2) + 1;
  v9 = 4 * (v42 & 0x3FFFFFFE);
  v43 = v42 & 0x3FFFFFFE;
  v44 = a3;
  v45 = a2;
  do
  {
    v46 = v45[2];
    v47 = v45[3];
    v48 = *v45;
    v49 = v45[1];
    v45 += 4;
    v50 = vmulq_n_f64(v49, *v6);
    v51 = vmulq_n_f64(v48, *v6);
    v52 = vmulq_n_f64(v47, *v6);
    v44[2] = vmulq_n_f64(v46, *v6);
    v44[3] = v52;
    *v44 = v51;
    v44[1] = v50;
    v44 += 4;
    v43 -= 2;
  }

  while (v43);
  if (v42 != (v42 & 0x3FFFFFFE))
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v9 < v7)
  {
    v23 = v9;
    if (v5 <= 1)
    {
      v32 = v7 - v9;
      if (v32 <= 9)
      {
        goto LABEL_21;
      }

      v53 = 8 * v9;
      v54 = a3 + 8 * v7;
      v55 = a3 + v53 >= &a2->f64[v7] || &a2->f64[v9] >= v54;
      v56 = !v55;
      if (v6 < v54 && a3 + v53 < (v6 + 1))
      {
        goto LABEL_21;
      }

      if (v56)
      {
        goto LABEL_21;
      }

      v23 += v32 & 0xFFFFFFFFFFFFFFFCLL;
      v58 = vld1q_dup_f64(v6);
      v59 = v53 + 16;
      v60 = (a2 + v53 + 16);
      v61 = (a3 + v59);
      v62 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v63 = vmulq_f64(v58, *v60);
        v61[-1] = vmulq_f64(v58, v60[-1]);
        *v61 = v63;
        v60 += 2;
        v61 += 2;
        v62 -= 4;
      }

      while (v62);
      if (v32 != (v32 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_21:
        v33 = (a3 + 8 * v23);
        v34 = &a2->f64[v23];
        v35 = v7 - v23;
        do
        {
          v36 = *v34++;
          *v33++ = *v6 * v36;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v24 = v5 - 1;
      v25 = a5;
      v26 = &a2->f64[v9 + v25];
      do
      {
        v27 = *v6 * a2->f64[v23];
        v28 = v26;
        v29 = v24;
        v30 = v6 + 1;
        do
        {
          v31 = *v30++;
          v27 = v27 + v31 * *v28;
          v28 = (v28 + v25 * 8);
          --v29;
        }

        while (v29);
        *(a3 + 8 * v23++) = v27;
        ++v26;
      }

      while (v23 != v7);
    }
  }

  return result;
}

uint64_t sub_100314FAC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100315030(uint64_t a1, uint64_t a2, int a3, void *a4, double a5)
{
  *(a1 + 8) = -1;
  *a1 = off_100479278;
  *(a1 + 16) = 1124007936;
  v10 = (a1 + 16);
  *(a1 + 20) = 0u;
  v11 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v10 == a2)
    {
      goto LABEL_17;
    }

    v12 = *(a2 + 56);
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      v13 = *(a1 + 72);
      if (v13)
      {
        if (atomic_fetch_add((v13 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v10 = *a2;
      v17 = *(a2 + 4);
      if (v17 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v17;
        *(a1 + 24) = *(a2 + 8);
        v18 = *(a2 + 72);
        v19 = *(a1 + 88);
        *v19 = *v18;
        v19[1] = v18[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
        v16 = *v11;
      }

      while (v14 < v16);
      *v10 = *a2;
      if (v16 <= 2)
      {
        v17 = *(a2 + 4);
        if (v17 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v10, a2);
    goto LABEL_16;
  }

  LODWORD(v23) = 33619968;
  v24 = a1 + 16;
  v25 = 0;
  sub_10022B754(a2, &v23);
LABEL_17:
  v21 = *(a1 + 24);
  v20 = *(a1 + 28);
  *(a1 + 8) = v21 + v20 - 1;
  *(a1 + 12) = a3;
  *(a1 + 124) = rint(a5);
  *(a1 + 112) = *a4;
  if ((*(a1 + 16) & 0xFFF) != 4 || v21 != 1 && v20 != 1)
  {
    v23 = 0;
    v24 = 0;
    qmemcpy(sub_1002A80E0(&v23, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v23, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_1003152C4(uint64_t a1)
{
  *a1 = off_100479278;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100315374(uint64_t a1)
{
  *a1 = off_100479278;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100315444(uint64_t result, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 124);
    v8 = *(result + 112);
    v9 = *(result + 116);
    v10 = *(result + 8);
    result = (v10 - 1) | 1;
    v11 = vdupq_n_s32(v7);
    v12 = vdupq_n_s32(v9);
    v13 = a2 + 2;
    v14 = vnegq_s32(vdupq_n_s32(v8));
    v15.i64[0] = 0xFF000000FFLL;
    v15.i64[1] = 0xFF000000FFLL;
    while (a6 < 4)
    {
      v16 = 0;
      if (a6 > 0)
      {
        goto LABEL_14;
      }

LABEL_3:
      a3 += a4;
      ++a2;
      ++v13;
      if (!--a5)
      {
        return result;
      }
    }

    v16 = 0;
    do
    {
      v17 = vld1q_dup_f32(v6);
      v18 = vmlaq_s32(v11, *(*a2 + 4 * v16), v17);
      if (v10 >= 2)
      {
        for (i = 1; i != v10; ++i)
        {
          v20 = &v6[i];
          v21 = vld1q_dup_f32(v20);
          v18 = vmlaq_s32(v18, *(a2[i] + 4 * v16), v21);
        }
      }

      *(a3 + v16) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v18, v12), v14), 0), v15)), *v11.i8).u32[0];
      v16 += 4;
    }

    while (v16 <= a6 - 4);
    v16 = v16;
    if (v16 >= a6)
    {
      goto LABEL_3;
    }

LABEL_14:
    if (v10 <= 1)
    {
      do
      {
        v22 = (v7 + *(*a2 + 4 * v16) * *v6 + v9) >> v8;
        v23 = v22 & ~(v22 >> 31);
        if (v23 >= 255)
        {
          LOBYTE(v23) = -1;
        }

        *(a3 + v16++) = v23;
      }

      while (a6 != v16);
      goto LABEL_3;
    }

    while (1)
    {
      v25 = v7 + *(*a2 + 4 * v16) * *v6;
      if (v10 == 2)
      {
        v26 = 1;
      }

      else
      {
        v27 = 0;
        v28 = v13;
        v29 = v6 + 2;
        v30 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v25 += *(*(v28 - 1) + 4 * v16) * *(v29 - 1);
          v27 += *(*v28 + 4 * v16) * *v29;
          v29 += 2;
          v28 += 2;
          v30 -= 2;
        }

        while (v30);
        v25 += v27;
        v26 = (v10 - 1) | 1;
        if (v10 - 1 == ((v10 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_19;
        }
      }

      do
      {
        v25 += *(a2[v26] + 4 * v16) * LODWORD(v6[v26]);
        ++v26;
      }

      while (v10 != v26);
LABEL_19:
      v24 = ((v25 + v9) >> v8) & ~((v25 + v9) >> v8 >> 31);
      if (v24 >= 255)
      {
        LOBYTE(v24) = -1;
      }

      *(a3 + v16++) = v24;
      if (v16 == a6)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_10031567C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100315700(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479300;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v22) = 33619968;
  v23 = a1 + 16;
  v24 = 0;
  sub_10022B754(a2, &v22);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    v22 = 0;
    v23 = 0;
    qmemcpy(sub_1002A80E0(&v22, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v22, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100315984(uint64_t a1)
{
  *a1 = off_100479300;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100315A34(uint64_t a1)
{
  *a1 = off_100479300;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

unint64_t sub_100315B04(unint64_t result, uint64_t a2, _BYTE *a3, int a4, int a5, int a6, double a7)
{
  if (a5)
  {
    v7 = *(result + 32);
    LODWORD(a7) = *(result + 116);
    v8 = a5 - 1;
    v9 = a4;
    v10 = *(result + 8);
    if (a6 >= 4)
    {
      v24 = vdupq_lane_s32(*&a7, 0);
      v25 = a3 + 4;
      v26.i64[0] = 0xFF000000FFLL;
      v26.i64[1] = 0xFF000000FFLL;
      do
      {
        result = 0;
        v27 = v8;
        v28 = v25;
        v29 = 4;
        do
        {
          v30 = v29;
          v31 = v28;
          v32 = vmlaq_n_f32(v24, *(*a2 + 4 * result), *v7);
          if (v10 >= 2)
          {
            for (i = 1; i != v10; ++i)
            {
              v32 = vmlaq_n_f32(v32, *(*(a2 + 8 * i) + 4 * result), v7[i]);
            }
          }

          *&a3[result] = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))), 0), v26)), *&a7).u32[0];
          result += 4;
          v29 = v30 + 4;
          v28 += 4;
        }

        while (result <= (a6 - 4));
        if (result < a6)
        {
          if (v10 <= 1)
          {
            do
            {
              v38 = rintf(*&a7 + (*v7 * *(*a2 + 4 * v30)));
              LODWORD(result) = v38 & ~(v38 >> 31);
              if (result >= 255)
              {
                result = 255;
              }

              else
              {
                result = result;
              }

              *v31++ = result;
              ++v30;
            }

            while (v30 < a6);
          }

          else
          {
            do
            {
              v34 = *&a7 + (*v7 * *(*a2 + 4 * v30));
              for (j = 1; j != v10; ++j)
              {
                result = *(a2 + 8 * j);
                v34 = v34 + (v7[j] * *(result + 4 * v30));
              }

              v36 = rintf(v34);
              v37 = v36 & ~(v36 >> 31);
              if (v37 >= 255)
              {
                LOBYTE(v37) = -1;
              }

              a3[v30++] = v37;
            }

            while (v30 < a6);
          }
        }

        a3 += v9;
        a2 += 8;
        v8 = v27 - 1;
        v25 += v9;
      }

      while (v27);
    }

    else if (a6 >= 1)
    {
      if (v10 <= 1)
      {
        v39 = a3 + 2;
        do
        {
          v40 = rintf(*&a7 + (*v7 * **a2));
          v41 = v40 & ~(v40 >> 31);
          if (v41 >= 255)
          {
            LOBYTE(v41) = -1;
          }

          *(v39 - 2) = v41;
          if (a6 != 1)
          {
            v42 = rintf(*&a7 + (*v7 * *(*a2 + 4)));
            v43 = v42 & ~(v42 >> 31);
            if (v43 >= 255)
            {
              LOBYTE(v43) = -1;
            }

            *(v39 - 1) = v43;
            if (a6 != 2)
            {
              v44 = rintf(*&a7 + (*v7 * *(*a2 + 8)));
              v45 = v44 & ~(v44 >> 31);
              if (v45 >= 255)
              {
                LOBYTE(v45) = -1;
              }

              *v39 = v45;
            }
          }

          a2 += 8;
          v39 += a4;
          --a5;
        }

        while (a5);
      }

      else
      {
        do
        {
          v11 = v8;
          v12 = *&a7 + (*v7 * **a2);
          for (k = 1; k != v10; ++k)
          {
            v12 = v12 + (v7[k] * **(a2 + 8 * k));
          }

          v14 = rintf(v12);
          v15 = v14 & ~(v14 >> 31);
          if (v15 >= 255)
          {
            LOBYTE(v15) = -1;
          }

          *a3 = v15;
          if (a6 != 1)
          {
            v16 = *&a7 + (*v7 * *(*a2 + 4));
            for (m = 1; m != v10; ++m)
            {
              v16 = v16 + (v7[m] * *(*(a2 + 8 * m) + 4));
            }

            v18 = rintf(v16);
            v19 = v18 & ~(v18 >> 31);
            if (v19 >= 255)
            {
              LOBYTE(v19) = -1;
            }

            a3[1] = v19;
            if (a6 != 2)
            {
              v20 = *&a7 + (*v7 * *(*a2 + 8));
              for (n = 1; n != v10; ++n)
              {
                v20 = v20 + (v7[n] * *(*(a2 + 8 * n) + 8));
              }

              v22 = rintf(v20);
              v23 = v22 & ~(v22 >> 31);
              if (v23 >= 255)
              {
                LOBYTE(v23) = -1;
              }

              a3[2] = v23;
            }
          }

          a3 += a4;
          a2 += 8;
          --v8;
        }

        while (v11);
      }
    }
  }

  return result;
}

uint64_t sub_100315E60(uint64_t a1)
{
  *a1 = off_100479300;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100315F28(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100315FAC(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479388;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v21) = 33619968;
  v22 = a1 + 16;
  v23 = 0;
  sub_10022B754(a2, &v21);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v21, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_10031622C(uint64_t a1)
{
  *a1 = off_100479388;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003162DC(uint64_t a1)
{
  *a1 = off_100479388;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_1003163AC(uint64_t result, uint64_t a2, _BYTE *a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 120);
    v8 = a5 - 1;
    v9 = a4;
    v10 = *(result + 8);
    if (a6 >= 4)
    {
      v25 = vdupq_lane_s64(v7, 0);
      v26 = 8 * v10;
      v27 = a3 + 4;
      v28.i64[0] = 0xFF000000FFLL;
      v28.i64[1] = 0xFF000000FFLL;
      do
      {
        v29 = 0;
        v30 = v8;
        v31 = v27;
        v32 = 4;
        do
        {
          v33 = v32;
          result = v31;
          v34 = (*a2 + 8 * v29);
          v35 = vmlaq_n_f64(v25, v34[1], *v6);
          v36 = vmlaq_n_f64(v25, *v34, *v6);
          if (v10 >= 2)
          {
            v37 = 8;
            do
            {
              v38 = (*(a2 + v37) + 8 * v29);
              v39 = v6[v37 / 8];
              v35 = vmlaq_n_f64(v35, v38[1], v39);
              v36 = vmlaq_n_f64(v36, *v38, v39);
              v37 += 8;
            }

            while (v26 != v37);
          }

          *&a3[v29] = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v36)), vcvtq_s64_f64(vrndxq_f64(v35))), 0), v28)), v7).u32[0];
          v29 += 4;
          v32 = v33 + 4;
          v31 = result + 4;
        }

        while (v29 <= (a6 - 4));
        if (v29 < a6)
        {
          if (v10 <= 1)
          {
            do
            {
              v43 = rint(*&v7 + *v6 * *(*a2 + 8 * v33));
              v44 = v43 & ~(v43 >> 31);
              if (v44 >= 255)
              {
                LOBYTE(v44) = -1;
              }

              *result++ = v44;
              ++v33;
            }

            while (v33 < a6);
          }

          else
          {
            do
            {
              v40 = *&v7 + *v6 * *(*a2 + 8 * v33);
              v41 = 8;
              do
              {
                v40 = v40 + v6[v41 / 8] * *(*(a2 + v41) + 8 * v33);
                v41 += 8;
              }

              while (v26 != v41);
              v42 = rint(v40);
              LODWORD(result) = v42 & ~(v42 >> 31);
              if (result >= 255)
              {
                result = 255;
              }

              else
              {
                result = result;
              }

              a3[v33++] = result;
            }

            while (v33 < a6);
          }
        }

        a3 += v9;
        a2 += 8;
        v8 = v30 - 1;
        v27 += v9;
      }

      while (v30);
    }

    else if (a6 >= 1)
    {
      if (v10 <= 1)
      {
        v45 = a3 + 2;
        do
        {
          v46 = rint(*&v7 + *v6 * **a2);
          v47 = v46 & ~(v46 >> 31);
          if (v47 >= 255)
          {
            LOBYTE(v47) = -1;
          }

          *(v45 - 2) = v47;
          if (a6 != 1)
          {
            v48 = rint(*&v7 + *v6 * *(*a2 + 8));
            v49 = v48 & ~(v48 >> 31);
            if (v49 >= 255)
            {
              LOBYTE(v49) = -1;
            }

            *(v45 - 1) = v49;
            if (a6 != 2)
            {
              v50 = rint(*&v7 + *v6 * *(*a2 + 16));
              v51 = v50 & ~(v50 >> 31);
              if (v51 >= 255)
              {
                LOBYTE(v51) = -1;
              }

              *v45 = v51;
            }
          }

          a2 += 8;
          v45 += a4;
          --a5;
        }

        while (a5);
      }

      else
      {
        v11 = 8 * v10;
        do
        {
          v12 = v8;
          v13 = *&v7 + *v6 * **a2;
          v14 = 8;
          do
          {
            v13 = v13 + v6[v14 / 8] * **(a2 + v14);
            v14 += 8;
          }

          while (v11 != v14);
          v15 = rint(v13);
          v16 = v15 & ~(v15 >> 31);
          if (v16 >= 255)
          {
            LOBYTE(v16) = -1;
          }

          *a3 = v16;
          if (a6 != 1)
          {
            v17 = *&v7 + *v6 * *(*a2 + 8);
            v18 = 8;
            do
            {
              v17 = v17 + v6[v18 / 8] * *(*(a2 + v18) + 8);
              v18 += 8;
            }

            while (v11 != v18);
            v19 = rint(v17);
            v20 = v19 & ~(v19 >> 31);
            if (v20 >= 255)
            {
              LOBYTE(v20) = -1;
            }

            a3[1] = v20;
            if (a6 != 2)
            {
              v21 = *&v7 + *v6 * *(*a2 + 16);
              v22 = 8;
              do
              {
                v21 = v21 + v6[v22 / 8] * *(*(a2 + v22) + 16);
                v22 += 8;
              }

              while (v11 != v22);
              v23 = rint(v21);
              v24 = v23 & ~(v23 >> 31);
              if (v24 >= 255)
              {
                LOBYTE(v24) = -1;
              }

              a3[2] = v24;
            }
          }

          a3 += a4;
          a2 += 8;
          --v8;
        }

        while (v12);
      }
    }
  }

  return result;
}

uint64_t sub_100316714(uint64_t a1)
{
  *a1 = off_100479388;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_1003167DC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100316860(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479410;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v22) = 33619968;
  v23 = a1 + 16;
  v24 = 0;
  sub_10022B754(a2, &v22);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    v22 = 0;
    v23 = 0;
    qmemcpy(sub_1002A80E0(&v22, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v22, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100316AE4(uint64_t a1)
{
  *a1 = off_100479410;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100316B94(uint64_t a1)
{
  *a1 = off_100479410;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

float *sub_100316C64(float *result, float **a2, _WORD *a3, int a4, int a5, int a6, double a7, double a8)
{
  if (a5)
  {
    v8 = *(result + 4);
    *&a7 = result[29];
    v9 = a5 - 1;
    v10 = a4;
    v11 = *(result + 2);
    if (a6 > 3)
    {
      v27 = (a6 - 4);
      LODWORD(a8) = *v8;
      v28 = (v27 & 0x7FFFFFFC) + 5;
      if (v28 <= a6)
      {
        v28 = a6;
      }

      v29 = v28 - (v27 & 0x7FFFFFFC) - 4;
      v30 = v29 & 0xFFFFFFFFFFFFFFF8;
      v31 = vdupq_lane_s32(*&a8, 0);
      v32 = vdupq_lane_s32(*&a7, 0);
      v33 = (a3 + 4);
      v34.i64[0] = 0xFFFF0000FFFFLL;
      v34.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        v35 = 0;
        v36 = v9;
        result = *a2;
        v37 = (*a2 + 4);
        v38 = v33;
        v39 = 4;
        do
        {
          v40 = v39;
          v41 = v37;
          v42 = v38;
          v43 = vmlaq_f32(v32, *&result[v35], v31);
          if (v11 >= 2)
          {
            for (i = 1; i != v11; ++i)
            {
              v43 = vmlaq_n_f32(v43, *&a2[i][v35], *&v8[i]);
            }
          }

          *&a3[v35] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v34));
          v35 += 4;
          v39 += 4;
          v37 += 16;
          v38 = &v42->u64[1];
        }

        while (v35 <= v27);
        if (v35 < a6)
        {
          if (v11 < 2)
          {
            if (v29 <= 7)
            {
              goto LABEL_61;
            }

            v40 += v30;
            v49 = v29 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v50 = *v41;
              v51 = v41[1];
              v41 += 2;
              v52 = vmlaq_f32(v32, v51, v31);
              v53 = vmlaq_f32(v32, v50, v31);
              *v42++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v34));
              v49 -= 8;
            }

            while (v49);
            if (v29 != v30)
            {
LABEL_61:
              do
              {
                v54 = rintf(*&a7 + (*&a8 * result[v40]));
                v55 = v54 & ~(v54 >> 31);
                if (v55 >= 0xFFFF)
                {
                  LOWORD(v55) = -1;
                }

                a3[v40++] = v55;
              }

              while (v40 < a6);
            }
          }

          else
          {
            do
            {
              v45 = *&a7 + (*&a8 * result[v40]);
              for (j = 1; j != v11; ++j)
              {
                v45 = v45 + (*&v8[j] * a2[j][v40]);
              }

              v47 = rintf(v45);
              v48 = v47 & ~(v47 >> 31);
              if (v48 >= 0xFFFF)
              {
                LOWORD(v48) = -1;
              }

              a3[v40++] = v48;
            }

            while (v40 < a6);
          }
        }

        a3 = (a3 + v10);
        ++a2;
        v9 = v36 - 1;
        v33 = (v33 + v10);
      }

      while (v36);
    }

    else if (a6 >= 1)
    {
      v12 = *v8;
      if (v11 <= 1)
      {
        v56 = a3 + 2;
        do
        {
          v57 = *a2;
          v58 = rintf(*&a7 + (v12 * **a2));
          v59 = v58 & ~(v58 >> 31);
          if (v59 >= 0xFFFF)
          {
            LOWORD(v59) = -1;
          }

          *(v56 - 2) = v59;
          if (a6 != 1)
          {
            v60 = rintf(*&a7 + (v12 * v57[1]));
            v61 = v60 & ~(v60 >> 31);
            if (v61 >= 0xFFFF)
            {
              LOWORD(v61) = -1;
            }

            *(v56 - 1) = v61;
            if (a6 != 2)
            {
              v62 = rintf(*&a7 + (v12 * v57[2]));
              v63 = v62 & ~(v62 >> 31);
              if (v63 >= 0xFFFF)
              {
                LOWORD(v63) = -1;
              }

              *v56 = v63;
            }
          }

          ++a2;
          v56 = (v56 + a4);
          --a5;
        }

        while (a5);
      }

      else
      {
        do
        {
          v13 = v9;
          v14 = *a2;
          v15 = *&a7 + (v12 * **a2);
          for (k = 1; k != v11; ++k)
          {
            v15 = v15 + (*&v8[k] * *a2[k]);
          }

          v17 = rintf(v15);
          v18 = v17 & ~(v17 >> 31);
          if (v18 >= 0xFFFF)
          {
            LOWORD(v18) = -1;
          }

          *a3 = v18;
          if (a6 != 1)
          {
            v19 = *&a7 + (v12 * v14[1]);
            for (m = 1; m != v11; ++m)
            {
              v19 = v19 + (*&v8[m] * a2[m][1]);
            }

            v21 = rintf(v19);
            v22 = v21 & ~(v21 >> 31);
            if (v22 >= 0xFFFF)
            {
              LOWORD(v22) = -1;
            }

            a3[1] = v22;
            if (a6 != 2)
            {
              v23 = *&a7 + (v12 * v14[2]);
              for (n = 1; n != v11; ++n)
              {
                v23 = v23 + (*&v8[n] * a2[n][2]);
              }

              v25 = rintf(v23);
              v26 = v25 & ~(v25 >> 31);
              if (v26 >= 0xFFFF)
              {
                LOWORD(v26) = -1;
              }

              a3[2] = v26;
            }
          }

          a3 = (a3 + a4);
          ++a2;
          --v9;
        }

        while (v13);
      }
    }
  }

  return result;
}

uint64_t sub_100317058(uint64_t a1)
{
  *a1 = off_100479410;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100317120(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003171A4(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479498;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v21) = 33619968;
  v22 = a1 + 16;
  v23 = 0;
  sub_10022B754(a2, &v21);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v21, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100317424(uint64_t a1)
{
  *a1 = off_100479498;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003174D4(uint64_t a1)
{
  *a1 = off_100479498;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_1003175A4(uint64_t result, double **a2, _WORD *a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 120);
    v8 = (a5 - 1);
    v9 = a4;
    v10 = *(result + 8);
    if (a6 > 3)
    {
      v27 = (a6 - 4);
      v28 = *v6;
      v29 = (v27 & 0x7FFFFFFC) + 5;
      if (v29 <= a6)
      {
        v29 = a6;
      }

      v30 = v29 - (v27 & 0x7FFFFFFC) - 4;
      v31 = vdupq_lane_s64(v28, 0);
      v32 = vdupq_lane_s64(v7, 0);
      v33 = v30 & 0xFFFFFFFFFFFFFFF8;
      v34 = 8 * v10;
      v35 = (a3 + 4);
      v36.i64[0] = 0xFFFF0000FFFFLL;
      v36.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        v37 = 0;
        result = v8;
        v38 = *a2;
        v39 = (*a2 + 4);
        v40 = v35;
        v41 = 4;
        do
        {
          v42 = v41;
          v43 = v39;
          v44 = v40;
          v45 = &v38[v37];
          v46 = vmlaq_f64(v32, v45[1], v31);
          v47 = vmlaq_f64(v32, *v45, v31);
          if (v10 >= 2)
          {
            v48 = 8;
            do
            {
              v49 = &a2[v48 / 8][v37];
              v50 = v6[v48 / 8];
              v46 = vmlaq_n_f64(v46, v49[1], v50);
              v47 = vmlaq_n_f64(v47, *v49, v50);
              v48 += 8;
            }

            while (v34 != v48);
          }

          *&a3[v37] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v47)), vcvtq_s64_f64(vrndxq_f64(v46))), 0), v36));
          v37 += 4;
          v41 += 4;
          v39 = &v43[2];
          v40 = &v44->u64[1];
        }

        while (v37 <= v27);
        if (v37 < a6)
        {
          if (v10 < 2)
          {
            if (v30 <= 7)
            {
              goto LABEL_61;
            }

            v42 += v33;
            v55 = v30 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v56 = v43[2];
              v57 = v43[3];
              v59 = *v43;
              v58 = v43[1];
              v43 += 4;
              *v44++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v32, v59, v31))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v32, v58, v31)))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v32, v56, v31))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v32, v57, v31)))), 0), v36));
              v55 -= 8;
            }

            while (v55);
            if (v30 != v33)
            {
LABEL_61:
              do
              {
                v60 = rint(*&v7 + *&v28 * v38[v42]);
                v61 = v60 & ~(v60 >> 31);
                if (v61 >= 0xFFFF)
                {
                  LOWORD(v61) = -1;
                }

                a3[v42++] = v61;
              }

              while (v42 < a6);
            }
          }

          else
          {
            do
            {
              v51 = *&v7 + *&v28 * v38[v42];
              v52 = 8;
              do
              {
                v51 = v51 + v6[v52 / 8] * a2[v52 / 8][v42];
                v52 += 8;
              }

              while (v34 != v52);
              v53 = rint(v51);
              v54 = v53 & ~(v53 >> 31);
              if (v54 >= 0xFFFF)
              {
                LOWORD(v54) = -1;
              }

              a3[v42++] = v54;
            }

            while (v42 < a6);
          }
        }

        a3 = (a3 + v9);
        ++a2;
        v8 = (result - 1);
        v35 = (v35 + v9);
      }

      while (result);
    }

    else if (a6 >= 1)
    {
      v11 = *v6;
      if (v10 <= 1)
      {
        v62 = a3 + 2;
        do
        {
          v63 = *a2;
          v64 = rint(*&v7 + v11 * **a2);
          v65 = v64 & ~(v64 >> 31);
          if (v65 >= 0xFFFF)
          {
            LOWORD(v65) = -1;
          }

          *(v62 - 2) = v65;
          if (a6 != 1)
          {
            v66 = rint(*&v7 + v11 * v63[1]);
            v67 = v66 & ~(v66 >> 31);
            if (v67 >= 0xFFFF)
            {
              LOWORD(v67) = -1;
            }

            *(v62 - 1) = v67;
            if (a6 != 2)
            {
              v68 = rint(*&v7 + v11 * v63[2]);
              v69 = v68 & ~(v68 >> 31);
              if (v69 >= 0xFFFF)
              {
                LOWORD(v69) = -1;
              }

              *v62 = v69;
            }
          }

          ++a2;
          v62 = (v62 + a4);
          --a5;
        }

        while (a5);
      }

      else
      {
        v12 = 8 * v10;
        do
        {
          v13 = v8;
          v14 = *a2;
          v15 = *&v7 + v11 * **a2;
          v16 = 8;
          do
          {
            v15 = v15 + v6[v16 / 8] * *a2[v16 / 8];
            v16 += 8;
          }

          while (v12 != v16);
          v17 = rint(v15);
          v18 = v17 & ~(v17 >> 31);
          if (v18 >= 0xFFFF)
          {
            LOWORD(v18) = -1;
          }

          *a3 = v18;
          if (a6 != 1)
          {
            v19 = *&v7 + v11 * v14[1];
            v20 = 8;
            do
            {
              v19 = v19 + v6[v20 / 8] * a2[v20 / 8][1];
              v20 += 8;
            }

            while (v12 != v20);
            v21 = rint(v19);
            v22 = v21 & ~(v21 >> 31);
            if (v22 >= 0xFFFF)
            {
              LOWORD(v22) = -1;
            }

            a3[1] = v22;
            if (a6 != 2)
            {
              v23 = *&v7 + v11 * v14[2];
              v24 = 8;
              do
              {
                v23 = v23 + v6[v24 / 8] * a2[v24 / 8][2];
                v24 += 8;
              }

              while (v12 != v24);
              v25 = rint(v23);
              v26 = v25 & ~(v25 >> 31);
              if (v26 >= 0xFFFF)
              {
                LOWORD(v26) = -1;
              }

              a3[2] = v26;
            }
          }

          a3 = (a3 + a4);
          ++a2;
          LODWORD(v8) = v8 - 1;
        }

        while (v13);
      }
    }
  }

  return result;
}

uint64_t sub_1003179A0(uint64_t a1)
{
  *a1 = off_100479498;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100317A68(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100317AEC(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479520;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v22) = 33619968;
  v23 = a1 + 16;
  v24 = 0;
  sub_10022B754(a2, &v22);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    v22 = 0;
    v23 = 0;
    qmemcpy(sub_1002A80E0(&v22, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v22, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100317D70(uint64_t a1)
{
  *a1 = off_100479520;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100317E20(uint64_t a1)
{
  *a1 = off_100479520;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100317EF0(uint64_t result, float **a2, _WORD *a3, int a4, int a5, int a6, double a7, double a8)
{
  if (a5)
  {
    v8 = *(result + 32);
    LODWORD(a7) = *(result + 116);
    v9 = (a5 - 1);
    v10 = a4;
    v11 = *(result + 8);
    if (a6 > 3)
    {
      v24 = (a6 - 4);
      LODWORD(a8) = *v8;
      v25 = (v24 & 0x7FFFFFFC) + 5;
      if (v25 <= a6)
      {
        v25 = a6;
      }

      v26 = v25 - (v24 & 0x7FFFFFFC) - 4;
      v27 = vdupq_lane_s32(*&a8, 0);
      v28 = v26 & 0xFFFFFFFFFFFFFFF8;
      v29 = vdupq_lane_s32(*&a7, 0);
      v30 = (a3 + 4);
      do
      {
        v31 = 0;
        result = v9;
        v32 = *a2;
        v33 = (*a2 + 4);
        v34 = v30;
        v35 = 4;
        do
        {
          v36 = v35;
          v37 = v33;
          v38 = v34;
          v39 = vmlaq_f32(v29, *&v32[v31], v27);
          if (v11 >= 2)
          {
            for (i = 1; i != v11; ++i)
            {
              v39 = vmlaq_n_f32(v39, *&a2[i][v31], *&v8[i]);
            }
          }

          *&a3[v31] = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))));
          v31 += 4;
          v35 += 4;
          v33 += 16;
          v34 = &v38->u64[1];
        }

        while (v31 <= v24);
        if (v31 < a6)
        {
          if (v11 < 2)
          {
            if (v26 <= 7)
            {
              goto LABEL_77;
            }

            v36 += v28;
            v44 = v26 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v45 = *v37;
              v46 = v37[1];
              v37 += 2;
              v47 = vmlaq_f32(v29, v46, v27);
              v48 = vmlaq_f32(v29, v45, v27);
              *v38++ = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL))))));
              v44 -= 8;
            }

            while (v44);
            if (v26 != v28)
            {
LABEL_77:
              do
              {
                v49 = rintf(*&a7 + (*&a8 * v32[v36]));
                if (v49 <= -32768)
                {
                  LODWORD(v49) = -32768;
                }

                if (v49 >= 0x7FFF)
                {
                  LOWORD(v49) = 0x7FFF;
                }

                a3[v36++] = v49;
              }

              while (v36 < a6);
            }
          }

          else
          {
            do
            {
              v41 = *&a7 + (*&a8 * v32[v36]);
              for (j = 1; j != v11; ++j)
              {
                v41 = v41 + (*&v8[j] * a2[j][v36]);
              }

              v43 = rintf(v41);
              if (v43 <= -32768)
              {
                LODWORD(v43) = -32768;
              }

              if (v43 >= 0x7FFF)
              {
                LOWORD(v43) = 0x7FFF;
              }

              a3[v36++] = v43;
            }

            while (v36 < a6);
          }
        }

        a3 = (a3 + v10);
        ++a2;
        v9 = (result - 1);
        v30 = (v30 + v10);
      }

      while (result);
    }

    else if (a6 >= 1)
    {
      v12 = *v8;
      if (v11 <= 1)
      {
        v50 = a3 + 2;
        do
        {
          v51 = *a2;
          v52 = rintf(*&a7 + (v12 * **a2));
          if (v52 <= -32768)
          {
            LODWORD(v52) = -32768;
          }

          if (v52 >= 0x7FFF)
          {
            LOWORD(v52) = 0x7FFF;
          }

          *(v50 - 2) = v52;
          if (a6 != 1)
          {
            v53 = rintf(*&a7 + (v12 * v51[1]));
            if (v53 <= -32768)
            {
              LODWORD(v53) = -32768;
            }

            if (v53 >= 0x7FFF)
            {
              LOWORD(v53) = 0x7FFF;
            }

            *(v50 - 1) = v53;
            if (a6 != 2)
            {
              v54 = rintf(*&a7 + (v12 * v51[2]));
              if (v54 <= -32768)
              {
                LODWORD(v54) = -32768;
              }

              if (v54 >= 0x7FFF)
              {
                LOWORD(v54) = 0x7FFF;
              }

              *v50 = v54;
            }
          }

          ++a2;
          v50 = (v50 + a4);
          --a5;
        }

        while (a5);
      }

      else
      {
        do
        {
          v13 = v9;
          v14 = *a2;
          v15 = *&a7 + (v12 * **a2);
          for (k = 1; k != v11; ++k)
          {
            v15 = v15 + (*&v8[k] * *a2[k]);
          }

          v17 = rintf(v15);
          if (v17 <= -32768)
          {
            LODWORD(v17) = -32768;
          }

          if (v17 >= 0x7FFF)
          {
            LOWORD(v17) = 0x7FFF;
          }

          *a3 = v17;
          if (a6 != 1)
          {
            v18 = *&a7 + (v12 * v14[1]);
            for (m = 1; m != v11; ++m)
            {
              v18 = v18 + (*&v8[m] * a2[m][1]);
            }

            v20 = rintf(v18);
            if (v20 <= -32768)
            {
              LODWORD(v20) = -32768;
            }

            if (v20 >= 0x7FFF)
            {
              LOWORD(v20) = 0x7FFF;
            }

            a3[1] = v20;
            if (a6 != 2)
            {
              v21 = *&a7 + (v12 * v14[2]);
              for (n = 1; n != v11; ++n)
              {
                v21 = v21 + (*&v8[n] * a2[n][2]);
              }

              v23 = rintf(v21);
              if (v23 <= -32768)
              {
                LODWORD(v23) = -32768;
              }

              if (v23 >= 0x7FFF)
              {
                LOWORD(v23) = 0x7FFF;
              }

              a3[2] = v23;
            }
          }

          a3 = (a3 + a4);
          ++a2;
          LODWORD(v9) = v9 - 1;
        }

        while (v13);
      }
    }
  }

  return result;
}

uint64_t sub_10031830C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100318390(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_1004795A8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v21) = 33619968;
  v22 = a1 + 16;
  v23 = 0;
  sub_10022B754(a2, &v21);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v21, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100318610(uint64_t a1)
{
  *a1 = off_1004795A8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003186C0(uint64_t a1)
{
  *a1 = off_1004795A8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100318790(uint64_t result, double **a2, _WORD *a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 120);
    v8 = a5 - 1;
    v9 = a4;
    v10 = *(result + 8);
    if (a6 > 3)
    {
      v24 = (a6 - 4);
      v25 = *v6;
      v26 = (v24 & 0x7FFFFFFC) + 5;
      if (v26 <= a6)
      {
        v26 = a6;
      }

      v27 = v26 - (v24 & 0x7FFFFFFC) - 4;
      v28 = v27 & 0xFFFFFFFFFFFFFFF8;
      v29 = vdupq_lane_s64(v25, 0);
      v30 = vdupq_lane_s64(v7, 0);
      v31 = 8 * v10;
      v32 = (a3 + 4);
      result = 0x7FFFLL;
      do
      {
        v33 = 0;
        v34 = v8;
        v35 = *a2;
        v36 = (*a2 + 4);
        v37 = v32;
        v38 = 4;
        do
        {
          v39 = v38;
          v40 = v36;
          v41 = v37;
          v42 = &v35[v33];
          v43 = vmlaq_f64(v30, v42[1], v29);
          v44 = vmlaq_f64(v30, *v42, v29);
          if (v10 >= 2)
          {
            v45 = 8;
            do
            {
              v46 = &a2[v45 / 8][v33];
              v47 = v6[v45 / 8];
              v43 = vmlaq_n_f64(v43, v46[1], v47);
              v44 = vmlaq_n_f64(v44, *v46, v47);
              v45 += 8;
            }

            while (v31 != v45);
          }

          *&a3[v33] = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v44)), vcvtq_s64_f64(vrndxq_f64(v43))));
          v33 += 4;
          v38 += 4;
          v36 = &v40[2];
          v37 = &v41->u64[1];
        }

        while (v33 <= v24);
        if (v33 < a6)
        {
          if (v10 < 2)
          {
            if (v27 <= 7)
            {
              goto LABEL_77;
            }

            v39 += v28;
            v51 = v27 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              *v41++ = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v30, *v40, v29))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v30, v40[1], v29))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v30, v40[2], v29))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v30, v40[3], v29)))));
              v40 += 4;
              v51 -= 8;
            }

            while (v51);
            if (v27 != v28)
            {
LABEL_77:
              do
              {
                v52 = rint(*&v7 + *&v25 * v35[v39]);
                if (v52 <= -32768)
                {
                  LODWORD(v52) = -32768;
                }

                if (v52 >= 0x7FFF)
                {
                  LOWORD(v52) = 0x7FFF;
                }

                a3[v39++] = v52;
              }

              while (v39 < a6);
            }
          }

          else
          {
            do
            {
              v48 = *&v7 + *&v25 * v35[v39];
              v49 = 8;
              do
              {
                v48 = v48 + v6[v49 / 8] * a2[v49 / 8][v39];
                v49 += 8;
              }

              while (v31 != v49);
              v50 = rint(v48);
              if (v50 <= -32768)
              {
                LODWORD(v50) = -32768;
              }

              if (v50 >= 0x7FFF)
              {
                LOWORD(v50) = 0x7FFF;
              }

              a3[v39++] = v50;
            }

            while (v39 < a6);
          }
        }

        a3 = (a3 + v9);
        ++a2;
        v8 = v34 - 1;
        v32 = (v32 + v9);
      }

      while (v34);
    }

    else if (a6 >= 1)
    {
      v11 = *v6;
      if (v10 <= 1)
      {
        v53 = a3 + 2;
        do
        {
          v54 = *a2;
          v55 = rint(*&v7 + v11 * **a2);
          if (v55 <= -32768)
          {
            LODWORD(v55) = -32768;
          }

          if (v55 >= 0x7FFF)
          {
            LOWORD(v55) = 0x7FFF;
          }

          *(v53 - 2) = v55;
          if (a6 != 1)
          {
            v56 = rint(*&v7 + v11 * v54[1]);
            if (v56 <= -32768)
            {
              LODWORD(v56) = -32768;
            }

            if (v56 >= 0x7FFF)
            {
              LOWORD(v56) = 0x7FFF;
            }

            *(v53 - 1) = v56;
            if (a6 != 2)
            {
              v57 = rint(*&v7 + v11 * v54[2]);
              if (v57 <= -32768)
              {
                LODWORD(v57) = -32768;
              }

              if (v57 >= 0x7FFF)
              {
                LOWORD(v57) = 0x7FFF;
              }

              *v53 = v57;
            }
          }

          ++a2;
          v53 = (v53 + a4);
          --a5;
        }

        while (a5);
      }

      else
      {
        v12 = 8 * v10;
        do
        {
          v13 = v8;
          v14 = *a2;
          v15 = *&v7 + v11 * **a2;
          v16 = 8;
          do
          {
            v15 = v15 + v6[v16 / 8] * *a2[v16 / 8];
            v16 += 8;
          }

          while (v12 != v16);
          v17 = rint(v15);
          if (v17 <= -32768)
          {
            LODWORD(v17) = -32768;
          }

          if (v17 >= 0x7FFF)
          {
            LOWORD(v17) = 0x7FFF;
          }

          *a3 = v17;
          if (a6 != 1)
          {
            v18 = *&v7 + v11 * v14[1];
            v19 = 8;
            do
            {
              v18 = v18 + v6[v19 / 8] * a2[v19 / 8][1];
              v19 += 8;
            }

            while (v12 != v19);
            v20 = rint(v18);
            if (v20 <= -32768)
            {
              LODWORD(v20) = -32768;
            }

            if (v20 >= 0x7FFF)
            {
              LOWORD(v20) = 0x7FFF;
            }

            a3[1] = v20;
            if (a6 != 2)
            {
              v21 = *&v7 + v11 * v14[2];
              v22 = 8;
              do
              {
                v21 = v21 + v6[v22 / 8] * a2[v22 / 8][2];
                v22 += 8;
              }

              while (v12 != v22);
              v23 = rint(v21);
              if (v23 <= -32768)
              {
                LODWORD(v23) = -32768;
              }

              if (v23 >= 0x7FFF)
              {
                LOWORD(v23) = 0x7FFF;
              }

              a3[2] = v23;
            }
          }

          a3 = (a3 + a4);
          ++a2;
          --v8;
        }

        while (v13);
      }
    }
  }

  return result;
}

uint64_t sub_100318BA8(uint64_t a1)
{
  *a1 = off_1004795A8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100318C70(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100318CF4(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479630;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v22) = 33619968;
  v23 = a1 + 16;
  v24 = 0;
  sub_10022B754(a2, &v22);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    v22 = 0;
    v23 = 0;
    qmemcpy(sub_1002A80E0(&v22, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v22, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100318F78(uint64_t a1)
{
  *a1 = off_100479630;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100319028(uint64_t a1)
{
  *a1 = off_100479630;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_1003190F8(uint64_t result, float **a2, float *a3, int a4, int a5, int a6, double a7)
{
  if (!a5)
  {
    return result;
  }

  v7 = *(result + 32);
  LODWORD(a7) = *(result + 116);
  v8 = (a5 - 1);
  v9 = *(result + 8);
  if (a6 <= 3)
  {
    if (a6 >= 1)
    {
      if (v9 > 1)
      {
        do
        {
          v11 = v8;
          v12 = *a2;
          v13 = *&a7 + (*v7 * **a2);
          for (i = 1; i != v9; ++i)
          {
            v13 = v13 + (v7[i] * *a2[i]);
          }

          *a3 = v13;
          if (a6 != 1)
          {
            v15 = *&a7 + (*v7 * v12[1]);
            for (j = 1; j != v9; ++j)
            {
              v15 = v15 + (v7[j] * a2[j][1]);
            }

            a3[1] = v15;
            if (a6 != 2)
            {
              v17 = *&a7 + (*v7 * v12[2]);
              for (k = 1; k != v9; ++k)
              {
                v17 = v17 + (v7[k] * a2[k][2]);
              }

              a3[2] = v17;
            }
          }

          a3 = (a3 + a4);
          ++a2;
          LODWORD(v8) = v8 - 1;
        }

        while (v11);
      }

      else
      {
        v10 = a3 + 2;
        do
        {
          v19 = *a2;
          *(v10 - 2) = *&a7 + (*v7 * **a2);
          if (a6 != 1)
          {
            *(v10 - 1) = *&a7 + (*v7 * v19[1]);
            if (a6 != 2)
            {
              *v10 = *&a7 + (*v7 * v19[2]);
            }
          }

          ++a2;
          v10 = (v10 + a4);
          --a5;
        }

        while (a5);
      }
    }

    return result;
  }

  v20 = (a6 - 4);
  if (v9 <= 1)
  {
    v30 = 0;
    if ((v20 & 0x7FFFFFFC) + 5 <= a6)
    {
      v31 = a6;
    }

    else
    {
      v31 = (v20 & 0x7FFFFFFC) + 5;
    }

    v32 = (4 * v20) & 0x1FFFFFFF0;
    v33 = 4 * v31 - v32;
    v34 = v31 - (v20 & 0x7FFFFFFC) - 4;
    v35 = a3 + a4 * v8 + v32 + 16;
    result = (v20 >> 2) + 1;
    v37 = v7 + 1 > a3 && v7 < v35;
    v38 = vdupq_lane_s32(*&a7, 0);
    v39 = v34 & 0xFFFFFFFFFFFFFFF8;
    v40 = a3 + 4;
    v41 = a3;
    while (1)
    {
      v42 = v8;
      v43 = *a2;
      if (v20 <= 0xB)
      {
        break;
      }

      v44 = (v43 + v32 + 16) <= a3 || v43 >= v35;
      v45 = !v44 || a4 < 0;
      v46 = v45 || v37;
      if (v46)
      {
        break;
      }

      v54 = 0;
      v55 = result & 0x3FFFFFFC;
      do
      {
        v56 = &v41[v54];
        v57 = vmlaq_n_f32(v38, *&v43[v54 + 12], *v7);
        v58 = vmlaq_n_f32(v38, *&v43[v54 + 4], *v7);
        v59 = vmlaq_n_f32(v38, *&v43[v54 + 8], *v7);
        *v56 = vmlaq_n_f32(v38, *&v43[v54], *v7);
        v56[1] = v58;
        v56[2] = v59;
        v56[3] = v57;
        v54 += 16;
        v55 -= 4;
      }

      while (v55);
      v47 = result & 0x3FFFFFFC;
      v49 = (16 * ((v47 >> 2) & 0xFFFFFFF)) | 4;
      v48 = 4 * v47;
      v50 = v47 - 1;
      v51 = v48;
      if (result != v47)
      {
        goto LABEL_55;
      }

LABEL_57:
      if (v48 < a6)
      {
        if (v34 <= 7 || ((v60 = 4 * v50, v61 = &a3[4 * v50] + v30 * a4, v62 = v61 + 16, v63 = v61 + v33, v64 = &v43[v60], v65 = &v43[v60 + 4], v62 < v64 + v33) ? (v66 = v65 >= v63) : (v66 = 1), v66 ? (v67 = 0) : (v67 = 1), v7 < v63 ? (v68 = v62 >= (v7 + 1)) : (v68 = 1), !v68 || (v67 & 1) != 0))
        {
          v53 = v51;
        }

        else
        {
          v69 = vld1q_dup_f32(v7);
          v53 = v51 + v39;
          v70 = v51;
          v71 = &v40[v51];
          v72 = &v43[v70 + 4];
          v73 = v34 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v74 = vmlaq_f32(v38, *v72, v69);
            v71[-1] = vmlaq_f32(v38, v72[-1], v69);
            *v71 = v74;
            v71 += 2;
            v72 += 2;
            v73 -= 8;
          }

          while (v73);
          if (v34 == v39)
          {
            goto LABEL_42;
          }
        }

        do
        {
          v41[v53] = *&a7 + (*v7 * v43[v53]);
          ++v53;
        }

        while (v53 < a6);
      }

LABEL_42:
      v41 = (v41 + a4);
      ++a2;
      LODWORD(v8) = v42 - 1;
      ++v30;
      v40 = (v40 + a4);
      if (!v42)
      {
        return result;
      }
    }

    v47 = 0;
    v48 = 0;
    v49 = 4;
LABEL_55:
    v50 = v47 - 1;
    v51 = v49 - 4;
    v52 = v48;
    do
    {
      *&v41[v52] = vmlaq_n_f32(v38, *&v43[v52], *v7);
      v48 += 4;
      ++v50;
      v51 += 4;
      v52 += 4;
    }

    while (v48 <= v20);
    goto LABEL_57;
  }

  v21 = vdupq_lane_s32(*&a7, 0);
  do
  {
    v22 = 0;
    v23 = v8;
    v24 = *a2;
    v25 = 4;
    do
    {
      v26 = v25;
      v27 = vmlaq_n_f32(v21, *&v24[v22], *v7);
      for (result = 1; result != v9; ++result)
      {
        v27 = vmlaq_n_f32(v27, *&a2[result][v22], v7[result]);
      }

      *&a3[v22] = v27;
      v22 += 4;
      v25 += 4;
    }

    while (v22 <= v20);
    if (v22 < a6)
    {
      do
      {
        v28 = *&a7 + (*v7 * v24[v26]);
        for (m = 1; m != v9; ++m)
        {
          v28 = v28 + (v7[m] * a2[m][v26]);
        }

        a3[v26++] = v28;
      }

      while (v26 < a6);
    }

    a3 = (a3 + a4);
    ++a2;
    LODWORD(v8) = v8 - 1;
  }

  while (v23);
  return result;
}

uint64_t sub_100319590(uint64_t a1)
{
  *a1 = off_100479630;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100319658(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003196DC(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_1004796B8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v21) = 33619968;
  v22 = a1 + 16;
  v23 = 0;
  sub_10022B754(a2, &v21);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v21, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_10031995C(uint64_t a1)
{
  *a1 = off_1004796B8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100319A0C(uint64_t a1)
{
  *a1 = off_1004796B8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100319ADC(uint64_t result, double **a2, double *a3, int a4, int a5, int a6)
{
  if (!a5)
  {
    return result;
  }

  v6 = a3;
  v7 = *(result + 32);
  v8 = *(result + 120);
  v9 = (a5 - 1);
  v10 = *(result + 8);
  if (a6 <= 3)
  {
    if (a6 >= 1)
    {
      if (v10 <= 1)
      {
        v86 = a3 + 2;
        do
        {
          v87 = *a2;
          *(v86 - 2) = *&v8 + *v7 * **a2;
          if (a6 != 1)
          {
            *(v86 - 1) = *&v8 + *v7 * v87[1];
            if (a6 != 2)
            {
              *v86 = *&v8 + *v7 * v87[2];
            }
          }

          ++a2;
          v86 = (v86 + a4);
          --a5;
        }

        while (a5);
      }

      else
      {
        v11 = 8 * *(result + 8);
        do
        {
          v12 = v9;
          v13 = *a2;
          v14 = *&v8 + *v7 * **a2;
          v15 = 8;
          do
          {
            v14 = v14 + v7[v15 / 8] * *a2[v15 / 8];
            v15 += 8;
          }

          while (v11 != v15);
          *v6 = v14;
          if (a6 != 1)
          {
            v16 = *&v8 + *v7 * v13[1];
            v17 = 8;
            do
            {
              v16 = v16 + v7[v17 / 8] * a2[v17 / 8][1];
              v17 += 8;
            }

            while (v11 != v17);
            v6[1] = v16;
            if (a6 != 2)
            {
              v18 = *&v8 + *v7 * v13[2];
              v19 = 8;
              do
              {
                v18 = v18 + v7[v19 / 8] * a2[v19 / 8][2];
                v19 += 8;
              }

              while (v11 != v19);
              v6[2] = v18;
            }
          }

          v6 = (v6 + a4);
          ++a2;
          LODWORD(v9) = v9 - 1;
        }

        while (v12);
      }
    }

    return result;
  }

  v20 = (a6 - 4);
  if (v10 <= 1)
  {
    v37 = 0;
    v38 = v20 & 0x7FFFFFFC;
    if (v38 + 5 <= a6)
    {
      v39 = a6;
    }

    else
    {
      v39 = (v20 & 0x7FFFFFFC) + 5;
    }

    v40 = (8 * v20) & 0x3FFFFFFE0;
    v41 = 8 * v39 - v40;
    v42 = v39 - 4 - v38;
    v43 = v6 + a4 * v9 + v40 + 32;
    v44 = (v20 >> 2) + 1;
    v46 = v7 + 1 > v6 && v7 < v43;
    v47 = v44 & 0x3FFFFFFE;
    v91 = (4 * v44) | 4;
    v48 = vdupq_lane_s64(v8, 0);
    result = v42 - (v39 & 3);
    v89 = result;
    v90 = v39 & 3;
    v88 = v39 - 4 - v90 - v38;
    v49 = v6 + 2;
    v50 = v6;
    while (1)
    {
      v51 = v9;
      v52 = *a2;
      if (v20 <= 3)
      {
        break;
      }

      v53 = (v52 + v40 + 32) <= v6 || v52 >= v43;
      v54 = !v53 || a4 < 0;
      v55 = v54 || v46;
      if (v55)
      {
        break;
      }

      v68 = 0;
      v69 = v47;
      do
      {
        v70 = &v50[v68];
        v71 = vmlaq_n_f64(v48, *&v52[v68 + 6], *v7);
        v72 = vmlaq_n_f64(v48, *&v52[v68 + 2], *v7);
        v73 = vmlaq_n_f64(v48, *&v52[v68 + 4], *v7);
        *v70 = vmlaq_n_f64(v48, *&v52[v68], *v7);
        v70[1] = v72;
        v70[2] = v73;
        v70[3] = v71;
        v68 += 8;
        v69 -= 2;
      }

      while (v69);
      v56 = v47;
      v59 = v47 - 1;
      v58 = v91;
      v57 = 4 * v47;
      v60 = 4 * v47;
      LODWORD(v64) = 4 * v47;
      if ((v20 >> 2) + 1 != v47)
      {
        goto LABEL_51;
      }

LABEL_53:
      if (v64 < a6)
      {
        if (v42 <= 7 || ((v74 = &v6[4 * v59] + v37 * a4, v75 = v74 + 32, v76 = v74 + v41, v77 = &v52[4 * v59], v75 < v77 + v41) ? (v78 = (v77 + 4) >= v76) : (v78 = 1), v78 ? (v79 = 0) : (v79 = 1), v7 < v76 ? (v80 = v75 >= (v7 + 1)) : (v80 = 1), !v80 || (v79 & 1) != 0))
        {
          v67 = v60;
        }

        else
        {
          v81 = vld1q_dup_f64(v7);
          v82 = v88;
          v67 = v60 + v89;
          v83 = &v49[v60];
          v84 = &v52[v60 + 2];
          do
          {
            v85 = vmlaq_f64(v48, *v84, v81);
            v83[-1] = vmlaq_f64(v48, v84[-1], v81);
            *v83 = v85;
            v83 += 2;
            v84 += 2;
            v82 -= 4;
          }

          while (v82);
          if (!v90)
          {
            goto LABEL_38;
          }
        }

        do
        {
          v50[v67] = *&v8 + *v7 * v52[v67];
          ++v67;
        }

        while (v67 < a6);
      }

LABEL_38:
      v50 = (v50 + a4);
      ++a2;
      LODWORD(v9) = v51 - 1;
      ++v37;
      v49 = (v49 + a4);
      if (!v51)
      {
        return result;
      }
    }

    v56 = 0;
    v57 = 0;
    v58 = 4;
LABEL_51:
    v59 = v56 - 1;
    v60 = v58 - 4;
    v61 = v57;
    v62 = v52;
    v63 = v50;
    v64 = v57;
    do
    {
      v65 = *&v8 + *v7 * v62[v61 + 3];
      result = &v63[v61];
      v66 = vmlaq_n_f64(v48, *&v62[v61 + 1], *v7);
      v63[v57] = *&v8 + *v7 * v62[v57];
      v64 += 4;
      ++v59;
      *(result + 8) = v66;
      *(result + 24) = v65;
      v60 += 4;
      v63 += 4;
      v62 += 4;
    }

    while (v64 <= v20);
    goto LABEL_53;
  }

  v21 = vdupq_lane_s64(v8, 0);
  v22 = 8 * *(result + 8);
  do
  {
    v23 = 0;
    v24 = v9;
    v25 = *a2;
    v26 = 4;
    do
    {
      v27 = v26;
      v28 = &v25[v23];
      v29 = *&v8 + *v7 * *v28;
      v30 = vmlaq_n_f64(v21, *(v28 + 1), *v7);
      v31 = *&v8 + *v7 * v28[3];
      v32 = 8;
      do
      {
        result = &a2[v32 / 8][v23];
        v33 = v7[v32 / 8];
        v29 = v29 + v33 * *result;
        v30 = vmlaq_n_f64(v30, *(result + 8), v33);
        v31 = v31 + v33 * *(result + 24);
        v32 += 8;
      }

      while (v22 != v32);
      v34 = &v6[v23];
      *v34 = v29;
      *(v34 + 1) = v30;
      v34[3] = v31;
      v23 += 4;
      v26 = v27 + 4;
    }

    while (v23 <= v20);
    if (v23 < a6)
    {
      do
      {
        v35 = *&v8 + *v7 * v25[v27];
        v36 = 8;
        do
        {
          v35 = v35 + v7[v36 / 8] * a2[v36 / 8][v27];
          v36 += 8;
        }

        while (v22 != v36);
        v6[v27++] = v35;
      }

      while (v27 < a6);
    }

    v6 = (v6 + a4);
    ++a2;
    LODWORD(v9) = v9 - 1;
  }

  while (v24);
  return result;
}

uint64_t sub_10031A004(uint64_t a1)
{
  *a1 = off_1004796B8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_10031A0CC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_10031A150(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6, double a7)
{
  v8 = sub_10031A21C(a1, a2, a3, a4, a5, a6, a7);
  *v8 = off_100479740;
  if (*(v8 + 8) != 3)
  {
    v10[0] = 0;
    v10[1] = 0;
    *sub_1002A80E0(v10, 16) = *"this->ksize == 3";
    sub_1002A8980(-215, v10, "SymmColumnSmallFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3420);
  }

  return a1;
}

void sub_10031A1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10031C744(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031A21C(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6, double a7)
{
  v9 = sub_10031C350(a1, a2, a3, a5, a6, a7);
  *v9 = off_1004797B8;
  *(v9 + 228) = a4;
  if ((a4 & 3) == 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    qmemcpy(sub_1002A80E0(v11, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v11, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_10031A2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10031C744(v9);
  _Unwind_Resume(a1);
}

void sub_10031A300(uint64_t a1)
{
  sub_10031C744(a1);

  operator delete();
}

int64_t sub_10031A338(int64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, double a7, int32x2_t a8, int32x2_t a9)
{
  v427 = result;
  v9 = (*(result + 32) + 4 * (*(result + 8) / 2));
  v11 = *v9;
  v10 = v9[1];
  v12 = v10 == 1;
  v14 = v10 == 1 || v10 == -1;
  v15 = v10 == 1;
  if (v11 != 2)
  {
    v15 = 0;
  }

  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v14;
  }

  if (v11 == -2)
  {
    v17 = 0;
  }

  else
  {
    v12 = 0;
    v17 = v15;
  }

  v18 = v11 != -2 && v16;
  if (a5)
  {
    v19 = *(result + 112);
    v20 = (a2 + 8 * ((*(result + 8) + (*(result + 8) >> 31)) >> 1));
    v21 = a5 - 1;
    v22 = *(result + 224) + HIDWORD(v19);
    v23 = a4;
    v24 = a6 - 4;
    v25 = a6;
    v410 = 4 * a6;
    v425 = a4;
    v426 = a6;
    if ((*(result + 228) & 1) == 0)
    {
      v26 = 0;
      if (v18)
      {
        v27 = a3;
        v413 = vnegq_s32(vdupq_n_s32(v19));
        v417 = vdupq_n_s32(v22);
        while (1)
        {
          v28 = v21;
          v421 = a3 + v26 * v23;
          result = sub_10031D10C(v427 + 120, v20, v27, a6);
          v29.i64[0] = 0xFF000000FFLL;
          v29.i64[1] = 0xFF000000FFLL;
          v31 = v20[1];
          ++v20;
          v30 = v31;
          if (v10 >= 0)
          {
            v32 = *(v20 - 2);
          }

          else
          {
            v32 = v30;
          }

          if (v10 < 0)
          {
            v30 = *(v20 - 2);
          }

          if (result <= v24)
          {
            v33 = result;
            v34 = v24 - result;
            if (v34 < 0x3C || ((v54 = v34 >> 2, v55 = v421 + 4 + (v34 & 0xFFFFFFFFFFFFFFFCLL) + result, v56 = 4 * result, v57 = v56 + 16 * (v34 >> 2), v58 = v32 + v57 + 16, v27 + result < v30 + v57 + 16) ? (v59 = v30 + v56 >= v55) : (v59 = 1), v59 ? (v60 = 0) : (v60 = 1), v32 + v56 < v55 ? (v61 = v27 + result >= v58) : (v61 = 1), !v61 || (v60 & 1) != 0))
            {
              result = result;
            }

            else
            {
              v62 = v54 + 1;
              result = result + 4 * (v62 & 0x7FFFFFFFFFFFFFF0);
              v63 = (v30 + v56);
              v64 = (v32 + v56);
              v65 = v62 & 0x7FFFFFFFFFFFFFF0;
              do
              {
                v66 = vsubq_s32(vaddq_s32(v417, v63[11]), v64[11]);
                v67 = vsubq_s32(vaddq_s32(v417, v63[10]), v64[10]);
                v68 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[12]), v64[12]), v413), 0), v29), vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[13]), v64[13]), v413), 0), v29)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[14]), v64[14]), v413), 0), v29), vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[15]), v64[15]), v413), 0), v29)));
                v69 = vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[8]), v64[8]), v413), 0), v29), vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[9]), v64[9]), v413), 0), v29));
                v70 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[4]), v64[4]), v413), 0), v29), vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[5]), v64[5]), v413), 0), v29)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[6]), v64[6]), v413), 0), v29), vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[7]), v64[7]), v413), 0), v29)));
                v71 = (v27 + v33);
                *v71 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, *v63), *v64), v413), 0), v29), vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[1]), v64[1]), v413), 0), v29)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[2]), v64[2]), v413), 0), v29), vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v63[3]), v64[3]), v413), 0), v29)));
                v71[1] = v70;
                v71[2] = vuzp1q_s8(v69, vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(v67, v413), 0), v29), vminq_s32(vmaxq_s32(vshlq_s32(v66, v413), 0), v29)));
                v71[3] = v68;
                v33 += 64;
                v63 += 16;
                v64 += 16;
                v65 -= 16;
              }

              while (v65);
              if (v62 == (v62 & 0x7FFFFFFFFFFFFFF0))
              {
                goto LABEL_41;
              }
            }

            v35 = (v32 + 4 * result + 8);
            v36 = (v30 + 4 * result + 8);
            do
            {
              v37 = *(v36 - 1);
              v38 = *(v35 - 1);
              v39 = (v22 + *(v36 - 2) - *(v35 - 2)) >> v19;
              v40 = v39 & ~(v39 >> 31);
              if (v40 >= 255)
              {
                LOBYTE(v40) = -1;
              }

              v41 = (v27 + result);
              *(v27 + result) = v40;
              v42 = ((v22 + v37 - v38) >> v19) & ~((v22 + v37 - v38) >> v19 >> 31);
              if (v42 >= 255)
              {
                LOBYTE(v42) = -1;
              }

              v41[1] = v42;
              v43 = *v36;
              v44 = v36[1];
              v36 += 4;
              v45 = *v35;
              v46 = v35[1];
              v35 += 4;
              v47 = ((v22 + v43 - v45) >> v19) & ~((v22 + v43 - v45) >> v19 >> 31);
              if (v47 >= 255)
              {
                LOBYTE(v47) = -1;
              }

              v41[2] = v47;
              v48 = ((v22 + v44 - v46) >> v19) & ~((v22 + v44 - v46) >> v19 >> 31);
              if (v48 >= 255)
              {
                LOBYTE(v48) = -1;
              }

              v41[3] = v48;
              result += 4;
            }

            while (result <= v24);
          }

LABEL_41:
          a6 = v426;
          if (result < v426)
          {
            v49 = result;
            v50 = v25 - result;
            if (v50 < 4)
            {
              v51 = result;
              goto LABEL_44;
            }

            v72 = v421 + v25;
            v73 = v27 + result;
            v74 = 4 * result;
            result = v30 + v410;
            v76 = v27 + v49 < (v30 + v410) && v30 + v74 < v72;
            if (v32 + v74 < v72 && v73 < v32 + v410)
            {
              v51 = v49;
              goto LABEL_44;
            }

            if (v76)
            {
              v51 = v49;
              goto LABEL_44;
            }

            if (v50 >= 0x10)
            {
              v78 = v50 & 0xFFFFFFFFFFFFFFF0;
              v79 = (v30 + v74);
              v80 = (v32 + v74);
              v81 = v49;
              v82 = v50 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v84 = v79[2];
                v83 = v79[3];
                v85 = *v79;
                v86 = v79[1];
                v79 += 4;
                v429.val[1] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v86), v80[1]), v413), 0), v29);
                v429.val[0] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v85), *v80), v413), 0), v29);
                v429.val[2] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v84), v80[2]), v413), 0), v29);
                v429.val[3] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v83), v80[3]), v413), 0), v29);
                *(v27 + v81) = vqtbl4q_s8(v429, xmmword_1003E36F0);
                v80 += 4;
                v81 += 16;
                v82 -= 16;
              }

              while (v82);
              if (v50 == v78)
              {
                goto LABEL_22;
              }

              if ((v50 & 0xC) == 0)
              {
                v51 = v78 + v49;
                do
                {
LABEL_44:
                  v52 = (v22 + *(v30 + 4 * v51) - *(v32 + 4 * v51)) >> v19;
                  v53 = v52 & ~(v52 >> 31);
                  if (v53 >= 255)
                  {
                    LOBYTE(v53) = -1;
                  }

                  *(v27 + v51++) = v53;
                }

                while (v25 != v51);
                goto LABEL_22;
              }
            }

            else
            {
              v78 = 0;
            }

            v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + v49;
            v87 = v78 - (v50 & 0xFFFFFFFFFFFFFFFCLL);
            v88 = v78 + v49;
            v89 = (v30 + 4 * v88);
            v90 = (v32 + 4 * v88);
            do
            {
              v91 = *v89++;
              v92 = v91;
              v93 = *v90++;
              *v92.i8 = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(vaddq_s32(v417, v92), v93), v413), 0), v29));
              *(v27 + v88) = vuzp1_s8(*v92.i8, *v92.i8).u32[0];
              v88 += 4;
              v87 += 4;
            }

            while (v87);
            if (v50 != (v50 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_44;
            }
          }

LABEL_22:
          v23 = v425;
          v27 += v425;
          v21 = v28 - 1;
          ++v26;
          if (!v28)
          {
            return result;
          }
        }
      }

      v177 = a3;
      v415 = vdupq_n_s32(v22);
      v419 = vdupq_n_s32(v10);
      v412 = vnegq_s32(vdupq_n_s32(v19));
      while (1)
      {
        v178 = v21;
        v423 = a3 + v26 * v23;
        result = sub_10031D10C(v427 + 120, v20, v177, a6);
        v179.i64[0] = 0xFF000000FFLL;
        v179.i64[1] = 0xFF000000FFLL;
        v181 = v20[1];
        ++v20;
        v180 = v181;
        v182 = *(v20 - 2);
        if (result > v24)
        {
          goto LABEL_181;
        }

        v183 = result;
        v184 = v24 - result;
        if (v184 < 0x3C || ((v204 = v184 >> 2, v205 = v423 + 4 + (v184 & 0xFFFFFFFFFFFFFFFCLL) + result, v206 = 4 * result, v207 = v206 + 16 * (v184 >> 2), v208 = v180 + v207 + 16, v177 + result < v182 + v207 + 16) ? (v209 = v182 + v206 >= v205) : (v209 = 1), v209 ? (v210 = 0) : (v210 = 1), v180 + v206 < v205 ? (v211 = v177 + result >= v208) : (v211 = 1), !v211 || (v210 & 1) != 0))
        {
          result = result;
        }

        else
        {
          v212 = v204 + 1;
          result = result + 4 * (v212 & 0x7FFFFFFFFFFFFFF0);
          v213 = (v180 + v206);
          v214 = (v182 + v206);
          v215 = v212 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v216 = vmlaq_s32(v415, vsubq_s32(v213[11], v214[11]), v419);
            v217 = vmlaq_s32(v415, vsubq_s32(v213[10], v214[10]), v419);
            v218 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[12], v214[12]), v419), v412), 0), v179), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[13], v214[13]), v419), v412), 0), v179)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[14], v214[14]), v419), v412), 0), v179), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[15], v214[15]), v419), v412), 0), v179)));
            v219 = vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[8], v214[8]), v419), v412), 0), v179), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[9], v214[9]), v419), v412), 0), v179));
            v220 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[4], v214[4]), v419), v412), 0), v179), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[5], v214[5]), v419), v412), 0), v179)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[6], v214[6]), v419), v412), 0), v179), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[7], v214[7]), v419), v412), 0), v179)));
            v221 = (v177 + v183);
            *v221 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(*v213, *v214), v419), v412), 0), v179), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[1], v214[1]), v419), v412), 0), v179)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[2], v214[2]), v419), v412), 0), v179), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v213[3], v214[3]), v419), v412), 0), v179)));
            v221[1] = v220;
            v221[2] = vuzp1q_s8(v219, vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(v217, v412), 0), v179), vminq_s32(vmaxq_s32(vshlq_s32(v216, v412), 0), v179)));
            v221[3] = v218;
            v183 += 64;
            v213 += 16;
            v214 += 16;
            v215 -= 16;
          }

          while (v215);
          if (v212 == (v212 & 0x7FFFFFFFFFFFFFF0))
          {
            goto LABEL_181;
          }
        }

        v185 = (v182 + 4 * result + 8);
        v186 = (v180 + 4 * result + 8);
        do
        {
          v187 = *(v186 - 1) - *(v185 - 1);
          v188 = (v22 + (*(v186 - 2) - *(v185 - 2)) * v10) >> v19;
          v189 = v188 & ~(v188 >> 31);
          if (v189 >= 255)
          {
            LOBYTE(v189) = -1;
          }

          v190 = (v177 + result);
          *(v177 + result) = v189;
          v191 = ((v22 + v187 * v10) >> v19) & ~((v22 + v187 * v10) >> v19 >> 31);
          if (v191 >= 255)
          {
            LOBYTE(v191) = -1;
          }

          v190[1] = v191;
          v192 = *v186;
          v193 = v186[1];
          v186 += 4;
          v194 = *v185;
          v195 = v185[1];
          v185 += 4;
          v196 = v193 - v195;
          v197 = ((v22 + (v192 - v194) * v10) >> v19) & ~((v22 + (v192 - v194) * v10) >> v19 >> 31);
          if (v197 >= 255)
          {
            LOBYTE(v197) = -1;
          }

          v190[2] = v197;
          v198 = ((v22 + v196 * v10) >> v19) & ~((v22 + v196 * v10) >> v19 >> 31);
          if (v198 >= 255)
          {
            LOBYTE(v198) = -1;
          }

          v190[3] = v198;
          result += 4;
        }

        while (result <= v24);
LABEL_181:
        a6 = v426;
        if (result < v426)
        {
          v199 = result;
          v200 = v25 - result;
          if (v200 < 4)
          {
            v201 = result;
            goto LABEL_184;
          }

          v222 = v423 + v25;
          v223 = v177 + result;
          v224 = 4 * result;
          result = v182 + v410;
          v226 = v177 + v199 < (v182 + v410) && v182 + v224 < v222;
          if (v180 + v224 < v222 && v223 < v180 + v410)
          {
            v201 = v199;
            goto LABEL_184;
          }

          if (v226)
          {
            v201 = v199;
            goto LABEL_184;
          }

          if (v200 >= 0x10)
          {
            v228 = v200 & 0xFFFFFFFFFFFFFFF0;
            v229 = (v180 + v224);
            v230 = (v182 + v224);
            v231 = v199;
            v232 = v200 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v431.val[2] = vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v229[2], v230[2]), v419), v412), 0), v179);
              v431.val[1] = vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v229[1], v230[1]), v419), v412), 0), v179);
              v431.val[0] = vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(*v229, *v230), v419), v412), 0), v179);
              v431.val[3] = vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v229[3], v230[3]), v419), v412), 0), v179);
              *(v177 + v231) = vqtbl4q_s8(v431, xmmword_1003E36F0);
              v229 += 4;
              v230 += 4;
              v231 += 16;
              v232 -= 16;
            }

            while (v232);
            if (v200 == v228)
            {
              goto LABEL_167;
            }

            if ((v200 & 0xC) == 0)
            {
              v201 = v228 + v199;
              do
              {
LABEL_184:
                v202 = (v22 + (*(v180 + 4 * v201) - *(v182 + 4 * v201)) * v10) >> v19;
                v203 = v202 & ~(v202 >> 31);
                if (v203 >= 255)
                {
                  LOBYTE(v203) = -1;
                }

                *(v177 + v201++) = v203;
              }

              while (v25 != v201);
              goto LABEL_167;
            }
          }

          else
          {
            v228 = 0;
          }

          v201 = (v200 & 0xFFFFFFFFFFFFFFFCLL) + v199;
          v233 = v228 - (v200 & 0xFFFFFFFFFFFFFFFCLL);
          v234 = v228 + v199;
          v235 = (v180 + 4 * v234);
          v236 = (v182 + 4 * v234);
          do
          {
            v237 = *v235++;
            v238 = v237;
            v239 = *v236++;
            *v238.i8 = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v415, vsubq_s32(v238, v239), v419), v412), 0), v179));
            *(v177 + v234) = vuzp1_s8(*v238.i8, *v238.i8).u32[0];
            v234 += 4;
            v233 += 4;
          }

          while (v233);
          if (v200 != (v200 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_184;
          }
        }

LABEL_167:
        v23 = v425;
        v177 += v425;
        v21 = v178 - 1;
        ++v26;
        if (!v178)
        {
          return result;
        }
      }
    }

    a9.i32[0] = *(result + 224) + HIDWORD(v19);
    v411 = vdupq_n_s32(v22);
    a8.i32[0] = *(result + 112);
    v94 = vdupq_n_s32(v19);
    if (v17)
    {
      v95 = 0;
      v96 = a3;
      v422 = vdupq_lane_s32(a9, 0);
      v414 = vnegq_s32(vdupq_lane_s32(a8, 0));
      v418 = vnegq_s32(v94);
      while (1)
      {
        v97 = v21;
        v98 = a3 + v95 * v23;
        result = sub_10031D10C(v427 + 120, v20, v96, a6);
        v99.i64[0] = 0xFF000000FFLL;
        v99.i64[1] = 0xFF000000FFLL;
        v100 = *(v20 - 1);
        v101 = *v20;
        v103 = v20[1];
        ++v20;
        v102 = v103;
        if (result > v24)
        {
          goto LABEL_104;
        }

        v104 = result;
        v105 = v24 - result;
        if (v105 < 0x3C || ((v132 = v105 >> 2, v133 = v96 + result, v134 = v98 + 4 + (v105 & 0xFFFFFFFFFFFFFFFCLL) + result, v135 = 4 * result, v136 = v135 + 16 * (v105 >> 2), v137 = v100 + v136 + 16, v138 = v102 + v136 + 16, v133 < v101 + v136 + 16) ? (v139 = v101 + 4 * result >= v134) : (v139 = 1), v139 ? (v140 = 0) : (v140 = 1), v133 < v138 ? (v141 = v102 + 4 * result >= v134) : (v141 = 1), v141 ? (v142 = 0) : (v142 = 1), v100 + v135 < v134 ? (v143 = v133 >= v137) : (v143 = 1), !v143 || (v140 & 1) != 0 || (v142 & 1) != 0))
        {
          result = result;
        }

        else
        {
          v144 = v132 + 1;
          result = result + 4 * (v144 & 0x7FFFFFFFFFFFFFF0);
          v145 = (v100 + v135);
          v146 = (v101 + v135);
          v147 = (v102 + v135);
          v148 = v144 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v149 = vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[11]), vaddq_s32(v146[11], v146[11])), v147[11]);
            v150 = vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[10]), vaddq_s32(v146[10], v146[10])), v147[10]);
            v151 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[12]), vaddq_s32(v146[12], v146[12])), v147[12]), v414), 0), v99), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[13]), vaddq_s32(v146[13], v146[13])), v147[13]), v414), 0), v99)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[14]), vaddq_s32(v146[14], v146[14])), v147[14]), v414), 0), v99), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[15]), vaddq_s32(v146[15], v146[15])), v147[15]), v414), 0), v99)));
            v152 = vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[8]), vaddq_s32(v146[8], v146[8])), v147[8]), v414), 0), v99), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[9]), vaddq_s32(v146[9], v146[9])), v147[9]), v414), 0), v99));
            v153 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[4]), vaddq_s32(v146[4], v146[4])), v147[4]), v414), 0), v99), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[5]), vaddq_s32(v146[5], v146[5])), v147[5]), v414), 0), v99)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[6]), vaddq_s32(v146[6], v146[6])), v147[6]), v414), 0), v99), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[7]), vaddq_s32(v146[7], v146[7])), v147[7]), v414), 0), v99)));
            v154 = (v96 + v104);
            *v154 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, *v145), vaddq_s32(*v146, *v146)), *v147), v414), 0), v99), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[1]), vaddq_s32(v146[1], v146[1])), v147[1]), v414), 0), v99)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[2]), vaddq_s32(v146[2], v146[2])), v147[2]), v414), 0), v99), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v422, v145[3]), vaddq_s32(v146[3], v146[3])), v147[3]), v414), 0), v99)));
            v154[1] = v153;
            v154[2] = vuzp1q_s8(v152, vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(v150, v414), 0), v99), vminq_s32(vmaxq_s32(vshlq_s32(v149, v414), 0), v99)));
            v154[3] = v151;
            v104 += 64;
            v145 += 16;
            v146 += 16;
            v147 += 16;
            v148 -= 16;
          }

          while (v148);
          if (v144 == (v144 & 0x7FFFFFFFFFFFFFF0))
          {
            goto LABEL_104;
          }
        }

        v106 = (v101 + 4 * result + 8);
        v107 = (v102 + 4 * result + 8);
        v108 = (v100 + 4 * result + 8);
        do
        {
          v109 = *(v108 - 1);
          v110 = *(v106 - 1);
          v111 = *(v107 - 1);
          v112 = (v22 + *(v108 - 2) + 2 * *(v106 - 2) + *(v107 - 2)) >> v19;
          v113 = v112 & ~(v112 >> 31);
          if (v113 >= 255)
          {
            LOBYTE(v113) = -1;
          }

          v114 = (v96 + result);
          *(v96 + result) = v113;
          v115 = (v22 + v109 + 2 * v110 + v111) >> v19;
          v116 = v115 & ~(v115 >> 31);
          if (v116 >= 255)
          {
            LOBYTE(v116) = -1;
          }

          v114[1] = v116;
          v117 = *v108;
          v118 = v108[1];
          v108 += 4;
          v120 = *v106;
          v119 = v106[1];
          v106 += 4;
          v121 = *v107;
          v122 = v107[1];
          v107 += 4;
          v123 = (v22 + v117 + 2 * v120 + v121) >> v19;
          v124 = v123 & ~(v123 >> 31);
          if (v124 >= 255)
          {
            LOBYTE(v124) = -1;
          }

          v125 = (v22 + v118 + 2 * v119 + v122) >> v19;
          v126 = v125 & ~(v125 >> 31);
          if (v126 >= 255)
          {
            LOBYTE(v126) = -1;
          }

          result += 4;
          v114[2] = v124;
          v114[3] = v126;
        }

        while (result <= v24);
LABEL_104:
        a6 = v426;
        if (result < v426)
        {
          v127 = result;
          v128 = v25 - result;
          if (v128 < 4)
          {
            v129 = result;
            goto LABEL_107;
          }

          v155 = v98 + v25;
          v156 = v96 + result;
          v157 = 4 * result;
          result = v100 + v157;
          v159 = v96 + v127 < (v101 + v410) && v101 + 4 * v127 < v155;
          v161 = v156 < v102 + v410 && v102 + 4 * v127 < v155;
          if (result < v155 && v156 < v100 + v410)
          {
            v129 = v127;
            goto LABEL_107;
          }

          if (v159)
          {
            v129 = v127;
            goto LABEL_107;
          }

          if (v161)
          {
            v129 = v127;
            goto LABEL_107;
          }

          if (v128 >= 0x10)
          {
            v163 = v128 & 0xFFFFFFFFFFFFFFF0;
            v164 = (v100 + v157);
            v165 = (v101 + v157);
            v166 = (v102 + v157);
            v167 = v127;
            result = v128 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v430.val[1] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v411, v164[1]), vaddq_s32(v165[1], v165[1])), v166[1]), v418), 0), v99);
              v430.val[0] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v411, *v164), vaddq_s32(*v165, *v165)), *v166), v418), 0), v99);
              v430.val[2] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v411, v164[2]), vaddq_s32(v165[2], v165[2])), v166[2]), v418), 0), v99);
              v430.val[3] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v411, v164[3]), vaddq_s32(v165[3], v165[3])), v166[3]), v418), 0), v99);
              *(v96 + v167) = vqtbl4q_s8(v430, xmmword_1003E36F0);
              v164 += 4;
              v165 += 4;
              v166 += 4;
              v167 += 16;
              result -= 16;
            }

            while (result);
            if (v128 == v163)
            {
              goto LABEL_90;
            }

            if ((v128 & 0xC) == 0)
            {
              v129 = v163 + v127;
              do
              {
LABEL_107:
                v130 = (v22 + *(v100 + 4 * v129) + 2 * *(v101 + 4 * v129) + *(v102 + 4 * v129)) >> v19;
                v131 = v130 & ~(v130 >> 31);
                if (v131 >= 255)
                {
                  LOBYTE(v131) = -1;
                }

                *(v96 + v129++) = v131;
              }

              while (v25 != v129);
              goto LABEL_90;
            }
          }

          else
          {
            v163 = 0;
          }

          v129 = (v128 & 0xFFFFFFFFFFFFFFFCLL) + v127;
          v168 = v163 - (v128 & 0xFFFFFFFFFFFFFFFCLL);
          v169 = v163 + v127;
          v170 = (v100 + 4 * v169);
          v171 = (v101 + 4 * v169);
          result = v102 + 4 * v169;
          do
          {
            v172 = *v170++;
            v173 = v172;
            v174 = *v171++;
            v175 = vaddq_s32(v174, v174);
            v176 = *result;
            result += 16;
            *v173.i8 = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v411, v173), v175), v176), v418), 0), v99));
            *(v96 + v169) = vuzp1_s8(*v173.i8, *v173.i8).u32[0];
            v169 += 4;
            v168 += 4;
          }

          while (v168);
          if (v128 != (v128 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_107;
          }
        }

LABEL_90:
        v23 = v425;
        v96 += v425;
        v21 = v97 - 1;
        ++v95;
        if (!v97)
        {
          return result;
        }
      }
    }

    if (v12)
    {
      v240 = 0;
      v241 = a3;
      v424 = vdupq_lane_s32(a9, 0);
      v416 = vnegq_s32(vdupq_lane_s32(a8, 0));
      v420 = vnegq_s32(v94);
      while (1)
      {
        v242 = v21;
        v243 = a3 + v240 * v23;
        result = sub_10031D10C(v427 + 120, v20, v241, a6);
        v244.i64[0] = 0xFF000000FFLL;
        v244.i64[1] = 0xFF000000FFLL;
        v245 = *(v20 - 1);
        v246 = *v20;
        v248 = v20[1];
        ++v20;
        v247 = v248;
        if (result > v24)
        {
          goto LABEL_244;
        }

        v249 = result;
        v250 = v24 - result;
        if (v250 < 0x3C || ((v277 = v250 >> 2, v278 = v241 + result, v279 = v243 + 4 + (v250 & 0xFFFFFFFFFFFFFFFCLL) + result, v280 = 4 * result, v281 = v280 + 16 * (v250 >> 2), v282 = v245 + v281 + 16, v283 = v247 + v281 + 16, v278 < v246 + v281 + 16) ? (v284 = v246 + 4 * result >= v279) : (v284 = 1), v284 ? (v285 = 0) : (v285 = 1), v278 < v283 ? (v286 = v247 + 4 * result >= v279) : (v286 = 1), v286 ? (v287 = 0) : (v287 = 1), v245 + v280 < v279 ? (v288 = v278 >= v282) : (v288 = 1), !v288 || (v285 & 1) != 0 || (v287 & 1) != 0))
        {
          result = result;
        }

        else
        {
          v289 = v277 + 1;
          result = result + 4 * (v289 & 0x7FFFFFFFFFFFFFF0);
          v290 = (v245 + v280);
          v291 = (v246 + v280);
          v292 = (v247 + v280);
          v293 = v289 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v294 = vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[11]), vaddq_s32(v291[11], v291[11])), v292[11]);
            v295 = vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[10]), vaddq_s32(v291[10], v291[10])), v292[10]);
            v296 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[12]), vaddq_s32(v291[12], v291[12])), v292[12]), v416), 0), v244), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[13]), vaddq_s32(v291[13], v291[13])), v292[13]), v416), 0), v244)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[14]), vaddq_s32(v291[14], v291[14])), v292[14]), v416), 0), v244), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[15]), vaddq_s32(v291[15], v291[15])), v292[15]), v416), 0), v244)));
            v297 = vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[8]), vaddq_s32(v291[8], v291[8])), v292[8]), v416), 0), v244), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[9]), vaddq_s32(v291[9], v291[9])), v292[9]), v416), 0), v244));
            v298 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[4]), vaddq_s32(v291[4], v291[4])), v292[4]), v416), 0), v244), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[5]), vaddq_s32(v291[5], v291[5])), v292[5]), v416), 0), v244)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[6]), vaddq_s32(v291[6], v291[6])), v292[6]), v416), 0), v244), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[7]), vaddq_s32(v291[7], v291[7])), v292[7]), v416), 0), v244)));
            v299 = (v241 + v249);
            *v299 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, *v290), vaddq_s32(*v291, *v291)), *v292), v416), 0), v244), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[1]), vaddq_s32(v291[1], v291[1])), v292[1]), v416), 0), v244)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[2]), vaddq_s32(v291[2], v291[2])), v292[2]), v416), 0), v244), vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v424, v290[3]), vaddq_s32(v291[3], v291[3])), v292[3]), v416), 0), v244)));
            v299[1] = v298;
            v299[2] = vuzp1q_s8(v297, vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(v295, v416), 0), v244), vminq_s32(vmaxq_s32(vshlq_s32(v294, v416), 0), v244)));
            v299[3] = v296;
            v249 += 64;
            v290 += 16;
            v291 += 16;
            v292 += 16;
            v293 -= 16;
          }

          while (v293);
          if (v289 == (v289 & 0x7FFFFFFFFFFFFFF0))
          {
            goto LABEL_244;
          }
        }

        v251 = (v246 + 4 * result + 8);
        v252 = (v247 + 4 * result + 8);
        v253 = (v245 + 4 * result + 8);
        do
        {
          v254 = *(v253 - 1);
          v255 = *(v251 - 1);
          v256 = *(v252 - 1);
          v257 = (v22 + *(v253 - 2) - 2 * *(v251 - 2) + *(v252 - 2)) >> v19;
          v258 = v257 & ~(v257 >> 31);
          if (v258 >= 255)
          {
            LOBYTE(v258) = -1;
          }

          v259 = (v241 + result);
          *(v241 + result) = v258;
          v260 = (v22 + v254 - 2 * v255 + v256) >> v19;
          v261 = v260 & ~(v260 >> 31);
          if (v261 >= 255)
          {
            LOBYTE(v261) = -1;
          }

          v259[1] = v261;
          v262 = *v253;
          v263 = v253[1];
          v253 += 4;
          v265 = *v251;
          v264 = v251[1];
          v251 += 4;
          v266 = *v252;
          v267 = v252[1];
          v252 += 4;
          v268 = (v22 + v262 - 2 * v265 + v266) >> v19;
          v269 = v268 & ~(v268 >> 31);
          if (v269 >= 255)
          {
            LOBYTE(v269) = -1;
          }

          v270 = (v22 + v263 - 2 * v264 + v267) >> v19;
          v271 = v270 & ~(v270 >> 31);
          if (v271 >= 255)
          {
            LOBYTE(v271) = -1;
          }

          result += 4;
          v259[2] = v269;
          v259[3] = v271;
        }

        while (result <= v24);
LABEL_244:
        a6 = v426;
        if (result < v426)
        {
          v272 = result;
          v273 = v25 - result;
          if (v273 < 4)
          {
            v274 = result;
            goto LABEL_247;
          }

          v300 = v243 + v25;
          v301 = v241 + result;
          v302 = 4 * result;
          result = v245 + v302;
          v304 = v241 + v272 < (v246 + v410) && v246 + 4 * v272 < v300;
          v306 = v301 < v247 + v410 && v247 + 4 * v272 < v300;
          if (result < v300 && v301 < v245 + v410)
          {
            v274 = v272;
            goto LABEL_247;
          }

          if (v304)
          {
            v274 = v272;
            goto LABEL_247;
          }

          if (v306)
          {
            v274 = v272;
            goto LABEL_247;
          }

          if (v273 >= 0x10)
          {
            v308 = v273 & 0xFFFFFFFFFFFFFFF0;
            v309 = (v245 + v302);
            v310 = (v246 + v302);
            v311 = (v247 + v302);
            v312 = v272;
            result = v273 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v432.val[1] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v411, v309[1]), vaddq_s32(v310[1], v310[1])), v311[1]), v420), 0), v244);
              v432.val[0] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v411, *v309), vaddq_s32(*v310, *v310)), *v311), v420), 0), v244);
              v432.val[2] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v411, v309[2]), vaddq_s32(v310[2], v310[2])), v311[2]), v420), 0), v244);
              v432.val[3] = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v411, v309[3]), vaddq_s32(v310[3], v310[3])), v311[3]), v420), 0), v244);
              *(v241 + v312) = vqtbl4q_s8(v432, xmmword_1003E36F0);
              v309 += 4;
              v310 += 4;
              v311 += 4;
              v312 += 16;
              result -= 16;
            }

            while (result);
            if (v273 == v308)
            {
              goto LABEL_230;
            }

            if ((v273 & 0xC) == 0)
            {
              v274 = v308 + v272;
              do
              {
LABEL_247:
                v275 = (v22 + *(v245 + 4 * v274) - 2 * *(v246 + 4 * v274) + *(v247 + 4 * v274)) >> v19;
                v276 = v275 & ~(v275 >> 31);
                if (v276 >= 255)
                {
                  LOBYTE(v276) = -1;
                }

                *(v241 + v274++) = v276;
              }

              while (v25 != v274);
              goto LABEL_230;
            }
          }

          else
          {
            v308 = 0;
          }

          v274 = (v273 & 0xFFFFFFFFFFFFFFFCLL) + v272;
          v313 = v308 - (v273 & 0xFFFFFFFFFFFFFFFCLL);
          v314 = v308 + v272;
          v315 = (v245 + 4 * v314);
          v316 = (v246 + 4 * v314);
          result = v247 + 4 * v314;
          do
          {
            v317 = *v315++;
            v318 = v317;
            v319 = *v316++;
            v320 = v319;
            v321 = *result;
            result += 16;
            *v318.i8 = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(vsubq_s32(vaddq_s32(v411, v318), vaddq_s32(v320, v320)), v321), v420), 0), v244));
            *(v241 + v314) = vuzp1_s8(*v318.i8, *v318.i8).u32[0];
            v314 += 4;
            v313 += 4;
          }

          while (v313);
          if (v273 != (v273 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_247;
          }
        }

LABEL_230:
        v23 = v425;
        v241 += v425;
        v21 = v242 - 1;
        ++v240;
        if (!v242)
        {
          return result;
        }
      }
    }

    v322 = 0;
    v323 = a3;
    v406 = vdupq_n_s32(v11);
    v407 = vdupq_n_s32(v10);
    v404 = vdupq_lane_s32(a9, 0);
    v405 = vnegq_s32(v94);
    v403 = vnegq_s32(vdupq_lane_s32(a8, 0));
    do
    {
      v409 = v21;
      v408 = a3 + v322 * v23;
      result = sub_10031D10C(v427 + 120, v20, v323, a6);
      v324 = *(v20 - 1);
      v325 = *v20;
      v327 = v20[1];
      ++v20;
      v326 = v327;
      if (result > v24)
      {
        goto LABEL_321;
      }

      v328 = result;
      v329 = v24 - result;
      if (v329 <= 0x3B || ((v357 = v329 >> 2, v358 = v323 + result, v359 = v408 + 4 + (v329 & 0xFFFFFFFFFFFFFFFCLL) + result, v360 = 4 * result, v361 = v360 + 16 * (v329 >> 2), v362 = v324 + v361 + 16, v363 = v325 + v361 + 16, v358 < v326 + v361 + 16) ? (v364 = v326 + 4 * result >= v359) : (v364 = 1), v364 ? (v365 = 0) : (v365 = 1), v358 < v363 ? (v366 = v325 + 4 * result >= v359) : (v366 = 1), v366 ? (v367 = 0) : (v367 = 1), v324 + v360 < v359 ? (v368 = v358 >= v362) : (v368 = 1), !v368 || (v365 & 1) != 0 || (v367 & 1) != 0))
      {
        result = result;
      }

      else
      {
        v369 = v357 + 1;
        result = result + 4 * (v369 & 0x7FFFFFFFFFFFFFF0);
        v370 = (v324 + v360);
        v371 = (v326 + v360);
        v372 = (v325 + v360);
        v373 = v369 & 0x7FFFFFFFFFFFFFF0;
        v374.i64[0] = 0xFF000000FFLL;
        v374.i64[1] = 0xFF000000FFLL;
        do
        {
          v375 = vmlaq_s32(vmlaq_s32(v404, v372[11], v406), vaddq_s32(v371[11], v370[11]), v407);
          v376 = vmlaq_s32(vmlaq_s32(v404, v372[10], v406), vaddq_s32(v371[10], v370[10]), v407);
          v377 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[12], v406), vaddq_s32(v371[12], v370[12]), v407), v403), 0), v374), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[13], v406), vaddq_s32(v371[13], v370[13]), v407), v403), 0), v374)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[14], v406), vaddq_s32(v371[14], v370[14]), v407), v403), 0), v374), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[15], v406), vaddq_s32(v371[15], v370[15]), v407), v403), 0), v374)));
          v378 = vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[8], v406), vaddq_s32(v371[8], v370[8]), v407), v403), 0), v374), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[9], v406), vaddq_s32(v371[9], v370[9]), v407), v403), 0), v374));
          v379 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[4], v406), vaddq_s32(v371[4], v370[4]), v407), v403), 0), v374), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[5], v406), vaddq_s32(v371[5], v370[5]), v407), v403), 0), v374)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[6], v406), vaddq_s32(v371[6], v370[6]), v407), v403), 0), v374), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[7], v406), vaddq_s32(v371[7], v370[7]), v407), v403), 0), v374)));
          v380 = (v323 + v328);
          *v380 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, *v372, v406), vaddq_s32(*v371, *v370), v407), v403), 0), v374), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[1], v406), vaddq_s32(v371[1], v370[1]), v407), v403), 0), v374)), vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[2], v406), vaddq_s32(v371[2], v370[2]), v407), v403), 0), v374), vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v404, v372[3], v406), vaddq_s32(v371[3], v370[3]), v407), v403), 0), v374)));
          v380[1] = v379;
          v380[2] = vuzp1q_s8(v378, vuzp1q_s16(vminq_s32(vmaxq_s32(vshlq_s32(v376, v403), 0), v374), vminq_s32(vmaxq_s32(vshlq_s32(v375, v403), 0), v374)));
          v380[3] = v377;
          v328 += 64;
          v370 += 16;
          v371 += 16;
          v372 += 16;
          v373 -= 16;
        }

        while (v373);
        if (v369 == (v369 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_321;
        }
      }

      v330 = (v326 + 4 * result + 8);
      v331 = (v325 + 4 * result + 8);
      v332 = (v324 + 4 * result + 8);
      do
      {
        v333 = *(v330 - 1) + *(v332 - 1);
        v334 = *(v331 - 1);
        v335 = (v22 + *(v331 - 2) * v11 + (*(v330 - 2) + *(v332 - 2)) * v10) >> v19;
        v336 = v335 & ~(v335 >> 31);
        if (v336 >= 255)
        {
          LOBYTE(v336) = -1;
        }

        v337 = (v323 + result);
        *(v323 + result) = v336;
        v338 = (v22 + v334 * v11 + v333 * v10) >> v19;
        v339 = v338 & ~(v338 >> 31);
        if (v339 >= 255)
        {
          LOBYTE(v339) = -1;
        }

        v337[1] = v339;
        v340 = *v332;
        v341 = v332[1];
        v332 += 4;
        v343 = *v330;
        v342 = v330[1];
        v330 += 4;
        v344 = v343 + v340;
        v345 = v342 + v341;
        v347 = *v331;
        v346 = v331[1];
        v331 += 4;
        v348 = ((v22 + v347 * v11 + v344 * v10) >> v19) & ~((v22 + v347 * v11 + v344 * v10) >> v19 >> 31);
        if (v348 >= 255)
        {
          LOBYTE(v348) = -1;
        }

        v337[2] = v348;
        v349 = (v22 + v346 * v11 + v345 * v10) >> v19;
        v350 = v349 & ~(v349 >> 31);
        if (v350 >= 255)
        {
          LOBYTE(v350) = -1;
        }

        v337[3] = v350;
        result += 4;
      }

      while (result <= v24);
LABEL_321:
      a6 = v426;
      v351.i64[0] = 0xFF000000FFLL;
      v351.i64[1] = 0xFF000000FFLL;
      if (result < v426)
      {
        v352 = result;
        v353 = v25 - result;
        if (v353 < 4)
        {
          v354 = result;
          goto LABEL_324;
        }

        v381 = v408 + v25;
        v382 = v323 + result;
        v383 = 4 * result;
        result = v324 + v383;
        v385 = v323 + v352 < (v326 + v410) && v326 + 4 * v352 < v381;
        v387 = v382 < v325 + v410 && v325 + 4 * v352 < v381;
        if (result < v381 && v382 < v324 + v410)
        {
          v354 = v352;
          goto LABEL_324;
        }

        if (v385)
        {
          v354 = v352;
          goto LABEL_324;
        }

        if (v387)
        {
          v354 = v352;
          goto LABEL_324;
        }

        if (v353 >= 0x10)
        {
          v389 = v353 & 0xFFFFFFFFFFFFFFF0;
          v390 = (v324 + v383);
          v391 = (v326 + v383);
          v392 = (v325 + v383);
          v393 = v352;
          result = v353 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v433.val[1] = vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v411, v392[1], v406), vaddq_s32(v391[1], v390[1]), v407), v405), 0), v351);
            v433.val[0] = vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v411, *v392, v406), vaddq_s32(*v391, *v390), v407), v405), 0), v351);
            v433.val[2] = vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v411, v392[2], v406), vaddq_s32(v391[2], v390[2]), v407), v405), 0), v351);
            v433.val[3] = vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v411, v392[3], v406), vaddq_s32(v391[3], v390[3]), v407), v405), 0), v351);
            *(v323 + v393) = vqtbl4q_s8(v433, xmmword_1003E36F0);
            v390 += 4;
            v391 += 4;
            v392 += 4;
            v393 += 16;
            result -= 16;
          }

          while (result);
          if (v353 == v389)
          {
            goto LABEL_307;
          }

          if ((v353 & 0xC) == 0)
          {
            v354 = v389 + v352;
            do
            {
LABEL_324:
              v355 = (v22 + *(v325 + 4 * v354) * v11 + (*(v326 + 4 * v354) + *(v324 + 4 * v354)) * v10) >> v19;
              v356 = v355 & ~(v355 >> 31);
              if (v356 >= 255)
              {
                LOBYTE(v356) = -1;
              }

              *(v323 + v354++) = v356;
            }

            while (v25 != v354);
            goto LABEL_307;
          }
        }

        else
        {
          v389 = 0;
        }

        v354 = (v353 & 0xFFFFFFFFFFFFFFFCLL) + v352;
        v394 = v389 - (v353 & 0xFFFFFFFFFFFFFFFCLL);
        v395 = v389 + v352;
        v396 = (v324 + 4 * v395);
        v397 = (v326 + 4 * v395);
        result = v325 + 4 * v395;
        do
        {
          v398 = *v396++;
          v399 = v398;
          v400 = *v397++;
          v401 = vaddq_s32(v400, v399);
          v402 = *result;
          result += 16;
          *v401.i8 = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(vmlaq_s32(v411, v402, v406), v401, v407), v405), 0), v351));
          *(v323 + v395) = vuzp1_s8(*v401.i8, *v401.i8).u32[0];
          v395 += 4;
          v394 += 4;
        }

        while (v394);
        if (v353 != (v353 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_324;
        }
      }

LABEL_307:
      v23 = v425;
      v323 += v425;
      v21 = v409 - 1;
      ++v322;
    }

    while (v409);
  }

  return result;
}

uint64_t sub_10031C350(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, double a6)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v12 = (a1 + 16);
  *a1 = off_1004797E8;
  *(a1 + 20) = 0u;
  v13 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  v35 = (a1 + 24);
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 128) = 1124007936;
  v14 = (a1 + 128);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 132) = 0u;
  v15 = (a1 + 132);
  *(a1 + 208) = 0;
  *(a1 + 192) = a1 + 136;
  *(a1 + 200) = a1 + 208;
  *(a1 + 216) = 0;
  *(a1 + 120) = 0;
  v16 = a1 + 120;
  if ((*(a2 + 1) & 0x40) == 0)
  {
    LODWORD(v36) = 33619968;
    v37 = a1 + 16;
    v38 = 0;
    sub_10022B754(a2, &v36);
    goto LABEL_17;
  }

  if (v12 != a2)
  {
    v17 = *(a2 + 56);
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      v18 = *(a1 + 72);
      if (v18)
      {
        if (atomic_fetch_add((v18 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v12 = *a2;
      v22 = *(a2 + 4);
      if (v22 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v22;
        *(a1 + 24) = *(a2 + 8);
        v23 = *(a2 + 72);
        v24 = *(a1 + 88);
        *v24 = *v23;
        v24[1] = v23[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
      v20 = *(a1 + 80);
      do
      {
        *(v20 + 4 * v19++) = 0;
        v21 = *v13;
      }

      while (v19 < v21);
      *v12 = *a2;
      if (v21 <= 2)
      {
        v22 = *(a2 + 4);
        if (v22 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v12, a2);
    goto LABEL_16;
  }

LABEL_17:
  *(a1 + 8) = *(a1 + 24) + *(a1 + 28) - 1;
  *(a1 + 12) = a3;
  *(a1 + 224) = rint(a6);
  *(a1 + 112) = *a4;
  v25 = (a5 + 8);
  *(a1 + 120) = *a5;
  if (v16 != a5)
  {
    v26 = *(a5 + 64);
    if (v26)
    {
      atomic_fetch_add((v26 + 20), 1u);
    }

    v27 = *(a1 + 184);
    if (v27 && atomic_fetch_add((v27 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v14);
    }

    *(a1 + 184) = 0;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    if (*(a1 + 132) <= 0)
    {
      *v14 = *v25;
      v31 = *(a5 + 12);
      if (v31 <= 2)
      {
LABEL_28:
        *(a1 + 132) = v31;
        *(a1 + 136) = *(a5 + 16);
        v32 = *(a5 + 80);
        v33 = *(a1 + 200);
        *v33 = *v32;
        v33[1] = v32[1];
LABEL_31:
        *(a1 + 144) = *(a5 + 24);
        *(a1 + 160) = *(a5 + 40);
        *(a1 + 176) = *(a5 + 56);
        goto LABEL_32;
      }
    }

    else
    {
      v28 = 0;
      v29 = *(a1 + 192);
      do
      {
        *(v29 + 4 * v28++) = 0;
        v30 = *v15;
      }

      while (v28 < v30);
      *v14 = *v25;
      if (v30 <= 2)
      {
        v31 = *(a5 + 12);
        if (v31 <= 2)
        {
          goto LABEL_28;
        }
      }
    }

    sub_100269B58(v14, a5 + 8);
    goto LABEL_31;
  }

LABEL_32:
  if ((*v12 & 0xFFF) != 4 || *v35 != 1 && *(a1 + 28) != 1)
  {
    v36 = 0;
    v37 = 0;
    qmemcpy(sub_1002A80E0(&v36, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v36, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

void sub_10031C708(_Unwind_Exception *a1)
{
  sub_100308044(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10031C744(uint64_t a1)
{
  *a1 = off_1004797E8;
  v2 = *(a1 + 184);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 128);
  }

  *(a1 + 184) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a1 + 132) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 192);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 132));
  }

  v5 = *(a1 + 200);
  if (v5 != (a1 + 208))
  {
    j__free(v5);
  }

  v6 = *(a1 + 72);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 80);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 20));
  }

  v9 = *(a1 + 88);
  if (v9 != (a1 + 96))
  {
    j__free(v9);
  }

  return a1;
}

void sub_10031C868(uint64_t a1)
{
  sub_10031C744(a1);

  operator delete();
}

int64_t sub_10031C8A0(int64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v79 = *(result + 8);
  v7 = *(result + 32);
  v8 = (v79 + (v79 >> 31)) >> 1;
  v9 = (v7 + 4 * (v79 / 2));
  v10 = *(result + 224);
  v12 = *(result + 112);
  v11 = *(result + 116);
  v13 = (a2 + 8 * (v79 / 2));
  v80 = result;
  if (*(result + 228))
  {
    if (!a5)
    {
      return result;
    }

    v40 = (v79 / 2 + 1);
    v41 = a6 - 4;
    v42 = a2 + 8 * v8;
    v43 = (v42 - 8);
    v44 = (v42 + 16);
    v77 = a4;
    v75 = vdupq_n_s32(v11);
    v72 = vdupq_n_s32(v10);
    v71 = v7 + 4 * v8 + 8;
    v69 = vnegq_s32(vdupq_n_s32(v12));
    while (1)
    {
      v82 = a5;
      result = sub_10031D10C(v80 + 120, v13, a3, a6);
      v45.i64[0] = 0xFF000000FFLL;
      v45.i64[1] = 0xFF000000FFLL;
      if (result <= v41)
      {
        result = result;
        do
        {
          v47 = vld1q_dup_f32(v9);
          v48 = vmlaq_s32(v72, *(*v13 + 4 * result), v47);
          if (v79 >= 2)
          {
            v49 = v43;
            v50 = 1;
            do
            {
              v51 = *v49--;
              v52 = &v9[v50];
              v53 = vld1q_dup_f32(v52);
              v48 = vmlaq_s32(v48, vaddq_s32(*(v51 + 4 * result), *(v13[v50++] + 4 * result)), v53);
            }

            while (v40 != v50);
          }

          v46 = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v48, v75), v69), 0), v45));
          *(a3 + result) = vuzp1_s8(v46, v46).u32[0];
          result += 4;
        }

        while (result <= v41);
      }

      if (result >= a6)
      {
        goto LABEL_30;
      }

      v54 = result;
      if (v79 >= 2)
      {
        break;
      }

      do
      {
        v55 = (v10 + *(*v13 + 4 * v54) * *v9 + v11) >> v12;
        v56 = v55 & ~(v55 >> 31);
        if (v56 >= 255)
        {
          LOBYTE(v56) = -1;
        }

        *(a3 + v54++) = v56;
      }

      while (a6 != v54);
LABEL_30:
      a3 += v77;
      ++v13;
      ++v43;
      ++v44;
      a5 = v82 - 1;
      if (v82 == 1)
      {
        return result;
      }
    }

    while (1)
    {
      v58 = v10 + *(*v13 + 4 * v54) * *v9;
      if (v40 >= 3)
      {
        v60 = 0;
        v61 = v44;
        v62 = v71;
        v63 = (v40 - 1) & 0xFFFFFFFFFFFFFFFELL;
        v64 = v43;
        do
        {
          result = (*(*(v64 - 1) + 4 * v54) + *(*v61 + 4 * v54));
          v58 += (*(*v64 + 4 * v54) + *(*(v61 - 1) + 4 * v54)) * *(v62 - 1);
          v60 += result * *v62;
          v64 -= 2;
          v62 += 2;
          v61 += 2;
          v63 -= 2;
        }

        while (v63);
        v58 += v60;
        v59 = (v40 - 1) | 1;
        if (v40 - 1 == ((v40 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v59 = 1;
      }

      v65 = -1 * v59;
      do
      {
        v58 += (*(v13[v65] + 4 * v54) + *(v13[v59] + 4 * v54)) * LODWORD(v9[v59]);
        ++v59;
        --v65;
      }

      while (v40 != v59);
LABEL_44:
      v57 = ((v58 + v11) >> v12) & ~((v58 + v11) >> v12 >> 31);
      if (v57 >= 255)
      {
        LOBYTE(v57) = -1;
      }

      *(a3 + v54++) = v57;
      if (v54 == a6)
      {
        goto LABEL_30;
      }
    }
  }

  if (a5)
  {
    v14 = ((v10 + v11) >> v12) & ~((v10 + v11) >> v12 >> 31);
    if (v14 >= 255)
    {
      v14 = 255;
    }

    v78 = a4;
    v15 = (v79 / 2 + 1);
    v16 = a6 - 4;
    v17 = vdupq_n_s32(v12);
    __c = v14;
    v18 = a2 + 8 * v8;
    v19 = (v18 - 8);
    v70 = v7 + 4 * v8 + 8;
    v20 = (v18 + 16);
    v76 = a6;
    v73 = vdupq_n_s32(v10);
    v74 = vdupq_n_s32(v11);
    v67 = vnegq_s32(v17);
    v68 = vuzp1_s8(vdup_n_s16(v14), *v17.i8).u32[0];
    while (1)
    {
      v81 = a5;
      result = sub_10031D10C(v80 + 120, v13, a3, a6);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      if (result <= v16)
      {
        result = result;
        if (v79 >= 2)
        {
          do
          {
            v22 = v19;
            v23 = 1;
            v24 = v73;
            do
            {
              v25 = *v22--;
              v26 = &v9[v23];
              v27 = vld1q_dup_f32(v26);
              v24 = vmlaq_s32(v24, vsubq_s32(*(v13[v23++] + 4 * result), *(v25 + 4 * result)), v27);
            }

            while (v15 != v23);
            v28 = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v24, v74), v67), 0), v21));
            *(a3 + result) = vuzp1_s8(v28, v28).u32[0];
            result += 4;
          }

          while (result <= v16);
        }

        else
        {
          do
          {
            *(a3 + result) = v68;
            result += 4;
          }

          while (result <= v16);
        }
      }

      if (result >= a6)
      {
        goto LABEL_6;
      }

      v29 = result;
      if (v79 >= 2)
      {
        break;
      }

      result = memset((a3 + result), __c, (~result + a6) + 1);
LABEL_6:
      a3 += v78;
      ++v13;
      ++v19;
      ++v20;
      a5 = v81 - 1;
      if (v81 == 1)
      {
        return result;
      }
    }

    while (v15 >= 3)
    {
      v33 = 0;
      v34 = v20;
      v35 = v70;
      v36 = (v15 - 1) & 0xFFFFFFFFFFFFFFFELL;
      v37 = v19;
      v38 = v10;
      do
      {
        result = (*(*v34 + 4 * v29) - *(*(v37 - 1) + 4 * v29));
        v38 += (*(*(v34 - 1) + 4 * v29) - *(*v37 + 4 * v29)) * *(v35 - 1);
        v33 += result * *v35;
        v37 -= 2;
        v35 += 2;
        v34 += 2;
        v36 -= 2;
      }

      while (v36);
      v32 = v33 + v38;
      v31 = (v15 - 1) | 1;
      if (v15 - 1 != ((v15 - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_25;
      }

LABEL_17:
      v30 = ((v32 + v11) >> v12) & ~((v32 + v11) >> v12 >> 31);
      if (v30 >= 255)
      {
        LOBYTE(v30) = -1;
      }

      *(a3 + v29++) = v30;
      if (v29 == v76)
      {
        goto LABEL_6;
      }
    }

    v31 = 1;
    v32 = v10;
LABEL_25:
    v39 = -1 * v31;
    do
    {
      v32 += (*(v13[v31] + 4 * v29) - *(v13[v39] + 4 * v29)) * LODWORD(v9[v31]);
      ++v31;
      --v39;
    }

    while (v15 != v31);
    goto LABEL_17;
  }

  return result;
}

void sub_10031CE48(uint64_t a1)
{
  sub_10031C744(a1);

  operator delete();
}

int64_t sub_10031CE80(int64_t result, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  v38 = result;
  if (a5)
  {
    v7 = a2;
    v8 = *(result + 32);
    v9 = *(result + 224);
    v10 = *(result + 112);
    v11 = *(result + 116);
    v12 = *(result + 8);
    v36 = a4;
    v37 = a6;
    v13 = a6 - 4;
    v14 = a6;
    v15 = a2 + 2;
    v34 = vdupq_n_s32(v9);
    v35 = vdupq_n_s32(v11);
    v33 = vnegq_s32(vdupq_n_s32(v10));
    while (1)
    {
      v39 = a5;
      result = sub_10031D10C(v38 + 120, v7, a3, a6);
      v16.i64[0] = 0xFF000000FFLL;
      v16.i64[1] = 0xFF000000FFLL;
      if (result <= v13)
      {
        result = result;
        do
        {
          v18 = vld1q_dup_f32(v8);
          v19 = vmlaq_s32(v34, *(*v7 + 4 * result), v18);
          if (v12 >= 2)
          {
            for (i = 1; i != v12; ++i)
            {
              v21 = &v8[i];
              v22 = vld1q_dup_f32(v21);
              v19 = vmlaq_s32(v19, *(v7[i] + 4 * result), v22);
            }
          }

          v17 = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v19, v35), v33), 0), v16));
          *(a3 + result) = vuzp1_s8(v17, v17).u32[0];
          result += 4;
        }

        while (result <= v13);
      }

      a6 = v37;
      if (result >= v37)
      {
        goto LABEL_3;
      }

      v23 = result;
      if (v12 > 1)
      {
        break;
      }

      do
      {
        v24 = (v9 + *(*v7 + 4 * v23) * *v8 + v11) >> v10;
        v25 = v24 & ~(v24 >> 31);
        if (v25 >= 255)
        {
          LOBYTE(v25) = -1;
        }

        *(a3 + v23++) = v25;
      }

      while (v14 != v23);
LABEL_3:
      a3 += v36;
      ++v7;
      ++v15;
      a5 = v39 - 1;
      if (v39 == 1)
      {
        return result;
      }
    }

    while (1)
    {
      v27 = v9 + *(*v7 + 4 * v23) * *v8;
      if (v12 == 2)
      {
        v28 = 1;
      }

      else
      {
        v29 = 0;
        v30 = v15;
        v31 = v8 + 2;
        v32 = (v12 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v27 += *(*(v30 - 1) + 4 * v23) * *(v31 - 1);
          v29 += *(*v30 + 4 * v23) * *v31;
          v31 += 2;
          v30 += 2;
          v32 -= 2;
        }

        while (v32);
        v27 += v29;
        v28 = (v12 - 1) | 1;
        if (v12 - 1 == ((v12 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_17;
        }
      }

      do
      {
        v27 += *(v7[v28] + 4 * v23) * LODWORD(v8[v28]);
        ++v28;
      }

      while (v12 != v28);
LABEL_17:
      v26 = ((v27 + v11) >> v10) & ~((v27 + v11) >> v10 >> 31);
      if (v26 >= 255)
      {
        LOBYTE(v26) = -1;
      }

      *(a3 + v23++) = v26;
      if (v23 == v14)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

unint64_t sub_10031D10C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  result = sub_1002A8904(100);
  if (result)
  {
    v9 = *(a1 + 16) + *(a1 + 20) - 1;
    v10 = *(a1 + 24);
    v11 = (v9 + (v9 >> 31)) >> 1;
    v12 = (v10 + 4 * (v9 / 2));
    v13 = (a1 + 4);
    v14 = vld1q_dup_f32(v13);
    if (*a1)
    {
      if (*(a1 + 16) + *(a1 + 20) == 2)
      {
        return 0;
      }

      else
      {
        v19 = (a4 - 8);
        if (a4 >= 8)
        {
          v38 = vld1q_dup_f32(v12);
          v37 = v12 + 1;
          v39 = vld1q_dup_f32(v37);
          if (v9 >= 4)
          {
            result = 0;
            if (v9 / 2 <= 2)
            {
              v41 = 2;
            }

            else
            {
              v41 = (v9 / 2);
            }

            v42 = v10 + 4 * v11 + 8;
            v43 = v41 - 1;
            do
            {
              v44 = 4 * result;
              v45 = (*a2 + 4 * result);
              v46 = vcvtq_f32_s32(*v45);
              v47 = vcvtq_f32_s32(v45[1]);
              v48 = (a2[1] + 4 * result);
              v49 = (*(a2 - 1) + 4 * result);
              v50 = vmlaq_f32(vmlaq_f32(v14, v38, v46), v39, vaddq_f32(vcvtq_f32_s32(*v48), vcvtq_f32_s32(*v49)));
              v51 = vmlaq_f32(vmlaq_f32(v14, v38, v47), v39, vaddq_f32(vcvtq_f32_s32(v48[1]), vcvtq_f32_s32(v49[1])));
              v52 = v43;
              v53 = a2 + 2;
              v54 = v42;
              v55 = a2 - 2;
              do
              {
                v57 = *v53++;
                v56 = v57;
                v58 = *v55--;
                v59 = (v56 + v44);
                v60 = vld1q_dup_f32(v54++);
                v50 = vmlaq_f32(v50, v60, vaddq_f32(vcvtq_f32_s32(*v59), vcvtq_f32_s32(*(v58 + 4 * result))));
                v51 = vmlaq_f32(v51, v60, vaddq_f32(vcvtq_f32_s32(v59[1]), vcvtq_f32_s32(*(v58 + v44 + 16))));
                --v52;
              }

              while (v52);
              *(a3 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(v50)), vcvtq_s32_f32(v51)));
              result += 8;
            }

            while (result <= v19);
          }

          else
          {
            v40 = 0;
            for (result = 0; result <= v19; result += 8)
            {
              *(a3 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(vmlaq_f32(v14, v38, vcvtq_f32_s32(*(*a2 + v40))), v39, vaddq_f32(vcvtq_f32_s32(*(a2[1] + v40)), vcvtq_f32_s32(*(*(a2 - 1) + v40)))))), vcvtq_s32_f32(vmlaq_f32(vmlaq_f32(v14, v38, vcvtq_f32_s32(*(*a2 + v40 + 16))), v39, vaddq_f32(vcvtq_f32_s32(*(a2[1] + v40 + 16)), vcvtq_f32_s32(*(*(a2 - 1) + v40 + 16)))))));
              v40 += 32;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v15 = (a4 - 8);
      if (a4 >= 8)
      {
        v16 = v12 + 1;
        v17 = vld1q_dup_f32(v16);
        if (v9 >= 4)
        {
          result = 0;
          if (v9 / 2 <= 2)
          {
            v20 = 2;
          }

          else
          {
            v20 = (v9 / 2);
          }

          v21 = v10 + 4 * v11 + 8;
          v22 = v20 - 1;
          do
          {
            v23 = 4 * result;
            v24 = (a2[1] + 4 * result);
            v25 = (*(a2 - 1) + 4 * result);
            v26 = vmlaq_f32(v14, v17, vsubq_f32(vcvtq_f32_s32(*v24), vcvtq_f32_s32(*v25)));
            v27 = vmlaq_f32(v14, v17, vsubq_f32(vcvtq_f32_s32(v24[1]), vcvtq_f32_s32(v25[1])));
            v28 = v22;
            v29 = a2 + 2;
            v30 = v21;
            v31 = a2 - 2;
            do
            {
              v33 = *v29++;
              v32 = v33;
              v34 = *v31--;
              v35 = (v32 + v23);
              v36 = vld1q_dup_f32(v30++);
              v26 = vmlaq_f32(v26, v36, vsubq_f32(vcvtq_f32_s32(*v35), vcvtq_f32_s32(*(v34 + 4 * result))));
              v27 = vmlaq_f32(v27, v36, vsubq_f32(vcvtq_f32_s32(v35[1]), vcvtq_f32_s32(*(v34 + v23 + 16))));
              --v28;
            }

            while (v28);
            *(a3 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(v26)), vcvtq_s32_f32(v27)));
            result += 8;
          }

          while (result <= v15);
        }

        else
        {
          v18 = 0;
          for (result = 0; result <= v15; result += 8)
          {
            *(a3 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(v14, v17, vsubq_f32(vcvtq_f32_s32(*(a2[1] + v18)), vcvtq_f32_s32(*(*(a2 - 1) + v18)))))), vcvtq_s32_f32(vmlaq_f32(v14, v17, vsubq_f32(vcvtq_f32_s32(*(a2[1] + v18 + 16)), vcvtq_f32_s32(*(*(a2 - 1) + v18 + 16)))))));
            v18 += 32;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10031D4E4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_10031D568(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = sub_10031D634(a1, a2, a3, a4, a5, a6, a7);
  *v8 = off_100479858;
  if (*(v8 + 8) != 3)
  {
    v10[0] = 0;
    v10[1] = 0;
    *sub_1002A80E0(v10, 16) = *"this->ksize == 3";
    sub_1002A8980(-215, v10, "SymmColumnSmallFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3420);
  }

  return a1;
}

void sub_10031D60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10031E98C(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031D634(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = sub_10031E5AC(a1, a2, a3, a7, a5, a6);
  *v9 = off_1004798D0;
  *(v9 + 228) = a4;
  if ((a4 & 3) == 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    qmemcpy(sub_1002A80E0(v11, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v11, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_10031D6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10031E98C(v9);
  _Unwind_Resume(a1);
}

void sub_10031D718(uint64_t a1)
{
  sub_10031E98C(a1);

  operator delete();
}

int64_t sub_10031D750(int64_t result, uint64_t a2, int16x4_t *a3, int a4, int a5, int a6, int32x2_t a7)
{
  v326 = result;
  v7 = (*(result + 32) + 4 * (*(result + 8) / 2));
  v9 = *v7;
  v8 = v7[1];
  v10 = v8 == 1;
  v12 = v8 == 1 || v8 == -1;
  v13 = v8 == 1;
  if (v9 != 2)
  {
    v13 = 0;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v13 = 0;
  }

  if (v9 == -2)
  {
    v13 = 0;
  }

  else
  {
    v10 = 0;
  }

  if (v9 == -2)
  {
    v12 = 0;
  }

  if (a5)
  {
    v14 = a3;
    v15 = *(result + 224);
    v16 = a5 - 1;
    v324 = a4;
    v325 = a6;
    v17 = a6 - 4;
    v18 = a6;
    v19 = a2 + 8 * ((*(result + 8) + (*(result + 8) >> 31)) >> 1);
    if ((*(result + 228) & 1) == 0)
    {
      a7.i32[0] = *(result + 224);
      v320 = vdupq_n_s32(v15);
      if (v12)
      {
        v20 = a3 + 2;
        v317 = vdupq_lane_s32(a7, 0);
        while (1)
        {
          v21 = v16;
          result = sub_10031F4A8(v326 + 120, v19, v14, a6);
          v23 = *(v19 + 8);
          v19 += 8;
          v22 = v23;
          if (v8 >= 0)
          {
            v24 = *(v19 - 16);
          }

          else
          {
            v24 = v22;
          }

          if (v8 < 0)
          {
            v22 = *(v19 - 16);
          }

          if (result <= v17)
          {
            v25 = result;
            v26 = v17 - result;
            result = result;
            if (v26 < 0x1C)
            {
              goto LABEL_32;
            }

            v27 = (v26 >> 2) + 1;
            result = result + 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
            v28 = 2 * v25;
            v29 = 4 * v25;
            v30 = (v22 + 4 * v25);
            v31 = (v24 + v29);
            v32 = v27 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v33 = v31[6];
              v34 = v31[7];
              v35 = v31[4];
              v36 = v31[5];
              v37 = v31[2];
              v38 = v31[3];
              v39 = *v31;
              v40 = v31[1];
              v31 += 8;
              v41 = (v14 + v28);
              v42 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(vaddq_s32(v30[6], v317), v33)), vsubq_s32(vaddq_s32(v30[7], v317), v34));
              v43 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(vaddq_s32(v30[4], v317), v35)), vsubq_s32(vaddq_s32(v30[5], v317), v36));
              v44 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(vaddq_s32(v30[2], v317), v37)), vsubq_s32(vaddq_s32(v30[3], v317), v38));
              *v41 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(vaddq_s32(*v30, v317), v39)), vsubq_s32(vaddq_s32(v30[1], v317), v40));
              v41[1] = v44;
              v41[2] = v43;
              v41[3] = v42;
              v28 += 64;
              v30 += 8;
              v32 -= 8;
            }

            while (v32);
            if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_32:
              v45 = (v22 + 4 * result);
              v46 = (v24 + 4 * result);
              v47 = 2 * result;
              do
              {
                v48 = *v45++;
                v49 = v48;
                v50 = *v46++;
                *(v14 + v47) = vqmovn_s32(vsubq_s32(vaddq_s32(v49, v320), v50));
                result += 4;
                v47 += 8;
              }

              while (result <= v17);
            }
          }

          a6 = v325;
          if (result >= v325)
          {
            goto LABEL_21;
          }

          v51 = v18 - result;
          v52 = result;
          if (v51 < 4)
          {
            goto LABEL_47;
          }

          if (v51 >= 0x10)
          {
            v53 = v51 & 0xFFFFFFFFFFFFFFF0;
            v54 = (v20 + 2 * result);
            v55 = (v22 + 4 * result + 32);
            v56 = (v24 + 4 * result + 32);
            v57 = v51 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v59 = v55[-2];
              v58 = v55[-1];
              v61 = *v55;
              v60 = v55[1];
              v55 += 4;
              v62 = v56[-2];
              v63 = v56[-1];
              v64 = *v56;
              v65 = v56[1];
              v56 += 4;
              v54[-1] = vqmovn_high_s32(vqmovn_s32(vsubq_s32(vaddq_s32(v59, v320), v62)), vsubq_s32(vaddq_s32(v58, v320), v63));
              *v54 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(vaddq_s32(v61, v320), v64)), vsubq_s32(vaddq_s32(v60, v320), v65));
              v54 += 2;
              v57 -= 16;
            }

            while (v57);
            if (v51 == v53)
            {
              goto LABEL_21;
            }

            if ((v51 & 0xC) == 0)
            {
              v52 = v53 + result;
              do
              {
LABEL_47:
                v74 = *(v22 + 4 * v52) + v15 - *(v24 + 4 * v52);
                if (v74 <= -32768)
                {
                  v74 = -32768;
                }

                if (v74 >= 0x7FFF)
                {
                  LOWORD(v74) = 0x7FFF;
                }

                v14->i16[v52++] = v74;
              }

              while (v18 != v52);
              goto LABEL_21;
            }
          }

          else
          {
            v53 = 0;
          }

          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + result;
          v66 = v53 - (v51 & 0xFFFFFFFFFFFFFFFCLL);
          v67 = v53 + result;
          v68 = (v22 + 4 * v67);
          v69 = (v24 + 4 * v67);
          v70 = 2 * v67;
          do
          {
            v71 = *v68++;
            v72 = v71;
            v73 = *v69++;
            *(v14 + v70) = vqmovn_s32(vsubq_s32(vaddq_s32(v72, v320), v73));
            v70 += 8;
            v66 += 4;
          }

          while (v66);
          if (v51 != (v51 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_47;
          }

LABEL_21:
          v14 = (v14 + v324);
          v16 = v21 - 1;
          v20 = (v20 + v324);
          if (!v21)
          {
            return result;
          }
        }
      }

      v136 = a3 + 2;
      v315 = vdupq_lane_s32(a7, 0);
      v318 = vdupq_n_s32(v8);
      while (1)
      {
        v137 = v16;
        result = sub_10031F4A8(v326 + 120, v19, v14, a6);
        v139 = *(v19 + 8);
        v19 += 8;
        v138 = v139;
        v140 = *(v19 - 16);
        if (result <= v17)
        {
          v141 = result;
          v142 = v17 - result;
          result = result;
          if (v142 < 0x1C)
          {
            goto LABEL_81;
          }

          v143 = (v142 >> 2) + 1;
          result = result + 4 * (v143 & 0x7FFFFFFFFFFFFFF8);
          v144 = 2 * v141;
          v145 = 4 * v141;
          v146 = (v138 + 4 * v141);
          v147 = (v140 + v145);
          v148 = v143 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v149 = (v14 + v144);
            v150 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v315, vsubq_s32(v146[6], v147[6]), v318)), vmlaq_s32(v315, vsubq_s32(v146[7], v147[7]), v318));
            v151 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v315, vsubq_s32(v146[4], v147[4]), v318)), vmlaq_s32(v315, vsubq_s32(v146[5], v147[5]), v318));
            v152 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v315, vsubq_s32(v146[2], v147[2]), v318)), vmlaq_s32(v315, vsubq_s32(v146[3], v147[3]), v318));
            *v149 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v315, vsubq_s32(*v146, *v147), v318)), vmlaq_s32(v315, vsubq_s32(v146[1], v147[1]), v318));
            v149[1] = v152;
            v149[2] = v151;
            v149[3] = v150;
            v144 += 64;
            v146 += 8;
            v147 += 8;
            v148 -= 8;
          }

          while (v148);
          if (v143 != (v143 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_81:
            v153 = (v138 + 4 * result);
            v154 = (v140 + 4 * result);
            v155 = 2 * result;
            do
            {
              v156 = *v153++;
              v157 = v156;
              v158 = *v154++;
              *(v14 + v155) = vqmovn_s32(vmlaq_s32(v320, vsubq_s32(v157, v158), v318));
              result += 4;
              v155 += 8;
            }

            while (result <= v17);
          }
        }

        a6 = v325;
        if (result >= v325)
        {
          goto LABEL_75;
        }

        v159 = v18 - result;
        v160 = result;
        if (v159 < 4)
        {
          goto LABEL_96;
        }

        if (v159 >= 0x10)
        {
          v161 = v159 & 0xFFFFFFFFFFFFFFF0;
          v162 = (v136 + 2 * result);
          v163 = (v138 + 4 * result + 32);
          v164 = (v140 + 4 * result + 32);
          v165 = v159 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v166 = v163[-2];
            v167 = v163[-1];
            v168 = *v163;
            v169 = v163[1];
            v163 += 4;
            v170 = v164[-2];
            v171 = v164[-1];
            v172 = *v164;
            v173 = v164[1];
            v164 += 4;
            v162[-1] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v320, vsubq_s32(v166, v170), v318)), vmlaq_s32(v320, vsubq_s32(v167, v171), v318));
            *v162 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v320, vsubq_s32(v168, v172), v318)), vmlaq_s32(v320, vsubq_s32(v169, v173), v318));
            v162 += 2;
            v165 -= 16;
          }

          while (v165);
          if (v159 == v161)
          {
            goto LABEL_75;
          }

          if ((v159 & 0xC) == 0)
          {
            v160 = v161 + result;
            do
            {
LABEL_96:
              v182 = v15 + (*(v138 + 4 * v160) - *(v140 + 4 * v160)) * v8;
              if (v182 <= -32768)
              {
                v182 = -32768;
              }

              if (v182 >= 0x7FFF)
              {
                LOWORD(v182) = 0x7FFF;
              }

              v14->i16[v160++] = v182;
            }

            while (v18 != v160);
            goto LABEL_75;
          }
        }

        else
        {
          v161 = 0;
        }

        v160 = (v159 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v174 = v161 - (v159 & 0xFFFFFFFFFFFFFFFCLL);
        v175 = v161 + result;
        v176 = (v138 + 4 * v175);
        v177 = (v140 + 4 * v175);
        v178 = 2 * v175;
        do
        {
          v179 = *v176++;
          v180 = v179;
          v181 = *v177++;
          *(v14 + v178) = vqmovn_s32(vmlaq_s32(v320, vsubq_s32(v180, v181), v318));
          v178 += 8;
          v174 += 4;
        }

        while (v174);
        if (v159 != (v159 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_96;
        }

LABEL_75:
        v14 = (v14 + v324);
        v16 = v137 - 1;
        v136 = (v136 + v324);
        if (!v137)
        {
          return result;
        }
      }
    }

    if (v13)
    {
      v321 = vdupq_n_s32(v15);
      do
      {
        v75 = v16;
        result = sub_10031F4A8(v326 + 120, v19, v14, a6);
        v76 = *(v19 - 8);
        v77 = *v19;
        v79 = *(v19 + 8);
        v19 += 8;
        v78 = v79;
        if (result <= v17)
        {
          v80 = result;
          v81 = v17 - result;
          result = result;
          if (v81 < 0x1C)
          {
            goto LABEL_61;
          }

          v82 = (v81 >> 2) + 1;
          result = result + 4 * (v82 & 0x7FFFFFFFFFFFFFF8);
          v83 = 2 * v80;
          v84 = 4 * v80;
          v85 = (v76 + 4 * v80);
          v86 = (v77 + v84);
          v87 = (v78 + v84);
          v88 = v82 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v89 = v85[6];
            v90 = v85[7];
            v91 = v85[4];
            v92 = v85[5];
            v93 = v85[2];
            v94 = v85[3];
            v95 = *v85;
            v96 = v85[1];
            v85 += 8;
            v97 = v86[6];
            v98 = v86[7];
            v99 = v86[4];
            v100 = v86[5];
            v101 = v86[2];
            v102 = v86[3];
            v103 = *v86;
            v104 = v86[1];
            v86 += 8;
            v105 = v87[6];
            v106 = v87[7];
            v107 = v87[4];
            v108 = v87[5];
            v109 = v87[2];
            v110 = v87[3];
            v111 = *v87;
            v112 = v87[1];
            v87 += 8;
            v113 = (v14 + v83);
            *v113 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vaddq_s32(vaddq_s32(v95, v321), vaddq_s32(v103, v103)), v111)), vaddq_s32(vaddq_s32(vaddq_s32(v96, v321), vaddq_s32(v104, v104)), v112));
            v113[1] = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vaddq_s32(vaddq_s32(v93, v321), vaddq_s32(v101, v101)), v109)), vaddq_s32(vaddq_s32(vaddq_s32(v94, v321), vaddq_s32(v102, v102)), v110));
            v83 += 64;
            v113[2] = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vaddq_s32(vaddq_s32(v91, v321), vaddq_s32(v99, v99)), v107)), vaddq_s32(vaddq_s32(vaddq_s32(v92, v321), vaddq_s32(v100, v100)), v108));
            v113[3] = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vaddq_s32(vaddq_s32(v89, v321), vaddq_s32(v97, v97)), v105)), vaddq_s32(vaddq_s32(vaddq_s32(v90, v321), vaddq_s32(v98, v98)), v106));
            v88 -= 8;
          }

          while (v88);
          if (v82 != (v82 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_61:
            v114 = (v76 + 4 * result);
            v115 = (v77 + 4 * result);
            v116 = (v78 + 4 * result);
            v117 = 2 * result;
            do
            {
              v118 = *v114++;
              v119 = v118;
              v120 = *v115++;
              v121 = vaddq_s32(v120, v120);
              v122 = *v116++;
              *(v14 + v117) = vqmovn_s32(vaddq_s32(vaddq_s32(vaddq_s32(v119, v321), v121), v122));
              result += 4;
              v117 += 8;
            }

            while (result <= v17);
          }
        }

        a6 = v325;
        if (result < v325)
        {
          v123 = v18 - result;
          v124 = result;
          if (v123 <= 7)
          {
            goto LABEL_145;
          }

          v124 = (v123 & 0xFFFFFFFFFFFFFFF8) + result;
          v125 = (v76 + 4 * result);
          v126 = (v77 + 4 * result);
          v127 = (v78 + 4 * result);
          v128 = 2 * result;
          result = v123 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v129 = *v125;
            v130 = v125[1];
            v125 += 2;
            v131 = *v126;
            v132 = v126[1];
            v126 += 2;
            v133 = *v127;
            v134 = v127[1];
            v127 += 2;
            *&v14->i8[v128] = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vaddq_s32(vaddq_s32(v129, v321), vaddq_s32(v131, v131)), v133)), vaddq_s32(vaddq_s32(vaddq_s32(v130, v321), vaddq_s32(v132, v132)), v134));
            v128 += 16;
            result -= 8;
          }

          while (result);
          if (v123 != (v123 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_145:
            do
            {
              v135 = *(v76 + 4 * v124) + v15 + 2 * v77->i32[v124] + *(v78 + 4 * v124);
              if (v135 <= -32768)
              {
                v135 = -32768;
              }

              if (v135 >= 0x7FFF)
              {
                LOWORD(v135) = 0x7FFF;
              }

              v14->i16[v124++] = v135;
            }

            while (v18 != v124);
          }
        }

        v14 = (v14 + v324);
        v16 = v75 - 1;
      }

      while (v75);
    }

    else if (v10)
    {
      v322 = vdupq_n_s32(v15);
      do
      {
        v183 = v16;
        result = sub_10031F4A8(v326 + 120, v19, v14, a6);
        v184 = *(v19 - 8);
        v185 = *v19;
        v187 = *(v19 + 8);
        v19 += 8;
        v186 = v187;
        if (result <= v17)
        {
          v188 = result;
          v189 = v17 - result;
          result = result;
          if (v189 < 0x1C)
          {
            goto LABEL_110;
          }

          v190 = (v189 >> 2) + 1;
          result = result + 4 * (v190 & 0x7FFFFFFFFFFFFFF8);
          v191 = 2 * v188;
          v192 = 4 * v188;
          v193 = (v184 + 4 * v188);
          v194 = (v185 + v192);
          v195 = (v186 + v192);
          v196 = v190 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v197 = v193[6];
            v198 = v193[7];
            v199 = v193[4];
            v200 = v193[5];
            v201 = v193[2];
            v202 = v193[3];
            v203 = *v193;
            v204 = v193[1];
            v193 += 8;
            v205 = v194[6];
            v206 = v194[7];
            v207 = v194[4];
            v208 = v194[5];
            v209 = v194[2];
            v210 = v194[3];
            v211 = *v194;
            v212 = v194[1];
            v194 += 8;
            v213 = v195[6];
            v214 = v195[7];
            v215 = v195[4];
            v216 = v195[5];
            v217 = v195[2];
            v218 = v195[3];
            v219 = *v195;
            v220 = v195[1];
            v195 += 8;
            v221 = (v14 + v191);
            *v221 = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vsubq_s32(vaddq_s32(v203, v322), vaddq_s32(v211, v211)), v219)), vaddq_s32(vsubq_s32(vaddq_s32(v204, v322), vaddq_s32(v212, v212)), v220));
            v221[1] = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vsubq_s32(vaddq_s32(v201, v322), vaddq_s32(v209, v209)), v217)), vaddq_s32(vsubq_s32(vaddq_s32(v202, v322), vaddq_s32(v210, v210)), v218));
            v191 += 64;
            v221[2] = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vsubq_s32(vaddq_s32(v199, v322), vaddq_s32(v207, v207)), v215)), vaddq_s32(vsubq_s32(vaddq_s32(v200, v322), vaddq_s32(v208, v208)), v216));
            v221[3] = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vsubq_s32(vaddq_s32(v197, v322), vaddq_s32(v205, v205)), v213)), vaddq_s32(vsubq_s32(vaddq_s32(v198, v322), vaddq_s32(v206, v206)), v214));
            v196 -= 8;
          }

          while (v196);
          if (v190 != (v190 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_110:
            v222 = (v184 + 4 * result);
            v223 = (v185 + 4 * result);
            v224 = (v186 + 4 * result);
            v225 = 2 * result;
            do
            {
              v226 = *v222++;
              v227 = v226;
              v228 = *v223++;
              v229 = v228;
              v230 = *v224++;
              *(v14 + v225) = vqmovn_s32(vaddq_s32(vsubq_s32(vaddq_s32(v227, v322), vaddq_s32(v229, v229)), v230));
              result += 4;
              v225 += 8;
            }

            while (result <= v17);
          }
        }

        a6 = v325;
        if (result < v325)
        {
          v231 = v18 - result;
          v232 = result;
          if (v231 <= 7)
          {
            goto LABEL_146;
          }

          v232 = (v231 & 0xFFFFFFFFFFFFFFF8) + result;
          v233 = (v184 + 4 * result);
          v234 = (v185 + 4 * result);
          v235 = (v186 + 4 * result);
          v236 = 2 * result;
          result = v231 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v237 = *v233;
            v238 = v233[1];
            v233 += 2;
            v239 = *v234;
            v240 = v234[1];
            v234 += 2;
            v241 = *v235;
            v242 = v235[1];
            v235 += 2;
            *&v14->i8[v236] = vqmovn_high_s32(vqmovn_s32(vaddq_s32(vsubq_s32(vaddq_s32(v237, v322), vaddq_s32(v239, v239)), v241)), vaddq_s32(vsubq_s32(vaddq_s32(v238, v322), vaddq_s32(v240, v240)), v242));
            v236 += 16;
            result -= 8;
          }

          while (result);
          if (v231 != (v231 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_146:
            do
            {
              v243 = *(v184 + 4 * v232) + v15 - 2 * v185->i32[v232] + *(v186 + 4 * v232);
              if (v243 <= -32768)
              {
                v243 = -32768;
              }

              if (v243 >= 0x7FFF)
              {
                LOWORD(v243) = 0x7FFF;
              }

              v14->i16[v232++] = v243;
            }

            while (v18 != v232);
          }
        }

        v14 = (v14 + v324);
        v16 = v183 - 1;
      }

      while (v183);
    }

    else
    {
      v319 = vdupq_n_s32(v9);
      v323 = vdupq_n_s32(v8);
      v316 = vdupq_n_s32(v15);
      do
      {
        v244 = v16;
        result = sub_10031F4A8(v326 + 120, v19, v14, a6);
        v245 = *(v19 - 8);
        v246 = *v19;
        v248 = *(v19 + 8);
        v19 += 8;
        v247 = v248;
        if (result <= v17)
        {
          v249 = result;
          v250 = v17 - result;
          result = result;
          if (v250 <= 0x1B)
          {
            goto LABEL_130;
          }

          v251 = (v250 >> 2) + 1;
          result = result + 4 * (v251 & 0x7FFFFFFFFFFFFFF8);
          v252 = 2 * v249;
          v253 = 4 * v249;
          v254 = (v245 + 4 * v249);
          v255 = (v247 + v253);
          v256 = (v246 + v253);
          v257 = v251 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v258 = v254[6];
            v259 = v254[7];
            v260 = v254[4];
            v261 = v254[5];
            v262 = v254[2];
            v263 = v254[3];
            v264 = *v254;
            v265 = v254[1];
            v254 += 8;
            v266 = v255[6];
            v267 = v255[7];
            v268 = v255[4];
            v269 = v255[5];
            v270 = v255[2];
            v271 = v255[3];
            v272 = *v255;
            v273 = v255[1];
            v255 += 8;
            v274 = vaddq_s32(v273, v265);
            v275 = vaddq_s32(v272, v264);
            v276 = vaddq_s32(v271, v263);
            v277 = vaddq_s32(v270, v262);
            v278 = vaddq_s32(v269, v261);
            v279 = vaddq_s32(v268, v260);
            v280 = vaddq_s32(v267, v259);
            v281 = vaddq_s32(v266, v258);
            v282 = v256[6];
            v283 = v256[7];
            v284 = v256[4];
            v285 = v256[5];
            v286 = v256[2];
            v287 = v256[3];
            v288 = *v256;
            v289 = v256[1];
            v256 += 8;
            v290 = (v14 + v252);
            *v290 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(vmlaq_s32(v316, v288, v319), v275, v323)), vmlaq_s32(vmlaq_s32(v316, v289, v319), v274, v323));
            v290[1] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(vmlaq_s32(v316, v286, v319), v277, v323)), vmlaq_s32(vmlaq_s32(v316, v287, v319), v276, v323));
            v252 += 64;
            v290[2] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(vmlaq_s32(v316, v284, v319), v279, v323)), vmlaq_s32(vmlaq_s32(v316, v285, v319), v278, v323));
            v290[3] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(vmlaq_s32(v316, v282, v319), v281, v323)), vmlaq_s32(vmlaq_s32(v316, v283, v319), v280, v323));
            v257 -= 8;
          }

          while (v257);
          if (v251 != (v251 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_130:
            v291 = (v245 + 4 * result);
            v292 = (v247 + 4 * result);
            v293 = (v246 + 4 * result);
            v294 = 2 * result;
            do
            {
              v295 = *v291++;
              v296 = v295;
              v297 = *v292++;
              v298 = vaddq_s32(v297, v296);
              v299 = *v293++;
              *(v14 + v294) = vqmovn_s32(vmlaq_s32(vmlaq_s32(v316, v299, v319), v298, v323));
              result += 4;
              v294 += 8;
            }

            while (result <= v17);
          }
        }

        a6 = v325;
        if (result < v325)
        {
          v300 = v18 - result;
          v301 = result;
          if (v300 <= 7)
          {
            goto LABEL_147;
          }

          v301 = (v300 & 0xFFFFFFFFFFFFFFF8) + result;
          v302 = (v245 + 4 * result);
          v303 = (v247 + 4 * result);
          v304 = (v246 + 4 * result);
          v305 = 2 * result;
          result = v300 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v306 = *v302;
            v307 = v302[1];
            v302 += 2;
            v308 = *v303;
            v309 = v303[1];
            v303 += 2;
            v310 = vaddq_s32(v309, v307);
            v311 = vaddq_s32(v308, v306);
            v312 = *v304;
            v313 = v304[1];
            v304 += 2;
            *&v14->i8[v305] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(vmlaq_s32(v316, v312, v319), v311, v323)), vmlaq_s32(vmlaq_s32(v316, v313, v319), v310, v323));
            v305 += 16;
            result -= 8;
          }

          while (result);
          if (v300 != (v300 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_147:
            do
            {
              v314 = v15 + v246->i32[v301] * v9 + (*(v247 + 4 * v301) + *(v245 + 4 * v301)) * v8;
              if (v314 <= -32768)
              {
                v314 = -32768;
              }

              if (v314 >= 0x7FFF)
              {
                LOWORD(v314) = 0x7FFF;
              }

              v14->i16[v301++] = v314;
            }

            while (v18 != v301);
          }
        }

        v14 = (v14 + v324);
        v16 = v244 - 1;
      }

      while (v244);
    }
  }

  return result;
}