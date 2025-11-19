@interface AGXG18PFamilyCommandBuffer
- (AGXG18PFamilyCommandBuffer)initWithQueue:(id)a3 retainedReferences:(BOOL)a4;
- (BOOL)isBlitEncoderCoalescingDisabled;
- (BOOL)isComputeEncoderCoalescingDisabled;
- (BOOL)isEncoderCoalescingDisabled;
- (BOOL)tryCoalescingPreviousComputeCommandEncoderWithConfig:(EncoderComputeServiceConfigA *)a3 nextEncoderClass:(Class)a4;
- (id).cxx_construct;
- (id)_accelerationStructureCommandEncoderWithDescriptor:(id)a3;
- (id)blitCommandEncoderCommon:(id)a3;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithConfig:(EncoderComputeServiceConfigA *)a3;
- (id)computeCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3 substreamCount:(unsigned int)a4;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3;
- (id)renderCommandEncoderWithDescriptor:(id)a3;
- (id)resourceStateCommandEncoder;
- (id)resourceStateCommandEncoderWithDescriptor:(id)a3;
- (id)sampledComputeCommandEncoderWithConfig:(EncoderComputeServiceConfigA *)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledSubRenderCommandEncoderWithDescriptor:(id)a3 subEncoderIndex:(unint64_t)a4 framebuffer:(void *)a5 programInfoBuffer:(id *)a6 capacity:(unint64_t)a7;
- (id)subRenderCommandEncoderWithDescriptor:(id)a3 subEncoderIndex:(unint64_t)a4 framebuffer:(void *)a5;
- (void)commit;
- (void)commitEncoder;
- (void)commitWithDeadline:(unint64_t)a3;
- (void)dealloc;
- (void)dropResourceGroups:(const void *)a3 count:(unint64_t)a4;
- (void)encodeCacheHintFinalize:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5;
- (void)encodeCacheHintTag:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5;
- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 value:(unint64_t)a5 forIndex:(unint64_t)a6;
- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 values:(const unint64_t *)a5 indices:(const unint64_t *)a6 count:(unint64_t)a7;
- (void)encodeDashboardTagForResourceGroup:(id)a3;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4 agentMask:(unint64_t)a5;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4 timeout:(unsigned int)a5;
- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)a3 commandQueue:(id)a4;
- (void)getDriverEncoderInfoData:(id)a3;
- (void)gtpContinuePreParse;
- (void)reserveKernelCommandBufferSpace:(unint64_t)a3;
- (void)setResourceGroups:(const void *)a3 count:(unint64_t)a4;
@end

@implementation AGXG18PFamilyCommandBuffer

- (id).cxx_construct
{
  *(self + 88) = 0;
  *(self + 89) = 0;
  *(self + 93) = 0;
  *(self + 94) = 0;
  *(self + 92) = 0;
  return self;
}

- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)a3 commandQueue:(id)a4
{
  *&a3[1].var2 = [(AGXG18PFamilyCommandBuffer *)self deadline];
  a3[1].var0 = [(AGXG18PFamilyCommandBuffer *)self deadline_namespace_id];
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyCommandBuffer;
  [(IOGPUMetalCommandBuffer *)&v7 fillCommandBufferArgs:a3 commandQueue:a4];
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3 substreamCount:(unsigned int)a4
{
  v7 = [(IOGPUMetalCommandBuffer *)self device];
  impl = self->_impl;
  impl[20] = 1;
  v9 = *(impl + 4);
  v10 = [(IOGPUMetalCommandBuffer *)self protectionOptions];
  v11 = *(v7 + 106);
  v12 = a3 == 1 && (*(v11 + 16457) & 0x10) == 0;
  block = MEMORY[0x29EDCA5F8];
  v16 = 3221225472;
  v17 = ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
  v18 = &__block_descriptor_40_e5_v8__0l;
  v19 = v11 + 7008;
  if (AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
  {
    v14 = v10;
    dispatch_once(&AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
    v10 = v14;
  }

  block = v7;
  v16 = self;
  v17 = 0;
  LODWORD(v18) = v12;
  v19 = 0;
  v20 = v9;
  v21 = a4;
  v22 = 1;
  v23 = v10;
  v24 = 0;
  v25 = &AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  return [(AGXG18PFamilyCommandBuffer *)self computeCommandEncoderWithConfig:&block];
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 values:(const unint64_t *)a5 indices:(const unint64_t *)a6 count:(unint64_t)a7
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder:a3];
  if (a3)
  {
    impl = self->_impl;
    *(impl + ((*(a3 + 4) >> 3) & 0x1FF8) + 72) = (*(impl + ((*(a3 + 4) >> 3) & 0x1FF8) + 72) & ~(1 << *(a3 + 4)));
    v13 = [impl[1] reserveKernelCommandBufferSpace:48];
    *v13 = 0x3000010003;
    if (a7)
    {
      *(v13 + 8) = *a5;
      *(v13 + 40) = *a6;
      if (a7 != 1)
      {
        *(v13 + 16) = a5[1];
        *(v13 + 42) = a6[1];
        if (a7 > 2)
        {
          *(v13 + 24) = a5[2];
          *(v13 + 44) = a6[2];
          if (a7 == 3)
          {
            v14 = -1;
          }

          else
          {
            *(v13 + 32) = a5[3];
            v14 = *(a6 + 12);
          }

LABEL_12:
          *(v13 + 46) = v14;
          [impl[1] commandBufferStorage];
          IOGPUMetalCommandBufferStorageBeginKernelCommands();

          IOGPUMetalCommandBufferStorageEndKernelCommands();
          return;
        }

LABEL_11:
        v14 = -1;
        *(v13 + 44) = -1;
        goto LABEL_12;
      }
    }

    else
    {
      *(v13 + 40) = -1;
    }

    *(v13 + 42) = -1;
    goto LABEL_11;
  }
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)a3 dashboard:(unint64_t)a4 value:(unint64_t)a5 forIndex:(unint64_t)a6
{
  v6 = a6;
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder:a3];
  if (a3)
  {
    impl = self->_impl;
    *(impl + ((*(a3 + 4) >> 3) & 0x1FF8) + 72) = (*(impl + ((*(a3 + 4) >> 3) & 0x1FF8) + 72) & ~(1 << *(a3 + 4)));
    v11 = [impl[1] reserveKernelCommandBufferSpace:48];
    *v11 = 0x3000010003;
    *(v11 + 8) = a5;
    *(v11 + 40) = v6;
    *(v11 + 42) = -1;
    *(v11 + 46) = -1;
    [impl[1] commandBufferStorage];
    IOGPUMetalCommandBufferStorageBeginKernelCommands();

    IOGPUMetalCommandBufferStorageEndKernelCommands();
  }
}

- (void)encodeDashboardTagForResourceGroup:(id)a3
{
  if (a3)
  {
    impl = self->_impl;
    *(&impl[9] + ((*(a3 + 4) >> 3) & 0x1FF8)) |= 1 << *(a3 + 4);
    v4 = impl[8];
    if ((*(*&v4 + 480) & 1) == 0)
    {
      *(*&v4 + 480) = 1;
      prime = vcvtps_u32_f32(128.0 / *impl[7].i32);
      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
      }

      v6 = impl[4];
      if (prime > *&v6)
      {
        goto LABEL_9;
      }

      if (prime < *&v6)
      {
        v7 = vcvtps_u32_f32(impl[6] / *impl[7].i32);
        if (*&v6 < 3uLL || (v8 = vcnt_s8(v6), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
        {
          v10 = prime;
          v7 = std::__next_prime(v7);
          prime = v10;
        }

        else
        {
          v9 = 1 << -__clz(v7 - 1);
          if (v7 >= 2)
          {
            v7 = v9;
          }
        }

        if (prime <= v7)
        {
          prime = v7;
        }

        if (prime < *&v6)
        {
LABEL_9:

          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(&impl[3], prime);
        }
      }
    }
  }
}

- (void)encodeCacheHintFinalize:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  if (a5)
  {
    if (a3 == 1)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = a4[v9];
        if (v11)
        {
          impl = self->_impl;
          v13 = v11[4];
          v14 = (v13 >> 3) & 0x1FF8;
          *&impl[v14 + 72] &= ~(1 << v13);
          *&impl[v14 + 104] &= ~(1 << v13);
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(impl + 72)), vceqzq_s64(*(impl + 88)))))) & 1) == 0)
          {
            *(*(impl + 8) + 480) = 0;
          }

          v15 = [*(impl + 1) reserveKernelCommandBufferSpace:16];
          *v15 = 0x1000010002;
          *(v15 + 8) = v13;
          [*(impl + 1) commandBufferStorage];
          IOGPUMetalCommandBufferStorageBeginKernelCommands();
          IOGPUMetalCommandBufferStorageEndKernelCommands();
        }

        v9 = v10++;
      }

      while (v9 < a5);
    }

    else
    {
      v16 = 1;
      do
      {
        if (*a4)
        {
          v18 = self->_impl;
          v19 = *(*a4 + 4);
          v20 = 1 << v19;
          v21 = (v19 >> 3) & 0x1FF8;
          *&v18[v21 + 72] &= ~v20;
          *&v18[v21 + 136] &= ~v20;
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v18 + 72)), vceqzq_s64(*(v18 + 88)))))) & 1) == 0)
          {
            *(*(v18 + 8) + 480) = 0;
          }
        }

        v17 = v16;
        ++a4;
        ++v16;
      }

      while (v17 < a5);
    }
  }
}

