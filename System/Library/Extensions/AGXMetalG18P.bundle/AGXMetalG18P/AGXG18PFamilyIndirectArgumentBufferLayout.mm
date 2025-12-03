@interface AGXG18PFamilyIndirectArgumentBufferLayout
- (AGXG18PFamilyIndirectArgumentBufferLayout)initWithStructType:(id)type;
- (unint64_t)constantOffsetAtIndex:(unint64_t)index;
- (unint64_t)uniqueIdentifierForAccelerationStructureAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForComputePipelineAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForIndirectCommandBufferAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForIntersectionFunctionTableAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForRenderPipelineAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForSamplerAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForTextureAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForVisibleFunctionTableAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (void)virtualAddressForBufferAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
@end

@implementation AGXG18PFamilyIndirectArgumentBufferLayout

- (unint64_t)constantOffsetAtIndex:(unint64_t)index
{
  ptr = self->_impl.__ptr_;
  v4 = ptr + 8;
  if (*ptr)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(ptr + 4);
    if (!v5)
    {
      return 0;
    }

    v4 = *(ptr + 1);
  }

  v6 = v5 - 1;
  v7 = (v5 - 1) & (37 * index);
  v8 = *&v4[16 * v7];
  if (v8 == index)
  {
    return *&v4[16 * v7 + 8] & 0xFFFFFFFFFFFFFFLL;
  }

  v10 = 1;
  while (v8 != -1)
  {
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *&v4[16 * v7];
    if (v8 == index)
    {
      return *&v4[16 * v7 + 8] & 0xFFFFFFFFFFFFFFLL;
    }
  }

  return 0;
}

- (unint64_t)uniqueIdentifierForAccelerationStructureAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  indexCopy = index;
  device = [(_MTLIndirectArgumentBufferLayout *)self device];
  ptr = self->_impl.__ptr_;
  v11 = MEMORY[0x29EDC5638];
  v12 = ptr + 8;
  if (*ptr)
  {
    v13 = 16;
  }

  else
  {
    v13 = *(ptr + 4);
    if (!v13)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_7;
    }

    v12 = *(ptr + 1);
  }

  v14 = v13 - 1;
  v15 = (v13 - 1) & (37 * indexCopy);
  v16 = *&v12[16 * v15];
  if (v16 != indexCopy)
  {
    v24 = 1;
    while (v16 != -1)
    {
      v25 = v15 + v24++;
      v15 = v25 & v14;
      v16 = *&v12[16 * v15];
      if (v16 == indexCopy)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_15;
  }

LABEL_6:
  v17 = *&v12[16 * v15 + 8];
LABEL_7:
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::RangeAllocation::RangeAllocation(v26, (*(device + 106) + 9408), *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v17));
  v18 = v27;
  os_unfair_lock_lock(v27 + 194);
  v19 = v27;
  v20 = v26[0];
  os_unfair_lock_assert_owner(v27 + 194);
  v21 = *(*(*&v19[6 * v19[176]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *v11 + 24) + 16 * v20);
  os_unfair_lock_unlock(v18 + 194);
  if (v26[0] && (v28 & 1) == 0)
  {
    v22 = v27;
    os_unfair_lock_lock(v27 + 194);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v27[180], v26[0], v26[0] + v26[1] - 1);
    os_unfair_lock_unlock(v22 + 194);
  }

  return v21 & 0xFFFFFFFFFC00;
}

