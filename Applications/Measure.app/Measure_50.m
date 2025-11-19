double sub_100335C40(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 2)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 2)) | 1;
      v13 = a1 + 12 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 2) + 2;
      if (v14 < a3 && (*a2)(a1 + 12 * v12, v13 + 12))
      {
        v13 += 12;
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v19 = *v7;
        v20 = *(v7 + 8);
        do
        {
          v16 = v13;
          *v7 = *v13;
          *(v7 + 8) = *(v13 + 8);
          if (v9 < v12)
          {
            break;
          }

          v17 = (2 * v12) | 1;
          v13 = a1 + 12 * v17;
          v18 = 2 * v12 + 2;
          if (v18 < a3)
          {
            if ((*a2)(a1 + 12 * v17, v13 + 12))
            {
              v13 += 12;
              v17 = v18;
            }
          }

          v7 = v16;
          v12 = v17;
        }

        while (!(*a2)(v13, &v19));
        result = v19;
        *v16 = v19;
        *(v16 + 8) = v20;
      }
    }
  }

  return result;
}

uint64_t sub_100335DB4(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v27 = v4;
    v28 = v5;
    v9 = 0;
    v23 = *(result + 4);
    v24 = *result;
    v10 = (a4 - 2) >> 1;
    v11 = result;
    v21 = result;
    v22 = *(result + 8);
    do
    {
      v12 = v11 + 12 * v9;
      v13 = v12 + 12;
      v14 = (2 * v9) | 1;
      v15 = 2 * v9 + 2;
      if (v15 < a4)
      {
        v16 = v12 + 24;
        result = (*a3)(v12 + 12, v12 + 24);
        if (result)
        {
          v13 = v16;
          v14 = v15;
        }
      }

      *v11 = *v13;
      *(v11 + 8) = *(v13 + 8);
      v11 = v13;
      v9 = v14;
    }

    while (v14 <= v10);
    if (v13 == a2 - 12)
    {
      *v13 = v24;
      *(v13 + 4) = v23;
      *(v13 + 8) = v22;
    }

    else
    {
      *v13 = *(a2 - 12);
      *(v13 + 8) = *(a2 - 4);
      *(a2 - 12) = v24;
      *(a2 - 8) = v23;
      *(a2 - 4) = v22;
      v17 = v13 - v21 + 12;
      if (v17 >= 13)
      {
        v18 = (0xAAAAAAAAAAAAAAABLL * (v17 >> 2) - 2) >> 1;
        v19 = v21 + 12 * v18;
        result = (*a3)(v19, v13);
        if (result)
        {
          v25 = *v13;
          v26 = *(v13 + 8);
          do
          {
            v20 = v19;
            *v13 = *v19;
            *(v13 + 8) = *(v19 + 8);
            if (!v18)
            {
              break;
            }

            v18 = (v18 - 1) >> 1;
            v19 = v21 + 12 * v18;
            result = (*a3)(v19, &v25);
            v13 = v20;
          }

          while ((result & 1) != 0);
          *v20 = v25;
          *(v20 + 8) = v26;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100335F84(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *a1 = 1124007936;
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  v3 = (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  sub_1003360D0(a1, v7, v3);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v4 = 0;
    v5 = v8;
    do
    {
      *(v5 + v4++) = 0;
    }

    while (v4 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }

  return a1;
}

void sub_1003360B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1002410F0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003360D0(uint64_t a1, uint64_t a2, double a3)
{
  if ((*a2 & 0xFFF) != 0)
  {
    if ((*a2 & 7) != 0)
    {
      *v15 = -2113863680;
      *&v15[8] = a1;
      *&v15[16] = 0;
      sub_10020EF14(a2, v15, 0, 1.0, 0.0);
      return a1;
    }

    sub_10026E8FC(a2, 1, *(a2 + 4), 0, v15);
    if (v15 == a1)
    {
      if (*&v15[56] && atomic_fetch_add((*&v15[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v15);
      }

      goto LABEL_22;
    }

    v5 = *(a1 + 56);
    if (v5 && atomic_fetch_add((v5 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1);
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 64);
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v6 < *(a1 + 4));
    }

    v8 = *&v15[4];
    v9 = *&v15[16];
    *a1 = *v15;
    *(a1 + 16) = v9;
    v10 = *&v15[48];
    *(a1 + 32) = *&v15[32];
    *(a1 + 48) = v10;
    v11 = *(a1 + 72);
    if (v11 == (a1 + 80))
    {
      v12 = v17;
      if (v8 <= 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      j__free(v11);
      *(a1 + 64) = a1 + 8;
      *(a1 + 72) = a1 + 80;
      v11 = (a1 + 80);
      v12 = v17;
      if (*&v15[4] <= 2)
      {
LABEL_15:
        *v11 = *v12;
        v11[1] = v12[1];
LABEL_21:
        *v15 = 1124007936;
        memset(&v15[4], 0, 60);
LABEL_22:
        *&v15[56] = 0;
        memset(&v15[16], 0, 32);
        if (*&v15[4] >= 1)
        {
          v13 = 0;
          v14 = v16;
          do
          {
            *&v14[4 * v13++] = 0;
          }

          while (v13 < *&v15[4]);
        }

        if (v17 != v18)
        {
          j__free(v17);
        }

        return a1;
      }
    }

    *(a1 + 64) = v16;
    *(a1 + 72) = v12;
    v16 = &v15[8];
    v17 = v18;
    goto LABEL_21;
  }

  sub_10025DAEC(a1, a2, a3);
  return a1;
}

void sub_100336300(unint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8, double a9, double a10, int a11, int a12)
{
  sub_1002ACE7C(v272, &off_10047A1E8);
  if (a11 * a8 <= 0 && (a9 <= 0.0 || a10 <= 0.0))
  {
    v278 = 0;
    v277 = 0;
    qmemcpy(sub_1002A80E0(&v277, 68), "(dst_width * dst_height > 0) || (inv_scale_x > 0 && inv_scale_y > 0)", 68);
    sub_1002A8980(-215, &v277, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3675);
  }

  if (a9 < 2.22044605e-16 || a10 < 2.22044605e-16)
  {
    a9 = a8 / a4;
    v20 = a5;
    a10 = a11 / a5;
  }

  else
  {
    v20 = a5;
  }

  v21 = rint(a9 * a4);
  v22 = rint(a10 * v20);
  if (v21 * v22 <= 0)
  {
    v278 = 0;
    v277 = 0;
    *sub_1002A80E0(&v277, 16) = *"dsize.area() > 0";
    sub_1002A8980(-215, &v277, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3687);
  }

  v18.n128_f64[0] = 1.0 / a9;
  v23 = rint(1.0 / a9);
  v24 = 1.0 / a10;
  v25 = rint(1.0 / a10);
  v248 = v18;
  v26 = vabdd_f64(1.0 / a9, v23) < 2.22044605e-16;
  v27 = vabdd_f64(1.0 / a10, v25) < 2.22044605e-16 && v26;
  v277 = __PAIR64__(a5, a4);
  sub_10024255C(&v264, &v277, a1, a2, a3);
  v242 = a5;
  v277 = __PAIR64__(v22, v21);
  sub_10024255C(v254, &v277, a1, a6, a7);
  v29 = a12;
  if (!a12)
  {
    v43 = *(v269 + 4);
    v44 = *v261;
    v45 = v261[1];
    v277 = v279;
    v278 = v45;
    if (v45 >= 0x109)
    {
      operator new[]();
    }

    if (v265 < 1)
    {
      LODWORD(v46) = 0;
      LODWORD(v47) = 0;
      if (v45 < 1)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v46 = *(v270 + v265 - 1);
      v47 = v46 >> 2;
      if (v45 < 1)
      {
        goto LABEL_116;
      }
    }

    v83 = v43 - 1;
    if (v45 >= 4)
    {
      v84 = v45 & 0x1FC;
      v86 = vdupq_n_s32(v83);
      v87 = xmmword_1003E3950;
      v88 = vdupq_n_s32(v46);
      v89.i64[0] = 0x400000004;
      v89.i64[1] = 0x400000004;
      v90 = v45 & 0x7FFFFFFC;
      v91 = v279;
      v85 = v248.n128_f64[0];
      do
      {
        v92.i64[0] = v87.u32[2];
        v92.i64[1] = v87.u32[3];
        v93 = vcvtq_f64_u64(v92);
        v92.i64[0] = v87.u32[0];
        v92.i64[1] = v87.u32[1];
        v94 = vmulq_n_f64(vcvtq_f64_u64(v92), v248.n128_f64[0]);
        v95 = vmulq_n_f64(v93, v248.n128_f64[0]);
        v96 = vcvtq_s64_f64(v95);
        v97 = vcvtq_s64_f64(v94);
        v98 = vuzp1q_s32(v97, v96);
        *v96.i8 = vmovn_s64(v96);
        *v97.i8 = vmovn_s64(v97);
        v92.i64[0] = v97.i32[0];
        v92.i64[1] = v97.i32[1];
        v99 = vcvtq_f64_s64(v92);
        v92.i64[0] = v96.i32[0];
        v92.i64[1] = v96.i32[1];
        *v91++ = vmulq_s32(vminq_s32(v86, vaddq_s32(vuzp1q_s32(vcgtq_f64(v99, v94), vcgtq_f64(vcvtq_f64_s64(v92), v95)), v98)), v88);
        v87 = vaddq_s32(v87, v89);
        v90 -= 4;
      }

      while (v90);
      if (v84 == v45)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v84 = 0;
      v85 = v248.n128_f64[0];
    }

    do
    {
      v100 = (v85 * v84) - (v85 * v84 < (v85 * v84));
      if (v83 < v100)
      {
        v100 = v43 - 1;
      }

      *&v279[4 * v84++] = v100 * v46;
    }

    while (v45 != v84);
LABEL_116:
    v274[0] = 0;
    v274[1] = v44;
    sub_10033B444(&__src, &v264, v254, v279, v47, 1.0 / a10);
    if (v255 >= 3)
    {
      v102 = v261 + 1;
      v103 = 1;
      v104 = v255 & 0x7FFFFFFE;
      v105 = 1;
      do
      {
        v103 *= *(v102 - 1);
        v105 *= *v102;
        v102 += 2;
        v104 -= 2;
      }

      while (v104);
      v101 = v105 * v103;
      v106 = v255 - (v255 & 0x7FFFFFFE);
      if (v106)
      {
        v107 = &v261[2 * ((v255 >> 1) & 0x3FFFFFFF)];
        do
        {
          v108 = *v107++;
          v101 *= v108;
          --v106;
        }

        while (v106);
      }
    }

    else
    {
      v101 = v257 * v256;
    }

    sub_1002829C8(v274, &__src, vcvtd_n_f64_u64(v101, 0x10uLL));
    sub_10033B950(&__src);
    if (v277 != v279 && v277 != 0)
    {
      goto LABEL_316;
    }

    goto LABEL_317;
  }

  v240 = a3;
  v241 = a1;
  v30 = a1 & 7;
  v250 = (a1 >> 3) & 0x1FF;
  v31 = v250 + 1;
  if (a12 == 1)
  {
    v37 = v25 == 2 && v23 == 2;
    if (v37 && v27)
    {
      v29 = 3;
    }

    else
    {
      v29 = 1;
    }

LABEL_42:
    v28.n128_u64[0] = 1.0;
    v38 = v248;
    if (v24 < 1.0 || v248.n128_f64[0] < 1.0 || v29 != 3)
    {
      goto LABEL_49;
    }

    goto LABEL_70;
  }

  if (a12 != 5)
  {
    goto LABEL_42;
  }

  v33 = v25 == 2 && v23 == 2 && v27;
  if (!v33 || v31 == 2)
  {
    if ((v30 - 5) <= 2)
    {
      v278 = 0;
      v277 = 0;
      v35 = sub_1002A80E0(&v277, 9);
      *(v35 + 8) = 48;
      *v35 = *"func != 0";
      sub_1002A8980(-215, &v277, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3827);
    }

    (off_10047A348[v30])(a2, v240, a4, v242, a6, a7, a8, a11, a9, a10, v31);
    goto LABEL_317;
  }

  v29 = 3;
  v28.n128_u64[0] = 1.0;
  v38 = v248;
  if (v24 >= 1.0 && v248.n128_f64[0] >= 1.0)
  {
LABEL_70:
    if (!v27)
    {
      v74 = v22;
      v75 = off_10047A308[v30];
      if (v250 > 3 || ((0x6DuLL >> v30) & 1) == 0)
      {
        v278 = 0;
        v277 = 0;
        v76 = sub_1002A80E0(&v277, 20);
        *(v76 + 16) = 874528060;
        *v76 = *"func != 0 && cn <= 4";
        sub_1002A8980(-215, &v277, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3881);
      }

      v77 = 2 * (v242 + a4);
      v277 = v279;
      v278 = v77;
      if (v77 >= 0x5E)
      {
        is_mul_ok(v77, 0xCuLL);
        operator new[]();
      }

      v78 = 2 * a4;
      v79 = sub_10033AA40(a4, v21, v31, v279, v248.n128_f64[0]);
      v80 = sub_10033AA40(v242, v74, 1u, &v279[24 * a4], 1.0 / a10);
      __src.i64[0] = v276;
      __src.i64[1] = (&_mh_execute_header + (v74 << 32)) >> 32;
      if (__src.i64[1] >= 0x109uLL)
      {
        operator new[]();
      }

      if (v80 < 1)
      {
        v81 = 0;
      }

      else
      {
        v276[0] = 0.0;
        if (v80 == 1)
        {
          v81 = 1;
        }

        else
        {
          v124 = &v279[12 * v78 + 16];
          v125 = 1;
          v126 = 1;
          do
          {
            if (*v124 != *(v124 - 3))
            {
              LODWORD(v276[v126++]) = v125;
            }

            v124 += 3;
            ++v125;
          }

          while (v80 != v125);
          v81 = v126;
        }
      }

      LODWORD(v276[v81]) = v80;
      (v75)(&v264, v254, v279, v79, &v279[12 * v78], v80);
      if (__src.i64[0] != v276 && __src.i64[0] != 0)
      {
        operator delete[]();
      }

      if (v277 != v279 && v277)
      {
        goto LABEL_316;
      }

      goto LABEL_317;
    }

    v50 = v23 * v25;
    v51 = v23 * v25 + v31 * v21;
    v277 = v279;
    v278 = v51;
    if (v51 >= 0x109)
    {
      operator new[]();
    }

    v52 = off_10047A2C8[v30];
    if ((0x92uLL >> v30))
    {
      __src = 0uLL;
      v53 = sub_1002A80E0(&__src, 9);
      *(v53 + 8) = 48;
      *v53 = *"func != 0";
      sub_1002A8980(-215, &__src, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3862);
    }

    if (v25 >= 1 && v23 >= 1)
    {
      LODWORD(v110) = 0;
      v111 = 0;
      v28 = xmmword_1003E3950;
      v38 = vdupq_n_s32(v31);
      v112 = v240 / ((0x88442211uLL >> (4 * (v264 & 7u))) & 0xF);
      v113.i64[0] = 0x400000004;
      v113.i64[1] = 0x400000004;
      v114.i64[0] = 0x800000008;
      v114.i64[1] = 0x800000008;
      do
      {
        v115 = v111 * v112;
        v116 = v110;
        if ((v23 & 0x7FFFFFFF) >= 8uLL)
        {
          v110 = v110 + (v23 & 0x7FFFFFFF) - (v23 & 7);
          v118 = vdupq_n_s32(v115);
          v119 = (v23 & 0x7FFFFFFF) - (v23 & 7);
          v120 = xmmword_1003E3950;
          v121 = &v279[4 * v116 + 16];
          do
          {
            v121[-1] = vmlaq_s32(v118, v120, v38);
            *v121 = vmlaq_s32(v118, vaddq_s32(v120, v113), v38);
            v120 = vaddq_s32(v120, v114);
            v121 += 2;
            v119 -= 8;
          }

          while (v119);
          v117 = (v23 & 0x7FFFFFFF) - (v23 & 7);
          if ((v23 & 7) == 0)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v117 = 0;
          v110 = v110;
        }

        v122 = v23 - v117;
        v123 = v110;
        do
        {
          LODWORD(v110) = v123 + 1;
          *&v279[4 * v123] = v115 + v117 * v31;
          ++v117;
          ++v123;
          --v122;
        }

        while (v122);
LABEL_128:
        ++v111;
      }

      while (v111 != v25);
    }

    if (v21 < 1)
    {
LABEL_101:
      (v52)(&v264, v254, v279, &v279[4 * v50], v23, v25, v28, v38);
      if (v277 != v279 && v277 != 0)
      {
        goto LABEL_316;
      }

      goto LABEL_317;
    }

    v55 = 0;
    v56 = 0;
    v57 = &v279[4 * v50 + 16];
    v58 = (v241 >> 3) & 0x1FF;
    v59 = 4 * v58 + 4;
    v60 = v58 + 1;
    v28 = xmmword_1003E3940;
    v38 = xmmword_1003E0C50;
    v61.i64[0] = 0x400000004;
    v61.i64[1] = 0x400000004;
    v62 = vdupq_n_s64(8uLL);
    v63 = &v279[4 * v50];
    while (1)
    {
      if (v250 >= 7)
      {
        v65 = vdupq_n_s64(v56 * v31 * v23);
        v66 = (v250 + 1) & 0x3F8;
        v67 = v57;
        v68 = xmmword_1003E0C50;
        v69 = xmmword_1003E3940;
        do
        {
          v70 = vuzp1q_s32(vaddq_s64(v68, v65), vaddq_s64(v69, v65));
          v67[-1] = v70;
          *v67 = vaddq_s32(v70, v61);
          v69 = vaddq_s64(v69, v62);
          v68 = vaddq_s64(v68, v62);
          v67 += 2;
          v66 -= 8;
        }

        while (v66);
        v64 = (v250 + 1) & 0x3F8;
        if (v64 == v250 + 1)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v64 = 0;
      }

      v71 = &v63[4 * v64];
      v72 = v55 + v64;
      v73 = v60 - v64;
      do
      {
        *v71++ = v72++;
        --v73;
      }

      while (v73);
LABEL_82:
      ++v56;
      v57 = (v57 + v59);
      v63 += v59;
      v55 += v31 * v23;
      if (v56 == (v21 & 0x7FFFFFFF))
      {
        goto LABEL_101;
      }
    }
  }

LABEL_49:
  if (v29 != 2)
  {
    if (v29 != 1)
    {
      if (v29 == 4)
      {
        v41 = 8;
        v42 = off_10047A288[v30];
        v246 = 4;
        if (v42)
        {
          goto LABEL_155;
        }

LABEL_154:
        v278 = 0;
        v277 = 0;
        v128 = sub_1002A80E0(&v277, 9);
        *(v128 + 8) = 48;
        *v128 = *"func != 0";
        sub_1002A8980(-215, &v277, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3922);
      }

      if (v29 != 3)
      {
        sub_1001FA81C(&v277, "Unknown interpolation method");
        sub_1002A8980(-5, &v277, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3919);
      }
    }

    v41 = 2;
    v42 = off_10047A208[v30];
    v246 = 1;
    if (v42)
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

  v41 = 4;
  v42 = off_10047A248[v30];
  v246 = 2;
  if (!v42)
  {
    goto LABEL_154;
  }

LABEL_155:
  v129 = v31 * v21;
  v277 = v279;
  v278 = (4 * v41 + 4) * (v31 * v21 + v22);
  if (v278 >= 0x409)
  {
    operator new[]();
  }

  v228 = v42;
  v229 = v22;
  v253 = v30;
  v130 = v129;
  v131 = 4 * v22;
  v227 = &v279[4 * v129];
  v234 = v227 + v131;
  v226 = v41 * v129;
  _Q0.i64[1] = 0;
  __src = 0u;
  memset(v276, 0, 48);
  __asm { FMOV            V0.2S, #1.25 }

  v238 = *_Q0.f32;
  __asm
  {
    FMOV            V12.2S, #-2.25
    FMOV            V13.2S, #1.0
  }

  v247 = v21;
  if (v21 >= 1)
  {
    v136 = v21;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = v41 * v31;
    v235 = a4 - 1;
    v142 = v131 + 4 * v130;
    v239 = &v279[v142];
    v143 = v41;
    v243 = v136 & 0x7FFFFFFF;
    v144 = v141 - v41;
    v232 = v144 & 0xFFFFFFFFFFFFFFF8;
    v231 = (v144 & 0xFFFFFFFFFFFFFFF8) + v41;
    v146 = v144 < 8 || v41 < 8;
    v233 = v146;
    v230 = &v279[v142 + 16];
    _Q0.i64[1] = 0x300000002;
    v147.i64[0] = 0x400000004;
    v147.i64[1] = 0x400000004;
    v148.i64[0] = 0x800000008;
    v148.i64[1] = 0x800000008;
    v236 = v131;
    v237 = v130;
    while (1)
    {
      v149 = v139;
      if (v29 == 3)
      {
        v150 = (v248.n128_f64[0] * v149) - (v248.n128_f64[0] * v149 < (v248.n128_f64[0] * v149));
        v151 = (v139 + 1) - (v150 + 1) * a9;
        _Q0.i64[0] = 0;
        if (v151 > 0.0)
        {
          _Q0.f32[0] = v151 - ((__PAIR64__(v151, LODWORD(v151)) - COERCE_UNSIGNED_INT(v151)) >> 32);
        }
      }

      else
      {
        *_Q0.i64 = (v149 + 0.5) * v248.n128_f64[0] + -0.5;
        _Q0.f32[0] = *_Q0.i64;
        v150 = (__PAIR64__(_Q0.f32[0], _Q0.u32[0]) - COERCE_UNSIGNED_INT(_Q0.f32[0])) >> 32;
        _Q0.f32[0] = _Q0.f32[0] - v150;
      }

      if (v29 == 4)
      {
        v152 = v150;
      }

      else
      {
        v152 = 0;
      }

      if (v29 == 4)
      {
        v153 = _Q0.f32[0];
      }

      else
      {
        v153 = 0.0;
      }

      if (v29 == 2)
      {
        v152 = v150;
        v153 = _Q0.f32[0];
      }

      if (v150 >= 0)
      {
        v152 = v150;
        v153 = _Q0.f32[0];
      }

      if (v150 < v246 - 1)
      {
        v140 = v139 + 1;
        v150 = v152;
        _Q0.f32[0] = v153;
      }

      if (v150 + v246 < a4 || (v139 >= v247 ? (v154 = v247) : (v154 = v139), (v247 = v154, v150 >= v235) ? (v155 = v29 == 2) : (v155 = 1), !v155 ? (v156 = v29 == 4) : (v156 = 1), v156))
      {
        v157 = v138;
        v158 = v150 * v31;
        if (v250 < 7)
        {
          goto LABEL_195;
        }
      }

      else
      {
        _Q0.i64[0] = 0;
        v157 = v138;
        v158 = v235 * v31;
        if (v250 < 7)
        {
LABEL_195:
          v159 = 0;
LABEL_200:
          v165 = v158 + v159;
          v166 = &v279[4 * v159 + 4 * v157];
          v167 = ((v241 >> 3) & 0x1FF) + 1 - v159;
          do
          {
            *v166++ = v165++;
            --v167;
          }

          while (v167);
          goto LABEL_202;
        }
      }

      v160 = &v279[4 * v138 + 16];
      v161 = vdupq_n_s32(v158);
      v162 = (v250 + 1) & 0x3F8;
      v163 = xmmword_1003E3950;
      do
      {
        v164 = vaddq_s32(v161, v163);
        v160[-1] = v164;
        *v160 = vaddq_s32(v164, v147);
        v163 = vaddq_s32(v163, v148);
        v160 += 2;
        v162 -= 8;
      }

      while (v162);
      v159 = (v250 + 1) & 0x3F8;
      if (v159 != v250 + 1)
      {
        goto LABEL_200;
      }

LABEL_202:
      if (v29 == 2)
      {
        _Q0.f32[1] = 1.0 - _Q0.f32[0];
        *&__src.i32[1] = vmla_f32(_D13, *_Q0.f32, vmul_f32(*_Q0.f32, vmla_f32(_D12, v238, *_Q0.f32)));
        __src.f32[0] = ((((((_Q0.f32[0] + 1.0) * -0.75) + 3.75) * (_Q0.f32[0] + 1.0)) + -6.0) * (_Q0.f32[0] + 1.0)) + 3.0;
        __src.f32[3] = ((1.0 - __src.f32[0]) - __src.f32[1]) - __src.f32[2];
        v168 = v137;
        v169 = v143 + v137;
        v170 = v141 * v139;
        if (!v253)
        {
          goto LABEL_216;
        }
      }

      else if (v29 == 4)
      {
        _Q0 = sub_10033AC38(&__src, _Q0);
        v148.i64[0] = 0x800000008;
        v148.i64[1] = 0x800000008;
        v147.i64[0] = 0x400000004;
        v147.i64[1] = 0x400000004;
        v143 = v41;
        v131 = v236;
        v130 = v237;
        v168 = v137;
        v169 = v41 + v137;
        v170 = v141 * v139;
        if (!v253)
        {
          goto LABEL_216;
        }
      }

      else
      {
        __src.f32[0] = 1.0 - _Q0.f32[0];
        __src.i32[1] = _Q0.i32[0];
        v168 = v137;
        v169 = v143 + v137;
        v170 = v141 * v139;
        if (!v253)
        {
LABEL_216:
          v180 = __src.f32[1];
          v181 = rintf(__src.f32[0] * 2048.0);
          v182 = &v234[2 * v170];
          if (v181 <= -32768)
          {
            LODWORD(v181) = -32768;
          }

          if (v181 >= 0x7FFF)
          {
            LOWORD(v181) = 0x7FFF;
          }

          *v182 = v181;
          v183 = rintf(v180 * 2048.0);
          if (v183 <= -32768)
          {
            LODWORD(v183) = -32768;
          }

          if (v183 >= 0x7FFF)
          {
            LOWORD(v183) = 0x7FFF;
          }

          v182[1] = v183;
          if (v41 != 2)
          {
            v184 = __src.f32[3];
            v185 = rintf(__src.f32[2] * 2048.0);
            if (v185 <= -32768)
            {
              LODWORD(v185) = -32768;
            }

            if (v185 >= 0x7FFF)
            {
              LOWORD(v185) = 0x7FFF;
            }

            v182[2] = v185;
            v186 = rintf(v184 * 2048.0);
            if (v186 <= -32768)
            {
              LODWORD(v186) = -32768;
            }

            if (v186 >= 0x7FFF)
            {
              LOWORD(v186) = 0x7FFF;
            }

            v182[3] = v186;
            if (v41 != 4)
            {
              v187 = rintf(v276[0] * 2048.0);
              v188 = rintf(v276[1] * 2048.0);
              v189 = v276[3];
              v190 = rintf(v276[2] * 2048.0);
              if (v187 <= -32768)
              {
                LODWORD(v187) = -32768;
              }

              if (v187 >= 0x7FFF)
              {
                LOWORD(v187) = 0x7FFF;
              }

              v182[4] = v187;
              if (v188 <= -32768)
              {
                v191 = -32768;
              }

              else
              {
                v191 = v188;
              }

              if (v191 >= 0x7FFF)
              {
                LOWORD(v191) = 0x7FFF;
              }

              v182[5] = v191;
              if (v190 <= -32768)
              {
                v192 = -32768;
              }

              else
              {
                v192 = v190;
              }

              if (v192 >= 0x7FFF)
              {
                LOWORD(v192) = 0x7FFF;
              }

              v193 = rintf(v189 * 2048.0);
              v182[6] = v192;
              if (v193 <= -32768)
              {
                v194 = -32768;
              }

              else
              {
                v194 = v193;
              }

              if (v194 >= 0x7FFF)
              {
                LOWORD(v194) = 0x7FFF;
              }

              v182[7] = v194;
            }
          }

          if (v41 < v141)
          {
            v195 = &v239[2 * v169];
            v196 = v141 - v41;
            v197 = &v239[2 * v137];
            do
            {
              v198 = *v197++;
              *v195++ = v198;
              --v196;
            }

            while (v196);
          }

          goto LABEL_165;
        }
      }

      memcpy(&v239[4 * v170], &__src, 4 * v41);
      v148.i64[0] = 0x800000008;
      v148.i64[1] = 0x800000008;
      v147.i64[0] = 0x400000004;
      v147.i64[1] = 0x400000004;
      v143 = v41;
      v131 = v236;
      v130 = v237;
      if (v41 < v141)
      {
        v171 = v41;
        if (v233)
        {
          goto LABEL_209;
        }

        v172 = &v230[4 * v137];
        v173 = v232;
        v174 = &v230[4 * v169];
        do
        {
          _Q0 = v172[-1];
          v175 = *v172;
          v174[-1] = _Q0;
          *v174 = v175;
          v172 += 2;
          v174 += 2;
          v173 -= 8;
        }

        while (v173);
        v171 = v231;
        if (v141 - v41 != v232)
        {
LABEL_209:
          v176 = &v239[4 * v171 + 4 * v168];
          v177 = &v239[4 * (v171 + v168 - v41)];
          v178 = v141 - v171;
          do
          {
            v179 = *v177++;
            *v176++ = v179;
            --v178;
          }

          while (v178);
        }
      }

LABEL_165:
      ++v139;
      v138 = v157 + v31;
      v137 = v168 + v141;
      if (v139 == v243)
      {
        goto LABEL_259;
      }
    }
  }

  v140 = 0;
LABEL_259:
  if (v229 >= 1)
  {
    v199 = 0;
    v251 = &v279[4 * v226 + 4 * v130 + v131];
    v200 = v229 & 0x7FFFFFFF;
    v201 = &v279[4 * v130 + 8 + 2 * v226 + v131];
    v202 = 1;
    v203 = v227;
    while (1)
    {
      *_Q0.i64 = (v202 - 1);
      if (v29 == 3)
      {
        break;
      }

      *_Q0.i64 = (*_Q0.i64 + 0.5) * v24 + -0.5;
      _Q0.f32[0] = *_Q0.i64;
      v206 = (__PAIR64__(_Q0.f32[0], _Q0.u32[0]) - COERCE_UNSIGNED_INT(_Q0.f32[0])) >> 32;
      _Q0.f32[0] = _Q0.f32[0] - v206;
      *v203 = v206;
      if (v29 == 2)
      {
        _Q0.f32[1] = 1.0 - _Q0.f32[0];
        *&__src.i32[1] = vmla_f32(_D13, *_Q0.f32, vmul_f32(*_Q0.f32, vmla_f32(_D12, v238, *_Q0.f32)));
        __src.f32[0] = ((((((_Q0.f32[0] + 1.0) * -0.75) + 3.75) * (_Q0.f32[0] + 1.0)) + -6.0) * (_Q0.f32[0] + 1.0)) + 3.0;
        __src.f32[3] = ((1.0 - __src.f32[0]) - __src.f32[1]) - __src.f32[2];
        if (!v253)
        {
          goto LABEL_270;
        }
      }

      else
      {
        if (v29 != 4)
        {
          goto LABEL_266;
        }

        _Q0 = sub_10033AC38(&__src, _Q0);
        if (!v253)
        {
LABEL_270:
          v207 = __src.f32[1];
          v208 = rintf(__src.f32[0] * 2048.0);
          if (v208 <= -32768)
          {
            LODWORD(v208) = -32768;
          }

          if (v208 >= 0x7FFF)
          {
            LOWORD(v208) = 0x7FFF;
          }

          *(v201 - 4) = v208;
          v209 = rintf(v207 * 2048.0);
          if (v209 <= -32768)
          {
            LODWORD(v209) = -32768;
          }

          if (v209 >= 0x7FFF)
          {
            LOWORD(v209) = 0x7FFF;
          }

          *(v201 - 3) = v209;
          if (v41 != 2)
          {
            v210 = __src.f32[3];
            v211 = rintf(__src.f32[2] * 2048.0);
            if (v211 <= -32768)
            {
              LODWORD(v211) = -32768;
            }

            if (v211 >= 0x7FFF)
            {
              LOWORD(v211) = 0x7FFF;
            }

            *(v201 - 2) = v211;
            v212 = rintf(v210 * 2048.0);
            if (v212 <= -32768)
            {
              LODWORD(v212) = -32768;
            }

            if (v212 >= 0x7FFF)
            {
              LOWORD(v212) = 0x7FFF;
            }

            *(v201 - 1) = v212;
            if (v41 != 4)
            {
              v213 = rintf(v276[0] * 2048.0);
              v214 = rintf(v276[1] * 2048.0);
              v215 = v276[3];
              v216 = rintf(v276[2] * 2048.0);
              if (v213 <= -32768)
              {
                LODWORD(v213) = -32768;
              }

              if (v213 >= 0x7FFF)
              {
                LOWORD(v213) = 0x7FFF;
              }

              *v201 = v213;
              if (v214 <= -32768)
              {
                v217 = -32768;
              }

              else
              {
                v217 = v214;
              }

              if (v217 >= 0x7FFF)
              {
                LOWORD(v217) = 0x7FFF;
              }

              v201[1] = v217;
              if (v216 <= -32768)
              {
                v218 = -32768;
              }

              else
              {
                v218 = v216;
              }

              if (v218 >= 0x7FFF)
              {
                LOWORD(v218) = 0x7FFF;
              }

              v219 = rintf(v215 * 2048.0);
              v201[2] = v218;
              if (v219 <= -32768)
              {
                v220 = -32768;
              }

              else
              {
                v220 = v219;
              }

              if (v220 >= 0x7FFF)
              {
                LOWORD(v220) = 0x7FFF;
              }

              v201[3] = v220;
            }
          }

          goto LABEL_261;
        }
      }

LABEL_267:
      memcpy(&v251[4 * v199], &__src, 4 * v41);
LABEL_261:
      ++v202;
      v199 += v41;
      ++v203;
      v201 += v41;
      if (!--v200)
      {
        goto LABEL_311;
      }
    }

    v204 = (v24 * *_Q0.i64) - (v24 * *_Q0.i64 < (v24 * *_Q0.i64));
    v205 = v202 - (v204 + 1) * a10;
    _Q0.i32[0] = 0;
    if (v205 > 0.0)
    {
      _Q0.f32[0] = v205 - ((__PAIR64__(v205, LODWORD(v205)) - COERCE_UNSIGNED_INT(v205)) >> 32);
    }

    *v203 = v204;
LABEL_266:
    __src.f32[0] = 1.0 - _Q0.f32[0];
    __src.i32[1] = _Q0.i32[0];
    if (!v253)
    {
      goto LABEL_270;
    }

    goto LABEL_267;
  }

LABEL_311:
  if (v253)
  {
    v221 = &v234[4 * v226];
  }

  else
  {
    v221 = &v234[2 * v226];
  }

  v228(&v264, v254, v279, v234, v227, v221, v140, v247, v41);
  if (v277 != v279 && v277)
  {
LABEL_316:
    operator delete[]();
  }

LABEL_317:
  if (v260 && atomic_fetch_add((v260 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v254);
  }

  v260 = 0;
  v258 = 0u;
  v259 = 0u;
  if (v255 >= 1)
  {
    v222 = 0;
    v223 = v261;
    do
    {
      v223[v222++] = 0;
    }

    while (v222 < v255);
  }

  if (v262 != &v263)
  {
    j__free(v262);
  }

  if (v268 && atomic_fetch_add((v268 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v264);
  }

  v268 = 0;
  v266 = 0u;
  v267 = 0u;
  if (v265 >= 1)
  {
    v224 = 0;
    v225 = v269;
    do
    {
      *(v225 + 4 * v224++) = 0;
    }

    while (v224 < v265);
  }

  if (v270 != &v271)
  {
    j__free(v270);
  }

  if (v273)
  {
    sub_1002ACC1C(v272);
  }
}

void sub_100337A14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100337C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_10033BA8C(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_10033C9D8(v24);
}

void sub_100337D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10033C9D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100337D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_10033CB14(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_10033DA4C(v24);
}

void sub_100337E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10033DA4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100337EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_10033DB88(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_10033EC1C(v24);
}

void sub_100337FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10033EC1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100337FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_10033ED58(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_10033F868(v24);
}

void sub_1003380F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10033F868(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_10033F9A4(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_100340458(v24);
}

void sub_10033822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100340458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_100340594(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_1003410C4(v24);
}

void sub_100338360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003410C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_100341200(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_100341DFC(v24);
}

void sub_100338494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100341DFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003384A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_100341F38(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_100342CD8(v24);
}

void sub_1003385C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100342CD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003385DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_100342E14(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_10034388C(v24);
}

void sub_1003386FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10034388C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_1003439C8(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_1003443AC(v24);
}

void sub_100338830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003443AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_1003444E8(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_100345188(v24);
}

void sub_100338964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100345188(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_1003452C4(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_1003465F4(v24);
}

void sub_100338A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003465F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_100346730(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_100347C50(v24);
}

void sub_100338BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100347C50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_100347D8C(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_100348E4C(v24);
}

void sub_100338D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100348E4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v27) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v26) = **(a2 + 64);
  LODWORD(v27) = v12 * v10;
  v25[1] = HIDWORD(v26);
  LODWORD(v26) = v12 * v11;
  v25[0] = 0;
  sub_100348F88(v24, a1, a2, a3, a5, a4, a6, &v27, &v26, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v25, v24, vcvtd_n_f64_u64(v14, 0x10uLL));
  return sub_100349F58(v24);
}

void sub_100338E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100349F58(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v20[0] = 0;
  v20[1] = v7;
  sub_10034A094(v19, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v20, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return sub_10034B330(v19);
}

void sub_100338F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10034B330(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100338F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v20[0] = 0;
  v20[1] = v7;
  sub_10034B46C(v19, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v20, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return sub_10034BE30(v19);
}

void sub_10033900C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10034BE30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100339020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v20[0] = 0;
  v20[1] = v7;
  sub_10034BF6C(v19, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v20, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return sub_10034C94C(v19);
}

void sub_1003390F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10034C94C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033910C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v20[0] = 0;
  v20[1] = v7;
  sub_10034CA88(v19, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v20, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return sub_10034D08C(v19);
}

void sub_1003391E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10034D08C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003391F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v20[0] = 0;
  v20[1] = v7;
  sub_10034D1C8(v19, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v20, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return sub_10034D6F4(v19);
}

void sub_1003392D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10034D6F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003392E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v23[0] = 0;
  v23[1] = v7;
  v19[0] = &off_10047A8F8;
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a5;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v23, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return nullsub_1(v19);
}

uint64_t sub_1003393D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v23[0] = 0;
  v23[1] = v7;
  v19[0] = &off_10047A938;
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a5;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v23, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return nullsub_1(v19);
}

uint64_t sub_1003394CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v23[0] = 0;
  v23[1] = v7;
  v19[0] = &off_10047A978;
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a5;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v23, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return nullsub_1(v19);
}

uint64_t sub_1003395C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v23[0] = 0;
  v23[1] = v7;
  v19[0] = &off_10047A9B8;
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a5;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v23, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return nullsub_1(v19);
}

uint64_t sub_1003396B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v23[0] = 0;
  v23[1] = v7;
  v19[0] = &off_10047A9F8;
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a5;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v23, v19, vcvtd_n_f64_u64(v9, 0x10uLL));
  return nullsub_1(v19);
}

uint64_t sub_1003397A8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_1003516B8;
        v17 = sub_1003514AC;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_1003511E8;
    v17 = sub_100350D28;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_100350A64;
        v17 = sub_100350700;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_100351D64;
      v17 = sub_10035197C;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_10035043C;
    v17 = sub_10035018C;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7) + 4 * a7 + 4 * a8;
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_10035202C(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[a7];
    do
    {
      sub_10035202C(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AA38;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1(v36);
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_100339B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1(&a19);
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100339B60(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_100353D08;
        v17 = sub_100353B5C;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_100353848;
    v17 = sub_100353610;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_1003532FC;
        v17 = sub_100353174;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_100354488;
      v17 = sub_10035401C;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_100352E60;
    v17 = sub_100352D28;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7 + 2 * a7 + 2 * a8);
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_1003547A0(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[2 * a7];
    do
    {
      sub_1003547A0(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AA78;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[2 * a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1(v36);
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_100339EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1(&a19);
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100339F18(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_100356234;
        v17 = sub_100356090;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_100355DEC;
    v17 = sub_100355BBC;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_100355918;
        v17 = sub_100355798;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_1003569B0;
      v17 = sub_1003564D8;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_1003554F4;
    v17 = sub_1003552C8;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7 + 2 * a7 + 2 * a8);
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_100356C58(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[2 * a7];
    do
    {
      sub_100356C58(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AAB8;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[2 * a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1(v36);
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_10033A27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1(&a19);
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033A2D0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_1003583B8;
        v17 = sub_100358214;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_100357F70;
    v17 = sub_100357D40;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_100357A9C;
        v17 = sub_10035791C;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_100358B34;
      v17 = sub_10035865C;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_100357678;
    v17 = sub_100357540;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7 + 2 * a7 + 2 * a8);
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_1003547A0(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[2 * a7];
    do
    {
      sub_1003547A0(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AAF8;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[2 * a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1(v36);
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_10033A634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1(&a19);
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033A688(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_10035A76C;
        v17 = sub_10035A5C0;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_10035A1E0;
    v17 = sub_100359FE4;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_100359C04;
        v17 = sub_100359A98;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_10035AF20;
      v17 = sub_10035AB4C;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_1003596B8;
    v17 = sub_100359584;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7) + 16 * a7 + 16 * a8;
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_10035B304(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[4 * a7];
    do
    {
      sub_10035B304(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AB38;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[4 * a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1(v36);
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_10033A9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1(&a19);
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033AA40(int a1, int a2, unsigned int a3, uint64_t a4, double a5)
{
  if (a2 >= 1)
  {
    result = 0;
    v7 = 0;
    v8 = a1;
    v9 = a1 - 1;
    v10 = vdupq_n_s32(a3);
    v11 = 0.0;
    v12.i64[0] = 0x400000004;
    v12.i64[1] = 0x400000004;
    v13.i64[0] = 0x800000008;
    v13.i64[1] = 0x800000008;
    while (1)
    {
      v14 = v11 * a5;
      v15 = v11 * a5 + a5;
      v16 = v8 - v11 * a5;
      v17 = (v11 * a5);
      if (v16 >= a5)
      {
        v16 = a5;
      }

      if (v14 <= v17)
      {
        v18 = (v11 * a5);
      }

      else
      {
        v18 = v17 + 1;
      }

      v19 = v15 - (v15 < v15);
      if (v9 < v19)
      {
        v19 = v9;
      }

      v20 = v19 >= v18 ? v18 : v19;
      v21 = v20 - v14;
      if (v21 > 0.001)
      {
        v23 = a4 + 12 * result;
        *v23 = (v20 - 1) * a3;
        *(v23 + 4) = v7 * a3;
        v24 = v21 / v16;
        result = (result + 1);
        *(v23 + 8) = v24;
        if (v18 >= v19)
        {
LABEL_16:
          v22 = v15 - v19;
          if (v22 > 0.001)
          {
            goto LABEL_27;
          }

          goto LABEL_3;
        }
      }

      else if (v18 >= v19)
      {
        goto LABEL_16;
      }

      v25 = v7 * a3;
      v26 = 1.0 / v16;
      *&v26 = 1.0 / v16;
      v27 = result;
      v28 = (v19 + ~v20);
      if (v28 <= 6)
      {
        break;
      }

      v30 = v28 + 1;
      v31 = (v28 + 1) & 0x1FFFFFFF8;
      result = v31 + result;
      v29 = v20 + v31;
      v32 = vaddq_s32(vdupq_n_s32(v20), xmmword_1003E3950);
      v33 = vdupq_n_s32(v25);
      v34 = (a4 + 12 * v27);
      v35 = vdupq_lane_s32(*&v26, 0);
      v36 = v31;
      do
      {
        v37 = vmulq_s32(v32, v10);
        v45.val[0] = vmulq_s32(vaddq_s32(v32, v12), v10);
        v45.val[1] = v33;
        v45.val[2] = v35;
        v38 = v34 + 24;
        vst3q_f32(v34, *(&v33 - 1));
        v39 = v34 + 12;
        vst3q_f32(v39, v45);
        v32 = vaddq_s32(v32, v13);
        v34 = v38;
        v36 -= 8;
      }

      while (v36);
      if (v30 != v31)
      {
        goto LABEL_24;
      }

LABEL_26:
      v22 = v15 - v19;
      if (v22 > 0.001)
      {
LABEL_27:
        v43 = a4 + 12 * result;
        *v43 = v19 * a3;
        *(v43 + 4) = v7 * a3;
        if (v22 > 1.0)
        {
          v22 = 1.0;
        }

        if (v16 < v22)
        {
          v22 = v16;
        }

        v44 = v22 / v16;
        result = (result + 1);
        *(v43 + 8) = v44;
      }

LABEL_3:
      v11 = v11 + 1.0;
      if (++v7 == a2)
      {
        return result;
      }
    }

    result = result;
    v29 = v20;
LABEL_24:
    v40 = (a4 + 8 + 12 * result);
    v41 = v19 - v29;
    v42 = a3 * v29;
    do
    {
      *(v40 - 2) = v42;
      *(v40 - 1) = v25;
      ++result;
      *v40 = LODWORD(v26);
      v40 += 3;
      v42 += a3;
      --v41;
    }

    while (v41);
    goto LABEL_26;
  }

  return 0;
}

float32x4_t sub_10033AC38(float32x4_t *a1, float32x4_t a2)
{
  if (a2.f32[0] >= 0.00000011921)
  {
    a2.f32[0] = a2.f32[0] + 3.0;
    v28 = vdupq_lane_s32(*a2.f32, 0);
    a2.f32[1] = a2.f32[0] + -1.0;
    *&a2.u32[2] = vadd_f32(*v28.f32, 0xC0400000C0000000);
    v4 = vnegq_f32(a2);
    v27 = vdupq_n_s64(0x400921FB54442D18uLL);
    __asm { FMOV            V2.2D, #0.25 }

    v24 = vmulq_f64(vmulq_f64(vcvt_hight_f64_f32(v4), v27), _Q2);
    v25 = vmulq_f64(vmulq_f64(vcvtq_f64_f32(*v4.f32), v27), _Q2);
    v26 = _Q2;
    v10 = __sincos_stret(v25.f64[0]);
    v11.f64[0] = v10.__cosval + v10.__sinval * 0.0;
    v12 = vmulq_n_f64(xmmword_1003E9940, v10.__cosval);
    v13.f64[0] = v10.__sinval + v12.f64[0];
    v13.f64[1] = v10.__cosval * -0.707106781 + v10.__sinval * -0.707106781;
    v11.f64[1] = v10.__cosval * -0.707106781 + v10.__sinval * 0.707106781;
    v14 = vdivq_f64(v11, vmulq_f64(v24, v24));
    v15 = vcvt_f32_f64(vdivq_f64(v13, vmulq_f64(v25, v25)));
    *v11.f64 = *v15.i32 + 0.0;
    v16 = *&v15.i32[1];
    v17 = vcvt_hight_f32_f64(v15, v14);
    *&v14.f64[0] = vcvt_f32_f64(v14);
    *v14.f64 = ((*v11.f64 + v16) + *v14.f64) + *(v14.f64 + 1);
    v18 = vnegq_f32(vaddq_f32(v28, xmmword_1003E9950));
    v19 = vmulq_f64(vmulq_f64(vcvt_hight_f64_f32(v18), v27), v26);
    v20 = vmulq_f64(vmulq_f64(vcvtq_f64_f32(*v18.f32), v27), v26);
    v13.f64[1] = v12.f64[1];
    v13.f64[0] = -v10.__cosval;
    v21 = vdivq_f64(vmlaq_n_f64(v13, xmmword_1003E9970, v10.__sinval), vmulq_f64(v19, v19));
    v22 = vcvt_f32_f64(vdivq_f64(vmlaq_n_f64(v12, xmmword_1003E9960, v10.__sinval), vmulq_f64(v20, v20)));
    *v14.f64 = *v14.f64 + *v22.i32;
    LODWORD(v20.f64[0]) = v22.i32[1];
    v23 = vcvt_hight_f32_f64(v22, v21);
    *&v21.f64[0] = vcvt_f32_f64(v21);
    *v21.f64 = 1.0 / (((*v14.f64 + *v20.f64) + *v21.f64) + *(v21.f64 + 1));
    result = vmulq_n_f32(v23, *v21.f64);
    *a1 = vmulq_n_f32(v17, *v21.f64);
    a1[1] = result;
  }

  else
  {
    result.i64[0] = 0;
    *a1 = 0u;
    a1[1] = 0u;
    a1->i32[3] = 1065353216;
  }

  return result;
}

void sub_10033AE18(uint64_t a1, uint64_t a2, int *a3, int a4, double a5, double a6)
{
  sub_1002ACE7C(v56, &off_10047A388);
  sub_100271154(a1, 0xFFFFFFFF, &v54);
  if (v54 < 1 || v55 <= 0)
  {
    v46 = 0uLL;
    qmemcpy(sub_1002A80E0(&v46, 35), "ssize.width > 0 && ssize.height > 0", 35);
    sub_1002A8980(-215, &v46, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 4044);
  }

  v14 = *a3;
  v13 = a3[1];
  if (v13 * *a3 <= 0 && (a5 <= 0.0 || a6 <= 0.0))
  {
    v46 = 0uLL;
    qmemcpy(sub_1002A80E0(&v46, 56), "dsize.area() > 0 || (inv_scale_x > 0 && inv_scale_y > 0)", 56);
    sub_1002A8980(-215, &v46, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 4045);
  }

  v15 = v55;
  if (v13 * v14)
  {
    a5 = v14 / v54;
    a6 = v13 / v15;
  }

  else
  {
    v16 = rint(v54 * a5);
    v17 = rint(v15 * a6);
    *a3 = v16;
    a3[1] = v17;
    if ((v17 * v16) <= 0)
    {
      v46 = 0uLL;
      *sub_1002A80E0(&v46, 16) = *"dsize.area() > 0";
      sub_1002A8980(-215, &v46, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 4050);
    }
  }

  if (a4 == 5)
  {
    if (sub_100274398(a1, -1) == 5 || sub_100274398(a1, -1) == 6)
    {
      a4 = 1;
    }

    else
    {
      a4 = 5;
    }
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v18 = *(a1 + 8);
    v19 = *v18;
    v20 = *(v18 + 16);
    v46 = *v18;
    v21 = *(v18 + 32);
    v47 = v20;
    v48 = v21;
    v22 = *(v18 + 56);
    v49 = *(v18 + 48);
    v50 = v22;
    v51 = &v46 + 8;
    v52 = v53;
    v53[0] = 0;
    v53[1] = 0;
    if (v22)
    {
      atomic_fetch_add((v22 + 20), 1u);
      if (*(v18 + 4) <= 2)
      {
LABEL_23:
        v23 = *(v18 + 72);
        v24 = v52;
        *v52 = *v23;
        v24[1] = v23[1];
        goto LABEL_27;
      }
    }

    else if (SDWORD1(v19) <= 2)
    {
      goto LABEL_23;
    }

    DWORD1(v46) = 0;
    sub_100269B58(&v46, v18);
  }

  else
  {
    sub_1002703C0(a1, -1, &v46);
  }

LABEL_27:
  *&v38 = *a3;
  sub_100275370(a2, &v38, v46 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, -1, &v38);
    goto LABEL_34;
  }

  v25 = *(a2 + 8);
  v26 = *v25;
  v27 = *(v25 + 16);
  v38 = *v25;
  v39 = v27;
  v40 = *(v25 + 32);
  v28 = *(v25 + 56);
  v41 = *(v25 + 48);
  v42 = v28;
  v43 = &v38 + 8;
  v44 = v45;
  v45[0] = 0;
  v45[1] = 0;
  if (!v28)
  {
    if (SDWORD1(v26) <= 2)
    {
      goto LABEL_30;
    }

LABEL_33:
    DWORD1(v38) = 0;
    sub_100269B58(&v38, v25);
    goto LABEL_34;
  }

  atomic_fetch_add((v28 + 20), 1u);
  if (*(v25 + 4) > 2)
  {
    goto LABEL_33;
  }

LABEL_30:
  v29 = *(v25 + 72);
  v30 = v44;
  *v44 = *v29;
  v30[1] = v29[1];
LABEL_34:
  if (*a3 == v54 && a3[1] == v55)
  {
    v35 = 33619968;
    v36 = &v38;
    v37 = 0;
    sub_10022B754(&v46, &v35);
  }

  else
  {
    sub_100336300(v46 & 0xFFF, v47, v53[0], SHIDWORD(v46), SDWORD2(v46), v39, v45[0], HIDWORD(v38), a5, a6, SDWORD2(v38), a4);
  }

  if (v42 && atomic_fetch_add((v42 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v38);
  }

  v42 = 0;
  v39 = 0u;
  v40 = 0u;
  if (SDWORD1(v38) >= 1)
  {
    v31 = 0;
    v32 = v43;
    do
    {
      *&v32[4 * v31++] = 0;
    }

    while (v31 < SDWORD1(v38));
  }

  if (v44 != v45)
  {
    j__free(v44);
  }

  if (v50 && atomic_fetch_add((v50 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v46);
  }

  v50 = 0;
  v47 = 0u;
  v48 = 0u;
  if (SDWORD1(v46) >= 1)
  {
    v33 = 0;
    v34 = v51;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < SDWORD1(v46));
  }

  if (v52 != v53)
  {
    j__free(v52);
  }

  if (v57)
  {
    sub_1002ACC1C(v56);
  }
}

void sub_10033B344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1002A8124(va);
  sub_1001D8BF4(v17 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_10033B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  *a1 = off_10047A3B8;
  v11 = *a2;
  v12 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v12;
  *(a1 + 40) = *(a2 + 32);
  v13 = *(a2 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = v13;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (v13)
  {
    atomic_fetch_add((v13 + 20), 1u);
    if (*(a2 + 4) <= 2)
    {
LABEL_3:
      v14 = *(a2 + 72);
      v15 = *(a1 + 80);
      *v15 = *v14;
      v15[1] = v14[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v11) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 12) = 0;
  sub_100269B58(a1 + 8, a2);
LABEL_6:
  v16 = *a3;
  *(a1 + 120) = *(a3 + 16);
  v17 = *(a3 + 32);
  v19 = *(a3 + 48);
  v18 = *(a3 + 56);
  *(a1 + 184) = 0;
  *(a1 + 136) = v17;
  *(a1 + 152) = v19;
  *(a1 + 160) = v18;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 104) = v16;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 108) = 0;
    sub_100269B58(a1 + 104, a3);
    goto LABEL_11;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(a3 + 4) > 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = *(a3 + 72);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_11:
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  return a1;
}

void sub_10033B5BC(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_10033B5EC(uint64_t a1)
{
  sub_10033B950(a1);

  operator delete();
}

uint64_t sub_10033B624(uint64_t result, int *a2)
{
  v2 = *(result + 12);
  if (v2 < 1)
  {
    LODWORD(v3) = 0;
    v4 = *a2;
    if (v4 >= a2[1])
    {
      return result;
    }

    goto LABEL_5;
  }

  v3 = *(*(result + 80) + 8 * v2 - 8);
  v4 = *a2;
  if (v4 < a2[1])
  {
LABEL_5:
    v5 = *(*(result + 168) + 4);
    v6 = *(*(result + 168) + 4);
    v7 = **(result + 72) - 1;
    do
    {
      v8 = *(result + 120) + *(result + 184) * v4;
      v9 = (*(result + 216) * v4) - (*(result + 216) * v4 < (*(result + 216) * v4));
      if (v7 < v9)
      {
        v9 = v7;
      }

      v10 = *(result + 24);
      v11 = **(result + 80) * v9;
      v12 = v10 + v11;
      if (v3 <= 3)
      {
        if (v3 != 1)
        {
          if (v3 == 2)
          {
            if (v6 >= 1)
            {
              v34 = *(result + 200);
              v35 = v5;
              do
              {
                v36 = *v34++;
                *v8 = *(v12 + v36);
                v8 += 2;
                --v35;
              }

              while (v35);
            }

            goto LABEL_6;
          }

          if (v3 == 3)
          {
            if (v5 >= 1)
            {
              v16 = 0;
              do
              {
                v17 = (v12 + *(*(result + 200) + v16));
                *v8 = *v17;
                *(v8 + 1) = v17[1];
                *(v8 + 2) = v17[2];
                v8 += 3;
                v16 += 4;
              }

              while (4 * v5 != v16);
            }

            goto LABEL_6;
          }

LABEL_33:
          if (v5 >= 1)
          {
            v22 = 0;
            v23 = *(result + 200);
            LODWORD(v24) = *(result + 208);
            v25 = v10 + v11;
            do
            {
              if (v24 >= 1)
              {
                v26 = 0;
                v27 = v25 + *(v23 + 4 * v22);
                do
                {
                  *(v8 + 4 * v26) = *(v27 + 4 * v26);
                  ++v26;
                  v24 = *(result + 208);
                }

                while (v26 < v24);
              }

              ++v22;
              v8 += v3;
            }

            while (v22 != v5);
          }

          goto LABEL_6;
        }

        if (v5 >= 2)
        {
          v21 = 0;
          v37 = (v8 + 1);
          do
          {
            v38 = (*(result + 200) + 4 * v21);
            v39 = *(v12 + *v38);
            LOBYTE(v38) = *(v12 + v38[1]);
            *(v37 - 1) = v39;
            *v37 = v38;
            v37 += 2;
            v21 += 2;
          }

          while (v21 <= v5 - 2);
          v21 = v21;
          if (v21 >= v6)
          {
            goto LABEL_6;
          }

          do
          {
LABEL_55:
            *(v8 + v21) = *(v12 + *(*(result + 200) + 4 * v21));
            ++v21;
          }

          while (v5 != v21);
          goto LABEL_6;
        }

        v21 = 0;
        if (v6 > 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v3 > 7)
        {
          if (v3 == 8)
          {
            if (v6 >= 1)
            {
              v31 = *(result + 200);
              v32 = v5;
              do
              {
                v33 = *v31++;
                *v8 = *(v12 + v33);
                *(v8 + 4) = *(v12 + v33 + 4);
                v8 += 8;
                --v32;
              }

              while (v32);
            }

            goto LABEL_6;
          }

          if (v3 == 12)
          {
            if (v6 >= 1)
            {
              v18 = *(result + 200);
              v19 = v5;
              do
              {
                v20 = *v18++;
                *v8 = *(v12 + v20);
                *(v8 + 4) = *(v12 + v20 + 4);
                *(v8 + 8) = *(v12 + v20 + 8);
                v8 += 12;
                --v19;
              }

              while (v19);
            }

            goto LABEL_6;
          }

          goto LABEL_33;
        }

        if (v3 == 4)
        {
          if (v6 >= 1)
          {
            v28 = *(result + 200);
            v29 = v5;
            do
            {
              v30 = *v28++;
              *v8 = *(v12 + v30);
              v8 += 4;
              --v29;
            }

            while (v29);
          }

          goto LABEL_6;
        }

        if (v3 != 6)
        {
          goto LABEL_33;
        }

        if (v5 >= 1)
        {
          v13 = *(result + 200);
          v14 = v5;
          do
          {
            v15 = *v13++;
            *v8 = *(v12 + v15);
            *(v8 + 2) = *(v12 + v15 + 2);
            *(v8 + 4) = *(v12 + v15 + 4);
            v8 += 6;
            --v14;
          }

          while (v14);
        }
      }

LABEL_6:
      ++v4;
    }

    while (v4 < a2[1]);
  }

  return result;
}

uint64_t sub_10033B950(uint64_t a1)
{
  *a1 = off_10047A3B8;
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

uint64_t sub_10033BA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A3F8;
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

void sub_10033BC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_10033BCF0(uint64_t a1)
{
  sub_10033C9D8(a1);

  operator delete();
}

void sub_10033BD28(uint64_t a1, int *a2, double a3, int16x4_t a4)
{
  v5 = *(a1 + 8);
  v6 = (*(a1 + 240) + 15) & 0xFFFFFFF0;
  LODWORD(v7) = *(a1 + 248);
  if ((v7 * v6) >= 0x109)
  {
    operator new[]();
  }

  v8 = 0;
  memset(v36, 0, 128);
  memset(v35, 0, sizeof(v35));
  if (v7 >= 1)
  {
    memset(__b, 255, 4 * v7);
    v9 = 4 * v6;
    if (v7 == 1)
    {
      v10 = 0;
LABEL_9:
      v14 = &v31[v10 * v6];
      v15 = &v35[v10];
      v16 = v7 - v10;
      do
      {
        *v15++ = v14;
        v14 = (v14 + v9);
        --v16;
      }

      while (v16);
      goto LABEL_11;
    }

    v10 = v7 & 0x7FFFFFFE;
    v11 = &v35[1];
    v12 = v10;
    v13 = v31;
    do
    {
      *(v11 - 1) = v13;
      *v11 = (v13 + v9);
      v13 = (v13 + 8 * v6);
      v11 += 2;
      v12 -= 2;
    }

    while (v12);
    if (v10 != v7)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v17 = *a2;
  if (v17 < a2[1])
  {
    v18 = (*(a1 + 224) + 2 * v17 * v7);
    v28 = ((v5 >> 3) & 0x1FF) + 1;
    do
    {
      if (v7 >= 1)
      {
        v30 = v18;
        v19 = 0;
        LODWORD(v20) = 0;
        v21 = (*(*(a1 + 208) + 4 * v17) - (v7 >> 1) + 1);
        v22 = v7;
        do
        {
          v24 = *(a1 + 236);
          if ((v19 + v21) >= v24)
          {
            v25 = v24 - 1;
          }

          else
          {
            v25 = v19 + v21;
          }

          if ((v19 + v21) >= 0)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          if (v20 <= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v20;
          }

          if (v20 < v7)
          {
            while (v20 > 0xF || v26 != __b[v20])
            {
              if (++v20 >= v7)
              {
                goto LABEL_15;
              }
            }

            if (v20 > v19)
            {
              memcpy(v35[v19], v35[v20], 4 * v6);
              LODWORD(v7) = *(a1 + 248);
            }
          }

LABEL_15:
          if (v19 >= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = v19;
          }

          if (v20 == v7)
          {
            v22 = v23;
          }

          v36[v19] = *(a1 + 24) + **(a1 + 80) * v26;
          __b[v19++] = v26;
        }

        while (v19 < v7);
        v27 = *(a1 + 240);
        if (v7 <= v22)
        {
          v18 = v30;
          goto LABEL_41;
        }

        sub_10033C0D4(&v33, &v36[v22], &v35[v22], v7 - v22, *(a1 + 200), *(a1 + 216), *(a1 + 232), v27, v28, *(a1 + 252), *(a1 + 256));
        v18 = v30;
      }

      v27 = *(a1 + 240);
LABEL_41:
      sub_10033C374(v8, a4, &v32, v35, *(a1 + 120) + *(a1 + 184) * v17++, v18, v27);
      v7 = *(a1 + 248);
      v18 += v7;
    }

    while (v17 < a2[1]);
  }
}

void sub_10033C098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10033C0D4(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int *a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  if (a4 >= 2)
  {
    if (a11 < 1)
    {
      if (a8 < 1)
      {
        return;
      }

      v33 = 0;
      LODWORD(v11) = a4 - 1;
      v34 = *a2;
      v35 = *a3;
      do
      {
        v36 = 0;
        v37 = a2[++v33];
        v38 = a3[v33];
        do
        {
          v39 = a5[v36];
          *(v35 + v36 * 4) = *(v34 + v39) << 11;
          *(v38 + v36 * 4) = *(v37 + v39) << 11;
          ++v36;
        }

        while (a8 != v36);
        v35 = v38;
        v34 = v37;
      }

      while (v33 != a4 - 1);
    }

    else
    {
      v12 = 0;
      v11 = (a4 - 1);
      v13 = *a2;
      v14 = *a3;
      do
      {
        v15 = 0;
        v16 = v13;
        v17 = v14;
        v13 = a2[++v12];
        v14 = a3[v12];
        v18 = (v17 + 4);
        v19 = (v14 + 4);
        v20 = 1;
        v21 = a5 + 1;
        v22 = (a6 + 2);
        do
        {
          v23 = v21;
          v24 = v18;
          v25 = v19;
          v26 = v20;
          v27 = a5[v15];
          v28 = *(v22 - 1);
          v29 = *v22;
          v30 = v27 + a9;
          v31 = *(v16 + v27) * v28 + *(v16 + v30) * v29;
          LODWORD(v27) = *(v13 + v27) * v28 + *(v13 + v30) * v29;
          *(v17 + 4 * v15) = v31;
          *(v14 + 4 * v15++) = v27;
          v22 += 2;
          v21 = v23 + 1;
          v18 = v24 + 1;
          v19 = v25 + 1;
          v20 = v26 + 1;
        }

        while (a11 != v15);
        if (a11 < a8)
        {
          do
          {
            v32 = *v23++;
            *v24++ = *(v16 + v32) << 11;
            *v25++ = *(v13 + v32) << 11;
            ++v26;
          }

          while (v26 < a8);
        }
      }

      while (v12 != v11);
    }
  }

  else
  {
    if (a4 != 1)
    {
      return;
    }

    LODWORD(v11) = 0;
  }

  if (a11 < 1)
  {
    if (a8 >= 1)
    {
      v52 = v11;
      do
      {
        v53 = a2[v52];
        v54 = a3[v52];
        v55 = a8;
        v56 = a5;
        do
        {
          v57 = *v56++;
          *v54++ = *(v53 + v57) << 11;
          --v55;
        }

        while (v55);
        ++v52;
      }

      while (v52 < a4);
    }
  }

  else
  {
    v11 = v11;
    v40 = (a6 + 2);
    do
    {
      v41 = 0;
      v42 = a2[v11];
      v43 = a3[v11];
      v44 = (v43 + 4);
      v45 = 1;
      v46 = a5 + 1;
      v47 = v40;
      do
      {
        v48 = v46;
        v49 = v44;
        v50 = v45;
        *(v43 + 4 * v41) = *(v47 - 1) * *(v42 + a5[v41]) + *v47 * *(v42 + a5[v41] + a9);
        ++v41;
        v47 += 2;
        ++v46;
        ++v44;
        ++v45;
      }

      while (a11 != v41);
      if (a11 < a8)
      {
        do
        {
          v51 = *v48++;
          *v49++ = *(v42 + v51) << 11;
          ++v50;
        }

        while (v50 < a8);
      }

      ++v11;
    }

    while (v11 < a4);
  }
}

void sub_10033C374(int16x4_t a1, int16x4_t a2, uint64_t a3, int32x4_t **a4, uint64_t a5, __int16 *a6, int a7)
{
  v7 = *a6;
  v8 = a6[1];
  v10 = *a4;
  v9 = a4[1];
  if (a7 >= 16)
  {
    v11 = 0;
    a1.i32[0] = *a6;
    a2.i32[0] = a6[1];
    v13 = v10 + 2;
    v14.i64[0] = 0x2000200020002;
    v14.i64[1] = 0x2000200020002;
    v15 = v9 + 2;
    do
    {
      v16 = vsraq_n_s16(vshrq_n_s16(vqdmulhq_lane_s16(vshrn_high_n_s32(vshrn_n_s32(v13[-2], 4uLL), v13[-1], 4uLL), a1, 0), 1uLL), vqdmulhq_lane_s16(vshrn_high_n_s32(vshrn_n_s32(v15[-2], 4uLL), v15[-1], 4uLL), a2, 0), 1uLL);
      v17 = *v13;
      v18 = v13[1];
      v13 += 4;
      v19 = *v15;
      v20 = v15[1];
      v15 += 4;
      *(a5 + v11) = vqmovun_high_s16(vqmovun_s16(vshrq_n_s16(vaddq_s16(v16, v14), 2uLL)), vshrq_n_s16(vaddq_s16(vsraq_n_s16(vshrq_n_s16(vqdmulhq_lane_s16(vshrn_high_n_s32(vshrn_n_s32(v17, 4uLL), v18, 4uLL), a1, 0), 1uLL), vqdmulhq_lane_s16(vshrn_high_n_s32(vshrn_n_s32(v19, 4uLL), v20, 4uLL), a2, 0), 1uLL), v14), 2uLL));
      v11 += 16;
    }

    while (v11 <= (a7 - 16));
    v12 = a7 - 4;
    if (v11 > a7 - 4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LODWORD(v11) = 0;
    v12 = a7 - 4;
    if (a7 - 4 < 0)
    {
      goto LABEL_11;
    }
  }

  v21 = v11;
  v22 = v12 - v11;
  if (v22 <= 0x3B)
  {
    goto LABEL_8;
  }

  v40 = v22 >> 2;
  v41 = a5 + v21 + (v22 & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v42 = 4 * v21;
  v43 = 4 * v21 + 16 * (v22 >> 2) + 16;
  v44 = v10->u64 + v43;
  v45 = a5 + v21 >= v9->u64 + v43 || v9 + 4 * v21 >= v41;
  v46 = !v45;
  if (v10 + 4 * v21 < v41 && a5 + v21 < v44)
  {
    goto LABEL_8;
  }

  if (v46)
  {
    goto LABEL_8;
  }

  v48 = v40 + 1;
  v49 = (v40 + 1) & 0x7FFFFFFFFFFFFFF0;
  v11 = v21 + 4 * v49;
  v50 = vdupq_n_s32(v7);
  v51 = vdupq_n_s32(v8);
  v52 = (a5 + v21);
  v53 = (v10 + v42);
  v54 = &v9->i8[v42];
  v55 = v49;
  do
  {
    v56 = vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[8], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[8], 4uLL), v51), 0x10uLL);
    v57 = vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[9], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[9], 4uLL), v51), 0x10uLL);
    v58 = vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[10], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[10], 4uLL), v51), 0x10uLL);
    v59 = vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[11], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[11], 4uLL), v51), 0x10uLL);
    v60 = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[12], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[12], 4uLL), v51), 0x10uLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[13], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[13], 4uLL), v51), 0x10uLL)), 2uLL), vuzp1q_s16(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[14], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[14], 4uLL), v51), 0x10uLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[15], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[15], 4uLL), v51), 0x10uLL)), 2uLL);
    v61 = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[4], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[4], 4uLL), v51), 0x10uLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[5], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[5], 4uLL), v51), 0x10uLL)), 2uLL), vuzp1q_s16(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[6], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[6], 4uLL), v51), 0x10uLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[7], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[7], 4uLL), v51), 0x10uLL)), 2uLL);
    *v52 = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(*v53, 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(*v54, 4uLL), v51), 0x10uLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[1], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[1], 4uLL), v51), 0x10uLL)), 2uLL), vuzp1q_s16(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[2], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[2], 4uLL), v51), 0x10uLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v53[3], 4uLL), v50), 0x10uLL), vmulq_s32(vshrq_n_u32(v54[3], 4uLL), v51), 0x10uLL)), 2uLL);
    v52[1] = v61;
    v52[2] = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(v56, v57), 2uLL), vuzp1q_s16(v58, v59), 2uLL);
    v52[3] = v60;
    v52 += 4;
    v53 += 16;
    v54 += 16;
    v55 -= 16;
  }

  while (v55);
  v21 = v11;
  if (v48 != v49)
  {
LABEL_8:
    v23 = v21 + 1;
    v24 = 4 * v21 + 8;
    v25 = (v9->i32 + v24);
    v26 = (v21 + a5 + 3);
    v27 = (v10->i32 + v24);
    do
    {
      *(v26 - 3) = ((((*(v27 - 2) >> 4) * v7) >> 16) + (((*(v25 - 2) >> 4) * v8) >> 16) + 2) >> 2;
      *(v26 - 2) = ((((*(v27 - 1) >> 4) * v7) >> 16) + (((*(v25 - 1) >> 4) * v8) >> 16) + 2) >> 2;
      *(v26 - 1) = ((((*v27 >> 4) * v7) >> 16) + (((*v25 >> 4) * v8) >> 16) + 2) >> 2;
      v28 = ((((v27[1] >> 4) * v7) >> 16) + (((v25[1] >> 4) * v8) >> 16) + 2) >> 2;
      v29 = v23 + 4;
      v30 = v23 + 3;
      v25 += 4;
      *v26 = v28;
      v26 += 4;
      v27 += 4;
      v23 += 4;
    }

    while (v30 <= v12);
    LODWORD(v11) = v29 - 1;
  }

