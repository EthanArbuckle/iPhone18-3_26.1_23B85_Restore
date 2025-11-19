uint64_t sub_100341DFC(uint64_t a1)
{
  *a1 = off_10047A578;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_100341F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A5B8;
  v19 = *a2;
  v20 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v20;
  *(a1 + 40) = *(a2 + 32);
  v21 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v21;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v19) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v24 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v25 = *(a3 + 32);
  v27 = *(a3 + 48);
  v26 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v25;
  *(a1 + 152) = v27;
  *(a1 + 160) = v26;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v24;
  if (v26)
  {
    atomic_fetch_add((v26 + 20), 1u);
    if (*(a3 + 4) <= 2)
    {
LABEL_8:
      v28 = *(a3 + 72);
      v29 = *(a1 + 176);
      *v29 = *v28;
      v29[1] = v28[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v24) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 108) = 0;
  sub_100269B58(a1 + 104, a3);
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = *a8;
  *(a1 + 240) = *a9;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 256) = a12;
  if (a10 >= 17)
  {
    v32[0] = 0;
    v32[1] = 0;
    v30 = sub_1002A80E0(v32, 18);
    *(v30 + 16) = 17754;
    *v30 = *"ksize <= MAX_ESIZE";
    sub_1002A8980(-215, v32, "resizeGeneric_Invoker", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2211);
  }

  return a1;
}

void sub_100342148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_10034219C(uint64_t a1)
{
  sub_100342CD8(a1);

  operator delete();
}

_DWORD *sub_1003421D4(_DWORD *result, int *a2, double a3, float32x4_t a4, float32x4_t a5)
{
  v5 = result;
  v6 = result[2];
  v7 = (result[60] + 15) & 0xFFFFFFF0;
  LODWORD(v8) = result[62];
  if ((v8 * v7) >= 0x109)
  {
    operator new[]();
  }

  v9.i64[0] = 0;
  memset(v83, 0, 128);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  if (v8 >= 1)
  {
    result = memset(__b, 255, 4 * v8);
    v10 = v7;
    if (v8 == 1)
    {
      v11 = 0;
LABEL_9:
      v15 = &v71[v11 * v7];
      v16 = &v75 + v11;
      v17 = v8 - v11;
      do
      {
        *v16++ = v15;
        v15 = (v15 + v10 * 4);
        --v17;
      }

      while (v17);
      goto LABEL_11;
    }

    v11 = v8 & 0x7FFFFFFE;
    v12 = &v75 + 1;
    v13 = v11;
    v14 = v71;
    do
    {
      *(v12 - 1) = v14;
      *v12 = &v14[v10];
      v14 += 2 * v7;
      v12 += 2;
      v13 -= 2;
    }

    while (v13);
    if (v11 != v8)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v18 = *a2;
  if (v18 < a2[1])
  {
    v62 = ((v6 >> 3) & 0x1FF) + 1;
    v19 = *(v5 + 28) + 4 * v18 * v8;
    while (1)
    {
      if (v8 < 1)
      {
        goto LABEL_40;
      }

      v20 = 0;
      LODWORD(v21) = 0;
      v69 = v18;
      v22 = (*(*(v5 + 26) + 4 * v18) - (v8 >> 1) + 1);
      v23 = v8;
      do
      {
        v25 = v5[59];
        if ((v20 + v22) >= v25)
        {
          v26 = v25 - 1;
        }

        else
        {
          v26 = v20 + v22;
        }

        if ((v20 + v22) >= 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        if (v21 <= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v21;
        }

        if (v21 < v8)
        {
          while (v21 > 0xF || v27 != __b[v21])
          {
            if (++v21 >= v8)
            {
              goto LABEL_16;
            }
          }

          if (v21 > v20)
          {
            memcpy(*(&v75 + v20), *(&v75 + v21), 4 * v7);
            LODWORD(v8) = v5[62];
          }
        }

LABEL_16:
        if (v20 >= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v20;
        }

        if (v21 == v8)
        {
          v23 = v24;
        }

        v83[v20] = *(v5 + 3) + **(v5 + 10) * v27;
        __b[v20++] = v27;
      }

      while (v20 < v8);
      v28 = v5[60];
      if (v8 > v23)
      {
        break;
      }

      v18 = v69;
LABEL_42:
      v29 = *(v5 + 15);
      v30 = *(v5 + 23);
      v9.i32[0] = *v19;
      v70 = *v9.f32;
      v68 = *(v19 + 4);
      v9.i32[0] = *(v19 + 8);
      v67 = *v9.f32;
      v9.i32[0] = *(v19 + 12);
      v66 = *v9.f32;
      v64 = *(&v75 + 1);
      v65 = v75;
      v31 = v76;
      result = sub_10034298C(&v73, &v75, (v29 + v30 * v18), v19, v28);
      if (result < v28)
      {
        v32 = v28 - result;
        v33 = result;
        if (v32 < 4)
        {
          goto LABEL_47;
        }

        v9 = vdupq_lane_s32(v70, 0);
        a4 = vdupq_lane_s32(v67, 0);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + result;
        a5 = vdupq_lane_s32(v66, 0);
        v34 = (v65 + 4 * result);
        v35 = (v64 + 4 * result);
        v36 = (v31 + 4 * result);
        v37 = (*(&v31 + 1) + 4 * result);
        v38 = (v29 + v30 * v18 + 2 * result);
        v39 = v32 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v40 = *v34++;
          v41 = v40;
          v42 = *v35++;
          v43 = vmlaq_f32(vmulq_n_f32(v42, v68), v9, v41);
          v44 = *v36++;
          v45 = vmlaq_f32(v43, a4, v44);
          v46 = *v37++;
          v47 = vmlaq_f32(v45, a5, v46);
          *v38++ = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL))))));
          v39 -= 4;
        }

        while (v39);
        if (v32 != (v32 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_47:
          v48 = v28 - v33;
          v49 = (v29 + v30 * v18 + 2 * v33);
          v50 = 4 * v33;
          v51 = (*(&v31 + 1) + 4 * v33);
          v52 = (v31 + v50);
          v53 = (v64 + v50);
          v54 = (v65 + v50);
          do
          {
            v55 = *v53++;
            v56 = v55;
            v57 = *v54++;
            v58 = (v68 * v56) + (v57 * *v70.i32);
            v59 = *v52++;
            a4.i32[0] = v59;
            v60 = *v51++;
            a5.f32[0] = v60;
            v9.f32[0] = rintf((v58 + (a4.f32[0] * *v67.i32)) + (v60 * *v66.i32));
            v61 = v9.f32[0];
            if (v9.f32[0] <= -32768)
            {
              LODWORD(v61) = -32768;
            }

            if (v61 >= 0x7FFF)
            {
              LOWORD(v61) = 0x7FFF;
            }

            *v49++ = v61;
            --v48;
          }

          while (v48);
        }
      }

      ++v18;
      v8 = v5[62];
      v19 += 4 * v8;
      if (v18 >= a2[1])
      {
        return result;
      }
    }

    sub_1003426F0(*v9.i64, *a4.i64, *a5.i64, &v72, &v83[v23], &v75 + 8 * v23, v8 - v23, *(v5 + 25), *(v5 + 27), v5[58], v28, v62, v5[63], v5[64]);
    v18 = v69;
LABEL_40:
    v28 = v5[60];
    goto LABEL_42;
  }

  return result;
}

void sub_1003426BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a26 != a11)
  {
    if (a26)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1003426F0(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, unsigned int a12, int a13, int a14)
{
  if (a7 >= 1)
  {
    v14 = 0;
    v15 = 2 * a12;
    if (a12 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a12;
    }

    v17 = a7;
    do
    {
      LODWORD(v18) = 0;
      v19 = *(a5 + 8 * v14);
      v20 = *(a6 + 8 * v14);
      v21 = a13;
      while (1)
      {
        if (v18 < v21)
        {
          v18 = v18;
          do
          {
            v24 = *(a8 + 4 * v18);
            v25 = v24 - a12;
            v26 = v24 - a12;
            if (v24 - a12 >= a10)
            {
              v27 = (v25 & ~(v25 >> 31)) + a12 - v24;
              v28 = (v27 - (v27 != 0)) / v16;
              if ((v25 & ~(v25 >> 31)) + a12 - v24)
              {
                ++v28;
              }

              v26 = v24 + v28 * a12;
              do
              {
                v26 -= a12;
              }

              while (v26 >= a10);
            }

            v29 = *(a8 + 4 * v18);
            if (v24 >= a10)
            {
              v29 = v24 + a12 + a12 * ((v24 >> 31) + ((v24 & ~(v24 >> 31)) - (v24 + (v24 >> 31))) / v16);
              do
              {
                v29 -= a12;
              }

              while (v29 >= a10);
            }

            v30 = v24 + a12;
            v31 = v15 + v25;
            if (v15 + v25 >= a10)
            {
              v31 = v24 + a12 * ((v30 >> 31) + ((v30 & ~(v30 >> 31)) - (v30 + (v30 >> 31))) / v16 + 2);
              do
              {
                v31 -= a12;
              }

              while (v31 >= a10);
            }

            v32 = 3 * a12 + v25;
            if (v32 >= a10)
            {
              v32 = v24 + a12 * ((((v30 + a12) & ~((v30 + a12) >> 31)) - (v30 + a12 + ((v30 + a12) >> 31))) / v16 + ((v30 + a12) >> 31) + 3);
              do
              {
                v32 -= a12;
              }

              while (v32 >= a10);
            }

            LOWORD(a2) = *(v19 + 2 * v26);
            *&a2 = vmovl_s16(*&a2).u64[0];
            LODWORD(a3) = *a9;
            LOWORD(a3) = *(v19 + 2 * v29);
            v22 = vmovl_s16(*&a3).u64[0];
            *v22.i32 = v22.i32[0];
            *&a2 = ((SLODWORD(a2) * *a9) + 0.0) + (*v22.i32 * *(a9 + 4));
            v22.i16[0] = *(v19 + 2 * v31);
            v23 = vmovl_s16(v22).u64[0];
            *v23.i32 = v23.i32[0];
            *&a2 = *&a2 + (*v23.i32 * *(a9 + 8));
            v23.i16[0] = *(v19 + 2 * v32);
            *&a3 = vmovl_s16(v23).u64[0];
            *&a3 = SLODWORD(a3);
            *&a2 = *&a2 + (*&a3 * *(a9 + 12));
            *(v20 + 4 * v18++) = LODWORD(a2);
            a9 += 16;
          }

          while (v18 != v21);
          LODWORD(v18) = v21;
        }

        if (v21 == a11)
        {
          break;
        }

        v21 = a11;
        if (v18 < a14)
        {
          v33 = v18;
          v34 = 4 * v18;
          v35 = (a8 + v34);
          v36 = (v20 + v34);
          v37 = a14 - v33;
          do
          {
            v38 = *v35++;
            LOWORD(a2) = *(v19 + 2 * (v38 - a12));
            *&a2 = vmovl_s16(*&a2).u64[0];
            LOWORD(a3) = *(v19 + 2 * v38);
            v39 = vmovl_s16(*&a3).u64[0];
            *v39.i32 = *(a9 + 4) * v39.i32[0];
            *&a2 = *v39.i32 + (SLODWORD(a2) * *a9);
            v39.i16[0] = *(v19 + 2 * (v38 + a12));
            v40 = vmovl_s16(v39).u64[0];
            *v40.i32 = v40.i32[0];
            *&a2 = *&a2 + (*v40.i32 * *(a9 + 8));
            v40.i16[0] = *(v19 + 2 * (v38 + v15));
            *&a3 = vmovl_s16(v40).u64[0];
            *&a3 = SLODWORD(a3);
            *&a2 = *&a2 + (*&a3 * *(a9 + 12));
            *v36++ = LODWORD(a2);
            a9 += 16;
            --v37;
          }

          while (v37);
          LODWORD(v18) = a14;
          v21 = a11;
        }
      }

      a9 += -16 * a11;
      ++v14;
    }

    while (v14 != v17);
  }
}

uint64_t sub_10034298C(uint64_t a1, float32x4_t **a2, int16x8_t *a3, const float *a4, int a5)
{
  v7 = vld1q_dup_f32(a4);
  v6 = a4 + 1;
  result = 0;
  v9 = a5 - 8;
  if (a5 >= 8)
  {
    v10 = vld1q_dup_f32(v6);
    v11 = a4 + 2;
    v12 = vld1q_dup_f32(v11);
    v13 = a4 + 3;
    v14 = a2[3] + 1;
    v15 = a2[2] + 1;
    v16 = vld1q_dup_f32(v13);
    v17 = a2[1] + 1;
    v18 = *a2 + 1;
    v19 = &off_1004B0000;
    v20 = &off_1004B0000;
    do
    {
      v21 = v18[-1];
      v22 = *v18;
      v24 = v17[-1];
      v23 = *v17;
      v26 = v15[-1];
      v25 = *v15;
      v28 = v14[-1];
      v27 = *v14;
      if (atomic_load_explicit(qword_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(&qword_1004B00A0, memory_order_acquire))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v109 = a3;
        v89 = result;
        v105 = v9;
        v85 = v14;
        v97 = v17;
        v101 = v15;
        v93 = v18;
        v77 = v10;
        v81 = v7;
        v69 = v16;
        v73 = v12;
        v61 = v22;
        v65 = v21;
        v53 = v25;
        v57 = v23;
        v45 = v24;
        v49 = v27;
        v37 = v28;
        v41 = v26;
        sub_1003C8444();
        v28 = v37;
        v26 = v41;
        v24 = v45;
        v27 = v49;
        v25 = v53;
        v23 = v57;
        v22 = v61;
        v21 = v65;
        v16 = v69;
        v12 = v73;
        v10 = v77;
        v7 = v81;
        v20 = &off_1004B0000;
        v19 = &off_1004B0000;
        v18 = v93;
        v17 = v97;
        v15 = v101;
        v14 = v85;
        v9 = v105;
        LODWORD(result) = v89;
        a3 = v109;
        if (atomic_load_explicit(&qword_1004B00A0, memory_order_acquire))
        {
LABEL_5:
          v29 = v19[9];
          v30 = v20[7];
          if (atomic_load_explicit(qword_1004B0080, memory_order_acquire))
          {
            goto LABEL_6;
          }

          goto LABEL_11;
        }
      }

      v110 = a3;
      v90 = result;
      v106 = v9;
      v86 = v14;
      v98 = v17;
      v102 = v15;
      v94 = v18;
      v78 = v10;
      v82 = v7;
      v70 = v16;
      v74 = v12;
      v62 = v22;
      v66 = v21;
      v54 = v25;
      v58 = v23;
      v46 = v24;
      v50 = v27;
      v38 = v28;
      v42 = v26;
      sub_1003C848C();
      v28 = v38;
      v26 = v42;
      v24 = v46;
      v27 = v50;
      v25 = v54;
      v23 = v58;
      v22 = v62;
      v21 = v66;
      v16 = v70;
      v12 = v74;
      v10 = v78;
      v7 = v82;
      v20 = &off_1004B0000;
      v19 = &off_1004B0000;
      v18 = v94;
      v17 = v98;
      v15 = v102;
      v14 = v86;
      v9 = v106;
      LODWORD(result) = v90;
      a3 = v110;
      v29 = xmmword_1004B0090;
      v30 = xmmword_1004B0070;
      if (atomic_load_explicit(qword_1004B0080, memory_order_acquire))
      {
LABEL_6:
        if ((atomic_load_explicit(&qword_1004B00A0, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

LABEL_11:
      v111 = a3;
      v91 = result;
      v107 = v9;
      v87 = v14;
      v99 = v17;
      v103 = v15;
      v95 = v18;
      v79 = v10;
      v83 = v7;
      v71 = v16;
      v75 = v12;
      v63 = v22;
      v67 = v21;
      v55 = v25;
      v59 = v23;
      v47 = v24;
      v51 = v27;
      v39 = v28;
      v43 = v26;
      v33 = v30;
      v35 = v29;
      sub_1003C8444();
      v30 = v33;
      v29 = v35;
      v28 = v39;
      v26 = v43;
      v24 = v47;
      v27 = v51;
      v25 = v55;
      v23 = v59;
      v22 = v63;
      v21 = v67;
      v16 = v71;
      v12 = v75;
      v10 = v79;
      v7 = v83;
      v20 = &off_1004B0000;
      v19 = &off_1004B0000;
      v18 = v95;
      v17 = v99;
      v15 = v103;
      v14 = v87;
      v9 = v107;
      LODWORD(result) = v91;
      a3 = v111;
      if ((atomic_load_explicit(&qword_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_12:
        v112 = a3;
        v92 = result;
        v108 = v9;
        v88 = v14;
        v100 = v17;
        v104 = v15;
        v96 = v18;
        v80 = v10;
        v84 = v7;
        v72 = v16;
        v76 = v12;
        v64 = v22;
        v68 = v21;
        v56 = v25;
        v60 = v23;
        v48 = v24;
        v52 = v27;
        v40 = v28;
        v44 = v26;
        v34 = v30;
        v36 = v29;
        sub_1003C848C();
        v30 = v34;
        v29 = v36;
        v28 = v40;
        v26 = v44;
        v24 = v48;
        v27 = v52;
        v25 = v56;
        v23 = v60;
        v22 = v64;
        v21 = v68;
        v16 = v72;
        v12 = v76;
        v10 = v80;
        v7 = v84;
        v20 = &off_1004B0000;
        v19 = &off_1004B0000;
        v18 = v96;
        v17 = v100;
        v15 = v104;
        v14 = v88;
        v9 = v108;
        LODWORD(result) = v92;
        a3 = v112;
      }

LABEL_7:
      v31 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v21), v24, v10), v26, v12), v28, v16);
      v32 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v22), v23, v10), v25, v12), v27, v16);
      *a3++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v31, vorrq_s8(vandq_s8(v30, v31), v29)))), vcvtq_s32_f32(vaddq_f32(v32, vorrq_s8(vandq_s8(v20[7], v32), v19[9]))));
      v14 += 2;
      v15 += 2;
      v17 += 2;
      v18 += 2;
      result = (result + 8);
    }

    while (v9 >= result);
  }

  return result;
}

uint64_t sub_100342CD8(uint64_t a1)
{
  *a1 = off_10047A5B8;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_100342E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A5F8;
  v19 = *a2;
  v20 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v20;
  *(a1 + 40) = *(a2 + 32);
  v21 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v21;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v19) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v24 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v25 = *(a3 + 32);
  v27 = *(a3 + 48);
  v26 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v25;
  *(a1 + 152) = v27;
  *(a1 + 160) = v26;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v24;
  if (v26)
  {
    atomic_fetch_add((v26 + 20), 1u);
    if (*(a3 + 4) <= 2)
    {
LABEL_8:
      v28 = *(a3 + 72);
      v29 = *(a1 + 176);
      *v29 = *v28;
      v29[1] = v28[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v24) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 108) = 0;
  sub_100269B58(a1 + 104, a3);
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = *a8;
  *(a1 + 240) = *a9;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 256) = a12;
  if (a10 >= 17)
  {
    v32[0] = 0;
    v32[1] = 0;
    v30 = sub_1002A80E0(v32, 18);
    *(v30 + 16) = 17754;
    *v30 = *"ksize <= MAX_ESIZE";
    sub_1002A8980(-215, v32, "resizeGeneric_Invoker", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2211);
  }

  return a1;
}

void sub_100343024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_100343078(uint64_t a1)
{
  sub_10034388C(a1);

  operator delete();
}

void sub_1003430B0(uint64_t a1, int *a2, double a3, double a4, double a5, double a6)
{
  v7 = *(a1 + 8);
  v8 = (*(a1 + 240) + 15) & 0xFFFFFFF0;
  LODWORD(v9) = *(a1 + 248);
  if ((v9 * v8) >= 0x109)
  {
    operator new[]();
  }

  memset(v92, 0, 128);
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  if (v9 >= 1)
  {
    memset(__b, 255, 4 * v9);
    v10 = v8;
    if (v9 == 1)
    {
      v11 = 0;
LABEL_9:
      v15 = &v81[v11 * v8];
      v16 = &v84.i64[v11];
      v17 = v9 - v11;
      do
      {
        *v16++ = v15;
        v15 = (v15 + v10 * 4);
        --v17;
      }

      while (v17);
      goto LABEL_11;
    }

    v11 = v9 & 0x7FFFFFFE;
    v12 = &v84.i64[1];
    v13 = v11;
    v14 = v81;
    do
    {
      *(v12 - 1) = v14;
      *v12 = &v14[v10];
      v14 += 2 * v8;
      v12 += 2;
      v13 -= 2;
    }

    while (v13);
    if (v11 != v9)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v18 = *a2;
  if (v18 < a2[1])
  {
    v19 = (*(a1 + 224) + 4 * v18 * v9);
    __n = 4 * v8;
    v20 = vdupq_n_s64(0x20uLL);
    v77 = v20;
    while (1)
    {
      if (v9 < 1)
      {
        goto LABEL_40;
      }

      v21 = 0;
      LODWORD(v22) = 0;
      v79 = v18;
      v23 = (*(*(a1 + 208) + 4 * v18) - (v9 >> 1) + 1);
      v24 = v9;
      do
      {
        v26 = *(a1 + 236);
        if ((v21 + v23) >= v26)
        {
          v27 = v26 - 1;
        }

        else
        {
          v27 = v21 + v23;
        }

        if ((v21 + v23) >= 0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        if (v22 <= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v22;
        }

        if (v22 < v9)
        {
          while (v22 > 0xF || v28 != __b[v22])
          {
            if (++v22 >= v9)
            {
              goto LABEL_16;
            }
          }

          if (v22 > v21)
          {
            memcpy(v84.i64[v21], v84.i64[v22], __n);
            LODWORD(v9) = *(a1 + 248);
          }
        }

LABEL_16:
        if (v21 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v21;
        }

        if (v22 == v9)
        {
          v24 = v25;
        }

        v92[v21] = *(a1 + 24) + **(a1 + 80) * v28;
        __b[v21++] = v28;
      }

      while (v21 < v9);
      v29 = *(a1 + 240);
      if (v9 > v24)
      {
        break;
      }

      v18 = v79;
LABEL_42:
      v30 = *(a1 + 120);
      v31 = *(a1 + 184);
      v20.i32[0] = *v19;
      LODWORD(a4) = v19[1];
      LODWORD(a5) = v19[2];
      LODWORD(a6) = v19[3];
      v33 = v84;
      v32 = v85;
      v34 = vdupq_lane_s32(*&a5, 0);
      v35 = vdupq_lane_s32(*&a6, 0);
      if (v29 >= 8)
      {
        v36 = 0;
        v37 = (v84.i64[0] + 16);
        v38 = vdupq_lane_s32(*&a4, 0);
        v39 = (v30 + v31 * v18 + 16);
        v40 = (v84.i64[1] + 16);
        v41 = (v85.i64[1] + 16);
        v42 = (v85.i64[0] + 16);
        do
        {
          v39[-1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v37[-1], *v20.i32), v40[-1], v38), v42[-1], v34), v41[-1], v35);
          v43 = *v37;
          v37 += 2;
          v44 = vmulq_n_f32(v43, *v20.i32);
          v45 = *v40;
          v40 += 2;
          v46 = vmlaq_f32(v44, v45, v38);
          v47 = *v42;
          v42 += 2;
          v48 = vmlaq_f32(v46, v47, v34);
          v49 = *v41;
          v41 += 2;
          v36 += 8;
          *v39 = vmlaq_f32(v48, v49, v35);
          v39 += 2;
        }

        while (v36 <= (v29 - 8));
        if (v36 < v29)
        {
LABEL_48:
          v50 = v36;
          v51 = v29 - v36;
          if (v51 < 8)
          {
            goto LABEL_53;
          }

          v52 = vdupq_n_s64(v31 * v18 + v30);
          if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(v77, vsubq_s64(v52, v33)), vcgtq_u64(v77, vsubq_s64(v52, v32))))))
          {
            goto LABEL_53;
          }

          v53 = vdupq_lane_s32(*v20.i8, 0);
          v54 = (v51 & 0xFFFFFFFFFFFFFFF8) + v50;
          v55 = 4 * v50;
          v56 = (v30 + 4 * v50 + v31 * v18 + 16);
          v57 = (v33.i64[0] + v55 + 16);
          v58 = (v32.i64[1] + v55 + 16);
          v59 = (v33.i64[1] + v55 + 16);
          v60 = (v32.i64[0] + v55 + 16);
          v61 = v51 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v62 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*v59, *&a4), v53, *v57), v34, *v60), v35, *v58);
            v56[-1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v59[-1], *&a4), v53, v57[-1]), v34, v60[-1]), v35, v58[-1]);
            *v56 = v62;
            v56 += 2;
            v57 += 2;
            v58 += 2;
            v59 += 2;
            v60 += 2;
            v61 -= 8;
          }

          while (v61);
          v50 = v54;
          if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_53:
            v63 = v29 - v50;
            v64 = 4 * v50;
            v65 = (v30 + v64 + v31 * v18);
            v66 = (v32.i64[1] + v64);
            v67 = (v32.i64[0] + v64);
            v68 = (v33.i64[1] + v64);
            v69 = (v33.i64[0] + v64);
            do
            {
              v70 = *v69++;
              v71 = v70;
              v72 = *v68++;
              v73 = (*&a4 * v72) + (v71 * *v20.i32);
              v74 = *v67++;
              v75 = v73 + (v74 * *&a5);
              v76 = *v66++;
              *v65++ = v75 + (v76 * *&a6);
              --v63;
            }

            while (v63);
          }
        }
      }

      else
      {
        LODWORD(v36) = 0;
        if (v29 > 0)
        {
          goto LABEL_48;
        }
      }

      ++v18;
      v9 = *(a1 + 248);
      v19 += v9;
      if (v18 >= a2[1])
      {
        return;
      }
    }

    sub_100343630(&v82, &v92[v24], &v84.i64[v24], v9 - v24, *(a1 + 200), *(a1 + 216), *(a1 + 232), v29, ((v7 >> 3) & 0x1FF) + 1, *(a1 + 252), *(a1 + 256));
    v18 = v79;
LABEL_40:
    v29 = *(a1 + 240);
    goto LABEL_42;
  }
}

void sub_100343630(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, float *a6, unsigned int a7, int a8, unsigned int a9, int a10, int a11)
{
  if (a4 >= 1)
  {
    v11 = 0;
    v12 = 2 * a9;
    if (a9 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a9;
    }

    v14 = a4;
    do
    {
      LODWORD(v15) = 0;
      v16 = *(a2 + 8 * v11);
      v17 = *(a3 + 8 * v11);
      v18 = a10;
      while (1)
      {
        if (v15 < v18)
        {
          v15 = v15;
          do
          {
            v19 = *(a5 + 4 * v15);
            v20 = v19 - a9;
            v21 = v19 - a9;
            if (v19 - a9 >= a7)
            {
              v22 = (v20 & ~(v20 >> 31)) + a9 - v19;
              v23 = (v22 - (v22 != 0)) / v13;
              if ((v20 & ~(v20 >> 31)) + a9 - v19)
              {
                ++v23;
              }

              v21 = v19 + v23 * a9;
              do
              {
                v21 -= a9;
              }

              while (v21 >= a7);
            }

            v24 = *(a5 + 4 * v15);
            if (v19 >= a7)
            {
              v24 = v19 + a9 + a9 * ((v19 >> 31) + ((v19 & ~(v19 >> 31)) - (v19 + (v19 >> 31))) / v13);
              do
              {
                v24 -= a9;
              }

              while (v24 >= a7);
            }

            v25 = v19 + a9;
            v26 = v12 + v20;
            if (v12 + v20 >= a7)
            {
              v26 = v19 + a9 * ((v25 >> 31) + ((v25 & ~(v25 >> 31)) - (v25 + (v25 >> 31))) / v13 + 2);
              do
              {
                v26 -= a9;
              }

              while (v26 >= a7);
            }

            v27 = 3 * a9 + v20;
            if (v27 >= a7)
            {
              v27 = v19 + a9 * ((((v25 + a9) & ~((v25 + a9) >> 31)) - (v25 + a9 + ((v25 + a9) >> 31))) / v13 + ((v25 + a9) >> 31) + 3);
              do
              {
                v27 -= a9;
              }

              while (v27 >= a7);
            }

            *(v17 + 4 * v15++) = ((((*(v16 + 4 * v21) * *a6) + 0.0) + (*(v16 + 4 * v24) * a6[1])) + (*(v16 + 4 * v26) * a6[2])) + (*(v16 + 4 * v27) * a6[3]);
            a6 += 4;
          }

          while (v15 != v18);
          LODWORD(v15) = v18;
        }

        if (v18 == a8)
        {
          break;
        }

        v18 = a8;
        if (v15 < a11)
        {
          v28 = v15;
          v29 = 4 * v15;
          v30 = (a5 + v29);
          v31 = (v17 + v29);
          v32 = a11 - v28;
          do
          {
            v33 = *v30++;
            *v31++ = (((*(v16 + 4 * v33) * a6[1]) + (*(v16 + 4 * (v33 - a9)) * *a6)) + (*(v16 + 4 * (v33 + a9)) * a6[2])) + (*(v16 + 4 * (v33 + v12)) * a6[3]);
            a6 += 4;
            --v32;
          }

          while (v32);
          LODWORD(v15) = a11;
          v18 = a8;
        }
      }

      a6 -= 4 * a8;
      ++v11;
    }

    while (v11 != v14);
  }
}

