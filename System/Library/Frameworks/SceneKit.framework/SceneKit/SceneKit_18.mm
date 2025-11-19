uint64_t btIDebugDraw::drawCone(btIDebugDraw *this, float32_t a2, float a3, int a4, const btTransform *a5, const btVector3 *a6)
{
  v81 = 0uLL;
  v81.f32[a4] = a3 * 0.5;
  v11 = (a4 + 1) % 3;
  v80 = 0uLL;
  v80.f32[v11] = a2;
  v79 = 0uLL;
  v79.f32[(a4 + 2) % 3] = a2;
  v12 = a5->var0.var0[0];
  v13 = a5->var0.var0[1];
  v14 = vmulq_f32(a5->var0.var0[0], v81);
  v15 = vmulq_f32(v81, v13);
  v16 = a5->var0.var0[2];
  var1 = a5->var1;
  v18 = vmulq_f32(v81, v16);
  v18.i32[3] = 0;
  *v14.f32 = vadd_f32(vpadd_f32(*v14.f32, *v15.i8), vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)));
  *&v14.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  v78 = vaddq_f32(var1, v14);
  v71 = vnegq_f32(v81);
  v73 = var1;
  v67 = v81;
  v69 = v80;
  v19 = vsubq_f32(v80, v81);
  v20 = vmulq_f32(v12, v19);
  v21 = vmulq_f32(v13, v19);
  v22 = vmulq_f32(v16, v19);
  v22.i32[3] = 0;
  *v20.f32 = vadd_f32(vpadd_f32(*v20.f32, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *&v20.u32[2] = vpadd_f32(vpadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)), 0);
  v77 = vaddq_f32(var1, v20);
  (*(*this + 16))(this, &v78, &v77);
  v23 = a5->var0.var0[1];
  v24 = vmulq_f32(a5->var0.var0[0], v67);
  v25 = vmulq_f32(v67, v23);
  v26 = a5->var0.var0[2];
  v27 = vmulq_f32(v67, v26);
  v27.i32[3] = 0;
  *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), 0);
  v28 = vaddq_f32(v73, v24);
  v29 = vsubq_f32(v71, v69);
  v30 = vmulq_f32(v26, v29);
  v29.i32[3] = 0;
  v31 = vmulq_f32(a5->var0.var0[0], v29);
  v32 = vmulq_f32(v23, v29);
  v30.i32[3] = 0;
  *v31.f32 = vadd_f32(vpadd_f32(*v31.f32, *v32.i8), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
  *&v31.u32[2] = vpadd_f32(vpadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)), 0);
  v77 = vaddq_f32(v73, v31);
  v78 = v28;
  (*(*this + 16))(this, &v78, &v77, a6);
  v33 = a5->var0.var0[0];
  v34 = a5->var0.var0[1];
  v35 = vmulq_f32(a5->var0.var0[0], v81);
  v36 = vmulq_f32(v81, v34);
  v37 = a5->var0.var0[2];
  v38 = vmulq_f32(v81, v37);
  v38.i32[3] = 0;
  *v35.f32 = vadd_f32(vpadd_f32(*v35.f32, *v36.i8), vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v36, v36, 8uLL)));
  *&v35.u32[2] = vpadd_f32(vpadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)), 0);
  v78 = vaddq_f32(v73, v35);
  v72 = vnegq_f32(v81);
  v68 = v81;
  v70 = v79;
  v39 = vsubq_f32(v79, v81);
  v40 = vmulq_f32(v33, v39);
  v41 = vmulq_f32(v34, v39);
  v42 = vmulq_f32(v37, v39);
  v42.i32[3] = 0;
  *v40.f32 = vadd_f32(vpadd_f32(*v40.f32, *v41.i8), vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)));
  *&v40.u32[2] = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
  v77 = vaddq_f32(v73, v40);
  (*(*this + 16))(this, &v78, &v77, a6);
  v43 = a5->var0.var0[1];
  v44 = vmulq_f32(a5->var0.var0[0], v68);
  v45 = vmulq_f32(v68, v43);
  v46 = a5->var0.var0[2];
  v47 = vmulq_f32(v68, v46);
  v47.i32[3] = 0;
  *v44.f32 = vadd_f32(vpadd_f32(*v44.f32, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
  *&v44.u32[2] = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
  v48 = vaddq_f32(v73, v44);
  v49 = vsubq_f32(v72, v70);
  v50 = vmulq_f32(v46, v49);
  v49.i32[3] = 0;
  v51 = vmulq_f32(a5->var0.var0[0], v49);
  v52 = vmulq_f32(v43, v49);
  v50.i32[3] = 0;
  *v51.f32 = vadd_f32(vpadd_f32(*v51.f32, *v52.i8), vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v52, v52, 8uLL)));
  *&v51.u32[2] = vpadd_f32(vpadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)), 0);
  v77 = vaddq_f32(v73, v51);
  v78 = v48;
  (*(*this + 16))(this, &v78, &v77, a6);
  v78 = 0uLL;
  v78.i32[a4] = 1065353216;
  v77 = 0uLL;
  v77.i32[v11] = 1065353216;
  v53 = a5->var0.var0[0];
  v54 = a5->var0.var0[1];
  v55 = vmulq_f32(a5->var0.var0[0], v81);
  v56 = vmulq_f32(v81, v54);
  v57 = a5->var0.var0[2];
  v58 = vmulq_f32(v81, v57);
  v58.i32[3] = 0;
  *v55.f32 = vadd_f32(vpadd_f32(*v55.f32, *v56.i8), vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *&vextq_s8(v56, v56, 8uLL)));
  *&v55.u32[2] = vpadd_f32(vpadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL)), 0);
  v59 = vsubq_f32(v73, v55);
  v59.i32[3] = 0;
  v76 = v59;
  v60 = vmulq_f32(v53, v78);
  v61 = vmulq_f32(v54, v78);
  v62 = vmulq_f32(v57, v78);
  v62.i32[3] = 0;
  *v60.i8 = vadd_f32(vpadd_f32(*v60.i8, *v61.i8), vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v61, v61, 8uLL)));
  v60.u64[1] = vpadd_f32(vpadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL)), 0);
  v63 = vmulq_f32(v53, v77);
  v64 = vmulq_f32(v54, v77);
  v65 = vmulq_f32(v57, v77);
  v65.i32[3] = 0;
  *v63.i8 = vadd_f32(vpadd_f32(*v63.i8, *v64.i8), vzip1_s32(*&vextq_s8(v63, v63, 8uLL), *&vextq_s8(v64, v64, 8uLL)));
  v63.u64[1] = vpadd_f32(vpadd_f32(*v65.i8, *&vextq_s8(v65, v65, 8uLL)), 0);
  v74 = v63;
  v75 = v60;
  return (*(*this + 120))(this, &v76, &v75, &v74, a6, 0, a2, a2, 0.0, 6.2832, 10.0);
}

uint64_t btIDebugDraw::drawPlane(btIDebugDraw *this, float32x4_t *a2, float a3, const btTransform *a4, const btVector3 *a5, float32x4_t a6)
{
  v9 = *a2;
  LODWORD(v10) = a2->i64[1];
  LODWORD(v11) = HIDWORD(a2->i64[0]);
  if (fabsf(v10) <= 0.70711)
  {
    v16 = (v11 * v11) + (v9.f32[0] * v9.f32[0]);
    v17 = 1.0 / sqrtf(v16);
    v18 = vextq_s8(v9, v9, 8uLL);
    *v18.i8 = vzip1_s32(*v9.f32, *v18.i8);
    v19 = v18;
    *&v19.i32[1] = -v11;
    *v19.i8 = vmul_n_f32(*v19.i8, v17);
    v15 = vrev64q_s32(v19).u64[0];
    *v18.i32 = -v10;
    *a6.f32 = vmul_f32(*v19.i8, *v18.i8);
    a6.f32[2] = v16 * v17;
  }

  else
  {
    v12 = (v10 * v10) + (v11 * v11);
    v13 = 1.0 / sqrtf(v12);
    *&v14 = v11 * v13;
    v15.i32[0] = 0;
    v15.f32[1] = -(v10 * v13);
    v15.i64[1] = v14;
    a6.f32[0] = v12 * v13;
    a6.f32[1] = -(v9.f32[0] * *&v14);
    a6.f32[2] = v9.f32[0] * v15.f32[1];
  }

  v20 = vmulq_n_f32(v9, a3);
  v20.i32[3] = 0;
  v21 = vdupq_n_s32(0x42C80000u);
  v22 = vmulq_f32(v15, v21);
  v22.i32[3] = 0;
  v23 = vaddq_f32(v20, v22);
  v24 = vsubq_f32(v20, v22);
  v25 = a4->var0.var0[2];
  var1 = a4->var1;
  v27 = vmulq_f32(v25, v24);
  v24.i32[3] = 0;
  v28 = vmulq_f32(a6, v21);
  v28.i32[3] = 0;
  v29 = vaddq_f32(v20, v28);
  v30 = vsubq_f32(v20, v28);
  v50 = v30;
  v30.i32[3] = 0;
  v48 = v29;
  v49 = v30;
  v31 = a4->var0.var0[1];
  v32 = vmulq_f32(a4->var0.var0[0], v23);
  v33 = vmulq_f32(v31, v23);
  v34 = vmulq_f32(v25, v23);
  v34.i32[3] = 0;
  *v32.f32 = vadd_f32(vpadd_f32(*v32.f32, *v33.i8), vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL)));
  *&v32.u32[2] = vpadd_f32(vpadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)), 0);
  v35 = vmulq_f32(a4->var0.var0[0], v24);
  v36 = vmulq_f32(v31, v24);
  v27.i32[3] = 0;
  *v35.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v36, v36, 8uLL)), vpadd_f32(*v35.f32, *v36.i8));
  *&v35.u32[2] = vpadd_f32(vpadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), 0);
  v51 = vaddq_f32(var1, v35);
  v52 = vaddq_f32(v32, var1);
  (*(*this + 16))(this, &v52, &v51, a5);
  v37 = a4->var0.var0[0];
  v38 = a4->var0.var0[1];
  v39 = vmulq_f32(v48, a4->var0.var0[0]);
  v40 = vmulq_f32(v48, v38);
  v41 = a4->var0.var0[2];
  v42 = a4->var1;
  v43 = vmulq_f32(v48, v41);
  v43.i32[3] = 0;
  *v39.f32 = vadd_f32(vpadd_f32(*v39.f32, *v40.i8), vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v40, v40, 8uLL)));
  *&v39.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
  v52 = vaddq_f32(v39, v42);
  v44 = vmulq_f32(v37, v49);
  v45 = vmulq_f32(v38, v49);
  v46 = vmulq_f32(v41, v50);
  v46.i32[3] = 0;
  *v44.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vpadd_f32(*v44.f32, *v45.i8));
  *&v44.u32[2] = vpadd_f32(vpadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0);
  v51 = vaddq_f32(v42, v44);
  return (*(*this + 16))(this, &v52, &v51, a5);
}

void btC3DRayResultCallback::btC3DRayResultCallback(btC3DRayResultCallback *this, const btVector3 *a2, const btVector3 *a3)
{
  *(this + 2) = 1065353216;
  *(this + 2) = 0;
  *(this + 24) = xmmword_21C281170;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *this = &unk_282DC57E0;
  *(this + 4) = *a2;
  *(this + 5) = *a3;
  *(this + 168) = 1;
  *(this + 20) = 0;
  *(this + 148) = 0;
  *(this + 200) = 1;
  *(this + 24) = 0;
  *(this + 180) = 0;
  *(this + 232) = 1;
  *(this + 28) = 0;
  *(this + 212) = 0;
  *(this + 264) = 1;
  *(this + 32) = 0;
  *(this + 244) = 0;
  *(this + 3) = -1;
  *(this + 5) = 0;
}

void btC3DRayResultCallback::~btC3DRayResultCallback(btC3DRayResultCallback *this)
{
  *this = &unk_282DC57E0;
  v2 = *(this + 32);
  if (v2 && *(this + 264) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 264) = 1;
  *(this + 32) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  v3 = *(this + 28);
  if (v3 && *(this + 232) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 232) = 1;
  *(this + 28) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  v4 = *(this + 24);
  if (v4 && *(this + 200) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 200) = 1;
  *(this + 24) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  v5 = *(this + 20);
  if (v5 && *(this + 168) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 168) = 1;
  *(this + 20) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DC57E0;
  v2 = *(this + 32);
  if (v2 && *(this + 264) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 264) = 1;
  *(this + 32) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  v3 = *(this + 28);
  if (v3 && *(this + 232) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 232) = 1;
  *(this + 28) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  v4 = *(this + 24);
  if (v4 && *(this + 200) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 200) = 1;
  *(this + 24) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  v5 = *(this + 20);
  if (v5 && *(this + 168) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 168) = 1;
  *(this + 20) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
}

float btC3DRayResultCallback::addSingleResult(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *a2;
  *(a1 + 16) = *a2;
  v6 = *(a2 + 16);
  if (!a3)
  {
    v7 = vmulq_f32(v5[1], v6);
    v8 = vmulq_f32(v6, v5[2]);
    v9 = vmulq_f32(v6, v5[3]);
    v9.i32[3] = 0;
    *v6.f32 = vadd_f32(vpadd_f32(*v7.i8, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
    *&v6.u32[2] = vpadd_f32(vpadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0);
  }

  *(a1 + 112) = v6;
  *(a1 + 128) = vaddq_f32(*(a1 + 64), vmulq_n_f32(vsubq_f32(*(a1 + 80), *(a1 + 64)), *(a2 + 32)));
  v10 = *(a1 + 96);
  if (v10 == 1)
  {
    return 0.0;
  }

  if (!v10)
  {
    result = *(a2 + 32);
    *(a1 + 8) = result;
    return result;
  }

  v12 = *(a1 + 148);
  if (v12 == *(a1 + 152))
  {
    v13 = v12 ? 2 * v12 : 1;
    if (v12 < v13)
    {
      if (v13)
      {
        v14 = btAlignedAllocInternal(8 * v13, 16);
        v12 = *(a1 + 148);
      }

      else
      {
        v14 = 0;
      }

      if (v12 >= 1)
      {
        v15 = 0;
        do
        {
          *(v14 + v15) = *(*(a1 + 160) + v15);
          v15 += 8;
        }

        while (8 * v12 != v15);
      }

      v16 = *(a1 + 160);
      if (v16 && *(a1 + 168) == 1)
      {
        btAlignedFreeInternal(v16);
        v12 = *(a1 + 148);
      }

      *(a1 + 168) = 1;
      *(a1 + 160) = v14;
      *(a1 + 152) = v13;
    }
  }

  *(*(a1 + 160) + 8 * v12) = *a2;
  *(a1 + 148) = v12 + 1;
  v17 = *(a1 + 212);
  if (v17 == *(a1 + 216))
  {
    v18 = v17 ? 2 * v17 : 1;
    if (v17 < v18)
    {
      if (v18)
      {
        v19 = btAlignedAllocInternal(16 * v18, 16);
        v17 = *(a1 + 212);
      }

      else
      {
        v19 = 0;
      }

      if (v17 >= 1)
      {
        v20 = 0;
        v21 = 16 * v17;
        do
        {
          *(v19 + v20) = *(*(a1 + 224) + v20);
          v20 += 16;
        }

        while (v21 != v20);
      }

      v22 = *(a1 + 224);
      if (v22 && *(a1 + 232) == 1)
      {
        btAlignedFreeInternal(v22);
      }

      *(a1 + 232) = 1;
      *(a1 + 224) = v19;
      *(a1 + 216) = v18;
      v17 = *(a1 + 212);
    }
  }

  *(*(a1 + 224) + 16 * v17) = *(a1 + 128);
  ++*(a1 + 212);
  v23 = *(a1 + 180);
  if (v23 == *(a1 + 184))
  {
    v24 = v23 ? 2 * v23 : 1;
    if (v23 < v24)
    {
      if (v24)
      {
        v25 = btAlignedAllocInternal(16 * v24, 16);
        v23 = *(a1 + 180);
      }

      else
      {
        v25 = 0;
      }

      if (v23 >= 1)
      {
        v26 = 0;
        v27 = 16 * v23;
        do
        {
          *(v25 + v26) = *(*(a1 + 192) + v26);
          v26 += 16;
        }

        while (v27 != v26);
      }

      v28 = *(a1 + 192);
      if (v28 && *(a1 + 200) == 1)
      {
        btAlignedFreeInternal(v28);
      }

      *(a1 + 200) = 1;
      *(a1 + 192) = v25;
      *(a1 + 184) = v24;
      v23 = *(a1 + 180);
    }
  }

  *(*(a1 + 192) + 16 * v23) = *(a1 + 112);
  ++*(a1 + 180);
  v29 = *(a1 + 244);
  if (v29 == *(a1 + 248))
  {
    v30 = v29 ? 2 * v29 : 1;
    if (v29 < v30)
    {
      if (v30)
      {
        v31 = btAlignedAllocInternal(4 * v30, 16);
        v29 = *(a1 + 244);
      }

      else
      {
        v31 = 0;
      }

      v32 = *(a1 + 256);
      if (v29 < 1)
      {
        if (!v32)
        {
LABEL_68:
          *(a1 + 264) = 1;
          *(a1 + 256) = v31;
          *(a1 + 248) = v30;
          goto LABEL_69;
        }
      }

      else
      {
        v33 = v29;
        v34 = v31;
        v35 = *(a1 + 256);
        do
        {
          v36 = *v35++;
          *v34++ = v36;
          --v33;
        }

        while (v33);
      }

      if (*(a1 + 264) == 1)
      {
        btAlignedFreeInternal(v32);
        v29 = *(a1 + 244);
      }

      *(a1 + 256) = 0;
      goto LABEL_68;
    }
  }

LABEL_69:
  *(*(a1 + 256) + 4 * v29) = *(a2 + 32);
  *(a1 + 244) = v29 + 1;
  return 0.999;
}

float btC3DContactResultCallback::addSingleResult(uint64_t a1, const btVector3 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __contact(*(a3 + 16), *(a6 + 16), a2 + 2, a2 + 4, a2[5].var0.var0[0], 0.0);
  if (v7)
  {
    v8 = v7;
    v9 = *(a1 + 48);
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      *(a1 + 48) = v9;
    }

    [v9 addObject:v8];
  }

  return 0.999;
}

uint64_t btCollisionWorld::ConvexResultCallback::needsCollision(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a1[3] & v2) != 0 && (*(a2 + 16) & a1[2]) != 0;
  return (a1[4] & v2) != 0 || v3;
}

float btC3DConvexResultCallback::addSingleResult(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *a2;
  *(a1 + 88) = *a2;
  v6 = *(a2 + 16);
  if (!a3)
  {
    v7 = vmulq_f32(*(v5 + 1), v6);
    v8 = vmulq_f32(v6, *(v5 + 2));
    v9 = vmulq_f32(v6, *(v5 + 3));
    v9.i32[3] = 0;
    *v6.f32 = vadd_f32(vpadd_f32(*v7.i8, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
    *&v6.u32[2] = vpadd_f32(vpadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0);
  }

  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 32);
  v10 = *(a2 + 48);
  *(a1 + 8) = v10;
  v11 = *(a1 + 80);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0.0;
    }

    else
    {
      if (!*(a1 + 128))
      {
        *(a1 + 128) = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
        v10 = *(a1 + 8);
      }

      v12 = __contact(*a2, 0, (a1 + 112), (a1 + 96), 0.0, v10);
      v10 = 0.999;
      if (v12)
      {
        [*(a1 + 128) addObject:v12];
      }
    }
  }

  return v10;
}

uint64_t btGhostPairCallback::addOverlappingPair(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  if (*(*a3 + 264) == 4)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = *(*a2 + 264) == 4;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    (*(*v5 + 56))(v5, a3, a2);
  }

  if (v6)
  {
    (*(*v6 + 56))(v6, a2, a3);
  }

  return 0;
}

uint64_t btGhostPairCallback::removeOverlappingPair(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a2;
  if (*(*a3 + 264) == 4)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = *(*a2 + 264) == 4;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    (*(*v7 + 64))(v7, a3, a4, a2);
  }

  if (v8)
  {
    (*(*v8 + 64))(v8, a2, a4, a3);
  }

  return 0;
}

uint64_t btAlignedObjectArray<btRigidBody *>::btAlignedObjectArray(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 4);
  if (v3 < 1)
  {
    *(a1 + 4) = v3;
  }

  else
  {
    v5 = btAlignedAllocInternal(8 * v3, 16);
    v6 = v5;
    v7 = *(a1 + 4);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 8 * v7;
      do
      {
        *(v5 + v8) = *(*(a1 + 16) + v8);
        v8 += 8;
      }

      while (v9 != v8);
    }

    v10 = *(a1 + 16);
    if (v10 && *(a1 + 24) == 1)
    {
      btAlignedFreeInternal(v10);
    }

    v11 = 0;
    *(a1 + 24) = 1;
    *(a1 + 16) = v6;
    *(a1 + 8) = v3;
    do
    {
      *(*(a1 + 16) + 8 * v11++) = 0;
    }

    while (v3 != v11);
    v12 = 0;
    v13 = *(a1 + 16);
    *(a1 + 4) = v3;
    do
    {
      *(v13 + 8 * v12) = *(*(a2 + 16) + 8 * v12);
      ++v12;
    }

    while (v3 != v12);
  }

  return a1;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2013()
{
  if (C3DWasLinkedBeforeMajorOSYear2013_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2013_cold_1();
  }

  return 0;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2014()
{
  if (C3DWasLinkedBeforeMajorOSYear2014_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2014_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2014_linkedBeforeMajorOSYear2014;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2014_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = dyld_program_sdk_at_least();
    v1 = result ^ 1;
  }

  C3DWasLinkedBeforeMajorOSYear2014_linkedBeforeMajorOSYear2014 = v1;
  return result;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2018()
{
  if (C3DWasLinkedBeforeMajorOSYear2018_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2018_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2018_linkedBeforeMajorOSYear2018;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2018_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = C3DPreferencesGetBool(16);
    if (result & 1) != 0 || (result = C3DPreferencesGetBool(15), (result))
    {
      v1 = 1;
    }

    else
    {
      result = dyld_program_sdk_at_least();
      v1 = result ^ 1;
    }
  }

  C3DWasLinkedBeforeMajorOSYear2018_linkedBeforeMajorOSYear2018 = v1;
  return result;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2020()
{
  if (C3DWasLinkedBeforeMajorOSYear2020_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2020_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2020_linkedBeforeMajorOSYear2020;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2020_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = C3DPreferencesGetBool(16);
    if (result & 1) != 0 || (result = C3DPreferencesGetBool(15), (result) || (result = C3DPreferencesGetBool(14), (result) || (result = C3DPreferencesGetBool(13), (result))
    {
      v1 = 1;
    }

    else
    {
      result = dyld_program_sdk_at_least();
      v1 = result ^ 1;
    }
  }

  C3DWasLinkedBeforeMajorOSYear2020_linkedBeforeMajorOSYear2020 = v1;
  return result;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2021()
{
  if (C3DWasLinkedBeforeMajorOSYear2021_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2021_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2021_linkedBeforeMajorOSYear2021;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2021_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = C3DPreferencesGetBool(16);
    if (result & 1) != 0 || (result = C3DPreferencesGetBool(15), (result) || (result = C3DPreferencesGetBool(14), (result) || (result = C3DPreferencesGetBool(13), (result))
    {
      v1 = 1;
    }

    else
    {
      result = dyld_program_sdk_at_least();
      v1 = result ^ 1;
    }
  }

  C3DWasLinkedBeforeMajorOSYear2021_linkedBeforeMajorOSYear2021 = v1;
  return result;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2023()
{
  if (C3DWasLinkedBeforeMajorOSYear2023_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2023_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2023_linkedBeforeMajorOSYear2023;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2023_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = C3DPreferencesGetBool(16);
    if (result & 1) != 0 || (result = C3DPreferencesGetBool(15), (result) || (result = C3DPreferencesGetBool(14), (result) || (result = C3DPreferencesGetBool(13), (result))
    {
      v1 = 1;
    }

    else
    {
      result = dyld_program_sdk_at_least();
      v1 = result ^ 1;
    }
  }

  C3DWasLinkedBeforeMajorOSYear2023_linkedBeforeMajorOSYear2023 = v1;
  return result;
}

uint64_t SCNGetResourceBundle()
{
  result = _SCNResourceBundle;
  if (!_SCNResourceBundle)
  {
    return [MEMORY[0x277CCA8D8] mainBundle];
  }

  return result;
}

uint64_t SCNGetSceneKitBundle()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

id SCNSetExternalTextureSource(id result)
{
  if (SCNGlobalTextureSource != result)
  {
    v1 = result;

    result = v1;
    SCNGlobalTextureSource = result;
  }

  return result;
}

id C3DTimingFunctionFromCAMediaTimingFunction(id result)
{
  v4 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    [result getControlPointAtIndex:1 values:v2];
    [v1 getControlPointAtIndex:2 values:v3];
    return C3DTimingFunctionCreateWithControlPoints(v2[0], v2[1], v3[0], v3[1]);
  }

  return result;
}

uint64_t CAMediaTimingFunctionFromC3DTimingFunction(uint64_t a1)
{
  ControlPoints = C3DTimingFunctionGetControlPoints(a1);
  LODWORD(v2) = *ControlPoints;
  LODWORD(v3) = ControlPoints[1];
  LODWORD(v4) = ControlPoints[2];
  LODWORD(v5) = ControlPoints[3];
  v6 = MEMORY[0x277CD9EF8];

  return [v6 functionWithControlPoints:v2 :v3 :v4 :v5];
}

uint64_t SCNInterpolationModeFromCACalculationMode(void *a1)
{
  if ([a1 isEqualToString:*MEMORY[0x277CDA070]])
  {
    return 0;
  }

  if ([a1 isEqualToString:*MEMORY[0x277CDA068]])
  {
    return 1;
  }

  if ([a1 isEqualToString:*MEMORY[0x277CDA078]])
  {
    return 0;
  }

  v2 = 2;
  if (([a1 isEqualToString:*MEMORY[0x277CDA058]] & 1) == 0)
  {
    if ([a1 isEqualToString:*MEMORY[0x277CDA060]])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

double SCNGetFileTimestampAtURL(void *a1)
{
  v1 = [a1 path];

  return SCNGetFileTimestampAtPath(v1);
}

double SCNGetFileTimestampAtPath(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [a1 stringByResolvingSymlinksInPath];
  v5 = 0;
  v2 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v3 = [v2 objectForKey:*MEMORY[0x277CCA150]];
  if (!v3)
  {
    return 0.0;
  }

  [v3 timeIntervalSinceReferenceDate];
  return result;
}

uint64_t SCNCreateGLESContext(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = NSClassFromString(&cfstr_Skglobalshared.isa);
  if (!v2)
  {
    v4 = SCNCreateGLESContext__SCNSharedGLContext;
    if (!SCNCreateGLESContext__SCNSharedGLContext)
    {
      v30 = *MEMORY[0x277CD93B0];
      v31 = MEMORY[0x277CBEC38];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v4 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2 properties:v8];
      SCNCreateGLESContext__SCNSharedGLContext = v4;
    }

    goto LABEL_7;
  }

  v3 = v2;
  v4 = [(objc_class *)v2 globalGLSharedContext];
  if (v4)
  {
LABEL_7:
    v9 = [v4 sharegroup];
    v10 = *MEMORY[0x277CD93B0];
    if (v9)
    {
      v29[0] = MEMORY[0x277CBEC38];
      v11 = *MEMORY[0x277CD93A8];
      v28[0] = v10;
      v28[1] = v11;
      v29[1] = [v4 sharegroup];
      v12 = MEMORY[0x277CBEAC0];
      v13 = v29;
      v14 = v28;
      v15 = 2;
    }

    else
    {
      v26 = *MEMORY[0x277CD93B0];
      v27 = MEMORY[0x277CBEC38];
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v27;
      v14 = &v26;
      v15 = 1;
    }

    v16 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
    v17 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:a1 properties:v16];
    if (v17)
    {
      return v17;
    }

    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: SCNCreateGLContext - failed to share our context with SpriteKit - fallback on a private context", v23, 2u);
    }

    v19 = objc_alloc(MEMORY[0x277CD9388]);
    v24 = v10;
    v25 = MEMORY[0x277CBEC38];
    v17 = [v19 initWithAPI:a1 properties:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v25, &v24, 1)}];
    if (v17)
    {
      return v17;
    }

    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetGLContext_cold_1(v20);
    }

    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277CD9388]);
  v32 = *MEMORY[0x277CD93B0];
  v33[0] = MEMORY[0x277CBEC38];
  v6 = [v5 initWithAPI:2 properties:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v33, &v32, 1)}];
  if (!v6)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      SCNCreateGLESContext_cold_1(v21);
    }

    return 0;
  }

  v7 = v6;
  [(objc_class *)v3 setGlobalGLSharedContext:v6];
  return v7;
}

void C3DRendererContextExecuteOnContext(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CD9388] currentContext];
  [MEMORY[0x277CD9388] setCurrentContext:*(a1 + 160)];
  (*(a2 + 16))(a2);
  [MEMORY[0x277CD9388] setCurrentContext:v4];
}