LABEL_11:
  if (v11 >= a7)
  {
    return;
  }

  v31 = v11;
  v32 = a7 - v11;
  if (v32 < 4)
  {
    goto LABEL_13;
  }

  v62 = a5 + a7;
  v63 = 4 * v31;
  v64 = a5 + v31 >= v9 + 4 * a7 || v9 + 4 * v31 >= v62;
  v65 = !v64;
  v66 = v10 + 4 * v31 >= v62 || a5 + v31 >= v10 + 4 * a7;
  if (!v66 || v65)
  {
    goto LABEL_13;
  }

  v67 = vdupq_n_s32(v7);
  v68 = vdupq_n_s32(v8);
  if (v32 < 0x10)
  {
    v69 = 0;
    goto LABEL_50;
  }

  v69 = v32 & 0xFFFFFFFFFFFFFFF0;
  v70 = (v10 + v63);
  v71 = &v9->i8[v63];
  v72 = (a5 + v31);
  v73.i64[0] = 0x200000002;
  v73.i64[1] = 0x200000002;
  v74 = v32 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v86.val[2] = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v70[2], 4uLL), v67), 0x10uLL), vmulq_s32(vshrq_n_u32(v71[2], 4uLL), v68), 0x10uLL), v73), 2uLL);
    v86.val[1] = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v70[1], 4uLL), v67), 0x10uLL), vmulq_s32(vshrq_n_u32(v71[1], 4uLL), v68), 0x10uLL), v73), 2uLL);
    v86.val[0] = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(*v70, 4uLL), v67), 0x10uLL), vmulq_s32(vshrq_n_u32(*v71, 4uLL), v68), 0x10uLL), v73), 2uLL);
    v86.val[3] = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vshrq_n_u32(vmulq_s32(vshrq_n_s32(v70[3], 4uLL), v67), 0x10uLL), vmulq_s32(vshrq_n_u32(v71[3], 4uLL), v68), 0x10uLL), v73), 2uLL);
    *v72++ = vqtbl4q_s8(v86, xmmword_1003E36F0);
    v70 += 4;
    v71 += 4;
    v74 -= 16;
  }

  while (v74);
  if (v32 != v69)
  {
    if ((v32 & 0xC) == 0)
    {
      v31 += v69;
      goto LABEL_13;
    }

LABEL_50:
    v75 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + v31;
    v76 = v69 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
    v77 = v69 + v31;
    v78 = 4 * (v69 + v31);
    v79 = (v10 + v78);
    v80 = &v9->i8[v78];
    v81 = (a5 + v77);
    do
    {
      v82 = *v79++;
      v83 = vshrq_n_u32(vmulq_s32(vshrq_n_s32(v82, 4uLL), v67), 0x10uLL);
      v84 = *v80++;
      v85 = vsraq_n_u32(v83, vmulq_s32(vshrq_n_u32(v84, 4uLL), v68), 0x10uLL);
      *v85.i8 = vmovn_s32(v85);
      *v81++ = vrshrn_n_s16(v85, 2uLL).u32[0];
      v76 += 4;
    }

    while (v76);
    v31 = v75;
    if (v32 == (v32 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return;
    }

LABEL_13:
    v33 = &v10->i32[v31];
    v34 = &v9->i32[v31];
    v35 = (a5 + v31);
    v36 = a7 - v31;
    do
    {
      v37 = *v33++;
      v38 = ((v37 >> 4) * v7) >> 16;
      v39 = *v34++;
      *v35++ = (v38 + (((v39 >> 4) * v8) >> 16) + 2) >> 2;
      --v36;
    }

    while (v36);
  }
}

