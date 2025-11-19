float32x2_t btSingleSweepCallback::btSingleSweepCallback(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, float a7)
{
  *a1 = &unk_282DC90E0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = a3[1];
  *(a1 + 80) = a3[2];
  v7 = a3[3];
  *(a1 + 96) = v7;
  *(a1 + 112) = *a4;
  *(a1 + 128) = a4[1];
  *(a1 + 144) = a4[2];
  v8 = a4[3];
  *(a1 + 160) = v8;
  *(a1 + 192) = a5;
  *(a1 + 200) = a6;
  *(a1 + 208) = a7;
  *(a1 + 216) = a2;
  v9 = vsubq_f32(v8, v7);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_n_f32(v9, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0]));
  __asm { FMOV            V4.2S, #1.0 }

  v17 = vbsl_s8(vceqz_f32(*v11.f32), vdup_n_s32(0x5D5E0B6Bu), vdiv_f32(_D4, *v11.f32));
  *(a1 + 16) = v17;
  v18 = 1.0 / v11.f32[2];
  if (v11.f32[2] == 0.0)
  {
    v18 = 1.0e18;
  }

  *(a1 + 24) = v18;
  *(a1 + 32) = vand_s8(vcltz_f32(v17), 0x100000001);
  *(a1 + 40) = v18 < 0.0;
  v19 = vmulq_f32(v11, v9);
  result = vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL));
  *(a1 + 44) = result.i32[0];
  return result;
}

BOOL btSingleSweepCallback::process(float32x4_t *a1, uint64_t *a2)
{
  v3 = a1[12].i64[1];
  v4 = v3[2];
  if (v4 != 0.0)
  {
    v5 = *a2;
    if ((*(*v3 + 16))(v3, *(*a2 + 200)))
    {
      v6 = a1[13].i64[1];
      v7 = *(v5 + 208);
      v8 = a1[12].i64[1];
      v9 = a1[13].f32[0];
      v11[0] = 0;
      v11[1] = v7;
      v11[2] = v5;
      v11[3] = v5 + 16;
      v11[4] = -1;
      btCollisionWorld::objectQuerySingleInternal(v6, &a1[3], a1 + 7, v11, v8, v9);
    }
  }

  return v4 != 0.0;
}

uint64_t btSingleContactCallback::process(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 != a1[1])
  {
    if ((*(*a1[3] + 16))(a1[3], *(v2 + 200)))
    {
      v4 = a1[1];
      v5 = a1[2];
      v6 = *(v4 + 208);
      v14[0] = 0;
      v14[1] = v6;
      v14[2] = v4;
      v14[3] = v4 + 16;
      v14[4] = -1;
      v7 = *(v2 + 208);
      v13[0] = 0;
      v13[1] = v7;
      v13[2] = v2;
      v13[3] = v2 + 16;
      v13[4] = -1;
      v8 = (*(**(v5 + 40) + 16))(*(v5 + 40), v14, v13, 0);
      if (v8)
      {
        v9 = v8;
        v10 = a1[3];
        btManifoldResult::btManifoldResult(v12, v14, v13);
        v12[0] = &unk_282DC9130;
        v12[6] = v10;
        (*(*v9 + 16))(v9, v14, v13, a1[2] + 48, v12);
        (**v9)(v9);
        (*(**(a1[2] + 40) + 120))(*(a1[2] + 40), v9);
      }
    }
  }

  return 1;
}

uint64_t btManifoldResult::setShapeIdentifiersA(uint64_t this, int a2, int a3)
{
  *(this + 32) = a2;
  *(this + 40) = a3;
  return this;
}

uint64_t btManifoldResult::setShapeIdentifiersB(uint64_t this, int a2, int a3)
{
  *(this + 36) = a2;
  *(this + 44) = a3;
  return this;
}

uint64_t btBridgedManifoldResult::addContactPoint(btBridgedManifoldResult *this, float32x4_t *a2, float32x4_t *a3, float a4)
{
  v6 = *(*(this + 1) + 784);
  v7 = *(*(this + 2) + 16);
  v8 = *a2;
  v9 = vmulq_n_f32(*a2, a4);
  v9.i32[3] = 0;
  v10 = *a3;
  v11 = vaddq_f32(*a3, v9);
  if (v6 == v7)
  {
    v30 = *(v7 + 48);
    v31 = vsubq_f32(v11, *(v7 + 64));
    v32 = *(v7 + 16);
    v33 = *(v7 + 32);
    v34 = vzip2_s32(*v30.f32, 0);
    v35 = vtrn1q_s32(v32, v33);
    v36.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
    v36.i64[1] = vextq_s8(v30, v30, 8uLL).u32[0];
    v37 = vmulq_f32(v36, v31);
    v38 = v31;
    v38.i32[3] = 0;
    v35.i64[1] = v30.u32[0];
    *v30.f32 = vzip2_s32(*v32.i8, *v33.i8);
    *&v30.u32[2] = v34;
    v20 = vmulq_f32(v35, v38);
    v39 = vmulq_f32(v30, v38);
    v22 = vextq_s8(v39, v39, 8uLL).u64[0];
    v37.i32[3] = 0;
    v23 = vpadd_f32(*v20.i8, *v39.i8);
    v25 = vpadd_f32(vpadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), 0);
    v29 = *(*(this + 3) + 16);
    v24 = 32;
    v26 = 36;
    v27 = 40;
    v28 = 44;
  }

  else
  {
    v12 = *(*(this + 3) + 16);
    v13 = *(v12 + 48);
    v14 = vsubq_f32(v11, *(v12 + 64));
    v15 = *(v12 + 16);
    v16 = *(v12 + 32);
    v17 = vtrn1q_s32(v15, v16);
    *v15.f32 = vzip2_s32(*v15.f32, *v16.f32);
    v16.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
    v16.i64[1] = vextq_s8(v13, v13, 8uLL).u32[0];
    v18 = vmulq_f32(v16, v14);
    v19 = v14;
    v19.i32[3] = 0;
    v17.i64[1] = v13.u32[0];
    *&v15.u32[2] = vzip2_s32(*v13.i8, 0);
    v20 = vmulq_f32(v17, v19);
    v21 = vmulq_f32(v15, v19);
    v22 = vextq_s8(v21, v21, 8uLL).u64[0];
    v18.i32[3] = 0;
    v23 = vpadd_f32(*v20.i8, *v21.i8);
    v24 = 36;
    v25 = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
    v26 = 32;
    v27 = 44;
    v28 = 40;
    v29 = *(*(this + 2) + 16);
  }

  v70 = v4;
  v71 = v5;
  v40 = *(v29 + 16);
  v41 = *(v29 + 32);
  v42 = vtrn1q_s32(v40, v41);
  v43 = *(v29 + 48);
  *&v44 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), v22), v23);
  v45 = vzip2q_s64(v42, v43);
  v46 = vsubq_f32(v10, *(v29 + 64));
  *(&v44 + 1) = v25;
  v47 = v46;
  v47.i32[3] = 0;
  *v40.f32 = vzip2_s32(*v40.f32, *v41.i8);
  v42.i64[1] = v43.u32[0];
  *&v40.u32[2] = vzip2_s32(*v43.i8, 0);
  v48 = vmulq_f32(v45, v46);
  v49 = vmulq_f32(v42, v47);
  v50 = vmulq_f32(v40, v47);
  v48.i32[3] = 0;
  *v50.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v49, v49, 8uLL), *&vextq_s8(v50, v50, 8uLL)), vpadd_f32(*v49.i8, *v50.i8));
  v50.u64[1] = vpadd_f32(vpadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)), 0);
  v58[0] = v44;
  v58[1] = v50;
  v58[3] = v11;
  v58[4] = v8;
  v59 = a4;
  v60 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0u;
  v69 = 0u;
  v51 = *(this + v28);
  v52 = *(this + v27);
  v58[2] = v10;
  v53 = *(this + v26);
  v54 = *(this + v24);
  v61 = 0;
  v62 = v54;
  v63 = v53;
  v64 = v52;
  if (v6 == v7)
  {
    v55 = 16;
  }

  else
  {
    v55 = 24;
  }

  v56 = *(this + v55);
  v65 = v51;
  return (*(**(this + 6) + 24))(*(this + 6), v58, v56);
}

uint64_t DebugDrawcallback::processTriangle(float32x4_t *this, float32x4_t *a2)
{
  v3 = this[3];
  v4 = this[4];
  v5 = a2[1];
  v6 = vmulq_f32(v3, *a2);
  v7 = vmulq_f32(*a2, v4);
  v9 = this[5];
  v8 = this[6];
  v10 = vmulq_f32(*a2, v9);
  v10.i32[3] = 0;
  *v6.f32 = vadd_f32(vpadd_f32(*v6.f32, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  *&v6.u32[2] = vpadd_f32(vpadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), 0);
  v11 = vaddq_f32(v6, v8);
  v12 = vmulq_f32(v3, v5);
  v13 = vmulq_f32(v4, v5);
  v14 = vmulq_f32(v9, v5);
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v33 = vaddq_f32(v8, v12);
  v34 = v11;
  v15 = a2[2];
  v16 = vmulq_f32(v3, v15);
  v17 = vmulq_f32(v4, v15);
  v18 = vmulq_f32(v9, v15);
  v18.i32[3] = 0;
  *v16.f32 = vadd_f32(vpadd_f32(*v16.f32, *v17.i8), vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)));
  *&v16.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  v32 = vaddq_f32(v8, v16);
  v19 = vmulq_f32(vaddq_f32(vaddq_f32(v11, v33), v32), vdupq_n_s32(0x3EAAAAABu));
  v19.i32[3] = 0;
  v27 = v19;
  v28 = v11;
  v31 = v19;
  if (((*(*this[1].i64[0] + 96))(this[1].i64[0]) & 0x4000) != 0)
  {
    v20 = vsubq_f32(v33, v28);
    v20.i32[3] = 0;
    v21 = vsubq_f32(v32, v28);
    v21.i32[3] = 0;
    v22 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL), v20), vmulq_f32(vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL), v21));
    v23 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
    v23.i32[3] = 0;
    v24 = vmulq_f32(v23, v23);
    v25 = this[1].i64[0];
    v29 = vaddq_f32(vmulq_n_f32(v23, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)).f32[0])), v27);
    v30 = xmmword_21C281190;
    (*(*v25 + 16))(v25, &v31, &v29, &v30);
  }

  (*(*this[1].i64[0] + 16))(this[1].i64[0], &v34, &v33, this + 2);
  (*(*this[1].i64[0] + 16))(this[1].i64[0], &v33, &v32, this + 2);
  return (*(*this[1].i64[0] + 16))(this[1].i64[0], &v32, &v34, this + 2);
}

void non-virtual thunk toDebugDrawcallback::~DebugDrawcallback(DebugDrawcallback *this)
{
  v1 = this - 8;
  C3DSceneSourcePerformConsistencyCheck(this);

  C3DSceneSourcePerformConsistencyCheck(v1);
}

{
  v1 = this - 8;
  C3DSceneSourcePerformConsistencyCheck(this);
  C3DSceneSourcePerformConsistencyCheck(v1);

  JUMPOUT(0x21CF07610);
}

uint64_t btHashMap<btHashPtr,btCollisionShape *>::findIndex(uint64_t a1, _DWORD *a2)
{
  result = 0xFFFFFFFFLL;
  v4 = a2[1] + *a2 + ~((a2[1] + *a2) << 15);
  v5 = (9 * (v4 ^ (v4 >> 10))) ^ ((9 * (v4 ^ (v4 >> 10))) >> 6);
  v6 = ((v5 + ~(v5 << 11)) ^ ((v5 + ~(v5 << 11)) >> 16)) & (*(a1 + 72) - 1);
  if (v6 < *(a1 + 4))
  {
    result = *(*(a1 + 16) + 4 * v6);
    if (result == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      while (*a2 != *(*(a1 + 112) + 8 * result))
      {
        result = *(*(a1 + 48) + 4 * result);
        if (result == -1)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

void btHashMap<btHashPtr,btCollisionShape *>::growTables(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 4);
  if (v2 >= v1)
  {
    return;
  }

  if (*(a1 + 8) < v1)
  {
    if (v1)
    {
      v4 = btAlignedAllocInternal(4 * v1, 16);
      LODWORD(v5) = *(a1 + 4);
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = *(a1 + 4);
    }

    v6 = *(a1 + 16);
    if (v5 < 1)
    {
      if (!v6)
      {
LABEL_14:
        *(a1 + 24) = 1;
        *(a1 + 16) = v4;
        *(a1 + 8) = v1;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v5;
      v7 = v4;
      v8 = *(a1 + 16);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 24) == 1)
    {
      btAlignedFreeInternal(v6);
    }

    *(a1 + 16) = 0;
    goto LABEL_14;
  }

LABEL_15:
  bzero((*(a1 + 16) + 4 * v2), 4 * (v1 + ~v2) + 4);
  *(a1 + 4) = v1;
  v10 = *(a1 + 36);
  if (v10 < v1)
  {
    if (*(a1 + 40) >= v1)
    {
LABEL_28:
      bzero((*(a1 + 48) + 4 * v10), 4 * (v1 + ~v10) + 4);
      goto LABEL_29;
    }

    if (v1)
    {
      v11 = btAlignedAllocInternal(4 * v1, 16);
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v12) = *(a1 + 36);
    v13 = *(a1 + 48);
    if (v12 < 1)
    {
      if (!v13)
      {
LABEL_27:
        *(a1 + 56) = 1;
        *(a1 + 48) = v11;
        *(a1 + 40) = v1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v12;
      v14 = v11;
      v15 = *(a1 + 48);
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
    }

    if (*(a1 + 56) == 1)
    {
      btAlignedFreeInternal(v13);
    }

    goto LABEL_27;
  }

LABEL_29:
  *(a1 + 36) = v1;
  if (v1 >= 1)
  {
    memset(*(a1 + 16), 255, 4 * v1);
    memset(*(a1 + 48), 255, 4 * v1);
  }

  if (v2 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 16);
    v19 = *(a1 + 48);
    v20 = (*(a1 + 112) + 4);
    do
    {
      v21 = *v20 + *(v20 - 1) + ~((*v20 + *(v20 - 1)) << 15);
      v22 = (9 * (v21 ^ (v21 >> 10))) ^ ((9 * (v21 ^ (v21 >> 10))) >> 6);
      v23 = ((v22 + ~(v22 << 11)) ^ ((v22 + ~(v22 << 11)) >> 16)) & (*(a1 + 72) - 1);
      *(v19 + 4 * v17) = *(v18 + 4 * v23);
      *(v18 + 4 * v23) = v17++;
      v20 += 2;
    }

    while (v2 != v17);
  }
}

void *btCompoundCollisionAlgorithm::btCompoundCollisionAlgorithm(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(a1, a2);
  *v10 = &unk_282DC91C0;
  *(v10 + 40) = 1;
  v10[4] = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 48) = a5;
  v10[7] = a2[1];
  *(v10 + 64) = 0;
  if (a5)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  *(v10 + 17) = *(*(v11 + 8) + 104);
  btCompoundCollisionAlgorithm::preallocateChildAlgorithms(v10, a3, a4);
  return a1;
}

void btCompoundCollisionAlgorithm::preallocateChildAlgorithms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (*(a1 + 48))
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(v4 + 8);
  v7 = *(v6 + 28);
  v8 = *(a1 + 20);
  if (v8 < v7)
  {
    v9 = v8;
    if (*(a1 + 24) < v7)
    {
      if (v7)
      {
        v10 = btAlignedAllocInternal(8 * v7, 16);
        v8 = *(a1 + 20);
      }

      else
      {
        v10 = 0;
      }

      if (v8 >= 1)
      {
        v11 = 0;
        v12 = 8 * v8;
        do
        {
          *(v10 + v11) = *(*(a1 + 32) + v11);
          v11 += 8;
        }

        while (v12 != v11);
      }

      v13 = *(a1 + 32);
      if (v13 && *(a1 + 40) == 1)
      {
        btAlignedFreeInternal(v13);
      }

      *(a1 + 40) = 1;
      *(a1 + 32) = v10;
      *(a1 + 24) = v7;
    }

    do
    {
      *(*(a1 + 32) + 8 * v9++) = 0;
    }

    while (v7 != v9);
  }

  *(a1 + 20) = v7;
  if (v7 >= 1)
  {
    v14 = 0;
    v15 = 64;
    do
    {
      if (*(v6 + 96))
      {
        *(*(a1 + 32) + 8 * v14) = 0;
      }

      else
      {
        v16 = *(*(v6 + 40) + v15);
        v17[0] = v4;
        v17[1] = v16;
        v18 = *(v4 + 16);
        v19 = -1;
        v20 = v14;
        *(*(a1 + 32) + 8 * v14) = (*(**(a1 + 8) + 16))(*(a1 + 8), v17, v5, *(a1 + 56));
      }

      ++v14;
      v15 += 96;
    }

    while (v7 != v14);
  }
}

uint64_t btCompoundCollisionAlgorithm::removeChildAlgorithms(uint64_t this)
{
  v1 = *(this + 20);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = 0;
    v4 = 8 * v1;
    do
    {
      this = *(*(v2 + 32) + v3);
      if (this)
      {
        (**this)(this);
        this = (*(**(v2 + 8) + 120))(*(v2 + 8), *(*(v2 + 32) + v3));
      }

      v3 += 8;
    }

    while (v4 != v3);
  }

  return this;
}

void btCompoundCollisionAlgorithm::~btCompoundCollisionAlgorithm(btCompoundCollisionAlgorithm *this)
{
  *this = &unk_282DC91C0;
  btCompoundCollisionAlgorithm::removeChildAlgorithms(this);
  v2 = *(this + 4);
  if (v2 && *(this + 40) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 40) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btCompoundCollisionAlgorithm::~btCompoundCollisionAlgorithm(this);

  JUMPOUT(0x21CF07610);
}

void btCompoundCollisionAlgorithm::processCollision(btCompoundCollisionAlgorithm *this, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(this + 48))
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  if (*(this + 48))
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
  }

  v10 = *(v8 + 8);
  if (*(v10 + 104) != *(this + 17))
  {
    btCompoundCollisionAlgorithm::removeChildAlgorithms(this);
    btCompoundCollisionAlgorithm::preallocateChildAlgorithms(this, a2, a3);
  }

  v13 = *(v10 + 96);
  v14 = *(this + 1);
  v15 = *(this + 4);
  v16 = *(this + 7);
  v84[0] = &unk_282DC91F8;
  v84[1] = v8;
  v84[2] = v9;
  v84[3] = v14;
  v84[4] = a4;
  v84[5] = a5;
  v84[6] = v15;
  v84[7] = v16;
  LOBYTE(v79[1]) = 1;
  v79[0] = 0;
  *(v78.i64 + 4) = 0;
  v17 = *(this + 5);
  if (v17 >= 1)
  {
    v18 = 0;
    while (1)
    {
      v19 = *(*(this + 4) + 8 * v18);
      if (v19)
      {
        break;
      }

LABEL_33:
      if (++v18 >= v17)
      {
        if (v79[0] && LOBYTE(v79[1]) == 1)
        {
          btAlignedFreeInternal(v79[0]);
        }

        goto LABEL_37;
      }
    }

    (*(*v19 + 32))(v19, &v78);
    v20 = v78.i32[1];
    if (v78.i32[1] < 1)
    {
      goto LABEL_24;
    }

    v21 = 0;
    do
    {
      v22 = *(v79[0] + v21);
      if (*(v22 + 800))
      {
        a5[1] = v22;
        v23 = *(v22 + 784);
        v24 = *(a5[2] + 16);
        v25 = v23 == v24;
        if (v23 == v24)
        {
          v26 = *(a5[3] + 16);
        }

        else
        {
          v26 = *(a5[2] + 16);
        }

        if (!v25)
        {
          v24 = *(a5[3] + 16);
        }

        btPersistentManifold::refreshContactPoints(v22, (v24 + 16), (v26 + 16));
        a5[1] = 0;
        v20 = v78.i32[1];
      }

      ++v21;
    }

    while (v21 < v20);
    if (v20 <= 0)
    {
LABEL_24:
      if (v20 && v78.i32[2] < 0)
      {
        if (v79[0] && LOBYTE(v79[1]) == 1)
        {
          btAlignedFreeInternal(v79[0]);
        }

        LOBYTE(v79[1]) = 1;
        v79[0] = 0;
        v78.i32[2] = 0;
        goto LABEL_30;
      }

      if (v20 < 0)
      {
LABEL_30:
        v27 = v20;
        do
        {
          *(v79[0] + v27++) = 0;
        }

        while (v27);
      }
    }

    v78.i32[1] = 0;
    v17 = *(this + 5);
    goto LABEL_33;
  }

LABEL_37:
  if (v13)
  {
    v28 = *(v8 + 24);
    v29 = *v28;
    v30 = *(v28 + 1);
    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    v33 = vzip2_s32(*v32.f32, 0);
    v34 = vextq_s8(v32, v32, 8uLL).u32[0];
    v35 = *(v9 + 24);
    v36 = *v35;
    v37 = v35[1];
    v36.i32[3] = 0;
    v37.i32[3] = 0;
    v38 = v35[2];
    v39 = v35[3];
    v38.i32[3] = 0;
    v40 = vmlaq_laneq_f32(vmulq_laneq_f32(v36, v29, 2), v37, v30, 2);
    v41 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v36, *v29.f32, 1), v37, *v30.f32, 1), v38, *v32.f32, 1);
    v42 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v36, v29.f32[0]), v37, v30.f32[0]), v38, v32.f32[0]);
    v43 = vmlaq_laneq_f32(v40, v38, v32, 2);
    v44 = vtrn1q_s32(v29, v30);
    v38.i64[0] = vextq_s8(v44, v44, 8uLL).u64[0];
    v44.i64[1] = v32.u32[0];
    v32.i64[0] = 0x8000000080000000;
    v32.i64[1] = 0x8000000080000000;
    v45 = veorq_s8(v31, v32);
    v46 = vmulq_f32(v44, v45);
    *v29.f32 = vzip2_s32(*v29.f32, *v30.f32);
    *&v29.u32[2] = v33;
    v47 = vmulq_f32(v29, v45);
    v38.i64[1] = v34;
    v48 = vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v47, v47, 8uLL));
    v49 = vmulq_f32(v38, v45);
    v49.i32[3] = 0;
    *v47.f32 = vpadd_f32(*v46.i8, *v47.f32);
    v50 = vmulq_f32(v44, v39);
    v51 = vmulq_f32(v29, v39);
    v52 = vmulq_f32(v38, v39);
    v52.i32[3] = 0;
    *v47.f32 = vadd_f32(*v47.f32, v48);
    *v51.f32 = vadd_f32(vpadd_f32(*v50.i8, *v51.f32), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
    *&v51.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
    *&v47.u32[2] = vpadd_f32(vpadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)), 0);
    v78 = v42;
    *v79 = v41;
    v80 = v43;
    v81 = vaddq_f32(v47, v51);
    (*(**(v9 + 8) + 16))(*(v9 + 8), &v78, &v83, &v82);
    v77[0] = v83;
    v77[1] = v82;
    btDbvt::collideTV(v13, *v13, v77, v84);
  }

  else
  {
    v53 = *(this + 5);
    if (v53 <= 0)
    {
      return;
    }

    v54 = 0;
    v55 = 64;
    do
    {
      btCompoundLeafCallback::ProcessChildShape(v84, *(*(v10 + 40) + v55), v54++);
      v55 += 96;
    }

    while (v53 != v54);
  }

  v56 = *(this + 5);
  if (v56 >= 1)
  {
    v57 = 0;
    v58 = 8 * v56;
    v59 = 32;
    do
    {
      if (*(*(this + 4) + v57))
      {
        v60 = (*(v10 + 40) + v59);
        v61 = v60[2].i64[0];
        v62 = *(v8 + 24);
        v63 = v62[1];
        v64 = v62[2];
        v65 = v60[-2];
        v66 = v60[-1];
        v65.i32[3] = 0;
        v66.i32[3] = 0;
        v67 = *v60;
        v68 = v60[1];
        v67.i32[3] = 0;
        v69 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, v63.f32[0]), v66, *v63.f32, 1), v67, v63, 2);
        v70 = vmulq_f32(*v62, v68);
        v71 = vmulq_f32(v63, v68);
        v72 = vmulq_f32(v64, v68);
        v72.i32[3] = 0;
        *v71.f32 = vadd_f32(vpadd_f32(*v70.i8, *v71.f32), vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v71, v71, 8uLL)));
        *&v71.u32[2] = vpadd_f32(vpadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)), 0);
        v73 = vaddq_f32(v62[3], v71);
        v78 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v62)), v66, *v62->f32, 1), v67, *v62, 2);
        *v79 = v69;
        v80 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, v64.f32[0]), v66, *v64.f32, 1), v67, v64, 2);
        v81 = v73;
        (*(*v61 + 16))(v61, &v78, v77, &v83);
        (*(**(v9 + 8) + 16))(*(v9 + 8), *(v9 + 24), &v82, v76);
        v75 = *v77 > v76[0] || *&v83 < *&v82;
        if (*(v77 + 2) > v76[2] || *(&v83 + 2) < *(&v82 + 2))
        {
          v75 = 1;
        }

        v74.n128_u32[0] = DWORD1(v77[0]);
        if (*(v77 + 1) > v76[1] || (v74.n128_u32[0] = DWORD1(v83), ((*(&v83 + 1) >= *(&v82 + 1)) & ~v75) == 0))
        {
          (***(*(this + 4) + v57))(*(*(this + 4) + v57), v74);
          (*(**(this + 1) + 120))(*(this + 1), *(*(this + 4) + v57));
          *(*(this + 4) + v57) = 0;
        }
      }

      v57 += 8;
      v59 += 96;
    }

    while (v58 != v57);
  }
}

uint64_t btCompoundLeafCallback::ProcessChildShape(btCompoundLeafCallback *this, const btCollisionShape *a2, uint64_t a3)
{
  v6 = *(this + 1);
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = (*(v7 + 40) + 96 * a3);
  v14 = *v13;
  v15 = v13[1];
  v14.i32[3] = 0;
  v15.i32[3] = 0;
  v16 = v13[2];
  v17 = v13[3];
  v16.i32[3] = 0;
  v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v10.f32[0]), v15, *v10.f32, 1), v16, v10, 2);
  v19 = vmulq_f32(v9, v17);
  v20 = vmulq_f32(v10, v17);
  v21 = vmulq_f32(v11, v17);
  v21.i32[3] = 0;
  *v20.f32 = vadd_f32(vpadd_f32(*v19.i8, *v20.f32), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  *&v20.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
  v40[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v9.f32[0]), v15, *v9.f32, 1), v16, v9, 2);
  v40[1] = v18;
  v40[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v11.f32[0]), v15, *v11.f32, 1), v16, v11, 2);
  v40[3] = vaddq_f32(v12, v20);
  (*(a2->var0 + 2))(a2, v40, v39, &v36);
  result = (*(**(*(this + 2) + 8) + 16))(*(*(this + 2) + 8), *(*(this + 2) + 24), v35, v34);
  if (!gCompoundChildShapePairCallback || (result = gCompoundChildShapePairCallback(*(*(this + 2) + 8), a2), result))
  {
    v24 = v39[0] > v34[0] || v36 < v35[0];
    if (v39[2] > v34[2] || v38 < v35[2])
    {
      v24 = 1;
    }

    if (v39[1] <= v34[1])
    {
      v23.n128_f32[0] = v37;
      if (v37 < v35[1])
      {
        v24 = 1;
      }

      if (!v24)
      {
        v25 = *(*(this + 1) + 16);
        v31[0] = *(this + 1);
        v31[1] = a2;
        v31[2] = v25;
        v31[3] = v40;
        v32 = -1;
        v33 = a3;
        if (!*(*(this + 6) + 8 * a3))
        {
          *(*(this + 6) + 8 * a3) = (*(**(this + 3) + 16))(*(this + 3), v31, *(this + 2), *(this + 7), v23);
          v25 = *(*(this + 1) + 16);
        }

        v26 = *(this + 5);
        v27 = v26[2];
        if (*(v27 + 16) == v25)
        {
          v26[2] = v31;
          (*(*v26 + 16))(v26, 0xFFFFFFFFLL, a3, v23);
        }

        else
        {
          v27 = v26[3];
          v26[3] = v31;
          (*(*v26 + 24))(v26, 0xFFFFFFFFLL, a3, v23);
        }

        v28 = *(*(this + 6) + 8 * a3);
        result = (*(*v28 + 16))(v28, v31, *(this + 2), *(this + 4), *(this + 5));
        v29 = *(this + 5);
        v30 = 24;
        if (*(*(v29 + 16) + 16) == *(*(this + 1) + 16))
        {
          v30 = 16;
        }

        *(v29 + v30) = v27;
      }
    }
  }

  return result;
}

float btCompoundCollisionAlgorithm::calculateTimeOfImpact(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 48))
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (*(a1 + 48))
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(a1 + 20);
  if (v7 < 1)
  {
    return 1.0;
  }

  v11 = 0;
  v12 = *(v5 + 208);
  v13 = *(v5 + 16);
  v14 = *(v5 + 32);
  v15 = *(v5 + 48);
  v34 = vdupq_lane_s32(*v13.i8, 1);
  v35 = *(v5 + 64);
  v32 = vdupq_lane_s32(*v15.i8, 1);
  v33 = vdupq_lane_s32(*v14.i8, 1);
  v38 = v13;
  v36 = v15;
  v37 = v14;
  v30 = vdupq_laneq_s32(v14, 2);
  v31 = vdupq_laneq_s32(v13, 2);
  v16 = 8 * v7;
  v17 = 1.0;
  v18 = 32;
  v29 = vdupq_laneq_s32(v15, 2);
  do
  {
    v19 = (*(v12 + 40) + v18);
    v20 = v19[-2];
    v21 = v19[-1];
    v20.i32[3] = 0;
    v21.i32[3] = 0;
    v22 = *v19;
    v23 = v19[1];
    v22.i32[3] = 0;
    v24 = vmulq_f32(v38, v23);
    v25 = vmulq_f32(v37, v23);
    v26 = vmulq_f32(v36, v23);
    v26.i32[3] = 0;
    *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
    *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
    *(v5 + 16) = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v20, v38.f32[0]), v34, v21), v31, v22);
    *(v5 + 32) = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v20, v37.f32[0]), v33, v21), v30, v22);
    *(v5 + 48) = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v20, v36.f32[0]), v32, v21), v29, v22);
    *(v5 + 64) = vaddq_f32(v35, v24);
    v27 = (*(**(*(a1 + 32) + v11) + 24))(*(*(a1 + 32) + v11), v5, v6, a4, a5);
    if (v27 < v17)
    {
      v17 = v27;
    }

    *(v5 + 16) = v38;
    *(v5 + 32) = v37;
    *(v5 + 48) = v36;
    *(v5 + 64) = v35;
    v11 += 8;
    v18 += 96;
  }

  while (v16 != v11);
  return v17;
}

_DWORD *btCompoundCollisionAlgorithm::getAllContactManifolds(_DWORD *result, uint64_t a2)
{
  v2 = result[5];
  if (v2 >= 1)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      result = *(*(v4 + 4) + 8 * i);
      if (result)
      {
        result = (*(*result + 32))(result, a2);
        v2 = v4[5];
      }
    }
  }

  return result;
}

void *btConvexConcaveCollisionAlgorithm::btConvexConcaveCollisionAlgorithm(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(a1, a2);
  *v10 = &unk_282DC9240;
  *(v10 + 16) = a5;
  btConvexTriangleCallback::btConvexTriangleCallback(v10 + 4, *a2, a3, a4, a5);
  return a1;
}

void btConvexConcaveCollisionAlgorithm::~btConvexConcaveCollisionAlgorithm(btConvexConcaveCollisionAlgorithm *this)
{
  *this = &unk_282DC9240;
  btConvexTriangleCallback::~btConvexTriangleCallback((this + 32));

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  *this = &unk_282DC9240;
  btConvexTriangleCallback::~btConvexTriangleCallback((this + 32));
  C3DSceneSourcePerformConsistencyCheck(this);

  JUMPOUT(0x21CF07610);
}

void btConvexConcaveCollisionAlgorithm::getAllContactManifolds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v4 = *(a2 + 4);
    if (v4 == *(a2 + 8))
    {
      v5 = v4 ? 2 * v4 : 1;
      if (v4 < v5)
      {
        if (v5)
        {
          v7 = btAlignedAllocInternal(8 * v5, 16);
          v4 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v4 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v4 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            btAlignedFreeInternal(v9);
            v4 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v5;
        v2 = *(a1 + 128);
      }
    }

    *(*(a2 + 16) + 8 * v4) = v2;
    *(a2 + 4) = v4 + 1;
  }
}

void *btConvexTriangleCallback::btConvexTriangleCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  a1[9] = a2;
  a1[10] = 0;
  if (a5)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  *a1 = &unk_282DC9278;
  a1[1] = v6;
  if (a5)
  {
    v7 = a3;
  }

  else
  {
    v7 = a4;
  }

  a1[2] = v7;
  v8 = (*(*a2 + 24))(a2, *(v6 + 16), *(v7 + 16));
  a1[12] = v8;
  (*(*a1[9] + 40))(a1[9], v8);
  return a1;
}

void btConvexTriangleCallback::~btConvexTriangleCallback(btConvexTriangleCallback *this)
{
  *this = &unk_282DC9278;
  (*(**(this + 9) + 40))(*(this + 9), *(this + 12));
  (*(**(this + 9) + 32))(*(this + 9), *(this + 12));

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btConvexTriangleCallback::~btConvexTriangleCallback(this);

  JUMPOUT(0x21CF07610);
}

void btConvexTriangleCallback::processTriangle(btConvexTriangleCallback *this, btVector3 *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(*(*(this + 1) + 8) + 8) <= 19)
  {
    v8 = *(this + 9);
    btPolyhedralConvexShape::btPolyhedralConvexShape(&v21);
    v21 = &unk_282DC92A0;
    v22 = 1;
    v9 = a2[1];
    v24 = *a2;
    v10 = a2[2];
    v25 = v9;
    v26 = v10;
    v23 = *(this + 22);
    v11 = *(this + 1);
    v17[0] = *(this + 2);
    v17[1] = &v21;
    v18 = *(v17[0] + 16);
    v19 = a3;
    v20 = a4;
    v12 = (*(*v8 + 16))(v8, v11, v17, *(this + 12));
    v13 = *(this + 8);
    v14 = v13[2];
    if (*(v14 + 16) == *(*(this + 2) + 16))
    {
      v13[2] = v17;
      (*(*v13 + 16))(v13, a3, a4);
    }

    else
    {
      v14 = v13[3];
      v13[3] = v17;
      (*(*v13 + 24))(v13, a3, a4);
    }

    (*(*v12 + 16))(v12, *(this + 1), v17, *(this + 10), *(this + 8));
    v15 = *(this + 8);
    v16 = 24;
    if (*(*(v15 + 16) + 16) == *(*(this + 2) + 16))
    {
      v16 = 16;
    }

    *(v15 + v16) = v14;
    (**v12)(v12);
    (*(*v8 + 120))(v8, v12);
    btPolyhedralConvexShape::~btPolyhedralConvexShape(&v21);
  }
}

float32x4_t btConvexTriangleCallback::setTimeStepAndCounters(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int32x2_t a6)
{
  a1->i64[1] = a3;
  a1[1].i64[0] = a4;
  a1[5].i64[0] = a2;
  a1[5].i32[2] = a6.i32[0];
  a1[4].i64[0] = a5;
  v7 = *(a4 + 24);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = *(v7 + 3);
  v12 = *(a3 + 24);
  v14 = *v12;
  v13 = v12[1];
  v16 = v12[2];
  v15 = v12[3];
  v17 = vtrn1q_s32(v8, v9);
  v18.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
  v18.i64[1] = vextq_s8(v10, v10, 8uLL).u32[0];
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  v20 = veorq_s8(v11, v19);
  v21 = vmulq_f32(v18, v20);
  v21.i32[3] = 0;
  v16.i32[3] = 0;
  v13.i32[3] = 0;
  v22 = vzip2_s32(*v10.f32, 0);
  v14.i32[3] = 0;
  v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, v8, 2), v13, v9, 2), v16, v10, 2);
  v24 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v14, *v8.f32, 1), v13, *v9.f32, 1), v16, *v10.f32, 1);
  v25 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v14, v8.f32[0]), v13, v9.f32[0]), v16, v10.f32[0]);
  v17.i64[1] = v10.u32[0];
  v26 = vmulq_f32(v17, v20);
  *v8.f32 = vzip2_s32(*v8.f32, *v9.f32);
  *&v8.u32[2] = v22;
  v27 = vmulq_f32(v8, v20);
  *v27.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vpadd_f32(*v26.i8, *v27.f32));
  v28 = vmulq_f32(v18, v15);
  v28.i32[3] = 0;
  v29 = vmulq_f32(v17, v15);
  v30 = vmulq_f32(v8, v15);
  *v30.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vpadd_f32(*v29.i8, *v30.f32));
  *&v30.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  *&v27.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
  v35[0] = v25;
  v35[1] = v24;
  v35[2] = v23;
  v35[3] = vaddq_f32(v27, v30);
  (*(**(a3 + 8) + 16))(*(a3 + 8), v35, a1 + 2, a1 + 3);
  v31 = vdupq_lane_s32(a6, 0);
  v31.i32[3] = 0;
  v32 = vaddq_f32(v31, a1[3]);
  result = vsubq_f32(a1[2], v31);
  a1[2] = result;
  a1[3] = v32;
  return result;
}