uint64_t sub_10034388C(uint64_t a1)
{
  *a1 = off_10047A5F8;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_1003439C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A638;
  v19 = *a2;
  v20 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v20;
  *(a1 + 40) = *(a2 + 32);
  v21 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v21;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v19) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v24 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v25 = *(a3 + 32);
  v27 = *(a3 + 48);
  v26 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v25;
  *(a1 + 152) = v27;
  *(a1 + 160) = v26;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v24;
  if (v26)
  {
    atomic_fetch_add((v26 + 20), 1u);
    if (*(a3 + 4) <= 2)
    {
LABEL_8:
      v28 = *(a3 + 72);
      v29 = *(a1 + 176);
      *v29 = *v28;
      v29[1] = v28[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v24) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 108) = 0;
  sub_100269B58(a1 + 104, a3);
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = *a8;
  *(a1 + 240) = *a9;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 256) = a12;
  if (a10 >= 17)
  {
    v32[0] = 0;
    v32[1] = 0;
    v30 = sub_1002A80E0(v32, 18);
    *(v30 + 16) = 17754;
    *v30 = *"ksize <= MAX_ESIZE";
    sub_1002A8980(-215, v32, "resizeGeneric_Invoker", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2211);
  }

  return a1;
}

void sub_100343BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_100343C2C(uint64_t a1)
{
  sub_1003443AC(a1);

  operator delete();
}

void sub_100343C64(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = (*(a1 + 240) + 15) & 0xFFFFFFF0;
  LODWORD(v5) = *(a1 + 248);
  if ((v5 * v4) >= 0x89)
  {
    operator new[]();
  }

  memset(v77, 0, 128);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  if (v5 >= 1)
  {
    memset(__b, 255, 4 * v5);
    v6 = v4;
    if (v5 == 1)
    {
      v7 = 0;
LABEL_9:
      v11 = &v66[v7 * v4];
      v12 = &v69.i64[v7];
      v13 = v5 - v7;
      do
      {
        *v12++ = v11;
        v11 = (v11 + v6 * 8);
        --v13;
      }

      while (v13);
      goto LABEL_11;
    }

    v7 = v5 & 0x7FFFFFFE;
    v8 = &v69.i64[1];
    v9 = v7;
    v10 = v66;
    do
    {
      *(v8 - 1) = v10;
      *v8 = &v10[v6];
      v10 += 2 * v4;
      v8 += 2;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v5)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v14 = *a2;
  if (v14 < a2[1])
  {
    v15 = (*(a1 + 224) + 4 * v14 * v5);
    __n = 8 * v4;
    v62 = vdupq_n_s64(0x20uLL);
    do
    {
      if (v5 >= 1)
      {
        v16 = 0;
        LODWORD(v17) = 0;
        v64 = v14;
        v18 = (*(*(a1 + 208) + 4 * v14) - (v5 >> 1) + 1);
        v19 = v5;
        do
        {
          v21 = *(a1 + 236);
          if ((v16 + v18) >= v21)
          {
            v22 = v21 - 1;
          }

          else
          {
            v22 = v16 + v18;
          }

          if ((v16 + v18) >= 0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          if (v17 <= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v17;
          }

          if (v17 < v5)
          {
            while (v17 > 0xF || v23 != __b[v17])
            {
              if (++v17 >= v5)
              {
                goto LABEL_16;
              }
            }

            if (v17 > v16)
            {
              memcpy(v69.i64[v16], v69.i64[v17], __n);
              LODWORD(v5) = *(a1 + 248);
            }
          }

LABEL_16:
          if (v16 >= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v16;
          }

          if (v17 == v5)
          {
            v19 = v20;
          }

          v77[v16] = *(a1 + 24) + **(a1 + 80) * v23;
          __b[v16++] = v23;
        }

        while (v16 < v5);
        v24 = *(a1 + 240);
        if (v5 <= v19)
        {
          v14 = v64;
          if (v24 < 1)
          {
            goto LABEL_13;
          }

          goto LABEL_43;
        }

        sub_100344138(&v67, &v77[v19], &v69.i64[v19], v5 - v19, *(a1 + 200), *(a1 + 216), *(a1 + 232), v24, ((v3 >> 3) & 0x1FF) + 1, *(a1 + 252), *(a1 + 256));
        v14 = v64;
      }

      v24 = *(a1 + 240);
      if (v24 < 1)
      {
        goto LABEL_13;
      }

LABEL_43:
      v25 = *(a1 + 120);
      v26 = *(a1 + 184);
      *&v27 = *v15;
      v28 = v15[1];
      *&v29 = v15[2];
      *&v30 = v15[3];
      v32 = v69.i64[0];
      v31 = v70.i64[0];
      v33 = v69.i64[1];
      v34 = v70.i64[1];
      if (v24 < 4 || (v35 = vdupq_n_s64(v26 * v14 + v25), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(v62, vsubq_s64(v35, v69)), vcgtq_u64(v62, vsubq_s64(v35, v70))))) & 1) != 0))
      {
        v36 = 0;
      }

      else
      {
        v51 = vdupq_lane_s64(v27, 0);
        v52 = vdupq_lane_s64(v29, 0);
        v36 = v24 & 0x7FFFFFFC;
        v53 = (v69.i64[0] + 16);
        v54 = (v25 + v26 * v14 + 16);
        v55 = vdupq_lane_s64(v30, 0);
        v56 = (v69.i64[1] + 16);
        v57 = (v70.i64[1] + 16);
        v58 = (v70.i64[0] + 16);
        v59 = v36;
        do
        {
          v60 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v56[-1], v28), v51, v53[-1]), v52, v58[-1]), v55, v57[-1]);
          v61 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(*v56, v28), v51, *v53), v52, *v58), v55, *v57);
          v53 += 2;
          v54[-1] = v60;
          *v54 = v61;
          v54 += 2;
          v56 += 2;
          v57 += 2;
          v58 += 2;
          v59 -= 4;
        }

        while (v59);
        if (v36 == v24)
        {
          goto LABEL_13;
        }
      }

      v37 = v24 - v36;
      v38 = 8 * v36;
      v39 = (v25 + v38 + v26 * v14);
      v40 = (v34 + v38);
      v41 = (v31 + v38);
      v42 = (v33 + v38);
      v43 = (v32 + v38);
      do
      {
        v44 = *v43++;
        v45 = v44;
        v46 = *v42++;
        v47 = v46 * v28 + v45 * *&v27;
        v48 = *v41++;
        v49 = v47 + v48 * *&v29;
        v50 = *v40++;
        *v39++ = v49 + v50 * *&v30;
        --v37;
      }

      while (v37);
LABEL_13:
      ++v14;
      v5 = *(a1 + 248);
      v15 += v5;
    }

    while (v14 < a2[1]);
  }
}

void sub_100344138(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, float *a6, unsigned int a7, int a8, unsigned int a9, int a10, int a11)
{
  if (a4 >= 1)
  {
    v11 = 0;
    v12 = 2 * a9;
    if (a9 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a9;
    }

    v14 = a4;
    do
    {
      v15 = 0;
      v16 = *(a2 + 8 * v11);
      v17 = *(a3 + 8 * v11);
      v18 = a10;
      while (1)
      {
        if (v15 < v18)
        {
          v19 = v15;
          do
          {
            v20 = *(a5 + 4 * v19);
            v21 = v20 - a9;
            v22 = v20 - a9;
            if (v20 - a9 >= a7)
            {
              v23 = (v21 & ~(v21 >> 31)) + a9 - v20;
              v24 = (v23 - (v23 != 0)) / v13;
              if ((v21 & ~(v21 >> 31)) + a9 - v20)
              {
                ++v24;
              }

              v22 = v20 + v24 * a9;
              do
              {
                v22 -= a9;
              }

              while (v22 >= a7);
            }

            v25 = *(a5 + 4 * v19);
            if (v20 >= a7)
            {
              v25 = v20 + a9 + a9 * ((v20 >> 31) + ((v20 & ~(v20 >> 31)) - (v20 + (v20 >> 31))) / v13);
              do
              {
                v25 -= a9;
              }

              while (v25 >= a7);
            }

            v26 = v20 + a9;
            v27 = v12 + v21;
            if (v12 + v21 >= a7)
            {
              v27 = v20 + a9 * ((v26 >> 31) + ((v26 & ~(v26 >> 31)) - (v26 + (v26 >> 31))) / v13 + 2);
              do
              {
                v27 -= a9;
              }

              while (v27 >= a7);
            }

            v28 = 3 * a9 + v21;
            if (v28 >= a7)
            {
              v28 = v20 + a9 * ((((v26 + a9) & ~((v26 + a9) >> 31)) - (v26 + a9 + ((v26 + a9) >> 31))) / v13 + ((v26 + a9) >> 31) + 3);
              do
              {
                v28 -= a9;
              }

              while (v28 >= a7);
            }

            *(v17 + 8 * v19++) = *(v16 + 8 * v22) * *a6 + 0.0 + *(v16 + 8 * v25) * a6[1] + *(v16 + 8 * v27) * a6[2] + *(v16 + 8 * v28) * a6[3];
            a6 += 4;
          }

          while (v19 != v18);
          v15 = v18;
        }

        if (v18 == a8)
        {
          break;
        }

        v18 = a8;
        if (v15 < a11)
        {
          v29 = (a5 + 4 * v15);
          v30 = (v17 + 8 * v15);
          v31 = a11 - v15;
          do
          {
            v32 = *v29++;
            *v30++ = *(v16 + 8 * v32) * a6[1] + *(v16 + 8 * (v32 - a9)) * *a6 + *(v16 + 8 * (v32 + a9)) * a6[2] + *(v16 + 8 * (v32 + v12)) * a6[3];
            a6 += 4;
            --v31;
          }

          while (v31);
          v15 = a11;
          v18 = a8;
        }
      }

      a6 -= 4 * a8;
      ++v11;
    }

    while (v11 != v14);
  }
}

uint64_t sub_1003443AC(uint64_t a1)
{
  *a1 = off_10047A638;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_1003444E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A678;
  v19 = *a2;
  v20 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v20;
  *(a1 + 40) = *(a2 + 32);
  v21 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v21;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v19) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v24 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v25 = *(a3 + 32);
  v27 = *(a3 + 48);
  v26 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v25;
  *(a1 + 152) = v27;
  *(a1 + 160) = v26;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v24;
  if (v26)
  {
    atomic_fetch_add((v26 + 20), 1u);
    if (*(a3 + 4) <= 2)
    {
LABEL_8:
      v28 = *(a3 + 72);
      v29 = *(a1 + 176);
      *v29 = *v28;
      v29[1] = v28[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v24) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 108) = 0;
  sub_100269B58(a1 + 104, a3);
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = *a8;
  *(a1 + 240) = *a9;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 256) = a12;
  if (a10 >= 17)
  {
    v32[0] = 0;
    v32[1] = 0;
    v30 = sub_1002A80E0(v32, 18);
    *(v30 + 16) = 17754;
    *v30 = *"ksize <= MAX_ESIZE";
    sub_1002A8980(-215, v32, "resizeGeneric_Invoker", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2211);
  }

  return a1;
}

void sub_1003446F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_10034474C(uint64_t a1)
{
  sub_100345188(a1);

  operator delete();
}

_DWORD *sub_100344784(_DWORD *result, int *a2)
{
  v2 = result;
  v3 = result[2];
  v4 = (result[60] + 15) & 0xFFFFFFF0;
  LODWORD(v5) = result[62];
  if ((v5 * v4) >= 0x109)
  {
    operator new[]();
  }

  memset(v33, 0, 128);
  memset(v32, 0, sizeof(v32));
  if (v5 >= 1)
  {
    result = memset(__b, 255, 4 * v5);
    v6 = v4;
    if (v5 == 1)
    {
      v7 = 0;
LABEL_9:
      v11 = &v28[v7 * v4];
      v12 = &v32[v7];
      v13 = v5 - v7;
      do
      {
        *v12++ = v11;
        v11 = (v11 + v6 * 4);
        --v13;
      }

      while (v13);
      goto LABEL_11;
    }

    v7 = v5 & 0x7FFFFFFE;
    v8 = &v32[1];
    v9 = v7;
    v10 = v28;
    do
    {
      *(v8 - 1) = v10;
      *v8 = &v10[v6];
      v10 += 2 * v4;
      v8 += 2;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v5)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v14 = *a2;
  if (v14 < a2[1])
  {
    v15 = (*(v2 + 28) + 2 * v14 * v5);
    v25 = ((v3 >> 3) & 0x1FF) + 1;
    do
    {
      if (v5 >= 1)
      {
        v27 = v15;
        v16 = 0;
        LODWORD(v17) = 0;
        v18 = (*(*(v2 + 26) + 4 * v14) - (v5 >> 1) + 1);
        v19 = v5;
        do
        {
          v21 = v2[59];
          if ((v16 + v18) >= v21)
          {
            v22 = v21 - 1;
          }

          else
          {
            v22 = v16 + v18;
          }

          if ((v16 + v18) >= 0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          if (v17 <= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v17;
          }

          if (v17 < v5)
          {
            while (v17 > 0xF || v23 != __b[v17])
            {
              if (++v17 >= v5)
              {
                goto LABEL_15;
              }
            }

            if (v17 > v16)
            {
              memcpy(v32[v16], v32[v17], 4 * v4);
              LODWORD(v5) = v2[62];
            }
          }

LABEL_15:
          if (v16 >= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v16;
          }

          if (v17 == v5)
          {
            v19 = v20;
          }

          v33[v16] = *(v2 + 3) + **(v2 + 10) * v23;
          __b[v16++] = v23;
        }

        while (v16 < v5);
        v24 = v2[60];
        if (v5 <= v19)
        {
          v15 = v27;
          goto LABEL_41;
        }

        sub_100344B30(&v30, &v33[v19], &v32[v19], v5 - v19, *(v2 + 25), *(v2 + 27), v2[58], v24, v25, v2[63], v2[64]);
        v15 = v27;
      }

      v24 = v2[60];
LABEL_41:
      result = sub_100344FA0(&v29, v32, *(v2 + 15) + *(v2 + 23) * v14++, v15, v24);
      v5 = v2[62];
      v15 += v5;
    }

    while (v14 < a2[1]);
  }

  return result;
}

void sub_100344AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_100344B30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 *a6, unsigned int a7, int a8, signed int a9, int a10, int a11)
{
  if (a4 >= 1)
  {
    v11 = 0;
    v12 = 2 * a9;
    v13 = 4 * a9;
    v14 = a11;
    v15 = 3 * a9;
    v70 = -3 * a9;
    if (a9 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a9;
    }

    v65 = -8 * a8;
    v68 = a8;
    v73 = 4 * a9;
    do
    {
      v17 = 0;
      v18 = *(a2 + 8 * v11);
      v67 = v11;
      v74 = *(a3 + 8 * v11);
      v19 = a10;
      while (1)
      {
        if (v17 < v19)
        {
          v20 = v17;
          v69 = v19;
          v72 = v19;
          do
          {
            v21 = *(a5 + 4 * v20);
            v22 = v70 + v21;
            v23 = v15 - v21;
            v24 = v70 + v21;
            if (v70 + v21 >= a7)
            {
              v25 = ((v22 & ~(v22 >> 31)) + v23 - ((v22 & ~(v22 >> 31)) + v23 != 0)) / v16;
              if ((v22 & ~(v22 >> 31)) + v23)
              {
                ++v25;
              }

              v24 = v21 + a9 * (v25 - 2);
              do
              {
                v24 -= a9;
              }

              while (v24 >= a7);
            }

            v26 = v22 + a9;
            v27 = v23 - a9;
            v28 = v21 - v12;
            if (v21 - v12 >= a7)
            {
              v29 = ((v26 & ~(v26 >> 31)) + v27 - ((v26 & ~(v26 >> 31)) + v27 != 0)) / v16;
              if ((v26 & ~(v26 >> 31)) + v27)
              {
                ++v29;
              }

              v28 = v21 + a9 * (v29 - 1);
              do
              {
                v28 -= a9;
              }

              while (v28 >= a7);
            }

            v30 = v26 + a9;
            v31 = v27 - a9;
            v32 = v21 - a9;
            if (v21 - a9 >= a7)
            {
              v33 = ((v30 & ~(v30 >> 31)) + v31 - ((v30 & ~(v30 >> 31)) + v31 != 0)) / v16;
              if ((v30 & ~(v30 >> 31)) + v31)
              {
                ++v33;
              }

              v32 = v21 + v33 * a9;
              do
              {
                v32 -= a9;
              }

              while (v32 >= a7);
            }

            v34 = v30 + a9;
            v35 = v31 - a9;
            v36 = *(a5 + 4 * v20);
            if (v21 >= a7)
            {
              v37 = ((v34 & ~(v34 >> 31)) + v35 - ((v34 & ~(v34 >> 31)) + v35 != 0)) / v16;
              if ((v34 & ~(v34 >> 31)) + v35)
              {
                ++v37;
              }

              v36 = v21 + a9 + a9 * v37;
              do
              {
                v36 -= a9;
              }

              while (v36 >= a7);
            }

            v38 = v34 + a9;
            v39 = v35 - a9;
            v40 = v21 + a9;
            if (v21 + a9 >= a7)
            {
              v41 = ((v38 & ~(v38 >> 31)) + v39 - ((v38 & ~(v38 >> 31)) + v39 != 0)) / v16;
              if ((v38 & ~(v38 >> 31)) + v39)
              {
                ++v41;
              }

              v40 = v21 + a9 * (v41 + 2);
              do
              {
                v40 -= a9;
              }

              while (v40 >= a7);
            }

            v42 = v38 + a9;
            v43 = v39 - a9;
            v44 = v12 + v21;
            if (v12 + v21 >= a7)
            {
              v45 = ((v42 & ~(v42 >> 31)) + v43 - ((v42 & ~(v42 >> 31)) + v43 != 0)) / v16;
              if ((v42 & ~(v42 >> 31)) + v43)
              {
                ++v45;
              }

              v44 = v21 + a9 * (v45 + 3);
              do
              {
                v44 -= a9;
              }

              while (v44 >= a7);
            }

            v46 = *(v18 + v24);
            v47 = *(v18 + v28);
            v48 = *(v18 + v32);
            v49 = *(v18 + v36);
            v50 = v42 + a9;
            v51 = *(v18 + v44);
            v52 = v43 - a9;
            v53 = v15 + v21;
            if (v15 + v21 >= a7)
            {
              v54 = ((v50 & ~(v50 >> 31)) + v52 - ((v50 & ~(v50 >> 31)) + v52 != 0)) / v16;
              if ((v50 & ~(v50 >> 31)) + v52)
              {
                ++v54;
              }

              v53 = v21 + a9 * (v54 + 4);
              do
              {
                v53 -= a9;
              }

              while (v53 >= a7);
            }

            v55 = *(v18 + v53);
            v56 = v73 + v21;
            if (v73 + v21 >= a7)
            {
              v57 = ((v50 + a9) & ~((v50 + a9) >> 31)) + v52 - a9;
              v58 = (v57 - (v57 != 0)) / v16;
              if (((v50 + a9) & ~((v50 + a9) >> 31)) + v52 - a9)
              {
                ++v58;
              }

              v56 = v21 + a9 * (v58 + 5);
              do
              {
                v56 -= a9;
              }

              while (v56 >= a7);
            }

            *(v74 + 4 * v20++) = *a6 * v46 + a6[1] * v47 + a6[2] * v48 + a6[3] * v49 + a6[4] * *(v18 + v40) + a6[5] * v51 + a6[6] * v55 + a6[7] * *(v18 + v56);
            a6 += 8;
          }

          while (v20 != v72);
          v19 = v69;
          v17 = v69;
          a8 = v68;
          v13 = 4 * a9;
          v14 = a11;
        }

        if (v19 == a8)
        {
          break;
        }

        v19 = a8;
        if (v17 < v14)
        {
          v59 = v17;
          v60 = 4 * v17;
          v61 = (a5 + v60);
          v62 = (v74 + v60);
          v63 = a11 - v59;
          do
          {
            v64 = *v61++;
            *v62++ = *a6 * *(v18 + v64 - v15) + a6[1] * *(v18 + v64 - v12) + a6[2] * *(v18 + v64 - a9) + a6[3] * *(v18 + v64) + a6[4] * *(v18 + v64 + a9) + a6[5] * *(v18 + v64 + v12) + a6[6] * *(v18 + v64 + v15) + a6[7] * *(v18 + v64 + v13);
            a6 += 8;
            --v63;
          }

          while (v63);
          v17 = v14;
          v19 = a8;
        }
      }

      a6 += v65;
      v11 = v67 + 1;
    }

    while (v67 + 1 != a4);
  }
}

const __int16 *sub_100344FA0(uint64_t a1, void *a2, uint64_t a3, __int16 *a4, int a5)
{
  if (a5 >= 4)
  {
    v6 = 0;
    v5 = 0;
    v7.i64[0] = 0x20000000200000;
    v7.i64[1] = 0x20000000200000;
    v8.i64[0] = 0xFF000000FFLL;
    v8.i64[1] = 0xFF000000FFLL;
    do
    {
      v9 = a4;
      v10 = vld1_dup_s16(v9++);
      v11 = vld1_dup_s16(v9);
      v12 = a4 + 2;
      v13 = vld1_dup_s16(v12);
      v14 = a4 + 3;
      v15 = a4 + 4;
      v16 = a4 + 5;
      v17 = a4 + 6;
      result = a4 + 7;
      v19 = vmlaq_s32(vmulq_s32(*(*a2 + v6), vmovl_s16(v10)), *(a2[1] + v6), vmovl_s16(v11));
      v20 = vld1_dup_s16(v14);
      v21 = vld1_dup_s16(v15);
      v22 = vmlaq_s32(vmlaq_s32(v19, *(a2[2] + v6), vmovl_s16(v13)), *(a2[3] + v6), vmovl_s16(v20));
      v23 = vld1_dup_s16(v16);
      v24 = vmlaq_s32(v22, *(a2[4] + v6), vmovl_s16(v21));
      v25 = vld1_dup_s16(v17);
      v26 = vld1_dup_s16(result);
      *(a3 + v5) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v24, *(a2[5] + v6), vmovl_s16(v23)), *(a2[6] + v6), vmovl_s16(v25)), *(a2[7] + v6), vmovl_s16(v26)), v7), 0x16uLL), 0), v8)), *v7.i8).u32[0];
      v5 += 4;
      v6 += 16;
    }

    while (v5 <= (a5 - 4));
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 < a5)
  {
    v27 = 0;
    v28 = v5;
    v29 = a3 + v5;
    v30 = 4 * v5;
    v31 = a5 - v28;
    do
    {
      result = *(a2[3] + v30 + 4 * v27);
      v32 = *(a2[1] + v30 + 4 * v27) * a4[1] + *(*a2 + v30 + 4 * v27) * *a4 + *(a2[2] + v30 + 4 * v27) * a4[2] + result * a4[3] + *(a2[4] + v30 + 4 * v27) * a4[4] + *(a2[5] + v30 + 4 * v27) * a4[5] + *(a2[6] + v30 + 4 * v27) * a4[6] + *(a2[7] + v30 + 4 * v27) * a4[7] + 0x200000;
      v33 = (v32 >> 22) & ~(v32 >> 31);
      if (v33 >= 255)
      {
        LOBYTE(v33) = -1;
      }

      *(v29 + v27++) = v33;
    }

    while (v31 != v27);
  }

  return result;
}

uint64_t sub_100345188(uint64_t a1)
{
  *a1 = off_10047A678;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_1003452C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A6B8;
  v19 = *a2;
  v20 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v20;
  *(a1 + 40) = *(a2 + 32);
  v21 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v21;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v19) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v24 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v25 = *(a3 + 32);
  v27 = *(a3 + 48);
  v26 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v25;
  *(a1 + 152) = v27;
  *(a1 + 160) = v26;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v24;
  if (v26)
  {
    atomic_fetch_add((v26 + 20), 1u);
    if (*(a3 + 4) <= 2)
    {
LABEL_8:
      v28 = *(a3 + 72);
      v29 = *(a1 + 176);
      *v29 = *v28;
      v29[1] = v28[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v24) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 108) = 0;
  sub_100269B58(a1 + 104, a3);
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = *a8;
  *(a1 + 240) = *a9;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 256) = a12;
  if (a10 >= 17)
  {
    v32[0] = 0;
    v32[1] = 0;
    v30 = sub_1002A80E0(v32, 18);
    *(v30 + 16) = 17754;
    *v30 = *"ksize <= MAX_ESIZE";
    sub_1002A8980(-215, v32, "resizeGeneric_Invoker", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2211);
  }

  return a1;
}

void sub_1003454D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_100345528(uint64_t a1)
{
  sub_1003465F4(a1);

  operator delete();
}

