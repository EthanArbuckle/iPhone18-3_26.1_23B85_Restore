void sub_238993334(_Unwind_Exception *a1)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v2 + 24));
  MEMORY[0x23EE6C500](v2, 0x10A0C40EBF3C9F8);

  _Unwind_Resume(a1);
}

void sub_238993668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **_ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(void **a1)
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

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v3 - 4);
        v3 -= 7;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void _ZN12GKCRTreeNodeI8NSObjectDv2_fE12InsertObjectEPS0_S1_S1_21GKCRTreeSplitStrategy(float32x2_t *a1, void *a2, uint64_t a3, float32x2_t a4, float32x2_t a5)
{
  v9 = a2;
  v20 = a5;
  v21 = a4;
  v10 = a1[3];
  v11 = a1[4];
  v12 = 0x6DB6DB6DB6DB6DB7 * ((*&v11 - v10) >> 3);
  if (v12 >= a1->u32[0])
  {
    _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(a1, v9, &v21, &v20);
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE14SplitQuadraticEPS0_RKS1_S5_(a1, v9);
        goto LABEL_21;
      }

      if (a3 == 3)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS0_RKS1_S5_(a1, v9);
        goto LABEL_21;
      }
    }

    else
    {
      if (!a3)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE10SplitHalveEPS0_RKS1_S5_(a1, v9);
        goto LABEL_21;
      }

      if (a3 == 1)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE11SplitLinearEPS0_RKS1_S5_(a1, v9);
        goto LABEL_21;
      }
    }

    __assert_rtn("InsertObject", "GKCRTree.h", 217, "false");
  }

  if (v11 == v10 || (v13 = v10[6], *&v13))
  {
    _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(a1, v9, &v21, &v20);
  }

  else
  {
    v14 = 0;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v15 = v10 + 2;
    v16 = 3.4028e38;
    do
    {
      v17 = vsub_f32(vmaxnm_f32(*v15, a5), vminnm_f32(v15[-1], a4));
      v17.f32[0] = vmul_f32(vrev64_s32(v17), v17).f32[0];
      v18 = v17.f32[0] < v16;
      v16 = fminf(v17.f32[0], v16);
      if (v18)
      {
        v13 = v14;
      }

      ++*&v14;
      v15 += 7;
    }

    while (v12 != *&v14);
    _ZN12GKCRTreeNodeI8NSObjectDv2_fE12InsertObjectEPS0_S1_S1_21GKCRTreeSplitStrategy(&v10[7 * *&v13], v9, a3, *&a4, *&a5);
    v19 = vbsl_s8(vcgt_f32(a1[2], v20), a1[2], v20);
    a1[1] = vbsl_s8(vcgt_f32(v21, a1[1]), a1[1], v21);
    a1[2] = v19;
  }

LABEL_21:
}

void _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(float32x2_t *a1, void *a2, float32x2_t *a3, float32x2_t *a4)
{
  v7 = a2;
  v8 = a1->i32[0];
  v9 = *a3;
  v10 = *a4;
  v11 = v7;
  LODWORD(v17) = v8;
  *(&v17 + 1) = v9;
  v18 = v10;
  memset(v19, 0, sizeof(v19));
  v20 = v11;
  v12 = a1[4];
  if (*&v12 >= *&a1[5])
  {
    v15 = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_(&a1[3], &v17);
    v14 = v20;
  }

  else
  {
    v13 = v17;
    *(*&v12 + 16) = v18;
    **&v12 = v13;
    *(*&v12 + 32) = 0;
    *(*&v12 + 40) = 0;
    *(*&v12 + 24) = 0;
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(*&v12 + 24, 0, 0, 0);
    v14 = v20;
    *(*&v12 + 48) = v14;
    v15 = *&v12 + 56;
    a1[4] = (*&v12 + 56);
  }

  a1[4] = v15;

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v19);
  if (*&a1[4] - *&a1[3] == 56)
  {
    a1[1] = *a3;
    a1[2] = *a4;
  }

  else
  {
    v16 = vbsl_s8(vcgt_f32(a1[2], *a4), a1[2], *a4);
    a1[1] = vbsl_s8(vcgt_f32(*a3, a1[1]), a1[1], *a3);
    a1[2] = v16;
  }
}

void sub_238993A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v17 + 24));

  _Unwind_Resume(a1);
}

void _ZN12GKCRTreeNodeI8NSObjectDv2_fE10SplitHalveEPS0_RKS1_S5_(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  v6 = v4[1];
  v50 = *v4;
  v51 = v6;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v52, *(v4 + 3), *(v4 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 4) - *(v4 + 3)) >> 3));
  v55 = *(v4 + 6);
  v7 = *(a1 + 24);
  v44 = *(v7 + 56);
  v8 = *(v7 + 80);
  v45 = *(v7 + 72);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v46, v8, *(v7 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 88) - v8) >> 3));
  v49 = *(v7 + 104);
  *v41 = *a1;
  *&v41[8] = 0u;
  v42 = 0u;
  *obj = 0u;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(&v42, (*v41 + 1));
  v9 = *(a1 + 24);
  v10 = *v41;
  *(v9 + 16) = 0;
  *v9 = v10;
  if (v9 != v41)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v9 + 24), v42, *(&v42 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v42 + 1) - v42) >> 3));
  }

  objc_storeStrong((v9 + 48), obj[1]);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v42);
  *v41 = *a1;
  *&v41[8] = 0u;
  v42 = 0u;
  *obj = 0u;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(&v42, (*v41 + 1));
  v11 = *v5;
  *v11[7].f32 = *v41;
  v11[9] = *&v41[16];
  if (&v11[7] != v41)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(&v11[10], v42, *(&v42 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v42 + 1) - v42) >> 3));
  }

  objc_storeStrong(&v11[13], obj[1]);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v42);
  _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(*v5, v55, &v50 + 1, &v51);
  v12 = *v5;
  if ((*&(*v5)[4] - 32) != &v52)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((*&(*v5)[4] - 32), v52, v53, 0x6DB6DB6DB6DB6DB7 * ((v53 - v52) >> 3));
    v12 = *v5;
  }

  _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v12, v49, &v44 + 1, &v45);
  v13 = *v5;
  v14 = (*&(*v5)[4] - 32);
  if (v14 != &v46)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v14, v46, v47, 0x6DB6DB6DB6DB6DB7 * ((v47 - v46) >> 3));
    v13 = *v5;
  }

  v15 = *(a1 + 32);
  v16 = v15 - v13;
  v17 = 0x6DB6DB6DB6DB6DB7 * (v15 - v13);
  v18 = v17 >> 1;
  if (v17 >= 6)
  {
    v19 = 0;
    v20 = v18 - 2;
    do
    {
      _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(*v5, *&(*v5)[v19 + 20], &(*v5)[v19 + 15], &(*v5)[v19 + 16]);
      v21 = &(*v5)[v19];
      v22 = (*&(*v5)[4] - 32);
      if (&v21[17] != v22)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v22, *&v21[17], *&v21[18], 0x6DB6DB6DB6DB6DB7 * ((*&v21[18] - *&v21[17]) >> 3));
      }

      v19 += 7;
      --v20;
    }

    while (v20);
    v13 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = v15 - v13;
    v17 = 0x6DB6DB6DB6DB6DB7 * (v15 - v13);
  }

  if (v18 < v17)
  {
    v23 = 7 * v18;
    do
    {
      _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v13 + 7, *&v13[v23 + 6], &v13[v23 + 1], &v13[v23 + 2]);
      v13 = *v5;
      v24 = &(*v5)[v23];
      v25 = (*&(*v5)[11] - 32);
      if (&v24[3] != v25)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v25, *&v24[3], *&v24[4], 0x6DB6DB6DB6DB6DB7 * ((*&v24[4] - *&v24[3]) >> 3));
        v13 = *v5;
      }

      ++v18;
      v15 = *(a1 + 32);
      v16 = v15 - v13;
      v17 = 0x6DB6DB6DB6DB6DB7 * (v15 - v13);
      v23 += 7;
    }

    while (v18 < v17);
  }

  if (v17 > 1)
  {
    if (v16 == 112)
    {
      i = v15;
    }

    else
    {
      for (i = v13 + 14; v15 != i; v15 -= 7)
      {

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v15[-4]);
      }

      *(a1 + 32) = i;
    }
  }

  else
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE8__appendEm(a1 + 24, 2 - v17);
    i = *(a1 + 32);
  }

  v27 = *(a1 + 24);
  v28 = v27[1];
  *(a1 + 8) = v28;
  v29 = v27[2];
  *(a1 + 16) = v29;
  v30 = 0x6DB6DB6DB6DB6DB7 * (i - v27);
  if (v30 >= 2)
  {
    v31 = vzip2_s32(v29, v28);
    v32 = v30 - 1;
    v33 = v27 + 9;
    do
    {
      v34 = v33[-1];
      v35 = v28.f32[1];
      v36 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v28, 1), vdup_lane_s32(v31, 1)), 0), v31, v28);
      v28.i32[0] = vminnm_f32(v34, v28).u32[0];
      v37 = vmaxnm_f32(*v33, v29);
      v38 = vzip1_s32(v37, v31);
      v37.i32[1] = v29.i32[1];
      v28.i32[1] = v36.i32[1];
      v36.f32[0] = fminf(v31.f32[1], v35);
      v39 = vbsl_s8(vdup_lane_s32(vcgt_f32(v36, vdup_lane_s32(v34, 1)), 0), v34, v28);
      v28.i32[1] = v39.i32[1];
      v34.i32[0] = v29.i32[1];
      v29 = vbsl_s8(vdup_lane_s32(vcgt_f32(v31, vdup_lane_s32(v29, 1)), 0), v38, v37);
      v31.f32[0] = fmaxf(v31.f32[0], v34.f32[0]);
      v40 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(*v33, 1), v31), 0), *v33, v29);
      v29.i32[1] = v40.i32[1];
      *(a1 + 8) = v28;
      *(a1 + 16) = v29;
      v31 = vzip2_s32(v40, v39);
      v33 += 7;
      --v32;
    }

    while (v32);
  }

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v46);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v52);
}

void sub_238993F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v33);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v32);
  _Unwind_Resume(a1);
}

void _ZN12GKCRTreeNodeI8NSObjectDv2_fE11SplitLinearEPS0_RKS1_S5_(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v61 = a2;
  v3 = (*a1 + 1);
  MEMORY[0x28223BE20]();
  v5 = &v60 - v4;
  bzero(&v60 - v4, v6);
  v7 = *(a1 + 24);
  v8 = (a1 + 24);
  v9 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v7) >> 3);
  if (*(a1 + 32) == v7)
  {
    v13 = 0;
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v7) >> 3);
    }

    v13 = 0;
    v14 = (v7 + 1);
    v15 = v5;
    do
    {
      v16 = *&vcagt_f32(vsub_f32(v11, *v14), vsub_f32(v10, v14[-1])) | 0x100000001;
      *v15 = v16;
      v15[v3] = HIDWORD(v16);
      v13 = vadd_s32(v13, v16);
      ++v15;
      v14 += 7;
      --v12;
    }

    while (v12);
  }

  if (v13.i32[0] >= 0)
  {
    v17 = v13.u32[0];
  }

  else
  {
    v17 = -v13.i32[0];
  }

  if (v9 + 1 < v17)
  {
    v18 = v9 + 1;
  }

  else
  {
    v18 = v17;
  }

  if (v13.i32[1] >= 0)
  {
    v19 = v13.u32[1];
  }

  else
  {
    v19 = -v13.i32[1];
  }

  v20 = v7[1];
  v72 = *v7;
  v73 = v20;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v21 = *(v7 + 3);
  v22 = *(v7 + 4);
  v62 = &v74;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v74, v21, v22, 0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 3));
  v77 = *(v7 + 6);
  v23 = *v8;
  v66 = *(*v8)[7].f32;
  v24 = v23[10];
  v67 = v23[9];
  v68 = 0;
  v69 = 0;
  v70 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v68, v24, *&v23[11], 0x6DB6DB6DB6DB6DB7 * ((*&v23[11] - v24) >> 3));
  v60 = &v60;
  v71 = *&v23[13];
  *v63 = *a1;
  *&v63[8] = 0u;
  v64 = 0u;
  v65 = 0u;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(&v64, (*v63 + 1));
  v25 = *v8;
  v26 = *v63;
  v25[2] = *&v63[16];
  *v25->f32 = v26;
  if (v25 != v63)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(&v25[3], v64, *(&v64 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v64 + 1) - v64) >> 3));
  }

  objc_storeStrong(&v25[6], *(&v65 + 1));

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v64);
  *v63 = *a1;
  *&v63[8] = 0u;
  v64 = 0u;
  v65 = 0u;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(&v64, (*v63 + 1));
  v27 = *v8;
  *v27[7].f32 = *v63;
  v27[9] = *&v63[16];
  if (&v27[7] != v63)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(&v27[10], v64, *(&v64 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v64 + 1) - v64) >> 3));
  }

  objc_storeStrong(&v27[13], *(&v65 + 1));

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v64);
  if (v18 <= v19)
  {
    v28 = 0;
  }

  else
  {
    v28 = v3;
  }

  v29 = &v5[4 * v28];
  v30 = *v8;
  if (*v29 == -1)
  {
    _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v30, v77, &v72 + 1, &v73);
    v31 = (*&(*v8)[4] - 32);
    if (v31 == v62)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v30 + 7, v77, &v72 + 1, &v73);
  v31 = (*&(*v8)[11] - 32);
  if (v31 != v62)
  {
LABEL_29:
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v31, v74, v75, 0x6DB6DB6DB6DB6DB7 * ((v75 - v74) >> 3));
  }

LABEL_30:
  v32 = *v8;
  if (*(v29 + 1) == -1)
  {
    _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v32, v71, &v66 + 1, &v67);
    v33 = (*&(*v8)[4] - 32);
    if (v33 == &v68)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v32 + 7, v71, &v66 + 1, &v67);
  v33 = (*&(*v8)[11] - 32);
  if (v33 != &v68)
  {
LABEL_34:
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v33, v68, v69, 0x6DB6DB6DB6DB6DB7 * ((v69 - v68) >> 3));
  }

LABEL_35:
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  v36 = v35 - v34;
  v37 = 0x6DB6DB6DB6DB6DB7 * (v35 - v34);
  if (v37 >= 3)
  {
    v38 = 2;
    v39 = 20;
    do
    {
      v40 = &v34[v39];
      v41 = &v34[v39 - 5];
      if (*&v29[4 * v38] == -1)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v34, *v40, v41, v40 - 4);
        v43 = (*&(*v8)[4] - 32);
        if (&(*v8)[v39 - 3] == v43)
        {
          goto LABEL_38;
        }

        v42 = &(*v8)[7 * v38 + 3];
      }

      else
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v34 + 7, *v40, v41, v40 - 4);
        v42 = &(*v8)[v39 - 3];
        v43 = (*&(*v8)[11] - 32);
        if (v42 == v43)
        {
          goto LABEL_38;
        }
      }

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v43, *v42, *(v42 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v42 + 8) - *v42) >> 3));
LABEL_38:
      ++v38;
      v34 = *(a1 + 24);
      v35 = *(a1 + 32);
      v36 = v35 - v34;
      v37 = 0x6DB6DB6DB6DB6DB7 * (v35 - v34);
      v39 += 7;
    }

    while (v37 > v38);
  }

  if (v37 > 1)
  {
    if (v36 != 112)
    {
      for (i = v34 + 14; v35 != i; v35 -= 7)
      {

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v35[-4]);
      }

      *(a1 + 32) = i;
      v35 = i;
    }
  }

  else
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE8__appendEm(a1 + 24, 2 - v37);
    v35 = *(a1 + 32);
  }

  v45 = *(a1 + 24);
  v46 = v45[1];
  *(a1 + 8) = v46;
  v47 = v45[2];
  *(a1 + 16) = v47;
  v48 = 0x6DB6DB6DB6DB6DB7 * (v35 - v45);
  if (v48 >= 2)
  {
    v49 = vzip2_s32(v47, v46);
    v50 = v48 - 1;
    v51 = v45 + 9;
    do
    {
      v52 = v51[-1];
      v53 = v46.f32[1];
      v54 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v46, 1), vdup_lane_s32(v49, 1)), 0), v49, v46);
      v46.i32[0] = vminnm_f32(v52, v46).u32[0];
      v55 = vmaxnm_f32(*v51, v47);
      v56 = vzip1_s32(v55, v49);
      v55.i32[1] = v47.i32[1];
      v46.i32[1] = v54.i32[1];
      v54.f32[0] = fminf(v49.f32[1], v53);
      v57 = vbsl_s8(vdup_lane_s32(vcgt_f32(v54, vdup_lane_s32(v52, 1)), 0), v52, v46);
      v46.i32[1] = v57.i32[1];
      v52.i32[0] = v47.i32[1];
      v47 = vbsl_s8(vdup_lane_s32(vcgt_f32(v49, vdup_lane_s32(v47, 1)), 0), v56, v55);
      v49.f32[0] = fmaxf(v49.f32[0], v52.f32[0]);
      v58 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(*v51, 1), v49), 0), *v51, v47);
      v47.i32[1] = v58.i32[1];
      *(a1 + 8) = v46;
      *(a1 + 16) = v47;
      v49 = vzip2_s32(v58, v57);
      v51 += 7;
      --v50;
    }

    while (v50);
  }

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v68);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v62);

  v59 = *MEMORY[0x277D85DE8];
}

void sub_2389945D8(_Unwind_Exception *a1)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v2 + 24));

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v1);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(*(v3 - 288));

  _Unwind_Resume(a1);
}

void _ZN12GKCRTreeNodeI8NSObjectDv2_fE14SplitQuadraticEPS0_RKS1_S5_(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 24);
  v5 = (a1 + 24);
  v6 = *(a1 + 32) - v4;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v4 + 9;
    v13 = 0.0;
    v14 = 1;
    do
    {
      v15 = v7 + 1;
      if (v10 > v7 + 1)
      {
        v16 = v4 + 7 * v7;
        v17 = v16[1];
        v18 = v16[2];
        v19 = v12;
        v20 = v14;
        do
        {
          v21 = vsub_f32(vmaxnm_f32(*v19, v18), vminnm_f32(v19[-1], v17));
          v22 = vmul_f32(vrev64_s32(v21), v21).f32[0];
          if (v22 > v13)
          {
            v9 = v20;
            v8 = v7;
          }

          v13 = fmaxf(v22, v13);
          ++v20;
          v19 += 7;
        }

        while (v10 != v20);
      }

      ++v14;
      v12 += 7;
      ++v7;
    }

    while (v15 != v11);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v23 = v4[1];
  v81 = *v4;
  v82 = v23;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v83, *(v4 + 3), *(v4 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 4) - *(v4 + 3)) >> 3));
  v86 = *(v4 + 6);
  v24 = *v5;
  v75 = *(*v5)[7].f32;
  v25 = v24[10];
  v76 = v24[9];
  v77 = 0;
  v78 = 0;
  v79 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v77, v25, *&v24[11], 0x6DB6DB6DB6DB6DB7 * ((*&v24[11] - v25) >> 3));
  v80 = *&v24[13];
  *v72 = *a1;
  *&v72[8] = 0u;
  v73 = 0u;
  *obj = 0u;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(&v73, (*v72 + 1));
  v26 = *v5;
  v27 = *v72;
  v26[2] = 0;
  *v26->f32 = v27;
  if (v26 != v72)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(&v26[3], v73, *(&v73 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v73 + 1) - v73) >> 3));
  }

  objc_storeStrong(&v26[6], obj[1]);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v73);
  *v72 = *a1;
  *&v72[8] = 0u;
  v73 = 0u;
  *obj = 0u;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(&v73, (*v72 + 1));
  v28 = *v5;
  *v28[7].f32 = *v72;
  v28[9] = *&v72[16];
  if (&v28[7] != v72)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(&v28[10], v73, *(&v73 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v73 + 1) - v73) >> 3));
  }

  objc_storeStrong(&v28[13], obj[1]);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v73);
  v29 = *v5;
  v30 = vrev64_s32(vsub_f32(vmaxnm_f32((*v5)[7 * v8 + 2], v82), vminnm_f32((*v5)[7 * v8 + 1], *(&v81 + 8))));
  v31 = vrev64_s32(vsub_f32(vmaxnm_f32((*v5)[7 * v9 + 2], v82), vminnm_f32((*v5)[7 * v9 + 1], *(&v81 + 8))));
  v32 = __PAIR64__(v31.u32[0], v30.u32[0]);
  v31.i32[0] = v30.i32[1];
  v33 = vmul_f32(v32, v31);
  if ((vcgt_f32(vdup_lane_s32(v33, 1), v33).u8[0] & 1) == 0)
  {
    _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v29 + 7, v86, &v81 + 1, &v82);
    v34 = (*&(*v5)[11] - 32);
    if (v34 == &v83)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v29, v86, &v81 + 1, &v82);
  v34 = (*&(*v5)[4] - 32);
  if (v34 != &v83)
  {
LABEL_22:
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v34, v83, v84, 0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3));
  }

LABEL_23:
  v35 = *v5;
  v36 = vrev64_s32(vsub_f32(vmaxnm_f32((*v5)[7 * v8 + 2], v76), vminnm_f32((*v5)[7 * v8 + 1], *(&v75 + 8))));
  v37 = vrev64_s32(vsub_f32(vmaxnm_f32((*v5)[7 * v9 + 2], v76), vminnm_f32((*v5)[7 * v9 + 1], *(&v75 + 8))));
  v38 = __PAIR64__(v37.u32[0], v36.u32[0]);
  v37.i32[0] = v36.i32[1];
  v39 = vmul_f32(v38, v37);
  if (vcgt_f32(vdup_lane_s32(v39, 1), v39).u8[0])
  {
    _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v35, v80, &v75 + 1, &v76);
    v40 = (*&(*v5)[4] - 32);
    if (v40 == &v77)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v35 + 7, v80, &v75 + 1, &v76);
  v40 = (*&(*v5)[11] - 32);
  if (v40 != &v77)
  {
LABEL_27:
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v40, v77, v78, 0x6DB6DB6DB6DB6DB7 * ((v78 - v77) >> 3));
  }

LABEL_28:
  v41 = *(a1 + 24);
  v42 = *(a1 + 32);
  v43 = v42 - v41;
  v44 = 0x6DB6DB6DB6DB6DB7 * (v42 - v41);
  if (v44 < 3)
  {
    goto LABEL_38;
  }

  v71 = v3;
  v45 = 0;
  v46 = 2;
  do
  {
    v47 = &v41[v45];
    v48 = &v41[v45 + 16];
    v49 = &v41[v45 + 15];
    v50 = vrev64_s32(vsub_f32(vmaxnm_f32(v41[7 * v8 + 2], *v48), vminnm_f32(v41[7 * v8 + 1], *v49)));
    v51 = vrev64_s32(vsub_f32(vmaxnm_f32(v41[7 * v9 + 2], *v48), vminnm_f32(v41[7 * v9 + 1], *v49)));
    v52 = __PAIR64__(v51.u32[0], v50.u32[0]);
    v51.i32[0] = v50.i32[1];
    v53 = vmul_f32(v52, v51);
    if (vcgt_f32(vdup_lane_s32(v53, 1), v53).u8[0])
    {
      _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v41, *&v47[20], v49, v48);
      v54 = (*&(*v5)[4] - 32);
      if (&(*v5)[v45 + 17] != v54)
      {
        v55 = &(*v5)[7 * v46 + 3];
LABEL_30:
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v54, *v55, *(v55 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v55 + 8) - *v55) >> 3));
      }
    }

    else
    {
      _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v41 + 7, *&v47[20], v49, v48);
      v55 = &(*v5)[v45 + 17];
      v54 = (*&(*v5)[11] - 32);
      if (v55 != v54)
      {
        goto LABEL_30;
      }
    }

    ++v46;
    v41 = *(a1 + 24);
    v42 = *(a1 + 32);
    v43 = v42 - v41;
    v44 = 0x6DB6DB6DB6DB6DB7 * (v42 - v41);
    v45 += 7;
  }

  while (v44 > v46);
  v3 = v71;
LABEL_38:
  if (v44 > 1)
  {
    if (v43 == 112)
    {
      i = v42;
    }

    else
    {
      for (i = v41 + 14; v42 != i; v42 -= 7)
      {

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v42[-4]);
      }

      *(a1 + 32) = i;
    }
  }

  else
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE8__appendEm(a1 + 24, 2 - v44);
    i = *(a1 + 32);
  }

  v57 = *(a1 + 24);
  v58 = v57[1];
  *(a1 + 8) = v58;
  v59 = v57[2];
  *(a1 + 16) = v59;
  v60 = 0x6DB6DB6DB6DB6DB7 * (i - v57);
  if (v60 >= 2)
  {
    v61 = vzip2_s32(v59, v58);
    v62 = v60 - 1;
    v63 = v57 + 9;
    do
    {
      v64 = v63[-1];
      v65 = v58.f32[1];
      v66 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v58, 1), vdup_lane_s32(v61, 1)), 0), v61, v58);
      v58.i32[0] = vminnm_f32(v64, v58).u32[0];
      v67 = vmaxnm_f32(*v63, v59);
      v68 = vzip1_s32(v67, v61);
      v67.i32[1] = v59.i32[1];
      v58.i32[1] = v66.i32[1];
      v66.f32[0] = fminf(v61.f32[1], v65);
      v69 = vbsl_s8(vdup_lane_s32(vcgt_f32(v66, vdup_lane_s32(v64, 1)), 0), v64, v58);
      v58.i32[1] = v69.i32[1];
      v64.i32[0] = v59.i32[1];
      v59 = vbsl_s8(vdup_lane_s32(vcgt_f32(v61, vdup_lane_s32(v59, 1)), 0), v68, v67);
      v61.f32[0] = fmaxf(v61.f32[0], v64.f32[0]);
      v70 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(*v63, 1), v61), 0), *v63, v59);
      v59.i32[1] = v70.i32[1];
      *(a1 + 8) = v58;
      *(a1 + 16) = v59;
      v61 = vzip2_s32(v70, v69);
      v63 += 7;
      --v62;
    }

    while (v62);
  }

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v77);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v83);
}

void sub_238994CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v33 + 24));

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v34);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v36);

  _Unwind_Resume(a1);
}

