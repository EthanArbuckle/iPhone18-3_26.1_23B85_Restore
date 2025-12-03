@interface AGXG18PFamilyVisibleFunctionTable
- (AGXG18PFamilyVisibleFunctionTable)initWithDevice:(id)device functionCount:(int64_t)count options:(unint64_t)options isSuballocDisabled:(BOOL)disabled clonedResourceIndex:(unint64_t)index clonedVisibleFunctionHeap:(void *)heap type:(int)type;
- (AGXG18PFamilyVisibleFunctionTable)initWithDevice:(id)device functionCount:(int64_t)count options:(unint64_t)options isSuballocDisabled:(BOOL)disabled resourceIndex:(unint64_t)index pipelineState:(id)state stage:(unint64_t)stage;
- (AGXG18PFamilyVisibleFunctionTable)initWithDevice:(id)device functionCount:(int64_t)count options:(unint64_t)options isSuballocDisabled:(BOOL)disabled resourceIndex:(unint64_t)index pipelineState:(id)state type:(int)type;
- (id).cxx_construct;
- (id)clone:(id)clone clonedResourceIndex:(unint64_t)index clonedVisibleFunctionHeap:(void *)heap cloneHandleMap:(void *)map;
- (unint64_t)bufferAddressAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFunction:(id)function atIndex:(unint64_t)index;
- (void)setFunctions:(const void *)functions withRange:(_NSRange)range;
- (void)setValue:(unint64_t)value withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation AGXG18PFamilyVisibleFunctionTable

- (id).cxx_construct
{
  *(self + 47) = 0;
  *(self + 48) = 0;
  *(self + 392) = 0;
  return self;
}

- (void)setValue:(unint64_t)value withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = *(&self->super.super.super.super.super._allocationType + *MEMORY[0x29EDC5638]) + 256;
    if (range.length <= 9)
    {
      v5 = 0;
LABEL_4:
      v6 = range.length - v5;
      v7 = range.location + v5;
      do
      {
        *(v4 + 8 * v7++) = value;
        --v6;
      }

      while (v6);
      return;
    }

    v5 = 0;
    if (__CFADD__(range.location, LODWORD(range.length) - 1))
    {
      goto LABEL_4;
    }

    if ((range.length - 1) >> 32)
    {
      goto LABEL_4;
    }

    v5 = range.length & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(value);
    location = range.location;
    v10 = range.length & 0x1FFFFFFFCLL;
    do
    {
      v11 = (v4 + 8 * location);
      *v11 = v8;
      v11[1] = v8;
      location += 4;
      v10 -= 4;
    }

    while (v10);
    if (range.length != v5)
    {
      goto LABEL_4;
    }
  }
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = *(&self->super.super.super.super.super._allocationType + *MEMORY[0x29EDC5638]) + 8;
    do
    {
      if (*tables)
      {
        v5 = *(*tables + 94);
      }

      else
      {
        v5 = 291945216;
      }

      *(v4 + 8 * LODWORD(range.location)) = v5;
      ++range.location;
      ++tables;
      --range.length;
    }

    while (range.length);
  }
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    v4 = *(table + 94);
  }

  else
  {
    v4 = 291945216;
  }

  *(*(&self->super.super.super.super.super._allocationType + *MEMORY[0x29EDC5638]) + 8 * index + 8) = v4;
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    v5 = *MEMORY[0x29EDC5638];
    v6 = *(&self->super.super.super.super.super._allocationType + v5) + 8;
    do
    {
      if (*buffers)
      {
        v7 = *(*buffers + v5 + 8) + *offsets;
      }

      else
      {
        v7 = 291945216;
      }

      *(v6 + 8 * LODWORD(range.location)) = v7;
      ++offsets;
      ++range.location;
      ++buffers;
      --range.length;
    }

    while (range.length);
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v5 = *MEMORY[0x29EDC5638];
  v6 = *(&self->super.super.super.super.super._allocationType + v5);
  if (buffer)
  {
    v7 = *(buffer + v5 + 8) + offset;
  }

  else
  {
    v7 = 291945216;
  }

  *(v6 + 8 * index + 8) = v7;
}

- (unint64_t)bufferAddressAtIndex:(unint64_t)index
{
  if (*(*(&self->super.super.super.super.super._allocationType + *MEMORY[0x29EDC5638]) + 8 * index + 8) == 291945216)
  {
    return 0;
  }

  else
  {
    return *(*(&self->super.super.super.super.super._allocationType + *MEMORY[0x29EDC5638]) + 8 * index + 8);
  }
}

