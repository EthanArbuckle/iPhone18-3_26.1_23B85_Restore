void sub_240B6A7EC(unint64_t a1)
{
  if (a1 < 0x7A44C6AFC2DD9DLL)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B6A848(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      *v4 = *v7;
      v4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      memcpy(v4 + 3, (v7 + 24), 0x200uLL);
      v7 += 536;
      v4 += 67;
    }

    while (v7 != a3);
    v13 = v4;
    v11 = 1;
    do
    {
      v8 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v8;
        operator delete(v8);
      }

      v6 += 536;
    }

    while (v6 != a3);
  }

  return sub_240B6A984(v10);
}

uint64_t sub_240B6A91C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 536;
    v4 = *(v2 - 536);
    if (v4)
    {
      *(v2 - 528) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 536;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240B6A984(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 536;
      do
      {
        v5 = *v4;
        if (*v4)
        {
          *(v4 + 8) = v5;
          operator delete(v5);
        }

        v6 = v4 == v3;
        v4 -= 536;
      }

      while (!v6);
    }
  }

  return a1;
}

const float *sub_240B6A9F0(const float *result, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76[3] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v9 = a4[1];
  v10 = a2 - 4 * *a4;
  v76[0] = &result[-*a4];
  v76[1] = v10;
  v76[2] = a3 - 4 * v8;
  v11 = (a8 + 8 * v9);
  v12 = *v11;
  if (*v11 < v11[1])
  {
    v13 = v9;
    v14 = vdup_n_s32(0x3EB504F3u);
    v15 = vdup_n_s32(0x3D9F35DBu);
    v16 = vdup_n_s32(0x39573B11u);
    v17 = vdup_n_s32(0x3E6DB0ECu);
    v18 = vdup_n_s32(0x3E8E3E87u);
    __asm { FMOV            V18.2S, #1.0 }

    v24 = vdup_n_s32(0xBEB504F3);
    v25 = vdupq_n_s32(0x3EB504F3u);
    v26.i64[0] = 0x3F0000003F000000;
    v26.i64[1] = 0x3F0000003F000000;
    v27 = vdupq_n_s32(0x3D9F35DBu);
    v28 = vdupq_n_s32(0x39573B11u);
    v29 = vdupq_n_s32(0x3E6DB0ECu);
    v30 = vdupq_n_s32(0x3E8E3E87u);
    do
    {
      v31 = (a6 + 32 * *(a7 + 8 * v12));
      v32 = *(v31 + 2);
      v33 = ((*v31 - v32) + 0.5);
      if (v33 <= *a4)
      {
        v33 = *a4;
      }

      v34 = ((*v31 + v32) + 1.5);
      if (v34 >= a4[2] + *a4)
      {
        v34 = a4[2] + *a4;
      }

      result = (v33 + 4);
      if (v33 + 4 <= v34)
      {
        do
        {
          v36 = 0;
          v35 = result;
          v37 = *(v31 + 12);
          v38 = *v31;
          v39 = vsubq_f32(vcvtq_f32_s32(vaddq_s32(vdupq_n_s32(v33), xmmword_240C115E0)), vdupq_lane_s32(*v31, 0));
          *&v38 = (v13 - COERCE_FLOAT(HIDWORD(*v31))) * (v13 - COERCE_FLOAT(HIDWORD(*v31)));
          v40 = vsqrtq_f32(vmlaq_f32(vdupq_lane_s32(*&v38, 0), v39, v39));
          v41 = vmulq_n_f32(vmlaq_f32(v25, v26, v40), *&v37);
          v42 = vclezq_f32(v41);
          v43 = vabsq_f32(v41);
          __asm { FMOV            V9.4S, #1.0 }

          v45 = vmlaq_f32(_Q9, v43, vmlaq_f32(v30, v43, vmlaq_f32(v29, v43, vmlaq_f32(v28, v27, v43))));
          v46 = vdivq_f32(_Q9, vmulq_f32(v45, v45));
          v47 = vmulq_n_f32(vmlaq_f32(vdupq_n_s32(0xBEB504F3), v26, v40), *&v37);
          v48 = vclezq_f32(v47);
          v49 = vabsq_f32(v47);
          v50 = vmlaq_f32(_Q9, v49, vmlaq_f32(v30, v49, vmlaq_f32(v29, v49, vmlaq_f32(v28, v27, v49))));
          v51 = vdivq_f32(_Q9, vmulq_f32(v50, v50));
          v52 = vsubq_f32(veorq_s8(vshlq_n_s32(v42, 0x1FuLL), vmlsq_f32(_Q9, v46, v46)), veorq_s8(vshlq_n_s32(v48, 0x1FuLL), vmlsq_f32(_Q9, v51, v51)));
          v53 = vmulq_n_f32(vmulq_f32(v52, v52), COERCE_FLOAT(v31[1]));
          do
          {
            v54 = *(v31 + v36 + 5);
            if (!a5)
            {
              v54 = -v54;
            }

            *(v76[v36] + 4 * v33) = vmlaq_n_f32(*(v76[v36] + 4 * v33), v53, v54);
            ++v36;
          }

          while (v36 != 3);
          ++result;
          v33 = v35;
        }

        while (v35 + 4 <= v34);
      }

      else
      {
        v35 = v33;
      }

      if (v35 < v34)
      {
        do
        {
          v55 = 0;
          v56 = *(v31 + 12);
          v57 = *v31;
          v58 = vsub_f32(vcvt_f32_s32(vadd_s32(vdup_n_s32(v35), 0x100000000)), vdup_lane_s32(*v31, 0));
          *v57.i32 = (v13 - COERCE_FLOAT(HIDWORD(*v31))) * (v13 - COERCE_FLOAT(HIDWORD(*v31)));
          v59 = vsqrt_f32(vmla_f32(vdup_lane_s32(v57, 0), v58, v58));
          v60 = vmul_n_f32(vmla_f32(v14, 0x3F0000003F000000, v59), *&v56);
          v61 = vclez_f32(v60);
          v62 = vabs_f32(v60);
          v63 = vmla_f32(_D18, v62, vmla_f32(v18, v62, vmla_f32(v17, v62, vmla_f32(v16, v15, v62))));
          v64 = vdiv_f32(_D18, vmul_f32(v63, v63));
          v65 = vmul_n_f32(vmla_f32(v24, 0x3F0000003F000000, v59), *&v56);
          v66 = vclez_f32(v65);
          v67 = vabs_f32(v65);
          v68 = vmla_f32(_D18, v67, vmla_f32(v18, v67, vmla_f32(v17, v67, vmla_f32(v16, v15, v67))));
          v69 = vdiv_f32(_D18, vmul_f32(v68, v68));
          v70 = vsub_f32(veor_s8(vshl_n_s32(v61, 0x1FuLL), vmls_f32(_D18, v64, v64)), veor_s8(vshl_n_s32(v66, 0x1FuLL), vmls_f32(_D18, v69, v69)));
          v71 = vmul_n_f32(vmul_f32(v70, v70), COERCE_FLOAT(*(v31 + 2)));
          do
          {
            v72 = *(v31 + v55 + 5);
            v73 = v76[v55];
            result = (v73 + 4 * v35);
            v74 = vld1_dup_f32(result);
            if (!a5)
            {
              v72 = -v72;
            }

            *(v73 + 4 * v35) = vmla_n_f32(v74, v71, v72).u32[0];
            ++v55;
          }

          while (v55 != 3);
          ++v35;
        }

        while (v35 != v34);
      }

      ++v12;
    }

    while (v12 < v11[1]);
  }

  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240B6ADAC(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v212 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 80);
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 88) = v4;
  v163 = (a1 + 80);
  v164 = (a1 + 104);
  *(a1 + 112) = *(a1 + 104);
  v195 = 0;
  v196 = 0;
  v197 = 0;
  v193 = 0;
  v194 = 0uLL;
  v5 = *(a1 + 8);
  if (*(a1 + 16) == v5)
  {
LABEL_152:
    sub_240B6C660(0, 0, 0, 1);
    sub_240B38D70(v163, 0);
    sub_240B38D70(v164, a3 + 1);
    v158 = a3;
    if (a3)
    {
      v159 = (*v164 + 8);
      v160 = **v164;
      do
      {
        v160 += *v159;
        *v159++ = v160;
        --v158;
      }

      while (v158);
    }

    v157 = 0;
  }

  else
  {
    v6 = a4;
    v181 = 0;
    v7 = 0;
    v178 = 0;
    v8 = ((a3 * a2) << 10) + 0x100000000;
    if (v8 >= 0x40000000000)
    {
      v8 = 0x40000000000;
    }

    v185 = v8;
    v9 = v8;
    v10 = 24;
    v11 = 1.0;
    v173 = vdupq_n_s32(0x3F3504F3u);
    __asm { FMOV            V1.4S, #1.0 }

    v169 = vdupq_n_s64(4uLL);
    v171 = _Q1;
    v167 = vdupq_n_s32(0x3EAAA64Cu);
    v175 = a1;
    while (1)
    {
      v180 = v10;
      __p = 0;
      v202 = 0;
      v203 = 0;
      v17 = v7;
      v182 = v5;
      v18 = (v5 + 536 * v7);
      v19 = *(a1 + 32);
      v177 = *a1;
      v20 = v6[25];
      v21 = v6[26];
      v22 = v6[27];
      sub_240B49544(&__p, v18[1] - *v18 + 1);
      v179 = v17;
      v23 = vrnda_f32(*(v19 + 8 * v17));
      DWORD1(v24) = 1258291200;
      v25 = vmvn_s8(vcge_f32(vabs_f32(v23), 0x4B0000004B000000));
      if ((v25.i32[0] & v25.i32[1] & 1) == 0)
      {
        v157 = 1;
        v39 = __p;
        goto LABEL_149;
      }

      v186 = vcvt_s32_f32(v23);
      v26 = vcvt_f32_s32(v186);
      v27 = v202;
      v188 = v203;
      if (v202 >= v203)
      {
        v29 = __p;
        v30 = v202 - __p;
        v31 = (v202 - __p) >> 3;
        v32 = v31 + 1;
        if ((v31 + 1) >> 61)
        {
          goto LABEL_162;
        }

        if ((v203 - __p) >> 2 > v32)
        {
          v32 = (v203 - __p) >> 2;
        }

        if (v203 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v32;
        }

        if (v33)
        {
          sub_240B299F4(v33);
        }

        v34 = (8 * v31);
        *v34 = v26;
        v35 = &v34[1];
        memcpy(0, v29, v30);
        __p = 0;
        v188 = 0;
        v203 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v28 = v35;
        v6 = a4;
      }

      else
      {
        *v202 = v26;
        v28 = &v27[1];
      }

      v202 = v28;
      v37 = *v18;
      v36 = v18[1];
      if (*v18 != v36)
      {
        v38 = 0;
        v39 = __p;
        v40 = v186.i32[0];
        v41 = v186.i32[1];
        v24 = 0uLL;
        v183 = v36;
        while (1)
        {
          *&v24 = vadd_s32(*&v24, vmovn_s64(*v37));
          v42 = vabs_s32(*&v24);
          v38 += vadd_s32(vdup_lane_s32(v42, 1), v42).u32[0];
          v43 = v38 > v185 || (v24 + 0x7FFFFF) > 0xFFFFFE;
          v44 = v43 || (DWORD1(v24) + 0x7FFFFF) > 0xFFFFFE;
          v40 += v24;
          v41 += DWORD1(v24);
          v45 = v44 || (v40 + 0x7FFFFF) > 0xFFFFFE;
          if (v45 || (v41 + 0x7FFFFF) > 0xFFFFFE)
          {
            break;
          }

          v187 = v24;
          v47 = v40;
          v48 = v41;
          if (v28 >= v188)
          {
            v49 = v28 - v39;
            v50 = (v28 - v39) >> 3;
            v51 = v50 + 1;
            if ((v50 + 1) >> 61)
            {
              v202 = v28;
              v203 = v188;
              __p = v39;
LABEL_162:
              sub_240B228BC();
            }

            __src = v39;
            if ((v188 - v39) >> 2 > v51)
            {
              v51 = (v188 - v39) >> 2;
            }

            if (v188 - v39 >= 0x7FFFFFFFFFFFFFF8)
            {
              v52 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v52 = v51;
            }

            if (v52)
            {
              sub_240B299F4(v52);
            }

            v53 = (8 * v50);
            v188 = 0;
            *v53 = v47;
            v53[1] = v48;
            memcpy(0, __src, v49);
            if (__src)
            {
              operator delete(__src);
            }

            v39 = 0;
            v28 = (8 * v50 + 8);
            v36 = v183;
          }

          else
          {
            *v28 = v47;
            v28[1] = v48;
            v28 += 2;
          }

          ++v37;
          v24 = v187;
          if (v37 == v36)
          {
            v202 = v28;
            v203 = v188;
            __p = v39;
            v6 = a4;
            goto LABEL_50;
          }
        }

        v203 = v188;
        __p = v39;
LABEL_148:
        v157 = 1;
        goto LABEL_149;
      }

      v38 = 0;
LABEL_50:
      v54 = v180;
      if (v177 < 0)
      {
        v55 = v11 + (v177 * -0.125);
      }

      else
      {
        v11 = 1.0;
        v55 = 1.0 / ((v177 * 0.125) + 1.0);
      }

      v56 = 0;
      v57.i32[1] = 0;
      *&v24 = v21 + (v20 * 0.0);
      *v57.i32 = v22 + (v20 * 0.0);
      v58 = v182 + v180;
      v59 = v204;
      do
      {
        v60 = 0;
        v61 = (&unk_240C82E20 + 4 * v56);
        v62 = vld1q_dup_f32(v61);
        v63 = xmmword_240C111D0;
        v64 = xmmword_240C111C0;
        do
        {
          *&v59[v60] = vmulq_n_f32(vmulq_f32(v62, vmulq_f32(vbslq_s8(vuzp1q_s32(vceqzq_s64(v63), vceqzq_s64(v64)), v173, v171), vcvtq_f32_s32(*(v58 + v60)))), v55);
          v64 = vaddq_s64(v64, v169);
          v63 = vaddq_s64(v63, v169);
          v60 += 16;
        }

        while (v60 != 128);
        ++v56;
        v59 += 128;
        v58 += 128;
      }

      while (v56 != 3);
      v65 = 0;
      v66 = vdupq_lane_s32(*&v24, 0);
      v67 = vdupq_lane_s32(v57, 0);
      do
      {
        v68 = *&v204[v65 + 128];
        *&v204[v65] = vmlaq_f32(*&v204[v65], v68, v66);
        *&v204[v65 + 256] = vmlaq_f32(*&v204[v65 + 256], v68, v67);
        v65 += 16;
      }

      while (v65 != 128);
      v69 = 0;
      v208 = 0;
      v209 = 0;
      v70 = v182 + v180;
      *&v210 = 0;
      do
      {
        v71 = 0;
        v66.i64[0] = (&v208)[v69];
        v72 = 0uLL;
        do
        {
          v73 = vrndpq_f32(vmulq_n_f32(vcvtq_f32_u32(vabsq_s32(*(v70 + v71))), v55));
          v72 = vaddq_s64(v72, vcvtq_u64_f64(vcvt_hight_f64_f32(v73)));
          v66 = vaddq_s64(v66, vcvtq_u64_f64(vcvtq_f64_f32(*v73.f32)));
          v71 += 16;
        }

        while (v71 != 128);
        v66 = vaddq_s64(v66, v72);
        (&v208)[v69++] = vaddvq_s64(v66);
        v70 += 128;
      }

      while (v69 != 3);
      v74 = (v208 + v209 * vcvtps_u32_f32(fabsf(*&v24)));
      if (v209 > v74)
      {
        v74 = v209;
      }

      v75 = v210 + v209 * vcvtps_u32_f32(fabsf(*v57.i32));
      if (v74 > v75)
      {
        v75 = v74;
      }

      v76 = __clz(v75 + 1) ^ 0x3F;
      if (((v75 + 1) & v75) != 0)
      {
        v77 = v76 + 1;
      }

      else
      {
        v77 = v76;
      }

      if (v77 <= 1)
      {
        v77 = 1;
      }

      v78 = v38 <= 1 ? 1 : v38;
      *v57.i32 = ceilf(sqrtf((v9 / v77) / v78));
      v79 = vdupq_lane_s32(v57, 0);
      v80 = vdupq_n_s64(v77);
      v81 = 0uLL;
      v82 = 408;
      v83 = xmmword_240C111D0;
      v84 = xmmword_240C111C0;
      v85 = 0uLL;
      do
      {
        v86 = *(v182 + v181 + v82);
        v87 = vmulq_f32(vmulq_f32(vbslq_s8(vuzp1q_s32(vceqzq_s64(v83), vceqzq_s64(v84)), v173, v171), vcvtq_f32_s32(v86)), v167);
        v88 = vmaxnmq_f32(vrndpq_f32(vmulq_n_f32(vcvtq_f32_u32(vabsq_s32(v86)), v55)), v171);
        v89 = vbslq_s8(vcgtq_f32(v79, v88), v88, v79);
        v90 = vcvtq_u64_f64(vcvtq_f64_f32(*v89.f32));
        v91 = vcvtq_u64_f64(vcvt_hight_f64_f32(v89));
        *(&__p + v82) = vmulq_n_f32(v87, v55);
        v87.i64[0] = v80.i64[0] * v90.i64[0] * v90.i64[0];
        v87.i64[1] = v80.i64[1] * v90.i64[1] * v90.i64[1];
        v91.i64[0] *= v80.i64[0] * v91.i64[0];
        v91.i64[1] *= v80.i64[1] * v91.i64[1];
        v85 = vaddq_s64(v91, v85);
        v81 = vaddq_s64(v87, v81);
        v92 = vdupq_n_s64(4uLL);
        v84 = vaddq_s64(v84, v92);
        v83 = vaddq_s64(v83, v92);
        v82 += 16;
      }

      while (v82 != 536);
      v93 = v178 + vaddvq_s64(vaddq_s64(v81, v85)) * v38;
      v39 = __p;
      if (v93 > v185)
      {
        break;
      }

      v94 = v179;
      if (__p != v28)
      {
        v95 = (__p + 8);
        if (__p + 8 != v28)
        {
          v96 = *__p;
          while (1)
          {
            v97 = v96;
            v96 = *v95;
            if (vabds_f32(v97, *v95) < 0.001 && vabds_f32(*(v95 - 1), v95[1]) < 0.001)
            {
              break;
            }

            v95 += 2;
            if (v95 == v28)
            {
              goto LABEL_86;
            }
          }

          if (v95 - 2 != v28)
          {
            goto LABEL_148;
          }
        }
      }

LABEL_86:
      v98 = v194;
      v178 = v93;
      if (v194 >= *(&v194 + 1))
      {
        v100 = 0xF0B7672A07A44C6BLL * ((v194 - v193) >> 3);
        v101 = v100 + 1;
        if (v100 + 1 > 0x7A44C6AFC2DD9CLL)
        {
          sub_240B228BC();
        }

        if (0xE16ECE540F4898D6 * ((*(&v194 + 1) - v193) >> 3) > v101)
        {
          v101 = 0xE16ECE540F4898D6 * ((*(&v194 + 1) - v193) >> 3);
        }

        if (0xF0B7672A07A44C6BLL * ((*(&v194 + 1) - v193) >> 3) >= 0x3D226357E16ECELL)
        {
          v102 = 0x7A44C6AFC2DD9CLL;
        }

        else
        {
          v102 = v101;
        }

        v211 = &v193;
        if (v102)
        {
          if (v102 <= 0x7A44C6AFC2DD9CLL)
          {
            operator new();
          }

          sub_240B2291C();
        }

        v103 = __p;
        v104 = (8 * ((v194 - v193) >> 3));
        v208 = 0;
        v209 = v104;
        v210 = v104;
        v104[1] = 0;
        v104[2] = 0;
        *v104 = 0;
        sub_240B6D768(536 * v100, v103, v28, (v28 - v103) >> 3);
        memcpy((536 * v100 + 24), v204, 0x200uLL);
        *&v210 = v210 + 536;
        v106 = v193;
        v105 = v194;
        v107 = (v193 + v209 - v194);
        if (v193 != v194)
        {
          v108 = (v193 + v209 - v194);
          v109 = v193;
          do
          {
            *v108 = 0;
            v108[1] = 0;
            v108[2] = 0;
            *v108 = *v109;
            v108[2] = v109[2];
            *v109 = 0;
            v109[1] = 0;
            v109[2] = 0;
            memcpy(v108 + 3, v109 + 3, 0x200uLL);
            v109 += 67;
            v108 += 67;
          }

          while (v109 != v105);
          v6 = a4;
          do
          {
            v110 = *v106;
            if (*v106)
            {
              v106[1] = v110;
              operator delete(v110);
            }

            v106 += 67;
          }

          while (v106 != v105);
        }

        v111 = v193;
        v112 = *(&v194 + 1);
        v193 = v107;
        v189 = v210;
        v194 = v210;
        *&v210 = v111;
        *(&v210 + 1) = v112;
        v208 = v111;
        v209 = v111;
        sub_240B6A91C(&v208);
        v99 = v189;
        v94 = v179;
        v54 = v180;
      }

      else
      {
        *v194 = 0;
        v98[1] = 0;
        v98[2] = 0;
        sub_240B6D768(v98, v39, v28, (v28 - v39) >> 3);
        memcpy(v98 + 3, v204, 0x200uLL);
        v99 = v98 + 67;
      }

      *&v194 = v99;
      if (__p)
      {
        operator delete(__p);
      }

      v7 = v94 + 1;
      a1 = v175;
      v5 = *(v175 + 8);
      v10 = v54 + 536;
      v181 += 536;
      if (v7 >= 0xF0B7672A07A44C6BLL * ((*(v175 + 16) - v5) >> 3))
      {
        if (v193 != v194)
        {
          __asm
          {
            FMOV            V1.4S, #0.25
            FMOV            V2.4S, #-1.0
          }

          v196 = v195;
          v191 = 0;
          v192 = 0;
          v190 = 0;
          sub_240B6D768(&v190, *v193, v193[1], (v193[1] - *v193) >> 3);
          v116 = v190;
          v115 = v191;
          if (v190 != v191)
          {
            v117 = v191 - v190;
            if (v191 - v190 == 8)
            {
              v118 = v190;
            }

            else
            {
              sub_240B49544(&v195, 2 * v117 - 15);
              v119 = v116 + 1;
              v120 = vadd_f32(*v116, vsub_f32(*v116, v116[1]));
              if (v115 >= v192)
              {
                v122 = (v117 >> 3) + 1;
                if (!(v122 >> 61))
                {
                  v123 = v192 - v116;
                  if ((v192 - v116) >> 2 > v122)
                  {
                    v122 = v123 >> 2;
                  }

                  if (v123 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v124 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v124 = v122;
                  }

                  if (v124)
                  {
                    sub_240B299F4(v124);
                  }

                  sub_240B299F4(1uLL);
                }

                sub_240B228BC();
              }

              if (&v115[-1] >= v115)
              {
                v121 = v115;
              }

              else
              {
                *v115 = v115[-1];
                v121 = v115 + 1;
              }

              v191 = v121;
              if (v115 != v119)
              {
                memmove(&v116[1], v116, v115 - v119);
              }

              *v116 = v120;
              __p = vadd_f32(v121[-1], vsub_f32(v121[-1], v121[-2]));
              sub_240B6D7E4(&v190, &__p);
              v116 = v190;
              v125 = v191 - v190;
              if (v191 - v190 != 24)
              {
                v126 = 0;
                v166 = v191 - v190;
                v127 = (v125 >> 3) - 3;
                if (v127 <= 1)
                {
                  v127 = 1;
                }

                v168 = v127;
                v128 = (v190 + 12);
                v170 = v190;
                v129 = v190 + 8;
                do
                {
                  v172 = v126;
                  v130 = &v170[v126];
                  sub_240B6D7E4(&v195, &v130[1]);
                  v131 = 0;
                  LODWORD(v208) = 0;
                  v132 = v130->f32[0];
                  v133 = v130->f32[1];
                  v134 = 0.0;
                  v174 = v128;
                  do
                  {
                    v135 = *(v128 - 1);
                    v136 = *v128;
                    v137 = sqrtf(hypotf(v135 - v132, *v128 - v133));
                    *(&v205 + v131) = v137;
                    v138 = (&v208 + v131);
                    v131 += 4;
                    v134 = v134 + v137;
                    v138[1] = v134;
                    v128 += 2;
                    v133 = v136;
                    v132 = v135;
                  }

                  while (v131 != 12);
                  v139 = v205;
                  v140 = v206;
                  v141 = 1;
                  v142 = *(&v208 + 1);
                  do
                  {
                    v143 = 0;
                    __p = 0;
                    v202 = 0;
                    v203 = 0;
                    v144 = v139 + (vcvts_n_f32_u32(v141, 4uLL) * v140);
                    v145 = *v130;
                    do
                    {
                      v146 = *&v129[8 * v143];
                      *(&__p + v143) = vadd_f32(v145, vmul_n_f32(vsub_f32(v146, v145), (v144 - *(&v208 + v143)) / *(&v205 + v143)));
                      ++v143;
                      v145 = v146;
                    }

                    while (v143 != 3);
                    v199 = 0;
                    v200 = 0;
                    v147 = &v208;
                    v148 = &v200;
                    v149 = 1;
                    v150 = v139;
                    v152 = &v206;
                    v151 = &v202;
                    v153 = __p;
                    do
                    {
                      v154 = v149;
                      v155 = *v152;
                      v156 = *v151;
                      *v148 = vadd_f32(v153, vmul_n_f32(vsub_f32(*v151, v153), (v144 - *v147) / (v150 + *v152)));
                      v148 = &v199;
                      v150 = v155;
                      v147 = &v208 + 1;
                      v151 = &v203;
                      v152 = &v207;
                      v153 = v156;
                      v149 = 0;
                    }

                    while ((v154 & 1) != 0);
                    v198 = vadd_f32(v200, vmul_n_f32(vsub_f32(v199, v200), (v144 - v142) / v140));
                    sub_240B6D7E4(&v195, &v198);
                    ++v141;
                  }

                  while (v141 != 16);
                  v126 = v172 + 1;
                  v128 = v174 + 2;
                  v129 += 8;
                }

                while (v172 + 1 != v168);
                v116 = v170;
                v125 = v166;
              }

              v118 = (v116 + v125 - 16);
            }

            sub_240B6D7E4(&v195, v118);
          }

          if (v116)
          {
            v191 = v116;
            operator delete(v116);
          }

          __p = *v195;
          sub_240B6D8B4(1uLL);
        }

        goto LABEL_152;
      }
    }

    v157 = 1;
LABEL_149:
    if (v39)
    {
      v202 = v39;
      operator delete(v39);
    }
  }

  __p = &v193;
  sub_240B6D954(&__p);
  if (v195)
  {
    operator delete(v195);
  }

  v161 = *MEMORY[0x277D85DE8];
  return v157;
}

void sub_240B6C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (v70)
  {
    operator delete(v70);
  }

  operator delete(v71);
  a70 = &a61;
  sub_240B6D954(&a70);
  if (a64)
  {
    operator delete(a64);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_240B6C660(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = a2 - 1;
  v191 = a2 - 3;
  v10 = a2 - 5;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v113 = *v8;
      v114 = *v11;
      if (*v8 >= *v11 && (v114 < v113 || *v9 >= v11[1]))
      {
        return result;
      }

      *v11 = v113;
      *v8 = v114;
      v115 = v11[1];
      v11[1] = *v9;
LABEL_343:
      *v9 = v115;
      return result;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v127 = v11 + 2;
      v129 = v11 == a2 || v127 == a2;
      if (a4)
      {
        if (v129)
        {
          return result;
        }

        v130 = 0;
        v131 = v11;
        while (1)
        {
          v132 = v131;
          v131 = v127;
          v133 = v132[2];
          v134 = *v132;
          if (v133 >= *v132)
          {
            if (v134 < v133)
            {
              goto LABEL_251;
            }

            v135 = v132[3];
            if (v135 >= v132[1])
            {
              goto LABEL_251;
            }
          }

          else
          {
            v135 = v132[3];
          }

          v132[2] = v134;
          v131[1] = v132[1];
          v136 = v11;
          if (v132 == v11)
          {
            goto LABEL_250;
          }

          v137 = v130;
          while (1)
          {
            v138 = *(v11 + v137 - 16);
            if (v133 >= v138)
            {
              break;
            }

            v139 = *(v11 + v137 - 8);
LABEL_244:
            v132 -= 2;
            v140 = (v11 + v137);
            *v140 = v138;
            v140[1] = v139;
            v137 -= 16;
            if (!v137)
            {
              v136 = v11;
              goto LABEL_250;
            }
          }

          if (v138 >= v133)
          {
            break;
          }

          v136 = v132;
LABEL_250:
          *v136 = v133;
          v136[1] = v135;
LABEL_251:
          v127 = v131 + 2;
          v130 += 16;
          if (v131 + 2 == a2)
          {
            return result;
          }
        }

        v136 = (v11 + v137);
        v139 = *(v11 + v137 - 8);
        if (v135 >= v139)
        {
          goto LABEL_250;
        }

        goto LABEL_244;
      }

      if (v129)
      {
        return result;
      }

      while (1)
      {
        v180 = v7;
        v7 = v127;
        v181 = v180[2];
        v182 = *v180;
        if (v181 < *v180)
        {
          break;
        }

        if (v182 >= v181)
        {
          v183 = v180[3];
          if (v183 < v180[1])
          {
            goto LABEL_320;
          }
        }

LABEL_326:
        v127 = v7 + 2;
        if (v7 + 2 == a2)
        {
          return result;
        }
      }

      v183 = v180[3];
      do
      {
        do
        {
LABEL_320:
          v184 = v180;
          v185 = v182;
          v186 = *(v180 - 2);
          v180 -= 2;
          v182 = v186;
          v187 = v180[3];
          v180[4] = v185;
          v180[5] = v187;
        }

        while (v181 < v186);
      }

      while (v182 >= v181 && v183 < *(v184 - 1));
      *v184 = v181;
      v184[1] = v183;
      goto LABEL_326;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v141 = (v12 - 2) >> 1;
      v142 = v141;
      while (1)
      {
        v143 = v142;
        if (v141 >= v142)
        {
          v144 = (2 * v142) | 1;
          v145 = &v11[2 * v144];
          if (2 * v143 + 2 < v12)
          {
            v146 = v145[2];
            if (*v145 < v146 || v146 >= *v145 && v145[1] < v145[3])
            {
              v145 += 2;
              v144 = 2 * v143 + 2;
            }
          }

          v147 = &v11[2 * v143];
          v148 = *v145;
          v149 = *v147;
          if (*v145 >= *v147)
          {
            if (v149 < v148)
            {
              v150 = v147[1];
LABEL_265:
              *v147 = v148;
              v147[1] = v145[1];
              if (v141 >= v144)
              {
                while (1)
                {
                  v152 = 2 * v144;
                  v144 = (2 * v144) | 1;
                  v151 = &v11[2 * v144];
                  v153 = v152 + 2;
                  if (v153 < v12)
                  {
                    result = v151[2];
                    if (*v151 < result || result >= *v151 && (result = v151[1], result < v151[3]))
                    {
                      v151 += 2;
                      v144 = v153;
                    }
                  }

                  v154 = *v151;
                  if (*v151 < v149 || v149 >= v154 && v151[1] < v150)
                  {
                    break;
                  }

                  *v145 = v154;
                  v145[1] = v151[1];
                  v145 = v151;
                  if (v141 < v144)
                  {
                    goto LABEL_267;
                  }
                }
              }

              v151 = v145;
LABEL_267:
              *v151 = v149;
              v151[1] = v150;
              goto LABEL_268;
            }

            v150 = v147[1];
            if (v145[1] >= v150)
            {
              goto LABEL_265;
            }
          }
        }

LABEL_268:
        v142 = v143 - 1;
        if (!v143)
        {
          while (1)
          {
            v156 = 0;
            v157 = *v11;
            v158 = v11[1];
            v159 = v11;
            do
            {
              v160 = v159;
              v161 = &v159[2 * v156];
              v159 = v161 + 2;
              v162 = 2 * v156;
              v156 = (2 * v156) | 1;
              v163 = v162 + 2;
              if (v163 < v12)
              {
                result = v161[4];
                v164 = v161[2];
                if (v164 < result || result >= v164 && (result = v161[3], result < v161[5]))
                {
                  v159 = v161 + 4;
                  v156 = v163;
                }
              }

              *v160 = *v159;
              v160[1] = v159[1];
            }

            while (v156 <= (v12 - 2) / 2);
            if (v159 == a2 - 2)
            {
              *v159 = v157;
              v159[1] = v158;
            }

            else
            {
              *v159 = *(a2 - 2);
              v159[1] = *(a2 - 1);
              *(a2 - 2) = v157;
              *(a2 - 1) = v158;
              v165 = (v159 - v11 + 16) >> 4;
              v166 = v165 - 2;
              if (v165 >= 2)
              {
                v167 = v166 >> 1;
                v168 = &v11[2 * (v166 >> 1)];
                v169 = *v168;
                v170 = *v159;
                if (*v168 < *v159)
                {
                  v155 = v159[1];
LABEL_294:
                  *v159 = v169;
                  v159[1] = v168[1];
                  if (v166 >= 2)
                  {
                    while (1)
                    {
                      v172 = v167 - 1;
                      v167 = (v167 - 1) >> 1;
                      v171 = &v11[2 * v167];
                      v173 = *v171;
                      if (*v171 >= v170)
                      {
                        if (v170 < v173)
                        {
                          break;
                        }

                        v174 = v171[1];
                        if (v174 >= v155)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v174 = v171[1];
                      }

                      *v168 = v173;
                      v168[1] = v174;
                      v168 = &v11[2 * v167];
                      if (v172 <= 1)
                      {
                        goto LABEL_301;
                      }
                    }
                  }

                  v171 = v168;
LABEL_301:
                  *v171 = v170;
                  v171[1] = v155;
                  goto LABEL_303;
                }

                if (v170 >= v169)
                {
                  v155 = v159[1];
                  if (v168[1] < v155)
                  {
                    goto LABEL_294;
                  }
                }
              }
            }

LABEL_303:
            a2 -= 2;
            if (v12-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v13 = &v11[2 * (v12 >> 1)];
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = *v11;
      if (*v13 >= *v11 && (v16 < v15 || v13[1] >= v11[1]))
      {
        v23 = *v8;
        if (*v8 >= v15 && (v15 < v23 || *v9 >= v13[1]))
        {
          goto LABEL_44;
        }

        *v13 = v23;
        *v8 = v15;
        v24 = v13 + 1;
        v25 = v13[1];
        v13[1] = *v9;
        *v9 = v25;
        v26 = *v13;
        v27 = *v11;
        if (*v13 >= *v11 && (v27 < v26 || *v24 >= v11[1]))
        {
LABEL_44:
          v37 = v13 - 2;
          v38 = *(v13 - 2);
          v39 = v11[2];
          if (v38 >= v39 && (v39 < v38 || *(v13 - 1) >= v11[3]))
          {
            v42 = *(a2 - 4);
            if (v42 >= v38 && (v38 < v42 || *v191 >= *(v13 - 1)))
            {
              goto LABEL_66;
            }

            *v37 = v42;
            *(a2 - 4) = v38;
            v43 = v13 - 1;
            v44 = *(v13 - 1);
            *(v13 - 1) = *(a2 - 3);
            *(a2 - 3) = v44;
            v45 = *v37;
            v46 = v11[2];
            if (*v37 >= v46 && (v46 < v45 || *v43 >= v11[3]))
            {
LABEL_66:
              v55 = v13[2];
              v53 = v13 + 2;
              v54 = v55;
              v56 = v11[4];
              if (v55 >= v56 && (v56 < v54 || v53[1] >= v11[5]))
              {
                v59 = *(a2 - 6);
                if (v59 >= v54 && (v54 < v59 || *v10 >= v53[1]))
                {
                  goto LABEL_84;
                }

                *v53 = v59;
                *(a2 - 6) = v54;
                v60 = v53 + 1;
                v61 = v53[1];
                v53[1] = *(a2 - 5);
                *(a2 - 5) = v61;
                v62 = *v53;
                v63 = v11[4];
                if (*v53 >= v63 && (v63 < v62 || *v60 >= v11[5]))
                {
LABEL_84:
                  v68 = *v14;
                  v69 = *v37;
                  if (*v14 >= *v37 && (v69 < v68 || v14[1] >= v37[1]))
                  {
                    v73 = *v53;
                    if (*v53 >= v68)
                    {
                      if (v68 < v73)
                      {
                        goto LABEL_103;
                      }

                      v75 = v53[1];
                      v74 = v14[1];
                      if (v75 >= v74)
                      {
                        goto LABEL_103;
                      }
                    }

                    else
                    {
                      v74 = v14[1];
                      v75 = v53[1];
                    }

                    *v14 = v73;
                    v14[1] = v75;
                    v76 = (v14 + 1);
                    *v53 = v68;
                    v53[1] = v74;
                    if (v73 >= v69 && (v69 < v73 || v75 >= v37[1]))
                    {
                      v68 = v73;
                      goto LABEL_103;
                    }

                    *v37 = v73;
                    v71 = (v37 + 1);
                    *v14 = v69;
LABEL_102:
                    v79 = *v71;
                    *v71 = *v76;
                    *v76 = v79;
                    v68 = *v14;
LABEL_103:
                    v80 = *v11;
                    *v11 = v68;
                    v22 = v11 + 1;
                    *v14 = v80;
                    v30 = v14 + 1;
                    goto LABEL_104;
                  }

                  v70 = *v53;
                  if (*v53 < v68)
                  {
                    goto LABEL_86;
                  }

                  if (v68 >= v70)
                  {
                    v77 = v14[1];
                    if (v53[1] < v77)
                    {
LABEL_86:
                      *v37 = v70;
                      v71 = (v37 + 1);
                      *v53 = v69;
                      v72 = (v53 + 1);
LABEL_101:
                      v76 = v72;
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v77 = v14[1];
                  }

                  *v14 = v69;
                  v78 = v37[1];
                  v14[1] = v78;
                  *v37 = v68;
                  v37[1] = v77;
                  if (v70 >= v69 && (v69 < v70 || v53[1] >= v78))
                  {
                    v68 = v69;
                    goto LABEL_103;
                  }

                  *v14 = v70;
                  *v53 = v69;
                  v72 = (v53 + 1);
                  v71 = (v14 + 1);
                  goto LABEL_101;
                }

                v11[4] = v62;
                *v53 = v63;
                v58 = v11 + 5;
LABEL_83:
                v67 = *v58;
                *v58 = *v60;
                *v60 = v67;
                goto LABEL_84;
              }

              v57 = *(a2 - 6);
              if (v57 < v54)
              {
                goto LABEL_68;
              }

              if (v54 >= v57)
              {
                v64 = v53[1];
                if (*v10 < v64)
                {
LABEL_68:
                  v11[4] = v57;
                  *(a2 - 6) = v56;
                  v58 = v11 + 5;
LABEL_82:
                  v60 = a2 - 5;
                  goto LABEL_83;
                }
              }

              else
              {
                v64 = v53[1];
              }

              v65 = v11[5];
              v11[4] = v54;
              v11[5] = v64;
              *v53 = v56;
              v53[1] = v65;
              v58 = v53 + 1;
              v66 = *(a2 - 6);
              if (v66 >= v56 && (v56 < v66 || *v10 >= v65))
              {
                goto LABEL_84;
              }

              *v53 = v66;
              *(a2 - 6) = v56;
              goto LABEL_82;
            }

            v11[2] = v45;
            *v37 = v46;
            v41 = v11 + 3;
LABEL_65:
            v52 = *v41;
            *v41 = *v43;
            *v43 = v52;
            goto LABEL_66;
          }

          v40 = *(a2 - 4);
          if (v40 < v38)
          {
            goto LABEL_46;
          }

          if (v38 >= v40)
          {
            v47 = *(v13 - 1);
            if (*v191 < v47)
            {
LABEL_46:
              v11[2] = v40;
              *(a2 - 4) = v39;
              v41 = v11 + 3;
LABEL_64:
              v43 = a2 - 3;
              goto LABEL_65;
            }
          }

          else
          {
            v47 = *(v13 - 1);
          }

          v50 = v11[3];
          v11[2] = v38;
          v11[3] = v47;
          *v37 = v39;
          *(v13 - 1) = v50;
          v41 = v13 - 1;
          v51 = *(a2 - 4);
          if (v51 >= v39 && (v39 < v51 || *v191 >= v50))
          {
            goto LABEL_66;
          }

          *v37 = v51;
          *(a2 - 4) = v39;
          goto LABEL_64;
        }

        *v11 = v26;
        v18 = v11 + 1;
        *v13 = v27;
LABEL_43:
        v36 = *v18;
        *v18 = *v24;
        *v24 = v36;
        goto LABEL_44;
      }

      v17 = *v8;
      if (*v8 < v15)
      {
        goto LABEL_15;
      }

      if (v15 >= v17)
      {
        v32 = v13[1];
        if (*v9 < v32)
        {
LABEL_15:
          *v11 = v17;
          v18 = v11 + 1;
LABEL_42:
          *v8 = v16;
          v24 = a2 - 1;
          goto LABEL_43;
        }
      }

      else
      {
        v32 = v13[1];
      }

      v34 = v11[1];
      *v11 = v15;
      v11[1] = v32;
      *v13 = v16;
      v13[1] = v34;
      v18 = v13 + 1;
      v35 = *v8;
      if (*v8 >= v16 && (v16 < v35 || *v9 >= v34))
      {
        goto LABEL_44;
      }

      *v13 = v35;
      goto LABEL_42;
    }

    v19 = *v11;
    v20 = *v14;
    if (*v11 < *v14 || v20 >= v19 && v11[1] < v14[1])
    {
      v21 = *v8;
      if (*v8 < v19)
      {
        goto LABEL_18;
      }

      if (v19 >= v21)
      {
        v33 = v11[1];
        if (*v9 >= v33)
        {
          goto LABEL_58;
        }

LABEL_18:
        *v14 = v21;
        *v8 = v20;
        v22 = v14 + 1;
      }

      else
      {
        v33 = v11[1];
LABEL_58:
        v48 = v14[1];
        *v14 = v19;
        v14[1] = v33;
        *v11 = v20;
        v11[1] = v48;
        v22 = v11 + 1;
        v49 = *v8;
        if (*v8 >= v20 && (v20 < v49 || *v9 >= v48))
        {
          v19 = v20;
          goto LABEL_105;
        }

        *v11 = v49;
        *v8 = v20;
      }

      v30 = a2 - 1;
LABEL_104:
      v81 = *v22;
      *v22 = *v30;
      *v30 = v81;
      v19 = *v11;
      goto LABEL_105;
    }

    v28 = *v8;
    if (*v8 < v19 || v19 >= v28 && *v9 < v11[1])
    {
      *v11 = v28;
      *v8 = v19;
      v30 = v11 + 1;
      v29 = v11[1];
      v11[1] = *v9;
      *v9 = v29;
      v19 = *v11;
      v31 = *v14;
      if (*v11 < *v14 || v31 >= v19 && *v30 < v14[1])
      {
        *v14 = v19;
        *v11 = v31;
        v22 = v14 + 1;
        goto LABEL_104;
      }
    }

LABEL_105:
    --a3;
    if (a4)
    {
      goto LABEL_109;
    }

    v82 = *(v11 - 2);
    if (v82 < v19)
    {
      goto LABEL_109;
    }

    if (v19 < v82)
    {
      v83 = v11[1];
      goto LABEL_178;
    }

    v83 = v11[1];
    if (*(v11 - 1) >= v83)
    {
LABEL_178:
      v99 = *v8;
      if (v19 < *v8 || v99 >= v19 && v83 < *v9)
      {
        do
        {
          v101 = v11[2];
          v11 += 2;
          v100 = v101;
        }

        while (v19 >= v101 && (v100 < v19 || v83 >= v11[1]));
      }

      else
      {
          ;
        }
      }

      i = a2;
      if (v11 < a2)
      {
        for (i = a2 - 2; v19 < v99 || v99 >= v19 && v83 < i[1]; i -= 2)
        {
          v103 = *(i - 2);
          v99 = v103;
        }
      }

      if (v11 < i)
      {
        v104 = *v11;
        v105 = *i;
        do
        {
          *v11 = v105;
          *i = v104;
          v106 = v11[1];
          v11[1] = i[1];
          i[1] = v106;
          do
          {
            v107 = v11[2];
            v11 += 2;
            v104 = v107;
          }

          while (v19 >= v107 && (v104 < v19 || v83 >= v11[1]));
          do
          {
            do
            {
              v108 = *(i - 2);
              i -= 2;
              v105 = v108;
            }

            while (v19 < v108);
          }

          while (v105 >= v19 && v83 < i[1]);
        }

        while (v11 < i);
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      a4 = 0;
      *(v11 - 2) = v19;
      *(v11 - 1) = v83;
    }

    else
    {
LABEL_109:
      v84 = v11[1];
      for (j = v11 + 2; ; j += 2)
      {
        v86 = *j;
        if (*j >= v19 && (v19 < v86 || j[1] >= v84))
        {
          break;
        }
      }

      if (j - 2 == v11)
      {
        k = a2;
        if (j < a2)
        {
          v90 = *v8;
          k = a2 - 2;
          if (*v8 >= v19)
          {
            k = a2 - 2;
            do
            {
              if (v19 >= v90)
              {
                if (k[1] < v84 || j >= k)
                {
                  break;
                }
              }

              else if (j >= k)
              {
                break;
              }

              v92 = *(k - 2);
              k -= 2;
              v90 = v92;
            }

            while (v92 >= v19);
          }
        }
      }

      else
      {
        v87 = *v8;
        for (k = a2 - 2; v87 >= v19 && (v19 < v87 || k[1] >= v84); k -= 2)
        {
          v89 = *(k - 2);
          v87 = v89;
        }
      }

      v11 = j;
      if (j < k)
      {
        v93 = *k;
        v11 = j;
        v94 = k;
        do
        {
          *v11 = v93;
          *v94 = v86;
          v95 = v11[1];
          v11[1] = v94[1];
          v94[1] = v95;
          do
          {
            do
            {
              v96 = v11[2];
              v11 += 2;
              v86 = v96;
            }

            while (v96 < v19);
          }

          while (v19 >= v86 && v11[1] < v84);
          do
          {
            v97 = *(v94 - 2);
            v94 -= 2;
            v93 = v97;
          }

          while (v97 >= v19 && (v19 < v93 || v94[1] >= v84));
        }

        while (v11 < v94);
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      *(v11 - 2) = v19;
      *(v11 - 1) = v84;
      if (j < k)
      {
LABEL_146:
        result = sub_240B6C660(v7, v11 - 2, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v98 = sub_240B6DBF0(v7, v11 - 2);
        result = sub_240B6DBF0(v11, a2);
        if (result)
        {
          a2 = v11 - 2;
          if (v98)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v98)
        {
          goto LABEL_146;
        }
      }
    }
  }

  if (v12 == 3)
  {
    v109 = v11[2];
    v110 = *v11;
    if (v109 >= *v11 && (v110 < v109 || v11[3] >= v11[1]))
    {
      v176 = *v8;
      if (*v8 >= v109 && (v109 < v176 || *v9 >= v11[3]))
      {
        return result;
      }

      v11[2] = v176;
      *v8 = v109;
      v177 = v11[3];
      v11[3] = *v9;
      *v9 = v177;
      v178 = v11[2];
      v179 = *v11;
      if (v178 >= *v11 && (v179 < v178 || v11[3] >= v11[1]))
      {
        return result;
      }

      *v11 = v178;
      v11[2] = v179;
      v112 = v11 + 1;
      v9 = v11 + 3;
      goto LABEL_342;
    }

    v111 = *v8;
    if (*v8 < v109)
    {
      goto LABEL_216;
    }

    if (v109 >= v111)
    {
      v188 = v11[3];
      if (*v9 < v188)
      {
LABEL_216:
        *v11 = v111;
        v112 = v11 + 1;
        *v8 = v110;
LABEL_342:
        v115 = *v112;
        *v112 = *v9;
        goto LABEL_343;
      }
    }

    else
    {
      v188 = v11[3];
    }

    v189 = v11[1];
    v11[3] = v189;
    *v11 = v109;
    v11[1] = v188;
    v11[2] = v110;
    v190 = *v8;
    if (*v8 >= v110 && (v110 < v190 || *v9 >= v189))
    {
      return result;
    }

    v11[2] = v190;
    *v8 = v110;
    v112 = v11 + 3;
    goto LABEL_342;
  }

  if (v12 == 4)
  {

    return sub_240B6D9E8(v11, v11 + 2, v11 + 4, a2 - 2);
  }

  if (v12 != 5)
  {
    goto LABEL_10;
  }

  result = sub_240B6D9E8(v11, v11 + 2, v11 + 4, v11 + 6);
  v116 = *v8;
  v117 = v11[6];
  if (*v8 < v117 || v117 >= v116 && *v9 < v11[7])
  {
    v11[6] = v116;
    *v8 = v117;
    v118 = v11[7];
    v11[7] = *v9;
    *v9 = v118;
    v119 = v11[6];
    v120 = v11[4];
    if (v119 >= v120)
    {
      if (v120 < v119)
      {
        return result;
      }

      v122 = v11[7];
      v121 = v11[5];
      if (v122 >= v121)
      {
        return result;
      }
    }

    else
    {
      v121 = v11[5];
      v122 = v11[7];
    }

    v11[4] = v119;
    v11[5] = v122;
    v11[6] = v120;
    v11[7] = v121;
    v123 = v11[2];
    if (v119 >= v123)
    {
      if (v123 < v119)
      {
        return result;
      }

      v124 = v11[3];
      if (v122 >= v124)
      {
        return result;
      }
    }

    else
    {
      v124 = v11[3];
    }

    v11[2] = v119;
    v11[3] = v122;
    v11[4] = v123;
    v11[5] = v124;
    v125 = *v11;
    if (v119 >= *v11)
    {
      if (v125 < v119)
      {
        return result;
      }

      v126 = v11[1];
      if (v122 >= v126)
      {
        return result;
      }
    }

    else
    {
      v126 = v11[1];
    }

    *v11 = v119;
    v11[1] = v122;
    v11[2] = v125;
    v11[3] = v126;
  }

  return result;
}

uint64_t sub_240B6D768(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B3C80C(result, a4);
  }

  return result;
}

void sub_240B6D7C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B6D7E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_240B228BC();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_240B299F4(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_240B6D8B4(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B6D90C(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B6D954(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 536;
      do
      {
        v7 = *v6;
        if (*v6)
        {
          *(v6 + 1) = v7;
          operator delete(v7);
        }

        v8 = v6 == v2;
        v6 -= 536;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t *sub_240B6D9E8(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

BOOL sub_240B6DBF0(unint64_t *a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        sub_240B6D9E8(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      sub_240B6D9E8(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v25;
    if (*v45 >= *v25)
    {
      if (v49 < v48)
      {
        goto LABEL_82;
      }

      v50 = v45[1];
      if (v50 >= v25[1])
      {
        goto LABEL_82;
      }
    }

    else
    {
      v50 = v45[1];
    }

    *v45 = v49;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 16);
      if (v48 >= v53)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_75:
      v25 -= 2;
      *(v52 + 4) = v53;
      *(a1 + v51 + 40) = v54;
      v51 -= 16;
      if (v51 == -32)
      {
        v25 = a1;
        goto LABEL_81;
      }
    }

    if (v53 >= v48)
    {
      v54 = *(a1 + v51 + 24);
      if (v50 >= v54)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }

    v25 = (a1 + v51 + 32);
LABEL_81:
    *v25 = v48;
    v25[1] = v50;
    if (++v47 != 8)
    {
LABEL_82:
      v25 = v45;
      v46 += 16;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

uint64_t sub_240B6E0F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = ((a3 - a2) >> 2) >> 1;
  v6 = a4 - v5;
  if (a4 < v5)
  {
    v6 = 0;
  }

  v7 = *result - 1;
  if (v7 >= v5 + a4)
  {
    v7 = v5 + a4;
  }

  v8 = 0.0;
  v9 = 4 * v5;
  if (v7 >= v6)
  {
    v10 = ~v7 + v6;
    v11 = (a2 + v9 + 4 * v6 - 4 * a4);
    do
    {
      v12 = *v11++;
      v8 = v8 + v12;
      v13 = __CFADD__(v10++, 1);
    }

    while (!v13);
  }

  v14 = *(result + 4);
  if (v14)
  {
    v15 = 0;
    v16 = *(result + 16);
    v17 = (a2 + v9 + 4 * v6 - 4 * a4);
    v18 = *(result + 24) + 4 * v6;
    v19 = 1.0 / v8;
    do
    {
      v20 = 0.0;
      if (v7 >= v6)
      {
        v21 = v18;
        v22 = v17;
        result = ~v7 + v6;
        do
        {
          v23 = *v21++;
          v24 = v23;
          v25 = *v22++;
          v20 = v20 + (v24 * v25);
          v13 = __CFADD__(result++, 1);
        }

        while (!v13);
      }

      *(a5 + 4 * v15++) = v19 * v20;
      v18 += v16;
    }

    while (v15 != v14);
  }

  return result;
}

void sub_240B6E1D4(unsigned int *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a2[1] - *a2;
  v9 = v8 >> 2;
  v10 = (v8 >> 2) >> 1;
  if (v8)
  {
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 >> 2;
    }

    v12 = 0.0;
    do
    {
      v13 = *v7++;
      v12 = v12 + v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = 0.0;
  }

  v14 = v10 + 1;
  v15 = 1.0 / v12;
  sub_240B67CD8(__p, v10 + 1);
  v16 = *a2;
  v17 = __p[0];
  do
  {
    v18 = *v16++;
    *v17++ = v15 * v18;
    --v14;
  }

  while (v14);
  if (v10 >= v6)
  {
    v19 = v6;
  }

  else
  {
    v19 = v10;
  }

  if (v6 >= v10)
  {
    v20 = v6 - v10;
  }

  else
  {
    v20 = 0;
  }

  if (v9 > 14)
  {
    if (v9 == 15)
    {
      v36 = a1[1];
      if (v36)
      {
        v37 = 0;
        v38 = 0;
        v39 = *(a1 + 2);
        v40 = __p[0];
        v41 = *(a1 + 3) + 4 * v19 - 4 * v10;
        do
        {
          if (v10 < v20)
          {
            v42 = (v41 + v39 * v38);
            v43 = *(a3 + 16);
            v44 = *(a3 + 24) + v19 * v43;
            v45 = v6 - 2 * v19;
            v46 = v42;
            do
            {
              v47 = v46[1];
              ++v46;
              *(v44 + v37) = ((v42[3] + v42[11]) * v40[3]) + ((((v42[2] + v42[12]) * v40[2]) + ((v42[6] + v42[8]) * v40[6])) + ((((v47 + v42[13]) * v40[1]) + ((v42[5] + v42[9]) * v40[5])) + ((((*v42 + v42[14]) * *v40) + ((v42[4] + v42[10]) * v40[4])) + (v42[7] * v40[7]))));
              v44 += v43;
              v42 = v46;
              --v45;
            }

            while (v45);
          }

          ++v38;
          v37 += 4;
        }

        while (v38 != v36);
      }
    }

    else
    {
      v61 = a1[1];
      if (v61)
      {
        v62 = 0;
        v63 = 0;
        v64 = *(a1 + 2);
        v65 = __p[0];
        v66 = *(a1 + 3) + 4 * v19 - 4 * v10;
        do
        {
          if (v10 < v20)
          {
            v67 = (v66 + v64 * v63);
            v68 = *(a3 + 16);
            v69 = *(a3 + 24) + v19 * v68;
            v70 = v6 - 2 * v19;
            v71 = v67;
            do
            {
              v72 = v71[1];
              ++v71;
              v73 = ((((v72 + v67[31]) * v65[1]) + ((v67[5] + v67[27]) * v65[5])) + ((v67[9] + v67[23]) * v65[9])) + ((v67[13] + v67[19]) * v65[13]);
              *(v69 + v62) = (((((v67[3] + v67[29]) * v65[3]) + ((v67[7] + v67[25]) * v65[7])) + ((v67[11] + v67[21]) * v65[11])) + ((v67[15] + v67[17]) * v65[15])) + ((((((v67[2] + v67[30]) * v65[2]) + ((v67[6] + v67[26]) * v65[6])) + ((v67[10] + v67[22]) * v65[10])) + ((v67[14] + v67[18]) * v65[14])) + (v73 + ((((((*v67 + v67[32]) * *v65) + ((v67[4] + v67[28]) * v65[4])) + ((v67[8] + v67[24]) * v65[8])) + ((v67[12] + v67[20]) * v65[12])) + (v67[16] * v65[16]))));
              v69 += v68;
              v67 = v71;
              --v70;
            }

            while (v70);
          }

          ++v63;
          v62 += 4;
        }

        while (v63 != v61);
      }
    }
  }

  else if (v9 == 7)
  {
    v21 = a1[1];
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v24 = *__p[0];
      v25 = *(__p[0] + 4);
      v26 = *(a1 + 2);
      v27 = *(__p[0] + 3);
      v28 = *(a1 + 3) + 4 * v19 - 4 * v10;
      do
      {
        if (v10 < v20)
        {
          v29 = v28 + v26 * v23;
          v30 = *(a3 + 16);
          v31 = *(a3 + 24) + v19 * v30;
          v32 = v6 - 2 * v19;
          v33 = v29;
          do
          {
            v34 = *(v33 + 4);
            v33 += 4;
            v35 = vmul_f32(v25, vadd_f32(v34, vrev64_s32(*(v29 + 16))));
            *(v31 + v22) = v35.f32[1] + (v35.f32[0] + ((v24 * (*v29 + *(v29 + 24))) + (*(v29 + 12) * v27)));
            v31 += v30;
            v29 = v33;
            --v32;
          }

          while (v32);
        }

        ++v23;
        v22 += 4;
      }

      while (v23 != v21);
    }
  }

  else
  {
    v48 = a1[1];
    if (v48)
    {
      v49 = 0;
      v50 = 0;
      v51 = *(a1 + 2);
      v52 = __p[0];
      v53 = *(a1 + 3) + 4 * v19 - 4 * v10;
      do
      {
        if (v10 < v20)
        {
          v54 = v53 + v51 * v50;
          v55 = *(a3 + 16);
          v56 = *(a3 + 24) + v19 * v55;
          v57 = v6 - 2 * v19;
          v58 = v54;
          do
          {
            v59 = *(v58 + 4);
            v58 += 4;
            v60 = vmul_f32(vadd_f32(*(v54 + 8), vrev64_s32(*(v54 + 36))), v52[1]);
            *(v56 + v49) = v60.f32[1] + (v60.f32[0] + ((((v59 + *(v54 + 44)) * v52->f32[1]) + ((*(v54 + 20) + *(v54 + 28)) * v52[2].f32[1])) + ((((*v54 + *(v54 + 48)) * v52->f32[0]) + ((*(v54 + 16) + *(v54 + 32)) * v52[2].f32[0])) + (*(v54 + 24) * v52[3].f32[0]))));
            v56 += v55;
            v54 = v58;
            --v57;
          }

          while (v57);
        }

        ++v50;
        v49 += 4;
      }

      while (v50 != v48);
    }
  }

  if (v19)
  {
    v74 = 0;
    v76 = *(a3 + 16);
    v75 = *(a3 + 24);
    do
    {
      sub_240B6E0F8(a1, *a2, a2[1], v74++, v75);
      v75 += v76;
    }

    while (v19 != v74);
  }

  if (v20 < *a1)
  {
    v77 = *(a3 + 16);
    v78 = *(a3 + 24) + v77 * v20;
    do
    {
      sub_240B6E0F8(a1, *a2, a2[1], v20++, v78);
      v78 += v77;
    }

    while (v20 < *a1);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_240B6E70C(unsigned int *a1, uint64_t a2, unsigned int *a3, float a4)
{
  v41 = -1.0 / ((a4 + a4) * a4);
  v7 = (fabsf(a4) * 2.25);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  sub_240B67CD8(&v58, (2 * v8) | 1);
  v9 = 0;
  v10 = v58;
  v11 = 2 * v8;
  v12 = vdupq_n_s32(-v8);
  v13 = (v11 + 4) & 0x1FFFFFFFCLL;
  v14 = vaddq_s32(v12, xmmword_240C115E0);
  v15 = vdupq_n_s64(v11);
  v16 = v58 + 2;
  v40 = v15;
  do
  {
    v47 = vdupq_n_s64(v9);
    v48 = v14;
    v17 = vcgeq_u64(v15, vorrq_s8(v47, xmmword_240C111D0));
    v18 = vmovn_s64(v17);
    v43 = vuzp1_s16(v18, *v17.i8).u8[0];
    v19.i64[0] = v14.i32[0];
    v19.i64[1] = v14.i32[1];
    v20 = vcvtq_f64_s64(v19);
    v19.i64[0] = v14.i32[2];
    v19.i64[1] = v14.i32[3];
    v21 = vcvtq_f64_s64(v19);
    v49 = vmulq_f64(vmulq_n_f64(v20, v41), v20);
    __xa = vmulq_f64(vmulq_n_f64(v21, v41), v21);
    v44 = exp(__xa.f64[1]);
    __x = exp(__xa.f64[0]);
    v42 = exp(v49.f64[1]);
    v22 = exp(v49.f64[0]);
    if (v43)
    {
      v23 = v22;
      *(v16 - 2) = v23;
    }

    if (vuzp1_s16(v18, *&v22).i8[2])
    {
      v24 = v42;
      *(v16 - 1) = v24;
    }

    v15 = v40;
    v25 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v47, xmmword_240C111C0)));
    if (vuzp1_s16(v25, v25).i32[1])
    {
      v26 = __x;
      *v16 = v26;
      v27 = v44;
      v16[1] = v27;
    }

    v9 += 4;
    v28.i64[0] = 0x400000004;
    v28.i64[1] = 0x400000004;
    v14 = vaddq_s32(v48, v28);
    v16 += 4;
  }

  while (v13 != v9);
  if (a1 != a3 && v59 - v10 == 20)
  {
    v29 = 0;
    if (v10 != v59)
    {
      v30 = v10;
      do
      {
        v31 = *v30++;
        *v29.i32 = *v29.i32 + v31;
      }

      while (v30 != v59);
    }

    *v29.i32 = 1.0 / *v29.i32;
    *v14.i32 = *v29.i32 * v10[2];
    *v15.i32 = *v29.i32 * v10[1];
    *v29.i32 = *v29.i32 * *v10;
    v52 = vdupq_lane_s32(*v14.i8, 0);
    v53 = vdupq_lane_s32(*v15.i8, 0);
    v54 = vdupq_lane_s32(v29, 0);
    v55 = v52;
    v56 = v53;
    v57 = v54;
    v50[0] = 0;
    v50[1] = 0;
    *&v32 = *a1;
    *(&v32 + 1) = HIDWORD(*a1);
    v51 = v32;
    sub_240BE8D58(a1, v50, &v52, 0, a3);
    goto LABEL_20;
  }

  if (*a2)
  {
LABEL_19:
    sub_240B6E1D4(a1, &v58, a2);
    sub_240B6E1D4(a2, &v58, a3);
LABEL_20:
    v33 = 0;
    goto LABEL_21;
  }

  sub_240B23590(&v52, a1[1], *a1);
  v33 = v54.u32[2];
  if (!v54.i32[2])
  {
    v35 = v53;
    v53.i64[1] = 0;
    v36 = v54.i64[0];
    *a2 = v52;
    v37 = *(a2 + 24);
    *(a2 + 16) = v35;
    if (v37)
    {
      atomic_fetch_add(&qword_27E519020, -*(v37 - 24));
      free(*(v37 - 32));
      v38 = v54.i32[2];
      *(a2 + 32) = v36;
      if (v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 32) = v36;
    }

    v39 = v53.i64[1];
    v53.i64[1] = 0;
    if (v39)
    {
      atomic_fetch_add(&qword_27E519020, -*(v39 - 24));
      free(*(v39 - 32));
    }

    goto LABEL_19;
  }

LABEL_21:
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  return v33;
}

void sub_240B6EA58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B6EA78(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  sub_240B23590(&v68, v6, v7);
  v8 = v72;
  if (!v72)
  {
    v10 = v69;
    v9 = v70;
    v70 = 0;
    v11 = v71;
    *a2 = v68;
    v12 = *(a2 + 24);
    *(a2 + 16) = v10;
    *(a2 + 24) = v9;
    if (v12)
    {
      atomic_fetch_add(&qword_27E519020, -*(v12 - 24));
      free(*(v12 - 32));
    }

    *(a2 + 32) = v11;
    sub_240B23590(&v63, v6, v7);
    v8 = v67;
    if (!v67)
    {
      v14 = v64;
      v13 = v65;
      v65 = 0;
      v15 = v66;
      *(a2 + 40) = v63;
      v16 = *(a2 + 64);
      *(a2 + 56) = v14;
      *(a2 + 64) = v13;
      if (v16)
      {
        atomic_fetch_add(&qword_27E519020, -*(v16 - 24));
        free(*(v16 - 32));
      }

      v17 = 0;
      *(a2 + 72) = v15;
      v18 = 1;
      __asm
      {
        FMOV            V24.4S, #1.5
        FMOV            V25.4S, #-1.5
      }

      v61 = vdupq_n_s32(0xBD23D70A);
      v62 = vdupq_n_s32(0x3D23D70Au);
      v59 = vdupq_n_s32(0x3F39663Bu);
      v60 = vdupq_n_s32(0xC1E3C0E2);
      v57 = vdupq_n_s32(0xC0A622D7);
      v58 = vdupq_n_s32(0x41E3C0E2u);
      v55 = vdupq_n_s32(0x402C5C5Eu);
      v56 = vdupq_n_s32(0x40A622D7u);
      v53 = vdupq_n_s32(0x3E072B02u);
      v54 = vdupq_n_s32(0x4009EB85u);
      v51 = _Q24;
      v52 = vdupq_n_s32(0xBE072B02);
      v50 = _Q25;
      while (1)
      {
        v25 = v18;
        if (v7)
        {
          v26 = 0;
          v28 = *(a2 + 40 * v17 + 16);
          v27 = *(a2 + 40 * v17 + 24);
          v30 = *&a1[10 * v17 + 4];
          v29 = *&a1[10 * v17 + 6];
          do
          {
            v31 = v29;
            v32 = v27;
            v33 = v6;
            if (v6)
            {
              do
              {
                v34 = *v31++;
                *v32++ = v34;
                --v33;
              }

              while (v33);
            }

            ++v26;
            v27 = (v27 + v28);
            v29 = (v29 + v30);
          }

          while (v26 != v7);
        }

        v8 = sub_240B6E70C(&a1[10 * v17], a3, &a1[10 * v17], 1.5642);
        if (v8)
        {
          break;
        }

        if (v25)
        {
          if (v7)
          {
            for (i = 0; i != v7; ++i)
            {
              if (v6)
              {
                v36 = 0;
                v37 = (*(a2 + 24) + *(a2 + 16) * i);
                v38 = (*(a1 + 3) + *(a1 + 2) * i);
                do
                {
                  v39 = vsubq_f32(*v37, *v38);
                  *v38 = vbslq_s8(vcgtq_f32(*v38, v51), vaddq_f32(*v38, v50), vandq_s8(vaddq_f32(*v38, v51), vcgtq_f32(v50, *v38)));
                  ++v38;
                  *v37++ = vbslq_s8(vcgtq_f32(v39, v62), vaddq_f32(v39, v61), vandq_s8(vaddq_f32(v39, v62), vcgtq_f32(v61, v39)));
                  v36 += 4;
                }

                while (v36 < v6);
              }
            }
          }
        }

        else
        {
          if (!v7)
          {
            goto LABEL_29;
          }

          for (j = 0; j != v7; ++j)
          {
            if (v6)
            {
              v41 = 0;
              v42 = (*(a2 + 64) + *(a2 + 56) * j);
              v43 = (*(a1 + 8) + *(a1 + 7) * j);
              do
              {
                v44 = vbslq_s8(vcgtq_f32(v60, *v43), vmlaq_f32(v60, v59, vaddq_f32(*v43, v58)), vbslq_s8(vcgeq_f32(*v43, v58), vmlaq_f32(v58, v59, vaddq_f32(*v43, v60)), *v43));
                v45 = vsubq_f32(*v42, v44);
                *v42++ = vmulq_f32(vbslq_s8(vcgtq_f32(v57, v45), vmlaq_f32(v57, v59, vaddq_f32(v45, v56)), vbslq_s8(vcgeq_f32(v45, v56), vmlaq_f32(v56, v59, vaddq_f32(v45, v57)), v45)), v55);
                v46 = vmulq_f32(v44, v54);
                *v43++ = vaddq_f32(v46, vbslq_s8(vcgtq_f32(v46, v53), v53, vbslq_s8(vcgtq_f32(v52, v46), v52, v46)));
                v41 += 4;
              }

              while (v41 < v6);
            }
          }
        }

        v18 = 0;
        v17 = 1;
        if ((v25 & 1) == 0)
        {
LABEL_29:
          v8 = 0;
          break;
        }
      }

      if (!v67)
      {
        v47 = v65;
        v65 = 0;
        if (v47)
        {
          atomic_fetch_add(&qword_27E519020, -*(v47 - 24));
          free(*(v47 - 32));
        }
      }
    }

    if (!v72)
    {
      v48 = v70;
      v70 = 0;
      if (v48)
      {
        atomic_fetch_add(&qword_27E519020, -*(v48 - 24));
        free(*(v48 - 32));
      }
    }
  }

  return v8;
}

void sub_240B6EE7C(_Unwind_Exception *exception_object)
{
  if (!*(v1 - 104))
  {
    v3 = *(v1 - 120);
    *(v1 - 120) = 0;
    if (v3)
    {
      atomic_fetch_add(&qword_27E519020, -*(v3 - 24));
      free(*(v3 - 32));
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B6EEF0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_240B2A11C(v97, *a2, a2[1]);
  v6 = v99;
  if (!v99)
  {
    sub_240B2A358(v94, v97);
    v7 = (a3 + 280);
    sub_240B30D80(a3 + 280, v94);
    for (i = 104; i != -16; i -= 40)
    {
      sub_240B22320(&v94[i]);
    }

    sub_240B2A11C(v94, *a2, a2[1]);
    v6 = v96;
    if (!v96)
    {
      sub_240B2A358(&v89, v94);
      v9 = a3 + 160;
      sub_240B30D80(a3 + 160, &v89);
      for (j = 104; j != -16; j -= 40)
      {
        sub_240B22320((&v89 + j));
      }

      v11 = 0;
      while (1)
      {
        v12 = &a2[10 * v11];
        v6 = sub_240B6E70C(v12, a1, &v7[10 * v11], 7.1559);
        if (v6)
        {
          break;
        }

        v13 = v12[1];
        if (v13)
        {
          v14 = 0;
          LODWORD(v15) = *v12;
          do
          {
            if (v15)
            {
              v16 = 0;
              v17 = (*(v9 + 40 * v11 + 24) + *(v9 + 40 * v11 + 16) * v14);
              v18 = (*&v7[10 * v11 + 6] + *&v7[10 * v11 + 4] * v14);
              v19 = (*(v12 + 3) + *(v12 + 2) * v14);
              do
              {
                v20 = *v19++;
                v21 = v20;
                v22 = *v18++;
                *v17++ = vsubq_f32(v21, v22);
                v16 += 4;
                v15 = *v12;
              }

              while (v16 < v15);
              v13 = v12[1];
            }

            ++v14;
          }

          while (v14 < v13);
        }

        if (++v11 == 3)
        {
          v23 = *(a3 + 284);
          if (v23)
          {
            v24 = 0;
            LODWORD(v25) = *(a3 + 280);
            v26 = vdupq_n_s32(0xBEB97B11);
            v27 = vdupq_n_s32(0x424784F6u);
            v28 = vdupq_n_s32(0x420754D3u);
            v29 = vdupq_n_s32(0x41675511u);
            do
            {
              if (v25)
              {
                v30 = 0;
                v31 = *(a3 + 296) * v24;
                v32 = (*(a3 + 384) + v31);
                v33 = (*(a3 + 344) + v31);
                v34 = (*(a3 + 304) + v31);
                do
                {
                  v35 = vmlaq_f32(*v32, v26, *v33);
                  v36 = vmulq_f32(*v33, v29);
                  *v34 = vmulq_f32(*v34, v28);
                  ++v34;
                  *v33++ = v36;
                  *v32++ = vmulq_f32(v35, v27);
                  v30 += 4;
                  v25 = *v7;
                }

                while (v30 < v25);
                v23 = *(a3 + 284);
              }

              ++v24;
            }

            while (v24 < v23);
          }

          v37 = *(a3 + 160);
          v38 = *(a3 + 164);
          sub_240B23590(&v89, *(a3 + 160), *(a3 + 164));
          v6 = v93;
          if (!v93)
          {
            v39 = v90;
            v40 = v91;
            v91 = 0;
            v41 = v92;
            *(a3 + 80) = v89;
            *(a3 + 96) = v39;
            v42 = *(a3 + 104);
            *(a3 + 104) = v40;
            if (v42)
            {
              atomic_fetch_add(&qword_27E519020, -*(v42 - 24));
              free(*(v42 - 32));
            }

            *(a3 + 112) = v41;
            sub_240B23590(&v100, v37, v38);
            v6 = v104;
            if (!v104)
            {
              v44 = v101;
              v43 = v102;
              v102 = 0;
              v45 = v103;
              *(a3 + 120) = v100;
              v46 = *(a3 + 144);
              *(a3 + 136) = v44;
              *(a3 + 144) = v43;
              if (v46)
              {
                atomic_fetch_add(&qword_27E519020, -*(v46 - 24));
                free(*(v46 - 32));
              }

              v47 = 0;
              v48 = 0;
              *(a3 + 152) = v45;
              v49 = 1;
              v87 = vdupq_n_s32(0xBE947AE1);
              v88 = vdupq_n_s32(0x3E947AE1u);
              v85 = vdupq_n_s32(0xBDCCCCCD);
              v86 = vdupq_n_s32(0x3DCCCCCDu);
              while (1)
              {
                v50 = v47;
                if (v38)
                {
                  for (k = 0; k != v38; ++k)
                  {
                    if (v37)
                    {
                      v52 = 0;
                      v53 = (*(a3 + 80 + 40 * v48 + 24) + *(a3 + 80 + 40 * v48 + 16) * k);
                      v54 = (*(v9 + 40 * v48 + 24) + *(a3 + 176) * k);
                      do
                      {
                        v55 = *v54++;
                        *v53++ = v55;
                        v52 += 4;
                      }

                      while (v52 < v37);
                    }
                  }
                }

                v6 = sub_240B6E70C((v9 + 40 * v48), a1, (v9 + 40 * v48), 3.2249);
                if (v6)
                {
                  break;
                }

                if (v49)
                {
                  if (v38)
                  {
                    for (m = 0; m != v38; ++m)
                    {
                      if (v37)
                      {
                        v57 = 0;
                        v58 = (*(a3 + 104) + *(a3 + 96) * m);
                        v59 = (*(a3 + 184) + *(a3 + 176) * m);
                        do
                        {
                          v60 = vsubq_f32(*v58, *v59);
                          *v59 = vbslq_s8(vcgtq_f32(*v59, v88), vaddq_f32(*v59, v87), vandq_s8(vaddq_f32(*v59, v88), vcgtq_f32(v87, *v59)));
                          ++v59;
                          *v58++ = v60;
                          v57 += 4;
                        }

                        while (v57 < v37);
                      }
                    }
                  }
                }

                else if (v38)
                {
                  for (n = 0; n != v38; ++n)
                  {
                    if (v37)
                    {
                      v62 = 0;
                      v63 = (*(a3 + 144) + *(a3 + 136) * n);
                      v64 = (*(a3 + 224) + *(a3 + 176) * n);
                      do
                      {
                        v65 = vsubq_f32(*v63, *v64);
                        *v64 = vaddq_f32(*v64, vbslq_s8(vcgtq_f32(*v64, v86), v86, vbslq_s8(vcgtq_f32(v85, *v64), v85, *v64)));
                        ++v64;
                        *v63++ = v65;
                        v62 += 4;
                      }

                      while (v62 < v37);
                    }
                  }
                }

                v49 = 0;
                v47 = 1;
                v48 = 1;
                if (v50)
                {
                  v6 = sub_240B6E70C((a3 + 240), a1, (a3 + 240), 3.2249);
                  if (!v6)
                  {
                    v66 = *(a3 + 124);
                    if (v66)
                    {
                      v67 = 0;
                      v68 = *(a3 + 120);
                      v70 = *(a3 + 96);
                      v69 = *(a3 + 104);
                      v71 = vdupq_n_s32(0x42380000u);
                      v72 = vdupq_n_s32(0x3EB1A74Au);
                      v73 = vdupq_n_s32(0x3F272C5Bu);
                      do
                      {
                        if (v68)
                        {
                          v74 = 0;
                          v75 = (*(a3 + 144) + *(a3 + 136) * v67);
                          v76 = v69;
                          do
                          {
                            v77 = *v75++;
                            *v76 = vmulq_f32(*v76, vmlaq_f32(v73, v72, vdivq_f32(v71, vmlaq_f32(v71, v77, v77))));
                            ++v76;
                            v74 += 4;
                          }

                          while (v74 < v68);
                        }

                        ++v67;
                        v69 = (v69 + v70);
                      }

                      while (v67 != v66);
                    }

                    v6 = 0;
                  }

                  break;
                }
              }

              if (!v104)
              {
                v78 = v102;
                v102 = 0;
                if (v78)
                {
                  atomic_fetch_add(&qword_27E519020, -*(v78 - 24));
                  free(*(v78 - 32));
                }
              }
            }

            if (!v93)
            {
              v79 = v91;
              v91 = 0;
              if (v79)
              {
                atomic_fetch_add(&qword_27E519020, -*(v79 - 24));
                free(*(v79 - 32));
              }
            }

            if (!v6)
            {
              v6 = sub_240B6EA78((a3 + 80), a3, a1);
            }
          }

          break;
        }
      }

      if (!v96)
      {
        v80 = &v95;
        v81 = -120;
        do
        {
          sub_240B22320(v80);
          v80 -= 5;
          v81 += 40;
        }

        while (v81);
      }
    }

    if (!v99)
    {
      v82 = &v98;
      v83 = -120;
      do
      {
        sub_240B22320(v82);
        v82 -= 5;
        v83 += 40;
      }

      while (v83);
    }
  }

  return v6;
}

void sub_240B6F510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  if (!*(v63 - 112))
  {
    v65 = *(v63 - 128);
    *(v63 - 128) = 0;
    if (v65)
    {
      atomic_fetch_add(&qword_27E519020, -*(v65 - 24));
      free(*(v65 - 32));
    }
  }

  if (!a22 && a20)
  {
    atomic_fetch_add(&qword_27E519020, -*(a20 - 24));
    free(*(a20 - 32));
  }

  if (!a47)
  {
    v66 = &a45;
    v67 = -120;
    do
    {
      sub_240B22320(v66);
      v66 -= 5;
      v67 += 40;
    }

    while (v67);
  }

  if (!a63)
  {
    v68 = &a61;
    v69 = -120;
    do
    {
      sub_240B22320(v68);
      v68 -= 5;
      v69 += 40;
    }

    while (v69);
  }

  _Unwind_Resume(a1);
}

void sub_240B6F5EC(unsigned int *a1, uint64_t a2, float *a3, unsigned int *a4, uint64_t a5, uint64_t a6, __n128 a7, double a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, float32x4_t a13, float32x4_t a14)
{
  v170 = *MEMORY[0x277D85DE8];
  v14 = *a1;
  v15 = a1[1];
  if (v15)
  {
    v16 = 0;
    a7.n128_f64[0] = sqrt(a7.n128_f64[0] * 0.5) * 0.399058176 / 8.5 * *a9.i64;
    a7.n128_f32[0] = a7.n128_f64[0];
    v17 = sqrt(a8 * 0.330000013) * 0.399058176 / 8.5 * *a9.i64;
    v19 = *(a1 + 2);
    v18 = *(a1 + 3);
    a10.i64[0] = 0x3FE199999999999ALL;
    a11.i64[0] = 0x3FF0CCCCCCCCCCCDLL;
    v21 = *(a4 + 2);
    v20 = *(a4 + 3);
    a9.f32[0] = *a9.i64;
    a12.i64[0] = COERCE_UNSIGNED_INT(0.5) | 0x3FD51EB800000000;
    while (1)
    {
      v22 = v18;
      v23 = a3;
      v24 = v20;
      v25 = v14;
      if (v14)
      {
        break;
      }

LABEL_17:
      ++v16;
      v20 = (v20 + v21);
      a3 = (a3 + a2);
      v18 = (v18 + v19);
      if (v16 == v15)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v26 = ((fabsf(*v22) + fabsf(*v23)) * 0.5) + a9.f32[0];
      a13.f32[0] = (*v22 - *v23) * (a7.n128_f32[0] / v26);
      *v24 = a13.i32[0];
      a14.f32[0] = v17 / v26;
      v27 = fabsf(*v22);
      v28 = v27 * 0.55;
      v29 = v27 * 1.05;
      v30 = *v23;
      if (*v22 >= 0.0)
      {
        if (v28 > v30)
        {
          v33 = a14.f32[0];
          v34 = v28 - v30;
          goto LABEL_11;
        }

        if (v29 < v30)
        {
          v31 = a14.f32[0];
          v32 = v30 - v29;
LABEL_14:
          *a14.i64 = v32 * v31;
          *a13.i64 = a13.f32[0] - *a14.i64;
          goto LABEL_15;
        }
      }

      else
      {
        if (v30 > -v28)
        {
          v31 = a14.f32[0];
          v32 = v28 + v30;
          goto LABEL_14;
        }

        if (v30 < -v29)
        {
          v33 = a14.f32[0];
          v34 = -*v23 - v29;
LABEL_11:
          *a14.i64 = v34 * v33;
          *a13.i64 = *a14.i64 + a13.f32[0];
LABEL_15:
          a13.f32[0] = *a13.i64;
          *v24 = a13.i32[0];
        }
      }

      ++v24;
      ++v23;
      ++v22;
      if (!--v25)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v149 = v15;
  v165 = 0;
  v167 = v14;
  v35 = 0uLL;
  do
  {
    if (v14)
    {
      v36 = 0;
      v37 = a6 + v165 * a5;
      v39 = *(a4 + 2);
      v38 = *(a4 + 3);
      v40 = v165 | 0xFFFFFFFC;
      v41 = -4;
      v43 = *a4;
      v42 = a4[1];
      do
      {
        v44 = 0;
        v45 = v168;
        do
        {
          v46 = (v40 + v44);
          if (v40 + v44 < 0 || v42 <= v46)
          {
            v51 = &v168[3 * v44];
            v51[1] = v35;
            v51[2] = v35;
            *v51 = v35;
          }

          else
          {
            v47 = 0;
            v48 = v38 + v39 * v46;
            v49 = v41;
            v50 = &v168[3 * v44 + 2] + 4;
            do
            {
              a7.n128_u64[0] = 0;
              if ((v49 & 0x80000000) == 0 && v43 > v49)
              {
                a7.n128_u32[0] = *(v48 + 4 * v49);
              }

              *(v45 + v47) = a7.n128_u32[0];
              v47 += 4;
              ++v49;
            }

            while (v47 != 36);
            *(v50 + 2) = 0;
            *v50 = 0;
          }

          ++v44;
          v45 += 3;
        }

        while (v44 != 9);
        a7.n128_u64[0] = sub_240B70004(v169, 12, a7.n128_f64[0], 0.0, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64);
        a7.n128_f32[0] = *(v37 + 4 * v36) + a7.n128_f32[0];
        v35 = 0uLL;
        *(v37 + 4 * v36++) = a7.n128_u32[0];
        ++v41;
        LODWORD(v14) = v167;
      }

      while (v36 != v167);
    }

    ++v165;
  }

  while (v165 != 4);
  v52 = v149;
  v53 = *(a4 + 2);
  v54 = v53 >> 2;
  if (v149 - 4 < 5)
  {
    v129 = 4;
  }

  else
  {
    v55 = *(a4 + 3);
    v56 = a5;
    v58 = *a4;
    v57 = a4[1];
    v59 = a6 + 4 * a5 + 16;
    v60 = 4 * v53 - 16 * v54 + v55 + 12;
    v61 = 4 * v53 + 28;
    v62 = v55 + v61 - 12 * v54;
    v63 = v55 + v61 - 8 * v54;
    v64 = 4 * v53 - 4 * v54 + v55 + 16;
    v65 = 16 * v54 + 4 * v53 + v55 + 12;
    v66 = 4 * v53 + 4 * v54 + v55 + 16;
    v67 = 12 * v54 + 4 * v53 + v55 + 16;
    v68 = 8 * v54 + 4 * v53 + v55 + 28;
    v69 = 4;
    v70 = 0uLL;
    v71 = v55 + 4 * v53;
    do
    {
      v151 = v68;
      v152 = v67;
      v153 = v66;
      v154 = v65;
      v155 = v64;
      v156 = v63;
      v157 = v62;
      v158 = v60;
      v159 = v59;
      v72 = 0;
      v162 = v55 + v69 * v53;
      v73 = v69 - 4;
      v74 = -4;
      v163 = v69;
      v75 = a6 + v69 * v56;
      do
      {
        v76 = 0;
        v77 = v168;
        do
        {
          v78 = (v73 + v76);
          if (v73 + v76 < 0 || v57 <= v78)
          {
            v83 = &v168[3 * v76];
            v83[1] = v70;
            v83[2] = v70;
            *v83 = v70;
          }

          else
          {
            v79 = 0;
            v80 = v55 + v53 * v78;
            v81 = v74;
            v82 = &v168[3 * v76 + 2] + 4;
            do
            {
              a7.n128_u64[0] = 0;
              if ((v81 & 0x80000000) == 0 && v58 > v81)
              {
                a7.n128_u32[0] = *(v80 + 4 * v81);
              }

              *(v77 + v79) = a7.n128_u32[0];
              v79 += 4;
              ++v81;
            }

            while (v79 != 36);
            *(v82 + 2) = 0;
            *v82 = 0;
          }

          ++v76;
          v77 += 3;
        }

        while (v76 != 9);
        a7.n128_u64[0] = sub_240B70004(v169, 12, a7.n128_f64[0], 0.0, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64);
        a7.n128_f32[0] = *(v75 + 4 * v72) + a7.n128_f32[0];
        v70 = 0uLL;
        *(v75 + 4 * v72++) = a7.n128_u32[0];
        ++v74;
      }

      while (v72 != 4);
      LODWORD(v14) = v167;
      if (v167 >= 0xC)
      {
        v85 = 0;
        for (i = 12; i <= v167; i += 4)
        {
          v87 = *(v71 + v85 + 16);
          v88 = *(v71 + v85 + 12);
          v89 = vaddq_f32(v87, *(v71 + v85 + 20));
          v90 = vaddq_f32(*(v71 + v85 + 32), vaddq_f32(vaddq_f32(vaddq_f32(*(v71 + v85), *(v71 + v85 + 4)), vaddq_f32(*(v71 + v85 + 8), v88)), vaddq_f32(v89, vaddq_f32(*(v71 + v85 + 24), *(v71 + v85 + 28)))));
          v91 = *(v155 + v85);
          v92 = vaddq_f32(v87, *(v153 + v85));
          v93 = vaddq_f32(*(v154 + v85 + 4), vaddq_f32(vaddq_f32(vaddq_f32(*(v158 + v85 + 4), *(v157 + v85 - 12)), vaddq_f32(*(v156 + v85 - 12), v91)), vaddq_f32(v92, vaddq_f32(*(v151 + v85 - 12), *(v152 + v85)))));
          v94 = vmlaq_f32(vmulq_f32(v90, v90), v93, v93);
          v95 = *(v155 + v85 - 4);
          v96 = vaddq_f32(v87, *(v153 + v85 + 4));
          v97 = vaddq_f32(vaddq_f32(*(v157 + v85 - 24), *(v156 + v85 - 20)), vaddq_f32(v95, vaddq_f32(v96, vaddq_f32(*(v151 + v85 - 4), *(v152 + v85 + 12)))));
          v98 = vmlaq_f32(v94, v97, v97);
          a12 = *(v155 + v85 + 4);
          a14 = vaddq_f32(v87, *(v153 + v85 - 4));
          v99 = vaddq_f32(vaddq_f32(*(v157 + v85), *(v156 + v85 - 4)), vaddq_f32(a12, vaddq_f32(a14, vaddq_f32(*(v151 + v85 - 20), *(v152 + v85 - 12)))));
          v100 = vmlaq_f32(v98, v99, v99);
          v101 = *(v156 + v85 - 8);
          v102 = *(v151 + v85 - 16);
          v103 = vaddq_f32(*(v154 + v85), vaddq_f32(vaddq_f32(vaddq_f32(*(v158 + v85 + 8), *(v157 + v85 - 8)), vaddq_f32(v91, v101)), vaddq_f32(v92, vaddq_f32(v102, *(v152 + v85 - 4)))));
          v104 = *(v156 + v85 - 16);
          v105 = *(v151 + v85 - 8);
          v106 = vaddq_f32(*(v154 + v85 + 8), vaddq_f32(vaddq_f32(vaddq_f32(*(v158 + v85), *(v157 + v85 - 16)), vaddq_f32(v91, v104)), vaddq_f32(v92, vaddq_f32(v105, *(v152 + v85 + 4)))));
          v107 = *(v155 + v85 - 8);
          v108 = *(v153 + v85 + 8);
          v109 = vaddq_f32(*(v153 + v85 + 16), vaddq_f32(vaddq_f32(vaddq_f32(*(v155 + v85 - 16), *(v155 + v85 - 12)), vaddq_f32(v88, v107)), vaddq_f32(v89, vaddq_f32(v108, *(v153 + v85 + 12)))));
          v110 = *(v153 + v85 - 8);
          v111 = *(v155 + v85 + 8);
          a9 = vaddq_f32(*(v155 + v85 + 16), vaddq_f32(vaddq_f32(vaddq_f32(*(v153 + v85 - 16), *(v153 + v85 - 12)), vaddq_f32(v88, v110)), vaddq_f32(v89, vaddq_f32(v111, *(v155 + v85 + 12)))));
          v112 = vaddq_f32(vaddq_f32(v104, *(v157 + v85 - 20)), vaddq_f32(v95, vaddq_f32(v96, vaddq_f32(v105, *(v152 + v85 + 8)))));
          v113 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v100, v103, v103), v106, v106), v109, v109), a9, a9), v112, v112);
          v114 = vaddq_f32(vaddq_f32(v101, *(v157 + v85 - 4)), vaddq_f32(a12, vaddq_f32(a14, vaddq_f32(v102, *(v152 + v85 - 8)))));
          v115 = vmlaq_f32(v113, v114, v114);
          a13 = vaddq_f32(v96, vaddq_f32(v108, *(v151 + v85)));
          v116 = vaddq_f32(vaddq_f32(*(v156 + v85 - 24), v107), vaddq_f32(v95, a13));
          v117 = vmlaq_f32(v115, v116, v116);
          a11 = vaddq_f32(a12, vaddq_f32(a14, vaddq_f32(v110, *(v151 + v85 - 24))));
          a10 = vaddq_f32(vaddq_f32(*(v156 + v85), v111), a11);
          v70 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v117, a10, a10), a9, a9), v109, v109), v106, v106), v103, v103);
          a7 = vaddq_f32(*(v159 + v85), v70);
          *(v159 + v85) = a7;
          v85 += 16;
        }

        v84 = i - 8;
      }

      else
      {
        v84 = 4;
      }

      if (v84 < v167)
      {
        v118 = v84 - 4;
        do
        {
          if (v58 - 4 <= v84 || v57 - 4 <= v163)
          {
            v121 = 0;
            v122 = v168;
            v70 = 0uLL;
            do
            {
              v123 = (v73 + v121);
              if (v73 + v121 < 0 || v57 <= v123)
              {
                v128 = &v168[3 * v121];
                v128[1] = 0uLL;
                v128[2] = 0uLL;
                *v128 = 0uLL;
              }

              else
              {
                v124 = 0;
                v125 = v55 + v53 * v123;
                v126 = v118;
                v127 = &v168[3 * v121 + 2] + 4;
                do
                {
                  a7.n128_u64[0] = 0;
                  if ((v126 & 0x80000000) == 0 && v58 > v126)
                  {
                    a7.n128_u32[0] = *(v125 + 4 * v126);
                  }

                  *(v122 + v124) = a7.n128_u32[0];
                  v124 += 4;
                  ++v126;
                }

                while (v124 != 36);
                *(v127 + 2) = 0;
                *v127 = 0;
              }

              ++v121;
              v122 += 3;
            }

            while (v121 != 9);
            v119 = v169;
            v120 = 12;
          }

          else
          {
            v119 = (v162 + 4 * v84);
            v120 = v53 >> 2;
          }

          a7.n128_u64[0] = sub_240B70004(v119, v120, a7.n128_f64[0], *v70.i64, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64);
          v70.i32[0] = *(v75 + 4 * v84);
          a7.n128_f32[0] = a7.n128_f32[0] + v70.f32[0];
          *(v75 + 4 * v84++) = a7.n128_u32[0];
          ++v118;
          LODWORD(v14) = v167;
        }

        while (v84 != v167);
      }

      v69 = v163 + 1;
      v56 = a5;
      v59 = v159 + a5;
      v71 += v53;
      v60 = v158 + v53;
      v62 = v157 + v53;
      v63 = v156 + v53;
      v64 = v155 + v53;
      v65 = v154 + v53;
      v66 = v153 + v53;
      v67 = v152 + v53;
      v68 = v151 + v53;
      v129 = v149 - 4;
      v70 = 0uLL;
    }

    while (v163 + 1 != v149 - 4);
    v52 = v149;
  }

  if (v129 < v52)
  {
    v130 = 0uLL;
    do
    {
      v166 = v129;
      if (v14)
      {
        v131 = 0;
        v132 = a6 + v129 * a5;
        v133 = *(a4 + 3);
        v134 = *a4;
        v135 = a4[1];
        v136 = v129 - 4;
        v164 = v133 + v129 * v53;
        v137 = -4;
        do
        {
          if (v131 < 4 || v134 - 4 <= v131 || v135 - 4 <= v166)
          {
            v140 = 0;
            v141 = v168;
            do
            {
              v142 = (v136 + v140);
              if (v136 + v140 < 0 || v135 <= v142)
              {
                v147 = &v168[3 * v140];
                v147[1] = v130;
                v147[2] = v130;
                *v147 = v130;
              }

              else
              {
                v143 = 0;
                v144 = v133 + v53 * v142;
                v145 = v137;
                v146 = &v168[3 * v140 + 2] + 4;
                do
                {
                  a7.n128_u64[0] = 0;
                  if ((v145 & 0x80000000) == 0 && v134 > v145)
                  {
                    a7.n128_u32[0] = *(v144 + 4 * v145);
                  }

                  *(v141 + v143) = a7.n128_u32[0];
                  v143 += 4;
                  ++v145;
                }

                while (v143 != 36);
                *(v146 + 2) = 0;
                *v146 = 0;
              }

              ++v140;
              v141 += 3;
            }

            while (v140 != 9);
            v138 = v169;
            v139 = 12;
          }

          else
          {
            v138 = (v164 + 4 * v131);
            v139 = v53 >> 2;
          }

          a7.n128_u64[0] = sub_240B70004(v138, v139, a7.n128_f64[0], 0.0, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64);
          a7.n128_f32[0] = a7.n128_f32[0] + *(v132 + 4 * v131);
          *(v132 + 4 * v131++) = a7.n128_u32[0];
          ++v137;
          LODWORD(v14) = v167;
          v130 = 0uLL;
        }

        while (v131 != v167);
      }

      v129 = v166 + 1;
    }

    while (v166 + 1 != v149);
  }

  v148 = *MEMORY[0x277D85DE8];
}

int32x2_t sub_240B70004(float *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  *&a4 = *(a1 - 1);
  v15 = *a1;
  v16 = &a1[-3 * a2];
  v17 = &a1[-a2];
  v18 = &a1[a2];
  v19 = a1 - 4;
  v20 = a1 - 3;
  v21 = a1 - 2;
  v22 = a1 + 2;
  v23 = &a1[3 * a2];
  v24 = a1 + 3;
  v25 = a1 + 4;
  *&a5 = *a1 + a1[1];
  *&a3 = a1[4] + (((*(a1 - 4) + *(a1 - 3)) + (*(a1 - 2) + *&a4)) + (*&a5 + (a1[2] + a1[3])));
  *&a3 = *&a3 * *&a3;
  v26 = &v16[-a2];
  v27 = &v17[-a2];
  v28 = &v18[a2];
  v29 = &v23[a2];
  v30 = *(v17 - 1);
  v31 = *(v27 - 1);
  v32 = v15 + *v18;
  v33 = *(v28 - 1);
  *&a10 = *v29 + (((*v26 + *v16) + (*v27 + *v17)) + (v32 + (*v28 + *v23)));
  v34 = vmla_f32(*&a3, *&a10, *&a10);
  v35 = v15 + v18[1];
  v36 = v28[1];
  v37 = *(v16 - 2);
  v13.f32[0] = (*(v16 - 3) + *(v27 - 2)) + (v30 + (v35 + (v28[2] + v23[3])));
  v38 = vmla_f32(v34, v13, v13);
  v39 = v17[1];
  v40 = v15 + *(v18 - 1);
  v41 = v27[1];
  v14.f32[0] = (v16[3] + v27[2]) + (v39 + (v40 + (*(v28 - 2) + *(v23 - 3))));
  v42 = vmla_f32(v38, v14, v14);
  v43 = v16[2];
  v12.f32[0] = *(v29 - 1) + (((v26[1] + v16[1]) + (*v17 + v41)) + (v32 + (v33 + *(v23 - 1))));
  v10.f32[0] = v29[1] + (((*(v26 - 1) + *(v16 - 1)) + (*v17 + v31)) + (v32 + (v36 + v23[1])));
  v44 = &v21[-a2];
  v45 = v22[a2];
  v11.f32[0] = v25[a2] + (((v19[-a2] + v20[-a2]) + (*&a4 + *v44)) + (*&a5 + (v45 + v24[a2])));
  v46 = v21[a2];
  v47 = v22[-a2];
  *&a4 = v25[-a2] + (((v19[a2] + v20[a2]) + (*&a4 + v46)) + (*&a5 + (v47 + v24[-a2])));
  *&a5 = (v31 + v37) + (v30 + (v35 + (v36 + v23[2])));
  v48 = vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(v42, v12, v12), v10, v10), v11, v11), *&a4, *&a4), *&a5, *&a5);
  *&a5 = (v41 + v43) + (v39 + (v40 + (v33 + *(v23 - 2))));
  v49 = vmla_f32(v48, *&a5, *&a5);
  *&a5 = (*(v27 - 3) + *v44) + (v30 + (v35 + (v45 + v28[3])));
  v50 = vmla_f32(v49, *&a5, *&a5);
  *&a5 = (v27[3] + v47) + (v39 + (v40 + (v46 + *(v28 - 3))));
  return vdup_lane_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(v50, *&a5, *&a5), *&a4, *&a4), v11, v11), v10, v10), v12, v12), 0);
}

