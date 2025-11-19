double AdaptiveCorrection_computeStereoRectificationHomographies(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t a5, double a6, float32x4_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          a5.i64[0] = *a1;
          v9 = *a1;
          if (v9 > 0.0)
          {
            a5 = 0uLL;
            v10 = *(a1 + 72);
            v11 = *(a1 + 104);
            v12 = *(a1 + 136);
            v13 = vcvt_f32_f64(*(a1 + 48));
            a7.f32[0] = *(a1 + 64);
            v14 = *(a1 + 80);
            v15 = *(a1 + 96);
            v16 = *(a1 + 112);
            *&v16.f64[0] = vcvt_f32_f64(v16);
            v17 = *(a1 + 128);
            v18 = vzip1_s32(v13, *&v16.f64[0]);
            *v19.f32 = vzip1_s32(v18, vcvt_f32_f64(v14));
            *&v19.u32[2] = vdup_lane_s32(v18, 1);
            v20 = vuzp2q_s32(vcvt_hight_f32_f64(v13, v14), v16);
            a7.f32[1] = v15;
            a7.f32[2] = v17;
            v21 = vmlaq_f32(vmlaq_f32(vnegq_f32(v19), 0, v20), 0, a7);
            v22 = vmulq_f32(v19, 0);
            __asm { FMOV            V17.4S, #-1.0 }

            v28 = vmlaq_f32(vmlaq_f32(v22, _Q17, v20), 0, a7);
            v29 = vaddq_f32(a7, vmlaq_f32(v22, 0, v20));
            v30 = vmlaq_n_f32(vmulq_n_f32(xmmword_240406EA0, v10), xmmword_240406EB0, v11);
            v31 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406EA0, v21.f32[0]), xmmword_240406EB0, *v21.f32, 1), xmmword_240406E10, v21, 2);
            v32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406EA0, v28.f32[0]), xmmword_240406EB0, *v28.f32, 1), xmmword_240406E10, v28, 2);
            v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406EA0, v29.f32[0]), xmmword_240406EB0, *v29.f32, 1), xmmword_240406E10, v29, 2);
            v34 = vmlaq_n_f32(v30, xmmword_240406E10, v12);
            v35 = vtrn2q_s32(v31, v32);
            v35.i32[2] = v33.i32[1];
            v36 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v31, v33), v32), v34.f32[0]), v35, *v34.f32, 1), vzip1q_s32(vzip2q_s32(v31, v33), vdupq_laneq_s32(v32, 2)), v34, 2);
            v37 = vnegq_f32(v36);
            v38 = vmulq_f32(v36, v36);
            v35.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
            *v29.f32 = vrsqrte_f32(v35.u32[0]);
            *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v35.u32[0], vmul_f32(*v29.f32, *v29.f32)));
            v39 = vmulq_n_f32(v37, vmul_f32(*v29.f32, vrsqrts_f32(v35.u32[0], vmul_f32(*v29.f32, *v29.f32))).f32[0]);
            v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
            v41 = vmlaq_f32(vmulq_f32(v40, xmmword_240406EC0), xmmword_240406DF0, v39);
            v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
            v43 = vmulq_f32(v41, v41);
            *v16.f64 = v43.f32[1] + (v43.f32[2] + v43.f32[0]);
            *v43.f32 = vrsqrte_f32(LODWORD(v16.f64[0]));
            *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(LODWORD(v16.f64[0]), vmul_f32(*v43.f32, *v43.f32)));
            v44 = vmulq_n_f32(v42, vmul_f32(*v43.f32, vrsqrts_f32(LODWORD(v16.f64[0]), vmul_f32(*v43.f32, *v43.f32))).f32[0]);
            v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), vnegq_f32(v39)), v44, v40);
            v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
            v47 = vmulq_f32(v45, v45);
            v38.f32[0] = *&v47.i32[1] + (*&v47.i32[2] + *v47.i32);
            *v47.i8 = vrsqrte_f32(v38.u32[0]);
            *v47.i8 = vmul_f32(*v47.i8, vrsqrts_f32(v38.u32[0], vmul_f32(*v47.i8, *v47.i8)));
            v48 = vmulq_n_f32(v46, vmul_f32(*v47.i8, vrsqrts_f32(v38.u32[0], vmul_f32(*v47.i8, *v47.i8))).f32[0]);
            v7.i32[0] = 1.0;
            v47.i64[0] = 0x8000000080000000;
            v47.i64[1] = 0x8000000080000000;
            v49 = vbslq_s8(v47, v7, v39);
            v50 = vmulq_n_f32(v39, *v49.i32);
            v49.i32[0] = v44.i32[1];
            v51 = vmulq_n_f32(v44, *vbslq_s8(v47, v7, v49).i32);
            v44.i32[0] = v48.i32[2];
            v52 = vmulq_n_f32(v48, *vbslq_s8(v47, v7, v44).i32);
            v53 = vzip1q_s32(v50, v52);
            v54 = vzip1q_s32(v53, v51);
            v55 = vzip2q_s32(v53, vzip1q_s32(v51, 0));
            v56 = vzip1q_s32(vzip2q_s32(v50, v52), vdupq_laneq_s32(v51, 2));
            v57 = vzip1q_s32(v54, v56);
            v58 = vzip2q_s32(v54, v56);
            v59 = vzip1q_s32(v55, 0);
            v60 = vtrn2q_s32(v54, v51);
            v60.i32[2] = v56.i32[1];
            v61 = vmulq_f32(vzip1q_s32(v57, v59), 0);
            v62 = vaddq_f32(vzip1q_s32(v58, vdupq_lane_s32(*v52.f32, 1)), vmlaq_f32(v61, 0, v60));
            if (v62.f32[2] > 0.0)
            {
              v63 = xmmword_240406DF0;
              v64 = *(a1 + 8);
              *v8.i32 = *(a1 + 16);
              v65 = *(a1 + 24);
              *&v66 = *(a1 + 32);
              *&v67 = *a1;
              a5.f32[1] = *&v67;
              v68 = vdivq_f32(v62, vdupq_laneq_s32(v62, 2)).u64[0];
              v62.f32[0] = -*v68.i32;
              v63.i32[2] = v68.i32[0];
              __asm { FMOV            V31.4S, #1.0 }

              *&v65 = v65;
              v70 = vzip2q_s32(vdupq_lane_s32(*v62.f32, 0), _Q31);
              v71 = vzip2q_s32(vdupq_lane_s32(*&v65, 0), _Q31);
              v72 = vzip2q_s32(v63, _Q31);
              v73.i64[1] = _Q31.i64[1];
              v73.i64[0] = __PAIR64__(v66, v8.u32[0]);
              v74 = vzip2q_s32(v57, v59);
              _Q31.i64[0] = *(a1 + 40);
              v75 = 1.0 / v9;
              v76 = -*v8.i32 / v9;
              v77 = -*&v66 / v9;
              *v8.i32 = -*&v68.i32[1];
              v78 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v50, v75), 0, v74), 0, v52);
              v79 = vmlaq_f32(vmlaq_n_f32(v61, v74, v75), 0, v52);
              v80 = vaddq_f32(v52, vmlaq_n_f32(vmulq_n_f32(v50, v76), v74, v77));
              v81 = vzip1q_s32(v70, v8);
              v82 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406DF0, v78.f32[0]), xmmword_240406E00, *v78.f32, 1), v81, v78, 2);
              v83 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406DF0, v79.f32[0]), xmmword_240406E00, *v79.f32, 1), v81, v79, 2);
              v84 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_240406DF0, v80.f32[0]), xmmword_240406E00, *v80.f32, 1), v81, v80, 2);
              v85 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v82.f32[0]), a5, *v82.f32, 1), v73, v82, 2);
              v86 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v83.f32[0]), a5, *v83.f32, 1), v73, v83, 2);
              v87 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v84.f32[0]), a5, *v84.f32, 1), v73, v84, 2);
              *(a2 + 8) = v85.i32[2];
              *(a2 + 24) = v86.i32[2];
              *(a2 + 40) = v87.i32[2];
              v88 = vzip1q_s32(v50, v51);
              v88.i32[2] = v52.i32[0];
              v89 = vzip2q_s32(v50, v51);
              v89.i32[2] = v52.i32[2];
              *&v90 = v64;
              LODWORD(v91) = 0;
              HIDWORD(v91) = v90;
              v92 = vdupq_lane_s32(v68, 1);
              *v63.i32 = *_Q31.i64;
              v93 = vzip1q_s32(v71, v63);
              v94 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v82.f32[0]), v32, *v82.f32, 1), v33, v82, 2);
              v95 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v83.f32[0]), v32, *v83.f32, 1), v33, v83, 2);
              v96 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v84.f32[0]), v32, *v84.f32, 1), v33, v84, 2);
              v97 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v90, v94.f32[0]), v91, *v94.f32, 1), v93, v94, 2);
              v98 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v90, v95.f32[0]), v91, *v95.f32, 1), v93, v95, 2);
              v99 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v90, v96.f32[0]), v91, *v96.f32, 1), v93, v96, 2);
              v100 = vzip1q_s32(v72, v92);
              v101 = vmlaq_f32(vaddq_f32(vmulq_n_f32(0x3F800000uLL, v75), 0), 0, v100);
              v102 = vmlaq_f32(vmlaq_n_f32(0, xmmword_240406E00, v75), 0, v100);
              v103 = vaddq_f32(v100, vmlaq_n_f32(vmulq_n_f32(0x3F800000uLL, v76), xmmword_240406E00, v77));
              v104 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, v101.f32[0]), v55, *v101.f32, 1), v89, v101, 2);
              v105 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, v102.f32[0]), v55, *v102.f32, 1), v89, v102, 2);
              *a2 = v85.i64[0];
              *(a2 + 12) = 0;
              *(a2 + 16) = v86.i64[0];
              *(a2 + 28) = 0;
              *(a2 + 32) = v87.i64[0];
              *(a2 + 44) = 0;
              *(a3 + 8) = v97.i32[2];
              *a3 = v97.i64[0];
              *(a3 + 12) = 0;
              *(a3 + 24) = v98.i32[2];
              v106 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, v103.f32[0]), v55, *v103.f32, 1), v89, v103, 2);
              v107 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v104.f32[0]), a5, *v104.f32, 1), v73, v104, 2);
              v108 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v105.f32[0]), a5, *v105.f32, 1), v73, v105, 2);
              *(a3 + 16) = v98.i64[0];
              *(a3 + 28) = 0;
              *(a3 + 40) = v99.i32[2];
              *(a3 + 32) = v99.i64[0];
              *(a3 + 44) = 0;
              *a4 = v107.i64[0];
              *(a4 + 8) = v107.i32[2];
              *(a4 + 12) = 0;
              *(a4 + 16) = v108.i64[0];
              *(a4 + 24) = v108.i32[2];
              v109 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v106.f32[0]), a5, *v106.f32, 1), v73, v106, 2);
              *(a4 + 28) = 0;
              *(a4 + 32) = v109.i64[0];
              *(a4 + 40) = v109.i32[2];
              *(a4 + 44) = 0;
            }
          }
        }
      }
    }
  }

  return *a5.i64;
}

double FundamentalEpipolarErrorForCalModel(double *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = 0.0;
  FundamentalEpipolarError_MeanVal(a2, a3, a4, a1, &v5);
  return v5;
}

uint64_t GMC_Homography(uint64_t a1, uint64_t a2, double *a3)
{
  v4 = a3[3];
  v5 = a3[2] / v4;
  v6 = *a3 / v4;
  v7 = a3[1] / v4;
  v8 = a3[50] - a3[4];
  v9 = a3[51] - a3[5];
  v10 = a3[52] - a3[6];
  v11 = a3[66];
  v12 = a3[67];
  v13 = a3[68];
  v14 = a3[65];
  v15 = a3[41] - (v8 * v11 + 0.0) / v14;
  v16 = a3[44] - (v8 * v12 + 0.0) / v14;
  v17 = a3[47] - (v8 * v13 + 0.0) / v14;
  v18 = a3[42] - (v9 * v11 + 0.0) / v14;
  v19 = a3[45] - (v9 * v12 + 0.0) / v14;
  v20 = a3[48] - (v9 * v13 + 0.0) / v14;
  v21 = a3[43] - (v10 * v11 + 0.0) / v14;
  v22 = a3[46] - (v10 * v12 + 0.0) / v14;
  v23 = a3[49] - (v10 * v13 + 0.0) / v14;
  v24 = v5 * v15 + 0.0 + v18 * 0.0 + v6 * v21;
  v25 = v5 * v16 + 0.0 + v19 * 0.0 + v6 * v22;
  v26 = v5 * v17 + 0.0 + v20 * 0.0 + v6 * v23;
  v27 = v15 * 0.0 + 0.0;
  v28 = v27 + v5 * v18 + v7 * v21;
  v29 = v16 * 0.0 + 0.0;
  v30 = v29 + v5 * v19 + v7 * v22;
  v31 = v17 * 0.0 + 0.0;
  v32 = v31 + v5 * v20 + v7 * v23;
  v33 = v21 + v27 + v18 * 0.0;
  v34 = v22 + v29 + v19 * 0.0;
  v35 = v23 + v31 + v20 * 0.0;
  v36 = v5 - v7 * 0.0;
  v37 = 0.0 - v5 * 0.0;
  v38 = v6 * v37 + v7 * 0.0 * 0.0 + v5 * v36 + 0.0;
  v39 = v36 / v38;
  v40 = v7 * 0.0 / v38;
  v41 = v37 / v38;
  v42 = v6 * 0.0;
  v43 = v6 * 0.0 / v38;
  v44 = (v5 - v6 * 0.0) / v38;
  v45 = (v7 * 0.0 - v5 * v6) / v38;
  v59[0] = v24 * v39 + 0.0 + v25 * v40 + v26 * v41;
  v59[1] = v24 * v43 + 0.0 + v25 * v44 + v26 * v41;
  v46 = (v42 - v5 * v7) / v38;
  v47 = v5 * v5 / v38;
  v59[2] = v24 * v45 + 0.0 + v25 * v46 + v26 * v47;
  v59[3] = v28 * v39 + 0.0 + v30 * v40 + v32 * v41;
  v59[4] = v28 * v43 + 0.0 + v30 * v44 + v32 * v41;
  v59[5] = v28 * v45 + 0.0 + v30 * v46 + v32 * v47;
  v59[6] = v33 * v39 + 0.0 + v34 * v40 + v35 * v41;
  v59[7] = v33 * v43 + 0.0 + v34 * v44 + v35 * v41;
  v59[8] = v33 * v45 + 0.0 + v34 * v46 + v35 * v47;
  MatrixMxN<3u,3u,double>::operator*(v60, v59, a2);
  v48 = v61;
  v49 = v62;
  v58 = v63;
  __src = v61;
  v50 = *(a2 + 8);
  if (*(a2 + 32) < 24 * v62)
  {
    if (v50)
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = 3;
  *(a2 + 20) = v49;
  memcpy(v50, v48, 24 * v49);
  if (__src && v58 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v51 = *(a2 + 20);
  if (v51)
  {
    if (*(a2 + 16) < 3u)
    {
      __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
    }

    v52 = 0;
    v53 = (2 * v51);
    v54 = 8 * v51;
    v55 = 8 * v53;
    do
    {
      *(*(a2 + 8) + v52) = *(*(a2 + 8) + v52) / *(*(a2 + 8) + v52 + v55);
      *(*(a2 + 8) + v54 + v52) = *(*(a2 + 8) + v54 + v52) / *(*(a2 + 8) + v55 + v52);
      *(*(a2 + 8) + v55 + v52) = 0x3FF0000000000000;
      v52 += 8;
    }

    while (v54 != v52);
  }

  return 0;
}

void sub_240357848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MatrixNxPts<9u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

uint64_t GMC_DebugUtils::getDebugPathForFile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  v8 = strlen(GMC_DebugUtils::DEBUG_BASEDIR);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, GMC_DebugUtils::DEBUG_BASEDIR, v8);
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "/", 1);
  if (!a3)
  {
    goto LABEL_23;
  }

  if ((v36 & 0x10) != 0)
  {
    v13 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v13 = v32;
    }

    v14 = &v31;
    goto LABEL_15;
  }

  if ((v36 & 8) != 0)
  {
    v14 = v29;
    v13 = v30;
LABEL_15:
    v15 = *v14;
    v12 = v13 - *v14;
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__pn_.__r_.__value_.__s + 23) = v13 - *v14;
    if (v12)
    {
      memmove(&__dst, v15, v12);
    }

    goto LABEL_21;
  }

  v12 = 0;
  *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
LABEL_21:
  __dst.__pn_.__r_.__value_.__s.__data_[v12] = 0;
  v25 = __dst;
  std::__fs::filesystem::__create_directories(&v25, 0);
  if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_23:
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v17, v18);
  if ((v36 & 0x10) != 0)
  {
    v20 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v20 = v32;
    }

    v21 = &v31;
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v19 = 0;
      a4[23] = 0;
      goto LABEL_42;
    }

    v21 = v29;
    v20 = v30;
  }

  v22 = *v21;
  v19 = v20 - *v21;
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  a4[23] = v19;
  if (v19)
  {
    memmove(a4, v22, v19);
  }

LABEL_42:
  a4[v19] = 0;
  v26 = *MEMORY[0x277D82828];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x277D82828] + 24);
  v27 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  v27 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v28);
  std::ostream::~ostream();
  return MEMORY[0x245CBFC40](&v37);
}

void sub_240357BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (a11 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a12);
  MEMORY[0x245CBFC40](va);
  _Unwind_Resume(a1);
}

uint64_t GMC_EssentialMatrix(double *a1, double *a2, double *a3)
{
  v3 = a2[3];
  v4 = a2[2] / v3;
  v5 = *a2 / v3;
  v6 = a2[1] / v3;
  v7 = a2[10];
  v8 = a2[9] / v7;
  v9 = a2[7] / v7;
  v10 = a2[8] / v7;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = a1[6];
  v15 = a1[7];
  v16 = v4 * *a1 + 0.0 + v12 * 0.0 + v14 * 0.0;
  v17 = a1[4];
  v18 = a1[5];
  v19 = v4 * v11 + 0.0 + v17 * 0.0 + v15 * 0.0;
  v20 = a1[8];
  v21 = v4 * v13 + 0.0 + v18 * 0.0 + v20 * 0.0;
  v22 = *a1 * 0.0 + 0.0 + v4 * v12 + v14 * 0.0;
  v23 = v11 * 0.0 + 0.0 + v4 * v17 + v15 * 0.0;
  v24 = v13 * 0.0 + 0.0 + v4 * v18 + v20 * 0.0;
  v25 = v14 + v5 * *a1 + 0.0 + v6 * v12;
  v26 = v15 + v5 * v11 + 0.0 + v6 * v17;
  v27 = v20 + v5 * v13 + 0.0 + v6 * v18;
  *a3 = -(v16 * v8 + 0.0 + v19 * 0.0 + v21 * 0.0);
  a3[1] = -(v22 * v8 + 0.0 + v23 * 0.0 + v24 * 0.0);
  a3[2] = -(v25 * v8 + 0.0 + v26 * 0.0 + v27 * 0.0);
  a3[3] = -(v16 * 0.0 + 0.0 + v19 * v8 + v21 * 0.0);
  a3[4] = -(v22 * 0.0 + 0.0 + v23 * v8 + v24 * 0.0);
  a3[5] = -(v25 * 0.0 + 0.0 + v26 * v8 + v27 * 0.0);
  a3[6] = -(v16 * v9 + 0.0 + v19 * v10 + v21);
  a3[7] = -(v22 * v9 + 0.0 + v23 * v10 + v24);
  a3[8] = -(v25 * v9 + 0.0 + v26 * v10 + v27);
  return 0;
}

void jpc::GMC_StandaloneUtils::add_JpcPearlCalib_Parameters_to_GMC_Params(jpc::GMC_StandaloneUtils *this, id *a2, const PearlCalibrations *a3)
{
  [a2[3] intrinsicMatrix];
  v15 = v6;
  v17 = v5;
  [a2[3] pixelSize];
  v8 = v7;
  *this = vmulq_n_f64(vcvtq_f64_f32(v15), v8);
  *(this + 2) = v8 * v17;
  *(this + 3) = v8;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  [a2[6] intrinsicMatrix];
  v16 = v10;
  v18 = v9;
  [a2[6] pixelSize];
  v12 = v11;
  *(this + 56) = vmulq_n_f64(vcvtq_f64_f32(v16), v12);
  *(this + 9) = v12 * v18;
  *(this + 10) = v12;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  [a2[3] referenceDimensions];
  *(this + 28) = v13;
  [a2[3] referenceDimensions];
  *(this + 29) = v14;
  *(this + 30) = 256;
  *(this + 124) = 1;
  operator new[]();
}

double jpc::GMC_StandaloneUtils::convert_JpcGmcjOutputs_to_GMCResults@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 184) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 80);
    v3 = *(a1 + 96);
    *(a2 + 120) = vcvtq_f64_f32(vzip1_s32(*v2.i8, *v3.i8));
    v4 = *(a1 + 112);
    v5 = vzip2_s32(*v3.i8, *&v4);
    v6 = COERCE_FLOAT(*(a1 + 120));
    DWORD1(v4) = v2.i32[1];
    *(a2 + 136) = vcvtq_f64_f32(*&v4);
    *(a2 + 152) = vcvtq_f64_f32(v5);
    *(a2 + 168) = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v3, v3, 8uLL)));
    *(a2 + 184) = v6;
    v7 = *a1;
    v8 = *(a1 + 16);
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = vzip2_s32(*v8.i8, *&v9);
    v12 = COERCE_FLOAT(*(a1 + 40));
    DWORD1(v9) = HIDWORD(*a1);
    *a2 = vcvtq_f64_f32(vzip1_s32(*a1, *v8.i8));
    *(a2 + 16) = vcvtq_f64_f32(*&v9);
    *(a2 + 32) = vcvtq_f64_f32(v11);
    *(a2 + 48) = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
    *(a2 + 64) = v12;
    *(a2 + 88) = *(a1 + 64);
    *(a2 + 72) = v10;
  }

  if (*(a1 + 160) == 1)
  {
    *(a2 + 104) = *(a1 + 144);
  }

  result = *(a1 + 168);
  *(a2 + 96) = result;
  return result;
}

double jpc::GMC_StandaloneUtils::convert_GMC_Result_to_JpcGmcjOutputs@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  *a4 = 0;
  *(a4 + 128) = 0;
  *(a4 + 144) = 0;
  *(a4 + 160) = 0;
  if ((a2 & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 16);
    v5.f64[1] = *(a1 + 24);
    v7 = *(a1 + 48);
    v8 = *(a1 + 8);
    v8.f64[1] = *(a1 + 32);
    v9 = *(a1 + 56);
    v6.f64[1] = *(a1 + 40);
    v10 = *(a1 + 64);
    v11 = *(a1 + 120);
    v11.f64[1] = *(a1 + 144);
    v12 = *(a1 + 168);
    v13 = *(a1 + 128);
    v13.f64[1] = *(a1 + 152);
    v14 = *(a1 + 176);
    v15 = *(a1 + 136);
    v15.f64[1] = *(a1 + 160);
    v16 = *(a1 + 184);
    *&v21[4] = *(a1 + 72);
    *&v21[20] = *(a1 + 88);
    *(a4 + 8) = v7;
    *a4 = vcvt_f32_f64(v5);
    *(a4 + 24) = v9;
    *(a4 + 16) = vcvt_f32_f64(v8);
    *(a4 + 40) = v10;
    *(a4 + 32) = vcvt_f32_f64(v6);
    *(a4 + 44) = *v21;
    *(a4 + 56) = *&v21[12];
    *(a4 + 88) = v12;
    *(a4 + 80) = vcvt_f32_f64(v11);
    *(a4 + 104) = v14;
    *(a4 + 96) = vcvt_f32_f64(v13);
    *(a4 + 120) = v16;
    *(a4 + 112) = vcvt_f32_f64(v15);
    *(a4 + 128) = 1;
    *(a4 + 144) = *(a1 + 104);
    *(a4 + 160) = 1;
  }

  v17 = *(a1 + 96);
  v18 = *(a3 + 8);
  v19 = v17 - (v18 * a5);
  *(a4 + 168) = v17;
  *(a4 + 176) = v19;
  result = v18;
  *(a4 + 184) = v18;
  return result;
}

double jpc::GMC_StandaloneUtils::convertJpcCorrespondencesToGmcStandaloneDatatypes@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) - 0x5555555555555555 * ((a2[1] - *a2) >> 4);
  if (2 * v4)
  {
    operator new[]();
  }

  v5 = 16 * v4;
  if (v4)
  {
    operator new[]();
  }

  *(a3 + 16) = 2;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *a3 = &unk_2852312F8;
  *(a3 + 8) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 2;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 32) = v5;
  *(a3 + 40) = &unk_2852312F8;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 100) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 72) = v5;
  *(a3 + 80) = &unk_285231338;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  if (a1[1] != *a1)
  {
    v7 = 0;
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
    }

    v9 = *a1 + 24;
    v10 = 8 * v4;
    do
    {
      if (v10 == v7)
      {
        __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
      }

      *(*(a3 + 8) + v7) = *(v9 - 24);
      *(*(a3 + 8) + v10 + v7) = *(v9 - 16);
      *(*(a3 + 48) + v7) = *(v9 - 8);
      *(*(a3 + 48) + v7) = *v9;
      result = *(v9 + 24);
      *(*(a3 + 88) + v7) = result;
      v9 += 56;
      v7 += 8;
      --v8;
    }

    while (v8);
  }

  v13 = *a2;
  v12 = a2[1];
  v14 = v12 - *a2;
  if (v12 != *a2)
  {
    v15 = *(a3 + 20);
    v16 = *(a3 + 56);
    if (v16)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
      v18 = *(a3 + 60);
      if (v15 > v18)
      {
        LODWORD(v23) = v15 - v6;
        if (v15 >= v6)
        {
          v23 = v23;
        }

        else
        {
          v23 = 0;
        }

        LODWORD(v24) = v18 - v6;
        if (v18 >= v6)
        {
          v24 = v24;
        }

        else
        {
          v24 = 0;
        }

        if (v17 <= 1)
        {
          v17 = 1;
        }

        v25 = (v13 + 2);
        while (v23)
        {
          v26 = 8 * v6;
          *(*(a3 + 8) + v26) = *(v25 - 2);
          *(*(a3 + 8) + v26 + 8 * v15) = *(v25 - 1);
          if (!v24)
          {
            break;
          }

          *(*(a3 + 48) + 8 * v6) = *v25;
          if (v16 == 1)
          {
            break;
          }

          result = v25[1];
          *(*(a3 + 48) + v26 + 8 * v18) = result;
          *(*(a3 + 88) + 8 * v6) = 0;
          LODWORD(v6) = v6 + 1;
          --v24;
          --v23;
          v25 += 6;
          if (!--v17)
          {
            return result;
          }
        }
      }

      else if (v16 == 1)
      {
        if (v15 > v6)
        {
          v28 = 8 * v6;
          *(*(a3 + 8) + v28) = *v13;
          *(*(a3 + 8) + v28 + 8 * v15) = v13[1];
          *(*(a3 + 48) + v28) = v13[2];
        }
      }

      else
      {
        LODWORD(v19) = v15 - v6;
        if (v15 >= v6)
        {
          v19 = v19;
        }

        else
        {
          v19 = 0;
        }

        if (v17 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
        }

        v21 = (v13 + 2);
        while (v19)
        {
          v22 = 8 * v6;
          *(*(a3 + 8) + v22) = *(v21 - 2);
          *(*(a3 + 8) + v22 + 8 * v15) = *(v21 - 1);
          *(*(a3 + 48) + v22) = *v21;
          result = v21[1];
          *(*(a3 + 48) + v22 + 8 * v18) = result;
          *(*(a3 + 88) + v22) = 0;
          ++v6;
          v21 += 6;
          --v19;
          if (!--v20)
          {
            return result;
          }
        }
      }
    }

    else if (v15 > v6)
    {
      v27 = 8 * v6;
      *(*(a3 + 8) + v27) = *v13;
      *(*(a3 + 8) + v27 + 8 * v15) = v13[1];
    }

    __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
  }

  return result;
}

void sub_240358ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  MatrixNxPts<2u,double>::~MatrixNxPts(va);
  MatrixNxPts<2u,double>::~MatrixNxPts(va1);
  _Unwind_Resume(a1);
}

