void C3DTransformLevel::allocateData(float32x2_t *this, unsigned __int32 a2, int a3)
{
  v5 = a2 << 6;
  v6 = this[9].i32[1];
  v7 = v6 << 6;
  v8 = *this;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v5, 0xF60F032AuLL))
  {
    v9 = 0;
  }

  else
  {
    v9 = memptr;
  }

  if (v6)
  {
    memcpy(v9, v8, v6 << 6);
  }

  v10 = (v5 - v7);
  if (v10 >= 1)
  {
    bzero(&v9[v7], (v5 - v7));
  }

  if (v8)
  {
    free(v8);
  }

  *this = v9;
  v11 = this[1];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v5, 0xF60F032AuLL))
  {
    v12 = 0;
  }

  else
  {
    v12 = memptr;
  }

  if (v6)
  {
    memcpy(v12, v11, v6 << 6);
  }

  if (v10 >= 1)
  {
    bzero(&v12[v7], (v5 - v7));
  }

  if (v11)
  {
    free(v11);
  }

  this[1] = v12;
  v13 = this[2];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, v5, 0xF60F032AuLL))
  {
    v14 = 0;
  }

  else
  {
    v14 = memptr;
  }

  if (v6)
  {
    memcpy(v14, v13, v6 << 6);
  }

  v15 = 4 * a2;
  if (v10 >= 1)
  {
    bzero(&v14[v7], v10);
  }

  v16 = 4 * v6;
  if (v13)
  {
    free(v13);
  }

  this[2] = v14;
  v17 = this[3];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0xF60F032AuLL))
  {
    v18 = 0;
  }

  else
  {
    v18 = memptr;
  }

  if (v6)
  {
    memcpy(v18, v17, 4 * v6);
  }

  v19 = v15 - v16;
  if (v15 - v16 >= 1)
  {
    bzero(&v18[v16], (v15 - v16));
  }

  if (v17)
  {
    free(v17);
  }

  this[3] = v18;
  v20 = this[4];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0xF60F032AuLL))
  {
    v21 = 0;
  }

  else
  {
    v21 = memptr;
  }

  if (v6)
  {
    memcpy(v21, v20, 4 * v6);
  }

  if (v19 >= 1)
  {
    bzero(&v21[v16], (v15 - v16));
  }

  v22 = 8 * v6;
  if (v20)
  {
    free(v20);
  }

  this[4] = v21;
  v23 = this[5];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 8 * a2, 0xF60F032AuLL))
  {
    v24 = 0;
  }

  else
  {
    v24 = memptr;
  }

  if (v6)
  {
    memcpy(v24, v23, 8 * v6);
  }

  v25 = 8 * a2 - v22;
  if (v25 >= 1)
  {
    bzero(&v24[v22], v25);
  }

  if (v23)
  {
    free(v23);
  }

  this[5] = v24;
  v26 = this[6];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0xF60F032AuLL))
  {
    v27 = 0;
  }

  else
  {
    v27 = memptr;
  }

  if (v6)
  {
    memcpy(v27, v26, 4 * v6);
  }

  if (v19 >= 1)
  {
    bzero(&v27[v16], (v15 - v16));
  }

  if (v26)
  {
    free(v26);
  }

  this[6] = v27;
  v28 = this[7];
  v29 = this[9].i32[1];
  v30 = 4 * v29;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0xF60F032AuLL))
  {
    v31 = 0;
  }

  else
  {
    v31 = memptr;
  }

  if (v29)
  {
    memcpy(v31, v28, 4 * v29);
  }

  v32 = (v15 - v30);
  if (v32 >= 1)
  {
    bzero(&v31[v30], v32);
  }

  if (v28)
  {
    free(v28);
  }

  this[7] = v31;
  v33 = a2 - 1;
  v34 = this[9].u32[1];
  v35 = this[3];
  if (v34 < v33)
  {
    v36 = 0;
    v37 = (v33 - v34 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = vdupq_n_s64(v34);
    v39 = vaddq_s64(v38, xmmword_21C27F630);
    v40 = vaddq_s64(v38, xmmword_21C27F640);
    v41 = vdupq_n_s64(v33 - v34 - 1);
    v42 = (*&v35 + 4 * v34 + 8);
    v43 = vdupq_n_s64(1uLL);
    v44 = vdupq_n_s64(4uLL);
    do
    {
      v45 = vdupq_n_s64(v36);
      v46 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v45, xmmword_21C27F640)));
      v47 = vaddq_s64(v40, v43);
      if (vuzp1_s16(v46, 2).u8[0])
      {
        *(v42 - 2) = v47.i32[0];
      }

      if (vuzp1_s16(v46, 2).i8[2])
      {
        *(v42 - 1) = v47.i32[2];
      }

      v48 = vorrq_s8(v45, xmmword_21C27F630);
      v49 = vaddq_s64(v39, v43);
      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v41, v48))).i32[1])
      {
        *v42 = v49.i32[0];
        v42[1] = v49.i32[2];
      }

      v36 += 4;
      v39 = vaddq_s64(v39, v44);
      v40 = vaddq_s64(v40, v44);
      v42 += 4;
    }

    while (v37 != v36);
  }

  *(*&v35 + 4 * v33) = -1;
  if (a3)
  {
    this[8] = vneg_f32(0xFFFFFFFFLL);
  }

  this[9].i32[1] = a2;
}

void __C3DTransformTree::_offset(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = *(a1 + 56) + 80 * a2;
  v10 = *(v9 + 72);
  if (v10 > SHIDWORD(a2))
  {
    v11 = *(a1 + 24);
    v12 = (*(v9 + 48) + 4 * (a2 >> 32));
    v13 = v10 - (a2 >> 32);
    do
    {
      v14 = *v12++;
      v15 = v11 + 8 * v14;
      LODWORD(v14) = *(v15 + 4);
      v16 = (v15 + 4);
      v17 = v14;
      if (v14 >= SHIDWORD(a2))
      {
        *v16 = v17 + a4;
      }

      --v13;
    }

    while (v13);
  }

  C3DTransformLevel::moveData(v9, SHIDWORD(a2), a4);
  v18 = *(v9 + 68);
  if (v18 >= v8)
  {
    v19 = *(v9 + 64);
    if (v19 > v8)
    {
      *(v9 + 64) = v19 + a4;
    }

    *(v9 + 68) = v18 + a4;
  }

  if (a3 != -1)
  {
    C3DTransformLevel::offsetChildIndices((*(a1 + 56) + 80 * a3), SHIDWORD(a3), v8, a4);
  }

  if (v6 + 1 < *(a1 + 64))
  {
    v20 = v8;
    while (v20 >= 2)
    {
      v21 = *(v9 + 32) + 4 * v20--;
      LODWORD(v22) = *(v21 - 4);
      if (v22 != -1)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v22) = 0;
LABEL_18:
    v23 = *(a1 + 56) + 80 * (v6 + 1);
    v24 = *(v23 + 72);
    if (v22 < v24)
    {
      v25 = *(v23 + 24);
      v22 = v22;
      do
      {
        v26 = *(v25 + 4 * v22);
        if (v26 >= v8)
        {
          *(v25 + 4 * v22) = v26 + a4;
          v24 = *(v23 + 72);
        }

        ++v22;
      }

      while (v22 < v24);
    }
  }
}

__n128 __C3DTransformTree::updateWorldTransformOnInsertion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = (v2 + 80 * a2);
  v4 = a2 >> 32;
  v5 = a2 - 1;
  if (a2 == 0x100000000)
  {
    v6 = (v3[2] + (v4 << 6));
    v7 = (*v3 + (v4 << 6));
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[3];
    v7[2] = v6[2];
    v7[3] = v10;
    *v7 = v8;
    v7[1] = v9;
  }

  else
  {
    v12 = *(*(v2 + 80 * a2 + 24) + 4 * v4);
    __C3DTransformTree::updateWorldTransformOnInsertion();
    v13 = 0;
    v14 = (*(*(a1 + 56) + 80 * v5) + (v12 << 6));
    v15 = *v3 + (v4 << 6);
    v16 = v3[2] + (v4 << 6);
    do
    {
      *(v15 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14[1], *(v16 + v13), 1), *v14, COERCE_FLOAT(*(v16 + v13))), v14[2], *(v16 + v13), 2), v14[3], *(v16 + v13), 3);
      v13 += 16;
    }

    while (v13 != 64);
  }

  v17 = *v3 + (v4 << 6);
  v18 = v3[1] + (v4 << 6);
  result = *v17;
  v20 = *(v17 + 16);
  v21 = *(v17 + 48);
  *(v18 + 32) = *(v17 + 32);
  *(v18 + 48) = v21;
  *v18 = result;
  *(v18 + 16) = v20;
  return result;
}

uint64_t __C3DTransformTree::_newHandle(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result == -1)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v7 >= v6)
    {
      v9 = *(a1 + 24);
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1 + 24, v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v8 = 8 * v10 + 8;
      v15 = *(a1 + 24);
      v16 = *(a1 + 32) - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = *(a1 + 24);
      *(a1 + 24) = v17;
      *(a1 + 32) = v8;
      *(a1 + 40) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 1);
    }

    *(a1 + 32) = v8;
    return ((v8 - *(a1 + 24)) >> 3) - 1;
  }

  else
  {
    v5 = *(a1 + 24) + 8 * result;
    *(a1 + 48) = *(v5 + 4);
    *v5 = a2;
  }

  return result;
}

void __C3DTransformTree::_fixupParentAndSiblings(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = HIDWORD(a2);
  if (a3 + 1 != a2)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::_fixupParentAndSiblings(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a3 != -1)
  {
    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = *(v16 + 80 * a3 + 32);
      if (*(v17 + 4 * (a3 >> 32)) == a4)
      {
        *(v17 + 4 * (a3 >> 32)) = v6;
      }
    }
  }
}

void C3DTransformLevel::moveData(C3DTransformLevel *this, int a2, int a3)
{
  v3 = *(this + 18);
  v4 = v3 - a2;
  if (v3 - a2 < 0)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3DTransformLevel::moveData(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  else if (v3 != a2)
  {
    if (v3 + a3 > *(this + 19))
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        C3DTransformLevel::moveData(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = (*(this + 3) + 4 * a2);
    memmove(&v16[4 * a3], v16, 4 * v4);
    v17 = (*(this + 4) + 4 * a2);
    memmove(&v17[4 * a3], v17, 4 * v4);
    v18 = (*(this + 5) + 8 * a2);
    memmove(&v18[8 * a3], v18, 8 * v4);
    v19 = (*(this + 6) + 4 * a2);
    memmove(&v19[4 * a3], v19, 4 * v4);
    v20 = (*(this + 7) + 4 * a2);
    memmove(&v20[4 * a3], v20, 4 * v4);
    memmove((*this + (a2 << 6) + (a3 << 6)), (*this + (a2 << 6)), v4 << 6);
    v21 = (*(this + 1) + (a2 << 6));
    memmove(&v21[64 * a3], v21, v4 << 6);
    v22 = (*(this + 2) + (a2 << 6));
    memmove(&v22[64 * a3], v22, v4 << 6);
  }
}

void C3DTransformLevel::offsetChildIndices(C3DTransformLevel *this, int a2, int a3, int a4)
{
  if (*(this + 18) <= a2)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DTransformLevel::offsetChildIndices(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(this + 18);
  if (v16 > a2)
  {
    v17 = *(this + 4);
    v18 = a2;
    do
    {
      v19 = *(v17 + 4 * v18);
      if (v19 >= a3)
      {
        *(v17 + 4 * v18) = v19 + a4;
        v16 = *(this + 18);
      }

      ++v18;
    }

    while (v18 < v16);
  }
}

uint64_t __C3DTransformTree::_findFirstChildInRange(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = HIDWORD(a2);
  v6 = HIDWORD(a3);
  if (a2 != a3)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::_findFirstChildInRange(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (v5 > v6)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::_findFirstChildInRange(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    return -1;
  }

  v23 = a2 + 1;
  if (a2 + 1 == *(a1 + 64))
  {
    return -1;
  }

  v25 = (*(*(a1 + 56) + 80 * a2 + 32) + 4 * (a2 >> 32));
  v26 = v6 - HIDWORD(a2) + 1;
  while (1)
  {
    v28 = *v25++;
    v27 = v28;
    if (v28 != -1)
    {
      break;
    }

    if (!--v26)
    {
      v23 = -1;
      return v23 | (v27 << 32);
    }
  }

  return v23 | (v27 << 32);
}

uint64_t __C3DTransformTree::_findLastChildInRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  v7 = HIDWORD(a3);
  if (a2 != a3)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::_findFirstChildInRange(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (v6 > v7)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::_findFirstChildInRange(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    return -1;
  }

  if (a2 + 1 == *(a1 + 64))
  {
    return -1;
  }

  v24 = (a3 + 1);
  v25 = (a3 >> 32) + 1;
  v26 = (*(*(a1 + 56) + 80 * a2 + 32) + 4 * (a3 >> 32));
  while (1)
  {
    v28 = *v26--;
    v27 = v28;
    if (v28 != -1)
    {
      break;
    }

    if (--v25 <= a2 >> 32)
    {
      return -1;
    }
  }

  Sibling = __C3DTransformTree::_nextSibling(a1, v24 | (v27 << 32));
  v31 = HIDWORD(Sibling);
  if (HIDWORD(Sibling) != 0xFFFFFFFF)
  {
    do
    {
      v32 = Sibling;
      v24 = v31;
      Sibling = __C3DTransformTree::_nextSibling(a1, Sibling);
      v31 = HIDWORD(Sibling);
    }

    while (HIDWORD(Sibling) != 0xFFFFFFFF);
    v27 = v24;
    LODWORD(v24) = v32;
  }

  return v24 | (v27 << 32);
}

unint64_t __C3DTransformTree::_nextSibling(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56) + 80 * a2;
  v3 = HIDWORD(a2) + 1;
  if (HIDWORD(a2) + 1 < *(v2 + 72) && *(*(v2 + 24) + 4 * v3) == *(*(v2 + 24) + 4 * (a2 >> 32)))
  {
    return a2 | (v3 << 32);
  }

  else
  {
    return -1;
  }
}

C3D::RenderPass *C3D::RenderPass::RenderPass(C3D::RenderPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  C3D::Pass::Pass(this, a2, a3);
  *v4 = &unk_282DC81C8;
  *(v4 + 112) = 256;
  *(v4 + 224) = 0;
  *(v4 + 114) = 0;
  *(v4 + 32) = 2;
  memset_pattern16((v4 + 128), &unk_21C2A3F50, 0x60uLL);
  return this;
}

unsigned __int8 *C3D::RenderPass::setStates(unsigned __int8 *result, void *a2)
{
  v2 = *a2;
  v3 = result[112];
  **a2 = result[112] != 0;
  if (v3)
  {
    v4 = *(v2 + 1);
    v5 = *(&xmmword_21C2816A0 + v4);
    if (v4 != v5)
    {
      *(v2 + 1) = v5;
      v2[40] = 1;
      v4 = v5;
    }

    v6 = *(&xmmword_21C2816A0 + result[113]);
  }

  else
  {
    v6 = result[113];
    v4 = *(v2 + 1);
  }

  if (v4 != v6)
  {
    *(v2 + 1) = v6;
    v2[40] = 1;
  }

  if ((v2[74] & 1) == 0)
  {
    v7 = result[114];
    if (*(v2 + 3) != v7)
    {
      *(v2 + 3) = v7;
      v2[42] = 1;
    }
  }

  v8 = result[115];
  if (*(v2 + 4) != v8)
  {
    *(v2 + 4) = v8;
    v2[43] = 1;
  }

  if ((v2[73] & 1) == 0)
  {
    v9 = result[116];
    if (*(v2 + 2) != v9)
    {
      *(v2 + 2) = v9;
      v2[41] = 1;
    }
  }

  return result;
}

unint64_t C3D::RenderPass::programHashCodeStoreKey(C3D::RenderPass *this)
{
  v2 = (*(*this + 72))(this);
  v3 = strlen(v2);
  v4 = (0xC6A4A7935BD1E995 * v3) ^ *(this + 117);
  if (v3 >= 8)
  {
    v5 = v3 >> 3;
    v6 = &v2[8 * v5];
    v7 = 8 * v5;
    do
    {
      v8 = *v2;
      v2 += 8;
      v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v8) ^ ((0xC6A4A7935BD1E995 * v8) >> 47))) ^ v4);
      v7 -= 8;
    }

    while (v7);
    v2 = v6;
  }

  v9 = v3 & 7;
  if (v9 > 3)
  {
    if ((v3 & 7) > 5)
    {
      if (v9 != 6)
      {
        v4 ^= *(v2 + 6) << 48;
      }

      v4 ^= *(v2 + 5) << 40;
    }

    else if (v9 == 4)
    {
      goto LABEL_18;
    }

    v4 ^= *(v2 + 4) << 32;
LABEL_18:
    v4 ^= *(v2 + 3) << 24;
LABEL_19:
    v4 ^= *(v2 + 2) << 16;
    goto LABEL_20;
  }

  if ((v3 & 7) <= 1)
  {
    if ((v3 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47);
    }

    goto LABEL_21;
  }

  if (v9 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v4 ^= *(v2 + 1) << 8;
LABEL_21:
  v4 = 0xC6A4A7935BD1E995 * (v4 ^ *v2);
  return (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47);
}

unint64_t C3D::RenderPass::hashName(C3D::RenderPass *this)
{
  v2 = C3D::Pass::hashName(this);
  if (C3D::PassDescriptor::outputCount((this + 32)))
  {
    v3 = 0;
    do
    {
      v4 = C3D::PassDescriptor::outputAtIndex((this + 32), v3);
      if (*v4 == 1 && *(v4 + 65) != 255)
      {
        v5 = *(v4 + 31);
        v6 = 0xC6A4A7935BD1E995 * (v2 ^ 0x8D494F26B7A3D32ALL ^ *(v4 + 28));
        v2 = (0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) >> 47);
        if (v5 >= 2)
        {
          v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v2 ^ v5 ^ 0xC6A4A7935BD1E995)) ^ ((0xC6A4A7935BD1E995 * (v2 ^ v5 ^ 0xC6A4A7935BD1E995)) >> 47));
          v2 = v7 ^ (v7 >> 47);
        }
      }

      ++v3;
    }

    while (v3 < C3D::PassDescriptor::outputCount((this + 32)));
  }

  return v2;
}

double skipSpaceAndLineEnd(std::string *__str, uint64_t a2, int a3)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v6 = size;
  v7 = 0;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = __str->__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v8 = __str;
    }

    while (1)
    {
      v9 = v8->__r_.__value_.__s.__data_[v7];
      v10 = v9 == 10 || v9 == 13;
      if (!v10 && v9 > 32)
      {
        break;
      }

      if (size == ++v7)
      {
LABEL_21:
        v7 = size;
        goto LABEL_22;
      }
    }
  }

  if (v7 < size && a3 != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v12 = __str;
    }

    while (v12->__r_.__value_.__s.__data_[v7] == 44)
    {
      if (size == ++v7)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  std::string::basic_string(&v14, __str, v7, size - v7, &v15);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v14.__r_.__value_.__l.__data_;
  *a2 = v14;
  return result;
}

double getLineContent(std::string *a1, std::string *a2, std::string *a3, char a4, int a5)
{
  skipSpaceAndLineEnd(a1, a2, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v12 = v11 + size;
  v13 = v11;
  if (size >= 1)
  {
    do
    {
      v14 = v13->__r_.__value_.__s.__data_[0];
      if (v14 == 10 || v14 == 13)
      {
        break;
      }

      v16 = v14 < 33 ? a4 : 0;
      v17 = v14 == 44 ? a5 : 0;
      if (v16)
      {
        break;
      }

      if (v17)
      {
        break;
      }

      v13 = (v13 + 1);
    }

    while (v13 < v12);
  }

  std::string::assign(a3, a1, 0, v13 - v11);
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::assign(a2, a1, v13 - v18, v12 - v13);

  return skipSpaceAndLineEnd(a2, a2, a5);
}

float getFloat(std::string *a1, std::string *a2, float *a3, char a4, int a5)
{
  memset(&v18, 0, sizeof(v18));
  getLineContent(a1, a2, &v18, a4, a5);
  size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      getFloat(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = v18.__r_.__value_.__r.__words[0];
    v17 = atof(v18.__r_.__value_.__l.__data_);
    *a3 = v17;
    operator delete(v16);
  }

  else
  {
    result = atof(&v18);
    *a3 = result;
  }

  return result;
}

void sub_21C192990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getInt(std::string *a1, std::string *a2, int *a3, char a4, int a5)
{
  memset(&v16, 0, sizeof(v16));
  getLineContent(a1, a2, &v16, a4, a5);
  size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      getFloat(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v15 = v16.__r_.__value_.__r.__words[0];
    *a3 = atoi(v16.__r_.__value_.__l.__data_);
    operator delete(v15);
  }

  else
  {
    *a3 = atoi(&v16);
  }
}

void sub_21C192A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3DIESInfoLoadFromString(_BYTE *__src, size_t __n, _OWORD *a3, int a4)
{
  if (__n < 5)
  {
    return 0;
  }

  if (a4)
  {
    if (*__src != 1314080073 || __src[4] != 65)
    {
      return 0;
    }
  }

  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __n;
  memcpy(&__dst, __src, __n);
  __dst.__r_.__value_.__s.__data_[__n] = 0;
  memset(&__str, 0, sizeof(__str));
  memset(&v71, 0, sizeof(v71));
  getLineContent(&__dst, &__str, &v71, 0, 0);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v71.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_149;
  }

  if ((*(&v71.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 7)
    {
      if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 16)
      {
LABEL_45:
        v11 = &v71;
        goto LABEL_53;
      }

      if (v71.__r_.__value_.__r.__words[0] != 0x4D4C3A414E534549 || v71.__r_.__value_.__l.__size_ != 0x353939312D33362DLL)
      {
        if (v71.__r_.__value_.__r.__words[0] != 0x4D4C3A414E534549 || v71.__r_.__value_.__l.__size_ != 0x323030322D33362DLL)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    if (LODWORD(v71.__r_.__value_.__l.__data_) != 1314080073 || *(v71.__r_.__value_.__r.__words + 3) != 825835854)
    {
      goto LABEL_45;
    }

LABEL_52:
    v11 = "IESNA91";
    goto LABEL_53;
  }

  v11 = v71.__r_.__value_.__r.__words[0];
  if (v71.__r_.__value_.__l.__size_ == 7)
  {
    if (*v71.__r_.__value_.__l.__data_ != 1314080073 || *(v71.__r_.__value_.__r.__words[0] + 3) != 825835854)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (v71.__r_.__value_.__l.__size_ == 16)
  {
    if (*v71.__r_.__value_.__l.__data_ != 0x4D4C3A414E534549 || *(v71.__r_.__value_.__r.__words[0] + 8) != 0x353939312D33362DLL)
    {
      if (*v71.__r_.__value_.__l.__data_ != 0x4D4C3A414E534549 || *(v71.__r_.__value_.__r.__words[0] + 8) != 0x323030322D33362DLL)
      {
        goto LABEL_53;
      }

LABEL_40:
      v11 = "IESNA:LM-63-2002";
      goto LABEL_53;
    }

LABEL_46:
    v11 = "IESNA:LM-63-1995";
  }

LABEL_53:
  *&v69 = v11;
  while (1)
  {
    v16 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = __str.__r_.__value_.__l.__size_;
    }

    if (!v16)
    {
      break;
    }

    memset(&__p, 0, sizeof(__p));
    getLineContent(&__str, &__str, &__p, 0, 0);
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ >= 9)
      {
        v18 = 9;
      }

      else
      {
        v18 = __p.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 9)
      {
        v18 = 9;
      }

      else
      {
        v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      p_p = &__p;
    }

    v20 = memcmp(p_p, "TILT=NONE", v18);
    v21 = v18 >= 9 && v20 == 0;
    if (!v21 && ((v17 & 0x80000000) != 0 ? ((v23 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_ >= 0xA) ? (v22 = 10) : (v22 = __p.__r_.__value_.__l.__size_)) : (v17 >= 0xA ? (v22 = 10) : (v22 = v17), v23 = &__p), ((v24 = memcmp(v23, "TILT= NONE", v22), v22 < 0xA) || v24) && ((v17 & 0x80000000) != 0 ? ((v26 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_ >= 0xA) ? (v25 = 10) : (v25 = __p.__r_.__value_.__l.__size_)) : (v17 >= 0xA ? (v25 = 10) : (v25 = v17), v26 = &__p), ((v27 = memcmp(v26, "TILT =NONE", v25), v25 < 0xA) || v27) && ((v17 & 0x80000000) != 0 ? ((v29 = __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_ >= 0xB) ? (v28 = 11) : (v28 = __p.__r_.__value_.__l.__size_)) : (v17 >= 0xB ? (v28 = 11) : (v28 = v17), v29 = &__p), (v30 = memcmp(v29, "TILT = NONE", v28), v28 < 0xB) || v30))))
    {
      if ((v17 & 0x80000000) != 0)
      {
        v33 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ >= 5)
        {
          v32 = 5;
        }

        else
        {
          v32 = __p.__r_.__value_.__l.__size_;
        }
      }

      else
      {
        if (v17 >= 5)
        {
          v32 = 5;
        }

        else
        {
          v32 = v17;
        }

        v33 = &__p;
      }

      v34 = memcmp(v33, "TILT=", v32);
      if (v32 < 5 || v34)
      {
        if ((v17 & 0x80000000) != 0)
        {
          v36 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ >= 5)
          {
            v35 = 5;
          }

          else
          {
            v35 = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          if (v17 >= 5)
          {
            v35 = 5;
          }

          else
          {
            v35 = v17;
          }

          v36 = &__p;
        }

        v37 = memcmp(v36, "TILT =", v35);
        v31 = v35 > 4 && v37 == 0;
      }

      else
      {
        v31 = 1;
      }
    }

    else
    {
      v31 = 3;
    }

    if ((v17 & 0x80000000) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v31)
      {
LABEL_130:
        if (v31 != 3)
        {
          goto LABEL_149;
        }

        break;
      }
    }

    else if (v31)
    {
      goto LABEL_130;
    }
  }

  getFloat(&__str, &__str, &v64, 1, 0);
  v7 = 0;
  if (*&v64 < 0.0 || *&v64 > 32767.0)
  {
    goto LABEL_150;
  }

  getFloat(&__str, &__str, &v64 + 1, 1, 0);
  if (*(&v64 + 1) < 0.0)
  {
    goto LABEL_149;
  }

  getFloat(&__str, &__str, &v64 + 2, 1, 0);
  if (*(&v64 + 2) < 0.0)
  {
    goto LABEL_149;
  }

  getInt(&__str, &__str, &count[1], 1, 0);
  if (LODWORD(count[1]) >> 15)
  {
    goto LABEL_149;
  }

  getInt(&__str, &__str, &v66[1], 1, 0);
  if (LODWORD(v66[1]) >> 15)
  {
    goto LABEL_149;
  }

  getInt(&__str, &__str, &v65 + 2, 1, 0);
  getInt(&__str, &__str, &v65 + 3, 1, 0);
  getFloat(&__str, &__str, &v69 + 2, 1, 0);
  getFloat(&__str, &__str, &v69 + 3, 1, 0);
  getFloat(&__str, &__str, &v70, 1, 0);
  getFloat(&__str, &__str, &v70 + 1, 1, 0);
  getFloat(&__str, &__str, &v70 + 2, 1, 0);
  getFloat(&__str, &__str, &v70 + 3, 1, 0);
  v39 = count[1];
  v40 = malloc_type_calloc(SLODWORD(count[1]), 4uLL, 0x100004052888210uLL);
  count[0] = v40;
  v41 = SLODWORD(v66[1]);
  v42 = malloc_type_calloc(SLODWORD(v66[1]), 4uLL, 0x100004052888210uLL);
  v43 = v39;
  v66[0] = v42;
  if (v39 < 1)
  {
    v46 = -8388609;
LABEL_143:
    if (v41 < 1)
    {
      data = -8388609;
LABEL_158:
      LODWORD(v65) = data;
      DWORD2(v68) = v41 * v43;
      v51 = malloc_type_calloc(v41 * v43, 4uLL, 0x100004052888210uLL);
      *&v68 = v51;
      v52 = *(&v64 + 2);
      if (v41 < 1)
      {
        v55 = 0.0;
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0.0;
        do
        {
          v56 = v43;
          if (v43 >= 1)
          {
            do
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 0;
              getFloat(&__str, &__str, &__p, 1, 1);
              v57 = *&__p.__r_.__value_.__l.__data_;
              v51[v54++] = *&__p.__r_.__value_.__l.__data_ * v52;
              if (v57 >= v55)
              {
                v55 = v57;
              }

              --v56;
            }

            while (v56);
          }

          ++v53;
        }

        while (v53 != v41);
      }

      *(&v64 + 3) = v55 * v52;
      DWORD1(v65) = v46;
      skipSpaceAndLineEnd(&__str, &__str, 0);
      v58 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v58 = __str.__r_.__value_.__l.__size_;
      }

      if (v58)
      {
        memset(&__p, 0, sizeof(__p));
        getLineContent(&__str, &__str, &__p, 1, 0);
        if (std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "END"))
        {
          skipSpaceAndLineEnd(&__str, &__str, 0);
        }

        v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v59 = __str.__r_.__value_.__l.__size_;
        }

        if (v59)
        {
          free(v40);
          free(v42);
          free(v51);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_149;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v60 = v69;
      a3[4] = v68;
      a3[5] = v60;
      a3[6] = v70;
      v61 = v65;
      *a3 = v64;
      a3[1] = v61;
      v62 = *count;
      a3[2] = *v66;
      a3[3] = v62;
      v7 = 1;
      goto LABEL_150;
    }

    v47 = 0;
    v48 = -3.4028e38;
    while (1)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      getFloat(&__str, &__str, &__p, 1, 1);
      data = __p.__r_.__value_.__l.__data_;
      if (*&__p.__r_.__value_.__l.__data_ < v48)
      {
        break;
      }

      *&v42[v47] = __p.__r_.__value_.__l.__data_;
      v47 += 4;
      v48 = *&data;
      if (4 * v41 == v47)
      {
        goto LABEL_158;
      }
    }
  }

  else
  {
    v44 = 0;
    v45 = -3.4028e38;
    while (1)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      getFloat(&__str, &__str, &__p, 1, 1);
      v46 = __p.__r_.__value_.__l.__data_;
      if (*&__p.__r_.__value_.__l.__data_ < v45)
      {
        break;
      }

      *&v40[v44] = __p.__r_.__value_.__l.__data_;
      v44 += 4;
      v45 = *&v46;
      if (4 * v43 == v44)
      {
        goto LABEL_143;
      }
    }
  }

  free(v40);
  free(v42);