- (unint64_t)uniqueIdentifierForIntersectionFunctionTableAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  indexCopy = index;
  v9 = *([(_MTLIndirectArgumentBufferLayout *)self device]+ 848);
  ptr = self->_impl.__ptr_;
  v11 = MEMORY[0x29EDC5638];
  v12 = ptr + 8;
  if (*ptr)
  {
    v13 = 16;
  }

  else
  {
    v13 = *(ptr + 4);
    if (!v13)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_7;
    }

    v12 = *(ptr + 1);
  }

  v14 = v13 - 1;
  v15 = (v13 - 1) & (37 * indexCopy);
  v16 = *&v12[16 * v15];
  if (v16 != indexCopy)
  {
    v24 = 1;
    while (v16 != -1)
    {
      v25 = v15 + v24++;
      v15 = v25 & v14;
      v16 = *&v12[16 * v15];
      if (v16 == indexCopy)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_15;
  }

LABEL_6:
  v17 = *&v12[16 * v15 + 8];
LABEL_7:
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(v26, v9 + 3728, *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v17));
  v18 = v27;
  os_unfair_lock_lock(v27 + 188);
  v19 = v27;
  v20 = v26[0];
  os_unfair_lock_assert_owner(v27 + 188);
  v21 = *(*(*&v19[6 * v19[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *v11 + 24) + 8 * v20);
  os_unfair_lock_unlock(v18 + 188);
  if (v26[0] && (v28 & 1) == 0)
  {
    v22 = v27;
    os_unfair_lock_lock(v27 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v27[174], v26[0], v26[0] + v26[1] - 1);
    os_unfair_lock_unlock(v22 + 188);
  }

  return v21;
}

- (unint64_t)uniqueIdentifierForVisibleFunctionTableAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  indexCopy = index;
  v9 = *([(_MTLIndirectArgumentBufferLayout *)self device]+ 848);
  ptr = self->_impl.__ptr_;
  v11 = MEMORY[0x29EDC5638];
  v12 = ptr + 8;
  if (*ptr)
  {
    v13 = 16;
  }

  else
  {
    v13 = *(ptr + 4);
    if (!v13)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_7;
    }

    v12 = *(ptr + 1);
  }

  v14 = v13 - 1;
  v15 = (v13 - 1) & (37 * indexCopy);
  v16 = *&v12[16 * v15];
  if (v16 != indexCopy)
  {
    v24 = 1;
    while (v16 != -1)
    {
      v25 = v15 + v24++;
      v15 = v25 & v14;
      v16 = *&v12[16 * v15];
      if (v16 == indexCopy)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_15;
  }

LABEL_6:
  v17 = *&v12[16 * v15 + 8];
LABEL_7:
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(v26, v9 + 3340, *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v17));
  v18 = v27;
  os_unfair_lock_lock(v27 + 188);
  v19 = v27;
  v20 = v26[0];
  os_unfair_lock_assert_owner(v27 + 188);
  v21 = *(*(*&v19[6 * v19[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *v11 + 24) + 8 * v20);
  os_unfair_lock_unlock(v18 + 188);
  if (v26[0] && (v28 & 1) == 0)
  {
    v22 = v27;
    os_unfair_lock_lock(v27 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v27[174], v26[0], v26[0] + v26[1] - 1);
    os_unfair_lock_unlock(v22 + 188);
  }

  return v21;
}

- (unint64_t)uniqueIdentifierForIndirectCommandBufferAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  indexCopy = index;
  v9 = *([(_MTLIndirectArgumentBufferLayout *)self device]+ 848);
  ptr = self->_impl.__ptr_;
  v11 = MEMORY[0x29EDC5638];
  v12 = ptr + 8;
  if (*ptr)
  {
    v13 = 16;
  }

  else
  {
    v13 = *(ptr + 4);
    if (!v13)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_7;
    }

    v12 = *(ptr + 1);
  }

  v14 = v13 - 1;
  v15 = (v13 - 1) & (37 * indexCopy);
  v16 = *&v12[16 * v15];
  if (v16 != indexCopy)
  {
    v24 = 1;
    while (v16 != -1)
    {
      v25 = v15 + v24++;
      v15 = v25 & v14;
      v16 = *&v12[16 * v15];
      if (v16 == indexCopy)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_15;
  }

LABEL_6:
  v17 = *&v12[16 * v15 + 8];
LABEL_7:
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(v26, v9 + 3146, *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v17));
  v18 = v27;
  os_unfair_lock_lock(v27 + 188);
  v19 = v27;
  v20 = v26[0];
  os_unfair_lock_assert_owner(v27 + 188);
  v21 = *(*(*&v19[6 * v19[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *v11 + 24) + 8 * v20);
  os_unfair_lock_unlock(v18 + 188);
  if (v26[0] && (v28 & 1) == 0)
  {
    v22 = v27;
    os_unfair_lock_lock(v27 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v27[174], v26[0], v26[0] + v26[1] - 1);
    os_unfair_lock_unlock(v22 + 188);
  }

  return v21;
}

- (unint64_t)uniqueIdentifierForComputePipelineAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  indexCopy = index;
  v9 = *([(_MTLIndirectArgumentBufferLayout *)self device]+ 848);
  ptr = self->_impl.__ptr_;
  v11 = MEMORY[0x29EDC5638];
  v12 = ptr + 8;
  if (*ptr)
  {
    v13 = 16;
  }

  else
  {
    v13 = *(ptr + 4);
    if (!v13)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_7;
    }

    v12 = *(ptr + 1);
  }

  v14 = v13 - 1;
  v15 = (v13 - 1) & (37 * indexCopy);
  v16 = *&v12[16 * v15];
  if (v16 != indexCopy)
  {
    v24 = 1;
    while (v16 != -1)
    {
      v25 = v15 + v24++;
      v15 = v25 & v14;
      v16 = *&v12[16 * v15];
      if (v16 == indexCopy)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_15;
  }

LABEL_6:
  v17 = *&v12[16 * v15 + 8];
LABEL_7:
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(v26, v9 + 2952, *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v17));
  v18 = v27;
  os_unfair_lock_lock(v27 + 188);
  v19 = v27;
  v20 = v26[0];
  os_unfair_lock_assert_owner(v27 + 188);
  v21 = *(*(*&v19[6 * v19[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *v11 + 24) + 8 * v20);
  os_unfair_lock_unlock(v18 + 188);
  if (v26[0] && (v28 & 1) == 0)
  {
    v22 = v27;
    os_unfair_lock_lock(v27 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v27[174], v26[0], v26[0] + v26[1] - 1);
    os_unfair_lock_unlock(v22 + 188);
  }

  return v21;
}

- (unint64_t)uniqueIdentifierForRenderPipelineAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  indexCopy = index;
  v9 = *([(_MTLIndirectArgumentBufferLayout *)self device]+ 848);
  ptr = self->_impl.__ptr_;
  v11 = MEMORY[0x29EDC5638];
  v12 = ptr + 8;
  if (*ptr)
  {
    v13 = 16;
  }

  else
  {
    v13 = *(ptr + 4);
    if (!v13)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_7;
    }

    v12 = *(ptr + 1);
  }

  v14 = v13 - 1;
  v15 = (v13 - 1) & (37 * indexCopy);
  v16 = *&v12[16 * v15];
  if (v16 != indexCopy)
  {
    v24 = 1;
    while (v16 != -1)
    {
      v25 = v15 + v24++;
      v15 = v25 & v14;
      v16 = *&v12[16 * v15];
      if (v16 == indexCopy)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_15;
  }

LABEL_6:
  v17 = *&v12[16 * v15 + 8];
LABEL_7:
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(v26, v9 + 2952, *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v17));
  v18 = v27;
  os_unfair_lock_lock(v27 + 188);
  v19 = v27;
  v20 = v26[0];
  os_unfair_lock_assert_owner(v27 + 188);
  v21 = *(*(*&v19[6 * v19[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *v11 + 24) + 8 * v20);
  os_unfair_lock_unlock(v18 + 188);
  if (v26[0] && (v28 & 1) == 0)
  {
    v22 = v27;
    os_unfair_lock_lock(v27 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v27[174], v26[0], v26[0] + v26[1] - 1);
    os_unfair_lock_unlock(v22 + 188);
  }

  return v21;
}

- (unint64_t)uniqueIdentifierForSamplerAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  ptr = self->_impl.__ptr_;
  v6 = ptr + 8;
  if (*ptr)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(ptr + 4);
    if (!v7)
    {
LABEL_12:
      v11 = 0;
      return *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v11);
    }

    v6 = *(ptr + 1);
  }

  v8 = v7 - 1;
  v9 = (v7 - 1) & (37 * index);
  v10 = *&v6[16 * v9];
  if (v10 != index)
  {
    v13 = 1;
    while (v10 != -1)
    {
      v14 = v9 + v13++;
      v9 = v14 & v8;
      v10 = *&v6[16 * v9];
      if (v10 == index)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_12;
  }

LABEL_6:
  v11 = *&v6[16 * v9 + 8];
  return *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v11);
}