- (void)setFunctions:(const void *)functions withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = *(&self->super.super.super.super.super._allocationType + *MEMORY[0x29EDC5638]) + 256;
    do
    {
      v5 = *functions;
      if (*functions)
      {
        v5 = v5[5];
      }

      *(v4 + 8 * LODWORD(range.location)) = v5;
      ++range.location;
      ++functions;
      --range.length;
    }

    while (range.length);
  }
}

- (void)setFunction:(id)function atIndex:(unint64_t)index
{
  if (function)
  {
    v4 = *(function + 5);
  }

  else
  {
    v4 = 0;
  }

  *(*(&self->super.super.super.super.super._allocationType + *MEMORY[0x29EDC5638]) + 8 * index + 256) = v4;
}

- (void)dealloc
{
  heap = self->_impl.resource_indirection_heap_allocation.heap_;
  if (heap)
  {
    if (LODWORD(self->_impl.resource_indirection_heap_allocation.resource_))
    {
      v4 = heap[419];
      os_unfair_lock_lock(v4);
      resourceIndex = [(AGXG18PFamilyVisibleFunctionTable *)self resourceIndex];
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = vcnt_s8(v6);
        v7.i16[0] = vaddlv_u8(v7);
        if (v7.u32[0] > 1uLL)
        {
          v8 = resourceIndex;
          if (resourceIndex >= *&v6)
          {
            v8 = resourceIndex % *&v6;
          }
        }

        else
        {
          v8 = (*&v6 - 1) & resourceIndex;
        }

        v13 = *(*(v4 + 8) + 8 * v8);
        if (v13)
        {
          v14 = *v13;
          if (*v13)
          {
            if (v7.u32[0] < 2uLL)
            {
              v15 = *&v6 - 1;
              while (1)
              {
                v17 = v14[1];
                if (v17 == resourceIndex)
                {
                  if (v14[2] == resourceIndex)
                  {
                    goto LABEL_45;
                  }
                }

                else if ((v17 & v15) != v8)
                {
                  goto LABEL_49;
                }

                v14 = *v14;
                if (!v14)
                {
                  goto LABEL_49;
                }
              }
            }

            do
            {
              v16 = v14[1];
              if (v16 == resourceIndex)
              {
                if (v14[2] == resourceIndex)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                if (v16 >= *&v6)
                {
                  v16 %= *&v6;
                }

                if (v16 != v8)
                {
                  break;
                }
              }

              v14 = *v14;
            }

            while (v14);
          }
        }
      }
    }

    else
    {
      v4 = heap[82];
      os_unfair_lock_lock(v4);
      resourceIndex2 = [(AGXG18PFamilyVisibleFunctionTable *)self resourceIndex];
      v10 = *(v4 + 16);
      if (v10)
      {
        v11 = vcnt_s8(v10);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.u32[0] > 1uLL)
        {
          v12 = resourceIndex2;
          if (resourceIndex2 >= *&v10)
          {
            v12 = resourceIndex2 % *&v10;
          }
        }

        else
        {
          v12 = (*&v10 - 1) & resourceIndex2;
        }

        v18 = *(*(v4 + 8) + 8 * v12);
        if (v18)
        {
          v14 = *v18;
          if (*v18)
          {
            if (v11.u32[0] < 2uLL)
            {
              v19 = *&v10 - 1;
              while (1)
              {
                v21 = v14[1];
                if (v21 == resourceIndex2)
                {
                  if (v14[2] == resourceIndex2)
                  {
                    goto LABEL_45;
                  }
                }

                else if ((v21 & v19) != v12)
                {
                  goto LABEL_49;
                }

                v14 = *v14;
                if (!v14)
                {
                  goto LABEL_49;
                }
              }
            }

            do
            {
              v20 = v14[1];
              if (v20 == resourceIndex2)
              {
                if (v14[2] == resourceIndex2)
                {
LABEL_45:
                  std::__hash_table<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>>>::remove(&__p, (v4 + 8), v14);
                  v22 = __p;
                  if (__p)
                  {
                    if (v25 == 1)
                    {
                      objc_destroyWeak(__p + 3);
                    }

                    operator delete(v22);
                  }

                  break;
                }
              }

              else
              {
                if (v20 >= *&v10)
                {
                  v20 %= *&v10;
                }

                if (v20 != v12)
                {
                  break;
                }
              }

              v14 = *v14;
            }

            while (v14);
          }
        }
      }
    }

LABEL_49:
    os_unfair_lock_unlock(v4);
  }

  v23.receiver = self;
  v23.super_class = AGXG18PFamilyVisibleFunctionTable;
  [(IOGPUMetalBuffer *)&v23 dealloc];
}