void sub_240B70288(unsigned int *a1, uint64_t a2, float *a3, unsigned int *a4, uint64_t a5, uint64_t a6, __n128 a7, double a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, float32x4_t a13, float32x4_t a14)
{
  v177 = *MEMORY[0x277D85DE8];
  v14 = *a1;
  v15 = a1[1];
  if (v15)
  {
    v16 = 0;
    a7.n128_f64[0] = sqrt(a7.n128_f64[0] * 0.5) * 0.611612574 / 8.5 * *a9.i64;
    a7.n128_f32[0] = a7.n128_f64[0];
    v17 = sqrt(a8 * 0.330000013) * 0.611612574 / 8.5 * *a9.i64;
    v19 = *(a1 + 2);
    v18 = *(a1 + 3);
    a10.i64[0] = 0x3FE199999999999ALL;
    a11.i64[0] = 0x3FF0CCCCCCCCCCCDLL;
    v21 = *(a4 + 2);
    v20 = *(a4 + 3);
    a9.f32[0] = *a9.i64;
    a12.i64[0] = COERCE_UNSIGNED_INT(0.5) | 0x3FD51EB800000000;
    while (1)
    {
      v22 = v18;
      v23 = a3;
      v24 = v20;
      v25 = v14;
      if (v14)
      {
        break;
      }

LABEL_17:
      ++v16;
      v20 = (v20 + v21);
      a3 = (a3 + a2);
      v18 = (v18 + v19);
      if (v16 == v15)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v26 = ((fabsf(*v22) + fabsf(*v23)) * 0.5) + a9.f32[0];
      a13.f32[0] = (*v22 - *v23) * (a7.n128_f32[0] / v26);
      *v24 = a13.i32[0];
      a14.f32[0] = v17 / v26;
      v27 = fabsf(*v22);
      v28 = v27 * 0.55;
      v29 = v27 * 1.05;
      v30 = *v23;
      if (*v22 >= 0.0)
      {
        if (v28 > v30)
        {
          v33 = a14.f32[0];
          v34 = v28 - v30;
          goto LABEL_11;
        }

        if (v29 < v30)
        {
          v31 = a14.f32[0];
          v32 = v30 - v29;
LABEL_14:
          *a14.i64 = v32 * v31;
          *a13.i64 = a13.f32[0] - *a14.i64;
          goto LABEL_15;
        }
      }

      else
      {
        if (v30 > -v28)
        {
          v31 = a14.f32[0];
          v32 = v28 + v30;
          goto LABEL_14;
        }

        if (v30 < -v29)
        {
          v33 = a14.f32[0];
          v34 = -*v23 - v29;
LABEL_11:
          *a14.i64 = v34 * v33;
          *a13.i64 = *a14.i64 + a13.f32[0];
LABEL_15:
          a13.f32[0] = *a13.i64;
          *v24 = a13.i32[0];
        }
      }

      ++v24;
      ++v23;
      ++v22;
      if (!--v25)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v156 = v15;
  v172 = 0;
  v174 = v14;
  v35 = 0uLL;
  do
  {
    if (v14)
    {
      v36 = 0;
      v37 = a6 + v172 * a5;
      v39 = *(a4 + 2);
      v38 = *(a4 + 3);
      v40 = v172 | 0xFFFFFFFC;
      v41 = -4;
      v43 = *a4;
      v42 = a4[1];
      do
      {
        v44 = 0;
        v45 = v175;
        do
        {
          v46 = (v40 + v44);
          if (v40 + v44 < 0 || v42 <= v46)
          {
            v51 = &v175[3 * v44];
            v51[1] = v35;
            v51[2] = v35;
            *v51 = v35;
          }

          else
          {
            v47 = 0;
            v48 = v38 + v39 * v46;
            v49 = v41;
            v50 = &v175[3 * v44 + 2] + 4;
            do
            {
              a7.n128_u64[0] = 0;
              if ((v49 & 0x80000000) == 0 && v43 > v49)
              {
                a7.n128_u32[0] = *(v48 + 4 * v49);
              }

              *(v45 + v47) = a7.n128_u32[0];
              v47 += 4;
              ++v49;
            }

            while (v47 != 36);
            *(v50 + 2) = 0;
            *v50 = 0;
          }

          ++v44;
          v45 += 3;
        }

        while (v44 != 9);
        a7.n128_u64[0] = sub_240B70C38(v176, 12, a7.n128_f64[0], 0.0, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64);
        a7.n128_f32[0] = *(v37 + 4 * v36) + a7.n128_f32[0];
        v35 = 0uLL;
        *(v37 + 4 * v36++) = a7.n128_u32[0];
        ++v41;
        LODWORD(v14) = v174;
      }

      while (v36 != v174);
    }

    ++v172;
  }

  while (v172 != 4);
  v52 = v156;
  v53 = *(a4 + 2);
  v54 = v53 >> 2;
  if (v156 - 4 < 5)
  {
    v136 = 4;
  }

  else
  {
    v55 = *(a4 + 3);
    v56 = a5;
    v58 = *a4;
    v57 = a4[1];
    v59 = a6 + 4 * a5 + 16;
    v60 = 12 * v54 + 4 * v53 + v55 + 28;
    v61 = 4 * v53 + 4 * v54 + v55 + 32;
    v62 = 4 * v53 - 4 * v54 + v55 + 32;
    v63 = 4 * v53 + 24;
    v64 = v55 + v63 - 16 * v54;
    v65 = 16 * v54 + 4 * v53 + v55 + 12;
    v66 = v55 + v63 - 12 * v54;
    v67 = v55 + 4 * v53 - 8 * v54;
    v68 = 8 * v54 + 4 * v53 + v55 + 16;
    v69 = 4;
    v70 = 0uLL;
    v71 = v55 + 4 * v53;
    do
    {
      v158 = v68;
      v159 = v67;
      v160 = v66;
      v161 = v65;
      v162 = v64;
      v163 = v62;
      v164 = v61;
      v165 = v60;
      v166 = v59;
      v72 = 0;
      v169 = v55 + v69 * v53;
      v73 = v69 - 4;
      v74 = -4;
      v170 = v69;
      v75 = a6 + v69 * v56;
      do
      {
        v76 = 0;
        v77 = v175;
        do
        {
          v78 = (v73 + v76);
          if (v73 + v76 < 0 || v57 <= v78)
          {
            v83 = &v175[3 * v76];
            v83[1] = v70;
            v83[2] = v70;
            *v83 = v70;
          }

          else
          {
            v79 = 0;
            v80 = v55 + v53 * v78;
            v81 = v74;
            v82 = &v175[3 * v76 + 2] + 4;
            do
            {
              a7.n128_u64[0] = 0;
              if ((v81 & 0x80000000) == 0 && v58 > v81)
              {
                a7.n128_u32[0] = *(v80 + 4 * v81);
              }

              *(v77 + v79) = a7.n128_u32[0];
              v79 += 4;
              ++v81;
            }

            while (v79 != 36);
            *(v82 + 2) = 0;
            *v82 = 0;
          }

          ++v76;
          v77 += 3;
        }

        while (v76 != 9);
        a7.n128_u64[0] = sub_240B70C38(v176, 12, a7.n128_f64[0], 0.0, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64);
        a7.n128_f32[0] = *(v75 + 4 * v72) + a7.n128_f32[0];
        v70 = 0uLL;
        *(v75 + 4 * v72++) = a7.n128_u32[0];
        ++v74;
      }

      while (v72 != 4);
      LODWORD(v14) = v174;
      if (v174 >= 0xC)
      {
        v85 = 0;
        for (i = 12; i <= v174; i += 4)
        {
          v87 = *(v71 + v85 + 16);
          v88 = vaddq_f32(vaddq_f32(*(v71 + v85), *(v71 + v85 + 8)), vaddq_f32(v87, vaddq_f32(*(v71 + v85 + 24), *(v71 + v85 + 32))));
          v89 = vaddq_f32(vaddq_f32(*(v162 + v85 - 8), *(v159 + v85 + 16)), vaddq_f32(v87, vaddq_f32(*(v158 + v85), *(v161 + v85 + 4))));
          v90 = vmlaq_f32(vmulq_f32(v88, v88), v89, v89);
          v91 = vaddq_f32(vaddq_f32(*(v160 + v85 - 20), *(v159 + v85 + 8)), vaddq_f32(v87, vaddq_f32(*(v158 + v85 + 8), *(v165 + v85))));
          v92 = vmlaq_f32(v90, v91, v91);
          v93 = vaddq_f32(vaddq_f32(*(v160 + v85 + 4), *(v159 + v85 + 24)), vaddq_f32(v87, vaddq_f32(*(v158 + v85 - 8), *(v165 + v85 - 24))));
          v94 = vmlaq_f32(v92, v93, v93);
          v95 = *(v159 + v85 + 20);
          v96 = *(v158 + v85 - 4);
          v97 = vaddq_f32(vaddq_f32(*(v162 + v85 - 4), v95), vaddq_f32(v87, vaddq_f32(v96, *(v161 + v85))));
          v98 = vmlaq_f32(v94, v97, v97);
          v99 = *(v159 + v85 + 12);
          v100 = *(v158 + v85 + 4);
          v101 = vaddq_f32(vaddq_f32(*(v162 + v85 - 12), v99), vaddq_f32(v87, vaddq_f32(v100, *(v161 + v85 + 8))));
          v102 = vmlaq_f32(v98, v101, v101);
          v103 = *(v163 + v85 - 24);
          v104 = *(v164 + v85 - 8);
          v105 = vaddq_f32(vaddq_f32(*(v163 + v85 - 32), v103), vaddq_f32(v87, vaddq_f32(v104, *(v164 + v85))));
          v106 = vmlaq_f32(v102, v105, v105);
          v107 = *(v164 + v85 - 24);
          v108 = *(v163 + v85 - 8);
          v109 = vaddq_f32(vaddq_f32(*(v164 + v85 - 32), v107), vaddq_f32(v87, vaddq_f32(v108, *(v163 + v85))));
          v110 = vmlaq_f32(v106, v109, v109);
          v111 = vaddq_f32(vaddq_f32(v99, *(v160 + v85 - 16)), vaddq_f32(v87, vaddq_f32(v100, *(v165 + v85 - 4))));
          v112 = vmlaq_f32(v110, v111, v111);
          v113 = vaddq_f32(vaddq_f32(v95, *(v160 + v85)), vaddq_f32(v87, vaddq_f32(v96, *(v165 + v85 - 20))));
          v114 = vmlaq_f32(v112, v113, v113);
          v115 = vaddq_f32(vaddq_f32(*(v159 + v85 + 4), v103), vaddq_f32(v87, vaddq_f32(v104, *(v158 + v85 + 12))));
          v116 = vmlaq_f32(v114, v115, v115);
          v117 = vaddq_f32(vaddq_f32(*(v159 + v85 + 28), v108), vaddq_f32(v87, vaddq_f32(v107, *(v158 + v85 - 12))));
          v118 = vmlaq_f32(v116, v117, v117);
          v119 = vaddq_f32(vaddq_f32(v107, *(v158 + v85 - 16)), vaddq_f32(v87, vaddq_f32(v108, *(v159 + v85 + 32))));
          v120 = vaddq_f32(vaddq_f32(v103, *(v159 + v85)), vaddq_f32(v87, vaddq_f32(v104, *(v158 + v85 + 16))));
          v121 = vmlaq_f32(vmlaq_f32(v118, v119, v119), v120, v120);
          a13 = *(v162 + v85 - 16);
          a14 = *(v161 + v85 + 12);
          v122 = vaddq_f32(vaddq_f32(v99, a13), vaddq_f32(v87, vaddq_f32(v100, a14)));
          v123 = vmlaq_f32(v121, v122, v122);
          a11 = *(v162 + v85);
          a12 = *(v161 + v85 - 4);
          a10 = vaddq_f32(v96, a12);
          a9 = vaddq_f32(v95, a11);
          v124 = vaddq_f32(a9, vaddq_f32(v87, a10));
          v70 = vmlaq_f32(v123, v124, v124);
          a7 = vaddq_f32(*(v166 + v85), v70);
          *(v166 + v85) = a7;
          v85 += 16;
        }

        v84 = i - 8;
      }

      else
      {
        v84 = 4;
      }

      if (v84 < v174)
      {
        v125 = v84 - 4;
        do
        {
          if (v58 - 4 <= v84 || v57 - 4 <= v170)
          {
            v128 = 0;
            v129 = v175;
            v70 = 0uLL;
            do
            {
              v130 = (v73 + v128);
              if (v73 + v128 < 0 || v57 <= v130)
              {
                v135 = &v175[3 * v128];
                v135[1] = 0uLL;
                v135[2] = 0uLL;
                *v135 = 0uLL;
              }

              else
              {
                v131 = 0;
                v132 = v55 + v53 * v130;
                v133 = v125;
                v134 = &v175[3 * v128 + 2] + 4;
                do
                {
                  a7.n128_u64[0] = 0;
                  if ((v133 & 0x80000000) == 0 && v58 > v133)
                  {
                    a7.n128_u32[0] = *(v132 + 4 * v133);
                  }

                  *(v129 + v131) = a7.n128_u32[0];
                  v131 += 4;
                  ++v133;
                }

                while (v131 != 36);
                *(v134 + 2) = 0;
                *v134 = 0;
              }

              ++v128;
              v129 += 3;
            }

            while (v128 != 9);
            v126 = v176;
            v127 = 12;
          }

          else
          {
            v126 = (v169 + 4 * v84);
            v127 = v53 >> 2;
          }

          a7.n128_u64[0] = sub_240B70C38(v126, v127, a7.n128_f64[0], *v70.i64, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64);
          v70.i32[0] = *(v75 + 4 * v84);
          a7.n128_f32[0] = a7.n128_f32[0] + v70.f32[0];
          *(v75 + 4 * v84++) = a7.n128_u32[0];
          ++v125;
          LODWORD(v14) = v174;
        }

        while (v84 != v174);
      }

      v69 = v170 + 1;
      v56 = a5;
      v59 = v166 + a5;
      v71 += v53;
      v60 = v165 + v53;
      v61 = v164 + v53;
      v62 = v163 + v53;
      v64 = v162 + v53;
      v65 = v161 + v53;
      v66 = v160 + v53;
      v67 = v159 + v53;
      v68 = v158 + v53;
      v136 = v156 - 4;
      v70 = 0uLL;
    }

    while (v170 + 1 != v156 - 4);
    v52 = v156;
  }

  if (v136 < v52)
  {
    v137 = 0uLL;
    do
    {
      v173 = v136;
      if (v14)
      {
        v138 = 0;
        v139 = a6 + v136 * a5;
        v140 = *(a4 + 3);
        v141 = *a4;
        v142 = a4[1];
        v143 = v136 - 4;
        v171 = v140 + v136 * v53;
        v144 = -4;
        do
        {
          if (v138 < 4 || v141 - 4 <= v138 || v142 - 4 <= v173)
          {
            v147 = 0;
            v148 = v175;
            do
            {
              v149 = (v143 + v147);
              if (v143 + v147 < 0 || v142 <= v149)
              {
                v154 = &v175[3 * v147];
                v154[1] = v137;
                v154[2] = v137;
                *v154 = v137;
              }

              else
              {
                v150 = 0;
                v151 = v140 + v53 * v149;
                v152 = v144;
                v153 = &v175[3 * v147 + 2] + 4;
                do
                {
                  a7.n128_u64[0] = 0;
                  if ((v152 & 0x80000000) == 0 && v141 > v152)
                  {
                    a7.n128_u32[0] = *(v151 + 4 * v152);
                  }

                  *(v148 + v150) = a7.n128_u32[0];
                  v150 += 4;
                  ++v152;
                }

                while (v150 != 36);
                *(v153 + 2) = 0;
                *v153 = 0;
              }

              ++v147;
              v148 += 3;
            }

            while (v147 != 9);
            v145 = v176;
            v146 = 12;
          }

          else
          {
            v145 = (v171 + 4 * v138);
            v146 = v53 >> 2;
          }

          a7.n128_u64[0] = sub_240B70C38(v145, v146, a7.n128_f64[0], 0.0, *a9.i64, *a10.i64, *a11.i64, *a12.i64, *a13.i64, *a14.i64);
          a7.n128_f32[0] = a7.n128_f32[0] + *(v139 + 4 * v138);
          *(v139 + 4 * v138++) = a7.n128_u32[0];
          ++v144;
          LODWORD(v14) = v174;
          v137 = 0uLL;
        }

        while (v138 != v174);
      }

      v136 = v173 + 1;
    }

    while (v173 + 1 != v156);
  }

  v155 = *MEMORY[0x277D85DE8];
}

int32x2_t sub_240B70C38(float *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = &a1[-3 * a2];
  v12 = &a1[3 * a2];
  *&a4 = (*(a1 - 4) + *(a1 - 2)) + (*a1 + (a1[2] + a1[4]));
  *&a4 = *&a4 * *&a4;
  v13 = &v11[-a2];
  v14 = &a1[-a2 - a2];
  v15 = &a1[a2 + a2];
  v16 = &v12[a2];
  LODWORD(a6) = *(v15 + 4);
  v17 = v14[1];
  *&a7 = (*v13 + *v14) + (*a1 + (*v15 + *v16));
  v18 = vmla_f32(*&a4, *&a7, *&a7);
  v19 = *(v14 - 1);
  v20 = *(v11 - 2);
  *&a9 = (*(v11 - 3) + *(v14 - 2)) + (*a1 + (*(v15 + 8) + v12[3]));
  v21 = vmla_f32(v18, *&a9, *&a9);
  v22 = *(v15 - 4);
  v23 = v11[2];
  v10.f32[0] = (v11[3] + v14[2]) + (*a1 + (*(v15 - 8) + *(v12 - 3)));
  *&a10 = (v13[1] + v17) + (*a1 + (v22 + *(v16 - 1)));
  v24 = vmla_f32(vmla_f32(v21, v10, v10), *&a10, *&a10);
  *&a10 = (*(v13 - 1) + v19) + (*a1 + (*&a6 + v16[1]));
  v25 = vmla_f32(v24, *&a10, *&a10);
  v26 = &a1[-a2 - 2];
  v27 = a1[a2 + 2];
  *&a10 = (a1[-a2 - 4] + *v26) + (*a1 + (v27 + a1[a2 + 4]));
  v28 = vmla_f32(v25, *&a10, *&a10);
  v29 = a1[a2 - 2];
  v30 = a1[-a2 + 2];
  *&a10 = (a1[a2 - 4] + v29) + (*a1 + (v30 + a1[-a2 + 4]));
  v31 = vmla_f32(v28, *&a10, *&a10);
  *&a10 = (v19 + v20) + (*a1 + (*&a6 + v12[2]));
  v32 = vmla_f32(v31, *&a10, *&a10);
  *&a10 = (v17 + v23) + (*a1 + (v22 + *(v12 - 2)));
  v33 = vmla_f32(v32, *&a10, *&a10);
  *&a10 = (*(v14 - 3) + *v26) + (*a1 + (v27 + *(v15 + 12)));
  v34 = vmla_f32(v33, *&a10, *&a10);
  *&a10 = (v14[3] + v30) + (*a1 + (v29 + *(v15 - 12)));
  v35 = vmla_f32(v34, *&a10, *&a10);
  *&a10 = (v29 + *(v15 - 16)) + (*a1 + (v30 + v14[4]));
  v36 = vmla_f32(v35, *&a10, *&a10);
  *&a10 = (*v26 + *(v14 - 4)) + (*a1 + (v27 + *(v15 + 16)));
  *&a6 = (v19 + *(v13 - 2)) + (*a1 + (*&a6 + v16[2]));
  *&a3 = (v17 + v13[2]) + (*a1 + (v22 + *(v16 - 2)));
  return vdup_lane_s32(vmla_f32(vmla_f32(vmla_f32(v36, *&a10, *&a10), *&a6, *&a6), *&a3, *&a3), 0);
}

unsigned int *sub_240B70E48(unsigned int *result, void *a2, uint64_t a3, float *a4)
{
  v4 = result[1];
  if (v4)
  {
    v5 = 0;
    v7 = *(result + 7);
    v6 = *(result + 8);
    v9 = a2[7];
    v8 = a2[8];
    v11 = *(result + 2);
    v10 = *(result + 3);
    v13 = a2[2];
    v12 = a2[3];
    result = *result;
    do
    {
      v14 = v12;
      v15 = v10;
      v16 = v8;
      v17 = v6;
      v18 = a4;
      v19 = result;
      if (result)
      {
        do
        {
          v20 = *v14++;
          v21 = v20;
          v22 = *v15++;
          v23 = (v21 + v22) * 2.5;
          v24 = *v16++;
          v25 = v24;
          v26 = *v17++;
          *v18++ = sqrtf((((v26 * 0.4) + (v25 * 0.4)) * ((v26 * 0.4) + (v25 * 0.4))) + (v23 * v23));
          v19 = (v19 - 1);
        }

        while (v19);
      }

      ++v5;
      a4 = (a4 + a3);
      v6 = (v6 + v7);
      v8 = (v8 + v9);
      v10 = (v10 + v11);
      v12 = (v12 + v13);
    }

    while (v5 != v4);
  }

  return result;
}

unsigned int *sub_240B70EF4(unsigned int *result, uint64_t a2, float *a3)
{
  v3 = result[1];
  if (v3)
  {
    v4 = 0;
    v5 = *result;
    v7 = *(result + 2);
    v6 = *(result + 3);
    do
    {
      v8 = v6;
      v9 = a3;
      v10 = v5;
      if (v5)
      {
        do
        {
          v11 = *v8++;
          *v9++ = sqrtf((fabsf(v11) * 6.1942) + 78.113) + -8.8381;
          --v10;
        }

        while (v10);
      }

      ++v4;
      a3 = (a3 + a2);
      v6 = (v6 + v7);
    }

    while (v4 != v3);
  }

  return result;
}

unsigned int *sub_240B70F68(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  if (v3)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 2);
    v7 = *(result + 3);
    v8 = v3 - 3;
    v9 = v7 - 12;
    v10 = v7 - 12 + 3 * v6;
    v11 = v7 - 3 * v6 - 12;
    result = &loc_240C10000;
    do
    {
      if (v5)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(v9 + v12 + 12);
          v15 = v14 + v14;
          v33 = v14 + v14;
          v34 = v14;
          v32 = v14 + v14;
          if (v13 >= 3)
          {
            v16 = *(v9 + v12);
            if (v15 > v16)
            {
              if (v14 <= v16)
              {
                v17 = &v33;
              }

              else
              {
                v33 = v14;
                v17 = &v34;
              }

              v32 = v14 + v14;
              *v17 = v16;
            }

            if (v4 >= 3)
            {
              v18 = *(v11 + v12);
              if (v15 > v18)
              {
                if (v34 <= v18)
                {
                  if (v33 <= v18)
                  {
                    v19 = &v32;
                  }

                  else
                  {
                    v32 = v33;
                    v19 = &v33;
                  }
                }

                else
                {
                  v32 = v33;
                  v33 = v34;
                  v19 = &v34;
                }

                *v19 = v18;
                v15 = v32;
              }
            }

            if (v4 < v8)
            {
              v20 = *(v10 + v12);
              if (v15 > v20)
              {
                if (v34 <= v20)
                {
                  if (v33 <= v20)
                  {
                    v21 = &v32;
                  }

                  else
                  {
                    v32 = v33;
                    v21 = &v33;
                  }
                }

                else
                {
                  v32 = v33;
                  v33 = v34;
                  v21 = &v34;
                }

                *v21 = v20;
                v15 = v32;
              }
            }
          }

          if (v13 < v5 - 3)
          {
            v22 = *(v9 + v12 + 24);
            if (v15 > v22)
            {
              if (v34 <= v22)
              {
                if (v33 <= v22)
                {
                  v23 = &v32;
                }

                else
                {
                  v32 = v33;
                  v23 = &v33;
                }
              }

              else
              {
                v32 = v33;
                v33 = v34;
                v23 = &v34;
              }

              *v23 = v22;
              v15 = v32;
            }

            if (v4 >= 3)
            {
              v24 = *(v11 + v12 + 24);
              if (v15 > v24)
              {
                if (v34 <= v24)
                {
                  if (v33 <= v24)
                  {
                    v25 = &v32;
                  }

                  else
                  {
                    v32 = v33;
                    v25 = &v33;
                  }
                }

                else
                {
                  v32 = v33;
                  v33 = v34;
                  v25 = &v34;
                }

                *v25 = v24;
                v15 = v32;
              }
            }

            if (v4 < v8)
            {
              v26 = *(v10 + v12 + 24);
              if (v15 > v26)
              {
                if (v34 <= v26)
                {
                  if (v33 <= v26)
                  {
                    v27 = &v32;
                  }

                  else
                  {
                    v32 = v33;
                    v27 = &v33;
                  }
                }

                else
                {
                  v32 = v33;
                  v33 = v34;
                  v27 = &v34;
                }

                *v27 = v26;
                v15 = v32;
              }
            }
          }

          if (v4 >= 3)
          {
            v28 = *(v11 + v12 + 12);
            if (v15 > v28)
            {
              if (v34 <= v28)
              {
                if (v33 <= v28)
                {
                  v29 = &v32;
                }

                else
                {
                  v32 = v33;
                  v29 = &v33;
                }
              }

              else
              {
                v32 = v33;
                v33 = v34;
                v29 = &v34;
              }

              *v29 = v28;
              v15 = v32;
            }
          }

          if (v4 < v8)
          {
            v30 = *(v10 + v12 + 12);
            if (v15 > v30)
            {
              if (v34 <= v30)
              {
                if (v33 <= v30)
                {
                  v31 = &v32;
                }

                else
                {
                  v32 = v33;
                  v31 = &v33;
                }
              }

              else
              {
                v32 = v33;
                v33 = v34;
                v31 = &v34;
              }

              *v31 = v30;
              v15 = v32;
            }
          }

          *(a3 + v12) = ((v33 * 0.3) + (v34 * 0.45)) + (v15 * 0.25);
          ++v13;
          v12 += 4;
        }

        while (4 * v5 != v12);
      }

      ++v4;
      a3 += a2;
      v10 += v6;
      v11 += v6;
      v9 += v6;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t sub_240B71278(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_240B23590(&v57, a3, a4);
  v14 = v61;
  if (!v61)
  {
    v53 = v57;
    v15 = v59;
    v59 = 0;
    v54 = v58;
    v55 = v15;
    v56 = v60;
    sub_240B23590(&v48, a3, a4);
    v14 = v52;
    if (!v52)
    {
      v44 = v48;
      v16 = v50;
      v50 = 0;
      v45 = v49;
      v46 = v16;
      v47 = v51;
      sub_240B70E48((a1 + 80), a1, v54, v15);
      sub_240B70E48((a2 + 80), a2, v45, v16);
      v17 = v53;
      v18 = DWORD1(v53);
      sub_240B23590(&v90, v53, DWORD1(v53));
      v14 = v94;
      if (!v94)
      {
        v20 = v91;
        v19 = v92;
        v92 = 0;
        v21 = v93;
        *a6 = v90;
        v22 = *(a6 + 24);
        *(a6 + 16) = v20;
        *(a6 + 24) = v19;
        if (v22)
        {
          atomic_fetch_add(&qword_27E519020, -*(v22 - 24));
          free(*(v22 - 32));
        }

        *(a6 + 32) = v21;
        sub_240B23590(&v86, v17, v18);
        v14 = v89;
        if (!v89)
        {
          v83 = v86;
          v84 = v87;
          *(&v87 + 1) = 0;
          v85 = v88;
          sub_240B23590(&v79, v17, v18);
          v14 = v82;
          if (!v82)
          {
            v76 = v79;
            v77 = v80;
            *(&v80 + 1) = 0;
            v78 = v81;
            sub_240B23590(&v72, v17, v18);
            v14 = v75;
            if (!v75)
            {
              v69 = v72;
              v70 = v73;
              *(&v73 + 1) = 0;
              v71 = v74;
              sub_240B23590(&v65, v17, v18);
              v14 = v68;
              if (!v68)
              {
                v62 = v65;
                v63 = v66;
                *(&v66 + 1) = 0;
                v64 = v67;
                sub_240B70EF4(&v53, v84, *(&v84 + 1));
                sub_240B70EF4(&v44, v77, *(&v77 + 1));
                v14 = sub_240B6E70C(&v83, a5, &v69, 2.7);
                if (!v14)
                {
                  sub_240B70F68(&v69, v84, *(&v84 + 1));
                  v14 = sub_240B6E70C(&v76, a5, &v62, 2.7);
                  if (!v14)
                  {
                    if (v18)
                    {
                      v33 = 0;
                      v34 = *(&v84 + 1);
                      v35 = v84;
                      do
                      {
                        if (v17)
                        {
                          v36 = 0;
                          v37 = *(a6 + 24) + *(a6 + 16) * v33;
                          v38 = *(&v70 + 1) + v70 * v33;
                          v39 = *(&v63 + 1) + v63 * v33;
                          do
                          {
                            *(v37 + v36) = *(v34 + v36);
                            if (a7)
                            {
                              v40 = *(v38 + v36) - *(v39 + v36);
                              v41 = *(a7 + 24) + v33 * *(a7 + 16);
                              *(v41 + v36) = *(v41 + v36) + ((v40 * 10.0) * v40);
                            }

                            v36 += 4;
                          }

                          while (4 * v17 != v36);
                        }

                        ++v33;
                        v34 += v35;
                      }

                      while (v33 != v18);
                    }

                    v14 = 0;
                  }
                }

                v42 = *(&v63 + 1);
                *(&v63 + 1) = 0;
                if (!v42 || (atomic_fetch_add(&qword_27E519020, -*(v42 - 24)), free(*(v42 - 32)), !v68))
                {
                  v43 = *(&v66 + 1);
                  *(&v66 + 1) = 0;
                  if (v43)
                  {
                    atomic_fetch_add(&qword_27E519020, -*(v43 - 24));
                    free(*(v43 - 32));
                  }
                }
              }

              v23 = *(&v70 + 1);
              *(&v70 + 1) = 0;
              if (v23)
              {
                atomic_fetch_add(&qword_27E519020, -*(v23 - 24));
                free(*(v23 - 32));
              }

              if (!v75)
              {
                v24 = *(&v73 + 1);
                *(&v73 + 1) = 0;
                if (v24)
                {
                  atomic_fetch_add(&qword_27E519020, -*(v24 - 24));
                  free(*(v24 - 32));
                }
              }
            }

            v25 = *(&v77 + 1);
            *(&v77 + 1) = 0;
            if (v25)
            {
              atomic_fetch_add(&qword_27E519020, -*(v25 - 24));
              free(*(v25 - 32));
            }

            if (!v82)
            {
              v26 = *(&v80 + 1);
              *(&v80 + 1) = 0;
              if (v26)
              {
                atomic_fetch_add(&qword_27E519020, -*(v26 - 24));
                free(*(v26 - 32));
              }
            }
          }

          v27 = *(&v84 + 1);
          *(&v84 + 1) = 0;
          if (v27)
          {
            atomic_fetch_add(&qword_27E519020, -*(v27 - 24));
            free(*(v27 - 32));
          }

          if (!v89)
          {
            v28 = *(&v87 + 1);
            *(&v87 + 1) = 0;
            if (v28)
            {
              atomic_fetch_add(&qword_27E519020, -*(v28 - 24));
              free(*(v28 - 32));
            }
          }
        }

        if (!v94)
        {
          v29 = v92;
          v92 = 0;
          if (v29)
          {
            atomic_fetch_add(&qword_27E519020, -*(v29 - 24));
            free(*(v29 - 32));
          }
        }
      }

      v46 = 0;
      if (v16)
      {
        atomic_fetch_add(&qword_27E519020, -*(v16 - 3));
        free(*(v16 - 4));
      }

      if (!v52)
      {
        v30 = v50;
        v50 = 0;
        if (v30)
        {
          atomic_fetch_add(&qword_27E519020, -*(v30 - 3));
          free(*(v30 - 4));
        }
      }
    }

    v55 = 0;
    if (v15)
    {
      atomic_fetch_add(&qword_27E519020, -*(v15 - 3));
      free(*(v15 - 4));
    }

    if (!v61)
    {
      v31 = v59;
      v59 = 0;
      if (v31)
      {
        atomic_fetch_add(&qword_27E519020, -*(v31 - 3));
        free(*(v31 - 4));
      }
    }
  }

  return v14;
}

void sub_240B717A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a36 || (atomic_fetch_add(&qword_27E519020, -*(a36 - 24)), free(*(a36 - 32)), !a44))
  {
    if (a42)
    {
      atomic_fetch_add(&qword_27E519020, -*(a42 - 24));
      free(*(a42 - 32));
    }
  }

  if (a48)
  {
    atomic_fetch_add(&qword_27E519020, -*(a48 - 24));
    free(*(a48 - 32));
  }

  if (!a56 && a54)
  {
    atomic_fetch_add(&qword_27E519020, -*(a54 - 24));
    free(*(a54 - 32));
  }

  if (a60)
  {
    atomic_fetch_add(&qword_27E519020, -*(a60 - 24));
    free(*(a60 - 32));
  }

  if (!a68 && a66)
  {
    atomic_fetch_add(&qword_27E519020, -*(a66 - 24));
    free(*(a66 - 32));
  }

  v70 = *(v68 - 216);
  *(v68 - 216) = 0;
  if (v70)
  {
    atomic_fetch_add(&qword_27E519020, -*(v70 - 24));
    free(*(v70 - 32));
  }

  if (!*(v68 - 152))
  {
    v71 = *(v68 - 168);
    *(v68 - 168) = 0;
    if (v71)
    {
      atomic_fetch_add(&qword_27E519020, -*(v71 - 24));
      free(*(v71 - 32));
    }
  }

  if (!*(v68 - 104))
  {
    v72 = *(v68 - 120);
    *(v68 - 120) = 0;
    if (v72)
    {
      atomic_fetch_add(&qword_27E519020, -*(v72 - 24));
      free(*(v72 - 32));
    }
  }

  if (a12)
  {
    atomic_fetch_add(&qword_27E519020, -*(a12 - 24));
    free(*(a12 - 32));
  }

  if (!a20 && a18)
  {
    atomic_fetch_add(&qword_27E519020, -*(a18 - 24));
    free(*(a18 - 32));
  }

  if (a24)
  {
    atomic_fetch_add(&qword_27E519020, -*(a24 - 24));
    free(*(a24 - 32));
  }

  if (!a32)
  {
    if (a30)
    {
      atomic_fetch_add(&qword_27E519020, -*(a30 - 24));
      free(*(a30 - 32));
    }
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_240B71A20(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = result[1];
  if (v6)
  {
    v7 = 0;
    v8 = *result;
    v10 = *(result + 2);
    v9 = *(result + 3);
    v11 = *(a2 + 16);
    v12 = (a2 + 24);
    __asm { FMOV            V4.2D, #1.0 }

    v18 = vdupq_n_s64(0x3FB227F5C0000000uLL);
    result = *(a3 + 16);
    do
    {
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v20 = 0;
          v21 = vmulq_f64(vaddq_f64(vdivq_f64(xmmword_240C11610, vmlaq_n_f64(xmmword_240C11600, xmmword_240C115F0, *(v9 + v10 * v7 + 4 * i))), _Q4), v18);
          v22 = v12;
          v23 = (a3 + 24);
          do
          {
            v24 = *v22;
            v22 += 5;
            v30[v20] = *(v24 + v11 * v7 + 4 * i);
            v25 = *v23;
            v23 += 5;
            v29[v20++] = *(v25 + result * v7 + 4 * i);
          }

          while (v20 != 3);
          v26 = vcvt_f32_f64(vmulq_f64(v21, v21));
          v27.i32[0] = vdup_lane_s32(*&v30[1], 1).u32[0];
          v27.i32[1] = v29[2];
          *(a5 + v7 * a4 + 4 * i) = sqrtf(vaddv_f32(vmla_f32(vmla_f32(vmul_f32(__PAIR64__(v29[1], v30[1]), v26), v26, vmul_n_f32(__PAIR64__(v29[0], v30[0]), a6)), v26, v27)));
        }
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240B71B98(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_240B6E70C(a1, a4, a3, 1.2);
  if (!result)
  {
    result = sub_240B6E70C(a1 + 10, a4, (a3 + 40), 1.2);
    if (!result)
    {
      result = sub_240B6E70C(a1 + 20, a4, (a3 + 80), 1.2);
      if (!result)
      {
        v11 = a1[1];
        if (v11)
        {
          v12 = 0;
          v13 = (a2 + 8);
          v14 = vld1q_dup_f32(v13);
          v15 = vdupq_n_s32(0x3D9F241Fu);
          v16 = vdupq_n_s32(0x3FE0BC5Du);
          v17 = vdupq_n_s32(0x3F223C30u);
          v18 = vdupq_n_s32(0x3E9960A6u);
          v19 = vdupq_n_s32(0x3DCA33ABu);
          v20 = vdupq_n_s32(0x3F31A457u);
          v21 = vdupq_n_s32(0x3E62E7AEu);
          v22 = vdupq_n_s32(0x3E51B76Eu);
          v23 = vdupq_n_s32(0x41439F8Fu);
          v24 = vdupq_n_s32(0x3CA3D70Au);
          v25 = vdupq_n_s32(0x38D1B717u);
          v26 = vdupq_n_s32(0x411F897Au);
          v27 = vdupq_n_s32(0xC0D55555);
          v28 = vdupq_n_s32(0x3F3E11C7u);
          v29 = vdupq_n_s32(0x3FB6E02Bu);
          v30 = vdupq_n_s32(0x3E32458Cu);
          v31 = vdupq_n_s32(0x3F813CEDu);
          v32 = vdupq_n_s32(0xC1B948A1);
          LODWORD(v33) = *a1;
          v34 = 0uLL;
          v35.i64[0] = 0x7F0000007FLL;
          v35.i64[1] = 0x7F0000007FLL;
          __asm { FMOV            V25.4S, #-1.0 }

          v119 = vdupq_n_s32(0x41556F1Du);
          v120 = v14;
          v117 = v18;
          v118 = vdupq_n_s32(0xB5F85AB0);
          v115 = v24;
          v116 = vdupq_n_s32(0x3F7D8625u);
          v113 = v22;
          v114 = _Q25;
          do
          {
            if (v33)
            {
              v41 = 0;
              v42 = 0;
              v43 = a5[2] * v12;
              v44 = a5[13] + v43;
              v45 = a5[8] + v43;
              v46 = a5[3] + v43;
              v47 = *(a1 + 2) * v12;
              v48 = *(a1 + 13) + v47;
              v49 = *(a1 + 8) + v47;
              v50 = *(a1 + 3) + v47;
              v51 = *(a3 + 16) * v12;
              v52 = *(a3 + 104) + v51;
              v53 = *(a3 + 64) + v51;
              v54 = *(a3 + 24) + v51;
              do
              {
                v55 = vmulq_f32(v14, *(v54 + v41));
                v56 = vmulq_f32(v14, *(v53 + v41));
                v57 = vmulq_f32(v14, *(v52 + v41));
                v58 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v16, v15, v57), v17, v56), v18, v55);
                v59 = v17;
                v60 = v15;
                v61 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v16, v19, v57), v20, v56), v21, v55);
                v62 = v32;
                v63 = v21;
                v64 = v20;
                v65 = v19;
                v66 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v23, v22, v57), v24, v56), v24, v55);
                v67 = vmaxnmq_f32(vmaxnmq_f32(v58, v16), v25);
                v68 = vmaxnmq_f32(vmaxnmq_f32(v61, v16), v25);
                v69 = vmaxnmq_f32(vmaxnmq_f32(v66, v23), v25);
                v70 = vaddq_f32(vmaxnmq_f32(v67, v34), v26);
                v71 = vaddq_s32(v70, v27);
                v72 = vaddq_f32(vsubq_s32(v70, vandq_s8(v71, v35)), v114);
                v73 = v25;
                v74 = vmlaq_f32(v118, v72, vmlaq_f32(v29, v28, v72));
                v75 = vmlaq_f32(v116, v72, vmlaq_f32(v31, v30, v72));
                v76 = vaddq_f32(vmaxnmq_f32(v68, v34), v26);
                v77 = vaddq_s32(v76, v27);
                v78 = v23;
                v79 = vaddq_f32(vsubq_s32(v76, vandq_s8(v77, v35)), v114);
                v80 = vmlaq_f32(v118, v79, vmlaq_f32(v29, v28, v79));
                v81 = vmlaq_f32(v116, v79, vmlaq_f32(v31, v30, v79));
                v82 = vaddq_f32(vmaxnmq_f32(v69, v34), v26);
                v83 = vaddq_s32(v82, v27);
                v84 = vaddq_f32(vsubq_s32(v82, vandq_s8(v83, v35)), v114);
                v85 = vmlaq_f32(v29, v28, v84);
                v86 = v28;
                v87 = v26;
                v88 = vmlaq_f32(v31, v30, v84);
                v89 = v31;
                v90 = v30;
                v91 = v29;
                v92 = v27;
                v93 = vmlaq_f32(v118, v84, v85);
                v94 = vmlaq_f32(v116, v84, v88);
                v95 = vdivq_f32(v74, v75);
                v25 = v73;
                v19 = v65;
                v20 = v64;
                v21 = v63;
                v32 = v62;
                v96 = vshrq_n_s32(v71, 0x17uLL);
                v15 = v60;
                v17 = v59;
                v18 = v117;
                v14 = v120;
                v97 = vdivq_f32(vmlaq_f32(v32, v119, vaddq_f32(v95, vcvtq_f32_s32(v96))), v67);
                v22 = v113;
                v24 = v115;
                v98 = vdivq_f32(vmlaq_f32(v32, v119, vaddq_f32(vdivq_f32(v80, v81), vcvtq_f32_s32(vshrq_n_s32(v77, 0x17uLL)))), v68);
                v99 = vdivq_f32(vmlaq_f32(v32, v119, vaddq_f32(vdivq_f32(v93, v94), vcvtq_f32_s32(vshrq_n_s32(v83, 0x17uLL)))), v69);
                v100 = vmulq_f32(v120, *(v48 + v41));
                v101 = vmlaq_f32(v16, v15, v100);
                v102 = vmlaq_f32(v16, v19, v100);
                v103 = vmlaq_f32(v78, v113, v100);
                v104 = vmulq_f32(v120, *(v49 + v41));
                v105 = vmlaq_f32(v101, v59, v104);
                v106 = vmlaq_f32(v102, v20, v104);
                v107 = vmlaq_f32(v103, v115, v104);
                v108 = vmulq_f32(v120, *(v50 + v41));
                v109 = vmulq_f32(vmaxnmq_f32(v98, v25), vmlaq_f32(v106, v21, v108));
                v23 = v78;
                v110 = vmaxnmq_f32(vmulq_f32(vmaxnmq_f32(v97, v25), vmlaq_f32(v105, v117, v108)), v16);
                v111 = vmaxnmq_f32(v109, v16);
                *(v46 + v41) = vsubq_f32(v110, v111);
                *(v45 + v41) = vaddq_f32(v110, v111);
                v112 = vmaxnmq_f32(vmulq_f32(vmaxnmq_f32(v99, v25), vmlaq_f32(v107, v115, v108)), v78);
                v27 = v92;
                v29 = v91;
                v30 = v90;
                v31 = v89;
                v35.i64[0] = 0x7F0000007FLL;
                v35.i64[1] = 0x7F0000007FLL;
                *(v44 + v41) = v112;
                v26 = v87;
                v28 = v86;
                v34 = 0uLL;
                v42 += 4;
                v33 = *a1;
                v41 += 16;
              }

              while (v42 < v33);
              v11 = a1[1];
            }

            ++v12;
          }

          while (v12 < v11);
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_240B72070(void *a1)
{
  sub_240B720A8(a1);

  JUMPOUT(0x245CCE590);
}

void *sub_240B720A8(void *a1)
{
  *a1 = &unk_2852A1A38;
  v2 = a1[76];
  a1[76] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_240B22320(a1 + 74);
  for (i = 68; i != 53; i -= 5)
  {
    sub_240B22320(&a1[i]);
  }

  do
  {
    sub_240B22320(&a1[i]);
    i -= 5;
  }

  while (i != 38);
  do
  {
    sub_240B22320(&a1[i]);
    i -= 5;
  }

  while (i != 23);
  do
  {
    sub_240B22320(&a1[i]);
    i -= 5;
  }

  while (i != 13);
  do
  {
    sub_240B22320(&a1[i]);
    i -= 5;
  }

  while (i != 3);
  return a1;
}

void sub_240B7218C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

void sub_240B724A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((v73 + i));
  }

  if (!a41)
  {
    v77 = &a39;
    v78 = -120;
    do
    {
      sub_240B22320(v77);
      v77 -= 5;
      v78 += 40;
    }

    while (v78);
  }

  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((&a43 + j));
  }

  if (!a72)
  {
    v80 = &a71;
    v81 = -120;
    do
    {
      sub_240B22320(v80);
      v80 -= 5;
      v81 += 40;
    }

    while (v81);
  }

  if (!*(v74 - 88))
  {
    v82 = (v74 - 104);
    v83 = -120;
    do
    {
      sub_240B22320(v82);
      v82 -= 5;
      v83 += 40;
    }

    while (v83);
  }

  (*(*v72 + 8))(v72);
  _Unwind_Resume(a1);
}