LABEL_149:
  v7 = 0;
LABEL_150:
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_21C1933A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3DIESInfoLoad(void *a1, _OWORD *a2)
{
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  result = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a1];
  if (result)
  {
    v5 = result;
    v6 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "path")];
    v7 = [v5 bytes];
    v8 = [v5 length];

    return C3DIESInfoLoadFromString(v7, v8, a2, v6 ^ 1u);
  }

  return result;
}

void computeFilterPos(float a1, float *a2, int a3)
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  if (a3 <= 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      computeFilterPos(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*a2 <= a1)
  {
    v14 = a3 - 1;
    if (a2[v14] >= a1)
    {
      v15 = 0;
      if (a3 != 1)
      {
        do
        {
          v16 = (v15 + v14 + 1) >> 1;
          if (a2[v16] <= a1)
          {
            if (v15 == v16)
            {
              v19 = scn_default_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
              {
                computeFilterPos(buf, v23, v19);
              }
            }

            else
            {
              v15 = (v15 + v14 + 1) >> 1;
            }
          }

          else
          {
            v17 = v16 - 1;
            if (v14 == v17)
            {
              v18 = scn_default_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
              {
                computeFilterPos(v20, &v21, v18);
              }
            }

            else
            {
              v14 = v17;
            }
          }
        }

        while (v15 < v14);
      }
    }
  }
}

float getCandelaValue(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = v4 - 1;
  if (v4 - 1 >= a2)
  {
    v6 = a2;
  }

  v7 = v6 & ~(v6 >> 31);
  v8 = v5 - 1;
  if (v5 - 1 >= a3)
  {
    v8 = a3;
  }

  v9 = v8 & ~(v8 >> 31);
  if (v7 >= v4)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      getCandelaValue(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (v9 >= v5)
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      getCandelaValue(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  return *(*(a1 + 64) + 4 * (v9 + v7 * v5));
}

float interpolateBicubic(uint64_t a1, float a2, float a3)
{
  v4 = vcvtms_s32_f32(a2);
  v5 = vcvtms_s32_f32(a3);
  v6 = a2 - floorf(a2);
  v36 = a3 - floorf(a3);
  CandelaValue = getCandelaValue(a1, v4 - 1, v5 - 1);
  v41 = getCandelaValue(a1, v4, v5 - 1);
  v37 = getCandelaValue(a1, v4 + 1, v5 - 1);
  v7 = getCandelaValue(a1, v4 + 2, v5 - 1);
  v8.i64[0] = __PAIR64__(LODWORD(v41), LODWORD(CandelaValue));
  v8.i64[1] = __PAIR64__(LODWORD(v7), LODWORD(v37));
  v45 = v8;
  v42 = getCandelaValue(a1, v4 - 1, v5);
  v38 = getCandelaValue(a1, v4, v5);
  v33 = getCandelaValue(a1, v4 + 1, v5);
  v9 = getCandelaValue(a1, v4 + 2, v5);
  v10.i64[0] = __PAIR64__(LODWORD(v38), LODWORD(v42));
  v10.i64[1] = __PAIR64__(LODWORD(v9), LODWORD(v33));
  v43 = v10;
  v39 = getCandelaValue(a1, v4 - 1, v5 + 1);
  v34 = getCandelaValue(a1, v4, v5 + 1);
  v31 = getCandelaValue(a1, v4 + 1, v5 + 1);
  v11 = getCandelaValue(a1, v4 + 2, v5 + 1);
  v12.i64[0] = __PAIR64__(LODWORD(v34), LODWORD(v39));
  v12.i64[1] = __PAIR64__(LODWORD(v11), LODWORD(v31));
  v40 = v12;
  v35 = getCandelaValue(a1, v4 - 1, v5 + 2);
  v32 = getCandelaValue(a1, v4, v5 + 2);
  v30 = getCandelaValue(a1, v4 + 1, v5 + 2);
  v13 = getCandelaValue(a1, v4 + 2, v5 + 2);
  v14.i64[0] = __PAIR64__(LODWORD(v32), LODWORD(v35));
  v14.i64[1] = __PAIR64__(LODWORD(v13), LODWORD(v30));
  _Q5 = v14;
  __asm { FMOV            V0.4S, #3.0 }

  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  __asm { FMOV            V2.4S, #-3.0 }

  v22 = vmlaq_f32(vmlaq_f32(vmlsq_f32(vmulq_f32(vmulq_f32(v43, _Q0), v14), v14, v45), v14, vmulq_f32(v40, _Q2)), v14, _Q5);
  __asm { FMOV            V2.4S, #5.0 }

  _Q6 = vmlaq_n_f32(v43, vmlaq_n_f32(vmulq_f32(vsubq_f32(v40, v45), v14), vmlaq_n_f32(vaddq_f32(v40, vaddq_f32(v40, vmlsq_f32(v45, v14, vmlaq_f32(_Q5, _Q2, v43)))), v22, v36), v36), v36);
  _S4 = 3.0;
  __asm { FMLA            S3, S4, V6.S[1] }

  _S4 = -3.0;
  __asm { FMLA            S3, S4, V6.S[2] }

  _Q5.i32[0] = 5.0;
  __asm { FMLA            S2, S5, V6.S[1] }

  return _Q6.f32[1] + ((((_Q6.f32[2] - _Q6.f32[0]) * 0.5) + (((_Q6.f32[2] + (_Q6.f32[2] + (_Q6.f32[0] - (_Q2.f32[0] * 0.5)))) + (((_Q6.f32[3] + _S3) * 0.5) * v6)) * v6)) * v6);
}

uint64_t C3DIESInfoGenerateTexture2D(_BOOL8 a1, int32x4_t *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6)
{
  v10 = a2;
  v11 = a1;
  v92 = *MEMORY[0x277D85DE8];
  if (!a2 && (v12 = scn_default_log(), a1 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    C3DMeshSourceCreateWithData_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    if (a3)
    {
LABEL_4:
      if (a4)
      {
        goto LABEL_7;
      }
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  v20 = scn_default_log();
  a1 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    C3DIESInfoGenerateTexture2D_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_7:
  if (a5 != 1 && a5 != 4)
  {
    v28 = scn_default_log();
    a1 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DIESInfoGenerateTexture2D_cold_3(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  if (a6 > 4 || ((1 << a6) & 0x16) == 0)
  {
    v36 = scn_default_log();
    a1 = os_log_type_enabled(v36, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DIESInfoGenerateTexture2D_cold_4(v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }

  v44 = *(v11 + 12);
  v45 = MEMORY[0x28223BE20](a1);
  v48 = &v85[-v47];
  if (a3)
  {
    v49 = 0;
    v50 = v46 / 180.0;
    do
    {
      v51 = acosf(((v49 * -2.0) * (1.0 / a3)) + 1.0) / 3.14159265 * 180.0;
      computeFilterPos(v50 * v51, *(v11 + 48), *(v11 + 56));
      v48[v49++] = v52;
    }

    while (a3 != v49);
  }

  MEMORY[0x28223BE20](v45);
  v54 = &v85[-v53];
  if (a4)
  {
    v87 = v48;
    v88 = a3;
    v55 = 0;
    v56 = 1.0 / v44;
    do
    {
      computeFilterPos(((1.0 / a4) * v55) * 180.0, *(v11 + 32), *(v11 + 40));
      *&v54[4 * v55++] = v57;
    }

    while (a4 != v55);
    v58 = 0;
    v59 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v91 = _Q0;
    v65 = v10;
    v66 = v10;
    v89 = a3;
    do
    {
      v90 = v58;
      if (a3)
      {
        v86 = v59;
        v67 = *&v54[4 * v58];
        v69 = v87;
        for (i = v88; i; --i)
        {
          v70 = v56 * interpolateBicubic(v11, v67, *v69);
          switch(a6)
          {
            case 1u:
              v80 = ((v70 * 255.0) + 0.5);
              if (a5 == 4)
              {
                v65->i8[0] = v80;
                v65->i8[1] = v80;
                v65->i8[2] = v80;
                v65->i8[3] = -1;
                v65 = (v65 + 4);
              }

              else
              {
                if (a5 != 1)
                {
LABEL_52:
                  v83 = v86;
                  return v83 & 1;
                }

                v65->i8[0] = v80;
                v65 = (v65 + 1);
              }

              break;
            case 2u:
              v71 = HIWORD(LODWORD(v70)) & 0x8000;
              v72 = (LODWORD(v70) >> 23);
              v73 = v72 - 112;
              v74 = v72 - 113;
              v75 = v71 | 0x7BFF;
              if ((LODWORD(v70) & 0x7FFFFF) != 0)
              {
                LOWORD(v76) = v71 + 1;
              }

              else
              {
                v76 = HIWORD(LODWORD(v70)) & 0x8000;
              }

              v77 = v76 | 0x7C00;
              if (v72 == 255)
              {
                v75 = v77;
              }

              if (v72 >= 0x71)
              {
                v78 = v75;
              }

              else
              {
                v78 = HIWORD(v70) & 0x8000;
              }

              v79 = HIWORD(LODWORD(v70)) & 0x8000 | (LODWORD(v70) >> 13) & 0x3FF | (v73 << 10);
              if (v74 > 0x1D)
              {
                LOWORD(v79) = v78;
              }

              if (a5 == 4)
              {
                v10->i16[0] = v79;
                v10->i16[1] = v79;
                v10->i16[2] = v79;
                v10->i16[3] = -1;
                v10 = (v10 + 8);
              }

              else
              {
                if (a5 != 1)
                {
                  goto LABEL_52;
                }

                v10->i16[0] = v79;
                v10 = (v10 + 2);
              }

              break;
            case 4u:
              if (a5 == 4)
              {
                v81 = v91;
                *v81.i32 = v70;
                v82 = vzip1q_s32(v81, v81);
                *&v82.i32[2] = v70;
                *v66++ = v82;
              }

              else
              {
                if (a5 != 1)
                {
                  goto LABEL_52;
                }

                *v66->i32 = v70;
                v66 = (v66 + 4);
              }

              break;
            default:
              goto LABEL_52;
          }

          ++v69;
        }
      }

      LODWORD(a3) = v89;
      v58 = v90 + 1;
      v59 = v90 + 1 >= a4;
    }

    while (v90 + 1 != a4);
  }

  v83 = 1;
  return v83 & 1;
}

void C3DIESInfoDestroy(void **a1)
{
  free(a1[4]);
  a1[4] = 0;
  free(a1[6]);
  a1[6] = 0;
  free(a1[8]);
  a1[8] = 0;
}

void _C3DAnimationEventsCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = *(*(a1 + 16) + v4);
      if (v5)
      {
        _Block_release(v5);
        v2 = *(a1 + 32);
      }

      ++v3;
      v4 += 16;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 16);
  if (v6)
  {

    free(v6);
  }
}

CFStringRef _C3DAnimationEventsCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAnimationEvents>");
}

CFStringRef _C3DAnimationEventsCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAnimationEvents>");
}

uint64_t __C3DAnimationEventsGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DAnimationEventsGetTypeID_typeID = result;
  return result;
}

uint64_t C3DAnimationEventsCreateWithEventCount(size_t a1)
{
  if (C3DAnimationEventsGetTypeID_onceToken != -1)
  {
    C3DAnimationEventsCreateWithEventCount_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationEventsGetTypeID_typeID, 24);
  *(Instance + 16) = malloc_type_calloc(0x10uLL, a1, 0x2DD58A0DuLL);
  *(Instance + 24) = a1;
  return Instance;
}

void *C3DAnimationEventsAddEvent(void *a1, void *aBlock, double a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a1[4] >= a1[3])
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  *(a1[2] + 16 * a1[4]) = a3;
  result = _Block_copy(aBlock);
  v23 = a1[4];
  *(a1[2] + 16 * v23 + 8) = result;
  a1[4] = v23 + 1;
  return result;
}

void C3DAnimationEventsTriggerEventsWithTimeChanges(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6, double a7)
{
  if (!a2)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a3 == a4)
  {
    if (!a4)
    {
      if (a7 >= a6)
      {
        v28 = a1;
        v29 = a2;
        v30 = a6;
        goto LABEL_17;
      }

      v25 = 1.0;
      v23 = a1;
      v24 = a2;
      v22 = a6;
      v26 = 0;
LABEL_13:
      _C3DAnimationEventsTriggerEventsWithTimeChanges(v23, v24, v26, a5, v22, v25);
      v30 = 0.0;
      v28 = a1;
      v29 = a2;
LABEL_17:
      v27 = a7;
      goto LABEL_18;
    }

    if (a6 < a7)
    {
      _C3DAnimationEventsTriggerEventsWithTimeChanges(a1, a2, 0, a5, 0.0, a6);
      v27 = 1.0;
      v28 = a1;
      v29 = a2;
      v30 = a7;
LABEL_18:
      v31 = 0;
      goto LABEL_19;
    }

    v28 = a1;
    v29 = a2;
    v30 = a7;
    v27 = a6;
  }

  else
  {
    if (a3)
    {
      v22 = 0.0;
      v23 = a1;
      v24 = a2;
      v25 = a6;
      v26 = 1;
      goto LABEL_13;
    }

    _C3DAnimationEventsTriggerEventsWithTimeChanges(a1, a2, 0, a5, a6, 1.0);
    v27 = 1.0;
    v28 = a1;
    v29 = a2;
    v30 = a7;
  }

  v31 = 1;
LABEL_19:
  _C3DAnimationEventsTriggerEventsWithTimeChanges(v28, v29, v31, a5, v30, v27);
}

void _C3DAnimationEventsTriggerEventsWithTimeChanges(void *a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  *&v35[5] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a5 > a6)
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationEventsTriggerEventsWithTimeChanges_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (a5 != a6)
  {
    EventIndexForTime = _C3DAnimationEventGetEventIndexForTime(a2, a3, a5);
    v29 = _C3DAnimationEventGetEventIndexForTime(a2, a3, a6);
    v30 = EventIndexForTime & ~(EventIndexForTime >> 63);
    v31 = v29 >= *(a2 + 32) ? *(a2 + 32) : v29;
    if (v30 < v31)
    {
      v32 = (16 * v30) | 8;
      do
      {
        if (*(a2 + 32) <= v30)
        {
          v33 = scn_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            _C3DAnimationEventsTriggerEventsWithTimeChanges_cold_3(v34, v35, v33);
          }
        }

        C3DAnimationManagerPushEvent(a1, *(*(a2 + 16) + v32), a4, a3);
        ++v30;
        v32 += 16;
      }

      while (v31 != v30);
    }
  }
}

uint64_t C3DAnimationEventsGetCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

uint64_t C3DAnimationEventsGetEventBlockAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 16) + 16 * a2 + 8);
}

double C3DAnimationEventsGetEventTimeAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 16) + 16 * a2);
}

uint64_t _C3DAnimationEventGetEventIndexForTime(uint64_t a1, int a2, double a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationEventsAddEvent_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  if (v14 < 2)
  {
    v16 = 0;
    result = 1;
  }

  else
  {
    v16 = 0;
    do
    {
      if (*(v15 + 16 * (v16 + (v14 - v16) * 0.5)) > a3)
      {
        v14 = (v16 + (v14 - v16) * 0.5);
      }

      else
      {
        v16 = (v16 + (v14 - v16) * 0.5);
      }

      result = v16 + 1;
    }

    while (v14 > v16 + 1);
  }

  v18 = *(v15 + 16 * v16);
  if (v18 >= a3)
  {
    v19 = a3 != 1.0;
    if (v18 != a3)
    {
      v19 = 1;
    }

    if (v19 | a2)
    {
      return v16;
    }
  }

  return result;
}

uint64_t C3DParticleEmitStandard(uint64_t a1, float *a2, double a3, float a4)
{
  v39 = *MEMORY[0x277D85DE8];
  System = C3DParticleSystemInstanceGetSystem(a1);
  BirthRate = C3DParticleSystemGetBirthRate(System);
  BirthRateVariation = C3DParticleSystemGetBirthRateVariation(System);
  if (BirthRateVariation != 0.0)
  {
    v11 = 214013 * *(a1 + 1116) + 2531011;
    *(a1 + 1116) = v11;
    BirthRate = BirthRate + (((HIWORD(v11) * 0.000015259) + -0.5) * BirthRateVariation);
  }

  if (*a2 > 0.0)
  {
    BirthRate = BirthRate * (a4 / *a2);
  }

  v12 = BirthRate + a2[3];
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v13 = v12;
  a2[3] = v12 - v12;
  v14 = *(a1 + 1104);
  result = C3DParticleSystemInstanceCheckParticlesCount(a1, v14 + v13);
  if (result)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    memcpy(__dst, (a1 + 80), 0x404uLL);
    v17 = *(a1 + 48);
    v33 = *(a1 + 40);
    v18 = *(a1 + 64);
    v32 = *(a1 + 56);
    *v30 = v17;
    v34 = *(a1 + 1152);
    v35 = *(a1 + 1168);
    v31 = v18;
    v19 = *(a1 + 1116);
    v36 = v19;
    *&__dst[257] = a4;
    *&v20 = a3 - *(a1 + 72);
    __dst[259] = v20;
    if (C3DParticleSystemGetIsLocal(v17))
    {
      v21 = 0;
    }

    else
    {
      v21 = a2 + 8;
      v38 = a2 + 24;
    }

    v37 = v21;
    v22 = *(a1 + 1056);
    if (v22)
    {
      for (i = 0; i < v22; ++i)
      {
        v24 = *(a1 + 800 + 8 * i);
        if (v24)
        {
          v24(__dst, v14, (v14 + v13));
          v22 = *(a1 + 1056);
        }
      }

      v19 = v36;
      v17 = *v30;
    }

    *(a1 + 1116) = v19;
    theArray = 0;
    result = C3DParticleSystemGetEventBlock(v17, 0, &theArray);
    if (result)
    {
      v25 = result;
      memset(v28, 0, sizeof(v28));
      memset(v27, 0, sizeof(v27));
      C3DParticleSystemInstanceFillUserData(*v30, __dst, theArray, v28, v27, v14);
      result = (*(v25 + 16))(v25, v28, v27, 0, v13);
    }

    *(a1 + 1104) = v14 + v13;
  }

  return result;
}

void C3DParticleEmitTrail(uint64_t a1, float32x4_t *a2, double a3, float a4)
{
  System = C3DParticleSystemInstanceGetSystem(a1);
  v33 = a2[4];
  v34 = a2[5];
  C3DParticleSystemGetIsLocal(System);
  v9 = vsubq_f32(a2[9], v34);
  v10 = vmulq_f32(v9, v9);
  if ((v10.f32[2] + vaddv_f32(*v10.f32)) >= 0.0001)
  {
    v11 = *(a1 + 1104);
    v12 = (v11 + 1);
    if (C3DParticleSystemInstanceCheckParticlesCount(a1, v11 + 1))
    {
      v14 = *(a1 + 336);
      v13 = *(a1 + 344);
      v16 = *(a1 + 352);
      v15 = *(a1 + 360);
      v17 = *(a1 + 368);
      ParticleLifeSpan = C3DParticleSystemGetParticleLifeSpan(System);
      ParticleLifeSpanVariation = C3DParticleSystemGetParticleLifeSpanVariation(System);
      if (ParticleLifeSpanVariation != 0.0)
      {
        v20 = 214013 * *(a1 + 1116) + 2531011;
        *(a1 + 1116) = v20;
        ParticleLifeSpan = ParticleLifeSpan + (((HIWORD(v20) * 0.000015259) + -0.5) * ParticleLifeSpanVariation);
      }

      v21 = *(a1 + 1104);
      v22 = v34;
      if (v21 < v12)
      {
        v23 = vmulq_f32(v33, v33);
        *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
        *v23.f32 = vrsqrte_f32(v24);
        *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
        v25 = vmulq_n_f32(v33, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
        v22.i32[3] = 0;
        v25.i32[3] = 0;
        v26 = a3 - *(a1 + 72);
        v27 = (v14 + 16 * v21);
        v28 = (v13 + 16 * v21);
        v29 = (v15 + 4 * v21);
        v30 = (v16 + 4 * v21);
        v31 = (v17 + 4 * v21);
        v32 = v12 - v21;
        do
        {
          *v27 = v22;
          *v28 = v25;
          if (v15)
          {
            *v29 = 1.0 / ParticleLifeSpan;
          }

          *v30 = ParticleLifeSpan;
          if (v17)
          {
            *v31 = v26;
            v26 = v26 + a4;
          }

          ++v27;
          ++v28;
          ++v29;
          ++v30;
          ++v31;
          --v32;
        }

        while (v32);
      }

      *(a1 + 1104) = v12;
    }
  }
}

void _C3DRendererElementStoreCFFinalize(void *a1)
{
  v2 = a1[2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __C3DRendererElementStoreApplyForAllRendererElements_block_invoke;
  v6[3] = &__block_descriptor_tmp_11_1;
  v6[4] = __FinalizeRendererElement;
  v6[5] = a1;
  C3DSpanAllocatorEnumerate(v2, v6);
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
    a1[2] = 0;
  }
}

uint64_t __C3DRendererElementStoreGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRendererElementStoreGetTypeID_typeID = result;
  return result;
}

void *C3DRendererElementStoreCreate()
{
  if (C3DRendererElementStoreGetTypeID_onceToken != -1)
  {
    C3DRendererElementStoreCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DRendererElementStoreGetTypeID_typeID, 24);
  Instance[3] = C3DIndexStoreCreateWithCapacity(0x7FFFFFFFLL);
  Instance[4] = C3DIndexStoreCreateWithCapacity(0x7FFFFFFFLL);
  Instance[2] = C3DSpanAllocatorCreate(80, 4096);
  return Instance;
}

void C3DRendererElementStoreSyncRendererElement(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    if ((*(a2 + 72) & 0x20) != 0)
    {
      if ((a3 & 4) != 0)
      {
        C3DIndexStoreRemoveIndexForKey(*(a1 + 24), *(a2 + 64));
      }

      if (v3)
      {
        C3DIndexStoreRemoveIndexForKey(*(a1 + 32), *(a2 + 32));
      }
    }

    _C3DRendererElementSync(a2, v3);
    if ((v3 & 4) != 0)
    {
      C3DIndexStoreAddIndexForKey(*(a1 + 24), *(a2 + 64));
    }

    if (v3)
    {
      C3DIndexStoreAddIndexForKey(*(a1 + 32), *(a2 + 32));
    }

    *(a2 + 72) |= 0x20u;
  }
}

uint64_t __C3DRendererElementStoreDeallocateSpan(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  if (!HIDWORD(a2))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __C3DRendererElementStoreDeallocateSpan_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  URL = C3DSceneSourceGetURL(a3);
  if (URL)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = ____C3DRendererElementStoreDeallocateSpan_block_invoke;
    v19[3] = &__block_descriptor_tmp_5_5;
    v20 = a2;
    v21 = v6;
    C3DSceneEnumerateEngineContexts(URL, v19);
  }

  ElementInSpanAtIndex = C3DSpanAllocatorGetElementInSpanAtIndex(*(a1 + 16), a2, 0);
  if (v6)
  {
    v17 = ElementInSpanAtIndex;
    do
    {
      __FinalizeRendererElement(v17, a1);
      v17 += 80;
      --v6;
    }

    while (v6);
  }

  return C3DSpanAllocatorDeallocateSpan(*(a1 + 16), a2);
}

unint64_t C3DRendererElementStoreAllocateSpanForNode(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a4 & 4;
  if (!a3 && (a4 & 4) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    if ((a4 & 4) == 0)
    {
      if (*(a3 + 228))
      {
        v9 = scn_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          C3DRendererElementStoreAllocateSpanForNode_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
        }
      }
    }

    Light = C3DNodeGetLight(a3);
    cf = C3DNodeGetGeometry(a3);
    if (Light)
    {
      AreaVisualisationGeometry = C3DLightGetAreaVisualisationGeometry(Light);
      v19 = 1;
      goto LABEL_13;
    }

    v19 = 0;
  }

  else
  {
    v19 = 0;
    cf = 0;
  }

  AreaVisualisationGeometry = 0;
