uint64_t AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(uint64_t a1, os_unfair_lock_s *a2, int a3)
{
  *a1 = a3;
  *(a1 + 4) = 1;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3 != 0;
  os_unfair_lock_lock(a2 + 194);
  if ((*(a1 + 16) & 1) == 0)
  {
    v5 = AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::pop((*(a1 + 8) + 720));
    *a1 = v5;
    if (!v5)
    {
      v8 = *(a1 + 8);
      v9 = *(v8 + 716);
      if (v9)
      {
        v10 = v9 + 1;
        do
        {
          if (v9)
          {
            v9 *= 2;
          }

          else
          {
            v9 = 16;
          }
        }

        while (v9 <= v10);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::grow(v8, v9, 1);
      }

      else
      {
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::grow(v8, 0x10u, 1);
      }

      *a1 = AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::pop((*(a1 + 8) + 720));
    }
  }

  explicit = atomic_load_explicit((*(a1 + 8) + 780), memory_order_acquire);
  if (explicit <= *a1)
  {
    explicit = *a1;
  }

  atomic_store(explicit, (*(a1 + 8) + 780));
  atomic_fetch_add((*(a1 + 8) + 784), 1u);
  os_unfair_lock_unlock(a2 + 194);
  return a1;
}

uint64_t AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::pop(void *a1)
{
  v2 = (a1 + 5);
  v1 = a1[5];
  if (!v1)
  {
    return 0;
  }

  v4 = (a1 + 5);
  do
  {
    if (*(v1 + 32))
    {
      v4 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) == 0));
  }

  while (v1);
  if (v4 == v2)
  {
    return 0;
  }

  v6 = a1 + 2;
  v5 = a1[2];
  v7 = (a1 + 1);
  v8 = *(v4 + 7);
  v9 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_20;
  }

  v10 = a1 + 2;
  v11 = a1[2];
  do
  {
    while (1)
    {
      v12 = *(v11 + 7);
      if (v12 >= v8 && (*(v11 + 8) >= v9 || v8 < v12))
      {
        break;
      }

      v11 = v11[1];
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v10 = v11;
    v11 = *v11;
  }

  while (v11);
LABEL_16:
  if (v10 == v6 || (v14 = *(v10 + 7), v8 < v14) || v14 >= v8 && v9 < *(v10 + 8))
  {
LABEL_20:
    v10 = a1 + 2;
  }

  v15 = v10[1];
  if (v15)
  {
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v17 = v10;
    do
    {
      v16 = v17[2];
      v18 = *v16 == v17;
      v17 = v16;
    }

    while (!v18);
  }

  if (*v7 == v10)
  {
    *v7 = v16;
  }

  --a1[3];
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v5, v10);
  operator delete(v10);
  v19 = v4[1];
  if (v19)
  {
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19);
  }

  else
  {
    v21 = v4;
    do
    {
      v20 = v21[2];
      v18 = *v20 == v21;
      v21 = v20;
    }

    while (!v18);
  }

  if (a1[4] == v4)
  {
    a1[4] = v20;
  }

  v22 = a1[5];
  --a1[6];
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v22, v4);
  operator delete(v4);
  v23 = v9 - 1;
  if (v9 != 1)
  {
    v24 = v8 + 1;
    if (!*std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalIndexComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__find_equal<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>(a1 + 1, v16, &v33, &v32, v8 + 1, v23))
    {
      operator new();
    }

    v25 = *v2;
    if (!*v2)
    {
LABEL_55:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v26 = v25;
        v27 = *(v25 + 8);
        if (v23 >= v27)
        {
          v28 = *(v26 + 7);
          if (v27 < v23 || v24 >= v28)
          {
            break;
          }
        }

        v25 = *v26;
        if (!*v26)
        {
          goto LABEL_55;
        }
      }

      if (v27 >= v23 && v28 >= v24)
      {
        break;
      }

      v25 = v26[1];
      if (!v25)
      {
        goto LABEL_55;
      }
    }
  }

  return v8;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x29EDC9518];
  v2 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29ED51E90](a1 + 2);

  return std::istream::~istream();
}

uint64_t AGX::FenceList::copyFences(uint64_t this, unsigned __int16 *a2)
{
  for (i = *(this + 512); i; i &= i - 1)
  {
    v3 = __clz(__rbit64(i));
    v4 = *(this + 8 * v3);
    v5 = v3 << 10;
    for (j = v4[1]; j; j &= j - 1)
    {
      *a2++ = v5 | __clz(__rbit64(j));
    }

    for (k = v4[2]; k; k &= k - 1)
    {
      *a2++ = v5 | __clz(__rbit64(k)) | 0x40;
    }

    for (m = v4[3]; m; m &= m - 1)
    {
      *a2++ = v5 | __clz(__rbit64(m)) | 0x80;
    }

    for (n = v4[4]; n; n &= n - 1)
    {
      *a2++ = v5 | __clz(__rbit64(n)) | 0xC0;
    }

    for (ii = v4[5]; ii; ii &= ii - 1)
    {
      *a2++ = v5 | __clz(__rbit64(ii)) | 0x100;
    }

    for (jj = v4[6]; jj; jj &= jj - 1)
    {
      *a2++ = v5 | 0x140 | __clz(__rbit64(jj));
    }

    for (kk = v4[7]; kk; kk &= kk - 1)
    {
      *a2++ = v5 | __clz(__rbit64(kk)) | 0x180;
    }

    for (mm = v4[8]; mm; mm &= mm - 1)
    {
      *a2++ = v5 | __clz(__rbit64(mm)) | 0x1C0;
    }

    for (nn = v4[9]; nn; nn &= nn - 1)
    {
      *a2++ = v5 | __clz(__rbit64(nn)) | 0x200;
    }

    for (i1 = v4[10]; i1; i1 &= i1 - 1)
    {
      *a2++ = v5 | 0x240 | __clz(__rbit64(i1));
    }

    for (i2 = v4[11]; i2; i2 &= i2 - 1)
    {
      *a2++ = v5 | 0x280 | __clz(__rbit64(i2));
    }

    for (i3 = v4[12]; i3; i3 &= i3 - 1)
    {
      *a2++ = v5 | 0x2C0 | __clz(__rbit64(i3));
    }

    for (i4 = v4[13]; i4; i4 &= i4 - 1)
    {
      *a2++ = v5 | __clz(__rbit64(i4)) | 0x300;
    }

    for (i5 = v4[14]; i5; i5 &= i5 - 1)
    {
      *a2++ = v5 | 0x340 | __clz(__rbit64(i5));
    }

    for (i6 = v4[15]; i6; i6 &= i6 - 1)
    {
      *a2++ = v5 | __clz(__rbit64(i6)) | 0x380;
    }

    for (i7 = v4[16]; i7; i7 &= i7 - 1)
    {
      *a2++ = v5 | __clz(__rbit64(i7)) | 0x3C0;
    }
  }

  return this;
}

void AGX::FenceList::insertFence(AGX::FenceList *this, unsigned int a2)
{
  v3 = a2 >> 10;
  v4 = (a2 >> 6) & 0xF;
  v5 = a2 & 0x3F;
  v6 = *(this + v3);
  if (!v6)
  {
    v7 = *(this + 65);
    os_unfair_lock_lock((v7 + 16));
    v6 = *v7;
    if (*v7)
    {
      v8 = *v6;
    }

    else
    {
      v9 = malloc_type_malloc(0x448uLL, 0x10200409324277FuLL);
      v10 = *v7;
      *(v7 + 8) = v9;
      *v9 = vextq_s8(v10, v10, 8uLL);
      v9[9].i64[0] = &v9->i64[1];
      v9[17].i64[1] = v9[9].i64;
      v9[26].i64[0] = &v9[17].i64[1];
      v9[34].i64[1] = v9[26].i64;
      v9[43].i64[0] = &v9[34].i64[1];
      v8 = &v9[51].i8[8];
      v9[51].i64[1] = v9[43].i64;
      v6 = &v9[60];
      v9[60].i64[0] = &v9[51].i64[1];
    }

    *v7 = v8;
    os_unfair_lock_unlock((v7 + 16));
    bzero(v6 + 1, 0x80uLL);
    *(this + v3) = v6;
    *(this + 64) |= 1 << v3;
  }

  v11 = v6[v4 + 1];
  if ((v11 & (1 << v5)) == 0)
  {
    v6[v4 + 1] = (v11 | (1 << v5));
    ++*(this + 132);
  }
}

void AGX::FenceList::merge(AGX::FenceList *this, AGX::FenceList *a2)
{
  for (i = *(a2 + 64); i; i &= i - 1)
  {
    v41 = __clz(__rbit64(i));
    if ((*(this + 64) & (1 << v41)) != 0)
    {
      v5 = *(this + v41);
      v6 = *(a2 + v41);
      v7 = *(v5 + 72);
      v8 = *(v5 + 88);
      v9 = *(v5 + 104);
      v10 = *(v5 + 120);
      v11 = *(v5 + 56);
      v12 = *(v5 + 40);
      v13 = *(v5 + 24);
      v14 = *(v5 + 16);
      v15 = vcntq_s8(*(v5 + 8));
      v16 = v6[1] | *(v5 + 8);
      *(v5 + 8) = v16;
      v17 = v6[2] | v14;
      *(v5 + 16) = v17;
      v18 = v6[3] | v13.i64[0];
      *(v5 + 24) = v18;
      v19 = v6[4] | v13.i64[1];
      *(v5 + 32) = v19;
      v20 = v12.i64[1];
      v21 = v6[5] | v12.i64[0];
      *(v5 + 40) = v21;
      v22 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v12))));
      v23 = vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v7)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v8)))));
      v24 = vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(v15))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v13)))));
      v25 = vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v9)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v10)))));
      v26 = vuzp1q_s32(v22, vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v11)))));
      v27 = v6[6] | v20;
      *(v5 + 48) = v27;
      v28 = v6[7] | v11.i64[0];
      *(v5 + 56) = v28;
      v29 = v6[8] | v11.i64[1];
      v11.i64[0] = v18;
      v11.i64[1] = v19;
      v30.i64[0] = v16;
      v30.i64[1] = v17;
      v22.i64[0] = v28;
      v22.i64[1] = v29;
      v31.i64[0] = v21;
      v31.i64[1] = v27;
      *(v5 + 64) = v29;
      v32 = (v6[9] | v7.i64[0]);
      *(v5 + 72) = v32;
      *v7.i8 = vcnt_s8(v32);
      v7.i16[0] = vaddlv_u8(*v7.i8);
      v32.i32[0] = v7.i32[0];
      v33 = (v6[10] | v7.i64[1]);
      *(v5 + 80) = v33;
      *v7.i8 = vcnt_s8(v33);
      v7.i16[0] = vaddlv_u8(*v7.i8);
      v34 = (v6[11] | v8.i64[0]);
      *(v5 + 88) = v34;
      *v8.i8 = vcnt_s8(v34);
      v8.i16[0] = vaddlv_u8(*v8.i8);
      v34.i32[0] = v8.i32[0];
      v35 = (v6[12] | v8.i64[1]);
      *(v5 + 96) = v35;
      *v8.i8 = vcnt_s8(v35);
      v8.i16[0] = vaddlv_u8(*v8.i8);
      v36 = (v6[13] | v9.i64[0]);
      *(v5 + 104) = v36;
      *v9.i8 = vcnt_s8(v36);
      v9.i16[0] = vaddlv_u8(*v9.i8);
      v36.i32[0] = v9.i32[0];
      v37 = (v6[14] | v9.i64[1]);
      *(v5 + 112) = v37;
      *v9.i8 = vcnt_s8(v37);
      v9.i16[0] = vaddlv_u8(*v9.i8);
      v38 = (v6[15] | v10.i64[0]);
      *(v5 + 120) = v38;
      *v10.i8 = vcnt_s8(v38);
      v10.i16[0] = vaddlv_u8(*v10.i8);
      v38.i32[0] = v10.i32[0];
      v39 = (v6[16] | v10.i64[1]);
      *(v5 + 128) = v39;
      *v10.i8 = vcnt_s8(v39);
      v10.i16[0] = vaddlv_u8(*v10.i8);
      v40 = *(this + 132) + v10.i32[0] + vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v30)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v11))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v31)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v22))))))) + v32.i32[0] + v7.i32[0] + v34.i32[0] + v8.i32[0] + v36.i32[0] + v9.i32[0] + v38.i32[0] - vaddvq_s32(vaddq_s32(vaddq_s32(v24, v23), vaddq_s32(v26, v25)));
    }

    else
    {
      v42 = *(this + 65);
      os_unfair_lock_lock((v42 + 16));
      v43 = *v42;
      if (*v42)
      {
        v44 = v43->i64[0];
      }

      else
      {
        v45 = malloc_type_malloc(0x448uLL, 0x10200409324277FuLL);
        v46 = *v42;
        *(v42 + 8) = v45;
        *v45 = vextq_s8(v46, v46, 8uLL);
        v45[9].i64[0] = &v45->i64[1];
        v45[17].i64[1] = v45[9].i64;
        v45[26].i64[0] = &v45[17].i64[1];
        v45[34].i64[1] = v45[26].i64;
        v45[43].i64[0] = &v45[34].i64[1];
        v44 = &v45[51].i8[8];
        v45[51].i64[1] = v45[43].i64;
        v43 = v45 + 60;
        v45[60].i64[0] = &v45[51].i64[1];
      }

      *v42 = v44;
      os_unfair_lock_unlock((v42 + 16));
      bzero(&v43->u64[1], 0x80uLL);
      *(this + v41) = v43;
      *(this + 64) |= 1 << v41;
      v47 = *(a2 + v41);
      v48 = *(v47 + 8);
      v49 = *(v47 + 24);
      v50 = *(v47 + 40);
      *(v43 + 56) = *(v47 + 56);
      *(v43 + 40) = v50;
      *(v43 + 24) = v49;
      *(v43 + 8) = v48;
      v51 = *(v47 + 72);
      v52 = *(v47 + 88);
      v53 = *(v47 + 104);
      *(v43 + 120) = *(v47 + 120);
      *(v43 + 104) = v53;
      *(v43 + 88) = v52;
      *(v43 + 72) = v51;
      v40 = vaddvq_s32(vaddq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v43 + 8))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v43 + 24)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v43 + 72))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v43 + 88))))))), vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v43 + 40))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v43 + 56)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v43 + 104))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v43 + 120))))))))) + *(this + 132);
    }

    *(this + 132) = v40;
  }
}

void AGX::FenceGroupPool::~FenceGroupPool(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 4);
  for (i = *&this[2]._os_unfair_lock_opaque; i; i = *&this[2]._os_unfair_lock_opaque)
  {
    *&this[2]._os_unfair_lock_opaque = *i;
    free(i);
  }

  os_unfair_lock_unlock(this + 4);
}

AGXG18PFamilyFunctionHandle *AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBinaryLinkedIntersectionFnHandle(void *a1, uint64_t a2)
{
  v4 = [a1 vendorPrivate];
  *(v4 + 1081) = 1;
  AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getOrCreatePipelineSet(&v8, v4 + 8);
  if (*(v8 + 25) == 1)
  {
    result = -[AGXG18PFamilyFunctionHandle initWithHandleType:name:device:handle:dylib:]([AGXG18PFamilyFunctionHandle alloc], "initWithHandleType:name:device:handle:dylib:", 1, [a1 name], a2, *(v8 + 32) & 0xFFFFFFF | 0x80000000, 0);
    atomic_fetch_or((a2 + 864), 0x200000uLL);
    v6 = v9;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v6 = v9;
    if (!v9)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    return v7;
  }

  return result;
}

void sub_29CC70F00(_Unwind_Exception *a1)
{
  operator delete(v2);
  os_unfair_lock_unlock(v1);
  _Unwind_Resume(a1);
}

void std::vector<unsigned long long>::__insert_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>(uint64_t a1, unint64_t __dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 3)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 3);
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = __dst - v10;
    v13 = v8 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v47 = (8 * (v12 >> 3));
    v48 = 8 * a5;
    memcpy(v47, __src, 8 * a5);
    v49 = v9 - __dst;
    memcpy(&v47[v48], __dst, v49);
    *(a1 + 8) = __dst;
    memcpy(0, v10, v12);
    *a1 = 0;
    *(a1 + 8) = &v47[v48 + v49];
    *(a1 + 16) = 0;
    if (v10)
    {

      operator delete(v10);
    }

    return;
  }

  v15 = v9 - __dst;
  v16 = (v9 - __dst) >> 3;
  if (v16 >= a5)
  {
    v15 = 8 * a5;
    v34 = (__dst + 8 * a5);
    v35 = (v9 - 8 * a5);
    if (v35 >= v9)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v9 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v9;
      v38 = v37 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_57;
      }

      v40 = (v37 >> 3) + 1;
      v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
      v35 = (v35 + v41);
      v42 = (v9 + 16);
      v43 = (v9 + 16 - v15);
      v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 4;
      }

      while (v44);
      v39 = (v9 + v41);
      if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_57:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v9);
      }
    }

    *(a1 + 8) = v39;
    if (v9 != v34)
    {
      memmove((__dst + 8 * a5), __dst, v9 - v34);
    }

    goto LABEL_49;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v9 + v17);
  *(a1 + 8) = v9 + v17;
  if (v16 >= 1)
  {
    v21 = 8 * a5;
    v22 = (__dst + 8 * a5);
    v23 = &v20[-8 * a5];
    if (v23 >= v9)
    {
      v26 = (v9 + v17);
    }

    else
    {
      v24 = &a4[__dst] - &__src[v21] + 8;
      if (v9 > v24)
      {
        v24 = v9;
      }

      v25 = &__src[v21 + ~__dst + v24] - a4;
      v26 = (v9 + v17);
      if (v25 < 0x18)
      {
        goto LABEL_58;
      }

      if ((a5 & 0x1FFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_58;
      }

      v27 = (v25 >> 3) + 1;
      v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
      v23 += v28;
      v29 = (&a4[__dst] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v30 += 2;
        v29 += 2;
        v31 -= 4;
      }

      while (v31);
      v26 = &v20[v28];
      if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_58:
        do
        {
          v33 = *v23;
          v23 += 8;
          *v26 = v33;
          v26 += 8;
        }

        while (v23 < v9);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove((__dst + 8 * a5), __dst, v20 - v22);
    }

    if (v9 != __dst)
    {
LABEL_49:

      memmove(__dst, __src, v15);
    }
  }
}

dispatch_queue_t ___ZL20resource_group_queuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.Metal.ResourceGroupQueue", 0);
  resource_group_queue(void)::_resourceGroupQueue = result;
  return result;
}

void sub_29CC74188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(a26);
    if ((a37 & 0x80000000) == 0)
    {
LABEL_4:
      MEMORY[0x29ED520A0](a22, 0x1000C8052888210);
      _Unwind_Resume(a1);
    }
  }

  else if ((a37 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(__p);
  goto LABEL_4;
}

uint64_t ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE9getBundleEv_block_invoke()
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDB9F48] allBundles];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v7;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v6 + 1) + 8 * v4);
        result = [objc_msgSend(v5 "bundleIdentifier")];
        if (result)
        {
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBundle(void)::bundle = v5;
          return result;
        }

        ++v4;
      }

      while (v2 != v4);
      result = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v2 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createDynamicLibrary(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, id *a6, uint64_t a7, uint64_t a8)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__1933;
  v37 = __Block_byref_object_dispose__1934;
  v38 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v28 = 8;
  __p = 0;
  v30 = 0;
  v31 = 0;
  v32 = 512;
  v27 = &unk_2A23F6AC0;
  v15 = [a3 driverCompilerOptions];
  if ([objc_msgSend(v15 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  LODWORD(v32) = v16 & 0xFC0001FF | 0x200 | ([objc_msgSend(v15 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}] << 10);
  if ([objc_msgSend(v15 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v17 = 134218240;
  }

  else
  {
    v17 = 512;
  }

  LODWORD(v32) = (v32 & 0x83FFFC7F | v17 & 0xBFFFFFFF | (*(*(a4 + 848) + 16608) << 26) & 0xBFFFFFFF | (((*(*(a4 + 848) + 16456) >> 1) & 1) << 30)) ^ 0x40000000;
  HIDWORD(v32) &= 0xFFFFFFF9;
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v18 = *a1;
  v19 = *(a1 + 24);
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20createDynamicLibraryEPU21objcproto10MTLLibrary11objc_objectP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemPP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU28objcproto17MTLDynamicLibrary11objc_objectSD_E_block_invoke;
  v26[3] = &unk_29F341400;
  v26[4] = a2;
  v26[5] = a4;
  v26[8] = a1;
  v26[9] = a6;
  v26[6] = a8;
  v26[7] = &v33;
  v47 = 0;
  v48 = 0;
  v27[2](&v27, &v48, &v47);
  v20 = a8 == 0;
  v21 = dispatch_data_create(v48, v47, 0, 0);
  memset(&v39[1], 0, 7);
  memset(v46, 0, sizeof(v46));
  v22 = *v18;
  v39[0] = v20;
  v40 = a2;
  v41 = a5;
  v42 = 0;
  v43 = 0;
  v44 = v21;
  v45 = v19;
  [v22 compileLibraryRequest:v39 compilerTask:a7 completionHandler:v26];
  dispatch_release(v21);
  if (a6)
  {
    v23 = *a6;
  }

  v24 = v34[5];
  v27 = &unk_2A23F6B00;
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v33, 8);
  return v24;
}

void sub_29CC74DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20createDynamicLibraryEPU21objcproto10MTLLibrary11objc_objectP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemPP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU28objcproto17MTLDynamicLibrary11objc_objectSD_E_block_invoke(void *a1, unint64_t *a2)
{
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v4 = *a2;
  v5 = a2[1];
  if (*a2)
  {
    goto LABEL_13;
  }

  if (!a2[3])
  {
    goto LABEL_12;
  }

  *(*(a1[7] + 8) + 40) = [[AGXG18PFamilyDynamicLibrary alloc] initWithLibrary:a1[4] binaryData:a2[3] device:a1[5] error:a1[9]];
  v6 = a1[9];
  if (v6)
  {
    v7 = *v6;
  }

  if (!*(*(a1[7] + 8) + 40))
  {
LABEL_12:
    v4 = 2;
LABEL_13:
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = @"Internal error during function compilation";
    }

    v16 = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20createDynamicLibraryEPU21objcproto10MTLLibrary11objc_objectP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemPP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU28objcproto17MTLDynamicLibrary11objc_objectSD_E_block_invoke_2;
    v19 = &unk_29F3413D8;
    v12 = a1[9];
    v20 = a1[6];
    v21 = v12;
    if (v4 > 3)
    {
      v13 = 5;
    }

    else
    {
      v13 = qword_29D2F40D8[v4];
    }

    v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v11 forKey:{*MEMORY[0x29EDB9ED8], v16, v17}];
    v15 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v13 userInfo:v14];
    v18(&v16, 0, 0, v15);

    return;
  }

  v8 = (a1[5] + 856);
  atomic_fetch_or(v8, 0x40000000000uLL);
  atomic_fetch_or(v8 + 1, 0);
  if (a2[13])
  {
    v9 = [objc_alloc(MEMORY[0x29EDBB598]) initWithData:a2[13]];
    [*(*(a1[7] + 8) + 40) setDebugInstrumentationData:v9];
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, *(*(a1[7] + 8) + 40), 0);

    *(*(a1[7] + 8) + 40) = 0;
  }
}

id ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20createDynamicLibraryEPU21objcproto10MTLLibrary11objc_objectP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemPP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU28objcproto17MTLDynamicLibrary11objc_objectSD_E_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);

    return v6();
  }

  else
  {
    result = a4;
    v9 = *(a1 + 40);
    if (v9)
    {
      *v9 = a4;
    }
  }

  return result;
}

void ProgramKey<(_AGCStreamToken)8,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
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
      std::__throw_bad_array_new_length[abi:nn200100]();
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

      std::__throw_bad_array_new_length[abi:nn200100]();
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

void AGX::Impl::DynamicLibraryKey::serialize(AGX::Impl::DynamicLibraryKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFEFLL)
  {
    v9 = begin + v8 + 16;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 4uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = begin + v8;
  *v10 = ((v9 - begin) >> 2 << 8) | 0x4F;
  *(v10 + 4) = *(this + 5);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void sub_29CC75694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE29addIntersectionFnSetToArchiveEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(result + 40);
    if (v3)
    {
      if (a2 > 3)
      {
        v4 = 5;
      }

      else
      {
        v4 = qword_29D2F40D8[a2];
      }

      v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a3 forKey:*MEMORY[0x29EDB9ED8]];
      result = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v4 userInfo:v5];
      *v3 = result;
    }
  }

  return result;
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createBinaryLinkedIntersectionProgramVariants<true>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v27[0] = a3;
  v27[1] = [a2 options];
  v27[2] = [a2 pipelineOptions];
  v27[3] = 0;
  v27[4] = a4;
  v27[5] = a5;
  v28 = 1;
  v29 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__1933;
  v25 = __Block_byref_object_dispose__1934;
  v26 = 0;
  v16 = *(a1 + 16);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE45createBinaryLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP7NSArrayP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebbbP12NSDictionaryPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFv16MTLCompilerErrorP8NSStringE_block_invoke;
  block[3] = &unk_29F3419B8;
  block[5] = a2;
  block[6] = &v21;
  block[4] = a3;
  dispatch_sync(v16, block);
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE45createBinaryLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP7NSArrayP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebbbP12NSDictionaryPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFv16MTLCompilerErrorP8NSStringE_block_invoke_2;
  v18[3] = &unk_29F341A08;
  v19 = a6;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a5;
  v18[7] = 0;
  v18[8] = a7;
  v18[9] = a1;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE45createBinaryLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP7NSArrayP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebbbP12NSDictionaryPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFv16MTLCompilerErrorP8NSStringE_block_invoke_4;
  v17[3] = &unk_29F3416E8;
  v17[4] = a8;
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionProgramVariants_impl<true>(a1, v27, a6, v22[5], v18, v17);
  _Block_object_dispose(&v21, 8);
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE27addVisibleFunctionToArchiveEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!*(a2 + 24))
  {
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v10 = *(result + 48);
    if (v10)
    {
      v11 = result;
      if (a3 > 3)
      {
        v12 = 5;
      }

      else
      {
        v12 = qword_29D2F40D8[a3];
      }

      v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a4 forKey:{*MEMORY[0x29EDB9ED8], v14, v15, v5, v16, v8, v9}];
      *v10 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v12 userInfo:v13];
      result = v11;
    }

    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileVisibleFunction(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x29EDCA608];
  v30 = 8;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v34 = 512;
  v29 = &unk_2A23F6AC0;
  v16 = [0 driverCompilerOptions];
  if ([objc_msgSend(v16 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v34) = v17 & 0xFC0001FF | 0x200 | ([objc_msgSend(v16 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}] << 10);
  if ([objc_msgSend(v16 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v18 = 134218240;
  }

  else
  {
    v18 = 512;
  }

  LODWORD(v34) = (v34 & 0x83FFFC7F | v18 & 0xBFFFFFFF | (*(*(a4 + 848) + 16608) << 26) & 0xBFFFFFFF | (((*(*(a4 + 848) + 16456) >> 1) & 1) << 30)) ^ 0x40000000;
  HIDWORD(v34) &= 0xFFFFFFF9;
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v19 = [MEMORY[0x29EDBB550] newVisibleRequestWithFunction:a3 descriptor:a2];
  [v19 setUseAIRNTInterfaces:*(a1 + 24)];
  [v19 setSync:a6 ^ 1u];
  [v19 setDestinationBinaryArchive:a5];
  v20 = *a1;
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE22compileVisibleFunctionEP21MTLFunctionDescriptorP12_MTLFunctionP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPK21MTLBinaryRequestReply16MTLCompilerErrorP8NSStringE_block_invoke;
  v28[3] = &unk_29F341A58;
  v28[5] = a8;
  v28[6] = a1;
  v28[4] = a3;
  v21 = *(v20 + 24);
  if (v21 && *(v21 + 120) == 1)
  {
    v22 = [objc_msgSend(v19 "binaryArchives")];
    v23 = 0x200000000000;
    if (!v22)
    {
      v23 = 1;
    }

    atomic_fetch_or(v21, v23);
    v24 = *(v20 + 24);
    v25 = [v19 destinationBinaryArchive];
    v26 = 0x400000000000;
    if (!v25)
    {
      v26 = 1;
    }

    atomic_fetch_or(v24, v26);
  }

  v35 = 0;
  v36 = 0;
  v29[2](&v29, &v36, &v35);
  v27 = dispatch_data_create(v36, v35, 0, 0);
  [v19 setDriverKeyData:v27];
  memset(v37, 0, sizeof(v37));
  [v19 setVendorPluginFunctionId:v37];
  [*v20 compileFunctionRequest:v19 compilerTask:a7 completionHandler:v28];
  dispatch_release(v27);

  v29 = &unk_2A23F6B00;
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }
}

void sub_29CC75D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE22compileVisibleFunctionEP21MTLFunctionDescriptorP12_MTLFunctionP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPK21MTLBinaryRequestReply16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (*(a2 + 104))
  {
    v4 = [objc_alloc(MEMORY[0x29EDBB598]) initWithData:*(a2 + 104)];
    [*(a1 + 32) setDebugInstrumentationData:v4];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE45createBinaryLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP7NSArrayP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebbbP12NSDictionaryPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFv16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) vendorPrivate];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 40) = objc_alloc_init(AGXG18PFamilyIntersectionProgram);
    v2 = *(*(*(a1 + 48) + 8) + 40);
    *(v2 + 1081) = ([*(a1 + 40) options] & 8) != 0;
    [*(a1 + 32) setVendorPrivate:*(*(*(a1 + 48) + 8) + 40)];
    [*(a1 + 32) setPrecompiledOutput:MEMORY[0x29EDCA560]];
    v3 = *(*(*(a1 + 48) + 8) + 40);
  }
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE45createBinaryLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP7NSArrayP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebbbP12NSDictionaryPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFv16MTLCompilerErrorP8NSStringE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 72);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  [*(a1 + 32) setOptions:{objc_msgSend(*(a1 + 32), "options") | 1}];
  v9 = [MEMORY[0x29EDBB550] newVisibleRequestWithFunction:*(a1 + 40) descriptor:*(a1 + 32)];
  [v9 setUseAIRNTInterfaces:*(v8 + 24)];
  [v9 setSync:(*(a1 + 80) & 1) == 0];
  [v9 setDestinationBinaryArchive:*(a1 + 48)];
  [v9 setGpuCompilerSPIOptions:*(a1 + 56)];
  v10 = *v8;
  v11 = *(a1 + 64);
  v29 = MEMORY[0x29EDCA5F8];
  v30 = 3221225472;
  v31 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE45createBinaryLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP7NSArrayP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebbbP12NSDictionaryPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFv16MTLCompilerErrorP8NSStringE_block_invoke_3;
  v32 = &unk_29F3419E0;
  v34 = v8;
  v35 = a3;
  v33 = a4;
  v12 = *(v10 + 24);
  if (v12 && *(v12 + 120) == 1)
  {
    v13 = [objc_msgSend(v9 binaryArchives];
    v14 = 0x200000000000;
    if (!v13)
    {
      v14 = 1;
    }

    atomic_fetch_or(v12, v14);
    v15 = *(v10 + 24);
    v16 = [v9 destinationBinaryArchive];
    v17 = 0x400000000000;
    if (!v16)
    {
      v17 = 1;
    }

    atomic_fetch_or(v15, v17);
  }

  if ([v9 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v9 setUseAIRNTInterfaces:0];
    }
  }

  v39 = 0;
  v40 = 0;
  (*(*a2 + 16))(a2, &v40, &v39);
  v18 = dispatch_data_create(v40, v39, 0, 0);
  [v9 setDriverKeyData:v18];
  if ([v9 airScript])
  {
    v37 = 0;
    v38 = 0;
    object = dispatch_data_create_map([v9 airScript], &v37, &v38);
    v19 = v37;
    v20 = *v37;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v19 + v20), &data, len, v21, v22))
    {
      v23 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v23);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v44;
    [v9 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_26UserIntersectionProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v9;
  *c.wbuf = &v29;
  if ([v9 function])
  {
    v24 = mach_absolute_time();
    v25 = *v10;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v44 = ___ZN3AGX8Compiler14compileProgramINS_26UserIntersectionProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v44 + 1) = &unk_29F342320;
    p_c = &c;
    v46 = v24;
    [v25 compileFunctionRequest:v9 compilerTask:v11 completionHandler:md];
  }

  else
  {
    if ([v9 frameworkData] || objc_msgSend(v9, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v44 = ___ZN3AGX8Compiler14compileProgramINS_26UserIntersectionProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v44 + 1) = &unk_29F3422F8;
    p_c = &c;
    v26 = [objc_msgSend(v9 "binaryArchives")];
    v27 = *v10;
    v28 = [v9 driverKeyData];
    if (v26)
    {
      [v27 compileRequest:v28 binaryArchives:objc_msgSend(v9 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v9 completionHandler:{"pipelineCache"), objc_msgSend(v9, "sync"), md}];
    }

    else
    {
      [v27 compileRequest:v28 pipelineCache:objc_msgSend(v9 sync:"pipelineCache") completionHandler:{objc_msgSend(v9, "sync"), md}];
    }
  }

  dispatch_release(v18);
}

void sub_29CC76450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object)
{
  dispatch_release(object);

  _Unwind_Resume(a1);
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionProgramVariants_impl<true>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = *MEMORY[0x29EDCA608];
  v11 = (a2 + 16);
  AGX::UserIntersectionProgramKey::UserIntersectionProgramKey(&v68, (*(a2 + 8) & 1 | *(a2 + 40)) != 0, *(a2 + 48), *(a2 + 24), *(a2 + 16), *(a2 + 56));
  v72 &= 0xFF9BFFFF;
  v12 = *v11;
  ReflectionKey::initGPUCompilerSPIOptionsHash(&block, v11[5]);
  v13 = a4 + 8;
  v66 = block;
  v67 = v79;
  v14 = *(a2 + 40);
  os_unfair_lock_lock((a4 + 1104));
  v15 = *(a4 + 40);
  if (!v15)
  {
LABEL_72:
    operator new();
  }

  v16 = bswap64(*(&v75 + 1));
  v17 = (a4 + 40);
  v18 = *(a4 + 40);
  do
  {
    v19 = bswap64(v18[14]);
    if (v19 == v16)
    {
      v19 = bswap64(v18[15]);
      v20 = bswap64(v76);
      if (v19 == v20)
      {
        v19 = bswap64(v18[16]);
        v20 = bswap64(*(&v76 + 1));
        if (v19 == v20)
        {
          v19 = bswap64(v18[17]);
          v20 = bswap64(v77);
          if (v19 == v20)
          {
            v21 = 0;
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      v20 = v16;
    }

    if (v19 < v20)
    {
      v21 = -1;
    }

    else
    {
      v21 = 1;
    }

    if (v21 < 0)
    {
LABEL_3:
      ++v18;
      goto LABEL_4;
    }

LABEL_15:
    if (v21)
    {
      goto LABEL_16;
    }

    v22 = *(v18 + 18);
    if (v22 < v72)
    {
      goto LABEL_3;
    }

    if (v72 < v22)
    {
LABEL_16:
      v17 = v18;
    }

    else
    {
      v23 = v18[13];
      v24 = v23 >= v75;
      v25 = v23 < v75;
      if (v24)
      {
        v17 = v18;
      }

      v18 += v25;
    }

LABEL_4:
    v18 = *v18;
  }

  while (v18);
  if (v17 == (a4 + 40) || ((v26 = bswap64(*(&v75 + 1)), v27 = bswap64(v17[14]), v26 != v27) || (v26 = bswap64(v76), v27 = bswap64(v17[15]), v26 != v27) || (v26 = bswap64(*(&v76 + 1)), v27 = bswap64(v17[16]), v26 != v27) || (v26 = bswap64(v77), v27 = bswap64(v17[17]), v26 != v27) ? (v26 < v27 ? (v28 = -1) : (v28 = 1)) : (v28 = 0), v28 < 0 || !v28 && ((v31 = *(v17 + 18), v72 < v31) || v31 >= v72 && v75 < v17[13])))
  {
    v32 = bswap64(*(&v75 + 1));
    while (1)
    {
      v33 = v15;
      v34 = bswap64(v15[14]);
      if (v32 != v34)
      {
        break;
      }

      v35 = bswap64(v76);
      v34 = bswap64(v33[15]);
      if (v35 != v34)
      {
        goto LABEL_47;
      }

      v35 = bswap64(*(&v76 + 1));
      v34 = bswap64(v33[16]);
      if (v35 != v34)
      {
        goto LABEL_47;
      }

      v35 = bswap64(v77);
      v34 = bswap64(v33[17]);
      if (v35 != v34)
      {
        goto LABEL_47;
      }

      v36 = 0;
LABEL_51:
      if (v36 || (v41 = *(v33 + 18), v72 >= v41) && (v41 < v72 || v75 >= v33[13]))
      {
        v37 = bswap64(v33[14]);
        v38 = bswap64(*(&v75 + 1));
        if (v37 == v38 && (v37 = bswap64(v33[15]), v38 = bswap64(v76), v37 == v38) && (v37 = bswap64(v33[16]), v38 = bswap64(*(&v76 + 1)), v37 == v38) && (v37 = bswap64(v33[17]), v38 = bswap64(v77), v37 == v38))
        {
          v39 = 0;
        }

        else
        {
          if (v37 < v38)
          {
            v39 = -1;
          }

          else
          {
            v39 = 1;
          }

          if (v39 < 0)
          {
            goto LABEL_65;
          }
        }

        if (v39 || (v40 = *(v33 + 18), v40 >= v72) && (v72 < v40 || v33[13] >= v75))
        {
          v17 = v33;
          v42 = a4;
          goto LABEL_73;
        }

LABEL_65:
        v15 = v33[1];
        if (!v15)
        {
          goto LABEL_72;
        }
      }

      else
      {
LABEL_40:
        v15 = *v33;
        if (!*v33)
        {
          goto LABEL_72;
        }
      }
    }

    v35 = v32;
LABEL_47:
    if (v35 < v34)
    {
      v36 = -1;
    }

    else
    {
      v36 = 1;
    }

    if (v36 < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_51;
  }

  if ((v12 & 0x400000004) != 0)
  {
    v42 = a4;
  }

  else
  {
    v29 = a4;
    if (!v14)
    {
      v30 = v17 + 18;
      os_unfair_lock_unlock(v29 + 276);
      goto LABEL_83;
    }

    v42 = a4;
  }

LABEL_73:
  dispatch_group_enter(v17[22]);
  v30 = v17 + 18;
  os_unfair_lock_unlock(v42 + 276);
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 3321888768;
  v49[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE38createIntersectionProgramVariants_implILb1EEENSt3__19enable_ifIXT_EvE4typeERKNS5_29IntersectionDescriptorContextEbP32AGXG18PFamilyIntersectionProgramU13block_pointerFvRKNS_26UserIntersectionProgramKeyEPKNS1_23UserIntersectionProgramEU13block_pointerFvRK13AGCReplyArrayRKNS5_25IntersectionReplyMetadataEEEU13block_pointerFvPNS1_29IntersectionProgramVariantSetE16MTLCompilerErrorP8NSStringE_block_invoke;
  v49[3] = &__block_descriptor_200_e8_40c38_ZTSN3AGX26UserIntersectionProgramKeyE_e47_v24__0r_v8r__IntersectionReplyMetadata____Q__16l;
  v49[4] = v17 + 18;
  v50 = &unk_2A23F7E00;
  v51 = v69;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  if (v71 != v70)
  {
    if (((v71 - v70) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v50 = &unk_2A23F7DC0;
  v55 = v72;
  v57 = 0;
  v58 = 0;
  __p = 0;
  if (v74 != v73)
  {
    if (((v74 - v73) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v59 = v75;
  v60 = v76;
  v64 = v66;
  v50 = &unk_2A23F7FA0;
  v61 = v77;
  v62 = v12 & 0xFFFFFFFFFFCCFFFCLL;
  v63 = a2;
  v65 = v67;
  (*(a5 + 16))(a5, &v68, v13, v49);
  v50 = &unk_2A23F7DC0;
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  v50 = &unk_2A23F7E00;
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

LABEL_83:
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v46 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE38createIntersectionProgramVariants_implILb1EEENSt3__19enable_ifIXT_EvE4typeERKNS5_29IntersectionDescriptorContextEbP32AGXG18PFamilyIntersectionProgramU13block_pointerFvRKNS_26UserIntersectionProgramKeyEPKNS1_23UserIntersectionProgramEU13block_pointerFvRK13AGCReplyArrayRKNS5_25IntersectionReplyMetadataEEEU13block_pointerFvPNS1_29IntersectionProgramVariantSetE16MTLCompilerErrorP8NSStringE_block_invoke_1992;
  v47 = &unk_29F3416E8;
  v48 = a6;
  v43 = v17[22];
  if (a3)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 3221225472;
    *&v79 = ___ZN3AGX23UserIntersectionProgramINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE15VariantSetEntry12waitOrNotifyEbPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvPNS1_29IntersectionProgramVariantSetE16MTLCompilerErrorP8NSStringE_block_invoke;
    *(&v79 + 1) = &unk_29F341C88;
    v80 = v45;
    v81 = v30;
    dispatch_group_notify(v43, global_queue, &block);
  }

  else
  {
    dispatch_group_wait(v17[22], 0xFFFFFFFFFFFFFFFFLL);
    (v46)(v45, v17[19], v17[20], v17[21]);
  }

  v68 = &unk_2A23F7DC0;
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  v68 = &unk_2A23F7E00;
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }
}

void sub_29CC76D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_unfair_lock_s *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  *v52 = v55;
  v58 = *v53;
  if (*v53)
  {
    *(v54 + 56) = v58;
    operator delete(v58);
  }

  std::unique_ptr<std::__tree_node<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,void *>>>>::~unique_ptr[abi:nn200100](v56 - 168);
  os_unfair_lock_unlock(a12 + 276);
  AGX::UserIntersectionProgramKey::~UserIntersectionProgramKey(&a52);
  _Unwind_Resume(a1);
}

uint64_t AGX::UserIntersectionProgramKey::UserIntersectionProgramKey(uint64_t a1, int a2, int a3, void *a4, int a5, void *a6)
{
  v32 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A23F7DC0;
  *(a1 + 40) = 0;
  v12 = (a1 + 48);
  ProgramKeyDynamicLibrariesImpl<true>::ProgramKeyDynamicLibrariesImpl((a1 + 48), 0);
  if (a2)
  {
    v13 = 0x80000;
  }

  else
  {
    v13 = 0;
  }

  if (a3)
  {
    v14 = 0x800000;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 40) = v13 | v14 | *(a1 + 40) & 0xFF77FFF8;
  *a1 = &unk_2A23F7FA0;
  *(a1 + 72) = a5 & 0xC0040000;
  CC_SHA256_Init(&c);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [objc_msgSend(a6 "allKeys")];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:&v30 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        bzero(v22, 0x10uLL);
        v22[1] = [objc_msgSend(a6 objectForKeyedSubscript:{v19, objc_msgSend(v19, "hash")), "hash"}];
        CC_SHA256_Update(&c, v22, 0x10u);
      }

      v16 = [v15 countByEnumeratingWithState:&v23 objects:&v30 count:16];
    }

    while (v16);
  }

  *md = 0u;
  v29 = 0u;
  CC_SHA256_Final(md, &c);
  v20 = v29;
  *(a1 + 80) = *md;
  *(a1 + 96) = v20;
  ProgramKeyDynamicLibrariesImpl<true>::ProgramKeyDynamicLibrariesImpl(&v30, a4);
  if (v12 != &v30)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v12, v30, v31, (v31 - v30) >> 5);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return a1;
}

void sub_29CC77074(_Unwind_Exception *a1)
{
  v4 = *(v2 - 216);
  if (v4)
  {
    *(v2 - 208) = v4;
    operator delete(v4);
  }

  AGX::UserIntersectionProgramKey::~UserIntersectionProgramKey(v1);
  _Unwind_Resume(a1);
}

double ReflectionKey::initGPUCompilerSPIOptionsHash(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    CC_SHA256_Init(&c);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [objc_msgSend(a2 "allKeys")];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          bzero(v11, 0x10uLL);
          v11[1] = [objc_msgSend(a2 objectForKeyedSubscript:{v9, objc_msgSend(v9, "hash")), "hash"}];
          CC_SHA256_Update(&c, v11, 0x10u);
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
    CC_SHA256_Final(a1, &c);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE38createIntersectionProgramVariants_implILb1EEENSt3__19enable_ifIXT_EvE4typeERKNS5_29IntersectionDescriptorContextEbP32AGXG18PFamilyIntersectionProgramU13block_pointerFvRKNS_26UserIntersectionProgramKeyEPKNS1_23UserIntersectionProgramEU13block_pointerFvRK13AGCReplyArrayRKNS5_25IntersectionReplyMetadataEEEU13block_pointerFvPNS1_29IntersectionProgramVariantSetE16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  AGX::Impl::UserIntersectionProgramKey::UserIntersectionProgramKey(&v18, a1 + 40);
  v18 = &unk_2A23F7FA0;
  v7 = *(a1 + 128);
  v23 = *(a1 + 112);
  v24 = v7;
  v8 = *(a1 + 152);
  v25 = *(a1 + 144);
  v10 = *a3;
  v9 = a3[1];
  v11 = *(a1 + 160);
  v12 = *v11;
  v13 = *(v11 + 48);
  v14 = a3[3];
  v15 = a3[4];
  v16 = *(a1 + 184);
  v17[0] = *(a1 + 168);
  v17[1] = v16;
  AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry::signalPending(v6, v8, a2, v9, v10, v12, v13, v14, v15, v17, *(v11 + 32));
  v18 = &unk_2A23F7DC0;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  v18 = &unk_2A23F7E00;
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_29CC7739C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AGX::UserIntersectionProgramKey::~UserIntersectionProgramKey(va);
  _Unwind_Resume(a1);
}

void AGX::UserIntersectionProgramKey::~UserIntersectionProgramKey(AGX::UserIntersectionProgramKey *this)
{
  *this = &unk_2A23F7DC0;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_2A23F7E00;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void __destroy_helper_block_e8_40c38_ZTSN3AGX26UserIntersectionProgramKeyE(void *a1)
{
  a1[5] = &unk_2A23F7DC0;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  a1[5] = &unk_2A23F7E00;
  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;

    operator delete(v3);
  }
}

__n128 __copy_helper_block_e8_40c38_ZTSN3AGX26UserIntersectionProgramKeyE(uint64_t a1, uint64_t a2)
{
  AGX::Impl::UserIntersectionProgramKey::UserIntersectionProgramKey(a1 + 40, a2 + 40);
  *(a1 + 40) = &unk_2A23F7FA0;
  result = *(a2 + 112);
  v5 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = result;
  *(a1 + 128) = v5;
  return result;
}

uint64_t AGX::Impl::UserIntersectionProgramKey::UserIntersectionProgramKey(uint64_t result, uint64_t a2)
{
  *result = &unk_2A23F7E00;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *result = &unk_2A23F7DC0;
  *(result + 40) = *(a2 + 40);
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  v5 = *(a2 + 48);
  v4 = *(a2 + 56);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_29CC77654(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void AGX::Impl::UserIntersectionProgramKey::serialize(AGX::Impl::UserIntersectionProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x54;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void ProgramKey<(_AGCStreamToken)7,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

char *std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 5)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v11 = 0x7FFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 59))
      {
        operator new();
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 5)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE45createBinaryLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP7NSArrayP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivebbbP12NSDictionaryPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFv16MTLCompilerErrorP8NSStringE_block_invoke_3(uint64_t a1)
{
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  return (*(*(a1 + 32) + 16))();
}

void ___ZN3AGX8Compiler14compileProgramINS_26UserIntersectionProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_26UserIntersectionProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_26UserIntersectionProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_26UserIntersectionProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(uint64_t a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v1 = *(a1 + 96);
  v12[0] = 0;
  v12[1] = 0;
  *v7 = 0u;
  *__p = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = v12;
  if (v1 || !*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1;
    v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &size_ptr);
    AGCReplyArray::deserialize(v7, buffer_ptr);
    a1 = v3;
  }

  (*(*(a1 + 88) + 16))(*(a1 + 88), v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    free(v6);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v12[0]);
  if (__p[1])
  {
    *&v9 = __p[1];
    operator delete(__p[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_29CC77CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCReplyArray::~AGCReplyArray(va);
  _Unwind_Resume(a1);
}

BOOL AGCReplyArray::deserialize(AGCReplyArray *this, _DWORD *a2)
{
  if (*a2 == -17958193)
  {
    v4 = a2[4];
    if (!v4)
    {
      return *(this + 4) != *(this + 3);
    }

    *&v46[8] = 0;
    v51 = 0;
    v47 = 0;
    v5 = 0;
    v6 = a2 + 8;
    *v46 = a2[4];
    do
    {
      if (*v6 == 2)
      {
        v47 = v6[3];
        v51 = (a2 + v6[2]);
        *&v46[4] = a2 + v6[4];
      }

      else
      {
        if (*v6 != 25)
        {
          return 0;
        }

        v7 = v6[16];
        if (v7)
        {
          v49 = v5;
          v8 = *(this + 4);
          v48 = v6;
          v9 = v6 + 30;
          for (i = 1; i <= v7; ++i)
          {
            v11 = a2 + *v9;
            v12 = *(v9 - 1);
            v13 = *(this + 5);
            if (v8 < v13)
            {
              *v8 = v11;
              *(v8 + 1) = v12;
              v8 += 16;
            }

            else
            {
              v14 = *(this + 3);
              v15 = v8 - v14;
              v16 = (v8 - v14) >> 4;
              v17 = v16 + 1;
              if ((v16 + 1) >> 60)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v18 = v13 - v14;
              if (v18 >> 3 > v17)
              {
                v17 = v18 >> 3;
              }

              if (v18 >= 0x7FFFFFFFFFFFFFF0)
              {
                v19 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v19 = v17;
              }

              if (v19)
              {
                if (!(v19 >> 60))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v20 = v16;
              v21 = (16 * v16);
              *v21 = v11;
              v21[1] = v12;
              v8 = (16 * v16 + 16);
              v22 = &v21[-2 * v20];
              memcpy(v22, v14, v15);
              *(this + 3) = v22;
              *(this + 4) = v8;
              *(this + 5) = 0;
              if (v14)
              {
                operator delete(v14);
              }
            }

            v9 += 20;
            *(this + 4) = v8;
          }

          v4 = *v46;
          v5 = v49;
          v6 = v48;
        }
      }

      v6 = (v6 + v6[1]);
      ++v5;
    }

    while (v5 != v4);
    if (!v47)
    {
      return *(this + 4) != *(this + 3);
    }

    v23 = *&v46[4] + 1;
    v50 = (this + 64);
    if (*(v51 + 4) == 2 && *(v51 + 5) == 0)
    {
      v25 = *v51;
      v26 = *(v51 + 1);
      v27 = strlen((v23 + v25));
      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v28 = v27;
      if (v27 >= 0x17)
      {
        operator new();
      }

      v53 = v27;
      if (v27)
      {
        memmove(__dst, (v23 + v25), v27);
      }

      *(__dst + v28) = 0;
      if ((v26 - 1) >= ((*(this + 4) - *(this + 3)) >> 4))
      {
        if ((v53 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      else
      {
        v29 = *v50;
        if (!*v50)
        {
LABEL_62:
          operator new();
        }

        v30 = v53;
        if ((v53 & 0x80u) == 0)
        {
          v31 = v53;
        }

        else
        {
          v31 = __dst[1];
        }

        if ((v53 & 0x80u) == 0)
        {
          v32 = __dst;
        }

        else
        {
          v32 = __dst[0];
        }

        while (1)
        {
          while (1)
          {
            v33 = v29;
            v36 = v29[4];
            v34 = v29 + 4;
            v35 = v36;
            v37 = *(v34 + 23);
            if (v37 >= 0)
            {
              v38 = *(v34 + 23);
            }

            else
            {
              v38 = v34[1];
            }

            if (v37 >= 0)
            {
              v39 = v34;
            }

            else
            {
              v39 = v35;
            }

            if (v38 >= v31)
            {
              v40 = v31;
            }

            else
            {
              v40 = v38;
            }

            v41 = memcmp(v32, v39, v40);
            v42 = v31 < v38;
            if (v41)
            {
              v42 = v41 < 0;
            }

            if (!v42)
            {
              break;
            }

            v29 = *v33;
            if (!*v33)
            {
              goto LABEL_62;
            }
          }

          v43 = memcmp(v39, v32, v40);
          v44 = v38 < v31;
          if (v43)
          {
            v44 = v43 < 0;
          }

          if (!v44)
          {
            break;
          }

          v29 = v33[1];
          if (!v29)
          {
            goto LABEL_62;
          }
        }

        if ((v30 & 0x80) == 0)
        {
          return 0;
        }
      }

      operator delete(__dst[0]);
    }
  }

  return 0;
}

void sub_29CC78130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGCReplyArray::~AGCReplyArray(AGCReplyArray *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      v4 = *v2;
      v2 += 2;
      free(v4);
    }

    while (v2 != v3);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*(this + 8));
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_29CC783C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE23createIntersectionFnSetEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvSF_E_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 8);
    if (a2 > 3)
    {
      v5 = 5;
    }

    else
    {
      v5 = qword_29D2F40D8[a2];
    }

    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a3 forKey:*MEMORY[0x29EDB9ED8]];
    *(v4 + 40) = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v5 userInfo:v6];
  }

  result = *(a1 + 32);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE31createDynamicLibraryForFunctionEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvSF_E_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = -[AGXG18PFamilyDynamicLibrary initWithBinaryData:name:device:]([AGXG18PFamilyDynamicLibrary alloc], "initWithBinaryData:name:device:", v5, [*(a1 + 32) name], *(a1 + 40));
    [*(a1 + 48) setVendorPrivate:v6];

    [*(a1 + 48) setPrecompiledOutput:MEMORY[0x29EDCA560]];
    v7 = (*(a1 + 40) + 856);
    atomic_fetch_or(v7, 0x40000000000uLL);
    atomic_fetch_or(v7 + 1, 0);
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }

  else
  {
    v14 = MEMORY[0x29EDCA5F8];
    v15 = 3221225472;
    v16 = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE31createDynamicLibraryForFunctionEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvSF_E_block_invoke_2;
    v17 = &unk_29F3413D8;
    v10 = *(a1 + 72);
    v18 = *(a1 + 56);
    v19 = v10;
    if (a3 > 3)
    {
      v11 = 5;
    }

    else
    {
      v11 = qword_29D2F40D8[a3];
    }

    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a4 forKey:{*MEMORY[0x29EDB9ED8], v14, v15}];
    v13 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v11 userInfo:v12];
    v16(&v14, 0, 0, v13);
  }
}

void *___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE31createDynamicLibraryForFunctionEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvSF_E_block_invoke_2(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = result[4];
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = result[4];

    return v6(v7, a4);
  }

  else if (result[5])
  {
    v8 = result;
    result = a4;
    *v8[5] = result;
  }

  return result;
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionFnSet(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__1933;
  v12 = __Block_byref_object_dispose__1934;
  v13 = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE23createIntersectionFnSetEP21MTLFunctionDescriptorPU22objcproto11MTLFunction11objc_objectP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivePP7NSErrorPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvSF_E_block_invoke;
  v7[3] = &unk_29F341990;
  v7[5] = &v8;
  v7[6] = a1;
  v7[4] = 0;
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createBinaryLinkedIntersectionProgramVariants<true>(a1, a2, a3, a4, a5, 0, 0, v7);
  if (a6)
  {
    *a6 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
}

void sub_29CC788C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileRenderPipeline_impl(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = mach_absolute_time();
  if (_MTLCompilePerformanceStatisticsEnabled())
  {
    v18 = a5 | 0x400000;
  }

  else
  {
    v18 = a5;
  }

  if (!a7)
  {
    if (a2)
    {
      v47 = 0;
      if ([a2 validateWithDevice:a3 error:&v47])
      {
        goto LABEL_10;
      }

      v33 = [v47 localizedDescription];
      if (a10)
      {
        v32 = v33;
        v30 = MEMORY[0x29EDB8DC0];
        v31 = *MEMORY[0x29EDB9ED8];
        goto LABEL_25;
      }
    }

    else if (a10)
    {
      v30 = MEMORY[0x29EDB8DC0];
      v31 = *MEMORY[0x29EDB9ED8];
      v32 = @"pipeline descriptor is nil";
LABEL_25:
      v34 = [v30 dictionaryWithObject:v32 forKey:v31];
      v35 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v34];
      (*(a10 + 16))(a10, 0, 0, v35);
    }

    return 0;
  }

  *a7 = 0;
  if (!a2)
  {
    v20 = MEMORY[0x29EDB8DC0];
    v21 = *MEMORY[0x29EDB9ED8];
    v19 = @"pipeline descriptor is nil";
    goto LABEL_17;
  }

  v47 = 0;
  if (![a2 validateWithDevice:a3 error:&v47])
  {
    v19 = [v47 localizedDescription];
    v20 = MEMORY[0x29EDB8DC0];
    v21 = *MEMORY[0x29EDB9ED8];
LABEL_17:
    v26 = [v20 dictionaryWithObject:v19 forKey:v21];
    v27 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:2 userInfo:v26];
    if (a10)
    {
      v28 = v27;
      (*(a10 + 16))(a10, 0, 0, v27);

      v27 = *a7;
    }

    else
    {
      *a7 = v27;
    }

    v29 = v27;
    return 0;
  }

LABEL_10:
  v38 = a4;
  if (a10)
  {
    a2 = [a2 copy];
  }

  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(&v58, a3, [a2 tileFunction], objc_msgSend(a2, "linkedFunctions"), objc_msgSend(a2, "preloadedLibraries"), a7);
  v22 = v58;
  if (v58)
  {
    v23 = [a2 tileFunction];
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v24 = *(a1 + 16);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE29createTileRenderPipeline_implEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP27MTLRenderPipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectSD_SG_E_block_invoke;
    block[3] = &unk_29F3416A0;
    block[4] = v23;
    block[5] = &v54;
    dispatch_sync(v24, block);
    v47 = 0;
    v48 = &v47;
    v49 = 0x3052000000;
    v50 = __Block_byref_object_copy__1933;
    v51 = __Block_byref_object_dispose__1934;
    v52 = 0;
    v37 = v55[3];
    v40[0] = MEMORY[0x29EDCA5F8];
    v40[1] = 3321888768;
    v40[2] = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE29createTileRenderPipeline_implEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP27MTLRenderPipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectSD_SG_E_block_invoke_2;
    v40[3] = &unk_2A23F6E68;
    v40[10] = a1;
    v40[4] = a3;
    v40[5] = a2;
    v40[8] = &v47;
    v40[6] = v23;
    v41 = v22;
    v42 = a7;
    v46 = a10 != 0;
    v43 = v18;
    v44 = v17;
    v45 = a6;
    v40[7] = a10;
    v40[9] = &v54;
    AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileProgramVariant(a1, a2, a3, v18, v38, a8, v22, v37, a10 != 0, a9, v40);
    if (a10)
    {
    }

    v25 = v48[5];

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void sub_29CC78DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v36 - 128), 8);

  _Unwind_Resume(a1);
}