- (void)encodeCacheHintTag:(unint64_t)a3 resourceGroups:(const void *)a4 count:(unint64_t)a5
{
  if (a5)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = a4[v9];
      if (v11)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setResourceGroup(self->_impl + 24, v11[4], a3 == 1);
      }

      v9 = v10++;
    }

    while (v9 < a5);
  }
}

- (void)setResourceGroups:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setResourceGroup(self->_impl + 24, *(a3[v7] + 4), 1);
      v7 = v8++;
    }

    while (v7 < a4);
  }
}

- (void)dropResourceGroups:(const void *)a3 count:(unint64_t)a4
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  if (a4)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      impl = self->_impl;
      v11 = *(a3[v7] + 4);
      v12 = (v11 >> 3) & 0x1FF8;
      *&impl[v12 + 72] &= ~(1 << v11);
      *&impl[v12 + 104] &= ~(1 << v11);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(impl + 72)), vceqzq_s64(*(impl + 88)))))) & 1) == 0)
      {
        *(*(impl + 8) + 480) = 0;
      }

      v9 = [*(impl + 1) reserveKernelCommandBufferSpace:16];
      *v9 = 0x1000010002;
      *(v9 + 8) = v11;
      [*(impl + 1) commandBufferStorage];
      IOGPUMetalCommandBufferStorageBeginKernelCommands();
      IOGPUMetalCommandBufferStorageEndKernelCommands();
      v7 = v8++;
    }

    while (v7 < a4);
  }
}

- (void)reserveKernelCommandBufferSpace:(unint64_t)a3
{
  v5 = [(IOGPUMetalCommandBuffer *)self commandBufferStorage];
  result = v5->var5;
  var6 = v5->var6;
  v8 = result;
  if (var6 - result < a3)
  {
    [(IOGPUMetalCommandBuffer *)self growKernelCommandBuffer:a3];
    [(IOGPUMetalCommandBuffer *)self getCurrentKernelCommandBufferPointer:&v8 end:&var6];
    result = v8;
  }

  v5->var5 = result + a3;
  return result;
}

- (void)commitEncoder
{
  previousBlitCommandEncoder = self->_previousBlitCommandEncoder;
  previousComputeCommandEncoder = self->_previousComputeCommandEncoder;
  previousRenderCommandEncoder = self->_previousRenderCommandEncoder;
  if (previousBlitCommandEncoder)
  {
    [(AGXG18PFamilyBlitContext *)previousBlitCommandEncoder deferredEndEncoding];

    self->_previousBlitCommandEncoder = 0;
  }

  if (previousComputeCommandEncoder)
  {
    [(AGXG18PFamilyComputeContext *)self->_previousComputeCommandEncoder deferredEndEncoding];

    self->_previousComputeCommandEncoder = 0;
  }

  if (previousRenderCommandEncoder)
  {
    [(AGXG18PFamilyRenderContext *)self->_previousRenderCommandEncoder deferredEndEncoding:0];

    self->_previousRenderCommandEncoder = 0;
  }
}

- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = [(IOGPUMetalCommandBuffer *)self device];
  impl = self->_impl;
  impl[20] = 1;
  v11 = *(impl + 4);
  v12 = [(IOGPUMetalCommandBuffer *)self protectionOptions];
  v13 = [a3 dispatchType] == 1 && (*(*(v9 + 106) + 16457) & 0x10) == 0;
  v14 = [a3 substreamCount];
  v15 = [a3 allowCommandEncoderCoalescing];
  v16 = *(v9 + 106) + 7008;
  block = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
  v22 = &__block_descriptor_40_e5_v8__0l;
  v23 = v16;
  if (AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
  {
    v18 = v15;
    dispatch_once(&AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
    v15 = v18;
  }

  block = v9;
  v20 = self;
  v21 = 0;
  LODWORD(v22) = v13;
  v23 = a3;
  v24 = v11;
  v25 = v14;
  v26 = v15;
  v27 = v12;
  v28 = 0;
  v29 = &AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  return [(AGXG18PFamilyCommandBuffer *)self sampledComputeCommandEncoderWithConfig:&block programInfoBuffer:a4 capacity:a5];
}

- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = [(IOGPUMetalCommandBuffer *)self device];
  impl = self->_impl;
  impl[20] = 1;
  v11 = *(impl + 4);
  v12 = [(IOGPUMetalCommandBuffer *)self protectionOptions];
  v13 = *(v9 + 106);
  v14 = a3 == 1 && (*(v13 + 16457) & 0x10) == 0;
  block = MEMORY[0x29EDCA5F8];
  v18 = 3221225472;
  v19 = ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
  v20 = &__block_descriptor_40_e5_v8__0l;
  v21 = v13 + 7008;
  if (AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
  {
    v16 = v12;
    dispatch_once(&AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
    v12 = v16;
  }

  block = v9;
  v18 = self;
  v19 = 0;
  LODWORD(v20) = v14;
  v21 = 0;
  v22 = v11;
  v23 = 0;
  v24 = 1;
  v25 = v12;
  v26 = 0;
  v27 = &AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  return [(AGXG18PFamilyCommandBuffer *)self sampledComputeCommandEncoderWithConfig:&block programInfoBuffer:a4 capacity:a5];
}

- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4
{
  impl = self->_impl;
  impl[20] = 1;
  v8 = *(impl + 4);
  v9 = [(IOGPUMetalCommandBuffer *)self protectionOptions];
  v10 = [(IOGPUMetalCommandBuffer *)self device];
  v11 = *(v10 + 106) + 7008;
  block = MEMORY[0x29EDCA5F8];
  v15 = 3221225472;
  v16 = ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
  v17 = &__block_descriptor_40_e5_v8__0l;
  v18 = v11;
  if (AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
  {
    v13 = v10;
    dispatch_once(&AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
    v10 = v13;
  }

  block = v10;
  v15 = self;
  v16 = 0;
  LODWORD(v17) = 0;
  v18 = 0;
  v19 = v8;
  v20 = 0;
  v21 = 0;
  v22 = v9;
  v23 = 0;
  v24 = &AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  return [(AGXG18PFamilyCommandBuffer *)self sampledComputeCommandEncoderWithConfig:&block programInfoBuffer:a3 capacity:a4];
}

- (id)sampledComputeCommandEncoderWithConfig:(EncoderComputeServiceConfigA *)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = *([(IOGPUMetalCommandBuffer *)self device]+ 848);
  if ((*(v9 + 16624) & 1) == 0 && !*(v9 + 16616))
  {
    MTLReportFailure();
  }

  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  if (self->_captureProgramAddressTable)
  {
    a3->var9 = 1;
  }

  v10 = *&a3->var7;
  v19 = *&a3->var4;
  v20 = v10;
  var10 = a3->var10;
  v11 = *&a3->var2;
  v17 = *&a3->var0;
  v18 = v11;
  if ([(AGXG18PFamilyCommandBuffer *)self tryCoalescingPreviousComputeCommandEncoderWithConfig:&v17 nextEncoderClass:objc_opt_class()])
  {
    v12 = [(AGXG18PFamilyComputeContext *)self->_previousComputeCommandEncoder reInitWithCommandBuffer:self programInfoBuffer:a4 capacity:a5, v17, v18, v19, v20, var10];
  }

  else
  {
    [(AGXG18PFamilyCommandBuffer *)self commitEncoder:v17];
    v13 = [AGXG18PFamilySampledComputeContext alloc];
    v14 = *&a3->var7;
    v19 = *&a3->var4;
    v20 = v14;
    var10 = a3->var10;
    v15 = *&a3->var2;
    v17 = *&a3->var0;
    v18 = v15;
    v12 = [(AGXG18PFamilySampledComputeContext *)v13 initWithCommandBuffer:self config:&v17 programInfoBuffer:a4 capacity:a5];
  }

  return v12;
}

- (id)sampledSubRenderCommandEncoderWithDescriptor:(id)a3 subEncoderIndex:(unint64_t)a4 framebuffer:(void *)a5 programInfoBuffer:(id *)a6 capacity:(unint64_t)a7
{
  v13 = *([(IOGPUMetalCommandBuffer *)self device]+ 848);
  if ((*(v13 + 16624) & 1) == 0 && !*(v13 + 16616))
  {
    MTLReportFailure();
  }

  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  v14 = [[AGXG18PFamilySampledRenderContext alloc] initWithCommandBuffer:self descriptor:a3 subEncoderIndex:a4 framebuffer:a5 programInfoBuffer:a6 capacity:a7];

  return v14;
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = *([(IOGPUMetalCommandBuffer *)self device]+ 848);
  if ((*(v9 + 16624) & 1) == 0 && !*(v9 + 16616))
  {
    MTLReportFailure();
  }

  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  v10 = [[AGXG18PFamilySampledRenderContext alloc] initWithCommandBuffer:self descriptor:a3 subEncoderIndex:0 framebuffer:0 programInfoBuffer:a4 capacity:a5];

  return v10;
}

- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  v5 = [[AGXG18PFamilyThreadedRenderPass alloc] initWithCommandBuffer:self renderPassDescriptor:a3];

  return v5;
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4 agentMask:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyCommandBuffer;
  [(IOGPUMetalCommandBuffer *)&v7 encodeSignalEvent:a3 value:a4 agentMask:a5];
  [a3 _encodeIOGPUKernelSignalEventAgentCommandArgs:v6 value:0 agentMask:0];
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyCommandBuffer;
  [(IOGPUMetalCommandBuffer *)&v6 encodeSignalEvent:a3 value:a4];
  [a3 _encodeIOGPUKernelSignalEventCommandArgs:&v5 value:0];
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4 timeout:(unsigned int)a5
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyCommandBuffer;
  [(IOGPUMetalCommandBuffer *)&v7 encodeWaitForEvent:a3 value:a4 timeout:*&a5];
  [a3 _encodeIOGPUKernelWaitEventCommandArgs:&v6 value:0 timeout:0];
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyCommandBuffer;
  [(IOGPUMetalCommandBuffer *)&v6 encodeWaitForEvent:a3 value:a4];
  [a3 _encodeIOGPUKernelWaitEventCommandArgs:&v5 value:0 timeout:0];
}

- (id)computeCommandEncoderWithDescriptor:(id)a3
{
  v5 = [(IOGPUMetalCommandBuffer *)self device];
  impl = self->_impl;
  impl[20] = 1;
  v7 = *(impl + 4);
  v8 = [(IOGPUMetalCommandBuffer *)self protectionOptions];
  v9 = [a3 dispatchType] == 1 && (*(*(v5 + 106) + 16457) & 0x10) == 0;
  v10 = [a3 substreamCount];
  v11 = [a3 allowCommandEncoderCoalescing];
  v12 = *(v5 + 106) + 7008;
  block = MEMORY[0x29EDCA5F8];
  v16 = 3221225472;
  v17 = ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
  v18 = &__block_descriptor_40_e5_v8__0l;
  v19 = v12;
  if (AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
  {
    v14 = v11;
    dispatch_once(&AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
    v11 = v14;
  }

  block = v5;
  v16 = self;
  v17 = 0;
  LODWORD(v18) = v9;
  v19 = a3;
  v20 = v7;
  v21 = v10;
  v22 = v11;
  v23 = v8;
  v24 = 0;
  v25 = &AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  return [(AGXG18PFamilyCommandBuffer *)self computeCommandEncoderWithConfig:&block];
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3
{
  v5 = [(IOGPUMetalCommandBuffer *)self device];
  impl = self->_impl;
  impl[20] = 1;
  v7 = *(impl + 4);
  v8 = [(IOGPUMetalCommandBuffer *)self protectionOptions];
  v9 = *(v5 + 106);
  v10 = a3 == 1 && (*(v9 + 16457) & 0x10) == 0;
  block = MEMORY[0x29EDCA5F8];
  v14 = 3221225472;
  v15 = ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
  v16 = &__block_descriptor_40_e5_v8__0l;
  v17 = v9 + 7008;
  if (AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
  {
    v12 = v8;
    dispatch_once(&AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
    v8 = v12;
  }

  block = v5;
  v14 = self;
  v15 = 0;
  LODWORD(v16) = v10;
  v17 = 0;
  v18 = v7;
  v19 = 0;
  v20 = 1;
  v21 = v8;
  v22 = 0;
  v23 = &AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  return [(AGXG18PFamilyCommandBuffer *)self computeCommandEncoderWithConfig:&block];
}

- (id)computeCommandEncoder
{
  impl = self->_impl;
  impl[20] = 1;
  v4 = *(impl + 4);
  v5 = [(IOGPUMetalCommandBuffer *)self protectionOptions];
  v6 = [(IOGPUMetalCommandBuffer *)self device];
  v7 = *(v6 + 106) + 7008;
  block = MEMORY[0x29EDCA5F8];
  v11 = 3221225472;
  v12 = ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke;
  v13 = &__block_descriptor_40_e5_v8__0l;
  v14 = v7;
  if (AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once != -1)
  {
    v9 = v6;
    dispatch_once(&AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&)::once, &block);
    v6 = v9;
  }

  block = v6;
  v11 = self;
  v12 = 0;
  LODWORD(v13) = 0;
  v14 = 0;
  v15 = v4;
  v16 = 0;
  v17 = 1;
  v18 = v5;
  v19 = 0;
  v20 = &AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  return [(AGXG18PFamilyCommandBuffer *)self computeCommandEncoderWithConfig:&block];
}

- (id)computeCommandEncoderWithConfig:(EncoderComputeServiceConfigA *)a3
{
  v5 = *&a3->var7;
  v14 = *&a3->var4;
  v15 = v5;
  var10 = a3->var10;
  v6 = *&a3->var2;
  v12 = *&a3->var0;
  v13 = v6;
  if ([(AGXG18PFamilyCommandBuffer *)self tryCoalescingPreviousComputeCommandEncoderWithConfig:&v12 nextEncoderClass:objc_opt_class()])
  {
    v7 = [(AGXG18PFamilyComputeContext *)self->_previousComputeCommandEncoder reInitWithCommandBuffer:self, v12, v13, v14, v15, var10];
  }

  else
  {
    [(AGXG18PFamilyCommandBuffer *)self commitEncoder:v12];
    v8 = [AGXG18PFamilyComputeContext alloc];
    v9 = *&a3->var7;
    v14 = *&a3->var4;
    v15 = v9;
    var10 = a3->var10;
    v10 = *&a3->var2;
    v12 = *&a3->var0;
    v13 = v10;
    v7 = [(AGXG18PFamilyComputeContext *)v8 initWithCommandBuffer:self config:&v12];
  }

  return v7;
}

- (BOOL)tryCoalescingPreviousComputeCommandEncoderWithConfig:(EncoderComputeServiceConfigA *)a3 nextEncoderClass:(Class)a4
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    v14 = a4;
    MTLReportFailure();
    a4 = v14;
  }

  previousComputeCommandEncoder = self->_previousComputeCommandEncoder;
  if (previousComputeCommandEncoder)
  {
    LODWORD(previousComputeCommandEncoder) = [(AGXG18PFamilyComputeContext *)previousComputeCommandEncoder isMemberOfClass:a4];
    if (previousComputeCommandEncoder)
    {
      {
        [AGXG18PFamilyCommandBuffer tryCoalescingPreviousComputeCommandEncoderWithConfig:nextEncoderClass:]::disableComputeEncoderRecycling = [(AGXG18PFamilyCommandBuffer *)self isComputeEncoderCoalescingDisabled];
      }

      {
        [AGXG18PFamilyCommandBuffer tryCoalescingPreviousComputeCommandEncoderWithConfig:nextEncoderClass:]::disableEncoderRecycling = [(AGXG18PFamilyCommandBuffer *)self isEncoderCoalescingDisabled];
      }

      impl = self->_previousComputeCommandEncoder->_impl;
      AGX::ComputeCounterSamplingContextGen1::ComputeCounterSamplingContextGen1(&v16, a3->var4);
      v8 = [(IOGPUMetalCommandBuffer *)self device];
      if (([AGXG18PFamilyCommandBuffer tryCoalescingPreviousComputeCommandEncoderWithConfig:nextEncoderClass:]::disableComputeEncoderRecycling & 1) != 0 || ([AGXG18PFamilyCommandBuffer tryCoalescingPreviousComputeCommandEncoderWithConfig:nextEncoderClass:]::disableEncoderRecycling & 1) != 0 || (*(impl + 2304) & 1) != 0 || *(impl + 6906))
      {
        goto LABEL_11;
      }

      v9 = *(impl + 3476);
      if (v9)
      {
        if (v9 != v16 && v16 != 0 || v17 != -1)
        {
          goto LABEL_11;
        }
      }

      else if (v17 != -1)
      {
        goto LABEL_11;
      }

      if (*(impl + 6955) == -1)
      {
        v12 = v8;
        if (([(MTLDevice *)v8 disableComputeEncoderCoalescing]& 1) == 0 && ([(MTLDevice *)v12 disableEncoderCoalescing]& 1) == 0 && a3->var7)
        {
          if (v16)
          {
            *(impl + 3476) = v16;
          }

          if (v17 != -1)
          {
            *(impl + 6954) = v17;
          }

          if (v18 != -1)
          {
            *(impl + 6955) = v18;
          }

          if (*(impl + 573) == 1 || *(impl + 6906) >= 2u)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertBarrierForCoalescingImpl(impl);
            *(impl + 14044) = 0;
            if (a3->var3 == 1 || a3->var6 >= 2)
            {
              v13 = *(impl + 3452);
              if (!v13)
              {
                operator new();
              }

              AGX::ComputeCoalescingResourceTracker<AGX::HAL300::Encoders,AGX::HAL300::Classes>::merge(v13);
            }
          }

          *(impl + 574) = *(impl + 573);
          *(impl + 575) = *(impl + 515);
          *(impl + 573) = a3->var3;
          LOBYTE(previousComputeCommandEncoder) = 1;
          return previousComputeCommandEncoder;
        }
      }

LABEL_11:
      LOBYTE(previousComputeCommandEncoder) = 0;
    }
  }

  return previousComputeCommandEncoder;
}

- (BOOL)isEncoderCoalescingDisabled
{
  v2 = *MEMORY[0x29EDB8FB0];
  v3 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSynchronize(@"com.apple.Metal", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8FA8]);
  v4 = CFPreferencesCopyValue(@"disableEncoderCoalescing", @"com.apple.Metal", v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFBooleanGetValue(v4) != 0;
  CFRelease(v5);
  return v6;
}

- (BOOL)isBlitEncoderCoalescingDisabled
{
  v2 = *MEMORY[0x29EDB8FB0];
  v3 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSynchronize(@"com.apple.Metal", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8FA8]);
  v4 = CFPreferencesCopyValue(@"disableBlitEncoderCoalescing", @"com.apple.Metal", v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFBooleanGetValue(v4) != 0;
  CFRelease(v5);
  return v6;
}

- (BOOL)isComputeEncoderCoalescingDisabled
{
  v2 = *MEMORY[0x29EDB8FB0];
  v3 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSynchronize(@"com.apple.Metal", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8FA8]);
  v4 = CFPreferencesCopyValue(@"disableComputeEncoderCoalescing", @"com.apple.Metal", v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFBooleanGetValue(v4) != 0;
  CFRelease(v5);
  return v6;
}

- (id)subRenderCommandEncoderWithDescriptor:(id)a3 subEncoderIndex:(unint64_t)a4 framebuffer:(void *)a5
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  v9 = [[AGXG18PFamilyRenderContext alloc] initWithCommandBuffer:self descriptor:a3 subEncoderIndex:a4 framebuffer:a5];

  return v9;
}

- (id)renderCommandEncoderWithDescriptor:(id)a3
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  previousRenderCommandEncoder = self->_previousRenderCommandEncoder;
  if (previousRenderCommandEncoder)
  {
    [(AGXG18PFamilyRenderContext *)previousRenderCommandEncoder deferredEndEncoding:a3];

    self->_previousRenderCommandEncoder = 0;
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  {
    [AGXG18PFamilyCommandBuffer renderCommandEncoderWithDescriptor:]::dcmp_check_mode = 0;
  }

  if ([AGXG18PFamilyCommandBuffer renderCommandEncoderWithDescriptor:]::dcmp_check_mode)
  {
    {
      [AGXG18PFamilyCommandBuffer renderCommandEncoderWithDescriptor:]::induce_corruption = 0;
    }

    for (i = 0; i != 8; ++i)
    {
      v12 = [AGXG18PFamilyCommandBuffer renderCommandEncoderWithDescriptor:]::dcmp_check_mode;
      if ([AGXG18PFamilyCommandBuffer renderCommandEncoderWithDescriptor:]::dcmp_check_mode == 1)
      {
        if ([objc_msgSend(objc_msgSend(a3 "colorAttachments")] && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a3, "colorAttachments"), "objectAtIndexedSubscript:", i), "texture"), "iosurface"))
        {
          if (![AGXG18PFamilyCommandBuffer renderCommandEncoderWithDescriptor:]::induce_corruption)
          {
            goto LABEL_13;
          }

          BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane([objc_msgSend(objc_msgSend(objc_msgSend(a3 "colorAttachments")], 0);
          goto LABEL_12;
        }

        v12 = [AGXG18PFamilyCommandBuffer renderCommandEncoderWithDescriptor:]::dcmp_check_mode;
      }

      if (v12 != 2 || ![objc_msgSend(objc_msgSend(a3 "colorAttachments")])
      {
        continue;
      }

      if (-[AGXG18PFamilyCommandBuffer renderCommandEncoderWithDescriptor:]::induce_corruption && AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(*([objc_msgSend(objc_msgSend(a3 "colorAttachments")] + 592), 0, 0, 0))
      {
        BaseAddressOfPlane = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(*([objc_msgSend(objc_msgSend(a3 "colorAttachments")] + 592), 0, 0, 0);
LABEL_12:
        v9 = BaseAddressOfPlane;
        v10 = getpagesize();
        memset(v9, 222, v10);
      }

LABEL_13:
      v11 = [objc_msgSend(objc_msgSend(a3 "colorAttachments")];
      v14 = [objc_msgSend(objc_msgSend(a3 "colorAttachments")];
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](&self->texturesToEvaluate, &v14);
    }
  }

  v6 = [[AGXG18PFamilyRenderContext alloc] initWithCommandBuffer:self descriptor:a3];

  return v6;
}

- (id)_accelerationStructureCommandEncoderWithDescriptor:(id)a3
{
  self->_telemetryUsage.usage[0] |= 0x80uLL;
  if (([(MTLDevice *)[(IOGPUMetalCommandBuffer *)self device] buildBVHForRIA]& 1) != 0)
  {
    if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
    {
      MTLReportFailure();
    }

    [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
    v5 = [[AGXG18PFamilyRayTracingGPUBuilder alloc] initWithCommandBuffer:self descriptor:a3];

    return v5;
  }

  else if (a3)
  {
    v7.receiver = self;
    v7.super_class = AGXG18PFamilyCommandBuffer;
    return [(_MTLCommandBuffer *)&v7 accelerationStructureCommandEncoderWithDescriptor:a3];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AGXG18PFamilyCommandBuffer;
    return [(_MTLCommandBuffer *)&v8 accelerationStructureCommandEncoder];
  }
}

- (id)resourceStateCommandEncoderWithDescriptor:(id)a3
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  v5 = [[AGXG18PFamilyResourceStateContext alloc] initWithCommandBuffer:self descriptor:a3];

  return v5;
}

- (id)resourceStateCommandEncoder
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  v3 = [[AGXG18PFamilyResourceStateContext alloc] initWithCommandBuffer:self descriptor:0];

  return v3;
}

- (id)blitCommandEncoderCommon:(id)a3
{
  if (*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB768]))
  {
    MTLReportFailure();
  }

  {
    [AGXG18PFamilyCommandBuffer blitCommandEncoderCommon:]::disableBlitEncoderRecycling = [(AGXG18PFamilyCommandBuffer *)self isBlitEncoderCoalescingDisabled];
  }

  {
    [AGXG18PFamilyCommandBuffer blitCommandEncoderCommon:]::disableEncoderRecycling = [(AGXG18PFamilyCommandBuffer *)self isEncoderCoalescingDisabled];
  }

  v5 = [(AGXG18PFamilyCommandBuffer *)self getSupportedAndEnabledErrorOptions];
  previousBlitCommandEncoder = self->_previousBlitCommandEncoder;
  if (previousBlitCommandEncoder)
  {
    impl = previousBlitCommandEncoder->_impl;
    v8 = impl == 0;
    if (impl)
    {
      v9 = impl;
    }

    else
    {
      v9 = 0;
    }

    if (impl)
    {
      v10 = impl + 224;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 1;
  }

  AGX::BlitCounterSamplingContextGen1::BlitCounterSamplingContextGen1(&v15, a3, 0);
  if ([AGXG18PFamilyCommandBuffer blitCommandEncoderCommon:]::disableBlitEncoderRecycling & 1) != 0 || ([AGXG18PFamilyCommandBuffer blitCommandEncoderCommon:]::disableEncoderRecycling & 1) != 0 || ([(MTLDevice *)[(IOGPUMetalCommandBuffer *)self device] disableBlitEncoderCoalescing]& 1) != 0 || ((v8 | [(MTLDevice *)[(IOGPUMetalCommandBuffer *)self device] disableEncoderCoalescing]))
  {
    goto LABEL_17;
  }

  v13 = *(v9 + 26);
  if (v13)
  {
    LOBYTE(v13) = *(v13 + 528) != 0;
  }

  if ((v13 & 1) != 0 || (v5 & 1) != 0 || !v10 || *v10 && (*v10 != v15 ? (v14 = v15 == 0) : (v14 = 1), !v14) || v16 != -1 || *(v10 + 3) != -1)
  {
LABEL_17:
    [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
    v11 = [[AGXG18PFamilyBlitContext alloc] initWithCommandBuffer:self descriptor:a3];
  }

  else
  {
    if (v15)
    {
      *v10 = v15;
    }

    if (v17 != -1)
    {
      *(v10 + 3) = v17;
    }

    v11 = [(AGXG18PFamilyBlitContext *)self->_previousBlitCommandEncoder reInitWithCommandBuffer:self];
  }

  return v11;
}

- (AGXG18PFamilyCommandBuffer)initWithQueue:(id)a3 retainedReferences:(BOOL)a4
{
  v16.receiver = self;
  v16.super_class = AGXG18PFamilyCommandBuffer;
  v5 = [(IOGPUMetalCommandBuffer *)&v16 initWithQueue:a3 retainedReferences:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [(_MTLCommandBuffer *)v5 commandQueue];
    v8 = [a3 device];
    v9 = v8[106];
    if (*(v9 + 15712) <= 0x23FuLL)
    {
      v6->_impl = 0;
    }

    else
    {
      os_unfair_lock_lock((v9 + 15724));
      v10 = *(v9 + 15720);
      if (v10)
      {
        v11 = v10 - 1;
        *(v9 + 15720) = v11;
        v12 = *(v9 + 8 * v11 + 15728);
        os_unfair_lock_unlock((v9 + 15724));
        if (v12)
        {
          bzero(v12, *(v9 + 15712));
          v6->_impl = v12;
          goto LABEL_8;
        }
      }

      else
      {
        os_unfair_lock_unlock((v9 + 15724));
      }

      v12 = malloc_type_calloc(*(v9 + 15712), 1uLL, 0x689CC946uLL);
      v6->_impl = v12;
      if (v12)
      {
LABEL_8:
        v13 = *(v7 + 972);
        v14 = v8[106];
        *v12 = 1;
        *(v12 + 1) = v6;
        *(v12 + 4) = v13;
        v12[20] = 0;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ResourceGroupUsage((v12 + 24), v14);
      }
    }

    [(AGXG18PFamilyCommandBuffer *)v6 commit];

    v6 = 0;
    [v8 alertCommandBufferActivityStart];
    MEMORY[0x300] = 0;
    MEMORY[0x2FC] = 0;
  }

  return v6;
}

- (void)getDriverEncoderInfoData:(id)a3
{
  v70 = *MEMORY[0x29EDCA608];
  impl = self->_impl;
  v59 = 0;
  v60 = &v59;
  v61 = 0x5812000000;
  v62 = __Block_byref_object_copy__3512;
  v63 = __Block_byref_object_dispose__3513;
  v64 = &unk_29D31B497;
  *v65 = 0u;
  *__p = 0u;
  v67 = 1065353216;
  v5 = impl[1];
  v55[0] = MEMORY[0x29EDCA5F8];
  v55[1] = 3221225472;
  v56 = ___ZNK3AGX13CommandBufferINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE39processDebugBufferAndUpdateEncoderInfosEP7NSArrayIPU38objcproto27MTLCommandBufferEncoderInfo11objc_objectE_block_invoke;
  v57 = &unk_29F341310;
  v58 = &v59;
  v68 = 0;
  *&v51 = 0;
  [v5 getDebugBufferPointerStart:&v68 end:&v51];
  if (v68 && v51 && (v51 - v68) >= 8)
  {
    (v56)(v55);
  }

  v6 = impl[68];
  i = impl[69];
LABEL_7:
  while (2)
  {
    if (v6 != i)
    {
      if (**v6)
      {
        v6 += 24;
        continue;
      }

      v8 = *(v6 + 16);
      v9 = v60;
      v10 = v60[7];
      if (!*&v10)
      {
        goto LABEL_29;
      }

      v11 = vcnt_s8(v10);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = *(v6 + 16);
        if (v8 >= *&v10)
        {
          v12 = v8 % *&v10;
        }
      }

      else
      {
        v12 = (*&v10 - 1) & v8;
      }

      v13 = v60[6];
      v14 = *(v13 + 8 * v12);
      if (!v14 || (v15 = *v14) == 0)
      {
LABEL_29:
        v19 = v6 + 24;
        do
        {
          v6 = v19;
          if (v19 == i)
          {
            break;
          }

          v20 = *(v19 + 16);
          v19 += 24;
        }

        while (v20 == v8);
        continue;
      }

      v16 = *&v10 - 1;
      if (v11.u32[0] < 2uLL)
      {
        while (1)
        {
          v17 = v15[1];
          if (v17 == v8)
          {
            if (v15[2] == v8)
            {
              goto LABEL_33;
            }
          }

          else if ((v17 & v16) != v12)
          {
            goto LABEL_29;
          }

          v15 = *v15;
          if (!v15)
          {
            goto LABEL_29;
          }
        }
      }

      while (1)
      {
        v18 = v15[1];
        if (v18 == v8)
        {
          if (v15[2] == v8)
          {
LABEL_33:
            if (v11.u32[0] > 1uLL)
            {
              v21 = *(v6 + 16);
              if (v8 >= *&v10)
              {
                v21 = v8 % *&v10;
              }
            }

            else
            {
              v21 = v16 & v8;
            }

            v22 = *(v15 + 24);
            v23 = *(v13 + 8 * v21);
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23 != v15);
            if (v24 == v60 + 8)
            {
              goto LABEL_50;
            }

            v25 = v24[1];
            if (v11.u32[0] > 1uLL)
            {
              if (v25 >= *&v10)
              {
                v25 %= *&v10;
              }
            }

            else
            {
              v25 &= v16;
            }

            if (v25 != v21)
            {
LABEL_50:
              if (!*v15)
              {
                goto LABEL_51;
              }

              v26 = *(*v15 + 8);
              if (v11.u32[0] > 1uLL)
              {
                if (v26 >= *&v10)
                {
                  v26 %= *&v10;
                }
              }

              else
              {
                v26 &= v16;
              }

              if (v26 != v21)
              {
LABEL_51:
                *(v13 + 8 * v21) = 0;
              }
            }

            v27 = *v15;
            if (*v15)
            {
              v28 = *(v27 + 8);
              if (v11.u32[0] > 1uLL)
              {
                if (v28 >= *&v10)
                {
                  v28 %= *&v10;
                }
              }

              else
              {
                v28 &= v16;
              }

              if (v28 != v21)
              {
                *(v13 + 8 * v28) = v24;
                v27 = *v15;
              }
            }

            *v24 = v27;
            *v15 = 0;
            --v9[9];
            operator delete(v15);
            v68 = *(v6 + 8);
            v69 = v22;
            std::__hash_table<std::__hash_value_type<unsigned long long,AGXSDebugBuffer::KickStatus>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGXSDebugBuffer::KickStatus>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGXSDebugBuffer::KickStatus>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGXSDebugBuffer::KickStatus>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,AGXSDebugBuffer::KickStatus>>(v60 + 6, v68);
            v6 += 24;
            for (i = impl[69]; v6 != i; v6 += 24)
            {
              if (*(v6 + 16) != v8)
              {
                break;
              }

              if (!**v6)
              {
                v68 = *(v6 + 8);
                v69 = 0;
                std::__hash_table<std::__hash_value_type<unsigned long long,AGXSDebugBuffer::KickStatus>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGXSDebugBuffer::KickStatus>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGXSDebugBuffer::KickStatus>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGXSDebugBuffer::KickStatus>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,AGXSDebugBuffer::KickStatus>>(v60 + 6, v68);
                i = impl[69];
              }
            }

            goto LABEL_7;
          }
        }

        else
        {
          if (v18 >= *&v10)
          {
            v18 %= *&v10;
          }

          if (v18 != v12)
          {
            goto LABEL_29;
          }
        }

        v15 = *v15;
        if (!v15)
        {
          goto LABEL_29;
        }
      }
    }

    break;
  }

  if (v60[9])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v29 = [a3 countByEnumeratingWithState:&v51 objects:&v68 count:16];
    if (!v29)
    {
      goto LABEL_106;
    }

    v30 = *v52;
    while (1)
    {
      v31 = 0;
      do
      {
        if (*v52 != v30)
        {
          objc_enumerationMutation(a3);
        }

        v32 = *(*(&v51 + 1) + 8 * v31);
        v33 = [v32 uniqueID];
        v34 = v60[7];
        if (!*&v34)
        {
          goto LABEL_91;
        }

        v35 = vcnt_s8(v34);
        v35.i16[0] = vaddlv_u8(v35);
        if (v35.u32[0] > 1uLL)
        {
          v36 = v33;
          if (v33 >= *&v34)
          {
            v36 = v33 % *&v34;
          }
        }

        else
        {
          v36 = (*&v34 - 1) & v33;
        }

        v37 = *(v60[6] + 8 * v36);
        if (!v37 || (v38 = *v37) == 0)
        {
LABEL_91:
          v42 = 1;
          goto LABEL_92;
        }

        if (v35.u32[0] < 2uLL)
        {
          v39 = *&v34 - 1;
          while (1)
          {
            v41 = v38[1];
            if (v41 == v33)
            {
              if (v38[2] == v33)
              {
                goto LABEL_94;
              }
            }

            else if ((v41 & v39) != v36)
            {
              goto LABEL_91;
            }

            v38 = *v38;
            if (!v38)
            {
              goto LABEL_91;
            }
          }
        }

        while (1)
        {
          v40 = v38[1];
          if (v40 == v33)
          {
            break;
          }

          if (v40 >= *&v34)
          {
            v40 %= *&v34;
          }

          if (v40 != v36)
          {
            goto LABEL_91;
          }

LABEL_81:
          v38 = *v38;
          if (!v38)
          {
            goto LABEL_91;
          }
        }

        if (v38[2] != v33)
        {
          goto LABEL_81;
        }

LABEL_94:
        v43 = *(v38 + 24);
        if (v43 >= 4)
        {
          v42 = 0;
        }

        else
        {
          v42 = qword_29D2F4568[v43];
        }

LABEL_92:
        [v32 setErrorState:v42];
        ++v31;
      }

      while (v31 != v29);
      v44 = [a3 countByEnumeratingWithState:&v51 objects:&v68 count:16];
      v29 = v44;
      if (!v44)
      {
        goto LABEL_106;
      }
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = [a3 countByEnumeratingWithState:&v51 objects:&v68 count:16];
  if (v45)
  {
    v46 = *v52;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v51 + 1) + 8 * j) setErrorState:1];
      }

      v45 = [a3 countByEnumeratingWithState:&v51 objects:&v68 count:16];
    }

    while (v45);
  }