LABEL_13:
  v20 = a4 & 2;
  if (a4)
  {
    v21 = __SpanCountForGeometryAttribute(a2, a3, cf);
  }

  else
  {
    v21 = 0;
  }

  v49 = v21;
  v47 = a4 & 2;
  v22 = v21 + (v20 >> 1) + (v8 >> 2);
  v44 = v21 + (v20 >> 1);
  if ((a4 & 8) != 0)
  {
    Geometry = C3DNodeGetGeometry(a3);
    v23 = __SpanCountForGeometryAttribute(a2, a3, Geometry) + 1;
  }

  else
  {
    v23 = 0;
  }

  v25 = v23 + v22;
  v26 = v19 ^ 1;
  if ((a4 & 0x10) == 0)
  {
    v26 = 1;
  }

  v46 = AreaVisualisationGeometry;
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v27 = __SpanCountForGeometryAttribute(a2, a3, AreaVisualisationGeometry);
    v25 = v23 + v22;
    v28 = v27;
  }

  v29 = (v28 + v25);
  v48 = a4 & 0x21;
  v45 = v25;
  if (v48 == 33)
  {
    v30 = __SpanCountForGeometryAttribute(a2, a3, cf);
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 + v29);
  if (!(v30 + v29))
  {
    return 0xFFFFFFFFLL;
  }

  RendererElementStore = C3DEnginePipelineGetRendererElementStore(a1);
  Span = C3DSpanAllocatorAllocateSpan(*(RendererElementStore + 16), v31);
  result = 0xFFFFFFFFLL;
  if (Span == 0xFFFFFFFF)
  {
    return result;
  }

  if ((a4 & 8) != 0)
  {
    if (cf)
    {
      __InitializeRendererElementsForGeometryAttribute(a2, RendererElementStore, Span, v22, cf, a3, 0);
      if (C3DNodeHasGeometryLOD(a3))
      {
        __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD(a2, RendererElementStore, a3);
      }
    }

    v35 = C3DGetScene(a3);
    RegisteredCIFilterTechniqueForNode = C3DSceneGetRegisteredCIFilterTechniqueForNode(v35, a3);
    if (!RegisteredCIFilterTechniqueForNode)
    {
      RegisteredCIFilterTechniqueForNode = C3DFXTechniqueGetNullTechnique();
    }

    __InitializeRendererElementWithNode(RendererElementStore, Span, (v22 + v23 - 1), a3, 3, 0, 0, RegisteredCIFilterTechniqueForNode, 0, 0);
  }

  if (a4)
  {
    __InitializeRendererElementsForGeometryAttribute(a2, RendererElementStore, Span, 0, cf, a3, 0);
    if (C3DNodeHasGeometryLOD(a3))
    {
      __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD(a2, RendererElementStore, a3);
    }

    v37 = CFGetTypeID(cf);
    if (v37 == C3DFloorGetTypeID())
    {
      Floor = C3DFXTechniqueCreateFloor(a2, a3);
      ElementInSpanAtIndex = C3DSpanAllocatorGetElementInSpanAtIndex(*(RendererElementStore + 16), Span, 0);
      v40 = *(ElementInSpanAtIndex + 40);
      if (v40 != Floor)
      {
        if (v40)
        {
          CFRelease(v40);
          *(ElementInSpanAtIndex + 40) = 0;
        }

        if (Floor)
        {
          v41 = CFRetain(Floor);
        }

        else
        {
          v41 = 0;
        }

        *(ElementInSpanAtIndex + 40) = v41;
      }

      CFRelease(Floor);
      _C3DRendererElementSync(ElementInSpanAtIndex, 2);
      *(ElementInSpanAtIndex + 72) |= 0x20u;
    }
  }

  if (v47)
  {
    __InitializeRendererElementWithNode(RendererElementStore, Span, v49, a3, 1, 0, 0, 0, 0, 0);
    if (!v8)
    {
LABEL_51:
      if (!v28)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else if (!v8)
  {
    goto LABEL_51;
  }

  __InitializeRendererElementWithNode(RendererElementStore, Span, v44, a3, 2, 0, 0, 0, 0, 0);
  if (v28)
  {
LABEL_52:
    __InitializeRendererElementsForGeometryAttribute(a2, RendererElementStore, Span, v45, v46, a3, 0);
  }

LABEL_53:
  if (v48 == 33)
  {
    __InitializeRendererElementsForGeometryAttribute(a2, RendererElementStore, Span, v29, cf, a3, 5);
    if (v49)
    {
      v42 = v49;
      do
      {
        v43 = C3DSpanAllocatorGetElementInSpanAtIndex(*(RendererElementStore + 16), Span, v29);
        *(v43 + 72) = *(v43 + 72) & 0xBFA7 | 0x4008;
        ++v29;
        --v42;
      }

      while (v42);
    }
  }

  return Span;
}

uint64_t __SpanCountForGeometryAttribute(uint64_t a1, uint64_t a2, __C3DGeometry *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!C3DGeometryUsesDeformerBasedDynamicMesh(a3))
  {
    if (C3DEngineContextGetRendererContextGL(a1))
    {
      MeshToRenderLegacy = _C3DNodeGetMeshToRenderLegacy(a2, a3);
    }

    else
    {
      MeshToRenderLegacy = _C3DNodeGetMeshToRender(a2, a3);
    }

    v8 = MeshToRenderLegacy;
    if (MeshToRenderLegacy)
    {
      ElementsCount = C3DMeshGetElementsCount(MeshToRenderLegacy);
      if (ElementsCount >= 1)
      {
        v10 = ElementsCount;
        v11 = 0;
        v12 = 0;
        do
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(v8, v11, 0);
          if (C3DMeshElementGetPrimitiveCount(ElementAtIndex))
          {
            ++v12;
          }

          ++v11;
        }

        while (v10 != v11);
        if (v12 && C3DGeometryOpenSubdivGPUIsActive(a3))
        {
          v14 = 0;
          v15 = 1;
          do
          {
            C3DGeometryOpenSubdivGetGPUContext(a3, 1, a1);
            v16 = v15;
            v14 += C3DGeometryOpenSubdivGetGPUHasPatchOfType(a3, v15++);
          }

          while (v16 < 6);
          v12 *= v14;
        }

        return v12;
      }
    }

    return 0;
  }

  return C3DGeometryGetMeshElementCountForDeformerBasedDynamicMesh(a3);
}

void __InitializeRendererElementsForGeometryAttribute(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, __C3DGeometry *a5, uint64_t a6, char a7)
{
  if (C3DGeometryUsesDeformerBasedDynamicMesh(a5))
  {
    MeshElementCountForDeformerBasedDynamicMesh = C3DGeometryGetMeshElementCountForDeformerBasedDynamicMesh(a5);
    if (MeshElementCountForDeformerBasedDynamicMesh)
    {
      v13 = MeshElementCountForDeformerBasedDynamicMesh;
      v14 = a4;
      do
      {
        __InitializeRendererElementWithNode(a2, a3, v14++, a6, a7, a5, 0, 0, 0, 0);
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    if (C3DEngineContextGetRendererContextGL(a1))
    {
      MeshToRenderLegacy = _C3DNodeGetMeshToRenderLegacy(a6, a5);
    }

    else
    {
      MeshToRenderLegacy = _C3DNodeGetMeshToRender(a6, a5);
    }

    v16 = MeshToRenderLegacy;
    ElementsCount = C3DMeshGetElementsCount(MeshToRenderLegacy);
    if (ElementsCount >= 1)
    {
      v18 = ElementsCount;
      v19 = 0;
      v20 = 0;
      v21 = a3;
      v22 = a4;
      v26 = ElementsCount;
      do
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(v16, v19, 0);
        if (C3DMeshElementGetPrimitiveCount(ElementAtIndex))
        {
          if (C3DGeometryOpenSubdivGPUIsActive(a5))
          {
            v24 = 1;
            do
            {
              v25 = v24;
              if (C3DGeometryOpenSubdivGetGPUHasPatchOfType(a5, v24))
              {
                a3 = a3 & 0xFFFFFFFF00000000 | v21;
                __InitializeRendererElementWithNode(a2, a3, v20 + v22, a6, a7, a5, v16, 0, v19, v24);
                ++v20;
              }

              ++v24;
            }

            while (v25 < 6);
            v18 = v26;
          }

          else
          {
            v27 = v27 & 0xFFFFFFFF00000000 | v21;
            __InitializeRendererElementWithNode(a2, v21, v20 + v22, a6, a7, a5, v16, 0, v19, 0);
            ++v20;
          }
        }

        ++v19;
      }

      while (v19 != v18);
    }
  }
}

void __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Geometry = C3DNodeGetGeometry(a3);
  if (!Geometry)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  LOD = C3DGeometryGetLOD(Geometry);
  Count = CFArrayGetCount(LOD);
  if (Count != **(a3 + 232))
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  if (Count >= 1)
  {
    v26 = 0;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(LOD, i);
      v29 = C3DLODGetEntity(ValueAtIndex);
      if (v29)
      {
        v30 = v29;
        v31 = __SpanCountForGeometryAttribute(a1, a3, v29);
        Span = C3DSpanAllocatorAllocateSpan(*(a2 + 16), v31);
        *(*(a3 + 232) + v26 + 12) = Span;
        v3 = v3 & 0xFFFFFFFF00000000 | Span;
        __InitializeRendererElementsForGeometryAttribute(a1, a2, v3, 0, v30, a3, 0);
      }

      else
      {
        *(*(a3 + 232) + v26 + 12) = 0xFFFFFFFFLL;
      }

      v26 += 12;
    }
  }
}

void __InitializeRendererElementWithNode(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5, __C3DGeometry *a6, const void *a7, const void *a8, CFIndex a9, char a10)
{
  v15 = a3;
  v17 = a9;
  v18 = a10;
  ElementInSpanAtIndex = C3DSpanAllocatorGetElementInSpanAtIndex(*(a1 + 16), a2, a3);
  *ElementInSpanAtIndex = 0u;
  *(ElementInSpanAtIndex + 16) = 0u;
  *(ElementInSpanAtIndex + 32) = 0u;
  *(ElementInSpanAtIndex + 48) = 0u;
  *(ElementInSpanAtIndex + 64) = 0u;
  _C3DRendererElementInitialize(ElementInSpanAtIndex);
  *ElementInSpanAtIndex = (a2 << 12) + (v15 + HIWORD(a2));
  v20 = *(ElementInSpanAtIndex + 72) & 0xC7F8 | ((v18 & 7) << 11);
  *(ElementInSpanAtIndex + 8) = a4;
  *(ElementInSpanAtIndex + 72) = v20 & 0xFFF8 | a5 & 7;
  v21 = *(ElementInSpanAtIndex + 16);
  if (v21 != a6)
  {
    if (v21)
    {
      CFRelease(v21);
      *(ElementInSpanAtIndex + 16) = 0;
    }

    if (a6)
    {
      v22 = CFRetain(a6);
    }

    else
    {
      v22 = 0;
    }

    *(ElementInSpanAtIndex + 16) = v22;
  }

  v23 = *(ElementInSpanAtIndex + 24);
  if (v23 != a7)
  {
    if (v23)
    {
      CFRelease(v23);
      *(ElementInSpanAtIndex + 24) = 0;
    }

    if (a7)
    {
      v24 = CFRetain(a7);
    }

    else
    {
      v24 = 0;
    }

    *(ElementInSpanAtIndex + 24) = v24;
  }

  v25 = *(ElementInSpanAtIndex + 32);
  if (v25)
  {
    CFRelease(v25);
    *(ElementInSpanAtIndex + 32) = 0;
  }

  v26 = *(ElementInSpanAtIndex + 40);
  if (v26 != a8)
  {
    if (v26)
    {
      CFRelease(v26);
      *(ElementInSpanAtIndex + 40) = 0;
    }

    if (a8)
    {
      v27 = CFRetain(a8);
    }

    else
    {
      v27 = 0;
    }

    *(ElementInSpanAtIndex + 40) = v27;
  }

  if (!a7)
  {
    if (!a6)
    {
      goto LABEL_69;
    }

    if (C3DGeometryUsesDeformerBasedDynamicMesh(a6))
    {
      v29 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &a9);
      v30 = *(ElementInSpanAtIndex + 48);
      if (v30 != v29)
      {
        if (v30)
        {
          CFRelease(v30);
          *(ElementInSpanAtIndex + 48) = 0;
        }

        if (v29)
        {
          v31 = CFRetain(v29);
        }

        else
        {
          v31 = 0;
        }

        *(ElementInSpanAtIndex + 48) = v31;
      }

      CFRelease(v29);
    }

LABEL_47:
    MaterialsCount = C3DGeometryGetMaterialsCount(a6);
    if (!MaterialsCount)
    {
      Default = C3DMaterialCreateDefault(v36);
      v44 = *(ElementInSpanAtIndex + 32);
      if (v44 != Default)
      {
        if (v44)
        {
          CFRelease(v44);
          *(ElementInSpanAtIndex + 32) = 0;
        }

        if (Default)
        {
          v45 = CFRetain(Default);
        }

        else
        {
          v45 = 0;
        }

        *(ElementInSpanAtIndex + 32) = v45;
      }

      if (Default)
      {
        CFRelease(Default);
      }

      goto LABEL_69;
    }

    v37 = MaterialsCount;
    v38 = a9;
    OverrideMaterial = C3DGeometryGetOverrideMaterial(a6);
    if (OverrideMaterial)
    {
      v40 = OverrideMaterial;
      v41 = *(ElementInSpanAtIndex + 32);
      if (v41 == v40)
      {
        goto LABEL_69;
      }

      if (v41)
      {
        CFRelease(v41);
        *(ElementInSpanAtIndex + 32) = 0;
      }

      v42 = v40;
    }

    else
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a6, v38 % v37);
      v47 = *(ElementInSpanAtIndex + 32);
      if (v47 == MaterialAtIndex)
      {
        goto LABEL_69;
      }

      if (v47)
      {
        CFRelease(v47);
        *(ElementInSpanAtIndex + 32) = 0;
      }

      if (!MaterialAtIndex)
      {
        v48 = 0;
        goto LABEL_64;
      }

      v42 = MaterialAtIndex;
    }

    v48 = CFRetain(v42);
LABEL_64:
    *(ElementInSpanAtIndex + 32) = v48;
    goto LABEL_69;
  }

  if (a6)
  {
    EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(a6);
  }

  else
  {
    EffectiveDataKindForRendering = 1;
  }

  ElementAtIndex = C3DMeshGetElementAtIndex(a7, v17, EffectiveDataKindForRendering);
  v33 = *(ElementInSpanAtIndex + 48);
  if (v33 != ElementAtIndex)
  {
    if (v33)
    {
      CFRelease(v33);
      *(ElementInSpanAtIndex + 48) = 0;
    }

    if (ElementAtIndex)
    {
      v34 = CFRetain(ElementAtIndex);
    }

    else
    {
      v34 = 0;
    }

    *(ElementInSpanAtIndex + 48) = v34;
  }

  if (a6)
  {
    goto LABEL_47;
  }

LABEL_69:
  C3DRendererElementStoreSyncRendererElement(a1, ElementInSpanAtIndex, -1);
}

void __FinalizeRendererElement(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 0x20) != 0)
  {
    C3DIndexStoreRemoveIndexForKey(*(a2 + 24), *(a1 + 64));
    C3DIndexStoreRemoveIndexForKey(*(a2 + 32), *(a1 + 32));
  }

  *(a1 + 8) = 0;

  _C3DRendererElementFinalize(a1);
}

void C3DRendererElementStoreDeallocateSpanForNode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  RendererElementStore = C3DEnginePipelineGetRendererElementStore(a1);
  if (!RendererElementStore)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  if (*(a2 + 228))
  {
    __C3DRendererElementStoreDeallocateSpan(RendererElementStore, *(a2 + 224), a1);
    *(a2 + 224) = 0xFFFFFFFFLL;
  }

  if (C3DNodeHasGeometryLOD(a2))
  {
    Geometry = C3DNodeGetGeometry(a2);
    if (Geometry)
    {
      LOD = C3DGeometryGetLOD(Geometry);
      Count = CFArrayGetCount(LOD);
      if (Count != **(a2 + 232))
      {
        v24 = scn_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          C3DRendererElementStoreDeallocateSpanForNode_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
        }
      }

      if (Count >= 1)
      {
        v32 = 0;
        v33 = *(a2 + 232);
        do
        {
          if (*(v33 + v32 + 16))
          {
            __C3DRendererElementStoreDeallocateSpan(RendererElementStore, *(v33 + v32 + 12), a1);
            v33 = *(a2 + 232);
          }

          *(v33 + v32 + 12) = 0xFFFFFFFFLL;
          v32 += 12;
          --Count;
        }

        while (Count);
      }
    }
  }
}

void C3DRendererElementStoreClear(uint64_t *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  C3DSpanAllocatorFree(a1[2]);
  C3DIndexStoreRemoveAllIndexes(a1[3]);
  C3DIndexStoreRemoveAllIndexes(a1[4]);
}

uint64_t C3DRendererElementStoreGetElementCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DSpanAllocatorGetCount(*(a1 + 16));
}

uint64_t C3DRendererElementStoreGetCapacity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DSpanAllocatorGetCapacity(*(a1 + 16));
}

uint64_t C3DRendererElementStoreGetElement(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DSpanAllocatorGetElementInSpanAtIndex(*(a1 + 16), a2, 0);
}

uint64_t C3DRendererElementStoreGetElementInSpanAtIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  if (!a1)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreDeallocateSpanForNode_cold_2(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (v6 <= a3)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStoreGetElementInSpanAtIndex_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return C3DSpanAllocatorGetElementInSpanAtIndex(*(a1 + 16), v4, a3);
}

uint64_t C3DRendererElementStoreApplyForAllRendererElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __C3DRendererElementStoreApplyForAllRendererElements_block_invoke;
  v5[3] = &__block_descriptor_tmp_11_1;
  v5[4] = a2;
  v5[5] = a3;
  return C3DSpanAllocatorEnumerate(v3, v5);
}

const void *_C3DNodeGetMeshToRenderLegacy(uint64_t a1, __C3DGeometry *a2)
{
  if (C3DNodeGetGeometry(a1) == a2)
  {

    return C3DNodeGetPresentationMeshLegacy(a1);
  }

  else
  {

    return C3DGeometryGetRenderingMesh(a2);
  }
}

__C3DGeometry *_C3DNodeGetMeshToRender(uint64_t a1, __C3DGeometry *a2)
{
  if (C3DNodeGetGeometry(a1) == a2)
  {

    return C3DNodeGetPresentationMesh(a1);
  }

  else
  {

    return C3DGeometryGetRenderingMesh(a2);
  }
}

void _C3DIndexStoreCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[8];

  free(v5);
}

CFStringRef _C3DIndexStoreCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DIndexStore>");
}

CFStringRef _C3DIndexStoreCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DIndexStore>");
}

uint64_t C3DIndexStoreGetIndexForKey(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    return *Value;
  }

  else
  {
    return -1;
  }
}

uint64_t C3DIndexStoreAddIndexForKey(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    v13 = Value;
    result = *Value;
  }

  else
  {
    v13 = C3DAllocatorNew(*(a1 + 48));
    CFDictionaryAddValue(*(a1 + 16), key, v13);
    *(v13 + 1) = 0;
    result = _getNextFreeIndex(a1);
    *v13 = result;
    ++*(a1 + 72);
  }

  ++*(v13 + 1);
  return result;
}

uint64_t _getNextFreeIndex(uint64_t a1)
{
  FirstIndex = C3DIndexSetGetFirstIndex(*(a1 + 24));
  if (FirstIndex == -1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _getNextFreeIndex_cold_1(v4);
    }
  }

  else
  {
    C3DIndexSetRemoveIndex(*(a1 + 24), FirstIndex);
    v3 = *(a1 + 32);
    if (v3 <= FirstIndex)
    {
      v3 = FirstIndex;
    }

    *(a1 + 32) = v3;
    *(a1 + 56) = 0;
  }

  return FirstIndex;
}

void C3DIndexStoreRemoveIndexForKey(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    v13 = Value;
    v14 = Value[1] - 1;
    Value[1] = v14;
    if (!v14)
    {
      v15 = *Value;
      CFDictionaryRemoveValue(*(a1 + 16), key);
      C3DAllocatorDelete(*(a1 + 48), v13, v16);
      *(a1 + 56) = 0;
      C3DIndexSetAddIndex(*(a1 + 24), v15, v17);
      if (*(a1 + 32) == v15)
      {
        LastRange = C3DIndexSetGetLastRange(*(a1 + 24));
        if (LastRange <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = LastRange;
        }

        *(a1 + 32) = v19 - 1;
      }

      ++*(a1 + 72);
    }
  }
}

CFIndex C3DIndexStoreGetCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return CFDictionaryGetCount(*(a1 + 16));
}

void C3DIndexStoreRemoveAllIndexes(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DIndexStoreGetIndexForKey_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  C3DIndexSetRemoveAllIndexes(*(a1 + 24));
  C3DIndexSetAddIndexesInRange(*(a1 + 24), 0, *(a1 + 40), v10);
  CFDictionaryRemoveAllValues(*(a1 + 16));
}

uint64_t C3DIndexStoreGetOrderedIndexForKey(uint64_t a1, void *key)
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 56) & 1) == 0)
  {
    Count = CFDictionaryGetCount(*(a1 + 16));
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
      *(a1 + 64) = 0;
    }

    if (Count >= 1)
    {
      v6 = *(a1 + 32);
      *(a1 + 64) = malloc_type_malloc(8 * v6 + 8, 0x100004000313F17uLL);
      v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(a1 + 16), v7, 0);
      qsort(v7, Count, 8uLL, _sortKeys);
      v8 = 0;
      while (1)
      {
        Value = CFDictionaryGetValue(*(a1 + 16), v7[v8]);
        if (!Value)
        {
          break;
        }

        v10 = *Value;
        if (*Value < 0 || v10 > v6)
        {
          goto LABEL_11;
        }

LABEL_13:
        *(*(a1 + 64) + 8 * v10) = v8++;
        if (Count == v8)
        {
          free(v7);
          goto LABEL_15;
        }
      }

      v10 = -1;
LABEL_11:
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3DIndexStoreGetOrderedIndexForKey_cold_1(v14, v15, v11);
      }

      goto LABEL_13;
    }

LABEL_15:
    *(a1 + 56) = 1;
  }

  result = C3DIndexStoreGetIndexForKey(a1, key);
  if (result != -1)
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      return *(v13 + 8 * result);
    }
  }

  return result;
}

uint64_t _sortKeys(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void _C3DAllocatorCFFinalize(uint64_t a1)
{
  C3DAllocatorFree(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }
}

CFStringRef _C3DAllocatorCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAllocator>");
}

CFStringRef _C3DAllocatorCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAllocator>");
}

void C3DAllocatorFree(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAllocatorNew_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 48) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a1 + 32);
      free(*(v12 + v10));
      *(v12 + v10) = 0;
      ++v11;
      v10 += 16;
    }

    while (v11 < *(a1 + 48));
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  C3DIndexSetRemoveAllIndexes(*(a1 + 40));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

void sub_21C196B70(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Unwind_Resume(a1);
}

id _pipelineDescriptorForPipelineDesc(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v21 = 0;
    v3 = [*(a1 + 120) newFunctionWithName:*(a1 + 312) constantValues:v2 error:&v21];
    if (!v3)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _pipelineDescriptorForPipelineDesc_cold_2();
      }

      return 0;
    }

    v4 = v3;
    v5 = [*(a1 + 120) newFunctionWithName:*(a1 + 320) constantValues:*(a1 + 296) error:&v21];
    if (!v5)
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _pipelineDescriptorForPipelineDesc_cold_1();
      }

LABEL_35:

      return 0;
    }
  }

  else
  {
    v7 = [*(a1 + 120) newFunctionWithName:*(a1 + 312)];
    if (!v7)
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        _pipelineDescriptorForPipelineDesc_cold_4();
      }

      return 0;
    }

    v4 = v7;
    if (!*(a1 + 320))
    {
      v8 = 0;
      goto LABEL_15;
    }

    v5 = [*(a1 + 120) newFunctionWithName:?];
    if (!v5)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        _pipelineDescriptorForPipelineDesc_cold_3();
      }

      goto LABEL_35;
    }
  }

  v8 = v5;
LABEL_15:
  v11 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v11 setVertexFunction:v4];

  [v11 setFragmentFunction:v8];
  [v11 setFragmentLinkedFunctions:*(a1 + 336)];
  [v11 setVertexLinkedFunctions:*(a1 + 328)];
  for (i = 0; i != 8; ++i)
  {
    [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
  }

  if (*(a1 + 355) == 1)
  {
    for (j = 0; j != 8; ++j)
    {
      [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
    }
  }

  v14 = *(a1 + 216);
  if (v14)
  {
    C3DApplyBlendStatesToRenderPipelineDescriptor(v14, v11);
  }

  [v11 setVertexDescriptor:*(a1 + 304)];
  if (*(a1 + 208) <= 1u)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(a1 + 208);
  }

  [v11 setRasterSampleCount:v15];
  [v11 setDepthAttachmentPixelFormat:*(a1 + 192)];
  [v11 setStencilAttachmentPixelFormat:*(a1 + 200)];
  if (*(a1 + 59) >= 2uLL)
  {
    [v11 setMaxVertexAmplificationCount:?];
  }

  v16 = *(a1 + 344);
  if (v16)
  {
    (*(v16 + 16))(v16, v11);
  }

  if (![v11 vertexFunction])
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_INFO, "Info: Shaders without a vertex function are not allowed", v20, 2u);
    }

    return 0;
  }

  [v11 setInputPrimitiveTopology:*(a1 + 288)];
  return v11;
}

C3D::RenderPass *C3D::MainPassCustomPostProcessPass::MainPassCustomPostProcessPass(C3D::MainPassCustomPostProcessPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC82B8;
  return result;
}

double C3D::MainPassCustomPostProcessPass::setup(C3D::MainPassCustomPostProcessPass *this)
{
  RenderCallbacks = C3DEngineContextGetRenderCallbacks(*(this + 2));
  v11 = 0;
  *(this + 240) = (*(RenderCallbacks + 48))(*(this + 2), &v11);
  *(this + 31) = v11;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 272) = (*(RenderCallbacks + 56))(*(this + 2), this + 256);
  if (*(this + 240))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  C3D::Pass::setInputCount(this, v3);
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v4 + 8) = "COLOR";
  *(v4 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v9);
  *(v4 + 16) = v9;
  *(v4 + 32) = v10;
  *(v4 + 26) = 1;
  *(v4 + 66) = *(v4 + 66) & 0xFFFC | 1;
  if (*(this + 240) == 1)
  {
    v5 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
    *(v5 + 8) = "COLOR1";
    *(v5 + 65) = 1;
    C3D::Pass::parentColorDesc(this, &v9);
    *(v5 + 16) = v9;
    *(v5 + 32) = v10;
    *(v5 + 26) = 1;
    *(v5 + 66) = *(v5 + 66) & 0xFFFC | 1;
    v6 = *(this + 31);
    if (v6)
    {
      *(v5 + 28) = v6;
    }
  }

  C3D::Pass::setOutputCount(this, 1u);
  v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v7 + 8) = "COLOR";
  *(v7 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v9);
  result = *&v9;
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *(v7 + 26) = 6;
  *(v7 + 66) &= 0xFFFCu;
  *(this + 119) = 1;
  return result;
}

uint64_t C3D::MainPassCustomPostProcessPass::compile(C3D::MainPassCustomPostProcessPass *this)
{
  v2 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v2);
  *(this + 35) = result;
  if (!result)
  {
    C3D::MainPassCustomPostProcessPass::compile();
  }

  return result;
}

uint64_t C3D::MainPassCustomPostProcessPass::execute(uint64_t a1)
{
  v2 = *(*(a1 + 280) + 16);
  [v2 setCurrrentPass:a1];
  RenderCallbacks = C3DEngineContextGetRenderCallbacks(*(a1 + 16));
  (*(RenderCallbacks + 64))(*(a1 + 16), v2);

  return [v2 setCurrrentPass:0];
}

void C3D::MainPassCustomPostProcessPassResource::~MainPassCustomPostProcessPassResource(C3D::MainPassCustomPostProcessPassResource *this)
{
  *this = &unk_282DC8328;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC8328;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void C3DMeshBuildRenderableData(uint64_t a1, char a2)
{
  v3 = a1;
  v117 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshBuildRenderableData_cold_1();
    }
  }

  v5 = *(v3 + 112);
  if (v5)
  {
    if (*(v3 + 144))
    {
      return;
    }

    CFRelease(v5);
    *(v3 + 112) = 0;
  }

  v91 = a2;
  v6 = *(v3 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 144) = 0;
  }

  free(*(v3 + 168));
  *(v3 + 168) = 0;
  *(v3 + 160) = 0;
  free(*(v3 + 176));
  *(v3 + 176) = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  __C3DMeshDeindex(v3, &v104, &v103, &v102, &v101, &v100);
  v7 = v104;
  if (v104)
  {
    v8 = v103;
    if (!v103)
    {
      v21 = scn_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        C3DMeshBuildRenderableData_cold_7(v3, v21, v22, v23, v24, v25, v26, v27);
      }

      v20 = v7;
      goto LABEL_83;
    }

    Count = CFArrayGetCount(v104);
    if (Count < 1)
    {
LABEL_15:
      v89 = 0;
    }

    else
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
        if (!C3DMeshSourceGetSemantic(ValueAtIndex))
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_15;
        }
      }

      v89 = ValueAtIndex;
    }

    v28 = CFArrayGetCount(v8);
    allocator = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v28, MEMORY[0x277CBF128]);
    v30 = Mutable;
    if (v28 < 1)
    {
LABEL_72:
      CFRelease(v8);
      if (v28 != CFArrayGetCount(v30))
      {
        v71 = scn_default_log();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
        {
          C3DMeshBuildRenderableData_cold_5();
        }
      }

      *(v3 + 112) = v104;
      *(v3 + 144) = v30;
      v72 = v102;
      *(v3 + 160) = v101;
      v73 = v100;
      *(v3 + 168) = v72;
      *(v3 + 176) = v73;
      __BuildRenderableSourceChannelsAndSemanticInfos(v3);
      if ((v91 & 1) == 0)
      {
        __DropOriginalTopology(v3);
      }

      return;
    }

    v31 = 0;
    bytesDeallocator = *MEMORY[0x277CBECF0];
    theArray = Mutable;
    v83 = v28;