const char *C3D::ResourceTypeDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Invalid - wrong value";
  }

  else
  {
    return off_2782FEB30[a1];
  }
}

std::string *C3D::description@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 11;
  strcpy(a2, "texture: {\n");
  C3D::appendValue<unsigned short>(a2, "width", a1, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  C3D::appendValue<unsigned short>(a2, "height", (a1 + 2), &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  C3D::appendValue<unsigned short>(a2, "depth", (a1 + 4), &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  C3D::appendValue<unsigned short>(a2, "arrayLength", (a1 + 6), &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v11 = [(__CFString *)SCNMTLTextureTypeToString(*(a1 + 8)) UTF8String];
  C3D::appendValue<char const*>(a2, "textureType", &v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = [(__CFString *)SCNMTLStorageModeToString(*(a1 + 9)) UTF8String];
  C3D::appendValue<char const*>(a2, "storageMode", &v11, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v11 = [(__CFString *)SCNTextureUsageToString(*(a1 + 10)) UTF8String];
  C3D::appendValue<char const*>(a2, "usage", &v11, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v11 = [(__CFString *)SCNMTLCPUCacheModeToString(*(a1 + 11)) UTF8String];
  C3D::appendValue<char const*>(a2, "cpuCacheMode", &v11, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v11 = [(__CFString *)SCNMTLPixelFormatToString(*(a1 + 12)) UTF8String];
  C3D::appendValue<char const*>(a2, "pixelFormat", &v11, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  C3D::appendValue<unsigned char>(a2, "mipmapLevelCount", (a1 + 14), &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  C3D::appendValue<unsigned char>(a2, "sampleCount", (a1 + 15), &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, "}");
}

void sub_21C04079C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void C3D::appendValue<unsigned short>(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, unsigned __int16 *a3@<X2>, std::string *a4@<X8>)
{
  std::string::append(a1, "\t");
  std::string::append(a1, a2);
  std::string::append(a1, ": ");
  std::to_string(&v10, *a3);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v10;
  }

  else
  {
    v8 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v8, size);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "\n");
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a1, *(a1 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a1;
    a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void sub_21C0408A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void C3D::appendValue<char const*>(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, const std::string::value_type **a3@<X2>, std::string *a4@<X8>)
{
  std::string::append(a1, "\t");
  std::string::append(a1, a2);
  std::string::append(a1, ": ");
  std::string::append(a1, *a3);
  std::string::append(a1, "\n");
  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
    v9 = *(a1 + 8);

    std::string::__init_copy_ctor_external(a4, v8, v9);
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a1;
    a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void C3D::appendValue<unsigned char>(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, unsigned __int8 *a3@<X2>, std::string *a4@<X8>)
{
  std::string::append(a1, "\t");
  std::string::append(a1, a2);
  std::string::append(a1, ": ");
  std::to_string(&v10, *a3);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v10;
  }

  else
  {
    v8 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v8, size);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "\n");
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a1, *(a1 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a1;
    a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void sub_21C040A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double C3D::PassIODescriptor::PassIODescriptor(uint64_t a1, char a2)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 66) &= 0xFE00u;
  *&result = 0x1000100000000;
  *(a1 + 16) = 0x1000100000000;
  *(a1 + 24) = a2;
  *(a1 + 25) = 2;
  *(a1 + 27) = 0;
  *(a1 + 28) = 0x10000;
  return result;
}

BOOL C3D::PassIODescriptor::isMatching(C3D::PassIODescriptor *this, PassIODescriptor *a2)
{
  if (*this != *a2)
  {
    return 0;
  }

  if (*(this + 64) != *(a2 + 64))
  {
    return 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(a2 + 1);
    if (v5)
    {
      if (strcmp(v4, v5))
      {
        return 0;
      }
    }
  }

  return C3D::PassIODescriptor::isPartiallyCompatible(this, a2);
}

BOOL C3D::PassIODescriptor::isPartiallyCompatible(C3D::PassIODescriptor *this, const PassIODescriptor *a2)
{
  if (*(this + 8))
  {
    if (*(a2 + 8) && *(this + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  if (*(this + 9))
  {
    if (*(a2 + 9) && *(this + 9) != *(a2 + 9))
    {
      return 0;
    }
  }

  if (*(this + 10) && *(a2 + 10) && *(this + 10) != *(a2 + 10))
  {
    return 0;
  }

  v4 = *(this + 24);
  if (!*(this + 24) || (v5 = *(a2 + 24), !*(a2 + 24)) || v4 == v5 || v4 == 4 && v5 == 2 || (v6 = 0, v4 == 8) && v5 == 3)
  {
    if (*(this + 25) && *(a2 + 25) && *(this + 25) != *(a2 + 25) || *(this + 27) && *(a2 + 27) && *(this + 27) != *(a2 + 27) || *(this + 14) && *(a2 + 14) && *(this + 14) != *(a2 + 14))
    {
      return 0;
    }

    v6 = *(this + 30);
    if (v6 != 1)
    {
      v8 = *(a2 + 30);
      return v8 == 1 || v6 == v8;
    }
  }

  return v6;
}

BOOL C3D::PassIODescriptor::isCompatible(C3D::PassIODescriptor *this, const C3D::PassIODescriptor *a2)
{
  if (*(this + 8) != *(a2 + 8) || *(this + 9) != *(a2 + 9) || *(this + 10) != *(a2 + 10) || *(this + 11) != *(a2 + 11))
  {
    return 0;
  }

  v2 = *(this + 24);
  v3 = *(a2 + 24);
  if (v2 == v3 || v2 == 4 && v3 == 2 || (v4 = 0, v2 == 8) && v3 == 3)
  {
    if (*(this + 25) == *(a2 + 25) && *(this + 27) == *(a2 + 27) && *(this + 14) == *(a2 + 14))
    {
      return *(this + 30) == *(a2 + 30);
    }

    return 0;
  }

  return v4;
}

BOOL C3D::PassIODescriptor::isValid(C3D::PassIODescriptor *this)
{
  if (!*(this + 14))
  {
    return 0;
  }

  if (*(this + 11) < 2u || (result = SCNMTLTextureTypeIsArray(*(this + 24)), result))
  {
    if (*(this + 31) >= 2u)
    {
      v3 = *(this + 24);

      return SCNMTLTextureTypeIsMultisampled(v3);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void C3D::PassIODescriptor::description(C3D::PassIODescriptor *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "C3D::PassBufferParameter [");
  v4 = *(this + 1);
  if (v4)
  {
    std::string::append(a2, v4);
  }

  std::string::append(a2, "] : ");
  v5 = *this;
  if (v5 > 2)
  {
    v6 = "Invalid - wrong value";
  }

  else
  {
    v6 = off_2782FEB30[v5];
  }

  std::string::append(a2, v6);
  std::string::append(a2, "\n");
  v9 = *(this + 1);
  v10 = *(this + 8);
  C3D::description(&v9, __p);
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  std::string::append(a2, v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21C040E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3D::PassDescriptor::inputAtIndex(C3D::PassDescriptor *this, unsigned int a2)
{
  if (*(this + 20) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::PassDescriptor::inputAtIndex();
    }
  }

  return *(this + 3) + 80 * a2;
}

uint64_t C3D::PassDescriptor::outputAtIndex(C3D::PassDescriptor *this, unsigned int a2)
{
  if (*(this + 21) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::PassDescriptor::outputAtIndex();
    }
  }

  return *(this + 4) + 80 * a2;
}

uint64_t C3D::RefCountedResource::RefCountedResource(uint64_t this)
{
  *(this + 34) &= 0xF8u;
  *(this + 32) = 256;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *this = 0;
  *(this + 8) = 0;
  return this;
}

void *C3D::RefCountedResource::textureOrFinal(C3D::RefCountedResource *this, SCNMTLRenderContext *a2)
{
  if ((*(this + 34) & 2) != 0)
  {
    return [(SCNMTLRenderContext *)a2 _finalRenderTexture];
  }

  else
  {
    return *this;
  }
}

void *C3D::RefCountedResource::resolveTextureOrFinal(C3D::RefCountedResource *this, SCNMTLRenderContext *a2)
{
  if ((*(this + 34) & 4) != 0)
  {
    return [(SCNMTLRenderContext *)a2 _finalRenderTexture];
  }

  else
  {
    return *(this + 3);
  }
}

uint64_t C3D::PassResource::inputAtIndex(C3D::PassResource *this, unsigned int a2)
{
  if (*(this + 8) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::PassResource::inputAtIndex();
    }
  }

  return *(*this + 8 * a2);
}

uint64_t C3D::PassResource::outputAtIndex(C3D::PassResource *this, unsigned int a2)
{
  if (*(this + 9) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::PassResource::outputAtIndex();
    }
  }

  return *(*(this + 1) + 8 * a2);
}

void C3D::PassResource::setInputAtIndex(C3D::PassResource *this, C3D::RefCountedResource *a2, unsigned int a3)
{
  if (*(this + 8) <= a3)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3D::PassResource::inputAtIndex();
    }
  }

  *(*this + 8 * a3) = a2;
}

void C3D::PassResource::setOutputAtIndex(C3D::PassResource *this, C3D::RefCountedResource *a2, unsigned int a3)
{
  if (*(this + 9) <= a3)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3D::PassResource::outputAtIndex();
    }
  }

  *(*(this + 1) + 8 * a3) = a2;
}

double C3D::Pass::Pass(C3D::Pass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  *this = &unk_282DC5A08;
  *(this + 1) = a3;
  *(this + 2) = *(a2 + 1);
  *(this + 3) = a2;
  *&result = 0x1000000010000;
  *(this + 36) = 0x1000000010000;
  *(this + 11) = 1;
  *(this + 48) = 1;
  *(this + 18) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 26) = -1;
  return result;
}

void C3D::Pass::addDependency(C3D::Pass *this, C3D::Pass *a2)
{
  if (this == a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::Pass::addDependency();
    }
  }

  if (!*(this + 3))
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3D::Pass::addDependency();
    }
  }

  C3D::RenderGraph::addDependency(*(this + 3), this, a2);
}

uint64_t C3D::Pass::drawableInfo(C3D::Pass *this)
{
  if (!*(this + 1))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3D::Pass::drawableInfo();
    }
  }

  return (*(**(this + 1) + 88))(*(this + 1));
}

void C3D::Pass::setInputCount(C3D::Pass *this, unsigned int a2)
{
  *(this + 36) = a2;
  *(this + 48) = a2;
  if (a2)
  {
    v4 = *(*(this + 3) + 16);
    v5 = a2;
    v6 = (*(*this + 88))(this);
    *(this + 7) = C3D::ScratchAllocateArray<C3D::PassIODescriptor,MTLTextureType const&>(v4, v5, (v6 + 32));
    v7 = 8 * a2;
    Aligned = C3DScratchAllocatorAllocateAligned(*(*(this + 3) + 16), v7, 8, 0);
    bzero(Aligned, v7);
    *(this + 10) = Aligned;
    v9 = 8 * *(this + 48);

    bzero(Aligned, v9);
  }
}

uint64_t C3D::ScratchAllocateArray<C3D::PassIODescriptor,MTLTextureType const&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  result = C3DScratchAllocatorAllocateAligned(a1, 80 * a2, 16, 0);
  if (v4)
  {
    v6 = (result + 66);
    do
    {
      v7 = *a3;
      *(v6 - 66) = 1;
      *(v6 - 29) = 0;
      *(v6 - 5) = 0;
      *(v6 - 9) = 0;
      *(v6 - 1) = 1;
      *v6 &= 0xFE00u;
      *(v6 - 25) = 0x1000100000000;
      *(v6 - 42) = v7;
      *(v6 - 41) = 2;
      *(v6 - 39) = 0;
      *(v6 - 19) = 0x10000;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

void C3D::Pass::setOutputCount(C3D::Pass *this, unsigned int a2)
{
  *(this + 37) = a2;
  *(this + 49) = a2;
  if (a2)
  {
    v4 = *(*(this + 3) + 16);
    v5 = a2;
    v6 = (*(*this + 88))(this);
    *(this + 8) = C3D::ScratchAllocateArray<C3D::PassIODescriptor,MTLTextureType const&>(v4, v5, (v6 + 32));
    v7 = 8 * a2;
    Aligned = C3DScratchAllocatorAllocateAligned(*(*(this + 3) + 16), v7, 8, 0);
    bzero(Aligned, v7);
    *(this + 11) = Aligned;
    v9 = 8 * *(this + 49);

    bzero(Aligned, v9);
  }
}

float C3D::Pass::parentColorDesc@<S0>(C3D::Pass *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*this + 88))(this);
  LODWORD(result) = HIDWORD(*v3);
  *a2 = COERCE_FLOAT(*(v3 + 8));
  *(a2 + 2) = result;
  *(a2 + 4) = 0;
  v5 = *(v3 + 24);
  *(a2 + 8) = *(v3 + 32);
  *(a2 + 9) = 2;
  *(a2 + 11) = 0;
  *(a2 + 12) = v5;
  *(a2 + 16) = 0;
  return result;
}

float C3D::Pass::parentDepthDesc@<S0>(C3D::Pass *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*this + 88))(this);
  v4 = *v3;
  *a2 = COERCE_FLOAT(*(v3 + 8));
  result = *(&v4 + 3);
  *(a2 + 2) = *(&v4 + 3);
  *(a2 + 4) = 0;
  *(a2 + 8) = *(v3 + 32);
  *(a2 + 9) = 2;
  *(a2 + 11) = 0;
  *(a2 + 12) = 252;
  return result;
}

uint64_t C3D::Pass::inputBufferParameterAtIndex(C3D::Pass *this, unsigned int a2)
{
  if (*(this + 36) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::Pass::inputBufferParameterAtIndex();
    }
  }

  return C3D::PassDescriptor::inputAtIndex((this + 32), a2);
}

uint64_t C3D::Pass::outputBufferParameterAtIndex(C3D::Pass *this, unsigned int a2)
{
  if (*(this + 37) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::Pass::outputBufferParameterAtIndex();
    }
  }

  return C3D::PassDescriptor::outputAtIndex((this + 32), a2);
}

uint64_t C3D::Pass::inputBufferParameterNamed(C3D::Pass *this, const char *a2)
{
  v2 = *(this + 72);
  if (!*(this + 72))
  {
    return 0;
  }

  LOWORD(v5) = 0;
  while (1)
  {
    v6 = C3D::PassDescriptor::inputAtIndex((this + 32), v5);
    v7 = *(v6 + 8);
    if (v7)
    {
      if (!strcmp(v7, a2))
      {
        break;
      }
    }

    v5 = (v5 + 1);
    if (v5 >= v2)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t C3D::Pass::outputBufferParameterNamed(C3D::Pass *this, const char *a2)
{
  v2 = *(this + 74);
  if (!*(this + 74))
  {
    return 0;
  }

  LOWORD(v5) = 0;
  while (1)
  {
    v6 = C3D::PassDescriptor::outputAtIndex((this + 32), v5);
    v7 = *(v6 + 8);
    if (v7)
    {
      if (!strcmp(v7, a2))
      {
        break;
      }
    }

    v5 = (v5 + 1);
    if (v5 >= v2)
    {
      return 0;
    }
  }

  return v6;
}

void **C3D::Pass::inputTextureAtIndex(C3D::Pass *this, unsigned int a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  result = C3D::PassResource::inputAtIndex((this + 80), a2);
  if (result)
  {
    v6 = result;
    v7 = *result;
    v8 = C3D::PassDescriptor::inputAtIndex((this + 32), a2);
    if (v7 && (*(v8 + 31) <= 1u ? (v9 = 1) : (v9 = *(v8 + 31)), [v7 sampleCount] != v9))
    {
      if ((*(v6 + 34) & 4) == 0)
      {
        return v6[3];
      }
    }

    else if ((*(v6 + 34) & 2) == 0)
    {
      return *v6;
    }

    return [(SCNMTLRenderContext *)RenderContext _finalRenderTexture];
  }

  return result;
}

void **C3D::Pass::inputTextureNamed(C3D::Pass *this, const char *a2)
{
  if (!*(this + 36))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(C3D::Pass::inputBufferParameterAtIndex(this, v4) + 8);
    if (v5)
    {
      if (!strcmp(v5, a2))
      {
        break;
      }
    }

    if (*(this + 36) <= ++v4)
    {
      return 0;
    }
  }

  return C3D::Pass::inputTextureAtIndex(this, v4);
}

void *C3D::Pass::outputTextureAtIndex(C3D::Pass *this, unsigned int a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  v5 = C3D::PassResource::outputAtIndex((this + 80), a2);
  if (v5)
  {
    v6 = v5;
    v7 = *v5;
    v8 = C3D::PassDescriptor::outputAtIndex((this + 32), a2);
    if (v7 && (*(v8 + 31) <= 1u ? (v9 = 1) : (v9 = *(v8 + 31)), [v7 sampleCount] != v9))
    {
      if ((*(v6 + 34) & 4) == 0)
      {
        return v6[3];
      }
    }

    else if ((*(v6 + 34) & 2) == 0)
    {
      return *v6;
    }

    return [(SCNMTLRenderContext *)RenderContext _finalRenderTexture];
  }

  else
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3D::Pass::outputTextureAtIndex();
    }

    return 0;
  }
}

void *C3D::Pass::outputTextureNamed(C3D::Pass *this, const char *a2)
{
  if (!*(this + 37))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(C3D::Pass::outputBufferParameterAtIndex(this, v4) + 8);
    if (v5)
    {
      if (!strcmp(v5, a2))
      {
        break;
      }
    }

    if (*(this + 37) <= ++v4)
    {
      return 0;
    }
  }

  return C3D::Pass::outputTextureAtIndex(this, v4);
}

unint64_t C3D::Pass::hashName(C3D::Pass *this)
{
  v2 = (**this)(this);
  v3 = (**this)(this);
  v4 = strlen(v3);
  v5 = 0xC6A4A7935BD1E995 * v4;
  if (v4 >= 8)
  {
    v6 = v4 >> 3;
    v7 = &v2[8 * v6];
    v8 = 8 * v6;
    do
    {
      v9 = *v2;
      v2 += 8;
      v5 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v9) ^ ((0xC6A4A7935BD1E995 * v9) >> 47))) ^ v5);
      v8 -= 8;
    }

    while (v8);
    v2 = v7;
  }

  v10 = v4 & 7;
  if (v10 > 3)
  {
    if ((v4 & 7) > 5)
    {
      if (v10 != 6)
      {
        v5 ^= v2[6] << 48;
      }

      v5 ^= v2[5] << 40;
    }

    else if (v10 == 4)
    {
      goto LABEL_18;
    }

    v5 ^= v2[4] << 32;
LABEL_18:
    v5 ^= v2[3] << 24;
LABEL_19:
    v5 ^= v2[2] << 16;
    goto LABEL_20;
  }

  if ((v4 & 7) <= 1)
  {
    if ((v4 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47);
    }

    goto LABEL_21;
  }

  if (v10 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v5 ^= v2[1] << 8;
LABEL_21:
  v5 = 0xC6A4A7935BD1E995 * (v5 ^ *v2);
  return (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47);
}

unint64_t C3D::Pass::programHashCodeStoreKey(C3D::Pass *this)
{
  v1 = (*(*this + 72))(this);
  v2 = strlen(v1);
  v3 = 0xC6A4A7935BD1E995 * v2;
  if (v2 >= 8)
  {
    v4 = v2 >> 3;
    v5 = &v1[8 * v4];
    v6 = 8 * v4;
    do
    {
      v7 = *v1;
      v1 += 8;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v7) ^ ((0xC6A4A7935BD1E995 * v7) >> 47))) ^ v3);
      v6 -= 8;
    }

    while (v6);
    v1 = v5;
  }

  v8 = v2 & 7;
  if (v8 > 3)
  {
    if ((v2 & 7) > 5)
    {
      if (v8 != 6)
      {
        v3 ^= *(v1 + 6) << 48;
      }

      v3 ^= *(v1 + 5) << 40;
    }

    else if (v8 == 4)
    {
      goto LABEL_18;
    }

    v3 ^= *(v1 + 4) << 32;
LABEL_18:
    v3 ^= *(v1 + 3) << 24;
LABEL_19:
    v3 ^= *(v1 + 2) << 16;
    goto LABEL_20;
  }

  if ((v2 & 7) <= 1)
  {
    if ((v2 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47);
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v3 ^= *(v1 + 1) << 8;
LABEL_21:
  v3 = 0xC6A4A7935BD1E995 * (v3 ^ *v1);
  return (0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47);
}

char *C3D::Pass::nameWithPrefixAndPointer(C3D::Pass *this, const char *__s, void *a3)
{
  v6 = strlen(__s);
  v7 = C3DScratchAllocatorAllocate(*(*(this + 3) + 16), v6 + 20);
  snprintf(v7, v6 + 20, "%s%p", __s, a3);
  return v7;
}

const char *C3D::CachedFXPassName(void **this, const char **a2, __C3DFXPass *a3, void *a4)
{
  result = *this;
  if (!result)
  {
    result = C3DFXPassGetCStringName(a2);
    if (result)
    {
      v7 = result;
      v8 = strlen(result) + 1;
      Aligned = C3DScratchAllocatorAllocateAligned(a3, v8, 1, 0);
      *this = Aligned;
      if (!Aligned)
      {
        v10 = scn_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          C3D::CachedFXPassName();
        }
      }

      memcpy(*this, v7, v8);
      return *this;
    }
  }

  return result;
}

void **C3DPassGetInputTextureNamed(C3D::Pass *this, char *a2)
{
  if (!this)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DPassGetInputTextureNamed_cold_1();
    }
  }

  return C3D::Pass::inputTextureNamed(this, a2);
}

void *C3DPassGetOutputTextureNamed(C3D::Pass *this, char *a2)
{
  if (!this)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DPassGetInputTextureNamed_cold_1();
    }
  }

  return C3D::Pass::outputTextureNamed(this, a2);
}

C3D::RenderPass *C3D::GridPass::GridPass(C3D::GridPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC5A78;
  return result;
}

double C3D::GridPass::setup(C3D::GridPass *this)
{
  C3D::Pass::setInputCount(this, 2u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, &v6);
  *(v2 + 16) = v6;
  *(v2 + 32) = v7;
  *(v2 + 66) = *(v2 + 66) & 0xFF78 | 0x85;
  v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
  *(v3 + 8) = "DEPTH";
  *(v3 + 64) = 2;
  C3D::Pass::parentDepthDesc(this, &v6);
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  *(v3 + 66) = *(v3 + 66) & 0xFFFC | 1;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v4 + 8) = "COLOR";
  *(v4 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v6);
  result = *&v6;
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *(v4 + 66) = *(v4 + 66) & 0xFF7C | 0x81;
  *(this + 119) = 1;
  return result;
}

uint64_t C3D::GridPass::compile(C3D::GridPass *this)
{
  v2 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v2);
  *(this + 30) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::GridPass::execute(uint64_t result, unsigned __int16 *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(*(result + 24) + 112);
  if (v2)
  {
    v4 = result;
    Viewport = C3DEngineContextGetViewport(*(result + 16));
    ViewBackgroundColor = C3DEngineContextGetViewBackgroundColor(v4[2]);
    v6 = vaddv_f32(ViewBackgroundColor.n128_u64[0]);
    v7 = 1.0;
    if ((ViewBackgroundColor.n128_f32[2] + v6) > 1.5)
    {
      v7 = 0.0;
    }

    v51 = v7;
    CullingContext = C3D::DrawNodesPass::getCullingContext(v2);
    v9 = CullingContext + (a2[8] << 6);
    v43 = *(v9 + 3488);
    v10 = *(v9 + 3516);
    RenderContext = C3DEngineContextGetRenderContext(v4[2]);
    v12 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor];
    v13 = Viewport.n128_f32[2];
    if (!*(CullingContext + 4695))
    {
      v13 = Viewport.n128_f32[3];
    }

    v14 = v12;
    if (v10 == 0.0)
    {
      v15 = v14 * 400.0;
    }

    else
    {
      v15 = 1000.0 / *(&v43 + 1) * v14;
    }

    v16 = v15 / fmaxf(v13, 1.0);
    v50 = v16;
    v17 = (CullingContext + (a2[8] << 6));
    v54.columns[1] = v17[242];
    v54.columns[2] = v17[243];
    v54.columns[3] = v17[244];
    v46[0] = v17[241];
    v54.columns[0] = v46[0];
    v46[1] = v54.columns[1];
    v46[2] = v54.columns[2];
    v46[3] = v54.columns[3];
    v55 = __invert_f4(v54);
    v18 = 0;
    v19 = vmlaq_f32(vmulq_f32(v55.columns[0], 0), 0, v55.columns[1]);
    __asm { FMOV            V5.4S, #-1.0 }

    v25 = vsubq_f32(vaddq_f32(v55.columns[3], vmlaq_f32(v19, _Q5, v55.columns[2])), vaddq_f32(v55.columns[3], vaddq_f32(v55.columns[2], v19)));
    v26 = vmulq_f32(v25, v25);
    *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
    v26.i32[0] = vadd_f32(*v26.i8, vdup_lane_s32(*v26.i8, 1)).u32[0];
    v27 = vrsqrte_f32(v26.u32[0]);
    v28 = vmul_f32(v27, vrsqrts_f32(v26.u32[0], vmul_f32(v27, v27)));
    v46[4] = vmulq_n_f32(v25, vmul_f32(v28, vrsqrts_f32(v26.u32[0], vmul_f32(v28, v28))).f32[0]);
    v29 = *(CullingContext + (a2[8] << 6) + 2752);
    v30 = vmlaq_f32(vnegq_f32(v55.columns[0]), _Q5, v55.columns[1]);
    v31 = vsubq_f32(v55.columns[1], v55.columns[0]);
    v32 = vaddq_f32(v55.columns[1], v55.columns[0]);
    v55.columns[0] = vmlaq_f32(v55.columns[0], _Q5, v55.columns[1]);
    v52[0] = vaddq_f32(v55.columns[3], vmlaq_f32(v30, _Q5, v55.columns[2]));
    v52[1] = vaddq_f32(v55.columns[3], vmlaq_f32(v55.columns[0], _Q5, v55.columns[2]));
    v52[2] = vaddq_f32(v55.columns[3], vmlaq_f32(v31, _Q5, v55.columns[2]));
    v52[3] = vaddq_f32(v55.columns[3], vmlaq_f32(v32, _Q5, v55.columns[2]));
    v52[4] = vaddq_f32(v55.columns[3], vaddq_f32(v55.columns[2], v30));
    v52[5] = vaddq_f32(v55.columns[3], vaddq_f32(v55.columns[2], v55.columns[0]));
    v52[6] = vaddq_f32(v55.columns[3], vaddq_f32(v55.columns[2], v31));
    v52[7] = vaddq_f32(v55.columns[3], vaddq_f32(v55.columns[2], v32));
    do
    {
      *&v45[v18 * 16] = vdivq_f32(v52[v18], vdupq_laneq_s32(v52[v18], 3));
      ++v18;
    }

    while (v18 != 8);
    v33 = 0.0;
    if (v10 != 0.0)
    {
      v33 = 1.0;
    }

    v49 = v33;
    if (v10 == 0.0)
    {
      v34 = (2.0 / v12) / *(&v43 + 1);
    }

    else
    {
      v34 = fabsf(*(&v29 + 1));
    }

    v47 = v34;
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v4[2]);
    v36 = -1.0;
    if ((CoordinatesSystemOptions & 8) == 0)
    {
      v36 = 1.0;
    }

    v48 = v36;
    v37 = *a2;
    v38 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v4[30] + 16) :"state" detail:? :?NSRetainFct];
    if (*(v37 + 3376) != v38)
    {
      *(v37 + 3376) = v38;
      [*(v37 + 3392) setRenderPipelineState:v38];
    }

    v39 = *a2;
    if ((*(*a2 + 73) & 1) == 0)
    {
      if (*(v39 + 16))
      {
        *(v39 + 16) = 0;
        *(v39 + 41) = 1;
      }
    }

    v40 = [(SCNMTLRenderContext *)RenderContext resourceManager];
    [*(v39 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](v40)];
    v41 = *a2;
    v42 = C3D::Pass::inputTextureAtIndex(v4, 1u);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v41, v42, 0);
    SCNMTLRenderCommandEncoder::setVertexBytes(*a2, v45, 0x80uLL, 0);
    SCNMTLRenderCommandEncoder::setFragmentBytes(*a2, v46, 0x70uLL, 0);
    return SCNMTLRenderCommandEncoder::drawFullScreenQuad(*a2);
  }

  return result;
}