_DWORD *sub_100345560(_DWORD *result, int *a2, double a3, float a4, float a5, float a6, float a7, float a8, double a9, float a10)
{
  v10 = result;
  v11 = result[2];
  v12 = (result[60] + 15) & 0xFFFFFFF0;
  LODWORD(v13) = result[62];
  if ((v13 * v12) >= 0x109)
  {
    operator new[]();
  }

  v14 = 0.0;
  memset(v42, 0, 128);
  memset(v41, 0, sizeof(v41));
  if (v13 >= 1)
  {
    result = memset(__b, 255, 4 * v13);
    v15 = v12;
    if (v13 == 1)
    {
      v16 = 0;
LABEL_9:
      v20 = &v37[v16 * v12];
      v21 = &v41[v16];
      v22 = v13 - v16;
      do
      {
        *v21++ = v20;
        v20 = (v20 + v15 * 4);
        --v22;
      }

      while (v22);
      goto LABEL_11;
    }

    v16 = v13 & 0x7FFFFFFE;
    v17 = &v41[1];
    v18 = v16;
    v19 = v37;
    do
    {
      *(v17 - 1) = v19;
      *v17 = &v19[v15];
      v19 += 2 * v12;
      v17 += 2;
      v18 -= 2;
    }

    while (v18);
    if (v16 != v13)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v23 = *a2;
  if (v23 < a2[1])
  {
    v24 = *(v10 + 28) + 4 * v23 * v13;
    v34 = ((v11 >> 3) & 0x1FF) + 1;
    do
    {
      if (v13 >= 1)
      {
        v36 = v24;
        v25 = 0;
        LODWORD(v26) = 0;
        v27 = (*(*(v10 + 26) + 4 * v23) - (v13 >> 1) + 1);
        v28 = v13;
        do
        {
          v30 = v10[59];
          if ((v25 + v27) >= v30)
          {
            v31 = v30 - 1;
          }

          else
          {
            v31 = v25 + v27;
          }

          if ((v25 + v27) >= 0)
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          if (v26 <= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v26;
          }

          if (v26 < v13)
          {
            while (v26 > 0xF || v32 != __b[v26])
            {
              if (++v26 >= v13)
              {
                goto LABEL_15;
              }
            }

            if (v26 > v25)
            {
              memcpy(v41[v25], v41[v26], 4 * v12);
              LODWORD(v13) = v10[62];
            }
          }

LABEL_15:
          if (v25 >= v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = v25;
          }

          if (v26 == v13)
          {
            v28 = v29;
          }

          v42[v25] = *(v10 + 3) + **(v10 + 10) * v32;
          __b[v25++] = v32;
        }

        while (v25 < v13);
        v33 = v10[60];
        if (v13 <= v28)
        {
          v24 = v36;
          goto LABEL_41;
        }

        sub_10034590C(v14, a4, a5, a6, a7, a8, a9, a10, &v39, &v42[v28], &v41[v28], v13 - v28, *(v10 + 25), *(v10 + 27), v10[58], v33, v34, v10[63], v10[64]);
        v24 = v36;
      }

      v33 = v10[60];
LABEL_41:
      result = sub_100345D40(&v38, v41, (*(v10 + 15) + *(v10 + 23) * v23++), v24, v33);
      v13 = v10[62];
      v24 += 4 * v13;
    }

    while (v23 < a2[1]);
  }

  return result;
}

void sub_1003458D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10034590C(double a1, float a2, float a3, float a4, float a5, float a6, double a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, float *a14, unsigned int a15, int a16, unsigned int a17, int a18, int a19)
{
  if (a12 >= 1)
  {
    v20 = 0;
    v21 = 2 * a17;
    v22 = 4 * a17;
    v23 = 3 * a17;
    v24 = -3 * a17;
    if (a17 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = a17;
    }

    result = a19;
    do
    {
      LODWORD(v27) = 0;
      v28 = *(a10 + 8 * v20);
      v29 = *(a11 + 8 * v20);
      v30 = a18;
      while (1)
      {
        if (v27 < v30)
        {
          v27 = v27;
          do
          {
            v33 = *(a13 + 4 * v27);
            v34 = v24 + v33;
            v35 = v23 - v33;
            v36 = v24 + v33;
            if (v24 + v33 >= a15)
            {
              v37 = ((v34 & ~(v34 >> 31)) + v35 - ((v34 & ~(v34 >> 31)) + v35 != 0)) / v25;
              if ((v34 & ~(v34 >> 31)) + v35)
              {
                ++v37;
              }

              v36 = v33 + a17 * (v37 - 2);
              do
              {
                v36 -= a17;
              }

              while (v36 >= a15);
            }

            v38 = v34 + a17;
            v39 = v35 - a17;
            v40 = v33 - v21;
            if (v33 - v21 >= a15)
            {
              v41 = ((v38 & ~(v38 >> 31)) + v39 - ((v38 & ~(v38 >> 31)) + v39 != 0)) / v25;
              if ((v38 & ~(v38 >> 31)) + v39)
              {
                ++v41;
              }

              v40 = v33 + a17 * (v41 - 1);
              do
              {
                v40 -= a17;
              }

              while (v40 >= a15);
            }

            v42 = v38 + a17;
            v43 = v39 - a17;
            v44 = v33 - a17;
            if (v33 - a17 >= a15)
            {
              v45 = ((v42 & ~(v42 >> 31)) + v43 - ((v42 & ~(v42 >> 31)) + v43 != 0)) / v25;
              if ((v42 & ~(v42 >> 31)) + v43)
              {
                ++v45;
              }

              v44 = v33 + v45 * a17;
              do
              {
                v44 -= a17;
              }

              while (v44 >= a15);
            }

            v46 = v42 + a17;
            v47 = v43 - a17;
            v48 = *(a13 + 4 * v27);
            if (v33 >= a15)
            {
              v49 = ((v46 & ~(v46 >> 31)) + v47 - ((v46 & ~(v46 >> 31)) + v47 != 0)) / v25;
              if ((v46 & ~(v46 >> 31)) + v47)
              {
                ++v49;
              }

              v48 = v33 + a17 + a17 * v49;
              do
              {
                v48 -= a17;
              }

              while (v48 >= a15);
            }

            v50 = v46 + a17;
            v51 = v47 - a17;
            v52 = v33 + a17;
            if (v33 + a17 >= a15)
            {
              v53 = ((v50 & ~(v50 >> 31)) + v51 - ((v50 & ~(v50 >> 31)) + v51 != 0)) / v25;
              if ((v50 & ~(v50 >> 31)) + v51)
              {
                ++v53;
              }

              v52 = v33 + a17 * (v53 + 2);
              do
              {
                v52 -= a17;
              }

              while (v52 >= a15);
            }

            v54 = v50 + a17;
            v55 = v51 - a17;
            v56 = v21 + v33;
            if (v21 + v33 >= a15)
            {
              v57 = (v54 & ~(v54 >> 31)) + v55;
              v58 = (v57 - (v57 != 0)) / v25;
              if (v57)
              {
                ++v58;
              }

              v56 = v33 + a17 * (v58 + 3);
              do
              {
                v56 -= a17;
              }

              while (v56 >= a15);
            }

            LOWORD(a8) = *(v28 + 2 * v36);
            v59 = v54 + a17;
            v60 = v55 - a17;
            v61 = v23 + v33;
            if (v23 + v33 >= a15)
            {
              v62 = ((v59 & ~(v59 >> 31)) + v60 - ((v59 & ~(v59 >> 31)) + v60 != 0)) / v25;
              if ((v59 & ~(v59 >> 31)) + v60)
              {
                ++v62;
              }

              v61 = v33 + a17 * (v62 + 4);
              do
              {
                v61 -= a17;
              }

              while (v61 >= a15);
            }

            LOWORD(v19) = *(v28 + 2 * v61);
            v63 = v22 + v33;
            if (v22 + v33 >= a15)
            {
              v65 = ((v59 + a17) & ~((v59 + a17) >> 31)) + v60 - a17;
              v64 = v65 == 0;
              v66 = (v65 - (v65 != 0)) / v25;
              if (!v64)
              {
                ++v66;
              }

              v63 = v33 + a17 * (v66 + 5);
              do
              {
                v63 -= a17;
              }

              while (v63 >= a15);
            }

            a8 = (LODWORD(a8) * *a14) + 0.0;
            LOWORD(a6) = *(v28 + 2 * v44);
            a6 = LODWORD(a6);
            LOWORD(a5) = *(v28 + 2 * v40);
            a5 = (a8 + (LODWORD(a5) * a14[1])) + (a6 * a14[2]);
            LOWORD(a2) = *(v28 + 2 * v56);
            LOWORD(a3) = *(v28 + 2 * v48);
            LOWORD(a4) = *(v28 + 2 * v52);
            v31 = ((a5 + (LODWORD(a3) * a14[3])) + (LODWORD(a4) * a14[4])) + (LODWORD(a2) * a14[5]);
            *&v32 = v19;
            LOWORD(v32) = *(v28 + 2 * v63);
            a3 = v32;
            a4 = a14[7];
            a2 = (v31 + (v19 * a14[6])) + (a3 * a4);
            *(v29 + 4 * v27++) = a2;
            a14 += 8;
          }

          while (v27 != v30);
          LODWORD(v27) = v30;
        }

        if (v30 == a16)
        {
          break;
        }

        v30 = a16;
        if (v27 < a19)
        {
          v67 = v27;
          v68 = 4 * v27;
          v69 = (a13 + v68);
          v70 = (v29 + v68);
          v71 = a19 - v67;
          do
          {
            v72 = *v69++;
            LOWORD(a2) = *(v28 + 2 * (v72 - v23));
            LOWORD(a3) = *(v28 + 2 * (v72 - v21));
            *&v73 = a14[1] * LODWORD(a3);
            v74 = *&v73 + (LODWORD(a2) * *a14);
            LOWORD(v73) = *(v28 + 2 * (v72 - a17));
            *&v75 = v73;
            v76 = v74 + (*&v75 * a14[2]);
            LOWORD(v75) = *(v28 + 2 * v72);
            *&v77 = v75;
            v78 = v76 + (*&v77 * a14[3]);
            LOWORD(v77) = *(v28 + 2 * (v72 + a17));
            *&v79 = v77;
            v80 = v78 + (*&v79 * a14[4]);
            LOWORD(v79) = *(v28 + 2 * (v72 + v21));
            *&v81 = v79;
            v82 = v80 + (*&v81 * a14[5]);
            LOWORD(v81) = *(v28 + 2 * (v72 + v23));
            *&v83 = v81;
            a4 = a14[6];
            a5 = a14[7];
            v84 = v82 + (*&v83 * a4);
            LOWORD(v83) = *(v28 + 2 * (v72 + v22));
            a3 = v83;
            a2 = v84 + (a3 * a5);
            *v70++ = a2;
            a14 += 8;
            --v71;
          }

          while (v71);
          LODWORD(v27) = a19;
          v30 = a16;
        }
      }

      a14 -= 8 * a16;
      ++v20;
    }

    while (v20 != a12);
  }

  return result;
}

unint64_t sub_100345D40(uint64_t a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, int a5)
{
  v7 = a3;
  result = sub_100346310(v118, a2, a3, a4, a5);
  v18 = a5 - 4;
  LODWORD(v19) = result;
  if (result <= a5 - 4)
  {
    v20 = result;
    v10.i32[0] = *(a4 + 16);
    v12.i32[0] = *(a4 + 20);
    v21 = *(a2 + 32);
    v22 = *(a2 + 40);
    v23 = *a4;
    v11.i32[0] = *(a4 + 4);
    v24 = *a2;
    v25 = *(a2 + 8);
    v16.i32[0] = *(a4 + 8);
    v17.i32[0] = *(a4 + 12);
    v26 = *(a2 + 16);
    v27 = *(a2 + 24);
    v13.i32[0] = *(a4 + 24);
    v14.i32[0] = *(a4 + 28);
    v28 = v18 - result;
    v19 = v20;
    v29 = *(a2 + 48);
    v30 = *(a2 + 56);
    if (v28 <= 0xB)
    {
      goto LABEL_6;
    }

    v101 = (v28 >> 2) + 1;
    v31 = v101 & 0x7FFFFFFFFFFFFFFCLL;
    v103 = v16.i64[0];
    v104 = v11;
    v115 = vdupq_lane_s32(*v16.f32, 0);
    v116 = vdupq_lane_s32(v11, 0);
    v102 = v17.i64[0];
    v107 = v12.i64[0];
    v108 = v10;
    v113 = vdupq_lane_s32(v10, 0);
    v114 = vdupq_lane_s32(*v17.f32, 0);
    v19 = v20 + 4 * (v101 & 0x7FFFFFFFFFFFFFFCLL);
    v105 = v14.i64[0];
    v106 = v13.i64[0];
    v111 = vdupq_lane_s32(*v13.f32, 0);
    v112 = vdupq_lane_s32(*v12.f32, 0);
    v109 = v7;
    v32 = &v7->i16[v20];
    v33 = 4 * v20;
    v110 = vdupq_lane_s32(*v14.f32, 0);
    v34 = *(a2 + 56);
    v35 = *(a2 + 48);
    v36 = *(a2 + 40);
    v37 = *(a2 + 32);
    v38 = *(a2 + 24);
    v39 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = *a2;
    do
    {
      v42 = &v41->f32[v33 / 4];
      v119 = vld4q_f32(v42);
      v43 = (v40 + v33);
      v120 = vld4q_f32(v43);
      v117 = v120;
      v44 = (v39 + v33);
      v123 = vld4q_f32(v44);
      v45 = (v38 + v33);
      v46 = (v37 + v33);
      v47 = (v36 + v33);
      v48 = (v35 + v33);
      v49 = (v34 + v33);
      v121 = vld4q_f32(v45);
      v124 = vld4q_f32(v46);
      v125 = vld4q_f32(v47);
      v122 = vld4q_f32(v48);
      v126 = vld4q_f32(v49);
      v50 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v119.val[0], v23), v116, v117.val[0]), v115, v123.val[0]), v114, v121.val[0]), v113, v124.val[0]), v112, v125.val[0]), v111, v122.val[0]), v110, v126.val[0]);
      v51 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v119.val[1], v23), v116, v117.val[1]), v115, v123.val[1]), v114, v121.val[1]), v113, v124.val[1]), v112, v125.val[1]), v111, v122.val[1]), v110, v126.val[1]);
      v52 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v119.val[2], v23), v116, v117.val[2]), v115, v123.val[2]), v114, v121.val[2]), v113, v124.val[2]), v112, v125.val[2]), v111, v122.val[2]), v110, v126.val[2]);
      v126.val[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v119.val[3], v23), v116, v117.val[3]), v115, v123.val[3]), v114, v121.val[3]), v113, v124.val[3]), v112, v125.val[3]), v111, v122.val[3]), v110, v126.val[3]);
      v121.val[3].i64[0] = 0xFFFF0000FFFFLL;
      v121.val[3].i64[1] = 0xFFFF0000FFFFLL;
      v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v126.val[1], v126.val[1], 8uLL))));
      *v124.val[1].f32 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v121.val[3]));
      *v124.val[0].f32 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), 0), v121.val[3]));
      *v124.val[3].f32 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v126.val[1].f32))), v15), 0), v121.val[3]));
      *v124.val[2].f32 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v121.val[3]));
      vst4_s16(v32, *v124.val[0].f32);
      v32 += 16;
      v41 += 4;
      v40 += 64;
      v39 += 64;
      v38 += 64;
      v37 += 64;
      v36 += 64;
      v35 += 64;
      v34 += 64;
      v31 -= 4;
    }

    while (v31);
    result = v101;
    v7 = v109;
    v12.i64[0] = v107;
    v10 = v108;
    v14.i64[0] = v105;
    v13.i64[0] = v106;
    v16.i64[0] = v103;
    v11 = v104;
    v17.i64[0] = v102;
    if (v101 != (v101 & 0x7FFFFFFFFFFFFFFCLL))
    {
LABEL_6:
      v15 = vdupq_lane_s32(v11, 0);
      v16 = vdupq_lane_s32(*v16.f32, 0);
      v17 = vdupq_lane_s32(*v17.f32, 0);
      result = 4 * v19;
      v53 = (v7 + 2 * v19);
      v54 = vdupq_lane_s32(v10, 0);
      v12 = vdupq_lane_s32(*v12.f32, 0);
      v13 = vdupq_lane_s32(*v13.f32, 0);
      v55.i64[0] = 0xFFFF0000FFFFLL;
      v55.i64[1] = 0xFFFF0000FFFFLL;
      v14 = vdupq_lane_s32(*v14.f32, 0);
      do
      {
        v56 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(v24 + result), v23), v15, *(v25 + result)), v16, *(v26 + result)), v17, *(v27 + result)), v54, *(v21 + result)), v12, *(v22 + result)), v13, *(v29 + result)), v14, *(v30 + result));
        v10 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), 0), v55));
        *v53++ = v10;
        v19 += 4;
        ++v24;
        v25 += 16;
        v26 += 16;
        v27 += 16;
        v21 += 16;
        v22 += 16;
        v29 += 16;
        v30 += 16;
      }

      while (v19 <= v18);
    }
  }

  if (v19 < a5)
  {
    v57 = *a2;
    v58 = *(a2 + 8);
    v10.i32[0] = *a4;
    v59 = *(a4 + 4);
    v60 = *(a2 + 16);
    v61 = *(a2 + 24);
    v12.i32[0] = *(a4 + 8);
    v13.i32[0] = *(a4 + 12);
    v62 = *(a2 + 32);
    v63 = *(a2 + 40);
    v14.i32[0] = *(a4 + 16);
    v15.i32[0] = *(a4 + 20);
    v16.i32[0] = *(a4 + 24);
    v17.i32[0] = *(a4 + 28);
    v64 = v19;
    v65 = a5;
    result = a5 - v64;
    v66 = v64;
    v68 = *(a2 + 48);
    v67 = *(a2 + 56);
    if (result <= 3)
    {
      goto LABEL_13;
    }

    v69 = vdupq_lane_s32(v10, 0);
    v70 = vdupq_lane_s32(*v12.f32, 0);
    v66 = (result & 0xFFFFFFFFFFFFFFFCLL) + v64;
    v71 = vdupq_lane_s32(*v13.f32, 0);
    v72 = vdupq_lane_s32(*v14.f32, 0);
    v73 = 4 * v64;
    v74 = (v7 + 2 * v64);
    v75 = vdupq_lane_s32(*v15.f32, 0);
    v76 = vdupq_lane_s32(*v16.f32, 0);
    v77 = *(a2 + 56);
    v78 = vdupq_lane_s32(*v17.f32, 0);
    v79 = *(a2 + 48);
    v80 = *(a2 + 40);
    v81 = *(a2 + 32);
    v82 = *(a2 + 24);
    v83.i64[0] = 0xFFFF0000FFFFLL;
    v83.i64[1] = 0xFFFF0000FFFFLL;
    v84 = v60;
    v85 = v58;
    v86 = v57;
    v87 = result & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v88 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(v85 + v73), v59), v69, *(v86 + v73)), v70, *(v84 + v73)), v71, *(v82 + v73)), v72, *(v81 + v73)), v75, *(v80 + v73)), v76, *(v79 + v73)), v78, *(v77 + v73));
      *v74++ = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88, v88, 8uLL))))), 0), v83));
      ++v86;
      v85 += 16;
      v84 += 16;
      v82 += 16;
      v81 += 16;
      v80 += 16;
      v79 += 16;
      v77 += 16;
      v87 -= 4;
    }

    while (v87);
    if (result != (result & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_13:
      result = 0;
      v89 = &v57->i8[4 * v66];
      v90 = v58 + 4 * v66;
      v91 = v60 + 4 * v66;
      v92 = v61 + 4 * v66;
      v93 = v62 + 4 * v66;
      v94 = v63 + 4 * v66;
      v95 = v68 + 4 * v66;
      v96 = v67 + 4 * v66;
      v97 = v65 - v66;
      v98 = &v7->i8[2 * v66];
      do
      {
        v99 = rintf((((((((*(v90 + 4 * result) * v59) + (*&v89[4 * result] * *v10.i32)) + (*(v91 + 4 * result) * v12.f32[0])) + (*(v92 + 4 * result) * v13.f32[0])) + (*(v93 + 4 * result) * v14.f32[0])) + (*(v94 + 4 * result) * v15.f32[0])) + (*(v95 + 4 * result) * v16.f32[0])) + (*(v96 + 4 * result) * v17.f32[0]));
        v100 = v99 & ~(v99 >> 31);
        if (v100 >= 0xFFFF)
        {
          LOWORD(v100) = -1;
        }

        *&v98[2 * result++] = v100;
      }

      while (v97 != result);
    }
  }

  return result;
}

uint64_t sub_100346310(uint64_t a1, float32x4_t **a2, uint16x8_t *a3, const float *a4, int a5)
{
  v7 = vld1q_dup_f32(a4);
  v6 = a4 + 1;
  result = 0;
  v9 = a5 - 8;
  if (a5 >= 8)
  {
    v10 = vld1q_dup_f32(v6);
    v11 = a4 + 2;
    v12 = vld1q_dup_f32(v11);
    v13 = a4 + 3;
    v14 = vld1q_dup_f32(v13);
    v15 = a4 + 4;
    v16 = vld1q_dup_f32(v15);
    v17 = a4 + 5;
    v18 = vld1q_dup_f32(v17);
    v19 = a4 + 6;
    v20 = vld1q_dup_f32(v19);
    v21 = a4 + 7;
    v22 = a2[7] + 1;
    v23 = *a2 + 1;
    v24 = a2[6] + 1;
    v25 = vld1q_dup_f32(v21);
    v26 = a2[1] + 1;
    v27 = a2[5] + 1;
    v28 = a2[2] + 1;
    v29 = a2[4] + 1;
    v30 = a2[3] + 1;
    v31 = &off_1004B0000;
    do
    {
      v32 = v23[-1];
      v33 = *v23;
      v34 = v26[-1];
      v35 = *v26;
      v37 = v28[-1];
      v36 = *v28;
      v39 = v30[-1];
      v38 = *v30;
      v41 = v29[-1];
      v40 = *v29;
      v43 = v27[-1];
      v42 = *v27;
      v45 = v24[-1];
      v44 = *v24;
      v47 = v22[-1];
      v46 = *v22;
      if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
      {
        v48 = v31[5];
        if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v117 = a3;
        v101 = result;
        v115 = v9;
        v97 = v24;
        v99 = v22;
        v111 = v26;
        v113 = v23;
        v107 = v28;
        v109 = v27;
        v103 = v30;
        v105 = v29;
        v93 = v10;
        v95 = v7;
        v89 = v14;
        v91 = v12;
        v85 = v18;
        v87 = v16;
        v81 = v25;
        v83 = v20;
        v77 = v33;
        v79 = v32;
        v73 = v36;
        v75 = v35;
        v69 = v40;
        v71 = v38;
        v65 = v44;
        v67 = v42;
        v61 = v46;
        v63 = v34;
        v57 = v39;
        v59 = v37;
        v53 = v43;
        v55 = v41;
        v49 = v47;
        v51 = v45;
        sub_1003C836C();
        v47 = v49;
        v45 = v51;
        v43 = v53;
        v41 = v55;
        v39 = v57;
        v37 = v59;
        v46 = v61;
        v34 = v63;
        v44 = v65;
        v42 = v67;
        v40 = v69;
        v38 = v71;
        v36 = v73;
        v35 = v75;
        v33 = v77;
        v32 = v79;
        v25 = v81;
        v20 = v83;
        v18 = v85;
        v16 = v87;
        v14 = v89;
        v12 = v91;
        v10 = v93;
        v7 = v95;
        v31 = &off_1004B0000;
        v30 = v103;
        v29 = v105;
        v28 = v107;
        v27 = v109;
        v26 = v111;
        v23 = v113;
        v24 = v97;
        v22 = v99;
        v9 = v115;
        LODWORD(result) = v101;
        a3 = v117;
        v48 = xmmword_1004B0050;
        if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
        {
LABEL_8:
          v118 = a3;
          v102 = result;
          v116 = v9;
          v98 = v24;
          v100 = v22;
          v112 = v26;
          v114 = v23;
          v108 = v28;
          v110 = v27;
          v104 = v30;
          v106 = v29;
          v94 = v10;
          v96 = v7;
          v90 = v14;
          v92 = v12;
          v86 = v18;
          v88 = v16;
          v82 = v25;
          v84 = v20;
          v78 = v33;
          v80 = v32;
          v74 = v36;
          v76 = v35;
          v70 = v40;
          v72 = v38;
          v66 = v44;
          v68 = v42;
          v62 = v46;
          v64 = v34;
          v58 = v39;
          v60 = v37;
          v54 = v43;
          v56 = v41;
          v50 = v47;
          v52 = v45;
          sub_1003C836C();
          v47 = v50;
          v45 = v52;
          v43 = v54;
          v41 = v56;
          v39 = v58;
          v37 = v60;
          v46 = v62;
          v34 = v64;
          v44 = v66;
          v42 = v68;
          v40 = v70;
          v38 = v72;
          v36 = v74;
          v35 = v76;
          v33 = v78;
          v32 = v80;
          v25 = v82;
          v20 = v84;
          v18 = v86;
          v16 = v88;
          v14 = v90;
          v12 = v92;
          v10 = v94;
          v7 = v96;
          v31 = &off_1004B0000;
          v30 = v104;
          v29 = v106;
          v28 = v108;
          v27 = v110;
          v26 = v112;
          v23 = v114;
          v24 = v98;
          v22 = v100;
          v9 = v116;
          LODWORD(result) = v102;
          a3 = v118;
        }
      }

      *a3++ = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v32), v34, v10), v37, v12), v39, v14), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v16, v41), v43, v18), v45, v20), v47, v25)), v48))), vcvtq_u32_f32(vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v33), v35, v10), v36, v12), v38, v14), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v16, v40), v42, v18), v44, v20), v46, v25)), v31[5])));
      result = (result + 8);
      v22 += 2;
      v23 += 2;
      v24 += 2;
      v26 += 2;
      v27 += 2;
      v28 += 2;
      v29 += 2;
      v30 += 2;
    }

    while (v9 >= result);
  }

  return result;
}

uint64_t sub_1003465F4(uint64_t a1)
{
  *a1 = off_10047A6B8;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_100346730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A6F8;
  v19 = *a2;
  v20 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v20;
  *(a1 + 40) = *(a2 + 32);
  v21 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v21;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v19) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v24 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v25 = *(a3 + 32);
  v27 = *(a3 + 48);
  v26 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v25;
  *(a1 + 152) = v27;
  *(a1 + 160) = v26;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v24;
  if (v26)
  {
    atomic_fetch_add((v26 + 20), 1u);
    if (*(a3 + 4) <= 2)
    {
LABEL_8:
      v28 = *(a3 + 72);
      v29 = *(a1 + 176);
      *v29 = *v28;
      v29[1] = v28[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v24) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 108) = 0;
  sub_100269B58(a1 + 104, a3);
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = *a8;
  *(a1 + 240) = *a9;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 256) = a12;
  if (a10 >= 17)
  {
    v32[0] = 0;
    v32[1] = 0;
    v30 = sub_1002A80E0(v32, 18);
    *(v30 + 16) = 17754;
    *v30 = *"ksize <= MAX_ESIZE";
    sub_1002A8980(-215, v32, "resizeGeneric_Invoker", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2211);
  }

  return a1;
}

void sub_100346940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_100346994(uint64_t a1)
{
  sub_100347C50(a1);

  operator delete();
}