btPersistentManifold *btConvexConcaveCollisionAlgorithm::processCollision(btPersistentManifold *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (LOBYTE(result->var1[0].var0.var0.var0[2]))
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (LOBYTE(result->var1[0].var0.var0.var0[2]))
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(v6 + 8);
  if ((v7[2] - 21) <= 8 && *(*(v5 + 8) + 8) <= 19)
  {
    v10 = result;
    *&v11 = (*(*v7 + 96))(*(v6 + 8));
    a5[1] = v10[8].i64[0];
    v12 = btConvexTriangleCallback::setTimeStepAndCounters(v10 + 2, a4, v5, v6, a5, v11);
    v13 = v10[8].i64[0];
    v14 = *(v6 + 16);
    *(v13 + 784) = *(v5 + 16);
    *(v13 + 792) = v14;
    (*(*v7 + 128))(v7, v10 + 2, v10 + 4, v10 + 5, v12);
    result = a5[1];
    if (LODWORD(result->var6))
    {
      var3 = result->var3;
      v16 = *(a5[2] + 16);
      v17 = var3 == v16;
      if (var3 == v16)
      {
        v18 = *(a5[3] + 16);
      }

      else
      {
        v18 = *(a5[2] + 16);
      }

      if (!v17)
      {
        v16 = *(a5[3] + 16);
      }

      result = btPersistentManifold::refreshContactPoints(result, (v16 + 16), (v18 + 16));
    }

    v10[2].i64[1] = 0;
    v10[3].i64[0] = 0;
  }

  return result;
}

float btConvexConcaveCollisionAlgorithm::calculateTimeOfImpact(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = v3[8];
  v5 = v3[4];
  v6 = vsubq_f32(v4, v5);
  v6.i32[3] = 0;
  v7 = vmulq_f32(v6, v6);
  v8 = 1.0;
  if (vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0] >= (v3[18].f32[0] * v3[18].f32[0]))
  {
    if (*(a1 + 16))
    {
      v9 = a2;
    }

    else
    {
      v9 = a3;
    }

    v10 = v9[13].i64[0];
    if ((v10[2] - 21) <= 8)
    {
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v14 = vzip2_s32(*v13.f32, 0);
      v15 = vextq_s8(v13, v13, 8uLL).u32[0];
      v16 = v3[6];
      v17 = v3[7];
      v17.i32[3] = 0;
      v18 = v3[5];
      v16.i32[3] = 0;
      v18.i32[3] = 0;
      v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v18, v11, 2), v16, v12, 2), v17, v13, 2);
      v21 = v3[2];
      v20 = v3[3];
      v20.i32[3] = 0;
      v22 = v3[1];
      v21.i32[3] = 0;
      v23 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v18, v11.f32[0]), v16, v12.f32[0]), v17, v13.f32[0]);
      v22.i32[3] = 0;
      v24 = vmlaq_lane_f32(vmulq_lane_f32(v18, *v11.f32, 1), v16, *v12.f32, 1);
      v25 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v22, v11.f32[0]), v21, v12.f32[0]), v20, v13.f32[0]);
      v26 = vmlaq_lane_f32(v24, v17, *v13.f32, 1);
      v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v22, v11, 2), v21, v12, 2), v20, v13, 2);
      v28 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v22, *v11.f32, 1), v21, *v12.f32, 1), v20, *v13.f32, 1);
      v29 = vtrn1q_s32(v11, v12);
      v21.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
      v29.i64[1] = v13.u32[0];
      v13.i64[0] = 0x8000000080000000;
      v13.i64[1] = 0x8000000080000000;
      v30 = veorq_s8(v9[4], v13);
      v31 = vmulq_f32(v29, v30);
      *v11.f32 = vzip2_s32(*v11.f32, *v12.f32);
      *&v11.u32[2] = v14;
      v32 = vmulq_f32(v11, v30);
      *v32.f32 = vadd_f32(vpadd_f32(*v31.i8, *v32.f32), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
      v21.i64[1] = v15;
      v33 = vmulq_f32(v21, v30);
      v33.i32[3] = 0;
      *&v32.u32[2] = vpadd_f32(vpadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL)), 0);
      v34 = vmulq_f32(v4, v29);
      v35 = vmulq_f32(v4, v11);
      *v34.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vpadd_f32(*v34.f32, *v35.i8));
      v36 = vmulq_f32(v4, v21);
      v36.i32[3] = 0;
      *&v34.u32[2] = vpadd_f32(vpadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)), 0);
      v37 = vaddq_f32(v32, v34);
      v38 = vmulq_f32(v5, v29);
      v39 = vmulq_f32(v5, v11);
      v40 = vmulq_f32(v5, v21);
      v40.i32[3] = 0;
      *v39.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vpadd_f32(*v38.i8, *v39.f32));
      *&v39.u32[2] = vpadd_f32(vpadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL)), 0);
      v41 = vaddq_f32(v32, v39);
      v42 = vminq_f32(v41, v37);
      v43 = vmaxq_f32(v41, v37);
      v49[0] = &unk_282DC93B8;
      v50 = v25;
      v51 = v28;
      v52 = v27;
      v53 = v41;
      v54 = v23;
      v55 = v26;
      v56 = v19;
      v57 = v37;
      v41.i64[0] = v3[17].i64[1];
      v44 = vdupq_lane_s32(*v41.f32, 1);
      v44.i32[3] = 0;
      v47 = vaddq_f32(v43, v44);
      v48 = vsubq_f32(v42, v44);
      v58 = vrev64_s32(*v41.f32);
      (*(*v10 + 128))(v10, v49, &v48, &v47);
      v45 = *&v58.i32[1];
      if (*&v58.i32[1] < v3[17].f32[2])
      {
        v3[17].i32[2] = v58.i32[1];
        C3DSceneSourcePerformConsistencyCheck(v49);
        return v45;
      }

      else
      {
        C3DSceneSourcePerformConsistencyCheck(v49);
      }
    }
  }

  return v8;
}

void btTriangleShape::~btTriangleShape(btTriangleShape *this)
{
  btPolyhedralConvexShape::~btPolyhedralConvexShape(this);

  btAlignedFreeInternal(v1);
}

double btCollisionShape::getAnisotropicRollingFrictionDirection@<D0>(btCollisionShape *this@<X0>, _OWORD *a2@<X8>)
{
  result = 0.00781250185;
  *a2 = xmmword_21C280340;
  return result;
}

const char *btConvexInternalShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionShape::serialize(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 32 + i) = *(a1 + 48 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 16 + j) = *(a1 + 32 + j);
  }

  *(a2 + 48) = *(a1 + 64);
  return "btConvexInternalShapeData";
}

__n128 btTriangleShape::localGetSupportingVertexWithoutMargin@<Q0>(float32x4_t *this@<X0>, float32x4_t *a2@<X1>, __n128 *a3@<X8>)
{
  v4 = this[5];
  v5 = this[6];
  v3 = this + 5;
  v6 = vmulq_f32(v4, *a2);
  v7 = vmulq_f32(*a2, v5);
  v8 = vmulq_f32(*a2, v3[2]);
  v8.i32[3] = 0;
  v9 = vadd_f32(vpadd_f32(*v6.i8, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  v10 = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
  v11 = 2;
  if (v9.f32[1] >= v10.f32[0])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if ((vcgt_f32(v10, v9).u8[0] & 1) == 0)
  {
    v11 = 0;
  }

  if (v9.f32[0] < v9.f32[1])
  {
    v11 = v12;
  }

  result = v3[v11];
  *a3 = result;
  return result;
}

float32x4_t *btTriangleShape::batchedUnitVectorGetSupportingVertexWithoutMargin(float32x4_t *this, float32x4_t *a2, btVector3 *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v5 = *a2++;
      v6 = vmulq_f32(this[5], v5);
      v7 = vmulq_f32(v5, this[7]);
      v8 = vmulq_f32(v5, this[6]);
      v7.i32[3] = 0;
      v9 = vadd_f32(vpadd_f32(*v6.i8, *v8.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
      v10 = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
      if (v9.f32[1] >= v10.f32[0])
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (vcgt_f32(v10, v9).u8[0])
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      if (v9.f32[0] >= v9.f32[1])
      {
        v11 = v12;
      }

      *a3++ = this[v11 + 5];
      --v4;
    }

    while (v4);
  }

  return this;
}

int8x16_t btTriangleShape::getPreferredPenetrationDirection(float32x4_t *this, __int32 a2, btVector3 *a3, int32x4_t a4)
{
  a4.i32[0] = 0;
  v4 = this[5];
  v5 = vsubq_f32(this[7], v4);
  v6 = v5;
  v6.i32[3] = 0;
  v7 = vsubq_f32(this[6], v4);
  v8 = vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL);
  v9 = v7;
  v9.i32[3] = 0;
  v10 = vsubq_f32(vmulq_f32(v8, v7), vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), v5));
  v11 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
  v11.i32[3] = 0;
  v12 = vmulq_f32(v11, v11);
  *v5.f32 = vpadd_f32(*v12.i8, *v12.i8);
  v13 = vextq_s8(v12, v12, 8uLL);
  *v13.i8 = vadd_f32(*v5.f32, *v13.i8);
  v14 = vmulq_n_f32(v11, 1.0 / sqrtf(*v13.i32));
  v13.i32[0] = a2;
  result = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v13, a4), 0), v14, vnegq_f32(v14));
  *a3 = result;
  return result;
}

uint64_t btTriangleShape::getEdge(btTriangleShape *this, uint64_t a2, btVector3 *a3, btVector3 *a4)
{
  v5 = a2;
  (*(*this + 216))(this, a2, a3);
  v7 = *(*this + 216);

  return v7(this, ((v5 + 1) % 3), a4);
}

__n128 btTriangleShape::getVertex(__n128 *this, int a2, btVector3 *a3)
{
  result = this[a2 + 5];
  *a3 = result;
  return result;
}

BOOL btTriangleShape::isInside(float32x4_t *this, float32x4_t *a2, float a3)
{
  result = 0;
  v5 = this[5];
  v6 = vsubq_f32(this[6], v5);
  v6.i32[3] = 0;
  v7 = vsubq_f32(this[7], v5);
  v7.i32[3] = 0;
  v8 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), v6), vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), v7));
  v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_n_f32(v9, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0]));
  v12 = vmulq_f32(*a2, v11);
  v28 = v11;
  v13 = vmulq_f32(v5, v11);
  v14 = vsub_f32(vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL))).f32[0];
  v15 = -a3;
  if (v14 >= -a3 && v14 <= a3)
  {
    v18 = 0;
    v27 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
    do
    {
      (*(this->i64[0] + 208))(this, v18, &v30, &v29);
      v19 = vsubq_f32(v29, v30);
      v20 = vsubq_f32(vmulq_f32(v27, v19), vmulq_f32(v28, vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL)));
      v21 = vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL);
      v21.i32[3] = 0;
      v22 = vmulq_f32(v21, v21);
      v23 = vmulq_n_f32(v21, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v22.i8, *v22.i8), *&vextq_s8(v22, v22, 8uLL)).f32[0]));
      v24 = vmulq_f32(*a2, v23);
      v25 = vmulq_f32(v30, v23);
      *v25.i32 = vsub_f32(vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)), vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL))).f32[0];
      result = *v25.i32 >= v15;
      v26 = *v25.i32 < v15 || v18 == 2;
      v18 = (v18 + 1);
    }

    while (!v26);
  }

  return result;
}

__n128 btTriangleShape::getPlaneEquation(float32x4_t *this, int a2, float32x4_t *a3, btVector3 *a4)
{
  v4 = this[5];
  v5 = vsubq_f32(this[6], v4);
  v5.i32[3] = 0;
  v6 = vsubq_f32(this[7], v4);
  v6.i32[3] = 0;
  v7 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), v5), vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), v6));
  v8 = vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL);
  v8.i32[3] = 0;
  v9 = vmulq_f32(v8, v8);
  *a3 = vmulq_n_f32(v8, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)).f32[0]));
  result = this[5];
  *a4 = result;
  return result;
}

void btConvexConcaveCollisionAlgorithm::calculateTimeOfImpact(btCollisionObject *,btCollisionObject *,btDispatcherInfo const&,btManifoldResult *)::LocalTriangleSphereCastCallback::~LocalTriangleSphereCastCallback(uint64_t a1)
{
  C3DSceneSourcePerformConsistencyCheck(a1);

  JUMPOUT(0x21CF07610);
}

uint64_t btConvexConcaveCollisionAlgorithm::calculateTimeOfImpact(btCollisionObject *,btCollisionObject *,btDispatcherInfo const&,btManifoldResult *)::LocalTriangleSphereCastCallback::processTriangle(uint64_t a1, __int128 *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v8.var0.var0[0] = xmmword_21C27F910;
  v8.var0.var0[1] = xmmword_21C27F8C0;
  v8.var0.var0[2] = xmmword_21C27F600;
  v8.var1 = 0uLL;
  v4 = *(a1 + 208);
  v22 = *(a1 + 212);
  v21[0].i64[0] = &unk_282DC8F18;
  v23 = 0;
  v24 = 0;
  btConvexInternalShape::btConvexInternalShape(&v17);
  v17 = &unk_282DCA7E8;
  v18 = 8;
  v19 = v4;
  v20 = v4;
  btPolyhedralConvexShape::btPolyhedralConvexShape(&v12);
  v12 = &unk_282DC92A0;
  v13 = 1;
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  v16 = a2[2];
  v10 = 953267991;
  v11 = 0;
  btSubsimplexConvexCast::btSubsimplexConvexCast(v7, &v17, &v12, v9);
  if (btSubsimplexConvexCast::calcTimeOfImpact(v7, (a1 + 16), (a1 + 80), &v8, &v8, v21) && *(a1 + 212) > v22)
  {
    *(a1 + 212) = v22;
  }

  C3DSceneSourcePerformConsistencyCheck(v7);
  btPolyhedralConvexShape::~btPolyhedralConvexShape(&v12);
  return C3DSceneSourcePerformConsistencyCheck(&v17);
}

double btConvexConvexAlgorithm::CreateFunc::CreateFunc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_282DC93E0;
  *&result = 0x300000000;
  *(a1 + 32) = 0x300000000;
  *(a1 + 16) = a3;
  *(a1 + 24) = a2;
  return result;
}

void btConvexConvexAlgorithm::~btConvexConvexAlgorithm(btConvexConvexAlgorithm *this)
{
  *this = &unk_282DC9408;
  if (*(this + 32) == 1 && *(this + 5))
  {
    (*(**(this + 1) + 32))(*(this + 1));
  }

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btConvexConvexAlgorithm::~btConvexConvexAlgorithm(this);

  JUMPOUT(0x21CF07610);
}

void btConvexConvexAlgorithm::processCollision(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v247 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 40);
  if (!v10)
  {
    v10 = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a2 + 16), *(a3 + 16));
    *(a1 + 40) = v10;
    *(a1 + 32) = 1;
  }

  a5[1] = v10;
  v11 = *(a2 + 8);
  v12 = *(a3 + 8);
  if (*(v11 + 8) == 10 && v12->i32[2] == 10)
  {
    ContactBreakingThreshold = btPersistentManifold::getContactBreakingThreshold(v10);
    v14 = *(v11 + 72);
    v15 = *(v11 + 48 + 4 * v14);
    v16 = (v14 + 2) % 3;
    v17 = v12[4].i32[2];
    v18 = v12[3].f32[v17];
    v19 = *(a2 + 24);
    v20 = *(a3 + 24);
    v21 = &v19->f32[v14];
    v22 = *v21;
    v23 = v21[4];
    v25.f32[0] = *v21;
    v24 = v21[8];
    v25.f32[1] = v23;
    v25.i64[1] = LODWORD(v24);
    v26 = &v20->i32[v17];
    v27.i32[0] = *v26;
    v27.i32[1] = v26[4];
    v27.i32[2] = v26[8];
    v28 = v20[3];
    v29 = vsubq_f32(v28, v19[3]);
    v29.i32[3] = 0;
    v30 = vmulq_f32(v25, v27);
    v31 = vadd_f32(vpadd_f32(*v30.i8, *v30.i8), *&vextq_s8(v30, v30, 8uLL)).f32[0];
    v32 = vmulq_f32(v25, v29);
    LODWORD(v33) = vadd_f32(vpadd_f32(*v32.i8, *v32.i8), *&vextq_s8(v32, v32, 8uLL)).u32[0];
    v34 = vmulq_f32(v27, v29);
    v35 = vadd_f32(vpadd_f32(*v34.i8, *v34.i8), *&vextq_s8(v34, v34, 8uLL)).f32[0];
    v36 = 1.0 - (v31 * v31);
    v37 = 0.0;
    if (v36 != 0.0)
    {
      v38 = (v33 + (-v35 * v31)) / v36;
      v37 = -v15;
      if (v38 >= -v15)
      {
        v37 = v38;
        if (v38 > v15)
        {
          v37 = v15;
        }
      }
    }

    v39 = v12[3].f32[(v17 + 2) % 3];
    v40 = (v37 * v31) - v35;
    v41 = -v18;
    if (v40 >= -v18)
    {
      if (v40 <= v18)
      {
        goto LABEL_80;
      }

      v61 = v33 + (v18 * v31);
      v37 = -v15;
      v40 = v12[3].f32[v17];
      if (v61 < -v15)
      {
        goto LABEL_80;
      }

      if (v61 <= v15)
      {
        v37 = v61;
        goto LABEL_80;
      }
    }

    else
    {
      v42 = v33 + (v41 * v31);
      v37 = -v15;
      v40 = v41;
      if (v42 < -v15)
      {
LABEL_80:
        v181 = vmulq_n_f32(v25, v37);
        v182 = vmulq_n_f32(v27, v40);
        v182.i32[3] = 0;
        v183 = vsubq_f32(v29, v181);
        v183.i32[3] = 0;
        v184 = vaddq_f32(v182, v183);
        v185 = vmulq_f32(v184, v184);
        LODWORD(v186) = vadd_f32(vpadd_f32(*v185.i8, *v185.i8), *&vextq_s8(v185, v185, 8uLL)).u32[0];
        v187 = sqrtf(v186);
        v188 = (v187 - *(v11 + 48 + 4 * v16)) - v39;
        if (v188 <= ContactBreakingThreshold)
        {
          if (v186 <= 1.4211e-14)
          {
            if (fabsf(v24) <= 0.70711)
            {
              v191 = 1.0 / sqrtf((v23 * v23) + (v22 * v22));
              v212.var0[0].var0.var0[0] = -(v23 * v191);
              *&v212.var0[0].var0.var0[1] = COERCE_UNSIGNED_INT(v22 * v191);
            }

            else
            {
              v190 = 1.0 / sqrtf((v24 * v24) + (v23 * v23));
              v212.var0[0].var0.var0[0] = 0.0;
              v212.var0[0].var0.var0[1] = -(v24 * v190);
              v212.var0[0].var0.var0[2] = v23 * v190;
            }
          }

          else
          {
            v189 = vmulq_n_f32(v184, -1.0 / v187);
            v189.i32[3] = 0;
            v212.var0[0] = v189;
          }

          v192 = vaddq_f32(v28, v182);
          v193 = vmulq_n_f32(v212.var0[0], v39);
          v193.i32[3] = 0;
          v238 = vaddq_f32(v192, v193);
        }

        if (v188 < ContactBreakingThreshold)
        {
          (*(*a5 + 32))(a5, &v212, &v238, v188);
        }

LABEL_89:
        v176 = a5[1];
        if (!*(v176 + 800))
        {
          return;
        }

        v180 = *(a5[2] + 16);
        if (*(v176 + 784) == v180)
        {
          v194 = (v180 + 16);
          v195 = (*(a5[3] + 16) + 16);
          goto LABEL_94;
        }

        v178 = *(a5[3] + 16);
LABEL_92:
        v194 = (v178 + 16);
        v195 = (v180 + 16);
LABEL_94:
        btPersistentManifold::refreshContactPoints(v176, v194, v195);
        return;
      }

      if (v42 <= v15)
      {
        v37 = v33 + (v41 * v31);
        goto LABEL_80;
      }
    }

    v37 = v15;
    goto LABEL_80;
  }

  v246 = 1.0e18;
  btGjkPairDetector::btGjkPairDetector(v233, v11, v12, *(a1 + 16), *(a1 + 24));
  v235 = v11;
  v236 = v12;
  v43 = (*(*v11 + 96))(v11);
  v44 = v43 + (*(v12->i64[0] + 96))(v12);
  v45 = btPersistentManifold::getContactBreakingThreshold(*(a1 + 40));
  v246 = (v44 + v45) * (v44 + v45);
  v46 = *(a2 + 24);
  v47 = v46[1];
  v238 = *v46;
  v239 = v47;
  v48 = v46[3];
  v240 = v46[2];
  v241 = v48;
  v49 = *(a3 + 24);
  v242 = *v49;
  v243 = v49[1];
  v244 = v49[2];
  v245 = v49[3];
  v50 = *(v11 + 8);
  if (v50 > 6)
  {
    goto LABEL_45;
  }

  v51 = v12->i32[2];
  if (v51 > 6)
  {
    goto LABEL_45;
  }

  v232 = &unk_282DC9440;
  v52 = 0.0;
  if (v50)
  {
    v53 = (*(*v11 + 96))(v11);
    if (!v12->i32[2])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v53 = 0.0;
  if (v51)
  {
LABEL_17:
    v52 = (*(v12->i64[0] + 96))(v12);
  }

LABEL_18:
  *v212.var0[0].var0.var0 = &unk_282DC9478;
  *&v212.var0[0].var0.var0[2] = a5;
  *v212.var0[2].var0.var0 = __PAIR64__(LODWORD(v52), LODWORD(v53));
  LOBYTE(v212.var0[2].var0.var0[3]) = 0;
  if (*(v11 + 72))
  {
    if (v12[4].i64[1])
    {
      v54 = btPersistentManifold::getContactBreakingThreshold(*(a1 + 40));
      if (*(a4 + 32) == 1)
      {
        if (btPolyhedralContactClipping::findSeparatingAxis(*(v11 + 72), v12[4].i64[1], *(a2 + 24), *(a3 + 24), &v229, a5))
        {
          v60 = -1.0e30;
LABEL_70:
          btPolyhedralContactClipping::clipHullAgainstHull(&v229, *(v11 + 72), v12[4].i64[1], *(a2 + 24), *(a3 + 24), a5, v60 - v54, v54, v55, v56, v57, v58, v59);
        }
      }

      else
      {
        btGjkPairDetector::getClosestPoints(v233, &v238, &v212, *(a4 + 24), 0);
        v229 = v212.var0[1];
        if (LOBYTE(v212.var0[2].var0.var0[3]) == 1)
        {
          v60 = v212.var0[2].var0.var0[2];
          if (v212.var0[2].var0.var0[2] < 0.0)
          {
            goto LABEL_70;
          }
        }
      }

      if (*(a1 + 32) == 1)
      {
        v176 = a5[1];
        if (*(v176 + 800))
        {
          v177 = *(v176 + 784);
          v178 = *(a5[2] + 16);
          v179 = v177 == v178;
          if (v177 == v178)
          {
            v180 = *(a5[3] + 16);
          }

          else
          {
            v180 = *(a5[2] + 16);
          }

          if (!v179)
          {
            v178 = *(a5[3] + 16);
          }

          goto LABEL_92;
        }
      }

      return;
    }

    if (v12->i32[2] == 1)
    {
      *&v229.var0.var0[1] = 0x100000000;
      v62 = *(a3 + 24);
      v63 = v12[5];
      v64 = vmulq_f32(*v62, v63);
      v65 = vmulq_f32(v63, v62[1]);
      v66 = vmulq_f32(v63, v62[2]);
      v66.i32[3] = 0;
      *v64.f32 = vadd_f32(vpadd_f32(*v64.f32, *v65.i8), vzip1_s32(*&vextq_s8(v64, v64, 8uLL), *&vextq_s8(v65, v65, 8uLL)));
      *&v64.u32[2] = vpadd_f32(vpadd_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL)), 0);
      v208 = vaddq_f32(v64, v62[3]);
      v67 = btAlignedAllocInternal(16, 16);
      *v67 = v208;
      v68 = *(a3 + 24);
      v69 = v12[6];
      v70 = vmulq_f32(*v68, v69);
      v71 = vmulq_f32(v69, v68[1]);
      v72 = vmulq_f32(v69, v68[2]);
      v72.i32[3] = 0;
      *v70.f32 = vadd_f32(vpadd_f32(*v70.f32, *v71.i8), vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v71, v71, 8uLL)));
      *&v70.u32[2] = vpadd_f32(vpadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)), 0);
      v209 = vaddq_f32(v70, v68[3]);
      v73 = btAlignedAllocInternal(32, 16);
      *v73 = *v67;
      btAlignedFreeInternal(v67);
      v231 = 1;
      v230 = v73;
      v73[1] = v209;
      v74 = *(a3 + 24);
      v75 = v12[7];
      v76 = vmulq_f32(*v74, v75);
      v77 = vmulq_f32(v75, v74[1]);
      v78 = vmulq_f32(v75, v74[2]);
      v78.i32[3] = 0;
      *v76.f32 = vadd_f32(vpadd_f32(*v76.f32, *v77.i8), vzip1_s32(*&vextq_s8(v76, v76, 8uLL), *&vextq_s8(v77, v77, 8uLL)));
      *&v76.u32[2] = vpadd_f32(vpadd_f32(*v78.i8, *&vextq_s8(v78, v78, 8uLL)), 0);
      v210 = vaddq_f32(v76, v74[3]);
      v79 = btAlignedAllocInternal(64, 16);
      v80 = v230;
      *v79 = *v230;
      v79[1] = *(v80 + 1);
      if (v231 == 1)
      {
        btAlignedFreeInternal(v80);
      }

      v231 = 1;
      v230 = v79;
      v79[2] = v210;
      *&v229.var0.var0[1] = 0x400000003;
      v81 = btPersistentManifold::getContactBreakingThreshold(*(a1 + 40));
      btGjkPairDetector::getClosestPoints(v233, &v238, &v232, *(a4 + 24), 0);
      v82 = vmulq_f32(v234, v234);
      v83 = vadd_f32(vpadd_f32(*v82.i8, *v82.i8), *&vextq_s8(v82, v82, 8uLL)).f32[0];
      if (v83 > 0.00000011921)
      {
        v84 = vmulq_n_f32(v234, 1.0 / v83);
        v84.i32[3] = 0;
        v228 = v84;
        v85 = v237;
        v86 = v85 - (*(*v11 + 96))(v11);
        v87 = (*(v12->i64[0] + 96))(v12);
        btPolyhedralContactClipping::clipFaceAgainstHull(&v228, *(v11 + 72), *(a2 + 24), &v229, a5, (v86 - v87) - v81, v81, v88, v89, v90, v91, v92);
      }

      if (*(a1 + 32) == 1)
      {
        v93 = a5[1];
        if (*(v93 + 800))
        {
          v94 = *(v93 + 784);
          v95 = *(a5[2] + 16);
          _ZF = v94 == v95;
          if (v94 == v95)
          {
            v97 = *(a5[3] + 16);
          }

          else
          {
            v97 = *(a5[2] + 16);
          }

          if (!_ZF)
          {
            v95 = *(a5[3] + 16);
          }

          btPersistentManifold::refreshContactPoints(v93, (v95 + 16), (v97 + 16));
        }
      }

      if (v230 && v231 == 1)
      {
        btAlignedFreeInternal(v230);
      }

      return;
    }
  }

LABEL_45:
  btGjkPairDetector::getClosestPoints(v233, &v238, a5, *(a4 + 24), 0);
  if (*(a1 + 52))
  {
    if (*(a5[1] + 800) < *(a1 + 56))
    {
      v98 = vmulq_f32(v234, v234);
      v99 = vpadd_f32(*v98.i8, *v98.i8);
      v100 = vextq_s8(v98, v98, 8uLL);
      v101 = vadd_f32(v99, *v100.i8).f32[0];
      if (v101 > 0.00000011921)
      {
        _Q3 = vmulq_n_f32(v234, 1.0 / v101);
        v102 = _Q3.f32[2];
        _Q3.i32[3] = 0;
        v207 = _Q3;
        _S1 = _Q3.i32[1];
        if (fabsf(_Q3.f32[2]) <= 0.70711)
        {
          v111 = vdup_lane_s32(*_Q3.f32, 0);
          v111.f32[0] = -_Q3.f32[1];
          *v100.i8 = vmul_n_f32(v111, 1.0 / sqrtf(vmuls_lane_f32(_Q3.f32[1], *_Q3.f32, 1) + (_Q3.f32[0] * _Q3.f32[0])));
          v201 = v100;
        }

        else
        {
          __asm { FMLA            S2, S1, V3.S[1] }

          v109 = 1.0 / sqrtf(_S2);
          v110.i32[0] = 0;
          v110.f32[1] = -(_Q3.f32[2] * v109);
          v110.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v109, *_Q3.f32, 1));
          v201 = v110;
        }

        v112 = (*(*v11 + 32))(v11);
        v113 = (*(v12->i64[0] + 32))(v12);
        if (v112 >= v113)
        {
          v114 = &v243;
          v115 = &v244;
          v116 = &v245;
          v117 = *&gContactBreakingThreshold / v113;
          if ((*&gContactBreakingThreshold / v113) > 0.3927)
          {
            v117 = 0.3927;
          }

          v118 = v242;
        }

        else
        {
          v114 = &v239;
          v115 = &v240;
          v116 = &v241;
          v117 = *&gContactBreakingThreshold / v112;
          if ((*&gContactBreakingThreshold / v112) > 0.3927)
          {
            v117 = 0.3927;
          }

          v118 = v238;
        }

        v206 = v118;
        v119 = *(a1 + 52);
        if (v119 >= 1)
        {
          v204 = *v115;
          v205 = *v114;
          v203 = *v116;
          v120 = vmulq_f32(v201, v201);
          LODWORD(v211) = vadd_f32(*&vextq_s8(v120, v120, 8uLL), vpadd_f32(*v120.i8, *v120.i8)).u32[0];
          v121 = __sincosf_stret(v117 * 0.5);
          v122 = 0;
          v123 = v121.__sinval / sqrtf(v211);
          *&v124 = vmuls_lane_f32(v123, v201, 2);
          v125 = vmulq_n_f32(v201, v123);
          v126.i64[0] = v125.i64[0];
          v126.i64[1] = __PAIR64__(LODWORD(v121.__cosval), v124);
          v127 = vmulq_f32(v207, v207);
          v128 = vextq_s8(v126, v126, 8uLL).u64[0];
          *v129.f32 = vzip1_s32(v128, *v125.i8);
          v130 = vextq_s8(v126, v125, 0xCuLL).u64[0];
          *v131.f32 = vext_s8(*v125.i8, v128, 4uLL);
          v202 = v126;
          *v126.f32 = vdup_laneq_s32(v126, 3);
          v132 = vrev64_s32(*v129.f32);
          *&v126.u32[2] = vdup_lane_s32(*v125.i8, 1);
          v200 = v126;
          v133 = sqrtf(vadd_f32(*&vextq_s8(v127, v127, 8uLL), vpadd_f32(*v127.i8, *v127.i8)).f32[0]);
          v125.i64[0] = v131.i64[0];
          v125.u64[1] = v132;
          v197 = v125;
          v125.i64[0] = v129.i64[0];
          v125.i64[1] = v130;
          v196 = v125;
          *&v131.u32[2] = v132;
          v198 = v131;
          v129.i64[1] = v130;
          v199 = v129;
          do
          {
            if (v211 > 0.00000011921)
            {
              v134 = __sincosf_stret(((6.2832 / v119) * v122) * 0.5);
              v135 = vmulq_n_f32(v207, v134.__sinval / v133);
              v136.i64[0] = v135.i64[0];
              v136.i64[1] = __PAIR64__(LODWORD(v134.__cosval), v102 * (v134.__sinval / v133));
              v137 = veorq_s8(v136, xmmword_21C27FD40);
              v138 = vextq_s8(v136, v136, 8uLL).u64[0];
              v139 = vextq_s8(v136, v135, 8uLL);
              if (v112 >= v113)
              {
                v161 = *(a2 + 24);
                v162 = v161[1];
                v238 = *v161;
                v239 = v162;
                v163 = v161[3];
                v240 = v161[2];
                v241 = v163;
                v164 = vextq_s8(v137, v137, 8uLL).u64[0];
                *v163.f32 = vzip1_s32(v164, *v137.f32);
                *v165.f32 = vext_s8(*v137.f32, v164, 4uLL);
                v166.i64[0] = v163.i64[0];
                v166.i64[1] = v165.i64[0];
                v165.i64[1] = v163.i64[0];
                v167 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v202, v137, 3), vmulq_f32(v198, v166)), veorq_s8(vaddq_f32(vmulq_f32(v200, vdupq_lane_s64(v137.i64[0], 0)), vmulq_f32(v199, v165)), xmmword_21C27FD30));
                *v163.f32 = vzip1_s32(v138, *v135.i8);
                v166.i64[0] = vextq_s8(v136, v135, 0xCuLL).u64[0];
                v168.i64[0] = vextq_s8(v167, v167, 4uLL).u64[0];
                *v169.f32 = vext_s8(*v135.i8, v138, 4uLL);
                *v170.f32 = vzip1_s32(*&vextq_s8(v167, v167, 8uLL), *v167.f32);
                v170.i64[1] = v168.i64[0];
                *&v169.u32[2] = vrev64_s32(*v163.f32);
                v168.i64[1] = v170.i64[0];
                v163.i64[1] = v166.i64[0];
                v229 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v136, v167, 3), vmulq_f32(v169, v170)), veorq_s8(vaddq_f32(vmulq_f32(vtrn2q_s32(v139, v139), vdupq_lane_s64(v167.i64[0], 0)), vmulq_f32(v163, v168)), xmmword_21C27FD30));
                btMatrix3x3::setRotation(&v212, &v229);
                v171 = *(a3 + 24);
                v172 = *v171;
                v173 = v171[1];
                v172.i32[3] = 0;
                v173.i32[3] = 0;
                v174 = v171[2];
                v174.i32[3] = 0;
                v157 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v212.var0[0].var0.var0[0]), v173, *v212.var0[0].var0.var0, 1), v174, v212.var0[0], 2);
                v158 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v212.var0[1].var0.var0[0]), v173, *v212.var0[1].var0.var0, 1), v174, v212.var0[1], 2);
                v159 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v212.var0[2].var0.var0[0]), v173, *v212.var0[2].var0.var0, 1), v174, v212.var0[2], 2);
                v242 = v157;
                v243 = v158;
                v244 = v159;
                v153 = v238;
                v154 = v239;
                v155 = v240;
                v160 = v245;
              }

              else
              {
                v140 = vextq_s8(v137, v137, 8uLL).u64[0];
                v141 = vzip1_s32(v140, *v137.f32);
                *v142.f32 = vext_s8(*v137.f32, v140, 4uLL);
                *v143.f32 = v141;
                v143.i64[1] = v142.i64[0];
                *&v142.u32[2] = v141;
                v144 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v202, v137, 3), vmulq_f32(v197, v143)), veorq_s8(vaddq_f32(vmulq_f32(v200, vdupq_lane_s64(v137.i64[0], 0)), vmulq_f32(v196, v142)), xmmword_21C27FD30));
                *v145.f32 = vzip1_s32(v138, *v135.i8);
                v143.i64[0] = vextq_s8(v136, v135, 0xCuLL).u64[0];
                v146.i64[0] = vextq_s8(v144, v144, 4uLL).u64[0];
                *v147.f32 = vext_s8(*v135.i8, v138, 4uLL);
                *v148.f32 = vzip1_s32(*&vextq_s8(v144, v144, 8uLL), *v144.f32);
                v148.i64[1] = v146.i64[0];
                *&v147.u32[2] = vrev64_s32(*v145.f32);
                v146.i64[1] = v148.i64[0];
                v145.i64[1] = v143.i64[0];
                v229 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v136, v144, 3), vmulq_f32(v147, v148)), veorq_s8(vaddq_f32(vmulq_f32(vtrn2q_s32(v139, v139), vdupq_lane_s64(v144.i64[0], 0)), vmulq_f32(v145, v146)), xmmword_21C27FD30));
                btMatrix3x3::setRotation(&v212, &v229);
                v149 = *(a2 + 24);
                v150 = *v149;
                v151 = v149[1];
                v150.i32[3] = 0;
                v151.i32[3] = 0;
                v152 = v149[2];
                v152.i32[3] = 0;
                v153 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150, v212.var0[0].var0.var0[0]), v151, *v212.var0[0].var0.var0, 1), v152, v212.var0[0], 2);
                v154 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150, v212.var0[1].var0.var0[0]), v151, *v212.var0[1].var0.var0, 1), v152, v212.var0[1], 2);
                v155 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150, v212.var0[2].var0.var0[0]), v151, *v212.var0[2].var0.var0, 1), v152, v212.var0[2], 2);
                v238 = v153;
                v239 = v154;
                v240 = v155;
                v156 = *(a3 + 24);
                v157 = *v156;
                v242 = *v156;
                v158 = v156[1];
                v243 = v158;
                v159 = v156[2];
                v244 = v159;
                v160 = v156[3];
                v245 = v160;
              }

              v175 = *(a4 + 24);
              *v212.var0[0].var0.var0 = &unk_282DC94B0;
              v213 = a5;
              v214 = v153;
              v215 = v154;
              v216 = v155;
              v217 = v241;
              v218 = v157;
              v219 = v158;
              v220 = v159;
              v221 = v160;
              v222 = v206;
              v223 = v205;
              v224 = v204;
              v225 = v203;
              v226 = v112 < v113;
              v227 = v175;
              btGjkPairDetector::getClosestPoints(v233, &v238, &v212, v175, 0);
              v119 = *(a1 + 52);
            }

            ++v122;
          }

          while (v122 < v119);
        }
      }
    }
  }

  if (*(a1 + 32) == 1)
  {
    goto LABEL_89;
  }
}