void *AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(void *result, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v6 = result;
  v24 = a5;
  v25 = a2;
  v23 = a6;
  if (a3)
  {
    v21[0] = &v24;
    v21[1] = &v23;
    v21[2] = &v25;
    v21[3] = &v22;
    v22 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(a5, "count")}];
    v12 = [a2 loadDynamicLibrariesForFunction:a3 insertLibraries:a5 error:a6];
    if ([v12 count])
    {
      v13 = 0;
      do
      {
        if (([v22 containsObject:{objc_msgSend(v12, "objectAtIndexedSubscript:", v13)}] & 1) == 0)
        {
          [v22 addObject:{objc_msgSend(v12, "objectAtIndexedSubscript:", v13)}];
        }

        ++v13;
      }

      while ([v12 count] > v13);
    }

    v20 = v21;
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(AGXG18PFamilyDevice *,objc_object  {objcproto11MTLFunction}*,MTLLinkedFunctions *,NSArray<objc_object  {objcproto17MTLDynamicLibrary}*> *,NSError **)const::{lambda(MTLLinkedFunctions **<objc_object  {objcproto11MTLFunction}>)#1}::operator()(&v20, [a4 functions]);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(AGXG18PFamilyDevice *,objc_object  {objcproto11MTLFunction}*,MTLLinkedFunctions *,NSArray<objc_object  {objcproto17MTLDynamicLibrary}*> *,NSError **)const::{lambda(MTLLinkedFunctions **<objc_object  {objcproto11MTLFunction}>)#1}::operator()(&v20, [a4 binaryFunctions]);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::loadDynamicLibrariesForFunctions(AGXG18PFamilyDevice *,objc_object  {objcproto11MTLFunction}*,MTLLinkedFunctions *,NSArray<objc_object  {objcproto17MTLDynamicLibrary}*> *,NSError **)const::{lambda(MTLLinkedFunctions **<objc_object  {objcproto11MTLFunction}>)#1}::operator()(&v20, [a4 privateFunctions]);
    v14 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v22, "count")}];
    if ([v24 count])
    {
      v15 = 0;
      do
      {
        if ([v22 containsObject:{objc_msgSend(v24, "objectAtIndexedSubscript:", v15)}])
        {
          [v14 addObject:{objc_msgSend(v24, "objectAtIndexedSubscript:", v15)}];
        }

        ++v15;
      }

      while ([v24 count] > v15);
    }

    if ([v22 count])
    {
      v16 = 0;
      do
      {
        if (([v14 containsObject:{objc_msgSend(v22, "objectAtIndexedSubscript:", v16)}] & 1) == 0)
        {
          [v14 addObject:{objc_msgSend(v22, "objectAtIndexedSubscript:", v16)}];
        }

        ++v16;
      }

      while ([v22 count] > v16);
    }

    v17 = (v25 + 856);
    if (v25[976])
    {
      v18 = [v14 count];
      v19 = 0x800000000000;
      if (!v18)
      {
        v19 = 1;
      }

      atomic_fetch_or(v17, v19);
    }

    result = [v14 copy];
    *v6 = result;
  }

  else
  {
    *result = MEMORY[0x29EDB8E90];
  }

  return result;
}

AGXG18PFamilyTileProgram *___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE29createTileRenderPipeline_implEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP27MTLRenderPipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectSD_SG_E_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) vendorPrivate];
  v3 = v2;
  if (!v2)
  {
    v3 = objc_alloc_init(AGXG18PFamilyComputeOrFragmentOrTileProgram);
    [*(a1 + 32) setVendorPrivate:v3];

    result = v3->_tile;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = objc_alloc_init(AGXG18PFamilyTileProgram);
    v3->_tile = result;
    goto LABEL_3;
  }

  result = *(v2 + 24);
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*(*(a1 + 40) + 8) + 24) = &result->_impl;
  return result;
}

void ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE29createTileRenderPipeline_implEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDeviceP26AGXG18PFamilyBinaryArchivemPP27MTLRenderPipelineReflectionPP7NSErrorPKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectSD_SG_E_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    *(*(*(a1 + 64) + 8) + 40) = [[AGXG18PFamilyTileRenderPipeline alloc] initWithDeviceAndTileDesc:*(a1 + 32) tilePipelineStateDescriptor:*(a1 + 40)];
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setTileVariant(*(*(*(a1 + 64) + 8) + 40) + 240, a2, *([*(a1 + 40) _descriptorPrivate] + 112));
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionPipelineSets<true>(&v23, *(a1 + 32), (a2 + 592), [*(a1 + 40) linkedFunctions], objc_msgSend(*(a1 + 40), "maxCallStackDepth"));
    v8 = (*(*(*(a1 + 64) + 8) + 40) + 3696);
    if (v8 != &v23)
    {
      std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::__assign_with_size[abi:nn200100]<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*,std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*>(v8, v23, v24, (v24 - v23) >> 4);
    }

    v9 = v23;
    if (v23)
    {
      v10 = v24;
      v11 = v23;
      if (v24 != v23)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 2;
        }

        while (v10 != v9);
        v11 = v23;
      }

      v24 = v9;
      operator delete(v11);
    }

    v16 = [*(a1 + 40) linkedFunctions];
    [v16 functions];
    [v16 privateFunctions];
    [v16 binaryFunctions];
    if ([*(a1 + 48) relocations])
    {
      [objc_msgSend(*(a1 + 48) "relocations")];
    }

    operator new();
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 96);
  if (v13 | v14)
  {
    if (a5 > 3)
    {
      v15 = 5;
    }

    else
    {
      v15 = qword_29D2F40D8[a5];
    }

    v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
    v18 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v15 userInfo:v17];
    v19 = v18;
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0, v18);
    }

    else if (v14)
    {
      *v14 = v18;
    }

    v20 = *(a1 + 96);
    if (v20)
    {
      v21 = *v20;

      v22 = v21;
    }
  }
}

void sub_29CC7AD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  os_unfair_lock_unlock(v43 + 350);
  std::unique_ptr<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter,std::default_delete<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibraryFilter>>::~unique_ptr[abi:nn200100](&a43);
  _Unwind_Resume(a1);
}