void C3D::GridPassResource::~GridPassResource(C3D::GridPassResource *this)
{
  *this = &unk_282DC5AE8;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC5AE8;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void *_SCNAreaLightpolygonVerticesFromDescription(uint64_t a1)
{
  if (*a1 != 6)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    v5 = 8 * v2;
    do
    {
      [v3 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", vcvtq_f64_f32(*(*(a1 + 24) + v4)))}];
      v4 += 8;
    }

    while (v5 != v4);
  }

  return v3;
}

void _SCNLightUpdateC3DLightDescription(uint64_t a1, uint64_t a2, void *a3, float32x4_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    if (!a2)
    {
      v18 = 0uLL;
      v19.f32[0] = 0.5 * a4.f32[0];
      *(v19.i64 + 4) = 0;
      v19.i32[3] = 0;
      goto LABEL_19;
    }

    if (a2 != 1)
    {
      return;
    }

    *(&v18 + 1) = 0;
    *(&v18 + 1) = 0;
    v15 = vmul_f32(*a4.f32, 0x3F0000003F000000);
    v16 = 1;
    goto LABEL_16;
  }

  switch(a2)
  {
    case 2:
      *(&v18 + 1) = 0;
      *(&v18 + 1) = 0;
      v15 = vmul_f32(*a4.f32, 0x3F0000003F000000);
      v16 = 2;
LABEL_16:
      LOBYTE(v18) = v16;
      v19 = v15;
LABEL_19:
      C3DLightSetAreaDescription(a1, &v18);
      return;
    case 3:
      *(&v18 + 1) = 0;
      *(&v18 + 1) = 0;
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      LOBYTE(v18) = 3;
      v19 = vmulq_f32(a4, v17);
      goto LABEL_19;
    case 4:
      v6 = [a3 count];
      if (v6 >= 0xFF)
      {
        v7 = 255;
      }

      else
      {
        v7 = v6;
      }

      v8 = MEMORY[0x28223BE20](v6);
      v10 = &v18 - v9;
      if (v11)
      {
        v12 = 0;
        do
        {
          [objc_msgSend(a3 objectAtIndexedSubscript:{v12, v8), "CGPointValue"}];
          v14.f64[1] = v13;
          v8 = COERCE_DOUBLE(vcvt_f32_f64(v14));
          *&v10[8 * v12++] = v8;
        }

        while (v7 != v12);
      }

      *(&v18 + 1) = 0;
      *(&v18 + 1) = 0;
      *(v19.i32 + 1) = 0;
      v19.i32[1] = 0;
      LOBYTE(v18) = 4;
      v19.i8[0] = v7;
      v19.i64[1] = v10;
      C3DLightSetAreaDescription(a1, &v18);
      break;
  }
}

void OUTLINED_FUNCTION_2_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

float C3DMeshElementComputeACMR(uint64_t a1, size_t a2)
{
  v9 = 0u;
  v10 = 0u;
  *v7 = 0u;
  v8 = 0u;
  C3DMeshElementGetContent(a1, 0, v7);
  v3 = 0.0;
  if (*v7 && SBYTE2(v9) != 4)
  {
    IndexCountWithTypeAndPrimitiveCount = C3DMeshElementGetIndexCountWithTypeAndPrimitiveCount(SBYTE2(v9), v8);
    switch(BYTE3(v9))
    {
      case 4u:
        v5 = VertexCache<unsigned int>::computeACMR(*v7, IndexCountWithTypeAndPrimitiveCount, a2);
        return *&v5;
      case 2u:
        v5 = VertexCache<unsigned short>::computeACMR(*v7, IndexCountWithTypeAndPrimitiveCount, a2);
        return *&v5;
      case 1u:
        v5 = VertexCache<unsigned char>::computeACMR(*v7, IndexCountWithTypeAndPrimitiveCount, a2);
        return *&v5;
    }
  }

  return v3;
}

double VertexCache<unsigned char>::computeACMR(uint64_t a1, unsigned int a2, size_t __len)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = __len;
  if (__len > 0x3F)
  {
    VertexCache<unsigned char>::computeACMR();
  }

  if (__len)
  {
    memset(&__b, 255, __len);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b;
  do
  {
    v9 = *(a1 + v6);
    if (!v15)
    {
      goto LABEL_12;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v15 == v10)
        {
          break;
        }

        v12 = v14[v10++ - 1];
      }

      while (v12 != v9);
      if (v11 >= v15)
      {
LABEL_12:
        memmove(v14, &__b, v15 - 1);
        __b = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

double VertexCache<unsigned short>::computeACMR(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v15 = a3;
  if (a3 > 0x3F)
  {
    VertexCache<unsigned char>::computeACMR();
  }

  if (a3)
  {
    memset(__b, 255, 2 * a3);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b[0];
  do
  {
    v9 = *(a1 + 2 * v6);
    if (!v15)
    {
      goto LABEL_12;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v15 == v10)
        {
          break;
        }

        v12 = __b[v10++];
      }

      while (v12 != v9);
      if (v11 >= v15)
      {
LABEL_12:
        memmove(&v14, __b, 2 * (v15 - 1));
        __b[0] = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

double VertexCache<unsigned int>::computeACMR(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v15 = a3;
  if (a3 > 0x3F)
  {
    VertexCache<unsigned char>::computeACMR();
  }

  if (a3)
  {
    memset(__b, 255, 4 * a3);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b[0];
  do
  {
    v9 = *(a1 + 4 * v6);
    if (!v15)
    {
      goto LABEL_12;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v15 == v10)
        {
          break;
        }

        v12 = __b[v10++];
      }

      while (v12 != v9);
      if (v11 >= v15)
      {
LABEL_12:
        memmove(&v14, __b, 4 * (v15 - 1));
        __b[0] = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

CFDataRef C3DDataCreateOptimizedIndices(const __CFData *a1, int a2, int a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  switch(a3)
  {
    case 4:
      if (a2)
      {
        v18 = 0;
        v19 = (3 * a2);
        v20 = BytePtr;
        do
        {
          v22 = *v20++;
          v21 = v22;
          if (v18 <= v22)
          {
            v18 = v21;
          }

          --v19;
        }

        while (v19);
        v23 = v18 + 1;
      }

      else
      {
        v23 = 1;
      }

      return OptimizeVertexCache<unsigned int>::OptimizeIndices(BytePtr, a2, v23);
    case 2:
      if (a2)
      {
        LOWORD(v12) = 0;
        v13 = (3 * a2);
        v14 = BytePtr;
        do
        {
          v16 = *v14;
          v14 = (v14 + 2);
          v15 = v16;
          v12 = v12;
          if (v12 <= v16)
          {
            v12 = v15;
          }

          --v13;
        }

        while (v13);
        v17 = v12 + 1;
      }

      else
      {
        v17 = 1;
      }

      return OptimizeVertexCache<unsigned short>::OptimizeIndices(BytePtr, a2, v17);
    case 1:
      if (a2)
      {
        LOBYTE(v6) = 0;
        v7 = (3 * a2);
        v8 = BytePtr;
        do
        {
          v10 = *v8;
          v8 = (v8 + 1);
          v9 = v10;
          v6 = v6;
          if (v6 <= v10)
          {
            v6 = v9;
          }

          --v7;
        }

        while (v7);
        v11 = v6 + 1;
      }

      else
      {
        v11 = 1;
      }

      return OptimizeVertexCache<unsigned char>::OptimizeIndices(BytePtr, a2, v11);
    default:
      return 0;
  }
}

CFDataRef OptimizeVertexCache<unsigned char>::OptimizeIndices(unsigned __int8 *a1, int a2, void *a3)
{
  v6 = 3 * a2;
  v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  OptimizeVertexCache<unsigned char>::OptimizeVertexCache(v9);
  if (OptimizeVertexCache<unsigned char>::reorderIndices(v9, v7, a1, a2, a3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v7, v6, *MEMORY[0x277CBECE8]);
  }

  free(v7);
  return 0;
}

CFDataRef OptimizeVertexCache<unsigned short>::OptimizeIndices(unsigned __int16 *a1, int a2, int a3)
{
  v6 = 3 * a2;
  v7 = malloc_type_calloc(2uLL, v6, 0x1000040BDFB0063uLL);
  OptimizeVertexCache<unsigned char>::OptimizeVertexCache(v9);
  if (OptimizeVertexCache<unsigned short>::reorderIndices(v9, v7, a1, a2, a3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v7, 2 * v6, *MEMORY[0x277CBECE8]);
  }

  free(v7);
  return 0;
}

CFDataRef OptimizeVertexCache<unsigned int>::OptimizeIndices(unsigned int *a1, int a2, int a3)
{
  v6 = 3 * a2;
  v7 = malloc_type_calloc(4uLL, v6, 0x100004052888210uLL);
  OptimizeVertexCache<unsigned char>::OptimizeVertexCache(v9);
  if (OptimizeVertexCache<unsigned int>::reorderIndices(v9, v7, a1, a2, a3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v7, 4 * v6, *MEMORY[0x277CBECE8]);
  }

  free(v7);
  return 0;
}

void C3DMeshElementOptimizeIndices(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    OptimizedIndices = C3DDataCreateOptimizedIndices(*(a1 + 96), *(a1 + 104), *(a1 + 80));
    if (OptimizedIndices)
    {
      v3 = OptimizedIndices;
      C3DMeshElementSetPrimitives(a1, *(a1 + 104), OptimizedIndices, *(a1 + 80));

      CFRelease(v3);
    }
  }
}

_DWORD *C3DMeshSourceCreateWeldRemappingTable(uint64_t a1)
{
  v15 = 0u;
  *count = 0u;
  C3DMeshSourceGetContent(a1, &v15);
  v1 = malloc_type_calloc(LODWORD(count[0]), 4uLL, 0x100004052888210uLL);
  v4 = 0uLL;
  v12 = 0u;
  v13 = 0u;
  v14 = 1065353216;
  if (!LODWORD(count[0]))
  {
    goto LABEL_8;
  }

  v5 = 0;
  do
  {
    *v6.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(count[0]), (v15 + v5 * BYTE6(count[0])), v4, v2, v3);
    v10 = v6;
    v11 = v6;
    v7 = _ZNSt3__112__hash_tableINS_17__hash_value_typeIDv3_fjEENS_22__unordered_map_hasherIS2_S3_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S8_S6_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(&v12, &v11);
    if (v7)
    {
      v8 = v7[2].i32[0];
    }

    else
    {
      v11 = v10;
      v17 = &v11;
      _ZNSt3__112__hash_tableINS_17__hash_value_typeIDv3_fjEENS_22__unordered_map_hasherIS2_S3_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S8_S6_Lb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS2_JRKNS_21piecewise_construct_tENS_5tupleIJRKS2_EEENSJ_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_(&v12, &v11)[2].i32[0] = v5;
      v8 = v5;
    }

    v1[v5++] = v8;
  }

  while (v5 < LODWORD(count[0]));
  if (*(&v13 + 1) == LODWORD(count[0]))
  {
LABEL_8:
    free(v1);
    v1 = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::~__hash_table(&v12);
  return v1;
}

uint64_t OptimizeVertexCache<unsigned char>::reorderIndices(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, void *a5)
{
  v85 = *MEMORY[0x277D85DE8];
  v82 = a5;
  v8 = a5;
  v9 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v9, v8);
  if (a4 >= 1)
  {
    LODWORD(v10) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v11 = a3;
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = v9[v13];
      if (v14 == 255)
      {
        free(v9);
        return 0;
      }

      v9[v12] = v14 + 1;
      --v10;
    }

    while (v10);
  }

  v80 = a3;
  v15 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  v16 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
  v17 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v18 = a4 + 7;
  if (a4 < -7)
  {
    v18 = a4 + 14;
  }

  v79 = v18 >> 3;
  v19 = malloc_type_malloc(v79, 0x100004077774924uLL);
  v20 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v78 = 12 * a4;
  v21 = malloc_type_malloc(v78, 0x100004052888210uLL);
  bzero(v19, v79);
  bzero(v20, 2 * a4);
  bzero(v21, v78);
  v22 = v82;
  v23 = v82;
  if (v82 >= 1)
  {
    v24 = 0;
    v25 = v82;
    v26 = v15;
    v27 = v9;
    v28 = v17;
    do
    {
      *v26++ = v24;
      v24 += *v27;
      *v27++ = 0;
      *v28++ = -1;
      --v25;
    }

    while (v25);
  }

  v29 = a3;
  if (a4 >= 1)
  {
    v30 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v32 = v29[i];
        *&v21[4 * v15[v32] + 4 * v9[v32]++] = v30;
      }

      ++v30;
      v29 += 3;
    }

    while (v30 != a4);
  }

  if (v22 >= 1)
  {
    v33 = 0;
    do
    {
      if (v9[v33])
      {
        v34 = v17[v33];
        if ((v34 & 0x80000000) != 0)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(a1 + 4 * v34);
        }

        if (v9[v33] <= 0x1Fu)
        {
          v35 += *(a1 + 128 + 4 * v9[v33]);
        }
      }

      else
      {
        LOWORD(v35) = 0;
      }

      v16[v33] = v35;
      if (v9[v33])
      {
        v36 = 0;
        v37 = &v21[4 * v15[v33]];
        do
        {
          v20[*&v37[4 * v36++]] += v16[v33];
        }

        while (v36 < v9[v33]);
      }

      ++v33;
    }

    while (v33 != v23);
  }

  if (a4 < 1)
  {
    v40 = -1;
  }

  else
  {
    v38 = 0;
    v39 = -1;
    v40 = -1;
    do
    {
      v41 = v20[v38];
      if (v39 < v41)
      {
        v40 = v38;
      }

      if (v39 <= v41)
      {
        v39 = v20[v38];
      }

      ++v38;
    }

    while (a4 != v38);
  }

  v82 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v42 = -1;
  *(&v42 + 1) = -1;
  *&v84[12] = v42;
  v83[4] = v42;
  *v84 = v42;
  v83[2] = v42;
  v83[3] = v42;
  v83[0] = v42;
  v83[1] = v42;
  if ((v40 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v43 = 0;
  v44 = 0;
  do
  {
    v45 = 0;
    v19[v40 >> 3] |= 1 << (v40 & 7);
    *(v82 + v43) = v40;
    do
    {
      v46 = v80[3 * v40 + v45];
      LODWORD(v47) = v17[v46];
      if (v47 < 0)
      {
        LODWORD(v47) = v45 | 0x18;
      }

      v47 = v47;
      if (v47 > v45)
      {
        v48 = v83 + v47;
        do
        {
          v49 = *(v48 - 1);
          *v48 = v49;
          if ((v49 & 0x80000000) == 0)
          {
            v50 = v17[v49];
            if (v50 <= 25)
            {
              v17[v49] = v50 + 1;
            }
          }

          --v47;
          --v48;
        }

        while (v47 > v45);
      }

      *(v83 + v45) = v46;
      v17[v46] = v45;
      v51 = v9[v46];
      if (v9[v46])
      {
        v52 = v15[v46];
        v53 = &v21[4 * v52];
        v54 = v9[v46];
        while (*v53 != v40)
        {
          v53 += 4;
          if (!--v54)
          {
            goto LABEL_58;
          }
        }

        *v53 = *&v21[4 * v52 - 4 + 4 * v51];
        LOBYTE(v51) = v9[v46];
      }

LABEL_58:
      v9[v46] = v51 - 1;
      ++v45;
    }

    while (v45 != 3);
    v55 = 0;
    ++v43;
    do
    {
      v56 = *(v83 + v55);
      if ((v56 & 0x80000000) != 0)
      {
        break;
      }

      v57 = &v16[v56];
      if (v55 <= 0x17)
      {
        v58 = &v9[v56];
        v59 = v9[v56];
        if (v9[v56])
        {
          v60 = v17[v56];
          if ((v60 & 0x80000000) != 0)
          {
LABEL_67:
            v61 = 0;
          }

          else
          {
            v61 = *(a1 + 4 * v60);
          }

          if (v59 <= 0x1F)
          {
            v61 += *(a1 + 128 + 4 * v59);
          }

          v62 = 0;
          v63 = v61 - *v57;
          v64 = &v21[4 * v15[v56]];
          do
          {
            v20[*&v64[4 * v62++]] += v63;
          }

          while (v62 < *v58);
          goto LABEL_74;
        }
      }

      else
      {
        v17[v56] = -1;
        *(v83 + v55) = -1;
        v58 = &v9[v56];
        v59 = v9[v56];
        if (v9[v56])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v61) = 0;
LABEL_74:
      *v57 = v61;
      ++v55;
    }

    while (v55 != 27);
    v65 = 0;
    v66 = -1;
    v40 = -1;
    do
    {
      v67 = *(v83 + v65);
      if ((v67 & 0x80000000) != 0)
      {
        break;
      }

      v68 = v9[v67];
      if (v9[v67])
      {
        v69 = &v21[4 * v15[v67]];
        do
        {
          v71 = *v69;
          v69 += 4;
          v70 = v71;
          v72 = v20[v71];
          if (v66 < v72)
          {
            v40 = v70;
          }

          if (v66 <= v72)
          {
            v66 = v72;
          }

          --v68;
        }

        while (v68);
      }

      ++v65;
    }

    while (v65 != 24);
    if ((v40 & 0x80000000) != 0 && v44 < a4)
    {
      while (((v19[v44 >> 3] >> (v44 & 7)) & 1) != 0)
      {
        if (a4 == ++v44)
        {
          v44 = a4;
          goto LABEL_91;
        }
      }

      v40 = v44;
    }

LABEL_91:
    ;
  }

  while ((v40 & 0x80000000) == 0);
LABEL_92:
  if (a4 >= 1)
  {
    v73 = 0;
    LODWORD(v74) = 0;
    do
    {
      v75 = 0;
      v74 = v74;
      v76 = &v80[3 * *(v82 + v73)];
      do
      {
        *(a2 + v74++) = v76[v75++];
      }

      while (v75 != 3);
      ++v73;
    }

    while (v73 != a4);
  }

  free(v21);
  free(v15);
  free(v16);
  free(v9);
  free(v17);
  free(v19);
  free(v20);
  free(v82);
  return a2;
}

uint64_t OptimizeVertexCache<unsigned char>::OptimizeVertexCache(uint64_t a1)
{
  v2 = 0;
  v3 = -3;
  do
  {
    if (v2 >= 3)
    {
      v4 = (powf((v3 * -0.034483) + 1.0, 1.5) * 7281.0);
    }

    else
    {
      v4 = 5460;
    }

    *(a1 + 4 * v2++) = v4;
    ++v3;
  }

  while (v2 != 32);
  v5 = 0;
  v6 = (a1 + 144);
  v17 = vdupq_n_s64(0x1FuLL);
  do
  {
    v20 = vdupq_n_s64(v5);
    v7 = vorrq_s8(v20, xmmword_21C27F640);
    v8 = vmovn_s64(vcgtq_u64(v17, v7));
    v18 = vuzp1_s16(v8, v8).u8[0];
    v19 = v7;
    v24 = vcvtq_f32_u32(vaddq_s32(vdupq_n_s32(v5), xmmword_21C2A21C0));
    v21 = powf(v24.f32[1], -0.5);
    *&v9 = powf(v24.f32[0], -0.5);
    *(&v9 + 1) = v21;
    v22 = v9;
    v10 = powf(v24.f32[2], -0.5);
    v11 = v22;
    *(&v11 + 2) = v10;
    v23 = v11;
    v12 = powf(v24.f32[3], -0.5);
    if (v18)
    {
      *(v6 - 3) = ((*&v23 + *&v23) * 7281.0);
    }

    v13 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v19));
    if (vuzp1_s16(v13, v13).i8[2])
    {
      *(v6 - 2) = ((*(&v23 + 1) + *(&v23 + 1)) * 7281.0);
    }

    v14 = vorrq_s8(v20, xmmword_21C27F630);
    if (vuzp1_s16(*&v14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v14))).i32[1])
    {
      *(v6 - 1) = ((*(&v23 + 2) + *(&v23 + 2)) * 7281.0);
    }

    v15 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v14));
    if (vuzp1_s16(v15, v15).i8[6])
    {
      *v6 = ((v12 + v12) * 7281.0);
    }

    v5 += 4;
    v6 += 4;
  }

  while (v5 != 32);
  return a1;
}

uint64_t OptimizeVertexCache<unsigned short>::reorderIndices(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, int a5)
{
  v88 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v10, v9);
  if (a4 >= 1)
  {
    LODWORD(v11) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = a3;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v10[v14];
      if (v15 == 255)
      {
        free(v10);
        return 0;
      }

      v10[v13] = v15 + 1;
      --v11;
    }

    while (v11);
  }

  v85 = a3;
  v83 = a2;
  v16 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v17 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
  v18 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v19 = a4 + 7;
  if (a4 < -7)
  {
    v19 = a4 + 14;
  }

  v82 = v19 >> 3;
  v20 = malloc_type_malloc(v82, 0x100004077774924uLL);
  v21 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v81 = 12 * a4;
  v22 = malloc_type_malloc(v81, 0x100004052888210uLL);
  bzero(v20, v82);
  bzero(v21, 2 * a4);
  bzero(v22, v81);
  if (a5 >= 1)
  {
    v23 = 0;
    v24 = a5;
    v25 = v16;
    v26 = v10;
    v27 = v18;
    do
    {
      *v25++ = v23;
      v23 += *v26;
      *v26++ = 0;
      *v27++ = -1;
      --v24;
    }

    while (v24);
  }

  v28 = v85;
  if (a4 >= 1)
  {
    v29 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v31 = v28[i];
        *&v22[4 * v16[v31] + 4 * v10[v31]++] = v29;
      }

      ++v29;
      v28 += 3;
    }

    while (v29 != a4);
  }

  if (a5 >= 1)
  {
    v32 = 0;
    do
    {
      if (v10[v32])
      {
        v33 = v18[v32];
        if ((v33 & 0x80000000) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a1 + 4 * v33);
        }

        if (v10[v32] <= 0x1Fu)
        {
          v34 += *(a1 + 128 + 4 * v10[v32]);
        }
      }

      else
      {
        LOWORD(v34) = 0;
      }

      v17[v32] = v34;
      if (v10[v32])
      {
        v35 = 0;
        v36 = &v22[4 * v16[v32]];
        do
        {
          v21[*&v36[4 * v35++]] += v17[v32];
        }

        while (v35 < v10[v32]);
      }

      ++v32;
    }

    while (v32 != a5);
  }

  if (a4 < 1)
  {
    v39 = -1;
  }

  else
  {
    v37 = 0;
    v38 = -1;
    v39 = -1;
    do
    {
      v40 = v21[v37];
      if (v38 < v40)
      {
        v39 = v37;
      }

      if (v38 <= v40)
      {
        v38 = v21[v37];
      }

      ++v37;
    }

    while (a4 != v37);
  }

  v42 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v43 = -1;
  *(&v43 + 1) = -1;
  *&v87[12] = v43;
  v86[4] = v43;
  *v87 = v43;
  v86[2] = v43;
  v86[3] = v43;
  v86[0] = v43;
  v86[1] = v43;
  v44 = v85;
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v47 = 0;
    v20[v39 >> 3] |= 1 << (v39 & 7);
    v42[v45] = v39;
    do
    {
      v48 = v44[3 * v39 + v47];
      LODWORD(v49) = v18[v48];
      if (v49 < 0)
      {
        LODWORD(v49) = v47 | 0x18;
      }

      v49 = v49;
      if (v49 > v47)
      {
        v50 = v86 + v49;
        do
        {
          v51 = *(v50 - 1);
          *v50 = v51;
          if ((v51 & 0x80000000) == 0)
          {
            v52 = v18[v51];
            if (v52 <= 25)
            {
              v18[v51] = v52 + 1;
            }
          }

          --v49;
          --v50;
        }

        while (v49 > v47);
      }

      *(v86 + v47) = v48;
      v18[v48] = v47;
      v53 = v10[v48];
      if (v10[v48])
      {
        v54 = v16[v48];
        v55 = &v22[4 * v54];
        v56 = v10[v48];
        while (*v55 != v39)
        {
          v55 += 4;
          if (!--v56)
          {
            goto LABEL_58;
          }
        }

        *v55 = *&v22[4 * v54 - 4 + 4 * v53];
        LOBYTE(v53) = v10[v48];
      }

LABEL_58:
      v10[v48] = v53 - 1;
      ++v47;
    }

    while (v47 != 3);
    v57 = 0;
    ++v45;
    do
    {
      v58 = *(v86 + v57);
      if ((v58 & 0x80000000) != 0)
      {
        break;
      }

      v59 = &v17[v58];
      if (v57 <= 0x17)
      {
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          v62 = v18[v58];
          if ((v62 & 0x80000000) != 0)
          {
LABEL_67:
            v63 = 0;
          }

          else
          {
            v63 = *(a1 + 4 * v62);
          }

          if (v61 <= 0x1F)
          {
            v63 += *(a1 + 128 + 4 * v61);
          }

          v64 = 0;
          v65 = v63 - *v59;
          v66 = &v22[4 * v16[v58]];
          do
          {
            v21[*&v66[4 * v64++]] += v65;
          }

          while (v64 < *v60);
          goto LABEL_74;
        }
      }

      else
      {
        v18[v58] = -1;
        *(v86 + v57) = -1;
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v63) = 0;
LABEL_74:
      *v59 = v63;
      ++v57;
    }

    while (v57 != 27);
    v67 = 0;
    v68 = -1;
    v39 = -1;
    do
    {
      v69 = *(v86 + v67);
      if ((v69 & 0x80000000) != 0)
      {
        break;
      }

      v70 = v10[v69];
      if (v10[v69])
      {
        v71 = &v22[4 * v16[v69]];
        do
        {
          v73 = *v71;
          v71 += 4;
          v72 = v73;
          v74 = v21[v73];
          if (v68 < v74)
          {
            v39 = v72;
          }

          if (v68 <= v74)
          {
            v68 = v74;
          }

          --v70;
        }

        while (v70);
      }

      ++v67;
    }

    while (v67 != 24);
    if ((v39 & 0x80000000) != 0 && v46 < a4)
    {
      while (((v20[v46 >> 3] >> (v46 & 7)) & 1) != 0)
      {
        if (a4 == ++v46)
        {
          v46 = a4;
          goto LABEL_91;
        }
      }

      v39 = v46;
    }

LABEL_91:
    ;
  }

  while ((v39 & 0x80000000) == 0);
LABEL_92:
  v41 = v83;
  if (a4 >= 1)
  {
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = 0;
      v78 = &v44[3 * v42[v75]];
      v79 = v83 + 2 * v76;
      v76 += 3;
      do
      {
        *(v79 + v77 * 2) = v78[v77];
        ++v77;
      }

      while (v77 != 3);
      ++v75;
    }

    while (v75 != a4);
  }

  free(v22);
  free(v16);
  free(v17);
  free(v10);
  free(v18);
  free(v20);
  free(v21);
  free(v42);
  return v41;
}

