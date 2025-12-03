@interface AGXG18PFamilyArgumentTable_mtlnext
- (AGXG18PFamilyArgumentTable_mtlnext)initWithDescriptor:(id)descriptor device:(id)device;
- (void)dealloc;
- (void)getBufferBindings:(MTLResourceID *)bindings bindingCount:(unint64_t)count;
- (void)getTextureBindings:(MTLResourceID *)bindings bindingCount:(unint64_t)count;
- (void)setAddress:(unint64_t)address atIndex:(unint64_t)index;
- (void)setAddress:(unint64_t)address attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setResource:(MTLResourceID)resource atBufferIndex:(unint64_t)index;
- (void)setSamplerState:(MTLResourceID)state atIndex:(unint64_t)index;
- (void)setTexture:(MTLResourceID)texture atIndex:(unint64_t)index;
@end

@implementation AGXG18PFamilyArgumentTable_mtlnext

- (void)getTextureBindings:(MTLResourceID *)bindings bindingCount:(unint64_t)count
{
  if (count)
  {
    impl = self->_impl;
    v5 = impl[3];
    v6 = *(impl + 2);
    if (count == 1)
    {
      v7 = 0;
      v8 = 0;
LABEL_4:
      v9 = v5 + v6;
      v10 = v8 + 1;
      do
      {
        bindings[v7] = *(v9 + (v7 << 7) + 56);
        v7 = v10++;
      }

      while (v7 < count);
      return;
    }

    v8 = 0;
    v7 = 0;
    if (!count)
    {
      goto LABEL_4;
    }

    if ((count - 1) >> 32)
    {
      goto LABEL_4;
    }

    v7 = count & 0x1FFFFFFFELL;
    v11 = bindings + 1;
    v12 = (v6 + v5 + 184);
    v13 = count & 0x1FFFFFFFELL;
    do
    {
      v14 = *v12;
      v11[-1]._impl = *(v12 - 16);
      v11->_impl = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 2;
    }

    while (v13);
    v8 = count & 0xFFFFFFFE;
    if (v7 != count)
    {
      goto LABEL_4;
    }
  }
}