uint64_t sub_10033C9D8(uint64_t a1)
{
  *a1 = off_10047A3F8;
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

uint64_t sub_10033CB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A438;
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

void sub_10033CD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_10033CD78(uint64_t a1)
{
  sub_10033DA4C(a1);

  operator delete();
}

void sub_10033CDB0(uint64_t a1, int *a2, double a3, float a4, float a5, float a6, float a7)
{
  v8 = *(a1 + 8);
  v9 = (*(a1 + 240) + 15) & 0xFFFFFFF0;
  LODWORD(v10) = *(a1 + 248);
  if ((v10 * v9) >= 0x109)
  {
    operator new[]();
  }

  v11 = 0.0;
  memset(v39, 0, 128);
  memset(v38, 0, sizeof(v38));
  if (v10 >= 1)
  {
    memset(__b, 255, 4 * v10);
    v12 = 4 * v9;
    if (v10 == 1)
    {
      v13 = 0;
LABEL_9:
      v17 = &v34[v13 * v9];
      v18 = &v38[v13];
      v19 = v10 - v13;
      do
      {
        *v18++ = v17;
        v17 = (v17 + v12);
        --v19;
      }

      while (v19);
      goto LABEL_11;
    }

    v13 = v10 & 0x7FFFFFFE;
    v14 = &v38[1];
    v15 = v13;
    v16 = v34;
    do
    {
      *(v14 - 1) = v16;
      *v14 = (v16 + v12);
      v16 = (v16 + 8 * v9);
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
    if (v13 != v10)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v20 = *a2;
  if (v20 < a2[1])
  {
    v21 = (*(a1 + 224) + 4 * v20 * v10);
    v31 = ((v8 >> 3) & 0x1FF) + 1;
    do
    {
      if (v10 >= 1)
      {
        v33 = v21;
        v22 = 0;
        LODWORD(v23) = 0;
        v24 = (*(*(a1 + 208) + 4 * v20) - (v10 >> 1) + 1);
        v25 = v10;
        do
        {
          v27 = *(a1 + 236);
          if ((v22 + v24) >= v27)
          {
            v28 = v27 - 1;
          }

          else
          {
            v28 = v22 + v24;
          }

          if ((v22 + v24) >= 0)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if (v23 <= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = v23;
          }

          if (v23 < v10)
          {
            while (v23 > 0xF || v29 != __b[v23])
            {
              if (++v23 >= v10)
              {
                goto LABEL_15;
              }
            }

            if (v23 > v22)
            {
              memcpy(v38[v22], v38[v23], 4 * v9);
              LODWORD(v10) = *(a1 + 248);
            }
          }

LABEL_15:
          if (v22 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v22;
          }

          if (v23 == v10)
          {
            v25 = v26;
          }

          v39[v22] = *(a1 + 24) + **(a1 + 80) * v29;
          __b[v22++] = v29;
        }

        while (v22 < v10);
        v30 = *(a1 + 240);
        if (v10 <= v25)
        {
          v21 = v33;
          goto LABEL_41;
        }

        sub_10033D15C(v11, a4, a5, a6, a7, &v36, &v39[v25], &v38[v25], v10 - v25, *(a1 + 200), *(a1 + 216), *(a1 + 232), v30, v31, *(a1 + 252), *(a1 + 256));
        v21 = v33;
      }

      v30 = *(a1 + 240);
LABEL_41:
      sub_10033D534(&v35, v38, (*(a1 + 120) + *(a1 + 184) * v20++), v21, v30);
      v10 = *(a1 + 248);
      v21 += v10;
    }

    while (v20 < a2[1]);
  }
}

void sub_10033D120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10033D15C(float a1, float a2, float a3, float a4, float a5, uint64_t a6, uint64_t *a7, uint64_t *a8, int a9, int *a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16)
{
  if (a9 >= 2)
  {
    if (a16 < 1)
    {
      if (a13 < 1)
      {
        return;
      }

      v36 = 0;
      LODWORD(v16) = a9 - 1;
      v37 = *a7;
      v38 = *a8;
      do
      {
        v39 = 0;
        v40 = a7[++v36];
        v41 = a8[v36];
        do
        {
          v42 = a10[v39];
          LOWORD(a1) = *(v37 + 2 * v42);
          v43 = LODWORD(a1);
          *(v38 + v39 * 4) = v43;
          LOWORD(v43) = *(v40 + 2 * v42);
          a1 = LODWORD(v43);
          *(v41 + v39 * 4) = a1;
          ++v39;
        }

        while (a13 != v39);
        v38 = v41;
        v37 = v40;
      }

      while (v36 != a9 - 1);
    }

    else
    {
      v17 = 0;
      v16 = (a9 - 1);
      v18 = *a7;
      v19 = *a8;
      do
      {
        v20 = 0;
        v21 = v18;
        v22 = v19;
        v18 = a7[++v17];
        v19 = a8[v17];
        v23 = (v22 + 4);
        v24 = (v19 + 4);
        v25 = 1;
        v26 = a10 + 1;
        v27 = (a11 + 4);
        do
        {
          v28 = v26;
          v29 = v23;
          v30 = v24;
          v31 = v25;
          v32 = a10[v20];
          v33 = *(v27 - 1);
          LOWORD(a3) = *(v21 + 2 * v32);
          LOWORD(a4) = *(v21 + 2 * (v32 + a14));
          LOWORD(a5) = *(v18 + 2 * v32);
          a3 = (*v27 * LODWORD(a4)) + (LODWORD(a3) * v33);
          a4 = LODWORD(a5);
          LOWORD(a5) = *(v18 + 2 * (v32 + a14));
          a5 = LODWORD(a5);
          a2 = *v27 * a5;
          *(v22 + 4 * v20) = a3;
          a1 = a2 + (a4 * v33);
          *(v19 + 4 * v20++) = a1;
          v27 += 2;
          ++v26;
          v23 = v29 + 1;
          ++v24;
          ++v25;
        }

        while (a16 != v20);
        if (a16 < a13)
        {
          do
          {
            v34 = *v28++;
            LOWORD(a1) = *(v21 + 2 * v34);
            v35 = LODWORD(a1);
            *v29++ = v35;
            LOWORD(v35) = *(v18 + 2 * v34);
            a1 = LODWORD(v35);
            *v30++ = a1;
            ++v31;
          }

          while (v31 < a13);
        }
      }

      while (v17 != v16);
    }
  }

  else
  {
    if (a9 != 1)
    {
      return;
    }

    LODWORD(v16) = 0;
  }

  if (a16 >= 1)
  {
    v16 = v16;
    v44 = (~a16 + a13);
    v45 = (v44 + 1) & 0x1FFFFFFFELL;
    v46 = (a11 + 4);
    while (1)
    {
      v47 = 0;
      v48 = a7[v16];
      v49 = a8[v16];
      v50 = v46;
      v51 = v49;
      v52 = a10;
      do
      {
        v53 = *v52++;
        LOWORD(a1) = *(v48 + 2 * v53);
        LOWORD(a2) = *(v48 + 2 * (v53 + a14));
        a2 = *v50 * LODWORD(a2);
        a1 = a2 + (LODWORD(a1) * *(v50 - 1));
        *v51++ = a1;
        --v47;
        v50 += 2;
      }

      while (-a16 != v47);
      if (a16 >= a13)
      {
        goto LABEL_19;
      }

      if (v44)
      {
        v54 = 0;
        v55 = v45 - v47;
        do
        {
          v56 = &v52[v54];
          LOWORD(a1) = *(v48 + 2 * *v56);
          a1 = LODWORD(a1);
          LOWORD(a2) = *(v48 + 2 * v56[1]);
          a2 = LODWORD(a2);
          v57 = &v51[v54];
          *v57 = a1;
          v57[1] = a2;
          v54 += 2;
        }

        while (v45 != v54);
        if (v44 + 1 == v45)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v55 = -v47;
      }

      v58 = &a10[v55];
      v59 = &v49[v55];
      do
      {
        v60 = *v58++;
        LOWORD(a1) = *(v48 + 2 * v60);
        a1 = LODWORD(a1);
        *v59++ = a1;
        LODWORD(v55) = v55 + 1;
      }

      while (v55 < a13);
LABEL_19:
      if (++v16 >= a9)
      {
        return;
      }
    }
  }

  if (a13 >= 1)
  {
    v61 = v16;
    if (a13 == 1)
    {
      v62 = *a10;
      v63 = &a8[v16];
      v64 = &a7[v16];
      do
      {
        v66 = *v63++;
        v65 = v66;
        v67 = *v64++;
        LOWORD(a1) = *(v67 + 2 * v62);
        a1 = LODWORD(a1);
        *v65 = a1;
        LODWORD(v16) = v16 + 1;
      }

      while (v16 < a9);
    }

    else
    {
      v68 = a13 & 0x7FFFFFFE;
      if (a13 == v68)
      {
        do
        {
          v69 = a7[v61];
          v70 = (a8[v61] + 4);
          v71 = a10 + 1;
          v72 = a13 & 0x7FFFFFFE;
          do
          {
            LOWORD(a1) = *(v69 + 2 * *(v71 - 1));
            a1 = LODWORD(a1);
            LOWORD(a2) = *(v69 + 2 * *v71);
            a2 = LODWORD(a2);
            *(v70 - 1) = a1;
            *v70 = a2;
            v70 += 2;
            v71 += 2;
            v72 -= 2;
          }

          while (v72);
          ++v61;
        }

        while (v61 < a9);
      }

      else
      {
        v73 = 2 * ((a13 >> 1) & 0x3FFFFFFF);
        do
        {
          v74 = a7[v61];
          v75 = a8[v61];
          v76 = (v75 + 4);
          v77 = a13 & 0x7FFFFFFE;
          v78 = a10 + 1;
          do
          {
            LOWORD(a1) = *(v74 + 2 * *(v78 - 1));
            a1 = LODWORD(a1);
            LOWORD(a2) = *(v74 + 2 * *v78);
            a2 = LODWORD(a2);
            *(v76 - 1) = a1;
            *v76 = a2;
            v78 += 2;
            v76 += 2;
            v77 -= 2;
          }

          while (v77);
          v79 = (v75 + v73 * 4);
          v80 = a13 - v68;
          v81 = &a10[v73];
          do
          {
            v82 = *v81++;
            LOWORD(a1) = *(v74 + 2 * v82);
            a1 = LODWORD(a1);
            *v79++ = a1;
            --v80;
          }

          while (v80);
          ++v61;
        }

        while (v61 < a9);
      }
    }
  }
}

void sub_10033D534(uint64_t a1, float32x4_t **a2, uint16x8_t *a3, _DWORD *a4, uint64_t a5)
{
  LODWORD(v5) = *a4;
  LODWORD(v6) = a4[1];
  v8 = *a2;
  v7 = a2[1];
  LODWORD(v9) = 0;
  v10 = a5 - 8;
  if (a5 >= 8)
  {
    v62 = vdupq_lane_s32(*&v6, 0);
    v63 = v7 + 1;
    v64 = v8 + 1;
    v65 = &off_1004B0000;
    v66 = a3;
    do
    {
      v67 = v64[-1];
      v68 = *v64;
      v70 = v63[-1];
      v69 = *v63;
      if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
      {
        v71 = v65[5];
        if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v101 = v7;
        v103 = a3;
        v89 = v8;
        v91 = a5;
        v97 = v63;
        v99 = v9;
        v87 = v10;
        v93 = v66;
        v95 = v64;
        v85 = v5;
        v81 = v62;
        v83 = v6;
        v77 = v67;
        v79 = v68;
        v73 = v70;
        v75 = v69;
        sub_1003C836C();
        v70 = v73;
        v69 = v75;
        v67 = v77;
        v68 = v79;
        v62 = v81;
        v6 = v83;
        v5 = v85;
        v66 = v93;
        v64 = v95;
        v65 = &off_1004B0000;
        v63 = v97;
        LODWORD(v9) = v99;
        v10 = v87;
        v8 = v89;
        a5 = v91;
        v7 = v101;
        a3 = v103;
        v71 = xmmword_1004B0050;
        if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
        {
LABEL_25:
          v102 = v7;
          v104 = a3;
          v90 = v8;
          v92 = a5;
          v98 = v63;
          v100 = v9;
          v88 = v10;
          v94 = v66;
          v96 = v64;
          v86 = v5;
          v82 = v62;
          v84 = v6;
          v78 = v67;
          v80 = v68;
          v74 = v70;
          v76 = v69;
          v72 = v71;
          sub_1003C836C();
          v71 = v72;
          v70 = v74;
          v69 = v76;
          v67 = v78;
          v68 = v80;
          v62 = v82;
          v6 = v84;
          v5 = v86;
          v66 = v94;
          v64 = v96;
          v65 = &off_1004B0000;
          v63 = v98;
          LODWORD(v9) = v100;
          v10 = v88;
          v8 = v90;
          a5 = v92;
          v7 = v102;
          a3 = v104;
        }
      }

      *v66++ = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmlaq_f32(vmulq_n_f32(v67, *&v5), v62, v70), v71))), vcvtq_u32_f32(vaddq_f32(vmlaq_f32(vmulq_n_f32(v68, *&v5), v62, v69), v65[5])));
      LODWORD(v9) = v9 + 8;
      v63 += 2;
      v64 += 2;
    }

    while (v10 >= v9);
  }

  v11 = a5 - 4;
  if (v9 <= a5 - 4)
  {
    v12 = v9;
    v13 = v11 - v9;
    v9 = v9;
    if (v13 <= 0x1B)
    {
      goto LABEL_7;
    }

    v14 = (v13 >> 2) + 1;
    v9 = v9 + 4 * (v14 & 0x7FFFFFFFFFFFFFF8);
    v15 = vdupq_lane_s32(*&v5, 0);
    v16 = (a3 + 2 * v12);
    v17 = 4 * v12;
    v18 = (v8 + 4 * v12);
    v19 = (v7 + v17);
    v20.i64[0] = 0xFFFF0000FFFFLL;
    v20.i64[1] = 0xFFFF0000FFFFLL;
    v21 = v14 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v22 = vmlaq_f32(vmulq_n_f32(v19[1], *&v6), v15, v18[1]);
      v23 = vmlaq_f32(vmulq_n_f32(*v19, *&v6), v15, *v18);
      v24 = vmlaq_f32(vmulq_n_f32(v19[2], *&v6), v15, v18[2]);
      v25 = vmlaq_f32(vmulq_n_f32(v19[3], *&v6), v15, v18[3]);
      v26 = vmlaq_f32(vmulq_n_f32(v19[4], *&v6), v15, v18[4]);
      v27 = vmlaq_f32(vmulq_n_f32(v19[5], *&v6), v15, v18[5]);
      v28 = vmlaq_f32(vmulq_n_f32(v19[6], *&v6), v15, v18[6]);
      v29 = vmlaq_f32(vmulq_n_f32(v19[7], *&v6), v15, v18[7]);
      *v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v23.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v23, v23, 8uLL))))), 0), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v22.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v22, v22, 8uLL))))), 0), v20));
      v16[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v24.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v24, v24, 8uLL))))), 0), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v25.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v25, v25, 8uLL))))), 0), v20));
      v16[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v26.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v26, v26, 8uLL))))), 0), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v27.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v27, v27, 8uLL))))), 0), v20));
      v16[3] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v28.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v28, v28, 8uLL))))), 0), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v29.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v29, v29, 8uLL))))), 0), v20));
      v16 += 4;
      v18 += 8;
      v19 += 8;
      v21 -= 8;
    }

    while (v21);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_7:
      v30 = vdupq_lane_s32(*&v5, 0);
      v31 = (v8 + 4 * v9);
      v32 = (v7 + 4 * v9);
      v33 = (a3 + 2 * v9);
      v34.i64[0] = 0xFFFF0000FFFFLL;
      v34.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        v35 = *v31++;
        v36 = v35;
        v37 = *v32++;
        v38 = vmlaq_f32(vmulq_n_f32(v37, *&v6), v30, v36);
        *v33++ = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))), 0), v34));
        v9 += 4;
      }

      while (v9 <= v11);
    }
  }

  if (v9 < a5)
  {
    v39 = v9;
    v40 = a5 - v9;
    v9 = v9;
    if (v40 <= 7)
    {
      goto LABEL_14;
    }

    v9 = (v40 & 0xFFFFFFFFFFFFFFF8) + v9;
    v41 = vdupq_lane_s32(*&v5, 0);
    v42 = (v8 + 4 * v39);
    v43 = (v7 + 4 * v39);
    v44 = (a3 + 2 * v39);
    v45.i64[0] = 0xFFFF0000FFFFLL;
    v45.i64[1] = 0xFFFF0000FFFFLL;
    v46 = v40 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v48 = *v43;
      v47 = v43[1];
      v43 += 2;
      v49 = *v42;
      v50 = v42[1];
      v42 += 2;
      v51 = vmlaq_f32(vmulq_n_f32(v47, *&v6), v41, v50);
      v52 = vmlaq_f32(vmulq_n_f32(v48, *&v6), v41, v49);
      *v44++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v45), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v45));
      v46 -= 8;
    }

    while (v46);
    if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_14:
      v53 = &v8->f32[v9];
      v54 = &v7->f32[v9];
      v55 = &a3->i16[v9];
      v56 = a5 - v9;
      do
      {
        v57 = *v53++;
        v58 = v57;
        v59 = *v54++;
        v60 = rintf((*&v6 * v59) + (v58 * *&v5));
        v61 = v60 & ~(v60 >> 31);
        if (v61 >= 0xFFFF)
        {
          LOWORD(v61) = -1;
        }

        *v55++ = v61;
        --v56;
      }

      while (v56);
    }
  }
}