void sub_240358B00(_Unwind_Exception *exception_object)
{
  *(v1 + 80) = off_285231258;
  if (*(v1 + 88) && *(v1 + 104) == 1)
  {
    MEMORY[0x245CBFC90]();
    *(v1 + 88) = 0;
    *(v1 + 112) = 0;
    *(v1 + 104) = 0;
  }

  *(v1 + 96) = 0;
  *(v1 + 40) = off_285231258;
  if (*(v1 + 48) && *(v1 + 64) == 1)
  {
    MEMORY[0x245CBFC90]();
    *(v1 + 48) = 0;
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  *(v1 + 56) = 0;
  *v1 = off_285231258;
  if (*(v1 + 8))
  {
    if (*(v1 + 24) == 1)
    {
      MEMORY[0x245CBFC90]();
      *(v1 + 8) = 0;
      *(v1 + 32) = 0;
      *(v1 + 24) = 0;
    }
  }

  *(v1 + 16) = 0;
  _Unwind_Resume(exception_object);
}

void jpc::GMC_StandaloneUtils::generateGmcParams(uint64_t a1@<X0>, id *a2@<X1>, const PearlCalibrations *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0u;
  *(a4 + 144) = 2;
  *(a4 + 152) = 0;
  *(a4 + 128) = &unk_2852312F8;
  *(a4 + 136) = 0;
  *(a4 + 176) = 0;
  *(a4 + 184) = 1;
  *(a4 + 192) = 0;
  *(a4 + 160) = 0;
  *(a4 + 168) = &unk_285231338;
  *(a4 + 216) = 0;
  *(a4 + 224) = 1;
  *(a4 + 232) = 0;
  *(a4 + 200) = 0;
  *(a4 + 208) = &unk_285231338;
  *(a4 + 240) = 0;
  *(a4 + 248) = off_285231258;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0;
  *(a4 + 280) = 0;
  *(a4 + 288) = off_285231258;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0;
  *(a4 + 544) = 0;
  *(a4 + 528) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0u;
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0u;
  *(a4 + 416) = 0u;
  *(a4 + 432) = 0u;
  *(a4 + 448) = 0u;
  *(a4 + 464) = 0u;
  *(a4 + 480) = 0u;
  *(a4 + 496) = 0u;
  *(a4 + 512) = 0;
  v5 = a4 + 728;
  *(a4 + 744) = 0;
  *v5 = 0u;
  *(a4 + 832) = 0;
  *(a4 + 840) = 2;
  *(a4 + 848) = 0;
  *(a4 + 856) = 0;
  *(a4 + 824) = &unk_2852312F8;
  *(a4 + 872) = 0;
  *(a4 + 880) = 1;
  *(a4 + 888) = 0;
  *(a4 + 896) = 0;
  *(a4 + 864) = &unk_285231338;
  *(a4 + 912) = 0;
  *(a4 + 920) = 1;
  *(a4 + 928) = 0;
  *(a4 + 936) = 0;
  *(a4 + 904) = &unk_285231338;
  *(a4 + 944) = off_285231258;
  *(a4 + 976) = 0;
  *(a4 + 968) = 0;
  *(a4 + 952) = 0u;
  *(a4 + 984) = off_285231258;
  *(a4 + 1016) = 0;
  *(a4 + 1008) = 0;
  *(a4 + 992) = 0u;
  v6 = *(a1 + 16);
  *(a4 + 560) = *a1;
  *(a4 + 576) = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  *(a4 + 624) = *(a1 + 64);
  *(a4 + 640) = v9;
  *(a4 + 592) = v7;
  *(a4 + 608) = v8;
  v10 = *(a1 + 96);
  v11 = *(a1 + 112);
  v12 = *(a1 + 128);
  v13 = *(a1 + 144);
  *(a4 + 720) = *(a1 + 160);
  *(a4 + 688) = v12;
  *(a4 + 704) = v13;
  *(a4 + 656) = v10;
  *(a4 + 672) = v11;
  if (a4 + 560 != a1)
  {
    *v5 = *(a1 + 168);
    *(v5 + 16) = *(a1 + 184);
  }

  v14 = *(a1 + 208);
  *(a4 + 752) = *(a1 + 192);
  *(a4 + 768) = v14;
  *(a4 + 784) = *(a1 + 224);
  *(a4 + 793) = *(a1 + 233);
  jpc::GMC_StandaloneUtils::add_JpcPearlCalib_Parameters_to_GMC_Params(a4, a2, a3);
}

void sub_240359590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADMonocularStillsExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240359BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_240359F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_24035A244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = v6;

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24035A2F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void DisparityToDepth::RansacLine2DModel::estimateX(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_24035AC18(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void DisparityToDepth::RansacLine2DModel::estimateY(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_24035ADE8(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double DisparityToDepth::RansacLine2DModel::fit(uint64_t a1, float **a2, float **a3)
{
  v3 = a2[1];
  v4 = *a2;
  if (*a2 == v3 || (v5 = a3[1], v6 = *a3, *a3 == v5))
  {
    *(a1 + 8) = 0;
    result = 0.0;
    *(a1 + 12) = 0;
    return result;
  }

  v7 = v3 - v4 - 4;
  v8 = (v7 >> 2) + 1;
  result = 0.0;
  v10 = *a2;
  if (v7 < 0x1C)
  {
    goto LABEL_8;
  }

  v11 = v4 + 1;
  v12 = v8 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v13 = v11[-1];
    v14 = vcvt_hight_f64_f32(v13);
    v15 = vcvtq_f64_f32(*v13.f32);
    v16 = vcvt_hight_f64_f32(*v11);
    v17 = vcvtq_f64_f32(*v11->f32);
    result = result + v15.f64[0] + v15.f64[1] + v14.f64[0] + v14.f64[1] + v17.f64[0] + v17.f64[1] + v16.f64[0] + v16.f64[1];
    v11 += 2;
    v12 -= 8;
  }

  while (v12);
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFF8))
  {
    v10 = &v4->f32[v8 & 0x7FFFFFFFFFFFFFF8];
    do
    {
LABEL_8:
      v18 = *v10++;
      result = result + v18;
    }

    while (v10 != v3);
  }

  v19 = v5 - v6 - 4;
  v20 = (v19 >> 2) + 1;
  v21 = 0.0;
  v22 = *a3;
  if (v19 < 0x1C)
  {
    goto LABEL_14;
  }

  v23 = v6 + 1;
  v24 = v20 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v25 = v23[-1];
    v26 = vcvt_hight_f64_f32(v25);
    v27 = vcvtq_f64_f32(*v25.f32);
    v28 = vcvt_hight_f64_f32(*v23);
    v29 = vcvtq_f64_f32(*v23->f32);
    v21 = v21 + v27.f64[0] + v27.f64[1] + v26.f64[0] + v26.f64[1] + v29.f64[0] + v29.f64[1] + v28.f64[0] + v28.f64[1];
    v23 += 2;
    v24 -= 8;
  }

  while (v24);
  if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
  {
    v22 = &v6->f32[v20 & 0x7FFFFFFFFFFFFFF8];
    do
    {
LABEL_14:
      v30 = *v22++;
      v21 = v21 + v30;
    }

    while (v22 != v5);
  }

  v31 = (v3 - v4) >> 2;
  v32 = 0.0;
  v33 = v4;
  if (v7 < 0x1C)
  {
    goto LABEL_20;
  }

  v34 = v4 + 1;
  v35 = v8 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v36 = v34[-1];
    v37 = vcvt_hight_f64_f32(v36);
    v38 = vcvtq_f64_f32(*v36.f32);
    v39 = vcvt_hight_f64_f32(*v34);
    v40 = vcvtq_f64_f32(*v34->f32);
    v32 = v32 + v38.f64[0] + v38.f64[1] + v37.f64[0] + v37.f64[1] + v40.f64[0] + v40.f64[1] + v39.f64[0] + v39.f64[1];
    v34 += 2;
    v35 -= 8;
  }

  while (v35);
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFF8))
  {
    v33 = &v4->f32[v8 & 0x7FFFFFFFFFFFFFF8];
    do
    {
LABEL_20:
      v41 = *v33++;
      v32 = v32 + v41;
    }

    while (v33 != v3);
  }

  v42 = v31;
  v43 = 0.0;
  v44 = v4;
  if (v7 < 0x1C)
  {
    goto LABEL_26;
  }

  v45 = v4 + 1;
  v46 = v8 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v47 = v45[-1];
    v48 = vcvt_hight_f64_f32(v47);
    v49 = vcvtq_f64_f32(*v47.f32);
    v50 = vcvt_hight_f64_f32(*v45);
    v51 = vcvtq_f64_f32(*v45->f32);
    v52 = v43 + v49.f64[0] + v49.f64[1] + v48.f64[0] + v48.f64[1] + v51.f64[0] + v51.f64[1] + v50.f64[0];
    v43 = v52 + v50.f64[1];
    v45 += 2;
    v46 -= 8;
  }

  while (v46);
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFF8))
  {
    v44 = &v4->f32[v8 & 0x7FFFFFFFFFFFFFF8];
    do
    {
LABEL_26:
      v53 = *v44++;
      v52 = v53;
      v43 = v43 + v53;
    }

    while (v44 != v3);
  }

  *&v52 = v32 / v42;
  *&v43 = v43 / v42;
  v54 = 0.0;
  if (v31 < 0xC)
  {
    v55 = 0;
    v56 = 0;
LABEL_29:
    v57 = v56 + 1;
    do
    {
      v54 = v54 + ((v4->f32[v55] - *&v52) * (v4->f32[v55] - *&v43));
      v55 = v57++;
    }

    while (v31 > v55);
    v58 = v31 - 1;
    goto LABEL_32;
  }

  v56 = 0;
  v55 = 0;
  v58 = v31 - 1;
  if (!v31)
  {
    goto LABEL_29;
  }

  if (HIDWORD(v58))
  {
    goto LABEL_29;
  }

  v93 = vdupq_lane_s32(*&v52, 0);
  v55 = v31 & 0x1FFFFFFF8;
  v94 = vdupq_lane_s32(*&v43, 0);
  v95 = v4 + 1;
  v96 = v31 & 0x1FFFFFFF8;
  do
  {
    v97 = vmulq_f32(vsubq_f32(v95[-1], v93), vsubq_f32(v95[-1], v94));
    v98 = vmulq_f32(vsubq_f32(*v95, v93), vsubq_f32(*v95, v94));
    v54 = (((((((v54 + v97.f32[0]) + v97.f32[1]) + v97.f32[2]) + v97.f32[3]) + v98.f32[0]) + v98.f32[1]) + v98.f32[2]) + v98.f32[3];
    v95 += 2;
    v96 -= 8;
  }

  while (v96);
  v56 = v31 & 0xFFFFFFF8;
  if (v31 != v55)
  {
    goto LABEL_29;
  }

LABEL_32:
  v59 = 0.0;
  v60 = v4;
  if (v7 < 0x1C)
  {
    goto LABEL_37;
  }

  v61 = v4 + 1;
  v62 = v8 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v63 = v61[-1];
    v64 = vcvt_hight_f64_f32(v63);
    v65 = vcvtq_f64_f32(*v63.f32);
    v66 = vcvt_hight_f64_f32(*v61);
    v67 = vcvtq_f64_f32(*v61->f32);
    v59 = v59 + v65.f64[0] + v65.f64[1] + v64.f64[0] + v64.f64[1] + v67.f64[0] + v67.f64[1] + v66.f64[0] + v66.f64[1];
    v61 += 2;
    v62 -= 8;
  }

  while (v62);
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFF8))
  {
    v60 = &v4->f32[v8 & 0x7FFFFFFFFFFFFFF8];
    do
    {
LABEL_37:
      v68 = *v60++;
      v59 = v59 + v68;
    }

    while (v60 != v3);
  }

  v69 = ((v5 - v6) >> 2);
  v70 = 0.0;
  v71 = v6;
  if (v19 < 0x1C)
  {
    goto LABEL_43;
  }

  v72 = v6 + 1;
  v73 = v20 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v74 = v72[-1];
    v75 = vcvt_hight_f64_f32(v74);
    v76 = vcvtq_f64_f32(*v74.f32);
    v77 = vcvt_hight_f64_f32(*v72);
    v78 = vcvtq_f64_f32(*v72->f32);
    v70 = v70 + v76.f64[0] + v76.f64[1] + v75.f64[0] + v75.f64[1] + v78.f64[0] + v78.f64[1] + v77.f64[0] + v77.f64[1];
    v72 += 2;
    v73 -= 8;
  }

  while (v73);
  if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
  {
    v71 = &v6->f32[v20 & 0x7FFFFFFFFFFFFFF8];
    do
    {
LABEL_43:
      v79 = *v71++;
      v70 = v70 + v79;
    }

    while (v71 != v5);
  }

  v80 = result / v42;
  v81 = v58;
  v82 = v59 / v42;
  *&v82 = v82;
  v83 = v70 / v69;
  *&v83 = v70 / v69;
  v84 = 0.0;
  v85 = v21 / v69;
  if (v31 < 8)
  {
    v86 = 0;
    v87 = 0;
LABEL_46:
    v88 = v87 + 1;
    do
    {
      v84 = v84 + ((v4->f32[v86] - *&v82) * (v6->f32[v86] - *&v83));
      v86 = v88++;
    }

    while (v31 > v86);
    goto LABEL_48;
  }

  v87 = 0;
  v86 = 0;
  if (v58 == -1)
  {
    goto LABEL_46;
  }

  if (HIDWORD(v58))
  {
    goto LABEL_46;
  }

  v86 = v31 & 0x1FFFFFFF8;
  v99 = vdupq_lane_s32(*&v82, 0);
  v100 = vdupq_lane_s32(*&v83, 0);
  v101 = v6 + 1;
  v102 = v4 + 1;
  v103 = v31 & 0x1FFFFFFF8;
  do
  {
    v104 = vmulq_f32(vsubq_f32(v102[-1], v99), vsubq_f32(v101[-1], v100));
    v105 = vmulq_f32(vsubq_f32(*v102, v99), vsubq_f32(*v101, v100));
    v84 = (((((((v84 + v104.f32[0]) + v104.f32[1]) + v104.f32[2]) + v104.f32[3]) + v105.f32[0]) + v105.f32[1]) + v105.f32[2]) + v105.f32[3];
    v101 += 2;
    v102 += 2;
    v103 -= 8;
  }

  while (v103);
  v87 = v31 & 0xFFFFFFF8;
  if (v31 != v86)
  {
    goto LABEL_46;
  }

LABEL_48:
  v90 = v85;
  v91 = v54 / v81;
  v92 = 0.0;
  if (v91 != 0.0)
  {
    v92 = (v84 / v81) / v91;
  }

  v89 = v80;
  *&result = v90 - (v92 * v89);
  *(a1 + 8) = v92;
  *(a1 + 12) = LODWORD(result);
  return result;
}

void DisparityToDepth::RansacLineModel::estimateX(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_24035B5C8(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void DisparityToDepth::RansacLineModel::estimateY(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_24035B798(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

float DisparityToDepth::RansacLineModel::fit(uint64_t a1, float **a2, float **a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = 0.0;
  v6 = 0.0;
  if (*a3 != v4)
  {
    v7 = v4 - v3;
    v8 = v4 - v3 - 4;
    if (v8 >= 0x1C)
    {
      v10 = (v8 >> 2) + 1;
      v11 = (v3 + 4);
      v9 = 0.0;
      v12 = v10 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v13 = v11[-1];
        v14 = vcvt_hight_f64_f32(v13);
        v15 = vcvtq_f64_f32(*v13.f32);
        v16 = vcvt_hight_f64_f32(*v11);
        v17 = vcvtq_f64_f32(*v11->f32);
        v9 = v9 + v15.f64[0] + v15.f64[1] + v14.f64[0] + v14.f64[1] + v17.f64[0] + v17.f64[1] + v16.f64[0] + v16.f64[1];
        v11 += 2;
        v12 -= 8;
      }

      while (v12);
      if (v10 == (v10 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_9;
      }

      v3 += v10 & 0x7FFFFFFFFFFFFFF8;
    }

    else
    {
      v9 = 0.0;
    }

    do
    {
      v18 = *v3++;
      v9 = v9 + v18;
    }

    while (v3 != v4);
LABEL_9:
    v6 = v9 / (v7 >> 2);
  }

  v19 = *a2;
  v20 = a2[1];
  if (*a2 != v20)
  {
    v21 = v20 - v19;
    v22 = v20 - v19 - 4;
    if (v22 >= 0x1C)
    {
      v24 = (v22 >> 2) + 1;
      v25 = (v19 + 4);
      v23 = 0.0;
      v26 = v24 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v27 = v25[-1];
        v28 = vcvt_hight_f64_f32(v27);
        v29 = vcvtq_f64_f32(*v27.f32);
        v30 = vcvt_hight_f64_f32(*v25);
        v31 = vcvtq_f64_f32(*v25->f32);
        v23 = v23 + v29.f64[0] + v29.f64[1] + v28.f64[0] + v28.f64[1] + v31.f64[0] + v31.f64[1] + v30.f64[0] + v30.f64[1];
        v25 += 2;
        v26 -= 8;
      }

      while (v26);
      if (v24 == (v24 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_18;
      }

      v19 += v24 & 0x7FFFFFFFFFFFFFF8;
    }

    else
    {
      v23 = 0.0;
    }

    do
    {
      v32 = *v19++;
      v23 = v23 + v32;
    }

    while (v19 != v20);
LABEL_18:
    v5 = v23 / (v21 >> 2);
  }

  result = v6 - v5;
  *(a1 + 8) = result;
  return result;
}

void DisparityToDepth::DisparityToDepthFitEstimator::DisparityToDepthFitEstimator(uint64_t a1, uint64_t a2, double a3, double a4, double a5, float a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a6;
  if (*(a2 + 12) == 1)
  {
    operator new();
  }

  operator new();
}

void DisparityToDepth::WorldPointsContainer::~WorldPointsContainer(DisparityToDepth::WorldPointsContainer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t DisparityToDepth::WorldPointsContainer::WorldPointsContainer(uint64_t this, uint64_t a2, float a3)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = a2;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 56) = a3;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = a2;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 56) = a3;
  return this;
}

void DisparityToDepth::WorldPointsContainer::push(DisparityToDepth::WorldPointsContainer *this, ADDisparityToDepthFitWorldPoint *a2, unint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6[1] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  *(this + 1) = *this;
  v6[2] = 0;
  v6[0] = 0;
  DisparityToDepth::WorldPointsLRU::push(this + 3, v6);
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(this + 1) - *this) >> 5;
    v5 = (*(this + 5) - *(this + 4)) >> 5;
    *buf = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Verbose] WorldPointsContainer amount of pushed points %lu amount of retained points %lu", buf, 0x16u);
  }
}

void sub_24035BF10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void DisparityToDepth::WorldPointsLRU::push(void *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *v13 = 0u;
  *__p = 0u;
  v15 = 1065353216;
  if (*a1)
  {
    if (!(*a1 >> 59))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if (!*a1)
      {
        break;
      }

      if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v13, *(v3 + 20)))
      {
        operator new();
      }

      v3 += 32;
    }

    while (v3 != v4);
  }

  v6 = a1[1];
  v7 = a1[2];
  for (i = (a1 + 1); v6 != v7; v6 += 32)
  {
    if (!*a1)
    {
      break;
    }

    if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v13, *(v6 + 20)))
    {
      operator new();
    }
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = (a1[2] - a1[1]) >> 5;
    *buf = 134218240;
    v17 = v8;
    v18 = 2048;
    v19 = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Verbose] WorldPointsLRU amount of points before push %lu new amount of points %lu", buf, 0x16u);
  }

  v9 = *i;
  if (*i)
  {
    a1[2] = v9;
    operator delete(v9);
    *i = 0;
    a1[2] = 0;
    a1[3] = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v10 = __p[0];
  if (__p[0])
  {
    do
    {
      v11 = *v10;
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v13[0];
  v13[0] = 0;
  if (v12)
  {
    operator delete(v12);
  }
}

void sub_24035C2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::unordered_set<int>::~unordered_set[abi:ne200100](&a9);
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return 0;
        }
      }

      else if ((v8 & (v2 - 1)) != v4)
      {
        goto LABEL_23;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v7 >= v2)
    {
      v7 %= v2;
    }

    if (v7 != v4)
    {
      goto LABEL_23;
    }