float btConvexConvexAlgorithm::calculateTimeOfImpact(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = vsubq_f32(*(a2 + 128), *(a2 + 64));
  v5.i32[3] = 0;
  v6 = vmulq_f32(v5, v5);
  if (vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0] >= (*(a2 + 288) * *(a2 + 288)) || (v7 = vsubq_f32(*(a3 + 128), *(a3 + 64)), v7.i32[3] = 0, v8 = vmulq_f32(v7, v7), v9 = 1.0, vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] >= (*(a3 + 288) * *(a3 + 288))))
  {
    v9 = 1.0;
    if ((disableCcd & 1) == 0)
    {
      v10 = *(a2 + 208);
      v11 = *(a3 + 284);
      btConvexInternalShape::btConvexInternalShape(&v26);
      v26 = &unk_282DCA7E8;
      v27 = 8;
      v28 = v11;
      v29 = v11;
      v22[0].i64[0] = &unk_282DC8F18;
      v23 = 1.0e18;
      v24 = 0;
      v25 = 0;
      v20 = 953267991;
      v21 = 0;
      btGjkConvexCast::btGjkConvexCast(v18, v10, &v26, v19);
      v9 = 1.0;
      if (btGjkConvexCast::calcTimeOfImpact(v18, (a2 + 16), (a2 + 80), (a3 + 16), (a3 + 80), v22))
      {
        v12 = v23;
        if (*(a2 + 280) > v23)
        {
          *(a2 + 280) = v23;
        }

        if (*(a3 + 280) > v12)
        {
          *(a3 + 280) = v12;
        }

        if (v12 < 1.0)
        {
          v9 = v12;
        }

        else
        {
          v9 = 1.0;
        }
      }

      C3DSceneSourcePerformConsistencyCheck(v18);
      v13 = C3DSceneSourcePerformConsistencyCheck(&v26);
      v14 = *(a3 + 208);
      v15 = *(a2 + 284);
      btConvexInternalShape::btConvexInternalShape(v13);
      v26 = &unk_282DCA7E8;
      v27 = 8;
      v28 = v15;
      v29 = v15;
      v22[0].i64[0] = &unk_282DC8F18;
      v23 = 1.0e18;
      v24 = 0;
      v25 = 0;
      v20 = 953267991;
      v21 = 0;
      btGjkConvexCast::btGjkConvexCast(v18, &v26, v14, v19);
      if (btGjkConvexCast::calcTimeOfImpact(v18, (a2 + 16), (a2 + 80), (a3 + 16), (a3 + 80), v22))
      {
        v16 = v23;
        if (*(a2 + 280) > v23)
        {
          *(a2 + 280) = v23;
        }

        if (*(a3 + 280) > v16)
        {
          *(a3 + 280) = v16;
        }

        if (v9 > v16)
        {
          v9 = v16;
        }
      }

      C3DSceneSourcePerformConsistencyCheck(v18);
      C3DSceneSourcePerformConsistencyCheck(&v26);
    }
  }

  return v9;
}

int8x16_t btConvexConvexAlgorithm::CreateFunc::CreateCollisionAlgorithm(int8x16_t *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 112))(*a2, 64);
  v5 = a2[1];
  v6 = a1[2].i64[0];
  v9 = a1[1];
  v7 = btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(v4, a2);
  *v7 = &unk_282DC9408;
  result = vextq_s8(v9, v9, 8uLL);
  *(v7 + 1) = result;
  *(v7 + 32) = 0;
  v7[5] = v5;
  *(v7 + 48) = 0;
  *(v7 + 52) = v6;
  return result;
}

void btConvexConvexAlgorithm::getAllContactManifolds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 && *(a1 + 32) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = btAlignedAllocInternal(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            btAlignedFreeInternal(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(a1 + 40);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

uint64_t btConvexConvexAlgorithm::processCollision(btCollisionObjectWrapper const*,btCollisionObjectWrapper const*,btDispatcherInfo const&,btManifoldResult *)::btWithoutMarginResult::addContactPoint(uint64_t a1, _OWORD *a2, float a3)
{
  *(a1 + 40) = a3;
  *(a1 + 16) = *a2;
  v3 = (*(a1 + 36) + *(a1 + 32)) + a3;
  *(a1 + 40) = v3;
  if (v3 < 0.0)
  {
    *(a1 + 44) = 1;
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8));
}

uint64_t btPerturbedContactResult::addContactPoint(btPerturbedContactResult *this, float32x4_t *a2, float32x4_t *a3, float a4)
{
  v4 = *a2;
  v5 = vmulq_n_f32(*a2, a4);
  v5.i32[3] = 0;
  v6 = *a3;
  if (*(this + 256) == 1)
  {
    v7 = *(this + 4);
    v8 = *(this + 5);
    v9 = *(this + 6);
    v10 = vtrn1q_s32(v7, v8);
    v11 = vzip2_s32(*v9.f32, 0);
    v12 = vextq_s8(v9, v9, 8uLL).u32[0];
    v9.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
    v10.i64[1] = *(this + 6);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v14 = veorq_s8(*(this + 7), v13);
    v15 = vmulq_f32(v10, v14);
    *v7.f32 = vzip2_s32(*v7.f32, *v8.i8);
    *&v7.u32[2] = v11;
    v16 = vmulq_f32(v7, v14);
    v9.i64[1] = v12;
    v17 = vmulq_f32(v9, v14);
    v17.i32[3] = 0;
    v18 = *(this + 12);
    v19 = *(this + 13);
    *v16.f32 = vadd_f32(vpadd_f32(*v15.i8, *v16.f32), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
    *&v16.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
    v10.i32[3] = 0;
    v7.i32[3] = 0;
    v9.i32[3] = 0;
    v20 = *(this + 14);
    v21 = vmlaq_lane_f32(vmulq_n_f32(v10, v20.f32[0]), v7, *v20.f32, 1);
    v22 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v19.f32[0]), v7, *v19.f32, 1), v9, v19, 2);
    v23 = vmulq_f32(v18, v16);
    v24 = vmulq_f32(v19, v16);
    v25 = vmulq_f32(v20, v16);
    v25.i32[3] = 0;
    v26 = vaddq_f32(v6, v5);
    v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v18.f32[0]), v7, *v18.f32, 1), v9, v18, 2);
    *v7.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)), vpadd_f32(*v23.i8, *v24.i8));
    *&v7.u32[2] = vpadd_f32(vpadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL)), 0);
    v28 = vmlaq_laneq_f32(v21, v9, v20, 2);
    v29 = vaddq_f32(v7, *(this + 15));
    v30 = vmulq_f32(v26, v27);
    v31 = vmulq_f32(v26, v22);
    v32 = vmulq_f32(v26, v28);
    v32.i32[3] = 0;
    *v30.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL)), vpadd_f32(*v30.f32, *v31.i8));
    *&v30.u32[2] = vpadd_f32(vpadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)), 0);
    v33 = vsubq_f32(vaddq_f32(v29, v30), v6);
    v33.i32[3] = 0;
    v34 = vmulq_f32(v4, v33);
    v35 = vpadd_f32(*v34.i8, *v34.i8);
    v36 = vextq_s8(v34, v34, 8uLL);
    v36.n128_u64[0] = vadd_f32(v35, v36.n128_u64[0]);
  }

  else
  {
    v37 = *(this + 8);
    v38 = *(this + 9);
    v39 = *(this + 10);
    v40 = vtrn1q_s32(v37, v38);
    v41 = vzip2_s32(*v39.f32, 0);
    v42 = vextq_s8(v39, v39, 8uLL).u32[0];
    v39.i64[0] = vextq_s8(v40, v40, 8uLL).u64[0];
    v40.i64[1] = *(this + 10);
    v43.i64[0] = 0x8000000080000000;
    v43.i64[1] = 0x8000000080000000;
    v44 = veorq_s8(*(this + 11), v43);
    v45 = vmulq_f32(v40, v44);
    *v37.f32 = vzip2_s32(*v37.f32, *v38.i8);
    *&v37.u32[2] = v41;
    v46 = vmulq_f32(v37, v44);
    v39.i64[1] = v42;
    v47 = vmulq_f32(v39, v44);
    v47.i32[3] = 0;
    v48 = *(this + 12);
    v49 = *(this + 13);
    *v46.f32 = vadd_f32(vpadd_f32(*v45.i8, *v46.f32), vzip1_s32(*&vextq_s8(v45, v45, 8uLL), *&vextq_s8(v46, v46, 8uLL)));
    *&v46.u32[2] = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
    v40.i32[3] = 0;
    v37.i32[3] = 0;
    v39.i32[3] = 0;
    v50 = *(this + 14);
    v51 = vmlaq_lane_f32(vmulq_n_f32(v40, v50.f32[0]), v37, *v50.f32, 1);
    v52 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v49.f32[0]), v37, *v49.f32, 1), v39, v49, 2);
    v53 = vmulq_f32(v48, v46);
    v54 = vmulq_f32(v49, v46);
    v55 = vmulq_f32(v50, v46);
    v55.i32[3] = 0;
    v56 = vaddq_f32(v6, v5);
    v57 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v48.f32[0]), v37, *v48.f32, 1), v39, v48, 2);
    v58 = vmlaq_laneq_f32(v51, v39, v50, 2);
    *v39.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vpadd_f32(*v53.i8, *v54.i8));
    *&v39.u32[2] = vpadd_f32(vpadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL)), 0);
    v59 = vmulq_f32(v6, v57);
    v60 = vmulq_f32(v6, v52);
    v61 = vmulq_f32(v6, v58);
    v61.i32[3] = 0;
    *v59.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v59, v59, 8uLL), *&vextq_s8(v60, v60, 8uLL)), vpadd_f32(*v59.f32, *v60.i8));
    *&v59.u32[2] = vpadd_f32(vpadd_f32(*v61.i8, *&vextq_s8(v61, v61, 8uLL)), 0);
    v62 = vsubq_f32(v56, vaddq_f32(vaddq_f32(v39, *(this + 15)), v59));
    v62.i32[3] = 0;
    v63 = vmulq_f32(v4, v62);
    v64 = vpadd_f32(*v63.i8, *v63.i8);
    v36 = vextq_s8(v63, v63, 8uLL);
    v36.n128_u64[0] = vadd_f32(v64, v36.n128_u64[0]);
  }

  return (*(**(this + 6) + 32))(*(this + 6), v36);
}

uint64_t btConvexPlaneCollisionAlgorithm::btConvexPlaneCollisionAlgorithm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = btCollisionAlgorithm::btCollisionAlgorithm(a1, a3);
  *v15 = &unk_282DC94E8;
  *(v15 + 16) = 0;
  v15[3] = a2;
  *(v15 + 32) = a6;
  *(v15 + 9) = a7;
  *(v15 + 10) = a8;
  if (!a2)
  {
    v16 = a6 == 0;
    if (a6)
    {
      v17 = a4;
    }

    else
    {
      v17 = a5;
    }

    if (v16)
    {
      a5 = a4;
    }

    if ((*(**(a1 + 8) + 48))(*(a1 + 8), *(a5 + 16), *(v17 + 16)))
    {
      *(a1 + 24) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a5 + 16), *(v17 + 16));
      *(a1 + 16) = 1;
    }
  }

  return a1;
}

void btConvexPlaneCollisionAlgorithm::~btConvexPlaneCollisionAlgorithm(btConvexPlaneCollisionAlgorithm *this)
{
  *this = &unk_282DC94E8;
  if (*(this + 16) == 1)
  {
    if (*(this + 3))
    {
      (*(**(this + 1) + 32))(*(this + 1));
    }
  }
}

{
  btConvexPlaneCollisionAlgorithm::~btConvexPlaneCollisionAlgorithm(this);

  JUMPOUT(0x21CF07610);
}

void btConvexPlaneCollisionAlgorithm::collideSingleContact(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a1 + 32))
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (*(a1 + 32))
  {
    v9 = a3;
  }

  else
  {
    v9 = a4;
  }

  v10 = *(v8 + 8);
  v11 = *(v9 + 8);
  v12 = *(v8 + 24);
  v72 = v12[1];
  v73 = *v12;
  v13 = v12[3];
  v71 = v12[2];
  v14 = *(v9 + 24);
  v15 = *(v14 + 1);
  v16 = vtrn1q_s32(*v14, v15);
  v17 = *(v14 + 2);
  v18.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
  v16.i64[1] = v17.u32[0];
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  v20 = veorq_s8(*(v14 + 3), v19);
  v21 = vmulq_f32(v16, v20);
  *v22.f32 = vzip2_s32(*v14, *v15.f32);
  *&v22.u32[2] = vzip2_s32(*v17.i8, 0);
  v23 = vmulq_f32(v22, v20);
  v18.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
  v24 = vmulq_f32(v18, v20);
  v24.i32[3] = 0;
  v25 = vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
  v83 = vadd_f32(vpadd_f32(*v21.i8, *v23.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
  v26 = v73;
  v26.i32[3] = 0;
  v27 = v72;
  v27.i32[3] = 0;
  v28 = v71;
  v28.i32[3] = 0;
  v85 = vmlaq_laneq_f32(vmulq_laneq_f32(v26, *v14, 2), v27, v15, 2);
  v69 = v17;
  v70 = v28;
  v79 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v26, *v14, 1), v27, *v15.f32, 1), v28, *v17.i8, 1);
  v29 = vmulq_f32(v13, v16);
  v30 = vmulq_f32(v13, v22);
  v31 = vmulq_f32(v13, v18);
  v31.i32[3] = 0;
  v81 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vpadd_f32(*v29.i8, *v30.i8));
  v75 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v26, COERCE_FLOAT(*v14)), v27, v15.f32[0]), v28, *v17.i32);
  v77 = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
  btMatrix3x3::setRotation(&v89, a2);
  v32 = v89.var0[0];
  v33 = v89.var0[1];
  v32.i32[3] = 0;
  v33.i32[3] = 0;
  v34 = v89.var0[2];
  v34.i32[3] = 0;
  v35 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v73.f32[0]), v33, *v73.f32, 1), v34, v73, 2);
  v36 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v72.f32[0]), v33, *v72.f32, 1), v34, v72, 2);
  v37 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v71.f32[0]), v33, *v71.f32, 1), v34, v71, 2);
  v38 = *(v9 + 24);
  v39 = *v38;
  v40 = v38[1];
  v39.i32[3] = 0;
  v40.i32[3] = 0;
  v41 = v38[2];
  v41.i32[3] = 0;
  v42 = vmlaq_laneq_f32(vmulq_laneq_f32(v39, v35, 2), v40, v36, 2);
  v43 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v39, *v35.f32, 1), v40, *v36.f32, 1), v41, *v37.f32, 1);
  v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v39, v35.f32[0]), v40, v36.f32[0]), v41, v37.f32[0]);
  v45 = vmlaq_laneq_f32(v42, v41, v37, 2);
  v40.i64[0] = 0x8000000080000000;
  v40.i64[1] = 0x8000000080000000;
  v46 = veorq_s8(*(v11 + 64), v40);
  v47 = vmulq_f32(v44, v46);
  v48 = vmulq_f32(v43, v46);
  v49 = vmulq_f32(v45, v46);
  v49.i32[3] = 0;
  *v47.i8 = vadd_f32(vpadd_f32(*v47.i8, *v48.i8), vzip1_s32(*&vextq_s8(v47, v47, 8uLL), *&vextq_s8(v48, v48, 8uLL)));
  v47.u64[1] = vpadd_f32(vpadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)), 0);
  v88 = v47;
  (*(*v10 + 128))(&v89, v10, &v88);
  v50 = vmulq_f32(v75, v89.var0[0]);
  v51 = vmulq_f32(v79, v89.var0[0]);
  v52 = vmulq_f32(vmlaq_laneq_f32(v85, v70, v69, 2), v89.var0[0]);
  v52.i32[3] = 0;
  *v50.f32 = vadd_f32(vpadd_f32(*v50.f32, *v51.f32), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
  *v53.f32 = v81;
  *&v53.u32[2] = v77;
  *v51.f32 = v83;
  *&v51.u32[2] = vpadd_f32(v25, 0);
  *&v50.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
  v78 = vaddq_f32(vaddq_f32(v51, v53), v50);
  v74 = *(v11 + 64);
  v54 = vmulq_f32(v74, v78);
  v86 = vadd_f32(vpadd_f32(*v54.i8, *v54.i8), *&vextq_s8(v54, v54, 8uLL)).f32[0] - *(v11 + 80);
  v55 = *(v9 + 24);
  v80 = v55[1];
  v82 = *v55;
  v76 = v55[2];
  v84 = v55[3];
  ContactBreakingThreshold = btPersistentManifold::getContactBreakingThreshold(*(a1 + 24));
  a6[1] = *(a1 + 24);
  if (v86 < ContactBreakingThreshold)
  {
    v57 = vmulq_n_f32(v74, v86);
    v57.i32[3] = 0;
    v58 = vsubq_f32(v78, v57);
    v59 = v58;
    v59.i32[3] = 0;
    v60 = vmulq_f32(v76, v58);
    v61 = vmulq_f32(v82, v59);
    v62 = vmulq_f32(v80, v59);
    *v62.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v61, v61, 8uLL), *&vextq_s8(v62, v62, 8uLL)), vpadd_f32(*v61.i8, *v62.f32));
    v60.i32[3] = 0;
    *&v62.u32[2] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
    v63 = vaddq_f32(v84, v62);
    v64 = *(v9 + 24);
    v65 = *(v11 + 64);
    v66 = vmulq_f32(*v64, v65);
    v67 = vmulq_f32(v65, v64[1]);
    v68 = vmulq_f32(v65, v64[2]);
    v68.i32[3] = 0;
    *v66.i8 = vadd_f32(vpadd_f32(*v66.i8, *v67.i8), vzip1_s32(*&vextq_s8(v66, v66, 8uLL), *&vextq_s8(v67, v67, 8uLL)));
    v66.u64[1] = vpadd_f32(vpadd_f32(*v68.i8, *&vextq_s8(v68, v68, 8uLL)), 0);
    v87 = v63;
    v88 = v66;
    (*(*a6 + 32))(a6, &v88, &v87, v86);
  }
}

void btConvexPlaneCollisionAlgorithm::processCollision(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      v9 = a3;
    }

    else
    {
      v9 = a2;
    }

    if (*(a1 + 32))
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(v9 + 8);
    v12 = *(v10 + 8);
    v13 = *(v9 + 24);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v10 + 24);
    v17 = *(v16 + 1);
    v18 = *v16;
    v18.i32[3] = 0;
    v19 = v17;
    v19.i32[3] = 0;
    v20 = vmlaq_n_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v13)), v19, v14.f32[0]);
    v21 = vmlaq_laneq_f32(vmulq_laneq_f32(v18, *v13, 2), v19, v14, 2);
    v22 = vmlaq_lane_f32(vmulq_lane_f32(v18, *v13->f32, 1), v19, *v14.f32, 1);
    v23 = *(v16 + 2);
    v24 = vextq_s8(v23, v23, 8uLL).u32[0];
    v15.i32[3] = 0;
    v14.i32[3] = 0;
    v25 = v13[2];
    v26 = v13[3];
    v27 = v25;
    v27.i32[3] = 0;
    v116 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v15, COERCE_FLOAT(*v16)), v14, v17.f32[0]), v27, v23.f32[0]);
    v119 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, *v16, 2), v14, v17, 2), v27, v23, 2);
    v122 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v15, *v16, 1), v14, *v17.f32, 1), v27, *v23.f32, 1);
    v23.i32[3] = 0;
    v28 = vtrn1q_s32(*v16, v17);
    v15.i64[0] = vextq_s8(v28, v28, 8uLL).u64[0];
    v28.i64[1] = v16[2];
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v30 = veorq_s8(*(v16 + 3), v29);
    v31 = vmulq_f32(v28, v30);
    *v32.f32 = vzip2_s32(*v16, *v17.f32);
    *&v32.u32[2] = vzip2_s32(*v23.f32, 0);
    v33 = vmulq_f32(v32, v30);
    v15.i64[1] = v24;
    v34 = vmulq_f32(v15, v30);
    v34.i32[3] = 0;
    v113 = vadd_f32(vpadd_f32(*v31.i8, *v33.i8), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v33, v33, 8uLL)));
    v35 = vmulq_f32(v28, v26);
    v36 = vmulq_f32(v32, v26);
    v37 = vmulq_f32(v15, v26);
    v37.i32[3] = 0;
    v109 = vadd_f32(vpadd_f32(*v35.i8, *v36.i8), vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v36, v36, 8uLL)));
    v111 = vpadd_f32(vpadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)), 0);
    v38 = veorq_s8(*(v12 + 64), v29);
    v39 = vmulq_f32(vmlaq_n_f32(v20, v23, v25.f32[0]), v38);
    v40 = vmulq_f32(vmlaq_lane_f32(v22, v23, *v25.f32, 1), v38);
    v41 = vmulq_f32(vmlaq_laneq_f32(v21, v23, v25, 2), v38);
    v41.i32[3] = 0;
    *v39.i8 = vadd_f32(vpadd_f32(*v39.i8, *v40.i8), vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v40, v40, 8uLL)));
    v39.u64[1] = vpadd_f32(vpadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)), 0);
    v106 = vpadd_f32(vpadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), 0);
    v127 = v39;
    (*(*v11 + 128))(&v128, v11, &v127);
    v42 = vmulq_f32(v116, v128);
    v43 = vmulq_f32(v122, v128);
    v44 = vmulq_f32(v119, v128);
    v44.i32[3] = 0;
    *v42.f32 = vadd_f32(vpadd_f32(*v42.f32, *v43.f32), vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)));
    *v45.f32 = v109;
    *&v45.u32[2] = v106;
    *v43.f32 = v113;
    *&v43.u32[2] = v111;
    *&v42.u32[2] = vpadd_f32(vpadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL)), 0);
    v112 = vaddq_f32(vaddq_f32(v43, v45), v42);
    v107 = *(v12 + 64);
    v46 = vmulq_f32(v107, v112);
    v123 = vadd_f32(vpadd_f32(*v46.i8, *v46.i8), *&vextq_s8(v46, v46, 8uLL)).f32[0] - *(v12 + 80);
    v47 = *(v10 + 24);
    v114 = v47[1];
    v117 = *v47;
    v110 = v47[2];
    v120 = v47[3];
    ContactBreakingThreshold = btPersistentManifold::getContactBreakingThreshold(*(a1 + 24));
    a5[1] = *(a1 + 24);
    if (v123 < ContactBreakingThreshold)
    {
      v49 = vmulq_n_f32(v107, v123);
      v49.i32[3] = 0;
      v50 = vsubq_f32(v112, v49);
      v51 = v50;
      v51.i32[3] = 0;
      v52 = vmulq_f32(v110, v50);
      v53 = vmulq_f32(v117, v51);
      v54 = vmulq_f32(v114, v51);
      *v54.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vpadd_f32(*v53.i8, *v54.f32));
      v52.i32[3] = 0;
      *&v54.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
      v55 = vaddq_f32(v120, v54);
      v56 = *(v10 + 24);
      v57 = *(v12 + 64);
      v58 = vmulq_f32(*v56, v57);
      v59 = vmulq_f32(v57, v56[1]);
      v60 = vmulq_f32(v57, v56[2]);
      v60.i32[3] = 0;
      *v58.i8 = vadd_f32(vpadd_f32(*v58.i8, *v59.i8), vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v59, v59, 8uLL)));
      v58.u64[1] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
      v126 = v55;
      v127 = v58;
      (*(*a5 + 32))(a5, &v127, &v126, v123);
    }

    if (v11[2] <= 6 && *(a5[1] + 800) < *(a1 + 40))
    {
      v61 = *(v12 + 72);
      if (fabsf(v61) <= 0.70711)
      {
        v67 = *(v12 + 64);
        v68 = *(v12 + 68);
        v69 = 1.0 / sqrtf((v68 * v68) + (v67 * v67));
        v70 = v67 * v69;
        v66.i64[1] = 0;
        v66.f32[0] = -(v68 * v69);
        v66.f32[1] = v70;
      }

      else
      {
        v62 = *(v12 + 68);
        v63 = 1.0 / sqrtf((v61 * v61) + (v62 * v62));
        v64 = -(v61 * v63);
        *&v65 = v62 * v63;
        v66.i32[0] = 0;
        v66.f32[1] = v64;
        v66.i64[1] = v65;
      }

      v124 = v66;
      v71 = *&gContactBreakingThreshold / (*(*v11 + 32))(v11);
      if (v71 > 0.3927)
      {
        v71 = 0.3927;
      }

      v72 = __sincosf_stret(v71 * 0.5);
      v73 = *(a1 + 36);
      if (v73 >= 1)
      {
        v74 = 0;
        v75 = vmulq_f32(v124, v124);
        v76 = v72.__sinval / sqrtf(vadd_f32(*&vextq_s8(v75, v75, 8uLL), vpadd_f32(*v75.i8, *v75.i8)).f32[0]);
        *v75.i32 = vmuls_lane_f32(v76, v124, 2);
        v77 = vmulq_n_f32(v124, v76);
        v78.i64[0] = v77.i64[0];
        v78.i64[1] = __PAIR64__(LODWORD(v72.__cosval), v75.u32[0]);
        v79 = vextq_s8(v78, v78, 8uLL).u64[0];
        *v75.i8 = vzip1_s32(v79, *v77.i8);
        *v80.f32 = vext_s8(*v77.i8, v79, 4uLL);
        *&v80.u32[2] = vrev64_s32(*v75.i8);
        v115 = v80;
        v81 = vextq_s8(v78, v77, 0xCuLL).u64[0];
        v82 = vextq_s8(v78, v77, 8uLL);
        v108 = vtrn2q_s32(v82, v82);
        v75.i64[1] = v81;
        v118 = v75;
        v121 = v78;
        do
        {
          v125 = *(v12 + 64);
          v83 = vmulq_f32(v125, v125);
          v84 = sqrtf(vadd_f32(vpadd_f32(*v83.i8, *v83.i8), *&vextq_s8(v83, v83, 8uLL)).f32[0]);
          v85 = __sincosf_stret(((6.2832 / v73) * v74) * 0.5);
          v86 = vmulq_n_f32(v125, v85.__sinval / v84);
          v87.i64[0] = v86.i64[0];
          v87.i64[1] = __PAIR64__(LODWORD(v85.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v85.__sinval / v84, v125, 2)));
          v88 = veorq_s8(v87, xmmword_21C27FD40);
          v89 = vextq_s8(v88, v88, 8uLL).u64[0];
          v90 = vzip1_s32(v89, *v88.f32);
          *v91.f32 = vext_s8(*v88.f32, v89, 4uLL);
          *v92.f32 = v90;
          v92.i64[1] = v91.i64[0];
          *&v91.u32[2] = v90;
          v93 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v121, v88, 3), vmulq_f32(v115, v92)), veorq_s8(vaddq_f32(vmulq_f32(v108, vdupq_lane_s64(v88.i64[0], 0)), vmulq_f32(v118, v91)), xmmword_21C27FD30));
          v94 = vextq_s8(v87, v87, 8uLL).u64[0];
          *v92.f32 = vzip1_s32(v94, *v86.i8);
          v95.i64[0] = vextq_s8(v93, v93, 4uLL).u64[0];
          *v96.f32 = vext_s8(*v86.i8, v94, 4uLL);
          *v97.f32 = vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *v93.f32);
          v97.i64[1] = v95.i64[0];
          *&v96.u32[2] = vrev64_s32(*v92.f32);
          v98 = vextq_s8(v87, v86, 0xCuLL).u64[0];
          v99 = vextq_s8(v87, v86, 8uLL);
          v95.i64[1] = v97.i64[0];
          v92.i64[1] = v98;
          v127 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v87, v93, 3), vmulq_f32(v96, v97)), veorq_s8(vaddq_f32(vmulq_f32(vtrn2q_s32(v99, v99), vdupq_lane_s64(v93.i64[0], 0)), vmulq_f32(v92, v95)), xmmword_21C27FD30));
          btConvexPlaneCollisionAlgorithm::collideSingleContact(a1, &v127, a2, a3, v100, a5);
          ++v74;
          v73 = *(a1 + 36);
        }

        while (v74 < v73);
      }
    }

    if (*(a1 + 16) == 1)
    {
      if (*(*(a1 + 24) + 800))
      {
        v101 = a5[1];
        if (*(v101 + 800))
        {
          v102 = *(v101 + 784);
          v103 = *(a5[2] + 16);
          v104 = v102 == v103;
          if (v102 == v103)
          {
            v105 = *(a5[3] + 16);
          }

          else
          {
            v105 = *(a5[2] + 16);
          }

          if (!v104)
          {
            v103 = *(a5[3] + 16);
          }

          btPersistentManifold::refreshContactPoints(v101, (v103 + 16), (v105 + 16));
        }
      }
    }
  }
}

void btConvexPlaneCollisionAlgorithm::getAllContactManifolds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 16) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = btAlignedAllocInternal(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            btAlignedFreeInternal(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(a1 + 24);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

uint64_t btDefaultCollisionConfiguration::btDefaultCollisionConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_282DC9520;
  v4 = btAlignedAllocInternal(400, 16);
  *(v4 + 320) = 953267991;
  *(v4 + 352) &= 0xF0u;
  *(a1 + 48) = v4;
  v5 = *(a2 + 7);
  v6 = btAlignedAllocInternal(8, 16);
  if (v5)
  {
    v7 = &unk_282DCAB50;
  }

  else
  {
    v7 = &unk_282DCABA0;
  }

  *v6 = v7;
  *(a1 + 56) = v6;
  v8 = btAlignedAllocInternal(40, 16);
  btConvexConvexAlgorithm::CreateFunc::CreateFunc(v8, *(a1 + 48), *(a1 + 56));
  *(a1 + 64) = v9;
  v10 = btAlignedAllocInternal(16, 16);
  *(v10 + 8) = 0;
  *v10 = &unk_282DC9560;
  *(a1 + 72) = v10;
  v11 = btAlignedAllocInternal(16, 16);
  *(v11 + 8) = 0;
  *v11 = &unk_282DC9588;
  *(a1 + 80) = v11;
  v12 = btAlignedAllocInternal(16, 16);
  *(v12 + 8) = 0;
  *v12 = &unk_282DC95B0;
  *(a1 + 88) = v12;
  v13 = btAlignedAllocInternal(16, 16);
  *(v13 + 8) = 0;
  *v13 = &unk_282DC95D8;
  *(a1 + 96) = v13;
  v14 = btAlignedAllocInternal(16, 16);
  *(v14 + 8) = 0;
  *v14 = &unk_282DC9600;
  *(a1 + 104) = v14;
  v15 = btAlignedAllocInternal(16, 16);
  *(v15 + 8) = 0;
  *v15 = &unk_282DC9628;
  *(a1 + 112) = v15;
  v16 = btAlignedAllocInternal(16, 16);
  *(v16 + 8) = 0;
  *v16 = &unk_282DC9650;
  *(a1 + 144) = v16;
  v17 = btAlignedAllocInternal(16, 16);
  *v17 = &unk_282DC9650;
  *(a1 + 152) = v17;
  *(v17 + 8) = 1;
  v18 = btAlignedAllocInternal(16, 16);
  *(v18 + 8) = 0;
  *v18 = &unk_282DC9678;
  *(a1 + 136) = v18;
  v19 = btAlignedAllocInternal(24, 16);
  *(v19 + 8) = 0;
  *v19 = &unk_282DC96A0;
  *(v19 + 12) = 1;
  *(a1 + 168) = v19;
  v20 = btAlignedAllocInternal(24, 16);
  *v20 = &unk_282DC96A0;
  *(v20 + 12) = 1;
  *(a1 + 160) = v20;
  *(v20 + 8) = 1;
  if (*(a2 + 6) <= 144)
  {
    v21 = 144;
  }

  else
  {
    v21 = *(a2 + 6);
  }

  v22 = *a2;
  if (*a2)
  {
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 24) = 1;
    v23 = btAlignedAllocInternal(32, 16);
    btPoolAllocator::btPoolAllocator(v23, 832, *(a2 + 4));
  }

  *(a1 + 16) = v22;
  v24 = a2[1];
  if (v24)
  {
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 40) = 1;
    v25 = btAlignedAllocInternal(32, 16);
    btPoolAllocator::btPoolAllocator(v25, v21, *(a2 + 5));
  }

  *(a1 + 32) = v24;
  return a1;
}

void btDefaultCollisionConfiguration::~btDefaultCollisionConfiguration(btDefaultCollisionConfiguration *this)
{
  *this = &unk_282DC9520;
  if (*(this + 40) == 1)
  {
    btAlignedFreeInternal(*(*(this + 4) + 24));
    btAlignedFreeInternal(*(this + 4));
  }

  if (*(this + 24) == 1)
  {
    btAlignedFreeInternal(*(*(this + 2) + 24));
    btAlignedFreeInternal(*(this + 2));
  }

  (***(this + 8))(*(this + 8));
  btAlignedFreeInternal(*(this + 8));
  (***(this + 9))();
  btAlignedFreeInternal(*(this + 9));
  (***(this + 10))();
  btAlignedFreeInternal(*(this + 10));
  (***(this + 11))();
  btAlignedFreeInternal(*(this + 11));
  (***(this + 12))();
  btAlignedFreeInternal(*(this + 12));
  (***(this + 13))();
  btAlignedFreeInternal(*(this + 13));
  (***(this + 14))();
  btAlignedFreeInternal(*(this + 14));
  (***(this + 18))();
  btAlignedFreeInternal(*(this + 18));
  (***(this + 19))();
  btAlignedFreeInternal(*(this + 19));
  (***(this + 17))();
  btAlignedFreeInternal(*(this + 17));
  (***(this + 21))();
  btAlignedFreeInternal(*(this + 21));
  (***(this + 20))();
  btAlignedFreeInternal(*(this + 20));
  btAlignedFreeInternal(*(this + 6));
  (***(this + 7))();
  btAlignedFreeInternal(*(this + 7));
}

{
  btDefaultCollisionConfiguration::~btDefaultCollisionConfiguration(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btDefaultCollisionConfiguration::getCollisionAlgorithmCreateFunc(btDefaultCollisionConfiguration *this, int a2, int a3)
{
  if (a2 == 8 && a3 == 8)
  {
    v3 = 112;
  }

  else if (a2 == 8 && a3 == 1)
  {
    v3 = 144;
  }

  else if (a2 == 1 && a3 == 8)
  {
    v3 = 152;
  }

  else if (a3 | a2)
  {
    if (a2 <= 19 && a3 == 28)
    {
      v3 = 168;
    }

    else if (a2 == 28 && a3 < 20)
    {
      v3 = 160;
    }

    else
    {
      if (a2 > 19)
      {
        if (a3 <= 19 && (a2 - 21) < 9)
        {
          v3 = 80;
          return *(this + v3);
        }

        if (a2 == 31)
        {
          v3 = 88;
          return *(this + v3);
        }
      }

      else
      {
        if (a3 < 20)
        {
          v3 = 64;
          return *(this + v3);
        }

        if ((a3 - 21) < 9)
        {
          v3 = 72;
          return *(this + v3);
        }
      }

      v3 = 104;
      if (a3 == 31)
      {
        v3 = 96;
      }
    }
  }

  else
  {
    v3 = 136;
  }

  return *(this + v3);
}

uint64_t btConvexConcaveCollisionAlgorithm::CreateFunc::CreateCollisionAlgorithm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 144);

  return btConvexConcaveCollisionAlgorithm::btConvexConcaveCollisionAlgorithm(v7, a2, a3, a4, 0);
}

uint64_t btConvexConcaveCollisionAlgorithm::SwappedCreateFunc::CreateCollisionAlgorithm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 144);

  return btConvexConcaveCollisionAlgorithm::btConvexConcaveCollisionAlgorithm(v7, a2, a3, a4, 1);
}

uint64_t btCompoundCollisionAlgorithm::CreateFunc::CreateCollisionAlgorithm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 72);

  return btCompoundCollisionAlgorithm::btCompoundCollisionAlgorithm(v7, a2, a3, a4, 0);
}

uint64_t btCompoundCollisionAlgorithm::SwappedCreateFunc::CreateCollisionAlgorithm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 72);

  return btCompoundCollisionAlgorithm::btCompoundCollisionAlgorithm(v7, a2, a3, a4, 1);
}

void *btEmptyAlgorithm::CreateFunc::CreateCollisionAlgorithm(uint64_t a1, uint64_t *a2)
{
  v3 = (*(**a2 + 112))(*a2, 16);

  return btEmptyAlgorithm::btEmptyAlgorithm(v3, a2);
}

uint64_t btSphereSphereCollisionAlgorithm::CreateFunc::CreateCollisionAlgorithm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 32);

  return btSphereSphereCollisionAlgorithm::btSphereSphereCollisionAlgorithm(v7, 0, a2, a3, a4);
}

uint64_t btSphereTriangleCollisionAlgorithm::CreateFunc::CreateCollisionAlgorithm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**a2 + 112))(*a2, 40);
  v9 = a2[1];
  v10 = *(a1 + 8);

  return btSphereTriangleCollisionAlgorithm::btSphereTriangleCollisionAlgorithm(v8, v9, a2, a3, a4, v10);
}

uint64_t btBoxBoxCollisionAlgorithm::CreateFunc::CreateCollisionAlgorithm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**a2 + 112))(*a2, 32);

  return btBoxBoxCollisionAlgorithm::btBoxBoxCollisionAlgorithm(v7, 0, a2, a3, a4);
}

uint64_t btConvexPlaneCollisionAlgorithm::CreateFunc::CreateCollisionAlgorithm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**a2 + 112))(*a2, 48);
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = *(a1 + 16);

  return btConvexPlaneCollisionAlgorithm::btConvexPlaneCollisionAlgorithm(v8, 0, a2, a3, a4, v9, v10, v11);
}