_DWORD *sub_1003469CC(_DWORD *result, int *a2, double a3, double a4, double a5, int16x4_t a6, double a7, double a8, double a9, double a10)
{
  v10 = result;
  v11 = result[2];
  v12 = (result[60] + 15) & 0xFFFFFFF0;
  LODWORD(v13) = result[62];
  if ((v13 * v12) >= 0x109)
  {
    operator new[]();
  }

  v14 = 0.0;
  memset(v42, 0, 128);
  memset(v41, 0, sizeof(v41));
  if (v13 >= 1)
  {
    result = memset(__b, 255, 4 * v13);
    v15 = v12;
    if (v13 == 1)
    {
      v16 = 0;
LABEL_9:
      v20 = &v37[v16 * v12];
      v21 = &v41[v16];
      v22 = v13 - v16;
      do
      {
        *v21++ = v20;
        v20 = (v20 + v15 * 4);
        --v22;
      }

      while (v22);
      goto LABEL_11;
    }

    v16 = v13 & 0x7FFFFFFE;
    v17 = &v41[1];
    v18 = v16;
    v19 = v37;
    do
    {
      *(v17 - 1) = v19;
      *v17 = &v19[v15];
      v19 += 2 * v12;
      v17 += 2;
      v18 -= 2;
    }

    while (v18);
    if (v16 != v13)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v23 = *a2;
  if (v23 < a2[1])
  {
    v24 = *(v10 + 28) + 4 * v23 * v13;
    v34 = ((v11 >> 3) & 0x1FF) + 1;
    do
    {
      if (v13 >= 1)
      {
        v36 = v24;
        v25 = 0;
        LODWORD(v26) = 0;
        v27 = (*(*(v10 + 26) + 4 * v23) - (v13 >> 1) + 1);
        v28 = v13;
        do
        {
          v30 = v10[59];
          if ((v25 + v27) >= v30)
          {
            v31 = v30 - 1;
          }

          else
          {
            v31 = v25 + v27;
          }

          if ((v25 + v27) >= 0)
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          if (v26 <= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v26;
          }

          if (v26 < v13)
          {
            while (v26 > 0xF || v32 != __b[v26])
            {
              if (++v26 >= v13)
              {
                goto LABEL_15;
              }
            }

            if (v26 > v25)
            {
              memcpy(v41[v25], v41[v26], 4 * v12);
              LODWORD(v13) = v10[62];
            }
          }

LABEL_15:
          if (v25 >= v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = v25;
          }

          if (v26 == v13)
          {
            v28 = v29;
          }

          v42[v25] = *(v10 + 3) + **(v10 + 10) * v32;
          __b[v25++] = v32;
        }

        while (v25 < v13);
        v33 = v10[60];
        if (v13 <= v28)
        {
          v24 = v36;
          goto LABEL_41;
        }

        sub_100346D78(v14, a4, a5, a6, a7, a8, a9, a10, &v39, &v42[v28], &v41[v28], v13 - v28, *(v10 + 25), *(v10 + 27), v10[58], v33, v34, v10[63], v10[64]);
        v24 = v36;
      }

      v33 = v10[60];
LABEL_41:
      result = sub_1003471EC(&v38, v41, (*(v10 + 15) + *(v10 + 23) * v23++), v24, v33);
      v13 = v10[62];
      v24 += 4 * v13;
    }

    while (v23 < a2[1]);
  }

  return result;
}

void sub_100346D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100346D78(double a1, double a2, double a3, int16x4_t a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, float *a14, unsigned int a15, int a16, unsigned int a17, int a18, int a19)
{
  if (a12 >= 1)
  {
    v22 = 0;
    v23 = 2 * a17;
    v24 = 4 * a17;
    v25 = 3 * a17;
    v26 = -3 * a17;
    if (a17 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = a17;
    }

    result = a19;
    do
    {
      LODWORD(v29) = 0;
      v30 = *(a10 + 8 * v22);
      v31 = *(a11 + 8 * v22);
      v32 = a18;
      while (1)
      {
        if (v29 < v32)
        {
          v29 = v29;
          do
          {
            v34 = *(a13 + 4 * v29);
            v35 = v26 + v34;
            v36 = v25 - v34;
            v37 = v26 + v34;
            if (v26 + v34 >= a15)
            {
              v38 = ((v35 & ~(v35 >> 31)) + v36 - ((v35 & ~(v35 >> 31)) + v36 != 0)) / v27;
              if ((v35 & ~(v35 >> 31)) + v36)
              {
                ++v38;
              }

              v37 = v34 + a17 * (v38 - 2);
              do
              {
                v37 -= a17;
              }

              while (v37 >= a15);
            }

            v39 = v35 + a17;
            v40 = v36 - a17;
            v41 = v34 - v23;
            if (v34 - v23 >= a15)
            {
              v42 = ((v39 & ~(v39 >> 31)) + v40 - ((v39 & ~(v39 >> 31)) + v40 != 0)) / v27;
              if ((v39 & ~(v39 >> 31)) + v40)
              {
                ++v42;
              }

              v41 = v34 + a17 * (v42 - 1);
              do
              {
                v41 -= a17;
              }

              while (v41 >= a15);
            }

            v43 = v39 + a17;
            v44 = v40 - a17;
            v45 = v34 - a17;
            if (v34 - a17 >= a15)
            {
              v46 = ((v43 & ~(v43 >> 31)) + v44 - ((v43 & ~(v43 >> 31)) + v44 != 0)) / v27;
              if ((v43 & ~(v43 >> 31)) + v44)
              {
                ++v46;
              }

              v45 = v34 + v46 * a17;
              do
              {
                v45 -= a17;
              }

              while (v45 >= a15);
            }

            v47 = v43 + a17;
            v48 = v44 - a17;
            v49 = *(a13 + 4 * v29);
            if (v34 >= a15)
            {
              v50 = ((v47 & ~(v47 >> 31)) + v48 - ((v47 & ~(v47 >> 31)) + v48 != 0)) / v27;
              if ((v47 & ~(v47 >> 31)) + v48)
              {
                ++v50;
              }

              v49 = v34 + a17 + a17 * v50;
              do
              {
                v49 -= a17;
              }

              while (v49 >= a15);
            }

            v51 = v47 + a17;
            v52 = v48 - a17;
            v53 = v34 + a17;
            if (v34 + a17 >= a15)
            {
              v54 = ((v51 & ~(v51 >> 31)) + v52 - ((v51 & ~(v51 >> 31)) + v52 != 0)) / v27;
              if ((v51 & ~(v51 >> 31)) + v52)
              {
                ++v54;
              }

              v53 = v34 + a17 * (v54 + 2);
              do
              {
                v53 -= a17;
              }

              while (v53 >= a15);
            }

            v55 = v51 + a17;
            v56 = v52 - a17;
            v57 = v23 + v34;
            if (v23 + v34 >= a15)
            {
              v58 = (v55 & ~(v55 >> 31)) + v56;
              v59 = (v58 - (v58 != 0)) / v27;
              if (v58)
              {
                ++v59;
              }

              v57 = v34 + a17 * (v59 + 3);
              do
              {
                v57 -= a17;
              }

              while (v57 >= a15);
            }

            v20.i16[0] = *(v30 + 2 * v37);
            v19.i16[0] = *(v30 + 2 * v41);
            v60 = v55 + a17;
            v61 = v56 - a17;
            v62 = v25 + v34;
            if (v25 + v34 >= a15)
            {
              v63 = ((v60 & ~(v60 >> 31)) + v61 - ((v60 & ~(v60 >> 31)) + v61 != 0)) / v27;
              if ((v60 & ~(v60 >> 31)) + v61)
              {
                ++v63;
              }

              v62 = v34 + a17 * (v63 + 4);
              do
              {
                v62 -= a17;
              }

              while (v62 >= a15);
            }

            v64 = v24 + v34;
            if (v24 + v34 >= a15)
            {
              v66 = ((v60 + a17) & ~((v60 + a17) >> 31)) + v61 - a17;
              v65 = v66 == 0;
              v67 = (v66 - (v66 != 0)) / v27;
              if (!v65)
              {
                ++v67;
              }

              v64 = v34 + a17 * (v67 + 5);
              do
              {
                v64 -= a17;
              }

              while (v64 >= a15);
            }

            v20 = vmovl_s16(v20).u64[0];
            *v20.i32 = (v20.i32[0] * *a14) + 0.0;
            v19 = vmovl_s16(v19).u64[0];
            *v19.i32 = v19.i32[0];
            LOWORD(a8) = *(v30 + 2 * v45);
            *&a8 = vmovl_s16(*&a8).u64[0];
            *&a8 = (*v20.i32 + (*v19.i32 * a14[1])) + (SLODWORD(a8) * a14[2]);
            LOWORD(a6) = *(v30 + 2 * v49);
            *&a6 = vmovl_s16(*&a6).u64[0];
            *&a6 = SLODWORD(a6);
            LOWORD(a3) = *(v30 + 2 * v53);
            LOWORD(a2) = *(v30 + 2 * v57);
            *&a2 = vmovl_s16(*&a2).u64[0];
            *&a2 = ((*&a8 + (*&a6 * a14[3])) + (vmovl_s16(*&a3).i32[0] * a14[4])) + (SLODWORD(a2) * a14[5]);
            v21.i16[0] = *(v30 + 2 * v62);
            v33 = vmovl_s16(v21).u64[0];
            *v33.i32 = v33.i32[0];
            *&a2 = *&a2 + (*v33.i32 * a14[6]);
            v33.i16[0] = *(v30 + 2 * v64);
            *&a3 = vmovl_s16(v33).u64[0];
            *&a3 = SLODWORD(a3);
            *&a2 = *&a2 + (*&a3 * a14[7]);
            *(v31 + 4 * v29++) = LODWORD(a2);
            a14 += 8;
          }

          while (v29 != v32);
          LODWORD(v29) = v32;
        }

        if (v32 == a16)
        {
          break;
        }

        v32 = a16;
        if (v29 < a19)
        {
          v68 = v29;
          v69 = 4 * v29;
          v70 = (a13 + v69);
          v71 = (v31 + v69);
          v72 = a19 - v68;
          do
          {
            v73 = *v70++;
            LOWORD(a2) = *(v30 + 2 * (v73 - v25));
            *&a2 = vmovl_s16(*&a2).u64[0];
            LOWORD(a3) = *(v30 + 2 * (v73 - v23));
            a4.i32[0] = *a14;
            *&a5 = a14[1];
            v74 = *&a5 * vmovl_s16(*&a3).i32[0];
            LOWORD(a5) = *(v30 + 2 * (v73 - a17));
            a4.i16[0] = *(v30 + 2 * v73);
            *&a6 = a14[3];
            *&a2 = (v74 + (SLODWORD(a2) * *a14)) + (vmovl_s16(*&a5).i32[0] * a14[2]);
            v75 = vmovl_s16(a4).u32[0];
            a4.i16[0] = *(v30 + 2 * (v73 + a17));
            *&a2 = *&a2 + (v75 * *&a6);
            v76 = vmovl_s16(a4).u64[0];
            *v76.i32 = v76.i32[0];
            *&a2 = *&a2 + (*v76.i32 * a14[4]);
            v76.i16[0] = *(v30 + 2 * (v73 + v23));
            v77 = vmovl_s16(v76).u64[0];
            *v77.i32 = v77.i32[0];
            *&a2 = *&a2 + (*v77.i32 * a14[5]);
            v77.i16[0] = *(v30 + 2 * (v73 + v25));
            v78 = vmovl_s16(v77).u64[0];
            *v78.i32 = v78.i32[0];
            *&a2 = *&a2 + (*v78.i32 * a14[6]);
            v78.i16[0] = *(v30 + 2 * (v73 + v24));
            *&a3 = vmovl_s16(v78).u64[0];
            *&a3 = SLODWORD(a3);
            *&a2 = *&a2 + (*&a3 * a14[7]);
            *v71++ = LODWORD(a2);
            a14 += 8;
            --v72;
          }

          while (v72);
          LODWORD(v29) = a19;
          v32 = a16;
        }
      }

      a14 -= 8 * a16;
      ++v22;
    }

    while (v22 != a12);
  }

  return result;
}

unint64_t sub_1003471EC(uint64_t a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int a5)
{
  result = sub_10034777C(v121, a2, a3, a4, a5);
  v19 = a5 - 4;
  LODWORD(v20) = result;
  if (result <= a5 - 4)
  {
    v21 = result;
    v18.i32[0] = *(a4 + 16);
    v12.i32[0] = *(a4 + 20);
    v22 = *(a2 + 32);
    v23 = *(a2 + 40);
    v24 = *a4;
    v10.i32[0] = *(a4 + 4);
    v25 = *a2;
    v26 = *(a2 + 8);
    v11.i32[0] = *(a4 + 8);
    v17.i32[0] = *(a4 + 12);
    v27 = *(a2 + 16);
    v28 = *(a2 + 24);
    v14.i32[0] = *(a4 + 24);
    v13.i32[0] = *(a4 + 28);
    v29 = v19 - result;
    v20 = v21;
    v30 = *(a2 + 48);
    v31 = *(a2 + 56);
    if (v29 <= 0xB)
    {
      goto LABEL_6;
    }

    v110 = (v29 >> 2) + 1;
    v32 = v110 & 0x7FFFFFFFFFFFFFFCLL;
    v112 = v11;
    v113 = v10;
    v116 = v12.i64[0];
    v117 = vdupq_lane_s32(v10, 0);
    v33 = vdupq_lane_s32(v11, 0);
    v111 = v17.i64[0];
    v34 = vdupq_lane_s32(*v17.f32, 0);
    v109 = v18;
    v35 = vdupq_lane_s32(v18, 0);
    v20 = v21 + 4 * (v110 & 0x7FFFFFFFFFFFFFFCLL);
    v36 = vdupq_lane_s32(*v12.f32, 0);
    v114 = v14.i64[0];
    v115 = v13.i64[0];
    v37 = vdupq_lane_s32(*v14.f32, 0);
    v38 = &a3->i16[v21];
    v39 = 4 * v21;
    v40 = *(a2 + 56);
    v41 = *(a2 + 48);
    v42 = *(a2 + 40);
    v43 = *(a2 + 32);
    v44 = vdupq_lane_s32(*v13.f32, 0);
    v45 = *(a2 + 24);
    v46 = *(a2 + 16);
    v47 = *(a2 + 8);
    v48 = *a2;
    do
    {
      v49 = &v48->f32[v39 / 4];
      v127 = vld4q_f32(v49);
      v50 = (v47 + v39);
      v122 = vld4q_f32(v50);
      v120 = v122;
      v51 = (v46 + v39);
      v123 = vld4q_f32(v51);
      v119 = v123;
      v52 = (v45 + v39);
      v53 = (v43 + v39);
      v54 = (v42 + v39);
      v55 = (v41 + v39);
      v124 = vld4q_f32(v52);
      v126 = vld4q_f32(v53);
      v129 = vld4q_f32(v54);
      v125 = vld4q_f32(v55);
      v118 = v125.val[3];
      v125.val[3] = v127.val[3];
      v56 = vmulq_n_f32(v127.val[0], v24);
      v57 = vmulq_n_f32(v127.val[1], v24);
      v58 = (v40 + v39);
      v59 = vmulq_n_f32(v127.val[2], v24);
      v128 = vld4q_f32(v58);
      v60 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v56, v117, v120.val[0]), v33, v119.val[0]), v34, v124.val[0]), v35, v126.val[0]), v36, v129.val[0]), v37, v125.val[0]), v44, v128.val[0]);
      v61 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v57, v117, v120.val[1]), v33, v119.val[1]), v34, v124.val[1]), v35, v126.val[1]), v36, v129.val[1]), v37, v125.val[1]), v44, v128.val[1]);
      v62 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v59, v117, v120.val[2]), v33, v119.val[2]), v34, v124.val[2]), v35, v126.val[2]), v36, v129.val[2]), v37, v125.val[2]), v44, v128.val[2]);
      v63 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v125.val[3], v24), v117, v120.val[3]), v33, v119.val[3]), v34, v124.val[3]), v35, v126.val[3]), v36, v129.val[3]), v37, v118), v44, v128.val[3]);
      v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8)));
      v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))));
      *v128.val[0].f32 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))));
      *v126.val[3].f32 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL))))));
      *v128.val[2].f32 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), v16));
      *v128.val[1].f32 = vqmovn_s32(vuzp1q_s32(v15, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))));
      vst4_s16(v38, *v126.val[3].f32);
      v38 += 16;
      v48 += 4;
      v47 += 64;
      v46 += 64;
      v45 += 64;
      v43 += 64;
      v42 += 64;
      v41 += 64;
      v40 += 64;
      v32 -= 4;
    }

    while (v32);
    result = v110;
    v13.i64[0] = v115;
    v12.i64[0] = v116;
    v10 = v113;
    v14.i64[0] = v114;
    v17.i64[0] = v111;
    v11 = v112;
    v18 = v109;
    if (v110 != (v110 & 0x7FFFFFFFFFFFFFFCLL))
    {
LABEL_6:
      v15 = vdupq_lane_s32(v10, 0);
      v16 = vdupq_lane_s32(v11, 0);
      v17 = vdupq_lane_s32(*v17.f32, 0);
      v64 = vdupq_lane_s32(v18, 0);
      v12 = vdupq_lane_s32(*v12.f32, 0);
      result = 4 * v20;
      v14 = vdupq_lane_s32(*v14.f32, 0);
      v65 = (a3 + 2 * v20);
      v13 = vdupq_lane_s32(*v13.f32, 0);
      do
      {
        v66 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(v25 + result), v24), v15, *(v26 + result)), v16, *(v27 + result)), v17, *(v28 + result)), v64, *(v22 + result)), v12, *(v23 + result)), v14, *(v30 + result)), v13, *(v31 + result));
        v10 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v66.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v66, v66, 8uLL))))));
        *v65++ = v10;
        v20 += 4;
        ++v25;
        v26 += 16;
        v27 += 16;
        v28 += 16;
        v22 += 16;
        v23 += 16;
        v30 += 16;
        v31 += 16;
      }

      while (v20 <= v19);
    }
  }

  if (v20 < a5)
  {
    v67 = *a2;
    v68 = *(a2 + 8);
    v10.i32[0] = *a4;
    v69 = *(a4 + 4);
    v70 = *(a2 + 16);
    v71 = *(a2 + 24);
    v12.i32[0] = *(a4 + 8);
    v13.i32[0] = *(a4 + 12);
    v72 = *(a2 + 32);
    v73 = *(a2 + 40);
    v14.i32[0] = *(a4 + 16);
    v15.i32[0] = *(a4 + 20);
    v16.i32[0] = *(a4 + 24);
    v17.i32[0] = *(a4 + 28);
    v74 = v20;
    v75 = a5;
    result = a5 - v74;
    v76 = v74;
    v78 = *(a2 + 48);
    v77 = *(a2 + 56);
    if (result <= 3)
    {
      goto LABEL_13;
    }

    v79 = vdupq_lane_s32(v10, 0);
    v80 = vdupq_lane_s32(*v12.f32, 0);
    v81 = vdupq_lane_s32(*v13.f32, 0);
    v82 = vdupq_lane_s32(*v14.f32, 0);
    v76 = (result & 0xFFFFFFFFFFFFFFFCLL) + v74;
    v83 = 4 * v74;
    v84 = (a3 + 2 * v74);
    v85 = vdupq_lane_s32(*v15.f32, 0);
    v86 = *(a2 + 56);
    v87 = vdupq_lane_s32(*v16.f32, 0);
    v88 = *(a2 + 48);
    v89 = *(a2 + 40);
    v90 = *(a2 + 32);
    v91 = *(a2 + 24);
    v92 = vdupq_lane_s32(*v17.f32, 0);
    v93 = v70;
    v94 = v68;
    v95 = v67;
    v96 = result & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v97 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(v94 + v83), v69), v79, *(v95 + v83)), v80, *(v93 + v83)), v81, *(v91 + v83)), v82, *(v90 + v83)), v85, *(v89 + v83)), v87, *(v88 + v83)), v92, *(v86 + v83));
      *v84++ = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v97.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v97, v97, 8uLL))))));
      ++v95;
      v94 += 16;
      v93 += 16;
      v91 += 16;
      v90 += 16;
      v89 += 16;
      v88 += 16;
      v86 += 16;
      v96 -= 4;
    }

    while (v96);
    if (result != (result & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_13:
      result = 0;
      v98 = &v67->i8[4 * v76];
      v99 = v68 + 4 * v76;
      v100 = v70 + 4 * v76;
      v101 = v71 + 4 * v76;
      v102 = v72 + 4 * v76;
      v103 = v73 + 4 * v76;
      v104 = v78 + 4 * v76;
      v105 = v77 + 4 * v76;
      v106 = v75 - v76;
      v107 = &a3->i8[2 * v76];
      do
      {
        v108 = rintf((((((((*(v99 + 4 * result) * v69) + (*&v98[4 * result] * *v10.i32)) + (*(v100 + 4 * result) * v12.f32[0])) + (*(v101 + 4 * result) * v13.f32[0])) + (*(v102 + 4 * result) * v14.f32[0])) + (*(v103 + 4 * result) * v15.f32[0])) + (*(v104 + 4 * result) * v16.f32[0])) + (*(v105 + 4 * result) * v17.f32[0]));
        if (v108 <= -32768)
        {
          LODWORD(v108) = -32768;
        }

        if (v108 >= 0x7FFF)
        {
          LOWORD(v108) = 0x7FFF;
        }

        *&v107[2 * result++] = v108;
      }

      while (v106 != result);
    }
  }

  return result;
}

uint64_t sub_10034777C(uint64_t a1, float32x4_t **a2, int16x8_t *a3, const float *a4, int a5)
{
  v7 = vld1q_dup_f32(a4);
  v6 = a4 + 1;
  result = 0;
  v9 = a5 - 8;
  if (a5 >= 8)
  {
    v10 = vld1q_dup_f32(v6);
    v11 = a4 + 2;
    v12 = vld1q_dup_f32(v11);
    v13 = a4 + 3;
    v14 = vld1q_dup_f32(v13);
    v15 = a4 + 4;
    v16 = vld1q_dup_f32(v15);
    v17 = a4 + 5;
    v18 = vld1q_dup_f32(v17);
    v19 = a4 + 6;
    v20 = vld1q_dup_f32(v19);
    v21 = a4 + 7;
    v22 = a2[7] + 1;
    v23 = *a2 + 1;
    v24 = a2[6] + 1;
    v25 = a2[1] + 1;
    v26 = a2[5] + 1;
    v27 = a2[2] + 1;
    v28 = vld1q_dup_f32(v21);
    v29 = a2[4] + 1;
    v30 = a2[3] + 1;
    v31 = &off_1004B0000;
    v32 = &off_1004B0000;
    do
    {
      v33 = v23[-1];
      v34 = *v23;
      v35 = v25[-1];
      v36 = *v25;
      v38 = v27[-1];
      v37 = *v27;
      v40 = v30[-1];
      v39 = *v30;
      v42 = v29[-1];
      v41 = *v29;
      v44 = v26[-1];
      v43 = *v26;
      v46 = v24[-1];
      v45 = *v24;
      v48 = v22[-1];
      v47 = *v22;
      if (atomic_load_explicit(qword_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(&qword_1004B00A0, memory_order_acquire))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v189 = a3;
        v153 = result;
        v185 = v9;
        v149 = v22;
        v177 = v24;
        v181 = v23;
        v169 = v26;
        v173 = v25;
        v161 = v29;
        v165 = v27;
        v157 = v30;
        v141 = v10;
        v145 = v7;
        v133 = v14;
        v137 = v12;
        v125 = v18;
        v129 = v16;
        v117 = v28;
        v121 = v20;
        v109 = v34;
        v113 = v33;
        v101 = v37;
        v105 = v36;
        v93 = v41;
        v97 = v39;
        v85 = v45;
        v89 = v43;
        v77 = v47;
        v81 = v35;
        v69 = v40;
        v73 = v38;
        v61 = v44;
        v65 = v42;
        v53 = v48;
        v57 = v46;
        sub_1003C8444();
        v48 = v53;
        v46 = v57;
        v44 = v61;
        v42 = v65;
        v40 = v69;
        v38 = v73;
        v47 = v77;
        v35 = v81;
        v45 = v85;
        v43 = v89;
        v41 = v93;
        v39 = v97;
        v37 = v101;
        v36 = v105;
        v34 = v109;
        v33 = v113;
        v28 = v117;
        v20 = v121;
        v18 = v125;
        v16 = v129;
        v14 = v133;
        v12 = v137;
        v10 = v141;
        v7 = v145;
        v32 = &off_1004B0000;
        v31 = &off_1004B0000;
        v30 = v157;
        v29 = v161;
        v27 = v165;
        v26 = v169;
        v25 = v173;
        v24 = v177;
        v23 = v181;
        v22 = v149;
        v9 = v185;
        LODWORD(result) = v153;
        a3 = v189;
        if (atomic_load_explicit(&qword_1004B00A0, memory_order_acquire))
        {
LABEL_5:
          v49 = v31[9];
          v50 = v32[7];
          if (atomic_load_explicit(qword_1004B0080, memory_order_acquire))
          {
            goto LABEL_6;
          }

          goto LABEL_11;
        }
      }

      v190 = a3;
      v154 = result;
      v186 = v9;
      v150 = v22;
      v178 = v24;
      v182 = v23;
      v170 = v26;
      v174 = v25;
      v162 = v29;
      v166 = v27;
      v158 = v30;
      v142 = v10;
      v146 = v7;
      v134 = v14;
      v138 = v12;
      v126 = v18;
      v130 = v16;
      v118 = v28;
      v122 = v20;
      v110 = v34;
      v114 = v33;
      v102 = v37;
      v106 = v36;
      v94 = v41;
      v98 = v39;
      v86 = v45;
      v90 = v43;
      v78 = v47;
      v82 = v35;
      v70 = v40;
      v74 = v38;
      v62 = v44;
      v66 = v42;
      v54 = v48;
      v58 = v46;
      sub_1003C848C();
      v48 = v54;
      v46 = v58;
      v44 = v62;
      v42 = v66;
      v40 = v70;
      v38 = v74;
      v47 = v78;
      v35 = v82;
      v45 = v86;
      v43 = v90;
      v41 = v94;
      v39 = v98;
      v37 = v102;
      v36 = v106;
      v34 = v110;
      v33 = v114;
      v28 = v118;
      v20 = v122;
      v18 = v126;
      v16 = v130;
      v14 = v134;
      v12 = v138;
      v10 = v142;
      v7 = v146;
      v32 = &off_1004B0000;
      v31 = &off_1004B0000;
      v30 = v158;
      v29 = v162;
      v27 = v166;
      v26 = v170;
      v25 = v174;
      v24 = v178;
      v23 = v182;
      v22 = v150;
      v9 = v186;
      LODWORD(result) = v154;
      a3 = v190;
      v49 = xmmword_1004B0090;
      v50 = xmmword_1004B0070;
      if (atomic_load_explicit(qword_1004B0080, memory_order_acquire))
      {
LABEL_6:
        if ((atomic_load_explicit(&qword_1004B00A0, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

LABEL_11:
      v191 = a3;
      v155 = result;
      v187 = v9;
      v151 = v22;
      v179 = v24;
      v183 = v23;
      v171 = v26;
      v175 = v25;
      v163 = v29;
      v167 = v27;
      v159 = v30;
      v143 = v10;
      v147 = v7;
      v135 = v14;
      v139 = v12;
      v127 = v18;
      v131 = v16;
      v119 = v28;
      v123 = v20;
      v111 = v34;
      v115 = v33;
      v103 = v37;
      v107 = v36;
      v95 = v41;
      v99 = v39;
      v87 = v45;
      v91 = v43;
      v79 = v47;
      v83 = v35;
      v71 = v40;
      v75 = v38;
      v63 = v44;
      v67 = v42;
      v55 = v48;
      v59 = v46;
      sub_1003C8444();
      v48 = v55;
      v46 = v59;
      v44 = v63;
      v42 = v67;
      v40 = v71;
      v38 = v75;
      v47 = v79;
      v35 = v83;
      v45 = v87;
      v43 = v91;
      v41 = v95;
      v39 = v99;
      v37 = v103;
      v36 = v107;
      v34 = v111;
      v33 = v115;
      v28 = v119;
      v20 = v123;
      v18 = v127;
      v16 = v131;
      v14 = v135;
      v12 = v139;
      v10 = v143;
      v7 = v147;
      v32 = &off_1004B0000;
      v31 = &off_1004B0000;
      v30 = v159;
      v29 = v163;
      v27 = v167;
      v26 = v171;
      v25 = v175;
      v24 = v179;
      v23 = v183;
      v22 = v151;
      v9 = v187;
      LODWORD(result) = v155;
      a3 = v191;
      if ((atomic_load_explicit(&qword_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_12:
        v192 = a3;
        v156 = result;
        v188 = v9;
        v152 = v22;
        v180 = v24;
        v184 = v23;
        v172 = v26;
        v176 = v25;
        v164 = v29;
        v168 = v27;
        v160 = v30;
        v144 = v10;
        v148 = v7;
        v136 = v14;
        v140 = v12;
        v128 = v18;
        v132 = v16;
        v120 = v28;
        v124 = v20;
        v112 = v34;
        v116 = v33;
        v104 = v37;
        v108 = v36;
        v96 = v41;
        v100 = v39;
        v88 = v45;
        v92 = v43;
        v80 = v47;
        v84 = v35;
        v72 = v40;
        v76 = v38;
        v64 = v44;
        v68 = v42;
        v56 = v48;
        v60 = v46;
        sub_1003C848C();
        v48 = v56;
        v46 = v60;
        v44 = v64;
        v42 = v68;
        v40 = v72;
        v38 = v76;
        v47 = v80;
        v35 = v84;
        v45 = v88;
        v43 = v92;
        v41 = v96;
        v39 = v100;
        v37 = v104;
        v36 = v108;
        v34 = v112;
        v33 = v116;
        v28 = v120;
        v20 = v124;
        v18 = v128;
        v16 = v132;
        v14 = v136;
        v12 = v140;
        v10 = v144;
        v7 = v148;
        v32 = &off_1004B0000;
        v31 = &off_1004B0000;
        v30 = v160;
        v29 = v164;
        v27 = v168;
        v26 = v172;
        v25 = v176;
        v24 = v180;
        v23 = v184;
        v22 = v152;
        v9 = v188;
        LODWORD(result) = v156;
        a3 = v192;
      }

LABEL_7:
      v51 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v33), v35, v10), v38, v12), v40, v14), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v16, v42), v44, v18), v46, v20), v48, v28));
      v52 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v34), v36, v10), v37, v12), v39, v14), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v16, v41), v43, v18), v45, v20), v47, v28));
      *a3++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v51, vorrq_s8(vandq_s8(v50, v51), v49)))), vcvtq_s32_f32(vaddq_f32(v52, vorrq_s8(vandq_s8(v32[7], v52), v31[9]))));
      result = (result + 8);
      v22 += 2;
      v23 += 2;
      v24 += 2;
      v25 += 2;
      v26 += 2;
      v27 += 2;
      v29 += 2;
      v30 += 2;
    }

    while (v9 >= result);
  }

  return result;
}