LABEL_12:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t std::unordered_set<int>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void DisparityToDepth::DisparityToDepthFitEstimator::estimate(DisparityToDepth::WorldPointsContainer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v90 = *MEMORY[0x277D85DE8];
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  DisparityToDepth::WorldPointsContainer::vector(a1, v73);
  if (a6 && a7)
  {
    v65 = a6;
    v66 = a9;
    v67 = a1;
    if (v73[1] != v73[0])
    {
      if (!(((v73[1] - v73[0]) >> 5) >> 60))
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    (*(*a8 + 16))(&__p);
    p_vtable = &OBJC_METACLASS___ADStereoV2Pipeline.vtable;
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219008;
      v81 = a3;
      v82 = 2048;
      v83 = *&a4;
      v84 = 2048;
      v85 = *&a5;
      v86 = 2048;
      v87 = a6;
      v88 = 2048;
      v89 = a7;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Verbose] estiamte with disparityCount: %lu disparityWidth: %lu disparityHeight: %lu rgbWidth: %lu rgbHeight: %lu", buf, 0x34u);
    }

    v17 = (v72 - __p) >> 4;
    if (v17 > (v79 - v77) >> 2)
    {
      if (!(v17 >> 62))
      {
        operator new();
      }

      goto LABEL_115;
    }

    v18 = (v72 - __p) >> 4;
    if (v18 > (v76 - v74) >> 2)
    {
      if (!(v18 >> 62))
      {
        operator new();
      }

LABEL_115:
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v20 = __p;
    v19 = v72;
    v21 = a1;
    v22 = a5;
    if (__p != v72)
    {
      v23 = MEMORY[0x277D86220];
      v24 = &dword_2402F6000;
      do
      {
        v26 = llroundf((COERCE_FLOAT(*v20) / v65) * a4);
        LODWORD(v27) = HIDWORD(*v20);
        LODWORD(v28) = v20[1];
        if (v26 >= a4 || v26 < 0 || (v29 = llroundf((v27 / a7) * a5), v29 < 0) || ((v30 = v28 / 1000.0, (v28 / 1000.0) <= *(v21 + 653)) ? (v31 = v29 < v22) : (v31 = 0), !v31 || v30 < *(v21 + 652)))
        {
          if (*(p_vtable + 3648) == 1)
          {
            v70 = *v20;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218496;
              *&v81 = *&v70;
              v82 = 2048;
              v83 = v27;
              v84 = 2048;
              v85 = v28;
              _os_log_impl(v24, v23, OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Verbose] Skipping (pixelX, pixelY, depth)=(%f, %f, %f)", buf, 0x20u);
            }
          }
        }

        else
        {
          v32 = p_vtable;
          v33 = v24;
          _H14 = *(a2 + 2 * v29 * a4 + 2 * v26);
          v35 = v78;
          v36 = 1.0 / v30;
          if (v78 >= v79)
          {
            v38 = v77;
            v39 = v78 - v77;
            v40 = (v78 - v77) >> 2;
            v41 = v40 + 1;
            if ((v40 + 1) >> 62)
            {
              goto LABEL_113;
            }

            v42 = v79 - v77;
            if ((v79 - v77) >> 1 > v41)
            {
              v41 = v42 >> 1;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v43 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              if (!(v43 >> 62))
              {
                operator new();
              }

LABEL_114:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v40) = v36;
            v37 = 4 * v40 + 4;
            memcpy(0, v38, v39);
            v77 = 0;
            v78 = v37;
            v79 = 0;
            if (v38)
            {
              operator delete(v38);
            }

            v21 = v67;
            v22 = a5;
          }

          else
          {
            *v78 = v36;
            v37 = (v35 + 1);
          }

          __asm { FCVT            S14, H14 }

          v78 = v37;
          v49 = v75;
          if (v75 < v76)
          {
            *v75 = _S14;
            v25 = (v49 + 4);
          }

          else
          {
            v50 = v74;
            v51 = v75 - v74;
            v52 = (v75 - v74) >> 2;
            v53 = v52 + 1;
            if ((v52 + 1) >> 62)
            {
LABEL_113:
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v54 = v76 - v74;
            if ((v76 - v74) >> 1 > v53)
            {
              v53 = v54 >> 1;
            }

            if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v55 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v55 = v53;
            }

            if (v55)
            {
              if (!(v55 >> 62))
              {
                operator new();
              }

              goto LABEL_114;
            }

            *(4 * v52) = _S14;
            v25 = 4 * v52 + 4;
            memcpy(0, v50, v51);
            v74 = 0;
            v75 = v25;
            v76 = 0;
            if (v50)
            {
              operator delete(v50);
            }

            v21 = v67;
            v22 = a5;
          }

          v75 = v25;
          v24 = v33;
          p_vtable = v32;
          v23 = MEMORY[0x277D86220];
        }

        v20 += 2;
      }

      while (v20 != v19);
    }

    if (DisparityToDepth::Ransac<float,float>::fit(v21 + 18, &v77, &v74))
    {
      if (*(p_vtable + 3648) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v81 = (v78 - v77) >> 2;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Verbose] Ransac with input length: %lu succeeded", buf, 0xCu);
      }

      v56 = (*(**(v21 + 8) + 48))(*(v21 + 8));
      v57 = v56;
      if (*(v21 + 2616))
      {
        if (*(v21 + 2632) == 1)
        {
          v58 = *(v21 + 328);
        }

        else
        {
          v58 = v56;
        }

        v61 = (v56 * (1.0 - *(v21 + 655))) + *(v21 + 655) * v58;
        *(v21 + 328) = v61;
        *(v21 + 2632) = 1;
        v57 = v61;
      }

      else
      {
        if ((*(v21 + 2632) & 1) == 0)
        {
          *(v21 + 2632) = 1;
        }

        *(v21 + 328) = v56;
      }

      v62 = -(*(**(v21 + 8) + 56))(*(v21 + 8));
      if (*(v21 + 2640))
      {
        if (*(v21 + 2656) == 1)
        {
          v63 = *(v21 + 331);
        }

        else
        {
          v63 = v62;
        }

        v64 = ((1.0 - *(v21 + 661)) * v62) + *(v21 + 661) * v63;
        *(v21 + 331) = v64;
        *(v21 + 2656) = 1;
        v62 = v64;
      }

      else
      {
        if ((*(v21 + 2656) & 1) == 0)
        {
          *(v21 + 2656) = 1;
        }

        *(v21 + 331) = v62;
      }

      *v66 = 1;
      *(v66 + 16) = 0;
      *(v66 + 4) = v57;
      *(v66 + 8) = v62;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0;
      if (v78 != v77)
      {
        if (((v78 - v77) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      *(v66 + 40) = 0;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      if (v75 != v74)
      {
        if (((v75 - v74) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      *(v66 + 64) = 0;
      *(v66 + 72) = 0;
      *(v66 + 80) = 0;
      if (v73[1] != v73[0])
      {
        if (((v73[1] - v73[0]) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      if (*(p_vtable + 3648) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v81 = (v78 - v77) >> 2;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DisparityToDepth [Verbose] Ransac input length: %lu failed", buf, 0xCu);
      }

      if (*(v21 + 664) & 1) != 0 && (*(v21 + 658))
      {
        v59 = *(v21 + 331);
        v60 = *(v21 + 328);
        *v66 = 1;
        *&v60 = v60;
        *&v59 = v59;
        *(v66 + 16) = 0;
        *(v66 + 4) = LODWORD(v60);
        *(v66 + 8) = LODWORD(v59);
        *(v66 + 24) = 0;
        *(v66 + 32) = 0;
        if (v78 != v77)
        {
          if (((v78 - v77) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        *(v66 + 40) = 0;
        *(v66 + 48) = 0;
        *(v66 + 56) = 0;
        if (v75 != v74)
        {
          if (((v75 - v74) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        *(v66 + 64) = 0;
        *(v66 + 72) = 0;
        *(v66 + 80) = 0;
        if (v73[1] != v73[0])
        {
          if (((v73[1] - v73[0]) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<float>::__throw_length_error[abi:ne200100]();
        }
      }

      else
      {
        _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJbffNS_6vectorIfNS_9allocatorIfEEEES6_NS3_I31ADDisparityToDepthFitWorldPointNS4_IS7_EEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJbffS6_S6_S9_EJEJEJbiiRS6_SC_RKS9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(v66, 0, 0, 0, &v77, &v74, v73);
      }
    }

    if (__p)
    {
      v72 = __p;
      operator delete(__p);
    }
  }

  else
  {
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJbffNS_6vectorIfNS_9allocatorIfEEEES6_NS3_I31ADDisparityToDepthFitWorldPointNS4_IS7_EEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJbffS6_S6_S9_EJEJEJbiiRS6_SC_RKS9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(a9, 0, 0, 0, &v77, &v74, v73);
  }

  if (v73[0])
  {
    operator delete(v73[0]);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }
}

void sub_24035D33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  v38 = *v36;
  if (*v36)
  {
    a12[9] = v38;
    operator delete(v38);
    v39 = *v35;
    if (!*v35)
    {
LABEL_3:
      v40 = *v34;
      if (!*v34)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v39 = *v35;
    if (!*v35)
    {
      goto LABEL_3;
    }
  }

  a12[6] = v39;
  operator delete(v39);
  v40 = *v34;
  if (!*v34)
  {
LABEL_4:
    v41 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  a12[3] = v40;
  operator delete(v40);
  v41 = __p;
  if (!__p)
  {
LABEL_5:
    if (!v33)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v41);
  if (!v33)
  {
LABEL_6:
    v42 = a25;
    if (!a25)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v33);
  v42 = a25;
  if (!a25)
  {
LABEL_7:
    v43 = a29;
    if (!a29)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v42);
  v43 = a29;
  if (!a29)
  {
LABEL_8:
    v44 = a32;
    if (!a32)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v43);
  v44 = a32;
  if (!a32)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  operator delete(v44);
  _Unwind_Resume(exception_object);
}

void DisparityToDepth::WorldPointsContainer::vector(DisparityToDepth::WorldPointsContainer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *v11 = 0u;
  *v12 = 0u;
  v13 = 1065353216;
  v3 = *this;
  v4 = *(this + 1);
  v5 = ((*(this + 5) - *(this + 4)) >> 5) + ((v4 - *this) >> 5);
  if (v5)
  {
    if (!(v5 >> 59))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  for (; v3 != v4; v3 += 32)
  {
    if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v11, *(v3 + 20)))
    {
      operator new();
    }
  }

  v7 = *(this + 4);
  v6 = *(this + 5);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v8 = v12[0];
  if (v12[0])
  {
    do
    {
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = v11[0];
  v11[0] = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_24035D7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char a11)
{
  std::unordered_set<int>::~unordered_set[abi:ne200100](&a11);
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJbffNS_6vectorIfNS_9allocatorIfEEEES6_NS3_I31ADDisparityToDepthFitWorldPointNS4_IS7_EEEEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJbffS6_S6_S9_EJEJEJbiiRS6_SC_RKS9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(uint64_t result, char a2, int a3, int a4, void *a5, void *a6, void *a7)
{
  *result = a2;
  *(result + 16) = 0;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v7 = a5[1];
  if (v7 != *a5)
  {
    if (((v7 - *a5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v8 = a6[1] - *a6;
  if (v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v9 = a7[1] - *a7;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24035D974(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    v1[9] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v4;
      if (!*v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[6] = v7;
  operator delete(v7);
  v8 = *v4;
  if (!*v4)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[3] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_24035D9D4()
{
  if (!*v0)
  {
    JUMPOUT(0x24035D998);
  }

  JUMPOUT(0x24035D990);
}

uint64_t DisparityToDepth::Ransac<float,float>::fit(int *a1, uint64_t *a2, uint64_t *a3)
{
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v15 = 0;
    goto LABEL_91;
  }

  v5 = a3[1];
  if (*a3 == v5)
  {
    goto LABEL_88;
  }

  if (v4 - v3 != v5 - *a3)
  {
    goto LABEL_88;
  }

  v6 = a1;
  if ((v4 - v3) >> 2 < (*(**a1 + 40))(*a1))
  {
    goto LABEL_88;
  }

  v8 = *a3;
  v7 = a3[1];
  if ((*(**v6 + 40))() > ((v7 - v8) >> 2))
  {
    goto LABEL_88;
  }

  v60 = v6;
  if (*(v6 + 3) == 0.0)
  {
    if (*(v6 + 2528))
    {
      v10 = a3;
    }

    else
    {
      v10 = a2;
    }

    v11 = *v10;
    v12 = a3 + 1;
    if (!*(v6 + 2528))
    {
      v12 = a2 + 1;
    }

    v13 = *v12;
    v14 = *v12 - v11;
    if (*v12 != v11)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v16 = v14 >> 2;
    v17 = (v14 >> 2) >> 1;
    if (4 * v17)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(0, (4 * v17), 0);
    }

    if (v13 == v11)
    {
      goto LABEL_29;
    }

    v9.i32[0] = *(4 * v17);
    if (v16 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v14 >> 2;
    }

    if (v16 > 7)
    {
      v19 = v18 & 0xFFFFFFFFFFFFFFF8;
      v20 = vdupq_lane_s32(v9, 0);
      v21 = 16;
      v22 = v18 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v23 = vabdq_f32(*v21, v20);
        *(v21 - 16) = vabdq_f32(*(v21 - 16), v20);
        *v21 = v23;
        v21 += 32;
        v22 -= 8;
      }

      while (v22);
      if (v16 == v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = 0;
    }

    v24 = v18 - v19;
    v25 = (4 * v19);
    do
    {
      *v25 = vabds_f32(*v25, *v9.i32);
      ++v25;
      --v24;
    }

    while (v24);
LABEL_29:
    if (4 * v17)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(0, (4 * v17), 0);
    }

    v26 = *(4 * v17);
    operator delete(0);
    v6 = v60;
    v60[3] = v26;
  }

  if (v6[2] >= 1)
  {
    v27 = 0;
    v52 = 0;
    v28 = v6 + 6;
    v29 = 0.0;
    do
    {
      v53 = v27;
      if ((*(**v6 + 40))())
      {
        operator new();
      }

      v30 = (a2[1] - *a2) >> 2;
      v31 = __clz(v30);
      v32 = 31;
      if (((v30 << v31) & 0x7FFFFFFF) != 0)
      {
        v32 = 32;
      }

      v33 = v32 - v31;
      v34 = (v33 >> 5);
      if ((v33 & 0x1F) != 0)
      {
        ++v34;
      }

      v55 = v34;
      v57 = v33;
      v54 = 0xFFFFFFFF >> -(v33 / v34);
      if ((*(**v60 + 40))())
      {
        if (v30 != 1)
        {
          if (v30)
          {
            v40 = v54;
            if (v55 > v57)
            {
              v40 = 0;
            }

            v41 = *(v60 + 315);
            do
            {
              v42 = v41;
              v41 = (v41 + 1) % 0x270;
              v43 = v28[v41];
              v44 = v43 & 0x7FFFFFFE | v28[v42] & 0x80000000;
              if (v43)
              {
                v45 = -1727483681;
              }

              else
              {
                v45 = 0;
              }

              v46 = v45 ^ v28[(v42 + 397) % 0x270] ^ (v44 >> 1);
              v28[v42] = v46;
              v47 = ((v46 ^ (v46 >> 11)) << 7) & 0x9D2C5680 ^ v46 ^ (v46 >> 11);
            }

            while ((((v47 << 15) & 0xEFC60000 ^ v47 ^ (((v47 << 15) & 0xEFC60000 ^ v47) >> 18)) & v40) >= v30);
            *(v60 + 315) = v41;
          }

          else
          {
            v35 = *(v60 + 315);
            v36 = (v35 + 1) % 0x270uLL;
            v37 = v28[v36];
            v38 = v37 & 0x7FFFFFFE | v28[v35] & 0x80000000;
            if (v37)
            {
              v39 = -1727483681;
            }

            else
            {
              v39 = 0;
            }

            v28[v35] = v39 ^ v28[(v35 + 397) % 0x270uLL] ^ (v38 >> 1);
            *(v60 + 315) = v36;
          }
        }

        operator new();
      }

      v71 = 0;
      v72 = 0;
      v73 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      (*(**v60 + 16))(*v60, &v71, &v68);
      v6 = v60;
      if (*(v60 + 2528) == 1)
      {
        (*(**v60 + 32))(&__p);
      }

      else
      {
        (*(**v60 + 24))(&__p);
      }

      v56 = v62;
      if (__p)
      {
        v66 = __p;
        operator delete(__p);
      }

      v48 = a2[1] - *a2;
      if (v48)
      {
        if (!((v48 >> 2) >> 61))
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      if ((0 / 0) > *(v60 + 4))
      {
        __p = 0;
        v66 = 0;
        v67 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        (*(**v60 + 16))(*v60, &__p, &v62);
        v6 = v60;
        if (*(v60 + 2528) == 1)
        {
          (*(**v60 + 24))(v61);
        }

        else
        {
          (*(**v60 + 32))(v61);
        }

        v50 = v49;
        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        if ((v52 & (v50 <= v29)) == 0)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v77, __p, v66, (v66 - __p) >> 2);
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v74, v62, v63, (v63 - v62) >> 2);
          v29 = v50;
        }

        if (v62)
        {
          v63 = v62;
          operator delete(v62);
        }

        if (__p)
        {
          v66 = __p;
          operator delete(__p);
        }

        v52 = 1;
      }

      if (v56)
      {
        operator delete(v56);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      v27 = v53 + 1;
    }

    while (v53 + 1 < v6[2]);
    if (v52)
    {
      (*(**v6 + 16))(*v6, &v77, &v74);
      v15 = 1;
      goto LABEL_89;
    }
  }

LABEL_88:
  v15 = 0;
LABEL_89:
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

LABEL_91:
  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  return v15;
}

void sub_24035E97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  v32 = *(v30 - 152);
  if (v32)
  {
    *(v30 - 144) = v32;
    operator delete(v32);
    v33 = *(v30 - 128);
    if (v33)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = *(v30 - 128);
    if (v33)
    {
LABEL_3:
      *(v30 - 120) = v33;
      operator delete(v33);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

void *anonymous namespace::absoluteError(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (v2 != v3)
  {
    if (!(((v2 - v3) >> 2) >> 62))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24035ECC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

float anonymous namespace::calculateRSquaredScore(float **a1)
{
  v1 = a1[1];
  v2 = 0.0;
  v3 = v1 - *a1;
  if (v1 != *a1)
  {
    if (!(v3 >> 62))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = v5 - v4 - 4;
    v7 = 0.0;
    v8 = *a1;
    if (v6 >= 0x1C)
    {
      v9 = (v6 >> 2) + 1;
      v10 = (v4 + 4);
      v11 = v9 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v12 = v10[-1];
        v13 = vcvt_hight_f64_f32(v12);
        v14 = vcvtq_f64_f32(*v12.f32);
        v15 = vcvt_hight_f64_f32(*v10);
        v16 = vcvtq_f64_f32(*v10->f32);
        v7 = v7 + v14.f64[0] + v14.f64[1] + v13.f64[0] + v13.f64[1] + v16.f64[0] + v16.f64[1] + v15.f64[0] + v15.f64[1];
        v10 += 2;
        v11 -= 8;
      }

      while (v11);
      if (v9 == (v9 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_11;
      }

      v8 = &v4[v9 & 0x7FFFFFFFFFFFFFF8];
    }

    do
    {
      v17 = *v8++;
      v7 = v7 + v17;
    }

    while (v8 != v5);
LABEL_11:
    v2 = v7 / (v5 - v4);
  }

  if (v1 == *a1)
  {
    return 0.0;
  }

  if (v3 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v1 - *a1;
  }

  v19 = 0.0;
  do
  {
    v20 = *v4++;
    v19 = (v20 - v2) * (v20 - v2) + v19;
    --v18;
  }

  while (v18);
  v21 = 0.0;
  if (v19 != 0.0)
  {
    return 1.0 - (0.0 / v19);
  }

  return v21;
}

void sub_24035F068(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float *std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *result, float *a2, float *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v44 = result[1];
      v45 = *(a3 - 1);
      if (v44 < v45)
      {
        v46 = *(result + 1);
      }

      else
      {
        v46 = *(a3 - 1);
      }

      if (v44 < v45)
      {
        v44 = *(a3 - 1);
      }

      *(a3 - 1) = v44;
      *(result + 1) = v46;
      v47 = *(a3 - 1);
      if (v47 < *result)
      {
        v48 = *(a3 - 1);
      }

      else
      {
        v48 = *result;
      }

      if (v47 < *result)
      {
        v47 = *result;
      }

      *(a3 - 1) = v47;
      v49 = result[1];
      if (v48 < v49)
      {
        result[1] = v49;
      }

      else
      {
        *result = v49;
        result[1] = v48;
      }

      return result;
    }

    if (v3 == 2)
    {
      v50 = *(a3 - 1);
      v51 = *result;
      if (v50 < *result)
      {
        *result = v50;
        *(a3 - 1) = v51;
      }

      return result;
    }

    if (v3 <= 7)
    {
      while (result != a3 - 1)
      {
        v52 = result++;
        if (v52 != a3 && result != a3)
        {
          v53 = *v52;
          v54 = *v52;
          v55 = result;
          v56 = v52;
          v57 = result;
          do
          {
            v58 = *v57++;
            v59 = v58;
            if (v58 < v54)
            {
              v54 = v59;
              v56 = v55;
            }

            v55 = v57;
          }

          while (v57 != a3);
          if (v56 != v52)
          {
            *v52 = *v56;
            *v56 = v53;
          }
        }
      }

      return result;
    }

    v4 = &result[(a3 - result) >> 3];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result < v15)
    {
LABEL_33:
      v22 = result + 1;
      if (result + 1 >= v5)
      {
        v25 = result + 1;
      }

      else
      {
        v23 = result + 1;
        while (1)
        {
          v24 = *v4;
          do
          {
            v25 = v23;
            v26 = *v23++;
            v27 = v26;
          }

          while (v26 < v24);
          do
          {
            v28 = *--v5;
            v29 = v28;
          }

          while (v28 >= v24);
          if (v25 >= v5)
          {
            break;
          }

          *v25 = v29;
          *v5 = v27;
          ++v16;
          if (v4 == v25)
          {
            v4 = v5;
          }
        }
      }

      if (v25 != v4)
      {
        v30 = *v25;
        if (*v4 < *v25)
        {
          *v25 = *v4;
          *v4 = v30;
          ++v16;
        }
      }

      if (v25 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v25 <= a2)
        {
          v36 = v25 + 1;
          while (v36 != a3)
          {
            v38 = *(v36 - 1);
            v37 = *v36++;
            if (v37 < v38)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          while (v22 != v25)
          {
            v33 = *(v22 - 1);
            v32 = *v22++;
            if (v32 < v33)
            {
              goto LABEL_48;
            }
          }
        }

        return result;
      }

LABEL_48:
      if (v25 <= a2)
      {
        v31 = v25 + 1;
      }

      else
      {
        a3 = v25;
        v31 = result;
      }
    }

    else
    {
      v18 = a3 - 2;
      while (v18 != result)
      {
        v19 = v18;
        v20 = *v18--;
        v21 = v20;
        if (v20 < v15)
        {
          *result = v21;
          *v19 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v5 = v19;
          goto LABEL_33;
        }
      }

      v34 = result + 1;
      if (v17 >= *v5)
      {
        if (v34 == v5)
        {
          return result;
        }

        while (1)
        {
          v35 = *v34;
          if (v17 < *v34)
          {
            break;
          }

          if (++v34 == v5)
          {
            return result;
          }
        }

        *v34++ = *v5;
        *v5 = v35;
      }

      if (v34 == v5)
      {
        return result;
      }

      while (1)
      {
        v39 = *result;
        do
        {
          v31 = v34;
          v40 = *v34++;
          v41 = v40;
        }

        while (v39 >= v40);
        do
        {
          v42 = *--v5;
          v43 = v42;
        }

        while (v39 < v42);
        if (v31 >= v5)
        {
          break;
        }

        *v31 = v43;
        *v5 = v41;
      }

      if (v31 > a2)
      {
        return result;
      }
    }

    result = v31;
  }

  return result;
}

void DisparityToDepth::DisparityToDepthFitEstimator::~DisparityToDepthFitEstimator(DisparityToDepth::DisparityToDepthFitEstimator *this)
{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void *DisparityToDepth::RansacLine2DModel::RansacLine2DModel(void *this)
{
  *this = &unk_285231178;
  this[1] = 0;
  return this;
}

{
  *this = &unk_285231178;
  this[1] = 0;
  return this;
}

uint64_t DisparityToDepth::RansacLineModel::RansacLineModel(uint64_t this)
{
  *this = &unk_2852311C8;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_2852311C8;
  *(this + 8) = 0;
  return this;
}

void sub_24035F738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__18functionIFNS_6vectorI7CGPointNS_9allocatorIS2_EEEERKNS1_IDv3_fNS3_IS6_EEEEEED2Ev(va);
  MEMORY[0x245CBFCB0](v2, v3);
  _Unwind_Resume(a1);
}

void _ZZN16DisparityToDepth20VioProjectionFactory6createERK13simd_float3x3RKDv3_fNSt3__18functionIFNS7_6vectorI7CGPointNS7_9allocatorISA_EEEERKNS9_IS4_NSB_IS4_EEEEEEEEN17VioProjectionImpl7projectEPS5_m(uint64_t a1@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24035F8C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

void _ZZN16DisparityToDepth20VioProjectionFactory6createERK13simd_float3x3RKDv3_fNSt3__18functionIFNS7_6vectorI7CGPointNS7_9allocatorISA_EEEERKNS9_IS4_NSB_IS4_EEEEEEEEN17VioProjectionImplD0Ev(void *a1)
{
  *a1 = &unk_285231128;
  v1 = a1 + 10;
  v2 = a1[13];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x245CBFCB0);
}

void *_ZZN16DisparityToDepth20VioProjectionFactory6createERK13simd_float3x3RKDv3_fNSt3__18functionIFNS7_6vectorI7CGPointNS7_9allocatorISA_EEEERKNS9_IS4_NSB_IS4_EEEEEEEEN17VioProjectionImplD1Ev(void *a1)
{
  *a1 = &unk_285231128;
  v2 = a1 + 10;
  v3 = a1[13];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void *DisparityToDepth::WorldPointsLRU::WorldPointsLRU(void *this, uint64_t a2)
{
  *this = a2;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = a2;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t DisparityToDepth::WorldPointsLRU::vector@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 8);
  v2 = *(this + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_2403611EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_240361A98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_240361BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240361E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void jpc::PORGMCJ_Block::process(jpc::PORGMCJ_Block *this, const jpc::IIFABlock::AggregatedData *a2, id *a3, ADJasperPearlTelemetryData *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a4;
  jpc::GMC_StandaloneUtils::generateGmcParams(this + 8, a3 + 32, (0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 3) - 0x5555555555555555 * ((*(a2 + 4) - *(a2 + 3)) >> 4)), v8);
}

void sub_24036240C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  jpc::JPCException::~JPCException(&STACK[0x540]);
  std::tuple<MatrixNxPts<2u,double>,MatrixNxPts<2u,double>,MatrixNxPts<1u,double>>::~tuple(&a34);
  _GMC_Params::~_GMC_Params(&a49);

  _Unwind_Resume(a1);
}

jpc::GMCJFailedException *jpc::GMCJFailedException::GMCJFailedException(jpc::GMCJFailedException *this)
{
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 0x1000000;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *this = &unk_2852315E0;
  BYTE7(v3[1]) = 19;
  strcpy(v3, "GMCJFailedException");
  *(this + 2) = v3[0];
  *(this + 6) = *&v3[1];
  jpc::JPCException::generateExceptionStr(this);
  *(this + 22) = 0x4000000;
  jpc::JPCException::generateExceptionStr(this);
  return this;
}

void jpc::PORGMCJ_Block::processTelemetryData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a4;
  if (v30)
  {
    [v30 setIsAssignedGMCJBlock:1];
    [v30 setGmcjScaleChangePercentFromT0:(*(a3 + 96) / *(a2 + 16) + -1.0) * 100.0];
    [v30 setGmcjPPXChangeMicronFromT0:(*(a3 + 104) - *a2) * 1000.0];
    [v30 setGmcjPPYChangeMicronFromT0:(*(a3 + 112) - *(a2 + 8)) * 1000.0];
    [v30 setGmcjScaleChangePercentFromPrev:(*(a3 + 96) / *(a2 + 72) + -1.0) * 100.0];
    [v30 setGmcjPPXChangeMicronFromPrev:(*(a3 + 104) - *(a2 + 56)) * 1000.0];
    [v30 setGmcjPPYChangeMicronFromPrev:(*(a3 + 112) - *(a2 + 64)) * 1000.0];
    v6 = *(a2 + 424);
    v7 = *(a2 + 448);
    v9 = *(a2 + 472);
    v8 = *(a2 + 480);
    v10 = *(a2 + 488);
    v11 = atan2(v8, v10);
    v12 = atan2(-v9, sqrt(v10 * v10 + v8 * v8));
    v29 = atan2(v7, v6);
    v13 = *a3;
    v14 = *(a3 + 24);
    v15 = *(a3 + 48);
    v16 = *(a3 + 56);
    v17 = *(a3 + 64);
    v18 = atan2(v16, v17);
    v19 = atan2(-v15, sqrt(v17 * v17 + v16 * v16));
    v20 = atan2(v14, v13);
    v21 = v20;
    *&v20 = v18 * 1000.0;
    [v30 setGmcjProjRotXChangeFromT0:v20];
    v22 = v19 * 1000.0;
    *&v23 = v22;
    [v30 setGmcjProjRotYChangeFromT0:v23];
    v24 = v21 * 1000.0;
    *&v25 = v24;
    [v30 setGmcjProjRotZChangeFromT0:v25];
    v26 = v18 * 1000.0 - v11 * 1000.0;
    *&v26 = v26;
    [v30 setGmcjProjRotXChangeFromPrev:v26];
    v27 = v22 - v12 * 1000.0;
    *&v27 = v27;
    [v30 setGmcjProjRotYChangeFromPrev:v27];
    v28 = v24 - v29 * 1000.0;
    *&v28 = v28;
    [v30 setGmcjProjRotZChangeFromPrev:v28];
  }
}

void jpc::GMCJFailedException::~GMCJFailedException(std::exception *this)
{
  jpc::JPCException::~JPCException(this);

  JUMPOUT(0x245CBFCB0);
}

__n128 jpc::PORGMCJ_Block::PORGMCJ_Block(uint64_t a1, __int128 *a2, char a3)
{
  *a1 = &unk_2852315B8;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(a1 + 104) = a2[6];
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 168) = *(a2 + 20);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  v11 = *(a2 + 168);
  *(a1 + 192) = *(a2 + 23);
  *(a1 + 176) = v11;
  result = a2[12];
  v13 = a2[13];
  v14 = a2[14];
  *(a1 + 241) = *(a2 + 233);
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = result;
  *(a1 + 264) = a3;
  return result;
}

{
  *a1 = &unk_2852315B8;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(a1 + 104) = a2[6];
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 168) = *(a2 + 20);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  v11 = *(a2 + 168);
  *(a1 + 192) = *(a2 + 23);
  *(a1 + 176) = v11;
  result = a2[12];
  v13 = a2[13];
  v14 = a2[14];
  *(a1 + 241) = *(a2 + 233);
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = result;
  *(a1 + 264) = a3;
  return result;
}

void sub_240363574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29)
{
  InstrumentsTraceGuard::~InstrumentsTraceGuard((v30 - 160));

  _Unwind_Resume(a1);
}

void sub_240363AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_240364738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADLKTOpticalFlow;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240366CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADMonocularVideoExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240367610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v9);

  _Unwind_Resume(a1);
}

void sub_240367A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_240367FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void jpc::IFASimpleAggregator::pull(id *a1@<X1>, const ADCameraCalibration *a2@<X2>, void *a3@<X8>)
{
  v6 = a2;
  if (a1)
  {
    jpc::IFA_DB::getAggPoints(a1, v7);
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFASimpleAggregator: ifaDB is NULL", buf, 2u);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_24036904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, char a41)
{
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100]((v43 - 208));
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a38);
  std::shared_ptr<jpc::IIFABlock::IFAOutput>::~shared_ptr[abi:ne200100](v42);
  jpc::IIFABlock::AggregatedData::~AggregatedData(&a41);

  _Unwind_Resume(a1);
}

void *std::unique_ptr<jpc::IIFABlock::IFAOutput>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 72);
    if (v3)
    {
      *(v1 + 80) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 48);
    if (v4)
    {
      *(v1 + 56) = v4;
      operator delete(v4);
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      *(v1 + 32) = v5;
      operator delete(v5);
    }

    v6 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v6;
      operator delete(v6);
    }

    MEMORY[0x245CBFCB0](v1, 0x20C409CD4345BLL);
    return v2;
  }

  return result;
}

void ***std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void std::vector<int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__eval(unsigned int **a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = a1[5];
    v3 = a1[2];
    v4 = *(a1 + 14);
    v5 = **a1;
    if (v3 >= 0x40)
    {
      v14 = 0;
      do
      {
        v15 = v5 / 0xADC8;
        v16 = 48271 * (v5 % 0xADC8);
        v15 *= 3399;
        v10 = v16 >= v15;
        v17 = v16 - v15;
        if (v10)
        {
          v18 = 0;
        }

        else
        {
          v18 = 0x7FFFFFFF;
        }

        v5 = v18 + v17;
        v19 = v5 - 1;
      }

      while (v2 <= v19 || ++v14 != v1);
      v6 = v4 & v19;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = v5 / 0xADC8;
        v9 = 48271 * (v5 % 0xADC8);
        v8 *= 3399;
        v10 = v9 >= v8;
        v11 = v9 - v8;
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = 0x7FFFFFFF;
        }

        v5 = v12 + v11;
        v13 = v5 - 1;
        if (v2 > v13)
        {
          v6 = (v6 << v3) + (v4 & v13);
          if (++v7 == v1)
          {
            break;
          }
        }
      }
    }

    **a1 = v5;
  }

  else
  {
    v6 = 0;
  }

  v20 = a1[3];
  if (v1 < v20)
  {
    v21 = a1[6];
    v22 = a1[2];
    v23 = *(a1 + 15);
    v24 = **a1;
    if (v22 >= 0x3F)
    {
      while (1)
      {
        v31 = v24 / 0xADC8;
        v32 = 48271 * (v24 % 0xADC8);
        v31 *= 3399;
        v10 = v32 >= v31;
        v33 = v32 - v31;
        if (v10)
        {
          v34 = 0;
        }

        else
        {
          v34 = 0x7FFFFFFF;
        }

        v24 = v34 + v33;
        v35 = v24 - 1;
        if (v21 > v35)
        {
          v1 = (v1 + 1);
          if (v1 == v20)
          {
            break;
          }
        }
      }

      v6 = v23 & v35;
    }

    else
    {
      v25 = v22 + 1;
      while (1)
      {
        v26 = v24 / 0xADC8;
        v27 = 48271 * (v24 % 0xADC8);
        v26 *= 3399;
        v10 = v27 >= v26;
        v28 = v27 - v26;
        if (v10)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0x7FFFFFFF;
        }

        v24 = v29 + v28;
        v30 = v24 - 1;
        if (v21 > v30)
        {
          v6 = (v6 << v25) + (v23 & v30);
          v1 = (v1 + 1);
          if (v1 == v20)
          {
            break;
          }
        }
      }
    }

    **a1 = v24;
  }

  return v6;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::vector<jpc::IIFABlock::IFAPearlJasperCorrespondence>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = *a1;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = 8 * ((v3 - *a1) >> 3);
    v15 = a2[1];
    *v14 = *a2;
    *(v14 + 16) = v15;
    *(v14 + 32) = a2[2];
    *(v14 + 48) = *(a2 + 6);
    v8 = 56 * v10 + 56;
    v16 = 56 * v10 - (v3 - v9);
    memcpy((v14 - (v3 - v9)), v9, v3 - v9);
    *a1 = v16;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
  }

  *(a1 + 8) = v8;
}

void **std::vector<std::vector<int>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::shared_ptr<jpc::IIFABlock::IFAOutput>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void jpc::IIFABlock::AggregatedData::~AggregatedData(jpc::IIFABlock::AggregatedData *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<jpc::IIFABlock::IFAOutput *,std::shared_ptr<jpc::IIFABlock::IFAOutput>::__shared_ptr_default_delete<jpc::IIFABlock::IFAOutput,jpc::IIFABlock::IFAOutput>,std::allocator<jpc::IIFABlock::IFAOutput>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 48);
    if (v3)
    {
      *(v1 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 24);
    if (v4)
    {
      *(v1 + 32) = v4;
      operator delete(v4);
    }

    v5 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x245CBFCB0);
  }

  return result;
}

void std::__shared_ptr_pointer<jpc::IIFABlock::IFAOutput *,std::shared_ptr<jpc::IIFABlock::IFAOutput>::__shared_ptr_default_delete<jpc::IIFABlock::IFAOutput,jpc::IIFABlock::IFAOutput>,std::allocator<jpc::IIFABlock::IFAOutput>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBFCB0);
}

uint64_t jpc::IFASimpleAggregator::apply(jpc::IFASimpleAggregator *this, jpc::IFA_DataFrame *a2, id *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v57) = 0;
      v4 = MEMORY[0x277D86220];
      v5 = "IFASimpleAggregator: dataFrame is NULL";
      goto LABEL_68;
    }

    return -22950;
  }

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v57) = 0;
      v4 = MEMORY[0x277D86220];
      v5 = "IFASimpleAggregator: ifaDB is NULL";
      goto LABEL_68;
    }

    return -22950;
  }

  if (*(a2 + 104) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v57) = 0;
      v4 = MEMORY[0x277D86220];
      v5 = "IFASimpleAggregator: dataFrame is erased";
LABEL_68:
      _os_log_error_impl(&dword_2402F6000, v4, OS_LOG_TYPE_ERROR, v5, &v57, 2u);
      return -22950;
    }

    return -22950;
  }

  jpc::IFA_DB::setLastTranslation(a3, a2 + 30);
  jpc::IFA_DB::setLastRotation(a3, a2 + 27);
  LODWORD(v8) = *(*a2 + 384);
  [*a3 setLastPearlTemp:v8];
  jpc::IFA_DB::getAggPoints(a3, &v57);
  v54 = a3;
  v9 = *(a2 + 17);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v14 = v12;
      if (*(a2 + 8) > v12 && ((*(*(a2 + 7) + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) != 0)
      {
        v15 = *a2;
        v16 = *(a2 + 1);
        v17 = (**a2 + 56 * v10);
        *buf = *v17;
        v63 = v17[1];
        if (v14 >= (*(a2 + 2) - v16) >> 1)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v16 + 2 * v14);
        }

        v19 = *(v15 + 384);
        v20 = *(v15 + 48);
        v21 = v60;
        if (v60 < v61)
        {
          *v60 = *buf;
          *(v21 + 1) = v63;
          *(v21 + 16) = v18;
          *(v21 + 9) = v19;
          *(v21 + 5) = v20;
          v13 = (v21 + 48);
        }

        else
        {
          v22 = v11;
          v23 = __p;
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v60 - __p) >> 4);
          v25 = v24 + 1;
          if (v24 + 1 > 0x555555555555555)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v61 - __p) >> 4) > v25)
          {
            v25 = 0x5555555555555556 * ((v61 - __p) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v26 = 0x555555555555555;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            if (v26 <= 0x555555555555555)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v27 = 16 * ((v60 - __p) >> 4);
          v28 = v63;
          *v27 = *buf;
          *(v27 + 16) = v28;
          *(v27 + 32) = v18;
          *(v27 + 36) = v19;
          *(v27 + 40) = v20;
          v13 = 48 * v24 + 48;
          v29 = (48 * v24 - (v21 - v23));
          memcpy(v29, v23, v21 - v23);
          __p = v29;
          v60 = v13;
          v61 = 0;
          if (v23)
          {
            operator delete(v23);
          }

          LODWORD(v11) = v22;
        }

        v60 = v13;
        v11 = (v11 + 1);
      }

      v10 = (v14 + 1);
      v12 = v14 + 1;
    }

    while (v9 > v10);
  }

  else
  {
    v11 = 0;
  }

  v30 = *(a2 + 18);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v55 = *(a2 + 18);
    do
    {
      v35 = v33;
      if (*(a2 + 11) > v33 && ((*(*(a2 + 10) + ((v33 >> 3) & 0x1FFFFFF8)) >> v33) & 1) != 0)
      {
        v36 = *a2;
        v37 = *(*a2 + 24) + 72 * v31;
        *buf = *v37;
        v63 = *(v37 + 16);
        v38 = *(a2 + 4);
        if (v35 >= (*(a2 + 5) - v38) >> 1)
        {
          v39 = 0;
        }

        else
        {
          v39 = *(v38 + 2 * v35);
        }

        v40 = *(v36 + 384);
        v41 = *(v36 + 48);
        v42 = *(v37 + 56);
        v43 = *(v37 + 60);
        v44 = *(v37 + 61);
        v45 = *(&v57 + 1);
        if (*(&v57 + 1) < v58)
        {
          **(&v57 + 1) = *buf;
          *(v45 + 16) = v63;
          *(v45 + 32) = v39;
          *(v45 + 36) = v40;
          *(v45 + 40) = v41;
          *(v45 + 48) = v42;
          *(v45 + 52) = v43;
          *(v45 + 53) = v44;
          v34 = v45 + 56;
        }

        else
        {
          v56 = v32;
          v46 = v11;
          v47 = v57;
          v48 = 0x6DB6DB6DB6DB6DB7 * ((*(&v57 + 1) - v57) >> 3);
          v49 = v48 + 1;
          if ((v48 + 1) > 0x492492492492492)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v58 - v57) >> 3) > v49)
          {
            v49 = 0xDB6DB6DB6DB6DB6ELL * ((v58 - v57) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v58 - v57) >> 3)) >= 0x249249249249249)
          {
            v50 = 0x492492492492492;
          }

          else
          {
            v50 = v49;
          }

          if (v50)
          {
            if (v50 <= 0x492492492492492)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v51 = 8 * ((*(&v57 + 1) - v57) >> 3);
          v52 = v63;
          *v51 = *buf;
          *(v51 + 16) = v52;
          *(v51 + 32) = v39;
          *(v51 + 36) = v40;
          *(v51 + 40) = v41;
          *(v51 + 48) = v42;
          *(v51 + 52) = v43;
          *(v51 + 53) = v44;
          v34 = 56 * v48 + 56;
          v53 = (56 * v48 - (v45 - v47));
          memcpy(v53, v47, v45 - v47);
          *&v57 = v53;
          *(&v57 + 1) = v34;
          v58 = 0;
          if (v47)
          {
            operator delete(v47);
          }

          v11 = v46;
          v32 = v56;
          v30 = v55;
        }

        *(&v57 + 1) = v34;
        ++v32;
      }

      v31 = (v35 + 1);
      v33 = v35 + 1;
    }

    while (v30 > v31);
  }

  else
  {
    v32 = 0;
  }

  jpc::IFA_DB::setAggPoints(v54, &v57);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFASimpleAggregator: pearlSpotsAdded added: %d\n", buf, 8u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFASimpleAggregator: pearlJasperSpotsAdded added: %d\n", buf, 8u);
  }

  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  if (v57)
  {
    *(&v57 + 1) = v57;
    operator delete(v57);
  }

  return 0;
}