void _ZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS0_RKS1_S5_(void *a1, void *a2)
{
  v171 = a2;
  v3 = a1 + 3;
  v4 = *a1 / 2;
  if (*a1 < 6)
  {
    v4 = 2;
  }

  v176 = (*a1 - 2 * v4 + 2);
  v177 = (v4 - 1);
  v178 = a1;
  if (v176 >= 1)
  {
    v5 = 1;
    v173 = -1;
    v174 = 0;
    v6 = 3.4028e38;
    while (1)
    {
      v172 = v5;
      v9 = 1;
      v10 = 0.0;
      do
      {
        v11 = v9;
        v12 = a1[3];
        v13 = a1[4];
        v14 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v13 - v12) >> 3));
        if (v13 == v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        v175 = v11;
        LODWORD(v188) = v174;
        if (v11)
        {
          _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v12, v13, &v188, v15, 1);
        }

        else
        {
          _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v12, v13, &v188, v15, 1);
        }

        v16 = 0;
        v17 = 3.4028e38;
        do
        {
          v22 = *v3;
          v189 = 0;
          v188 = 0uLL;
          v23 = 56 * (v16 + v177) + v22;
          if (v16 + v177)
          {
            operator new();
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = v178[4];
          v184 = 0;
          v183 = 0uLL;
          if (v27 != v23)
          {
            if ((0x6DB6DB6DB6DB6DB7 * ((v27 - v23) >> 3)) <= 0x492492492492492)
            {
              operator new();
            }

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
          }

          v28 = v188;
          v29 = 0x6DB6DB6DB6DB6DB7 * (-v188 >> 3);
          if (v29 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = 0x6DB6DB6DB6DB6DB7 * (-v188 >> 3);
          }

          if (v188)
          {
            v31 = (v188 + 16);
            v32 = 3.4028e38;
            v33 = 1.1755e-38;
            v34 = v30;
            do
            {
              v32 = fminf(COERCE_FLOAT(*(v31 - 1)), v32);
              v33 = fmaxf(COERCE_FLOAT(*v31), v33);
              v31 += 7;
              --v34;
            }

            while (v34);
          }

          else
          {
            v33 = 1.1755e-38;
            v32 = 3.4028e38;
          }

          if (!v188)
          {
            v37 = 1.1755e-38;
            v36 = 3.4028e38;
            goto LABEL_41;
          }

          if (v29 < 8)
          {
            v35 = 0;
            v36 = 3.4028e38;
            v37 = 1.1755e-38;
LABEL_39:
            v47 = v30 - v35;
            v48 = (v188 + 56 * v35 + 20);
            do
            {
              v36 = fminf(*(v48 - 2), v36);
              v49 = *v48;
              v48 += 14;
              v37 = fmaxf(v49, v37);
              --v47;
            }

            while (v47);
            goto LABEL_41;
          }

          v35 = v30 & 0xFFFFFFFFFFFFFFF8;
          v38.i64[0] = 0x80000000800000;
          v38.i64[1] = 0x80000000800000;
          v39 = vnegq_f32(v38);
          v40 = (v188 + 236);
          v41.i64[0] = 0x80000000800000;
          v41.i64[1] = 0x80000000800000;
          v42 = v30 & 0xFFFFFFFFFFFFFFF8;
          v43.i64[0] = 0x80000000800000;
          v43.i64[1] = 0x80000000800000;
          v44 = v39;
          do
          {
            v45.i32[0] = *(v40 - 56);
            v45.i32[1] = *(v40 - 42);
            v45.i32[2] = *(v40 - 28);
            v45.i32[3] = *(v40 - 14);
            v46.i32[0] = *v40;
            v46.i32[1] = v40[14];
            v46.i32[2] = v40[28];
            v46.i32[3] = v40[42];
            v39 = vminnmq_f32(v45, v39);
            v44 = vminnmq_f32(v46, v44);
            v45.i32[0] = *(v40 - 54);
            v45.i32[1] = *(v40 - 40);
            v45.i32[2] = *(v40 - 26);
            v45.i32[3] = *(v40 - 12);
            v46.i32[0] = v40[2];
            v46.i32[1] = v40[16];
            v46.i32[2] = v40[30];
            v46.i32[3] = v40[44];
            v41 = vmaxnmq_f32(v45, v41);
            v43 = vmaxnmq_f32(v46, v43);
            v40 += 112;
            v42 -= 8;
          }

          while (v42);
          v37 = vmaxnmvq_f32(vmaxnmq_f32(v41, v43));
          v36 = vminnmvq_f32(vminnmq_f32(v39, v44));
          if (v29 != v35)
          {
            goto LABEL_39;
          }

LABEL_41:
          if (v188)
          {
            do
            {

              _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v24 - 32));
              v24 -= 56;
            }

            while (v24 != v28);
            v26 = *(&v183 + 1);
            v25 = v183;
          }

          for (*(&v188 + 1) = v28; v26 != v25; v26 -= 56)
          {

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v26 - 32));
          }

          v18.f32[0] = v33 - v32;
          v18.i32[1] = -8388609;
          v19 = vabs_f32(v18);
          v20.f32[0] = v37 - v36;
          v20.i32[1] = -8388609;
          v21 = vcvtq_f64_f32(vabs_f32(v20));
          v17 = fminf(v17, vaddv_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(v21, v21), vcvtq_f64_f32(vadd_f32(v19, v19))))));
          *(&v183 + 1) = v25;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v183);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v188);
          ++v16;
        }

        while (v16 != v176);
        v9 = 0;
        v10 = v17 + v10;
        a1 = v178;
      }

      while ((v175 & 1) != 0);
      v5 = 0;
      v7 = v6 <= v10;
      v6 = fminf(v6, v10);
      if (v7)
      {
        v8 = v173;
      }

      else
      {
        v8 = v174;
      }

      v173 = v8;
      v174 = 1;
      if ((v172 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  v50 = a1[3];
  v51 = a1[4];
  v52 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v51 - v50) >> 3));
  LODWORD(v188) = 0;
  if (v51 == v50)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v50, v51, &v188, v53, 1);
  v54 = a1[3];
  v55 = a1[4];
  v56 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v55 - v54) >> 3));
  LODWORD(v188) = 0;
  if (v55 == v54)
  {
    v57 = 0;
  }

  else
  {
    v57 = v56;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v54, v55, &v188, v57, 1);
  v58 = a1[3];
  v59 = a1[4];
  v60 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v59 - v58) >> 3));
  LODWORD(v188) = 1;
  if (v59 == v58)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v58, v59, &v188, v61, 1);
  v62 = a1[3];
  v63 = a1[4];
  v64 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v63 - v62) >> 3));
  LODWORD(v188) = 1;
  if (v63 == v62)
  {
    v65 = 0;
  }

  else
  {
    v65 = v64;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v62, v63, &v188, v65, 1);
  v173 = -1;
LABEL_60:
  v66 = a1[3];
  v67 = a1[4];
  v68 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v67 - v66) >> 3));
  LODWORD(v188) = v173;
  if (v67 == v66)
  {
    v69 = 0;
  }

  else
  {
    v69 = v68;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v66, v67, &v188, v69, 1);
  if (v176 >= 1)
  {
    v70 = 0;
    v71 = 0;
    v72 = 3.4028e38;
    v73.i64[0] = 0x80000000800000;
    v73.i64[1] = 0x80000000800000;
    v179 = vnegq_f32(v73);
    while (1)
    {
      v74 = 56 * (v70 + v177);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEEC2B8ne200100INS_11__wrap_iterIPS4_EELi0EEET_SC_(&v188, *v3, v74 + *v3);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEEC2B8ne200100INS_11__wrap_iterIPS4_EELi0EEET_SC_(&v183, v74 + v178[3], v178[4]);
      v75 = *(&v188 + 1);
      v76 = v188;
      v77 = 0x6DB6DB6DB6DB6DB7 * ((*(&v188 + 1) - v188) >> 3);
      v79 = *(&v183 + 1);
      v78 = v183;
      v80 = (*(&v183 + 1) - v183) >> 3;
      v81 = 0x6DB6DB6DB6DB6DB7 * v80;
      if (v77 <= 1)
      {
        v82 = 1;
      }

      else
      {
        v82 = 0x6DB6DB6DB6DB6DB7 * ((*(&v188 + 1) - v188) >> 3);
      }

      if (v81 <= 1)
      {
        v83 = 1;
      }

      else
      {
        v83 = 0x6DB6DB6DB6DB6DB7 * v80;
      }

      if (*(&v188 + 1) == v188)
      {
        v85 = 1.1755e-38;
        if (*(&v183 + 1) != v183)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v84 = (v188 + 16);
        v85 = 1.1755e-38;
        v86 = v82;
        do
        {
          v87 = *v84;
          v84 += 7;
          v85 = fmaxf(*&v87, v85);
          --v86;
        }

        while (v86);
        if (*(&v183 + 1) != v183)
        {
LABEL_76:
          v88 = (v183 + 16);
          v89 = 3.4028e38;
          v90 = 1.1755e-38;
          v91 = v83;
          do
          {
            v89 = fminf(COERCE_FLOAT(*(v88 - 1)), v89);
            v90 = fmaxf(COERCE_FLOAT(*v88), v90);
            v88 += 7;
            --v91;
          }

          while (v91);
          goto LABEL_81;
        }
      }

      v90 = 1.1755e-38;
      v89 = 3.4028e38;
LABEL_81:
      v92 = v89 < v85;
      v7 = v90 < v85;
      v93 = v90 > v85;
      v94 = v85 - v89;
      v95 = v7;
      if (!v92 || !v93)
      {
        v94 = 1.0;
      }

      v96 = v90 - v89;
      if ((v92 & v95) == 0)
      {
        v96 = 1.0;
      }

      if (*(&v188 + 1) == v188)
      {
        v98 = 1.1755e-38;
        goto LABEL_97;
      }

      if (v77 < 8)
      {
        v97 = 0;
        v98 = 1.1755e-38;
LABEL_95:
        v105 = (v188 + 56 * v97 + 20);
        v106 = v82 - v97;
        do
        {
          v107 = *v105;
          v105 += 14;
          v98 = fmaxf(v107, v98);
          --v106;
        }

        while (v106);
        goto LABEL_97;
      }

      v97 = v82 & 0xFFFFFFFFFFFFFFF8;
      v99 = (v188 + 244);
      v100.i64[0] = 0x80000000800000;
      v100.i64[1] = 0x80000000800000;
      v101 = v82 & 0xFFFFFFFFFFFFFFF8;
      v102.i64[0] = 0x80000000800000;
      v102.i64[1] = 0x80000000800000;
      do
      {
        v103.i32[0] = *(v99 - 56);
        v103.i32[1] = *(v99 - 42);
        v103.i32[2] = *(v99 - 28);
        v103.i32[3] = *(v99 - 14);
        v104.i32[0] = *v99;
        v104.i32[1] = v99[14];
        v104.i32[2] = v99[28];
        v104.i32[3] = v99[42];
        v100 = vmaxnmq_f32(v103, v100);
        v102 = vmaxnmq_f32(v104, v102);
        v99 += 112;
        v101 -= 8;
      }

      while (v101);
      v98 = vmaxnmvq_f32(vmaxnmq_f32(v100, v102));
      if (v77 != v97)
      {
        goto LABEL_95;
      }

LABEL_97:
      if (*(&v183 + 1) == v183)
      {
        v110 = 1.1755e-38;
        v109 = 3.4028e38;
      }

      else
      {
        if (v81 >= 8)
        {
          v108 = v83 & 0xFFFFFFFFFFFFFFF8;
          v111 = (v183 + 236);
          v112.i64[0] = 0x80000000800000;
          v112.i64[1] = 0x80000000800000;
          v113 = v83 & 0xFFFFFFFFFFFFFFF8;
          v114.i64[0] = 0x80000000800000;
          v114.i64[1] = 0x80000000800000;
          v115 = v179;
          v116 = v179;
          do
          {
            v117.i32[0] = *(v111 - 56);
            v117.i32[1] = *(v111 - 42);
            v117.i32[2] = *(v111 - 28);
            v117.i32[3] = *(v111 - 14);
            v118.i32[0] = *v111;
            v118.i32[1] = v111[14];
            v118.i32[2] = v111[28];
            v118.i32[3] = v111[42];
            v116 = vminnmq_f32(v117, v116);
            v115 = vminnmq_f32(v118, v115);
            v117.i32[0] = *(v111 - 54);
            v117.i32[1] = *(v111 - 40);
            v117.i32[2] = *(v111 - 26);
            v117.i32[3] = *(v111 - 12);
            v118.i32[0] = v111[2];
            v118.i32[1] = v111[16];
            v118.i32[2] = v111[30];
            v118.i32[3] = v111[44];
            v112 = vmaxnmq_f32(v117, v112);
            v114 = vmaxnmq_f32(v118, v114);
            v111 += 112;
            v113 -= 8;
          }

          while (v113);
          v110 = vmaxnmvq_f32(vmaxnmq_f32(v112, v114));
          v109 = vminnmvq_f32(vminnmq_f32(v116, v115));
          if (v81 == v108)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v108 = 0;
          v109 = 3.4028e38;
          v110 = 1.1755e-38;
        }

        v119 = v83 - v108;
        v120 = (v183 + 56 * v108 + 20);
        do
        {
          v109 = fminf(*(v120 - 2), v109);
          v121 = *v120;
          v120 += 14;
          v110 = fmaxf(v121, v110);
          --v119;
        }

        while (v119);
      }

LABEL_106:
      v122 = v94 * v96;
      v123 = v98 - v109;
      if (v109 >= v98 || v110 <= v98)
      {
        v123 = 1.0;
      }

      v124 = v122 * v123;
      v125 = v110 - v109;
      if (v109 >= v98 || v110 >= v98)
      {
        v125 = 1.0;
      }

      v126 = v124 * v125;
      if (v72 > (v124 * v125))
      {
        v71 = v70;
      }

      if (*(&v188 + 1) != v188)
      {
        do
        {

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v75 - 32));
          v75 -= 56;
        }

        while (v75 != v76);
        v79 = *(&v183 + 1);
        v78 = v183;
      }

      for (*(&v188 + 1) = v76; v79 != v78; v79 -= 56)
      {

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v79 - 32));
      }

      v72 = fminf(v72, v126);
      *(&v183 + 1) = v78;
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v183);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v188);
      if (++v70 == v176)
      {
        v127 = 56 * v71;
        a1 = v178;
        goto LABEL_120;
      }
    }
  }

  v127 = 0;
LABEL_120:
  v128 = v127 + 56 * v177;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEEC2B8ne200100INS_11__wrap_iterIPS4_EELi0EEET_SC_(&v195, *v3, v128 + *v3);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEEC2B8ne200100INS_11__wrap_iterIPS4_EELi0EEET_SC_(&v193, v128 + a1[3], a1[4]);
  v129 = *v3;
  v130 = *(*v3 + 16);
  v188 = **v3;
  v189 = v130;
  v190 = 0;
  v191[0] = 0;
  v191[1] = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v190, *(v129 + 24), *(v129 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v129 + 32) - *(v129 + 24)) >> 3));
  v192 = *(v129 + 48);
  v131 = *v3;
  v183 = *(*v3 + 56);
  v132 = *(v131 + 80);
  v184 = *(v131 + 72);
  v185 = 0;
  v186[0] = 0;
  v186[1] = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v185, v132, *(v131 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v131 + 88) - v132) >> 3));
  v187 = *(v131 + 104);
  *v180 = *a1;
  *&v180[8] = 0u;
  v181 = 0u;
  *obj = 0u;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(&v181, (*v180 + 1));
  v133 = *v3;
  v134 = *v180;
  *(v133 + 16) = 0;
  *v133 = v134;
  if (v133 != v180)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v133 + 24), v181, *(&v181 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v181 + 1) - v181) >> 3));
  }

  objc_storeStrong((v133 + 48), obj[1]);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v181);
  *v180 = *v178;
  *&v180[8] = 0u;
  v181 = 0u;
  *obj = 0u;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(&v181, (*v180 + 1));
  v135 = *v3;
  *(v135 + 56) = *v180;
  *(v135 + 72) = *&v180[16];
  if ((v135 + 56) != v180)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v135 + 80), v181, *(&v181 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v181 + 1) - v181) >> 3));
  }

  objc_storeStrong((v135 + 104), obj[1]);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v181);
  v136 = 0;
  for (i = 24; ; i += 56)
  {
    v141 = v195;
    v140 = j;
    v142 = 0x6DB6DB6DB6DB6DB7 * ((j - v195) >> 3);
    v143 = v193;
    v144 = v194;
    if (v136 >= v142 + 0x6DB6DB6DB6DB6DB7 * ((v194 - v193) >> 3))
    {
      break;
    }

    if (v136 >= v142)
    {
      v147 = *v3;
      if (v136 == 1)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v147 + 7, v187, &v183 + 1, &v184);
        v146 = (*(*v3 + 88) - 32);
        if (v146 != &v185)
        {
          v138 = v185;
          v139 = v186;
LABEL_126:
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v146, v138, *v139, 0x6DB6DB6DB6DB6DB7 * ((*v139 - v138) >> 3));
        }
      }

      else if (v136)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v147 + 7, *&v193[i + 24 + -8 * ((j - v195) >> 3)], &v193[i - 16 + -8 * ((j - v195) >> 3)], &v193[i - 8 + -8 * ((j - v195) >> 3)]);
        v150 = &v193[i + -56 * v142];
        v146 = (*(*v3 + 88) - 32);
        if (v150 != v146)
        {
          v151 = *v150;
          v139 = (v150 + 1);
          v138 = v151;
          goto LABEL_126;
        }
      }

      else
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v147 + 7, v192, &v188 + 1, &v189);
        v146 = (*(*v3 + 88) - 32);
        if (v146 != &v190)
        {
          v138 = v190;
          v139 = v191;
          goto LABEL_126;
        }
      }
    }

    else
    {
      v145 = *v3;
      if (v136 == 1)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v145, v187, &v183 + 1, &v184);
        v146 = (*(*v3 + 32) - 32);
        if (v146 != &v185)
        {
          v138 = v185;
          v139 = v186;
          goto LABEL_126;
        }
      }

      else if (v136)
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v145, *&v195[i + 24], &v195[i - 16], &v195[i - 8]);
        v148 = &v195[i];
        v146 = (*(*v3 + 32) - 32);
        if (&v195[i] != v146)
        {
          v149 = *v148;
          v139 = (v148 + 8);
          v138 = v149;
          goto LABEL_126;
        }
      }

      else
      {
        _ZN12GKCRTreeNodeI8NSObjectDv2_fE9AddObjectEPS0_RKS1_S5_(v145, v192, &v188 + 1, &v189);
        v146 = (*(*v3 + 32) - 32);
        if (v146 != &v190)
        {
          v138 = v190;
          v139 = v191;
          goto LABEL_126;
        }
      }
    }

    ++v136;
  }

  if (j != v195)
  {
    do
    {

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v140 - 4);
      v140 -= 56;
    }

    while (v140 != v141);
    v143 = v193;
    v144 = v194;
  }

  for (j = v141; v144 != v143; v144 -= 56)
  {

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v144 - 4);
  }

  v194 = v143;
  v152 = v178[4];
  v153 = v178[3];
  v154 = 0x6DB6DB6DB6DB6DB7 * ((v152 - v153) >> 3);
  if (v154 > 1)
  {
    if (v152 - v153 == 112)
    {
      k = v178[4];
      v155 = v178;
    }

    else
    {
      for (k = v153 + 112; v152 != k; v152 -= 56)
      {

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v152 - 32));
      }

      v155 = v178;
      v178[4] = k;
    }
  }

  else
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE8__appendEm(v3, 2 - v154);
    v155 = v178;
    k = v178[4];
  }

  v157 = v155[3];
  v158 = v157[1];
  v155[1] = v158;
  v159 = v157[2];
  v155[2] = v159;
  v160 = 0x6DB6DB6DB6DB6DB7 * ((k - v157) >> 3);
  if (v160 >= 2)
  {
    v161 = vzip2_s32(v159, v158);
    v162 = v160 - 1;
    v163 = v157 + 9;
    do
    {
      v164 = v163[-1];
      v165 = v158.f32[1];
      v166 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v158, 1), vdup_lane_s32(v161, 1)), 0), v161, v158);
      v158.i32[0] = vminnm_f32(v164, v158).u32[0];
      v167 = vmaxnm_f32(*v163, v159);
      v168 = vzip1_s32(v167, v161);
      v167.i32[1] = v159.i32[1];
      v158.i32[1] = v166.i32[1];
      v166.f32[0] = fminf(v161.f32[1], v165);
      v169 = vbsl_s8(vdup_lane_s32(vcgt_f32(v166, vdup_lane_s32(v164, 1)), 0), v164, v158);
      v158.i32[1] = v169.i32[1];
      v164.i32[0] = v159.i32[1];
      v159 = vbsl_s8(vdup_lane_s32(vcgt_f32(v161, vdup_lane_s32(v159, 1)), 0), v168, v167);
      v161.f32[0] = fmaxf(v161.f32[0], v164.f32[0]);
      v170 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(*v163, 1), v161), 0), *v163, v159);
      v159.i32[1] = v170.i32[1];
      v155[1] = v158;
      v155[2] = v159;
      v161 = vzip2_s32(v170, v169);
      v163 += 7;
      --v162;
    }

    while (v162);
  }

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v185);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v190);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v193);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v195);
}

void sub_238995F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(a19);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(a21);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v45 - 200));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v45 - 176));

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJS4_EEEPS4_DpOT_(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v12 = *a2;
  v7 = *(a2 + 24);
  *(v12 + 16) = *(a2 + 16);
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 24) = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(56 * v2 + 24, v7, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v7) >> 3));
  *(v12 + 48) = *(a2 + 48);
  v8 = *(a1 + 8);
  v9 = 56 * v2 + *a1 - v8;
  _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI12GKCRTreeNodeI8NSObjectDv2_fEEEPS5_EEvRT_T0_SA_SA_(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 56 * v2 + 56;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return 56 * v2 + 56;
}

void sub_23899625C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__114__split_bufferI12GKCRTreeNodeI8NSObjectDv2_fERNS_9allocatorIS4_EEED1Ev(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }
}

void sub_2389963B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorI12GKCRTreeNodeI8NSObjectDv2_fEEEPS6_EEED1B8ne200100Ev(&a11);
  *(v11 + 8) = v12;
  _ZNSt3__128__exception_guard_exceptionsINS_6vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS5_EEE16__destroy_vectorEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void ***_ZNSt3__128__exception_guard_exceptionsINS_6vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS5_EEE16__destroy_vectorEED1B8ne200100Ev(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v4 - 4);
          v4 -= 7;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278A5C028, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorI12GKCRTreeNodeI8NSObjectDv2_fEEEPS6_EEED1B8ne200100Ev(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 56)
    {

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v4 - 32));
    }
  }

  return a1;
}

uint64_t _ZNSt3__114__split_bufferI12GKCRTreeNodeI8NSObjectDv2_fERNS_9allocatorIS4_EEED1Ev(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **_ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI12GKCRTreeNodeI8NSObjectDv2_fEEEPS5_EEvRT_T0_SA_SA_(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v12 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(v4 + 16) = v7[2];
      *v4 = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v4 + 24, v7[3], v7[4], 0x6DB6DB6DB6DB6DB7 * ((v7[4] - v7[3]) >> 3));
      *(v4 + 48) = v7[6];
      v7 += 7;
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v7 != a3);
    v9 = a2 + 3;
    do
    {

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v9);
      v11 = v9 + 4;
      v9 += 7;
    }

    while (v11 != a3);
  }

  return result;
}

void *_ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE7reserveEm(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void sub_238996834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__114__split_bufferI12GKCRTreeNodeI8NSObjectDv2_fERNS_9allocatorIS4_EEED1Ev(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(void **a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v9 - 4);
          v9 -= 7;
        }

        while (v9 != v7);
        v10 = *a1;
      }

      a1[1] = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x492492492492492)
    {
      v11 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      v12 = 2 * v11;
      if (2 * v11 <= a4)
      {
        v12 = a4;
      }

      if (v11 >= 0x249249249249249)
      {
        v13 = 0x492492492492492;
      }

      else
      {
        v13 = v12;
      }

      if (v13 <= 0x492492492492492)
      {
        operator new();
      }
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v14 = a1[1];
  if (0x6DB6DB6DB6DB6DB7 * (v14 - v7) >= a4)
  {
    if (a2 != a3)
    {
      v22 = (a2 + 32);
      do
      {
        v23 = v22 - 4;
        v24 = *(v22 - 2);
        v7[2] = *(v22 - 2);
        *v7 = v24;
        if (v7 != (v22 - 4))
        {
          v25 = *(v22 - 1);
          v26 = *v22;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v7 + 3);
        }

        objc_storeStrong(v7 + 6, v22[2]);
        v7 += 7;
        v22 += 7;
      }

      while (v23 + 7 != a3);
      v14 = a1[1];
    }

    for (; v14 != v7; v14 -= 7)
    {

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v14 - 4);
    }

    a1[1] = v7;
  }

  else
  {
    v15 = (a2 + v14 - v7);
    if (v14 != v7)
    {
      v16 = (v7 + 3);
      v17 = (a2 + 32);
      do
      {
        v18 = v17 - 4;
        v19 = *(v17 - 2);
        *(v16 - 1) = *(v17 - 2);
        *(v16 - 24) = v19;
        if (v16 - 24 != (v17 - 4))
        {
          v20 = *(v17 - 1);
          v21 = *v17;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v16);
        }

        objc_storeStrong(v16 + 3, v17[2]);
        v16 += 56;
        v17 += 7;
      }

      while (v18 + 7 != v15);
      v14 = a1[1];
    }

    v29 = v14;
    v27 = v14;
    if (v15 != a3)
    {
      v27 = v14;
      do
      {
        v28 = *v15;
        v27[2] = *(v15 + 2);
        *v27 = v28;
        v27[3] = 0;
        v27[4] = 0;
        v27[5] = 0;
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m((v27 + 3), *(v15 + 3), *(v15 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(v15 + 4) - *(v15 + 3)) >> 3));
        v27[6] = *(v15 + 6);
        v15 = (v15 + 56);
        v27 = v29 + 7;
        v29 += 7;
      }

      while (v15 != a3);
    }

    a1[1] = v27;
  }
}

void sub_238996BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorI12GKCRTreeNodeI8NSObjectDv2_fEEEPS6_EEED1B8ne200100Ev(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_238996BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorI12GKCRTreeNodeI8NSObjectDv2_fEEEPS6_EEED1B8ne200100Ev(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 56 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0uLL;
        *(v3 + 24) = 0uLL;
        *(v3 + 40) = 0uLL;
        v3 += 56;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x492492492492492)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x249249249249249)
    {
      v8 = 0x492492492492492;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 56 * v5;
    *(&v15 + 1) = 0;
    v11 = 56 * v5;
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0uLL;
      *(v11 + 24) = 0uLL;
      *(v11 + 40) = 0uLL;
      v11 += 56;
    }

    while (v11 != 56 * v5 + 56 * a2);
    *&v15 = v10 + 56 * a2;
    v12 = *(a1 + 8);
    v13 = v10 + *a1 - v12;
    _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorI12GKCRTreeNodeI8NSObjectDv2_fEEEPS5_EEvRT_T0_SA_SA_(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v15;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_238996DAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__114__split_bufferI12GKCRTreeNodeI8NSObjectDv2_fERNS_9allocatorIS4_EEED1Ev(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(uint64_t result, void **a2, _DWORD *a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v33 = (a2 - 7);
    v10 = v9;
LABEL_3:
    v11 = a4 - 1;
    while (1)
    {
      v9 = v10;
      a4 = v11;
      v12 = a2 - v10;
      v13 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v10) >> 3);
      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            return _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(v10, v10 + 56, v33, a3);
          case 4:
            return _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEvT1_SC_SC_SC_T0_(v10, v10 + 56, v10 + 112, v33, a3);
          case 5:
            return _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(v10, v10 + 56, v10 + 112, v10 + 168, v33, a3);
        }
      }

      else
      {
        if (v13 < 2)
        {
          return result;
        }

        if (v13 == 2)
        {
          v24 = *(a2 - 5);
          v44 = *v33;
          v45 = v24;
          memset(v46, 0, sizeof(v46));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, *(a2 - 4), *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - *(a2 - 4)) >> 3));
          v47 = *(a2 - 1);
          v25 = *(v10 + 16);
          v41 = *v10;
          v42 = v25;
          memset(v43, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v10 + 24), *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - *(v10 + 24)) >> 3));
          v43[3] = *(v10 + 48);
          v26 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
          v27 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
          if (v26 < v27)
          {
            return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v10, v33);
          }

          return result;
        }
      }

      if (v12 <= 1343)
      {
        if (a5)
        {
          return _ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_SC_T0_(v10, a2, a3);
        }

        else
        {
          return _ZNSt3__126__insertion_sort_unguardedB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_SC_T0_(v10, a2, a3);
        }
      }

      if (v11 == -1)
      {
        if (v10 != a2)
        {
          v28 = (v13 - 2) >> 1;
          v29 = v28 + 1;
          v30 = v10 + 56 * v28;
          do
          {
            _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_(v9, a3, v13, v30);
            v30 -= 56;
            --v29;
          }

          while (v29);
          v31 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
          do
          {
            result = _ZNSt3__110__pop_heapB8ne200100INS_17_ClassicAlgPolicyEZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE(v9, a2, a3, v31);
            a2 -= 7;
          }

          while (v31-- > 2);
        }

        return result;
      }

      v14 = v13 >> 1;
      v15 = (v10 + 56 * v14);
      if (v12 >= 0x1C01)
      {
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(v9, v9 + 56 * v14, v33, a3);
        v16 = v9 + 56 * v14;
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 56, v16 - 56, (a2 - 14), a3);
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 112, v16 + 56, (a2 - 21), a3);
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(v16 - 56, v15, v16 + 56, a3);
        _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v9, v15);
        if (a5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 56 * v14, v9, v33, a3);
        if (a5)
        {
          goto LABEL_19;
        }
      }

      v17 = *(v9 - 56);
      v38 = *(v9 - 40);
      v37 = v17;
      memset(v39, 0, sizeof(v39));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, *(v9 - 32), *(v9 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v9 - 24) - *(v9 - 32)) >> 3));
      v40 = *(v9 - 8);
      v18 = *(v9 + 16);
      v34 = *v9;
      v35 = v18;
      memset(v36, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v36, *(v9 + 24), *(v9 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v9 + 32) - *(v9 + 24)) >> 3));
      v36[3] = *(v9 + 48);
      v19 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v20 = *((&v34 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v36);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);
      if (v19 >= v20)
      {
        result = _ZNSt3__131__partition_with_equals_on_leftB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E_EET0_SC_SC_T1_(v9, a2, a3);
        v10 = result;
        a5 = 0;
        goto LABEL_3;
      }

