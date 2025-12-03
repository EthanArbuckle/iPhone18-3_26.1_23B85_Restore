@interface AGXG18PFamilySampledComputeContext_mtlnext
- (AGXG18PFamilySampledComputeContext_mtlnext)initWithCommandBuffer:(id)buffer allocator:(id)allocator programInfoBuffer:(id *)infoBuffer capacity:(unint64_t)capacity;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)dealloc;
- (void)destroyImpl;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
@end

@implementation AGXG18PFamilySampledComputeContext_mtlnext

- (id)endEncodingAndRetrieveProgramAddressTable
{
  v4.receiver = self;
  v4.super_class = AGXG18PFamilySampledComputeContext_mtlnext;
  [(AGXG18PFamilyComputeContext_mtlnext *)&v4 endEncoding];
  return [objc_alloc(MEMORY[0x29EDBB730]) initWithEncoderMappings:*(self->_sampled_impl + 1) perInvocationMappings:*self->_sampled_impl internalMappings:*(self->_sampled_impl + 2)];
}

- (void)destroyImpl
{
  if (self->super._impl)
  {
    sampled_impl = self->_sampled_impl;
    if (sampled_impl)
    {
      if (*(sampled_impl + 56) == 1)
      {
        v3 = sampled_impl[6];
        if (WORD2(*(v3 + 5696)) | HIWORD(*(v3 + 5696)))
        {
          if ((*(sampled_impl + 58) & 1) == 0)
          {
            v4 = *(*(v3 + 1872) + 848);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0l;
            block[4] = v4;
            if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
            {
              dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
            }

            AGX::DriverIntersectionFunctionTableBase<AGX::DriverIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>,AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables();
          }
        }
      }
    }
  }

  v5.receiver = self;
  v5.super_class = AGXG18PFamilySampledComputeContext_mtlnext;
  [(AGXG18PFamilyComputeContext_mtlnext *)&v5 destroyImpl];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  if (threadgroup->var1 * threadgroup->var0 * threadgroup->var2 <= *(*(self->super._impl + 292) + 456))
  {
    sampled_impl = self->_sampled_impl;
    v12 = *threads;
    v11 = *threadgroup;
    AGX::SampledComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::duplicateShaderAddresses(sampled_impl);
    v5 = sampled_impl[6];
    *(v5 + 2060) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(v5, 22, &v12, &v11);
    if (*(sampled_impl + 56) == 1)
    {
      v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v7 = sampled_impl[6];
      v8 = sampled_impl[2];
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v7 + 2336), v6);
      v9 = *(v7 + 2072);
      if (v9)
      {
        AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v9, v6, v8);
        *(*(v7 + 2072) + 8) = 0;
      }

      v10 = *sampled_impl;

      [v10 addObject:v6];
    }
  }
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer
{
  sampled_impl = self->_sampled_impl;
  AGX::SampledComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::duplicateShaderAddresses(sampled_impl);
  v5 = sampled_impl[6];
  *(v5 + 2060) |= 1u;
  v6 = *(v5 + 2336);
  if (*(v5 + 2292) == 1 && *(v5 + 4976) || (*(v5 + 5600) & 1) != 0 || (v7 = *(v6 + 16), *(v7 + 4088) != 1) || (*(v6 + 346) & 1) != 0 || *(v7 + 3916) || *(v7 + 3912))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelWithImprovedIndirectCommon(v5, buffer);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeIndirectKernelWithThreadgroupOptimization(v5, buffer, 1, v13);
  }

  if (*(sampled_impl + 56) == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v9 = sampled_impl[6];
    v10 = sampled_impl[2];
    AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v9 + 2336), v8);
    v11 = *(v9 + 2072);
    if (v11)
    {
      AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v11, v8, v10);
      *(*(v9 + 2072) + 8) = 0;
    }

    v12 = *sampled_impl;

    [v12 addObject:v8];
  }
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup
{
  if (threadgroup->var1 * threadgroup->var0 * threadgroup->var2 <= *(*(self->super._impl + 292) + 456))
  {
    sampled_impl = self->_sampled_impl;
    v12 = *threadgroup;
    AGX::SampledComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::duplicateShaderAddresses(sampled_impl);
    v6 = sampled_impl[6];
    *(v6 + 2060) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadgroupsIndirectInternal(v6, buffer, &v12);
    if (*(sampled_impl + 56) == 1)
    {
      v7 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v8 = sampled_impl[6];
      v9 = sampled_impl[2];
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v8 + 2336), v7);
      v10 = *(v8 + 2072);
      if (v10)
      {
        AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v10, v7, v9);
        *(*(v8 + 2072) + 8) = 0;
      }

      v11 = *sampled_impl;

      [v11 addObject:v7];
    }
  }
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  v4 = *(self->_sampled_impl + 6);
  *(v4 + 2060) |= 1u;
  v5 = 0;
  indirectBufferCopy = indirectBuffer;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeCommandsInBufferCommon(v4, buffer, &v5);
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  v4 = *(self->_sampled_impl + 6);
  *(v4 + 2060) |= 1u;
  if (LODWORD(range.length))
  {
    v5[0] = 1;
    v5[2] = range.location;
    v5[3] = LODWORD(range.location) + LODWORD(range.length) - 1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeCommandsInBufferCommon(v4, buffer, v5);
  }
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  if (threadgroup->var1 * threadgroup->var0 * threadgroup->var2 <= *(*(self->super._impl + 292) + 456))
  {
    sampled_impl = self->_sampled_impl;
    v12 = *threadgroup;
    v11 = *threadgroups;
    AGX::SampledComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::duplicateShaderAddresses(sampled_impl);
    v5 = sampled_impl[6];
    *(v5 + 2060) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelCommonImpl(v5, &v12, &v11);
    if (*(sampled_impl + 56) == 1)
    {
      v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v7 = sampled_impl[6];
      v8 = sampled_impl[2];
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v7 + 2336), v6);
      v9 = *(v7 + 2072);
      if (v9)
      {
        AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v9, v6, v8);
        *(*(v7 + 2072) + 8) = 0;
      }

      v10 = *sampled_impl;

      [v10 addObject:v6];
    }
  }
}