void sub_24036A2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  jpc::IIFABlock::AggregatedData::~AggregatedData(va);
  _Unwind_Resume(a1);
}

uint64_t jpc::IFASimpleAggregator::IFASimpleAggregator(uint64_t this, uint64_t a2, uint64_t a3, float a4)
{
  *this = &unk_285231608;
  *(this + 8) = 1;
  *(this + 16) = a2;
  *(this + 24) = a3;
  *(this + 32) = a4;
  return this;
}

{
  *this = &unk_285231608;
  *(this + 8) = 1;
  *(this + 16) = a2;
  *(this + 24) = a3;
  *(this + 32) = a4;
  return this;
}

void rotationMatrixToAngles(uint64_t a1@<X0>, long double *a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *a2 = atan2(v4, v5);
  a2[1] = atan2(-*(a1 + 48), sqrt(v5 * v5 + v4 * v4));
  a2[2] = atan2(*(a1 + 24), *a1);
}

BOOL GMC_ToleranceTest(uint64_t a1, double *a2, double *a3)
{
  v5 = *a1;
  v6 = *(a1 + 24);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = atan2(v7, v9);
  v11 = atan2(-v8, sqrt(v9 * v9 + v7 * v7));
  v12 = atan2(v6, v5) * 1000.0;
  *a3 = v10 * 1000.0;
  a3[1] = v11 * 1000.0;
  a3[2] = v12;
  return fabs(v10 * 1000.0) <= a2[91] && fabs(v11 * 1000.0) <= a2[92] && fabs(v12) <= a2[93];
}

BOOL GMC_ToleranceTest(uint64_t a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = atan2(v6, v7);
  v9 = atan2(v5, v4);
  return fabs(v8 * 1000.0) <= a2[91] && fabs(atan2(-*(a1 + 48), sqrt(v7 * v7 + v6 * v6)) * 1000.0) <= a2[92] && fabs(v9 * 1000.0) <= a2[93];
}

double ADCommonUtils::calcRotationAngle(ADCommonUtils *this, simd_float3x3 *a2)
{
  v3 = *(this + 6);
  v4 = *(this + 10);
  v8 = atan2f(v3, v4);
  v6 = *this;
  v7 = atan2f(-COERCE_FLOAT(*(this + 1)), sqrtf((v4 * v4) + (v3 * v3)));
  atan2f(*(&v6 + 1), *&v6);
  return COERCE_DOUBLE(__PAIR64__(LODWORD(v7), LODWORD(v8)));
}

void ADCommonUtils::calcRotationAngle(ADCommonUtils *this@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(this + 6);
  v6 = *(this + 10);
  v11 = atan2(v5, v6);
  __x = *this;
  v10 = atan2(-*(this + 2), sqrt(v6 * v6 + v5 * v5));
  *&v7 = atan2(*(&__x + 1), *&__x);
  *&v8 = v11;
  *(&v8 + 1) = v10;
  *a2 = v8;
  a2[1] = v7;
}

__n128 ADCommonUtils::matrixFromArrayColumnFirst(ADCommonUtils *this, NSArray *a2)
{
  v2 = this;
  v27 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:0];
  [v27 floatValue];
  v28 = v3;
  v26 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:1];
  [v26 floatValue];
  v20 = v4;
  v25 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:2];
  [v25 floatValue];
  v19 = v5;
  v24 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:3];
  [v24 floatValue];
  v18 = v6;
  v23 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:4];
  [v23 floatValue];
  v22 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:5];
  [v22 floatValue];
  v21 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:6];
  [v21 floatValue];
  v7 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:7];
  [v7 floatValue];
  v8 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:8];
  [v8 floatValue];
  v9 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:9];
  [v9 floatValue];
  v10 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:10];
  [v10 floatValue];
  v11 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:11];
  [v11 floatValue];
  v12 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:12];
  [v12 floatValue];
  v13 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:13];
  [v13 floatValue];
  v14 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:14];
  [v14 floatValue];
  v15 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:15];
  [v15 floatValue];
  *&v16 = __PAIR64__(v20, v28);
  *(&v16 + 1) = __PAIR64__(v18, v19);
  v29 = v16;

  return v29;
}

void sub_24036A9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34)
{
  *(v44 - 112) = a1;

  _Unwind_Resume(*(v44 - 112));
}

__n128 ADCommonUtils::matrixFromArrayRowFirst(ADCommonUtils *this, NSArray *a2)
{
  v2 = this;
  v27 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:0];
  [v27 floatValue];
  v28 = v3;
  v26 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:4];
  [v26 floatValue];
  v20 = v4;
  v25 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:8];
  [v25 floatValue];
  v19 = v5;
  v24 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:12];
  [v24 floatValue];
  v18 = v6;
  v23 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:1];
  [v23 floatValue];
  v22 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:5];
  [v22 floatValue];
  v21 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:9];
  [v21 floatValue];
  v7 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:13];
  [v7 floatValue];
  v8 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:2];
  [v8 floatValue];
  v9 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:6];
  [v9 floatValue];
  v10 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:10];
  [v10 floatValue];
  v11 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:14];
  [v11 floatValue];
  v12 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:3];
  [v12 floatValue];
  v13 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:7];
  [v13 floatValue];
  v14 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:11];
  [v14 floatValue];
  v15 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:15];
  [v15 floatValue];
  *&v16 = __PAIR64__(v20, v28);
  *(&v16 + 1) = __PAIR64__(v18, v19);
  v29 = v16;

  return v29;
}

void sub_24036ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34)
{
  *(v44 - 112) = a1;

  _Unwind_Resume(*(v44 - 112));
}

__n128 ADCommonUtils::extrinsics4x4FromFile(ADCommonUtils *this, const char *a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v3 = [v2 lowercaseString];
  v4 = [v3 hasSuffix:@".json"];

  if (v4)
  {
    v20 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2 options:1 error:&v20];
    v6 = v20;
    if (v6)
    {
      v7 = v6;
      v8 = [v6 description];
      NSLog(&cfstr_FailedLoadingE.isa, v8);
LABEL_8:

      v18 = 0u;
      goto LABEL_9;
    }

    v19 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:4 error:&v19];
    v12 = v19;
    v7 = v12;
    if (v12)
    {
      v13 = [v12 description];
      NSLog(&cfstr_FailedLoadingE.isa, v13);

      goto LABEL_8;
    }

    for (i = 0; i < [v8 count]; ++i)
    {
      v16 = [v8 objectAtIndexedSubscript:i];
      [v16 floatValue];
      *(v21 + i) = v17;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2];
    v9 = [v5 bytes];
    v10 = v9[1];
    v21[0] = *v9;
    v21[1] = v10;
    v11 = v9[3];
    v21[2] = v9[2];
    v21[3] = v11;
  }

  v18 = v21[0];
LABEL_9:

  return v18;
}

void sub_24036B088(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t ADCommonUtils::extrinsicsToFile(ADCommonUtils *this, const char *a2, simd_float4x4 a3)
{
  a3.columns[0].i32[3] = 0;
  a3.columns[1].i32[3] = 0;
  a3.columns[2].i32[3] = 0;
  a3.columns[3].i32[3] = 1.0;
  return ADCommonUtils::extrinsicsToFile(this, a2, a3);
}

{
  v43 = a3.columns[1];
  v44 = a3.columns[0];
  v47 = a3;
  v41 = a3.columns[3];
  v42 = a3.columns[2];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v4 = [v3 lowercaseString];
  v5 = [v4 hasSuffix:@".json"];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:*v44.i64];
    [v6 setObject:v7 atIndexedSubscript:0];

    LODWORD(v8) = v44.i32[1];
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    [v6 setObject:v9 atIndexedSubscript:1];

    LODWORD(v10) = v44.i32[2];
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    [v6 setObject:v11 atIndexedSubscript:2];

    LODWORD(v12) = v44.i32[3];
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [v6 setObject:v13 atIndexedSubscript:3];

    v14 = [MEMORY[0x277CCABB0] numberWithFloat:*v43.i64];
    [v6 setObject:v14 atIndexedSubscript:4];

    LODWORD(v15) = v43.i32[1];
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    [v6 setObject:v16 atIndexedSubscript:5];

    LODWORD(v17) = v43.i32[2];
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    [v6 setObject:v18 atIndexedSubscript:6];

    LODWORD(v19) = v43.i32[3];
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    [v6 setObject:v20 atIndexedSubscript:7];

    v21 = [MEMORY[0x277CCABB0] numberWithFloat:*v42.i64];
    [v6 setObject:v21 atIndexedSubscript:8];

    LODWORD(v22) = v42.i32[1];
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    [v6 setObject:v23 atIndexedSubscript:9];

    LODWORD(v24) = v42.i32[2];
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    [v6 setObject:v25 atIndexedSubscript:10];

    LODWORD(v26) = v42.i32[3];
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    [v6 setObject:v27 atIndexedSubscript:11];

    v28 = [MEMORY[0x277CCABB0] numberWithFloat:*v41.i64];
    [v6 setObject:v28 atIndexedSubscript:12];

    LODWORD(v29) = v41.i32[1];
    v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
    [v6 setObject:v30 atIndexedSubscript:13];

    LODWORD(v31) = v41.i32[2];
    v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
    [v6 setObject:v32 atIndexedSubscript:14];

    LODWORD(v33) = v41.i32[3];
    v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
    [v6 setObject:v34 atIndexedSubscript:15];

    v46 = 0;
    v35 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:1 error:&v46];
    v36 = v46;
    v37 = v36;
    if (v36)
    {
      v38 = [v36 description];
      NSLog(&cfstr_FailedWritingE.isa, v38);
    }

    v39 = [v35 writeToFile:v3 atomically:1];
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v47 length:64];
    v45 = 0;
    v39 = [v6 writeToFile:v3 options:1 error:&v45];
    v37 = v45;
  }

  return v39;
}

void sub_24036B554(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

double ADCommonUtils::rotateSize(uint64_t a1, double a2, double a3)
{
  if ((a1 | 2) != 3)
  {
    return a2;
  }

  return a3;
}

uint64_t ADCommonUtils::reverseRotation(uint64_t a1)
{
  v1 = 3;
  if (a1 != 1)
  {
    v1 = a1;
  }

  if (a1 == 3)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

double ADCommonUtils::matrixForImageRotation(uint64_t a1)
{
  v1 = 0.0;
  if ((a1 - 1) <= 2)
  {
    v1 = flt_240407138[a1 - 1];
  }

  v2 = __sincosf_stret(v1);
  *&v3 = v2.__cosval;
  *(&v3 + 1) = -v2.__sinval;
  return v3;
}

double ADCommonUtils::computeTransform(ADCommonUtils *this, simd_float4x3 a2, simd_float4x3 a3)
{
  v3 = vtrn2q_s32(a2.columns[0], a2.columns[1]);
  v3.i32[2] = a2.columns[2].i32[1];
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(a2.columns[0], a2.columns[2]), a2.columns[1]), a3.columns[0].f32[0]), v3, *a3.columns[0].f32, 1), vzip1q_s32(vzip2q_s32(a2.columns[0], a2.columns[2]), vdupq_laneq_s32(a2.columns[1], 2)), a3.columns[0], 2).u64[0];
  return result;
}

float ADCommonUtils::calculatePoseDistance(ADCommonUtils *this, simd_float4x4 a2, simd_float4x4 a3)
{
  v3 = vzip1q_s32(a2.columns[0], a2.columns[2]);
  v4 = vzip2q_s32(a2.columns[0], a2.columns[2]);
  a2.columns[0] = vtrn2q_s32(a2.columns[0], a2.columns[1]);
  a2.columns[0].i32[2] = a2.columns[2].i32[1];
  v5 = vzip1q_s32(v3, a2.columns[1]);
  v6 = vzip1q_s32(v4, vdupq_laneq_s32(a2.columns[1], 2));
  v7 = vzip1q_s32(vzip1q_s32(a3.columns[0], a3.columns[2]), a3.columns[1]);
  v8 = vtrn2q_s32(a3.columns[0], a3.columns[1]);
  v8.i32[2] = a3.columns[2].i32[1];
  v9 = vzip1q_s32(vzip2q_s32(a3.columns[0], a3.columns[2]), vdupq_laneq_s32(a3.columns[1], 2));
  v10 = vzip1q_s32(vzip1q_s32(v5, v6), vdupq_laneq_s32(v3, 2));
  a2.columns[1] = vtrn2q_s32(v5, a2.columns[1]);
  a2.columns[1].i32[2] = v6.i32[1];
  a2.columns[2] = vzip1q_s32(vzip2q_s32(v5, v6), vdupq_lane_s32(*a2.columns[2].f32, 1));
  v11 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v10, a3.columns[0].f32[0]), a2.columns[1], a3.columns[1].f32[0]), a2.columns[2], a3.columns[2].f32[0]).f32[0];
  v12 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v10, *a3.columns[0].f32, 1), a2.columns[1], *a3.columns[1].f32, 1), a2.columns[2], *a3.columns[2].f32, 1);
  a3.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v10, a3.columns[0], 2), a2.columns[1], a3.columns[1], 2), a2.columns[2], a3.columns[2], 2);
  v13 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, a2.columns[3].f32[0]), a2.columns[0], *a2.columns[3].f32, 1), v6, a2.columns[3], 2);
  v14 = 3.0 - v11 - v12.f32[1] - a3.columns[0].f32[2];
  *&v14 = (v14 + v14) / 3.0;
  v15 = vmulq_f32(vsubq_f32(v13, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a3.columns[3].f32[0]), v8, *a3.columns[3].f32, 1), v9, a3.columns[3], 2)), vdupq_n_s32(0x3A83126Fu));
  v16 = vmulq_f32(v15, v15);
  return (v16.f32[2] + vaddv_f32(*v16.f32)) + *&v14;
}

void ADCommonUtils::extrinsicsToString(simd_float4x3 a1@<0:Q0, 16:Q1, 32:Q2, 48:Q3>, _BYTE *a2@<X8>)
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"R:[%.4f, %.4f, %.4f], [%.4f, %.4f, %.4f], [%.4f, %.4f, %.4f]. T:[%.4f, %.4f, %.4f]\n", a1.columns[0].f32[0], a1.columns[0].f32[1], a1.columns[0].f32[2], a1.columns[1].f32[0], a1.columns[1].f32[1], a1.columns[1].f32[2], a1.columns[2].f32[0], a1.columns[2].f32[1], a1.columns[2].f32[2], a1.columns[3].f32[0], a1.columns[3].f32[1], a1.columns[3].f32[2]];
  v4 = [v7 UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v4, v5);
  }

  a2[v6] = 0;
}

void ADCommonUtils::extrinsicsToString(simd_float4x4 a1@<0:Q0, 16:Q1, 32:Q2, 48:Q3>, _BYTE *a2@<X8>)
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"R:[%.4f, %.4f, %.4f, %.4f], [%.4f, %.4f, %.4f, %.4f], [%.4f, %.4f, %.4f, %.4f]. T:[%.4f, %.4f, %.4f, %.4f]\n", a1.columns[0].f32[0], a1.columns[0].f32[1], a1.columns[0].f32[2], a1.columns[0].f32[3], a1.columns[1].f32[0], a1.columns[1].f32[1], a1.columns[1].f32[2], a1.columns[1].f32[3], a1.columns[2].f32[0], a1.columns[2].f32[1], a1.columns[2].f32[2], a1.columns[2].f32[3], a1.columns[3].f32[0], a1.columns[3].f32[1], a1.columns[3].f32[2], a1.columns[3].f32[3]];
  v4 = [v7 UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v4, v5);
  }

  a2[v6] = 0;
}

void ADCommonUtils::intrinsicsToString(simd_float3x3 a1@<0:Q0, 16:Q1, 32:Q2>, _BYTE *a2@<X8>)
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"eflx:%.3f efly:%.3f ppx:%.3f ppy:%.3f\n", a1.columns[0].f32[0], a1.columns[1].f32[1], a1.columns[2].f32[0], a1.columns[2].f32[1]];
  v4 = [v7 UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v4, v5);
  }

  a2[v6] = 0;
}

uint64_t ADCommonUtils::hashArray(ADCommonUtils *this, NSArray *a2)
{
  v2 = this;
  v3 = [(ADCommonUtils *)v2 hash];
  for (i = 1; i - 1 < [(ADCommonUtils *)v2 count]; ++i)
  {
    v5 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:?];
    v3 ^= [v5 hash] * i;
  }

  return v3;
}

CGFloat ADCommonUtils::computeMaximalRoi(ADCommonUtils *this, CGSize a2, CGSize a3)
{
  width = a2.height / (a3.height / a3.width);
  if (a2.width < width)
  {
    width = a2.width;
  }

  return (a2.width - width) * 0.5;
}

Float64 ADCommonUtils::machTimeToSeconds(ADCommonUtils *this)
{
  memset(&v3, 0, sizeof(v3));
  CMClockMakeHostTimeFromSystemUnits(&v3, this);
  v2 = v3;
  return CMTimeGetSeconds(&v2);
}

void ADCommonUtils::runtimePlatformANEVersionString(_BYTE *a1@<X8>)
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v7 = [MEMORY[0x277CEE958] aneSubType];
    v3 = [v7 uppercaseString];
    v4 = [v3 UTF8String];
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    a1[23] = v5;
    if (v5)
    {
      memmove(a1, v4, v5);
    }

    a1[v6] = 0;
  }

  else
  {
    a1[23] = 0;
    *a1 = 0;
  }
}

uint64_t ADCommonUtils::runtimePlatformANEVersionNumber(ADCommonUtils *this)
{
  ADCommonUtils::runtimePlatformANEVersionString(v4);
  if (v5 < 0)
  {
    v2 = v4[0];
    if (v4[1])
    {
      v3 = atoi((v4[0] + 1));
    }

    else
    {
      v3 = 0xFFFFFFFFLL;
    }

    operator delete(v2);
    return v3;
  }

  else if (v5)
  {
    return atoi(v4 + 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void ADCommonUtils::espressoEngineAsString(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        a2[23] = 16;
        strcpy(a2, "ANERuntimeDirect");
        return;
      }

      if (a1 == 4)
      {
        a2[23] = 10;
        strcpy(a2, "ANERuntime");
        return;
      }

      goto LABEL_13;
    }

    a2[23] = 3;
    v2 = 5460045;
LABEL_12:
    *a2 = v2;
    return;
  }

  if (!a1)
  {
    a2[23] = 3;
    v2 = 5591107;
    goto LABEL_12;
  }

  if (a1 == 1)
  {
    a2[23] = 5;
    strcpy(a2, "METAL");
    return;
  }

LABEL_13:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v9 stringValue];
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v8 = a2;
  a2[23] = v7;
  if (v7)
  {
    memmove(a2, v5, v7);
    v8 = a2;
  }

  v8[v7] = 0;
}

void sub_24036C1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADBinocularDepthOutput;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24036C808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADBinocularDepthExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24036D5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v16);

  _Unwind_Resume(a1);
}

void sub_24036E3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_24036E958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403703C8(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

__n128 AdjustCalibrationFocalLengthAndOpticalCenterX_Gradient@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, double *a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 112);
  a7[6] = *(a4 + 96);
  a7[7] = v9;
  a7[8] = *(a4 + 128);
  v10 = *(a4 + 16);
  v12 = *(a4 + 48);
  v11 = *(a4 + 64);
  a7[2] = *(a4 + 32);
  a7[3] = v12;
  v13 = *(a4 + 80);
  a7[4] = v11;
  a7[5] = v13;
  *a7 = *a4;
  a7[1] = v10;
  *&v13 = *(a4 + 24);
  v33[0] = *(a4 + 16);
  *&v33[1] = v13;
  *&v12 = *(a4 + 8);
  v34 = *a4;
  v35 = v12;
  v14 = a5[4];
  v15 = a5[5];
  v30.f64[0] = v33[0] - v14;
  v30.f64[1] = *&v13 - v15;
  v16 = a5[2];
  v17 = a5[3];
  v31 = v34 - v16;
  v32 = *&v12 - v17;
  v27.f64[0] = v33[0] + v14;
  v27.f64[1] = *&v13 + v15;
  v28 = v34 + v16;
  v29 = *&v12 + v17;
  v25 = 0u;
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v19[2] = xmmword_240407168;
  v22 = unk_240407184;
  v23 = 0x3FB999999999999ALL;
  v19[0] = xmmword_240407148;
  v19[1] = unk_240407158;
  v20 = 0;
  v21 = 50;
  fmincon_spg(CalcObjValGradForImagePoints, CalcObjValForImagePoints, v24, v33, 4u, &v30, &v27, v19, v26, a6);
  *(a6 + 4) = 1;
  result = v26[0];
  *a7 = v26[1];
  a7[1] = result;
  return result;
}

double CalcObjValForImagePoints(__int128 *a1, uint64_t a2, double *a3)
{
  v3 = *(a2 + 24);
  v4 = v3[7];
  v16 = v3[6];
  v17 = v4;
  v18 = v3[8];
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  v6 = v3[5];
  v14 = v3[4];
  v15 = v6;
  v7 = v3[1];
  v10 = *v3;
  v11 = v7;
  v8 = *a1;
  v10 = a1[1];
  v11 = v8;
  return FundamentalEpipolarError_MeanVal(*a2, *(a2 + 8), *(a2 + 16), &v10, a3);
}

double CalcObjValGradForImagePoints(__int128 *a1, uint64_t a2, double *a3, double *a4)
{
  v4 = *(a2 + 24);
  v5 = v4[7];
  v17 = v4[6];
  v18 = v5;
  v19 = v4[8];
  v6 = v4[3];
  v13 = v4[2];
  v14 = v6;
  v7 = v4[5];
  v15 = v4[4];
  v16 = v7;
  v8 = v4[1];
  v11 = *v4;
  v12 = v8;
  v9 = *a1;
  v11 = a1[1];
  v12 = v9;
  return FundamentalEpipolarError_MeanValPlusGradient(*a2, *(a2 + 8), *(a2 + 16), &v11, a3, a4);
}

double AdjustCalibrationDistorted(uint64_t a1, uint64_t a2, unsigned int a3, double *a4, double *a5, double *a6, double *a7, uint64_t a8)
{
  v64 = *MEMORY[0x277D85DE8];
  v12 = a6[1];
  v13 = a6[2];
  v14 = a6[3];
  v57[0] = *a6;
  v57[1] = v13;
  v57[2] = v12;
  v57[3] = v14;
  v15 = a4[2];
  v58 = a4[1];
  v59 = v15;
  v16 = a5[1];
  v17 = a5[2];
  v60 = a4[3];
  v61 = v16;
  v18 = a5[3];
  v62 = v17;
  v63 = v18;
  v19 = a7[2];
  v20 = a7[3];
  v21 = a7[4];
  v22 = a7[5];
  v48.f64[0] = v57[0] - v19;
  v48.f64[1] = v13 - v21;
  v49 = v12 - v20;
  v50 = v14 - v22;
  v51 = v58 - v19;
  v52 = v15 - v21;
  v53 = v60 - v21;
  v54 = v16 - v20;
  v55 = v17 - v22;
  v56 = v18 - v22;
  v39.f64[0] = v57[0] + v19;
  v39.f64[1] = v13 + v21;
  v40 = v12 + v20;
  v41 = v14 + v22;
  v42 = v58 + v19;
  v43 = v15 + v21;
  v44 = v60 + v21;
  v45 = v16 + v20;
  v46 = v17 + v22;
  v47 = v18 + v22;
  v31[0] = a1;
  v31[1] = a2;
  v31[3] = a6;
  v31[2] = a3;
  v31[4] = a4;
  v31[5] = a5;
  v26[2] = xmmword_240407168;
  v29 = unk_240407184;
  v30 = 0x3FB999999999999ALL;
  v26[0] = xmmword_240407148;
  v26[1] = unk_240407158;
  v27 = 0;
  v28 = 100;
  fmincon_spg(CalcObjValGradForDistortedImagePoints, CalcObjValForDistortedImagePoints, v31, v57, 0xAu, &v48, &v39, v26, &v32, a8);
  v23 = v34;
  *a6 = v32;
  *(a6 + 1) = vextq_s8(v33, v33, 8uLL);
  *(a6 + 3) = v23;
  *(a4 + 1) = v35;
  v24 = v38;
  *(a4 + 3) = v36;
  result = *&v37;
  *(a5 + 1) = v37;
  *(a8 + 4) = 1;
  *(a5 + 3) = v24;
  return result;
}

double CalcObjValForDistortedImagePoints(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *v41 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[4];
  v43 = v3[3];
  v44 = v8;
  *&v41[16] = v6;
  v42 = v7;
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[8];
  v47 = v3[7];
  v48 = v11;
  v45 = v9;
  v46 = v10;
  *&v9 = *a1;
  *&v41[8] = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  *&v10 = *(a1 + 24);
  *v41 = v9;
  *&v41[24] = v10;
  v12 = v4[7];
  v37 = v4[6];
  v38 = v12;
  v13 = v4[9];
  v39 = v4[8];
  v40 = v13;
  v14 = v4[3];
  v33 = v4[2];
  v34 = v14;
  v15 = v4[5];
  v35 = v4[4];
  v36 = v15;
  v16 = v4[1];
  *v32 = *v4;
  *&v32[16] = v16;
  *&v32[8] = *(a1 + 32);
  *&v32[24] = *(a1 + 48);
  v17 = v5[7];
  v28 = v5[6];
  v29 = v17;
  v18 = v5[9];
  v30 = v5[8];
  v31 = v18;
  v19 = v5[3];
  v24 = v5[2];
  v25 = v19;
  v20 = v5[5];
  v26 = v5[4];
  v27 = v20;
  v21 = v5[1];
  *v23 = *v5;
  *&v23[16] = v21;
  *&v23[8] = *(a1 + 56);
  return FundamentalDistortionError_MeanVal(*a2, *(a2 + 8), *(a2 + 16), v32, v23, v41, a3, *(a1 + 72), v21);
}

double *CalcObjValGradForDistortedImagePoints(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *v42 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[4];
  v44 = v4[3];
  v45 = v9;
  *&v42[16] = v7;
  v43 = v8;
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[8];
  v48 = v4[7];
  v49 = v12;
  v46 = v10;
  v47 = v11;
  *&v10 = *a1;
  *&v42[8] = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  *&v11 = *(a1 + 24);
  *v42 = v10;
  *&v42[24] = v11;
  v13 = v5[7];
  v38 = v5[6];
  v39 = v13;
  v14 = v5[9];
  v40 = v5[8];
  v41 = v14;
  v15 = v5[3];
  v34 = v5[2];
  v35 = v15;
  v16 = v5[5];
  v36 = v5[4];
  v37 = v16;
  v17 = v5[1];
  *v33 = *v5;
  *&v33[16] = v17;
  *&v33[8] = *(a1 + 32);
  *&v33[24] = *(a1 + 48);
  v18 = v6[7];
  v29 = v6[6];
  v30 = v18;
  v19 = v6[9];
  v31 = v6[8];
  v32 = v19;
  v20 = v6[3];
  v25 = v6[2];
  v26 = v20;
  v21 = v6[5];
  v27 = v6[4];
  v28 = v21;
  v22 = v6[1];
  *v24 = *v6;
  *&v24[16] = v22;
  *&v24[8] = *(a1 + 56);
  *&v24[24] = *(a1 + 72);
  return FundamentalDistortionError_MeanValPlusGradient(*a2, *(a2 + 8), *(a2 + 16), v33, v24, v42, a3, a4);
}