void sub_240B725A0(uint64_t a1, unsigned int *a2)
{
  v4 = *a2;
  v5 = a2[1];
  sub_240B2A11C(v40, (v4 + 1) >> 1, (v5 + 1) >> 1);
  if (v42)
  {
    *(a1 + 120) = v42;
  }

  else
  {
    v35 = a1;
    sub_240B2A358(&v36, v40);
    for (i = 0; i != 3; ++i)
    {
      if (v5)
      {
        v7 = 0;
        v8 = v38;
        v9 = (v5 + 1) >> 1;
        do
        {
          if (v4)
          {
            bzero((v39[5 * i] + v7), 4 * ((v4 + 1) >> 1));
          }

          v7 += v8;
          --v9;
        }

        while (v9);
      }
    }

    v10 = 0;
    v12 = *a2;
    v11 = a2[1];
    v14 = v36;
    v13 = v37;
    v16 = (v12 & 1) == 0 || v37 == 0;
    v17 = v38;
    v18 = (v37 - 1) * v38;
    v20 = (v11 & 1) == 0 || v36 == 0;
    do
    {
      if (v11)
      {
        v21 = 0;
        v22 = 0;
        v23 = *(a2 + 2);
        v24 = v38;
        do
        {
          if (v12)
          {
            v25 = 0;
            v26 = v39[5 * v10] + v24 * (v22 >> 1);
            v27 = *&a2[10 * v10 + 6] + v21;
            do
            {
              *(v26 + ((2 * v25) & 0xFFFFFFFFFFFFFFFCLL)) = *(v26 + ((2 * v25) & 0xFFFFFFFFFFFFFFFCLL)) + (*(v27 + 4 * v25) * 0.25);
              ++v25;
            }

            while (v12 != v25);
          }

          ++v22;
          v21 += v23;
        }

        while (v22 != v11);
      }

      if (!v16)
      {
        v28 = v39[5 * v10];
        v29 = v13;
        do
        {
          *(v28 + 4 * v14 - 4) = *(v28 + 4 * v14 - 4) + *(v28 + 4 * v14 - 4);
          v28 += v17;
          --v29;
        }

        while (v29);
      }

      if (!v20)
      {
        v30 = (v39[5 * v10] + v18);
        v31 = v14;
        do
        {
          *v30 = *v30 + *v30;
          ++v30;
          --v31;
        }

        while (v31);
      }

      ++v10;
    }

    while (v10 != 3);
    *(v35 + 120) = 0;
    sub_240B2A358(v35, &v36);
    for (j = 104; j != -16; j -= 40)
    {
      sub_240B22320((&v36 + j));
    }

    if (!v42)
    {
      v33 = &v41;
      v34 = -120;
      do
      {
        sub_240B22320(v33);
        v33 -= 5;
        v34 += 40;
      }

      while (v34);
    }
  }
}

