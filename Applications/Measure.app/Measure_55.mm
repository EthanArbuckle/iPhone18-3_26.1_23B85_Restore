uint64_t sub_10036AE60(void *a1)
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

uint64_t sub_10036AEE4(void *a1)
{
  *a1 = off_10047B338;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036AF48(void *a1)
{
  *a1 = off_10047B338;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036AFBC(uint64_t a1, double **a2, int16x8_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v175 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 3;
  if (v14 != a6)
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = &v12[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 24);
  if (!v15)
  {
LABEL_11:
    bzero(v12, 8 * a6);
    v16 = *(a1 + 8);
    v18 = v16 - 1;
    v19 = *(a1 + 24);
    if (v19 >= v16 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v10 += (v16 - v19 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v18;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v20 = *v12;
      v21 = ~v19 + v16;
      do
      {
        v22 = *v10;
        v20 = **v10 + v20;
        *v12 = v20;
        if (a6 != 1)
        {
          v12[1] = v22[1] + v12[1];
          if (a6 != 2)
          {
            v12[2] = v22[2] + v12[2];
          }
        }

        ++v10;
        --v21;
      }

      while (v21);
      goto LABEL_20;
    }

    v163 = a6;
    while (1)
    {
      v164 = *v10;
      if (v12 >= &(*v10)[v163] || v164 >= &v12[v163])
      {
        v166 = v164 + 1;
        v167 = a6 & 0x7FFFFFFC;
        v168 = (v12 + 2);
        do
        {
          v169 = vaddq_f64(*v166, *v168);
          v168[-1] = vaddq_f64(v166[-1], v168[-1]);
          *v168 = v169;
          v166 += 2;
          v168 += 2;
          v167 -= 4;
        }

        while (v167);
        v170 = a6 & 0x7FFFFFFC;
        if (v170 == a6)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v170 = 0;
      }

      v171 = &v164->f64[v170];
      v172 = &v12[v170];
      v173 = a6 - v170;
      do
      {
        v174 = *v171++;
        *v172 = v174 + *v172;
        ++v172;
        --v173;
      }

      while (v173);
LABEL_133:
      ++v19;
      ++v10;
      if (v19 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  v16 = *(a1 + 8);
  if (v15 != v16 - 1)
  {
    v176[0] = 0;
    v176[1] = 0;
    v17 = sub_1002A80E0(v176, 19);
    *(v17 + 15) = 825058682;
    *v17 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v176, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v10 = &a2[v16 - 1];
LABEL_21:
  if (a5)
  {
    v23 = a5 - 1;
    v24 = 1 - v16;
    v25 = a4;
    v26 = a6 - 2;
    v27 = a6;
    v28 = &v12[v27];
    if (v26 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = a6 - 2;
    }

    v30 = ((8 * v29) & 0x3FFFFFFF0) + 16;
    v31 = (v12 + v30);
    v32 = (v29 >> 1) + 1;
    v33 = v32 & 0x7FFFFFF8;
    if (v175 != 1.0)
    {
      v34.i64[0] = 0xFFFF0000FFFFLL;
      v34.i64[1] = 0xFFFF0000FFFFLL;
      while (1)
      {
        v35 = v23;
        v36 = *v10;
        v37 = v10[v24];
        if (a6 < 2)
        {
          v38 = 0;
          if (a6 <= 0)
          {
            goto LABEL_27;
          }

          goto LABEL_41;
        }

        if (v26 >= 0xE)
        {
          v39 = 0;
          v59 = v12 < (v37 + v30) && v37 < v31;
          if (v36 >= v31 || v12 >= (v36 + v30))
          {
            v40 = v175;
            if (!v59)
            {
              v61 = v32 & 0x7FFFFFF8;
              v62 = v10[v24];
              v63 = *v10;
              v64 = v12;
              v65 = a3;
              do
              {
                v66 = vaddq_f64(v64[6], v63[6]);
                v67 = vaddq_f64(v64[7], v63[7]);
                v68 = vaddq_f64(v64[4], v63[4]);
                v69 = vaddq_f64(v64[5], v63[5]);
                v70 = vaddq_f64(v64[2], v63[2]);
                v71 = vaddq_f64(v64[3], v63[3]);
                v72 = vaddq_f64(v64[1], v63[1]);
                v73 = vaddq_f64(*v64, *v63);
                *v65 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v73, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v72, v175)))), 0), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v70, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v71, v175)))), 0), v34));
                v65[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v68, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v69, v175)))), 0), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v66, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v67, v175)))), 0), v34));
                v65 += 2;
                v74 = v62[2];
                v75 = vsubq_f64(v71, v62[3]);
                v76 = vsubq_f64(v73, *v62);
                v77 = vsubq_f64(v72, v62[1]);
                v78 = vsubq_f64(v68, v62[4]);
                v79 = vsubq_f64(v69, v62[5]);
                v80 = vsubq_f64(v67, v62[7]);
                v64[6] = vsubq_f64(v66, v62[6]);
                v64[7] = v80;
                v64[4] = v78;
                v64[5] = v79;
                *v64 = v76;
                v64[1] = v77;
                v64[2] = vsubq_f64(v70, v74);
                v64[3] = v75;
                v64 += 8;
                v63 += 8;
                v62 += 8;
                v61 -= 8;
              }

              while (v61);
              v39 = 2 * (v32 & 0x7FFFFFF8);
              if (v32 == v33)
              {
                goto LABEL_40;
              }
            }

            goto LABEL_34;
          }
        }

        else
        {
          v39 = 0;
        }

        v40 = v175;
LABEL_34:
        v41 = &v12[v39];
        v42 = &v36[v39];
        v43 = &a3->i16[v39];
        v44 = &v37[v39];
        do
        {
          v45 = *v42++;
          v46 = vaddq_f64(*v41, v45);
          v47 = rint(v40 * v46.f64[0]);
          v48 = v47 & ~(v47 >> 31);
          if (v48 >= 0xFFFF)
          {
            LOWORD(v48) = -1;
          }

          *v43 = v48;
          v49 = rint(vmuld_lane_f64(v40, v46, 1));
          v50 = v49 & ~(v49 >> 31);
          if (v50 >= 0xFFFF)
          {
            LOWORD(v50) = -1;
          }

          v43[1] = v50;
          v51 = *v44++;
          *v41++ = vsubq_f64(v46, v51);
          v39 += 2;
          v43 += 2;
        }

        while (v39 <= v26);
LABEL_40:
        v38 = v39;
        if (v39 >= a6)
        {
          goto LABEL_27;
        }

LABEL_41:
        v52 = a6 - v38;
        if (v52 <= 7 || ((v81 = v38, v82 = &v12[v38], v82 < &v37[v27]) ? (v83 = &v37[v38] >= v28) : (v83 = 1), v83 ? (v84 = 0) : (v84 = 1), &v36[v38] < v28 ? (v85 = v82 >= &v36[v27]) : (v85 = 1), !v85 || (v84 & 1) != 0))
        {
          v53 = v38;
          v54 = v175;
          do
          {
LABEL_43:
            v55 = v12[v53] + v36[v53];
            v56 = rint(v54 * v55);
            v57 = v56 & ~(v56 >> 31);
            if (v57 >= 0xFFFF)
            {
              LOWORD(v57) = -1;
            }

            a3->i16[v53] = v57;
            v12[v53] = v55 - v37[v53];
            ++v53;
          }

          while (a6 != v53);
          goto LABEL_27;
        }

        v53 = (v52 & 0xFFFFFFFFFFFFFFF8) + v38;
        v86 = &v12[v81];
        v87 = &v36[v81];
        v88 = 2 * v38;
        v89 = &v37[v81];
        v90 = v52 & 0xFFFFFFFFFFFFFFF8;
        v54 = v175;
        do
        {
          v91 = vaddq_f64(v86[2], v87[2]);
          v92 = vaddq_f64(v86[3], v87[3]);
          v93 = vaddq_f64(v86[1], v87[1]);
          v94 = vaddq_f64(*v86, *v87);
          *(a3 + v88) = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v94, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v93, v175)))), 0), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v91, v175))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v92, v175)))), 0), v34));
          v95 = v89[2];
          v96 = v89[3];
          v97 = *v89;
          v98 = v89[1];
          v89 += 4;
          v86[2] = vsubq_f64(v91, v95);
          v86[3] = vsubq_f64(v92, v96);
          *v86 = vsubq_f64(v94, v97);
          v86[1] = vsubq_f64(v93, v98);
          v86 += 4;
          v87 += 4;
          v88 += 16;
          v90 -= 8;
        }

        while (v90);
        if (v52 != (v52 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }

LABEL_27:
        a3 = (a3 + v25);
        ++v10;
        v23 = v35 - 1;
        if (!v35)
        {
          return;
        }
      }
    }

    v99 = &a3->i8[2];
    v100.i64[0] = 0xFFFF0000FFFFLL;
    v100.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v101 = v23;
      v102 = *v10;
      v103 = v10[v24];
      if (a6 < 2)
      {
        v104 = 0;
        if (a6 <= 0)
        {
          goto LABEL_80;
        }

        goto LABEL_93;
      }

      if (v26 > 0xD)
      {
        v105 = 0;
        v123 = v12 < (v103 + v30) && v103 < v31;
        if ((v102 >= v31 || v12 >= (v102 + v30)) && !v123)
        {
          v125 = v32 & 0x7FFFFFF8;
          v126 = v10[v24];
          v127 = *v10;
          v128 = v12;
          v129 = a3;
          do
          {
            v130 = vaddq_f64(v128[6], v127[6]);
            v131 = vaddq_f64(v128[7], v127[7]);
            v132 = vaddq_f64(v128[4], v127[4]);
            v133 = vaddq_f64(v128[5], v127[5]);
            v134 = vaddq_f64(v128[2], v127[2]);
            v135 = vaddq_f64(v128[3], v127[3]);
            v136 = vaddq_f64(*v128, *v127);
            v137 = vaddq_f64(v128[1], v127[1]);
            *v129 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v136)), vcvtq_s64_f64(vrndxq_f64(v137))), 0), v100), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v134)), vcvtq_s64_f64(vrndxq_f64(v135))), 0), v100));
            v129[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v132)), vcvtq_s64_f64(vrndxq_f64(v133))), 0), v100), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v130)), vcvtq_s64_f64(vrndxq_f64(v131))), 0), v100));
            v129 += 2;
            v138 = v126[2];
            v139 = vsubq_f64(v135, v126[3]);
            v140 = vsubq_f64(v136, *v126);
            v141 = vsubq_f64(v137, v126[1]);
            v142 = vsubq_f64(v132, v126[4]);
            v143 = vsubq_f64(v133, v126[5]);
            v144 = vsubq_f64(v131, v126[7]);
            v128[6] = vsubq_f64(v130, v126[6]);
            v128[7] = v144;
            v128[4] = v142;
            v128[5] = v143;
            *v128 = v140;
            v128[1] = v141;
            v128[2] = vsubq_f64(v134, v138);
            v128[3] = v139;
            v128 += 8;
            v127 += 8;
            v126 += 8;
            v125 -= 8;
          }

          while (v125);
          v105 = 2 * (v32 & 0x7FFFFFF8);
          if (v32 == v33)
          {
            goto LABEL_92;
          }
        }
      }

      else
      {
        v105 = 0;
      }

      v106 = &v103[v105];
      v107 = &v102[v105];
      v108 = &v12[v105];
      v109 = &v99[2 * v105];
      do
      {
        v110 = *v107++;
        v111 = vaddq_f64(*v108, v110);
        v112 = rint(v111.f64[0]);
        v113 = v112 & ~(v112 >> 31);
        if (v113 >= 0xFFFF)
        {
          LOWORD(v113) = -1;
        }

        *(v109 - 1) = v113;
        v114 = rint(v111.f64[1]);
        v115 = v114 & ~(v114 >> 31);
        if (v115 >= 0xFFFF)
        {
          LOWORD(v115) = -1;
        }

        *v109 = v115;
        v109 += 4;
        v116 = *v106++;
        *v108++ = vsubq_f64(v111, v116);
        v105 += 2;
      }

      while (v105 <= v26);
LABEL_92:
      v104 = v105;
      if (v105 >= a6)
      {
        goto LABEL_80;
      }

LABEL_93:
      v117 = a6 - v104;
      if (v117 <= 7 || ((v145 = v104, v146 = &v12[v104], v146 < &v103[v27]) ? (v147 = &v103[v104] >= v28) : (v147 = 1), v147 ? (v148 = 0) : (v148 = 1), &v102[v104] < v28 ? (v149 = v146 >= &v102[v27]) : (v149 = 1), !v149 || (v148 & 1) != 0))
      {
        v118 = v104;
        do
        {
LABEL_95:
          v119 = v12[v118] + v102[v118];
          v120 = rint(v119);
          v121 = v120 & ~(v120 >> 31);
          if (v121 >= 0xFFFF)
          {
            LOWORD(v121) = -1;
          }

          a3->i16[v118] = v121;
          v12[v118] = v119 - v103[v118];
          ++v118;
        }

        while (a6 != v118);
        goto LABEL_80;
      }

      v118 = (v117 & 0xFFFFFFFFFFFFFFF8) + v104;
      v150 = &v12[v145];
      v151 = &v102[v145];
      v152 = 2 * v104;
      v153 = &v103[v145];
      v154 = v117 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v155 = vaddq_f64(v150[2], v151[2]);
        v156 = vaddq_f64(v150[3], v151[3]);
        v157 = vaddq_f64(*v150, *v151);
        v158 = vaddq_f64(v150[1], v151[1]);
        *(a3 + v152) = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v157)), vcvtq_s64_f64(vrndxq_f64(v158))), 0), v100), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v155)), vcvtq_s64_f64(vrndxq_f64(v156))), 0), v100));
        v159 = v153[2];
        v160 = v153[3];
        v161 = *v153;
        v162 = v153[1];
        v153 += 4;
        v150[2] = vsubq_f64(v155, v159);
        v150[3] = vsubq_f64(v156, v160);
        *v150 = vsubq_f64(v157, v161);
        v150[1] = vsubq_f64(v158, v162);
        v150 += 4;
        v151 += 4;
        v152 += 16;
        v154 -= 8;
      }

      while (v154);
      if (v117 != (v117 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_95;
      }

LABEL_80:
      a3 = (a3 + v25);
      ++v10;
      v23 = v101 - 1;
      v99 += v25;
    }

    while (v101);
  }
}

void sub_10036B9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036B9E4(void *a1)
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

uint64_t sub_10036BA68(void *a1)
{
  *a1 = off_10047B3C0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036BACC(void *a1)
{
  *a1 = off_10047B3C0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036BB40(uint64_t a1, void *a2, int16x8_t *a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, __n128 a14)
{
  v14 = a6;
  v19 = a1;
  v21 = (a1 + 32);
  v20 = *(a1 + 32);
  v183 = *(a1 + 16);
  v22 = (*(a1 + 40) - v20) >> 2;
  if (v22 == a6)
  {
    v23 = *(a1 + 24);
    if (v23)
    {
      v24 = *(a1 + 8);
      if (v23 != v24 - 1)
      {
        v188[0] = 0;
        v188[1] = 0;
        v25 = sub_1002A80E0(v188, 19);
        *(v25 + 15) = 825058682;
        *v25 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v188, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 614);
      }

      v26 = &a2[v24 - 1];
      goto LABEL_16;
    }

    v26 = a2;
  }

  else
  {
    if (a6 <= v22)
    {
      if (a6 < v22)
      {
        *(a1 + 40) = v20 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v22);
      v20 = *v21;
    }

    v26 = a2;
    *(v19 + 24) = 0;
  }

  bzero(v20, 4 * v14);
  v27 = *(v19 + 24);
  v28 = *(v19 + 8);
  if (v27 < v28 - 1)
  {
    v29 = (v14 - 4);
    if (v14 >= 4)
    {
      if (((v29 & 0x7FFFFFFC) + 5) <= v14)
      {
        v122 = v14;
      }

      else
      {
        v122 = (v29 & 0x7FFFFFFC) + 5;
      }

      v123 = 4 * v122 - ((4 * (v14 - 4)) & 0x1FFFFFFF0);
      v124 = v122 - (v29 & 0x7FFFFFFC) - 4;
      v125 = v124 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v127 = 0;
        v128 = 0;
        v129 = *v26;
        v130 = *v26 + 32;
        v131 = v20 + 2;
        v132 = 4;
        do
        {
          v133 = v132;
          v134 = v127;
          v135 = v130;
          v136 = v131;
          v20[v128 / 4] = vaddq_s32(*&v129[v128], v20[v128 / 4]);
          v128 += 4;
          v132 += 4;
          ++v127;
          v130 += 16;
          ++v131;
        }

        while (v128 <= v29);
        if (v128 < v14)
        {
          if (v124 <= 7)
          {
            goto LABEL_115;
          }

          v137 = 16 * v134;
          v138 = v137 + 16;
          v139 = &v20[v137 / 0x10 + 1];
          v140 = v123 + v137;
          if (v139 < (v129 + v140) && v129 + v138 < v20->i32 + v140)
          {
            goto LABEL_115;
          }

          v133 += v125;
          v141 = v124 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v142 = vaddq_s32(*v136, *v135);
            v136[-1] = vaddq_s32(v136[-1], v135[-1]);
            *v136 = v142;
            v135 += 2;
            v136 += 2;
            v141 -= 8;
          }

          while (v141);
          if (v124 != v125)
          {
LABEL_115:
            do
            {
              v20->i32[v133] += v129[v133];
              ++v133;
            }

            while (v133 < v14);
          }
        }

        v126 = *(v19 + 24) + 1;
        *(v19 + 24) = v126;
        ++v26;
      }

      while (v126 < *(v19 + 8) - 1);
    }

    else if (v14 >= 1)
    {
      do
      {
        v86 = *v26;
        v20->i32[0] += **v26;
        if (v14 != 1)
        {
          v20->i32[1] += v86[1];
          if (v14 != 2)
          {
            v20->i32[2] += v86[2];
          }
        }

        v85 = *(v19 + 24) + 1;
        *(v19 + 24) = v85;
        ++v26;
      }

      while (v85 < *(v19 + 8) - 1);
    }

    else
    {
      v26 += (v28 - v27 - 2) + 1;
      *(v19 + 24) = v28 - 1;
    }
  }

LABEL_16:
  if (a5)
  {
    v30 = a5 - 1;
    v31 = (v14 - 8);
    a14.n128_f32[0] = v183;
    v32 = a4;
    if (v183 != 1.0)
    {
      v33 = &v20->i32[1];
      v34 = v20 + 1;
      v35 = &off_1004B0000;
      v184 = v19;
      v185 = v14;
      while (1)
      {
        v186 = v26;
        v187 = a3;
        v36 = v30;
        v37 = *v26;
        v38 = v26[1 - *(v19 + 8)];
        if (v14 >= 8)
        {
          break;
        }

        v39 = 0;
LABEL_22:
        v14 = v185;
        if (v39 >= v185)
        {
          goto LABEL_19;
        }

        v40 = ~v39 + v185;
        if (v40 <= 6)
        {
          v41 = v39;
          v42 = v183;
          goto LABEL_53;
        }

        v58 = v36;
        v59 = 4 * v39;
        v60 = 4 * (v39 + v40);
        v61 = &v33[v60 / 4];
        v62 = v37->u64 + v60 + 4;
        v64 = &v20->i8[v59] < v38->i64 + v60 + 4 && &v38[v39 / 4] < v61;
        v65 = &v37[v39 / 4] >= v61 || v20->u64 + v59 >= v62;
        if (!v65 || v64)
        {
          v41 = v39;
          v42 = v183;
          v36 = v58;
          do
          {
LABEL_53:
            v83 = v37->i32[v41] + v20->i32[v41];
            v84 = rint(v42 * v83);
            if (v84 <= -32768)
            {
              LODWORD(v84) = -32768;
            }

            if (v84 >= 0x7FFF)
            {
              LOWORD(v84) = 0x7FFF;
            }

            v187->i16[v41] = v84;
            v20->i32[v41] = v83 - v38->i32[v41];
            ++v41;
          }

          while (v41 < v185);
          goto LABEL_19;
        }

        v66 = v40 + 1;
        v67 = (v40 + 1) & 0x1FFFFFFF8;
        v41 = v67 + v39;
        v68 = (v20 + v59);
        v69 = (v37 + v59);
        v70 = 2 * v39;
        v71 = (v38 + v59);
        v72 = v67;
        v42 = v183;
        do
        {
          v73 = *v69;
          v74 = v69[1];
          v69 += 2;
          v75 = vaddq_s32(v74, v68[1]);
          v76 = vaddq_s32(v73, *v68);
          v77.i64[0] = v76.i32[2];
          v77.i64[1] = v76.i32[3];
          v78 = vcvtq_f64_s64(v77);
          v77.i64[0] = v76.i32[0];
          v77.i64[1] = v76.i32[1];
          v79 = vcvtq_f64_s64(v77);
          v77.i64[0] = v75.i32[2];
          v77.i64[1] = v75.i32[3];
          v80 = vcvtq_f64_s64(v77);
          v77.i64[0] = v75.i32[0];
          v77.i64[1] = v75.i32[1];
          *(v187 + v70) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v79, v183))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v78, v183))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v77), v183))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v80, v183)))));
          v81 = *v71;
          v82 = v71[1];
          v71 += 2;
          *v68 = vsubq_s32(v76, v81);
          v68[1] = vsubq_s32(v75, v82);
          v68 += 2;
          v70 += 16;
          v72 -= 8;
        }

        while (v72);
        v36 = v58;
        if (v66 != v67)
        {
          goto LABEL_53;
        }

LABEL_19:
        a3 = (v187 + v32);
        v26 = v186 + 1;
        v30 = v36 - 1;
        v19 = v184;
        if (!v36)
        {
          return;
        }
      }

      v39 = 0;
      v43 = v37 + 1;
      v44 = v38 + 1;
      v45 = v187;
      v46 = v34;
      while (1)
      {
        v47 = v46[-1];
        v48 = *v46;
        v49 = v43[-1];
        v50 = *v43;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_28;
          }
        }

        else
        {
          v179 = v31;
          v175 = a14;
          v167 = v34;
          v171 = v33;
          v163 = v36;
          v155 = v48;
          v159 = v47;
          v147 = v50;
          v151 = v49;
          sub_1003C8EA4();
          v50 = v147;
          v49 = v151;
          v48 = v155;
          v47 = v159;
          v36 = v163;
          v35 = &off_1004B0000;
          v34 = v167;
          v33 = v171;
          a14 = v175;
          v31 = v179;
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
LABEL_28:
            v51 = v35[3];
            v52 = xmmword_1004B0010;
            if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
            {
              goto LABEL_29;
            }

            goto LABEL_34;
          }
        }

        v180 = v31;
        v176 = a14;
        v168 = v34;
        v172 = v33;
        v164 = v36;
        v156 = v48;
        v160 = v47;
        v148 = v50;
        v152 = v49;
        sub_1003C8ED8();
        v50 = v148;
        v49 = v152;
        v48 = v156;
        v47 = v160;
        v36 = v164;
        v35 = &off_1004B0000;
        v34 = v168;
        v33 = v172;
        a14 = v176;
        v31 = v180;
        v51 = xmmword_1004B0030;
        v52 = xmmword_1004B0010;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
LABEL_29:
          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        }

LABEL_34:
        v181 = v31;
        v177 = a14;
        v169 = v34;
        v173 = v33;
        v165 = v36;
        v157 = v48;
        v161 = v47;
        v149 = v50;
        v153 = v49;
        v143 = v52;
        v145 = v51;
        sub_1003C8EA4();
        v52 = v143;
        v51 = v145;
        v50 = v149;
        v49 = v153;
        v48 = v157;
        v47 = v161;
        v36 = v165;
        v35 = &off_1004B0000;
        v34 = v169;
        v33 = v173;
        a14 = v177;
        v31 = v181;
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_35:
          v182 = v31;
          v178 = a14;
          v170 = v34;
          v174 = v33;
          v166 = v36;
          v158 = v48;
          v162 = v47;
          v150 = v50;
          v154 = v49;
          v144 = v52;
          v146 = v51;
          sub_1003C8ED8();
          v52 = v144;
          v51 = v146;
          v50 = v150;
          v49 = v154;
          v48 = v158;
          v47 = v162;
          v36 = v166;
          v35 = &off_1004B0000;
          v34 = v170;
          v33 = v174;
          a14 = v178;
          v31 = v182;
        }

LABEL_30:
        v53 = vaddq_s32(v49, v47);
        v54 = vaddq_s32(v50, v48);
        v55 = vmulq_n_f32(vcvtq_f32_s32(v53), a14.n128_f32[0]);
        v56 = vmulq_n_f32(vcvtq_f32_s32(v54), a14.n128_f32[0]);
        *v45++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v55, vorrq_s8(vandq_s8(v52, v55), v51)))), vcvtq_s32_f32(vaddq_f32(v56, vorrq_s8(vandq_s8(xmmword_1004B0010, v56), v35[3]))));
        v46[-1] = vsubq_s32(v53, v44[-1]);
        v57 = *v44;
        v44 += 2;
        *v46 = vsubq_s32(v54, v57);
        v46 += 2;
        v43 += 2;
        v39 += 8;
        if (v31 < v39)
        {
          goto LABEL_22;
        }
      }
    }

    v87 = v31;
    v88 = v14;
    v89 = v20->u64 + v88 * 4;
    do
    {
      v90 = v30;
      v91 = *v26;
      v92 = v26[1 - *(v19 + 8)];
      if (v14 >= 8)
      {
        v94 = 0;
        v95 = v92 + 1;
        v96 = v91 + 1;
        v97 = v20 + 1;
        v98 = a3;
        do
        {
          v99 = vaddq_s32(v96[-1], v97[-1]);
          v100 = vaddq_s32(*v96, *v97);
          *v98++ = vqmovn_high_s32(vqmovn_s32(v99), v100);
          v97[-1] = vsubq_s32(v99, v95[-1]);
          v101 = *v95;
          v95 += 2;
          v94 += 8;
          *v97 = vsubq_s32(v100, v101);
          v97 += 2;
          v96 += 2;
        }

        while (v94 <= v87);
        v93 = v94;
        if (v94 >= v14)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v93 = 0;
        if (v14 <= 0)
        {
          goto LABEL_64;
        }
      }

      v102 = v14 - v93;
      if (v102 <= 7 || ((v106 = 4 * v93, v107 = &v20->i32[v93], v107 < &v92->i32[v88]) ? (v108 = v92 + 4 * v93 >= v89) : (v108 = 1), v108 ? (v109 = 0) : (v109 = 1), v91 + 4 * v93 < v89 ? (v110 = v107 >= &v91->i32[v88]) : (v110 = 1), !v110 || (v109 & 1) != 0))
      {
        v103 = v93;
        do
        {
LABEL_73:
          v104 = v91->i32[v103] + v20->i32[v103];
          if (v104 <= -32768)
          {
            v105 = -32768;
          }

          else
          {
            v105 = v91->i32[v103] + v20->i32[v103];
          }

          if (v105 >= 0x7FFF)
          {
            LOWORD(v105) = 0x7FFF;
          }

          a3->i16[v103] = v105;
          v20->i32[v103] = v104 - v92->i32[v103];
          ++v103;
        }

        while (v14 != v103);
        goto LABEL_64;
      }

      v103 = (v102 & 0xFFFFFFFFFFFFFFF8) + v93;
      v111 = (v20 + v106);
      v112 = (v91 + v106);
      v113 = 2 * v93;
      v114 = (v92 + v106);
      v115 = v102 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v116 = *v112;
        v117 = v112[1];
        v112 += 2;
        v118 = vaddq_s32(v117, v111[1]);
        v119 = vaddq_s32(v116, *v111);
        *(a3 + v113) = vqmovn_high_s32(vqmovn_s32(v119), v118);
        v120 = *v114;
        v121 = v114[1];
        v114 += 2;
        *v111 = vsubq_s32(v119, v120);
        v111[1] = vsubq_s32(v118, v121);
        v111 += 2;
        v113 += 16;
        v115 -= 8;
      }

      while (v115);
      if (v102 != (v102 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_73;
      }

LABEL_64:
      a3 = (a3 + a4);
      ++v26;
      v30 = v90 - 1;
    }

    while (v90);
  }
}

uint64_t sub_10036C48C(void *a1)
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