LABEL_26:
    idx = v31;
    v32 = CFArrayGetValueAtIndex(v103, v31);
    v33 = v32;
    if (v32[88] != 4)
    {
      v46 = CFRetain(v32);
      if (v46)
      {
        goto LABEL_68;
      }

      goto LABEL_80;
    }

    if (!*(v32 + 12))
    {
      goto LABEL_80;
    }

    if (C3DMeshElementGetIndicesChannelCount(v32) != 1)
    {
      v76 = scn_default_log();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        C3DMeshBuildRenderableData_cold_2();
      }

      goto LABEL_80;
    }

    v34 = v33[80];
    Length = CFDataGetLength(*(v33 + 12));
    BytePtr = CFDataGetBytePtr(*(v33 + 12));
    v37 = *(v33 + 26);
    if (v37)
    {
      v38 = BytePtr;
      v39 = 0;
      v40 = 0;
      LOBYTE(v41) = 1;
      do
      {
        IndexInBuffer = __readIndexInBuffer(v38, v40, v34, Length);
        v43 = IndexInBuffer;
        if (IndexInBuffer <= 2)
        {
          if ((__C3DMeshElementCreateRenderablePrimitiveTypeCopy(__C3DMeshElement *,__C3DMeshSource const*)::done & 1) == 0)
          {
            __C3DMeshElementCreateRenderablePrimitiveTypeCopy(__C3DMeshElement *,__C3DMeshSource const*)::done = 1;
            v74 = scn_default_log();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              C3DMeshBuildRenderableData_cold_3(v43, v74);
            }
          }

          goto LABEL_80;
        }

        v41 = (IndexInBuffer == 3) & v41;
        v39 += IndexInBuffer - 2;
        ++v40;
      }

      while (v37 != v40);
      if (v41)
      {
        v44 = CFDataGetLength(*(v33 + 12));
        v45 = CFDataCreate(allocator, &v38[v37 * v34], v44 - v37 * v34);
        v46 = C3DMeshElementCreate();
        C3DMeshElementInit(v46, 0, *(v33 + 26), v45, v34);
        v47 = v45;
        goto LABEL_67;
      }

      v48 = malloc_type_malloc(v39 * 3 * v34, 0x100004077774924uLL);
      if (!v48)
      {
        goto LABEL_80;
      }

      v88 = v48;
      v86 = v39 * 3 * v34;
      v49 = 0;
      v90 = 0;
      v50 = 0;
      v84 = v37 + 2;
      v85 = v37 + 1;
      v77 = v37 + 3;
      v82 = v3;
      v95 = v37;
      while (1)
      {
        v51 = __readIndexInBuffer(v38, v50, v34, Length);
        if (v51 >= 3)
        {
          break;
        }

LABEL_65:
        if (++v50 == v37)
        {
          v69 = CFDataCreateWithBytesNoCopy(allocator, v88, v39 * 3 * v34, bytesDeallocator);
          v46 = C3DMeshElementCreate();
          C3DMeshElementInit(v46, 0, v39, v69, v34);
          v47 = v69;
LABEL_67:
          CFRelease(v47);
          v28 = v83;
          if (!v46)
          {
            goto LABEL_80;
          }

LABEL_68:
          ElementAtIndex = C3DMeshGetElementAtIndex(v3, idx, 0);
          if (ElementAtIndex)
          {
            v46[11] = ElementAtIndex[11];
            v46[12] = ElementAtIndex[12];
          }

          v30 = theArray;
          CFArrayAppendValue(theArray, v46);
          CFRelease(v46);
          v31 = idx + 1;
          if (idx + 1 == v28)
          {
            v8 = v103;
            goto LABEL_72;
          }

          goto LABEL_26;
        }
      }

      v52 = v51;
      v53 = v49 + v37;
      v54 = v49 + v37 + v51 - 1;
      if (v34 * v54 > Length)
      {
        v96 = v49;
        v55 = scn_default_log();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110144;
          v108 = v50;
          v109 = 1024;
          v110 = v52;
          v111 = 1024;
          v112 = v53;
          v113 = 1024;
          v114 = v54;
          v115 = 1024;
          v116 = Length / v34;
          _os_log_error_impl(&dword_21BEF7000, v55, OS_LOG_TYPE_ERROR, "Error: __C3DMeshElementCreateRenderablePrimitiveTypeCopy - polygon %u (%u vertices, indices [%u, %u]) does not fit in index buffer (%u elements)", buf, 0x20u);
        }

        v39 -= v52 - 2;
        v37 = v95;
        v49 = v96;
        goto LABEL_65;
      }

      if (v51 == 4)
      {
        v57 = __readIndexInBuffer(v38, v53, v34, Length);
        v80 = __readIndexInBuffer(v38, v49 + v85, v34, Length);
        v58 = __readIndexInBuffer(v38, v49 + v84, v34, Length);
        v59 = v49;
        v60 = v58;
        v97 = v59 + 4;
        v93 = __readIndexInBuffer(v38, v77 + v59, v34, Length);
        __writeIndexInBuffer(v88, v90, v57, v34, v86);
        __writeIndexInBuffer(v88, v90 + 1, v80, v34, v86);
        __writeIndexInBuffer(v88, v90 + 2, v60, v34, v86);
        __writeIndexInBuffer(v88, v90 + 3, v57, v34, v86);
        __writeIndexInBuffer(v88, v90 + 4, v60, v34, v86);
        v3 = v82;
        __writeIndexInBuffer(v88, v90 + 5, v93, v34, v86);
        v90 += 6;
        goto LABEL_50;
      }

      if (v51 == 3)
      {
        v56 = __readIndexInBuffer(v38, v53, v34, Length);
        v92 = __readIndexInBuffer(v38, v49 + v85, v34, Length);
        v97 = v49 + 3;
        v79 = __readIndexInBuffer(v38, v49 + v84, v34, Length);
        __writeIndexInBuffer(v88, v90, v56, v34, v86);
        __writeIndexInBuffer(v88, v90 + 1, v92, v34, v86);
        __writeIndexInBuffer(v88, v90 + 2, v79, v34, v86);
        v90 += 3;
LABEL_50:
        v49 = v97;
LABEL_64:
        v37 = v95;
        goto LABEL_65;
      }

      if (!v89)
      {
        goto LABEL_64;
      }

      v61 = malloc_type_malloc(4 * v51, 0x100004052888210uLL);
      v62 = 0;
      v98 = v49;
      do
      {
        v61[v62] = __readIndexInBuffer(v38, v95 + v49 + v62, v34, Length);
        ++v62;
      }

      while (v52 != v62);
      *buf = 0;
      v63 = C3DDelaunayTriangulationForSimplePlanarPolygon(v89, v61, v52, buf);
      v64 = v63;
      v65 = v52 - 2;
      if (*buf)
      {
        if (*buf == 3 * v65)
        {
          *v81 = v38;
          v66 = 0;
          v67 = v63;
          do
          {
            __writeIndexInBuffer(v88, v90 + v66, v67[v66], v34, v86);
            ++v66;
          }

          while (v66 < *buf);
          v90 += v66;
          v64 = v67;
          v38 = *v81;
          v3 = v82;
          goto LABEL_62;
        }

        v68 = scn_default_log();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          C3DMeshBuildRenderableData_cold_4(&v105, v106, v68);
        }
      }

      v39 -= v65;
      v3 = v82;
      if (!v64)
      {
LABEL_63:
        free(v61);
        v49 = v52 + v98;
        goto LABEL_64;
      }

LABEL_62:
      free(v64);
      goto LABEL_63;
    }

    v46 = C3DMeshElementCreate();
    C3DMeshElementInit(v46, 0, 0, 0, 0);
    if (v46)
    {
      goto LABEL_68;
    }

LABEL_80:
    v75 = scn_default_log();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      C3DMeshBuildRenderableData_cold_6();
    }

    v20 = theArray;
LABEL_83:
    CFRelease(v20);
  }

  else
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      C3DMeshBuildRenderableData_cold_7(v3, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = v103;
    if (v103)
    {
      goto LABEL_83;
    }
  }
}

void __C3DMeshDeindex(__C3DMesh *a1, __CFArray **a2, __CFArray **a3, unsigned int **a4, unsigned int *a5, unsigned int **a6)
{
  v226 = *MEMORY[0x277D85DE8];
  v174 = a2;
  *a2 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v185 = a1;
  *&v201 = C3DMeshGetPositionSource(a1, 0);
  if (!v201)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __C3DMeshDeindex(v185, v16, v17, v18, v19, v20, v21, v22);
    }

    return;
  }

  Count = CFArrayGetCount(*(a1 + 8));
  v181 = CFArrayGetCount(*(a1 + 12));
  v202 = Count;
  if (Count < 1)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    ChannelForSourceAtIndex = C3DMeshGetChannelForSourceAtIndex(v185, v13);
    v15 = ChannelForSourceAtIndex;
    if (v13)
    {
      break;
    }

LABEL_7:
    v13 = (v13 + 1);
    v12 = v15;
    if (v202 == v13)
    {
      goto LABEL_12;
    }
  }

  if (v12 == ChannelForSourceAtIndex)
  {
    v15 = v12;
    goto LABEL_7;
  }

  if (v181 < 1)
  {
    v15 = v12;
    goto LABEL_12;
  }

  ElementAtIndex = C3DMeshGetElementAtIndex(v185, 0, 0);
  v168 = a5;
  v169 = a6;
  v167 = a4;
  if (!C3DMeshElementGetAllChannelsDefineSameTopology(ElementAtIndex))
  {
    goto LABEL_44;
  }

  v33 = a3;
  *&v32 = 134218496;
  v200 = v32;
  v34 = 1;
  do
  {
    v35 = v34;
    IndicesChannelCount = C3DMeshElementGetIndicesChannelCount(ElementAtIndex);
    if (IndicesChannelCount >= 2 && (__C3DMeshDeindex(__C3DMesh *,__CFArray **,__CFArray **,unsigned int **,unsigned int *,unsigned int **)::done & 1) == 0)
    {
      v37 = IndicesChannelCount;
      __C3DMeshDeindex(__C3DMesh *,__CFArray **,__CFArray **,unsigned int **,unsigned int *,unsigned int **)::done = 1;
      v38 = scn_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v217[0]) = v200;
        *(v217 + 4) = ElementAtIndex;
        WORD6(v217[0]) = 2048;
        *(v217 + 14) = v185;
        WORD3(v217[1]) = 1024;
        DWORD2(v217[1]) = v37;
        _os_log_error_impl(&dword_21BEF7000, v38, OS_LOG_TYPE_ERROR, "Warning: Mesh element %p of mesh %p has %d channels but they all define the same topology", v217, 0x1Cu);
      }
    }

    if (v181 == v35)
    {
      break;
    }

    ElementAtIndex = C3DMeshGetElementAtIndex(v185, v35, 0);
    AllChannelsDefineSameTopology = C3DMeshElementGetAllChannelsDefineSameTopology(ElementAtIndex);
    v34 = v35 + 1;
  }

  while (AllChannelsDefineSameTopology);
  v15 = v12;
  v53 = v35 < v181;
  a3 = v33;
  if (v53)
  {
LABEL_44:
    v171 = a3;
    v54 = *MEMORY[0x277CBECE8];
    v55 = MEMORY[0x277CBF128];
    v56 = v202;
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v202, MEMORY[0x277CBF128]);
    v179 = v54;
    v180 = CFArrayCreateMutable(v54, v181, v55);
    v166[1] = v166;
    MEMORY[0x28223BE20]();
    v195 = 0;
    LODWORD(v57) = 0;
    v58 = 0;
    v170 = &v166[-8 * v56];
    v59 = v170 + 15;
    do
    {
      v60 = v185;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v185 + 8), v58);
      Accessor = C3DMeshSourceGetAccessor();
      v63 = C3DMeshGetChannelForSourceAtIndex(v60, v58);
      v64 = C3DSourceAccessorGetCount(Accessor);
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
      ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(Accessor);
      v67 = C3DSizeOfBaseType(ComponentsValueType);
      if (ComponentsValueType == 15 && ComponentsCountPerValue == 3)
      {
        v69 = 4 * C3DSizeOfBaseType(15);
        ComponentsCountPerValue = 4;
      }

      else
      {
        v69 = v67 * ComponentsCountPerValue;
      }

      *(v59 - 15) = ValueAtIndex;
      *(v59 - 13) = Accessor;
      *(v59 - 44) = v63;
      *(v59 - 9) = v69;
      *(v59 - 14) = ComponentsValueType;
      *(v59 - 5) = ComponentsCountPerValue;
      *(v59 - 1) = 0;
      *v59 = v64;
      *(v59 - 3) = malloc_type_malloc(v69 * v64, 0x6EF1DDA2uLL);
      if (ValueAtIndex == v201)
      {
        v57 = v64;
      }

      else
      {
        v57 = v57;
      }

      if (ValueAtIndex == v201)
      {
        v70 = v63;
      }

      else
      {
        v70 = v195;
      }

      v195 = v70;
      v58 = (v58 + 1);
      v59 += 16;
    }

    while (v202 != v58);
    v203 = 0uLL;
    *&v204 = 0;
    v173 = v57;
    v194 = malloc_type_calloc(v57, 4uLL, 0x100004052888210uLL);
    v71 = MEMORY[0x28223BE20]();
    v178 = v166 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    v193 = 0;
    v73 = 0;
    v208 = 0;
    v209 = 0;
    v207 = &v208;
    v177 = *MEMORY[0x277CBECF0];
    v188 = (v170 + 2);
    v196 = (v170 + 6);
    v71.n128_u64[0] = 134218498;
    v176 = v71;
    v71.n128_u64[0] = 67109632;
    v175 = v71;
    do
    {
      v74 = C3DMeshGetElementAtIndex(v185, v73, 0);
      Type = C3DMeshElementGetType(v74);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(v74);
      LODWORD(v201) = C3DMeshElementGetBytesPerIndex(v74);
      IndexCount = C3DMeshElementGetIndexCount(v74);
      v218 = 0;
      v189 = IndexCount;
      memset(v217, 0, sizeof(v217));
      v192 = v74;
      C3DMeshElementGetFastIndexLookupInfo(v74, v217);
      v183 = v73;
      v77 = &v178[40 * v73];
      v78 = v217[1];
      *v77 = v217[0];
      *(v77 + 1) = v78;
      v198 = v77;
      *(v77 + 4) = v218;
      v191 = PrimitiveCount;
      v79 = 0;
      if (PrimitiveCount < 1)
      {
        v81 = PrimitiveCount;
      }

      else
      {
        v80 = 0;
        v81 = PrimitiveCount;
        do
        {
          VertexCountForPrimitiveAtIndex = C3DMeshElementGetVertexCountForPrimitiveAtIndex(v192, v80);
          if (VertexCountForPrimitiveAtIndex >= 1)
          {
            v83 = VertexCountForPrimitiveAtIndex;
            v84 = 0;
            while (2)
            {
              v85 = v188;
              v86 = v202;
              do
              {
                v87 = C3DSourceAccessorGetCount(*(v85 - 1));
                *buf = v217[0];
                *&buf[16] = v217[1];
                v224.n128_u64[0] = v218;
                IndexUsingFastIndexLookupInfo = C3DMeshElementGetIndexUsingFastIndexLookupInfo(buf, v80, v84, *v85);
                if (IndexUsingFastIndexLookupInfo >= v87)
                {
                  v89 = IndexUsingFastIndexLookupInfo;
                  v90 = scn_default_log();
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                  {
                    v92 = *(v85 - 2);
                    Semantic = C3DMeshSourceGetSemantic(v92);
                    v94 = C3DMeshSourceSemanticToSemanticString(Semantic);
                    *buf = v176.n128_u32[0];
                    *&buf[4] = v92;
                    *&buf[12] = 2112;
                    *&buf[14] = v94;
                    *&buf[22] = 1024;
                    *&buf[24] = v89;
                    _os_log_error_impl(&dword_21BEF7000, v90, OS_LOG_TYPE_ERROR, "Error: Deindexer issue - source %p (%@) has no original data at index %u", buf, 0x1Cu);
                  }

                  v91 = scn_default_log();
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v175.n128_u32[0];
                    *&buf[4] = v80;
                    *&buf[8] = 1024;
                    *&buf[10] = v183;
                    *&buf[14] = 2048;
                    *&buf[16] = v192;
                    _os_log_error_impl(&dword_21BEF7000, v91, OS_LOG_TYPE_ERROR, "Error: Deindexer issue - will discard face #%u of element at index %d (%p)", buf, 0x18u);
                  }

                  PrimitiveCount = v191;
                  if (!v79)
                  {
                    v79 = malloc_type_calloc(v191, 1uLL, 0x100004077774924uLL);
                  }

                  --v81;
                  v189 -= v83;
                  v79[v80] = 1;
                  goto LABEL_75;
                }

                v85 += 64;
                v86 = (v86 - 1);
              }

              while (v86);
              if (++v84 != v83)
              {
                continue;
              }

              break;
            }

            PrimitiveCount = v191;
          }

LABEL_75:
          ++v80;
        }

        while (v80 != PrimitiveCount);
      }

      v187 = v79;
      v95 = v201;
      v182 = v81;
      if (Type == 4)
      {
        v199 = (v81 + v189) * v201;
        v96 = malloc_type_malloc(v199, 0x100004077774924uLL);
        v97 = v187;
        if (v187)
        {
          if (PrimitiveCount < 1)
          {
            v99 = 0;
          }

          else
          {
            v98 = 0;
            v99 = 0;
            do
            {
              v100 = *v97++;
              if ((v100 & 1) == 0)
              {
                BytePtr = CFDataGetBytePtr(v192[12]);
                memcpy(v96 + v99, &BytePtr[v98], v95);
                v99 += v95;
              }

              v98 += v95;
              --PrimitiveCount;
            }

            while (PrimitiveCount);
          }

          if (v99 == v81 * v95)
          {
            v186 = v182;
            PrimitiveCount = v191;
          }

          else
          {
            v103 = scn_default_log();
            v104 = os_log_type_enabled(v103, OS_LOG_TYPE_FAULT);
            v105 = v182;
            PrimitiveCount = v191;
            if (v104)
            {
              __C3DMeshDeindex(v215, &v216, v103);
            }

            v186 = v105;
          }
        }

        else
        {
          v102 = CFDataGetBytePtr(v192[12]);
          memcpy(v96, v102, v81 * v95);
          v186 = v81;
        }
      }

      else
      {
        v199 = v189 * v201;
        v96 = malloc_type_malloc(v199, 0x100004077774924uLL);
        v186 = 0;
      }

      if (PrimitiveCount < 1)
      {
        v106 = 0;
        v108 = v187;
      }

      else
      {
        v106 = 0;
        v107 = 0;
        v108 = v187;
        v197 = v96;
        do
        {
          if (!v108 || (v108[v107] & 1) == 0)
          {
            *&v201 = C3DMeshElementGetVertexCountForPrimitiveAtIndex(v192, v107);
            v190 = v106;
            if (v201 >= 1)
            {
              v109 = 0;
              *&v200 = v106 + v186;
              do
              {
                v110 = v209;
                *buf = v198;
                *&buf[8] = v107;
                *&buf[16] = v109;
                *&buf[24] = v209;
                v111 = std::__tree<std::__value_type<__C3DMeshDeindexerKey,unsigned int>,std::__map_value_compare<__C3DMeshDeindexerKey,std::__value_type<__C3DMeshDeindexerKey,unsigned int>,__C3DMeshDeindexerKeyComparator,true>,std::allocator<std::__value_type<__C3DMeshDeindexerKey,unsigned int>>>::__emplace_unique_key_args<__C3DMeshDeindexerKey,std::pair<__C3DMeshDeindexerKey,unsigned int>>(&v207, buf);
                v113 = v112;
                v114 = v95;
                __writeIndexInBuffer(v96, v200 + v109, *(v111 + 56), v95, v199);
                v115 = v196;
                v116 = v202;
                if (v113)
                {
                  do
                  {
                    v118 = *(v115 + 2);
                    v117 = *(v115 + 3);
                    if (v117 == v118)
                    {
                      v119 = (2 * v117);
                      *(v115 + 3) = v119;
                      v120 = *(v115 - 3);
                      v121 = malloc_type_realloc(*v115, v120 * v119, 0x7E876ECCuLL);
                      *v115 = v121;
                    }

                    else
                    {
                      v121 = *v115;
                      v120 = *(v115 - 3);
                    }

                    v122 = &v121[v120 * v118];
                    *buf = v217[0];
                    *&buf[16] = v217[1];
                    v224.n128_u64[0] = v218;
                    v123 = C3DMeshElementGetIndexUsingFastIndexLookupInfo(buf, v107, v109, *(v115 - 32));
                    ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(*(v115 - 5), v123);
                    memcpy(v122, ValuePtrAtIndex, v120);
                    if (v118 != v110)
                    {
                      v125 = scn_default_log();
                      if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
                      {
                        __C3DMeshDeindex(v213, &v214, v125);
                      }
                    }

                    *(v115 + 2) = v118 + 1;
                    v115 += 8;
                    v116 = (v116 - 1);
                  }

                  while (v116);
                  *buf = v217[0];
                  *&buf[16] = v217[1];
                  v224.n128_u64[0] = v218;
                  *buf = C3DMeshElementGetIndexUsingFastIndexLookupInfo(buf, v107, v109, v195);
                  std::vector<int>::push_back[abi:nn200100](&v203, buf);
                  if (!v194[*buf])
                  {
                    v194[*buf] = (*(&v203 + 1) - v203) >> 2;
                  }
                }

                else
                {
                  v193 = 1;
                }

                v95 = v114;
                ++v109;
                v96 = v197;
              }

              while (v109 != v201);
            }

            v106 = v201 + v190;
            v108 = v187;
          }

          ++v107;
        }

        while (v107 != v191);
      }

      free(v108);
      if (v106 != v189)
      {
        v126 = scn_default_log();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_FAULT))
        {
          __C3DMeshDeindex(v211, &v212, v126);
        }
      }

      v127 = CFDataCreateWithBytesNoCopy(v179, v96, v199, v177);
      v128 = C3DMeshElementCreate();
      C3DMeshElementInit(v128, Type, v182, v127, v95);
      CFArrayAppendValue(v180, v128);
      CFRelease(v128);
      CFRelease(v127);
      v73 = v183 + 1;
    }

    while (v183 + 1 != v181);
    if ((v193 & 1) == 0)
    {
      v130 = scn_default_log();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v217[0]) = 134217984;
        *(v217 + 4) = v185;
        _os_log_impl(&dword_21BEF7000, v130, OS_LOG_TYPE_DEFAULT, "Warning: Mesh %p has multiple channels but deindexing didn't have any effect", v217, 0xCu);
      }
    }

    *buf = 0;
    v132 = Mutable;
    v131 = v173;
    if (v173)
    {
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = (v170 + 6);
      *&v129 = 67109376;
      v201 = v129;
      do
      {
        v137 = v194[v135];
        if (v137)
        {
          v194[v135] = v137 - 1;
        }

        else
        {
          v138 = scn_default_log();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
          {
            *&v217[0] = __PAIR64__(*buf, v201);
            WORD4(v217[0]) = 1024;
            *(v217 + 10) = v173;
            _os_log_impl(&dword_21BEF7000, v138, OS_LOG_TYPE_DEFAULT, "Warning: Deindexing - Vertex at index %u of %u is not used by any geometry element", v217, 0xEu);
          }

          v139 = v136;
          v140 = v202;
          if ((v133 & 1) == 0)
          {
            do
            {
              v142 = *(v139 + 2);
              v141 = *(v139 + 3);
              if (v141 == v142)
              {
                v143 = (v141 + 1);
                *(v139 + 3) = v143;
                v144 = *(v139 - 3);
                v145 = malloc_type_realloc(*v139, v144 * v143, 0x1FD9F342uLL);
                *v139 = v145;
              }

              else
              {
                v145 = *v139;
                v144 = *(v139 - 3);
              }

              bzero(&v145[v144 * v142], v144);
              *(v139 + 2) = v142 + 1;
              v139 += 8;
              v140 = (v140 - 1);
            }

            while (v140);
            std::vector<int>::push_back[abi:nn200100](&v203, buf);
            v134 = ((*(&v203 + 1) - v203) >> 2) - 1;
          }

          v194[*buf] = v134;
          v133 = 1;
          v132 = Mutable;
          v131 = v173;
        }

        v135 = *buf + 1;
        *buf = v135;
      }

      while (v135 < v131);
    }

    v146 = *(&v203 + 1) - v203;
    *&v201 = (*(&v203 + 1) - v203) >> 2;
    v147 = malloc_type_malloc((*(&v203 + 1) - v203) & 0x3FFFFFFFCLL, 0x100004052888210uLL);
    memcpy(v147, v203, v146 & 0x3FFFFFFFCLL);
    v148 = (v170 + 4);
    v149 = v202;
    v150 = v179;
    do
    {
      v151 = *(v148 + 6);
      v152 = C3DMeshSourceGetSemantic(*(v148 - 4));
      v153 = *(v148 - 1);
      v154 = CFDataCreate(v150, *(v148 + 2), v153 * v151);
      v155 = C3DMeshSourceCreateWithData(v152, v154, *v148, *(v148 + 1), v151, v153, 0);
      CFArrayAppendValue(v132, v155);
      CFRelease(v155);
      CFRelease(v154);
      v148 += 32;
      v149 = (v149 - 1);
    }

    while (v149);
    v156 = (v170 + 6);
    v157 = v202;
    do
    {
      v158 = *v156;
      v156 += 8;
      free(v158);
      v157 = (v157 - 1);
    }

    while (v157);
    v159 = CFArrayGetCount(v132);
    v160 = v171;
    v161 = v167;
    if (v202 != v159)
    {
      v162 = scn_default_log();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_FAULT))
      {
        __C3DMeshDeindex();
      }
    }

    v163 = CFArrayGetCount(v180);
    if (v181 != v163)
    {
      v164 = scn_default_log();
      if (os_log_type_enabled(v164, OS_LOG_TYPE_FAULT))
      {
        __C3DMeshDeindex();
      }
    }

    *v174 = v132;
    *v160 = v180;
    *v161 = v147;
    v165 = v169;
    *v168 = v201;
    *v165 = v194;
    std::__tree<char>::destroy(&v207, v208);
    if (v203)
    {
      *(&v203 + 1) = v203;
      operator delete(v203);
    }
  }

  else
  {
LABEL_12:
    v23 = v185;
    ElementsCount = C3DMeshGetElementsCount(v185);
    v25 = ElementsCount;
    if (ElementsCount)
    {
      v26 = 0;
      while (1)
      {
        v27 = C3DMeshGetElementAtIndex(v185, v26, 0);
        v28 = C3DMeshElementGetIndicesChannelCount(v27);
        if (v28 <= v15)
        {
          v40 = scn_default_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            __C3DMeshDeindex(v15, v27, v40);
          }

          return;
        }

        if (v28 >= 2)
        {
          break;
        }

        if (v25 == ++v26)
        {
          goto LABEL_17;
        }
      }

      v171 = a3;
      v202 = *MEMORY[0x277CBECE8];
      MutableCopy = CFArrayCreateMutable(v202, v25, MEMORY[0x277CBF128]);
      v41 = 0;
      v198 = &v217[1];
      v199 = v15;
      v197 = *MEMORY[0x277CBECF0];
      *&v201 = v25;
      *&v200 = MutableCopy;
      do
      {
        v42 = C3DMeshGetElementAtIndex(v23, v41, 0);
        if (C3DMeshElementGetIndicesChannelCount(v42) == 1)
        {
          CFArrayAppendValue(MutableCopy, v42);
        }

        else
        {
          v43 = C3DMeshElementGetType(v42);
          v44 = C3DMeshElementGetPrimitiveCount(v42);
          BytesPerIndex = C3DMeshElementGetBytesPerIndex(v42);
          v46 = C3DMeshElementGetIndexCount(v42);
          if (v43 == 4)
          {
            v47 = BytesPerIndex * (v46 + v44);
            v48 = malloc_type_malloc(v47, 0x100004077774924uLL);
            v49 = v44;
            v50 = CFDataGetBytePtr(v42[12]);
            memcpy(v48, v50, v44 * BytesPerIndex);
          }

          else
          {
            v47 = v46 * BytesPerIndex;
            v48 = malloc_type_malloc(v47, 0x100004077774924uLL);
            v49 = v44;
            v44 = 0;
          }

          v207 = 0;
          v208 = &v207;
          v209 = 0x2000000000;
          v210 = 0;
          v224 = 0u;
          v225 = 0u;
          memset(buf, 0, sizeof(buf));
          C3DMeshElementGetContent(v42, v199, buf);
          v203 = *buf;
          v204 = *&buf[16];
          v205 = v224;
          v206 = v225;
          *&v217[0] = MEMORY[0x277D85DD0];
          *(&v217[0] + 1) = 0x40000000;
          *&v217[1] = ___ZL40__C3DMeshCopyDeindexedElementsForChannelP9__C3DMeshh_block_invoke;
          *(&v217[1] + 1) = &unk_278301D00;
          v222 = v44;
          v219 = v48;
          v218 = &v207;
          v220 = BytesPerIndex;
          v221 = v47;
          C3DIndicesContentEnumeratePrimitives(&v203, v217, v224);
          v51 = CFDataCreateWithBytesNoCopy(v202, v48, v47, v197);
          v52 = C3DMeshElementCreate();
          C3DMeshElementInit(v52, v43, v49, v51, BytesPerIndex);
          MutableCopy = v200;
          CFArrayAppendValue(v200, v52);
          CFRelease(v51);
          CFRelease(v52);
          _Block_object_dispose(&v207, 8);
          v23 = v185;
          v25 = v201;
        }

        ++v41;
      }

      while (v25 != v41);
      a3 = v171;
      if (!MutableCopy)
      {
        return;
      }

LABEL_40:
      *v174 = CFArrayCreateMutableCopy(v202, 0, *(v185 + 8));
      *a3 = MutableCopy;
    }

    else
    {
LABEL_17:
      v29 = *(v185 + 12);
      v202 = *MEMORY[0x277CBECE8];
      MutableCopy = CFArrayCreateMutableCopy(v202, 0, v29);
      if (MutableCopy)
      {
        goto LABEL_40;
      }
    }
  }
}