void btPoolAllocator::btPoolAllocator(btPoolAllocator *this, int a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  v4 = btAlignedAllocInternal((a3 * a2), 16);
  *(this + 2) = v4;
  *(this + 3) = v4;
  v5 = *(this + 1);
  *(this + 2) = v5;
  v6 = v5 - 1;
  if (v6)
  {
    v7 = *this;
    do
    {
      v8 = (v4 + v7);
      *v4 = v4 + v7;
      v4 = (v4 + v7);
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = v4;
  }

  *v8 = 0;
}

void *btEmptyAlgorithm::btEmptyAlgorithm(void *a1, uint64_t *a2)
{
  result = btCollisionAlgorithm::btCollisionAlgorithm(a1, a2);
  *result = &unk_282DC96C8;
  return result;
}

void btGhostObject::~btGhostObject(btGhostObject *this)
{
  *this = &unk_282DC9700;
  v2 = *(this + 39);
  if (v2 && *(this + 320) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 320) = 1;
  *(this + 39) = 0;
  *(this + 300) = 0;

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btGhostObject::~btGhostObject(this);

  btAlignedFreeInternal(v1);
}

void btGhostObject::addOverlappingObjectInternal(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 300);
  if (v4 < 1)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 312);
  v6 = *(a1 + 300);
  while (*v5 != v3)
  {
    ++v5;
    if (!--v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_7:
    if (v4 == *(a1 + 304))
    {
      v7 = v4 ? 2 * v4 : 1;
      if (v4 < v7)
      {
        if (v7)
        {
          v8 = btAlignedAllocInternal(8 * v7, 16);
          v4 = *(a1 + 300);
        }

        else
        {
          v8 = 0;
        }

        if (v4 >= 1)
        {
          v9 = 0;
          do
          {
            *(v8 + v9) = *(*(a1 + 312) + v9);
            v9 += 8;
          }

          while (8 * v4 != v9);
        }

        v10 = *(a1 + 312);
        if (v10)
        {
          if (*(a1 + 320) == 1)
          {
            btAlignedFreeInternal(v10);
            v4 = *(a1 + 300);
          }
        }

        *(a1 + 320) = 1;
        *(a1 + 312) = v8;
        *(a1 + 304) = v7;
      }
    }

    *(*(a1 + 312) + 8 * v4) = v3;
    *(a1 + 300) = v4 + 1;
  }
}

uint64_t btGhostObject::removeOverlappingObjectInternal(uint64_t result, void *a2)
{
  v2 = *(result + 300);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 312);
    while (*(v4 + 8 * v3) != *a2)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    if (v2 > v3)
    {
      v5 = v2 - 1;
      *(v4 + 8 * v3) = *(v4 + 8 * v5);
      *(result + 300) = v5;
    }
  }

  return result;
}

void btPairCachingGhostObject::btPairCachingGhostObject(btPairCachingGhostObject *this)
{
  btCollisionObject::btCollisionObject(this);
  *(v2 + 320) = 1;
  *(v2 + 312) = 0;
  *(v2 + 300) = 0;
  *(v2 + 264) = 4;
  *v2 = &unk_282DC9758;
  v3 = btAlignedAllocInternal(128, 16);
  *(this + 41) = btHashedOverlappingPairCache::btHashedOverlappingPairCache(v3);
}

void btPairCachingGhostObject::~btPairCachingGhostObject(btPairCachingGhostObject *this)
{
  *this = &unk_282DC9758;
  (***(this + 41))(*(this + 41));
  btAlignedFreeInternal(*(this + 41));

  btGhostObject::~btGhostObject(this);
}

{
  btPairCachingGhostObject::~btPairCachingGhostObject(this);

  btAlignedFreeInternal(v1);
}

uint64_t btPairCachingGhostObject::addOverlappingObjectInternal(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *(result + 300);
  if (v4 < 1)
  {
    goto LABEL_7;
  }

  v5 = *(result + 312);
  v6 = *(result + 300);
  while (*v5 != v3)
  {
    ++v5;
    if (!--v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_7:
    if (v4 == *(result + 304))
    {
      v7 = v4 ? 2 * v4 : 1;
      if (v4 < v7)
      {
        if (v7)
        {
          v8 = btAlignedAllocInternal(8 * v7, 16);
          v4 = *(v2 + 300);
        }

        else
        {
          v8 = 0;
        }

        if (v4 >= 1)
        {
          v9 = 0;
          do
          {
            *(v8 + v9) = *(*(v2 + 312) + v9);
            v9 += 8;
          }

          while (8 * v4 != v9);
        }

        v10 = *(v2 + 312);
        if (v10 && *(v2 + 320) == 1)
        {
          btAlignedFreeInternal(v10);
          v4 = *(v2 + 300);
        }

        *(v2 + 320) = 1;
        *(v2 + 312) = v8;
        *(v2 + 304) = v7;
      }
    }

    *(*(v2 + 312) + 8 * v4) = v3;
    *(v2 + 300) = v4 + 1;
    v11 = *(**(v2 + 328) + 16);

    return v11();
  }

  return result;
}

uint64_t btPairCachingGhostObject::removeOverlappingObjectInternal(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    a4 = *(result + 200);
  }

  v4 = *(result + 300);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 312);
    while (*(v6 + 8 * v5) != *a2)
    {
      if (v4 == ++v5)
      {
        return result;
      }
    }

    if (v4 > v5)
    {
      v7 = v4 - 1;
      *(v6 + 8 * v5) = *(v6 + 8 * v7);
      *(result + 300) = v7;
      return (*(**(result + 328) + 24))(*(result + 328), a4, a2, a3);
    }
  }

  return result;
}

void btGhostObject::convexSweepTest(uint64_t a1, btCollisionShape *a2, uint64_t a3, uint64_t a4, float *a5, float a6)
{
  v12 = *(a3 + 16);
  v54.var0[0] = *a3;
  v54.var0[1] = v12;
  v13 = *(a3 + 48);
  v54.var0[2] = *(a3 + 32);
  v55 = v13;
  v14 = *(a4 + 16);
  v53.var0.var0[0] = *a4;
  v53.var0.var0[1] = v14;
  v15 = *(a4 + 48);
  v53.var0.var0[2] = *(a4 + 32);
  v53.var1 = v15;
  v16 = vsubq_f32(v15, v13);
  v16.var0.var0[3] = 0.0;
  v57 = v16;
  v52.var0.var0[0] = 0.0;
  btTransformUtil::calculateDiffAxisAngle(&v54, &v53, &v50, &v52, a5);
  v17 = vmulq_n_f32(v50.var0.var0[0], v52.var0.var0[0]);
  v17.var0.var0[3] = 0.0;
  v56 = v17;
  v50.var0.var0[0] = xmmword_21C27F910;
  v50.var0.var0[1] = xmmword_21C27F8C0;
  v50.var0.var0[2] = xmmword_21C27F600;
  v50.var1 = 0uLL;
  btMatrix3x3::getRotation(&v54, &v52);
  btMatrix3x3::setRotation(&v50.var0, &v52);
  btCollisionShape::calculateTemporalAabb(a2, &v50, &v57, &v56, 1.0, &v52, &v51);
  if (*(a1 + 300) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(*(a1 + 312) + 8 * v18);
      if ((*(*a5 + 16))(a5, *(v19 + 200)))
      {
        (*(**(v19 + 208) + 16))(*(v19 + 208), v19 + 16, &v49, &v48);
        v48 = vaddq_f32(v48, v51);
        v49 = vaddq_f32(v49, v52);
        v20.i64[0] = 0x3F0000003F000000;
        v20.i64[1] = 0x3F0000003F000000;
        v21 = vmulq_f32(vsubq_f32(v48, v49), v20);
        v21.i32[3] = 0;
        v22 = vmulq_f32(vaddq_f32(v49, v48), v20);
        v23 = vsubq_f32(*(a3 + 48), v22);
        v23.var0.var0[3] = 0.0;
        v50.var0.var0[0] = v21;
        v57 = v23;
        v24 = vsubq_f32(*(a4 + 48), v22);
        v24.i32[3] = 0;
        v25 = -v21.f32[0];
        if (vmovn_s32(vcgtq_f32(v23, v21)).u8[0])
        {
          v26 = 8;
        }

        else
        {
          v26 = 0;
        }

        v27 = v23;
        v27.i32[3] = LODWORD(v23.var0.var0[2]);
        v28 = vextq_s8(v21, v23, 4uLL);
        v28.i32[2] = v28.i32[1];
        v29 = vnegq_f32(v28);
        v30 = vandq_s8(vcgtq_f32(vtrn2q_s32(vzip1q_s32(v27, v29), v27), vextq_s8(vzip1q_s32(v23, v21), vzip2q_s32(v23, v21), 8uLL)), xmmword_21C2A4090);
        v31 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
        v32 = v31.i32[0] | v26 | v31.i32[1];
        if (v23.var0.var0[0] < v25)
        {
          ++v32;
        }

        if (vmovn_s32(vcgtq_f32(v24, v21)).u8[0])
        {
          v33 = 8;
        }

        else
        {
          v33 = 0;
        }

        v34 = v24.f32[0] < v25;
        v35 = v24;
        v35.i32[3] = v24.i32[2];
        v36 = vandq_s8(vcgtq_f32(vtrn2q_s32(vtrn1q_s32(v35, v29), v35), vextq_s8(vzip1q_s32(v24, v21), vzip2q_s32(v24, v21), 8uLL)), xmmword_21C2A4090);
        *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
        v37 = v36.i32[0] | v33 | v36.i32[1];
        if (v34)
        {
          ++v37;
        }

        if ((v37 & v32) == 0)
        {
          v38 = vsubq_f32(v24, v23);
          v38.var0.var0[3] = 0.0;
          v56 = v38;
          v39 = 0.0;
          v40 = 1.0;
          v41 = 1;
          v42 = 1;
          v43 = 1.0;
          do
          {
            v44 = 0;
            v45 = v41;
            do
            {
              if ((v42 & v32) != 0)
              {
                v46 = v56.var0.var0[v44];
                if (v39 <= (-(v57.var0.var0[v44] + (v50.var0.var0[0].var0.var0[v44] * v40)) / v46))
                {
                  v39 = -(v57.var0.var0[v44] + (v50.var0.var0[0].var0.var0[v44] * v40)) / v46;
                }
              }

              else if ((v42 & v37) != 0)
              {
                v47 = v56.var0.var0[v44];
                if ((-(v57.var0.var0[v44] + (v50.var0.var0[0].var0.var0[v44] * v40)) / v47) < v43)
                {
                  v43 = -(v57.var0.var0[v44] + (v50.var0.var0[0].var0.var0[v44] * v40)) / v47;
                }
              }

              v42 *= 2;
              ++v44;
            }

            while (v44 != 3);
            v41 = 0;
            v40 = -1.0;
          }

          while ((v45 & 1) != 0);
          if (v39 <= v43)
          {
            btCollisionWorld::objectQuerySingle(a2, &v54, &v53, v19, *(v19 + 208), v19 + 16, a5, a6);
          }
        }
      }

      ++v18;
    }

    while (v18 < *(a1 + 300));
  }
}

uint64_t btGenerateInternalEdgeInfo(uint64_t result, btTriangleInfoMap *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!*(result + 80))
  {
    v3 = result;
    *(result + 80) = a2;
    v4 = *(result + 64);
    result = (*(*v4 + 56))(v4);
    if (result >= 1)
    {
      v5 = 0;
      do
      {
        v31 = 0;
        v29 = 2;
        v30 = 0;
        v28 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 2;
        (*(*v4 + 32))(v4, &v31, &v30, &v29, &v28, &v27, &v26 + 4, &v26, &v25, v5);
        if (v26 >= 1)
        {
          v6 = 0;
          do
          {
            v7 = 0;
            v8 = v25;
            v9 = v29;
            v10 = v28;
            v11 = v31;
            v12 = v27 + HIDWORD(v26) * v6;
            do
            {
              if (v8 == 3)
              {
                v13 = *(v12 + 2 * v7 + 4);
              }

              else if (v8 == 5)
              {
                v13 = *(v12 + v7 + 2);
              }

              else
              {
                v13 = *(v12 + 4 * v7 + 8);
              }

              v14 = v11 + v10 * v13;
              v15 = v4[2];
              if (v9)
              {
                *&v16 = vcvt_f32_f64(vmulq_f64(*v14, vcvtq_f64_f32(v15)));
                v17 = *(v14 + 16) * v4[3].f32[0];
              }

              else
              {
                *&v16 = vmul_f32(*v14, v15);
                v17 = *(v14 + 8) * v4[3].f32[0];
              }

              *(&v16 + 1) = LODWORD(v17);
              *(&v34 + v7--) = v16;
            }

            while (v7 != -3);
            v23 = vmaxq_f32(vmaxq_f32(vmaxq_f32(v32, xmmword_21C2A4040), v33), v34);
            v24 = vminq_f32(vminq_f32(vminq_f32(v32, xmmword_21C2A4030), v33), v34);
            v18 = &unk_282DC97B0;
            v19 = v5;
            v20 = v6;
            v21 = &v32;
            v22 = a2;
            (*(*v3 + 128))(v3, &v18, &v24, &v23);
            C3DSceneSourcePerformConsistencyCheck(&v18);
            ++v6;
          }

          while (v6 < v26);
        }

        ++v5;
        result = (*(*v4 + 56))(v4);
      }

      while (v5 < result);
    }
  }

  return result;
}

uint64_t btClampNormal(float32x4_t *a1, int8x16_t *a2, float32x4_t *a3, float a4, btVector3 *a5)
{
  v22 = *a1;
  v8 = vsubq_f32(vmulq_f32(*a1, vextq_s8(vextq_s8(*a2, *a2, 0xCuLL), *a2, 8uLL)), vmulq_f32(*a2, vextq_s8(vextq_s8(*a1, *a1, 0xCuLL), *a1, 8uLL)));
  v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_f32(*a3, vmulq_n_f32(v9, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0])));
  v12 = vmulq_f32(*a2, *a3);
  v13 = atan2f(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0], vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)).f32[0]);
  if (a4 < 0.0 && v13 < a4 || (result = 0, a4 >= 0.0) && v13 > a4)
  {
    v15 = a4 - v13;
    v16 = vmulq_f32(v22, v22);
    v17 = sqrtf(vadd_f32(*&vextq_s8(v16, v16, 8uLL), vpadd_f32(*v16.i8, *v16.i8)).f32[0]);
    v18 = __sincosf_stret(v15 * 0.5);
    *v24.var0.var0 = vmul_n_f32(*v22.f32, v18.__sinval / v17);
    *&v24.var0.var0[2] = __PAIR64__(LODWORD(v18.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v18.__sinval / v17, v22, 2)));
    btMatrix3x3::setRotation(&v23, &v24);
    v19 = vmulq_f32(v23.var0[0], *a3);
    v20 = vmulq_f32(*a3, v23.var0[1]);
    v21 = vmulq_f32(*a3, v23.var0[2]);
    v21.i32[3] = 0;
    *v19.i8 = vadd_f32(vpadd_f32(*v19.i8, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
    v19.u64[1] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
    *a5 = v19;
    return 1;
  }

  return result;
}

void btAdjustInternalEdgeContacts(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, char a6)
{
  if (*(a2[1] + 8) == 1)
  {
    v9 = *(a2[2] + 208);
    if (*(v9 + 8) == 22)
    {
      v9 = *(v9 + 48);
    }

    v10 = *(v9 + 80);
    if (v10)
    {
      LODWORD(v303.var0.var0[0]) = a5 | (a4 << 21);
      Index = btHashMap<btHashInt,btTriangleInfo>::findIndex(v10 + 8, &v303);
      if (Index != -1)
      {
        v12 = *(v10 + 88);
        if (v12)
        {
          v13 = v12 + 16 * Index;
          v14 = -1.0;
          if ((a6 & 1) == 0)
          {
            v14 = 1.0;
          }

          v296 = v14;
          v15 = a2[1];
          (*(v15->i64[0] + 216))(v15, 0, &v301);
          (*(v15->i64[0] + 216))(v15, 1, &v300);
          (*(v15->i64[0] + 216))(v15, 2, &v299);
          v16 = v15[5];
          v17 = vsubq_f32(v15[6], v16);
          v17.i32[3] = 0;
          v18 = vsubq_f32(v15[7], v16);
          v18.i32[3] = 0;
          v19 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), v17), vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), v18));
          v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
          v20.i32[3] = 0;
          v21 = vmulq_f32(v20, v20);
          LODWORD(v22) = vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL)).u32[0];
          v23 = v300;
          v24 = vsubq_f32(v300, v301);
          v24.i32[3] = 0;
          v25 = vmulq_f32(v24, v24);
          v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL));
          v27 = *(a1 + 16);
          v28 = v301;
          if (v26.f32[0] >= 1.4211e-14)
          {
            v29 = vsubq_f32(v27, v301);
            v29.i32[3] = 0;
            v30 = vmulq_f32(v24, v29);
            v31 = vdiv_f32(vadd_f32(vpadd_f32(*v30.i8, *v30.i8), *&vextq_s8(v30, v30, 8uLL)), v26).f32[0];
            v32 = 0.0;
            if (v31 >= 0.0)
            {
              v32 = v31;
              if (v31 > 1.0)
              {
                v32 = 1.0;
              }
            }

            v33 = vmulq_n_f32(v24, v32);
            v33.i32[3] = 0;
            v28 = vaddq_f32(v301, v33);
          }

          v34 = sqrtf(v22);
          v35 = a2[3];
          v36 = *(v35 + 16);
          v37 = vtrn1q_s32(*v35, v36);
          v38 = *(v35 + 32);
          *v39.f32 = vzip2_s32(*v35, *v36.f32);
          v36.i64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
          v37.i64[1] = v38.u32[0];
          *&v39.u32[2] = vzip2_s32(*v38.i8, 0);
          v36.i64[1] = vextq_s8(v38, v38, 8uLL).u32[0];
          v40 = *(a1 + 64);
          v41 = vmulq_f32(v37, v40);
          v42 = vmulq_f32(v39, v40);
          v43 = vmulq_f32(v36, v40);
          v43.i32[3] = 0;
          *v42.f32 = vadd_f32(vpadd_f32(*v41.i8, *v42.f32), vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
          *v41.i8 = vmul_f32(*v42.f32, *v42.f32);
          *&v42.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
          v44 = vmulq_n_f32(v42, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v41.i8, *v41.i8), vmul_f32(*&v42.u32[2], *&v42.u32[2])).f32[0]));
          v298 = v44;
          v45 = *(v13 + 4);
          v46 = fabsf(v45);
          v47 = *(v10 + 152);
          if (v46 >= v47)
          {
            v57 = -1;
            v56 = 1.0e18;
          }

          else
          {
            v48 = v301;
            if (v26.f32[0] >= 1.4211e-14)
            {
              v49 = vsubq_f32(v27, v301);
              v49.i32[3] = 0;
              v50 = vmulq_f32(v24, v49);
              v51 = vdiv_f32(vadd_f32(*&vextq_s8(v50, v50, 8uLL), vpadd_f32(*v50.i8, *v50.i8)), v26).f32[0];
              v52 = 0.0;
              if (v51 >= 0.0)
              {
                v52 = 1.0;
                if (v51 <= 1.0)
                {
                  v52 = v51;
                }
              }

              v53 = vmulq_n_f32(v24, v52);
              v53.i32[3] = 0;
              v48 = vaddq_f32(v301, v53);
            }

            v54 = vsubq_f32(v27, v48);
            v54.i32[3] = 0;
            v55 = vmulq_f32(v54, v54);
            v56 = sqrtf(vadd_f32(vpadd_f32(*v55.i8, *v55.i8), *&vextq_s8(v55, v55, 8uLL)).f32[0]);
            if (v56 < 1.0e18)
            {
              v57 = 0;
            }

            else
            {
              v56 = 1.0e18;
              v57 = -1;
            }
          }

          v58 = 1.0 / v34;
          if (fabsf(*(v13 + 8)) < v47)
          {
            v59 = vsubq_f32(v299, v300);
            v59.i32[3] = 0;
            v60 = vmulq_f32(v59, v59);
            v61 = vadd_f32(vpadd_f32(*v60.i8, *v60.i8), *&vextq_s8(v60, v60, 8uLL));
            v62 = v300;
            if (v61.f32[0] >= 1.4211e-14)
            {
              v63 = vsubq_f32(v27, v300);
              v63.i32[3] = 0;
              v64 = vmulq_f32(v63, v59);
              v65 = vdiv_f32(vadd_f32(*&vextq_s8(v64, v64, 8uLL), vpadd_f32(*v64.i8, *v64.i8)), v61).f32[0];
              v66 = 0.0;
              if (v65 >= 0.0)
              {
                v66 = v65;
                if (v65 > 1.0)
                {
                  v66 = 1.0;
                }
              }

              v67 = vmulq_n_f32(v59, v66);
              v67.i32[3] = 0;
              v62 = vaddq_f32(v300, v67);
            }

            v68 = vsubq_f32(v27, v62);
            v68.i32[3] = 0;
            v69 = vmulq_f32(v68, v68);
            v70 = sqrtf(vadd_f32(vpadd_f32(*v69.i8, *v69.i8), *&vextq_s8(v69, v69, 8uLL)).f32[0]);
            if (v70 < v56)
            {
              v56 = v70;
              v57 = 1;
            }
          }

          if (fabsf(*(v13 + 12)) < v47)
          {
            v71 = v299;
            v72 = vsubq_f32(v301, v299);
            v72.i32[3] = 0;
            v73 = vmulq_f32(v72, v72);
            v74 = vadd_f32(vpadd_f32(*v73.i8, *v73.i8), *&vextq_s8(v73, v73, 8uLL));
            if (v74.f32[0] >= 1.4211e-14)
            {
              v75 = vsubq_f32(v27, v299);
              v75.i32[3] = 0;
              v76 = vmulq_f32(v72, v75);
              v77 = vdiv_f32(vadd_f32(*&vextq_s8(v76, v76, 8uLL), vpadd_f32(*v76.i8, *v76.i8)), v74).f32[0];
              v78 = 0.0;
              if (v77 >= 0.0)
              {
                v78 = v77;
                if (v77 > 1.0)
                {
                  v78 = 1.0;
                }
              }

              v79 = vmulq_n_f32(v72, v78);
              v79.i32[3] = 0;
              v71 = vaddq_f32(v299, v79);
            }

            v80 = vsubq_f32(v27, v71);
            v80.i32[3] = 0;
            v81 = vmulq_f32(v80, v80);
            if (sqrtf(vadd_f32(vpadd_f32(*v81.i8, *v81.i8), *&vextq_s8(v81, v81, 8uLL)).f32[0]) < v56)
            {
              v57 = 2;
            }
          }

          v82 = vmulq_n_f32(v20, v58);
          v83 = 0;
          if (v46 >= v47)
          {
            v87 = 0;
          }

          else if (v57 || (v84 = vsubq_f32(v27, v28), v84.i32[3] = 0, v85 = vmulq_f32(v84, v84), sqrtf(vadd_f32(*&vextq_s8(v85, v85, 8uLL), vpadd_f32(*v85.i8, *v85.i8)).f32[0]) >= *(v10 + 148)))
          {
            v87 = 0;
          }

          else
          {
            v86 = vsubq_f32(v301, v300);
            v86.var0.var0[3] = 0.0;
            v297 = v86;
            if (v45 == 0.0)
            {
              v83 = 1;
            }

            else
            {
              v88 = 1.0;
              if ((*v13 & 1) == 0)
              {
                v88 = -1.0;
              }

              v282 = v88;
              v285 = v27;
              v89 = vmulq_n_f32(v82, v88);
              v89.i32[3] = 0;
              v277 = v86;
              v279 = v89;
              v90 = vmulq_f32(v86, v86);
              v91 = sqrtf(vadd_f32(*&vextq_s8(v90, v90, 8uLL), vpadd_f32(*v90.i8, *v90.i8)).f32[0]);
              v288 = v44;
              v293 = v82;
              v92 = __sincosf_stret(v45 * 0.5);
              v93 = vmulq_n_f32(v277, v92.__sinval / v91);
              v94.i64[0] = v93.i64[0];
              v94.i64[1] = __PAIR64__(LODWORD(v92.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v92.__sinval / v91, v277, 2)));
              v95 = vextq_s8(v94, v94, 8uLL).u64[0];
              v96 = vextq_s8(v94, v93, 0xCuLL).u64[0];
              v97 = v293;
              *v98.f32 = vzip1_s32(*&vextq_s8(v97, v97, 8uLL), *v293.f32);
              *v99.f32 = vzip1_s32(v95, *v93.f32);
              *v100.f32 = vext_s8(*v93.f32, v95, 4uLL);
              v101.i64[0] = vextq_s8(v97, v97, 4uLL).u64[0];
              *v102.f32 = vdup_laneq_s32(v94, 3);
              v99.i64[1] = v100.i64[0];
              *&v101.u32[2] = vrev64_s32(*v98.f32);
              v102.i64[1] = v93.i64[0];
              v93.i64[0] = v293.i64[0];
              *&v93.u32[2] = vdup_lane_s32(*v293.f32, 1);
              v98.i64[1] = v98.i64[0];
              v100.i64[1] = v96;
              v302 = veorq_s8(v94, xmmword_21C27FD40);
              v303 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v93, v102), vmulq_f32(v98, v100)), xmmword_21C27FD30), vmulq_f32(v101, v99));
              v103 = btQuaternion::operator*=(&v303, &v302);
              v44 = v288;
              v103.i32[0] = 0;
              v104 = v303;
              v104.var0.var0[3] = 0.0;
              v105.i32[0] = *v13 & 8;
              v106 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v105, v103), 0), v303, vnegq_f32(v104)), v282);
              v106.i32[3] = 0;
              v107 = vmulq_f32(v288, v279);
              v108 = vmulq_f32(v288, v106);
              LODWORD(v109) = vadd_f32(vpadd_f32(*v108.i8, *v108.i8), *&vextq_s8(v108, v108, 8uLL)).u32[0];
              v110 = *(v10 + 136);
              if (vadd_f32(vpadd_f32(*v107.i8, *v107.i8), *&vextq_s8(v107, v107, 8uLL)).f32[0] < v110 && v109 < v110)
              {
                v83 = 1;
                v82 = v293;
              }

              else
              {
                v302 = v279;
                v112 = btClampNormal(&v297, &v302, &v298, *(v13 + 4), &v303);
                v82 = v293;
                if (v112)
                {
                  if ((a6 & 4) != 0 || (v113 = vmulq_n_f32(v293, v296), v113.i32[3] = 0, v114 = vmulq_f32(v303, v113), vadd_f32(vpadd_f32(*v114.i8, *v114.i8), *&vextq_s8(v114, v114, 8uLL)).f32[0] > 0.0))
                  {
                    v115 = a2[3];
                    v116 = vmulq_f32(*v115, v303);
                    v117 = vmulq_f32(v303, v115[1]);
                    v118 = vmulq_f32(v303, v115[2]);
                    v118.i32[3] = 0;
                    *v116.f32 = vadd_f32(vpadd_f32(*v116.f32, *v117.f32), vzip1_s32(*&vextq_s8(v116, v116, 8uLL), *&vextq_s8(v117, v117, 8uLL)));
                    *&v116.u32[2] = vpadd_f32(vpadd_f32(*v118.i8, *&vextq_s8(v118, v118, 8uLL)), 0);
                    *(a1 + 64) = v116;
                    v119 = vsubq_f32(*(a1 + 48), vmulq_n_f32(v116, COERCE_FLOAT(*(a1 + 80))));
                    v119.i32[3] = 0;
                    *(a1 + 32) = v119;
                    v120 = a2[3];
                    v121 = *(v120 + 32);
                    v122 = vsubq_f32(v119, *(v120 + 48));
                    v123 = *(v120 + 16);
                    v124 = vtrn1q_s32(*v120, v123);
                    v125.i64[0] = vextq_s8(v124, v124, 8uLL).u64[0];
                    v125.i64[1] = vextq_s8(v121, v121, 8uLL).u32[0];
                    v126 = vmulq_f32(v125, v122);
                    v122.i32[3] = 0;
                    v124.i64[1] = v121.u32[0];
                    *v117.f32 = vzip2_s32(*v120, *v123.i8);
                    *&v117.u32[2] = vzip2_s32(*v121.i8, 0);
                    v127 = vmulq_f32(v124, v122);
                    v128 = vmulq_f32(v117, v122);
                    v126.i32[3] = 0;
                    *v128.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v127, v127, 8uLL), *&vextq_s8(v128, v128, 8uLL)), vpadd_f32(*v127.i8, *v128.i8));
                    v128.u64[1] = vpadd_f32(vpadd_f32(*v126.i8, *&vextq_s8(v126, v126, 8uLL)), 0);
                    *(a1 + 16) = v128;
                  }
                }

                v83 = 0;
                v44 = v288;
              }

              v27 = v285;
            }

            v87 = 1;
            v23 = v300;
          }

          v129 = v299;
          v130 = vsubq_f32(v299, v23);
          v130.i32[3] = 0;
          v131 = vmulq_f32(v130, v130);
          v132 = vadd_f32(vpadd_f32(*v131.i8, *v131.i8), *&vextq_s8(v131, v131, 8uLL));
          v133 = v23;
          if (v132.f32[0] >= 1.4211e-14)
          {
            v134 = vsubq_f32(v27, v23);
            v134.i32[3] = 0;
            v135 = vmulq_f32(v130, v134);
            v136 = vdiv_f32(vadd_f32(*&vextq_s8(v135, v135, 8uLL), vpadd_f32(*v135.i8, *v135.i8)), v132).f32[0];
            v137 = 0.0;
            if (v136 >= 0.0)
            {
              v137 = v136;
              if (v136 > 1.0)
              {
                v137 = 1.0;
              }
            }

            v138 = vmulq_n_f32(v130, v137);
            v138.i32[3] = 0;
            v133 = vaddq_f32(v23, v138);
          }

          v139 = *(v13 + 8);
          if (fabsf(v139) < *(v10 + 152) && v57 == 1)
          {
            v140 = vsubq_f32(v27, v133);
            v140.i32[3] = 0;
            v141 = vmulq_f32(v140, v140);
            if (sqrtf(vadd_f32(*&vextq_s8(v141, v141, 8uLL), vpadd_f32(*v141.i8, *v141.i8)).f32[0]) < *(v10 + 148))
            {
              v142 = vsubq_f32(v23, v299);
              v142.var0.var0[3] = 0.0;
              v297 = v142;
              if (v139 == 0.0)
              {
                ++v83;
              }

              else
              {
                v143 = 1.0;
                if ((*v13 & 2) == 0)
                {
                  v143 = -1.0;
                }

                v283 = v143;
                v286 = v27;
                v144 = vmulq_n_f32(v82, v143);
                v144.i32[3] = 0;
                v278 = v142;
                v280 = v144;
                v145 = vmulq_f32(v142, v142);
                v146 = sqrtf(vadd_f32(*&vextq_s8(v145, v145, 8uLL), vpadd_f32(*v145.i8, *v145.i8)).f32[0]);
                v289 = v44;
                v294 = v82;
                v147 = __sincosf_stret(v139 * 0.5);
                v148 = vmulq_n_f32(v278, v147.__sinval / v146);
                v149.i64[0] = v148.i64[0];
                v149.i64[1] = __PAIR64__(LODWORD(v147.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v147.__sinval / v146, v278, 2)));
                v150 = vextq_s8(v149, v149, 8uLL).u64[0];
                v151 = vextq_s8(v149, v148, 0xCuLL).u64[0];
                v152 = v294;
                *v153.f32 = vzip1_s32(*&vextq_s8(v152, v152, 8uLL), *v294.f32);
                *v154.f32 = vzip1_s32(v150, *v148.f32);
                *v155.f32 = vext_s8(*v148.f32, v150, 4uLL);
                v156.i64[0] = vextq_s8(v152, v152, 4uLL).u64[0];
                *v157.f32 = vdup_laneq_s32(v149, 3);
                v154.i64[1] = v155.i64[0];
                *&v156.u32[2] = vrev64_s32(*v153.f32);
                v157.i64[1] = v148.i64[0];
                v148.i64[0] = v294.i64[0];
                *&v148.u32[2] = vdup_lane_s32(*v294.f32, 1);
                v153.i64[1] = v153.i64[0];
                v155.i64[1] = v151;
                v302 = veorq_s8(v149, xmmword_21C27FD40);
                v303 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v148, v157), vmulq_f32(v153, v155)), xmmword_21C27FD30), vmulq_f32(v156, v154));
                v158 = btQuaternion::operator*=(&v303, &v302);
                v44 = v289;
                v158.i32[0] = 0;
                v159 = v303;
                v159.var0.var0[3] = 0.0;
                v160.i32[0] = *v13 & 0x10;
                v161 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v160, v158), 0), v303, vnegq_f32(v159)), v283);
                v161.i32[3] = 0;
                v162 = vmulq_f32(v289, v280);
                v163 = vmulq_f32(v289, v161);
                LODWORD(v164) = vadd_f32(vpadd_f32(*v163.i8, *v163.i8), *&vextq_s8(v163, v163, 8uLL)).u32[0];
                v165 = *(v10 + 136);
                if (vadd_f32(vpadd_f32(*v162.i8, *v162.i8), *&vextq_s8(v162, v162, 8uLL)).f32[0] < v165 && v164 < v165)
                {
                  ++v83;
                  v82 = v294;
                }

                else
                {
                  v167 = a2[3];
                  v168 = *(v167 + 16);
                  v169 = *(v167 + 32);
                  v170 = vtrn1q_s32(*v167, v168);
                  v171.i64[0] = vextq_s8(v170, v170, 8uLL).u64[0];
                  v170.i64[1] = v169.u32[0];
                  *v172.f32 = vzip2_s32(*v167, *v168.i8);
                  *&v172.u32[2] = vzip2_s32(*v169.i8, 0);
                  v171.i64[1] = vextq_s8(v169, v169, 8uLL).u32[0];
                  v173 = *(a1 + 64);
                  v174 = vmulq_f32(v170, v173);
                  v175 = vmulq_f32(v172, v173);
                  v176 = vmulq_f32(v171, v173);
                  v176.i32[3] = 0;
                  *v174.var0.var0 = vadd_f32(vpadd_f32(*v174.var0.var0, *v175.i8), vzip1_s32(*&vextq_s8(v174, v174, 8uLL), *&vextq_s8(v175, v175, 8uLL)));
                  *&v174.var0.var0[2] = vpadd_f32(vpadd_f32(*v176.i8, *&vextq_s8(v176, v176, 8uLL)), 0);
                  v290 = v174;
                  v298 = v174;
                  v302 = v280;
                  v177 = btClampNormal(&v297, &v302, &v298, *(v13 + 8), &v303);
                  v82 = v294;
                  if (v177)
                  {
                    if ((a6 & 4) != 0 || (v178 = vmulq_n_f32(v294, v296), v178.i32[3] = 0, v179 = vmulq_f32(v303, v178), vadd_f32(vpadd_f32(*v179.i8, *v179.i8), *&vextq_s8(v179, v179, 8uLL)).f32[0] > 0.0))
                    {
                      v180 = a2[3];
                      v181 = vmulq_f32(*v180, v303);
                      v182 = vmulq_f32(v303, v180[1]);
                      v183 = vmulq_f32(v303, v180[2]);
                      v183.i32[3] = 0;
                      *v181.f32 = vadd_f32(vpadd_f32(*v181.f32, *v182.f32), vzip1_s32(*&vextq_s8(v181, v181, 8uLL), *&vextq_s8(v182, v182, 8uLL)));
                      *&v181.u32[2] = vpadd_f32(vpadd_f32(*v183.i8, *&vextq_s8(v183, v183, 8uLL)), 0);
                      *(a1 + 64) = v181;
                      v184 = vsubq_f32(*(a1 + 48), vmulq_n_f32(v181, COERCE_FLOAT(*(a1 + 80))));
                      v184.i32[3] = 0;
                      *(a1 + 32) = v184;
                      v185 = a2[3];
                      v186 = *(v185 + 32);
                      v187 = vsubq_f32(v184, *(v185 + 48));
                      v188 = *(v185 + 16);
                      v189 = vtrn1q_s32(*v185, v188);
                      v190.i64[0] = vextq_s8(v189, v189, 8uLL).u64[0];
                      v190.i64[1] = vextq_s8(v186, v186, 8uLL).u32[0];
                      v191 = vmulq_f32(v190, v187);
                      v187.i32[3] = 0;
                      v189.i64[1] = v186.u32[0];
                      *v182.f32 = vzip2_s32(*v185, *v188.i8);
                      *&v182.u32[2] = vzip2_s32(*v186.i8, 0);
                      v192 = vmulq_f32(v189, v187);
                      v193 = vmulq_f32(v182, v187);
                      v191.i32[3] = 0;
                      *v193.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v192, v192, 8uLL), *&vextq_s8(v193, v193, 8uLL)), vpadd_f32(*v192.i8, *v193.i8));
                      v193.u64[1] = vpadd_f32(vpadd_f32(*v191.i8, *&vextq_s8(v191, v191, 8uLL)), 0);
                      *(a1 + 16) = v193;
                    }
                  }

                  v44 = v290;
                }

                v27 = v286;
              }

              v87 = 1;
              v129 = v299;
            }
          }

          v194 = vsubq_f32(v301, v129);
          v194.i32[3] = 0;
          v195 = vmulq_f32(v194, v194);
          v196 = vadd_f32(vpadd_f32(*v195.i8, *v195.i8), *&vextq_s8(v195, v195, 8uLL));
          v197 = v129;
          if (v196.f32[0] >= 1.4211e-14)
          {
            v198 = vsubq_f32(v27, v129);
            v198.i32[3] = 0;
            v199 = vmulq_f32(v194, v198);
            v200 = vdiv_f32(vadd_f32(*&vextq_s8(v199, v199, 8uLL), vpadd_f32(*v199.i8, *v199.i8)), v196).f32[0];
            v201 = 0.0;
            if (v200 >= 0.0)
            {
              v201 = v200;
              if (v200 > 1.0)
              {
                v201 = 1.0;
              }
            }

            v202 = vmulq_n_f32(v194, v201);
            v202.i32[3] = 0;
            v197 = vaddq_f32(v129, v202);
          }

          v203 = *(v13 + 12);
          if (fabsf(v203) < *(v10 + 152) && v57 == 2)
          {
            v204 = vsubq_f32(v27, v197);
            v204.i32[3] = 0;
            v205 = vmulq_f32(v204, v204);
            if (sqrtf(vadd_f32(*&vextq_s8(v205, v205, 8uLL), vpadd_f32(*v205.i8, *v205.i8)).f32[0]) < *(v10 + 148))
            {
              v206 = vsubq_f32(v129, v301);
              v206.var0.var0[3] = 0.0;
              v297 = v206;
              if (v203 == 0.0)
              {
                ++v83;
              }

              else
              {
                v207 = 1.0;
                if ((*v13 & 4) == 0)
                {
                  v207 = -1.0;
                }

                v287 = v207;
                v291 = v44;
                v208 = vmulq_n_f32(v82, v207);
                v208.i32[3] = 0;
                v281 = v206;
                v284 = v208;
                v209 = vmulq_f32(v206, v206);
                v210 = sqrtf(vadd_f32(*&vextq_s8(v209, v209, 8uLL), vpadd_f32(*v209.i8, *v209.i8)).f32[0]);
                v295 = v82;
                v211 = __sincosf_stret(v203 * 0.5);
                v212 = vmulq_n_f32(v281, v211.__sinval / v210);
                v213.i64[0] = v212.i64[0];
                v213.i64[1] = __PAIR64__(LODWORD(v211.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v211.__sinval / v210, v281, 2)));
                v214 = vextq_s8(v213, v213, 8uLL).u64[0];
                v215 = vextq_s8(v213, v212, 0xCuLL).u64[0];
                v216 = v295;
                *v217.f32 = vzip1_s32(*&vextq_s8(v216, v216, 8uLL), *v295.f32);
                *v218.f32 = vzip1_s32(v214, *v212.f32);
                *v219.f32 = vext_s8(*v212.f32, v214, 4uLL);
                v220.i64[0] = vextq_s8(v216, v216, 4uLL).u64[0];
                *v221.f32 = vdup_laneq_s32(v213, 3);
                v218.i64[1] = v219.i64[0];
                *&v220.u32[2] = vrev64_s32(*v217.f32);
                v221.i64[1] = v212.i64[0];
                v212.i64[0] = v295.i64[0];
                *&v212.u32[2] = vdup_lane_s32(*v295.f32, 1);
                v217.i64[1] = v217.i64[0];
                v219.i64[1] = v215;
                v302 = veorq_s8(v213, xmmword_21C27FD40);
                v303 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v212, v221), vmulq_f32(v217, v219)), xmmword_21C27FD30), vmulq_f32(v220, v218));
                v222 = btQuaternion::operator*=(&v303, &v302);
                v44 = v291;
                v222.i32[0] = 0;
                v223 = v303;
                v223.var0.var0[3] = 0.0;
                v224.i32[0] = *v13 & 0x20;
                v225 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v224, v222), 0), v303, vnegq_f32(v223)), v287);
                v225.i32[3] = 0;
                v226 = vmulq_f32(v291, v284);
                *v223.var0.var0 = vpadd_f32(*v226.i8, *v226.i8);
                v129 = vextq_s8(v226, v226, 8uLL);
                v129.f32[0] = vadd_f32(*v223.var0.var0, *v129.f32).f32[0];
                v227 = vmulq_f32(v291, v225);
                LODWORD(v228) = vadd_f32(vpadd_f32(*v227.i8, *v227.i8), *&vextq_s8(v227, v227, 8uLL)).u32[0];
                v229 = *(v10 + 136);
                if (v129.f32[0] < v229 && v228 < v229)
                {
                  ++v83;
                  v82 = v295;
                }

                else
                {
                  v231 = a2[3];
                  v232 = *(v231 + 16);
                  v233 = *(v231 + 32);
                  v234 = vtrn1q_s32(*v231, v232);
                  v235.i64[0] = vextq_s8(v234, v234, 8uLL).u64[0];
                  v234.i64[1] = v233.u32[0];
                  *v236.f32 = vzip2_s32(*v231, *v232.i8);
                  *&v236.u32[2] = vzip2_s32(*v233.i8, 0);
                  v235.i64[1] = vextq_s8(v233, v233, 8uLL).u32[0];
                  v237 = *(a1 + 64);
                  v238 = vmulq_f32(v234, v237);
                  v239 = vmulq_f32(v236, v237);
                  v240 = vmulq_f32(v235, v237);
                  v240.i32[3] = 0;
                  *v238.var0.var0 = vadd_f32(vpadd_f32(*v238.var0.var0, *v239.i8), vzip1_s32(*&vextq_s8(v238, v238, 8uLL), *&vextq_s8(v239, v239, 8uLL)));
                  *&v238.var0.var0[2] = vpadd_f32(vpadd_f32(*v240.i8, *&vextq_s8(v240, v240, 8uLL)), 0);
                  v292 = v238;
                  v298 = v238;
                  v302 = v284;
                  v241 = btClampNormal(&v297, &v302, &v298, *(v13 + 12), &v303);
                  v82 = v295;
                  if (v241)
                  {
                    if ((a6 & 4) != 0 || (v242 = vmulq_n_f32(v295, v296), v242.i32[3] = 0, v243 = vmulq_f32(v303, v242), v244 = vpadd_f32(*v243.i8, *v243.i8), v129 = vextq_s8(v243, v243, 8uLL), vadd_f32(v244, *v129.f32).f32[0] > 0.0))
                    {
                      v245 = a2[3];
                      v246 = vmulq_f32(*v245, v303);
                      v247 = vmulq_f32(v303, v245[1]);
                      v248 = vmulq_f32(v303, v245[2]);
                      v248.i32[3] = 0;
                      *v246.f32 = vadd_f32(vpadd_f32(*v246.f32, *v247.f32), vzip1_s32(*&vextq_s8(v246, v246, 8uLL), *&vextq_s8(v247, v247, 8uLL)));
                      *&v246.u32[2] = vpadd_f32(vpadd_f32(*v248.i8, *&vextq_s8(v248, v248, 8uLL)), 0);
                      *(a1 + 64) = v246;
                      v249 = vsubq_f32(*(a1 + 48), vmulq_n_f32(v246, COERCE_FLOAT(*(a1 + 80))));
                      v249.i32[3] = 0;
                      *(a1 + 32) = v249;
                      v250 = a2[3];
                      v251 = *(v250 + 32);
                      v252 = vsubq_f32(v249, *(v250 + 48));
                      v253 = *(v250 + 16);
                      v254 = vtrn1q_s32(*v250, v253);
                      v255.i64[0] = vextq_s8(v254, v254, 8uLL).u64[0];
                      v255.i64[1] = vextq_s8(v251, v251, 8uLL).u32[0];
                      v256 = vmulq_f32(v255, v252);
                      v252.i32[3] = 0;
                      v254.i64[1] = v251.u32[0];
                      *v247.f32 = vzip2_s32(*v250, *v253.i8);
                      *&v247.u32[2] = vzip2_s32(*v251.i8, 0);
                      v257 = vmulq_f32(v254, v252);
                      v258 = vmulq_f32(v247, v252);
                      v256.i32[3] = 0;
                      *v129.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v257, v257, 8uLL), *&vextq_s8(v258, v258, 8uLL)), vpadd_f32(*v257.i8, *v258.i8));
                      *&v129.u32[2] = vpadd_f32(vpadd_f32(*v256.i8, *&vextq_s8(v256, v256, 8uLL)), 0);
                      *(a1 + 16) = v129;
                    }
                  }

                  v44 = v292;
                }
              }

              v87 = 1;
            }
          }

          if (v87 && v83)
          {
            if ((a6 & 2) != 0)
            {
              v261 = vmulq_f32(v82, v44);
              *v129.f32 = vpadd_f32(*v261.i8, *v261.i8);
              v262 = vextq_s8(v261, v261, 8uLL);
              *v262.f32 = vadd_f32(*v129.f32, *v262.f32);
              v129.i64[0] = 0;
              v259 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v129, v262), 0), vnegq_f32(v82), v82);
            }

            else
            {
              v259 = vmulq_n_f32(v82, v296);
              v259.i32[3] = 0;
              v260 = vmulq_f32(v44, v259);
              if (vadd_f32(vpadd_f32(*v260.i8, *v260.i8), *&vextq_s8(v260, v260, 8uLL)).f32[0] < 0.0)
              {
                return;
              }
            }

            v263 = a2[3];
            v264 = vmulq_f32(*v263, v259);
            v265 = vmulq_f32(v263[1], v259);
            v266 = vmulq_f32(v263[2], v259);
            v266.i32[3] = 0;
            *v264.f32 = vadd_f32(vpadd_f32(*v264.f32, *v265.f32), vzip1_s32(*&vextq_s8(v264, v264, 8uLL), *&vextq_s8(v265, v265, 8uLL)));
            *&v264.u32[2] = vpadd_f32(vpadd_f32(*v266.i8, *&vextq_s8(v266, v266, 8uLL)), 0);
            *(a1 + 64) = v264;
            v267 = vsubq_f32(*(a1 + 48), vmulq_n_f32(v264, COERCE_FLOAT(*(a1 + 80))));
            v267.i32[3] = 0;
            *(a1 + 32) = v267;
            v268 = a2[3];
            v269 = *(v268 + 32);
            v270 = vsubq_f32(v267, *(v268 + 48));
            v271 = *(v268 + 16);
            v272 = vtrn1q_s32(*v268, v271);
            v273.i64[0] = vextq_s8(v272, v272, 8uLL).u64[0];
            v273.i64[1] = vextq_s8(v269, v269, 8uLL).u32[0];
            v274 = vmulq_f32(v273, v270);
            v270.i32[3] = 0;
            v272.i64[1] = v269.u32[0];
            *v265.f32 = vzip2_s32(*v268, *v271.i8);
            *&v265.u32[2] = vzip2_s32(*v269.i8, 0);
            v275 = vmulq_f32(v272, v270);
            v276 = vmulq_f32(v265, v270);
            v274.i32[3] = 0;
            *v276.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v275, v275, 8uLL), *&vextq_s8(v276, v276, 8uLL)), vpadd_f32(*v275.i8, *v276.i8));
            v276.u64[1] = vpadd_f32(vpadd_f32(*v274.i8, *&vextq_s8(v274, v274, 8uLL)), 0);
            *(a1 + 16) = v276;
          }
        }
      }
    }
  }
}