- (void)dealloc
{
  sampled_impl = self->_sampled_impl;
  if (sampled_impl)
  {

    free(self->_sampled_impl);
    self->_sampled_impl = 0;
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilySampledComputeContext_mtlnext;
  [(AGXG18PFamilyComputeContext_mtlnext *)&v4 dealloc];
}

- (AGXG18PFamilySampledComputeContext_mtlnext)initWithCommandBuffer:(id)buffer allocator:(id)allocator programInfoBuffer:(id *)infoBuffer capacity:(unint64_t)capacity
{
  capacityCopy = capacity;
  v20.receiver = self;
  v20.super_class = AGXG18PFamilySampledComputeContext_mtlnext;
  v8 = [(AGXG18PFamilyComputeContext_mtlnext *)&v20 initWithCommandBuffer:buffer allocator:allocator enableStateLoaderProgramTracking:1];
  if (v8)
  {
    v9 = malloc_type_calloc(0x40uLL, 1uLL, 0x10A0040E2B80A0DuLL);
    v10 = v9;
    v8->_sampled_impl = v9;
    impl = v8->super._impl;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = infoBuffer;
    *(v9 + 9) = 0;
    *(v9 + 10) = 0;
    *(v9 + 8) = capacityCopy;
    v9[6] = impl;
    *(v9 + 28) = 1;
    *(v9 + 58) = 0;
    v12 = *(impl[234] + 848) + 0x4000;
    if (*(*(impl[234] + 848) + 16624))
    {
      goto LABEL_8;
    }

    do
    {
      v13 = *(v12 + 244);
      if (v13 == -2)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13 + 1;
      }

      v15 = *(v12 + 244);
      atomic_compare_exchange_strong((v12 + 244), &v15, v14);
    }

    while (v15 != v13);
    *(impl + 481) = v13;
    *(impl + 1928) = 1;
    if (v9[7])
    {
LABEL_8:
      *v9 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v10[2] = objc_alloc_init(MEMORY[0x29EDB8E00]);
      v16 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v10[1] = v16;
      if (*(v10 + 56) == 1)
      {
        AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables(AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance, v16, v10[2]);
        if (v10[7])
        {
          v17 = v10[6];
          if (WORD2(*(v17 + 5696)) | HIWORD(*(v17 + 5696)))
          {
            if ((*(v10 + 58) & 1) == 0)
            {
              v18 = *(*(v17 + 1872) + 848);
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
              block[3] = &__block_descriptor_40_e5_v8__0l;
              block[4] = v18;
              if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
              {
                dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
              }

              AGX::DriverIntersectionFunctionTableBase<AGX::DriverIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>,AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables();
            }
          }
        }
      }
    }
  }

  return v8;
}

@end