void __writeIndexInBuffer(unsigned __int8 *a1, int a2, int a3, unint64_t a4, unint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 + 1) * a4 <= a5)
  {
    switch(a4)
    {
      case 4uLL:
        *&a1[4 * a2] = a3;
        break;
      case 2uLL:
        *&a1[2 * a2] = a3;
        break;
      case 1uLL:
        a1[a2] = a3;
        break;
      default:
        v9 = scn_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          __writeIndexInBuffer();
        }

        break;
    }
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109376;
      v10[1] = a2;
      v11 = 2048;
      v12 = a5 / a4;
      _os_log_error_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_ERROR, "Error: __writeIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
    }
  }
}

void ___ZL40__C3DMeshCopyDeindexedElementsForChannelP9__C3DMeshh_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      __writeIndexInBuffer(*(a1 + 40), i + *(a1 + 64) + *(*(*(a1 + 32) + 8) + 24), *(a3 + 4 * i), *(a1 + 48), *(a1 + 56));
    }
  }

  *(*(*(a1 + 32) + 8) + 24) += a4;
}

uint64_t std::__tree<std::__value_type<__C3DMeshDeindexerKey,unsigned int>,std::__map_value_compare<__C3DMeshDeindexerKey,std::__value_type<__C3DMeshDeindexerKey,unsigned int>,__C3DMeshDeindexerKeyComparator,true>,std::allocator<std::__value_type<__C3DMeshDeindexerKey,unsigned int>>>::__emplace_unique_key_args<__C3DMeshDeindexerKey,std::pair<__C3DMeshDeindexerKey,unsigned int>>(uint64_t a1, __int128 **a2)
{
  v2 = *std::__tree<std::__value_type<__C3DMeshDeindexerKey,unsigned int>,std::__map_value_compare<__C3DMeshDeindexerKey,std::__value_type<__C3DMeshDeindexerKey,unsigned int>,__C3DMeshDeindexerKeyComparator,true>,std::allocator<std::__value_type<__C3DMeshDeindexerKey,unsigned int>>>::__find_equal<__C3DMeshDeindexerKey>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<__C3DMeshDeindexerKey,unsigned int>,std::__map_value_compare<__C3DMeshDeindexerKey,std::__value_type<__C3DMeshDeindexerKey,unsigned int>,__C3DMeshDeindexerKeyComparator,true>,std::allocator<std::__value_type<__C3DMeshDeindexerKey,unsigned int>>>::__find_equal<__C3DMeshDeindexerKey>(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!__C3DMeshDeindexerKeyComparator::operator()(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!__C3DMeshDeindexerKeyComparator::operator()(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL __C3DMeshDeindexerKeyComparator::operator()(uint64_t a1, __int128 **a2, __int128 **a3)
{
  v5 = *(*a2 + 37);
  if (v5 == *(*a3 + 37) || (v6 = scn_default_log(), !os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    if (v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  __C3DMeshDeindexerKeyComparator::operator()();
  if (!v5)
  {
    return 0;
  }

LABEL_4:
  v7 = 0;
  v8 = v5 - 1;
  do
  {
    v9 = a2[1];
    v10 = *(*a2 + 4);
    v11 = (*a2)[1];
    v19 = **a2;
    v20 = v11;
    v21 = v10;
    IndexUsingFastIndexLookupInfo = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v19, v9, a2[2], v7);
    v13 = a3[1];
    v14 = *(*a3 + 4);
    v15 = (*a3)[1];
    v19 = **a3;
    v20 = v15;
    v21 = v14;
    v16 = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v19, v13, a3[2], v7);
    result = IndexUsingFastIndexLookupInfo < v16;
    if (IndexUsingFastIndexLookupInfo < v16)
    {
      break;
    }

    if (IndexUsingFastIndexLookupInfo > v16)
    {
      break;
    }
  }

  while (v8 != v7++);
  return result;
}

uint64_t __readIndexInBuffer(const unsigned __int8 *a1, int a2, unint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 + 1) * a3 <= a4)
  {
    switch(a3)
    {
      case 4uLL:
        return *&a1[4 * a2];
      case 2uLL:
        return *&a1[2 * a2];
      case 1uLL:
        return a1[a2];
      default:
        v9 = scn_default_log();
        result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
        if (result)
        {
          __readIndexInBuffer();
          return 0;
        }

        break;
    }
  }

  else
  {
    v7 = scn_default_log();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109376;
      v10[1] = a2;
      v11 = 2048;
      v12 = a4 / a3;
      _os_log_error_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_ERROR, "Error: __readIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
      return 0;
    }
  }

  return result;
}

C3D::ConvertCubeComputePass *C3D::ConvertCubeComputePass::ConvertCubeComputePass(C3D::ConvertCubeComputePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v6 = &unk_282DC8348;
  *(v6 + 108) = *&a4->var0;
  snprintf((v6 + 120), 0x40uLL, "ConvertCubeComputePass-%sTo%s", off_278301D20[a4->var0], off_278301D20[a4->var1]);
  return this;
}

void C3D::ConvertCubeComputePass::setup(C3D::ConvertCubeComputePass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 1u);
}

uint64_t C3D::ConvertCubeComputePass::compile(C3D::ConvertCubeComputePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v3);
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::ConvertCubeComputePass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 112) + 16);
  v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v6 = C3D::Pass::outputTextureAtIndex(a1, 0);
  IsArray = SCNMTLTextureTypeIsArray([v5 textureType]);
  ArrayElementType = SCNMTLTextureTypeGetArrayElementType([v5 textureType]);
  v8 = [v5 pixelFormat];
  if (*(a1 + 108))
  {
    v9 = 1;
  }

  else
  {
    v9 = 6;
  }

  v31 = v9;
  v32 = v8;
  v30 = SCNMTLTextureTypeIsArray([v6 textureType]);
  v28 = SCNMTLTextureTypeGetArrayElementType([v6 textureType]);
  v10 = [v6 pixelFormat];
  v11 = 0;
  if (*(a1 + 109))
  {
    v12 = 1;
  }

  else
  {
    v12 = 6;
  }

  v27 = v12;
  if (!*(a1 + 109))
  {
    v11 = !C3DEngineContextHasFeatures(*(a1 + 16), 512);
  }

  v13 = [v5 mipmapLevelCount];
  v14 = [v6 mipmapLevelCount];
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v35 = v15;
  v16 = [(SCNMTLOpenSubdivComputeEvaluator *)v4 computeEvaluator];
  if (v3->_computePipelineState != v16)
  {
    v3->_computePipelineState = v16;
    [(MTLComputeCommandEncoder *)v3->_encoder setComputePipelineState:v16];
  }

  result = C3D::Pass::descriptor(a1);
  if (v35)
  {
    v18 = 0;
    v34 = *(result + 4);
    v19 = &v3->_textures[1];
    v29 = v5;
    while (v18 != 0 || IsArray)
    {
      v20 = [v5 newTextureViewWithPixelFormat:v32 textureType:ArrayElementType levels:v18 slices:1, 0, v31];
      if (v3->_textures[0] != v20)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v11)
      {
        v21 = v11;
        v22 = IsArray;
        v23 = 0;
        v24 = v34;
        do
        {
          v25 = [v6 newTextureViewWithPixelFormat:v10 textureType:2 levels:v18 slices:1, v24, 1];
          if (v19[v23] != v25)
          {
            v19[v23] = v25;
            v3->_texturesToBind[0] |= (2 << v23);
          }

          ++v23;
          ++v24;
        }

        while (v23 != 6);
        v26 = v6;
        IsArray = v22;
        v11 = v21;
        v5 = v29;
        goto LABEL_32;
      }

      if (v18 != 0 || v30)
      {
        v26 = [v6 newTextureViewWithPixelFormat:v10 textureType:v28 levels:v18 slices:1, v34, v27];
        if (*v19 == v26)
        {
          goto LABEL_32;
        }

LABEL_31:
        v3->_textures[1] = v26;
        v3->_texturesToBind[0] |= 2uLL;
        goto LABEL_32;
      }

      v26 = v6;
      if (*v19 != v6)
      {
        goto LABEL_31;
      }

LABEL_32:
      result = SCNMTLComputeCommandEncoder::dispatchOnTextureCube(v3, v26);
      if (++v18 == v35)
      {
        return result;
      }
    }

    v20 = v5;
    if (v3->_textures[0] == v5)
    {
      goto LABEL_21;
    }

LABEL_20:
    v3->_textures[0] = v20;
    v3->_texturesToBind[0] |= 1uLL;
    goto LABEL_21;
  }

  return result;
}

void C3D::ConvertCubeComputePass::Resource::~Resource(C3D::ConvertCubeComputePass::Resource *this)
{
  *this = &unk_282DC83B8;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC83B8;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

double __C3DAnimatableParamControllerGetTypeID_block_invoke()
{
  C3DAnimatableParamControllerGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DAnimatableParamControllerContextClassAnimatable;
  xmmword_2817442E0 = kC3DC3DAnimatableParamControllerContextClassAnimatable;
  return result;
}

uint64_t C3DAnimatableParamControllerCreate(const void *a1, __int128 *a2)
{
  if (C3DAnimatableParamControllerGetTypeID_onceToken != -1)
  {
    C3DAnimatableParamControllerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimatableParamControllerGetTypeID_typeID, 48);
  v5 = Instance;
  if (Instance)
  {
    v6 = *(Instance + 16);
    if (v6 != a1)
    {
      if (v6)
      {
        CFRelease(v6);
        *(v5 + 16) = 0;
      }

      if (a1)
      {
        v7 = CFRetain(a1);
      }

      else
      {
        v7 = 0;
      }

      *(v5 + 16) = v7;
    }

    v8 = *a2;
    *(v5 + 40) = *(a2 + 2);
    *(v5 + 24) = v8;
  }

  return v5;
}

uint64_t C3DAnimatableParamControllerGetParamDescription(uint64_t a1, void *key)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 48);
  if (!v20)
  {
    *(a1 + 48) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
    *(a1 + 56) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    v20 = *(a1 + 48);
  }

  Value = CFDictionaryGetValue(v20, key);
  if (Value)
  {
    return *Value;
  }

  v39 = 0;
  cf = 0;
  v22 = (*(a1 + 24))(*(a1 + 16), key, &cf, &v39);
  if (v22)
  {
    v23 = v22;
    Value = malloc_type_calloc(0x18uLL, 1uLL, 0x747407C4uLL);
    Count = CFDictionaryGetCount(*(a1 + 56));
    if (Count >= 64)
    {
      v25 = scn_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        C3DAnimatableParamControllerGetParamDescription_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    v33 = C3DModelTargetCreate(a1, a1 + Count, v23, 0);
    *Value = v33;
    v34 = cf;
    if (!cf)
    {
      v34 = *(a1 + 16);
      if (v34)
      {
        v34 = CFRetain(v34);
      }
    }

    Value[1] = v34;
    v35 = v39;
    if (!v39)
    {
      v35 = CFRetain(key);
    }

    Value[2] = v35;
    CFDictionaryAddValue(*(a1 + 48), key, Value);
    v36 = *(a1 + 56);
    TargetAddress = C3DModelTargetGetTargetAddress(v33);
    CFDictionaryAddValue(v36, TargetAddress, key);
    return *Value;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return 0;
}

void _C3DAnimatableParamControllerCFFinalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFDictionaryApplyFunction(v2, _releaseItems, 0);
    v3 = a1[6];
    if (v3)
    {
      CFRelease(v3);
      a1[6] = 0;
    }
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }
}

CFStringRef _C3DAnimatableParamControllerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAnimatableParamController>");
}

CFStringRef _C3DAnimatableParamControllerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DAnimatableParamController>");
}

void _releaseItems(int a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }

  v3 = a2[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a2);
}

uint64_t _C3DAnimatableParamControllerSetValue(uint64_t a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (!Value)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimatableParamControllerSetValue_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = CFDictionaryGetValue(*(a1 + 48), Value);
  return (*(a1 + 40))(v14[1], v14[2], a3, *(*v14 + 32));
}

uint64_t _C3DAnimatableParamControllerGetValue(uint64_t a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (!Value)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimatableParamControllerSetValue_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = CFDictionaryGetValue(*(a1 + 48), Value);
  if (!v14)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DModelValueStorageItemRelease_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return (*(a1 + 32))(v14[1], v14[2], a3, *(*v14 + 32));
}

void SCNCActionRepeat::SCNCActionRepeat(SCNCActionRepeat *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC8408;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
}

void SCNCActionRepeat::~SCNCActionRepeat(SCNCActionRepeat *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

SCNCAction *SCNCActionRepeat::setBaseSpeed(SCNCActionRepeat *this, double a2)
{
  SCNCAction::setBaseSpeed(this, a2);
  result = this->var19;
  if (result)
  {
    v3.n128_f64[0] = this->var17 * this->var16;
    v5 = *(result->var0 + 5);

    return v5(v3);
  }

  return result;
}

SCNCAction *SCNCActionRepeat::setSpeed(SCNCActionRepeat *this, double a2)
{
  SCNCAction::setSpeed(this, a2);
  result = this->var19;
  if (result)
  {
    v3.n128_f64[0] = this->var17 * this->var16;
    v5 = *(result->var0 + 5);

    return v5(v3);
  }

  return result;
}

SCNCAction *SCNCActionRepeat::cpp_updateWithTargetForTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  if (C3DIsRunningInEditor() && vabdd_f64(a3, this->var22) > 3600.0)
  {
    this->var22 = a3;
  }

  if (C3DIsRunningInEditor())
  {
    var22 = this->var22;
    if (var22 > a3)
    {
      v7 = this->var19->var1 / this->var19->var18;
      if (v7 == 0.0)
      {
        v10 = 0;
      }

      else
      {
        var5 = this->var5;
        v9 = ((var22 - var5) / v7);
        v10 = ((a3 - var5) / v7);
        while (v9 > v10)
        {
          --v9;
          if (this->var23 || v9 < this->var21 - 1)
          {
            var19 = this->var19;
            var19->var10 = 0;
            SCNCAction::updateWithTargetForTime(var19, a2, var19->var5);
            SCNCAction::willStartWithTargetAtTime(this->var19, a2, this->var19->var5 - v7);
          }
        }
      }

      this->var20 = v10;
    }
  }

  v12 = this->var19;
  if (!v12->var4)
  {
    goto LABEL_16;
  }

  for (result = (*(v12->var0 + 7))(v12, a2, a3); ; result = SCNCAction::updateWithTargetForTime(v12, a2, a3))
  {
    v14 = this->var19;
    if (v14->var4)
    {
      if (!v14->var10)
      {
        break;
      }
    }

    else
    {
      result = [v14->var3 finished];
      if (!result)
      {
        break;
      }
    }

    var21 = this->var21;
    v16 = this->var20 + 1;
    this->var20 = v16;
    if (v16 >= var21 && !this->var23)
    {
      break;
    }

    v17 = this->var19;
    v17->var10 = 0;
    v18 = (*(v17->var0 + 2))(v17);
    if (v18 >= a3)
    {
      v18 = a3;
    }

    SCNCAction::willStartWithTargetAtTime(this->var19, a2, v18);
    v12 = this->var19;
LABEL_16:
    ;
  }

  if (!this->var23 && this->var20 >= this->var21)
  {
    v19.n128_f64[0] = (*(this->var19->var0 + 2))(this->var19);
    result = SCNCAction::didFinishWithTargetAtTime(this, a2, v19);
  }

  this->var22 = a3;
  return result;
}

uint64_t SCNCActionRepeat::cpp_wasAddedToTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasAddedToTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::wasAddedToTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_wasRemovedFromTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::wasRemovedFromTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_willStartWithTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  this->var20 = 0;
  SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::willStartWithTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_wasPausedWithTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::wasPausedWithTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_willResumeWithTargetAtTime(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::willResumeWithTargetAtTime(var19, a2, a3);
}

uint64_t SCNCActionRepeat::cpp_timeJumpWithTarget(SCNCActionRepeat *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_timeJumpWithTarget(this, a2, a3);
  var19 = this->var19;

  return SCNCAction::timeJumpWithTarget(var19, a2, a3);
}

SCNCAction *SCNCActionRepeat::cpp_reset(SCNCActionRepeat *this)
{
  result = SCNCAction::cpp_reset(this);
  this->var20 = 0;
  this->var22 = 0.0;
  return result;
}

CFStringRef _C3DStackAllocatorCFCopyFormatDescription(const void *a1, const __CFDictionary *a2)
{
  v2 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v2, 0, @"<C3DStackAllocator>");
}

CFStringRef _C3DStackAllocatorCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DStackAllocator>");
}

void *C3DStackAllocatorAllocateAligned(uint64_t a1, size_t a2, uint64_t a3, int a4)
{
  if (!*(a1 + 576))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DStackAllocatorAllocateAligned_cold_1(v8);
    }
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = *(v9 + 12);
    v11 = *v9 + v10;
    v12 = ((a3 - 1 + v11) & -a3);
    if (v12 + a2 - v11 <= (*(v9 + 8) - v10))
    {
      break;
    }

    v9 = *(v9 + 16);
    if (!v9)
    {
      if (*(a1 + 16))
      {
        operator new();
      }

      C3DStackAllocatorAllocateAligned_cold_2();
    }
  }

  *(v9 + 12) = a2 + v12 - *v9;
  if (a4 == 2)
  {
    memset(v12, 255, a2);
  }

  else if (a4 == 1)
  {
    bzero(v12, a2);
  }

  return v12;
}

void *C3DStackAllocatorResizeLast(uint64_t a1, size_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v4 = v2 + a2 - *v3;
  if (*(v3 + 8) > v4)
  {
    *(v3 + 12) = v4;
    return v2;
  }

  v5 = *v3 + *(v3 + 12) - v2;
  Aligned = C3DStackAllocatorAllocateAligned(a1, a2, 32, 0);
  if (v2)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return Aligned;
  }

  return memcpy(Aligned, v2, v5);
}

void *C3DStackAllocatorReallocate(uint64_t a1, unint64_t a2, size_t a3, size_t a4, uint64_t a5)
{
  if (*(a1 + 48) == a2 && ((a5 - 1) & a2) == 0)
  {

    return C3DStackAllocatorResizeLast(a1, a4);
  }

  else
  {
    result = C3DStackAllocatorAllocateAligned(a1, a4, a5, 0);
    if (a2 && a3)
    {

      return memcpy(result, a2, a3);
    }
  }

  return result;
}

void C3DStackAllocatorPushFrame(uint64_t a1)
{
  v1 = *(a1 + 576);
  if (v1 == 31)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      C3DStackAllocatorPushFrame_cold_1(v2);
    }
  }

  else
  {
    *(a1 + 576) = v1 + 1;
    v3 = *(a1 + 16);
    v4 = *(v3 + 12);
    v5 = a1 + 16 * v1;
    *(v5 + 64) = v3;
    *(v5 + 72) = v4;
  }
}

uint64_t C3DStackAllocatorPopFrame(uint64_t a1)
{
  if (!*(a1 + 576))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DStackAllocatorPopFrame_cold_1(v2);
    }
  }

  v3 = *(a1 + 576) - 1;
  v4 = a1 + 16 * v3;
  v7 = *(v4 + 64);
  v5 = v4 + 64;
  v6 = v7;
  *(a1 + 576) = v3;
  v8 = *(v5 + 8);
  *(v7 + 12) = v8;
  v9 = a1 + 24;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 == v9;
  }

  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v6 + 16);
  }

  result = __destroyChuncks(a1, v11);
  if (v6 == v9 && *(a1 + 56) > v11[1])
  {
    MEMORY[0x21CF08CF0](*MEMORY[0x277D85F48], *v11);
    result = __allocateChunk(v11, *(a1 + 56));
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  return result;
}

uint64_t __destroyChuncks(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (v3 == a2)
  {
    v7 = *(result + 16);
  }

  else
  {
    v5 = result + 24;
    v6 = MEMORY[0x277D85F48];
    do
    {
      v7 = *(v3 + 16);
      result = MEMORY[0x21CF08CF0](*v6, *v3, *(v3 + 8));
      if (v3 != v5)
      {
        result = MEMORY[0x21CF07610](v3, 0x1030C40D5FA72FALL);
      }

      v3 = v7;
    }

    while (v7 != a2);
  }

  *(v2 + 16) = v7;
  return result;
}

void C3DCullingContextForcePushGeometryRenderableElementsToVisible(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = &a1[a2 + 307];
  v4 = a3[14].i16[0];
  v5 = a3[14].i16[1];
  v6 = a3[13].i32[3];
  v7 = a3[14].i32[1] + (v6 << 17 >> 31);
  if ((v6 & 0x8000) != 0)
  {
    if (C3DEngineContextIsWarmUp(a1[296].i64[0]))
    {
      if ((*(v3 + 8) + v7) > *(v3 + 12))
      {
        v10 = scn_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          C3D::ScenePass::_shouldPushNodeToVisible(v10, v11, v12, v13, v14, v15, v16, v17);
        }
      }

      v18 = *(v3 + 8);
      if (v7)
      {
        v19 = 0;
        v20 = (*v3 + 4 * v18);
        do
        {
          *v20 = v4;
          v20[1] = v5 + v19++;
          v20 += 2;
        }

        while (v7 != v19);
      }

      v21 = v18 + v7;
      *(v3 + 8) = v21;
      v22 = a3[14].i64[1];
      v23 = *v22;
      if (*v22)
      {
        v24 = 0;
        do
        {
          v25 = a3[14].i64[1] + 12 * v24;
          v26 = *(v25 + 12);
          v27 = *(v25 + 14);
          v28 = *(v25 + 16);
          if ((v21 + v28) > *(v3 + 12))
          {
            v29 = scn_default_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              C3DCullingContextForcePushGeometryRenderableElementsToVisible_cold_2(&buf, (buf.i64 + 4), v29);
            }
          }

          v30 = *(v3 + 8);
          if (v28)
          {
            v31 = 0;
            v32 = (*v3 + 4 * v30);
            do
            {
              *v32 = v26;
              v32[1] = v27 + v31++;
              v32 += 2;
            }

            while (v28 != v31);
          }

          v21 = v30 + v28;
          *(v3 + 8) = v21;
          ++v24;
        }

        while (v24 != v23);
      }

      return;
    }

    v33 = a3[14].i64[1];
    v34 = *v33;
    if (*(v33 + 2))
    {
      memset(&buf, 0, sizeof(buf));
      C3DGetBoundingSphere(a3, 0, &buf);
      v63 = 0uLL;
      WorldMatrix = C3DNodeGetWorldMatrix(a3);
      C3DSphereXFormMatrix4x4(&buf, WorldMatrix, &v63);
      v62 = vaddq_f32(vaddq_f32(v63, vmulq_laneq_f32(a1[299], v63, 3)), vmulq_laneq_f32(a1[300], v63, 3));
      v61.i32[2] = 0;
      v61.i64[0] = 0;
      v60.i32[2] = 0;
      v60.i64[0] = 0;
      v59 = v63;
      C3DMatrix4x4Project(a1 + 303, &v59, &v61);
      C3DMatrix4x4Project(a1 + 303, &v62, &v60);
      v36 = vsubq_f32(v61, v60);
      v37 = vmulq_f32(v36, v36);
      v38 = sqrtf(v37.f32[2] + vaddv_f32(*v37.f32)) * 0.5;
      Viewport = C3DEngineContextGetViewport(a1[296].i64[0]);
      LODWORD(v39) = 0;
      Viewport.n128_u32[0] = Viewport.n128_u32[3];
      if (Viewport.n128_f32[2] > Viewport.n128_f32[3])
      {
        Viewport.n128_f32[0] = Viewport.n128_f32[2];
      }

      v41 = Viewport.n128_f32[0] * v38;
      if (v33[2] < v41)
      {
        goto LABEL_37;
      }

      if (v34 >= 2)
      {
        v42 = v33 + 5;
        v39 = 1;
        while (*v42 >= v41)
        {
          ++v39;
          v42 += 3;
          if (v34 == v39)
          {
            LODWORD(v39) = v34;
            goto LABEL_37;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      buf.i32[2] = 0;
      buf.i64[0] = 0;
      C3DNodeGetWorldPosition(a3, &buf);
      LODWORD(v39) = 0;
      v43 = vmulq_f32(buf, a1[298]);
      v44 = COERCE_FLOAT(HIDWORD(*&a1[298])) + (v43.f32[2] + vaddv_f32(*v43.f32));
      if (v44 < 0.0)
      {
        v44 = 0.0;
      }

      if (v33[2] > v44)
      {
        goto LABEL_37;
      }

      if (v34 >= 2)
      {
        LODWORD(v39) = v34;
        v45 = v33 + 5;
        v46 = 1;
        while (*v45 <= v44)
        {
          ++v46;
          v45 += 3;
          if (v34 == v46)
          {
            goto LABEL_37;
          }
        }

        LODWORD(v39) = v46;
        goto LABEL_37;
      }
    }

    LODWORD(v39) = 1;
LABEL_37:
    if (v39 >= 1)
    {
      v47 = a3[14].i64[1] + 12 * v39;
      v4 = *v47;
      v5 = *(v47 + 2);
      v7 = *(v47 + 4);
    }
  }

  if ((*(v3 + 8) + v7) > *(v3 + 12))
  {
    v48 = scn_default_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      C3D::ScenePass::_shouldPushNodeToVisible(v48, v49, v50, v51, v52, v53, v54, v55);
    }
  }

  v56 = *(v3 + 8);
  if (v7)
  {
    v57 = 0;
    v58 = (*v3 + 4 * v56);
    do
    {
      *v58 = v4;
      v58[1] = v5 + v57++;
      v58 += 2;
    }

    while (v7 != v57);
  }

  *(v3 + 8) = v56 + v7;
}