void btConnectivityProcessor::~btConnectivityProcessor(btConnectivityProcessor *this)
{
  C3DSceneSourcePerformConsistencyCheck(this);

  JUMPOUT(0x21CF07610);
}

void btConnectivityProcessor::processTriangle(btConnectivityProcessor *this, float32x4_t *a2, unsigned int a3, unsigned int a4)
{
  v182 = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  if (*(this + 1) != __PAIR64__(a4, a3))
  {
    v180 = -1;
    v181 = -1;
    v179 = -1;
    v178 = -1;
    v7 = vsubq_f32(a2[1], *a2);
    v7.i32[3] = 0;
    v8 = vsubq_f32(a2[2], *a2);
    v8.i32[3] = 0;
    v9 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL), v7), vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), v8));
    v10 = vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL);
    v10.i32[3] = 0;
    v11 = vmulq_f32(v10, v10);
    v8.f32[0] = vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0];
    v12 = *(this + 3);
    v13 = *(v12 + 144);
    if (v8.f32[0] >= v13)
    {
      v14 = *(this + 2);
      v15 = vsubq_f32(v14[1], *v14);
      v15.i32[3] = 0;
      v16 = vsubq_f32(v14[2], *v14);
      v16.i32[3] = 0;
      v17 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL), v15), vmulq_f32(vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL), v16));
      v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
      v18.i32[3] = 0;
      v19 = vmulq_f32(v18, v18);
      if (vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0] >= v13)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = 0;
          v23 = v14[v20];
          do
          {
            v24 = vsubq_f32(v23, a2[v22]);
            v24.i32[3] = 0;
            v25 = vmulq_f32(v24, v24);
            if (vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0] < v13)
            {
              *(&v180 + v21) = v20;
              v178.i32[v21] = v22;
              if (v21 > 1)
              {
                return;
              }

              ++v21;
            }

            ++v22;
          }

          while (v22 != 3);
          if (v21 > 2)
          {
            return;
          }

          ++v20;
        }

        while (v20 != 3);
        if (v21 != 2)
        {
          return;
        }

        v27 = v180;
        v26 = HIDWORD(v180);
        if (v180 == 0x200000000)
        {
          v26 = 0;
          v180 = 2;
          v178 = vrev64_s32(v178);
          v27 = 2;
        }

        v28 = *(this + 3) | (v6 << 21);
        LODWORD(v174[0]) = v28;
        Index = btHashMap<btHashInt,btTriangleInfo>::findIndex(v12 + 8, v174);
        if (Index == -1 || (v30 = *(v12 + 88)) == 0)
        {
          *(v174 + 4) = vdup_n_s32(0x40C90FDBu);
          HIDWORD(v174[0]) = 1086918619;
          LODWORD(v174[0]) = 0;
          v31 = *(this + 3);
          LODWORD(v169) = v28;
          btHashMap<btHashInt,btTriangleInfo>::insert(v31 + 8, &v169, v174);
          v32 = *(this + 3);
          LODWORD(v169) = v28;
          Index = btHashMap<btHashInt,btTriangleInfo>::findIndex(v32 + 8, &v169);
          if (Index == -1)
          {
            v33 = 0;
            goto LABEL_22;
          }

          v30 = *(v32 + 88);
        }

        v33 = v30 + 16 * Index;
LABEL_22:
        v34 = v26 + v27;
        if ((v26 + v27 - 1) > 2)
        {
          return;
        }

        v35 = v178.i32[0];
        v36 = v178.i32[1];
        if ((v178.i32[1] + v178.i32[0] - 1) > 2)
        {
          return;
        }

        v162 = v33;
        v37 = 3 - (v178.i32[1] + v178.i32[0]);
        v38 = *(this + 2);
        v39 = vsubq_f32(v38[v26], v38[v27]);
        v39.i32[3] = 0;
        v163 = v39;
        btPolyhedralConvexShape::btPolyhedralConvexShape(v174);
        *&v174[0] = &unk_282DC92A0;
        DWORD2(v174[0]) = 1;
        v175 = *v38;
        v176 = v38[1];
        v177 = v38[2];
        btPolyhedralConvexShape::btPolyhedralConvexShape(&v169);
        v165 = 0;
        v169 = &unk_282DC92A0;
        v40 = a2[v36];
        v170 = 1;
        v41 = a2[v35];
        v42 = a2[v37];
        v171 = v40;
        v172 = v41;
        v173 = v42;
        v43 = vsubq_f32(v176, v175);
        v44 = vsubq_f32(v177, v175);
        v45 = v44;
        v45.i32[3] = 0;
        v46 = vmulq_f32(vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL), v43);
        v43.i32[3] = 0;
        v47 = vsubq_f32(v46, vmulq_f32(vextq_s8(vextq_s8(v43, v43, 0xCuLL), v43, 8uLL), v44));
        v48 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
        v48.i32[3] = 0;
        v49 = vmulq_f32(v48, v48);
        v50 = vsubq_f32(v41, v40);
        v51 = vsubq_f32(v42, v40);
        v52 = v51;
        v52.i32[3] = 0;
        v53 = vmulq_f32(vextq_s8(vextq_s8(v52, v52, 0xCuLL), v52, 8uLL), v50);
        v50.i32[3] = 0;
        v54 = vmulq_n_f32(v48, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL)).f32[0]));
        v55 = vsubq_f32(v53, vmulq_f32(vextq_s8(vextq_s8(v50, v50, 0xCuLL), v50, 8uLL), v51));
        v56 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
        v56.i32[3] = 0;
        v57 = vmulq_f32(v56, v56);
        v58 = vmulq_n_f32(v56, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v57.i8, *v57.i8), *&vextq_s8(v57, v57, 8uLL)).f32[0]));
        v59 = vmulq_f32(v163, v163);
        v60 = vmulq_n_f32(v163, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v59, v59, 8uLL), vpadd_f32(*v59.i8, *v59.i8)).f32[0]));
        v61 = vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL);
        v46.i64[0] = vextq_s8(v54, v54, 4uLL).u64[0];
        v160 = v46.i64[0];
        v46.i64[1] = v54.i64[0];
        v62 = vsubq_f32(vmulq_f32(v60, v46), vmulq_f32(v61, v54));
        v63 = vextq_s8(vextq_s8(v62, v62, 0xCuLL), v62, 8uLL);
        v63.i32[3] = 0;
        v64 = vmulq_f32(v63, v63);
        v65 = *(this + 2);
        v70 = *(v65 + 16 * v27);
        v66 = vmulq_n_f32(v63, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v64.i8, *v64.i8), *&vextq_s8(v64, v64, 8uLL)).f32[0]));
        v67 = vsubq_f32(*(v65 + 16 * (3 - v34)), v70);
        v67.i32[3] = 0;
        v68 = vmulq_f32(v66, v67);
        *v53.f32 = vpadd_f32(*v68.i8, *v68.i8);
        v69 = vextq_s8(v68, v68, 8uLL);
        *v69.f32 = vadd_f32(*v53.f32, *v69.f32);
        v70.i64[0] = 0;
        v164 = v54;
        v159 = vextq_s8(v54, v54, 8uLL).u64[0];
        v71 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v70, v69), 0), vnegq_f32(v66), v66);
        v161 = v58;
        v72 = vsubq_f32(vmulq_f32(v60, vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL)), vmulq_f32(v61, v58));
        v73 = vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL);
        v73.i32[3] = 0;
        v74 = vmulq_f32(v73, v73);
        v75 = vmulq_n_f32(v73, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v74.i8, *v74.i8), *&vextq_s8(v74, v74, 8uLL)).f32[0]));
        v76 = vsubq_f32(v42, v41);
        v76.i32[3] = 0;
        v77 = vmulq_f32(v75, v76);
        *v42.f32 = vpadd_f32(*v77.i8, *v77.i8);
        v78 = vextq_s8(v77, v77, 8uLL);
        *v78.f32 = vadd_f32(*v42.f32, *v78.f32);
        v79 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v70, v78), 0), vnegq_f32(v75), v75);
        v80 = vextq_s8(vextq_s8(v71, v71, 0xCuLL), v71, 8uLL);
        v81 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v79, v79, 0xCuLL), v79, 8uLL), v71), vmulq_f32(v79, v80));
        v82 = vextq_s8(vextq_s8(v81, v81, 0xCuLL), v81, 8uLL);
        v82.i32[3] = 0;
        v83 = vmulq_f32(v82, v82);
        v84 = vadd_f32(vpadd_f32(*v83.i8, *v83.i8), *&vextq_s8(v83, v83, 8uLL)).f32[0];
        if (v84 >= *(*(this + 3) + 140))
        {
          v155 = vmulq_n_f32(v82, 1.0 / sqrtf(v84));
          v85.i64[0] = vextq_s8(v155, v155, 4uLL).u64[0];
          v85.i64[1] = v155.i64[0];
          v86 = vsubq_f32(vmulq_f32(v80, v155), vmulq_f32(v71, v85));
          v87 = vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL);
          v87.i32[3] = 0;
          v88 = vmulq_f32(v87, v87);
          v89 = vmulq_f32(v79, vmulq_n_f32(v87, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v88, v88, 8uLL), vpadd_f32(*v88.i8, *v88.i8)).f32[0])));
          v90 = vmulq_f32(v79, v71);
          v166 = v79;
          v91 = 3.1416 - atan2f(vadd_f32(vpadd_f32(*v89.i8, *v89.i8), *&vextq_s8(v89, v89, 8uLL)).f32[0], vadd_f32(*&vextq_s8(v90, v90, 8uLL), vpadd_f32(*v90.i8, *v90.i8)).f32[0]);
          v92 = vmulq_f32(v164, v166);
          *v92.i32 = vadd_f32(*&vextq_s8(v92, v92, 8uLL), vpadd_f32(*v92.i8, *v92.i8)).f32[0];
          v165 = *v92.i32 < 0.0;
          if (*v92.i32 >= 0.0)
          {
            v93 = -v91;
          }

          else
          {
            v93 = v91;
          }

          v151 = v93;
          v94 = vmulq_f32(v155, v155);
          v95 = sqrtf(vadd_f32(*&vextq_s8(v94, v94, 8uLL), vpadd_f32(*v94.i8, *v94.i8)).f32[0]);
          v96 = __sincosf_stret(v93 * -0.5);
          *v168.var0.var0 = vmul_n_f32(*v155.f32, v96.__sinval / v95);
          *&v168.var0.var0[2] = __PAIR64__(LODWORD(v96.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v96.__sinval / v95, v155, 2)));
          btMatrix3x3::setRotation(&v167, &v168);
          v70.f32[0] = v151;
        }

        v97 = *(this + 2);
        if (v34 == 3)
        {
          v117 = vsubq_f32(v97[1], v97[2]);
          v118 = v117;
          v118.i32[3] = 0;
          v153 = v118;
          v157 = v117;
          v119 = -v70.f32[0];
          v120 = vmulq_f32(v118, v118);
          v121 = sqrtf(vadd_f32(vpadd_f32(*v120.i8, *v120.i8), *&vextq_s8(v120, v120, 8uLL)).f32[0]);
          v122 = __sincosf_stret(v70.f32[0] * -0.5);
          v123 = vmulq_n_f32(v153, v122.__sinval / v121);
          v124.i64[0] = v123.i64[0];
          v124.i64[1] = __PAIR64__(LODWORD(v122.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v122.__sinval / v121, v157, 2)));
          v125 = vextq_s8(v124, v124, 8uLL).u64[0];
          v126.i64[0] = v164.i64[0];
          v127.i64[0] = v160;
          *v128.f32 = vzip1_s32(v159, *v164.f32);
          *v129.f32 = vzip1_s32(v125, *v123.i8);
          *v130.f32 = vext_s8(*v123.i8, v125, 4uLL);
          *v131.f32 = vdup_laneq_s32(v124, 3);
          v129.i64[1] = v130.i64[0];
          *&v127.u32[2] = vrev64_s32(*v128.f32);
          v131.i64[1] = v123.i64[0];
          *&v126.u32[2] = vdup_lane_s32(*v164.f32, 1);
          v128.i64[1] = v128.i64[0];
          v130.i64[1] = vextq_s8(v124, v123, 0xCuLL).u64[0];
          v167.var0[0] = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v126, v131), vmulq_f32(v128, v130)), xmmword_21C27FD30), vmulq_f32(v127, v129));
          v168 = veorq_s8(v124, xmmword_21C27FD40);
          btQuaternion::operator*=(&v167, &v168);
          v132 = v167.var0[0];
          v132.i32[3] = 0;
          v133 = vmulq_f32(v161, v132);
          v115 = v162;
          if (vadd_f32(vpadd_f32(*v133.i8, *v133.i8), *&vextq_s8(v133, v133, 8uLL)).f32[0] < 0.0)
          {
            *v162 |= 0x10u;
          }

          *(v162 + 8) = v119;
          if (!v165)
          {
            goto LABEL_44;
          }

          v116 = 2;
        }

        else if (v34 == 2)
        {
          v98 = vsubq_f32(v97[2], *v97);
          v99 = v98;
          v99.i32[3] = 0;
          v152 = v99;
          v156 = v98;
          v100 = -v70.f32[0];
          v101 = vmulq_f32(v99, v99);
          v102 = sqrtf(vadd_f32(vpadd_f32(*v101.i8, *v101.i8), *&vextq_s8(v101, v101, 8uLL)).f32[0]);
          v103 = __sincosf_stret(v70.f32[0] * -0.5);
          v104 = vmulq_n_f32(v152, v103.__sinval / v102);
          v105.i64[0] = v104.i64[0];
          v105.i64[1] = __PAIR64__(LODWORD(v103.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v103.__sinval / v102, v156, 2)));
          v106 = vextq_s8(v105, v105, 8uLL).u64[0];
          v107.i64[0] = v164.i64[0];
          v108.i64[0] = v160;
          *v109.f32 = vzip1_s32(v159, *v164.f32);
          *v110.f32 = vzip1_s32(v106, *v104.i8);
          *v111.f32 = vext_s8(*v104.i8, v106, 4uLL);
          *v112.f32 = vdup_laneq_s32(v105, 3);
          v110.i64[1] = v111.i64[0];
          *&v108.u32[2] = vrev64_s32(*v109.f32);
          v112.i64[1] = v104.i64[0];
          *&v107.u32[2] = vdup_lane_s32(*v164.f32, 1);
          v109.i64[1] = v109.i64[0];
          v111.i64[1] = vextq_s8(v105, v104, 0xCuLL).u64[0];
          v167.var0[0] = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v107, v112), vmulq_f32(v109, v111)), xmmword_21C27FD30), vmulq_f32(v108, v110));
          v168 = veorq_s8(v105, xmmword_21C27FD40);
          btQuaternion::operator*=(&v167, &v168);
          v113 = v167.var0[0];
          v113.i32[3] = 0;
          v114 = vmulq_f32(v161, v113);
          v115 = v162;
          if (vadd_f32(vpadd_f32(*v114.i8, *v114.i8), *&vextq_s8(v114, v114, 8uLL)).f32[0] < 0.0)
          {
            *v162 |= 0x20u;
          }

          *(v162 + 12) = v100;
          if (!v165)
          {
            goto LABEL_44;
          }

          v116 = 4;
        }

        else
        {
          v134 = vsubq_f32(*v97, v97[1]);
          v135 = v134;
          v135.i32[3] = 0;
          v154 = v135;
          v158 = v134;
          v136 = -v70.f32[0];
          v137 = vmulq_f32(v135, v135);
          v138 = sqrtf(vadd_f32(vpadd_f32(*v137.i8, *v137.i8), *&vextq_s8(v137, v137, 8uLL)).f32[0]);
          v139 = __sincosf_stret(v70.f32[0] * -0.5);
          v140 = vmulq_n_f32(v154, v139.__sinval / v138);
          v141.i64[0] = v140.i64[0];
          v141.i64[1] = __PAIR64__(LODWORD(v139.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v139.__sinval / v138, v158, 2)));
          v142 = vextq_s8(v141, v141, 8uLL).u64[0];
          v143.i64[0] = v164.i64[0];
          v144.i64[0] = v160;
          *v145.f32 = vzip1_s32(v159, *v164.f32);
          *v146.f32 = vzip1_s32(v142, *v140.i8);
          *v147.f32 = vext_s8(*v140.i8, v142, 4uLL);
          *v148.f32 = vdup_laneq_s32(v141, 3);
          v146.i64[1] = v147.i64[0];
          *&v144.u32[2] = vrev64_s32(*v145.f32);
          v148.i64[1] = v140.i64[0];
          *&v143.u32[2] = vdup_lane_s32(*v164.f32, 1);
          v145.i64[1] = v145.i64[0];
          v147.i64[1] = vextq_s8(v141, v140, 0xCuLL).u64[0];
          v167.var0[0] = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v143, v148), vmulq_f32(v145, v147)), xmmword_21C27FD30), vmulq_f32(v144, v146));
          v168 = veorq_s8(v141, xmmword_21C27FD40);
          btQuaternion::operator*=(&v167, &v168);
          v149 = v167.var0[0];
          v149.i32[3] = 0;
          v150 = vmulq_f32(v161, v149);
          v115 = v162;
          if (vadd_f32(vpadd_f32(*v150.i8, *v150.i8), *&vextq_s8(v150, v150, 8uLL)).f32[0] < 0.0)
          {
            *v162 |= 8u;
          }

          *(v162 + 4) = v136;
          if (!v165)
          {
            goto LABEL_44;
          }

          v116 = 1;
        }

        *v115 |= v116;
LABEL_44:
        btPolyhedralConvexShape::~btPolyhedralConvexShape(&v169);
        btPolyhedralConvexShape::~btPolyhedralConvexShape(v174);
      }
    }
  }
}

void btHashMap<btHashInt,btTriangleInfo>::insert(uint64_t a1, int *a2, _OWORD *a3)
{
  v6 = *a2;
  v7 = *(a1 + 72);
  Index = btHashMap<btHashInt,btTriangleInfo>::findIndex(a1, a2);
  if (Index != -1)
  {
    *(*(a1 + 80) + 16 * Index) = *a3;
    return;
  }

  v9 = 9 * ((v6 + ~(v6 << 15)) ^ ((v6 + ~(v6 << 15)) >> 10));
  v10 = ((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) ^ (((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) >> 16);
  v11 = v7 - 1;
  v12 = *(a1 + 68);
  v13 = *(a1 + 72);
  v14 = v12;
  if (v12 == v13)
  {
    v15 = v12 ? 2 * v12 : 1;
    v14 = *(a1 + 68);
    if (v12 < v15)
    {
      if (v15)
      {
        v16 = btAlignedAllocInternal(16 * v15, 16);
      }

      else
      {
        v16 = 0;
      }

      if (*(a1 + 68) >= 1)
      {
        v17 = 0;
        v18 = 16 * *(a1 + 68);
        do
        {
          *(v16 + v17) = *(*(a1 + 80) + v17);
          v17 += 16;
        }

        while (v18 != v17);
      }

      v19 = *(a1 + 80);
      if (v19 && *(a1 + 88) == 1)
      {
        btAlignedFreeInternal(v19);
      }

      *(a1 + 88) = 1;
      *(a1 + 80) = v16;
      *(a1 + 72) = v15;
      v14 = *(a1 + 68);
    }
  }

  v20 = v10 & v11;
  *(*(a1 + 80) + 16 * v14) = *a3;
  ++*(a1 + 68);
  LODWORD(v21) = *(a1 + 100);
  if (v21 == *(a1 + 104))
  {
    v22 = v21 ? 2 * v21 : 1;
    if (v21 < v22)
    {
      if (v22)
      {
        v23 = btAlignedAllocInternal(4 * v22, 16);
        LODWORD(v21) = *(a1 + 100);
      }

      else
      {
        v23 = 0;
      }

      v24 = *(a1 + 112);
      if (v21 < 1)
      {
        if (!v24)
        {
LABEL_34:
          *(a1 + 120) = 1;
          *(a1 + 112) = v23;
          *(a1 + 104) = v22;
          LODWORD(v21) = *(a1 + 100);
          goto LABEL_35;
        }
      }

      else
      {
        v21 = v21;
        v25 = v23;
        v26 = *(a1 + 112);
        do
        {
          v27 = *v26++;
          *v25++ = v27;
          --v21;
        }

        while (v21);
      }

      if (*(a1 + 120) == 1)
      {
        btAlignedFreeInternal(v24);
      }

      *(a1 + 112) = 0;
      goto LABEL_34;
    }
  }

LABEL_35:
  *(*(a1 + 112) + 4 * v21) = *a2;
  ++*(a1 + 100);
  if (v13 < *(a1 + 72))
  {
    btHashMap<btHashInt,btTriangleInfo>::growTables(a1);
    v28 = 9 * ((*a2 + ~(*a2 << 15)) ^ ((*a2 + ~(*a2 << 15)) >> 10));
    v29 = (v28 ^ (v28 >> 6)) + ~((v28 ^ (v28 >> 6)) << 11);
    v20 = (v29 ^ (v29 >> 16)) & (*(a1 + 72) - 1);
  }

  v30 = *(a1 + 16);
  *(*(a1 + 48) + 4 * v12) = *(v30 + 4 * v20);
  *(v30 + 4 * v20) = v12;
}

uint64_t btHashMap<btHashInt,btTriangleInfo>::findIndex(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = 0xFFFFFFFFLL;
  v5 = 9 * ((v3 + ~(v3 << 15)) ^ ((v3 + ~(v3 << 15)) >> 10));
  v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
  v7 = (v6 ^ (v6 >> 16)) & (*(a1 + 72) - 1);
  if (v7 < *(a1 + 4))
  {
    result = *(*(a1 + 16) + 4 * v7);
    if (result == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      while (v3 != *(*(a1 + 112) + 4 * result))
      {
        result = *(*(a1 + 48) + 4 * result);
        if (result == -1)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

void btHashMap<btHashInt,btTriangleInfo>::growTables(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 4);
  if (v2 >= v1)
  {
    return;
  }

  if (*(a1 + 8) < v1)
  {
    if (v1)
    {
      v4 = btAlignedAllocInternal(4 * v1, 16);
      LODWORD(v5) = *(a1 + 4);
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = *(a1 + 4);
    }

    v6 = *(a1 + 16);
    if (v5 < 1)
    {
      if (!v6)
      {
LABEL_14:
        *(a1 + 24) = 1;
        *(a1 + 16) = v4;
        *(a1 + 8) = v1;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v5;
      v7 = v4;
      v8 = *(a1 + 16);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 24) == 1)
    {
      btAlignedFreeInternal(v6);
    }

    *(a1 + 16) = 0;
    goto LABEL_14;
  }

LABEL_15:
  bzero((*(a1 + 16) + 4 * v2), 4 * (v1 + ~v2) + 4);
  *(a1 + 4) = v1;
  v10 = *(a1 + 36);
  if (v10 < v1)
  {
    if (*(a1 + 40) >= v1)
    {
LABEL_28:
      bzero((*(a1 + 48) + 4 * v10), 4 * (v1 + ~v10) + 4);
      goto LABEL_29;
    }

    if (v1)
    {
      v11 = btAlignedAllocInternal(4 * v1, 16);
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v12) = *(a1 + 36);
    v13 = *(a1 + 48);
    if (v12 < 1)
    {
      if (!v13)
      {
LABEL_27:
        *(a1 + 56) = 1;
        *(a1 + 48) = v11;
        *(a1 + 40) = v1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v12;
      v14 = v11;
      v15 = *(a1 + 48);
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
    }

    if (*(a1 + 56) == 1)
    {
      btAlignedFreeInternal(v13);
    }

    goto LABEL_27;
  }

LABEL_29:
  *(a1 + 36) = v1;
  if (v1 >= 1)
  {
    memset(*(a1 + 16), 255, 4 * v1);
    memset(*(a1 + 48), 255, 4 * v1);
  }

  if (v2 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 112);
    v19 = *(a1 + 16);
    v20 = *(a1 + 48);
    do
    {
      v21 = *(v18 + 4 * v17) + ~(*(v18 + 4 * v17) << 15);
      v22 = (9 * (v21 ^ (v21 >> 10))) ^ ((9 * (v21 ^ (v21 >> 10))) >> 6);
      v23 = ((v22 + ~(v22 << 11)) ^ ((v22 + ~(v22 << 11)) >> 16)) & (*(a1 + 72) - 1);
      *(v20 + 4 * v17) = *(v19 + 4 * v23);
      *(v19 + 4 * v23) = v17++;
    }

    while (v2 != v17);
  }
}

int8x16_t btQuaternion::operator*=(int8x16_t *a1, int32x2_t *a2)
{
  v2 = *a2->i8;
  v3 = vextq_s8(*a1, *a1, 8uLL).u64[0];
  v4 = vzip1_s32(v3, *a1->i8);
  v5 = vextq_s8(v2, v2, 8uLL).u64[0];
  *v6.f32 = vzip1_s32(v5, *a2);
  v7 = vext_s8(v5, *a2, 4uLL);
  *v8.f32 = vext_s8(*a1->i8, v3, 4uLL);
  *v9.f32 = vext_s8(*a2, v5, 4uLL);
  *v10.f32 = v4;
  v10.i64[1] = v8.i64[0];
  *&v9.u32[2] = vrev64_s32(*v6.f32);
  v11 = vtrn2q_s32(v2, v2);
  *&v6.u32[2] = v7;
  *&v8.u32[2] = v4;
  result = vaddq_f32(vsubq_f32(vmulq_laneq_f32(*a2->i8, *a1, 3), vmulq_f32(v10, v9)), veorq_s8(vaddq_f32(vmulq_f32(vdupq_lane_s64(a1->i64[0], 0), vextq_s8(v11, v11, 8uLL)), vmulq_f32(v8, v6)), xmmword_21C27FD30));
  *a1 = result;
  return result;
}

float btManifoldResult::calculateCombinedFriction(btManifoldResult *this, const btCollisionObject *a2, const btCollisionObject *a3)
{
  result = *(this + 63) * *(a2 + 63);
  if (result < -10.0)
  {
    result = -10.0;
  }

  if (result > 10.0)
  {
    return 10.0;
  }

  return result;
}

void *btManifoldResult::btManifoldResult(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_282DC97D8;
  result[1] = 0;
  result[2] = a2;
  result[3] = a3;
  return result;
}

void btManifoldResult::addContactPoint(btManifoldResult *this, float32x4_t *a2, float32x4_t *a3, float a4)
{
  if (btPersistentManifold::getContactBreakingThreshold(*(this + 1)) >= a4)
  {
    v7 = *(this + 1);
    var3 = v7->var3;
    v9 = *(*(this + 2) + 16);
    v10 = *a2;
    v11 = vmulq_n_f32(*a2, a4);
    v11.i32[3] = 0;
    v12 = *a3;
    v13 = vaddq_f32(*a3, v11);
    if (var3 == v9)
    {
      v28 = *(v9 + 48);
      v29 = vsubq_f32(v13, *(v9 + 64));
      v30 = *(v9 + 16);
      v31 = *(v9 + 32);
      v32 = vtrn1q_s32(v30, v31);
      *v30.f32 = vzip2_s32(*v30.f32, *v31.f32);
      v31.i64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
      v33 = v29;
      v33.i32[3] = 0;
      v32.i64[1] = v28.u32[0];
      *&v30.u32[2] = vzip2_s32(*v28.i8, 0);
      v31.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
      v34 = vmulq_f32(v31, v29);
      v22 = vmulq_f32(v32, v33);
      v35 = vmulq_f32(v30, v33);
      v24 = vextq_s8(v35, v35, 8uLL).u64[0];
      v34.i32[3] = 0;
      v25 = vpadd_f32(*v22.i8, *v35.i8);
      v26 = vpadd_f32(vpadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)), 0);
      v27 = *(*(this + 3) + 16);
    }

    else
    {
      v14 = *(*(this + 3) + 16);
      v15 = *(v14 + 48);
      v16 = vsubq_f32(v13, *(v14 + 64));
      v17 = *(v14 + 16);
      v18 = *(v14 + 32);
      v19 = vtrn1q_s32(v17, v18);
      *v17.f32 = vzip2_s32(*v17.f32, *v18.f32);
      v18.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
      v18.i64[1] = vextq_s8(v15, v15, 8uLL).u32[0];
      v20 = vmulq_f32(v18, v16);
      v21 = v16;
      v21.i32[3] = 0;
      v19.i64[1] = v15.u32[0];
      *&v17.u32[2] = vzip2_s32(*v15.i8, 0);
      v22 = vmulq_f32(v19, v21);
      v23 = vmulq_f32(v17, v21);
      v20.i32[3] = 0;
      v24 = vextq_s8(v23, v23, 8uLL).u64[0];
      v25 = vpadd_f32(*v22.i8, *v23.i8);
      v26 = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
      v27 = *(*(this + 2) + 16);
    }

    v36 = *(v27 + 48);
    v37 = vsubq_f32(v12, *(v27 + 64));
    v38 = *(v27 + 16);
    v39 = *(v27 + 32);
    v40 = vtrn1q_s32(v38, v39);
    *v41.var0.var0 = vadd_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), v24), v25);
    v42 = vzip2_s32(*v36.f32, 0);
    *&v41.var0.var0[2] = v26;
    v43 = vmulq_f32(vzip2q_s64(v40, v36), v37);
    v37.i32[3] = 0;
    v40.i64[1] = v36.u32[0];
    *v36.f32 = vzip2_s32(*v38.i8, *v39.i8);
    *&v36.u32[2] = v42;
    v44 = vmulq_f32(v40, v37);
    v45 = vmulq_f32(v36, v37);
    v43.i32[3] = 0;
    *v44.var0.var0 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vpadd_f32(*v44.var0.var0, *v45.i8));
    *&v44.var0.var0[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
    v81.var0 = v41;
    v81.var1 = v44;
    v81.var3 = v13;
    v81.var4 = v10;
    v81.var5 = a4;
    *&v81.var6 = 0;
    v81.var8 = 0.0;
    v81.var13 = 0;
    v81.var14 = 0;
    memset(&v81.var15, 0, 32);
    v81.var2 = v12;
    CacheEntry = btPersistentManifold::getCacheEntry(v7, &v81);
    v47 = *(*(this + 2) + 16);
    v48 = *(*(this + 3) + 16);
    v49.i32[0] = *(v47 + 252);
    v50.i32[0] = *(v48 + 252);
    v81.var8 = *(v47 + 256) * *(v48 + 256);
    v49.i32[1] = *(v47 + 260);
    v50.i32[1] = *(v48 + 260);
    v51 = vmul_f32(v49, v50);
    __asm { FMOV            V1.2S, #-10.0 }

    v57 = vbsl_s8(vcgt_f32(_D1, v51), _D1, v51);
    __asm { FMOV            V1.2S, #10.0 }

    *&v81.var6 = vbsl_s8(vcgt_f32(v57, _D1), _D1, v57);
    if (fabsf(v81.var4.var0.var0[2]) <= 0.70711)
    {
      v67 = (v81.var4.var0.var0[1] * v81.var4.var0.var0[1]) + (v81.var4.var0.var0[0] * v81.var4.var0.var0[0]);
      v68 = 1.0 / sqrtf(v67);
      v66 = -(v81.var4.var0.var0[1] * v68);
      v61 = v81.var4.var0.var0[0] * v68;
      v63 = -(v81.var4.var0.var0[2] * (v81.var4.var0.var0[0] * v68));
      v64 = v81.var4.var0.var0[2] * v66;
      v65 = v67 * v68;
      v62 = 0.0;
    }

    else
    {
      v59 = (v81.var4.var0.var0[2] * v81.var4.var0.var0[2]) + (v81.var4.var0.var0[1] * v81.var4.var0.var0[1]);
      v60 = 1.0 / sqrtf(v59);
      v61 = -(v81.var4.var0.var0[2] * v60);
      v62 = v81.var4.var0.var0[1] * v60;
      v63 = v59 * v60;
      v64 = -(v81.var4.var0.var0[0] * (v81.var4.var0.var0[1] * v60));
      v65 = v61 * v81.var4.var0.var0[0];
      v66 = 0.0;
    }

    *&v81.var23.var0.var0[1] = __PAIR64__(LODWORD(v61), LODWORD(v66));
    v81.var23.var0.var0[3] = v62;
    *&v81.var24.var0.var0[1] = __PAIR64__(LODWORD(v64), LODWORD(v63));
    v69 = 36;
    v70 = 44;
    if (var3 == v9)
    {
      v71 = 40;
    }

    else
    {
      v71 = 44;
    }

    if (var3 == v9)
    {
      v72 = 32;
    }

    else
    {
      v70 = 40;
      v72 = 36;
    }

    v73 = *(this + v70);
    v74 = *(this + v71);
    if (var3 != v9)
    {
      v69 = 32;
    }

    v75 = *(this + v69);
    v76 = *(this + v72);
    v81.var24.var0.var0[3] = v65;
    v81.var9 = v76;
    v81.var10 = v75;
    v81.var11 = v74;
    v81.var12 = v73;
    v77 = *(this + 1);
    if (CacheEntry < 0)
    {
      CacheEntry = btPersistentManifold::addManifoldPoint(v77, &v81);
    }

    else
    {
      btPersistentManifold::replaceContactPoint(v77, &v81, CacheEntry);
    }

    if (gContactAddedCallback && ((*(*(*(this + 2) + 16) + 232) & 8) != 0 || (*(*(*(this + 3) + 16) + 232) & 8) != 0))
    {
      v78 = 24;
      if (var3 == v9)
      {
        v79 = 16;
      }

      else
      {
        v79 = 24;
      }

      if (var3 != v9)
      {
        v78 = 16;
      }

      gContactAddedCallback(*(this + 1) + 192 * CacheEntry + 16, *(this + v79), v81.var9, v81.var11, *(this + v78), v81.var10, v81.var12);
    }
  }
}

_BYTE *btPersistentManifold::replaceContactPoint(btPersistentManifold *this, const btManifoldPoint *a2, int a3)
{
  v4 = this + 192 * a3;
  v5 = *(v4 + 42);
  v6 = *(v4 + 37);
  v7 = *(v4 + 16);
  *(v4 + 1) = a2->var0;
  *(v4 + 2) = a2->var1;
  *(v4 + 3) = a2->var2;
  *(v4 + 4) = a2->var3;
  *(v4 + 5) = a2->var4;
  v8 = *(v4 + 140);
  *(v4 + 6) = *&a2->var5;
  v9 = *&a2->var9;
  v10 = *&a2->var13;
  v11 = *&a2->var16;
  *(v4 + 156) = *&a2->var19;
  *(v4 + 8) = v10;
  *(v4 + 9) = v11;
  *(v4 + 7) = v9;
  *(v4 + 11) = *(&a2->var23 + 4);
  *(v4 + 12) = *(&a2->var24 + 4);
  *(v4 + 16) = v7;
  *(v4 + 140) = v8;
  *(v4 + 37) = v6;
  *(v4 + 42) = v5;
  result = *&this[1].var0;
  if (result)
  {
    if ((result[8] & 2) != 0)
    {
      return (*(*result + 8))(result, this);
    }
  }

  return result;
}

void btSimulationIslandManager::btSimulationIslandManager(btSimulationIslandManager *this)
{
  *this = &unk_282DC9810;
  btUnionFind::btUnionFind((this + 8));
  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 44) = 0;
  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 76) = 0;
  *(this + 104) = 1;
}