uint64_t sub_10033DA4C(uint64_t a1)
{
  *a1 = off_10047A438;
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

uint64_t sub_10033DB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A478;
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

void sub_10033DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_10033DDEC(uint64_t a1)
{
  sub_10033EC1C(a1);

  operator delete();
}

_DWORD *sub_10033DE24(_DWORD *result, int *a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = result;
  v8 = result[2];
  v9 = (result[60] + 15) & 0xFFFFFFF0;
  LODWORD(v10) = result[62];
  if ((v10 * v9) >= 0x109)
  {
    operator new[]();
  }

  v11 = 0.0;
  memset(v39, 0, 128);
  memset(v38, 0, sizeof(v38));
  if (v10 >= 1)
  {
    result = memset(__b, 255, 4 * v10);
    v12 = v9;
    if (v10 == 1)
    {
      v13 = 0;
LABEL_9:
      v17 = &v34[v13 * v9];
      v18 = &v38[v13];
      v19 = v10 - v13;
      do
      {
        *v18++ = v17;
        v17 = (v17 + v12 * 4);
        --v19;
      }

      while (v19);
      goto LABEL_11;
    }

    v13 = v10 & 0x7FFFFFFE;
    v14 = &v38[1];
    v15 = v13;
    v16 = v34;
    do
    {
      *(v14 - 1) = v16;
      *v14 = &v16[v12];
      v16 += 2 * v9;
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
    if (v13 != v10)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v20 = *a2;
  if (v20 < a2[1])
  {
    v21 = *(v7 + 28) + 4 * v20 * v10;
    v31 = ((v8 >> 3) & 0x1FF) + 1;
    do
    {
      if (v10 >= 1)
      {
        v33 = v21;
        v22 = 0;
        LODWORD(v23) = 0;
        v24 = (*(*(v7 + 26) + 4 * v20) - (v10 >> 1) + 1);
        v25 = v10;
        do
        {
          v27 = v7[59];
          if ((v22 + v24) >= v27)
          {
            v28 = v27 - 1;
          }

          else
          {
            v28 = v22 + v24;
          }

          if ((v22 + v24) >= 0)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if (v23 <= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = v23;
          }

          if (v23 < v10)
          {
            while (v23 > 0xF || v29 != __b[v23])
            {
              if (++v23 >= v10)
              {
                goto LABEL_15;
              }
            }

            if (v23 > v22)
            {
              memcpy(v38[v22], v38[v23], 4 * v9);
              LODWORD(v10) = v7[62];
            }
          }

LABEL_15:
          if (v22 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v22;
          }

          if (v23 == v10)
          {
            v25 = v26;
          }

          v39[v22] = *(v7 + 3) + **(v7 + 10) * v29;
          __b[v22++] = v29;
        }

        while (v22 < v10);
        v30 = v7[60];
        if (v10 <= v25)
        {
          v21 = v33;
          goto LABEL_41;
        }

        sub_10033E1D0(v11, a4, a5, a6, a7, &v36, &v39[v25], &v38[v25], v10 - v25, *(v7 + 25), *(v7 + 27), v7[58], v30, v31, v7[63], v7[64]);
        v21 = v33;
      }

      v30 = v7[60];
LABEL_41:
      result = sub_10033E5F8(*&v11, &v35, v38, (*(v7 + 15) + *(v7 + 23) * v20++), v21, v30);
      v10 = v7[62];
      v21 += 4 * v10;
    }

    while (v20 < a2[1]);
  }

  return result;
}

void sub_10033E194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10033E1D0(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t *a7, uint64_t *a8, int a9, int *a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16)
{
  if (a9 >= 2)
  {
    if (a16 < 1)
    {
      if (a13 < 1)
      {
        return;
      }

      v37 = 0;
      LODWORD(v16) = a9 - 1;
      v38 = *a7;
      v39 = *a8;
      do
      {
        v40 = 0;
        v41 = a7[++v37];
        v42 = a8[v37];
        do
        {
          v43 = a10[v40];
          LOWORD(a1) = *(v38 + 2 * v43);
          v44 = vmovl_s16(*&a1).u64[0];
          *v44.i32 = v44.i32[0];
          *(v39 + v40 * 4) = v44.i32[0];
          v44.i16[0] = *(v41 + 2 * v43);
          *&a1 = vmovl_s16(v44).u64[0];
          *&a1 = SLODWORD(a1);
          *(v42 + v40 * 4) = LODWORD(a1);
          ++v40;
        }

        while (a13 != v40);
        v39 = v42;
        v38 = v41;
      }

      while (v37 != a9 - 1);
    }

    else
    {
      v17 = 0;
      v16 = (a9 - 1);
      v18 = *a7;
      v19 = *a8;
      do
      {
        v20 = 0;
        v21 = v18;
        v22 = v19;
        v18 = a7[++v17];
        v19 = a8[v17];
        v23 = (v22 + 4);
        v24 = (v19 + 4);
        v25 = 1;
        v26 = a10 + 1;
        v27 = (a11 + 4);
        do
        {
          v28 = v26;
          v29 = v23;
          v30 = v24;
          v31 = v25;
          v32 = a10[v20];
          v33 = *(v27 - 1);
          LOWORD(a3) = *(v21 + 2 * v32);
          *&a3 = vmovl_s16(*&a3).u64[0];
          LOWORD(a4) = *(v21 + 2 * (v32 + a14));
          v34 = vmovl_s16(*&a4).u64[0];
          *v34.i32 = *v27 * v34.i32[0];
          *&a3 = *v34.i32 + (SLODWORD(a3) * v33);
          v34.i16[0] = *(v18 + 2 * v32);
          *&a4 = vmovl_s16(v34).u64[0];
          *&a4 = SLODWORD(a4);
          LOWORD(a5) = *(v18 + 2 * (v32 + a14));
          *&a5 = vmovl_s16(*&a5).u64[0];
          *&a5 = SLODWORD(a5);
          *&a2 = *v27 * *&a5;
          *(v22 + 4 * v20) = LODWORD(a3);
          *&a1 = *&a2 + (*&a4 * v33);
          *(v19 + 4 * v20++) = LODWORD(a1);
          v27 += 2;
          ++v26;
          v23 = v29 + 1;
          ++v24;
          ++v25;
        }

        while (a16 != v20);
        if (a16 < a13)
        {
          do
          {
            v35 = *v28++;
            LOWORD(a1) = *(v21 + 2 * v35);
            v36 = vmovl_s16(*&a1).u64[0];
            *v36.i32 = v36.i32[0];
            *v29++ = v36.i32[0];
            v36.i16[0] = *(v18 + 2 * v35);
            *&a1 = vmovl_s16(v36).u64[0];
            *&a1 = SLODWORD(a1);
            *v30++ = LODWORD(a1);
            ++v31;
          }

          while (v31 < a13);
        }
      }

      while (v17 != v16);
    }
  }

  else
  {
    if (a9 != 1)
    {
      return;
    }

    LODWORD(v16) = 0;
  }

  if (a16 >= 1)
  {
    v16 = v16;
    v45 = (~a16 + a13);
    v46 = (v45 + 1) & 0x1FFFFFFFELL;
    v47 = (a11 + 4);
    while (1)
    {
      v48 = 0;
      v49 = a7[v16];
      v50 = a8[v16];
      v51 = v47;
      v52 = v50;
      v53 = a10;
      do
      {
        v54 = *v53++;
        LOWORD(a1) = *(v49 + 2 * v54);
        *&a1 = vmovl_s16(*&a1).u64[0];
        LOWORD(a2) = *(v49 + 2 * (v54 + a14));
        *&a2 = vmovl_s16(*&a2).u64[0];
        *&a2 = *v51 * SLODWORD(a2);
        *&a1 = *&a2 + (SLODWORD(a1) * *(v51 - 1));
        *v52++ = LODWORD(a1);
        --v48;
        v51 += 2;
      }

      while (-a16 != v48);
      if (a16 >= a13)
      {
        goto LABEL_19;
      }

      if (v45)
      {
        v55 = 0;
        v56 = v46 - v48;
        do
        {
          v57 = &v53[v55];
          LOWORD(a1) = *(v49 + 2 * *v57);
          *&a1 = vmovl_s16(*&a1).u64[0];
          *&a1 = SLODWORD(a1);
          LOWORD(a2) = *(v49 + 2 * v57[1]);
          *&a2 = vmovl_s16(*&a2).u64[0];
          *&a2 = SLODWORD(a2);
          v58 = &v52[v55];
          *v58 = LODWORD(a1);
          v58[1] = LODWORD(a2);
          v55 += 2;
        }

        while (v46 != v55);
        if (v45 + 1 == v46)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v56 = -v48;
      }

      v59 = &a10[v56];
      v60 = &v50[v56];
      do
      {
        v61 = *v59++;
        LOWORD(a1) = *(v49 + 2 * v61);
        *&a1 = vmovl_s16(*&a1).u64[0];
        *&a1 = SLODWORD(a1);
        *v60++ = LODWORD(a1);
        LODWORD(v56) = v56 + 1;
      }

      while (v56 < a13);
LABEL_19:
      if (++v16 >= a9)
      {
        return;
      }
    }
  }

  if (a13 >= 1)
  {
    v62 = v16;
    if (a13 == 1)
    {
      v63 = *a10;
      v64 = &a8[v16];
      v65 = &a7[v16];
      do
      {
        v67 = *v64++;
        v66 = v67;
        v68 = *v65++;
        LOWORD(a1) = *(v68 + 2 * v63);
        *&a1 = vmovl_s16(*&a1).u64[0];
        *&a1 = SLODWORD(a1);
        *v66 = LODWORD(a1);
        LODWORD(v16) = v16 + 1;
      }

      while (v16 < a9);
    }

    else
    {
      v69 = a13 & 0x7FFFFFFE;
      if (a13 == v69)
      {
        do
        {
          v70 = a7[v62];
          v71 = (a8[v62] + 4);
          v72 = a10 + 1;
          v73 = a13 & 0x7FFFFFFE;
          do
          {
            LOWORD(a1) = *(v70 + 2 * *(v72 - 1));
            *&a1 = vmovl_s16(*&a1).u64[0];
            *&a1 = SLODWORD(a1);
            LOWORD(a2) = *(v70 + 2 * *v72);
            *&a2 = vmovl_s16(*&a2).u64[0];
            *&a2 = SLODWORD(a2);
            *(v71 - 1) = LODWORD(a1);
            *v71 = LODWORD(a2);
            v71 += 2;
            v72 += 2;
            v73 -= 2;
          }

          while (v73);
          ++v62;
        }

        while (v62 < a9);
      }

      else
      {
        v74 = 2 * ((a13 >> 1) & 0x3FFFFFFF);
        do
        {
          v75 = a7[v62];
          v76 = a8[v62];
          v77 = (v76 + 4);
          v78 = a13 & 0x7FFFFFFE;
          v79 = a10 + 1;
          do
          {
            LOWORD(a1) = *(v75 + 2 * *(v79 - 1));
            *&a1 = vmovl_s16(*&a1).u64[0];
            *&a1 = SLODWORD(a1);
            LOWORD(a2) = *(v75 + 2 * *v79);
            *&a2 = vmovl_s16(*&a2).u64[0];
            *&a2 = SLODWORD(a2);
            *(v77 - 1) = LODWORD(a1);
            *v77 = LODWORD(a2);
            v79 += 2;
            v77 += 2;
            v78 -= 2;
          }

          while (v78);
          v80 = (v76 + v74 * 4);
          v81 = a13 - v69;
          v82 = &a10[v74];
          do
          {
            v83 = *v82++;
            LOWORD(a1) = *(v75 + 2 * v83);
            *&a1 = vmovl_s16(*&a1).u64[0];
            *&a1 = SLODWORD(a1);
            *v80++ = LODWORD(a1);
            --v81;
          }

          while (v81);
          ++v62;
        }

        while (v62 < a9);
      }
    }
  }
}

uint64_t sub_10033E5F8(int32x2_t a1, uint64_t a2, uint64_t a3, int16x8_t *a4, uint64_t a5, int a6)
{
  a1.i32[0] = *a5;
  v66 = a1;
  v65 = *(a5 + 4);
  v9 = *a3;
  v8 = *(a3 + 8);
  result = sub_10033E998(&v67, a3, a4, a5, a6);
  v11 = a6 - 4;
  LODWORD(v12) = result;
  if (result <= a6 - 4)
  {
    v13 = v11 - result;
    v12 = result;
    if (v13 <= 0x1B)
    {
      goto LABEL_6;
    }

    v14 = (v13 >> 2) + 1;
    v15 = vdupq_lane_s32(v66, 0);
    v12 = result + 4 * (v14 & 0x7FFFFFFFFFFFFFF8);
    v16 = (a4 + 2 * result);
    v17 = (v9 + 4 * result);
    v18 = (v8 + 4 * result);
    v19 = v14 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v20 = v17[6];
      v21 = v17[7];
      v22 = v17[4];
      v23 = v17[5];
      v24 = v17[2];
      v25 = v17[3];
      v26 = *v17;
      v27 = v17[1];
      v17 += 8;
      v28 = vmlaq_f32(vmulq_n_f32(v18[1], v65), v15, v27);
      v29 = vmlaq_f32(vmulq_n_f32(*v18, v65), v15, v26);
      v30 = vmlaq_f32(vmulq_n_f32(v18[3], v65), v15, v25);
      v31 = vmlaq_f32(vmulq_n_f32(v18[2], v65), v15, v24);
      v32 = vmlaq_f32(vmulq_n_f32(v18[5], v65), v15, v23);
      v33 = vmlaq_f32(vmulq_n_f32(v18[4], v65), v15, v22);
      v34 = vmlaq_f32(vmulq_n_f32(v18[7], v65), v15, v21);
      v35 = vmlaq_f32(vmulq_n_f32(v18[6], v65), v15, v20);
      *v16 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v29.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v29, v29, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v28.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v28, v28, 8uLL))))));
      v16[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))));
      v16[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))));
      v16[3] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))));
      v16 += 4;
      v18 += 8;
      v19 -= 8;
    }

    while (v19);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_6:
      v36 = vdupq_lane_s32(v66, 0);
      v37 = (v9 + 4 * v12);
      v38 = (v8 + 4 * v12);
      v39 = (a4 + 2 * v12);
      do
      {
        v40 = *v37++;
        v41 = v40;
        v42 = *v38++;
        v43 = vmlaq_f32(vmulq_n_f32(v42, v65), v36, v41);
        *v39++ = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))));
        v12 += 4;
      }

      while (v12 <= v11);
    }
  }

  if (v12 < a6)
  {
    v44 = a6 - v12;
    v45 = v12;
    if (v44 <= 7)
    {
      goto LABEL_13;
    }

    v46 = vdupq_lane_s32(v66, 0);
    v45 = (v44 & 0xFFFFFFFFFFFFFFF8) + v12;
    v47 = (v9 + 4 * v12);
    v48 = (v8 + 4 * v12);
    v49 = (a4 + 2 * v12);
    v50 = v44 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v51 = *v47;
      v52 = v47[1];
      v47 += 2;
      v54 = *v48;
      v53 = v48[1];
      v48 += 2;
      v55 = vmlaq_f32(vmulq_n_f32(v53, v65), v46, v52);
      v56 = vmlaq_f32(vmulq_n_f32(v54, v65), v46, v51);
      *v49++ = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))));
      v50 -= 8;
    }

    while (v50);
    if (v44 != (v44 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_13:
      v57 = &v9->f32[v45];
      v58 = (v8 + 4 * v45);
      v59 = &a4->i16[v45];
      v60 = a6 - v45;
      do
      {
        v61 = *v57++;
        v62 = v61;
        v63 = *v58++;
        v64 = rintf((v65 * v63) + (v62 * *v66.i32));
        if (v64 <= -32768)
        {
          LODWORD(v64) = -32768;
        }

        if (v64 >= 0x7FFF)
        {
          LOWORD(v64) = 0x7FFF;
        }

        *v59++ = v64;
        --v60;
      }

      while (v60);
    }
  }

  return result;
}