LABEL_19:
      v21 = _ZNSt3__132__partition_with_equals_on_rightB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E_EENS_4pairIT0_bEESD_SD_T1_(v9, a2, a3);
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      v23 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEbT1_SC_T0_(v9, v21, a3);
      v10 = v21 + 56;
      result = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEbT1_SC_T0_(v21 + 56, a2, a3);
      if (result)
      {
        break;
      }

      v11 = a4 - 1;
      if (!v23)
      {
LABEL_22:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v9, v21, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v21 + 56;
        goto LABEL_3;
      }
    }

    a2 = v21;
    if (!v23)
    {
      continue;
    }

    return result;
  }
}

uint64_t _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v63 = *a2;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v64 = v9;
  memset(v65, 0, sizeof(v65));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v65, v8, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v8) >> 3));
  v66 = *(a2 + 48);
  v60 = *a1;
  v10 = *(a1 + 24);
  v61 = *(a1 + 16);
  memset(v62, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v62, v10, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v10) >> 3));
  v62[3] = *(a1 + 48);
  v11 = *((&v63 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
  v12 = *((&v60 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v62);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v65);
  if (v11 < v12)
  {
    v42 = *a3;
    v13 = *(a3 + 24);
    v43 = *(a3 + 16);
    memset(v44, 0, sizeof(v44));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v44, v13, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v13) >> 3));
    v45 = *(a3 + 48);
    v39 = *a2;
    v14 = *(a2 + 24);
    v40 = *(a2 + 16);
    memset(v41, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v41, v14, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v14) >> 3));
    v41[3] = *(a2 + 48);
    v15 = *((&v42 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    v16 = *((&v39 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v41);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v44);
    v17 = a1;
    if (v15 < v16)
    {
LABEL_5:
      v22 = a3;
LABEL_9:
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v17, v22);
      return 1;
    }

    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
    v35 = *a3;
    v18 = *(a3 + 24);
    v36 = *(a3 + 16);
    memset(v37, 0, sizeof(v37));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v37, v18, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v18) >> 3));
    v38 = *(a3 + 48);
    v32 = *a2;
    v19 = *(a2 + 24);
    v33 = *(a2 + 16);
    memset(v34, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v34, v19, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v19) >> 3));
    v34[3] = *(a2 + 48);
    v20 = *((&v35 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    v21 = *((&v32 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v34);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v37);
    if (v20 < v21)
    {
      v17 = a2;
      goto LABEL_5;
    }

    return 1;
  }

  v56 = *a3;
  v23 = *(a3 + 24);
  v57 = *(a3 + 16);
  memset(v58, 0, sizeof(v58));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v58, v23, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v23) >> 3));
  v59 = *(a3 + 48);
  v53 = *a2;
  v24 = *(a2 + 24);
  v54 = *(a2 + 16);
  memset(v55, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v24, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v24) >> 3));
  v55[3] = *(a2 + 48);
  v25 = *((&v56 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
  v26 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v58);
  if (v25 < v26)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
    v49 = *a2;
    v27 = *(a2 + 24);
    v50 = *(a2 + 16);
    memset(v51, 0, sizeof(v51));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v51, v27, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v27) >> 3));
    v52 = *(a2 + 48);
    v46 = *a1;
    v28 = *(a1 + 24);
    v47 = *(a1 + 16);
    memset(v48, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v48, v28, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v28) >> 3));
    v48[3] = *(a1 + 48);
    v29 = *((&v49 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    v30 = *((&v46 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v48);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v51);
    if (v29 < v30)
    {
      v17 = a1;
      v22 = a2;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

void **_ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEvT1_SC_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(a1, a2, a3, a5);
  v40 = *a4;
  v10 = *(a4 + 24);
  v41 = *(a4 + 16);
  memset(v42, 0, sizeof(v42));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v10, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v10) >> 3));
  v43 = *(a4 + 48);
  v37 = *a3;
  v11 = *(a3 + 24);
  v38 = *(a3 + 16);
  memset(v39, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, v11, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v11) >> 3));
  v39[3] = *(a3 + 48);
  v12 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
  v13 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);

  result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);
  if (v12 < v13)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a3, a4);
    v33 = *a3;
    v15 = *(a3 + 24);
    v34 = *(a3 + 16);
    memset(v35, 0, sizeof(v35));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v15, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v15) >> 3));
    v36 = *(a3 + 48);
    v30 = *a2;
    v16 = *(a2 + 24);
    v31 = *(a2 + 16);
    memset(v32, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v32, v16, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v16) >> 3));
    v32[3] = *(a2 + 48);
    v17 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
    v18 = *((&v30 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v32);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);
    if (v17 < v18)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
      v26 = *a2;
      v19 = *(a2 + 24);
      v27 = *(a2 + 16);
      memset(v28, 0, sizeof(v28));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v28, v19, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v19) >> 3));
      v29 = *(a2 + 48);
      v23 = *a1;
      v20 = *(a1 + 24);
      v24 = *(a1 + 16);
      memset(v25, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v20, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v20) >> 3));
      v25[3] = *(a1 + 48);
      v21 = *((&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
      v22 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v28);
      if (v21 < v22)
      {
        return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
      }
    }
  }

  return result;
}

void **_ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEvT1_SC_SC_SC_T0_(a1, a2, a3, a4, a6);
  v53 = *a5;
  v11 = *(a5 + 24);
  v54 = *(a5 + 16);
  memset(v55, 0, sizeof(v55));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v11, *(a5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a5 + 32) - v11) >> 3));
  v56 = *(a5 + 48);
  v50 = *a4;
  v12 = *(a4 + 24);
  v51 = *(a4 + 16);
  memset(v52, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v52, v12, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v12) >> 3));
  v52[3] = *(a4 + 48);
  v13 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
  v14 = *((&v50 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v52);

  result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);
  if (v13 < v14)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a4, a5);
    v46 = *a4;
    v16 = *(a4 + 24);
    v47 = *(a4 + 16);
    memset(v48, 0, sizeof(v48));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v48, v16, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v16) >> 3));
    v49 = *(a4 + 48);
    v43 = *a3;
    v17 = *(a3 + 24);
    v44 = *(a3 + 16);
    memset(v45, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v17, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v17) >> 3));
    v45[3] = *(a3 + 48);
    v18 = *((&v46 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
    v19 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v48);
    if (v18 < v19)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a3, a4);
      v39 = *a3;
      v20 = *(a3 + 24);
      v40 = *(a3 + 16);
      memset(v41, 0, sizeof(v41));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v41, v20, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v20) >> 3));
      v42 = *(a3 + 48);
      v36 = *a2;
      v21 = *(a2 + 24);
      v37 = *(a2 + 16);
      memset(v38, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v21, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v21) >> 3));
      v38[3] = *(a2 + 48);
      v22 = *((&v39 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
      v23 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v41);
      if (v22 < v23)
      {
        _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
        v32 = *a2;
        v24 = *(a2 + 24);
        v33 = *(a2 + 16);
        memset(v34, 0, sizeof(v34));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v34, v24, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v24) >> 3));
        v35 = *(a2 + 48);
        v29 = *a1;
        v25 = *(a1 + 24);
        v30 = *(a1 + 16);
        memset(v31, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v31, v25, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v25) >> 3));
        v31[3] = *(a1 + 48);
        v26 = *((&v32 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
        v27 = *((&v29 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v31);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v34);
        if (v26 < v27)
        {
          return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
        }
      }
    }
  }

  return result;
}

void **_ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_SC_T0_(void **result, void **a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 7;
    if (result + 7 != a2)
    {
      v6 = 0;
      v7 = result;
      do
      {
        v8 = v4;
        v36 = *v4;
        v37 = v4[2];
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v7[10], v7[11], 0x6DB6DB6DB6DB6DB7 * ((v7[11] - v7[10]) >> 3));
        v39 = v7[13];
        v9 = v7[2];
        v33 = *v7;
        v34 = v9;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v7[3], v7[4], 0x6DB6DB6DB6DB6DB7 * ((v7[4] - v7[3]) >> 3));
        v35[3] = v7[6];
        v10 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v11 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
        if (v10 < v11)
        {
          v27 = *v8;
          v28 = v8[2];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, v7[10], v7[11], 0x6DB6DB6DB6DB6DB7 * ((v7[11] - v7[10]) >> 3));
          obj = v7[13];
          v12 = v6;
          while (1)
          {
            v13 = v3 + v12;
            *(v13 + 56) = *(v3 + v12);
            v14 = *(v3 + v12 + 24);
            *(v13 + 9) = *(v3 + v12 + 16);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v3 + v12 + 80), v14, *(v3 + v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + v12 + 32) - v14) >> 3));
            objc_storeStrong(v13 + 13, *(v13 + 6));
            if (!v12)
            {
              break;
            }

            v23 = v27;
            v24 = v28;
            memset(v25, 0, sizeof(v25));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
            v26 = obj;
            v20 = *(v3 + v12 - 56);
            v15 = *(v3 + v12 - 32);
            v21 = *(v3 + v12 - 40);
            memset(v22, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v15, *(v3 + v12 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + v12 - 24) - v15) >> 3));
            v22[3] = *(v3 + v12 - 8);
            v16 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
            v17 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
            v12 -= 56;
            if (v16 >= v17)
            {
              v18 = v3 + v12 + 56;
              goto LABEL_12;
            }
          }

          v18 = v3;
LABEL_12:
          *v18 = v27;
          *(v18 + 16) = v28;
          if (v18 != &v27)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v18 + 24), v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
          }

          objc_storeStrong((v18 + 48), obj);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
        }

        v4 = v8 + 7;
        v6 += 56;
        v7 = v8;
      }

      while (v8 + 7 != a2);
    }
  }

  return result;
}

void **_ZNSt3__126__insertion_sort_unguardedB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_SC_T0_(void **result, void **a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 7;
    if (result + 7 != a2)
    {
      v6 = result + 13;
      do
      {
        v7 = v4;
        v36 = *v4;
        v37 = v4[2];
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v3[10], v3[11], 0x6DB6DB6DB6DB6DB7 * ((v3[11] - v3[10]) >> 3));
        v39 = v3[13];
        v8 = v3[2];
        v33 = *v3;
        v34 = v8;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v3[3], v3[4], 0x6DB6DB6DB6DB6DB7 * ((v3[4] - v3[3]) >> 3));
        v35[3] = v3[6];
        v9 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v10 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
        if (v9 < v10)
        {
          v27 = *v7;
          v28 = v7[2];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, v3[10], v3[11], 0x6DB6DB6DB6DB6DB7 * ((v3[11] - v3[10]) >> 3));
          obj = v3[13];
          v11 = v6;
          do
          {
            v12 = v11;
            *(v11 - 3) = *(v11 - 13);
            v13 = *(v11 - 10);
            v14 = *(v11 - 9);
            *(v11 - 4) = *(v11 - 11);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v11 - 3, v13, v14, 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 3));
            objc_storeStrong(v12, *(v12 - 7));
            v23 = v27;
            v24 = v28;
            memset(v25, 0, sizeof(v25));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
            v26 = obj;
            v20 = *(v12 - 10);
            v15 = *(v12 - 17);
            v21 = *(v12 - 18);
            memset(v22, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v15, *(v12 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v12 - 16) - v15) >> 3));
            v22[3] = *(v12 - 14);
            v16 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
            v17 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
            v11 = v12 - 7;
          }

          while (v16 < v17);
          *(v12 - 13) = v27;
          v18 = v12 - 13;
          v18[2] = v28;
          if (v18 != &v27)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v18 + 3, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
          }

          objc_storeStrong(v18 + 6, obj);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
        }

        v4 = v7 + 7;
        v6 += 7;
        v3 = v7;
      }

      while (v7 + 7 != a2);
    }
  }

  return result;
}

unint64_t _ZNSt3__131__partition_with_equals_on_leftB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E_EET0_SC_SC_T1_(__int128 *a1, unint64_t a2, _DWORD *a3)
{
  v76 = *a1;
  v7 = a1 + 3;
  v6 = *(a1 + 3);
  v77 = *(a1 + 2);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v78, v6, *(a1 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v6) >> 3));
  v81 = *(a1 + 6);
  v72 = v76;
  v73 = v77;
  memset(v74, 0, sizeof(v74));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v74, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
  v75 = v81;
  v69 = *(a2 - 56);
  v8 = *(a2 - 32);
  v70 = *(a2 - 40);
  memset(v71, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v71, v8, *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - v8) >> 3));
  v33 = v7;
  v71[3] = *(a2 - 8);
  v9 = *((&v72 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
  v10 = *((&v69 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v71);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v74);
  if (v9 >= v10)
  {
    v15 = a1 + 56;
    do
    {
      v12 = v15;
      if (v15 >= a2)
      {
        break;
      }

      v58 = v76;
      v59 = v77;
      memset(v60, 0, sizeof(v60));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v60, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v61 = v81;
      v55 = *v12;
      v16 = *(v12 + 24);
      v56 = *(v12 + 16);
      memset(v57, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v57, v16, *(v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 32) - v16) >> 3));
      v57[3] = *(v12 + 48);
      v17 = *((&v58 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v18 = *((&v55 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v57);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v60);
      v15 = v12 + 56;
    }

    while (v17 >= v18);
  }

  else
  {
    v11 = a1;
    do
    {
      v65 = v76;
      v66 = v77;
      memset(v67, 0, sizeof(v67));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v67, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v12 = v11 + 56;
      v68 = v81;
      v62 = *(v11 + 56);
      v63 = *(v11 + 9);
      memset(v64, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v64, *(v11 + 10), *(v11 + 11), 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 11) - *(v11 + 10)) >> 3));
      v64[3] = *(v11 + 13);
      v13 = *((&v65 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v14 = *((&v62 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v64);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v67);
      v11 = (v11 + 56);
    }

    while (v13 >= v14);
  }

  if (v12 < a2)
  {
    do
    {
      v51 = v76;
      v52 = v77;
      memset(v53, 0, sizeof(v53));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v53, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v19 = (a2 - 56);
      v54 = v81;
      v48 = *(a2 - 56);
      v49 = *(a2 - 40);
      memset(v50, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v50, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      v50[3] = *(a2 - 8);
      v20 = *((&v51 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v21 = *((&v48 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v50);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v53);
      a2 -= 56;
    }

    while (v20 < v21);
    while (v12 < v19)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v12, v19);
      v22 = v12;
      do
      {
        v44 = v76;
        v45 = v77;
        memset(v46, 0, sizeof(v46));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
        v12 = v22 + 56;
        v47 = v81;
        v41 = *(v22 + 56);
        v42 = *(v22 + 72);
        memset(v43, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v22 + 80), *(v22 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v22 + 88) - *(v22 + 80)) >> 3));
        v43[3] = *(v22 + 104);
        v23 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v24 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
        v22 += 56;
      }

      while (v23 >= v24);
      v25 = v19;
      do
      {
        v37 = v76;
        v38 = v77;
        memset(v39, 0, sizeof(v39));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
        v19 = (v25 - 56);
        v40 = v81;
        v26 = *(v25 - 5);
        v34 = *(v25 - 56);
        v35 = v26;
        memset(v36, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v36, *(v25 - 4), *(v25 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(v25 - 3) - *(v25 - 4)) >> 3));
        v36[3] = *(v25 - 1);
        v27 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v28 = *((&v34 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v36);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);
        v25 = (v25 - 56);
      }

      while (v27 < v28);
    }
  }

  v29 = (v12 - 56);
  if ((v12 - 56) != a1)
  {
    v30 = *v29;
    *(a1 + 2) = *(v12 - 40);
    *a1 = v30;
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v33, *(v12 - 32), *(v12 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v12 - 24) - *(v12 - 32)) >> 3));
    objc_storeStrong(a1 + 6, *(v12 - 8));
  }

  v31 = v76;
  *(v12 - 40) = v77;
  *v29 = v31;
  if (v29 != &v76)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v12 - 32), v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
  }

  objc_storeStrong((v12 - 8), v81);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v78);
  return v12;
}

void sub_238998A50(_Unwind_Exception *a1)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v1 + 24));

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v2 - 136));
  _Unwind_Resume(a1);
}

unint64_t _ZNSt3__132__partition_with_equals_on_rightB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E_EENS_4pairIT0_bEESD_SD_T1_(__int128 *a1, __int128 *a2, _DWORD *a3)
{
  v5 = a1;
  v68 = *a1;
  v7 = a1 + 3;
  v6 = *(a1 + 3);
  v69 = *(a1 + 2);
  v70 = 0;
  v71 = 0;
  v72 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v70, v6, *(a1 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v6) >> 3));
  location = (v5 + 48);
  v73 = *(v5 + 48);
  v32 = v5;
  do
  {
    v64 = *(v5 + 56);
    v8 = *(v5 + 80);
    v65 = *(v5 + 72);
    memset(v66, 0, sizeof(v66));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v66, v8, *(v5 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 88) - v8) >> 3));
    v67 = *(v5 + 104);
    v61 = v68;
    v62 = v69;
    memset(v63, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v63, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
    v5 += 56;
    v63[3] = v73;
    v9 = *((&v64 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
    v10 = *((&v61 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v63);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v66);
  }

  while (v9 < v10);
  if (v5 - 56 == v32)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v57 = *(a2 - 56);
      v14 = *(a2 - 4);
      v58 = *(a2 - 5);
      memset(v59, 0, sizeof(v59));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v59, v14, *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - v14) >> 3));
      v60 = *(a2 - 1);
      v54 = v68;
      v55 = v69;
      memset(v56, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v56, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
      a2 = (a2 - 56);
      v56[3] = v73;
      v15 = *((&v57 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v16 = *((&v54 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v56);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v59);
    }

    while (v15 >= v16);
  }

  else
  {
    do
    {
      v50 = *(a2 - 56);
      v11 = *(a2 - 4);
      v51 = *(a2 - 5);
      memset(v52, 0, sizeof(v52));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v52, v11, *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - v11) >> 3));
      v53 = *(a2 - 1);
      v47 = v68;
      v48 = v69;
      memset(v49, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v49, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
      a2 = (a2 - 56);
      v49[3] = v73;
      v12 = *((&v50 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v13 = *((&v47 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v49);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v52);
    }

    while (v12 >= v13);
  }

  v30 = v7;
  if (v5 >= a2)
  {
    v17 = v5;
    v25 = v5 - 56;
    v26 = v32;
    if (v5 - 56 == v32)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = v5;
    v18 = a2;
    do
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v17, v18);
      do
      {
        v43 = *(v17 + 56);
        v19 = *(v17 + 80);
        v44 = *(v17 + 72);
        memset(v45, 0, sizeof(v45));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v19, *(v17 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v17 + 88) - v19) >> 3));
        v46 = *(v17 + 104);
        v40 = v68;
        v41 = v69;
        memset(v42, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
        v17 += 56;
        v42[3] = v73;
        v20 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v21 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);
      }

      while (v20 < v21);
      do
      {
        v22 = *(v18 - 56);
        v37 = *(v18 - 5);
        v36 = v22;
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, *(v18 - 4), *(v18 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(v18 - 3) - *(v18 - 4)) >> 3));
        v39 = *(v18 - 1);
        v33 = v68;
        v34 = v69;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
        v18 = (v18 - 56);
        v35[3] = v73;
        v23 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v24 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
      }

      while (v23 >= v24);
    }

    while (v17 < v18);
    v25 = v17 - 56;
    v26 = v32;
    if (v17 - 56 == v32)
    {
      goto LABEL_18;
    }
  }

  v27 = *v25;
  *(v26 + 16) = *(v25 + 16);
  *v26 = v27;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v30, *(v17 - 32), *(v17 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v17 - 24) - *(v17 - 32)) >> 3));
  objc_storeStrong(location, *(v17 - 8));
LABEL_18:
  v28 = v68;
  *(v25 + 16) = v69;
  *v25 = v28;
  if (v25 != &v68)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v17 - 32), v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
  }

  objc_storeStrong((v17 - 8), v73);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v70);
  return v25;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEbT1_SC_T0_(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(a1, a1 + 56, a2 - 56, a3);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEvT1_SC_SC_SC_T0_(a1, a1 + 56, a1 + 112, a2 - 56, a3);
        return 1;
      case 5:
        _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56, a3);
        return 1;
    }

    goto LABEL_12;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_12:
    v12 = a1 + 112;
    _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_Li0EEEbT1_SC_SC_T0_(a1, a1 + 56, a1 + 112, a3);
    v13 = a1 + 168;
    if (a1 + 168 == v4)
    {
      return 1;
    }

    v14 = 0;
    v27 = 0;
    v26 = v4;
    while (1)
    {
      v44 = *v13;
      v15 = *(v13 + 24);
      v45 = *(v13 + 16);
      memset(v46, 0, sizeof(v46));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, v15, *(v13 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 32) - v15) >> 3));
      v47 = *(v13 + 48);
      v16 = *(v12 + 16);
      v41 = *v12;
      v42 = v16;
      memset(v43, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v12 + 24), *(v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 32) - *(v12 + 24)) >> 3));
      v43[3] = *(v12 + 48);
      v17 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v18 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
      if (v17 < v18)
      {
        v35 = *v13;
        v19 = *(v13 + 24);
        v36 = *(v13 + 16);
        v38 = 0;
        v39 = 0;
        v37 = 0;
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v37, v19, *(v13 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 32) - v19) >> 3));
        obj = *(v13 + 48);
        v20 = v14;
        while (1)
        {
          v21 = a1 + v20;
          *(v21 + 168) = *(a1 + v20 + 112);
          *(v21 + 184) = *(a1 + v20 + 128);
          if (a1 + v20 + 112 != a1 + v20 + 168)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v21 + 192), *(v21 + 136), *(v21 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(v21 + 144) - *(v21 + 136)) >> 3));
          }

          objc_storeStrong((v21 + 216), *(v21 + 160));
          if (v20 == -112)
          {
            break;
          }

          v31 = v35;
          v32 = v36;
          memset(v33, 0, sizeof(v33));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v33, v37, v38, 0x6DB6DB6DB6DB6DB7 * ((v38 - v37) >> 3));
          v34 = obj;
          v28 = *(a1 + v20 + 56);
          v22 = *(a1 + v20 + 80);
          v29 = *(a1 + v20 + 72);
          memset(v30, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v30, v22, *(a1 + v20 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + v20 + 88) - v22) >> 3));
          v30[3] = *(a1 + v20 + 104);
          v23 = *((&v31 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
          v24 = *((&v28 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v30);

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v33);
          v20 -= 56;
          if (v23 >= v24)
          {
            v25 = a1 + v20 + 168;
            goto LABEL_24;
          }
        }

        v25 = a1;
LABEL_24:
        *v25 = v35;
        *(v25 + 16) = v36;
        v4 = v26;
        if (v25 != &v35)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v25 + 24), v37, v38, 0x6DB6DB6DB6DB6DB7 * ((v38 - v37) >> 3));
        }

        objc_storeStrong((v25 + 48), obj);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v37);
        if (++v27 == 8)
        {
          return v13 + 56 == v26;
        }
      }

      v12 = v13;
      v14 += 56;
      v13 += 56;
      if (v13 == v4)
      {
        return 1;
      }
    }
  }

  v51 = *(a2 - 56);
  v8 = *(a2 - 32);
  v52 = *(v4 - 40);
  memset(v53, 0, sizeof(v53));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v53, v8, *(v4 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v4 - 24) - v8) >> 3));
  v54 = *(v4 - 8);
  v48 = *a1;
  v9 = *(a1 + 24);
  v49 = *(a1 + 16);
  memset(v50, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v50, v9, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v9) >> 3));
  v50[3] = *(a1 + 48);
  v10 = *((&v51 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
  v11 = *((&v48 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v50);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v53);
  if (v10 >= v11)
  {
    return 1;
  }

  _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, (v4 - 56));
  return 1;
}

void **_ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(__int128 *a1, __int128 *a2)
{
  v8 = *a1;
  v5 = a1 + 3;
  v4 = *(a1 + 3);
  v9 = *(a1 + 2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v10, v4, *(a1 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v4) >> 3));
  obj = *(a1 + 6);
  v6 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v6;
  if (a1 != a2)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v5, *(a2 + 3), *(a2 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  }

  objc_storeStrong(a1 + 6, *(a2 + 6));
  *a2 = v8;
  *(a2 + 2) = v9;
  if (&v8 != a2)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(a2 + 3, v10, v11, 0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 3));
  }

  objc_storeStrong(a2 + 6, obj);

  return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v10);
}