void btSimulationIslandManager::~btSimulationIslandManager(btSimulationIslandManager *this)
{
  *this = &unk_282DC9810;
  v2 = *(this + 11);
  if (v2 && *(this + 96) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v3 = *(this + 7);
  if (v3 && *(this + 64) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(this + 8);
}

{
  btSimulationIslandManager::~btSimulationIslandManager(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btSimulationIslandManager::findUnions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(**(a3 + 96) + 72))(*(a3 + 96));
  result = (*(*v4 + 72))(v4);
  if (result)
  {
    v6 = result;
    result = (*(*v4 + 40))(v4);
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = (result + 8);
      do
      {
        v9 = **(v8 - 1);
        if (v9)
        {
          v10 = **v8;
          v11 = (*(v9 + 232) & 7) != 0 || v10 == 0;
          if (!v11 && (*(v10 + 232) & 7) == 0)
          {
            result = btUnionFind::unite(a1 + 8, *(v9 + 236), *(v10 + 236));
          }
        }

        v8 += 4;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t btUnionFind::unite(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 16);
  v4 = (v3 + 8 * a2);
  for (i = *v4; a2 != *v4; i = *v4)
  {
    a2 = *(v3 + 8 * i);
    *v4 = a2;
    v4 = (v3 + 8 * a2);
  }

  v6 = (v3 + 8 * a3);
  for (j = *v6; a3 != *v6; j = *v6)
  {
    a3 = *(v3 + 8 * j);
    *v6 = a3;
    v6 = (v3 + 8 * a3);
  }

  if (a2 != a3)
  {
    v8 = (v3 + 8 * a2);
    *v8 = a3;
    *(v3 + 8 * a3 + 4) += v8[1];
  }

  return this;
}

uint64_t btSimulationIslandManager::updateActivationState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *(a2 + 24);
    do
    {
      v7 = *v6;
      if ((*(*v6 + 232) & 3) == 0)
      {
        v7[59] = v5++;
      }

      v7[60] = -1;
      v7[70] = 1065353216;
      v6 += 8;
      --v4;
    }

    while (v4);
  }

  btUnionFind::reset((a1 + 8), v5);

  return btSimulationIslandManager::findUnions(a1, v8, a2);
}

uint64_t btSimulationIslandManager::storeIslandActivationState(uint64_t this, btCollisionWorld *a2)
{
  v2 = *(a2 + 3);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 3);
    do
    {
      v6 = *(v5 + 8 * v3);
      if ((*(v6 + 232) & 3) != 0)
      {
        *(v6 + 236) = 0xFFFFFFFEFFFFFFFFLL;
      }

      else
      {
        v7 = *(this + 24);
        v8 = (v7 + 8 * v4);
        v9 = *v8;
        LODWORD(v10) = v4;
        if (*v8 != v4)
        {
          v11 = (v7 + 8 * v4);
          do
          {
            v10 = *(v7 + 8 * v9);
            *v11 = v10;
            v11 = (v7 + 8 * v10);
            v9 = *v11;
          }

          while (v10 != *v11);
        }

        v8[1] = v3;
        ++v4;
        *(v6 + 236) = v10;
        *(v6 + 240) = -1;
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return this;
}

void btSimulationIslandManager::buildIslands(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 44);
  if ((v6 & 0x80000000) != 0)
  {
    if ((*(a1 + 48) & 0x80000000) != 0)
    {
      v7 = *(a1 + 56);
      if (v7 && *(a1 + 64) == 1)
      {
        btAlignedFreeInternal(v7);
      }

      *(a1 + 64) = 1;
      *(a1 + 56) = 0;
      *(a1 + 48) = 0;
    }

    do
    {
      *(*(a1 + 56) + 8 * v6++) = 0;
    }

    while (v6);
  }

  *(a1 + 44) = 0;
  btUnionFind::sortIslands(a1 + 8);
  v8 = *(a1 + 12);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = *(a1 + 24);
      v12 = 8 * v9;
      v13 = (v11 + v12 + 8);
      v14 = *(v11 + v12);
      if (v8 <= v9 + 1)
      {
        v15 = v9 + 1;
      }

      else
      {
        v15 = v8;
      }

      v16 = v15 - 1;
      v17 = v9 + 1;
      while (v17 < v8)
      {
        v18 = *v13;
        v13 += 2;
        ++v9;
        ++v17;
        if (v18 != v14)
        {
          v16 = v9 - 1;
          goto LABEL_18;
        }
      }

      v9 = v15;
LABEL_18:
      if (v10 <= v16)
      {
        v19 = (v11 + v12 + 4);
        v20 = v16 - v10 + 1;
        v21 = 1;
        v22 = v20;
        do
        {
          v23 = *v19;
          v19 += 2;
          v24 = *(*(a3 + 24) + 8 * v23);
          if (*(v24 + 236) == v14)
          {
            v25 = *(v24 + 244);
            v27 = v25 != 4 && v25 != 1;
            v21 &= v27;
          }

          --v22;
        }

        while (v22);
        if (v21)
        {
          v28 = v12 + 4;
          do
          {
            v29 = *(*(a3 + 24) + 8 * *(*(a1 + 24) + v28));
            if (*(v29 + 236) == v14)
            {
              btCollisionObject::setActivationState(v29, 2);
            }

            v28 += 8;
            --v20;
          }

          while (v20);
        }

        else
        {
          v30 = v12 + 4;
          do
          {
            v31 = *(*(a3 + 24) + 8 * *(*(a1 + 24) + v30));
            if (v31[59] == v14 && v31[61] == 2)
            {
              btCollisionObject::setActivationState(*(*(a3 + 24) + 8 * *(*(a1 + 24) + v30)), 3);
              v31[62] = 0;
            }

            v30 += 8;
            --v20;
          }

          while (v20);
        }
      }
    }

    while (v9 < v8);
  }

  v32 = (*(*a2 + 72))(a2);
  if (v32 >= 1)
  {
    v33 = v32;
    v34 = 0;
    do
    {
      v35 = (*(*a2 + 80))(a2, v34);
      v36 = v35;
      v37 = *(v35 + 784);
      v38 = *(v35 + 792);
      if (v37 && *(v37 + 244) != 2 || v38 && *(v38 + 244) != 2)
      {
        v39 = *(v37 + 232);
        if ((v39 & 2) != 0 && (v39 & 4) == 0 && *(v37 + 244) != 2)
        {
          btCollisionObject::activate(*(v35 + 792), 0);
        }

        v40 = *(v38 + 232);
        if ((v40 & 2) != 0 && (v40 & 4) == 0 && *(v38 + 244) != 2)
        {
          btCollisionObject::activate(v37, 0);
        }

        if (*(a1 + 104) == 1 && (*(*a2 + 56))(a2, v37, v38))
        {
          v41 = *(a1 + 44);
          if (v41 == *(a1 + 48))
          {
            v42 = v41 ? 2 * v41 : 1;
            if (v41 < v42)
            {
              if (v42)
              {
                v43 = btAlignedAllocInternal(8 * v42, 16);
                v41 = *(a1 + 44);
              }

              else
              {
                v43 = 0;
              }

              if (v41 >= 1)
              {
                v44 = 0;
                do
                {
                  *(v43 + v44) = *(*(a1 + 56) + v44);
                  v44 += 8;
                }

                while (8 * v41 != v44);
              }

              v45 = *(a1 + 56);
              if (v45)
              {
                if (*(a1 + 64) == 1)
                {
                  btAlignedFreeInternal(v45);
                  v41 = *(a1 + 44);
                }
              }

              *(a1 + 64) = 1;
              *(a1 + 56) = v43;
              *(a1 + 48) = v42;
            }
          }

          *(*(a1 + 56) + 8 * v41) = v36;
          *(a1 + 44) = v41 + 1;
        }
      }

      v34 = (v34 + 1);
    }

    while (v34 != v33);
  }
}

void btSimulationIslandManager::buildAndProcessIslands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  btSimulationIslandManager::buildIslands(a1, a2, a3);
  if (*(a1 + 104))
  {
    v41 = a4;
    v8 = *(a1 + 12);
    v9 = *(a1 + 44);
    if (v9 > 1)
    {
      btAlignedObjectArray<btPersistentManifold *>::quickSortInternal<btPersistentManifoldSortPredicate>(a1 + 40, &v45, 0, v9 - 1);
    }

    if (v8 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 1;
      v42 = v9;
      do
      {
        v44 = v11;
        v13 = v10;
        v14 = *(*(a1 + 24) + 8 * v10);
        if (v8 <= v10 + 1)
        {
          v15 = v10 + 1;
        }

        else
        {
          v15 = v8;
        }

        v43 = v15;
        v16 = 1;
        while (1)
        {
          v17 = (*(a1 + 24) + 8 * v13);
          if (*v17 != v14)
          {
            break;
          }

          v18 = *(*(a3 + 24) + 8 * v17[1]);
          v19 = *(a1 + 76);
          if (v19 == *(a1 + 80))
          {
            v20 = v19 ? 2 * v19 : 1;
            if (v19 < v20)
            {
              if (v20)
              {
                v21 = btAlignedAllocInternal(8 * v20, 16);
                v19 = *(a1 + 76);
              }

              else
              {
                v21 = 0;
              }

              if (v19 >= 1)
              {
                v22 = 0;
                do
                {
                  *(v21 + v22) = *(*(a1 + 88) + v22);
                  v22 += 8;
                }

                while (8 * v19 != v22);
              }

              v23 = *(a1 + 88);
              if (v23 && *(a1 + 96) == 1)
              {
                btAlignedFreeInternal(v23);
                v19 = *(a1 + 76);
              }

              *(a1 + 96) = 1;
              *(a1 + 88) = v21;
              *(a1 + 80) = v20;
            }
          }

          *(*(a1 + 88) + 8 * v19) = v18;
          *(a1 + 76) = v19 + 1;
          v24 = *(v18 + 244);
          if (v24 != 2)
          {
            v16 &= v24 == 5;
          }

          if (++v13 >= v8)
          {
            goto LABEL_31;
          }
        }

        v43 = v13;
        if (v44 >= v42)
        {
          goto LABEL_44;
        }

LABEL_31:
        v25 = *(a1 + 56);
        v26 = v25 + 8 * v44;
        v27 = *(*(*v26 + 784) + 236);
        if (v27 < 0)
        {
          v27 = *(*(*v26 + 792) + 236);
        }

        if (v27 == v14)
        {
          if (v42 <= v44 + 1)
          {
            v28 = v44 + 1;
          }

          else
          {
            v28 = v42;
          }

          v29 = v44 + 1;
          v12 = v44;
          while (v29 < v42)
          {
            v30 = *(v25 + 8 * v29);
            v31 = *(*(v30 + 784) + 236);
            if (v31 < 0)
            {
              v31 = *(*(v30 + 792) + 236);
            }

            ++v12;
            ++v29;
            if (v14 != v31)
            {
              goto LABEL_46;
            }
          }

          v12 = v28;
LABEL_46:
          v32 = (v12 - v44);
        }

        else
        {
LABEL_44:
          v32 = 0;
          v26 = 0;
        }

        v33 = *(a1 + 76);
        if ((v16 & 1) == 0)
        {
          (*(*v41 + 16))(v41, *(a1 + 88), *(a1 + 76), v26, v32, v14);
          v33 = *(a1 + 76);
        }

        v10 = v43;
        if (v32)
        {
          v11 = v12;
        }

        else
        {
          v11 = v44;
        }

        if (v33 < 0)
        {
          if ((*(a1 + 80) & 0x80000000) != 0)
          {
            v34 = *(a1 + 88);
            if (v34 && *(a1 + 96) == 1)
            {
              btAlignedFreeInternal(v34);
            }

            *(a1 + 96) = 1;
            *(a1 + 88) = 0;
            *(a1 + 80) = 0;
          }

          v35 = v33;
          do
          {
            *(*(a1 + 88) + 8 * v35++) = 0;
          }

          while (v35);
        }

        *(a1 + 76) = 0;
      }

      while (v43 < v8);
    }
  }

  else
  {
    v36 = (*(*a2 + 88))(a2);
    v37 = (*(*a2 + 72))(a2);
    v38 = *(a3 + 24);
    v39 = *(a3 + 12);
    v40 = *(*a4 + 16);

    v40(a4, v38, v39, v36, v37, 0xFFFFFFFFLL);
  }
}

uint64_t btAlignedObjectArray<btPersistentManifold *>::quickSortInternal<btPersistentManifoldSortPredicate>(uint64_t a1, uint64_t a2, int a3, int a4)
{
  do
  {
    v8 = a3;
    v9 = *(*(a1 + 16) + 8 * ((a3 + a4) / 2));
    v10 = a4;
    do
    {
      v11 = *(a1 + 16);
      v12 = *(*(v9 + 784) + 236);
      v13 = a3;
      do
      {
        v14 = *(v11 + 8 * v13);
        v15 = *(*(v14 + 784) + 236);
        if (v15 < 0)
        {
          v15 = *(*(v14 + 792) + 236);
        }

        v16 = *(*(v9 + 784) + 236);
        if (v12 < 0)
        {
          v16 = *(*(v9 + 792) + 236);
        }

        ++v13;
      }

      while (v15 < v16);
      v17 = v11 + 8 * v13;
      a3 = v13 - 1;
      v18 = v10 + 1;
      v19 = (v11 + 8 * v10);
      do
      {
        v20 = *(*(v9 + 784) + 236);
        if (v12 < 0)
        {
          v20 = *(*(v9 + 792) + 236);
        }

        v21 = *v19;
        result = *(*(*v19 + 784) + 236);
        if ((result & 0x80000000) != 0)
        {
          result = *(*(v21 + 792) + 236);
        }

        --v18;
        --v10;
        --v19;
      }

      while (v20 < result);
      if (v13 - 1 <= v18)
      {
        *(v17 - 8) = v21;
        *(*(a1 + 16) + 8 * v18) = v14;
        a3 = v13;
      }

      else
      {
        ++v10;
      }
    }

    while (a3 <= v10);
    if (v10 > v8)
    {
      result = btAlignedObjectArray<btPersistentManifold *>::quickSortInternal<btPersistentManifoldSortPredicate>(a1, a2);
    }
  }

  while (a3 < a4);
  return result;
}

uint64_t btSphereSphereCollisionAlgorithm::btSphereSphereCollisionAlgorithm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(a1, a3);
  *v9 = &unk_282DC9840;
  *(v9 + 16) = 0;
  v9[3] = a2;
  if (!a2)
  {
    *(a1 + 24) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a4 + 16), *(a5 + 16));
    *(a1 + 16) = 1;
  }

  return a1;
}

void btSphereSphereCollisionAlgorithm::~btSphereSphereCollisionAlgorithm(btSphereSphereCollisionAlgorithm *this)
{
  *this = &unk_282DC9840;
  if (*(this + 16) == 1 && *(this + 3))
  {
    (*(**(this + 1) + 32))(*(this + 1));
  }

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btSphereSphereCollisionAlgorithm::~btSphereSphereCollisionAlgorithm(this);

  JUMPOUT(0x21CF07610);
}

btPersistentManifold *btSphereSphereCollisionAlgorithm::processCollision(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = *(a1 + 24);
  if (result)
  {
    a5[1] = result;
    v7 = *(*(a3 + 24) + 48);
    v8 = vsubq_f32(*(*(a2 + 24) + 48), v7);
    v8.i32[3] = 0;
    v9 = vmulq_f32(v8, v8);
    v10 = vpadd_f32(*v9.i8, *v9.i8);
    v13 = vextq_s8(v9, v9, 8uLL);
    v13.n128_u64[0] = vadd_f32(v10, v13.n128_u64[0]);
    v11 = sqrtf(v13.n128_f32[0]);
    v12 = *(*(a3 + 8) + 48) * *(*(a3 + 8) + 32);
    v13.n128_f32[0] = (*(*(a2 + 8) + 48) * *(*(a2 + 8) + 32)) + v12;
    if (v11 <= v13.n128_f32[0])
    {
      v13.n128_f32[0] = v11 - v13.n128_f32[0];
      v24 = xmmword_21C27F910;
      if (v11 <= 0.00000011921)
      {
        v17 = v24;
      }

      else
      {
        v17 = vmulq_n_f32(v8, 1.0 / v11);
        v17.i32[3] = 0;
        v24 = v17;
      }

      v18 = vmulq_n_f32(v17, v12);
      v18.i32[3] = 0;
      v23 = vaddq_f32(v7, v18);
      (*(*a5 + 32))(a5, &v24, &v23, v13);
      result = a5[1];
      if (LODWORD(result->var6))
      {
        var3 = result->var3;
        v20 = *(a5[2] + 16);
        v21 = var3 == v20;
        if (var3 == v20)
        {
          v22 = *(a5[3] + 16);
        }

        else
        {
          v22 = *(a5[2] + 16);
        }

        if (!v21)
        {
          v20 = *(a5[3] + 16);
        }

        return btPersistentManifold::refreshContactPoints(result, (v20 + 16), (v22 + 16));
      }
    }

    else if (LODWORD(result->var6))
    {
      v14 = *(a5[2] + 16);
      if (result->var3 == v14)
      {
        v15 = (v14 + 16);
        v16 = (*(a5[3] + 16) + 16);
      }

      else
      {
        v15 = (*(a5[3] + 16) + 16);
        v16 = (v14 + 16);
      }

      return btPersistentManifold::refreshContactPoints(result, v15, v16);
    }
  }

  return result;
}

void btSphereSphereCollisionAlgorithm::getAllContactManifolds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 16) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = btAlignedAllocInternal(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            btAlignedFreeInternal(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(a1 + 24);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

uint64_t btSphereTriangleCollisionAlgorithm::btSphereTriangleCollisionAlgorithm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(a1, a3);
  *v11 = &unk_282DC9878;
  *(v11 + 16) = 0;
  v11[3] = a2;
  *(v11 + 32) = a6;
  if (!a2)
  {
    *(a1 + 24) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a4 + 16), *(a5 + 16));
    *(a1 + 16) = 1;
  }

  return a1;
}

void btSphereTriangleCollisionAlgorithm::~btSphereTriangleCollisionAlgorithm(btSphereTriangleCollisionAlgorithm *this)
{
  *this = &unk_282DC9878;
  if (*(this + 16) == 1 && *(this + 3))
  {
    (*(**(this + 1) + 32))(*(this + 1));
  }

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btSphereTriangleCollisionAlgorithm::~btSphereTriangleCollisionAlgorithm(this);

  JUMPOUT(0x21CF07610);
}

btPersistentManifold *btSphereTriangleCollisionAlgorithm::processCollision(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  result = *(a1 + 24);
  if (result)
  {
    v9 = *(a1 + 32) ? a3 : a2;
    v10 = *(a1 + 32) ? a2 : a3;
    v11 = *(v9 + 8);
    v12 = *(v10 + 8);
    a5[1] = result;
    ContactBreakingThreshold = btPersistentManifold::getContactBreakingThreshold(result);
    SphereTriangleDetector::SphereTriangleDetector(v23, v11, v12, ContactBreakingThreshold);
    v25 = 1566444395;
    v14 = *(v9 + 24);
    v15 = v14[1];
    v24[0] = *v14;
    v24[1] = v15;
    v16 = v14[3];
    v24[2] = v14[2];
    v24[3] = v16;
    v17 = *(v10 + 24);
    v24[4] = *v17;
    v24[5] = v17[1];
    v24[6] = v17[2];
    v24[7] = v17[3];
    result = SphereTriangleDetector::getClosestPoints(v23, v24, a5, *(a4 + 24), *(a1 + 32), v18);
    if (*(a1 + 16) == 1)
    {
      result = a5[1];
      if (LODWORD(result->var6))
      {
        var3 = result->var3;
        v20 = *(a5[2] + 16);
        v21 = var3 == v20;
        if (var3 == v20)
        {
          v22 = *(a5[3] + 16);
        }

        else
        {
          v22 = *(a5[2] + 16);
        }

        if (!v21)
        {
          v20 = *(a5[3] + 16);
        }

        return btPersistentManifold::refreshContactPoints(result, (v20 + 16), (v22 + 16));
      }
    }
  }

  return result;
}

void btSphereTriangleCollisionAlgorithm::getAllContactManifolds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 16) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = btAlignedAllocInternal(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            btAlignedFreeInternal(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(a1 + 24);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

void btUnionFind::btUnionFind(btUnionFind *this)
{
  *(this + 24) = 1;
  *(this + 2) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void btUnionFind::allocate(btUnionFind *this, int a2)
{
  v4 = *(this + 1);
  if (v4 < a2)
  {
    v5 = v4;
    if (*(this + 2) < a2)
    {
      if (a2)
      {
        v6 = btAlignedAllocInternal(8 * a2, 16);
        v4 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      if (v4 >= 1)
      {
        v7 = 0;
        v8 = 8 * v4;
        do
        {
          *(v6 + v7) = *(*(this + 2) + v7);
          v7 += 8;
        }

        while (v8 != v7);
      }

      v9 = *(this + 2);
      if (v9 && *(this + 24) == 1)
      {
        btAlignedFreeInternal(v9);
      }

      *(this + 24) = 1;
      *(this + 2) = v6;
      *(this + 2) = a2;
    }

    do
    {
      *(*(this + 2) + 8 * v5++) = 0;
    }

    while (a2 != v5);
  }

  *(this + 1) = a2;
}

void btUnionFind::reset(btUnionFind *this, int a2)
{
  btUnionFind::allocate(this, a2);
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = (*(this + 2) + 4);
    do
    {
      *(v5 - 1) = v4;
      *v5 = 1;
      ++v4;
      v5 += 2;
    }

    while (a2 != v4);
  }
}

uint64_t btUnionFind::sortIslands(uint64_t this)
{
  v3 = *(this + 4);
  if (v3 > 0)
  {
    *&v10[1] = v1;
    v11 = v2;
    v4 = 0;
    v5 = *(this + 16);
    do
    {
      v6 = (v5 + 8 * v4);
      v7 = *v6;
      LODWORD(v8) = v4;
      if (v4 != v7)
      {
        v9 = (v5 + 8 * v4);
        do
        {
          v8 = *(v5 + 8 * v7);
          *v9 = v8;
          v9 = (v5 + 8 * v8);
          LODWORD(v7) = *v9;
        }

        while (v8 != *v9);
      }

      *v6 = v8;
      ++v4;
    }

    while (v4 != v3);
    if (v3 != 1)
    {
      return btAlignedObjectArray<btElement>::quickSortInternal<btUnionFindElementSortPredicate>(this, v10, 0, v3 - 1);
    }
  }

  return this;
}

uint64_t btAlignedObjectArray<btElement>::quickSortInternal<btUnionFindElementSortPredicate>(uint64_t result, uint64_t a2, int a3, int a4)
{
  v7 = result;
  do
  {
    v8 = a3;
    v9 = *(*(v7 + 16) + 8 * ((a3 + a4) / 2));
    v10 = a4;
    do
    {
      v11 = *(v7 + 16);
      v12 = a3 - 1;
      v13 = 8 * a3;
      v14 = a3;
      do
      {
        v15 = *(v11 + v13);
        ++v14;
        ++v12;
        v13 += 8;
      }

      while (v15 < v9);
      a3 = v14 - 1;
      v16 = v10 + 1;
      v17 = 8 * v10;
      do
      {
        v18 = *(v11 + v17);
        --v16;
        --v10;
        v17 -= 8;
      }

      while (v18 > v9);
      if (v12 <= v16)
      {
        v19 = *(v11 + 8 * v12);
        *(v11 + 8 * v12) = *(v11 + 8 * v16);
        *(*(v7 + 16) + 8 * v16) = v19;
        a3 = v14;
      }

      else
      {
        ++v10;
      }
    }

    while (a3 <= v10);
    if (v10 > v8)
    {
      result = btAlignedObjectArray<btElement>::quickSortInternal<btUnionFindElementSortPredicate>(v7, a2);
    }
  }

  while (a3 < a4);
  return result;
}

float32x4_t btBox2dShape::getAabb(float32x4_t *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  *&v8 = (*(this->i64[0] + 96))(this);
  var1 = a2->var1;
  v10 = vdupq_lane_s32(v8, 0);
  v10.i32[3] = 0;
  v11 = vaddq_f32(this[3], v10);
  v12 = vmulq_f32(v11, vandq_s8(a2->var0.var0[0], xmmword_21C2A40B0));
  v13 = vmulq_f32(v11, vandq_s8(a2->var0.var0[1], xmmword_21C2A40B0));
  v14 = vmulq_f32(v11, vandq_s8(a2->var0.var0[2], xmmword_21C2A40B0));
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v12.f32, *v13.i8));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vsubq_f32(var1, v12);
  v15.var0.var0[3] = 0.0;
  *a3 = v15;
  result = vaddq_f32(var1, v12);
  *a4 = result;
  return result;
}

float btBox2dShape::calculateLocalInertia(btBox2dShape *this, float a2, btVector3 *a3)
{
  v14 = *(this + 3);
  *v6.i64 = (*(*this + 96))(this);
  v13 = v6;
  v7 = (*(*this + 96))(this);
  v12 = LODWORD(v7);
  v8 = (*(*this + 96))(this);
  v9 = v13;
  v9.i32[1] = v12;
  v9.f32[2] = v8;
  v10 = vaddq_f32(v14, v9);
  v9.f32[0] = (v10.f32[2] + v10.f32[2]) * (v10.f32[2] + v10.f32[2]);
  *v10.f32 = vadd_f32(*v10.f32, *v10.f32);
  *a3->var0.var0 = vrev64_s32(vmul_n_f32(vmla_f32(vdup_lane_s32(*v9.f32, 0), *v10.f32, *v10.f32), a2 / 12.0));
  result = (a2 / 12.0) * (COERCE_FLOAT(vmul_f32(*&v10, *&v10).i32[1]) + (v10.f32[0] * v10.f32[0]));
  a3->var0.var0[2] = result;
  a3->var0.var0[3] = 0.0;
  return result;
}

void btBox2dShape::~btBox2dShape(btBox2dShape *this)
{
  btPolyhedralConvexShape::~btPolyhedralConvexShape(this);

  btAlignedFreeInternal(v1);
}

float32x4_t btBox2dShape::setLocalScaling(float32x4_t *this, float32x4_t *a2)
{
  v4 = (*(this->i64[0] + 96))(this);
  v15 = LODWORD(v4);
  v5 = (*(this->i64[0] + 96))(this);
  v13 = LODWORD(v5);
  *&v6 = (*(this->i64[0] + 96))(this);
  v7.i64[0] = __PAIR64__(v13, v15);
  v7.i64[1] = v6;
  v16 = v7;
  v8 = this[2];
  v9 = vaddq_f32(this[3], v7);
  v10 = vrecpeq_f32(v8);
  v11 = vmulq_f32(v10, vrecpsq_f32(v8, v10));
  v14 = vmulq_f32(vrecpsq_f32(v8, v11), vmulq_f32(v9, v11));
  btConvexInternalShape::setLocalScaling(this, a2);
  result = vsubq_f32(vmulq_f32(v14, this[2]), v16);
  result.i32[3] = 0;
  this[3] = result;
  return result;
}

float32x4_t btBox2dShape::setMargin(float32x4_t *this, float32_t a2)
{
  v4 = (*(this->i64[0] + 96))(this);
  v16 = LODWORD(v4);
  v5 = (*(this->i64[0] + 96))(this);
  v14 = LODWORD(v5);
  *&v6 = (*(this->i64[0] + 96))(this);
  v7.i64[0] = __PAIR64__(v14, v16);
  v7.i64[1] = v6;
  v17 = vaddq_f32(this[3], v7);
  this[4].f32[0] = a2;
  v8 = (*(this->i64[0] + 96))(this);
  v15 = LODWORD(v8);
  v9 = (*(this->i64[0] + 96))(this);
  v13 = LODWORD(v9);
  *&v10 = (*(this->i64[0] + 96))(this);
  v11.i64[0] = __PAIR64__(v13, v15);
  v11.i64[1] = v10;
  result = vsubq_f32(v17, v11);
  result.i32[3] = 0;
  this[3] = result;
  return result;
}

void btBox2dShape::localGetSupportingVertex(btBox2dShape *this@<X0>, const btVector3 *a2@<X1>, int8x8_t *a3@<X8>)
{
  v14 = *(this + 3);
  *v6.i64 = (*(*this + 96))(this);
  v13 = v6;
  v7 = (*(*this + 96))(this);
  v12 = LODWORD(v7);
  v8 = (*(*this + 96))(this);
  v9 = v13;
  v9.i32[1] = v12;
  v9.f32[2] = v8;
  v11 = vaddq_f32(v14, v9);
  v9.i32[0] = LODWORD(a2->var0.var0[2]);
  v10 = vbsl_s8(vcgez_f32(*a2->var0.var0), *v11.f32, vneg_f32(*v11.f32));
  v11.i32[0] = v11.i32[2];
  *a3 = v10;
  if (v9.f32[0] < 0.0)
  {
    v11.f32[0] = -v11.f32[2];
  }

  a3[1].i32[0] = v11.i32[0];
  a3[1].i32[1] = 0;
}

uint64_t btBox2dShape::localGetSupportingVertexWithoutMargin@<X0>(uint64_t this@<X0>, const btVector3 *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2->var0.var0[2] < 0.0)
  {
    v3 = -*(this + 56);
  }

  else
  {
    v3 = *(this + 56);
  }

  *a3 = vbsl_s8(vcgez_f32(*a2->var0.var0), *(this + 48), vneg_f32(*(this + 48)));
  *(a3 + 8) = v3;
  *(a3 + 12) = 0;
  return this;
}

uint64_t btBox2dShape::batchedUnitVectorGetSupportingVertexWithoutMargin(uint64_t this, const btVector3 *a2, btVector3 *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v5 = &a3->var0.var0[3];
    v6 = &a2->var0.var0[2];
    do
    {
      if (*v6 < 0.0)
      {
        v7 = -*(this + 56);
      }

      else
      {
        v7 = *(this + 56);
      }

      *(v5 - 3) = vbsl_s8(vcgez_f32(*(v6 - 2)), *(this + 48), vneg_f32(*(this + 48)));
      *(v5 - 1) = v7;
      *v5 = 0.0;
      v5 += 4;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return this;
}

float btBox2dShape::getPreferredPenetrationDirection(btBox2dShape *this, unsigned int a2, btVector3 *a3)
{
  if (a2 <= 5)
  {
    result = flt_21C2A4150[a2];
    v4 = flt_21C2A4168[a2];
    v5 = dword_21C2A4180[a2];
    a3->var0.var0[0] = result;
    a3->var0.var0[1] = v4;
    *&a3->var0.var0[2] = v5;
  }

  return result;
}

uint64_t btBox2dShape::getEdge(btBox2dShape *this, unsigned int a2, btVector3 *a3, btVector3 *a4)
{
  if (a2 > 0xB)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = dword_21C2A40C0[a2];
    v8 = dword_21C2A40F0[a2];
  }

  (*(*this + 216))(this, v7, a3);
  v9 = *(*this + 216);

  return v9(this, v8, a4);
}