void dumpRawImageFile(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __p = *a1;
    if (!a2)
    {
LABEL_12:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v6 = fopen(p_p, "wb");
  if (v6)
  {
    fwrite(a2, 4uLL, a3, v6);
    fclose(v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

  *buf = 0;
  _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error dumping files. did you forget to set entitlements?", buf, 2u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __p = *a1;
    if (!a2)
    {
LABEL_12:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v6 = fopen(p_p, "wb");
  if (v6)
  {
    fwrite(a2, 1uLL, a3, v6);
    fclose(v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

  *buf = 0;
  _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error dumping files. did you forget to set entitlements?", buf, 2u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __p = *a1;
    if (!a2)
    {
LABEL_12:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v6 = fopen(p_p, "wb");
  if (v6)
  {
    fwrite(a2, 2uLL, a3, v6);
    fclose(v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

  *buf = 0;
  _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error dumping files. did you forget to set entitlements?", buf, 2u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2403714D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240371604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240371730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void dumpTexture(const char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = +[ADMetalUtils bytesPerPixelForTextureFormat:](ADMetalUtils, "bytesPerPixelForTextureFormat:", [v3 pixelFormat]);
    v6 = [v4 width];
    v7 = [v4 height];
    v8 = v6 * v5;
    v9 = v6 * v5 * v7;
    v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
    memset(v12, 0, 24);
    v12[3] = v6;
    v12[4] = v7;
    v12[5] = 1;
    [v4 getBytes:v10 bytesPerRow:v8 fromRegion:v12 mipmapLevel:0];
    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v11 = fopen(a1, "wb");
    fwrite(v10, 1uLL, v9, v11);
    fclose(v11);
    free(v10);
  }
}

__n128 AdjustYOpticalCenterForValidDistanceRange@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 40);
  v7 = a5[6];
  if (v7 < 0)
  {
    v41 = *(a4 + 40);
  }

  else
  {
    v8 = a5[10];
    v9 = a5[11];
    v10 = -v7;
    v11 = a5[12];
    if (a3 < 1)
    {
      v123 = v11 * 0.0 + v8 * 0.0 + v9 * 0.0;
      v124 = (2 * v7) | 1;
      v125 = 1.79769313e308;
      v126 = *(a4 + 40);
      v127 = 1.79769313e308;
      do
      {
        v41 = v6 + v10;
        if (v123 < v125)
        {
          v127 = -(v6 - v41);
          if (v6 - v41 >= 0.0)
          {
            v127 = v6 - v41;
          }

          v125 = v11 * 0.0 + v8 * 0.0 + v9 * 0.0;
        }

        else if (v123 == v125)
        {
          v128 = v6 - v41;
          if (v6 - v41 < 0.0)
          {
            v128 = -(v6 - v41);
          }

          if (v128 >= v127)
          {
            v41 = v126;
          }

          else
          {
            v127 = v128;
          }
        }

        else
        {
          v41 = v126;
        }

        ++v10;
        v126 = v41;
        --v124;
      }

      while (v124);
    }

    else
    {
      v13 = *a4;
      v12 = *(a4 + 8);
      v14 = *(a4 + 16);
      v15 = *(a4 + 32);
      v16 = *(a4 + 80);
      v17 = *(a4 + 112);
      v18 = *(a4 + 136);
      v19 = a5[7];
      v20 = a5[8];
      v21 = a3 & 7;
      if (!v21)
      {
        v21 = 8;
      }

      v22 = a3 - v21;
      v23 = -(*&v12 * *(a4 + 104));
      v24 = 1.79769313e308;
      v25 = vnegq_f64(v17);
      v26 = vmuld_lane_f64(v15, v17, 1) + v17.f64[0] * v14 + v13 * *(a4 + 128);
      v27 = v13 * v18 / 1.79769313e308 + v26;
      v28 = vdupq_lane_s64(v12, 0);
      v29 = -(v13 * *&v12) * *(a4 + 96) - *&v12 * (vmuld_lane_f64(v15, v16, 1) + v16.f64[0] * v14);
      v30 = v13 * v18 / v20 + v26;
      v31 = v13 * v18 / v19 + v26;
      v32 = v25.f64[1];
      v149 = vdupq_lane_s64(*&v27, 0);
      v150 = vdupq_lane_s64(*&v25.f64[0], 0);
      v33 = vdupq_lane_s64(*&v30, 0);
      v34 = (a2 + 72);
      v35 = (a1 + 64);
      v36 = a2 + 8;
      v37 = a1 + 8;
      v38 = *(a4 + 40);
      v39 = 1.79769313e308;
      v140 = a5[10];
      v138 = a5[12];
      v139 = a5[11];
      v137 = a5[8];
      v135 = v23;
      v136 = a5[7];
      v134 = v26;
      v133 = v27;
      v143 = v28;
      v132 = v29;
      v130 = v31;
      v131 = v30;
      v129 = v25.f64[1];
      v151 = vdupq_lane_s64(*&v31, 0);
      v156 = v25;
      do
      {
        v144 = v38;
        v145 = v39;
        v41 = v6 + v10;
        v42 = v13 * (v23 + v41 * v18);
        v43 = vmlaq_f64(vmulq_n_f64(v17, -v41), v16, v28);
        v44 = v29 + v41 * v26;
        v45 = v42 / 1.79769313e308 + v44;
        v46 = v42 / v20 + v44;
        v47 = v42 / v19 + v44;
        v147 = v46;
        v148 = v45;
        v146 = v47;
        if (a3 > 8)
        {
          v141 = v24;
          v142 = v6 + v10;
          v154 = vdupq_lane_s64(*&v45, 0);
          v155 = vdupq_lane_s64(*&v43.f64[0], 0);
          v56 = 0uLL;
          v57 = v35;
          v58 = v34;
          v152 = vdupq_lane_s64(*&v47, 0);
          v153 = vdupq_lane_s64(*&v46, 0);
          v59 = v22;
          v60 = 0uLL;
          v61 = 0uLL;
          v62 = 0uLL;
          v63 = 0uLL;
          v64 = 0uLL;
          v157 = v43;
          do
          {
            v158 = v64;
            v65 = v57 - 8;
            v159 = vld2q_f64(v65);
            v66 = v57 - 4;
            v161 = vld2q_f64(v66);
            v67 = v57;
            v162 = vld2q_f64(v67);
            v67 += 4;
            v160 = vld2q_f64(v67);
            v68 = v58 - 8;
            v69 = vld2q_f64(v68);
            v70 = v58 - 4;
            v71 = v58;
            v72 = vld2q_f64(v70);
            v73 = vld2q_f64(v71);
            v71 += 4;
            v74 = vmlaq_f64(vmulq_laneq_f64(v159.val[1], v157, 1), v159.val[0], v155);
            v75 = vmlaq_f64(vmulq_laneq_f64(v161.val[1], v157, 1), v161.val[0], v155);
            v76 = vmlaq_f64(vmulq_laneq_f64(v160.val[1], v157, 1), v160.val[0], v155);
            v77 = vmlaq_f64(vmulq_laneq_f64(v162.val[1], v157, 1), v162.val[0], v155);
            v78 = vmlaq_f64(vmulq_laneq_f64(v159.val[1], v156, 1), v159.val[0], v150);
            v79 = vmlaq_f64(vmulq_laneq_f64(v161.val[1], v156, 1), v161.val[0], v150);
            v80 = vmlaq_f64(vmulq_laneq_f64(v160.val[1], v156, 1), v160.val[0], v150);
            v159.val[1] = vmlaq_f64(vmulq_laneq_f64(v162.val[1], v156, 1), v162.val[0], v150);
            v160.val[1] = vdivq_f64(vaddq_f64(v154, v74), vaddq_f64(v149, v78));
            v81 = vdivq_f64(vaddq_f64(v154, v77), vaddq_f64(v149, v159.val[1]));
            v161.val[0] = vdivq_f64(vaddq_f64(v154, v75), vaddq_f64(v149, v79));
            v162.val[0] = vdivq_f64(vaddq_f64(v153, v74), vaddq_f64(v33, v78));
            v161.val[1] = vdivq_f64(vaddq_f64(v153, v75), vaddq_f64(v33, v79));
            v162.val[1] = vdivq_f64(vaddq_f64(v153, v77), vaddq_f64(v33, v159.val[1]));
            v82 = vdivq_f64(vaddq_f64(v152, v74), vaddq_f64(v151, v78));
            v83 = vdivq_f64(vaddq_f64(v152, v75), vaddq_f64(v151, v79));
            v84 = vdivq_f64(vaddq_f64(v154, v76), vaddq_f64(v149, v80));
            v85 = vdivq_f64(vaddq_f64(v153, v76), vaddq_f64(v33, v80));
            v159.val[0] = vcgtq_f64(v161.val[0], v72);
            v86 = vcgtq_f64(v83, v72);
            v87 = vcgtq_f64(v161.val[1], v72);
            v88 = vcgtq_f64(v161.val[1], v161.val[0]);
            v161.val[0] = vcgtq_f64(v160.val[1], v69);
            v89 = vcgtq_f64(v82, v69);
            v90 = vcgtq_f64(v81, v73);
            v91 = vdivq_f64(vaddq_f64(v152, v76), vaddq_f64(v151, v80));
            v161.val[1] = vld2q_f64(v71);
            v92 = vuzp1q_s32(vcgtq_f64(v162.val[0], v160.val[1]), v88);
            v93 = vuzp1q_s32(vcgtq_f64(v162.val[1], v81), vcgtq_f64(v85, v84));
            v94 = veorq_s8(v92, vuzp1q_s32(vcgtq_f64(v162.val[0], v69), v87));
            v95 = veorq_s8(vuzp1q_s32(v90, vcgtq_f64(v84, v161.val[1])), v93);
            v96 = veorq_s8(v93, vuzp1q_s32(vcgtq_f64(v162.val[1], v73), vcgtq_f64(v85, v161.val[1])));
            v97 = veorq_s8(v93, vuzp1q_s32(vcgtq_f64(vdivq_f64(vaddq_f64(v152, v77), vaddq_f64(v151, v159.val[1])), v73), vcgtq_f64(v91, v161.val[1])));
            v63 = vsubq_s32(v63, vmvnq_s8(veorq_s8(vuzp1q_s32(v161.val[0], v159.val[0]), v92)));
            v61 = vsubq_s32(v61, v94);
            v98 = vsubq_s32(v158, vmvnq_s8(v95));
            v64 = v98;
            v62 = vsubq_s32(v62, v96);
            v56 = vsubq_s32(v56, veorq_s8(v92, vuzp1q_s32(v89, v86)));
            v60 = vsubq_s32(v60, v97);
            v58 += 16;
            v57 += 16;
            v59 -= 8;
          }

          while (v59);
          v53 = vaddvq_s32(vaddq_s32(v60, v56));
          v54 = vaddvq_s32(vaddq_s32(v62, v61));
          v55 = vaddvq_s32(vaddq_s32(v98, v63));
          v52 = v22;
          v51 = v140;
          v48 = *(a4 + 40);
          v49 = v138;
          v50 = v139;
          v24 = v141;
          v41 = v142;
          v13 = *a4;
          v17 = *(a4 + 112);
          v16 = *(a4 + 80);
          v20 = v137;
          v18 = *(a4 + 136);
          v23 = v135;
          v19 = v136;
          v25.f64[0] = v156.f64[0];
          v43 = v157;
          v26 = v134;
          v27 = v133;
          v29 = v132;
          v31 = v130;
          v30 = v131;
          v32 = v129;
        }

        else
        {
          v48 = v6;
          v49 = v11;
          v50 = v9;
          v51 = v8;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
        }

        v99 = v43.f64[1];
        v100 = a3 - v52;
        v101 = 16 * v52;
        v102 = (v36 + 16 * v52);
        v103 = (v37 + v101);
        do
        {
          v104 = *v102;
          v102 += 2;
          v105 = v104;
          v106 = *(v103 - 1);
          v107 = *v103 * v99 + v43.f64[0] * v106;
          v108 = *v103 * v32 + v25.f64[0] * v106;
          v109 = v43;
          v110 = (v148 + v107) / (v27 + v108);
          v111 = (v147 + v107) / (v30 + v108);
          v112 = (v146 + v107) / (v31 + v108);
          v113 = v110 < v111;
          v114 = v104 >= v110;
          v115 = v104 < v111;
          v43 = v109;
          v116 = v115;
          v55 += v114 ^ v113;
          v54 += v113 ^ v116;
          v53 += v113 ^ (v105 < v112);
          v103 += 2;
          --v100;
        }

        while (v100);
        v11 = v49;
        v8 = v51;
        v9 = v50;
        v117 = v49 * (v53 - v54) + v55 * v51 + v54 * v50;
        if (v117 < v24)
        {
          v6 = v48;
          if (v48 - v41 >= 0.0)
          {
            v39 = v48 - v41;
          }

          else
          {
            v39 = -(v48 - v41);
          }

          v24 = v117;
        }

        else
        {
          v6 = v48;
          if (v117 == v24)
          {
            v118 = v48 - v41;
            if (v48 - v41 < 0.0)
            {
              v118 = -(v48 - v41);
            }

            v39 = v145;
            if (v118 >= v145)
            {
              v41 = v144;
            }

            else
            {
              v39 = v118;
            }
          }

          else
          {
            v41 = v144;
            v39 = v145;
          }
        }

        v28 = v143;
        v38 = v41;
      }

      while (v10++ != v7);
    }
  }

  v119 = *(a4 + 112);
  *(a6 + 96) = *(a4 + 96);
  *(a6 + 112) = v119;
  *(a6 + 128) = *(a4 + 128);
  v120 = *(a4 + 48);
  *(a6 + 32) = *(a4 + 32);
  *(a6 + 48) = v120;
  v121 = *(a4 + 80);
  *(a6 + 64) = *(a4 + 64);
  *(a6 + 80) = v121;
  result = *(a4 + 16);
  *a6 = *a4;
  *(a6 + 16) = result;
  *(a6 + 40) = v41;
  return result;
}

void sub_2403724BC(_Unwind_Exception *a1)
{
  ADFrameBoundaryGuard::~ADFrameBoundaryGuard((v6 - 168));

  MEMORY[0x245CBFC90](v3, 0x1000C80FA0F61DDLL);
  _Unwind_Resume(a1);
}

void ADFrameBoundaryGuard::~ADFrameBoundaryGuard(void **this)
{
  kdebug_trace();
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL GMC_FaceCoverageTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, double *a6)
{
  bzero(*(a4 + 8), (*(a4 + 20) * *(a4 + 16)));
  *a5 = 0;
  v12 = *(a3 + 16);
  v13 = *(a3 + 20);
  if ((v13 * v12) < 4)
  {
    goto LABEL_38;
  }

  v14 = *(a1 + 20);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = *(a3 + 8);
    v18 = *v17 + v17[2];
    v19 = v17[1] + v17[3];
    v20 = 0.0;
    v21 = 1.0e10;
    v22 = 1.0e10;
    v23 = 0.0;
    do
    {
      v24 = *(a1 + 16);
      if (!v24)
      {
LABEL_39:
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      v25 = *(a3 + 20) * *(a3 + 16);
      if (!v25)
      {
        goto LABEL_38;
      }

      v26 = *(a1 + 8);
      v27 = *(v26 + 8 * v16);
      v28 = *(a3 + 8);
      if (v27 > *v28 && v27 < v18)
      {
        if (v24 == 1)
        {
          goto LABEL_39;
        }

        if (v25 == 1)
        {
          goto LABEL_38;
        }

        v30 = *(v26 + 8 * v14 + 8 * v16);
        if (v30 > v28[1] && v30 < v19)
        {
          if (v16 >= (*(a4 + 20) * *(a4 + 16)))
          {
            __assert_rtn("operator()", "Matrix.hpp", 132, "index < m_rows * m_cols");
          }

          *(*(a4 + 8) + v16) = 1;
          v32 = (*(a1 + 8) + 8 * v16);
          if (*v32 < v21)
          {
            v21 = *v32;
          }

          if (*v32 > v23)
          {
            v23 = *v32;
          }

          v33 = v32[v14];
          if (v33 < v22)
          {
            v22 = v32[v14];
          }

          if (v33 > v20)
          {
            v20 = v32[v14];
          }

          *a5 = ++v15;
          v14 = *(a1 + 20);
        }
      }

      ++v16;
    }

    while (v16 < v14);
    v12 = *(a3 + 16);
    v13 = *(a3 + 20);
    v34 = (v20 - v22) * (v23 - v21);
  }

  else
  {
    v15 = 0;
    v34 = 1.0e20;
  }

  if ((v13 * v12) < 4)
  {
LABEL_38:
    __assert_rtn("operator()", "Matrix.hpp", 138, "index < m_rows * m_cols");
  }

  v35 = v34 / (*(*(a3 + 8) + 16) * *(*(a3 + 8) + 24));
  *a6 = v35;
  return v35 > *(a2 + 776) && v15 > *(a2 + 784);
}

void sub_240373748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_24037381C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_240373CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADStereoExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240374428(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v5);

  _Unwind_Resume(a1);
}

void sub_24037471C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_240374B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240374C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADFlowFrameInput;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240374DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADFlowFrameOutput;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240375110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADFlowFrameOutputPool;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

float64_t CalcDirectZPlaneHomographyAtoBCoords(float64x2_t *a1, uint64_t a2, double a3)
{
  v3 = a1->f64[1];
  v4 = a1[1].f64[0];
  v5 = a1[1].f64[1];
  v6 = a1[2].f64[0];
  v7 = a1[2].f64[1];
  v8 = a1[8].f64[1];
  v9 = -(a1->f64[0] * v3);
  v10 = a1->f64[0] * (v5 * v8 - v3 * a1[4].f64[1]) / a3;
  v11 = a1->f64[0] * (v7 * v8 - v3 * a1[6].f64[1]) / a3;
  v12 = a1->f64[0] * v8 / a3;
  v13 = a1[7];
  v14 = vmuld_lane_f64(v6, v13, 1) + v13.f64[0] * v4 + a1->f64[0] * a1[8].f64[0];
  v15 = a1[3];
  v16 = vmlaq_n_f64(vmulq_n_f64(v13, -v5), v15, v3);
  v17 = v10 + v9 * a1[4].f64[0] - v3 * (vmuld_lane_f64(v6, v15, 1) + v15.f64[0] * v4) + v5 * v14;
  v18 = a1[5];
  v19 = v9 * a1[6].f64[0] - v3 * (vmuld_lane_f64(v6, v18, 1) + v18.f64[0] * v4);
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = vmlaq_n_f64(vmulq_n_f64(v13, -v7), v18, v3);
  *(a2 + 40) = v11 + v19 + v7 * v14;
  result = v12 + v14;
  *(a2 + 48) = vnegq_f64(v13);
  *(a2 + 64) = result;
  return result;
}

double *FundamentalDistortionError_MeanValPlusGradient(uint64_t a1, uint64_t a2, unsigned int a3, double *a4, double *a5, __int128 *a6, double *a7, double *a8)
{
  v524 = 0.0;
  v523 = 0u;
  v522 = 0u;
  v521 = 0u;
  v520 = 0u;
  v519 = 0u;
  v518 = 0u;
  v517 = 0u;
  v516 = 0u;
  v515 = 0u;
  v514 = 0u;
  v513 = 0u;
  v512 = 0u;
  v511 = 0u;
  v510 = 0u;
  v509 = 0u;
  v508 = 0u;
  v16 = a6[7];
  v507[6] = a6[6];
  v507[7] = v16;
  v507[8] = a6[8];
  v17 = a6[3];
  v507[2] = a6[2];
  v507[3] = v17;
  v18 = a6[4];
  v507[5] = a6[5];
  v507[4] = v18;
  v19 = *a6;
  v507[1] = a6[1];
  v507[0] = v19;
  result = FundamentalEpipolarError_precomputeFundamental(v507, 1, &v508);
  if (a1 && a2 && a3 >= 1 && a6 && a7 && a8)
  {
    v22 = *a5;
    v23 = *(a4 + 17);
    v24 = *(a4 + 18);
    v25 = *(a4 + 19);
    v26 = a4[1] * *a4;
    v416 = *(a4 + 12);
    v407 = a4[4] + v26 * *&v416;
    v491 = a4[13];
    v27 = a4[5] + v26 * v491;
    v415 = *(a4 + 14);
    v28 = a4[6] + v26 * *&v415;
    v414 = *(a4 + 15);
    v29 = a4[7] + v26 * *&v414;
    v413 = *(a4 + 16);
    v30 = a4[8] + v26 * *&v413;
    v31 = a4[9] + v26 * *&v23;
    v32 = a4[10] + v26 * *&v24;
    v33 = a4[11] + v26 * *&v25;
    v34 = a5[1] * *a5;
    v412 = *(a5 + 12);
    v403 = a5[4] + v34 * *&v412;
    v489 = a5[13];
    v411 = *(a5 + 14);
    v35 = a5[6] + v34 * *&v411;
    v410 = *(a5 + 15);
    v36 = a5[7] + v34 * *&v410;
    v409 = *(a5 + 16);
    v37 = a5[8] + v34 * *&v409;
    v408 = *(a5 + 17);
    v38 = a5[9] + v34 * *&v408;
    v402 = *(a5 + 18);
    v39 = a5[10] + v34 * *&v402;
    v401 = *(a5 + 19);
    v40 = a5[11] + v34 * *&v401;
    v406 = v28;
    v474 = v28 * 4.0;
    v490 = v35 * 4.0;
    v405 = v29;
    v400 = v29 * 6.0;
    v399 = v36 * 6.0;
    v404 = v30;
    v398 = v30 * 8.0;
    v397 = v37 * 8.0;
    v396 = v31 * 10.0;
    v395 = v32 * 12.0;
    v394 = v39 * 12.0;
    v393 = v33 * 14.0;
    v392 = v40 * 14.0;
    v41 = *(a5 + 2);
    v42 = *(a5 + 3);
    v479 = *a4;
    v477 = -(v479 * v479);
    v478 = -(v22 * v22);
    v488 = v27;
    v475 = a5[5] + v34 * v489;
    v482 = *(a4 + 2);
    v481 = -*&v482;
    v43 = *(a4 + 3);
    v480 = -*&v41;
    *&v21 = v518;
    v391 = v31;
    v390 = v32;
    v389 = v33;
    v388 = v35;
    v387 = v36;
    v386 = v37;
    v384 = v39;
    v385 = v38;
    v382 = v38 * 10.0;
    v383 = v40;
    v381 = v27 + v27;
    v476 = *&v41;
    v492 = *&v43;
    v473 = -*&v43;
    v472 = -*&v42;
    if (a3 > 3)
    {
      v379 = vdupq_lane_s64(v482, 0);
      v378 = vdupq_lane_s64(v43, 0);
      v377 = vdupq_lane_s64(v41, 0);
      v471 = vdupq_lane_s64(*&v407, 0);
      v470 = vdupq_lane_s64(*&v28, 0);
      v469 = vdupq_lane_s64(*&v405, 0);
      v468 = vdupq_lane_s64(*&v30, 0);
      v467 = vdupq_lane_s64(*&v31, 0);
      v375 = vdupq_lane_s64(*&v32, 0);
      v376 = vdupq_lane_s64(v42, 0);
      v466 = vdupq_lane_s64(*&v33, 0);
      v374 = vdupq_lane_s64(*&v403, 0);
      v373 = vdupq_lane_s64(*&v35, 0);
      v465 = vdupq_lane_s64(*&v36, 0);
      v372 = vdupq_lane_s64(*&v37, 0);
      v370 = vdupq_lane_s64(*&v39, 0);
      v371 = vdupq_lane_s64(*&v38, 0);
      v368 = vdupq_lane_s64(*(&v508 + 1), 0);
      v369 = vdupq_lane_s64(*&v40, 0);
      v366 = vdupq_lane_s64(v509, 0);
      v367 = vdupq_lane_s64(v508, 0);
      v364 = vdupq_lane_s64(*(&v510 + 1), 0);
      v365 = vdupq_lane_s64(*(&v509 + 1), 0);
      v362 = vdupq_lane_s64(v511, 0);
      v363 = vdupq_lane_s64(*(&v511 + 1), 0);
      v464 = vdupq_lane_s64(v416, 0);
      v463 = vdupq_lane_s64(v415, 0);
      v462 = vdupq_lane_s64(v414, 0);
      v461 = vdupq_lane_s64(v413, 0);
      v44 = a3 & 0x7FFFFFFC;
      v360 = vdupq_lane_s64(v23, 0);
      v361 = vdupq_lane_s64(v512, 0);
      v460 = vdupq_lane_s64(v24, 0);
      v57 = (a2 + 32);
      v58 = (a1 + 32);
      v459 = vdupq_lane_s64(v25, 0);
      v458 = vdupq_lane_s64(COERCE__INT64(v27 + v27), 0);
      v358 = vdupq_lane_s64(*&v398, 0);
      v359 = vdupq_lane_s64(*&v400, 0);
      v356 = vdupq_lane_s64(*&v395, 0);
      v357 = vdupq_lane_s64(*&v396, 0);
      v457 = vdupq_lane_s64(v412, 0);
      v456 = vdupq_lane_s64(v411, 0);
      v455 = vdupq_lane_s64(v410, 0);
      v454 = vdupq_lane_s64(v409, 0);
      v354 = vdupq_lane_s64(v408, 0);
      v355 = vdupq_lane_s64(*&v393, 0);
      v352 = vdupq_lane_s64(v401, 0);
      v353 = vdupq_lane_s64(v402, 0);
      v453 = vdupq_lane_s64(COERCE__INT64(v475 + v475), 0);
      v452 = vdupq_lane_s64(*&v399, 0);
      v451 = vdupq_lane_s64(*&v397, 0);
      v450 = vdupq_lane_s64(COERCE__INT64(v38 * 10.0), 0);
      v449 = vdupq_lane_s64(*&v394, 0);
      v59 = v44;
      v448 = vdupq_lane_s64(*&v392, 0);
      v53 = 0.0;
      v350 = vdupq_lane_s64(COERCE__INT64(-*&v43), 0);
      v351 = vdupq_lane_s64(*&v481, 0);
      v348 = vdupq_lane_s64(COERCE__INT64(-*&v42), 0);
      v349 = vdupq_lane_s64(*&v480, 0);
      v52 = 0.0;
      v45 = 0.0;
      v346 = vdupq_lane_s64(*(&v516 + 1), 0);
      v347 = vdupq_lane_s64(*(&v515 + 1), 0);
      v46 = 0.0;
      v331 = v21;
      v344 = vdupq_lane_s64(v518, 0);
      v345 = vdupq_lane_s64(v517, 0);
      v506 = 0.0;
      v342 = vdupq_lane_s64(*(&v519 + 1), 0);
      v343 = vdupq_lane_s64(*(&v518 + 1), 0);
      v48 = 0.0;
      v340 = vdupq_lane_s64(v521, 0);
      v341 = vdupq_lane_s64(v520, 0);
      v47 = 0.0;
      v338 = vdupq_lane_s64(*(&v522 + 1), 0);
      v339 = vdupq_lane_s64(*(&v521 + 1), 0);
      v336 = vdupq_lane_s64(*&v524, 0);
      v337 = vdupq_lane_s64(v523, 0);
      v50 = 0.0;
      v49 = 0.0;
      v334 = vdupq_lane_s64(v515, 0);
      v335 = vdupq_lane_s64(v514, 0);
      v55 = 0.0;
      v51 = 0.0;
      v332 = vdupq_lane_s64(*(&v513 + 1), 0);
      v333 = vdupq_lane_s64(*(&v512 + 1), 0);
      v380 = a5[3];
      do
      {
        v501 = v48;
        v493 = v53;
        v495 = v45;
        v496 = v52;
        v500 = v55;
        v498 = v46;
        v446 = v50;
        v504 = v47;
        v447 = v49;
        v502 = v51;
        v60 = v58 - 4;
        v527 = vld2q_f64(v60);
        v526 = vld2q_f64(v58);
        v484 = vsubq_f64(v526.val[0], v379);
        v61 = vsubq_f64(v527.val[0], v379);
        v62 = vsubq_f64(v527.val[1], v378);
        v486 = vsubq_f64(v526.val[1], v378);
        v63 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v62, v62), v61, v61)), v479);
        v64 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v486, v486), v484, v484)), v479);
        v65 = vmulq_f64(v64, v64);
        v66 = vmulq_f64(v63, v63);
        v67 = vmulq_f64(v63, v66);
        v68 = vmulq_f64(v63, v67);
        v69 = vmulq_f64(v63, v68);
        v70 = vmulq_f64(v63, v69);
        v71 = vmulq_f64(v63, v70);
        v72 = vmulq_f64(v63, v71);
        v73 = vmulq_f64(v63, v72);
        v74 = vmlaq_f64(vaddq_f64(v471, vmulq_n_f64(v66, v488)), v68, v470);
        v75 = vmulq_f64(v63, v73);
        v76 = vmlaq_f64(vaddq_f64(v464, vmulq_n_f64(v66, v491)), v68, v463);
        v77 = vmulq_f64(v63, v75);
        v78 = vmlaq_f64(v74, v70, v469);
        v79 = vmlaq_f64(v76, v70, v462);
        v80 = vmulq_f64(v63, v77);
        v81 = vmulq_f64(v63, v80);
        v82 = vmlaq_f64(vmlaq_f64(v78, v72, v468), v75, v467);
        v83 = vmlaq_f64(vmlaq_f64(v79, v72, v461), v75, v360);
        v84 = vmulq_f64(v63, v81);
        v85 = vmlaq_f64(vmlaq_f64(v82, v80, v375), v84, v466);
        v86 = vdupq_n_s64(0x4059000000000000uLL);
        v87 = vmlaq_f64(vmlaq_f64(v83, v80, v460), v84, v459);
        v88 = vmulq_f64(v64, v65);
        v89 = vdivq_f64(vmulq_n_f64(v62, v477), v63);
        __asm { FMOV            V28.2D, #1.0 }

        v95 = vdivq_f64(_Q28, vaddq_f64(vdivq_f64(v85, v86), _Q28));
        v96 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v67, v474), v63, v458), v69, v359), v71, v358);
        v97 = vsubq_f64(_Q28, v95);
        v98 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v96, v73, v357), v77, v356), v81, v355);
        v99 = vaddq_f64(v85, v86);
        v444 = vmlaq_f64(vmulq_n_f64(v97, *&v482), v527.val[0], v95);
        v100 = vdupq_n_s64(0xC059000000000000);
        v101 = vdivq_f64(v100, vmulq_f64(v99, v99));
        v102 = vmulq_f64(vmulq_n_f64(v87, v479), v101);
        v103 = vmlaq_f64(vmulq_n_f64(v97, v492), v527.val[1], v95);
        v104 = vmulq_f64(vmulq_f64(vdivq_f64(vmulq_n_f64(v61, v477), v63), v98), v101);
        v105 = vmulq_f64(vmulq_f64(v89, v98), v101);
        v441 = vmlaq_f64(vmulq_n_f64(v102, v481), v527.val[0], v102);
        v437 = vmlaq_f64(vmulq_n_f64(v102, v473), v527.val[1], v102);
        v439 = vmlaq_f64(vmlaq_f64(v97, v104, v351), v527.val[0], v104);
        v433 = vmlaq_f64(vmulq_n_f64(v104, v473), v527.val[1], v104);
        v435 = vmlaq_f64(vmulq_n_f64(v105, v481), v527.val[0], v105);
        v106 = vmlaq_f64(vmlaq_f64(v97, v105, v350), v527.val[1], v105);
        v107 = vmulq_f64(v64, v88);
        v108 = vmulq_f64(v64, v107);
        v109 = vmlaq_f64(vaddq_f64(v471, vmulq_n_f64(v65, v488)), v107, v470);
        v110 = vmlaq_f64(vaddq_f64(v464, vmulq_n_f64(v65, v491)), v107, v463);
        v111 = vmulq_f64(v64, v108);
        v112 = vmlaq_f64(v109, v111, v469);
        v113 = vmlaq_f64(v110, v111, v462);
        v114 = vmulq_f64(v64, v111);
        v115 = vmulq_f64(v64, v114);
        v116 = vmlaq_f64(v112, v115, v468);
        v117 = vmlaq_f64(v113, v115, v461);
        v118 = vmulq_f64(v64, v115);
        v527.val[1] = vmulq_f64(v64, v118);
        v119 = vmlaq_f64(v116, v527.val[1], v467);
        v120 = vmlaq_f64(v117, v527.val[1], v360);
        v527.val[1] = vmulq_f64(v64, v527.val[1]);
        v121 = vmulq_f64(v64, v527.val[1]);
        v122 = vmlaq_f64(v119, v121, v375);
        v123 = vmlaq_f64(v120, v121, v460);
        v124 = vmulq_f64(v64, v121);
        v125 = vmulq_f64(v64, v124);
        v126 = vmlaq_f64(v122, v125, v466);
        v127 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v88, v474), v64, v458), v108, v359), v114, v358), v118, v357);
        v128 = vdivq_f64(_Q28, vaddq_f64(vdivq_f64(v126, v86), _Q28));
        v527.val[0] = vsubq_f64(_Q28, v128);
        v129 = vmlaq_f64(vmlaq_f64(v127, v527.val[1], v356), v124, v355);
        v130 = vmulq_f64(vdivq_f64(vmulq_n_f64(v484, v477), v64), v129);
        v131 = vmulq_f64(vdivq_f64(vmulq_n_f64(v486, v477), v64), v129);
        v487 = vmlaq_f64(vmulq_n_f64(v527.val[0], *&v482), v526.val[0], v128);
        v132 = vaddq_f64(v126, v86);
        v485 = vmlaq_f64(vmulq_n_f64(v527.val[0], v492), v526.val[1], v128);
        v133 = vdivq_f64(v100, vmulq_f64(v132, v132));
        v134 = vmulq_f64(vmulq_n_f64(vmlaq_f64(v123, v125, v459), v479), v133);
        v135 = vmulq_f64(v130, v133);
        v136 = vmulq_f64(v131, v133);
        v430 = vmlaq_f64(vmulq_n_f64(v134, v481), v526.val[0], v134);
        v428 = vmlaq_f64(vmulq_n_f64(v134, v473), v526.val[1], v134);
        v427 = vmlaq_f64(vmlaq_f64(v527.val[0], v135, v351), v526.val[0], v135);
        v425 = vmlaq_f64(vmulq_n_f64(v135, v473), v526.val[1], v135);
        v426 = vmlaq_f64(vmulq_n_f64(v136, v481), v526.val[0], v136);
        v527.val[0] = vmlaq_f64(vmlaq_f64(v527.val[0], v136, v350), v526.val[1], v136);
        v137 = v57 - 4;
        v525 = vld2q_f64(v137);
        v138 = vsubq_f64(v525.val[1], v376);
        v139 = vsubq_f64(v525.val[0], v377);
        v526.val[0] = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v138, v138), v139, v139)), v22);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[0]);
        v140 = vaddq_f64(v374, vmulq_n_f64(v526.val[1], v475));
        v141 = vmulq_f64(v526.val[0], v526.val[1]);
        v142 = vaddq_f64(v457, vmulq_n_f64(v526.val[1], v489));
        v526.val[1] = vmulq_f64(v526.val[0], v141);
        v143 = vmlaq_f64(v140, v526.val[1], v373);
        v144 = vmlaq_f64(v142, v526.val[1], v456);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[1]);
        v145 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v141, v490), v526.val[0], v453), v526.val[1], v452);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[1]);
        v146 = vmlaq_f64(v143, v526.val[1], v465);
        v147 = vmlaq_f64(v144, v526.val[1], v455);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[1]);
        v148 = vmlaq_f64(v145, v526.val[1], v451);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[1]);
        v149 = vmlaq_f64(v146, v526.val[1], v372);
        v150 = vmlaq_f64(v147, v526.val[1], v454);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[1]);
        v151 = vmlaq_f64(v148, v526.val[1], v450);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[1]);
        v152 = vmlaq_f64(v149, v526.val[1], v371);
        v153 = vmlaq_f64(v150, v526.val[1], v354);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[1]);
        v154 = vmulq_f64(v526.val[0], v526.val[1]);
        v155 = vmlaq_f64(v152, v154, v370);
        v156 = vmlaq_f64(v153, v154, v353);
        v157 = vmulq_f64(v526.val[0], v154);
        v158 = vdivq_f64(vmulq_n_f64(v139, v478), v526.val[0]);
        v159 = vdivq_f64(vmulq_n_f64(v138, v478), v526.val[0]);
        v526.val[0] = vmulq_f64(v526.val[0], v157);
        v160 = vmlaq_f64(v155, v526.val[0], v369);
        v161 = vmlaq_f64(v156, v526.val[0], v352);
        v162 = vmlaq_f64(vmlaq_f64(v151, v526.val[1], v449), v157, v448);
        v163 = vdivq_f64(_Q28, vaddq_f64(vdivq_f64(v160, v86), _Q28));
        v526.val[0] = vsubq_f64(_Q28, v163);
        v483 = vmlaq_f64(vmulq_n_f64(v526.val[0], v476), v525.val[0], v163);
        v164 = vmlaq_f64(vmulq_n_f64(v526.val[0], v380), v525.val[1], v163);
        v165 = vaddq_f64(v160, v86);
        v166 = vdivq_f64(v100, vmulq_f64(v165, v165));
        v167 = vmulq_f64(vmulq_n_f64(v161, v22), v166);
        v168 = vmulq_f64(vmulq_f64(v158, v162), v166);
        v169 = vmulq_f64(vmulq_f64(v159, v162), v166);
        v424 = vmlaq_f64(vmulq_n_f64(v167, v480), v525.val[0], v167);
        v423 = vmlaq_f64(vmulq_n_f64(v167, v472), v525.val[1], v167);
        v422 = vmlaq_f64(vmlaq_f64(v526.val[0], v168, v349), v525.val[0], v168);
        v421 = vmlaq_f64(vmulq_n_f64(v168, v472), v525.val[1], v168);
        v420 = vmlaq_f64(vmulq_n_f64(v169, v480), v525.val[0], v169);
        v419 = vmlaq_f64(vmlaq_f64(v526.val[0], v169, v348), v525.val[1], v169);
        *(&v525 + 16) = vld2q_f64(v57);
        v526.val[1] = vsubq_f64(v525.val[1], v377);
        v171 = vsubq_f64(v170, v376);
        v172 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v171, v171), v526.val[1], v526.val[1])), v22);
        v173 = vmulq_f64(v172, v172);
        v174 = vmulq_f64(v172, v173);
        v525.val[0] = vmulq_f64(v172, v174);
        v175 = vmlaq_f64(vaddq_f64(v374, vmulq_n_f64(v173, v475)), v525.val[0], v373);
        v176 = vmlaq_f64(vaddq_f64(v457, vmulq_n_f64(v173, v489)), v525.val[0], v456);
        v525.val[0] = vmulq_f64(v172, v525.val[0]);
        v177 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v174, v490), v172, v453), v525.val[0], v452);
        v525.val[0] = vmulq_f64(v172, v525.val[0]);
        v178 = vmlaq_f64(v175, v525.val[0], v465);
        v179 = vmlaq_f64(v176, v525.val[0], v455);
        v526.val[0] = vmulq_f64(v172, v525.val[0]);
        v525.val[0] = vmulq_f64(v172, v526.val[0]);
        v180 = vmlaq_f64(v178, v525.val[0], v372);
        v181 = vmlaq_f64(v179, v525.val[0], v454);
        v182 = vmulq_f64(v172, v525.val[0]);
        v525.val[0] = vmulq_f64(v172, v182);
        v183 = vmlaq_f64(v180, v525.val[0], v371);
        v184 = vmlaq_f64(v181, v525.val[0], v354);
        v185 = vmulq_f64(v172, v525.val[0]);
        v525.val[0] = vmulq_f64(v172, v185);
        v186 = vmlaq_f64(v183, v525.val[0], v370);
        v187 = vmlaq_f64(v184, v525.val[0], v353);
        v525.val[0] = vmulq_f64(v172, v525.val[0]);
        v526.val[1] = vdivq_f64(vmulq_n_f64(v526.val[1], v478), v172);
        v188 = vdivq_f64(vmulq_n_f64(v171, v478), v172);
        v189 = vmulq_f64(v172, v525.val[0]);
        v190 = vmlaq_f64(v186, v189, v369);
        v191 = vmlaq_f64(v187, v189, v352);
        v192 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(v177, v526.val[0], v451), v182, v450), v185, v449), v525.val[0], v448);
        v525.val[0] = vdivq_f64(_Q28, vaddq_f64(vdivq_f64(v190, v86), _Q28));
        v193 = vsubq_f64(_Q28, v525.val[0]);
        v194 = vmlaq_f64(vmulq_n_f64(v193, v476), v525.val[1], v525.val[0]);
        v195 = vmlaq_f64(vmulq_n_f64(v193, v380), v170, v525.val[0]);
        v525.val[0] = vmulq_f64(v526.val[1], v192);
        v526.val[0] = vmulq_f64(v188, v192);
        v526.val[1] = vaddq_f64(v190, v86);
        v526.val[1] = vdivq_f64(v100, vmulq_f64(v526.val[1], v526.val[1]));
        v196 = vmulq_f64(vmulq_n_f64(v191, v22), v526.val[1]);
        v197 = vmulq_f64(v525.val[0], v526.val[1]);
        v526.val[1] = vmulq_f64(v526.val[0], v526.val[1]);
        v527.val[1] = vmlaq_f64(vmulq_n_f64(v196, v480), v525.val[1], v196);
        v526.val[0] = vmlaq_f64(vmulq_n_f64(v196, v472), v170, v196);
        v198 = vmlaq_f64(vmlaq_f64(v193, v197, v349), v525.val[1], v197);
        v525.val[0] = vmlaq_f64(vmulq_n_f64(v197, v472), v170, v197);
        v199 = vmlaq_f64(vmulq_n_f64(v526.val[1], v480), v525.val[1], v526.val[1]);
        v200 = vmlaq_f64(vmlaq_f64(v193, v526.val[1], v348), v170, v526.val[1]);
        v525.val[1] = vaddq_f64(v362, vmlaq_f64(vmulq_n_f64(v164, *(&v509 + 1)), v367, v483));
        v201 = v164;
        v202 = vaddq_f64(v363, vmlaq_f64(vmulq_n_f64(v164, *&v510), v368, v483));
        v418 = vmlaq_f64(vmulq_f64(v437, v202), v441, v525.val[1]);
        v417 = vmlaq_f64(vmulq_f64(v433, v202), v439, v525.val[1]);
        v432 = vmlaq_f64(vmulq_f64(v106, v202), v435, v525.val[1]);
        v203 = vaddq_f64(v362, vmlaq_f64(vmulq_n_f64(v195, *(&v509 + 1)), v367, v194));
        v526.val[1] = vaddq_f64(v363, vmlaq_f64(vmulq_n_f64(v195, *&v510), v368, v194));
        v442 = vmlaq_f64(vmulq_f64(v428, v526.val[1]), v430, v203);
        v440 = vmlaq_f64(vmulq_f64(v425, v526.val[1]), v427, v203);
        v438 = vmlaq_f64(vmulq_f64(v527.val[0], v526.val[1]), v426, v203);
        v204 = vaddq_f64(v366, vmlaq_f64(vmulq_n_f64(v485, *(&v508 + 1)), v487, v367));
        v526.val[1] = vaddq_f64(v364, vmlaq_f64(vmulq_n_f64(v485, *&v510), v487, v365));
        v436 = vmlaq_f64(vmulq_f64(v526.val[0], v526.val[1]), v204, v527.val[1]);
        v434 = vmlaq_f64(vmulq_f64(v525.val[0], v526.val[1]), v204, v198);
        v431 = vmlaq_f64(vmulq_f64(v200, v526.val[1]), v204, v199);
        v205 = vmlaq_f64(vmulq_f64(v195, v526.val[1]), v204, v194);
        v206 = vmlaq_f64(vmulq_n_f64(v103, *(&v511 + 1)), v444, v362);
        v207 = vmlaq_f64(vmulq_n_f64(v103, *&v516), v444, v347);
        v208 = vmlaq_f64(vmulq_n_f64(v103, *(&v517 + 1)), v444, v345);
        v209 = vmlaq_f64(vmulq_n_f64(v103, *&v519), v444, v343);
        v527.val[0] = vmlaq_f64(vmulq_n_f64(v103, *(&v520 + 1)), v444, v341);
        v210 = vmlaq_f64(vmulq_n_f64(v103, *&v522), v444, v339);
        v211 = vmlaq_f64(vmulq_n_f64(v103, *(&v523 + 1)), v444, v337);
        v212 = vmlaq_f64(vmulq_n_f64(v103, *(&v514 + 1)), v444, v335);
        v213 = vaddq_f64(v366, vmlaq_f64(vmulq_n_f64(v103, *(&v508 + 1)), v444, v367));
        v214 = vaddq_f64(v364, vmlaq_f64(vmulq_n_f64(v103, *&v510), v444, v365));
        v429 = vmlaq_f64(vmulq_f64(v423, v214), v213, v424);
        v443 = vmlaq_f64(vmulq_f64(v421, v214), v213, v422);
        v445 = vmlaq_f64(vmulq_f64(v419, v214), v213, v420);
        v527.val[1] = vaddq_f64(vaddq_f64(v361, vmlaq_f64(vmulq_n_f64(v485, *(&v511 + 1)), v487, v362)), v205);
        v215 = vaddq_f64(vaddq_f64(v342, vmlaq_f64(vmulq_n_f64(v485, *&v519), v487, v343)), vmlaq_f64(vmulq_f64(v195, vaddq_f64(v344, vmlaq_f64(vmulq_n_f64(v485, *(&v517 + 1)), v487, v345))), vaddq_f64(v346, vmlaq_f64(vmulq_n_f64(v485, *&v516), v487, v347)), v194));
        v216 = vaddq_f64(v340, v527.val[0]);
        v56 = *&v513;
        v526.val[0] = vaddq_f64(vaddq_f64(v361, v206), vmlaq_f64(vmulq_f64(v201, v214), v213, v483));
        v217 = vaddq_f64(vaddq_f64(v342, v209), vmlaq_f64(vmulq_f64(v201, vaddq_f64(v344, v208)), vaddq_f64(v346, v207), v483));
        v218 = vmlaq_f64(vmulq_n_f64(v195, *&v513), v333, v194);
        v219 = vaddq_f64(vmlaq_f64(vmulq_f64(v195, vaddq_f64(v338, vmlaq_f64(vmulq_n_f64(v485, *&v522), v487, v339))), vaddq_f64(v340, vmlaq_f64(vmulq_n_f64(v485, *(&v520 + 1)), v487, v341)), v194), vaddq_f64(v336, vmlaq_f64(vmulq_n_f64(v485, *(&v523 + 1)), v487, v337)));
        v525.val[1] = vdupq_n_s64(0x3ECC4BE7CE3F6732uLL);
        v220 = vsqrtq_f64(vmlaq_f64(v525.val[1], v526.val[0], v526.val[0]));
        v221 = vdivq_f64(v526.val[0], v220);
        v222 = vmulq_f64(v217, v221);
        v223 = vmulq_f64(vaddq_f64(v332, vmlaq_f64(vmulq_n_f64(v201, *&v513), v333, v483)), v221);
        v224 = vmulq_f64(v221, vaddq_f64(vmlaq_f64(vmulq_f64(v201, vaddq_f64(v338, v210)), v216, v483), vaddq_f64(v336, v211)));
        v225 = vmulq_f64(v221, vaddq_f64(v334, v212));
        v226 = vmulq_f64(v418, v221);
        v526.val[1] = vmulq_f64(v417, v221);
        v526.val[0] = vmulq_f64(v432, v221);
        v227 = vmulq_f64(v429, v221);
        v228 = vmulq_f64(v443, v221);
        v525.val[0] = vmulq_f64(v445, v221);
        v229 = vsqrtq_f64(vmlaq_f64(v525.val[1], v527.val[1], v527.val[1]));
        v230 = vdivq_f64(v527.val[1], v229);
        v231 = vmulq_f64(v215, v230);
        v232 = vmulq_f64(vaddq_f64(v332, v218), v230);
        v233 = vmulq_f64(v230, v219);
        v234 = vmulq_f64(v230, vaddq_f64(v334, vmlaq_f64(vmulq_n_f64(v485, *(&v514 + 1)), v487, v335)));
        v235 = vmulq_f64(v442, v230);
        v236 = vmulq_f64(v440, v230);
        v527.val[1] = vmulq_f64(v438, v230);
        v237 = vmulq_f64(v436, v230);
        v525.val[1] = vmulq_f64(v434, v230);
        v238 = vmulq_f64(v431, v230);
        v53 = v493 + v220.f64[0] + v220.f64[1] + v229.f64[0] + v229.f64[1];
        v52 = v496 + v222.f64[0] + v222.f64[1] + v231.f64[0] + v231.f64[1];
        v45 = v495 + v223.f64[0] + v223.f64[1] + v232.f64[0] + v232.f64[1];
        v46 = v498 + v224.f64[0] + v224.f64[1] + v233.f64[0] + v233.f64[1];
        v506 = v506 + v225.f64[0] + v225.f64[1] + v234.f64[0] + v234.f64[1];
        v48 = v501 + v226.f64[0] + v226.f64[1] + v235.f64[0] + v235.f64[1];
        v47 = v504 + v526.val[1].f64[0] + v526.val[1].f64[1] + v236.f64[0] + v236.f64[1];
        v50 = v446 + v526.val[0].f64[0] + v526.val[0].f64[1] + v527.val[1].f64[0] + v527.val[1].f64[1];
        v49 = v447 + v227.f64[0] + v227.f64[1] + v237.f64[0] + v237.f64[1];
        v55 = v500 + v228.f64[0] + v228.f64[1] + v525.val[1].f64[0] + v525.val[1].f64[1];
        v51 = v502 + v525.val[0].f64[0] + v525.val[0].f64[1] + v238.f64[0] + v238.f64[1];
        v57 += 8;
        v58 += 8;
        v59 -= 4;
      }

      while (v59);
      v54 = a5[3];
      v21 = v331;
      v43 = *(a4 + 3);
      if (v44 == a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v44 = 0;
      v45 = 0.0;
      v46 = 0.0;
      v47 = 0.0;
      v506 = 0.0;
      v48 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      v51 = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      v54 = a5[3];
      v55 = 0.0;
      v56 = *&v513;
    }

    v239 = a3 - v44;
    v240 = (16 * v44) | 8;
    v241 = (a2 + v240);
    v242 = (a1 + v240);
    do
    {
      v497 = v52;
      v494 = v53;
      v499 = v46;
      v503 = v51;
      v505 = v47;
      v243 = *(v242 - 1);
      v244 = *v242 - *&v43;
      v245 = *(v241 - 1);
      v246 = *v241 - v54;
      v247 = v479 * sqrt(v244 * v244 + (v243 - *&v482) * (v243 - *&v482));
      v248 = v22 * sqrt(v246 * v246 + (v245 - v476) * (v245 - v476));
      v249 = v247 * (v247 * v247);
      v250 = v247 * (v247 * v249);
      v251 = v247 * (v247 * v250);
      v252 = v247 * (v247 * v251);
      v253 = v21;
      v254 = v247 * (v247 * v252);
      v255 = v407 + v488 * (v247 * v247) + v406 * (v247 * v249) + v405 * (v247 * v250) + v404 * (v247 * v251) + v391 * (v247 * v252);
      v256 = *&v416 + v491 * (v247 * v247) + *&v415 * (v247 * v249) + *&v414 * (v247 * v250) + *&v413 * (v247 * v251) + a4[17] * (v247 * v252);
      v257 = v247 * (v247 * v254);
      v258 = v474 * v249 + v381 * v247 + v400 * v250;
      v259 = v248 * (v248 * v248);
      v260 = v255 + v390 * (v247 * v254);
      v261 = v256 + a4[18] * (v247 * v254);
      v262 = v248 * (v248 * v259);
      v263 = v477 * (v243 - *&v482) / v247;
      v264 = v477 * v244 / v247;
      v265 = v247 * v257;
      v266 = v258 + v398 * v251 + v396 * v252 + v395 * v254;
      v267 = v248 * (v248 * v262);
      v268 = v260 + v389 * v265;
      v269 = v261 + a4[19] * v265;
      v270 = v266 + v393 * v257;
      v271 = v263 * v270;
      v272 = v264 * v270;
      v273 = v248 * (v248 * v267);
      v274 = v248 * (v248 * v273);
      v275 = v248 * (v248 * v274);
      v276 = v403 + v475 * (v248 * v248) + v388 * (v248 * v259) + v387 * (v248 * v262) + v386 * (v248 * v267) + v385 * (v248 * v273) + v384 * (v248 * v274) + v383 * (v248 * v275);
      v277 = *&v412 + v489 * (v248 * v248) + *&v411 * (v248 * v259) + *&v410 * (v248 * v262) + *&v409 * (v248 * v267) + *&v408 * (v248 * v273) + *&v402 * (v248 * v274) + *&v401 * (v248 * v275);
      v278 = 1.0 / (v268 / 100.0 + 1.0);
      v279 = v478 * (v245 - v476) / v248;
      v280 = v478 * v246 / v248;
      v281 = v490 * v259 + (v475 + v475) * v248;
      v282 = 1.0 - v278;
      v283 = v281 + v399 * v262 + v397 * v267;
      v284 = *&v482 * (1.0 - v278) + v278 * v243;
      v285 = v492 * (1.0 - v278) + v278 * *v242;
      v286 = 1.0 / (v276 / 100.0 + 1.0);
      v287 = v283 + v382 * v273 + v394 * v274;
      v288 = 1.0 - v286;
      v289 = v287 + v392 * v275;
      v290 = v279 * v289;
      v291 = -100.0 / ((v268 + 100.0) * (v268 + 100.0));
      v292 = v479 * v269 * v291;
      v293 = v476 * (1.0 - v286) + v286 * v245;
      v294 = v271 * v291;
      v295 = v272 * v291;
      v296 = -100.0 / ((v276 + 100.0) * (v276 + 100.0));
      v297 = v54 * (1.0 - v286) + v286 * *v241;
      v298 = v22 * v277 * v296;
      v299 = v290 * v296;
      v300 = v280 * v289 * v296;
      v301 = v292 * v481 + v292 * v243;
      v302 = v282 + v481 * v294 + v294 * v243;
      v303 = v295 * v481 + v295 * v243;
      v304 = v288 + v480 * v299 + v299 * v245;
      v305 = v300 * v480 + v300 * v245;
      v306 = v288 + v472 * v300 + v300 * *v241;
      v307 = *&v511 + *(&v509 + 1) * v297 + v293 * *&v508;
      v308 = *(&v511 + 1) + *&v510 * v297 + v293 * *(&v508 + 1);
      v309 = (v292 * v473 + v292 * *v242) * v308 + v307 * v301;
      v310 = (v294 * v473 + v294 * *v242) * v308 + v307 * v302;
      v311 = (v282 + v473 * v295 + v295 * *v242) * v308;
      v312 = *&v509 + *(&v508 + 1) * v285 + *&v508 * v284;
      v21 = v253;
      v313 = *(&v510 + 1) + *&v510 * v285 + *(&v509 + 1) * v284;
      v314 = v311 + v307 * v303;
      v315 = *&v512 + *(&v511 + 1) * v285 + *&v511 * v284 + v297 * v313 + v293 * v312;
      v316 = *&v516 * v285 + *(&v515 + 1) * v284;
      v317 = (v298 * v472 + v298 * *v241) * v313 + (v298 * v480 + v298 * v245) * v312;
      v318 = (v299 * v472 + v299 * *v241) * v313 + v304 * v312;
      v319 = *(&v517 + 1) * v285 + *&v517 * v284;
      v320 = *&v519 * v285 + *(&v518 + 1) * v284;
      v321 = v306 * v313 + v305 * v312;
      v322 = *(&v520 + 1) * v285 + *&v520 * v284;
      v323 = v285 * *&v522 + *(&v521 + 1) * v284;
      v324 = v285 * *(&v523 + 1) + *&v523 * v284;
      v325 = v285 * *(&v514 + 1) + *&v514 * v284;
      v326 = *(&v519 + 1) + v320 + v297 * (*&v253 + v319) + v293 * (*(&v516 + 1) + v316);
      v327 = v297 * (*(&v522 + 1) + v323) + v293 * (*&v521 + v322);
      v328 = v56 * v297 + v293 * *(&v512 + 1);
      v43 = *(a4 + 3);
      v329 = sqrt(v315 * v315 + 0.00000337320636);
      v53 = v494 + v329;
      v330 = v315 / v329;
      v52 = v497 + v326 * v330;
      v45 = v45 + (*(&v513 + 1) + v328) * v330;
      v46 = v499 + v330 * (v327 + v524 + v324);
      v506 = v506 + v330 * (*&v515 + v325);
      v48 = v48 + v309 * v330;
      v47 = v505 + v310 * v330;
      v50 = v50 + v314 * v330;
      v49 = v49 + v317 * v330;
      v55 = v55 + v318 * v330;
      v51 = v503 + v321 * v330;
      v241 += 2;
      v242 += 2;
      --v239;
    }

    while (v239);