void C3DHandlesSequenceAppend(uint64_t a1, __int16 a2, __int16 a3, int a4)
{
  if ((*(a1 + 8) + a4) > *(a1 + 12))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3D::ScenePass::_shouldPushNodeToVisible(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a1 + 8);
  if (a4)
  {
    v17 = 0;
    v18 = (*a1 + 4 * v16);
    do
    {
      *v18 = a2;
      v18[1] = v17++ + a3;
      v18 += 2;
    }

    while (a4 != v17);
  }

  *(a1 + 8) = v16 + a4;
}

uint64_t __shouldPushRenderableElementsToVisible(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 4096;
  v7 = *(a3 + 220);
  if ((v7 & 0x1000) != 0)
  {
    *(a1 + 5008) = 1;
    if ((*(a1 + 4688) & 1) != 0 || *(a1 + 4680))
    {
      return 0;
    }

    v7 = *(a3 + 220);
    if ((v7 & 0x80) == 0)
    {
      return 1;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    return 1;
  }

  if ((v7 & 0x4000) == 0)
  {
    return 0;
  }

  result = 1;
  *(v6 + 912) = 1;
  if (*(a1 + 4672) != a3)
  {
    if (C3DFXPassGetMaterial(*(a1 + 4656)))
    {
      return 1;
    }

    v9 = C3DGetScene(a3);
    RegisteredCIFilterTechniqueForNode = C3DSceneGetRegisteredCIFilterTechniqueForNode(v9, a3);
    if (RegisteredCIFilterTechniqueForNode)
    {
      ParentTechnique = C3DFXTechniqueGetParentTechnique(RegisteredCIFilterTechniqueForNode);
      v12 = *(a3 + 224);
      v13 = *(a3 + 226);
      v14 = *(a3 + 228);
      if (!ParentTechnique || (result = C3DFXTechniqueIsBeingRendered(ParentTechnique), result))
      {
        v15 = a1 + 16 * a2 + 4912;
        if ((*(v15 + 8) + 1) > *(v15 + 12))
        {
          v16 = scn_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            C3D::ScenePass::_shouldPushNodeToVisible(v16, v17, v18, v19, v20, v21, v22, v23);
          }
        }

        result = 0;
        v24 = *(v15 + 8);
        v25 = (*v15 + 4 * v24);
        *v25 = v12;
        v25[1] = v13 + v14 - 1;
        *(v15 + 8) = v24 + 1;
      }
    }

    else
    {
      if (__shouldPushRenderableElementsToVisible_done)
      {
        return 0;
      }

      __shouldPushRenderableElementsToVisible_done = 1;
      v26 = scn_default_log();
      result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      if (result)
      {
        __shouldPushRenderableElementsToVisible_cold_2(v26, v27, v28, v29, v30, v31, v32, v33);
        return 0;
      }
    }
  }

  return result;
}

uint64_t C3DCullingContextPushRenderableElementsToVisible(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  if (a1[294].i64[1] & a3[13].i64[0] | ((a1[294].i64[0] & a3[13].i64[0]) == 0))
  {
    return 0;
  }

  v8 = a1 + 256;
  if (a1[293].i8[2] == 1 && (a3[13].i8[14] & 0x40) == 0)
  {
    return 0;
  }

  if (a1[293].i8[3] == 1 && (a3[13].i8[14] & 0x40) != 0)
  {
    return 0;
  }

  v9 = a3[14].i32[1];
  if (!v9)
  {
    return 0;
  }

  v10 = a3[14].i16[0];
  v11 = a3[14].i16[1];
  if (C3DNodeIsHiddenOrTransparent(a3))
  {
    return 1;
  }

  v12 = a3[13].i32[3];
  if ((v12 & 0x1000) == 0)
  {
    if ((v12 & 0x4000) != 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    C3DCullingContextForcePushGeometryRenderableElementsToVisible(a1, a2, a3);
    return 0;
  }

  v8[57].i8[0] = 1;
  if ((v8[37].i8[0] & 1) != 0 || a1[292].i64[1])
  {
    return 0;
  }

  if ((a3[13].i32[3] & 0x4000) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v8[57].i8[0] = 1;
  if (a1[292].i64[0] == a3 || C3DFXPassGetMaterial(a1[291].i64[0]))
  {
    goto LABEL_22;
  }

  v13 = C3DGetScene(a3);
  RegisteredCIFilterTechniqueForNode = C3DSceneGetRegisteredCIFilterTechniqueForNode(v13, a3);
  if (RegisteredCIFilterTechniqueForNode)
  {
    ParentTechnique = C3DFXTechniqueGetParentTechnique(RegisteredCIFilterTechniqueForNode);
    if (!ParentTechnique || C3DFXTechniqueIsBeingRendered(ParentTechnique))
    {
      v16 = &a1[a2];
      v3 = 1;
      C3DHandlesSequenceAppend(&v16[307], v10, v11 + v9 - 1, 1);
      return v3;
    }

    return 1;
  }

  v3 = 1;
  if ((C3DCullingContextPushRenderableElementsToVisible_done & 1) == 0)
  {
    C3DCullingContextPushRenderableElementsToVisible_done = 1;
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __shouldPushRenderableElementsToVisible_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
      return 1;
    }
  }

  return v3;
}

uint64_t __CullInside(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  result = C3DCullingContextPushRenderableElementsToVisible(a1, a2, a3);
  if (!result)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ____CullInside_block_invoke;
    v7[3] = &__block_descriptor_tmp_84;
    v7[4] = a1;
    v7[5] = a2;
    return C3DNodeApplyChildren(a3, v7);
  }

  return result;
}

uint64_t __Cull(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  if (C3DNodeIsAlwaysRendered(a3))
  {
    v6 = 2;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    result = C3DNodeComputeHierarchicalBoundingBox(a3, 0, &v15);
    if ((result & 1) == 0)
    {
      return result;
    }

    v9 = &a1[6 * a2];
    v10 = v9[4];
    v14[2] = v9[3];
    v14[3] = v10;
    v11 = v9[6];
    v14[4] = v9[5];
    v14[5] = v11;
    v12 = v9[2];
    v14[0] = v9[1];
    v14[1] = v12;
    result = scn_frustum_classify_aabb(v14, v15, v16);
    v6 = result;
    if (result == 1)
    {
      return result;
    }
  }

  result = C3DCullingContextPushRenderableElementsToVisible(a1, a2, a3);
  if (!result)
  {
    if (v6 == 2)
    {
      result = C3DNodeHasChildren(a3);
      if (result)
      {
        for (i = a3[4].i64[1]; i; i = *(i + 80))
        {
          result = __Cull(a1, a2, i);
        }
      }
    }

    else if (!v6)
    {
      result = C3DNodeHasChildren(a3);
      if (result)
      {
        for (j = a3[4].i64[1]; j; j = j[5].i64[0])
        {
          result = __CullInside(a1, a2, j);
        }
      }
    }
  }

  return result;
}

uint64_t C3DGetPovCategoryMask(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  Camera = C3DNodeGetCamera(a1);
  if (!Camera)
  {
    return -1;
  }

  return C3DCameraGetCategoryBitMask(Camera);
}

double C3DCullingContextSetupLOD(uint64_t a1, __n128 *a2)
{
  PointOfViewForCulling = C3DEngineContextGetPointOfViewForCulling(a2);
  if (PointOfViewForCulling)
  {
    v6 = PointOfViewForCulling;
    WorldMatrix = C3DNodeGetWorldMatrix(PointOfViewForCulling);
    v8 = WorldMatrix[2];
    v9 = WorldMatrix[3];
    v10 = vnegq_f32(v8);
    v11 = vmulq_f32(v9, v10);
    v10.f32[3] = -(v11.f32[2] + vaddv_f32(*v11.f32));
    v12 = *WorldMatrix;
    v13 = WorldMatrix[1];
    *(a1 + 4768) = v10;
    *(a1 + 4784) = v12;
    *(a1 + 4800) = v13;
    *(a1 + 4816) = v8;
    *(a1 + 4832) = v9;
    Viewport = C3DEngineContextGetViewport(a2);
    memset(v32, 0, sizeof(v32));
    if ((C3DNodeGetProjectionInfos(v6, v32) & 1) == 0)
    {
      v14 = scn_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        C3DCullingContextSetupLOD_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    if ((v32[0] & 2) != 0 || C3DEngineContextGetAutoAdjustZRange(a2))
    {
      C3DAdjustZRangeOfProjectionInfos(v32, v6, &Viewport, *(a1 + 4728));
    }

    if (*(a1 + 4694) == 1)
    {
      *(v32 + 8) = *(a1 + 4744);
    }

    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a2);
    Matrix = C3DProjectionInfosGetMatrix(v32, &Viewport, CoordinatesSystemOptions);
    v30 = *(Matrix + 1);
    v31 = *Matrix;
    v28 = *(Matrix + 3);
    v29 = *(Matrix + 2);
    v39 = __invert_f4(*(a1 + 4784));
    v24 = 0;
    v34 = v39;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    do
    {
      *(&v35 + v24 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*&v34.columns[v24])), v30, *v34.columns[v24].f32, 1), v29, v34.columns[v24], 2), v28, v34.columns[v24], 3);
      ++v24;
    }

    while (v24 != 4);
    result = *&v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    *(a1 + 4848) = v35;
    *(a1 + 4864) = v25;
    *(a1 + 4880) = v26;
    *(a1 + 4896) = v27;
  }

  return result;
}

double C3DCullingContextSetupViewAndViewProjMatricesForCubemapRendering(float32x4_t *a1)
{
  v1 = 0;
  v2 = a1 + 193;
  v3 = a1 + 169;
  v4 = a1 + 217;
  v5 = a1 + 241;
  do
  {
    v6 = &v4[4 * v1];
    if (v1)
    {
      v7 = v4[1];
      *v6 = *v4;
      v6[1] = v7;
      v8 = v4[3];
      v6[2] = v4[2];
      v6[3] = v8;
    }

    v24 = __invert_f4(*v3[4 * v1].f32);
    v9 = 0;
    *v2[4 * v1].f32 = v24;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v19 = v24;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    do
    {
      *(&v20 + v9 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*&v19.columns[v9])), v11, *v19.columns[v9].f32, 1), v12, v19.columns[v9], 2), v13, v19.columns[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    f32 = v5[4 * v1].f32;
    result = *&v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    *f32 = v20;
    f32[1] = v16;
    f32[2] = v17;
    f32[3] = v18;
    ++v1;
  }

  while (v1 != 6);
  return result;
}

void __setupCubeMapRendering(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a2);
  memset(v39, 0, sizeof(v39));
  if (C3DNodeGetProjectionInfos(a3, v39))
  {
    if (CoordinatesSystemOptions)
    {
      if ((CoordinatesSystemOptions & 8) != 0)
      {
        v26 = *(v39 + 1);
        if (*&v39[1] > *(v39 + 1))
        {
          v27 = *&v39[1];
        }

        else
        {
          v27 = *(v39 + 1) + 1.0;
        }

        v28 = __tanpi(0.25);
        v29 = 0;
        if (v28 == 0.0)
        {
          v30 = 1.0;
        }

        else
        {
          v30 = 1.0 / v28;
        }

        v31 = v30;
        v32 = v31;
        LODWORD(v33) = 0;
        *(&v33 + 1) = v31;
        *&v34 = 0;
        *&v35 = v27 / (v26 - v27);
        *(&v34 + 1) = __PAIR64__(-1.0, v35);
        *&v36 = v26 * v27 / (v26 - v27);
        *&v37 = 0;
        *(&v37 + 1) = v36;
        v40[0] = LODWORD(v32);
        v40[1] = v33;
        v40[2] = v34;
        v40[3] = v37;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        do
        {
          *(&v41 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(v40[v29])), xmmword_21C27F8C0, *&v40[v29], 1), xmmword_21C27F900, v40[v29], 2), xmmword_21C27FDD0, v40[v29], 3);
          ++v29;
        }

        while (v29 != 4);
        v13 = v41;
        v14 = v42;
        v17 = v43;
        v12 = v44;
        goto LABEL_28;
      }

      v19 = *(v39 + 1);
      if (*&v39[1] > *(v39 + 1))
      {
        v20 = *&v39[1];
      }

      else
      {
        v20 = *(v39 + 1) + 1.0;
      }

      v21 = __tanpi(0.25);
      if (v21 == 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 1.0 / v21;
      }

      *&v23 = v22;
      v13 = v23;
      LODWORD(v14) = 0;
      *(&v14 + 1) = 0;
      DWORD1(v14) = v23;
      *&v12 = 0;
      HIDWORD(v12) = 0;
      v15 = v19 - v20;
      *&v17 = 0;
      *&v24 = v20 / (v19 - v20);
      *(&v17 + 1) = __PAIR64__(-1.0, v24);
      v18 = v19 * v20;
    }

    else
    {
      v7 = *(v39 + 1);
      if (*&v39[1] > *(v39 + 1))
      {
        v8 = *&v39[1];
      }

      else
      {
        v8 = *(v39 + 1) + 1.0;
      }

      v9 = __tanpi(0.25);
      if (v9 == 0.0)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 1.0 / v9;
      }

      *&v11 = v10;
      *&v12 = 0;
      HIDWORD(v12) = 0;
      v13 = v11;
      LODWORD(v14) = 0;
      *(&v14 + 1) = 0;
      DWORD1(v14) = v11;
      v15 = v7 - v8;
      *&v16 = (v7 + v8) / (v7 - v8);
      *&v17 = 0;
      *(&v17 + 1) = __PAIR64__(-1.0, v16);
      v18 = (v7 + v7) * v8;
    }

    v25 = v18 / v15;
    *(&v12 + 2) = v25;
LABEL_28:
    *(a1 + 3472) = v13;
    *(a1 + 3488) = v14;
    *(a1 + 3504) = v17;
    *(a1 + 3520) = v12;
    *(v41.n128_u64 + 4) = 0;
    v41.n128_u32[0] = 0;
    C3DNodeGetWorldPosition(a3, &v41);
    v38 = v41;
    *(a1 + 2704) = xmmword_21C27F600;
    *(a1 + 2720) = xmmword_21C27F8C0;
    *(a1 + 2736) = xmmword_21C2A3E40;
    v38.n128_u32[3] = 1.0;
    *(a1 + 2752) = v38;
    *(a1 + 2768) = xmmword_21C2A3E50;
    *(a1 + 2784) = xmmword_21C27F8C0;
    *(a1 + 2800) = xmmword_21C27F910;
    *(a1 + 2816) = v38;
    *(a1 + 2832) = xmmword_21C27F910;
    *(a1 + 2848) = xmmword_21C27F600;
    *(a1 + 2864) = xmmword_21C2A3E60;
    *(a1 + 2880) = v38;
    *(a1 + 2896) = xmmword_21C27F910;
    *(a1 + 2912) = xmmword_21C2A3E50;
    *(a1 + 2928) = xmmword_21C27F8C0;
    *(a1 + 2944) = v38;
    *(a1 + 2960) = xmmword_21C27F910;
    *(a1 + 2976) = xmmword_21C27F8C0;
    *(a1 + 2992) = xmmword_21C27F600;
    *(a1 + 3008) = v38;
    *(a1 + 3024) = xmmword_21C2A3E40;
    *(a1 + 3040) = xmmword_21C27F8C0;
    *(a1 + 3056) = xmmword_21C2A3E50;
    *(a1 + 3072) = v38;
    *(a1 + 4640) = C3DEngineContextGetViewportAtIndex(a2, 0);
    *(a1 + 4744) = *(v39 + 8);
    C3DCullingContextSetupViewAndViewProjMatricesForCubemapRendering(a1);
  }
}

void C3DCullingContextSetupMatricesToIdentity(uint64_t a1)
{
  for (i = 0; i != 384; i += 64)
  {
    C3DMatrix4x4MakeIdentity(a1 + i + 592);
    C3DMatrix4x4MakeIdentity(a1 + i + 976);
    C3DMatrix4x4MakeIdentity(a1 + i + 1360);
    C3DMatrix4x4MakeIdentity(a1 + i + 1744);
    C3DMatrix4x4MakeIdentity(a1 + i + 2704);
    C3DMatrix4x4MakeIdentity(a1 + i + 3088);
    C3DMatrix4x4MakeIdentity(a1 + i + 3472);
    C3DMatrix4x4MakeIdentity(a1 + i + 3856);
  }
}

__n128 C3DCullingContextSetupPointOfViewMatrices(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v8 = a1 + 4096;
  v9 = *(a1 + 4697);
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a2);
  if ((*(v8 + 600) & 1) == 0 && v9 == 2)
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    memset(&v126, 0, sizeof(v126));
    if ((C3DNodeGetProjectionInfos(a3, &v126) & 1) == 0)
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        C3DCullingContextSetupLOD_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    if ((v126.columns[0].i8[0] & 2) != 0 || C3DEngineContextGetAutoAdjustZRange(a2))
    {
      C3DAdjustZRangeOfProjectionInfos(&v126, a3, a1 + 4640, *(a1 + 4728));
    }

    v18 = &v126.columns[0].i64[1];
    if (*(v8 + 598))
    {
      v19 = (v8 + 648);
    }

    else
    {
      v19 = &v126.columns[0].i64[1];
    }

    if (!*(v8 + 598))
    {
      v18 = (v8 + 648);
    }

    *v18 = *v19;
    *(v8 + 599) = (v126.columns[0].i8[0] & 0x20) != 0;
    v20 = (a1 + 3472);
    Matrix = C3DProjectionInfosGetMatrix(&v126, (a1 + 4640), CoordinatesSystemOptions);
    v22 = *(Matrix + 2);
    v23 = *(Matrix + 3);
    v24 = *(Matrix + 1);
    *(a1 + 3472) = *Matrix;
    *(a1 + 3520) = v23;
    *(a1 + 3504) = v22;
    *(a1 + 3488) = v24;
    v25 = (a1 + 2704);
    C3DNodeComputeWorldMatrix(a3, a1 + 2704);
    if (a3 == a4)
    {
      v66 = *(a1 + 2720);
      *(a1 + 592) = *v25;
      *(a1 + 608) = v66;
      v67 = *(a1 + 2752);
      *(a1 + 624) = *(a1 + 2736);
      *(a1 + 640) = v67;
      v68 = *(a1 + 3488);
      *(a1 + 1360) = *v20;
      *(a1 + 1376) = v68;
      result = *(a1 + 3504);
      v69 = *(a1 + 3520);
      *(a1 + 1392) = result;
      *(a1 + 1408) = v69;
    }

    else
    {
      if ((C3DNodeGetProjectionInfos(a4, &v126) & 1) == 0)
      {
        v26 = scn_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          C3DCullingContextSetupLOD_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
        }
      }

      if ((v126.columns[0].i8[0] & 2) != 0 || C3DEngineContextGetAutoAdjustZRange(a2))
      {
        C3DAdjustZRangeOfProjectionInfos(&v126, a3, a1 + 4640, *(a1 + 4728));
      }

      *(v8 + 648) = *(v126.columns + 8);
      v34 = C3DProjectionInfosGetMatrix(&v126, (a1 + 4640), CoordinatesSystemOptions);
      v35 = *(v34 + 2);
      v36 = *(v34 + 3);
      v37 = *(v34 + 1);
      *(a1 + 1360) = *v34;
      *(a1 + 1408) = v36;
      *(a1 + 1392) = v35;
      *(a1 + 1376) = v37;
      result.n128_u64[0] = C3DNodeComputeWorldMatrix(a4, a1 + 592).n128_u64[0];
    }

    if (*(v8 + 532) >= 2u)
    {
      v70 = a1 + 2768;
      v71 = 1;
      do
      {
        v72 = *v20;
        v73 = *(a1 + 3488);
        v74 = *(a1 + 3520);
        *(v70 + 800) = *(a1 + 3504);
        *(v70 + 816) = v74;
        *(v70 + 768) = v72;
        *(v70 + 784) = v73;
        result = *v25;
        v75 = *(a1 + 2720);
        v76 = *(a1 + 2752);
        *(v70 + 32) = *(a1 + 2736);
        *(v70 + 48) = v76;
        *v70 = result;
        *(v70 + 16) = v75;
        v70 += 64;
        ++v71;
      }

      while (v71 < *(v8 + 532));
    }

    return result;
  }

  EyeCount = C3DEngineContextGetEyeCount(a2);
  *(v8 + 532) = EyeCount;
  v117 = a1;
  if (!v9)
  {
LABEL_40:
    if (EyeCount)
    {
      v77 = 0;
      v78 = a1 + 3472;
      do
      {
        EyeMatrix4x4 = C3DEngineContextGetEyeMatrix4x4(a2, 1, v77);
        v80 = a1 + 3088 + (v77 << 6);
        v81 = EyeMatrix4x4[3];
        v83 = *EyeMatrix4x4;
        v82 = EyeMatrix4x4[1];
        *(v80 + 32) = EyeMatrix4x4[2];
        *(v80 + 48) = v81;
        *v80 = v83;
        *(v80 + 16) = v82;
        v84 = C3DEngineContextGetEyeMatrix4x4(a2, 0, v77);
        v86 = *v84;
        v85 = v84[1];
        v87 = v84[2];
        v88 = v84[3];
        if ((CoordinatesSystemOptions & 8) != 0)
        {
          v89 = 0;
          v137 = *v84;
          v138 = v85;
          v139 = v87;
          v140 = v88;
          memset(&v126, 0, sizeof(v126));
          do
          {
            v126.columns[v89 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v137 + v89 * 4))), xmmword_21C27F8C0, *&v137.f32[v89], 1), xmmword_21C27F900, *(&v137 + v89 * 4), 2), xmmword_21C27FDD0, *(&v137 + v89 * 4), 3);
            v89 += 4;
          }

          while (v89 != 16);
          v86 = v126.columns[0];
          v85 = v126.columns[1];
          v87 = v126.columns[2];
          v88 = v126.columns[3];
        }

        *(v78 + (v77 << 6)) = v86;
        v90 = (v78 + (v77 << 6));
        v90[1] = v85;
        v90[2] = v87;
        v90[3] = v88;
        v91 = a1 + 2704 + (v77 << 6);
        *v91 = __invert_f4(*v80);
        v92 = (a1 + 592 + (v77 << 6));
        v93 = *(v91 + 16);
        *v92 = *v91;
        v92[1] = v93;
        v94 = *(v91 + 48);
        v92[2] = *(v91 + 32);
        v92[3] = v94;
        v95 = (a1 + 1360 + (v77 << 6));
        v96 = *v90;
        v97 = v90[1];
        v98 = v90[3];
        v95[2] = v90[2];
        v95[3] = v98;
        *v95 = v96;
        v95[1] = v97;
        ++v77;
      }

      while (v77 < *(v8 + 532));
    }

    goto LABEL_50;
  }

  if (v9 != 1)
  {
    if (*(v8 + 600) != 1)
    {
      v99 = scn_default_log();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        C3DCullingContextSetupPointOfViewMatrices_cold_3(v99, v100, v101, v102, v103, v104, v105, v106);
      }

      goto LABEL_50;
    }

    goto LABEL_40;
  }

  memset(&v125, 0, sizeof(v125));
  C3DNodeComputeWorldMatrix(a3, &v125);
  v141 = __invert_f4(v125);
  v122 = v141.columns[1];
  v123 = v141.columns[0];
  v120 = v141.columns[3];
  v121 = v141.columns[2];
  if (*(v8 + 532))
  {
    v40 = 0;
    v41 = a1 + 3472;
    v119 = a1 + 3088;
    v118 = a1 + 2704;
    v42 = a1 + 592;
    v43 = a1 + 1360;
    do
    {
      v44 = C3DEngineContextGetEyeMatrix4x4(a2, 0, v40);
      v46 = *v44;
      v45 = v44[1];
      v47 = v44[2];
      v48 = v44[3];
      if ((CoordinatesSystemOptions & 8) != 0)
      {
        v49 = 0;
        v137 = *v44;
        v138 = v45;
        v139 = v47;
        v140 = v48;
        memset(&v126, 0, sizeof(v126));
        do
        {
          v126.columns[v49 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v137 + v49 * 4))), xmmword_21C27F8C0, *&v137.f32[v49], 1), xmmword_21C27F900, *(&v137 + v49 * 4), 2), xmmword_21C27FDD0, *(&v137 + v49 * 4), 3);
          v49 += 4;
        }

        while (v49 != 16);
        v46 = v126.columns[0];
        v45 = v126.columns[1];
        v47 = v126.columns[2];
        v48 = v126.columns[3];
      }

      *(v41 + (v40 << 6)) = v46;
      v50 = (v41 + (v40 << 6));
      v50[1] = v45;
      v50[2] = v47;
      v50[3] = v48;
      v51 = C3DEngineContextGetEyeMatrix4x4(a2, 1, v40);
      v52 = 0;
      v53 = *v51;
      v54 = v51[1];
      v55 = v51[2];
      v56 = v51[3];
      v137 = v123;
      v138 = v122;
      v139 = v121;
      v140 = v120;
      memset(&v126, 0, sizeof(v126));
      do
      {
        v126.columns[v52 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*(&v137 + v52 * 4))), v54, *&v137.f32[v52], 1), v55, *(&v137 + v52 * 4), 2), v56, *(&v137 + v52 * 4), 3);
        v52 += 4;
      }

      while (v52 != 16);
      v142 = v126;
      v57 = (v119 + (v40 << 6));
      *v57 = v126.columns[0];
      v57[1] = v142.columns[1];
      v57[2] = v142.columns[2];
      v57[3] = v142.columns[3];
      v58 = v118 + (v40 << 6);
      *v58 = __invert_f4(v142);
      v59 = (v42 + (v40 << 6));
      v60 = *(v58 + 16);
      *v59 = *v58;
      v59[1] = v60;
      v61 = *(v58 + 48);
      v59[2] = *(v58 + 32);
      v59[3] = v61;
      v62 = (v43 + (v40 << 6));
      v63 = *v50;
      v64 = v50[1];
      v65 = v50[3];
      v62[2] = v50[2];
      v62[3] = v65;
      *v62 = v63;
      v62[1] = v64;
      ++v40;
    }

    while (v40 < *(v8 + 532));
  }

LABEL_50:
  v117[290] = C3DEngineContextGetViewportAtIndex(a2, 0);
  v107.i32[0] = v117[219].n128_i32[2];
  v108 = v107.f32[0];
  v109 = v117[220].n128_f32[2];
  v110 = v109;
  if (v117[219].n128_f32[3] == 0.0)
  {
    v111 = (v110 + -1.0) / v108;
    v112 = (v110 + 1.0) / v108;
    *&v112 = v112;
    v113 = -(1.0 - v110) / v108;
    if (v109 < -1.0)
    {
      v114 = v113;
    }

    else
    {
      v114 = v111;
    }

    *&v113 = v109 / v107.f32[0];
    if (v109 < -1.0)
    {
      v113 = v112;
    }
  }

  else
  {
    v115 = v109 < -2.0;
    v107.f32[0] = v109 / v107.f32[0];
    v116 = v110 / (v108 + 1.0);
    v113 = v110 / (v108 + -1.0);
    *&v113 = v113;
    v114 = v116;
    if (!v115)
    {
      v113 = *&v107;
    }
  }

  v107.f32[0] = v114;
  result = vcvtq_f64_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v113, v107), 0), vrev64_s32(__PAIR64__(v107.u32[0], LODWORD(v113))), __PAIR64__(v107.u32[0], LODWORD(v113))));
  *(v8 + 648) = result;
  return result;
}