__n128 btBox2dShape::getVertex(__n128 *this, unsigned __int32 a2, btVector3 *a3)
{
  result = this[3];
  v4.i32[0] = a2;
  v4.i32[1] = a2 >> 1;
  v5 = vand_s8(v4, 0x100000001);
  *v6.var0.var0 = vmla_f32(vmul_f32(vcvt_f32_u32(v5), vneg_f32(result.n128_u64[0])), vcvt_f32_u32(veor_s8(v5, 0x100000001)), result.n128_u64[0]);
  _S3 = ((a2 & 4) == 0);
  __asm { FMLA            S2, S3, V0.S[2] }

  *&v6.var0.var0[2] = _S2;
  *a3 = v6;
  return result;
}

double btBox2dShape::getPlane(btBox2dShape *this, btVector3 *a2, btVector3 *a3, uint64_t a4)
{
  (*(*this + 256))(this, &v11, a4);
  v7.i64[0] = v11;
  v7.i64[1] = v12;
  *a2 = v7;
  v9 = vnegq_f32(v7);
  (*(*this + 128))(&v10, this, &v9);
  result = *v10.var0.var0;
  *a3 = v10;
  return result;
}

BOOL btBox2dShape::isInside(btBox2dShape *this, const btVector3 *a2, float a3)
{
  v3 = *(this + 3);
  if (a2->var0.var0[0] <= (*&v3 + a3) && a2->var0.var0[0] >= (-*&v3 - a3) && (v4 = a2->var0.var0[1], v4 <= (*(&v3 + 1) + a3)) && v4 >= (-*(&v3 + 1) - a3) && (v5 = a2->var0.var0[2], v5 <= (*(&v3 + 2) + a3)))
  {
    return v5 >= (-*(&v3 + 2) - a3);
  }

  else
  {
    return 0;
  }
}

float btBox2dShape::getPlaneEquation(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 5)
  {
    v3 = flt_21C2A4168[a3];
    v4 = dword_21C2A4180[a3];
    v5 = *(a1 + 4 * (qword_21C2A4120[a3] & 3) + 48);
    *a2 = flt_21C2A4150[a3];
    *(a2 + 4) = v3;
    result = -v5;
    *(a2 + 8) = v4;
    *(a2 + 12) = -v5;
  }

  return result;
}

void btBoxShape::btBoxShape(btBoxShape *this, const btVector3 *a2)
{
  btPolyhedralConvexShape::btPolyhedralConvexShape(this);
  *v4 = &unk_282DC99C8;
  *(v4 + 2) = 0;
  btConvexInternalShape::setSafeMargin(v4, a2, 0.1);
  *v5.i64 = (*(*this + 96))(this);
  v11 = v5;
  v6 = (*(*this + 96))(this);
  v10 = LODWORD(v6);
  v7 = (*(*this + 96))(this);
  v8 = v11;
  v8.i32[1] = v10;
  v8.f32[2] = v7;
  v9 = vsubq_f32(vmulq_f32(*a2, *(this + 2)), v8);
  v9.i32[3] = 0;
  *(this + 3) = v9;
}

void btConvexInternalShape::setSafeMargin(btConvexInternalShape *this, const btVector3 *a2, float a3)
{
  v4 = a2->var0.var0[0];
  v5 = a2->var0.var0[1];
  v6 = a2->var0.var0[0] >= v5;
  if (a2->var0.var0[0] >= v5)
  {
    v4 = a2->var0.var0[1];
  }

  if (v4 >= a2->var0.var0[2])
  {
    v6 = 2;
  }

  v7 = a2->var0.var0[v6] * a3;
  if (v7 < (*(*this + 96))(this))
  {
    v9 = *(*this + 88);
    v8.n128_f32[0] = v7;

    v9(this, v8);
  }
}

float32x4_t btBoxShape::getAabb(float32x4_t *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  *&v8 = (*(this->i64[0] + 96))(this);
  var1 = a2->var1;
  v10 = vdupq_lane_s32(v8, 0);
  v10.i32[3] = 0;
  v11 = vaddq_f32(this[3], v10);
  v12 = vmulq_f32(v11, vandq_s8(a2->var0.var0[0], xmmword_21C2A40B0));
  v13 = vmulq_f32(v11, vandq_s8(a2->var0.var0[1], xmmword_21C2A40B0));
  v14 = vmulq_f32(v11, vandq_s8(a2->var0.var0[2], xmmword_21C2A40B0));
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v12.f32, *v13.i8));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vsubq_f32(var1, v12);
  v15.var0.var0[3] = 0.0;
  *a3 = v15;
  result = vaddq_f32(var1, v12);
  *a4 = result;
  return result;
}

float btBoxShape::calculateLocalInertia(btBoxShape *this, float a2, btVector3 *a3)
{
  v14 = *(this + 3);
  *v6.i64 = (*(*this + 96))(this);
  v13 = v6;
  v7 = (*(*this + 96))(this);
  v12 = LODWORD(v7);
  v8 = (*(*this + 96))(this);
  v9 = v13;
  v9.i32[1] = v12;
  v9.f32[2] = v8;
  v10 = vaddq_f32(v14, v9);
  v9.f32[0] = (v10.f32[2] + v10.f32[2]) * (v10.f32[2] + v10.f32[2]);
  *v10.f32 = vadd_f32(*v10.f32, *v10.f32);
  *a3->var0.var0 = vrev64_s32(vmul_n_f32(vmla_f32(vdup_lane_s32(*v9.f32, 0), *v10.f32, *v10.f32), a2 / 12.0));
  result = (a2 / 12.0) * (COERCE_FLOAT(vmul_f32(*&v10, *&v10).i32[1]) + (v10.f32[0] * v10.f32[0]));
  a3->var0.var0[2] = result;
  a3->var0.var0[3] = 0.0;
  return result;
}

void btBoxShape::~btBoxShape(btBoxShape *this)
{
  btPolyhedralConvexShape::~btPolyhedralConvexShape(this);

  btAlignedFreeInternal(v1);
}

float32x4_t btBoxShape::setLocalScaling(float32x4_t *this, float32x4_t *a2)
{
  v4 = (*(this->i64[0] + 96))(this);
  v15 = LODWORD(v4);
  v5 = (*(this->i64[0] + 96))(this);
  v13 = LODWORD(v5);
  *&v6 = (*(this->i64[0] + 96))(this);
  v7.i64[0] = __PAIR64__(v13, v15);
  v7.i64[1] = v6;
  v16 = v7;
  v8 = this[2];
  v9 = vaddq_f32(this[3], v7);
  v10 = vrecpeq_f32(v8);
  v11 = vmulq_f32(v10, vrecpsq_f32(v8, v10));
  v14 = vmulq_f32(vrecpsq_f32(v8, v11), vmulq_f32(v9, v11));
  btConvexInternalShape::setLocalScaling(this, a2);
  result = vsubq_f32(vmulq_f32(v14, this[2]), v16);
  result.i32[3] = 0;
  this[3] = result;
  return result;
}

float32x4_t btBoxShape::setMargin(float32x4_t *this, float32_t a2)
{
  v4 = (*(this->i64[0] + 96))(this);
  v16 = LODWORD(v4);
  v5 = (*(this->i64[0] + 96))(this);
  v14 = LODWORD(v5);
  *&v6 = (*(this->i64[0] + 96))(this);
  v7.i64[0] = __PAIR64__(v14, v16);
  v7.i64[1] = v6;
  v17 = vaddq_f32(this[3], v7);
  this[4].f32[0] = a2;
  v8 = (*(this->i64[0] + 96))(this);
  v15 = LODWORD(v8);
  v9 = (*(this->i64[0] + 96))(this);
  v13 = LODWORD(v9);
  *&v10 = (*(this->i64[0] + 96))(this);
  v11.i64[0] = __PAIR64__(v13, v15);
  v11.i64[1] = v10;
  result = vsubq_f32(v17, v11);
  result.i32[3] = 0;
  this[3] = result;
  return result;
}

void btBoxShape::localGetSupportingVertex(btBoxShape *this@<X0>, const btVector3 *a2@<X1>, int8x8_t *a3@<X8>)
{
  v14 = *(this + 3);
  *v6.i64 = (*(*this + 96))(this);
  v13 = v6;
  v7 = (*(*this + 96))(this);
  v12 = LODWORD(v7);
  v8 = (*(*this + 96))(this);
  v9 = v13;
  v9.i32[1] = v12;
  v9.f32[2] = v8;
  v11 = vaddq_f32(v14, v9);
  v9.i32[0] = LODWORD(a2->var0.var0[2]);
  v10 = vbsl_s8(vcgez_f32(*a2->var0.var0), *v11.f32, vneg_f32(*v11.f32));
  v11.i32[0] = v11.i32[2];
  *a3 = v10;
  if (v9.f32[0] < 0.0)
  {
    v11.f32[0] = -v11.f32[2];
  }

  a3[1].i32[0] = v11.i32[0];
  a3[1].i32[1] = 0;
}

uint64_t btBoxShape::localGetSupportingVertexWithoutMargin@<X0>(uint64_t this@<X0>, const btVector3 *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2->var0.var0[2] < 0.0)
  {
    v3 = -*(this + 56);
  }

  else
  {
    v3 = *(this + 56);
  }

  *a3 = vbsl_s8(vcgez_f32(*a2->var0.var0), *(this + 48), vneg_f32(*(this + 48)));
  *(a3 + 8) = v3;
  *(a3 + 12) = 0;
  return this;
}

uint64_t btBoxShape::batchedUnitVectorGetSupportingVertexWithoutMargin(uint64_t this, const btVector3 *a2, btVector3 *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v5 = &a3->var0.var0[3];
    v6 = &a2->var0.var0[2];
    do
    {
      if (*v6 < 0.0)
      {
        v7 = -*(this + 56);
      }

      else
      {
        v7 = *(this + 56);
      }

      *(v5 - 3) = vbsl_s8(vcgez_f32(*(v6 - 2)), *(this + 48), vneg_f32(*(this + 48)));
      *(v5 - 1) = v7;
      *v5 = 0.0;
      v5 += 4;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return this;
}

float btBoxShape::getPreferredPenetrationDirection(btBoxShape *this, unsigned int a2, btVector3 *a3)
{
  if (a2 <= 5)
  {
    result = flt_21C2A4228[a2];
    v4 = flt_21C2A4240[a2];
    v5 = dword_21C2A4258[a2];
    a3->var0.var0[0] = result;
    a3->var0.var0[1] = v4;
    *&a3->var0.var0[2] = v5;
  }

  return result;
}

uint64_t btBoxShape::getEdge(btBoxShape *this, unsigned int a2, btVector3 *a3, btVector3 *a4)
{
  if (a2 > 0xB)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = dword_21C2A4198[a2];
    v8 = dword_21C2A41C8[a2];
  }

  (*(*this + 216))(this, v7, a3);
  v9 = *(*this + 216);

  return v9(this, v8, a4);
}

float32x4_t btBoxShape::getVertex(btBoxShape *this, unsigned __int32 a2, btVector3 *a3)
{
  v19 = *(this + 3);
  *v6.i64 = (*(*this + 96))(this);
  v18 = v6;
  v7 = (*(*this + 96))(this);
  v17 = LODWORD(v7);
  v8 = (*(*this + 96))(this);
  v9 = v18;
  v9.i32[1] = v17;
  v9.f32[2] = v8;
  result = vaddq_f32(v19, v9);
  v9.i32[0] = a2;
  v9.i32[1] = a2 >> 1;
  *v9.f32 = vand_s8(*v9.f32, 0x100000001);
  *v9.f32 = vmla_f32(vmul_f32(vcvt_f32_u32(*v9.f32), vneg_f32(*result.f32)), vcvt_f32_u32(veor_s8(*v9.f32, 0x100000001)), *result.f32);
  _S3 = ((a2 & 4) == 0);
  __asm { FMLA            S2, S3, V0.S[2] }

  v9.i64[1] = _S2;
  *a3 = v9;
  return result;
}

double btBoxShape::getPlane(btBoxShape *this, btVector3 *a2, btVector3 *a3, uint64_t a4)
{
  (*(*this + 256))(this, &v11, a4);
  v7.i64[0] = v11;
  v7.i64[1] = v12;
  *a2 = v7;
  v9 = vnegq_f32(v7);
  (*(*this + 128))(&v10, this, &v9);
  result = *v10.var0.var0;
  *a3 = v10;
  return result;
}

BOOL btBoxShape::isInside(btBoxShape *this, const btVector3 *a2, float a3)
{
  v3 = *(this + 3);
  if (a2->var0.var0[0] <= (*&v3 + a3) && a2->var0.var0[0] >= (-*&v3 - a3) && (v4 = a2->var0.var0[1], v4 <= (*(&v3 + 1) + a3)) && v4 >= (-*(&v3 + 1) - a3) && (v5 = a2->var0.var0[2], v5 <= (*(&v3 + 2) + a3)))
  {
    return v5 >= (-*(&v3 + 2) - a3);
  }

  else
  {
    return 0;
  }
}

float btBoxShape::getPlaneEquation(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 5)
  {
    v3 = flt_21C2A4240[a3];
    v4 = dword_21C2A4258[a3];
    v5 = *(a1 + 4 * (qword_21C2A41F8[a3] & 3) + 48);
    *a2 = flt_21C2A4228[a3];
    *(a2 + 4) = v3;
    result = -v5;
    *(a2 + 8) = v4;
    *(a2 + 12) = -v5;
  }

  return result;
}

void btBvhTriangleMeshShape::btBvhTriangleMeshShape(btBvhTriangleMeshShape *this, btStridingMeshInterface *a2, char a3, int a4)
{
  btTriangleMeshShape::btTriangleMeshShape(this, a2);
  *v7 = &unk_282DC9AE0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = a3;
  *(v7 + 89) = 0;
  *(v7 + 8) = 21;
  if (a4)
  {
    btBvhTriangleMeshShape::buildOptimizedBvh(this);
  }
}

void btBvhTriangleMeshShape::buildOptimizedBvh(btBvhTriangleMeshShape *this)
{
  if (*(this + 89) == 1)
  {
    (***(this + 9))(*(this + 9));
    btAlignedFreeInternal(*(this + 9));
  }

  v2 = btAlignedAllocInternal(256, 16);
  btOptimizedBvh::btOptimizedBvh(v2);
  *(this + 9) = v3;
  btOptimizedBvh::build(v3, *(this + 8), *(this + 88), this + 2, this + 3, v4);
  *(this + 89) = 1;
}

void btBvhTriangleMeshShape::~btBvhTriangleMeshShape(btBvhTriangleMeshShape *this)
{
  *this = &unk_282DC9AE0;
  if (*(this + 89) == 1)
  {
    (***(this + 9))(*(this + 9));
    btAlignedFreeInternal(*(this + 9));
  }

  btTriangleMeshShape::~btTriangleMeshShape(this);
}

{
  btBvhTriangleMeshShape::~btBvhTriangleMeshShape(this);

  btAlignedFreeInternal(v1);
}

float32x4_t *btBvhTriangleMeshShape::performRaycast(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, __n128 a12)
{
  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  v15[0] = &unk_282DC9B98;
  v15[1] = v13;
  v15[2] = a2;
  return btQuantizedBvh::reportRayOverlappingNodex(v12, v15, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

float32x4_t *btBvhTriangleMeshShape::performConvexcast(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, double a7, double a8, double a9, double a10, double a11, double a12, __n128 a13, __n128 a14)
{
  v15 = *(a1 + 64);
  v14 = *(a1 + 72);
  v17[0] = &unk_282DC9BC0;
  v17[1] = v15;
  v17[2] = a2;
  return btQuantizedBvh::reportBoxCastOverlappingNodex(v14, v17, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t btBvhTriangleMeshShape::processAllTriangles(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v7[0] = &unk_282DC9BE8;
  v7[1] = v5;
  v7[2] = a2;
  return btQuantizedBvh::reportAabbOverlappingNodex(v4, v7, a3, a4);
}

void btBvhTriangleMeshShape::setLocalScaling(btBvhTriangleMeshShape *this, float32x4_t *a2)
{
  v4 = vsubq_f32(*(*(*this + 56))(this), *a2);
  v4.i32[3] = 0;
  v5 = vmulq_f32(v4, v4);
  if (vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0] > 0.00000011921)
  {
    btTriangleMeshShape::setLocalScaling(this, a2);

    btBvhTriangleMeshShape::buildOptimizedBvh(this);
  }
}

const char *btBvhTriangleMeshShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionShape::serialize(a1, a2, a3);
  (*(**(a1 + 64) + 112))(*(a1 + 64), a2 + 16, a3);
  *(a2 + 72) = *(a1 + 24);
  if (!*(a1 + 72) || ((*(*a3 + 104))(a3) & 1) != 0)
  {
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    v6 = (*(*a3 + 48))(a3, *(a1 + 72));
    if (v6)
    {
      *(a2 + 48) = v6;
      *(a2 + 56) = 0;
    }

    else
    {
      *(a2 + 48) = (*(*a3 + 56))(a3, *(a1 + 72));
      *(a2 + 56) = 0;
      v9 = (*(**(a1 + 72) + 24))(*(a1 + 72));
      v10 = (*(*a3 + 32))(a3, v9, 1);
      v11 = (*(**(a1 + 72) + 32))(*(a1 + 72), *(v10 + 8), a3);
      (*(*a3 + 40))(a3, v10, v11, 1213612625, *(a1 + 72));
    }
  }

  if (!*(a1 + 80) || ((*(*a3 + 104))(a3) & 2) != 0)
  {
    *(a2 + 64) = 0;
  }

  else
  {
    v7 = (*(*a3 + 48))(a3, *(a1 + 80));
    if (v7)
    {
      *(a2 + 64) = v7;
    }

    else
    {
      *(a2 + 64) = (*(*a3 + 56))(a3, *(a1 + 80));
      v12 = (*(**(a1 + 80) + 16))(*(a1 + 80));
      v13 = (*(*a3 + 32))(a3, v12, 1);
      v14 = (*(**(a1 + 80) + 24))(*(a1 + 80), *(v13 + 8), a3);
      (*(*a3 + 40))(a3, v13, v14, 1346456916, *(a1 + 80));
    }
  }

  return "btTriangleMeshShapeData";
}

uint64_t btBvhTriangleMeshShape::serializeSingleBvh(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 72);
  if (result)
  {
    v5 = (*(*result + 24))(result);
    v6 = (*(*a2 + 32))(a2, v5, 1);
    v7 = (*(**(a1 + 72) + 32))(*(a1 + 72), *(v6 + 8), a2);
    v8 = *(a1 + 72);
    v9 = *(*a2 + 40);

    return v9(a2, v6, v7, 1213612625, v8);
  }

  return result;
}

uint64_t btBvhTriangleMeshShape::serializeSingleTriangleInfoMap(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 80);
  if (result)
  {
    v5 = (*(*result + 16))(result);
    v6 = (*(*a2 + 32))(a2, v5, 1);
    v7 = (*(**(a1 + 80) + 24))(*(a1 + 80), *(v6 + 8), a2);
    v8 = *(a1 + 80);
    v9 = *(*a2 + 40);

    return v9(a2, v6, v7, 1346456916, v8);
  }

  return result;
}

uint64_t btBvhTriangleMeshShape::performRaycast(btTriangleCallback *,btVector3 const&,btVector3 const&)::MyNodeOverlapCallback::processNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  (*(**(a1 + 8) + 32))(*(a1 + 8), &v24, &v23 + 4, &v23, &v22, &v21, &v20 + 4, &v20, &v19, a2);
  v6 = 0;
  v7 = v21 + HIDWORD(v20) * a3;
  v8 = *(a1 + 8);
  v9 = v19;
  v10 = v23;
  v11 = v22;
  v12 = v24;
  do
  {
    if (v9 == 5)
    {
      v13 = *(v7 + v6 + 2);
    }

    else if (v9 == 3)
    {
      v13 = *(v7 + 2 * v6 + 4);
    }

    else
    {
      v13 = *(v7 + 4 * v6 + 8);
    }

    v14 = v12 + v11 * v13;
    if (v10)
    {
      *&v15 = vmul_f32(v8[2], vcvt_f32_f64(*v14));
      v16 = *(v14 + 16);
      v17 = v8[3].f32[0] * v16;
    }

    else
    {
      *&v15 = vmul_f32(*v14, v8[2]);
      v17 = *(v14 + 8) * v8[3].f32[0];
    }

    *(&v15 + 1) = LODWORD(v17);
    *&v25[16 * v6-- + 32] = v15;
  }

  while (v6 != -3);
  (*(**(a1 + 16) + 16))(*(a1 + 16), v25, a2, a3);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), a2);
}

uint64_t btBvhTriangleMeshShape::performConvexcast(btTriangleCallback *,btVector3 const&,btVector3 const&,btVector3 const&,btVector3 const&)::MyNodeOverlapCallback::processNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  (*(**(a1 + 8) + 32))(*(a1 + 8), &v24, &v23 + 4, &v23, &v22, &v21, &v20 + 4, &v20, &v19, a2);
  v6 = 0;
  v7 = v21 + HIDWORD(v20) * a3;
  v8 = *(a1 + 8);
  v9 = v19;
  v10 = v23;
  v11 = v22;
  v12 = v24;
  do
  {
    if (v9 == 3)
    {
      v13 = *(v7 + 2 * v6 + 4);
    }

    else if (v9 == 5)
    {
      v13 = *(v7 + v6 + 2);
    }

    else
    {
      v13 = *(v7 + 4 * v6 + 8);
    }

    v14 = v12 + v11 * v13;
    if (v10)
    {
      *&v15 = vmul_f32(v8[2], vcvt_f32_f64(*v14));
      v16 = *(v14 + 16);
      v17 = v8[3].f32[0] * v16;
    }

    else
    {
      *&v15 = vmul_f32(*v14, v8[2]);
      v17 = *(v14 + 8) * v8[3].f32[0];
    }

    *(&v15 + 1) = LODWORD(v17);
    *&v25[16 * v6-- + 32] = v15;
  }

  while (v6 != -3);
  (*(**(a1 + 16) + 16))(*(a1 + 16), v25, a2, a3);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), a2);
}

uint64_t btBvhTriangleMeshShape::processAllTriangles(btTriangleCallback *,btVector3 const&,btVector3 const&)const::MyNodeOverlapCallback::processNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  (*(**(a1 + 8) + 32))(*(a1 + 8), &v26, &v25, &v24, &v23, &v22, &v21 + 4, &v21, &v20, a2);
  v6 = v22 + HIDWORD(v21) * a3;
  v7 = *(a1 + 8);
  v8 = v20;
  v9 = v24;
  v10 = v23;
  v11 = v26;
  v12 = (a1 + 64);
  for (i = 2; i != -1; --i)
  {
    if (v8 == 2)
    {
      v14 = *(v6 + 4 * i);
    }

    else if (v8 == 3)
    {
      v14 = *(v6 + 2 * i);
    }

    else
    {
      v14 = *(v6 + i);
    }

    v15 = v11 + v10 * v14;
    if (v9)
    {
      *&v16 = vmul_f32(v7[2], vcvt_f32_f64(*v15));
      v17 = *(v15 + 16);
      v18 = v7[3].f32[0] * v17;
    }

    else
    {
      *&v16 = vmul_f32(*v15, v7[2]);
      v18 = *(v15 + 8) * v7[3].f32[0];
    }

    *(&v16 + 1) = LODWORD(v18);
    *v12-- = v16;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16), a1 + 32, a2, a3);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), a2);
}

void btCapsuleShape::btCapsuleShape(btCapsuleShape *this, float a2, float a3)
{
  btConvexInternalShape::btConvexInternalShape(this);
  *v5 = &unk_282DC9C10;
  *(v5 + 8) = 10;
  *(v5 + 72) = 1;
  *(v5 + 48) = a2;
  *(v5 + 52) = a3 * 0.5;
  *(v5 + 56) = a2;
  *(v5 + 60) = 0;
}

void btCapsuleShape::localGetSupportingVertexWithoutMargin(btCapsuleShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  a3->i64[0] = 0;
  a3->i64[1] = 0;
  v5 = *a2;
  v6 = vmulq_f32(v5, v5);
  v7 = vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0];
  if (v7 >= 0.0001)
  {
    v8 = vmulq_n_f32(v5, 1.0 / sqrtf(v7));
  }

  else
  {
    v8 = xmmword_21C27F910;
  }

  v19 = v8;
  var0_low = SLODWORD(this[1].var0);
  v10 = this->var4.var0.var0[(var0_low + 2) % 3 + 2];
  v20 = 0uLL;
  v20.i32[var0_low] = LODWORD(this->var4.var0.var0[var0_low + 2]);
  v11 = vmulq_n_f32(v8, v10);
  v11.i32[3] = 0;
  v18 = v11;
  v12 = vsubq_f32(vaddq_f32(v20, v11), vmulq_n_f32(v8, (*(this->var0 + 12))(this)));
  v12.i32[3] = 0;
  v13 = vmulq_f32(v19, v12);
  v14 = vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL)).f32[0];
  v15 = -1.0e18;
  if (v14 > -1.0e18)
  {
    *a3 = v12;
    v15 = v14;
  }

  v20 = 0uLL;
  v20.f32[SLODWORD(this[1].var0)] = -this->var4.var0.var0[SLODWORD(this[1].var0) + 2];
  v16 = vsubq_f32(vaddq_f32(v20, v18), vmulq_n_f32(v19, (*(this->var0 + 12))(this)));
  v16.i32[3] = 0;
  v17 = vmulq_f32(v19, v16);
  if (vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)).f32[0] > v15)
  {
    *a3 = v16;
  }
}

void btCapsuleShape::batchedUnitVectorGetSupportingVertexWithoutMargin(btCapsuleShape *this, float32x4_t *a2, btVector3 *a3, int a4)
{
  if (a4 >= 1)
  {
    v28 = v7;
    v29 = v6;
    v30 = v4;
    v31 = v5;
    v11 = &this->var4.var0.var0[2];
    v12 = &this->var4.var0.var0[(LODWORD(this[1].var0) + 2) % 3 + 2];
    v13 = vld1q_dup_f32(v12);
    v26 = v13;
    v14 = a4;
    do
    {
      v27 = 0uLL;
      v27.f32[SLODWORD(this[1].var0)] = v11[SLODWORD(this[1].var0)];
      v15 = vmulq_f32(v26, *a2);
      v15.i32[3] = 0;
      v25 = vaddq_f32(v27, v15);
      v16 = (*(this->var0 + 12))(this);
      v17 = *a2;
      v18 = vsubq_f32(v25, vmulq_n_f32(*a2, v16));
      v18.i32[3] = 0;
      v19 = vmulq_f32(*a2, v18);
      v20 = vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0];
      v21 = -1.0e18;
      if (v20 > -1.0e18)
      {
        *a3 = v18;
        v17 = *a2;
        v21 = v20;
      }

      v27 = 0uLL;
      v27.f32[SLODWORD(this[1].var0)] = -v11[SLODWORD(this[1].var0)];
      v22 = vmulq_f32(v26, v17);
      v22.i32[3] = 0;
      v23 = vsubq_f32(vaddq_f32(v27, v22), vmulq_n_f32(*a2, (*(this->var0 + 12))(this)));
      v23.i32[3] = 0;
      v24 = vmulq_f32(*a2, v23);
      if (vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)).f32[0] > v21)
      {
        *a3 = v23;
      }

      ++a3;
      ++a2;
      --v14;
    }

    while (v14);
  }
}

float btCapsuleShape::calculateLocalInertia(btCapsuleShape *this, float a2, btVector3 *a3)
{
  *(&v10 + SLODWORD(this[1].var0)) = this->var4.var0.var0[SLODWORD(this[1].var0) + 2] + *(&v10 + SLODWORD(this[1].var0));
  v3 = ((v11 + 0.04) + (v11 + 0.04)) * ((v11 + 0.04) + (v11 + 0.04));
  v4 = a2 * 0.083333;
  v5 = vadd_f32(__PAIR64__(v10, v12), vdup_n_s32(0x3D23D70Au));
  v6 = vadd_f32(v5, v5);
  v7 = vmul_f32(v6, v6);
  v8 = vdup_lane_s32(v7, 0);
  v8.f32[0] = v3;
  *a3->var0.var0 = vmul_n_f32(vadd_f32(v7, v8), v4);
  result = v4 * (v7.f32[1] + v3);
  a3->var0.var0[2] = result;
  return result;
}

void btCapsuleShape::~btCapsuleShape(btCapsuleShape *this)
{
  v1 = C3DSceneSourcePerformConsistencyCheck(this);

  btAlignedFreeInternal(v1);
}

float32x4_t btCapsuleShape::getAabb(btCapsuleShape *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  var0_low = SLODWORD(this[1].var0);
  v9 = this->var4.var0.var0[(var0_low + 2) % 3 + 2];
  v10 = vzip1q_s32(LODWORD(v9), LODWORD(v9));
  v10.i32[2] = LODWORD(this->var4.var0.var0[(var0_low + 2) % 3 + 2]);
  v24 = v10;
  v24.f32[var0_low] = *&v10.i32[2] + this->var4.var0.var0[var0_low + 2];
  v11 = (*(this->var0 + 12))(this);
  v23 = LODWORD(v11);
  v12 = (*(this->var0 + 12))(this);
  v22 = LODWORD(v12);
  *&v13 = (*(this->var0 + 12))(this);
  v14.i64[0] = __PAIR64__(v22, v23);
  v14.i64[1] = v13;
  v15 = vaddq_f32(v24, v14);
  var1 = a2->var1;
  v17 = vmulq_f32(v15, vandq_s8(a2->var0.var0[0], xmmword_21C2A40B0));
  v18 = vmulq_f32(v15, vandq_s8(a2->var0.var0[1], xmmword_21C2A40B0));
  v19 = vmulq_f32(v15, vandq_s8(a2->var0.var0[2], xmmword_21C2A40B0));
  v19.i32[3] = 0;
  *v17.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vpadd_f32(*v17.f32, *v18.i8));
  *&v17.u32[2] = vpadd_f32(vpadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), 0);
  v20 = vsubq_f32(var1, v17);
  v20.var0.var0[3] = 0.0;
  *a3 = v20;
  result = vaddq_f32(var1, v17);
  *a4 = result;
  return result;
}

__n128 btCapsuleShape::setLocalScaling(btCapsuleShape *this, float32x4_t *a2)
{
  v4 = (*(this->var0 + 12))(this);
  v15 = LODWORD(v4);
  v5 = (*(this->var0 + 12))(this);
  v13 = LODWORD(v5);
  *&v6 = (*(this->var0 + 12))(this);
  v7.i64[0] = __PAIR64__(v13, v15);
  v7.i64[1] = v6;
  v16 = v7;
  v8 = *(&this->var3 + 8);
  v9 = vaddq_f32(*(&this->var4 + 8), v7);
  v10 = vrecpeq_f32(v8);
  v11 = vmulq_f32(v10, vrecpsq_f32(v8, v10));
  v14 = vmulq_f32(vrecpsq_f32(v8, v11), vmulq_f32(v9, v11));
  btConvexInternalShape::setLocalScaling(this, a2);
  result = vsubq_f32(vmulq_f32(v14, *(&this->var3 + 8)), v16);
  result.n128_u32[3] = 0;
  *(&this->var4 + 8) = result;
  return result;
}

btCapsuleShape *btCapsuleShape::getAnisotropicRollingFrictionDirection@<X0>(btCapsuleShape *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  *(a2 + SLODWORD(this[1].var0)) = 1065353216;
  return this;
}

__n128 btCapsuleShape::setMargin(btCapsuleShape *this, float a2)
{
  v4 = (*(this->var0 + 12))(this);
  v16 = LODWORD(v4);
  v5 = (*(this->var0 + 12))(this);
  v14 = LODWORD(v5);
  *&v6 = (*(this->var0 + 12))(this);
  v7.i64[0] = __PAIR64__(v14, v16);
  v7.i64[1] = v6;
  v17 = vaddq_f32(*(&this->var4 + 8), v7);
  *&this->var7 = a2;
  v8 = (*(this->var0 + 12))(this);
  v15 = LODWORD(v8);
  v9 = (*(this->var0 + 12))(this);
  v13 = LODWORD(v9);
  *&v10 = (*(this->var0 + 12))(this);
  v11.i64[0] = __PAIR64__(v13, v15);
  v11.i64[1] = v10;
  result = vsubq_f32(v17, v11);
  result.n128_u32[3] = 0;
  *(&this->var4 + 8) = result;
  return result;
}

const char *btCapsuleShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionShape::serialize(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 32 + i) = *(a1 + 48 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 16 + j) = *(a1 + 32 + j);
  }

  *(a2 + 48) = *(a1 + 64);
  *(a2 + 56) = *(a1 + 72);
  return "btCapsuleShapeData";
}

float32x4_t btCollisionShape::getBoundingSphere(btCollisionShape *this, btVector3 *a2, float *a3)
{
  v13[0] = xmmword_21C27F910;
  v13[1] = xmmword_21C27F8C0;
  v13[2] = xmmword_21C27F600;
  v14 = 0;
  v15 = 0;
  (*(this->var0 + 2))(this, v13, &v12, &v11);
  v5 = v11;
  v6 = v12;
  v7 = vsubq_f32(v11, v12);
  v7.i32[3] = 0;
  v8 = vmulq_f32(v7, v7);
  *a3 = sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]) * 0.5;
  v9 = vaddq_f32(v5, v6);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  result = vmulq_f32(v9, v6);
  result.i32[3] = 0;
  *a2 = result;
  return result;
}

float btCollisionShape::getAngularMotionDisc(btCollisionShape *this)
{
  v3 = 0.0;
  (*(this->var0 + 3))(this, &v4, &v3);
  v1 = vmulq_f32(v4, v4);
  return v3 + sqrtf(vadd_f32(vpadd_f32(*v1.i8, *v1.i8), *&vextq_s8(v1, v1, 8uLL)).f32[0]);
}

float32x4_t btCollisionShape::calculateTemporalAabb(btCollisionShape *this, const btTransform *a2, float32x4_t *a3, float32x4_t *a4, float a5, float32x4_t *a6, float32x4_t *a7)
{
  (*(this->var0 + 2))(this, a2, a6, a7);
  v12 = a7->f32[2];
  v13 = vmulq_n_f32(*a3, a5);
  v14 = vcgtz_f32(*v13.f32);
  v24 = vbsl_s8(v14, *a6->f32, vadd_f32(*a6->f32, *v13.f32));
  v25 = vbsl_s8(v14, vadd_f32(*a7->f32, *v13.f32), *a7->f32);
  if (v13.f32[2] > 0.0)
  {
    v12 = v12 + v13.f32[2];
  }

  v23 = v12;
  if (v13.f32[2] <= 0.0)
  {
    v15 = a6->f32[2] + v13.f32[2];
  }

  else
  {
    v15 = a6->f32[2];
  }

  v22 = v15;
  v16 = vmulq_f32(*a4, *a4);
  v17 = sqrtf(vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL)).f32[0]);
  v18 = (*(this->var0 + 4))(this);
  *&v18 = (v17 * *&v18) * a5;
  v19 = vdupq_lane_s32(*&v18, 0);
  v19.i32[3] = 0;
  *v20.var0.var0 = v24;
  *&v20.var0.var0[2] = LODWORD(v22);
  *a6 = v20;
  *v20.var0.var0 = v25;
  *&v20.var0.var0[2] = LODWORD(v23);
  *a7 = v20;
  *a6 = vsubq_f32(*a6, v19);
  result = vaddq_f32(*a7, v19);
  *a7 = result;
  return result;
}

const char *btCollisionShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a3 + 80))(a3, a1);
  v7 = (*(*a3 + 56))(a3, v6);
  *a2 = v7;
  if (v7)
  {
    (*(*a3 + 96))(a3, v6);
  }

  *(a2 + 8) = *(a1 + 8);
  return "btCollisionShapeData";
}

uint64_t btCollisionShape::serializeSingleShape(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 104))(a1);
  v5 = (*(*a2 + 32))(a2, v4, 1);
  v6 = (*(*a1 + 112))(a1, *(v5 + 8), a2);
  v7 = *(*a2 + 40);

  return v7(a2, v5, v6, 1346455635, a1);
}

void btCompoundShape::btCompoundShape(btCompoundShape *this, int a2)
{
  *(this + 2) = 0;
  *this = &unk_282DC9CD8;
  *(this + 48) = 1;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 4) = xmmword_21C2A4030;
  *(this + 5) = xmmword_21C2A4040;
  *(this + 12) = 0;
  *(this + 26) = 1;
  *(this + 108) = xmmword_21C2A4280;
  *(this + 31) = 0;
  *(this + 2) = 31;
  if (a2)
  {
    v3 = btAlignedAllocInternal(96, 16);
    btDbvt::btDbvt(v3);
    *(this + 12) = v4;
  }
}

void btCompoundShape::~btCompoundShape(btCompoundShape *this)
{
  *this = &unk_282DC9CD8;
  v2 = *(this + 12);
  if (v2)
  {
    btDbvt::~btDbvt(v2);
    btAlignedFreeInternal(*(this + 12));
  }

  v3 = *(this + 5);
  if (v3 && *(this + 48) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 48) = 1;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
}

{
  btCompoundShape::~btCompoundShape(this);

  btAlignedFreeInternal(v1);
}