uint64_t sub_10036C510(void *a1)
{
  *a1 = off_10047B448;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036C574(void *a1)
{
  *a1 = off_10047B448;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036C5E8(uint64_t a1, double **a2, int16x8_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v171 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 3;
  if (v14 != a6)
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = &v12[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 24);
  if (!v15)
  {
LABEL_11:
    bzero(v12, 8 * a6);
    v16 = *(a1 + 8);
    v18 = v16 - 1;
    v19 = *(a1 + 24);
    if (v19 >= v16 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v10 += (v16 - v19 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v18;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v20 = *v12;
      v21 = ~v19 + v16;
      do
      {
        v22 = *v10;
        v20 = **v10 + v20;
        *v12 = v20;
        if (a6 != 1)
        {
          v12[1] = v22[1] + v12[1];
          if (a6 != 2)
          {
            v12[2] = v22[2] + v12[2];
          }
        }

        ++v10;
        --v21;
      }

      while (v21);
      goto LABEL_20;
    }

    v159 = a6;
    while (1)
    {
      v160 = *v10;
      if (v12 >= &(*v10)[v159] || v160 >= &v12[v159])
      {
        v162 = v160 + 1;
        v163 = a6 & 0x7FFFFFFC;
        v164 = (v12 + 2);
        do
        {
          v165 = vaddq_f64(*v162, *v164);
          v164[-1] = vaddq_f64(v162[-1], v164[-1]);
          *v164 = v165;
          v162 += 2;
          v164 += 2;
          v163 -= 4;
        }

        while (v163);
        v166 = a6 & 0x7FFFFFFC;
        if (v166 == a6)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v166 = 0;
      }

      v167 = &v160->f64[v166];
      v168 = &v12[v166];
      v169 = a6 - v166;
      do
      {
        v170 = *v167++;
        *v168 = v170 + *v168;
        ++v168;
        --v169;
      }

      while (v169);
LABEL_145:
      ++v19;
      ++v10;
      if (v19 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  v16 = *(a1 + 8);
  if (v15 != v16 - 1)
  {
    v172[0] = 0;
    v172[1] = 0;
    v17 = sub_1002A80E0(v172, 19);
    *(v17 + 15) = 825058682;
    *v17 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v172, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v10 = &a2[v16 - 1];
LABEL_21:
  if (a5)
  {
    v23 = a5 - 1;
    v24 = 1 - v16;
    v25 = a4;
    v26 = a6 - 2;
    v27 = a6;
    v28 = &v12[v27];
    if (v26 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = a6 - 2;
    }

    v30 = ((8 * v29) & 0x3FFFFFFF0) + 16;
    v31 = (v12 + v30);
    v32 = (v29 >> 1) + 1;
    v33 = v32 & 0x7FFFFFF8;
    if (v171 != 1.0)
    {
      while (1)
      {
        v34 = v23;
        v35 = *v10;
        v36 = v10[v24];
        if (a6 < 2)
        {
          v37 = 0;
          if (a6 <= 0)
          {
            goto LABEL_27;
          }

          goto LABEL_45;
        }

        if (v26 >= 0xE)
        {
          v38 = 0;
          v55 = v12 < (v36 + v30) && v36 < v31;
          if (v35 >= v31 || v12 >= (v35 + v30))
          {
            v39 = v171;
            if (!v55)
            {
              v57 = v32 & 0x7FFFFFF8;
              v58 = v10[v24];
              v59 = *v10;
              v60 = v12;
              v61 = a3;
              do
              {
                v62 = vaddq_f64(v60[4], v59[4]);
                v63 = vaddq_f64(v60[5], v59[5]);
                v64 = vaddq_f64(v60[6], v59[6]);
                v65 = vaddq_f64(v60[7], v59[7]);
                v66 = vaddq_f64(v60[1], v59[1]);
                v67 = vaddq_f64(*v60, *v59);
                v68 = vaddq_f64(v60[2], v59[2]);
                v69 = vaddq_f64(v60[3], v59[3]);
                *v61 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v67, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v66, v171))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v68, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v69, v171)))));
                v61[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v62, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v63, v171))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v64, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v65, v171)))));
                v61 += 2;
                v70 = v58[2];
                v71 = vsubq_f64(v69, v58[3]);
                v72 = vsubq_f64(v67, *v58);
                v73 = vsubq_f64(v66, v58[1]);
                v74 = vsubq_f64(v62, v58[4]);
                v75 = vsubq_f64(v63, v58[5]);
                v76 = vsubq_f64(v65, v58[7]);
                v60[6] = vsubq_f64(v64, v58[6]);
                v60[7] = v76;
                v60[4] = v74;
                v60[5] = v75;
                *v60 = v72;
                v60[1] = v73;
                v60[2] = vsubq_f64(v68, v70);
                v60[3] = v71;
                v60 += 8;
                v59 += 8;
                v58 += 8;
                v57 -= 8;
              }

              while (v57);
              v38 = 2 * (v32 & 0x7FFFFFF8);
              if (v32 == v33)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_34;
          }
        }

        else
        {
          v38 = 0;
        }

        v39 = v171;
LABEL_34:
        v40 = &v12[v38];
        v41 = &v35[v38];
        v42 = &a3->i16[v38];
        v43 = &v36[v38];
        do
        {
          v44 = *v41++;
          v45 = vaddq_f64(*v40, v44);
          v46 = rint(v39 * v45.f64[0]);
          if (v46 <= -32768)
          {
            LODWORD(v46) = -32768;
          }

          if (v46 >= 0x7FFF)
          {
            LOWORD(v46) = 0x7FFF;
          }

          *v42 = v46;
          v47 = rint(vmuld_lane_f64(v39, v45, 1));
          if (v47 <= -32768)
          {
            LODWORD(v47) = -32768;
          }

          if (v47 >= 0x7FFF)
          {
            LOWORD(v47) = 0x7FFF;
          }

          v42[1] = v47;
          v48 = *v43++;
          *v40++ = vsubq_f64(v45, v48);
          v38 += 2;
          v42 += 2;
        }

        while (v38 <= v26);
LABEL_44:
        v37 = v38;
        if (v38 >= a6)
        {
          goto LABEL_27;
        }

LABEL_45:
        v49 = a6 - v37;
        if (v49 <= 7 || ((v77 = v37, v78 = &v12[v37], v78 < &v36[v27]) ? (v79 = &v36[v37] >= v28) : (v79 = 1), v79 ? (v80 = 0) : (v80 = 1), &v35[v37] < v28 ? (v81 = v78 >= &v35[v27]) : (v81 = 1), !v81 || (v80 & 1) != 0))
        {
          v50 = v37;
          v51 = v171;
          do
          {
LABEL_47:
            v52 = v12[v50] + v35[v50];
            v53 = rint(v51 * v52);
            if (v53 <= -32768)
            {
              LODWORD(v53) = -32768;
            }

            if (v53 >= 0x7FFF)
            {
              LOWORD(v53) = 0x7FFF;
            }

            a3->i16[v50] = v53;
            v12[v50] = v52 - v36[v50];
            ++v50;
          }

          while (a6 != v50);
          goto LABEL_27;
        }

        v50 = (v49 & 0xFFFFFFFFFFFFFFF8) + v37;
        v82 = &v12[v77];
        v83 = &v35[v77];
        v84 = 2 * v37;
        v85 = &v36[v77];
        v86 = v49 & 0xFFFFFFFFFFFFFFF8;
        v51 = v171;
        do
        {
          v88 = v83[2];
          v87 = v83[3];
          v89 = *v83;
          v90 = v83[1];
          v83 += 4;
          v91 = vaddq_f64(v82[1], v90);
          v92 = vaddq_f64(*v82, v89);
          v93 = vaddq_f64(v82[2], v88);
          v94 = vaddq_f64(v82[3], v87);
          *(a3 + v84) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v92, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v91, v171))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v93, v171))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v94, v171)))));
          v95 = v85[2];
          v96 = v85[3];
          v97 = *v85;
          v98 = v85[1];
          v85 += 4;
          v82[2] = vsubq_f64(v93, v95);
          v82[3] = vsubq_f64(v94, v96);
          *v82 = vsubq_f64(v92, v97);
          v82[1] = vsubq_f64(v91, v98);
          v82 += 4;
          v84 += 16;
          v86 -= 8;
        }

        while (v86);
        if (v49 != (v49 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_47;
        }

LABEL_27:
        a3 = (a3 + v25);
        ++v10;
        v23 = v34 - 1;
        if (!v34)
        {
          return;
        }
      }
    }

    v99 = &a3->i8[2];
    do
    {
      v100 = v23;
      v101 = *v10;
      v102 = v10[v24];
      if (a6 < 2)
      {
        v103 = 0;
        if (a6 <= 0)
        {
          goto LABEL_86;
        }

        goto LABEL_103;
      }

      if (v26 > 0xD)
      {
        v104 = 0;
        v119 = v12 < (v102 + v30) && v102 < v31;
        if ((v101 >= v31 || v12 >= (v101 + v30)) && !v119)
        {
          v121 = v32 & 0x7FFFFFF8;
          v122 = v10[v24];
          v123 = *v10;
          v124 = v12;
          v125 = a3;
          do
          {
            v126 = vaddq_f64(v124[6], v123[6]);
            v127 = vaddq_f64(v124[7], v123[7]);
            v128 = vaddq_f64(v124[4], v123[4]);
            v129 = vaddq_f64(v124[5], v123[5]);
            v130 = vaddq_f64(v124[2], v123[2]);
            v131 = vaddq_f64(v124[3], v123[3]);
            v132 = vaddq_f64(*v124, *v123);
            v133 = vaddq_f64(v124[1], v123[1]);
            *v125 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v132)), vcvtq_s64_f64(vrndxq_f64(v133)))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v130)), vcvtq_s64_f64(vrndxq_f64(v131))));
            v125[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v128)), vcvtq_s64_f64(vrndxq_f64(v129)))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v126)), vcvtq_s64_f64(vrndxq_f64(v127))));
            v125 += 2;
            v134 = vsubq_f64(v131, v122[3]);
            v135 = vsubq_f64(v132, *v122);
            v136 = vsubq_f64(v133, v122[1]);
            v137 = vsubq_f64(v130, v122[2]);
            v138 = vsubq_f64(v128, v122[4]);
            v139 = vsubq_f64(v129, v122[5]);
            v140 = vsubq_f64(v127, v122[7]);
            v124[6] = vsubq_f64(v126, v122[6]);
            v124[7] = v140;
            v124[4] = v138;
            v124[5] = v139;
            *v124 = v135;
            v124[1] = v136;
            v124[2] = v137;
            v124[3] = v134;
            v124 += 8;
            v123 += 8;
            v122 += 8;
            v121 -= 8;
          }

          while (v121);
          v104 = 2 * (v32 & 0x7FFFFFF8);
          if (v32 == v33)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
        v104 = 0;
      }

      v105 = &v102[v104];
      v106 = &v101[v104];
      v107 = &v12[v104];
      v108 = &v99[2 * v104];
      do
      {
        v109 = *v106++;
        v110 = vaddq_f64(*v107, v109);
        v111 = rint(v110.f64[0]);
        if (v111 <= -32768)
        {
          LODWORD(v111) = -32768;
        }

        if (v111 >= 0x7FFF)
        {
          LOWORD(v111) = 0x7FFF;
        }

        *(v108 - 1) = v111;
        v112 = rint(v110.f64[1]);
        if (v112 <= -32768)
        {
          LODWORD(v112) = -32768;
        }

        if (v112 >= 0x7FFF)
        {
          LOWORD(v112) = 0x7FFF;
        }

        *v108 = v112;
        v108 += 4;
        v113 = *v105++;
        *v107++ = vsubq_f64(v110, v113);
        v104 += 2;
      }

      while (v104 <= v26);
LABEL_102:
      v103 = v104;
      if (v104 >= a6)
      {
        goto LABEL_86;
      }

LABEL_103:
      v114 = a6 - v103;
      if (v114 <= 7 || ((v141 = v103, v142 = &v12[v103], v142 < &v102[v27]) ? (v143 = &v102[v103] >= v28) : (v143 = 1), v143 ? (v144 = 0) : (v144 = 1), &v101[v103] < v28 ? (v145 = v142 >= &v101[v27]) : (v145 = 1), !v145 || (v144 & 1) != 0))
      {
        v115 = v103;
        do
        {
LABEL_105:
          v116 = v12[v115] + v101[v115];
          v117 = rint(v116);
          if (v117 <= -32768)
          {
            LODWORD(v117) = -32768;
          }

          if (v117 >= 0x7FFF)
          {
            LOWORD(v117) = 0x7FFF;
          }

          a3->i16[v115] = v117;
          v12[v115] = v116 - v102[v115];
          ++v115;
        }

        while (a6 != v115);
        goto LABEL_86;
      }

      v115 = (v114 & 0xFFFFFFFFFFFFFFF8) + v103;
      v146 = &v12[v141];
      v147 = &v101[v141];
      v148 = 2 * v103;
      v149 = &v102[v141];
      v150 = v114 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v151 = vaddq_f64(v146[2], v147[2]);
        v152 = vaddq_f64(v146[3], v147[3]);
        v153 = vaddq_f64(*v146, *v147);
        v154 = vaddq_f64(v146[1], v147[1]);
        *(a3 + v148) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v153)), vcvtq_s64_f64(vrndxq_f64(v154)))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v151)), vcvtq_s64_f64(vrndxq_f64(v152))));
        v155 = v149[2];
        v156 = v149[3];
        v157 = *v149;
        v158 = v149[1];
        v149 += 4;
        v146[2] = vsubq_f64(v151, v155);
        v146[3] = vsubq_f64(v152, v156);
        *v146 = vsubq_f64(v153, v157);
        v146[1] = vsubq_f64(v154, v158);
        v146 += 4;
        v147 += 4;
        v148 += 16;
        v150 -= 8;
      }

      while (v150);
      if (v114 != (v114 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_105;
      }

LABEL_86:
      a3 = (a3 + v25);
      ++v10;
      v23 = v100 - 1;
      v99 += v25;
    }

    while (v100);
  }
}

void sub_10036CF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036CFD4(void *a1)
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

uint64_t sub_10036D058(void *a1)
{
  *a1 = off_10047B4D0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036D0BC(void *a1)
{
  *a1 = off_10047B4D0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036D130(uint64_t a1, void *a2, int32x4_t *a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, __n128 a11)
{
  v11 = a6;
  v15 = a2;
  v18 = (a1 + 32);
  v17 = *(a1 + 32);
  v170 = *(a1 + 16);
  v19 = (*(a1 + 40) - v17) >> 2;
  if (v19 == a6)
  {
    v20 = *(a1 + 24);
    if (v20)
    {
      v21 = *(a1 + 8);
      if (v20 != v21 - 1)
      {
        v176[0] = 0;
        v176[1] = 0;
        v22 = sub_1002A80E0(v176, 19);
        *(v22 + 15) = 825058682;
        *v22 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v176, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 866);
      }

      v15 = &a2[v21 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    if (a6 <= v19)
    {
      if (a6 < v19)
      {
        *(a1 + 40) = v17 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v19);
      v17 = *v18;
    }

    *(a1 + 24) = 0;
  }

  bzero(v17, 4 * v11);
  v23 = *(a1 + 24);
  v24 = *(a1 + 8);
  if (v23 < v24 - 1)
  {
    v25 = (v11 - 4);
    if (v11 >= 4)
    {
      if (((v25 & 0x7FFFFFFC) + 5) <= v11)
      {
        v81 = v11;
      }

      else
      {
        v81 = (v25 & 0x7FFFFFFC) + 5;
      }

      v82 = 4 * v81 - ((4 * (v11 - 4)) & 0x1FFFFFFF0);
      v83 = v81 - (v25 & 0x7FFFFFFC) - 4;
      v84 = v83 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v86 = 0;
        v87 = 0;
        v88 = *v15;
        v89 = *v15 + 32;
        v90 = v17 + 2;
        v91 = 4;
        do
        {
          v92 = v91;
          v93 = v86;
          v94 = v89;
          v95 = v90;
          v17[v87 / 4] = vaddq_s32(*&v88[v87], v17[v87 / 4]);
          v87 += 4;
          v91 += 4;
          ++v86;
          v89 += 16;
          ++v90;
        }

        while (v87 <= v25);
        if (v87 < v11)
        {
          if (v83 <= 7)
          {
            goto LABEL_149;
          }

          v96 = 16 * v93;
          v97 = v96 + 16;
          v98 = &v17[v96 / 0x10 + 1];
          v99 = v82 + v96;
          if (v98 < (v88 + v99) && v88 + v97 < v17->i32 + v99)
          {
            goto LABEL_149;
          }

          v92 += v84;
          v100 = v83 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v101 = vaddq_s32(*v95, *v94);
            v95[-1] = vaddq_s32(v95[-1], v94[-1]);
            *v95 = v101;
            v94 += 2;
            v95 += 2;
            v100 -= 8;
          }

          while (v100);
          if (v83 != v84)
          {
LABEL_149:
            do
            {
              v17->i32[v92] += v88[v92];
              ++v92;
            }

            while (v92 < v11);
          }
        }

        v85 = *(a1 + 24) + 1;
        *(a1 + 24) = v85;
        ++v15;
      }

      while (v85 < *(a1 + 8) - 1);
    }

    else if (v11 >= 1)
    {
      do
      {
        v73 = *v15;
        v17->i32[0] += **v15;
        if (v11 != 1)
        {
          v17->i32[1] += v73[1];
          if (v11 != 2)
          {
            v17->i32[2] += v73[2];
          }
        }

        v72 = *(a1 + 24) + 1;
        *(a1 + 24) = v72;
        ++v15;
      }

      while (v72 < *(a1 + 8) - 1);
    }

    else
    {
      v15 += (v24 - v23 - 2) + 1;
      *(a1 + 24) = v24 - 1;
    }
  }

LABEL_15:
  if (a5)
  {
    v26 = a5 - 1;
    v27 = (v11 - 4);
    a11.n128_f32[0] = v170;
    v28 = a4;
    v172 = v11;
    if (v170 != 1.0)
    {
      v29 = 0;
      v30 = &v17->i32[1];
      v31 = a3->i64 + 4;
      while (1)
      {
        v32 = v26;
        v33 = v15;
        v34 = *v15;
        v174 = v33;
        v35 = v33[1 - *(a1 + 8)];
        if (v11 >= 4)
        {
          break;
        }

        v36 = 0;
LABEL_21:
        v11 = v172;
        if (v36 >= v172)
        {
          goto LABEL_18;
        }

        v37 = v36;
        v38 = (~v36 + v172);
        if (v38 > 6)
        {
          v45 = v32;
          v46 = 4 * v37;
          v47 = a3 + 4 * v37;
          v48 = v37 + v38;
          v49 = v31 + v29 * v28 + v48 * 4;
          v50 = &v17->i32[v37];
          v51 = &v30[v48];
          v52 = &v34[v37];
          v53 = &v34[v48 + 1];
          v54 = v35 + 4 * v37;
          v55 = v35 + v48 * 4 + 4;
          v57 = v47 < v53 && v52 < v49;
          v59 = v47 < v55 && v54 < v49;
          v61 = v50 < v53 && v52 < v51;
          v63 = v50 < v55 && v54 < v51;
          v64 = v50 >= v49 || v47 >= v51;
          if (!v64 || v57 || v59 || v61 || v63)
          {
            v39 = v170;
            v32 = v45;
          }

          else
          {
            v65 = v38 + 1;
            v37 += v65 & 0x1FFFFFFFCLL;
            v66 = v65 & 0x1FFFFFFFCLL;
            v39 = v170;
            do
            {
              v67 = vaddq_s32(*&v34[v46 / 4], *(v17 + v46));
              v68.i64[0] = v67.i32[2];
              v68.i64[1] = v67.i32[3];
              v69 = vcvtq_f64_s64(v68);
              v68.i64[0] = v67.i32[0];
              v68.i64[1] = v67.i32[1];
              *(a3 + v46) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v68), v170))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v69, v170))));
              *(v17 + v46) = vsubq_s32(v67, *(v35 + v46));
              v46 += 16;
              v66 -= 4;
            }

            while (v66);
            v32 = v45;
            if (v65 == (v65 & 0x1FFFFFFFCLL))
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v39 = v170;
        }

        v70 = v37;
        do
        {
          v71 = v34[v70] + v17->i32[v70];
          a3->i32[v70] = rint(v39 * v71);
          v17->i32[v70] = v71 - *(v35 + v70 * 4);
          ++v70;
          LODWORD(v37) = v37 + 1;
        }

        while (v37 < v172);
LABEL_18:
        a3 = (a3 + v28);
        v15 = v174 + 1;
        v26 = v32 - 1;
        ++v29;
        if (!v32)
        {
          return;
        }
      }

      v36 = 0;
      v40 = 0;
      while (1)
      {
        v41 = v17[v40 / 0x10];
        v42 = *&v34[v40 / 4];
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v168 = v28;
          v166 = a11;
          v162 = v30;
          v164 = v29;
          v160 = v31;
          v158 = v32;
          v154 = v42;
          v156 = v41;
          sub_1003C8EA4();
          v42 = v154;
          v41 = v156;
          v32 = v158;
          v31 = v160;
          v30 = v162;
          v29 = v164;
          a11 = v166;
          v28 = v168;
          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
LABEL_30:
            v169 = v28;
            v167 = a11;
            v163 = v30;
            v165 = v29;
            v161 = v31;
            v159 = v32;
            v155 = v42;
            v157 = v41;
            sub_1003C8ED8();
            v42 = v155;
            v41 = v157;
            v32 = v159;
            v31 = v161;
            v30 = v163;
            v29 = v165;
            a11 = v167;
            v28 = v169;
          }
        }

        v43 = vaddq_s32(v42, v41);
        v44 = vmulq_n_f32(vcvtq_f32_s32(v43), a11.n128_f32[0]);
        a3[v40 / 0x10] = vcvtq_s32_f32(vaddq_f32(v44, vorrq_s8(vandq_s8(xmmword_1004B0010, v44), xmmword_1004B0030)));
        v17[v40 / 0x10] = vsubq_s32(v43, *(v35 + v40));
        v40 += 16;
        v36 += 4;
        if (v27 < v36)
        {
          goto LABEL_21;
        }
      }
    }

    if (v11 >= 4)
    {
      v102 = 0;
      v103 = v11;
      if ((v27 & 0x7FFFFFFC) + 5 <= v11)
      {
        v104 = v11;
      }

      else
      {
        v104 = (v27 & 0x7FFFFFFC) + 5;
      }

      v175 = 4 * v104 - ((4 * (v11 - 4)) & 0x1FFFFFFF0);
      v105 = v104 - (v27 & 0x7FFFFFFC) - 4;
      v171 = v105 & 0xFFFFFFFFFFFFFFF8;
      v106 = a3 + 2;
      v107 = a3;
      do
      {
        v108 = 0;
        v109 = 0;
        v110 = v26;
        v111 = v28;
        v112 = v102 * v28;
        v113 = v15[1 - *(a1 + 8)];
        v114 = v15;
        v115 = *v15;
        v116 = *v15 + 32;
        v117 = v113 + 2;
        v118 = v106;
        v119 = v17 + 2;
        v120 = 4;
        do
        {
          v121 = v120;
          v122 = v108;
          v123 = v119;
          v124 = v116;
          v125 = 4 * v109;
          v126 = v118;
          v127 = vaddq_s32(*&v115[v109], v17[v109 / 4]);
          *(v107 + v125) = v127;
          v128 = v117;
          *(v17 + v125) = vsubq_s32(v127, v113[v109 / 4]);
          v109 += 4;
          v120 += 4;
          ++v108;
          ++v119;
          v116 += 16;
          ++v118;
          ++v117;
        }

        while (v109 <= v27);
        if (v109 < v172)
        {
          if (v105 <= 0xB)
          {
            goto LABEL_150;
          }

          v130 = a3[v122].i64 + v112;
          v131 = v130 + 16;
          v132 = v130 + v175;
          v133 = 16 * v122 + 16;
          v134 = &v17->i8[v133];
          v135 = v175 + 16 * v122;
          v136 = &v17->i8[v135];
          v137 = v115 + v133;
          v138 = v115 + v135;
          v139 = v113->u64 + v133;
          v140 = v113->u64 + v135;
          v141 = v131 >= v115 + v135 || v137 >= v132;
          v142 = !v141;
          v143 = v131 >= v140 || v139 >= v132;
          v144 = !v143;
          v145 = v134 >= v138 || v137 >= v136;
          v146 = !v145;
          v147 = v134 >= v140 || v139 >= v136;
          v148 = !v147;
          if (v134 < v132 && v131 < v136)
          {
            goto LABEL_150;
          }

          if (v142)
          {
            goto LABEL_150;
          }

          if (v144)
          {
            goto LABEL_150;
          }

          if (v146)
          {
            goto LABEL_150;
          }

          if (v148)
          {
            goto LABEL_150;
          }

          v150 = v105 & 0xFFFFFFFFFFFFFFF8;
          v121 += v171;
          do
          {
            v151 = vaddq_s32(v124[-1], v123[-1]);
            v152 = vaddq_s32(*v124, *v123);
            v153 = vsubq_s32(v152, *v128);
            v123[-1] = vsubq_s32(v151, v128[-1]);
            *v123 = v153;
            v123 += 2;
            v126[-1] = v151;
            *v126 = v152;
            v124 += 2;
            v126 += 2;
            v128 += 2;
            v150 -= 8;
          }

          while (v150);
          if (v105 != v171)
          {
LABEL_150:
            do
            {
              v129 = v115[v121] + v17->i32[v121];
              v107->i32[v121] = v129;
              v17->i32[v121] = v129 - v113->i32[v121];
              ++v121;
            }

            while (v121 < v103);
          }
        }

        v28 = v111;
        v107 = (v107 + v111);
        v15 = v114 + 1;
        v26 = v110 - 1;
        ++v102;
        v106 = (v106 + v111);
      }

      while (v110);
    }

    else if (v11 >= 1)
    {
      v74 = v15 + 1;
      v75 = &a3->i32[2];
      do
      {
        v76 = *(v74 - 1);
        v77 = v74[-*(a1 + 8)];
        v78 = *v76 + v17->i32[0];
        *(v75 - 2) = v78;
        v17->i32[0] = v78 - *v77;
        if (v11 != 1)
        {
          v79 = v76[1] + v17->i32[1];
          *(v75 - 1) = v79;
          v17->i32[1] = v79 - v77[1];
          if (v11 != 2)
          {
            v80 = v76[2] + v17->i32[2];
            *v75 = v80;
            v17->i32[2] = v80 - v77[2];
          }
        }

        ++v74;
        v75 = (v75 + a4);
        --a5;
      }

      while (a5);
    }
  }
}

uint64_t sub_10036DA4C(void *a1)
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

uint64_t sub_10036DAD0(void *a1)
{
  *a1 = off_10047B558;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036DB34(void *a1)
{
  *a1 = off_10047B558;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036DBA8(uint64_t a1, void *a2, float32x4_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v128 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 2;
  if (v14 == a6)
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      v16 = *(a1 + 8);
      if (v15 != v16 - 1)
      {
        v130[0] = 0;
        v130[1] = 0;
        v17 = sub_1002A80E0(v130, 19);
        *(v17 + 15) = 825058682;
        *v17 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v130, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 986);
      }

      v10 = &a2[v16 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = v12 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
  }

  bzero(v12, 4 * a6);
  v18 = *(a1 + 24);
  v19 = *(a1 + 8);
  if (v18 < v19 - 1)
  {
    v20 = (a6 - 4);
    if (a6 >= 4)
    {
      if (((v20 & 0x7FFFFFFC) + 5) <= a6)
      {
        v65 = a6;
      }

      else
      {
        v65 = (v20 & 0x7FFFFFFC) + 5;
      }

      v66 = 4 * v65 - ((4 * (a6 - 4)) & 0x1FFFFFFF0);
      v67 = v65 - (v20 & 0x7FFFFFFC) - 4;
      v68 = v67 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v70 = 0;
        v71 = 0;
        v72 = *v10;
        v73 = *v10 + 32;
        v74 = v12 + 2;
        v75 = 4;
        do
        {
          v76 = v75;
          v77 = v70;
          v78 = v73;
          v79 = v74;
          v12[v71 / 4] = vaddq_s32(v72[v71 / 4], v12[v71 / 4]);
          v71 += 4;
          v75 += 4;
          ++v70;
          v73 += 16;
          ++v74;
        }

        while (v71 <= v20);
        if (v71 < a6)
        {
          if (v67 <= 7)
          {
            goto LABEL_104;
          }

          v80 = 16 * v77;
          v81 = v80 + 16;
          v82 = &v12[v80 / 0x10 + 1];
          v83 = v66 + v80;
          if (v82 < &v72->i8[v83] && &v72->i8[v81] < &v12->i8[v83])
          {
            goto LABEL_104;
          }

          v76 += v68;
          v84 = v67 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v85 = vaddq_s32(*v79, *v78);
            v79[-1] = vaddq_s32(v79[-1], v78[-1]);
            *v79 = v85;
            v78 += 2;
            v79 += 2;
            v84 -= 8;
          }

          while (v84);
          if (v67 != v68)
          {
LABEL_104:
            do
            {
              v12->i32[v76] += v72->i32[v76];
              ++v76;
            }

            while (v76 < a6);
          }
        }

        v69 = *(a1 + 24) + 1;
        *(a1 + 24) = v69;
        ++v10;
      }

      while (v69 < *(a1 + 8) - 1);
    }

    else if (a6 >= 1)
    {
      do
      {
        v53 = *v10;
        v12->i32[0] += **v10;
        if (a6 != 1)
        {
          v12->i32[1] += v53->i32[1];
          if (a6 != 2)
          {
            v12->i32[2] += v53->i32[2];
          }
        }

        v52 = *(a1 + 24) + 1;
        *(a1 + 24) = v52;
        ++v10;
      }

      while (v52 < *(a1 + 8) - 1);
    }

    else
    {
      v10 += (v19 - v18 - 2) + 1;
      *(a1 + 24) = v19 - 1;
    }
  }