void C3DCullingContextSetupCullingMatricesAndPlanes(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a1;
  v7 = (a1 + 4096);
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a2);
  if (v7[535] == 1)
  {
    v268 = v7[536];
  }

  else
  {
    v268 = 0;
  }

  v269 = v6;
  if (v7[532])
  {
    v10 = 0;
    v11 = v6 + 2704;
    v12 = v6 + 3088;
    v270 = v6 + 3856;
    v272 = v6 + 3472;
    v13 = v6 + 2128;
    do
    {
      v14 = v12;
      v15 = v11;
      if (v7[535])
      {
        if (v7[536])
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

        if (v7[536])
        {
          v15 = v11;
        }

        else
        {
          v15 = v12;
        }
      }

      *(v14 + (v10 << 6)) = __invert_f4(*(v15 + (v10 << 6)));
      v16 = v272 + (v10 << 6);
      if (a5)
      {
        if (C3DEngineContextIsJitteringEnabled(a2))
        {
          JitteringStep = C3DEngineContextGetJitteringStep(a2);
          v280 = 0u;
          v281 = 0u;
          v278 = 0u;
          v279 = 0u;
          C3DEngineContextComputeJitterMatrix(a2, JitteringStep, &v278);
          v18 = 0;
          v19 = v278;
          v20 = v279;
          v21 = v280;
          v22 = v281;
          v23 = *(v16 + 16);
          v24 = *(v16 + 32);
          v25 = *(v16 + 48);
          v282.columns[0] = *v16;
          v282.columns[1] = v23;
          v282.columns[2] = v24;
          v282.columns[3] = v25;
          v283 = 0u;
          v284 = 0u;
          v285 = 0u;
          v286 = 0u;
          do
          {
            *(&v283 + v18 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*&v282.columns[v18])), v20, *v282.columns[v18].f32, 1), v21, v282.columns[v18], 2), v22, v282.columns[v18], 3);
            ++v18;
          }

          while (v18 != 4);
          v26 = v284;
          v27 = v285;
          v28 = v286;
          *v16 = v283;
          *(v16 + 16) = v26;
          *(v16 + 32) = v27;
          *(v16 + 48) = v28;
        }

        if (C3DEngineContextIsTemporalAntialiasingEnabled(a2))
        {
          TAAJitter = C3DEngineContextGetTAAJitter(a2, 0);
          v30 = *(v16 + 48);
          *&v31 = vadd_f32(TAAJitter, *v30.i8);
          *(&v31 + 1) = vextq_s8(v30, v30, 8uLL).u64[0];
          *(v16 + 48) = v31;
        }
      }

      v32 = 0;
      v33 = *v16;
      v34 = *(v16 + 16);
      v35 = *(v16 + 32);
      v36 = *(v16 + 48);
      v37 = (v12 + (v10 << 6));
      v38 = v37[1];
      v39 = v37[2];
      v40 = v37[3];
      v282.columns[0] = *v37;
      v282.columns[1] = v38;
      v282.columns[2] = v39;
      v282.columns[3] = v40;
      v283 = 0u;
      v284 = 0u;
      v285 = 0u;
      v286 = 0u;
      do
      {
        *(&v283 + v32 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*&v282.columns[v32])), v34, *v282.columns[v32].f32, 1), v35, v282.columns[v32], 2), v36, v282.columns[v32], 3);
        ++v32;
      }

      while (v32 != 4);
      v41 = (v270 + (v10 << 6));
      v42 = v283;
      v43 = v284;
      v45 = v285;
      v44 = v286;
      *v41 = v283;
      v41[1] = v43;
      v41[2] = v45;
      v41[3] = v44;
      v46 = v13 + 96 * v10;
      v47.f32[0] = *&v42.i32[3] - *v42.i32;
      v48 = vextq_s8(v44, v44, 8uLL).u64[0];
      v49 = vextq_s8(v45, v45, 8uLL).u64[0];
      v50 = vzip2_s32(v49, v48);
      v51 = vzip1_s32(*v45.i8, *v44.i8);
      v47.f32[1] = *&v43.i32[3] - *v43.i32;
      *&v47.u32[2] = vsub_f32(v50, v51);
      v52 = vmulq_f32(v47, v47);
      *&v53 = v52.f32[2] + vaddv_f32(*v52.f32);
      *v52.f32 = vrsqrte_f32(v53);
      *v52.f32 = vmul_f32(*v52.f32, vrsqrts_f32(v53, vmul_f32(*v52.f32, *v52.f32)));
      v54 = vmulq_n_f32(v47, vmul_f32(*v52.f32, vrsqrts_f32(v53, vmul_f32(*v52.f32, *v52.f32))).f32[0]);
      v52.f32[0] = *&v42.i32[3] + *v42.i32;
      v52.f32[1] = *&v43.i32[3] + *v43.i32;
      *&v52.u32[2] = vadd_f32(v50, v51);
      v55 = vmulq_f32(v52, v52);
      *&v56 = v55.f32[2] + vaddv_f32(*v55.f32);
      *v55.f32 = vrsqrte_f32(v56);
      *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
      *v46 = v54;
      *(v46 + 16) = vmulq_n_f32(v52, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]);
      v52.f32[0] = *&v42.i32[3] + *&v42.i32[1];
      *v57.f32 = vzip2_s32(*v45.i8, *v44.i8);
      v52.f32[1] = *&v43.i32[3] + *&v43.i32[1];
      *&v52.u32[2] = vadd_f32(v50, *v57.f32);
      v58 = vmulq_f32(v52, v52);
      *&v59 = v58.f32[2] + vaddv_f32(*v58.f32);
      *v58.f32 = vrsqrte_f32(v59);
      *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32)));
      v60 = vmulq_n_f32(v52, vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32))).f32[0]);
      v54.f32[0] = *&v42.i32[3] - *&v42.i32[1];
      v54.f32[1] = *&v43.i32[3] - *&v43.i32[1];
      *&v54.u32[2] = vsub_f32(v50, *v57.f32);
      v61 = vmulq_f32(v54, v54);
      v55.f32[0] = v61.f32[2] + vaddv_f32(*v61.f32);
      *v61.f32 = vrsqrte_f32(v55.u32[0]);
      *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v55.u32[0], vmul_f32(*v61.f32, *v61.f32)));
      v57.f32[0] = *&v42.i32[3] - *&v42.i32[2];
      v62 = vzip1_s32(v49, v48);
      v57.f32[1] = *&v43.i32[3] - *&v43.i32[2];
      *&v57.u32[2] = vsub_f32(v50, v62);
      v63 = vmulq_f32(v57, v57);
      *&v64 = v63.f32[2] + vaddv_f32(*v63.f32);
      *(v46 + 32) = v60;
      *(v46 + 48) = vmulq_n_f32(v54, vmul_f32(*v61.f32, vrsqrts_f32(v55.u32[0], vmul_f32(*v61.f32, *v61.f32))).f32[0]);
      *v63.f32 = vrsqrte_f32(v64);
      *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32)));
      *(v46 + 64) = vmulq_n_f32(v57, vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
      v65 = (v46 + 64);
      if (CoordinatesSystemOptions)
      {
        v66.i64[0] = vzip2q_s32(v42, v43).u64[0];
        v66.i64[1] = __PAIR64__(v44.u32[2], v45.u32[2]);
      }

      else
      {
        v66.f32[0] = *&v42.i32[3] + *&v42.i32[2];
        v66.f32[1] = *&v43.i32[3] + *&v43.i32[2];
        *&v66.u32[2] = vadd_f32(v50, v62);
      }

      v67 = (v46 + 80);
      if ((CoordinatesSystemOptions & 8) != 0)
      {
        *v67 = *v65;
      }

      else
      {
        v65 = v67;
      }

      v68 = vmulq_f32(v66, v66);
      *&v69 = v68.f32[2] + vaddv_f32(*v68.f32);
      *v68.f32 = vrsqrte_f32(v69);
      *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32)));
      *v65 = vmulq_n_f32(v66, vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32))).f32[0]);
      ++v10;
      v70 = v7[532];
    }

    while (v10 < v70);
    v71 = v7 + 600;
    v72 = v7[600];
    if (v72)
    {
      v6 = v269;
      if (v70 == 2)
      {
        goto LABEL_38;
      }

LABEL_33:
      v73 = scn_default_log();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        C3DCullingContextSetupCullingMatricesAndPlanes_cold_1(v73, v74, v75, v76, v77, v78, v79, v80);
      }

      goto LABEL_38;
    }

    v6 = v269;
  }

  else
  {
    v71 = v7 + 600;
    v72 = v7[600];
    if (v72)
    {
      goto LABEL_33;
    }

    LODWORD(v70) = 0;
  }

  if (v268)
  {
LABEL_38:
    *(v6 + 4624) = 1;
LABEL_39:
    v81 = 0;
    v82 = v6 + 976;
    v83 = v6 + 1744;
    v84 = v6 + 1360;
    v265 = v6 + 3472;
    v266 = v6 + 3088;
    v271 = v6 + 3856;
    v263 = (v6 + 3408);
    v264 = (v6 + 3024);
    v273 = v6 + 16;
    v275 = v6 + 592;
    v267 = v6 + 2128;
    __asm { FMOV            V0.4S, #1.0 }

    v262 = HIDWORD(_Q0);
    while (1)
    {
      v90 = (v83 + (v81 << 6));
      if (a3 == a4)
      {
        if (v268)
        {
          v100 = 0;
          v101 = (v275 + (v81 << 6));
          v102 = *v264;
          v103 = v264[1];
          v104 = v264[3];
          v101[2] = v264[2];
          v101[3] = v104;
          *v101 = v102;
          v101[1] = v103;
          v105 = (v82 + (v81 << 6));
          v106 = v263[3];
          v108 = *v263;
          v107 = v263[1];
          v105[2] = v263[2];
          v105[3] = v106;
          *v105 = v108;
          v105[1] = v107;
          v109 = *(v6 + 4752);
          v110 = -v109;
          v111 = v109;
          v112 = v109 > 0.0 ? v109 : v110 + 1.0;
          *&v113 = 2.0 / (v111 - v110);
          v114 = v113;
          v115.i32[0] = 0;
          v115.i64[1] = 0;
          v115.i32[1] = v113;
          v116 = v110 - v112;
          *&v117 = 1.0 / (v110 - v112);
          v118.i64[0] = 0;
          v118.i64[1] = v117;
          v119 = -(v110 + v111) / (v111 - v110);
          v121.f32[0] = v119;
          v121.f32[1] = v119;
          *&v120 = v110 / v116;
          v121.i64[1] = __PAIR64__(v262, v120);
          v122 = (v84 + (v81 << 6));
          *v122 = v114.u32[0];
          v122[1] = v115.u64[0];
          v122[2] = v118;
          v122[3] = v121;
          v123 = v105[1];
          v124 = v105[2];
          v125 = v105[3];
          v282.columns[0] = *v105;
          v282.columns[1] = v123;
          v282.columns[2] = v124;
          v282.columns[3] = v125;
          v283 = 0u;
          v284 = 0u;
          v285 = 0u;
          v286 = 0u;
          do
          {
            *(&v283 + v100 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, COERCE_FLOAT(*&v282.columns[v100])), v115, *v282.columns[v100].f32, 1), v118, v282.columns[v100], 2), v121, v282.columns[v100], 3);
            ++v100;
          }

          while (v100 != 4);
          v126 = v284;
          v127 = v285;
          v128 = v286;
          *v90 = v283;
          v90[1] = v126;
          v90[2] = v127;
          v90[3] = v128;
        }

        else
        {
          v129 = (v266 + (v81 << 6));
          v130 = v129[1];
          v131 = (v82 + (v81 << 6));
          *v131 = *v129;
          v131[1] = v130;
          v132 = v129[3];
          v131[2] = v129[2];
          v131[3] = v132;
          v133 = (v84 + (v81 << 6));
          v134 = (v265 + (v81 << 6));
          v135 = v134[1];
          *v133 = *v134;
          v133[1] = v135;
          v136 = v134[3];
          v133[2] = v134[2];
          v133[3] = v136;
          v137 = (v271 + (v81 << 6));
          v138 = *v137;
          v139 = v137[1];
          v140 = v137[3];
          v90[2] = v137[2];
          v90[3] = v140;
          *v90 = v138;
          v90[1] = v139;
        }
      }

      else
      {
        v287 = __invert_f4(*(v275 + (v81 << 6)));
        v91 = 0;
        *(v82 + (v81 << 6)) = v287;
        v92 = (v84 + (v81 << 6));
        v93 = *v92;
        v94 = v92[1];
        v95 = v92[2];
        v96 = v92[3];
        v282 = v287;
        v283 = 0u;
        v284 = 0u;
        v285 = 0u;
        v286 = 0u;
        do
        {
          *(&v283 + v91 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*&v282.columns[v91])), v94, *v282.columns[v91].f32, 1), v95, v282.columns[v91], 2), v96, v282.columns[v91], 3);
          ++v91;
        }

        while (v91 != 4);
        v97 = v284;
        v98 = v285;
        v99 = v286;
        *v90 = v283;
        v90[1] = v97;
        v90[2] = v98;
        v90[3] = v99;
        v6 = v269;
      }

      if (*v71 != 1)
      {
        break;
      }

      if (v81)
      {
        v141 = v81 - 1;
        v142 = (v271 + ((v81 - 1) << 6));
        v143 = (v271 + (v81 << 6));
        v145 = *v142;
        v144 = *(v142 + 1);
        v146 = *(v142 + 2);
        v147 = *(v142 + 3);
        v148 = *v143;
        v149 = v143[1];
        v151 = v143[2];
        v150 = v143[3];
        v152 = *&v147.i32[3];
        v153 = *(&v150 + 3) - *&v150;
        LODWORD(v154) = HIDWORD(*v142);
        v9.i32[0] = HIDWORD(*v143);
        v155 = *(&v149 + 3);
        v156 = *(&v151 + 3);
        if ((*&v147.i32[3] - *v147.i32) >= (*(&v150 + 3) - *&v150))
        {
          v153 = *&v147.i32[3] - *v147.i32;
          LODWORD(v152) = HIDWORD(v143[3]);
          v157 = *&v151;
          LODWORD(v158) = HIDWORD(v143[2]);
          v159 = *&v149;
          LODWORD(v160) = HIDWORD(v143[1]);
          LODWORD(v161) = *v143;
          LODWORD(v162) = HIDWORD(*v143);
          LODWORD(v151) = v142[2];
          LODWORD(v156) = HIDWORD(v142[2]);
          LODWORD(v149) = v144.i32[0];
          LODWORD(v155) = HIDWORD(v142[1]);
          LODWORD(v148) = *v142;
          v9.i32[0] = HIDWORD(*v142);
        }

        else
        {
          LODWORD(v150) = v147.i32[0];
          LODWORD(v157) = v142[2];
          LODWORD(v158) = HIDWORD(v142[2]);
          v159 = v144.f32[0];
          LODWORD(v160) = HIDWORD(v142[1]);
          LODWORD(v161) = *v142;
          LODWORD(v162) = HIDWORD(*v142);
        }

        v190 = (v267 + 96 * v141);
        v191 = vextq_s8(v147, v147, 8uLL).u64[0];
        v192 = vextq_s8(v146, v146, 8uLL).u64[0];
        v193 = vzip2_s32(v192, v191);
        v9.f32[0] = v9.f32[0] - *&v148;
        v9.f32[1] = v155 - *&v149;
        v9.f32[2] = v156 - *&v151;
        v194 = vzip1_s32(v192, v191);
        v195 = vmulq_f32(v9, v9);
        v9.f32[3] = v153;
        v195.f32[0] = v195.f32[2] + vaddv_f32(*v195.f32);
        v197 = vrsqrte_f32(v195.u32[0]);
        v198 = vmul_f32(v197, vrsqrts_f32(v195.u32[0], vmul_f32(v197, v197)));
        v199 = vmulq_n_f32(v9, vmul_f32(v198, vrsqrts_f32(v195.u32[0], vmul_f32(v198, v198))).f32[0]);
        v195.f32[0] = v161 + v162;
        v200 = *&v150 + v152;
        v195.f32[1] = v159 + v160;
        v195.f32[2] = v157 + v158;
        v201 = vmulq_f32(v195, v195);
        v195.f32[3] = v200;
        v201.f32[0] = v201.f32[2] + vaddv_f32(*v201.f32);
        v202 = vrsqrte_f32(v201.u32[0]);
        *v203.f32 = vmul_f32(v202, vrsqrts_f32(v201.u32[0], vmul_f32(v202, v202)));
        v204.f32[0] = v154 + v145.f32[1];
        v205 = vzip2_s32(*v146.i8, *v147.i8);
        v204.f32[1] = v144.f32[3] + v144.f32[1];
        *&v204.u32[2] = vadd_f32(v193, v205);
        *v190 = v199;
        v190[1] = vmulq_n_f32(v195, vmul_f32(*v203.f32, vrsqrts_f32(v201.u32[0], vmul_f32(*v203.f32, *v203.f32))).f32[0]);
        v206 = vmulq_f32(v204, v204);
        v203.f32[0] = v206.f32[2] + vaddv_f32(*v206.f32);
        *v206.f32 = vrsqrte_f32(v203.u32[0]);
        *v206.f32 = vmul_f32(*v206.f32, vrsqrts_f32(v203.u32[0], vmul_f32(*v206.f32, *v206.f32)));
        v207 = vmulq_n_f32(v204, vmul_f32(*v206.f32, vrsqrts_f32(v203.u32[0], vmul_f32(*v206.f32, *v206.f32))).f32[0]);
        v203.f32[0] = v154 - v145.f32[1];
        v203.f32[1] = v144.f32[3] - v144.f32[1];
        *&v203.u32[2] = vsub_f32(v193, v205);
        v208 = vmulq_f32(v203, v203);
        v201.f32[0] = v208.f32[2] + vaddv_f32(*v208.f32);
        *v208.f32 = vrsqrte_f32(v201.u32[0]);
        *v208.f32 = vmul_f32(*v208.f32, vrsqrts_f32(v201.u32[0], vmul_f32(*v208.f32, *v208.f32)));
        v209 = vmulq_n_f32(v203, vmul_f32(*v208.f32, vrsqrts_f32(v201.u32[0], vmul_f32(*v208.f32, *v208.f32))).f32[0]);
        v203.f32[0] = v154 - v145.f32[2];
        v203.f32[1] = v144.f32[3] - v144.f32[2];
        *&v203.u32[2] = vsub_f32(v193, v194);
        v190[2] = v207;
        v190[3] = v209;
        v210 = vmulq_f32(v203, v203);
        v207.f32[0] = v210.f32[2] + vaddv_f32(*v210.f32);
        *v210.f32 = vrsqrte_f32(v207.u32[0]);
        *v210.f32 = vmul_f32(*v210.f32, vrsqrts_f32(v207.u32[0], vmul_f32(*v210.f32, *v210.f32)));
        v211 = v190 + 5;
        v190[4] = vmulq_n_f32(v203, vmul_f32(*v210.f32, vrsqrts_f32(v207.u32[0], vmul_f32(*v210.f32, *v210.f32))).f32[0]);
        v212 = v190 + 4;
        v213.f32[0] = v154 + v145.f32[2];
        v214 = v144.f32[3] + v144.f32[2];
        if (CoordinatesSystemOptions)
        {
          v213.f32[0] = v145.f32[2];
          v214 = v144.f32[2];
        }

        if ((CoordinatesSystemOptions & 8) != 0)
        {
          v144 = *v212;
          *v211 = *v212;
        }

        else
        {
          v212 = v211;
        }

        v144.i32[0] = 0;
        v145.i32[0] = CoordinatesSystemOptions & 1;
        v213.f32[1] = v214;
        *&v213.u32[2] = vbsl_s8(vdup_lane_s32(vceq_s32(*v145.f32, *v144.f32), 0), vadd_f32(v193, v194), v194);
        v215 = vmulq_f32(v213, v213);
        *&v216 = v215.f32[2] + vaddv_f32(*v215.f32);
        *v215.f32 = vrsqrte_f32(v216);
        *v215.f32 = vmul_f32(*v215.f32, vrsqrts_f32(v216, vmul_f32(*v215.f32, *v215.f32)));
        *v212 = vmulq_n_f32(v213, vmul_f32(*v215.f32, vrsqrts_f32(v216, vmul_f32(*v215.f32, *v215.f32))).f32[0]);
        v217 = (v83 + (v141 << 6));
        v219 = *v217;
        v218 = *(v217 + 1);
        v220 = *(v217 + 2);
        v221 = *(v217 + 3);
        v222 = *v90;
        v223 = v90[1];
        v225 = v90[2];
        v224 = v90[3];
        v226 = *&v221.i32[3];
        v227 = *&v224.i32[3] - *v224.i32;
        LODWORD(v228) = HIDWORD(*v217);
        v9.i32[0] = HIDWORD(*v90);
        v229 = *&v223.i32[3];
        v230 = *&v225.i32[3];
        if ((*&v221.i32[3] - *v221.i32) >= (*&v224.i32[3] - *v224.i32))
        {
          v227 = *&v221.i32[3] - *v221.i32;
          LODWORD(v226) = HIDWORD(*&v90[3]);
          v231 = *v225.i32;
          LODWORD(v232) = HIDWORD(*&v90[2]);
          v233 = *v223.i32;
          LODWORD(v234) = HIDWORD(*&v90[1]);
          LODWORD(v235) = *v90;
          LODWORD(v236) = HIDWORD(*v90);
          v225.i32[0] = v217[2];
          LODWORD(v230) = HIDWORD(v217[2]);
          v223.i32[0] = v218.i32[0];
          LODWORD(v229) = HIDWORD(v217[1]);
          v222.i32[0] = *v217;
          v9.i32[0] = HIDWORD(*v217);
        }

        else
        {
          v224.i32[0] = v221.i32[0];
          LODWORD(v231) = v217[2];
          LODWORD(v232) = HIDWORD(v217[2]);
          v233 = v218.f32[0];
          LODWORD(v234) = HIDWORD(v217[1]);
          LODWORD(v235) = *v217;
          LODWORD(v236) = HIDWORD(*v217);
        }

        v237 = (v273 + 96 * v141);
        v238 = vextq_s8(v221, v221, 8uLL).u64[0];
        v239 = vextq_s8(v220, v220, 8uLL).u64[0];
        v240 = vzip2_s32(v239, v238);
        v9.f32[0] = v9.f32[0] - *v222.i32;
        v9.f32[1] = v229 - *v223.i32;
        v9.f32[2] = v230 - *v225.i32;
        v241 = vzip1_s32(v239, v238);
        v242 = vmulq_f32(v9, v9);
        v9.f32[3] = v227;
        v242.f32[0] = v242.f32[2] + vaddv_f32(*v242.f32);
        v243 = vrsqrte_f32(v242.u32[0]);
        v244 = vmul_f32(v243, vrsqrts_f32(v242.u32[0], vmul_f32(v243, v243)));
        v245 = vmulq_n_f32(v9, vmul_f32(v244, vrsqrts_f32(v242.u32[0], vmul_f32(v244, v244))).f32[0]);
        v242.f32[0] = v235 + v236;
        v246 = *v224.i32 + v226;
        v242.f32[1] = v233 + v234;
        v242.f32[2] = v231 + v232;
        v247 = vmulq_f32(v242, v242);
        v242.f32[3] = v246;
        v247.f32[0] = v247.f32[2] + vaddv_f32(*v247.f32);
        v248 = vrsqrte_f32(v247.u32[0]);
        *v249.f32 = vmul_f32(v248, vrsqrts_f32(v247.u32[0], vmul_f32(v248, v248)));
        v250.f32[0] = v228 + v219.f32[1];
        v251 = vzip2_s32(*v220.i8, *v221.i8);
        v250.f32[1] = v218.f32[3] + v218.f32[1];
        *&v250.u32[2] = vadd_f32(v240, v251);
        *v237 = v245;
        v237[1] = vmulq_n_f32(v242, vmul_f32(*v249.f32, vrsqrts_f32(v247.u32[0], vmul_f32(*v249.f32, *v249.f32))).f32[0]);
        v252 = vmulq_f32(v250, v250);
        v249.f32[0] = v252.f32[2] + vaddv_f32(*v252.f32);
        *v252.f32 = vrsqrte_f32(v249.u32[0]);
        *v252.f32 = vmul_f32(*v252.f32, vrsqrts_f32(v249.u32[0], vmul_f32(*v252.f32, *v252.f32)));
        v253 = vmulq_n_f32(v250, vmul_f32(*v252.f32, vrsqrts_f32(v249.u32[0], vmul_f32(*v252.f32, *v252.f32))).f32[0]);
        v249.f32[0] = v228 - v219.f32[1];
        v249.f32[1] = v218.f32[3] - v218.f32[1];
        *&v249.u32[2] = vsub_f32(v240, v251);
        v254 = vmulq_f32(v249, v249);
        v247.f32[0] = v254.f32[2] + vaddv_f32(*v254.f32);
        *v254.f32 = vrsqrte_f32(v247.u32[0]);
        *v254.f32 = vmul_f32(*v254.f32, vrsqrts_f32(v247.u32[0], vmul_f32(*v254.f32, *v254.f32)));
        v255 = vmulq_n_f32(v249, vmul_f32(*v254.f32, vrsqrts_f32(v247.u32[0], vmul_f32(*v254.f32, *v254.f32))).f32[0]);
        v249.f32[0] = v228 - v219.f32[2];
        v249.f32[1] = v218.f32[3] - v218.f32[2];
        *&v249.u32[2] = vsub_f32(v240, v241);
        v237[2] = v253;
        v237[3] = v255;
        v256 = vmulq_f32(v249, v249);
        v253.f32[0] = v256.f32[2] + vaddv_f32(*v256.f32);
        *v256.f32 = vrsqrte_f32(v253.u32[0]);
        *v256.f32 = vmul_f32(*v256.f32, vrsqrts_f32(v253.u32[0], vmul_f32(*v256.f32, *v256.f32)));
        v257 = v237 + 5;
        v237[4] = vmulq_n_f32(v249, vmul_f32(*v256.f32, vrsqrts_f32(v253.u32[0], vmul_f32(*v256.f32, *v256.f32))).f32[0]);
        v187 = v237 + 4;
        v258 = v228 + v219.f32[2];
        if (CoordinatesSystemOptions)
        {
          v188.f32[0] = v219.f32[2];
        }

        else
        {
          v188.f32[0] = v258;
        }

        if (CoordinatesSystemOptions)
        {
          v259 = v218.f32[2];
        }

        else
        {
          v259 = v218.f32[3] + v218.f32[2];
        }

        if ((CoordinatesSystemOptions & 8) != 0)
        {
          v218 = *v187;
          *v257 = *v187;
        }

        else
        {
          v187 = v257;
        }

        v218.i32[0] = 0;
        v219.i32[0] = CoordinatesSystemOptions & 1;
        v188.f32[1] = v259;
        *&v188.u32[2] = vbsl_s8(vdup_lane_s32(vceq_s32(*v219.f32, *v218.f32), 0), vadd_f32(v240, v241), v241);
        goto LABEL_81;
      }