uint64_t sub_240B727E4(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (*(a1 + 8) >= 8uLL && *(a1 + 16) > 7uLL)
  {
    memset(v146, 0, sizeof(v146));
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    memset(v141, 0, sizeof(v141));
    v139 = 0u;
    memset(v138, 0, sizeof(v138));
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v133 = 0u;
    v6 = sub_240B6EEF0(a1 + 568, a2, &v133);
    if (!v6)
    {
      sub_240B23590(&v128, *(a1 + 8), *(a1 + 16));
      v6 = v132;
      if (!v132)
      {
        v8 = v129;
        v7 = v130;
        v130 = 0;
        v9 = v131;
        *a3 = v128;
        v10 = *(a3 + 3);
        *(a3 + 2) = v8;
        *(a3 + 3) = v7;
        if (v10)
        {
          atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
          free(*(v10 - 32));
        }

        *(a3 + 4) = v9;
        v11 = *(a1 + 8);
        if (v11 >= 8 && (v12 = *(a1 + 16), v12 > 7))
        {
          v18 = *(a1 + 24);
          v17 = *(a1 + 28);
          sub_240B23590(&v166, v11, v12);
          v6 = v169;
          if (!v169)
          {
            v163 = v166;
            v164 = v167;
            *(&v167 + 1) = 0;
            v165 = v168;
            sub_240B2A11C(v160, *(a1 + 8), *(a1 + 16));
            v6 = v162;
            if (!v162)
            {
              sub_240B2A358(v154, v160);
              sub_240B731F0(v154);
              v19 = v18;
              v20.n128_f64[0] = v18 * 1.10039033;
              v21.i64[0] = 0x4051F1EBF888C433;
              sub_240B6F5EC((a1 + 80), *(&v136 + 1), v137, &v163, v158, v159, v20, 1.10039033 / v18, v21, v22, v23, v24, v25, v26);
              v27.n128_f64[0] = v18 * 173.5;
              v28.i64[0] = 5.0;
              sub_240B6F5EC((a1 + 40), v134, *(&v134 + 1), &v163, v155, v156[0], v27, 173.5 / v18, v28, v29, v30, v31, v32, v33);
              v34 = sqrtf(v18);
              v35.n128_f64[0] = v34 * 18.7237414;
              v36.i64[0] = 0x415129199CF2CF96;
              sub_240B70288((a1 + 160), *(&v139 + 1), v140, &v163, v158, v159, v35, 18.7237414 / v34, v36, v37, v38, v39, v40, v41);
              v42.n128_f64[0] = v34 * 6923.99476;
              v43.i64[0] = 0x40BF7328887A0C8BLL;
              sub_240B70288((a1 + 120), *&v138[1], *(&v138[1] + 1), &v163, v155, v156[0], v42, 6923.99476 / v34, v43, v44, v45, v46, v47, v48);
              v49.n128_u64[0] = 0x40428A7E8D23887ELL;
              v50.i64[0] = 0x419F0E90AE395810;
              sub_240B70288((a1 + 240), *(&v142 + 1), v143, &v163, v158, v159, v49, 37.081987, v50, v51, v52, v53, v54, v55);
              v56.n128_u64[0] = 0x40C01B60694D0B21;
              v57.i64[0] = 0x412ECAD569613D32;
              sub_240B70288((a1 + 200), *&v141[1], *(&v141[1] + 1), &v163, v155, v156[0], v56, 8246.75321, v57, v58, v59, v60, v61, v62);
              sub_240B2A11C(v151, *(a1 + 8), *(a1 + 16));
              v6 = v153;
              if (!v153)
              {
                sub_240B2A358(v150, v151);
                v63 = 0;
                v64 = vdupq_n_s32(0x3ECCCCCDu);
                do
                {
                  if (v63 != 2)
                  {
                    v65 = dbl_240C82EB0[v63];
                    v66 = v65 * v19;
                    v67 = v65 / v19;
                    if (v66 != 0.0 || v67 != 0.0)
                    {
                      v68 = (a1 + 120 + 40 * v63);
                      v69 = v68[1];
                      if (v69)
                      {
                        v70 = 0;
                        v71 = v66 * 0.8;
                        v72 = v67 * 0.8;
                        v73 = *&v154[10 * v63 + 4];
                        v74 = v156[5 * v63];
                        LODWORD(v75) = *v68;
                        do
                        {
                          if (v75)
                          {
                            v76 = 0;
                            v77 = (*(&v138[1] + 5 * v63 + 1) + *(&v138[1] + 5 * v63) * v70);
                            v78 = (*(v68 + 3) + *(v68 + 2) * v70);
                            v79 = v74;
                            do
                            {
                              v80 = *v78++;
                              v81 = v80;
                              v82 = *v77++;
                              v83 = vsubq_f32(v81, v82);
                              v84 = vmlaq_n_f32(*v79, vmulq_f32(v83, v83), v71);
                              v85 = vabsq_f32(v81);
                              v86 = vmulq_f32(v85, v64);
                              v87 = vbslq_s8(vcltzq_f32(v81), vbslq_s8(vcgtq_f32(v82, vnegq_f32(v86)), vaddq_f32(v82, v86), vandq_s8(vsubq_f32(vnegq_f32(v82), v85), vcgtq_f32(vnegq_f32(v85), v82))), vbslq_s8(vcgtq_f32(v86, v82), vsubq_f32(v86, v82), vandq_s8(vsubq_f32(v82, v85), vcgtq_f32(v82, v85))));
                              *v79++ = vmlaq_n_f32(v84, vmulq_f32(v87, v87), v72);
                              v76 += 4;
                              v75 = *v68;
                            }

                            while (v76 < v75);
                            v69 = v68[1];
                          }

                          ++v70;
                          v74 += v73;
                        }

                        while (v70 < v69);
                      }
                    }
                  }

                  v88 = &dbl_240C82EB0[v63];
                  v89 = v88[3];
                  if (v89 != 0.0)
                  {
                    v90 = (a1 + 200 + 40 * v63);
                    v91 = v90[1];
                    if (v91)
                    {
                      v92 = 0;
                      v94 = *&v154[10 * v63 + 4];
                      v93 = v156[5 * v63];
                      LODWORD(v95) = *v90;
                      do
                      {
                        if (v95)
                        {
                          v96 = 0;
                          v97 = (*(&v141[1] + 5 * v63 + 1) + *(&v141[1] + 5 * v63) * v92);
                          v98 = (*(v90 + 3) + *(v90 + 2) * v92);
                          v99 = v93;
                          do
                          {
                            v100 = *v98++;
                            v101 = v100;
                            v102 = *v97++;
                            v103 = vsubq_f32(v101, v102);
                            *v99 = vmlaq_n_f32(*v99, vmulq_f32(v103, v103), v89);
                            ++v99;
                            v96 += 4;
                            v95 = *v90;
                          }

                          while (v96 < v95);
                          v91 = v90[1];
                        }

                        ++v92;
                        v93 += v94;
                      }

                      while (v92 < v91);
                    }
                  }

                  v104 = v88[6];
                  if (v104 != 0.0)
                  {
                    v105 = (a1 + 320 + 40 * v63);
                    v106 = v105[1];
                    if (v106)
                    {
                      v107 = 0;
                      v109 = *&v150[40 * v63 + 16];
                      v108 = *&v150[40 * v63 + 24];
                      LODWORD(v110) = *v105;
                      do
                      {
                        if (v110)
                        {
                          v111 = 0;
                          v112 = (*(&v146[2] + 5 * v63) + *(&v146[1] + 5 * v63 + 1) * v107);
                          v113 = (*(v105 + 3) + *(v105 + 2) * v107);
                          v114 = v108;
                          do
                          {
                            v115 = *v113++;
                            v116 = v115;
                            v117 = *v112++;
                            v118 = vsubq_f32(v116, v117);
                            *v114++ = vmulq_n_f32(vmulq_f32(v118, v118), v104);
                            v111 += 4;
                            v110 = *v105;
                          }

                          while (v111 < v110);
                          v106 = v105[1];
                        }

                        ++v107;
                        v108 = (v108 + v109);
                      }

                      while (v107 < v106);
                    }
                  }

                  ++v63;
                }

                while (v63 != 3);
                v149 = 0;
                v147 = 0u;
                v148 = 0u;
                v6 = sub_240B71278(a1 + 40, &v133, *(a1 + 8), *(a1 + 16), a1 + 568, &v147, &v157);
                if (!v6)
                {
                  sub_240B71A20(&v147, v150, v154, *(a3 + 2), *(a3 + 3), v17);
                }

                v119 = *(&v148 + 1);
                *(&v148 + 1) = 0;
                if (v119)
                {
                  atomic_fetch_add(&qword_27E519020, -*(v119 - 24));
                  free(*(v119 - 32));
                }

                for (i = 104; i != -16; i -= 40)
                {
                  sub_240B22320(&v150[i]);
                }

                if (!v153)
                {
                  v121 = &v152;
                  v122 = -120;
                  do
                  {
                    sub_240B22320(v121);
                    v121 -= 5;
                    v122 += 40;
                  }

                  while (v122);
                }
              }

              for (j = 26; j != -4; j -= 10)
              {
                sub_240B22320(&v154[j]);
              }

              if (!v162)
              {
                v124 = &v161;
                v125 = -120;
                do
                {
                  sub_240B22320(v124);
                  v124 -= 5;
                  v125 += 40;
                }

                while (v125);
              }
            }

            v126 = *(&v164 + 1);
            *(&v164 + 1) = 0;
            if (v126)
            {
              atomic_fetch_add(&qword_27E519020, -*(v126 - 24));
              free(*(v126 - 32));
            }

            if (!v169)
            {
              v127 = *(&v167 + 1);
              *(&v167 + 1) = 0;
              if (v127)
              {
                atomic_fetch_add(&qword_27E519020, -*(v127 - 24));
                free(*(v127 - 32));
              }
            }
          }
        }

        else
        {
          if (*a3 && a3[1])
          {
            v13 = 0;
            do
            {
              bzero((*(a3 + 3) + *(a3 + 2) * v13++), 4 * *a3);
            }

            while (v13 < a3[1]);
          }

          v6 = 0;
        }

        if (!v132)
        {
          v14 = v130;
          v130 = 0;
          if (v14)
          {
            atomic_fetch_add(&qword_27E519020, -*(v14 - 24));
            free(*(v14 - 32));
          }
        }
      }
    }

    for (k = 384; k != 264; k -= 40)
    {
      sub_240B22320((&v133 + k));
    }

    do
    {
      sub_240B22320((&v133 + k));
      k -= 40;
    }

    while (k != 144);
    do
    {
      sub_240B22320((&v133 + k));
      k -= 40;
    }

    while (k != 64);
    do
    {
      sub_240B22320((&v133 + k));
      k -= 40;
    }

    while (k != -16);
  }

  else
  {
    if (*a3 && a3[1])
    {
      v5 = 0;
      do
      {
        bzero((*(a3 + 3) + *(a3 + 2) * v5++), 4 * *a3);
      }

      while (v5 < a3[1]);
    }

    return 0;
  }

  return v6;
}