LABEL_15:
  if (a5)
  {
    v21 = a5 - 1;
    v22 = (a6 - 8);
    v23 = v128;
    v24 = a4;
    if (v128 != 1.0)
    {
      v25 = a6;
      v26 = v12->u64 + v25 * 4;
      v27 = a3 + 1;
      while (1)
      {
        v28 = v21;
        v29 = *v10;
        v30 = v10[1 - *(a1 + 8)];
        if (a6 >= 8)
        {
          v31 = 0;
          v32 = v29 + 1;
          v33 = v30 + 1;
          v34 = v27;
          v35 = v12 + 1;
          do
          {
            v36 = vaddq_s32(v32[-1], v35[-1]);
            v37 = vaddq_s32(*v32, *v35);
            v34[-1] = vmulq_n_f32(vcvtq_f32_s32(v36), v23);
            *v34 = vmulq_n_f32(vcvtq_f32_s32(v37), v23);
            v35[-1] = vsubq_s32(v36, v33[-1]);
            v38 = *v33;
            v33 += 2;
            v31 += 8;
            *v35 = vsubq_s32(v37, v38);
            v35 += 2;
            v32 += 2;
            v34 += 2;
          }

          while (v31 <= v22);
          v31 = v31;
          if (v31 >= a6)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v31 = 0;
          if (a6 <= 0)
          {
            goto LABEL_18;
          }
        }

        v39 = a6 - v31;
        if (v39 <= 3 || ((v43 = 4 * v31, v44 = &v12->i32[v31], v44 < &v30->i32[v25]) ? (v45 = v30 + 4 * v31 >= v26) : (v45 = 1), v45 ? (v46 = 0) : (v46 = 1), v29 + 4 * v31 < v26 ? (v47 = v44 >= &v29->i32[v25]) : (v47 = 1), !v47 || (v46 & 1) != 0))
        {
          v40 = v128;
        }

        else
        {
          v31 += v39 & 0xFFFFFFFFFFFFFFFCLL;
          v48 = v39 & 0xFFFFFFFFFFFFFFFCLL;
          v40 = v128;
          do
          {
            v49 = vaddq_s32(*(v29 + v43), *(v12 + v43));
            v50.i64[0] = v49.i32[0];
            v50.i64[1] = v49.i32[1];
            v51 = vcvtq_f64_s64(v50);
            v50.i64[0] = v49.i32[2];
            v50.i64[1] = v49.i32[3];
            *(a3 + v43) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v51, v128)), vmulq_n_f64(vcvtq_f64_s64(v50), v128));
            *(v12 + v43) = vsubq_s32(v49, *(v30 + v43));
            v43 += 16;
            v48 -= 4;
          }

          while (v48);
          if (v39 == (v39 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_18;
          }
        }

        do
        {
          v41 = v29->i32[v31] + v12->i32[v31];
          v42 = v40 * v41;
          a3->f32[v31] = v42;
          v12->i32[v31] = v41 - v30->i32[v31];
          ++v31;
        }

        while (a6 != v31);
LABEL_18:
        a3 = (a3 + a4);
        ++v10;
        v21 = v28 - 1;
        v27 = (v27 + a4);
        if (!v28)
        {
          return;
        }
      }
    }

    if (a6 >= 8)
    {
      if ((v22 & 0x7FFFFFF8) + 9 <= a6)
      {
        v86 = a6;
      }

      else
      {
        v86 = (v22 & 0x7FFFFFF8) + 9;
      }

      v129 = 4 * v86 - ((4 * (a6 - 8)) & 0x1FFFFFFE0);
      v87 = v86 - (v22 & 0x7FFFFFF8) - 8;
      v127 = v86 & 7;
      v88 = a3 + 3;
      do
      {
        v89 = 0;
        v90 = 0;
        v91 = v21;
        v92 = v10[1 - *(a1 + 8)];
        v93 = *v10;
        v94 = *v10 + 48;
        v95 = v92 + 3;
        v96 = v88;
        v97 = v12 + 3;
        v98 = 8;
        do
        {
          v99 = v98;
          v100 = v89;
          v101 = v97;
          v102 = v94;
          v103 = v96;
          v104 = v95;
          v105 = &v12[v90 / 4];
          v106 = &v93[v90 / 4];
          v107 = vaddq_s32(*v106, *v105);
          v108 = vaddq_s32(v106[1], v105[1]);
          v109 = &a3[v90 / 4];
          *v109 = vcvtq_f32_s32(v107);
          v109[1] = vcvtq_f32_s32(v108);
          v110 = &v92[v90 / 4];
          *v105 = vsubq_s32(v107, *v110);
          v111 = v110[1];
          v90 += 8;
          v98 = v99 + 8;
          v89 = v100 + 1;
          v97 += 2;
          v105[1] = vsubq_s32(v108, v111);
          v94 += 32;
          v96 = v103 + 2;
          v95 += 2;
        }

        while (v90 <= v22);
        if (v90 < a6)
        {
          if (v87 <= 7)
          {
            goto LABEL_105;
          }

          v112 = 32 * v100 + 32;
          v113 = &v12->i8[v112];
          v114 = v129 + 32 * v100;
          v115 = &v12->i8[v114];
          v116 = &v93->i8[v112];
          v117 = &v93->i8[v114];
          v118 = v92->u64 + v112;
          v119 = v113 >= &v92->i8[v114] || v118 >= v115;
          v120 = !v119;
          if (v116 < v115 && v113 < v117)
          {
            goto LABEL_105;
          }

          if (v120)
          {
            goto LABEL_105;
          }

          v99 += v87 - v127;
          v122 = v87 - v127;
          do
          {
            v123 = vaddq_s32(v102[-1], v101[-1]);
            v124 = vaddq_s32(*v102, *v101);
            v125 = vsubq_s32(v124, *v104);
            v101[-1] = vsubq_s32(v123, v104[-1]);
            *v101 = v125;
            v101 += 2;
            v103[-1] = vcvtq_f32_s32(v123);
            *v103 = vcvtq_f32_s32(v124);
            v102 += 2;
            v103 += 2;
            v104 += 2;
            v122 -= 8;
          }

          while (v122);
          if (v127)
          {
LABEL_105:
            do
            {
              v126 = v93->i32[v99] + v12->i32[v99];
              a3->f32[v99] = v126;
              v12->i32[v99] = v126 - v92->i32[v99];
              ++v99;
            }

            while (v99 < a6);
          }
        }

        a3 = (a3 + v24);
        ++v10;
        v21 = v91 - 1;
        v88 = (v88 + v24);
      }

      while (v91);
    }

    else if (a6 >= 1)
    {
      v54 = v10 + 1;
      v55 = &a3->f32[3];
      do
      {
        v56 = *(v54 - 1);
        v57 = *v56 + v12->i32[0];
        v58 = v54[-*(a1 + 8)];
        *(v55 - 3) = v57;
        v12->i32[0] = v57 - *v58;
        if (a6 != 1)
        {
          v59 = v56[1] + v12->i32[1];
          *(v55 - 2) = v59;
          v12->i32[1] = v59 - v58[1];
          if (a6 != 2)
          {
            v60 = v56[2] + v12->i32[2];
            *(v55 - 1) = v60;
            v12->i32[2] = v60 - v58[2];
            if (a6 != 3)
            {
              v61 = v56[3] + v12->i32[3];
              *v55 = v61;
              v12->i32[3] = v61 - v58[3];
              if (a6 != 4)
              {
                v62 = v56[4] + v12[1].i32[0];
                v55[1] = v62;
                v12[1].i32[0] = v62 - v58[4];
                if (a6 != 5)
                {
                  v63 = v56[5] + v12[1].i32[1];
                  v55[2] = v63;
                  v12[1].i32[1] = v63 - v58[5];
                  if (a6 != 6)
                  {
                    v64 = v56[6] + v12[1].i32[2];
                    v55[3] = v64;
                    v12[1].i32[2] = v64 - v58[6];
                  }
                }
              }
            }
          }
        }

        ++v54;
        v55 = (v55 + a4);
        --a5;
      }

      while (a5);
    }
  }
}

void sub_10036E3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036E408(void *a1)
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

uint64_t sub_10036E48C(void *a1)
{
  *a1 = off_10047B5E0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036E4F0(void *a1)
{
  *a1 = off_10047B5E0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036E564(uint64_t a1, double **a2, float *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v169 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 3;
  if (v14 != a6)
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = &v12[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 24);
  if (!v15)
  {
LABEL_11:
    bzero(v12, 8 * a6);
    v16 = *(a1 + 8);
    v18 = v16 - 1;
    v19 = *(a1 + 24);
    if (v19 >= v16 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v10 += (v16 - v19 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v18;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v20 = *v12;
      v21 = ~v19 + v16;
      do
      {
        v22 = *v10;
        v20 = **v10 + v20;
        *v12 = v20;
        if (a6 != 1)
        {
          v12[1] = v22[1] + v12[1];
          if (a6 != 2)
          {
            v12[2] = v22[2] + v12[2];
          }
        }

        ++v10;
        --v21;
      }

      while (v21);
      goto LABEL_20;
    }

    v157 = a6;
    while (1)
    {
      v158 = *v10;
      if (v12 >= &(*v10)[v157] || v158 >= &v12[v157])
      {
        v160 = v158 + 1;
        v161 = a6 & 0x7FFFFFFC;
        v162 = (v12 + 2);
        do
        {
          v163 = vaddq_f64(*v160, *v162);
          v162[-1] = vaddq_f64(v160[-1], v162[-1]);
          *v162 = v163;
          v160 += 2;
          v162 += 2;
          v161 -= 4;
        }

        while (v161);
        v164 = a6 & 0x7FFFFFFC;
        if (v164 == a6)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v164 = 0;
      }

      v165 = &v158->f64[v164];
      v166 = &v12[v164];
      v167 = a6 - v164;
      do
      {
        v168 = *v165++;
        *v166 = v168 + *v166;
        ++v166;
        --v167;
      }

      while (v167);
LABEL_125:
      ++v19;
      ++v10;
      if (v19 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  v16 = *(a1 + 8);
  if (v15 != v16 - 1)
  {
    v170[0] = 0;
    v170[1] = 0;
    v17 = sub_1002A80E0(v170, 19);
    *(v17 + 15) = 825058682;
    *v17 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v170, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v10 = &a2[v16 - 1];
LABEL_21:
  if (!a5)
  {
    return;
  }

  v23 = a5 - 1;
  v24 = 1 - v16;
  v25 = (a6 - 2);
  v26 = a4;
  if (v169 != 1.0)
  {
    v27 = a6;
    v28 = &v12[v27];
    if (v25 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v25;
    }

    v30 = ((8 * v29) & 0x3FFFFFFF0) + 16;
    v31 = (v12 + v30);
    v32 = (v29 >> 1) + 1;
    while (1)
    {
      v33 = v23;
      v34 = *v10;
      v35 = v10[v24];
      if (a6 < 2)
      {
        v36 = 0;
        if (a6 <= 0)
        {
          goto LABEL_27;
        }

        goto LABEL_37;
      }

      if (v25 < 6)
      {
        break;
      }

      v37 = 0;
      v52 = v12 < (v35 + v30) && v35 < v31;
      if (v34 < v31 && v12 < (v34 + v30))
      {
        goto LABEL_33;
      }

      v38 = v169;
      if (v52)
      {
        goto LABEL_34;
      }

      v54 = v32 & 0x7FFFFFFC;
      v55 = v10[v24];
      v56 = *v10;
      v57 = v12;
      v58 = a3;
      do
      {
        v59 = vaddq_f64(v57[3], v56[3]);
        v60 = vaddq_f64(v57[2], v56[2]);
        v61 = vaddq_f64(v57[1], v56[1]);
        v62 = vaddq_f64(*v57, *v56);
        v171.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vzip1q_s64(v62, v61), v169)), vmulq_n_f64(vzip1q_s64(v60, v59), v169));
        v171.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vzip2q_s64(v62, v61), v169)), vmulq_n_f64(vzip2q_s64(v60, v59), v169));
        vst2q_f32(v58, v171);
        v58 += 8;
        v63 = v55[2];
        v64 = v55[3];
        v65 = *v55;
        v66 = v55[1];
        v55 += 4;
        v57[2] = vsubq_f64(v60, v63);
        v57[3] = vsubq_f64(v59, v64);
        *v57 = vsubq_f64(v62, v65);
        v57[1] = vsubq_f64(v61, v66);
        v57 += 4;
        v56 += 4;
        v54 -= 4;
      }

      while (v54);
      v37 = 2 * (v32 & 0x7FFFFFFC);
      if (v32 != (v32 & 0x7FFFFFFC))
      {
        goto LABEL_34;
      }

LABEL_36:
      v36 = v37;
      if (v37 >= a6)
      {
        goto LABEL_27;
      }

LABEL_37:
      v46 = a6 - v36;
      if (v46 <= 3 || ((v67 = v36, v68 = &v12[v36], v68 < &v35[v27]) ? (v69 = &v35[v36] >= v28) : (v69 = 1), v69 ? (v70 = 0) : (v70 = 1), &v34[v36] < v28 ? (v71 = v68 >= &v34[v27]) : (v71 = 1), !v71 || (v70 & 1) != 0))
      {
        v47 = v36;
        v48 = v169;
      }

      else
      {
        v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL) + v36;
        v72 = &v12[v67];
        v73 = &v34[v67];
        v74 = v36;
        v75 = &v35[v67];
        v76 = v46 & 0xFFFFFFFFFFFFFFFCLL;
        v48 = v169;
        do
        {
          v78 = *v73;
          v77 = v73[1];
          v73 += 2;
          v79 = vaddq_f64(*v72, v78);
          v80 = vaddq_f64(v72[1], v77);
          *&a3[v74] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v79, v169)), vmulq_n_f64(v80, v169));
          v81 = *v75;
          v82 = v75[1];
          v75 += 2;
          *v72 = vsubq_f64(v79, v81);
          v72[1] = vsubq_f64(v80, v82);
          v72 += 2;
          v74 += 4;
          v76 -= 4;
        }

        while (v76);
        if (v46 == (v46 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_27;
        }
      }

      do
      {
        v49 = v12[v47] + v34[v47];
        v50 = v48 * v49;
        a3[v47] = v50;
        v12[v47] = v49 - v35[v47];
        ++v47;
      }

      while (a6 != v47);
LABEL_27:
      a3 = (a3 + v26);
      ++v10;
      v23 = v33 - 1;
      if (!v33)
      {
        return;
      }
    }

    v37 = 0;
LABEL_33:
    v38 = v169;
LABEL_34:
    v39 = &v12[v37];
    v40 = &v34[v37];
    v41 = v37;
    v42 = &v35[v37];
    do
    {
      v43 = *v40++;
      v44 = vaddq_f64(*v39, v43);
      *&a3[v41] = vcvt_f32_f64(vmulq_n_f64(v44, v38));
      v45 = *v42++;
      *v39++ = vsubq_f64(v44, v45);
      v37 += 2;
      v41 += 2;
    }

    while (v37 <= v25);
    goto LABEL_36;
  }

  if (a6 >= 2)
  {
    if ((v25 & 0x7FFFFFFE) + 3 <= a6)
    {
      v88 = a6;
    }

    else
    {
      v88 = (v25 & 0x7FFFFFFE) + 3;
    }

    v89 = (8 * (a6 - 2)) & 0x3FFFFFFF0;
    v90 = 8 * v88 - v89;
    v91 = v88 - (v25 & 0x7FFFFFFE) - 2;
    v92 = v89 + 16;
    v93 = (v12 + v89 + 16);
    v94 = (v25 >> 1) + 1;
    v95 = v91 & 0xFFFFFFFFFFFFFFFCLL;
    while (1)
    {
      v96 = v23;
      v97 = *v10;
      v98 = v10[v24];
      if (v25 <= 5)
      {
        break;
      }

      v99 = 0;
      v115 = v12 < (v98 + v92) && v98 < v93;
      v101 = 2;
      if (v97 < v93 && v12 < (v97 + v92))
      {
        v100 = 0;
LABEL_85:
        v102 = v99 - 1;
        v103 = v101 - 2;
        v104 = &v98[v100];
        v105 = v100;
        v106 = &v97[v100];
        v107 = &v12[v100];
        do
        {
          v108 = *v106++;
          v109 = vaddq_f64(*v107, v108);
          *&a3[v105] = vcvt_f32_f64(v109);
          v110 = *v104++;
          *v107++ = vsubq_f64(v109, v110);
          v100 += 2;
          ++v102;
          v103 += 2;
          v105 += 2;
        }

        while (v100 <= v25);
        goto LABEL_87;
      }

      v100 = 0;
      if (v115)
      {
        goto LABEL_85;
      }

      v117 = v94 & 0x7FFFFFFC;
      v118 = v10[v24];
      v119 = *v10;
      v120 = v12;
      v121 = a3;
      do
      {
        v122 = v119[2];
        v123 = v119[3];
        v124 = *v119;
        v125 = v119[1];
        v119 += 4;
        v126 = vaddq_f64(v120[1], v125);
        v127 = vaddq_f64(*v120, v124);
        v128 = vaddq_f64(v120[3], v123);
        v129 = vaddq_f64(v120[2], v122);
        v172.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vzip1q_s64(v127, v126)), vzip1q_s64(v129, v128));
        v172.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vzip2q_s64(v127, v126)), vzip2q_s64(v129, v128));
        vst2q_f32(v121, v172);
        v121 += 8;
        v130 = v118[2];
        v131 = v118[3];
        v132 = *v118;
        v133 = v118[1];
        v118 += 4;
        v120[2] = vsubq_f64(v129, v130);
        v120[3] = vsubq_f64(v128, v131);
        *v120 = vsubq_f64(v127, v132);
        v120[1] = vsubq_f64(v126, v133);
        v120 += 4;
        v117 -= 4;
      }

      while (v117);
      v99 = v94 & 0x7FFFFFFC;
      v101 = (8 * ((v99 >> 2) & 0x1FFFFFFF)) | 2;
      v100 = 2 * v99;
      v102 = v99 - 1;
      v103 = v100;
      if (v94 != v99)
      {
        goto LABEL_85;
      }

LABEL_87:
      if (v100 < a6)
      {
        if (v91 <= 3 || ((v134 = 16 * v102, v135 = 16 * v102 + 16, v136 = v12 + v135, v137 = v90 + v134, v138 = v12 + v137, v139 = v97 + v135, v140 = v97 + v137, v141 = v98 + v135, v136 < v98 + v137) ? (v142 = v141 >= v138) : (v142 = 1), v142 ? (v143 = 0) : (v143 = 1), v139 < v138 ? (v144 = v136 >= v140) : (v144 = 1), !v144 || (v143 & 1) != 0))
        {
          v111 = v103;
        }

        else
        {
          v111 = v103 + v95;
          v145 = v103;
          v146 = &v12[v103];
          v147 = &v97[v103];
          v148 = v103;
          v149 = &v98[v145];
          v150 = v91 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v151 = *v147;
            v152 = v147[1];
            v147 += 2;
            v153 = vaddq_f64(v146[1], v152);
            v154 = vaddq_f64(*v146, v151);
            *&a3[v148] = vcvt_hight_f32_f64(vcvt_f32_f64(v154), v153);
            v155 = *v149;
            v156 = v149[1];
            v149 += 2;
            *v146 = vsubq_f64(v154, v155);
            v146[1] = vsubq_f64(v153, v156);
            v146 += 2;
            v148 += 4;
            v150 -= 4;
          }

          while (v150);
          if (v91 == v95)
          {
            goto LABEL_82;
          }
        }

        do
        {
          v112 = v12[v111] + v97[v111];
          v113 = v112;
          a3[v111] = v113;
          v12[v111] = v112 - v98[v111];
          ++v111;
        }

        while (v111 < a6);
      }

LABEL_82:
      a3 = (a3 + v26);
      ++v10;
      v23 = v96 - 1;
      if (!v96)
      {
        return;
      }
    }

    v99 = 0;
    v100 = 0;
    v101 = 2;
    goto LABEL_85;
  }

  if (a6 == 1)
  {
    v83 = *v12;
    do
    {
      v84 = *(v10 + 8 - 8 * v16);
      v85 = *v10++;
      v86 = v83 + *v85;
      v87 = v86;
      *a3 = v87;
      v83 = v86 - *v84;
      *v12 = v83;
      a3 = (a3 + a4);
      --a5;
    }

    while (a5);
  }
}

void sub_10036ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036EDB4(void *a1)
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