void **_ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_(void **result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 3))
    {
      v8 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3)) | 1;
      v9 = result;
      v10 = &result[2 * ((a4 - result) >> 3) + 7];
      v11 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2;
      if (v11 < a3)
      {
        v63 = *v10;
        v12 = result[2 * ((a4 - result) >> 3) + 10];
        v64 = result[2 * ((a4 - result) >> 3) + 9];
        memset(v65, 0, sizeof(v65));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v65, v12, result[2 * ((a4 - result) >> 3) + 11], 0x6DB6DB6DB6DB6DB7 * ((result[2 * ((a4 - result) >> 3) + 11] - v12) >> 3));
        v66 = *(v10 + 48);
        v60 = *(v10 + 56);
        v13 = *(v10 + 80);
        v61 = *(v10 + 72);
        memset(v62, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v62, v13, *(v10 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 88) - v13) >> 3));
        v62[3] = *(v10 + 104);
        v14 = *((&v63 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
        v15 = *((&v60 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v62);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v65);
        if (v14 < v15)
        {
          v10 += 56;
          v8 = v11;
        }
      }

      v56 = *v10;
      v16 = *(v10 + 24);
      v57 = *(v10 + 16);
      memset(v58, 0, sizeof(v58));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v58, v16, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v16) >> 3));
      v59 = *(v10 + 48);
      v53 = *v5;
      v17 = *(v5 + 24);
      v54 = *(v5 + 16);
      memset(v55, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v17, *(v5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 32) - v17) >> 3));
      v55[3] = *(v5 + 48);
      v18 = *((&v56 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
      v19 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v58);
      if (v18 >= v19)
      {
        v47 = *v5;
        v20 = *(v5 + 24);
        v48 = *(v5 + 16);
        v49 = 0;
        v50 = 0;
        v51 = 0;
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v49, v20, *(v5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 32) - v20) >> 3));
        obj = *(v5 + 48);
        do
        {
          v21 = v10;
          v22 = *v10;
          *(v5 + 16) = *(v10 + 16);
          *v5 = v22;
          if (v5 != v10)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v5 + 24), *(v10 + 24), *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - *(v10 + 24)) >> 3));
          }

          objc_storeStrong((v5 + 48), *(v10 + 48));
          if (v6 < v8)
          {
            break;
          }

          v23 = (2 * v8) | 1;
          v10 = &v9[14 * v8 + 7];
          v8 = 2 * v8 + 2;
          if (v8 >= a3)
          {
            v8 = v23;
          }

          else
          {
            v43 = *v10;
            v24 = *(v10 + 24);
            v44 = *(v10 + 16);
            memset(v45, 0, sizeof(v45));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v24, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v24) >> 3));
            v46 = *(v10 + 48);
            v40 = *(v10 + 56);
            v25 = *(v10 + 80);
            v41 = *(v10 + 72);
            memset(v42, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v25, *(v10 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 88) - v25) >> 3));
            v42[3] = *(v10 + 104);
            v26 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
            v27 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);
            if (v26 >= v27)
            {
              v8 = v23;
            }

            else
            {
              v10 += 56;
            }
          }

          v36 = *v10;
          v28 = *(v10 + 24);
          v37 = *(v10 + 16);
          memset(v38, 0, sizeof(v38));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v28, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v28) >> 3));
          v39 = *(v10 + 48);
          v33 = v47;
          v34 = v48;
          memset(v35, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v49, v50, 0x6DB6DB6DB6DB6DB7 * ((v50 - v49) >> 3));
          v35[3] = obj;
          v29 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
          v30 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
          v5 = v21;
        }

        while (v29 >= v30);
        v31 = v47;
        *(v21 + 16) = v48;
        *v21 = v31;
        if (v21 != &v47)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v21 + 24), v49, v50, 0x6DB6DB6DB6DB6DB7 * ((v50 - v49) >> 3));
        }

        objc_storeStrong((v21 + 48), obj);

        return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v49);
      }
    }
  }

  return result;
}

void **_ZNSt3__110__pop_heapB8ne200100INS_17_ClassicAlgPolicyEZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE(void **result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v17 = *result;
    v8 = result[3];
    v18 = result[2];
    v19 = 0;
    v20 = 0;
    v21 = 0;
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v19, v8, result[4], 0x6DB6DB6DB6DB6DB7 * ((result[4] - v8) >> 3));
    obj = v7[6];
    v9 = _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(v7, a3, a4);
    v10 = v9;
    v11 = a2 - 56;
    if (v9 == (a2 - 56))
    {
      v16 = v17;
      *(v9 + 2) = v18;
      *v9 = v16;
      if (v9 != &v17)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v9 + 3, v19, v20, 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 3));
      }

      objc_storeStrong(v10 + 6, obj);
    }

    else
    {
      v12 = *v11;
      *(v9 + 2) = *(a2 - 40);
      *v9 = v12;
      v13 = (a2 - 32);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v9 + 3, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      v15 = *(a2 - 8);
      v14 = (a2 - 8);
      objc_storeStrong(v10 + 6, v15);
      *v11 = v17;
      *(v11 + 16) = v18;
      if (v11 != &v17)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v13, v19, v20, 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 3));
      }

      objc_storeStrong(v14, obj);
      _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(v7, v10 + 56, a3, 0x6DB6DB6DB6DB6DB7 * ((v10 + 56 - v7) >> 3));
    }

    return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v19);
  }

  return result;
}

__int128 *_ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(__int128 *a1, _DWORD *a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 56 * v5;
    v8 = (v7 + 56);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = *v8;
      v22 = *(v7 + 72);
      v21 = v11;
      memset(v23, 0, sizeof(v23));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v23, *(v7 + 80), *(v7 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 88) - *(v7 + 80)) >> 3));
      v24 = *(v7 + 104);
      v12 = *(v7 + 128);
      v18 = *(v7 + 112);
      v19 = v12;
      memset(v20, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v20, *(v7 + 136), *(v7 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 144) - *(v7 + 136)) >> 3));
      v20[3] = *(v7 + 160);
      v13 = *((&v21 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
      v14 = *((&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v20);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v23);
      if (v13 < v14)
      {
        v8 = (v7 + 112);
        v5 = v10;
      }
    }

    v15 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v15;
    if (a1 != v8)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(a1 + 3, *(v8 + 3), *(v8 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(v8 + 4) - *(v8 + 3)) >> 3));
    }

    objc_storeStrong(a1 + 6, *(v8 + 6));
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void **_ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E_PS5_EEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(void **result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = &result[7 * (v4 >> 1)];
    v36 = *v9;
    v10 = v9[3];
    v37 = v9[2];
    memset(v38, 0, sizeof(v38));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v10, v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v10) >> 3));
    v39 = v9[6];
    v33 = *(a2 - 56);
    v11 = *(a2 - 32);
    v34 = *(a2 - 40);
    memset(v35, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v11, *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - v11) >> 3));
    v35[3] = *(a2 - 8);
    v12 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
    v13 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
    if (v12 < v13)
    {
      v14 = (a2 - 56);
      v27 = *(a2 - 56);
      v28 = *(a2 - 40);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      obj = *(a2 - 8);
      do
      {
        v15 = v9;
        v16 = *v9;
        v14[2] = v9[2];
        *v14 = v16;
        if (v14 != v9)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v14 + 3, v9[3], v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v9[3]) >> 3));
        }

        objc_storeStrong(v14 + 6, v9[6]);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = &v7[7 * v8];
        v23 = *v9;
        v17 = v9[3];
        v24 = v9[2];
        memset(v25, 0, sizeof(v25));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v17, v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v17) >> 3));
        v26 = v9[6];
        v20 = v27;
        v21 = v28;
        memset(v22, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
        v22[3] = obj;
        v18 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v19 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
        v14 = v15;
      }

      while (v18 < v19);
      *v15 = v27;
      v15[2] = v28;
      if (v15 != &v27)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v15 + 3, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
      }

      objc_storeStrong(v15 + 6, obj);

      return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
    }
  }

  return result;
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(uint64_t result, void **a2, _DWORD *a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v33 = (a2 - 7);
    v10 = v9;
LABEL_3:
    v11 = a4 - 1;
    while (1)
    {
      v9 = v10;
      a4 = v11;
      v12 = a2 - v10;
      v13 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v10) >> 3);
      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            return _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(v10, v10 + 56, v33, a3);
          case 4:
            return _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEvT1_SC_SC_SC_T0_(v10, v10 + 56, v10 + 112, v33, a3);
          case 5:
            return _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(v10, v10 + 56, v10 + 112, v10 + 168, v33, a3);
        }
      }

      else
      {
        if (v13 < 2)
        {
          return result;
        }

        if (v13 == 2)
        {
          v24 = *(a2 - 5);
          v44 = *v33;
          v45 = v24;
          memset(v46, 0, sizeof(v46));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, *(a2 - 4), *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - *(a2 - 4)) >> 3));
          v47 = *(a2 - 1);
          v25 = *(v10 + 16);
          v41 = *v10;
          v42 = v25;
          memset(v43, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v10 + 24), *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - *(v10 + 24)) >> 3));
          v43[3] = *(v10 + 48);
          v26 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
          v27 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
          if (v26 > v27)
          {
            return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v10, v33);
          }

          return result;
        }
      }

      if (v12 <= 1343)
      {
        if (a5)
        {
          return _ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_SC_T0_(v10, a2, a3);
        }

        else
        {
          return _ZNSt3__126__insertion_sort_unguardedB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_SC_T0_(v10, a2, a3);
        }
      }

      if (v11 == -1)
      {
        if (v10 != a2)
        {
          v28 = (v13 - 2) >> 1;
          v29 = v28 + 1;
          v30 = v10 + 56 * v28;
          do
          {
            _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_(v9, a3, v13, v30);
            v30 -= 56;
            --v29;
          }

          while (v29);
          v31 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
          do
          {
            result = _ZNSt3__110__pop_heapB8ne200100INS_17_ClassicAlgPolicyEZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE(v9, a2, a3, v31);
            a2 -= 7;
          }

          while (v31-- > 2);
        }

        return result;
      }

      v14 = v13 >> 1;
      v15 = (v10 + 56 * v14);
      if (v12 >= 0x1C01)
      {
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(v9, v9 + 56 * v14, v33, a3);
        v16 = v9 + 56 * v14;
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 56, v16 - 56, (a2 - 14), a3);
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 112, v16 + 56, (a2 - 21), a3);
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(v16 - 56, v15, v16 + 56, a3);
        _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v9, v15);
        if (a5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 56 * v14, v9, v33, a3);
        if (a5)
        {
          goto LABEL_19;
        }
      }

      v17 = *(v9 - 56);
      v38 = *(v9 - 40);
      v37 = v17;
      memset(v39, 0, sizeof(v39));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, *(v9 - 32), *(v9 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v9 - 24) - *(v9 - 32)) >> 3));
      v40 = *(v9 - 8);
      v18 = *(v9 + 16);
      v34 = *v9;
      v35 = v18;
      memset(v36, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v36, *(v9 + 24), *(v9 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v9 + 32) - *(v9 + 24)) >> 3));
      v36[3] = *(v9 + 48);
      v19 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      v20 = *((&v34 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v36);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);
      if (v19 <= v20)
      {
        result = _ZNSt3__131__partition_with_equals_on_leftB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E0_EET0_SC_SC_T1_(v9, a2, a3);
        v10 = result;
        a5 = 0;
        goto LABEL_3;
      }

LABEL_19:
      v21 = _ZNSt3__132__partition_with_equals_on_rightB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E0_EENS_4pairIT0_bEESD_SD_T1_(v9, a2, a3);
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      v23 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEbT1_SC_T0_(v9, v21, a3);
      v10 = v21 + 56;
      result = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEbT1_SC_T0_(v21 + 56, a2, a3);
      if (result)
      {
        break;
      }

      v11 = a4 - 1;
      if (!v23)
      {
LABEL_22:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v9, v21, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v21 + 56;
        goto LABEL_3;
      }
    }

    a2 = v21;
    if (!v23)
    {
      continue;
    }

    return result;
  }
}

uint64_t _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v63 = *a2;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v64 = v9;
  memset(v65, 0, sizeof(v65));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v65, v8, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v8) >> 3));
  v66 = *(a2 + 48);
  v60 = *a1;
  v10 = *(a1 + 24);
  v61 = *(a1 + 16);
  memset(v62, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v62, v10, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v10) >> 3));
  v62[3] = *(a1 + 48);
  v11 = *((&v63 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
  v12 = *((&v60 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v62);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v65);
  if (v11 > v12)
  {
    v42 = *a3;
    v13 = *(a3 + 24);
    v43 = *(a3 + 16);
    memset(v44, 0, sizeof(v44));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v44, v13, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v13) >> 3));
    v45 = *(a3 + 48);
    v39 = *a2;
    v14 = *(a2 + 24);
    v40 = *(a2 + 16);
    memset(v41, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v41, v14, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v14) >> 3));
    v41[3] = *(a2 + 48);
    v15 = *((&v42 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
    v16 = *((&v39 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v41);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v44);
    v17 = a1;
    if (v15 > v16)
    {
LABEL_5:
      v22 = a3;
LABEL_9:
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v17, v22);
      return 1;
    }

    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
    v35 = *a3;
    v18 = *(a3 + 24);
    v36 = *(a3 + 16);
    memset(v37, 0, sizeof(v37));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v37, v18, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v18) >> 3));
    v38 = *(a3 + 48);
    v32 = *a2;
    v19 = *(a2 + 24);
    v33 = *(a2 + 16);
    memset(v34, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v34, v19, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v19) >> 3));
    v34[3] = *(a2 + 48);
    v20 = *((&v35 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
    v21 = *((&v32 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v34);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v37);
    if (v20 > v21)
    {
      v17 = a2;
      goto LABEL_5;
    }

    return 1;
  }

  v56 = *a3;
  v23 = *(a3 + 24);
  v57 = *(a3 + 16);
  memset(v58, 0, sizeof(v58));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v58, v23, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v23) >> 3));
  v59 = *(a3 + 48);
  v53 = *a2;
  v24 = *(a2 + 24);
  v54 = *(a2 + 16);
  memset(v55, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v24, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v24) >> 3));
  v55[3] = *(a2 + 48);
  v25 = *((&v56 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
  v26 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v58);
  if (v25 > v26)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
    v49 = *a2;
    v27 = *(a2 + 24);
    v50 = *(a2 + 16);
    memset(v51, 0, sizeof(v51));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v51, v27, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v27) >> 3));
    v52 = *(a2 + 48);
    v46 = *a1;
    v28 = *(a1 + 24);
    v47 = *(a1 + 16);
    memset(v48, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v48, v28, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v28) >> 3));
    v48[3] = *(a1 + 48);
    v29 = *((&v49 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
    v30 = *((&v46 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 0x10);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v48);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v51);
    if (v29 > v30)
    {
      v17 = a1;
      v22 = a2;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

void **_ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEvT1_SC_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(a1, a2, a3, a5);
  v40 = *a4;
  v10 = *(a4 + 24);
  v41 = *(a4 + 16);
  memset(v42, 0, sizeof(v42));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v10, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v10) >> 3));
  v43 = *(a4 + 48);
  v37 = *a3;
  v11 = *(a3 + 24);
  v38 = *(a3 + 16);
  memset(v39, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, v11, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v11) >> 3));
  v39[3] = *(a3 + 48);
  v12 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 0x10);
  v13 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 0x10);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);

  result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);
  if (v12 > v13)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a3, a4);
    v33 = *a3;
    v15 = *(a3 + 24);
    v34 = *(a3 + 16);
    memset(v35, 0, sizeof(v35));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v15, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v15) >> 3));
    v36 = *(a3 + 48);
    v30 = *a2;
    v16 = *(a2 + 24);
    v31 = *(a2 + 16);
    memset(v32, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v32, v16, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v16) >> 3));
    v32[3] = *(a2 + 48);
    v17 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 0x10);
    v18 = *((&v30 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 0x10);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v32);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);
    if (v17 > v18)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
      v26 = *a2;
      v19 = *(a2 + 24);
      v27 = *(a2 + 16);
      memset(v28, 0, sizeof(v28));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v28, v19, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v19) >> 3));
      v29 = *(a2 + 48);
      v23 = *a1;
      v20 = *(a1 + 24);
      v24 = *(a1 + 16);
      memset(v25, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v20, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v20) >> 3));
      v25[3] = *(a1 + 48);
      v21 = *((&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 0x10);
      v22 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v28);
      if (v21 > v22)
      {
        return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
      }
    }
  }

  return result;
}

void **_ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEvT1_SC_SC_SC_T0_(a1, a2, a3, a4, a6);
  v53 = *a5;
  v11 = *(a5 + 24);
  v54 = *(a5 + 16);
  memset(v55, 0, sizeof(v55));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v11, *(a5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a5 + 32) - v11) >> 3));
  v56 = *(a5 + 48);
  v50 = *a4;
  v12 = *(a4 + 24);
  v51 = *(a4 + 16);
  memset(v52, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v52, v12, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v12) >> 3));
  v52[3] = *(a4 + 48);
  v13 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 0x10);
  v14 = *((&v50 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 0x10);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v52);

  result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);
  if (v13 > v14)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a4, a5);
    v46 = *a4;
    v16 = *(a4 + 24);
    v47 = *(a4 + 16);
    memset(v48, 0, sizeof(v48));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v48, v16, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v16) >> 3));
    v49 = *(a4 + 48);
    v43 = *a3;
    v17 = *(a3 + 24);
    v44 = *(a3 + 16);
    memset(v45, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v17, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v17) >> 3));
    v45[3] = *(a3 + 48);
    v18 = *((&v46 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 0x10);
    v19 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 0x10);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v48);
    if (v18 > v19)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a3, a4);
      v39 = *a3;
      v20 = *(a3 + 24);
      v40 = *(a3 + 16);
      memset(v41, 0, sizeof(v41));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v41, v20, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v20) >> 3));
      v42 = *(a3 + 48);
      v36 = *a2;
      v21 = *(a2 + 24);
      v37 = *(a2 + 16);
      memset(v38, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v21, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v21) >> 3));
      v38[3] = *(a2 + 48);
      v22 = *((&v39 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 0x10);
      v23 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v41);
      if (v22 > v23)
      {
        _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
        v32 = *a2;
        v24 = *(a2 + 24);
        v33 = *(a2 + 16);
        memset(v34, 0, sizeof(v34));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v34, v24, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v24) >> 3));
        v35 = *(a2 + 48);
        v29 = *a1;
        v25 = *(a1 + 24);
        v30 = *(a1 + 16);
        memset(v31, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v31, v25, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v25) >> 3));
        v31[3] = *(a1 + 48);
        v26 = *((&v32 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 0x10);
        v27 = *((&v29 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v31);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v34);
        if (v26 > v27)
        {
          return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
        }
      }
    }
  }

  return result;
}

void **_ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_SC_T0_(void **result, void **a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 7;
    if (result + 7 != a2)
    {
      v6 = 0;
      v7 = result;
      do
      {
        v8 = v4;
        v36 = *v4;
        v37 = v4[2];
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v7[10], v7[11], 0x6DB6DB6DB6DB6DB7 * ((v7[11] - v7[10]) >> 3));
        v39 = v7[13];
        v9 = v7[2];
        v33 = *v7;
        v34 = v9;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v7[3], v7[4], 0x6DB6DB6DB6DB6DB7 * ((v7[4] - v7[3]) >> 3));
        v35[3] = v7[6];
        v10 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        v11 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
        if (v10 > v11)
        {
          v27 = *v8;
          v28 = v8[2];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, v7[10], v7[11], 0x6DB6DB6DB6DB6DB7 * ((v7[11] - v7[10]) >> 3));
          obj = v7[13];
          v12 = v6;
          while (1)
          {
            v13 = v3 + v12;
            *(v13 + 56) = *(v3 + v12);
            v14 = *(v3 + v12 + 24);
            *(v13 + 9) = *(v3 + v12 + 16);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v3 + v12 + 80), v14, *(v3 + v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + v12 + 32) - v14) >> 3));
            objc_storeStrong(v13 + 13, *(v13 + 6));
            if (!v12)
            {
              break;
            }

            v23 = v27;
            v24 = v28;
            memset(v25, 0, sizeof(v25));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
            v26 = obj;
            v20 = *(v3 + v12 - 56);
            v15 = *(v3 + v12 - 32);
            v21 = *(v3 + v12 - 40);
            memset(v22, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v15, *(v3 + v12 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + v12 - 24) - v15) >> 3));
            v22[3] = *(v3 + v12 - 8);
            v16 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
            v17 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
            v12 -= 56;
            if (v16 <= v17)
            {
              v18 = v3 + v12 + 56;
              goto LABEL_12;
            }
          }

          v18 = v3;
LABEL_12:
          *v18 = v27;
          *(v18 + 16) = v28;
          if (v18 != &v27)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v18 + 24), v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
          }

          objc_storeStrong((v18 + 48), obj);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
        }

        v4 = v8 + 7;
        v6 += 56;
        v7 = v8;
      }

      while (v8 + 7 != a2);
    }
  }

  return result;
}

void **_ZNSt3__126__insertion_sort_unguardedB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_SC_T0_(void **result, void **a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 7;
    if (result + 7 != a2)
    {
      v6 = result + 13;
      do
      {
        v7 = v4;
        v36 = *v4;
        v37 = v4[2];
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v3[10], v3[11], 0x6DB6DB6DB6DB6DB7 * ((v3[11] - v3[10]) >> 3));
        v39 = v3[13];
        v8 = v3[2];
        v33 = *v3;
        v34 = v8;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v3[3], v3[4], 0x6DB6DB6DB6DB6DB7 * ((v3[4] - v3[3]) >> 3));
        v35[3] = v3[6];
        v9 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        v10 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
        if (v9 > v10)
        {
          v27 = *v7;
          v28 = v7[2];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, v3[10], v3[11], 0x6DB6DB6DB6DB6DB7 * ((v3[11] - v3[10]) >> 3));
          obj = v3[13];
          v11 = v6;
          do
          {
            v12 = v11;
            *(v11 - 3) = *(v11 - 13);
            v13 = *(v11 - 10);
            v14 = *(v11 - 9);
            *(v11 - 4) = *(v11 - 11);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v11 - 3, v13, v14, 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 3));
            objc_storeStrong(v12, *(v12 - 7));
            v23 = v27;
            v24 = v28;
            memset(v25, 0, sizeof(v25));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
            v26 = obj;
            v20 = *(v12 - 10);
            v15 = *(v12 - 17);
            v21 = *(v12 - 18);
            memset(v22, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v15, *(v12 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v12 - 16) - v15) >> 3));
            v22[3] = *(v12 - 14);
            v16 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
            v17 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
            v11 = v12 - 7;
          }

          while (v16 > v17);
          *(v12 - 13) = v27;
          v18 = v12 - 13;
          v18[2] = v28;
          if (v18 != &v27)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v18 + 3, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
          }

          objc_storeStrong(v18 + 6, obj);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
        }

        v4 = v7 + 7;
        v6 += 7;
        v3 = v7;
      }

      while (v7 + 7 != a2);
    }
  }

  return result;
}

unint64_t _ZNSt3__131__partition_with_equals_on_leftB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E0_EET0_SC_SC_T1_(__int128 *a1, unint64_t a2, _DWORD *a3)
{
  v76 = *a1;
  v7 = a1 + 3;
  v6 = *(a1 + 3);
  v77 = *(a1 + 2);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v78, v6, *(a1 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v6) >> 3));
  v81 = *(a1 + 6);
  v72 = v76;
  v73 = v77;
  memset(v74, 0, sizeof(v74));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v74, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
  v75 = v81;
  v69 = *(a2 - 56);
  v8 = *(a2 - 32);
  v70 = *(a2 - 40);
  memset(v71, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v71, v8, *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - v8) >> 3));
  v33 = v7;
  v71[3] = *(a2 - 8);
  v9 = *((&v72 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
  v10 = *((&v69 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v71);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v74);
  if (v9 <= v10)
  {
    v15 = a1 + 56;
    do
    {
      v12 = v15;
      if (v15 >= a2)
      {
        break;
      }

      v58 = v76;
      v59 = v77;
      memset(v60, 0, sizeof(v60));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v60, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v61 = v81;
      v55 = *v12;
      v16 = *(v12 + 24);
      v56 = *(v12 + 16);
      memset(v57, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v57, v16, *(v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 32) - v16) >> 3));
      v57[3] = *(v12 + 48);
      v17 = *((&v58 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      v18 = *((&v55 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v57);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v60);
      v15 = v12 + 56;
    }

    while (v17 <= v18);
  }

  else
  {
    v11 = a1;
    do
    {
      v65 = v76;
      v66 = v77;
      memset(v67, 0, sizeof(v67));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v67, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v12 = v11 + 56;
      v68 = v81;
      v62 = *(v11 + 56);
      v63 = *(v11 + 9);
      memset(v64, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v64, *(v11 + 10), *(v11 + 11), 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 11) - *(v11 + 10)) >> 3));
      v64[3] = *(v11 + 13);
      v13 = *((&v65 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      v14 = *((&v62 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v64);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v67);
      v11 = (v11 + 56);
    }

    while (v13 <= v14);
  }

  if (v12 < a2)
  {
    do
    {
      v51 = v76;
      v52 = v77;
      memset(v53, 0, sizeof(v53));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v53, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v19 = (a2 - 56);
      v54 = v81;
      v48 = *(a2 - 56);
      v49 = *(a2 - 40);
      memset(v50, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v50, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      v50[3] = *(a2 - 8);
      v20 = *((&v51 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      v21 = *((&v48 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v50);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v53);
      a2 -= 56;
    }

    while (v20 > v21);
    while (v12 < v19)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v12, v19);
      v22 = v12;
      do
      {
        v44 = v76;
        v45 = v77;
        memset(v46, 0, sizeof(v46));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
        v12 = v22 + 56;
        v47 = v81;
        v41 = *(v22 + 56);
        v42 = *(v22 + 72);
        memset(v43, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v22 + 80), *(v22 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v22 + 88) - *(v22 + 80)) >> 3));
        v43[3] = *(v22 + 104);
        v23 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        v24 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
        v22 += 56;
      }

      while (v23 <= v24);
      v25 = v19;
      do
      {
        v37 = v76;
        v38 = v77;
        memset(v39, 0, sizeof(v39));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
        v19 = (v25 - 56);
        v40 = v81;
        v26 = *(v25 - 5);
        v34 = *(v25 - 56);
        v35 = v26;
        memset(v36, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v36, *(v25 - 4), *(v25 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(v25 - 3) - *(v25 - 4)) >> 3));
        v36[3] = *(v25 - 1);
        v27 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        v28 = *((&v34 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v36);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);
        v25 = (v25 - 56);
      }

      while (v27 > v28);
    }
  }

  v29 = (v12 - 56);
  if ((v12 - 56) != a1)
  {
    v30 = *v29;
    *(a1 + 2) = *(v12 - 40);
    *a1 = v30;
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v33, *(v12 - 32), *(v12 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v12 - 24) - *(v12 - 32)) >> 3));
    objc_storeStrong(a1 + 6, *(v12 - 8));
  }

  v31 = v76;
  *(v12 - 40) = v77;
  *v29 = v31;
  if (v29 != &v76)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v12 - 32), v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
  }

  objc_storeStrong((v12 - 8), v81);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v78);
  return v12;
}

void sub_23899C074(_Unwind_Exception *a1)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v1 + 24));

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v2 - 136));
  _Unwind_Resume(a1);
}