uint64_t sub_10033E998(uint64_t a1, float32x4_t **a2, int16x8_t *a3, const float *a4, int a5)
{
  v6 = vld1q_dup_f32(a4);
  v5 = a4 + 1;
  result = 0;
  v8 = a5 - 8;
  if (a5 >= 8)
  {
    v9 = vld1q_dup_f32(v5);
    v10 = a2[1] + 1;
    v11 = *a2 + 1;
    v12 = &off_1004B0000;
    v13 = &off_1004B0000;
    do
    {
      v14 = v11[-1];
      v15 = *v11;
      v17 = v10[-1];
      v16 = *v10;
      if (atomic_load_explicit(qword_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(&qword_1004B00A0, memory_order_acquire))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v66 = a3;
        v54 = result;
        v62 = v8;
        v50 = v10;
        v58 = v11;
        v42 = v9;
        v46 = v6;
        v34 = v14;
        v38 = v15;
        v26 = v17;
        v30 = v16;
        sub_1003C8444();
        v17 = v26;
        v16 = v30;
        v14 = v34;
        v15 = v38;
        v9 = v42;
        v6 = v46;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v11 = v58;
        v10 = v50;
        v8 = v62;
        LODWORD(result) = v54;
        a3 = v66;
        if (atomic_load_explicit(&qword_1004B00A0, memory_order_acquire))
        {
LABEL_5:
          v18 = v12[9];
          v19 = v13[7];
          if (atomic_load_explicit(qword_1004B0080, memory_order_acquire))
          {
            goto LABEL_6;
          }

          goto LABEL_11;
        }
      }

      v67 = a3;
      v55 = result;
      v63 = v8;
      v51 = v10;
      v59 = v11;
      v43 = v9;
      v47 = v6;
      v35 = v14;
      v39 = v15;
      v27 = v17;
      v31 = v16;
      sub_1003C848C();
      v17 = v27;
      v16 = v31;
      v14 = v35;
      v15 = v39;
      v9 = v43;
      v6 = v47;
      v13 = &off_1004B0000;
      v12 = &off_1004B0000;
      v11 = v59;
      v10 = v51;
      v8 = v63;
      LODWORD(result) = v55;
      a3 = v67;
      v18 = xmmword_1004B0090;
      v19 = xmmword_1004B0070;
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
      v68 = a3;
      v56 = result;
      v64 = v8;
      v52 = v10;
      v60 = v11;
      v44 = v9;
      v48 = v6;
      v36 = v14;
      v40 = v15;
      v28 = v17;
      v32 = v16;
      v22 = v19;
      v24 = v18;
      sub_1003C8444();
      v19 = v22;
      v18 = v24;
      v17 = v28;
      v16 = v32;
      v14 = v36;
      v15 = v40;
      v9 = v44;
      v6 = v48;
      v13 = &off_1004B0000;
      v12 = &off_1004B0000;
      v11 = v60;
      v10 = v52;
      v8 = v64;
      LODWORD(result) = v56;
      a3 = v68;
      if ((atomic_load_explicit(&qword_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_12:
        v69 = a3;
        v57 = result;
        v65 = v8;
        v53 = v10;
        v61 = v11;
        v45 = v9;
        v49 = v6;
        v37 = v14;
        v41 = v15;
        v29 = v17;
        v33 = v16;
        v23 = v19;
        v25 = v18;
        sub_1003C848C();
        v19 = v23;
        v18 = v25;
        v17 = v29;
        v16 = v33;
        v14 = v37;
        v15 = v41;
        v9 = v45;
        v6 = v49;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v11 = v61;
        v10 = v53;
        v8 = v65;
        LODWORD(result) = v57;
        a3 = v69;
      }

LABEL_7:
      v20 = vmlaq_f32(vmulq_f32(v6, v14), v9, v17);
      v21 = vmlaq_f32(vmulq_f32(v6, v15), v9, v16);
      *a3++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v20, vorrq_s8(vandq_s8(v19, v20), v18)))), vcvtq_s32_f32(vaddq_f32(v21, vorrq_s8(vandq_s8(v13[7], v21), v12[9]))));
      v10 += 2;
      v11 += 2;
      result = (result + 8);
    }

    while (v8 >= result);
  }

  return result;
}

