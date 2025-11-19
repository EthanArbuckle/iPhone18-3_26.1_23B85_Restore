uint64_t TestSepAxis(const btConvexPolyhedron *a1, const btConvexPolyhedron *a2, const btTransform *a3, const btTransform *a4, float32x4_t *a5, float *a6, btVector3 *a7, btVector3 *a8)
{
  v25 = 0;
  v24 = 0.0;
  v23 = 0.0;
  btConvexPolyhedron::project(a1, a3, a5, &v25 + 1, &v25, &v22, &v21);
  btConvexPolyhedron::project(a2, a4, a5, &v24, &v23, &v20, &v19);
  if (*&v25 < v24 || v23 < *(&v25 + 1))
  {
    return 0;
  }

  v15 = *&v25 - v24;
  v16 = (*&v25 - v24) < (v23 - *(&v25 + 1));
  if ((*&v25 - v24) >= (v23 - *(&v25 + 1)))
  {
    v15 = v23 - *(&v25 + 1);
  }

  *a6 = v15;
  v17 = &v22;
  if (v16)
  {
    v17 = &v21;
  }

  *a7 = *v17;
  v18 = &v19;
  if (v16)
  {
    v18 = &v20;
  }

  *a8 = *v18;
  return 1;
}

void btPolyhedralContactClipping::clipFaceAgainstHull(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, float a6, float a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  v15 = a4;
  v76 = 1;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v19 = *(a4 + 4);
  if (v19 >= 1)
  {
    v76 = 1;
    v75 = btAlignedAllocInternal(16 * v19, 16);
    v74 = v19;
  }

  v20 = *(a2 + 44);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *a3;
    v23 = (*(a2 + 56) + 40);
    v24 = -1;
    v25 = 3.4028e38;
    do
    {
      a12.i64[0] = *(v23 - 1);
      a12.i32[2] = *v23;
      v26 = vmulq_f32(a12, a3[2]);
      a12.i32[3] = 0;
      v27 = vmulq_f32(v22, a12);
      v28 = vmulq_f32(a12, a3[1]);
      v26.i32[3] = 0;
      *v28.f32 = vadd_f32(vpadd_f32(*v27.i8, *v28.f32), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
      *&v28.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
      v29 = vmulq_f32(v28, *a1);
      *v26.i8 = vpadd_f32(*v29.i8, *v29.i8);
      a12 = vextq_s8(v29, v29, 8uLL);
      a12.f32[0] = vadd_f32(*v26.i8, *a12.f32).f32[0];
      if (a12.f32[0] < v25)
      {
        v25 = a12.f32[0];
        v24 = v21;
      }

      ++v21;
      v23 += 12;
    }

    while (v20 != v21);
    if ((v24 & 0x80000000) == 0)
    {
      v69 = a1;
      v30 = *(a2 + 56) + 48 * v24;
      v31 = *(v30 + 4);
      if (v31 < 1)
      {
        v50 = v15;
      }

      else
      {
        v32 = 0;
        v33 = &v72;
        do
        {
          v34 = *(v30 + 16);
          v35 = *(v34 + 4 * v32);
          if (v31 - 1 == v32)
          {
            v36 = 0;
          }

          else
          {
            v36 = v32 + 1;
          }

          v37 = *(v34 + 4 * v36);
          v38 = *(a2 + 24);
          v39 = *(v38 + 16 * v35);
          v40 = vsubq_f32(v39, *(v38 + 16 * v37));
          v41 = a3[2];
          v42 = vmulq_f32(v41, v40);
          v40.i32[3] = 0;
          v43 = a3[1];
          v44 = vmulq_f32(*a3, v40);
          v45 = vmulq_f32(v43, v40);
          v42.i32[3] = 0;
          *v45.i8 = vadd_f32(vpadd_f32(*v44.i8, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
          v46 = vextq_s8(v42, v42, 8uLL);
          *v42.i8 = vpadd_f32(*v42.i8, *v46.f32);
          v46.i64[0] = *(v30 + 32);
          v46.i32[2] = *(v30 + 40);
          v47 = vmulq_f32(v41, v46);
          v46.i32[3] = 0;
          v48 = vmulq_f32(*a3, v46);
          v49 = vmulq_f32(v43, v46);
          v50 = v33;
          *v42.i8 = vpadd_f32(*v42.i8, 0);
          v47.i32[3] = 0;
          *v49.i8 = vadd_f32(vpadd_f32(*v48.i8, *v49.i8), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
          *v47.i8 = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
          *v48.i8 = vext_s8(*v45.i8, *v42.i8, 4uLL);
          *v42.i8 = vmul_f32(*v42.i8, *v49.i8);
          *v49.i8 = vsub_f32(vmul_f32(*v45.i8, vext_s8(*v49.i8, *v47.i8, 4uLL)), vmul_f32(*v48.i8, *v49.i8));
          *v45.i8 = vext_s8(*v49.i8, vsub_f32(*v42.i8, vmul_f32(*v45.i8, *v47.i8)), 4uLL);
          v45.i64[1] = v49.u32[0];
          v33 = v15;
          v42.i64[0] = 0x8000000080000000;
          v42.i64[1] = 0x8000000080000000;
          v51 = veorq_s8(v45, v42);
          v52 = vmulq_f32(v39, *a3);
          v53 = vmulq_f32(v39, v43);
          v54 = vmulq_f32(v39, v41);
          v54.i32[3] = 0;
          *v41.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v52, v52, 8uLL), *&vextq_s8(v53, v53, 8uLL)), vpadd_f32(*v52.i8, *v53.i8));
          *&v41.u32[2] = vpadd_f32(vpadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)), 0);
          v55 = vmulq_f32(vaddq_f32(v41, a3[3]), v51);
          v71 = v51;
          btPolyhedralContactClipping::clipFace(v15, v50, &v71, -vadd_f32(vpadd_f32(*v55.i8, *v55.i8), *&vextq_s8(v55, v55, 8uLL)).f32[0]);
          if ((*(v15 + 4) & 0x80000000) != 0 && (*(v15 + 8) & 0x80000000) != 0)
          {
            v56 = *(v15 + 16);
            if (v56 && *(v15 + 24) == 1)
            {
              btAlignedFreeInternal(v56);
            }

            *(v15 + 24) = 1;
            *(v15 + 16) = 0;
            *(v15 + 8) = 0;
          }

          ++v32;
          *(v15 + 4) = 0;
          v15 = v50;
        }

        while (v31 != v32);
      }

      v57 = *(v50 + 4);
      if (v57 >= 1)
      {
        v58 = 0;
        v22.i64[0] = *(v30 + 32);
        v22.i32[2] = *(v30 + 40);
        v59 = v22;
        v59.i32[3] = 0;
        v60 = vmulq_f32(v22, a3[2]);
        v61 = vmulq_f32(v59, *a3);
        v62 = vmulq_f32(v59, a3[1]);
        v60.i32[3] = 0;
        *v63.f32 = vadd_f32(vpadd_f32(*v61.i8, *v62.i8), vzip1_s32(*&vextq_s8(v61, v61, 8uLL), *&vextq_s8(v62, v62, 8uLL)));
        *&v63.u32[2] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
        v64 = vmulq_f32(v63, a3[3]);
        v65 = *(v30 + 44) - vadd_f32(vpadd_f32(*v64.i8, *v64.i8), *&vextq_s8(v64, v64, 8uLL)).f32[0];
        v70 = v63;
        do
        {
          v66 = *(v50 + 16);
          v67 = vmulq_f32(v63, *(v66 + 16 * v58));
          v68 = v65 + vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0];
          if (v68 <= a6)
          {
            v68 = a6;
          }

          if (v68 <= a7)
          {
            v71 = *(v66 + 16 * v58);
            (*(*a5 + 32))(a5, v69, &v71);
            v63 = v70;
            v57 = *(v50 + 4);
          }

          ++v58;
        }

        while (v58 < v57);
      }
    }
  }

  if (v75)
  {
    if (v76 == 1)
    {
      btAlignedFreeInternal(v75);
    }
  }
}

void btPolyhedralContactClipping::clipHullAgainstHull(float32x4_t *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, float a7, float a8, double a9, float32x4_t a10, double a11, float32x4_t a12, float32x4_t a13)
{
  v17 = vmulq_f32(*a1, *a1);
  *v18.f32 = vpadd_f32(*v17.i8, *v17.i8);
  *v17.i32 = sqrtf(vadd_f32(*v18.f32, *&vextq_s8(v17, v17, 8uLL)).f32[0]);
  v18.i32[0] = 1.0;
  v19 = vmulq_n_f32(*a1, 1.0 / *v17.i32);
  v58[0] = v19;
  v20 = *(a3 + 44);
  v21 = *(a3 + 56);
  if (v20 < 1)
  {
    v24 = -1;
  }

  else
  {
    v22 = 0;
    v18 = a5[1];
    a10 = a5[2];
    v23 = (v21 + 40);
    v24 = -1;
    LODWORD(a11) = -8388609;
    a12.i64[0] = 0;
    do
    {
      a13.i64[0] = *(v23 - 1);
      a13.i32[2] = *v23;
      v25 = vmulq_f32(a13, a10);
      a13.i32[3] = 0;
      v26 = vmulq_f32(*a5, a13);
      v27 = vmulq_f32(a13, v18);
      v25.i32[3] = 0;
      *v27.f32 = vadd_f32(vpadd_f32(*v26.i8, *v27.f32), vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)));
      *&v27.u32[2] = vpadd_f32(vpadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL)), 0);
      v28 = vmulq_f32(v19, v27);
      *v25.i8 = vpadd_f32(*v28.i8, *v28.i8);
      a13 = vextq_s8(v28, v28, 8uLL);
      *a13.f32 = vadd_f32(*v25.i8, *a13.f32);
      if (a13.f32[0] > *&a11)
      {
        *&a11 = a13.f32[0];
        v24 = v22;
      }

      ++v22;
      v23 += 12;
    }

    while (v20 != v22);
  }

  v57 = 1;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v29 = v21 + 48 * v24;
  v30 = *(v29 + 4);
  if (v30 >= 1)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      v34 = *(*(a3 + 24) + 16 * *(*(v29 + 16) + 4 * v31));
      v35 = *a5;
      v36 = a5[1];
      a10 = a5[2];
      a12 = a5[3];
      if (v32 != v31)
      {
        goto LABEL_24;
      }

      v37 = v31 ? 2 * v31 : 1;
      if (v32 >= v37)
      {
        goto LABEL_24;
      }

      v48 = a5[2];
      v49 = a5[1];
      v50 = *a5;
      v51 = *(*(a3 + 24) + 16 * *(*(v29 + 16) + 4 * v31));
      v52 = a5[3];
      if (v37)
      {
        v38 = btAlignedAllocInternal(16 * v37, 16);
        if (v31)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v38 = 0;
        if (v31)
        {
LABEL_17:
          v39 = v32;
          v40 = v38;
          v41 = v33;
          do
          {
            v42 = *v41;
            v41 += 2;
            *v40++ = v42;
            --v39;
          }

          while (v39);
LABEL_22:
          btAlignedFreeInternal(v33);
          goto LABEL_23;
        }
      }

      if (v33)
      {
        goto LABEL_22;
      }

LABEL_23:
      v33 = v38;
      v32 = v37;
      v34 = v51;
      a12 = v52;
      v36 = v49;
      v35 = v50;
      a10 = v48;
LABEL_24:
      v43 = vmulq_f32(v35, v34);
      v44 = vmulq_f32(v34, v36);
      v18 = vmulq_f32(v34, a10);
      *&a11 = vextq_s8(v44, v44, 8uLL).u64[0];
      *a10.f32 = vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&a11);
      v18.i32[3] = 0;
      *v43.f32 = vadd_f32(vpadd_f32(*v43.f32, *v44.i8), *a10.f32);
      *&v43.u32[2] = vpadd_f32(vpadd_f32(*v18.f32, *&vextq_s8(v18, v18, 8uLL)), 0);
      *&v33[2 * v31++] = vaddq_f32(v43, a12);
      if (v31 == v30)
      {
        goto LABEL_27;
      }
    }
  }

  v33 = 0;
  v32 = 0;
  LODWORD(v31) = 0;
LABEL_27:
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v57 = 1;
  if ((v24 & 0x80000000) == 0)
  {
    btPolyhedralContactClipping::clipFaceAgainstHull(v58, a2, a4, v53, a6, a7, a8, *v18.i64, *a10.i64, a11, *a12.i64, a13);
    v33 = v56;
  }

  if (v33)
  {
    if (v57 == 1)
    {
      btAlignedFreeInternal(v33);
    }
  }
}

void btTriangleRaycastCallback::btTriangleRaycastCallback(btTriangleRaycastCallback *this, const btVector3 *a2, const btVector3 *a3, int a4)
{
  *this = &unk_282DCAC00;
  *(this + 1) = *a2;
  *(this + 2) = *a3;
  *(this + 12) = a4;
  *(this + 13) = 1065353216;
}

void btTriangleRaycastCallback::processTriangle(float32x4_t *this, float32x4_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = vsubq_f32(v4, *a2);
  v6.i32[3] = 0;
  v7 = a2[2];
  v8 = vsubq_f32(v7, *a2);
  v8.i32[3] = 0;
  v9 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL), v6), vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), v8));
  v10 = vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL);
  v10.i32[3] = 0;
  v11 = vmulq_f32(*a2, v10);
  *v11.i8 = vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL));
  v12 = this[1];
  v13 = this[2];
  v14 = vmulq_f32(v12, v10);
  v15 = vsub_f32(vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)), *v11.i8);
  v16 = vmulq_f32(v13, v10);
  v17 = vsub_f32(vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL)), *v11.i8);
  if (vmul_f32(v15, v17).f32[0] < 0.0)
  {
    v51 = v2;
    v52 = v3;
    v19 = this[3].i32[0];
    if (v15.f32[0] > 0.0 || (this[3].i32[0] & 1) == 0)
    {
      v21 = vdiv_f32(v15, vsub_f32(v15, v17)).f32[0];
      if (v21 < this[3].f32[1])
      {
        v22 = vmulq_f32(v10, v10);
        v23 = vadd_f32(*&vextq_s8(v22, v22, 8uLL), vpadd_f32(*v22.i8, *v22.i8)).f32[0];
        v24 = -0.0001 * v23;
        v25 = vaddq_f32(v12, vmulq_n_f32(vsubq_f32(v13, v12), v21));
        v26 = vsubq_f32(v5, v25);
        v26.i32[3] = 0;
        v27 = vsubq_f32(v4, v25);
        v27.i32[3] = 0;
        v28 = vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL);
        v29 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
        v30 = vsubq_f32(vmulq_f32(v29, v26), vmulq_f32(v28, v27));
        v31 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
        v31.i32[3] = 0;
        v32 = vmulq_f32(v10, v31);
        v33 = vsubq_f32(v7, v25);
        v33.i32[3] = 0;
        v34 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
        v35 = vsubq_f32(vmulq_f32(v34, v27), vmulq_f32(v29, v33));
        v36 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
        v36.i32[3] = 0;
        v37 = vmulq_f32(v10, v36);
        LODWORD(v38) = vadd_f32(*&vextq_s8(v37, v37, 8uLL), vpadd_f32(*v37.i8, *v37.i8)).u32[0];
        v39 = vsubq_f32(vmulq_f32(v28, v33), vmulq_f32(v34, v26));
        v40 = vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL);
        v40.i32[3] = 0;
        v41 = vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0] < (-0.0001 * v23) || v38 < v24;
        v42 = vmulq_f32(v10, v40);
        LODWORD(v43) = vadd_f32(*&vextq_s8(v42, v42, 8uLL), vpadd_f32(*v42.i8, *v42.i8)).u32[0];
        if (!v41 && v43 >= v24)
        {
          v45 = vmulq_n_f32(v10, 1.0 / sqrtf(v23));
          v50 = v45;
          v46 = v19 & 2;
          if (v15.f32[0] <= 0.0 && v46 == 0)
          {
            v49 = vnegq_f32(v45);
            v48 = (*(this->i64[0] + 24))(this, &v49);
          }

          else
          {
            v48 = (*(this->i64[0] + 24))(this, &v50);
          }

          this[3].f32[1] = v48;
        }
      }
    }
  }
}

void btTriangleConvexcastCallback::btTriangleConvexcastCallback(btTriangleConvexcastCallback *this, const btConvexShape *a2, const btTransform *a3, const btTransform *a4, const btTransform *a5, float a6)
{
  *this = &unk_282DCAC30;
  *(this + 1) = a2;
  *(this + 16) = *a3;
  *(this + 80) = *a4;
  *(this + 144) = *a5;
  *(this + 52) = 1065353216;
  *(this + 53) = a6;
  *(this + 54) = 0;
}

void btTriangleConvexcastCallback::processTriangle(btTriangleConvexcastCallback *this, btVector3 *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  btPolyhedralConvexShape::btPolyhedralConvexShape(&v22);
  v22 = &unk_282DC92A0;
  v23 = 1;
  v8 = a2[1];
  v25 = *a2;
  v26 = v8;
  v27 = a2[2];
  v24 = *(this + 53);
  v20 = 953267991;
  v21 = 0;
  v12 = &unk_282DCAB50;
  btContinuousConvexCollision::btContinuousConvexCollision(v11, *(this + 1), &v22, v19, &v12);
  v13[0].i64[0] = &unk_282DC8F18;
  v17 = 0;
  v16 = 1.0;
  v18 = *(this + 54);
  if (btContinuousConvexCollision::calcTimeOfImpact(v11, this + 1, (this + 80), this + 9, (this + 144), v13))
  {
    v9 = vmulq_f32(v14, v14);
    v10 = vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)).f32[0];
    if (v10 > 0.0001 && v16 < *(this + 52))
    {
      v14 = vmulq_n_f32(v14, 1.0 / sqrtf(v10));
      (*(*this + 24))(this, &v14, &v15, a3, a4, v16);
    }
  }

  C3DSceneSourcePerformConsistencyCheck(v11);
  btPolyhedralConvexShape::~btPolyhedralConvexShape(&v22);
}

void *btSubsimplexConvexCast::btSubsimplexConvexCast(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_282DCAC60;
  result[1] = a4;
  result[2] = a2;
  result[3] = a3;
  return result;
}

uint64_t btSubsimplexConvexCast::calcTimeOfImpact(btVoronoiSimplexSolver **this, const btTransform *a2, const btTransform *a3, const btTransform *a4, const btTransform *a5, float32x4_t *a6)
{
  btVoronoiSimplexSolver::reset(this[1]);
  var1 = a2->var1;
  v74 = a4->var0.var0[2];
  v75 = a4->var1;
  v12 = a2->var0.var0[0];
  v13 = a2->var0.var0[1];
  v72 = a4->var0.var0[1];
  v73 = a4->var0.var0[0];
  v14 = vsubq_f32(vsubq_f32(a3->var1, var1), vsubq_f32(a5->var1, v75));
  v14.i32[3] = 0;
  v65 = v14;
  v15 = this[2];
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v17 = veorq_s8(v14, v16);
  v69 = v13;
  v70 = a2->var0.var0[0];
  v12.i32[3] = 0;
  v13.i32[3] = 0;
  v71 = a2->var0.var0[2];
  v18 = v71;
  v18.i32[3] = 0;
  v67 = v13;
  v68 = v12;
  v66 = v18;
  v81 = vaddq_f32(vaddq_f32(vmulq_n_f32(v12, v17.f32[0]), vmulq_lane_f32(v13, *v17.f32, 1)), vmulq_laneq_f32(v18, v17, 2));
  (*(*v15 + 128))(&v83);
  v19 = vmulq_f32(a2->var0.var0[0], v83);
  v20 = vmulq_f32(v83, a2->var0.var0[1]);
  v21 = vmulq_f32(v83, a2->var0.var0[2]);
  v21.i32[3] = 0;
  *v19.f32 = vadd_f32(vpadd_f32(*v19.f32, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  *&v19.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
  v82 = vaddq_f32(v19, a2->var1);
  v22 = this[3];
  v23 = a4->var0.var0[0];
  v24 = a4->var0.var0[1];
  v23.i32[3] = 0;
  v24.i32[3] = 0;
  v25 = a4->var0.var0[2];
  v25.i32[3] = 0;
  v80 = vaddq_f32(vaddq_f32(vmulq_n_f32(v23, v65.f32[0]), vmulq_lane_f32(v24, *v65.f32, 1)), vmulq_laneq_f32(v25, v65, 2));
  (*(*v22 + 128))(&v83);
  v26 = vmulq_f32(a4->var0.var0[0], v83);
  v27 = vmulq_f32(v83, a4->var0.var0[1]);
  v28 = vmulq_f32(v83, a4->var0.var0[2]);
  v28.i32[3] = 0;
  *v26.f32 = vadd_f32(vpadd_f32(*v26.f32, *v27.i8), vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)));
  *&v26.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  v29 = vaddq_f32(v26, a4->var1);
  v30 = vsubq_f32(v82, v29);
  v30.var0.var0[3] = 0.0;
  v81 = v29;
  v83 = v30;
  v31 = vmulq_f32(v30, v30);
  LODWORD(v77) = 0;
  v61 = 0;
  if (vadd_f32(vpadd_f32(*v31.i8, *v31.i8), *&vextq_s8(v31, v31, 8uLL)).f32[0] > 0.0001)
  {
    v32 = v73;
    v32.i32[3] = 0;
    v64 = v32;
    v33 = v72;
    v33.i32[3] = 0;
    v63 = v33;
    v34 = v74;
    v34.i32[3] = 0;
    v62 = v34;
    v61 = 0;
    v77 = 0u;
    v35 = -33;
    do
    {
      if (__CFADD__(v35++, 1))
      {
        break;
      }

      v37 = this[2];
      v38.i64[0] = 0x8000000080000000;
      v38.i64[1] = 0x8000000080000000;
      v39 = veorq_s8(v83, v38);
      v78 = vaddq_f32(vmulq_laneq_f32(v66, v39, 2), vaddq_f32(vmulq_n_f32(v68, v39.f32[0]), vmulq_lane_f32(v67, *v39.f32, 1)));
      (*(*v37 + 128))(&v79);
      v40 = vmulq_f32(v70, v79);
      v41 = vmulq_f32(v69, v79);
      v42 = vmulq_f32(v71, v79);
      v42.i32[3] = 0;
      *v40.f32 = vadd_f32(vpadd_f32(*v40.f32, *v41.i8), vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)));
      *&v40.u32[2] = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
      v82 = vaddq_f32(var1, v40);
      v43 = this[3];
      v78 = vaddq_f32(vmulq_laneq_f32(v62, v83, 2), vaddq_f32(vmulq_n_f32(v64, v83.var0.var0[0]), vmulq_lane_f32(v63, *v83.var0.var0, 1)));
      (*(*v43 + 128))(&v79);
      v44 = vmulq_f32(v73, v79);
      v45 = vmulq_f32(v72, v79);
      v46 = vmulq_f32(v74, v79);
      v46.i32[3] = 0;
      *v44.f32 = vadd_f32(vpadd_f32(*v44.f32, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
      *&v44.u32[2] = vpadd_f32(vpadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0);
      v47 = vaddq_f32(v75, v44);
      v48 = vsubq_f32(v82, v47);
      v48.var0.var0[3] = 0.0;
      v80 = v48;
      v81 = v47;
      if (*&v77 > 1.0)
      {
        return 0;
      }

      v49 = vmulq_f32(v83, v48);
      v50 = vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL));
      if (v50.f32[0] > 0.0)
      {
        v51 = vmulq_f32(v83, v65);
        v52 = vadd_f32(*&vextq_s8(v51, v51, 8uLL), vpadd_f32(*v51.i8, *v51.i8));
        if (v52.f32[0] >= -1.4211e-14)
        {
          return 0;
        }

        v53 = v77;
        *&v53 = *&v77 - vdiv_f32(v50, v52).f32[0];
        var1 = vaddq_f32(a2->var1, vmulq_n_f32(vsubq_f32(a3->var1, a2->var1), *&v53));
        v77 = v53;
        v75 = vaddq_f32(a4->var1, vmulq_n_f32(vsubq_f32(a5->var1, a4->var1), *&v53));
        v61 = v83;
      }

      if ((btVoronoiSimplexSolver::inSimplex(this[1], &v80) & 1) == 0)
      {
        btVoronoiSimplexSolver::addVertex(this[1], &v80, &v82, &v81);
      }

      btVoronoiSimplexSolver::closest(this[1], &v83);
      if (!v54)
      {
        break;
      }

      v55 = vmulq_f32(v83, v83);
    }

    while (vadd_f32(vpadd_f32(*v55.i8, *v55.i8), *&vextq_s8(v55, v55, 8uLL)).f32[0] > 0.0001);
  }

  a6[11].i32[0] = v77;
  v56 = vmulq_f32(v61, v61);
  v57 = vadd_f32(*&vextq_s8(v56, v56, 8uLL), vpadd_f32(*v56.i8, *v56.i8)).f32[0];
  v58 = 0uLL;
  if (v57 >= 1.4211e-14)
  {
    v58 = vmulq_n_f32(v61, 1.0 / sqrtf(v57));
  }

  a6[9] = v58;
  v59 = vmulq_f32(v58, v65);
  if (vadd_f32(vpadd_f32(*v59.i8, *v59.i8), *&vextq_s8(v59, v59, 8uLL)).f32[0] >= -a6[12].f32[0])
  {
    return 0;
  }

  btVoronoiSimplexSolver::compute_points(this[1], &v79, &v78);
  a6[10] = v78;
  return 1;
}

void btSubsimplexConvexCast::~btSubsimplexConvexCast(btSubsimplexConvexCast *this)
{
  C3DSceneSourcePerformConsistencyCheck(this);

  JUMPOUT(0x21CF07610);
}

__n128 btVoronoiSimplexSolver::reduceVertices(uint64_t a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1 >= 4)
  {
    if ((*a2 & 8) == 0)
    {
      *a1 = --v2;
      v3 = a1 + 16 * v2;
      *(a1 + 64) = *(v3 + 16);
      *(a1 + 144) = *(v3 + 96);
      result = *(v3 + 176);
      *(a1 + 224) = result;
    }

    goto LABEL_5;
  }

  if (v2 == 3)
  {
LABEL_5:
    if ((*a2 & 4) == 0)
    {
      *a1 = --v2;
      v5 = a1 + 16 * v2;
      *(a1 + 48) = *(v5 + 16);
      *(a1 + 128) = *(v5 + 96);
      result = *(v5 + 176);
      *(a1 + 208) = result;
    }

    goto LABEL_9;
  }

  if (v2 < 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  v2 = 2;
LABEL_9:
  if ((*a2 & 2) == 0)
  {
    *a1 = --v2;
    v6 = a1 + 16 * v2;
    *(a1 + 32) = *(v6 + 16);
    *(a1 + 112) = *(v6 + 96);
    result = *(v6 + 176);
    *(a1 + 192) = result;
  }

LABEL_11:
  if ((*a2 & 1) == 0)
  {
    v7 = v2 - 1;
    *a1 = v7;
    v8 = *(a1 + 96 + 16 * v7);
    *(a1 + 16) = *(a1 + 16 + 16 * v7);
    *(a1 + 96) = v8;
    result = *(a1 + 176 + 16 * v7);
    *(a1 + 176) = result;
  }

  return result;
}

double btVoronoiSimplexSolver::reset(btVoronoiSimplexSolver *this)
{
  *(this + 324) = 0;
  *this = 0;
  *(this + 384) = 1;
  result = 5.72459157e141;
  *(this + 19) = xmmword_21C2A4030;
  *(this + 372) = 0;
  *(this + 364) = 0;
  *(this + 356) = 0;
  *(this + 352) &= 0xF0u;
  return result;
}

__n128 btVoronoiSimplexSolver::addVertex(btVector3 *this, const btVector3 *a2, const btVector3 *a3, __n128 *a4)
{
  this[19] = *a2;
  LOBYTE(this[24].var0.var0[0]) = 1;
  this[SLODWORD(this->var0.var0[0]) + 1] = *a2;
  this[SLODWORD(this->var0.var0[0]) + 6] = *a3;
  result = *a4;
  this[LODWORD(this->var0.var0[0])++ + 11] = *a4;
  return result;
}

uint64_t btVoronoiSimplexSolver::updateClosestVectorAndPoints(float32x4_t *this)
{
  if (this[24].i8[0])
  {
    *(this[22].i64 + 4) = 0;
    *(&this[22].i64[1] + 4) = 0;
    this[23].i8[4] = 0;
    v2 = this[22].i8[0] & 0xF0;
    this[22].i8[0] = v2;
    this[24].i8[0] = 0;
    v3 = this->i32[0];
    if (this->i32[0] <= 1)
    {
      if (v3 == 1)
      {
        v19 = this[6];
        v20 = this[11];
        this[16] = v19;
        this[17] = v20;
        v21 = vsubq_f32(v19, v20);
        v21.i32[3] = 0;
        this[18] = v21;
        this[23].i8[4] = 0;
        *(&this[22] + 4) = xmmword_21C27F910;
        v18 = 1;
LABEL_27:
        this[20].i8[4] = v18;
        return v18 & 1;
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v22 = this[1];
          v23 = vsubq_f32(0, v22);
          v23.i32[3] = 0;
          v24 = vsubq_f32(this[2], v22);
          v24.i32[3] = 0;
          v25 = vmulq_f32(v23, v24);
          v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL));
          if (v26.f32[0] <= 0.0)
          {
            v29 = 0.0;
            v30 = 1;
          }

          else
          {
            v27 = vmulq_f32(v24, v24);
            v28 = vadd_f32(*&vextq_s8(v27, v27, 8uLL), vpadd_f32(*v27.i8, *v27.i8));
            if (vcgt_f32(v28, v26).u8[0])
            {
              LODWORD(v29) = vdiv_f32(v26, v28).u32[0];
              v30 = 3;
            }

            else
            {
              v29 = 1.0;
              v30 = 2;
            }
          }

          this[22].i8[0] = v2 | v30;
          this[22].f32[1] = 1.0 - v29;
          this[22].f32[2] = v29;
          *(&this[22].i64[1] + 4) = 0;
          v43 = this[6];
          v44 = vmulq_n_f32(vsubq_f32(this[7], v43), v29);
          v44.i32[3] = 0;
          v45 = vaddq_f32(v43, v44);
          v46 = this[11];
          v47 = vmulq_n_f32(vsubq_f32(this[12], v46), v29);
          v47.i32[3] = 0;
          v48 = vaddq_f32(v46, v47);
          this[16] = v45;
          this[17] = v48;
          v49 = vsubq_f32(v45, v48);
          v49.i32[3] = 0;
          this[18] = v49;
          btVoronoiSimplexSolver::reduceVertices(this, &this[22]);
          if (this[22].f32[1] >= 0.0 && this[22].f32[2] >= 0.0)
          {
            v42 = this[22].f32[3];
LABEL_25:
            if (v42 >= 0.0)
            {
              v18 = this[23].f32[0] >= 0.0;
              goto LABEL_27;
            }
          }

LABEL_26:
          v18 = 0;
          goto LABEL_27;
        case 3:
          v51 = 0uLL;
          btVoronoiSimplexSolver::closestPtPointTriangle(this, &v51, this + 1, this + 2, this + 3, this + 21);
          v31 = this[22].f32[1];
          v32 = vmulq_n_f32(this[6], v31);
          v32.i32[3] = 0;
          v33 = this[22].f32[2];
          v34 = vmulq_n_f32(this[7], v33);
          v34.i32[3] = 0;
          v35 = vaddq_f32(v32, v34);
          v36 = this[22].f32[3];
          v37 = vmulq_n_f32(this[8], v36);
          v37.i32[3] = 0;
          v12 = vaddq_f32(v35, v37);
          v38 = vmulq_n_f32(this[11], v31);
          v38.i32[3] = 0;
          v39 = vmulq_n_f32(this[12], v33);
          v39.i32[3] = 0;
          v16 = vaddq_f32(v38, v39);
          v17 = vmulq_n_f32(this[13], v36);
          goto LABEL_15;
        case 4:
          v51 = 0uLL;
          if (btVoronoiSimplexSolver::closestPtPointTetrahedron(this, &v51, this + 1, this + 2, this + 3, this + 4, &this[21]))
          {
            v4 = this[22].f32[1];
            v5 = vmulq_n_f32(this[6], v4);
            v5.i32[3] = 0;
            v6 = this[22].f32[2];
            v7 = vmulq_n_f32(this[7], v6);
            v7.i32[3] = 0;
            v8 = vaddq_f32(v5, v7);
            v7.i32[0] = this[22].i32[3];
            v9 = vmulq_n_f32(this[8], v7.f32[0]);
            v9.i32[3] = 0;
            v10 = vaddq_f32(v8, v9);
            v9.i32[0] = this[23].i32[0];
            v11 = vmulq_n_f32(this[9], v9.f32[0]);
            v11.i32[3] = 0;
            v12 = vaddq_f32(v10, v11);
            v13 = vmulq_n_f32(this[11], v4);
            v14 = vmulq_n_f32(this[12], v6);
            v15 = vmulq_n_f32(this[13], v7.f32[0]);
            v13.i32[3] = 0;
            v14.i32[3] = 0;
            v15.i32[3] = 0;
            v16 = vaddq_f32(vaddq_f32(v13, v14), v15);
            v17 = vmulq_n_f32(this[14], v9.f32[0]);
LABEL_15:
            v17.i32[3] = 0;
            v40 = vaddq_f32(v16, v17);
            this[16] = v12;
            this[17] = v40;
            v41 = vsubq_f32(v12, v40);
            v41.i32[3] = 0;
            this[18] = v41;
            btVoronoiSimplexSolver::reduceVertices(this, &this[22]);
            if (this[22].f32[1] >= 0.0 && this[22].f32[2] >= 0.0)
            {
              v42 = this[22].f32[3];
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if (this[23].i8[4] != 1)
          {
            v18 = 1;
            this[20].i8[4] = 1;
            this[18].i64[0] = 0;
            this[18].i64[1] = 0;
            return v18 & 1;
          }

          break;
      }
    }

    v18 = 0;
    this[20].i8[4] = 0;
  }

  else
  {
    v18 = this[20].i8[4];
  }

  return v18 & 1;
}

uint64_t btVoronoiSimplexSolver::closestPtPointTriangle(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  v6 = a6[1].i8[0] & 0xF0;
  a6[1].i8[0] = v6;
  v7 = *a4;
  v8 = *a3;
  v9 = vsubq_f32(*a4, *a3);
  v9.i32[3] = 0;
  v10 = *a5;
  v11 = vsubq_f32(*a5, *a3);
  v11.i32[3] = 0;
  v12 = *a2;
  v13 = vsubq_f32(*a2, *a3);
  v13.i32[3] = 0;
  v14 = vmulq_f32(v9, v13);
  v15 = vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL));
  v16 = vmulq_f32(v11, v13);
  v17 = vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL));
  if (v15.f32[0] <= 0.0 && v17.f32[0] <= 0.0)
  {
    *a6 = v8;
    a6[1].i8[0] = v6 | 1;
    v18 = 0.0;
    v19 = 1.0;
LABEL_11:
    v27 = 0.0;
    goto LABEL_12;
  }

  v20 = vsubq_f32(v12, v7);
  v20.i32[3] = 0;
  v21 = vmulq_f32(v9, v20);
  v22 = vadd_f32(*&vextq_s8(v21, v21, 8uLL), vpadd_f32(*v21.i8, *v21.i8));
  v23 = vmulq_f32(v11, v20);
  v24 = vadd_f32(*&vextq_s8(v23, v23, 8uLL), vpadd_f32(*v23.i8, *v23.i8));
  if (v22.f32[0] >= 0.0 && (vmvn_s8(vcge_f32(v22, v24)).u8[0] & 1) == 0)
  {
    *a6 = v7;
    a6[1].i8[0] = v6 | 2;
    v18 = 1.0;
    v19 = 0.0;
    goto LABEL_11;
  }

  v25 = (v15.f32[0] * v24.f32[0]) - (v22.f32[0] * v17.f32[0]);
  if (v22.f32[0] <= 0.0 && v15.f32[0] >= 0.0 && v25 <= 0.0)
  {
    v18 = vdiv_f32(v15, vsub_f32(v15, v22)).f32[0];
    v26 = vmulq_n_f32(v9, v18);
    v26.i32[3] = 0;
    *a6 = vaddq_f32(v8, v26);
    a6[1].i8[0] = v6 | 3;
    v19 = 1.0 - v18;
    goto LABEL_11;
  }

  v29 = vsubq_f32(v12, v10);
  v29.i32[3] = 0;
  v30 = vmulq_f32(v9, v29);
  v31 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), vpadd_f32(*v30.i8, *v30.i8));
  v32 = vmulq_f32(v11, v29);
  v33 = vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8));
  if (v33.f32[0] >= 0.0 && (vmvn_s8(vcge_f32(v33, v31)).u8[0] & 1) == 0)
  {
    *a6 = v10;
    a6[1].i8[0] = v6 | 4;
    v27 = 1.0;
    v19 = 0.0;
LABEL_20:
    v18 = 0.0;
    goto LABEL_12;
  }

  v34 = (v31.f32[0] * v17.f32[0]) - (v15.f32[0] * v33.f32[0]);
  if (v33.f32[0] <= 0.0 && v34 <= 0.0 && v17.f32[0] >= 0.0)
  {
    v27 = vdiv_f32(v17, vsub_f32(v17, v33)).f32[0];
    v35 = vmulq_n_f32(v11, v27);
    v35.i32[3] = 0;
    *a6 = vaddq_f32(v8, v35);
    a6[1].i8[0] = v6 | 5;
    v19 = 1.0 - v27;
    goto LABEL_20;
  }

  v36 = (v22.f32[0] * v33.f32[0]) - (v31.f32[0] * v24.f32[0]);
  if (v36 <= 0.0 && (v37 = vsub_f32(v24, v22), v37.f32[0] >= 0.0) && (v38 = vsub_f32(v31, v33), v38.f32[0] >= 0.0))
  {
    v27 = vdiv_f32(v37, vadd_f32(v37, v38)).f32[0];
    v42 = vmulq_n_f32(vsubq_f32(v10, v7), v27);
    v42.i32[3] = 0;
    *a6 = vaddq_f32(v7, v42);
    a6[1].i8[0] = v6 | 6;
    v18 = 1.0 - v27;
    v19 = 0.0;
  }

  else
  {
    v39 = 1.0 / (v25 + (v36 + v34));
    v18 = v34 * v39;
    v27 = v25 * v39;
    v40 = vmulq_n_f32(v9, v18);
    v40.i32[3] = 0;
    v41 = vmulq_n_f32(v11, v27);
    v41.i32[3] = 0;
    *a6 = vaddq_f32(vaddq_f32(v8, v40), v41);
    a6[1].i8[0] = v6 | 7;
    v19 = (1.0 - v18) - v27;
  }

LABEL_12:
  a6[1].f32[1] = v19;
  a6[1].f32[2] = v18;
  a6[1].f32[3] = v27;
  a6[2].i32[0] = 0;
  return 1;
}

uint64_t btVoronoiSimplexSolver::closestPtPointTetrahedron(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7)
{
  v81 = *MEMORY[0x277D85DE8];
  v79 = 0;
  *a7 = *a2;
  v8 = *(a7 + 16);
  *(a7 + 16) = v8 | 0xF;
  v9 = vsubq_f32(*a4, *a3);
  v10 = vsubq_f32(*a5, *a3);
  v11 = v10;
  v11.i32[3] = 0;
  v12 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
  v13 = vsubq_f32(*a6, *a3);
  v14 = v13;
  v14.i32[3] = 0;
  v15 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL);
  v16 = vmulq_f32(v15, v9);
  v17 = v9;
  v17.i32[3] = 0;
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v19 = vsubq_f32(vmulq_f32(v12, v9), vmulq_f32(v18, v10));
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v20.i32[3] = 0;
  v21 = vmulq_f32(v14, v20);
  v22 = vsubq_f32(vmulq_f32(v15, v10), vmulq_f32(v12, v13));
  v23 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
  v23.i32[3] = 0;
  v24 = vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL));
  v25 = vmulq_f32(v17, v23);
  v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL));
  v27 = vsubq_f32(vmulq_f32(v18, v13), v16);
  v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
  v28.i32[3] = 0;
  v29 = vmulq_f32(v11, v28);
  *v14.f32 = vpadd_f32(*v29.i8, *v29.i8);
  v30 = vsubq_f32(*a6, *a4);
  v31 = vsubq_f32(*a5, *a4);
  v32 = v31;
  v32.i32[3] = 0;
  v33 = vmulq_f32(vextq_s8(vextq_s8(v32, v32, 0xCuLL), v32, 8uLL), v30);
  v30.i32[3] = 0;
  v16.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
  v34 = vsubq_f32(v33, vmulq_f32(vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL), v31));
  v35 = vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL);
  v35.i32[3] = 0;
  v36 = vsubq_f32(*a3, *a4);
  v36.i32[3] = 0;
  v37 = vadd_f32(*v14.f32, *v16.f32);
  v38 = vmulq_f32(v36, v35);
  v39 = vadd_f32(vpadd_f32(*v38.i8, *v38.i8), *&vextq_s8(v38, v38, 8uLL));
  *v14.f32 = vzip1_s32(v24, v26);
  v14.i64[1] = __PAIR64__(v39.u32[0], v37.u32[0]);
  if (vmaxv_u16(vmovn_s32(vcgtq_f32(vdupq_n_s32(0x322BCC76u), vmulq_f32(v14, v14)))))
  {
    result = 0;
    *(a7 + 36) = 1;
  }

  else
  {
    v46 = vsubq_f32(*a2, *a4);
    v46.i32[3] = 0;
    v47 = vmulq_f32(v46, v35);
    LODWORD(v48) = vmul_f32(v39, vadd_f32(*&vextq_s8(v47, v47, 8uLL), vpadd_f32(*v47.i8, *v47.i8))).u32[0];
    v49 = vsubq_f32(*a2, *a3);
    v49.i32[3] = 0;
    v50 = vmulq_f32(v49, v28);
    LODWORD(v51) = vmul_f32(v37, vadd_f32(*&vextq_s8(v50, v50, 8uLL), vpadd_f32(*v50.i8, *v50.i8))).u32[0];
    v52 = vmulq_f32(v49, v23);
    LODWORD(v53) = vmul_f32(v26, vadd_f32(*&vextq_s8(v52, v52, 8uLL), vpadd_f32(*v52.i8, *v52.i8))).u32[0];
    v54 = vmulq_f32(v49, v20);
    v55 = vmul_f32(v24, vadd_f32(*&vextq_s8(v54, v54, 8uLL), vpadd_f32(*v54.i8, *v54.i8))).f32[0];
    if (v55 < 0.0 || v53 < 0.0 || v51 < 0.0 || v48 < 0.0)
    {
      v76 = v51;
      v77 = v48;
      if (v55 >= 0.0)
      {
        v59 = 3.4028e38;
      }

      else
      {
        v74 = *a2;
        v75 = v53;
        a1 = btVoronoiSimplexSolver::closestPtPointTriangle(a1, a2, a3, a4, a5, &v78);
        v53 = v75;
        v56 = vsubq_f32(v78, v74);
        v56.i32[3] = 0;
        v57 = vmulq_f32(v56, v56);
        v58 = vadd_f32(vpadd_f32(*v57.i8, *v57.i8), *&vextq_s8(v57, v57, 8uLL)).f32[0];
        v59 = 3.4028e38;
        if (v58 < 3.4028e38)
        {
          *a7 = v78;
          *(a7 + 16) = v79 & 7 | v8 & 0xF0;
          v60 = *&v80[8];
          *(a7 + 20) = *v80;
          *(a7 + 28) = v60;
          *(a7 + 32) = 0;
          v59 = v58;
        }
      }

      if (v53 >= 0.0)
      {
        v64 = v76;
      }

      else
      {
        a1 = btVoronoiSimplexSolver::closestPtPointTriangle(a1, a2, a3, a5, a6, &v78);
        v61 = vsubq_f32(v78, *a2);
        v61.i32[3] = 0;
        v62 = vmulq_f32(v61, v61);
        v63 = vadd_f32(vpadd_f32(*v62.i8, *v62.i8), *&vextq_s8(v62, v62, 8uLL)).f32[0];
        v64 = v76;
        if (v63 < v59)
        {
          *a7 = v78;
          *(a7 + 16) = (2 * v79) & 0xC | v79 & 1 | *(a7 + 16) & 0xF0;
          *(a7 + 20) = *v80;
          *(a7 + 24) = 0;
          *(a7 + 28) = *&v80[4];
          v59 = v63;
        }
      }

      if (v64 >= 0.0)
      {
        v65 = v77;
      }

      else
      {
        a1 = btVoronoiSimplexSolver::closestPtPointTriangle(a1, a2, a3, a6, a4, &v78);
        v65 = v77;
        v66 = vsubq_f32(v78, *a2);
        v66.i32[3] = 0;
        v67 = vmulq_f32(v66, v66);
        v68 = vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0];
        if (v68 < v59)
        {
          *a7 = v78;
          *(a7 + 16) = v79 & 1 | (2 * ((v79 & 4) != 0)) & 0xF7 | (8 * ((v79 & 2) != 0)) | *(a7 + 16) & 0xF0;
          v70 = *&v80[4];
          v69 = *&v80[8];
          *(a7 + 20) = *v80;
          *(a7 + 24) = v69;
          *(a7 + 28) = 0;
          *(a7 + 32) = v70;
          v59 = v68;
        }
      }

      if (v65 < 0.0)
      {
        btVoronoiSimplexSolver::closestPtPointTriangle(a1, a2, a4, a6, a5, &v78);
        v71 = vsubq_f32(v78, *a2);
        v71.i32[3] = 0;
        v72 = vmulq_f32(v71, v71);
        if (vadd_f32(vpadd_f32(*v72.i8, *v72.i8), *&vextq_s8(v72, v72, 8uLL)).f32[0] < v59)
        {
          *a7 = v78;
          *(a7 + 16) = v79 & 4 | (2 * (v79 & 1)) & 0xF7 | (8 * ((v79 & 2) != 0)) | *(a7 + 16) & 0xF0;
          v73 = *v80;
          *(a7 + 20) = 0;
          *(a7 + 24) = v73;
          *(a7 + 28) = vrev64_s32(*&v80[4]);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 btVoronoiSimplexSolver::closest(float32x4_t *this, btVector3 *a2)
{
  btVoronoiSimplexSolver::updateClosestVectorAndPoints(this);
  result = this[18];
  *a2 = result;
  return result;
}

uint64_t btVoronoiSimplexSolver::inSimplex(btVoronoiSimplexSolver *this, float32x4_t *a2)
{
  v2 = *this;
  if (v2 <= 0)
  {
    v3 = 0;
    v5 = a2->f32[3];
  }

  else
  {
    v3 = 0;
    v4 = (this + 16);
    LODWORD(v5) = HIDWORD(*a2);
    do
    {
      v6 = *v4++;
      v7 = vsubq_f32(*a2, v6);
      v7.i32[3] = 0;
      v8 = vmulq_f32(v7, v7);
      v3 |= vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] <= *(this + 80);
      --v2;
    }

    while (v2);
  }

  if (v5 == *(this + 79) && a2->f32[2] == *(this + 78) && a2->f32[1] == *(this + 77))
  {
    v3 |= a2->f32[0] == *(this + 76);
  }

  return v3 & 1;
}

__n128 btVoronoiSimplexSolver::compute_points(float32x4_t *this, btVector3 *a2, btVector3 *a3)
{
  btVoronoiSimplexSolver::updateClosestVectorAndPoints(this);
  *a2 = this[16];
  result = this[17];
  *a3 = result;
  return result;
}

double btKinematicCharacterController::btKinematicCharacterController(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  *a1 = &unk_282DCAC88;
  *(a1 + 184) = 1;
  *(a1 + 176) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 72) = 1017370378;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 68) = a5;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 228) = 0;
  *(a1 + 232) = a4;
  *(a1 + 32) = xmmword_21C2A4590;
  *(a1 + 224) = 16842752;
  result = 0.000320729624;
  *(a1 + 52) = xmmword_21C2A45A0;
  return result;
}

void btKinematicCharacterController::~btKinematicCharacterController(btKinematicCharacterController *this)
{
  *this = &unk_282DCAC88;
  v2 = *(this + 22);
  if (v2 && *(this + 184) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 184) = 1;
  *(this + 22) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
}

{
  btKinematicCharacterController::~btKinematicCharacterController(this);

  btAlignedFreeInternal(v1);
}

uint64_t btKinematicCharacterController::recoverFromPenetration(btKinematicCharacterController *this, btCollisionWorld *a2)
{
  (*(**(this + 3) + 16))(*(this + 3), *(this + 2) + 16, v26, v25);
  (*(**(a2 + 12) + 32))(*(a2 + 12), *(*(this + 2) + 200), v26, v25, *(a2 + 5));
  (*(**(a2 + 5) + 64))(*(a2 + 5), *(*(this + 2) + 328), a2 + 48, *(a2 + 5));
  v4 = *(this + 2);
  *(this + 7) = *(v4 + 64);
  if ((*(**(v4 + 328) + 72))(*(v4 + 328)) < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v24 = vdupq_n_s32(0x3E4CCCCDu);
    do
    {
      v8 = *(this + 41);
      if ((v8 & 0x80000000) != 0)
      {
        if ((*(this + 42) & 0x80000000) != 0)
        {
          v9 = *(this + 22);
          if (v9 && *(this + 184) == 1)
          {
            btAlignedFreeInternal(v9);
          }

          *(this + 184) = 1;
          *(this + 22) = 0;
          *(this + 42) = 0;
        }

        do
        {
          *(*(this + 22) + 8 * v8++) = 0;
        }

        while (v8);
      }

      *(this + 41) = 0;
      v10 = *(*((*(**(*(this + 2) + 328) + 56))(*(*(this + 2) + 328)) + 16) + 32 * v5 + 16);
      if (v10)
      {
        (*(*v10 + 32))(v10, this + 160);
      }

      v11 = *(this + 41);
      v12 = *(this + 2);
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *(this + 22);
        do
        {
          v15 = *(v14 + 8 * v13);
          v16 = v15[50].i32[0];
          if (v16 >= 1)
          {
            v17 = 0;
            if (v15[49].i64[0] == v12)
            {
              v18 = -1.0;
            }

            else
            {
              v18 = 1.0;
            }

            v19 = v15 + 5;
            do
            {
              v20 = v19[1].f32[0];
              if (v20 < 0.0)
              {
                if (v20 < v7)
                {
                  v21 = vmulq_n_f32(*v19, v18);
                  v21.i32[3] = 0;
                  *(this + 13) = v21;
                  v7 = v20;
                }

                v22 = vmulq_f32(vmulq_n_f32(vmulq_n_f32(*v19, v18), v20), v24);
                v22.i32[3] = 0;
                *(this + 7) = vaddq_f32(*(this + 7), v22);
                v16 = v15[50].i32[0];
                v6 = 1;
              }

              ++v17;
              v19 += 12;
            }

            while (v17 < v16);
          }

          ++v13;
        }

        while (v13 != v11);
      }

      ++v5;
    }

    while (v5 < (*(**(v12 + 328) + 72))(*(v12 + 328)));
  }

  *(*(this + 2) + 64) = *(this + 7);
  return v6 & 1;
}

int8x16_t btKinematicCharacterController::stepUp(float32x4_t *this, btCollisionWorld *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  UpAxisDirections = btKinematicCharacterController::getUpAxisDirections(this);
  v5 = vmulq_n_f32(*&dword_27CDDB290[4 * this[14].i32[2]], this[4].f32[1] + fmaxf(this[2].f32[1], 0.0));
  v5.i32[3] = 0;
  this[9] = vaddq_f32(this[7], v5);
  v21[0] = xmmword_21C27F910;
  v21[1] = xmmword_21C27F8C0;
  v21[2] = xmmword_21C27F600;
  v20[0] = xmmword_21C27F910;
  v20[1] = xmmword_21C27F8C0;
  v20[2] = xmmword_21C27F600;
  btKinematicCharacterController::getUpAxisDirections(UpAxisDirections);
  v6 = this[14].i32[2];
  v7 = (*(*this[1].i64[1] + 96))(this[1].i64[1]);
  v9 = vmulq_n_f32(*&dword_27CDDB290[4 * v6], v8 + this[4].f32[2]);
  v9.i32[3] = 0;
  v21[3] = vaddq_f32(this[7], v9);
  v20[3] = this[9];
  v10 = this[1].i64[0];
  btKinematicCharacterController::getUpAxisDirections(v7);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = veorq_s8(*&dword_27CDDB290[4 * this[14].i32[2]], v11);
  v23 = 1.0;
  v29 = 0;
  v26 = 0u;
  v27 = 0u;
  v22 = &unk_282DCAD00;
  v31 = v12;
  v32 = 1060439169;
  v13 = this[1].i64[0];
  v14 = this[1].i64[1];
  v15 = *(v13 + 200);
  v24 = *(v15 + 8);
  v16 = *(v15 + 24);
  v30 = v10;
  v25 = v16;
  if (this[14].i8[2] == 1)
  {
    btGhostObject::convexSweepTest(v13, v14, v21, v20, &v22, *(a2 + 21));
  }

  else
  {
    v17 = btCollisionWorld::convexSweepTest(a2, v14, v21, v20, &v22, 0.0);
  }

  if (v23 >= 1.0)
  {
    this[8].i32[0] = this[4].i32[1];
    result = this[9];
    this[7] = result;
  }

  else
  {
    btKinematicCharacterController::getUpAxisDirections(v17);
    result = vmulq_f32(v28, *&_MergedGlobals_4[2 * this[14].i32[2] + 2]);
    *result.i8 = vadd_f32(vpadd_f32(*result.i8, *result.i8), *&vextq_s8(result, result, 8uLL));
    if (*result.i32 > 0.0)
    {
      v19 = v23;
      this[8].f32[0] = this[4].f32[1] * v23;
      result = vaddq_f32(this[7], vmulq_n_f32(vsubq_f32(this[9], this[7]), v19));
      this[7] = result;
    }

    this[2].i64[0] = 0;
  }

  return result;
}

int *btKinematicCharacterController::getUpAxisDirections(btKinematicCharacterController *this)
{
  if ((atomic_load_explicit(_MergedGlobals_4, memory_order_acquire) & 1) == 0)
  {
    btKinematicCharacterController::getUpAxisDirections();
  }

  return &dword_27CDDB290;
}

float32x4_t btKinematicCharacterController::updateTargetPositionBasedOnCollision(float32x4_t *this, float32x4_t *a2, float a3, float a4)
{
  result = this[7];
  v5 = vsubq_f32(this[9], result);
  v5.i32[3] = 0;
  v6 = vmulq_f32(v5, v5);
  v7 = sqrtf(vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0]);
  if (v7 > 0.00000011921)
  {
    v8 = *a2;
    this[9] = result;
    if (a4 != 0.0)
    {
      v9 = vmulq_n_f32(v5, 1.0 / v7);
      v10 = vmulq_f32(v9, v8);
      *v10.i32 = vadd_f32(*&vextq_s8(v10, v10, 8uLL), vpadd_f32(*v10.i8, *v10.i8)).f32[0];
      v11 = vsubq_f32(v9, vmulq_n_f32(v8, *v10.i32 + *v10.i32));
      v11.i32[3] = 0;
      v12 = vmulq_f32(v11, v11);
      v13 = vmulq_n_f32(v11, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)).f32[0]));
      v14 = vmulq_f32(v8, v13);
      v15 = vmulq_n_f32(vsubq_f32(v13, vmulq_n_f32(v8, vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0])), v7 * a4);
      v15.i32[3] = 0;
      result = vaddq_f32(result, v15);
      this[9] = result;
    }
  }

  return result;
}

void btKinematicCharacterController::stepForwardAndStrafe(btKinematicCharacterController *this, btCollisionWorld *a2, float32x4_t *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  *(this + 9) = vaddq_f32(*(this + 7), *a3);
  v24[0] = xmmword_21C27F910;
  v24[1] = xmmword_21C27F8C0;
  v24[2] = xmmword_21C27F600;
  v22[0] = xmmword_21C27F910;
  v22[1] = xmmword_21C27F8C0;
  v22[2] = xmmword_21C27F600;
  if (*(this + 192) == 1)
  {
    v5 = vmulq_f32(*(this + 6), *(this + 13));
    v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
    if (v6 > 0.0)
    {
      btKinematicCharacterController::updateTargetPositionBasedOnCollision(this, this + 13, v6, 1.0);
    }
  }

  v7 = -11;
  v8 = 1.0;
  do
  {
    if (__CFADD__(v7++, 1))
    {
      break;
    }

    v25 = *(this + 7);
    v23 = *(this + 9);
    v10 = vsubq_f32(v25, v23);
    v10.i32[3] = 0;
    v12 = *(this + 2);
    v11 = *(this + 3);
    v27 = 1.0;
    v33 = 0;
    v30 = 0u;
    v31 = 0u;
    v26 = &unk_282DCAD00;
    v35 = v10;
    v36 = 0;
    v13 = *(v12 + 200);
    v28 = *(v13 + 8);
    v14 = *(v13 + 24);
    v34 = v12;
    v29 = v14;
    v15 = (*(*v11 + 96))(v11);
    (*(**(this + 3) + 88))(*(this + 3), v15 + *(this + 18));
    if (*(this + 226) == 1)
    {
      btGhostObject::convexSweepTest(*(this + 2), *(this + 3), v24, v22, &v26, *(a2 + 21));
    }

    else
    {
      btCollisionWorld::convexSweepTest(a2, *(this + 3), v24, v22, &v26, *(a2 + 21));
    }

    (*(**(this + 3) + 88))(*(this + 3), v15);
    v17 = v27;
    if (v27 >= 1.0)
    {
      *(this + 7) = *(this + 9);
    }

    else
    {
      btKinematicCharacterController::updateTargetPositionBasedOnCollision(this, v32, v16, 1.0);
      v18 = vsubq_f32(*(this + 9), *(this + 7));
      v18.i32[3] = 0;
      v19 = vmulq_f32(v18, v18);
      v20 = vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0];
      if (v20 <= 0.00000011921)
      {
        return;
      }

      v21 = vmulq_f32(vmulq_n_f32(v18, 1.0 / sqrtf(v20)), *(this + 6));
      if (vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL)).f32[0] <= 0.0)
      {
        return;
      }
    }

    v8 = v8 - v17;
  }

  while (v8 > 0.01);
}

void btKinematicCharacterController::stepDown(float32x4_t *this, btCollisionWorld *a2, float a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = this[2].f32[0];
  v6 = -v5;
  v7 = v5 < 0.0;
  v8 = 0.0;
  if (v7)
  {
    v8 = v6;
  }

  v9 = v8 * a3;
  if ((v8 * a3) > 0.0 && v9 < this[4].f32[1] && ((this[14].i8[0] & 1) != 0 || (this[14].i8[1] & 1) == 0))
  {
    v9 = this[4].f32[1];
  }

  UpAxisDirections = btKinematicCharacterController::getUpAxisDirections(this);
  v11 = vmulq_n_f32(*&dword_27CDDB290[4 * this[14].i32[2]], v9 + this[8].f32[0]);
  v11.i32[3] = 0;
  v12 = vsubq_f32(this[9], v11);
  this[9] = v12;
  v24[0] = xmmword_21C27F910;
  v24[1] = xmmword_21C27F8C0;
  v23[0] = xmmword_21C27F910;
  v23[1] = xmmword_21C27F8C0;
  v13 = this[7];
  v24[2] = xmmword_21C27F600;
  v24[3] = v13;
  v23[2] = xmmword_21C27F600;
  v23[3] = v12;
  v14 = this[1].i64[0];
  btKinematicCharacterController::getUpAxisDirections(UpAxisDirections);
  v15 = this[14].i32[2];
  v16 = this[3].i32[2];
  v26 = 1.0;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v25 = &unk_282DCAD00;
  v33 = *&dword_27CDDB290[4 * v15];
  v34 = v16;
  v17 = this[1].i64[0];
  v18 = this[1].i64[1];
  v19 = *(v17 + 200);
  v27 = *(v19 + 8);
  v20 = *(v19 + 24);
  v32 = v14;
  v28 = v20;
  v21 = *(a2 + 21);
  if (this[14].i8[2] == 1)
  {
    btGhostObject::convexSweepTest(v17, v18, v24, v23, &v25, v21);
  }

  else
  {
    btCollisionWorld::convexSweepTest(a2, v18, v24, v23, &v25, v21);
  }

  v22 = this[9];
  if (v26 < 1.0)
  {
    v22 = vaddq_f32(this[7], vmulq_n_f32(vsubq_f32(v22, this[7]), v26));
    this[2].i64[0] = 0;
    this[14].i8[1] = 0;
  }

  this[7] = v22;
}

float32x4_t btKinematicCharacterController::setWalkDirection(int8x16_t *this, float32x4_t *a2, double a3, double a4, double a5, float32x4_t a6)
{
  this[14].i8[3] = 1;
  result = *a2;
  v7 = vmulq_f32(result, result);
  v8 = vmulq_n_f32(*a2, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0]));
  v9 = vmulq_f32(v8, v8);
  *a6.f32 = vpadd_f32(*v9.i8, *v9.i8);
  v10 = vextq_s8(v9, v9, 8uLL);
  *v10.f32 = vadd_f32(*a6.f32, *v10.f32);
  v10.f32[0] = sqrtf(v10.f32[0]);
  a6.i64[0] = 0x3400000034000000;
  this[5] = *a2;
  this[6] = vandq_s8(v8, vdupq_lane_s32(*&vmvnq_s8(vcgtq_f32(a6, v10)), 0));
  return result;
}

uint64_t btKinematicCharacterController::setVelocityForTimeInterval(uint64_t this, float32x4_t *a2, float a3, double a4, double a5, double a6, float32x4_t a7)
{
  *(this + 227) = 0;
  v7 = vmulq_f32(*a2, *a2);
  v8 = vmulq_n_f32(*a2, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0]));
  v9 = vmulq_f32(v8, v8);
  *a7.f32 = vpadd_f32(*v9.i8, *v9.i8);
  v10 = vextq_s8(v9, v9, 8uLL);
  *v10.f32 = vadd_f32(*a7.f32, *v10.f32);
  v10.f32[0] = sqrtf(v10.f32[0]);
  a7.i64[0] = 0x3400000034000000;
  *(this + 80) = *a2;
  *(this + 96) = vandq_s8(v8, vdupq_lane_s32(*&vmvnq_s8(vcgtq_f32(a7, v10)), 0));
  *(this + 228) = a3;
  return this;
}

__n128 btKinematicCharacterController::warp(btKinematicCharacterController *this, __n128 *a2)
{
  result = *a2;
  v3 = *(this + 2);
  *(v3 + 16) = xmmword_21C27F910;
  *(v3 + 32) = xmmword_21C27F8C0;
  *(v3 + 48) = xmmword_21C27F600;
  *(v3 + 64) = result;
  return result;
}

__n128 btKinematicCharacterController::preStep(__n128 *this, btCollisionWorld *a2)
{
  this[12].n128_u8[0] = 0;
  v4 = 5;
  do
  {
    if (!btKinematicCharacterController::recoverFromPenetration(this, a2))
    {
      break;
    }

    this[12].n128_u8[0] = 1;
    --v4;
  }

  while (v4);
  result = *(this[1].n128_u64[0] + 64);
  this[7] = result;
  this[9] = result;
  return result;
}

void btKinematicCharacterController::playerStep(float32x4_t *this, btCollisionWorld *a2, float a3)
{
  if ((this[14].i8[3] & 1) != 0 || this[14].f32[1] > 0.0)
  {
    this[14].i8[0] = (*(this->i64[0] + 96))(this);
    v6 = this[2].f32[0] - (this[3].f32[3] * a3);
    this[2].f32[0] = v6;
    if (v6 > 0.0)
    {
      v7 = this[2].f32[3];
      if (v6 > v7)
      {
        this[2].f32[0] = v7;
        v6 = v7;
      }
    }

    if (v6 < 0.0)
    {
      v8 = fabsf(this[2].f32[2]);
      if (fabsf(v6) > v8)
      {
        v6 = -v8;
        this[2].f32[0] = -v8;
      }
    }

    this[2].f32[1] = v6 * a3;
    v9 = this[1].i64[0];
    v17 = v9[2];
    v18 = v9[1];
    v16 = v9[3];
    btKinematicCharacterController::stepUp(this, a2);
    if (this[14].i8[3] == 1)
    {
      v10 = &this[5];
    }

    else
    {
      v11 = this[14].f32[1];
      if (v11 <= a3)
      {
        v12 = this[14].f32[1];
      }

      else
      {
        v12 = a3;
      }

      this[14].f32[1] = v11 - a3;
      v13 = vmulq_n_f32(this[5], v12);
      v13.var0.var0[3] = 0.0;
      v19 = v13;
      v10 = &v19;
    }

    btKinematicCharacterController::stepForwardAndStrafe(this, a2, v10);
    btKinematicCharacterController::stepDown(this, a2, a3);
    v14 = this[7];
    v15 = this[1].i64[0];
    v15[1] = v18;
    v15[2] = v17;
    v15[3] = v16;
    v15[4] = v14;
  }
}

float btKinematicCharacterController::jump(btKinematicCharacterController *this)
{
  if ((*(*this + 80))(this))
  {
    result = *(this + 11);
    *(this + 8) = result;
    *(this + 225) = 1;
  }

  return result;
}

uint64_t btKinematicCharacterController::updateAction(btKinematicCharacterController *this, btCollisionWorld *a2, float a3)
{
  (*(*this + 64))(this);
  v6 = *(*this + 72);
  v7.n128_f32[0] = a3;

  return v6(this, a2, v7);
}

float btKinematicClosestNotMeConvexResultCallback::addSingleResult(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *a2;
  result = 1.0;
  if (*a2 != *(a1 + 120))
  {
    v5 = *(a2 + 16);
    if (!a3)
    {
      v6 = vmulq_f32(v3[1], v5);
      v7 = vmulq_f32(v5, v3[2]);
      v8 = vmulq_f32(v5, v3[3]);
      v8.i32[3] = 0;
      *v5.f32 = vadd_f32(vpadd_f32(*v6.i8, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
      *&v5.u32[2] = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
    }

    v9 = vmulq_f32(v5, *(a1 + 128));
    if (vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)).f32[0] >= *(a1 + 144))
    {
      *(a1 + 8) = *(a2 + 48);
      *(a1 + 112) = v3;
      v10 = *(a2 + 16);
      if (!a3)
      {
        v11 = vmulq_f32(v3[1], v10);
        v12 = vmulq_f32(v10, v3[2]);
        v13 = vmulq_f32(v10, v3[3]);
        v13.i32[3] = 0;
        *v10.f32 = vadd_f32(vpadd_f32(*v11.i8, *v12.i8), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
        *&v10.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
      }

      *(a1 + 80) = v10;
      *(a1 + 96) = *(a2 + 32);
      return *(a2 + 48);
    }
  }

  return result;
}

void btKinematicCharacterController::getUpAxisDirections()
{
  if (__cxa_guard_acquire(_MergedGlobals_4))
  {
    dword_27CDDB290 = 1065353216;
    unk_27CDDB29C = 0;
    unk_27CDDB294 = 0;
    dword_27CDDB2A4 = 1065353216;
    qword_27CDDB2A8 = 0;
    unk_27CDDB2B0 = 0;
    qword_27CDDB2B8 = 1065353216;

    __cxa_guard_release(_MergedGlobals_4);
  }
}

void btConeTwistConstraint::btConeTwistConstraint(btConeTwistConstraint *this, btRigidBody *a2, btRigidBody *a3, const btTransform *a4, const btTransform *a5)
{
  btTypedConstraint::btTypedConstraint(this, 5, a2, a3);
  *v7 = &unk_282DCAD30;
  *(v7 + 368) = *a4;
  *(v7 + 432) = a5->var0.var0[0];
  *(v7 + 448) = a5->var0.var0[1];
  *(v7 + 464) = a5->var0.var0[2];
  var1 = a5->var1;
  *(v7 + 624) = 0;
  *(v7 + 592) = 0;
  *(v7 + 656) = -1082130432;
  *(v7 + 480) = var1;
  *(v7 + 496) = xmmword_21C2A45C0;
  *(v7 + 512) = xmmword_21C2A45D0;
  *(v7 + 688) = 0;
  *(v7 + 696) = 1060320051;
}

void btConeTwistConstraint::btConeTwistConstraint(btConeTwistConstraint *this, btRigidBody *a2, const btTransform *a3)
{
  v4 = btTypedConstraint::btTypedConstraint(this, 5, a2);
  *v4 = &unk_282DCAD30;
  v5 = a3->var0.var0[0];
  *(v4 + 368) = a3->var0.var0[0];
  v6 = a3->var0.var0[1];
  *(v4 + 384) = v6;
  v7 = a3->var0.var0[2];
  *(v4 + 400) = v7;
  *(v4 + 416) = a3->var1;
  *(v4 + 432) = v5;
  *(v4 + 448) = v6;
  *(v4 + 464) = v7;
  *(v4 + 480) = 0;
  *(v4 + 488) = 0;
  *(v4 + 592) = 0;
  *(v4 + 624) = 0;
  *(v4 + 656) = -1082130432;
  *(v4 + 496) = xmmword_21C2A45C0;
  *(v4 + 512) = xmmword_21C2A45D0;
  *(v4 + 688) = 0;
  *(v4 + 696) = 1060320051;
}

void btConeTwistConstraint::getInfo1(uint64_t a1, int32x2_t *a2)
{
  if (*(a1 + 595) == 1)
  {
    v3 = 0;
    a2->i32[0] = 0;
LABEL_9:
    a2->i32[1] = v3;
    return;
  }

  *a2 = 0x300000003;
  btConeTwistConstraint::calcAngleInfo2(a1, (*(a1 + 40) + 16), (*(a1 + 48) + 16), (*(a1 + 40) + 304), (*(a1 + 48) + 304));
  if (*(a1 + 594) == 1)
  {
    v5 = *a2;
    *a2 = vadd_s32(*a2, 0xFFFFFFFF00000001);
    v6 = *(a1 + 524);
    if (*(a1 + 512) < v6 && *(a1 + 516) < v6)
    {
      *a2 = vadd_s32(v5, 0xFFFFFFFE00000002);
    }
  }

  if (*(a1 + 593) == 1)
  {
    v7 = a2->i32[1];
    ++a2->i32[0];
    v3 = v7 - 1;
    goto LABEL_9;
  }
}

void btConeTwistConstraint::calcAngleInfo2(btConeTwistConstraint *this, const btTransform *a2, const btTransform *a3, const btMatrix3x3 *a4, const btMatrix3x3 *a5)
{
  *&this->var40.var0.var0[2] = 0;
  *(&this->var43.var0.var0[3] + 1) = 0;
  if (LOBYTE(this->var48) != 1 || (HIBYTE(this->var43.var0.var0[3]) & 1) != 0)
  {
    btMatrix3x3::getRotation(&a2->var0, &v270);
    btMatrix3x3::getRotation(&this->var14.var0.var0[2].var0.var0[3], &v268);
    v10 = v268.var0[0];
    v11 = vextq_s8(v270.var0[0], v270.var0[0], 8uLL).u64[0];
    v12 = vzip1_s32(v11, *v270.var0[0].var0.var0);
    v13 = vextq_s8(v10, v10, 8uLL).u64[0];
    *v14.f32 = vzip1_s32(v13, *v268.var0[0].var0.var0);
    v15 = vext_s8(v13, *v268.var0[0].var0.var0, 4uLL);
    *v16.f32 = vext_s8(*v270.var0[0].var0.var0, v11, 4uLL);
    *v17.f32 = vext_s8(*v268.var0[0].var0.var0, v13, 4uLL);
    *v18.f32 = v12;
    v18.i64[1] = v16.i64[0];
    *&v17.u32[2] = vrev64_s32(*v14.f32);
    v19 = vtrn2q_s32(v10, v10);
    *&v14.u32[2] = v15;
    *&v16.u32[2] = v12;
    v265 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v268.var0[0], v270.var0[0], 3), vmulq_f32(v18, v17)), veorq_s8(vaddq_f32(vmulq_f32(vdupq_lane_s64(*v270.var0[0].var0.var0, 0), vextq_s8(v19, v19, 8uLL)), vmulq_f32(v16, v14)), xmmword_21C27FD30));
    btMatrix3x3::getRotation(&a3->var0, &v270);
    btMatrix3x3::getRotation(&this->var15.var0.var0[2].var0.var0[3], &v268);
    v21 = v268.var0[0];
    v22 = vextq_s8(v270.var0[0], v270.var0[0], 8uLL).u64[0];
    v23 = vzip1_s32(v22, *v270.var0[0].var0.var0);
    v24 = vextq_s8(v21, v21, 8uLL).u64[0];
    *v25.f32 = vzip1_s32(v24, *v268.var0[0].var0.var0);
    v26 = vext_s8(v24, *v268.var0[0].var0.var0, 4uLL);
    *v27.f32 = vext_s8(*v270.var0[0].var0.var0, v22, 4uLL);
    *v28.f32 = vext_s8(*v268.var0[0].var0.var0, v24, 4uLL);
    *v29.f32 = v23;
    v29.i64[1] = v27.i64[0];
    *&v28.u32[2] = vrev64_s32(*v25.f32);
    v30 = vtrn2q_s32(v21, v21);
    *&v25.u32[2] = v26;
    *&v27.u32[2] = v23;
    v260 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v268.var0[0], v270.var0[0], 3), vmulq_f32(v29, v28)), veorq_s8(vaddq_f32(vmulq_f32(vdupq_lane_s64(*v270.var0[0].var0.var0, 0), vextq_s8(v30, v30, 8uLL)), vmulq_f32(v27, v25)), xmmword_21C27FD30));
    v31 = veorq_s8(v260, xmmword_21C27FD40);
    v30.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
    v32 = vzip1_s32(*v30.f32, *v31.f32);
    v36 = v265;
    *v33.f32 = vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *v265.f32);
    v262 = *v30.f32;
    *v29.f32 = vext_s8(*v31.f32, *v30.f32, 4uLL);
    v25.i64[0] = vextq_s8(v36, v36, 4uLL).u64[0];
    v30.i64[0] = v31.i64[0];
    *&v30.u32[2] = v32;
    *v28.f32 = vdup_laneq_s32(v265, 3);
    v28.i64[1] = vextq_s8(v36, v36, 0xCuLL).u64[0];
    v257 = v28;
    v258 = v25.i64[0];
    v37 = vmulq_f32(v28, v30);
    v259 = v33.i64[0];
    *&v33.u32[2] = vdup_lane_s32(*v265.f32, 1);
    v263 = v31;
    v264 = v32;
    *v34.f32 = v32;
    v34.i64[1] = v29.i64[0];
    v261 = v29.i64[0];
    v28.i64[0] = v29.i64[0];
    v28.i64[1] = v31.i64[0];
    *&v25.u32[2] = vrev64_s32(*v33.f32);
    v35 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v265, v31, 3), vmulq_f32(v25, v34)), veorq_s8(vaddq_f32(vmulq_f32(v33, v28), v37), xmmword_21C27FD30));
    *v36.f32 = vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *v35.f32);
    *v38.f32 = vdup_laneq_s32(v35, 3);
    v37.i64[0] = vextq_s8(v35, v35, 4uLL).u64[0];
    v38.i64[1] = vextq_s8(v35, v35, 0xCuLL).u64[0];
    v28.i64[0] = v36.i64[0];
    v28.i64[1] = v37.i64[0];
    v25.i64[0] = v37.i64[0];
    v25.i64[1] = v35.i64[0];
    v39 = vaddq_f32(veorq_s8(vaddq_f32(vmulq_f32(v25, xmmword_21C27F8C0), vmulq_f32(v38, xmmword_21C27F7E0)), xmmword_21C27FD30), vmulq_f32(v28, xmmword_21C2A22A0));
    v40 = veorq_s8(v35, xmmword_21C27FD40);
    v41 = vextq_s8(v39, v39, 8uLL).u64[0];
    *v31.f32 = vzip1_s32(v41, *v39.f32);
    v29.i64[0] = vextq_s8(v40, v40, 8uLL).u64[0];
    *v42.f32 = vzip1_s32(*v29.f32, *v40.f32);
    v43 = vdup_laneq_s32(v40, 3);
    v44.i64[0] = vextq_s8(v39, v39, 4uLL).u64[0];
    *v29.f32 = vext_s8(*v40.f32, *v29.f32, 4uLL);
    v31.i64[1] = v44.i64[0];
    *&v29.u32[2] = vdup_lane_s32(*v42.f32, 1);
    v45 = vmulq_f32(v29, v31);
    v46 = vmulq_laneq_f32(v40, v39, 3);
    v47 = vtrn2q_s32(v40, v40);
    *&v44.u32[2] = v41;
    *&v42.u32[2] = v43;
    v48 = vaddq_f32(vsubq_f32(v46, v45), vaddq_f32(vmulq_f32(vextq_s8(v47, v47, 8uLL), vdupq_lane_s64(v39.i64[0], 0)), vmulq_f32(v42, v44)));
    v48.i32[3] = 0;
    v49 = vmulq_f32(v48, v48);
    v50 = vmulq_n_f32(v48, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL)).f32[0]));
    v51 = vmulq_f32(v50, xmmword_21C27F910);
    v52 = vadd_f32(vpadd_f32(*v51.i8, *v51.i8), *&vextq_s8(v51, v51, 8uLL)).f32[0];
    if (v52 >= -1.0)
    {
      v54 = vmulq_f32(v50, xmmword_21C27F8C0);
      v55 = vaddq_f32(vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL), vmulq_f32(v50, xmmword_21C2A3E50));
      v55.i32[3] = sqrtf((v52 + 1.0) + (v52 + 1.0));
      v56.i32[1] = 1056964608;
      v56.i64[1] = 0x3F0000003F000000;
      *v56.i32 = 1.0 / v55.f32[3];
      v57 = vzip1q_s32(v56, v56);
      v57.f32[2] = 1.0 / v55.f32[3];
      v53 = vmulq_f32(v55, v57);
    }

    else
    {
      v53 = xmmword_21C2A45E0;
    }

    v58 = vzip2q_s32(vzip1q_s32(v53, vextq_s8(v53, v53, 0xCuLL)), v53);
    v59 = vmulq_f32(v53, v53);
    v60 = vzip2q_s32(vzip1q_s32(v59, vextq_s8(v59, v59, 0xCuLL)), v59);
    v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
    v270.var0[0] = vmulq_n_f32(v58, 1.0 / sqrtf(vpadd_f32(*v60.f32, *v60.f32).f32[0]));
    v61 = veorq_s8(v270.var0[0], xmmword_21C27FD40);
    v58.i64[0] = vextq_s8(v61, v61, 8uLL).u64[0];
    *v62.f32 = vzip1_s32(*v58.f32, *v61.f32);
    *v58.f32 = vext_s8(*v61.f32, *v58.f32, 4uLL);
    v63.i64[0] = v61.i64[0];
    v63.i64[1] = v62.i64[0];
    v62.i64[1] = v58.i64[0];
    v58.i64[1] = v61.i64[0];
    *&v36.u32[2] = vdup_lane_s32(*v35.f32, 1);
    *&v37.u32[2] = vrev64_s32(*v36.f32);
    v64 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v35, v61, 3), vmulq_f32(v37, v62)), veorq_s8(vaddq_f32(vmulq_f32(v36, v58), vmulq_f32(v38, v63)), xmmword_21C27FD30));
    v65 = vmulq_f32(v64, v64);
    v66 = vpaddq_f32(v65, v65);
    v268.var0[0] = vmulq_n_f32(v64, 1.0 / sqrtf(vpadd_f32(*v66.f32, *v66.f32).f32[0]));
    v67 = this->var25.var0.var0[3];
    var28 = this->var28;
    if (v67 >= var28)
    {
      var26 = this->var26;
      if (var26 >= var28)
      {
        v266 = 0;
        btConeTwistConstraint::computeConeLimitInfo(this, &v270, &v266 + 1, &v267, &v266);
        v164 = v266;
        v165 = this->var24.var0.var0[3];
        if (*(&v266 + 1) > (*&v266 * v165))
        {
          BYTE2(this->var43.var0.var0[3]) = 1;
          v166 = *(&v164 + 1) - (*&v164 * v165);
          v167 = 1.0;
          if (*(&v164 + 1) < *&v164 && v165 < 1.0)
          {
            v167 = v166 / (*&v164 + (-*&v164 * v165));
          }

          this->var44 = v167;
          this->var40.var0.var0[3] = v166;
          if (fabsf(v267.var0.var0[1]) <= 0.00000011921)
          {
            v170 = v267;
          }

          else
          {
            v168 = fabsf(v267.var0.var0[1] * ((var26 / v67) * (-v267.var0.var0[2] / v267.var0.var0[1])));
            if (v267.var0.var0[2] < 0.0)
            {
              v168 = -v168;
            }

            v267.var0.var0[2] = v168;
            v169 = vmulq_f32(v267, v267);
            v170 = vmulq_n_f32(v267, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v169.i8, *v169.i8), *&vextq_s8(v169, v169, 8uLL)).f32[0]));
          }

          v173.i64[0] = 0x8000000080000000;
          v173.i64[1] = 0x8000000080000000;
          v174 = veorq_s8(v170, v173);
          v175 = v260;
          v176 = vextq_s8(v174, v174, 8uLL).u64[0];
          *v177.f32 = vzip1_s32(v176, *v174.f32);
          *v173.i8 = vzip1_s32(*&vextq_s8(v175, v175, 8uLL), *v260.i8);
          v178.i64[0] = vextq_s8(v175, v175, 4uLL).u64[0];
          *v179.f32 = vext_s8(*v174.f32, v176, 4uLL);
          *v180.f32 = vdup_laneq_s32(v260, 3);
          *&v179.u32[2] = vrev64_s32(*v177.f32);
          v173.i64[1] = v178.i64[0];
          v180.i64[1] = v260.i64[0];
          *&v174.u32[2] = vdup_lane_s32(*v174.f32, 1);
          v178.i64[1] = vextq_s8(v175, v175, 0xCuLL).u64[0];
          v177.i64[1] = v177.i64[0];
          v181 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v180, v174), vmulq_f32(v178, v177)), xmmword_21C27FD30), vmulq_f32(v173, v179));
          v179.i64[0] = vextq_s8(v181, v181, 4uLL).u64[0];
          *v178.f32 = vzip1_s32(*&vextq_s8(v181, v181, 8uLL), *v181.f32);
          v178.i64[1] = v179.i64[0];
          v182.i64[0] = v261;
          *&v182.u32[2] = vrev64_s32(v264);
          v183 = vmulq_f32(v182, v178);
          v184 = vtrn2q_s32(v263, v263);
          v179.i64[1] = v178.i64[0];
          *v173.i8 = v264;
          v173.u64[1] = vext_s8(v262, *v263.f32, 4uLL);
          v185 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v263, v181, 3), v183), vaddq_f32(vmulq_f32(vextq_s8(v184, v184, 8uLL), vdupq_lane_s64(v181.i64[0], 0)), vmulq_f32(v173, v179)));
          v185.i32[3] = 0;
          *&this->var29 = v185;
          *(&this->var45 + 8) = 0u;
          v186 = a4->var0[0];
          v187 = a4->var0[1];
          v186.i32[3] = 0;
          v187.i32[3] = 0;
          v188 = a4->var0[2];
          v188.i32[3] = 0;
          v189 = vmulq_f32(vaddq_f32(vmulq_laneq_f32(v188, v185, 2), vaddq_f32(vmulq_n_f32(v186, v185.f32[0]), vmulq_lane_f32(v187, *v185.f32, 1))), v185);
          v190 = a5->var0[0];
          v191 = a5->var0[1];
          v190.i32[3] = 0;
          v191.i32[3] = 0;
          v192 = a5->var0[2];
          v192.i32[3] = 0;
          v193 = vmulq_f32(vaddq_f32(vmulq_laneq_f32(v192, v185, 2), vaddq_f32(vmulq_n_f32(v190, v185.f32[0]), vmulq_lane_f32(v191, *v185.f32, 1))), v185);
          this->var40.var0.var0[0] = 1.0 / vadd_f32(vadd_f32(vpadd_f32(*v189.i8, *v189.i8), *&vextq_s8(v189, v189, 8uLL)), vadd_f32(vpadd_f32(*v193.i8, *v193.i8), *&vextq_s8(v193, v193, 8uLL))).f32[0];
        }

        goto LABEL_48;
      }
    }

    v66.i32[0] = LODWORD(this->var14.var0.var0[2].var0.var0[3]);
    v66.i32[1] = LODWORD(this->var14.var1.var0.var0[3]);
    v66.i32[2] = LODWORD(this->var15.var0.var0[0].var0.var0[3]);
    v70 = a2->var0.var0[1];
    v71 = vmulq_f32(a2->var0.var0[0], v66);
    v72 = vmulq_f32(v66, v70);
    v73 = a2->var0.var0[2];
    v74 = vmulq_f32(v66, v73);
    v74.i32[3] = 0;
    v75 = vadd_f32(vpadd_f32(*v71.i8, *v72.i8), vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(v72, v72, 8uLL)));
    v76 = vextq_s8(v74, v74, 8uLL);
    v77 = vpadd_f32(vpadd_f32(*v74.i8, *v76.f32), 0);
    v76.i32[0] = LODWORD(this->var14.var1.var0.var0[0]);
    v76.i32[1] = LODWORD(this->var15.var0.var0[0].var0.var0[0]);
    v76.i32[2] = LODWORD(this->var15.var0.var0[1].var0.var0[0]);
    v78 = vmulq_f32(a2->var0.var0[0], v76);
    v79 = vmulq_f32(v70, v76);
    v80 = vmulq_f32(v73, v76);
    v80.i32[3] = 0;
    v81 = vadd_f32(vpadd_f32(*v78.i8, *v79.i8), vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *&vextq_s8(v79, v79, 8uLL)));
    v82 = vpadd_f32(vpadd_f32(*v80.f32, *&vextq_s8(v80, v80, 8uLL)), 0);
    v80.i32[0] = LODWORD(this->var14.var1.var0.var0[1]);
    v80.i32[1] = LODWORD(this->var15.var0.var0[0].var0.var0[1]);
    v80.i32[2] = LODWORD(this->var15.var0.var0[1].var0.var0[1]);
    v83 = vmulq_f32(a2->var0.var0[0], v80);
    v84 = vmulq_f32(v70, v80);
    v85 = vmulq_f32(v73, v80);
    v85.i32[3] = 0;
    v86 = vadd_f32(vpadd_f32(*v83.i8, *v84.i8), vzip1_s32(*&vextq_s8(v83, v83, 8uLL), *&vextq_s8(v84, v84, 8uLL)));
    v87 = vextq_s8(v85, v85, 8uLL);
    v88 = vpadd_f32(vpadd_f32(*v85.i8, *v87.f32), 0);
    v87.i32[0] = LODWORD(this->var15.var0.var0[2].var0.var0[3]);
    v87.i32[1] = LODWORD(this->var15.var1.var0.var0[3]);
    v87.i32[2] = LODWORD(this->var19);
    v89 = vmulq_f32(a3->var0.var0[0], v87);
    v90 = vmulq_f32(v87, a3->var0.var0[1]);
    v91 = vmulq_f32(v87, a3->var0.var0[2]);
    v91.i32[3] = 0;
    v92 = vadd_f32(vpadd_f32(*v89.i8, *v90.i8), vzip1_s32(*&vextq_s8(v89, v89, 8uLL), *&vextq_s8(v90, v90, 8uLL)));
    v93 = vextq_s8(v91, v91, 8uLL);
    v94 = vpadd_f32(vpadd_f32(*v91.i8, *v93.f32), 0);
    *v95.f32 = v92;
    *&v95.u32[2] = v94;
    *v74.i8 = vmul_f32(v75, v92);
    LODWORD(cosval) = vadd_f32(vpadd_f32(*v74.i8, *v74.i8), vmul_f32(v77, v94)).u32[0];
    *v91.i8 = vmul_f32(v81, v92);
    LODWORD(sinval) = vadd_f32(vpadd_f32(*v91.i8, *v91.i8), vmul_f32(v82, v94)).u32[0];
    *v91.i8 = vmul_f32(v86, v92);
    LODWORD(v98) = vadd_f32(vpadd_f32(*v91.i8, *v91.i8), vmul_f32(v88, v94)).u32[0];
    if (v67 >= var28)
    {
      if (fabsf(cosval) < 0.00000011921 && fabsf(sinval) < 0.00000011921)
      {
        goto LABEL_45;
      }

      BYTE2(this->var43.var0.var0[3]) = 1;
      if (v67 < var28)
      {
        goto LABEL_45;
      }

      v250 = v88.i32[0];
      v251 = v94;
      v252 = v92;
      v253 = v95;
      v254 = v82.i32[0];
      v255 = v75;
      v256 = v77.i32[0];
      v246 = sinval;
      v248 = cosval;
      v107 = atan2f(sinval, cosval);
      if (v107 <= v67)
      {
        v98 = 0.0;
        if (v107 >= -v67)
        {
          v75 = v255;
          v77.i32[0] = v256;
          v95 = v253;
          v82.i32[0] = v254;
          v94 = v251;
          v92 = v252;
          cosval = v248;
          v88.i32[0] = v250;
          sinval = v246;
          goto LABEL_45;
        }

        v194 = __sincosf_stret(v67);
        cosval = v194.__cosval;
        v98 = 0.0;
        sinval = -v194.__sinval;
      }

      else
      {
        v108 = __sincosf_stret(v67);
        cosval = v108.__cosval;
        sinval = v108.__sinval;
        v98 = 0.0;
      }
    }

    else
    {
      v99 = this->var26;
      v100 = fabsf(v98);
      if (v99 < var28)
      {
        if (fabsf(sinval) < 0.00000011921 && v100 < 0.00000011921)
        {
LABEL_48:
          if (this->var27 >= 0.0)
          {
            btConeTwistConstraint::computeTwistLimitInfo(v20, &v268, this->var43.var0.var0, &v267);
            v204 = this->var43.var0.var0[0];
            var27 = this->var27;
            v206 = this->var24.var0.var0[3];
            if (v204 > (var27 * v206))
            {
              BYTE1(this->var43.var0.var0[3]) = 1;
              v207 = v204 - (var27 * v206);
              v208 = v204 < var27;
              v209 = 1.0;
              if (v208)
              {
                v209 = 1.0;
                if (v206 < 1.0)
                {
                  v209 = v207 / (var27 + (-var27 * v206));
                }
              }

              this->var45.var0.var0[0] = v209;
              v210.i64[0] = 0x8000000080000000;
              v210.i64[1] = 0x8000000080000000;
              v211 = veorq_s8(v267, v210);
              v212 = v260;
              v213 = vextq_s8(v211, v211, 8uLL).u64[0];
              *v214.f32 = vzip1_s32(v213, *v211.f32);
              *v210.i8 = vzip1_s32(*&vextq_s8(v212, v212, 8uLL), *v260.i8);
              v215.i64[0] = vextq_s8(v212, v212, 4uLL).u64[0];
              *v216.f32 = vext_s8(*v211.f32, v213, 4uLL);
              *v217.f32 = vdup_laneq_s32(v260, 3);
              *&v216.u32[2] = vrev64_s32(*v214.f32);
              v210.i64[1] = v215.i64[0];
              v217.i64[1] = v260.i64[0];
              *&v211.u32[2] = vdup_lane_s32(*v211.f32, 1);
              v215.i64[1] = vextq_s8(v212, v212, 0xCuLL).u64[0];
              v214.i64[1] = v214.i64[0];
              v218 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v217, v211), vmulq_f32(v215, v214)), xmmword_21C27FD30), vmulq_f32(v210, v216));
              v216.i64[0] = vextq_s8(v218, v218, 4uLL).u64[0];
              *v219.f32 = v264;
              *v215.f32 = vzip1_s32(*&vextq_s8(v218, v218, 8uLL), *v218.f32);
              v215.i64[1] = v216.i64[0];
              v220.i64[0] = v261;
              *&v220.u32[2] = vrev64_s32(v264);
              v221 = vtrn2q_s32(v263, v263);
              v216.i64[1] = v215.i64[0];
              *&v219.u32[2] = vext_s8(v262, *v263.f32, 4uLL);
              v222 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v263, v218, 3), vmulq_f32(v220, v215)), vaddq_f32(vmulq_f32(vextq_s8(v221, v221, 8uLL), vdupq_lane_s64(v218.i64[0], 0)), vmulq_f32(v219, v216)));
              v222.i32[3] = 0;
              *&this->var41 = v207;
              *&this->var33 = v222;
              v223 = a4->var0[0];
              v224 = a4->var0[1];
              v223.i32[3] = 0;
              v224.i32[3] = 0;
              v225 = a4->var0[2];
              v225.i32[3] = 0;
              v226 = vmulq_f32(vaddq_f32(vmulq_laneq_f32(v225, v222, 2), vaddq_f32(vmulq_n_f32(v223, v222.f32[0]), vmulq_lane_f32(v224, *v222.f32, 1))), v222);
              v227 = a5->var0[0];
              v228 = a5->var0[1];
              v227.i32[3] = 0;
              v228.i32[3] = 0;
              v229 = a5->var0[2];
              v229.i32[3] = 0;
              v230 = vmulq_f32(vaddq_f32(vmulq_laneq_f32(v229, v222, 2), vaddq_f32(vmulq_n_f32(v227, v222.f32[0]), vmulq_lane_f32(v228, *v222.f32, 1))), v222);
              this->var40.var0.var0[1] = 1.0 / vadd_f32(vadd_f32(vpadd_f32(*v226.i8, *v226.i8), *&vextq_s8(v226, v226, 8uLL)), vadd_f32(vpadd_f32(*v230.i8, *v230.i8), *&vextq_s8(v230, v230, 8uLL))).f32[0];
            }

            if (BYTE2(this->var43.var0.var0[3]) == 1)
            {
              v231.i64[0] = 0x8000000080000000;
              v231.i64[1] = 0x8000000080000000;
              v232 = veorq_s8(v267, v231);
              v231.i64[0] = vextq_s8(v232, v232, 8uLL).u64[0];
              *v233.f32 = vzip1_s32(*v231.i8, *v232.f32);
              *v231.i8 = vext_s8(*v232.f32, *v231.i8, 4uLL);
              v232.i64[1] = v233.i64[0];
              v234 = vrev64_s32(*v233.f32);
              *&v233.u32[2] = vdup_lane_s32(*v232.f32, 1);
              v235.i64[0] = v258;
              v235.i64[1] = v265.i64[0];
              v236 = vmulq_f32(v235, v233);
              v231.u64[1] = v234;
              v235.i64[0] = v259;
              v235.i64[1] = v258;
              v237 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v257, v232), v236), xmmword_21C27FD30), vmulq_f32(v235, v231));
              v238 = veorq_s8(v265, xmmword_21C27FD40);
              v235.i64[0] = vextq_s8(v238, v238, 8uLL).u64[0];
              *v239.f32 = vzip1_s32(*v235.f32, *v238.f32);
              v240 = vext_s8(*v235.f32, *v238.f32, 4uLL);
              v241.i64[0] = vextq_s8(v237, v237, 4uLL).u64[0];
              *v235.f32 = vext_s8(*v238.f32, *v235.f32, 4uLL);
              *v242.f32 = vzip1_s32(*&vextq_s8(v237, v237, 8uLL), *v237.f32);
              v242.i64[1] = v241.i64[0];
              *&v235.u32[2] = vrev64_s32(*v239.f32);
              v243 = vmulq_laneq_f32(v238, v237, 3);
              v244 = vtrn2q_s32(v238, v238);
              v241.i64[1] = v242.i64[0];
              *&v239.u32[2] = v240;
              v245 = vaddq_f32(vsubq_f32(v243, vmulq_f32(v235, v242)), vaddq_f32(vmulq_f32(vextq_s8(v244, v244, 8uLL), vdupq_lane_s64(v237.i64[0], 0)), vmulq_f32(v239, v241)));
              v245.var0.var0[3] = 0.0;
              *(&this->var45 + 8) = v245;
            }
          }

          else
          {
            this->var43.var0.var0[0] = 0.0;
          }

          return;
        }

        *v101.f32 = v75;
        *&v101.u32[2] = v77;
        BYTE2(this->var43.var0.var0[3]) = 1;
        *v102.f32 = vext_s8(v92, v94, 4uLL);
        *&v102.u32[2] = v92;
        *v103.f32 = vext_s8(v75, v77, 4uLL);
        *&v103.u32[2] = v75;
        v104 = vsubq_f32(vmulq_f32(v103, v95), vmulq_f32(v101, v102));
        v105 = vextq_s8(vextq_s8(v104, v104, 0xCuLL), v104, 8uLL);
        v105.i32[3] = 0;
        v102.i64[0] = 0x8000000080000000;
        v102.i64[1] = 0x8000000080000000;
        v106 = veorq_s8(v105, v102);
LABEL_47:
        *&this->var29 = v106;
        goto LABEL_48;
      }

      if (fabsf(cosval) < 0.00000011921 && v100 < 0.00000011921 || (BYTE2(this->var43.var0.var0[3]) = 1, v99 < var28))
      {
LABEL_45:
        *v93.f32 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v81, sinval), v75, cosval), v86, v98);
        v93.f32[2] = ((sinval * v82.f32[0]) + (cosval * v77.f32[0])) + (v98 * v88.f32[0]);
        v196 = vmulq_f32(v93, v93);
        v197 = vmulq_n_f32(v93, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v196.i8, *v196.i8), *&vextq_s8(v196, v196, 8uLL)).f32[0]));
        *v198.f32 = vext_s8(v92, v94, 4uLL);
        *&v198.u32[2] = v92;
        v199 = vsubq_f32(vmulq_f32(v95, vextq_s8(vextq_s8(v197, v197, 0xCuLL), v197, 8uLL)), vmulq_f32(v198, v197));
        v200 = vextq_s8(vextq_s8(v199, v199, 0xCuLL), v199, 8uLL);
        v200.i32[3] = 0;
        v198.i64[0] = 0x8000000080000000;
        v198.i64[1] = 0x8000000080000000;
        v201 = veorq_s8(v200, v198);
        *&this->var29 = v201;
        v202 = vmulq_f32(v201, v201);
        v203 = sqrtf(vadd_f32(vpadd_f32(*v202.i8, *v202.i8), *&vextq_s8(v202, v202, 8uLL)).f32[0]);
        this->var40.var0.var0[3] = v203;
        if (fabsf(v203) < 0.00000011921)
        {
          goto LABEL_48;
        }

        v106 = vmulq_n_f32(v201, 1.0 / v203);
        goto LABEL_47;
      }

      v250 = v88.i32[0];
      v251 = v94;
      v252 = v92;
      v253 = v95;
      v254 = v82.i32[0];
      v255 = v75;
      v256 = v77.i32[0];
      v247 = v98;
      v249 = cosval;
      v171 = atan2f(v98, cosval);
      if (v171 <= v99)
      {
        sinval = 0.0;
        if (v171 >= -v99)
        {
          v75 = v255;
          v77.i32[0] = v256;
          v95 = v253;
          v82.i32[0] = v254;
          v94 = v251;
          v92 = v252;
          cosval = v249;
          v88.i32[0] = v250;
          v98 = v247;
          goto LABEL_45;
        }

        v195 = __sincosf_stret(v99);
        cosval = v195.__cosval;
        sinval = 0.0;
        v98 = -v195.__sinval;
      }

      else
      {
        v172 = __sincosf_stret(v99);
        cosval = v172.__cosval;
        v98 = v172.__sinval;
        sinval = 0.0;
      }
    }

    v75 = v255;
    v77.i32[0] = v256;
    v95 = v253;
    v82.i32[0] = v254;
    v94 = v251;
    v92 = v252;
    v88.i32[0] = v250;
    goto LABEL_45;
  }

  btMatrix3x3::setRotation(&v270, &this[1].var1);
  v271 = 0u;
  v109 = *(&this->var14.var0.var0[2] + 12);
  v110 = *(&this->var14.var1 + 12);
  v109.i32[3] = 0;
  v110.i32[3] = 0;
  v111 = a2->var0.var0[1];
  v112 = *(this->var15.var0.var0 + 12);
  v113 = *(&this->var15.var0.var0[1] + 12);
  v112.i32[3] = 0;
  v114 = a2->var0.var0[2];
  v115 = vmlaq_lane_f32(vmulq_n_f32(v109, v114.f32[0]), v110, *v114.f32, 1);
  v116 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v109, v111.f32[0]), v110, *v111.f32, 1), v112, v111, 2);
  v117 = vmulq_f32(a2->var0.var0[0], v113);
  v118 = vmulq_f32(v111, v113);
  v119 = vmulq_f32(v114, v113);
  v119.i32[3] = 0;
  v120 = vmlaq_lane_f32(vmulq_n_f32(v109, COERCE_FLOAT(*a2->var0.var0)), v110, *a2->var0.var0[0].var0.var0, 1);
  *v110.f32 = vadd_f32(vpadd_f32(*v117.i8, *v118.i8), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
  *&v110.u32[2] = vpadd_f32(vpadd_f32(*v119.i8, *&vextq_s8(v119, v119, 8uLL)), 0);
  v121 = *(&this->var15.var0.var0[2] + 12);
  v122 = *(&this->var15.var1 + 12);
  v121.i32[3] = 0;
  v122.i32[3] = 0;
  v123 = vmlaq_laneq_f32(v120, v112, a2->var0.var0[0], 2);
  v124 = *&this->var19;
  v125 = *&this->var23;
  v124.i32[3] = 0;
  v126 = a3->var0.var0[1];
  v127 = vmlaq_laneq_f32(v115, v112, v114, 2);
  v128 = a3->var0.var0[2];
  v129 = vmlaq_lane_f32(vmulq_n_f32(v121, v128.f32[0]), v122, *v128.f32, 1);
  v130 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v126.f32[0]), v122, *v126.f32, 1), v124, v126, 2);
  v131 = vmulq_f32(a3->var0.var0[0], v125);
  v132 = vmulq_f32(v126, v125);
  v133 = vmulq_f32(v128, v125);
  v133.i32[3] = 0;
  v134 = vmlaq_lane_f32(vmulq_n_f32(v121, COERCE_FLOAT(*a3->var0.var0)), v122, *a3->var0.var0[0].var0.var0, 1);
  *v131.f32 = vadd_f32(vpadd_f32(*v131.f32, *v132.i8), vzip1_s32(*&vextq_s8(v131, v131, 8uLL), *&vextq_s8(v132, v132, 8uLL)));
  *&v131.u32[2] = vpadd_f32(vpadd_f32(*v133.i8, *&vextq_s8(v133, v133, 8uLL)), 0);
  v135 = v270.var0[0];
  v136 = v270.var0[1];
  v135.i32[3] = 0;
  v137 = vmlaq_laneq_f32(v134, v124, a3->var0.var0[0], 2);
  v136.i32[3] = 0;
  v138 = v270.var0[2];
  v138.i32[3] = 0;
  v139 = vmlaq_laneq_f32(v129, v124, v128, 2);
  v140 = vaddq_f32(a2->var1, v110);
  v141 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v135, v130.f32[0]), v136, *v130.f32, 1), v138, v130, 2);
  v142 = vmulq_f32(v137, 0);
  v143 = vmulq_f32(v130, 0);
  v144 = vmulq_f32(v139, 0);
  v144.i32[3] = 0;
  *v145.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v142, v142, 8uLL), *&vextq_s8(v143, v143, 8uLL)), vpadd_f32(*v142.i8, *v143.i8));
  *&v145.u32[2] = vpadd_f32(vpadd_f32(*v144.i8, *&vextq_s8(v144, v144, 8uLL)), 0);
  v146 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v135, v137.f32[0]), v136, *v137.f32, 1), v138, v137, 2);
  v147 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v135, v139.f32[0]), v136, *v139.f32, 1), v138, v139, 2);
  v148 = vtrn1q_s32(v123, v116);
  *v143.i8 = vzip2_s32(*v127.f32, 0);
  v135.i32[0] = vextq_s8(v127, v127, 8uLL).u32[0];
  v136.i64[0] = v127.u32[0];
  v127.i64[0] = vextq_s8(v148, v148, 8uLL).u64[0];
  v148.i64[1] = v136.i64[0];
  v149 = vnegq_f32(v140);
  v150 = vmulq_f32(v148, v149);
  *v116.f32 = vzip2_s32(*v123.i8, *v116.f32);
  v116.i64[1] = v143.i64[0];
  v151 = vmulq_f32(v116, v149);
  v127.i64[1] = v135.u32[0];
  v152 = vmulq_f32(v127, v149);
  v152.i32[3] = 0;
  v153 = vaddq_f32(a3->var1, v131);
  *v151.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v150, v150, 8uLL), *&vextq_s8(v151, v151, 8uLL)), vpadd_f32(*v150.i8, *v151.f32));
  *&v151.u32[2] = vpadd_f32(vpadd_f32(*v152.i8, *&vextq_s8(v152, v152, 8uLL)), 0);
  v148.i32[3] = 0;
  v116.i32[3] = 0;
  v127.i32[3] = 0;
  v154 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v148, v141.f32[0]), v116, *v141.f32, 1), v127, v141, 2);
  v155 = vmulq_f32(v146, v151);
  v156 = vmulq_f32(v141, v151);
  v157 = vmulq_f32(v147, v151);
  v157.i32[3] = 0;
  *v156.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v155, v155, 8uLL), *&vextq_s8(v156, v156, 8uLL)), vpadd_f32(*v155.i8, *v156.f32));
  *&v156.u32[2] = vpadd_f32(vpadd_f32(*v157.i8, *&vextq_s8(v157, v157, 8uLL)), 0);
  v268.var0[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v148, v146.f32[0]), v116, *v146.f32, 1), v127, v146, 2);
  v268.var0[1] = v154;
  v268.var0[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v148, v147.f32[0]), v116, *v147.f32, 1), v127, v147, 2);
  v269 = vaddq_f32(vaddq_f32(v153, v145), v156);
  btMatrix3x3::getRotation(&v268, &v267);
  v158.i64[0] = *v267.var0.var0;
  v158.i64[1] = LODWORD(v267.var0.var0[2]);
  v159 = vmulq_f32(v158, v158);
  LODWORD(v160) = vadd_f32(vpadd_f32(*v159.i8, *v159.i8), *&vextq_s8(v159, v159, 8uLL)).u32[0];
  if (fabsf(v160) >= 0.00000011921)
  {
    *&this->var29 = vmulq_n_f32(v158, 1.0 / sqrtf(v160));
    v161 = v267.var0.var0[3];
    if (v267.var0.var0[3] < -1.0)
    {
      v161 = -1.0;
    }

    if (v161 > 1.0)
    {
      v161 = 1.0;
    }

    v162 = acosf(v161);
    v163 = v162 + v162;
    this->var40.var0.var0[3] = v163;
    if (fabsf(v163) >= 0.00000011921)
    {
      BYTE2(this->var43.var0.var0[3]) = 1;
    }
  }
}

uint64_t btConeTwistConstraint::getInfo2NonVirtual(uint64_t a1, uint64_t a2, btTransform *a3, btTransform *a4, btMatrix3x3 *a5, btMatrix3x3 *a6)
{
  btConeTwistConstraint::calcAngleInfo2(a1, a3, a4, a5, a6);
  v10 = 0;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  *v11 = 1065353216;
  v13 = *(a2 + 40);
  v11[v13 + 1] = 1065353216;
  v11[2 * v13 + 2] = 1065353216;
  v14 = *(a1 + 416);
  v15 = vmulq_f32(a3->var0.var0[0], v14);
  v16 = vmulq_f32(v14, a3->var0.var0[1]);
  v17 = vmulq_f32(v14, a3->var0.var0[2]);
  v17.i32[3] = 0;
  *v15.f32 = vadd_f32(vpadd_f32(*v15.f32, *v16.i8), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  *&v15.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v65 = v15;
  v18 = v12 + 4 * v13;
  v19 = v12 + 8 * v13;
  v20 = vnegq_f32(v15);
  *v12 = 0;
  *(v12 + 4) = -v20.f32[2];
  *(v12 + 8) = v20.i32[1];
  *(v12 + 12) = 0;
  *v18 = v20.i32[2];
  *(v18 + 4) = 0;
  *(v18 + 8) = -v20.f32[0];
  *(v18 + 12) = 0;
  *v19 = -v20.f32[1];
  *(v19 + 4) = v20.i32[0];
  *(v19 + 8) = 0;
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  *v21 = -1082130432;
  v23 = *(a2 + 40);
  v21[v23 + 1] = -1082130432;
  v21[2 * v23 + 2] = -1082130432;
  v24 = *(a1 + 480);
  v25 = vmulq_f32(a4->var0.var0[0], v24);
  v26 = vmulq_f32(v24, a4->var0.var0[1]);
  v27 = vmulq_f32(v24, a4->var0.var0[2]);
  v27.i32[3] = 0;
  *v25.i8 = vadd_f32(vpadd_f32(*v25.i8, *v26.i8), vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL)));
  *v27.i8 = vpadd_f32(vpadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), 0);
  v28 = v22 + 4 * v23;
  v29 = v22 + 8 * v23;
  *v22 = 0;
  *(v22 + 4) = -*v27.i32;
  *(v22 + 8) = v25.i32[1];
  *(v22 + 12) = 0;
  *v28 = v27.u32[0];
  *(v28 + 8) = -*v25.i32;
  *(v28 + 12) = 0;
  *v29 = -*&v25.i32[1];
  *(v29 + 4) = v25.i32[0];
  v25.i64[1] = v27.i64[0];
  v64 = v25;
  *(v29 + 8) = 0;
  v30 = *(a1 + 688);
  v31 = (a1 + 696);
  if ((v30 & 2) == 0)
  {
    v31 = (a2 + 4);
  }

  v32 = *v31 * *a2;
  v33 = *(a2 + 48);
  v34 = *(a2 + 40);
  v35 = 4 * v34;
  v36 = 12;
  v38 = *(a2 + 64);
  v37 = *(a2 + 72);
  result = 4286578687;
  do
  {
    *(v33 + v10) = v32 * (((*&v64.i32[v36 - 12] + a4->var0.var0[0].var0.var0[v36]) - v65.f32[v36 - 12]) - a3->var0.var0[0].var0.var0[v36]);
    *(v38 + v10) = -8388609;
    *(v37 + v10) = 2139095039;
    if (v30)
    {
      *(*(a2 + 56) + v10) = *(a1 + 692);
    }

    v10 += v35;
    ++v36;
  }

  while (v36 != 15);
  v40 = 3 * v34;
  if (*(a1 + 594) == 1)
  {
    v41 = *(a2 + 16);
    v42 = *(a2 + 32);
    v43 = *(a1 + 524);
    if (*(a1 + 512) >= v43 || *(a1 + 516) >= v43)
    {
      v56 = vmulq_n_f32(vmulq_n_f32(*(a1 + 528), *(a1 + 504)), *(a1 + 504));
      *(v41 + 4 * v40) = v56.i32[0];
      result = 12 * v34 + 4;
      *(v41 + result) = v56.i32[1];
      v57 = 4 * v40 + 8;
      *(v41 + v57) = v56.i32[2];
      *(v42 + 4 * v40) = -v56.f32[0];
      *(v42 + result) = -v56.f32[1];
      *(v42 + v57) = -v56.f32[2];
      *(v33 + 4 * v40) = (*a2 * *(a1 + 500)) * *(a1 + 572);
      if ((v30 & 4) != 0)
      {
        *(*(a2 + 56) + 4 * v40) = *(a1 + 700);
      }

      *(v38 + 4 * v40) = 0;
      if (*(a1 + 624) != 1 || (v58 = *(a1 + 656), v58 < 0.0))
      {
        v58 = 3.4028e38;
      }

      *(v37 + 4 * v40) = v58;
      v40 = 4 * v34;
    }

    else
    {
      v44 = *(a1 + 368);
      v45 = *(a1 + 384);
      v44.i32[3] = 0;
      v45.i32[3] = 0;
      v46 = *(a1 + 400);
      v46.i32[3] = 0;
      v47 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*&a3->var0.var0[1])), v45, *a3->var0.var0[1].var0.var0, 1), v46, a3->var0.var0[1], 2);
      v48 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*a3->var0.var0)), v45, *a3->var0.var0[0].var0.var0, 1), v46, a3->var0.var0[0], 2);
      v49 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*&a3->var0.var0[2])), v45, *a3->var0.var0[2].var0.var0, 1), v46, a3->var0.var0[2], 2);
      v46.i64[0] = __PAIR64__(v47.u32[1], v48.u32[1]);
      v46.i64[1] = v49.u32[1];
      v44.i64[0] = __PAIR64__(v47.u32[2], v48.u32[2]);
      v44.i64[1] = v49.u32[2];
      v50 = 4 * v40;
      *(v41 + v50) = vzip2_s32(*v48.i8, *v47.i8);
      v50 += 8;
      *(v41 + v50) = v49.i32[1];
      v51 = 16 * v34;
      *(v41 + 16 * v34) = v48.i32[2];
      *(v41 + 4 * v35 + 4) = v47.i32[2];
      v52 = (16 * (v35 >> 2)) | 8;
      *(v41 + v52) = v49.i32[2];
      v53 = (v42 + 4 * v40);
      *v53 = -*&v48.i32[1];
      v53[1] = -*&v47.i32[1];
      *(v42 + v50) = -v49.f32[1];
      *(v42 + v51) = vneg_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v47, v47, 8uLL)));
      *(v42 + v52) = -v49.f32[2];
      *v47.i32 = *a2 * *(a1 + 504);
      v54 = vmulq_f32(v46, *(a1 + 528));
      *(v33 + 4 * v40) = *v47.i32 * vadd_f32(vpadd_f32(*v54.i8, *v54.i8), *&vextq_s8(v54, v54, 8uLL)).f32[0];
      v55 = vmulq_f32(v44, *(a1 + 528));
      *(v33 + v51) = *v47.i32 * vadd_f32(vpadd_f32(*v55.i8, *v55.i8), *&vextq_s8(v55, v55, 8uLL)).f32[0];
      v38 = *(a2 + 64);
      v37 = *(a2 + 72);
      *(v38 + 4 * v40) = -8388609;
      *(v37 + 4 * v40) = 2139095039;
      *(v38 + v51) = -8388609;
      *(v37 + v51) = 2139095039;
      v40 = 5 * v34;
    }
  }

  if (*(a1 + 593) == 1)
  {
    v59 = vmulq_n_f32(vmulq_n_f32(*(a1 + 544), *(a1 + 504)), *(a1 + 504));
    v60 = *(a2 + 16);
    v61 = *(a2 + 32);
    v62 = 4 * v40;
    *(v60 + v62) = v59.i64[0];
    v62 += 8;
    *(v60 + v62) = v59.i32[2];
    v63 = (v61 + 4 * v40);
    *v63 = -v59.f32[0];
    v63[1] = -v59.f32[1];
    *(v61 + v62) = -v59.f32[2];
    *(*(a2 + 48) + 4 * v40) = (*a2 * *(a1 + 500)) * *(a1 + 576);
    if ((v30 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v40) = *(a1 + 700);
    }

    if (*(a1 + 520) <= 0.0)
    {
      *(v38 + 4 * v40) = -8388609;
      goto LABEL_24;
    }

    if (*(a1 + 576) > 0.0)
    {
      *(v38 + 4 * v40) = 0;
LABEL_24:
      *(v37 + 4 * v40) = 2139095039;
      return result;
    }

    *(v38 + 4 * v40) = -8388609;
    *(v37 + 4 * v40) = 0;
  }

  return result;
}

void btConeTwistConstraint::buildJacobian(btConeTwistConstraint *this)
{
  v66 = *MEMORY[0x277D85DE8];
  if (HIBYTE(this->var43.var0.var0[3]) == 1)
  {
    this->var10 = 0.0;
    *&this->var43.var0.var0[1] = 0;
    *&this[1].var8 = 0u;
    if ((LOBYTE(this->var43.var0.var0[3]) & 1) == 0)
    {
      var8 = this->var8;
      var9 = this->var9;
      v4 = *(&this->var15.var0.var0[1] + 12);
      v5 = vmulq_f32(*(var8 + 1), v4);
      v6 = vmulq_f32(v4, *(var8 + 2));
      v7 = vmulq_f32(v4, *(var8 + 3));
      v7.i32[3] = 0;
      *v5.f32 = vadd_f32(vpadd_f32(*v5.f32, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
      *&v5.u32[2] = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
      v8 = vaddq_f32(v5, *(var8 + 4));
      v9 = *&this->var23;
      v10 = vmulq_f32(*(var9 + 1), v9);
      v11 = vmulq_f32(v9, *(var9 + 2));
      v12 = vmulq_f32(v9, *(var9 + 3));
      v12.i32[3] = 0;
      *v10.f32 = vadd_f32(vpadd_f32(*v10.f32, *v11.i8), vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v11, v11, 8uLL)));
      *&v10.u32[2] = vpadd_f32(vpadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)), 0);
      v13 = vaddq_f32(v10, *(var9 + 4));
      v14 = vsubq_f32(v13, v8);
      v14.i32[3] = 0;
      v15 = vmulq_f32(v14, v14);
      v16 = vadd_f32(*&vextq_s8(v15, v15, 8uLL), vpadd_f32(*v15.i8, *v15.i8)).f32[0];
      if (v16 <= 0.00000011921)
      {
        v59 = xmmword_21C27F910;
        v18 = 0;
        v17.i32[0] = 1.0;
      }

      else
      {
        v17 = vmulq_n_f32(v14, 1.0 / sqrtf(v16));
        v59 = v17;
        v18 = vextq_s8(v17, v17, 4uLL).u64[0];
      }

      v19 = 0;
      v20 = fabsf(v18.f32[1]) <= 0.70711;
      v21 = vmul_f32(v18, v18).f32[0] + (*v17.i32 * *v17.i32);
      v22 = 1.0 / sqrtf(v21);
      v23 = -(v18.f32[0] * v22);
      v24 = *v17.i32 * v22;
      v25 = -(v18.f32[1] * (*v17.i32 * v22));
      v26 = v18.f32[1] * v23;
      v27 = v21 * v22;
      v28 = (v18.f32[1] * v18.f32[1]) + (v18.f32[0] * v18.f32[0]);
      v29 = sqrtf(v28);
      v30 = -(v18.f32[1] * (1.0 / v29));
      v31 = (1.0 / v29) * v18.f32[0];
      v32 = v28 * (1.0 / v29);
      v33 = -(*v17.i32 * v31);
      v34 = v30 * *v17.i32;
      if (v20)
      {
        v30 = v24;
        v31 = 0.0;
      }

      else
      {
        v23 = 0.0;
      }

      if (v20)
      {
        v35 = v25;
      }

      else
      {
        v35 = v32;
      }

      if (v20)
      {
        v36 = v26;
      }

      else
      {
        v36 = v33;
      }

      v60 = v23;
      v61 = v30;
      if (v20)
      {
        v34 = v27;
      }

      v62 = v31;
      v63 = v35;
      v64 = v36;
      v65 = v34;
      v37 = &this->var13[0].var0.var0.var0[2];
      v53 = v13;
      v54 = v8;
      do
      {
        v38 = this->var8;
        v39 = this->var9;
        v40 = *(v38 + 1);
        v41 = *(v38 + 2);
        v42 = vtrn1q_s32(v40, v41);
        v43 = *(v38 + 3);
        v44 = *(v38 + 4);
        *v40.i8 = vzip2_s32(*v40.i8, *v41.i8);
        v41.i64[0] = vextq_s8(v42, v42, 8uLL).u64[0];
        v42.i64[1] = v43.u32[0];
        v40.u64[1] = vzip2_s32(*v43.i8, 0);
        v41.i64[1] = vextq_s8(v43, v43, 8uLL).u32[0];
        v58.var0[0] = v42;
        v58.var0[1] = v40;
        v58.var0[2] = v41;
        v45 = *(v39 + 1);
        v46 = *(v39 + 2);
        v47 = vtrn1q_s32(v45, v46);
        v48 = *(v39 + 3);
        v49 = *(v39 + 4);
        *v45.i8 = vzip2_s32(*v45.i8, *v46.i8);
        v46.i64[0] = vextq_s8(v47, v47, 8uLL).u64[0];
        v47.i64[1] = v48.u32[0];
        v45.u64[1] = vzip2_s32(*v48.i8, 0);
        v46.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
        v57.var0[0] = v47;
        v57.var0[1] = v45;
        v57.var0[2] = v46;
        v50 = vsubq_f32(v8, v44);
        v50.var0.var0[3] = 0.0;
        v56 = v50;
        v51 = vsubq_f32(v13, v49);
        v51.var0.var0[3] = 0.0;
        v55 = v51;
        btJacobianEntry::btJacobianEntry(v37, &v58, &v57, &v56, &v55, (&v59 + v19), v38 + 28, *(v38 + 96), v39 + 28, *(v39 + 96));
        v13 = v53;
        v8 = v54;
        v19 += 16;
        v37 = (v52 + 96);
      }

      while (v19 != 48);
    }

    btConeTwistConstraint::calcAngleInfo2(this, (this->var8 + 16), (this->var9 + 16), (this->var8 + 304), (this->var9 + 304));
  }
}

void btConeTwistConstraint::solveConstraintObsolete(btConeTwistConstraint *this, float32x4_t *a2, float32x4_t *a3, float a4, uint64_t a5, btTransform *a6)
{
  if (HIBYTE(this->var43.var0.var0[3]) != 1)
  {
    return;
  }

  *v302.var0.var0[1].var0.var0 = v9;
  *&v302.var0.var0[1].var0.var0[2] = v8;
  v303 = v6;
  v304 = v7;
  if ((LOBYTE(this->var43.var0.var0[3]) & 1) == 0)
  {
    v14 = *&this->var23;
    v16 = this->var8;
    var9 = this->var9;
    v17 = vmulq_f32(*(var9 + 1), v14);
    v18 = vmulq_f32(v14, *(var9 + 2));
    *v17.f32 = vadd_f32(vpadd_f32(*v17.f32, *v18.i8), vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)));
    v19 = *(var9 + 4);
    v20 = vmulq_f32(v14, *(var9 + 3));
    v20.i32[3] = 0;
    *&v17.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
    v21 = vaddq_f32(v17, v19);
    v22 = *(&this->var15.var0.var0[1] + 12);
    v23 = vmulq_f32(*(v16 + 1), v22);
    v24 = vmulq_f32(v22, *(v16 + 2));
    *v23.f32 = vadd_f32(vpadd_f32(*v23.f32, *v24.i8), vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)));
    v25 = *(v16 + 4);
    v26 = vmulq_f32(v22, *(v16 + 3));
    v26.i32[3] = 0;
    *&v23.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
    v27 = vaddq_f32(v23, v25);
    v28 = vsubq_f32(v27, v25);
    v28.i32[3] = 0;
    v29 = vsubq_f32(v21, v19);
    v29.i32[3] = 0;
    v30 = vaddq_f32(a2[12], a2[5]);
    v31 = vextq_s8(vextq_s8(v28, v28, 0xCuLL), v28, 8uLL);
    v32 = vsubq_f32(vmulq_f32(v31, v30), vmulq_f32(vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL), v28));
    v33 = vaddq_f32(vaddq_f32(a2[11], a2[4]), vextq_s8(vextq_s8(v32, v32, 0xCuLL), v32, 8uLL));
    v34 = vaddq_f32(a3[12], a3[5]);
    v35 = vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL);
    v36 = vsubq_f32(vmulq_f32(v35, v34), vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v29));
    v37 = vsubq_f32(v33, vaddq_f32(vaddq_f32(a3[11], a3[4]), vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL)));
    v37.i32[3] = 0;
    v38 = &this->var13[0].var0.var0.var0[2];
    v39 = vsubq_f32(v27, v21);
    v39.i32[3] = 0;
    v40 = 3;
    do
    {
      v41 = *v38;
      v42 = vmulq_f32(*v38, v37);
      v43 = vmulq_f32(*v38, v39);
      v44 = (((-0.3 * vadd_f32(vpadd_f32(*v43.i8, *v43.i8), *&vextq_s8(v43, v43, 8uLL)).f32[0]) / a4) * (1.0 / v38[5].f32[0])) - (vadd_f32(vpadd_f32(*v42.i8, *v42.i8), *&vextq_s8(v42, v42, 8uLL)).f32[0] * (1.0 / v38[5].f32[0]));
      this->var10 = this->var10 + v44;
      v45 = vextq_s8(vextq_s8(v41, v41, 0xCuLL), v41, 8uLL);
      if (a2[13].i64[0])
      {
        v46 = this->var8;
        v47 = vsubq_f32(vmulq_f32(v45, v28), vmulq_f32(v31, v41));
        v48 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
        v49 = vmulq_f32(*(v46 + 21), v48);
        v48.i32[3] = 0;
        v50 = vmulq_f32(*(v46 + 19), v48);
        v51 = vmulq_f32(*(v46 + 20), v48);
        v49.i32[3] = 0;
        *v51.f32 = vadd_f32(vpadd_f32(*v50.i8, *v51.f32), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
        *&v51.u32[2] = vpadd_f32(vpadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)), 0);
        v52 = vmulq_n_f32(vmulq_n_f32(v41, *(v46 + 96)), v44);
        v52.i32[3] = 0;
        v53 = vmulq_n_f32(a2[6], v44);
        v53.i32[3] = 0;
        v54 = vaddq_f32(a2[5], vmulq_f32(v51, v53));
        a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v52));
        a2[5] = v54;
      }

      if (a3[13].i64[0])
      {
        v55 = vsubq_f32(vmulq_f32(v45, v29), vmulq_f32(v35, v41));
        v56 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
        v56.i32[3] = 0;
        v57 = -v44;
        v58 = this->var9;
        v59 = vmulq_f32(*(v58 + 19), v56);
        v60 = vmulq_f32(*(v58 + 20), v56);
        *v59.f32 = vadd_f32(vpadd_f32(*v59.f32, *v60.i8), vzip1_s32(*&vextq_s8(v59, v59, 8uLL), *&vextq_s8(v60, v60, 8uLL)));
        v61 = vmulq_f32(*(v58 + 21), v56);
        v61.i32[3] = 0;
        *&v59.u32[2] = vpadd_f32(vpadd_f32(*v61.i8, *&vextq_s8(v61, v61, 8uLL)), 0);
        v62 = vmulq_n_f32(vmulq_n_f32(*v38, *(v58 + 96)), v57);
        v62.i32[3] = 0;
        v63 = vmulq_n_f32(a3[6], v57);
        v63.i32[3] = 0;
        v64 = vaddq_f32(a3[5], vmulq_f32(v59, v63));
        a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v62));
        a3[5] = v64;
      }

      v38 += 6;
      --v40;
    }

    while (v40);
  }

  if (LOBYTE(this->var48) == 1)
  {
    v65 = this->var8;
    v66 = this->var9;
    v67 = *(v65 + 2);
    v68 = *(v65 + 3);
    v69 = *(v65 + 4);
    v299[0] = *(v65 + 1);
    v299[1] = v67;
    v299[2] = v68;
    v300 = v69;
    v70 = *(v66 + 2);
    v297[0] = *(v66 + 1);
    v297[1] = v70;
    v71 = *(v66 + 4);
    v297[2] = *(v66 + 3);
    v298 = v71;
    v72 = vaddq_f32(a2[12], a2[5]);
    v295 = vaddq_f32(a3[12], a3[5]);
    v296 = v72;
    v293.var0.var0[1] = xmmword_21C27F910;
    v293.var0.var0[2] = xmmword_21C27F8C0;
    v293.var1 = xmmword_21C27F600;
    v294 = 0uLL;
    v293.var0.var0[0] = 0uLL;
    btTransformUtil::integrateTransform(v299, &v293, &v296, &v293.var0.var0[1], a4, a6);
    v291.var0[0] = xmmword_21C27F910;
    v291.var0[1] = xmmword_21C27F8C0;
    v291.var0[2] = xmmword_21C27F600;
    v292 = 0uLL;
    btTransformUtil::integrateTransform(v297, &v293, &v295, &v291, a4, v73);
    btMatrix3x3::setRotation(&v289, &this[1].var1);
    v290 = 0u;
    v75 = *(&this->var15.var0.var0[2] + 12);
    v74 = *(&this->var15.var1 + 12);
    v76 = v289.var0[0];
    v77 = v289.var0[1];
    v76.i32[3] = 0;
    v77.i32[3] = 0;
    v78 = v289.var0[2];
    v78.i32[3] = 0;
    v79 = *&this->var19;
    v80 = vmlaq_lane_f32(vmulq_n_f32(v76, v79.f32[0]), v77, *v79.f32, 1);
    v81 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v74.f32[0]), v77, *v74.f32, 1), v78, v74, 2);
    v82 = vmulq_f32(v75, 0);
    v83 = vmulq_f32(v74, 0);
    v84 = vmulq_f32(v79, 0);
    v85 = vextq_s8(v83, v83, 8uLL).u64[0];
    v84.i32[3] = 0;
    v86 = vpadd_f32(*v82.i8, *v83.i8);
    v87 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v75.f32[0]), v77, *v75.f32, 1), v78, v75, 2);
    *v75.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v82, v82, 8uLL), v85), v86);
    *&v75.u32[2] = vpadd_f32(vpadd_f32(*v84.i8, *&vextq_s8(v84, v84, 8uLL)), 0);
    v88 = *(&this->var14.var0.var0[2] + 12);
    v89 = *(&this->var14.var1 + 12);
    v90 = *(this->var15.var0.var0 + 12);
    v91 = vtrn1q_s32(v88, v89);
    v92 = vzip2_s32(*v90.f32, 0);
    v93 = vextq_s8(v90, v90, 8uLL).u32[0];
    v90.i64[0] = vextq_s8(v91, v91, 8uLL).u64[0];
    v91.i64[1] = *(this->var15.var0.var0 + 12);
    v94.i64[0] = 0x8000000080000000;
    v94.i64[1] = 0x8000000080000000;
    v95 = veorq_s8(*(&this->var15.var0.var0[1] + 12), v94);
    v96 = vmulq_f32(v91, v95);
    *v88.f32 = vzip2_s32(*v88.f32, *v89.i8);
    *&v88.u32[2] = v92;
    v97 = vmulq_f32(v88, v95);
    v90.i64[1] = v93;
    v98 = vmulq_f32(v90, v95);
    v98.i32[3] = 0;
    *v97.f32 = vadd_f32(vpadd_f32(*v96.i8, *v97.f32), vzip1_s32(*&vextq_s8(v96, v96, 8uLL), *&vextq_s8(v97, v97, 8uLL)));
    *&v97.u32[2] = vpadd_f32(vpadd_f32(*v98.i8, *&vextq_s8(v98, v98, 8uLL)), 0);
    v91.i32[3] = 0;
    v88.i32[3] = 0;
    v90.i32[3] = 0;
    v99 = vmlaq_laneq_f32(v80, v78, v79, 2);
    v100 = vmlaq_lane_f32(vmulq_n_f32(v91, v99.f32[0]), v88, *v99.f32, 1);
    v101 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v91, v81.f32[0]), v88, *v81.f32, 1), v90, v81, 2);
    v102 = vmulq_f32(v87, v97);
    v103 = vmulq_f32(v81, v97);
    v104 = vmulq_f32(v99, v97);
    v104.i32[3] = 0;
    *v103.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v102, v102, 8uLL), *&vextq_s8(v103, v103, 8uLL)), vpadd_f32(*v102.i8, *v103.f32));
    *&v103.u32[2] = vpadd_f32(vpadd_f32(*v104.i8, *&vextq_s8(v104, v104, 8uLL)), 0);
    v105 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v91, v87.f32[0]), v88, *v87.f32, 1), v90, v87, 2);
    v106 = vmlaq_laneq_f32(v100, v90, v99, 2);
    v107 = vtrn1q_s32(v105, v101);
    *v108.f32 = vzip2_s32(*v105.f32, *v101.f32);
    v105.i32[3] = 0;
    v101.i32[3] = 0;
    v88.i64[0] = v106.u32[0];
    *v104.i8 = vzip2_s32(*v106.f32, 0);
    v102.i32[0] = vextq_s8(v106, v106, 8uLL).u32[0];
    v106.i32[3] = 0;
    v109 = vaddq_f32(vaddq_f32(v75, *&this->var23), v103);
    v110 = vmulq_f32(v109, v291.var0[2]);
    v110.i32[3] = 0;
    v111 = vmlaq_lane_f32(vmulq_n_f32(v105, v291.var0[2].var0.var0[0]), v101, *v291.var0[2].var0.var0, 1);
    v112 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v291.var0[1].var0.var0[0]), v101, *v291.var0[1].var0.var0, 1), v106, v291.var0[1], 2);
    v113 = vmlaq_lane_f32(vmulq_n_f32(v105, v291.var0[0].var0.var0[0]), v101, *v291.var0[0].var0.var0, 1);
    v114 = vmulq_f32(v109, v291.var0[0]);
    v115 = vmulq_f32(v109, v291.var0[1]);
    *v99.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v114, v114, 8uLL), *&vextq_s8(v115, v115, 8uLL)), vpadd_f32(*v114.i8, *v115.i8));
    *&v99.u32[2] = vpadd_f32(vpadd_f32(*v110.i8, *&vextq_s8(v110, v110, 8uLL)), 0);
    v288.var0.var0[0] = vmlaq_laneq_f32(v113, v106, v291.var0[0], 2);
    v288.var0.var0[1] = v112;
    v288.var0.var0[2] = vmlaq_laneq_f32(v111, v106, v291.var0[2], 2);
    v288.var1 = vaddq_f32(v99, v292);
    v103.i64[0] = vextq_s8(v107, v107, 8uLL).u64[0];
    v106.i64[0] = v107.i64[0];
    v106.i64[1] = v88.i64[0];
    v116 = vnegq_f32(v109);
    v117 = vmulq_f32(v106, v116);
    v108.i64[1] = v104.i64[0];
    v118 = vmulq_f32(v108, v116);
    v103.i64[1] = v102.u32[0];
    v119 = vmulq_f32(v103, v116);
    v119.i32[3] = 0;
    *v117.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)), vpadd_f32(*v117.f32, *v118.i8));
    *&v117.u32[2] = vpadd_f32(vpadd_f32(*v119.i8, *&vextq_s8(v119, v119, 8uLL)), 0);
    v106.i32[3] = 0;
    v108.i32[3] = 0;
    v103.i32[3] = 0;
    v120 = vmlaq_lane_f32(vmulq_n_f32(v106, v293.var1.var0.var0[0]), v108, *v293.var1.var0.var0, 1);
    v121 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, v293.var0.var0[2].var0.var0[0]), v108, *v293.var0.var0[2].var0.var0, 1), v103, v293.var0.var0[2], 2);
    v122 = vmulq_f32(v293.var0.var0[1], v117);
    v123 = vmulq_f32(v117, v293.var0.var0[2]);
    v124 = vmulq_f32(v117, v293.var1);
    v124.i32[3] = 0;
    v125 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, v293.var0.var0[1].var0.var0[0]), v108, *v293.var0.var0[1].var0.var0, 1), v103, v293.var0.var0[1], 2);
    *v108.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v122, v122, 8uLL), *&vextq_s8(v123, v123, 8uLL)), vpadd_f32(*v122.i8, *v123.i8));
    *&v108.u32[2] = vpadd_f32(vpadd_f32(*v124.i8, *&vextq_s8(v124, v124, 8uLL)), 0);
    v287.var0.var0[0] = v125;
    v287.var0.var0[1] = v121;
    v287.var0.var0[2] = vmlaq_laneq_f32(v120, v103, v293.var1, 2);
    v287.var1 = vaddq_f32(v108, v294);
    v126 = vmulq_n_f32(vsubq_f32(v288.var1, v300), 1.0 / a4);
    v126.i32[3] = 0;
    v293.var0.var0[0] = v126;
    v301 = 0.0;
    btTransformUtil::calculateDiffAxisAngle(v299, &v288, &v302, &v301, v127);
    v286 = vmulq_n_f32(vmulq_n_f32(v302.var0.var0[0], v301), 1.0 / a4);
    v128 = vmulq_n_f32(vsubq_f32(v287.var1, v298), 1.0 / a4);
    v128.i32[3] = 0;
    v293.var0.var0[0] = v128;
    v301 = 0.0;
    btTransformUtil::calculateDiffAxisAngle(v297, &v287, &v302, &v301, v129);
    v130 = vsubq_f32(v286, v296);
    v130.i32[3] = 0;
    v131 = vsubq_f32(vmulq_n_f32(vmulq_n_f32(v302.var0.var0[0], v301), 1.0 / a4), v295);
    v131.i32[3] = 0;
    v132 = vmulq_f32(v130, v130);
    v133 = vpadd_f32(*v132.i8, *v132.i8);
    v136 = vextq_s8(v132, v132, 8uLL);
    v134 = vadd_f32(v133, *v136.f32).f32[0];
    v135 = 0.0;
    v136.i64[0] = 0x3400000034000000;
    v137 = 0.0;
    if (v134 > 0.00000011921)
    {
      v136 = vmulq_n_f32(v130, 1.0 / sqrtf(v134));
      v138 = this->var8;
      v139 = *(v138 + 19);
      v140 = *(v138 + 20);
      v139.i32[3] = 0;
      v140.i32[3] = 0;
      v141 = *(v138 + 21);
      v141.i32[3] = 0;
      v142 = vmulq_f32(v136, vaddq_f32(vaddq_f32(vmulq_n_f32(v139, v136.f32[0]), vmulq_lane_f32(v140, *v136.f32, 1)), vmulq_laneq_f32(v141, v136, 2)));
      LODWORD(v137) = vadd_f32(vpadd_f32(*v142.i8, *v142.i8), *&vextq_s8(v142, v142, 8uLL)).u32[0];
    }

    v143 = vmulq_f32(v131, v131);
    v144 = vpadd_f32(*v143.i8, *v143.i8);
    v146 = vextq_s8(v143, v143, 8uLL);
    v145 = vadd_f32(*v146.f32, v144).f32[0];
    v146.i64[0] = 0x3400000034000000;
    if (v145 > 0.00000011921)
    {
      v146 = vmulq_n_f32(v131, 1.0 / sqrtf(v145));
      v147 = this->var9;
      v148 = *(v147 + 19);
      v149 = *(v147 + 20);
      v148.i32[3] = 0;
      v149.i32[3] = 0;
      v150 = *(v147 + 21);
      v150.i32[3] = 0;
      v151 = vmulq_f32(v146, vaddq_f32(vaddq_f32(vmulq_n_f32(v148, v146.f32[0]), vmulq_lane_f32(v149, *v146.f32, 1)), vmulq_laneq_f32(v150, v146, 2)));
      LODWORD(v135) = vadd_f32(vpadd_f32(*v151.i8, *v151.i8), *&vextq_s8(v151, v151, 8uLL)).u32[0];
    }

    v152 = vmulq_n_f32(v136, v137);
    v152.i32[3] = 0;
    v153 = vmulq_n_f32(v146, v135);
    v153.i32[3] = 0;
    v154 = vaddq_f32(v152, v153);
    v155 = vmulq_f32(v154, v154);
    v156 = vadd_f32(vpadd_f32(*v155.i8, *v155.i8), *&vextq_s8(v155, v155, 8uLL)).f32[0];
    if (v156 <= 0.00000011921)
    {
      goto LABEL_32;
    }

    v157 = this->var8;
    v158 = this->var9;
    v159 = *(v157 + 19);
    v160 = *(v157 + 20);
    v159.i32[3] = 0;
    v160.i32[3] = 0;
    v161 = vmulq_n_f32(v154, 1.0 / sqrtf(v156));
    v162 = *(v157 + 21);
    v162.i32[3] = 0;
    v163 = vmulq_f32(v161, vaddq_f32(vaddq_f32(vmulq_n_f32(v159, v161.f32[0]), vmulq_lane_f32(v160, *v161.f32, 1)), vmulq_laneq_f32(v162, v161, 2)));
    v164 = *(v158 + 19);
    v165 = *(v158 + 20);
    v164.i32[3] = 0;
    v165.i32[3] = 0;
    v166 = vadd_f32(vpadd_f32(*v163.i8, *v163.i8), *&vextq_s8(v163, v163, 8uLL));
    v167 = *(v158 + 21);
    v167.i32[3] = 0;
    v168 = vmulq_f32(v161, vaddq_f32(vaddq_f32(vmulq_n_f32(v164, v161.f32[0]), vmulq_lane_f32(v165, *v161.f32, 1)), vmulq_laneq_f32(v167, v161, 2)));
    *v168.i8 = vadd_f32(vpadd_f32(*v168.i8, *v168.i8), *&vextq_s8(v168, v168, 8uLL));
    *v167.f32 = vadd_f32(v166, *v168.i8);
    v169 = vmulq_n_f32(vsubq_f32(vmulq_n_f32(v130, v166.f32[0]), vmulq_n_f32(v131, *v168.i32)), 1.0 / vmul_f32(*v167.f32, *v167.f32).f32[0]);
    v169.i32[3] = 0;
    var4 = this[1].var4;
    if (var4 >= 0.0)
    {
      if (!BYTE1(this->var48))
      {
        v166.f32[0] = 1.0;
      }

      v171 = var4 / v166.f32[0];
      v172 = *&this[1].var8;
      v173 = vaddq_f32(v172, v169);
      v174 = vmulq_f32(v173, v173);
      v175 = sqrtf(vadd_f32(vpadd_f32(*v174.i8, *v174.i8), *&vextq_s8(v174, v174, 8uLL)).f32[0]);
      if (v175 > v171)
      {
        v169 = vsubq_f32(vmulq_n_f32(vmulq_n_f32(v173, 1.0 / v175), v171), v172);
        v169.i32[3] = 0;
        v173 = vaddq_f32(v172, v169);
      }

      *&this[1].var8 = v173;
    }

    v176 = vmulq_f32(v169, v169);
    v177 = sqrtf(vadd_f32(vpadd_f32(*v176.i8, *v176.i8), *&vextq_s8(v176, v176, 8uLL)).f32[0]);
    v178 = vmulq_n_f32(v169, 1.0 / v177);
    v178.i32[3] = 0;
    if (a2[13].i64[0])
    {
      v179 = vmulq_f32(*(v157 + 19), v178);
      v180 = vmulq_f32(*(v157 + 20), v178);
      *v179.f32 = vadd_f32(vpadd_f32(*v179.f32, *v180.i8), vzip1_s32(*&vextq_s8(v179, v179, 8uLL), *&vextq_s8(v180, v180, 8uLL)));
      v181 = vmulq_f32(*(v157 + 21), v178);
      v181.i32[3] = 0;
      *&v179.u32[2] = vpadd_f32(vpadd_f32(*v181.i8, *&vextq_s8(v181, v181, 8uLL)), 0);
      v182 = vmulq_n_f32(0, v177);
      v182.i32[3] = 0;
      v183 = vmulq_n_f32(a2[6], v177);
      v183.i32[3] = 0;
      v184 = vaddq_f32(a2[5], vmulq_f32(v179, v183));
      a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v182));
      a2[5] = v184;
    }

    if (!a3[13].i64[0])
    {
      goto LABEL_32;
    }

    v185 = this->var9;
    v186 = vmulq_f32(*(v185 + 19), v178);
    v187 = vmulq_f32(*(v185 + 20), v178);
    *v186.f32 = vadd_f32(vpadd_f32(*v186.f32, *v187.i8), vzip1_s32(*&vextq_s8(v186, v186, 8uLL), *&vextq_s8(v187, v187, 8uLL)));
    v188 = vmulq_f32(*(v185 + 21), v178);
    v188.i32[3] = 0;
    *&v186.u32[2] = vpadd_f32(vpadd_f32(*v188.i8, *&vextq_s8(v188, v188, 8uLL)), 0);
    v189 = -v177;
    v190 = vmulq_n_f32(0, v189);
    v190.i32[3] = 0;
    v191 = vmulq_n_f32(a3[6], v189);
    v191.i32[3] = 0;
    v192 = vaddq_f32(a3[5], vmulq_f32(v186, v191));
    a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v190));
  }

  else
  {
    v193 = this->var25.var0.var0[2];
    if (v193 <= 0.00000011921)
    {
      goto LABEL_32;
    }

    v194 = a2[5];
    v195 = vsubq_f32(vaddq_f32(a3[12], a3[5]), vaddq_f32(a2[12], v194));
    v195.i32[3] = 0;
    v196 = vmulq_f32(v195, v195);
    v197 = vadd_f32(vpadd_f32(*v196.i8, *v196.i8), *&vextq_s8(v196, v196, 8uLL)).f32[0];
    if (v197 <= 0.00000011921)
    {
      goto LABEL_32;
    }

    v198 = this->var8;
    v199 = this->var9;
    v200 = *(v198 + 19);
    v200.i32[3] = 0;
    v201 = *(v198 + 20);
    v201.i32[3] = 0;
    v202 = vmulq_n_f32(v195, 1.0 / sqrtf(v197));
    v203 = *(v198 + 21);
    v203.i32[3] = 0;
    v204 = vmulq_f32(v202, vaddq_f32(vaddq_f32(vmulq_n_f32(v200, v202.f32[0]), vmulq_lane_f32(v201, *v202.f32, 1)), vmulq_laneq_f32(v203, v202, 2)));
    v205 = *(v199 + 19);
    v206 = *(v199 + 20);
    v205.i32[3] = 0;
    v206.i32[3] = 0;
    v207 = *(v199 + 21);
    v207.i32[3] = 0;
    v208 = vmulq_f32(v202, vaddq_f32(vaddq_f32(vmulq_n_f32(v205, v202.f32[0]), vmulq_lane_f32(v206, *v202.f32, 1)), vmulq_laneq_f32(v207, v202, 2)));
    v209 = vmulq_n_f32(v195, v193 * (1.0 / vadd_f32(vadd_f32(vpadd_f32(*v204.i8, *v204.i8), *&vextq_s8(v204, v204, 8uLL)), vadd_f32(vpadd_f32(*v208.i8, *v208.i8), *&vextq_s8(v208, v208, 8uLL))).f32[0]));
    v210 = v209;
    v210.i32[3] = 0;
    v211 = vmulq_f32(v210, v210);
    v212 = sqrtf(vadd_f32(vpadd_f32(*v211.i8, *v211.i8), *&vextq_s8(v211, v211, 8uLL)).f32[0]);
    v213 = vmulq_n_f32(v209, 1.0 / v212);
    v213.i32[3] = 0;
    if (a2[13].i64[0])
    {
      v214 = vmulq_f32(*(v198 + 19), v213);
      v215 = vmulq_f32(*(v198 + 20), v213);
      *v215.f32 = vadd_f32(vpadd_f32(*v214.i8, *v215.f32), vzip1_s32(*&vextq_s8(v214, v214, 8uLL), *&vextq_s8(v215, v215, 8uLL)));
      v216 = vmulq_f32(*(v198 + 21), v213);
      v216.i32[3] = 0;
      *&v215.u32[2] = vpadd_f32(vpadd_f32(*v216.i8, *&vextq_s8(v216, v216, 8uLL)), 0);
      v217 = vmulq_n_f32(0, v212);
      v217.i32[3] = 0;
      v218 = vmulq_n_f32(a2[6], v212);
      v218.i32[3] = 0;
      a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v217));
      a2[5] = vaddq_f32(v194, vmulq_f32(v215, v218));
    }

    if (!a3[13].i64[0])
    {
      goto LABEL_32;
    }

    v219 = this->var9;
    v220 = vmulq_f32(*(v219 + 19), v213);
    v221 = vmulq_f32(*(v219 + 20), v213);
    *v220.f32 = vadd_f32(vpadd_f32(*v220.f32, *v221.i8), vzip1_s32(*&vextq_s8(v220, v220, 8uLL), *&vextq_s8(v221, v221, 8uLL)));
    v222 = vmulq_f32(*(v219 + 21), v213);
    v222.i32[3] = 0;
    *&v220.u32[2] = vpadd_f32(vpadd_f32(*v222.i8, *&vextq_s8(v222, v222, 8uLL)), 0);
    v223 = -v212;
    v224 = vmulq_n_f32(0, v223);
    v224.i32[3] = 0;
    v225 = vmulq_n_f32(a3[6], v223);
    v225.i32[3] = 0;
    v192 = vaddq_f32(a3[5], vmulq_f32(v220, v225));
    a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v224));
  }

  a3[5] = v192;
LABEL_32:
  v226 = vaddq_f32(a2[12], a2[5]);
  v227 = vaddq_f32(a3[12], a3[5]);
  if (BYTE2(this->var43.var0.var0[3]) == 1)
  {
    var44 = this->var44;
    v229 = ((var44 * this->var40.var0.var0[3]) * this->var25.var0.var0[0]) / a4;
    v230 = vsubq_f32(v227, v226);
    v230.i32[3] = 0;
    v231 = *&this->var29;
    v232 = vmulq_f32(v231, v230);
    v233 = vadd_f32(vpadd_f32(*v232.i8, *v232.i8), *&vextq_s8(v232, v232, 8uLL)).f32[0];
    if (v233 > 0.0)
    {
      v229 = v229 + ((var44 * v233) * this->var25.var0.var0[1]);
    }

    v234 = this->var43.var0.var0[1];
    v235 = fmaxf(v234 + (v229 * this->var40.var0.var0[0]), 0.0);
    v236 = vmulq_n_f32(v231, v235 - v234);
    v236.i32[3] = 0;
    v237 = *(&this->var45 + 8);
    v238 = vmulq_f32(v237, v236);
    v239 = vmulq_n_f32(v237, vadd_f32(vpadd_f32(*v238.i8, *v238.i8), *&vextq_s8(v238, v238, 8uLL)).f32[0]);
    v239.i32[3] = 0;
    v240 = vsubq_f32(v236, v239);
    v241 = v240;
    v241.i32[3] = 0;
    this->var43.var0.var0[1] = v235;
    v242 = vmulq_f32(v241, v241);
    v243 = sqrtf(vadd_f32(vpadd_f32(*v242.i8, *v242.i8), *&vextq_s8(v242, v242, 8uLL)).f32[0]);
    v244 = vmulq_n_f32(v240, 1.0 / v243);
    v244.i32[3] = 0;
    if (a2[13].i64[0])
    {
      v245 = this->var8;
      v246 = vmulq_f32(*(v245 + 19), v244);
      v247 = vmulq_f32(*(v245 + 20), v244);
      *v246.f32 = vadd_f32(vpadd_f32(*v246.f32, *v247.i8), vzip1_s32(*&vextq_s8(v246, v246, 8uLL), *&vextq_s8(v247, v247, 8uLL)));
      v248 = vmulq_f32(*(v245 + 21), v244);
      v248.i32[3] = 0;
      *&v246.u32[2] = vpadd_f32(vpadd_f32(*v248.i8, *&vextq_s8(v248, v248, 8uLL)), 0);
      v249 = vmulq_n_f32(0, v243);
      v249.i32[3] = 0;
      v250 = vmulq_n_f32(a2[6], v243);
      v250.i32[3] = 0;
      v251 = vaddq_f32(a2[5], vmulq_f32(v246, v250));
      a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v249));
      a2[5] = v251;
    }

    if (a3[13].i64[0])
    {
      v252 = this->var9;
      v253 = vmulq_f32(*(v252 + 19), v244);
      v254 = vmulq_f32(*(v252 + 20), v244);
      *v253.f32 = vadd_f32(vpadd_f32(*v253.f32, *v254.i8), vzip1_s32(*&vextq_s8(v253, v253, 8uLL), *&vextq_s8(v254, v254, 8uLL)));
      v255 = vmulq_f32(*(v252 + 21), v244);
      v255.i32[3] = 0;
      *&v253.u32[2] = vpadd_f32(vpadd_f32(*v255.i8, *&vextq_s8(v255, v255, 8uLL)), 0);
      v256 = -v243;
      v257 = vmulq_n_f32(0, v256);
      v257.i32[3] = 0;
      v258 = vmulq_n_f32(a3[6], v256);
      v258.i32[3] = 0;
      v259 = vaddq_f32(a3[5], vmulq_f32(v253, v258));
      a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v257));
      a3[5] = v259;
    }
  }

  if (BYTE1(this->var43.var0.var0[3]) == 1)
  {
    v260 = this->var45.var0.var0[0];
    v261 = ((v260 * *&this->var41) * this->var25.var0.var0[0]) / a4;
    v262 = vsubq_f32(v227, v226);
    v262.i32[3] = 0;
    v263 = *&this->var33;
    v264 = vmulq_f32(v263, v262);
    v265 = vadd_f32(vpadd_f32(*v264.i8, *v264.i8), *&vextq_s8(v264, v264, 8uLL)).f32[0];
    if (v265 > 0.0)
    {
      v261 = v261 + ((v260 * v265) * this->var25.var0.var0[1]);
    }

    v266 = v261 * this->var40.var0.var0[1];
    v267 = this->var43.var0.var0[2];
    v268 = fmaxf(v267 + v266, 0.0);
    this->var43.var0.var0[2] = v268;
    v269 = v268 - v267;
    if (a2[13].i64[0])
    {
      v270 = this->var8;
      v271 = vmulq_f32(v263, *(v270 + 19));
      v272 = vmulq_f32(v263, *(v270 + 20));
      *v271.f32 = vadd_f32(vpadd_f32(*v271.f32, *v272.i8), vzip1_s32(*&vextq_s8(v271, v271, 8uLL), *&vextq_s8(v272, v272, 8uLL)));
      v273 = vmulq_f32(v263, *(v270 + 21));
      v273.i32[3] = 0;
      *&v271.u32[2] = vpadd_f32(vpadd_f32(*v273.i8, *&vextq_s8(v273, v273, 8uLL)), 0);
      v274 = vmulq_n_f32(0, v269);
      v274.i32[3] = 0;
      v275 = vmulq_n_f32(a2[6], v269);
      v275.i32[3] = 0;
      v276 = vaddq_f32(a2[5], vmulq_f32(v271, v275));
      a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v274));
      a2[5] = v276;
    }

    if (a3[13].i64[0])
    {
      v277 = this->var9;
      v278 = *&this->var33;
      v279 = vmulq_f32(*(v277 + 19), v278);
      v280 = vmulq_f32(v278, *(v277 + 20));
      *v279.f32 = vadd_f32(vpadd_f32(*v279.f32, *v280.i8), vzip1_s32(*&vextq_s8(v279, v279, 8uLL), *&vextq_s8(v280, v280, 8uLL)));
      v281 = vmulq_f32(v278, *(v277 + 21));
      v281.i32[3] = 0;
      *&v279.u32[2] = vpadd_f32(vpadd_f32(*v281.i8, *&vextq_s8(v281, v281, 8uLL)), 0);
      v282 = -v269;
      v283 = vmulq_n_f32(0, v282);
      v283.i32[3] = 0;
      v284 = vmulq_n_f32(a3[6], v282);
      v284.i32[3] = 0;
      v285 = vaddq_f32(a3[5], vmulq_f32(v279, v284));
      a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v283));
      a3[5] = v285;
    }
  }
}

void btConeTwistConstraint::computeConeLimitInfo(btConeTwistConstraint *this, float32x4_t *a2, float *a3, btVector3 *a4, float *a5)
{
  v10 = a2->f32[3];
  if (v10 < -1.0)
  {
    v10 = -1.0;
  }

  if (v10 > 1.0)
  {
    v10 = 1.0;
  }

  v11 = acosf(v10);
  v12 = v11 + v11;
  *a3 = v12;
  if (v12 > 0.00000011921)
  {
    v13 = *a2;
    v13.i64[1] = a2->u32[2];
    v14 = vmulq_f32(v13, v13);
    v15 = vmulq_n_f32(v13, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0]));
    *a4 = v15;
    v16 = this->var25.var0.var0[3];
    *a5 = v16;
    if (fabsf(v15.f32[1]) > 0.00000011921)
    {
      v17 = vmulq_f32(v15, v15);
      *v17.i32 = vdiv_f32(*&vextq_s8(v17, v17, 8uLL), vdup_lane_s32(*v17.i8, 1)).f32[0];
      *a5 = sqrtf((*v17.i32 + 1.0) / ((1.0 / (this->var26 * this->var26)) + (*v17.i32 / (v16 * v16))));
    }
  }
}

void btConeTwistConstraint::computeTwistLimitInfo(btConeTwistConstraint *this, int8x16_t *a2, float *a3, float32x4_t *a4)
{
  v16 = *a2;
  LODWORD(v7) = HIDWORD(*a2);
  if (v7 < -1.0)
  {
    v7 = -1.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = acosf(v7);
  v9 = v8 + v8;
  *a3 = v9;
  if (v9 > 3.1416)
  {
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v11 = veorq_s8(*a2, v10);
    v16 = v11;
    v12 = *&v11.i32[3];
    if (*&v11.i32[3] < -1.0)
    {
      v12 = -1.0;
    }

    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    v13 = acosf(v12);
    *a3 = v13 + v13;
  }

  v14 = v16;
  v14.i32[3] = 0;
  *a4 = v14;
  if (*a3 > 0.00000011921)
  {
    v15 = vmulq_f32(v14, v14);
    *a4 = vmulq_n_f32(v14, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v15, v15, 8uLL), vpadd_f32(*v15.i8, *v15.i8)).f32[0]));
  }
}

__n128 btConeTwistConstraint::GetPointForAngle@<Q0>(btConeTwistConstraint *this@<X0>, float a2@<S0>, float32_t a3@<S1>, __n128 *a4@<X8>)
{
  v6 = __sincosf_stret(a2);
  v7 = this->var25.var0.var0[3];
  if (fabsf(v6.__cosval) > 0.00000011921)
  {
    v7 = sqrtf((((v6.__sinval * v6.__sinval) / (v6.__cosval * v6.__cosval)) + 1.0) / ((((v6.__sinval * v6.__sinval) / (v6.__cosval * v6.__cosval)) / (v7 * v7)) + (1.0 / (this->var26 * this->var26))));
  }

  v8.i32[0] = 0;
  v8.i32[3] = 0;
  v8.i32[1] = LODWORD(v6.__cosval);
  v8.f32[2] = -v6.__sinval;
  v9 = vmulq_f32(v8, v8);
  v10 = sqrtf(vadd_f32(*&vextq_s8(v9, v9, 8uLL), vpadd_f32(*v9.i8, *v9.i8)).f32[0]);
  v11 = __sincosf_stret(v7 * 0.5);
  v12.i32[0] = 0;
  v12.i32[1] = LODWORD(v6.__cosval);
  *v13.i8 = vmul_n_f32(v12, v11.__sinval / v10);
  v14.i64[0] = v13.i64[0];
  *&v14.i32[2] = -(v6.__sinval * (v11.__sinval / v10));
  v15.i64[0] = 0;
  v14.i32[3] = LODWORD(v11.__cosval);
  v16 = vextq_s8(v14, v14, 8uLL).u64[0];
  *v17.f32 = vzip1_s32(v16, *v13.i8);
  *v18.f32 = vext_s8(*v13.i8, v16, 4uLL);
  v19.i64[0] = LODWORD(a3);
  *v20.f32 = vdup_laneq_s32(v14, 3);
  v15.i64[1] = v18.i64[0];
  v17.i64[1] = LODWORD(a3);
  v19.i64[1] = v13.i64[0];
  v21 = vmulq_f32(v17, v15);
  v17.i32[0] = 0;
  v17.i32[2] = 0;
  v17.f32[1] = a3;
  v17.f32[3] = a3;
  v18.i64[1] = vextq_s8(v14, v13, 0xCuLL).u64[0];
  v22 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v19, v20), vmulq_f32(v17, v18)), xmmword_21C27FD30), v21);
  v23 = veorq_s8(v14, xmmword_21C27FD40);
  v14.i64[0] = vextq_s8(v23, v23, 8uLL).u64[0];
  *v24.f32 = vzip1_s32(*v14.i8, *v23.f32);
  *v17.f32 = vext_s8(*v14.i8, *v23.f32, 4uLL);
  v19.i64[0] = vextq_s8(v22, v22, 4uLL).u64[0];
  *v14.i8 = vext_s8(*v23.f32, *v14.i8, 4uLL);
  *v25.f32 = vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *v22.f32);
  v25.i64[1] = v19.i64[0];
  v14.u64[1] = vrev64_s32(*v24.f32);
  v26 = vmulq_laneq_f32(v23, v22, 3);
  v27 = vtrn2q_s32(v23, v23);
  v19.i64[1] = v25.i64[0];
  v24.i64[1] = v17.i64[0];
  result = vaddq_f32(vsubq_f32(v26, vmulq_f32(v14, v25)), vaddq_f32(vmulq_f32(vextq_s8(v27, v27, 8uLL), vdupq_lane_s64(v22.i64[0], 0)), vmulq_f32(v24, v19)));
  result.n128_u32[3] = 0;
  *a4 = result;
  return result;
}

btConeTwistConstraint *btConeTwistConstraint::setParam(btConeTwistConstraint *this, int a2, float a3, unsigned int a4)
{
  if ((a2 - 3) < 2)
  {
    if (a4 > 2)
    {
      *(&this[1].var12 + 1) = a3;
      v4 = LODWORD(this[1].var10) | 4;
    }

    else
    {
      this[1].var11 = a3;
      v4 = LODWORD(this[1].var10) | 1;
    }
  }

  else
  {
    if ((a2 - 1) > 1)
    {
      return this;
    }

    if (a4 > 2)
    {
      this->var25.var0.var0[0] = a3;
      return this;
    }

    *&this[1].var12 = a3;
    v4 = LODWORD(this[1].var10) | 2;
  }

  LODWORD(this[1].var10) = v4;
  return this;
}

float btConeTwistConstraint::getParam(btConeTwistConstraint *this, int a2, unsigned int a3)
{
  result = 0.0;
  if ((a2 - 3) < 2)
  {
    if (a3 > 2)
    {
      if (a3 - 3 <= 2)
      {
        return *(&this[1].var12 + 1);
      }
    }

    else
    {
      return this[1].var11;
    }
  }

  else if ((a2 - 1) <= 1)
  {
    if (a3 > 2)
    {
      if (a3 - 3 <= 2)
      {
        return this->var25.var0.var0[0];
      }
    }

    else
    {
      return *&this[1].var12;
    }
  }

  return result;
}

uint64_t btConeTwistConstraint::setFrames(btConeTwistConstraint *this, const btTransform *a2, const btTransform *a3)
{
  *(&this->var14 + 44) = *a2;
  *(&this->var15 + 44) = *a3;
  return (*(this->var0 + 2))();
}

const char *btConeTwistConstraint::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btTypedConstraint::serialize(a1, a2, a3);
  v5 = 0;
  v6 = a1 + 368;
  v7 = a2 + 64;
  do
  {
    for (i = 0; i != 16; i += 4)
    {
      *(v7 + i) = *(v6 + i);
    }

    ++v5;
    v6 += 16;
    v7 += 16;
  }

  while (v5 != 3);
  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 112 + j) = *(a1 + 416 + j);
  }

  v10 = 0;
  v11 = a1 + 432;
  v12 = a2 + 128;
  do
  {
    for (k = 0; k != 16; k += 4)
    {
      *(v12 + k) = *(v11 + k);
    }

    ++v10;
    v11 += 16;
    v12 += 16;
  }

  while (v10 != 3);
  for (m = 0; m != 16; m += 4)
  {
    *(a2 + 176 + m) = *(a1 + 480 + m);
  }

  *&v15 = *(a1 + 512);
  DWORD2(v15) = *(a1 + 520);
  HIDWORD(v15) = *(a1 + 496);
  *(a2 + 192) = v15;
  *(a2 + 208) = *(a1 + 500);
  *(a2 + 216) = *(a1 + 508);
  return "btConeTwistConstraintData";
}

void btJacobianEntry::btJacobianEntry(btJacobianEntry *this, const btMatrix3x3 *a2, const btMatrix3x3 *a3, float32x4_t *a4, int8x16_t *a5, float32x4_t *a6, float32x4_t *a7, float a8, float32x4_t *a9, float a10)
{
  v10 = *a6;
  this->var0 = *a6;
  v11 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
  v12 = vsubq_f32(vmulq_f32(v11, *a4), vmulq_f32(v10, vextq_s8(vextq_s8(*a4, *a4, 0xCuLL), *a4, 8uLL)));
  v13 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
  v14 = vmulq_f32(a2->var0[2], v13);
  v13.i32[3] = 0;
  v15 = vmulq_f32(a2->var0[0], v13);
  v16 = vmulq_f32(a2->var0[1], v13);
  v14.i32[3] = 0;
  *v16.var0.var0 = vadd_f32(vpadd_f32(*v15.i8, *v16.var0.var0), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  *&v16.var0.var0[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  this->var1 = v16;
  v17 = vsubq_f32(vmulq_f32(v10, vextq_s8(vextq_s8(*a5, *a5, 0xCuLL), *a5, 8uLL)), vmulq_f32(v11, *a5));
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v19 = vmulq_f32(a3->var0[2], v18);
  v18.i32[3] = 0;
  v20 = vmulq_f32(a3->var0[0], v18);
  v21 = vmulq_f32(a3->var0[1], v18);
  v19.i32[3] = 0;
  *v21.var0.var0 = vadd_f32(vpadd_f32(*v20.i8, *v21.var0.var0), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *&v21.var0.var0[2] = vpadd_f32(vpadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), 0);
  this->var2 = v21;
  v22 = vmulq_f32(v16, *a7);
  this->var3 = v22;
  v23 = vmulq_f32(*a9, v21);
  this->var4 = v23;
  v24 = vmulq_f32(v16, v22);
  v25 = (vadd_f32(*&vextq_s8(v24, v24, 8uLL), vpadd_f32(*v24.i8, *v24.i8)).f32[0] + a8) + a10;
  v26 = vmulq_f32(v21, v23);
  this->var5 = v25 + vadd_f32(vpadd_f32(*v26.i8, *v26.i8), *&vextq_s8(v26, v26, 8uLL)).f32[0];
}

float resolveSingleBilateral(btRigidBody *a1, float32x4_t *a2, btRigidBody *a3, float32x4_t *a4, float a5, float32x4_t *a6, float *a7, float a8)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = vmulq_f32(*a6, *a6);
  result = vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)).f32[0];
  if (result <= 1.1)
  {
    v12 = *(a1 + 3);
    v13 = vsubq_f32(*a2, *(a1 + 4));
    v13.var0.var0[3] = 0.0;
    v14 = *(a3 + 3);
    v15 = vsubq_f32(*a4, *(a3 + 4));
    v15.var0.var0[3] = 0.0;
    v29 = v15;
    v30 = v13;
    v16 = vsubq_f32(vmulq_f32(*(a1 + 23), vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(*(a1 + 23), *(a1 + 23), 0xCuLL), *(a1 + 23), 8uLL), v13));
    v17 = vsubq_f32(vmulq_f32(*(a3 + 23), vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(*(a3 + 23), *(a3 + 23), 0xCuLL), *(a3 + 23), 8uLL), v15));
    v18 = vsubq_f32(vaddq_f32(*(a1 + 22), vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL)), vaddq_f32(*(a3 + 22), vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL)));
    v19 = *(a1 + 1);
    v20 = *(a1 + 2);
    v21 = vtrn1q_s32(v19, v20);
    *v19.i8 = vzip2_s32(*v19.i8, *v20.i8);
    v20.i64[0] = vextq_s8(v21, v21, 8uLL).u64[0];
    v21.i64[1] = v12.u32[0];
    v19.u64[1] = vzip2_s32(*v12.i8, 0);
    v20.i64[1] = vextq_s8(v12, v12, 8uLL).u32[0];
    v28.var0[0] = v21;
    v28.var0[1] = v19;
    v22 = *(a3 + 1);
    v23 = *(a3 + 2);
    v24 = vtrn1q_s32(v22, v23);
    *v22.i8 = vzip2_s32(*v22.i8, *v23.i8);
    v23.i64[0] = vextq_s8(v24, v24, 8uLL).u64[0];
    v18.i32[3] = 0;
    v24.i64[1] = v14.u32[0];
    v22.u64[1] = vzip2_s32(*v14.i8, 0);
    v23.i64[1] = vextq_s8(v14, v14, 8uLL).u32[0];
    v28.var0[2] = v20;
    v26 = v18;
    v27.var0[0] = v24;
    v27.var0[1] = v22;
    v27.var0[2] = v23;
    btJacobianEntry::btJacobianEntry(&v31, &v28, &v27, &v30, &v29, a6, a1 + 28, *(a1 + 96), a3 + 28, *(a3 + 96));
    v25 = vmulq_f32(*a6, v26);
    result = (1.0 / v31.var5) * (-0.2 * vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0]);
    *a7 = result;
  }

  else
  {
    *a7 = 0.0;
  }

  return result;
}

void btJacobianEntry::btJacobianEntry(btJacobianEntry *this, float32x4_t *a2, const btMatrix3x3 *a3, const btMatrix3x3 *a4, float32x4_t *a5, float32x4_t *a6)
{
  this->var0 = 0uLL;
  v6 = vmulq_f32(a3->var0[0], *a2);
  v7 = vmulq_f32(*a2, a3->var0[1]);
  v8 = vmulq_f32(*a2, a3->var0[2]);
  v8.i32[3] = 0;
  *v6.var0.var0 = vadd_f32(vpadd_f32(*v6.var0.var0, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  *&v6.var0.var0[2] = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
  this->var1 = v6;
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = veorq_s8(*a2, v9);
  v11 = vmulq_f32(a4->var0[0], v10);
  v12 = vmulq_f32(a4->var0[1], v10);
  v13 = vmulq_f32(a4->var0[2], v10);
  v13.i32[3] = 0;
  *v11.var0.var0 = vadd_f32(vpadd_f32(*v11.var0.var0, *v12.i8), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
  *&v11.var0.var0[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
  this->var2 = v11;
  v14 = vmulq_f32(v6, *a5);
  this->var3 = v14;
  v15 = vmulq_f32(v11, *a6);
  this->var4 = v15;
  v16 = vmulq_f32(v6, v14);
  v17 = vmulq_f32(v11, v15);
  LODWORD(this->var5) = vadd_f32(vadd_f32(*&vextq_s8(v16, v16, 8uLL), vpadd_f32(*v16.i8, *v16.i8)), vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL))).u32[0];
}

void btHingeConstraint::btHingeConstraint(btHingeConstraint *this, btRigidBody *a2, btRigidBody *a3, float32x4_t *a4, const btVector3 *a5, float32x4_t *a6, int8x16_t *a7, int a8)
{
  btTypedConstraint::btTypedConstraint(this, 4, a2, a3);
  *v14 = &unk_282DCADA0;
  *(v14 + 792) = xmmword_21C2A4620;
  *(v14 + 808) = 1065353216;
  *(v14 + 812) = 0;
  *(v14 + 820) = 0;
  *(v14 + 840) = 0x1000000;
  *(v14 + 844) = a8;
  *(v14 + 852) = 0;
  v15 = *a4;
  *(v14 + 704) = *a4;
  v15.i32[0] = *(a2 + 4);
  v15.i32[1] = *(a2 + 8);
  v16 = v15;
  v16.i32[2] = *(a2 + 12);
  v17 = *a6;
  v18 = vmulq_f32(*a6, v16);
  v19 = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).f32[0];
  if (v19 >= 1.0)
  {
    v15.i32[0] = *(a2 + 5);
    v17.i32[0] = *(a2 + 6);
    v17.i32[1] = *(a2 + 10);
    v17.i32[2] = *(a2 + 14);
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v16 = veorq_s8(v17, v24);
  }

  else
  {
    if (v19 > -1.0)
    {
      v20 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
      *v21.f32 = vext_s8(*v15.f32, *&vextq_s8(v16, v16, 8uLL), 4uLL);
      v21.i64[1] = v15.i64[0];
      v22 = vsubq_f32(vmulq_f32(v17, v21), vmulq_f32(v16, v20));
      v15 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
      v15.i32[3] = 0;
      v23 = vsubq_f32(vmulq_f32(v20, v15), vmulq_f32(v17, vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL)));
      v16 = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL);
      v16.i32[3] = 0;
      goto LABEL_7;
    }

    v15.i32[0] = *(a2 + 5);
    v16.i32[0] = *(a2 + 6);
    v16.i32[1] = *(a2 + 10);
    v16.i32[2] = *(a2 + 14);
  }

  v15.i32[1] = *(a2 + 9);
  v15.i32[2] = *(a2 + 13);
LABEL_7:
  *(v14 + 656) = vzip1_s32(*v16.f32, *v15.f32);
  *(v14 + 664) = a6->i32[0];
  *(v14 + 668) = 0;
  *(v14 + 672) = vzip2_s32(*v16.f32, *v15.f32);
  *(v14 + 680) = a6->i32[1];
  *(v14 + 684) = 0;
  v25 = vextq_s8(v16, v16, 8uLL).u64[0];
  *(v14 + 688) = vzip1_s32(v25, *&vextq_s8(v15, v15, 8uLL));
  *(v14 + 696) = a6->i32[2];
  *(v14 + 700) = 0;
  v26 = *a6;
  v27 = *a7;
  v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), *a7, 8uLL);
  v29 = vmulq_f32(*a6, *a7);
  v30 = vadd_f32(vpadd_f32(*v29.i8, *v29.i8), *&vextq_s8(v29, v29, 8uLL)).f32[0];
  if (v30 >= -1.0)
  {
    v38 = vsubq_f32(vmulq_f32(v26, v28), vmulq_f32(v27, vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL)));
    v38.i32[3] = sqrtf((v30 + 1.0) + (v30 + 1.0));
    v39.i32[1] = 1056964608;
    v39.i64[1] = 0x3F0000003F000000;
    *v39.i32 = 1.0 / v38.f32[3];
    v40 = vzip1q_s32(v39, v39);
    v40.f32[2] = 1.0 / v38.f32[3];
    v41 = vmulq_f32(v38, v40);
    v37 = vzip2q_s32(vzip1q_s32(v41, vextq_s8(v41, v41, 0xCuLL)), v41);
  }

  else
  {
    LODWORD(v31) = HIDWORD(a6->i64[0]);
    v32 = 1.0 / sqrtf((v31 * v31) + (v26.f32[0] * v26.f32[0]));
    v26.f32[0] = v26.f32[0] * v32;
    v33 = -(v26.f32[1] * v32);
    v34 = 1.0 / sqrtf((v26.f32[2] * v26.f32[2]) + (v31 * v31));
    v35 = -(v26.f32[2] * v34);
    v36 = v26.f32[1] * v34;
    if (fabsf(v26.f32[2]) <= 0.70711)
    {
      v35 = v26.f32[0];
      v36 = 0.0;
    }

    else
    {
      v33 = 0.0;
    }

    v37.i64[0] = __PAIR64__(LODWORD(v35), LODWORD(v33));
    v37.i64[1] = LODWORD(v36);
  }

  v42 = vextq_s8(v37, v37, 8uLL).u64[0];
  *v43.f32 = vzip1_s32(v25, *v16.f32);
  *v44.f32 = vzip1_s32(v42, *v37.i8);
  *v45.f32 = vext_s8(*v37.i8, v42, 4uLL);
  v46.i64[0] = vextq_s8(v16, v16, 4uLL).u64[0];
  *v47.f32 = vdup_laneq_s32(v37, 3);
  v44.i64[1] = v45.i64[0];
  *&v46.u32[2] = vrev64_s32(*v43.f32);
  v47.i64[1] = v37.i64[0];
  *&v16.u32[2] = vdup_lane_s32(*v16.f32, 1);
  v43.i64[1] = v43.i64[0];
  *&v45.u32[2] = vext_s8(v42, *v37.i8, 4uLL);
  v48 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v16, v47), vmulq_f32(v43, v45)), xmmword_21C27FD30), vmulq_f32(v46, v44));
  v49 = veorq_s8(v37, xmmword_21C27FD40);
  v50 = vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *v48.f32);
  v44.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
  *v45.f32 = vzip1_s32(*v44.f32, *v49.f32);
  *v46.f32 = vext_s8(*v44.f32, *v49.f32, 4uLL);
  v51.i64[0] = vextq_s8(v48, v48, 4uLL).u64[0];
  *v44.f32 = vext_s8(*v49.f32, *v44.f32, 4uLL);
  *v47.f32 = v50;
  v47.i64[1] = v51.i64[0];
  *&v44.u32[2] = vrev64_s32(*v45.f32);
  v52 = vmulq_f32(v44, v47);
  v53 = vmulq_laneq_f32(v49, v48, 3);
  v54 = vtrn2q_s32(v49, v49);
  *&v51.u32[2] = v50;
  v45.i64[1] = v46.i64[0];
  v55 = vaddq_f32(vsubq_f32(v53, v52), veorq_s8(vaddq_f32(vmulq_f32(vextq_s8(v54, v54, 8uLL), vdupq_lane_s64(v48.i64[0], 0)), vmulq_f32(v45, v51)), xmmword_21C27FD30));
  v43.i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
  v55.i32[3] = 0;
  v56 = vsubq_f32(vmulq_f32(v27, vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL)), vmulq_f32(v28, v55));
  *(v14 + 768) = *a5;
  v57 = vext_s8(*v55.f32, *&vextq_s8(v56, v56, 8uLL), 4uLL);
  v55.i32[1] = v56.i32[1];
  *(v14 + 720) = v55.i64[0];
  *(v14 + 728) = a7->i32[0];
  *(v14 + 732) = 0;
  *(v14 + 736) = v57;
  *(v14 + 744) = a7->i32[1];
  *(v14 + 748) = 0;
  *(v14 + 752) = vzip1_s32(*v43.f32, *v56.i8);
  *(v14 + 760) = a7->i32[2];
  *(v14 + 764) = 0;
  v58 = 1.0;
  if (a8)
  {
    v58 = -1.0;
  }

  *(v14 + 836) = v58;
}

void btHingeConstraint::btHingeConstraint(btHingeConstraint *this, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, int a5)
{
  v9 = btTypedConstraint::btTypedConstraint(this, 4, a2);
  *v9 = &unk_282DCADA0;
  *(v9 + 792) = xmmword_21C2A4620;
  *(v9 + 808) = 1065353216;
  *(v9 + 812) = 0;
  *(v9 + 820) = 0;
  *(v9 + 840) = 0x1000000;
  *(v9 + 844) = a5;
  *(v9 + 852) = 0;
  v10 = a4->f32[2];
  v11 = a4->f32[1];
  if (fabsf(v10) <= 0.70711)
  {
    v19 = (v11 * v11) + (a4->f32[0] * a4->f32[0]);
    v20 = 1.0 / sqrtf(v19);
    v16.i64[1] = 0;
    v16.f32[0] = -(v11 * v20);
    v16.f32[1] = a4->f32[0] * v20;
    v15 = -(v10 * v16.f32[1]);
    v17 = v10 * v16.f32[0];
    v18 = v19 * v20;
  }

  else
  {
    v12 = (v10 * v10) + (v11 * v11);
    v13 = 1.0 / sqrtf(v12);
    *&v14 = v11 * v13;
    v15 = v12 * v13;
    v16.i32[0] = 0;
    v16.f32[1] = -(v10 * v13);
    v16.i64[1] = v14;
    v17 = -(a4->f32[0] * *&v14);
    v18 = a4->f32[0] * v16.f32[1];
  }

  *(v9 + 704) = *a3;
  *(v9 + 656) = v16.i32[0];
  *(v9 + 660) = v15;
  *(v9 + 664) = a4->i32[0];
  *(v9 + 668) = 0;
  *(v9 + 672) = v16.i32[1];
  *(v9 + 676) = v17;
  *(v9 + 680) = a4->i32[1];
  *(v9 + 688) = v16.i32[2];
  *(v9 + 684) = 0;
  *(v9 + 692) = v18;
  *(v9 + 696) = a4->i32[2];
  *(v9 + 700) = 0;
  v21 = *a4;
  v22 = a2[1];
  v23 = a2[2];
  v24 = vmulq_f32(v22, *a4);
  v25 = vmulq_f32(*a4, v23);
  v26 = a2[3];
  v27 = vmulq_f32(*a4, v26);
  v27.i32[3] = 0;
  v28 = vadd_f32(vpadd_f32(*v24.i8, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  v29 = vpadd_f32(vpadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), 0);
  *v30.f32 = vext_s8(v28, v29, 4uLL);
  *&v30.u32[2] = v28;
  *v31.f32 = v28;
  *&v31.u32[2] = v29;
  v32 = vmulq_f32(*a4, v31);
  v33 = vadd_f32(vpadd_f32(*v32.i8, *v32.i8), *&vextq_s8(v32, v32, 8uLL)).f32[0];
  if (v33 >= -1.0)
  {
    v43 = vsubq_f32(vmulq_f32(v21, v30), vmulq_f32(vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL), v31));
    v43.i32[3] = sqrtf((v33 + 1.0) + (v33 + 1.0));
    v44.i32[1] = 1056964608;
    v44.i64[1] = 0x3F0000003F000000;
    *v44.i32 = 1.0 / v43.f32[3];
    v45 = vzip1q_s32(v44, v44);
    v45.f32[2] = 1.0 / v43.f32[3];
    v46 = vmulq_f32(v43, v45);
    v42 = vzip2q_s32(vzip1q_s32(v46, vextq_s8(v46, v46, 0xCuLL)), v46);
  }

  else
  {
    LODWORD(v34) = HIDWORD(a4->i64[0]);
    v35 = fabsf(v21.f32[2]);
    v36 = 1.0 / sqrtf((v34 * v34) + (v21.f32[0] * v21.f32[0]));
    v37 = -(v21.f32[1] * v36);
    v38 = v21.f32[0] * v36;
    v39 = v37;
    v21.f32[0] = 1.0 / sqrtf((v21.f32[2] * v21.f32[2]) + (v34 * v34));
    v40 = v21.f32[1] * v21.f32[0];
    if (v35 <= 0.70711)
    {
      v41 = v38;
    }

    else
    {
      v39 = 0.0;
      v41 = -(v21.f32[2] * v21.f32[0]);
    }

    if (v35 <= 0.70711)
    {
      v40 = 0.0;
    }

    v42.i64[0] = __PAIR64__(LODWORD(v41), LODWORD(v39));
    v42.i64[1] = LODWORD(v40);
  }

  v47 = vextq_s8(v42, v42, 8uLL).u64[0];
  v48 = vext_s8(v47, *v42.i8, 4uLL);
  *v49.f32 = vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
  *v50.f32 = vzip1_s32(v47, *v42.i8);
  *v51.f32 = vext_s8(*v42.i8, v47, 4uLL);
  v52.i64[0] = vextq_s8(v16, v16, 4uLL).u64[0];
  *v53.f32 = vdup_laneq_s32(v42, 3);
  v50.i64[1] = v51.i64[0];
  *&v52.u32[2] = vrev64_s32(*v49.f32);
  v53.i64[1] = v42.i64[0];
  *&v16.u32[2] = vdup_lane_s32(*v16.f32, 1);
  v49.i64[1] = v49.i64[0];
  *&v51.u32[2] = v48;
  v54 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v16, v53), vmulq_f32(v49, v51)), xmmword_21C27FD30), vmulq_f32(v52, v50));
  v55 = veorq_s8(v42, xmmword_21C27FD40);
  v49.i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
  *v50.f32 = vzip1_s32(*v49.f32, *v55.f32);
  *v52.f32 = vext_s8(*v49.f32, *v55.f32, 4uLL);
  v56.i64[0] = vextq_s8(v54, v54, 4uLL).u64[0];
  *v49.f32 = vext_s8(*v55.f32, *v49.f32, 4uLL);
  *v57.f32 = vzip1_s32(*&vextq_s8(v54, v54, 8uLL), *v54.f32);
  v57.i64[1] = v56.i64[0];
  *&v49.u32[2] = vrev64_s32(*v50.f32);
  v58 = vmulq_laneq_f32(v55, v54, 3);
  v59 = vtrn2q_s32(v55, v55);
  v56.i64[1] = v57.i64[0];
  v50.i64[1] = v52.i64[0];
  v60 = vaddq_f32(vsubq_f32(v58, vmulq_f32(v49, v57)), veorq_s8(vaddq_f32(vmulq_f32(vextq_s8(v59, v59, 8uLL), vdupq_lane_s64(v54.i64[0], 0)), vmulq_f32(v50, v56)), xmmword_21C27FD30));
  v59.i64[0] = vextq_s8(v60, v60, 8uLL).u64[0];
  v60.i32[3] = 0;
  v61 = vsubq_f32(vmulq_f32(v31, vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL)), vmulq_f32(v30, v60));
  v62 = vmulq_f32(v22, *a3);
  v63 = vmulq_f32(v23, *a3);
  v64 = vmulq_f32(v26, *a3);
  v64.i32[3] = 0;
  *v62.f32 = vadd_f32(vpadd_f32(*v62.f32, *v63.i8), vzip1_s32(*&vextq_s8(v62, v62, 8uLL), *&vextq_s8(v63, v63, 8uLL)));
  *&v62.u32[2] = vpadd_f32(vpadd_f32(*v64.i8, *&vextq_s8(v64, v64, 8uLL)), 0);
  *(v9 + 768) = vaddq_f32(a2[4], v62);
  *v62.f32 = vext_s8(*v60.f32, *&vextq_s8(v61, v61, 8uLL), 4uLL);
  v60.i32[1] = v61.i32[1];
  *(v9 + 720) = v60.i64[0];
  *(v9 + 728) = v28.i32[0];
  *(v9 + 732) = 0;
  *(v9 + 744) = v28.i32[1];
  *(v9 + 736) = v62.i64[0];
  *(v9 + 748) = 0;
  *(v9 + 752) = vzip1_s32(*v59.i8, *v61.i8);
  *(v9 + 760) = v29.i32[0];
  *(v9 + 764) = 0;
  v65 = 1.0;
  if (a5)
  {
    v65 = -1.0;
  }

  *(v9 + 836) = v65;
}

void btHingeConstraint::buildJacobian(btHingeConstraint *this, double a2, double a3, double a4, float32x4_t a5, double a6, double a7, double a8, int32x4_t a9)
{
  v135 = *MEMORY[0x277D85DE8];
  if (BYTE2(this[1].var9) == 1)
  {
    this->var10 = 0.0;
    this[1].var10 = 0.0;
    if ((this[1].var9 & 1) == 0)
    {
      var8 = this->var8;
      var9 = this->var9;
      v12 = *&this->var17;
      v13 = vmulq_f32(*(var8 + 1), v12);
      v14 = vmulq_f32(v12, *(var8 + 2));
      v15 = vmulq_f32(v12, *(var8 + 3));
      v15.i32[3] = 0;
      *v14.f32 = vadd_f32(vpadd_f32(*v13.i8, *v14.f32), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
      v16 = 0;
      *&v14.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
      v17 = vaddq_f32(v14, *(var8 + 4));
      v18 = *&this->var29;
      v19 = vmulq_f32(*(var9 + 1), v18);
      v20 = vmulq_f32(v18, *(var9 + 2));
      v21 = vmulq_f32(v18, *(var9 + 3));
      v21.i32[3] = 0;
      *v19.f32 = vadd_f32(vpadd_f32(*v19.f32, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
      *&v19.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
      v22 = vaddq_f32(v19, *(var9 + 4));
      v23 = vsubq_f32(v22, v17);
      v23.i32[3] = 0;
      v24 = vmulq_f32(v23, v23);
      v25 = vadd_f32(*&vextq_s8(v24, v24, 8uLL), vpadd_f32(*v24.i8, *v24.i8)).f32[0];
      if (v25 <= 0.00000011921)
      {
        v134.var0[0] = xmmword_21C27F910;
        v26.i32[0] = 1.0;
      }

      else
      {
        v26 = vmulq_n_f32(v23, 1.0 / sqrtf(v25));
        v134.var0[0] = v26;
        v16 = vextq_s8(v26, v26, 4uLL).u64[0];
      }

      v27 = 0;
      v28 = fabsf(v16.f32[1]) <= 0.70711;
      v29 = vmul_f32(v16, v16).f32[0] + (*v26.i32 * *v26.i32);
      v30 = 1.0 / sqrtf(v29);
      v31 = -(v16.f32[0] * v30);
      v32 = *v26.i32 * v30;
      v33 = -(v16.f32[1] * (*v26.i32 * v30));
      v34 = v16.f32[1] * v31;
      v35 = v29 * v30;
      v36 = (v16.f32[1] * v16.f32[1]) + (v16.f32[0] * v16.f32[0]);
      v37 = sqrtf(v36);
      v38 = -(v16.f32[1] * (1.0 / v37));
      v39 = (1.0 / v37) * v16.f32[0];
      v40 = v36 * (1.0 / v37);
      v41 = -(*v26.i32 * v39);
      v42 = v38 * *v26.i32;
      if (v28)
      {
        v38 = v32;
        v39 = 0.0;
      }

      else
      {
        v31 = 0.0;
      }

      if (v28)
      {
        v43 = v33;
      }

      else
      {
        v43 = v40;
      }

      if (v28)
      {
        v44 = v34;
      }

      else
      {
        v44 = v41;
      }

      *v134.var0[1].var0.var0 = __PAIR64__(LODWORD(v38), LODWORD(v31));
      if (v28)
      {
        v42 = v35;
      }

      v134.var0[1].var0.var0[2] = v39;
      *v134.var0[2].var0.var0 = __PAIR64__(LODWORD(v44), LODWORD(v43));
      v134.var0[2].var0.var0[2] = v42;
      v45 = &this->var13[0].var0.var0.var0[2];
      v128 = v22;
      v129 = v17;
      do
      {
        v46 = this->var8;
        v47 = this->var9;
        v48 = *(v46 + 1);
        v49 = *(v46 + 2);
        v50 = vtrn1q_s32(v48, v49);
        v51 = *(v46 + 3);
        v52 = *(v46 + 4);
        *v48.i8 = vzip2_s32(*v48.i8, *v49.i8);
        v49.i64[0] = vextq_s8(v50, v50, 8uLL).u64[0];
        v50.i64[1] = v51.u32[0];
        v48.u64[1] = vzip2_s32(*v51.i8, 0);
        v49.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
        v133.var0[0] = v50;
        v133.var0[1] = v48;
        v133.var0[2] = v49;
        v53 = *(v47 + 1);
        v54 = *(v47 + 2);
        v55 = vtrn1q_s32(v53, v54);
        v56 = *(v47 + 3);
        v57 = *(v47 + 4);
        *v53.i8 = vzip2_s32(*v53.i8, *v54.i8);
        v54.i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
        v55.i64[1] = v56.u32[0];
        v53.u64[1] = vzip2_s32(*v56.i8, 0);
        v54.i64[1] = vextq_s8(v56, v56, 8uLL).u32[0];
        v132.var0[0] = v55;
        v132.var0[1] = v53;
        v132.var0[2] = v54;
        v58 = vsubq_f32(v17, v52);
        v58.var0.var0[3] = 0.0;
        v131 = v58;
        v59 = vsubq_f32(v22, v57);
        v59.var0.var0[3] = 0.0;
        v130 = v59;
        btJacobianEntry::btJacobianEntry(v45, &v133, &v132, &v131, &v130, (&v134 + v27), v46 + 28, *(v46 + 96), v47 + 28, *(v47 + 96));
        v22 = v128;
        v17 = v129;
        v27 += 16;
        v45 = (v60 + 96);
      }

      while (v27 != 48);
    }

    v61 = this->var16.var0.var0[1].var0.var0[2];
    v62 = this->var16.var0.var0[2].var0.var0[2];
    v63 = this->var16.var1.var0.var0[2];
    if (fabsf(v63) <= 0.70711)
    {
      v67 = (v62 * v62) + (v61 * v61);
      v68 = 1.0 / sqrtf(v67);
      v69.i32[0] = LODWORD(this->var16.var0.var0[1].var0.var0[2]);
      v69.f32[1] = -v62;
      v70.f32[0] = -v63;
      *a9.i8 = vmul_n_f32(v69, v68);
      v66 = vrev64q_s32(a9).u64[0];
      v70.i32[1] = LODWORD(this->var16.var1.var0.var0[2]);
      *a5.f32 = vmul_f32(*a9.i8, v70);
      a5.f32[2] = v67 * v68;
    }

    else
    {
      v64 = (v63 * v63) + (v62 * v62);
      v65 = 1.0 / sqrtf(v64);
      v66.i32[0] = 0;
      v66.i32[3] = 0;
      v66.f32[1] = -(v63 * v65);
      v66.f32[2] = v62 * v65;
      a5.f32[0] = v64 * v65;
      a5.f32[1] = -(v61 * (v62 * v65));
      a5.f32[2] = v61 * v66.f32[1];
    }

    v71 = this->var8;
    v72 = this->var9;
    v73 = *(v71 + 1);
    v74 = *(v71 + 2);
    v75 = vmulq_f32(v66, v73);
    v76 = vmulq_f32(v66, v74);
    v77 = *(v71 + 3);
    v78 = vmulq_f32(v66, v77);
    v78.i32[3] = 0;
    *v75.i8 = vadd_f32(vpadd_f32(*v75.i8, *v76.i8), vzip1_s32(*&vextq_s8(v75, v75, 8uLL), *&vextq_s8(v76, v76, 8uLL)));
    v75.u64[1] = vpadd_f32(vpadd_f32(*v78.i8, *&vextq_s8(v78, v78, 8uLL)), 0);
    v79 = vmulq_f32(a5, v73);
    v80 = vmulq_f32(a5, v74);
    v81 = vmulq_f32(a5, v77);
    v81.i32[3] = 0;
    *v79.var0.var0 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *&vextq_s8(v80, v80, 8uLL)), vpadd_f32(*v79.var0.var0, *v80.i8));
    *&v79.var0.var0[2] = vpadd_f32(vpadd_f32(*v81.f32, *&vextq_s8(v81, v81, 8uLL)), 0);
    v131 = v79;
    v132.var0[0] = v75;
    v81.i64[0] = __PAIR64__(LODWORD(v62), LODWORD(v61));
    v81.i64[1] = LODWORD(v63);
    v82 = vmulq_f32(v81, v73);
    v83 = vmulq_f32(v81, v74);
    v84 = vmulq_f32(v81, v77);
    v84.i32[3] = 0;
    *v82.var0.var0 = vadd_f32(vzip1_s32(*&vextq_s8(v82, v82, 8uLL), *&vextq_s8(v83, v83, 8uLL)), vpadd_f32(*v82.var0.var0, *v83.i8));
    *&v82.var0.var0[2] = vpadd_f32(vpadd_f32(*v84.i8, *&vextq_s8(v84, v84, 8uLL)), 0);
    v85 = vtrn1q_s32(v73, v74);
    *v79.var0.var0 = vzip2_s32(*v73.f32, *v74.f32);
    v73.i64[0] = vextq_s8(v85, v85, 8uLL).u64[0];
    v85.i64[1] = v77.u32[0];
    *&v79.var0.var0[2] = vzip2_s32(*v77.f32, 0);
    v73.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
    v134.var0[0] = v85;
    v134.var0[1] = v79;
    v134.var0[2] = v73;
    v86 = *(v72 + 1);
    v87 = *(v72 + 2);
    v88 = vtrn1q_s32(v86, v87);
    v89 = *(v72 + 3);
    *v86.i8 = vzip2_s32(*v86.i8, *v87.i8);
    v87.i64[0] = vextq_s8(v88, v88, 8uLL).u64[0];
    v88.i64[1] = v89.u32[0];
    v86.u64[1] = vzip2_s32(*v89.i8, 0);
    v130 = v82;
    v87.i64[1] = vextq_s8(v89, v89, 8uLL).u32[0];
    v133.var0[0] = v88;
    v133.var0[1] = v86;
    v133.var0[2] = v87;
    btJacobianEntry::btJacobianEntry(&this->var14[0].var2.var0.var0[3], &v132, &v134, &v133, v71 + 28, v72 + 28);
    v90 = this->var8;
    v91 = this->var9;
    v92 = *(v90 + 1);
    v93 = *(v90 + 2);
    v94 = *(v90 + 3);
    v95 = vtrn1q_s32(v92, v93);
    *v96.var0.var0 = vextq_s8(v95, v95, 8uLL).u64[0];
    v95.i64[1] = v94.u32[0];
    *v92.i8 = vzip2_s32(*v92.i8, *v93.i8);
    v92.u64[1] = vzip2_s32(*v94.i8, 0);
    *&v96.var0.var0[2] = vextq_s8(v94, v94, 8uLL).u32[0];
    v134.var0[1] = v92;
    v134.var0[2] = v96;
    v97 = *(v91 + 1);
    v98 = *(v91 + 2);
    v99 = vtrn1q_s32(v97, v98);
    v100 = *(v91 + 3);
    *v97.i8 = vzip2_s32(*v97.i8, *v98.i8);
    v98.i64[0] = vextq_s8(v99, v99, 8uLL).u64[0];
    v99.i64[1] = v100.u32[0];
    v97.u64[1] = vzip2_s32(*v100.i8, 0);
    v134.var0[0] = v95;
    v98.i64[1] = vextq_s8(v100, v100, 8uLL).u32[0];
    v133.var0[0] = v99;
    v133.var0[1] = v97;
    v133.var0[2] = v98;
    btJacobianEntry::btJacobianEntry(&this->var14[1].var3.var0.var0[2], &v131, &v134, &v133, v90 + 28, v91 + 28);
    v101 = this->var8;
    v102 = this->var9;
    v103 = *(v101 + 1);
    v104 = *(v101 + 2);
    v105 = *(v101 + 3);
    v106 = vtrn1q_s32(v103, v104);
    *v107.var0.var0 = vextq_s8(v106, v106, 8uLL).u64[0];
    v106.i64[1] = v105.u32[0];
    *v103.i8 = vzip2_s32(*v103.i8, *v104.i8);
    v103.u64[1] = vzip2_s32(*v105.i8, 0);
    *&v107.var0.var0[2] = vextq_s8(v105, v105, 8uLL).u32[0];
    v134.var0[1] = v103;
    v134.var0[2] = v107;
    v108 = *(v102 + 1);
    v109 = *(v102 + 2);
    v110 = vtrn1q_s32(v108, v109);
    v111 = *(v102 + 3);
    *v108.i8 = vzip2_s32(*v108.i8, *v109.i8);
    v109.i64[0] = vextq_s8(v110, v110, 8uLL).u64[0];
    v110.i64[1] = v111.u32[0];
    v108.u64[1] = vzip2_s32(*v111.i8, 0);
    v134.var0[0] = v106;
    v109.i64[1] = vextq_s8(v111, v111, 8uLL).u32[0];
    v133.var0[0] = v110;
    v133.var0[1] = v108;
    v133.var0[2] = v109;
    btJacobianEntry::btJacobianEntry(&this->var14[2].var4.var0.var0[1], &v130, &v134, &v133, v101 + 28, v102 + 28);
    *(&this[1].var7 + 1) = 0;
    HingeAngle = btHingeConstraint::getHingeAngle(this, (this->var8 + 16), (this->var9 + 16), v112);
    *&this[1].var8 = HingeAngle;
    btAngularLimit::test(&this[1], HingeAngle);
    v114.i32[0] = LODWORD(this->var16.var0.var0[1].var0.var0[2]);
    v114.i32[1] = LODWORD(this->var16.var0.var0[2].var0.var0[2]);
    v114.i32[2] = LODWORD(this->var16.var1.var0.var0[2]);
    v115 = this->var8;
    v116 = this->var9;
    v117 = vmulq_f32(*(v115 + 1), v114);
    v118 = vmulq_f32(v114, *(v115 + 2));
    v119 = vmulq_f32(v114, *(v115 + 3));
    v119.i32[3] = 0;
    *v117.f32 = vadd_f32(vpadd_f32(*v117.f32, *v118.i8), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
    v120 = *(v115 + 19);
    v121 = *(v115 + 20);
    v120.i32[3] = 0;
    v121.i32[3] = 0;
    v122 = *(v116 + 19);
    v123 = *(v116 + 20);
    v122.i32[3] = 0;
    v123.i32[3] = 0;
    *&v117.u32[2] = vpadd_f32(vpadd_f32(*v119.i8, *&vextq_s8(v119, v119, 8uLL)), 0);
    v124 = *(v115 + 21);
    v124.i32[3] = 0;
    v125 = vmulq_f32(v117, vaddq_f32(vaddq_f32(vmulq_n_f32(v120, v117.f32[0]), vmulq_lane_f32(v121, *v117.f32, 1)), vmulq_n_f32(v124, v117.f32[2])));
    v126 = *(v116 + 21);
    v126.i32[3] = 0;
    v127 = vmulq_f32(v117, vaddq_f32(vaddq_f32(vmulq_n_f32(v122, v117.f32[0]), vmulq_lane_f32(v123, *v117.f32, 1)), vmulq_n_f32(v126, v117.f32[2])));
    *&this[1].var7 = 1.0 / vadd_f32(vadd_f32(vpadd_f32(*v125.i8, *v125.i8), *&vextq_s8(v125, v125, 8uLL)), vadd_f32(vpadd_f32(*v127.i8, *v127.i8), *&vextq_s8(v127, v127, 8uLL))).f32[0];
  }
}

void btHingeConstraint::getInfo1(uint64_t a1, _DWORD *a2, float32x4_t a3)
{
  if (*(a1 + 842) == 1)
  {
    v4 = 0;
    *a2 = 0;
LABEL_6:
    a2[1] = v4;
    return;
  }

  a3.i64[0] = 0x100000005;
  *a2 = 0x100000005;
  HingeAngle = btHingeConstraint::getHingeAngle(a1, (*(a1 + 40) + 16), (*(a1 + 48) + 16), a3);
  *(a1 + 832) = HingeAngle;
  btAngularLimit::test((a1 + 792), HingeAngle);
  if ((*(a1 + 820) & 1) != 0 || *(a1 + 841) == 1)
  {
    v7 = a2[1];
    ++*a2;
    v4 = v7 - 1;
    goto LABEL_6;
  }
}

void btHingeConstraint::getInfo2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = v3 + 1;
  v5 = v2 + 1;
  v6 = v3 + 23;
  v7 = v2 + 23;
  if (*(a1 + 843) == 1)
  {
    btHingeConstraint::getInfo2InternalUsingFrameOffset(a1, a2, v4, v5, v6, v7);
  }

  else
  {
    btHingeConstraint::getInfo2Internal(a1, a2, v4, v5, v6, v7);
  }
}

void btHingeConstraint::getInfo2InternalUsingFrameOffset(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  v10 = *(a2 + 40);
  v11 = a3[1];
  v12 = *(a1 + 656);
  v13 = *(a1 + 672);
  v12.i32[3] = 0;
  v13.i32[3] = 0;
  v14 = *(a1 + 688);
  v15 = *(a1 + 704);
  v14.i32[3] = 0;
  v16 = a3[2];
  v17 = a3[3];
  v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v11.f32[0]), v13, *v11.f32, 1), v14, v11, 2);
  v19 = vmulq_f32(*a3, v15);
  v20 = vmulq_f32(v11, v15);
  v21 = vmulq_f32(v16, v15);
  v21.i32[3] = 0;
  v22 = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
  v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*a3)), v13, *a3->f32, 1), v14, *a3, 2);
  *v24.f32 = vadd_f32(vpadd_f32(*v19.i8, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  *&v24.u32[2] = v22;
  v25 = a4[1];
  v26 = *(a1 + 720);
  v27 = *(a1 + 736);
  v26.i32[3] = 0;
  v27.i32[3] = 0;
  v29 = *(a1 + 752);
  v28 = *(a1 + 768);
  v29.i32[3] = 0;
  v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v16.f32[0]), v13, *v16.f32, 1), v14, v16, 2);
  v31 = a4[2];
  v32 = a4[3];
  v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v25.f32[0]), v27, *v25.f32, 1), v29, v25, 2);
  v34 = vmulq_f32(*a4, v28);
  v35 = vmulq_f32(v25, v28);
  v36 = vmulq_f32(v31, v28);
  v36.i32[3] = 0;
  *v20.i8 = vpadd_f32(vpadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)), 0);
  v37 = vaddq_f32(v17, v24);
  v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*a4)), v27, *a4->f32, 1), v29, *a4, 2);
  v39 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v31.f32[0]), v27, *v31.f32, 1), v29, v31, 2);
  *v31.f32 = vadd_f32(vpadd_f32(*v34.i8, *v35.i8), vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
  v31.i64[1] = v20.i64[0];
  v40 = vaddq_f32(v32, v31);
  v41 = vsubq_f32(v40, v37);
  v42 = *(*(a1 + 40) + 384);
  v43 = *(*(a1 + 48) + 384);
  if ((v42 + v43) <= 0.0)
  {
    v44 = 0.5;
  }

  else
  {
    v44 = v43 / (v42 + v43);
  }

  v45 = 1.0 - v44;
  v46.i32[3] = 0;
  v47 = __PAIR64__(v18.u32[2], v23.u32[2]);
  v47.i32[2] = v30.i32[2];
  v48 = __PAIR64__(v33.u32[2], v38.u32[2]);
  v49 = __PAIR64__(v33.u32[2], v38.u32[2]);
  v49.i32[2] = v39.i32[2];
  v50 = vmulq_n_f32(v47, v44);
  v50.i32[3] = 0;
  v51 = vmulq_n_f32(v49, 1.0 - v44);
  v51.i32[3] = 0;
  v52 = vaddq_f32(v50, v51);
  v53 = vmulq_f32(v52, v52);
  v54 = vmulq_n_f32(v52, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v53.i8, *v53.i8), *&vextq_s8(v53, v53, 8uLL)).f32[0]));
  v159 = v54;
  v55 = vsubq_f32(v40, v32);
  v55.i32[3] = 0;
  v56 = vmulq_f32(v54, v55);
  v57 = vmulq_n_f32(v54, vadd_f32(*&vextq_s8(v56, v56, 8uLL), vpadd_f32(*v56.i8, *v56.i8)).f32[0]);
  v57.i32[3] = 0;
  v58 = fminf(v42, v43) < 0.00000011921;
  v59 = vsubq_f32(v55, v57);
  v60 = vsubq_f32(v37, v17);
  v60.i32[3] = 0;
  v61 = vmulq_f32(v54, v60);
  v62 = vmulq_n_f32(v54, vadd_f32(*&vextq_s8(v61, v61, 8uLL), vpadd_f32(*v61.i8, *v61.i8)).f32[0]);
  v62.i32[3] = 0;
  v63 = vsubq_f32(v60, v62);
  v64 = vmulq_n_f32(v63, 1.0 - v44);
  v63.i32[3] = 0;
  v65 = vsubq_f32(v62, v57);
  v66 = vmulq_n_f32(v65, v44);
  v66.i32[3] = 0;
  v67 = vsubq_f32(v59, vmulq_n_f32(v65, 1.0 - v44));
  v67.i32[3] = 0;
  v68 = vaddq_f32(v63, v66);
  v69 = vmulq_n_f32(v59, v44);
  v69.i32[3] = 0;
  v64.i32[3] = 0;
  v70 = vaddq_f32(v69, v64);
  v71 = vmulq_f32(v70, v70);
  v72 = vadd_f32(vpadd_f32(*v71.i8, *v71.i8), *&vextq_s8(v71, v71, 8uLL)).f32[0];
  if (v72 <= 0.00000011921)
  {
    v46.i64[0] = __PAIR64__(v18.u32[1], v23.u32[1]);
    v46.i32[2] = v30.i32[1];
  }

  else
  {
    v46 = vmulq_n_f32(v70, 1.0 / sqrtf(v72));
  }

  v73 = 0;
  v41.i32[3] = 0;
  v74 = 2 * v10;
  v75 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
  v76 = vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL);
  v77 = vsubq_f32(vmulq_f32(v54, v76), vmulq_f32(v75, v46));
  v78 = vextq_s8(vextq_s8(v77, v77, 0xCuLL), v77, 8uLL);
  v78.i32[3] = 0;
  v156 = v78;
  v157 = v46;
  v79 = vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL);
  v80 = vsubq_f32(vmulq_f32(v68, v76), vmulq_f32(v79, v46));
  v81 = vextq_s8(vextq_s8(v67, v67, 0xCuLL), v67, 8uLL);
  v82 = vsubq_f32(vmulq_f32(v76, v67), vmulq_f32(v81, v46));
  v83 = vextq_s8(vextq_s8(v82, v82, 0xCuLL), v82, 8uLL);
  v83.i32[3] = 0;
  v158 = v83;
  v84 = *(a2 + 16);
  *(v84 + 8) = v80.i32[0];
  *v84 = vextq_s8(v80, v30, 4uLL).u64[0];
  v85 = *(a2 + 32);
  do
  {
    *(v85 + v73 * 4) = -v158.f32[v73];
    ++v73;
  }

  while (v73 != 3);
  v86 = vextq_s8(vextq_s8(v78, v78, 0xCuLL), v78, 8uLL);
  v87 = vsubq_f32(vmulq_f32(v68, v86), vmulq_f32(v79, v78));
  v88 = vextq_s8(vextq_s8(v87, v87, 0xCuLL), v87, 8uLL);
  v88.i32[3] = 0;
  v89 = vsubq_f32(vmulq_f32(v86, v67), vmulq_f32(v81, v78));
  v90 = vextq_s8(vextq_s8(v89, v89, 0xCuLL), v89, 8uLL);
  v90.i32[3] = 0;
  v158 = v90;
  if (v58 && *(a1 + 820))
  {
    v158 = vmulq_n_f32(v90, v45);
    v88 = vmulq_n_f32(v88, v44);
  }

  v91 = 0;
  v92 = v84 + 4 * v10;
  *v92 = v88.i64[0];
  *(v92 + 8) = v88.i32[2];
  do
  {
    *(v85 + 4 * v10 + v91 * 4) = -v158.f32[v91];
    ++v91;
  }

  while (v91 != 3);
  v93 = vsubq_f32(vmulq_f32(v75, v68), vmulq_f32(v54, v79));
  v94 = vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL);
  v94.i32[3] = 0;
  v95 = vsubq_f32(vmulq_f32(v75, v67), vmulq_f32(v54, v81));
  v96 = vextq_s8(vextq_s8(v95, v95, 0xCuLL), v95, 8uLL);
  v96.i32[3] = 0;
  v158 = v96;
  if (v58)
  {
    v158 = vmulq_n_f32(v96, v45);
    v94 = vmulq_n_f32(v94, v44);
  }

  v97 = 0;
  v98 = v74;
  v99 = 4 * v74;
  v100 = v84 + v99;
  *v100 = v94.i64[0];
  *(v100 + 8) = v94.i32[2];
  do
  {
    *(v85 + v99 + v97 * 4) = -v158.f32[v97];
    ++v97;
  }

  while (v97 != 3);
  v101 = *(a2 + 4);
  if (*(a1 + 840) == 1)
  {
    v102 = *(a2 + 48);
  }

  else
  {
    v103 = 0;
    v104 = *a2;
    v105 = *(a2 + 8);
    *v105 = v157.i64[0];
    *(v105 + 8) = v157.i32[2];
    v106 = v105 + 4 * v10;
    *v106 = v156.i64[0];
    *(v106 + 8) = v156.i32[2];
    v107 = v104 * v101;
    v108 = v105 + v99;
    *v108 = v159.i64[0];
    *(v108 + 8) = v159.i32[2];
    v109 = *(a2 + 24);
    do
    {
      *(v109 + v103 * 4) = -v157.f32[v103];
      ++v103;
    }

    while (v103 != 3);
    for (i = 0; i != 3; ++i)
    {
      *(v109 + 4 * v10 + i * 4) = -v156.f32[i];
    }

    v111 = 0;
    v112 = v109 + 4 * v98;
    do
    {
      *(v112 + v111 * 4) = -v159.f32[v111];
      ++v111;
    }

    while (v111 != 3);
    v113 = vmulq_f32(v46, v41);
    v102 = *(a2 + 48);
    *v102 = v107 * vadd_f32(*&vextq_s8(v113, v113, 8uLL), vpadd_f32(*v113.i8, *v113.i8)).f32[0];
    v114 = vmulq_f32(v41, v78);
    v102[v10] = v107 * vadd_f32(*&vextq_s8(v114, v114, 8uLL), vpadd_f32(*v114.i8, *v114.i8)).f32[0];
    v115 = vmulq_f32(v54, v41);
    v102[v98] = v107 * vadd_f32(*&vextq_s8(v115, v115, 8uLL), vpadd_f32(*v115.i8, *v115.i8)).f32[0];
  }

  *(v84 + 12 * v10) = v46.i32[0];
  v116 = 12 * v10 + 4;
  *(v84 + v116) = v46.i32[1];
  v117 = 12 * v10 + 8;
  *(v84 + v117) = v46.i32[2];
  v118 = 16 * v10;
  *(v84 + v118) = v78.i64[0];
  v119 = (4 * v10) | 2;
  *(v84 + 4 * v119) = v78.i32[2];
  *(v85 + 12 * v10) = -v46.f32[0];
  *(v85 + v116) = -v46.f32[1];
  *(v85 + v117) = -v46.f32[2];
  *(v85 + v118) = vneg_f32(*v78.f32);
  *(v85 + 4 * v119) = -v78.f32[2];
  v120 = *a2 * *(a2 + 4);
  *v121.f32 = vext_s8(__PAIR64__(v18.u32[2], v23.u32[2]), *&vextq_s8(v30, v30, 8uLL), 4uLL);
  v121.i64[1] = __PAIR64__(v18.u32[2], v23.u32[2]);
  *v122.f32 = vext_s8(v48, *&vextq_s8(v39, v39, 8uLL), 4uLL);
  *&v122.u32[2] = v48;
  v123 = vsubq_f32(vmulq_f32(v47, v122), vmulq_f32(v121, v49));
  v124 = vextq_s8(vextq_s8(v123, v123, 0xCuLL), v123, 8uLL);
  v124.i32[3] = 0;
  v125 = vmulq_f32(v46, v124);
  v102[3 * v10] = v120 * vadd_f32(vpadd_f32(*v125.i8, *v125.i8), *&vextq_s8(v125, v125, 8uLL)).f32[0];
  v126 = vmulq_f32(v78, v124);
  v102[v118 / 4] = v120 * vadd_f32(vpadd_f32(*v126.i8, *v126.i8), *&vextq_s8(v126, v126, 8uLL)).f32[0];
  v127 = *(a1 + 820);
  if (*(a1 + 820))
  {
    v128 = *(a1 + 812) * *(a1 + 836);
    v129 = v128 > 0.0;
    v130 = *(a1 + 841);
  }

  else
  {
    v130 = *(a1 + 841);
    if (v130 != 1)
    {
      return;
    }

    v129 = 0;
    v128 = 0.0;
  }

  v131 = 5 * v10;
  *(v84 + 4 * v131) = v54.i32[0];
  v132 = 20 * v10 + 4;
  *(v84 + v132) = v54.i32[1];
  v133 = 20 * v10 + 8;
  *(v84 + v133) = v54.i32[2];
  v155 = v54;
  *(v85 + 4 * v131) = -v54.f32[0];
  *(v85 + v132) = -v54.f32[1];
  *(v85 + v133) = -v54.f32[2];
  btAngularLimit::getLow((a1 + 792));
  v135 = v134;
  btAngularLimit::getHigh((a1 + 792));
  v137 = v136;
  v138 = *(a2 + 48);
  *(v138 + 4 * v131) = 0;
  if (v135 == v136)
  {
    v139 = v127;
  }

  else
  {
    v139 = 0;
  }

  v140 = *(a1 + 852);
  v141 = (a1 + 864);
  if ((v140 & 2) == 0)
  {
    v141 = (a2 + 4);
  }

  v142 = *v141;
  if (v130 && (v139 & 1) == 0)
  {
    if ((v140 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v131) = *(a1 + 856);
    }

    MotorFactor = btTypedConstraint::getMotorFactor(a1, *(a1 + 832), v135, v136, *(a1 + 784), v142 * *a2);
    v138 = *(a2 + 48);
    *(v138 + 4 * v131) = *(v138 + 4 * v131) + ((MotorFactor * *(a1 + 784)) * *(a1 + 836));
    v144 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v131) = -*(a1 + 788);
    *(v144 + 4 * v131) = *(a1 + 788);
  }

  if (v127)
  {
    *(v138 + 4 * v131) = *(v138 + 4 * v131) + ((v142 * *a2) * v128);
    if (*(a1 + 852))
    {
      *(*(a2 + 56) + 4 * v131) = *(a1 + 860);
    }

    v145 = -3.4028e38;
    v146 = 0.0;
    if (v129)
    {
      v147 = 0.0;
    }

    else
    {
      v147 = -3.4028e38;
    }

    if (v135 != v137)
    {
      v145 = v147;
    }

    if (v135 == v137 || v129)
    {
      v146 = 3.4028e38;
    }

    v148 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v131) = v145;
    *(v148 + 4 * v131) = v146;
    v149 = *(a1 + 808);
    if (v149 <= 0.0)
    {
      v153 = *(v138 + 4 * v131);
    }

    else
    {
      v150 = vmulq_f32(*a5, v155);
      v151 = vmulq_f32(v155, *a6);
      LODWORD(v152) = vsub_f32(vadd_f32(vpadd_f32(*v150.i8, *v150.i8), *&vextq_s8(v150, v150, 8uLL)), vadd_f32(vpadd_f32(*v151.i8, *v151.i8), *&vextq_s8(v151, v151, 8uLL))).u32[0];
      v153 = *(v138 + 4 * v131);
      if (v129)
      {
        if (v152 >= 0.0)
        {
          goto LABEL_57;
        }

        v154 = -(v149 * v152);
        if (v154 <= v153)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v152 <= 0.0)
        {
          goto LABEL_57;
        }

        v154 = -(v149 * v152);
        if (v154 >= v153)
        {
          goto LABEL_57;
        }
      }

      *(v138 + 4 * v131) = v154;
      v153 = v154;
    }

LABEL_57:
    *(v138 + 4 * v131) = *(a1 + 804) * v153;
  }
}

void btHingeConstraint::getInfo2Internal(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  v10 = *(a2 + 40);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a1 + 656);
  v14 = *(a1 + 672);
  v13.i32[3] = 0;
  v14.i32[3] = 0;
  v16 = *(a1 + 688);
  v15 = *(a1 + 704);
  v16.i32[3] = 0;
  v17 = a3[2];
  v18 = a3[3];
  v19 = vmlaq_lane_f32(vmulq_n_f32(v13, v12.f32[0]), v14, *v12.f32, 1);
  v20 = vmlaq_lane_f32(vmulq_n_f32(v13, v17.f32[0]), v14, *v17.f32, 1);
  v21 = vmulq_f32(*a3, v15);
  v22 = vmulq_f32(v12, v15);
  v23 = vmulq_f32(v17, v15);
  v23.i32[3] = 0;
  v24 = vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*a3)), v14, *a3->f32, 1);
  *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
  *&v21.u32[2] = vpadd_f32(vpadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)), 0);
  v25 = *a4;
  v26 = a4[1];
  v27 = *(a1 + 720);
  v28 = *(a1 + 736);
  v27.i32[3] = 0;
  v28.i32[3] = 0;
  v30 = *(a1 + 752);
  v29 = *(a1 + 768);
  v30.i32[3] = 0;
  v31 = a4[2];
  v32 = vmlaq_lane_f32(vmulq_n_f32(v27, v26.f32[0]), v28, *v26.f32, 1);
  v33 = vmlaq_lane_f32(vmulq_n_f32(v27, v31.f32[0]), v28, *v31.f32, 1);
  v34 = vmulq_f32(*a4, v29);
  v35 = vmulq_f32(v26, v29);
  v36 = vmulq_f32(v31, v29);
  v36.i32[3] = 0;
  v37 = vpadd_f32(vpadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)), 0);
  v38 = vaddq_f32(v18, v21);
  v39 = vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*a4)), v28, *a4->f32, 1);
  *v27.f32 = vadd_f32(vpadd_f32(*v34.i8, *v35.i8), vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
  *&v27.u32[2] = v37;
  v40 = vaddq_f32(a4[3], v27);
  v113 = v40;
  v114 = v38;
  v41 = 4 * v10;
  if (*(a1 + 840) == 1)
  {
    v42 = 2 * v10;
  }

  else
  {
    v43 = *(a2 + 8);
    *v43 = 1065353216;
    v44 = v41 + 4;
    *(v43 + v44) = 1065353216;
    v42 = 2 * v10;
    v45 = 8 * v10 + 8;
    *(v43 + v45) = 1065353216;
    v46 = *(a2 + 24);
    *v46 = -1082130432;
    *(v46 + v44) = -1082130432;
    *(v46 + v45) = -1082130432;
    v18 = a3[3];
  }

  v47 = vmlaq_laneq_f32(v19, v16, v12, 2);
  v48 = vmlaq_laneq_f32(v24, v16, v11, 2);
  v49 = vmlaq_laneq_f32(v20, v16, v17, 2);
  v50 = vmlaq_laneq_f32(v32, v30, v26, 2);
  v51 = vmlaq_laneq_f32(v39, v30, v25, 2);
  v52 = vmlaq_laneq_f32(v33, v30, v31, 2);
  v53 = *(a2 + 16);
  v54 = v53 + 4 * v10;
  v55 = v53 + 4 * v42;
  v56 = vnegq_f32(vsubq_f32(v38, v18));
  *v53 = 0;
  *(v53 + 4) = -v56.f32[2];
  *(v53 + 8) = v56.i32[1];
  *(v53 + 12) = 0;
  *v54 = v56.i32[2];
  *(v54 + 4) = 0;
  *(v54 + 8) = -v56.f32[0];
  *(v54 + 12) = 0;
  *v55 = -v56.f32[1];
  *(v55 + 4) = v56.i32[0];
  *(v55 + 8) = 0;
  v57 = vsubq_f32(v40, a4[3]);
  v58 = *(a2 + 32);
  v59 = v58 + 4 * v10;
  v60 = v58 + 4 * v42;
  *v58 = 0;
  *(v58 + 4) = -v57.f32[2];
  *(v58 + 8) = v57.i32[1];
  *(v58 + 12) = 0;
  *v59 = v57.i32[2];
  *(v59 + 4) = 0;
  *(v59 + 8) = -v57.f32[0];
  *(v59 + 12) = 0;
  *v60 = -v57.f32[1];
  *(v60 + 4) = v57.i32[0];
  *(v60 + 8) = 0;
  v61 = *a2 * *(a2 + 4);
  v62 = *(a2 + 48);
  if ((*(a1 + 840) & 1) == 0)
  {
    v63 = 0;
    v64 = *(a2 + 48);
    do
    {
      *v64 = v61 * (v113.f32[v63] - v114.f32[v63]);
      v64 = (v64 + v41);
      ++v63;
    }

    while (v63 != 3);
  }

  *v65.f32 = vext_s8(__PAIR64__(v47.u32[2], v48.u32[2]), *&vextq_s8(v49, v49, 8uLL), 4uLL);
  v65.i64[1] = __PAIR64__(v47.u32[2], v48.u32[2]);
  v66 = __PAIR64__(v47.u32[2], v48.u32[2]);
  v66.i32[2] = v49.i32[2];
  v67.i64[0] = __PAIR64__(v47.u32[0], v48.u32[0]);
  v67.i64[1] = v49.u32[0];
  v68.i64[0] = __PAIR64__(v47.u32[1], v48.u32[1]);
  v68.i64[1] = v49.u32[1];
  v69 = *(a2 + 40);
  v70 = *(a2 + 16);
  v71 = 12 * v69;
  v72 = vzip1_s32(*v48.f32, *v47.f32);
  *(v70 + v71) = v72;
  v73 = 12 * v69 + 8;
  *(v70 + v73) = v49.i32[0];
  *(v70 + 16 * v69) = v48.i32[1];
  *(v70 + 16 * v69 + 4) = v47.i32[1];
  v74 = (16 * ((4 * v69) >> 2)) | 8;
  *(v70 + v74) = v49.i32[1];
  v75 = *(a2 + 32);
  *(v75 + v71) = vneg_f32(v72);
  *(v75 + v73) = -*v49.i32;
  v76 = 16 * v69;
  *(v75 + v76) = vneg_f32(vzip2_s32(*v48.f32, *v47.f32));
  *(v75 + v74) = -*&v49.i32[1];
  *v50.f32 = vext_s8(__PAIR64__(v50.u32[2], v51.u32[2]), *&vextq_s8(v52, v52, 8uLL), 4uLL);
  v50.i64[1] = __PAIR64__(v50.u32[2], v51.u32[2]);
  v77.i64[0] = v50.i64[1];
  v77.i64[1] = v52.u32[2];
  v112 = v66;
  v78 = vsubq_f32(vmulq_f32(v66, v50), vmulq_f32(v65, v77));
  v79 = vextq_s8(vextq_s8(v78, v78, 0xCuLL), v78, 8uLL);
  v79.i32[3] = 0;
  v80 = vmulq_f32(v67, v79);
  *(v62 + 12 * v69) = v61 * vadd_f32(*&vextq_s8(v80, v80, 8uLL), vpadd_f32(*v80.i8, *v80.i8)).f32[0];
  v81 = vmulq_f32(v68, v79);
  *(v62 + v76) = v61 * vadd_f32(*&vextq_s8(v81, v81, 8uLL), vpadd_f32(*v81.i8, *v81.i8)).f32[0];
  v82 = *(a1 + 820);
  if (*(a1 + 820))
  {
    v83 = *(a1 + 812) * *(a1 + 836);
    v84 = v83 > 0.0;
    v85 = *(a1 + 841);
  }

  else
  {
    v85 = *(a1 + 841);
    if (v85 != 1)
    {
      return;
    }

    v84 = 0;
    v83 = 0.0;
  }

  v86 = 5 * v69;
  *(v70 + 20 * v69) = v48.i32[2];
  v87 = 20 * v69;
  v88 = v87 + 4;
  *(v70 + v88) = v47.i32[2];
  v87 += 8;
  *(v70 + v87) = v49.i32[2];
  *(v75 + 4 * v86) = -v48.f32[2];
  *(v75 + v88) = -v47.f32[2];
  *(v75 + v87) = -*&v49.i32[2];
  btAngularLimit::getLow((a1 + 792));
  v90 = v89;
  btAngularLimit::getHigh((a1 + 792));
  v92 = v91;
  v93 = *(a2 + 48);
  *(v93 + 4 * v86) = 0;
  if (v90 == v91)
  {
    v94 = v82;
  }

  else
  {
    v94 = 0;
  }

  v95 = *(a1 + 852);
  v96 = (a1 + 864);
  if ((v95 & 2) == 0)
  {
    v96 = (a2 + 4);
  }

  v97 = *v96;
  if (v85 && (v94 & 1) == 0)
  {
    if ((v95 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v86) = *(a1 + 856);
    }

    MotorFactor = btTypedConstraint::getMotorFactor(a1, *(a1 + 832), v90, v91, *(a1 + 784), v97 * *a2);
    v93 = *(a2 + 48);
    *(v93 + 4 * v86) = *(v93 + 4 * v86) + ((MotorFactor * *(a1 + 784)) * *(a1 + 836));
    v99 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v86) = -*(a1 + 788);
    *(v99 + 4 * v86) = *(a1 + 788);
  }

  if (v82)
  {
    *(v93 + 4 * v86) = *(v93 + 4 * v86) + ((v97 * *a2) * v83);
    if (*(a1 + 852))
    {
      *(*(a2 + 56) + 4 * v86) = *(a1 + 860);
    }

    v100 = -3.4028e38;
    v101 = 0.0;
    if (v84)
    {
      v102 = 0.0;
    }

    else
    {
      v102 = -3.4028e38;
    }

    if (v90 != v92)
    {
      v100 = v102;
    }

    if (v90 == v92 || v84)
    {
      v101 = 3.4028e38;
    }

    v103 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v86) = v100;
    *(v103 + 4 * v86) = v101;
    v104 = *(a1 + 808);
    if (v104 <= 0.0)
    {
      v108 = *(v93 + 4 * v86);
    }

    else
    {
      v105 = vmulq_f32(v112, *a5);
      v106 = vmulq_f32(v112, *a6);
      v107 = vsub_f32(vadd_f32(vpadd_f32(*v105.i8, *v105.i8), *&vextq_s8(v105, v105, 8uLL)), vadd_f32(vpadd_f32(*v106.i8, *v106.i8), *&vextq_s8(v106, v106, 8uLL))).f32[0];
      v108 = *(v93 + 4 * v86);
      v109 = -(v104 * v107);
      if (v84)
      {
        if (v107 >= 0.0 || v109 <= v108)
        {
          goto LABEL_45;
        }
      }

      else if (v107 <= 0.0 || v109 >= v108)
      {
        goto LABEL_45;
      }

      *(v93 + 4 * v86) = v109;
      v108 = v109;
    }

LABEL_45:
    *(v93 + 4 * v86) = *(a1 + 804) * v108;
  }
}

uint64_t btHingeConstraint::setFrames(btHingeConstraint *this, const btTransform *a2, const btTransform *a3)
{
  this->var16.var0.var0[1] = a2->var0.var0[0];
  this->var16.var0.var0[2] = a2->var0.var0[1];
  this->var16.var1 = a2->var0.var0[2];
  *&this->var17 = a2->var1;
  *&this->var19.var2 = *a3;
  return (*(this->var0 + 2))();
}

float btHingeConstraint::getHingeAngle(btHingeConstraint *this, const btTransform *a2, const btTransform *a3, float32x4_t a4)
{
  a4.i32[0] = LODWORD(this->var16.var0.var0[1].var0.var0[0]);
  a4.i32[1] = LODWORD(this->var16.var0.var0[2].var0.var0[0]);
  a4.i32[2] = LODWORD(this->var16.var1.var0.var0[0]);
  v4 = a2->var0.var0[1];
  v5 = vmulq_f32(a2->var0.var0[0], a4);
  v6 = vmulq_f32(a4, v4);
  v7 = a2->var0.var0[2];
  v8 = vmulq_f32(a4, v7);
  v8.i32[3] = 0;
  v9 = vadd_f32(vpadd_f32(*v5.i8, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
  *v5.i8 = vpadd_f32(vpadd_f32(*v8.f32, *&vextq_s8(v8, v8, 8uLL)), 0);
  v8.i32[0] = LODWORD(this->var16.var0.var0[1].var0.var0[1]);
  v8.i32[1] = LODWORD(this->var16.var0.var0[2].var0.var0[1]);
  v8.i32[2] = LODWORD(this->var16.var1.var0.var0[1]);
  v10 = vmulq_f32(a2->var0.var0[0], v8);
  v11 = vmulq_f32(v4, v8);
  v12 = vmulq_f32(v7, v8);
  v12.i32[3] = 0;
  *v10.i8 = vadd_f32(vpadd_f32(*v10.i8, *v11.i8), vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v11, v11, 8uLL)));
  *v11.i8 = vpadd_f32(vpadd_f32(*v12.f32, *&vextq_s8(v12, v12, 8uLL)), 0);
  v12.i32[0] = LODWORD(this->var19.var3);
  v12.i32[1] = *&this->var19.var7;
  v12.i32[2] = LODWORD(this->var23);
  v13 = vmulq_f32(a3->var0.var0[0], v12);
  v14 = vmulq_f32(v12, a3->var0.var0[1]);
  v15 = vmulq_f32(v12, a3->var0.var0[2]);
  v15.i32[3] = 0;
  *v13.i8 = vadd_f32(vpadd_f32(*v13.i8, *v14.i8), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
  *v6.i8 = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
  v16 = vmul_f32(v9, *v13.i8);
  *v10.i8 = vmul_f32(*v10.i8, *v13.i8);
  return atan2f(vadd_f32(vpadd_f32(v16, v16), vmul_f32(*v5.i8, *v6.i8)).f32[0], vadd_f32(vpadd_f32(*v10.i8, *v10.i8), vmul_f32(*v11.i8, *v6.i8)).f32[0]) * *(&this[1].var8 + 1);
}

btHingeConstraint *btHingeConstraint::setParam(btHingeConstraint *this, int a2, float a3, int a4)
{
  if (a4 == 5 || a4 == -1)
  {
    switch(a2)
    {
      case 4:
        *(&this[1].var12 + 1) = a3;
        v4 = 1;
        break;
      case 3:
        *&this[1].var12 = a3;
        v4 = 4;
        break;
      case 2:
        this[1].var13[0].var0.var0.var0[0] = a3;
        v4 = 2;
        break;
      default:
        return this;
    }

    LODWORD(this[1].var11) |= v4;
  }

  return this;
}

float btHingeConstraint::getParam(btHingeConstraint *this, int a2, int a3)
{
  result = 0.0;
  if (a3 == 5 || a3 == -1)
  {
    switch(a2)
    {
      case 4:
        return *(&this[1].var12 + 1);
      case 3:
        return *&this[1].var12;
      case 2:
        return this[1].var13[0].var0.var0.var0[0];
    }
  }

  return result;
}

const char *btHingeConstraint::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btTypedConstraint::serialize(a1, a2, a3);
  v5 = 0;
  v6 = a1 + 656;
  v7 = a2 + 64;
  do
  {
    for (i = 0; i != 16; i += 4)
    {
      *(v7 + i) = *(v6 + i);
    }

    ++v5;
    v6 += 16;
    v7 += 16;
  }

  while (v5 != 3);
  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 112 + j) = *(a1 + 704 + j);
  }

  v10 = 0;
  v11 = a1 + 720;
  v12 = a2 + 128;
  do
  {
    for (k = 0; k != 16; k += 4)
    {
      *(v12 + k) = *(v11 + k);
    }

    ++v10;
    v11 += 16;
    v12 += 16;
  }

  while (v10 != 3);
  for (m = 0; m != 16; m += 4)
  {
    *(a2 + 176 + m) = *(a1 + 768 + m);
  }

  v15 = *(a1 + 840);
  *(a2 + 200) = *(a1 + 841);
  *(a2 + 204) = *(a1 + 784);
  *(a2 + 192) = *(a1 + 844);
  *(a2 + 196) = v15;
  btAngularLimit::getLow((a1 + 792));
  *(a2 + 212) = v16;
  btAngularLimit::getHigh((a1 + 792));
  *(a2 + 216) = v17;
  *(a2 + 220) = *(a1 + 800);
  *(a2 + 228) = *(a1 + 808);
  return "btHingeConstraintFloatData";
}

void btPoint2PointConstraint::btPoint2PointConstraint(btPoint2PointConstraint *this, btRigidBody *a2, btRigidBody *a3, const btVector3 *a4, const btVector3 *a5)
{
  btTypedConstraint::btTypedConstraint(this, 3, a2, a3);
  *v7 = &unk_282DCAE08;
  *(v7 + 368) = *a4;
  *(v7 + 384) = *a5;
  *(v7 + 400) = 0;
  *(v7 + 412) = 0;
  *(v7 + 416) = 0x3F8000003E99999ALL;
  *(v7 + 424) = 0;
}

void btPoint2PointConstraint::btPoint2PointConstraint(btPoint2PointConstraint *this, float32x4_t *a2, float32x4_t *a3)
{
  v5 = btTypedConstraint::btTypedConstraint(this, 3, a2);
  v6 = *a3;
  *(v5 + 368) = *a3;
  v7 = vmulq_f32(a2[1], v6);
  v8 = vmulq_f32(v6, a2[2]);
  v9 = a2[4];
  v10 = vmulq_f32(v6, a2[3]);
  v10.i32[3] = 0;
  *v5 = &unk_282DCAE08;
  *v7.f32 = vadd_f32(vpadd_f32(*v7.f32, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
  *&v7.u32[2] = vpadd_f32(vpadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), 0);
  *(v5 + 384) = vaddq_f32(v7, v9);
  *(v5 + 400) = 0;
  *(v5 + 412) = 0;
  *(v5 + 416) = 0x3F8000003E99999ALL;
  *(v5 + 424) = 0;
}

btJacobianEntry *btPoint2PointConstraint::buildJacobian(btPoint2PointConstraint *this)
{
  v2 = 0;
  this->var10 = 0.0;
  result = &this->var13[0].var0.var0.var0[2];
  v32 = 0;
  do
  {
    v32.var0.var0[v2] = 1.0;
    var8 = this->var8;
    var9 = this->var9;
    v6 = *(var8 + 1);
    v7 = *(var8 + 2);
    v8 = vtrn1q_s32(v6, v7);
    v9 = *(var8 + 3);
    v10 = *(var8 + 4);
    *v7.i8 = vzip2_s32(*v6.i8, *v7.i8);
    *v11.var0.var0 = vextq_s8(v8, v8, 8uLL).u64[0];
    v8.i64[1] = v9.u32[0];
    v7.u64[1] = vzip2_s32(*v9.f32, 0);
    *&v11.var0.var0[2] = vextq_s8(v9, v9, 8uLL).u32[0];
    v13 = *&this->var19;
    v12 = *&this[1].var0;
    v14 = vmulq_f32(v9, v13);
    v31.var0[0] = v8;
    v31.var0[1] = v7;
    v31.var0[2] = v11;
    v15 = *(var9 + 1);
    v16 = *(var9 + 2);
    v17 = vtrn1q_s32(v15, v16);
    v18 = *(var9 + 3);
    v19 = *(var9 + 4);
    *v15.i8 = vzip2_s32(*v15.i8, *v16.i8);
    v16.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
    v17.i64[1] = v18.u32[0];
    v15.u64[1] = vzip2_s32(*v18.f32, 0);
    v16.i64[1] = vextq_s8(v18, v18, 8uLL).u32[0];
    v20 = vmulq_f32(v18, v12);
    v30.var0[0] = v17;
    v30.var0[1] = v15;
    v30.var0[2] = v16;
    v21 = vmulq_f32(*(var8 + 1), v13);
    v22 = vmulq_f32(v13, *(var8 + 2));
    v14.i32[3] = 0;
    *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
    *&v21.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
    v23 = vsubq_f32(vaddq_f32(v10, v21), v10);
    v23.var0.var0[3] = 0.0;
    v29 = v23;
    v24 = vmulq_f32(*(var9 + 1), v12);
    v25 = vmulq_f32(v12, *(var9 + 2));
    v20.i32[3] = 0;
    *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
    *&v24.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
    v26 = vsubq_f32(vaddq_f32(v19, v24), v19);
    v26.i32[3] = 0;
    v28 = v26;
    btJacobianEntry::btJacobianEntry(result, &v31, &v30, &v29, &v28, &v32, var8 + 28, *(var8 + 96), var9 + 28, *(var9 + 96));
    v32.var0.var0[v2] = 0.0;
    result = (v27 + 96);
    ++v2;
  }

  while (v2 != 3);
  return result;
}

uint64_t btPoint2PointConstraint::getInfo1(uint64_t result, int *a2)
{
  if (*(result + 412))
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  a2[1] = v2;
  return result;
}

float btPoint2PointConstraint::getInfo2NonVirtual(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = 0;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  *v5 = 1065353216;
  v7 = *(a2 + 40);
  v5[v7 + 1] = 1065353216;
  v5[2 * v7 + 2] = 1065353216;
  v8 = a1[23];
  v9 = vmulq_f32(*a3, v8);
  v10 = vmulq_f32(v8, a3[1]);
  v11 = vmulq_f32(v8, a3[2]);
  v11.i32[3] = 0;
  *v8.f32 = vadd_f32(vpadd_f32(*v9.i8, *v10.i8), vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL)));
  *&v8.u32[2] = vpadd_f32(vpadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)), 0);
  v12 = v6 + 4 * v7;
  v13 = v6 + 8 * v7;
  v14 = vnegq_f32(v8);
  *v6 = 0;
  *(v6 + 4) = -v14.f32[2];
  *(v6 + 8) = v14.i32[1];
  *(v6 + 12) = 0;
  *v12 = v14.i32[2];
  *(v12 + 4) = 0;
  *(v12 + 8) = -v14.f32[0];
  *(v12 + 12) = 0;
  *v13 = -v14.f32[1];
  *(v13 + 4) = v14.i32[0];
  *(v13 + 8) = 0;
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  *v15 = -1082130432;
  v17 = *(a2 + 40);
  v15[v17 + 1] = -1082130432;
  v15[2 * v17 + 2] = -1082130432;
  v18 = a1[24];
  v19 = vmulq_f32(*a4, v18);
  v20 = vmulq_f32(v18, a4[1]);
  v21 = vmulq_f32(v18, a4[2]);
  v21.i32[3] = 0;
  *v19.i8 = vadd_f32(vpadd_f32(*v19.i8, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  *v21.i32 = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0).f32[0];
  v22 = v16 + 4 * v17;
  v23 = v16 + 8 * v17;
  *v16 = 0;
  *(v16 + 4) = -*v21.i32;
  *(v16 + 8) = v19.i32[1];
  *(v16 + 12) = 0;
  *v22 = v21.u32[0];
  *(v22 + 8) = -*v19.i32;
  *(v22 + 12) = 0;
  *v23 = -*&v19.i32[1];
  *(v23 + 4) = v19.i32[0];
  *(v23 + 8) = 0;
  v24 = a1[25].i32[0];
  v25 = &a1[25].f32[1];
  if ((v24 & 1) == 0)
  {
    v25 = (a2 + 4);
  }

  v26 = *v25 * *a2;
  v27 = *(a2 + 48);
  v28 = *(a2 + 40);
  do
  {
    *v27 = v26 * (((*(v37 + v4 * 4) + a4[3].f32[v4]) - *(&v37[1] + v4 * 4)) - a3[3].f32[v4]);
    v27 += v28;
    ++v4;
  }

  while (v4 != 3);
  if ((v24 & 2) != 0)
  {
    v29 = *(a2 + 56);
    v30 = a1[25].i32[2];
    *v29 = v30;
    v29[v28] = v30;
    v29[2 * v28] = v30;
  }

  v31 = 0;
  v32 = a1[26].f32[2];
  v33 = 2;
  v34 = v32;
  while (1)
  {
    if (v34 > 0.0)
    {
      v35 = *(a2 + 72);
      *(*(a2 + 64) + 4 * v31) = -v32;
      *(v35 + 4 * v31) = v32;
    }

    if (!v33)
    {
      break;
    }

    v34 = a1[26].f32[2];
    --v33;
    v31 += v28;
  }

  result = a1[26].f32[1];
  *(a2 + 92) = result;
  return result;
}

btPoint2PointConstraint *btPoint2PointConstraint::setParam(btPoint2PointConstraint *this, int a2, float a3, int a4)
{
  if (a4 == -1)
  {
    if ((a2 - 3) < 2)
    {
      this[1].var4 = a3;
      v4 = 2;
    }

    else
    {
      if ((a2 - 1) > 1)
      {
        return this;
      }

      *(&this[1].var3.var1 + 1) = a3;
      v4 = 1;
    }

    this[1].var3.var0 |= v4;
  }

  return this;
}

float btPoint2PointConstraint::getParam(btPoint2PointConstraint *this, int a2, int a3)
{
  if (a3 != -1)
  {
    return 3.4028e38;
  }

  if ((a2 - 3) < 2)
  {
    return this[1].var4;
  }

  if ((a2 - 1) > 1)
  {
    return 3.4028e38;
  }

  return *(&this[1].var3.var1 + 1);
}

const char *btPoint2PointConstraint::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btTypedConstraint::serialize(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 64 + i) = *(a1 + 368 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 80 + j) = *(a1 + 384 + j);
  }

  return "btPoint2PointConstraintFloatData";
}

void btSequentialImpulseConstraintSolver::btSequentialImpulseConstraintSolver(btSequentialImpulseConstraintSolver *this)
{
  *this = &unk_282DCAE70;
  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 44) = 0;
  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 76) = 0;
  *(this + 128) = 1;
  *(this + 15) = 0;
  *(this + 108) = 0;
  *(this + 160) = 1;
  *(this + 19) = 0;
  *(this + 140) = 0;
  *(this + 192) = 1;
  *(this + 23) = 0;
  *(this + 172) = 0;
  *(this + 224) = 1;
  *(this + 27) = 0;
  *(this + 204) = 0;
  *(this + 256) = 1;
  *(this + 31) = 0;
  *(this + 236) = 0;
  *(this + 288) = 1;
  *(this + 35) = 0;
  *(this + 268) = 0;
  *(this + 38) = 0;
}

void btSequentialImpulseConstraintSolver::~btSequentialImpulseConstraintSolver(btSequentialImpulseConstraintSolver *this)
{
  *this = &unk_282DCAE70;
  v2 = *(this + 35);
  if (v2 && *(this + 288) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 288) = 1;
  *(this + 35) = 0;
  *(this + 268) = 0;
  v3 = *(this + 31);
  if (v3 && *(this + 256) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 256) = 1;
  *(this + 31) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  v4 = *(this + 27);
  if (v4 && *(this + 224) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 224) = 1;
  *(this + 27) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  v5 = *(this + 23);
  if (v5 && *(this + 192) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 192) = 1;
  *(this + 23) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  v6 = *(this + 19);
  if (v6 && *(this + 160) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 160) = 1;
  *(this + 19) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  v7 = *(this + 15);
  if (v7 && *(this + 128) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(this + 128) = 1;
  *(this + 15) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v8 = *(this + 11);
  if (v8 && *(this + 96) == 1)
  {
    btAlignedFreeInternal(v8);
  }

  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v9 = *(this + 7);
  if (v9 && *(this + 64) == 1)
  {
    btAlignedFreeInternal(v9);
  }

  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v10 = *(this + 3);
  if (v10 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v10);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

{
  btSequentialImpulseConstraintSolver::~btSequentialImpulseConstraintSolver(this);

  btAlignedFreeInternal(v1);
}

float32x4_t btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  result.i32[0] = a4[6].i32[1];
  v5 = a4[7].f32[2];
  v6 = a4[1];
  v7 = vmulq_f32(v6, a2[4]);
  v8 = vmulq_f32(*a4, a2[5]);
  *v8.i32 = vadd_f32(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL))).f32[0];
  v9 = vmulq_f32(a4[3], a3[4]);
  v10 = vmulq_f32(a4[2], a3[5]);
  v11 = ((a4[7].f32[0] - (result.f32[0] * a4[7].f32[1])) - (a4[6].f32[3] * *v8.i32)) - (a4[6].f32[3] * vadd_f32(vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL))).f32[0]);
  v12 = result.f32[0] + v11;
  if ((result.f32[0] + v11) < v5 || (v5 = a4[7].f32[3], v12 > v5))
  {
    v11 = v5 - result.f32[0];
    v12 = v5;
  }

  a4[6].f32[1] = v12;
  if (a2[13].i64[0])
  {
    v13 = vmulq_n_f32(vmulq_f32(v6, a2[8]), v11);
    v13.i32[3] = 0;
    v14 = a2[6];
    v15 = a2[5];
    a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v13));
    v16 = vmulq_n_f32(v14, v11);
    v16.i32[3] = 0;
    result = vaddq_f32(v15, vmulq_f32(a4[4], v16));
    a2[5] = result;
  }

  if (a3[13].i64[0])
  {
    v17 = vmulq_n_f32(vmulq_f32(a4[3], a3[8]), v11);
    v17.i32[3] = 0;
    v19 = a3[5];
    v18 = a3[6];
    a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v17));
    v20 = vmulq_n_f32(v18, v11);
    v20.i32[3] = 0;
    result = vaddq_f32(v19, vmulq_f32(a4[5], v20));
    a3[5] = result;
  }

  return result;
}

float32x4_t btSequentialImpulseConstraintSolver::resolveSingleConstraintRowLowerLimit(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = a4[6].f32[1];
  v5 = a4[7].f32[2];
  v6 = a4[1];
  v7 = vmulq_f32(v6, a2[4]);
  v8 = vmulq_f32(*a4, a2[5]);
  *v8.i32 = vadd_f32(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL))).f32[0];
  v9 = vmulq_f32(a4[3], a3[4]);
  v10 = vmulq_f32(a4[2], a3[5]);
  v11 = ((a4[7].f32[0] - (v4 * a4[7].f32[1])) - (a4[6].f32[3] * *v8.i32)) - (a4[6].f32[3] * vadd_f32(vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL))).f32[0]);
  v12 = v4 + v11;
  result.f32[0] = v5 - v4;
  if (v12 >= v5)
  {
    result.f32[0] = v11;
  }

  else
  {
    v12 = a4[7].f32[2];
  }

  a4[6].f32[1] = v12;
  if (a2[13].i64[0])
  {
    v14 = vmulq_n_f32(vmulq_f32(v6, a2[8]), result.f32[0]);
    v14.i32[3] = 0;
    v16 = a2[5];
    v15 = a2[6];
    a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v14));
    v17 = vmulq_n_f32(v15, result.f32[0]);
    v17.i32[3] = 0;
    a2[5] = vaddq_f32(v16, vmulq_f32(a4[4], v17));
  }

  if (a3[13].i64[0])
  {
    v18 = vmulq_n_f32(vmulq_f32(a4[3], a3[8]), result.f32[0]);
    v18.i32[3] = 0;
    v20 = a3[5];
    v19 = a3[6];
    a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v18));
    v21 = vmulq_n_f32(v19, result.f32[0]);
    v21.i32[3] = 0;
    result = vaddq_f32(v20, vmulq_f32(a4[5], v21));
    a3[5] = result;
  }

  return result;
}

float32x4_t btSequentialImpulseConstraintSolver::resolveSplitPenetrationImpulseCacheFriendly(float32x4_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5 = a5[8].f32[0];
  if (v5 != 0.0)
  {
    v6 = a5[6].f32[0];
    v7 = a5[7].f32[2];
    v8 = v5 - (v6 * a5[7].f32[1]);
    v9 = a5[1];
    v10 = vmulq_f32(v9, a3[9]);
    v11 = vmulq_f32(*a5, a3[10]);
    *v11.i32 = vadd_f32(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL))).f32[0];
    v12 = vmulq_f32(a5[3], a4[9]);
    v13 = vmulq_f32(a5[2], a4[10]);
    ++gNumSplitImpulseRecoveries;
    v14 = (v8 - (a5[6].f32[3] * *v11.i32)) - (a5[6].f32[3] * vadd_f32(vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL))).f32[0]);
    v15 = v6 + v14;
    result.f32[0] = v7 - v6;
    if (v15 >= v7)
    {
      v7 = v15;
      result.f32[0] = v14;
    }

    a5[6].f32[0] = v7;
    if (a3[13].i64[0])
    {
      v16 = vmulq_n_f32(vmulq_f32(v9, a3[8]), result.f32[0]);
      v16.i32[3] = 0;
      v17 = vmulq_n_f32(a3[6], result.f32[0]);
      v17.i32[3] = 0;
      a3[9] = vaddq_f32(a3[9], vmulq_f32(a3[7], v16));
      a3[10] = vaddq_f32(a3[10], vmulq_f32(a5[4], v17));
    }

    if (a4[13].i64[0])
    {
      v18 = vmulq_n_f32(vmulq_f32(a5[3], a4[8]), result.f32[0]);
      v18.i32[3] = 0;
      v19 = vmulq_n_f32(a4[6], result.f32[0]);
      v19.i32[3] = 0;
      a4[9] = vaddq_f32(a4[9], vmulq_f32(a4[7], v18));
      result = vaddq_f32(a4[10], vmulq_f32(a5[5], v19));
      a4[10] = result;
    }
  }

  return result;
}

uint64_t btSequentialImpulseConstraintSolver::btRandInt2(btSequentialImpulseConstraintSolver *this, unsigned int a2)
{
  v2 = (1664525 * *(this + 76) + 1013904223);
  *(this + 38) = v2;
  if (a2 <= 0x10000)
  {
    v2 ^= v2 >> 16;
    if (a2 <= 0x100)
    {
      v2 ^= v2 >> 8;
      if (a2 <= 0x10)
      {
        v2 ^= v2 >> 4;
        if (a2 <= 4)
        {
          v2 ^= v2 >> 2;
          if (a2 <= 2)
          {
            v2 ^= v2 >> 1;
          }
        }
      }
    }
  }

  return (v2 % a2);
}

void btSequentialImpulseConstraintSolver::initSolverBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if ((*(a3 + 264) & 2) != 0)
    {
      v3 = a3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0uLL;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  if (v3)
  {
    *a2 = *(v3 + 16);
    *(a2 + 16) = *(v3 + 32);
    *(a2 + 32) = *(v3 + 48);
    *(a2 + 48) = *(v3 + 64);
    v5 = (v3 + 384);
    v6 = vld1q_dup_f32(v5);
    v6.i32[3] = 0;
    *(a2 + 128) = vmulq_f32(*(v3 + 400), v6);
    *(a2 + 208) = v3;
    *(a2 + 96) = *(v3 + 624);
    *(a2 + 112) = *(v3 + 400);
    *(a2 + 176) = *(v3 + 352);
    v4 = *(v3 + 368);
  }

  else
  {
    *a2 = xmmword_21C27F910;
    *(a2 + 16) = xmmword_21C27F8C0;
    *(a2 + 32) = xmmword_21C27F600;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 208) = 0;
    *(a2 + 96) = xmmword_21C280340;
    *(a2 + 112) = xmmword_21C280340;
    *(a2 + 176) = 0uLL;
  }

  *(a2 + 192) = v4;
}

double btSequentialImpulseConstraintSolver::setupFrictionConstraint(uint64_t a1, float32x4_t *a2, float32x4_t *a3, __int32 a4, __int32 a5, uint64_t a6, float32x4_t *a7, float32x4_t *a8, float a9, float a10, float32_t a11)
{
  v11 = *a3;
  a2[1] = *a3;
  v12 = vnegq_f32(v11);
  a2[3] = v12;
  v13 = *(a1 + 24);
  v14 = v13 + 224 * a4;
  v15 = v13 + 224 * a5;
  v16 = *(v14 + 208);
  v17 = *(v15 + 208);
  a2[9].i32[2] = a4;
  a2[9].i32[3] = a5;
  a2[6].i32[2] = *(a6 + 84);
  a2[8].i64[1] = 0;
  a2[6].i64[0] = 0;
  v18 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL), *a7), vmulq_f32(v11, vextq_s8(vextq_s8(*a7, *a7, 0xCuLL), *a7, 8uLL)));
  v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
  v19.i32[3] = 0;
  *a2 = v19;
  v20 = 0uLL;
  v21 = 0uLL;
  if (v16)
  {
    v22 = vmulq_f32(v16[19], v19);
    v23 = vmulq_f32(v16[20], v19);
    v24 = vmulq_f32(v16[21], v19);
    v24.i32[3] = 0;
    *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
    *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
    v21 = vmulq_f32(v22, v16[39]);
  }

  a2[4] = v21;
  v25 = vaddq_f32(vmulq_f32(vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL), *a8), vmulq_f32(v11, vextq_s8(vextq_s8(*a8, *a8, 0xCuLL), *a8, 8uLL)));
  v26 = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL);
  v26.i32[3] = 0;
  a2[2] = v26;
  if (v17)
  {
    v27 = vmulq_f32(v17[19], v26);
    v28 = vmulq_f32(v17[20], v26);
    v29 = vmulq_f32(v17[21], v26);
    v29.i32[3] = 0;
    *v27.f32 = vadd_f32(vpadd_f32(*v27.f32, *v28.i8), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
    *&v27.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
    v20 = vmulq_f32(v27, v17[39]);
  }

  a2[5] = v20;
  v30 = 0.0;
  v31 = 0.0;
  if (v16)
  {
    v32 = vsubq_f32(vmulq_f32(v21, vextq_s8(vextq_s8(*a7, *a7, 0xCuLL), *a7, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL), *a7));
    v33 = vextq_s8(vextq_s8(v32, v32, 0xCuLL), v32, 8uLL);
    v33.i32[3] = 0;
    v34 = vmulq_f32(*a3, v33);
    v31 = v16[24].f32[0] + vadd_f32(vpadd_f32(*v34.i8, *v34.i8), *&vextq_s8(v34, v34, 8uLL)).f32[0];
  }

  if (v17)
  {
    v35 = vnegq_f32(v20);
    v36 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(*a8, *a8, 0xCuLL), *a8, 8uLL), v35), vmulq_f32(*a8, vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL)));
    v37 = vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL);
    v37.i32[3] = 0;
    v38 = vmulq_f32(*a3, v37);
    v30 = v17[24].f32[0] + vadd_f32(vpadd_f32(*v38.i8, *v38.i8), *&vextq_s8(v38, v38, 8uLL)).f32[0];
  }

  v39 = a9 / (v31 + v30);
  a2[6].f32[3] = v39;
  if (!v16)
  {
    v40 = 0uLL;
    v46 = vmulq_f32(v11, 0);
    v42 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), vpadd_f32(*v46.i8, *v46.i8)).u32[0];
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_13:
    v47.i64[0] = 0x8000000080000000;
    v47.i64[1] = 0x8000000080000000;
    v48 = vmulq_f32(v11, v47);
    v45 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), vpadd_f32(*v48.i8, *v48.i8)).u32[0];
    v43 = 0uLL;
    goto LABEL_14;
  }

  v40 = *(v14 + 192);
  v41 = vmulq_f32(v11, *(v14 + 176));
  v42 = vadd_f32(vpadd_f32(*v41.i8, *v41.i8), *&vextq_s8(v41, v41, 8uLL)).u32[0];
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_11:
  v43 = *(v15 + 192);
  v44 = vmulq_f32(*(v15 + 176), v12);
  v45 = vadd_f32(vpadd_f32(*v44.i8, *v44.i8), *&vextq_s8(v44, v44, 8uLL)).u32[0];
LABEL_14:
  v49 = vmulq_f32(v40, v19);
  v50 = vmulq_f32(v43, v26);
  a2[7].f32[0] = v39 * (a10 - ((*&v42 + vadd_f32(*&vextq_s8(v49, v49, 8uLL), vpadd_f32(*v49.i8, *v49.i8)).f32[0]) + (*&v45 + vadd_f32(vpadd_f32(*v50.i8, *v50.i8), *&vextq_s8(v50, v50, 8uLL)).f32[0])));
  a2[7].f32[1] = a11;
  result = 6.08244611e77;
  a2[7].i64[1] = 0x501502F900000000;
  return result;
}

float32x4_t *btSequentialImpulseConstraintSolver::addFrictionConstraint(btSequentialImpulseConstraintSolver *this, float32x4_t *a2, __int32 a3, __int32 a4, __int32 a5, btManifoldPoint *a6, float32x4_t *a7, float32x4_t *a8, float a9, float a10, float32_t a11, btCollisionObject *a12, btCollisionObject *a13)
{
  v23 = *(this + 27);
  if (v23 == *(this + 28) && (!v23 ? (v24 = 1) : (v24 = 2 * v23), v23 < v24))
  {
    if (v24)
    {
      v25 = a8;
      v26 = btAlignedAllocInternal(160 * v24, 16);
      a8 = v25;
      v27 = v26;
      v28 = *(this + 27);
    }

    else
    {
      v27 = 0;
      v28 = *(this + 27);
    }

    if (v28 >= 1)
    {
      v30 = 0;
      v31 = 160 * v28;
      do
      {
        v32 = (v27 + v30);
        v33 = (*(this + 15) + v30);
        *v32 = *v33;
        v32[1] = v33[1];
        v32[2] = v33[2];
        v32[3] = v33[3];
        v32[4] = v33[4];
        v32[5] = v33[5];
        v34 = v33[6];
        v35 = v33[7];
        v36 = v33[9];
        v32[8] = v33[8];
        v32[9] = v36;
        v32[6] = v34;
        v32[7] = v35;
        v30 += 160;
      }

      while (v31 != v30);
    }

    v37 = *(this + 15);
    if (v37 && *(this + 128) == 1)
    {
      v40 = a8;
      btAlignedFreeInternal(v37);
      a8 = v40;
    }

    *(this + 128) = 1;
    *(this + 15) = v27;
    *(this + 28) = v24;
    v29 = *(this + 27);
  }

  else
  {
    v29 = *(this + 27);
  }

  *(this + 27) = v29 + 1;
  v38 = (*(this + 15) + 160 * v23);
  v38[9].i32[1] = a5;
  btSequentialImpulseConstraintSolver::setupFrictionConstraint(this, v38, a2, a3, a4, a6, a7, a8, a9, a10, a11);
  return v38;
}

double btSequentialImpulseConstraintSolver::setupRollingFrictionConstraint(uint64_t a1, uint64_t a2, int8x16_t *a3, int a4, int a5, uint64_t a6, double a7, float a8, float a9)
{
  v9 = 0uLL;
  *(a2 + 16) = 0u;
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  *(a2 + 48) = v10;
  v11 = *(a1 + 24);
  v12 = v11 + 224 * a4;
  v13 = v11 + 224 * a5;
  v14 = *(v12 + 208);
  v15 = *(v13 + 208);
  *(a2 + 152) = a4;
  *(a2 + 156) = a5;
  *(a2 + 104) = *(a6 + 88);
  *(a2 + 136) = 0;
  *(a2 + 96) = 0;
  v16 = veorq_s8(*a3, v10);
  *a2 = v16;
  v17 = 0uLL;
  if (v14)
  {
    v18 = vmulq_f32(v14[19], v16);
    v19 = vmulq_f32(v14[20], v16);
    v20 = vmulq_f32(v14[21], v16);
    v20.i32[3] = 0;
    *v18.f32 = vadd_f32(vpadd_f32(*v18.f32, *v19.i8), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
    *&v18.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
    v17 = vmulq_f32(v18, v14[39]);
  }

  *(a2 + 64) = v17;
  v21 = *a3;
  *(a2 + 32) = *a3;
  if (v15)
  {
    v22 = vmulq_f32(v21, v15[19]);
    v23 = vmulq_f32(v21, v15[20]);
    v24 = vmulq_f32(v21, v15[21]);
    v24.i32[3] = 0;
    *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
    *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
    v9 = vmulq_f32(v22, v15[39]);
  }

  *(a2 + 80) = v9;
  v25 = 0uLL;
  v26 = 0uLL;
  if (v14)
  {
    v27 = vmulq_f32(v14[19], v16);
    v28 = vmulq_f32(v14[20], v16);
    v29 = vmulq_f32(v14[21], v16);
    v29.i32[3] = 0;
    *v26.f32 = vadd_f32(vpadd_f32(*v27.i8, *v28.i8), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
    *&v26.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
  }

  if (v15)
  {
    v30 = vmulq_f32(v21, v15[19]);
    v31 = vmulq_f32(v21, v15[20]);
    v32 = vmulq_f32(v21, v15[21]);
    v32.i32[3] = 0;
    *v25.f32 = vadd_f32(vpadd_f32(*v30.i8, *v31.i8), vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL)));
    *&v25.u32[2] = vpadd_f32(vpadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)), 0);
  }

  v33 = vmulq_f32(v26, v16);
  v34 = vmulq_f32(v21, v25);
  v35 = 1.0 / ((vadd_f32(*&vextq_s8(v33, v33, 8uLL), vpadd_f32(*v33.i8, *v33.i8)).f32[0] + 0.0) + vadd_f32(vpadd_f32(*v34.i8, *v34.i8), *&vextq_s8(v34, v34, 8uLL)).f32[0]);
  *(a2 + 108) = v35;
  if (!v14)
  {
    v38 = vpadd_f32(0, 0).f32[0] + 0.0;
    v36 = 0uLL;
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_13:
    v42 = vpadd_f32(0x8000000080000000, 0x8000000080000000).u32[0];
    v40 = 0uLL;
    goto LABEL_14;
  }

  v36 = *(v12 + 192);
  v37 = vmulq_f32(*(v12 + 176), 0);
  LODWORD(v38) = vadd_f32(vpadd_f32(*v37.i8, *v37.i8), *&vextq_s8(v37, v37, 8uLL)).u32[0];
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_11:
  v39.i64[0] = 0x8000000080000000;
  v39.i64[1] = 0x8000000080000000;
  v40 = *(v13 + 192);
  v41 = vmulq_f32(*(v13 + 176), v39);
  v42 = vadd_f32(vpadd_f32(*v41.i8, *v41.i8), *&vextq_s8(v41, v41, 8uLL)).u32[0];
LABEL_14:
  v43 = vmulq_f32(v36, v16);
  v44 = vmulq_f32(v21, v40);
  *(a2 + 112) = v35 * (a8 - ((v38 + vadd_f32(*&vextq_s8(v43, v43, 8uLL), vpadd_f32(*v43.i8, *v43.i8)).f32[0]) + (*&v42 + vadd_f32(vpadd_f32(*v44.i8, *v44.i8), *&vextq_s8(v44, v44, 8uLL)).f32[0])));
  *(a2 + 116) = a9;
  result = 6.08244611e77;
  *(a2 + 120) = 0x501502F900000000;
  return result;
}

uint64_t btSequentialImpulseConstraintSolver::addRollingFrictionConstraint(btSequentialImpulseConstraintSolver *this, int8x16_t *a2, int a3, int a4, int a5, btManifoldPoint *a6, const btVector3 *a7, const btVector3 *a8, __n128 a9, float a10, float a11, btCollisionObject *a12, btCollisionObject *a13)
{
  v21 = *(this + 35);
  if (v21 == *(this + 36) && (!v21 ? (v22 = 1) : (v22 = 2 * v21), v21 < v22))
  {
    if (v22)
    {
      v23 = btAlignedAllocInternal(160 * v22, 16);
      v24 = *(this + 35);
    }

    else
    {
      v23 = 0;
      v24 = *(this + 35);
    }

    if (v24 >= 1)
    {
      v26 = 0;
      v27 = 160 * v24;
      do
      {
        v28 = v23 + v26;
        v29 = *(this + 19) + v26;
        *v28 = *v29;
        *(v28 + 16) = *(v29 + 16);
        *(v28 + 32) = *(v29 + 32);
        *(v28 + 48) = *(v29 + 48);
        *(v28 + 64) = *(v29 + 64);
        *(v28 + 80) = *(v29 + 80);
        a9 = *(v29 + 96);
        v30 = *(v29 + 112);
        v31 = *(v29 + 144);
        *(v28 + 128) = *(v29 + 128);
        *(v28 + 144) = v31;
        *(v28 + 96) = a9;
        *(v28 + 112) = v30;
        v26 += 160;
      }

      while (v27 != v26);
    }

    v32 = *(this + 19);
    if (v32 && *(this + 160) == 1)
    {
      btAlignedFreeInternal(v32);
    }

    *(this + 160) = 1;
    *(this + 19) = v23;
    *(this + 36) = v22;
    v25 = *(this + 35);
  }

  else
  {
    v25 = *(this + 35);
  }

  *(this + 35) = v25 + 1;
  v33 = *(this + 19) + 160 * v21;
  *(v33 + 148) = a5;
  btSequentialImpulseConstraintSolver::setupRollingFrictionConstraint(this, v33, a2, a3, a4, a6, a9.n128_f64[0], a10, a11);
  return v33;
}

uint64_t btSequentialImpulseConstraintSolver::getOrInitSolverBody(btSequentialImpulseConstraintSolver *this, btCollisionObject *a2)
{
  v2 = *(a2 + 60);
  if ((v2 & 0x80000000) != 0)
  {
    if ((*(a2 + 264) & 2) != 0 && ((v4 = this, *(a2 + 96) != 0.0) || (*(a2 + 232) & 2) != 0))
    {
      v2 = *(this + 3);
      v5 = *(this + 3);
      if (v2 == *(this + 4))
      {
        v6 = v2 ? 2 * v2 : 1;
        v5 = *(this + 3);
        if (v2 < v6)
        {
          if (v6)
          {
            v7 = btAlignedAllocInternal(224 * v6, 16);
          }

          else
          {
            v7 = 0;
          }

          v8 = *(v4 + 3);
          if (v8 >= 1)
          {
            v9 = 0;
            v10 = 224 * v8;
            do
            {
              v11 = *(v4 + 3) + v9;
              v12 = v7 + v9;
              *v12 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *(v12 + 32) = *(v11 + 32);
              *(v12 + 48) = *(v11 + 48);
              *(v12 + 64) = *(v11 + 64);
              *(v12 + 80) = *(v11 + 80);
              *(v12 + 96) = *(v11 + 96);
              *(v12 + 112) = *(v11 + 112);
              *(v12 + 128) = *(v11 + 128);
              *(v12 + 144) = *(v11 + 144);
              *(v12 + 160) = *(v11 + 160);
              *(v12 + 176) = *(v11 + 176);
              *(v12 + 192) = *(v11 + 192);
              *(v12 + 208) = *(v11 + 208);
              v9 += 224;
            }

            while (v10 != v9);
          }

          this = *(v4 + 3);
          if (this && *(v4 + 32) == 1)
          {
            btAlignedFreeInternal(this);
          }

          *(v4 + 32) = 1;
          *(v4 + 3) = v7;
          *(v4 + 4) = v6;
          v5 = *(v4 + 3);
        }
      }

      *(v4 + 3) = v5 + 1;
      v13 = *(v4 + 3) + 224 * v2;
      *(v13 + 208) = 0;
      *(v13 + 176) = 0u;
      *(v13 + 192) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0u;
      *v13 = 0u;
      btSequentialImpulseConstraintSolver::initSolverBody(this, *(v4 + 3) + 224 * v2, a2);
      *(a2 + 60) = v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t btSequentialImpulseConstraintSolver::setupContactConstraint(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, float32x4_t *a7, float *a8, float *a9, float32x4_t *a10, float32x4_t *a11)
{
  v11 = *(result + 24);
  v12 = v11 + 224 * a3;
  v13 = v11 + 224 * a4;
  v14 = *(v12 + 208);
  v15 = *(v13 + 208);
  v16 = vsubq_f32(*(a5 + 48), *(v12 + 48));
  v16.i32[3] = 0;
  *a10 = v16;
  v17 = vsubq_f32(*(a5 + 32), *(v13 + 48));
  v17.i32[3] = 0;
  *a11 = v17;
  *a9 = 1.0;
  v18 = vsubq_f32(vmulq_f32(*a10, vextq_s8(vextq_s8(*(a5 + 64), *(a5 + 64), 0xCuLL), *(a5 + 64), 8uLL)), vmulq_f32(*(a5 + 64), vextq_s8(vextq_s8(*a10, *a10, 0xCuLL), *a10, 8uLL)));
  v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
  v19.i32[3] = 0;
  v20 = 0uLL;
  v21 = 0uLL;
  if (v14)
  {
    v22 = vmulq_f32(v14[19], v19);
    v23 = vmulq_f32(v14[20], v19);
    v24 = vmulq_f32(v14[21], v19);
    v24.i32[3] = 0;
    *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
    *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
    v21 = vmulq_f32(v22, v14[39]);
  }

  *(a2 + 64) = v21;
  v25 = vsubq_f32(vmulq_f32(*a11, vextq_s8(vextq_s8(*(a5 + 64), *(a5 + 64), 0xCuLL), *(a5 + 64), 8uLL)), vmulq_f32(*(a5 + 64), vextq_s8(vextq_s8(*a11, *a11, 0xCuLL), *a11, 8uLL)));
  v26 = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL);
  v26.i32[3] = 0;
  if (v15)
  {
    v27.i64[0] = 0x8000000080000000;
    v27.i64[1] = 0x8000000080000000;
    v28 = veorq_s8(v26, v27);
    v29 = vmulq_f32(v15[19], v28);
    v30 = vmulq_f32(v15[20], v28);
    v31 = vmulq_f32(v15[21], v28);
    v31.i32[3] = 0;
    *v29.f32 = vadd_f32(vpadd_f32(*v29.f32, *v30.i8), vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)));
    *&v29.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
    v20 = vmulq_f32(v29, v15[39]);
  }

  *(a2 + 80) = v20;
  v32 = 0.0;
  v33 = 0.0;
  if (v14)
  {
    v34 = vsubq_f32(vmulq_f32(v21, vextq_s8(vextq_s8(*a10, *a10, 0xCuLL), *a10, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL), *a10));
    v35 = vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL);
    v35.i32[3] = 0;
    v36 = vmulq_f32(*(a5 + 64), v35);
    v33 = v14[24].f32[0] + vadd_f32(vpadd_f32(*v36.i8, *v36.i8), *&vextq_s8(v36, v36, 8uLL)).f32[0];
  }

  if (v15)
  {
    v37 = vnegq_f32(v20);
    v38 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(*a11, *a11, 0xCuLL), *a11, 8uLL), v37), vmulq_f32(*a11, vextq_s8(vextq_s8(v37, v37, 0xCuLL), v37, 8uLL)));
    v39 = vextq_s8(vextq_s8(v38, v38, 0xCuLL), v38, 8uLL);
    v39.i32[3] = 0;
    v40 = vmulq_f32(*(a5 + 64), v39);
    v32 = v15[24].f32[0] + vadd_f32(vpadd_f32(*v40.i8, *v40.i8), *&vextq_s8(v40, v40, 8uLL)).f32[0];
  }

  *(a2 + 108) = *a9 / (v33 + v32);
  v41 = *(a5 + 64);
  *a2 = v19;
  *(a2 + 16) = v41;
  v42.i64[0] = 0x8000000080000000;
  v42.i64[1] = 0x8000000080000000;
  *(a2 + 32) = veorq_s8(v26, v42);
  *(a2 + 48) = vnegq_f32(v41);
  v43 = 0uLL;
  v44 = 0uLL;
  if (v14)
  {
    v45 = vsubq_f32(vmulq_f32(v14[23], vextq_s8(vextq_s8(*a10, *a10, 0xCuLL), *a10, 8uLL)), vmulq_f32(*a10, vextq_s8(vextq_s8(v14[23], v14[23], 0xCuLL), v14[23], 8uLL)));
    v46 = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL);
    v46.i32[3] = 0;
    v44 = vaddq_f32(v14[22], v46);
  }

  if (v15)
  {
    v47 = vsubq_f32(vmulq_f32(v15[23], vextq_s8(vextq_s8(*a11, *a11, 0xCuLL), *a11, 8uLL)), vmulq_f32(*a11, vextq_s8(vextq_s8(v15[23], v15[23], 0xCuLL), v15[23], 8uLL)));
    v48 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
    v48.i32[3] = 0;
    v43 = vaddq_f32(v15[22], v48);
  }

  v49 = *(a5 + 80);
  v50 = *(a6 + 56);
  v51 = vsubq_f32(v44, v43);
  v51.i32[3] = 0;
  *a7 = v51;
  v52 = vmulq_f32(*(a5 + 64), v51);
  *a8 = vadd_f32(vpadd_f32(*v52.i8, *v52.i8), *&vextq_s8(v52, v52, 8uLL)).u32[0];
  *(a2 + 104) = *(a5 + 84);
  v53 = -(*a8 * *(a5 + 92));
  if (v53 <= 0.0)
  {
    v53 = 0.0;
  }

  if ((*(a6 + 64) & 4) != 0)
  {
    v54 = *(a5 + 124) * *(a6 + 60);
    *(a2 + 100) = v54;
    if (v14 && *(v12 + 208))
    {
      v55 = vmulq_n_f32(vmulq_f32(vmulq_f32(*(a2 + 16), *(v12 + 128)), v14[25]), v54);
      v55.i32[3] = 0;
      v56 = *(v12 + 96);
      v57 = *(v12 + 80);
      *(v12 + 64) = vaddq_f32(*(v12 + 64), vmulq_f32(*(v12 + 112), v55));
      v58 = vmulq_n_f32(v56, v54);
      v58.i32[3] = 0;
      *(v12 + 80) = vaddq_f32(v57, vmulq_f32(*(a2 + 64), v58));
    }

    if (v15 && *(v13 + 208))
    {
      v59 = -*(a2 + 100);
      v60.i64[0] = 0x8000000080000000;
      v60.i64[1] = 0x8000000080000000;
      v61 = veorq_s8(*(a2 + 80), v60);
      v62 = vmulq_n_f32(vmulq_f32(v15[25], vmulq_f32(*(v13 + 128), veorq_s8(*(a2 + 48), v60))), v59);
      v62.i32[3] = 0;
      v63 = vmulq_n_f32(*(v13 + 96), v59);
      v63.i32[3] = 0;
      v64 = vaddq_f32(*(v13 + 80), vmulq_f32(v61, v63));
      *(v13 + 64) = vaddq_f32(*(v13 + 64), vmulq_f32(*(v13 + 112), v62));
      *(v13 + 80) = v64;
    }
  }

  else
  {
    *(a2 + 100) = 0;
  }

  *(a2 + 96) = 0;
  if (v14)
  {
    v65 = *(v12 + 192);
    v66 = vmulq_f32(*(v12 + 176), *(a2 + 16));
  }

  else
  {
    v65 = 0uLL;
    v66 = vmulq_f32(*(a2 + 16), 0);
  }

  v67 = v49 + v50;
  v68 = vmulq_f32(v65, *a2);
  v69 = vadd_f32(vpadd_f32(*v66.i8, *v66.i8), *&vextq_s8(v66, v66, 8uLL)).f32[0] + vadd_f32(vpadd_f32(*v68.i8, *v68.i8), *&vextq_s8(v68, v68, 8uLL)).f32[0];
  if (v15)
  {
    v70 = *(v13 + 192);
    v71 = vmulq_f32(*(v13 + 176), *(a2 + 48));
  }

  else
  {
    v70 = 0uLL;
    v71 = vmulq_f32(*(a2 + 48), 0);
  }

  v72 = vmulq_f32(v70, *(a2 + 32));
  v73 = v53 - (v69 + (vadd_f32(vpadd_f32(*v71.i8, *v71.i8), *&vextq_s8(v71, v71, 8uLL)).f32[0] + vadd_f32(vpadd_f32(*v72.i8, *v72.i8), *&vextq_s8(v72, v72, 8uLL)).f32[0]));
  v75 = v67 > *(a6 + 48) || *(a6 + 44) == 0;
  if (v67 <= 0.0)
  {
    v77 = 36;
    if (v75)
    {
      v77 = 32;
    }

    v76 = -(v67 * *(a6 + v77)) / *(a6 + 12);
  }

  else
  {
    v73 = v73 - (v67 / *(a6 + 12));
    v76 = 0.0;
  }

  v78 = *(a2 + 108);
  v79 = v76 * v78;
  v80 = v73 * v78;
  if (v75)
  {
    v80 = v79 + v80;
  }

  *(a2 + 112) = v80;
  if (v75)
  {
    v81 = 0.0;
  }

  else
  {
    v81 = v79;
  }

  *(a2 + 128) = v81;
  *(a2 + 116) = 0;
  *(a2 + 120) = 0;
  *(a2 + 124) = 1343554297;
  return result;
}

float32x4_t btSequentialImpulseConstraintSolver::setFrictionConstraintImpulse(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, float32x4_t result)
{
  v7 = *(a1 + 24);
  v8 = v7 + 224 * a3;
  v9 = (v7 + 224 * a4);
  v10 = *(v8 + 208);
  v11 = v9[13].i64[0];
  v12 = *(a1 + 120) + 160 * *(a2 + 148);
  if ((*(a6 + 64) & 4) != 0)
  {
    result.f32[0] = *(a5 + 128) * *(a6 + 60);
    *(v12 + 100) = result.i32[0];
    if (v10)
    {
      v13 = vmulq_n_f32(vmulq_f32(v10[25], vmulq_n_f32(*(v12 + 16), v10[24].f32[0])), result.f32[0]);
      v13.i32[3] = 0;
      v14 = *(v8 + 96);
      v15 = *(v8 + 80);
      *(v8 + 64) = vaddq_f32(*(v8 + 64), vmulq_f32(*(v8 + 112), v13));
      v16 = vmulq_n_f32(v14, result.f32[0]);
      v16.i32[3] = 0;
      result = vaddq_f32(v15, vmulq_f32(*(v12 + 64), v16));
      *(v8 + 80) = result;
    }

    if (v11)
    {
      v17.i64[0] = 0x8000000080000000;
      v17.i64[1] = 0x8000000080000000;
      v18 = -*(v12 + 100);
      v19 = vmulq_n_f32(vmulq_f32(v11[25], vmulq_n_f32(veorq_s8(*(v12 + 48), v17), v11[24].f32[0])), v18);
      v19.i32[3] = 0;
      result = vaddq_f32(v9[4], vmulq_f32(v9[7], v19));
      v20 = vmulq_n_f32(v9[6], v18);
      v20.i32[3] = 0;
      v21 = vaddq_f32(v9[5], vmulq_f32(veorq_s8(*(v12 + 80), v17), v20));
      v9[4] = result;
      v9[5] = v21;
    }
  }

  else
  {
    *(v12 + 100) = 0;
  }

  v22 = *(a6 + 64);
  if ((v22 & 0x10) != 0)
  {
    v23 = *(a1 + 120) + 160 * *(a2 + 148);
    if ((v22 & 4) != 0)
    {
      result.f32[0] = *(a5 + 132) * *(a6 + 60);
      *(v23 + 260) = result.i32[0];
      if (v10)
      {
        v24 = vmulq_n_f32(vmulq_n_f32(*(v23 + 176), v10[24].f32[0]), result.f32[0]);
        v24.i32[3] = 0;
        v25 = *(v8 + 96);
        v26 = *(v8 + 80);
        *(v8 + 64) = vaddq_f32(*(v8 + 64), vmulq_f32(*(v8 + 112), v24));
        v27 = vmulq_n_f32(v25, result.f32[0]);
        v27.i32[3] = 0;
        result = vaddq_f32(v26, vmulq_f32(*(v23 + 224), v27));
        *(v8 + 80) = result;
      }

      if (v11)
      {
        v28.i64[0] = 0x8000000080000000;
        v28.i64[1] = 0x8000000080000000;
        v29 = -*(v23 + 260);
        v30 = vmulq_n_f32(vmulq_n_f32(veorq_s8(*(v23 + 208), v28), v11[24].f32[0]), v29);
        v30.i32[3] = 0;
        result = vaddq_f32(v9[4], vmulq_f32(v9[7], v30));
        v31 = vmulq_n_f32(v9[6], v29);
        v31.i32[3] = 0;
        v32 = vaddq_f32(v9[5], vmulq_f32(veorq_s8(*(v23 + 240), v28), v31));
        v9[4] = result;
        v9[5] = v32;
      }
    }

    else
    {
      *(v23 + 260) = 0;
    }
  }

  return result;
}

void btSequentialImpulseConstraintSolver::convertContact(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 784);
  v7 = *(a2 + 792);
  inited = btSequentialImpulseConstraintSolver::getOrInitSolverBody(a1, v6);
  v140 = v7;
  v9 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(a1, v7);
  v10 = *(a1 + 24);
  v136 = (v10 + 224 * v9);
  v137 = (v10 + 224 * inited);
  if (v137[8].f32[0] != 0.0 || v137[8].f32[1] != 0.0 || v137[8].f32[2] != 0.0 || v136[8].f32[0] != 0.0 || v136[8].f32[1] != 0.0 || v136[8].f32[2] != 0.0)
  {
    v11 = *(a2 + 800);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = a2 + 16;
      v139 = 1;
      v138 = v6;
      while (1)
      {
        v14 = v13 + 192 * v12;
        if (*(v14 + 80) <= *(a2 + 808))
        {
          break;
        }

LABEL_78:
        if (++v12 >= v11)
        {
          return;
        }
      }

      v144 = 0;
      v15 = *(a1 + 44);
      v16 = v15;
      if (v15 == *(a1 + 48))
      {
        v17 = v15 ? 2 * v15 : 1;
        v16 = *(a1 + 44);
        if (v15 < v17)
        {
          if (v17)
          {
            v18 = btAlignedAllocInternal(160 * v17, 16);
          }

          else
          {
            v18 = 0;
          }

          v19 = *(a1 + 44);
          if (v19 >= 1)
          {
            v20 = 0;
            v21 = 160 * v19;
            do
            {
              v22 = (v18 + v20);
              v23 = (*(a1 + 56) + v20);
              *v22 = *v23;
              v22[1] = v23[1];
              v22[2] = v23[2];
              v22[3] = v23[3];
              v22[4] = v23[4];
              v22[5] = v23[5];
              v24 = v23[6];
              v25 = v23[7];
              v26 = v23[9];
              v22[8] = v23[8];
              v22[9] = v26;
              v22[6] = v24;
              v22[7] = v25;
              v20 += 160;
            }

            while (v21 != v20);
          }

          v27 = *(a1 + 56);
          if (v27 && *(a1 + 64) == 1)
          {
            btAlignedFreeInternal(v27);
          }

          *(a1 + 64) = 1;
          *(a1 + 56) = v18;
          *(a1 + 48) = v17;
          v16 = *(a1 + 44);
        }
      }

      *(a1 + 44) = v16 + 1;
      v28 = *(a1 + 56) + 160 * v15;
      *(v28 + 152) = inited;
      *(v28 + 156) = v9;
      *(v28 + 136) = v14;
      btSequentialImpulseConstraintSolver::setupContactConstraint(a1, v28, inited, v9, v14, a3, &v143, &v144, &v144 + 1, &v146, &v145);
      *(v28 + 148) = *(a1 + 108);
      v31 = 0uLL;
      v32 = 0uLL;
      if (v137[13].i64[0])
      {
        v32 = vaddq_f32(v137[12], v137[5]);
      }

      v33 = v138;
      if (v136[13].i64[0])
      {
        v31 = vaddq_f32(v136[12], v136[5]);
      }

      if (*(v14 + 88) <= 0.0 || v139 < 1)
      {
LABEL_55:
        if (*(a3 + 64) & 0x20) != 0 && (*(v14 + 120))
        {
          v88 = *(&v144 + 1);
          btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 160), inited, v9, v15, v14, &v146, &v145, *(&v144 + 1), *(v14 + 136), *(v14 + 144), v132, v134);
          if ((*(a3 + 64) & 0x10) != 0)
          {
            btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 176), inited, v9, v15, v14, &v146, &v145, v88, *(v14 + 140), *(v14 + 148), v133, v135);
          }

          btSequentialImpulseConstraintSolver::setFrictionConstraintImpulse(a1, v28, inited, v9, v14, a3, v89);
        }

        else
        {
          v90 = *(v14 + 64);
          v91 = vsubq_f32(v143, vmulq_n_f32(v90, *&v144));
          v91.i32[3] = 0;
          *(v14 + 160) = v91;
          v92 = *(a3 + 64);
          if ((v92 & 0x40) != 0 || (v93 = vmulq_f32(v91, v91), v94 = vadd_f32(vpadd_f32(*v93.i8, *v93.i8), *&vextq_s8(v93, v93, 8uLL)).f32[0], v94 <= 0.00000011921))
          {
            v100 = v90.f32[1];
            v101 = fabsf(v90.f32[2]) <= 0.70711;
            v102 = (v100 * v100) + (v90.f32[0] * v90.f32[0]);
            v103 = 1.0 / sqrtf(v102);
            v104 = -(v90.f32[1] * v103);
            v105 = v90.f32[0] * v103;
            v106 = -(v90.f32[2] * (v90.f32[0] * v103));
            v107 = v90.f32[2] * v104;
            v108 = v102 * v103;
            v109 = (v90.f32[2] * v90.f32[2]) + (v100 * v100);
            v110 = 1.0 / sqrtf(v109);
            v111 = -(v90.f32[2] * v110);
            v112 = v90.f32[1] * v110;
            v113 = v109 * v110;
            v114 = -(v90.f32[0] * (v90.f32[1] * v110));
            v115 = v111 * v90.f32[0];
            if (v101)
            {
              v111 = v105;
              v112 = 0.0;
            }

            else
            {
              v104 = 0.0;
            }

            if (v101)
            {
              v113 = v106;
              v116 = v107;
            }

            else
            {
              v116 = v114;
            }

            if (v101)
            {
              v115 = v108;
            }

            *(v14 + 160) = v104;
            *(v14 + 164) = v111;
            *(v14 + 168) = v112;
            *(v14 + 176) = v113;
            *(v14 + 180) = v116;
            *(v14 + 184) = v115;
            v117 = *(&v144 + 1);
            if ((v92 & 0x10) != 0)
            {
              applyAnisotropicFriction(v138, (v14 + 176), 1);
              applyAnisotropicFriction(v140, (v14 + 176), 1);
              btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 176), inited, v9, v15, v14, &v146, &v145, v117, 0.0, 0.0, v132, v134);
            }

            applyAnisotropicFriction(v138, (v14 + 160), 1);
            applyAnisotropicFriction(v140, (v14 + 160), 1);
            btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 160), inited, v9, v15, v14, &v146, &v145, v117, 0.0, 0.0, v132, v134);
            if ((~*(a3 + 64) & 0x50) == 0)
            {
              *(v14 + 120) = 1;
            }
          }

          else
          {
            v95 = vmulq_n_f32(v91, 1.0 / sqrtf(v94));
            *(v14 + 160) = v95;
            v96 = *(&v144 + 1);
            if ((*(a3 + 64) & 0x10) != 0)
            {
              v97 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v90, v90, 0xCuLL), v90, 8uLL), v95), vmulq_f32(v90, vextq_s8(vextq_s8(v95, v95, 0xCuLL), v95, 8uLL)));
              v98 = vextq_s8(vextq_s8(v97, v97, 0xCuLL), v97, 8uLL);
              v98.i32[3] = 0;
              v99 = vmulq_f32(v98, v98);
              *(v14 + 176) = vmulq_n_f32(v98, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v99, v99, 8uLL), vpadd_f32(*v99.i8, *v99.i8)).f32[0]));
              applyAnisotropicFriction(v138, (v14 + 176), 1);
              applyAnisotropicFriction(v140, (v14 + 176), 1);
              v33 = v138;
              btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 176), inited, v9, v15, v14, &v146, &v145, v96, 0.0, 0.0, v132, v134);
            }

            applyAnisotropicFriction(v33, (v14 + 160), 1);
            applyAnisotropicFriction(v140, (v14 + 160), 1);
            btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 160), inited, v9, v15, v14, &v146, &v145, v96, 0.0, 0.0, v132, v134);
          }
        }

        v11 = *(a2 + 800);
        v13 = a2 + 16;
        goto LABEL_78;
      }

      v35 = vsubq_f32(v31, v32);
      v35.n128_u32[3] = 0;
      v36 = vmulq_f32(v35, v35);
      v37 = sqrtf(vadd_f32(*&vextq_s8(v36, v36, 8uLL), vpadd_f32(*v36.i8, *v36.i8)).f32[0]);
      if (v37 > *(a3 + 80))
      {
        v38 = vmulq_n_f32(v35, 1.0 / v37);
        v142 = v38;
        if ((*(v138 + 192) & 2) != 0)
        {
          v39 = *(v138 + 1);
          v39.i32[3] = 0;
          v40 = *(v138 + 2);
          v40.i32[3] = 0;
          v41 = *(v138 + 3);
          v41.i32[3] = 0;
          v42 = vmulq_f32(*(v138 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v39, v38.var0.var0[0]), vmulq_lane_f32(v40, *v38.var0.var0, 1)), vmulq_laneq_f32(v41, v38, 2)));
          v43 = vmulq_f32(v42, *(v138 + 1));
          v44 = vmulq_f32(v42, *(v138 + 2));
          v45 = vmulq_f32(v42, *(v138 + 3));
          v45.i32[3] = 0;
          *v38.var0.var0 = vadd_f32(vpadd_f32(*v43.i8, *v44.i8), vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)));
          *&v38.var0.var0[2] = vpadd_f32(vpadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)), 0);
          v142 = v38;
        }

        if ((*(v140 + 192) & 2) != 0)
        {
          v46 = *(v140 + 1);
          v46.i32[3] = 0;
          v47 = *(v140 + 2);
          v47.i32[3] = 0;
          v48 = *(v140 + 3);
          v48.i32[3] = 0;
          v49 = vmulq_f32(*(v140 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v46, v38.var0.var0[0]), vmulq_lane_f32(v47, *v38.var0.var0, 1)), vmulq_laneq_f32(v48, v38, 2)));
          v50 = vmulq_f32(v49, *(v140 + 1));
          v51 = vmulq_f32(v49, *(v140 + 2));
          v52 = vmulq_f32(v49, *(v140 + 3));
          v52.i32[3] = 0;
          *v38.var0.var0 = vadd_f32(vpadd_f32(*v50.i8, *v51.i8), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
          *&v38.var0.var0[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
          v142 = v38;
        }

        v53 = vmulq_f32(v38, v38);
        v54 = vpadd_f32(*v53.i8, *v53.i8);
        v55 = vextq_s8(v53, v53, 8uLL);
        v55.n128_f64[0] = sqrtf(vadd_f32(v54, v55.n128_u64[0]).f32[0]);
        if (v55.n128_f64[0] <= 0.001)
        {
          goto LABEL_54;
        }

        v56 = &v142;
LABEL_53:
        btSequentialImpulseConstraintSolver::addRollingFrictionConstraint(a1, v56, inited, v9, v15, v14, v29, v30, v55, 0.0, 0.0, v132, v134);
LABEL_54:
        v139 = 0;
        goto LABEL_55;
      }

      btSequentialImpulseConstraintSolver::addRollingFrictionConstraint(a1, (v14 + 64), inited, v9, v15, v14, v29, v30, v35, 0.0, 0.0, v132, v134);
      v57 = *(v14 + 72);
      if (fabsf(v57) <= 0.70711)
      {
        v63 = *(v14 + 64);
        v64 = *(v14 + 68);
        v65 = (v64 * v64) + (v63 * v63);
        v66 = 1.0 / sqrtf(v65);
        v142.var0.var0[0] = -(v64 * v66);
        v142.var0.var0[1] = v63 * v66;
        v142.var0.var0[2] = 0.0;
        v141.var0.var0[0] = -(v57 * (v63 * v66));
        v141.var0.var0[1] = v57 * v142.var0.var0[0];
        v62 = v65 * v66;
      }

      else
      {
        v59 = *(v14 + 64);
        v58 = *(v14 + 68);
        v60 = (v57 * v57) + (v58 * v58);
        v61 = 1.0 / sqrtf(v60);
        v142.var0.var0[0] = 0.0;
        v142.var0.var0[1] = -(v57 * v61);
        v142.var0.var0[2] = v58 * v61;
        v141.var0.var0[0] = v60 * v61;
        v141.var0.var0[1] = -(v59 * (v58 * v61));
        v62 = v142.var0.var0[1] * v59;
      }

      v141.var0.var0[2] = v62;
      v67 = *(v138 + 48);
      if ((v67 & 2) != 0)
      {
        v68 = *(v138 + 1);
        v68.i32[3] = 0;
        v69 = *(v138 + 2);
        v69.i32[3] = 0;
        v70 = *(v138 + 3);
        v70.i32[3] = 0;
        v71 = vmulq_f32(*(v138 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v68, v142.var0.var0[0]), vmulq_lane_f32(v69, *v142.var0.var0, 1)), vmulq_laneq_f32(v70, v142, 2)));
        v72 = vmulq_f32(v71, *(v138 + 1));
        v73 = vmulq_f32(v71, *(v138 + 2));
        v74 = vmulq_f32(v71, *(v138 + 3));
        v74.i32[3] = 0;
        *v72.var0.var0 = vadd_f32(vpadd_f32(*v72.var0.var0, *v73.i8), vzip1_s32(*&vextq_s8(v72, v72, 8uLL), *&vextq_s8(v73, v73, 8uLL)));
        *&v72.var0.var0[2] = vpadd_f32(vpadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)), 0);
        v142 = v72;
      }

      v75 = *(v140 + 48);
      if ((v75 & 2) != 0)
      {
        v118 = *(v140 + 1);
        v118.i32[3] = 0;
        v119 = *(v140 + 2);
        v119.i32[3] = 0;
        v120 = *(v140 + 3);
        v120.i32[3] = 0;
        v121 = vmulq_f32(*(v140 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v118, v142.var0.var0[0]), vmulq_lane_f32(v119, *v142.var0.var0, 1)), vmulq_laneq_f32(v120, v142, 2)));
        v122 = vmulq_f32(v121, *(v140 + 1));
        v123 = vmulq_f32(v121, *(v140 + 2));
        v124 = vmulq_f32(v121, *(v140 + 3));
        v124.i32[3] = 0;
        *v122.var0.var0 = vadd_f32(vpadd_f32(*v122.var0.var0, *v123.i8), vzip1_s32(*&vextq_s8(v122, v122, 8uLL), *&vextq_s8(v123, v123, 8uLL)));
        *&v122.var0.var0[2] = vpadd_f32(vpadd_f32(*v124.i8, *&vextq_s8(v124, v124, 8uLL)), 0);
        v142 = v122;
        if ((v67 & 2) == 0)
        {
LABEL_47:
          if ((v75 & 2) == 0)
          {
LABEL_49:
            v83 = vmulq_f32(v142, v142);
            v84 = vpadd_f32(*v83.i8, *v83.i8);
            v85 = vextq_s8(v83, v83, 8uLL);
            v85.n128_f64[0] = sqrtf(vadd_f32(v84, v85.n128_u64[0]).f32[0]);
            if (v85.n128_f64[0] > 0.001)
            {
              btSequentialImpulseConstraintSolver::addRollingFrictionConstraint(a1, &v142, inited, v9, v15, v14, v29, v30, v85, 0.0, 0.0, v132, v134);
            }

            v86 = vmulq_f32(v141, v141);
            v87 = vpadd_f32(*v86.i8, *v86.i8);
            v55 = vextq_s8(v86, v86, 8uLL);
            v55.n128_f64[0] = sqrtf(vadd_f32(v87, v55.n128_u64[0]).f32[0]);
            if (v55.n128_f64[0] <= 0.001)
            {
              goto LABEL_54;
            }

            v56 = &v141;
            goto LABEL_53;
          }

LABEL_48:
          v76 = *(v140 + 1);
          v76.i32[3] = 0;
          v77 = *(v140 + 2);
          v77.i32[3] = 0;
          v78 = *(v140 + 3);
          v78.i32[3] = 0;
          v79 = vmulq_f32(*(v140 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v76, v141.var0.var0[0]), vmulq_lane_f32(v77, *v141.var0.var0, 1)), vmulq_laneq_f32(v78, v141, 2)));
          v80 = vmulq_f32(v79, *(v140 + 1));
          v81 = vmulq_f32(v79, *(v140 + 2));
          v82 = vmulq_f32(v79, *(v140 + 3));
          v82.i32[3] = 0;
          *v80.var0.var0 = vadd_f32(vpadd_f32(*v80.var0.var0, *v81.i8), vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
          *&v80.var0.var0[2] = vpadd_f32(vpadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)), 0);
          v141 = v80;
          goto LABEL_49;
        }
      }

      else if ((v67 & 2) == 0)
      {
        goto LABEL_47;
      }

      v125 = *(v138 + 1);
      v125.i32[3] = 0;
      v126 = *(v138 + 2);
      v126.i32[3] = 0;
      v127 = *(v138 + 3);
      v127.i32[3] = 0;
      v128 = vmulq_f32(*(v138 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v125, v141.var0.var0[0]), vmulq_lane_f32(v126, *v141.var0.var0, 1)), vmulq_laneq_f32(v127, v141, 2)));
      v129 = vmulq_f32(v128, *(v138 + 1));
      v130 = vmulq_f32(v128, *(v138 + 2));
      v131 = vmulq_f32(v128, *(v138 + 3));
      v131.i32[3] = 0;
      *v129.var0.var0 = vadd_f32(vpadd_f32(*v129.var0.var0, *v130.i8), vzip1_s32(*&vextq_s8(v129, v129, 8uLL), *&vextq_s8(v130, v130, 8uLL)));
      *&v129.var0.var0[2] = vpadd_f32(vpadd_f32(*v131.i8, *&vextq_s8(v131, v131, 8uLL)), 0);
      v141 = v129;
      if ((v75 & 2) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }
}

float32x2_t applyAnisotropicFriction(float32x4_t *a1, float32x4_t *a2, int a3)
{
  if (a1)
  {
    if ((a1[12].i32[0] & a3) != 0)
    {
      v3 = a1[1];
      v3.i32[3] = 0;
      v4 = a1[2];
      v4.i32[3] = 0;
      v5 = a1[3];
      v5.i32[3] = 0;
      v6 = vmulq_f32(a1[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v3, COERCE_FLOAT(*a2)), vmulq_lane_f32(v4, *a2->f32, 1)), vmulq_laneq_f32(v5, *a2, 2)));
      v7 = vmulq_f32(v6, a1[1]);
      v8 = vmulq_f32(v6, a1[2]);
      v9 = vmulq_f32(v6, a1[3]);
      v9.i32[3] = 0;
      *v7.i8 = vadd_f32(vpadd_f32(*v7.i8, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
      result = vpadd_f32(vpadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0);
      v7.u64[1] = result;
      *a2 = v7;
    }
  }

  return result;
}

double btSequentialImpulseConstraintSolver::solveGroupCacheFriendlySetup(btSequentialImpulseConstraintSolver *this, btCollisionObject **a2, int a3, uint64_t *a4, int a5, _DWORD **a6, int a7, uint64_t a8)
{
  v12 = a2;
  *(this + 74) = 0;
  v14 = a3;
  if (a3 >= 1)
  {
    v15 = a3;
    v16 = a2;
    do
    {
      v17 = *v16++;
      *(v17 + 240) = -1;
      --v15;
    }

    while (v15);
  }

  v18 = *(this + 4);
  if (v18 <= a3)
  {
    v18 = a3 + 1;
    if (a3 == -1)
    {
      v19 = 0;
    }

    else
    {
      v19 = btAlignedAllocInternal(224 * v18, 16);
    }

    v20 = *(this + 3);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = 224 * v20;
      do
      {
        v23 = *(this + 3) + v21;
        v24 = v19 + v21;
        *v24 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *(v24 + 32) = *(v23 + 32);
        *(v24 + 48) = *(v23 + 48);
        *(v24 + 64) = *(v23 + 64);
        *(v24 + 80) = *(v23 + 80);
        *(v24 + 96) = *(v23 + 96);
        *(v24 + 112) = *(v23 + 112);
        *(v24 + 128) = *(v23 + 128);
        *(v24 + 144) = *(v23 + 144);
        *(v24 + 160) = *(v23 + 160);
        *(v24 + 176) = *(v23 + 176);
        *(v24 + 192) = *(v23 + 192);
        *(v24 + 208) = *(v23 + 208);
        v21 += 224;
      }

      while (v22 != v21);
    }

    v25 = *(this + 3);
    if (v25 && *(this + 32) == 1)
    {
      btAlignedFreeInternal(v25);
    }

    *(this + 32) = 1;
    *(this + 3) = v19;
    *(this + 4) = v18;
  }

  v26 = *(this + 3);
  if ((v26 & 0x80000000) != 0)
  {
    if (v18 < 0)
    {
      v27 = *(this + 3);
      if (v27 && *(this + 32) == 1)
      {
        btAlignedFreeInternal(v27);
      }

      *(this + 32) = 1;
      *(this + 3) = 0;
      *(this + 4) = 0;
    }

    v28 = 224 * v26;
    v29 = v26 + 1;
    do
    {
      v30 = *(this + 3) + v28;
      *(v30 + 208) = 0;
      *(v30 + 176) = 0uLL;
      *(v30 + 192) = 0uLL;
      *(v30 + 144) = 0uLL;
      *(v30 + 160) = 0uLL;
      *(v30 + 112) = 0uLL;
      *(v30 + 128) = 0uLL;
      *(v30 + 80) = 0uLL;
      *(v30 + 96) = 0uLL;
      *(v30 + 48) = 0uLL;
      *(v30 + 64) = 0uLL;
      *(v30 + 16) = 0uLL;
      *(v30 + 32) = 0uLL;
      v28 += 224;
      *v30 = 0uLL;
      LODWORD(v30) = v29++;
    }

    while (v30);
    v18 = *(this + 4);
  }

  *(this + 3) = 0;
  if (v18)
  {
    v31 = *(this + 3);
    v32 = 1;
  }

  else
  {
    v33 = btAlignedAllocInternal(224, 16);
    v31 = v33;
    v34 = *(this + 3);
    if (v34 >= 1)
    {
      v35 = 0;
      v36 = 224 * v34;
      do
      {
        v37 = *(this + 3) + v35;
        v38 = v33 + v35;
        *v38 = *v37;
        *(v38 + 16) = *(v37 + 16);
        *(v38 + 32) = *(v37 + 32);
        *(v38 + 48) = *(v37 + 48);
        *(v38 + 64) = *(v37 + 64);
        *(v38 + 80) = *(v37 + 80);
        *(v38 + 96) = *(v37 + 96);
        *(v38 + 112) = *(v37 + 112);
        *(v38 + 128) = *(v37 + 128);
        *(v38 + 144) = *(v37 + 144);
        *(v38 + 160) = *(v37 + 160);
        *(v38 + 176) = *(v37 + 176);
        *(v38 + 192) = *(v37 + 192);
        *(v38 + 208) = *(v37 + 208);
        v35 += 224;
      }

      while (v36 != v35);
    }

    v39 = *(this + 3);
    if (v39 && *(this + 32) == 1)
    {
      btAlignedFreeInternal(v39);
    }

    *(this + 32) = 1;
    *(this + 3) = v31;
    *(this + 4) = 1;
    v32 = *(this + 3) + 1;
  }

  *(this + 3) = v32;
  *(v31 + 208) = 0;
  *(v31 + 176) = 0u;
  *(v31 + 192) = 0u;
  *(v31 + 144) = 0u;
  *(v31 + 160) = 0u;
  *(v31 + 112) = 0u;
  *(v31 + 128) = 0u;
  *(v31 + 80) = 0u;
  *(v31 + 96) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *v31 = 0u;
  v40 = *(this + 3);
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 144) = 0u;
  *(v40 + 160) = 0u;
  *v40 = xmmword_21C27F910;
  *(v40 + 16) = xmmword_21C27F8C0;
  *(v40 + 32) = xmmword_21C27F600;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 208) = 0;
  *(v40 + 96) = xmmword_21C280340;
  *(v40 + 112) = xmmword_21C280340;
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  if (a3 >= 1)
  {
    do
    {
      inited = btSequentialImpulseConstraintSolver::getOrInitSolverBody(this, *v12);
      v43 = *v12;
      if (*v12)
      {
        v44 = (*(*v12 + 66) & 2) == 0;
      }

      else
      {
        v44 = 1;
      }

      if (!v44)
      {
        v45 = *(v43 + 96);
        if (v45 != 0.0)
        {
          v46 = inited;
          v47 = *(this + 3);
          v48 = 0uLL;
          if ((*(v43 + 576) & 2) != 0)
          {
            btRigidBody::computeGyroscopicForce(*v12, *(a8 + 76), &v190, v42);
            v48 = v190;
            v45 = *(v43 + 96);
          }

          v49 = (v47 + 224 * v46);
          v50 = vmulq_n_f32(vmulq_n_f32(*(v43 + 29), v45), COERCE_FLOAT(*(a8 + 12)));
          v50.i32[3] = 0;
          v51 = v49[12];
          v49[11] = vaddq_f32(v49[11], v50);
          v52 = vsubq_f32(*(v43 + 30), v48);
          v52.i32[3] = 0;
          v53 = *(v43 + 19);
          v54 = *(v43 + 20);
          v53.i32[3] = 0;
          v54.i32[3] = 0;
          v55 = *(v43 + 21);
          v55.i32[3] = 0;
          v56 = vmulq_n_f32(vaddq_f32(vmulq_laneq_f32(v55, v52, 2), vaddq_f32(vmulq_n_f32(v53, v52.f32[0]), vmulq_lane_f32(v54, *v52.f32, 1))), COERCE_FLOAT(*(a8 + 12)));
          v56.i32[3] = 0;
          v49[12] = vaddq_f32(v51, v56);
        }
      }

      ++v12;
      --v14;
    }

    while (v14);
  }

  v188 = a7;
  if (a7 >= 1)
  {
    v57 = a7;
    v58 = a6;
    do
    {
      v59 = *v58++;
      (*(*v59 + 16))(v59);
      v59[14] = 0;
      --v57;
    }

    while (v57);
  }

  v60 = *(this + 67);
  if (v60 < a7 && *(this + 68) < a7)
  {
    if (a7)
    {
      v61 = btAlignedAllocInternal(8 * a7, 16);
      v60 = *(this + 67);
    }

    else
    {
      v61 = 0;
    }

    if (v60 >= 1)
    {
      v62 = 0;
      v63 = 8 * v60;
      do
      {
        *(v61 + v62) = *(*(this + 35) + v62);
        v62 += 8;
      }

      while (v63 != v62);
    }

    v64 = *(this + 35);
    if (v64 && *(this + 288) == 1)
    {
      btAlignedFreeInternal(v64);
    }

    *(this + 288) = 1;
    *(this + 35) = v61;
    *(this + 68) = a7;
  }

  *(this + 67) = a7;
  if (a7 < 1)
  {
    v66 = 0;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = *(this + 35);
      v68 = a6[v65];
      v69 = *(v68 + 8);
      if (v69)
      {
        v69[2] = 0u;
        v69[3] = 0u;
        *v69 = 0u;
        v69[1] = 0u;
        v68 = a6[v65];
      }

      v70 = (v67 + v65 * 8);
      if (*(v68 + 28) == 1)
      {
        (*(*v68 + 32))(v68, v70);
        v71 = *v70;
      }

      else
      {
        v71 = 0;
        *v70 = 0;
      }

      v66 += v71;
      ++v65;
    }

    while (a7 != v65);
  }

  v189 = a8;
  v72 = *(this + 19);
  if (v72 < v66 && *(this + 20) < v66)
  {
    if (v66)
    {
      v73 = btAlignedAllocInternal(160 * v66, 16);
      v72 = *(this + 19);
    }

    else
    {
      v73 = 0;
    }

    if (v72 >= 1)
    {
      v74 = 0;
      v75 = 160 * v72;
      do
      {
        v76 = (v73 + v74);
        v77 = (*(this + 11) + v74);
        *v76 = *v77;
        v76[1] = v77[1];
        v76[2] = v77[2];
        v76[3] = v77[3];
        v76[4] = v77[4];
        v76[5] = v77[5];
        v78 = v77[6];
        v79 = v77[7];
        v80 = v77[9];
        v76[8] = v77[8];
        v76[9] = v80;
        v76[6] = v78;
        v76[7] = v79;
        v74 += 160;
      }

      while (v75 != v74);
    }

    v81 = *(this + 11);
    if (v81 && *(this + 96) == 1)
    {
      btAlignedFreeInternal(v81);
    }

    *(this + 96) = 1;
    *(this + 11) = v73;
    *(this + 20) = v66;
  }

  *(this + 19) = v66;
  if (a7 >= 1)
  {
    v82 = 0;
    v83 = 0;
    v84 = *(this + 35);
    do
    {
      v85 = (v84 + 8 * v82);
      v86 = *v85;
      if (*v85)
      {
        v87 = *(this + 11);
        v88 = a6[v82];
        v89 = *(v88 + 5);
        v90 = *(v88 + 6);
        v91 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(this, v89);
        v92 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(this, v90);
        v93 = v88[8];
        if (v93 <= 0)
        {
          v93 = *(v189 + 20);
        }

        if (v93 > *(this + 74))
        {
          *(this + 74) = v93;
        }

        v94 = *(this + 3);
        if (*v85 >= 1)
        {
          v95 = 0;
          v96 = (v87 + 160 * v83 + 156);
          do
          {
            *(v96 - 11) = 0uLL;
            *(v96 - 15) = 0uLL;
            *(v96 - 3) = 0uLL;
            *(v96 - 7) = 0uLL;
            *(v96 - 19) = 0uLL;
            *(v96 - 23) = 0uLL;
            *(v96 - 27) = 0uLL;
            *(v96 - 31) = 0uLL;
            *(v96 - 35) = 0uLL;
            *(v96 - 39) = 0uLL;
            *(v96 - 9) = -2.84809454e-306;
            *(v96 - 15) = 0;
            *(v96 - 1) = v91;
            *v96 = v92;
            *(v96 - 3) = v93;
            ++v95;
            v96 += 40;
          }

          while (v95 < *v85);
        }

        v97 = (v87 + 160 * v83);
        v98 = (v94 + 224 * v91);
        v99 = (v94 + 224 * v92);
        v98[4] = 0uLL;
        v98[5] = 0uLL;
        v98[9] = 0uLL;
        v98[10] = 0uLL;
        v99[4] = 0uLL;
        v99[5] = 0uLL;
        v99[9] = 0uLL;
        v99[10] = 0uLL;
        v100 = *(v189 + 32);
        v190.f32[0] = 1.0 / *(v189 + 12);
        v190.i32[1] = v100;
        v190.i64[1] = &v97[1];
        v191 = v97;
        v192 = v97 + 3;
        v193 = v97 + 2;
        v194 = 40;
        v195 = v97 + 7;
        v97[7].i32[1] = *(v189 + 40);
        v200 = *(v189 + 4);
        v196 = &v97[7].i8[4];
        v197 = &v97[7].i8[8];
        v198 = &v97[7].i8[12];
        v199 = *(v189 + 20);
        (*(*a6[v82] + 40))(a6[v82], &v190);
        if (*v85 >= 1)
        {
          v101 = 0;
          do
          {
            v102 = *(a6[v82] + 6);
            if (v97[7].f32[3] >= v102)
            {
              v97[7].f32[3] = v102;
            }

            v103 = -v102;
            if (v97[7].f32[2] <= v103)
            {
              v97[7].f32[2] = v103;
            }

            v97[8].i64[1] = v88;
            v104 = *(v88 + 5);
            v105 = *v97;
            v106 = v97[1];
            v107 = vmulq_f32(v104[19], *v97);
            v108 = vmulq_f32(*v97, v104[20]);
            v109 = vmulq_f32(*v97, v104[21]);
            v109.i32[3] = 0;
            *v107.f32 = vadd_f32(vpadd_f32(*v107.f32, *v108.i8), vzip1_s32(*&vextq_s8(v107, v107, 8uLL), *&vextq_s8(v108, v108, 8uLL)));
            *&v107.u32[2] = vpadd_f32(vpadd_f32(*v109.i8, *&vextq_s8(v109, v109, 8uLL)), 0);
            v97[4] = vmulq_f32(v107, v104[39]);
            v110 = *(v88 + 6);
            v111 = v97[2];
            v112 = v97[3];
            v113 = vmulq_f32(v110[19], v111);
            v114 = vmulq_f32(v111, v110[20]);
            v115 = vmulq_f32(v111, v110[21]);
            v115.i32[3] = 0;
            *v113.f32 = vadd_f32(vpadd_f32(*v113.f32, *v114.i8), vzip1_s32(*&vextq_s8(v113, v113, 8uLL), *&vextq_s8(v114, v114, 8uLL)));
            *&v113.u32[2] = vpadd_f32(vpadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL)), 0);
            v97[5] = vmulq_f32(v113, v110[39]);
            v116 = vmulq_n_f32(v106, *(v89 + 384));
            v116.i32[3] = 0;
            v117 = vmulq_f32(v105, *(v89 + 304));
            v118 = vmulq_f32(v105, *(v89 + 320));
            v119 = vmulq_f32(v105, *(v89 + 336));
            v119.i32[3] = 0;
            *v117.f32 = vadd_f32(vpadd_f32(*v117.f32, *v118.i8), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
            *&v117.u32[2] = vpadd_f32(vpadd_f32(*v119.i8, *&vextq_s8(v119, v119, 8uLL)), 0);
            v120 = vmulq_n_f32(v112, *(v90 + 384));
            v120.i32[3] = 0;
            v121 = vmulq_f32(v111, *(v90 + 304));
            v122 = vmulq_f32(v111, *(v90 + 320));
            v123 = vmulq_f32(v111, *(v90 + 336));
            v123.i32[3] = 0;
            *v121.f32 = vadd_f32(vpadd_f32(*v121.f32, *v122.i8), vzip1_s32(*&vextq_s8(v121, v121, 8uLL), *&vextq_s8(v122, v122, 8uLL)));
            *&v121.u32[2] = vpadd_f32(vpadd_f32(*v123.i8, *&vextq_s8(v123, v123, 8uLL)), 0);
            v124 = vmulq_f32(v106, v116);
            v125 = vmulq_f32(v105, v117);
            *v124.i8 = vadd_f32(vadd_f32(*&vextq_s8(v124, v124, 8uLL), vpadd_f32(*v124.i8, *v124.i8)), vadd_f32(*&vextq_s8(v125, v125, 8uLL), vpadd_f32(*v125.i8, *v125.i8)));
            v126 = vmulq_f32(v112, v120);
            *v124.i8 = vadd_f32(*v124.i8, vadd_f32(*&vextq_s8(v126, v126, 8uLL), vpadd_f32(*v126.i8, *v126.i8)));
            v127 = vmulq_f32(v111, v121);
            *v124.i32 = vadd_f32(*v124.i8, vadd_f32(*&vextq_s8(v127, v127, 8uLL), vpadd_f32(*v127.i8, *v127.i8))).f32[0];
            *v127.i32 = fabsf(*v124.i32);
            v128 = 1.0 / *v124.i32;
            if (*v127.i32 <= 0.00000011921)
            {
              v128 = 0.0;
            }

            v97[6].f32[3] = v128;
            v129 = vmulq_f32(v106, *(v89 + 352));
            v130 = vmulq_f32(v105, *(v89 + 368));
            *v130.i8 = vadd_f32(vadd_f32(vpadd_f32(*v129.i8, *v129.i8), *&vextq_s8(v129, v129, 8uLL)), vadd_f32(vpadd_f32(*v130.i8, *v130.i8), *&vextq_s8(v130, v130, 8uLL)));
            v131 = vmulq_f32(v112, *(v90 + 352));
            v132 = vmulq_f32(v111, *(v90 + 368));
            v97[7].f32[0] = (v128 * v97[7].f32[0]) + (v128 * (0.0 - (v200 * vadd_f32(*v130.i8, vadd_f32(vadd_f32(vpadd_f32(*v131.i8, *v131.i8), *&vextq_s8(v131, v131, 8uLL)), vadd_f32(vpadd_f32(*v132.i8, *v132.i8), *&vextq_s8(v132, v132, 8uLL)))).f32[0])));
            v97[6].i32[1] = 0;
            ++v101;
            v97 += 10;
          }

          while (v101 < *v85);
        }

        v84 = *(this + 35);
        v86 = *(v84 + 8 * v82);
      }

      v83 += v86;
      ++v82;
    }

    while (v82 != v188);
  }

  v133 = a4;
  if (a5 >= 1)
  {
    v134 = a5;
    do
    {
      v135 = *v133++;
      btSequentialImpulseConstraintSolver::convertContact(this, v135, v189);
      --v134;
    }

    while (v134);
  }

  v136 = *(this + 19);
  v137 = *(this + 11);
  v138 = *(this + 27);
  LODWORD(v139) = *(this + 51);
  if (v139 < v136 && *(this + 52) < v136)
  {
    if (v136)
    {
      v140 = btAlignedAllocInternal(4 * v136, 16);
      LODWORD(v139) = *(this + 51);
    }

    else
    {
      v140 = 0;
    }

    v141 = *(this + 27);
    if (v139 < 1)
    {
      if (!v141)
      {
LABEL_117:
        *(this + 224) = 1;
        *(this + 27) = v140;
        *(this + 52) = v136;
        goto LABEL_118;
      }
    }

    else
    {
      v139 = v139;
      v142 = v140;
      v143 = *(this + 27);
      do
      {
        v144 = *v143++;
        *v142++ = v144;
        --v139;
      }

      while (v139);
    }

    if (*(this + 224) == 1)
    {
      btAlignedFreeInternal(v141);
    }

    *(this + 27) = 0;
    goto LABEL_117;
  }

LABEL_118:
  *(this + 51) = v136;
  if ((*(v189 + 64) & 0x10) != 0)
  {
    v147 = 2 * v137;
    LODWORD(v148) = *(this + 43);
    if (v148 >= 2 * v137 || *(this + 44) >= v147)
    {
      goto LABEL_148;
    }

    if (v137)
    {
      v149 = btAlignedAllocInternal(8 * v137, 16);
      LODWORD(v148) = *(this + 43);
    }

    else
    {
      v149 = 0;
    }

    v154 = *(this + 23);
    if (v148 < 1)
    {
      if (!v154)
      {
LABEL_147:
        *(this + 192) = 1;
        *(this + 23) = v149;
        *(this + 44) = v147;
LABEL_148:
        *(this + 43) = v147;
        goto LABEL_149;
      }
    }

    else
    {
      v148 = v148;
      v155 = v149;
      v156 = *(this + 23);
      do
      {
        v157 = *v156++;
        *v155++ = v157;
        --v148;
      }

      while (v148);
    }

    if (*(this + 192) == 1)
    {
      btAlignedFreeInternal(v154);
    }

    *(this + 23) = 0;
    goto LABEL_147;
  }

  LODWORD(v145) = *(this + 43);
  if (v145 >= v137 || *(this + 44) >= v137)
  {
    goto LABEL_142;
  }

  if (v137)
  {
    v146 = btAlignedAllocInternal(4 * v137, 16);
    LODWORD(v145) = *(this + 43);
  }

  else
  {
    v146 = 0;
  }

  v150 = *(this + 23);
  if (v145 >= 1)
  {
    v145 = v145;
    v151 = v146;
    v152 = *(this + 23);
    do
    {
      v153 = *v152++;
      *v151++ = v153;
      --v145;
    }

    while (v145);
    goto LABEL_138;
  }

  if (v150)
  {
LABEL_138:
    if (*(this + 192) == 1)
    {
      btAlignedFreeInternal(v150);
    }

    *(this + 23) = 0;
  }

  *(this + 192) = 1;
  *(this + 23) = v146;
  *(this + 44) = v137;
LABEL_142:
  *(this + 43) = v137;
LABEL_149:
  LODWORD(v158) = *(this + 59);
  if (v158 < v138 && *(this + 60) < v138)
  {
    if (v138)
    {
      v159 = btAlignedAllocInternal(4 * v138, 16);
      LODWORD(v158) = *(this + 59);
    }

    else
    {
      v159 = 0;
    }

    v160 = *(this + 31);
    if (v158 < 1)
    {
      if (!v160)
      {
LABEL_162:
        *(this + 256) = 1;
        *(this + 31) = v159;
        *(this + 60) = v138;
        goto LABEL_163;
      }
    }

    else
    {
      v158 = v158;
      v161 = v159;
      v162 = *(this + 31);
      do
      {
        v163 = *v162++;
        *v161++ = v163;
        --v158;
      }

      while (v158);
    }

    if (*(this + 256) == 1)
    {
      btAlignedFreeInternal(v160);
    }

    *(this + 31) = 0;
    goto LABEL_162;
  }

LABEL_163:
  *(this + 59) = v138;
  if (v136 >= 1)
  {
    v164 = 0;
    v165 = vdupq_n_s64(v136 - 1);
    v166 = xmmword_21C27F630;
    v167 = xmmword_21C27F640;
    v168 = (*(this + 27) + 8);
    v169 = vdupq_n_s64(4uLL);
    do
    {
      v170 = vmovn_s64(vcgeq_u64(v165, v167));
      if (vuzp1_s16(v170, *v165.i8).u8[0])
      {
        *(v168 - 2) = v164;
      }

      if (vuzp1_s16(v170, *&v165).i8[2])
      {
        *(v168 - 1) = v164 + 1;
      }

      if (vuzp1_s16(*&v165, vmovn_s64(vcgeq_u64(v165, *&v166))).i32[1])
      {
        *v168 = v164 + 2;
        v168[1] = v164 + 3;
      }

      v164 += 4;
      v166 = vaddq_s64(v166, v169);
      v167 = vaddq_s64(v167, v169);
      v168 += 4;
    }

    while (((v136 + 3) & 0xFFFFFFFC) != v164);
  }

  if (v137 >= 1)
  {
    v171 = 0;
    v172 = vdupq_n_s64(v137 - 1);
    v173 = xmmword_21C27F630;
    v174 = xmmword_21C27F640;
    v175 = (*(this + 23) + 8);
    v176 = vdupq_n_s64(4uLL);
    do
    {
      v177 = vmovn_s64(vcgeq_u64(v172, v174));
      if (vuzp1_s16(v177, *v172.i8).u8[0])
      {
        *(v175 - 2) = v171;
      }

      if (vuzp1_s16(v177, *&v172).i8[2])
      {
        *(v175 - 1) = v171 + 1;
      }

      if (vuzp1_s16(*&v172, vmovn_s64(vcgeq_u64(v172, *&v173))).i32[1])
      {
        *v175 = v171 + 2;
        v175[1] = v171 + 3;
      }

      v171 += 4;
      v173 = vaddq_s64(v173, v176);
      v174 = vaddq_s64(v174, v176);
      v175 += 4;
    }

    while (((v137 + 3) & 0xFFFFFFFC) != v171);
  }

  if (v138 >= 1)
  {
    v178 = 0;
    v179 = vdupq_n_s64(v138 - 1);
    v180 = xmmword_21C27F630;
    v181 = xmmword_21C27F640;
    v182 = (*(this + 31) + 8);
    v183 = vdupq_n_s64(4uLL);
    do
    {
      v184 = vmovn_s64(vcgeq_u64(v179, v181));
      if (vuzp1_s16(v184, *v179.i8).u8[0])
      {
        *(v182 - 2) = v178;
      }

      if (vuzp1_s16(v184, *&v179).i8[2])
      {
        *(v182 - 1) = v178 + 1;
      }

      if (vuzp1_s16(*&v179, vmovn_s64(vcgeq_u64(v179, *&v180))).i32[1])
      {
        *v182 = v178 + 2;
        v182[1] = v178 + 3;
      }

      v178 += 4;
      v180 = vaddq_s64(v180, v183);
      v181 = vaddq_s64(v181, v183);
      v182 += 4;
    }

    while (((v138 + 3) & 0xFFFFFFFC) != v178);
  }

  return 0.0;
}

double btSequentialImpulseConstraintSolver::solveSingleIteration(btSequentialImpulseConstraintSolver *this, __int32 a2, int a3, int a4, int a5, int a6, void *a7, int a8, uint64_t a9)
{
  v9 = a8;
  v12 = this;
  if (*(a9 + 64))
  {
    v13 = *(this + 19);
    v14 = *(this + 11);
    v15 = *(this + 27);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = *(this + 27);
      do
      {
        v18 = *(v17 + 4 * v16);
        this = btSequentialImpulseConstraintSolver::btRandInt2(v12, v16 + 1);
        v17 = *(v12 + 27);
        *(v17 + 4 * v16) = *(v17 + 4 * this);
        *(v17 + 4 * this) = v18;
        ++v16;
      }

      while (v13 != v16);
    }

    v9 = a8;
    if (*(a9 + 20) > a2)
    {
      if (v14 >= 1)
      {
        v19 = 0;
        v20 = *(v12 + 23);
        do
        {
          v21 = *(v20 + 4 * v19);
          this = btSequentialImpulseConstraintSolver::btRandInt2(v12, v19 + 1);
          v20 = *(v12 + 23);
          *(v20 + 4 * v19) = *(v20 + 4 * this);
          *(v20 + 4 * this) = v21;
          ++v19;
        }

        while (v14 != v19);
      }

      if (v15 >= 1)
      {
        v22 = 0;
        v23 = *(v12 + 31);
        do
        {
          v24 = *(v23 + 4 * v22);
          this = btSequentialImpulseConstraintSolver::btRandInt2(v12, v22 + 1);
          v23 = *(v12 + 31);
          *(v23 + 4 * v22) = *(v23 + 4 * this);
          *(v23 + 4 * this) = v24;
          ++v22;
        }

        while (v15 != v22);
      }
    }
  }

  v25 = *(v12 + 19);
  if (*(a9 + 65))
  {
    if (v25 >= 1)
    {
      for (i = 0; i < v25; ++i)
      {
        v49 = (*(v12 + 11) + 160 * *(*(v12 + 27) + 4 * i));
        if (v49[9].i32[0] > a2)
        {
          btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v49[9].i32[2]), (*(v12 + 3) + 224 * v49[9].i32[3]), v49);
          v25 = *(v12 + 19);
        }
      }
    }

    if (*(a9 + 20) > a2)
    {
      if (v9 >= 1)
      {
        v50 = v9;
        do
        {
          if (*(*a7 + 28) == 1)
          {
            inited = btSequentialImpulseConstraintSolver::getOrInitSolverBody(v12, *(*a7 + 40));
            v52 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(v12, *(*a7 + 48));
            this = (*(**a7 + 48))(*a7, *(v12 + 3) + 224 * inited, *(v12 + 3) + 224 * v52, *(a9 + 12));
          }

          ++a7;
          --v50;
        }

        while (v50);
      }

      v53 = *(a9 + 64);
      v54 = *(v12 + 11);
      if ((v53 & 0x200) != 0)
      {
        if (v54 >= 1)
        {
          v71 = 0;
          v72 = (v53 >> 4) & 1;
          do
          {
            v73 = (*(v12 + 7) + 160 * *(*(v12 + 23) + 4 * v71));
            btSequentialImpulseConstraintSolver::resolveSingleConstraintRowLowerLimit(this, (*(v12 + 3) + 224 * v73[9].i32[2]), (*(v12 + 3) + 224 * v73[9].i32[3]), v73);
            v74 = v73[6].f32[1];
            if (v74 > 0.0)
            {
              v75 = (*(v12 + 15) + 160 * *(*(v12 + 31) + 4 * (v71 << v72)));
              v76 = v75[6].f32[2];
              v75[7].f32[2] = -(v76 * v74);
              v75[7].f32[3] = v74 * v76;
              btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v75[9].i32[2]), (*(v12 + 3) + 224 * v75[9].i32[3]), v75);
              if ((*(a9 + 64) & 0x10) != 0)
              {
                v77 = (*(v12 + 15) + 160 * *(*(v12 + 31) + 4 * (v71 << v72) + 4));
                v78 = v77[6].f32[2];
                v77[7].f32[2] = -(v78 * v74);
                v77[7].f32[3] = v74 * v78;
                btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v77[9].i32[2]), (*(v12 + 3) + 224 * v77[9].i32[3]), v77);
              }
            }

            ++v71;
          }

          while (v54 != v71);
        }
      }

      else
      {
        if (v54 >= 1)
        {
          v55 = 0;
          v56 = 4 * v54;
          do
          {
            v57 = (*(v12 + 7) + 160 * *(*(v12 + 23) + v55));
            btSequentialImpulseConstraintSolver::resolveSingleConstraintRowLowerLimit(this, (*(v12 + 3) + 224 * v57[9].i32[2]), (*(v12 + 3) + 224 * v57[9].i32[3]), v57);
            v55 += 4;
          }

          while (v56 != v55);
        }

        v58 = *(v12 + 27);
        if (v58 >= 1)
        {
          v59 = 0;
          v60 = 4 * v58;
          do
          {
            v61 = (*(v12 + 15) + 160 * *(*(v12 + 31) + v59));
            v62 = *(*(v12 + 7) + 160 * v61[9].i32[1] + 100);
            if (v62 > 0.0)
            {
              v63 = v61[6].f32[2];
              v61[7].f32[2] = -(v63 * v62);
              v61[7].f32[3] = v62 * v63;
              btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v61[9].i32[2]), (*(v12 + 3) + 224 * v61[9].i32[3]), v61);
            }

            v59 += 4;
          }

          while (v60 != v59);
        }

        v64 = *(v12 + 35);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = 160 * v64;
          do
          {
            v67 = (*(v12 + 19) + v65);
            v68 = *(*(v12 + 7) + 160 * v67[9].i32[1] + 100);
            if (v68 > 0.0)
            {
              v69 = v67[6].f32[2];
              v70 = v68 * v69;
              if (v70 > v69)
              {
                v70 = v67[6].f32[2];
              }

              v67[7].f32[2] = -v70;
              v67[7].f32[3] = v70;
              btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v67[9].i32[2]), (*(v12 + 3) + 224 * v67[9].i32[3]), v67);
            }

            v65 += 160;
          }

          while (v66 != v65);
        }
      }
    }
  }

  else
  {
    if (v25 >= 1)
    {
      for (j = 0; j < v25; ++j)
      {
        v27 = (*(v12 + 11) + 160 * *(*(v12 + 27) + 4 * j));
        if (v27[9].i32[0] > a2)
        {
          btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v27[9].i32[2]), (*(v12 + 3) + 224 * v27[9].i32[3]), v27);
          v25 = *(v12 + 19);
        }
      }
    }

    if (*(a9 + 20) > a2)
    {
      if (v9 >= 1)
      {
        v28 = v9;
        do
        {
          if (*(*a7 + 28) == 1)
          {
            v29 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(v12, *(*a7 + 40));
            v30 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(v12, *(*a7 + 48));
            this = (*(**a7 + 48))(*a7, *(v12 + 3) + 224 * v29, *(v12 + 3) + 224 * v30, *(a9 + 12));
          }

          ++a7;
          --v28;
        }

        while (v28);
      }

      v31 = *(v12 + 11);
      if (v31 >= 1)
      {
        v32 = 0;
        v33 = 4 * v31;
        do
        {
          v34 = (*(v12 + 7) + 160 * *(*(v12 + 23) + v32));
          btSequentialImpulseConstraintSolver::resolveSingleConstraintRowLowerLimit(this, (*(v12 + 3) + 224 * v34[9].i32[2]), (*(v12 + 3) + 224 * v34[9].i32[3]), v34);
          v32 += 4;
        }

        while (v33 != v32);
      }

      v35 = *(v12 + 27);
      if (v35 >= 1)
      {
        v36 = 0;
        v37 = 4 * v35;
        do
        {
          v38 = (*(v12 + 15) + 160 * *(*(v12 + 31) + v36));
          v39 = *(*(v12 + 7) + 160 * v38[9].i32[1] + 100);
          if (v39 > 0.0)
          {
            v40 = v38[6].f32[2];
            v38[7].f32[2] = -(v40 * v39);
            v38[7].f32[3] = v39 * v40;
            btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v38[9].i32[2]), (*(v12 + 3) + 224 * v38[9].i32[3]), v38);
          }

          v36 += 4;
        }

        while (v37 != v36);
      }

      v41 = *(v12 + 35);
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = 160 * v41;
        do
        {
          v44 = (*(v12 + 19) + v42);
          v45 = *(*(v12 + 7) + 160 * v44[9].i32[1] + 100);
          if (v45 > 0.0)
          {
            v46 = v44[6].f32[2];
            v47 = v45 * v46;
            if (v47 > v46)
            {
              v47 = v44[6].f32[2];
            }

            v44[7].f32[2] = -v47;
            v44[7].f32[3] = v47;
            btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v44[9].i32[2]), (*(v12 + 3) + 224 * v44[9].i32[3]), v44);
          }

          v42 += 160;
        }

        while (v43 != v42);
      }
    }
  }

  return 0.0;
}

void btSequentialImpulseConstraintSolver::solveGroupCacheFriendlySplitImpulseIterations(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a9 + 44))
  {
    v11 = *(a9 + 20);
    if (*(a9 + 65))
    {
      if (v11 >= 1)
      {
        for (i = 0; i < v11; ++i)
        {
          v18 = *(a1 + 44);
          if (v18 >= 1)
          {
            v19 = 0;
            v20 = 4 * v18;
            do
            {
              v21 = (*(a1 + 56) + 160 * *(*(a1 + 184) + v19));
              a2 = btSequentialImpulseConstraintSolver::resolveSplitPenetrationImpulseCacheFriendly(a2, a1, (*(a1 + 24) + 224 * v21[9].i32[2]), (*(a1 + 24) + 224 * v21[9].i32[3]), v21);
              v19 += 4;
            }

            while (v20 != v19);
            v11 = *(a9 + 20);
          }
        }
      }
    }

    else if (v11 >= 1)
    {
      for (j = 0; j < v11; ++j)
      {
        v13 = *(a1 + 44);
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = 4 * v13;
          do
          {
            v16 = (*(a1 + 56) + 160 * *(*(a1 + 184) + v14));
            a2 = btSequentialImpulseConstraintSolver::resolveSplitPenetrationImpulseCacheFriendly(a2, a1, (*(a1 + 24) + 224 * v16[9].i32[2]), (*(a1 + 24) + 224 * v16[9].i32[3]), v16);
            v14 += 4;
          }

          while (v15 != v14);
          v11 = *(a9 + 20);
        }
      }
    }
  }
}

double btSequentialImpulseConstraintSolver::solveGroupCacheFriendlyIterations(btSequentialImpulseConstraintSolver *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8)
{
  (*(*a1 + 48))(a1);
  if (*(a1 + 74) <= *(a8 + 20))
  {
    v16 = *(a8 + 20);
  }

  else
  {
    v16 = *(a1 + 74);
  }

  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      btSequentialImpulseConstraintSolver::solveSingleIteration(a1, i, v12, v13, v14, v15, a6, a7, a8);
    }
  }

  return 0.0;
}

double btSequentialImpulseConstraintSolver::solveGroupCacheFriendlyFinish(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, btTransform *a5, __n128 a6)
{
  v8 = *(a4 + 64);
  if ((v8 & 4) != 0)
  {
    v9 = *(a1 + 44);
    if (v9 >= 1)
    {
      v10 = *(a1 + 120);
      v11 = (*(a1 + 56) + 148);
      do
      {
        v12 = *(v11 - 3);
        v13 = *v11;
        v14 = *(v10 + 160 * *v11 + 100);
        v12[31] = *(v11 - 12);
        v12[32] = v14;
        if ((v8 & 0x10) != 0)
        {
          v12[33] = *(v10 + 260 + 160 * v13);
        }

        v11 += 40;
        --v9;
      }

      while (v9);
    }
  }

  v15 = *(a1 + 76);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 160 * v15;
    do
    {
      v18 = (*(a1 + 88) + v16);
      v19 = v18[8].i64[1];
      v20 = *(v19 + 64);
      if (v20)
      {
        v21 = vmulq_n_f32(vmulq_f32(*(*(v19 + 40) + 400), vmulq_n_f32(v18[1], v18[6].f32[1])), 1.0 / *(a4 + 12));
        v21.i32[3] = 0;
        v22 = v20[1];
        *v20 = vaddq_f32(*v20, v21);
        v23 = vmulq_n_f32(vmulq_f32(*(*(v19 + 48) + 400), vmulq_n_f32(v18[3], v18[6].f32[1])), 1.0 / *(a4 + 12));
        v23.i32[3] = 0;
        v24 = v20[3];
        v20[2] = vaddq_f32(v20[2], v23);
        v25 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(*v18, *(*(v19 + 40) + 624)), v18[6].f32[1]), 1.0 / *(a4 + 12));
        v25.i32[3] = 0;
        v20[1] = vaddq_f32(v22, v25);
        v26 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(v18[2], *(*(v19 + 48) + 624)), v18[6].f32[1]), 1.0 / *(a4 + 12));
        v26.i32[3] = 0;
        v20[3] = vaddq_f32(v24, v26);
      }

      v27 = v18[6].f32[1];
      *(v19 + 56) = v27;
      if (fabsf(v27) >= *(v19 + 24))
      {
        *(v19 + 28) = 0;
      }

      v16 += 160;
    }

    while (v17 != v16);
  }

  v28 = *(a1 + 12);
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = 0;
    v31 = *(a1 + 24);
    do
    {
      if (*(v31 + v29 + 208))
      {
        if (*(a4 + 44))
        {
          a6.n128_u32[0] = *(a4 + 12);
          btSolverBody::writebackVelocityAndTransform((v31 + v29), a6.n128_f64[0], *(a4 + 52), a2, a3, a4, a5);
        }

        else
        {
          v32 = (v31 + v29);
          v33 = vaddq_f32(v32[12], v32[5]);
          v32[11] = vaddq_f32(v32[11], v32[4]);
          v32[12] = v33;
        }

        *(*(*(a1 + 24) + v29 + 208) + 352) = *(*(a1 + 24) + v29 + 176);
        v34 = (*(a1 + 24) + v29);
        a6 = v34[12];
        *(v34[13].n128_u64[0] + 368) = a6;
        if (*(a4 + 44))
        {
          v35 = *(a1 + 24) + v29;
          v36 = *(v35 + 208);
          *(v36 + 16) = *v35;
          *(v36 + 32) = *(v35 + 16);
          *(v36 + 48) = *(v35 + 32);
          a6 = *(v35 + 48);
          *(v36 + 64) = a6;
        }

        v31 = *(a1 + 24);
        *(*(v31 + v29 + 208) + 240) = -1;
        v28 = *(a1 + 12);
      }

      ++v30;
      v29 += 224;
    }

    while (v30 < v28);
  }

  if ((*(a1 + 44) & 0x80000000) != 0 && (*(a1 + 48) & 0x80000000) != 0)
  {
    v37 = *(a1 + 56);
    if (v37 && *(a1 + 64) == 1)
    {
      btAlignedFreeInternal(v37);
    }

    *(a1 + 64) = 1;
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 44) = 0;
  if ((*(a1 + 76) & 0x80000000) != 0 && (*(a1 + 80) & 0x80000000) != 0)
  {
    v38 = *(a1 + 88);
    if (v38 && *(a1 + 96) == 1)
    {
      btAlignedFreeInternal(v38);
    }

    *(a1 + 96) = 1;
    *(a1 + 88) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 76) = 0;
  if ((*(a1 + 108) & 0x80000000) != 0 && (*(a1 + 112) & 0x80000000) != 0)
  {
    v39 = *(a1 + 120);
    if (v39 && *(a1 + 128) == 1)
    {
      btAlignedFreeInternal(v39);
    }

    *(a1 + 128) = 1;
    *(a1 + 120) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 108) = 0;
  if ((*(a1 + 140) & 0x80000000) != 0 && (*(a1 + 144) & 0x80000000) != 0)
  {
    v40 = *(a1 + 152);
    if (v40 && *(a1 + 160) == 1)
    {
      btAlignedFreeInternal(v40);
    }

    *(a1 + 160) = 1;
    *(a1 + 152) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 140) = 0;
  if ((*(a1 + 12) & 0x80000000) != 0 && (*(a1 + 16) & 0x80000000) != 0)
  {
    v41 = *(a1 + 24);
    if (v41 && *(a1 + 32) == 1)
    {
      btAlignedFreeInternal(v41);
    }

    *(a1 + 32) = 1;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 12) = 0;
  return 0.0;
}

double btSolverBody::writebackVelocityAndTransform(btSolverBody *this, double result, float a3, uint64_t a4, uint64_t a5, uint64_t a6, btTransform *a7)
{
  if (*(this + 26))
  {
    v8 = vaddq_f32(*(this + 12), *(this + 5));
    *(this + 11) = vaddq_f32(*(this + 11), *(this + 4));
    *(this + 12) = v8;
    if (*(this + 36) != 0.0 || *(this + 37) != 0.0 || *(this + 38) != 0.0 || *(this + 40) != 0.0 || *(this + 41) != 0.0 || *(this + 42) != 0.0)
    {
      v9 = vmulq_n_f32(*(this + 10), a3);
      v9.i32[3] = 0;
      v12 = v9;
      btTransformUtil::integrateTransform(this, (this + 144), &v12, &v13, *&result, a7);
      v10 = v13.var0[1];
      *this = v13.var0[0];
      *(this + 1) = v10;
      result = *v13.var0[2].var0.var0;
      v11 = v14;
      *(this + 2) = v13.var0[2];
      *(this + 3) = v11;
    }
  }

  return result;
}

double btSequentialImpulseConstraintSolver::solveGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*a1 + 64))(a1);
  (*(*a1 + 72))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*a1 + 56))(a1, a2, a3, a8);
  return 0.0;
}

double btSliderConstraint::initParams(btSliderConstraint *this)
{
  *&this->var19 = xmmword_21C2A4650;
  *&this->var23 = xmmword_21C2A4660;
  *&this->var27 = xmmword_21C2A4660;
  *&this->var39 = xmmword_21C2A4670;
  *&this->var43 = xmmword_21C2A4670;
  *&this->var31 = xmmword_21C2A4670;
  *&this->var35 = xmmword_21C2A4670;
  LOBYTE(this[1].var12) = 0;
  this[1].var15.var0.var0[0].var0.var0[2] = 0.0;
  *&this[1].var15.var0.var0[0].var0.var0[3] = 0;
  *(&this[1].var12 + 4) = 0;
  *&this[1].var14 = 0;
  this->var14 = 1;
  v1 = (this->var8 + 16);
  v2 = (this->var9 + 16);
  this->var49[0].var0.var0.var0[0] = 0.0;
  return btSliderConstraint::calculateTransforms(this, v1, v2);
}

double btSliderConstraint::calculateTransforms(btSliderConstraint *this, const btTransform *a2, const btTransform *a3)
{
  var18_low = LOBYTE(this->var18);
  if ((var18_low & 1) != 0 || !this->var13)
  {
    v34 = a2->var0.var0[1];
    v35 = *(this->var15.var0.var0 + 4);
    v36 = *(&this->var15.var0.var0[1] + 4);
    v35.i32[3] = 0;
    v36.i32[3] = 0;
    v38 = *(&this->var15.var0.var0[2] + 4);
    v37 = *(&this->var15.var1 + 4);
    v38.i32[3] = 0;
    v39 = a2->var0.var0[2];
    v40 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v34.f32[0]), v36, *v34.f32, 1), v38, v34, 2);
    v41 = vmulq_f32(a2->var0.var0[0], v37);
    v42 = vmulq_f32(v34, v37);
    v43 = vmulq_f32(v39, v37);
    v44 = vextq_s8(v42, v42, 8uLL).u64[0];
    v43.i32[3] = 0;
    v45 = vpadd_f32(*v41.i8, *v42.i8);
    v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*a2->var0.var0)), v36, *a2->var0.var0[0].var0.var0, 1), v38, a2->var0.var0[0], 2);
    v46 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v39.f32[0]), v36, *v39.f32, 1), v38, v39, 2);
    *v47.f32 = vadd_f32(v45, vzip1_s32(*&vextq_s8(v41, v41, 8uLL), v44));
    *&v47.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
    v18 = vaddq_f32(a2->var1, v47);
    v19 = &this->var54.var0.var0[2];
    p_var1 = &this->var54.var1;
    this->var54.var0.var0[2] = v33;
    this->var54.var1 = v40;
    p_var55 = &this->var55;
    this->var55 = v46;
    this->var56 = v18;
    v48 = a3->var0.var0[1];
    v49 = *(this->var16.var0.var0 + 4);
    v50 = *(&this->var16.var0.var0[1] + 4);
    v49.i32[3] = 0;
    v50.i32[3] = 0;
    v51 = *(&this->var16.var0.var0[2] + 4);
    v52 = *(&this->var16.var1 + 4);
    v51.i32[3] = 0;
    v53 = a3->var0.var0[2];
    v54 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v48.f32[0]), v50, *v48.f32, 1), v51, v48, 2);
    v55 = vmulq_f32(a3->var0.var0[0], v52);
    v56 = vmulq_f32(v48, v52);
    v57 = vmulq_f32(v53, v52);
    v57.i32[3] = 0;
    *v35.f32 = vadd_f32(vpadd_f32(*v55.i8, *v56.i8), vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *&vextq_s8(v56, v56, 8uLL)));
    *&v35.u32[2] = vpadd_f32(vpadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL)), 0);
    v32 = vaddq_f32(a3->var1, v35);
    this->var57 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*a3->var0.var0)), v50, *a3->var0.var0[0].var0.var0, 1), v51, a3->var0.var0[0], 2);
    this->var58 = v54;
    this->var59 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v53.f32[0]), v50, *v53.f32, 1), v51, v53, 2);
    this->var60 = v32;
    this->var62 = v18;
    v33.var0.var0[1] = v40.var0.var0[0];
    *&this->var63 = v32;
    *&v33.var0.var0[2] = LODWORD(v46.var0.var0[0]);
    this->var61 = v33;
    if (var18_low)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = a3->var0.var0[1];
    v5 = *(this->var16.var0.var0 + 4);
    v6 = *(&this->var16.var0.var0[1] + 4);
    v5.i32[3] = 0;
    v6.i32[3] = 0;
    v8 = *(&this->var16.var0.var0[2] + 4);
    v7 = *(&this->var16.var1 + 4);
    v8.i32[3] = 0;
    v9 = a3->var0.var0[2];
    v10 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v4.f32[0]), v6, *v4.f32, 1), v8, v4, 2);
    v11 = vmulq_f32(a3->var0.var0[0], v7);
    v12 = vmulq_f32(v4, v7);
    v13 = vmulq_f32(v9, v7);
    v14 = vextq_s8(v12, v12, 8uLL).u64[0];
    v13.i32[3] = 0;
    v15 = vpadd_f32(*v11.i8, *v12.i8);
    v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*a3->var0.var0)), v6, *a3->var0.var0[0].var0.var0, 1), v8, a3->var0.var0[0], 2);
    v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v9.f32[0]), v6, *v9.f32, 1), v8, v9, 2);
    *v17.f32 = vadd_f32(v15, vzip1_s32(*&vextq_s8(v11, v11, 8uLL), v14));
    *&v17.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
    v18 = vaddq_f32(a3->var1, v17);
    v19 = &this->var54.var0.var0[2];
    p_var1 = &this->var54.var1;
    this->var54.var0.var0[2] = v33;
    this->var54.var1 = v10;
    p_var55 = &this->var55;
    this->var55 = v16;
    this->var56 = v18;
    v22 = a2->var0.var0[1];
    v23 = *(this->var15.var0.var0 + 4);
    v24 = *(&this->var15.var0.var0[1] + 4);
    v23.i32[3] = 0;
    v24.i32[3] = 0;
    v25 = *(&this->var15.var0.var0[2] + 4);
    v26 = *(&this->var15.var1 + 4);
    v25.i32[3] = 0;
    v27 = a2->var0.var0[2];
    v28 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v22.f32[0]), v24, *v22.f32, 1), v25, v22, 2);
    v29 = vmulq_f32(a2->var0.var0[0], v26);
    v30 = vmulq_f32(v22, v26);
    v31 = vmulq_f32(v27, v26);
    v31.i32[3] = 0;
    *v5.f32 = vadd_f32(vpadd_f32(*v29.i8, *v30.i8), vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)));
    *&v5.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
    v32 = vaddq_f32(a2->var1, v5);
    this->var57 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*a2->var0.var0)), v24, *a2->var0.var0[0].var0.var0, 1), v25, a2->var0.var0[0], 2);
    this->var58 = v28;
    this->var59 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v27.f32[0]), v24, *v27.f32, 1), v25, v27, 2);
    this->var60 = v32;
    this->var62 = v18;
    v33.var0.var0[1] = v10.var0.var0[0];
    *&this->var63 = v32;
    *&v33.var0.var0[2] = LODWORD(v16.var0.var0[0]);
    this->var61 = v33;
  }

  if (!this->var13)
  {
    v58 = vsubq_f32(v18, v32);
    goto LABEL_8;
  }

LABEL_6:
  v58 = vsubq_f32(v32, v18);
LABEL_8:
  v59 = 0;
  v58.i32[3] = 0;
  *&this->var71 = v58;
  v60 = vmulq_f32(v33, v58);
  v61 = vmulq_n_f32(v33, vadd_f32(vpadd_f32(*v60.i8, *v60.i8), *&vextq_s8(v60, v60, 8uLL)).f32[0]);
  v61.i32[3] = 0;
  v62 = vaddq_f32(v18, v61);
  *&this->var67 = v62;
  do
  {
    v62.i32[0] = LODWORD(v19->var0.var0[v59]);
    v62.i32[1] = LODWORD(p_var1->var0.var0[v59]);
    v62.i32[2] = LODWORD(p_var55->var0.var0[v59]);
    v63 = vmulq_f32(v62, v58);
    v64 = vpadd_f32(*v63.i8, *v63.i8);
    v62 = vextq_s8(v63, v63, 8uLL);
    *v62.f32 = vadd_f32(v64, *v62.f32);
    *(&this[1].var0 + v59 * 4) = v62.i32[0];
    ++v59;
  }

  while (v59 != 3);
  return *v62.i64;
}

void btSliderConstraint::btSliderConstraint(btSliderConstraint *this, btRigidBody *a2, btRigidBody *a3, const btTransform *a4, const btTransform *a5, char a6)
{
  btTypedConstraint::btTypedConstraint(this, 7, a2, a3);
  *v9 = &unk_282DCAED0;
  *(v9 + 72) = 0;
  *(v9 + 80) = *a4;
  *(v9 + 144) = *a5;
  *(v9 + 208) = a6;
  btSliderConstraint::initParams(v9);
}

void btSliderConstraint::btSliderConstraint(btSliderConstraint *this, float32x4_t *a2, const btTransform *a3, char a4)
{
  FixedBody = btTypedConstraint::getFixedBody(this);
  btTypedConstraint::btTypedConstraint(this, 7, FixedBody, a2);
  this->var0 = &unk_282DCAED0;
  this->var13 = 0;
  v9 = a3->var0.var0[0];
  *(this->var16.var0.var0 + 4) = a3->var0.var0[0];
  v10 = a3->var0.var0[1];
  *(&this->var16.var0.var0[1] + 4) = v10;
  v11 = a3->var0.var0[2];
  *(&this->var16.var0.var0[2] + 4) = v11;
  var1 = a3->var1;
  *(&this->var16.var1 + 4) = var1;
  LOBYTE(this->var18) = a4;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = vmulq_f32(var1, v13);
  v17 = vmulq_f32(var1, v14);
  *v16.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vpadd_f32(*v16.f32, *v17.i8));
  v18 = vmulq_f32(var1, v15);
  v18.i32[3] = 0;
  *&v16.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  v11.i32[3] = 0;
  v19 = vaddq_f32(a2[4], v16);
  v10.i32[3] = 0;
  v9.i32[3] = 0;
  *(this->var15.var0.var0 + 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v13.f32[0]), v10, *v13.f32, 1), v11, v13, 2);
  *(&this->var15.var0.var0[1] + 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v14.f32[0]), v10, *v14.f32, 1), v11, v14, 2);
  *(&this->var15.var0.var0[2] + 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v15.f32[0]), v10, *v15.f32, 1), v11, v15, 2);
  *(&this->var15.var1 + 4) = v19;
  btSliderConstraint::initParams(v20);
}

btSliderConstraint *btSliderConstraint::getInfo1(btSliderConstraint *result, int32x2_t *a2)
{
  if (result->var13)
  {
    v3 = 0;
    a2->i32[0] = 0;
LABEL_9:
    a2->i32[1] = v3;
    return result;
  }

  v4 = result;
  *a2 = 0x200000004;
  *v5.i64 = btSliderConstraint::calculateTransforms(result, (result->var8 + 16), (result->var9 + 16));
  btSliderConstraint::testAngLimits(v4, v5, v6, v7);
  result = btSliderConstraint::testLinLimits(v4);
  if ((v4->var48 & 1) != 0 || LOBYTE(v4[1].var12) == 1)
  {
    *a2 = vadd_s32(*a2, 0xFFFFFFFF00000001);
  }

  if ((v4->var48 & 0x100) != 0 || LOBYTE(v4[1].var15.var0.var0[0].var0.var0[1]) == 1)
  {
    v8 = a2->i32[1];
    ++a2->i32[0];
    v3 = v8 - 1;
    goto LABEL_9;
  }

  return result;
}

void btSliderConstraint::testAngLimits(btSliderConstraint *this, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  this[1].var10 = 0.0;
  BYTE1(this->var48) = 0;
  var21 = this->var21;
  var22 = this->var22;
  if (var21 <= var22)
  {
    a3.i32[0] = LODWORD(this->var54.var0.var0[2].var0.var0[1]);
    a3.i32[1] = LODWORD(this->var54.var1.var0.var0[1]);
    a3.i32[2] = LODWORD(this->var55.var0.var0[1]);
    a2.i32[0] = LODWORD(this->var54.var0.var0[2].var0.var0[2]);
    a2.i32[1] = LODWORD(this->var54.var1.var0.var0[2]);
    a2.i32[2] = LODWORD(this->var55.var0.var0[2]);
    a4.i32[0] = LODWORD(this->var57.var0.var0[1]);
    a4.i32[1] = LODWORD(this->var58.var0.var0[1]);
    a4.i32[2] = LODWORD(this->var59.var0.var0[1]);
    v7 = vmulq_f32(a2, a4);
    v8 = vmulq_f32(a3, a4);
    v9 = atan2f(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0], vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]);
    v10 = v9;
    if (var21 < var22)
    {
      if (v9 >= var21)
      {
        if (v9 > var22)
        {
          v12 = fmodf(v9 - var22, 6.2832);
          if (v12 >= -3.1416)
          {
            if (v12 > 3.1416)
            {
              v12 = v12 + -6.2832;
            }
          }

          else
          {
            v12 = v12 + 6.2832;
          }

          v15 = fabsf(v12);
          v16 = fmodf(v10 - var21, 6.2832);
          if (v16 >= -3.1416)
          {
            if (v16 > 3.1416)
            {
              v16 = v16 + -6.2832;
            }
          }

          else
          {
            v16 = v16 + 6.2832;
          }

          if (fabsf(v16) < v15)
          {
            v10 = v10 + -6.2832;
          }
        }
      }

      else
      {
        v11 = fmodf(var21 - v9, 6.2832);
        if (v11 >= -3.1416)
        {
          if (v11 > 3.1416)
          {
            v11 = v11 + -6.2832;
          }
        }

        else
        {
          v11 = v11 + 6.2832;
        }

        v13 = fabsf(v11);
        v14 = fmodf(var22 - v10, 6.2832);
        if (v14 >= -3.1416)
        {
          if (v14 > 3.1416)
          {
            v14 = v14 + -6.2832;
          }
        }

        else
        {
          v14 = v14 + 6.2832;
        }

        if (v13 >= fabsf(v14))
        {
          v10 = v10 + 6.2832;
        }
      }
    }

    *(&this[1].var9 + 1) = v10;
    if (v10 < var21 || (var21 = var22, v10 > var22))
    {
      this[1].var10 = v10 - var21;
      BYTE1(this->var48) = 1;
    }
  }
}

btSliderConstraint *btSliderConstraint::testLinLimits(btSliderConstraint *this)
{
  LOBYTE(this->var48) = 0;
  v1 = *&this[1].var0;
  *&this[1].var9 = v1;
  var19 = this->var19;
  var20 = this->var20;
  if (var19 > var20)
  {
    goto LABEL_2;
  }

  if (v1 <= var20)
  {
    if (v1 >= var19)
    {
LABEL_2:
      LODWORD(this[1].var0) = 0;
      return this;
    }

    v4 = v1 - var19;
  }

  else
  {
    v4 = v1 - var20;
  }

  *&this[1].var0 = v4;
  LOBYTE(this->var48) = 1;
  return this;
}

void btSliderConstraint::getInfo2(float32x4_t *a1, uint64_t a2, int8x16_t a3, double a4, double a5, float32x4_t a6, float32x4_t a7)
{
  v7 = a1[2].i64[1];
  a3.i32[0] = v7[24].i32[0];
  btSliderConstraint::getInfo2NonVirtual(a1, a2, v7 + 1, (a1[3].i64[0] + 16), v7 + 22, (a1[3].i64[0] + 352), a3, *(a1[3].i64[0] + 384), a5, a6, a7);
}

void btSliderConstraint::getInfo2NonVirtual(float32x4_t *this, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, int8x16_t a7, float a8, double a9, float32x4_t a10, float32x4_t a11)
{
  v15 = *(a2 + 40);
  if (this[13].i8[0])
  {
    v16 = 1.0;
  }

  else
  {
    v16 = -1.0;
  }

  v17 = fminf(*a7.i32, a8) < 0.00000011921;
  v18 = *a7.i32 + a8;
  v19 = a8 / v18;
  if (v18 <= 0.0)
  {
    v19 = 0.5;
  }

  *a7.i32 = 1.0 - v19;
  a10.i32[0] = this[59].i32[0];
  a10.i32[1] = this[60].i32[0];
  v20 = a10;
  v20.i32[2] = this[61].i32[0];
  a11.i32[0] = this[63].i32[0];
  a11.i32[1] = this[64].i32[0];
  v21 = a11;
  v21.i32[2] = this[65].i32[0];
  v22 = this[4].u8[9];
  if (v22 == 1)
  {
    v23 = vmulq_n_f32(v20, v19);
    v23.i32[3] = 0;
    v24 = vmulq_n_f32(v21, *a7.i32);
    v24.i32[3] = 0;
    v25 = vaddq_f32(v23, v24);
    v26 = vmulq_f32(v25, v25);
    _Q22 = vmulq_n_f32(v25, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v26, v26, 8uLL), vpadd_f32(*v26.i8, *v26.i8)).f32[0]));
    _S6 = _Q22.i32[1];
    if (fabsf(_Q22.f32[2]) <= 0.70711)
    {
      v42 = vmuls_lane_f32(_Q22.f32[1], *_Q22.f32, 1) + (_Q22.f32[0] * _Q22.f32[0]);
      v43 = 1.0 / sqrtf(v42);
      v39 = -(_Q22.f32[1] * v43);
      v34 = v43 * _Q22.f32[0];
      v199.f32[0] = v39;
      v199.f32[1] = v43 * _Q22.f32[0];
      v199.i32[2] = 0;
      v36 = -(_Q22.f32[2] * (v43 * _Q22.f32[0]));
      v37 = _Q22.f32[2] * v39;
      v198.f32[0] = v36;
      v198.f32[1] = _Q22.f32[2] * v39;
      v38 = v42 * v43;
      v198.f32[2] = v42 * v43;
      v35 = 0.0;
    }

    else
    {
      __asm { FMLA            S16, S6, V22.S[1] }

      v33 = 1.0 / sqrtf(_S16);
      v199.i32[0] = 0;
      v34 = -(_Q22.f32[2] * v33);
      v35 = vmuls_lane_f32(v33, *_Q22.f32, 1);
      *(v199.i64 + 4) = __PAIR64__(LODWORD(v35), LODWORD(v34));
      v36 = _S16 * v33;
      v37 = -(_Q22.f32[0] * v35);
      v198.f32[0] = _S16 * v33;
      v198.f32[1] = v37;
      v38 = v34 * _Q22.f32[0];
      v198.f32[2] = v34 * _Q22.f32[0];
      v39 = 0.0;
    }
  }

  else
  {
    v39 = this[59].f32[1];
    v34 = this[60].f32[1];
    v35 = this[61].f32[1];
    v40.i64[0] = __PAIR64__(LODWORD(v34), LODWORD(v39));
    v40.i64[1] = LODWORD(v35);
    v36 = this[59].f32[2];
    v37 = this[60].f32[2];
    v38 = this[61].f32[2];
    v41.i64[0] = __PAIR64__(LODWORD(v37), LODWORD(v36));
    v41.i64[1] = LODWORD(v38);
    v198 = v41;
    v199 = v40;
    _Q22 = v20;
  }

  v44 = this[66];
  v45 = this[62];
  v46 = *(a2 + 16);
  *v46 = LODWORD(v39);
  v46[1] = LODWORD(v34);
  v46[2] = LODWORD(v35);
  v47 = 4 * v15;
  v46[v15] = LODWORD(v36);
  v48 = 4 * v15 + 4;
  *(v46 + v48) = v37;
  v49 = 4 * v15 + 8;
  *(v46 + v49) = v38;
  v50 = *(a2 + 32);
  *v50 = -v39;
  v50[1] = -v34;
  v50[2] = -v35;
  v50[v15] = -v36;
  *(v50 + v48) = -v37;
  *(v50 + v49) = -v38;
  v51 = this[20].i32[2];
  v52 = this[19].f32[1];
  if ((v51 & 0x80) == 0)
  {
    v52 = v52 * *(a2 + 4);
  }

  *v53.f32 = vext_s8(*a10.f32, *&vextq_s8(v20, v20, 8uLL), 4uLL);
  v53.i64[1] = a10.i64[0];
  *v54.f32 = vext_s8(*a11.f32, *&vextq_s8(v21, v21, 8uLL), 4uLL);
  v54.i64[1] = a11.i64[0];
  v55 = v52 * *a2;
  v56 = vsubq_f32(vmulq_f32(v20, v54), vmulq_f32(v53, v21));
  v57 = vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL);
  v57.i32[3] = 0;
  v58 = v199;
  v59 = vmulq_f32(v199, v57);
  v60 = *(a2 + 48);
  *v60 = v55 * vadd_f32(vpadd_f32(*v59.i8, *v59.i8), *&vextq_s8(v59, v59, 8uLL)).f32[0];
  v61 = v198;
  v62 = vmulq_f32(v198, v57);
  v60[v15] = v55 * vadd_f32(vpadd_f32(*v62.i8, *v62.i8), *&vextq_s8(v62, v62, 8uLL)).f32[0];
  if ((v51 & 0x40) != 0)
  {
    v63 = this[20].i32[0];
    v64 = *(a2 + 56);
    *v64 = v63;
    v64[v15] = v63;
  }

  v65 = vsubq_f32(v44, v45);
  v66 = a3[3];
  v67 = a4[3];
  v68 = 2 * v15;
  v69 = 3 * v15;
  v197 = 0uLL;
  v70 = &v46[2 * v15];
  v71 = &v46[3 * v15];
  if (v22)
  {
    v72 = vsubq_f32(this[66], v67);
    v72.i32[3] = 0;
    v73 = vmulq_f32(_Q22, v72);
    v74 = vmulq_n_f32(_Q22, vadd_f32(vpadd_f32(*v73.i8, *v73.i8), *&vextq_s8(v73, v73, 8uLL)).f32[0]);
    v74.i32[3] = 0;
    v75 = vsubq_f32(this[62], v66);
    v75.i32[3] = 0;
    v76 = vmulq_f32(_Q22, v75);
    v77 = vmulq_n_f32(_Q22, vadd_f32(vpadd_f32(*v76.i8, *v76.i8), *&vextq_s8(v76, v76, 8uLL)).f32[0]);
    v77.i32[3] = 0;
    v78 = vsubq_f32(v75, v77);
    v79 = v78;
    v79.i32[3] = 0;
    v80 = vmulq_n_f32(_Q22, this[75].f32[0] - this[72].f32[0]);
    v80.i32[3] = 0;
    v81 = vmulq_n_f32(v78, *a7.i32);
    v82 = vsubq_f32(vaddq_f32(v80, v77), v74);
    v83 = vmulq_n_f32(v82, v19);
    v83.i32[3] = 0;
    v84 = vsubq_f32(v72, v74);
    v85 = vaddq_f32(v79, v83);
    v86 = vsubq_f32(v84, vmulq_n_f32(v82, *a7.i32));
    v86.i32[3] = 0;
    v87 = vmulq_n_f32(v84, v19);
    v87.i32[3] = 0;
    v81.i32[3] = 0;
    v58 = vaddq_f32(v87, v81);
    v88 = vmulq_f32(v58, v58);
    v89 = vadd_f32(vpadd_f32(*v88.i8, *v88.i8), *&vextq_s8(v88, v88, 8uLL)).f32[0];
    if (v89 <= 0.00000011921)
    {
      v58.i32[0] = this[59].i32[1];
      v58.i32[1] = this[60].i32[1];
      v58.i32[2] = this[61].i32[1];
    }

    else
    {
      v58 = vmulq_n_f32(v58, 1.0 / sqrtf(v89));
    }

    v106 = 0;
    v107 = vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL);
    v108 = vsubq_f32(vmulq_f32(_Q22, v107), vmulq_f32(vextq_s8(vextq_s8(_Q22, _Q22, 0xCuLL), _Q22, 8uLL), v58));
    v61 = vextq_s8(vextq_s8(v108, v108, 0xCuLL), v108, 8uLL);
    v61.i32[3] = 0;
    v198 = v61;
    v199 = v58;
    v109 = vextq_s8(vextq_s8(v85, v85, 0xCuLL), v85, 8uLL);
    v110 = vsubq_f32(vmulq_f32(v85, v107), vmulq_f32(v109, v58));
    v111 = vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL);
    v112 = vsubq_f32(vmulq_f32(v107, v86), vmulq_f32(v111, v58));
    v113 = vextq_s8(vextq_s8(v112, v112, 0xCuLL), v112, 8uLL);
    v113.i32[3] = 0;
    v197 = v113;
    v70[2] = v110.i32[0];
    *v70 = vextq_s8(v110, a7, 4uLL).u64[0];
    do
    {
      v50[v68 + v106] = -v197.f32[v106];
      ++v106;
    }

    while (v106 != 3);
    v114 = vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL);
    v115 = vsubq_f32(vmulq_f32(v85, v114), vmulq_f32(v109, v61));
    v116 = vextq_s8(vextq_s8(v115, v115, 0xCuLL), v115, 8uLL);
    v116.i32[3] = 0;
    v117 = vsubq_f32(vmulq_f32(v114, v86), vmulq_f32(v111, v61));
    v118 = vextq_s8(vextq_s8(v117, v117, 0xCuLL), v117, 8uLL);
    v118.i32[3] = 0;
    v197 = v118;
    if (v17 && this[20].i8[5] == 1)
    {
      v197 = vmulq_n_f32(v118, *a7.i32);
      v116 = vmulq_n_f32(v116, v19);
    }

    v119 = 0;
    *v71 = v116.i64[0];
    v71[2] = v116.i32[2];
    do
    {
      v50[v69 + v119] = -v197.f32[v119];
      ++v119;
    }

    while (v119 != 3);
    v120 = 0;
    v101 = *(a2 + 8);
    v121 = v101 + 4 * v68;
    *v121 = v199.i64[0];
    *(v121 + 8) = v199.i32[2];
    v122 = v101 + 4 * v69;
    *v122 = v198.i64[0];
    *(v122 + 8) = v198.i32[2];
    v104 = *(a2 + 24);
    do
    {
      *(v104 + 4 * v68 + v120 * 4) = -v199.f32[v120];
      ++v120;
    }

    while (v120 != 3);
    for (i = 0; i != 3; ++i)
    {
      *(v104 + 4 * v69 + i * 4) = -v198.f32[i];
    }

    v91 = 0uLL;
  }

  else
  {
    v90 = 0;
    v91 = vsubq_f32(v67, v66);
    v91.i32[3] = 0;
    v92 = vextq_s8(vextq_s8(v91, v91, 0xCuLL), v91, 8uLL);
    v93 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL), v91), vmulq_f32(v58, v92));
    v94 = vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL);
    v94.i32[3] = 0;
    v196 = v94;
    do
    {
      *&v70[v90] = v19 * *&v196.i32[v90];
      ++v90;
    }

    while (v90 != 3);
    for (j = 0; j != 3; ++j)
    {
      v50[v68 + j] = *a7.i32 * *&v196.i32[j];
    }

    v96 = 0;
    v97 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL), v91), vmulq_f32(v61, v92));
    v98 = vextq_s8(vextq_s8(v97, v97, 0xCuLL), v97, 8uLL);
    v98.i32[3] = 0;
    v196 = v98;
    do
    {
      *&v71[v96] = v19 * *&v196.i32[v96];
      ++v96;
    }

    while (v96 != 3);
    for (k = 0; k != 3; ++k)
    {
      v50[v69 + k] = *a7.i32 * *&v196.i32[k];
    }

    v100 = 0;
    v101 = *(a2 + 8);
    v102 = v101 + 4 * v68;
    *v102 = v199.i64[0];
    *(v102 + 8) = v199.i32[2];
    v103 = v101 + 4 * v69;
    *v103 = v198.i64[0];
    *(v103 + 8) = v198.i32[2];
    v104 = *(a2 + 24);
    do
    {
      *(v104 + 4 * v68 + v100 * 4) = -v199.f32[v100];
      ++v100;
    }

    while (v100 != 3);
    for (m = 0; m != 3; ++m)
    {
      *(v104 + 4 * v69 + m * 4) = -v198.f32[m];
    }

    v86 = 0uLL;
    v85 = 0uLL;
  }

  v65.i32[3] = 0;
  v124 = this[18].f32[1];
  if ((v51 & 0x20) == 0)
  {
    v124 = v124 * *(a2 + 4);
  }

  v125 = v124 * *a2;
  v126 = vmulq_f32(v58, v65);
  v60[v68] = v125 * vadd_f32(vpadd_f32(*v126.i8, *v126.i8), *&vextq_s8(v126, v126, 8uLL)).f32[0];
  v127 = vmulq_f32(v61, v65);
  v60[v69] = v125 * vadd_f32(vpadd_f32(*v127.i8, *v127.i8), *&vextq_s8(v127, v127, 8uLL)).f32[0];
  if ((v51 & 0x10) != 0)
  {
    v128 = this[19].i32[0];
    v129 = *(a2 + 56);
    *(v129 + 4 * v68) = v128;
    *(v129 + 4 * v69) = v128;
  }

  v130 = this[20].u8[4];
  v131 = _Q22.f32[2];
  if (v130 == 1)
  {
    v132 = v16 * this[72].f32[0];
    v133 = v132 <= 0.0;
    v134 = this[76].u8[0];
  }

  else
  {
    v134 = this[76].u8[0];
    if (v134 != 1)
    {
      v154 = 4;
      goto LABEL_92;
    }

    v133 = 0;
    v132 = 0.0;
  }

  v135 = v47;
  v136 = v47;
  *(v101 + v136 * 4) = _Q22.i64[0];
  v137 = (4 * v15) | 2;
  *(v101 + 4 * v137) = _Q22.i32[2];
  *(v104 + v136 * 4) = vneg_f32(*_Q22.f32);
  *(v104 + 4 * v137) = -_Q22.f32[2];
  if (v22)
  {
    if (v17)
    {
      goto LABEL_57;
    }

    v138.i64[0] = vextq_s8(_Q22, _Q22, 4uLL).u64[0];
    v138.i64[1] = _Q22.i64[0];
    v139 = vmulq_f32(v138, v85);
    v140 = vsubq_f32(vmulq_f32(v138, v86), vmulq_f32(_Q22, vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL)));
    v141 = vextq_s8(vextq_s8(v140, v140, 0xCuLL), v140, 8uLL);
    v141.i32[3] = 0;
    v142 = vsubq_f32(v139, vmulq_f32(_Q22, vextq_s8(vextq_s8(v85, v85, 0xCuLL), v85, 8uLL)));
    *&v46[v136] = vextq_s8(v142, v142, 4uLL).u64[0];
    v46[v137] = v142.i32[0];
    v197 = v141;
    *&v50[v136] = vneg_f32(*v141.i8);
    v143 = -*&v141.i32[2];
  }

  else
  {
    v144 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(_Q22, _Q22, 0xCuLL), _Q22, 8uLL), v91), vmulq_f32(_Q22, vextq_s8(vextq_s8(v91, v91, 0xCuLL), v91, 8uLL)));
    v145 = vextq_s8(v144, v144, 4uLL).u64[0];
    *&v46[v136] = vmul_n_f32(v145, v19);
    *&v46[v137] = v19 * *v144.i32;
    *&v50[v136] = vmul_n_f32(v145, *a7.i32);
    v143 = *a7.i32 * *v144.i32;
  }

  v50[v137] = v143;
LABEL_57:
  v146 = this[13].f32[1];
  v147 = this[13].f32[2];
  v60[v135] = 0.0;
  v148 = *(a2 + 64);
  v149 = *(a2 + 72);
  *(v148 + 4 * v135) = 0;
  *(v149 + 4 * v135) = 0;
  if (v146 == v147)
  {
    v150 = v130;
  }

  else
  {
    v150 = 0;
  }

  v151 = (a2 + 4);
  if ((v51 & 0x200) != 0)
  {
    v151 = &this[16].f32[1];
  }

  v152 = *v151;
  if (v134 && (v150 & 1) == 0)
  {
    v194 = _Q22;
    if (v51)
    {
      *(*(a2 + 56) + 4 * v135) = this[15].i32[0];
    }

    MotorFactor = btTypedConstraint::getMotorFactor(this, this[75].f32[0], this[13].f32[1], this[13].f32[2], this[76].f32[1], v152 * *a2);
    v60 = *(a2 + 48);
    v60[v135] = v60[v135] + (-(v16 * MotorFactor) * this[76].f32[1]);
    v148 = *(a2 + 64);
    v149 = *(a2 + 72);
    *(v148 + 4 * v135) = *(v148 + 4 * v135) - (this[76].f32[2] * *a2);
    *(v149 + 4 * v135) = *(v149 + 4 * v135) + (this[76].f32[2] * *a2);
    _Q22 = v194;
  }

  if (!v130)
  {
    goto LABEL_91;
  }

  v60[v135] = v60[v135] + ((v152 * *a2) * v132);
  if (this[20].i8[9])
  {
    *(*(a2 + 56) + 4 * v135) = this[17].i32[0];
  }

  if (v146 == v147)
  {
    *(v148 + 4 * v135) = -8388609;
LABEL_76:
    *(v149 + 4 * v135) = 2139095039;
    goto LABEL_77;
  }

  if (!v133)
  {
    *(v148 + 4 * v135) = 0;
    goto LABEL_76;
  }

  *(v148 + 4 * v135) = -8388609;
  *(v149 + 4 * v135) = 0;
LABEL_77:
  v155 = this[16].f32[3];
  if ((1.0 - v155) < 0.0 || (1.0 - v155) > 0.0)
  {
    v157 = vmulq_f32(_Q22, *a5);
    v158 = vmulq_f32(_Q22, *a6);
    v159 = v16 * vsub_f32(vadd_f32(vpadd_f32(*v157.i8, *v157.i8), *&vextq_s8(v157, v157, 8uLL)), vadd_f32(vpadd_f32(*v158.i8, *v158.i8), *&vextq_s8(v158, v158, 8uLL))).f32[0];
    v156 = v60[v135];
    v160 = -(vabds_f32(1.0, v155) * v159);
    if (v133)
    {
      if (v159 >= 0.0 || v160 <= v156)
      {
        goto LABEL_90;
      }
    }

    else if (v159 <= 0.0 || v160 >= v156)
    {
      goto LABEL_90;
    }

    v60[v135] = v160;
    v156 = v160;
  }

  else
  {
    v156 = v60[v135];
  }

LABEL_90:
  v60[v135] = this[16].f32[1] * v156;
LABEL_91:
  v154 = 5;
LABEL_92:
  v163 = this[20].u8[5];
  if (v163 == 1)
  {
    v164 = this[75].f32[2];
    v165 = v164 > 0.0;
    v166 = this[77].u8[0];
  }

  else
  {
    v166 = this[77].u8[0];
    if (v166 != 1)
    {
      return;
    }

    v165 = 0;
    v164 = 0.0;
  }

  v167 = *(a2 + 40) * v154;
  v168 = *(a2 + 16);
  v169 = 4 * v167;
  *(v168 + v169) = _Q22.i64[0];
  v170 = 4 * v167 + 8;
  *(v168 + v170) = _Q22.i32[2];
  v171 = *(a2 + 32);
  *(v171 + v169) = vneg_f32(*_Q22.f32);
  *(v171 + v170) = -v131;
  v172 = this[13].f32[3];
  v173 = this[14].f32[0];
  if (v172 == v173)
  {
    v174 = v163;
  }

  else
  {
    v174 = 0;
  }

  v175 = this[20].i32[2];
  v176 = (a2 + 4);
  if ((v175 & 0x800) != 0)
  {
    v176 = &this[17].f32[1];
  }

  v177 = *v176;
  if (v166 && (v174 & 1) == 0)
  {
    v195 = _Q22;
    if ((v175 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v167) = this[16].i32[0];
      v179 = this[13].f32[3];
      v178 = this[14].f32[0];
    }

    else
    {
      v178 = this[14].f32[0];
      v179 = this[13].f32[3];
    }

    v180 = btTypedConstraint::getMotorFactor(this, this[75].f32[1], v179, v178, this[77].f32[1], v177 * *a2);
    v60 = *(a2 + 48);
    v60[v167] = v180 * this[77].f32[1];
    v181 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v167) = -(this[77].f32[2] * *a2);
    *(v181 + 4 * v167) = this[77].f32[2] * *a2;
    _Q22 = v195;
  }

  if (v163)
  {
    v60[v167] = v60[v167] + ((v177 * *a2) * v164);
    if ((this[20].i8[9] & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v167) = this[18].i32[0];
    }

    v182 = -3.4028e38;
    v183 = 0.0;
    if (v165)
    {
      v184 = 0.0;
    }

    else
    {
      v184 = -3.4028e38;
    }

    if (v172 != v173)
    {
      v182 = v184;
    }

    if (v172 == v173 || v165)
    {
      v183 = 3.4028e38;
    }

    v185 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v167) = v182;
    *(v185 + 4 * v167) = v183;
    v186 = this[17].f32[3];
    if ((1.0 - v186) < 0.0 || (1.0 - v186) > 0.0)
    {
      v188 = vmulq_f32(_Q22, *(this[2].i64[1] + 368));
      v189 = vmulq_f32(_Q22, *(this[3].i64[0] + 368));
      v190 = vsub_f32(vadd_f32(vpadd_f32(*v188.i8, *v188.i8), *&vextq_s8(v188, v188, 8uLL)), vadd_f32(vpadd_f32(*v189.i8, *v189.i8), *&vextq_s8(v189, v189, 8uLL))).f32[0];
      v187 = v60[v167];
      v191 = -(vabds_f32(1.0, v186) * v190);
      if (v165)
      {
        if (v190 >= 0.0 || v191 <= v187)
        {
          goto LABEL_130;
        }
      }

      else if (v190 <= 0.0 || v191 >= v187)
      {
        goto LABEL_130;
      }

      v60[v167] = v191;
      v187 = v191;
    }

    else
    {
      v187 = v60[v167];
    }

LABEL_130:
    v60[v167] = this[17].f32[1] * v187;
  }
}