unint64_t _ZNSt3__132__partition_with_equals_on_rightB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E0_EENS_4pairIT0_bEESD_SD_T1_(__int128 *a1, __int128 *a2, _DWORD *a3)
{
  v5 = a1;
  v68 = *a1;
  v7 = a1 + 3;
  v6 = *(a1 + 3);
  v69 = *(a1 + 2);
  v70 = 0;
  v71 = 0;
  v72 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v70, v6, *(a1 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v6) >> 3));
  location = (v5 + 48);
  v73 = *(v5 + 48);
  v32 = v5;
  do
  {
    v64 = *(v5 + 56);
    v8 = *(v5 + 80);
    v65 = *(v5 + 72);
    memset(v66, 0, sizeof(v66));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v66, v8, *(v5 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 88) - v8) >> 3));
    v67 = *(v5 + 104);
    v61 = v68;
    v62 = v69;
    memset(v63, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v63, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
    v5 += 56;
    v63[3] = v73;
    v9 = *((&v64 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
    v10 = *((&v61 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v63);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v66);
  }

  while (v9 > v10);
  if (v5 - 56 == v32)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v57 = *(a2 - 56);
      v14 = *(a2 - 4);
      v58 = *(a2 - 5);
      memset(v59, 0, sizeof(v59));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v59, v14, *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - v14) >> 3));
      v60 = *(a2 - 1);
      v54 = v68;
      v55 = v69;
      memset(v56, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v56, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
      a2 = (a2 - 56);
      v56[3] = v73;
      v15 = *((&v57 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      v16 = *((&v54 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v56);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v59);
    }

    while (v15 <= v16);
  }

  else
  {
    do
    {
      v50 = *(a2 - 56);
      v11 = *(a2 - 4);
      v51 = *(a2 - 5);
      memset(v52, 0, sizeof(v52));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v52, v11, *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - v11) >> 3));
      v53 = *(a2 - 1);
      v47 = v68;
      v48 = v69;
      memset(v49, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v49, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
      a2 = (a2 - 56);
      v49[3] = v73;
      v12 = *((&v50 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      v13 = *((&v47 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v49);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v52);
    }

    while (v12 <= v13);
  }

  v30 = v7;
  if (v5 >= a2)
  {
    v17 = v5;
    v25 = v5 - 56;
    v26 = v32;
    if (v5 - 56 == v32)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = v5;
    v18 = a2;
    do
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v17, v18);
      do
      {
        v43 = *(v17 + 56);
        v19 = *(v17 + 80);
        v44 = *(v17 + 72);
        memset(v45, 0, sizeof(v45));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v19, *(v17 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v17 + 88) - v19) >> 3));
        v46 = *(v17 + 104);
        v40 = v68;
        v41 = v69;
        memset(v42, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
        v17 += 56;
        v42[3] = v73;
        v20 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        v21 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);
      }

      while (v20 > v21);
      do
      {
        v22 = *(v18 - 56);
        v37 = *(v18 - 5);
        v36 = v22;
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, *(v18 - 4), *(v18 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(v18 - 3) - *(v18 - 4)) >> 3));
        v39 = *(v18 - 1);
        v33 = v68;
        v34 = v69;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
        v18 = (v18 - 56);
        v35[3] = v73;
        v23 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        v24 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
      }

      while (v23 <= v24);
    }

    while (v17 < v18);
    v25 = v17 - 56;
    v26 = v32;
    if (v17 - 56 == v32)
    {
      goto LABEL_18;
    }
  }

  v27 = *v25;
  *(v26 + 16) = *(v25 + 16);
  *v26 = v27;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v30, *(v17 - 32), *(v17 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v17 - 24) - *(v17 - 32)) >> 3));
  objc_storeStrong(location, *(v17 - 8));
LABEL_18:
  v28 = v68;
  *(v25 + 16) = v69;
  *v25 = v28;
  if (v25 != &v68)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v17 - 32), v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
  }

  objc_storeStrong((v17 - 8), v73);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v70);
  return v25;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEbT1_SC_T0_(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(a1, a1 + 56, a2 - 56, a3);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEvT1_SC_SC_SC_T0_(a1, a1 + 56, a1 + 112, a2 - 56, a3);
        return 1;
      case 5:
        _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56, a3);
        return 1;
    }

    goto LABEL_12;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_12:
    v12 = a1 + 112;
    _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_Li0EEEbT1_SC_SC_T0_(a1, a1 + 56, a1 + 112, a3);
    v13 = a1 + 168;
    if (a1 + 168 == v4)
    {
      return 1;
    }

    v14 = 0;
    v27 = 0;
    v26 = v4;
    while (1)
    {
      v44 = *v13;
      v15 = *(v13 + 24);
      v45 = *(v13 + 16);
      memset(v46, 0, sizeof(v46));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, v15, *(v13 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 32) - v15) >> 3));
      v47 = *(v13 + 48);
      v16 = *(v12 + 16);
      v41 = *v12;
      v42 = v16;
      memset(v43, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v12 + 24), *(v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 32) - *(v12 + 24)) >> 3));
      v43[3] = *(v12 + 48);
      v17 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      v18 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
      if (v17 > v18)
      {
        v35 = *v13;
        v19 = *(v13 + 24);
        v36 = *(v13 + 16);
        v38 = 0;
        v39 = 0;
        v37 = 0;
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v37, v19, *(v13 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 32) - v19) >> 3));
        obj = *(v13 + 48);
        v20 = v14;
        while (1)
        {
          v21 = a1 + v20;
          *(v21 + 168) = *(a1 + v20 + 112);
          *(v21 + 184) = *(a1 + v20 + 128);
          if (a1 + v20 + 112 != a1 + v20 + 168)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v21 + 192), *(v21 + 136), *(v21 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(v21 + 144) - *(v21 + 136)) >> 3));
          }

          objc_storeStrong((v21 + 216), *(v21 + 160));
          if (v20 == -112)
          {
            break;
          }

          v31 = v35;
          v32 = v36;
          memset(v33, 0, sizeof(v33));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v33, v37, v38, 0x6DB6DB6DB6DB6DB7 * ((v38 - v37) >> 3));
          v34 = obj;
          v28 = *(a1 + v20 + 56);
          v22 = *(a1 + v20 + 80);
          v29 = *(a1 + v20 + 72);
          memset(v30, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v30, v22, *(a1 + v20 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + v20 + 88) - v22) >> 3));
          v30[3] = *(a1 + v20 + 104);
          v23 = *((&v31 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
          v24 = *((&v28 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v30);

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v33);
          v20 -= 56;
          if (v23 <= v24)
          {
            v25 = a1 + v20 + 168;
            goto LABEL_24;
          }
        }

        v25 = a1;
LABEL_24:
        *v25 = v35;
        *(v25 + 16) = v36;
        v4 = v26;
        if (v25 != &v35)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v25 + 24), v37, v38, 0x6DB6DB6DB6DB6DB7 * ((v38 - v37) >> 3));
        }

        objc_storeStrong((v25 + 48), obj);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v37);
        if (++v27 == 8)
        {
          return v13 + 56 == v26;
        }
      }

      v12 = v13;
      v14 += 56;
      v13 += 56;
      if (v13 == v4)
      {
        return 1;
      }
    }
  }

  v51 = *(a2 - 56);
  v8 = *(a2 - 32);
  v52 = *(v4 - 40);
  memset(v53, 0, sizeof(v53));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v53, v8, *(v4 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v4 - 24) - v8) >> 3));
  v54 = *(v4 - 8);
  v48 = *a1;
  v9 = *(a1 + 24);
  v49 = *(a1 + 16);
  memset(v50, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v50, v9, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v9) >> 3));
  v50[3] = *(a1 + 48);
  v10 = *((&v51 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
  v11 = *((&v48 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v50);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v53);
  if (v10 <= v11)
  {
    return 1;
  }

  _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, (v4 - 56));
  return 1;
}

void **_ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_(void **result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 3))
    {
      v8 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3)) | 1;
      v9 = result;
      v10 = &result[2 * ((a4 - result) >> 3) + 7];
      v11 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2;
      if (v11 < a3)
      {
        v63 = *v10;
        v12 = result[2 * ((a4 - result) >> 3) + 10];
        v64 = result[2 * ((a4 - result) >> 3) + 9];
        memset(v65, 0, sizeof(v65));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v65, v12, result[2 * ((a4 - result) >> 3) + 11], 0x6DB6DB6DB6DB6DB7 * ((result[2 * ((a4 - result) >> 3) + 11] - v12) >> 3));
        v66 = *(v10 + 48);
        v60 = *(v10 + 56);
        v13 = *(v10 + 80);
        v61 = *(v10 + 72);
        memset(v62, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v62, v13, *(v10 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 88) - v13) >> 3));
        v62[3] = *(v10 + 104);
        v14 = *((&v63 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
        v15 = *((&v60 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v62);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v65);
        if (v14 > v15)
        {
          v10 += 56;
          v8 = v11;
        }
      }

      v56 = *v10;
      v16 = *(v10 + 24);
      v57 = *(v10 + 16);
      memset(v58, 0, sizeof(v58));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v58, v16, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v16) >> 3));
      v59 = *(v10 + 48);
      v53 = *v5;
      v17 = *(v5 + 24);
      v54 = *(v5 + 16);
      memset(v55, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v17, *(v5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 32) - v17) >> 3));
      v55[3] = *(v5 + 48);
      v18 = *((&v56 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
      v19 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v58);
      if (v18 <= v19)
      {
        v47 = *v5;
        v20 = *(v5 + 24);
        v48 = *(v5 + 16);
        v49 = 0;
        v50 = 0;
        v51 = 0;
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v49, v20, *(v5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 32) - v20) >> 3));
        obj = *(v5 + 48);
        do
        {
          v21 = v10;
          v22 = *v10;
          *(v5 + 16) = *(v10 + 16);
          *v5 = v22;
          if (v5 != v10)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v5 + 24), *(v10 + 24), *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - *(v10 + 24)) >> 3));
          }

          objc_storeStrong((v5 + 48), *(v10 + 48));
          if (v6 < v8)
          {
            break;
          }

          v23 = (2 * v8) | 1;
          v10 = &v9[14 * v8 + 7];
          v8 = 2 * v8 + 2;
          if (v8 >= a3)
          {
            v8 = v23;
          }

          else
          {
            v43 = *v10;
            v24 = *(v10 + 24);
            v44 = *(v10 + 16);
            memset(v45, 0, sizeof(v45));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v24, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v24) >> 3));
            v46 = *(v10 + 48);
            v40 = *(v10 + 56);
            v25 = *(v10 + 80);
            v41 = *(v10 + 72);
            memset(v42, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v25, *(v10 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 88) - v25) >> 3));
            v42[3] = *(v10 + 104);
            v26 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
            v27 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);
            if (v26 <= v27)
            {
              v8 = v23;
            }

            else
            {
              v10 += 56;
            }
          }

          v36 = *v10;
          v28 = *(v10 + 24);
          v37 = *(v10 + 16);
          memset(v38, 0, sizeof(v38));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v28, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v28) >> 3));
          v39 = *(v10 + 48);
          v33 = v47;
          v34 = v48;
          memset(v35, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v49, v50, 0x6DB6DB6DB6DB6DB7 * ((v50 - v49) >> 3));
          v35[3] = obj;
          v29 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
          v30 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
          v5 = v21;
        }

        while (v29 <= v30);
        v31 = v47;
        *(v21 + 16) = v48;
        *v21 = v31;
        if (v21 != &v47)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v21 + 24), v49, v50, 0x6DB6DB6DB6DB6DB7 * ((v50 - v49) >> 3));
        }

        objc_storeStrong((v21 + 48), obj);

        return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v49);
      }
    }
  }

  return result;
}

void **_ZNSt3__110__pop_heapB8ne200100INS_17_ClassicAlgPolicyEZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE(void **result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v17 = *result;
    v8 = result[3];
    v18 = result[2];
    v19 = 0;
    v20 = 0;
    v21 = 0;
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v19, v8, result[4], 0x6DB6DB6DB6DB6DB7 * ((result[4] - v8) >> 3));
    obj = v7[6];
    v9 = _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(v7, a3, a4);
    v10 = v9;
    v11 = a2 - 56;
    if (v9 == (a2 - 56))
    {
      v16 = v17;
      *(v9 + 2) = v18;
      *v9 = v16;
      if (v9 != &v17)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v9 + 3, v19, v20, 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 3));
      }

      objc_storeStrong(v10 + 6, obj);
    }

    else
    {
      v12 = *v11;
      *(v9 + 2) = *(a2 - 40);
      *v9 = v12;
      v13 = (a2 - 32);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v9 + 3, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      v15 = *(a2 - 8);
      v14 = (a2 - 8);
      objc_storeStrong(v10 + 6, v15);
      *v11 = v17;
      *(v11 + 16) = v18;
      if (v11 != &v17)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v13, v19, v20, 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 3));
      }

      objc_storeStrong(v14, obj);
      _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(v7, v10 + 56, a3, 0x6DB6DB6DB6DB6DB7 * ((v10 + 56 - v7) >> 3));
    }

    return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v19);
  }

  return result;
}

__int128 *_ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(__int128 *a1, _DWORD *a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 56 * v5;
    v8 = (v7 + 56);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = *v8;
      v22 = *(v7 + 72);
      v21 = v11;
      memset(v23, 0, sizeof(v23));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v23, *(v7 + 80), *(v7 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 88) - *(v7 + 80)) >> 3));
      v24 = *(v7 + 104);
      v12 = *(v7 + 128);
      v18 = *(v7 + 112);
      v19 = v12;
      memset(v20, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v20, *(v7 + 136), *(v7 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 144) - *(v7 + 136)) >> 3));
      v20[3] = *(v7 + 160);
      v13 = *((&v21 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
      v14 = *((&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 0x10);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v20);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v23);
      if (v13 > v14)
      {
        v8 = (v7 + 112);
        v5 = v10;
      }
    }

    v15 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v15;
    if (a1 != v8)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(a1 + 3, *(v8 + 3), *(v8 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(v8 + 4) - *(v8 + 3)) >> 3));
    }

    objc_storeStrong(a1 + 6, *(v8 + 6));
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void **_ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E0_PS5_EEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(void **result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = &result[7 * (v4 >> 1)];
    v36 = *v9;
    v10 = v9[3];
    v37 = v9[2];
    memset(v38, 0, sizeof(v38));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v10, v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v10) >> 3));
    v39 = v9[6];
    v33 = *(a2 - 56);
    v11 = *(a2 - 32);
    v34 = *(a2 - 40);
    memset(v35, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v11, *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - v11) >> 3));
    v35[3] = *(a2 - 8);
    v12 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
    v13 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
    if (v12 > v13)
    {
      v14 = (a2 - 56);
      v27 = *(a2 - 56);
      v28 = *(a2 - 40);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      obj = *(a2 - 8);
      do
      {
        v15 = v9;
        v16 = *v9;
        v14[2] = v9[2];
        *v14 = v16;
        if (v14 != v9)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v14 + 3, v9[3], v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v9[3]) >> 3));
        }

        objc_storeStrong(v14 + 6, v9[6]);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = &v7[7 * v8];
        v23 = *v9;
        v17 = v9[3];
        v24 = v9[2];
        memset(v25, 0, sizeof(v25));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v17, v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v17) >> 3));
        v26 = v9[6];
        v20 = v27;
        v21 = v28;
        memset(v22, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
        v22[3] = obj;
        v18 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        v19 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 0x10);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
        v14 = v15;
      }

      while (v18 > v19);
      *v15 = v27;
      v15[2] = v28;
      if (v15 != &v27)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v15 + 3, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
      }

      objc_storeStrong(v15 + 6, obj);

      return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
    }
  }

  return result;
}

void *_ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEEC2B8ne200100INS_11__wrap_iterIPS4_EELi0EEET_SC_(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void sub_23899DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorI12GKCRTreeNodeI8NSObjectDv2_fEEEPS6_EEED1B8ne200100Ev(&a11);
  *(v11 + 8) = v12;
  _ZNSt3__128__exception_guard_exceptionsINS_6vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS5_EEE16__destroy_vectorEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(uint64_t result, void **a2, _DWORD *a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v33 = (a2 - 7);
    v10 = v9;
LABEL_3:
    v11 = a4 - 1;
    while (1)
    {
      v9 = v10;
      a4 = v11;
      v12 = a2 - v10;
      v13 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v10) >> 3);
      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            return _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(v10, v10 + 56, v33, a3);
          case 4:
            return _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEvT1_SC_SC_SC_T0_(v10, v10 + 56, v10 + 112, v33, a3);
          case 5:
            return _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(v10, v10 + 56, v10 + 112, v10 + 168, v33, a3);
        }
      }

      else
      {
        if (v13 < 2)
        {
          return result;
        }

        if (v13 == 2)
        {
          v24 = *(a2 - 5);
          v44 = *v33;
          v45 = v24;
          memset(v46, 0, sizeof(v46));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, *(a2 - 4), *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - *(a2 - 4)) >> 3));
          v47 = *(a2 - 1);
          v25 = *(v10 + 16);
          v41 = *v10;
          v42 = v25;
          memset(v43, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v10 + 24), *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - *(v10 + 24)) >> 3));
          v43[3] = *(v10 + 48);
          v26 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
          v27 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
          if (v26 < v27)
          {
            return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v10, v33);
          }

          return result;
        }
      }

      if (v12 <= 1343)
      {
        if (a5)
        {
          return _ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_SC_T0_(v10, a2, a3);
        }

        else
        {
          return _ZNSt3__126__insertion_sort_unguardedB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_SC_T0_(v10, a2, a3);
        }
      }

      if (v11 == -1)
      {
        if (v10 != a2)
        {
          v28 = (v13 - 2) >> 1;
          v29 = v28 + 1;
          v30 = v10 + 56 * v28;
          do
          {
            _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_(v9, a3, v13, v30);
            v30 -= 56;
            --v29;
          }

          while (v29);
          v31 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
          do
          {
            result = _ZNSt3__110__pop_heapB8ne200100INS_17_ClassicAlgPolicyEZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE(v9, a2, a3, v31);
            a2 -= 7;
          }

          while (v31-- > 2);
        }

        return result;
      }

      v14 = v13 >> 1;
      v15 = (v10 + 56 * v14);
      if (v12 >= 0x1C01)
      {
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(v9, v9 + 56 * v14, v33, a3);
        v16 = v9 + 56 * v14;
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 56, v16 - 56, (a2 - 14), a3);
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 112, v16 + 56, (a2 - 21), a3);
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(v16 - 56, v15, v16 + 56, a3);
        _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v9, v15);
        if (a5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(v9 + 56 * v14, v9, v33, a3);
        if (a5)
        {
          goto LABEL_19;
        }
      }

      v17 = *(v9 - 56);
      v38 = *(v9 - 40);
      v37 = v17;
      memset(v39, 0, sizeof(v39));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, *(v9 - 32), *(v9 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v9 - 24) - *(v9 - 32)) >> 3));
      v40 = *(v9 - 8);
      v18 = *(v9 + 16);
      v34 = *v9;
      v35 = v18;
      memset(v36, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v36, *(v9 + 24), *(v9 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v9 + 32) - *(v9 + 24)) >> 3));
      v36[3] = *(v9 + 48);
      v19 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v20 = *((&v34 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v36);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);
      if (v19 >= v20)
      {
        result = _ZNSt3__131__partition_with_equals_on_leftB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E1_EET0_SC_SC_T1_(v9, a2, a3);
        v10 = result;
        a5 = 0;
        goto LABEL_3;
      }

LABEL_19:
      v21 = _ZNSt3__132__partition_with_equals_on_rightB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E1_EENS_4pairIT0_bEESD_SD_T1_(v9, a2, a3);
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      v23 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEbT1_SC_T0_(v9, v21, a3);
      v10 = v21 + 56;
      result = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEbT1_SC_T0_(v21 + 56, a2, a3);
      if (result)
      {
        break;
      }

      v11 = a4 - 1;
      if (!v23)
      {
LABEL_22:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(v9, v21, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v21 + 56;
        goto LABEL_3;
      }
    }

    a2 = v21;
    if (!v23)
    {
      continue;
    }

    return result;
  }
}

uint64_t _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v63 = *a2;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v64 = v9;
  memset(v65, 0, sizeof(v65));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v65, v8, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v8) >> 3));
  v66 = *(a2 + 48);
  v60 = *a1;
  v10 = *(a1 + 24);
  v61 = *(a1 + 16);
  memset(v62, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v62, v10, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v10) >> 3));
  v62[3] = *(a1 + 48);
  v11 = *((&v63 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
  v12 = *((&v60 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v62);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v65);
  if (v11 < v12)
  {
    v42 = *a3;
    v13 = *(a3 + 24);
    v43 = *(a3 + 16);
    memset(v44, 0, sizeof(v44));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v44, v13, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v13) >> 3));
    v45 = *(a3 + 48);
    v39 = *a2;
    v14 = *(a2 + 24);
    v40 = *(a2 + 16);
    memset(v41, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v41, v14, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v14) >> 3));
    v41[3] = *(a2 + 48);
    v15 = *((&v42 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    v16 = *((&v39 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v41);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v44);
    v17 = a1;
    if (v15 < v16)
    {
LABEL_5:
      v22 = a3;
LABEL_9:
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v17, v22);
      return 1;
    }

    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
    v35 = *a3;
    v18 = *(a3 + 24);
    v36 = *(a3 + 16);
    memset(v37, 0, sizeof(v37));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v37, v18, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v18) >> 3));
    v38 = *(a3 + 48);
    v32 = *a2;
    v19 = *(a2 + 24);
    v33 = *(a2 + 16);
    memset(v34, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v34, v19, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v19) >> 3));
    v34[3] = *(a2 + 48);
    v20 = *((&v35 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    v21 = *((&v32 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v34);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v37);
    if (v20 < v21)
    {
      v17 = a2;
      goto LABEL_5;
    }

    return 1;
  }

  v56 = *a3;
  v23 = *(a3 + 24);
  v57 = *(a3 + 16);
  memset(v58, 0, sizeof(v58));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v58, v23, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v23) >> 3));
  v59 = *(a3 + 48);
  v53 = *a2;
  v24 = *(a2 + 24);
  v54 = *(a2 + 16);
  memset(v55, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v24, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v24) >> 3));
  v55[3] = *(a2 + 48);
  v25 = *((&v56 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
  v26 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v58);
  if (v25 < v26)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
    v49 = *a2;
    v27 = *(a2 + 24);
    v50 = *(a2 + 16);
    memset(v51, 0, sizeof(v51));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v51, v27, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v27) >> 3));
    v52 = *(a2 + 48);
    v46 = *a1;
    v28 = *(a1 + 24);
    v47 = *(a1 + 16);
    memset(v48, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v48, v28, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v28) >> 3));
    v48[3] = *(a1 + 48);
    v29 = *((&v49 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    v30 = *((&v46 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a4 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v48);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v51);
    if (v29 < v30)
    {
      v17 = a1;
      v22 = a2;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

void **_ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEvT1_SC_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(a1, a2, a3, a5);
  v40 = *a4;
  v10 = *(a4 + 24);
  v41 = *(a4 + 16);
  memset(v42, 0, sizeof(v42));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v10, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v10) >> 3));
  v43 = *(a4 + 48);
  v37 = *a3;
  v11 = *(a3 + 24);
  v38 = *(a3 + 16);
  memset(v39, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, v11, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v11) >> 3));
  v39[3] = *(a3 + 48);
  v12 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
  v13 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);

  result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);
  if (v12 < v13)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a3, a4);
    v33 = *a3;
    v15 = *(a3 + 24);
    v34 = *(a3 + 16);
    memset(v35, 0, sizeof(v35));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v15, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v15) >> 3));
    v36 = *(a3 + 48);
    v30 = *a2;
    v16 = *(a2 + 24);
    v31 = *(a2 + 16);
    memset(v32, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v32, v16, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v16) >> 3));
    v32[3] = *(a2 + 48);
    v17 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
    v18 = *((&v30 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v32);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);
    if (v17 < v18)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
      v26 = *a2;
      v19 = *(a2 + 24);
      v27 = *(a2 + 16);
      memset(v28, 0, sizeof(v28));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v28, v19, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v19) >> 3));
      v29 = *(a2 + 48);
      v23 = *a1;
      v20 = *(a1 + 24);
      v24 = *(a1 + 16);
      memset(v25, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v20, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v20) >> 3));
      v25[3] = *(a1 + 48);
      v21 = *((&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
      v22 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a5 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v28);
      if (v21 < v22)
      {
        return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
      }
    }
  }

  return result;
}

void **_ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEvT1_SC_SC_SC_T0_(a1, a2, a3, a4, a6);
  v53 = *a5;
  v11 = *(a5 + 24);
  v54 = *(a5 + 16);
  memset(v55, 0, sizeof(v55));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v11, *(a5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a5 + 32) - v11) >> 3));
  v56 = *(a5 + 48);
  v50 = *a4;
  v12 = *(a4 + 24);
  v51 = *(a4 + 16);
  memset(v52, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v52, v12, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v12) >> 3));
  v52[3] = *(a4 + 48);
  v13 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
  v14 = *((&v50 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v52);

  result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);
  if (v13 < v14)
  {
    _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a4, a5);
    v46 = *a4;
    v16 = *(a4 + 24);
    v47 = *(a4 + 16);
    memset(v48, 0, sizeof(v48));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v48, v16, *(a4 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 32) - v16) >> 3));
    v49 = *(a4 + 48);
    v43 = *a3;
    v17 = *(a3 + 24);
    v44 = *(a3 + 16);
    memset(v45, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v17, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v17) >> 3));
    v45[3] = *(a3 + 48);
    v18 = *((&v46 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
    v19 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v48);
    if (v18 < v19)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a3, a4);
      v39 = *a3;
      v20 = *(a3 + 24);
      v40 = *(a3 + 16);
      memset(v41, 0, sizeof(v41));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v41, v20, *(a3 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 32) - v20) >> 3));
      v42 = *(a3 + 48);
      v36 = *a2;
      v21 = *(a2 + 24);
      v37 = *(a2 + 16);
      memset(v38, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v21, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v21) >> 3));
      v38[3] = *(a2 + 48);
      v22 = *((&v39 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
      v23 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v41);
      if (v22 < v23)
      {
        _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a2, a3);
        v32 = *a2;
        v24 = *(a2 + 24);
        v33 = *(a2 + 16);
        memset(v34, 0, sizeof(v34));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v34, v24, *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - v24) >> 3));
        v35 = *(a2 + 48);
        v29 = *a1;
        v25 = *(a1 + 24);
        v30 = *(a1 + 16);
        memset(v31, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v31, v25, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v25) >> 3));
        v31[3] = *(a1 + 48);
        v26 = *((&v32 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
        v27 = *((&v29 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a6 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v31);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v34);
        if (v26 < v27)
        {
          return _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, a2);
        }
      }
    }
  }

  return result;
}

void **_ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_SC_T0_(void **result, void **a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 7;
    if (result + 7 != a2)
    {
      v6 = 0;
      v7 = result;
      do
      {
        v8 = v4;
        v36 = *v4;
        v37 = v4[2];
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v7[10], v7[11], 0x6DB6DB6DB6DB6DB7 * ((v7[11] - v7[10]) >> 3));
        v39 = v7[13];
        v9 = v7[2];
        v33 = *v7;
        v34 = v9;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v7[3], v7[4], 0x6DB6DB6DB6DB6DB7 * ((v7[4] - v7[3]) >> 3));
        v35[3] = v7[6];
        v10 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v11 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
        if (v10 < v11)
        {
          v27 = *v8;
          v28 = v8[2];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, v7[10], v7[11], 0x6DB6DB6DB6DB6DB7 * ((v7[11] - v7[10]) >> 3));
          obj = v7[13];
          v12 = v6;
          while (1)
          {
            v13 = v3 + v12;
            *(v13 + 56) = *(v3 + v12);
            v14 = *(v3 + v12 + 24);
            *(v13 + 9) = *(v3 + v12 + 16);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v3 + v12 + 80), v14, *(v3 + v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + v12 + 32) - v14) >> 3));
            objc_storeStrong(v13 + 13, *(v13 + 6));
            if (!v12)
            {
              break;
            }

            v23 = v27;
            v24 = v28;
            memset(v25, 0, sizeof(v25));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
            v26 = obj;
            v20 = *(v3 + v12 - 56);
            v15 = *(v3 + v12 - 32);
            v21 = *(v3 + v12 - 40);
            memset(v22, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v15, *(v3 + v12 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + v12 - 24) - v15) >> 3));
            v22[3] = *(v3 + v12 - 8);
            v16 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
            v17 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
            v12 -= 56;
            if (v16 >= v17)
            {
              v18 = v3 + v12 + 56;
              goto LABEL_12;
            }
          }

          v18 = v3;
