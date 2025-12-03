@interface AGXG18PFamilyCommandBuffer_mtlnext
- (AGXG18PFamilyCommandBuffer_mtlnext)initWithDevice:(id)device;
- (id).cxx_construct;
- (id)computeCommandEncoder;
- (id)machineLearningCommandEncoder;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options;
- (id)sampledComputeCommandEncoder:(id *)encoder capacity:(unint64_t)capacity;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (void)allocateInternalSparseMappingEncoder;
- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options;
- (void)closeKernelCommands:(unint64_t)commands kernelCommand:(void *)command;
- (void)commitEncoder;
- (void)dealloc;
- (void)encodeSyncComputeWithBackFacingBarrierSrcMask:(unsigned int)mask BackFacingBarrierDstMask:(unsigned int)dstMask FrontFacingBarrierSrcMask:(unsigned int)srcMask FrontFacingBarrierDstMask:(unsigned int)barrierDstMask;
- (void)endCommandBuffer;
- (void)endCommandBufferInternal;
- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)args;
- (void)releaseMergeableRender;
- (void)reserveKernelCommandBufferSpace:(unint64_t)space;
- (void)writeTimestampIntoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation AGXG18PFamilyCommandBuffer_mtlnext

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 25) = 0;
  return self;
}

- (void)encodeSyncComputeWithBackFacingBarrierSrcMask:(unsigned int)mask BackFacingBarrierDstMask:(unsigned int)dstMask FrontFacingBarrierSrcMask:(unsigned int)srcMask FrontFacingBarrierDstMask:(unsigned int)barrierDstMask
{
  v6 = *&barrierDstMask;
  v7 = *&srcMask;
  v8 = *&dstMask;
  v9 = *&mask;
  computeCommandEncoder = [(AGXG18PFamilyCommandBuffer_mtlnext *)self computeCommandEncoder];
  [computeCommandEncoder encodeSyncComputeWithBackFacingBarrierSrcMask:v9 BackFacingBarrierDstMask:v8 FrontFacingBarrierSrcMask:v7 FrontFacingBarrierDstMask:v6];

  [computeCommandEncoder endEncoding];
}

- (void)closeKernelCommands:(unint64_t)commands kernelCommand:(void *)command
{
  IOGPUMetalCommandBufferStorageBeginKernelCommands();

  IOGPUMetalCommandBufferStorageEndKernelCommands();
}

- (void)reserveKernelCommandBufferSpace:(unint64_t)space
{
  v5 = *MEMORY[0x29EDC55D8];
  v6 = *(&self->super.super.super.super.isa + v5);
  result = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = result;
  if (v8 - result < space)
  {
    [(IOGPUMetal4CommandBuffer *)self growKernelCommandBuffer:space];
    [(IOGPUMetal4CommandBuffer *)self getCurrentKernelCommandBufferPointer:&v9 end:&v8];
    result = v9;
    v6 = *(&self->super.super.super.super.isa + v5);
  }

  *(v6 + 48) = result + space;
  return result;
}

- (void)writeTimestampIntoHeap:(id)heap atIndex:(unint64_t)index
{
  if (HIDWORD(index) || self->_mergeable_render.__ptr_)
  {
    return;
  }

  indexCopy = index;
  *(self->_impl + 20) = 1;
  [(IOGPUMetal4CommandBuffer *)self protectionOptions];
  [(_MTL4CommandBuffer *)self device];
  v7 = [AGXG18PFamilyComputeContext_mtlnext alloc];
  v8 = [(AGXG18PFamilyComputeContext_mtlnext *)v7 initWithCommandBuffer:self allocator:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB748]) enableStateLoaderProgramTracking:0];
  [(IOGPUMetal4ComputeCommandEncoder *)v8 setLabel:@"DriverCmdBufLevelTimestampCounter"];
  impl = v8->_impl;
  *(impl + 5864) = 1;
  v10 = *(impl + 1872);
  v11 = *(v10 + 848);
  block.i64[0] = MEMORY[0x29EDCA5F8];
  block.i64[1] = 3221225472;
  v23 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE47createComputeProgressMarkerDriverShaderIfNeededEP19AGXG18PFamilyDevice_block_invoke;
  v24 = &unk_29F340FF0;
  v25 = v10;
  v26 = v11;
  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputeProgressMarkerDriverShaderIfNeeded(AGXG18PFamilyDevice *)::dispatch_once_pred == -1)
  {
    if (*(v11 + 17200))
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputeProgressMarkerDriverShaderIfNeeded(AGXG18PFamilyDevice *)::dispatch_once_pred, &block);
    if (*(v11 + 17200))
    {
LABEL_5:
      v12 = *(impl + 712);
      if (!v12)
      {
        if (!AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 20, 0))
        {
          goto LABEL_25;
        }

        v12 = *(impl + 712);
      }

      v13 = v12 + 1;
      if ((v12 + 1) <= *(impl + 704))
      {
        goto LABEL_7;
      }

      v19 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 20, 0);
      v12 = *(impl + 712);
      if (!v19)
      {
        goto LABEL_8;
      }

      v13 = v12 + 1;
      if ((v12 + 1) <= *(impl + 704))
      {
LABEL_7:
        *(impl + 720) = v13;
LABEL_8:
        v14 = &v12[*(impl + 728)];
        *(impl + 712) = v12 + 1;
        *v12 = 0;
        v15 = *(impl + 8);
        v23 = 0;
        block = v12;
        std::vector<AGX::CommandBuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ProgressMarker,std::allocator<AGX::CommandBuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ProgressMarker>>::push_back[abi:nn200100](v15 + 544, block.i8);
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(impl, *(*(*(impl + 1872) + 848) + 17200));
        if (!*(impl + 712))
        {
          AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(impl + 24, 0x14u);
        }

        v16 = *(*(impl + 48) + 1312) + *MEMORY[0x29EDC5638];
        *(*(impl + 4544) + 1480) = v14;
        *(impl + 4760) = v16;
        *(impl + 4912) |= 0x200000000000000uLL;
        *(impl + 4944) |= 1u;
        if (*(impl + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, 0, 0, 0);
        }

        block = vdupq_n_s64(1uLL);
        v23 = 1;
        v20 = block;
        v21 = 1;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelCommonImpl(impl, block.i64, &v20);
        if (*(impl + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, 0, 0, 0);
        }

        goto LABEL_14;
      }