- (unint64_t)uniqueIdentifierForTextureAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  ptr = self->_impl.__ptr_;
  v6 = ptr + 8;
  if (*ptr)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(ptr + 4);
    if (!v7)
    {
LABEL_12:
      v11 = 0;
      return *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v11);
    }

    v6 = *(ptr + 1);
  }

  v8 = v7 - 1;
  v9 = (v7 - 1) & (37 * index);
  v10 = *&v6[16 * v9];
  if (v10 != index)
  {
    v13 = 1;
    while (v10 != -1)
    {
      v14 = v9 + v13++;
      v9 = v14 & v8;
      v10 = *&v6[16 * v9];
      if (v10 == index)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_12;
  }

LABEL_6:
  v11 = *&v6[16 * v9 + 8];
  return *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v11);
}

- (void)virtualAddressForBufferAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  ptr = self->_impl.__ptr_;
  v6 = ptr + 8;
  if (*ptr)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(ptr + 4);
    if (!v7)
    {
LABEL_12:
      v11 = 0;
      return *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v11);
    }

    v6 = *(ptr + 1);
  }

  v8 = v7 - 1;
  v9 = (v7 - 1) & (37 * index);
  v10 = *&v6[16 * v9];
  if (v10 != index)
  {
    v13 = 1;
    while (v10 != -1)
    {
      v14 = v9 + v13++;
      v9 = v14 & v8;
      v10 = *&v6[16 * v9];
      if (v10 == index)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_12;
  }

LABEL_6:
  v11 = *&v6[16 * v9 + 8];
  return *(*(buffer + *MEMORY[0x29EDC5638] + 24) + offset + v11);
}

- (AGXG18PFamilyIndirectArgumentBufferLayout)initWithStructType:(id)type
{
  v4.receiver = self;
  v4.super_class = AGXG18PFamilyIndirectArgumentBufferLayout;
  if ([(_MTLIndirectArgumentBufferLayout *)&v4 init])
  {
    operator new();
  }

  return 0;
}

@end