- (void)getBufferBindings:(MTLResourceID *)bindings bindingCount:(unint64_t)count
{
  if (count)
  {
    impl = self->_impl;
    v5 = impl[3];
    v6 = *(impl + 1);
    if (count <= 0xD)
    {
      goto LABEL_3;
    }

    v8 = 0;
    v7 = 0;
    if (!count || (count - 1) >> 32)
    {
      goto LABEL_4;
    }

    if (bindings - v5 - v6 < 0x20)
    {
LABEL_3:
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = count & 0x1FFFFFFFCLL;
      v11 = bindings + 2;
      v12 = (v6 + v5 + 16);
      v13 = count & 0x1FFFFFFFCLL;
      do
      {
        v14 = *v12;
        *&v11[-2]._impl = *(v12 - 1);
        *&v11->_impl = v14;
        v11 += 4;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      v8 = count & 0xFFFFFFFC;
      if (v7 == count)
      {
        return;
      }
    }

LABEL_4:
    v9 = v5 + v6;
    v10 = v8 + 1;
    do
    {
      bindings[v7] = *(v9 + 8 * v7);
      v7 = v10++;
    }

    while (v7 < count);
  }
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    free(impl[3]);
    MEMORY[0x29ED520D0](impl, 0x1010C405FE342ADLL);
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyArgumentTable_mtlnext;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (void)setSamplerState:(MTLResourceID)state atIndex:(unint64_t)index
{
  indexCopy = index;
  if (state._impl)
  {
    AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::RangeAllocation::RangeAllocation(v14, self->_device->_impl + 2152, state._impl);
    v7 = v15;
    os_unfair_lock_lock(v15 + 194);
    v8 = v15;
    v9 = v14[0];
    os_unfair_lock_assert_owner(v15 + 194);
    v10 = *(*(*&v8[6 * v8[176]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *MEMORY[0x29EDC5638] + 24) + 32 * v9);
    os_unfair_lock_unlock(v7 + 194);
    if (v14[0] && (v16 & 1) == 0)
    {
      v11 = v15;
      os_unfair_lock_lock(v15 + 194);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v15[180], v14[0], v14[0] + v14[1] - 1);
      os_unfair_lock_unlock(v11 + 194);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = 32 * indexCopy;
  *(*(self->_impl + 3) + *(self->_impl + 3) + v12 + 8) = v10;
  impl = self->_impl;
  *(*(impl + 3) + impl[3] + v12) = state;
  if (atomic_load_explicit(impl + 88, memory_order_acquire))
  {
    if (*(impl + 10) != -1)
    {
      atomic_fetch_add(impl + 10, 1uLL);
    }

    atomic_store(0, impl + 88);
  }
}

- (void)setTexture:(MTLResourceID)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  if (texture._impl)
  {
    AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::RangeAllocation(v60, self->_device->_impl + 1810, 1u, texture._impl);
    v7 = v61;
    os_unfair_lock_lock((v61 + 1344));
    v8 = v61;
    v9 = v60[0];
    if (atomic_load_explicit((v61 + 1172), memory_order_acquire))
    {
      v10 = (*(v8 + 1264) + 24 * (v9 >> 15));
      v11 = v10[1];
      v12 = 32 * (v9 & 0x7FFF);
      v13 = *v10 + v12;
      v14 = (v11 + v12);
    }

    else
    {
      os_unfair_lock_assert_owner((v8 + 1344));
      v28 = v8 + 40 * *(v8 + 1168);
      v29 = *MEMORY[0x29EDC5638];
      v30 = *(v28 + 24);
      v13 = *(*(v28 + 16) + v29 + 24) + 32 * v9;
      v14 = (*(v30 + v29 + 24) + 32 * v9);
    }

    v31 = *v13;
    v32 = *(v13 + 8);
    indexCopy2 = indexCopy;
    v57 = *(v13 + 16);
    v58 = *v14;
    v59 = v14[1];
    os_unfair_lock_unlock(v7 + 336);
    v33 = *(self->_impl + 3) + *(self->_impl + 2) + (indexCopy << 7);
    *(v33 + 64) = v31;
    *(v33 + 72) = v32;
    *(v33 + 80) = v57;
    v34 = *(self->_impl + 3) + *(self->_impl + 2) + (indexCopy << 7);
    *(v34 + 96) = v58;
    *(v34 + 112) = v59;
    v35 = (v31 >> 4) & 3;
    if (v35)
    {
      v36 = v35 == 3;
    }

    else
    {
      v36 = 1;
    }

    v37 = (v32 >> 46);
    if (v36)
    {
      v38 = 1;
    }

    else
    {
      v38 = v37 + 1;
    }

    if ((v31 & 0x3F) == 3)
    {
      v39 = (v57.i16[0] & 0x7FF) + 1;
    }

    else
    {
      v39 = v38;
    }

    v40 = vmax_u32(vshl_u32(vadd_s32(vand_s8(vmovn_s64(vshlq_u64(vdupq_n_s64(v31), xmmword_29D2F2000)), 0x7F0000007FLL), 0x100000001), vneg_s32(vand_s8(vdup_lane_s32(vand_s8(vmovn_s64(vshrq_n_u64(v57, 0x2CuLL)), 0xF0000000FLL), 0), vcgez_s32(vshl_n_s32(vdup_n_s32((v31 & 0x1000000000000000) == 0), 0x1FuLL))))), 0x100000001);
    v41 = (v31 >> 4) & 3;
    v42 = v37 + 1;
    v43 = (v57.i64[0] >> 44) & 0xF;
    if ((v31 & 0x1000000000000000) == 0)
    {
      LOBYTE(v43) = 0;
    }

    v44 = v42 >> v43;
    if (v44 <= 1)
    {
      v44 = 1;
    }

    if (v41)
    {
      v45 = v41 == 3;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      v46 = 1;
    }

    else
    {
      v46 = v44;
    }

    if ((((v31 & 0xE000) == 0x8000) & (((v31 >> 6) & 0x7F) < 0x33) & (0x4000800000200uLL >> (v31 >> 6))) != 0)
    {
      v47 = 0x40000000;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47 | (((v31 & 0xE000000) == 0x8000000) << 31);
    if ((v31 & 0x1000000000000000) != 0)
    {
      v49 = (HIWORD(v57.i64[0]) & 0xF) - ((v57.i64[0] >> 44) & 0xF) + 1;
    }

    else
    {
      v49 = 1;
    }

    v50 = (v31 & 0xF) == 8 || (v31 & 0xF) == 4;
    v51 = 2 << ((v31 >> 58) & 3);
    if (!v50)
    {
      v51 = 1;
    }

    v52 = (v57.i64[0] >> 44) & 0xF;
    if ((v31 & 0x1000000000000000) == 0)
    {
      LODWORD(v52) = 0;
    }

    v53 = v46 >> v52;
    if (v53 <= 1)
    {
      v53 = 1;
    }

    v54 = (*(self->_impl + 3) + *(self->_impl + 2) + (indexCopy << 7));
    *v54 = 0;
    v54[1].i32[0] = 0;
    v54[1].i32[1] = v39 - 1;
    v54[2] = vmax_u32(vshl_u32(v40, vneg_s32(vdup_n_s32(v52))), 0x100000001);
    v54[3].i32[0] = v53;
    v54[3].i32[1] = v39;
    v54[4].i32[0] = v48;
    v54[4].i32[1] = v49;
    v54[5].i32[0] = v51;
    v54[5].i32[1] = v52;
    v54[6].i32[0] = texture._impl;
    v54[6].i32[1] = 0;
    impl = self->_impl;
    v55 = &impl[8 * (indexCopy > 0x3F)];
    *(v55 + 4) |= 1 << indexCopy;
    *(v55 + 6) = *(v55 + 6) & ~(1 << indexCopy) | (((v31 >> 61) & 1) << indexCopy);
    *(v55 + 8) |= 1 << indexCopy;
    if (v60[0] && (v62 & 1) == 0)
    {
      v56 = v61;
      os_unfair_lock_lock((v61 + 1344));
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(v61 + 1288, v60[0], v60[0] + v60[1] - 1);
      os_unfair_lock_unlock(v56 + 336);
      impl = self->_impl;
    }
  }

  else
  {
    v15 = self->_impl;
    device = self->_device;
    indexCopy2 = index;
    v18 = index << 7;
    v19 = (v15[3] + *(v15 + 2) + v18);
    bzero(v19, 0x38uLL);
    v19[12] = 0;
    v20 = device->_impl;
    v21 = v15[3] + *(v15 + 2) + v18;
    v22 = v20[1031];
    *(v21 + 64) = v20[1030];
    *(v21 + 80) = v22;
    v23 = device->_impl;
    v24 = v15[3] + *(v15 + 2) + v18;
    v25 = v23[1033];
    *(v24 + 96) = v23[1032];
    *(v24 + 112) = v25;
    impl = self->_impl;
    v27 = &impl[8 * (indexCopy > 0x3F)];
    *(v27 + 4) &= ~(1 << indexCopy);
    *(v27 + 6) &= ~(1 << indexCopy);
    *(v27 + 8) &= ~(1 << indexCopy);
  }

  *(*(impl + 3) + *(impl + 2) + (indexCopy2 << 7) + 56) = texture;
  if (atomic_load_explicit(impl + 88, memory_order_acquire))
  {
    if (*(impl + 10) != -1)
    {
      atomic_fetch_add(impl + 10, 1uLL);
    }

    atomic_store(0, impl + 88);
  }
}

- (void)setResource:(MTLResourceID)resource atBufferIndex:(unint64_t)index
{
  impl = self->_impl;
  *(*(impl + 3) + impl[1] + 8 * index) = resource;
  if (atomic_load_explicit(impl + 88, memory_order_acquire))
  {
    if (*(impl + 10) != -1)
    {
      atomic_fetch_add(impl + 10, 1uLL);
    }

    atomic_store(0, impl + 88);
  }
}

- (void)setAddress:(unint64_t)address attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  impl = self->_impl;
  v6 = *(impl + 3);
  *(v6 + impl[1] + 8 * index) = address;
  *(v6 + impl[5] + 4 * index) = stride;
  if (atomic_load_explicit(impl + 88, memory_order_acquire))
  {
    if (*(impl + 10) != -1)
    {
      atomic_fetch_add(impl + 10, 1uLL);
    }

    atomic_store(0, impl + 88);
  }
}

- (void)setAddress:(unint64_t)address atIndex:(unint64_t)index
{
  impl = self->_impl;
  *(*(impl + 3) + impl[1] + 8 * index) = address;
  if (atomic_load_explicit(impl + 88, memory_order_acquire))
  {
    if (*(impl + 10) != -1)
    {
      atomic_fetch_add(impl + 10, 1uLL);
    }

    atomic_store(0, impl + 88);
  }
}

- (AGXG18PFamilyArgumentTable_mtlnext)initWithDescriptor:(id)descriptor device:(id)device
{
  v8.receiver = self;
  v8.super_class = AGXG18PFamilyArgumentTable_mtlnext;
  v6 = [_MTL4ArgumentTable initWithDescriptor:sel_initWithDescriptor_device_ device:?];
  if (v6)
  {
    v6->_device = device;
    [descriptor supportAttributeStrides];
    operator new();
  }

  return 0;
}

@end