- (id)clone:(id)clone clonedResourceIndex:(unint64_t)index clonedVisibleFunctionHeap:(void *)heap cloneHandleMap:(void *)map
{
  v11 = *MEMORY[0x29EDC5638];
  v12 = (&self->super.super.super.super.super.super.super.isa + v11);
  v13 = **(&self->super.super.super.super.super._allocationType + v11);
  v14 = [AGXG18PFamilyVisibleFunctionTable alloc];
  LODWORD(v29) = self->_impl.resource_indirection_heap_allocation.resource_;
  v15 = [(AGXG18PFamilyVisibleFunctionTable *)v14 initWithDevice:clone functionCount:v13 options:0 isSuballocDisabled:*(*(clone + 106) + 16989) clonedResourceIndex:index clonedVisibleFunctionHeap:heap type:v29];
  memcpy(*(&v15->super.super.super.super.super._allocationType + v11), v12[3], 8 * v13 + 256);
  *v12 = 0;
  v12[2] = (v12[2] & 0x1FFFFFFFFFFFFFFFLL | 0x8000000000000000);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *(&v15->super.super.super.super.super._allocationType + v11) + 256;
      v18 = *(v17 + 8 * i);
      if (v18)
      {
        v19 = *(map + 8);
        if (v19)
        {
          v20 = vcnt_s8(v19);
          v20.i16[0] = vaddlv_u8(v20);
          if (v20.u32[0] > 1uLL)
          {
            v21 = *(v17 + 8 * i);
            if (v18 >= *&v19)
            {
              v21 = v18 % *&v19;
            }
          }

          else
          {
            v21 = (*&v19 - 1) & v18;
          }

          v22 = *(*map + 8 * v21);
          if (v22)
          {
            v23 = *v22;
            if (v23)
            {
              if (v20.u32[0] < 2uLL)
              {
                v24 = *&v19 - 1;
                while (1)
                {
                  v25 = v23[1];
                  if (v25 == v18)
                  {
                    if (v23[2] == v18)
                    {
                      goto LABEL_27;
                    }
                  }

                  else if ((v25 & v24) != v21)
                  {
                    goto LABEL_4;
                  }

                  v23 = *v23;
                  if (!v23)
                  {
                    goto LABEL_4;
                  }
                }
              }

              do
              {
                v26 = v23[1];
                if (v26 == v18)
                {
                  if (v23[2] == v18)
                  {
LABEL_27:
                    v27 = v23[3];
                    if (v27)
                    {
                      v27 = *(v27 + 40);
                    }

                    *(v17 + 8 * i) = v27;
                    break;
                  }
                }

                else
                {
                  if (v26 >= *&v19)
                  {
                    v26 %= *&v19;
                  }

                  if (v26 != v21)
                  {
                    break;
                  }
                }

                v23 = *v23;
              }

              while (v23);
            }
          }
        }
      }

LABEL_4:
      ;
    }
  }

  return v15;
}