uint64_t sub_100347C50(uint64_t a1)
{
  *a1 = off_10047A6F8;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_100347D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A738;
  v19 = *a2;
  v20 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v20;
  *(a1 + 40) = *(a2 + 32);
  v21 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v21;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v19) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v24 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v25 = *(a3 + 32);
  v27 = *(a3 + 48);
  v26 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v25;
  *(a1 + 152) = v27;
  *(a1 + 160) = v26;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v24;
  if (v26)
  {
    atomic_fetch_add((v26 + 20), 1u);
    if (*(a3 + 4) <= 2)
    {
LABEL_8:
      v28 = *(a3 + 72);
      v29 = *(a1 + 176);
      *v29 = *v28;
      v29[1] = v28[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v24) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 108) = 0;
  sub_100269B58(a1 + 104, a3);
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = *a8;
  *(a1 + 240) = *a9;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 256) = a12;
  if (a10 >= 17)
  {
    v32[0] = 0;
    v32[1] = 0;
    v30 = sub_1002A80E0(v32, 18);
    *(v30 + 16) = 17754;
    *v30 = *"ksize <= MAX_ESIZE";
    sub_1002A8980(-215, v32, "resizeGeneric_Invoker", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2211);
  }

  return a1;
}

void sub_100347F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_100347FF0(uint64_t a1)
{
  sub_100348E4C(a1);

  operator delete();
}

_DWORD *sub_100348028(_DWORD *result, int *a2)
{
  v2 = result;
  v3 = result[2];
  v4 = (result[60] + 15) & 0xFFFFFFF0;
  LODWORD(v5) = result[62];
  if ((v5 * v4) >= 0x109)
  {
    operator new[]();
  }

  memset(v33, 0, 128);
  memset(v32, 0, sizeof(v32));
  if (v5 >= 1)
  {
    result = memset(__b, 255, 4 * v5);
    v6 = 4 * v4;
    if (v5 == 1)
    {
      v7 = 0;
LABEL_9:
      v11 = &v28[v7 * v4];
      v12 = &v32[v7];
      v13 = v5 - v7;
      do
      {
        *v12++ = v11;
        v11 = (v11 + v6);
        --v13;
      }

      while (v13);
      goto LABEL_11;
    }

    v7 = v5 & 0x7FFFFFFE;
    v8 = &v32[1];
    v9 = v7;
    v10 = v28;
    do
    {
      *(v8 - 1) = v10;
      *v8 = (v10 + v6);
      v10 = (v10 + 8 * v4);
      v8 += 2;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v5)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v14 = *a2;
  if (v14 < a2[1])
  {
    v15 = *(v2 + 28) + 4 * v14 * v5;
    v25 = ((v3 >> 3) & 0x1FF) + 1;
    do
    {
      if (v5 >= 1)
      {
        v27 = v15;
        v16 = 0;
        LODWORD(v17) = 0;
        v18 = (*(*(v2 + 26) + 4 * v14) - (v5 >> 1) + 1);
        v19 = v5;
        do
        {
          v21 = v2[59];
          if ((v16 + v18) >= v21)
          {
            v22 = v21 - 1;
          }

          else
          {
            v22 = v16 + v18;
          }

          if ((v16 + v18) >= 0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          if (v17 <= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v17;
          }

          if (v17 < v5)
          {
            while (v17 > 0xF || v23 != __b[v17])
            {
              if (++v17 >= v5)
              {
                goto LABEL_15;
              }
            }

            if (v17 > v16)
            {
              memcpy(v32[v16], v32[v17], 4 * v4);
              LODWORD(v5) = v2[62];
            }
          }

LABEL_15:
          if (v16 >= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v16;
          }

          if (v17 == v5)
          {
            v19 = v20;
          }

          v33[v16] = *(v2 + 3) + **(v2 + 10) * v23;
          __b[v16++] = v23;
        }

        while (v16 < v5);
        v24 = v2[60];
        if (v5 <= v19)
        {
          v15 = v27;
          goto LABEL_41;
        }

        sub_1003483D4(&v30, &v33[v19], &v32[v19], v5 - v19, *(v2 + 25), *(v2 + 27), v2[58], v24, v25, v2[63], v2[64]);
        v15 = v27;
      }

      v24 = v2[60];
LABEL_41:
      result = sub_1003487C8(&v29, v32, *(v2 + 15) + *(v2 + 23) * v14++, v15, v24);
      v5 = v2[62];
      v15 += 4 * v5;
    }

    while (v14 < a2[1]);
  }

  return result;
}

void sub_100348398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003483D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, float *a6, unsigned int a7, int a8, unsigned int a9, int a10, int a11)
{
  if (a4 >= 1)
  {
    v11 = 0;
    v12 = 2 * a9;
    v13 = 4 * a9;
    v14 = 3 * a9;
    v15 = -3 * a9;
    if (a9 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a9;
    }

    result = a11;
    do
    {
      LODWORD(v18) = 0;
      v19 = *(a2 + 8 * v11);
      v20 = *(a3 + 8 * v11);
      v21 = a10;
      while (1)
      {
        if (v18 < v21)
        {
          v18 = v18;
          do
          {
            v22 = *(a5 + 4 * v18);
            v23 = v15 + v22;
            v24 = v14 - v22;
            v25 = v15 + v22;
            if (v15 + v22 >= a7)
            {
              v26 = ((v23 & ~(v23 >> 31)) + v24 - ((v23 & ~(v23 >> 31)) + v24 != 0)) / v16;
              if ((v23 & ~(v23 >> 31)) + v24)
              {
                ++v26;
              }

              v25 = v22 + a9 * (v26 - 2);
              do
              {
                v25 -= a9;
              }

              while (v25 >= a7);
            }

            v27 = v23 + a9;
            v28 = v24 - a9;
            v29 = v22 - v12;
            if (v22 - v12 >= a7)
            {
              v30 = ((v27 & ~(v27 >> 31)) + v28 - ((v27 & ~(v27 >> 31)) + v28 != 0)) / v16;
              if ((v27 & ~(v27 >> 31)) + v28)
              {
                ++v30;
              }

              v29 = v22 + a9 * (v30 - 1);
              do
              {
                v29 -= a9;
              }

              while (v29 >= a7);
            }

            v31 = v27 + a9;
            v32 = v28 - a9;
            v33 = v22 - a9;
            if (v22 - a9 >= a7)
            {
              v34 = ((v31 & ~(v31 >> 31)) + v32 - ((v31 & ~(v31 >> 31)) + v32 != 0)) / v16;
              if ((v31 & ~(v31 >> 31)) + v32)
              {
                ++v34;
              }

              v33 = v22 + v34 * a9;
              do
              {
                v33 -= a9;
              }

              while (v33 >= a7);
            }

            v35 = v31 + a9;
            v36 = v32 - a9;
            v37 = *(a5 + 4 * v18);
            if (v22 >= a7)
            {
              v38 = ((v35 & ~(v35 >> 31)) + v36 - ((v35 & ~(v35 >> 31)) + v36 != 0)) / v16;
              if ((v35 & ~(v35 >> 31)) + v36)
              {
                ++v38;
              }

              v37 = v22 + a9 + a9 * v38;
              do
              {
                v37 -= a9;
              }

              while (v37 >= a7);
            }

            v39 = v35 + a9;
            v40 = v36 - a9;
            v41 = v22 + a9;
            if (v22 + a9 >= a7)
            {
              v42 = ((v39 & ~(v39 >> 31)) + v40 - ((v39 & ~(v39 >> 31)) + v40 != 0)) / v16;
              if ((v39 & ~(v39 >> 31)) + v40)
              {
                ++v42;
              }

              v41 = v22 + a9 * (v42 + 2);
              do
              {
                v41 -= a9;
              }

              while (v41 >= a7);
            }

            v43 = v39 + a9;
            v44 = v40 - a9;
            v45 = v12 + v22;
            if (v12 + v22 >= a7)
            {
              v46 = (v43 & ~(v43 >> 31)) + v44;
              v47 = (v46 - (v46 != 0)) / v16;
              if (v46)
              {
                ++v47;
              }

              v45 = v22 + a9 * (v47 + 3);
              do
              {
                v45 -= a9;
              }

              while (v45 >= a7);
            }

            v48 = *(v19 + 4 * v25);
            v49 = v43 + a9;
            v50 = v44 - a9;
            v51 = v14 + v22;
            if (v14 + v22 >= a7)
            {
              v52 = ((v49 & ~(v49 >> 31)) + v50 - ((v49 & ~(v49 >> 31)) + v50 != 0)) / v16;
              if ((v49 & ~(v49 >> 31)) + v50)
              {
                ++v52;
              }

              v51 = v22 + a9 * (v52 + 4);
              do
              {
                v51 -= a9;
              }

              while (v51 >= a7);
            }

            v53 = *(v19 + 4 * v51);
            v54 = v13 + v22;
            if (v13 + v22 >= a7)
            {
              v56 = ((v49 + a9) & ~((v49 + a9) >> 31)) + v50 - a9;
              v55 = v56 == 0;
              v57 = (v56 - (v56 != 0)) / v16;
              if (!v55)
              {
                ++v57;
              }

              v54 = v22 + a9 * (v57 + 5);
              do
              {
                v54 -= a9;
              }

              while (v54 >= a7);
            }

            *(v20 + 4 * v18++) = ((((((((v48 * *a6) + 0.0) + (*(v19 + 4 * v29) * a6[1])) + (*(v19 + 4 * v33) * a6[2])) + (*(v19 + 4 * v37) * a6[3])) + (*(v19 + 4 * v41) * a6[4])) + (*(v19 + 4 * v45) * a6[5])) + (v53 * a6[6])) + (*(v19 + 4 * v54) * a6[7]);
            a6 += 8;
          }

          while (v18 != v21);
          LODWORD(v18) = v21;
        }

        if (v21 == a8)
        {
          break;
        }

        v21 = a8;
        if (v18 < a11)
        {
          v58 = v18;
          v59 = 4 * v18;
          v60 = (a5 + v59);
          v61 = (v20 + v59);
          v62 = a11 - v58;
          do
          {
            v63 = *v60++;
            *v61++ = (((((((*(v19 + 4 * (v63 - v12)) * a6[1]) + (*(v19 + 4 * (v63 - v14)) * *a6)) + (*(v19 + 4 * (v63 - a9)) * a6[2])) + (*(v19 + 4 * v63) * a6[3])) + (*(v19 + 4 * (v63 + a9)) * a6[4])) + (*(v19 + 4 * (v63 + v12)) * a6[5])) + (*(v19 + 4 * (v63 + v14)) * a6[6])) + (*(v19 + 4 * (v63 + v13)) * a6[7]);
            a6 += 8;
            --v62;
          }

          while (v62);
          LODWORD(v18) = a11;
          v21 = a8;
        }
      }

      a6 -= 8 * a8;
      ++v11;
    }

    while (v11 != a4);
  }

  return result;
}

unint64_t sub_1003487C8(uint64_t a1, float32x4_t **a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  v15 = vld1q_dup_f32(a4);
  result = a4 + 4;
  v16 = (a5 - 4);
  if (a5 >= 4)
  {
    v18 = 0;
    v19 = vld1q_dup_f32(result);
    v20 = (a4 + 8);
    v21 = vld1q_dup_f32(v20);
    v22 = (a4 + 12);
    v23 = vld1q_dup_f32(v22);
    v24 = (a4 + 16);
    v25 = vld1q_dup_f32(v24);
    v26 = (a4 + 20);
    v27 = vld1q_dup_f32(v26);
    v28 = (a4 + 24);
    v29 = vld1q_dup_f32(v28);
    v30 = (a4 + 28);
    v31 = vld1q_dup_f32(v30);
    result = a3;
    do
    {
      v32 = *v5++;
      v33 = vmulq_f32(v15, v32);
      v34 = *v6++;
      v35 = vmlaq_f32(v33, v34, v19);
      v36 = *v7++;
      v37 = vmlaq_f32(v35, v36, v21);
      v38 = *v8++;
      v39 = vmlaq_f32(v37, v38, v23);
      v40 = *v9++;
      v41 = vmulq_f32(v25, v40);
      v42 = *v10++;
      v43 = vmlaq_f32(v41, v42, v27);
      v44 = *v12++;
      v45 = vmlaq_f32(v43, v44, v29);
      v46 = *v13++;
      *result = vaddq_f32(v39, vmlaq_f32(v45, v46, v31));
      result += 16;
      v18 += 4;
    }

    while (v18 <= v16);
    LODWORD(v17) = v18;
    if (v18 > v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    LODWORD(v17) = 0;
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_10;
    }
  }

  v17 = v17;
  v47 = a2[4];
  v48 = a2[5];
  v49 = a2[6];
  v50 = a2[7];
  v51 = *a2;
  v52 = a2[1];
  v53 = v16 - v17;
  v55 = a2[2];
  v54 = a2[3];
  if (v53 <= 0xB)
  {
    goto LABEL_8;
  }

  v76 = v53 >> 2;
  result = 4 * v17;
  v77 = a3 + result;
  v78 = result + 16 * v76 + 16;
  v79 = a3 + v78;
  v80 = a3 + result >= v51 + v78 || v51->u64 + 4 * v17 >= v79;
  v81 = !v80;
  v82 = v77 >= v52 + v78 || v52->u64 + 4 * v17 >= v79;
  v83 = !v82;
  v84 = v77 >= v55 + v78 || v55->u64 + 4 * v17 >= v79;
  v85 = !v84;
  v86 = v77 >= v54 + v78 || v54->u64 + 4 * v17 >= v79;
  v87 = !v86;
  v88 = v77 >= v47 + v78 || v47 + result >= v79;
  v89 = !v88;
  v90 = v77 >= v48 + v78 || v48 + result >= v79;
  v91 = !v90;
  v92 = v50 + v78;
  v93 = v77 >= v49 + v78 || v49 + result >= v79;
  v94 = !v93;
  v95 = v77 >= v92 || v50 + result >= v79;
  v96 = !v95;
  if (v79 > a4 && v77 < a4 + 32)
  {
    goto LABEL_8;
  }

  if (v81)
  {
    goto LABEL_8;
  }

  if (v83)
  {
    goto LABEL_8;
  }

  if (v85)
  {
    goto LABEL_8;
  }

  if (v87)
  {
    goto LABEL_8;
  }

  if (v89)
  {
    goto LABEL_8;
  }

  if (v91)
  {
    goto LABEL_8;
  }

  if (v94)
  {
    goto LABEL_8;
  }

  if (v96)
  {
    goto LABEL_8;
  }

  v98 = v76 + 1;
  v99 = v98 & 0x7FFFFFFFFFFFFFFCLL;
  v100 = a2[7];
  v101 = a2[6];
  v102 = a2[5];
  v103 = a2[4];
  v104 = a2[3];
  v105 = a2[2];
  v106 = a2[1];
  v107 = *a2;
  v108 = a3;
  v17 = v17 + 4 * (v98 & 0x7FFFFFFFFFFFFFFCLL);
  do
  {
    v109 = a4;
    v110 = vld1q_dup_f32(v109++);
    v111 = vmlaq_n_f32(vmulq_f32(v110, *(v107 + result)), *(v106 + result), *v109);
    v112 = vmlaq_n_f32(vmulq_f32(v110, *(v107 + result + 16)), *(v106 + result + 16), *v109);
    v113 = vmlaq_n_f32(vmulq_f32(v110, *(v107 + result + 32)), *(v106 + result + 32), *v109);
    v114 = vmlaq_n_f32(vmulq_f32(v110, *(v107 + result + 48)), *(v106 + result + 48), *v109);
    v110.i32[0] = *(a4 + 8);
    v115 = *(a4 + 12);
    v116 = vmlaq_n_f32(vmlaq_n_f32(v111, *(v105 + result), v110.f32[0]), *(v104 + result), v115);
    v117 = vmlaq_n_f32(vmlaq_n_f32(v112, *(v105 + result + 16), v110.f32[0]), *(v104 + result + 16), v115);
    v118 = vmlaq_n_f32(vmlaq_n_f32(v113, *(v105 + result + 32), v110.f32[0]), *(v104 + result + 32), v115);
    v119 = vmlaq_n_f32(vmlaq_n_f32(v114, *(v105 + result + 48), v110.f32[0]), *(v104 + result + 48), v115);
    v110.i32[0] = *(a4 + 16);
    v120 = *(a4 + 20);
    v121 = vmlaq_n_f32(vmlaq_n_f32(v116, *(v103 + result), v110.f32[0]), *(v102 + result), v120);
    v122 = vmlaq_n_f32(vmlaq_n_f32(v117, *(v103 + result + 16), v110.f32[0]), *(v102 + result + 16), v120);
    v123 = vmlaq_n_f32(vmlaq_n_f32(v118, *(v103 + result + 32), v110.f32[0]), *(v102 + result + 32), v120);
    v124 = vmlaq_n_f32(vmlaq_n_f32(v119, *(v103 + result + 48), v110.f32[0]), *(v102 + result + 48), v120);
    v110.i32[0] = *(a4 + 24);
    v125 = *(a4 + 28);
    v126 = vmlaq_n_f32(vmlaq_n_f32(v121, *(v101 + result), v110.f32[0]), *(v100 + result), v125);
    v127 = vmlaq_n_f32(vmlaq_n_f32(v122, *(v101 + result + 16), v110.f32[0]), *(v100 + result + 16), v125);
    v128 = vmlaq_n_f32(vmlaq_n_f32(v124, *(v101 + result + 48), v110.f32[0]), *(v100 + result + 48), v125);
    v129 = (v108 + result);
    v129[2] = vmlaq_n_f32(vmlaq_n_f32(v123, *(v101 + result + 32), v110.f32[0]), *(v100 + result + 32), v125);
    v129[3] = v128;
    *v129 = v126;
    v129[1] = v127;
    v108 += 64;
    v107 += 4;
    v106 += 4;
    v105 += 4;
    v104 += 4;
    v103 += 4;
    v102 += 4;
    v101 += 4;
    v100 += 4;
    v99 -= 4;
  }

  while (v99);
  if (v98 != (v98 & 0x7FFFFFFFFFFFFFFCLL))
  {
LABEL_8:
    result = 4 * v17;
    v56 = a3;
    do
    {
      *(v56 + result) = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v51 + result), *a4), *(v52 + result), *(a4 + 4)), *(v55 + result), *(a4 + 8)), *(v54 + result), *(a4 + 12)), *(v47 + result), *(a4 + 16)), *(v48 + result), *(a4 + 20)), *(v49 + result), *(a4 + 24)), *(v50 + result), *(a4 + 28));
      v17 += 4;
      ++v51;
      ++v52;
      v56 += 16;
      ++v55;
      ++v54;
      ++v47;
      ++v48;
      ++v49;
      ++v50;
    }

    while (v17 <= v16);
  }

LABEL_10:
  if (v17 < a5)
  {
    v58 = *a2;
    v57 = a2[1];
    v60 = a2[2];
    v59 = a2[3];
    v62 = a2[4];
    v61 = a2[5];
    v64 = a2[6];
    v63 = a2[7];
    v17 = v17;
    v65 = a5;
    result = a5 - v17;
    if (result <= 0xB)
    {
      goto LABEL_12;
    }

    v130 = 4 * v17;
    v131 = a3 + v130;
    v132 = 4 * a5;
    v133 = a3 + v132;
    v134 = a3 + v130 < a4 + 32 && v133 > a4;
    v135 = v134;
    v136 = v131 >= v57 + v132 || v57->u64 + 4 * v17 >= v133;
    v137 = !v136;
    v138 = v131 >= v60 + v132 || v60->u64 + 4 * v17 >= v133;
    v139 = !v138;
    v140 = v131 >= v59 + v132 || v59->u64 + 4 * v17 >= v133;
    v141 = !v140;
    v142 = v131 >= v62 + v132 || v62->u64 + 4 * v17 >= v133;
    v143 = !v142;
    v144 = v131 >= v61 + v132 || v61 + v130 >= v133;
    v145 = !v144;
    v146 = v131 >= v64 + v132 || v64 + v130 >= v133;
    v147 = !v146;
    v148 = v131 >= v63 + v132 || v63 + v130 >= v133;
    v149 = !v148;
    v150 = v58 + v132;
    if (v58->u64 + 4 * v17 < v133 && v131 < v150)
    {
      goto LABEL_12;
    }

    if (v135)
    {
      goto LABEL_12;
    }

    if (v137)
    {
      goto LABEL_12;
    }

    if (v139)
    {
      goto LABEL_12;
    }

    if (v141)
    {
      goto LABEL_12;
    }

    if (v143)
    {
      goto LABEL_12;
    }

    if (v145)
    {
      goto LABEL_12;
    }

    if (v147)
    {
      goto LABEL_12;
    }

    if (v149)
    {
      goto LABEL_12;
    }

    v17 = (result & 0xFFFFFFFFFFFFFFFCLL) + v17;
    v152 = a4;
    v153 = vld1q_dup_f32(v152++);
    v154 = vld1q_dup_f32(v152);
    v155 = (a4 + 8);
    v156 = vld1q_dup_f32(v155);
    v157 = (a4 + 12);
    v158 = vld1q_dup_f32(v157);
    v159 = (a4 + 16);
    v160 = vld1q_dup_f32(v159);
    v161 = (a4 + 20);
    v162 = vld1q_dup_f32(v161);
    v163 = (a4 + 24);
    v164 = vld1q_dup_f32(v163);
    v165 = (a4 + 28);
    v166 = a3;
    v167 = v63;
    v168 = v64;
    v169 = v61;
    v170 = v62;
    v171 = v59;
    v172 = vld1q_dup_f32(v165);
    v173 = v60;
    v174 = v57;
    v175 = v58;
    v176 = result & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v177 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*(v174++ + v130), v154), v153, *(v175++ + v130)), v156, *(v173++ + v130)), v158, *(v171++ + v130)), v160, *(v170 + v130)), v162, *(v169 + v130)), v164, *(v168 + v130));
      *(v166 + v130) = vmlaq_f32(v177, v172, *(v167 + v130));
      ++v170;
      ++v169;
      ++v168;
      ++v167;
      v166 += 16;
      v176 -= 4;
    }

    while (v176);
    if (result != (result & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_12:
      result = 0;
      v66 = &v58->i8[4 * v17];
      v67 = v57->i64 + 4 * v17;
      v68 = v60->i64 + 4 * v17;
      v69 = v59->i64 + 4 * v17;
      v70 = v62->i64 + 4 * v17;
      v71 = v61->i64 + 4 * v17;
      v72 = v64->i64 + 4 * v17;
      v73 = v63->i64 + 4 * v17;
      v74 = a3 + 4 * v17;
      v75 = v65 - v17;
      do
      {
        *(v74 + 4 * result) = (((((((*(v67 + 4 * result) * *(a4 + 4)) + (*&v66[4 * result] * *a4)) + (*(v68 + 4 * result) * *(a4 + 8))) + (*(v69 + 4 * result) * *(a4 + 12))) + (*(v70 + 4 * result) * *(a4 + 16))) + (*(v71 + 4 * result) * *(a4 + 20))) + (*(v72 + 4 * result) * *(a4 + 24))) + (*(v73 + 4 * result) * *(a4 + 28));
        ++result;
      }

      while (v75 != result);
    }
  }

  return result;
}

uint64_t sub_100348E4C(uint64_t a1)
{
  *a1 = off_10047A738;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_100348F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A778;
  v19 = *a2;
  v20 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v20;
  *(a1 + 40) = *(a2 + 32);
  v21 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v21;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v19) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v24 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v25 = *(a3 + 32);
  v27 = *(a3 + 48);
  v26 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v25;
  *(a1 + 152) = v27;
  *(a1 + 160) = v26;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v24;
  if (v26)
  {
    atomic_fetch_add((v26 + 20), 1u);
    if (*(a3 + 4) <= 2)
    {
LABEL_8:
      v28 = *(a3 + 72);
      v29 = *(a1 + 176);
      *v29 = *v28;
      v29[1] = v28[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v24) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 108) = 0;
  sub_100269B58(a1 + 104, a3);
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = *a8;
  *(a1 + 240) = *a9;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 256) = a12;
  if (a10 >= 17)
  {
    v32[0] = 0;
    v32[1] = 0;
    v30 = sub_1002A80E0(v32, 18);
    *(v30 + 16) = 17754;
    *v30 = *"ksize <= MAX_ESIZE";
    sub_1002A8980(-215, v32, "resizeGeneric_Invoker", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2211);
  }

  return a1;
}

void sub_100349198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_1003491EC(uint64_t a1)
{
  sub_100349F58(a1);

  operator delete();
}