void AGX::UserTileShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createTileProgramVariant(id **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSArray *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v196 = *MEMORY[0x29EDCA608];
  v130[0] = 0;
  v130[1] = v130;
  v130[2] = 0x3052000000;
  v130[3] = __Block_byref_object_copy__1933;
  v130[4] = __Block_byref_object_dispose__1934;
  v130[5] = 0;
  v99 = [a2 tileFunction];
  v15 = [a2 newSerializedTileDataWithFlags:540 options:0 error:0];
  {
    AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLTileRenderPipelineDescriptor>(MTLTileRenderPipelineDescriptor const*)::enable_pipeline_script = 0;
  }

  if (AGX::UserProgramKeyFactory<AGX::HAL300::Classes,AGX::HAL300::Encoders>::GetPipelineScript<MTLTileRenderPipelineDescriptor>(MTLTileRenderPipelineDescriptor const*)::enable_pipeline_script == 1)
  {
    [a2 newPipelineScript];
    operator new();
  }

  AGX::TileProgramKey::TileProgramKey(v113, [a2 linkedFunctions], a7);
  LOBYTE(v183) = 0;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v178 = 0u;
  *(&v183 + 1) = 67305985;
  *(&v183 + 5) = 1541;
  BYTE7(v183) = 7;
  *(&v183 + 1) = 0x100000000;
  LOWORD(v184) = 0;
  *(&v184 + 4) = 0;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0;
  bzero(&v178, 0x28uLL);
  v16 = [a2 _descriptorPrivate];
  v17 = *v16;
  v18 = [objc_msgSend(*v16 objectAtIndexedSubscript:{0), "pixelFormat"}];
  if (v18)
  {
    if ((v18 - 1) > 0x289)
    {
      v19 = &texFormatUnsupported;
    }

    else
    {
      v19 = *(&off_29F342380 + (v18 - 1));
    }

    *&v185 = v19;
    DWORD2(v180) |= 1u;
  }

  v20 = [objc_msgSend(v17 objectAtIndexedSubscript:{1), "pixelFormat"}];
  if (v20)
  {
    if ((v20 - 1) > 0x289)
    {
      v21 = &texFormatUnsupported;
    }

    else
    {
      v21 = *(&off_29F342380 + (v20 - 1));
    }

    *(&v185 + 1) = v21;
    DWORD2(v180) |= 2u;
  }

  v22 = [objc_msgSend(v17 objectAtIndexedSubscript:{2), "pixelFormat"}];
  if (v22)
  {
    if ((v22 - 1) > 0x289)
    {
      v23 = &texFormatUnsupported;
    }

    else
    {
      v23 = *(&off_29F342380 + (v22 - 1));
    }

    *&v186 = v23;
    DWORD2(v180) |= 4u;
  }

  v24 = [objc_msgSend(v17 objectAtIndexedSubscript:{3), "pixelFormat"}];
  if (v24)
  {
    if ((v24 - 1) > 0x289)
    {
      v25 = &texFormatUnsupported;
    }

    else
    {
      v25 = *(&off_29F342380 + (v24 - 1));
    }

    *(&v186 + 1) = v25;
    DWORD2(v180) |= 8u;
  }

  v26 = [objc_msgSend(v17 objectAtIndexedSubscript:{4), "pixelFormat"}];
  if (v26)
  {
    if ((v26 - 1) > 0x289)
    {
      v27 = &texFormatUnsupported;
    }

    else
    {
      v27 = *(&off_29F342380 + (v26 - 1));
    }

    *&v187 = v27;
    DWORD2(v180) |= 0x10u;
  }

  v28 = [objc_msgSend(v17 objectAtIndexedSubscript:{5), "pixelFormat"}];
  if (v28)
  {
    if ((v28 - 1) > 0x289)
    {
      v29 = &texFormatUnsupported;
    }

    else
    {
      v29 = *(&off_29F342380 + (v28 - 1));
    }

    *(&v187 + 1) = v29;
    DWORD2(v180) |= 0x20u;
  }

  v30 = [objc_msgSend(v17 objectAtIndexedSubscript:{6), "pixelFormat"}];
  if (v30)
  {
    if ((v30 - 1) > 0x289)
    {
      v31 = &texFormatUnsupported;
    }

    else
    {
      v31 = *(&off_29F342380 + (v30 - 1));
    }

    *&v188 = v31;
    DWORD2(v180) |= 0x40u;
  }

  v32 = [objc_msgSend(v17 objectAtIndexedSubscript:{7), "pixelFormat"}];
  if (v32)
  {
    if ((v32 - 1) > 0x289)
    {
      v33 = &texFormatUnsupported;
    }

    else
    {
      v33 = *(&off_29F342380 + (v32 - 1));
    }

    *(&v188 + 1) = v33;
    DWORD2(v180) |= 0x80u;
  }

  HIBYTE(v182) = -1;
  v34 = *(v16 + 8);
  if (!v34)
  {
    LOBYTE(v34) = [a2 sampleCount];
  }

  LOBYTE(v184) = v34;
  v35 = *(v16 + 48);
  if (!v35)
  {
    v35 = [a2 sampleCount];
  }

  BYTE1(v184) = v35;
  if ([objc_msgSend(a2 "tileFunction")] == 3)
  {
    LOBYTE(v184) = v35;
  }

  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(&v178, 0);
  v120 = v178;
  v121 = v179;
  v122 = v180;
  v36 = [objc_msgSend(objc_msgSend(a2 "linkedFunctions")];
  v37 = [a2 supportAddingBinaryFunctions];
  if ([objc_msgSend(0 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  v118 = v118 & 0xFFFFFFFB | v38;
  v39 = [objc_msgSend(0 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}];
  v118 = v118 & 0xFC0003FF | (v39 << 10);
  if ([objc_msgSend(0 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v40 = 0x8000000;
  }

  else
  {
    v40 = 0;
  }

  if (v36)
  {
    v41 = 1;
  }

  else
  {
    v41 = v37;
  }

  if (v41)
  {
    v42 = 512;
  }

  else
  {
    v42 = 0;
  }

  v118 = v40 | v118 & 0xF7FFFDFF | v42;
  v43 = *[a2 _descriptorPrivate];
  if ([objc_msgSend(v43 objectAtIndexedSubscript:{0), "pixelFormat"}])
  {
    v116 |= 0x1010101uLL;
  }

  if ([objc_msgSend(v43 objectAtIndexedSubscript:{1), "pixelFormat"}])
  {
    v116 |= 0x2020202uLL;
  }

  if ([objc_msgSend(v43 objectAtIndexedSubscript:{2), "pixelFormat"}])
  {
    v116 |= 0x4040404uLL;
  }

  if ([objc_msgSend(v43 objectAtIndexedSubscript:{3), "pixelFormat"}])
  {
    v116 |= 0x8080808uLL;
  }

  if ([objc_msgSend(v43 objectAtIndexedSubscript:{4), "pixelFormat"}])
  {
    v116 |= 0x10101010uLL;
  }

  if ([objc_msgSend(v43 objectAtIndexedSubscript:{5), "pixelFormat"}])
  {
    v116 |= 0x20202020uLL;
  }

  if ([objc_msgSend(v43 objectAtIndexedSubscript:{6), "pixelFormat"}])
  {
    v116 |= 0x40404040uLL;
  }

  if ([objc_msgSend(v43 objectAtIndexedSubscript:{7), "pixelFormat"}])
  {
    v116 |= 0x80808080uLL;
  }

  v44 = [a2 threadgroupSizeMatchesTileSize];
  v124 = v124 & 0xFFFFFFFE | v44;
  v123 = [a2 maxTotalThreadsPerThreadgroup];
  v45 = [a2 tileBuffers];
  v46 = 0;
  for (i = 0; i != 31; ++i)
  {
    v48 = [objc_msgSend(v45 _descriptorAtIndex:{i), "mutability"}];
    v49 = 1 << i;
    if (v48 != 1)
    {
      v49 = 0;
    }

    v46 |= v49;
  }

  v117 = v46;
  v50 = [a2 textureWriteRoundingMode];
  v51 = 16 * (v50 == 1);
  if (v50 == 2)
  {
    v51 = 32;
  }

  v119 = v51 | v119 & 0xFFFFFFCF;
  if ([a2 supportAddingBinaryFunctions])
  {
    v52 = 64;
  }

  else
  {
    v52 = ([objc_msgSend(objc_msgSend(a2 "linkedFunctions")] != 0) << 6;
  }

  v53 = v119 & 0xFFFFFDBF | v52;
  v54 = (v118 & 0x8BFFFE7F | (*(a3[106] + 16608) << 26) & 0xBFFFFFFF | (((*(a3[106] + 16456) >> 1) & 1) << 30)) ^ 0x40000000;
  v55 = v53 & 0xFFFFC7F7;
  v118 = v54;
  v119 = v55;
  v129 = a4 & 0xC0040000;
  if ((a4 & 0x40000) != 0)
  {
    if (AGX::isTelemetryEnabled(void)::once != -1)
    {
      dispatch_once(&AGX::isTelemetryEnabled(void)::once, &__block_literal_global_11);
    }

    v56 = 1;
    v54 = v118;
    v55 = v119;
  }

  else
  {
    v56 = 0;
  }

  v118 = v56 | (a4 >> 21) & 8 | v54 & 0xFFFFFFF4;
  v119 = v55 & 0xFFFFFF7F;
  if ([objc_msgSend(a2 "tileFunction")] == 3)
  {
    LODWORD(v122) = v122 & 0xFFFFFCFF | (((3 - __clz(1 << ((v122 >> 10) & 3) << 24)) & 3) << 8);
  }

  ReflectionKey::initGPUCompilerSPIOptionsHash(&v178, [a2 gpuCompilerSPIOptions]);
  v176 = v178;
  v177 = v179;
  os_unfair_lock_lock((a8 + 1400));
  v57 = *(a8 + 1360);
  v58 = *(a8 + 1368);
  v59 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v57, *(a8 + 1368), &v176);
  if (!v59)
  {
    if (v58 == 4)
    {
      operator new();
    }

    v60 = &v57[4 * v58];
    v61 = v177;
    *v60 = v176;
    v60[1] = v61;
    v62 = *(a8 + 1368);
    v63 = *(a8 + 1360) + 24 * v62;
    *(a8 + 1368) = v62 + 1;
    v59 = (v63 + 128);
  }

  v64 = a4 & 0x330000 | 3;
  v96 = a7;
  if ((v64 & ~v59[1]) != 0)
  {
    v65 = *v59 | v64;
    *v59 = v65;
  }

  else
  {
    v65 = 0;
  }

  os_unfair_lock_unlock((a8 + 1400));
  v66 = v65 | a4 & 0xFFFFFFFFFFCCFFFCLL;
  if (a5 || v65 & 0x400000004 | a4 & 0x400000004 || a6)
  {
    operator new();
  }

  os_unfair_lock_lock((a8 + 1400));
  v67 = VectorMap<AGX::TileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::TileProgramVariant>,4u>::operator[](a8, v113);
  if (!*v67)
  {
    v69 = dispatch_group_create();
    *v67 = v69;
LABEL_111:
    dispatch_group_enter(v69);
    os_unfair_lock_unlock((a8 + 1400));
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v98 = a8;
    v70 = ((a4 & 0x400000000) != 0) | ([objc_msgSend(a2 binaryArchives] != 0) & (a4 >> 2);
    v71 = objc_opt_new();
    [v71 setUseAIRNTInterfaces:*(a1 + 24)];
    [v71 setSync:a9 ^ 1u];
    [v71 setFunction:v99];
    [v71 setFrameworkData:v15];
    [v71 setDestinationBinaryArchive:0];
    [v71 setBinaryArchives:{objc_msgSend(a2, "binaryArchives")}];
    [v71 setPipelineOptions:a4 | 3];
    if ((a4 & 0x330003) == 0)
    {
      [v71 setPipelineOptions:{objc_msgSend(v71, "pipelineOptions") | 0x8000}];
    }

    v72 = [a2 newPipelineScript];
    if (v72)
    {
      [v71 setAirScript:v72];
      dispatch_release(v72);
    }

    [v71 setGpuCompilerSPIOptions:{objc_msgSend(a2, "gpuCompilerSPIOptions")}];
    v73 = [a2 linkedFunctions];
    [v71 setVisibleFunctions:{objc_msgSend(v73, "functions")}];
    [v71 setVisibleFunctionGroups:{objc_msgSend(v73, "groups")}];
    [v71 setPrivateVisibleFunctions:{objc_msgSend(v73, "privateFunctions")}];
    v74 = v70;
    v101 = v15;
    LOBYTE(__p[0]) = 0;
    __p[1] = 0;
    *&v106 = 0;
    v109 = 0uLL;
    v75 = [a2 maxCallStackDepth];
    v76 = [a2 linkedFunctions];
    v77 = [a2 supportAddingBinaryFunctions];
    v78 = [a2 gpuCompilerSPIOptions];
    BYTE8(v107) = [a3 requiresRaytracingEmulation];
    *&v108 = v75;
    *(&v108 + 1) = v76;
    *&v110 = a4;
    *(&v110 + 1) = v97;
    v111 = a3;
    LOBYTE(v112) = 0;
    BYTE1(v112) = v77;
    *(&v112 + 1) = v78;
    *&v107 = a10;
    v163[0] = MEMORY[0x29EDCA5F8];
    v163[1] = 3321888768;
    v163[2] = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createTileProgramVariantEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_11TileProgramEbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18TileProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke;
    v163[3] = &unk_2A23F6EA0;
    v163[8] = a1;
    v163[7] = v130;
    v172 = a9;
    v163[9] = v67;
    v163[10] = v98;
    v163[11] = v66;
    v173 = v176;
    v174 = v177;
    v163[4] = v99;
    v163[5] = a3;
    AGX::Impl::TileProgramKey::TileProgramKey(&v164, v113);
    v171 = v129;
    v164 = &unk_2A23F7890;
    v163[6] = a2;
    v175 = v74;
    if ((BYTE8(v107) & 1) == 0 && AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(v76))
    {
      v182 = v109;
      v183 = v110;
      v184 = v111;
      v185 = v112;
      v178 = *__p;
      v179 = v106;
      v180 = v107;
      v181 = v108;
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::TileProgramKey,true>(a1, v113, v71, &v178, v163);
    }

    else
    {
      v131[0] = MEMORY[0x29EDCA5F8];
      v131[1] = 3221225472;
      v131[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20compileFunction_ImplINS_14TileProgramKeyEEEvRKT_P29MTLCompileFunctionRequestDataRKNS5_21DriverRequestDataImplILb1EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplILb1EEEE_block_invoke;
      v131[3] = &unk_29F341710;
      v131[4] = v163;
      v79 = *a1;
      v132[0] = MEMORY[0x29EDCA5F8];
      v132[1] = 3221225472;
      v132[2] = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
      v132[3] = &unk_29F342280;
      v132[4] = v131;
      v80 = v79[3];
      if (v80 && *(v80 + 120) == 1)
      {
        v81 = [objc_msgSend(v71 "binaryArchives")];
        v82 = 0x200000000000;
        if (!v81)
        {
          v82 = 1;
        }

        atomic_fetch_or(v80, v82);
        v83 = v79[3];
        v84 = [v71 destinationBinaryArchive];
        v85 = 0x400000000000;
        if (!v84)
        {
          v85 = 1;
        }

        atomic_fetch_or(v83, v85);
      }

      if ([v71 destinationBinaryArchive])
      {
        {
          AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
        }

        if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
        {
          [v71 setUseAIRNTInterfaces:0];
        }
      }

      buffer = 0;
      size = 0;
      (*(v113[0] + 2))(v113, &buffer, &size);
      v86 = dispatch_data_create(buffer, size, 0, 0);
      [v71 setDriverKeyData:v86];
      if ([v71 airScript])
      {
        v87 = [v71 airScript];
        v192 = 0uLL;
        *&v193 = 0;
        *&v192 = dispatch_data_create_map(v87, &v192 + 1, &v193);
        ProgramKey<(_AGCStreamToken)5,(AGX::DriverShaderCompilationMode)0>::getFunctionId(v113, &v178, (*(&v192 + 1) + **(&v192 + 1)));
        dispatch_release(v192);
        v192 = v178;
        v193 = v179;
        [v71 setVendorPluginFunctionId:&v192];
      }

      *&v178 = MEMORY[0x29EDCA5F8];
      *(&v178 + 1) = 3221225472;
      *&v179 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
      *(&v179 + 1) = &unk_29F3422D0;
      *(&v180 + 1) = v132;
      *&v180 = v71;
      if ([v71 function])
      {
        v88 = mach_absolute_time();
        v89 = *v79;
        *&v192 = MEMORY[0x29EDCA5F8];
        *(&v192 + 1) = 3221225472;
        *&v193 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
        *(&v193 + 1) = &unk_29F342320;
        v194 = &v178;
        v195 = v88;
        [v89 compileFunctionRequest:v71 compilerTask:a10 completionHandler:&v192];
      }

      else
      {
        if ([v71 frameworkData] || objc_msgSend(v71, "pipelineOptions"))
        {
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
        }

        *&v192 = MEMORY[0x29EDCA5F8];
        *(&v192 + 1) = 3221225472;
        *&v193 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
        *(&v193 + 1) = &unk_29F3422F8;
        v194 = &v178;
        v91 = [objc_msgSend(v71 "binaryArchives")];
        v92 = *v79;
        v93 = [v71 driverKeyData];
        if (v91)
        {
          [v92 compileRequest:v93 binaryArchives:objc_msgSend(v71 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v71 completionHandler:{"pipelineCache"), objc_msgSend(v71, "sync"), &v192}];
        }

        else
        {
          [v92 compileRequest:v93 pipelineCache:objc_msgSend(v71 sync:"pipelineCache") completionHandler:{objc_msgSend(v71, "sync"), &v192}];
        }
      }

      dispatch_release(v86);
    }

    v164 = &unk_2A23FA7D8;
    if (v169)
    {
      v170 = v169;
      operator delete(v169);
    }

    if (v167)
    {
      v168 = v167;
      operator delete(v167);
    }

    v164 = &unk_2A23F7850;
    if (v165)
    {
      v166 = v165;
      operator delete(v165);
    }

    v15 = v101;
    a8 = v98;
    goto LABEL_151;
  }

  if (*(v67 + 40) == 1)
  {
    v68 = *(v67 + 8);
    if (v68)
    {
      (*(*v68 + 8))(v68);
    }

    *(v67 + 8) = 0;
    *(v67 + 16) = 0;

    *(v67 + 24) = 0;
    *(v67 + 32) = 0;
    *(v67 + 40) = 0;
    v69 = *v67;
    goto LABEL_111;
  }

  if ((v65 & 0x330003) != 0)
  {
    dispatch_group_enter(*v67);
  }

  os_unfair_lock_unlock((a8 + 1400));
  if ((v65 & 0x330003) != 0)
  {
    v90 = *a1;
    v152 = MEMORY[0x29EDCA5F8];
    v153 = 3221225472;
    v161 = v176;
    v154 = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createTileProgramVariantEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_11TileProgramEbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18TileProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2173;
    v155 = &unk_29F341918;
    v158 = a8;
    v159 = v65 | a4 & 0xFFFFFFFFFFCCFFFCLL;
    v162 = v177;
    v156 = a3;
    v157 = v99;
    v160 = v67;
    [*v90 reflectionWithFunction:? options:? sync:? completionHandler:?];
  }

LABEL_151:
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3321888768;
  v136 = ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createTileProgramVariantEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_11TileProgramEbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18TileProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2;
  v137 = &unk_2A23F6ED8;
  v140 = a8;
  v141 = v67;
  AGX::Impl::TileProgramKey::TileProgramKey(&v142, v113);
  v142 = &unk_2A23F7890;
  v149 = v129;
  v150 = v176;
  v151 = v177;
  v138 = a11;
  v139 = v130;
  v94 = *v67;
  if (a9)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_notify(v94, global_queue, block);
  }

  else
  {
    dispatch_group_wait(v94, 0xFFFFFFFFFFFFFFFFLL);
    v136(block);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  v142 = &unk_2A23FA7D8;
  if (v147)
  {
    v148 = v147;
    operator delete(v147);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  v142 = &unk_2A23F7850;
  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  v113[0] = &unk_2A23FA7D8;
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  v113[0] = &unk_2A23F7850;
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  _Block_object_dispose(v130, 8);
}

void sub_29CC7C4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  os_unfair_lock_unlock(v61 + 350);
  AGX::TileProgramKey::~TileProgramKey(&a34);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createTileProgramVariantEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_11TileProgramEbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18TileProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(MEMORY[0x29EDB8E00]);
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillCompilePerformanceStatisticsDictionary(*a3, *(a3 + 8), *(*(*(a1 + 56) + 8) + 40), *(a3 + 56), [*(a1 + 32) name], *(a1 + 312));
  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (v5)
  {
    v6 = [v5 objectForKey:*MEMORY[0x29EDBB378]];
    if (v6)
    {
      [v6 unsignedLongLongValue];
    }
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a3 + 16);
  [*(a1 + 32) functionType];
  AGX::Program<AGX::HAL300::TileProgramVariant,AGX::TileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(v9, v10, v11, a1 + 313, v7);
  v17 = v8;
  if (!v7)
  {
    v12 = [*(a1 + 48) profileControl];
    if (v12)
    {
      v13 = v12;
      [v12 uscCliqueTraceLevel];
      [v13 uscEmitPosition];
      [v13 uscEmitThreadControlFlow];
    }

    operator new();
  }

  v14 = *(a1 + 72);
  v15 = *(a3 + 32);
  v16 = *(a1 + 345);
  *(v14 + 8) = 0;
  *(v14 + 16) = v7;

  *(v14 + 24) = [v17 copy];
  if (*(v14 + 8))
  {

    *(v14 + 32) = v15;
  }

  else
  {
    *(v14 + 40) = v16;
  }

  dispatch_group_leave(*v14);
}

void sub_29CC7EEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char *a13, void **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, void **a25, void **a26, uint64_t a27, uint64_t a28, void **a29, void **a30, void **a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36, uint64_t a37, uint64_t a38, char a39)
{
  CompileStatistics::~CompileStatistics(a25);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a36);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v39 + 2168));
  v42 = *a24;
  if (*a24)
  {
    *(v39 + 2152) = v42;
    operator delete(v42);
  }

  v43 = *a26;
  if (*a26)
  {
    *(v39 + 2128) = v43;
    operator delete(v43);
  }

  if (*a13 < 0)
  {
    operator delete(*a14);
    if ((*(v39 + 1527) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v39 + 1527) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v39 + 1495) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  operator delete(*a29);
  if (*(v39 + 1495) < 0)
  {
LABEL_8:
    operator delete(*a30);
    if ((*(v39 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  if ((*(v39 + 1471) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v39 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_31:
  operator delete(*a31);
  if ((*(v39 + 1447) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v39 + 1152));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v39 + 1016));
    v44 = *(v39 + 936);
    if (v44)
    {
      *(v39 + 944) = v44;
      operator delete(v44);
    }

    v45 = *(v39 + 912);
    if (v45)
    {
      *(v39 + 920) = v45;
      operator delete(v45);
    }

    v46 = (v39 + 864);
    v47 = *(v39 + 888);
    if (v47)
    {
      *(v39 + 896) = v47;
      operator delete(v47);
    }

    v48 = *v46;
    if (*v46)
    {
      *(v39 + 872) = v48;
      operator delete(v48);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v39 + 776);
    v49 = *a11;
    if (*a11)
    {
      *(v39 + 760) = v49;
      operator delete(v49);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a12);
    v50 = *a15;
    if (*a15)
    {
      *(v39 + 600) = v50;
      operator delete(v50);
    }

    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a23);
    if (*(v40 - 201) < 0)
    {
      operator delete(*(v40 - 224));
    }

    AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(&a39);
    if (SLOBYTE(STACK[0x2DF]) < 0)
    {
      operator delete(STACK[0x2C8]);
    }

    MEMORY[0x29ED520D0](v39, 0x10F3C402576BE86);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a32);
  goto LABEL_11;
}

uint64_t AGX::Impl::TileProgramKey::TileProgramKey(uint64_t this, const AGX::Impl::TileProgramKey *a2)
{
  *this = &unk_2A23F7850;
  *(this + 8) = *(a2 + 2);
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  v3 = *(a2 + 2);
  v2 = *(a2 + 3);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *this = &unk_2A23FA7D8;
  v4 = *(a2 + 104);
  v5 = *(a2 + 120);
  v6 = *(a2 + 136);
  v7 = *(a2 + 19);
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  *(this + 160) = 0;
  *(this + 88) = v11;
  *(this + 72) = v10;
  *(this + 56) = v9;
  *(this + 40) = v8;
  *(this + 152) = v7;
  *(this + 136) = v6;
  *(this + 120) = v5;
  *(this + 104) = v4;
  *(this + 168) = 0;
  *(this + 176) = 0;
  v13 = *(a2 + 20);
  v12 = *(a2 + 21);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_11;
  }

  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 200) = 0;
  v15 = *(a2 + 23);
  v14 = *(a2 + 24);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_11:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return this;
}

void sub_29CC7F344(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[21] = v5;
    operator delete(v5);
  }

  *v1 = v2;
  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::hasAirLinkedIntersectionFunction(void *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = [a1 functions];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if ([*(*(&v12 + 1) + 8 * v6) functionType] == 6)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = [a1 privateFunctions];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    result = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = *v13;
LABEL_11:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if ([*(*(&v12 + 1) + 8 * v11) functionType] == 6)
      {
        break;
      }

      if (v9 == ++v11)
      {
        result = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v9 = result;
        if (result)
        {
          goto LABEL_11;
        }

        return result;
      }
    }
  }

  return 1;
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::compileFunctionWithAirLinkedIntersectionFunction_Impl<AGX::TileProgramKey,true>(void *a1, void (***a2)(void, CC_SHA256_CTX *), void *a3, _OWORD *a4, uint64_t a5)
{
  v58 = *MEMORY[0x29EDCA608];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v8 = a4[3];
  v39 = a4[4];
  v9 = a4[6];
  v40 = a4[5];
  v41 = v9;
  v42 = a4[7];
  v10 = a4[1];
  v35 = *a4;
  v11 = a4[2];
  v36 = v10;
  v37 = v11;
  v30 = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_14TileProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke;
  v31 = &unk_29F341658;
  v33 = a5;
  v34 = a1;
  v38 = v8;
  v32 = a3;
  if (*a4 == 1)
  {
    v12 = [a3 airScript];
    v50 = 0uLL;
    *&v51 = 0;
    *&v50 = dispatch_data_create_map(v12, &v50 + 1, &v51);
    ProgramKey<(_AGCStreamToken)5,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
    dispatch_release(v50);
    AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCReplyArray>(a4, &v54, &v28);
  }

  else
  {
    v13 = *a1;
    v14 = *(a4 + 4);
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 3221225472;
    v45 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke;
    v46 = &unk_29F342280;
    v47 = &v28;
    v15 = *(v13 + 24);
    if (v15 && *(v15 + 120) == 1)
    {
      v16 = [objc_msgSend(a3 binaryArchives];
      v17 = 0x200000000000;
      if (!v16)
      {
        v17 = 1;
      }

      atomic_fetch_or(v15, v17);
      v18 = *(v13 + 24);
      v19 = [a3 destinationBinaryArchive];
      v20 = 0x400000000000;
      if (!v19)
      {
        v20 = 1;
      }

      atomic_fetch_or(v18, v20);
    }

    if ([a3 destinationBinaryArchive])
    {
      {
        AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
      }

      if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
      {
        [a3 setUseAIRNTInterfaces:0];
      }
    }

    v48 = 0;
    v49 = 0;
    ((*a2)[2])(a2, &v49, &v48);
    v21 = dispatch_data_create(v49, v48, 0, 0);
    [a3 setDriverKeyData:v21];
    if ([a3 airScript])
    {
      v22 = [a3 airScript];
      v50 = 0uLL;
      *&v51 = 0;
      *&v50 = dispatch_data_create_map(v22, &v50 + 1, &v51);
      ProgramKey<(_AGCStreamToken)5,(AGX::DriverShaderCompilationMode)0>::getFunctionId(a2, &v54, (*(&v50 + 1) + **(&v50 + 1)));
      dispatch_release(v50);
      v50 = v54;
      v51 = v55;
      [a3 setVendorPluginFunctionId:&v50];
    }

    *&v54 = MEMORY[0x29EDCA5F8];
    *(&v54 + 1) = 3221225472;
    *&v55 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *(&v55 + 1) = &unk_29F3422D0;
    v56 = a3;
    v57 = &v43;
    if ([a3 function])
    {
      v23 = mach_absolute_time();
      v24 = *v13;
      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v51 + 1) = &unk_29F342320;
      v52 = &v54;
      v53 = v23;
      [v24 compileFunctionRequest:a3 compilerTask:v14 completionHandler:&v50];
    }

    else
    {
      if ([a3 frameworkData] || objc_msgSend(a3, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      *&v50 = MEMORY[0x29EDCA5F8];
      *(&v50 + 1) = 3221225472;
      *&v51 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v51 + 1) = &unk_29F3422F8;
      v52 = &v54;
      v25 = [objc_msgSend(a3 "binaryArchives")] == 0;
      v26 = *v13;
      v27 = [a3 driverKeyData];
      if (v25)
      {
        [v26 compileRequest:v27 pipelineCache:objc_msgSend(a3 sync:"pipelineCache") completionHandler:{objc_msgSend(a3, "sync"), &v50}];
      }

      else
      {
        [v26 compileRequest:v27 binaryArchives:objc_msgSend(a3 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(a3 completionHandler:{"pipelineCache"), objc_msgSend(a3, "sync"), &v50}];
      }
    }

    dispatch_release(v21);
  }
}

void AGX::TileProgramKey::~TileProgramKey(AGX::TileProgramKey *this)
{
  *this = &unk_2A23FA7D8;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  *this = &unk_2A23F7850;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

void ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createTileProgramVariantEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_11TileProgramEbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18TileProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2173(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  [*(a1 + 40) functionType];
  AGX::Program<AGX::HAL300::TileProgramVariant,AGX::TileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(v7, v6, a3, a1 + 72, a2);
  v8 = **(a1 + 64);

  dispatch_group_leave(v8);
}

void ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE24createTileProgramVariantEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEP7NSArrayPNS1_11TileProgramEbPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPNS1_18TileProgramVariantE13ReflectionKeyP19NSMutableDictionary16MTLCompilerErrorP8NSStringE_block_invoke_2(void *a1)
{
  memset(v11, 0, 26);
  v2 = a1[7];
  if (*(v2 + 41) != 1)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (*(v2 + 8))
  {
    v3 = a1[6];
    os_unfair_lock_lock(v3 + 350);
    v4 = VectorMap<AGX::TileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::TileProgramVariant>,4u>::operator[](v3, (a1 + 8));
    if (*v4)
    {
      os_unfair_lock_unlock(v3 + 350);
      dispatch_group_wait(*v4, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v7 = dispatch_group_create();
      *v4 = v7;
      dispatch_group_enter(v7);
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);
      *(v4 + 8) = *(v2 + 8);
      *(v4 + 16) = v8;

      *(v4 + 24) = [v9 copy];
      if (*(v4 + 8))
      {

        *(v4 + 32) = 0;
      }

      else
      {
        *(v4 + 40) = 0;
      }

      dispatch_group_leave(*v4);
      *(v2 + 8) = 0;
      os_unfair_lock_unlock(v3 + 350);
    }

    v5 = 0;
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_14;
    }
  }

  dispatch_release(v6);
LABEL_14:
  v10 = *(v2 + 8);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MEMORY[0x29ED520D0](v2, 0x10A0C405D73F519);
LABEL_17:
  (*(a1[4] + 16))();
}

void sub_29CC7FCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  os_unfair_lock_unlock(v9 + 350);
  AGX::ProgramVariantEntry<AGX::HAL300::TileProgramVariant>::~ProgramVariantEntry(&a9);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_64c26_ZTSN3AGX14TileProgramKeyE(void *a1)
{
  a1[8] = &unk_2A23FA7D8;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  a1[8] = &unk_2A23F7850;
  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;

    operator delete(v4);
  }
}

uint64_t __copy_helper_block_e8_64c26_ZTSN3AGX14TileProgramKeyE(uint64_t a1, uint64_t a2)
{
  result = AGX::Impl::TileProgramKey::TileProgramKey(a1 + 64, (a2 + 64));
  *(a1 + 64) = &unk_2A23F7890;
  *(a1 + 272) = *(a2 + 272);
  return result;
}

uint64_t AGX::ProgramVariantEntry<AGX::HAL300::TileProgramVariant>::~ProgramVariantEntry(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t VectorMap<AGX::TileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::TileProgramVariant>,4u>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1072);
  v5 = *(a1 + 1064);
  if (v4)
  {
    v6 = 0;
LABEL_5:
    v7 = v5 + 216 * v6;
    v8 = *(a2 + 144);
    while (v8)
    {
      v9 = __clz(__rbit32(v8));
      v8 &= ~(1 << v9);
      if (*(a2 + 112 + 4 * v9) != *(v7 + 112 + 4 * v9))
      {
LABEL_4:
        if (++v6 == v4)
        {
          goto LABEL_11;
        }

        goto LABEL_5;
      }
    }

    if (*(v7 + 48) ^ *(a2 + 48) | (*(v7 + 108) ^ *(a2 + 108)) | (*(v7 + 100) ^ *(a2 + 100)) | *(v7 + 56) ^ *(a2 + 56) | (*(v7 + 156) ^ *(a2 + 156)) | (*(a2 + 144) != *(v7 + 144)) | (*(v7 + 152) ^ *(a2 + 152)) | (*(a2 + 168) != *(a2 + 160)) | (*(a2 + 192) != *(a2 + 184)) || *(a2 + 208) != *(v7 + 208))
    {
      goto LABEL_4;
    }

    v10 = v5 + 48 * v6;
  }

  else
  {
LABEL_11:
    v11 = *(v5 + 1056);
    if (v11)
    {
      v12 = *(a2 + 108);
      v13 = *(a2 + 100);
      v14 = *(a2 + 48);
      v15 = *(a2 + 56);
      v16 = a2 + 112;
      v17 = *(a2 + 144);
      v18 = *(a2 + 152);
      v19 = *(a2 + 156);
      v20 = *(a2 + 168) != *(a2 + 160);
      v21 = *(a2 + 192) != *(a2 + 184);
      v22 = *(a2 + 208);
      v23 = 1;
LABEL_15:
      v24 = *(a2 + 144);
      while (v24)
      {
        v25 = __clz(__rbit32(v24));
        v24 &= ~(1 << v25);
        if (*(v16 + 4 * v25) != *(v11 + 112 + 4 * v25))
        {
LABEL_21:
          v26 = *(a2 + 144);
          while (v26)
          {
            v27 = __clz(__rbit32(v26));
            v26 &= ~(1 << v27);
            if (*(v16 + 4 * v27) != *(v11 + 328 + 4 * v27))
            {
              goto LABEL_27;
            }
          }

          if (!(*(v11 + 264) ^ v14 | *(v11 + 324) ^ v12 | *(v11 + 316) ^ v13 | *(v11 + 272) ^ v15 | *(v11 + 372) ^ v19 | (v17 != *(v11 + 360)) | *(v11 + 368) ^ v18 | v20 | v21) && v22 == *(v11 + 424))
          {
            goto LABEL_47;
          }

LABEL_27:
          v28 = *(a2 + 144);
          while (v28)
          {
            v29 = __clz(__rbit32(v28));
            v28 &= ~(1 << v29);
            if (*(v16 + 4 * v29) != *(v11 + 544 + 4 * v29))
            {
              goto LABEL_33;
            }
          }

          if (!(*(v11 + 480) ^ v14 | *(v11 + 540) ^ v12 | *(v11 + 532) ^ v13 | *(v11 + 488) ^ v15 | *(v11 + 588) ^ v19 | (v17 != *(v11 + 576)) | *(v11 + 584) ^ v18 | v20 | v21) && v22 == *(v11 + 640))
          {
            v23 = 2;
            goto LABEL_47;
          }

LABEL_33:
          v30 = *(a2 + 144);
          while (v30)
          {
            v31 = __clz(__rbit32(v30));
            v30 &= ~(1 << v31);
            if (*(v16 + 4 * v31) != *(v11 + 760 + 4 * v31))
            {
              goto LABEL_14;
            }
          }

          if (!(*(v11 + 696) ^ v14 | *(v11 + 756) ^ v12 | *(v11 + 748) ^ v13 | *(v11 + 704) ^ v15 | *(v11 + 804) ^ v19 | (v17 != *(v11 + 792)) | *(v11 + 800) ^ v18 | v20 | v21) && v22 == *(v11 + 856))
          {
            v23 = 3;
            goto LABEL_47;
          }

LABEL_14:
          v11 = *(v11 + 1056);
          if (!v11)
          {
            goto LABEL_39;
          }

          goto LABEL_15;
        }
      }

      if (*(v11 + 48) ^ v14 | *(v11 + 108) ^ v12 | *(v11 + 100) ^ v13 | *(v11 + 56) ^ v15 | *(v11 + 156) ^ v19 | (v17 != *(v11 + 144)) | *(v11 + 152) ^ v18 | v20 | v21 || v22 != *(v11 + 208))
      {
        goto LABEL_21;
      }

      v23 = 0;
LABEL_47:
      v10 = v11 + 48 * v23;
    }

    else
    {
LABEL_39:
      if (v4 == 4)
      {
        operator new();
      }

      v32 = v5 + 216 * v4;
      *(v32 + 8) = *(a2 + 8);
      if (v32 == a2)
      {
        v39 = *(a2 + 40);
        v40 = *(a2 + 56);
        v41 = *(a2 + 72);
        *(v32 + 88) = *(a2 + 88);
        *(v32 + 72) = v41;
        *(v32 + 56) = v40;
        *(v32 + 40) = v39;
        v42 = *(a2 + 104);
        v43 = *(a2 + 120);
        v44 = *(a2 + 136);
        *(v32 + 152) = *(a2 + 152);
        *(v32 + 136) = v44;
        *(v32 + 120) = v43;
        *(v32 + 104) = v42;
      }

      else
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v32 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
        v33 = *(a2 + 40);
        v34 = *(a2 + 56);
        v35 = *(a2 + 72);
        *(v32 + 88) = *(a2 + 88);
        *(v32 + 72) = v35;
        *(v32 + 56) = v34;
        *(v32 + 40) = v33;
        v36 = *(a2 + 104);
        v37 = *(a2 + 120);
        v38 = *(a2 + 136);
        *(v32 + 152) = *(a2 + 152);
        *(v32 + 136) = v38;
        *(v32 + 120) = v37;
        *(v32 + 104) = v36;
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v32 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 5);
        std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((v32 + 184), *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 5);
      }

      *(v32 + 208) = *(a2 + 208);
      v45 = *(a1 + 1072);
      v10 = *(a1 + 1064) + 48 * v45;
      *(a1 + 1072) = v45 + 1;
    }
  }

  return v10 + 864;
}

AGX::TileProgramKey *AGX::TileProgramKey::TileProgramKey(AGX::TileProgramKey *this, MTLLinkedFunctions *a2, NSArray *a3)
{
  *(this + 2) = 5;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *this = &unk_2A23FA7D8;
  *(this + 13) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 1985229328;
  v6 = (this + 160);
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(this + 20, 0);
  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(this + 23, 0);
  *this = &unk_2A23F7890;
  *(this + 26) = 0;
  ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(&__p, a3);
  if (v6 != &__p)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(v6, __p, v9, (v9 - __p) >> 5);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(&__p, a2);
  if ((this + 184) != &__p)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(this + 23, __p, v9, (v9 - __p) >> 5);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return this;
}

void sub_29CC805DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::TileProgramKey::~TileProgramKey(v11);
  _Unwind_Resume(a1);
}

void sub_29CC80610(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[21] = v5;
    operator delete(v5);
  }

  *v1 = v2;
  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void AGX::Program<AGX::HAL300::TileProgramVariant,AGX::TileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::signalPending(uint64_t a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a2 & 0x330003;
  if ((*&a2 & 0x330003) == 0)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 1400));
  v10 = *(a1 + 1360);
  v11 = *(a1 + 1368);
  v12 = VectorMap<ReflectionKey,AGX::Program<AGX::HAL300::MeshProgramVariant,AGX::MeshProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::ReflectionEntry,4u>::find(v10, *(a1 + 1368), a4);
  if (!v12)
  {
    if (v11 == 4)
    {
      operator new();
    }

    v14 = &v10[4 * v11];
    v15 = *(a4 + 16);
    *v14 = *a4;
    v14[1] = v15;
    v16 = *(a1 + 1368);
    v17 = *(a1 + 1360) + 24 * v16;
    *(a1 + 1368) = v16 + 1;
    v12 = v17 + 128;
    v13 = *(v17 + 136);
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    if ((v5 & ~v13) != 0)
    {
      if (a3)
      {
        v18 = v12;
        dispatch_retain(a3);
        v12 = v18;
      }

      if (*(v12 + 16))
      {
        v19 = v12;
        dispatch_release(*(v12 + 16));
        v12 = v19;
      }

      *(v12 + 8) = v5;
      *(v12 + 16) = a3;
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 8);
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  *v12 = v13;
LABEL_15:

  os_unfair_lock_unlock((a1 + 1400));
}