void sub_240B72F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = a69;
  a69 = 0;
  if (v74)
  {
    atomic_fetch_add(&qword_27E519020, -*(v74 - 24));
    free(*(v74 - 32));
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a72 + i));
  }

  if (!LODWORD(STACK[0x2E0]))
  {
    v76 = &STACK[0x2D0];
    v77 = -120;
    do
    {
      sub_240B22320(v76);
      v76 -= 5;
      v77 += 40;
    }

    while (v77);
  }

  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((&STACK[0x2E8] + j));
  }

  if (!LODWORD(STACK[0x3D8]))
  {
    v79 = &STACK[0x3C8];
    v80 = -120;
    do
    {
      sub_240B22320(v79);
      v79 -= 5;
      v80 += 40;
    }

    while (v80);
  }

  v81 = *(v72 - 184);
  *(v72 - 184) = 0;
  if (v81)
  {
    atomic_fetch_add(&qword_27E519020, -*(v81 - 24));
    free(*(v81 - 32));
  }

  if (!*(v72 - 120))
  {
    v82 = *(v72 - 136);
    *(v72 - 136) = 0;
    if (v82)
    {
      atomic_fetch_add(&qword_27E519020, -*(v82 - 24));
      free(*(v82 - 32));
    }
  }

  if (!a14)
  {
    if (a12)
    {
      atomic_fetch_add(&qword_27E519020, -*(a12 - 24));
      free(*(a12 - 32));
    }
  }

  sub_240B73178(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_240B73100(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = 0;
    v5 = *a3;
    v7 = *(a3 + 2);
    v6 = *(a3 + 3);
    do
    {
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v9 = *(v6 + 4 * i) * 0.85;
          *(v6 + 4 * i) = v9;
          *(v6 + 4 * i) = v9 + (*(a2 + (v4 >> 1) * result + ((2 * i) & 0xFFFFFFFFFFFFFFFCLL)) * 0.5);
        }
      }

      ++v4;
      v6 += v7;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t sub_240B73178(uint64_t a1)
{
  for (i = 384; i != 264; i -= 40)
  {
    sub_240B22320((a1 + i));
  }

  do
  {
    sub_240B22320((a1 + i));
    i -= 40;
  }

  while (i != 144);
  do
  {
    sub_240B22320((a1 + i));
    i -= 40;
  }

  while (i != 64);
  do
  {
    sub_240B22320((a1 + i));
    i -= 40;
  }

  while (i != -16);
  return a1;
}

void sub_240B731F0(unsigned int *a1)
{
  v2 = 0;
  v3 = a1[1];
  v4 = v3;
  do
  {
    if (v4)
    {
      v5 = 0;
      v6 = *a1;
      do
      {
        if (v6)
        {
          bzero((*&a1[10 * v2 + 6] + *(a1 + 2) * v5), 4 * v6);
          v6 = *a1;
          v3 = a1[1];
        }

        ++v5;
        v4 = v3;
      }

      while (v5 < v3);
    }

    ++v2;
  }

  while (v2 != 3);
}

double sub_240B73278(double a1)
{
  v2 = 0.0;
  v3 = 1.0;
  do
  {
    v4 = 2.0 / (exp((v2 + -1.0) * 4.8) + 1.0);
    v5 = (v4 + -1.0) * 1.2223 + 0.7777;
    v6 = v4 * 0.7777;
    if (v2 < 1.0)
    {
      v6 = v5;
    }

    if (v6 >= a1)
    {
      v7 = v3;
    }

    else
    {
      v7 = -v3;
    }

    v2 = v2 + v7;
    v3 = v3 * 0.5;
  }

  while (v3 >= 1.0e-10);
  return v2;
}

uint64_t sub_240B73334(unsigned int *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = *a1;
  if (v4 <= a2)
  {
    goto LABEL_15;
  }

  v5 = 0;
  if ((a3 & 7) == 0 || a1[1] <= a3)
  {
    return v5 & 1;
  }

  if (v4 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = *a1;
  }

  v7 = *(a1 + 3) + *(a1 + 2) * a3;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  if ((a2 & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    while ((*(v7 + a2) & 1) == 0)
    {
      if (v8 == --a2)
      {
        a2 = v8;
        break;
      }
    }
  }

  if (a2 >= v6)
  {
LABEL_15:
    v5 = 0;
    return v5 & 1;
  }

  do
  {
    v9 = *(v7 + a2);
    if ((v9 & 1) == 0)
    {
      break;
    }

    a2 += byte_240C87EA0[v9 >> 1];
  }

  while (a2 < v6);
  v5 = v9 ^ 1;
  return v5 & 1;
}

uint64_t sub_240B733CC(unsigned int *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*a1 <= a2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  if ((a2 & 7) == 0)
  {
    return v4 & 1;
  }

  v5 = a1[1];
  if (v5 <= a3)
  {
    return v4 & 1;
  }

  if (v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1[1];
  }

  v7 = a3 & 0xFFFFFFFFFFFFFFF8;
  if ((a3 & 0xFFFFFFFFFFFFFFF8) != a3)
  {
    v8 = *(a1 + 2);
    v9 = *(a1 + 3) + v8 * a3;
    v10 = -v8;
    while ((*(v9 + a2) & 1) == 0)
    {
      v9 += v10;
      if (v7 == --a3)
      {
        a3 = v7;
        break;
      }
    }
  }

  if (a3 >= v6)
  {
LABEL_16:
    v4 = 0;
    return v4 & 1;
  }

  do
  {
    v11 = *(*(a1 + 3) + *(a1 + 2) * a3 + a2);
    if ((v11 & 1) == 0)
    {
      break;
    }

    a3 += byte_240C87EBB[v11 >> 1];
  }

  while (a3 < v6);
  v4 = v11 ^ 1;
  return v4 & 1;
}

float sub_240B73474(unsigned int *a1, unint64_t a2, unint64_t a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v10 = a3;
  v12 = a1;
  v13 = 0;
  v614 = *MEMORY[0x277D85DE8];
  v14 = (a7 + 0x40000);
  v15 = 1 << byte_240C83828[*a1];
  v16 = v15 << 6;
  v572 = a7;
  v552 = a4 + 14;
  v541 = 4 * a2;
  v538 = 4 * a2 + 16;
  v535 = 4 * a3 + 16;
  v554 = v15 << 8;
  v17 = a6 + 4;
  v18 = a6 + 32;
  v561 = 4 * a3;
  v532 = v15;
  v533 = 4 * a3 + 4;
  v19 = a6;
  v576 = a7 + 0x40000;
  v550 = v15 << 6;
  do
  {
    v20 = *v12;
    v21 = a7;
    v22 = v552[v13];
    a7 = a6 + 4 * v13 * v16;
    v12 = *(a4 + 10);
    v23 = v22 + 4 * v12 * v10;
    v24 = (v23 + 4 * a2);
    v574 = v24;
    switch(v20)
    {
      case 0:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 8;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77D90, &v612, &v580, 8, v21 + 262400);
        v580.i64[0] = 8;
        v580.i64[1] = a7;
        v596.i64[0] = 8;
        v596.i64[1] = v14;
        sub_240B3F9C8(&v580, &v596);
        v580.i64[0] = 8;
        v580.i64[1] = v14;
        v596.i64[0] = 8;
        v596.i64[1] = a7;
        a7 = v21;
        v26 = v21 + 262400;
        v16 = v550;
        v27 = sub_240B77D90;
        v28 = 8;
        goto LABEL_142;
      case 1:
        v68 = 0;
        v69 = &v24->i8[4];
        v70 = v22 + v541;
        v71 = 4 * v12;
        v72 = 1;
        do
        {
          v73 = 0;
          v74 = v72;
          v75 = 1;
          v76 = &v69[4 * ((4 * v68) | 1) * v12];
          v77 = 8 * v68;
          v78 = 32 * v68;
          v79 = v70 + v12 * (v561 + 16 * v68);
          do
          {
            v80 = v75;
            v81 = v79 + 16 * v73;
            v82 = 0.0;
            v83 = 4;
            v84 = v81;
            do
            {
              v82 = (((v82 + COERCE_FLOAT(*v84)) + COERCE_FLOAT(HIDWORD(*v84))) + COERCE_FLOAT(*(v84 + 8))) + COERCE_FLOAT(HIDWORD(*v84));
              v84 += v71;
              --v83;
            }

            while (v83);
            v85 = v78 + 4 * v73;
            do
            {
              v86 = 0;
              v87 = v85;
              do
              {
                if (v83 != 1 || v86 != 4)
                {
                  *(v19 + v87) = *(v81 + v86) - *&v76[16 * v73];
                }

                v86 += 4;
                v87 += 8;
              }

              while (v86 != 16);
              ++v83;
              v85 += 64;
              v81 += v71;
            }

            while (v83 != 4);
            v75 = 0;
            v88 = (a7 + 4 * (v73 | v77));
            v88[18] = *v88;
            *v88 = v82 * 0.0625;
            v73 = 1;
          }

          while ((v80 & 1) != 0);
          v72 = 0;
          v68 = 1;
        }

        while ((v74 & 1) != 0);
        v89 = *a7;
        v90 = *(a7 + 4);
        v91 = *(a7 + 32);
        v92 = *(a7 + 36);
        v93 = *a7 + v90;
        *a7 = ((v93 + v91) + v92) * 0.25;
        *(a7 + 4) = ((v93 - v91) - v92) * 0.25;
        v94 = v89 - v90;
        v95 = ((v94 + v91) - v92) * 0.25;
        v96 = ((v94 - v91) + v92) * 0.25;
        goto LABEL_64;
      case 2:
        v97 = v22 + v541;
        for (i = 16; i != 144; i += 32)
        {
          v99 = (v97 + v561 * v12);
          v615 = vld2q_f32(v99);
          v100 = (v97 + v533 * v12);
          v616 = vld2q_f32(v100);
          v101 = vaddq_f32(v615.val[0], v615.val[1]);
          v102 = vaddq_f32(vaddq_f32(v101, v616.val[0]), v616.val[1]);
          v103 = vsubq_f32(vsubq_f32(v101, v616.val[0]), v616.val[1]);
          v615.val[0] = vsubq_f32(v615.val[0], v615.val[1]);
          v615.val[1] = vsubq_f32(vaddq_f32(v615.val[0], v616.val[0]), v616.val[1]);
          v615.val[0] = vaddq_f32(vsubq_f32(v615.val[0], v616.val[0]), v616.val[1]);
          __asm { FMOV            V2.4S, #0.25 }

          v107 = (&v580 + i);
          v107[-1] = vmulq_f32(v102, v616.val[0]);
          *v107 = vmulq_f32(v103, v616.val[0]);
          v107[7] = vmulq_f32(v615.val[1], v616.val[0]);
          v107[8] = vmulq_f32(v615.val[0], v616.val[0]);
          v97 += 8 * v12;
        }

        v108 = 0;
        v109 = v593;
        v110 = v594;
        v111 = v591;
        *(a7 + 192) = v592;
        *(a7 + 208) = v109;
        v112 = v595;
        *(a7 + 224) = v110;
        *(a7 + 240) = v112;
        v113 = v589;
        v114 = v590;
        v115 = v587;
        *(a7 + 128) = v588;
        *(a7 + 144) = v113;
        *(a7 + 160) = v114;
        *(a7 + 176) = v111;
        v116 = v585;
        *(a7 + 64) = v584;
        *(a7 + 80) = v116;
        *(a7 + 96) = v586;
        *(a7 + 112) = v115;
        v117 = v581;
        *a7 = v580;
        *(a7 + 16) = v117;
        v118 = v583;
        v119 = 1;
        *(a7 + 32) = v582;
        *(a7 + 48) = v118;
        do
        {
          v120 = 0;
          v121 = v119;
          v122 = 16 * v108;
          v123 = 8 * v108;
          v124 = 1;
          do
          {
            v125 = v124;
            v126 = (a7 + ((8 * v120) | (4 * v122)));
            v127 = v126[1];
            v128 = v126[8];
            v129 = v126[9];
            v130 = *v126 + v127;
            v131 = *v126 - v127;
            v132 = &v580.f32[v120 | v123];
            *v132 = ((v130 + v128) + v129) * 0.25;
            v132[2] = ((v130 - v128) - v129) * 0.25;
            v132[16] = ((v131 + v128) - v129) * 0.25;
            v132[18] = ((v131 - v128) + v129) * 0.25;
            v120 = 1;
            v124 = 0;
          }

          while ((v125 & 1) != 0);
          v119 = 0;
          v108 = 1;
        }

        while ((v121 & 1) != 0);
        for (j = 0; j != 128; j += 32)
        {
          *(v19 + j) = *(&v580 + j);
        }

        v134 = *(a7 + 4);
        v135 = *(a7 + 32);
        v136 = *(a7 + 36);
        v137 = *a7 + v134;
        v138 = *a7 - v134;
        v95 = ((v138 + v135) - v136) * 0.25;
        *a7 = ((v137 + v135) + v136) * 0.25;
        *(a7 + 4) = ((v137 - v135) - v136) * 0.25;
        v96 = ((v138 - v135) + v136) * 0.25;
LABEL_64:
        *(a7 + 32) = v95;
        *(a7 + 36) = v96;
        v12 = a1;
        a7 = v21;
        break;
      case 3:
        v545 = v18;
        v558 = v17;
        v565 = v13;
        v139 = 0;
        v140 = 1;
        do
        {
          v141 = 0;
          v142 = v140;
          v143 = &v24->i8[4 * 4 * v12 * v139];
          v144 = 32 * v139;
          v145 = 1;
          do
          {
            v146 = v145;
            v147 = &v580;
            sub_240B76E50(v12, &v143[16 * v141], &v580, v576);
            v148 = 0;
            v149 = v144 + 4 * v141;
            do
            {
              v150 = 0;
              v151 = v149;
              do
              {
                *(v19 + v151) = v147->i32[v150++];
                v151 += 8;
              }

              while (v150 != 4);
              ++v148;
              v149 += 64;
              ++v147;
            }

            while (v148 != 4);
            v145 = 0;
            v141 = 1;
          }

          while ((v146 & 1) != 0);
          v140 = 0;
          v139 = 1;
          v24 = v574;
        }

        while ((v142 & 1) != 0);
        v152 = *a7;
        v153 = *(a7 + 4);
        v154 = *(a7 + 32);
        v155 = *(a7 + 36);
        v156 = *a7 + v153;
        *a7 = ((v156 + v154) + v155) * 0.25;
        *(a7 + 4) = ((v156 - v154) - v155) * 0.25;
        v157 = v152 - v153;
        *(a7 + 32) = ((v157 + v154) - v155) * 0.25;
        *(a7 + 36) = ((v157 - v154) + v155) * 0.25;
        a7 = v572;
        v10 = a3;
        v12 = a1;
        v14 = v576;
        v16 = v550;
        v13 = v565;
        goto LABEL_82;
      case 4:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 16;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77E50, &v612, &v580, 16, v21 + 263168);
        v580.i64[0] = 16;
        v580.i64[1] = a7;
        v596.i64[0] = 16;
        v596.i64[1] = v14;
        sub_240B3F62C(&v580, &v596);
        v580.i64[0] = 16;
        v580.i64[1] = v14;
        v596.i64[0] = 16;
        v596.i64[1] = a7;
        a7 = v21;
        v26 = v21 + 263168;
        v16 = v550;
        v27 = sub_240B77E50;
        v28 = 16;
        goto LABEL_142;
      case 5:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 32;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77CD0, &v612, &v580, 32, v21 + 266240);
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 32, 32);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        v16 = v550;
        a7 = v21;
        v26 = v21 + 266240;
        v27 = sub_240B77CD0;
        v28 = 32;
        goto LABEL_142;
      case 6:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 8;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v566 = v13;
        v158 = v18;
        sub_240B3F2E8(sub_240B77E50, &v612, &v580, 8, v21 + 262656);
        v580.i64[0] = 8;
        v580.i64[1] = a7;
        v596.i64[0] = 16;
        v596.i64[1] = v14;
        sub_240B3F7FC(&v580, &v596);
        v580.i64[0] = 16;
        v580.i64[1] = v14;
        v596.i64[0] = 16;
        v596.i64[1] = a7;
        a7 = v21;
        v194 = sub_240B77D90;
        v195 = v21 + 262656;
        v16 = v550;
        v196 = 16;
        goto LABEL_108;
      case 7:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 16;
        v580.i64[1] = v14;
        v566 = v13;
        v158 = v18;
        sub_240B3F2E8(sub_240B77D90, &v612, &v580, 16, v21 + 262656);
        v580.i64[0] = 16;
        v580.i64[1] = v14;
        v596.i64[0] = 8;
        v596.i64[1] = a7;
        sub_240B3F714(&v580, &v596);
        v580.i64[0] = 8;
        v580.i64[1] = a7;
        v596.i64[0] = 8;
        v596.i64[1] = v14;
        v16 = v550;
        sub_240B3F2E8(sub_240B77E50, &v580, &v596, 8, v21 + 262656);
        v580.i64[0] = 8;
        v580.i64[1] = v14;
        v10 = a3;
        v596.i64[0] = 16;
        v596.i64[1] = a7;
        a7 = v21;
        sub_240B3F7FC(&v580, &v596);
        goto LABEL_109;
      case 8:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 8;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v566 = v13;
        v158 = v18;
        sub_240B3F2E8(sub_240B77CD0, &v612, &v580, 8, v21 + 263168);
        v580.i64[0] = 8;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v14;
        sub_240B76EE0(&v580, &v596);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        a7 = v21;
        v194 = sub_240B77D90;
        v197 = 1024;
        goto LABEL_107;
      case 9:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v566 = v13;
        v158 = v18;
        sub_240B3F2E8(sub_240B77D90, &v612, &v580, 32, v21 + 263168);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v596.i64[0] = 8;
        v596.i64[1] = a7;
        sub_240B3F8E0(&v580, &v596);
        v580.i64[0] = 8;
        v580.i64[1] = a7;
        v596.i64[0] = 8;
        v596.i64[1] = v14;
        v16 = v550;
        sub_240B3F2E8(sub_240B77CD0, &v580, &v596, 8, v21 + 263168);
        v580.i64[0] = 8;
        v580.i64[1] = v14;
        v10 = a3;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        a7 = v21;
        sub_240B76EE0(&v580, &v596);
        goto LABEL_109;
      case 10:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 16;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v566 = v13;
        v158 = v18;
        sub_240B3F2E8(sub_240B77CD0, &v612, &v580, 16, v21 + 264192);
        v580.i64[0] = 16;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 32, 16);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        a7 = v21;
        v194 = sub_240B77E50;
        v197 = 2048;
LABEL_107:
        v195 = v21 + (v197 | 0x40000u);
        v16 = v550;
        v196 = 32;
LABEL_108:
        sub_240B3F2E8(v194, &v580, &v596, v196, v195);
LABEL_109:
        v18 = v158;
        v13 = v566;
        goto LABEL_144;
      case 11:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77E50, &v612, &v580, 32, v21 + 264192);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v596.i64[0] = 16;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 16, 32);
        v580.i64[0] = 16;
        v580.i64[1] = a7;
        v596.i64[0] = 16;
        v596.i64[1] = v14;
        v16 = v550;
        sub_240B3F2E8(sub_240B77CD0, &v580, &v596, 16, v21 + 264192);
        v580.i64[0] = 16;
        v580.i64[1] = v14;
        v10 = a3;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        a7 = v21;
        v27 = sub_240B77BEC;
        v28 = 32;
        v26 = 16;
        goto LABEL_142;
      case 12:
        v545 = v18;
        v558 = v17;
        v159 = v13;
        v160 = 0;
        v161 = 1;
        do
        {
          v162 = v161;
          v163 = 32 * v160;
          v596.i64[0] = v12;
          v596.i64[1] = v24->i64 + 4 * 4 * v12 * v160;
          sub_240B76DAC(&v596, &v580, v14);
          for (k = 0; k != 128; k += 32)
          {
            v165 = v19 + v163;
            v166 = *(&v580 + k + 16);
            *v165 = *(&v580 + k);
            *(v165 + 16) = v166;
            v163 += 64;
          }

          v161 = 0;
          v160 = 1;
          v24 = v574;
        }

        while ((v162 & 1) != 0);
        v167 = *a7;
        v168 = *(a7 + 32);
        *a7 = (*a7 + v168) * 0.5;
        *(a7 + 32) = (v167 - v168) * 0.5;
        a7 = v572;
        v10 = a3;
        v12 = a1;
        v16 = v550;
        v13 = v159;