LABEL_82:
      if (++v81 >= (*(v6 + 4624) + *v71))
      {
        return;
      }
    }

    v163 = (v273 + 96 * v81);
    v164 = *v90;
    v165 = v90[1];
    v167 = v90[2];
    v166 = v90[3];
    LODWORD(v168) = HIDWORD(*v90);
    v169.f32[0] = v168 - COERCE_FLOAT(*v90);
    v170 = vextq_s8(v166, v166, 8uLL).u64[0];
    v171 = vextq_s8(v167, v167, 8uLL).u64[0];
    v172 = vzip2_s32(v171, v170);
    v173 = vzip1_s32(*v167.i8, *v166.i8);
    v169.f32[1] = *&v165.i32[3] - *v165.i32;
    *&v169.u32[2] = vsub_f32(v172, v173);
    v174 = vmulq_f32(v169, v169);
    *&v175 = v174.f32[2] + vaddv_f32(*v174.f32);
    *v174.f32 = vrsqrte_f32(v175);
    *v174.f32 = vmul_f32(*v174.f32, vrsqrts_f32(v175, vmul_f32(*v174.f32, *v174.f32)));
    v176 = vmulq_n_f32(v169, vmul_f32(*v174.f32, vrsqrts_f32(v175, vmul_f32(*v174.f32, *v174.f32))).f32[0]);
    v174.f32[0] = v168 + COERCE_FLOAT(*v90);
    v174.f32[1] = *&v165.i32[3] + *v165.i32;
    *&v174.u32[2] = vadd_f32(v172, v173);
    v177 = vmulq_f32(v174, v174);
    *&v178 = v177.f32[2] + vaddv_f32(*v177.f32);
    *v177.f32 = vrsqrte_f32(v178);
    *v177.f32 = vmul_f32(*v177.f32, vrsqrts_f32(v178, vmul_f32(*v177.f32, *v177.f32)));
    *v163 = v176;
    v163[1] = vmulq_n_f32(v174, vmul_f32(*v177.f32, vrsqrts_f32(v178, vmul_f32(*v177.f32, *v177.f32))).f32[0]);
    v174.f32[0] = v168 + *&v164.i32[1];
    *v179.f32 = vzip2_s32(*v167.i8, *v166.i8);
    v174.f32[1] = *&v165.i32[3] + *&v165.i32[1];
    *&v174.u32[2] = vadd_f32(v172, *v179.f32);
    v180 = vmulq_f32(v174, v174);
    *&v181 = v180.f32[2] + vaddv_f32(*v180.f32);
    *v180.f32 = vrsqrte_f32(v181);
    *v180.f32 = vmul_f32(*v180.f32, vrsqrts_f32(v181, vmul_f32(*v180.f32, *v180.f32)));
    v182 = vmulq_n_f32(v174, vmul_f32(*v180.f32, vrsqrts_f32(v181, vmul_f32(*v180.f32, *v180.f32))).f32[0]);
    v176.f32[0] = v168 - *&v164.i32[1];
    v176.f32[1] = *&v165.i32[3] - *&v165.i32[1];
    *&v176.u32[2] = vsub_f32(v172, *v179.f32);
    v183 = vmulq_f32(v176, v176);
    v177.f32[0] = v183.f32[2] + vaddv_f32(*v183.f32);
    *v183.f32 = vrsqrte_f32(v177.u32[0]);
    *v183.f32 = vmul_f32(*v183.f32, vrsqrts_f32(v177.u32[0], vmul_f32(*v183.f32, *v183.f32)));
    v179.f32[0] = v168 - *&v164.i32[2];
    v184 = vzip1_s32(v171, v170);
    v179.f32[1] = *&v165.i32[3] - *&v165.i32[2];
    *&v179.u32[2] = vsub_f32(v172, v184);
    v185 = vmulq_f32(v179, v179);
    *&v186 = v185.f32[2] + vaddv_f32(*v185.f32);
    v163[2] = v182;
    v163[3] = vmulq_n_f32(v176, vmul_f32(*v183.f32, vrsqrts_f32(v177.u32[0], vmul_f32(*v183.f32, *v183.f32))).f32[0]);
    *v185.f32 = vrsqrte_f32(v186);
    *v185.f32 = vmul_f32(*v185.f32, vrsqrts_f32(v186, vmul_f32(*v185.f32, *v185.f32)));
    v163[4] = vmulq_n_f32(v179, vmul_f32(*v185.f32, vrsqrts_f32(v186, vmul_f32(*v185.f32, *v185.f32))).f32[0]);
    v187 = v163 + 4;
    if (CoordinatesSystemOptions)
    {
      v188.i64[0] = vzip2q_s32(v164, v165).u64[0];
      v188.i64[1] = __PAIR64__(v166.u32[2], v167.u32[2]);
    }

    else
    {
      v188.f32[0] = v168 + *&v164.i32[2];
      v188.f32[1] = *&v165.i32[3] + *&v165.i32[2];
      *&v188.u32[2] = vadd_f32(v172, v184);
    }

    v189 = v163 + 5;
    if ((CoordinatesSystemOptions & 8) != 0)
    {
      *v189 = *v187;
    }

    else
    {
      v187 = v189;
    }

LABEL_81:
    v260 = vmulq_f32(v188, v188);
    *&v261 = v260.f32[2] + vaddv_f32(*v260.f32);
    *v260.f32 = vrsqrte_f32(v261);
    *v260.f32 = vmul_f32(*v260.f32, vrsqrts_f32(v261, vmul_f32(*v260.f32, *v260.f32)));
    *v187 = vmulq_n_f32(v188, vmul_f32(*v260.f32, vrsqrts_f32(v261, vmul_f32(*v260.f32, *v260.f32))).f32[0]);
    goto LABEL_82;
  }

  *(v6 + 4624) = v70;
  if (v70 + v72)
  {
    goto LABEL_39;
  }
}

void C3DCullingContextSetupMirrorMatrices(uint64_t a1, float32x4_t *a2)
{
  v3 = a1 + 4096;
  memset(v6, 0, sizeof(v6));
  C3DComputeMirrorMatrix(*(a1 + 4728), a2, v6);
  if (*(v3 + 532))
  {
    v4 = 0;
    v5 = a1 + 2704;
    do
    {
      C3DMatrix4x4Mult(v5, v6, v5);
      C3DMatrix4x4Mult(v5 - 2112, v6, (v5 - 2112));
      if (*(v3 + 600) == 1)
      {
        *(v5 + 384) = __invert_f4(*v5);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < *(v3 + 532));
  }
}

void C3DCullingContextSetupMirrorFrustumPlanes(uint64_t a1, float32x4_t *a2)
{
  v8.n128_u32[2] = 0;
  v8.n128_u64[0] = 0;
  C3DSceneGetUpAxis(*(a1 + 4728), &v8);
  v7 = 0uLL;
  C3DComputeMirrorPlane(a2, &v8, &v7);
  v4 = *(a1 + 4628);
  if (*(a1 + 4628))
  {
    v5 = v7;
    v6 = (a1 + 96);
    do
    {
      *v6 = v5;
      v6 += 6;
      --v4;
    }

    while (v4);
  }
}

double C3DCullingContextInitialize(__n128 *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *&v53[5] = *MEMORY[0x277D85DE8];
  v8 = a1 + 256;
  Scene = C3DEngineContextGetScene(a2);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene);
  FXContext = C3DEngineContextGetFXContext(a2);
  v50 = *(a3 + 5104);
  v11 = *a3;
  a1[296].n128_u64[0] = a2;
  v8[37].n128_u8[4] = C3DEngineContextIsWarmUp(a2);
  a1->n128_u64[0] = EnginePipeline;
  v51 = a2;
  a1[295].n128_u64[1] = C3DEngineContextGetScene(a2);
  v12 = *(a3 + 24);
  v8[33].n128_u8[4] = v12;
  v8[33].n128_u8[7] = *(a3 + 27);
  v8[37].n128_u8[6] = 0;
  if (v12)
  {
    v13 = 0;
    v14 = a3 + 32;
    v15 = &a1[307].n128_u32[3];
    do
    {
      if (*(v14 + 8 * v13))
      {
        v16 = scn_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          C3DCullingContextInitialize_cold_1(buf, v53, v16);
        }
      }

      CullingData = C3DFXContextCreateCullingData(FXContext, a4);
      *(v14 + 8 * v13) = CullingData;
      *(v15 - 3) = C3DArrayGetValuesPtr(CullingData);
      *(v15 - 1) = 0;
      *v15 = a4;
      ++v13;
      v15 += 4;
    }

    while (v13 < v8[33].n128_u8[4]);
  }

  v8[33].n128_u8[8] = *(a3 + 26);
  a1[291].n128_u64[0] = v11;
  if (v11)
  {
    v18 = C3DFXPassRequiresLighting(v11);
  }

  else
  {
    v18 = 0;
  }

  v8[37].n128_u8[5] = v18;
  v8[57].n128_u8[0] = 0;
  v8[33].n128_u8[6] = v11[30].n128_u8[0];
  v8[37].n128_u16[4] = 512;
  RootNode = C3DFXPassGetRootNode(v11);
  a1[292].n128_u64[0] = RootNode;
  if (!RootNode)
  {
    v20 = Scene;
    if (!Scene)
    {
      v21 = scn_default_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);
      v20 = 0;
      if (v22)
      {
        C3DSceneCreateHitTestResultsWithSegment_cold_1(v21, v23, v24, v25, v26, v27, v28, v29);
        v20 = 0;
      }
    }

    a1[292].n128_u64[0] = C3DSceneGetRootNode(v20);
  }

  a1[292].n128_u64[1] = v50;
  if (C3DFXPassGetHasCustomViewport(v11))
  {
    Viewport = C3DFXPassGetViewport(v11);
  }

  else
  {
    Viewport = C3DEngineContextGetViewport(v51);
  }

  a1[290] = Viewport;
  PointOfView = C3DFXPassGetPointOfView(v11);
  v32 = PointOfView;
  if (!PointOfView)
  {
    PointOfView = C3DEngineContextGetPointOfViewForCulling(v51);
    v32 = C3DEngineContextGetPointOfView(v51);
  }

  v8[37].n128_u8[1] = C3DFXPassGetDrawOnlyShadowCaster(v11);
  v33 = a1[292].n128_u64[1];
  ForceJitteringOff = C3DFXPassGetForceJitteringOff(*a3);
  if (!a1[295].n128_u64[1])
  {
    v35 = scn_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      C3DCullingContextInitialize_cold_3(v35, v36, v37, v38, v39, v40, v41, v42);
      if (v32)
      {
        goto LABEL_23;
      }

LABEL_34:
      C3DCullingContextSetupMatricesToIdentity(a1);
      goto LABEL_35;
    }
  }

  if (!v32)
  {
    goto LABEL_34;
  }

LABEL_23:
  if (v8[33].n128_u8[8] == 1)
  {
    __setupCubeMapRendering(a1, v51, v32);
  }

  else
  {
    Light = C3DNodeGetLight(v32);
    if (Light && C3DLightGetCastsShadow(Light) && v8[37].n128_u8[1] == 1)
    {
      LightingSystem = C3DSceneGetLightingSystem(a1[295].n128_i64[1]);
      CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v51);
      C3DLightingSystemComputeShadowMatrices(LightingSystem, v32, &a1[169], &a1[217], 0, 0, 0, CoordinatesSystemOptions);
    }

    else
    {
      C3DCullingContextSetupPointOfViewMatrices(a1, v51, v32, PointOfView);
    }
  }

  if (v33)
  {
    C3DCullingContextSetupMirrorMatrices(a1, v33);
    C3DCullingContextSetupCullingMatricesAndPlanes(a1, v51, v32, PointOfView, ForceJitteringOff ^ 1);
    C3DCullingContextSetupMirrorFrustumPlanes(a1, v33);
  }

  else
  {
    C3DCullingContextSetupCullingMatricesAndPlanes(a1, v51, v32, PointOfView, ForceJitteringOff ^ 1);
  }

LABEL_35:
  a1[295].n128_u64[0] = C3DEngineContextGetAuthoringEnvironment(v51, 0);
  v8[37].n128_u8[0] = C3DFXPassGetIgnoreInifiniteFloor(v11);
  a1[294].n128_u64[0] = C3DFXPassGetIncludeCategoryMask(v11);
  if (v50)
  {
    Floor = C3DNodeGetFloor(v50);
    if (Floor)
    {
      a1[294].n128_u64[0] &= C3DFloorGetReflectionCategoryBitMask(Floor);
    }
  }

  a1[294].n128_u64[0] &= C3DGetPovCategoryMask(PointOfView);
  a1[294].n128_u64[1] = C3DFXPassGetExcludeCategoryMask(v11);
  v8[37].n128_u16[1] = 0;
  a1[313].n128_u64[1] = __shouldPushRenderableElementsToVisible;
  if (v32)
  {
    v47 = C3DNodeGetLight(v32);
    if (v47)
    {
      if (C3DLightGetType(v47) == 4)
      {
        v8[37].n128_u16[1] = 256;
      }
    }
  }

  return C3DCullingContextSetupLOD(a1, v51);
}

uint64_t C3DCullingContextCull(uint64_t a1)
{
  C3DEngineContextGetFrameIndex(*(a1 + 4736));
  kdebug_trace();
  Stats = C3DEngineContextGetStats(*(a1 + 4736));
  v3 = CACurrentMediaTime();
  v4 = *(a1 + 4672);
  RootNode = C3DSceneGetRootNode(*(a1 + 4728));
  if (*(a1 + 4624))
  {
    v6 = RootNode;
    v7 = 0;
    do
    {
      if (*(a1 + 4692) == 1)
      {
        if (v4 == v6)
        {
          for (i = 0; i != 4; ++i)
          {
            if ((*(a1 + 4630) >> i))
            {
              LayerRootNode = C3DSceneGetLayerRootNode(*(a1 + 4728), i);
              if (LayerRootNode)
              {
                __CullInside(a1, v7, LayerRootNode);
              }
            }
          }
        }

        else
        {
          __CullInside(a1, 0, *(a1 + 4672));
        }
      }

      else if (v4 == v6)
      {
        CullingSystem = C3DSceneGetCullingSystem(*(a1 + 4728));
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 0x40000000;
        v13[2] = __C3DCullingContextCull_block_invoke;
        v13[3] = &__block_descriptor_tmp_6_5;
        v13[4] = a1;
        v13[5] = v7;
        C3DCullingSystemQueryMake(v13, &v14);
        v14 = *(a1 + 4704);
        if (*(a1 + 4690))
        {
          v11 = 3;
        }

        else
        {
          v11 = 1;
        }

        DWORD1(v15) = v11;
        if (*(a1 + 4691) == 1)
        {
          DWORD1(v15) = v11 | 4;
        }

        if (*(a1 + 4689) == 1)
        {
          LODWORD(v15) = 8;
        }

        DWORD2(v15) = *(a1 + 4630);
        C3DCullingSystemCull(CullingSystem);
      }

      else
      {
        __Cull(a1, 0, *(a1 + 4672));
      }

      ++v7;
    }

    while (v7 < *(a1 + 4624));
  }

  *(Stats + 104) = *(Stats + 104) + CACurrentMediaTime() - v3;
  C3DEngineContextGetFrameIndex(*(a1 + 4736));
  return kdebug_trace();
}

void __C3DCullingContextCull_block_invoke(uint64_t a1, float32x4_t **a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if ((*(*(a1 + 32) + 5016))())
      {
        C3DCullingContextForcePushGeometryRenderableElementsToVisible(*(a1 + 32), *(a1 + 40), *a2);
      }

      ++a2;
      --v3;
    }

    while (v3);
  }
}

void C3D::DOFBlurCoCXPass::DOFBlurCoCXPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC84C0;
  v5[14] = a4;
}

double C3D::DOFBlurCoCXPass::setup(C3D::DOFBlurCoCXPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = (*(*this + 88))(this);
  v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  v3[8] = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  v3[9] = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  v3[14] = 115;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v4[8] = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  result = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  v4[9] = result;
  v4[14] = 115;
  return result;
}

uint64_t C3D::DOFBlurCoCXPass::compile(C3D::DOFBlurCoCXPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v3);
  *(this + 15) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::DOFBlurCoCXPass::execute(C3D::Pass *this, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = *(this + 14);
  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  if ((*a2)->_buffers[0] == v6)
  {
    if (v3->_offsets[0] == v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3->_buffers[0] = v6;
  }

  v3->_offsets[0] = v5;
  v3->_buffersToBind[0] |= 1uLL;
LABEL_5:
  v7 = C3D::Pass::inputTextureAtIndex(this, 0);
  if (v3->_textures[0] != v7)
  {
    v3->_textures[0] = v7;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v8 = C3D::Pass::outputTextureAtIndex(this, 0);
  if (v3->_textures[1] != v8)
  {
    v3->_textures[1] = v8;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v9 = C3D::Pass::outputTextureAtIndex(this, 0);
  v10 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(this + 15) + 16);
  v11 = [(SCNMTLOpenSubdivComputeEvaluator *)v10 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v9, v11);
}

void C3D::DOFBlurCoCXPassResource::~DOFBlurCoCXPassResource(C3D::DOFBlurCoCXPassResource *this)
{
  *this = &unk_282DC8530;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC8530;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t C3DFXMetalProgramGetTypeID()
{
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  return C3DFXMetalProgramGetTypeID_typeID;
}

CFHashCode C3DFXMetalProgramUpdateHashWithCommonProfileHashCode(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramUpdateHashWithCommonProfileHashCode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = CFHash(cf);
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * result) ^ ((0x9DDFEA08EB382D69 * result) >> 47));
  *(a1 + 168) = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
  return result;
}

uint64_t C3DFXMetalProgramGetHash(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  if (v2 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[21];
}

uint64_t C3DFXMetalProgramCreateFromLibrary(const void *a1, const void *a2, int a3, const void *a4, const void *a5)
{
  v10 = C3DFXMetalProgramCreate();
  v11 = *(v10 + 80);
  if (v11 != a1)
  {
    if (v11)
    {
      CFRelease(v11);
      *(v10 + 80) = 0;
    }

    if (a1)
    {
      v12 = CFRetain(a1);
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 80) = v12;
  }

  v13 = *(v10 + 88);
  if (v13 != a2)
  {
    if (v13)
    {
      CFRelease(v13);
      *(v10 + 88) = 0;
    }

    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    *(v10 + 88) = v14;
  }

  v15 = *(v10 + 96);
  if (v15)
  {
    CFRelease(v15);
    *(v10 + 96) = 0;
  }

  v16 = *(v10 + 104);
  if (v16)
  {
    CFRelease(v16);
    *(v10 + 104) = 0;
  }

  v17 = *(v10 + 112);
  if (v17)
  {
    CFRelease(v17);
    *(v10 + 112) = 0;
  }

  v18 = *(v10 + 120);
  if (v18)
  {
    CFRelease(v18);
    *(v10 + 120) = 0;
  }

  *(v10 + 144) = a3;
  *(v10 + 152) = _Block_copy(a4);
  *(v10 + 160) = _Block_copy(a5);
  _C3DFXMetalProgramUpdateHashWithLibrary(v10);
  return v10;
}

uint64_t C3DFXMetalProgramCreateFromSource(const void *a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8, char a9)
{
  v17 = C3DFXMetalProgramCreate();
  v18 = *(v17 + 80);
  if (v18 != a1)
  {
    if (v18)
    {
      CFRelease(v18);
      *(v17 + 80) = 0;
    }

    if (a1)
    {
      v19 = CFRetain(a1);
    }

    else
    {
      v19 = 0;
    }

    *(v17 + 80) = v19;
  }

  v20 = *(v17 + 88);
  if (v20 != a2)
  {
    if (v20)
    {
      CFRelease(v20);
      *(v17 + 88) = 0;
    }

    if (a2)
    {
      v21 = CFRetain(a2);
    }

    else
    {
      v21 = 0;
    }

    *(v17 + 88) = v21;
  }

  v22 = *(v17 + 96);
  if (v22 != a4)
  {
    if (v22)
    {
      CFRelease(v22);
      *(v17 + 96) = 0;
    }

    if (a4)
    {
      v23 = CFRetain(a4);
    }

    else
    {
      v23 = 0;
    }

    *(v17 + 96) = v23;
  }

  v24 = *(v17 + 104);
  if (v24 != a5)
  {
    if (v24)
    {
      CFRelease(v24);
      *(v17 + 104) = 0;
    }

    if (a5)
    {
      v25 = CFRetain(a5);
    }

    else
    {
      v25 = 0;
    }

    *(v17 + 104) = v25;
  }

  v26 = *(v17 + 112);
  if (v26 != a6)
  {
    if (v26)
    {
      CFRelease(v26);
      *(v17 + 112) = 0;
    }

    if (a6)
    {
      v27 = CFRetain(a6);
    }

    else
    {
      v27 = 0;
    }

    *(v17 + 112) = v27;
  }

  v28 = *(v17 + 120);
  if (v28 != a7)
  {
    if (v28)
    {
      CFRelease(v28);
      *(v17 + 120) = 0;
    }

    if (a7)
    {
      v29 = CFRetain(a7);
    }

    else
    {
      v29 = 0;
    }

    *(v17 + 120) = v29;
  }

  *(v17 + 144) = a3;
  v30 = *(v17 + 152);
  if (v30)
  {
    CFRelease(v30);
    *(v17 + 152) = 0;
  }

  v31 = *(v17 + 160);
  if (v31)
  {
    CFRelease(v31);
    *(v17 + 160) = 0;
  }

  *(v17 + 176) = a8;
  if (a9)
  {
    _C3DFXMetalProgramUpdateHashWithSource(v17);
  }

  return v17;
}

void _C3DFXMetalProgramUpdateHashWithSource(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4800000000;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v12 = a1;
  v2 = a1[10];
  if (v2)
  {
    v2 = CFHash(v2);
  }

  *&v13 = v2;
  v3 = a1[11];
  if (v3)
  {
    v3 = CFHash(v3);
  }

  *(&v13 + 1) = v3;
  v4 = a1[12];
  if (v4)
  {
    v4 = CFHash(v4);
  }

  v15 = 0;
  v14 = v4;
  v5 = a1[14];
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___C3DFXMetalProgramUpdateHashWithSource_block_invoke;
    v8[3] = &unk_278301DE0;
    v8[4] = &v9;
    C3DCFDictionaryApplyBlockBySortingStringKeys(v5, v8);
  }

  v6 = 0;
  v7 = 0x3EDF6BA1375BCBF0;
  do
  {
    v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v10[v6 + 3]) ^ ((0xC6A4A7935BD1E995 * v10[v6 + 3]) >> 47))) ^ v7);
    ++v6;
  }

  while (v6 != 6);
  a1[21] = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
  _Block_object_dispose(&v9, 8);
}

uint64_t C3DFXMetalProgramCreateFromLibraryWithConstants(const void *a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6)
{
  v12 = C3DFXMetalProgramCreate();
  v13 = *(v12 + 80);
  if (v13 != a1)
  {
    if (v13)
    {
      CFRelease(v13);
      *(v12 + 80) = 0;
    }

    if (a1)
    {
      v14 = CFRetain(a1);
    }

    else
    {
      v14 = 0;
    }

    *(v12 + 80) = v14;
  }

  v15 = *(v12 + 88);
  if (v15 != a2)
  {
    if (v15)
    {
      CFRelease(v15);
      *(v12 + 88) = 0;
    }

    if (a2)
    {
      v16 = CFRetain(a2);
    }

    else
    {
      v16 = 0;
    }

    *(v12 + 88) = v16;
  }

  v17 = *(v12 + 96);
  if (v17)
  {
    CFRelease(v17);
    *(v12 + 96) = 0;
  }

  v18 = *(v12 + 104);
  if (v18)
  {
    CFRelease(v18);
    *(v12 + 104) = 0;
  }

  v19 = *(v12 + 112);
  if (v19)
  {
    CFRelease(v19);
    *(v12 + 112) = 0;
  }

  v20 = *(v12 + 120);
  if (v20)
  {
    CFRelease(v20);
    *(v12 + 120) = 0;
  }

  v21 = *(v12 + 128);
  if (v21 != a4)
  {
    if (v21)
    {
      CFRelease(v21);
      *(v12 + 128) = 0;
    }

    if (a4)
    {
      v22 = CFRetain(a4);
    }

    else
    {
      v22 = 0;
    }

    *(v12 + 128) = v22;
  }

  *(v12 + 144) = a3;
  *(v12 + 152) = _Block_copy(a5);
  *(v12 + 160) = _Block_copy(a6);
  _C3DFXMetalProgramUpdateHashWithLibrary(v12);
  return v12;
}

uint64_t C3DFXMetalProgramCreateFromSourceWithConstants(const void *a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8)
{
  v16 = C3DFXMetalProgramCreate();
  v17 = *(v16 + 80);
  if (v17 != a1)
  {
    if (v17)
    {
      CFRelease(v17);
      *(v16 + 80) = 0;
    }

    if (a1)
    {
      v18 = CFRetain(a1);
    }

    else
    {
      v18 = 0;
    }

    *(v16 + 80) = v18;
  }

  v19 = *(v16 + 88);
  if (v19 != a2)
  {
    if (v19)
    {
      CFRelease(v19);
      *(v16 + 88) = 0;
    }

    if (a2)
    {
      v20 = CFRetain(a2);
    }

    else
    {
      v20 = 0;
    }

    *(v16 + 88) = v20;
  }

  v21 = *(v16 + 96);
  if (v21 != a4)
  {
    if (v21)
    {
      CFRelease(v21);
      *(v16 + 96) = 0;
    }

    if (a4)
    {
      v22 = CFRetain(a4);
    }

    else
    {
      v22 = 0;
    }

    *(v16 + 96) = v22;
  }

  v23 = *(v16 + 104);
  if (v23)
  {
    CFRelease(v23);
    *(v16 + 104) = 0;
  }

  v24 = *(v16 + 112);
  if (v24 != a5)
  {
    if (v24)
    {
      CFRelease(v24);
      *(v16 + 112) = 0;
    }

    if (a5)
    {
      v25 = CFRetain(a5);
    }

    else
    {
      v25 = 0;
    }

    *(v16 + 112) = v25;
  }

  v26 = *(v16 + 120);
  if (v26 != a6)
  {
    if (v26)
    {
      CFRelease(v26);
      *(v16 + 120) = 0;
    }

    if (a6)
    {
      v27 = CFRetain(a6);
    }

    else
    {
      v27 = 0;
    }

    *(v16 + 120) = v27;
  }

  v28 = *(v16 + 128);
  if (v28 != a7)
  {
    if (v28)
    {
      CFRelease(v28);
      *(v16 + 128) = 0;
    }

    if (a7)
    {
      v29 = CFRetain(a7);
    }

    else
    {
      v29 = 0;
    }

    *(v16 + 128) = v29;
  }

  *(v16 + 144) = a3;
  v30 = *(v16 + 152);
  if (v30)
  {
    CFRelease(v30);
    *(v16 + 152) = 0;
  }

  v31 = *(v16 + 160);
  if (v31)
  {
    CFRelease(v31);
    *(v16 + 160) = 0;
  }

  if (a8)
  {
    _C3DFXMetalProgramUpdateHashWithSource(v16);
  }

  return v16;
}

uint64_t C3DFXMetalProgramGetFunctionName(CFTypeRef cf, int a2)
{
  if (!cf)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v12 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return *(cf + a2 + 10);
}

CFHashCode C3DFXMetalProgramReplaceSourceCodeWithLibrary(void *cf, const void *a2, const void *a3)
{
  if (!cf)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v14 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v23 = cf[12];
  if (v23)
  {
    CFRelease(v23);
    cf[12] = 0;
  }

  v24 = cf[19];
  if (v24)
  {
    CFRelease(v24);
    cf[19] = 0;
  }

  v25 = cf[20];
  if (v25)
  {
    CFRelease(v25);
    cf[20] = 0;
  }

  cf[19] = _Block_copy(a2);
  cf[20] = _Block_copy(a3);
  return _C3DFXMetalProgramUpdateHashWithLibrary(cf);
}

CFTypeRef C3DFXMetalProgramSetFunctionName(char *cf, int a2, CFTypeRef a3)
{
  if (!cf)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v14 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v23 = cf + 80;
  result = *&v23[8 * a2];
  if (result != a3)
  {
    if (result)
    {
      CFRelease(result);
      *&v23[8 * a2] = 0;
    }

    if (a3)
    {
      result = CFRetain(a3);
    }

    else
    {
      result = 0;
    }

    *&v23[8 * a2] = result;
  }

  return result;
}

uint64_t C3DFXMetalProgramGetSourceCode(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v10 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(cf + 12);
}

uint64_t C3DFXMetalProgramGetSourceCodeForShaderCollection(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v10 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(cf + 13);
}