LABEL_14:
    *a7 = v53 / a3;
    *a8 = v52 / a3;
    a8[1] = v45 / a3;
    a8[2] = v46 / a3;
    a8[3] = v506 / a3;
    a8[4] = v48 / a3;
    a8[5] = v47 / a3;
    a8[6] = v50 / a3;
    a8[7] = v49 / a3;
    a8[8] = v55 / a3;
    a8[9] = v51 / a3;
  }

  return result;
}

double FundamentalDistortionError_MeanVal(const double *a1, const double *a2, unsigned int a3, double *a4, double *a5, uint64_t a6, double *a7, double result, __n128 a9)
{
  if (a1 && a2 && a3 >= 1 && a7)
  {
    a9.n128_u64[0] = *(a6 + 8);
    v10 = *(a6 + 48);
    v11 = *(a6 + 56);
    v12 = *(a6 + 64);
    v13 = *(a6 + 72);
    v14 = *(a6 + 80);
    v15 = *(a6 + 88);
    v16 = *(a6 + 96);
    v17 = *(a6 + 104);
    v18 = *(a6 + 112);
    v19 = *(a6 + 120);
    v20 = *(a6 + 128);
    v21 = *(a6 + 136);
    v22 = -1.0 / *a6;
    v23 = *(a6 + 16) / *a6;
    v24 = *(a6 + 32) / *a6;
    v25 = -1.0 / a9.n128_f64[0];
    v26 = *(a6 + 24) / a9.n128_f64[0];
    v27 = v17 * v18 - v21 * v14;
    v28 = v17 * v19 - v21 * v15;
    v29 = v17 * v20 - v21 * v16;
    v30 = v21 * v10 - v13 * v18;
    v31 = v21 * v11 - v13 * v19;
    v32 = v21 * v12 - v13 * v20;
    v33 = v13 * v14 - v17 * v10;
    v34 = v13 * v15 - v17 * v11;
    v35 = v13 * v16 - v17 * v12;
    v36 = *(a6 + 40) / a9.n128_f64[0];
    v37 = v22 * v27;
    v38 = v22 * v30;
    v39 = v29 + v24 * v28 + v23 * v27;
    v40 = v32 + v24 * v31 + v23 * v30;
    v41 = v35 + v24 * v34 + v23 * v33;
    *&v9 = -1.0 / a9.n128_f64[0] * v37;
    v195 = -1.0 / a9.n128_f64[0] * (v22 * v28);
    v198 = -1.0 / a9.n128_f64[0] * v39;
    a9.n128_f64[0] = -1.0 / a9.n128_f64[0] * v38;
    v170 = a9;
    v42 = v25 * (v22 * v31);
    a9.n128_f64[0] = v25 * v40;
    v169 = a9;
    v197 = v22 * v33 + v36 * v38 + v37 * v26;
    v43 = v22 * v34 + v36 * (v22 * v31) + v22 * v28 * v26;
    v196 = v41 + v36 * v40 + v39 * v26;
    v44 = a4[1] * *a4;
    v45 = a4[4] + v44 * a4[12];
    v46 = a4[5] + v44 * a4[13];
    v47 = a4[6] + v44 * a4[14];
    v48 = a4[7] + v44 * a4[15];
    v49 = a4[8] + v44 * a4[16];
    v50 = a4[9] + v44 * a4[17];
    v51 = a4[10] + v44 * a4[18];
    v52 = a4[11] + v44 * a4[19];
    v53 = a5[1] * *a5;
    v54 = a5[4] + v53 * a5[12];
    v55 = a5[5] + v53 * a5[13];
    v56 = a5[6] + v53 * a5[14];
    v57 = a5[7] + v53 * a5[15];
    v58 = a5[8] + v53 * a5[16];
    v59 = a5[9] + v53 * a5[17];
    v60 = a5[10] + v53 * a5[18];
    v61 = *(a4 + 2);
    v62 = *(a4 + 3);
    v63 = a5[11] + v53 * a5[19];
    v64 = *(a5 + 2);
    v65 = *(a5 + 3);
    v193 = v47;
    v194 = v45;
    v191 = v57;
    v192 = v48;
    v189 = v43;
    v190 = v58;
    v187 = v46;
    v188 = v42;
    if (a3 > 1)
    {
      v185 = vdupq_lane_s64(v61, 0);
      v66 = a3 & 0x7FFFFFFE;
      v184 = vdupq_lane_s64(v62, 0);
      v183 = vdupq_lane_s64(v64, 0);
      v182 = vdupq_lane_s64(v65, 0);
      v180 = vdupq_lane_s64(*&v47, 0);
      v181 = vdupq_lane_s64(*&v45, 0);
      v167 = v50;
      v178 = vdupq_lane_s64(*&v49, 0);
      v179 = vdupq_lane_s64(*&v48, 0);
      v165 = v52;
      v166 = v51;
      v176 = vdupq_lane_s64(*&v51, 0);
      v177 = vdupq_lane_s64(*&v50, 0);
      v163 = v56;
      v164 = v54;
      v174 = vdupq_lane_s64(*&v54, 0);
      v175 = vdupq_lane_s64(*&v52, 0);
      v172 = vdupq_lane_s64(*&v57, 0);
      v173 = vdupq_lane_s64(*&v56, 0);
      v171 = vdupq_lane_s64(*&v58, 0);
      v161 = v60;
      v162 = v59;
      v186 = v55;
      v80 = v46;
      v81 = vdupq_lane_s64(*&v59, 0);
      v82 = vdupq_lane_s64(*&v60, 0);
      v160 = v63;
      v83 = vdupq_lane_s64(*&v63, 0);
      v168 = v9;
      v84 = vdupq_lane_s64(v9, 0);
      v85 = vdupq_lane_s64(*&v198, 0);
      v86 = vdupq_lane_s64(v170.n128_i64[0], 0);
      v68 = 0.0;
      v87 = vdupq_lane_s64(v169.n128_i64[0], 0);
      v88 = vdupq_lane_s64(*&v197, 0);
      v89 = a1;
      v90 = a2;
      v91 = v66;
      v92 = vdupq_lane_s64(*&v196, 0);
      do
      {
        v200 = vld2q_f64(v89);
        v89 += 4;
        v93 = vsubq_f64(v200.val[1], v184);
        v94 = vsubq_f64(v200.val[0], v185);
        v95 = vmulq_f64(v93, v93);
        v199 = vld2q_f64(v90);
        v90 += 4;
        v96 = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(v95, v94, v94)), *a4);
        v97 = vsubq_f64(v199.val[0], v183);
        v98 = vsubq_f64(v199.val[1], v182);
        v99 = vmlaq_f64(vmulq_f64(v98, v98), v97, v97);
        v100 = vmulq_f64(v96, v96);
        v101 = vmulq_f64(v96, vmulq_f64(v96, v100));
        v102 = vmulq_f64(v96, vmulq_f64(v96, v101));
        v103 = vmulq_f64(v96, vmulq_f64(v96, v102));
        v104 = vmulq_f64(v96, vmulq_f64(v96, v103));
        v105 = vmlaq_f64(vaddq_f64(v181, vmulq_n_f64(v100, v80)), v101, v180);
        v106 = vmulq_f64(v96, vmulq_f64(v96, v104));
        v107 = vmulq_n_f64(vsqrtq_f64(v99), *a5);
        v108 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(v105, v102, v179), v103, v178), v104, v177), v106, v176), vmulq_f64(v96, vmulq_f64(v96, v106)), v175);
        v109 = vdupq_n_s64(0x4059000000000000uLL);
        __asm { FMOV            V25.2D, #1.0 }

        v115 = vdivq_f64(_Q25, vaddq_f64(vdivq_f64(v108, v109), _Q25));
        v116 = vsubq_f64(_Q25, v115);
        v117 = vmlaq_f64(vmulq_n_f64(v116, *&v61), v200.val[0], v115);
        v118 = vmlaq_f64(vmulq_n_f64(v116, *&v62), v200.val[1], v115);
        v200.val[0] = vmulq_f64(v107, v107);
        v200.val[1] = vmulq_f64(v107, vmulq_f64(v107, v200.val[0]));
        v119 = vmulq_f64(v107, vmulq_f64(v107, v200.val[1]));
        v200.val[0] = vmlaq_f64(vaddq_f64(v174, vmulq_n_f64(v200.val[0], v186)), v200.val[1], v173);
        v200.val[1] = vmulq_f64(v107, vmulq_f64(v107, v119));
        v200.val[0] = vmlaq_f64(v200.val[0], v119, v172);
        v120 = vmulq_f64(v107, vmulq_f64(v107, v200.val[1]));
        v200.val[0] = vmlaq_f64(v200.val[0], v200.val[1], v171);
        v200.val[1] = vmulq_f64(v107, vmulq_f64(v107, v120));
        v121 = vdivq_f64(_Q25, vaddq_f64(vdivq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(v200.val[0], v120, v81), v200.val[1], v82), vmulq_f64(v107, vmulq_f64(v107, v200.val[1])), v83), v109), _Q25));
        v200.val[0] = vsubq_f64(_Q25, v121);
        v122 = vaddq_f64(vaddq_f64(v92, vmlaq_f64(vmulq_n_f64(v118, v43), v117, v88)), vmlaq_f64(vmulq_f64(vmlaq_f64(vmulq_n_f64(v200.val[0], *&v65), v199.val[1], v121), vaddq_f64(v87, vmlaq_f64(vmulq_n_f64(v118, v42), v117, v86))), vaddq_f64(v85, vmlaq_f64(vmulq_n_f64(v118, v195), v117, v84)), vmlaq_f64(vmulq_n_f64(v200.val[0], *&v64), v199.val[0], v121)));
        v123 = vsqrtq_f64(vmlaq_f64(vdupq_n_s64(0x3ECC4BE7CE3F6732uLL), v122, v122));
        v68 = v68 + v123.f64[0] + v123.f64[1];
        v91 -= 2;
      }

      while (v91);
      v71 = v49;
      v67 = v168;
      v70 = v169;
      v69 = v170;
      v55 = v186;
      v72 = *a4;
      v74 = v166;
      v73 = v167;
      v76 = v164;
      v75 = v165;
      v59 = v162;
      v77 = v163;
      v79 = v160;
      v78 = v161;
      if (v66 == a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v66 = 0;
      v67 = v9;
      v68 = 0.0;
      v70 = v169;
      v69 = v170;
      v71 = v49;
      v72 = *a4;
      v73 = v50;
      v74 = v51;
      v75 = v52;
      v76 = v54;
      v77 = v56;
      v78 = v60;
      v79 = v63;
    }

    v124 = a3 - v66;
    v125 = (16 * v66) | 8;
    v126 = (a2 + v125);
    v127 = (a1 + v125);
    do
    {
      v128 = *(v127 - 1);
      v129 = *(v126 - 1);
      v130 = v72 * sqrt((*v127 - *&v62) * (*v127 - *&v62) + (v128 - *&v61) * (v128 - *&v61));
      v131 = v130 * (v130 * (v130 * v130));
      v132 = v70;
      v133 = v67;
      v134 = v130 * (v130 * v131);
      v135 = v69;
      v136 = v130 * (v130 * v134);
      v137 = v194 + v187 * (v130 * v130) + v193 * v131;
      v138 = v130 * (v130 * v136);
      v139 = v137 + v192 * v134;
      v140 = v130 * (v130 * v138);
      v141 = v139 + v71 * v136;
      v142 = v130 * (v130 * v140);
      v69 = v135;
      v143 = *a5 * sqrt((*v126 - *&v65) * (*v126 - *&v65) + (v129 - *&v64) * (v129 - *&v64));
      v144 = v141 + v73 * v138 + v74 * v140;
      v145 = v143 * (v143 * (v143 * v143));
      v146 = v144 + v75 * v142;
      v147 = v143 * (v143 * v145);
      v148 = v76 + v55 * (v143 * v143) + v77 * v145;
      v149 = v143 * (v143 * v147);
      v150 = v148 + v191 * v147;
      v151 = v143 * (v143 * v149);
      v152 = v150 + v190 * v149;
      v153 = v143 * (v143 * v151);
      v154 = v143 * (v143 * v153);
      v155 = v152 + v59 * v151 + v78 * v153;
      v67 = v133;
      v70 = v132;
      v156 = 1.0 / (v146 / 100.0 + 1.0);
      v157 = 1.0 / ((v155 + v79 * v154) / 100.0 + 1.0);
      v158 = *&v62 * (1.0 - v156) + v156 * *v127;
      v159 = v196 + v189 * v158 + v197 * (*&v61 * (1.0 - v156) + v156 * v128) + (*&v65 * (1.0 - v157) + v157 * *v126) * (v132.n128_f64[0] + v188 * v158 + v135.n128_f64[0] * (*&v61 * (1.0 - v156) + v156 * v128)) + (*&v64 * (1.0 - v157) + v157 * v129) * (v198 + v195 * v158 + *&v67 * (*&v61 * (1.0 - v156) + v156 * v128));
      v68 = v68 + sqrt(v159 * v159 + 0.00000337320636);
      v126 += 2;
      v127 += 2;
      --v124;
    }

    while (v124);