uint64_t sub_10036EE38(void *a1)
{
  *a1 = off_10047B668;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036EE9C(void *a1)
{
  *a1 = off_10047B668;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036EF10(uint64_t a1, void *a2, double *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v170 = *(a1 + 16);
  v14 = (*(a1 + 40) - v12) >> 2;
  if (v14 == a6)
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      v16 = *(a1 + 8);
      if (v15 != v16 - 1)
      {
        v171[0] = 0;
        v171[1] = 0;
        v17 = sub_1002A80E0(v171, 19);
        *(v17 + 15) = 825058682;
        *v17 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v171, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
      }

      v10 = &a2[v16 - 1];
      goto LABEL_36;
    }
  }

  else
  {
    if (a6 <= v14)
    {
      if (a6 < v14)
      {
        *(a1 + 40) = v12 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v14);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
  }

  bzero(v12, 4 * a6);
  v18 = *(a1 + 24);
  v19 = *(a1 + 8);
  if (v18 >= v19 - 1)
  {
    goto LABEL_36;
  }

  if (a6 < 1)
  {
    v10 += (v19 - v18 - 2) + 1;
    *(a1 + 24) = v19 - 1;
    goto LABEL_36;
  }

  if (a6 >= 8)
  {
    v20 = 4 * a6;
    while (1)
    {
      v24 = *v10;
      if (v12 >= *v10 + v20 || v24 >= &v12->i8[v20])
      {
        v26 = v24 + 1;
        v27 = a6 & 0x7FFFFFF8;
        v28 = v12 + 1;
        do
        {
          v29 = vaddq_s32(*v28, *v26);
          v28[-1] = vaddq_s32(v28[-1], v26[-1]);
          *v28 = v29;
          v26 += 2;
          v28 += 2;
          v27 -= 8;
        }

        while (v27);
        v30 = a6 & 0x7FFFFFF8;
        if (v30 == a6)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = &v24->i32[v30];
      v32 = &v12->i32[v30];
      v33 = a6 - v30;
      do
      {
        v34 = *v31++;
        *v32++ += v34;
        --v33;
      }

      while (v33);
LABEL_23:
      v23 = *(a1 + 24) + 1;
      *(a1 + 24) = v23;
      ++v10;
      if (v23 >= *(a1 + 8) - 1)
      {
        goto LABEL_36;
      }
    }
  }

  do
  {
    v22 = *v10;
    v12->i32[0] += **v10;
    if (a6 != 1)
    {
      v12->i32[1] += v22->i32[1];
      if (a6 != 2)
      {
        v12->i32[2] += v22->i32[2];
        if (a6 != 3)
        {
          v12->i32[3] += v22->i32[3];
          if (a6 != 4)
          {
            v12[1].i32[0] += v22[1].i32[0];
            if (a6 != 5)
            {
              v12[1].i32[1] += v22[1].i32[1];
              if (a6 != 6)
              {
                v12[1].i32[2] += v22[1].i32[2];
              }
            }
          }
        }
      }
    }

    v21 = *(a1 + 24) + 1;
    *(a1 + 24) = v21;
    ++v10;
  }

  while (v21 < *(a1 + 8) - 1);
LABEL_36:
  if (!a5)
  {
    return;
  }

  v35 = a5 - 1;
  v36 = (a6 - 2);
  v37 = a4;
  if (v170 != 1.0)
  {
    v38 = 4 * a6;
    v39 = v12->u64 + v38;
    if (v36 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v36;
    }

    v41 = ((4 * v40) & 0x1FFFFFFF8) + 8;
    v42 = (v12 + v41);
    v43 = (v40 >> 1) + 1;
    while (1)
    {
      v44 = v35;
      v45 = *v10;
      v46 = v10[1 - *(a1 + 8)];
      if (a6 < 2)
      {
        v47 = 0;
        if (a6 <= 0)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }

      if (v36 < 6)
      {
        break;
      }

      v48 = 0;
      v63 = v12 < v46 + v41 && v46 < v42;
      if (v45 < v42 && v12 < &v45->i8[v41])
      {
        goto LABEL_48;
      }

      v49 = v170;
      if (v63)
      {
        goto LABEL_49;
      }

      v65 = v43 & 0x7FFFFFFC;
      v66 = v10[1 - *(a1 + 8)];
      v67 = *v10;
      v68 = v12;
      v69 = a3;
      do
      {
        v70 = *v67;
        v71 = v67[1];
        v67 += 2;
        v72 = vaddq_s32(v71, v68[1]);
        v73 = vaddq_s32(v70, *v68);
        v74 = vuzp1q_s32(v73, v72);
        v75 = vuzp2q_s32(v73, v72);
        v76.i64[0] = v74.i32[0];
        v76.i64[1] = v74.i32[1];
        v77 = vcvtq_f64_s64(v76);
        v76.i64[0] = v74.i32[2];
        v76.i64[1] = v74.i32[3];
        v78 = vcvtq_f64_s64(v76);
        v172.val[0] = vmulq_n_f64(v77, v170);
        v76.i64[0] = v75.i32[0];
        v76.i64[1] = v75.i32[1];
        v172.val[1] = vmulq_n_f64(vcvtq_f64_s64(v76), v170);
        v173.val[0] = vmulq_n_f64(v78, v170);
        v76.i64[0] = v75.i32[2];
        v76.i64[1] = v75.i32[3];
        v79 = v69 + 8;
        vst2q_f64(v69, v172);
        v80 = v69 + 4;
        v173.val[1] = vmulq_n_f64(vcvtq_f64_s64(v76), v170);
        vst2q_f64(v80, v173);
        v82 = *v66;
        v81 = v66[1];
        v66 += 2;
        *v68 = vsubq_s32(v73, v82);
        v68[1] = vsubq_s32(v72, v81);
        v68 += 2;
        v69 = v79;
        v65 -= 4;
      }

      while (v65);
      v48 = 2 * (v43 & 0x7FFFFFFC);
      if (v43 != (v43 & 0x7FFFFFFC))
      {
        goto LABEL_49;
      }

LABEL_51:
      v47 = v48;
      if (v48 >= a6)
      {
        goto LABEL_42;
      }

LABEL_52:
      v58 = a6 - v47;
      if (v58 <= 3 || ((v83 = 4 * v47, v84 = &v12->i32[v47], v84 < v46 + v38) ? (v85 = v46 + 4 * v47 >= v39) : (v85 = 1), v85 ? (v86 = 0) : (v86 = 1), v45 + 4 * v47 < v39 ? (v87 = v84 >= &v45->i32[v38 / 4]) : (v87 = 1), !v87 || (v86 & 1) != 0))
      {
        v59 = v47;
        v60 = v170;
      }

      else
      {
        v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + v47;
        v88 = (v12 + v83);
        v89 = (v45 + v83);
        v90 = v47;
        v91 = (v46 + v83);
        v92 = v58 & 0xFFFFFFFFFFFFFFFCLL;
        v60 = v170;
        do
        {
          v93 = *v89++;
          v94 = vaddq_s32(v93, *v88);
          v95.i64[0] = v94.i32[2];
          v95.i64[1] = v94.i32[3];
          v96 = vcvtq_f64_s64(v95);
          v95.i64[0] = v94.i32[0];
          v95.i64[1] = v94.i32[1];
          v97 = &a3[v90];
          v98 = *v91++;
          *v97 = vmulq_n_f64(vcvtq_f64_s64(v95), v170);
          v97[1] = vmulq_n_f64(v96, v170);
          *v88++ = vsubq_s32(v94, v98);
          v90 += 4;
          v92 -= 4;
        }

        while (v92);
        if (v58 == (v58 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_42;
        }
      }

      do
      {
        v61 = v45->i32[v59] + v12->i32[v59];
        a3[v59] = v60 * v61;
        v12->i32[v59] = v61 - *(v46 + 4 * v59);
        ++v59;
      }

      while (a6 != v59);
LABEL_42:
      a3 = (a3 + v37);
      ++v10;
      v35 = v44 - 1;
      if (!v44)
      {
        return;
      }
    }

    v48 = 0;
LABEL_48:
    v49 = v170;
LABEL_49:
    v50 = (v12 + 4 * v48);
    v51 = (v45 + 4 * v48);
    v52 = v48;
    v53 = (v46 + 4 * v48);
    do
    {
      v54 = *v51++;
      v55 = vadd_s32(v54, *v50);
      v56.i64[0] = v55.i32[0];
      v56.i64[1] = v55.i32[1];
      *&a3[v52] = vmulq_n_f64(vcvtq_f64_s64(v56), v49);
      v57 = *v53++;
      *v50++ = vsub_s32(v55, v57);
      v48 += 2;
      v52 += 2;
    }

    while (v48 <= v36);
    goto LABEL_51;
  }

  if (a6 >= 2)
  {
    if ((v36 & 0x7FFFFFFE) + 3 <= a6)
    {
      v103 = a6;
    }

    else
    {
      v103 = (v36 & 0x7FFFFFFE) + 3;
    }

    v104 = (4 * (a6 - 2)) & 0x1FFFFFFF8;
    v105 = 4 * v103 - v104;
    v106 = v103 - (v36 & 0x7FFFFFFE) - 2;
    v107 = v104 + 8;
    v108 = (&v12->u64[1] + v104);
    v109 = (v36 >> 1) + 1;
    v110 = v106 & 0xFFFFFFFFFFFFFFFCLL;
    while (1)
    {
      v111 = v35;
      v112 = *v10;
      v113 = v10[1 - *(a1 + 8)];
      if (v36 <= 5)
      {
        break;
      }

      v114 = 0;
      v130 = v12 < v113 + v107 && v113 < v108;
      v116 = 2;
      if (v112 < v108 && v12 < &v112->i8[v107])
      {
        v115 = 0;
LABEL_100:
        v117 = v114 - 1;
        v118 = v116 - 2;
        v119 = (v113 + 4 * v115);
        v120 = v115;
        v121 = (v112 + 4 * v115);
        v122 = (v12 + 4 * v115);
        do
        {
          v123 = *v121++;
          v124 = vadd_s32(v123, *v122);
          v125.i64[0] = v124.i32[0];
          v125.i64[1] = v124.i32[1];
          *&a3[v120] = vcvtq_f64_s64(v125);
          v126 = *v119++;
          *v122++ = vsub_s32(v124, v126);
          v115 += 2;
          ++v117;
          v118 += 2;
          v120 += 2;
        }

        while (v115 <= v36);
        goto LABEL_102;
      }

      v115 = 0;
      if (v130)
      {
        goto LABEL_100;
      }

      v132 = v109 & 0x7FFFFFFC;
      v133 = v10[1 - *(a1 + 8)];
      v134 = *v10;
      v135 = v12;
      v136 = a3;
      do
      {
        v137 = *v134;
        v138 = v134[1];
        v134 += 2;
        v139 = vaddq_s32(v138, v135[1]);
        v140 = vaddq_s32(v137, *v135);
        v141.i64[0] = v140.i32[0];
        v141.i64[1] = v140.i32[1];
        v142 = vcvtq_f64_s64(v141);
        v141.i64[0] = v139.i32[0];
        v141.i64[1] = v139.i32[1];
        v143 = vcvtq_f64_s64(v141);
        v141.i64[0] = v140.i32[2];
        v141.i64[1] = v140.i32[3];
        v144 = vcvtq_f64_s64(v141);
        v141.i64[0] = v139.i32[2];
        v141.i64[1] = v139.i32[3];
        v136[2] = v143;
        v136[3] = vcvtq_f64_s64(v141);
        *v136 = v142;
        v136[1] = v144;
        v136 += 4;
        v145 = *v133;
        v146 = v133[1];
        v133 += 2;
        *v135 = vsubq_s32(v140, v145);
        v135[1] = vsubq_s32(v139, v146);
        v135 += 2;
        v132 -= 4;
      }

      while (v132);
      v114 = v109 & 0x7FFFFFFC;
      v116 = (8 * ((v114 >> 2) & 0x1FFFFFFF)) | 2;
      v115 = 2 * v114;
      v117 = v114 - 1;
      v118 = v115;
      if (v109 != v114)
      {
        goto LABEL_100;
      }

LABEL_102:
      if (v115 < a6)
      {
        if (v106 <= 3 || ((v147 = 8 * v117, v148 = 8 * v117 + 8, v149 = &v12->i8[v148], v150 = v105 + v147, v151 = &v12->i8[v150], v152 = &v112->i8[v148], v153 = &v112->i8[v150], v154 = v113 + v148, v149 < v113 + v150) ? (v155 = v154 >= v151) : (v155 = 1), v155 ? (v156 = 0) : (v156 = 1), v152 < v151 ? (v157 = v149 >= v153) : (v157 = 1), !v157 || (v156 & 1) != 0))
        {
          v127 = v118;
        }

        else
        {
          v127 = v118 + v110;
          v158 = 4 * v118;
          v159 = (v12 + 4 * v118);
          v160 = (v112 + 4 * v118);
          v161 = v118;
          v162 = (v113 + v158);
          v163 = v106 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v164 = *v160++;
            v165 = vaddq_s32(v164, *v159);
            v166.i64[0] = v165.i32[0];
            v166.i64[1] = v165.i32[1];
            v167 = vcvtq_f64_s64(v166);
            v166.i64[0] = v165.i32[2];
            v166.i64[1] = v165.i32[3];
            v168 = &a3[v161];
            v169 = *v162++;
            *v168 = v167;
            v168[1] = vcvtq_f64_s64(v166);
            *v159++ = vsubq_s32(v165, v169);
            v161 += 4;
            v163 -= 4;
          }

          while (v163);
          if (v106 == v110)
          {
            goto LABEL_97;
          }
        }

        do
        {
          v128 = v112->i32[v127] + v12->i32[v127];
          a3[v127] = v128;
          v12->i32[v127] = v128 - *(v113 + 4 * v127);
          ++v127;
        }

        while (v127 < a6);
      }

LABEL_97:
      a3 = (a3 + v37);
      ++v10;
      v35 = v111 - 1;
      if (!v111)
      {
        return;
      }
    }

    v114 = 0;
    v115 = 0;
    v116 = 2;
    goto LABEL_100;
  }

  if (a6 == 1)
  {
    v99 = v12->i32[0];
    v100 = v10 + 1;
    do
    {
      v101 = v100[-*(a1 + 8)];
      v102 = **(v100 - 1) + v99;
      *a3 = v102;
      v99 = v102 - *v101;
      v12->i32[0] = v99;
      a3 = (a3 + a4);
      ++v100;
      --a5;
    }

    while (a5);
  }
}

void sub_10036F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036F7D4(void *a1)
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

uint64_t sub_10036F858(void *a1)
{
  *a1 = off_10047B6F0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036F8BC(void *a1)
{
  *a1 = off_10047B6F0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036F930(uint64_t a1, double **a2, double *a3, int a4, int a5, int a6)
{
  v9 = a2;
  v12 = (a1 + 32);
  v11 = *(a1 + 32);
  v181 = *(a1 + 16);
  v13 = (*(a1 + 40) - v11) >> 3;
  if (v13 != a6)
  {
    if (a6 <= v13)
    {
      if (a6 < v13)
      {
        *(a1 + 40) = &v11[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v13);
      v11 = *v12;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v14 = *(a1 + 24);
  if (!v14)
  {
LABEL_11:
    bzero(v11, 8 * a6);
    v15 = *(a1 + 8);
    v17 = v15 - 1;
    v18 = *(a1 + 24);
    if (v18 >= v15 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v9 += (v15 - v18 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v17;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v19 = *v11;
      v20 = ~v18 + v15;
      do
      {
        v21 = *v9;
        v19 = **v9 + v19;
        *v11 = v19;
        if (a6 != 1)
        {
          v11[1] = v21[1] + v11[1];
          if (a6 != 2)
          {
            v11[2] = v21[2] + v11[2];
          }
        }

        ++v9;
        --v20;
      }

      while (v20);
      goto LABEL_20;
    }

    v157 = a6;
    while (1)
    {
      v158 = *v9;
      if (v11 >= &(*v9)[v157] || v158 >= &v11[v157])
      {
        v160 = v158 + 1;
        v161 = a6 & 0x7FFFFFFC;
        v162 = (v11 + 2);
        do
        {
          v163 = vaddq_f64(*v160, *v162);
          v162[-1] = vaddq_f64(v160[-1], v162[-1]);
          *v162 = v163;
          v160 += 2;
          v162 += 2;
          v161 -= 4;
        }

        while (v161);
        v164 = a6 & 0x7FFFFFFC;
        if (v164 == a6)
        {
          goto LABEL_220;
        }
      }

      else
      {
        v164 = 0;
      }

      v165 = &v158->f64[v164];
      v166 = &v11[v164];
      v167 = a6 - v164;
      do
      {
        v168 = *v165++;
        *v166 = v168 + *v166;
        ++v166;
        --v167;
      }

      while (v167);
LABEL_220:
      ++v18;
      ++v9;
      if (v18 == v17)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *(a1 + 8);
  if (v14 != v15 - 1)
  {
    v183[0] = 0;
    v183[1] = 0;
    v16 = sub_1002A80E0(v183, 19);
    *(v16 + 15) = 825058682;
    *v16 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v183, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v9 = &a2[v15 - 1];
LABEL_21:
  if (!a5)
  {
    return;
  }

  v22 = (a5 - 1);
  v23 = 1 - v15;
  v24 = (a6 - 2);
  if (v181 != 1.0)
  {
    v25 = 0;
    v26 = a6;
    v27 = &v11[v26];
    if (v24 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v24;
    }

    v29 = ((8 * v28) & 0x3FFFFFFF0) + 16;
    v30 = (v28 >> 1) + 1;
    v177 = (v11 + v29);
    v179 = (a3 + a4 * v22 + v29);
    v32 = (v11 + v29) > a3 && v11 < (a3 + a4 * v22 + v29);
    v174 = v32;
    v170 = v30;
    v172 = v30 & 0x7FFFFFFE;
    v33 = a3;
    while (1)
    {
      v34 = v22;
      v35 = *v9;
      v36 = v9[v23];
      if (a6 < 2)
      {
        v37 = 0;
        if (a6 <= 0)
        {
          goto LABEL_33;
        }

        goto LABEL_43;
      }

      if (v24 < 6)
      {
        break;
      }

      v37 = 0;
      v44 = v36 + v29;
      if ((v35 + v29) > a3 && v35 < v179 || a4 < 0)
      {
        v47 = 1;
      }

      else
      {
        v47 = v174;
      }

      v49 = v11 < (v35 + v29) && v35 < v177;
      v51 = v11 < v44 && v36 < v177;
      v52 = v36 < v179 && v44 > a3;
      if (v52 || (v47 & 1) != 0 || v49)
      {
        goto LABEL_39;
      }

      v38 = v181;
      if (v51)
      {
        goto LABEL_40;
      }

      v53 = 0;
      v54 = v172;
      do
      {
        v55 = &v11[v53];
        v56 = vaddq_f64(*&v11[v53 + 2], *&v35[v53 + 2]);
        v57 = vaddq_f64(*&v11[v53], *&v35[v53]);
        v58 = &v33[v53];
        *v58 = vmulq_n_f64(v57, v181);
        v58[1] = vmulq_n_f64(v56, v181);
        v59 = vsubq_f64(v56, *&v36[v53 + 2]);
        *v55 = vsubq_f64(v57, *&v36[v53]);
        v55[1] = v59;
        v53 += 4;
        v54 -= 2;
      }

      while (v54);
      v37 = 2 * v172;
      if (v170 != v172)
      {
        goto LABEL_40;
      }

LABEL_42:
      v37 = v37;
      if (v37 >= a6)
      {
        goto LABEL_33;
      }

LABEL_43:
      v41 = a6 - v37;
      if (v41 <= 7 || ((v60 = (&a3[v26] + v25 * a4), v61 = v37, v62 = &v33[v37], v63 = &v11[v37], v64 = &v35[v37], v65 = &v36[v37], v66 = &v36[v26], v62 < &v35[v26]) ? (v67 = v64 >= v60) : (v67 = 1), v67 ? (v68 = 0) : (v68 = 1), v62 < v66 ? (v69 = v65 >= v60) : (v69 = 1), v69 ? (v70 = 0) : (v70 = 1), v63 < &v35[v26] ? (v71 = v64 >= v27) : (v71 = 1), v71 ? (v72 = 0) : (v72 = 1), v63 < v66 ? (v73 = v65 >= v27) : (v73 = 1), v73 ? (v74 = 0) : (v74 = 1), v63 < v60 ? (v75 = v62 >= v27) : (v75 = 1), !v75 || (v68 & 1) != 0 || (v70 & 1) != 0 || (v72 & 1) != 0 || (v74 & 1) != 0))
      {
        v42 = v181;
      }

      else
      {
        v37 += v41 & 0xFFFFFFFFFFFFFFFELL;
        v76 = v41 & 0xFFFFFFFFFFFFFFFELL;
        v42 = v181;
        do
        {
          v77 = vaddq_f64(*&v11[v61], *&v35[v61]);
          *&v33[v61] = vmulq_n_f64(v77, v181);
          *&v11[v61] = vsubq_f64(v77, *&v36[v61]);
          v61 += 2;
          v76 -= 2;
        }

        while (v76);
        if (v41 == (v41 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_33;
        }
      }

      do
      {
        v43 = v11[v37] + v35[v37];
        v33[v37] = v42 * v43;
        v11[v37] = v43 - v36[v37];
        ++v37;
      }

      while (a6 != v37);
LABEL_33:
      v33 = (v33 + a4);
      ++v9;
      LODWORD(v22) = v34 - 1;
      ++v25;
      if (!v34)
      {
        return;
      }
    }

    v37 = 0;
LABEL_39:
    v38 = v181;
LABEL_40:
    v39 = v37;
    do
    {
      v40 = vaddq_f64(*&v11[v39], *&v35[v39]);
      *&v33[v39] = vmulq_n_f64(v40, v38);
      *&v11[v39] = vsubq_f64(v40, *&v36[v39]);
      v37 += 2;
      v39 += 2;
    }

    while (v37 <= v24);
    goto LABEL_42;
  }

  if (a6 >= 2)
  {
    v82 = 0;
    if ((v24 & 0x7FFFFFFE) + 3 <= a6)
    {
      v83 = a6;
    }

    else
    {
      v83 = (v24 & 0x7FFFFFFE) + 3;
    }

    v84 = (8 * (a6 - 2)) & 0x3FFFFFFF0;
    v182 = 8 * v83 - v84;
    v85 = v83 - (v24 & 0x7FFFFFFE) - 2;
    v86 = v84 + 16;
    v87 = a3 + a4 * v22 + v84 + 16;
    v88 = (v11 + v86);
    v89 = (v24 >> 1) + 1;
    v91 = (v11 + v86) > a3 && v11 < v87;
    v92 = v89 & 0x7FFFFFFE;
    v178 = v86;
    v175 = (2 * v89) | 2;
    v176 = v92;
    v173 = 2 * v92;
    v171 = v92 - 1;
    v169 = v85 & 0xFFFFFFFFFFFFFFFCLL;
    v93 = a3 + 2;
    v94 = a3;
    while (1)
    {
      v95 = v22;
      v96 = *v9;
      v97 = v9[v23];
      if (v24 <= 9)
      {
        break;
      }

      v98 = 0;
      v106 = v97 + v86;
      v109 = (v96 + v86) > a3 && v96 < v87 || a4 < 0 || v91;
      v111 = v11 < (v96 + v86) && v96 < v88;
      v113 = v11 < v106 && v97 < v88;
      v114 = v97 < v87 && v106 > a3;
      if (v114 || (v109 & 1) != 0 || v111)
      {
        v100 = 2;
        v99 = 0;
LABEL_134:
        v101 = v98 - 1;
        v102 = v100 - 2;
        v103 = v99;
        do
        {
          v104 = vaddq_f64(*&v11[v103], *&v96[v103]);
          *&v94[v103] = v104;
          *&v11[v103] = vsubq_f64(v104, *(v97 + v103 * 8));
          v99 += 2;
          ++v101;
          v102 += 2;
          v103 += 2;
        }

        while (v99 <= v24);
        goto LABEL_136;
      }

      v100 = 2;
      v99 = 0;
      if (v113)
      {
        goto LABEL_134;
      }

      v115 = 0;
      v116 = v92;
      do
      {
        v117 = &v11[v115];
        v118 = vaddq_f64(*&v11[v115], *&v96[v115]);
        v119 = vaddq_f64(*&v11[v115 + 2], *&v96[v115 + 2]);
        v120 = &v94[v115];
        *v120 = v118;
        v120[1] = v119;
        v121 = vsubq_f64(v119, *(v97 + v115 * 8 + 16));
        *v117 = vsubq_f64(v118, *(v97 + v115 * 8));
        v117[1] = v121;
        v115 += 4;
        v116 -= 2;
      }

      while (v116);
      v98 = v92;
      v102 = v173;
      v100 = v175;
      v99 = v173;
      v101 = v171;
      if ((v24 >> 1) + 1 != v92)
      {
        goto LABEL_134;
      }

LABEL_136:
      if (v99 < a6)
      {
        if (v85 <= 9)
        {
          v105 = v102;
          goto LABEL_217;
        }

        v122 = v88;
        v123 = v87;
        v124 = v91;
        v125 = v85;
        v126 = &a3[2 * v101] + v82 * a4;
        v127 = v126 + 16;
        v128 = v126 + v182;
        v129 = 16 * v101 + 16;
        v130 = v11 + v129;
        v131 = v182 + 16 * v101;
        v132 = v11 + v131;
        v133 = v96 + v129;
        v134 = v96 + v131;
        v135 = v97 + v129;
        v136 = v97 + v131;
        v138 = v127 < v96 + v131 && v133 < v128;
        v140 = v127 < v136 && v135 < v128;
        v142 = v130 < v134 && v133 < v132;
        v144 = v130 < v136 && v135 < v132;
        if (v130 < v128 && v127 < v132)
        {
          v105 = v102;
          v85 = v125;
          goto LABEL_213;
        }

        v85 = v125;
        if (v138)
        {
          v105 = v102;
LABEL_213:
          v91 = v124;
        }

        else
        {
          v91 = v124;
          if (!v140)
          {
            v87 = v123;
            if (!v142)
            {
              v88 = v122;
              if (!v144)
              {
                v146 = v169;
                v105 = v102 + v169;
                v147 = v102;
                v148 = (v97 + 8 * v102 + 16);
                v149 = &v11[v102 + 2];
                v150 = &v93[v147];
                v151 = &v96[v147 + 2];
                v92 = v176;
                v86 = v178;
                do
                {
                  v152 = vaddq_f64(v149[-1], v151[-1]);
                  v153 = vaddq_f64(*v149, *v151);
                  v150[-1] = v152;
                  *v150 = v153;
                  v154 = vsubq_f64(v152, v148[-1]);
                  v155 = vsubq_f64(v153, *v148);
                  v148 += 2;
                  v149[-1] = v154;
                  *v149 = v155;
                  v149 += 2;
                  v150 += 2;
                  v151 += 2;
                  v146 -= 4;
                }

                while (v146);
                if (v85 == v169)
                {
                  goto LABEL_131;
                }

                goto LABEL_217;
              }

              v105 = v102;
              goto LABEL_216;
            }

            v105 = v102;
LABEL_215:
            v88 = v122;
LABEL_216:
            v92 = v176;
            v86 = v178;
            do
            {
LABEL_217:
              v156 = v11[v105] + v96[v105];
              v94[v105] = v156;
              v11[v105] = v156 - *(v97 + 8 * v105);
              ++v105;
            }

            while (v105 < a6);
            goto LABEL_131;
          }

          v105 = v102;
        }

        v87 = v123;
        goto LABEL_215;
      }

LABEL_131:
      v94 = (v94 + a4);
      ++v9;
      LODWORD(v22) = v95 - 1;
      ++v82;
      v93 = (v93 + a4);
      if (!v95)
      {
        return;
      }
    }

    v98 = 0;
    v99 = 0;
    v100 = 2;
    goto LABEL_134;
  }

  if (a6 == 1)
  {
    v78 = *v11;
    do
    {
      v79 = *(v9 + 8 - 8 * v15);
      v80 = *v9++;
      v81 = v78 + *v80;
      *a3 = v81;
      v78 = v81 - *v79;
      *v11 = v78;
      a3 = (a3 + a4);
      --a5;
    }

    while (a5);
  }
}

void sub_100370248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100370280(void *a1)
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

double sub_100370304(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  sub_1002ACE7C(v158, &off_10047B768);
  if (sub_100271148(a1) == 0x10000)
  {
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(v10 + 16);
    v150 = *v10;
    v151 = v12;
    v152 = *(v10 + 32);
    v13 = *(v10 + 56);
    v153 = *(v10 + 48);
    v154 = v13;
    v155 = &v150 + 1;
    v156 = v157;
    v157[0] = 0;
    v157[1] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v10 + 4) <= 2)
      {
LABEL_4:
        v14 = *(v10 + 72);
        v15 = v156;
        *v156 = *v14;
        v15[1] = v14[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v11) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v150) = 0;
    sub_100269B58(&v150, v10);
  }

  else
  {
    sub_1002703C0(a1, -1, &v150);
  }

LABEL_8:
  v16 = a3 & 0xFFFFFFF8;
  if ((a3 & 0xFFFFFFF8) == 8)
  {
    if ((v150 & 0xFFF) != 0)
    {
      v160 = 0;
      v161 = 0;
      qmemcpy(sub_1002A80E0(&v160, 55), "src.type() == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3))", 55);
      sub_1002A8980(-215, &v160, "threshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1406);
    }

    v29 = v155->u32[1];
    if ((v150 & 0x4000) != 0)
    {
      v30 = 1;
    }

    else
    {
      v30 = v155->u32[0];
    }

    if ((v150 & 0x4000) != 0)
    {
      v31 = v155->i32[0] * v29;
    }

    else
    {
      v31 = v29;
    }

    if ((v150 & 0x4000) != 0)
    {
      v32 = v155->i32[0] * v29;
    }

    else
    {
      v32 = v157[0];
    }

    bzero(&v160, 0x400uLL);
    if (v30 >= 1)
    {
      v33 = v151;
      v34 = (v31 - 4);
      if (v31 >= 4)
      {
        for (i = 0; i != v30; ++i)
        {
          for (j = 0; j <= v34; j += 4)
          {
            v107 = *(v33 + j + 1);
            ++v160.i32[*(v33 + j)];
            ++v160.i32[v107];
            v108 = *(v33 + j + 3);
            ++v160.i32[*(v33 + j + 2)];
            ++v160.i32[v108];
          }

          v109 = (v34 & 0x7FFFFFFC) + 4;
          if (v31 > j)
          {
            do
            {
              ++v160.i32[*(v33 + v109++)];
            }

            while (v109 < v31);
          }

          v33 += v32;
        }
      }

      else if (v31 >= 1)
      {
        v35 = (v151 + 2);
        v36 = v30;
        do
        {
          ++v160.i32[*(v35 - 2)];
          if (v31 != 1)
          {
            ++v160.i32[*(v35 - 1)];
            if (v31 != 2)
            {
              ++v160.i32[*v35];
            }
          }

          v35 += v32;
          --v36;
        }

        while (v36);
      }
    }

    v110 = 0;
    v111 = 0.0;
    do
    {
      v111 = v111 + v110 * v160.i32[v110] + (v110 + 1) * v160.i32[v110 + 1];
      v110 += 2;
    }

    while (v110 != 256);
    v112 = 0;
    v113 = 1.0 / (v31 * v30);
    v114 = v113 * v111;
    a4 = 0.0;
    v115 = 0.0;
    v116 = 0.0;
    v117 = 0.0;
    do
    {
      v118 = v113 * v160.i32[v112];
      v116 = v116 * v117;
      v117 = v117 + v118;
      v119 = 1.0 - v117;
      if (1.0 - v117 >= v117)
      {
        v120 = v117;
      }

      else
      {
        v120 = 1.0 - v117;
      }

      if (v120 >= 0.00000011920929)
      {
        v121 = v117 >= v119 ? v117 : 1.0 - v117;
        if (v121 <= 0.999999881)
        {
          v116 = (v116 + v112 * v118) / v117;
          v122 = (v116 - (v114 - v117 * v116) / v119) * (v117 * v119 * (v116 - (v114 - v117 * v116) / v119));
          if (v122 > v115)
          {
            v115 = v122;
            a4 = v112;
          }
        }
      }

      ++v112;
    }

    while (v112 != 256);
  }

  else
  {
    if (v16 != 16)
    {
      if (v16 == 24)
      {
        v160 = 0;
        v161 = 0;
        qmemcpy(sub_1002A80E0(&v160, 57), "automatic_thresh != (CV_THRESH_OTSU | CV_THRESH_TRIANGLE)", 57);
        sub_1002A8980(-215, &v160, "threshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1403);
      }

      goto LABEL_81;
    }

    v17 = v150;
    if ((v150 & 0xFFF) != 0)
    {
      v160 = 0;
      v161 = 0;
      qmemcpy(sub_1002A80E0(&v160, 55), "src.type() == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3))", 55);
      sub_1002A8980(-215, &v160, "threshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1411);
    }

    v18 = v157[0];
    v19 = v155->u32[1];
    v20 = v155->i32[0] * v19;
    if ((v150 & 0x4000) != 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = v155->u32[0];
    }

    if ((v150 & 0x4000) != 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    bzero(&v160, 0x400uLL);
    if (v21 >= 1)
    {
      v23 = 0;
      if ((v17 & 0x4000) != 0)
      {
        v24 = v20;
      }

      else
      {
        v24 = v18;
      }

      v25 = v151;
      while (v22 < 4)
      {
        v26 = 0;
        if (v22 > 0)
        {
          goto LABEL_32;
        }

LABEL_25:
        ++v23;
        v25 += v24;
        if (v23 == v21)
        {
          goto LABEL_53;
        }
      }

      v26 = 0;
      do
      {
        v27 = *(v25 + v26 + 1);
        ++v160.i32[*(v25 + v26)];
        ++v160.i32[v27];
        v28 = *(v25 + v26 + 3);
        ++v160.i32[*(v25 + v26 + 2)];
        ++v160.i32[v28];
        v26 += 4;
      }

      while (v26 <= v22 - 4);
      v26 = v26;
      if (v26 >= v22)
      {
        goto LABEL_25;
      }

      do
      {
LABEL_32:
        ++v160.i32[*(v25 + v26++)];
      }

      while (v22 != v26);
      goto LABEL_25;
    }

LABEL_53:
    v37 = 0;
    v38 = -1;
    while (v160.i32[v37] <= 0)
    {
      ++v37;
      ++v38;
      if (v37 == 256)
      {
        goto LABEL_58;
      }
    }

    if (v37 * 4)
    {
      goto LABEL_59;
    }

LABEL_58:
    v38 = 0;
LABEL_59:
    v39 = 255;
    while (v160.i32[v39] <= 0)
    {
      if (!--v39)
      {
        v39 = 1;
        goto LABEL_65;
      }
    }

    if (v39 <= 0xFE)
    {
      ++v39;
    }

LABEL_65:
    v40 = 0;
    v41 = 0;
    v42 = 0;
    do
    {
      if (v160.i32[v40] > v41)
      {
        v42 = v40;
        v41 = v160.u32[v40];
      }

      ++v40;
    }

    while (v40 != 256);
    v43 = v42 - v38;
    v44 = v39 - v42;
    if (v42 - v38 < (v39 - v42))
    {
      v45 = 0;
      for (k = 255; k != 127; --k)
      {
        v47 = v160.i32[v45];
        v160.i32[v45] = v160.i32[k];
        v160.i32[k] = v47;
        ++v45;
      }

      v38 = 255 - v39;
      v42 = 255 - v42;
    }

    v48 = v38;
    if (v38 < v42)
    {
      v49 = (v38 - v42);
      v50 = v38;
      v51 = v42 - v38;
      v52 = v50 + 1;
      v53 = 0.0;
      do
      {
        if (v49 * v160.i32[v52] + v41 * v52 > v53)
        {
          v48 = v52;
          v53 = v49 * v160.i32[v52] + v41 * v52;
        }

        ++v52;
        --v51;
      }

      while (v51);
    }

    v54 = v48 + -1.0;
    if (v43 >= v44)
    {
      a4 = v54;
    }

    else
    {
      a4 = 255.0 - v54;
    }
  }

LABEL_81:
  v160 = vrev64_s32(*v155);
  sub_100275370(a2, &v160, v150 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) == 0x10000)
  {
    v55 = *(a2 + 8);
    v56 = *v55;
    v57 = *(v55 + 16);
    v142 = *v55;
    v143 = v57;
    v144 = *(v55 + 32);
    v58 = *(v55 + 56);
    v145 = *(v55 + 48);
    v146 = v58;
    v147 = &v142 + 8;
    v148 = v149;
    v149[0] = 0;
    v149[1] = 0;
    if (v58)
    {
      atomic_fetch_add((v58 + 20), 1u);
      if (*(v55 + 4) <= 2)
      {
LABEL_84:
        v59 = *(v55 + 72);
        v60 = v148;
        *v148 = *v59;
        v60[1] = v59[1];
        goto LABEL_88;
      }
    }

    else if (SDWORD1(v56) <= 2)
    {
      goto LABEL_84;
    }

    DWORD1(v142) = 0;
    sub_100269B58(&v142, v55);
  }

  else
  {
    sub_1002703C0(a2, -1, &v142);
  }

LABEL_88:
  v61 = a3 & 7;
  v62 = v150 & 7;
  if (v62 <= 4)
  {
    if ((v150 & 7) == 0)
    {
      v65 = a4 - (a4 < a4);
      a4 = v65;
      v66 = rint(a5);
      if (v61 == 2)
      {
        LODWORD(v66) = v65;
      }

      v67 = v66 & ~(v66 >> 31);
      if (v67 >= 255)
      {
        v67 = 255;
      }

      if (v65 < 0xFF)
      {
        v68 = v67;
LABEL_114:
        a5 = v68;
        goto LABEL_115;
      }

      if (v61 >= 2)
      {
        v93 = v61 != 3 || v65 <= 254;
        v94 = !v93;
        v95 = v61 == 4 || v61 == 2;
        v96 = v95 && v65 < 0;
        if (!v96 && !v94)
        {
          goto LABEL_242;
        }
      }

      if (v61 == 1)
      {
        if (v65 <= 254)
        {
          v98 = 0;
        }

        else
        {
          v98 = v67;
        }
      }

      else if (v61)
      {
        v98 = 0;
      }

      else if (v65 <= 254)
      {
        v98 = v67;
      }

      else
      {
        v98 = 0;
      }

LABEL_252:
      v141 = v98;
      v160.i32[0] = -1056833530;
      v161 = &v141;
      v162 = 0x100000001;
      v123 = sub_100276DA4();
      sub_10022CDA0(&v142, &v160, v123);
      goto LABEL_148;
    }

    if (v62 != 2)
    {
      if (v62 == 3)
      {
        v63 = a4 - (a4 < a4);
        a4 = v63;
        v64 = rint(a5);
        if (v61 == 2)
        {
          LODWORD(v64) = v63;
        }

        if (v64 <= -32768)
        {
          LODWORD(v64) = -32768;
        }

        if (v64 >= 0x7FFF)
        {
          LODWORD(v64) = 0x7FFF;
        }

        if ((v63 + 0x8000) < 0xFFFF)
        {
          a5 = v64;
          goto LABEL_115;
        }

        if (v61 < 2 || (v61 == 3 ? (v99 = v63 <= 32766) : (v99 = 1), v99 ? (v100 = 0) : (v100 = 1), v61 != 4 ? (v101 = v61 == 2) : (v101 = 1), v101 ? (v102 = v63 < -32768) : (v102 = 0), !v102 ? (v103 = v100 == 0) : (v103 = 0), !v103))
        {
          if (v61 == 1)
          {
            if (v63 <= 32766)
            {
              v104 = 0;
            }

            else
            {
              v104 = v64;
            }
          }

          else if (v61)
          {
            v104 = 0;
          }

          else if (v63 <= 32766)
          {
            v104 = v64;
          }

          else
          {
            v104 = 0;
          }

          v141 = v104;
          v160.i32[0] = -1056833530;
          v161 = &v141;
          v162 = 0x100000001;
          v124 = sub_100276DA4();
          sub_10022CDA0(&v142, &v160, v124);
          goto LABEL_148;
        }

LABEL_242:
        v160.i32[0] = 33619968;
        v161 = &v142;
        v162 = 0;
        sub_10022B754(&v150, &v160);
        goto LABEL_148;
      }

LABEL_101:
      v160 = 0;
      v161 = 0;
      sub_1002A8980(-210, &v160, "threshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1509);
    }

    v69 = a4 - (a4 < a4);
    a4 = v69;
    v70 = rint(a5);
    if (v61 == 2)
    {
      LODWORD(v70) = v69;
    }

    v71 = v70 & ~(v70 >> 31);
    if (v71 >= 0xFFFF)
    {
      v71 = 0xFFFF;
    }

    if (v69 < 0xFFFF)
    {
      v68 = v71;
      goto LABEL_114;
    }

    if (v61 >= 2)
    {
      if (v61 != 4 && v61 != 2)
      {
        if (v61 != 3 || v69 <= 65534)
        {
          goto LABEL_242;
        }

LABEL_260:
        v98 = 0;
        goto LABEL_252;
      }

      if ((v69 & 0x80000000) == 0)
      {
        goto LABEL_242;
      }
    }

    if (v61 == 1)
    {
      if (v69 <= 65534)
      {
        v98 = 0;
      }

      else
      {
        v98 = v71;
      }

      goto LABEL_252;
    }

    if (!v61)
    {
      if (v69 <= 65534)
      {
        v98 = v71;
      }

      else
      {
        v98 = 0;
      }

      goto LABEL_252;
    }

    goto LABEL_260;
  }

  if (v62 - 5 >= 2)
  {
    goto LABEL_101;
  }

LABEL_115:
  LODWORD(v141) = 0;
  HIDWORD(v141) = DWORD2(v142);
  v133 = v150;
  v134 = v151;
  v135 = v152;
  v136 = v153;
  v137 = v154;
  v138 = &v133 + 8;
  v139 = v140;
  v140[0] = 0;
  v140[1] = 0;
  if (v154)
  {
    atomic_fetch_add((v154 + 20), 1u);
    if (SDWORD1(v150) <= 2)
    {
LABEL_117:
      v72 = v156;
      v73 = v139;
      *v139 = *v156;
      v73[1] = v72[1];
      goto LABEL_120;
    }
  }

  else if (SDWORD1(v150) <= 2)
  {
    goto LABEL_117;
  }

  DWORD1(v133) = 0;
  sub_100269B58(&v133, &v150);
LABEL_120:
  v125 = v142;
  v126 = v143;
  v127 = v144;
  v128 = v145;
  v129 = v146;
  v130 = &v125 + 8;
  v131 = v132;
  v132[0] = 0;
  v132[1] = 0;
  if (!v146)
  {
    if (SDWORD1(v142) <= 2)
    {
      goto LABEL_122;
    }

LABEL_124:
    DWORD1(v125) = 0;
    sub_100269B58(&v125, &v142);
    goto LABEL_125;
  }

  atomic_fetch_add((v146 + 20), 1u);
  if (SDWORD1(v142) > 2)
  {
    goto LABEL_124;
  }

LABEL_122:
  v74 = v148;
  v75 = v131;
  *v131 = *v148;
  v75[1] = v74[1];
LABEL_125:
  sub_100371778(&v160, &v133, &v125, v61, a4, a5);
  if (SDWORD1(v142) >= 3)
  {
    v77 = (v147 + 4);
    v78 = 1;
    v79 = DWORD1(v142) & 0x7FFFFFFE;
    v80 = 1;
    do
    {
      v78 *= *(v77 - 1);
      v80 *= *v77;
      v77 += 2;
      v79 -= 2;
    }

    while (v79);
    v76 = v80 * v78;
    v81 = DWORD1(v142) - (DWORD1(v142) & 0x7FFFFFFE);
    if (v81)
    {
      v82 = &v147[8 * ((DWORD1(v142) >> 1) & 0x3FFFFFFF)];
      do
      {
        v83 = *v82;
        v82 += 4;
        v76 *= v83;
        --v81;
      }

      while (v81);
    }
  }

  else
  {
    v76 = SHIDWORD(v142) * SDWORD2(v142);
  }

  sub_1002829C8(&v141, &v160, vcvtd_n_f64_u64(v76, 0x10uLL));
  sub_100375B64(&v160);
  if (v129 && atomic_fetch_add((v129 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v125);
  }

  v129 = 0;
  v126 = 0u;
  v127 = 0u;
  if (SDWORD1(v125) >= 1)
  {
    v84 = 0;
    v85 = v130;
    do
    {
      *&v85[4 * v84++] = 0;
    }

    while (v84 < SDWORD1(v125));
  }

  if (v131 != v132)
  {
    j__free(v131);
  }

  if (v137 && atomic_fetch_add((v137 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v133);
  }

  v137 = 0;
  v134 = 0u;
  v135 = 0u;
  if (SDWORD1(v133) >= 1)
  {
    v86 = 0;
    v87 = v138;
    do
    {
      *&v87[4 * v86++] = 0;
    }

    while (v86 < SDWORD1(v133));
  }

  if (v139 != v140)
  {
    j__free(v139);
  }

LABEL_148:
  if (v146 && atomic_fetch_add((v146 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v142);
  }

  v146 = 0;
  v143 = 0u;
  v144 = 0u;
  if (SDWORD1(v142) >= 1)
  {
    v88 = 0;
    v89 = v147;
    do
    {
      *&v89[4 * v88++] = 0;
    }

    while (v88 < SDWORD1(v142));
  }

  if (v148 != v149)
  {
    j__free(v148);
  }

  if (v154 && atomic_fetch_add((v154 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v150);
  }

  v154 = 0;
  v151 = 0u;
  v152 = 0u;
  if (SDWORD1(v150) >= 1)
  {
    v90 = 0;
    v91 = v155;
    do
    {
      v91->i32[v90++] = 0;
    }

    while (v90 < SDWORD1(v150));
  }

  if (v156 != v157)
  {
    j__free(v156);
  }

  if (v159)
  {
    sub_1002ACC1C(v158);
  }

  return a4;
}

void sub_10037121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_100006D14(&a35);
  sub_100006D14(&a47);
  sub_1001D8BF4(&a60);
  _Unwind_Resume(a1);
}

void sub_100371300(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  JUMPOUT(0x10037131CLL);
}

void sub_100371324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_100006D14(&a47);
  sub_1001D8BF4(&a60);
  _Unwind_Resume(a1);
}

double sub_100371358(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  sub_10026AD20(a1, 0, 0, 0, &v49);
  sub_10026AD20(a2, 0, 0, 0, &v41);
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = &v33 + 8;
  v39 = v40;
  v40[0] = 0;
  v40[1] = 0;
  if (v45)
  {
    atomic_fetch_add((v45 + 20), 1u);
    if (SDWORD1(v41) <= 2)
    {
LABEL_3:
      v9 = v47;
      v10 = v39;
      *v39 = *v47;
      v10[1] = v9[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v41) <= 2)
  {
    goto LABEL_3;
  }

  DWORD1(v33) = 0;
  sub_100269B58(&v33, &v41);
LABEL_6:
  v11 = v54;
  v12 = *(v54 - 1);
  v13 = v46;
  if (v12 != *(v46 - 1))
  {
    goto LABEL_19;
  }

  if (v12 == 2)
  {
    if (*v54 != *v46 || v54[1] != v46[1])
    {
      goto LABEL_19;
    }
  }

  else if (v12 >= 1)
  {
    while (1)
    {
      v15 = *v11++;
      v14 = v15;
      v16 = *v13++;
      if (v14 != v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_14;
      }
    }

LABEL_19:
    v30 = 0;
    v31 = 0;
    qmemcpy(sub_1002A80E0(&v30, 108), "src.size == dst.size && src.channels() == dst.channels() && (src.depth() == dst.depth() || dst.depth() == 0)", 108);
    sub_1002A8980(-215, &v30, "cvThreshold", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 1596);
  }

LABEL_14:
  if (((v41 ^ v49) & 0xFF8) != 0)
  {
    goto LABEL_19;
  }

  v17 = v41 & 7;
  if ((v49 & 7) != v17 && v17 != 0)
  {
    goto LABEL_19;
  }

  LODWORD(v30) = 16842752;
  v31 = &v49;
  v32 = 0;
  v27 = 33619968;
  v28 = &v41;
  v29 = 0;
  v19 = sub_100370304(&v30, &v27, a3, a4, a5);
  if (v34 != v42)
  {
    LODWORD(v30) = 33619968;
    v31 = &v33;
    v32 = 0;
    sub_10020EF14(&v41, &v30, v33 & 7, 1.0, 0.0);
  }

  if (v37 && atomic_fetch_add((v37 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v33);
  }

  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  if (SDWORD1(v33) >= 1)
  {
    v20 = 0;
    v21 = v38;
    do
    {
      *&v21[4 * v20++] = 0;
    }

    while (v20 < SDWORD1(v33));
  }

  if (v39 != v40)
  {
    j__free(v39);
  }

  if (v45 && atomic_fetch_add((v45 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v41);
  }

  v45 = 0;
  v42 = 0u;
  v43 = 0u;
  if (SDWORD1(v41) >= 1)
  {
    v22 = 0;
    v23 = v46;
    do
    {
      v23[v22++] = 0;
    }

    while (v22 < SDWORD1(v41));
  }

  if (v47 != &v48)
  {
    j__free(v47);
  }

  if (v53 && atomic_fetch_add((v53 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v49);
  }

  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  if (v50 >= 1)
  {
    v24 = 0;
    v25 = v54;
    do
    {
      v25[v24++] = 0;
    }

    while (v24 < v50);
  }

  if (v55 != &v56)
  {
    j__free(v55);
  }

  return v19;
}

void sub_10037170C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100006D14(&a27);
  sub_100006D14(v27 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_100371778(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  *a1 = off_10047B798;
  *(a1 + 8) = 1124007936;
  v11 = (a1 + 8);
  *(a1 + 12) = 0u;
  v12 = (a1 + 12);
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 1124007936;
  v13 = (a1 + 104);
  *(a1 + 108) = 0u;
  v14 = (a1 + 108);
  *(a1 + 96) = 0;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  if (a1 + 8 != a2)
  {
    v16 = *(a2 + 56);
    if (v16)
    {
      atomic_fetch_add((v16 + 20), 1u);
      v17 = *(a1 + 64);
      if (v17)
      {
        if (atomic_fetch_add((v17 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 8);
        }
      }
    }

    *(a1 + 64) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    if (*(a1 + 12) <= 0)
    {
      *v11 = *a2;
      v21 = *(a2 + 4);
      if (v21 <= 2)
      {
LABEL_11:
        *(a1 + 12) = v21;
        *(a1 + 16) = *(a2 + 8);
        v22 = *(a2 + 72);
        v23 = *(a1 + 80);
        *v23 = *v22;
        v23[1] = v22[1];
LABEL_14:
        *(a1 + 24) = *(a2 + 16);
        *(a1 + 40) = *(a2 + 32);
        *(a1 + 56) = *(a2 + 48);
        goto LABEL_15;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(a1 + 72);
      do
      {
        *(v19 + 4 * v18++) = 0;
        v20 = *v12;
      }

      while (v18 < v20);
      *v11 = *a2;
      if (v20 <= 2)
      {
        v21 = *(a2 + 4);
        if (v21 <= 2)
        {
          goto LABEL_11;
        }
      }
    }

    sub_100269B58(v11, a2);
    goto LABEL_14;
  }

LABEL_15:
  if (v13 != a3)
  {
    v24 = *(a3 + 56);
    if (v24)
    {
      atomic_fetch_add((v24 + 20), 1u);
    }

    v25 = *(a1 + 160);
    if (v25 && atomic_fetch_add((v25 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v13);
    }

    *(a1 + 160) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    if (*(a1 + 108) <= 0)
    {
      *v13 = *a3;
      v29 = *(a3 + 4);
      if (v29 <= 2)
      {
LABEL_26:
        *(a1 + 108) = v29;
        *(a1 + 112) = *(a3 + 8);
        v30 = *(a3 + 72);
        v31 = *(a1 + 176);
        *v31 = *v30;
        v31[1] = v30[1];
LABEL_29:
        *(a1 + 120) = *(a3 + 16);
        *(a1 + 136) = *(a3 + 32);
        *(a1 + 152) = *(a3 + 48);
        goto LABEL_30;
      }
    }

    else
    {
      v26 = 0;
      v27 = *(a1 + 168);
      do
      {
        *(v27 + 4 * v26++) = 0;
        v28 = *v14;
      }

      while (v26 < v28);
      *v13 = *a3;
      if (v28 <= 2)
      {
        v29 = *(a3 + 4);
        if (v29 <= 2)
        {
          goto LABEL_26;
        }
      }
    }

    sub_100269B58(v13, a3);
    goto LABEL_29;
  }

LABEL_30:
  *(a1 + 200) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a4;
  return a1;
}

void sub_100371A44(_Unwind_Exception *a1)
{
  sub_100006D14(v3);
  sub_100006D14(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

void sub_100371A68(uint64_t a1)
{
  sub_100375B64(a1);

  operator delete();
}

void sub_100371AA0(uint64_t a1, _DWORD *a2)
{
  v4 = a2[1];
  LODWORD(__b) = *a2;
  v3 = __b;
  DWORD1(__b) = v4;
  v729[0] = 0x7FFFFFFF80000000;
  sub_10026A3FC(&v736, (a1 + 8), &__b, v729);
  *&__b = __PAIR64__(v4, v3);
  v744 = 0x7FFFFFFF80000000;
  sub_10026A3FC(v729, (a1 + 104), &__b, &v744);
  v5 = v736 & 7;
  if (v5 <= 2)
  {
    if ((v736 & 7) != 0)
    {
      if (v5 != 2)
      {
        goto LABEL_1138;
      }

      v19 = *(a1 + 200);
      v20 = *(a1 + 208);
      v21 = *(a1 + 216);
      v22 = *v741;
      v23 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
      if ((v736 & v729[0] & 0x4000) != 0)
      {
        v23 *= v22;
        v24 = v23;
        v22 = 1;
        v25 = v23;
      }

      else
      {
        v25 = v743 / ((0x88442211uLL >> (4 * (v736 & 7))) & 0xF);
        v24 = v735 / ((0x88442211uLL >> (4 * (v729[0] & 7))) & 0xF);
      }

      v115 = v738;
      v116 = v730;
      v117 = v19;
      v118 = v20;
      if ((sub_1002A8904(3) & 1) != 0 || sub_1002A8904(100))
      {
        v119 = vdupq_n_s16(v117);
        if (v21 > 1)
        {
          if (v21 != 2)
          {
            if (v21 != 3)
            {
              if (v21 != 4 || v22 < 1)
              {
                goto LABEL_1138;
              }

              v120 = 0;
              v121 = v116 - v115;
              v122 = vdup_n_s16(v117);
              while (1)
              {
                if (v23 >= 16)
                {
                  v124 = 0;
                  v125 = 0;
                  do
                  {
                    v126 = vbicq_s8(*(v115 + v124 + 16), vcgtq_u16(*(v115 + v124 + 16), v119));
                    v127 = (v116 + v124);
                    *v127 = vbicq_s8(*(v115 + v124), vcgtq_u16(*(v115 + v124), v119));
                    v127[1] = v126;
                    v125 += 16;
                    v124 += 32;
                  }

                  while (v125 <= v23 - 16);
                  v123 = v125;
                  if (v125 >= v23)
                  {
                    goto LABEL_135;
                  }
                }

                else
                {
                  v123 = 0;
                  if (v23 <= 0)
                  {
                    goto LABEL_135;
                  }
                }

                v128 = v23 - v123;
                if (v128 < 4)
                {
                  v130 = v123;
                  goto LABEL_157;
                }

                if (v121 + 2 * (v24 - v25) * v120 < 0x20)
                {
                  v130 = v123;
                  goto LABEL_157;
                }

                if (v128 >= 0x10)
                {
                  v129 = v128 & 0xFFFFFFFFFFFFFFF0;
                  v131 = 2 * v123;
                  v132 = v128 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v133 = vbicq_s8(*(v115 + v131 + 16), vcgtq_u16(*(v115 + v131 + 16), v119));
                    v134 = (v116 + v131);
                    *v134 = vbicq_s8(*(v115 + v131), vcgtq_u16(*(v115 + v131), v119));
                    v134[1] = v133;
                    v131 += 32;
                    v132 -= 16;
                  }

                  while (v132);
                  if (v128 == v129)
                  {
                    goto LABEL_135;
                  }

                  if ((v128 & 0xC) == 0)
                  {
                    v130 = v129 + v123;
                    do
                    {
LABEL_157:
                      v137 = *(v115 + 2 * v130);
                      if (v137 > v117)
                      {
                        LOWORD(v137) = 0;
                      }

                      *(v116 + 2 * v130++) = v137;
                    }

                    while (v23 != v130);
                    goto LABEL_135;
                  }
                }

                else
                {
                  v129 = 0;
                }

                v130 = (v128 & 0xFFFFFFFFFFFFFFFCLL) + v123;
                v135 = v129 - (v128 & 0xFFFFFFFFFFFFFFFCLL);
                v136 = 2 * (v129 + v123);
                do
                {
                  *(v116 + v136) = vbic_s8(*(v115 + v136), vcgt_u16(*(v115 + v136), v122));
                  v136 += 8;
                  v135 += 4;
                }

                while (v135);
                if (v128 != (v128 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_157;
                }

LABEL_135:
                ++v120;
                v116 += 2 * v24;
                v115 += 2 * v25;
                if (v120 == v22)
                {
                  goto LABEL_1138;
                }
              }
            }

            if (v22 < 1)
            {
              goto LABEL_1138;
            }

            v419 = 0;
            v420 = v116 - v115;
            v421 = vdup_n_s16(v117);
            while (1)
            {
              if (v23 >= 16)
              {
                v423 = 0;
                v424 = 0;
                do
                {
                  v425 = vandq_s8(*(v115 + v423 + 16), vcgtq_u16(*(v115 + v423 + 16), v119));
                  v426 = (v116 + v423);
                  *v426 = vandq_s8(*(v115 + v423), vcgtq_u16(*(v115 + v423), v119));
                  v426[1] = v425;
                  v424 += 16;
                  v423 += 32;
                }

                while (v424 <= v23 - 16);
                v422 = v424;
                if (v424 >= v23)
                {
                  goto LABEL_628;
                }
              }

              else
              {
                v422 = 0;
                if (v23 <= 0)
                {
                  goto LABEL_628;
                }
              }

              v427 = v23 - v422;
              if (v427 < 4)
              {
                v429 = v422;
                goto LABEL_650;
              }

              if (v420 + 2 * (v24 - v25) * v419 < 0x20)
              {
                v429 = v422;
                goto LABEL_650;
              }

              if (v427 >= 0x10)
              {
                v428 = v427 & 0xFFFFFFFFFFFFFFF0;
                v430 = 2 * v422;
                v431 = v427 & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v432 = vandq_s8(*(v115 + v430 + 16), vcgtq_u16(*(v115 + v430 + 16), v119));
                  v433 = (v116 + v430);
                  *v433 = vandq_s8(*(v115 + v430), vcgtq_u16(*(v115 + v430), v119));
                  v433[1] = v432;
                  v430 += 32;
                  v431 -= 16;
                }

                while (v431);
                if (v427 == v428)
                {
                  goto LABEL_628;
                }

                if ((v427 & 0xC) == 0)
                {
                  v429 = v428 + v422;
                  do
                  {
LABEL_650:
                    v436 = *(v115 + 2 * v429);
                    if (v436 <= v117)
                    {
                      LOWORD(v436) = 0;
                    }

                    *(v116 + 2 * v429++) = v436;
                  }

                  while (v23 != v429);
                  goto LABEL_628;
                }
              }

              else
              {
                v428 = 0;
              }

              v429 = (v427 & 0xFFFFFFFFFFFFFFFCLL) + v422;
              v434 = v428 - (v427 & 0xFFFFFFFFFFFFFFFCLL);
              v435 = 2 * (v428 + v422);
              do
              {
                *(v116 + v435) = vand_s8(*(v115 + v435), vcgt_u16(*(v115 + v435), v421));
                v435 += 8;
                v434 += 4;
              }

              while (v434);
              if (v427 != (v427 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_650;
              }

LABEL_628:
              ++v419;
              v116 += 2 * v24;
              v115 += 2 * v25;
              if (v419 == v22)
              {
                goto LABEL_1138;
              }
            }
          }

          if (v22 < 1)
          {
            goto LABEL_1138;
          }

          v397 = 0;
          v398 = v116 - v115;
          v399 = vdup_n_s16(v117);
          while (1)
          {
            if (v23 >= 16)
            {
              v401 = 0;
              v402 = 0;
              do
              {
                v403 = vminq_u16(*(v115 + v401 + 16), v119);
                v404 = (v116 + v401);
                *v404 = vminq_u16(*(v115 + v401), v119);
                v404[1] = v403;
                v402 += 16;
                v401 += 32;
              }

              while (v402 <= v23 - 16);
              v400 = v402;
              if (v402 >= v23)
              {
                goto LABEL_582;
              }
            }

            else
            {
              v400 = 0;
              if (v23 <= 0)
              {
                goto LABEL_582;
              }
            }

            v405 = v23 - v400;
            if (v405 < 4)
            {
              v407 = v400;
              goto LABEL_604;
            }

            if (v398 + 2 * (v24 - v25) * v397 < 0x20)
            {
              v407 = v400;
              goto LABEL_604;
            }

            if (v405 >= 0x10)
            {
              v406 = v405 & 0xFFFFFFFFFFFFFFF0;
              v408 = 2 * v400;
              v409 = v405 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v410 = vminq_u16(v119, *(v115 + v408 + 16));
                v411 = (v116 + v408);
                *v411 = vminq_u16(v119, *(v115 + v408));
                v411[1] = v410;
                v408 += 32;
                v409 -= 16;
              }

              while (v409);
              if (v405 == v406)
              {
                goto LABEL_582;
              }

              if ((v405 & 0xC) == 0)
              {
                v407 = v406 + v400;
                do
                {
LABEL_604:
                  v414 = *(v115 + 2 * v407);
                  if (v117 < v414)
                  {
                    LOWORD(v414) = v19;
                  }

                  *(v116 + 2 * v407++) = v414;
                }

                while (v23 != v407);
                goto LABEL_582;
              }
            }

            else
            {
              v406 = 0;
            }

            v407 = (v405 & 0xFFFFFFFFFFFFFFFCLL) + v400;
            v412 = v406 - (v405 & 0xFFFFFFFFFFFFFFFCLL);
            v413 = 2 * (v406 + v400);
            do
            {
              *(v116 + v413) = vmin_u16(v399, *(v115 + v413));
              v413 += 8;
              v412 += 4;
            }

            while (v412);
            if (v405 != (v405 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_604;
            }

LABEL_582:
            ++v397;
            v116 += 2 * v24;
            v115 += 2 * v25;
            if (v397 == v22)
            {
              goto LABEL_1138;
            }
          }
        }

        v194 = vdupq_n_s16(v118);
        if (v21)
        {
          if (v21 != 1 || v22 < 1)
          {
            goto LABEL_1138;
          }

          v195 = 0;
          v196 = v116 - v115;
          v197 = vdup_n_s16(v117);
          v198 = vdup_n_s16(v118);
          while (1)
          {
            if (v23 >= 16)
            {
              v200 = 0;
              v201 = 0;
              do
              {
                v202 = vbicq_s8(v194, vcgtq_u16(*(v115 + v200 + 16), v119));
                v203 = (v116 + v200);
                *v203 = vbicq_s8(v194, vcgtq_u16(*(v115 + v200), v119));
                v203[1] = v202;
                v201 += 16;
                v200 += 32;
              }

              while (v201 <= v23 - 16);
              v199 = v201;
              if (v201 >= v23)
              {
                goto LABEL_251;
              }
            }

            else
            {
              v199 = 0;
              if (v23 <= 0)
              {
                goto LABEL_251;
              }
            }

            v204 = v23 - v199;
            if (v204 < 4)
            {
              v206 = v199;
              goto LABEL_273;
            }

            if (v196 + 2 * (v24 - v25) * v195 < 0x20)
            {
              v206 = v199;
              goto LABEL_273;
            }

            if (v204 >= 0x10)
            {
              v205 = v204 & 0xFFFFFFFFFFFFFFF0;
              v207 = 2 * v199;
              v208 = v204 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v209 = vbicq_s8(v194, vcgtq_u16(*(v115 + v207 + 16), v119));
                v210 = (v116 + v207);
                *v210 = vbicq_s8(v194, vcgtq_u16(*(v115 + v207), v119));
                v210[1] = v209;
                v207 += 32;
                v208 -= 16;
              }

              while (v208);
              if (v204 == v205)
              {
                goto LABEL_251;
              }

              if ((v204 & 0xC) == 0)
              {
                v206 = v205 + v199;
                do
                {
LABEL_273:
                  if (*(v115 + 2 * v206) <= v117)
                  {
                    v213 = v20;
                  }

                  else
                  {
                    v213 = 0;
                  }

                  *(v116 + 2 * v206++) = v213;
                }

                while (v23 != v206);
                goto LABEL_251;
              }
            }

            else
            {
              v205 = 0;
            }

            v206 = (v204 & 0xFFFFFFFFFFFFFFFCLL) + v199;
            v211 = v205 - (v204 & 0xFFFFFFFFFFFFFFFCLL);
            v212 = 2 * (v205 + v199);
            do
            {
              *(v116 + v212) = vbic_s8(v198, vcgt_u16(*(v115 + v212), v197));
              v212 += 8;
              v211 += 4;
            }

            while (v211);
            if (v204 != (v204 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_273;
            }

LABEL_251:
            ++v195;
            v116 += 2 * v24;
            v115 += 2 * v25;
            if (v195 == v22)
            {
              goto LABEL_1138;
            }
          }
        }

        if (v22 < 1)
        {
          goto LABEL_1138;
        }

        v453 = 0;
        v454 = v116 - v115;
        v455 = vdup_n_s16(v117);
        v456 = vdup_n_s16(v118);
        while (1)
        {
          if (v23 >= 16)
          {
            v458 = 0;
            v459 = 0;
            do
            {
              v460 = vandq_s8(v194, vcgtq_u16(*(v115 + v458 + 16), v119));
              v461 = (v116 + v458);
              *v461 = vandq_s8(v194, vcgtq_u16(*(v115 + v458), v119));
              v461[1] = v460;
              v459 += 16;
              v458 += 32;
            }

            while (v459 <= v23 - 16);
            v457 = v459;
            if (v459 >= v23)
            {
              goto LABEL_677;
            }
          }

          else
          {
            v457 = 0;
            if (v23 <= 0)
            {
              goto LABEL_677;
            }
          }

          v462 = v23 - v457;
          if (v462 < 4)
          {
            v464 = v457;
            goto LABEL_699;
          }

          if (v454 + 2 * (v24 - v25) * v453 < 0x20)
          {
            v464 = v457;
            goto LABEL_699;
          }

          if (v462 >= 0x10)
          {
            v463 = v462 & 0xFFFFFFFFFFFFFFF0;
            v465 = 2 * v457;
            v466 = v462 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v467 = vandq_s8(v194, vcgtq_u16(*(v115 + v465 + 16), v119));
              v468 = (v116 + v465);
              *v468 = vandq_s8(v194, vcgtq_u16(*(v115 + v465), v119));
              v468[1] = v467;
              v465 += 32;
              v466 -= 16;
            }

            while (v466);
            if (v462 == v463)
            {
              goto LABEL_677;
            }

            if ((v462 & 0xC) == 0)
            {
              v464 = v463 + v457;
              do
              {
LABEL_699:
                if (*(v115 + 2 * v464) <= v117)
                {
                  v471 = 0;
                }

                else
                {
                  v471 = v20;
                }

                *(v116 + 2 * v464++) = v471;
              }

              while (v23 != v464);
              goto LABEL_677;
            }
          }

          else
          {
            v463 = 0;
          }

          v464 = (v462 & 0xFFFFFFFFFFFFFFFCLL) + v457;
          v469 = v463 - (v462 & 0xFFFFFFFFFFFFFFFCLL);
          v470 = 2 * (v463 + v457);
          do
          {
            *(v116 + v470) = vand_s8(v456, vcgt_u16(*(v115 + v470), v455));
            v470 += 8;
            v469 += 4;
          }

          while (v469);
          if (v462 != (v462 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_699;
          }

LABEL_677:
          ++v453;
          v116 += 2 * v24;
          v115 += 2 * v25;
          if (v453 == v22)
          {
            goto LABEL_1138;
          }
        }
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          if (v21 != 3)
          {
            if (v21 == 4)
            {
              v252 = (v22 - 1);
              if (v22 < 1 || v23 < 1)
              {
                goto LABEL_1138;
              }

              v253 = 0;
              v255 = v116 < v115 + 2 * (v23 + v25 * v252) && v115 < v116 + 2 * (v23 + v24 * v252);
              v256 = vdupq_n_s16(v117);
              while (1)
              {
                if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v255)
                {
                  for (i = 0; i != v23; *(v116 + 2 * i++) = v264)
                  {
LABEL_376:
                    v264 = *(v115 + 2 * i);
                    if (v264 > v117)
                    {
                      LOWORD(v264) = 0;
                    }
                  }

                  goto LABEL_364;
                }

                if (v23 >= 0x10)
                {
                  v259 = 0;
                  do
                  {
                    v260 = vbicq_s8(*(v115 + v259 + 16), vcgtq_u16(*(v115 + v259 + 16), v256));
                    v261 = (v116 + v259);
                    *v261 = vbicq_s8(*(v115 + v259), vcgtq_u16(*(v115 + v259), v256));
                    v261[1] = v260;
                    v259 += 32;
                  }

                  while (32 * ((v23 >> 4) & 0x7FFFFFF) != v259);
                  if ((v23 & 0x7FFFFFF0) == v23)
                  {
                    goto LABEL_364;
                  }

                  v258 = v23 & 0x7FFFFFF0;
                  i = v258;
                  if ((v23 & 0xC) == 0)
                  {
                    goto LABEL_376;
                  }
                }

                else
                {
                  v258 = 0;
                }

                v262 = 2 * v258;
                v263 = v258 - (v23 & 0x7FFFFFFC);
                do
                {
                  *(v116 + v262) = vbic_s8(*(v115 + v262), vcgt_u16(*(v115 + v262), *v256.i8));
                  v262 += 8;
                  v263 += 4;
                }

                while (v263);
                i = v23 & 0x7FFFFFFC;
                if (i != v23)
                {
                  goto LABEL_376;
                }

LABEL_364:
                ++v253;
                v115 += 2 * v25;
                v116 += 2 * v24;
                if (v253 == v22)
                {
                  goto LABEL_1138;
                }
              }
            }

LABEL_1079:
            __b = 0uLL;
            sub_1002A8980(-5, &__b, "threshGeneric", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 120);
          }

          v650 = (v22 - 1);
          if (v22 < 1 || v23 < 1)
          {
            goto LABEL_1138;
          }

          v651 = 0;
          v653 = v116 < v115 + 2 * (v23 + v25 * v650) && v115 < v116 + 2 * (v23 + v24 * v650);
          v654 = vdupq_n_s16(v117);
          while (1)
          {
            if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v653)
            {
              for (j = 0; j != v23; *(v116 + 2 * j++) = v662)
              {
LABEL_1027:
                v662 = *(v115 + 2 * j);
                if (v662 <= v117)
                {
                  LOWORD(v662) = 0;
                }
              }

              goto LABEL_1015;
            }

            if (v23 >= 0x10)
            {
              v657 = 0;
              do
              {
                v658 = vandq_s8(*(v115 + v657 + 16), vcgtq_u16(*(v115 + v657 + 16), v654));
                v659 = (v116 + v657);
                *v659 = vandq_s8(*(v115 + v657), vcgtq_u16(*(v115 + v657), v654));
                v659[1] = v658;
                v657 += 32;
              }

              while (32 * ((v23 >> 4) & 0x7FFFFFF) != v657);
              if ((v23 & 0x7FFFFFF0) == v23)
              {
                goto LABEL_1015;
              }

              v656 = v23 & 0x7FFFFFF0;
              j = v656;
              if ((v23 & 0xC) == 0)
              {
                goto LABEL_1027;
              }
            }

            else
            {
              v656 = 0;
            }

            v660 = 2 * v656;
            v661 = v656 - (v23 & 0x7FFFFFFC);
            do
            {
              *(v116 + v660) = vand_s8(*(v115 + v660), vcgt_u16(*(v115 + v660), *v654.i8));
              v660 += 8;
              v661 += 4;
            }

            while (v661);
            j = v23 & 0x7FFFFFFC;
            if (j != v23)
            {
              goto LABEL_1027;
            }

LABEL_1015:
            ++v651;
            v115 += 2 * v25;
            v116 += 2 * v24;
            if (v651 == v22)
            {
              goto LABEL_1138;
            }
          }
        }

        v637 = (v22 - 1);
        if (v22 < 1 || v23 < 1)
        {
          goto LABEL_1138;
        }

        v638 = 0;
        v640 = v116 < v115 + 2 * (v23 + v25 * v637) && v115 < v116 + 2 * (v23 + v24 * v637);
        v641 = vdupq_n_s16(v117);
        while (1)
        {
          if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v640)
          {
            for (k = 0; k != v23; *(v116 + 2 * k++) = v649)
            {
LABEL_1002:
              v649 = *(v115 + 2 * k);
              if (v117 < v649)
              {
                LOWORD(v649) = v19;
              }
            }

            goto LABEL_990;
          }

          if (v23 >= 0x10)
          {
            v644 = 0;
            do
            {
              v645 = vminq_u16(v641, *(v115 + v644 + 16));
              v646 = (v116 + v644);
              *v646 = vminq_u16(v641, *(v115 + v644));
              v646[1] = v645;
              v644 += 32;
            }

            while (32 * ((v23 >> 4) & 0x7FFFFFF) != v644);
            if ((v23 & 0x7FFFFFF0) == v23)
            {
              goto LABEL_990;
            }

            v643 = v23 & 0x7FFFFFF0;
            k = v643;
            if ((v23 & 0xC) == 0)
            {
              goto LABEL_1002;
            }
          }

          else
          {
            v643 = 0;
          }

          v647 = 2 * v643;
          v648 = v643 - (v23 & 0x7FFFFFFC);
          do
          {
            *(v116 + v647) = vmin_u16(*v641.i8, *(v115 + v647));
            v647 += 8;
            v648 += 4;
          }

          while (v648);
          k = v23 & 0x7FFFFFFC;
          if (k != v23)
          {
            goto LABEL_1002;
          }

LABEL_990:
          ++v638;
          v115 += 2 * v25;
          v116 += 2 * v24;
          if (v638 == v22)
          {
            goto LABEL_1138;
          }
        }
      }

      if (v21)
      {
        if (v21 != 1)
        {
          goto LABEL_1079;
        }

        v515 = (v22 - 1);
        if (v22 < 1 || v23 < 1)
        {
          goto LABEL_1138;
        }

        v516 = 0;
        v518 = v116 < v115 + 2 * (v23 + v25 * v515) && v115 < v116 + 2 * (v23 + v24 * v515);
        v519 = vdupq_n_s16(v117);
        v520 = vdupq_n_s16(v118);
        while (1)
        {
          if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v518)
          {
            for (m = 0; m != v23; *(v116 + 2 * m++) = v528)
            {
LABEL_800:
              if (*(v115 + 2 * m) <= v117)
              {
                v528 = v20;
              }

              else
              {
                v528 = 0;
              }
            }

            goto LABEL_788;
          }

          if (v23 >= 0x10)
          {
            v523 = 0;
            do
            {
              v524 = vbicq_s8(v520, vcgtq_u16(*(v115 + v523 + 16), v519));
              v525 = (v116 + v523);
              *v525 = vbicq_s8(v520, vcgtq_u16(*(v115 + v523), v519));
              v525[1] = v524;
              v523 += 32;
            }

            while (32 * ((v23 >> 4) & 0x7FFFFFF) != v523);
            if ((v23 & 0x7FFFFFF0) == v23)
            {
              goto LABEL_788;
            }

            v522 = v23 & 0x7FFFFFF0;
            m = v522;
            if ((v23 & 0xC) == 0)
            {
              goto LABEL_800;
            }
          }

          else
          {
            v522 = 0;
          }

          v526 = 2 * v522;
          v527 = v522 - (v23 & 0x7FFFFFFC);
          do
          {
            *(v116 + v526) = vbic_s8(*v520.i8, vcgt_u16(*(v115 + v526), *v519.i8));
            v526 += 8;
            v527 += 4;
          }

          while (v527);
          m = v23 & 0x7FFFFFFC;
          if (m != v23)
          {
            goto LABEL_800;
          }

LABEL_788:
          ++v516;
          v115 += 2 * v25;
          v116 += 2 * v24;
          if (v516 == v22)
          {
            goto LABEL_1138;
          }
        }
      }

      v678 = (v22 - 1);
      if (v22 < 1 || v23 < 1)
      {
        goto LABEL_1138;
      }

      v679 = 0;
      v681 = v116 < v115 + 2 * (v23 + v25 * v678) && v115 < v116 + 2 * (v23 + v24 * v678);
      v682 = vdupq_n_s16(v117);
      v683 = vdupq_n_s16(v118);
      while (1)
      {
        if (v23 < 4 || ((v24 | v25) & 0x4000000000000000) != 0 || v681)
        {
          for (n = 0; n != v23; *(v116 + 2 * n++) = v691)
          {
LABEL_1071:
            if (*(v115 + 2 * n) <= v117)
            {
              v691 = 0;
            }

            else
            {
              v691 = v20;
            }
          }

          goto LABEL_1059;
        }

        if (v23 >= 0x10)
        {
          v686 = 0;
          do
          {
            v687 = vandq_s8(v683, vcgtq_u16(*(v115 + v686 + 16), v682));
            v688 = (v116 + v686);
            *v688 = vandq_s8(v683, vcgtq_u16(*(v115 + v686), v682));
            v688[1] = v687;
            v686 += 32;
          }

          while (32 * ((v23 >> 4) & 0x7FFFFFF) != v686);
          if ((v23 & 0x7FFFFFF0) == v23)
          {
            goto LABEL_1059;
          }

          v685 = v23 & 0x7FFFFFF0;
          n = v685;
          if ((v23 & 0xC) == 0)
          {
            goto LABEL_1071;
          }
        }

        else
        {
          v685 = 0;
        }

        v689 = 2 * v685;
        v690 = v685 - (v23 & 0x7FFFFFFC);
        do
        {
          *(v116 + v689) = vand_s8(*v683.i8, vcgt_u16(*(v115 + v689), *v682.i8));
          v689 += 8;
          v690 += 4;
        }

        while (v690);
        n = v23 & 0x7FFFFFFC;
        if (n != v23)
        {
          goto LABEL_1071;
        }

LABEL_1059:
        ++v679;
        v115 += 2 * v25;
        v116 += 2 * v24;
        if (v679 == v22)
        {
          goto LABEL_1138;
        }
      }
    }

    v99 = v743;
    v100 = *v741;
    v101 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
    v102 = v735;
    if ((v736 & 0x4000) != 0)
    {
      v103 = v101 * v100;
      if ((v729[0] & 0x4000) != 0)
      {
        v101 *= v100;
        v100 = 1;
        v102 = v103;
        v99 = v103;
      }
    }

    v104 = *(a1 + 200);
    v105 = *(a1 + 208);
    v106 = *(a1 + 216);
    v107 = v738;
    v108 = v730;
    v109 = v104;
    if ((sub_1002A8904(3) & 1) == 0 && !sub_1002A8904(100))
    {
      v110 = 0;
      goto LABEL_615;
    }

    v110 = 0;
    v111 = vdupq_n_s8(v109);
    if (v106 <= 1)
    {
      v174 = vdupq_n_s8(v105);
      if (v106)
      {
        if (v106 == 1)
        {
          v110 = 0;
          if (v100 >= 1)
          {
            v112 = (v101 - 16);
            if (v101 >= 16)
            {
              for (ii = 0; ii != v100; ++ii)
              {
                for (jj = 0; jj <= v112; jj += 16)
                {
                  *(v108 + jj) = vbicq_s8(v174, vcgtq_u8(*(v107 + jj), v111));
                }

                v107 += v99;
                v108 += v102;
              }

              goto LABEL_614;
            }
          }
        }
      }

      else
      {
        v110 = 0;
        if (v100 >= 1)
        {
          v112 = (v101 - 16);
          if (v101 >= 16)
          {
            for (kk = 0; kk != v100; ++kk)
            {
              for (mm = 0; mm <= v112; mm += 16)
              {
                *(v108 + mm) = vandq_s8(v174, vcgtq_u8(*(v107 + mm), v111));
              }

              v107 += v99;
              v108 += v102;
            }

            goto LABEL_614;
          }
        }
      }
    }

    else
    {
      switch(v106)
      {
        case 2:
          v110 = 0;
          if (v100 >= 1)
          {
            v112 = (v101 - 16);
            if (v101 >= 16)
            {
              for (nn = 0; nn != v100; ++nn)
              {
                for (i1 = 0; i1 <= v112; i1 += 16)
                {
                  *(v108 + i1) = vqsubq_u8(*(v107 + i1), vqsubq_u8(*(v107 + i1), v111));
                }

                v107 += v99;
                v108 += v102;
              }

              goto LABEL_614;
            }
          }

          break;
        case 3:
          v110 = 0;
          if (v100 >= 1)
          {
            v112 = (v101 - 16);
            if (v101 >= 16)
            {
              for (i2 = 0; i2 != v100; ++i2)
              {
                for (i3 = 0; i3 <= v112; i3 += 16)
                {
                  *(v108 + i3) = vandq_s8(*(v107 + i3), vcgtq_u8(*(v107 + i3), v111));
                }

                v107 += v99;
                v108 += v102;
              }

              goto LABEL_614;
            }
          }

          break;
        case 4:
          v110 = 0;
          if (v100 >= 1)
          {
            v112 = (v101 - 16);
            if (v101 >= 16)
            {
              for (i4 = 0; i4 != v100; ++i4)
              {
                for (i5 = 0; i5 <= v112; i5 += 16)
                {
                  *(v108 + i5) = vbicq_s8(*(v107 + i5), vcgtq_u8(*(v107 + i5), v111));
                }

                v107 += v99;
                v108 += v102;
              }

LABEL_614:
              v110 = (v112 & 0xFFFFFFF0) + 16;
            }
          }

          break;
      }
    }

LABEL_615:
    if (v110 >= v101)
    {
      goto LABEL_1138;
    }

    v417 = (v109 + 1);
    v757 = 0u;
    v758 = 0u;
    v755 = 0u;
    v756 = 0u;
    v753 = 0u;
    v754 = 0u;
    v751 = 0u;
    v752 = 0u;
    v749 = 0u;
    v750 = 0u;
    memset(v748, 0, sizeof(v748));
    memset(v747, 0, sizeof(v747));
    __b = 0u;
    v746 = 0u;
    if (v106 <= 1)
    {
      if (!v106)
      {
        bzero(&__b, (v109 + 1));
        if (v109 != 255)
        {
          memset(&__b + v417, v105, v109 ^ 0xFF);
        }

        goto LABEL_1127;
      }

      if (v106 == 1)
      {
        memset(&__b, v105, (v109 + 1));
        if (v109 != 255)
        {
          goto LABEL_625;
        }
      }

      goto LABEL_1127;
    }

    if (v106 != 2)
    {
      if (v106 != 3)
      {
        if (v106 != 4)
        {
          goto LABEL_1127;
        }

        if (v109 < 7)
        {
          v418 = 0;
          goto LABEL_1111;
        }

        if (v109 >= 0x1F)
        {
          v418 = (v109 + 1) & 0x1E0;
          __b = xmmword_1003EB180;
          v746 = xmmword_1003EB190;
          if (v418 != 32)
          {
            qmemcpy(v747, " !#$%&'()*+,-./0123456789:;<=>?", sizeof(v747));
            if (v418 != 64)
            {
              qmemcpy(v748, "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_", sizeof(v748));
              if (v418 != 96)
              {
                v749 = xmmword_1003EB1E0;
                v750 = xmmword_1003EB1F0;
                if (v418 != 128)
                {
                  v751 = xmmword_1003EB200;
                  v752 = xmmword_1003EB210;
                  if (v418 != 160)
                  {
                    v753 = xmmword_1003EB220;
                    v754 = xmmword_1003EB230;
                    if (v418 != 192)
                    {
                      v755 = xmmword_1003EB240;
                      v756 = xmmword_1003EB250;
                      if (v418 != 224)
                      {
                        v757 = xmmword_1003EB260;
                        v758 = xmmword_1003EB270;
                      }
                    }
                  }
                }
              }
            }
          }

          if (v418 == v417)
          {
            goto LABEL_1112;
          }

          if (((v109 + 1) & 0x18) == 0)
          {
            do
            {
LABEL_1111:
              *(&__b + v418) = v418;
              ++v418;
            }

            while (v417 != v418);
            goto LABEL_1112;
          }
        }

        else
        {
          v418 = 0;
        }

        v697 = v418;
        v418 = (v109 + 1) & 0x1F8;
        v698 = vorr_s8(vdup_n_s8(v697), 0x706050403020100);
        v699 = (&__b + v697);
        v700 = v697 - v418;
        do
        {
          *v699++ = v698;
          v698 = vadd_s8(v698, 0x808080808080808);
          v700 += 8;
        }

        while (v700);
        if (v418 != v417)
        {
          goto LABEL_1111;
        }

LABEL_1112:
        if (v109 != 255)
        {
LABEL_625:
          bzero(&__b + v417, v109 ^ 0xFF);
        }

LABEL_1127:
        if (v100 >= 1)
        {
          v711 = 0;
          v712 = v730;
          v713 = v738;
          v714 = v101 - 4;
          v715 = v738 + v110;
          v716 = v730 + v110;
          do
          {
            LODWORD(v717) = v110;
            if (v110 <= v714)
            {
              v717 = 0;
              do
              {
                v718 = *(&__b + *(v715 + v717 + 1));
                v719 = (v716 + v717);
                *v719 = *(&__b + *(v715 + v717));
                v719[1] = v718;
                v720 = *(&__b + *(v715 + v717 + 3));
                v719[2] = *(&__b + *(v715 + v717 + 2));
                v719[3] = v720;
                v717 += 4;
              }

              while (v110 + v717 <= v714);
              LODWORD(v717) = v110 + v717;
            }

            if (v717 < v101)
            {
              v717 = v717;
              do
              {
                *(v712 + v717) = *(&__b + *(v713 + v717));
                ++v717;
              }

              while (v101 != v717);
            }

            ++v711;
            v713 += v99;
            v712 += v102;
            v715 += v99;
            v716 += v102;
          }

          while (v711 != v100);
        }

        goto LABEL_1138;
      }

      bzero(&__b, (v109 + 1));
      if (v109 == 255)
      {
        goto LABEL_1127;
      }

      v530 = v109 + 1;
      v531 = v109 ^ 0xFF;
      if ((v109 ^ 0xFFuLL) >= 8)
      {
        if (v531 >= 0x20)
        {
          v701 = vdupq_n_s8(v530);
          v692 = ~v109 & 0xE0;
          v702 = (&__b + v530);
          *v702 = vaddq_s8(v701, xmmword_1003EB180);
          v702[1] = vaddq_s8(v701, xmmword_1003EB190);
          if (v692 != 32)
          {
            v703 = &__b + v109;
            *(v703 + 33) = vaddq_s8(v701, xmmword_1003EB1A0);
            *(v703 + 49) = vaddq_s8(v701, xmmword_1003EB1B0);
            if (v692 != 64)
            {
              v704 = &__b + v109;
              *(v704 + 65) = vaddq_s8(v701, xmmword_1003EB1C0);
              *(v704 + 81) = vaddq_s8(v701, xmmword_1003EB1D0);
              if (v692 != 96)
              {
                *(v704 + 97) = vaddq_s8(v701, xmmword_1003EB1E0);
                *(v704 + 113) = vaddq_s8(v701, xmmword_1003EB1F0);
                if (v692 != 128)
                {
                  v705 = &__b + v109;
                  *(v705 + 129) = vaddq_s8(v701, xmmword_1003EB200);
                  *(v705 + 145) = vaddq_s8(v701, xmmword_1003EB210);
                  if (v692 != 160)
                  {
                    *(v705 + 161) = vaddq_s8(v701, xmmword_1003EB220);
                    *(v705 + 177) = vaddq_s8(v701, xmmword_1003EB230);
                    if (v692 != 192)
                    {
                      v706 = &__b + v109;
                      *(v706 + 193) = vaddq_s8(v701, xmmword_1003EB240);
                      *(v706 + 209) = vaddq_s8(v701, xmmword_1003EB250);
                    }
                  }
                }
              }
            }
          }

          if (v531 == v692)
          {
            goto LABEL_1127;
          }

          v532 = v530 + v692;
          if ((~v109 & 0x18) == 0)
          {
            goto LABEL_1126;
          }
        }

        else
        {
          v692 = 0;
          LODWORD(v532) = v109 + 1;
        }

        v707 = vdup_n_s8(v532);
        v532 = v530 + (~v109 & 0xF8);
        v708 = vadd_s8(v707, 0x706050403020100);
        v709 = v692 - (~v109 & 0xF8);
        v710 = (&__b + v692 + v109 + 1);
        do
        {
          *v710++ = v708;
          v708 = vadd_s8(v708, 0x808080808080808);
          v709 += 8;
        }

        while (v709);
        if ((v109 ^ 0xFF) == (~v109 & 0xF8))
        {
          goto LABEL_1127;
        }
      }

      else
      {
        v532 = v109 + 1;
      }

      do
      {
LABEL_1126:
        *(&__b + v532) = v532;
        ++v532;
      }

      while (v532 != 256);
      goto LABEL_1127;
    }

    if (v109 >= 7)
    {
      if (v109 >= 0x1F)
      {
        v529 = (v109 + 1) & 0x1E0;
        __b = xmmword_1003EB180;
        v746 = xmmword_1003EB190;
        if (v529 != 32)
        {
          qmemcpy(v747, " !#$%&'()*+,-./0123456789:;<=>?", sizeof(v747));
          if (v529 != 64)
          {
            qmemcpy(v748, "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_", sizeof(v748));
            if (v529 != 96)
            {
              v749 = xmmword_1003EB1E0;
              v750 = xmmword_1003EB1F0;
              if (v529 != 128)
              {
                v751 = xmmword_1003EB200;
                v752 = xmmword_1003EB210;
                if (v529 != 160)
                {
                  v753 = xmmword_1003EB220;
                  v754 = xmmword_1003EB230;
                  if (v529 != 192)
                  {
                    v755 = xmmword_1003EB240;
                    v756 = xmmword_1003EB250;
                    if (v529 != 224)
                    {
                      v757 = xmmword_1003EB260;
                      v758 = xmmword_1003EB270;
                    }
                  }
                }
              }
            }
          }
        }

        if (v529 == v417)
        {
          goto LABEL_1096;
        }

        if (((v109 + 1) & 0x18) == 0)
        {
          goto LABEL_1095;
        }
      }

      else
      {
        v529 = 0;
      }

      v693 = v529;
      v529 = (v109 + 1) & 0x1F8;
      v694 = vorr_s8(vdup_n_s8(v693), 0x706050403020100);
      v695 = (&__b + v693);
      v696 = v693 - v529;
      do
      {
        *v695++ = v694;
        v694 = vadd_s8(v694, 0x808080808080808);
        v696 += 8;
      }

      while (v696);
      if (v529 == v417)
      {
LABEL_1096:
        if (v109 != 255)
        {
          memset(&__b + v417, v104, v109 ^ 0xFF);
        }

        goto LABEL_1127;
      }
    }

    else
    {
      v529 = 0;
    }

    do
    {
LABEL_1095:
      *(&__b + v529) = v529;
      ++v529;
    }

    while (v417 != v529);
    goto LABEL_1096;
  }

  if (v5 == 3)
  {
    v39 = *(a1 + 200);
    v40 = *(a1 + 208);
    v41 = *(a1 + 216);
    v42 = v738;
    v43 = *v741;
    v44 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
    v45 = v743 >> 1;
    v46 = v730;
    v47 = v735 >> 1;
    if ((v736 & 0x4000) != 0)
    {
      v48 = v44 * v43;
      if ((v729[0] & 0x4000) != 0)
      {
        v44 *= v43;
        v43 = 1;
        v47 = v48;
        v45 = v48;
      }
    }

    v49 = v39;
    v50 = v40;
    if ((sub_1002A8904(3) & 1) != 0 || sub_1002A8904(100))
    {
      v51 = vdupq_n_s16(v49);
      if (v41 > 1)
      {
        if (v41 != 2)
        {
          if (v41 != 3)
          {
            if (v41 == 4)
            {
              if (v43 < 1)
              {
                goto LABEL_1138;
              }

              v52 = 0;
              v53 = v46 - v42;
              v54 = vdup_n_s16(v49);
              while (1)
              {
                if (v44 >= 16)
                {
                  v56 = 0;
                  v57 = 0;
                  do
                  {
                    v58 = vbicq_s8(*(v42 + v56 + 16), vcgtq_s16(*(v42 + v56 + 16), v51));
                    v59 = (v46 + v56);
                    *v59 = vbicq_s8(*(v42 + v56), vcgtq_s16(*(v42 + v56), v51));
                    v59[1] = v58;
                    v57 += 16;
                    v56 += 32;
                  }

                  while (v57 <= v44 - 16);
                  v55 = v57;
                  if (v57 >= v44)
                  {
                    goto LABEL_52;
                  }
                }

                else
                {
                  v55 = 0;
                  if (v44 <= 0)
                  {
                    goto LABEL_52;
                  }
                }

                v60 = v44 - v55;
                if (v60 < 4)
                {
                  v62 = v55;
                  goto LABEL_74;
                }

                if (v53 + 2 * (v47 - v45) * v52 < 0x20)
                {
                  v62 = v55;
                  goto LABEL_74;
                }

                if (v60 >= 0x10)
                {
                  v61 = v60 & 0xFFFFFFFFFFFFFFF0;
                  v63 = 2 * v55;
                  v64 = v60 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v65 = vbicq_s8(*(v42 + v63 + 16), vcgtq_s16(*(v42 + v63 + 16), v51));
                    v66 = (v46 + v63);
                    *v66 = vbicq_s8(*(v42 + v63), vcgtq_s16(*(v42 + v63), v51));
                    v66[1] = v65;
                    v63 += 32;
                    v64 -= 16;
                  }

                  while (v64);
                  if (v60 == v61)
                  {
                    goto LABEL_52;
                  }

                  if ((v60 & 0xC) == 0)
                  {
                    v62 = v61 + v55;
                    do
                    {
LABEL_74:
                      v69 = *(v42 + 2 * v62);
                      if (v69 > v49)
                      {
                        LOWORD(v69) = 0;
                      }

                      *(v46 + 2 * v62++) = v69;
                    }

                    while (v44 != v62);
                    goto LABEL_52;
                  }
                }

                else
                {
                  v61 = 0;
                }

                v62 = (v60 & 0xFFFFFFFFFFFFFFFCLL) + v55;
                v67 = v61 - (v60 & 0xFFFFFFFFFFFFFFFCLL);
                v68 = 2 * (v61 + v55);
                do
                {
                  *(v46 + v68) = vbic_s8(*(v42 + v68), vcgt_s16(*(v42 + v68), v54));
                  v68 += 8;
                  v67 += 4;
                }

                while (v67);
                if (v60 != (v60 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_74;
                }

LABEL_52:
                ++v52;
                v46 += 2 * v47;
                v42 += 2 * v45;
                if (v52 == v43)
                {
                  goto LABEL_1138;
                }
              }
            }

LABEL_704:
            __b = 0uLL;
            sub_1002A8980(-5, &__b, "thresh_16s", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 673);
          }

          if (v43 < 1)
          {
            goto LABEL_1138;
          }

          v283 = 0;
          v284 = v46 - v42;
          v285 = vdup_n_s16(v49);
          while (1)
          {
            if (v44 >= 16)
            {
              v287 = 0;
              v288 = 0;
              do
              {
                v289 = vandq_s8(*(v42 + v287 + 16), vcgtq_s16(*(v42 + v287 + 16), v51));
                v290 = (v46 + v287);
                *v290 = vandq_s8(*(v42 + v287), vcgtq_s16(*(v42 + v287), v51));
                v290[1] = v289;
                v288 += 16;
                v287 += 32;
              }

              while (v288 <= v44 - 16);
              v286 = v288;
              if (v288 >= v44)
              {
                goto LABEL_410;
              }
            }

            else
            {
              v286 = 0;
              if (v44 <= 0)
              {
                goto LABEL_410;
              }
            }

            v291 = v44 - v286;
            if (v291 < 4)
            {
              v293 = v286;
              goto LABEL_432;
            }

            if (v284 + 2 * (v47 - v45) * v283 < 0x20)
            {
              v293 = v286;
              goto LABEL_432;
            }

            if (v291 >= 0x10)
            {
              v292 = v291 & 0xFFFFFFFFFFFFFFF0;
              v294 = 2 * v286;
              v295 = v291 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v296 = vandq_s8(*(v42 + v294 + 16), vcgtq_s16(*(v42 + v294 + 16), v51));
                v297 = (v46 + v294);
                *v297 = vandq_s8(*(v42 + v294), vcgtq_s16(*(v42 + v294), v51));
                v297[1] = v296;
                v294 += 32;
                v295 -= 16;
              }

              while (v295);
              if (v291 == v292)
              {
                goto LABEL_410;
              }

              if ((v291 & 0xC) == 0)
              {
                v293 = v292 + v286;
                do
                {
LABEL_432:
                  v300 = *(v42 + 2 * v293);
                  if (v300 <= v49)
                  {
                    LOWORD(v300) = 0;
                  }

                  *(v46 + 2 * v293++) = v300;
                }

                while (v44 != v293);
                goto LABEL_410;
              }
            }

            else
            {
              v292 = 0;
            }

            v293 = (v291 & 0xFFFFFFFFFFFFFFFCLL) + v286;
            v298 = v292 - (v291 & 0xFFFFFFFFFFFFFFFCLL);
            v299 = 2 * (v292 + v286);
            do
            {
              *(v46 + v299) = vand_s8(*(v42 + v299), vcgt_s16(*(v42 + v299), v285));
              v299 += 8;
              v298 += 4;
            }

            while (v298);
            if (v291 != (v291 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_432;
            }

LABEL_410:
            ++v283;
            v46 += 2 * v47;
            v42 += 2 * v45;
            if (v283 == v43)
            {
              goto LABEL_1138;
            }
          }
        }

        if (v43 < 1)
        {
          goto LABEL_1138;
        }

        v265 = 0;
        v266 = v46 - v42;
        v267 = vdup_n_s16(v49);
        while (1)
        {
          if (v44 >= 16)
          {
            v269 = 0;
            v270 = 0;
            do
            {
              v271 = vminq_s16(*(v42 + v269 + 16), v51);
              v272 = (v46 + v269);
              *v272 = vminq_s16(*(v42 + v269), v51);
              v272[1] = v271;
              v270 += 16;
              v269 += 32;
            }

            while (v270 <= v44 - 16);
            v268 = v270;
            if (v270 >= v44)
            {
              goto LABEL_382;
            }
          }

          else
          {
            v268 = 0;
            if (v44 <= 0)
            {
              goto LABEL_382;
            }
          }

          v273 = v44 - v268;
          if (v273 < 4)
          {
            v275 = v268;
            goto LABEL_404;
          }

          if (v266 + 2 * (v47 - v45) * v265 < 0x20)
          {
            v275 = v268;
            goto LABEL_404;
          }

          if (v273 >= 0x10)
          {
            v274 = v273 & 0xFFFFFFFFFFFFFFF0;
            v276 = 2 * v268;
            v277 = v273 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v278 = vminq_s16(v51, *(v42 + v276 + 16));
              v279 = (v46 + v276);
              *v279 = vminq_s16(v51, *(v42 + v276));
              v279[1] = v278;
              v276 += 32;
              v277 -= 16;
            }

            while (v277);
            if (v273 == v274)
            {
              goto LABEL_382;
            }

            if ((v273 & 0xC) == 0)
            {
              v275 = v274 + v268;
              do
              {
LABEL_404:
                v282 = *(v42 + 2 * v275);
                if (v49 < v282)
                {
                  LOWORD(v282) = v39;
                }

                *(v46 + 2 * v275++) = v282;
              }

              while (v44 != v275);
              goto LABEL_382;
            }
          }

          else
          {
            v274 = 0;
          }

          v275 = (v273 & 0xFFFFFFFFFFFFFFFCLL) + v268;
          v280 = v274 - (v273 & 0xFFFFFFFFFFFFFFFCLL);
          v281 = 2 * (v274 + v268);
          do
          {
            *(v46 + v281) = vmin_s16(v267, *(v42 + v281));
            v281 += 8;
            v280 += 4;
          }

          while (v280);
          if (v273 != (v273 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_404;
          }

LABEL_382:
          ++v265;
          v46 += 2 * v47;
          v42 += 2 * v45;
          if (v265 == v43)
          {
            goto LABEL_1138;
          }
        }
      }

      v138 = vdupq_n_s16(v50);
      if (v41)
      {
        if (v41 != 1)
        {
          goto LABEL_704;
        }

        if (v43 < 1)
        {
          goto LABEL_1138;
        }

        v139 = 0;
        v140 = v46 - v42;
        v141 = vdup_n_s16(v49);
        v142 = vdup_n_s16(v50);
        while (1)
        {
          if (v44 >= 16)
          {
            v144 = 0;
            v145 = 0;
            do
            {
              v146 = vbicq_s8(v138, vcgtq_s16(*(v42 + v144 + 16), v51));
              v147 = (v46 + v144);
              *v147 = vbicq_s8(v138, vcgtq_s16(*(v42 + v144), v51));
              v147[1] = v146;
              v145 += 16;
              v144 += 32;
            }

            while (v145 <= v44 - 16);
            v143 = v145;
            if (v145 >= v44)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v143 = 0;
            if (v44 <= 0)
            {
              goto LABEL_165;
            }
          }

          v148 = v44 - v143;
          if (v148 < 4)
          {
            v150 = v143;
            goto LABEL_187;
          }

          if (v140 + 2 * (v47 - v45) * v139 < 0x20)
          {
            v150 = v143;
            goto LABEL_187;
          }

          if (v148 >= 0x10)
          {
            v149 = v148 & 0xFFFFFFFFFFFFFFF0;
            v151 = 2 * v143;
            v152 = v148 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v153 = vbicq_s8(v138, vcgtq_s16(*(v42 + v151 + 16), v51));
              v154 = (v46 + v151);
              *v154 = vbicq_s8(v138, vcgtq_s16(*(v42 + v151), v51));
              v154[1] = v153;
              v151 += 32;
              v152 -= 16;
            }

            while (v152);
            if (v148 == v149)
            {
              goto LABEL_165;
            }

            if ((v148 & 0xC) == 0)
            {
              v150 = v149 + v143;
              do
              {
LABEL_187:
                if (*(v42 + 2 * v150) <= v49)
                {
                  v157 = v40;
                }

                else
                {
                  v157 = 0;
                }

                *(v46 + 2 * v150++) = v157;
              }

              while (v44 != v150);
              goto LABEL_165;
            }
          }

          else
          {
            v149 = 0;
          }

          v150 = (v148 & 0xFFFFFFFFFFFFFFFCLL) + v143;
          v155 = v149 - (v148 & 0xFFFFFFFFFFFFFFFCLL);
          v156 = 2 * (v149 + v143);
          do
          {
            *(v46 + v156) = vbic_s8(v142, vcgt_s16(*(v42 + v156), v141));
            v156 += 8;
            v155 += 4;
          }

          while (v155);
          if (v148 != (v148 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_187;
          }

LABEL_165:
          ++v139;
          v46 += 2 * v47;
          v42 += 2 * v45;
          if (v139 == v43)
          {
            goto LABEL_1138;
          }
        }
      }

      if (v43 < 1)
      {
        goto LABEL_1138;
      }

      v331 = 0;
      v332 = v46 - v42;
      v333 = vdup_n_s16(v49);
      v334 = vdup_n_s16(v50);
      while (1)
      {
        if (v44 >= 16)
        {
          v336 = 0;
          v337 = 0;
          do
          {
            v338 = vandq_s8(v138, vcgtq_s16(*(v42 + v336 + 16), v51));
            v339 = (v46 + v336);
            *v339 = vandq_s8(v138, vcgtq_s16(*(v42 + v336), v51));
            v339[1] = v338;
            v337 += 16;
            v336 += 32;
          }

          while (v337 <= v44 - 16);
          v335 = v337;
          if (v337 >= v44)
          {
            goto LABEL_485;
          }
        }

        else
        {
          v335 = 0;
          if (v44 <= 0)
          {
            goto LABEL_485;
          }
        }

        v340 = v44 - v335;
        if (v340 < 4)
        {
          v342 = v335;
          goto LABEL_507;
        }

        if (v332 + 2 * (v47 - v45) * v331 < 0x20)
        {
          v342 = v335;
          goto LABEL_507;
        }

        if (v340 >= 0x10)
        {
          v341 = v340 & 0xFFFFFFFFFFFFFFF0;
          v343 = 2 * v335;
          v344 = v340 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v345 = vandq_s8(v138, vcgtq_s16(*(v42 + v343 + 16), v51));
            v346 = (v46 + v343);
            *v346 = vandq_s8(v138, vcgtq_s16(*(v42 + v343), v51));
            v346[1] = v345;
            v343 += 32;
            v344 -= 16;
          }

          while (v344);
          if (v340 == v341)
          {
            goto LABEL_485;
          }

          if ((v340 & 0xC) == 0)
          {
            v342 = v341 + v335;
            do
            {
LABEL_507:
              if (*(v42 + 2 * v342) <= v49)
              {
                v349 = 0;
              }

              else
              {
                v349 = v40;
              }

              *(v46 + 2 * v342++) = v349;
            }

            while (v44 != v342);
            goto LABEL_485;
          }
        }

        else
        {
          v341 = 0;
        }

        v342 = (v340 & 0xFFFFFFFFFFFFFFFCLL) + v335;
        v347 = v341 - (v340 & 0xFFFFFFFFFFFFFFFCLL);
        v348 = 2 * (v341 + v335);
        do
        {
          *(v46 + v348) = vand_s8(v334, vcgt_s16(*(v42 + v348), v333));
          v348 += 8;
          v347 += 4;
        }

        while (v347);
        if (v340 != (v340 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_507;
        }

LABEL_485:
        ++v331;
        v46 += 2 * v47;
        v42 += 2 * v45;
        if (v331 == v43)
        {
          goto LABEL_1138;
        }
      }
    }

    if (v41 > 1)
    {
      if (v41 != 2)
      {
        if (v41 != 3)
        {
          if (v41 == 4)
          {
            v214 = (v43 - 1);
            if (v43 < 1 || v44 < 1)
            {
              goto LABEL_1138;
            }

            v215 = 0;
            v217 = v46 < v42 + 2 * (v44 + v45 * v214) && v42 < v46 + 2 * (v44 + v47 * v214);
            v218 = vdupq_n_s16(v49);
            while (1)
            {
              if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v217)
              {
                for (i6 = 0; i6 != v44; *(v46 + 2 * i6++) = v226)
                {
LABEL_303:
                  v226 = *(v42 + 2 * i6);
                  if (v226 > v49)
                  {
                    LOWORD(v226) = 0;
                  }
                }

                goto LABEL_291;
              }

              if (v44 >= 0x10)
              {
                v221 = 0;
                do
                {
                  v222 = vbicq_s8(*(v42 + v221 + 16), vcgtq_s16(*(v42 + v221 + 16), v218));
                  v223 = (v46 + v221);
                  *v223 = vbicq_s8(*(v42 + v221), vcgtq_s16(*(v42 + v221), v218));
                  v223[1] = v222;
                  v221 += 32;
                }

                while (32 * ((v44 >> 4) & 0x7FFFFFF) != v221);
                if ((v44 & 0x7FFFFFF0) == v44)
                {
                  goto LABEL_291;
                }

                v220 = v44 & 0x7FFFFFF0;
                i6 = v220;
                if ((v44 & 0xC) == 0)
                {
                  goto LABEL_303;
                }
              }

              else
              {
                v220 = 0;
              }

              v224 = 2 * v220;
              v225 = v220 - (v44 & 0x7FFFFFFC);
              do
              {
                *(v46 + v224) = vbic_s8(*(v42 + v224), vcgt_s16(*(v42 + v224), *v218.i8));
                v224 += 8;
                v225 += 4;
              }

              while (v225);
              i6 = v44 & 0x7FFFFFFC;
              if (i6 != v44)
              {
                goto LABEL_303;
              }

LABEL_291:
              ++v215;
              v42 += 2 * v45;
              v46 += 2 * v47;
              if (v215 == v43)
              {
                goto LABEL_1138;
              }
            }
          }

LABEL_1076:
          __b = 0uLL;
          sub_1002A8980(-5, &__b, "threshGeneric", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 120);
        }

        v546 = (v43 - 1);
        if (v43 < 1 || v44 < 1)
        {
          goto LABEL_1138;
        }

        v547 = 0;
        v549 = v46 < v42 + 2 * (v44 + v45 * v546) && v42 < v46 + 2 * (v44 + v47 * v546);
        v550 = vdupq_n_s16(v49);
        while (1)
        {
          if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v549)
          {
            for (i7 = 0; i7 != v44; *(v46 + 2 * i7++) = v558)
            {
LABEL_862:
              v558 = *(v42 + 2 * i7);
              if (v558 <= v49)
              {
                LOWORD(v558) = 0;
              }
            }

            goto LABEL_850;
          }

          if (v44 >= 0x10)
          {
            v553 = 0;
            do
            {
              v554 = vandq_s8(*(v42 + v553 + 16), vcgtq_s16(*(v42 + v553 + 16), v550));
              v555 = (v46 + v553);
              *v555 = vandq_s8(*(v42 + v553), vcgtq_s16(*(v42 + v553), v550));
              v555[1] = v554;
              v553 += 32;
            }

            while (32 * ((v44 >> 4) & 0x7FFFFFF) != v553);
            if ((v44 & 0x7FFFFFF0) == v44)
            {
              goto LABEL_850;
            }

            v552 = v44 & 0x7FFFFFF0;
            i7 = v552;
            if ((v44 & 0xC) == 0)
            {
              goto LABEL_862;
            }
          }

          else
          {
            v552 = 0;
          }

          v556 = 2 * v552;
          v557 = v552 - (v44 & 0x7FFFFFFC);
          do
          {
            *(v46 + v556) = vand_s8(*(v42 + v556), vcgt_s16(*(v42 + v556), *v550.i8));
            v556 += 8;
            v557 += 4;
          }

          while (v557);
          i7 = v44 & 0x7FFFFFFC;
          if (i7 != v44)
          {
            goto LABEL_862;
          }

LABEL_850:
          ++v547;
          v42 += 2 * v45;
          v46 += 2 * v47;
          if (v547 == v43)
          {
            goto LABEL_1138;
          }
        }
      }

      v533 = (v43 - 1);
      if (v43 < 1 || v44 < 1)
      {
        goto LABEL_1138;
      }

      v534 = 0;
      v536 = v46 < v42 + 2 * (v44 + v45 * v533) && v42 < v46 + 2 * (v44 + v47 * v533);
      v537 = vdupq_n_s16(v49);
      while (1)
      {
        if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v536)
        {
          for (i8 = 0; i8 != v44; *(v46 + 2 * i8++) = v545)
          {
LABEL_837:
            v545 = *(v42 + 2 * i8);
            if (v49 < v545)
            {
              LOWORD(v545) = v39;
            }
          }

          goto LABEL_825;
        }

        if (v44 >= 0x10)
        {
          v540 = 0;
          do
          {
            v541 = vminq_s16(v537, *(v42 + v540 + 16));
            v542 = (v46 + v540);
            *v542 = vminq_s16(v537, *(v42 + v540));
            v542[1] = v541;
            v540 += 32;
          }

          while (32 * ((v44 >> 4) & 0x7FFFFFF) != v540);
          if ((v44 & 0x7FFFFFF0) == v44)
          {
            goto LABEL_825;
          }

          v539 = v44 & 0x7FFFFFF0;
          i8 = v539;
          if ((v44 & 0xC) == 0)
          {
            goto LABEL_837;
          }
        }

        else
        {
          v539 = 0;
        }

        v543 = 2 * v539;
        v544 = v539 - (v44 & 0x7FFFFFFC);
        do
        {
          *(v46 + v543) = vmin_s16(*v537.i8, *(v42 + v543));
          v543 += 8;
          v544 += 4;
        }

        while (v544);
        i8 = v44 & 0x7FFFFFFC;
        if (i8 != v44)
        {
          goto LABEL_837;
        }

LABEL_825:
        ++v534;
        v42 += 2 * v45;
        v46 += 2 * v47;
        if (v534 == v43)
        {
          goto LABEL_1138;
        }
      }
    }

    if (v41)
    {
      if (v41 != 1)
      {
        goto LABEL_1076;
      }

      v472 = (v43 - 1);
      if (v43 < 1 || v44 < 1)
      {
        goto LABEL_1138;
      }

      v473 = 0;
      v475 = v46 < v42 + 2 * (v44 + v45 * v472) && v42 < v46 + 2 * (v44 + v47 * v472);
      v476 = vdupq_n_s16(v49);
      v477 = vdupq_n_s16(v50);
      while (1)
      {
        if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v475)
        {
          for (i9 = 0; i9 != v44; *(v46 + 2 * i9++) = v485)
          {
LABEL_730:
            if (*(v42 + 2 * i9) <= v49)
            {
              v485 = v40;
            }

            else
            {
              v485 = 0;
            }
          }

          goto LABEL_718;
        }

        if (v44 >= 0x10)
        {
          v480 = 0;
          do
          {
            v481 = vbicq_s8(v477, vcgtq_s16(*(v42 + v480 + 16), v476));
            v482 = (v46 + v480);
            *v482 = vbicq_s8(v477, vcgtq_s16(*(v42 + v480), v476));
            v482[1] = v481;
            v480 += 32;
          }

          while (32 * ((v44 >> 4) & 0x7FFFFFF) != v480);
          if ((v44 & 0x7FFFFFF0) == v44)
          {
            goto LABEL_718;
          }

          v479 = v44 & 0x7FFFFFF0;
          i9 = v479;
          if ((v44 & 0xC) == 0)
          {
            goto LABEL_730;
          }
        }

        else
        {
          v479 = 0;
        }

        v483 = 2 * v479;
        v484 = v479 - (v44 & 0x7FFFFFFC);
        do
        {
          *(v46 + v483) = vbic_s8(*v477.i8, vcgt_s16(*(v42 + v483), *v476.i8));
          v483 += 8;
          v484 += 4;
        }

        while (v484);
        i9 = v44 & 0x7FFFFFFC;
        if (i9 != v44)
        {
          goto LABEL_730;
        }

LABEL_718:
        ++v473;
        v42 += 2 * v45;
        v46 += 2 * v47;
        if (v473 == v43)
        {
          goto LABEL_1138;
        }
      }
    }

    v583 = (v43 - 1);
    if (v43 < 1 || v44 < 1)
    {
      goto LABEL_1138;
    }

    v584 = 0;
    v586 = v46 < v42 + 2 * (v44 + v45 * v583) && v42 < v46 + 2 * (v44 + v47 * v583);
    v587 = vdupq_n_s16(v49);
    v588 = vdupq_n_s16(v50);
    while (1)
    {
      if (v44 < 4 || ((v47 | v45) & 0x4000000000000000) != 0 || v586)
      {
        for (i10 = 0; i10 != v44; *(v46 + 2 * i10++) = v596)
        {
LABEL_921:
          if (*(v42 + 2 * i10) <= v49)
          {
            v596 = 0;
          }

          else
          {
            v596 = v40;
          }
        }

        goto LABEL_909;
      }

      if (v44 >= 0x10)
      {
        v591 = 0;
        do
        {
          v592 = vandq_s8(v588, vcgtq_s16(*(v42 + v591 + 16), v587));
          v593 = (v46 + v591);
          *v593 = vandq_s8(v588, vcgtq_s16(*(v42 + v591), v587));
          v593[1] = v592;
          v591 += 32;
        }

        while (32 * ((v44 >> 4) & 0x7FFFFFF) != v591);
        if ((v44 & 0x7FFFFFF0) == v44)
        {
          goto LABEL_909;
        }

        v590 = v44 & 0x7FFFFFF0;
        i10 = v590;
        if ((v44 & 0xC) == 0)
        {
          goto LABEL_921;
        }
      }

      else
      {
        v590 = 0;
      }

      v594 = 2 * v590;
      v595 = v590 - (v44 & 0x7FFFFFFC);
      do
      {
        *(v46 + v594) = vand_s8(*v588.i8, vcgt_s16(*(v42 + v594), *v587.i8));
        v594 += 8;
        v595 += 4;
      }

      while (v595);
      i10 = v44 & 0x7FFFFFFC;
      if (i10 != v44)
      {
        goto LABEL_921;
      }

LABEL_909:
      ++v584;
      v42 += 2 * v45;
      v46 += 2 * v47;
      if (v584 == v43)
      {
        goto LABEL_1138;
      }
    }
  }

  if (v5 == 5)
  {
    v70 = *v741;
    v71 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
    if ((v736 & 0x4000) != 0)
    {
      v72 = (v729[0] & 0x4000) != 0 ? *v741 : 1;
      v71 *= v72;
      if ((v729[0] & 0x4000) != 0)
      {
        v70 = 1;
      }
    }

    v73 = *(a1 + 200);
    v74 = *(a1 + 208);
    v75 = *(a1 + 216);
    v76 = v738;
    v77 = v743;
    v78 = v730;
    v79 = v735;
    v80 = sub_1002A8904(3);
    *v81.i32 = v73;
    v726 = v81;
    *v81.i32 = v74;
    v728 = v81;
    v82 = v77 >> 2;
    v83 = v79 >> 2;
    if ((v80 & 1) != 0 || sub_1002A8904(100))
    {
      v84 = vdupq_lane_s32(v726, 0);
      if (v75 > 1)
      {
        if (v75 != 2)
        {
          if (v75 != 3)
          {
            if (v75 == 4)
            {
              if (v70 < 1)
              {
                goto LABEL_1138;
              }

              v85 = 0;
              v86 = v78 - v76;
              while (1)
              {
                if (v71 >= 8)
                {
                  v88 = 0;
                  v89 = 0;
                  do
                  {
                    v90 = vandq_s8(*(v76 + v88 + 16), vcgeq_f32(v84, *(v76 + v88 + 16)));
                    v91 = (v78 + v88);
                    *v91 = vandq_s8(*(v76 + v88), vcgeq_f32(v84, *(v76 + v88)));
                    v91[1] = v90;
                    v89 += 8;
                    v88 += 32;
                  }

                  while (v89 <= v71 - 8);
                  v87 = v89;
                  if (v89 >= v71)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  v87 = 0;
                  if (v71 <= 0)
                  {
                    goto LABEL_92;
                  }
                }

                v92 = v71 - v87;
                if (v92 < 8 || v86 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v85 <= 0x1F)
                {
                  v93 = v87;
                  do
                  {
LABEL_106:
                    v98 = *(v76 + 4 * v93);
                    if (v98 > *v726.i32)
                    {
                      v98 = 0.0;
                    }

                    *(v78 + 4 * v93++) = v98;
                  }

                  while (v71 != v93);
                  goto LABEL_92;
                }

                v93 = (v92 & 0xFFFFFFFFFFFFFFF8) + v87;
                v94 = 4 * v87;
                v95 = v92 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v96 = vandq_s8(*(v76 + v94 + 16), vcgeq_f32(v84, *(v76 + v94 + 16)));
                  v97 = (v78 + v94);
                  *v97 = vandq_s8(*(v76 + v94), vcgeq_f32(v84, *(v76 + v94)));
                  v97[1] = v96;
                  v94 += 32;
                  v95 -= 8;
                }

                while (v95);
                if (v92 != (v92 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_106;
                }

LABEL_92:
                ++v85;
                v78 += 4 * v83;
                v76 += 4 * v82;
                if (v85 == v70)
                {
                  goto LABEL_1138;
                }
              }
            }

LABEL_705:
            __b = 0uLL;
            sub_1002A8980(-5, &__b, "thresh_32f", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 853);
          }

          if (v70 < 1)
          {
            goto LABEL_1138;
          }

          v315 = 0;
          v316 = v78 - v76;
          while (1)
          {
            if (v71 >= 8)
            {
              v318 = 0;
              v319 = 0;
              do
              {
                v320 = vandq_s8(*(v76 + v318 + 16), vcgtq_f32(*(v76 + v318 + 16), v84));
                v321 = (v78 + v318);
                *v321 = vandq_s8(*(v76 + v318), vcgtq_f32(*(v76 + v318), v84));
                v321[1] = v320;
                v319 += 8;
                v318 += 32;
              }

              while (v319 <= v71 - 8);
              v317 = v319;
              if (v319 >= v71)
              {
                goto LABEL_458;
              }
            }

            else
            {
              v317 = 0;
              if (v71 <= 0)
              {
                goto LABEL_458;
              }
            }

            v322 = v71 - v317;
            if (v322 < 8 || v316 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v315 <= 0x1F)
            {
              v323 = v317;
              do
              {
LABEL_472:
                v328 = *(v76 + 4 * v323);
                if (v328 <= *v726.i32)
                {
                  v328 = 0.0;
                }

                *(v78 + 4 * v323++) = v328;
              }

              while (v71 != v323);
              goto LABEL_458;
            }

            v323 = (v322 & 0xFFFFFFFFFFFFFFF8) + v317;
            v324 = 4 * v317;
            v325 = v322 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v326 = vandq_s8(*(v76 + v324 + 16), vcgtq_f32(*(v76 + v324 + 16), v84));
              v327 = (v78 + v324);
              *v327 = vandq_s8(*(v76 + v324), vcgtq_f32(*(v76 + v324), v84));
              v327[1] = v326;
              v324 += 32;
              v325 -= 8;
            }

            while (v325);
            if (v322 != (v322 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_472;
            }

LABEL_458:
            ++v315;
            v78 += 4 * v83;
            v76 += 4 * v82;
            if (v315 == v70)
            {
              goto LABEL_1138;
            }
          }
        }

        if (v70 < 1)
        {
          goto LABEL_1138;
        }

        v301 = 0;
        v302 = v78 - v76;
        while (1)
        {
          if (v71 >= 8)
          {
            v304 = 0;
            v305 = 0;
            do
            {
              v306 = vminq_f32(*(v76 + v304 + 16), v84);
              v307 = (v78 + v304);
              *v307 = vminq_f32(*(v76 + v304), v84);
              v307[1] = v306;
              v305 += 8;
              v304 += 32;
            }

            while (v305 <= v71 - 8);
            v303 = v305;
            if (v305 >= v71)
            {
              goto LABEL_438;
            }
          }

          else
          {
            v303 = 0;
            if (v71 <= 0)
            {
              goto LABEL_438;
            }
          }

          v308 = v71 - v303;
          if (v308 < 8 || v302 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v301 <= 0x1F)
          {
            v309 = v303;
            do
            {
LABEL_452:
              v314 = *(v76 + 4 * v309);
              if (v314 > *v726.i32)
              {
                v314 = *v726.i32;
              }

              *(v78 + 4 * v309++) = v314;
            }

            while (v71 != v309);
            goto LABEL_438;
          }

          v309 = (v308 & 0xFFFFFFFFFFFFFFF8) + v303;
          v310 = 4 * v303;
          v311 = v308 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v312 = vbslq_s8(vcgtq_f32(*(v76 + v310 + 16), v84), v84, *(v76 + v310 + 16));
            v313 = (v78 + v310);
            *v313 = vbslq_s8(vcgtq_f32(*(v76 + v310), v84), v84, *(v76 + v310));
            v313[1] = v312;
            v310 += 32;
            v311 -= 8;
          }

          while (v311);
          if (v308 != (v308 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_452;
          }

LABEL_438:
          ++v301;
          v78 += 4 * v83;
          v76 += 4 * v82;
          if (v301 == v70)
          {
            goto LABEL_1138;
          }
        }
      }

      v158 = vdupq_lane_s32(v728, 0);
      if (v75)
      {
        if (v75 != 1)
        {
          goto LABEL_705;
        }

        if (v70 < 1)
        {
          goto LABEL_1138;
        }

        v159 = 0;
        v160 = v78 - v76;
        while (1)
        {
          if (v71 >= 8)
          {
            v162 = 0;
            v163 = 0;
            do
            {
              v164 = vandq_s8(v158, vcgeq_f32(v84, *(v76 + v162 + 16)));
              v165 = (v78 + v162);
              *v165 = vandq_s8(v158, vcgeq_f32(v84, *(v76 + v162)));
              v165[1] = v164;
              v163 += 8;
              v162 += 32;
            }

            while (v163 <= v71 - 8);
            v161 = v163;
            if (v163 >= v71)
            {
              goto LABEL_196;
            }
          }

          else
          {
            v161 = 0;
            if (v71 <= 0)
            {
              goto LABEL_196;
            }
          }

          v166 = v71 - v161;
          if (v166 < 8 || v160 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v159 <= 0x1F)
          {
            v167 = v161;
            v172 = *v728.i32;
            do
            {
LABEL_210:
              if (*(v76 + 4 * v167) <= *v726.i32)
              {
                v173 = v172;
              }

              else
              {
                v173 = 0.0;
              }

              *(v78 + 4 * v167++) = v173;
            }

            while (v71 != v167);
            goto LABEL_196;
          }

          v167 = (v166 & 0xFFFFFFFFFFFFFFF8) + v161;
          v168 = 4 * v161;
          v169 = v166 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v170 = vandq_s8(v158, vcgeq_f32(v84, *(v76 + v168 + 16)));
            v171 = (v78 + v168);
            *v171 = vandq_s8(v158, vcgeq_f32(v84, *(v76 + v168)));
            v171[1] = v170;
            v168 += 32;
            v169 -= 8;
          }

          while (v169);
          v172 = *v728.i32;
          if (v166 != (v166 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_210;
          }

LABEL_196:
          ++v159;
          v78 += 4 * v83;
          v76 += 4 * v82;
          if (v159 == v70)
          {
            goto LABEL_1138;
          }
        }
      }

      if (v70 < 1)
      {
        goto LABEL_1138;
      }

      v367 = 0;
      v368 = v78 - v76;
      while (1)
      {
        if (v71 >= 8)
        {
          v370 = 0;
          v371 = 0;
          do
          {
            v372 = vandq_s8(v158, vcgtq_f32(*(v76 + v370 + 16), v84));
            v373 = (v78 + v370);
            *v373 = vandq_s8(v158, vcgtq_f32(*(v76 + v370), v84));
            v373[1] = v372;
            v371 += 8;
            v370 += 32;
          }

          while (v371 <= v71 - 8);
          v369 = v371;
          if (v371 >= v71)
          {
            goto LABEL_541;
          }
        }

        else
        {
          v369 = 0;
          if (v71 <= 0)
          {
            goto LABEL_541;
          }
        }

        v374 = v71 - v369;
        if (v374 < 8 || v368 + ((v79 & 0xFFFFFFFFFFFFFFFCLL) - (v77 & 0xFFFFFFFFFFFFFFFCLL)) * v367 <= 0x1F)
        {
          v375 = v369;
          v380 = *v728.i32;
          do
          {
LABEL_555:
            if (*(v76 + 4 * v375) <= *v726.i32)
            {
              v381 = 0.0;
            }

            else
            {
              v381 = v380;
            }

            *(v78 + 4 * v375++) = v381;
          }

          while (v71 != v375);
          goto LABEL_541;
        }

        v375 = (v374 & 0xFFFFFFFFFFFFFFF8) + v369;
        v376 = 4 * v369;
        v377 = v374 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v378 = vandq_s8(v158, vcgtq_f32(*(v76 + v376 + 16), v84));
          v379 = (v78 + v376);
          *v379 = vandq_s8(v158, vcgtq_f32(*(v76 + v376), v84));
          v379[1] = v378;
          v376 += 32;
          v377 -= 8;
        }

        while (v377);
        v380 = *v728.i32;
        if (v374 != (v374 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_555;
        }

LABEL_541:
        ++v367;
        v78 += 4 * v83;
        v76 += 4 * v82;
        if (v367 == v70)
        {
          goto LABEL_1138;
        }
      }
    }

    if (v75 > 1)
    {
      switch(v75)
      {
        case 2:
          v559 = (v70 - 1);
          if (v70 >= 1 && v71 >= 1)
          {
            v560 = 0;
            v561 = v76 + 4 * (v71 + v82 * v559);
            v562 = v78 + 4 * (v71 + v83 * v559);
            v564 = v78 < v561 && v76 < v562;
            v565 = vdupq_lane_s32(v726, 0);
            v566 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v564;
            do
            {
              v567 = 0;
              if (v566)
              {
                goto LABEL_1156;
              }

              do
              {
                v568 = vbslq_s8(vcgtq_f32(*(v76 + v567 + 16), v565), v565, *(v76 + v567 + 16));
                v569 = (v78 + v567);
                *v569 = vbslq_s8(vcgtq_f32(*(v76 + v567), v565), v565, *(v76 + v567));
                v569[1] = v568;
                v567 += 32;
              }

              while (32 * ((v71 >> 3) & 0xFFFFFFF) != v567);
              v567 = v71 & 0x7FFFFFF8;
              if (v567 != v71)
              {
LABEL_1156:
                do
                {
                  v570 = *(v76 + 4 * v567);
                  if (v570 > *v726.i32)
                  {
                    v570 = *v726.i32;
                  }

                  *(v78 + 4 * v567++) = v570;
                }

                while (v71 != v567);
              }

              ++v560;
              v76 += 4 * v82;
              v78 += 4 * v83;
            }

            while (v560 != v70);
          }

          goto LABEL_1138;
        case 3:
          v571 = (v70 - 1);
          if (v70 >= 1 && v71 >= 1)
          {
            v572 = 0;
            v573 = v76 + 4 * (v71 + v82 * v571);
            v574 = v78 + 4 * (v71 + v83 * v571);
            v576 = v78 < v573 && v76 < v574;
            v577 = vdupq_lane_s32(v726, 0);
            v578 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v576;
            do
            {
              v579 = 0;
              if (v578)
              {
                goto LABEL_1157;
              }

              do
              {
                v580 = vandq_s8(*(v76 + v579 + 16), vcgtq_f32(*(v76 + v579 + 16), v577));
                v581 = (v78 + v579);
                *v581 = vandq_s8(*(v76 + v579), vcgtq_f32(*(v76 + v579), v577));
                v581[1] = v580;
                v579 += 32;
              }

              while (32 * ((v71 >> 3) & 0xFFFFFFF) != v579);
              v579 = v71 & 0x7FFFFFF8;
              if (v579 != v71)
              {
LABEL_1157:
                do
                {
                  v582 = *(v76 + 4 * v579);
                  if (v582 <= *v726.i32)
                  {
                    v582 = 0.0;
                  }

                  *(v78 + 4 * v579++) = v582;
                }

                while (v71 != v579);
              }

              ++v572;
              v76 += 4 * v82;
              v78 += 4 * v83;
            }

            while (v572 != v70);
          }

          goto LABEL_1138;
        case 4:
          v227 = (v70 - 1);
          if (v70 >= 1 && v71 >= 1)
          {
            v228 = 0;
            v229 = v76 + 4 * (v71 + v82 * v227);
            v230 = v78 + 4 * (v71 + v83 * v227);
            v232 = v78 < v229 && v76 < v230;
            v233 = vdupq_lane_s32(v726, 0);
            v234 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v232;
            do
            {
              v235 = 0;
              if (v234)
              {
                goto LABEL_1158;
              }

              do
              {
                v236 = vandq_s8(*(v76 + v235 + 16), vcgeq_f32(v233, *(v76 + v235 + 16)));
                v237 = (v78 + v235);
                *v237 = vandq_s8(*(v76 + v235), vcgeq_f32(v233, *(v76 + v235)));
                v237[1] = v236;
                v235 += 32;
              }

              while (32 * ((v71 >> 3) & 0xFFFFFFF) != v235);
              v235 = v71 & 0x7FFFFFF8;
              if (v235 != v71)
              {
LABEL_1158:
                do
                {
                  v238 = *(v76 + 4 * v235);
                  if (v238 > *v726.i32)
                  {
                    v238 = 0.0;
                  }

                  *(v78 + 4 * v235++) = v238;
                }

                while (v71 != v235);
              }

              ++v228;
              v76 += 4 * v82;
              v78 += 4 * v83;
            }

            while (v228 != v70);
          }

          goto LABEL_1138;
      }

LABEL_1077:
      __b = 0uLL;
      sub_1002A8980(-5, &__b, "threshGeneric", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 120);
    }

    if (v75)
    {
      if (v75 != 1)
      {
        goto LABEL_1077;
      }

      v486 = (v70 - 1);
      if (v70 < 1 || v71 < 1)
      {
        goto LABEL_1138;
      }

      v487 = 0;
      v488 = v76 + 4 * (v71 + v82 * v486);
      v489 = v78 + 4 * (v71 + v83 * v486);
      v491 = v78 < v488 && v76 < v489;
      v492 = vdupq_lane_s32(v726, 0);
      v493 = vdupq_lane_s32(v728, 0);
      v494 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v491;
      while (1)
      {
        v495 = 0;
        if (v494)
        {
          break;
        }

        do
        {
          v497 = vandq_s8(v493, vcgeq_f32(v492, *(v76 + v495 + 16)));
          v498 = (v78 + v495);
          *v498 = vandq_s8(v493, vcgeq_f32(v492, *(v76 + v495)));
          v498[1] = v497;
          v495 += 32;
        }

        while (32 * ((v71 >> 3) & 0xFFFFFFF) != v495);
        v495 = v71 & 0x7FFFFFF8;
        v496 = *v728.i32;
        if (v495 != v71)
        {
          goto LABEL_751;
        }

LABEL_746:
        ++v487;
        v76 += 4 * v82;
        v78 += 4 * v83;
        if (v487 == v70)
        {
          goto LABEL_1138;
        }
      }

      v496 = *v728.i32;
      do
      {
LABEL_751:
        if (*(v76 + 4 * v495) <= *v726.i32)
        {
          v499 = v496;
        }

        else
        {
          v499 = 0.0;
        }

        *(v78 + 4 * v495++) = v499;
      }

      while (v71 != v495);
      goto LABEL_746;
    }

    v610 = (v70 - 1);
    if (v70 < 1 || v71 < 1)
    {
      goto LABEL_1138;
    }

    v611 = 0;
    v612 = v76 + 4 * (v71 + v82 * v610);
    v613 = v78 + 4 * (v71 + v83 * v610);
    v615 = v78 < v612 && v76 < v613;
    v616 = vdupq_lane_s32(v726, 0);
    v617 = vdupq_lane_s32(v728, 0);
    v618 = v71 < 8 || ((v79 | v77) & 0x8000000000000000) != 0 || v615;
    while (1)
    {
      v619 = 0;
      if (v618)
      {
        break;
      }

      do
      {
        v621 = vandq_s8(v617, vcgtq_f32(*(v76 + v619 + 16), v616));
        v622 = (v78 + v619);
        *v622 = vandq_s8(v617, vcgtq_f32(*(v76 + v619), v616));
        v622[1] = v621;
        v619 += 32;
      }

      while (32 * ((v71 >> 3) & 0xFFFFFFF) != v619);
      v619 = v71 & 0x7FFFFFF8;
      v620 = *v728.i32;
      if (v619 != v71)
      {
        goto LABEL_958;
      }

LABEL_953:
      ++v611;
      v76 += 4 * v82;
      v78 += 4 * v83;
      if (v611 == v70)
      {
        goto LABEL_1138;
      }
    }

    v620 = *v728.i32;
    do
    {
LABEL_958:
      if (*(v76 + 4 * v619) <= *v726.i32)
      {
        v623 = 0.0;
      }

      else
      {
        v623 = v620;
      }

      *(v78 + 4 * v619++) = v623;
    }

    while (v71 != v619);
    goto LABEL_953;
  }

  if (v5 != 6)
  {
    goto LABEL_1138;
  }

  v6 = *v741;
  v7 = v741[1] + v741[1] * ((v736 >> 3) & 0x1FF);
  if ((v736 & 0x4000) != 0)
  {
    v8 = (v729[0] & 0x4000) != 0 ? *v741 : 1;
    v7 *= v8;
    if ((v729[0] & 0x4000) != 0)
    {
      v6 = 1;
    }
  }

  v9 = *(a1 + 216);
  v10 = v738;
  v11 = v743;
  v12 = v730;
  v13 = v735;
  v727 = *(a1 + 200);
  v725 = *(a1 + 208);
  v14 = v743 >> 3;
  v15 = v735 >> 3;
  if ((sub_1002A8904(3) & 1) == 0 && !sub_1002A8904(100))
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v239 = (v6 - 1);
            if (v6 < 1 || v7 < 1)
            {
              goto LABEL_1138;
            }

            v240 = 0;
            v241 = v10 + 8 * (v7 + v14 * v239);
            v242 = v12 + 8 * (v7 + v15 * v239);
            v244 = v12 < v241 && v10 < v242;
            v245 = vdupq_lane_s64(v727, 0);
            v246 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v244;
            while (1)
            {
              v247 = 0;
              if (v246)
              {
                break;
              }

              do
              {
                v249 = vandq_s8(*(v10 + v247 + 16), vcgeq_f64(v245, *(v10 + v247 + 16)));
                v250 = (v12 + v247);
                *v250 = vandq_s8(*(v10 + v247), vcgeq_f64(v245, *(v10 + v247)));
                v250[1] = v249;
                v247 += 32;
              }

              while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v247);
              v247 = v7 & 0x7FFFFFFC;
              v248 = *&v727;
              if (v247 != v7)
              {
                goto LABEL_347;
              }

LABEL_342:
              ++v240;
              v10 += 8 * v14;
              v12 += 8 * v15;
              if (v240 == v6)
              {
                goto LABEL_1138;
              }
            }

            v248 = *&v727;
            do
            {
LABEL_347:
              v251 = *(v10 + 8 * v247);
              if (v251 > v248)
              {
                v251 = 0.0;
              }

              *(v12 + 8 * v247++) = v251;
            }

            while (v7 != v247);
            goto LABEL_342;
          }

LABEL_1078:
          __b = 0uLL;
          sub_1002A8980(-5, &__b, "threshGeneric", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 120);
        }

        v624 = (v6 - 1);
        if (v6 < 1 || v7 < 1)
        {
          goto LABEL_1138;
        }

        v625 = 0;
        v626 = v10 + 8 * (v7 + v14 * v624);
        v627 = v12 + 8 * (v7 + v15 * v624);
        v629 = v12 < v626 && v10 < v627;
        v630 = vdupq_lane_s64(v727, 0);
        v631 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v629;
        while (1)
        {
          v632 = 0;
          if (v631)
          {
            break;
          }

          do
          {
            v634 = vandq_s8(*(v10 + v632 + 16), vcgtq_f64(*(v10 + v632 + 16), v630));
            v635 = (v12 + v632);
            *v635 = vandq_s8(*(v10 + v632), vcgtq_f64(*(v10 + v632), v630));
            v635[1] = v634;
            v632 += 32;
          }

          while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v632);
          v632 = v7 & 0x7FFFFFFC;
          v633 = *&v727;
          if (v632 != v7)
          {
            goto LABEL_977;
          }

LABEL_972:
          ++v625;
          v10 += 8 * v14;
          v12 += 8 * v15;
          if (v625 == v6)
          {
            goto LABEL_1138;
          }
        }

        v633 = *&v727;
        do
        {
LABEL_977:
          v636 = *(v10 + 8 * v632);
          if (v636 <= v633)
          {
            v636 = 0.0;
          }

          *(v12 + 8 * v632++) = v636;
        }

        while (v7 != v632);
        goto LABEL_972;
      }

      v597 = (v6 - 1);
      if (v6 < 1 || v7 < 1)
      {
        goto LABEL_1138;
      }

      v598 = 0;
      v599 = v10 + 8 * (v7 + v14 * v597);
      v600 = v12 + 8 * (v7 + v15 * v597);
      v602 = v12 < v599 && v10 < v600;
      v603 = vdupq_lane_s64(v727, 0);
      v604 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v602;
      while (1)
      {
        v605 = 0;
        if (v604)
        {
          break;
        }

        do
        {
          v607 = vbslq_s8(vcgtq_f64(*(v10 + v605 + 16), v603), v603, *(v10 + v605 + 16));
          v608 = (v12 + v605);
          *v608 = vbslq_s8(vcgtq_f64(*(v10 + v605), v603), v603, *(v10 + v605));
          v608[1] = v607;
          v605 += 32;
        }

        while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v605);
        v605 = v7 & 0x7FFFFFFC;
        v606 = *&v727;
        if (v605 != v7)
        {
          goto LABEL_940;
        }

LABEL_935:
        ++v598;
        v10 += 8 * v14;
        v12 += 8 * v15;
        if (v598 == v6)
        {
          goto LABEL_1138;
        }
      }

      v606 = *&v727;
      do
      {
LABEL_940:
        v609 = *(v10 + 8 * v605);
        if (v609 > v606)
        {
          v609 = v606;
        }

        *(v12 + 8 * v605++) = v609;
      }

      while (v7 != v605);
      goto LABEL_935;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_1078;
      }

      v500 = (v6 - 1);
      if (v6 < 1 || v7 < 1)
      {
        goto LABEL_1138;
      }

      v501 = 0;
      v502 = v10 + 8 * (v7 + v14 * v500);
      v503 = v12 + 8 * (v7 + v15 * v500);
      v505 = v12 < v502 && v10 < v503;
      v506 = vdupq_lane_s64(v727, 0);
      v507 = vdupq_lane_s64(v725, 0);
      v508 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v505;
      while (1)
      {
        v509 = 0;
        if (v508)
        {
          break;
        }

        do
        {
          v512 = vandq_s8(v507, vcgeq_f64(v506, *(v10 + v509 + 16)));
          v513 = (v12 + v509);
          *v513 = vandq_s8(v507, vcgeq_f64(v506, *(v10 + v509)));
          v513[1] = v512;
          v509 += 32;
        }

        while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v509);
        v509 = v7 & 0x7FFFFFFC;
        v511 = *&v725;
        v510 = *&v727;
        if (v509 != v7)
        {
          goto LABEL_772;
        }

LABEL_767:
        ++v501;
        v10 += 8 * v14;
        v12 += 8 * v15;
        if (v501 == v6)
        {
          goto LABEL_1138;
        }
      }

      v511 = *&v725;
      v510 = *&v727;
      do
      {
LABEL_772:
        if (*(v10 + 8 * v509) <= v510)
        {
          v514 = v511;
        }

        else
        {
          v514 = 0.0;
        }

        *(v12 + 8 * v509++) = v514;
      }

      while (v7 != v509);
      goto LABEL_767;
    }

    v663 = (v6 - 1);
    if (v6 < 1 || v7 < 1)
    {
      goto LABEL_1138;
    }

    v664 = 0;
    v665 = v10 + 8 * (v7 + v14 * v663);
    v666 = v12 + 8 * (v7 + v15 * v663);
    v668 = v12 < v665 && v10 < v666;
    v669 = vdupq_lane_s64(v727, 0);
    v670 = vdupq_lane_s64(v725, 0);
    v671 = v7 < 4 || ((v13 | v11) & 0x8000000000000000) != 0 || v668;
    while (1)
    {
      v672 = 0;
      if (v671)
      {
        break;
      }

      do
      {
        v675 = vandq_s8(v670, vcgtq_f64(*(v10 + v672 + 16), v669));
        v676 = (v12 + v672);
        *v676 = vandq_s8(v670, vcgtq_f64(*(v10 + v672), v669));
        v676[1] = v675;
        v672 += 32;
      }

      while (32 * ((v7 >> 2) & 0x1FFFFFFF) != v672);
      v672 = v7 & 0x7FFFFFFC;
      v674 = *&v725;
      v673 = *&v727;
      if (v672 != v7)
      {
        goto LABEL_1045;
      }

LABEL_1040:
      ++v664;
      v10 += 8 * v14;
      v12 += 8 * v15;
      if (v664 == v6)
      {
        goto LABEL_1138;
      }
    }

    v674 = *&v725;
    v673 = *&v727;
    do
    {
LABEL_1045:
      if (*(v10 + 8 * v672) <= v673)
      {
        v677 = 0.0;
      }

      else
      {
        v677 = v674;
      }

      *(v12 + 8 * v672++) = v677;
    }

    while (v7 != v672);
    goto LABEL_1040;
  }

  v16 = vdupq_lane_s64(v727, 0);
  if (v9 <= 1)
  {
    v177 = vdupq_lane_s64(v725, 0);
    if (v9)
    {
      if (v9 != 1)
      {
LABEL_706:
        __b = 0uLL;
        sub_1002A8980(-5, &__b, "thresh_64f", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/thresh.cpp", 993);
      }

      if (v6 < 1)
      {
        goto LABEL_1138;
      }

      v178 = 0;
      v179 = v12 - v10;
      while (1)
      {
        if (v7 >= 4)
        {
          v181 = 0;
          v182 = 0;
          do
          {
            v183 = vandq_s8(v177, vcgeq_f64(v16, *(v10 + v181 + 16)));
            v184 = (v12 + v181);
            *v184 = vandq_s8(v177, vcgeq_f64(v16, *(v10 + v181)));
            v184[1] = v183;
            v182 += 4;
            v181 += 32;
          }

          while (v182 <= v7 - 4);
          v180 = v182;
          if (v182 >= v7)
          {
            goto LABEL_228;
          }
        }

        else
        {
          v180 = 0;
          if (v7 <= 0)
          {
            goto LABEL_228;
          }
        }

        v185 = v7 - v180;
        if (v185 < 4 || v179 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v178 <= 0x1F)
        {
          v186 = v180;
          v192 = *&v725;
          v191 = *&v727;
          do
          {
LABEL_242:
            if (*(v10 + 8 * v186) <= v191)
            {
              v193 = v192;
            }

            else
            {
              v193 = 0.0;
            }

            *(v12 + 8 * v186++) = v193;
          }

          while (v7 != v186);
          goto LABEL_228;
        }

        v186 = (v185 & 0xFFFFFFFFFFFFFFFCLL) + v180;
        v187 = 8 * v180;
        v188 = v185 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v189 = vandq_s8(v177, vcgeq_f64(v16, *(v10 + v187 + 16)));
          v190 = (v12 + v187);
          *v190 = vandq_s8(v177, vcgeq_f64(v16, *(v10 + v187)));
          v190[1] = v189;
          v187 += 32;
          v188 -= 4;
        }

        while (v188);
        v192 = *&v725;
        v191 = *&v727;
        if (v185 != (v185 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_242;
        }

LABEL_228:
        ++v178;
        v12 += 8 * v15;
        v10 += 8 * v14;
        if (v178 == v6)
        {
          goto LABEL_1138;
        }
      }
    }

    if (v6 < 1)
    {
      goto LABEL_1138;
    }

    v437 = 0;
    v438 = v12 - v10;
    while (1)
    {
      if (v7 >= 4)
      {
        v440 = 0;
        v441 = 0;
        do
        {
          v442 = vandq_s8(v177, vcgtq_f64(*(v10 + v440 + 16), v16));
          v443 = (v12 + v440);
          *v443 = vandq_s8(v177, vcgtq_f64(*(v10 + v440), v16));
          v443[1] = v442;
          v441 += 4;
          v440 += 32;
        }

        while (v441 <= v7 - 4);
        v439 = v441;
        if (v441 >= v7)
        {
          goto LABEL_656;
        }
      }

      else
      {
        v439 = 0;
        if (v7 <= 0)
        {
          goto LABEL_656;
        }
      }

      v444 = v7 - v439;
      if (v444 < 4 || v438 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v437 <= 0x1F)
      {
        v445 = v439;
        v451 = *&v725;
        v450 = *&v727;
        do
        {
LABEL_670:
          if (*(v10 + 8 * v445) <= v450)
          {
            v452 = 0.0;
          }

          else
          {
            v452 = v451;
          }

          *(v12 + 8 * v445++) = v452;
        }

        while (v7 != v445);
        goto LABEL_656;
      }

      v445 = (v444 & 0xFFFFFFFFFFFFFFFCLL) + v439;
      v446 = 8 * v439;
      v447 = v444 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v448 = vandq_s8(v177, vcgtq_f64(*(v10 + v446 + 16), v16));
        v449 = (v12 + v446);
        *v449 = vandq_s8(v177, vcgtq_f64(*(v10 + v446), v16));
        v449[1] = v448;
        v446 += 32;
        v447 -= 4;
      }

      while (v447);
      v451 = *&v725;
      v450 = *&v727;
      if (v444 != (v444 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_670;
      }

LABEL_656:
      ++v437;
      v12 += 8 * v15;
      v10 += 8 * v14;
      if (v437 == v6)
      {
        goto LABEL_1138;
      }
    }
  }

  if (v9 == 2)
  {
    if (v6 < 1)
    {
      goto LABEL_1138;
    }

    v350 = 0;
    v351 = v12 - v10;
    while (1)
    {
      if (v7 >= 4)
      {
        v353 = 0;
        v354 = 0;
        do
        {
          v355 = vminq_f64(*(v10 + v353 + 16), v16);
          v356 = (v12 + v353);
          *v356 = vminq_f64(*(v10 + v353), v16);
          v356[1] = v355;
          v354 += 4;
          v353 += 32;
        }

        while (v354 <= v7 - 4);
        v352 = v354;
        if (v354 >= v7)
        {
          goto LABEL_514;
        }
      }

      else
      {
        v352 = 0;
        if (v7 <= 0)
        {
          goto LABEL_514;
        }
      }

      v357 = v7 - v352;
      if (v357 < 4 || v351 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v350 <= 0x1F)
      {
        v358 = v352;
        v363 = *&v727;
        do
        {
LABEL_528:
          v364 = *(v10 + 8 * v358);
          if (v364 > v363)
          {
            v364 = v363;
          }

          *(v12 + 8 * v358++) = v364;
        }

        while (v7 != v358);
        goto LABEL_514;
      }

      v358 = (v357 & 0xFFFFFFFFFFFFFFFCLL) + v352;
      v359 = 8 * v352;
      v360 = v357 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v361 = vbslq_s8(vcgtq_f64(*(v10 + v359 + 16), v16), v16, *(v10 + v359 + 16));
        v362 = (v12 + v359);
        *v362 = vbslq_s8(vcgtq_f64(*(v10 + v359), v16), v16, *(v10 + v359));
        v362[1] = v361;
        v359 += 32;
        v360 -= 4;
      }

      while (v360);
      v363 = *&v727;
      if (v357 != (v357 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_528;
      }

LABEL_514:
      ++v350;
      v12 += 8 * v15;
      v10 += 8 * v14;
      if (v350 == v6)
      {
        goto LABEL_1138;
      }
    }
  }

  if (v9 == 3)
  {
    if (v6 < 1)
    {
      goto LABEL_1138;
    }

    v382 = 0;
    v383 = v12 - v10;
    while (1)
    {
      if (v7 >= 4)
      {
        v385 = 0;
        v386 = 0;
        do
        {
          v387 = vandq_s8(*(v10 + v385 + 16), vcgtq_f64(*(v10 + v385 + 16), v16));
          v388 = (v12 + v385);
          *v388 = vandq_s8(*(v10 + v385), vcgtq_f64(*(v10 + v385), v16));
          v388[1] = v387;
          v386 += 4;
          v385 += 32;
        }

        while (v386 <= v7 - 4);
        v384 = v386;
        if (v386 >= v7)
        {
          goto LABEL_562;
        }
      }

      else
      {
        v384 = 0;
        if (v7 <= 0)
        {
          goto LABEL_562;
        }
      }

      v389 = v7 - v384;
      if (v389 < 4 || v383 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v382 <= 0x1F)
      {
        v390 = v384;
        v395 = *&v727;
        do
        {
LABEL_576:
          v396 = *(v10 + 8 * v390);
          if (v396 <= v395)
          {
            v396 = 0.0;
          }

          *(v12 + 8 * v390++) = v396;
        }

        while (v7 != v390);
        goto LABEL_562;
      }

      v390 = (v389 & 0xFFFFFFFFFFFFFFFCLL) + v384;
      v391 = 8 * v384;
      v392 = v389 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v393 = vandq_s8(*(v10 + v391 + 16), vcgtq_f64(*(v10 + v391 + 16), v16));
        v394 = (v12 + v391);
        *v394 = vandq_s8(*(v10 + v391), vcgtq_f64(*(v10 + v391), v16));
        v394[1] = v393;
        v391 += 32;
        v392 -= 4;
      }

      while (v392);
      v395 = *&v727;
      if (v389 != (v389 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_576;
      }

LABEL_562:
      ++v382;
      v12 += 8 * v15;
      v10 += 8 * v14;
      if (v382 == v6)
      {
        goto LABEL_1138;
      }
    }
  }

  if (v9 != 4)
  {
    goto LABEL_706;
  }

  if (v6 >= 1)
  {
    v17 = 0;
    v18 = v12 - v10;
    do
    {
      if (v7 >= 4)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = vandq_s8(*(v10 + v27 + 16), vcgeq_f64(v16, *(v10 + v27 + 16)));
          v30 = (v12 + v27);
          *v30 = vandq_s8(*(v10 + v27), vcgeq_f64(v16, *(v10 + v27)));
          v30[1] = v29;
          v28 += 4;
          v27 += 32;
        }

        while (v28 <= v7 - 4);
        v26 = v28;
        if (v28 >= v7)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v26 = 0;
        if (v7 <= 0)
        {
          goto LABEL_23;
        }
      }

      v31 = v7 - v26;
      if (v31 < 4 || v18 + ((v13 & 0xFFFFFFFFFFFFFFF8) - (v11 & 0xFFFFFFFFFFFFFFF8)) * v17 <= 0x1F)
      {
        v32 = v26;
        v37 = *&v727;
        do
        {
LABEL_37:
          v38 = *(v10 + 8 * v32);
          if (v38 > v37)
          {
            v38 = 0.0;
          }

          *(v12 + 8 * v32++) = v38;
        }

        while (v7 != v32);
        goto LABEL_23;
      }

      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + v26;
      v33 = 8 * v26;
      v34 = v31 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v35 = vandq_s8(*(v10 + v33 + 16), vcgeq_f64(v16, *(v10 + v33 + 16)));
        v36 = (v12 + v33);
        *v36 = vandq_s8(*(v10 + v33), vcgeq_f64(v16, *(v10 + v33)));
        v36[1] = v35;
        v33 += 32;
        v34 -= 4;
      }

      while (v34);
      v37 = *&v727;
      if (v31 != (v31 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_37;
      }

LABEL_23:
      ++v17;
      v12 += 8 * v15;
      v10 += 8 * v14;
    }

    while (v17 != v6);
  }

LABEL_1138:
  if (v732 && atomic_fetch_add((v732 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v729);
  }

  v732 = 0;
  v730 = 0u;
  v731 = 0u;
  if (SHIDWORD(v729[0]) >= 1)
  {
    v721 = 0;
    v722 = v733;
    do
    {
      *(v722 + 4 * v721++) = 0;
    }

    while (v721 < SHIDWORD(v729[0]));
  }

  if (v734 != &v735)
  {
    j__free(v734);
  }

  if (v740 && atomic_fetch_add((v740 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v736);
  }

  v740 = 0;
  v738 = 0u;
  v739 = 0u;
  if (v737 >= 1)
  {
    v723 = 0;
    v724 = v741;
    do
    {
      v724[v723++] = 0;
    }

    while (v723 < v737);
  }

  if (v742 != &v743)
  {
    j__free(v742);
  }
}