LABEL_82:
        v17 = v558;
        v18 = v545;
        break;
      case 13:
        v547 = v18;
        v567 = v13;
        v198 = 0;
        v199 = 1;
        do
        {
          v570 = v199;
          v200 = 32 * v198;
          v596.i64[0] = 4;
          v596.i64[1] = &v580;
          sub_240B41588(v12, &v24[v198], &v596, v572 + 16392);
          v596.i64[0] = 4;
          v596.i64[1] = &v580;
          v612 = 8;
          v613 = v576;
          sub_240B404FC(&v596, &v612, v201);
          v596.i64[0] = 8;
          v596.i64[1] = v576;
          v612 = 8;
          v613 = &v580;
          sub_240B3F2E8(sub_240B77F24, &v596, &v612, 8, &v572[16392]);
          for (m = 0; m != 128; m += 32)
          {
            v203 = v19 + v200;
            v204 = *(&v580 + m + 16);
            *v203 = *(&v580 + m);
            *(v203 + 16) = v204;
            v200 += 64;
          }

          v199 = 0;
          v198 = 1;
          v24 = v574;
        }

        while ((v570 & 1) != 0);
        v205 = *a7;
        v206 = *(a7 + 32);
        *a7 = (*a7 + v206) * 0.5;
        *(a7 + 32) = (v205 - v206) * 0.5;
        a7 = v572;
        v10 = a3;
        v12 = a1;
        v18 = v547;
        v16 = v550;
        v13 = v567;
        v14 = v576;
        break;
      case 14:
        v29 = 0;
        v602 = 0u;
        v603 = 0u;
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        v30 = v24;
        v596 = 0u;
        v597 = 0u;
        do
        {
          *(&v596 + v29) = *v30;
          v29 += 16;
          v30 = (v30 + 4 * v12);
        }

        while (v29 != 64);
        v31 = 0;
        v32 = &unk_240C84030;
        do
        {
          v33 = 0;
          v34 = 0uLL;
          do
          {
            v34 = vmlaq_n_f32(v34, v32[v33 * 4], v596.f32[v33]);
            ++v33;
          }

          while (v33 != 16);
          *(&v612 + 4 * v31) = v34;
          ++v32;
          _CF = v31 >= 0xC;
          v31 += 4;
        }

        while (!_CF);
        v36 = 0;
        v37 = &v612;
        v38 = v19;
        do
        {
          v39 = 0;
          v40 = v38;
          do
          {
            *v40 = *(v37 + v39);
            v40 += 2;
            v39 += 4;
          }

          while (v39 != 16);
          ++v36;
          v38 += 16;
          v37 += 2;
        }

        while (v36 != 4);
        v543 = v18;
        v564 = v13;
        v41 = &v596;
        sub_240B76E50(v12, v24 + 1, &v596, &v580);
        v42 = 0;
        v43 = v17;
        do
        {
          v44 = 0;
          v45 = v43;
          do
          {
            *v45 = v41->i32[v44];
            v45 += 2;
            ++v44;
          }

          while (v44 != 8);
          ++v42;
          v43 += 16;
          ++v41;
        }

        while (v42 != 4);
        v578 = v12;
        v579 = &v574[v12];
        sub_240B76DAC(&v578, &v596, &v580);
        v46 = 0;
        v18 = v543;
        v47 = v543;
        do
        {
          v48 = *(&v596 + v46 + 16);
          *v47 = *(&v596 + v46);
          *(v47 + 16) = v48;
          v47 += 64;
          v46 += 32;
        }

        while (v46 != 128);
        goto LABEL_132;
      case 15:
        v169 = 0;
        v602 = 0u;
        v603 = 0u;
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        v170 = &v24[1];
        v596 = 0u;
        v597 = 0u;
        do
        {
          v171 = vrev64q_s32(*v170);
          *(&v596 + v169) = vextq_s8(v171, v171, 8uLL);
          v169 += 16;
          v170 = (v170 + 4 * v12);
        }

        while (v169 != 64);
        v172 = 0;
        v173 = &unk_240C84030;
        do
        {
          v174 = 0;
          v175 = 0uLL;
          do
          {
            v175 = vmlaq_n_f32(v175, v173[v174 * 4], v596.f32[v174]);
            ++v174;
          }

          while (v174 != 16);
          *(&v612 + 4 * v172) = v175;
          ++v173;
          _CF = v172 >= 0xC;
          v172 += 4;
        }

        while (!_CF);
        v176 = 0;
        v177 = &v612;
        v178 = v19;
        do
        {
          v179 = 0;
          v180 = v178;
          do
          {
            *v180 = *(v177 + v179);
            v180 += 2;
            v179 += 4;
          }

          while (v179 != 16);
          ++v176;
          v178 += 16;
          v177 += 2;
        }

        while (v176 != 4);
        v546 = v18;
        v564 = v13;
        v181 = &v596;
        sub_240B76E50(v12, v24, &v596, &v580);
        v182 = 0;
        v183 = v17;
        do
        {
          v184 = 0;
          v185 = v183;
          do
          {
            *v185 = v181->i32[v184];
            v185 += 2;
            ++v184;
          }

          while (v184 != 8);
          ++v182;
          v183 += 16;
          ++v181;
        }

        while (v182 != 4);
        v578 = v12;
        v579 = &v574[v12];
        sub_240B76DAC(&v578, &v596, &v580);
        v186 = 0;
        v18 = v546;
        v187 = v546;
        do
        {
          v188 = *(&v596 + v186 + 16);
          *v187 = *(&v596 + v186);
          *(v187 + 16) = v188;
          v187 += 64;
          v186 += 32;
        }

        while (v186 != 128);
        goto LABEL_132;
      case 16:
        v602 = 0u;
        v603 = 0u;
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        v49 = 48;
        v50 = &v24[v12];
        v596 = 0u;
        v597 = 0u;
        do
        {
          *(&v596 + v49) = *v50;
          v49 -= 16;
          v50 = (v50 + 4 * v12);
        }

        while (v49 != -16);
        v51 = 0;
        v52 = &unk_240C84030;
        do
        {
          v53 = 0;
          v54 = 0uLL;
          do
          {
            v54 = vmlaq_n_f32(v54, v52[v53 * 4], v596.f32[v53]);
            ++v53;
          }

          while (v53 != 16);
          *(&v612 + 4 * v51) = v54;
          ++v52;
          _CF = v51 >= 0xC;
          v51 += 4;
        }

        while (!_CF);
        v55 = 0;
        v56 = &v612;
        v57 = v19;
        do
        {
          v58 = 0;
          v59 = v57;
          do
          {
            *v59 = *(v56 + v58);
            v59 += 2;
            v58 += 4;
          }

          while (v58 != 16);
          ++v55;
          v57 += 16;
          v56 += 2;
        }

        while (v55 != 4);
        v544 = v18;
        v564 = v13;
        v60 = &v596;
        sub_240B76E50(v12, &v24[v12 + 1], &v596, &v580);
        v61 = 0;
        v62 = v17;
        do
        {
          v63 = 0;
          v64 = v62;
          do
          {
            *v64 = v60->i32[v63];
            v64 += 2;
            ++v63;
          }

          while (v63 != 8);
          ++v61;
          v62 += 16;
          ++v60;
        }

        while (v61 != 4);
        v578 = v12;
        v579 = v574;
        sub_240B76DAC(&v578, &v596, &v580);
        v65 = 0;
        v18 = v544;
        v66 = v544;
        do
        {
          v67 = *(&v596 + v65 + 16);
          *v66 = *(&v596 + v65);
          *(v66 + 16) = v67;
          v66 += 64;
          v65 += 32;
        }

        while (v65 != 128);
        goto LABEL_132;
      case 17:
        v602 = 0u;
        v603 = 0u;
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        v207 = (v22 + v538 + v535 * v12);
        v208 = 48;
        v596 = 0u;
        v597 = 0u;
        do
        {
          v209 = vrev64q_s32(*v207);
          *(&v596 + v208) = vextq_s8(v209, v209, 8uLL);
          v208 -= 16;
          v207 = (v207 + 4 * v12);
        }

        while (v208 != -16);
        v210 = 0;
        v211 = &unk_240C84030;
        do
        {
          v212 = 0;
          v213 = 0uLL;
          do
          {
            v213 = vmlaq_n_f32(v213, v211[v212 * 4], v596.f32[v212]);
            ++v212;
          }

          while (v212 != 16);
          *(&v612 + 4 * v210) = v213;
          ++v211;
          _CF = v210 >= 0xC;
          v210 += 4;
        }

        while (!_CF);
        v214 = 0;
        v215 = &v612;
        v216 = v19;
        do
        {
          v217 = 0;
          v218 = v216;
          do
          {
            *v218 = *(v215 + v217);
            v218 += 2;
            v217 += 4;
          }

          while (v217 != 16);
          ++v214;
          v216 += 16;
          v215 += 2;
        }

        while (v214 != 4);
        v548 = v18;
        v564 = v13;
        v219 = &v596;
        sub_240B76E50(v12, &v24[v12], &v596, &v580);
        v220 = 0;
        v221 = v17;
        do
        {
          v222 = 0;
          v223 = v221;
          do
          {
            *v223 = v219->i32[v222];
            v223 += 2;
            ++v222;
          }

          while (v222 != 8);
          ++v220;
          v221 += 16;
          ++v219;
        }

        while (v220 != 4);
        v578 = v12;
        v579 = v574;
        sub_240B76DAC(&v578, &v596, &v580);
        v224 = 0;
        v18 = v548;
        v225 = v548;
        do
        {
          v226 = *(&v596 + v224 + 16);
          *v225 = *(&v596 + v224);
          *(v225 + 16) = v226;
          v225 += 64;
          v224 += 32;
        }

        while (v224 != 128);