uint64_t OptimizeVertexCache<unsigned int>::reorderIndices(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, int a5)
{
  v88 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v10, v9);
  if (a4 >= 1)
  {
    LODWORD(v11) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = a3;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v10[v14];
      if (v15 == 255)
      {
        free(v10);
        return 0;
      }

      v10[v13] = v15 + 1;
      --v11;
    }

    while (v11);
  }

  v85 = a3;
  v83 = a2;
  v16 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v17 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
  v18 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v19 = a4 + 7;
  if (a4 < -7)
  {
    v19 = a4 + 14;
  }

  v82 = v19 >> 3;
  v20 = malloc_type_malloc(v82, 0x100004077774924uLL);
  v21 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v81 = 12 * a4;
  v22 = malloc_type_malloc(v81, 0x100004052888210uLL);
  bzero(v20, v82);
  bzero(v21, 2 * a4);
  bzero(v22, v81);
  if (a5 >= 1)
  {
    v23 = 0;
    v24 = a5;
    v25 = v16;
    v26 = v10;
    v27 = v18;
    do
    {
      *v25++ = v23;
      v23 += *v26;
      *v26++ = 0;
      *v27++ = -1;
      --v24;
    }

    while (v24);
  }

  v28 = v85;
  if (a4 >= 1)
  {
    v29 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v31 = v28[i];
        *&v22[4 * v16[v31] + 4 * v10[v31]++] = v29;
      }

      ++v29;
      v28 += 3;
    }

    while (v29 != a4);
  }

  if (a5 >= 1)
  {
    v32 = 0;
    do
    {
      if (v10[v32])
      {
        v33 = v18[v32];
        if ((v33 & 0x80000000) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a1 + 4 * v33);
        }

        if (v10[v32] <= 0x1Fu)
        {
          v34 += *(a1 + 128 + 4 * v10[v32]);
        }
      }

      else
      {
        LOWORD(v34) = 0;
      }

      v17[v32] = v34;
      if (v10[v32])
      {
        v35 = 0;
        v36 = &v22[4 * v16[v32]];
        do
        {
          v21[*&v36[4 * v35++]] += v17[v32];
        }

        while (v35 < v10[v32]);
      }

      ++v32;
    }

    while (v32 != a5);
  }

  if (a4 < 1)
  {
    v39 = -1;
  }

  else
  {
    v37 = 0;
    v38 = -1;
    v39 = -1;
    do
    {
      v40 = v21[v37];
      if (v38 < v40)
      {
        v39 = v37;
      }

      if (v38 <= v40)
      {
        v38 = v21[v37];
      }

      ++v37;
    }

    while (a4 != v37);
  }

  v42 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v43 = -1;
  *(&v43 + 1) = -1;
  *&v87[12] = v43;
  v86[4] = v43;
  *v87 = v43;
  v86[2] = v43;
  v86[3] = v43;
  v86[0] = v43;
  v86[1] = v43;
  v44 = v85;
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v47 = 0;
    v20[v39 >> 3] |= 1 << (v39 & 7);
    v42[v45] = v39;
    do
    {
      v48 = v44[3 * v39 + v47];
      LODWORD(v49) = v18[v48];
      if (v49 < 0)
      {
        LODWORD(v49) = v47 | 0x18;
      }

      v49 = v49;
      if (v49 > v47)
      {
        v50 = v86 + v49;
        do
        {
          v51 = *(v50 - 1);
          *v50 = v51;
          if ((v51 & 0x80000000) == 0)
          {
            v52 = v18[v51];
            if (v52 <= 25)
            {
              v18[v51] = v52 + 1;
            }
          }

          --v49;
          --v50;
        }

        while (v49 > v47);
      }

      *(v86 + v47) = v48;
      v18[v48] = v47;
      v53 = v10[v48];
      if (v10[v48])
      {
        v54 = v16[v48];
        v55 = &v22[4 * v54];
        v56 = v10[v48];
        while (*v55 != v39)
        {
          v55 += 4;
          if (!--v56)
          {
            goto LABEL_58;
          }
        }

        *v55 = *&v22[4 * v54 - 4 + 4 * v53];
        LOBYTE(v53) = v10[v48];
      }

LABEL_58:
      v10[v48] = v53 - 1;
      ++v47;
    }

    while (v47 != 3);
    v57 = 0;
    ++v45;
    do
    {
      v58 = *(v86 + v57);
      if ((v58 & 0x80000000) != 0)
      {
        break;
      }

      v59 = &v17[v58];
      if (v57 <= 0x17)
      {
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          v62 = v18[v58];
          if ((v62 & 0x80000000) != 0)
          {
LABEL_67:
            v63 = 0;
          }

          else
          {
            v63 = *(a1 + 4 * v62);
          }

          if (v61 <= 0x1F)
          {
            v63 += *(a1 + 128 + 4 * v61);
          }

          v64 = 0;
          v65 = v63 - *v59;
          v66 = &v22[4 * v16[v58]];
          do
          {
            v21[*&v66[4 * v64++]] += v65;
          }

          while (v64 < *v60);
          goto LABEL_74;
        }
      }

      else
      {
        v18[v58] = -1;
        *(v86 + v57) = -1;
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v63) = 0;
LABEL_74:
      *v59 = v63;
      ++v57;
    }

    while (v57 != 27);
    v67 = 0;
    v68 = -1;
    v39 = -1;
    do
    {
      v69 = *(v86 + v67);
      if ((v69 & 0x80000000) != 0)
      {
        break;
      }

      v70 = v10[v69];
      if (v10[v69])
      {
        v71 = &v22[4 * v16[v69]];
        do
        {
          v73 = *v71;
          v71 += 4;
          v72 = v73;
          v74 = v21[v73];
          if (v68 < v74)
          {
            v39 = v72;
          }

          if (v68 <= v74)
          {
            v68 = v74;
          }

          --v70;
        }

        while (v70);
      }

      ++v67;
    }

    while (v67 != 24);
    if ((v39 & 0x80000000) != 0 && v46 < a4)
    {
      while (((v20[v46 >> 3] >> (v46 & 7)) & 1) != 0)
      {
        if (a4 == ++v46)
        {
          v46 = a4;
          goto LABEL_91;
        }
      }

      v39 = v46;
    }

LABEL_91:
    ;
  }

  while ((v39 & 0x80000000) == 0);
LABEL_92:
  v41 = v83;
  if (a4 >= 1)
  {
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = 0;
      v78 = &v44[3 * v42[v75]];
      v79 = v83 + 4 * v76;
      v76 += 3;
      do
      {
        *(v79 + v77 * 4) = v78[v77];
        ++v77;
      }

      while (v77 != 3);
      ++v75;
    }

    while (v75 != a4);
  }

  free(v22);
  free(v16);
  free(v17);
  free(v10);
  free(v18);
  free(v20);
  free(v21);
  free(v42);
  return v41;
}

float32x4_t *_ZNSt3__112__hash_tableINS_17__hash_value_typeIDv3_fjEENS_22__unordered_map_hasherIS2_S3_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S8_S6_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(void *a1, float32x4_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = result->i64[0])
  {
    v8 = result->u64[1];
    if (v8 == v3)
    {
      v9 = vceqq_f32(result[1], *a2);
      v9.i32[3] = v9.i32[2];
      if ((vminvq_u32(v9) & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

float32x4_t *_ZNSt3__112__hash_tableINS_17__hash_value_typeIDv3_fjEENS_22__unordered_map_hasherIS2_S3_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S8_S6_Lb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS2_JRKNS_21piecewise_construct_tENS_5tupleIJRKS2_EEENSJ_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_(void *a1, float32x4_t *a2)
{
  v2 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7->u64[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = v7->i64[0];
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v9 = vceqq_f32(v7[1], *a2);
  v9.i32[3] = v9.i32[2];
  if ((vminvq_u32(v9) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  return v7;
}

__n128 C3D::FillTexturePass::FillTexturePass(C3D::FillTexturePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  v5 = C3D::RenderPass::RenderPass(this, a2, a3);
  *v5 = &unk_282DC5B08;
  result = *&a4->var0;
  *(v5 + 15) = *&a4->var0;
  return result;
}

uint64_t C3D::FillTexturePass::setup(C3D::FillTexturePass *this)
{
  C3D::Pass::setOutputCount(this, 1u);
  v4 = *(this + 15);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 48) = v4;
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 66) = *(v2 + 66) & 0xFFFC | 2;
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 66) |= 0x40u;
  return result;
}

void _C3DFramebufferRegistryCFFinalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
    a1[4] = 0;
  }
}

CFStringRef _C3DFramebufferRegistryCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFramebufferRegistry>");
}

CFStringRef _C3DFramebufferRegistryCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFramebufferRegistry>");
}

CFTypeRef C3DFramebufferRegistryPrepareFramebufferWithDescription(uint64_t a1, float32x2_t *a2, uint64_t a3, CFIndex a4, int a5, void *key, uint64_t a7)
{
  if (!a1)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    Value = CFDictionaryGetValue(*(a1 + 72), key);
    if (Value)
    {
      ValueAtIndex = Value;
      v24 = vceq_f32(*a2, Value[5]);
      if ((vpmin_u32(v24, v24).u32[0] & 0x80000000) != 0)
      {
        v25 = a2[10].i8[0];
        v26 = Value[15].i8[0] ^ v25;
        if ((v26 & 7) == 0)
        {
          v52 = v25 & 7;
          if (v52)
          {
            v53 = a2 + 1;
            v54 = Value + 6;
            while (1)
            {
              v56 = v53->i32[0];
              ++v53;
              v55 = v56;
              v57 = v54->i32[0];
              ++v54;
              if (((v57 ^ v55) & 0x1700FFFF) != 0)
              {
                break;
              }

              if (!--v52)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
LABEL_49:
            if ((v26 & 0x10) == 0 && ((Value[14].i32[0] ^ a2[9].i32[0]) & 0x1700FFFF) == 0 && _fboHasSpecifiedOutputs(a1, Value, a3, a4, a5) && (*(ValueAtIndex + 128) & 2) == 0)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }
  }

  if (*(a1 + 80) == 1)
  {
    v60 = (((32 * (a2[1].i8[3] & 1)) | a2[1].i8[1] | ((a2[9].i8[3] & 1) << 6)) | ((COERCE_FLOAT(*a2) & 0xFFFFF) << 10) | (COERCE_FLOAT(HIDWORD(*a2)) << 30));
    v27 = CFDictionaryGetValue(*(a1 + 24), v60);
    if (v27)
    {
      v28 = v27;
      v59 = a7;
      Count = CFArrayGetCount(v27);
      if (Count >= 1)
      {
        v30 = Count;
        v31 = 0;
        v58 = key;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v28, v31);
          if (!CFDictionaryContainsValue(*(a1 + 72), ValueAtIndex))
          {
            if (_fboHasSpecifiedOutputs(a1, ValueAtIndex, a3, a4, a5))
            {
              v32 = vceq_f32(*(ValueAtIndex + 40), *a2);
              if ((vpmin_u32(v32, v32).u32[0] & 0x80000000) != 0)
              {
                v33 = *(ValueAtIndex + 120);
                v34 = a2[10].i8[0] ^ v33;
                if ((v34 & 7) == 0)
                {
                  v35 = v33 & 7;
                  if (v35)
                  {
                    v36 = (ValueAtIndex + 48);
                    v37 = a2 + 1;
                    while (1)
                    {
                      v39 = *v36;
                      v36 += 2;
                      v38 = v39;
                      v40 = v37->i32[0];
                      ++v37;
                      if (((v40 ^ v38) & 0x1700FFFF) != 0)
                      {
                        break;
                      }

                      if (!--v35)
                      {
                        goto LABEL_22;
                      }
                    }
                  }

                  else
                  {
LABEL_22:
                    if ((v34 & 0x10) == 0 && ((a2[9].i32[0] ^ *(ValueAtIndex + 112)) & 0x1700FFFF) == 0 && (*(ValueAtIndex + 128) & 1) == 0)
                    {
                      v41 = 0;
                      while (1)
                      {
                        RenderTarget = C3DFramebufferGetRenderTarget(ValueAtIndex, v41);
                        if (RenderTarget)
                        {
                          if (RenderTarget[19])
                          {
                            break;
                          }
                        }

                        v43 = v41++;
                        if (v43 > 4)
                        {
                          key = v58;
                          a7 = v59;
                          if (ValueAtIndex)
                          {
                            goto LABEL_37;
                          }

                          goto LABEL_33;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          ++v31;
        }

        while (v31 != v30);
        key = v58;
      }

      a7 = v59;
    }

LABEL_33:
    v44 = v60;
  }

  else
  {
    v44 = 0;
  }

  RendererContextGL = C3DEngineContextGetRendererContextGL(a7);
  *(a1 + 81) = 1;
  ValueAtIndex = C3DFramebufferCreate();
  v46 = *a2[2].f32;
  *(ValueAtIndex + 40) = *a2->f32;
  *(ValueAtIndex + 56) = v46;
  v48 = *a2[6].f32;
  v47 = *a2[8].f32;
  v49 = a2[10];
  *(ValueAtIndex + 72) = *a2[4].f32;
  *(ValueAtIndex + 120) = v49;
  *(ValueAtIndex + 104) = v47;
  *(ValueAtIndex + 88) = v48;
  _addRenderTargetIfNeeded(a1, 1, 0, *&a2[1], ValueAtIndex, RendererContextGL, a3, a4, a5);
  _addRenderTargetIfNeeded(a1, 0, 4, *&a2[9], ValueAtIndex, RendererContextGL, a3, a4, a5);
  C3DRendererContextSetupFramebuffer(RendererContextGL, ValueAtIndex);
  Mutable = CFDictionaryGetValue(*(a1 + 24), v44);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    CFDictionaryAddValue(*(a1 + 24), v44, Mutable);
    CFRelease(Mutable);
  }

  CFArrayAppendValue(Mutable, ValueAtIndex);
  CFRelease(ValueAtIndex);
LABEL_37:
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 0x40000000;
  context[2] = __C3DFramebufferRegistryPrepareFramebufferWithDescription_block_invoke;
  context[3] = &__block_descriptor_tmp_4_2;
  context[4] = a1;
  C3DFramebufferApplyToRenderTargets(ValueAtIndex, context);
  if (key && (*(a1 + 80) & 1) == 0)
  {
    CFDictionarySetValue(*(a1 + 72), key, ValueAtIndex);
  }

  *(ValueAtIndex + 132) = *(a1 + 64);
  result = *(a1 + 56);
  if (result != ValueAtIndex)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    result = CFRetain(ValueAtIndex);
    *(a1 + 56) = result;
  }

  return result;
}

uint64_t _fboHasSpecifiedOutputs(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4, int a5)
{
  v6 = a4;
  v20[3] = *MEMORY[0x277D85DE8];
  memset(v20, 0, 24);
  if (*(a1 + 80) == 1 && CFDictionaryGetCount(*(a2 + 32)) < a4)
  {
    return 0;
  }

  if (v6 < 1)
  {
    return 1;
  }

  for (i = (a3 + 16); ; i += 16)
  {
    v12 = *i;
    if (!a5 || v12 != 5)
    {
      v13 = v12;
      v14 = *(v20 + v12);
      SlotForOutputBufferType = C3DRenderBufferGetSlotForOutputBufferType(v12, v14);
      result = C3DFramebufferGetRenderTarget(a2, SlotForOutputBufferType);
      if (!result)
      {
        break;
      }

      *(v20 + v13) = v14 + 1;
      System = C3DParticleSystemInstanceGetSystem(result);
      if (System)
      {
        v17 = System;
        v18 = *(i - 1);
        UniqueIdentifierWithName = _createUniqueIdentifierWithName(a1, v18);
        result = 0;
        if (!v18 || UniqueIdentifierWithName != v17)
        {
          break;
        }
      }
    }

    if (!--v6)
    {
      return 1;
    }
  }

  return result;
}

void _addRenderTargetIfNeeded(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a4;
  if (!a4)
  {
    return;
  }

  if (a8 < 1)
  {
LABEL_6:
    v17 = 0;
    if (a9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = (a7 + 16);
    v16 = a8;
    while (*v15 != a2)
    {
      v15 += 16;
      if (!--v16)
      {
        goto LABEL_6;
      }
    }

    v17 = *(v15 - 1);
    if (a9)
    {
      goto LABEL_17;
    }
  }

  if (!v17)
  {
    if (a4 - 46 < 0xFFFFFFFD || a8 < 1)
    {
LABEL_15:
      C3DFramebufferGetSize(a5);
LABEL_21:
      RenderTargetWithDescription = C3DRendererContextCreateRenderTargetWithDescription(a6, a4, a5);
      if (!RenderTargetWithDescription)
      {
        v24 = scn_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          _addRenderTargetIfNeeded_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
        }
      }

      v32 = C3DSceneSourcePerformConsistencyCheck(*&RenderTargetWithDescription[2]);
      Value = CFDictionaryGetValue(*(a1 + 16), v32);
      if (!Value)
      {
        Value = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        CFDictionaryAddValue(*(a1 + 16), v32, Value);
        CFRelease(Value);
      }

      CFArrayAppendValue(Value, RenderTargetWithDescription);
      CFRelease(RenderTargetWithDescription);
      goto LABEL_27;
    }

    v18 = (a7 + 16);
    while (*v18 != 5)
    {
      v18 += 16;
      if (!--a8)
      {
        goto LABEL_15;
      }
    }

    v17 = *(v18 - 1);
  }

LABEL_17:
  Size = C3DFramebufferGetSize(a5);
  if (!v17)
  {
    goto LABEL_21;
  }

  v20 = *&Size;
  RenderTargetWithName = C3DFramebufferRegistryGetRenderTargetWithName(a1, v17);
  if (!RenderTargetWithName)
  {
    goto LABEL_21;
  }

  RenderTargetWithDescription = RenderTargetWithName;
  if (((C3DRenderTargetGetDescription(RenderTargetWithName) ^ a4) & 0x1700FFFF) != 0)
  {
    goto LABEL_21;
  }

  v23 = vceq_f32(v20, RenderTargetWithDescription[5]);
  if ((vpmin_u32(v23, v23).u32[0] & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_27:
  C3DFramebufferAddRenderTarget(a5, RenderTargetWithDescription, a3);
  if (a3 == 4 && (a9 & 1) == 0 && (v10 - 46) >= 0xFFFFFFFD)
  {
    C3DFramebufferAddRenderTarget(a5, RenderTargetWithDescription, 5);
  }
}

uint64_t __C3DFramebufferRegistryPrepareFramebufferWithDescription_block_invoke(uint64_t result, uint64_t a2)
{
  *(a2 + 80) = *(*(result + 32) + 64);
  v2 = *(a2 + 76);
  if (v2 <= 0x7FFFFFFD)
  {
    *(a2 + 76) = v2 + 1;
  }

  return result;
}

void C3DFramebufferRegistryTrackFBO(uint64_t a1, void *value, void *key)
{
  if (key)
  {
    CFDictionarySetValue(*(a1 + 72), key, value);
  }
}

uint64_t C3DFramebufferRegistryFinalizeAndGetFramebuffer(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!*(a1 + 56))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryFinalizeAndGetFramebuffer_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return *(a1 + 56);
}

void C3DFramebufferRegistryReplaceTextureWithNameByTexture(uint64_t a1, int a2, __CFString *a3)
{
  UniqueIdentifierWithName = _createUniqueIdentifierWithName(a1, a3);
  v6 = *(a1 + 56);
  SlotForOutputBufferType = C3DRenderBufferGetSlotForOutputBufferType(a2, 0);
  RenderTarget = C3DFramebufferGetRenderTarget(v6, SlotForOutputBufferType);
  if (!RenderTarget)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      _addRenderTargetIfNeeded_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 48), UniqueIdentifierWithName);
  if (Value)
  {
    v18 = Value == RenderTarget;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = Value;
    RenderTarget[19] = Value[19];
    Value[19] = 0;
    CFDictionaryRemoveValue(*(a1 + 48), UniqueIdentifierWithName);
    C3DRenderTargetSetNameIndex(v19, 0);
  }

  C3DRenderTargetSetNameIndex(RenderTarget, UniqueIdentifierWithName);
  CFDictionarySetValue(*(a1 + 48), UniqueIdentifierWithName, RenderTarget);
}

const void *_createUniqueIdentifierWithName(uint64_t a1, __CFString *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = @"(null)";
  }

  Value = CFDictionaryGetValue(*(a1 + 32), v3);
  if (!Value)
  {
    v5 = *(a1 + 32);
    Value = (*(a1 + 40) + 1);
    *(a1 + 40) = Value;
    CFDictionarySetValue(v5, v3, Value);
  }

  return Value;
}

void C3DFramebufferRegistryRetainTextureWithName(uint64_t a1, int a2, __CFString *a3, int a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (!*(a1 + 56) && (v16 = scn_default_log(), os_log_type_enabled(v16, OS_LOG_TYPE_FAULT)))
  {
    C3DFramebufferRegistryFinalizeAndGetFramebuffer_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
    goto LABEL_9;
  }

  v24 = scn_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    C3DFramebufferRegistryRetainTextureWithName_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
  }

LABEL_9:
  if (a4 <= 0)
  {
    v32 = scn_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryRetainTextureWithName_cold_4(v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }

  UniqueIdentifierWithName = _createUniqueIdentifierWithName(a1, a3);
  v41 = *(a1 + 56);
  SlotForOutputBufferType = C3DRenderBufferGetSlotForOutputBufferType(a2, 0);
  RenderTarget = C3DFramebufferGetRenderTarget(v41, SlotForOutputBufferType);
  if (!RenderTarget)
  {
    v44 = scn_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      _addRenderTargetIfNeeded_cold_1(v44, v45, v46, v47, v48, v49, v50, v51);
    }
  }

  C3DRenderTargetSetNameIndex(RenderTarget, UniqueIdentifierWithName);
  CFDictionarySetValue(*(a1 + 48), UniqueIdentifierWithName, RenderTarget);
  v52 = 2147483646;
  if (a4 == 2147483646 || (v53 = RenderTarget[19], v53 == 2147483646) || (v52 = 0x7FFFFFFF, a4 == 0x7FFFFFFF) || v53 == 0x7FFFFFFF)
  {
    RenderTarget[19] = v52;
  }

  else
  {
    RenderTarget[19] = v53 + a4;
  }
}

const void *C3DFramebufferRegistryGetRenderTargetWithName(uint64_t a1, __CFString *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  UniqueIdentifierWithName = _createUniqueIdentifierWithName(a1, a2);
  return CFDictionaryGetValue(*(a1 + 48), UniqueIdentifierWithName);
}

const void *C3DFramebufferRegistryGetTextureWithName(uint64_t a1, __CFString *a2)
{
  result = C3DFramebufferRegistryGetRenderTargetWithName(a1, a2);
  if (result)
  {

    return C3DRenderTargetGetTexture(result);
  }

  return result;
}

void C3DFramebufferRegistryReleaseRenderTarget(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 76);
  if (v2 <= 0x7FFFFFFD)
  {
    v3 = v2 - 1;
    *(a2 + 76) = v3;
    if (!v3)
    {
      _removeReference(a1, a2);
    }
  }
}

void _removeReference(uint64_t a1, uint64_t a2)
{
  System = C3DParticleSystemInstanceGetSystem(a2);
  if (!System)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _removeReference_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  C3DRenderTargetSetNameIndex(a2, 0);
  CFDictionaryRemoveValue(*(a1 + 48), System);
}

void C3DFramebufferRegistryReleaseTextureWithName(uint64_t a1, __CFString *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  RenderTargetWithName = C3DFramebufferRegistryGetRenderTargetWithName(a1, a2);
  if (RenderTargetWithName)
  {
    v13 = RenderTargetWithName[19];
    if (v13 <= 0x7FFFFFFD)
    {
      v14 = v13 - 1;
      RenderTargetWithName[19] = v14;
      if (!v14)
      {
        _removeReference(a1, RenderTargetWithName);
      }
    }
  }
}

void C3DFramebufferRegistryReleaseFramebuffer(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryReleaseFramebuffer_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  context[0] = MEMORY[0x277D85DD0];
  context[1] = 0x40000000;
  context[2] = __C3DFramebufferRegistryReleaseFramebuffer_block_invoke;
  context[3] = &__block_descriptor_tmp_10_0;
  context[4] = a1;
  C3DFramebufferApplyToRenderTargets(a2, context);
}

void __C3DFramebufferRegistryReleaseFramebuffer_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 76);
  if ((v2 - 1) <= 0x7FFFFFFC)
  {
    *(a2 + 76) = --v2;
  }

  if (!v2)
  {
    if (*(a2 + 48))
    {
      _removeReference(*(a1 + 32), a2);
    }
  }
}

void _releaseGlobalRenderTargets(int a1, CFArrayRef theArray, uint64_t a3)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v6 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6 - 2);
      if (ValueAtIndex[19] == 2147483646)
      {
        ValueAtIndex[19] = 0;
        _removeReference(a3, ValueAtIndex);
      }

      --v6;
    }

    while (v6 > 1);
  }
}

void C3DFramebufferRegistryFinalizeFrame(CFDictionaryRef *context)
{
  if (!context)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  CFDictionaryApplyFunction(context[2], _releaseGlobalRenderTargets, context);
}

void C3DFramebufferRegistryBumpTimestamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 64);
  if (*(a1 + 80) != gC3DFBORegistryEnableRecycling)
  {
    *(a1 + 80) = gC3DFBORegistryEnableRecycling;
    CFDictionaryRemoveAllValues(*(a1 + 72));
  }
}

void C3DFramebufferRegistryViewportDidResize(uint64_t a1, uint64_t a2)
{
  context[4] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = 0;
  context[0] = C3DEngineContextGetRendererContextGL(a2);
  context[1] = 0;
  context[2] = *(a1 + 64);
  context[3] = &v12;
  CFDictionaryApplyFunction(*(a1 + 24), _purgeFBOs, context);
  CFDictionaryApplyFunction(*(a1 + 16), _purgeRenderTargets, context);
}

void _purgeFBOs(int a1, CFArrayRef theArray, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v8 = Count + 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8 - 2);
      if (v6)
      {
        break;
      }

      if ((ValueAtIndex[120] & 8) != 0)
      {
        goto LABEL_10;
      }

LABEL_12:
      if (--v8 <= 1)
      {
        return;
      }
    }

    if (v6 == 1)
    {
      if ((*(ValueAtIndex + 33) + 10) >= *(a3 + 16))
      {
        goto LABEL_12;
      }

LABEL_10:
      **(a3 + 24) = 1;
    }

    else if (v6 != 2)
    {
      goto LABEL_12;
    }

    C3DRendererContextDeleteFramebuffer(v5, ValueAtIndex, 0);
    CFArrayRemoveValueAtIndex(theArray, v8 - 2);
    goto LABEL_12;
  }
}

void _purgeRenderTargets(int a1, CFArrayRef theArray, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *a3;
  v7 = *(a3 + 8);
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v9 = Count + 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9 - 2);
      if (!v7)
      {
        break;
      }

      if (v7 == 1)
      {
        if (ValueAtIndex[18] || ValueAtIndex[19] || ValueAtIndex[20] + 10 >= v5)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (--v9 <= 1)
      {
        return;
      }
    }

    if (ValueAtIndex[18] || ValueAtIndex[19] || (*(ValueAtIndex + 19) & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    **(a3 + 24) = 1;
LABEL_6:
    C3DRendererContextDeleteRenderTarget(v6, ValueAtIndex);
    CFArrayRemoveValueAtIndex(theArray, v9 - 2);
    goto LABEL_14;
  }
}

uint64_t C3DFramebufferRegistryPurge(uint64_t a1, uint64_t a2)
{
  context[4] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v13 = 0;
  *(a1 + 81) = 0;
  context[0] = C3DEngineContextGetRendererContextGL(a2);
  context[1] = 1;
  context[2] = *(a1 + 64);
  context[3] = &v13;
  CFDictionaryApplyFunction(*(a1 + 24), _purgeFBOs, context);
  CFDictionaryApplyFunction(*(a1 + 16), _purgeRenderTargets, context);
  return v13;
}

void C3DFramebufferRegistryCleanup(uint64_t a1, uint64_t a2)
{
  context[4] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  context[0] = C3DEngineContextGetRendererContextGL(a2);
  context[1] = 2;
  context[2] = 0;
  context[3] = 0;
  CFDictionaryApplyFunction(*(a1 + 24), _purgeFBOs, context);
  CFDictionaryApplyFunction(*(a1 + 16), _purgeRenderTargets, context);
}

void C3D::BloomUpSamplePass::BloomUpSamplePass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC5B98;
  v5[15] = a4;
}

double C3D::BloomUpSamplePass::setup(C3D::BloomUpSamplePass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 2u);
  v2 = (*(*this + 88))(this);
  v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v3 + 8) = "Bloom";
  *(v3 + 16) = fmax(*(v2 + 8) * 0.5 / **(this + 15), 1.0);
  *(v3 + 18) = fmax(*(v2 + 12) * 0.5 / **(this + 15), 1.0);
  *(v3 + 30) = *(*(this + 15) + 24);
  *(v3 + 26) = 3;
  *(v3 + 28) = 115;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v4 + 8) = "Tmp";
  *(v4 + 16) = fmax(*(v2 + 8) * 0.5 / **(this + 15), 1.0);
  *(v4 + 18) = fmax(*(v2 + 12) * 0.5 / **(this + 15), 1.0);
  *(v4 + 30) = *(*(this + 15) + 24);
  *(v4 + 26) = 3;
  *(v4 + 28) = 115;
  *(v4 + 66) |= 8u;
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v5 + 8) = "Bloom";
  *(v5 + 16) = fmax(*(v2 + 8) * 0.5 / **(this + 15), 1.0);
  result = fmax(*(v2 + 12) * 0.5 / **(this + 15), 1.0);
  *(v5 + 18) = result;
  *(v5 + 28) = 115;
  *(v5 + 26) = 3;
  return result;
}