void sub_100349224(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = (*(a1 + 240) + 15) & 0xFFFFFFF0;
  LODWORD(v5) = *(a1 + 248);
  if ((v5 * v4) >= 0x89)
  {
    operator new[]();
  }

  memset(v33, 0, 128);
  memset(v32, 0, sizeof(v32));
  if (v5 >= 1)
  {
    memset(__b, 255, 4 * v5);
    v6 = v4;
    if (v5 == 1)
    {
      v7 = 0;
LABEL_9:
      v11 = &v28[v7 * v4];
      v12 = &v32[0].i64[v7];
      v13 = v5 - v7;
      do
      {
        *v12++ = v11;
        v11 = (v11 + v6 * 8);
        --v13;
      }

      while (v13);
      goto LABEL_11;
    }

    v7 = v5 & 0x7FFFFFFE;
    v8 = &v32[0].i64[1];
    v9 = v7;
    v10 = v28;
    do
    {
      *(v8 - 1) = v10;
      *v8 = &v10[v6];
      v10 += 2 * v4;
      v8 += 2;
      v9 -= 2;
    }

    while (v9);
    if (v7 != v5)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v14 = *a2;
  if (v14 < a2[1])
  {
    v15 = (*(a1 + 224) + 4 * v14 * v5);
    v25 = ((v3 >> 3) & 0x1FF) + 1;
    do
    {
      if (v5 >= 1)
      {
        v27 = v15;
        v16 = 0;
        LODWORD(v17) = 0;
        v18 = (*(*(a1 + 208) + 4 * v14) - (v5 >> 1) + 1);
        v19 = v5;
        do
        {
          v21 = *(a1 + 236);
          if ((v16 + v18) >= v21)
          {
            v22 = v21 - 1;
          }

          else
          {
            v22 = v16 + v18;
          }

          if ((v16 + v18) >= 0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          if (v17 <= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v17;
          }

          if (v17 < v5)
          {
            while (v17 > 0xF || v23 != __b[v17])
            {
              if (++v17 >= v5)
              {
                goto LABEL_15;
              }
            }

            if (v17 > v16)
            {
              memcpy(v32[0].i64[v16], v32[0].i64[v17], 8 * v4);
              LODWORD(v5) = *(a1 + 248);
            }
          }

LABEL_15:
          if (v16 >= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v16;
          }

          if (v17 == v5)
          {
            v19 = v20;
          }

          v33[v16] = *(a1 + 24) + **(a1 + 80) * v23;
          __b[v16++] = v23;
        }

        while (v16 < v5);
        v24 = *(a1 + 240);
        if (v5 <= v19)
        {
          v15 = v27;
          goto LABEL_41;
        }

        sub_1003495D0(&v30, &v33[v19], v32 + 8 * v19, v5 - v19, *(a1 + 200), *(a1 + 216), *(a1 + 232), v24, v25, *(a1 + 252), *(a1 + 256));
        v15 = v27;
      }

      v24 = *(a1 + 240);
LABEL_41:
      sub_1003499FC(&v29, v32, *(a1 + 120) + *(a1 + 184) * v14++, v15, v24);
      v5 = *(a1 + 248);
      v15 += v5;
    }

    while (v14 < a2[1]);
  }
}

void sub_100349594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003495D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, float *a6, unsigned int a7, int a8, unsigned int a9, int a10, int a11)
{
  if (a4 >= 1)
  {
    v11 = 0;
    v12 = 2 * a9;
    v13 = 4 * a9;
    v14 = 3 * a9;
    v15 = -3 * a9;
    if (a9 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a9;
    }

    result = a11;
    do
    {
      v18 = 0;
      v19 = *(a2 + 8 * v11);
      v20 = *(a3 + 8 * v11);
      v21 = a10;
      while (1)
      {
        if (v18 < v21)
        {
          v22 = v18;
          do
          {
            v23 = *(a5 + 4 * v22);
            v24 = v15 + v23;
            v25 = v14 - v23;
            v26 = v15 + v23;
            if (v15 + v23 >= a7)
            {
              v27 = ((v24 & ~(v24 >> 31)) + v25 - ((v24 & ~(v24 >> 31)) + v25 != 0)) / v16;
              if ((v24 & ~(v24 >> 31)) + v25)
              {
                ++v27;
              }

              v26 = v23 + a9 * (v27 - 2);
              do
              {
                v26 -= a9;
              }

              while (v26 >= a7);
            }

            v28 = v24 + a9;
            v29 = v25 - a9;
            v30 = v23 - v12;
            if (v23 - v12 >= a7)
            {
              v31 = ((v28 & ~(v28 >> 31)) + v29 - ((v28 & ~(v28 >> 31)) + v29 != 0)) / v16;
              if ((v28 & ~(v28 >> 31)) + v29)
              {
                ++v31;
              }

              v30 = v23 + a9 * (v31 - 1);
              do
              {
                v30 -= a9;
              }

              while (v30 >= a7);
            }

            v32 = v28 + a9;
            v33 = v29 - a9;
            v34 = v23 - a9;
            if (v23 - a9 >= a7)
            {
              v35 = ((v32 & ~(v32 >> 31)) + v33 - ((v32 & ~(v32 >> 31)) + v33 != 0)) / v16;
              if ((v32 & ~(v32 >> 31)) + v33)
              {
                ++v35;
              }

              v34 = v23 + v35 * a9;
              do
              {
                v34 -= a9;
              }

              while (v34 >= a7);
            }

            v36 = v32 + a9;
            v37 = v33 - a9;
            v38 = *(a5 + 4 * v22);
            if (v23 >= a7)
            {
              v39 = ((v36 & ~(v36 >> 31)) + v37 - ((v36 & ~(v36 >> 31)) + v37 != 0)) / v16;
              if ((v36 & ~(v36 >> 31)) + v37)
              {
                ++v39;
              }

              v38 = v23 + a9 + a9 * v39;
              do
              {
                v38 -= a9;
              }

              while (v38 >= a7);
            }

            v40 = v36 + a9;
            v41 = v37 - a9;
            v42 = v23 + a9;
            if (v23 + a9 >= a7)
            {
              v43 = ((v40 & ~(v40 >> 31)) + v41 - ((v40 & ~(v40 >> 31)) + v41 != 0)) / v16;
              if ((v40 & ~(v40 >> 31)) + v41)
              {
                ++v43;
              }

              v42 = v23 + a9 * (v43 + 2);
              do
              {
                v42 -= a9;
              }

              while (v42 >= a7);
            }

            v44 = v40 + a9;
            v45 = v41 - a9;
            v46 = v12 + v23;
            if (v12 + v23 >= a7)
            {
              v47 = (v44 & ~(v44 >> 31)) + v45;
              v48 = (v47 - (v47 != 0)) / v16;
              if (v47)
              {
                ++v48;
              }

              v46 = v23 + a9 * (v48 + 3);
              do
              {
                v46 -= a9;
              }

              while (v46 >= a7);
            }

            v49 = *(v19 + 8 * v26);
            v50 = v44 + a9;
            v51 = v45 - a9;
            v52 = v14 + v23;
            if (v14 + v23 >= a7)
            {
              v53 = ((v50 & ~(v50 >> 31)) + v51 - ((v50 & ~(v50 >> 31)) + v51 != 0)) / v16;
              if ((v50 & ~(v50 >> 31)) + v51)
              {
                ++v53;
              }

              v52 = v23 + a9 * (v53 + 4);
              do
              {
                v52 -= a9;
              }

              while (v52 >= a7);
            }

            v54 = *(v19 + 8 * v52);
            v55 = v13 + v23;
            if (v13 + v23 >= a7)
            {
              v57 = ((v50 + a9) & ~((v50 + a9) >> 31)) + v51 - a9;
              v56 = v57 == 0;
              v58 = (v57 - (v57 != 0)) / v16;
              if (!v56)
              {
                ++v58;
              }

              v55 = v23 + a9 * (v58 + 5);
              do
              {
                v55 -= a9;
              }

              while (v55 >= a7);
            }

            *(v20 + 8 * v22++) = v49 * *a6 + 0.0 + *(v19 + 8 * v30) * a6[1] + *(v19 + 8 * v34) * a6[2] + *(v19 + 8 * v38) * a6[3] + *(v19 + 8 * v42) * a6[4] + *(v19 + 8 * v46) * a6[5] + v54 * a6[6] + *(v19 + 8 * v55) * a6[7];
            a6 += 8;
          }

          while (v22 != v21);
          v18 = v21;
        }

        if (v21 == a8)
        {
          break;
        }

        v21 = a8;
        if (v18 < a11)
        {
          v59 = (a5 + 4 * v18);
          v60 = (v20 + 8 * v18);
          v61 = a11 - v18;
          do
          {
            v62 = *v59++;
            *v60++ = *(v19 + 8 * (v62 - v12)) * a6[1] + *(v19 + 8 * (v62 - v14)) * *a6 + *(v19 + 8 * (v62 - a9)) * a6[2] + *(v19 + 8 * v62) * a6[3] + *(v19 + 8 * (v62 + a9)) * a6[4] + *(v19 + 8 * (v62 + v12)) * a6[5] + *(v19 + 8 * (v62 + v14)) * a6[6] + *(v19 + 8 * (v62 + v13)) * a6[7];
            a6 += 8;
            --v61;
          }

          while (v61);
          v18 = a11;
          v21 = a8;
        }
      }

      a6 -= 8 * a8;
      ++v11;
    }

    while (v11 != a4);
  }

  return result;
}

void sub_1003499FC(uint64_t a1, int64x2_t *a2, unint64_t a3, float *a4, int a5)
{
  v5 = (a5 - 4);
  if (a5 < 4)
  {
    LODWORD(v6) = 0;
    goto LABEL_7;
  }

  v7 = *a4;
  v8 = a2[2].u64[0];
  v9 = a2[2].u64[1];
  *&v10 = a4[1];
  v11 = a2->i64[0];
  v12 = a2->u64[1];
  *&v13 = a4[2];
  v15 = a2[1].u64[0];
  v14 = a2[1].u64[1];
  *&v16 = a4[3];
  *&v17 = a4[4];
  *&v18 = a4[5];
  *&v19 = a4[6];
  *&v20 = a4[7];
  v21 = a2[3].u64[0];
  v22 = a2[3].u64[1];
  if (v5 <= 0xB)
  {
    v6 = 0;
LABEL_5:
    v23 = vdupq_lane_s64(v10, 0);
    v24 = vdupq_lane_s64(v13, 0);
    v25 = vdupq_lane_s64(v16, 0);
    v26 = vdupq_lane_s64(v17, 0);
    v27 = vdupq_lane_s64(v18, 0);
    v28 = vdupq_lane_s64(v19, 0);
    v29 = 8 * v6;
    v30 = v12 + 16;
    v31 = a3 + 16;
    v32 = vdupq_lane_s64(v20, 0);
    do
    {
      v33 = (v31 + v29);
      v34 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(*(v11 + v29), v7), v23, *(v30 + v29 - 16)), v24, *(v15 + v29)), v25, *(v14 + v29)), v26, *(v8 + v29)), v27, *(v9 + v29)), v28, *(v21 + v29));
      v35 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(*(v11 + v29 + 16), v7), v23, *(v30 + v29)), v24, *(v15 + v29 + 16)), v25, *(v14 + v29 + 16)), v26, *(v8 + v29 + 16)), v27, *(v9 + v29 + 16)), v28, *(v21 + v29 + 16));
      v6 += 4;
      v30 += 32;
      v11 += 32;
      v36 = vmlaq_f64(v35, v32, *(v22 + v29 + 16));
      v15 += 32;
      v14 += 32;
      v8 += 32;
      v9 += 32;
      v33[-1] = vmlaq_f64(v34, v32, *(v22 + v29));
      *v33 = v36;
      v21 += 32;
      v22 += 32;
      v31 += 32;
    }

    while (v6 <= v5);
    goto LABEL_7;
  }

  v6 = 0;
  v65 = ((8 * v5) & 0x3FFFFFFE0) + 32;
  v66 = a3 + v65;
  v68 = v12 + v65 > a3 && v12 < v66;
  v70 = v15 + v65 > a3 && v15 < v66;
  v72 = v14 + v65 > a3 && v14 < v66;
  v74 = v8 + v65 > a3 && v8 < v66;
  v76 = v9 + v65 > a3 && v9 < v66;
  v78 = v21 + v65 > a3 && v21 < v66;
  v80 = v22 + v65 > a3 && v22 < v66;
  v81 = v11 + v65;
  if (v11 < v66 && v81 > a3)
  {
    goto LABEL_5;
  }

  if (v68)
  {
    goto LABEL_5;
  }

  if (v70)
  {
    goto LABEL_5;
  }

  if (v72)
  {
    goto LABEL_5;
  }

  if (v74)
  {
    goto LABEL_5;
  }

  if (v76)
  {
    goto LABEL_5;
  }

  if (v78)
  {
    goto LABEL_5;
  }

  if (v80)
  {
    goto LABEL_5;
  }

  v83 = (v5 >> 2) + 1;
  v6 = 4 * (v83 & 0x3FFFFFFE);
  v84 = vdupq_lane_s64(v20, 0);
  v85 = vdupq_lane_s64(v19, 0);
  v86 = vdupq_lane_s64(v18, 0);
  v87 = vdupq_lane_s64(v17, 0);
  v88 = vdupq_lane_s64(v16, 0);
  v89 = vdupq_lane_s64(v13, 0);
  v90 = v83 & 0x3FFFFFFE;
  v91 = a2[3].i64[1];
  v92 = a2[3].i64[0];
  v93 = a2[2].i64[1];
  v94 = a2[2].i64[0];
  v95 = a2[1].i64[1];
  v96 = vdupq_lane_s64(v10, 0);
  v97 = a2[1].i64[0];
  v98 = a2->i64[1];
  v99 = a2->i64[0];
  v100 = a3;
  do
  {
    v101 = v99[2];
    v102 = vmlaq_f64(vmulq_n_f64(v99[3], v7), v96, v98[3]);
    v103 = *v99;
    v104 = v99[1];
    v99 += 4;
    v105 = vmlaq_f64(vmulq_n_f64(v101, v7), v96, v98[2]);
    v107 = *v98;
    v106 = v98[1];
    v98 += 4;
    v108 = vmlaq_f64(vmulq_n_f64(v103, v7), v96, v107);
    v109 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v104, v7), v96, v106), v89, v97[1]);
    v110 = vmlaq_f64(vmlaq_f64(v102, v89, v97[3]), v88, v95[3]);
    v111 = vmlaq_f64(vmlaq_f64(v105, v89, v97[2]), v88, v95[2]);
    v113 = *v95;
    v112 = v95[1];
    v95 += 4;
    v114 = vmlaq_f64(vmlaq_f64(v109, v88, v112), v87, v94[1]);
    v115 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v108, v89, *v97), v88, v113), v87, *v94);
    v116 = vmlaq_f64(vmlaq_f64(v110, v87, v94[3]), v86, v93[3]);
    v117 = vmlaq_f64(vmlaq_f64(v111, v87, v94[2]), v86, v93[2]);
    v119 = *v93;
    v118 = v93[1];
    v93 += 4;
    v120 = vmlaq_f64(vmlaq_f64(v114, v86, v118), v85, v92[1]);
    v121 = vmlaq_f64(vmlaq_f64(v115, v86, v119), v85, *v92);
    v122 = vmlaq_f64(vmlaq_f64(v116, v85, v92[3]), v84, v91[3]);
    v123 = vmlaq_f64(vmlaq_f64(v117, v85, v92[2]), v84, v91[2]);
    v125 = *v91;
    v124 = v91[1];
    v91 += 4;
    *v100 = vmlaq_f64(v121, v84, v125);
    v100[1] = vmlaq_f64(v120, v84, v124);
    v100[2] = v123;
    v100[3] = v122;
    v97 += 4;
    v100 += 4;
    v94 += 4;
    v92 += 4;
    v90 -= 2;
  }

  while (v90);
  if (v83 != (v83 & 0x3FFFFFFE))
  {
    goto LABEL_5;
  }

LABEL_7:
  if (v6 >= a5)
  {
    return;
  }

  *&v37 = *a4;
  v38 = a4[1];
  *&v39 = a4[2];
  *&v40 = a4[3];
  *&v41 = a4[4];
  *&v42 = a4[5];
  *&v43 = a4[6];
  v45 = a2[2];
  v44 = a2[3];
  *&v46 = a4[7];
  v48 = *a2;
  v47 = a2[1];
  v49 = v6;
  v50 = a5;
  v51 = a2->i64[1];
  v52 = a2[1].i64[1];
  v53 = a5 - v49;
  v54 = a2[2].i64[1];
  v55 = a2[3].i64[1];
  if (v53 <= 7 || (v56 = vdupq_n_s64(a3), v57 = vdupq_n_s64(0x10uLL), (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v57, vsubq_s64(v56, v48)), vcgtq_u64(v57, vsubq_s64(v56, v47))), vuzp1q_s32(vcgtq_u64(v57, vsubq_s64(v56, v45)), vcgtq_u64(v57, vsubq_s64(v56, v44)))))) & 1) != 0))
  {
    v58 = v49;
LABEL_11:
    v59 = 0;
    v60 = v55 + 8 * v58;
    v61 = v54 + 8 * v58;
    v62 = v52 + 8 * v58;
    v63 = v51 + 8 * v58;
    v64 = v50 - v58;
    do
    {
      *(a3 + 8 * v58 + 8 * v59) = *(v63 + 8 * v59) * v38 + *(v48.i64[0] + 8 * v58 + 8 * v59) * *&v37 + *(v47.i64[0] + 8 * v58 + 8 * v59) * *&v39 + *(v62 + 8 * v59) * *&v40 + *(v45.i64[0] + 8 * v58 + 8 * v59) * *&v41 + *(v61 + 8 * v59) * *&v42 + *(v44.i64[0] + 8 * v58 + 8 * v59) * *&v43 + *(v60 + 8 * v59) * *&v46;
      ++v59;
    }

    while (v64 != v59);
    return;
  }

  v126 = vdupq_lane_s64(v37, 0);
  v127 = vdupq_lane_s64(v39, 0);
  v128 = vdupq_lane_s64(v40, 0);
  v129 = vdupq_lane_s64(v41, 0);
  v58 = (v53 & 0xFFFFFFFFFFFFFFFELL) + v49;
  v130 = a2->i64[0];
  v131 = a2[1].i64[0];
  v132 = vdupq_lane_s64(v42, 0);
  v133 = a2[2].i64[0];
  v134 = vdupq_lane_s64(v43, 0);
  v135 = a2[3].i64[0];
  v136 = 8 * v49;
  v137 = a3;
  v138 = v55;
  v139 = vdupq_lane_s64(v46, 0);
  v140 = v54;
  v141 = v52;
  v142 = v51;
  v143 = v53 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v144 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(*(v142 + v136), v38), v126, *(v130 + v136)), v127, *(v131 + v136)), v128, *(v141 + v136)), v129, *(v133 + v136)), v132, *(v140 + v136)), v134, *(v135 + v136));
    v130 += 16;
    v142 += 16;
    v131 += 16;
    v141 += 16;
    *(v137 + v136) = vmlaq_f64(v144, v139, *(v138 + v136));
    v133 += 16;
    v140 += 16;
    v135 += 16;
    v138 += 16;
    v137 += 16;
    v143 -= 2;
  }

  while (v143);
  if (v53 != (v53 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_11;
  }
}