LABEL_12:
          *v18 = v27;
          *(v18 + 16) = v28;
          if (v18 != &v27)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v18 + 24), v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
          }

          objc_storeStrong((v18 + 48), obj);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
        }

        v4 = v8 + 7;
        v6 += 56;
        v7 = v8;
      }

      while (v8 + 7 != a2);
    }
  }

  return result;
}

void **_ZNSt3__126__insertion_sort_unguardedB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_SC_T0_(void **result, void **a2, _DWORD *a3)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 7;
    if (result + 7 != a2)
    {
      v6 = result + 13;
      do
      {
        v7 = v4;
        v36 = *v4;
        v37 = v4[2];
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v3[10], v3[11], 0x6DB6DB6DB6DB6DB7 * ((v3[11] - v3[10]) >> 3));
        v39 = v3[13];
        v8 = v3[2];
        v33 = *v3;
        v34 = v8;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v3[3], v3[4], 0x6DB6DB6DB6DB6DB7 * ((v3[4] - v3[3]) >> 3));
        v35[3] = v3[6];
        v9 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v10 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
        if (v9 < v10)
        {
          v27 = *v7;
          v28 = v7[2];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, v3[10], v3[11], 0x6DB6DB6DB6DB6DB7 * ((v3[11] - v3[10]) >> 3));
          obj = v3[13];
          v11 = v6;
          do
          {
            v12 = v11;
            *(v11 - 3) = *(v11 - 13);
            v13 = *(v11 - 10);
            v14 = *(v11 - 9);
            *(v11 - 4) = *(v11 - 11);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v11 - 3, v13, v14, 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 3));
            objc_storeStrong(v12, *(v12 - 7));
            v23 = v27;
            v24 = v28;
            memset(v25, 0, sizeof(v25));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
            v26 = obj;
            v20 = *(v12 - 10);
            v15 = *(v12 - 17);
            v21 = *(v12 - 18);
            memset(v22, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v15, *(v12 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v12 - 16) - v15) >> 3));
            v22[3] = *(v12 - 14);
            v16 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
            v17 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
            v11 = v12 - 7;
          }

          while (v16 < v17);
          *(v12 - 13) = v27;
          v18 = v12 - 13;
          v18[2] = v28;
          if (v18 != &v27)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v18 + 3, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
          }

          objc_storeStrong(v18 + 6, obj);

          result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
        }

        v4 = v7 + 7;
        v6 += 7;
        v3 = v7;
      }

      while (v7 + 7 != a2);
    }
  }

  return result;
}

unint64_t _ZNSt3__131__partition_with_equals_on_leftB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E1_EET0_SC_SC_T1_(__int128 *a1, unint64_t a2, _DWORD *a3)
{
  v76 = *a1;
  v7 = a1 + 3;
  v6 = *(a1 + 3);
  v77 = *(a1 + 2);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v78, v6, *(a1 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v6) >> 3));
  v81 = *(a1 + 6);
  v72 = v76;
  v73 = v77;
  memset(v74, 0, sizeof(v74));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v74, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
  v75 = v81;
  v69 = *(a2 - 56);
  v8 = *(a2 - 32);
  v70 = *(a2 - 40);
  memset(v71, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v71, v8, *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - v8) >> 3));
  v33 = v7;
  v71[3] = *(a2 - 8);
  v9 = *((&v72 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
  v10 = *((&v69 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v71);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v74);
  if (v9 >= v10)
  {
    v15 = a1 + 56;
    do
    {
      v12 = v15;
      if (v15 >= a2)
      {
        break;
      }

      v58 = v76;
      v59 = v77;
      memset(v60, 0, sizeof(v60));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v60, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v61 = v81;
      v55 = *v12;
      v16 = *(v12 + 24);
      v56 = *(v12 + 16);
      memset(v57, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v57, v16, *(v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 32) - v16) >> 3));
      v57[3] = *(v12 + 48);
      v17 = *((&v58 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v18 = *((&v55 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v57);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v60);
      v15 = v12 + 56;
    }

    while (v17 >= v18);
  }

  else
  {
    v11 = a1;
    do
    {
      v65 = v76;
      v66 = v77;
      memset(v67, 0, sizeof(v67));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v67, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v12 = v11 + 56;
      v68 = v81;
      v62 = *(v11 + 56);
      v63 = *(v11 + 9);
      memset(v64, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v64, *(v11 + 10), *(v11 + 11), 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 11) - *(v11 + 10)) >> 3));
      v64[3] = *(v11 + 13);
      v13 = *((&v65 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v14 = *((&v62 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v64);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v67);
      v11 = (v11 + 56);
    }

    while (v13 >= v14);
  }

  if (v12 < a2)
  {
    do
    {
      v51 = v76;
      v52 = v77;
      memset(v53, 0, sizeof(v53));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v53, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
      v19 = (a2 - 56);
      v54 = v81;
      v48 = *(a2 - 56);
      v49 = *(a2 - 40);
      memset(v50, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v50, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      v50[3] = *(a2 - 8);
      v20 = *((&v51 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v21 = *((&v48 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v50);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v53);
      a2 -= 56;
    }

    while (v20 < v21);
    while (v12 < v19)
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v12, v19);
      v22 = v12;
      do
      {
        v44 = v76;
        v45 = v77;
        memset(v46, 0, sizeof(v46));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
        v12 = v22 + 56;
        v47 = v81;
        v41 = *(v22 + 56);
        v42 = *(v22 + 72);
        memset(v43, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v22 + 80), *(v22 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v22 + 88) - *(v22 + 80)) >> 3));
        v43[3] = *(v22 + 104);
        v23 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v24 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
        v22 += 56;
      }

      while (v23 >= v24);
      v25 = v19;
      do
      {
        v37 = v76;
        v38 = v77;
        memset(v39, 0, sizeof(v39));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v39, v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
        v19 = (v25 - 56);
        v40 = v81;
        v26 = *(v25 - 5);
        v34 = *(v25 - 56);
        v35 = v26;
        memset(v36, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v36, *(v25 - 4), *(v25 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(v25 - 3) - *(v25 - 4)) >> 3));
        v36[3] = *(v25 - 1);
        v27 = *((&v37 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v28 = *((&v34 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v36);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v39);
        v25 = (v25 - 56);
      }

      while (v27 < v28);
    }
  }

  v29 = (v12 - 56);
  if ((v12 - 56) != a1)
  {
    v30 = *v29;
    *(a1 + 2) = *(v12 - 40);
    *a1 = v30;
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v33, *(v12 - 32), *(v12 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v12 - 24) - *(v12 - 32)) >> 3));
    objc_storeStrong(a1 + 6, *(v12 - 8));
  }

  v31 = v76;
  *(v12 - 40) = v77;
  *v29 = v31;
  if (v29 != &v76)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v12 - 32), v78, v79, 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 3));
  }

  objc_storeStrong((v12 - 8), v81);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v78);
  return v12;
}

void sub_23899F6C0(_Unwind_Exception *a1)
{
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v1 + 24));

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v2 - 136));
  _Unwind_Resume(a1);
}

unint64_t _ZNSt3__132__partition_with_equals_on_rightB8ne200100INS_17_ClassicAlgPolicyEP12GKCRTreeNodeI8NSObjectDv2_fERZNS5_18SplitReduceOverlapEPS3_RKS4_S9_EUlS5_S5_E1_EENS_4pairIT0_bEESD_SD_T1_(__int128 *a1, __int128 *a2, _DWORD *a3)
{
  v5 = a1;
  v68 = *a1;
  v7 = a1 + 3;
  v6 = *(a1 + 3);
  v69 = *(a1 + 2);
  v70 = 0;
  v71 = 0;
  v72 = 0;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v70, v6, *(a1 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v6) >> 3));
  location = (v5 + 48);
  v73 = *(v5 + 48);
  v32 = v5;
  do
  {
    v64 = *(v5 + 56);
    v8 = *(v5 + 80);
    v65 = *(v5 + 72);
    memset(v66, 0, sizeof(v66));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v66, v8, *(v5 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 88) - v8) >> 3));
    v67 = *(v5 + 104);
    v61 = v68;
    v62 = v69;
    memset(v63, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v63, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
    v5 += 56;
    v63[3] = v73;
    v9 = *((&v64 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
    v10 = *((&v61 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v63);

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v66);
  }

  while (v9 < v10);
  if (v5 - 56 == v32)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v57 = *(a2 - 56);
      v14 = *(a2 - 4);
      v58 = *(a2 - 5);
      memset(v59, 0, sizeof(v59));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v59, v14, *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - v14) >> 3));
      v60 = *(a2 - 1);
      v54 = v68;
      v55 = v69;
      memset(v56, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v56, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
      a2 = (a2 - 56);
      v56[3] = v73;
      v15 = *((&v57 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v16 = *((&v54 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v56);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v59);
    }

    while (v15 >= v16);
  }

  else
  {
    do
    {
      v50 = *(a2 - 56);
      v11 = *(a2 - 4);
      v51 = *(a2 - 5);
      memset(v52, 0, sizeof(v52));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v52, v11, *(a2 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 3) - v11) >> 3));
      v53 = *(a2 - 1);
      v47 = v68;
      v48 = v69;
      memset(v49, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v49, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
      a2 = (a2 - 56);
      v49[3] = v73;
      v12 = *((&v50 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v13 = *((&v47 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v49);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v52);
    }

    while (v12 >= v13);
  }

  v30 = v7;
  if (v5 >= a2)
  {
    v17 = v5;
    v25 = v5 - 56;
    v26 = v32;
    if (v5 - 56 == v32)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = v5;
    v18 = a2;
    do
    {
      _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v17, v18);
      do
      {
        v43 = *(v17 + 56);
        v19 = *(v17 + 80);
        v44 = *(v17 + 72);
        memset(v45, 0, sizeof(v45));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v19, *(v17 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v17 + 88) - v19) >> 3));
        v46 = *(v17 + 104);
        v40 = v68;
        v41 = v69;
        memset(v42, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
        v17 += 56;
        v42[3] = v73;
        v20 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v21 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);
      }

      while (v20 < v21);
      do
      {
        v22 = *(v18 - 56);
        v37 = *(v18 - 5);
        v36 = v22;
        memset(v38, 0, sizeof(v38));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, *(v18 - 4), *(v18 - 3), 0x6DB6DB6DB6DB6DB7 * ((*(v18 - 3) - *(v18 - 4)) >> 3));
        v39 = *(v18 - 1);
        v33 = v68;
        v34 = v69;
        memset(v35, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
        v18 = (v18 - 56);
        v35[3] = v73;
        v23 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v24 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
      }

      while (v23 >= v24);
    }

    while (v17 < v18);
    v25 = v17 - 56;
    v26 = v32;
    if (v17 - 56 == v32)
    {
      goto LABEL_18;
    }
  }

  v27 = *v25;
  *(v26 + 16) = *(v25 + 16);
  *v26 = v27;
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v30, *(v17 - 32), *(v17 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v17 - 24) - *(v17 - 32)) >> 3));
  objc_storeStrong(location, *(v17 - 8));
LABEL_18:
  v28 = v68;
  *(v25 + 16) = v69;
  *v25 = v28;
  if (v25 != &v68)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v17 - 32), v70, v71, 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 3));
  }

  objc_storeStrong((v17 - 8), v73);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v70);
  return v25;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEbT1_SC_T0_(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(a1, a1 + 56, a2 - 56, a3);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEvT1_SC_SC_SC_T0_(a1, a1 + 56, a1 + 112, a2 - 56, a3);
        return 1;
      case 5:
        _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEvT1_SC_SC_SC_SC_T0_(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56, a3);
        return 1;
    }

    goto LABEL_12;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_12:
    v12 = a1 + 112;
    _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_Li0EEEbT1_SC_SC_T0_(a1, a1 + 56, a1 + 112, a3);
    v13 = a1 + 168;
    if (a1 + 168 == v4)
    {
      return 1;
    }

    v14 = 0;
    v27 = 0;
    v26 = v4;
    while (1)
    {
      v44 = *v13;
      v15 = *(v13 + 24);
      v45 = *(v13 + 16);
      memset(v46, 0, sizeof(v46));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v46, v15, *(v13 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 32) - v15) >> 3));
      v47 = *(v13 + 48);
      v16 = *(v12 + 16);
      v41 = *v12;
      v42 = v16;
      memset(v43, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v43, *(v12 + 24), *(v12 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 32) - *(v12 + 24)) >> 3));
      v43[3] = *(v12 + 48);
      v17 = *((&v44 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      v18 = *((&v41 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v43);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v46);
      if (v17 < v18)
      {
        v35 = *v13;
        v19 = *(v13 + 24);
        v36 = *(v13 + 16);
        v38 = 0;
        v39 = 0;
        v37 = 0;
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v37, v19, *(v13 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 32) - v19) >> 3));
        obj = *(v13 + 48);
        v20 = v14;
        while (1)
        {
          v21 = a1 + v20;
          *(v21 + 168) = *(a1 + v20 + 112);
          *(v21 + 184) = *(a1 + v20 + 128);
          if (a1 + v20 + 112 != a1 + v20 + 168)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v21 + 192), *(v21 + 136), *(v21 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(v21 + 144) - *(v21 + 136)) >> 3));
          }

          objc_storeStrong((v21 + 216), *(v21 + 160));
          if (v20 == -112)
          {
            break;
          }

          v31 = v35;
          v32 = v36;
          memset(v33, 0, sizeof(v33));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v33, v37, v38, 0x6DB6DB6DB6DB6DB7 * ((v38 - v37) >> 3));
          v34 = obj;
          v28 = *(a1 + v20 + 56);
          v22 = *(a1 + v20 + 80);
          v29 = *(a1 + v20 + 72);
          memset(v30, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v30, v22, *(a1 + v20 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + v20 + 88) - v22) >> 3));
          v30[3] = *(a1 + v20 + 104);
          v23 = *((&v31 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
          v24 = *((&v28 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v30);

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v33);
          v20 -= 56;
          if (v23 >= v24)
          {
            v25 = a1 + v20 + 168;
            goto LABEL_24;
          }
        }

        v25 = a1;
LABEL_24:
        *v25 = v35;
        *(v25 + 16) = v36;
        v4 = v26;
        if (v25 != &v35)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v25 + 24), v37, v38, 0x6DB6DB6DB6DB6DB7 * ((v38 - v37) >> 3));
        }

        objc_storeStrong((v25 + 48), obj);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v37);
        if (++v27 == 8)
        {
          return v13 + 56 == v26;
        }
      }

      v12 = v13;
      v14 += 56;
      v13 += 56;
      if (v13 == v4)
      {
        return 1;
      }
    }
  }

  v51 = *(a2 - 56);
  v8 = *(a2 - 32);
  v52 = *(v4 - 40);
  memset(v53, 0, sizeof(v53));
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v53, v8, *(v4 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(v4 - 24) - v8) >> 3));
  v54 = *(v4 - 8);
  v48 = *a1;
  v9 = *(a1 + 24);
  v49 = *(a1 + 16);
  memset(v50, 0, 24);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v50, v9, *(a1 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v9) >> 3));
  v50[3] = *(a1 + 48);
  v10 = *((&v51 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
  v11 = *((&v48 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v50);

  _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v53);
  if (v10 >= v11)
  {
    return 1;
  }

  _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(a1, (v4 - 56));
  return 1;
}

void **_ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_OT0_NS_15iterator_traitsISC_E15difference_typeESC_(void **result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 3))
    {
      v8 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3)) | 1;
      v9 = result;
      v10 = &result[2 * ((a4 - result) >> 3) + 7];
      v11 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2;
      if (v11 < a3)
      {
        v63 = *v10;
        v12 = result[2 * ((a4 - result) >> 3) + 10];
        v64 = result[2 * ((a4 - result) >> 3) + 9];
        memset(v65, 0, sizeof(v65));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v65, v12, result[2 * ((a4 - result) >> 3) + 11], 0x6DB6DB6DB6DB6DB7 * ((result[2 * ((a4 - result) >> 3) + 11] - v12) >> 3));
        v66 = *(v10 + 48);
        v60 = *(v10 + 56);
        v13 = *(v10 + 80);
        v61 = *(v10 + 72);
        memset(v62, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v62, v13, *(v10 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 88) - v13) >> 3));
        v62[3] = *(v10 + 104);
        v14 = *((&v63 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
        v15 = *((&v60 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v62);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v65);
        if (v14 < v15)
        {
          v10 += 56;
          v8 = v11;
        }
      }

      v56 = *v10;
      v16 = *(v10 + 24);
      v57 = *(v10 + 16);
      memset(v58, 0, sizeof(v58));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v58, v16, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v16) >> 3));
      v59 = *(v10 + 48);
      v53 = *v5;
      v17 = *(v5 + 24);
      v54 = *(v5 + 16);
      memset(v55, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v55, v17, *(v5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 32) - v17) >> 3));
      v55[3] = *(v5 + 48);
      v18 = *((&v56 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
      v19 = *((&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v55);

      result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v58);
      if (v18 >= v19)
      {
        v47 = *v5;
        v20 = *(v5 + 24);
        v48 = *(v5 + 16);
        v49 = 0;
        v50 = 0;
        v51 = 0;
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v49, v20, *(v5 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 32) - v20) >> 3));
        obj = *(v5 + 48);
        do
        {
          v21 = v10;
          v22 = *v10;
          *(v5 + 16) = *(v10 + 16);
          *v5 = v22;
          if (v5 != v10)
          {
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v5 + 24), *(v10 + 24), *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - *(v10 + 24)) >> 3));
          }

          objc_storeStrong((v5 + 48), *(v10 + 48));
          if (v6 < v8)
          {
            break;
          }

          v23 = (2 * v8) | 1;
          v10 = &v9[14 * v8 + 7];
          v8 = 2 * v8 + 2;
          if (v8 >= a3)
          {
            v8 = v23;
          }

          else
          {
            v43 = *v10;
            v24 = *(v10 + 24);
            v44 = *(v10 + 16);
            memset(v45, 0, sizeof(v45));
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v45, v24, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v24) >> 3));
            v46 = *(v10 + 48);
            v40 = *(v10 + 56);
            v25 = *(v10 + 80);
            v41 = *(v10 + 72);
            memset(v42, 0, 24);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v42, v25, *(v10 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 88) - v25) >> 3));
            v42[3] = *(v10 + 104);
            v26 = *((&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
            v27 = *((&v40 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v42);

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v45);
            if (v26 >= v27)
            {
              v8 = v23;
            }

            else
            {
              v10 += 56;
            }
          }

          v36 = *v10;
          v28 = *(v10 + 24);
          v37 = *(v10 + 16);
          memset(v38, 0, sizeof(v38));
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v28, *(v10 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 32) - v28) >> 3));
          v39 = *(v10 + 48);
          v33 = v47;
          v34 = v48;
          memset(v35, 0, 24);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v49, v50, 0x6DB6DB6DB6DB6DB7 * ((v50 - v49) >> 3));
          v35[3] = obj;
          v29 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
          v30 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
          v5 = v21;
        }

        while (v29 >= v30);
        v31 = v47;
        *(v21 + 16) = v48;
        *v21 = v31;
        if (v21 != &v47)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l((v21 + 24), v49, v50, 0x6DB6DB6DB6DB6DB7 * ((v50 - v49) >> 3));
        }

        objc_storeStrong((v21 + 48), obj);

        return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v49);
      }
    }
  }

  return result;
}

void **_ZNSt3__110__pop_heapB8ne200100INS_17_ClassicAlgPolicyEZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE(void **result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v17 = *result;
    v8 = result[3];
    v18 = result[2];
    v19 = 0;
    v20 = 0;
    v21 = 0;
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v19, v8, result[4], 0x6DB6DB6DB6DB6DB7 * ((result[4] - v8) >> 3));
    obj = v7[6];
    v9 = _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(v7, a3, a4);
    v10 = v9;
    v11 = a2 - 56;
    if (v9 == (a2 - 56))
    {
      v16 = v17;
      *(v9 + 2) = v18;
      *v9 = v16;
      if (v9 != &v17)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v9 + 3, v19, v20, 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 3));
      }

      objc_storeStrong(v10 + 6, obj);
    }

    else
    {
      v12 = *v11;
      *(v9 + 2) = *(a2 - 40);
      *v9 = v12;
      v13 = (a2 - 32);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v9 + 3, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      v15 = *(a2 - 8);
      v14 = (a2 - 8);
      objc_storeStrong(v10 + 6, v15);
      *v11 = v17;
      *(v11 + 16) = v18;
      if (v11 != &v17)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v13, v19, v20, 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 3));
      }

      objc_storeStrong(v14, obj);
      _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(v7, v10 + 56, a3, 0x6DB6DB6DB6DB6DB7 * ((v10 + 56 - v7) >> 3));
    }

    return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v19);
  }

  return result;
}

__int128 *_ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(__int128 *a1, _DWORD *a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 56 * v5;
    v8 = (v7 + 56);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = *v8;
      v22 = *(v7 + 72);
      v21 = v11;
      memset(v23, 0, sizeof(v23));
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v23, *(v7 + 80), *(v7 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 88) - *(v7 + 80)) >> 3));
      v24 = *(v7 + 104);
      v12 = *(v7 + 128);
      v18 = *(v7 + 112);
      v19 = v12;
      memset(v20, 0, 24);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v20, *(v7 + 136), *(v7 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 144) - *(v7 + 136)) >> 3));
      v20[3] = *(v7 + 160);
      v13 = *((&v21 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
      v14 = *((&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a2 & 1))) + 8);
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v20);

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v23);
      if (v13 < v14)
      {
        v8 = (v7 + 112);
        v5 = v10;
      }
    }

    v15 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v15;
    if (a1 != v8)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(a1 + 3, *(v8 + 3), *(v8 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(v8 + 4) - *(v8 + 3)) >> 3));
    }

    objc_storeStrong(a1 + 6, *(v8 + 6));
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void **_ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS3_RKS4_S8_EUlS5_S5_E1_PS5_EEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(void **result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = &result[7 * (v4 >> 1)];
    v36 = *v9;
    v10 = v9[3];
    v37 = v9[2];
    memset(v38, 0, sizeof(v38));
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v38, v10, v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v10) >> 3));
    v39 = v9[6];
    v33 = *(a2 - 56);
    v11 = *(a2 - 32);
    v34 = *(a2 - 40);
    memset(v35, 0, 24);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v35, v11, *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - v11) >> 3));
    v35[3] = *(a2 - 8);
    v12 = *((&v36 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
    v13 = *((&v33 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v35);

    result = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v38);
    if (v12 < v13)
    {
      v14 = (a2 - 56);
      v27 = *(a2 - 56);
      v28 = *(a2 - 40);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(&v29, *(a2 - 32), *(a2 - 24), 0x6DB6DB6DB6DB6DB7 * ((*(a2 - 24) - *(a2 - 32)) >> 3));
      obj = *(a2 - 8);
      do
      {
        v15 = v9;
        v16 = *v9;
        v14[2] = v9[2];
        *v14 = v16;
        if (v14 != v9)
        {
          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v14 + 3, v9[3], v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v9[3]) >> 3));
        }

        objc_storeStrong(v14 + 6, v9[6]);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = &v7[7 * v8];
        v23 = *v9;
        v17 = v9[3];
        v24 = v9[2];
        memset(v25, 0, sizeof(v25));
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v25, v17, v9[4], 0x6DB6DB6DB6DB6DB7 * ((v9[4] - v17) >> 3));
        v26 = v9[6];
        v20 = v27;
        v21 = v28;
        memset(v22, 0, 24);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE16__init_with_sizeB8ne200100IPS4_S9_EEvT_T0_m(v22, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
        v22[3] = obj;
        v18 = *((&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        v19 = *((&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a3 & 1))) + 8);
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v22);

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v25);
        v14 = v15;
      }

      while (v18 < v19);
      *v15 = v27;
      v15[2] = v28;
      if (v15 != &v27)
      {
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE18__assign_with_sizeB8ne200100IPS4_S9_EEvT_T0_l(v15 + 3, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3));
      }

      objc_storeStrong(v15 + 6, obj);

      return _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(&v29);
    }
  }

  return result;
}