uint64_t C3D::BloomUpSamplePass::compile(C3D::BloomUpSamplePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = *(*(this + 3) + 128);
  v4 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(v3, v4);
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::BloomUpSamplePass::execute(C3D::Pass *a1, SCNMTLComputeCommandEncoder **a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = *(*(a1 + 15) + 28);
  v3 = *a2;
  v4 = C3D::Pass::outputTextureAtIndex(a1, 1u);
  v20 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v21 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v5 = [v20 newTextureViewWithPixelFormat:objc_msgSend(v4 textureType:"pixelFormat") levels:objc_msgSend(v4 slices:"textureType"), *(*(a1 + 15) + 24) - 1, 1, 0, 1];
  v6 = *(*(a1 + 15) + 24) - 2;
  v7 = [v20 newTextureViewWithPixelFormat:objc_msgSend(v4 textureType:"pixelFormat") levels:objc_msgSend(v4 slices:"textureType"), v6, 1, 0, 1];
  v8 = [v21 newTextureViewWithPixelFormat:objc_msgSend(v4 textureType:"pixelFormat") levels:objc_msgSend(v4 slices:"textureType"), v6, 1, 0, 1];
  v9 = v8;
  v10 = *(*(a1 + 15) + 24);
  if (v10 >= 3)
  {
    v11 = (v10 - 2) - 1;
    v12 = 1;
    do
    {
      if (v3->_textures[0] != v5)
      {
        v3->_textures[0] = v5;
        v3->_texturesToBind[0] |= 1uLL;
      }

      if (v3->_textures[1] != v7)
      {
        v3->_textures[1] = v7;
        v3->_texturesToBind[0] |= 2uLL;
      }

      if (v3->_textures[2] != v9)
      {
        v3->_textures[2] = v9;
        v3->_texturesToBind[0] |= 4uLL;
      }

      if (!v11)
      {
        v13 = 1.0 / pow(v19, (*(*(a1 + 15) + 24) - 4));
        v19 = v13;
      }

      SCNMTLComputeCommandEncoder::setBytes(v3, &v19, 4uLL, 0);
      v14 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 16);
      v15 = [(SCNMTLOpenSubdivComputeEvaluator *)v14 computeEvaluator];
      SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v9, v15);
      v12 ^= 1u;

      v7 = [v20 newTextureViewWithPixelFormat:objc_msgSend(v4 textureType:"pixelFormat") levels:objc_msgSend(v4 slices:"textureType"), v11, 1, 0, 1];
      v8 = [(&v20)[v12 & 1] newTextureViewWithPixelFormat:objc_msgSend(v4 textureType:"pixelFormat") levels:objc_msgSend(v4 slices:"textureType"), v11, 1, 0, 1];
      v16 = v11-- + 1;
      v5 = v9;
      v9 = v8;
    }

    while (v16 > 1);
  }

  if (v3->_textures[0] != v5)
  {
    v3->_textures[0] = v5;
    v3->_texturesToBind[0] |= 1uLL;
  }

  if (v3->_textures[1] != v7)
  {
    v3->_textures[1] = v7;
    v3->_texturesToBind[0] |= 2uLL;
  }

  if (v3->_textures[2] != v4)
  {
    v3->_textures[2] = v4;
    v3->_texturesToBind[0] |= 4uLL;
  }

  v19 = 1.0;
  SCNMTLComputeCommandEncoder::setBytes(v3, &v19, 4uLL, 0);
  v17 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 16);
  v18 = [(SCNMTLOpenSubdivComputeEvaluator *)v17 computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v4, v18);
}

void C3D::BloomUpSamplePassResource::~BloomUpSamplePassResource(C3D::BloomUpSamplePassResource *this)
{
  *this = &unk_282DC5C08;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC5C08;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

float __spreadingVariationf(unsigned int *a1, float32x4_t *a2, int a3, float32x4_t a4, int8x16_t a5, double a6, int8x16_t a7, float32x4_t a8)
{
  v10 = *a2;
  v11 = 214013 * *a1 + 2531011;
  v12 = HIWORD(v11);
  if (a3)
  {
    cosval = ((v12 * -0.000015259) * (1.0 - a4.f32[0])) + 1.0;
    v13 = sqrtf(1.0 - (cosval * cosval));
  }

  else
  {
    v22 = *a2;
    v14 = __sincosf_stret((v12 * 0.000015259) * a4.f32[0]);
    v10 = v22;
    cosval = v14.__cosval;
    LODWORD(v13) = *&v14;
  }

  a5.i32[0] = v10.i32[2];
  a7.i32[0] = 1.0;
  a4.f32[0] = v10.f32[1] / (fabsf(v10.f32[2]) + 1.0);
  a8.f32[0] = -(v10.f32[0] * a4.f32[0]);
  a4.f32[0] = vmuls_lane_f32(a4.f32[0], *v10.f32, 1);
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  v16 = *vbslq_s8(v15, a7, a5).i32;
  a8.f32[1] = 1.0 - a4.f32[0];
  a8.i32[2] = vmuls_lane_f32(-v16, *v10.f32, 1);
  a4.f32[0] = v10.f32[2] + (v16 * a4.f32[0]);
  a4.f32[1] = v16 * a8.f32[0];
  a4.f32[2] = -v10.f32[0];
  v21 = a4;
  v23 = a8;
  v17 = 214013 * v11 + 2531011;
  *a1 = v17;
  v18 = ((HIWORD(v17) * 0.000015259) + (HIWORD(v17) * 0.000015259)) * 3.14159265;
  v19 = __sincosf_stret(v18);
  result = v13 * v19.__sinval;
  *a2 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a2, cosval), v21, v13 * v19.__cosval), v23, v13 * v19.__sinval);
  return result;
}

__n128 __SetupIntegration(uint64_t a1, _OWORD *a2, float32x4_t *a3, int32x4_t *a4, __n128 *a5)
{
  if (*(a1 + 1056) && C3DParticleSystemGetAffectedByGravity(*(a1 + 1040)))
  {
    DWORD2(v16) = 0;
    *&v16 = 0;
    C3DPhysicsWorldGetWorldGravity(*(a1 + 1056), &v16);
    v10 = v16;
    HIDWORD(v10) = 0;
    *a2 = v10;
  }

  v11 = (a1 + 1028);
  v12 = vld1q_dup_f32(v11);
  *a3 = v12;
  *v13.i32 = -C3DParticleSystemGetDampingFactor(*(a1 + 1040));
  v14 = vdupq_lane_s32(v13, 0);
  v14.i32[3] = 0;
  *a4 = v14;
  result = C3DParticleSystemGetAcceleration(*(a1 + 1040));
  result.n128_u32[3] = 0;
  *a5 = result;
  return result;
}

__n128 C3DParticleEulerIntegration_C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  __SetupIntegration(a1, &v25, &v24, &v23, &v22);
  if (a2 >= a3)
  {
    v15.i64[0] = 0x80000000800000;
    v15.i64[1] = 0x80000000800000;
    v16 = vnegq_f32(v15);
  }

  else
  {
    v6 = *(a1 + 1028);
    v7 = v24;
    v8 = vmulq_f32(v24, v25);
    v9 = v22;
    v10 = v23;
    v11 = (*(a1 + 304) + 4 * a2);
    v12 = (*(a1 + 264) + 16 * a2);
    v13 = (*(a1 + 256) + 16 * a2);
    v14 = a3 - a2;
    v15.i64[0] = 0x80000000800000;
    v15.i64[1] = 0x80000000800000;
    v16 = vnegq_f32(v15);
    do
    {
      v17 = *v11++;
      v18 = vmlaq_f32(*v13, v7, *v12);
      *v13++ = v18;
      v16 = vminq_f32(v16, v18);
      v15 = vmaxq_f32(v15, v18);
      *v12 = vaddq_f32(*v12, vmlaq_n_f32(v8, vmlaq_f32(v9, *v12, v10), v6 * v17));
      ++v12;
      --v14;
    }

    while (v14);
  }

  v19.i64[0] = 0x3F0000003F000000;
  v19.i64[1] = 0x3F0000003F000000;
  result = vmulq_f32(vaddq_f32(v16, v15), v19);
  v20 = vmulq_f32(vsubq_f32(v15, v16), v19);
  result.n128_u32[3] = 1.0;
  v20.i32[3] = 0;
  *(a1 + 1088) = result;
  *(a1 + 1104) = v20;
  return result;
}

__n128 C3DParticleEulerIntegration_NoMassVariation(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  __SetupIntegration(a1, &v25, &v24, &v23, &v22);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  *v8.i32 = C3DParticleSystemGetParticleMass(*(a1 + 1040));
  if (a2 >= a3)
  {
    v16.i64[0] = 0x80000000800000;
    v16.i64[1] = 0x80000000800000;
    v17 = vnegq_f32(v16);
  }

  else
  {
    v9 = v24;
    v10 = vdivq_f32(v24, vdupq_lane_s32(v8, 0));
    v11 = v23;
    v12 = vmlaq_n_f32(v22, v25, *v8.i32);
    v13 = (v7 + 16 * a2);
    v14 = (v6 + 16 * a2);
    v15 = a3 - a2;
    v16.i64[0] = 0x80000000800000;
    v16.i64[1] = 0x80000000800000;
    v17 = vnegq_f32(v16);
    do
    {
      v18 = vmlaq_f32(*v14, v9, *v13);
      v17 = vminq_f32(v17, v18);
      v16 = vmaxq_f32(v16, v18);
      *v13 = vmlaq_f32(*v13, v10, vmlaq_f32(v12, *v13, v11));
      ++v13;
      *v14++ = v18;
      --v15;
    }

    while (v15);
  }

  v19.i64[0] = 0x3F0000003F000000;
  v19.i64[1] = 0x3F0000003F000000;
  v20 = vmulq_f32(vaddq_f32(v17, v16), v19);
  result = vmulq_f32(vsubq_f32(v16, v17), v19);
  v20.i32[3] = 1.0;
  result.n128_u32[3] = 0;
  *(a1 + 1088) = v20;
  *(a1 + 1104) = result;
  return result;
}

__n128 C3DParticleEulerIntegration_NoMassVariationNoDrag(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  __SetupIntegration(a1, &v30, &v29, &v28, &v27);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  *v8.i32 = C3DParticleSystemGetParticleMass(*(a1 + 1040));
  v9 = v29;
  v10 = vmlaq_n_f32(v27, v30, *v8.i32);
  v11 = vmulq_f32(v10, v10);
  if (sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)) > 0.0)
  {
    if (a2 < a3)
    {
      v12 = vmulq_f32(vdivq_f32(v29, vdupq_lane_s32(v8, 0)), v10);
      v13 = (v7 + 16 * a2);
      v14 = (v6 + 16 * a2);
      v15 = a3 - a2;
      v16.i64[0] = 0x80000000800000;
      v16.i64[1] = 0x80000000800000;
      v17 = vnegq_f32(v16);
      do
      {
        v18 = vmlaq_f32(*v14, v9, *v13);
        v17 = vminq_f32(v17, v18);
        v16 = vmaxq_f32(v16, v18);
        *v13 = vaddq_f32(v12, *v13);
        ++v13;
        *v14++ = v18;
        --v15;
      }

      while (v15);
      goto LABEL_11;
    }

LABEL_10:
    v16.i64[0] = 0x80000000800000;
    v16.i64[1] = 0x80000000800000;
    v17 = vnegq_f32(v16);
    goto LABEL_11;
  }

  if (a2 >= a3)
  {
    goto LABEL_10;
  }

  v19 = (v6 + 16 * a2);
  v20 = (v7 + 16 * a2);
  v16.i64[0] = 0x80000000800000;
  v16.i64[1] = 0x80000000800000;
  v17 = vnegq_f32(v16);
  v21 = a3 - a2;
  do
  {
    v22 = *v20++;
    v23 = vmlaq_f32(*v19, v9, v22);
    v17 = vminq_f32(v17, v23);
    v16 = vmaxq_f32(v16, v23);
    *v19++ = v23;
    --v21;
  }

  while (v21);
LABEL_11:
  v24.i64[0] = 0x3F0000003F000000;
  v24.i64[1] = 0x3F0000003F000000;
  v25 = vmulq_f32(vaddq_f32(v17, v16), v24);
  result = vmulq_f32(vsubq_f32(v16, v17), v24);
  v25.i32[3] = 1.0;
  result.n128_u32[3] = 0;
  *(a1 + 1088) = v25;
  *(a1 + 1104) = result;
  return result;
}

double __SpawnSubSystem(uint64_t a1, const void *a2, __n128 a3, float32x4_t a4)
{
  v6 = vceqzq_f32(a4);
  v6.i32[3] = v6.i32[2];
  if ((vminvq_u32(v6) & 0x80000000) != 0)
  {
    v9 = xmmword_21C27F600;
  }

  else
  {
    v7 = vmulq_f32(a4, a4);
    *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
    *v7.f32 = vrsqrte_f32(v8);
    *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
    v9 = vmulq_n_f32(a4, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]);
  }

  v15 = v9;
  DWORD2(v19) = 0;
  *&v19 = 0;
  DWORD2(v18) = 0;
  *&v18 = 0;
  C3DVectorGenerateOrthogonalBasis(&v19, &v18, v9);
  v10 = v18;
  v11 = v19;
  HIDWORD(v10) = 0;
  HIDWORD(v11) = 0;
  v12 = v15;
  HIDWORD(v12) = 0;
  v17[0] = v10;
  v17[1] = v11;
  v13 = a3;
  HIDWORD(v13) = 1.0;
  v17[2] = v12;
  v17[3] = v13;
  return C3DParticleManagerAddSystem(a1, 0, a2, v17);
}

void C3DParticlePlaneCollider_C(uint64_t a1, int a2, unsigned int a3, float32x4_t *a4)
{
  LODWORD(v6) = a2;
  v49 = *(a1 + 1028);
  Geometry = C3DNodeGetGeometry(a4);
  Width = C3DParametricGeometryGetWidth(Geometry);
  Height = C3DParametricGeometryGetHeight(Geometry);
  WorldMatrix = C3DNodeGetWorldMatrix(a4);
  v12 = WorldMatrix[3];
  v14 = *WorldMatrix;
  v13 = WorldMatrix[1];
  v56.columns[2] = WorldMatrix[2];
  v56.columns[3] = v12;
  v56.columns[0] = v14;
  v56.columns[1] = v13;
  if (*(a1 + 1136) == 1)
  {
    memset(&v55, 0, sizeof(v55));
    C3DMatrix4x4Invert(*(a1 + 1144), &v55);
    C3DMatrix4x4Mult(&v56, &v55, &v56);
  }

  v55 = v56;
  *v15.i64 = C3DVector3MultMatrix4x4(&v55, 0);
  v53 = v15;
  v55 = v56;
  *v16.i64 = C3DVector3Rotate(&v55, xmmword_21C27F600);
  v51 = v16;
  v55 = v56;
  *v17.i64 = C3DVector3Rotate(&v55, xmmword_21C27F910);
  v50 = v17;
  v55 = v56;
  *v18.i64 = C3DVector3Rotate(&v55, xmmword_21C27F8C0);
  v20 = v51;
  v19 = v53;
  v21 = a3 >= v6;
  v22 = a3 - v6;
  v23 = v49;
  if (v22 != 0 && v21)
  {
    v24 = v18;
    v25 = Width * 0.5;
    v26 = vmulq_f32(v53, v51);
    v27 = v26.f32[2] + vaddv_f32(*v26.f32);
    v20.f32[3] = -v27;
    v19.i32[3] = 0;
    v28 = Height * 0.5;
    v29 = *(a1 + 256);
    v30 = *(a1 + 264);
    v6 = v6;
    do
    {
      v31 = vmulq_n_f32(*(v30 + 16 * v6), v23);
      v32 = vmulq_f32(v31, v31);
      v33 = vaddv_f32(*v32.f32);
      if ((v32.f32[2] + v33) > 0.0)
      {
        v34 = sqrtf(v32.f32[2] + v33);
        v35 = vmulq_n_f32(v31, 1.0 / v34);
        v36 = vmulq_f32(v20, v35);
        v37 = v36.f32[2] + vaddv_f32(*v36.f32);
        if (v37 != 0.0)
        {
          v38 = vsubq_f32(*(v29 + 16 * v6), v31);
          v39 = vmulq_f32(v20, v38);
          v40 = -((v39.f32[2] + vaddv_f32(*v39.f32)) - v27) / v37;
          v41 = v40 >= -0.00000011921 && v40 <= v34;
          if (v41)
          {
            v42 = vmlaq_n_f32(v38, v35, v40);
            v43 = vsubq_f32(v42, v19);
            v45 = vmulq_f32(v50, v43);
            v41 = fabsf(v45.f32[2] + vaddv_f32(*v45.f32)) <= v25;
            v44 = vmulq_f32(v24, v43);
            v45.f32[0] = vaddv_f32(*v44.f32);
            v46 = fabsf(v44.f32[2] + v45.f32[0]);
            if (v41 && v46 <= v28)
            {
              v52 = v20;
              v54 = v19;
              v48 = v24;
              __HandleCollision(a1, v6, v42, v20, *v45.i64);
              v24 = v48;
              v23 = v49;
              v20 = v52;
              v19 = v54;
            }
          }
        }
      }

      ++v6;
      --v22;
    }

    while (v22);
  }
}

void __HandleCollision(uint64_t a1, unsigned int a2, float32x4_t a3, float32x4_t a4, double a5)
{
  if (*(a1 + 1168) == 1)
  {
    *(*(a1 + 272) + 4 * a2) = 0;
  }

  else
  {
    v7 = *(a1 + 1032);
    v9 = *(a1 + 336);
    v8 = *(a1 + 344);
    if (v8)
    {
      v10 = (v8 + 4 * a2);
    }

    else
    {
      v10 = (a1 + 1160);
    }

    LODWORD(a5) = *v10;
    v11 = (v9 + 4 * a2);
    if (!v9)
    {
      v11 = (a1 + 1164);
    }

    v12 = (*(a1 + 264) + 16 * a2);
    v13 = vmulq_n_f32(*v12, *(a1 + 1028));
    v14 = vmulq_f32(v13, a4);
    v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
    *&a5 = *&a5 * v14.f32[0];
    v15 = vmlaq_n_f32(vmulq_f32(vnegq_f32(vdupq_lane_s32(*&a5, 0)), a4), vmlsq_lane_f32(v13, a4, *v14.f32, 0), *v11);
    v16 = *(a1 + 256) + 16 * a2;
    v17 = vmlaq_f32(vaddq_f32(v15, a3), vdupq_n_s32(0x3A83126Fu), a4);
    v17.i32[3] = *(v16 + 12);
    *v16 = v17;
    v18 = vmulq_n_f32(v15, v7);
    v18.i32[3] = v12->i32[3];
    *v12 = v18;
  }

  v19 = *(a1 + 1176);
  if (v19)
  {
    v25 = a3;
    v26 = a4;
    __SpawnSubSystem(*(a1 + 1064), v19, a3, a4);
    a3 = v25;
    a4 = v26;
  }

  v20 = *(a1 + 1184);
  if (v20)
  {
    *v20 = a2;
    *(a1 + 1184) = v20 + 1;
    v21 = *(a1 + 400);
    if (v21)
    {
      v22 = v21 + 12 * a2;
      *v22 = a3.i64[0];
      *(v22 + 8) = a3.i32[2];
    }

    v23 = *(a1 + 408);
    if (v23)
    {
      v24 = v23 + 12 * a2;
      *v24 = a4.i64[0];
      *(v24 + 8) = a4.i32[2];
    }
  }
}

void C3DParticleFloorCollider_C(uint64_t a1, int a2, unsigned int a3, float32x4_t *a4)
{
  LODWORD(v6) = a2;
  v32 = *(a1 + 1028);
  v34.n128_u32[2] = 0;
  v34.n128_u64[0] = 0;
  C3DSceneGetUpAxis(*(a1 + 1048), &v34);
  v33 = 0uLL;
  C3DComputeMirrorPlane(a4, &v34, &v33);
  if (*(a1 + 1136) == 1)
  {
    v8 = *(a1 + 1144);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = vzip1q_s32(*v8, v10);
    v13 = vzip2q_s32(*v8, v10);
    v14 = vzip1q_s32(v9, v11);
    v15 = vzip2q_s32(v9, v11);
    v33 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(v12, v14), v33.f32[0]), vzip2q_s32(v12, v14), *v33.f32, 1), vzip1q_s32(v13, v15), v33, 2), vzip2q_s32(v13, v15), v33, 3);
  }

  v16 = a3 >= v6;
  v17 = a3 - v6;
  v18 = v32;
  if (v17 != 0 && v16)
  {
    v19 = *(a1 + 256);
    v20 = *(a1 + 264);
    v6 = v6;
    do
    {
      v21 = vmulq_n_f32(*(v20 + 16 * v6), v18);
      v22 = vmulq_f32(v21, v21);
      v23 = vaddv_f32(*v22.f32);
      if ((v22.f32[2] + v23) > 0.0)
      {
        v24 = sqrtf(v22.f32[2] + v23);
        v25 = vmulq_n_f32(v21, 1.0 / v24);
        v26 = vmulq_f32(v25, v33);
        v27 = v26.f32[2] + vaddv_f32(*v26.f32);
        if (v27 != 0.0)
        {
          v28 = vsubq_f32(*(v19 + 16 * v6), v21);
          v29 = vmulq_f32(v28, v33);
          v30 = -(v33.f32[3] + (v29.f32[2] + vaddv_f32(*v29.f32))) / v27;
          if (v30 >= -0.00000011921 && v30 <= v24)
          {
            __HandleCollision(a1, v6, vmlaq_n_f32(v28, v25, v30), v33, *v25.i64);
            v18 = v32;
          }
        }
      }

      ++v6;
      --v17;
    }

    while (v17);
  }
}

BOOL __rayIntersectSphere(float *a1, float32x4_t a2, float32x4_t a3, float a4, float32x4_t a5, float a6)
{
  v7 = vsubq_f32(a2, a5);
  v8 = vmulq_f32(v7, v7);
  v9 = (v8.f32[2] + vaddv_f32(*v8.f32)) - (a6 * a6);
  if (v9 <= 0.0)
  {
    return 1;
  }

  v10 = vmulq_f32(v7, a3);
  v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  if (v11 >= 0.0)
  {
    return 0;
  }

  v12 = -(v9 - (v11 * v11));
  if (v12 < 0.0)
  {
    return 0;
  }

  v15 = -v11 - sqrtf(v12);
  *a1 = v15;
  if (v15 <= 0.0)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __rayIntersectSphere_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  return *a1 < a4;
}

void C3DParticleSphereCollider_C(uint64_t a1, int a2, unsigned int a3, float32x4_t *a4)
{
  LODWORD(v6) = a2;
  v50 = *(a1 + 1028);
  Geometry = C3DNodeGetGeometry(a4);
  Radius = C3DParametricGeometryGetRadius(Geometry);
  WorldMatrix = C3DNodeGetWorldMatrix(a4);
  *(v53.i64 + 4) = 0;
  v53.i32[0] = 0;
  C3DMatrix4x4GetScale(WorldMatrix, &v53);
  v11 = vabsq_f32(v53);
  v46 = Radius * fmaxf(fmaxf(v11.f32[0], v11.f32[2]), v11.f32[1]);
  v52 = WorldMatrix[3];
  C3DNodeGetWorldPosition(a4, &v52);
  v12 = v52;
  if (*(a1 + 1136) == 1)
  {
    v13 = *(a1 + 1144);
    v54 = *v13;
    v42 = v54.columns[1];
    v43 = v54.columns[2];
    v44 = v13->columns[0];
    v48 = v52;
    v55 = __invert_f4(*v13);
    v12 = vaddq_f32(v55.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v55.columns[1], *v48.f32, 1), v55.columns[0], v48.f32[0]), v55.columns[2], v48, 2));
    v55.columns[1] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), vnegq_f32(v42)), v43, vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL));
    v55.columns[0] = vmulq_f32(v44, vextq_s8(vuzp1q_s32(v55.columns[1], v55.columns[1]), v55.columns[1], 0xCuLL));
    v14 = (v55.columns[0].f32[2] + vaddv_f32(*v55.columns[0].f32)) < 0.0;
    v15 = 1.0;
    if (v14)
    {
      v15 = -1.0;
    }

    v16 = vmulq_f32(v44, v44);
    v17 = vmulq_f32(v42, v42);
    v18 = vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8));
    v19 = vextq_s8(v16, v16, 8uLL);
    *v19.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v19.f32, *&vextq_s8(v17, v17, 8uLL)), v18));
    v20 = vmulq_f32(v43, v43);
    v19.i32[2] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
    v21 = vmulq_n_f32(v19, v15);
    v22 = v46 / fmaxf(fmaxf(v21.f32[0], v21.f32[2]), v21.f32[1]);
  }

  else
  {
    v22 = v46;
  }

  v12.f32[3] = v22;
  v23 = a3 >= v6;
  v24 = a3 - v6;
  if (v24 != 0 && v23)
  {
    v25 = *(a1 + 256);
    v26 = *(a1 + 264);
    v27 = v22;
    v6 = v6;
    v49 = v12;
    do
    {
      v28 = vmulq_n_f32(*(v26 + 16 * v6), v50);
      v29 = vmulq_f32(v28, v28);
      v30 = vaddv_f32(*v29.f32);
      if ((v29.f32[2] + v30) > 0.0)
      {
        v31 = sqrtf(v29.f32[2] + v30);
        v32 = vsubq_f32(*(v25 + 16 * v6), v28);
        v51 = 0.0;
        v45 = vmulq_n_f32(v28, 1.0 / v31);
        v47 = v32;
        if (__rayIntersectSphere(&v51, v32, v45, v31, v12, v27))
        {
          v33 = vmlaq_n_f32(v47, v45, v51);
          v34 = vsubq_f32(v33, v49);
          v35 = vmulq_f32(v34, v34);
          v35.f32[0] = v35.f32[2] + vaddv_f32(*v35.f32);
          v36 = vdupq_lane_s32(*v35.f32, 0);
          v37 = vrsqrteq_f32(v36);
          v38 = vmulq_f32(v37, vrsqrtsq_f32(v36, vmulq_f32(v37, v37)));
          v39 = vmulq_f32(vmulq_f32(v38, vrsqrtsq_f32(v36, vmulq_f32(v38, v38))), v34);
          v40 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v35.f32[0] != 0.0)), 0x1FuLL));
          v40.i32[3] = 0;
          v41 = vbslq_s8(vcltzq_s32(v40), v39, v34);
          v41.i32[3] = 0;
          __HandleCollision(a1, v6, v33, v41, *v39.i64);
        }

        v12 = v49;
      }

      ++v6;
      --v24;
    }

    while (v24);
  }
}

BOOL __triangleContainsPointBarycentric(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a3, a1);
  v6 = vsubq_f32(a4, a1);
  v7 = vmulq_f32(v4, v4);
  v8 = vmulq_f32(v4, v5);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vmulq_f32(v4, v6);
  v10 = vmulq_f32(v5, v5);
  v11 = vmulq_f32(v5, v6);
  *v7.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v10.i8, *v7.i8), vzip2_s32(*v10.i8, *v7.i8)));
  *v9.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v11.i8), vzip2_s32(*v9.i8, *v11.i8)));
  v12 = vmul_n_f32(vmla_f32(vrev64_s32(vmul_n_f32(*v9.i8, -v8.f32[0])), *v9.i8, *v7.i8), 1.0 / ((*&v7.i32[1] * *v7.i32) - (v8.f32[0] * v8.f32[0])));
  *v5.f32 = vcgez_f32(v12);
  return (v5.i32[0] & v5.i32[1] & 1) != 0 && vaddv_f32(v12) < 1.0;
}

void __ClassifyParticlesForBoundingBox(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, float32x4_t *a5)
{
  v26 = a5[1];
  v27 = *a5;
  v9 = *(a1 + 1028);
  ParticleVelocity = C3DParticleSystemGetParticleVelocity(*(a1 + 1040));
  ParticleVelocityVariation = C3DParticleSystemGetParticleVelocityVariation(*(a1 + 1040));
  if (a2 < a3)
  {
    v12 = vaddq_f32(v27, v26);
    v13 = (v9 * ParticleVelocity);
    *&v13 = v13 + ParticleVelocityVariation * 0.5;
    v14 = *v12.i32 + *&v13;
    v15 = vdupq_laneq_s32(v12, 2);
    v16 = *&v12.i32[1] + *&v13;
    v17 = vdupq_lane_s32(*&v13, 0);
    v19 = vsubq_f32(vsubq_f32(v27, v26), v17);
    v18 = *(a1 + 256) + 16 * a2;
    v19.i32[3] = vaddq_f32(v15, v17).i32[3];
    v20 = (a4 + a2);
    v21 = a3 - a2;
    do
    {
      v22 = *v18;
      if (COERCE_FLOAT(*v18) <= v14 && COERCE_FLOAT(HIDWORD(*v18)) <= v16)
      {
        v22.i32[3] = *(v18 + 8);
        v25 = vmovn_s32(vcgtq_f32(v19, v22));
        v25.i16[3] = vmovn_s32(vcgtq_f32(v22, v19)).i16[3];
        v24 = vmaxv_u16(v25) & 1;
      }

      else
      {
        v24 = 1;
      }

      *v20++ = v24;
      v18 += 16;
      --v21;
    }

    while (v21);
  }
}

void __CollideWithFace(uint64_t a1, unsigned int a2, unsigned int a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, uint64_t a7, uint64_t a8)
{
  v10 = vsubq_f32(a6, a4);
  v11 = vsubq_f32(a5, a4);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v10)), v11, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v14 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v13 = vmulq_f32(v14, a4);
  v14.f32[3] = -(v13.f32[2] + vaddv_f32(*v13.f32));
  v15 = vmulq_f32(v12, v12);
  v15.f32[0] = sqrtf(v15.f32[1] + (v15.f32[2] + v15.f32[0]));
  if (v15.f32[0] > 0.0)
  {
    v14 = vdivq_f32(v14, vdupq_lane_s32(*v15.f32, 0));
  }

  v16 = a3 - a2;
  if (a3 > a2)
  {
    v17 = *(a1 + 256);
    v18 = *(a1 + 264);
    v19 = v14.f32[3];
    v20 = a2;
    v21 = *(a1 + 1028);
    v34 = v21;
    v35 = v14;
    do
    {
      if (!*(a8 + v20))
      {
        v22 = vmulq_n_f32(*(v18 + 16 * v20), v21);
        v23 = vmulq_f32(v14, v22);
        v24 = v23.f32[2] + vaddv_f32(*v23.f32);
        if (v24 != 0.0)
        {
          v25 = vsubq_f32(*(v17 + 16 * v20), v22);
          v26 = vmulq_f32(v14, v25);
          v27 = -(v19 + (v26.f32[2] + vaddv_f32(*v26.f32))) / v24;
          if (v27 >= 0.0 && v27 <= 1.0)
          {
            v36 = vmlaq_n_f32(v25, v22, v27);
            v29 = __triangleContainsPointBarycentric(a4, a5, a6, v36);
            v14 = v35;
            v21 = v34;
            if (v29)
            {
              __HandleCollision(a1, v20, v36, v35, v30);
              v21 = v34;
              v14 = v35;
            }
          }
        }
      }

      ++v20;
      --v16;
    }

    while (v16);
  }
}