LABEL_12:
    result = v68 / a3;
    *a7 = result;
  }

  return result;
}

double jpc::JPCFactory::createJPCModePORImplementation@<D0>(jpc::JPCConfig *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = 0uLL;
  v23 = 0;
  jpc::JPCConfig::getPORPreprocessorFilterBlockConfig(a1, &v22);
  memset(v21, 0, 144);
  jpc::JPCConfig::getPORIFAConfig(v12, v21);
  jpc::JPCConfig::getGMCJConfig(v13, &v20);
  if (!a1)
  {
    operator new();
  }

  v14 = *a1;
  *a1 = 0;
  if (!a2)
  {
    operator new();
  }

  v15 = *a2;
  *a2 = 0;
  if (!a3)
  {
    jpc::JPCFactory::createPORIFABlock(v21);
  }

  v16 = *a3;
  *a3 = 0;
  if (!a4)
  {
    operator new();
  }

  v17 = *a4;
  *a4 = 0;
  if (!a5)
  {
    operator new();
  }

  v18 = *a5;
  *a5 = 0;
  *a6 = &unk_2852316B8;
  *(a6 + 8) = v14;
  *(a6 + 16) = v15;
  *(a6 + 24) = v16;
  *(a6 + 32) = v17;
  *(a6 + 40) = v18;
  result = 0.0;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = -1;
  return result;
}

void sub_240377C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v12)
  {
    (*(*v12 + 8))(v12);
    v14 = a10;
    if (!a10)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v14 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  (*(*v14 + 8))(v14);
  if (!v11)
  {
LABEL_4:
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  (*(*v11 + 8))(v11);
  if (!v10)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  (*(*v10 + 8))(v10);
  _Unwind_Resume(exception_object);
}

void jpc::JPCFactory::createPORIFABlock(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    operator new();
  }

  if (*a1 == 1)
  {
    operator new();
  }

  if (a1[20] == 1)
  {
    operator new();
  }

  if (a1[56] == 1)
  {
    operator new();
  }

  if (a1[88] == 1)
  {
    operator new();
  }

  if (a1[104] == 1)
  {
    operator new();
  }

  operator new();
}

void sub_2403783DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::vector<std::unique_ptr<jpc::IFAPullCriteria>>::~vector[abi:ne200100](&a9);
  std::vector<std::unique_ptr<jpc::IIFA_Filter>>::~vector[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<jpc::IFAPullCriteria>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::vector<std::unique_ptr<jpc::IIFA_Filter>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void jpc::JPCFactory::createEflModePORImplementation()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x245CBFA90](exception, "Deprecated, the infrastructure is kept for a future potential comeback.");
}

double jpc::JPCFactory::getDefaultPearlPceConfig@<D0>(uint64_t a1@<X8>)
{
  result = 0.0000305176003;
  *a1 = xmmword_240406DE0;
  *(a1 + 16) = 1121714176;
  *(a1 + 20) = 0;
  *(a1 + 22) = 0;
  return result;
}

void sub_2403788DC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

__n128 ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,3ul,simd_float4x3>(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 floatValue];
  v20 = v3;

  v4 = [v1 objectAtIndexedSubscript:1];
  [v4 floatValue];
  v19 = v5;

  v6 = [v1 objectAtIndexedSubscript:2];
  [v6 floatValue];
  v18 = v7;

  v8 = [v1 objectAtIndexedSubscript:3];
  [v8 floatValue];

  v9 = [v1 objectAtIndexedSubscript:4];
  [v9 floatValue];

  v10 = [v1 objectAtIndexedSubscript:5];
  [v10 floatValue];

  v11 = [v1 objectAtIndexedSubscript:6];
  [v11 floatValue];

  v12 = [v1 objectAtIndexedSubscript:7];
  [v12 floatValue];

  v13 = [v1 objectAtIndexedSubscript:8];
  [v13 floatValue];

  v14 = [v1 objectAtIndexedSubscript:9];
  [v14 floatValue];

  v15 = [v1 objectAtIndexedSubscript:10];
  [v15 floatValue];

  v16 = [v1 objectAtIndexedSubscript:11];
  [v16 floatValue];

  result.n128_u32[0] = v20;
  result.n128_u32[1] = v19;
  result.n128_u32[2] = v18;
  return result;
}

id ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,3ul,simd_float4x3>(_DWORD *a1)
{
  v2 = objc_opt_new();
  LODWORD(v3) = *a1;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  [v2 addObject:v4];

  LODWORD(v5) = a1[1];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v2 addObject:v6];

  LODWORD(v7) = a1[2];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [v2 addObject:v8];

  LODWORD(v9) = a1[4];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v2 addObject:v10];

  LODWORD(v11) = a1[5];
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v2 addObject:v12];

  LODWORD(v13) = a1[6];
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [v2 addObject:v14];

  LODWORD(v15) = a1[8];
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  [v2 addObject:v16];

  LODWORD(v17) = a1[9];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  [v2 addObject:v18];

  LODWORD(v19) = a1[10];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [v2 addObject:v20];

  LODWORD(v21) = a1[12];
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  [v2 addObject:v22];

  LODWORD(v23) = a1[13];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  [v2 addObject:v24];

  LODWORD(v25) = a1[14];
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  [v2 addObject:v26];

  return v2;
}

void sub_24037BC58(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_24037C208(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24037C4A8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_24037E788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_24037EAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ADPearlColorInFieldCalibrationPipeline;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240380994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  MatrixNxPts<3u,double>::~MatrixNxPts(&a18);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a23);
  CGMC_BundleAdjustment::~CGMC_BundleAdjustment(&a42);
  _Unwind_Resume(a1);
}

void CGMC_BundleAdjustment::CGMC_BundleAdjustment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2852312D8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 3;
  *(a1 + 88) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = &unk_2852312D8;
  *(a1 + 112) = 0;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = &unk_2852312F8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2852312F8;
  *(a1 + 184) = 0;
  Matrix<double>::Matrix(&v2, a2);
}

void sub_240380C78(_Unwind_Exception *a1)
{
  MatrixNxPts<2u,double>::~MatrixNxPts(v4);
  MatrixNxPts<2u,double>::~MatrixNxPts(v3);
  MatrixNxPts<3u,double>::~MatrixNxPts(v2);
  MatrixNxPts<3u,double>::~MatrixNxPts(v1);
  _Unwind_Resume(a1);
}

void CGMC_BundleAdjustment::CalcBA(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v49 = *MEMORY[0x277D85DE8];
  if (*(a7 + 563) == 1)
  {
    v10 = *(a3 + 20);
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*(*(a3 + 8) + 8 * i) == 0.0)
        {
          goto LABEL_8;
        }
      }

      if (a6 == a1)
      {
LABEL_10:
        v13 = *a5;
        v14 = *(a5 + 32);
        v15 = *(a5 + 64);
        v16 = (*a5 + 0.0 + v14 + v15 + -1.0) * 0.5;
        v17 = 1.0;
        if (v16 <= 1.0)
        {
          v17 = (*a5 + 0.0 + v14 + v15 + -1.0) * 0.5;
          if (v16 < -1.0)
          {
            v17 = -1.0;
          }
        }

        v18 = acos(v17);
        v19 = sin(v18);
        v27 = v19 + v19;
        if (v27 <= 0.0000001)
        {
          memset(v38, 0, 72);
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          memset(v37, 0, sizeof(v37));
          *v20.i64 = v13 + -1.0;
          v21.f64[0] = *(a5 + 8);
          v22.n128_u64[0] = *(a5 + 16);
          v23.f64[0] = *(a5 + 24);
          v24.f64[0] = v14 + -1.0;
          v25.f64[0] = *(a5 + 40);
          v26.i64[0] = *(a5 + 48);
          v34 = *(a5 + 56);
          v48 = v15 + -1.0;
          *&v44 = v13 + -1.0;
          *(&v44 + 1) = *&v23.f64[0];
          *(&v45 + 1) = *&v21.f64[0];
          *&v45 = v26.i64[0];
          *&v47 = v22.n128_u64[0];
          *(&v47 + 1) = *&v25.f64[0];
          *&v46 = v14 + -1.0;
          *(&v46 + 1) = v34;
          svd_os(3, &v44, v38, v37, &v39, COERCE_UNSIGNED_INT64(v15 + -1.0), v20, v21, v22, v23, v24, v25, v26);
        }

        else
        {
          _Q1 = *(a5 + 56);
          _Q1.f64[1] = *(a5 + 16);
          _D3 = vdivq_f64(vsubq_f64(_Q1, *(a5 + 40)), vdupq_lane_s64(*&v27, 0)).f64[1];
          __asm { FMLA            D1, D3, V0.D[1] }
        }

        v35 = *(a4 + 3);
        v46 = *(a4 + 2);
        v47 = v35;
        v48 = a4[8];
        v36 = *(a4 + 1);
        v44 = *a4;
        v45 = v36;
        Matrix<double>::Matrix(v38, a2);
      }
    }

    else if (a6 == a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_8:
    if (a6 == a1)
    {
      goto LABEL_10;
    }
  }

  v12 = *a6;
  *(a1 + 16) = *(a6 + 2);
  *a1 = v12;
  goto LABEL_10;
}

void sub_240383AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 && a72 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x208] = a12;
  if (STACK[0x210] && LOBYTE(STACK[0x220]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x230] = a13;
  if (STACK[0x238] && LOBYTE(STACK[0x248]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x258] = a14;
  if (STACK[0x260] && LOBYTE(STACK[0x270]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x280] = a15;
  if (STACK[0x288] && LOBYTE(STACK[0x298]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x2A8] = a16;
  if (STACK[0x2B0] && LOBYTE(STACK[0x2C0]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (STACK[0x2D0])
  {
    MEMORY[0x245CBFC90](STACK[0x2D0], v72);
  }

  if (STACK[0x2D8])
  {
    MEMORY[0x245CBFC90](STACK[0x2D8], 0x1000C8052888210);
    v74 = STACK[0x2E0];
    if (!STACK[0x2E0])
    {
LABEL_23:
      v75 = STACK[0x2E8];
      if (!STACK[0x2E8])
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v74 = STACK[0x2E0];
    if (!STACK[0x2E0])
    {
      goto LABEL_23;
    }
  }

  MEMORY[0x245CBFC90](v74, 0x1000C8052888210);
  v75 = STACK[0x2E8];
  if (!STACK[0x2E8])
  {
LABEL_25:
    STACK[0x380] = off_285231258;
    if (STACK[0x388])
    {
      if (LOBYTE(STACK[0x398]) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    _Unwind_Resume(a1);
  }

LABEL_24:
  MEMORY[0x245CBFC90](v75, 0x1000C8052888210);
  goto LABEL_25;
}

void CGMC_BundleAdjustment::~CGMC_BundleAdjustment(CGMC_BundleAdjustment *this)
{
  *(this + 18) = off_285231258;
  if (*(this + 19) && *(this + 168) == 1)
  {
    MEMORY[0x245CBFC90]();
    *(this + 19) = 0;
    *(this + 22) = 0;
    *(this + 168) = 0;
  }

  *(this + 20) = 0;
  *(this + 13) = off_285231258;
  if (*(this + 14) && *(this + 128) == 1)
  {
    MEMORY[0x245CBFC90]();
    *(this + 14) = 0;
    *(this + 17) = 0;
    *(this + 128) = 0;
  }

  *(this + 15) = 0;
  *(this + 8) = off_285231258;
  if (*(this + 9) && *(this + 88) == 1)
  {
    MEMORY[0x245CBFC90]();
    *(this + 9) = 0;
    *(this + 12) = 0;
    *(this + 88) = 0;
  }

  *(this + 10) = 0;
  *(this + 3) = off_285231258;
  if (*(this + 4) && *(this + 48) == 1)
  {
    MEMORY[0x245CBFC90]();
    *(this + 4) = 0;
    *(this + 7) = 0;
    *(this + 48) = 0;
  }

  *(this + 5) = 0;
}

void CGMC_BundleAdjustment::rotationMatrixToAngleAxis(uint64_t a1@<X0>, double *a2@<X8>)
{
  *a2 = 0.0;
  a2[1] = 0.0;
  a2[2] = 0.0;
  v4 = *a1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = (*a1 + 0.0 + v5 + v6 + -1.0) * 0.5;
  v8 = 1.0;
  if (v7 <= 1.0)
  {
    v8 = (*a1 + 0.0 + v5 + v6 + -1.0) * 0.5;
    if (v7 < -1.0)
    {
      v8 = -1.0;
    }
  }

  v9 = acos(v8);
  v10 = sin(v9);
  v18 = v10 + v10;
  if (v18 <= 0.0000001)
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v35 = 0.0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    memset(v30, 0, sizeof(v30));
    *v11.i64 = v4 + -1.0;
    v12.f64[0] = *(a1 + 8);
    v13.n128_u64[0] = *(a1 + 16);
    v14.f64[0] = *(a1 + 24);
    v15.f64[0] = v5 + -1.0;
    v17.i64[0] = *(a1 + 48);
    v28 = *(a1 + 56);
    v39 = *(a1 + 40);
    v16.f64[0] = v39;
    v40 = v6 + -1.0;
    v38[0] = v4 + -1.0;
    v38[1] = v14.f64[0];
    v38[2] = *v17.i64;
    v38[3] = v12.f64[0];
    v38[5] = v28;
    v38[6] = v13.n128_f64[0];
    v38[4] = v5 + -1.0;
    svd_os(3, v38, v36, v30, &v31, COERCE_UNSIGNED_INT64(v6 + -1.0), v11, v12, v13, v14, v15, v16, v17);
    v29 = v9 * *(&v33 + 1);
    *a2 = v9 * *&v32;
    a2[1] = v29;
    v27 = v9 * v35;
  }

  else
  {
    _Q1 = *(a1 + 56);
    v20 = (*(a1 + 24) - *(a1 + 8)) / v18;
    _Q1.f64[1] = *(a1 + 16);
    _Q0 = vdivq_f64(vsubq_f64(_Q1, *(a1 + 40)), vdupq_lane_s64(*&v18, 0));
    _D3 = _Q0.f64[1];
    __asm { FMLA            D1, D3, V0.D[1] }

    _Q1.f64[0] = v9 / sqrt(_Q1.f64[0] + v20 * v20);
    *a2 = vmulq_n_f64(_Q0, _Q1.f64[0]);
    v27 = v20 * _Q1.f64[0];
  }

  a2[2] = v27;
}

uint64_t CGMC_BundleAdjustment::calculateCostFunctionResiduals@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a4 + 4 * *(a1 + 44);
  *a6 = off_285231258;
  if (v12)
  {
    operator new[]();
  }

  *(a6 + 16) = 1;
  *(a6 + 20) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *a6 = &unk_285231338;
  *(a6 + 8) = 0;
  v80 = *a2;
  v81 = *(a2 + 2);
  CGMC_BundleAdjustment::angleAxisToRotationMatrix(&v80, &v84);
  v13 = *(&v84 + 1);
  v14 = v85;
  v15 = *(&v87 + 1);
  *(&v84 + 1) = *(&v85 + 1);
  *&v85 = v87;
  *&v87 = v14;
  *(&v87 + 1) = *(&v86 + 1);
  *(&v85 + 1) = v13;
  *(&v86 + 1) = v15;
  v93 = v88;
  v91 = v86;
  v92 = v87;
  v89 = v84;
  v90 = v85;
  MatrixMxN<3u,3u,double>::operator*(&v84, a2 + 24, (a2 + 6));
  v16 = DWORD1(v85);
  HIDWORD(v81) = DWORD1(v85);
  v82 = BYTE8(v85);
  v83 = v86;
  *&v80 = &unk_2852312D8;
  *(&v80 + 1) = *(&v84 + 1);
  LODWORD(v81) = 3;
  if (DWORD1(v85))
  {
    v17 = 0;
    v18 = 8 * DWORD1(v85);
    do
    {
      v19 = (*(&v80 + 1) + v17);
      v20 = *(*(&v80 + 1) + v17 + 16 * v16);
      v21 = *(*(&v80 + 1) + v17 + 8 * v16) / v20;
      *v19 = *(*(&v80 + 1) + v17) / v20;
      v19[v16] = v21;
      v19[2 * v16] = v20 / v20;
      v17 += 8;
    }

    while (v18 != v17);
  }

  if (v16 != *(a1 + 124))
  {
    __assert_rtn("doDimensionsMatchTo", "Matrix.hpp", 1043, "0");
  }

  *&v84 = off_285231258;
  if (v16)
  {
    operator new[]();
  }

  v22 = *(a1 + 124);
  if (HIDWORD(v81) != v22)
  {
    __assert_rtn("doDimensionsMatchTo", "Matrix.hpp", 1043, "0");
  }

  *&v84 = off_285231258;
  if (v22)
  {
    operator new[]();
  }

  MatrixMxN<3u,3u,double>::operator*(&v84, &v89, (a2 + 6));
  v24 = *(&v84 + 1);
  v25 = DWORD1(v85);
  v79 = BYTE8(v85);
  v77 = *(&v84 + 1);
  v78 = DWORD1(v85);
  if (SDWORD1(v85) >= 1)
  {
    v23.n128_u64[0] = 0;
    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v29 = *&v89 * *a1 + 0.0 + *(&v89 + 1) * v27 + *&v90 * v28;
    v30 = *(&v91 + 1);
    v31 = *(&v90 + 1) * *a1 + 0.0 + *&v91 * v27;
    v32 = 8 * SDWORD1(v85);
    v33 = v32 + *(&v84 + 1);
    if (v32 + *(&v84 + 1) <= (*(&v84 + 1) + 8))
    {
      v33 = *(&v84 + 1) + 8;
    }

    v34 = v33 + ~*(&v84 + 1);
    v35 = *(&v84 + 1);
    if (v34 >= 0x18)
    {
      v36 = (v34 >> 3) + 1;
      v37 = vdupq_lane_s64(*&v29, 0);
      v38 = (*(&v84 + 1) + 16);
      v39 = v36 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v40 = vsubq_f64(*v38, v37);
        v38[-1] = vsubq_f64(v38[-1], v37);
        *v38 = v40;
        v38 += 2;
        v39 -= 4;
      }

      while (v39);
      if (v36 == (v36 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_22:
        v42 = v31 + v30 * v28;
        v43 = 8 * v25;
        v44 = v77 + 8 * v25;
        v45 = v44 + v32;
        if (v45 <= v44 + 8)
        {
          v45 = v44 + 8;
        }

        v46 = v45 + ~v77 - v43;
        v47 = (v77 + 8 * v25);
        if (v46 >= 0x18)
        {
          v48 = (v46 >> 3) + 1;
          v49 = vdupq_lane_s64(*&v42, 0);
          v50 = (v43 + v77 + 16);
          v51 = v48 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v52 = vsubq_f64(*v50, v49);
            v50[-1] = vsubq_f64(v50[-1], v49);
            *v50 = v52;
            v50 += 2;
            v51 -= 4;
          }

          while (v51);
          if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_31:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v23.n128_f64[0] = *&v92 * v26 + 0.0 + *(&v92 + 1) * v27 + v93 * v28;
            v54 = (2 * v25);
            v55 = (v77 + 8 * v54);
            v56 = 8 * v54;
            v57 = v77 + 8 * v25 + v56;
            v58 = (v56 + v77);
            if (v57 <= v56 + v77 + 8)
            {
              v57 = v56 + v77 + 8;
            }

            v59 = v57 + ~v77 - v56;
            v60 = v55;
            if (v59 >= 0x18)
            {
              v61 = (v59 >> 3) + 1;
              v62 = vdupq_lane_s64(v23.n128_i64[0], 0);
              v63 = v58 + 1;
              v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v65 = vsubq_f64(*v63, v62);
                v63[-1] = vsubq_f64(v63[-1], v62);
                *v63 = v65;
                v63 += 2;
                v64 -= 4;
              }

              while (v64);
              if (v61 == (v61 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_40;
              }

              v60 = &v55[v61 & 0x3FFFFFFFFFFFFFFCLL];
            }

            do
            {
              *v60 = *v60 - v23.n128_f64[0];
              ++v60;
            }

            while (v60 < &v55[v25]);
LABEL_40:
            LODWORD(v25) = v78;
            goto LABEL_41;
          }

          v47 = (v44 + 8 * (v48 & 0x3FFFFFFFFFFFFFFCLL));
        }

        v53 = v44 + 8 * v25;
        do
        {
          *v47 = *v47 - v42;
          ++v47;
        }

        while (v47 < v53);
        goto LABEL_31;
      }

      v35 = (v24 + 8 * (v36 & 0x3FFFFFFFFFFFFFFCLL));
    }

    v41 = v24 + 8 * v25;
    do
    {
      *v35 = *v35 - v29;
      ++v35;
    }

    while (v35 < v41);
    goto LABEL_22;
  }

LABEL_41:
  if (v25)
  {
    v66 = 0;
    do
    {
      v67 = (v77 + v66);
      v68 = *(v77 + v66 + 16 * v25);
      v23.n128_f64[0] = *(v77 + v66) / v68;
      v69 = *(v77 + v66 + 8 * v25) / v68;
      *v67 = v23.n128_u64[0];
      *&v67[v25] = v69;
      *&v67[2 * v25] = v68 / v68;
      v66 += 8;
    }

    while (8 * v25 != v66);
  }

  if (v25 != *(a1 + 164))
  {
    __assert_rtn("doDimensionsMatchTo", "Matrix.hpp", 1043, "0");
  }

  *&v84 = off_285231258;
  if (v25)
  {
    operator new[]();
  }

  v70 = *(a1 + 164);
  if (v78 != v70)
  {
    __assert_rtn("doDimensionsMatchTo", "Matrix.hpp", 1043, "0");
  }

  *&v84 = off_285231258;
  if (v70)
  {
    operator new[]();
  }

  *&v84 = off_285231258;
  if (a4)
  {
    operator new[]();
  }

  *&v85 = 1;
  BYTE8(v85) = 0;
  *&v86 = 0;
  *&v84 = &unk_285231338;
  *(&v84 + 1) = 0;
  if (a4 && !a5)
  {
    __assert_rtn("calculateCostFunctionResiduals", "GMC_BundleAdjustment.mm", 836, "shouldIncludeJasperResidualFunction || 0 == numberOfPearlJasperCorrespondences");
  }

  if (a4)
  {
    v71 = 0;
    v72 = *(a2 + 29);
    v23.n128_u64[0] = 5.0;
    do
    {
      *(*(&v84 + 1) + 8 * v71) = (*(*(a2 + 13) + 8 * (2 * v72) + 8 * v71) - *(*(a3 + 8) + 8 * v71)) / *(*(a3 + 8) + 8 * v71) * 5.0;
      ++v71;
    }

    while (a4 != v71);
    if (!v72)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v72 = *(a2 + 29);
    if (!v72)
    {
      goto LABEL_65;
    }
  }

  v73 = 0;
  v74 = 0;
  do
  {
    *(*(a6 + 8) + 8 * v74) = *(8 * v73);
    *(*(a6 + 8) + 8 * (v74 + 1)) = *(8 * v73);
    *(*(a6 + 8) + 8 * (v74 + 2)) = *(8 * v73);
    v23.n128_u64[0] = *(8 * v73);
    v75 = v74 + 4;
    *(*(a6 + 8) + 8 * (v74 + 3)) = v23.n128_u64[0];
    if (v73 < a4 && a5)
    {
      v23.n128_u64[0] = *(*(&v84 + 1) + 8 * v73);
      *(*(a6 + 8) + 8 * v75) = v23.n128_u64[0];
      v75 = v74 + 5;
    }

    ++v73;
    v74 = v75;
  }

  while (v72 != v73);
LABEL_65:
  *&v84 = off_285231258;
  if (*(&v84 + 1) && a4)
  {
    MEMORY[0x245CBFC90](v23);
  }

  if (v77 && v79 == 1)
  {
    MEMORY[0x245CBFC90](v23);
  }

  *&v80 = off_285231258;
  result = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    if (v82 == 1)
    {
      return MEMORY[0x245CBFC90](v23);
    }
  }

  return result;
}

void sub_240385444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&a20);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a25);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a30);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a35);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a40);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a45);
  MatrixNxPts<1u,double>::~MatrixNxPts(v45);
  _Unwind_Resume(a1);
}