uint64_t sub_10033EC1C(uint64_t a1)
{
  *a1 = off_10047A478;
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

uint64_t sub_10033ED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A4B8;
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

void sub_10033EF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_10033EFBC(uint64_t a1)
{
  sub_10033F868(a1);

  operator delete();
}

void sub_10033EFF4(uint64_t a1, int *a2, double a3, double a4)
{
  v5 = *(a1 + 8);
  v6 = (*(a1 + 240) + 15) & 0xFFFFFFF0;
  LODWORD(v7) = *(a1 + 248);
  if ((v7 * v6) >= 0x109)
  {
    operator new[]();
  }

  v8.i32[1] = 0;
  memset(v92, 0, 128);
  memset(v91, 0, sizeof(v91));
  if (v7 >= 1)
  {
    memset(__b, 255, 4 * v7);
    v9 = v6;
    if (v7 == 1)
    {
      v10 = 0;
LABEL_9:
      v14 = &v88[v10 * v6];
      v15 = v91 + v10;
      v16 = v7 - v10;
      do
      {
        *v15++ = v14;
        v14 = (v14 + v9 * 4);
        --v16;
      }

      while (v16);
      goto LABEL_11;
    }

    v10 = v7 & 0x7FFFFFFE;
    v11 = v91 + 1;
    v12 = v10;
    v13 = v88;
    do
    {
      *(v11 - 1) = v13;
      *v11 = &v13[v9];
      v13 += 2 * v6;
      v11 += 2;
      v12 -= 2;
    }

    while (v12);
    if (v10 != v7)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v17 = *a2;
  if (v17 < a2[1])
  {
    v18 = (*(a1 + 224) + 4 * v17 * v7);
    while (1)
    {
      if (v7 < 1)
      {
        goto LABEL_40;
      }

      v87 = v18;
      v19 = 0;
      LODWORD(v20) = 0;
      v21 = (*(*(a1 + 208) + 4 * v17) - (v7 >> 1) + 1);
      v22 = v7;
      do
      {
        v24 = *(a1 + 236);
        if ((v19 + v21) >= v24)
        {
          v25 = v24 - 1;
        }

        else
        {
          v25 = v19 + v21;
        }

        if ((v19 + v21) >= 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        if (v20 <= v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v20;
        }

        if (v20 < v7)
        {
          while (v20 > 0xF || v26 != __b[v20])
          {
            if (++v20 >= v7)
            {
              goto LABEL_16;
            }
          }

          if (v20 > v19)
          {
            memcpy(*(v91 + v19), *(v91 + v20), 4 * v6);
            LODWORD(v7) = *(a1 + 248);
          }
        }

LABEL_16:
        if (v19 >= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v19;
        }

        if (v20 == v7)
        {
          v22 = v23;
        }

        v92[v19] = *(a1 + 24) + **(a1 + 80) * v26;
        __b[v19++] = v26;
      }

      while (v19 < v7);
      v27 = *(a1 + 240);
      if (v7 > v22)
      {
        break;
      }

      v18 = v87;
LABEL_42:
      v28 = *(a1 + 120);
      v29 = *(a1 + 184);
      v8.i32[0] = *v18;
      LODWORD(a4) = v18[1];
      v30 = v91[0];
      if (v27 >= 8)
      {
        v31 = 0;
        v34 = vdupq_lane_s32(*&a4, 0);
        v35 = (v28 + v29 * v17 + 16);
        v36 = (*(&v91[0] + 1) + 16);
        v37 = (*&v91[0] + 16);
        do
        {
          v38 = vmlaq_f32(vmulq_n_f32(*v37, *v8.i32), v34, *v36);
          v31 += 8;
          v35[-1] = vmlaq_f32(vmulq_n_f32(v37[-1], *v8.i32), v34, v36[-1]);
          *v35 = v38;
          v35 += 2;
          v36 += 2;
          v37 += 2;
        }

        while (v31 <= (v27 - 8));
        v32 = v29 * v17;
        v33 = v27 - 4;
        if (v31 <= v27 - 4)
        {
LABEL_48:
          v31 = v31;
          v39 = v33 - v31;
          if (v39 <= 0xB)
          {
            goto LABEL_49;
          }

          v56 = 4 * v31;
          v57 = v28 + v32 + v56;
          v58 = (4 * v39) & 0xFFFFFFFFFFFFFFF0;
          v59 = v28 + v32 + v58 + 16;
          v60 = v58 + v56;
          v61 = v30 + v58 + v56 + 16;
          v62 = v57 >= *(&v30 + 1) + v60 + 16 || *(&v30 + 1) >= v59;
          v63 = !v62;
          if (v30 < v59 && v57 < v61)
          {
            goto LABEL_49;
          }

          if (v63)
          {
            goto LABEL_49;
          }

          v65 = (v39 >> 2) + 1;
          v66 = vdupq_lane_s32(v8, 0);
          v31 = v31 + 4 * (v65 & 0x7FFFFFFFFFFFFFFCLL);
          v67 = (v28 + v56 + v29 * v17);
          v68 = (v30 + v56);
          v69 = (*(&v30 + 1) + v56);
          v70 = v65 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v72 = v69[2];
            v71 = v69[3];
            v74 = *v69;
            v73 = v69[1];
            v69 += 4;
            v75 = vmlaq_f32(vmulq_n_f32(v71, *&a4), v66, v68[3]);
            v76 = vmlaq_f32(vmulq_n_f32(v72, *&a4), v66, v68[2]);
            v77 = vmlaq_f32(vmulq_n_f32(v73, *&a4), v66, v68[1]);
            *v67 = vmlaq_f32(vmulq_n_f32(v74, *&a4), v66, *v68);
            v67[1] = v77;
            v67[2] = v76;
            v67[3] = v75;
            v67 += 4;
            v68 += 4;
            v70 -= 4;
          }

          while (v70);
          if (v65 != (v65 & 0x7FFFFFFFFFFFFFFCLL))
          {
LABEL_49:
            v40 = vdup_lane_s32(v8, 0);
            v41 = (v28 + 4 * v31 + v29 * v17 + 8);
            v42 = (*(&v30 + 1) + 4 * v31 + 8);
            v43 = (v30 + 4 * v31 + 8);
            do
            {
              v41[-1] = vmla_f32(vmul_n_f32(v42[-1], *&a4), v40, v43[-1]);
              v44 = *v43;
              v43 += 2;
              v45 = v44;
              v46 = *v42;
              v42 += 2;
              v31 += 4;
              *v41 = vmla_f32(vmul_n_f32(v46, *&a4), v40, v45);
              v41 += 2;
            }

            while (v31 <= v33);
          }
        }
      }

      else
      {
        LODWORD(v31) = 0;
        v32 = v29 * v17;
        v33 = v27 - 4;
        if (v27 - 4 >= 0)
        {
          goto LABEL_48;
        }
      }

      if (v31 < v27)
      {
        v47 = v31;
        v48 = v27 - v31;
        if (v48 <= 7)
        {
          goto LABEL_53;
        }

        v78 = v32 + v28;
        if ((v78 - v30) < 0x20)
        {
          goto LABEL_53;
        }

        if ((v78 - *(&v30 + 1)) < 0x20)
        {
          goto LABEL_53;
        }

        v79 = vdupq_lane_s32(v8, 0);
        v80 = 4 * v31;
        v81 = (v28 + v80 + v29 * v17 + 16);
        v82 = (v30 + v80 + 16);
        v83 = (*(&v30 + 1) + v80 + 16);
        v84 = v48 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v85 = vmlaq_f32(vmulq_n_f32(*v83, *&a4), v79, *v82);
          v81[-1] = vmlaq_f32(vmulq_n_f32(v83[-1], *&a4), v79, v82[-1]);
          *v81 = v85;
          v81 += 2;
          v82 += 2;
          v83 += 2;
          v84 -= 8;
        }

        while (v84);
        v47 = (v48 & 0xFFFFFFFFFFFFFFF8) + v31;
        if (v48 != (v48 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_53:
          v49 = v27 - v47;
          v50 = (v28 + 4 * v47 + v29 * v17);
          v51 = (*(&v30 + 1) + 4 * v47);
          v52 = (v30 + 4 * v47);
          do
          {
            v53 = *v52++;
            v54 = v53;
            v55 = *v51++;
            *v50++ = (*&a4 * v55) + (v54 * *v8.i32);
            --v49;
          }

          while (v49);
        }
      }

      ++v17;
      v7 = *(a1 + 248);
      v18 += v7;
      if (v17 >= a2[1])
      {
        return;
      }
    }

    sub_10033F5F0(&v89, &v92[v22], v91 + v22, v7 - v22, *(a1 + 200), *(a1 + 216), *(a1 + 232), v27, ((v5 >> 3) & 0x1FF) + 1, *(a1 + 252), *(a1 + 256));
    v18 = v87;
LABEL_40:
    v27 = *(a1 + 240);
    goto LABEL_42;
  }
}

void sub_10033F5F0(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int *a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  if (a4 >= 2)
  {
    if (a11 < 1)
    {
      if (a8 < 1)
      {
        return;
      }

      v32 = 0;
      LODWORD(v11) = a4 - 1;
      v33 = *a2;
      v34 = *a3;
      do
      {
        v35 = 0;
        v36 = a2[++v32];
        v37 = a3[v32];
        do
        {
          v38 = a5[v35];
          *(v34 + v35 * 4) = *(v33 + 4 * v38);
          *(v37 + v35 * 4) = *(v36 + 4 * v38);
          ++v35;
        }

        while (a8 != v35);
        v34 = v37;
        v33 = v36;
      }

      while (v32 != a4 - 1);
    }

    else
    {
      v12 = 0;
      v11 = (a4 - 1);
      v13 = *a2;
      v14 = *a3;
      do
      {
        v15 = 0;
        v16 = v13;
        v17 = v14;
        v13 = a2[++v12];
        v14 = a3[v12];
        v18 = (v17 + 4);
        v19 = (v14 + 4);
        v20 = 1;
        v21 = a5 + 1;
        v22 = (a6 + 4);
        do
        {
          v23 = v21;
          v24 = v18;
          v25 = v19;
          v26 = v20;
          v27 = a5[v15];
          v28 = *(v22 - 1);
          v29 = *(v13 + 4 * v27);
          v30 = *v22 * *(v13 + 4 * (v27 + a9));
          *(v17 + 4 * v15) = (*v22 * *(v16 + 4 * (v27 + a9))) + (*(v16 + 4 * v27) * v28);
          *(v14 + 4 * v15++) = v30 + (v29 * v28);
          v22 += 2;
          ++v21;
          v18 = v24 + 1;
          ++v19;
          ++v20;
        }

        while (a11 != v15);
        if (a11 < a8)
        {
          do
          {
            v31 = *v23++;
            *v24++ = *(v16 + 4 * v31);
            *v25++ = *(v13 + 4 * v31);
            ++v26;
          }

          while (v26 < a8);
        }
      }

      while (v12 != v11);
    }
  }

  else
  {
    if (a4 != 1)
    {
      return;
    }

    LODWORD(v11) = 0;
  }

  if (a11 < 1)
  {
    if (a8 >= 1)
    {
      v51 = v11;
      do
      {
        v52 = a2[v51];
        v53 = a3[v51];
        v54 = a8;
        v55 = a5;
        do
        {
          v56 = *v55++;
          *v53++ = *(v52 + 4 * v56);
          --v54;
        }

        while (v54);
        ++v51;
      }

      while (v51 < a4);
    }
  }

  else
  {
    v11 = v11;
    v39 = (a6 + 4);
    do
    {
      v40 = 0;
      v41 = a2[v11];
      v42 = a3[v11];
      v43 = (v42 + 4);
      v44 = 1;
      v45 = a5 + 1;
      v46 = v39;
      do
      {
        v47 = v45;
        v48 = v43;
        v49 = v44;
        *(v42 + 4 * v40) = (*(v41 + 4 * (a5[v40] + a9)) * *v46) + (*(v41 + 4 * a5[v40]) * *(v46 - 1));
        ++v40;
        v46 += 2;
        ++v45;
        ++v43;
        ++v44;
      }

      while (a11 != v40);
      if (a11 < a8)
      {
        do
        {
          v50 = *v47++;
          *v48++ = *(v41 + 4 * v50);
          ++v49;
        }

        while (v49 < a8);
      }

      ++v11;
    }

    while (v11 < a4);
  }
}

uint64_t sub_10033F868(uint64_t a1)
{
  *a1 = off_10047A4B8;
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

uint64_t sub_10033F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A4F8;
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

void sub_10033FBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_10033FC08(uint64_t a1)
{
  sub_100340458(a1);

  operator delete();
}

void sub_10033FC40(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = (*(a1 + 240) + 15) & 0xFFFFFFF0;
  LODWORD(v5) = *(a1 + 248);
  if ((v5 * v4) >= 0x89)
  {
    operator new[]();
  }

  memset(v84, 0, 128);
  memset(v83, 0, sizeof(v83));
  if (v5 >= 1)
  {
    memset(__b, 255, 4 * v5);
    v6 = v4;
    if (v5 == 1)
    {
      v7 = 0;
LABEL_9:
      v11 = &v80[v7 * v4];
      v12 = v83 + v7;
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
    v8 = v83 + 1;
    v9 = v7;
    v10 = v80;
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
    while (1)
    {
      if (v5 < 1)
      {
        goto LABEL_40;
      }

      v79 = v15;
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
              goto LABEL_16;
            }
          }

          if (v17 > v16)
          {
            memcpy(*(v83 + v16), *(v83 + v17), 8 * v4);
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

        v84[v16] = *(a1 + 24) + **(a1 + 80) * v23;
        __b[v16++] = v23;
      }

      while (v16 < v5);
      v24 = *(a1 + 240);
      if (v5 > v19)
      {
        break;
      }

      v15 = v79;
LABEL_42:
      v25 = *(a1 + 120);
      v26 = *(a1 + 184);
      v27 = v26 * v14;
      *&v28 = *v15;
      v29 = v15[1];
      v30 = v83[0];
      v31 = (v24 - 4);
      if (v24 < 4)
      {
        v32 = 0;
        if (v24 <= 0)
        {
          goto LABEL_13;
        }

        goto LABEL_50;
      }

      if (v31 <= 3)
      {
        v33 = 0;
LABEL_47:
        v34 = vdupq_lane_s64(v28, 0);
        v35 = (v25 + 8 * v33 + v26 * v14 + 16);
        v36 = (*(&v30 + 1) + 8 * v33 + 16);
        v37 = (v30 + 8 * v33 + 16);
        do
        {
          v35[-1] = vmlaq_f64(vmulq_n_f64(v36[-1], v29), v34, v37[-1]);
          v38 = *v37;
          v37 += 2;
          v39 = v38;
          v40 = *v36;
          v36 += 2;
          v33 += 4;
          *v35 = vmlaq_f64(vmulq_n_f64(v40, v29), v34, v39);
          v35 += 2;
        }

        while (v33 <= v31);
        goto LABEL_49;
      }

      v33 = 0;
      v51 = (8 * v31) & 0x3FFFFFFE0;
      v52 = v25 + v27 + v51 + 32;
      v54 = v25 + v27 < (*(&v83[0] + 1) + v51 + 32) && *(&v83[0] + 1) < v52;
      v55 = *&v83[0] + v51 + 32;
      if (*&v83[0] < v52 && v25 + v27 < v55)
      {
        goto LABEL_47;
      }

      if (v54)
      {
        goto LABEL_47;
      }

      v57 = (v31 >> 2) + 1;
      v33 = 4 * (v57 & 0x3FFFFFFE);
      v58 = vdupq_lane_s64(v28, 0);
      v59 = (v25 + v26 * v14);
      v60 = v57 & 0x3FFFFFFE;
      v61 = *(&v83[0] + 1);
      v62 = *&v83[0];
      do
      {
        v64 = v61[2];
        v63 = v61[3];
        v66 = *v61;
        v65 = v61[1];
        v61 += 4;
        v67 = vmlaq_f64(vmulq_n_f64(v63, v29), v58, v62[3]);
        v68 = vmlaq_f64(vmulq_n_f64(v64, v29), v58, v62[2]);
        v69 = vmlaq_f64(vmulq_n_f64(v65, v29), v58, v62[1]);
        *v59 = vmlaq_f64(vmulq_n_f64(v66, v29), v58, *v62);
        v59[1] = v69;
        v59[2] = v68;
        v59[3] = v67;
        v59 += 4;
        v62 += 4;
        v60 -= 2;
      }

      while (v60);
      if (v57 != (v57 & 0x3FFFFFFE))
      {
        goto LABEL_47;
      }

LABEL_49:
      v32 = v33;
      if (v33 >= v24)
      {
        goto LABEL_13;
      }

LABEL_50:
      v41 = v24 - v32;
      if (v41 <= 3 || (v70 = v27 + v25, (v70 - v30) < 0x20) || (v70 - *(&v30 + 1)) < 0x20)
      {
        v42 = v32;
      }

      else
      {
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + v32;
        v71 = vdupq_lane_s64(v28, 0);
        v72 = 8 * v32;
        v73 = (v25 + 8 * v32 + v26 * v14 + 16);
        v74 = (v30 + v72 + 16);
        v75 = (*(&v30 + 1) + v72 + 16);
        v76 = v41 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v77 = vmlaq_f64(vmulq_n_f64(*v75, v29), v71, *v74);
          v73[-1] = vmlaq_f64(vmulq_n_f64(v75[-1], v29), v71, v74[-1]);
          *v73 = v77;
          v73 += 2;
          v74 += 2;
          v75 += 2;
          v76 -= 4;
        }

        while (v76);
        if (v41 == (v41 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_13;
        }
      }

      v43 = v24 - v42;
      v44 = 8 * v42;
      v45 = (v25 + v44 + v26 * v14);
      v46 = (*(&v30 + 1) + v44);
      v47 = (v30 + v44);
      do
      {
        v48 = *v47++;
        v49 = v48;
        v50 = *v46++;
        *v45++ = v50 * v29 + v49 * *&v28;
        --v43;
      }

      while (v43);
LABEL_13:
      ++v14;
      v5 = *(a1 + 248);
      v15 += v5;
      if (v14 >= a2[1])
      {
        return;
      }
    }

    sub_1003401D0(&v81, &v84[v19], v83 + v19, v5 - v19, *(a1 + 200), *(a1 + 216), *(a1 + 232), v24, ((v3 >> 3) & 0x1FF) + 1, *(a1 + 252), *(a1 + 256));
    v15 = v79;
LABEL_40:
    v24 = *(a1 + 240);
    goto LABEL_42;
  }
}

void sub_1003401D0(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, int *a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  if (a4 >= 2)
  {
    if (a11 < 1)
    {
      if (a8 < 1)
      {
        return;
      }

      v34 = 0;
      LODWORD(v11) = a4 - 1;
      v35 = *a2;
      v36 = *a3;
      do
      {
        v37 = 0;
        v38 = a2[++v34];
        v39 = a3[v34];
        do
        {
          v40 = a5[v37];
          *(v36 + 8 * v37) = *(v35 + 8 * v40);
          *(v39 + 8 * v37++) = *(v38 + 8 * v40);
        }

        while (a8 != v37);
        v36 = v39;
        v35 = v38;
      }

      while (v34 != a4 - 1);
    }

    else
    {
      v12 = 0;
      v11 = (a4 - 1);
      v13 = *a2;
      v14 = *a3;
      do
      {
        v15 = 0;
        v16 = v13;
        v17 = v14;
        v13 = a2[++v12];
        v14 = a3[v12];
        v18 = (v17 + 8);
        v19 = (v14 + 8);
        v20 = 1;
        v21 = a5 + 1;
        v22 = (a6 + 4);
        do
        {
          v23 = v21;
          v24 = v18;
          v25 = v19;
          v26 = v20;
          v27 = a5[v15];
          v28 = *(v22 - 1);
          v29 = *v22;
          v30 = *(v16 + 8 * (v27 + a9)) * v29 + *(v16 + 8 * v27) * v28;
          v31 = *(v13 + 8 * v27);
          v32 = *(v13 + 8 * (v27 + a9)) * v29;
          *(v17 + 8 * v15) = v30;
          *(v14 + 8 * v15++) = v32 + v31 * v28;
          v22 += 2;
          ++v21;
          v18 = v24 + 1;
          ++v19;
          ++v20;
        }

        while (a11 != v15);
        if (a11 < a8)
        {
          do
          {
            v33 = *v23++;
            *v24++ = *(v16 + 8 * v33);
            *v25++ = *(v13 + 8 * v33);
            ++v26;
          }

          while (v26 < a8);
        }
      }

      while (v12 != v11);
    }
  }

  else
  {
    if (a4 != 1)
    {
      return;
    }

    LODWORD(v11) = 0;
  }

  if (a11 < 1)
  {
    if (a8 >= 1)
    {
      v53 = v11;
      do
      {
        v54 = a2[v53];
        v55 = a3[v53];
        v56 = a8;
        v57 = a5;
        do
        {
          v58 = *v57++;
          *v55++ = *(v54 + 8 * v58);
          --v56;
        }

        while (v56);
        ++v53;
      }

      while (v53 < a4);
    }
  }

  else
  {
    v11 = v11;
    v41 = (a6 + 4);
    do
    {
      v42 = 0;
      v43 = a2[v11];
      v44 = a3[v11];
      v45 = (v44 + 8);
      v46 = 1;
      v47 = a5 + 1;
      v48 = v41;
      do
      {
        v49 = v47;
        v50 = v45;
        v51 = v46;
        *(v44 + 8 * v42) = *(v43 + 8 * (a5[v42] + a9)) * *v48 + *(v43 + 8 * a5[v42]) * *(v48 - 1);
        ++v42;
        v48 += 2;
        ++v47;
        ++v45;
        ++v46;
      }

      while (a11 != v42);
      if (a11 < a8)
      {
        do
        {
          v52 = *v49++;
          *v50++ = *(v43 + 8 * v52);
          ++v51;
        }

        while (v51 < a8);
      }

      ++v11;
    }

    while (v11 < a4);
  }
}

uint64_t sub_100340458(uint64_t a1)
{
  *a1 = off_10047A4F8;
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

uint64_t sub_100340594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A538;
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

void sub_1003407A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_1003407F8(uint64_t a1)
{
  sub_1003410C4(a1);

  operator delete();
}

int32x4_t *sub_100340830(int32x4_t *result, int *a2)
{
  v2 = result;
  v3 = result->u32[2];
  v4 = (result[15].i32[0] + 15) & 0xFFFFFFF0;
  LODWORD(v5) = result[15].i32[2];
  if ((v5 * v4) >= 0x109)
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
  if (v5 >= 1)
  {
    result = memset(__b, 255, 4 * v5);
    v6 = v4;
    if (v5 == 1)
    {
      v7 = 0;
LABEL_9:
      v11 = &v81[v7 * v4];
      v12 = &v84 + v7;
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
    v8 = &v84 + 1;
    v9 = v7;
    v10 = v81;
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
    v15 = (v2[14].i64[0] + 2 * v14 * v5);
    v16.i64[0] = 0x20000000200000;
    v16.i64[1] = 0x20000000200000;
    v17 = 0uLL;
    v18.i64[0] = 0xFF000000FFLL;
    v18.i64[1] = 0xFF000000FFLL;
    v19 = xmmword_1003E36F0;
    do
    {
      if (v5 >= 1)
      {
        v79 = v15;
        v80 = v14;
        v20 = 0;
        LODWORD(v21) = 0;
        v22 = (*(v2[13].i64[0] + 4 * v14) - (v5 >> 1) + 1);
        v23 = v5;
        do
        {
          v25 = v2[14].i32[3];
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

          if (v21 < v5)
          {
            while (v21 > 0xF || v27 != __b[v21])
            {
              if (++v21 >= v5)
              {
                goto LABEL_16;
              }
            }

            if (v21 > v20)
            {
              result = memcpy(*(&v84 + v20), *(&v84 + v21), 4 * v4);
              v19 = xmmword_1003E36F0;
              v18.i64[0] = 0xFF000000FFLL;
              v18.i64[1] = 0xFF000000FFLL;
              v17 = 0uLL;
              v16.i64[0] = 0x20000000200000;
              v16.i64[1] = 0x20000000200000;
              LODWORD(v5) = v2[15].i32[2];
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

          if (v21 == v5)
          {
            v23 = v24;
          }

          v92[v20] = v2[1].i64[1] + *v2[5].i64[0] * v27;
          __b[v20++] = v27;
        }

        while (v20 < v5);
        v28 = v2[15].u32[0];
        if (v5 <= v23)
        {
          v15 = v79;
          v14 = v80;
          if (v28 < 1)
          {
            goto LABEL_13;
          }

          goto LABEL_43;
        }

        result = sub_100340E4C(&v82, &v92[v23], &v84 + 8 * v23, v5 - v23, v2[12].i64[1], v2[13].i64[1], v2[14].u32[2], v28, ((v3 >> 3) & 0x1FF) + 1, v2[15].i32[3], v2[16].i32[0]);
        v19 = xmmword_1003E36F0;
        v18.i64[0] = 0xFF000000FFLL;
        v18.i64[1] = 0xFF000000FFLL;
        v17 = 0uLL;
        v16.i64[0] = 0x20000000200000;
        v16.i64[1] = 0x20000000200000;
        v15 = v79;
        v14 = v80;
      }

      v28 = v2[15].u32[0];
      if (v28 < 1)
      {
        goto LABEL_13;
      }

LABEL_43:
      v29 = v2[7].i64[1];
      v30 = v2[11].i64[1];
      v31 = vmovl_s16(*v15);
      v32 = v84;
      v33 = v85;
      if (v28 < 4)
      {
        v34 = 0;
LABEL_45:
        v35 = v28 - v34;
        v36 = (v29 + v34 + v30 * v14);
        v37 = 4 * v34;
        v38 = (*(&v33 + 1) + v37);
        v39 = (v33 + v37);
        v40 = (*(&v32 + 1) + v37);
        v41 = (v32 + v37);
        do
        {
          v42 = *v41++;
          v43.i32[0] = v42;
          v43.i32[1] = *v40++;
          v43.i32[2] = *v39++;
          v43.i32[3] = *v38++;
          v43.i32[0] = vaddvq_s32(vmulq_s32(v43, v31));
          v44 = ((v43.i32[0] + 0x200000) >> 22) & ~((v43.i32[0] + 0x200000) >> 31);
          if (v44 >= 255)
          {
            LOBYTE(v44) = -1;
          }

          *v36++ = v44;
          --v35;
        }

        while (v35);
        goto LABEL_13;
      }

      v34 = 0;
      v45 = (v29 + v30 * v14);
      v46 = v45->u64 + v28;
      v48 = v45 < *(&v84 + 1) + 4 * v28 && *(&v84 + 1) < v46;
      result = (v45 < v85 + 4 * v28 && v85 < v46);
      v51 = v45 < *(&v85 + 1) + 4 * v28 && *(&v85 + 1) < v46;
      v52 = v84 >= v46 || v45 >= v84 + 4 * v28;
      if (!v52 || v48 || (result & 1) != 0 || v51)
      {
        goto LABEL_45;
      }

      v53 = vdupq_lane_s32(*v31.i8, 0);
      v54 = vdupq_lane_s32(*v31.i8, 1);
      v55 = vdupq_laneq_s32(v31, 2);
      v56 = vdupq_laneq_s32(v31, 3);
      if (v28 >= 0x10)
      {
        v34 = v28 & 0x7FFFFFF0;
        v57 = v34;
        result = *(&v85 + 1);
        v58 = v85;
        v59 = *(&v84 + 1);
        v60 = v84;
        do
        {
          v62 = v58[2];
          v61 = v58[3];
          v63 = *v58;
          v64 = v58[1];
          v58 += 4;
          v93.val[1] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v59[1], v54), v60[1], v53), v64, v55), result[1], v56), v16), 0x16uLL), v17), v18);
          v93.val[0] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(*v59, v54), *v60, v53), v63, v55), *result, v56), v16), 0x16uLL), v17), v18);
          v93.val[2] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v59[2], v54), v60[2], v53), v62, v55), result[2], v56), v16), 0x16uLL), v17), v18);
          v93.val[3] = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v59[3], v54), v60[3], v53), v61, v55), result[3], v56), v16), 0x16uLL), v17), v18);
          *v45++ = vqtbl4q_s8(v93, v19);
          v60 += 4;
          v59 += 4;
          result += 4;
          v57 -= 16;
        }

        while (v57);
        if (v34 == v28)
        {
          goto LABEL_13;
        }

        if ((v28 & 0xC) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v34 = 0;
      }

      v65 = v34;
      v34 = v28 & 0x7FFFFFFC;
      v66 = (v32 + 4 * v65);
      v67 = (*(&v32 + 1) + 4 * v65);
      result = (v33 + 4 * v65);
      v68 = (*(&v33 + 1) + 4 * v65);
      v69 = (v29 + v65 + v30 * v14);
      v70 = v65 - v34;
      do
      {
        v71 = *v66++;
        v72 = v71;
        v73 = *v67++;
        v74 = vmulq_s32(v73, v54);
        v75 = *result++;
        v76 = v75;
        v77 = *v68++;
        *v69++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v74, v72, v53), v76, v55), v77, v56), v16), 0x16uLL), v17), v18)), *v31.i8).u32[0];
        v70 += 4;
      }

      while (v70);
      if (v34 != v28)
      {
        goto LABEL_45;
      }