void C3DParticleMeshCollider_C(uint64_t a1, unsigned int a2, unsigned int a3, float32x4_t *a4)
{
  v65 = *MEMORY[0x277D85DE8];
  Geometry = C3DNodeGetGeometry(a4);
  if (Geometry)
  {
    Mesh = C3DGeometryGetMesh(Geometry);
    if (Mesh)
    {
      v9 = Mesh;
      PositionSource = C3DMeshGetPositionSource(Mesh, 1);
      if (PositionSource)
      {
        v11 = PositionSource;
        v55 = 0u;
        v56 = 0u;
        C3DNodeGetLocalBoundingBox(a4, &v55);
        if (*(a1 + 1136) == 1 && *(a1 + 1144))
        {
          WorldMatrix = C3DNodeGetWorldMatrix(a4);
          v48 = WorldMatrix[1];
          v50 = *WorldMatrix;
          v44 = WorldMatrix[3];
          v46 = WorldMatrix[2];
          v66 = __invert_f4(**(a1 + 1144));
          v13 = 0;
          v57 = v50;
          v58 = v48;
          v59 = v46;
          v60 = v44;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          do
          {
            *(&v61 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66.columns[0], COERCE_FLOAT(*(&v57 + v13))), v66.columns[1], *&v57.f32[v13 / 4], 1), v66.columns[2], *(&v57 + v13), 2), v66.columns[3], *(&v57 + v13), 3);
            v13 += 16;
          }

          while (v13 != 64);
          v14 = v61;
          v15 = v62;
          v16 = v63;
          v17 = v64;
        }

        else
        {
          v18 = C3DNodeGetWorldMatrix(a4);
          v14 = *v18;
          v15 = v18[1];
          v16 = v18[2];
          v17 = v18[3];
        }

        v45 = v17;
        v47 = v16;
        v19 = vaddq_f32(v17, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15, *v55.f32, 1), v14, v55.f32[0]), v16, v55, 2));
        v19.i32[3] = 1.0;
        v20 = v56;
        v20.i32[1] = v56.i32[0];
        v20.i32[2] = v56.i32[0];
        v49 = v15;
        v51 = v14;
        v54[0] = v19;
        v54[1] = vaddq_f32(vabsq_f32(vmulq_f32(v16, vzip2q_s32(vtrn1q_s32(v56, v56), v56))), vaddq_f32(vabsq_f32(vmulq_f32(v14, v20)), vabsq_f32(vmulq_f32(v15, vuzp2q_s32(vdupq_lane_s32(*v56.i8, 1), v56)))));
        v21 = *(a1 + 384);
        __ClassifyParticlesForBoundingBox(a1, a2, a3, v21, v54);
        v41 = *(a1 + 1088);
        v38 = *(a1 + 1104);
        ElementsCount = C3DMeshGetElementsCount(v9);
        if (ElementsCount >= 1)
        {
          v23 = ElementsCount;
          v24 = 0;
          v25 = vaddq_f32(v41, v38);
          v42 = vsubq_f32(v41, v38);
          v43 = v25;
          v39 = v9;
          do
          {
            ElementAtIndex = C3DMeshGetElementAtIndex(v9, v24, 1);
            Type = C3DMeshElementGetType(ElementAtIndex);
            if (C3DMeshElementTypeDefinesSurface(Type))
            {
              C3DMeshElementGetDoubleSided(ElementAtIndex);
              if (!Type)
              {
                PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
                v59.i64[0] = 0;
                v57 = 0u;
                v58 = 0u;
                C3DMeshElementGetFastIndexLookupInfo(ElementAtIndex, &v57);
                if (PrimitiveCount >= 1)
                {
                  for (i = 0; i != PrimitiveCount; ++i)
                  {
                    for (j = 0; j != 3; ++j)
                    {
                      v52[0] = v57;
                      v52[1] = v58;
                      v53 = v59.i64[0];
                      IndexUsingFastIndexLookupInfo = C3DMeshElementGetIndexUsingFastIndexLookupInfo(v52, i, j, 0);
                      *v32.i64 = C3DMeshSourceGetValueAtIndexAsVector3(v11, IndexUsingFastIndexLookupInfo);
                      v33 = vaddq_f32(v45, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v49, *v32.f32, 1), v51, v32.f32[0]), v47, v32, 2));
                      v33.i32[3] = 0;
                      *(&v61 + j) = v33;
                    }

                    v34 = vminq_f32(vminq_f32(v61, v62), v63);
                    v35 = vmaxq_f32(vmaxq_f32(v61, v62), v63);
                    v36 = v42;
                    v35.i32[3] = v43.i32[0];
                    v36.i32[3] = v34.i32[0];
                    if (vminv_u16(vmovn_s32(vmvnq_s8(vcgtq_f32(v36, v35)))))
                    {
                      v37 = vmovn_s32(vmvnq_s8(vcgtq_f32(v34, v43)));
                      if (v37.i8[2] & 1) != 0 && (v37.i8[4])
                      {
                        __CollideWithFace(a1, a2, a3, v61, v62, v63, 0, v21);
                      }
                    }
                  }
                }

                v9 = v39;
              }
            }

            ++v24;
          }

          while (v24 != v23);
        }
      }
    }
  }
}

void C3DParticleGenericCollider(uint64_t a1, unsigned int a2, unsigned int a3, float32x4_t *a4)
{
  Geometry = C3DNodeGetGeometry(a4);
  if (!Geometry)
  {
    return;
  }

  v9 = Geometry;
  v10 = CFGetTypeID(Geometry);
  if (v10 == C3DFloorGetTypeID())
  {

    C3DParticleFloorCollider_C(a1, a2, a3, a4);
    return;
  }

  if (v10 != C3DParametricGeometryGetTypeID())
  {
LABEL_13:

    C3DParticleMeshCollider_C(a1, a2, a3, a4);
    return;
  }

  Type = C3DParametricGeometryGetType(v9);
  if (Type != 3)
  {
    if (!Type)
    {

      C3DParticlePlaneCollider_C(a1, a2, a3, a4);
      return;
    }

    goto LABEL_13;
  }

  C3DParticleSphereCollider_C(a1, a2, a3, a4);
}

uint64_t C3DParticleContextSetup(uint64_t a1, uint64_t a2, const void *a3, double a4, float a5)
{
  bzero(a1, 0x4C0uLL);
  memcpy(a1, a3, 0x400uLL);
  *(a1 + 1024) = *(a2 + 1104);
  *(a1 + 1028) = a5;
  *(a1 + 1032) = 1.0 / a5;
  v10 = a4;
  *(a1 + 1036) = v10;
  v11 = *(a2 + 40);
  *(a1 + 1040) = *(a2 + 48);
  *(a1 + 1072) = v11;
  v12 = *(a2 + 1152);
  *(a1 + 1104) = *(a2 + 1168);
  *(a1 + 1088) = v12;
  v13 = *(a2 + 48);
  *(a1 + 1064) = *(a2 + 56);
  *(a1 + 1048) = *(a2 + 64);
  IsLocal = C3DParticleSystemGetIsLocal(v13);
  *(a1 + 1136) = IsLocal;
  if (IsLocal)
  {
    v15 = *(a2 + 16);
    if (v15)
    {
      if (*(a2 + 24) == 1)
      {
        *(a1 + 1144) = v15 + 32;
        *(a1 + 1152) = v15 + 96;
      }
    }
  }

  if ((C3DParticleSystemGetAffectedByPhysicsFields(*(a1 + 1040)) & 1) != 0 || C3DParticleSystemGetAffectedByGravity(*(a1 + 1040)))
  {
    *(a1 + 1056) = C3DSceneGetPhysicsWorld(*(a1 + 1048), 1);
  }

  *(a1 + 1160) = C3DParticleSystemGetParticleBounce(*(a2 + 48));
  *(a1 + 1164) = C3DParticleSystemGetParticleFriction(*(a2 + 48));
  *(a1 + 1168) = C3DParticleSystemGetParticleDiesOnCollision(*(a2 + 48));
  *(a1 + 1176) = C3DParticleSystemGetSystemSpawnedOnCollision(*(a2 + 48));
  *(a1 + 1192) = C3DParticleManagerGetUpdateQueue();
  result = C3DParticleManagerGetUpdateQueue();
  *(a1 + 1200) = result;
  return result;
}

void C3DParticleGenericColliderWithBlock(void *a1, unsigned int a2, unsigned int a3, float32x4_t *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  theArray = 0;
  EventBlock = C3DParticleSystemGetEventBlock(a1[130], 2u, &theArray);
  v9 = a1[49];
  a1[148] = v9;
  C3DParticleGenericCollider(a1, a2, a3, a4);
  v10 = a1[148] - v9;
  if (v10)
  {
    v11 = v10 >> 2;
    memset(v14, 0, 256);
    C3DParticleSystemInstanceFillUserData(a1[130], a1, theArray, v14, v13, 0);
    (*(EventBlock + 16))(EventBlock, v14, v13, v9, v11);
  }
}

void C3DParticleSpawnSubSystem(void *a1, unsigned int a2, unsigned int a3)
{
  v6 = a1[32];
  v7 = a1[33];
  SystemSpawnedOnLiving = C3DParticleSystemGetSystemSpawnedOnLiving(a1[130]);
  if (SystemSpawnedOnLiving)
  {
    v9 = a3 > a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = SystemSpawnedOnLiving;
    v11 = (v6 + 16 * a2);
    v12 = a3 - a2;
    v13 = (v7 + 16 * a2);
    do
    {
      v14 = *v11++;
      v15 = v14;
      v16 = *v13++;
      __SpawnSubSystem(a1[133], v10, v15, v16);
      --v12;
    }

    while (v12);
  }
}

void C3DParticleModifier_Frame(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 368);
  v5 = *(a1 + 376);
  v7 = *(a1 + 1028);
  if (v5)
  {
    if (a2 < a3)
    {
      v8 = (v5 + 4 * a2);
      v9 = (v6 + 4 * a2);
      v10 = a3 - a2;
      do
      {
        v11 = *v8++;
        *v9 = *v9 + (v11 * v7);
        ++v9;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    ImageSequenceFrameRate = C3DParticleSystemGetImageSequenceFrameRate(*(a1 + 1040));
    if (a2 < a3)
    {
      v13 = (v6 + 4 * a2);
      v14 = a3 - a2;
      do
      {
        *v13 = *v13 + (ImageSequenceFrameRate * v7);
        ++v13;
        --v14;
      }

      while (v14);
    }
  }
}

void C3DParticleInitPositionAndVelocity(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = *(a1 + 256);
  v6 = *(a1 + 264);
  EmitterShape = C3DParticleSystemGetEmitterShape(*(a1 + 1040));
  BirthLocation = C3DParticleSystemGetBirthLocation(*(a1 + 1040));
  BirthDirection = C3DParticleSystemGetBirthDirection(*(a1 + 1040));
  ParticleAngle = C3DParticleSystemGetParticleAngle(*(a1 + 1040));
  ParticleAngleVariation = C3DParticleSystemGetParticleAngleVariation(*(a1 + 1040));
  ParticleVelocity = C3DParticleSystemGetParticleVelocity(*(a1 + 1040));
  ParticleVelocityVariation = C3DParticleSystemGetParticleVelocityVariation(*(a1 + 1040));
  ParticleAngularVelocity = C3DParticleSystemGetParticleAngularVelocity(*(a1 + 1040));
  ParticleAngularVelocityVariation = C3DParticleSystemGetParticleAngularVelocityVariation(*(a1 + 1040));
  EmittingDirection = C3DParticleSystemGetEmittingDirection(*(a1 + 1040));
  v16 = C3DParticleSystemGetSpreadingAngle(*(a1 + 1040)) / 180.0 * 3.14159265;
  v88 = v16;
  v82 = cosf(v16);
  v20 = *(a1 + 1144);
  v86 = 0u;
  if (v20)
  {
    v21 = *v20;
    v22 = v20[1];
    v24 = v20[2];
    v23 = v20[3];
    v25 = *(a1 + 1152);
    v26 = v25[1];
    v27 = vmulq_f32(v21, v21);
    *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v28 = vdupq_lane_s32(vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)), 0);
    v29 = v25[2];
    v17 = v25[3];
    v30 = vrsqrteq_f32(v28);
    v31 = vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30)));
    v32 = vmulq_f32(v22, v22);
    *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v33 = vdupq_lane_s32(vadd_f32(*v32.i8, vdup_lane_s32(*v32.i8, 1)), 0);
    v92 = vbslq_s8(vceqzq_f32(v28), *v20, vmulq_f32(*v20, vmulq_f32(v31, vrsqrtsq_f32(v28, vmulq_f32(v31, v31)))));
    v34 = vrsqrteq_f32(v33);
    v35 = vmulq_f32(v34, vrsqrtsq_f32(v33, vmulq_f32(v34, v34)));
    v36 = vmulq_f32(v22, vmulq_f32(v35, vrsqrtsq_f32(v33, vmulq_f32(v35, v35))));
    v37 = vceqzq_f32(v33);
    v38 = vmulq_f32(v24, v24);
    *v38.i8 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
    v39 = vdupq_lane_s32(vadd_f32(*v38.i8, vdup_lane_s32(*v38.i8, 1)), 0);
    v91 = vbslq_s8(v37, v22, v36);
    v40 = vrsqrteq_f32(v39);
    v41 = vmulq_f32(v40, vrsqrtsq_f32(v39, vmulq_f32(v40, v40)));
    v90 = vbslq_s8(vceqzq_f32(v39), v24, vmulq_f32(v24, vmulq_f32(v41, vrsqrtsq_f32(v39, vmulq_f32(v41, v41)))));
    v19 = vdupq_n_s32(0x38D1B717u);
    v18 = vcgtq_f32(vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vabdq_f32(v22, v26), vabdq_f32(*v20, *v25)), vabdq_f32(v24, v29)), vabdq_f32(v23, v17)), v19);
    v18.i32[0] = vmaxvq_u32(v18);
    if (v18.i32[0] < 0)
    {
      v42 = 1.0 / (a3 - a2);
      v85 = vmulq_n_f32(vsubq_f32(v21, *v25), v42);
      v86 = vmulq_n_f32(vsubq_f32(v22, v26), v42);
      v19 = vmulq_n_f32(vsubq_f32(v24, v29), v42);
      v89 = 1;
      v18 = vmulq_n_f32(vsubq_f32(v23, v17), v42);
      v83 = v18;
      v84 = v19;
      v21 = *v25;
      v22 = v25[1];
      v24 = v25[2];
      v23 = v25[3];
    }

    else
    {
      v89 = 0;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
    }
  }

  else
  {
    v89 = 0;
    v84 = 0uLL;
    v85 = 0uLL;
    v83 = 0uLL;
    v91 = 0uLL;
    v92 = 0uLL;
    v90 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v24 = 0uLL;
    v23 = 0uLL;
  }

  v96 = v23;
  v97 = v22;
  v106 = 0uLL;
  v43 = a3 - a2;
  if (a3 > a2)
  {
    *v17.i64 = ParticleAngularVelocityVariation / 180.0 * 3.14159265;
    v44 = ParticleAngle / 180.0 * 3.14159265;
    v45 = ParticleAngleVariation / 180.0 * 3.14159265;
    v46 = ParticleAngularVelocity / 180.0 * 3.14159265;
    v47 = *v17.i64;
    v48 = EmittingDirection;
    v48.n128_u32[3] = 0;
    v95 = v48;
    v49 = ~a2 + a3;
    if (v49 <= 1)
    {
      v49 = 1;
    }

    v19.i32[0] = *(a1 + 1028);
    v50 = (a1 + 1120);
    v51 = (v7 + 16 * a2);
    v52 = (v6 + 16 * a2);
    v53 = vdupq_n_s32(0x37800080u);
    __asm { FMOV            V1.4S, #1.0 }

    v80 = _Q1;
    v81 = v53;
    v59 = v19.f32[0] / v49;
    while (1)
    {
      if (EmitterShape)
      {
        v98 = v19;
        v100 = v24;
        v102 = v21;
        v105.i32[2] = 0;
        v105.i64[0] = 0;
        v104.i32[2] = 0;
        v104.i64[0] = 0;
        if (BirthDirection == 1)
        {
          C3DGeometryGeneratePoints(EmitterShape, 1, v50, &v105, &v104, BirthLocation);
          v60 = v104;
          v60.i32[3] = 0;
          v106 = v60;
        }

        else
        {
          C3DGeometryGeneratePoints(EmitterShape, 1, v50, &v105, 0, BirthLocation);
        }

        v61 = v105;
        v61.i32[3] = 1.0;
        v24 = v100;
        v21 = v102;
        v19 = v98;
      }

      else
      {
        v60 = v95;
        v106 = v95;
        v61 = xmmword_21C27F610;
      }

      if (BirthDirection != 2)
      {
        break;
      }

      v72 = 214013 * *v50 + 2531011;
      v73.i32[0] = v72;
      v73.i32[1] = 214013 * v72 + 2531011;
      v73.i64[1] = (214013 * v73.i32[1] + 2531011);
      v74.i64[0] = 0xBF000000BF000000;
      v74.i64[1] = 0xBF000000BF000000;
      v75 = vaddq_f32(vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v73, 0x10uLL)), v81), v74);
      v76 = vmulq_f32(v75, v75);
      *v76.i8 = vadd_f32(*v76.i8, *&vextq_s8(v76, v76, 8uLL));
      v77 = vdupq_lane_s32(vadd_f32(*v76.i8, vdup_lane_s32(*v76.i8, 1)), 0);
      *v50 = 214013 * (214013 * v72 + 2531011) + 2531011;
      v78 = vrsqrteq_f32(v77);
      v79 = vmulq_f32(v78, vrsqrtsq_f32(v77, vmulq_f32(v78, v78)));
      v17 = v80;
      _Q1 = vbslq_s8(vceqzq_f32(v77), v80, vmulq_f32(v79, vrsqrtsq_f32(v77, vmulq_f32(v79, v79))));
      v106 = vmulq_f32(v75, _Q1);
      if (v20)
      {
LABEL_23:
        if (v89)
        {
          v21 = vaddq_f32(v85, v21);
          v62 = vaddq_f32(v86, v97);
          v24 = vaddq_f32(v84, v24);
          v63 = vaddq_f32(v83, v96);
        }

        else
        {
          v63 = v96;
          v62 = v97;
        }

        v96 = v63;
        v97 = v62;
        v64 = vaddq_f32(v63, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v62, *v61.f32, 1), v21, v61.f32[0]), v24, v61, 2));
        v64.i32[3] = v61.i32[3];
        _Q1 = v106;
        v17 = v90;
        v65 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v91, *v106.f32, 1), v92, v106.f32[0]), v90, v106, 2);
        v65.i32[3] = v106.i32[3];
        v106 = v65;
        v61 = v64;
      }

LABEL_27:
      v66 = v44;
      if (v45 != 0.0)
      {
        v67 = 214013 * *v50 + 2531011;
        *v50 = v67;
        v66 = v44 + (((HIWORD(v67) * 0.000015259) + -0.5) * v45);
      }

      _Q1.f32[0] = ParticleVelocity;
      if (ParticleVelocityVariation != 0.0)
      {
        v68 = 214013 * *v50 + 2531011;
        *v50 = v68;
        _Q1.f32[0] = ParticleVelocity + (((HIWORD(v68) * 0.000015259) + -0.5) * ParticleVelocityVariation);
      }

      v53 = v106;
      v17.f32[0] = v46;
      if (v47 != 0.0)
      {
        v69 = 214013 * *v50 + 2531011;
        *v50 = v69;
        v18.i32[0] = 931135616;
        v17.f32[0] = v46 + (((HIWORD(v69) * 0.000015259) + -0.5) * v47);
      }

      v61.f32[3] = v66;
      v70 = vmulq_n_f32(v53, _Q1.f32[0]);
      v70.i32[3] = v17.i32[0];
      v106 = v70;
      v71 = vmlaq_n_f32(v61, v70, v19.f32[0]);
      v19.f32[0] = v19.f32[0] - v59;
      *v51++ = v71;
      *v52++ = v70;
      if (!--v43)
      {
        return;
      }
    }

    if (BirthDirection != 1)
    {
      if (BirthDirection)
      {
        goto LABEL_22;
      }

      v60 = v95;
      v106 = v95;
    }

    if (v88 > 0.0)
    {
      v60.f32[0] = v82;
      v101 = v24;
      v103 = v21;
      v99 = v19;
      v87 = v61;
      __spreadingVariationf(v50, &v106, 1, v60, _Q1, *v53.i64, v17, v18);
      v61 = v87;
      v19 = v99;
      v24 = v101;
      v21 = v103;
    }

LABEL_22:
    if (v20)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }
}

float C3DParticleInitLife(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 272);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitLife_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  result = C3DParticleSystemGetParticleLifeSpan(*(a1 + 1040));
  v16 = ~a2 + a3;
  if (v16 <= 1)
  {
    v16 = 1;
  }

  if (a2 < a3)
  {
    v17 = *(a1 + 1028) / v16;
    v18 = (v6 + 4 * a2);
    v19 = a3 - a2;
    do
    {
      *v18++ = result;
      result = result - v17;
      --v19;
    }

    while (v19);
  }

  return result;
}

void C3DParticleInitLifeWithVariation(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 272);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitLife_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a1 + 280);
  if (!v15)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitLifeWithVariation_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  ParticleLifeSpan = C3DParticleSystemGetParticleLifeSpan(*(a1 + 1040));
  ParticleLifeSpanVariation = C3DParticleSystemGetParticleLifeSpanVariation(*(a1 + 1040));
  v26 = ~a2 + a3;
  if (v26 <= 1)
  {
    v26 = 1;
  }

  if (a2 < a3)
  {
    v27 = *(a1 + 1028);
    v28 = v27 / v26;
    v29 = ParticleLifeSpan - v27;
    v30 = (v6 + 4 * a2);
    v31 = (v15 + 4 * a2);
    v32 = a3 - a2;
    do
    {
      v33 = v29;
      if (ParticleLifeSpanVariation != 0.0)
      {
        v34 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v34;
        v33 = v29 + (((HIWORD(v34) * 0.000015259) + -0.5) * ParticleLifeSpanVariation);
      }

      *v30++ = v33;
      *v31++ = 1.0 / v33;
      v29 = v28 + v29;
      --v32;
    }

    while (v32);
  }
}

void C3DParticleInitBirthTime(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 288);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitBirthTime_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = ~a2 + a3;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  if (a2 < a3)
  {
    v16 = *(a1 + 1028);
    v17 = v16 / v15;
    v18 = *(a1 + 1036) - v16;
    v19 = (v6 + 4 * a2);
    v20 = a3 - a2;
    do
    {
      *v19++ = v18;
      v18 = v17 + v18;
      --v20;
    }

    while (v20);
  }
}

void C3DParticleInitMass(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 304);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitMass_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ParticleMass = C3DParticleSystemGetParticleMass(*(a1 + 1040));
  ParticleMassVariation = C3DParticleSystemGetParticleMassVariation(*(a1 + 1040));
  if (a2 < a3)
  {
    v17 = (v6 + 4 * a2);
    v18 = a3 - a2;
    do
    {
      v19 = ParticleMass;
      if (ParticleMassVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v20;
        v19 = ParticleMass + (((HIWORD(v20) * 0.000015259) + -0.5) * ParticleMassVariation);
      }

      if (v19 == 0.0)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 1.0 / v19;
      }

      *v17++ = v21;
      --v18;
    }

    while (v18);
  }
}

void C3DParticleInitSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 312);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitSize_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ParticleSize = C3DParticleSystemGetParticleSize(*(a1 + 1040));
  ParticleSizeVariation = C3DParticleSystemGetParticleSizeVariation(*(a1 + 1040));
  if (a2 < a3)
  {
    v17 = (v6 + 4 * a2);
    v18 = a3 - a2;
    do
    {
      v19 = ParticleSize;
      if (ParticleSizeVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v20;
        v19 = ParticleSize + (((HIWORD(v20) * 0.000015259) + -0.5) * ParticleSizeVariation);
      }

      *v17++ = v19;
      --v18;
    }

    while (v18);
  }
}

void C3DParticleInitIntensity(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 416);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitSize_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ParticleIntensity = C3DParticleSystemGetParticleIntensity(*(a1 + 1040));
  ParticleIntensityVariation = C3DParticleSystemGetParticleIntensityVariation(*(a1 + 1040));
  if (a2 < a3)
  {
    v17 = (v6 + 4 * a2);
    v18 = a3 - a2;
    do
    {
      v19 = ParticleIntensity;
      if (ParticleIntensityVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v20;
        v19 = ParticleIntensity + (((HIWORD(v20) * 0.000015259) + -0.5) * ParticleIntensityVariation);
      }

      *v17++ = v19;
      --v18;
    }

    while (v18);
  }
}

void C3DParticleInitBounce(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 344);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitBounce_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ParticleBounce = C3DParticleSystemGetParticleBounce(*(a1 + 1040));
  ParticleBounceVariation = C3DParticleSystemGetParticleBounceVariation(*(a1 + 1040));
  if (a2 < a3)
  {
    v17 = (v6 + 4 * a2);
    v18 = a3 - a2;
    do
    {
      v19 = ParticleBounce;
      if (ParticleBounceVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v20;
        v19 = ParticleBounce + (((HIWORD(v20) * 0.000015259) + -0.5) * ParticleBounceVariation);
      }

      *v17++ = v19;
      --v18;
    }

    while (v18);
  }
}

void C3DParticleInitFriction(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 336);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitFriction_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ParticleFriction = C3DParticleSystemGetParticleFriction(*(a1 + 1040));
  ParticleFrictionVariation = C3DParticleSystemGetParticleFrictionVariation(*(a1 + 1040));
  if (a2 < a3)
  {
    v17 = (v6 + 4 * a2);
    v18 = a3 - a2;
    do
    {
      v19 = ParticleFriction;
      if (ParticleFrictionVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v20;
        v19 = ParticleFriction + (((HIWORD(v20) * 0.000015259) + -0.5) * ParticleFrictionVariation);
      }

      *v17++ = v19;
      --v18;
    }

    while (v18);
  }
}

void C3DParticleInitCharge(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 352);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitCharge_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ParticleCharge = C3DParticleSystemGetParticleCharge(*(a1 + 1040));
  ParticleChargeVariation = C3DParticleSystemGetParticleChargeVariation(*(a1 + 1040));
  if (a2 < a3)
  {
    v17 = (v6 + 4 * a2);
    v18 = a3 - a2;
    do
    {
      v19 = ParticleCharge;
      if (ParticleChargeVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v20;
        v19 = ParticleCharge + (((HIWORD(v20) * 0.000015259) + -0.5) * ParticleChargeVariation);
      }

      *v17++ = v19;
      --v18;
    }

    while (v18);
  }
}

void C3DParticleInitColor(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 320);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitColor_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ParticleColor = C3DParticleSystemGetParticleColor(*(a1 + 1040));
  v16 = C3DColor4RGB2HSB(*ParticleColor, ParticleColor[1]);
  v18 = v17;
  ParticleColorVariation = C3DParticleSystemGetParticleColorVariation(*(a1 + 1040));
  v19 = a3 >= a2;
  v20 = a3 - a2;
  if (v20 != 0 && v19)
  {
    v21 = (v6 + 16 * a2);
    do
    {
      v22 = *&v16;
      if (ParticleColorVariation.n128_f32[0] != 0.0)
      {
        v23 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v23;
        v22 = *&v16 + (((HIWORD(v23) * 0.000015259) + -0.5) * ParticleColorVariation.n128_f32[0]);
      }

      v24 = *(&v16 + 1);
      if (ParticleColorVariation.n128_f32[1] != 0.0)
      {
        v25 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v25;
        v24 = *(&v16 + 1) + (((HIWORD(v25) * 0.000015259) + -0.5) * ParticleColorVariation.n128_f32[1]);
      }

      if (v24 >= 0.0)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0.0;
      }

      if (v24 <= 1.0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 1.0;
      }

      v28 = v18;
      if (ParticleColorVariation.n128_f32[2] != 0.0)
      {
        v29 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v29;
        v28 = v18 + (((HIWORD(v29) * 0.000015259) + -0.5) * ParticleColorVariation.n128_f32[2]);
      }

      if (v28 >= 0.0)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0.0;
      }

      if (v28 <= 1.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1.0;
      }

      if (ParticleColorVariation.n128_f32[3] != 0.0)
      {
        *(a1 + 1120) = 214013 * *(a1 + 1120) + 2531011;
      }

      *v21 = C3DColor4HSB2RGB(COERCE_UNSIGNED_INT(v22 - floorf(v22)) | (LODWORD(v27) << 32), SLODWORD(v31));
      v21[1] = v32;
      v21 += 2;
      --v20;
    }

    while (v20);
  }
}