uint64_t CGMC_BundleAdjustment::calcJacobian(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t *a6, uint64_t a7)
{
  v221[3] = *MEMORY[0x277D85DE8];
  v199 = *a2;
  v200 = *(a2 + 2);
  CGMC_BundleAdjustment::angleAxisToRotationMatrix(&v199, v198);
  v12 = *a2;
  v13 = *(a2 + 3);
  v190 = *(a2 + 2);
  v191 = *(a2 + 1);
  v14 = *(a2 + 29);
  v197 = *(a2 + 13);
  v196 = v197 + 8 * v14;
  v195 = v197 + 8 * (2 * v14);
  if (v14)
  {
    operator new[]();
  }

  v189 = a5;
  v186 = a7;
  v200 = 0;
  v202 = 0;
  v201 = 0;
  v199 = off_285231258;
  *&v199 = off_285231258;
  v15 = sqrt(*a2 * *a2 + 0.0 + *(a2 + 1) * *(a2 + 1) + *(a2 + 2) * *(a2 + 2));
  if (v15 == 0.0)
  {
    v16 = 1.0;
    v18 = 0.5;
  }

  else
  {
    v16 = sin(v15) / v15;
    v17 = sin(v15 * 0.5) / v15;
    v18 = v17 * (v17 + v17);
  }

  v19 = *(a2 + 29);
  v192 = v19;
  if (2 * v19)
  {
    operator new[]();
  }

  v193 = *(a2 + 29);
  v20 = 16 * v19;
  v21 = 8 * v19;
  if (*(a2 + 136) == 1)
  {
    *(&v199 + 1) = 8 * v19;
    HIDWORD(v200) = v19;
    v201 = 0;
    v202 = 8 * v19;
    *&v199 = &unk_285231338;
    LODWORD(v200) = 1;
    if (v19)
    {
      v22 = 0;
      do
      {
        *v22 = -*(v22 + v197) / *(v22 + v195);
        v22[v19] = -*(v22 + v196) / *(v22 + v195);
        ++v22;
      }

      while (v21 != v22);
    }
  }

  v188 = v13;
  if (v15 == 0.0)
  {
    v27 = v12;
    v26 = 0.0;
    v30 = 1.0;
    v29 = 1.0;
    v28 = 1.0;
    v24 = 0.0;
  }

  else
  {
    v23 = __sincos_stret(v15);
    v24 = -(v23.__sinval - v15 * v23.__cosval) / (v15 * v15);
    v25 = sin(v15 * 0.5);
    v26 = (v15 * -4.0 * (v25 * v25) + v15 * v15 * v23.__sinval) / pow(v15, 4.0);
    v27 = v12;
    v28 = v12 / v15;
    v29 = v191 / v15;
    v30 = v190 / v15;
  }

  *&v199 = off_285231258;
  v32 = v190;
  v31 = v191;
  v33 = v32 * v32 + v31 * v31;
  v34 = v32 * v32 + v27 * v27;
  v35 = v16 + v27 * (v28 * v24);
  v36 = v31 * v31 + v27 * v27;
  v221[0] = -(v33 * (v28 * v26));
  v221[1] = -(v33 * (v29 * v26) + (v31 + v31) * v18);
  v220[0] = v191 * v18 + v190 * (v28 * v24) + v27 * v191 * (v28 * v26);
  v220[1] = v27 * v18 + v190 * (v29 * v24) + v27 * v191 * (v29 * v26);
  v37 = v16 + v191 * (v29 * v24);
  v219[0] = v190 * v18 - v191 * (v28 * v24) + v27 * v190 * (v28 * v26);
  v219[1] = -(v37 - v27 * v190 * (v29 * v26));
  v218[0] = v191 * v18 - v190 * (v28 * v24) + v27 * v191 * (v28 * v26);
  v218[1] = v27 * v18 - v190 * (v29 * v24) + v27 * v191 * (v29 * v26);
  v217[0] = -(v34 * (v28 * v26) + (v27 + v27) * v18);
  v217[1] = -(v34 * (v29 * v26));
  v216[0] = v35 + v191 * v190 * (v28 * v26);
  v216[1] = v190 * v18 + v27 * (v29 * v24) + v191 * v190 * (v29 * v26);
  v215[0] = v190 * v18 + v191 * (v28 * v24) + v27 * v190 * (v28 * v26);
  v215[1] = v37 + v27 * v190 * (v29 * v26);
  v214[0] = -(v35 - v191 * v190 * (v28 * v26));
  v214[1] = v190 * v18 - v27 * (v29 * v24) + v191 * v190 * (v29 * v26);
  v213[0] = -(v36 * (v28 * v26) + (v27 + v27) * v18);
  v213[1] = -(v36 * (v29 * v26) + (v31 + v31) * v18);
  v221[2] = -(v33 * (v30 * v26) + (v32 + v32) * v18);
  v38 = v16 + v190 * (v30 * v24);
  v220[2] = v38 + v27 * v191 * (v30 * v26);
  v219[2] = v27 * v18 - v191 * (v30 * v24) + v27 * v190 * (v30 * v26);
  v218[2] = -(v38 - v27 * v191 * (v30 * v26));
  v217[2] = -(v34 * (v30 * v26) + (v32 + v32) * v18);
  v216[2] = v191 * v18 + v27 * (v30 * v24) + v191 * v190 * (v30 * v26);
  v215[2] = v27 * v18 + v191 * (v30 * v24) + v27 * v190 * (v30 * v26);
  v214[2] = v191 * v18 - v27 * (v30 * v24) + v191 * v190 * (v30 * v26);
  v213[2] = -(v36 * (v30 * v26));
  if (a4)
  {
    operator new[]();
  }

  if (a4 && (v189[563] & 1) == 0)
  {
    __assert_rtn("calcJacobian", "GMC_BundleAdjustment.mm", 547, "params.consts.shouldIncludeJasperResidualFunction || 0 == numberOfPearlJasperCorrespondences");
  }

  if (a4)
  {
    v39 = 0;
    do
    {
      *(8 * v39) = 5.0 / *(*(a3 + 8) + 8 * v39);
      ++v39;
    }

    while (a4 > v39);
  }

  *&v199 = off_285231258;
  *(&v199 + 1) = 0;
  LODWORD(v200) = 2;
  HIDWORD(v200) = v192;
  v201 = 0;
  v202 = v20;
  v203 = off_285231258;
  v204 = 0;
  LODWORD(v205) = 2;
  HIDWORD(v205) = v192;
  v206 = 0;
  v207 = v20;
  v208 = off_285231258;
  v40 = 0;
  v209 = 0;
  LODWORD(v210) = 2;
  HIDWORD(v210) = v192;
  v211 = 0;
  v212 = v20;
  do
  {
    v41 = &v199 + 40 * v40;
    v194 = *(v41 + 1);
    v42 = v194 + 8 * *(v41 + 5);
    if (v192)
    {
      v43 = 0;
      v44 = v221[v40];
      v45 = v220[v40];
      v46 = v219[v40];
      v47 = v218[v40];
      v48 = v217[v40];
      v49 = v216[v40];
      v50 = v215[v40];
      v51 = v214[v40];
      v52 = v213[v40];
      do
      {
        v53 = *v43;
        v54 = *v43 * v48 + *v43 * v47;
        v55 = *v43 * v51 + *v43 * v50 + *v43 * v52;
        *(v43 + v194) = -((*v43 * v45 + *v43 * v44 + *v43 * v46) * *v43 - v55 * *v43) / *v43;
        *(v43 + v42) = -((v54 + v53 * v49) * *v43 - v55 * *v43) / *v43;
        ++v43;
      }

      while (v21 != v43);
    }

    ++v40;
  }

  while (v40 != 3);
  bzero(a6[3], 4 * *(a6 + 9));
  v56 = *(a6 + 9);
  if (v56)
  {
    operator new[]();
  }

  if (*(v186 + 24) == 1 && *(v186 + 8))
  {
    MEMORY[0x245CBFC90](*(v186 + 8), 0x1000C8000313F17);
    v56 = 0;
  }

  *(v186 + 16) = 1;
  *(v186 + 20) = v56;
  *(v186 + 8) = 0;
  *(v186 + 24) = 0;
  *(v186 + 32) = 0;
  bzero(0, 8 * v56);
  if (v189[560])
  {
    v57 = 4;
  }

  else
  {
    v57 = 3;
  }

  if (v192)
  {
    v58 = 0;
    v59 = 0;
    v60 = v189[561];
    v61 = v189[562];
    if (v189[562])
    {
      v62 = v57 + v60;
    }

    else
    {
      v62 = -1;
    }

    if (v189[561])
    {
      v63 = v57;
    }

    else
    {
      v63 = -1;
    }

    if (v189[560])
    {
      v64 = 3;
    }

    else
    {
      v64 = -1;
    }

    v65 = v189[563];
    v66 = *(a2 + 136);
    while (1)
    {
      if (v58)
      {
        v59 += (v58 - 1 < a4) & v65;
      }

      if (v66)
      {
        if (v58 >= v193)
        {
          __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
        }

        v67 = *(8 * v58);
        v68 = *(8 * v193 + 8 * v58);
        v69 = a6[3];
        v70 = (a6[2] + 4 * v64);
        v71 = *(v69 + 4 * v64) + *v70;
        if (*(a6 + 9) - 1 == v64)
        {
          v72 = *(a6 + 8);
        }

        else
        {
          v72 = v70[1];
        }

        if (v71 >= v72 || ((v73 = *a6, *(*a6 + 8 * v71) = v67, v74 = a6[1], *(v74 + 4 * v71) = v59, v75 = *(v69 + 4 * v64) + 1, *(v69 + 4 * v64) = v75, v76 = v75 + *v70, *(a6 + 9) - 1 != v64) ? (v77 = v70[1]) : (v77 = *(a6 + 8)), v76 >= v77))
        {
          __assert_rtn("AddValue", "SparseMatrix.cpp", 124, "(col != m_width-1 && index < m_colIndices[col+1]) || (col == m_width-1 && index < m_maxNNZ)");
        }

        *(v73 + 8 * v76) = v68;
        *(v74 + 4 * v76) = v59 + 1;
        ++*(v69 + 4 * v64);
        *(*(v186 + 8) + 24) = *(*(v186 + 8) + 24) + v67 * v67;
        *(*(v186 + 8) + 24) = *(*(v186 + 8) + 24) + v68 * v68;
      }

      if (v60)
      {
        v78 = a6[3];
        v79 = (a6[2] + 4 * v63);
        v80 = *(v78 + 4 * v63) + *v79;
        if (*(a6 + 9) - 1 == v63)
        {
          v81 = *(a6 + 8);
        }

        else
        {
          v81 = v79[1];
        }

        if (v80 >= v81)
        {
LABEL_176:
          __assert_rtn("AddValue", "SparseMatrix.cpp", 124, "(col != m_width-1 && index < m_colIndices[col+1]) || (col == m_width-1 && index < m_maxNNZ)");
        }

        *(*a6 + 8 * v80) = 0xBFF0000000000000;
        *(a6[1] + 4 * v80) = v59;
        ++*(v78 + 4 * v63);
        *(*(v186 + 8) + 32) = *(*(v186 + 8) + 32) + 1.0;
      }

      if (v61)
      {
        v82 = a6[3];
        v83 = (a6[2] + 4 * v62);
        v84 = *(v82 + 4 * v62) + *v83;
        if (*(a6 + 9) - 1 == v62)
        {
          v85 = *(a6 + 8);
        }

        else
        {
          v85 = v83[1];
        }

        if (v84 >= v85)
        {
          goto LABEL_176;
        }

        *(*a6 + 8 * v84) = 0xBFF0000000000000;
        *(a6[1] + 4 * v84) = v59 + 1;
        ++*(v82 + 4 * v62);
        *(*(v186 + 8) + 40) = *(*(v186 + 8) + 40) + 1.0;
      }

      if (!v200 || v58 >= HIDWORD(v200))
      {
LABEL_170:
        __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
      }

      if (v200 == 1)
      {
        goto LABEL_172;
      }

      v86 = *(*(&v199 + 1) + 8 * v58);
      v87 = *(*(&v199 + 1) + 8 * HIDWORD(v200) + 8 * v58);
      v88 = a6[2];
      v89 = a6[3];
      v90 = *v89 + *v88;
      if (*(a6 + 9) == 1)
      {
        v91 = *(a6 + 8);
      }

      else
      {
        v91 = v88[1];
      }

      if (v90 >= v91)
      {
        goto LABEL_171;
      }

      v92 = v59 + 2;
      v93 = *a6;
      *(*a6 + 8 * v90) = v86;
      v94 = a6[1];
      *(v94 + 4 * v90) = v59 + 2;
      v95 = *v89 + 1;
      *v89 = v95;
      v96 = v95 + *v88;
      v97 = *(a6 + 9) == 1 ? *(a6 + 8) : v88[1];
      if (v96 >= v97)
      {
        goto LABEL_171;
      }

      v98 = v59 + 3;
      *(v93 + 8 * v96) = v87;
      *(v94 + 4 * v96) = v59 + 3;
      ++*v89;
      **(v186 + 8) = **(v186 + 8) + v86 * v86;
      **(v186 + 8) = **(v186 + 8) + v87 * v87;
      if (!v205 || v58 >= HIDWORD(v205))
      {
        goto LABEL_170;
      }

      if (v205 == 1)
      {
        goto LABEL_172;
      }

      v99 = *(v204 + 8 * v58);
      v100 = *(v204 + 8 * HIDWORD(v205) + 8 * v58);
      v101 = v89[1] + v88[1];
      v102 = *(a6 + 9) == 2 ? *(a6 + 8) : v88[2];
      if (v101 >= v102)
      {
        goto LABEL_171;
      }

      *(v93 + 8 * v101) = v99;
      *(v94 + 4 * v101) = v92;
      v103 = v89[1] + 1;
      v89[1] = v103;
      v104 = v103 + v88[1];
      v105 = *(a6 + 9) == 2 ? *(a6 + 8) : v88[2];
      if (v104 >= v105)
      {
        goto LABEL_171;
      }

      *(v93 + 8 * v104) = v100;
      *(v94 + 4 * v104) = v98;
      ++v89[1];
      *(*(v186 + 8) + 8) = *(*(v186 + 8) + 8) + v99 * v99;
      *(*(v186 + 8) + 8) = *(*(v186 + 8) + 8) + v100 * v100;
      if (!v210 || v58 >= HIDWORD(v210))
      {
        goto LABEL_170;
      }

      if (v210 == 1)
      {
LABEL_172:
        __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
      }

      v106 = *(v209 + 8 * v58);
      v107 = *(v209 + 8 * HIDWORD(v210) + 8 * v58);
      v108 = v89[2] + v88[2];
      v109 = *(a6 + 9) == 3 ? *(a6 + 8) : v88[3];
      if (v108 >= v109 || ((*(v93 + 8 * v108) = v106, *(v94 + 4 * v108) = v92, v110 = v89[2] + 1, v89[2] = v110, v111 = v110 + v88[2], *(a6 + 9) != 3) ? (v112 = v88[3]) : (v112 = *(a6 + 8)), v111 >= v112))
      {
LABEL_171:
        __assert_rtn("AddValue", "SparseMatrix.cpp", 124, "(col != m_width-1 && index < m_colIndices[col+1]) || (col == m_width-1 && index < m_maxNNZ)");
      }

      *(v93 + 8 * v111) = v107;
      *(v94 + 4 * v111) = v98;
      ++v89[2];
      *(*(v186 + 8) + 16) = *(*(v186 + 8) + 16) + v106 * v106;
      *(*(v186 + 8) + 16) = *(*(v186 + 8) + 16) + v107 * v107;
      ++v58;
      v59 += 4;
      if (v192 == v58)
      {
        v113 = 0;
        v114 = 0;
        v115 = v198[3];
        v116 = -v198[2];
        v117 = v198[0];
        v118 = v198[1];
        v119 = v198[4];
        v120 = -v198[5];
        v121 = -v198[8];
        v122 = v198[6];
        v123 = v198[7];
        v124 = v60 + v61 + v57;
        v125 = v189[563];
        v126 = v124 + 3;
        while (1)
        {
          if (v113)
          {
            v114 += (v113 - 1 < a4) & v125;
          }

          v127 = v126 - 3;
          v128 = *(8 * v113);
          v129 = v126 - 3;
          v130 = &v88[v129];
          v131 = v89[v129] + v88[v129];
          if (v126 - 3 == *(a6 + 9) - 1)
          {
            v132 = *(a6 + 8);
          }

          else
          {
            v132 = v130[1];
          }

          if (v131 >= v132 || ((v133 = -v188 / *(v195 + 8 * v113), *(v93 + 8 * v131) = v133, *(v94 + 4 * v131) = v114, v134 = v89[v127] + 1, v89[v127] = v134, v135 = v134 + *v130, *(a6 + 9) - 1 != v127) ? (v136 = v130[1]) : (v136 = *(a6 + 8)), v135 >= v136 || ((v137 = -(v128 * v116 + v117 * v128) / v128, v138 = v114 + 2, *(v93 + 8 * v135) = v137, *(v94 + 4 * v135) = v114 + 2, v139 = v89[v127] + 1, v89[v127] = v139, v140 = v139 + *v130, *(a6 + 9) - 1 != v127) ? (v141 = v130[1]) : (v141 = *(a6 + 8)), v140 >= v141)))
          {
            __assert_rtn("AddValue", "SparseMatrix.cpp", 124, "(col != m_width-1 && index < m_colIndices[col+1]) || (col == m_width-1 && index < m_maxNNZ)");
          }

          v142 = -(v128 * v116 + v118 * v128) / v128;
          *(v93 + 8 * v140) = v142;
          v143 = v114 + 3;
          *(v94 + 4 * v140) = v114 + 3;
          ++v89[v127];
          *(*(v186 + 8) + 8 * v127) = v137 * v137 + v133 * v133 + v142 * v142;
          v144 = v126 - 2;
          v145 = *(8 * v113);
          v146 = v126 - 2;
          v147 = &v88[v146];
          v148 = v89[v146] + v88[v146];
          v149 = v126 - 1;
          if (*(a6 + 9) == v126 - 1)
          {
            v150 = *(a6 + 8);
          }

          else
          {
            v150 = v147[1];
          }

          if (v148 >= v150 || ((*(v93 + 8 * v148) = v133, v151 = v144, *(v94 + 4 * v148) = v114 + 1, v152 = v89[v144] + 1, v89[v151] = v152, v153 = v152 + *v147, *(a6 + 9) != v149) ? (v154 = v147[1]) : (v154 = *(a6 + 8)), v153 >= v154 || ((v155 = -(v145 * v120 + v115 * v145) / v145, *(v93 + 8 * v153) = v155, *(v94 + 4 * v153) = v138, v156 = v89[v151] + 1, v89[v151] = v156, v157 = v156 + *v147, *(a6 + 9) != v149) ? (v158 = v147[1]) : (v158 = *(a6 + 8)), v157 >= v158)))
          {
            __assert_rtn("AddValue", "SparseMatrix.cpp", 124, "(col != m_width-1 && index < m_colIndices[col+1]) || (col == m_width-1 && index < m_maxNNZ)");
          }

          v159 = -(v145 * v120 + v119 * v145) / v145;
          *(v93 + 8 * v157) = v159;
          *(v94 + 4 * v157) = v143;
          ++v89[v151];
          *(*(v186 + 8) + 8 * v151) = v155 * v155 + v133 * v133 + v159 * v159;
          v160 = v126 - 1;
          v161 = *(v197 + 8 * v113);
          v162 = *(v196 + 8 * v113);
          v163 = *(8 * v113);
          v164 = v126 - 1;
          v165 = &v88[v164];
          v166 = v89[v164] + v88[v164];
          v167 = *(a6 + 9) == v126 ? *(a6 + 8) : v165[1];
          if (v166 >= v167)
          {
            break;
          }

          v168 = v188 / (*(v195 + 8 * v113) * *(v195 + 8 * v113));
          *(v93 + 8 * v166) = v168 * v161;
          *(v94 + 4 * v166) = v114;
          v169 = v89[v160] + 1;
          v89[v160] = v169;
          v170 = v169 + *v165;
          v171 = *(a6 + 9) == v126 ? *(a6 + 8) : v165[1];
          if (v170 >= v171)
          {
            break;
          }

          v172 = v168 * v162;
          *(v93 + 8 * v170) = v172;
          *(v94 + 4 * v170) = v114 + 1;
          v173 = v89[v160] + 1;
          v89[v160] = v173;
          v174 = v173 + *v165;
          v175 = *(a6 + 9) == v126 ? *(a6 + 8) : v165[1];
          if (v174 >= v175)
          {
            break;
          }

          v176 = -(v163 * v121 + v122 * v163) / v163;
          *(v93 + 8 * v174) = v176;
          *(v94 + 4 * v174) = v138;
          v177 = v89[v160] + 1;
          v89[v160] = v177;
          v178 = v177 + *v165;
          v179 = *(a6 + 9) == v126 ? *(a6 + 8) : v165[1];
          if (v178 >= v179)
          {
            break;
          }

          v180 = -(v163 * v121 + v123 * v163) / v163;
          *(v93 + 8 * v178) = v180;
          *(v94 + 4 * v178) = v143;
          ++v89[v160];
          *(*(v186 + 8) + 8 * v160) = v172 * v172 + v168 * v161 * (v168 * v161) + v176 * v176 + v180 * v180;
          v114 += 4;
          if (v113 < a4 && (v189[563] & 1) != 0)
          {
            v181 = v89[v160] + *v165;
            if (v126 == *(a6 + 9))
            {
              if (v181 >= *(a6 + 8))
              {
                break;
              }
            }

            else if (v181 >= v165[1])
            {
              break;
            }

            *(v93 + 8 * v181) = *(8 * v113);
            *(v94 + 4 * v181) = v114;
            ++v89[v160];
            *(*(v186 + 8) + 8 * v160) = *(*(v186 + 8) + 8 * v160) + *(8 * v113) * *(8 * v113);
          }

          ++v113;
          v126 += 3;
          if (v192 == v113)
          {
            goto LABEL_157;
          }
        }

        __assert_rtn("AddValue", "SparseMatrix.cpp", 124, "(col != m_width-1 && index < m_colIndices[col+1]) || (col == m_width-1 && index < m_maxNNZ)");
      }
    }
  }

LABEL_157:
  v182 = *(v186 + 20);
  if (v182)
  {
    v183 = 0;
    v184 = 8 * v182;
    do
    {
      *(*(v186 + 8) + v183) = sqrt(*(*(v186 + 8) + v183));
      v183 += 8;
    }

    while (v184 != v183);
  }

  v208 = off_285231258;
  if (v209 && v211 == 1)
  {
    MEMORY[0x245CBFC90]();
    v209 = 0;
    v212 = 0;
    v211 = 0;
  }

  v210 = 0;
  v203 = off_285231258;
  if (v204 && v206 == 1)
  {
    MEMORY[0x245CBFC90]();
    v204 = 0;
    v207 = 0;
    v206 = 0;
  }

  v205 = 0;
  *&v199 = off_285231258;
  if (*(&v199 + 1) && v201 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  return v197;
}

void sub_240389D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x440] = a15;
  if (STACK[0x448] && LOBYTE(STACK[0x458]) == 1)
  {
    MEMORY[0x245CBFC90]();
    STACK[0x448] = 0;
    STACK[0x460] = 0;
    LOBYTE(STACK[0x458]) = 0;
  }

  STACK[0x450] = 0;
  STACK[0x418] = a24;
  if (STACK[0x420] && LOBYTE(STACK[0x430]) == 1)
  {
    MEMORY[0x245CBFC90]();
    STACK[0x420] = 0;
    STACK[0x438] = 0;
    LOBYTE(STACK[0x430]) = 0;
  }

  STACK[0x428] = 0;
  STACK[0x3F0] = a27;
  if (STACK[0x3F8] && LOBYTE(STACK[0x408]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a37 && a39 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a42 && a44 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a47 && a49 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a52 && a54 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a57 && a59 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a62 && a64 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a67 && a69 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a72 && LOBYTE(STACK[0x208]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x218] = off_285231258;
  if (STACK[0x220] && LOBYTE(STACK[0x230]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x240] = off_285231258;
  if (STACK[0x248] && LOBYTE(STACK[0x258]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x268] = off_285231258;
  if (STACK[0x270] && LOBYTE(STACK[0x280]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x290] = off_285231258;
  if (STACK[0x298] && LOBYTE(STACK[0x2A8]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x2B8] = off_285231258;
  if (STACK[0x2C0] && LOBYTE(STACK[0x2D0]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x2E0] = off_285231258;
  if (STACK[0x2E8] && LOBYTE(STACK[0x2F8]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x308] = off_285231258;
  if (STACK[0x310] && LOBYTE(STACK[0x320]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x330] = off_285231258;
  if (STACK[0x338] && LOBYTE(STACK[0x348]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x358] = off_285231258;
  if (STACK[0x360] && LOBYTE(STACK[0x370]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x380] = off_285231258;
  if (STACK[0x388])
  {
    if (LOBYTE(STACK[0x398]) == 1)
    {
      MEMORY[0x245CBFC90]();
    }
  }

  _Unwind_Resume(a1);
}

void CGMC_BundleAdjustment::solveLinearEq(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a3 + 44);
  if (v6)
  {
    v9 = *(a3 + 40);
    *(a3 + 40) = v9 + a6;
    *(a3 + 44) = v6 - 1;
    if (a6 >= 1)
    {
      v10 = 0;
      v11 = *(a3 + 24);
      v12 = *a3;
      v13 = *(a3 + 8);
      v14 = (*(a3 + 16) + 4);
      v15 = sqrt(a1);
      do
      {
        v16 = *(v11 + 4 * v10) + *(v14 - 1);
        if (v10 == *(a3 + 36) - 1)
        {
          v17 = *(a3 + 32);
        }

        else
        {
          v17 = *v14;
        }

        if (v16 >= v17)
        {
          __assert_rtn("AddValue", "SparseMatrix.cpp", 124, "(col != m_width-1 && index < m_colIndices[col+1]) || (col == m_width-1 && index < m_maxNNZ)");
        }

        *(v12 + 8 * v16) = v15 * *(*(a5 + 8) + 8 * v10);
        *(v13 + 4 * v16) = v9 + v10;
        ++*(v11 + 4 * v10++);
        ++v14;
      }

      while (a6 != v10);
    }

    v18 = *(a4 + 20);
    if (v18 + a6)
    {
      operator new[]();
    }

    bzero(0, 0);
    memcpy(0, *(a4 + 8), 8 * v18);
    JacobianMatrix::Solve(a3);
  }

  __assert_rtn("Expand", "SparseMatrix.cpp", 134, "newNZPerCol <= (size_t)m_extraSpacePerCol");
}