LABEL_25:
      abort();
    }
  }

LABEL_14:
  v17 = v8->_impl;
  if (v17[5864])
  {
    v18 = 5840;
  }

  else
  {
    v18 = 5816;
  }

  block.i64[0] = heap;
  block.i32[2] = indexCopy;
  std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](&v17[v18], &block);
  *(*(v8->_impl + 291) + 593) = 1;
  [(AGXG18PFamilyComputeContext_mtlnext *)v8 endEncoding];
}

- (id)sampledComputeCommandEncoder:(id *)encoder capacity:(unint64_t)capacity
{
  v7 = *([(_MTL4CommandBuffer *)self device]+ 848);
  if ((*(v7 + 16624) & 1) == 0 && !*(v7 + 16616))
  {
    MTLReportFailure();
  }

  v8 = [AGXG18PFamilySampledComputeContext_mtlnext alloc];
  v9 = [(AGXG18PFamilySampledComputeContext_mtlnext *)v8 initWithCommandBuffer:self allocator:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB748]) programInfoBuffer:encoder capacity:capacity];

  return v9;
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  v9 = *([(_MTL4CommandBuffer *)self device]+ 848);
  if ((*(v9 + 16624) & 1) == 0 && !*(v9 + 16616))
  {
    MTLReportFailure();
  }

  v10 = [AGXG18PFamilySampledRenderContext_mtlnext alloc];
  v11 = [(AGXG18PFamilySampledRenderContext_mtlnext *)v10 initWithCommandBuffer:self allocator:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB748]) descriptor:descriptor options:0 programInfoBuffer:buffer capacity:capacity];

  return v11;
}

- (id)machineLearningCommandEncoder
{
  v3 = [AGXG18PFamilyMLContext alloc];
  v4 = [(AGXG18PFamilyMLContext *)v3 initWithCommandBuffer:self allocator:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB748])];

  return v4;
}

- (void)commitEncoder
{
  internalSparseMappingEncoder = self->_internalSparseMappingEncoder;
  if (internalSparseMappingEncoder)
  {
    legacy_blit_context = internalSparseMappingEncoder->_legacy_blit_context;
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(legacy_blit_context, 1, v2, v3, v4, v5);
    v8 = legacy_blit_context[27];
    if (v8)
    {
      LODWORD(v8) = *(v8 + 528);
    }

    v9 = legacy_blit_context[26];
    if (v9)
    {
      LODWORD(v9) = *(v9 + 528);
    }

    if (v8 + v9)
    {
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(legacy_blit_context, 0);
      v10 = legacy_blit_context[1];
      v15 = 0;
      AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v10 + 24, &v15);

      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(legacy_blit_context, 1, v11, v12, v13, v14);
    }
  }
}

- (void)allocateInternalSparseMappingEncoder
{
  if (!self->_internalSparseMappingEncoder)
  {
    *(self->_impl + 20) = 1;
    [(IOGPUMetal4CommandBuffer *)self protectionOptions];
    [(_MTL4CommandBuffer *)self device];
    v3 = [AGXG18PFamilyComputeContext_mtlnext alloc];
    self->_internalSparseMappingEncoder = [(AGXG18PFamilyComputeContext_mtlnext *)v3 initWithCommandBufferForQueueSparseOperation:self allocator:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB748])];
  }
}