void C3DParticleInitRotationAxis(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 360);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitRotationAxis_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  OrientationDirection = C3DParticleSystemGetOrientationDirection(*(a1 + 1040));
  v17 = vmvnq_s8(vceqzq_f32(OrientationDirection));
  v17.i32[3] = v17.i32[2];
  if ((vmaxvq_u32(v17) & 0x80000000) != 0)
  {
    if (a2 < a3)
    {
      v32 = vmulq_f32(OrientationDirection, OrientationDirection);
      v32.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
      v33 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v32.f32[0] != 0.0)), 0x1FuLL));
      v33.i32[3] = 0;
      v34 = vdupq_lane_s32(*v32.f32, 0);
      v35 = vrsqrteq_f32(v34);
      v36 = vmulq_f32(v35, vrsqrtsq_f32(v34, vmulq_f32(v35, v35)));
      v37 = vbslq_s8(vcltzq_s32(v33), vmulq_f32(OrientationDirection, vmulq_f32(v36, vrsqrtsq_f32(v34, vmulq_f32(v36, v36)))), OrientationDirection);
      v38 = (v6 + 12 * a2 + 8);
      v39 = a3 - a2;
      do
      {
        *(v38 - 1) = v37.i64[0];
        *v38 = v37.i32[2];
        v38 += 3;
        --v39;
      }

      while (v39);
    }
  }

  else if (a2 < a3)
  {
    v18 = *(a1 + 1120);
    v19 = (v6 + 12 * a2 + 8);
    v20 = vdup_n_s32(0x37800080u);
    v21 = a3 - a2;
    __asm { FMOV            V4.4S, #1.0 }

    do
    {
      v16.i32[0] = 214013 * v18 + 2531011;
      v16.i32[1] = 214013 * v16.i32[0] + 2531011;
      v18 = 214013 * v16.i32[1] + 2531011;
      *v16.f32 = vadd_f32(vmul_f32(vcvt_f32_u32(vshr_n_u32(*v16.f32, 0x10uLL)), v20), 0xBF000000BF000000);
      v16.f32[2] = (HIWORD(v18) * 0.000015259) + -0.5;
      v27 = vmulq_f32(v16, v16);
      v27.f32[0] = v27.f32[2] + vaddv_f32(*v27.f32);
      v28 = vdupq_lane_s32(*v27.f32, 0);
      v29 = vrsqrteq_f32(v28);
      v30 = vmulq_f32(v29, vrsqrtsq_f32(v28, vmulq_f32(v29, v29)));
      v31 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v27.f32[0] != 0.0)), 0x1FuLL));
      v31.i32[3] = 0;
      v16 = vmulq_f32(v16, vbslq_s8(vcltzq_s32(v31), vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30))), _Q4));
      *(v19 - 1) = v16.i64[0];
      *v19 = v16.i32[2];
      v19 += 3;
      --v21;
    }

    while (v21);
    *(a1 + 1120) = v18;
  }
}

void C3DParticleInitFrame(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 368);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitFrame_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ImageSequenceInitialFrame = C3DParticleSystemGetImageSequenceInitialFrame(*(a1 + 1040));
  ImageSequenceInitialFrameVariation = C3DParticleSystemGetImageSequenceInitialFrameVariation(*(a1 + 1040));
  if (C3DParticleSystemGetImageSequenceFrameRate(*(a1 + 1040)) == 0.0 && C3DParticleSystemGetImageSequenceFrameRateVariation(*(a1 + 1040)) == 0.0)
  {
    if (a2 < a3)
    {
      v21 = (v6 + 4 * a2);
      v22 = a3 - a2;
      do
      {
        v23 = ImageSequenceInitialFrame;
        if (ImageSequenceInitialFrameVariation != 0.0)
        {
          v24 = 214013 * *(a1 + 1120) + 2531011;
          *(a1 + 1120) = v24;
          v23 = ImageSequenceInitialFrame + (((HIWORD(v24) * 0.000015259) + -0.5) * ImageSequenceInitialFrameVariation);
        }

        *v21++ = v23;
        --v22;
      }

      while (v22);
    }
  }

  else if (a2 < a3)
  {
    v17 = (v6 + 4 * a2);
    v18 = a3 - a2;
    do
    {
      v19 = ImageSequenceInitialFrame;
      if (ImageSequenceInitialFrameVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v20;
        v19 = ImageSequenceInitialFrame + (((HIWORD(v20) * 0.000015259) + -0.5) * ImageSequenceInitialFrameVariation);
      }

      *v17++ = v19;
      --v18;
    }

    while (v18);
  }
}

void C3DParticleInitFrameRate(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 376);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DParticleInitFrame_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  ImageSequenceFrameRate = C3DParticleSystemGetImageSequenceFrameRate(*(a1 + 1040));
  ImageSequenceFrameRateVariation = C3DParticleSystemGetImageSequenceFrameRateVariation(*(a1 + 1040));
  if (a2 < a3)
  {
    v17 = (v6 + 4 * a2);
    v18 = a3 - a2;
    do
    {
      v19 = ImageSequenceFrameRate;
      if (ImageSequenceFrameRateVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1120) + 2531011;
        *(a1 + 1120) = v20;
        v19 = ImageSequenceFrameRate + (((HIWORD(v20) * 0.000015259) + -0.5) * ImageSequenceFrameRateVariation);
      }

      *v17++ = v19;
      --v18;
    }

    while (v18);
  }
}

void C3DParticleAnimatePropertyWithLife(void *a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4)
{
  v7 = a1[35];
  v26 = a1[34];
  v8 = a4[1];
  v9 = *(a4 + 1);
  v10 = *(a4 + 2);
  v11 = *(a4 + 3);
  v12 = a1[*a4];
  if (v12)
  {
    v13 = (v12 + v11);
    v25 = *(a4 + 2);
  }

  else
  {
    ConstantDataPtrForSemantic = C3DParticleSystemGetConstantDataPtrForSemantic(a1[130], *(a4 + 4));
    if (!ConstantDataPtrForSemantic)
    {
      return;
    }

    v13 = ConstantDataPtrForSemantic;
    v25 = 0;
  }

  v15 = v13;
  if (v8 != 255)
  {
    v15 = (a1[v8] + v11);
  }

  v16 = 1.0 / C3DParticleSystemGetParticleLifeSpan(a1[130]);
  if (v9 == 1)
  {
    v17 = a3 - a2;
    if (a3 > a2)
    {
      v18 = (v26 + 4 * a2);
      v19 = (v7 + 4 * a2);
      do
      {
        if (v7)
        {
          v16 = *v19;
        }

        v20 = *v18++;
        __evaluateAnimationFloat(v13->f32, v15, a4, 1.0 - (v20 * v16));
        v15 = (v15 + v10);
        v13 = (v13 + v25);
        ++v19;
        --v17;
      }

      while (v17);
    }
  }

  else if (v9 == 3 && v10 == 16)
  {
    v21 = a3 - a2;
    if (a3 > a2)
    {
      v22 = (v26 + 4 * a2);
      v23 = (v7 + 4 * a2);
      do
      {
        if (v7)
        {
          v16 = *v23;
        }

        v24 = *v22++;
        __evaluateAnimationFloat3(v13, v15, a4, 1.0 - (v24 * v16));
        v13 = (v13 + v25);
        ++v15;
        ++v23;
        --v21;
      }

      while (v21);
    }
  }
}

float *__evaluateAnimationFloat(float *result, float *a2, uint64_t a3, float a4)
{
  v5 = *result;
  v11 = *result;
  v6 = *(a3 + 56);
  if (v6)
  {
    v7 = fminf(fmaxf(a4, 0.0), 1.0) * *(a3 + 52);
    v8 = *(v6 + 4 * v7);
    if (*(a3 + 49) == 1)
    {
      v8 = ((v7 - v7) * *(v6 + 4 * (v7 + 1))) + ((1.0 - (v7 - v7)) * v8);
    }

    v9 = v5 * v8;
    v10 = v5 + v8;
    if (!*(a3 + 50))
    {
      v10 = v9;
    }
  }

  else if (*(a3 + 50) == 1)
  {
    result = C3DAnimationEvaluate(*(a3 + 16));
    v10 = v11;
  }

  else
  {
    result = C3DAnimationEvaluate(*(a3 + 16));
    v10 = 0.0 * v5;
  }

  *a2 = v10;
  return result;
}

float32x4_t __evaluateAnimationFloat3(float32x4_t *a1, __n128 *a2, uint64_t a3, float a4)
{
  v5 = *a1;
  v6 = *(a3 + 56);
  if (v6)
  {
    v7 = fminf(fmaxf(a4, 0.0), 1.0) * *(a3 + 52);
    v8 = *(v6 + 16 * v7);
    if (*(a3 + 49) == 1)
    {
      v8 = vmlaq_n_f32(vmulq_n_f32(*(v6 + 16 * (v7 + 1)), v7 - v7), v8, 1.0 - (v7 - v7));
    }

    v9 = vaddq_f32(v5, v8);
    v10 = vmulq_f32(v5, v8);
    if (*(a3 + 50))
    {
      v11 = -1;
    }

    else
    {
      v11 = 0;
    }

    result = vbslq_s8(vdupq_n_s32(v11), v9, v10);
  }

  else if (*(a3 + 50) == 1)
  {
    v16 = *a1;
    C3DAnimationEvaluate(*(a3 + 16));
    result = v16;
  }

  else
  {
    v15.i32[2] = 0;
    v15.i64[0] = 0;
    v14 = *a1;
    C3DAnimationEvaluate(*(a3 + 16));
    v13 = v15;
    v13.i32[3] = 0;
    result = vmulq_f32(v14, v13);
  }

  result.i32[3] = a2->n128_i32[3];
  *a2 = result;
  return result;
}

void C3DParticleAnimatePropertyWithDistance(uint64_t a1, unsigned int a2, unsigned int a3, float *a4, float32x4_t a5)
{
  v9 = *(a1 + 256);
  v10 = *(a4 + 1);
  v11 = *(a4 + 2);
  v12 = *(a4 + 3);
  v13 = *(a1 + 8 * *a4);
  if (v13)
  {
    v14 = (v13 + v12);
    v15 = *(a4 + 2);
  }

  else
  {
    v27 = a5;
    v16 = *(a1 + 256);
    ConstantDataPtrForSemantic = C3DParticleSystemGetConstantDataPtrForSemantic(*(a1 + 1040), *(a4 + 4));
    a5 = v27;
    if (!ConstantDataPtrForSemantic)
    {
      return;
    }

    v9 = v16;
    v14 = ConstantDataPtrForSemantic;
    v15 = 0;
  }

  v18 = v14;
  if (v10 != 255)
  {
    v18 = (*(a1 + 8 * v10) + v12);
  }

  v19 = a3 >= a2;
  v20 = a3 - a2;
  if (v20 != 0 && v19)
  {
    v21 = a4[18];
    v22 = a4[17] * a4[17];
    v23 = (v9 + 16 * a2);
    v28 = a5;
    do
    {
      v24 = *v23++;
      v25 = vsubq_f32(v24, a5);
      v26 = vmulq_f32(v25, v25);
      __evaluateAnimationGeneric(v14, v18, a4, v21 + (v22 * (v26.f32[2] + vaddv_f32(*v26.f32))));
      a5 = v28;
      v18 = (v18 + v11);
      v14 = (v14 + v15);
      --v20;
    }

    while (v20);
  }
}

void __evaluateAnimationGeneric(float32x4_t *a1, __n128 *a2, uint64_t a3, float a4)
{
  v5 = *(a3 + 2);
  switch(v5)
  {
    case 4:
      v6 = *a1;
      v7 = *(a3 + 56);
      if (v7)
      {
        v8 = fminf(fmaxf(a4, 0.0), 1.0) * *(a3 + 52);
        v9 = *(v7 + 16 * v8);
        if (*(a3 + 49) == 1)
        {
          v9 = vmlaq_n_f32(vmulq_n_f32(*(v7 + 16 * (v8 + 1)), v8 - v8), v9, 1.0 - (v8 - v8));
        }

        v10 = vaddq_f32(v6, v9);
        v11 = vmulq_f32(v6, v9);
        if (*(a3 + 50))
        {
          v12 = -1;
        }

        else
        {
          v12 = 0;
        }

        v13 = vbslq_s8(vdupq_n_s32(v12), v10, v11);
      }

      else if (*(a3 + 50) == 1)
      {
        v17 = *a1;
        C3DAnimationEvaluate(*(a3 + 16));
        v13 = v17;
        v13.i32[3] = 0;
      }

      else
      {
        v16.i32[2] = 0;
        v16.i64[0] = 0;
        v15 = *a1;
        C3DAnimationEvaluate(*(a3 + 16));
        v14 = v16;
        v14.i32[3] = 0;
        v13 = vmulq_f32(v15, v14);
      }

      *a2 = v13;
      break;
    case 3:

      __evaluateAnimationFloat3(a1, a2, a3, a4);
      break;
    case 1:

      __evaluateAnimationFloat(a1->f32, a2, a3, a4);
      break;
  }
}

void C3DParticleAnimatePropertyWithOtherProperty(uint64_t a1, unsigned int a2, unsigned int a3, float *a4)
{
  v8 = *(a4 + 1);
  v9 = *(a4 + 2);
  v10 = *(a4 + 3);
  v11 = *(a1 + 8 * *a4);
  if (v11)
  {
    v12 = (v11 + v10);
    v13 = *(a4 + 2);
  }

  else
  {
    ConstantDataPtrForSemantic = C3DParticleSystemGetConstantDataPtrForSemantic(*(a1 + 1040), *(a4 + 4));
    if (!ConstantDataPtrForSemantic)
    {
      return;
    }

    v12 = ConstantDataPtrForSemantic;
    v13 = 0;
  }

  v15 = v12;
  if (v8 != 255)
  {
    v15 = (*(a1 + 8 * v8) + v10);
  }

  v16 = *(a4 + 14);
  v17 = *(a4 + 15);
  v18 = (*(a1 + 8 * *(a4 + 26)) + *(a4 + 16) + v17 * a2);
  v19 = a4[17];
  v20 = a4[18];
  switch(v16)
  {
    case 1:
      _CF = a3 >= a2;
      v33 = a3 - a2;
      if (v33 != 0 && _CF)
      {
        v34 = v13;
        do
        {
          __evaluateAnimationGeneric(v12, v15, a4, v20 + (v19 * v18->f32[0]));
          v15 = (v15 + v9);
          v12 = (v12 + v34);
          v18 = (v18 + v17);
          --v33;
        }

        while (v33);
      }

      break;
    case 3:
      if (v17 == 16)
      {
        _CF = a3 >= a2;
        v29 = a3 - a2;
        if (v29 != 0 && _CF)
        {
          v30 = v13;
          do
          {
            v31 = *v18++;
            v32 = vmulq_f32(v31, v31);
            __evaluateAnimationGeneric(v12, v15, a4, v20 + (v19 * sqrtf(v32.f32[2] + vaddv_f32(*v32.f32))));
            v15 = (v15 + v9);
            v12 = (v12 + v30);
            --v29;
          }

          while (v29);
        }
      }

      break;
    case 4:
      _CF = a3 >= a2;
      v22 = a3 - a2;
      if (v22 != 0 && _CF)
      {
        v23 = v13;
        __asm { FMOV            V0.4S, #0.25 }

        v35 = _Q0;
        do
        {
          v28 = vmulq_f32(*v18, v35);
          __evaluateAnimationGeneric(v12, v15, a4, v20 + (v19 * vaddv_f32(vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)))));
          v15 = (v15 + v9);
          v12 = (v12 + v23);
          v18 = (v18 + v17);
          --v22;
        }

        while (v22);
      }

      break;
  }
}

BOOL __lightNeedsClustering(uint64_t a1)
{
  if (C3DLightTypeSupportsShadow(a1))
  {
    CastsShadow = C3DLightGetCastsShadow(a1);
  }

  else
  {
    CastsShadow = 0;
  }

  if (C3DLightHasValidIES(a1) || ((C3DLightHasValidGobo(a1) | CastsShadow) & 1) != 0)
  {
    return 0;
  }

  Type = C3DLightGetType(a1);
  if (Type == 2 || Type == 3)
  {
    return C3DLightGetAttenuationEndDistance(a1) > 0.0;
  }

  if (Type != 4)
  {
    return 0;
  }

  return C3DLightGetProbeType(a1) != 0;
}

uint64_t __isLightGlobal(uint64_t a1)
{
  Type = C3DLightGetType(a1);
  if ((Type & 0xFFFFFFFB) != 0)
  {
    v3 = 1;
    if (Type > 2)
    {
      if (Type == 3)
      {
LABEL_10:
        if (C3DLightGetAttenuationEndDistance(a1) <= 0.0)
        {
LABEL_15:
          v3 = 1;
          return v3 & 1;
        }

LABEL_11:
        if (C3DLightTypeSupportsShadow(a1))
        {
          CastsShadow = C3DLightGetCastsShadow(a1);
        }

        else
        {
          CastsShadow = 0;
        }

        if (!C3DLightHasValidIES(a1))
        {
          v3 = C3DLightHasValidGobo(a1) | CastsShadow;
          return v3 & 1;
        }

        goto LABEL_15;
      }

      if (Type != 6)
      {
        goto LABEL_11;
      }
    }

    else if (Type != 1)
    {
      if (Type != 2)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t __appendGlobalLight(uint64_t a1, int a2, uint64_t a3)
{
  result = C3DNodeGetLight(a1);
  if (result)
  {
    v6 = result;
    result = __isLightGlobal(result);
    if (result)
    {
      v7 = *(a3 + 568);
      if (v7 <= 7)
      {
        *(a3 + 4 * v7 + 504) = a2;
        result = C3DLightGetProgramHashCode(v6);
        *(a3 + 4 * (*(a3 + 568))++ + 536) = result;
      }
    }
  }

  return result;
}

uint64_t C3DLightingSystemGetGlobalLightHashCodeForCaching(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __C3DLightingSystemGetGlobalLightHashCodeForCaching_block_invoke;
  v5[3] = &unk_2782FEC70;
  v5[5] = a3;
  v5[6] = a1;
  v5[4] = &v6;
  C3DLightingSystemEnumerateGlobalLights(a1, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

const __CFDictionary *C3DLightingSystemEnumerateGlobalLights(const __CFDictionary *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v6 = *(result + 142);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(result + i + 126);
      v9 = (v8 & 0xFFFFFFF) - 1;
      v10 = (v8 >> 25) & 0x78;
      *(v17 + i) = *(*(result + v10 + 136) + 8 * v9);
      *(v16 + i) = *(*(result + v10 + 200) + 8 * v9);
    }

    return (*(a3 + 16))(a3);
  }

  else if (!(*(result + 19) | *(result + 18) | *(result + 22) | *(result + 23)))
  {
    result = __ShouldForceLighting(a2);
    if (result)
    {
      DefaultLightNode = C3DEngineContextGetDefaultLightNode(a2);
      Light = C3DNodeGetLight(DefaultLightNode);
      if (C3DEngineContextGetPointOfViewIfAny(a2))
      {
        PointOfView = C3DEngineContextGetPointOfView(a2);
        C3DEngineContextSynchronizeDefaultLight(a2, PointOfView);
      }

      else
      {
        DefaultPointOfView = C3DEngineContextGetDefaultPointOfView(a2);
        v14 = C3DEngineContextGetPointOfView(a2);
        C3DEngineContextSynchronizeDefaultLight(a2, v14);
        if (!DefaultPointOfView)
        {
          C3DEngineContextSetDefaultPointOfView(a2, 0);
        }
      }

      *(v5 + 134) = C3DLightGetProgramHashCode(Light);
      return (*(a3 + 16))(a3);
    }
  }

  return result;
}

void *__C3DLightingSystemGetGlobalLightHashCodeForCaching_block_invoke(void *result)
{
  v1 = result[5];
  v2 = result[6];
  if (*v1 == v2[67] && *(v1 + 8) == v2[68] && *(v1 + 16) == v2[69] && *(v1 + 24) == v2[70])
  {
    v8 = 0;
  }

  else
  {
    v6 = v2 + 67;
    v7 = v6[1];
    *v1 = *v6;
    *(v1 + 16) = v7;
    v8 = 1;
  }

  *(*(result[4] + 8) + 24) = v8;
  return result;
}

void *_mm_realloc(void *a1, size_t a2, size_t a3, size_t alignment)
{
  memptr = 0;
  malloc_type_posix_memalign(&memptr, alignment, a3, 0xEC389359uLL);
  if (a2)
  {
    memcpy(memptr, a1, a2);
  }

  free(a1);
  return memptr;
}

void __reserveData(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= 8)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __reserveData_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else if (a2 == 4)
  {
    C3DLightProbesSystemSetProbesCount(*(a1 + 24), a3 + 1);
  }

  v14 = *(a1 + 96 + 4 * a2);
  if (v14 <= a3)
  {
    if (v14)
    {
      v15 = 2 * v14;
    }

    else
    {
      v15 = 8;
    }

    v16 = a1 + 136;
    v17 = *(a1 + 136 + 8 * a2);
    v18 = a1 + 200;
    if (v17)
    {
      *(v16 + 8 * a2) = malloc_type_realloc(v17, 8 * v15, 0x2004093837F09uLL);
      v19 = (a1 + 8 * a2);
      v19[33] = malloc_type_realloc(v19[33], 8 * v15, 0x100004000313F17uLL);
      *(v18 + 8 * a2) = malloc_type_realloc(*(v18 + 8 * a2), 8 * v15, 0x2004093837F09uLL);
      v19[41] = malloc_type_realloc(v19[41], v15, 0x100004077774924uLL);
      v19[49] = malloc_type_realloc(v19[49], v15, 0x100004077774924uLL);
      if (a2 > 4)
      {
        if (a2 == 5)
        {
          *(a1 + 480) = _mm_realloc(*(a1 + 480), 80 * *(a1 + 116), 80 * v15, 0x10uLL);
        }

        else if (a2 == 6)
        {
          *(a1 + 464) = _mm_realloc(*(a1 + 464), 16 * *(a1 + 120), 16 * v15, 0x10uLL);
        }
      }

      else if (a2 == 2)
      {
        *(a1 + 456) = _mm_realloc(*(a1 + 456), 16 * *(a1 + 104), 16 * v15, 0x10uLL);
      }

      else if (a2 == 3)
      {
        *(a1 + 472) = _mm_realloc(*(a1 + 472), 48 * *(a1 + 108), 48 * v15, 0x10uLL);
      }

      goto LABEL_30;
    }

    *(v16 + 8 * a2) = malloc_type_calloc(8uLL, v15, 0x8444F178uLL);
    v20 = (a1 + 8 * a2);
    v20[33] = malloc_type_calloc(8 * v15, 1uLL, 0x834B35FDuLL);
    *(v18 + 8 * a2) = malloc_type_calloc(8uLL, v15, 0x3F61E3C5uLL);
    v20[41] = malloc_type_calloc(1uLL, v15, 0x2B61E992uLL);
    v20[49] = malloc_type_calloc(1uLL, v15, 0xBE90F6F2uLL);
    if (a2 > 4)
    {
      if (a2 == 5)
      {
        v21 = 80 * v15;
        v22 = 0x10000404247E4FDLL;
        v23 = (a1 + 480);
        goto LABEL_29;
      }

      if (a2 == 6)
      {
        v21 = 16 * v15;
        v22 = 0x1000040451B5BE8;
        v23 = (a1 + 464);
        goto LABEL_29;
      }
    }

    else
    {
      if (a2 == 2)
      {
        v21 = 16 * v15;
        v22 = 0x1000040451B5BE8;
        v23 = (a1 + 456);
        goto LABEL_29;
      }

      if (a2 == 3)
      {
        v21 = 48 * v15;
        v22 = 0x1000040EED21634;
        v23 = (a1 + 472);
LABEL_29:
        malloc_type_posix_memalign(v23, 0x10uLL, v21, v22);
      }
    }

LABEL_30:
    *(a1 + 96 + 4 * a2) = v15;
  }
}

void C3DLightingSystemAddToLightsWithTechnique(uint64_t a1, void *value)
{
  Mutable = *(a1 + 116496);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF158]);
    *(a1 + 116496) = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

void C3DLightingSystemRemoveFromLightsWithTechnique(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 116496);
  if (v2)
  {
    CFSetRemoveValue(v2, a2);
  }
}

void __updateWorldData(uint64_t *a1, int a2, unsigned int a3, float32x4_t *a4, __n128 *a5)
{
  WorldMatrix = C3DNodeGetWorldMatrix(a4);
  AttenuationEndDistance = C3DLightGetAttenuationEndDistance(a5);
  *(a1[a2 + 33] + 8 * a3) = C3DLightGetCategoryBitMask(a5);
  if (C3DLightIsBlack(a5) || C3DLightGetBaked(a5))
  {
    *(a1[a2 + 33] + 8 * a3) = 0;
  }

  if (a2 <= 3)
  {
    if (a2 == 2)
    {
      v12 = a1[57];
      v11 = WorldMatrix[3];
      v11.f32[3] = AttenuationEndDistance;
LABEL_26:
      *(v12 + 16 * a3) = v11;
      return;
    }

    if (a2 == 3)
    {
      v13 = C3DLightGetSpotOuterAngle(a5) / 180.0 * 3.14159265 * 0.5;
      if (AttenuationEndDistance <= 0.0)
      {
        v14 = INFINITY;
      }

      else
      {
        v14 = AttenuationEndDistance;
      }

      v15 = a1[59] + 48 * a3;
      v57 = WorldMatrix[2];
      v59 = WorldMatrix[3];
      v16 = tanf(v13);
      v17 = vmulq_f32(v57, v57);
      v18 = vaddv_f32(*v17.f32);
      *v17.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v18));
      *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v18), vmul_f32(*v17.f32, *v17.f32)));
      v19 = vmulq_n_f32(vnegq_f32(v57), vmul_f32(*v17.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v18), vmul_f32(*v17.f32, *v17.f32))).f32[0]);
      *&v20 = (v16 * v16) + 1.0;
      v21 = vrsqrte_f32(v20);
      v22 = vmul_f32(v21, vrsqrts_f32(v20, vmul_f32(v21, v21)));
      *v15 = v59;
      *(v15 + 16) = v19;
      *(v15 + 32) = v14;
      *(v15 + 36) = v14 * v16;
      *(v15 + 40) = vmul_f32(v22, vrsqrts_f32(v20, vmul_f32(v22, v22))).u32[0];
      *(v15 + 44) = v16;
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        if (C3DLightGetProbeType(a5))
        {
          v23 = scn_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            __updateWorldData_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
          }
        }

        C3DLightProbesSystemSetProbeData(a1[3], a3, a4, a5);
        break;
      case 5:
        if (C3DLightGetProbeType(a5) != 1)
        {
          v31 = scn_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            __updateWorldData_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
          }
        }

        ProbeExtents = C3DLightGetProbeExtents(a5);
        v40.i64[0] = 0x3F0000003F000000;
        v40.i64[1] = 0x3F0000003F000000;
        v41 = vmulq_f32(ProbeExtents, v40);
        v42 = a1[60] + 80 * a3;
        v43 = *WorldMatrix;
        v44 = WorldMatrix[1];
        v45 = WorldMatrix[2];
        v47 = vaddq_f32(WorldMatrix[3], vmlaq_f32(vmlaq_f32(vmulq_f32(v44, 0), 0, *WorldMatrix), 0, v45));
        v46 = 1.0;
        v47.i32[3] = 1.0;
        v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), vnegq_f32(v44)), v45, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL));
        v49 = vmulq_f32(*WorldMatrix, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL));
        if ((v49.f32[2] + vaddv_f32(*v49.f32)) < 0.0)
        {
          v46 = -1.0;
        }

        v50 = vmulq_f32(v43, v43);
        v51 = vmulq_f32(v44, v44);
        v52 = vadd_f32(vzip1_s32(*v50.i8, *v51.i8), vzip2_s32(*v50.i8, *v51.i8));
        v53 = vextq_s8(v50, v50, 8uLL);
        *v53.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v53.f32, *&vextq_s8(v51, v51, 8uLL)), v52));
        v54 = vmulq_f32(v45, v45);
        v53.i32[2] = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
        v55 = vmulq_n_f32(v53, v46);
        v56 = vmulq_f32(v41, v55);
        v56.i32[3] = 0;
        *v42 = v47;
        *(v42 + 16) = vdivq_f32(v43, vdupq_lane_s32(*v55.f32, 0));
        *(v42 + 32) = vdivq_f32(v44, vdupq_lane_s32(*v55.f32, 1));
        *(v42 + 48) = vdivq_f32(v45, vdupq_laneq_s32(v55, 2));
        *(v42 + 64) = v56;
        break;
      case 6:
        v11 = WorldMatrix[3];
        v11.i32[3] = 1120403456;
        v12 = a1[58];
        goto LABEL_26;
      default:
        return;
    }
  }
}