LABEL_106:
  _Block_object_dispose(&v59, 8);
  v48 = __p[0];
  if (__p[0])
  {
    do
    {
      v49 = *v48;
      operator delete(v48);
      v48 = v49;
    }

    while (v49);
  }

  v50 = v65[0];
  v65[0] = 0;
  if (v50)
  {
    operator delete(v50);
  }
}

- (void)commitWithDeadline:(unint64_t)a3
{
  [(AGXG18PFamilyCommandBuffer *)self setDeadline:a3];
  [(AGXG18PFamilyCommandBuffer *)self setDeadline_namespace_id:*(self->_impl + 134)];

  [(AGXG18PFamilyCommandBuffer *)self commit];
}

- (void)commit
{
  v58 = *MEMORY[0x29EDCA608];
  v46.receiver = self;
  v46.super_class = AGXG18PFamilyCommandBuffer;
  [(IOGPUMetalCommandBuffer *)&v46 validate];
  v3 = [(IOGPUMetalCommandBuffer *)self device];
  v4 = [(_MTLCommandBuffer *)self commandQueue];
  v5 = v4;
  v6 = *(v4 + 111);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  atomic_fetch_or(v3 + 226, v6);
  v7 = self->_telemetryUsage.usage[1];
  atomic_fetch_or(v3 + 107, self->_telemetryUsage.usage[0]);
  atomic_fetch_or(v3 + 108, v7);
  if ((*(v4 + 968) & 1) == 0)
  {
    if (AGXATelemetry::shouldCaptureTelemetryData(void)::onceToken != -1)
    {
      dispatch_once(&AGXATelemetry::shouldCaptureTelemetryData(void)::onceToken, &__block_literal_global_10448);
    }

    if (AGXATelemetry::shouldCaptureTelemetryData(void)::shouldCapture == 1)
    {
      v8 = atomic_load(AGXATelemetry::backtracesCaptured);
      if (v8 <= 9)
      {
        v47 = MEMORY[0x29EDCA5F8];
        v48 = 3221225472;
        v49 = ___ZN13AGXATelemetry26telemetryEmitBacktraceInfoEPK26AGXATelemetryBacktraceInfo_block_invoke;
        v50 = &__block_descriptor_40_e5_v8__0l;
        v51 = v3 + 856;
        if (AGXATelemetry::telemetryEmitBacktraceInfo(AGXATelemetryBacktraceInfo const*)::onceToken != -1)
        {
          dispatch_once(&AGXATelemetry::telemetryEmitBacktraceInfo(AGXATelemetryBacktraceInfo const*)::onceToken, &v47);
        }

        v9 = malloc_type_malloc(0x208uLL, 0x1080040751F5E6CuLL);
        if (v9)
        {
          v10 = v9;
          memcpy(v9, v5 + 448, 0x208uLL);
          v11 = *(v3 + 116);
          block = MEMORY[0x29EDCA5F8];
          v53 = 3221225472;
          v54 = ___ZN13AGXATelemetry26telemetryEmitBacktraceInfoEPK26AGXATelemetryBacktraceInfo_block_invoke_2;
          v55 = &__block_descriptor_48_e5_v8__0l;
          v56 = v3 + 856;
          v57 = v10;
          dispatch_async(v11, &block);
        }

        *(v5 + 968) = 1;
      }
    }
  }

  impl = self->_impl;
  if (impl[20] == 1)
  {
    impl[20] = 1;
    v13 = *(impl + 4);
    v14 = *(v5 + 243);
    if (v13 != v14)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        impl[20] = 1;
        LODWORD(block) = 67109376;
        HIDWORD(block) = v13;
        LOWORD(v53) = 1024;
        *(&v53 + 2) = v14;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: MTLComputeEncoder encoded with priority %u, but MTLCommandQueue is currently set to priority %u, could result in suboptimal perf or higher than expected memory footprint!\n", &block, 0xEu);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        v28 = self->_impl;
        v28[20] = 1;
        LODWORD(v28) = *(v28 + 4);
        v29 = *(v5 + 243);
        LODWORD(block) = 67109376;
        HIDWORD(block) = v28;
        LOWORD(v53) = 1024;
        *(&v53 + 2) = v29;
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: MTLComputeEncoder encoded with priority %u, but MTLCommandQueue is currently set to priority %u, could result in suboptimal perf or higher than expected memory footprint!\n", &block, 0xEu);
      }
    }
  }

  {
    [AGXG18PFamilyCommandBuffer commit]::dcmp_check_mode = 0;
  }

  if ([AGXG18PFamilyCommandBuffer commit]::dcmp_check_mode && self->texturesToEvaluate.__begin_ != self->texturesToEvaluate.var0)
  {
    v41 = [(AGXG18PFamilyCommandBuffer *)self blitCommandEncoder];
    {
      [AGXG18PFamilyCommandBuffer commit]::dcmp_check_pixel_format = 0;
    }

    if (!v41)
    {
      abort();
    }

    begin = self->texturesToEvaluate.__begin_;
    var0 = self->texturesToEvaluate.var0;
    if (begin != var0)
    {
      v27 = [AGXG18PFamilyCommandBuffer commit]::dcmp_check_pixel_format;
      do
      {
        v30 = *begin;
        if (!v27 || [*begin pixelFormat] == v27)
        {
          if ([v30 pixelFormat] == 550 && objc_msgSend(v30, "iosurface"))
          {
            v31 = [MEMORY[0x29EDBB670] texture2DDescriptorWithPixelFormat:554 width:objc_msgSend(v30 height:"width") mipmapped:objc_msgSend(v30, "height"), 0];
            [v31 setUsage:{objc_msgSend(v30, "usage")}];
            [v31 setStorageMode:{objc_msgSend(v30, "storageMode")}];
            v32 = [objc_msgSend(v30 "device")];
            [v31 setPixelFormat:1];
            v33 = [objc_msgSend(v30 "device")];
            block = 0;
            v53 = 0;
            v54 = 0;
            v34 = [v30 width];
            v35 = [v30 height];
            v47 = v34;
            v48 = v35;
            v49 = 1;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            [v41 copyFromTexture:v32 sourceSlice:0 sourceLevel:0 sourceOrigin:&block sourceSize:&v47 toTexture:v32 destinationSlice:0 destinationLevel:0 destinationOrigin:&v43];
            block = 0;
            v53 = 0;
            v54 = 0;
            v36 = [v30 width];
            v37 = [v30 height];
            v47 = v36;
            v48 = v37;
            v49 = 1;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            [v41 copyFromTexture:v33 sourceSlice:0 sourceLevel:0 sourceOrigin:&block sourceSize:&v47 toTexture:v33 destinationSlice:0 destinationLevel:0 destinationOrigin:&v43];
          }

          else
          {
            block = 0;
            v53 = 0;
            v54 = 0;
            v38 = [v30 width];
            v39 = [v30 height];
            v47 = v38;
            v48 = v39;
            v49 = 1;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            [v41 copyFromTexture:v30 sourceSlice:0 sourceLevel:0 sourceOrigin:&block sourceSize:&v47 toTexture:v30 destinationSlice:0 destinationLevel:0 destinationOrigin:&v43];
          }
        }

        ++begin;
      }

      while (begin != var0);
    }

    [v41 endEncoding];
  }

  [(AGXG18PFamilyCommandBuffer *)self commitEncoder];
  if (([(AGXG18PFamilyCommandBuffer *)self getSupportedAndEnabledErrorOptions]& 1) != 0)
  {
    v15 = self->_impl;
    [v15[1] allocDebugBuffer];
    block = 0;
    v47 = 0;
    [v15[1] getDebugBufferPointerStart:&block end:&v47];
    v16 = [v15[1] commandBufferStorage];
    if (block)
    {
      if (v47)
      {
        v17 = v47 - block;
        if (v47 - block >= 1)
        {
          if (v18 = (16 * (((2 * *(v16 + 840)) >> 1) & 0x7FFFFFFF)) | 8, v18 > v17) && (([v15[1] growDebugBuffer:(v18 - v17)], objc_msgSend(v15[1], "getDebugBufferPointerStart:end:", &block, &v47), v17 = v47 - block, block) ? (v19 = v47 == 0) : (v19 = 1), !v19 ? (v20 = 0) : (v20 = 1), (v20) || v17 < v18)
          {
            AGX::CommandBuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::prepareDebugBufferForSubmission(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _debugBufferStart __ nullptr && debugBufferEnd __ nullptr && ptrDelta(debugBufferStart_ debugBufferEnd) __ static_cast_intptr_t_(requiredDebugBufferSize)_]();
          }
        }
      }
    }
  }

  v21 = *(*(v3 + 106) + 7224);
  if (v21)
  {
    AGX::InternalSparseQueue::flushAndSubmitAllMappings(v21);
  }

  v22 = self->_impl;
  v23 = *(v22 + 8);
  if (v23)
  {
    v24 = *(v22 + 22);
    os_unfair_lock_lock(v24 + 4027);
    os_unfair_lock_opaque = v24[4026]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque > 7)
    {
      os_unfair_lock_unlock(v24 + 4027);
      free(v23);
    }

    else
    {
      v24[4026]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
      *&v24[2 * os_unfair_lock_opaque + 4028]._os_unfair_lock_opaque = v23;
      os_unfair_lock_unlock(v24 + 4027);
    }
  }

  *(v22 + 8) = 0;
  [(AGXG18PFamilyCommandBuffer *)self gtpContinuePreParse];
  v42.receiver = self;
  v42.super_class = AGXG18PFamilyCommandBuffer;
  [(IOGPUMetalCommandBuffer *)&v42 commit];
}