- (id)computeCommandEncoder
{
  *(self->_impl + 20) = 1;
  [(IOGPUMetal4CommandBuffer *)self protectionOptions];
  [(_MTL4CommandBuffer *)self device];
  v3 = [AGXG18PFamilyComputeContext_mtlnext alloc];
  v4 = [(AGXG18PFamilyComputeContext_mtlnext *)v3 initWithCommandBuffer:self allocator:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB748]) enableStateLoaderProgramTracking:0];

  return v4;
}

- (void)releaseMergeableRender
{
  p_mergeable_framebuffer = &self->_mergeable_framebuffer;
  if (self->_mergeable_framebuffer.__ptr_)
  {
    ptr = self->_mergeable_framebuffer.__ptr_;
    f = self->_mergeable_framebuffer.__deleter_.__f_.__f_;
    if (!f)
    {
LABEL_10:
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      [(AGXG18PFamilyCommandBuffer_mtlnext *)v7 renderCommandEncoderWithDescriptor:v8 options:v9, v10];
      return;
    }

    (*(*f + 48))(f, &ptr);
    p_mergeable_framebuffer->__ptr_ = 0;
    v5 = self->_mergeable_render.__ptr_;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = self->_mergeable_render.__ptr_;
    if (!v5)
    {
      return;
    }
  }

  ptr = v5;
  v6 = self->_mergeable_render.__deleter_.__f_.__f_;
  if (!v6)
  {
    goto LABEL_10;
  }

  (*(*v6 + 48))(v6, &ptr);
  self->_mergeable_render.__ptr_ = 0;
LABEL_8:
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options
{
  v7 = [AGXG18PFamilyRenderContext_mtlnext alloc];
  v8 = [(AGXG18PFamilyRenderContext_mtlnext *)v7 initWithCommandBuffer:self allocator:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB748]) descriptor:descriptor options:options enableStateLoaderProgramTracking:0];
  v9 = v8;
  if (!v8 || !v8->_mergeable)
  {
    return v9;
  }

  ptr = v8->_impl_wrapper.__ptr_;
  v8->_impl_wrapper.__ptr_ = 0;
  v11 = self->_mergeable_render.__ptr_;
  self->_mergeable_render.__ptr_ = ptr;
  if (v11)
  {
    v26 = v11;
    f = self->_mergeable_render.__deleter_.__f_.__f_;
    if (!f)
    {
      goto LABEL_28;
    }

    (*(*f + 48))(f, &v26);
  }

  v13 = self->_mergeable_render.__deleter_.__f_.__f_;
  self->_mergeable_render.__deleter_.__f_.__f_ = 0;
  if (v13 == &self->_mergeable_render.__deleter_)
  {
    (*(v13->super.super.super.super.isa + 4))(v13);
    v14 = v9->_impl_wrapper.__deleter_.__f_.__f_;
    if (v14)
    {
LABEL_10:
      if (v14 == &v9->_impl_wrapper.__deleter_)
      {
        self->_mergeable_render.__deleter_.__f_.__f_ = &self->_mergeable_render.__deleter_;
        (*(*v9->_impl_wrapper.__deleter_.__f_.__f_ + 24))(v9->_impl_wrapper.__deleter_.__f_.__f_, &self->_mergeable_render.__deleter_);
      }

      else
      {
        self->_mergeable_render.__deleter_.__f_.__f_ = v14;
        v9->_impl_wrapper.__deleter_.__f_.__f_ = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v13)
    {
      (*(v13->super.super.super.super.isa + 5))(v13);
    }

    v14 = v9->_impl_wrapper.__deleter_.__f_.__f_;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  self->_mergeable_render.__deleter_.__f_.__f_ = 0;
LABEL_15:
  p_mergeable_framebuffer = &self->_mergeable_framebuffer;
  v16 = v9->_framebuffer_wrapper.__ptr_;
  v9->_framebuffer_wrapper.__ptr_ = 0;
  v17 = self->_mergeable_framebuffer.__ptr_;
  self->_mergeable_framebuffer.__ptr_ = v16;
  if (!v17)
  {
    goto LABEL_18;
  }

  v26 = v17;
  v18 = self->_mergeable_framebuffer.__deleter_.__f_.__f_;
  if (v18)
  {
    (*(*v18 + 48))(v18, &v26);
LABEL_18:
    p_deleter = &self->_mergeable_framebuffer.__deleter_;
    v20 = p_mergeable_framebuffer->__deleter_.__f_.__f_;
    p_mergeable_framebuffer->__deleter_.__f_.__f_ = 0;
    if (v20 == &p_mergeable_framebuffer->__deleter_)
    {
      (*(v20->__ptr_ + 4))(v20);
      v21 = v9->_framebuffer_wrapper.__deleter_.__f_.__f_;
      if (v21)
      {
LABEL_22:
        if (v21 == &v9->_framebuffer_wrapper.__deleter_)
        {
          p_mergeable_framebuffer->__deleter_.__f_.__f_ = p_deleter;
          (*(*v9->_framebuffer_wrapper.__deleter_.__f_.__f_ + 24))(v9->_framebuffer_wrapper.__deleter_.__f_.__f_, &p_mergeable_framebuffer->__deleter_);
        }

        else
        {
          p_mergeable_framebuffer->__deleter_.__f_.__f_ = v21;
          v9->_framebuffer_wrapper.__deleter_.__f_.__f_ = 0;
        }

        return v9;
      }
    }

    else
    {
      if (v20)
      {
        (*(v20->__ptr_ + 5))(v20);
      }

      v21 = v9->_framebuffer_wrapper.__deleter_.__f_.__f_;
      if (v21)
      {
        goto LABEL_22;
      }
    }

    p_mergeable_framebuffer->__deleter_.__f_.__f_ = 0;
    return v9;
  }

LABEL_28:
  v23 = std::__throw_bad_function_call[abi:nn200100]();
  return [(AGXG18PFamilyCommandBuffer_mtlnext *)v23 renderCommandEncoderWithDescriptor:v24, v25];
}

- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)args
{
  *&args[1].var2 = 0;
  args[1].var0 = 0;
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyCommandBuffer_mtlnext;
  [(IOGPUMetal4CommandBuffer *)&v3 fillCommandBufferArgs:?];
}