uint64_t sub_100349F58(uint64_t a1)
{
  *a1 = off_10047A778;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_10034A094(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *a1 = off_10047A7B8;
  v13 = *a2;
  v14 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v14;
  *(a1 + 40) = *(a2 + 32);
  v15 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v15;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v15)
  {
    atomic_fetch_add((v15 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v16 = *(a2 + 72);
      v17 = *(a1 + 80);
      *v17 = *v16;
      v17[1] = v16[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v13) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v18 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v19 = *(a3 + 32);
  v21 = *(a3 + 48);
  v20 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v19;
  *(a1 + 152) = v21;
  *(a1 + 160) = v20;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v18;
  if (!v20)
  {
    if (SDWORD1(v18) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v20 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v22 = *(a3 + 72);
  v23 = *(a1 + 176);
  *v23 = *v22;
  v23[1] = v22[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a7;
  return a1;
}

void sub_10034A20C(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_10034A23C(uint64_t a1)
{
  sub_10034B330(a1);

  operator delete();
}

void sub_10034A274(uint64_t a1, int *a2)
{
  v2 = *(a1 + 72);
  v3 = v2[1];
  v4 = *v2;
  v5 = *(*(a1 + 168) + 4);
  v6 = *(a1 + 8);
  v7 = (v6 >> 3) & 0x1FF;
  v8 = v7 + 1;
  v9 = *(a1 + 200);
  v10 = *(a1 + 204);
  v11 = *(a1 + 88);
  v85[0] = v9;
  v85[1] = v10;
  v85[2] = v7 + 1;
  v87 = v11;
  v88 = v7 + 1;
  v89 = v11;
  v12 = v7 > 3;
  v13 = 0xDu >> ((v6 >> 3) & 0xF);
  if (v12)
  {
    LOBYTE(v13) = 0;
  }

  if (v10 != 2)
  {
    LOBYTE(v13) = 0;
  }

  if (v9 != 2)
  {
    LOBYTE(v13) = 0;
  }

  v86 = v13 & 1;
  v14 = *a2;
  if (v14 < a2[1])
  {
    v16 = v10 * v9;
    v77 = v3 / v9 * v8;
    v17 = v10 * v9 - 4;
    v84 = ((v10 * v9 - 4) & 0xFFFFFFFC) + 4;
    v81 = v8 * v3;
    v79 = (v8 * v5);
    v83 = v8 * v3;
    v18 = (v6 >> 3) & 0x1FF;
    v19 = 2 * v18 + 2;
    v20 = v18 + 1;
    do
    {
      v21 = (*(a1 + 120) + *(a1 + 184) * v14);
      v22 = *(a1 + 204);
      v80 = v14;
      v23 = v22 * v14;
      if (v22 * v14 + v22 <= v4)
      {
        v24 = v77;
      }

      else
      {
        v24 = 0;
      }

      if (v23 >= v4)
      {
        if (v79 >= 1)
        {
          bzero(v21, v79);
        }
      }

      else
      {
        v82 = v22 * v14;
        v25 = v23;
        v26 = sub_10034A704(v85, (*(a1 + 24) + **(a1 + 80) * v23), v21, v24);
        if (v26 < v24)
        {
          v27 = v26;
          while (1)
          {
            v30 = *(a1 + 24) + **(a1 + 80) * v25 + *(*(a1 + 216) + 4 * v27);
            if (v16 >= 4)
            {
              v33 = 0;
              v32 = 0;
              v34 = (*(a1 + 208) + 8);
              do
              {
                v35 = *(v30 + *(v34 - 2));
                v36 = *(v30 + *(v34 - 1));
                v37 = *v34;
                v38 = v34[1];
                v34 += 4;
                v32 += v35 + v36 + *(v30 + v37) + *(v30 + v38);
                v33 += 4;
              }

              while (v33 <= v17);
              v31 = v84;
              if (v84 >= v16)
              {
                goto LABEL_16;
              }
            }

            else
            {
              v31 = 0;
              v32 = 0;
              if (v16 <= 0)
              {
                goto LABEL_16;
              }
            }

            v39 = *(a1 + 208);
            v40 = v31;
            v41 = v16 + ~v31;
            if (v41)
            {
              v42 = 0;
              v43 = v41 + 1;
              v44 = (v41 + 1) & 0x1FFFFFFFELL;
              v45 = v44 + v40;
              v46 = (v39 + 4 * v40 + 4);
              v47 = v44;
              do
              {
                v32 += *(v30 + *(v46 - 1));
                v42 += *(v30 + *v46);
                v46 += 2;
                v47 -= 2;
              }

              while (v47);
              v32 += v42;
              if (v43 == v44)
              {
                goto LABEL_16;
              }
            }

            else
            {
              v45 = v40;
            }

            v48 = (v39 + 4 * v45);
            do
            {
              v49 = *v48++;
              v32 += *(v30 + v49);
              LODWORD(v45) = v45 + 1;
            }

            while (v16 > v45);
LABEL_16:
            v28 = rintf((1.0 / v16) * v32);
            v29 = v28 & ~(v28 >> 31);
            if (v29 >= 255)
            {
              LOBYTE(v29) = -1;
            }

            *(v21 + v27++) = v29;
            if (v27 == v24)
            {
              v26 = v24;
              break;
            }
          }
        }

        v51 = v79;
        v50 = v83;
        if (v26 < v79)
        {
          v52 = v26;
          do
          {
            v56 = *(*(a1 + 216) + 4 * v52);
            v57 = 0.0;
            if (v56 >= v50)
            {
              v53 = 0.0;
            }

            else
            {
              v58 = *(a1 + 204);
              v53 = 0.0;
              if (v58 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = 0;
                if (v81 - v56 <= v8)
                {
                  v62 = v8;
                }

                else
                {
                  v62 = v81 - v56;
                }

                v63 = v62 - 1;
                v64 = v82;
                v65 = v63 / v8;
                do
                {
                  if (v59 + v25 >= v4)
                  {
                    break;
                  }

                  v66 = (*(a1 + 200) * v8);
                  if (v66 >= 1)
                  {
                    v67 = *(a1 + 24);
                    v68 = **(a1 + 80);
                    v69 = (v66 - 1) / v8;
                    if (v65 < v69)
                    {
                      v69 = v65;
                    }

                    if (!v69)
                    {
                      goto LABEL_58;
                    }

                    v70 = 0;
                    v71 = v69 + 1;
                    v72 = (v69 + 1) & 0xFFFFFFFFFFFFFFFELL;
                    v69 = v72 * v8;
                    v73 = (v67 + v56 + v68 * v64);
                    v74 = v72;
                    do
                    {
                      v61 += *v73;
                      v70 += v73[v8];
                      v73 += v19;
                      v60 += 2;
                      v74 -= 2;
                    }

                    while (v74);
                    v61 += v70;
                    if (v71 != v72)
                    {
LABEL_58:
                      v75 = (v67 + v56 + v69 + v68 * v64);
                      v76 = v20 + v69;
                      do
                      {
                        v61 += *v75;
                        ++v60;
                        if (v76 >= v66)
                        {
                          break;
                        }

                        v75 += v8;
                        v12 = v76 < v81 - v56;
                        v76 += v8;
                      }

                      while (v12);
                    }
                  }

                  ++v59;
                  ++v64;
                }

                while (v59 != v58);
                v57 = v61;
                v53 = v60;
                v51 = v79;
                v50 = v83;
              }
            }

            v54 = rintf(v57 / v53);
            v55 = v54 & ~(v54 >> 31);
            if (v55 >= 255)
            {
              LOBYTE(v55) = -1;
            }

            *(v21 + v52++) = v55;
          }

          while (v52 != v51);
        }
      }

      v14 = v80 + 1;
    }

    while (v80 + 1 < a2[1]);
  }
}

uint64_t sub_10034A704(uint64_t a1, uint8x8_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 12) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  if (v4 != 1)
  {
    if (v4 == 4)
    {
      v7 = a4 - 8;
      if (a4 >= 8)
      {
        v8 = 0;
        v9 = a2;
        do
        {
          v10 = *&v9->i8[v5];
          v11 = vmovl_u8(*v9);
          v12 = vmovl_high_u8(*v9->i8);
          v13 = vmovl_u8(*v10.i8);
          v14 = vmovl_high_u8(v10);
          v15.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
          v16.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
          v11.i64[1] = v12.i64[0];
          v15.i64[1] = vextq_s8(v12, v12, 8uLL).u64[0];
          v16.i64[1] = vextq_s8(v14, v14, 8uLL).u64[0];
          v13.i64[1] = v14.i64[0];
          *(a3 + v8) = vrshrn_n_s16(vaddq_s16(vaddq_s16(v11, v15), vaddq_s16(v16, v13)), 2uLL);
          v9 += 2;
          v8 += 8;
        }

        while (v8 <= v7);
        v17 = (v7 & 0xFFFFFFF8) + 8;
        v18 = *(a1 + 8);
        if (v18 == 1)
        {
          goto LABEL_8;
        }

LABEL_16:
        if (v18 == 4)
        {
          if (v17 < a4)
          {
            v37 = v17;
            v38 = ~v17 + a4;
            if (v38 < 0x3C)
            {
              goto LABEL_26;
            }

            v52 = v38 >> 2;
            v53 = a3 + v17 + (v38 & 0xFFFFFFFFFFFFFFFCLL) + 4;
            v54 = a2 + 2 * v17;
            v55 = v54 + 8 * v52 + 8;
            v56 = v55 + v6;
            v57 = a3 + v17 >= v55 || v54 >= v53;
            v58 = !v57;
            if (v54 + v6 < v53 && a3 + v17 < v56)
            {
              goto LABEL_26;
            }

            if (v58)
            {
              goto LABEL_26;
            }

            v60 = v52 + 1;
            v17 = v17 + 4 * (v60 & 0x7FFFFFFFFFFFFFF0);
            v61 = (a3 + v37);
            v62 = v60 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v167 = *(v54 + 96);
              v165 = *(v54 + 64);
              v169 = *(v54 + 32);
              v63.i32[0] = vqtbl2q_s8(*v54, xmmword_1003E99F0).u32[0];
              v64.i32[0] = vqtbl2q_s8(v165, xmmword_1003E99F0).u32[0];
              v65.i32[0] = vqtbl2q_s8(*v54, xmmword_1003E9A10).u32[0];
              v66.i32[0] = vqtbl2q_s8(v165, xmmword_1003E9A10).u32[0];
              v161 = *(v54 + v6 + 96);
              v160 = *(v54 + v6 + 64);
              v162 = *(v54 + v6 + 32);
              v63.i32[1] = vqtbl2q_s8(v169, xmmword_1003E99E0).i32[1];
              v163 = *(v54 + v6);
              v64.i32[1] = vqtbl2q_s8(v167, xmmword_1003E99E0).i32[1];
              v151 = v64;
              v67.i32[0] = vqtbl2q_s8(v160, xmmword_1003E99F0).u32[0];
              v68.i32[0] = vqtbl2q_s8(v163, xmmword_1003E99F0).u32[0];
              v65.i32[1] = vqtbl2q_s8(v169, xmmword_1003E9A00).i32[1];
              v148 = v65;
              v65.i32[0] = vqtbl2q_s8(v163, xmmword_1003E9A10).u32[0];
              v69.i32[0] = vqtbl2q_s8(v160, xmmword_1003E9A10).u32[0];
              v66.i32[1] = vqtbl2q_s8(v167, xmmword_1003E9A00).i32[1];
              v143 = v66;
              v70.i32[0] = vqtbl2q_s8(*v54, xmmword_1003E9A30).u32[0];
              v70.i32[1] = vqtbl2q_s8(v169, xmmword_1003E9A20).i32[1];
              v144 = v70;
              v67.i32[1] = vqtbl2q_s8(v161, xmmword_1003E99E0).i32[1];
              v142 = v67;
              v67.i32[0] = vqtbl2q_s8(v165, xmmword_1003E9A30).u32[0];
              v67.i32[1] = vqtbl2q_s8(v167, xmmword_1003E9A20).i32[1];
              v68.i32[1] = vqtbl2q_s8(v162, xmmword_1003E99E0).i32[1];
              v71.i32[0] = vqtbl2q_s8(*v54, xmmword_1003E9A50).u32[0];
              v71.i32[1] = vqtbl2q_s8(v169, xmmword_1003E9A40).i32[1];
              v140 = v68;
              v141 = v71;
              v65.i32[1] = vqtbl2q_s8(v162, xmmword_1003E9A00).i32[1];
              v150 = v65;
              v72.i32[0] = vqtbl2q_s8(v165, xmmword_1003E9A50).u32[0];
              v72.i32[1] = vqtbl2q_s8(v167, xmmword_1003E9A40).i32[1];
              v69.i32[1] = vqtbl2q_s8(v161, xmmword_1003E9A00).i32[1];
              v68.i32[0] = vqtbl2q_s8(v163, xmmword_1003E9A30).u32[0];
              v68.i32[1] = vqtbl2q_s8(v162, xmmword_1003E9A20).i32[1];
              v71.i32[0] = vqtbl2q_s8(v163, xmmword_1003E9A50).u32[0];
              v71.i32[1] = vqtbl2q_s8(v162, xmmword_1003E9A40).i32[1];
              v146 = v69;
              v147 = v71;
              v71.i32[0] = vqtbl2q_s8(v160, xmmword_1003E9A30).u32[0];
              v71.i32[1] = vqtbl2q_s8(v161, xmmword_1003E9A20).i32[1];
              v139 = v71;
              v65.i32[0] = vqtbl2q_s8(*v54, xmmword_1003E9A70).u32[0];
              v65.i32[1] = vqtbl2q_s8(v169, xmmword_1003E9A60).i32[1];
              v70.i32[0] = vqtbl2q_s8(v165, xmmword_1003E9A70).u32[0];
              v70.i32[1] = vqtbl2q_s8(v167, xmmword_1003E9A60).i32[1];
              v73.i32[0] = vqtbl2q_s8(v160, xmmword_1003E9A50).u32[0];
              v73.i32[1] = vqtbl2q_s8(v161, xmmword_1003E9A40).i32[1];
              v64.i32[0] = vqtbl2q_s8(*v54, xmmword_1003E9A90).u32[0];
              v64.i32[1] = vqtbl2q_s8(v169, xmmword_1003E9A80).i32[1];
              v69.i32[0] = vqtbl2q_s8(v165, xmmword_1003E9A90).u32[0];
              v69.i32[1] = vqtbl2q_s8(v167, xmmword_1003E9A80).i32[1];
              v66.i32[0] = vqtbl2q_s8(v160, xmmword_1003E9A70).u32[0];
              v66.i32[1] = vqtbl2q_s8(v161, xmmword_1003E9A60).i32[1];
              v74.i32[0] = vqtbl2q_s8(v163, xmmword_1003E9A70).u32[0];
              v74.i32[1] = vqtbl2q_s8(v162, xmmword_1003E9A60).i32[1];
              v75 = vaddl_u8(v151, v143);
              v76 = vaddl_u8(v63, v148);
              v63.i32[0] = vqtbl2q_s8(v163, xmmword_1003E9A90).u32[0];
              v63.i32[1] = vqtbl2q_s8(v162, xmmword_1003E9A80).i32[1];
              v152 = v63;
              v149 = vaddw_u8(v76, v140);
              v77.i32[0] = vqtbl2q_s8(v160, xmmword_1003E9A90).u32[0];
              v77.i32[1] = vqtbl2q_s8(v161, xmmword_1003E9A80).i32[1];
              v78 = vaddw_u8(v75, v142);
              v71.i32[0] = vqtbl2q_s8(*v54, xmmword_1003E9AB0).u32[0];
              v71.i32[1] = vqtbl2q_s8(v169, xmmword_1003E9AA0).i32[1];
              v145 = vaddw_u8(vaddl_u8(v144, v141), v68);
              v79 = vaddl_u8(v70, v69);
              v68.i32[0] = vqtbl2q_s8(v165, xmmword_1003E9AB0).u32[0];
              v68.i32[1] = vqtbl2q_s8(v167, xmmword_1003E9AA0).i32[1];
              v80 = vaddw_u8(vaddl_u8(v67, v72), v139);
              v81 = vaddl_u8(v65, v64);
              v67.i32[0] = vqtbl2q_s8(*v54, xmmword_1003E9AD0).u32[0];
              v67.i32[1] = vqtbl2q_s8(v169, xmmword_1003E9AC0).i32[1];
              v82 = vaddw_u8(v78, v146);
              v65.i32[0] = vqtbl2q_s8(v165, xmmword_1003E9AD0).u32[0];
              v65.i32[1] = vqtbl2q_s8(v167, xmmword_1003E9AC0).i32[1];
              v78.i32[0] = vqtbl2q_s8(v160, xmmword_1003E9AB0).u32[0];
              v78.i32[1] = vqtbl2q_s8(v161, xmmword_1003E9AA0).i32[1];
              v83 = vaddw_u8(v80, v73);
              v73.i32[0] = vqtbl2q_s8(v163, xmmword_1003E9AB0).u32[0];
              v73.i32[1] = vqtbl2q_s8(v162, xmmword_1003E9AA0).i32[1];
              v72.i32[0] = vqtbl2q_s8(v163, xmmword_1003E9AD0).u32[0];
              v72.i32[1] = vqtbl2q_s8(v162, xmmword_1003E9AC0).i32[1];
              v165.val[0].i32[0] = vqtbl2q_s8(v160, xmmword_1003E9AD0).u32[0];
              v165.val[0].i32[1] = vqtbl2q_s8(v161, xmmword_1003E9AC0).i32[1];
              v84 = vaddw_u8(vaddl_u8(v68, v65), *v78.i8);
              v171.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(v145, v147), 2uLL), v83, 2uLL);
              v171.val[0] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(v149, v150), 2uLL), v82, 2uLL);
              v171.val[3] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddl_u8(v71, v67), v73), v72), 2uLL), vaddw_u8(v84, *v165.val[0].i8), 2uLL);
              v171.val[2] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(v81, v74), v152), 2uLL), vaddw_u8(vaddw_u8(v79, v66), v77), 2uLL);
              vst4q_s8(v61, v171);
              v61 += 64;
              v54 += 128;
              v62 -= 16;
            }

            while (v62);
            v37 = v17;
            if (v60 != (v60 & 0x7FFFFFFFFFFFFFF0))
            {
LABEL_26:
              v39 = v37 + 3;
              v40 = (a2 + 2 * v37 + 7);
              v41 = (a3 + v37 + 3);
              do
              {
                v42 = v40 + v6;
                *(v41 - 3) = (v40[-1].u8[1] + v40[-1].u8[5] + v40->u8[v6 - 7] + v40->u8[v6 - 3] + 2) >> 2;
                *(v41 - 2) = (v40[-1].u8[2] + v40[-1].u8[6] + v40->u8[v6 - 6] + v40->u8[v6 - 2] + 2) >> 2;
                *(v41 - 1) = (v40[-1].u8[3] + v40[-1].u8[7] + v40->u8[v6 - 5] + v40->u8[v6 - 1] + 2) >> 2;
                v43 = v40[-1].u8[4];
                v44 = v40->u8[0];
                ++v40;
                v45 = (v43 + v44 + *(v42 - 4) + *v42 + 2) >> 2;
                v46 = v39 + 4;
                v47 = v39 + 1;
                *v41 = v45;
                v41 += 4;
                v39 += 4;
              }

              while (v47 < a4);
              return v46 - 3;
            }
          }
        }

        else
        {
          if (v18 != 3)
          {
            v154[0] = 0;
            v154[1] = 0;
            v36 = sub_1002A80E0(v154, 7);
            *v36 = 1025535587;
            *(v36 + 3) = 874528061;
            sub_1002A8980(-215, v154, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2890);
          }

          if (v17 < a4)
          {
            v25 = v17;
            v26 = ~v17 + a4;
            if (v26 <= 0x5C)
            {
              goto LABEL_20;
            }

            v99 = v26 / 3;
            v100 = a3 + v17 + 3 * (v26 / 3) + 3;
            v101 = a2 + 2 * v17;
            v102 = v101 + 6 * v99 + 6;
            v103 = v102 + v6;
            v104 = a3 + v17 >= v102 || v101 >= v100;
            v105 = !v104;
            if (v101 + v6 < v100 && a3 + v17 < v103)
            {
              goto LABEL_20;
            }

            if (v105)
            {
              goto LABEL_20;
            }

            v107 = v99 + 1;
            v17 = 3 * (v107 & 0x7FFFFFFFFFFFFFF0) + v17;
            v108 = (a3 + v25);
            v109 = v107 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v164 = *(v101 + 48);
              v110 = *(v101 + 80);
              v111 = *(v101 + 32);
              v112 = vqtbl2q_s8(*v101, xmmword_1003E9980);
              v113 = vqtbl2q_s8(v164, xmmword_1003E9980);
              v114.i64[0] = vqtbl2q_s8(*v101, xmmword_1003E9990).u64[0];
              v115.i64[0] = vqtbl2q_s8(v164, xmmword_1003E9990).u64[0];
              v166 = *(v101 + v6);
              v116 = *(v101 + v6 + 32);
              v112.i16[3] = vqtbl1_s8(v111, 0xA04FFFFFFFFFFFFLL).i16[3];
              v168 = *(v101 + v6 + 48);
              v117 = *(v101 + v6 + 80);
              v113.i16[3] = vqtbl1_s8(v110, 0xA04FFFFFFFFFFFFLL).i16[3];
              v118 = vqtbl2q_s8(v168, xmmword_1003E9980);
              v119 = vqtbl2q_s8(v166, xmmword_1003E9980);
              v114.u64[1] = vqtbl1_s8(v111, 0xD0701FFFFFFFFFFLL);
              v120.i64[0] = vqtbl2q_s8(v166, xmmword_1003E9990).u64[0];
              v121.i64[0] = vqtbl2q_s8(v168, xmmword_1003E9990).u64[0];
              v115.u64[1] = vqtbl1_s8(v110, 0xD0701FFFFFFFFFFLL);
              v122 = vqtbl2q_s8(*v101, xmmword_1003E99A0);
              v122.i16[3] = vqtbl1_s8(v111, 0xB05FFFFFFFFFFFFLL).i16[3];
              v118.i16[3] = vqtbl1_s8(v117, 0xA04FFFFFFFFFFFFLL).i16[3];
              v123 = vqtbl2q_s8(v164, xmmword_1003E99A0);
              v123.i16[3] = vqtbl1_s8(v110, 0xB05FFFFFFFFFFFFLL).i16[3];
              v119.i16[3] = vqtbl1_s8(v116, 0xA04FFFFFFFFFFFFLL).i16[3];
              v124.i64[0] = vqtbl2q_s8(*v101, xmmword_1003E99B0).u64[0];
              v124.u64[1] = vqtbl1_s8(v111, 0xE0802FFFFFFFFFFLL);
              v120.u64[1] = vqtbl1_s8(v116, 0xD0701FFFFFFFFFFLL);
              v153 = v120;
              v120.i64[0] = vqtbl2q_s8(v164, xmmword_1003E99B0).u64[0];
              v120.u64[1] = vqtbl1_s8(v110, 0xE0802FFFFFFFFFFLL);
              v121.u64[1] = vqtbl1_s8(v117, 0xD0701FFFFFFFFFFLL);
              v125 = vqtbl2q_s8(v168, xmmword_1003E99A0);
              v126 = vqtbl2q_s8(v166, xmmword_1003E99A0);
              v125.i16[3] = vqtbl1_s8(v117, 0xB05FFFFFFFFFFFFLL).i16[3];
              v126.i16[3] = vqtbl1_s8(v116, 0xB05FFFFFFFFFFFFLL).i16[3];
              v127.i64[0] = vqtbl2q_s8(v166, xmmword_1003E99B0).u64[0];
              v127.u64[1] = vqtbl1_s8(v116, 0xE0802FFFFFFFFFFLL);
              v128.i64[0] = vqtbl2q_s8(v168, xmmword_1003E99B0).u64[0];
              v128.u64[1] = vqtbl1_s8(v117, 0xE0802FFFFFFFFFFLL);
              v129.i64[0] = vqtbl2q_s8(*v101, xmmword_1003E99C0).u64[0];
              v129.u64[1] = vqtbl1_s8(v111, 0xC0600FFFFFFFFFFLL);
              v130 = vaddl_u8(*v112.i8, vqtbl1_s8(v114, 0xF0E0D0403020100));
              v112.i64[0] = vqtbl2q_s8(v164, xmmword_1003E99C0).u64[0];
              v112.u64[1] = vqtbl1_s8(v110, 0xC0600FFFFFFFFFFLL);
              v131 = vaddl_u8(*v123.i8, vqtbl1_s8(v120, 0xF0E0D0403020100));
              v123.i64[0] = vqtbl2q_s8(*v101, xmmword_1003E99D0).u64[0];
              v123.u64[1] = vqtbl1_s8(v111, 0xF0903FFFFFFFFFFLL);
              v132 = vaddw_u8(v130, *v119.i8);
              v130.i64[0] = vqtbl2q_s8(v164, xmmword_1003E99D0).u64[0];
              v130.u64[1] = vqtbl1_s8(v110, 0xF0903FFFFFFFFFFLL);
              v133 = vaddl_u8(*v122.i8, vqtbl1_s8(v124, 0xF0E0D0403020100));
              v124.i64[0] = vqtbl2q_s8(v168, xmmword_1003E99C0).u64[0];
              v124.u64[1] = vqtbl1_s8(v117, 0xC0600FFFFFFFFFFLL);
              v134 = vaddw_u8(v133, *v126.i8);
              v126.i64[0] = vqtbl2q_s8(v166, xmmword_1003E99C0).u64[0];
              v126.u64[1] = vqtbl1_s8(v116, 0xC0600FFFFFFFFFFLL);
              v164.val[1].i64[0] = vqtbl2q_s8(v166, xmmword_1003E99D0).u64[0];
              v164.val[1].u64[1] = vqtbl1_s8(v116, 0xF0903FFFFFFFFFFLL);
              v135 = vaddw_u8(v131, *v125.i8);
              v131.i64[0] = vqtbl2q_s8(v168, xmmword_1003E99D0).u64[0];
              v131.u64[1] = vqtbl1_s8(v117, 0xF0903FFFFFFFFFFLL);
              v170.val[2] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddl_u8(vqtbl1_s8(v129, 0xF0E0D0403020100), vqtbl1_s8(v123, 0xF0E0D0403020100)), vqtbl1_s8(v126, 0xF0E0D0403020100)), vqtbl1_s8(v164.val[1], 0xF0E0D0403020100)), 2uLL), vaddw_u8(vaddw_u8(vaddl_u8(vqtbl1_s8(v112, 0xF0E0D0403020100), vqtbl1_s8(v130, 0xF0E0D0403020100)), vqtbl1_s8(v124, 0xF0E0D0403020100)), vqtbl1_s8(v131, 0xF0E0D0403020100)), 2uLL);
              v170.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(v134, vqtbl1_s8(v127, 0xF0E0D0403020100)), 2uLL), vaddw_u8(v135, vqtbl1_s8(v128, 0xF0E0D0403020100)), 2uLL);
              v170.val[0] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(v132, vqtbl1_s8(v153, 0xF0E0D0403020100)), 2uLL), vaddw_u8(vaddw_u8(vaddl_u8(*v113.i8, vqtbl1_s8(v115, 0xF0E0D0403020100)), *v118.i8), vqtbl1_s8(v121, 0xF0E0D0403020100)), 2uLL);
              vst3q_s8(v108, v170);
              v108 += 48;
              v101 += 96;
              v109 -= 16;
            }

            while (v109);
            v25 = v17;
            if (v107 != (v107 & 0x7FFFFFFFFFFFFFF0))
            {
LABEL_20:
              v27 = v25 + 2;
              v28 = (a2 + 2 * v25 + 5);
              v29 = (a3 + v25 + 2);
              do
              {
                v30 = v28 + v6;
                *(v29 - 2) = (v28[-1].u8[3] + v28[-1].u8[6] + v28->u8[v6 - 5] + v28->u8[v6 - 2] + 2) >> 2;
                *(v29 - 1) = (v28[-1].u8[4] + v28[-1].u8[7] + v28->u8[v6 - 4] + v28->u8[v6 - 1] + 2) >> 2;
                v31 = v28[-1].u8[5];
                v32 = v28->u8[0];
                v28 = (v28 + 6);
                v33 = (v31 + v32 + *(v30 - 3) + *v30 + 2) >> 2;
                v34 = v27 + 3;
                v35 = v27 + 1;
                *v29 = v33;
                v29 += 3;
                v27 += 3;
              }

              while (v35 < a4);
              return v34 - 2;
            }
          }
        }

        return v17;
      }
    }

LABEL_15:
    v17 = 0;
    v18 = *(a1 + 8);
    if (v18 == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v24 = a4 - 16;
  if (a4 < 16)
  {
    goto LABEL_15;
  }

  v49 = 0;
  v50 = a2;
  do
  {
    v51 = &v50[v5];
    v156 = vld2q_s8(v50);
    v50 += 32;
    v158 = vld2q_s8(v51);
    *(a3 + v49) = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddl_u8(*v156.val[1].i8, *v156.val[0].i8), *v158.val[1].i8), *v158.val[0].i8), 2uLL), vaddw_high_u8(vaddw_high_u8(vaddl_high_u8(v156.val[1], v156.val[0]), v158.val[1]), v158.val[0]), 2uLL);
    v49 += 16;
  }

  while (v49 <= v24);
  v17 = (v24 & 0xFFFFFFF0) + 16;
  v18 = *(a1 + 8);
  if (v18 != 1)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v17 < a4)
  {
    v19 = v17;
    v20 = a4 - v17;
    if (v20 >= 8)
    {
      v85 = a3 + a4;
      v86 = a2 + 2 * v17;
      v87 = a2 + 2 * a4;
      v88 = v87 + v6;
      v89 = a3 + v17 >= v87 || v86 >= v85;
      v90 = !v89;
      v91 = &v86[v6] >= v85 || a3 + v17 >= v88;
      if (v91 && !v90)
      {
        if (v20 < 0x10)
        {
          v92 = 0;
          goto LABEL_64;
        }

        v92 = v20 & 0xFFFFFFFFFFFFFFF0;
        v136 = (a3 + v17);
        v137 = v20 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v138 = &v86[v6];
          v157 = vld2q_s8(v86);
          v86 += 32;
          v159 = vld2q_s8(v138);
          *v136++ = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddl_u8(*v157.val[0].i8, *v157.val[1].i8), *v159.val[0].i8), *v159.val[1].i8), 2uLL), vaddw_high_u8(vaddw_high_u8(vaddl_high_u8(v157.val[0], v157.val[1]), v159.val[0]), v159.val[1]), 2uLL);
          v137 -= 16;
        }

        while (v137);
        if (v20 == v92)
        {
          return a4;
        }

        if ((v20 & 8) != 0)
        {
LABEL_64:
          v93 = v92 - (v20 & 0xFFFFFFFFFFFFFFF8);
          v94 = v92 + v17;
          v95 = a2 + 2 * v94;
          v96 = (a3 + v94);
          do
          {
            v97 = &v95[v6];
            v155 = vld2_s8(v95);
            v95 += 16;
            v155 = vaddl_u8(*v155.i8, v155.u64[1]);
            *(&v155 + 8) = vld2_s8(v97);
            *v96++ = vrshrn_n_s16(vaddw_u8(vaddw_u8(v155, v155.u64[1]), v98), 2uLL);
            v93 += 8;
          }

          while (v93);
          v19 = (v20 & 0xFFFFFFFFFFFFFFF8) + v17;
          if (v20 == (v20 & 0xFFFFFFFFFFFFFFF8))
          {
            return a4;
          }

          goto LABEL_10;
        }

        v19 = v92 + v17;
      }
    }

LABEL_10:
    v21 = (a3 + v19);
    v22 = a4 - v19;
    v23 = (a2 + 2 * v19 + 1);
    do
    {
      *v21++ = (v23[-1].u8[7] + v23->u8[0] + v23->u8[v6 - 1] + v23->u8[v6] + 2) >> 2;
      v23 = (v23 + 2);
      --v22;
    }

    while (v22);
    return a4;
  }

  return v17;
}

uint64_t sub_10034B330(uint64_t a1)
{
  *a1 = off_10047A7B8;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_10034B46C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *a1 = off_10047A7F8;
  v13 = *a2;
  v14 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v14;
  *(a1 + 40) = *(a2 + 32);
  v15 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v15;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v15)
  {
    atomic_fetch_add((v15 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v16 = *(a2 + 72);
      v17 = *(a1 + 80);
      *v17 = *v16;
      v17[1] = v16[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v13) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v18 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v19 = *(a3 + 32);
  v21 = *(a3 + 48);
  v20 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v19;
  *(a1 + 152) = v21;
  *(a1 + 160) = v20;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v18;
  if (!v20)
  {
    if (SDWORD1(v18) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v20 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v22 = *(a3 + 72);
  v23 = *(a1 + 176);
  *v23 = *v22;
  v23[1] = v22[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a7;
  return a1;
}

void sub_10034B5E4(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_10034B614(uint64_t a1)
{
  sub_10034BE30(a1);

  operator delete();
}

void sub_10034B64C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 72);
  v3 = v2[1];
  v4 = *v2;
  v5 = *(*(a1 + 168) + 4);
  v6 = *(a1 + 8);
  v7 = (v6 >> 3) & 0x1FF;
  v8 = v7 + 1;
  v9 = *(a1 + 200);
  v10 = *(a1 + 204);
  v11 = *(a1 + 88);
  v67[0] = v9;
  v67[1] = v10;
  v67[2] = v7 + 1;
  v69 = v11;
  v70 = v7 + 1;
  v71 = v11;
  v48 = v7 > 3;
  v12 = 0xDu >> ((v6 >> 3) & 0xF);
  if (v48)
  {
    LOBYTE(v12) = 0;
  }

  if (v10 != 2)
  {
    LOBYTE(v12) = 0;
  }

  if (v9 != 2)
  {
    LOBYTE(v12) = 0;
  }

  v68 = v12 & 1;
  v13 = *a2;
  if (v13 < a2[1])
  {
    v15 = v10 * v9;
    v65 = v3 / v9 * v8;
    v16 = v10 * v9 - 4;
    v58 = ((v10 * v9 - 4) & 0xFFFFFFFC) + 4;
    v60 = v8 * v3;
    v61 = v8 * v3;
    v64 = v8 * v5;
    v59 = 2 * (v8 * v5);
    v17 = 2 * ((v6 >> 3) & 0x1FF) + 2;
    do
    {
      v18 = (*(a1 + 120) + *(a1 + 184) * v13);
      v19 = *(a1 + 204);
      v20 = v19 * v13;
      if (v19 * v13 + v19 <= v4)
      {
        v21 = v65;
      }

      else
      {
        v21 = 0;
      }

      if (v20 >= v4)
      {
        if (v64 >= 1)
        {
          bzero((*(a1 + 120) + *(a1 + 184) * v13), v59);
        }
      }

      else
      {
        v62 = v19 * v13;
        v63 = v13;
        v22 = v20;
        v23 = v21;
        v24 = sub_10034B9FC(v67, (*(a1 + 24) + **(a1 + 80) * v20), v18, v21);
        if (v24 < v23)
        {
          v26 = *(a1 + 24) + **(a1 + 80) * v22;
          v27 = *(a1 + 216);
          v28 = v24;
          while (1)
          {
            v31 = v26 + 2 * *(v27 + 4 * v28);
            if (v15 >= 4)
            {
              break;
            }

            v32 = 0;
            v33 = 0.0;
            if (v15 > 0)
            {
              goto LABEL_25;
            }

LABEL_16:
            v29 = rintf((1.0 / v15) * v33);
            v30 = v29 & ~(v29 >> 31);
            if (v30 >= 0xFFFF)
            {
              LOWORD(v30) = -1;
            }

            v18->i16[v28++] = v30;
            if (v28 == v23)
            {
              v24 = v23;
              goto LABEL_31;
            }
          }

          v34 = 0;
          v35 = (*(a1 + 208) + 8);
          v33 = 0.0;
          do
          {
            v36 = *(v31 + 2 * *(v35 - 1)) + *(v31 + 2 * *(v35 - 2));
            v37 = *v35;
            v38 = v35[1];
            v35 += 4;
            v25 = (v36 + *(v31 + 2 * v37) + *(v31 + 2 * v38));
            v33 = v33 + v25;
            v34 += 4;
          }

          while (v34 <= v16);
          v32 = v58;
          if (v58 >= v15)
          {
            goto LABEL_16;
          }

LABEL_25:
          v39 = (*(a1 + 208) + 4 * v32);
          do
          {
            v40 = *v39++;
            LOWORD(v25) = *(v31 + 2 * v40);
            v25 = LODWORD(v25);
            v33 = v33 + v25;
            ++v32;
          }

          while (v15 > v32);
          goto LABEL_16;
        }

LABEL_31:
        v13 = v63;
        if (v24 < v64)
        {
          v41 = *(a1 + 216);
          v42 = *(a1 + 204);
          v43 = v24;
          do
          {
            v47 = *(v41 + 4 * v43);
            v48 = v47 >= v61 || v42 < 1;
            if (v48)
            {
              v44 = NAN;
            }

            else
            {
              v49 = 0;
              v50 = 0;
              v51 = v60 - v47;
              v52 = 2 * v47;
              v53 = 0.0;
              v54 = v62;
              do
              {
                if (v49 + v22 >= v4)
                {
                  break;
                }

                v55 = (*(a1 + 200) * v8);
                if (v55 >= 1)
                {
                  v56 = (*(a1 + 24) + v52 + **(a1 + 80) * v54);
                  v57 = v8;
                  do
                  {
                    LOWORD(v25) = *v56;
                    v25 = LODWORD(v25);
                    v53 = v53 + v25;
                    ++v50;
                    if (v57 >= v55)
                    {
                      break;
                    }

                    v56 = (v56 + v17);
                    v48 = v57 < v51;
                    v57 += v8;
                  }

                  while (v48);
                }

                ++v49;
                ++v54;
              }

              while (v49 != v42);
              v25 = v50;
              v44 = v53 / v50;
            }

            v45 = rintf(v44);
            v46 = v45 & ~(v45 >> 31);
            if (v46 >= 0xFFFF)
            {
              LOWORD(v46) = -1;
            }

            v18->i16[v43++] = v46;
          }

          while (v43 != v64);
        }
      }

      ++v13;
    }

    while (v13 < a2[1]);
  }
}

uint64_t sub_10034B9FC(uint64_t a1, uint16x4_t *a2, int16x4_t *a3, uint64_t a4)
{
  if (*(a1 + 12) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  if (v4 != 1)
  {
    if (v4 == 4)
    {
      v7 = a4 - 4;
      if (a4 >= 4)
      {
        v8 = 0;
        v9 = a3;
        v10 = a2;
        do
        {
          *v9++ = vrshrn_n_s32(vaddw_u16(vaddw_high_u16(vaddw_high_u16(vmovl_u16(*v10), *v10->i8), *&v10->i8[v5]), *(v10 + v5)), 2uLL);
          v8 += 4;
          v10 += 2;
        }

        while (v8 <= v7);
        v11 = (v7 & 0xFFFFFFFC) + 4;
        v12 = *(a1 + 8);
        if (v12 == 1)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

LABEL_15:
    v11 = 0;
    v12 = *(a1 + 8);
    if (v12 == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v18 = a4 - 8;
  if (a4 < 8)
  {
    goto LABEL_15;
  }

  v32 = 0;
  v33 = a3;
  v34 = a2;
  do
  {
    v35 = (v34 + v5);
    v47 = vld2q_s16(v34);
    v34 += 16;
    v49 = vld2q_s16(v35);
    *v33++ = vrshrn_high_n_s32(vrshrn_n_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v47.val[1].i8, *v47.val[0].i8), *v49.val[1].i8), *v49.val[0].i8), 2uLL), vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v47.val[1], v47.val[0]), v49.val[1]), v49.val[0]), 2uLL);
    v32 += 8;
  }

  while (v32 <= v18);
  v11 = (v18 & 0xFFFFFFF8) + 8;
  v12 = *(a1 + 8);
  if (v12 == 1)
  {
LABEL_8:
    if (v11 < a4)
    {
      v13 = v11;
      v14 = a4 - v11;
      if (v14 < 8)
      {
        goto LABEL_10;
      }

      v36 = (a3 + 2 * v11);
      v37 = a3 + 2 * a4;
      v38 = a2 + 2 * v11;
      v39 = a2 + 4 * a4;
      v40 = v39 + v6;
      v41 = v36 >= v39 || v38 >= v37;
      v42 = !v41;
      if (v38 + v6 < v37 && v36 < v40)
      {
        goto LABEL_10;
      }

      if (v42)
      {
        goto LABEL_10;
      }

      v13 = (v14 & 0xFFFFFFFFFFFFFFF8) + v11;
      v44 = v14 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v45 = (v38 + v6);
        v48 = vld2q_s16(v38);
        v38 += 16;
        v50 = vld2q_s16(v45);
        *v36++ = vrshrn_high_n_s32(vrshrn_n_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v48.val[0].i8, *v48.val[1].i8), *v50.val[0].i8), *v50.val[1].i8), 2uLL), vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v48.val[0], v48.val[1]), v50.val[0]), v50.val[1]), 2uLL);
        v44 -= 8;
      }

      while (v44);
      if (v14 != (v14 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_10:
        v15 = a3 + v13;
        v16 = a4 - v13;
        v17 = a2 + 2 * v13 + 1;
        do
        {
          *v15++ = (*(v17 - 1) + *v17 + *(v17 + v6 - 2) + *(v17 + v6) + 2) >> 2;
          v17 += 2;
          --v16;
        }

        while (v16);
      }

      return a4;
    }

    return v11;
  }

