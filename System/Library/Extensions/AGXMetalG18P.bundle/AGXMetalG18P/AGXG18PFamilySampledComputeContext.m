@interface AGXG18PFamilySampledComputeContext
- (AGXG18PFamilySampledComputeContext)initWithCommandBuffer:(id)a3 config:(EncoderComputeServiceConfigA *)a4 programInfoBuffer:(id *)a5 capacity:(unint64_t)a6;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)reInitWithCommandBuffer:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
@end

@implementation AGXG18PFamilySampledComputeContext

- (id)endEncodingAndRetrieveProgramAddressTable
{
  sampled_impl = self->_sampled_impl;
  if (*(sampled_impl + 56) == 1)
  {
    v4 = sampled_impl[6];
    if (WORD2(*(v4 + 28344)) | HIWORD(*(v4 + 28344)))
    {
      if ((*(sampled_impl + 58) & 1) == 0)
      {
        v5 = *(*(v4 + 1872) + 848);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 3221225472;
        block[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = v5;
        if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
        {
          dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
        }

        AGX::DriverIntersectionFunctionTableBase<AGX::DriverIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>,AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables();
      }
    }
  }

  v7.receiver = self;
  v7.super_class = AGXG18PFamilySampledComputeContext;
  [(AGXG18PFamilyComputeContext *)&v7 endEncoding];
  return [objc_alloc(MEMORY[0x29EDBB730]) initWithEncoderMappings:*(self->_sampled_impl + 1) perInvocationMappings:*self->_sampled_impl internalMappings:*(self->_sampled_impl + 2)];
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  if (a4->var1 * a4->var0 * a4->var2 <= *(*(self->super._impl + 292) + 456))
  {
    sampled_impl = self->_sampled_impl;
    v12 = *a3;
    v11 = *a4;
    AGX::SampledComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::duplicateShaderAddresses(sampled_impl);
    v5 = sampled_impl[6];
    *(v5 + 2060) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v5, 0x16u, &v12, &v11);
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

- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
{
  sampled_impl = self->_sampled_impl;
  AGX::SampledComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::duplicateShaderAddresses(sampled_impl);
  v7 = sampled_impl[6];
  *(v7 + 2060) |= 1u;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectInternal(v7, a3, a4);
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

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5
{
  if (a5->var1 * a5->var0 * a5->var2 <= *(*(self->super._impl + 292) + 456))
  {
    sampled_impl = self->_sampled_impl;
    v14 = *a5;
    AGX::SampledComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::duplicateShaderAddresses(sampled_impl);
    v8 = sampled_impl[6];
    *(v8 + 2060) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadgroupsIndirectInternal(v8, a3, a4, &v14);
    if (*(sampled_impl + 56) == 1)
    {
      v9 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v10 = sampled_impl[6];
      v11 = sampled_impl[2];
      AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(*(v10 + 2336), v9);
      v12 = *(v10 + 2072);
      if (v12)
      {
        AGX::StateLoaderProgramsTracker<AGX::HAL300::Device>::appendProgramAddressTables(v12, v9, v11);
        *(*(v10 + 2072) + 8) = 0;
      }

      v13 = *sampled_impl;

      [v13 addObject:v9];
    }
  }
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  v4 = *(self->_sampled_impl + 6);
  *(v4 + 2060) |= 1u;
  if (LODWORD(a4.length))
  {
    v5[0] = 1;
    v5[2] = a4.location;
    v5[3] = LODWORD(a4.location) + LODWORD(a4.length) - 1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeCommandsInBufferCommon(v4, a3, v5);
  }
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  if (a4->var1 * a4->var0 * a4->var2 <= *(*(self->super._impl + 292) + 456))
  {
    sampled_impl = self->_sampled_impl;
    v12 = *a4;
    v11 = *a3;
    AGX::SampledComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::duplicateShaderAddresses(sampled_impl);
    v5 = sampled_impl[6];
    *(v5 + 2060) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v5, &v12, &v11);
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
  v4.super_class = AGXG18PFamilySampledComputeContext;
  [(AGXG18PFamilyComputeContext *)&v4 dealloc];
}

- (id)reInitWithCommandBuffer:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v5 = a5;
  v10.receiver = self;
  v10.super_class = AGXG18PFamilySampledComputeContext;
  [(AGXG18PFamilyComputeContext *)&v10 reInitWithCommandBuffer:a3];
  sampled_impl = self->_sampled_impl;
  sampled_impl[3] = a4;
  *(sampled_impl + 8) = v5;
  *(sampled_impl + 9) = 0;
  return self;
}

- (AGXG18PFamilySampledComputeContext)initWithCommandBuffer:(id)a3 config:(EncoderComputeServiceConfigA *)a4 programInfoBuffer:(id *)a5 capacity:(unint64_t)a6
{
  v6 = a6;
  v9 = *&a4->var7;
  v28 = *&a4->var4;
  v29 = v9;
  var10 = a4->var10;
  v10 = *&a4->var2;
  block = *&a4->var0;
  v27 = v10;
  v25.receiver = self;
  v25.super_class = AGXG18PFamilySampledComputeContext;
  v11 = [(AGXG18PFamilyComputeContext *)&v25 initWithCommandBuffer:a3 config:&block];
  if (!v11)
  {
    return v11;
  }

  v12 = malloc_type_calloc(0x40uLL, 1uLL, 0x10A0040E2B80A0DuLL);
  v13 = v12;
  v11->_sampled_impl = v12;
  impl = v11->super._impl;
  v15 = *(a3 + 760);
  v16 = *(a3 + 761);
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = a5;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0;
  *(v12 + 8) = v6;
  v12[6] = impl;
  *(v12 + 56) = v15;
  *(v12 + 57) = v16;
  *(v12 + 58) = 0;
  v17 = *(impl[234] + 848) + 0x4000;
  if (*(*(impl[234] + 848) + 16624))
  {
    if (!v15)
    {
      return v11;
    }

    goto LABEL_10;
  }

  do
  {
    v18 = *(v17 + 244);
    if (v18 == -2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18 + 1;
    }

    v20 = *(v17 + 244);
    atomic_compare_exchange_strong((v17 + 244), &v20, v19);
  }

  while (v20 != v18);
  *(impl + 481) = v18;
  *(impl + 1928) = 1;
  if (v12[7])
  {
LABEL_10:
    *v12 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v13[2] = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v21 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v13[1] = v21;
    if (*(v13 + 56) == 1)
    {
      AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables(AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance, v21, v13[2]);
      if (v13[7])
      {
        v22 = v13[6];
        if (WORD2(*(v22 + 28344)) | HIWORD(*(v22 + 28344)))
        {
          if ((*(v13 + 58) & 1) == 0)
          {
            v23 = *(*(v22 + 1872) + 848);
            *&block = MEMORY[0x29EDCA5F8];
            *(&block + 1) = 3221225472;
            *&v27 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
            *(&v27 + 1) = &__block_descriptor_40_e5_v8__0l;
            *&v28 = v23;
            if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
            {
              dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, &block);
            }

            AGX::DriverIntersectionFunctionTableBase<AGX::DriverIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>,AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables();
          }
        }
      }
    }
  }

  return v11;
}

@end