void ProgramKey<(_AGCStreamToken)5,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void sub_29CC80A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *ProgramKey<(_AGCStreamToken)5,(AGX::DriverShaderCompilationMode)0>::getFunctionId(void (***a1)(void, CC_SHA256_CTX *), unsigned __int8 *a2, AGX *a3)
{
  CC_SHA256_Init(&c);
  (**a1)(a1, &c);
  *len = 0;
  data = 0;
  if (a3 && AGX::GetSerializedVertexFormat(a3, &data, len, v6, v7))
  {
    v8 = data;
    CC_SHA256_Update(&c, data, len[0]);
    free(v8);
  }

  CC_SHA256_Final(a2, &c);
  return a2;
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCDeserializedReply>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AGCDeserializedReply::AGCDeserializedReply(v16);
  v6 = [*(a1 + 8) newArchiveReplyForPipelineFunctionWithDescriptor:*(a1 + 16) functionType:*(a1 + 24) functionId:a2];
  if ([v6 isError])
  {
    v7 = [v6 errorMessage];
LABEL_10:
    v10 = 0;
    v12 = 4;
    goto LABEL_11;
  }

  v8 = [v6 type];
  v9 = *(a1 + 24);
  v7 = @"Internal error during archive lookup";
  if (v8 != v9)
  {
    goto LABEL_10;
  }

  buffer_ptr[0] = 0;
  size_ptr = 0;
  v10 = dispatch_data_create_map([v6 binary], buffer_ptr, &size_ptr);
  v11 = AGCDeserializedReply::deserialize(v16, buffer_ptr[0], size_ptr);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  if (v11)
  {
    v7 = 0;
  }

LABEL_11:
  v13 = [v6 reflectionBlock];
  buffer_ptr[0] = 0;
  buffer_ptr[1] = 0;
  buffer_ptr[2] = v13;
  buffer_ptr[3] = 0;
  buffer_ptr[4] = 0;
  buffer_ptr[5] = v12;
  buffer_ptr[6] = v7;
  buffer_ptr[7] = 0;
  (*(a3 + 16))(a3, v16, buffer_ptr);
  if (v10)
  {
    dispatch_release(v10);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v16);
}

void sub_29CC80C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CC80F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void AGCDeserializedReply::AGCDeserializedReply(AGCDeserializedReply *this)
{
  v80 = *MEMORY[0x29EDCA608];
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 4) = 0u;
  *(this + 80) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 9) = 0u;
  *(this + 160) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  *(this + 200) = 0;
  *(this + 184) = 0u;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 240) = 0;
  *(this + 14) = 0u;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0;
  *(this + 41) = 0;
  *(this + 84) = 0;
  *(this + 19) = 0u;
  *(this + 320) = 0;
  *(this + 46) = 0;
  *(this + 94) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0;
  *(this + 51) = 0;
  *(this + 104) = 0;
  *(this + 24) = 0u;
  *(this + 400) = 0;
  *(this + 56) = 0;
  *(this + 114) = 0;
  *(this + 440) = 0;
  *(this + 424) = 0u;
  *(this + 61) = 0;
  *(this + 124) = 0;
  *(this + 480) = 0;
  *(this + 29) = 0u;
  *(this + 66) = 0;
  *(this + 134) = 0;
  *(this + 520) = 0;
  *(this + 504) = 0u;
  *(this + 71) = 0;
  *(this + 144) = 0;
  *(this + 560) = 0;
  *(this + 34) = 0u;
  *(this + 76) = 0;
  *(this + 154) = 0;
  *(this + 600) = 0;
  *(this + 584) = 0u;
  *(this + 81) = 0;
  *(this + 164) = 0;
  *(this + 640) = 0;
  *(this + 39) = 0u;
  *(this + 86) = 0;
  *(this + 174) = 0;
  *(this + 680) = 0;
  *(this + 664) = 0u;
  *(this + 91) = 0;
  *(this + 184) = 0;
  *(this + 720) = 0;
  *(this + 44) = 0u;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 760) = 0;
  *(this + 744) = 0u;
  *(this + 101) = 0;
  *(this + 204) = 0;
  *(this + 800) = 0;
  *(this + 49) = 0u;
  *(this + 106) = 0;
  *(this + 214) = 0;
  *(this + 840) = 0;
  *(this + 824) = 0u;
  *(this + 111) = 0;
  *(this + 224) = 0;
  *(this + 880) = 0;
  *(this + 54) = 0u;
  *(this + 116) = 0;
  *(this + 234) = 0;
  *(this + 920) = 0;
  *(this + 904) = 0u;
  *(this + 121) = 0;
  *(this + 244) = 0;
  *(this + 960) = 0;
  *(this + 59) = 0u;
  *(this + 126) = 0;
  *(this + 254) = 0;
  *(this + 1000) = 0;
  *(this + 984) = 0u;
  *(this + 131) = 0;
  *(this + 264) = 0;
  *(this + 1040) = 0;
  *(this + 64) = 0u;
  *(this + 136) = 0;
  *(this + 274) = 0;
  *(this + 1080) = 0;
  *(this + 1064) = 0u;
  *(this + 141) = 0;
  *(this + 284) = 0;
  *(this + 1120) = 0;
  *(this + 69) = 0u;
  *(this + 1144) = 0;
  *(this + 147) = 0;
  *(this + 296) = 0;
  *(this + 1168) = 0;
  *(this + 72) = 0u;
  *(this + 1192) = 0u;
  *(this + 1208) = 0u;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 306) = 1065353216;
  *(this + 78) = 0u;
  *(this + 77) = 0u;
  *(this + 316) = 1065353216;
  *(this + 1272) = 0u;
  *(this + 1288) = 0u;
  *(this + 326) = 1065353216;
  *(this + 83) = 0u;
  *(this + 82) = 0u;
  *(this + 336) = 1065353216;
  *(this + 1352) = 0u;
  *(this + 1368) = 0u;
  *(this + 346) = 1065353216;
  *(this + 88) = 0u;
  *(this + 87) = 0u;
  *(this + 356) = 1065353216;
  *(this + 1432) = 0u;
  *(this + 1448) = 0u;
  *(this + 366) = 1065353216;
  *(this + 93) = 0u;
  *(this + 92) = 0u;
  *(this + 376) = 1065353216;
  *(this + 1512) = 0u;
  *(this + 1528) = 0u;
  *(this + 386) = 1065353216;
  *(this + 98) = 0u;
  *(this + 97) = 0u;
  *(this + 396) = 1065353216;
  *(this + 1592) = 0u;
  *(this + 1608) = 0u;
  *(this + 406) = 1065353216;
  *(this + 103) = 0u;
  *(this + 102) = 0u;
  *(this + 416) = 1065353216;
  *(this + 1672) = 0u;
  *(this + 1688) = 0u;
  *(this + 426) = 1065353216;
  *(this + 108) = 0u;
  *(this + 107) = 0u;
  *(this + 436) = 1065353216;
  *(this + 1752) = 0u;
  *(this + 1768) = 0u;
  *(this + 446) = 1065353216;
  *(this + 452) = 0;
  *(this + 112) = 0u;
  *(this + 1816) = 0u;
  *(this + 1832) = 0u;
  *(this + 1848) = xmmword_29F341138;
  *(this + 1864) = *&off_29F341148;
  *(this + 1928) = xmmword_29F341188;
  *(this + 1944) = *off_29F341198;
  *(this + 1896) = *&off_29F341168;
  *(this + 1912) = xmmword_29F341178;
  *(this + 1880) = xmmword_29F341158;
  v39 = 6;
  strcpy(v38, "__TEXT");
  v40 = 0;
  v42 = 12;
  strcpy(v41, "__TEXT_CONST");
  v43 = 1;
  v2 = *(this + 233);
  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v45 = v3;
  if (v3)
  {
    memmove(&v44, v2, v3);
  }

  *(&v44 + v4) = 0;
  v46 = 2;
  v5 = *(this + 234);
  v6 = strlen(v5);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v48 = v6;
  if (v6)
  {
    memmove(&v47, v5, v6);
  }

  *(&v47 + v7) = 0;
  v49 = 3;
  v8 = *(this + 235);
  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v51 = v9;
  if (v9)
  {
    memmove(&v50, v8, v9);
  }

  *(&v50 + v10) = 0;
  v52 = 4;
  v11 = *(this + 236);
  v12 = strlen(v11);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v54 = v12;
  if (v12)
  {
    memmove(&v53, v11, v12);
  }

  *(&v53 + v13) = 0;
  v55 = 5;
  v14 = *(this + 237);
  v15 = strlen(v14);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  v57 = v15;
  if (v15)
  {
    memmove(&v56, v14, v15);
  }

  *(&v56 + v16) = 0;
  v58 = 6;
  v17 = *(this + 238);
  v18 = strlen(v17);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v60 = v18;
  if (v18)
  {
    memmove(&v59, v17, v18);
  }

  *(&v59 + v19) = 0;
  v61 = 7;
  v20 = *(this + 239);
  v21 = strlen(v20);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    operator new();
  }

  v63 = v21;
  if (v21)
  {
    memmove(&v62, v20, v21);
  }

  *(&v62 + v22) = 0;
  v64 = 8;
  v23 = *(this + 240);
  v24 = strlen(v23);
  if (v24 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    operator new();
  }

  v66 = v24;
  if (v24)
  {
    memmove(&v65, v23, v24);
  }

  *(&v65 + v25) = 0;
  v67 = 9;
  v26 = *(this + 241);
  v27 = strlen(v26);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    operator new();
  }

  v69 = v27;
  if (v27)
  {
    memmove(&v68, v26, v27);
  }

  *(&v68 + v28) = 0;
  v70 = 10;
  v29 = *(this + 242);
  v30 = strlen(v29);
  if (v30 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v31 = v30;
  if (v30 >= 0x17)
  {
    operator new();
  }

  v72 = v30;
  if (v30)
  {
    memmove(&v71, v29, v30);
  }

  *(&v71 + v31) = 0;
  v73 = 11;
  v32 = *(this + 243);
  v33 = strlen(v32);
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_102;
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    operator new();
  }

  v75 = v33;
  if (v33)
  {
    memmove(&v74, v32, v33);
  }

  *(&v74 + v34) = 0;
  v76 = 12;
  v35 = *(this + 244);
  v36 = strlen(v35);
  if (v36 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_102:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v37 = v36;
  if (v36 >= 0x17)
  {
    operator new();
  }

  v78 = v36;
  if (v36)
  {
    memmove(&__p, v35, v36);
  }

  *(&__p + v37) = 0;
  v79 = 13;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  *(this + 498) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, v38);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, v41);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v44);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v47);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v50);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v53);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v56);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v59);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v62);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v65);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v68);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v71);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &v74);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(this + 245, &__p);
  if (v78 < 0)
  {
    operator delete(__p);
    if ((v75 & 0x80000000) == 0)
    {
LABEL_75:
      if ((v72 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_90;
    }
  }

  else if ((v75 & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(v74);
  if ((v72 & 0x80000000) == 0)
  {
LABEL_76:
    if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(v71);
  if ((v69 & 0x80000000) == 0)
  {
LABEL_77:
    if ((v66 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_92;
  }

LABEL_91:
  operator delete(v68);
  if ((v66 & 0x80000000) == 0)
  {
LABEL_78:
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_93;
  }

LABEL_92:
  operator delete(v65);
  if ((v63 & 0x80000000) == 0)
  {
LABEL_79:
    if ((v60 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_94;
  }

LABEL_93:
  operator delete(v62);
  if ((v60 & 0x80000000) == 0)
  {
LABEL_80:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_95;
  }

LABEL_94:
  operator delete(v59);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_81:
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_96;
  }

LABEL_95:
  operator delete(v56);
  if ((v54 & 0x80000000) == 0)
  {
LABEL_82:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_97;
  }

LABEL_96:
  operator delete(v53);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_83:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_98;
  }

LABEL_97:
  operator delete(v50);
  if ((v48 & 0x80000000) == 0)
  {
LABEL_84:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_99;
  }

LABEL_98:
  operator delete(v47);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_85:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_100;
  }

LABEL_99:
  operator delete(v44);
  if ((v42 & 0x80000000) == 0)
  {
LABEL_86:
    if ((v39 & 0x80000000) == 0)
    {
      return;
    }

LABEL_101:
    operator delete(v38[0]);
    return;
  }

LABEL_100:
  operator delete(v41[0]);
  if (v39 < 0)
  {
    goto LABEL_101;
  }
}

void sub_29CC81BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  v28 = v26;
  while (1)
  {
    v29 = *(v28 - 9);
    v28 -= 4;
    if (v29 < 0)
    {
      operator delete(*v28);
    }

    if (v28 == &__p)
    {
      v30 = *(v25 + 1824);
      if (v30)
      {
        *(v25 + 1832) = v30;
        operator delete(v30);
      }

      std::unordered_map<unsigned int,std::string>::~unordered_map[abi:nn200100](a14);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v25 + 1712);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](a15);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v25 + 1632);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](a16);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v25 + 1552);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](a17);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v25 + 1472);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](a10);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v25 + 1392);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](a11);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v25 + 1312);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](a12);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v25 + 1232);
      std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](a13);
      _Unwind_Resume(a1);
    }
  }
}