LABEL_132:
        v227 = *(a7 + 4);
        v228 = *a7 * 0.25;
        v229 = *(a7 + 32);
        v230.f32[0] = (v228 + v227) + (v229 * 2.0);
        v230.f32[1] = v228 - v227;
        *a7 = vmul_f32(v230, 0x3F0000003E800000);
        *(a7 + 32) = ((v228 + v227) + (v229 * -2.0)) * 0.25;
        v12 = a1;
        a7 = v21;
        v13 = v564;
        break;
      case 18:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 64;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77B18, &v612, &v580, 64, v21 + 278528);
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v596.i64[0] = 64;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 64, 64);
        v580.i64[0] = 64;
        v580.i64[1] = v14;
        v596.i64[0] = 64;
        v596.i64[1] = a7;
        v16 = v550;
        a7 = v21;
        v26 = v21 + 278528;
        v27 = sub_240B77B18;
        v28 = 64;
        goto LABEL_142;
      case 19:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 32;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v189 = v13;
        v190 = v18;
        sub_240B3F2E8(sub_240B77B18, &v612, &v580, 32, v21 + 270336);
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 64;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 64, 32);
        v580.i64[0] = 64;
        v580.i64[1] = v14;
        v596.i64[0] = 64;
        v596.i64[1] = a7;
        v16 = v550;
        a7 = v21;
        v191 = sub_240B77CD0;
        v192 = v21 + 270336;
        v193 = 64;
        goto LABEL_139;
      case 20:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 64;
        v580.i64[1] = v14;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77CD0, &v612, &v580, 64, v21 + 270336);
        v580.i64[0] = 64;
        v580.i64[1] = v14;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 32, 64);
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77B18, &v580, &v596, 32, v21 + 270336);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v10 = a3;
        v596.i64[0] = 64;
        v596.i64[1] = a7;
        a7 = v21;
        v27 = sub_240B77BEC;
        v28 = 64;
        v26 = 32;
        goto LABEL_142;
      case 21:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 128;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77A58, &v612, &v580, 128, v21 + 327680);
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v596.i64[0] = 128;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 128, 128);
        v580.i64[0] = 128;
        v580.i64[1] = v14;
        v596.i64[0] = 128;
        v596.i64[1] = a7;
        v16 = v550;
        a7 = v21;
        v26 = v21 + 327680;
        v27 = sub_240B77A58;
        v28 = 128;
        goto LABEL_142;
      case 22:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 64;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v189 = v13;
        v190 = v18;
        sub_240B3F2E8(sub_240B77A58, &v612, &v580, 64, v21 + 294912);
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v596.i64[0] = 128;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 128, 64);
        v580.i64[0] = 128;
        v580.i64[1] = v14;
        v596.i64[0] = 128;
        v596.i64[1] = a7;
        v16 = v550;
        a7 = v21;
        v191 = sub_240B77B18;
        v192 = v21 + 294912;
        v193 = 128;
        goto LABEL_139;
      case 23:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 128;
        v580.i64[1] = v14;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77B18, &v612, &v580, 128, v21 + 294912);
        v580.i64[0] = 128;
        v580.i64[1] = v14;
        v596.i64[0] = 64;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 64, 128);
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v596.i64[0] = 64;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77A58, &v580, &v596, 64, v21 + 294912);
        v580.i64[0] = 64;
        v580.i64[1] = v14;
        v10 = a3;
        v596.i64[0] = 128;
        v596.i64[1] = a7;
        a7 = v21;
        v27 = sub_240B77BEC;
        v28 = 128;
        v26 = 64;
        goto LABEL_142;
      case 24:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 256;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B774C8, &v612, &v580, 256, v21 + 0x80000);
        v580.i64[0] = 256;
        v580.i64[1] = a7;
        v596.i64[0] = 256;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 256, 256);
        v580.i64[0] = 256;
        v580.i64[1] = v14;
        v596.i64[0] = 256;
        v596.i64[1] = a7;
        v16 = v550;
        a7 = v21;
        v26 = v21 + 0x80000;
        v27 = sub_240B774C8;
        v28 = 256;
        goto LABEL_142;
      case 25:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 128;
        v580.i64[1] = a6 + 4 * v13 * v16;
        v557 = v17;
        v189 = v13;
        v190 = v18;
        sub_240B3F2E8(sub_240B774C8, &v612, &v580, 128, v21 + 393216);
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v596.i64[0] = 256;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 256, 128);
        v580.i64[0] = 256;
        v580.i64[1] = v14;
        v596.i64[0] = 256;
        v596.i64[1] = a7;
        v16 = v550;
        a7 = v21;
        v191 = sub_240B77A58;
        v192 = v21 + 393216;
        v193 = 256;
LABEL_139:
        sub_240B3F2E8(v191, &v580, &v596, v193, v192);
        v18 = v190;
        v13 = v189;
        goto LABEL_143;
      case 26:
        v612 = *(a4 + 10);
        v613 = (v23 + 4 * a2);
        v580.i64[0] = 256;
        v580.i64[1] = v14;
        v557 = v17;
        v563 = v13;
        v25 = v18;
        sub_240B3F2E8(sub_240B77A58, &v612, &v580, 256, v21 + 393216);
        v580.i64[0] = 256;
        v580.i64[1] = v14;
        v596.i64[0] = 128;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 128, 256);
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v596.i64[0] = 128;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B774C8, &v580, &v596, 128, v21 + 393216);
        v580.i64[0] = 128;
        v580.i64[1] = v14;
        v10 = a3;
        v596.i64[0] = 256;
        v596.i64[1] = a7;
        a7 = v21;
        v27 = sub_240B77BEC;
        v28 = 256;
        v26 = 128;
LABEL_142:
        sub_240B3F2E8(v27, &v580, &v596, v28, v26);
        v18 = v25;
        v13 = v563;
LABEL_143:
        v17 = v557;
