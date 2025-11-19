@interface AGXG18PFamilyUserIntersectionFunctionTable
- (AGXG18PFamilyUserIntersectionFunctionTable)initWithDevice:(id)a3 numTableFnSlots:(int)a4 pipelineSets:(const void *)a5 pipeline:(id)a6 stage:(int)a7 resourceIndex:(unsigned int)a8;
- (id)clone:(id)a3 cloneTableHeap:(void *)a4 slProgramsTracker:(void *)a5;
- (unint64_t)bufferAddressAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
@end

@implementation AGXG18PFamilyUserIntersectionFunctionTable

- (unint64_t)bufferAddressAtIndex:(unint64_t)a3
{
  result = *(*(self->_impl + 6) + 8 * a3);
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

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    if ((~a3 & 0x48) != 0)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    v5 = a3 & 1;
    if ((a3 & 0x40) != 0)
    {
      v5 = 2;
    }

    if ((a3 & 8) == 0)
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
            v9 = a4;
            v10 = self;
            dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
            a4 = v9;
            self = v10;
          }

          *(impl[3] + 4 * LODWORD(a4.location)) = (v6 + *(*(v8 + 6288) + 184)) & 0xFFFFFFF | 0x80000000;
        }

        ++a4.location;
        --a4.length;
      }

      while (a4.length);
    }
  }
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  if (impl[1])
  {
    if ((~a3 & 0x48) != 0)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    v6 = a3 & 1;
    if ((a3 & 0x40) != 0)
    {
      v6 = 2;
    }

    if ((a3 & 8) != 0)
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
      v9 = a4;
      dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
      LODWORD(a4) = v9;
    }

    *(impl[3] + 4 * a4) = (*(*(v8 + 6288) + 184) + v7 + 8) & 0xFFFFFFF | 0x80000000;
  }
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    if ((~a3 & 0x48) != 0)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    v5 = a3 & 1;
    if ((a3 & 0x40) != 0)
    {
      v5 = 2;
    }

    if ((a3 & 8) != 0)
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
            v9 = a4;
            v10 = self;
            dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
            a4 = v9;
            self = v10;
          }

          *(impl[3] + 4 * LODWORD(a4.location)) = (*(*(v8 + 6288) + 184) + v6) & 0xFFFFFFF | 0x80000000;
        }

        ++a4.location;
        --a4.length;
      }

      while (a4.length);
    }
  }
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  if (impl[1])
  {
    if ((~a3 & 0x48) != 0)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    v6 = a3 & 1;
    if ((a3 & 0x40) != 0)
    {
      v6 = 2;
    }

    if ((a3 & 8) != 0)
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
      v9 = a4;
      dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
      LODWORD(a4) = v9;
    }

    *(impl[3] + 4 * a4) = (*(*(v8 + 6288) + 184) + v7) & 0xFFFFFFF | 0x80000000;
  }
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      if (location <= 0x1E)
      {
        v8 = *a3;
        impl = self->_impl;
        if (*a3)
        {
          v8 = [v8 resourceIndex];
        }

        *(impl[6] + 8 * location) = v8;
      }

      ++location;
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a4 <= 0x1E)
  {
    impl = self->_impl;
    v5 = a4;
    if (a3)
    {
      v6 = [a3 resourceIndex];
    }

    else
    {
      v6 = 0;
    }

    *(impl[6] + 8 * v5) = v6;
  }
}

- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setFunction(self->_impl, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    impl = self->_impl;
    v6 = MEMORY[0x29EDC5638];
    do
    {
      v9 = *a4++;
      v8 = v9;
      if (LODWORD(a5.location) <= 0x1E)
      {
        if (*a3)
        {
          v7 = *(*a3 + *v6 + 8) + v8;
        }

        else
        {
          v7 = 291945216;
        }

        *(impl[6] + 8 * LODWORD(a5.location)) = v7;
      }

      ++LODWORD(a5.location);
      ++a3;
      --a5.length;
    }

    while (a5.length);
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (a5 <= 0x1E)
  {
    if (a3)
    {
      v5 = *(a3 + *MEMORY[0x29EDC5638] + 8) + a4;
    }

    else
    {
      v5 = 291945216;
    }

    *(*(self->_impl + 6) + 8 * a5) = v5;
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
      v5 = [(AGXG18PFamilyUserIntersectionFunctionTable *)self resourceIndex];
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = vcnt_s8(v6);
        v7.i16[0] = vaddlv_u8(v7);
        if (v7.u32[0] > 1uLL)
        {
          v8 = v5;
          if (v5 >= *&v6)
          {
            v8 = v5 % *&v6;
          }
        }

        else
        {
          v8 = (*&v6 - 1) & v5;
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
                if (v17 == v5)
                {
                  if (v14[2] == v5)
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
              if (v16 == v5)
              {
                if (v14[2] == v5)
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
      v9 = [(AGXG18PFamilyUserIntersectionFunctionTable *)self resourceIndex];
      v10 = *(v4 + 16);
      if (v10)
      {
        v11 = vcnt_s8(v10);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.u32[0] > 1uLL)
        {
          v12 = v9;
          if (v9 >= *&v10)
          {
            v12 = v9 % *&v10;
          }
        }

        else
        {
          v12 = (*&v10 - 1) & v9;
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
                if (v21 == v9)
                {
                  if (v14[2] == v9)
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
              if (v20 == v9)
              {
                if (v14[2] == v9)
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

- (id)clone:(id)a3 cloneTableHeap:(void *)a4 slProgramsTracker:(void *)a5
{
  v9 = [AGXG18PFamilyUserIntersectionFunctionTable alloc];

  return [(AGXG18PFamilyUserIntersectionFunctionTable *)v9 initWithDevice:a3 originalTable:self cloneTableHeap:a4 slProgramsTracker:a5];
}

- (AGXG18PFamilyUserIntersectionFunctionTable)initWithDevice:(id)a3 numTableFnSlots:(int)a4 pipelineSets:(const void *)a5 pipeline:(id)a6 stage:(int)a7 resourceIndex:(unsigned int)a8
{
  self->_stage = a7;
  self->_pipelineState = a6;
  operator new();
}

@end