BOOL AGCDeserializedReply::deserialize(int8x8_t *this, _DWORD *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a3;
  if (*a2 != -17958193)
  {
    return 0;
  }

  v119 = a2[4];
  if (v119)
  {
    v4 = 0;
    v5 = a2 + 8;
    v132 = this + 219;
    v128 = &this[228];
    v112 = this + 149;
    v113 = this + 235;
    v115 = this + 233;
    v116 = this + 232;
    v125 = this + 238;
    v120 = this + 3;
    v121 = this + 239;
    v123 = *(MEMORY[0x29EDC9528] + 64);
    v124 = *MEMORY[0x29EDC9528];
    v122 = *(MEMORY[0x29EDC9528] + 72);
    v6 = MEMORY[0x29EDC93C0];
    do
    {
      v7 = *v5;
      v126 = v4;
      v127 = v5;
      if (*v5 == 2)
      {
        v12 = v5[3];
        v13 = (*this + v5[4]);
        v14 = (*this + v5[2]);
        this[224] = v14;
        this[225] = v13;
        this[226].i32[0] = v12;
        if (v12)
        {
          v15 = 0;
          v129 = *&v13 + 1;
          do
          {
            v16 = this[220];
            if (v16)
            {
              v17 = *(v14 + 5);
              v18 = vcnt_s8(v16);
              v18.i16[0] = vaddlv_u8(v18);
              if (v18.u32[0] > 1uLL)
              {
                v19 = *(v14 + 5);
                if (*&v16 <= v17)
                {
                  v19 = v17 % *&this[220];
                }
              }

              else
              {
                v19 = (v16.i32[0] - 1) & v17;
              }

              v20 = *(*v132 + 8 * v19);
              if (v20)
              {
                v21 = *v20;
                if (v21)
                {
                  v22 = *v14;
                  if (v18.u32[0] < 2uLL)
                  {
                    v24 = *&v16 - 1;
                    while (1)
                    {
                      v26 = v21[1];
                      if (v26 == v17)
                      {
                        if (*(v21 + 4) == v17)
                        {
                          goto LABEL_35;
                        }
                      }

                      else if ((v26 & v24) != v19)
                      {
                        goto LABEL_13;
                      }

                      v21 = *v21;
                      if (!v21)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  do
                  {
                    v25 = v21[1];
                    if (v25 == v17)
                    {
                      if (*(v21 + 4) == v17)
                      {
LABEL_35:
                        if ((~*(v14 + 4) & 0xE) != 0)
                        {
                          break;
                        }

                        v27 = (v21 + 3);
                        if (*(v21 + 47) < 0)
                        {
                          v27 = *v27;
                        }

                        v28 = strlen(v27);
                        if (v28 > 0x7FFFFFFFFFFFFFF7)
                        {
                          goto LABEL_205;
                        }

                        v29 = v28;
                        v23 = *(v14 + 1);
                        if (v28 >= 0x17)
                        {
                          operator new();
                        }

                        *(&__dst.__r_.__value_.__s + 23) = v28;
                        if (v28)
                        {
                          memmove(&__dst, v27, v28);
                        }

                        __dst.__r_.__value_.__s.__data_[v29] = 0;
                        v30 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(&this[245], &__dst);
                        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__dst.__r_.__value_.__l.__data_);
                        }

                        v31 = strlen((v129 + v22));
                        if (v31 > 0x7FFFFFFFFFFFFFF7)
                        {
                          goto LABEL_205;
                        }

                        v32 = v31;
                        if (v31 >= 0x17)
                        {
                          operator new();
                        }

                        *(&v135.__r_.__value_.__s + 23) = v31;
                        if (v31)
                        {
                          memmove(&v135, (v129 + v22), v31);
                        }

                        v135.__r_.__value_.__s.__data_[v32] = 0;
                        v33 = *(v30 + 10);
                        v114 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
                        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__dst, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          __dst = v135;
                        }

                        LODWORD(v137) = v23;
                        v34 = &v112[5 * v33];
                        v111 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                        __p = __dst.__r_.__value_.__r.__words[0];
                        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          p_dst = &__dst;
                        }

                        else
                        {
                          p_dst = __dst.__r_.__value_.__r.__words[0];
                        }

                        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          size = __dst.__r_.__value_.__l.__size_;
                        }

                        __s2 = p_dst;
                        v37 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](p_dst, size);
                        v38 = v37;
                        v133 = v34;
                        v39 = v34[1];
                        if (!*&v39)
                        {
                          goto LABEL_95;
                        }

                        v40 = vcnt_s8(v39);
                        v40.i16[0] = vaddlv_u8(v40);
                        if (v40.u32[0] > 1uLL)
                        {
                          v41 = v37;
                          if (v37 >= *&v39)
                          {
                            v41 = v37 % *&v39;
                          }
                        }

                        else
                        {
                          v41 = (*&v39 - 1) & v37;
                        }

                        v42 = *(*v133 + 8 * v41);
                        if (!v42 || (v43 = *v42) == 0)
                        {
LABEL_95:
                          operator new();
                        }

                        if (v40.u32[0] < 2uLL)
                        {
                          v44 = *&v39 - 1;
                          v109 = size;
                          while (1)
                          {
                            v49 = v43[1];
                            if (v49 == v38)
                            {
                              v50 = *(v43 + 39);
                              v51 = v50;
                              if (v50 < 0)
                              {
                                v50 = v43[3];
                              }

                              if (v50 == size)
                              {
                                v52 = v51 >= 0 ? (v43 + 2) : v43[2];
                                v53 = size;
                                v54 = v38;
                                v55 = v41;
                                v56 = v44;
                                v57 = memcmp(v52, __s2, v53);
                                v44 = v56;
                                v41 = v55;
                                v38 = v54;
                                size = v109;
                                if (!v57)
                                {
                                  goto LABEL_93;
                                }
                              }
                            }

                            else if ((v49 & v44) != v41)
                            {
                              goto LABEL_95;
                            }

                            v43 = *v43;
                            if (!v43)
                            {
                              goto LABEL_95;
                            }
                          }
                        }

                        while (1)
                        {
                          v45 = v43[1];
                          if (v45 == v38)
                          {
                            v46 = *(v43 + 39);
                            v47 = v46;
                            if (v46 < 0)
                            {
                              v46 = v43[3];
                            }

                            if (v46 == size)
                            {
                              v48 = v47 >= 0 ? (v43 + 2) : v43[2];
                              if (!memcmp(v48, __s2, size))
                              {
LABEL_93:
                                if (v111 < 0)
                                {
                                  operator delete(__p);
                                }

                                if (v114 < 0)
                                {
                                  operator delete(v135.__r_.__value_.__l.__data_);
                                }

                                goto LABEL_13;
                              }
                            }
                          }

                          else
                          {
                            if (v45 >= *&v39)
                            {
                              v45 %= *&v39;
                            }

                            if (v45 != v41)
                            {
                              goto LABEL_95;
                            }
                          }

                          v43 = *v43;
                          if (!v43)
                          {
                            goto LABEL_95;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (v25 >= *&v16)
                      {
                        v25 %= *&v16;
                      }

                      if (v25 != v19)
                      {
                        break;
                      }
                    }

                    v21 = *v21;
                  }

                  while (v21);
                }
              }
            }

LABEL_13:
            v14 += 4;
            ++v15;
          }

          while (v15 != v12);
        }
      }

      else if (v7 == 11)
      {
        this[227] = *(v5 + 4);
      }

      else if (v7 == 25)
      {
        this[2] = v5;
        v131 = v5[30];
        v8 = v5[16];
        v9 = (v8 + 1);
        v10 = this[228];
        v11 = (*&this[229] - *&v10) >> 2;
        if (v9 <= v11)
        {
          if (v9 < v11)
          {
            this[229] = (*&v10 + 4 * v9);
          }
        }

        else
        {
          std::vector<unsigned int>::__append(v128, v9 - v11);
          LOBYTE(v8) = *(*&this[2] + 64);
        }

        v130 = v8;
        if (v8)
        {
          v58 = 0;
          __s2a = 0;
          v59 = v127 + 18;
          v60 = 1;
          v61 = 1;
          while (1)
          {
            *(&v135.__r_.__value_.__s + 23) = 16;
            *&v135.__r_.__value_.__l.__data_ = *(v59 + 1);
            v135.__r_.__value_.__s.__data_[16] = 0;
            begin = v128->__begin_;
            v128->__begin_[v61] = v59[12] - v131;
            if (!strncmp(v59 + 16, "__GPU_STATS", 0x10uLL))
            {
              break;
            }

            if (!strncmp(v59 + 16, "__DWARF", 0x10uLL))
            {
              goto LABEL_153;
            }

            if (strncmp(v59 + 16, "__GPU_METADATA", 0x10uLL))
            {
LABEL_105:
              if (!strncmp(v59 + 16, "__TEXT", 0x10uLL))
              {
                v71 = strncmp(v59, "__const", 0x10uLL);
                v63 = v116;
                if (!v71)
                {
                  goto LABEL_121;
                }

                v72 = strncmp(v59, "__cstring", 0x10uLL);
                v63 = v115;
                if (!v72)
                {
                  goto LABEL_121;
                }
              }

              if (!strncmp(v59 + 16, "__DATA", 0x10uLL) && !strncmp(v59, "__common", 0x10uLL))
              {
                begin[v61] = *(v59 + 4);
                v63 = v113;
                goto LABEL_121;
              }

              goto LABEL_122;
            }

            if (!strncmp(v59, "__helpers", 0x10uLL) && *&this[28] && *&this[29])
            {
              v134 = v58;
              v73 = 1;
              goto LABEL_123;
            }

            if (!strncmp(v59, "__helpers", 0x10uLL))
            {
              goto LABEL_105;
            }

            if ((__s2a & 1) == 0)
            {
              v134 = v58;
              v73 = 0;
              __s2a = 1;
LABEL_123:
              if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v74 = &v135;
              }

              else
              {
                v74 = v135.__r_.__value_.__r.__words[0];
              }

              v75 = strlen(v74);
              if (v75 <= 0x7FFFFFFFFFFFFFF7)
              {
                v76 = v75;
                if (v75 >= 0x17)
                {
                  operator new();
                }

                *(&__dst.__r_.__value_.__s + 23) = v75;
                if (v75)
                {
                  memmove(&__dst, v74, v75);
                }

                __dst.__r_.__value_.__s.__data_[v76] = 0;
                v77 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(&this[245], &__dst);
                v78 = v77;
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  if (v78)
                  {
                    goto LABEL_134;
                  }
                }

                else if (v77)
                {
LABEL_134:
                  v79 = *(v59 + 5);
                  v80 = v59;
                  if (v79)
                  {
                    v80 = (*this + v59[12]);
                  }

                  if ((v73 & 1) == 0)
                  {
                    v81 = v59[15];
                    v82 = *this + v59[14];
                    v83 = &v120[5 * *(v78 + 10)];
                    *v83 = v80;
                    *(v83 + 1) = v79;
                    v83[16] = v61;
                    *(v83 + 3) = v82;
                    *(v83 + 8) = v81;
                  }

                  LODWORD(__dst.__r_.__value_.__l.__data_) = v60;
                  v84 = strlen(v74);
                  if (v84 <= 0x7FFFFFFFFFFFFFF7)
                  {
                    v85 = v84;
                    if (v84 >= 0x17)
                    {
                      operator new();
                    }

                    HIBYTE(v137) = v84;
                    if (v84)
                    {
                      memmove(&__dst.__r_.__value_.__r.__words[1], v74, v84);
                    }

                    *(&__dst.__r_.__value_.__r.__words[1] + v85) = 0;
                    v96 = this[220];
                    if (!v96)
                    {
                      goto LABEL_179;
                    }

                    v97 = vcnt_s8(v96);
                    v97.i16[0] = vaddlv_u8(v97);
                    if (v97.u32[0] > 1uLL)
                    {
                      data_low = LODWORD(__dst.__r_.__value_.__l.__data_);
                      if (v96 <= LODWORD(__dst.__r_.__value_.__l.__data_))
                      {
                        data_low = LODWORD(__dst.__r_.__value_.__l.__data_) % v96;
                      }
                    }

                    else
                    {
                      data_low = (v96 - 1) & __dst.__r_.__value_.__l.__data_;
                    }

                    v99 = *(*v132 + 8 * data_low);
                    if (!v99 || (v100 = *v99) == 0)
                    {
LABEL_179:
                      operator new();
                    }

                    if (v97.u32[0] < 2uLL)
                    {
                      while (1)
                      {
                        v102 = v100[1];
                        if (v102 == LODWORD(__dst.__r_.__value_.__l.__data_))
                        {
                          if (*(v100 + 4) == LODWORD(__dst.__r_.__value_.__l.__data_))
                          {
                            goto LABEL_184;
                          }
                        }

                        else if ((v102 & (v96 - 1)) != data_low)
                        {
                          goto LABEL_179;
                        }

                        v100 = *v100;
                        if (!v100)
                        {
                          goto LABEL_179;
                        }
                      }
                    }

                    while (1)
                    {
                      v101 = v100[1];
                      if (v101 == LODWORD(__dst.__r_.__value_.__l.__data_))
                      {
                        if (*(v100 + 4) == LODWORD(__dst.__r_.__value_.__l.__data_))
                        {
LABEL_184:
                          if (SHIBYTE(v137) < 0)
                          {
                            operator delete(__dst.__r_.__value_.__l.__size_);
                          }

                          v58 = v134 + 1;
                          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_187;
                          }

                          goto LABEL_154;
                        }
                      }

                      else
                      {
                        if (v101 >= v96)
                        {
                          v101 %= v96;
                        }

                        if (v101 != data_low)
                        {
                          goto LABEL_179;
                        }
                      }

                      v100 = *v100;
                      if (!v100)
                      {
                        goto LABEL_179;
                      }
                    }
                  }

                  goto LABEL_205;
                }

                v86 = *this;
                v87 = this[1];
                std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&__dst);
                if (v87)
                {
                  v88 = 0;
                  do
                  {
                    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, "", 0);
                    v89 = *v6;
                    v90 = *v6;
                    *(v6 + *(*v6 - 24) + 24) = 2;
                    v91 = (v6 + *(v90 - 24));
                    if (v91[1].__fmtflags_ == -1)
                    {
                      std::ios_base::getloc(v91);
                      v92 = std::locale::use_facet(&v141, MEMORY[0x29EDC93D0]);
                      v93 = (v92->__vftable[2].~facet_0)(v92, 32);
                      std::locale::~locale(&v141);
                      v91[1].__fmtflags_ = v93;
                      v89 = *v6;
                    }

                    v91[1].__fmtflags_ = 48;
                    *(v6 + *(v89 - 24) + 8) = *(v6 + *(v89 - 24) + 8) & 0xFFFFFFB5 | 8;
                    v94 = MEMORY[0x29ED51F20](v6, *(*&v86 + v88));
                    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v94, " ", 1);
                    if ((~v88 & 0x1F) == 0)
                    {
                      std::ios_base::getloc((v6 + *(*v6 - 24)));
                      v95 = std::locale::use_facet(&v141, MEMORY[0x29EDC93D0]);
                      (v95->__vftable[2].~facet_0)(v95, 10);
                      std::locale::~locale(&v141);
                      std::ostream::put();
                      std::ostream::flush();
                    }

                    ++v88;
                  }

                  while (*&v87 != v88);
                }

                std::ostream::flush();
                __dst.__r_.__value_.__r.__words[0] = v124;
                *(__dst.__r_.__value_.__r.__words + *(v124 - 24)) = v123;
                __dst.__r_.__value_.__r.__words[2] = v122;
                v137 = MEMORY[0x29EDC9570] + 16;
                v58 = v134;
                if (v139 < 0)
                {
                  operator delete(v138[7].__locale_);
                }

                v137 = MEMORY[0x29EDC9568] + 16;
                std::locale::~locale(v138);
                std::iostream::~basic_iostream();
                MEMORY[0x29ED52040](&v140);
LABEL_153:
                if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_187;
                }

                goto LABEL_154;
              }

LABEL_205:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v66 = *(v59 + 10);
            v67 = *this;
            v68 = v59;
            if (v66)
            {
              v68 = (*&v67 + v59[12]);
            }

            v69 = v59[14];
            v70 = v59[15];
            this[144] = v68;
            this[145] = v66;
            this[146].i8[0] = v61;
            this[147] = (*&v67 + v69);
            this[148].i32[0] = v70;
            __s2a = 1;
            this[143].i8[0] = 1;
            if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_187:
              operator delete(v135.__r_.__value_.__l.__data_);
            }

LABEL_154:
            v60 = ++v61;
            if (v130 >= v61)
            {
              v59 += 20;
              if (v58 <= 0xE)
              {
                continue;
              }
            }

            goto LABEL_5;
          }

          v64 = strncmp(v59, "__counters", 0x10uLL);
          v63 = v125;
          if (!v64 || (v65 = strncmp(v59, "__telemetry", 0x10uLL), v63 = v121, !v65))
          {
LABEL_121:
            (MEMORY[0x29ED51E00])(&v135, *v63);
          }

LABEL_122:
          v134 = v58;
          v73 = 0;
          goto LABEL_123;
        }
      }

LABEL_5:
      v5 = (v127 + v127[1]);
      v4 = v126 + 1;
    }

    while (v126 + 1 != v119);
  }

  v103 = this + 3;
  if (this[3])
  {
    if (!*&this[4])
    {
      v103 = this + 73;
    }

    if (!*v103)
    {
      return 0;
    }
  }

  else if (!*&this[73])
  {
    return 0;
  }

  v104 = this + 28;
  if (this[28])
  {
    if (!*&this[29])
    {
      v104 = this + 98;
    }
  }

  else
  {
    v104 = this + 98;
  }

  v106 = *v104;
  v105 = v104[1];
  if (v106)
  {
    v107 = *&v105 == 0;
  }

  else
  {
    v107 = 1;
  }

  if (!v107)
  {
    return *&this[152] != 0;
  }

  return 0;
}