LABEL_144:
        v12 = a1;
        break;
      default:
        break;
    }

    ++v13;
    v19 += v554;
    v17 += v554;
    v18 += v554;
  }

  while (v13 != 3);
  v231 = *v12;
  v232 = byte_240C87EA0[v231];
  v233 = byte_240C87EBB[v231];
  v234 = v233 * v232;
  if (v233 * v232 == 1)
  {
    v238 = *(*(a4 + 1) + 4 * *(a4 + 2) * (v10 >> 3) + ((a2 >> 1) & 0x7FFFFFFFFFFFFFFCLL));
    v239 = v532;
  }

  else if (v234 == 2)
  {
    v235 = *(a4 + 1);
    v236 = *(a4 + 2);
    v237 = (v235 + 4 * v236 * (v10 >> 3) + 4 * (a2 >> 3));
    v238 = *v237;
    v239 = v532;
    if ((0x850uLL >> v231))
    {
      v240 = *(v235 + 4 * (v236 + v236 * (v10 >> 3)) + 4 * (a2 >> 3));
    }

    else
    {
      v240 = v237[1];
    }

    if (v238 < v240)
    {
      v238 = v240;
    }
  }

  else
  {
    v241 = 0;
    v242 = *(a4 + 2);
    if (v232 <= 1)
    {
      v232 = 1;
    }

    if (v233 <= 1)
    {
      v233 = 1;
    }

    v243 = *(a4 + 1) + 4 * v242 * (v10 >> 3) + 4 * (a2 >> 3);
    v244 = 4 * v242;
    v245 = 0;
    v239 = v532;
    do
    {
      v246 = v243;
      v247 = v232;
      do
      {
        v248 = *v246++;
        v249 = ((v248 * v248) * (v248 * v248)) * ((v248 * v248) * (v248 * v248));
        *v245.i32 = *v245.i32 + (v249 * v249);
        --v247;
      }

      while (v247);
      ++v241;
      v243 += v244;
    }

    while (v241 != v233);
    *v245.i32 = *v245.i32 / v234;
    v250 = vdup_lane_s32(v245, 0);
    v251 = vadd_s32(v250, vdup_n_s32(0xC0D55555));
    __asm { FMOV            V2.2S, #-1.0 }

    v253 = vadd_f32(vsub_s32(v250, vand_s8(v251, 0x7F0000007FLL)), _D2);
    v254 = vmul_f32(vadd_f32(vdiv_f32(vmla_f32(vdup_n_s32(0xB5F85AB0), v253, vmla_f32(vdup_n_s32(0x3FB6E02Bu), vdup_n_s32(0x3F3E11C7u), v253)), vmla_f32(vdup_n_s32(0x3F7D8625u), v253, vmla_f32(vdup_n_s32(0x3F813CEDu), vdup_n_s32(0x3E32458Cu), v253))), vcvt_f32_s32(vshr_n_s32(v251, 0x17uLL))), vdup_n_s32(0x3D800000u));
    v255 = vrndm_f32(v254);
    __asm { FMOV            V3.2S, #1.0 }

    v257 = vsub_f32(v254, v255);
    LODWORD(v238) = vdiv_f32(vmul_f32(vmla_f32(vdup_n_s32(0x42C519F0u), v257, vmla_f32(vdup_n_s32(0x424379A1u), v257, vadd_f32(v257, vdup_n_s32(0x4122CC6Bu)))), vadd_s32(vshl_n_s32(vcvt_s32_f32(v255), 0x17uLL), _D3)), vmla_f32(vdup_n_s32(0x42C519F1u), v257, vmla_f32(vdup_n_s32(0xC19B8831), v257, vmla_f32(vdup_n_s32(0xBCB621BE), vdup_n_s32(0x3E5749EEu), v257)))).u32[0];
  }

  v555 = v238;
  v258 = 0;
  v542 = v234 << 6;
  v539 = (a6 + 4 * v550);
  v531 = a7 + 72;
  v259 = *v12;
  v553 = v239 << 8;
  v534 = a7 + 4;
  v536 = a7 + 32;
  v260 = 0uLL;
  v261 = 0.0;
  __asm { FMOV            V5.4S, #1.0 }

  v263 = a6;
  v549 = v234;
  v551 = _Q5;
  do
  {
    v575 = v260;
    v571 = v263;
    if (v234)
    {
      v264 = 0;
      v265 = *(*a4 + 8 * (v258 + 3 * v259) + 72);
      v266 = (*(*a4 + 40) + 4 * v265);
      v267 = (a5 + 4 * v258);
      v268 = vld1q_dup_f32(v267);
      v269 = (*(*a4 + 32) + 4 * v265);
      v270 = 0uLL;
      v271 = v263;
      v272 = v539;
      v273 = a7;
      v274 = 0uLL;
      do
      {
        v275 = *v271++;
        v276 = v275;
        v277 = *v272++;
        v278 = vmulq_f32(v268, v277);
        v279 = *v266++;
        v280 = vmulq_f32(vsubq_f32(v276, v278), vmulq_n_f32(v279, v555));
        v281 = vrndnq_f32(v280);
        v282 = *v269++;
        *v273++ = vmulq_f32(v282, vsubq_f32(v280, v281));
        v270 = vaddq_f32(v270, vsqrtq_f32(vabsq_f32(v281)));
        v274 = vaddq_f32(v274, vbicq_s8(_Q5, vceqzq_f32(v281)));
        v264 += 4;
      }

      while (v264 < v542);
      v259 = *v12;
    }

    else
    {
      v274 = 0uLL;
      v270 = 0uLL;
    }

    v562 = v270;
    v568 = v274;
    v559 = v258;
    v283 = byte_240C87EA0[v259];
    v12 = 8 * v283;
    switch(v259)
    {
      case 0:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 8;
        v580.i64[1] = a7;
        v596.i64[0] = 8;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B7736C, &v580, &v596, 8, a7 + 262400);
        v580.i64[0] = 8;
        v580.i64[1] = v14;
        v596.i64[0] = 8;
        v596.i64[1] = a7;
        sub_240B3F9C8(&v580, &v596);
        v580.i64[0] = 8;
        v580.i64[1] = a7;
        v234 = v549;
        v284 = a7 + 262400;
        v285 = sub_240B7736C;
        goto LABEL_308;
      case 1:
        v337 = 0;
        v338 = *a7;
        v339 = *(a7 + 4);
        v340 = *(a7 + 32);
        v341 = *(a7 + 36);
        v342 = *a7 + v339;
        v580.f32[0] = (v342 + v340) + v341;
        v580.f32[1] = (v342 - v340) - v341;
        v343 = v338 - v339;
        v580.f32[2] = (v343 + v340) - v341;
        v580.f32[3] = (v343 - v340) + v341;
        v344 = v283 << 7;
        v345 = 32 * v283;
        v346 = 1;
        v283 = v559;
        do
        {
          v347 = 0;
          v348 = v346;
          v349 = 2 * v337;
          v350 = 1;
          v351 = a6 + 4 + 4 * ((4 * (v337 & 0x1FFFFFFFFFFFFFFFLL)) | 1) * v12;
          v352 = a6 + 4 * 4 * v337 * v12;
          v353 = a7 + 32 * v337;
          v354 = v531 + 32 * v337;
          v355 = a6 + v344 * v337;
          do
          {
            v356 = 0;
            v357 = v350;
            v358 = (v353 + 4 * v347);
            v359 = 0.0;
            v360 = v358;
            do
            {
              v361 = 0;
              v362 = v360;
              do
              {
                if (v361 | v356)
                {
                  v359 = v359 + *v362;
                }

                ++v361;
                v362 += 2;
              }

              while (v361 != 4);
              ++v356;
              v360 += 16;
            }

            while (v356 != 4);
            v363 = 0;
            *(v351 + 16 * v347) = v580.f32[v347 | v349] + (v359 * -0.0625);
            v364 = v355 + 16 * v347;
            do
            {
              v365 = 0;
              v366 = v358;
              do
              {
                if (v363 != 1 || v365 != 4)
                {
                  *(v364 + v365) = *v366 + *(v351 + 16 * v347);
                }

                v365 += 4;
                v366 += 2;
              }

              while (v365 != 16);
              ++v363;
              v364 += v345;
              v358 += 16;
            }

            while (v363 != 4);
            v350 = 0;
            *(v352 + 16 * v347) = *(v354 + 4 * v347) + *(v351 + 16 * v347);
            v347 = 1;
          }

          while ((v357 & 1) != 0);
          v346 = 0;
          v337 = 1;
        }

        while ((v348 & 1) != 0);
        goto LABEL_348;
      case 2:
        v367 = 0;
        v368 = *(a7 + 208);
        v608 = *(a7 + 192);
        v609 = v368;
        v369 = *(a7 + 240);
        v610 = *(a7 + 224);
        v611 = v369;
        v370 = *(a7 + 144);
        v604 = *(a7 + 128);
        v605 = v370;
        v371 = *(a7 + 176);
        v606 = *(a7 + 160);
        v607 = v371;
        v372 = *(a7 + 80);
        v600 = *(a7 + 64);
        v601 = v372;
        v373 = *(a7 + 112);
        v602 = *(a7 + 96);
        v603 = v373;
        v374 = *(a7 + 16);
        v596 = *a7;
        v597 = v374;
        v375 = *(a7 + 48);
        v598 = *(a7 + 32);
        v599 = v375;
        v376 = ((v596.f32[0] + v596.f32[1]) - *&v598) - *(&v598 + 1);
        *&v375 = ((v596.f32[0] - v596.f32[1]) + *&v598) - *(&v598 + 1);
        *&v377 = ((v596.f32[0] - v596.f32[1]) - *&v598) + *(&v598 + 1);
        v596.f32[0] = ((v596.f32[0] + v596.f32[1]) + *&v598) + *(&v598 + 1);
        v596.f32[1] = v376;
        *&v598 = __PAIR64__(v377, v375);
        v378 = 1;
        v12 = a1;
        do
        {
          v379 = 0;
          v380 = v378;
          v381 = 8 * v367;
          v382 = 16 * v367;
          v383 = 1;
          do
          {
            v384 = v383;
            v385 = &v596.f32[v379 | v381];
            v386 = v385[2];
            v387 = v385[16];
            v388 = v385[18];
            v389 = *v385 + v386;
            v390 = *v385 - v386;
            v391 = (v580.f32 + ((8 * v379) | (4 * v382)));
            *v391 = (v389 + v387) + v388;
            v391[1] = (v389 - v387) - v388;
            v391[8] = (v390 + v387) - v388;
            v391[9] = (v390 - v387) + v388;
            v379 = 1;
            v383 = 0;
          }

          while ((v384 & 1) != 0);
          v378 = 0;
          v367 = 1;
        }

        while ((v380 & 1) != 0);
        for (n = 0; n != 128; n += 32)
        {
          *(&v596 + n) = *(&v580 + n);
        }

        v393 = 0;
        v394 = &v597;
        do
        {
          v395 = v394[-1];
          v396 = v394[7];
          v397 = v394[8];
          v398 = vaddq_f32(v395, *v394);
          v617.val[0] = vaddq_f32(vaddq_f32(v398, v396), v397);
          v617.val[1] = vsubq_f32(vsubq_f32(v398, v396), v397);
          v399 = vsubq_f32(v395, *v394);
          v618.val[0] = vsubq_f32(vaddq_f32(v399, v396), v397);
          v400 = &v580.f32[v393];
          vst2q_f32(v400, v617);
          v400 += 8;
          v618.val[1] = vaddq_f32(vsubq_f32(v399, v396), v397);
          vst2q_f32(v400, v618);
          v393 += 16;
          v394 += 2;
        }

        while (v393 != 64);
        v401 = 0;
        v608 = v592;
        v609 = v593;
        v610 = v594;
        v611 = v595;
        v604 = v588;
        v605 = v589;
        v606 = v590;
        v607 = v591;
        v600 = v584;
        v601 = v585;
        v602 = v586;
        v603 = v587;
        v596 = v580;
        v597 = v581;
        v402 = a6;
        v598 = v582;
        v599 = v583;
        do
        {
          v403 = *(&v596 + v401 + 16);
          *v402 = *(&v596 + v401);
          *(v402 + 16) = v403;
          v401 += 32;
          v402 += 32 * v283;
        }

        while (v401 != 256);
        goto LABEL_362;
      case 3:
        v404 = 0;
        v405 = *a7;
        v406 = *(a7 + 4);
        v407 = *(a7 + 32);
        v408 = *(a7 + 36);
        v409 = *a7 + v406;
        v596.f32[0] = (v409 + v407) + v408;
        v596.f32[1] = (v409 - v407) - v408;
        v410 = v405 - v406;
        v596.f32[2] = (v410 + v407) - v408;
        v596.f32[3] = (v410 - v407) + v408;
        v411 = 32 * v283;
        v412 = 1;
        do
        {
          v413 = 0;
          v414 = v412;
          v415 = 2 * v404;
          v416 = a6 + 4 * v411 * v404;
          v417 = a7 + 32 * v404;
          v418 = 1;
          do
          {
            v419 = 0;
            v420 = v418;
            v580.i32[0] = v596.i32[v413 | v415];
            v421 = (v417 + 4 * v413);
            v422 = &v580;
            do
            {
              v423 = 0;
              v424 = v421;
              do
              {
                if (v423 | v419)
                {
                  v422->i32[v423] = *v424;
                }

                ++v423;
                v424 += 2;
              }

              while (v423 != 4);
              ++v419;
              ++v422;
              v421 += 16;
            }

            while (v419 != 4);
            sub_240B3F590(&v580, v12, v416 + 16 * v413, v14);
            v418 = 0;
            v413 = 1;
          }

          while ((v420 & 1) != 0);
          v412 = 0;
          v404 = 1;
          a7 = v572;
        }

        while ((v414 & 1) != 0);
        v10 = a3;
        v12 = a1;
        v234 = v549;
        goto LABEL_362;
      case 4:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 16;
        v580.i64[1] = a7;
        v596.i64[0] = 16;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B773E0, &v580, &v596, 16, a7 + 263168);
        v580.i64[0] = 16;
        v580.i64[1] = v14;
        v596.i64[0] = 16;
        v596.i64[1] = a7;
        sub_240B3F62C(&v580, &v596);
        v580.i64[0] = 16;
        v580.i64[1] = a7;
        v234 = v549;
        v284 = a7 + 263168;
        v285 = sub_240B773E0;
        goto LABEL_311;
      case 5:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B772F8, &v580, &v596, 32, a7 + 266240);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 32, 32);
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v234 = v549;
        v284 = a7 + 266240;
        v285 = sub_240B772F8;
        goto LABEL_353;
      case 6:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 16;
        v580.i64[1] = a7;
        v596.i64[0] = 16;
        v596.i64[1] = v14;
        v465 = a7;
        v466 = 262656;
        sub_240B3F2E8(sub_240B7736C, &v580, &v596, 16, v465 + 262656);
        v580.i64[0] = 16;
        v580.i64[1] = v14;
        v596.i64[0] = 8;
        v596.i64[1] = v465;
        sub_240B3F714(&v580, &v596);
        v580.i64[0] = 8;
        v580.i64[1] = v465;
        v234 = v549;
        v467 = sub_240B773E0;
        goto LABEL_307;
      case 7:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 16;
        v580.i64[1] = a7;
        v596.i64[0] = 8;
        v596.i64[1] = v576;
        sub_240B3F714(&v580, &v596);
        v580.i64[0] = 8;
        v580.i64[1] = v576;
        v596.i64[0] = 8;
        v596.i64[1] = a7;
        v425 = a7;
        v426 = 262656;
        sub_240B3F2E8(sub_240B773E0, &v580, &v596, 8, v425 + 262656);
        v580.i64[0] = 8;
        v580.i64[1] = v425;
        v596.i64[0] = 16;
        v596.i64[1] = v576;
        v14 = v576;
        sub_240B3F7FC(&v580, &v596);
        v580.i64[0] = 16;
        v580.i64[1] = v576;
        v234 = v549;
        v427 = sub_240B7736C;
        goto LABEL_310;
      case 8:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v14;
        v465 = a7;
        v466 = 263168;
        sub_240B3F2E8(sub_240B7736C, &v580, &v596, 32, v465 + 263168);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v596.i64[0] = 8;
        v596.i64[1] = v465;
        sub_240B3F8E0(&v580, &v596);
        v580.i64[0] = 8;
        v580.i64[1] = v465;
        v234 = v549;
        v467 = sub_240B772F8;
LABEL_307:
        v285 = v467;
        v284 = v465 + v466;
        a7 = v465;
LABEL_308:
        v468 = 8;
        goto LABEL_360;
      case 9:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 8;
        v596.i64[1] = v576;
        sub_240B3F8E0(&v580, &v596);
        v580.i64[0] = 8;
        v580.i64[1] = v576;
        v596.i64[0] = 8;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B772F8, &v580, &v596, 8, a7 + 263168);
        v580.i64[0] = 8;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v576;
        v14 = v576;
        sub_240B76EE0(&v580, &v596);
        v580.i64[0] = 32;
        v580.i64[1] = v576;
        v234 = v549;
        v285 = sub_240B7736C;
        v284 = a7 + 263168;
        goto LABEL_353;
      case 10:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v14;
        v425 = a7;
        v426 = 264192;
        sub_240B3F2E8(sub_240B773E0, &v580, &v596, 32, v425 + 264192);
        v580.i64[0] = 32;
        v580.i64[1] = v14;
        v596.i64[0] = 16;
        v596.i64[1] = v425;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 16, 32);
        v580.i64[0] = 16;
        v580.i64[1] = v425;
        v234 = v549;
        v427 = sub_240B772F8;
LABEL_310:
        v285 = v427;
        v284 = v425 + v426;
        a7 = v425;
LABEL_311:
        v468 = 16;
        goto LABEL_360;
      case 11:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 16;
        v596.i64[1] = v576;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 16, 32);
        v580.i64[0] = 16;
        v580.i64[1] = v576;
        v596.i64[0] = 16;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B772F8, &v580, &v596, 16, a7 + 264192);
        v580.i64[0] = 16;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v576;
        v14 = v576;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 32, 16);
        v580.i64[0] = 32;
        v580.i64[1] = v576;
        v234 = v549;
        v285 = sub_240B773E0;
        v284 = a7 + 264192;
        goto LABEL_353;
      case 12:
        v428 = 0;
        v429 = *a7;
        v430 = *(a7 + 32);
        *&v612 = *a7 + v430;
        *&v578 = v429 - v430;
        v431 = 32 * v283;
        v432 = &v612;
        v433 = 1;
        do
        {
          v434 = 0;
          v435 = v433;
          v580.i32[0] = *v432;
          v436 = a7 + 32 * v428;
          v437 = &v580;
          do
          {
            for (ii = 0; ii != 8; ++ii)
            {
              if (ii | v434)
              {
                v437->i32[ii] = *(v436 + 4 * ii);
              }
            }

            ++v434;
            v437 += 2;
            v436 += 64;
          }

          while (v434 != 4);
          v596.i64[0] = v12;
          v596.i64[1] = a6 + 4 * v431 * v428;
          sub_240B76FC4(&v580, &v596, v14);
          v433 = 0;
          v432 = &v578;
          v428 = 1;
        }

        while ((v435 & 1) != 0);
        goto LABEL_321;
      case 13:
        v469 = 0;
        v470 = *(a7 + 32);
        v471 = *a7 + v470;
        v577 = *a7 - v470;
        *&v578 = v471;
        v472 = &v578;
        v473 = 1;
        do
        {
          v474 = 0;
          v475 = v473;
          v580.i32[0] = *v472;
          v476 = a7 + 32 * v469;
          v477 = &v580;
          do
          {
            for (jj = 0; jj != 8; ++jj)
            {
              if (jj | v474)
              {
                v477->i32[jj] = *(v476 + 4 * jj);
              }
            }

            ++v474;
            v477 += 2;
            v476 += 64;
          }

          while (v474 != 4);
          v596.i64[0] = 8;
          v596.i64[1] = &v580;
          v479 = (a6 + 16 * v469);
          v612 = 8;
          v613 = v576;
          sub_240B3F2E8(sub_240B77454, &v596, &v612, 8, a7 + 262272);
          v596.i64[0] = 8;
          v596.i64[1] = v576;
          v612 = 4;
          v613 = &v580;
          sub_240B3F300(&v596, &v612);
          sub_240B3F3A8(&v580, 4, v479, v12, (a7 + 262272));
          v473 = 0;
          v472 = &v577;
          v469 = 1;
        }

        while ((v475 & 1) != 0);
        v10 = a3;
        v14 = v576;
        goto LABEL_321;
      case 14:
        v286 = 0;
        v287 = *a7;
        v288 = *(a7 + 4);
        v289 = *(a7 + 32);
        v290 = *a7 + v289;
        *&v612 = (v288 + v290) * 4.0;
        v291 = &v612;
        v292 = a7;
        do
        {
          v293 = 0;
          v294 = v292;
          do
          {
            if (v293 | v286)
            {
              *(v291 + v293) = *v294;
            }

            ++v293;
            v294 += 2;
          }

          while (v293 != 4);
          ++v286;
          v291 += 2;
          v292 += 16;
        }

        while (v286 != 4);
        v295 = 0;
        v296 = &unk_240C83040;
        do
        {
          v297 = 0;
          v298 = 0uLL;
          do
          {
            v298 = vmlaq_n_f32(v298, v296[v297], *(&v612 + v297));
            v297 += 4;
          }

          while (v297 != 64);
          *(&v596 + 4 * v295) = v298;
          ++v296;
          _CF = v295 >= 0xC;
          v295 += 4;
        }

        while (!_CF);
        v299 = 0;
        v300 = a6;
        do
        {
          *v300 = *(&v596 + v299);
          v299 += 16;
          v300 += 2 * v283;
        }

        while (v299 != 64);
        v301 = 0;
        v596.f32[0] = v290 - v288;
        v302 = &v596;
        v303 = v534;
        do
        {
          v304 = 0;
          v305 = v303;
          do
          {
            if (v304 | v301)
            {
              v302->i32[v304] = *v305;
            }

            ++v304;
            v305 += 2;
          }

          while (v304 != 4);
          ++v301;
          ++v302;
          v303 += 16;
        }

        while (v301 != 4);
        v306 = v287 - v289;
        v307 = &v596;
        sub_240B3F590(&v596, 8 * v283, a6 + 16, &v580);
        v308 = 0;
        v596.f32[0] = v306;
        v309 = v536;
        do
        {
          for (kk = 0; kk != 8; ++kk)
          {
            if (kk | v308)
            {
              v307->i32[kk] = *(v309 + 4 * kk);
            }
          }

          ++v308;
          v307 += 2;
          v309 += 64;
        }

        while (v308 != 4);
        goto LABEL_301;
      case 15:
        v439 = 0;
        v440 = *a7;
        v441 = *(a7 + 4);
        v442 = *(a7 + 32);
        v443 = *a7 + v442;
        *&v612 = (v441 + v443) * 4.0;
        v444 = &v612;
        v445 = a7;
        do
        {
          v446 = 0;
          v447 = v445;
          do
          {
            if (v446 | v439)
            {
              *(v444 + v446) = *v447;
            }

            ++v446;
            v447 += 2;
          }

          while (v446 != 4);
          ++v439;
          v444 += 2;
          v445 += 16;
        }

        while (v439 != 4);
        v448 = 0;
        v449 = &unk_240C83040;
        do
        {
          v450 = 0;
          v451 = 0uLL;
          do
          {
            v451 = vmlaq_n_f32(v451, v449[v450], *(&v612 + v450));
            v450 += 4;
          }

          while (v450 != 64);
          *(&v596 + 4 * v448) = v451;
          ++v449;
          _CF = v448 >= 0xC;
          v448 += 4;
        }

        while (!_CF);
        v452 = 0;
        v453 = 16;
        do
        {
          v454 = vrev64q_s32(*(&v596 + v452));
          *(a6 + v453) = vextq_s8(v454, v454, 8uLL);
          v452 += 16;
          v453 += 32 * v283;
        }

        while (v452 != 64);
        v455 = 0;
        v596.f32[0] = v443 - v441;
        v456 = &v596;
        v457 = v534;
        do
        {
          v458 = 0;
          v459 = v457;
          do
          {
            if (v458 | v455)
            {
              v456->i32[v458] = *v459;
            }

            ++v458;
            v459 += 2;
          }

          while (v458 != 4);
          ++v455;
          ++v456;
          v457 += 16;
        }

        while (v455 != 4);
        v460 = v440 - v442;
        v461 = &v596;
        sub_240B3F590(&v596, 8 * v283, a6, &v580);
        v462 = 0;
        v596.f32[0] = v460;
        v463 = v536;
        do
        {
          for (mm = 0; mm != 8; ++mm)
          {
            if (mm | v462)
            {
              v461->i32[mm] = *(v463 + 4 * mm);
            }
          }

          ++v462;
          v461 += 2;
          v463 += 64;
        }

        while (v462 != 4);
LABEL_301:
        v578 = 8 * v283;
        v579 = a6 + (v283 << 7);
        sub_240B76FC4(&v596, &v578, &v580);
LABEL_321:
        v234 = v549;
        goto LABEL_361;
      case 16:
        v311 = 0;
        v312 = *a7;
        v313 = *(a7 + 4);
        v314 = *(a7 + 32);
        v315 = *a7 + v314;
        *&v612 = (v313 + v315) * 4.0;
        v316 = &v612;
        v317 = a7;
        do
        {
          v318 = 0;
          v319 = v317;
          do
          {
            if (v318 | v311)
            {
              *(v316 + v318) = *v319;
            }

            ++v318;
            v319 += 2;
          }

          while (v318 != 4);
          ++v311;
          v316 += 2;
          v317 += 16;
        }

        while (v311 != 4);
        v320 = 0;
        v321 = &unk_240C83040;
        do
        {
          v322 = 0;
          v323 = 0uLL;
          do
          {
            v323 = vmlaq_n_f32(v323, v321[v322], *(&v612 + v322));
            v322 += 4;
          }

          while (v322 != 64);
          *(&v596 + 4 * v320) = v323;
          ++v321;
          _CF = v320 >= 0xC;
          v320 += 4;
        }

        while (!_CF);
        v324 = v283 << 7;
        v325 = 48;
        v326 = a6 + (v283 << 7);
        do
        {
          *(a6 + v324) = *(&v596 + v325);
          v325 -= 16;
          v324 += 32 * v283;
        }

        while (v325 != -16);
        v327 = 0;
        v596.f32[0] = v315 - v313;
        v328 = &v596;
        v329 = v534;
        v283 = v559;
        do
        {
          v330 = 0;
          v331 = v329;
          do
          {
            if (v330 | v327)
            {
              v328->i32[v330] = *v331;
            }

            ++v330;
            v331 += 2;
          }

          while (v330 != 4);
          ++v327;
          ++v328;
          v329 += 16;
        }

        while (v327 != 4);
        v332 = v312 - v314;
        v333 = &v596;
        sub_240B3F590(&v596, v12, v326 + 16, &v580);
        v334 = 0;
        v596.f32[0] = v332;
        v335 = v536;
        do
        {
          for (nn = 0; nn != 8; ++nn)
          {
            if (nn | v334)
            {
              v333->i32[nn] = *(v335 + 4 * nn);
            }
          }

          ++v334;
          v333 += 2;
          v335 += 64;
        }

        while (v334 != 4);
        goto LABEL_347;
      case 17:
        v480 = 0;
        v481 = *a7;
        v482 = *(a7 + 4);
        v483 = *(a7 + 32);
        v484 = *a7 + v483;
        *&v612 = (v482 + v484) * 4.0;
        v485 = &v612;
        v486 = a7;
        do
        {
          v487 = 0;
          v488 = v486;
          do
          {
            if (v487 | v480)
            {
              *(v485 + v487) = *v488;
            }

            ++v487;
            v488 += 2;
          }

          while (v487 != 4);
          ++v480;
          v485 += 2;
          v486 += 16;
        }

        while (v480 != 4);
        v489 = 0;
        v490 = &unk_240C83040;
        do
        {
          v491 = 0;
          v492 = 0uLL;
          do
          {
            v492 = vmlaq_n_f32(v492, v490[v491], *(&v612 + v491));
            v491 += 4;
          }

          while (v491 != 64);
          *(&v596 + 4 * v489) = v492;
          ++v490;
          _CF = v489 >= 0xC;
          v489 += 4;
        }

        while (!_CF);
        v493 = (v283 << 7) | 0x10;
        for (i1 = 48; i1 != -16; i1 -= 16)
        {
          v495 = vrev64q_s32(*(&v596 + i1));
          *(a6 + v493) = vextq_s8(v495, v495, 8uLL);
          v493 += 32 * v283;
        }

        v496 = 0;
        v596.f32[0] = v484 - v482;
        v497 = &v596;
        v498 = v534;
        do
        {
          v499 = 0;
          v500 = v498;
          do
          {
            if (v499 | v496)
            {
              v497->i32[v499] = *v500;
            }

            ++v499;
            v500 += 2;
          }

          while (v499 != 4);
          ++v496;
          ++v497;
          v498 += 16;
        }

        while (v496 != 4);
        v501 = v481 - v483;
        v502 = &v596;
        sub_240B3F590(&v596, 8 * v283, a6 + (v283 << 7), &v580);
        v503 = 0;
        v596.f32[0] = v501;
        v504 = v536;
        v283 = v559;
        do
        {
          for (i2 = 0; i2 != 8; ++i2)
          {
            if (i2 | v503)
            {
              v502->i32[i2] = *(v504 + 4 * i2);
            }
          }

          ++v503;
          v502 += 2;
          v504 += 64;
        }

        while (v503 != 4);
LABEL_347:
        v578 = v12;
        v579 = a6;
        sub_240B76FC4(&v596, &v578, &v580);
        v234 = v549;
LABEL_348:
        v12 = a1;
        break;
      case 18:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v596.i64[0] = 64;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77284, &v580, &v596, 64, a7 + 278528);
        v580.i64[0] = 64;
        v580.i64[1] = v14;
        v596.i64[0] = 64;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 64, 64);
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v234 = v549;
        v284 = a7 + 278528;
        v285 = sub_240B77284;
        goto LABEL_355;
      case 19:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v596.i64[0] = 64;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B772F8, &v580, &v596, 64, a7 + 270336);
        v580.i64[0] = 64;
        v580.i64[1] = v14;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 32, 64);
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v234 = v549;
        v285 = sub_240B77284;
        v284 = a7 + 270336;
LABEL_353:
        v468 = 32;
        goto LABEL_360;
      case 20:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v596.i64[0] = 32;
        v596.i64[1] = v576;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 32, 64);
        v580.i64[0] = 32;
        v580.i64[1] = v576;
        v596.i64[0] = 32;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77284, &v580, &v596, 32, a7 + 270336);
        v580.i64[0] = 32;
        v580.i64[1] = a7;
        v596.i64[0] = 64;
        v596.i64[1] = v576;
        v14 = v576;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 64, 32);
        v580.i64[0] = 64;
        v580.i64[1] = v576;
        v234 = v549;
        v285 = sub_240B772F8;
        v284 = a7 + 270336;
        goto LABEL_355;
      case 21:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v596.i64[0] = 128;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77210, &v580, &v596, 128, a7 + 327680);
        v580.i64[0] = 128;
        v580.i64[1] = v14;
        v596.i64[0] = 128;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 128, 128);
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v234 = v549;
        v284 = a7 + 327680;
        v285 = sub_240B77210;
        goto LABEL_357;
      case 22:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v596.i64[0] = 128;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77284, &v580, &v596, 128, a7 + 294912);
        v580.i64[0] = 128;
        v580.i64[1] = v14;
        v596.i64[0] = 64;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 64, 128);
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v234 = v549;
        v285 = sub_240B77210;
        v284 = a7 + 294912;
LABEL_355:
        v468 = 64;
        goto LABEL_360;
      case 23:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v596.i64[0] = 64;
        v596.i64[1] = v576;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 64, 128);
        v580.i64[0] = 64;
        v580.i64[1] = v576;
        v596.i64[0] = 64;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77210, &v580, &v596, 64, a7 + 294912);
        v580.i64[0] = 64;
        v580.i64[1] = a7;
        v596.i64[0] = 128;
        v596.i64[1] = v576;
        v14 = v576;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 128, 64);
        v580.i64[0] = 128;
        v580.i64[1] = v576;
        v234 = v549;
        v285 = sub_240B77284;
        v284 = a7 + 294912;
        goto LABEL_357;
      case 24:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 256;
        v580.i64[1] = a7;
        v596.i64[0] = 256;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77074, &v580, &v596, 256, a7 + 0x80000);
        v580.i64[0] = 256;
        v580.i64[1] = v14;
        v596.i64[0] = 256;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 256, 256);
        v580.i64[0] = 256;
        v580.i64[1] = a7;
        v234 = v549;
        v284 = a7 + 0x80000;
        v285 = sub_240B77074;
        goto LABEL_359;
      case 25:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 256;
        v580.i64[1] = a7;
        v596.i64[0] = 256;
        v596.i64[1] = v14;
        sub_240B3F2E8(sub_240B77210, &v580, &v596, 256, a7 + 393216);
        v580.i64[0] = 256;
        v580.i64[1] = v14;
        v596.i64[0] = 128;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 128, 256);
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v234 = v549;
        v285 = sub_240B77074;
        v284 = a7 + 393216;
LABEL_357:
        v468 = 128;
        goto LABEL_360;
      case 26:
        v612 = 8 * v283;
        v613 = a6;
        v580.i64[0] = 256;
        v580.i64[1] = a7;
        v596.i64[0] = 128;
        v596.i64[1] = v576;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 128, 256);
        v580.i64[0] = 128;
        v580.i64[1] = v576;
        v596.i64[0] = 128;
        v596.i64[1] = a7;
        sub_240B3F2E8(sub_240B77074, &v580, &v596, 128, a7 + 393216);
        v580.i64[0] = 128;
        v580.i64[1] = a7;
        v596.i64[0] = 256;
        v596.i64[1] = v576;
        v14 = v576;
        sub_240B3F2E8(sub_240B77BEC, &v580, &v596, 256, 128);
        v580.i64[0] = 256;
        v580.i64[1] = v576;
        v234 = v549;
        v285 = sub_240B77210;
        v284 = a7 + 393216;
LABEL_359:
        v468 = 256;
LABEL_360:
        sub_240B3F2E8(v285, &v580, &v612, v468, v284);
LABEL_361:
        v12 = a1;
LABEL_362:
        v283 = v559;
        break;
      default:
        break;
    }

    v506 = 0;
    v259 = *v12;
    v507 = byte_240C87EA0[v259];
    v508 = 8 * v507;
    if (v507 <= 1)
    {
      v507 = 1;
    }

    if (byte_240C87EBB[v259] <= 1u)
    {
      v509 = 1;
    }

    else
    {
      v509 = byte_240C87EBB[v259];
    }

    v510 = 0uLL;
    do
    {
      for (i3 = 0; i3 != v507; ++i3)
      {
        for (i4 = 0; i4 != 8; ++i4)
        {
          v513 = 0;
          v514 = 1;
          do
          {
            v515 = v514;
            v516 = vmulq_f32(*(a6 + 32 * i3 + 4 * v508 * (i4 + 8 * v506) + 4 * v513), vabsq_f32(*(*(a4 + 5) + 4 * a2 + 32 * i3 + 4 * *(a4 + 6) * (v10 + 8 * v506 + i4) + 4 * v513)));
            v517 = vmulq_f32(v516, v516);
            v518 = vmulq_f32(v517, v517);
            v510 = vaddq_f32(v510, vmulq_f32(v518, v518));
            v513 = 4;
            v514 = 0;
          }

          while ((v515 & 1) != 0);
        }
      }

      ++v506;
    }

    while (v506 != v509);
    v560 = v510;
    v519 = pow(*&aFfffff[8 * v283], 8.0);
    v260 = vaddq_f32(v575, vmulq_n_f32(v560, v519));
    v520 = v261 + (a4[23] * vaddv_f32(*&vpaddq_f32(v562, v562)));
    v521 = vaddv_f32(*&vpaddq_f32(v568, v568));
    v522 = __clz(v521 + 1) ^ 0x3F;
    if (((v521 + 1) & v521) != 0)
    {
      v523 = v522 + 1;
    }

    else
    {
      v523 = v522;
    }

    v524 = __clz(v523 + 18);
    v525 = v524 ^ 0x3F;
    v526 = 64 - v524;
    if (((v523 + 18) & (v523 + 17)) != 0)
    {
      v527 = v526;
    }

    else
    {
      v527 = v525;
    }

    v261 = v520 + (a4[24] * (v523 + v527 + 1));
    v258 = v283 + 1;
    v263 = (v571 + v553);
    _Q5 = v551;
  }

  while (v258 != 3);
  v528 = pow((vaddv_f32(*&vpaddq_f32(v260, v260)) / v542), 0.125);
  v529 = *MEMORY[0x277D85DE8];
  *&v528 = v528 * v542 / v555;
  return (v261 * a8) + (a4[22] * *&v528);
}