LABEL_16:
  if (v12 == 4)
  {
    if (v11 >= a4)
    {
      return v11;
    }

    v19 = v11;
    v26 = &a2[1] + 2 * v11 + 3;
    v27 = a3 + v11 + 2;
    do
    {
      v28 = (v26 + v6);
      *(v27 - 2) = (*(v26 - 7) + *(v26 - 3) + *(v26 + v6 - 14) + *(v26 + v6 - 6) + 2) >> 2;
      *(v27 - 1) = (*(v26 - 6) + *(v26 - 2) + *(v26 + v6 - 12) + *(v26 + v6 - 4) + 2) >> 2;
      *v27 = (*(v26 - 5) + *(v26 - 1) + *(v26 + v6 - 10) + *(v26 + v6 - 2) + 2) >> 2;
      v29 = *(v26 - 4);
      v30 = *v26;
      v26 += 8;
      v27[1] = (v29 + v30 + *(v28 - 4) + *v28 + 2) >> 2;
      v19 += 4;
      v27 += 4;
    }

    while (v19 < a4);
    return v19;
  }

  if (v12 != 3)
  {
    v46[0] = 0;
    v46[1] = 0;
    v25 = sub_1002A80E0(v46, 7);
    *v25 = 1025535587;
    *(v25 + 3) = 874528061;
    sub_1002A8980(-215, v46, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2890);
  }

  if (v11 < a4)
  {
    v19 = v11;
    v20 = a3 + v11 + 2;
    v21 = &a2[1] + 2 * v11 + 1;
    do
    {
      v22 = (v21 + v6);
      *(v20 - 2) = (*(v21 - 5) + *(v21 - 2) + *(v21 + v6 - 10) + *(v21 + v6 - 4) + 2) >> 2;
      *(v20 - 1) = (*(v21 - 4) + *(v21 - 1) + *(v21 + v6 - 8) + *(v21 + v6 - 2) + 2) >> 2;
      v23 = *(v21 - 3);
      v24 = *v21;
      v21 += 6;
      *v20 = (v23 + v24 + *(v22 - 3) + *v22 + 2) >> 2;
      v20 += 3;
      v19 += 3;
    }

    while (v19 < a4);
    return v19;
  }

  return v11;
}

uint64_t sub_10034BE30(uint64_t a1)
{
  *a1 = off_10047A7F8;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_10034BF6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *a1 = off_10047A838;
  v13 = *a2;
  v14 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v14;
  *(a1 + 40) = *(a2 + 32);
  v15 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v15;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v15)
  {
    atomic_fetch_add((v15 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v16 = *(a2 + 72);
      v17 = *(a1 + 80);
      *v17 = *v16;
      v17[1] = v16[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v13) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v18 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v19 = *(a3 + 32);
  v21 = *(a3 + 48);
  v20 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v19;
  *(a1 + 152) = v21;
  *(a1 + 160) = v20;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v18;
  if (!v20)
  {
    if (SDWORD1(v18) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v20 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v22 = *(a3 + 72);
  v23 = *(a1 + 176);
  *v23 = *v22;
  v23[1] = v22[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a7;
  return a1;
}

void sub_10034C0E4(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_10034C114(uint64_t a1)
{
  sub_10034C94C(a1);

  operator delete();
}

void sub_10034C14C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 72);
  v3 = v2[1];
  v4 = *v2;
  v5 = *(*(a1 + 168) + 4);
  v6 = *(a1 + 8);
  v7 = (v6 >> 3) & 0x1FF;
  v8 = v7 + 1;
  v9 = *(a1 + 200);
  v10 = *(a1 + 204);
  v11 = *(a1 + 88);
  v65[0] = v9;
  v65[1] = v10;
  v65[2] = v7 + 1;
  v67 = v11;
  v68 = v7 + 1;
  v69 = v11;
  v46 = v7 > 3;
  v12 = 0xDu >> ((v6 >> 3) & 0xF);
  if (v46)
  {
    LOBYTE(v12) = 0;
  }

  if (v10 != 2)
  {
    LOBYTE(v12) = 0;
  }

  if (v9 != 2)
  {
    LOBYTE(v12) = 0;
  }

  v66 = v12 & 1;
  v13 = *a2;
  if (v13 < a2[1])
  {
    v15 = v10 * v9;
    v63 = v3 / v9 * v8;
    v16 = v10 * v9 - 4;
    v56 = ((v10 * v9 - 4) & 0xFFFFFFFC) + 4;
    v58 = v8 * v3;
    v59 = v8 * v3;
    v62 = v8 * v5;
    v57 = 2 * (v8 * v5);
    v17 = 2 * ((v6 >> 3) & 0x1FF) + 2;
    do
    {
      v18 = (*(a1 + 120) + *(a1 + 184) * v13);
      v19 = *(a1 + 204);
      v20 = v19 * v13;
      if (v19 * v13 + v19 <= v4)
      {
        v21 = v63;
      }

      else
      {
        v21 = 0;
      }

      if (v20 >= v4)
      {
        if (v62 >= 1)
        {
          bzero((*(a1 + 120) + *(a1 + 184) * v13), v57);
        }
      }

      else
      {
        v60 = v19 * v13;
        v61 = v13;
        v22 = v20;
        v23 = v21;
        v24 = sub_10034C510(v65, (*(a1 + 24) + **(a1 + 80) * v20), v18, v21);
        if (v24 < v23)
        {
          v26 = *(a1 + 24) + **(a1 + 80) * v22;
          v27 = *(a1 + 216);
          v28 = v24;
          while (1)
          {
            v30 = v26 + 2 * *(v27 + 4 * v28);
            if (v15 >= 4)
            {
              break;
            }

            v31 = 0;
            v32 = 0.0;
            if (v15 > 0)
            {
              goto LABEL_27;
            }

LABEL_16:
            v29 = rintf((1.0 / v15) * v32);
            if (v29 <= -32768)
            {
              LODWORD(v29) = -32768;
            }

            if (v29 >= 0x7FFF)
            {
              LOWORD(v29) = 0x7FFF;
            }

            v18->i16[v28++] = v29;
            if (v28 == v23)
            {
              v24 = v23;
              goto LABEL_33;
            }
          }

          v33 = 0;
          v34 = (*(a1 + 208) + 8);
          v32 = 0.0;
          do
          {
            v35 = *(v30 + 2 * *(v34 - 1)) + *(v30 + 2 * *(v34 - 2));
            v36 = *v34;
            v37 = v34[1];
            v34 += 4;
            *v25.i32 = (v35 + *(v30 + 2 * v36) + *(v30 + 2 * v37));
            v32 = v32 + *v25.i32;
            v33 += 4;
          }

          while (v33 <= v16);
          v31 = v56;
          if (v56 >= v15)
          {
            goto LABEL_16;
          }

LABEL_27:
          v38 = (*(a1 + 208) + 4 * v31);
          do
          {
            v39 = *v38++;
            v25.i16[0] = *(v30 + 2 * v39);
            v25 = vmovl_s16(v25).u64[0];
            *v25.i32 = v25.i32[0];
            v32 = v32 + *v25.i32;
            ++v31;
          }

          while (v15 > v31);
          goto LABEL_16;
        }

LABEL_33:
        v13 = v61;
        if (v24 < v62)
        {
          v40 = *(a1 + 216);
          v41 = *(a1 + 204);
          v42 = v24;
          do
          {
            v45 = *(v40 + 4 * v42);
            v46 = v45 >= v59 || v41 < 1;
            if (v46)
            {
              v43 = NAN;
            }

            else
            {
              v47 = 0;
              v48 = 0;
              v49 = v58 - v45;
              v50 = 2 * v45;
              v51 = 0.0;
              v52 = v60;
              do
              {
                if (v47 + v22 >= v4)
                {
                  break;
                }

                v53 = (*(a1 + 200) * v8);
                if (v53 >= 1)
                {
                  v54 = (*(a1 + 24) + v50 + **(a1 + 80) * v52);
                  v55 = v8;
                  do
                  {
                    v25.i16[0] = *v54;
                    v25 = vmovl_s16(v25).u64[0];
                    *v25.i32 = v25.i32[0];
                    v51 = v51 + *v25.i32;
                    ++v48;
                    if (v55 >= v53)
                    {
                      break;
                    }

                    v54 = (v54 + v17);
                    v46 = v55 < v49;
                    v55 += v8;
                  }

                  while (v46);
                }

                ++v47;
                ++v52;
              }

              while (v47 != v41);
              *v25.i32 = v48;
              v43 = v51 / v48;
            }

            v44 = rintf(v43);
            if (v44 <= -32768)
            {
              LODWORD(v44) = -32768;
            }

            if (v44 >= 0x7FFF)
            {
              LOWORD(v44) = 0x7FFF;
            }

            v18->i16[v42++] = v44;
          }

          while (v42 != v62);
        }
      }

      ++v13;
    }

    while (v13 < a2[1]);
  }
}

uint64_t sub_10034C510(uint64_t a1, int16x4_t *a2, int16x4_t *a3, uint64_t a4)
{
  if (*(a1 + 12) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  if (v4 != 1)
  {
    if (v4 == 4)
    {
      v7 = a4 - 4;
      if (a4 >= 4)
      {
        v8 = 0;
        v9 = a3;
        v10 = a2;
        do
        {
          *v9++ = vrshrn_n_s32(vaddw_s16(vaddw_high_s16(vaddw_high_s16(vmovl_s16(*v10), *v10->i8), *&v10->i8[v5]), *(v10 + v5)), 2uLL);
          v8 += 4;
          v10 += 2;
        }

        while (v8 <= v7);
        v11 = (v7 & 0xFFFFFFFC) + 4;
        v12 = *(a1 + 8);
        if (v12 == 1)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

LABEL_15:
    v11 = 0;
    v12 = *(a1 + 8);
    if (v12 == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v18 = a4 - 8;
  if (a4 < 8)
  {
    goto LABEL_15;
  }

  v26 = 0;
  v27 = a3;
  v28 = a2;
  do
  {
    v29 = (v28 + v5);
    v41 = vld2q_s16(v28);
    v28 += 16;
    v43 = vld2q_s16(v29);
    *v27++ = vrshrn_high_n_s32(vrshrn_n_s32(vaddw_s16(vaddw_s16(vaddl_s16(*v41.val[1].i8, *v41.val[0].i8), *v43.val[1].i8), *v43.val[0].i8), 2uLL), vaddw_high_s16(vaddw_high_s16(vaddl_high_s16(v41.val[1], v41.val[0]), v43.val[1]), v43.val[0]), 2uLL);
    v26 += 8;
  }

  while (v26 <= v18);
  v11 = (v18 & 0xFFFFFFF8) + 8;
  v12 = *(a1 + 8);
  if (v12 == 1)
  {
LABEL_8:
    if (v11 < a4)
    {
      v13 = v11;
      v14 = a4 - v11;
      if (v14 < 8)
      {
        goto LABEL_10;
      }

      v30 = (a3 + 2 * v11);
      v31 = a3 + 2 * a4;
      v32 = a2 + 2 * v11;
      v33 = a2 + 4 * a4;
      v34 = v33 + v6;
      v35 = v30 >= v33 || v32 >= v31;
      v36 = !v35;
      if (v32 + v6 < v31 && v30 < v34)
      {
        goto LABEL_10;
      }

      if (v36)
      {
        goto LABEL_10;
      }

      v13 = (v14 & 0xFFFFFFFFFFFFFFF8) + v11;
      v38 = v14 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v39 = (v32 + v6);
        v42 = vld2q_s16(v32);
        v32 += 16;
        v44 = vld2q_s16(v39);
        *v30++ = vrshrn_high_n_s32(vrshrn_n_s32(vaddw_s16(vaddw_s16(vaddl_s16(*v42.val[0].i8, *v42.val[1].i8), *v44.val[0].i8), *v44.val[1].i8), 2uLL), vaddw_high_s16(vaddw_high_s16(vaddl_high_s16(v42.val[0], v42.val[1]), v44.val[0]), v44.val[1]), 2uLL);
        v38 -= 8;
      }

      while (v38);
      if (v14 != (v14 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_10:
        v15 = a3 + v13;
        v16 = a4 - v13;
        v17 = a2 + 2 * v13 + 1;
        do
        {
          *v15++ = (*(v17 - 1) + *v17 + *(v17 + v6 - 2) + *(v17 + v6) + 2) >> 2;
          v17 += 2;
          --v16;
        }

        while (v16);
      }

      return a4;
    }

    return v11;
  }

LABEL_16:
  if (v12 == 4)
  {
    if (v11 >= a4)
    {
      return v11;
    }

    v19 = v11;
    v23 = &a2[1] + 2 * v11 + 3;
    v24 = a3 + v11 + 2;
    do
    {
      *(v24 - 2) = (*(v23 - 7) + *(v23 - 3) + *(v23 + v6 - 14) + *(v23 + v6 - 6) + 2) >> 2;
      *(v24 - 1) = (*(v23 - 6) + *(v23 - 2) + *(v23 + v6 - 12) + *(v23 + v6 - 4) + 2) >> 2;
      *v24 = (*(v23 - 5) + *(v23 - 1) + *(v23 + v6 - 10) + *(v23 + v6 - 2) + 2) >> 2;
      v24[1] = (*(v23 - 4) + *v23 + *(v23 + v6 - 8) + *(v23 + v6) + 2) >> 2;
      v19 += 4;
      v23 += 8;
      v24 += 4;
    }

    while (v19 < a4);
    return v19;
  }

  if (v12 != 3)
  {
    v40[0] = 0;
    v40[1] = 0;
    v22 = sub_1002A80E0(v40, 7);
    *v22 = 1025535587;
    *(v22 + 3) = 874528061;
    sub_1002A8980(-215, v40, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 2890);
  }

  if (v11 < a4)
  {
    v19 = v11;
    v20 = a3 + v11 + 2;
    v21 = &a2[1] + 2 * v11 + 1;
    do
    {
      *(v20 - 2) = (*(v21 - 5) + *(v21 - 2) + *(v21 + v6 - 10) + *(v21 + v6 - 4) + 2) >> 2;
      *(v20 - 1) = (*(v21 - 4) + *(v21 - 1) + *(v21 + v6 - 8) + *(v21 + v6 - 2) + 2) >> 2;
      *v20 = (*(v21 - 3) + *v21 + *(v21 + v6 - 6) + *(v21 + v6) + 2) >> 2;
      v20 += 3;
      v19 += 3;
      v21 += 6;
    }

    while (v19 < a4);
    return v19;
  }

  return v11;
}

uint64_t sub_10034C94C(uint64_t a1)
{
  *a1 = off_10047A838;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_10034CA88(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *a1 = off_10047A878;
  v13 = *a2;
  v14 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v14;
  *(a1 + 40) = *(a2 + 32);
  v15 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v15;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v15)
  {
    atomic_fetch_add((v15 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v16 = *(a2 + 72);
      v17 = *(a1 + 80);
      *v17 = *v16;
      v17[1] = v16[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v13) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v18 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v19 = *(a3 + 32);
  v21 = *(a3 + 48);
  v20 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v19;
  *(a1 + 152) = v21;
  *(a1 + 160) = v20;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v18;
  if (!v20)
  {
    if (SDWORD1(v18) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v20 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v22 = *(a3 + 72);
  v23 = *(a1 + 176);
  *v23 = *v22;
  v23[1] = v22[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a7;
  return a1;
}

void sub_10034CC00(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_10034CC30(uint64_t a1)
{
  sub_10034D08C(a1);

  operator delete();
}

void sub_10034CC68(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = (v2 >> 3) & 0x1FF;
  v4 = v3 + 1;
  v5 = *(a1 + 200);
  v6 = *(a1 + 204);
  v73 = v3;
  if (v3)
  {
    _ZF = v4 == 4;
  }

  else
  {
    _ZF = 1;
  }

  v8 = _ZF;
  if (v6 != 2)
  {
    v8 = 0;
  }

  if (v5 != 2)
  {
    v8 = 0;
  }

  v79 = v8;
  v9 = *a2;
  if (v9 < a2[1])
  {
    v10 = a2;
    v12 = *(a1 + 72);
    v13 = v12[1];
    v14 = *v12;
    v15 = v6 * v5;
    v16 = (v13 / v5 * v4);
    v17 = (v4 * *(*(a1 + 168) + 4));
    v18 = v4 * v13;
    v19 = *(a1 + 88);
    v76 = 4 * v17;
    v77 = v19;
    v20 = v6 * v5 - 4;
    v21 = ((v6 * v5 - 4) & 0xFFFFFFFC) + 4;
    v22 = v4 * v13;
    v81 = v17;
    v23 = 4 * ((v2 >> 3) & 0x1FF) + 4;
    __asm { FMOV            V4.4S, #0.25 }

    v78 = v4 * v13;
    v75 = v21;
    v74 = _Q4;
    do
    {
      v28 = (*(a1 + 120) + *(a1 + 184) * v9);
      v29 = *(a1 + 204);
      v30 = v29 * v9;
      if (v29 * v9 + v29 <= v14)
      {
        v31 = v16;
      }

      else
      {
        v31 = 0;
      }

      if (v30 >= v14)
      {
        if (v17 >= 1)
        {
          v39 = v10;
          v40 = v16;
          v80 = v9;
          v41 = v17;
          bzero(v28, v76);
          _Q4 = v74;
          v17 = v41;
          v9 = v80;
          v21 = v75;
          v16 = v40;
          v10 = v39;
          v19 = v77;
          v18 = v78;
        }
      }

      else
      {
        if (v79)
        {
          v32 = (*(a1 + 24) + **(a1 + 80) * v30);
          if (v73)
          {
            if (v73 == 3)
            {
              v33 = v31 - 4;
              if (v31 >= 4)
              {
                v34 = 0;
                v35 = (*(a1 + 120) + *(a1 + 184) * v9);
                do
                {
                  v36 = (v32 + v19);
                  v37 = *v32;
                  v38 = v32[1];
                  v32 += 2;
                  *v35++ = vmulq_f32(vaddq_f32(vaddq_f32(v37, v38), vaddq_f32(*v36, v36[1])), _Q4);
                  v34 += 4;
                }

                while (v34 <= v33);
                goto LABEL_60;
              }
            }
          }

          else
          {
            v33 = v31 - 4;
            if (v31 >= 4)
            {
              v70 = 0;
              v71 = (*(a1 + 120) + *(a1 + 184) * v9);
              do
              {
                v72 = (v32->f32 + v19);
                v82 = vld2q_f32(v32->f32);
                v32 += 2;
                v83 = vld2q_f32(v72);
                *v71++ = vmulq_f32(vaddq_f32(vaddq_f32(v82.val[0], v82.val[1]), vaddq_f32(v83.val[0], v83.val[1])), _Q4);
                v70 += 4;
              }

              while (v70 <= v33);
LABEL_60:
              LODWORD(v42) = (v33 & 0xFFFFFFFC) + 4;
              if (v42 >= v31)
              {
                goto LABEL_41;
              }

LABEL_29:
              v43 = *(a1 + 24) + **(a1 + 80) * v30;
              v44 = *(a1 + 216);
              v42 = v42;
              while (2)
              {
                v45 = v43 + 4 * *(v44 + 4 * v42);
                if (v15 >= 4)
                {
                  v48 = 0;
                  v49 = (*(a1 + 208) + 8);
                  v47 = 0.0;
                  do
                  {
                    v50 = *(v45 + 4 * *(v49 - 2));
                    v51 = *(v45 + 4 * *(v49 - 1));
                    v52 = *v49;
                    v53 = v49[1];
                    v49 += 4;
                    v47 = v47 + (((v50 + v51) + *(v45 + 4 * v52)) + *(v45 + 4 * v53));
                    v48 += 4;
                  }

                  while (v48 <= v20);
                  v46 = v21;
                  if (v21 < v15)
                  {
LABEL_37:
                    v54 = (*(a1 + 208) + 4 * v46);
                    do
                    {
                      v55 = *v54++;
                      v47 = v47 + *(v45 + 4 * v55);
                      ++v46;
                    }

                    while (v15 > v46);
                  }
                }

                else
                {
                  v46 = 0;
                  v47 = 0.0;
                  if (v15 > 0)
                  {
                    goto LABEL_37;
                  }
                }

                *(v28 + v42++) = (1.0 / v15) * v47;
                if (v42 == v31)
                {
                  LODWORD(v42) = v31;
                  goto LABEL_41;
                }

                continue;
              }
            }
          }
        }

        LODWORD(v42) = 0;
        if (v31 > 0)
        {
          goto LABEL_29;
        }

LABEL_41:
        if (v42 < v17)
        {
          v56 = *(a1 + 216);
          v57 = *(a1 + 204);
          v58 = v42;
          do
          {
            while (1)
            {
              v59 = *(v56 + 4 * v58);
              v60 = v59 >= v18 || v57 < 1;
              if (!v60)
              {
                break;
              }

              *(v28 + v58++) = 2143289344;
              if (v58 == v81)
              {
                goto LABEL_13;
              }
            }

            v61 = 0;
            v62 = 0;
            v63 = v22 - v59;
            v64 = 4 * v59;
            v65 = 0.0;
            v66 = v30;
            do
            {
              if (v61 + v30 >= v14)
              {
                break;
              }

              v67 = (*(a1 + 200) * v4);
              if (v67 >= 1)
              {
                v68 = (*(a1 + 24) + v64 + **(a1 + 80) * v66);
                v69 = v4;
                do
                {
                  v65 = v65 + *v68;
                  ++v62;
                  if (v69 >= v67)
                  {
                    break;
                  }

                  v68 = (v68 + v23);
                  v60 = v69 < v63;
                  v69 += v4;
                }

                while (v60);
              }

              ++v61;
              ++v66;
            }

            while (v61 != v57);
            *(v28 + v58++) = v65 / v62;
          }

          while (v58 != v81);
        }
      }

LABEL_13:
      ++v9;
    }

    while (v9 < v10[1]);
  }
}

uint64_t sub_10034D08C(uint64_t a1)
{
  *a1 = off_10047A878;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}

uint64_t sub_10034D1C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *a1 = off_10047A8B8;
  v13 = *a2;
  v14 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v14;
  *(a1 + 40) = *(a2 + 32);
  v15 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v15;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v15)
  {
    atomic_fetch_add((v15 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v16 = *(a2 + 72);
      v17 = *(a1 + 80);
      *v17 = *v16;
      v17[1] = v16[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v13) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v18 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v19 = *(a3 + 32);
  v21 = *(a3 + 48);
  v20 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v19;
  *(a1 + 152) = v21;
  *(a1 + 160) = v20;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v18;
  if (!v20)
  {
    if (SDWORD1(v18) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v20 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v22 = *(a3 + 72);
  v23 = *(a1 + 176);
  *v23 = *v22;
  v23[1] = v22[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a7;
  return a1;
}

void sub_10034D340(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_10034D370(uint64_t a1)
{
  sub_10034D6F4(a1);

  operator delete();
}

void sub_10034D3A8(uint64_t a1, int *a2)
{
  v2 = a2[1];
  v66 = *a2;
  if (v2 > v66)
  {
    v3 = a1;
    v4 = 0;
    v5 = *(a1 + 72);
    v6 = *(a1 + 8);
    v7 = ((v6 >> 3) & 0x1FF) + 1;
    v8 = *(a1 + 200);
    v9 = *(a1 + 204);
    v10 = v9 * v8;
    v11 = v5[1];
    v12 = *v5;
    v13 = (v11 / v8 * v7);
    v14 = (v7 * *(*(a1 + 168) + 4));
    v15 = v7 * v11;
    v16 = *(a1 + 120);
    v17 = *(a1 + 184);
    v18 = (1.0 / (v9 * v8));
    v62 = 8 * v14;
    v63 = v17;
    v19 = v9 * v8 - 4;
    v20 = ((v9 * v8 - 4) & 0xFFFFFFFC) + 4;
    v21 = v7 * v8;
    v22 = v7 * v11;
    v23 = *a2;
    v24 = v2 - v66;
    v69 = v66 * v9;
    v25 = 8 * ((v6 >> 3) & 0x1FF) + 8;
    v64 = v14;
    v61 = v20;
    v60 = v22;
    v59 = v2 - v66;
    do
    {
      v26 = v23 * v9;
      v68 = v23;
      if (v23 * v9 >= v12)
      {
        if (v14 >= 1)
        {
          v67 = v4;
          v32 = v13;
          v33 = v16;
          bzero((v16 + v17 * (v4 + v66)), v62);
          v24 = v59;
          v17 = v63;
          v14 = v64;
          v16 = v33;
          v22 = v60;
          v3 = a1;
          v13 = v32;
          v20 = v61;
          v4 = v67;
        }

        goto LABEL_3;
      }

      v27 = v16 + v17 * v23;
      v28 = *(v3 + 24);
      v29 = **(v3 + 80);
      if (v26 > v12 - v9 || v13 < 1)
      {
        LODWORD(v31) = 0;
        if (v14 > 0)
        {
          goto LABEL_25;
        }

        goto LABEL_3;
      }

      v34 = 0;
      v35 = *(v3 + 216);
      do
      {
        v36 = v28 + v29 * v26 + 8 * *(v35 + 4 * v34);
        if (v10 < 4)
        {
          v37 = 0;
          v38 = 0.0;
          if (v10 <= 0)
          {
            goto LABEL_14;
          }

LABEL_21:
          v45 = (*(v3 + 208) + 4 * v37);
          do
          {
            v46 = *v45++;
            v38 = v38 + *(v36 + 8 * v46);
            ++v37;
          }

          while (v10 > v37);
          goto LABEL_14;
        }

        v39 = 0;
        v40 = (*(v3 + 208) + 8);
        v38 = 0.0;
        do
        {
          v41 = *(v36 + 8 * *(v40 - 2));
          v42 = *(v36 + 8 * *(v40 - 1));
          v43 = *v40;
          v44 = v40[1];
          v40 += 4;
          v38 = v38 + v41 + v42 + *(v36 + 8 * v43) + *(v36 + 8 * v44);
          v39 += 4;
        }

        while (v39 <= v19);
        v37 = v20;
        if (v20 < v10)
        {
          goto LABEL_21;
        }

LABEL_14:
        *(v27 + 8 * v34++) = v38 * v18;
      }

      while (v34 != v13);
      LODWORD(v31) = v13;
      if (v13 < v14)
      {
LABEL_25:
        v47 = *(v3 + 216);
        v31 = v31;
        v48 = v28 + v29 * v69;
        do
        {
          v51 = *(v47 + 4 * v31);
          if (v51 >= v15)
          {
            *(v27 + 8 * v31) = 0;
          }

          v49 = 0.0;
          v50 = 0.0;
          if (v9 >= 1 && v21 >= 1 && v51 < v15)
          {
            v52 = 0;
            v53 = 0;
            v54 = v22 - v51;
            if (v21 < v22 - v51)
            {
              v54 = v21;
            }

            v55 = (v48 + 8 * v51);
            v56 = 0.0;
            do
            {
              if (v52 + v26 >= v12)
              {
                break;
              }

              v57 = 0;
              v58 = v55;
              do
              {
                v56 = v56 + *v58;
                ++v53;
                v57 += v7;
                v58 = (v58 + v25);
              }

              while (v57 < v54);
              ++v52;
              v55 = (v55 + v29);
            }

            while (v52 != v9);
            v49 = v56;
            v50 = v53;
          }

          *(v27 + 8 * v31++) = (v49 / v50);
        }

        while (v31 != v14);
      }

LABEL_3:
      v23 = v68 + 1;
      ++v4;
      v69 += v9;
    }

    while (v24 != v4);
  }
}

uint64_t sub_10034D6F4(uint64_t a1)
{
  *a1 = off_10047A8B8;
  v2 = *(a1 + 160);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 168);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 108));
  }

  v5 = *(a1 + 176);
  if (v5 != (a1 + 184))
  {
    j__free(v5);
  }

  v6 = *(a1 + 64);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 72);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 12));
  }

  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    j__free(v9);
  }

  return nullsub_1(a1);
}