void sub_29CC83238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, int a12, int a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100]((v52 - 112));
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AGCDeserializedReply::~AGCDeserializedReply(AGCDeserializedReply *this)
{
  v2 = *(this + 247);
  if (v2)
  {
    do
    {
      v12 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v12;
    }

    while (v12);
  }

  v3 = *(this + 245);
  *(this + 245) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 228);
  if (v4)
  {
    *(this + 229) = v4;
    operator delete(v4);
  }

  v5 = *(this + 221);
  if (v5)
  {
    do
    {
      v13 = *v5;
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      operator delete(v5);
      v5 = v13;
    }

    while (v13);
  }

  v6 = *(this + 219);
  *(this + 219) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = 1752;
  do
  {
    v7 -= 40;
    v8 = (this + v7);
    v9 = *(this + v7 + 16);
    if (v9)
    {
      do
      {
        v11 = *v9;
        if (*(v9 + 39) < 0)
        {
          operator delete(v9[2]);
        }

        operator delete(v9);
        v9 = v11;
      }

      while (v11);
    }

    v10 = *v8;
    *v8 = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  while (v7 != 1192);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v4, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    if (v9.u32[0] < 2uLL)
    {
      v13 = *&v7 - 1;
      while (1)
      {
        v14 = v12[1];
        if (v8 == v14)
        {
          v15 = *(v12 + 39);
          v16 = v15;
          if (v15 < 0)
          {
            v15 = v12[3];
          }

          if (v15 == v5)
          {
            v17 = v16 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v17, v4, v5))
            {
              return v12;
            }
          }
        }

        else if ((v14 & v13) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v18 = v12[1];
      if (v8 == v18)
      {
        v19 = *(v12 + 39);
        v20 = v19;
        if (v19 < 0)
        {
          v19 = v12[3];
        }

        if (v19 == v5)
        {
          v21 = v20 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v21, v4, v5))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v18 >= *&v7)
        {
          v18 %= *&v7;
        }

        if (v18 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)))) ^ ((0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)))) >> 47));
  }

  else
  {
    if (a2 > 0x10)
    {
      v26 = a1[1];
      v27 = 0xB492B66FBE98F273 * *a1;
      v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
      v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
      v23 = 0x9DDFEA08EB382D69;
      v30 = 0x9DDFEA08EB382D69 * ((v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v29);
      v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
      v25 = 0x9DDFEA08EB382D69 * v31;
      return (v25 ^ (v25 >> 47)) * v23;
    }

    if (a2 >= 9)
    {
      v2 = *(a1 + a2 - 8);
      v3 = __ROR8__(v2 + a2, a2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
    }

    if (a2 >= 4)
    {
      v71 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v72 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v71);
      v31 = v71 ^ (v72 >> 47) ^ v72;
      goto LABEL_8;
    }

    if (a2)
    {
      v73 = 0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8));
      v74 = 0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)));
      return 0x9AE16A3B2F90404FLL * (v74 ^ v73 ^ ((v74 ^ v73) >> 47));
    }

    else
    {
      return 0x9AE16A3B2F90404FLL;
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>>::~unique_ptr[abi:nn200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 47) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 24));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(void *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v4, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_41;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 39);
        v15 = v14;
        if (v14 < 0)
        {
          v14 = v12[3];
        }

        if (v14 == v5)
        {
          v16 = v15 >= 0 ? (v12 + 2) : v12[2];
          result = memcmp(v16, v4, v5);
          if (!result)
          {
            return result;
          }
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_41;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v18 = v12[1];
    if (v18 == v7)
    {
      break;
    }

    if (v18 >= *&v8)
    {
      v18 %= *&v8;
    }

    if (v18 != v10)
    {
      goto LABEL_41;
    }

LABEL_29:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_41;
    }
  }

  v19 = *(v12 + 39);
  v20 = v19;
  if (v19 < 0)
  {
    v19 = v12[3];
  }

  if (v19 != v5)
  {
    goto LABEL_29;
  }

  v21 = v20 >= 0 ? (v12 + 2) : v12[2];
  result = memcmp(v21, v4, v5);
  if (result)
  {
    goto LABEL_29;
  }

  return result;
}

void sub_29CC84144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned int,std::string>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE53compileFunctionWithAirLinkedIntersectionFunction_ImplINS_14TileProgramKeyELb1EEENSt3__19enable_ifIXT0_EvE4typeERKT_P29MTLCompileFunctionRequestDataNS5_21DriverRequestDataImplIXT0_EEEU13block_pointerFvRK20AGCDeserializedReplyRKNS_28CompileFunctionReplyMetadataERKNS5_19DriverReplyDataImplIXT0_EEEE_block_invoke(uint64_t a1, void *a2, int8x16_t *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 48);
  v7 = a3[2];
  v20[0] = vextq_s8(a3[1], a3[1], 8uLL);
  v20[1] = v7;
  v21 = a3[3].i64[0];
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(&v25, v6, a2, v20, *(a1 + 112), a1 + 120);
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  v9 = a3[3];
  *v24 = a3[2];
  *&v24[16] = v9;
  AGCDeserializedReply::AGCDeserializedReply(v20);
  if (!*&v24[8])
  {
    v10 = [*(a1 + 32) function];
    if (!AGCReplyArray::getDeserializedReplyWithName<AGCDeserializedReply>(a2, [objc_msgSend(v10 "name")], v20))
    {
      v11 = *MEMORY[0x29EDCA610];
      v12 = [objc_msgSend(v10 "name")];
      AGCReplyArray::getDebugStringAvailableNames(buf, a2);
      if (buf[23] >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      fprintf(v11, "AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", "agxa_user_shader_factory_template.hpp", 182, "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke", v12, v13);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v16;
        v31 = 2080;
        v32 = v17;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        v14 = [objc_msgSend(v10 "name")];
        AGCReplyArray::getDebugStringAvailableNames(&__p, a2);
        v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136316162;
        *&buf[4] = "agxa_user_shader_factory_template.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        *&buf[18] = 2080;
        *&buf[20] = "compileFunctionWithAirLinkedIntersectionFunction_Impl_block_invoke";
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v15;
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Failed to find compiler reply with function name %s. The available function names in the reply array are: %s.\n", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *&v24[8] = 2;
      *&v24[16] = @"Internal error during function compilation.";
    }
  }

  memset(buf, 0, 24);
  if (v27 == 1)
  {
    *buf = v25;
    *&buf[16] = v26;
    v26 = 0;
    v25 = 0uLL;
  }

  else
  {
    if (v27)
    {
      v18 = std::__throw_bad_variant_access[abi:nn200100]();
      AGCDeserializedReply::~AGCDeserializedReply(v20);
      if (v27 == -1)
      {
        _Unwind_Resume(v18);
      }

      (off_2A23F59F0[v27])(v20, &v25);
      _Unwind_Resume(v18);
    }

    *&v24[8] = v25;
  }

  (*(*(a1 + 40) + 16))();
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v20);
  if (v27 != -1)
  {
    (off_2A23F59F0[v27])(v20, &v25);
  }
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupFunction<AGCReplyArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = 0;
  v23[1] = 0;
  *v18 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = 0;
  v22 = v23;
  v5 = [*(a1 + 8) newArchiveReplyForPipelineFunctionWithDescriptor:*(a1 + 16) functionType:*(a1 + 24) functionId:a2];
  if ([v5 isError])
  {
    v6 = [v5 errorMessage];
LABEL_10:
    v9 = 0;
    v11 = 4;
    goto LABEL_11;
  }

  v7 = [v5 type];
  v8 = *(a1 + 24);
  v6 = @"Internal error during archive lookup";
  if (v7 != v8)
  {
    goto LABEL_10;
  }

  buffer_ptr[0] = 0;
  size_ptr = 0;
  v9 = dispatch_data_create_map([v5 binary], buffer_ptr, &size_ptr);
  v10 = AGCReplyArray::deserialize(v18, buffer_ptr[0]);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  if (v10)
  {
    v6 = 0;
  }

LABEL_11:
  v12 = [v5 reflectionBlock];
  buffer_ptr[0] = 0;
  buffer_ptr[1] = 0;
  buffer_ptr[2] = v12;
  buffer_ptr[3] = 0;
  buffer_ptr[4] = 0;
  buffer_ptr[5] = v11;
  buffer_ptr[6] = v6;
  buffer_ptr[7] = 0;
  (*(a3 + 16))(a3, v18, buffer_ptr);
  if (v9)
  {
    dispatch_release(v9);
  }

  v13 = v18[0];
  v14 = v18[1];
  while (v13 != v14)
  {
    v15 = *v13;
    v13 += 2;
    free(v15);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v23[0]);
  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }
}

void sub_29CC84744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  AGCReplyArray::~AGCReplyArray(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_RKNS_28CompileFunctionReplyMetadataEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a7;
  v11[5] = a8;
  v11[6] = a9;
  v11[7] = a10;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v11, a4, a5, a6, a7, a8);
}

void ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_14TileProgramKeyE13AGCReplyArrayEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(uint64_t a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v1 = *(a1 + 96);
  v12[0] = 0;
  v12[1] = 0;
  *v7 = 0u;
  *__p = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = v12;
  if (v1 || !*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = a1;
    v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &size_ptr);
    AGCReplyArray::deserialize(v7, buffer_ptr);
    a1 = v3;
  }

  (*(*(a1 + 88) + 16))(*(a1 + 88), v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    free(v6);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v12[0]);
  if (__p[1])
  {
    *&v9 = __p[1];
    operator delete(__p[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_29CC84A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCReplyArray::~AGCReplyArray(va);
  _Unwind_Resume(a1);
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = *(a4 + 32);
  v14 = *(a4 + 24);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v13 = v8;
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(AGCReplyArray const&,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionReplyMetadata const&,MTLLinkedFunctions *,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionDescriptorContext const&,unsigned int)::{lambda(NSArray<objc_object  {objcproto11MTLFunction}*> *)#1}::operator()(&v12, [a5 functions]);
  AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(AGCReplyArray const&,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionReplyMetadata const&,MTLLinkedFunctions *,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionDescriptorContext const&,unsigned int)::{lambda(NSArray<objc_object  {objcproto11MTLFunction}*> *)#1}::operator()(&v12, [a5 privateFunctions]);
  v9 = v15;
  if (v14)
  {
    v10 = v13;
    *a1 = v14;
    *(a1 + 8) = v10;
    *(a1 + 24) = 0;
    if (v9)
    {
      v16 = v9;
      operator delete(v9);
    }
  }

  else
  {
    v11 = v17;
    *(a1 + 8) = v16;
    *(a1 + 16) = v11;
    *a1 = v9;
    *(a1 + 24) = 1;
  }
}

void sub_29CC84B60(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AGCReplyArray::getDeserializedReplyWithName<AGCDeserializedReply>(void *a1, char *__s, int8x8_t *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v35 = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
  }

  *(__dst + v7) = 0;
  v8 = a1 + 8;
  v9 = a1[8];
  v10 = v35;
  if (!v9)
  {
    goto LABEL_49;
  }

  v11 = (v35 & 0x80u) == 0 ? v35 : __dst[1];
  v12 = (v35 & 0x80u) == 0 ? __dst : __dst[0];
  v13 = a1 + 8;
  do
  {
    v14 = *(v9 + 55);
    if (v14 >= 0)
    {
      v15 = *(v9 + 55);
    }

    else
    {
      v15 = *(v9 + 40);
    }

    if (v14 >= 0)
    {
      v16 = (v9 + 32);
    }

    else
    {
      v16 = *(v9 + 32);
    }

    if (v11 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    v18 = memcmp(v16, v12, v17);
    v19 = v15 < v11;
    if (v18)
    {
      v19 = v18 < 0;
    }

    v20 = !v19;
    if (v19)
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v13 = v9;
    }

    v9 = *(v9 + v21);
  }

  while (v9);
  if (v13 == v8)
  {
    goto LABEL_49;
  }

  v22 = *(v13 + 55);
  if (v22 >= 0)
  {
    v23 = *(v13 + 55);
  }

  else
  {
    v23 = v13[5];
  }

  if (v22 >= 0)
  {
    v24 = v13 + 4;
  }

  else
  {
    v24 = v13[4];
  }

  if (v23 >= v11)
  {
    v25 = v11;
  }

  else
  {
    v25 = v23;
  }

  v26 = memcmp(v12, v24, v25);
  v27 = v11 < v23;
  if (v26)
  {
    v27 = v26 < 0;
  }

  if (v27)
  {
LABEL_49:
    v13 = a1 + 8;
    if ((v10 & 0x80) == 0)
    {
LABEL_47:
      if (v13 == v8)
      {
        return 0;
      }

      goto LABEL_51;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_47;
  }

  operator delete(__dst[0]);
  if (v13 == v8)
  {
    return 0;
  }

LABEL_51:
  v28 = *(v13 + 14);
  v29 = a1[3];
  if (v28 >= (a1[4] - v29) >> 4)
  {
    return 0;
  }

  v30 = v29 + 16 * v28;
  v31 = *v30;
  v32 = *(v30 + 8);

  return AGCDeserializedReply::deserialize(a3, v31, v32);
}

void AGCReplyArray::getDebugStringAvailableNames(std::string *this, void *a2)
{
  if (!a2[9])
  {
    *(&this->__r_.__value_.__s + 23) = 0;
    this->__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  v22 = 2;
  strcpy(&v20, ", ");
  v3 = a2[7];
  v4 = a2 + 8;
  if (v3 == a2 + 8)
  {
    v16 = -2;
    goto LABEL_34;
  }

  do
  {
    std::operator+<char>();
    v5 = std::string::append(&v17, "");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v19 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (v19 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (v19 >= 0)
    {
      v8 = HIBYTE(v19);
    }

    else
    {
      v8 = __p[1];
    }

    std::string::append(this, v7, v8);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    operator delete(v17.__r_.__value_.__l.__data_);
LABEL_13:
    if (v22 >= 0)
    {
      v9 = &v20;
    }

    else
    {
      v9 = v20;
    }

    if (v22 >= 0)
    {
      v10 = v22;
    }

    else
    {
      v10 = v21;
    }

    std::string::append(this, v9, v10);
    v11 = v3[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v3[2];
        v13 = *v12 == v3;
        v3 = v12;
      }

      while (!v13);
    }

    v3 = v12;
  }

  while (v12 != v4);
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v15 = v22;
  if (v22 < 0)
  {
    v15 = v21;
  }

  v16 = size - v15;
LABEL_34:
  std::string::resize(this, v16, 0);
  if (v22 < 0)
  {
    operator delete(v20);
  }
}

void sub_29CC84F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if (*(v27 + 23) < 0)
    {
LABEL_6:
      operator delete(*v27);
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v27 + 23) < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_4pairI16MTLCompilerErrorP8NSStringEENS_6vectorIPN3AGX6HAL30029IntersectionProgramVariantSetENS_9allocatorISH_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSM_1EJSC_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createAirLinkedIntersectionVariantSets(AGCReplyArray const&,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionReplyMetadata const&,MTLLinkedFunctions *,AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionDescriptorContext const&,unsigned int)::{lambda(NSArray<objc_object  {objcproto11MTLFunction}*> *)#1}::operator()(uint64_t a1, void *a2)
{
  v2 = a1;
  v79 = *MEMORY[0x29EDCA608];
  v47 = *(a1 + 32);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v3)
  {
    v4 = *v67;
    v45 = v2;
    v46 = *v67;
LABEL_3:
    v5 = 0;
    v48 = v3;
    while (1)
    {
      if (*v67 != v4)
      {
        objc_enumerationMutation(a2);
      }

      if (**v2)
      {
        return;
      }

      v6 = *(*(&v66 + 1) + 8 * v5);
      if ([v6 functionType] == 6)
      {
        break;
      }

LABEL_4:
      if (++v5 == v3)
      {
        v3 = [a2 countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        return;
      }
    }

    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    v10 = *v7;
    v9 = v7[1];
    v11 = *(v7 + 4);
    v63 = v10;
    v64 = v9;
    v65 = v11;
    v62[0] = 0;
    v62[1] = 0;
    *v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    v61 = v62;
    v12 = [objc_msgSend(v6 "name")];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    BYTE7(v54) = v13;
    if (v13)
    {
      memcpy(&__dst, v12, v13);
    }

    *(&__dst + v14) = 0;
    v16 = v8 + 8;
    v15 = v8[8];
    v17 = BYTE7(v54);
    if (!v15)
    {
      goto LABEL_57;
    }

    v18 = (SBYTE7(v54) & 0x80u) == 0 ? BYTE7(v54) : __dst_8;
    v19 = (SBYTE7(v54) & 0x80u) == 0 ? &__dst : __dst;
    v20 = v8 + 8;
    do
    {
      v21 = *(v15 + 55);
      if (v21 >= 0)
      {
        v22 = *(v15 + 55);
      }

      else
      {
        v22 = *(v15 + 40);
      }

      if (v21 >= 0)
      {
        v23 = (v15 + 32);
      }

      else
      {
        v23 = *(v15 + 32);
      }

      if (v18 >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v18;
      }

      v25 = memcmp(v23, v19, v24);
      v26 = v22 < v18;
      if (v25)
      {
        v26 = v25 < 0;
      }

      v27 = !v26;
      if (v26)
      {
        v28 = 8;
      }

      else
      {
        v28 = 0;
      }

      if (v27)
      {
        v20 = v15;
      }

      v15 = *(v15 + v28);
    }

    while (v15);
    v2 = v45;
    if (v20 == v16)
    {
      goto LABEL_57;
    }

    v29 = *(v20 + 55);
    if (v29 >= 0)
    {
      v30 = *(v20 + 55);
    }

    else
    {
      v30 = v20[5];
    }

    if (v29 >= 0)
    {
      v31 = v20 + 4;
    }

    else
    {
      v31 = v20[4];
    }

    if (v30 >= v18)
    {
      v32 = v18;
    }

    else
    {
      v32 = v30;
    }

    v33 = memcmp(v19, v31, v32);
    v34 = v18 < v30;
    if (v33)
    {
      v34 = v33 < 0;
    }

    if (v34)
    {
LABEL_57:
      v20 = v8 + 8;
      if ((v17 & 0x80) == 0)
      {
LABEL_55:
        if (v20 == v16)
        {
          goto LABEL_61;
        }

        goto LABEL_59;
      }
    }

    else if ((v17 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    operator delete(__dst);
    if (v20 == v16)
    {
LABEL_61:
      *(&v64 + 1) = 2;
      v65 = @"Internal error during function compilation.";
LABEL_62:
      v37 = *(v2 + 24);
      v38 = v37[3];
      v40 = *v37;
      v39 = v37[1];
      v55 = v37[2];
      v56 = v38;
      __dst_8 = *(&v40 + 1);
      v54 = v39;
      __dst = v6;
      v50[0] = MEMORY[0x29EDCA5F8];
      v50[1] = 3221225472;
      v50[2] = ___ZZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE38createAirLinkedIntersectionVariantSetsERK13AGCReplyArrayRKNS5_25IntersectionReplyMetadataEP18MTLLinkedFunctionsRKNS5_29IntersectionDescriptorContextEjENKUlP7NSArrayIPU22objcproto11MTLFunction11objc_objectEE_clESL__block_invoke;
      v50[3] = &__block_descriptor_56_e25_v32__0_v8Q16__NSString_24ls40l8;
      v50[4] = *v2;
      v51 = *(v2 + 40);
      v72 = 0;
      v73 = &v72;
      v74 = 0x3052000000;
      v75 = __Block_byref_object_copy__1933;
      v76 = __Block_byref_object_dispose__1934;
      v77 = 0;
      v41 = *(v47 + 16);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE42createAirLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeERK13AGCReplyArrayRKNS5_25IntersectionReplyMetadataERKNS5_29IntersectionDescriptorContextEU13block_pointerFvPNS1_29IntersectionProgramVariantSetE16MTLCompilerErrorP8NSStringE_block_invoke;
      block[3] = &unk_29F3416A0;
      block[4] = v6;
      block[5] = &v72;
      dispatch_sync(v41, block);
      v70[0] = MEMORY[0x29EDCA5F8];
      v70[1] = 3221225472;
      v70[2] = ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE42createAirLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeERK13AGCReplyArrayRKNS5_25IntersectionReplyMetadataERKNS5_29IntersectionDescriptorContextEU13block_pointerFvPNS1_29IntersectionProgramVariantSetE16MTLCompilerErrorP8NSStringE_block_invoke_2;
      v70[3] = &__block_descriptor_48_e60_v32__0r_v8r_v16___v___v__IntersectionReplyMetadata____Q___24l;
      v70[4] = v57;
      v70[5] = &v63;
      AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createIntersectionProgramVariants_impl<true>(v47, &__dst, 0, v73[5], v70, v50);
      _Block_object_dispose(&v72, 8);
      v42 = v57[0];
      v43 = v57[1];
      v3 = v48;
      while (v42 != v43)
      {
        v44 = *v42;
        v42 += 2;
        free(v44);
      }

      std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v62[0]);
      v4 = v46;
      if (*(&v58 + 1))
      {
        *&v59 = *(&v58 + 1);
        operator delete(*(&v58 + 1));
      }

      if (v57[0])
      {
        v57[1] = v57[0];
        operator delete(v57[0]);
      }

      goto LABEL_4;
    }

LABEL_59:
    v35 = *(v20 + 14);
    v36 = v8[3];
    if (v35 < (v8[4] - v36) >> 4 && AGCReplyArray::deserialize(v57, *(v36 + 16 * v35)))
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }
}

void sub_29CC8555C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&STACK[0x208], 8);
  AGCReplyArray::~AGCReplyArray(&a37);
  _Unwind_Resume(a1);
}

void ___ZZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE38createAirLinkedIntersectionVariantSetsERK13AGCReplyArrayRKNS5_25IntersectionReplyMetadataEP18MTLLinkedFunctionsRKNS5_29IntersectionDescriptorContextEjENKUlP7NSArrayIPU22objcproto11MTLFunction11objc_objectEE_clESL__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    **(a1 + 32) = a3;
    *v4 = a4;
  }

  else
  {
    v5 = *(a1 + 48);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 3;
      v12 = (v10 >> 3) + 1;
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(8 * v11) = a2;
      v8 = 8 * v11 + 8;
      memcpy(0, v9, v10);
      *v5 = 0;
      *(v5 + 8) = v8;
      *(v5 + 16) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 1);
    }

    *(v5 + 8) = v8;
  }
}

void ___ZN3AGX17UserShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE42createAirLinkedIntersectionProgramVariantsILb1EEENSt3__19enable_ifIXT_EvE4typeERK13AGCReplyArrayRKNS5_25IntersectionReplyMetadataERKNS5_29IntersectionDescriptorContextEU13block_pointerFvPNS1_29IntersectionProgramVariantSetE16MTLCompilerErrorP8NSStringE_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) vendorPrivate];
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(AGXG18PFamilyIntersectionProgram);
    [*(a1 + 32) setVendorPrivate:*(*(*(a1 + 40) + 8) + 40)];
    v2 = *(*(*(a1 + 40) + 8) + 40);
  }
}

void AGX::Impl::TileProgramKey::serialize(AGX::Impl::TileProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = this + 16;
  *(this + 3) = *(this + 2);
  v25 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v25);
  v7 = *v6;
  v8 = *(v6 + 1) - *v6;
  if (v8 > 0xFFFFFFFFFFFFFFAFLL)
  {
    v9 = v7 + v8 + 80;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0x14uLL);
    v7 = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = v7 + v8;
  *v10 = ((v9 - v7) >> 2 << 8) | 0x3F;
  *(v10 + 4) = *(v6 + 24);
  v11 = *(v6 + 40);
  v12 = *(v6 + 56);
  v13 = *(v6 + 72);
  *(v10 + 68) = *(v6 + 11);
  *(v10 + 52) = v13;
  *(v10 + 36) = v12;
  *(v10 + 20) = v11;
  v14 = *(this + 2);
  v15 = *(this + 3) - v14;
  if (v15 > 0xFFFFFFFFFFFFFFCFLL)
  {
    v16 = *(this + 3) + 48;
    *(this + 3) = v16;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0xCuLL);
    v14 = *(this + 2);
    v16 = *(this + 3);
  }

  v17 = v14 + v15;
  *v17 = ((v16 - v14) >> 2 << 8) | 0x42;
  v18 = *(this + 7);
  v19 = *(this + 8);
  *(v17 + 36) = *(this + 18);
  *(v17 + 20) = v19;
  *(v17 + 4) = v18;
  v20 = *(this + 2);
  v21 = *(this + 3) - v20;
  if (v21 > 0xFFFFFFFFFFFFFFEFLL)
  {
    v22 = *(this + 3) + 16;
    *(this + 3) = v22;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 4uLL);
    v20 = *(this + 2);
    v22 = *(this + 3);
  }

  v23 = v20 + v21;
  *v23 = ((v22 - v20) >> 2 << 8) | 0x43;
  *(v23 + 4) = *(this + 19);
  v26 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v26);
  v24 = *(this + 2);
  *a2 = v24;
  *a3 = *(this + 3) - v24;
}