LABEL_13:
      ++v14;
      v5 = v2[15].i32[2];
      v15 = (v15 + 2 * v5);
    }

    while (v14 < a2[1]);
  }

  return result;
}

uint64_t sub_100340E4C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 *a6, unsigned int a7, int a8, signed int a9, int a10, int a11)
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
    result = a9;
    do
    {
      LODWORD(v16) = 0;
      v17 = *(a2 + 8 * v11);
      v18 = *(a3 + 8 * v11);
      v19 = a10;
      while (1)
      {
        if (v16 < v19)
        {
          v16 = v16;
          do
          {
            v20 = *(a5 + 4 * v16);
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

            v25 = *(a5 + 4 * v16);
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

            *(v18 + 4 * v16++) = *a6 * *(v17 + v22) + a6[1] * *(v17 + v25) + a6[2] * *(v17 + v27) + a6[3] * *(v17 + v28);
            a6 += 4;
          }

          while (v16 != v19);
          LODWORD(v16) = v19;
        }

        if (v19 == a8)
        {
          break;
        }

        v19 = a8;
        if (v16 < a11)
        {
          v29 = v16;
          v30 = 4 * v16;
          v31 = (a5 + v30);
          v32 = (v18 + v30);
          v33 = a11 - v29;
          do
          {
            v34 = *v31++;
            *v32++ = *a6 * *(v17 + v34 - a9) + a6[1] * *(v17 + v34) + a6[2] * *(v17 + v34 + a9) + a6[3] * *(v17 + v34 + v12);
            a6 += 4;
            --v33;
          }

          while (v33);
          LODWORD(v16) = a11;
          v19 = a8;
        }
      }

      a6 -= 4 * a8;
      ++v11;
    }

    while (v11 != v14);
  }

  return result;
}