- (void)gtpContinuePreParse
{
  {
  }

  v34 = 0;
  v35 = 0;
  v33 = 0;
  if ([(IOGPUMetalCommandBuffer *)self commandBufferStorage])
  {
    v3 = [(IOGPUMetalCommandBuffer *)self getCurrentKernelCommandBufferStart:&v35 current:&v33 end:&v34];
    v16 = v35;
    if (v35)
    {
      v17 = v33;
      if (v33)
      {
        if (v34 && v35 < v33)
        {
          v18 = 0;
          while (1)
          {
            v20 = *v16;
            if (*v16 >= 0x10000)
            {
              if (v20 - 65539 < 2)
              {
                goto LABEL_9;
              }

              if (v20 == 0x10000)
              {
                v19 = *(v16 + 168);
                if ((v19 - 2) < 4)
                {
                  goto LABEL_9;
                }

                if (v19 == 1)
                {
                  *(v16 + 805) = 0;
                  if ((*(v16 + 804) & 1) == 0)
                  {
                    goto LABEL_9;
                  }

                  v22 = *(v16 + 807);
                  if (v18 <= 0)
                  {
                    v6 = *(v16 + 808);
                    v3 = *(v16 + 809);
                    v4 = *(v16 + 810);
                    v5 = *(v16 + 811);
                    v7 = *(v16 + 812);
                    v8 = *(v16 + 813);
                    v9 = *(v16 + 814);
                    v14 = *(v16 + 815);
                    v13 = 1;
                    v11 = v16 + 200;
                    v15 = *(v16 + 823);
                    v12 = v16 + 200;
                    v10 = *(v16 + 807);
                  }

                  else
                  {
                    v23 = (v16 + 815);
                    v24 = (v16 + 823);
                    v25 = *(v16 + 808);
                    if (v22 != v10 || v25 != v6)
                    {
                      goto LABEL_53;
                    }

                    if (*(v16 + 809) != v3 || *(v16 + 810) != v4 || *(v16 + 811) != v5 || *(v16 + 812) != v7 || *(v16 + 813) != v8 || *(v16 + 814) != v9 || *v23 != v14 || __PAIR64__(*(v16 + 817), *(v16 + 816)) != __PAIR64__(BYTE2(v14), BYTE1(v14)) || __PAIR64__(*(v16 + 819), *(v16 + 818)) != __PAIR64__(BYTE4(v14), BYTE3(v14)) || __PAIR64__(*(v16 + 821), *(v16 + 820)) != __PAIR64__(BYTE6(v14), BYTE5(v14)) || *(v16 + 822) != HIBYTE(v14) || *v24 != v15 || __PAIR64__(*(v16 + 825), *(v16 + 824)) != __PAIR64__(BYTE2(v15), BYTE1(v15)) || __PAIR64__(*(v16 + 827), *(v16 + 826)) != __PAIR64__(BYTE4(v15), BYTE3(v15)) || __PAIR64__(*(v16 + 829), *(v16 + 828)) != __PAIR64__(BYTE6(v15), BYTE5(v15)) || __PAIR64__(*(v16 + 831), *(v16 + 830)) != __PAIR64__(BYTE8(v15), BYTE7(v15)) || __PAIR64__(*(v16 + 833), *(v16 + 832)) != __PAIR64__(BYTE10(v15), BYTE9(v15)) || __PAIR64__(*(v16 + 835), *(v16 + 834)) != __PAIR64__(BYTE12(v15), BYTE11(v15)) || __PAIR64__(*(v16 + 837), *(v16 + 836)) != __PAIR64__(BYTE14(v15), BYTE13(v15)) || *(v16 + 838) != HIBYTE(v15))
                    {
                      v25 = v6;
LABEL_53:
                      v3 = *(v16 + 809);
                      v4 = *(v16 + 810);
                      v5 = *(v16 + 811);
                      v7 = *(v16 + 812);
                      v8 = *(v16 + 813);
                      v9 = *(v16 + 814);
                      v14 = *v23;
                      v15 = *v24;
                      v18 = 1;
                      self = *(v16 + 1840);
                      if (v13 == 1)
                      {
                        v11 = v16 + 200;
                        v12 = v16 + 200;
                      }

                      else
                      {
                        *(v12 + 606) = 1;
                        *(v11 + 606) = 0;
                        v11 = v16 + 200;
                        v12 = v16 + 200;
                        v13 = 1;
                      }

                      v6 = v25;
                      v10 = v22;
                      goto LABEL_11;
                    }

                    v26 = *(v16 + 1840);
                    v31 = v26 >> 20;
                    if (((((v26 >> 20) | (v26 >> 40) | (v26 >> 30)) ^ ((self >> 20) | (self >> 40) | (self >> 30))) & 0x3FF) != 0)
                    {
LABEL_49:
                      if (v13 != 1)
                      {
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v27 = ((v26 >> 20) | BYTE5(v26) | (v26 >> 30));
                      if ((v26 >> 20) | (BYTE5(v26) | (v26 >> 30)))
                      {
                        v32 = (self >> 40) & 0x3FF;
                        v30 = (v26 >> 40) & 0x3FF;
                        do
                        {
                          v28 = v27 & -v27;
                          if ((v32 & v28 & (self >> 20)) != 0)
                          {
                            if ((v30 & v31 & v28) == 0)
                            {
                              goto LABEL_49;
                            }
                          }

                          else if ((v28 & v30 & v31) == 0)
                          {
                            if ((v32 & v28) != 0)
                            {
                              if ((v28 & v30) == 0)
                              {
                                goto LABEL_49;
                              }
                            }

                            else if (((self >> 20) & 0x3FF & v28) != 0 && ((v26 >> 20) & 0x3FF & v28) == 0)
                            {
                              goto LABEL_49;
                            }
                          }

                          if ((v26 & 0x3FF & v28) != 0)
                          {
                            goto LABEL_49;
                          }

                          v29 = v28 == v27;
                          v27 ^= v28;
                        }

                        while (!v29);
                      }

                      if (v13)
                      {
                        *(v16 + 805) = 257;
                        ++v13;
                        v18 = 1;
                        self = v26;
                        v11 = v16 + 200;
                        goto LABEL_11;
                      }

LABEL_50:
                      *(v12 + 606) = 1;
                      *(v11 + 606) = 0;
                    }

                    v10 = *(v16 + 807);
                    v6 = *(v16 + 808);
                    v3 = *(v16 + 809);
                    v4 = *(v16 + 810);
                    v5 = *(v16 + 811);
                    v7 = *(v16 + 812);
                    v8 = *(v16 + 813);
                    v9 = *(v16 + 814);
                    v14 = *v23;
                    v13 = 1;
                    v15 = *v24;
                    v11 = v16 + 200;
                    v12 = v16 + 200;
                  }

                  v18 = 1;
                  self = *(v16 + 1840);
                }
              }

              else if (v20 == 65538)
              {
                goto LABEL_9;
              }
            }

            else if (v20 <= 0xC)
            {
              v21 = 1 << v20;
              if ((v21 & 0x1C78) != 0 || (v21 & 0x380) != 0)
              {
LABEL_9:
                if (v18 < 1 || v13 == 1)
                {
                  v18 = 0;
                }

                else
                {
                  v18 = 0;
                  *(v12 + 606) = 1;
                  *(v11 + 606) = 0;
                }
              }
            }

LABEL_11:
            v16 += *(v16 + 4);
            if (v17 <= v16)
            {
              if (v18 >= 1 && v13 != 1)
              {
                *(v12 + 606) = 1;
                *(v11 + 606) = 0;
              }

              return;
            }
          }
        }
      }
    }
  }
}

- (void)dealloc
{
  self->_previousComputeCommandEncoder = 0;

  self->_previousBlitCommandEncoder = 0;
  [(AGXG18PFamilyRenderContext *)self->_previousRenderCommandEncoder deferredEndEncoding:0];

  self->_previousRenderCommandEncoder = 0;
  v3 = [(IOGPUMetalCommandBuffer *)self device];
  impl = self->_impl;
  if (impl)
  {
    v5 = *(v3 + 106);
    v6 = impl[64];
    v7 = impl[65];
    *(impl + 32) = 0u;
    if (v6 > 0 || v7 >= 1)
    {
      if (v6 && atomic_fetch_add(&AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::liveUberVariantUses, -v6) == v6)
      {
        v9 = *(v5 + 17272);
        v10 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      if (v7 && atomic_fetch_add(&AGX::EndOfTileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::liveUberVariantUses, -v7) == v7)
      {
        v11 = *(v5 + 17280);
        v12 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      impl = self->_impl;
    }

    v13 = impl[68];
    if (v13)
    {
      impl[69] = v13;
      operator delete(v13);
    }

    AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~ResourceGroupUsage((impl + 3));
    v14 = self->_impl;
    if (v14)
    {
      os_unfair_lock_lock((v5 + 15724));
      v15 = *(v5 + 15720);
      if (v15 > 7)
      {
        os_unfair_lock_unlock((v5 + 15724));
        free(v14);
      }

      else
      {
        *(v5 + 15720) = v15 + 1;
        *(v5 + 8 * v15 + 15728) = v14;
        os_unfair_lock_unlock((v5 + 15724));
      }
    }

    self->_impl = 0;
  }

  [objc_msgSend(*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB778]) "device")];
  v16 = *MEMORY[0x29EDBB770];

  *(&self->super.super.super.super.isa + v16) = 0;
  v17.receiver = self;
  v17.super_class = AGXG18PFamilyCommandBuffer;
  [(IOGPUMetalCommandBuffer *)&v17 dealloc];
}

@end