void __destroy_helper_block_e8_96c26_ZTSN3AGX14TileProgramKeyE(void *a1)
{
  a1[12] = &unk_2A23FA7D8;
  v2 = a1[35];
  if (v2)
  {
    a1[36] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
  if (v3)
  {
    a1[33] = v3;
    operator delete(v3);
  }

  a1[12] = &unk_2A23F7850;
  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;

    operator delete(v4);
  }
}

uint64_t __copy_helper_block_e8_96c26_ZTSN3AGX14TileProgramKeyE(uint64_t a1, uint64_t a2)
{
  result = AGX::Impl::TileProgramKey::TileProgramKey(a1 + 96, (a2 + 96));
  *(a1 + 96) = &unk_2A23F7890;
  *(a1 + 304) = *(a2 + 304);
  return result;
}

uint64_t AGX::UserShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillCompilePerformanceStatisticsDictionary(NSObject *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  [a3 setObject:a5 forKey:*MEMORY[0x29EDBB398]];
  [a3 setObject:&unk_2A240CD68 forKey:*MEMORY[0x29EDBB3A8]];
  v10 = *MEMORY[0x29EDBB380];
  if (a1)
  {
    [a3 setObject:MEMORY[0x29EDB8EA8] forKey:v10];
    v21 = 0;
    buffer_ptr = 0;
    v11 = dispatch_data_create_map(a1, &buffer_ptr, &v21);
    if (buffer_ptr && v21)
    {
      v12 = v11;
      v13 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(buffer_ptr + 1)];
      [a3 setObject:v13 forKey:*MEMORY[0x29EDBB388]];
      v14 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(buffer_ptr + 2)];
      [a3 setObject:v14 forKey:*MEMORY[0x29EDBB3C8]];
      v15 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*buffer_ptr];
      [a3 setObject:v15 forKey:*MEMORY[0x29EDBB390]];
      v16 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(buffer_ptr + 3)];
      [a3 setObject:v16 forKey:*MEMORY[0x29EDBB378]];
      if (a6)
      {
        v17 = *MEMORY[0x29EDBB3A0];
        v18 = &unk_2A240CD68;
      }

      else
      {
        v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a4];
        v17 = *MEMORY[0x29EDBB3A0];
      }

      [a3 setObject:v18 forKey:v17];
      v11 = v12;
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    return _MTLAddCompilerServiceCompileTimeStats();
  }

  else
  {
    [a3 setObject:MEMORY[0x29EDB8EB0] forKey:v10];
    [a3 setObject:&unk_2A240CD68 forKey:*MEMORY[0x29EDBB388]];
    [a3 setObject:&unk_2A240CD68 forKey:*MEMORY[0x29EDBB3C8]];
    [a3 setObject:&unk_2A240CD68 forKey:*MEMORY[0x29EDBB390]];
    [a3 setObject:&unk_2A240CD68 forKey:*MEMORY[0x29EDBB378]];
    v19 = *MEMORY[0x29EDBB3A0];

    return [a3 setObject:&unk_2A240CD68 forKey:v19];
  }
}

uint64_t AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(uint64_t a1)
{
  v2 = *(a1 + 392);
  if (v2)
  {
    *(a1 + 400) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 368);
  if (v3)
  {
    *(a1 + 376) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 344);
  if (v4)
  {
    *(a1 + 352) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 320);
  if (v5)
  {
    *(a1 + 328) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    *(a1 + 296) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 264);
  if (v7)
  {
    *(a1 + 272) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 240);
  if (v8)
  {
    *(a1 + 248) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 216);
  if (v9)
  {
    *(a1 + 224) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    *(a1 + 104) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    *(a1 + 80) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    *(a1 + 56) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    *(a1 + 32) = v13;
    operator delete(v13);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<AGX::HAL300::IntersectionProgramVariantSet *>::__assign_with_size[abi:nn200100]<AGX::HAL300::IntersectionProgramVariantSet **,AGX::HAL300::IntersectionProgramVariantSet **>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void AGX::HAL300::TileProgramVariant::~TileProgramVariant(AGX::HAL300::TileProgramVariant *this)
{
  AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TileProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

char *AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v132 = *MEMORY[0x29EDCA608];
  AGX::TileProgramKey::TileProgramKey(a4, 0, 0);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v112 = 0u;
  v118 = 67305985;
  v119 = 1541;
  v120 = 7;
  v121 = 0x100000000;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0;
  bzero(&v112, 0x28uLL);
  if (a1)
  {
    v8 = (a1 - *a1);
    v9 = *v8;
    if (v9 < 0xF)
    {
      HIBYTE(v116) = -1;
      if (v9 <= 0xA)
      {
        LOBYTE(v18) = 1;
        LOBYTE(v122) = 1;
LABEL_80:
        HIBYTE(v122) = v18;
LABEL_81:
        AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(&v112, 0);
        v56 = v113;
        *(a4 + 112) = v112;
        *(a4 + 128) = v56;
        *(a4 + 144) = v114;
        goto LABEL_82;
      }
    }

    else
    {
      if (v8[7])
      {
        v10 = (a1 + v8[7] + *(a1 + v8[7]));
        v11 = *v10;
        if (*v10)
        {
          v12 = (v10 + v10[1] + 4);
          v13 = (v12 - *v12);
          if (*v13 >= 5u)
          {
            v14 = v13[2];
            if (v14)
            {
              v15 = *(v12 + v14);
              if (v15)
              {
                if (v15 > 0x28A)
                {
                  v16 = &texFormatUnsupported;
                }

                else
                {
                  v16 = *(&off_29F342380 + v15 - 1);
                }

                *&v125 = v16;
                DWORD2(v114) |= 1u;
              }
            }
          }

          if (v11 != 1)
          {
            v19 = (v10 + v10[2] + 8);
            v20 = (v19 - *v19);
            if (*v20 >= 5u)
            {
              v21 = v20[2];
              if (v21)
              {
                v22 = *(v19 + v21);
                if (v22)
                {
                  if (v22 > 0x28A)
                  {
                    v23 = &texFormatUnsupported;
                  }

                  else
                  {
                    v23 = *(&off_29F342380 + v22 - 1);
                  }

                  *(&v125 + 1) = v23;
                  DWORD2(v114) |= 2u;
                }
              }
            }

            if (v11 >= 3)
            {
              v24 = (v10 + v10[3] + 12);
              v25 = (v24 - *v24);
              if (*v25 >= 5u)
              {
                v26 = v25[2];
                if (v26)
                {
                  v27 = *(v24 + v26);
                  if (v27)
                  {
                    if (v27 > 0x28A)
                    {
                      v28 = &texFormatUnsupported;
                    }

                    else
                    {
                      v28 = *(&off_29F342380 + v27 - 1);
                    }

                    *&v126 = v28;
                    DWORD2(v114) |= 4u;
                  }
                }
              }

              if (v11 != 3)
              {
                v29 = (v10 + v10[4] + 16);
                v30 = (v29 - *v29);
                if (*v30 >= 5u)
                {
                  v31 = v30[2];
                  if (v31)
                  {
                    v32 = *(v29 + v31);
                    if (v32)
                    {
                      if (v32 > 0x28A)
                      {
                        v33 = &texFormatUnsupported;
                      }

                      else
                      {
                        v33 = *(&off_29F342380 + v32 - 1);
                      }

                      *(&v126 + 1) = v33;
                      DWORD2(v114) |= 8u;
                    }
                  }
                }

                if (v11 >= 5)
                {
                  v34 = (v10 + v10[5] + 20);
                  v35 = (v34 - *v34);
                  if (*v35 >= 5u)
                  {
                    v36 = v35[2];
                    if (v36)
                    {
                      v37 = *(v34 + v36);
                      if (v37)
                      {
                        if (v37 > 0x28A)
                        {
                          v38 = &texFormatUnsupported;
                        }

                        else
                        {
                          v38 = *(&off_29F342380 + v37 - 1);
                        }

                        *&v127 = v38;
                        DWORD2(v114) |= 0x10u;
                      }
                    }
                  }

                  if (v11 != 5)
                  {
                    v39 = (v10 + v10[6] + 24);
                    v40 = (v39 - *v39);
                    if (*v40 >= 5u)
                    {
                      v41 = v40[2];
                      if (v41)
                      {
                        v42 = *(v39 + v41);
                        if (v42)
                        {
                          if (v42 > 0x28A)
                          {
                            v43 = &texFormatUnsupported;
                          }

                          else
                          {
                            v43 = *(&off_29F342380 + v42 - 1);
                          }

                          *(&v127 + 1) = v43;
                          DWORD2(v114) |= 0x20u;
                        }
                      }
                    }

                    if (v11 >= 7)
                    {
                      v44 = (v10 + v10[7] + 28);
                      v45 = (v44 - *v44);
                      if (*v45 >= 5u)
                      {
                        v46 = v45[2];
                        if (v46)
                        {
                          v47 = *(v44 + v46);
                          if (v47)
                          {
                            if (v47 > 0x28A)
                            {
                              v48 = &texFormatUnsupported;
                            }

                            else
                            {
                              v48 = *(&off_29F342380 + v47 - 1);
                            }

                            *&v128 = v48;
                            DWORD2(v114) |= 0x40u;
                          }
                        }
                      }

                      if (v11 != 7)
                      {
                        v49 = (v10 + v10[8] + 32);
                        v50 = (v49 - *v49);
                        if (*v50 >= 5u)
                        {
                          v51 = v50[2];
                          if (v51)
                          {
                            v52 = *(v49 + v51);
                            if (v52)
                            {
                              if (v52 > 0x28A)
                              {
                                v53 = &texFormatUnsupported;
                              }

                              else
                              {
                                v53 = *(&off_29F342380 + v52 - 1);
                              }

                              *(&v128 + 1) = v53;
                              DWORD2(v114) |= 0x80u;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      HIBYTE(v116) = -1;
    }

    if (v8[5])
    {
      v54 = *(a1 + v8[5]);
    }

    else
    {
      v54 = 1;
    }

    LOBYTE(v122) = v54;
    HIBYTE(v122) = v54;
    if (v9 < 0xD)
    {
      goto LABEL_81;
    }

    v55 = v8[6];
    if (!v55)
    {
      goto LABEL_81;
    }

    v18 = *(a1 + v55);
    if (!v18)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(&v112, 0);
  v17 = v113;
  *(a4 + 112) = v112;
  *(a4 + 128) = v17;
  *(a4 + 144) = v114;
  if (atomic_load_explicit(&AGX::defaultTileDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v111 = &v109;
    v110 = &v111;
    std::__call_once(&AGX::defaultTileDescriptor(void)::once, &v110, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultTileDescriptor(void)::$_0 &&>>);
  }

  a1 = AGX::defaultTileDescriptor(void)::_desc;
LABEL_82:
  v57 = *a1;
  v58 = -v57;
  v59 = a1 - v57;
  v60 = *(a1 - v57);
  if (v60 >= 0xF)
  {
    if (!*(v59 + 7))
    {
      goto LABEL_126;
    }

    v61 = (a1 + *(v59 + 7) + *(a1 + *(v59 + 7)));
    v62 = *v61;
    if (!*v61)
    {
      goto LABEL_126;
    }

    v63 = (v61 + v61[1] + 4);
    v64 = (v63 - *v63);
    if (*v64 >= 5u)
    {
      v65 = v64[2];
      if (v65)
      {
        if (*(v63 + v65))
        {
          *(a4 + 48) |= 0x1010101uLL;
          v62 = *v61;
        }
      }
    }

    if (v62 >= 2)
    {
      v66 = (v61 + v61[2] + 8);
      v67 = (v66 - *v66);
      if (*v67 >= 5u)
      {
        v68 = v67[2];
        if (v68)
        {
          if (*(v66 + v68))
          {
            *(a4 + 48) |= 0x2020202uLL;
            v62 = *v61;
          }
        }
      }

      if (v62 >= 3)
      {
        v69 = (v61 + v61[3] + 12);
        v70 = (v69 - *v69);
        if (*v70 >= 5u)
        {
          v71 = v70[2];
          if (v71)
          {
            if (*(v69 + v71))
            {
              *(a4 + 48) |= 0x4040404uLL;
              v62 = *v61;
            }
          }
        }

        if (v62 >= 4)
        {
          v72 = (v61 + v61[4] + 16);
          v73 = (v72 - *v72);
          if (*v73 >= 5u)
          {
            v74 = v73[2];
            if (v74)
            {
              if (*(v72 + v74))
              {
                *(a4 + 48) |= 0x8080808uLL;
                v62 = *v61;
              }
            }
          }

          if (v62 >= 5)
          {
            v75 = (v61 + v61[5] + 20);
            v76 = (v75 - *v75);
            if (*v76 >= 5u)
            {
              v77 = v76[2];
              if (v77)
              {
                if (*(v75 + v77))
                {
                  *(a4 + 48) |= 0x10101010uLL;
                  v62 = *v61;
                }
              }
            }

            if (v62 >= 6)
            {
              v78 = (v61 + v61[6] + 24);
              v79 = (v78 - *v78);
              if (*v79 >= 5u)
              {
                v80 = v79[2];
                if (v80)
                {
                  if (*(v78 + v80))
                  {
                    *(a4 + 48) |= 0x20202020uLL;
                    v62 = *v61;
                  }
                }
              }

              if (v62 >= 7)
              {
                v81 = (v61 + v61[7] + 28);
                v82 = (v81 - *v81);
                if (*v82 >= 5u)
                {
                  v83 = v82[2];
                  if (v83)
                  {
                    if (*(v81 + v83))
                    {
                      *(a4 + 48) |= 0x40404040uLL;
                      v62 = *v61;
                    }
                  }
                }

                if (v62 >= 8)
                {
                  v84 = (v61 + v61[8] + 32);
                  v85 = (v84 - *v84);
                  if (*v85 >= 5u)
                  {
                    v86 = v85[2];
                    if (v86)
                    {
                      if (*(v84 + v86))
                      {
                        *(a4 + 48) |= 0x80808080uLL;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v87 = *a1;
    v58 = -v87;
    v60 = *(a1 - v87);
  }

  if (v60 < 5)
  {
    LODWORD(v88) = 0;
    goto LABEL_129;
  }

LABEL_126:
  v88 = *(a1 + v58 + 4);
  if (*(a1 + v58 + 4))
  {
    LODWORD(v88) = *(a1 + v88) != 0;
  }

LABEL_129:
  *(a4 + 156) = *(a4 + 156) & 0xFFFFFFFE | v88;
  v89 = (a1 - *a1);
  if (*v89 < 7u)
  {
    LODWORD(v90) = 0;
  }

  else
  {
    v90 = v89[3];
    if (v90)
    {
      LODWORD(v90) = *(a1 + v90);
    }
  }

  *(a4 + 152) = v90;
  v91 = (a1 - *a1);
  v92 = *v91;
  if (v92 <= 0x10)
  {
    LODWORD(v105) = 0;
    *(a4 + 56) = 0;
  }

  else
  {
    v93 = v91[8];
    if (v91[8] && (v94 = *(a1 + v93), v95 = (a1 + v93 + v94), (v96 = *v95) != 0))
    {
      v97 = 0;
      v98 = 0;
      v99 = 0;
      if (v96 >= 0x1F)
      {
        v96 = 31;
      }

      v100 = 4 * v96;
      v101 = a1 + v93 + v94;
      do
      {
        v102 = *&v101[v97 + 4];
        v103 = &v101[v97 + v102 - *(&v95[v97 / 4 + 1] + v102)];
        if (*(v103 + 2) >= 5u)
        {
          v104 = *(v103 + 4);
          if (v104)
          {
            if (v101[v97 + 4 + v102 + v104] == 1)
            {
              v99 |= 1 << v98;
            }
          }
        }

        ++v98;
        v97 += 4;
      }

      while (v100 != v97);
    }

    else
    {
      v99 = 0;
    }

    *(a4 + 56) = v99;
    if (v92 < 0x13)
    {
      LODWORD(v105) = 0;
    }

    else
    {
      v105 = v91[9];
      if (v105)
      {
        LODWORD(v105) = (*(a1 + v105) != 0) << 6;
      }
    }
  }

  *(a4 + 108) = *(a4 + 108) & 0xFFFFFFBF | v105;
  v106 = (a1 - *a1);
  if (*v106 < 0x13u)
  {
    LODWORD(v107) = 0;
  }

  else
  {
    v107 = v106[9];
    if (v107)
    {
      LODWORD(v107) = (*(a1 + v107) != 0) << 9;
    }
  }

  *(a4 + 100) = *(a4 + 100) & 0xFFFFFD7F | v107;
  if (a4 + 160 != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 160), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
  }

  result = (a4 + 184);
  if (a4 + 184 != a3)
  {
    result = std::vector<MTLUINT256_t>::__assign_with_size[abi:nn200100]<MTLUINT256_t*,MTLUINT256_t*>(result, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 5);
  }

  *(a4 + 100) &= 0x8BFFFEFF;
  *(a4 + 108) &= 0xFFFFC7F7;
  return result;
}

dispatch_object_t **std::unique_ptr<AGX::PipelineScript>::~unique_ptr[abi:nn200100](dispatch_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    dispatch_release(*v1);
    MEMORY[0x29ED520D0](v1, 0x10C0C40495EAE30);
    return v2;
  }

  return result;
}

void AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateBVHBuilderProgramKey(int *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 24;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a2 = &unk_2A23F80C0;
  v2 = (a1 - *a1);
  v3 = *v2;
  if (v3 < 5)
  {
    LODWORD(v5) = 0;
    LODWORD(v4) = 0;
LABEL_12:
    LODWORD(v6) = 0;
    goto LABEL_13;
  }

  v4 = v2[2];
  if (v2[2])
  {
    LODWORD(v4) = *(a1 + v4) & 0x3FFFFFFF;
  }

  if (v3 < 7)
  {
    LODWORD(v5) = 0;
    goto LABEL_12;
  }

  v5 = v2[3];
  if (v2[3])
  {
    LODWORD(v5) = (*(a1 + v5) != 0) << 31;
  }

  if (v3 < 9)
  {
    goto LABEL_12;
  }

  v6 = v2[4];
  if (v6)
  {
    LODWORD(v6) = (*(a1 + v6) != 0) << 30;
  }

LABEL_13:
  *(a2 + 40) = v6 | v5 | v4;
}

void ProgramKey<(_AGCStreamToken)24,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::BVHBuilderProgramKey::serialize(AGX::BVHBuilderProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x55;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

_WORD *AGX::ProgramKeyFactoryImpl<AGX::HAL300::Classes,AGX::HAL300::Encoders>::CreateEndOfTileProgramKey@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v53 = *MEMORY[0x29EDCA608];
  *(a2 + 8) = 19;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  v3 = a2 + 40;
  *a2 = &unk_2A23F9738;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 118) = 0;
  result = AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferCompilerConfigGen3(v42, a1);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v5 = v43;
  v41 = v43;
  v6 = v50;
  v7 = v44;
  v8 = v45;
  v9 = (v43 >> 10) & 3;
  v10 = *(a2 + 112) & 0xFF83FFF0FFFFFFFFLL | (1 << v9 << 32) | 0x40000000000000;
  *(a2 + 112) = v10;
  if ((~v5 & 0x1FF000) == 0)
  {
LABEL_52:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v11 = v5;
  v12 = v10 & 0xFFFFE00FFFFFFFFFLL | ((v5 >> 12) << 36);
  *(a2 + 112) = v12;
  if (!v7)
  {
    LOWORD(v15) = 0;
    LOWORD(v14) = 0;
    LOWORD(v13) = 0;
    goto LABEL_51;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = (v11 >> 12) & 0x1FF;
  v17 = v49;
  v18 = v48 & ~v47 | v46;
  result = v52;
  v19 = v47 & ~v48 | v46;
  if (v6 < 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = 3;
  }

  do
  {
    v23 = __clz(__rbit32(v7));
    v24 = *(v40 + v23);
    if ((~v24 & 0xFF000) == 0)
    {
      goto LABEL_52;
    }

    v25 = (v24 >> 12) / v16;
    v26 = *(v3 + 4 * v23) & 0xFFFFFF00 | v25;
    *(v3 + 4 * v23) = v26;
    if ((v24 & 0x1F) == 0x17)
    {
      goto LABEL_52;
    }

    v27 = &v51[v23];
    v28 = *v27;
    v29 = v27[1];
    if (v29)
    {
      if ((v29 & 2) != 0)
      {
        v30 = 8;
      }

      else
      {
        v30 = v20;
      }

      if (v28 == 4)
      {
        v30 = v20;
      }
    }

    else if (v28 > 2)
    {
      if (v28 != 3)
      {
        v30 = v20;
        if (v28 == 4)
        {
          goto LABEL_28;
        }

LABEL_41:
        v30 = -1;
        goto LABEL_28;
      }

      v30 = 5;
    }

    else if (v28 == 1)
    {
      v30 = 2;
    }

    else
    {
      if (v28 != 2)
      {
        goto LABEL_41;
      }

      if ((v29 & 2) != 0)
      {
        v30 = 4;
      }

      else
      {
        v30 = 2;
      }
    }

LABEL_28:
    v31 = (v24 & 0x1F) << 8;
    v32 = v26 & 0xE30000FF;
    v33 = (v24 << 21) & 0x1C000000;
    *(v3 + 4 * v23) = v32 | (v30 << 16) | v31 | v33;
    v34 = 1 << v23;
    v13 |= 1 << v23;
    v14 |= (1 << v23) & v18;
    v35 = v17 & (1 << v23);
    v15 |= v35;
    if ((v8 & (1 << v23)) != 0)
    {
      if (((v9 != 0) & ((v24 & 0x100) >> 8)) != 0)
      {
        v36 = 0x1000000;
      }

      else
      {
        v36 = 0;
      }

      v37 = &v52[v23];
      v38 = *v37;
      v39 = v37[1];
      if (v39)
      {
        if ((v39 & 2) != 0)
        {
          v21 = 8;
        }

        else
        {
          v21 = v20;
        }

        if (v38 == 4)
        {
          v21 = v20;
        }

        goto LABEL_12;
      }

      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v21 = 5;
        }

        else
        {
          v21 = v20;
          if (v38 != 4)
          {
            goto LABEL_44;
          }
        }
      }

      else if (v38 == 1)
      {
        v21 = 2;
      }

      else
      {
        if (v38 == 2)
        {
          if ((v39 & 2) != 0)
          {
            v21 = 4;
          }

          else
          {
            v21 = 2;
          }

          goto LABEL_12;
        }

LABEL_44:
        v21 = -1;
      }

LABEL_12:
      *(v3 + 4 * (v23 + 8)) = v36 | *(v3 + 4 * (v23 + 8)) & 0xE2000000 | (v21 << 16) | v31 | v33 | v25;
      v13 |= 256 << v23;
      v14 |= ((v19 >> v23) & 1) << (v23 + 8);
      v15 |= (v35 != 0) << (v23 + 8);
    }

    v22 = v34 == v7;
    v7 ^= v34;
  }

  while (!v22);
  v12 = *(a2 + 112);
LABEL_51:
  *(a2 + 120) = v13;
  *(a2 + 122) = v14;
  *(a2 + 124) = v15;
  *(a2 + 112) = v12 & 0xFFFFFFFF00000000 | (v13 & ~v14) | ((v15 & v13) << 16);
  return result;
}