void _C3DLightingSystemCFFinalize(uint64_t a1)
{
  v2 = a1 + 114688;
  CFRelease(*(a1 + 24));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 496));
  CFRelease(*(a1 + 488));
  v3 = *(v2 + 1800);
  if (v3)
  {
    CFRelease(v3);
    *(v2 + 1800) = 0;
  }

  v4 = *(v2 + 1808);
  if (v4)
  {
    CFRelease(v4);
    *(v2 + 1808) = 0;
  }

  v5 = (a1 + 392);
  v6 = 8;
  do
  {
    free(*(v5 - 32));
    free(*(v5 - 24));
    free(*(v5 - 16));
    free(*(v5 - 8));
    v7 = *v5++;
    free(v7);
    --v6;
  }

  while (v6);
  free(*(a1 + 456));
  free(*(a1 + 464));
  free(*(a1 + 472));
  free(*(a1 + 480));
  v8 = 0;
  v9 = a1 + 117008;
  do
  {
    for (i = 0; i != 1536; i += 384)
    {
      v11 = *(v9 + i);
      if (v11)
      {
        CFRelease(v11);
        *(v9 + i) = 0;
      }
    }

    ++v8;
    v9 += 1568;
  }

  while (v8 != 8);
}

uint64_t __C3DLightingSystemGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DLightingSystemGetTypeID_typeID = result;
  return result;
}

uint64_t C3DLightingSystemCreate(uint64_t a1)
{
  if (C3DLightingSystemGetTypeID_onceToken != -1)
  {
    C3DLightingSystemCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DLightingSystemGetTypeID_typeID, 129296);
  *(Instance + 16) = a1;
  *(Instance + 24) = C3DLightProbesSystemCreate();
  v3 = *MEMORY[0x277CBECE8];
  *(Instance + 32) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  *(Instance + 40) = CFDictionaryCreateMutable(v3, 0, 0, MEMORY[0x277CBF150]);
  v4 = MEMORY[0x277CBF158];
  *(Instance + 496) = CFSetCreateMutable(v3, 0, MEMORY[0x277CBF158]);
  Mutable = CFSetCreateMutable(v3, 0, v4);
  v6 = 0;
  *(Instance + 488) = Mutable;
  *(Instance + 116504) = -1;
  v7 = Instance + 117008;
  do
  {
    for (i = 0; i != 1536; i += 384)
    {
      *(v7 + i) = C3DConvexPolyhedronCreate();
    }

    ++v6;
    v7 += 1568;
  }

  while (v6 != 8);
  return Instance;
}

uint64_t __lightOptimizedType(uint64_t a1)
{
  Type = C3DLightGetType(a1);
  AttenuationEndDistance = C3DLightGetAttenuationEndDistance(a1);
  v5 = (LODWORD(AttenuationEndDistance) & 0x7FFFFFFF) == 0 || LODWORD(AttenuationEndDistance) == 2139095040;
  if (Type <= 2)
  {
    switch(Type)
    {
      case 0:
        return 0;
      case 1:
        return 1;
      case 2:
        if (v5)
        {
          return 1;
        }

        else
        {
          return 2;
        }
    }
  }

  else if (Type > 4)
  {
    if (Type == 5)
    {
      if (v5)
      {
        return 1;
      }

      else
      {
        return 6;
      }
    }

    if (Type == 6)
    {
      return 7;
    }
  }

  else
  {
    if (Type == 3)
    {
      return 3;
    }

    ProbeType = C3DLightGetProbeType(a1);
    if (!ProbeType)
    {
      return 4;
    }

    if (ProbeType == 1)
    {
      return 5;
    }
  }

  v8 = scn_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    __lightOptimizedType_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  return 8;
}

void C3DLightingSystemAdd(uint64_t a1, float32x4_t *a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Light = C3DNodeGetLight(a2);
  if (Light)
  {
    v13 = Light;
    if ((C3DNodeIsHiddenOrIsHiddenByAncestor(a2) & 1) == 0)
    {
      if (CFDictionaryGetValue(*(a1 + 32), a2))
      {
        v14 = scn_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          C3DLightingSystemAdd_cold_2();
        }
      }

      else
      {
        v24 = __lightOptimizedType(v13);
        v25 = a1 + 4 * v24;
        v26 = *(v25 + 64);
        *(v25 + 64) = v26 + 1;
        __reserveData(a1, v24, v26);
        v27 = a1 + 8 * v24;
        *(*(v27 + 136) + 8 * v26) = a2;
        *(*(v27 + 200) + 8 * v26) = v13;
        C3DLightSetRadianceProbeIndex(v13, v26 + 1);
        __updateWorldData(a1, v24, v26, a2, v13);
        CFDictionarySetValue(*(a1 + 32), a2, ((v26 + 1) & 0xFFFFFFF | (v24 << 28)));
        if (__isLightGlobal(v13))
        {
          *(a1 + 568) = 0;
          *(a1 + 504) = 0u;
          *(a1 + 520) = 0u;
          CFDictionaryApplyFunction(*(a1 + 32), __appendGlobalLight, a1);
        }

        else if (!*(a1 + 572))
        {
          v28 = *(a1 + 116424);
          if (v28)
          {
            C3DEnginePipelineInvalidateAllProgramHashCode(v28);
          }
        }

        _recomputeLocalLightsCount(a1);
        if (C3DLightGetTechnique(v13))
        {
          C3DLightingSystemAddToLightsWithTechnique(a1, v13);
        }
      }
    }
  }

  else
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_21BEF7000, v23, OS_LOG_TYPE_DEFAULT, "Warning: Should not register a node without light to the light system", v29, 2u);
    }
  }
}

uint64_t _recomputeLocalLightsCount(uint64_t result)
{
  v1 = result;
  *(result + 572) = 0;
  v2 = result + 64;
  v3 = result + 200;
  for (i = 2; i != 7; ++i)
  {
    v5 = *(v2 + 4 * i);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        result = *(*(v3 + 8 * i) + v6);
        if (result)
        {
          result = __lightNeedsClustering(result);
          if (result)
          {
            ++*(v1 + 572);
          }
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  return result;
}

void C3DLightingSystemRemove(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    return;
  }

  v5 = Value;
  Light = C3DNodeGetLight(a2);
  v7 = (v5 & 0xFFFFFFF) - 1;
  v8 = a1 + 4 * (v5 >> 28);
  v9 = v5 >> 28;
  v10 = (*(v8 + 64) - 1);
  *(v8 + 64) = v10;
  if (v7 < v10)
  {
    v11 = (a1 + 8 * v9);
    v12 = v11[17];
    v13 = *(v12 + 8 * v10);
    v14 = *(v11[25] + 8 * v10);
    *(v12 + 8 * v7) = v13;
    *(v11[25] + 8 * v7) = v14;
    *(v11[41] + v7) = *(v11[41] + v10);
    *(v11[49] + v7) = *(v11[49] + v10);
    if (v5 >> 28 > 3)
    {
      switch(v9)
      {
        case 4:
          C3DLightProbesSystemSetProbeData(*(a1 + 24), v7, v13, v14);
          break;
        case 5:
          v21 = *(a1 + 480);
          v22 = (v21 + 80 * v7);
          v23 = (v21 + 80 * v10);
          *v22 = *v23;
          v24 = v23[1];
          v25 = v23[2];
          v26 = v23[4];
          v22[3] = v23[3];
          v22[4] = v26;
          v22[1] = v24;
          v22[2] = v25;
          C3DLightSetRadianceProbeIndex(v14, v5);
          break;
        case 6:
          v15 = *(a1 + 464);
LABEL_14:
          *(v15 + 16 * v7) = *(v15 + 16 * v10);
          break;
      }

LABEL_15:
      CFDictionarySetValue(*(a1 + 32), v13, v5);
      goto LABEL_16;
    }

    if (v9 != 2)
    {
      if (v9 == 3)
      {
        v16 = *(a1 + 472);
        v17 = (v16 + 48 * v10);
        v18 = *v17;
        v19 = v17[2];
        v20 = (v16 + 48 * v7);
        v20[1] = v17[1];
        v20[2] = v19;
        *v20 = v18;
      }

      goto LABEL_15;
    }

    v15 = *(a1 + 456);
    goto LABEL_14;
  }

LABEL_16:
  if (v9 == 4)
  {
    C3DLightProbesSystemSetProbesCount(*(a1 + 24), v10);
  }

  CFDictionaryRemoveValue(*(a1 + 32), a2);
  if (Light && __isLightGlobal(Light))
  {
    *(a1 + 568) = 0;
    *(a1 + 504) = 0u;
    *(a1 + 520) = 0u;
    CFDictionaryApplyFunction(*(a1 + 32), __appendGlobalLight, a1);
  }

  _recomputeLocalLightsCount(a1);
  CFSetRemoveValue(*(a1 + 496), a2);
  if (C3DLightGetTechnique(Light))
  {
    v27 = *(a1 + 116496);
    if (v27)
    {

      CFSetRemoveValue(v27, Light);
    }
  }
}

void C3DLightingSystemLightDidUpdate(uint64_t a1, const void *a2)
{
  if (__isLightGlobal(a2))
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 568);
  if (v4)
  {
    if (*(*(a1 + 200 + ((*(a1 + 504) >> 25) & 0x78)) + 8 * ((*(a1 + 504) & 0xFFFFFFFu) - 1)) == a2)
    {
      goto LABEL_2;
    }

    v5 = (a1 + 508);
    v6 = 1;
    do
    {
      v7 = v6;
      if (v4 == v6)
      {
        break;
      }

      v8 = *v5++;
      ++v6;
    }

    while (*(*(a1 + 200 + ((v8 >> 25) & 0x78)) + 8 * ((v8 & 0xFFFFFFF) - 1)) != a2);
    if (v7 < v4)
    {
LABEL_2:
      *(a1 + 568) = 0;
      *(a1 + 504) = 0u;
      *(a1 + 520) = 0u;
      CFDictionaryApplyFunction(*(a1 + 32), __appendGlobalLight, a1);
    }
  }

  v9 = *(a1 + 488);

  CFSetAddValue(v9, a2);
}

double __ComputeAmbientLighting(uint64_t a1)
{
  v16 = 0uLL;
  C3DColor4Make(&v16, 0.0, 0.0, 0.0, 1.0);
  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = 8 * v9;
    do
    {
      v12 = *(*(a1 + 200) + v10);
      if (v12)
      {
        C3DLightGetColorModulatedByIntensity(v12, v2, v3, v4, v5, v6, v7, v8);
        v3.f32[0] = v13;
        v4 = *&v16;
        *v2.f32 = vadd_f32(*&v16, v14);
        *&v16 = v2.i64[0];
        v2.f32[0] = *(&v16 + 2) + v13;
        *(&v16 + 2) = *(&v16 + 2) + v13;
      }

      v10 += 8;
    }

    while (v11 != v10);
  }

  result = *&v16;
  *(a1 + 48) = v16;
  return result;
}

uint64_t __LightsHaveChanged(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v12 = a1 + 64;
  v4 = a1 + 200;
  v5 = a1 + 136;
  do
  {
    v6 = *(v12 + 4 * v3);
    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v4 + 8 * v3) + 8 * i);
        if (CFSetContainsValue(*(a1 + 488), v8))
        {
          v9 = *(*(v5 + 8 * v3) + 8 * i);
          v10 = __lightOptimizedType(v8);
          if (v3 == v10)
          {
            __updateWorldData(a1, v3, i, v9, v8);
          }

          else
          {
            C3DLightingSystemRemove(a1, v9);
            C3DLightingSystemAdd(a1, v9);
            v6 = *(v12 + 4 * v3);
            --i;
          }

          v2 |= v10 == 0;
          C3DNodeUpdateCullingSystemMembership(v9);
        }
      }
    }

    ++v3;
  }

  while (v3 != 8);
  _recomputeLocalLightsCount(a1);
  return v2 & 1;
}

void __ComputeInfiniteLightSet(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v2 = *(a1 + 68);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    if (v2 >= 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = v2;
    }

    do
    {
      v7 = *(*(a1 + 272) + 8 * v3);
      if (v7 == -1)
      {
        *(v15 + v4++) = __runtimeIndex(a1, 1u, v3);
      }

      else
      {
        v5 |= v7;
      }

      ++v3;
    }

    while (v6 != v3);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(a1 + 592) = v5;
  v8 = *(a1 + 76) + *(a1 + 72);
  v9 = -*(a1 + 88);
  if (v2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 == v9;
  }

  if (v10 && __ShouldForceLighting(*(a1 + 116416)))
  {
    DefaultLightNode = C3DEngineContextGetDefaultLightNode(*(a1 + 116416));
    Light = C3DNodeGetLight(DefaultLightNode);
    PointOfView = C3DEngineContextGetPointOfView(*(a1 + 116416));
    C3DEngineContextSynchronizeDefaultLight(*(a1 + 116416), PointOfView);
    *(a1 + 5732) = C3DLightGetProgramHashCode(Light);
    *(a1 + 4704) = Light;
    *(a1 + 2656) = DefaultLightNode;
    _ComputeRuntimeDataForIndex(a1, 0xFFu, 0);
    v14 = 0;
    LOBYTE(v15[0]) = -1;
    *(a1 + 576) = v15[0];
    *(a1 + 584) = 1;
  }

  else
  {
    *(a1 + 576) = v15[0];
    *(a1 + 584) = v4;
    v14 = v4 == 8;
  }

  if (v8 == v9 && !*(a1 + 592))
  {
    v14 = 1;
  }

  *(a1 + 588) = v14;
}

uint64_t __runtimeIndex(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a1 + 328;
  LOBYTE(v4) = *(*(a1 + 328 + 8 * a2) + a3);
  if (!v4)
  {
    v6 = *(a1 + 608);
    if (v6 == 256)
    {
      if ((__runtimeIndex_done & 1) == 0)
      {
        __runtimeIndex_done = 1;
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __runtimeIndex_cold_1();
        }
      }

      LOBYTE(v4) = 0;
    }

    else
    {
      v9 = a2;
      v4 = v6 + 1;
      v10 = a1 + 8 * a2;
      v11 = *(*(v10 + 200) + 8 * a3);
      *(a1 + 608) = v4;
      v12 = *(*(v10 + 136) + 8 * a3);
      v13 = a1 + 8 * v4;
      *(v13 + 2664) = v11;
      *(v13 + 616) = v12;
      *(*(v3 + 8 * a2) + a3) = v4;
      *(a1 + 4 * v4 + 4712) = C3DLightGetProgramHashCode(v11);
      _ComputeRuntimeDataForIndex(a1, v4, a3 & 0xFFFFFFF | (v9 << 28));
    }
  }

  return v4;
}

const __CFDictionary *__ShouldForceLighting(uint64_t a1)
{
  Scene = C3DEngineContextGetScene(a1);
  LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
  if (LightingEnvironmentEffectSlot)
  {
    v4 = LightingEnvironmentEffectSlot;
    if (C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot) || C3DEffectSlotHasPrecomputedLightingEnvironment(v4))
    {
      return 0;
    }
  }

  if (C3DSceneGetAllowsDefaultLightingEnvironmentFallback(Scene))
  {
    return 0;
  }

  v6 = MEMORY[0x277CBED28];
  if (Scene)
  {
    Attribute = C3DSceneGetAttribute(Scene, @"triggerOptionsForRealtimeViewer");
    if (!Attribute)
    {
      Attribute = *MEMORY[0x277CBED10];
    }

    v8 = *v6;
    v9 = CFEqual(Attribute, *v6);
    v10 = v8;
    if (v9)
    {
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = C3DSceneGetAttribute(Scene, @"defaultLight");
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    if (CFEqual(v10, v8))
    {
      return 1;
    }
  }

LABEL_16:
  result = C3DEngineContextGetRenderingOptionForKey(a1, @"defaultLight");
  if (result)
  {
    return (CFEqual(result, *v6) != 0);
  }

  return result;
}

void _ComputeRuntimeDataForIndex(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = a1 + 432 * a2;
  v6 = v5 + 5744;
  v7 = a1 + 8 * a2;
  v8 = *(v7 + 616);
  v9 = *(v7 + 2664);
  *(v5 + 5856) = 0;
  key = v8;
  WorldMatrix = C3DNodeGetWorldMatrix(v8);
  memset(&v122, 0, sizeof(v122));
  C3DMatrix4x4Mult(WorldMatrix, (a1 + 116336), &v122);
  Type = C3DLightGetType(v9);
  HasValidGobo = C3DLightHasValidGobo(v9);
  UsesDeferredShadows = C3DLightGetUsesDeferredShadows(v9);
  CastsShadow = C3DLightGetCastsShadow(v9);
  v15 = C3DLightGetUsesModulatedMode(v9) & (HasValidGobo | UsesDeferredShadows ^ 1);
  if ((v15 & 1) == 0)
  {
    C3DLightGetColorModulatedByIntensity(v9, v16, v17, v18, v19, v20, v21, v22);
    *&v24 = v23;
    *(&v24 + 1) = vzip1_s32(v25, HIDWORD(*&v25));
    *v6 = v24;
    *(v6 + 112) |= 0x40u;
  }

  v26 = a1 + 114688;
  if (Type > 6)
  {
LABEL_9:
    if (Type < 2)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (((1 << Type) & 0x6C) == 0)
  {
    if (Type != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v27 = v122.columns[3];
  *(v6 + 112) |= 1u;
  v27.i32[3] = *(v6 + 28);
  *(v6 + 16) = v27;
  *(v6 + 28) = C3DLightGetAttenuationEndDistance(v9);
  if (((1 << Type) & 0x68) != 0)
  {
LABEL_8:
    v28 = vmulq_f32(v122.columns[2], v122.columns[2]);
    *&v29 = v28.f32[2] + vaddv_f32(*v28.f32);
    *v28.f32 = vrsqrte_f32(v29);
    *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
    v30 = vmulq_n_f32(v122.columns[2], vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
    *(v6 + 112) |= 2u;
    *(v6 + 40) = v30.i32[2];
    *(v6 + 32) = v30.i64[0];
    goto LABEL_9;
  }

LABEL_10:
  *&v31 = C3DLightComputeDistanceAttenuations(v9, 0, *(a1 + 116400));
  *(v6 + 80) = v31;
  if (Type == 3)
  {
    v32 = v15;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    if (Type == 5)
    {
      *&v33 = 1.0 / (C3DLightGetIESSpotAngle(v9) / 180.0 * 3.14159265);
      *(v6 + 104) = 0;
      *(v6 + 96) = v33;
    }
  }

  else
  {
    C3DLightComputeSpotAttenuations(v9);
    *(v6 + 96) = v34;
  }

LABEL_17:
  v35 = C3DLightTypeSupportsShadow(v9);
  if (!(UsesDeferredShadows & 1 | ((CastsShadow & 1) == 0)) && v35)
  {
    *(v6 + 112) |= 0x10u;
    v36 = *(a1 + 8 * (a3 >> 28) + 392);
    v37 = *(v36 + (a3 & 0xFFFFFFF));
    if (*(v36 + (a3 & 0xFFFFFFF)))
    {
      CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(a1 + 116416));
      v128 = __invert_f4(*(a1 + 116336));
      v102 = v128.columns[1];
      v104 = v128.columns[0];
      v100 = v128.columns[3];
      v101 = v128.columns[2];
      if (!C3DLightSupportsShadowCascades(v9))
      {
        v47 = 1;
LABEL_31:
        v74 = (a1 + 432 * a2 + 5920);
        v75 = (a1 + 1568 * (v37 - 1) + 116944);
        do
        {
          *&v76 = _computeShadowMatrix(CoordinatesSystemOptions, v75[-7], v75[-6], v75[-5], v75[-4], v75[-3], v75[-2], v75[-1], *v75, v39, v40, v41, v42, v43, v44, v45, v104, v102, v101, v100);
          *(v74 - 3) = v76;
          *(v74 - 2) = v77;
          *(v74 - 1) = v78;
          *v74 = v79;
          v74 += 4;
          v75 += 24;
          --v47;
        }

        while (v47);
        goto LABEL_33;
      }

      ShadowCascadeCount = C3DLightGetShadowCascadeCount(v9);
      if (ShadowCascadeCount)
      {
        v47 = ShadowCascadeCount;
        goto LABEL_31;
      }
    }

LABEL_33:
    Value = CFDictionaryGetValue(*(a1 + 40), key);
    if (Value)
    {
      *(v6 + 400) = C3DEngineContextGetTextureWithName(*(a1 + 116416), Value);
    }

    else if ((_ComputeRuntimeData_done & 1) == 0)
    {
      _ComputeRuntimeData_done = 1;
      v81 = scn_default_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        _ComputeRuntimeDataForIndex_cold_1();
      }
    }

    *(v6 + 408) = C3DTextureSamplerDepthCompare();
    *(v6 + 384) = C3DLightGetShadowColor(v9);
    *(v6 + 392) = v82;
    if (C3DLightGetEffectiveShadowSampleCount(v9) >= 2)
    {
      *(v6 + 112) |= 0x20u;
      RealShadowMapSize = C3DLightGetRealShadowMapSize(v9);
      ShadowRadius = C3DLightGetShadowRadius(v9);
      v84 = *&RealShadowMapSize.i32[1];
      if (*RealShadowMapSize.i32 > *&RealShadowMapSize.i32[1])
      {
        v84 = *RealShadowMapSize.i32;
      }

      if (v84 < 1.0)
      {
        v84 = 1.0;
      }

      *(v6 + 116) = ShadowRadius / v84;
    }

    return;
  }

  if (HasValidGobo)
  {
    Gobo = C3DLightGetGobo(v9, 0);
    v121 = 0;
    TextureForEffectSlot = C3DEngineContextGetTextureForEffectSlot(*(v26 + 1728), Gobo, &v121);
    v50 = v121;
    *(v6 + 400) = TextureForEffectSlot;
    *(v6 + 408) = v50;
    C3DEffectSlotSetTextureFromImageProxy(Gobo, TextureForEffectSlot);
    *(v6 + 112) |= 0x10u;
    memset(&v120, 0, sizeof(v120));
    C3DMatrix4x4Invert(&v122, &v120);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    C3DLightGetProjectionInfo(v9, &v106);
    v51 = C3DEngineContextGetCoordinatesSystemOptions(*(v26 + 1728));
    Matrix = C3DProjectionInfosGetMatrix(&v106, 0, v51);
    v53 = 0;
    v54 = *Matrix;
    v55 = *(Matrix + 1);
    v56 = *(Matrix + 2);
    v57 = *(Matrix + 3);
    v123 = v120;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    do
    {
      *(&v124 + v53 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(*&v123.columns[v53])), v55, *v123.columns[v53].f32, 1), v56, v123.columns[v53], 2), v57, v123.columns[v53], 3);
      ++v53;
    }

    while (v53 != 4);
    v58 = v125;
    v59 = v126;
    v60 = v127;
    *(v6 + 128) = v124;
    *(v6 + 144) = v58;
    *(v6 + 160) = v59;
    *(v6 + 176) = v60;
    if (C3DKeyframeControllerHasInterpolationModesPerKey(Gobo))
    {
      ImageTransform = C3DEffectSlotGetImageTransform(Gobo);
      v62 = 0;
      v63 = *ImageTransform;
      v64 = ImageTransform[1];
      v65 = ImageTransform[2];
      v66 = ImageTransform[3];
      v67 = *(v6 + 144);
      v68 = *(v6 + 160);
      v69 = *(v6 + 176);
      v124 = *(v6 + 128);
      v125 = v67;
      v126 = v68;
      v127 = v69;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      do
      {
        *(&v106 + v62) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v124 + v62))), v64, *(&v124 + v62), 1), v65, *(&v124 + v62), 2), v66, *(&v124 + v62), 3);
        v62 += 16;
      }

      while (v62 != 64);
      v70 = v106;
      v71 = v107;
      v72 = v108;
      v73 = v109;
    }

    else
    {
      v70 = *(v6 + 128);
      v71 = *(v6 + 144);
      v72 = *(v6 + 160);
      v73 = *(v6 + 176);
    }

    v85 = 0;
    v86 = *MEMORY[0x277D860B8];
    v87 = *(MEMORY[0x277D860B8] + 16);
    v88 = *(MEMORY[0x277D860B8] + 32);
    v86.i32[0] = 0.5;
    v87.i32[1] = -0.5;
    v88.i32[2] = 1.0;
    v89.i64[0] = 0x3F0000003F000000;
    v89.i64[1] = *(MEMORY[0x277D860B8] + 56);
    v124 = v70;
    v125 = v71;
    v126 = v72;
    v127 = v73;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    do
    {
      *(&v106 + v85) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, COERCE_FLOAT(*(&v124 + v85))), v87, *(&v124 + v85), 1), v88, *(&v124 + v85), 2), v89, *(&v124 + v85), 3);
      v85 += 16;
    }

    while (v85 != 64);
    v90 = v107;
    v91 = v108;
    v92 = v109;
    *(v6 + 128) = v106;
    *(v6 + 144) = v90;
    *(v6 + 160) = v91;
    *(v6 + 176) = v92;
    Intensity = C3DEffectSlotGetIntensity(Gobo);
    __asm { FMOV            V1.4S, #1.0 }

    *(&_Q1 + 3) = Intensity;
    *(v6 + 384) = _Q1;
  }
}

uint64_t __appendShadowTechnique(uint64_t a1, void *key, const void *a3, uint64_t a4, uint64_t a5, int a6)
{
  ShadowTechniqueForNode = C3DLightingSystemGetShadowTechniqueForNode(a1, a3, key);
  if (!ShadowTechniqueForNode)
  {
    ShadowTechniqueForNode = C3DFXTechniqueCreateSpotShadow(a3);
    C3DLightingSystemSetShadowTechniqueForNode(a1, a3, key, ShadowTechniqueForNode);
    CFRelease(ShadowTechniqueForNode);
  }

  if (C3DLightShouldAdjustsShadowProjection(key))
  {
    EnableSampleDistributed = C3DLightGetEnableSampleDistributed(key);
    C3DFXContextSetEnableSampleDistributedRange(a4, a5, EnableSampleDistributed);
  }

  result = C3DFXTechniqueMarkAsUsed(ShadowTechniqueForNode, a6);
  if (result)
  {
    v15 = C3DFXShadowMapTargetNameWithNode(a3);
    CFDictionarySetValue(*(a1 + 40), a3, v15);

    return C3DFXContextAppendTechnique(a4, a5, ShadowTechniqueForNode);
  }

  return result;
}

const void *C3DLightingSystemGetShadowTechniqueForNode(uint64_t a1, const void *a2, void *key)
{
  v3 = *(a1 + 116488);
  if (!v3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v3, key);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, a2);
}

void C3DLightingSystemSetShadowTechniqueForNode(uint64_t a1, const void *a2, void *key, const void *a4)
{
  Mutable = *(a1 + 116488);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 1, 0, MEMORY[0x277CBF150]);
    *(a1 + 116488) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 1, 0, MEMORY[0x277CBF150]);
    CFDictionarySetValue(*(a1 + 116488), key, Value);
    CFRelease(Value);
  }

  CFDictionarySetValue(Value, a2, a4);
}

uint64_t C3DLightingSystemAppendForwardShadowingTechniques(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Scene = C3DEngineContextGetScene(a3);
  result = C3DSceneGetFrameStamp(Scene);
  v8 = result;
  if (*(a1 + 116504) != result)
  {
    *(a1 + 116504) = result;
  }

  v9 = *(a1 + 68);
  if (v9)
  {
    v10 = 0;
    v11 = 8 * v9;
    do
    {
      v12 = *(*(a1 + 208) + v10);
      result = C3DLightGetCastsShadow(v12);
      if (result)
      {
        result = C3DLightGetUsesDeferredShadows(v12);
        if ((result & 1) == 0)
        {
          result = __appendShadowTechnique(a1, v12, *(*(a1 + 144) + v10), a2, a3, v8);
        }
      }

      v10 += 8;
    }

    while (v11 != v10);
  }

  v13 = *(a1 + 76);
  if (v13)
  {
    v14 = 0;
    v15 = 8 * v13;
    do
    {
      v16 = *(*(a1 + 224) + v14);
      result = C3DLightGetCastsShadow(v16);
      if (result)
      {
        result = C3DLightGetUsesDeferredShadows(v16);
        if ((result & 1) == 0)
        {
          result = __appendShadowTechnique(a1, v16, *(*(a1 + 160) + v14), a2, a3, v8);
        }
      }

      v14 += 8;
    }

    while (v15 != v14);
  }

  return result;
}