uint64_t _ZN12GKCRTreeNodeI8NSObjectDv2_fE12RemoveObjectEPS0_S1_S1_(void *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = v7;
  v10 = a1[3];
  v9 = a1[4];
  if (v9 != v10)
  {
    v46 = v7;
    v11 = 0;
    v12 = 0;
    if (v10[6])
    {
      do
      {
        v7 = &v10[v11];
        if (v10[v11 + 6] == v8)
        {
          _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v7, &v9[-7]);
          v13 = a1[4];

          v7 = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v13 - 32));
          v9 = (v13 - 56);
          a1[4] = v13 - 56;
          v10 = a1[3];
          v8 = v46;
        }

        ++v12;
        v11 += 7;
      }

      while (0x6DB6DB6DB6DB6DB7 * (v9 - v10) > v12);
    }

    else
    {
      do
      {
        v7 = &v10[v11];
        v14 = v10[v11 + 1];
        if ((vcgt_f32(v14, *&a3).u8[0] & 1) == 0)
        {
          v15 = vcge_f32(v7[2], *&a4);
          if (v15.i8[0] & 1) != 0 && (vcge_f32(*&a3, v14).i32[1] & 1) != 0 && (v15.i8[4])
          {
            _ZN12GKCRTreeNodeI8NSObjectDv2_fE12RemoveObjectEPS0_S1_S1_(a3, a4);
            v10 = a1[3];
            v9 = a1[4];
            v7 = &v10[v11];
            if (*&v10[v11 + 4] == *&v10[v11 + 3])
            {
              _ZNSt3__14swapB8ne200100I12GKCRTreeNodeI8NSObjectDv2_fEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(v7, &v9[-7]);
              v16 = a1[4];

              v7 = _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev((v16 - 32));
              v9 = (v16 - 56);
              a1[4] = v16 - 56;
              v10 = a1[3];
            }

            v8 = v46;
          }
        }

        ++v12;
        v11 += 7;
      }

      while (0x6DB6DB6DB6DB6DB7 * (v9 - v10) > v12);
    }
  }

  v17 = 0x6DB6DB6DB6DB6DB7 * (v9 - v10);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v19 = a1[1];
  v18 = a1[2];
  v20 = v18.i32[1];
  v21 = vceq_f32(v19, *&a3).u8[0];
  if (v9 == v10)
  {
    if (v21)
    {
      a1[1] = __PAIR64__(v19.u32[1], v18.u32[0]);
      v19 = __PAIR64__(v19.u32[1], v18.u32[0]);
    }

    if (vceq_f32(v18, *&a4).u8[0])
    {
      v18 = __PAIR64__(v18.u32[1], v19.u32[0]);
      a1[2] = v18;
      if (v9 != v10)
      {
        v37 = v10 + 2;
        v38 = v17;
        do
        {
          v39 = v18;
          v40 = *v37;
          v37 += 7;
          v41 = v40.f32[0];
          if (vcgt_f32(v40, v39).u8[0])
          {
            v42 = v41;
          }

          else
          {
            v42 = v39.f32[0];
          }

          v18 = __PAIR64__(v39.u32[1], LODWORD(v42));
          a1[2] = __PAIR64__(v39.u32[1], LODWORD(v42));
          --v38;
        }

        while (v38);
        v20 = v39.i32[1];
      }
    }

    if (vceq_f32(v19, *&a3).i32[1])
    {
      v19.i32[1] = v20;
      a1[1] = v19;
    }

    if (vceq_f32(v18, *&a4).i32[1])
    {
      v18.i32[1] = v19.i32[1];
      a1[2] = v18;
      if (v9 != v10)
      {
        v43 = &v10[2] + 1;
        do
        {
          v44 = *v43;
          v43 += 14;
          v18.i32[1] = fmaxf(v18.f32[1], v44);
          a1[2] = v18;
          --v17;
        }

        while (v17);
      }
    }
  }

  else
  {
    if (v21)
    {
      a1[1] = __PAIR64__(v19.u32[1], v18.u32[0]);
      v22 = v10 + 1;
      v23 = v17;
      v19 = __PAIR64__(v19.u32[1], v18.u32[0]);
      do
      {
        v24 = *v22;
        v22 += 7;
        v25 = v24.f32[0];
        if ((vcgt_f32(v19, v24).u32[0] & 1) == 0)
        {
          v25 = v19.f32[0];
        }

        v19.f32[0] = v25;
        a1[1] = v19;
        --v23;
      }

      while (v23);
    }

    if (vceq_f32(v18, *&a4).u8[0])
    {
      v18 = __PAIR64__(v18.u32[1], v19.u32[0]);
      a1[2] = v18;
      if (v9 != v10)
      {
        v26 = v10 + 2;
        v27 = v17;
        do
        {
          v28 = v18;
          v29 = *v26;
          v26 += 7;
          v30 = v29.f32[0];
          if (vcgt_f32(v29, v28).u8[0])
          {
            v31 = v30;
          }

          else
          {
            v31 = v28.f32[0];
          }

          v18 = __PAIR64__(v28.u32[1], LODWORD(v31));
          a1[2] = __PAIR64__(v28.u32[1], LODWORD(v31));
          --v27;
        }

        while (v27);
        v20 = v28.i32[1];
      }
    }

    if (vceq_f32(v19, *&a3).i32[1])
    {
      v19.i32[1] = v20;
      a1[1] = v19;
      v32 = &v10[1] + 1;
      v33 = v17;
      do
      {
        v34 = *v32;
        v32 += 14;
        v19.i32[1] = fminf(v34, v19.f32[1]);
        a1[1] = v19;
        --v33;
      }

      while (v33);
    }

    if (vceq_f32(v18, *&a4).i32[1])
    {
      v18.i32[1] = v19.i32[1];
      a1[2] = v18;
      if (v9 != v10)
      {
        v35 = &v10[2] + 1;
        do
        {
          v36 = *v35;
          v35 += 14;
          v18.i32[1] = fmaxf(v18.f32[1], v36);
          a1[2] = v18;
          --v17;
        }

        while (v17);
      }
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

void **std::vector<NSObject * {__strong}>::~vector[abi:ne200100](void **a1)
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
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

float32x2_t *_ZN12GKCRTreeNodeI8NSObjectDv2_fE5QueryES1_S1_RNSt3__16vectorIU8__strongPS0_NS3_9allocatorIS6_EEEE(float32x2_t *result, unint64_t *a2, float32x2_t a3, float32x2_t a4)
{
  v7 = result;
  v8 = result[1];
  if (vcgt_f32(a3, v8).u8[0] & 1) == 0 && (v15 = result[2], (vcge_f32(a4, v15).u32[0]) && (v16 = vcge_f32(vzip2_s32(a4, v8), vzip2_s32(v15, a3)), (v16.i8[4]) && (v16.i8[0] & 1) != 0 && (v17 = result[6]) != 0)
  {
    v18 = a2[1];
    if (v18 >= a2[2])
    {
      result = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(a2, &result[6]);
      a2[1] = result;
    }

    else
    {
      result = v17;
      *v18 = result;
      a2[1] = (v18 + 1);
    }
  }

  else
  {
    v10 = result[3];
    v9 = result[4];
    if (*&v9 != *&v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        result = (*&v10 + v11);
        v13 = *(*&v10 + v11 + 16);
        if ((vcgt_f32(a3, v13).u8[0] & 1) == 0)
        {
          v14 = vcge_f32(a4, result[1]);
          if (v14.i8[0] & 1) != 0 && (vcge_f32(v13, a3).i32[1] & 1) != 0 && (v14.i8[4])
          {
            result = _ZN12GKCRTreeNodeI8NSObjectDv2_fE5QueryES1_S1_RNSt3__16vectorIU8__strongPS0_NS3_9allocatorIS6_EEEE(*&a3, *&a4);
            v10 = v7[3];
            v9 = v7[4];
          }
        }

        ++v12;
        v11 += 56;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((*&v9 - *&v10) >> 3) > v12);
    }
  }

  return result;
}

uint64_t std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(unint64_t *a1, id *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = *a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = 8 * v3 - (v10 - *a1);
  *(8 * v3) = v8;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v13 = v12 - 8;
    v14 = v9;
    v15 = v11;
    if ((v12 - 8) < 0x98)
    {
      goto LABEL_30;
    }

    v16 = v9 >= v2 + (v13 & 0xFFFFFFFFFFFFFFF8) - v12 + 8 || v11 >= v9 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = v9;
    v15 = v11;
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v12 >> 3;
    v18 = (v13 >> 3) + 1;
    v19 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    v14 = &v9[v19];
    v15 = (v11 + v19 * 8);
    v20 = (-8 * v17 + 8 * v3 + 16);
    v21 = (v9 + 2);
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *(v21 - 1);
      v24 = *v21;
      *(v21 - 1) = 0uLL;
      *v21 = 0uLL;
      *(v20 - 1) = v23;
      *v20 = v24;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        v25 = *v14;
        *v14++ = 0;
        *v15++ = v25;
      }

      while (v14 != v10);
    }

    do
    {
      v26 = *v9++;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = 8 * v3 + 8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 8 * v3 + 8;
}

float *lqCreateDatabase(int a1, int a2, int a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v18 = malloc_type_malloc(0x38uLL, 0x10A00406D72BAEFuLL);
  *v18 = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  *(v18 + 6) = a1;
  *(v18 + 7) = a2;
  *(v18 + 8) = a3;
  v19 = a2 * a1 * a3;
  v20 = malloc_type_malloc(8 * v19, 0x2004093837F09uLL);
  *(v18 + 5) = v20;
  if (v19 >= 1)
  {
    bzero(v20, 8 * v19);
  }

  *(v18 + 6) = 0;
  return v18;
}

void lqInitDatabase(uint64_t a1, int a2, int a3, int a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  *a1 = a5;
  *(a1 + 4) = a6;
  *(a1 + 8) = a7;
  *(a1 + 12) = a8;
  *(a1 + 16) = a9;
  *(a1 + 20) = a10;
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  *(a1 + 32) = a4;
  v11 = a3 * a2 * a4;
  v12 = malloc_type_malloc(8 * v11, 0x2004093837F09uLL);
  *(a1 + 40) = v12;
  if (v11 >= 1)
  {
    bzero(v12, 8 * v11);
  }

  *(a1 + 48) = 0;
}

void lqDeleteDatabase(void **a1)
{
  free(a1[5]);

  free(a1);
}

uint64_t lqBinForLocation(uint64_t a1, float a2, float a3, float a4)
{
  v4 = *a1;
  if (*a1 > a2)
  {
    return a1 + 48;
  }

  v5 = *(a1 + 4);
  if (v5 > a3)
  {
    return a1 + 48;
  }

  v6 = *(a1 + 8);
  if (v6 > a4)
  {
    return a1 + 48;
  }

  v7 = *(a1 + 12);
  if ((v7 + v4) <= a2)
  {
    return a1 + 48;
  }

  v8 = *(a1 + 16);
  if ((v8 + v5) <= a3)
  {
    return a1 + 48;
  }

  v9 = *(a1 + 20);
  if ((v9 + v6) <= a4)
  {
    return a1 + 48;
  }

  else
  {
    return *(a1 + 40) + 8 * ((((a4 - v6) * *(a1 + 32)) / v9) + ((((a3 - v5) * *(a1 + 28)) / v8) + *(a1 + 28) * (((a2 - v4) * *(a1 + 24)) / v7)) * *(a1 + 32));
  }
}

void *lqInitClientProxy(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = a2;
  return result;
}

void *lqAddToBin(void *result, void **a2)
{
  if (*a2)
  {
    *result = 0;
    v2 = *a2;
    result[1] = *a2;
    *v2 = result;
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  *a2 = result;
  result[2] = a2;
  return result;
}

uint64_t *lqRemoveFromBin(uint64_t *result)
{
  v1 = result[2];
  if (v1)
  {
    if (*v1 == result)
    {
      *v1 = result[1];
    }

    v2 = *result;
    v3 = result[1];
    if (*result)
    {
      *(v2 + 8) = v3;
    }

    if (v3)
    {
      *v3 = v2;
    }
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t lqUpdateForNewLocation(uint64_t result, float *a2, float a3, float a4, float a5)
{
  v5 = *result;
  if (*result > a3 || (v6 = *(result + 4), v6 > a4) || (v7 = *(result + 8), v7 > a5) || (v8 = *(result + 12), (v8 + v5) <= a3) || (v9 = *(result + 16), (v9 + v6) <= a4) || (v10 = *(result + 20), (v10 + v7) <= a5))
  {
    v11 = (result + 48);
    a2[8] = a3;
    a2[9] = a4;
    a2[10] = a5;
    v12 = *(a2 + 2);
    if ((result + 48) == v12)
    {
      return result;
    }
  }

  else
  {
    v11 = (*(result + 40) + 8 * ((((a5 - v7) * *(result + 32)) / v10) + ((((a4 - v6) * *(result + 28)) / v9) + *(result + 28) * (((a3 - v5) * *(result + 24)) / v8)) * *(result + 32)));
    a2[8] = a3;
    a2[9] = a4;
    a2[10] = a5;
    v12 = *(a2 + 2);
    if (v11 == v12)
    {
      return result;
    }
  }

  if (v12)
  {
    v13 = *(a2 + 1);
    if (*v12 == a2)
    {
      *v12 = v13;
    }

    v14 = *a2;
    if (*a2)
    {
      *(v14 + 8) = v13;
    }

    if (v13)
    {
      *v13 = v14;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v15 = *v11;
  if (*v11)
  {
    *(a2 + 1) = v15;
    *v15 = a2;
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  *v11 = a2;
  *(a2 + 2) = v11;
  return result;
}

uint64_t lqMapOverAllObjectsInLocalityClipped(uint64_t result, uint64_t (*a2)(void, uint64_t), uint64_t a3, int a4, int a5, int a6, int a7, int a8, float a9, float a10, float a11, float a12, int a13)
{
  if (a4 <= a7 && a5 <= a8 && a6 <= a13)
  {
    v18 = result;
    v19 = *(result + 32);
    v20 = v19 * *(result + 28);
    v35 = v19;
    v21 = a6;
    v22 = a12 * a12;
    v23 = v20 * a4;
    v30 = v20;
    v31 = v19 * a5;
    do
    {
      v34 = a4;
      v24 = v31;
      v25 = a5;
      do
      {
        v27 = v21;
        do
        {
          for (i = *(*(v18 + 40) + 8 * v24 + 8 * v23 + 8 * v27); i; i = *(i + 8))
          {
            if (((((a9 - *(i + 32)) * (a9 - *(i + 32))) + ((a10 - *(i + 36)) * (a10 - *(i + 36)))) + ((a11 - *(i + 40)) * (a11 - *(i + 40)))) < v22)
            {
              result = a2(*(i + 24), a3);
            }
          }
        }

        while (v27++ < a13);
        v24 += v35;
      }

      while (v25++ != a8);
      v23 += v30;
      a4 = v34 + 1;
    }

    while (v34 != a7);
  }

  return result;
}

uint64_t lqMapOverAllOutsideObjects(uint64_t result, uint64_t (*a2)(void, uint64_t), uint64_t a3, float a4, float a5, float a6, float a7)
{
  v7 = *(result + 48);
  if (v7)
  {
    v13 = a7 * a7;
    do
    {
      if (((((a4 - *(v7 + 32)) * (a4 - *(v7 + 32))) + ((a5 - *(v7 + 36)) * (a5 - *(v7 + 36)))) + ((a6 - *(v7 + 40)) * (a6 - *(v7 + 40)))) < v13)
      {
        result = a2(*(v7 + 24), a3);
      }

      v7 = *(v7 + 8);
    }

    while (v7);
  }

  return result;
}

uint64_t lqMapOverAllObjectsInLocality(uint64_t result, uint64_t (*a2)(void, uint64_t), uint64_t a3, float a4, float a5, float a6, float a7)
{
  v12 = a7 + a4;
  v13 = *result;
  if (v12 < *result || (v14 = *(result + 4), (a7 + a5) < v14) || (v15 = a7 + a6, v16 = *(result + 8), (a7 + a6) < v16) || (v17 = *(result + 12), (a4 - a7) >= (v17 + v13)) || (v18 = *(result + 16), (a5 - a7) >= (v18 + v14)) || (v19 = *(result + 20), (a6 - a7) >= (v19 + v16)))
  {
    v37 = *(result + 48);
    if (v37)
    {
      v38 = a7 * a7;
      do
      {
        if (((((a4 - *(v37 + 32)) * (a4 - *(v37 + 32))) + ((a5 - *(v37 + 36)) * (a5 - *(v37 + 36)))) + ((a6 - *(v37 + 40)) * (a6 - *(v37 + 40)))) < v38)
        {
          result = a2(*(v37 + 24), a3);
        }

        v37 = *(v37 + 8);
      }

      while (v37);
    }
  }

  else
  {
    v20 = *(result + 24);
    v21 = *(result + 28);
    v22 = (((a4 - (v13 + a7)) * v20) / v17);
    v23 = (((a5 - (v14 + a7)) * v21) / v18);
    v24 = *(result + 32);
    v25 = (((a6 - (v16 + a7)) * v24) / v19);
    v26 = (((v12 - v13) * v20) / v17);
    v27 = ((((a7 + a5) - v14) * v21) / v18);
    v28 = (((v15 - v16) * v24) / v19);
    v29 = v22 & ~(v22 >> 31);
    v30 = v23 & ~(v23 >> 31);
    v31 = v25 & ~(v25 >> 31);
    if (v20 <= v26)
    {
      v32 = v20 - 1;
    }

    else
    {
      v32 = (((v12 - v13) * v20) / v17);
    }

    if (v21 <= v27)
    {
      v33 = v21 - 1;
    }

    else
    {
      v33 = ((((a7 + a5) - v14) * v21) / v18);
    }

    if (v24 <= v28)
    {
      v34 = v24 - 1;
    }

    else
    {
      v34 = (((v15 - v16) * v24) / v19);
    }

    if (v24 <= v28 || v21 <= v27 || v20 <= v26 || v25 < 0 || v23 < 0 || v22 < 0)
    {
      v35 = result;
      v36 = a7;
      lqMapOverAllOutsideObjects(result, a2, a3, a4, a5, a6, a7);
      result = v35;
      a7 = v36;
    }

    return lqMapOverAllObjectsInLocalityClipped(result, a2, a3, v29, v30, v31, v32, v33, a4, a5, a6, a7, v34);
  }

  return result;
}

uint64_t lqFindNearestHelper(uint64_t result, uint64_t a2, float a3)
{
  if (*a2 != result && *(a2 + 16) > a3)
  {
    *(a2 + 8) = result;
    *(a2 + 16) = a3;
  }

  return result;
}

uint64_t lqFindNearestNeighborWithinRadius(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v8 = 0;
  v7 = a2;
  v9 = 2139095039;
  lqMapOverAllObjectsInLocality(a1, lqFindNearestHelper, &v7, a3, a4, a5, a6);
  return v8;
}

uint64_t lqMapOverAllObjectsInBin(uint64_t result, uint64_t (*a2)(void, uint64_t, double), uint64_t a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      result = a2(*(v5 + 24), a3, 0.0);
      v5 = *(v5 + 8);
    }

    while (v5);
  }

  return result;
}

_DWORD *lqMapOverAllObjects(_DWORD *result, uint64_t (*a2)(void, uint64_t, double), uint64_t a3)
{
  v5 = result;
  v6 = (result[7] * result[6] * result[8]);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      for (j = *(*(v5 + 5) + 8 * i); j; j = *(j + 8))
      {
        result = a2(*(j + 24), a3, 0.0);
      }
    }
  }

  for (k = *(v5 + 6); k; k = *(k + 8))
  {
    result = a2(*(k + 24), a3, 0.0);
  }

  return result;
}

uint64_t lqRemoveAllObjects(uint64_t result)
{
  v1 = (*(result + 28) * *(result + 24) * *(result + 32));
  if (v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      while (1)
      {
        v3 = *(*(result + 40) + 8 * v2);
        if (v3)
        {
          break;
        }

        if (++v2 == v1)
        {
          goto LABEL_16;
        }
      }

      v4 = v3[2];
      if (v4)
      {
        break;
      }

LABEL_3:
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    v5 = v3[1];
    if (*v4 == v3)
    {
      *v4 = v5;
      v6 = *v3;
      if (!*v3)
      {
LABEL_11:
        if (v5)
        {
          *v5 = v6;
        }

        goto LABEL_3;
      }
    }

    else
    {
      v6 = *v3;
      if (!*v3)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8) = v5;
    goto LABEL_11;
  }

LABEL_16:
  while (1)
  {
    v7 = *(result + 48);
    if (!v7)
    {
      return result;
    }

    v8 = v7[2];
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = v7[1];
    if (*v8 != v7)
    {
      v10 = *v7;
      if (!*v7)
      {
        goto LABEL_21;
      }

LABEL_20:
      *(v10 + 8) = v9;
      goto LABEL_21;
    }

    *v8 = v9;
    v10 = *v7;
    if (*v7)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v9)
    {
      *v9 = v10;
    }

LABEL_15:
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }
}

void sub_2389A40E0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

OpenSteer::SimpleVehicle *OpenSteer::SimpleVehicle::SimpleVehicle(OpenSteer::SimpleVehicle *this)
{
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_284B4FE88;
  *(this + 42) = 0;
  *(this + 20) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 1065353216;
  *(this + 8) = xmmword_2389FB9C0;
  *(this + 24) = xmmword_2389FB9D0;
  *(this + 88) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  *(this + 24) = 1065353216;
  OpenSteer::SimpleVehicle::setSpeed(this, 0.0);
  (*(*this + 184))(this, 0.5);
  (*(*this + 232))(this, 1.0);
  v2 = (*(*this + 248))(this, 1.0);
  v2.i64[0] = _static_vec3_zero;
  v3 = dword_27DF48758;
  *&v4 = _static_vec3_zero;
  *(&v4 + 1) = __PAIR64__(_static_vec3_zero, dword_27DF48758);
  *(this + 38) = dword_27DF48758;
  *(this + 120) = v4;
  v5 = vuzp2q_s32(v2, vzip1q_s32(v2, v2));
  v6 = v5;
  v6.i32[1] = v3;
  v6.i32[3] = v5.i32[0];
  *(this + 136) = v6;
  *(this + 29) = 0;
  *(this + 39) = 0;
  v7 = _static_vec3_zero;
  *(this + 42) = dword_27DF48758;
  *(this + 20) = v7;
  LODWORD(v7) = OpenSteer::SimpleVehicle::serialNumberCounter++;
  *(this + 23) = v7;
  return this;
}

float OpenSteer::SimpleVehicle::SimpleVehicle(OpenSteer::SimpleVehicle *this)
{
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_284B4FE88;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 10) = 1065353216;
  *(this + 8) = xmmword_2389FB9C0;
  *(this + 24) = xmmword_2389FB9D0;
  *(this + 88) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  v1.i64[1] = 0x3F80000000000000;
  *(this + 6) = xmmword_2389FB9E0;
  *(this + 42) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v1.i64[0] = _static_vec3_zero;
  v2 = dword_27DF48758;
  *(this + 38) = dword_27DF48758;
  *&v3 = v1.i64[0];
  *(&v3 + 1) = __PAIR64__(v1.u32[0], v2);
  *(this + 120) = v3;
  v4 = vuzp2q_s32(v1, vzip1q_s32(v1, v1));
  v5 = v4;
  v5.i32[1] = v2;
  v5.i32[3] = v4.i32[0];
  *(this + 136) = v5;
  *(this + 14) = 1065353216;
  v6 = _static_vec3_zero;
  result = *&dword_27DF48758;
  *(this + 42) = dword_27DF48758;
  *(this + 20) = v6;
  LODWORD(v6) = OpenSteer::SimpleVehicle::serialNumberCounter++;
  *(this + 23) = v6;
  return result;
}

void OpenSteer::SimpleVehicle::adjustRawSteeringForce(OpenSteer::SimpleVehicle *this, float32x2_t *a2, float a3)
{
  v5 = (*(*this + 240))(this, a3) * 0.2;
  if ((*(*this + 200))(this) <= v5)
  {
    if (a2->f32[0] != *&_static_vec3_zero || a2->f32[1] != *(&_static_vec3_zero + 1) || a2[1].f32[0] != *&dword_27DF48758)
    {
      v8 = (*(*this + 200))(this);
      v9 = (v8 / v5) * (v8 / v5);
      *&v9 = v9 * v9 * (v9 * v9 * (v9 * v9) * (v9 * v9 * (v9 * v9)));
      v10 = 1.0 - (*&v9 + *&v9);
      v18.x = (*(*this + 32))(this);
      v18.y = *&v11;
      v18.z = *&v12;
      OpenSteer::vecLimitDeviationAngleUtility(1, a2, &v18, v10, v13, v11, v12, v14, v15, v16, v17);
    }
  }

  else
  {
    v6 = a2->f32[1];
    v7 = a2[1].f32[0];
  }
}

uint64_t OpenSteer::SimpleVehicle::applyBrakingForce(OpenSteer::SimpleVehicle *this, float a2, float a3)
{
  v5 = (*(*this + 200))(this) * a2;
  if (v5 >= (*(*this + 224))(this))
  {
    v5 = (*(*this + 224))(this);
  }

  v6.n128_f32[0] = (*(*this + 200))(this) - (v5 * a3);
  v7 = *(*this + 208);

  return v7(this, v6);
}

float32x4_t OpenSteer::SimpleVehicle::applySteeringForce(OpenSteer::SimpleVehicle *this, const Vec3 *a2, __n128 a3)
{
  v4 = (*(*this + 296))(this, a2);
  v37 = v5;
  v39 = v6;
  v10.n128_f32[0] = (*(*this + 224))(this);
  v7 = ((v4 * v4) + (v37 * v37)) + (v39 * v39);
  v8 = v7 <= (v10.n128_f32[0] * v10.n128_f32[0]);
  v10.n128_f32[0] = v10.n128_f32[0] / sqrtf(v7);
  v9 = v10.n128_f32[0] * v4;
  v10.n128_u64[0] = vmul_n_f32(__PAIR64__(LODWORD(v39), LODWORD(v37)), v10.n128_f32[0]);
  if (v8)
  {
    v11 = COERCE_DOUBLE(__PAIR64__(LODWORD(v39), LODWORD(v37)));
  }

  else
  {
    v4 = v9;
    v11 = v10.n128_f64[0];
  }

  v36 = COERCE_INT32X2_T((*(*this + 160))(this, v10));
  (*(*this + 192))(this);
  v38 = v14;
  v40 = v13;
  if (a3.n128_f32[0] <= 0.0)
  {
    v16 = *(this + 40);
    v17 = *(this + 164);
  }

  else
  {
    v15 = fmaxf(fminf(fmaxf(fminf(a3.n128_f32[0] * 9.0, 0.4), 0.15), 1.0), 0.0);
    v16 = *(this + 40) + (((v4 / *v36.i32) - *(this + 40)) * v15);
    v17 = vmla_n_f32(*(this + 164), vsub_f32(vdiv_f32(*&v11, vdup_lane_s32(v36, 0)), *(this + 164)), v15);
    *(this + 40) = v16;
    *(this + 164) = v17;
  }

  v18 = vmul_n_f32(v17, a3.n128_f32[0]);
  v19 = v12 + (v16 * a3.n128_f32[0]);
  v20 = (*(*this + 240))(this);
  v21 = vadd_f32(v18, __PAIR64__(v38, v40));
  v22 = vmul_f32(v21, v21);
  v23 = (v22.f32[0] + (v19 * v19)) + v22.f32[1];
  if (v23 > (v20 * v20))
  {
    v24 = v20 / sqrtf(v23);
    v19 = v24 * v19;
    v21 = vmul_n_f32(v21, v24);
    v25 = vmul_f32(v21, v21);
    v23 = (v25.f32[0] + (v19 * v19)) + v25.f32[1];
  }

  v26 = v21.f32[1];
  v41 = v21.f32[0];
  v43 = v19;
  v44 = v21;
  (*(*this + 208))(this, sqrtf(v23));
  v27 = (*(*this + 48))(this);
  (*(*this + 56))(this, *&v27 + (v19 * a3.n128_f32[0]), v28 + (v41 * a3.n128_f32[0]), v29 + (v26 * a3.n128_f32[0]));
  (*(*this + 288))(this, &v43, a3);
  OpenSteer::SimpleVehicle::measurePathCurvature(this, a3.n128_f32[0]);
  v30 = (*(*this + 48))(this);
  v30.i32[1] = v31;
  v32.i64[0] = *(this + 18);
  v32.i32[2] = *(this + 38);
  v30.i32[2] = v33;
  result = vsubq_f32(v30, v32);
  v35 = vmlaq_n_f32(v32, result, fmaxf(fminf(a3.n128_f32[0] * 0.06, 1.0), 0.0));
  *(this + 38) = v35.i32[2];
  *(this + 18) = v35.i64[0];
  return result;
}

void OpenSteer::SimpleVehicle::measurePathCurvature(OpenSteer::SimpleVehicle *this, float a2)
{
  if (a2 > 0.0)
  {
    v4 = *(this + 33) - (*(*this + 48))(this);
    v6 = *(this + 34) - v5;
    v8 = *(this + 35) - v7;
    v9 = (*(*this + 32))(this);
    v12 = 1.0 / sqrtf(((v4 * v4) + (v6 * v6)) + (v8 * v8));
    v13 = (*(this + 30) - v9) * v12;
    v14 = (*(this + 31) - v10) * v12;
    v15 = (*(this + 32) - v11) * v12;
    v16 = (*(*this + 32))(this);
    v19 = ((v16 * v13) + (v17 * v14)) + (v18 * v15);
    v20 = v13 - (v19 * v16);
    v21 = v14 - (v19 * v17);
    v22 = v15 - (v19 * v18);
    v23 = (**this)(this);
    v26 = ((v23 * v20) + (v24 * v21)) + (v25 * v22);
    v27 = sqrtf(((v20 * v20) + (v21 * v21)) + (v22 * v22));
    if (v26 >= 0.0)
    {
      v28 = -v27;
    }

    else
    {
      v28 = v27;
    }

    *(this + 29) = v28;
    *(this + 39) = *(this + 39) + ((v28 - *(this + 39)) * fmaxf(fminf(a2 * 4.0, 1.0), 0.0));
    *(this + 30) = (*(*this + 32))(this);
    *(this + 31) = v29;
    *(this + 32) = v30;
    *(this + 33) = (*(*this + 48))(this);
    *(this + 34) = v31;
    *(this + 35) = v32;
  }
}

void OpenSteer::SimpleVehicle::regenerateLocalSpace(OpenSteer::SimpleVehicle *this, const Vec3 *a2, float a3)
{
  if ((*(*this + 200))(this, a3) > 0.0)
  {
    *&v5 = (*(*this + 200))(this);
    v6.i64[0] = *&a2->x;
    v6.i32[2] = LODWORD(a2->z);
    __asm { FMOV            V2.4S, #1.0 }

    v12 = vmulq_f32(v6, vdivq_f32(_Q2, vdupq_lane_s32(v5, 0)));
    v14 = v12.i32[2];
    v13 = v12.i64[0];
    (*(*this + 120))(this, &v13);
  }
}

void OpenSteer::SimpleVehicle::regenerateLocalSpaceForBanking(OpenSteer::SimpleVehicle *this, const Vec3 *a2, float a3)
{
  v5 = *(this + 40);
  v6 = *(this + 42);
  v7 = (*(this + 41) * 0.05) + 0.2;
  v8 = a3 * 3.0;
  v10.n128_f32[0] = (*(*this + 16))(this);
  v9 = fmaxf(fminf(v8, 1.0), 0.0);
  v10.n128_f32[0] = v10.n128_f32[0] + (-(v10.n128_f32[0] - (v5 * 0.05)) * v9);
  v11.n128_f32[0] = v11.n128_f32[0] + ((v7 - v11.n128_f32[0]) * v9);
  v12.n128_f32[0] = v12.n128_f32[0] + (-(v12.n128_f32[0] - (v6 * 0.05)) * v9);
  v13 = sqrtf(((v10.n128_f32[0] * v10.n128_f32[0]) + (v11.n128_f32[0] * v11.n128_f32[0])) + (v12.n128_f32[0] * v12.n128_f32[0]));
  if (v13 > 0.0)
  {
    v10.n128_f32[0] = v10.n128_f32[0] * (1.0 / v13);
    v11.n128_f32[0] = v11.n128_f32[0] * (1.0 / v13);
    v12.n128_f32[0] = v12.n128_f32[0] * (1.0 / v13);
  }

  (*(*this + 24))(this, v10, v11, v12);
  if ((*(*this + 200))(this) > 0.0)
  {
    *&v14 = (*(*this + 200))(this);
    v15.i64[0] = *&a2->x;
    v15.i32[2] = LODWORD(a2->z);
    __asm { FMOV            V2.4S, #1.0 }

    v21 = vmulq_f32(v15, vdivq_f32(_Q2, vdupq_lane_s32(v14, 0)));
    v23 = v21.i32[2];
    v22 = v21.i64[0];
    (*(*this + 120))(this, &v22);
  }
}

float OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::side(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  return result;
}

float *OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::setSide(float *result, float a2, float a3, float a4)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

float OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::up(uint64_t a1)
{
  result = *(a1 + 20);
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  return result;
}

float *OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::setUp(float *result, float a2, float a3, float a4)
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  return result;
}

float OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::forward(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(a1 + 36);
  v3 = *(a1 + 40);
  return result;
}

float *OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::setForward(float *result, float a2, float a3, float a4)
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  return result;
}

float OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::position(uint64_t a1)
{
  result = *(a1 + 44);
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);
  return result;
}

