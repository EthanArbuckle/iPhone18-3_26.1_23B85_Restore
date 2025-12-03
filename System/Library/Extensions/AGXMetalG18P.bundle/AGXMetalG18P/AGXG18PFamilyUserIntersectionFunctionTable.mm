@interface AGXG18PFamilyUserIntersectionFunctionTable
- (AGXG18PFamilyUserIntersectionFunctionTable)initWithDevice:(id)device numTableFnSlots:(int)slots pipelineSets:(const void *)sets pipeline:(id)pipeline stage:(int)stage resourceIndex:(unsigned int)index;
- (id)clone:(id)clone cloneTableHeap:(void *)heap slProgramsTracker:(void *)tracker;
- (unint64_t)bufferAddressAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFunctions:(const void *)functions withRange:(_NSRange)range;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation AGXG18PFamilyUserIntersectionFunctionTable

- (unint64_t)bufferAddressAtIndex:(unint64_t)index
{
  result = *(*(self->_impl + 6) + 8 * index);
  if (result)
  {
    v4 = result == 291945216;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  return result;
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range
{
  if (range.length)
  {
    if ((~signature & 0x48) != 0)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    v5 = signature & 1;
    if ((signature & 0x40) != 0)
    {
      v5 = 2;
    }

    if ((signature & 8) == 0)
    {
      v4 = v5;
    }

    if (*(self->_impl + 1))
    {
      v6 = v4 | 8;
      do
      {
        impl = self->_impl;
        if (impl[1])
        {
          v8 = *(*impl + 848);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = v8;
          if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
          {
            rangeCopy = range;
            selfCopy = self;
            dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
            range = rangeCopy;
            self = selfCopy;
          }

          *(impl[3] + 4 * LODWORD(range.location)) = (v6 + *(*(v8 + 6288) + 184)) & 0xFFFFFFF | 0x80000000;
        }

        ++range.location;
        --range.length;
      }

      while (range.length);
    }
  }
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index
{
  impl = self->_impl;
  if (impl[1])
  {
    if ((~signature & 0x48) != 0)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    v6 = signature & 1;
    if ((signature & 0x40) != 0)
    {
      v6 = 2;
    }

    if ((signature & 8) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    v8 = *(*impl + 848);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v8;
    if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
    {
      indexCopy = index;
      dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
      LODWORD(index) = indexCopy;
    }

    *(impl[3] + 4 * index) = (*(*(v8 + 6288) + 184) + v7 + 8) & 0xFFFFFFF | 0x80000000;
  }
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range
{
  if (range.length)
  {
    if ((~signature & 0x48) != 0)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    v5 = signature & 1;
    if ((signature & 0x40) != 0)
    {
      v5 = 2;
    }

    if ((signature & 8) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    if (*(self->_impl + 1))
    {
      do
      {
        impl = self->_impl;
        if (impl[1])
        {
          v8 = *(*impl + 848);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = v8;
          if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
          {
            rangeCopy = range;
            selfCopy = self;
            dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
            range = rangeCopy;
            self = selfCopy;
          }

          *(impl[3] + 4 * LODWORD(range.location)) = (*(*(v8 + 6288) + 184) + v6) & 0xFFFFFFF | 0x80000000;
        }

        ++range.location;
        --range.length;
      }

      while (range.length);
    }
  }
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index
{
  impl = self->_impl;
  if (impl[1])
  {
    if ((~signature & 0x48) != 0)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    v6 = signature & 1;
    if ((signature & 0x40) != 0)
    {
      v6 = 2;
    }

    if ((signature & 8) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    v8 = *(*impl + 848);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v8;
    if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
    {
      indexCopy = index;
      dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
      LODWORD(index) = indexCopy;
    }

    *(impl[3] + 4 * index) = (*(*(v8 + 6288) + 184) + v7) & 0xFFFFFFF | 0x80000000;
  }
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      if (location <= 0x1E)
      {
        resourceIndex = *tables;
        impl = self->_impl;
        if (*tables)
        {
          resourceIndex = [resourceIndex resourceIndex];
        }

        *(impl[6] + 8 * location) = resourceIndex;
      }

      ++location;
      ++tables;
      --length;
    }

    while (length);
  }
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (index <= 0x1E)
  {
    impl = self->_impl;
    indexCopy = index;
    if (table)
    {
      resourceIndex = [table resourceIndex];
    }

    else
    {
      resourceIndex = 0;
    }

    *(impl[6] + 8 * indexCopy) = resourceIndex;
  }
}

- (void)setFunctions:(const void *)functions withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *functions++;
      AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setFunction(self->_impl, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    impl = self->_impl;
    v6 = MEMORY[0x29EDC5638];
    do
    {
      v9 = *offsets++;
      v8 = v9;
      if (LODWORD(range.location) <= 0x1E)
      {
        if (*buffers)
        {
          v7 = *(*buffers + *v6 + 8) + v8;
        }

        else
        {
          v7 = 291945216;
        }

        *(impl[6] + 8 * LODWORD(range.location)) = v7;
      }

      ++LODWORD(range.location);
      ++buffers;
      --range.length;
    }

    while (range.length);
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (index <= 0x1E)
  {
    if (buffer)
    {
      v5 = *(buffer + *MEMORY[0x29EDC5638] + 8) + offset;
    }

    else
    {
      v5 = 291945216;
    }

    *(*(self->_impl + 6) + 8 * index) = v5;
  }
}

- (void)dealloc
{
  pipelineState = self->_pipelineState;
  if (pipelineState)
  {
    if (self->_stage)
    {
      v4 = pipelineState[424];
      os_unfair_lock_lock(v4);
      resourceIndex = [(AGXG18PFamilyUserIntersectionFunctionTable *)self resourceIndex];
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
      v4 = pipelineState[85];
      os_unfair_lock_lock(v4);
      resourceIndex2 = [(AGXG18PFamilyUserIntersectionFunctionTable *)self resourceIndex];
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
                    if (v32 == 1)
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

    self->_pipelineState = 0;
  }

  impl = self->_impl;
  if (impl)
  {
    if (*(impl + 28) && (*(impl + 128) & 1) == 0)
    {
      v24 = *(impl + 15);
      os_unfair_lock_lock(v24 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(impl + 15) + 696, *(impl + 28), *(impl + 28) + *(impl + 29) - 1);
      os_unfair_lock_unlock(v24 + 188);
    }

    v25 = *(impl + 11);
    if (v25)
    {
      *(impl + 12) = v25;
      operator delete(v25);
    }

    v26 = *(impl + 8);
    if (v26)
    {
      v27 = *(impl + 9);
      v28 = *(impl + 8);
      if (v27 != v26)
      {
        do
        {
          v29 = *(v27 - 8);
          if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v29->__on_zero_shared)(v29, a2);
            std::__shared_weak_count::__release_weak(v29);
          }

          v27 -= 16;
        }

        while (v27 != v26);
        v28 = *(impl + 8);
      }

      *(impl + 9) = v26;
      operator delete(v28);
    }

    MEMORY[0x29ED520D0](impl, 0x10B0C408B6469EFLL);
  }

  self->_impl = 0;
  v30.receiver = self;
  v30.super_class = AGXG18PFamilyUserIntersectionFunctionTable;
  [(IOGPUMetalIntersectionFunctionTable *)&v30 dealloc];
}

- (id)clone:(id)clone cloneTableHeap:(void *)heap slProgramsTracker:(void *)tracker
{
  v9 = [AGXG18PFamilyUserIntersectionFunctionTable alloc];

  return [(AGXG18PFamilyUserIntersectionFunctionTable *)v9 initWithDevice:clone originalTable:self cloneTableHeap:heap slProgramsTracker:tracker];
}

- (AGXG18PFamilyUserIntersectionFunctionTable)initWithDevice:(id)device numTableFnSlots:(int)slots pipelineSets:(const void *)sets pipeline:(id)pipeline stage:(int)stage resourceIndex:(unsigned int)index
{
  self->_stage = stage;
  self->_pipelineState = pipeline;
  operator new();
}

@end