- (void)endCommandBuffer
{
  v2.receiver = self;
  v2.super_class = AGXG18PFamilyCommandBuffer_mtlnext;
  [(IOGPUMetal4CommandBuffer *)&v2 endCommandBuffer];
}

- (void)endCommandBufferInternal
{
  v2.receiver = self;
  v2.super_class = AGXG18PFamilyCommandBuffer_mtlnext;
  [(IOGPUMetal4CommandBuffer *)&v2 endCommandBuffer];
}

- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options
{
  self->_options = options;
  v6.receiver = self;
  v6.super_class = AGXG18PFamilyCommandBuffer_mtlnext;
  [IOGPUMetal4CommandBuffer beginCommandBufferWithAllocator:sel_beginCommandBufferWithAllocator_options_ options:?];
  [allocator alertCommandBufferActivityStart];
  if (*(self->_device_impl + 1060))
  {
    [(IOGPUMetal4CommandBuffer *)self useInternalResidencySet:?];
  }
}

- (void)dealloc
{
  device = [(_MTL4CommandBuffer *)self device];
  impl = self->_impl;
  if (impl)
  {
    v5 = *(device + 106);
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

  internalSparseMappingEncoder = self->_internalSparseMappingEncoder;
  if (internalSparseMappingEncoder)
  {
  }

  v17.receiver = self;
  v17.super_class = AGXG18PFamilyCommandBuffer_mtlnext;
  [(IOGPUMetal4CommandBuffer *)&v17 dealloc];
}

- (AGXG18PFamilyCommandBuffer_mtlnext)initWithDevice:(id)device
{
  v12.receiver = self;
  v12.super_class = AGXG18PFamilyCommandBuffer_mtlnext;
  v4 = [(IOGPUMetal4CommandBuffer *)&v12 initWithDevice:?];
  v5 = v4;
  if (v4)
  {
    v6 = *(device + 106);
    if (*(v6 + 15712) <= 0x23FuLL)
    {
      v4->_impl = 0;
    }

    else
    {
      os_unfair_lock_lock((v6 + 15724));
      v7 = *(v6 + 15720);
      if (v7)
      {
        v8 = v7 - 1;
        *(v6 + 15720) = v8;
        v9 = *(v6 + 8 * v8 + 15728);
        os_unfair_lock_unlock((v6 + 15724));
        if (v9)
        {
          bzero(v9, *(v6 + 15712));
          v5->_impl = v9;
          goto LABEL_8;
        }
      }

      else
      {
        os_unfair_lock_unlock((v6 + 15724));
      }

      v9 = malloc_type_calloc(*(v6 + 15712), 1uLL, 0x689CC946uLL);
      v5->_impl = v9;
      if (v9)
      {
LABEL_8:
        v10 = *(device + 106);
        *v9 = 1;
        *(v9 + 1) = 0;
        *(v9 + 4) = 1;
        v9[20] = 0;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ResourceGroupUsage((v9 + 24), v10);
      }
    }

    return 0;
  }

  return v5;
}

@end