__n128 btCompoundShape::addChildShape(btCompoundShape *this, const btTransform *a2, btCollisionShape *a3, char a4)
{
  ++*(this + 26);
  v29 = a2->var0.var0[1];
  v30 = a2->var0.var0[0];
  var1 = a2->var1;
  v28 = a2->var0.var0[2];
  v8 = a3->var1;
  v9 = (*(a3->var0 + 12))(a3);
  (*(a3->var0 + 2))(a3, a2, &v33, &v32);
  for (i = 0; i != 12; i += 4)
  {
    v11 = (this + i);
    v12 = *(&v33 + i);
    if (*(this + i + 64) > v12)
    {
      v11[16] = v12;
    }

    v13 = *(&v32 + i);
    if (v11[20] < v13)
    {
      v11[20] = v13;
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    v31[0] = v33;
    v31[1] = v32;
    v15 = btDbvt::insert(v14, v31, *(this + 7));
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 7);
  if (v16 == *(this + 8))
  {
    v17 = v16 ? 2 * v16 : 1;
    if (v16 < v17)
    {
      if (v17)
      {
        v18 = btAlignedAllocInternal(96 * v17, 16);
        v16 = *(this + 7);
      }

      else
      {
        v18 = 0;
      }

      if (v16 >= 1)
      {
        v19 = 0;
        v20 = 96 * v16;
        do
        {
          v21 = (v18 + v19);
          v22 = (*(this + 5) + v19);
          *v21 = *v22;
          v21[1] = v22[1];
          v21[2] = v22[2];
          v21[3] = v22[3];
          v23 = v22[4];
          *(v21 + 73) = *(v22 + 73);
          v21[4] = v23;
          v19 += 96;
        }

        while (v20 != v19);
      }

      v24 = *(this + 5);
      if (v24 && *(this + 48) == 1)
      {
        btAlignedFreeInternal(v24);
      }

      *(this + 48) = 1;
      *(this + 5) = v18;
      *(this + 8) = v17;
      v16 = *(this + 7);
    }
  }

  v25 = *(this + 5) + 96 * v16;
  *v25 = v30;
  *(v25 + 16) = v29;
  result = var1;
  *(v25 + 32) = v28;
  *(v25 + 48) = var1;
  *(v25 + 64) = a3;
  *(v25 + 72) = v8;
  *(v25 + 76) = v9;
  *(v25 + 80) = v15;
  *(v25 + 88) = a4;
  ++*(this + 7);
  return result;
}

void *btCompoundShape::updateChildTransform(void *this, int a2, const btTransform *a3, int a4)
{
  v5 = this;
  *(this[5] + 96 * a2) = *a3;
  if (this[12])
  {
    v6 = 3 * a2;
    v7 = *(this[5] + 96 * a2 + 64);
    (*(*v7 + 16))(v7, a3, &v10, &v9);
    v8[0] = v10;
    v8[1] = v9;
    this = btDbvt::update(v5[12], *(v5[5] + 32 * v6 + 80), v8);
  }

  if (a4)
  {
    return (*(*v5 + 136))(v5);
  }

  return this;
}

void btCompoundShape::removeChildShapeByIndex(btCompoundShape *this, int a2)
{
  ++*(this + 26);
  v4 = *(this + 12);
  if (v4)
  {
    btDbvt::remove(v4, *(*(this + 5) + 96 * a2 + 80));
  }

  v6 = *(this + 5);
  v7 = (v6 + 96 * a2);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  *v18 = v7[4];
  *&v18[9] = *(v7 + 73);
  v12 = 96 * *(this + 7) - 96;
  v13 = (v6 + v12);
  v14 = v13[1];
  *v7 = *v13;
  v7[1] = v14;
  v15 = v13[3];
  v7[2] = v13[2];
  v7[3] = v15;
  v16 = *(v13 + 73);
  v7[4] = v13[4];
  *(v7 + 73) = v16;
  v17 = (*(this + 5) + v12);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = *v18;
  *(v17 + 73) = *&v18[9];
  if (*(this + 12))
  {
    *(*(*(this + 5) + 96 * a2 + 80) + 40) = a2;
  }

  --*(this + 7);
}

uint64_t btCompoundShape::removeChildShape(btCompoundShape *this, btCollisionShape *a2)
{
  ++*(this + 26);
  v3 = *(this + 7);
  if (v3 >= 1)
  {
    v5 = 96 * v3 - 32;
    do
    {
      if (*(*(this + 5) + v5) == a2)
      {
        btCompoundShape::removeChildShapeByIndex(this, v3 - 1);
      }

      --v3;
      v5 -= 96;
    }

    while ((v3 + 1) > 1);
  }

  v6 = *(*this + 136);

  return v6(this);
}

uint64_t btCompoundShape::recalculateLocalAabb(uint64_t this)
{
  *(this + 64) = xmmword_21C2A4030;
  *(this + 80) = xmmword_21C2A4040;
  if (*(this + 28) >= 1)
  {
    v1 = this;
    v2 = 0;
    do
    {
      this = (*(**(*(v1 + 40) + 96 * v2 + 64) + 16))(*(*(v1 + 40) + 96 * v2 + 64), *(v1 + 40) + 96 * v2, v8, v7);
      for (i = 0; i != 12; i += 4)
      {
        v4 = v1 + i;
        v5 = *&v8[i];
        if (*(v1 + i + 64) > v5)
        {
          *(v4 + 64) = v5;
        }

        v6 = *&v7[i];
        if (*(v4 + 80) < v6)
        {
          *(v4 + 80) = v6;
        }
      }

      ++v2;
    }

    while (v2 < *(v1 + 28));
  }

  return this;
}

float32x4_t btCompoundShape::getAabb(float32x4_t *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  v32 = this[4];
  v8 = v32;
  v33 = this[5];
  v8.i32[0] = this[1].i32[3];
  v31 = v8;
  v9 = (*(this->i64[0] + 96))();
  v35 = LODWORD(v9);
  v10 = (*(this->i64[0] + 96))(this);
  v34 = LODWORD(v10);
  *&v11 = (*(this->i64[0] + 96))(this);
  v12.i32[0] = 0;
  v13 = vdupq_lane_s32(*&vceqq_s32(v31, v12), 0);
  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  v15 = vmulq_f32(vaddq_f32(v33, v32), v14);
  v15.i32[3] = 0;
  v16 = a2->var0.var0[1];
  v17 = vbicq_s8(v15, v13);
  v18 = vmulq_f32(vsubq_f32(v33, v32), v14);
  v18.i32[3] = 0;
  v19 = a2->var0.var0[2];
  v20.i64[0] = __PAIR64__(v34, v35);
  v20.i64[1] = v11;
  v21 = vaddq_f32(vbicq_s8(v18, v13), v20);
  v22 = vmulq_f32(v17, a2->var0.var0[0]);
  v23 = vmulq_f32(v17, v16);
  v24 = vmulq_f32(v17, v19);
  v24.i32[3] = 0;
  *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
  *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
  v25 = vaddq_f32(v22, a2->var1);
  v26 = vmulq_f32(v21, vandq_s8(a2->var0.var0[0], xmmword_21C2A40B0));
  v27 = vmulq_f32(v21, vandq_s8(v16, xmmword_21C2A40B0));
  v28 = vmulq_f32(v21, vandq_s8(v19, xmmword_21C2A40B0));
  v28.i32[3] = 0;
  *v26.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vpadd_f32(*v26.f32, *v27.i8));
  *&v26.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  v29 = vsubq_f32(v25, v26);
  v29.var0.var0[3] = 0.0;
  *a3 = v29;
  result = vaddq_f32(v25, v26);
  *a4 = result;
  return result;
}

float btCompoundShape::calculateLocalInertia(btCompoundShape *this, float a2, btVector3 *a3)
{
  v10[0] = xmmword_21C27F910;
  v10[1] = xmmword_21C27F8C0;
  v10[2] = xmmword_21C27F600;
  v11 = 0;
  v12 = 0;
  (*(*this + 16))(this, v10, &v9, &v8);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vmulq_f32(vsubq_f32(v8, v9), v5);
  v5.f32[0] = (v6.f32[2] + v6.f32[2]) * (v6.f32[2] + v6.f32[2]);
  *v6.f32 = vadd_f32(*v6.f32, *v6.f32);
  *a3->var0.var0 = vrev64_s32(vmul_n_f32(vmla_f32(vdup_lane_s32(*v5.f32, 0), *v6.f32, *v6.f32), a2 / 12.0));
  result = (a2 / 12.0) * (COERCE_FLOAT(vmul_f32(*&v6, *&v6).i32[1]) + (v6.f32[0] * v6.f32[0]));
  a3->var0.var0[2] = result;
  return result;
}

uint64_t btCompoundShape::setLocalScaling(float32x4_t *this, float32x4_t *a2)
{
  if (this[1].i32[3] >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = this[2].i64[1] + v4;
      v14 = *v6;
      v7 = (*(**(v6 + 64) + 56))(*(v6 + 64));
      v8 = this[7];
      v9 = vrecpeq_f32(v8);
      v10 = vmulq_f32(v9, vrecpsq_f32(v8, v9));
      v13 = vmulq_f32(vrecpsq_f32(v8, v10), vmulq_f32(vmulq_f32(*v7, *a2), v10));
      v11 = *(this[2].i64[1] + v4 + 64);
      (*(*v11 + 48))(v11, &v13);
      v14.var1 = vmulq_f32(v14.var1, *a2);
      btCompoundShape::updateChildTransform(this, v5++, &v14, 0);
      v4 += 96;
    }

    while (v5 < this[1].i32[3]);
  }

  this[7] = *a2;
  return (*(this->i64[0] + 136))(this);
}

void btCompoundShape::createAabbTreeFromChildren(btCompoundShape *this)
{
  if (!*(this + 12))
  {
    v12 = v1;
    v13 = v2;
    v4 = btAlignedAllocInternal(96, 16);
    btDbvt::btDbvt(v4);
    *(this + 12) = v5;
    if (*(this + 7) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(this + 5) + v6;
        (*(**(v8 + 64) + 16))(*(v8 + 64), v8, &v11, &v10);
        v9[0] = v11;
        v9[1] = v10;
        *(v8 + 80) = btDbvt::insert(*(this + 12), v9, v7++);
        v6 += 96;
      }

      while (v7 < *(this + 7));
    }
  }
}

const char *btCompoundShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionShape::serialize(a1, a2, a3);
  *(a2 + 28) = *(a1 + 108);
  v6 = *(a1 + 28);
  *(a2 + 24) = v6;
  *(a2 + 16) = 0;
  if (v6)
  {
    v7 = (*(*a3 + 32))(a3, 80);
    v8 = *(v7 + 8);
    *(a2 + 16) = (*(*a3 + 56))(a3, v8);
    if (*(a2 + 24) >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 40);
      do
      {
        v12 = v11 + 96 * v10;
        *(v8 + 76) = *(v12 + 76);
        *(v8 + 64) = (*(*a3 + 56))(a3, *(v12 + 64));
        if (!(*(*a3 + 48))(a3, *(*(a1 + 40) + 96 * v10 + 64)))
        {
          v13 = *(*(a1 + 40) + 96 * v10 + 64);
          v14 = (*(*v13 + 104))(v13);
          v15 = (*(*a3 + 32))(a3, v14, 1);
          v16 = *(*(a1 + 40) + 96 * v10 + 64);
          v17 = (*(*v16 + 112))(v16, *(v15 + 8), a3);
          (*(*a3 + 40))(a3, v15, v17, 1346455635, *(*(a1 + 40) + 96 * v10 + 64));
        }

        v18 = 0;
        v11 = *(a1 + 40);
        *(v8 + 72) = *(v11 + 96 * v10 + 72);
        v19 = v11 + v9;
        v20 = v8;
        do
        {
          for (i = 0; i != 16; i += 4)
          {
            *(v20 + i) = *(v19 + i);
          }

          ++v18;
          v19 += 16;
          v20 += 16;
        }

        while (v18 != 3);
        for (j = 48; j != 64; j += 4)
        {
          *(v8 + j) = *(v11 + v9 + j);
        }

        ++v10;
        v8 += 80;
        v9 += 96;
      }

      while (v10 < *(a2 + 24));
    }

    (*(*a3 + 40))(a3, v7, "btCompoundShapeChildData", 1497453121, *(v7 + 8));
  }

  return "btCompoundShapeData";
}

void btConcaveShape::btConcaveShape(btConcaveShape *this)
{
  *(this + 2) = 35;
  *(this + 2) = 0;
  *this = &unk_282DC9D78;
  *(this + 6) = 0;
}

void btConeShape::btConeShape(btConeShape *this, float a2, float a3)
{
  btConvexInternalShape::btConvexInternalShape(this);
  *v5 = &unk_282DC9E10;
  *(v5 + 76) = a2;
  *(v5 + 80) = a3;
  *(v5 + 8) = 11;
  *(v5 + 84) = 0x100000000;
  *(v5 + 92) = 2;
  *(v5 + 72) = a2 / sqrtf((a3 * a3) + (a2 * a2));
}

uint64_t btConeShape::coneLocalSupport@<X0>(uint64_t this@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 80) * 0.5;
  v5 = *(this + 84);
  v4 = *(this + 88);
  v6 = vmulq_f32(*a2, *a2);
  if (a2->f32[v4] <= (*(this + 72) * sqrtf(vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0])))
  {
    v9 = a2->f32[v5];
    v8 = *(this + 92);
    v10 = a2->f32[v8];
    v11 = sqrtf((v10 * v10) + (v9 * v9));
    if (v11 <= 0.00000011921)
    {
      *(a3 + 4 * v5) = 0;
      *(a3 + 4 * v4) = -v3;
      v7 = 0.0;
    }

    else
    {
      v12 = *(this + 76) / v11;
      *(a3 + 4 * v5) = v9 * v12;
      *(a3 + 4 * v4) = -v3;
      v7 = v10 * v12;
    }
  }

  else
  {
    *(a3 + 4 * v5) = 0;
    *(a3 + 4 * v4) = v3;
    v7 = 0.0;
    v8 = *(this + 92);
  }

  *(a3 + 4 * v8) = v7;
  return this;
}

double btConeShape::batchedUnitVectorGetSupportingVertexWithoutMargin(btConeShape *this, float32x4_t *a2, btVector3 *a3, int a4)
{
  if (a4 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = a4;
    do
    {
      btConeShape::coneLocalSupport(this, a2, &v11);
      result = *v11.var0.var0;
      *a3++ = v11;
      ++a2;
      --v9;
    }

    while (v9);
  }

  return result;
}

float32x4_t btConeShape::localGetSupportingVertex@<Q0>(btConeShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  btConeShape::coneLocalSupport(this, a2, a3);
  result.f32[0] = (*(*this + 96))(this);
  if (result.f32[0] != 0.0)
  {
    v8 = vmulq_f32(*a2, *a2);
    *v7.f32 = vpadd_f32(*v8.i8, *v8.i8);
    v9 = vextq_s8(v8, v8, 8uLL);
    *v9.f32 = vadd_f32(*v7.f32, *v9.f32);
    v7.i32[0] = 679477248;
    v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v9), 0), xmmword_21C2A2150, *a2);
    v11 = vmulq_f32(v10, v10);
    v12 = vmulq_n_f32(vmulq_n_f32(v10, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0])), (*(*this + 96))(this));
    v12.i32[3] = 0;
    result = vaddq_f32(*a3, v12);
    *a3 = result;
  }

  return result;
}

double btConeShape::setLocalScaling(float32x4_t *this, float32x4_t *a2)
{
  v2 = this[5].i32[1];
  v3 = this[5].i32[3];
  v4 = this[4].f32[3];
  v5 = this[5].f32[0] * (a2->f32[this[5].i32[2]] / this[2].f32[this[5].i32[2]]);
  this[5].f32[0] = v5;
  v6 = v4 * (((a2->f32[v2] / this[2].f32[v2]) + (a2->f32[v3] / this[2].f32[v3])) * 0.5);
  this[4].f32[2] = v6 / sqrtf((v5 * v5) + (v6 * v6));
  this[4].f32[3] = v6;
  *&result = btConvexInternalShape::setLocalScaling(this, a2).u64[0];
  return result;
}

void btConeShape::~btConeShape(btConeShape *this)
{
  v1 = C3DSceneSourcePerformConsistencyCheck(this);

  btAlignedFreeInternal(v1);
}

float32x4_t btConeShape::calculateLocalInertia(btConeShape *this, float a2, btVector3 *a3)
{
  v17[0] = xmmword_21C27F910;
  v17[1] = xmmword_21C27F8C0;
  v17[2] = xmmword_21C27F600;
  v18 = 0;
  v19 = 0;
  (*(*this + 16))(this, v17, &v16, &v15);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v14 = vmulq_f32(vsubq_f32(v15, v16), v6);
  v7 = (*(*this + 96))(this);
  v8 = ((*&v14.i32[1] + *&v7) + (*&v14.i32[1] + *&v7)) * ((*&v14.i32[1] + *&v7) + (*&v14.i32[1] + *&v7));
  v9 = vextq_s8(v14, v14, 8uLL);
  v9.i32[1] = v14.i32[0];
  v10 = vadd_f32(*v9.f32, vdup_lane_s32(*&v7, 0));
  v11 = vadd_f32(v10, v10);
  v12 = vmul_f32(v11, v11);
  *v9.f32 = vdup_lane_s32(v12, 0);
  v9.f32[0] = v8;
  *v9.f32 = vadd_f32(v12, *v9.f32);
  v9.f32[2] = v12.f32[1] + v8;
  result = vmulq_n_f32(v9, a2 * 0.083333);
  result.i32[3] = 0;
  *a3 = result;
  return result;
}

double btConeShape::getAnisotropicRollingFrictionDirection@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0078125;
  *a1 = xmmword_21C27F8C0;
  return result;
}

void btConvexHullShape::btConvexHullShape(btConvexHullShape *this, const float *a2, int a3, int a4, const unsigned int *a5, int a6)
{
  btPolyhedralConvexAabbCachingShape::btPolyhedralConvexAabbCachingShape(this);
  *v12 = &unk_282DC9ED8;
  *(v12 + 144) = 1;
  *(v12 + 136) = 0;
  *(v12 + 124) = 0;
  *(v12 + 176) = 1;
  *(v12 + 168) = 0;
  *(v12 + 156) = 0;
  *(v12 + 8) = 4;
  if (a3 < 1)
  {
    *(this + 31) = a3;
  }

  else
  {
    v13 = btAlignedAllocInternal(16 * a3, 16);
    v14 = v13;
    v15 = *(this + 31);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 16 * v15;
      do
      {
        *(v13 + v16) = *(*(this + 17) + v16);
        v16 += 16;
      }

      while (v17 != v16);
    }

    v18 = *(this + 17);
    if (v18 && *(this + 144) == 1)
    {
      btAlignedFreeInternal(v18);
    }

    v19 = 0;
    *(this + 144) = 1;
    *(this + 17) = v14;
    *(this + 31) = a3;
    *(this + 32) = a3;
    v20 = a2 + 2;
    do
    {
      *&v21 = *(v20 - 1);
      *(&v21 + 2) = *v20;
      v20 = (v20 + a4);
      *(&v21 + 1) = DWORD2(v21);
      *(*(this + 17) + 16 * v19++) = v21;
    }

    while (a3 != v19);
  }

  v22 = 3 * a6;
  v23 = *(this + 39);
  if (v23 < 3 * a6)
  {
    if (*(this + 40) >= v22)
    {
LABEL_25:
      bzero((*(this + 21) + 4 * v23), 4 * (v22 + ~v23) + 4);
      goto LABEL_26;
    }

    if (a6)
    {
      v24 = btAlignedAllocInternal(4 * v22, 16);
    }

    else
    {
      v24 = 0;
    }

    LODWORD(v25) = *(this + 39);
    v26 = *(this + 21);
    if (v25 < 1)
    {
      if (!v26)
      {
LABEL_24:
        *(this + 176) = 1;
        *(this + 21) = v24;
        *(this + 40) = v22;
        goto LABEL_25;
      }
    }

    else
    {
      v25 = v25;
      v27 = v24;
      v28 = *(this + 21);
      do
      {
        v29 = *v28++;
        *v27++ = v29;
        --v25;
      }

      while (v25);
    }

    if (*(this + 176) == 1)
    {
      btAlignedFreeInternal(v26);
    }

    goto LABEL_24;
  }

LABEL_26:
  *(this + 39) = v22;
  if (a6 >= 1)
  {
    v30 = a6;
    v31 = (*(this + 21) + 8);
    v32 = a5 + 2;
    do
    {
      *(v31 - 2) = *(v32 - 2);
      *(v31 - 1) = *(v32 - 1);
      v33 = *v32;
      v32 += 3;
      *v31 = v33;
      v31 += 3;
      --v30;
    }

    while (v30);
  }

  btPolyhedralConvexAabbCachingShape::recalcLocalAabb(this);
}

float32x4_t btConvexHullShape::localGetSupportingVertexWithoutMargin@<Q0>(btConvexHullShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float32x4_t result@<Q0>)
{
  v16 = -1.0e18;
  v5 = *(this + 31);
  if (v5 < 1)
  {
    a3->i64[0] = 0;
    a3->i64[1] = 0;
  }

  else
  {
    v7 = *(this + 2);
    v8 = vmulq_f32(*a2, v7);
    v15 = v8;
    v9 = *(this + 17);
    if (v5 > 3)
    {
      v11 = _maxdot_large(v9, v15.f32, v5, &v16);
      v9 = *(this + 17);
      v7 = *(this + 2);
    }

    else
    {
      v10 = 0;
      v11 = -1;
      v12 = -3.4028e38;
      do
      {
        v13 = vmulq_f32(v8, *&v9[4 * v10]);
        v14 = vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL)).f32[0];
        if (v14 > v12)
        {
          v12 = v14;
          v11 = v10;
        }

        ++v10;
      }

      while (v5 != v10);
    }

    result = vmulq_f32(*&v9[4 * v11], v7);
    *a3 = result;
  }

  return result;
}

const float *btConvexHullShape::batchedUnitVectorGetSupportingVertexWithoutMargin(const float *this, const btVector3 *a2, btVector3 *a3, int a4)
{
  if (a4 >= 1)
  {
    v31 = v4;
    v32 = v5;
    v8 = this;
    v9 = &a3->var0.var0[3];
    v10 = a4;
    v11 = (a4 + 3) & 0xFFFFFFFC;
    v12 = vdupq_n_s64(a4 - 1);
    v13 = xmmword_21C27F630;
    v14 = xmmword_21C27F640;
    v15 = &a3[2].var0.var0[3];
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v14));
      if (vuzp1_s16(v17, *v12.i8).u8[0])
      {
        *(v15 - 8) = -581039253;
      }

      if (vuzp1_s16(v17, *&v12).i8[2])
      {
        *(v15 - 4) = -581039253;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
      {
        *v15 = -581039253;
        v15[4] = -581039253;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v15 += 16;
      v11 -= 4;
    }

    while (v11);
    v18 = 0;
    v30 = 0.0;
    do
    {
      v19 = *(v8 + 8);
      v20 = vmulq_f32(a2[v18], v19);
      v29 = v20;
      v21 = *(v8 + 31);
      if (v21 < 1)
      {
        v9[4 * v18] = -1.0e18;
      }

      else
      {
        this = *(v8 + 17);
        if (v21 > 3)
        {
          v23 = _maxdot_large(this, v29.f32, v21, &v30);
          this = *(v8 + 17);
          v19 = *(v8 + 8);
          v24 = v30;
        }

        else
        {
          v22 = 0;
          v23 = -1;
          v24 = -3.4028e38;
          do
          {
            v25 = vmulq_f32(v20, *&this[4 * v22]);
            v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0];
            if (v26 > v24)
            {
              v24 = v26;
              v23 = v22;
            }

            ++v22;
          }

          while (v21 != v22);
          v30 = v24;
        }

        v27 = vmulq_f32(*&this[4 * v23], v19);
        v28 = &a3[v18];
        *v28 = v27;
        v28->var0.var0[3] = v24;
      }

      ++v18;
    }

    while (v18 != v10);
  }

  return this;
}

float32x4_t btConvexHullShape::localGetSupportingVertex@<Q0>(btConvexHullShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*this + 136))(this);
  result.f32[0] = (*(*this + 96))(this);
  if (result.f32[0] != 0.0)
  {
    v8 = vmulq_f32(*a2, *a2);
    *v7.f32 = vpadd_f32(*v8.i8, *v8.i8);
    v9 = vextq_s8(v8, v8, 8uLL);
    *v9.f32 = vadd_f32(*v7.f32, *v9.f32);
    v7.i32[0] = 679477248;
    v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v9), 0), xmmword_21C2A2150, *a2);
    v11 = vmulq_f32(v10, v10);
    v12 = vmulq_n_f32(vmulq_n_f32(v10, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0])), (*(*this + 96))(this));
    v12.i32[3] = 0;
    result = vaddq_f32(*a3, v12);
    *a3 = result;
  }

  return result;
}

float32x4_t btConvexHullShape::getEdge(float32x4_t *this, int a2, float32x4_t *a3, btVector3 *a4)
{
  v4 = this[7].i32[3];
  *a3 = vmulq_f32(*(this[8].i64[1] + 16 * (a2 % v4)), this[2]);
  result = vmulq_f32(*(this[8].i64[1] + 16 * ((a2 + 1) % v4)), this[2]);
  *a4 = result;
  return result;
}

float32x4_t btConvexHullShape::getVertex(float32x4_t *this, int a2, btVector3 *a3)
{
  result = vmulq_f32(*(this[8].i64[1] + 16 * a2), this[2]);
  *a3 = result;
  return result;
}

const char *btConvexHullShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionShape::serialize(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 32 + i) = *(a1 + 48 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 16 + j) = *(a1 + 32 + j);
  }

  *(a2 + 48) = *(a1 + 64);
  v8 = *(a1 + 124);
  *(a2 + 72) = v8;
  if (v8)
  {
    *(a2 + 56) = (*(*a3 + 56))(a3, *(a1 + 136));
    *(a2 + 64) = 0;
    v9 = (*(*a3 + 32))(a3, 16, v8);
    v10 = *(a1 + 136);
    if (v8 >= 1)
    {
      v11 = 0;
      v12 = *(v9 + 8);
      v13 = *(a1 + 136);
      do
      {
        for (k = 0; k != 16; k += 4)
        {
          *(v12 + k) = *(v13 + k);
        }

        ++v11;
        v12 += 16;
        v13 += 16;
      }

      while (v11 != v8);
    }

    (*(*a3 + 40))(a3, v9, "btVector3FloatData", 1497453121, v10);
  }

  else
  {
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  return "btConvexHullShapeData";
}

__n128 btConvexHullShape::project(float32x4_t *this, const btTransform *a2, float32x4_t *a3, float *a4, float *a5, __n128 *a6, __n128 *a7)
{
  *a4 = 3.4028e38;
  *a5 = -3.4028e38;
  v7 = this[7].u32[3];
  if (v7 < 1)
  {
    result.n128_u32[0] = -8388609;
  }

  else
  {
    v8 = 0;
    v9 = 16 * v7;
    result.n128_u32[1] = 0;
    do
    {
      v11 = vmulq_f32(*(this[8].i64[1] + v8), this[2]);
      v12 = vmulq_f32(a2->var0.var0[0], v11);
      v13 = vmulq_f32(v11, a2->var0.var0[1]);
      v14 = vmulq_f32(v11, a2->var0.var0[2]);
      v14.i32[3] = 0;
      *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
      *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
      v15 = vaddq_f32(v12, a2->var1);
      v16 = vmulq_f32(v15, *a3);
      v17 = vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL)).f32[0];
      if (v17 < *a4)
      {
        *a4 = v17;
        *a6 = v15;
      }

      if (v17 > *a5)
      {
        *a5 = v17;
        *a7 = v15;
      }

      v8 += 16;
    }

    while (v9 != v8);
    result.n128_f32[0] = *a5;
  }

  v18 = *a4;
  if (*a4 > result.n128_f32[0])
  {
    *a4 = result.n128_f32[0];
    *a5 = v18;
    result = *a6;
    *a6 = *a7;
    *a7 = result;
  }

  return result;
}

void btConvexHullShape::~btConvexHullShape(btConvexHullShape *this)
{
  *this = &unk_282DC9ED8;
  v2 = *(this + 21);
  if (v2 && *(this + 176) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 176) = 1;
  *(this + 21) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  v3 = *(this + 17);
  if (v3 && *(this + 144) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 144) = 1;
  *(this + 17) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;

  btPolyhedralConvexShape::~btPolyhedralConvexShape(this);
}

{
  *this = &unk_282DC9ED8;
  v2 = *(this + 21);
  if (v2 && *(this + 176) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 176) = 1;
  *(this + 21) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  v3 = *(this + 17);
  if (v3 && *(this + 144) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 144) = 1;
  *(this + 17) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  btPolyhedralConvexShape::~btPolyhedralConvexShape(this);

  btAlignedFreeInternal(v4);
}

void btConvexInternalShape::btConvexInternalShape(btConvexInternalShape *this)
{
  btConvexShape::btConvexShape(this);
  *v1 = &unk_282DC9FF0;
  *(v1 + 32) = xmmword_21C280340;
  *(v1 + 64) = 1025758986;
}

float32x4_t btConvexInternalShape::setLocalScaling(float32x4_t *this, float32x4_t *a2)
{
  result = vabsq_f32(*a2);
  this[2] = result;
  return result;
}

void *btConvexInternalShape::getAabbSlow(btConvexInternalShape *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  v8 = (*(*this + 96))(this);
  for (i = 0; i != 3; ++i)
  {
    v27 = 0uLL;
    v27.i32[i] = 1065353216;
    v10 = a2->var0.var0[0];
    v11 = a2->var0.var0[1];
    v10.i32[3] = 0;
    v11.i32[3] = 0;
    v12 = a2->var0.var0[2];
    v12.i32[3] = 0;
    v25 = vaddq_f32(vaddq_f32(vmulq_n_f32(v10, v27.f32[0]), vmulq_lane_f32(v11, *v27.f32, 1)), vmulq_laneq_f32(v12, v27, 2));
    (*(*this + 128))(&v26, this, &v25);
    v13 = vmulq_f32(a2->var0.var0[0], v26);
    v14 = vmulq_f32(v26, a2->var0.var0[1]);
    v15 = vmulq_f32(v26, a2->var0.var0[2]);
    v15.i32[3] = 0;
    *v13.f32 = vadd_f32(vpadd_f32(*v13.f32, *v14.i8), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
    *&v13.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
    v25 = vaddq_f32(v13, a2->var1);
    a4->var0.var0[i] = v8 + v25.f32[i];
    v27.i32[i] = -1082130432;
    v16 = a2->var0.var0[0];
    v17 = a2->var0.var0[1];
    v16.i32[3] = 0;
    v17.i32[3] = 0;
    v18 = a2->var0.var0[2];
    v18.i32[3] = 0;
    v23 = vaddq_f32(vaddq_f32(vmulq_n_f32(v16, v27.f32[0]), vmulq_lane_f32(v17, *v27.f32, 1)), vmulq_laneq_f32(v18, v27, 2));
    result = (*(*this + 128))(&v24, this, &v23);
    v20 = vmulq_f32(a2->var0.var0[0], v24);
    v21 = vmulq_f32(v24, a2->var0.var0[1]);
    v22 = vmulq_f32(v24, a2->var0.var0[2]);
    v22.i32[3] = 0;
    *v20.f32 = vadd_f32(vpadd_f32(*v20.f32, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
    *&v20.u32[2] = vpadd_f32(vpadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)), 0);
    v25 = vaddq_f32(v20, a2->var1);
    a3->var0.var0[i] = v25.f32[i] - v8;
  }

  return result;
}

float32x4_t btConvexInternalShape::localGetSupportingVertex@<Q0>(btConvexInternalShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*this + 136))(this);
  result.f32[0] = (*(*this + 96))(this);
  if (result.f32[0] != 0.0)
  {
    v8 = vmulq_f32(*a2, *a2);
    *v7.f32 = vpadd_f32(*v8.i8, *v8.i8);
    v9 = vextq_s8(v8, v8, 8uLL);
    *v9.f32 = vadd_f32(*v7.f32, *v9.f32);
    v7.i32[0] = 679477248;
    v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v9), 0), xmmword_21C2A2150, *a2);
    v11 = vmulq_f32(v10, v10);
    v12 = vmulq_n_f32(vmulq_n_f32(v10, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0])), (*(*this + 96))(this));
    v12.i32[3] = 0;
    result = vaddq_f32(*a3, v12);
    *a3 = result;
  }

  return result;
}

void btConvexInternalAabbCachingShape::btConvexInternalAabbCachingShape(btConvexInternalAabbCachingShape *this)
{
  btConvexShape::btConvexShape(this);
  *(v1 + 32) = xmmword_21C280340;
  *(v1 + 64) = 1025758986;
  *v1 = &unk_282DCA0B8;
  *(v1 + 80) = xmmword_21C280340;
  *(v1 + 96) = xmmword_21C2A2150;
  *(v1 + 112) = 0;
}

float32x4_t btConvexInternalAabbCachingShape::getAabb(float32x4_t *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  *&v8 = (*(this->i64[0] + 96))(this);
  v10 = this[5];
  v9 = this[6];
  v11 = a2->var0.var0[1];
  v12 = a2->var0.var0[2];
  v13 = vandq_s8(v12, xmmword_21C2A40B0);
  v14 = vaddq_f32(v9, v10);
  v15 = vsubq_f32(v9, v10);
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v16 = vmulq_f32(v14, v10);
  v17 = vmulq_f32(v12, v16);
  v16.i32[3] = 0;
  v18 = vmulq_f32(v15, v10);
  v18.i32[3] = 0;
  v19 = vdupq_lane_s32(v8, 0);
  v19.i32[3] = 0;
  v20 = vaddq_f32(v19, v18);
  v21 = vmulq_f32(a2->var0.var0[0], v16);
  v22 = vmulq_f32(v11, v16);
  v17.i32[3] = 0;
  *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
  *&v21.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v23 = vaddq_f32(a2->var1, v21);
  v24 = vmulq_f32(v20, vandq_s8(a2->var0.var0[0], xmmword_21C2A40B0));
  v25 = vmulq_f32(v20, vandq_s8(v11, xmmword_21C2A40B0));
  v26 = vmulq_f32(v20, v13);
  v26.i32[3] = 0;
  *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
  v27 = vsubq_f32(v23, v24);
  v27.var0.var0[3] = 0.0;
  *a3 = v27;
  result = vaddq_f32(v23, v24);
  *a4 = result;
  return result;
}

uint64_t btConvexInternalAabbCachingShape::recalcLocalAabb(btConvexInternalAabbCachingShape *this)
{
  v8 = *MEMORY[0x277D85DE8];
  *(this + 112) = 1;
  if ((atomic_load_explicit(_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    btConvexInternalAabbCachingShape::recalcLocalAabb();
  }

  memset(v7, 0, sizeof(v7));
  v2 = v7;
  result = (*(*this + 152))(this, &dword_27CDDA9C0, v7, 6);
  v4 = *(this + 16);
  v5 = (this + 96);
  v6 = -48;
  do
  {
    *v5 = *v2 + v4;
    *(v5 - 4) = v2[12] - v4;
    ++v5;
    v2 += 5;
    v6 += 16;
  }

  while (v6);
  return result;
}

void btConvexInternalAabbCachingShape::recalcLocalAabb()
{
  if (__cxa_guard_acquire(_MergedGlobals_0))
  {
    dword_27CDDA9C0 = 1065353216;
    unk_27CDDA9CC = 0;
    unk_27CDDA9C4 = 0;
    dword_27CDDA9D4 = 1065353216;
    qword_27CDDA9D8 = 0;
    unk_27CDDA9E0 = 0;
    qword_27CDDA9E8 = 1065353216;
    dword_27CDDA9F0 = -1082130432;
    unk_27CDDA9FC = 0;
    unk_27CDDA9F4 = 0;
    dword_27CDDAA04 = -1082130432;
    qword_27CDDAA08 = 0;
    unk_27CDDAA10 = 0;
    qword_27CDDAA18 = 3212836864;

    __cxa_guard_release(_MergedGlobals_0);
  }
}

void btConvexPolyhedron::btConvexPolyhedron(btConvexPolyhedron *this)
{
  *this = &unk_282DCA180;
  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 44) = 0;
  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 76) = 0;
}

void btConvexPolyhedron::~btConvexPolyhedron(btConvexPolyhedron *this)
{
  *this = &unk_282DCA180;
  v2 = *(this + 11);
  if (v2 && *(this + 96) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  btAlignedObjectArray<btFace>::~btAlignedObjectArray(this + 40);
  v3 = *(this + 3);
  if (v3 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

{
  btConvexPolyhedron::~btConvexPolyhedron(this);

  btAlignedFreeInternal(v1);
}

BOOL btConvexPolyhedron::testContainment(float32x4_t *this)
{
  v1 = 0;
  v2 = 0;
  while (1)
  {
    if (v2 > 3)
    {
      if (v2 <= 5)
      {
        if (v2 == 4)
        {
          v4 = this[8].f32[1];
          v3 = -this[8].f32[0];
          goto LABEL_14;
        }

        v4 = this[8].f32[1];
        v3 = -this[8].f32[0];
        goto LABEL_20;
      }

      if (v2 == 6)
      {
        v5 = this[8].f32[1];
        v3 = -this[8].f32[0];
        goto LABEL_13;
      }

      v7 = this[8].f32[1];
      v3 = -this[8].f32[0];
LABEL_19:
      v4 = -v7;
LABEL_20:
      v6 = -this[8].f32[2];
      goto LABEL_21;
    }

    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v3 = this[8].f32[0];
        v5 = this[8].f32[1];
LABEL_13:
        v4 = -v5;
        goto LABEL_14;
      }

      v3 = this[8].f32[0];
      v7 = this[8].f32[1];
      goto LABEL_19;
    }

    if (!v2)
    {
      v3 = this[8].f32[0];
      v4 = this[8].f32[1];
LABEL_14:
      v6 = this[8].f32[2];
      goto LABEL_21;
    }

    v4 = this[8].f32[1];
    v6 = -this[8].f32[2];
    v3 = this[8].f32[0];
LABEL_21:
    if (this[2].i32[3] >= 1)
    {
      break;
    }

LABEL_25:
    v1 = v2++ > 6;
    if (v2 == 8)
    {
      return 1;
    }
  }

  v8.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v8.i64[1] = LODWORD(v6);
  v9 = vaddq_f32(this[7], v8);
  v10 = (this[3].i64[1] + 44);
  v11 = this[2].u32[3];
  while (1)
  {
    v12.i64[0] = *(v10 - 3);
    v12.i64[1] = *(v10 - 1);
    v13 = vmulq_f32(v9, v12);
    if ((*v10 + vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL)).f32[0]) > 0.0)
    {
      return v1;
    }

    v10 += 12;
    if (!--v11)
    {
      goto LABEL_25;
    }
  }
}