uint64_t sub_1003410C4(uint64_t a1)
{
  *a1 = off_10047A538;
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

uint64_t sub_100341200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, int a10, int a11, int a12)
{
  *a1 = off_10047A578;
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

void sub_100341410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v11);
  sub_100006D14(v10);
  nullsub_1(v9);
  _Unwind_Resume(a1);
}

void sub_100341464(uint64_t a1)
{
  sub_100341DFC(a1);

  operator delete();
}

void sub_10034149C(uint64_t a1, int *a2, double a3, double a4, double a5, double a6, double a7, double a8, __n128 a9, __n128 a10)
{
  v11 = *(a1 + 8);
  v12 = (*(a1 + 240) + 15) & 0xFFFFFFF0;
  LODWORD(v13) = *(a1 + 248);
  if ((v13 * v12) >= 0x109)
  {
    operator new[]();
  }

  v14 = 0.0;
  memset(v42, 0, 128);
  memset(v41, 0, sizeof(v41));
  if (v13 >= 1)
  {
    memset(__b, 255, 4 * v13);
    v15 = 4 * v12;
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
        v20 = (v20 + v15);
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
      *v17 = (v19 + v15);
      v19 = (v19 + 8 * v12);
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
    v24 = (*(a1 + 224) + 4 * v23 * v13);
    v34 = ((v11 >> 3) & 0x1FF) + 1;
    do
    {
      if (v13 >= 1)
      {
        v36 = v24;
        v25 = 0;
        LODWORD(v26) = 0;
        v27 = (*(*(a1 + 208) + 4 * v23) - (v13 >> 1) + 1);
        v28 = v13;
        do
        {
          v30 = *(a1 + 236);
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
              LODWORD(v13) = *(a1 + 248);
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

          v42[v25] = *(a1 + 24) + **(a1 + 80) * v32;
          __b[v25++] = v32;
        }

        while (v25 < v13);
        v33 = *(a1 + 240);
        if (v13 <= v28)
        {
          v24 = v36;
          goto LABEL_41;
        }

        sub_100341848(v14, *&a4, *&a5, &v39, &v42[v28], &v41[v28], v13 - v28, *(a1 + 200), *(a1 + 216), *(a1 + 232), v33, v34, *(a1 + 252), *(a1 + 256));
        v24 = v36;
      }

      v33 = *(a1 + 240);
LABEL_41:
      sub_100341AC4(v14, a4, a5, a6, a7, a8, a9, a10, &v38, v41, (*(a1 + 120) + *(a1 + 184) * v23++), v24, v33);
      v13 = *(a1 + 248);
      v24 += v13;
    }

    while (v23 < a2[1]);
  }
}

void sub_10034180C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16 != a11 && a16 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_100341848(double a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, float *a9, unsigned int a10, int a11, unsigned int a12, int a13, int a14)
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
            v26 = *(a8 + 4 * v18);
            v27 = v26 - a12;
            v28 = v26 - a12;
            if (v26 - a12 >= a10)
            {
              v29 = (v27 & ~(v27 >> 31)) + a12 - v26;
              v30 = (v29 - (v29 != 0)) / v16;
              if ((v27 & ~(v27 >> 31)) + a12 - v26)
              {
                ++v30;
              }

              v28 = v26 + v30 * a12;
              do
              {
                v28 -= a12;
              }

              while (v28 >= a10);
            }

            v31 = *(a8 + 4 * v18);
            if (v26 >= a10)
            {
              v31 = v26 + a12 + a12 * ((v26 >> 31) + ((v26 & ~(v26 >> 31)) - (v26 + (v26 >> 31))) / v16);
              do
              {
                v31 -= a12;
              }

              while (v31 >= a10);
            }

            v32 = v26 + a12;
            v33 = v15 + v27;
            if (v15 + v27 >= a10)
            {
              v33 = v26 + a12 * ((v32 >> 31) + ((v32 & ~(v32 >> 31)) - (v32 + (v32 >> 31))) / v16 + 2);
              do
              {
                v33 -= a12;
              }

              while (v33 >= a10);
            }

            v34 = 3 * a12 + v27;
            if (v34 >= a10)
            {
              v34 = v26 + a12 * ((((v32 + a12) & ~((v32 + a12) >> 31)) - (v32 + a12 + ((v32 + a12) >> 31))) / v16 + ((v32 + a12) >> 31) + 3);
              do
              {
                v34 -= a12;
              }

              while (v34 >= a10);
            }

            LOWORD(a2) = *(v19 + 2 * v28);
            LOWORD(a3) = *(v19 + 2 * v31);
            *&v22 = LODWORD(a3);
            v23 = ((LODWORD(a2) * *a9) + 0.0) + (*&v22 * a9[1]);
            LOWORD(v22) = *(v19 + 2 * v33);
            *&v24 = v22;
            v25 = v23 + (*&v24 * a9[2]);
            LOWORD(v24) = *(v19 + 2 * v34);
            a3 = v24;
            a2 = v25 + (a3 * a9[3]);
            *(v20 + 4 * v18++) = a2;
            a9 += 4;
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
          v35 = v18;
          v36 = 4 * v18;
          v37 = (a8 + v36);
          v38 = (v20 + v36);
          v39 = a14 - v35;
          do
          {
            v40 = *v37++;
            LOWORD(a2) = *(v19 + 2 * (v40 - a12));
            LOWORD(a3) = *(v19 + 2 * v40);
            *&v41 = a9[1] * LODWORD(a3);
            v42 = *&v41 + (LODWORD(a2) * *a9);
            LOWORD(v41) = *(v19 + 2 * (v40 + a12));
            *&v43 = v41;
            v44 = v42 + (*&v43 * a9[2]);
            LOWORD(v43) = *(v19 + 2 * (v40 + v15));
            a3 = v43;
            a2 = v44 + (a3 * a9[3]);
            *v38++ = a2;
            a9 += 4;
            --v39;
          }

          while (v39);
          LODWORD(v18) = a14;
          v21 = a11;
        }
      }

      a9 -= 4 * a11;
      ++v14;
    }

    while (v14 != v17);
  }
}

void sub_100341AC4(double a1, double a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8, uint64_t a9, float32x4_t **a10, uint16x8_t *a11, unsigned __int32 *a12, uint64_t a13)
{
  a7.n128_u32[0] = *a12;
  a8.n128_u32[0] = a12[1];
  LODWORD(v13) = a12[2];
  LODWORD(v14) = a12[3];
  v16 = *a10;
  v15 = a10[1];
  v18 = a10[2];
  v17 = a10[3];
  v19 = vdupq_lane_s32(*&v13, 0);
  v20 = vdupq_lane_s32(*&v14, 0);
  v21 = 0;
  v22 = a13 - 8;
  if (a13 >= 8)
  {
    v58 = vdupq_lane_s32(a8.n128_u64[0], 0);
    v59 = v17 + 1;
    v60 = v18 + 1;
    v61 = v15 + 1;
    v62 = v16 + 1;
    v63 = &off_1004B0000;
    v64 = a11;
    do
    {
      v65 = v62[-1];
      v66 = *v62;
      v68 = v61[-1];
      v67 = *v61;
      v70 = v60[-1];
      v69 = *v60;
      v72 = v59[-1];
      v71 = *v59;
      if (atomic_load_explicit(qword_1004B0060, memory_order_acquire))
      {
        v73 = v63[5];
        if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v127 = v17;
        v129 = a11;
        v109 = v18;
        v111 = a13;
        v123 = v21;
        v125 = v15;
        v107 = v16;
        v105 = v22;
        v119 = v60;
        v121 = v59;
        v115 = v62;
        v117 = v61;
        v113 = v64;
        v101 = a8;
        v103 = a7;
        v99 = v13;
        v95 = v19;
        v97 = v14;
        v91 = v58;
        v93 = v20;
        v87 = v66;
        v89 = v65;
        v83 = v69;
        v85 = v67;
        v79 = v68;
        v81 = v71;
        v75 = v72;
        v77 = v70;
        sub_1003C836C();
        v72 = v75;
        v70 = v77;
        v68 = v79;
        v71 = v81;
        v69 = v83;
        v67 = v85;
        v66 = v87;
        v65 = v89;
        v58 = v91;
        v20 = v93;
        v19 = v95;
        v14 = v97;
        v13 = v99;
        a8 = v101;
        a7 = v103;
        v64 = v113;
        v62 = v115;
        v63 = &off_1004B0000;
        v61 = v117;
        v60 = v119;
        v59 = v121;
        v21 = v123;
        v22 = v105;
        v16 = v107;
        v18 = v109;
        v15 = v125;
        v17 = v127;
        a13 = v111;
        a11 = v129;
        v73 = xmmword_1004B0050;
        if ((atomic_load_explicit(qword_1004B0060, memory_order_acquire) & 1) == 0)
        {
LABEL_18:
          v128 = v17;
          v130 = a11;
          v110 = v18;
          v112 = a13;
          v124 = v21;
          v126 = v15;
          v108 = v16;
          v106 = v22;
          v120 = v60;
          v122 = v59;
          v116 = v62;
          v118 = v61;
          v114 = v64;
          v102 = a8;
          v104 = a7;
          v100 = v13;
          v96 = v19;
          v98 = v14;
          v92 = v58;
          v94 = v20;
          v88 = v66;
          v90 = v65;
          v84 = v69;
          v86 = v67;
          v80 = v68;
          v82 = v71;
          v76 = v72;
          v78 = v70;
          v74 = v73;
          sub_1003C836C();
          v73 = v74;
          v72 = v76;
          v70 = v78;
          v68 = v80;
          v71 = v82;
          v69 = v84;
          v67 = v86;
          v66 = v88;
          v65 = v90;
          v58 = v92;
          v20 = v94;
          v19 = v96;
          v14 = v98;
          v13 = v100;
          a8 = v102;
          a7 = v104;
          v64 = v114;
          v62 = v116;
          v63 = &off_1004B0000;
          v61 = v118;
          v60 = v120;
          v59 = v122;
          v21 = v124;
          v22 = v106;
          v16 = v108;
          v18 = v110;
          v15 = v126;
          v17 = v128;
          a13 = v112;
          a11 = v130;
        }
      }

      *v64++ = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v65, a7.n128_f32[0]), v68, v58), v70, v19), v72, v20), v73))), vcvtq_u32_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v66, a7.n128_f32[0]), v67, v58), v69, v19), v71, v20), v63[5])));
      v21 += 8;
      v59 += 2;
      v60 += 2;
      v61 += 2;
      v62 += 2;
    }

    while (v22 >= v21);
  }

  if (v21 < a13)
  {
    v23 = v21;
    v24 = a13;
    v25 = a13 - v23;
    v26 = v23;
    if (v25 < 4)
    {
      goto LABEL_7;
    }

    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + v23;
    v27 = vdupq_lane_s32(a7.n128_u64[0], 0);
    v28 = (v16 + 4 * v23);
    v29 = (v15 + 4 * v23);
    v30 = (v18 + 4 * v23);
    v31 = (v17 + 4 * v23);
    v32.i64[0] = 0xFFFF0000FFFFLL;
    v32.i64[1] = 0xFFFF0000FFFFLL;
    v33 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = (a11 + 2 * v23);
    do
    {
      v35 = *v28++;
      v36 = v35;
      v37 = *v29++;
      v38 = vmulq_n_f32(v37, a8.n128_f32[0]);
      v39 = *v30++;
      v40 = vmlaq_f32(vmlaq_f32(v38, v27, v36), v19, v39);
      v41 = *v31++;
      v42 = vmlaq_f32(v40, v20, v41);
      *v34++ = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v32));
      v33 -= 4;
    }

    while (v33);
    if (v25 != (v25 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_7:
      v43 = &v16->f32[v26];
      v44 = &v15->f32[v26];
      v45 = &v18->f32[v26];
      v46 = &v17->f32[v26];
      v47 = v24 - v26;
      v48 = &a11->i16[v26];
      do
      {
        v49 = *v44++;
        v50 = v49;
        v51 = *v43++;
        v52 = (a8.n128_f32[0] * v50) + (v51 * a7.n128_f32[0]);
        v53 = *v45++;
        v54 = v52 + (v53 * *&v13);
        v55 = *v46++;
        v56 = rintf(v54 + (v55 * *&v14));
        v57 = v56 & ~(v56 >> 31);
        if (v57 >= 0xFFFF)
        {
          LOWORD(v57) = -1;
        }

        *v48++ = v57;
        --v47;
      }

      while (v47);
    }
  }
}