- (AGXG18PFamilyVisibleFunctionTable)initWithDevice:(id)device functionCount:(int64_t)count options:(unint64_t)options isSuballocDisabled:(BOOL)disabled clonedResourceIndex:(unint64_t)index clonedVisibleFunctionHeap:(void *)heap type:(int)type
{
  indexCopy = index;
  countCopy = count;
  v25[11] = 0;
  v12 = initializeWithDevice<AGXG18PFamilyVisibleFunctionTable>(self, device, 8 * count + 256, options, disabled, v25);
  v13 = *MEMORY[0x29EDC5638];
  v14 = &v12[v13];
  v15 = *&v12[v13 + 24];
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(&v26, heap, indexCopy);
  v16 = *(v12 + 94);
  *(v12 + 94) = v26;
  v26 = v16;
  v17 = *(v12 + 95);
  *(v12 + 95) = v27;
  v27 = v17;
  v18 = *(v12 + 48);
  v19 = v28;
  *(v12 + 48) = v28;
  v28 = v18;
  v20 = v12[392];
  v12[392] = v29;
  v29 = v20;
  if (v16 && (v20 & 1) == 0)
  {
    os_unfair_lock_lock(v18 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v28[174], v26, v26 + v27 - 1);
    os_unfair_lock_unlock(v18 + 188);
    v19 = *(v12 + 48);
  }

  v21 = *(v14 + 1);
  os_unfair_lock_lock(v19 + 188);
  v22 = *(v12 + 48);
  v23 = *(v12 + 94);
  os_unfair_lock_assert_owner(v22 + 188);
  *(*(*&v22[6 * v22[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + v13 + 24) + 8 * v23) = v21;
  os_unfair_lock_unlock(v19 + 188);
  *v15 = countCopy;
  memset_pattern16(v15 + 2, &unk_29D2F27D0, 0xF8uLL);
  *(v12 + 100) = type;
  *(v12 + 51) = 0;
  *&v12[v13] = 0;
  *(v14 + 2) = *(v14 + 2) & 0x1FFFFFFFFFFFFFFFLL | 0x8000000000000000;
  return v12;
}

- (AGXG18PFamilyVisibleFunctionTable)initWithDevice:(id)device functionCount:(int64_t)count options:(unint64_t)options isSuballocDisabled:(BOOL)disabled resourceIndex:(unint64_t)index pipelineState:(id)state stage:(unint64_t)stage
{
  if ((stage & (stage - 1)) != 0)
  {
    return 0;
  }

  else
  {
    return [(AGXG18PFamilyVisibleFunctionTable *)self initWithDevice:device functionCount:count options:options isSuballocDisabled:disabled resourceIndex:index pipelineState:state type:?];
  }
}

- (AGXG18PFamilyVisibleFunctionTable)initWithDevice:(id)device functionCount:(int64_t)count options:(unint64_t)options isSuballocDisabled:(BOOL)disabled resourceIndex:(unint64_t)index pipelineState:(id)state type:(int)type
{
  indexCopy = index;
  countCopy = count;
  v31 = 0;
  v12 = initializeWithDevice<AGXG18PFamilyVisibleFunctionTable>(self, device, 8 * count + 256, options, disabled, v30);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __126__AGXG18PFamilyVisibleFunctionTable_initWithDevice_functionCount_options_isSuballocDisabled_resourceIndex_pipelineState_type___block_invoke;
  block[3] = &unk_29F3438F8;
  block[4] = device;
  if ([AGXG18PFamilyVisibleFunctionTable initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:]::once != -1)
  {
    dispatch_once(&[AGXG18PFamilyVisibleFunctionTable initWithDevice:functionCount:options:isSuballocDisabled:resourceIndex:pipelineState:type:]::once, block);
  }

  v13 = *MEMORY[0x29EDC5638];
  v14 = &v12[v13];
  v15 = *&v12[v13 + 24];
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(&v32, (*(device + 106) + 13360), indexCopy);
  v16 = *(v12 + 94);
  *(v12 + 94) = v32;
  LODWORD(v32) = v16;
  v17 = *(v12 + 95);
  *(v12 + 95) = HIDWORD(v32);
  HIDWORD(v32) = v17;
  v18 = *(v12 + 48);
  v19 = v33;
  *(v12 + 48) = v33;
  v33 = v18;
  v20 = v12[392];
  v12[392] = v34;
  v34 = v20;
  if (v16 && (v20 & 1) == 0)
  {
    os_unfair_lock_lock(v18 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v33[174], v32, v32 + HIDWORD(v32) - 1);
    os_unfair_lock_unlock(v18 + 188);
    v19 = *(v12 + 48);
  }

  v21 = *(v14 + 1);
  os_unfair_lock_lock(v19 + 188);
  v22 = *(v12 + 48);
  v23 = *(v12 + 94);
  os_unfair_lock_assert_owner(v22 + 188);
  *(*(*&v22[6 * v22[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + v13 + 24) + 8 * v23) = v21;
  os_unfair_lock_unlock(v19 + 188);
  *v15 = countCopy;
  memset_pattern16(v15 + 2, &unk_29D2F27D0, 0xF8uLL);
  *(v12 + 100) = type;
  stateCopy = state;
  *(v12 + 51) = stateCopy;
  if (*(v12 + 100))
  {
    v25 = stateCopy[419];
  }

  else
  {
    v25 = stateCopy[82];
  }

  os_unfair_lock_lock(v25);
  resourceIndex = [v12 resourceIndex];
  v32 = &resourceIndex;
  v26 = std::__hash_table<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v25 + 8), resourceIndex);
  objc_storeWeak(v26 + 3, v12);
  os_unfair_lock_unlock(v25);
  *v14 = 0;
  *(v14 + 2) = *(v14 + 2) & 0x1FFFFFFFFFFFFFFFLL | 0x8000000000000000;
  return v12;
}

void __126__AGXG18PFamilyVisibleFunctionTable_initWithDevice_functionCount_options_isSuballocDisabled_resourceIndex_pipelineState_type___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 848);
  v2 = *(v1 + 15688);
  v3 = *(v1 + 15696);
  if (v2 != v3)
  {
    AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::reserve(v1 + 13360, v2, (v3 - v2) >> 3);
    *(v1 + 15696) = *(v1 + 15688);
  }
}

@end