float *OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::setPosition(float *result, float a2, float a3, float a4)
{
  result[11] = a2;
  result[12] = a3;
  result[13] = a4;
  return result;
}

double OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::resetLocalSpace(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 1065353216;
  *(a1 + 8) = (*(*a1 + 144))(a1, a1 + 32);
  *(a1 + 12) = v2;
  *(a1 + 16) = v3;
  result = 0.0078125;
  *(a1 + 20) = 0x3F80000000000000;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  return result;
}

float OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::localizeDirection(float *a1, float *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  result = ((a1[2] * *a2) + (a1[3] * v2)) + (a1[4] * v3);
  v5 = ((a1[5] * *a2) + (a1[6] * v2)) + (a1[7] * v3);
  v6 = ((a1[8] * *a2) + (a1[9] * v2)) + (a1[10] * v3);
  return result;
}

uint64_t OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::localizePosition(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  a3.i64[0] = *a2;
  a3.i32[2] = *(a2 + 8);
  a4.i64[0] = *(a1 + 44);
  a4.i32[2] = *(a1 + 52);
  v4 = vsubq_f32(a3, a4);
  v7 = v4.i32[2];
  v6 = v4.i64[0];
  return (*(*a1 + 80))(a1, &v6);
}

float OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::globalizePosition(float *a1)
{
  result = (*(*a1 + 104))(a1) + a1[11];
  v4 = a1[12] + v3;
  v6 = a1[13] + v5;
  return result;
}

float32x2_t OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::globalizeDirection(uint64_t a1, float *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  result = vmla_n_f32(vmla_n_f32(vmul_n_f32(*(a1 + 8), *a2), *(a1 + 20), v2), *(a1 + 32), v3);
  v5 = ((*(a1 + 16) * *a2) + (*(a1 + 28) * v2)) + (*(a1 + 40) * v3);
  return result;
}

uint64_t OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::setUnitSideFromForwardAndUp(float *a1)
{
  result = (*(*a1 + 64))(a1);
  v3 = 5;
  if (result)
  {
    v4 = 8;
  }

  else
  {
    v4 = 5;
  }

  if (!result)
  {
    v3 = 8;
  }

  v5 = 6;
  if (result)
  {
    v6 = 9;
  }

  else
  {
    v6 = 6;
  }

  v7 = 10;
  if (result)
  {
    v8 = 7;
  }

  else
  {
    v8 = 10;
  }

  if (!result)
  {
    v7 = 7;
  }

  v9 = a1[v6];
  v10 = a1[v8];
  v11 = a1[v7];
  if (!result)
  {
    v5 = 9;
  }

  v12 = a1[v5];
  v13 = a1[v3];
  v14 = -((v12 * v11) - (v10 * v9));
  v15 = a1[v4];
  v16 = -((v15 * v10) - (v13 * v11));
  v17 = -((v13 * v9) - (v15 * v12));
  v18 = sqrtf(((v14 * v14) + (v16 * v16)) + (v17 * v17));
  if (v18 > 0.0)
  {
    v19 = 1.0 / v18;
    v14 = v14 * v19;
    v16 = v16 * v19;
    v17 = v17 * v19;
  }

  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v17;
  return result;
}

float OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::regenerateOrthonormalBasisUF(float *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(a1 + 4) = *a2;
  v4 = a1 + 8;
  *(a1 + 10) = v3;
  v5 = a1 + 10;
  (*(*a1 + 112))(a1);
  v6 = (*(*a1 + 64))(a1);
  v7 = a1 + 2;
  if (v6)
  {
    v8 = a1 + 9;
    v9 = a1[3];
    v10 = a1[10];
    v11 = v10 * v9;
    v5 = a1 + 4;
    v12 = v4;
  }

  else
  {
    v9 = a1[9];
    v10 = a1[4];
    v11 = v10 * v9;
    v8 = a1 + 3;
    v12 = a1 + 2;
    v7 = v4;
  }

  v13 = -((*v7 * v10) - (*v12 * *v5));
  result = -((*v12 * v9) - (*v7 * *v8));
  a1[5] = v11 - (*v8 * *v5);
  a1[6] = v13;
  a1[7] = result;
  return result;
}

uint64_t OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::regenerateOrthonormalBasis(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  a3.i64[0] = *a2;
  a3.i32[2] = *(a2 + 8);
  v5 = vmulq_f32(a3, a3);
  v5.f32[0] = sqrtf(vaddv_f32(*v5.f32) + v5.f32[2]);
  if (v5.f32[0] > 0.0)
  {
    __asm { FMOV            V2.4S, #1.0 }

    a3 = vmulq_f32(a3, vdivq_f32(_Q2, vdupq_lane_s32(*v5.f32, 0)));
  }

  v14 = v3;
  v15 = v4;
  v13 = a3.u32[2];
  v12 = a3.i64[0];
  return (*(*a1 + 120))(a1, &v12);
}

uint64_t OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::regenerateOrthonormalBasis(uint64_t a1, uint64_t a2, uint64_t *a3, float32x4_t a4)
{
  v6 = *a3;
  *(a1 + 28) = *(a3 + 2);
  *(a1 + 20) = v6;
  a4.i64[0] = *a2;
  a4.i32[2] = *(a2 + 8);
  v7 = vmulq_f32(a4, a4);
  v7.f32[0] = sqrtf(vaddv_f32(*v7.f32) + v7.f32[2]);
  if (v7.f32[0] > 0.0)
  {
    __asm { FMOV            V2.4S, #1.0 }

    a4 = vmulq_f32(a4, vdivq_f32(_Q2, vdupq_lane_s32(*v7.f32, 0)));
  }

  v16 = v4;
  v17 = v5;
  v15 = a4.u32[2];
  v14 = a4.i64[0];
  return (*(*a1 + 128))(a1, &v14);
}

uint64_t OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::localRotateForwardToSide(uint64_t a1, float *a2)
{
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    v4 = -a2[2];
  }

  v6 = *a2;
  v5 = *(a2 + 1);
  return result;
}

uint64_t OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>::globalRotateForwardToSide(uint64_t a1)
{
  v8[0] = (*(*a1 + 80))(a1);
  v8[1] = v2;
  v8[2] = v3;
  v7[0] = (*(*a1 + 144))(a1, v8);
  v7[1] = v4;
  v7[2] = v5;
  return (*(*a1 + 104))(a1, v7);
}

void *std::vector<GKPolygonObstacle * {__strong}>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_2389A7680(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void sub_2389A7AD0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

id GKCMinmaxStrategist::findBestMoveForPlayer(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v7 = 0;
  if (v6 && *(a1 + 72))
  {
    *(a1 + 184) = objc_opt_respondsToSelector() & 1;
    v8 = *(a1 + 72);
    *(a1 + 185) = objc_opt_respondsToSelector() & 1;
    v9 = *(a1 + 72);
    *(a1 + 186) = objc_opt_respondsToSelector() & 1;
    v10 = [*(a1 + 72) players];

    if (v10)
    {
      v11 = [*(a1 + 72) players];
      *(a1 + 120) = [v11 count];

      objc_storeStrong((a1 + 80), a2);
      if (*(a1 + 120) < 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 120) = 0;
      objc_storeStrong((a1 + 80), a2);
      if (*(a1 + 120) < 1)
      {
        goto LABEL_12;
      }
    }

    v12 = [*(a1 + 72) players];
    v13 = [v12 containsObject:v6];

    if (v13)
    {
      if (*(a1 + 104) <= 0)
      {
        *(a1 + 104) = 1;
        v14 = *(a1 + 96);
        if (v14 > 0)
        {
LABEL_10:
          v15 = *a1;
          v16 = *(a1 + 8);
          v17 = *a1;
          if (v16 == *a1)
          {
LABEL_21:
            *(a1 + 8) = v15;
            v24 = (v15 - v17) >> 3;
            v20 = v14 >= v24;
            v21 = v14 - v24;
            if (v14 > v24)
            {
LABEL_22:
              std::vector<objc_object  {objcproto11GKGameModel}* {__strong}>::__append(a1, v21);
              goto LABEL_23;
            }

LABEL_17:
            if (!v20)
            {
              v22 = v17 + 8 * v14;
              while (v15 != v22)
              {
                v23 = *(v15 - 8);
                v15 -= 8;
              }

              *(a1 + 8) = v22;
            }

LABEL_23:
            if (*(a1 + 96) >= 1)
            {
              v25 = 0;
              do
              {
                v26 = [*(a1 + 72) copyWithZone:0];
                v27 = *(*a1 + 8 * v25);
                *(*a1 + 8 * v25) = v26;

                ++v25;
              }

              while (v25 < *(a1 + 96));
            }

            v94 = 0;
            v95 = 0;
            v28 = *(a1 + 72);
            if (*(a1 + 186))
            {
              v29 = [*(a1 + 72) copyWithZone:0];

              v28 = v29;
            }

            if (*(a1 + 120) == 2)
            {
              GKCMinmaxStrategist::findBestMove2Player(a1, v28, *(a1 + 96), 0x8000000000000000, 0x7FFFFFFFFFFFFFFFLL, &v95, &v94);
            }

            else
            {
              v31 = (a1 + 48);
              v30 = *(a1 + 48);
              v32 = *(a1 + 96);
              v33 = *(a1 + 56);
              v34 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v30) >> 3);
              if (v32 + 1 <= v34)
              {
                if (v32 + 1 < v34)
                {
                  v35 = v30 + 24 * v32 + 24;
                  if (v33 != v35)
                  {
                    v36 = *(a1 + 56);
                    do
                    {
                      v38 = *(v36 - 24);
                      v36 -= 24;
                      v37 = v38;
                      if (v38)
                      {
                        *(v33 - 16) = v37;
                        operator delete(v37);
                      }

                      v33 = v36;
                    }

                    while (v36 != v35);
                  }

                  *(a1 + 56) = v35;
                }
              }

              else
              {
                std::vector<std::vector<long>>::__append(a1 + 48, v32 + 1 - v34);
              }

              v39 = *(a1 + 96);
              if ((v39 & 0x8000000000000000) == 0)
              {
                v40 = 0;
                v41 = *(a1 + 120);
                do
                {
                  v42 = (*v31 + 24 * v40);
                  v43 = (v42[1] - *v42) >> 3;
                  if (v41 <= v43)
                  {
                    if (v41 < v43)
                    {
                      v42[1] = *v42 + 8 * v41;
                    }
                  }

                  else
                  {
                    std::vector<long>::__append(v42, v41 - v43);
                    v41 = *(a1 + 120);
                  }

                  if (v41 >= 1)
                  {
                    v44 = 0;
                    v45 = *(*v31 + 24 * v40);
                    do
                    {
                      *(v45 + 8 * v44++) = 0;
                      v41 = *(a1 + 120);
                    }

                    while (v44 < v41);
                  }

                  v39 = *(a1 + 96);
                  v70 = v40++ < v39;
                }

                while (v70);
              }

              GKCMinmaxStrategist::findBestMoveNPlayer(a1, v28, v39, &v95, &v94);
            }

            v46 = *(a1 + 40);
            if (!v46)
            {
              goto LABEL_104;
            }

            v47 = (a1 + 24);
            std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#1}>(*(a1 + 32), (a1 + 24), v46);
            v48 = *(a1 + 32);
            v49 = *(v48 + 4);
            if (v49 == -1)
            {
              std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#3}>(*(a1 + 32), (a1 + 24), *(a1 + 40));
              v50 = *(a1 + 32);
              if (v50 != v47)
              {
                v51 = *(v50 + 5);
                while (*(v50 + 5) >= v51)
                {
                  v50 = *(v50 + 1);
                  if (v50 == v47)
                  {
                    goto LABEL_92;
                  }
                }

                if (v50 != v47)
                {
                  for (i = *(v50 + 1); i != v47; i = *(i + 8))
                  {
                    if (*(i + 40) >= v51)
                    {
                      objc_storeStrong(v50 + 2, *(i + 16));
                      v87 = *(i + 24);
                      *(v50 + 5) = *(i + 40);
                      *(v50 + 24) = v87;
                      v50 = *(v50 + 1);
                    }
                  }
                }

                if (v50 != v47)
                {
                  v88 = *(*v47 + 8);
                  v89 = *v50;
                  *(v89 + 8) = v88;
                  *v88 = v89;
                  do
                  {
                    v90 = *(v50 + 1);
                    --*(a1 + 40);

                    operator delete(v50);
                    v50 = v90;
                  }

                  while (v90 != v47);
                }
              }
            }

            else if (v49 == 1)
            {
              if (v48 != v47)
              {
                while (*(v48 + 4) >= 1)
                {
                  v48 = *(v48 + 1);
                  if (v48 == v47)
                  {
                    goto LABEL_77;
                  }
                }

                if (v48 != v47)
                {
                  for (j = *(v48 + 1); j != v47; j = *(j + 8))
                  {
                    if (*(j + 32) >= 1)
                    {
                      objc_storeStrong(v48 + 2, *(j + 16));
                      v53 = *(j + 24);
                      *(v48 + 5) = *(j + 40);
                      *(v48 + 24) = v53;
                      v48 = *(v48 + 1);
                    }
                  }
                }

                if (v48 != v47)
                {
                  v54 = *(*v47 + 8);
                  v55 = *v48;
                  v55[1] = v54;
                  *v54 = v55;
                  do
                  {
                    v56 = *(v48 + 1);
                    --*(a1 + 40);

                    operator delete(v48);
                    v48 = v56;
                  }

                  while (v56 != v47);
                }
              }

LABEL_77:
              std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#2}>(*(a1 + 32), (a1 + 24), *(a1 + 40));
              v57 = *(a1 + 32);
              if (v57 != v47)
              {
                v58 = *(v57 + 5);
                while (*(v57 + 5) <= v58)
                {
                  v57 = *(v57 + 1);
                  if (v57 == v47)
                  {
                    goto LABEL_92;
                  }
                }

                if (v57 != v47)
                {
                  for (k = *(v57 + 1); k != v47; k = *(k + 8))
                  {
                    if (*(k + 40) <= v58)
                    {
                      objc_storeStrong(v57 + 2, *(k + 16));
                      v82 = *(k + 24);
                      *(v57 + 5) = *(k + 40);
                      *(v57 + 24) = v82;
                      v57 = *(v57 + 1);
                    }
                  }
                }

                if (v57 != v47)
                {
                  v83 = *(*v47 + 8);
                  v84 = *v57;
                  *(v84 + 8) = v83;
                  *v83 = v84;
                  do
                  {
                    v85 = *(v57 + 1);
                    --*(a1 + 40);

                    operator delete(v57);
                    v57 = v85;
                  }

                  while (v85 != v47);
                }
              }
            }

            else
            {
              while (v48 != v47)
              {
                if ((*(v48 + 4) & 0x8000000000000000) != 0)
                {
                  if (v48 != v47)
                  {
                    for (m = *(v48 + 1); m != v47; m = *(m + 8))
                    {
                      if ((*(m + 32) & 0x8000000000000000) == 0)
                      {
                        objc_storeStrong(v48 + 2, *(m + 16));
                        v60 = *(m + 24);
                        *(v48 + 5) = *(m + 40);
                        *(v48 + 24) = v60;
                        v48 = *(v48 + 1);
                      }
                    }
                  }

                  if (v48 != v47)
                  {
                    v61 = *(*v47 + 8);
                    v62 = *v48;
                    v62[1] = v61;
                    *v61 = v62;
                    do
                    {
                      v63 = *(v48 + 1);
                      --*(a1 + 40);

                      operator delete(v48);
                      v48 = v63;
                    }

                    while (v63 != v47);
                  }

                  break;
                }

                v48 = *(v48 + 1);
              }

              std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#3}>(*(a1 + 32), (a1 + 24), *(a1 + 40));
            }

LABEL_92:
            std::list<GKCMoveData>::__sort<GKCMinmaxStrategist::findBestMoveForPlayer(objc_object  {objcproto17GKGameModelPlayer}*,BOOL)::{lambda(GKCMoveData const&,GKCMoveData const)#5}>(*(a1 + 32), (a1 + 24), *(a1 + 40));
            v64 = *(a1 + 88);
            if (a3)
            {
              if (v64)
              {
                v65 = *(a1 + 40);
                if (*(a1 + 104) < v65)
                {
                  v65 = *(a1 + 104);
                }

                v66 = [v64 nextIntWithUpperBound:v65];
                v67 = *(a1 + 32);
                v68 = v67 != v47;
                if (v67 != v47 && v66 >= 1)
                {
                  v69 = 1;
                  do
                  {
                    v67 = *(v67 + 1);
                    v68 = v67 != v47;
                    v70 = v67 != v47 && v69++ < v66;
                  }

                  while (v70);
                }

                if (!v68)
                {
LABEL_104:
                  v7 = 0;
LABEL_121:
                  GKCMinmaxStrategist::clearData(a1);

                  goto LABEL_122;
                }

LABEL_114:
                v7 = *(v67 + 2);
                goto LABEL_121;
              }
            }

            else if (v64)
            {
              v71 = *(a1 + 32);
              v72 = *(v71 + 24);
              __p = 0;
              v92 = 0;
              v93 = 0;
              if (v71 == v47)
              {
                v74 = 0;
              }

              else
              {
                v73 = 0;
                while (*(v71 + 24) >= v72)
                {
                  if (v73 < v93)
                  {
                    *v73 = *(v71 + 16);
                    v73 += 8;
                    v92 = v73;
                    v71 = *(v71 + 8);
                    if (v71 == v47)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v73 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(&__p, (v71 + 16));
                    v92 = v73;
                    v71 = *(v71 + 8);
                    if (v71 == v47)
                    {
                      break;
                    }
                  }
                }

                v64 = *(a1 + 88);
                v74 = ((v73 - __p) >> 3);
              }

              v75 = [v64 nextIntWithUpperBound:v74];
              v76 = __p;
              v7 = *(__p + v75);
              if (v76)
              {
                v77 = v92;
                v78 = v76;
                if (v92 != v76)
                {
                  do
                  {
                    v79 = *(v77 - 1);
                    v77 -= 8;
                  }

                  while (v77 != v76);
                  v78 = __p;
                }

                v92 = v76;
                operator delete(v78);
              }

              goto LABEL_121;
            }

            v67 = *(a1 + 32);
            goto LABEL_114;
          }

          do
          {
LABEL_15:
            v18 = *(v16 - 8);
            v16 -= 8;
          }

          while (v16 != v15);
          v14 = *(a1 + 96);
          v17 = *a1;
          *(a1 + 8) = v15;
          v19 = (v15 - v17) >> 3;
          v20 = v14 >= v19;
          v21 = v14 - v19;
          if (v14 > v19)
          {
            goto LABEL_22;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v14 = *(a1 + 96);
        if (v14 > 0)
        {
          goto LABEL_10;
        }
      }

      v14 = 1;
      *(a1 + 96) = 1;
      v15 = *a1;
      v16 = *(a1 + 8);
      v17 = *a1;
      if (v16 == *a1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }

LABEL_12:
    v7 = 0;
  }

LABEL_122:

  return v7;
}

void sub_2389A8598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void GKCMinmaxStrategist::~GKCMinmaxStrategist(id *this)
{
  v2 = this[6];
  if (v2)
  {
    v3 = this[7];
    v4 = this[6];
    if (v3 != v2)
    {
      v5 = this[7];
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
      v4 = this[6];
    }

    this[7] = v2;
    operator delete(v4);
  }

  if (this[5])
  {
    v8 = this[4];
    v9 = *(this[3] + 1);
    v10 = *v8;
    *(v10 + 8) = v9;
    *v9 = v10;
    this[5] = 0;
    if (v8 != (this + 3))
    {
      do
      {
        v11 = *(v8 + 1);

        operator delete(v8);
        v8 = v11;
      }

      while (v11 != (this + 3));
    }
  }

  v12 = *this;
  if (*this)
  {
    v13 = this[1];
    v14 = *this;
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 8;
      }

      while (v13 != v12);
      v14 = *this;
    }

    this[1] = v12;
    operator delete(v14);
  }
}

double GKCMinmaxStrategist::clearData(GKCMinmaxStrategist *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (v3 != *this)
  {
    do
    {
      v4 = *(v3 - 8);
      v3 -= 8;
    }

    while (v3 != v2);
  }

  *(this + 1) = v2;
  if (*(this + 5))
  {
    v5 = *(this + 4);
    v6 = *(*(this + 3) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 5) = 0;
    if (v5 != (this + 24))
    {
      do
      {
        v8 = *(v5 + 1);

        operator delete(v5);
        v5 = v8;
      }

      while (v8 != (this + 24));
    }
  }

  v10 = *(this + 6);
  v9 = *(this + 7);
  if (v9 != v10)
  {
    v11 = *(this + 7);
    do
    {
      v13 = *(v11 - 24);
      v11 -= 24;
      v12 = v13;
      if (v13)
      {
        *(v9 - 16) = v12;
        operator delete(v12);
      }

      v9 = v11;
    }

    while (v11 != v10);
  }

  *(this + 7) = v10;
  v14 = *(this + 10);
  *(this + 10) = 0;

  *(this + 14) = 0;
  result = 0.0;
  *(this + 9) = xmmword_2389FBB00;
  *(this + 10) = xmmword_2389FBB10;
  *(this + 22) = -1;
  return result;
}

uint64_t GKCMinmaxStrategist::findBestMove2Player(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v13 = a2;
  v14 = v13;
  ++*(a1 + 128);
  if (*(a1 + 184) == 1 && ([v13 isWinForPlayer:*(a1 + 80)] & 1) != 0)
  {
    v15 = 1;
  }

  else if (*(a1 + 185) == 1 && ([v14 isLossForPlayer:*(a1 + 80)] & 1) != 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  *a6 = v15;
  *a7 = *(a1 + 96) - a3;
  if (*a6 == 1)
  {
    v16 = 0x1000000;
    goto LABEL_47;
  }

  if (*a6 != -1)
  {
    if (a3 <= 0)
    {
      v16 = [v14 scoreForPlayer:*(a1 + 80)];
      goto LABEL_47;
    }

    v17 = [v14 activePlayer];
    v32 = [v17 playerId];
    v30 = [*(a1 + 80) playerId];
    if (v32 == v30)
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v33 = [v14 gameModelUpdatesForPlayer:v17];
    v18 = [v33 count];
    if (v18)
    {
      v31 = v18;
      v27 = v17;
      v28 = v14;
      v29 = a7;
      *a7 = *(a1 + 96) + 1;
      v34 = 0;
      v35 = 0;
      v19 = *(*a1 + 8 * a3 - 8);
      if (*(a1 + 186) == 1)
      {
        v20 = v14;

        v19 = v20;
      }

      if (v31 >= 1)
      {
        for (i = 0; v31 != i; ++i)
        {
          if ((*(a1 + 186) & 1) == 0)
          {
            [v19 setGameModel:v28];
          }

          v22 = [v33 objectAtIndexedSubscript:{i, v27}];
          [v19 applyGameModelUpdate:v22];
          BestMove2Player = GKCMinmaxStrategist::findBestMove2Player(a1, v19, a3 - 1, a4, a5, &v35, &v34);
          [v22 setValue:BestMove2Player];
          if (*(a1 + 186) == 1)
          {
            [v19 unapplyGameModelUpdate:v22];
          }

          if (v32 == v30)
          {
            if (BestMove2Player > a4)
            {
              a4 = BestMove2Player;
            }

            v24 = BestMove2Player == v16;
            if (BestMove2Player > v16)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (BestMove2Player < a5)
            {
              a5 = BestMove2Player;
            }

            v24 = BestMove2Player == v16;
            if (BestMove2Player < v16)
            {
LABEL_29:
              v25 = v34;
LABEL_30:
              *a6 = v35;
              *v29 = v25;
              v16 = BestMove2Player;
              goto LABEL_37;
            }
          }

          if (v24)
          {
            v25 = v34;
            if (v34 < *v29)
            {
              goto LABEL_30;
            }
          }

LABEL_37:
          if (*(a1 + 96) == a3)
          {
            GKCMinmaxStrategist::addMoveToConsideredMoves(a1, v22);
          }

          if (a5 <= a4)
          {
            *(a1 + 136) += v31 + ~i;

            break;
          }
        }
      }

      v17 = v27;
      v14 = v28;
    }

    else
    {
      v16 = [v14 scoreForPlayer:*(a1 + 80)];
    }

    goto LABEL_47;
  }

  v16 = -16777216;
LABEL_47:

  return v16;
}