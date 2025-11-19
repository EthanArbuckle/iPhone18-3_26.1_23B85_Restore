@interface AGXG18PFamilyComputeContext_mtlnext
- (AGXG18PFamilyComputeContext_mtlnext)initWithCommandBuffer:(id)a3 allocator:(id)a4 enableStateLoaderProgramTracking:(BOOL)a5;
- (AGXG18PFamilyComputeContext_mtlnext)initWithCommandBufferForQueueSparseOperation:(id)a3 allocator:(id)a4;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4;
- (unint64_t)stages;
- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 options:(unint64_t)a5;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 options:(unint64_t)a5;
- (void)barrierAfterStages:(unint64_t)a3 beforeQueueStages:(unint64_t)a4 options:(unint64_t)a5;
- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5;
- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
- (void)copyTextureMappingsFromTexture:(id)a3 sourceSlices:(const unint64_t *)a4 sourceLevels:(const unint64_t *)a5 sourceOrigins:(id *)a6 sourceSizes:(id *)a7 numSizes:(unint64_t)a8 toTexture:(id)a9 destinationSlices:(const unint64_t *)a10 destinationLevels:(const unint64_t *)a11 destinationOrigins:(id *)a12;
- (void)copyTextureMappingsFromTexture:(id)a3 toTexture:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)createBlitContextIfNeeded;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4;
- (void)destroyImpl;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3;
- (void)encodeSyncComputeWithBackFacingBarrierSrcMask:(unsigned int)a3 BackFacingBarrierDstMask:(unsigned int)a4 FrontFacingBarrierSrcMask:(unsigned int)a5 FrontFacingBarrierDstMask:(unsigned int)a6;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5;
- (void)fillBuffer:(id)a3 range:(_NSRange)a4 value:(unsigned __int8)a5;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)filterCounterRangeWithFirstBatch:(unsigned int)a3 lastBatch:(unsigned int)a4 filterIndex:(unsigned int)a5;
- (void)generateMipmapsForTexture:(id)a3;
- (void)internalResolveCounterHeap:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 destAddress:(unint64_t)a6 destResource:(id)a7;
- (void)optimizeContentsForCPUAccess:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:(id)a3;
- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7;
- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)serializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 toBuffer:(MTL4BufferRange)a5;
- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)setArgumentTable:(id)a3;
- (void)setComputePipelineState:(id)a3;
- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4;
- (void)updateTextureMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)updateTextureMappings:(id)a3 numRegions:(unint64_t)a4 regions:(id *)a5 levels:(const unint64_t *)a6 slices:(const unint64_t *)a7 heap:(id)a8 rangeModes:(const unint64_t *)a9 rangeOffsets:(unint64_t *)a10;
- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4;
- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeTimestampWithGranularity:(int64_t)a3 intoHeap:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation AGXG18PFamilyComputeContext_mtlnext

- (void)internalResolveCounterHeap:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 destAddress:(unint64_t)a6 destResource:(id)a7
{
  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  blit_context = self->_blit_context;
  v14 = *(a3 + 1);
  v15 = *(v14 + *MEMORY[0x29EDC5638] + 72);
  if (*(*blit_context + 1896))
  {
    MTLResourceListAddResource();
  }

  IOGPUResourceListAddResource();
  if (a7)
  {
    v16 = a7;
    v17 = a6;
    v18 = v14;
  }

  else
  {
    v16 = 0;
    v17 = a6;
    v18 = 0;
  }

  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToBufferImpl(blit_context, v16, v17, v18, v15 + a4, a5);
  *(*(*blit_context + 2328) + 594) = 1;
}

- (void)createBlitContextIfNeeded
{
  if (result)
  {
    v1 = result;
    if (!result[10])
    {
      v2 = (result[9] + 5880);
      v1[10] = v2;
      bzero(v2, 0x1260uLL);
      v3 = (v1[9] + 10584);
      v1[11] = v3;
      bzero(v3, 0x1390uLL);
      v4 = v1[10];
      v5 = v1[9];
      *v4 = v5;
      v6 = *(v5 + 1872);
      *(v4 + 16) = v6;
      *(v4 + 24) = v5;
      *(v4 + 32) = 1;
      *(v4 + 40) = v4 + 80;
      *(v4 + 56) = v6;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 2384) = 0;
      *(v4 + 4696) = 0;
      operator new();
    }
  }

  return result;
}

- (void)encodeSyncComputeWithBackFacingBarrierSrcMask:(unsigned int)a3 BackFacingBarrierDstMask:(unsigned int)a4 FrontFacingBarrierSrcMask:(unsigned int)a5 FrontFacingBarrierDstMask:(unsigned int)a6
{
  impl = self->_impl;
  v12 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 3), 4, 0, 0, 0, &v12);
  v11 = impl[97];
  *v11 = 1610744318;
  impl[97] = v11 + 1;
  *(impl + 507) = a3;
  *(impl + 508) = a4;
  *(impl + 509) = a5;
  *(impl + 510) = a6;
  *(impl + 515) |= a3 | a4 | a5 | a6;
}

- (unint64_t)stages
{
  impl = self->_impl;
  v3 = impl[572] | impl[515];
  impl[572] = v3;
  return (v3 & 7) << 27;
}

- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var0 = a4.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v9 = self->_impl;
    self->_bvh_builder = v9 + 15592;
    *(v9 + 1985) = 0;
    *(v9 + 15848) = 0u;
    *(v9 + 15864) = 0u;
    *(v9 + 15816) = 0u;
    *(v9 + 15832) = 0u;
    *(v9 + 15784) = 0u;
    *(v9 + 15800) = 0u;
    *(v9 + 15752) = 0u;
    *(v9 + 15768) = 0u;
    *(v9 + 15720) = 0u;
    *(v9 + 15736) = 0u;
    *(v9 + 15688) = 0u;
    *(v9 + 15704) = 0u;
    *(v9 + 15656) = 0u;
    *(v9 + 15672) = 0u;
    *(v9 + 15624) = 0u;
    *(v9 + 15640) = 0u;
    *(v9 + 15592) = 0u;
    *(v9 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  if (*(bvh_builder + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
  }

  v10 = [a3 buffer];
  v11 = [a3 bufferOffset];
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 55, 0);
  v13 = [v10 gpuAddress];
  v14 = *(bvh_builder + 4);
  v15 = (*(v14 + 24) + *(v14 + 4));
  *v15 = v13 + v11;
  v15[1] = var0;
  v18 = vdupq_n_s64(1uLL);
  v19 = 1;
  v16 = v18;
  v17 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), v14, Pipeline, v18.i8, v16.i8);
}

- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var0 = a4.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v9 = self->_impl;
    self->_bvh_builder = v9 + 15592;
    *(v9 + 1985) = 0;
    *(v9 + 15848) = 0u;
    *(v9 + 15864) = 0u;
    *(v9 + 15816) = 0u;
    *(v9 + 15832) = 0u;
    *(v9 + 15784) = 0u;
    *(v9 + 15800) = 0u;
    *(v9 + 15752) = 0u;
    *(v9 + 15768) = 0u;
    *(v9 + 15720) = 0u;
    *(v9 + 15736) = 0u;
    *(v9 + 15688) = 0u;
    *(v9 + 15704) = 0u;
    *(v9 + 15656) = 0u;
    *(v9 + 15672) = 0u;
    *(v9 + 15624) = 0u;
    *(v9 + 15640) = 0u;
    *(v9 + 15592) = 0u;
    *(v9 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  if (*(bvh_builder + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
  }

  v10 = [a3 buffer];
  v11 = [a3 bufferOffset];
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 179, 0);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v20, bvh_builder, 40, 0);
  v13 = v20;
  *v20 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
  }

  v14 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 0)
  {
    v14 = 3;
  }

  *(v13 + 28) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhChipCodes[v14];
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
  }

  *(v13 + 32) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen] & 0x1FFFFFFF;
  *v13 = [v10 gpuAddress] + v11;
  *(v13 + 8) = var0;
  v15 = *(bvh_builder + 4);
  *(*(v15 + 24) + *(v15 + 4) + 168) = v21;
  v18 = vdupq_n_s64(1uLL);
  v19 = 1;
  v16 = v18;
  v17 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), v15, Pipeline, v18.i8, v16.i8);
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var0 = a4.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v9 = self->_impl;
    self->_bvh_builder = v9 + 15592;
    *(v9 + 1985) = 0;
    *(v9 + 15848) = 0u;
    *(v9 + 15864) = 0u;
    *(v9 + 15816) = 0u;
    *(v9 + 15832) = 0u;
    *(v9 + 15784) = 0u;
    *(v9 + 15800) = 0u;
    *(v9 + 15752) = 0u;
    *(v9 + 15768) = 0u;
    *(v9 + 15720) = 0u;
    *(v9 + 15736) = 0u;
    *(v9 + 15688) = 0u;
    *(v9 + 15704) = 0u;
    *(v9 + 15656) = 0u;
    *(v9 + 15672) = 0u;
    *(v9 + 15624) = 0u;
    *(v9 + 15640) = 0u;
    *(v9 + 15592) = 0u;
    *(v9 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  if (*(bvh_builder + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
  }

  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 41, 0);
  v11 = [a3 buffer];
  v12 = [a3 bufferOffset];
  v13 = [v11 gpuAddress];
  v14 = *(bvh_builder + 4);
  v15 = (*(v14 + 24) + *(v14 + 4));
  *v15 = v13 + v12;
  v15[1] = var0;
  v18 = vdupq_n_s64(1uLL);
  v19 = 1;
  v16 = v18;
  v17 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), v14, Pipeline, v18.i8, v16.i8);
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4
{
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v9 = self->_impl;
    self->_bvh_builder = v9 + 15592;
    *(v9 + 1985) = 0;
    *(v9 + 15848) = 0u;
    *(v9 + 15864) = 0u;
    *(v9 + 15816) = 0u;
    *(v9 + 15832) = 0u;
    *(v9 + 15784) = 0u;
    *(v9 + 15800) = 0u;
    *(v9 + 15752) = 0u;
    *(v9 + 15768) = 0u;
    *(v9 + 15720) = 0u;
    *(v9 + 15736) = 0u;
    *(v9 + 15688) = 0u;
    *(v9 + 15704) = 0u;
    *(v9 + 15656) = 0u;
    *(v9 + 15672) = 0u;
    *(v9 + 15624) = 0u;
    *(v9 + 15640) = 0u;
    *(v9 + 15592) = 0u;
    *(v9 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  v10 = [a4 headerBuffer];
  v11 = [a4 headerBufferOffset];
  v57 = [a4 innerNodeBuffer];
  v56 = [a4 innerNodeBufferOffset];
  v12 = [a4 leafNodeBuffer];
  v13 = [a4 leafNodeBufferOffset];
  v47 = [a4 primitiveBuffer];
  v14 = [a4 primitiveBufferOffset];
  v48 = [a4 geometryBuffer];
  v15 = [a4 geometryBufferOffset];
  v49 = [a4 instanceTransformBuffer];
  v46 = [a4 instanceTransformBufferOffset];
  v55 = [a4 perPrimitiveDataBuffer];
  v54 = [a4 perPrimitiveDataBufferOffset];
  v58 = [a4 controlPointBuffer];
  v53 = [a4 controlPointBufferOffset];
  v16 = [a4 version];
  if (*(bvh_builder + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
  }

  v17 = [a3 buffer];
  v18 = [a3 bufferOffset];
  v50 = dword_29D2F53D0[v16];
  v52 = v17;
  v51 = v18;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 56) = [v17 gpuAddress] + v18;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 80) = [v10 gpuAddress] + v11;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 88) = [v57 gpuAddress] + v56;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 96) = [v12 gpuAddress] + v13;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 104) = [v47 gpuAddress] + v14;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 112) = [v48 gpuAddress] + v15;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 120) = [v49 gpuAddress] + v46;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 128) = [v55 gpuAddress] + v54;
  v19 = v58;
  v20 = v53;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 136) = [v58 gpuAddress] + v53;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v71, bvh_builder, 48, 1);
  v21 = v72;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 72) = v72;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v71, bvh_builder, 8, 0);
  v22 = v72;
  *v71 = v16;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 64) = v22;
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteGenericBVHStructures(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,MTLGenericBVHHeaderVersionSPI)::verify = 0;
    v19 = v58;
    v20 = v53;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteGenericBVHStructures(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,MTLGenericBVHHeaderVersionSPI)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v76.i64, bvh_builder, 0x480188uLL, 1);
    v23 = v76.i64[1];
    bzero(v76.i64[1], 0x480188uLL);
    *(v23 + 8) = -1;
    v24 = **(bvh_builder + 2);
    v71 = MEMORY[0x29EDCA5F8];
    v72 = 3221225472;
    v73 = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE31encodeWriteGenericBVHStructuresEP44AGXG18PFamilyRayTracingAccelerationStructureP19AGXG18PFamilyBuffermSA_mSA_mSA_mSA_mSA_mSA_mSA_m29MTLGenericBVHHeaderVersionSPI_block_invoke;
    v74 = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v75 = v23;
    [v24 addCompletedHandler:&v71];
    v25 = v76.i64[0];
    v68 = 0uLL;
    v69 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v68, bvh_builder, 16, 0);
    v26 = v68;
    *v68.i64[0] = v25;
    *(v26.i64[0] + 8) = 0;
    *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 32) = v26.i64[1];
  }

  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, v50, 0);
  v59 = vdupq_n_s64(1uLL);
  v76 = v59;
  *&v77 = 1;
  v68 = v59;
  v69 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), Pipeline, v76.i8, v68.i8);
  v28 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 43, 0);
  v76 = v59;
  *&v77 = 1;
  v68 = v59;
  v69 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), v28, v76.i8, v68.i8);
  v29 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 44, 0);
  v76 = v59;
  *&v77 = 1;
  v68 = v59;
  v69 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), v29, v76.i8, v68.i8);
  v30 = 31;
  do
  {
    v76 = 0uLL;
    *&v77 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v76, bvh_builder, 8, 0);
    v31 = v76.i64[1];
    *v76.i64[0] = v16;
    *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 64) = v31;
    v32 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 45, 0);
    v76 = 0u;
    v77 = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(bvh_builder, v32, v21 + 8, &v76, 1, 0, 1);
    v33 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 42, 0);
    v60 = vdupq_n_s64(1uLL);
    v76 = v60;
    *&v77 = 1;
    v68 = v60;
    v69 = 1;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), v33, v76.i8, v68.i8);
    v34 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 52, 0);
    v76 = 0u;
    v77 = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(bvh_builder, v34, v21 + 16, &v76, 1, 0, 1);
    v35 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 43, 0);
    v76 = v60;
    *&v77 = 1;
    v68 = v60;
    v69 = 1;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), v35, v76.i8, v68.i8);
    v36 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 44, 0);
    v76 = v60;
    *&v77 = 1;
    v68 = v60;
    v69 = 1;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), v36, v76.i8, v68.i8);
    --v30;
  }

  while (v30);
  v37 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, dword_29D2F53E8[v16], 0);
  v76 = 0u;
  v77 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(bvh_builder, v37, v21 + 20, &v76, 1, 0, 1);
  v38 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 54, 0);
  v76 = 0u;
  v77 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(bvh_builder, v38, v21 + 44, &v76, 1, 0, 1);
  v68 = 0uLL;
  v69 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v68, bvh_builder, 8, 0);
  v76.i64[0] = v68.i64[1];
  v76.i64[1] = v68.i64[0];
  *&v77 = 8;
  *(&v77 + 1) = v69;
  *v68.i64[0] = 0;
  v39 = [v52 gpuAddress];
  v40 = [v52 length];
  v41 = v39 + v51;
  if (v55)
  {
    v65 = 0uLL;
    v66 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v65, bvh_builder, 8, 1);
    v68.i64[0] = v65.i64[1];
    v68.i64[1] = v65.i64[0];
    v69 = 8;
    v70 = v66;
    v65.i64[0] = v41 + 112;
    v65.i64[1] = 48;
    v66 = v40;
    v67 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(bvh_builder, v41 + 40, v65.i64, 8, 1, 1u, 8, v68.i64, v76.i64, 8);
    v65.i64[0] = v41 + 136;
    v65.i64[1] = 72;
    v66 = v40;
    v67 = 0;
    v61 = [v55 gpuAddress] + v54;
    v62 = v54;
    v63 = [v55 length];
    v64 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(bvh_builder, v41, v65.i64, 4, v68.i64, 0, 4, &v61, v76.i64, 4);
  }

  if (v19)
  {
    v65 = 0uLL;
    v66 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v65, bvh_builder, 8, 1);
    v68.i64[0] = v65.i64[1];
    v68.i64[1] = v65.i64[0];
    v69 = 8;
    v70 = v66;
    *v65.i64[0] = 0;
    v65.i64[0] = v41 + 112;
    v65.i64[1] = 48;
    v66 = v40;
    v67 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(bvh_builder, v41 + 8, v65.i64, 4, 1, 1u, 4, v68.i64, v76.i64, 4);
    v65.i64[0] = v41 + 152;
    v65.i64[1] = 88;
    v66 = v40;
    v67 = 0;
    v42 = [v19 gpuAddress];
    v43 = [v19 length];
    v61 = v42 + v20;
    v62 = v20;
    v63 = v43;
    v64 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeStridedCopy(bvh_builder, v41, v65.i64, 16, v68.i64, 0, 16, &v61, v76.i64, 16);
  }

  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 56) = [v52 gpuAddress] + v51;
  *(*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4) + 88) = [v57 gpuAddress] + v56;
  v44 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 53, 0);
  v68 = vdupq_n_s64(1uLL);
  v69 = 1;
  v65 = v68;
  v66 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), v44, v68.i8, v65.i8);
  return 1;
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4
{
  *(self->_impl + 572) |= 4u;
  [(AGXG18PFamilyComputeContext_mtlnext *)self doesNotRecognizeSelector:a2, a4];
  return 0;
}

- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)a3 toBuffer:(MTL4BufferRange)a4
{
  var0 = a4.var0;
  v5 = a3.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v9 = self->_impl;
    self->_bvh_builder = v9 + 15592;
    *(v9 + 1985) = 0;
    *(v9 + 15848) = 0u;
    *(v9 + 15864) = 0u;
    *(v9 + 15816) = 0u;
    *(v9 + 15832) = 0u;
    *(v9 + 15784) = 0u;
    *(v9 + 15800) = 0u;
    *(v9 + 15752) = 0u;
    *(v9 + 15768) = 0u;
    *(v9 + 15720) = 0u;
    *(v9 + 15736) = 0u;
    *(v9 + 15688) = 0u;
    *(v9 + 15704) = 0u;
    *(v9 + 15656) = 0u;
    *(v9 + 15672) = 0u;
    *(v9 + 15624) = 0u;
    *(v9 + 15640) = 0u;
    *(v9 + 15592) = 0u;
    *(v9 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  if (*(bvh_builder + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
  }

  v10 = (*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4));
  *v10 = v5;
  v10[1] = var0;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 177, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = 1;
  v12 = v14;
  v13 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), Pipeline, v14.i8, v12.i8);
}

- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var0 = a4.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v9 = self->_impl;
    self->_bvh_builder = v9 + 15592;
    *(v9 + 1985) = 0;
    *(v9 + 15848) = 0u;
    *(v9 + 15864) = 0u;
    *(v9 + 15816) = 0u;
    *(v9 + 15832) = 0u;
    *(v9 + 15784) = 0u;
    *(v9 + 15800) = 0u;
    *(v9 + 15752) = 0u;
    *(v9 + 15768) = 0u;
    *(v9 + 15720) = 0u;
    *(v9 + 15736) = 0u;
    *(v9 + 15688) = 0u;
    *(v9 + 15704) = 0u;
    *(v9 + 15656) = 0u;
    *(v9 + 15672) = 0u;
    *(v9 + 15624) = 0u;
    *(v9 + 15640) = 0u;
    *(v9 + 15592) = 0u;
    *(v9 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  if (*(bvh_builder + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
  }

  v10 = [a3 buffer];
  v11 = [a3 bufferOffset];
  v12 = v11 + [v10 gpuAddress];
  [v10 length];
  v13 = (*(*(bvh_builder + 4) + 24) + *(*(bvh_builder + 4) + 4));
  *v13 = v12 + 64;
  v13[1] = var0;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(bvh_builder, 176, 0);
  v17 = vdupq_n_s64(1uLL);
  v18 = 1;
  v15 = v17;
  v16 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(bvh_builder + 2), *(bvh_builder + 4), Pipeline, v17.i8, v15.i8);
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v12 = self->_impl;
    self->_bvh_builder = v12 + 15592;
    *(v12 + 1985) = 0;
    *(v12 + 15848) = 0u;
    *(v12 + 15864) = 0u;
    *(v12 + 15816) = 0u;
    *(v12 + 15832) = 0u;
    *(v12 + 15784) = 0u;
    *(v12 + 15800) = 0u;
    *(v12 + 15752) = 0u;
    *(v12 + 15768) = 0u;
    *(v12 + 15720) = 0u;
    *(v12 + 15736) = 0u;
    *(v12 + 15688) = 0u;
    *(v12 + 15704) = 0u;
    *(v12 + 15656) = 0u;
    *(v12 + 15672) = 0u;
    *(v12 + 15624) = 0u;
    *(v12 + 15640) = 0u;
    *(v12 + 15592) = 0u;
    *(v12 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  v13 = [a3 accelerationStructureUniqueIdentifier];

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeDeserialize(bvh_builder, a3, a4, var0, var1, v13);
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v10 = self->_impl;
    self->_bvh_builder = v10 + 15592;
    *(v10 + 1985) = 0;
    *(v10 + 15848) = 0u;
    *(v10 + 15864) = 0u;
    *(v10 + 15816) = 0u;
    *(v10 + 15832) = 0u;
    *(v10 + 15784) = 0u;
    *(v10 + 15800) = 0u;
    *(v10 + 15752) = 0u;
    *(v10 + 15768) = 0u;
    *(v10 + 15720) = 0u;
    *(v10 + 15736) = 0u;
    *(v10 + 15688) = 0u;
    *(v10 + 15704) = 0u;
    *(v10 + 15656) = 0u;
    *(v10 + 15672) = 0u;
    *(v10 + 15624) = 0u;
    *(v10 + 15640) = 0u;
    *(v10 + 15592) = 0u;
    *(v10 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  v11 = [a3 accelerationStructureUniqueIdentifier];

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeDeserialize(bvh_builder, a3, 0, var0, var1, v11);
}

- (void)serializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 toBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v12 = self->_impl;
    self->_bvh_builder = v12 + 15592;
    *(v12 + 1985) = 0;
    *(v12 + 15848) = 0u;
    *(v12 + 15864) = 0u;
    *(v12 + 15816) = 0u;
    *(v12 + 15832) = 0u;
    *(v12 + 15784) = 0u;
    *(v12 + 15800) = 0u;
    *(v12 + 15752) = 0u;
    *(v12 + 15768) = 0u;
    *(v12 + 15720) = 0u;
    *(v12 + 15736) = 0u;
    *(v12 + 15688) = 0u;
    *(v12 + 15704) = 0u;
    *(v12 + 15656) = 0u;
    *(v12 + 15672) = 0u;
    *(v12 + 15624) = 0u;
    *(v12 + 15640) = 0u;
    *(v12 + 15592) = 0u;
    *(v12 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize(bvh_builder, a3, a4, var0, var1);
}

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v10 = self->_impl;
    self->_bvh_builder = v10 + 15592;
    *(v10 + 1985) = 0;
    *(v10 + 15848) = 0u;
    *(v10 + 15864) = 0u;
    *(v10 + 15816) = 0u;
    *(v10 + 15832) = 0u;
    *(v10 + 15784) = 0u;
    *(v10 + 15800) = 0u;
    *(v10 + 15752) = 0u;
    *(v10 + 15768) = 0u;
    *(v10 + 15720) = 0u;
    *(v10 + 15736) = 0u;
    *(v10 + 15688) = 0u;
    *(v10 + 15704) = 0u;
    *(v10 + 15656) = 0u;
    *(v10 + 15672) = 0u;
    *(v10 + 15624) = 0u;
    *(v10 + 15640) = 0u;
    *(v10 + 15592) = 0u;
    *(v10 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize(bvh_builder, a3, 0, var0, var1);
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v10 = self->_impl;
    self->_bvh_builder = v10 + 15592;
    *(v10 + 1985) = 0;
    *(v10 + 15848) = 0u;
    *(v10 + 15864) = 0u;
    *(v10 + 15816) = 0u;
    *(v10 + 15832) = 0u;
    *(v10 + 15784) = 0u;
    *(v10 + 15800) = 0u;
    *(v10 + 15752) = 0u;
    *(v10 + 15768) = 0u;
    *(v10 + 15720) = 0u;
    *(v10 + 15736) = 0u;
    *(v10 + 15688) = 0u;
    *(v10 + 15704) = 0u;
    *(v10 + 15656) = 0u;
    *(v10 + 15672) = 0u;
    *(v10 + 15624) = 0u;
    *(v10 + 15640) = 0u;
    *(v10 + 15592) = 0u;
    *(v10 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v18, bvh_builder, 48, 1);
  v12 = v18;
  v11 = v19;
  v13 = [objc_msgSend(a3 "buffer")];
  v14 = [a3 bufferOffset] + v13;
  v15 = [a3 size];
  *v12 = v14;
  *(v12 + 8) = v15;
  *(v12 + 16) = var0;
  *(v12 + 24) = 8;
  *(v12 + 32) = 0;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSize(AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,MTLDataType,BOOL)::skipCompaction = 0;
  }

  *(v12 + 40) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSize(AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,MTLDataType,BOOL)::skipCompaction ^ 1;
  [objc_msgSend(a3 "buffer")];
  [a3 bufferOffset];
  [objc_msgSend(a3 "buffer")];
  [a3 bufferOffset];
  [objc_msgSend(a3 "buffer")];
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSize(AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,MTLDataType,BOOL)::verify = 0;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSize(AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,MTLDataType,BOOL)::verify == 1)
  {
    [*bvh_builder[2] addCompletedHandler:&__block_literal_global_375];
  }

  if (*(bvh_builder + 49) == 1)
  {
    if (var0 == -52)
    {
      v16 = 4;
    }

    else
    {
      v16 = 8;
    }

    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(bvh_builder, 2, a3, 0, var0, var1, var0, v16, 0, 0);
    v18 = v11;
    std::vector<unsigned long long>::push_back[abi:nn200100](BatchForCommand + 216, &v18);
  }

  else
  {
    v18 = v11;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(bvh_builder, &v18, 1);
  }
}

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v9 = self->_impl;
    self->_bvh_builder = v9 + 15592;
    *(v9 + 1985) = 0;
    *(v9 + 15848) = 0u;
    *(v9 + 15864) = 0u;
    *(v9 + 15816) = 0u;
    *(v9 + 15832) = 0u;
    *(v9 + 15784) = 0u;
    *(v9 + 15800) = 0u;
    *(v9 + 15752) = 0u;
    *(v9 + 15768) = 0u;
    *(v9 + 15720) = 0u;
    *(v9 + 15736) = 0u;
    *(v9 + 15688) = 0u;
    *(v9 + 15704) = 0u;
    *(v9 + 15656) = 0u;
    *(v9 + 15672) = 0u;
    *(v9 + 15624) = 0u;
    *(v9 + 15640) = 0u;
    *(v9 + 15592) = 0u;
    *(v9 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(bvh_builder, a3, a4, 0);
}

- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (!bvh_builder)
  {
    v10 = self->_impl;
    self->_bvh_builder = v10 + 15592;
    *(v10 + 1985) = 0;
    *(v10 + 15848) = 0u;
    *(v10 + 15864) = 0u;
    *(v10 + 15816) = 0u;
    *(v10 + 15832) = 0u;
    *(v10 + 15784) = 0u;
    *(v10 + 15800) = 0u;
    *(v10 + 15752) = 0u;
    *(v10 + 15768) = 0u;
    *(v10 + 15720) = 0u;
    *(v10 + 15736) = 0u;
    *(v10 + 15688) = 0u;
    *(v10 + 15704) = 0u;
    *(v10 + 15656) = 0u;
    *(v10 + 15672) = 0u;
    *(v10 + 15624) = 0u;
    *(v10 + 15640) = 0u;
    *(v10 + 15592) = 0u;
    *(v10 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
    bvh_builder = self->_bvh_builder;
  }

  v14 = a4;
  v15 = a3;
  if (*(bvh_builder + 49) == 1)
  {
    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(bvh_builder, 3, a3, a4, 0, -1, 0, 0, 0, 0);
    v13 = a3;
    std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](BatchForCommand + 144, &v13);
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = a3;
    }

    v13 = v12;
    std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](BatchForCommand + 168, &v13);
  }

  else
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(bvh_builder, &v15, &v14, 1uLL, v4);
  }
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7
{
  v165 = a7;
  v206 = *MEMORY[0x29EDCA608];
  *(self->_impl + 572) |= 4u;
  if ((self->_bvhBarrierBeforeStages & 0x20000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  if (!self->_bvh_builder)
  {
    v12 = self->_impl;
    self->_bvh_builder = v12 + 15592;
    *(v12 + 1985) = 0;
    *(v12 + 15848) = 0u;
    *(v12 + 15864) = 0u;
    *(v12 + 15816) = 0u;
    *(v12 + 15832) = 0u;
    *(v12 + 15784) = 0u;
    *(v12 + 15800) = 0u;
    *(v12 + 15752) = 0u;
    *(v12 + 15768) = 0u;
    *(v12 + 15720) = 0u;
    *(v12 + 15736) = 0u;
    *(v12 + 15688) = 0u;
    *(v12 + 15704) = 0u;
    *(v12 + 15656) = 0u;
    *(v12 + 15672) = 0u;
    *(v12 + 15624) = 0u;
    *(v12 + 15640) = 0u;
    *(v12 + 15592) = 0u;
    *(v12 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(self->_bvh_builder, self->_device, self);
  }

  {
    [AGXG18PFamilyComputeContext_mtlnext refitAccelerationStructure:descriptor:destination:scratchBuffer:options:]::forceBuildOnRefit = 0;
  }

  if ([AGXG18PFamilyComputeContext_mtlnext refitAccelerationStructure:descriptor:destination:scratchBuffer:options:]::forceBuildOnRefit == 1)
  {
    v167 = 0uLL;
    *&v168 = 0;
    device = self->_device;
    if (device)
    {
      [(AGXG18PFamilyDevice *)device accelerationStructureSizesWithDescriptor:a4, a4, a5, a6.var0, a6.var1];
    }

    v14 = a5;
    if (v167 > [a3 size])
    {
      v14 = [(AGXG18PFamilyDevice *)self->_device newAccelerationStructureWithSize:v167];
    }

    v15 = [(AGXG18PFamilyDevice *)self->_device newBufferWithLength:*(&v167 + 1) options:32];
    -[AGXG18PFamilyComputeContext_mtlnext buildAccelerationStructure:descriptor:scratchBuffer:](self, "buildAccelerationStructure:descriptor:scratchBuffer:", v14, a4, [v15 gpuAddress], objc_msgSend(v15, "length"));
    if (v14 != a5)
    {
      [(AGXG18PFamilyComputeContext_mtlnext *)self copyAndCompactAccelerationStructure:v14 toAccelerationStructure:a5];
    }

    return;
  }

  context = objc_autoreleasePoolPush();
  bvh_builder = self->_bvh_builder;
  [a5 accelerationStructureUniqueIdentifier];
  if (a3 != a5)
  {
    [objc_msgSend(a5 "buffer")];
    [a5 bufferOffset];
    [a5 size];
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::newBVHDescriptor(&v187, a4, 1);
  if (BYTE2(v188) == 6 && (v194 - 3) >= 2)
  {
    v18 = [a4 instancedAccelerationStructures];
    v19 = [v18 count];
    v20 = v19;
    if (v19 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v19;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v167, bvh_builder, 8 * v21, 0);
    if (v20)
    {
      v22 = 0;
      v23 = *(&v167 + 1);
      do
      {
        v24 = [v18 objectAtIndexedSubscript:v22];
        v25 = [objc_msgSend(v24 "buffer")];
        *(v23 + 8 * v22++) = [v24 bufferOffset] + v25;
      }

      while (v20 != v22);
    }

    v17 = v167;
    v26 = [v18 count];
    if ([v18 count] < 2)
    {
      v27 = 4;
    }

    else
    {
      v27 = 4 * [v18 count];
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v167, bvh_builder, v27, 0);
    if (v26)
    {
      v28 = 0;
      v29 = *(&v167 + 1);
      do
      {
        *(v29 + 4 * v28) = *([v18 objectAtIndexedSubscript:v28] + 360);
        ++v28;
      }

      while (v26 != v28);
    }

    v16 = v167;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v167 = 0u;
  v168 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newResourceBuffer(v186, bvh_builder, &v187, a4, &v167);
  v161 = v187;
  if (a5)
  {
    v30 = [a5 buffer];
    if (v30)
    {
      v31 = a3 == a5;
    }

    else
    {
      v31 = 1;
    }

    if (v30)
    {
      v32 = a5;
    }

    else
    {
      v32 = a3;
    }

    if (v31)
    {
      v162 = 0;
    }

    else
    {
      v33 = [a3 buffer];
      v162 = 1;
      if (v33 == [a5 buffer])
      {
        v34 = [a3 bufferOffset];
        if (v34 == [a5 bufferOffset])
        {
          v162 = 0;
        }
      }

      v32 = a5;
    }
  }

  else
  {
    v162 = 0;
    v32 = a3;
  }

  v164 = v32;
  v35 = [v32 buffer];
  v36 = [v164 bufferOffset];
  v37 = [v35 gpuAddress];
  v38 = [v35 length];
  if ((BYTE2(v188) & 0xFE) == 6 || (v165 & 3) != 0)
  {
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v43 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v203, bvh_builder, 128, 0);
    v158 = v37;
    v159 = v36;
    v44 = v165 & 1;
    v45 = v203;
    v155 = v204;
    v156 = v205;
    *(v203 + 96) = 0u;
    *(v45 + 112) = 0u;
    *(v45 + 64) = 0u;
    *(v45 + 80) = 0u;
    *(v45 + 32) = 0u;
    *(v45 + 48) = 0u;
    *v45 = 0u;
    *(v45 + 16) = 0u;
    v157 = HIBYTE(v187);
    {
      v44 = v165 & 1;
      if (v43)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
        v44 = v165 & 1;
      }
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 0)
    {
      v46 = 3;
    }

    else
    {
      v46 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride;
    }

    *(v45 + 16) = *&v186[0];
    *(v45 + 122) = 0;
    *(v45 + 101) = v44;
    *(v45 + 102) = (v165 & 2) != 0;
    v160 = v46;
    {
      v46 = v160;
      if (v43)
      {
        AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
        v46 = v160;
      }
    }

    *(v45 + 103) = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild | ((BYTE12(v188) & 2) >> 1);
    {
      v46 = v160;
      if (v43)
      {
        if (v160 > 4)
        {
          v148 = 0;
        }

        else
        {
          v148 = dyld_program_sdk_at_least() ^ 1;
        }

        shouldUpdateOpacityAndShaderTableOffsets::updateOpacityAndShaderTableOffsets = v148;
        v46 = v160;
      }
    }

    *(v45 + 107) = shouldUpdateOpacityAndShaderTableOffsets::updateOpacityAndShaderTableOffsets;
    {
      v46 = v160;
      if (v43)
      {
        v46 = v160;
      }
    }

    if (v46 <= 4)
    {
      {
        v46 = v160;
        if (v43)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
          v46 = v160;
        }
      }

      {
        v46 = v160;
        if (v43)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          v46 = v160;
        }
      }

      if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (BYTE12(v188)))
      {
        goto LABEL_73;
      }

      {
        v151 = v47;
        v47 = v151;
        v46 = v160;
        if (v43)
        {
          v151[2824] = 0;
          v47 = v151;
          v46 = v160;
        }
      }

      if (v47[2824])
      {
LABEL_73:
        LOBYTE(v48) = 1;
      }

      else
      {
        v48 = (BYTE12(v188) >> 1) & 1;
      }
    }

    else
    {
      LOBYTE(v48) = 0;
    }

    *(v45 + 106) = v48;
    *(v45 + 108) = v187;
    v49 = BYTE2(v188);
    if ((BYTE2(v188) & 0xFE) == 6)
    {
      v50 = v194;
      if (v46 >= 5)
      {
        v51 = 44;
      }

      else
      {
        v51 = 48;
      }

      v204 = v51 | 0x8000000000;
      v203 = 0x8000000080;
      LODWORD(v205) = v51;
      v199 = 655369;
      if ((HIBYTE(v187) & (v195 == 1)) != 0)
      {
        v52 = 13;
      }

      else
      {
        v52 = 12;
      }

      v200 = v52;
      v201 = 11;
      if ((HIBYTE(v187) & (v195 == 1)) != 0)
      {
        v53 = 15;
      }

      else
      {
        v53 = 14;
      }

      if (v194 >= 4)
      {
        v50 = 4;
      }

      v54 = *(&v203 + v50);
      v202 = v53;
      *(v45 + 88) = v54;
      *(v45 + 96) = 0;
      *(v45 + 56) = 1;
      v55 = *(&v191 + 1);
      *(v45 + 104) = *(&v194 + 1) == 1;
      *(v45 + 24) = v55;
      v56 = v192;
      *(v45 + 120) = *(&v199 + v50);
      if ((BYTE12(v188) & 4) != 0)
      {
        v57 = -1;
      }

      else
      {
        v57 = 255;
      }

      *(v45 + 112) = v56;
      *(v45 + 116) = v57;
      *(v45 + 40) = v16;
      *(v45 + 48) = v17;
      v58 = bvh_builder;
      goto LABEL_90;
    }

    v58 = bvh_builder;
    if (!DWORD2(v189))
    {
LABEL_154:
      {
        v149 = v47;
        v47 = v149;
        v46 = v160;
        if (v150)
        {
          v149[2824] = 0;
          v47 = v149;
          v46 = v160;
        }
      }

      v84 = isQTBEnabled(v46, &v187, (v47[2824] | (HIDWORD(v188) >> 1)) & 1, 1);
      *(v45 + 100) = v84;
      if (*(v45 + 56) < 3u)
      {
        v86 = v84;
      }

      else
      {
        v86 = 0;
      }

      *(v45 + 105) = v86;
      *v45 = v158 + v159;
      *(v45 + 8) = v38;
      v87 = v58[3];
      if (v87)
      {
        v88 = *MEMORY[0x29EDC5638];
        *(v45 + 32) = *(v87 + v88 + 8);
        v89 = v58[2];
        if (*(v87 + v88 + 16) >> 61 == 3)
        {
          v90 = *(v87 + 312);
          IOGPUResourceListAddResource();
          v91 = *(v90 + 64);
          v92 = *(v90 + 72);
          while (v91 != v92)
          {
            if (*v91)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v91);
              IOGPUResourceListAddResource();
            }

            v91 += 2;
          }
        }

        AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v89, v87, v85, 1, 1);
      }

      if ((v157 & 2) != 0)
      {
        v93 = 1;
      }

      else if ((*(v45 + 56) - 1) <= 1)
      {
        v93 = 1;
      }

      else
      {
        v93 = *(v45 + 56) - 1;
      }

      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
      }

      *(v45 + 123) = v161 - 1;
      *(v45 + 124) = v93;
      v94 = *(v45 + 100);
      v169 = v189;
      v170 = v190;
      v171 = v191;
      v172 = v192;
      v167 = v187;
      v168 = v188;
      v173 = v193;
      v174 = v194;
      v179 = v198;
      v177 = v197[0];
      v178 = v197[1];
      v175 = v195;
      v176 = v196;
      v39 = a3;
      *&v180 = v39;
      v95 = v164;
      v40 = v95;
      if (v160 > 1)
      {
        v96 = v94;
      }

      else
      {
        v96 = 0;
      }

      v97 = v96 & v165 & 1;
      if (v162)
      {
        v98 = 32;
      }

      else
      {
        v98 = 0;
      }

      v41 = (v98 & 0xFFFFFFF3 | (4 * (v165 & 3)) | v157 & 2 | v97) ^ 2;
      *(&v180 + 1) = v95;
      *&v181 = v155;
      *(&v181 + 1) = v45;
      *&v182 = 128;
      *(&v182 + 1) = v156;
      v42 = bvh_builder;
      goto LABEL_180;
    }

    v59 = v196;
    v60 = 1;
    *(v45 + 96) = 1;
    v61 = v197[0];
    *(v45 + 56) = v197[0];
    if (v61 >= 2)
    {
      *(v45 + 64) = *(&v197[1] + 4);
      *(v45 + 72) = *(v197 + 12);
      *(v45 + 60) = 64;
    }

    *(v45 + 80) = 1;
    if (v49 > 5)
    {
      v67 = 0;
      goto LABEL_143;
    }

    if (((1 << v49) & 9) != 0)
    {
      if (v61 < 2)
      {
        v72 = v47;
        v73 = v46;
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, &v187, v46) == 3)
        {
          v74 = 0x2400000024;
          v75 = 1;
        }

        else if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, &v187, v73) == 2)
        {
          v74 = 0x4000000040;
          v75 = 2;
        }

        else
        {
          v75 = 0;
          v74 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v73 < 5), 0x1FuLL)), 0x4000000030, 0x3C0000002CLL);
        }

        v46 = v73;
        v47 = v72;
        *(v45 + 88) = v74;
        *(v45 + 120) = v75;
        if (BYTE1(v188) != 2)
        {
          v67 = 0;
          v60 = 1;
          *(v45 + 122) = 1;
          goto LABEL_143;
        }

        {
          v47 = v72;
          v46 = v160;
          if (v153)
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupRefit(AGXG18PFamilyRayTracingAccelerationStructure *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,unsigned long long,unsigned long long,unsigned long long,BOOL,BOOL)::enableMultiQtbRefitForPLOC = 0;
            v47 = v72;
            v46 = v160;
          }
        }

        {
          v47 = v72;
          v46 = v160;
          if (v154)
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupRefit(AGXG18PFamilyRayTracingAccelerationStructure *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,unsigned long long,unsigned long long,unsigned long long,BOOL,BOOL)::enableMultiQtbRefitForTopDown = 1;
            v47 = v72;
            v46 = v160;
          }
        }

        if (BYTE4(v187) || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupRefit(AGXG18PFamilyRayTracingAccelerationStructure *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,unsigned long long,unsigned long long,unsigned long long,BOOL,BOOL)::enableMultiQtbRefitForTopDown & 1) == 0)
        {
          v77 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupRefit(AGXG18PFamilyRayTracingAccelerationStructure *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,unsigned long long,unsigned long long,unsigned long long,BOOL,BOOL)::enableMultiQtbRefitForPLOC;
        }

        else
        {
          v77 = 1;
        }

        v67 = 0;
        if ((v77 & (v161 < 0x14)) != 0)
        {
          v68 = 3;
        }

        else
        {
          v68 = 4;
        }
      }

      else
      {
        v67 = 0;
        *(v45 + 88) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v46 < 5), 0x1FuLL)), 0x8000000060, 0x7000000054);
        *(v45 + 120) = 3;
        v68 = 2;
      }

      *(v45 + 122) = v68;
      v60 = 1;
    }

    else if (((1 << v49) & 0x12) != 0)
    {
      v60 = 0;
      if (v46 >= 5)
      {
        v62 = 60;
      }

      else
      {
        v62 = 64;
      }

      if (v46 >= 5)
      {
        v63 = 32;
      }

      else
      {
        v63 = 48;
      }

      v64 = v61 > 1;
      if (v61 <= 1)
      {
        v65 = 4;
      }

      else
      {
        v65 = 5;
      }

      *(v45 + 120) = v65;
      if (v64)
      {
        v66 = v62;
      }

      else
      {
        v66 = v63;
      }

      *(v45 + 88) = v66;
      *(v45 + 92) = v66;
      v67 = 1;
    }

    else
    {
      if (v61 < 2)
      {
        {
          v152 = v47;
          v47 = v152;
          v46 = v160;
          if (v43)
          {
            getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode = 1;
            v47 = v152;
            v46 = v160;
          }
        }

        if (getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode == 1)
        {
          v76 = v47;
          AGX::BVHDescriptor::isRefittable(v43);
          v47 = v76;
          v46 = v160;
        }

        if (v46 >= 5)
        {
          v69 = 16;
        }

        else
        {
          v69 = 32;
        }

        v70 = 6;
        v71 = 88;
      }

      else
      {
        if (v46 >= 5)
        {
          v69 = 28;
        }

        else
        {
          v69 = 32;
        }

        *(v45 + 88) = v69;
        v70 = 7;
        v71 = 92;
      }

      v60 = 0;
      v67 = 0;
      *(v45 + v71) = v69;
      *(v45 + 120) = v70;
      *(v45 + 92) = v69;
    }

LABEL_143:
    if (v59)
    {
      v78 = *(v45 + 56);
      if (v60)
      {
        v79 = vdup_n_s32(v78 > 1);
        if (v46 > 4)
        {
          v80 = 0x4C00000034;
          v81 = 0x7C0000005CLL;
        }

        else
        {
          v80 = 0x6000000040;
          v81 = 0x8000000060;
        }

        *(v45 + 88) = vbsl_s8(vcltz_s32(vshl_n_s32(v79, 0x1FuLL)), v81, v80);
        goto LABEL_154;
      }

      if (v67)
      {
        v82 = v78 > 1;
        if (v46 > 4)
        {
          v54 = 40;
          v83 = 68;
        }

        else
        {
          v54 = 48;
          v83 = 96;
        }
      }

      else
      {
        v82 = v78 > 1;
        if (v46 > 4)
        {
          v54 = 24;
          v83 = 36;
        }

        else
        {
          v54 = 32;
          v83 = 48;
        }
      }

      if (v82)
      {
        v54 = v83;
      }

      *(v45 + 88) = v54;
      goto LABEL_90;
    }

    if ((v60 & 1) == 0)
    {
      v54 = *(v45 + 88);
LABEL_90:
      *(v45 + 92) = v54;
      goto LABEL_154;
    }

    goto LABEL_154;
  }

  v177 = v197[0];
  v178 = v197[1];
  v179 = v198;
  v173 = v193;
  v174 = v194;
  v175 = v195;
  v176 = v196;
  v169 = v189;
  v170 = v190;
  v171 = v191;
  v172 = v192;
  v167 = v187;
  v168 = v188;
  v39 = a3;
  *&v180 = v39;
  v40 = v164;
  *(&v180 + 1) = v40;
  if (v162)
  {
    v41 = 34;
  }

  else
  {
    v41 = 2;
  }

  v181 = 0u;
  v182 = 0u;
  v42 = bvh_builder;
LABEL_180:
  v184 = v186[1];
  v183 = v186[0];
  v185 = v41;
  if (*(v42 + 49) == 1)
  {
    if (a5)
    {
      v99 = a5;
    }

    else
    {
      v99 = a3;
    }

    v101 = (BYTE2(v188) & 0xFE) == 6 && (v194 - 3) < 2;
    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(v42, 1, a3, v99, 0, -1, 0, 0, v18, v101);
    v103 = BatchForCommand;
    v105 = BatchForCommand[16];
    v104 = BatchForCommand[17];
    if (v105 >= v104)
    {
      v119 = BatchForCommand[15];
      v120 = 0x8E38E38E38E38E39 * ((v105 - v119) >> 5) + 1;
      if (v120 > 0xE38E38E38E38E3)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v121 = 0x8E38E38E38E38E39 * ((v104 - v119) >> 5);
      if (2 * v121 > v120)
      {
        v120 = 2 * v121;
      }

      if (v121 >= 0x71C71C71C71C71)
      {
        v122 = 0xE38E38E38E38E3;
      }

      else
      {
        v122 = v120;
      }

      if (v122)
      {
        if (v122 <= 0xE38E38E38E38E3)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v123 = v178;
      v124 = 32 * ((v105 - v119) >> 5);
      *(v124 + 160) = v177;
      *(v124 + 176) = v123;
      *(v124 + 192) = v179;
      v125 = v174;
      *(v124 + 96) = v173;
      *(v124 + 112) = v125;
      v126 = v176;
      *(v124 + 128) = v175;
      *(v124 + 144) = v126;
      v127 = v170;
      *(v124 + 32) = v169;
      *(v124 + 48) = v127;
      v128 = v172;
      *(v124 + 64) = v171;
      *(v124 + 80) = v128;
      v129 = v168;
      *v124 = v167;
      *(v124 + 16) = v129;
      v130 = v180;
      v180 = 0uLL;
      *(v124 + 200) = v130;
      *(v124 + 232) = v182;
      *(v124 + 248) = v183;
      *(v124 + 264) = v184;
      *(v124 + 280) = v185;
      v118 = v124 + 288;
      v131 = v124 - (v105 - v119);
      *(v124 + 216) = v181;
      if (v119 != v105)
      {
        v132 = v119;
        v133 = 32 * ((v105 - v119) >> 5) - (v105 - v119);
        do
        {
          *v133 = *v132;
          v134 = *(v132 + 1);
          v135 = *(v132 + 2);
          v136 = *(v132 + 4);
          *(v133 + 48) = *(v132 + 3);
          *(v133 + 64) = v136;
          *(v133 + 16) = v134;
          *(v133 + 32) = v135;
          v137 = *(v132 + 5);
          v138 = *(v132 + 6);
          v139 = *(v132 + 8);
          *(v133 + 112) = *(v132 + 7);
          *(v133 + 128) = v139;
          *(v133 + 80) = v137;
          *(v133 + 96) = v138;
          v140 = *(v132 + 9);
          v141 = *(v132 + 10);
          v142 = *(v132 + 11);
          *(v133 + 192) = v132[24];
          *(v133 + 160) = v141;
          *(v133 + 176) = v142;
          *(v133 + 144) = v140;
          v143 = v132[25];
          v132[25] = 0;
          *(v133 + 200) = v143;
          v144 = v132[26];
          v132[26] = 0;
          *(v133 + 208) = v144;
          *(v133 + 216) = *(v132 + 27);
          v145 = *(v132 + 29);
          v146 = *(v132 + 31);
          v147 = *(v132 + 33);
          *(v133 + 280) = *(v132 + 70);
          *(v133 + 264) = v147;
          *(v133 + 248) = v146;
          *(v133 + 232) = v145;
          v132 += 36;
          v133 += 288;
        }

        while (v132 != v105);
        do
        {

          v119 += 36;
        }

        while (v119 != v105);
        v119 = v103[15];
      }

      v103[15] = v131;
      v103[16] = v118;
      v103[17] = 0;
      if (v119)
      {
        operator delete(v119);
      }
    }

    else
    {
      *v105 = v167;
      v106 = v168;
      v107 = v169;
      v108 = v171;
      *(v105 + 48) = v170;
      *(v105 + 64) = v108;
      *(v105 + 16) = v106;
      *(v105 + 32) = v107;
      v109 = v172;
      v110 = v173;
      v111 = v175;
      *(v105 + 112) = v174;
      *(v105 + 128) = v111;
      *(v105 + 80) = v109;
      *(v105 + 96) = v110;
      v112 = v176;
      v113 = v177;
      v114 = v178;
      *(v105 + 192) = v179;
      *(v105 + 160) = v113;
      *(v105 + 176) = v114;
      *(v105 + 144) = v112;
      *&v180 = 0;
      *(v105 + 200) = v39;
      *(&v180 + 1) = 0;
      *(v105 + 208) = v40;
      *(v105 + 216) = v181;
      v115 = v184;
      v116 = v182;
      v117 = v183;
      *(v105 + 280) = v185;
      *(v105 + 264) = v115;
      *(v105 + 248) = v117;
      *(v105 + 232) = v116;
      v118 = v105 + 288;
    }

    v103[16] = v118;
  }

  else
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(v42, &v167, 1);
  }

  objc_autoreleasePoolPop(context);
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5
{
  v5 = MEMORY[0x2A1C7C4A8](self);
  v7 = v6;
  v682 = v8;
  v10 = v9;
  v680 = v11;
  v12 = v5;
  *(*(v5 + 72) + 2288) |= 4u;
  if ((*(v5 + 123) & 0x20) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(*(v5 + 96));
    v13 = *(v12 + 72);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v13, 22, *(v12 + 128), 0, 0);
    *(v13 + 2306) = 0;
    if (*(v13 + 2292) == 1 && !*(v13 + 4976))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v13, 22, (v13 + 5544), (v13 + 5552), (v13 + 5560));
    }

    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
  }

  if (!*(v12 + 96))
  {
    v14 = *(v12 + 72);
    *(v12 + 96) = v14 + 15592;
    *(v14 + 15880) = 0;
    *(v14 + 15848) = 0u;
    *(v14 + 15864) = 0u;
    *(v14 + 15816) = 0u;
    *(v14 + 15832) = 0u;
    *(v14 + 15784) = 0u;
    *(v14 + 15800) = 0u;
    *(v14 + 15752) = 0u;
    *(v14 + 15768) = 0u;
    *(v14 + 15720) = 0u;
    *(v14 + 15736) = 0u;
    *(v14 + 15688) = 0u;
    *(v14 + 15704) = 0u;
    *(v14 + 15656) = 0u;
    *(v14 + 15672) = 0u;
    *(v14 + 15624) = 0u;
    *(v14 + 15640) = 0u;
    *(v14 + 15592) = 0u;
    *(v14 + 15608) = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(*(v12 + 96), *(v12 + 112), v12);
  }

  context = objc_autoreleasePoolPush();
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::newBVHDescriptor(v1155, v10, 0);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
  }

  LODWORD(v15) = v1167;
  v16 = v1162;
  if (!v1156 && v1169 && !v1162 && v1157 == 3)
  {
    v17 = 0x3FFFFFFFLL;
    if ((v1166 & 4) == 0)
    {
      v17 = 0xFFFFFFFLL;
    }

    v18 = v1180 + -1.0;
    if (v18 < 0.0)
    {
      v18 = 0.0;
    }

    v15 = vcvtpd_u64_f64(v18 * v1167) + v1167;
    if (v17 < v15)
    {
      LODWORD(v15) = v17;
    }
  }

  if ((v1160 & 2) != 0 && v1177 >= 2)
  {
    LODWORD(v15) = v15 * (v1177 - 1);
  }

  if (v15 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v15;
  }

  v20 = AGX::BVHDescriptor::maxInnerNodeCount(v1155);
  {
    getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode = 1;
  }

  v681 = v10;
  if (getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode != 1)
  {
    goto LABEL_33;
  }

  {
    if (v431)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
    }
  }

  {
    if (v432)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
    }
  }

  if ((v21[2792] & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (v1166 & 1) == 0)
  {
    v22 = getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode;
  }

  else
  {
LABEL_33:
    v22 = 0;
  }

  v23 = (v20 << 6) + 128;
  v24 = v1162;
  v683 = v7;
  v679 = v12;
  v684 = v16;
  if ((v1162 & 0xFE) == 6)
  {
    if (v1160)
    {
      v665 = v1172;
      v27 = 9;
      v26 = 48;
      v673 = v1173;
    }

    else
    {
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen >= 5)
      {
        v26 = 132;
      }

      else
      {
        v26 = 128;
      }

      v27 = 8;
      v673 = 48;
      v665 = v1171;
    }

    v33 = 0;
    v662 = 0;
    v23 += v1171 * ((v26 + 63) & 0xC0);
    v34 = 16 * v1171 + 143;
    v35 = 63;
    goto LABEL_133;
  }

  if (!v1169)
  {
    v33 = 0;
    v662 = 0;
    v673 = 0;
    v665 = 0;
    v26 = 0;
    v27 = 0;
    v34 = 143;
    v35 = 63;
    goto LABEL_133;
  }

  v674 = v1169;
  v28 = v1175;
  v29 = v1177;
  if (v1162 > 5u)
  {
    goto LABEL_65;
  }

  if (((1 << v1162) & 9) == 0)
  {
    if (((1 << v1162) & 0x12) != 0)
    {
      v666 = 0;
      v690 = 0;
      if (v1177 <= 1)
      {
        v30 = 32;
      }

      else
      {
        v30 = 60;
      }

      if (v1177 <= 1)
      {
        v31 = 4;
      }

      else
      {
        v31 = 5;
      }

      v32 = 1;
    }

    else
    {
      v666 = 0;
      v32 = 0;
      if (v1177 <= 1)
      {
        v30 = 16;
      }

      else
      {
        v30 = 28;
      }

      if (v1177 <= 1)
      {
        v31 = 6;
      }

      else
      {
        v31 = 7;
      }

      v690 = 1;
    }

    goto LABEL_66;
  }

  if (v1161 == 2)
  {
    if (v1177 <= 1)
    {
      PrimLeafEncodingMode = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(2, v1155, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen);
      v666 = 0;
      v32 = 0;
      v690 = 0;
      v131 = PrimLeafEncodingMode == 3;
      v31 = 2;
      if (v131)
      {
        v30 = 36;
      }

      else
      {
        v30 = 60;
      }
    }

    else
    {
      v666 = 0;
      v32 = 0;
      v690 = 0;
      v31 = 3;
      v30 = 112;
    }

    goto LABEL_66;
  }

  if (v1161)
  {
LABEL_65:
    v30 = 0;
    v666 = 0;
    v31 = 0;
    v32 = 0;
    v690 = 0;
    goto LABEL_66;
  }

  if (v1177 <= 1)
  {
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, v1155, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen) == 3)
    {
      v31 = 0;
      v32 = 0;
      v690 = 0;
      v666 = 8;
      v30 = 36;
    }

    else
    {
      v415 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, v1155, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen);
      v32 = 0;
      v690 = 0;
      v416 = v415 == 2;
      v31 = 0;
      v417 = v416;
      if (v416)
      {
        v30 = -1;
      }

      else
      {
        v30 = 44;
      }

      v666 = 8 * v417;
    }
  }

  else
  {
    v666 = 0;
    v32 = 0;
    v690 = 0;
    v31 = 1;
    v30 = 84;
  }

LABEL_66:
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
  {
    v37 = v31;
    v38 = v29;
    v39 = v22;
    v40 = v19;
    v41 = v32;
    v42 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v31, v1155, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen);
    v32 = v41;
    v19 = v40;
    v22 = v39;
    v29 = v38;
    if (v42 == 2)
    {
      v26 = -1;
    }

    else
    {
      v26 = v30 + 4;
    }
  }

  else
  {
    v36 = v30 + 4;
    v37 = v31;
    if ((v30 + 4) >= 5)
    {
      if (v36 >= 9)
      {
        if (v36 >= 0x11)
        {
          if (v36 >= 0x21)
          {
            if (v36 >= 0x31)
            {
              if (v36 >= 0x41)
              {
                if (v36 <= 0x60)
                {
                  v26 = 96;
                }

                else
                {
                  v26 = 128;
                }
              }

              else
              {
                v26 = 64;
              }
            }

            else
            {
              v26 = 48;
            }
          }

          else
          {
            v26 = 32;
          }
        }

        else
        {
          v26 = 16;
        }
      }

      else
      {
        v26 = 8;
      }
    }

    else
    {
      v26 = 4;
    }
  }

  if (v28)
  {
    v27 = v37;
    if (v24 != 3 && v24)
    {
      if (v32)
      {
        v43 = v674;
        v44 = v29 > 1;
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
        {
          v45 = 40;
          v46 = 68;
        }

        else
        {
          v45 = 48;
          v46 = 96;
        }
      }

      else
      {
        v43 = v674;
        v44 = v29 > 1;
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
        {
          v45 = 24;
          v46 = 36;
        }

        else
        {
          v45 = 32;
          v46 = 48;
        }
      }

      goto LABEL_112;
    }

    if (v1161 == 2)
    {
      v43 = v674;
      v44 = v29 > 1;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
      {
        v45 = 76;
        v46 = 124;
      }

      else
      {
        v45 = 96;
        v46 = 128;
      }

      goto LABEL_112;
    }

    v43 = v674;
    if (!v1161)
    {
      v44 = v29 > 1;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
      {
        v45 = 52;
        v46 = 92;
      }

      else
      {
        v45 = 64;
        v46 = 96;
      }

LABEL_112:
      if (v44)
      {
        v26 = v46;
      }

      else
      {
        v26 = v45;
      }

      if (v29 < 2)
      {
        goto LABEL_116;
      }

LABEL_81:
      if ((v1160 & 2) != 0)
      {
        v23 += (32 * v20 - 32) & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = (v20 << 6) + 256;
      }

      {
        if (v444)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
        }
      }

      {
        if (v445)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
        }
      }

      if (v21[2792] & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (v1166))
      {
        v33 = 0;
      }

      else
      {
        if (v1165 <= 1u)
        {
          v47 = 1;
        }

        else
        {
          v47 = v1165;
        }

        v33 = (v19 + v47 - 1) / v47;
      }

      goto LABEL_117;
    }
  }

  else
  {
    v43 = v674;
    v27 = v37;
  }

  if (v29 >= 2)
  {
    goto LABEL_81;
  }

LABEL_116:
  v33 = 0;
LABEL_117:
  if ((v690 & v22) == 1)
  {
    v48 = v19 << 6;
    if (v29 >= 2)
    {
      v48 = 0;
    }

    v23 += v48;
    v49 = ((v26 + 63) & 0x1FFFFFFC0) * v19;
  }

  else
  {
    v50 = v25[296];
    if (v50 < 5)
    {
      v49 = v19 * v26;
      if ((v26 & 0x3F) != 0)
      {
        if (v20 >= v19)
        {
          v53 = v19;
        }

        else
        {
          v53 = v20;
        }

        v49 = (v49 + 32 * v53 + 63) & 0xFFFFFFFFFFFFFFC0;
      }
    }

    else
    {
      v51 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v27, v1155, v50);
      v52 = v19 * v26;
      if (v51 == 2)
      {
        v52 = v19 << 6;
      }

      v49 = v52 + 60 * v20;
      if (v666)
      {
        v49 += 28 * v20 + v19 * v666;
      }
    }
  }

  v673 = 0;
  v665 = 0;
  v23 += v49;
  v662 = v29 - 1;
  v35 = 8 * v43 + 63;
  v34 = 143;
LABEL_133:
  v54 = v25[296];
  if (v33 >= v20)
  {
    v33 = v20;
  }

  {
    v422 = v54;
    v424 = v423;
    v54 = v422;
    if (v424)
    {
      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
      v54 = v422;
    }
  }

  v55 = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild;
  v56 = v1166;
  {
    v694 = v54;
    v426 = v425;
    v54 = v694;
    if (v426)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      v54 = v694;
    }
  }

  v57 = v56 & 2;
  {
    v695 = v54;
    v428 = v427;
    v54 = v695;
    if (v428)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      v54 = v695;
    }
  }

  v691 = v23 + (v33 << 7);
  v58 = v55 | (v57 >> 1);
  if (v21[2792])
  {
    v59 = 0;
  }

  else
  {
    if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
    {
      v59 = 1;
    }

    else
    {
      v59 = v1166 & 1;
    }
  }

  v61 = isQTBEnabled(v54, v1155, v58 & 1, v59);
  v62 = v1156;
  if (v61)
  {
    if (v1156 || (v1160 & 0x400) != 0)
    {
      v66 = 0.0;
      if (v27 <= 3)
      {
        v66 = flt_29D2F27A0[v27];
      }

      v67 = v19 / v20;
      if (v67 < 1.0)
      {
        v67 = 1.0;
      }

      v68 = vcvtps_u32_f32(fminf(((v67 + v66) + -1.0) / v66, 4.0) * v20);
      if (v68 <= 1)
      {
        v68 = 1;
      }

      v69 = v68 << 6;
    }

    else
    {
      v63 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v1155);
      if (v63 <= 1)
      {
        v64 = 1;
      }

      else
      {
        v64 = v63;
      }

      if (v27 > 3)
      {
        v65 = 0;
      }

      else
      {
        v65 = dword_29D2F2790[v27];
      }

      v404 = (v1164 + v65 - 1) / v65;
      if (v404 >= 4)
      {
        v404 = 4;
      }

      v69 = v64 * (v404 << 6);
      v405 = v19 + v1165 - 1;
      if ((v405 / v1165) << 8 < v69)
      {
        v69 = (v405 / v1165) << 8;
      }
    }

    v691 += v69;
  }

  v70 = v60[296];
  if (v70 == 1 && v62 != 2)
  {
    if (v691 <= 0x4000)
    {
      v72 = 0;
    }

    else
    {
      v71 = (16 * v26 + 319) & 0x1FFFFFFFC0;
      if (v26 <= 0xF)
      {
        v71 = 512;
      }

      v72 = (v691 - v71 + 0x3FFF) / (0x4000 - v71) * v71;
    }

    v691 += v72;
  }

  if (v62 == 1)
  {
    goto LABEL_173;
  }

  if (v62 != 2)
  {
    v77 = v691 + 63;
    if (v691 + 63 < 0x4000)
    {
      v74 = 0;
      v76 = 1;
LABEL_174:
      v75 = v691;
      goto LABEL_175;
    }

    if (v77 >= 0x400000)
    {
      v74 = 0;
      if (v77 >> 30)
      {
        if (v77 >> 38)
        {
          v76 = 8;
        }

        else
        {
          v76 = 4;
        }
      }

      else
      {
        v76 = 3;
      }

      goto LABEL_174;
    }

LABEL_173:
    v74 = 0;
    v76 = 2;
    goto LABEL_174;
  }

  v73 = (v1167 + v1178 - 1) / v1178;
  v74 = v73 + 1;
  v75 = (v691 + (v73 << 6) + 8 * (v73 + 1) + 63) & 0xFFFFFFFFFFFFFFC0;
  v76 = 2;
LABEL_175:
  if (v1162 != 3 && v1162)
  {
    v78 = 0;
  }

  else
  {
    v78 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(2 * (v1161 == 2), v1155, v70);
  }

  if (AGX::BVHDescriptor::requiresCompactionMetadata(v1155, v78))
  {
    if (v1156 == 2)
    {
      v80 = (v75 + 63) & 0xFFFFFFFFFFFFFFC0;
      v81 = 12 * v20 + 80 * v74;
    }

    else
    {
      v82 = 20;
      if (v691 + 63 < 0x3FFFC0)
      {
        v82 = 12;
      }

      v80 = (v20 * v82 + 83) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v75 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v75 = (v81 + v80 + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  else
  {
  }

  {
    if (v429)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
    }
  }

  {
    if (v430)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
    }
  }

  if (v79[2792] & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (v1166))
  {
    if (v1156 == 1)
    {
      v83 = (v75 + 63) & 0xFFFFFFFFFFFFFFC0;
      v84 = (v1167 + v1165 - 1) / v1165;
      if (v84 < 2)
      {
        v85 = 0;
      }

      else
      {
        v85 = 0;
        do
        {
          v85 += v84;
          v86 = v84 + 7;
          v84 = (v84 + 7) >> 3;
        }

        while (v86 > 0xF);
      }

      v88 = v84 + v85;
      if (v88 <= 1)
      {
        v88 = 1;
      }

      v87 = (v88 * v76 + 143) & 0x1FFFFFFC0;
    }

    else
    {
      if (v1156 == 2)
      {
        v75 = v20 * v76 + 80 * v74 + ((v75 + 63) & 0xFFFFFFFFFFFFFFC0);
        goto LABEL_207;
      }

      v87 = (v75 + 279) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v20 * v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    v75 = v87 + v83;
  }

LABEL_207:
  if (v1156 == 2)
  {
    v75 += 32 * v74;
    if (v60[296] == 1)
    {
      v89 = v1167 - 1;
      v90 = v1165 - 1;
      v91 = (v90 + v1178) / v1165;
      if (v91 < 2)
      {
        v92 = 0;
      }

      else
      {
        v92 = 0;
        do
        {
          v92 += v91;
          v93 = v91 + 7;
          v91 = (v91 + 7) >> 3;
        }

        while (v93 > 0xF);
      }

      v94 = v89 + v1179;
      v95 = v1178 + v89;
      LODWORD(v96) = v91 + v92;
      if (v91 + v92 <= 1)
      {
        LODWORD(v96) = 1;
      }

      v97 = (v96 << 6);
      if (v96 >= v1178)
      {
        v96 = v1178;
      }

      else
      {
        v96 = v96;
      }

      v98 = (v1178 * v26 + 32 * v96 + 63) & 0xFFFFFFFFFFFFFFC0;
      if ((v26 & 0x3F) == 0)
      {
        v98 = v1178 * v26;
      }

      v99 = (v97 + v98 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
      v100 = (16 * v26 + 319) & 0x1FFFFFFFC0;
      if (v26 <= 0xF)
      {
        v100 = 512;
      }

      v101 = 0x4000 - v100;
      v102 = (v90 + v1179) / v1165;
      v103 = (v99 - v100 + 16447) / (0x4000 - v100);
      if (v102 < 2)
      {
        v104 = 0;
      }

      else
      {
        v104 = 0;
        do
        {
          v104 += v102;
          v105 = v102 + 7;
          v102 = (v102 + 7) >> 3;
        }

        while (v105 > 0xF);
      }

      v106 = v94 / v1179;
      v107 = v103 + 1;
      v108 = v102 + v104;
      if (v108 <= 1)
      {
        v109 = 1;
      }

      else
      {
        v109 = v108;
      }

      v110 = v1179 * v26;
      if ((v26 & 0x3F) != 0)
      {
        if (v109 >= v1179)
        {
          v111 = v1179;
        }

        else
        {
          v111 = v109;
        }

        v110 = (v110 + 32 * v111 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      v112 = v100 * (v95 / v1178) * v107;
      v113 = v100 + v100 * ((v75 - v100 + 0x3FFF) / v101);
      if (v100 * v106 + v100 * v106 * (((((v109 << 6) + v110 + 0x3FFF) & 0xFFFFFFFFFFFFC000) - v100 + 16447) / v101) > v112)
      {
        v112 = v100 * v106 + v100 * v106 * (((((v109 << 6) + v110 + 0x3FFF) & 0xFFFFFFFFFFFFC000) - v100 + 16447) / v101);
      }

      if (v113 <= v112)
      {
        v113 = v112;
      }

      v75 += v113;
    }
  }

  v114 = v684 - 8;
  if ((v1160 & 2) != 0)
  {
    if (v114 > 0xFFFFFFFD)
    {
      goto LABEL_251;
    }

    goto LABEL_243;
  }

  if (v662 <= 1)
  {
    v418 = 1;
  }

  else
  {
    v418 = v662;
  }

  v420 = v60[296] <= 1u && v75 * v418 >= 0x4000 && v662 >= 2;
  v421 = (v75 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
  if (!v420)
  {
    v421 = v75;
  }

  v75 = v421 * v418;
  if (v114 <= 0xFFFFFFFD)
  {
LABEL_243:
    if (v1162 == 5 || v1162 == 2)
    {
      v115 = v1177;
      if (v1177 <= 1)
      {
        v115 = 1;
      }

      v75 = ((v75 + 15) & 0xFFFFFFFFFFFFFFF0) + (16 * v1168 * v115);
    }

    v116 = (v75 + 31) & 0xFFFFFFFFFFFFFFE0;
    if (!v1174)
    {
      v116 = v75;
    }

    v75 = v116 + v1174;
  }

LABEL_251:
  v1148[0] = 0;
  v1149 = (v35 + ((v34 + ((v75 + v665 * v673 + 63) & 0xFFFFFFFFFFFFFFC0)) & 0xFFFFFFFFFFFFFFC0)) & 0xFFFFFFFFFFFFFFC0;
  v117 = 0;
  v1150 = 0u;
  v1151 = 0u;
  v1152 = 0u;
  memset(v1153, 0, sizeof(v1153));
  v1154 = 0;
  v1008 = 0;
  v1009 = -1;
  v1010 = -1;
  v1011 = 0;
  v1013 = 0;
  v1014 = -1;
  v1015 = -1;
  v1016 = 0;
  v1018 = 0;
  v1019 = -1;
  v1020 = -1;
  v1021 = 0;
  v1023 = 0;
  v1024 = -1;
  v1025 = -1;
  v1026 = 0;
  v1030 = -1;
  v1028 = 0;
  v1029 = -1;
  v1031 = 0;
  v1033 = 0;
  v1034 = -1;
  v1035 = -1;
  v1036 = 0;
  v1038 = 0;
  v1039 = -1;
  v1040 = -1;
  v1041 = 0;
  v1043 = 0;
  v1044 = -1;
  v1045 = -1;
  v1046 = 0;
  v1048 = 0;
  v1049 = -1;
  v1050 = -1;
  v1051 = 0;
  v1055 = -1;
  v1053 = 0;
  v1054 = -1;
  v1056 = 0;
  v1058 = 0;
  v1059 = -1;
  v1060 = -1;
  v1061 = 0;
  v1063 = 0;
  v1064 = -1;
  v1065 = -1;
  v1066 = 0;
  v1068 = 0;
  v1069 = -1;
  v1070 = -1;
  v1071 = 0;
  v1073 = 0;
  v1074 = -1;
  v1075 = -1;
  v1076 = 0;
  v1080 = -1;
  v1078 = 0;
  v1079 = -1;
  v1081 = 0;
  v1085 = -1;
  v1083 = 0;
  v1084 = -1;
  v1086 = 0;
  v1088 = 0;
  v1090 = -1;
  v1089 = -1;
  v1091 = 0;
  v1093 = 0;
  v1095 = -1;
  v1094 = -1;
  v1096 = 0;
  v1098 = 0;
  v1100 = -1;
  v1099 = -1;
  v1101 = 0;
  v1103 = 0;
  v1105 = -1;
  v1104 = -1;
  v1106 = 0;
  v1108 = 0;
  v1110 = -1;
  v1109 = -1;
  v1111 = 0;
  v1113 = 0;
  v1115 = -1;
  v1114 = -1;
  v1116 = 0;
  v1118 = 0;
  v1120 = -1;
  v1119 = -1;
  v1121 = 0;
  v1123 = 0;
  v1125 = -1;
  v1124 = -1;
  v1126 = 0;
  v1128 = 0;
  v1130 = -1;
  v1129 = -1;
  v1131 = 0;
  v1133 = 0;
  v1135 = -1;
  v1134 = -1;
  v1136 = 0;
  v1138 = 0;
  v1140 = -1;
  v1139 = -1;
  v1141 = 0;
  v1143 = 0;
  v1145 = -1;
  v1144 = -1;
  v1146 = 0;
  HIDWORD(v1147) = 0;
  v706 = 0;
  v707 = -1;
  v708 = -1;
  v709 = 0;
  v711 = 0;
  v712 = -1;
  v713 = -1;
  v714 = 0;
  v716 = 0;
  v717 = -1;
  v718 = -1;
  v719 = 0;
  v721 = 0;
  v722 = -1;
  v723 = -1;
  v724 = 0;
  v728 = -1;
  v726 = 0;
  v727 = -1;
  v729 = 0;
  v731 = 0;
  v732 = -1;
  v733 = -1;
  v734 = 0;
  v736 = 0;
  v737 = -1;
  v738 = -1;
  v739 = 0;
  v741 = 0;
  v742 = -1;
  v743 = -1;
  LODWORD(v744) = 0;
  v745 = 0;
  v746 = -1;
  v747 = -1;
  LODWORD(v748) = 0;
  v751 = -1;
  v749 = 0;
  v750 = -1;
  LODWORD(v752) = 0;
  v753 = 0;
  v754 = -1;
  v755 = -1;
  v756 = 0;
  v758 = 0;
  v759 = -1;
  v760 = -1;
  v761 = 0;
  v763 = 0;
  v764 = -1;
  v765 = -1;
  v766 = 0;
  v768 = 0;
  v769 = -1;
  v770 = -1;
  v771 = 0;
  v775 = -1;
  v773 = 0;
  v774 = -1;
  v776 = 0;
  v780 = -1;
  v778 = 0;
  v779 = -1;
  v781 = 0;
  v783 = 0;
  v785 = -1;
  v784 = -1;
  v786 = 0;
  v788 = 0;
  v790 = -1;
  v789 = -1;
  v791 = 0;
  v793 = 0;
  v795 = -1;
  v794 = -1;
  v796 = 0;
  v798 = 0;
  v800 = -1;
  v799 = -1;
  v801 = 0;
  v803 = 0;
  v805 = -1;
  v804 = -1;
  v806 = 0;
  v808 = 0;
  v810 = -1;
  v809 = -1;
  v811 = 0;
  v813 = 0;
  v815 = -1;
  v814 = -1;
  v816 = 0;
  v818 = 0;
  v820 = -1;
  v819 = -1;
  v821 = 0;
  v823 = 0;
  v825 = -1;
  v824 = -1;
  LODWORD(v826) = 0;
  v827 = 0;
  v829 = -1;
  v828 = -1;
  LODWORD(v830) = 0;
  v831 = 0;
  v833 = -1;
  v832 = -1;
  LODWORD(v834) = 0;
  v835 = 0;
  v837 = -1;
  v836 = -1;
  v838 = 0;
  v840 = 0;
  v842 = -1;
  v841 = -1;
  v843 = 0;
  v845 = 0;
  v847 = -1;
  v846 = -1;
  v848 = 0;
  v850 = 0;
  v852 = -1;
  v851 = -1;
  v853 = 0;
  v855 = 0;
  LODWORD(v863) = 0;
  v864 = 0;
  v866 = -1;
  v865 = -1;
  LODWORD(v867) = 0;
  v868 = 0;
  v870 = -1;
  v869 = -1;
  v871 = 0;
  v873 = 0;
  v875 = 0;
  v877 = -1;
  v876 = -1;
  v878 = 0;
  v880 = 0;
  v882 = -1;
  v881 = -1;
  v883 = 0;
  v885 = 0;
  v887 = -1;
  v886 = -1;
  v888 = 0;
  v890 = 0;
  v892 = -1;
  v891 = -1;
  v893 = 0;
  v895 = 0;
  v897 = -1;
  v896 = -1;
  v898 = 0;
  v900 = 0;
  v902 = -1;
  v901 = -1;
  v903 = 0;
  v905 = 0;
  v907 = -1;
  v906 = -1;
  v908 = 0;
  v910 = 0;
  v912 = -1;
  v911 = -1;
  v913 = 0;
  v915 = 0;
  v917 = -1;
  v916 = -1;
  v918 = 0;
  v920 = 0;
  v922 = 0;
  v924 = -1;
  v923 = -1;
  v925 = 0;
  v927 = 0;
  v929 = -1;
  v928 = -1;
  v930 = 0;
  v932 = 0;
  v934 = -1;
  v933 = -1;
  v935 = 0;
  v937 = 0;
  v939 = -1;
  v938 = -1;
  v940 = 0;
  v942 = 0;
  v944 = 0;
  v946 = -1;
  v945 = -1;
  v947 = 0;
  v949 = 0;
  v951 = -1;
  v950 = -1;
  v952 = 0;
  v954 = 0;
  v956 = -1;
  v955 = -1;
  v957 = 0;
  v959 = 0;
  v961 = -1;
  v960 = -1;
  v962 = 0;
  v964 = 0;
  v966 = -1;
  v965 = -1;
  v967 = 0;
  v969 = 0;
  v971 = -1;
  v970 = -1;
  v972 = 0;
  v974 = 0;
  v976 = -1;
  v975 = -1;
  v977 = 0;
  v979 = 0;
  v981 = -1;
  v980 = -1;
  v982 = 0;
  v984 = 0;
  v986 = -1;
  v985 = -1;
  v987 = 0;
  v989 = 0;
  v991 = -1;
  v990 = -1;
  v992 = 0;
  v994 = 0;
  v996 = -1;
  v995 = -1;
  v997 = 0;
  v999 = 0;
  v1001 = -1;
  v1000 = -1;
  v1002 = 0;
  v1004 = 0;
  v1006 = -1;
  v1005 = -1;
  v857 = -1;
  v856 = -1;
  v858 = 0;
  v861 = -1;
  LODWORD(v1007) = 0;
  v860 = 0;
  v118 = v1156;
  v862 = -1;
  if (v1156 - 1 > 1)
  {
    v705 = 0;
    v704 = 0;
    v703 = 0;
    v702 = 0;
    v701 = 0;
    v700 = 0;
    v699 = 0;
    v698 = 0;
    v697 = 0;
    v696 = 0;
    v129 = v1169;
    v130 = v1167;
    if (v1169)
    {
      v131 = v1162 == 0;
    }

    else
    {
      v131 = 0;
    }

    v132 = v131;
    if (v1161 == 2)
    {
      v133 = v132;
    }

    else
    {
      v133 = 0;
    }

    v638 = v133;
    if (v1156)
    {
      v132 = 0;
    }

    if (v1157 == 3)
    {
      v134 = v132;
    }

    else
    {
      v134 = 0;
    }

    v135 = v1167;
    if (v134 == 1)
    {
      v136 = 0x3FFFFFFFLL;
      if ((v1166 & 4) == 0)
      {
        v136 = 0xFFFFFFFLL;
      }

      v137 = v1180 + -1.0;
      if (v137 < 0.0)
      {
        v137 = 0.0;
      }

      v138 = vcvtpd_u64_f64(v137 * v1167) + v1167;
      if (v136 >= v138)
      {
        v135 = v138;
      }

      else
      {
        v135 = v136;
      }
    }

    v139 = v1160;
    if ((v1160 & 2) != 0 && v1177 >= 2)
    {
      v135 *= v1177 - 1;
    }

    if (v135 <= 1)
    {
      v140 = 1;
    }

    else
    {
      v140 = v135;
    }

    LODWORD(v141) = v1167;
    if (v134)
    {
      v141 = 0x3FFFFFFFLL;
      if ((v1166 & 4) == 0)
      {
        v141 = 0xFFFFFFFLL;
      }

      v142 = v1180 + -1.0;
      if (v142 < 0.0)
      {
        v142 = 0.0;
      }

      v143 = vcvtpd_u64_f64(v142 * v1167) + v1167;
      if (v141 >= v143)
      {
        LODWORD(v141) = v143;
      }
    }

    v521 = v1170;
    v675 = v1176;
    if ((v1160 & 2) != 0)
    {
      v192 = v1177 - 1;
      if (v1177 <= 1)
      {
        v192 = 1;
      }

      v193 = v192 * v141;
      if (v193 <= 1)
      {
        v144 = 1;
      }

      else
      {
        v144 = v193;
      }

      if (v1177 > 1)
      {
        v144 <<= v1158;
      }
    }

    else if (v141 <= 1)
    {
      v144 = 1;
    }

    else
    {
      v144 = v141;
    }

    v194 = AGX::BVHDescriptor::maxInnerNodeCount(v1155);
    v195 = 24 * v194;
    if ((v139 & 0x400) == 0)
    {
      v195 = 0;
    }

    v668 = v195;
    v633 = v194;
    if ((v139 & 0x400) != 0)
    {
      v220 = v129 >= 0x101 || v135 >= 0x800001;
      v221 = 2;
      if (v220)
      {
        v221 = 3;
      }

      if (v129 >= 0x11 || v135 >= 0x801)
      {
        v223 = v221;
      }

      else
      {
        v223 = 1;
      }

      LODWORD(v224) = v130;
      if (v134)
      {
        v224 = 0x3FFFFFFFLL;
        if ((v1166 & 4) == 0)
        {
          v224 = 0xFFFFFFFLL;
        }

        v225 = v1180 + -1.0;
        if (v225 < 0.0)
        {
          v225 = 0.0;
        }

        v226 = vcvtpd_u64_f64(v225 * v130) + v130;
        if (v224 >= v226)
        {
          LODWORD(v224) = v226;
        }
      }

      if ((v139 & 2) != 0 && v1177 >= 2)
      {
        LODWORD(v224) = v224 * (v1177 - 1);
      }

      if (v224 <= 1)
      {
        LODWORD(v224) = 1;
      }

      v243 = (v1163 + v224 - 1) / v1163;
      v197 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v1155);
      if (v134)
      {
        v244 = 0x3FFFFFFFLL;
        if ((v1166 & 4) == 0)
        {
          v244 = 0xFFFFFFFLL;
        }

        v245 = v1180 + -1.0;
        if (v245 < 0.0)
        {
          v245 = 0.0;
        }

        v246 = vcvtpd_u64_f64(v245 * v130) + v130;
        if (v244 >= v246)
        {
          LODWORD(v244) = v246;
        }
      }

      else
      {
        LODWORD(v244) = v130;
      }

      v686 = v140 << v223;
      v461 = v243 - 1;
      if ((v139 & 2) != 0 && v1177 >= 2)
      {
        LODWORD(v244) = v244 * (v1177 - 1);
      }

      if (v244 <= 1)
      {
        LODWORD(v244) = 1;
      }

      v198 = (v1163 + v244 - 1) / v1163 - 1;
      v664 = 1;
    }

    else
    {
      v196 = v194;
      v197 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v1155);
      v198 = AGX::BVHDescriptor::maxInnerNodeCount(v1155);
      v686 = 0;
      v664 = 4;
      v461 = v196;
    }

    v254 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v1155) + v198;
    v255 = 136;
    if ((v139 & 1) == 0)
    {
      v255 = 72;
    }

    v661 = v255 * v197;
    v256 = v1149;
    v659 = ((v661 + 63 + v1153[3]) & 0xFFFFFFFFFFFFFFC0) >= v1149;
    v257 = &v1153[(((v661 + 63 + v1153[3]) & 0xFFFFFFFFFFFFFFC0) >= v1149) + 1];
    v657 = v257[2];
    v257[2] = (v661 + 63 + v657) & 0xFFFFFFFFFFFFFFC0;
    v258 = v197;
    if ((v139 & 0x400) != 0)
    {
      v259 = ((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v260 = 1;
    }

    else
    {
      v259 = 1;
      v260 = 4;
    }

    v261 = &v1153[2 * v260 + 1];
    v629 = v261[v259];
    v261[v259] = (v629 + 79) & 0xFFFFFFFFFFFFFFC0;
    v262 = 5;
    if (v139)
    {
      v262 = 6;
    }

    v627 = v254 << v262;
    v263 = (v254 << v262) + 63;
    if ((v139 & 0x400) != 0)
    {
      v264 = ((v1153[3] + v263) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v265 = 1;
    }

    else
    {
      v264 = 1;
      v265 = 4;
    }

    v266 = &v1153[2 * v265 + 1];
    v623 = v266[v264];
    v266[v264] = (v623 + v263) & 0xFFFFFFFFFFFFFFC0;
    v267 = v129 >= 0x101 || v130 >= 0x800001;
    v268 = 2;
    if (v267)
    {
      v268 = 3;
    }

    if (v129 < 0x11 && v130 < 0x801)
    {
      v268 = 1;
    }

    v270 = v140 << v268;
    v631 = v259;
    v625 = v264;
    v621 = v140 << v268;
    v562 = v144;
    if ((v139 & 0x400) != 0)
    {
      v271 = v270 + 63;
      v615 = ((v1153[3] + v271) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v272 = &v1153[(((v1153[3] + v271) & 0xFFFFFFFFFFFFFFC0) >= v256) + 1];
      v619 = v272[2];
      v272[2] = (v619 + v271) & 0xFFFFFFFFFFFFFFC0;
      if ((v139 & 1) == 0)
      {
        v617 = 0;
        v611 = 0;
        v613 = 0;
        v607 = 0;
        v609 = 0;
        v273 = 4 * v144;
        v274 = v144;
        goto LABEL_400;
      }

      v617 = 60 * v140;
      v275 = 60 * v140 + 63;
      v277 = ((v1153[3] + v275) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v276 = 1;
    }

    else
    {
      v619 = v1154;
      v1154 = (v270 + v1154 + 63) & 0xFFFFFFFFFFFFFFC0;
      if ((v139 & 1) == 0)
      {
        v609 = 0;
        v607 = 0;
        v613 = 0;
        v611 = 0;
        v617 = 0;
        v615 = 1;
        goto LABEL_398;
      }

      v617 = 60 * v140;
      v275 = 60 * v140 + 63;
      v615 = 1;
      v276 = 4;
      v277 = 1;
    }

    v278 = &v1153[2 * v276 + 1];
    v611 = v278[v277];
    v613 = v277;
    v278[v277] = (v611 + v275) & 0xFFFFFFFFFFFFFFC0;
    v609 = v1148;
    v607 = v664;
LABEL_398:
    v273 = 4 * v144;
    v274 = v144;
    if ((v139 & 0x400) == 0)
    {
      v279 = v273 + 63;
      v280 = 1;
      v281 = 4;
      goto LABEL_401;
    }

LABEL_400:
    v279 = v273 + 63;
    v280 = ((v1153[3] + v273 + 63) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v281 = 1;
LABEL_401:
    v282 = &v1153[2 * v281 + 1];
    v601 = v282[v280];
    v603 = v280;
    v282[v280] = (v601 + v279) & 0xFFFFFFFFFFFFFFC0;
    v283 = v1159;
    v525 = v254;
    if (v1159 < 3u)
    {
      if ((v139 & 0x400) == 0)
      {
        LODWORD(v597) = 0;
        v595 = 0;
        v591 = 0;
        v587 = 0;
        v593 = 0;
LABEL_412:
        v583 = v1154;
        v1154 = (v1154 + 195) & 0xFFFFFFFFFFFFFFC0;
        v581 = 1;
        v290 = 4;
        v291 = 1;
        goto LABEL_414;
      }
    }

    else if ((v139 & 0x400) == 0)
    {
      v284 = v273;
      v285 = v258;
      v286 = AGX::BVHDescriptor::maxInnerNodeCount(v1155);
      v287 = AGX::BVHDescriptor::topDownLeafNodeCapacity(v1155) + v286;
      v258 = v285;
      v254 = v525;
      v273 = v284;
      if (HIBYTE(v287))
      {
        v288 = 4;
      }

      else
      {
        v288 = 3;
      }

      if (v287 >= 0x10000)
      {
        v289 = v288;
      }

      else
      {
        v289 = 2;
      }

      v597 = (v525 * v283 * v289);
      v595 = v1154;
      v1154 = (v597 + v1154 + 63) & 0xFFFFFFFFFFFFFFC0;
      v593 = v1148;
      v591 = 1;
      v587 = v664;
      goto LABEL_412;
    }

    v593 = 0;
    v587 = 0;
    v591 = 0;
    v595 = 0;
    LODWORD(v597) = 0;
    v581 = ((v1153[3] + 195) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v292 = &v1153[(((v1153[3] + 195) & 0xFFFFFFFFFFFFFFC0) >= v256) + 1];
    v583 = v292[2];
    v292[2] = (v583 + 195) & 0xFFFFFFFFFFFFFFC0;
    v291 = ((v1153[3] + 195) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v290 = 1;
LABEL_414:
    v293 = &v1153[2 * v290 + 1];
    v569 = v293[v291];
    v579 = v291;
    v293[v291] = (v569 + 195) & 0xFFFFFFFFFFFFFFC0;
    v653 = 24 * v140;
    v294 = 24 * v140 + 63;
    v651 = v1153[(((v1153[3] + v294) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
    v655 = ((v1153[3] + v294) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v1153[(((v1153[3] + v294) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v651 + v294) & 0xFFFFFFFFFFFFFFC0;
    v567 = 4 * v254;
    v295 = 4 * v254 + 63;
    v565 = v1153[(((v1153[3] + v295) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
    v599 = ((v1153[3] + v295) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v1153[(((v1153[3] + v295) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v565 + v295) & 0xFFFFFFFFFFFFFFC0;
    v502 = (v686 >= v273) & (v139 >> 10);
    if (v502)
    {
      v643 = 0;
      v645 = 0;
      v641 = 0;
      v296 = 0;
    }

    else
    {
      v297 = ((v1153[3] + v273 + 63) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v298 = &v1153[(((v1153[3] + v273 + 63) & 0xFFFFFFFFFFFFFFC0) >= v256) + 1];
      v645 = v298[2];
      v298[2] = (v645 + v273 + 63) & 0xFFFFFFFFFFFFFFC0;
      LODWORD(v296) = 1;
      HIDWORD(v296) = v297;
      v643 = v1148;
      v641 = v273;
    }

    v649 = 6 * v274;
    v299 = 6 * v274 + 63;
    v300 = ((v1153[3] + v299) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v647 = v1153[(((v1153[3] + v299) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
    v1153[(((v1153[3] + v299) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v647 + v299) & 0xFFFFFFFFFFFFFFC0;
    v558 = v1153[(((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
    v585 = ((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v1153[(((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v558 + 79) & 0xFFFFFFFFFFFFFFC0;
    v553 = v1153[(((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
    v555 = ((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v1153[(((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v553 + 79) & 0xFFFFFFFFFFFFFFC0;
    v550 = v1153[(((v1153[3] + 191) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
    v551 = ((v1153[3] + 191) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v1153[(((v1153[3] + 191) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v550 + 191) & 0xFFFFFFFFFFFFFFC0;
    v605 = v273;
    if (v139)
    {
      v545 = v1153[(((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
      v547 = ((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v1153[(((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v545 + 79) & 0xFFFFFFFFFFFFFFC0;
      v541 = v1153[(((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
      v543 = ((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v1153[(((v1153[3] + 79) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v541 + 79) & 0xFFFFFFFFFFFFFFC0;
      v538 = v1153[(((v1153[3] + 67) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
      v539 = ((v1153[3] + 67) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v1153[(((v1153[3] + 67) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v538 + 67) & 0xFFFFFFFFFFFFFFC0;
      v533 = v1153[(((v1153[3] + 67) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3];
      v536 = ((v1153[3] + 67) & 0xFFFFFFFFFFFFFFC0) >= v256;
      v1153[(((v1153[3] + 67) & 0xFFFFFFFFFFFFFFC0) >= v256) + 3] = (v533 + 67) & 0xFFFFFFFFFFFFFFC0;
      v575 = 4;
      v571 = 16;
      v577 = 1;
      v573 = v1148;
    }

    else
    {
      v573 = 0;
      v577 = 0;
      v547 = 0;
      v545 = 0;
      v571 = 0;
      v543 = 0;
      v541 = 0;
      v539 = 0;
      v538 = 0;
      v575 = 0;
      v536 = 0;
      v533 = 0;
    }

    v301 = ((v140 + 1023) >> 8) & 0xFFFFFC;
    if ((v140 + 1023) < 0x400)
    {
      v301 = 4;
    }

    v532 = v301;
    v302 = v301 + 63;
    v529 = ((v1153[3] + v302) & 0xFFFFFFFFFFFFFFC0) >= v256;
    v303 = &v1153[(((v1153[3] + v302) & 0xFFFFFFFFFFFFFFC0) >= v256) + 1];
    v527 = v303[2];
    v303[2] = (v527 + v302) & 0xFFFFFFFFFFFFFFC0;
    v635 = v296;
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,unsigned long long)::instanceBatchSize = 256;
    }

    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,unsigned long long)::primitiveBatchSize = 512;
    }

    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,unsigned long long)::batchingThreshold = 2048;
    }

    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,unsigned long long)::allowBatchingEV = 1;
    }

    v304 = 0;
    if (v140 < AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,unsigned long long)::batchingThreshold)
    {
      v305 = 0;
      v306 = v668;
    }

    else
    {
      v305 = 0;
      v306 = v668;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,unsigned long long)::allowBatchingEV)
      {
        if ((v1162 & 0xFE) == 6)
        {
          v307 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,unsigned long long)::instanceBatchSize;
        }

        else
        {
          v307 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,unsigned long long)::primitiveBatchSize;
        }

        v308 = *v307;
        if (__CFADD__(v274 - 1, v308))
        {
          v304 = 2;
        }

        else
        {
          v304 = 2 * ((v274 - 1 + v308) / v308);
        }

        v305 = (v562 + v308 - 1) / v308;
      }
    }

    v563 = 16 * v258;
    v309 = 16 * v258 + 63;
    v310 = v1149;
    v517 = v1153[(((v1153[3] + v309) & 0xFFFFFFFFFFFFFFC0) >= v1149) + 3];
    v519 = ((v1153[3] + v309) & 0xFFFFFFFFFFFFFFC0) >= v1149;
    v1153[(((v1153[3] + v309) & 0xFFFFFFFFFFFFFFC0) >= v1149) + 3] = (v517 + v309) & 0xFFFFFFFFFFFFFFC0;
    v559 = 16 * v305;
    v311 = 16 * v305 + 63;
    v514 = v1153[(((v1153[3] + v311) & 0xFFFFFFFFFFFFFFC0) >= v310) + 3];
    v515 = ((v1153[3] + v311) & 0xFFFFFFFFFFFFFFC0) >= v310;
    v1153[(((v1153[3] + v311) & 0xFFFFFFFFFFFFFFC0) >= v310) + 3] = (v514 + v311) & 0xFFFFFFFFFFFFFFC0;
    v512 = v1153[(((v1153[3] + v309) & 0xFFFFFFFFFFFFFFC0) >= v310) + 3];
    v513 = ((v1153[3] + v309) & 0xFFFFFFFFFFFFFFC0) >= v310;
    v1153[(((v1153[3] + v309) & 0xFFFFFFFFFFFFFFC0) >= v310) + 3] = (v512 + v309) & 0xFFFFFFFFFFFFFFC0;
    LODWORD(v310) = ((v1153[3] + v311) & 0xFFFFFFFFFFFFFFC0) >= v310;
    v510 = v1153[v310 + 3];
    v511 = v310;
    v1153[v310 + 3] = (v510 + v311) & 0xFFFFFFFFFFFFFFC0;
    v312 = AGX::BVHDescriptor::useSpatialSplits(v1155);
    v313 = v1160;
    if (!v312 && ((~v1160 & 3) != 0 || v1177 <= 1))
    {
      v505 = 0;
      v506 = 0;
      v508 = 0;
      v507 = 0;
      v509 = 0;
      v315 = v1149;
    }

    else
    {
      v509 = 8 * v304;
      v314 = 8 * v304 + 63;
      v315 = v1149;
      v508 = ((v1153[3] + v314) & 0xFFFFFFFFFFFFFFC0) >= v1149;
      v316 = &v1153[(((v1153[3] + v314) & 0xFFFFFFFFFFFFFFC0) >= v1149) + 1];
      v507 = v316[2];
      v316[2] = (v507 + v314) & 0xFFFFFFFFFFFFFFC0;
      v506 = 1;
      v505 = v1148;
    }

    v318 = v633;
    v319 = 1732 * v305;
    v320 = (v306 >= 1732 * v305) & (v313 >> 10);
    v321 = v635;
    if (v320)
    {
      v322 = 0;
      v323 = 0;
      LODWORD(v319) = 0;
      v324 = 0;
    }

    else
    {
      v325 = ((v1153[3] + v319 + 63) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v326 = &v1153[(((v1153[3] + v319 + 63) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1];
      v323 = v326[2];
      v326[2] = (v323 + v319 + 63) & 0xFFFFFFFFFFFFFFC0;
      LODWORD(v324) = 1;
      HIDWORD(v324) = v325;
      v322 = v1148;
    }

    v498 = 200 * v304;
    v327 = 200 * v304 + 63;
    v497 = ((v1153[3] + v327) & 0xFFFFFFFFFFFFFFC0) >= v315;
    v328 = &v1153[(((v1153[3] + v327) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1];
    v496 = v328[2];
    v328[2] = (v496 + v327) & 0xFFFFFFFFFFFFFFC0;
    if (v313)
    {
      v495 = 1536 * v305;
      v329 = (((3 * v305) & 0x3FFFFFFFFLL) << 9) | 0x3F;
      v494 = ((v1153[3] + v329) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v330 = &v1153[(((v1153[3] + v329) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1];
      v493 = v330[2];
      v330[2] = (v493 + v329) & 0xFFFFFFFFFFFFFFC0;
      v492 = 1;
      v491 = v1148;
    }

    else
    {
      v491 = 0;
      v492 = 0;
      v494 = 0;
      v493 = 0;
      v495 = 0;
    }

    v489 = v1153[(((v1153[3] + 75) & 0xFFFFFFFFFFFFFFC0) >= v315) + 3];
    v490 = ((v1153[3] + 75) & 0xFFFFFFFFFFFFFFC0) >= v315;
    v1153[(((v1153[3] + 75) & 0xFFFFFFFFFFFFFFC0) >= v315) + 3] = (v489 + 75) & 0xFFFFFFFFFFFFFFC0;
    v487 = v1153[(((v1153[3] + 207) & 0xFFFFFFFFFFFFFFC0) >= v315) + 3];
    v488 = ((v1153[3] + 207) & 0xFFFFFFFFFFFFFFC0) >= v315;
    v1153[(((v1153[3] + 207) & 0xFFFFFFFFFFFFFFC0) >= v315) + 3] = (v487 + 207) & 0xFFFFFFFFFFFFFFC0;
    if (v638)
    {
      v481 = 16 * v521;
      v331 = 16 * v521 + 63;
      v332 = v1154;
      v333 = v1153[(((v1153[1] + v331) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1];
      HIDWORD(v500) = ((v1153[1] + v331) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v1153[(((v1153[1] + v331) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1] = (v333 + v331) & 0xFFFFFFFFFFFFFFC0;
      v479 = 4 * v521;
      v480 = v333;
      v334 = 4 * v521 + 63;
      v478 = v1153[(((v1153[1] + v334) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1];
      LODWORD(v500) = ((v1153[1] + v334) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v1153[(((v1153[1] + v334) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1] = (v478 + v334) & 0xFFFFFFFFFFFFFFC0;
      v477 = 36 * v521;
      v335 = 36 * v521 + 63;
      v476 = v1153[(((v1153[1] + v335) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1];
      v499 = ((v1153[1] + v335) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v1153[(((v1153[1] + v335) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1] = (v476 + v335) & 0xFFFFFFFFFFFFFFC0;
      v485 = 8 * v130;
      v486 = v332;
      v336 = 8 * v130 + v332 + 63;
      v484 = v336 & 0xFFFFFFFFFFFFFFC0;
      v483 = 8 * v1169;
      v482 = ((v336 | 0x38) + v483) & 0xFFFFFFFFFFFFFFC0;
      v1154 = (v675 + v482 + 63) & 0xFFFFFFFFFFFFFFC0;
      v337 = 0x100000004;
      v338 = v1148;
    }

    else
    {
      v338 = 0;
      v500 = 0;
      v480 = 0;
      v481 = 0;
      v478 = 0;
      v479 = 0;
      v499 = 0;
      v476 = 0;
      v477 = 0;
      v485 = 0;
      v486 = 0;
      LODWORD(v483) = 0;
      v484 = 0;
      v482 = 0;
      LODWORD(v675) = 0;
      v337 = 0;
    }

    if ((v1162 & 0xFE) == 6)
    {
      if (v313)
      {
        v339 = 56;
      }

      else
      {
        v339 = 24;
      }

      v475 = v339 * v1171;
      v474 = ((v475 + 63 + v1153[3]) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v340 = &v1153[(((v475 + 63 + v1153[3]) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1];
      v473 = v340[2];
      v340[2] = (v475 + 63 + v473) & 0xFFFFFFFFFFFFFFC0;
      v472 = 1;
      v471 = v1148;
    }

    else
    {
      v471 = 0;
      v472 = 0;
      v474 = 0;
      v473 = 0;
      LODWORD(v475) = 0;
    }

    v522 = v1154;
    v341 = (v1154 + 87) & 0xFFFFFFFFFFFFFFC0;
    v1154 = v341;
    v342 = v691 + 63;
    if (v691 + 63 >= 0x4000)
    {
      if (v342 >= 0x400000)
      {
        if (v342 >> 30)
        {
          if (v342 >> 38)
          {
            v343 = 8;
          }

          else
          {
            v343 = 4;
          }
        }

        else
        {
          v343 = 3;
        }
      }

      else
      {
        v343 = 2;
      }
    }

    else
    {
      v343 = 1;
    }

    v589 = v300;
    v639 = v343;
    if ((v313 & 0x400) != 0)
    {
      v459 = 20 * v633;
      v362 = (20 * v633 + v341 + 63) & 0xFFFFFFFFFFFFFFC0;
      v363 = v686 + v362 + 63;
      if (v502)
      {
        v321 = 0x100000004;
        v643 = v1148;
        v645 = (20 * v633 + v341 + 63) & 0xFFFFFFFFFFFFFFC0;
        v641 = v686;
      }

      v636 = v633 * v343;
      v364 = ((v363 | 0x3F) + v636) & 0xFFFFFFFFFFFFFFC0;
      if (v320)
      {
        v324 = 0x100000004;
        v322 = v1148;
        v323 = ((v363 | 0x3F) + v636) & 0xFFFFFFFFFFFFFFC0;
        LODWORD(v319) = v306;
      }

      v501 = v322;
      v503 = v323;
      v504 = v319;
      v455 = v363 & 0xFFFFFFFFFFFFFFC0;
      v365 = v647;
      v366 = 6 * v274;
      if (v649 < 8 * v633)
      {
        v366 = 8 * v525;
        v367 = 8 * v525 + 63;
        v300 = ((v1153[3] + v367) & 0xFFFFFFFFFFFFFFC0) >= v315;
        v368 = &v1153[(((v1153[3] + v367) & 0xFFFFFFFFFFFFFFC0) >= v315) + 1];
        v365 = v368[2];
        v368[2] = (v365 + v367) & 0xFFFFFFFFFFFFFFC0;
      }

      v448 = v365;
      LODWORD(v449) = v300;
      v369 = 0;
      v370 = 0;
      v447 = 0;
      v470 = 0;
      v356 = 0;
      v469 = 0;
      v468 = 0;
      v467 = 0;
      v465 = 0;
      v466 = 0;
      v371 = 0;
      v693 = 0;
      v372 = 0;
      v446 = 0;
      v462 = 0;
      v463 = 0;
      LODWORD(v526) = 0;
      v464 = 0;
      LODWORD(v460) = 0;
      v457 = 0;
      v458 = 0;
      v454 = 0;
      HIDWORD(v451) = 0;
      v456 = 0;
      v373 = 0;
      v374 = (v306 + v364 + 63) & 0xFFFFFFFFFFFFFFC0;
      v375 = (v374 + 191) & 0xFFFFFFFFFFFFFFC0;
      v376 = (v375 + 399) & 0xFFFFFFFFFFFFFFC0;
      if (v633 >= v258)
      {
        v377 = v258;
      }

      else
      {
        v377 = v633;
      }

      v378 = 20 * ((8 * v377 + 1023) >> 10);
      v44 = v377 > 0x80;
      v379 = 20;
      if (v44)
      {
        v379 = v378;
      }

      v380 = v379;
      v381 = (v379 + v376 + 63) & 0xFFFFFFFFFFFFFFC0;
      v1154 = (v381 + 67) & 0xFFFFFFFFFFFFFFC0;
      v382 = 0;
      v383 = 0x100000004;
      LODWORD(v384) = 4;
      v385 = &v696;
      v386 = &v697;
      v318 = &v698;
      v387 = &v699;
      v388 = &v700;
      v389 = 336;
      v390 = 128;
      v391 = v1148;
      v392 = 1;
      v453 = v655;
      v452 = v651;
      LODWORD(v451) = v659;
      v450 = v657;
      HIDWORD(v449) = v661;
      v393 = v653;
      v394 = 0;
    }

    else
    {
      v501 = v322;
      v503 = v323;
      v356 = 4 * v633;
      v357 = ((4 * v633) & 0x3FFFFFFFCLL) + 63;
      v358 = ((v1153[5] + v357) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v470 = v1153[(((v1153[5] + v357) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5];
      v1153[(((v1153[5] + v357) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5] = (v470 + v357) & 0xFFFFFFFFFFFFFFC0;
      v468 = v1153[(((v1153[5] + 4 * v633 + 63) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5];
      v469 = ((v1153[5] + 4 * v633 + 63) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v1153[(((v1153[5] + 4 * v633 + 63) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5] = (v468 + 4 * v633 + 63) & 0xFFFFFFFFFFFFFFC0;
      v466 = v1153[(((v1153[5] + 4 * v633 + 63) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5];
      v467 = ((v1153[5] + 4 * v633 + 63) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v1153[(((v1153[5] + 4 * v633 + 63) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5] = (v466 + 4 * v633 + 63) & 0xFFFFFFFFFFFFFFC0;
      v359 = (v633 + 4095) & 0xFFFFFFFFFFFFF000;
      v504 = v319;
      if (v359 <= 0x1000)
      {
        v361 = 0;
      }

      else
      {
        v360 = 0;
        do
        {
          v360 += (((v359 + 4095) >> 12) + 4095) & 0x1FFFFFFFFFF000;
          v44 = v359 > 0x1000000;
          v359 = (v359 + 4095) >> 12;
        }

        while (v44);
        v361 = 4 * v360;
      }

      v395 = v691 - 1;
      v693 = v361;
      v396 = v361 | 0x3F;
      v371 = ((v1153[5] + v396) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v465 = v1153[(((v1153[5] + v396) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5];
      v1153[(((v1153[5] + v396) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5] = (v465 + v396) & 0xFFFFFFFFFFFFFFC0;
      v372 = ((v1153[5] + v396) & 0xFFFFFFFFFFFFFFC0) >= v315;
      v397 = v1153[(((v1153[5] + v396) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5];
      v1153[(((v1153[5] + v396) & 0xFFFFFFFFFFFFFFC0) >= v315) + 5] = (v397 + v396) & 0xFFFFFFFFFFFFFFC0;
      {
        v687 = v324;
        v670 = v337;
        v433 = v358;
        v434 = v397;
        v397 = v434;
        v358 = v433;
        v337 = v670;
        v324 = v687;
        v321 = v635;
        v318 = v633;
        if (v435)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
          v397 = v434;
          v358 = v433;
          v337 = v670;
          v324 = v687;
          v321 = v635;
          v318 = v633;
        }
      }

      v398 = 8;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride > 4)
      {
        v398 = 4;
      }

      v399 = v395 + v398;
      v400 = 2;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 4)
      {
        v400 = 3;
      }

      v401 = v399 >> v400;
      if (v401 >= 0x100)
      {
        v403 = &xmmword_29D2F2000;
        if (v401 >= 0x10000)
        {
          if (v401 >> 24)
          {
            if (HIDWORD(v401))
            {
              v402 = 8;
            }

            else
            {
              v402 = 4;
            }
          }

          else
          {
            v402 = 3;
          }
        }

        else
        {
          v402 = 2;
        }
      }

      else
      {
        v402 = 1;
        v403 = &xmmword_29D2F2000;
      }

      v464 = v402;
      v526 = (v402 * v525);
      v463 = v1154;
      v460 = 4 * v461;
      v462 = (v526 + v1154 + 63) & 0xFFFFFFFFFFFFFFC0;
      v457 = 4 * v258;
      v458 = (v460 + v462 + 63) & 0xFFFFFFFFFFFFFFC0;
      v456 = (4 * v258 + v458 + 63) & 0xFFFFFFFFFFFFFFC0;
      v1154 = (v456 + 95) & 0xFFFFFFFFFFFFFFC0;
      {
        v436 = v318;
        v688 = v324;
        v671 = v337;
        v437 = v358;
        v438 = v397;
        v397 = v438;
        v358 = v437;
        v337 = v671;
        v324 = v688;
        v321 = v635;
        v318 = v436;
        if (v439)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
          v397 = v438;
          v358 = v437;
          v337 = v671;
          v324 = v688;
          v321 = v635;
          v318 = v436;
        }
      }

      {
        v440 = v318;
        v689 = v324;
        v672 = v337;
        v441 = v358;
        v442 = v397;
        v397 = v442;
        v358 = v441;
        v337 = v672;
        v324 = v689;
        v321 = v635;
        v318 = v440;
        if (v443)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          v397 = v442;
          v358 = v441;
          v337 = v672;
          v324 = v689;
          v321 = v635;
          v318 = v440;
        }
      }

      v382 = *(v403 + 358);
      if ((v317[2792] & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (v1166 & 1) == 0)
      {
        v392 = 0;
        v453 = 0;
        v451 = 0;
        v452 = 0;
        v450 = 0;
        v406 = 0;
        v454 = 0;
        v455 = 0;
        v391 = 0;
        HIDWORD(v449) = 0;
        v341 = 0;
        v459 = 0;
        v362 = 0;
        LODWORD(v686) = 0;
        LODWORD(v636) = 0;
        v393 = 0;
        v364 = 0;
        v407 = 0;
        v376 = 0;
        v380 = 0;
        v408 = 0;
        v409 = 0;
        v410 = 0;
        v411 = 0;
        v390 = 0;
        v375 = 0;
        v412 = 0;
        v383 = 0;
        v373 = 32;
        v370 = 2;
        v413 = 0;
        v369 = v1148;
LABEL_533:
        v708 = v480;
        v709 = v481;
        v713 = v478;
        v714 = v479;
        v718 = v476;
        v719 = v477;
        v723 = v651;
        v724 = v653;
        v728 = v565;
        v729 = v567;
        v731 = v643;
        v733 = v645;
        v734 = v641;
        v738 = v647;
        v739 = v649;
        v743 = v558;
        HIDWORD(v746) = v555;
        v747 = v553;
        HIDWORD(v750) = v551;
        v751 = v550;
        v755 = v545;
        v760 = v541;
        v765 = v538;
        v770 = v533;
        HIDWORD(v774) = v529;
        v775 = v527;
        v776 = v532;
        HIDWORD(v779) = v519;
        v780 = v517;
        HIDWORD(v784) = v515;
        v785 = v514;
        HIDWORD(v789) = v513;
        v790 = v512;
        HIDWORD(v794) = v511;
        v795 = v510;
        v798 = v505;
        v799 = __PAIR64__(v508, v506);
        v800 = v507;
        v801 = v509;
        v803 = v501;
        v805 = v503;
        v806 = v504;
        HIDWORD(v809) = v497;
        v810 = v496;
        v811 = v498;
        v813 = v491;
        v814 = __PAIR64__(v494, v492);
        v815 = v493;
        v816 = v495;
        HIDWORD(v819) = v659;
        v820 = v657;
        v821 = v661;
        HIDWORD(v824) = v490;
        v825 = v489;
        HIDWORD(v828) = v488;
        v829 = v487;
        v833 = v629;
        v837 = v623;
        v838 = v627;
        v842 = v619;
        v843 = v621;
        v845 = v609;
        v846 = __PAIR64__(v613, v607);
        v847 = v611;
        v848 = v617;
        v852 = v601;
        v853 = v605;
        v855 = v593;
        v856 = __PAIR64__(v591, v587);
        v857 = v595;
        v858 = v597;
        v862 = v583;
        v866 = v569;
        v870 = v470;
        v873 = v318;
        v877 = v468;
        v882 = v466;
        v887 = v465;
        v892 = v397;
        v895 = v471;
        v896 = __PAIR64__(v474, v472);
        v897 = v473;
        v898 = v475;
        v902 = v486;
        v903 = v485;
        v907 = v484;
        v908 = v483;
        v912 = v482;
        v913 = v675;
        v917 = v463;
        v918 = v526;
        v920 = v464;
        v924 = v462;
        v925 = v460;
        v929 = v458;
        v930 = v457;
        v932 = v406;
        v934 = v454;
        v935 = HIDWORD(v451);
        v942 = v639;
        v946 = v456;
        v947 = v373;
        v951 = v450;
        v952 = HIDWORD(v449);
        v956 = v341;
        v957 = v459;
        v961 = v362;
        v962 = v686;
        v966 = v455;
        v967 = v636;
        v971 = v452;
        v972 = v393;
        v976 = v364;
        v977 = v407;
        v981 = v376;
        v740 = 0;
        v706 = v338;
        LODWORD(v707) = 0;
        HIDWORD(v707) = HIDWORD(v500);
        v710 = 0;
        v711 = v338;
        LODWORD(v712) = 0;
        HIDWORD(v712) = v500;
        v715 = 0;
        v716 = v338;
        LODWORD(v717) = 0;
        HIDWORD(v717) = v499;
        v720 = 0;
        v721 = v1148;
        LODWORD(v722) = 1;
        HIDWORD(v722) = v655;
        v725 = 0;
        v726 = v1148;
        LODWORD(v727) = 1;
        HIDWORD(v727) = v599;
        v730 = 0;
        v732 = v321;
        v735 = 0;
        v736 = v1148;
        LODWORD(v737) = 1;
        HIDWORD(v737) = v589;
        v741 = v1148;
        LODWORD(v742) = 1;
        HIDWORD(v742) = v585;
        v744 = 16;
        v745 = v1148;
        LODWORD(v746) = 1;
        v748 = 16;
        v749 = v1148;
        LODWORD(v750) = 1;
        v752 = 128;
        v753 = v573;
        v754 = __PAIR64__(v547, v577);
        v756 = v571;
        v757 = 0;
        v758 = v573;
        v759 = __PAIR64__(v543, v577);
        v761 = v571;
        v762 = 0;
        v763 = v573;
        v764 = __PAIR64__(v539, v577);
        v766 = v575;
        v767 = 0;
        v768 = v573;
        v769 = __PAIR64__(v536, v577);
        v771 = v575;
        v772 = 0;
        v773 = v1148;
        LODWORD(v774) = 1;
        v777 = 0;
        v778 = v1148;
        LODWORD(v779) = 1;
        v781 = v563;
        v782 = 0;
        v783 = v1148;
        LODWORD(v784) = 1;
        v786 = v559;
        v787 = 0;
        v788 = v1148;
        LODWORD(v789) = 1;
        v791 = v563;
        v792 = 0;
        v793 = v1148;
        LODWORD(v794) = 1;
        v796 = v559;
        v797 = 0;
        v802 = 0;
        v804 = v324;
        v807 = 0;
        v808 = v1148;
        LODWORD(v809) = 1;
        v812 = 0;
        v817 = 0;
        v818 = v1148;
        LODWORD(v819) = 1;
        v822 = 0;
        v823 = v1148;
        LODWORD(v824) = 1;
        v826 = 12;
        v827 = v1148;
        LODWORD(v828) = 1;
        v830 = 144;
        v831 = v1148;
        v832 = __PAIR64__(v631, v664);
        v834 = 16;
        v835 = v1148;
        v836 = __PAIR64__(v625, v664);
        v839 = 0;
        v840 = v1148;
        v841 = __PAIR64__(v615, v664);
        v844 = 0;
        v849 = 0;
        v850 = v1148;
        v851 = __PAIR64__(v603, v664);
        v854 = 0;
        v859 = 0;
        v860 = v1148;
        v861 = __PAIR64__(v581, v664);
        v863 = 132;
        v864 = v1148;
        v865 = __PAIR64__(v579, v664);
        v867 = 132;
        v868 = v369;
        v869 = __PAIR64__(v358, v370);
        v871 = v356;
        v872 = 0;
        v874 = 0;
        v875 = v369;
        v876 = __PAIR64__(v469, v370);
        v878 = v356;
        v879 = 0;
        v880 = v369;
        v881 = __PAIR64__(v467, v370);
        v883 = v356;
        v884 = 0;
        v885 = v369;
        v886 = __PAIR64__(v371, v370);
        v888 = v693;
        v889 = 0;
        v890 = v369;
        v891 = __PAIR64__(v372, v370);
        v893 = v693;
        v894 = 0;
        v899 = 0;
        v900 = v338;
        v901 = v337;
        v904 = 0;
        v905 = v338;
        v906 = v337;
        v909 = 0;
        v910 = v338;
        v911 = v337;
        v914 = 0;
        v915 = v369;
        v916 = v382;
        v919 = 0;
        v921 = 0;
        v922 = v369;
        v923 = v382;
        v926 = 0;
        v927 = v369;
        v928 = v382;
        v931 = 0;
        v933 = v413;
        v936 = 0;
        v937 = v705;
        v938 = __PAIR64__(v703, v704);
        v939 = v702;
        v940 = v701;
        v941 = 0;
        v943 = 0;
        v944 = v369;
        v945 = v382;
        v948 = 0;
        v949 = v391;
        v950 = __PAIR64__(v451, v392);
        v953 = 0;
        v954 = v391;
        v955 = v383;
        v958 = 0;
        v959 = v391;
        v960 = v383;
        v963 = 0;
        v964 = v391;
        v965 = v383;
        v968 = 0;
        v969 = v391;
        v970 = __PAIR64__(v453, v392);
        v973 = 0;
        v974 = v391;
        v975 = v383;
        v978 = 0;
        v979 = v391;
        v980 = v383;
        v982 = v380;
        v983 = 0;
        v984 = v391;
        v985 = __PAIR64__(v408, v392);
        v986 = v409;
        v987 = v410;
        v988 = 0;
        v989 = v391;
        v990 = v383;
        v991 = v411;
        v992 = v390;
        v993 = 0;
        v994 = v391;
        v995 = v383;
        v996 = v375;
        v997 = v412;
        v998 = 0;
        v999 = v700;
        v1000 = __PAIR64__(v698, v699);
        v1001 = v697;
        v1002 = v696;
        v1003 = 0;
        v1004 = v1148;
        v1005 = *(v403 + 358);
        v1006 = v522;
        v355 = &v706;
        v1007 = 24;
        goto LABEL_534;
      }

      v446 = v397;
      v447 = v358;
      v392 = 0;
      v453 = 0;
      v452 = 0;
      v451 = 0x11000000000;
      v449 = 0;
      v450 = 0;
      v391 = 0;
      v341 = 0;
      v459 = 0;
      v362 = 0;
      LODWORD(v686) = 0;
      LODWORD(v636) = 0;
      v393 = 0;
      v364 = 0;
      LODWORD(v668) = 0;
      v376 = 0;
      v380 = 0;
      v448 = 0;
      v366 = 0;
      v374 = 0;
      v390 = 0;
      v375 = 0;
      v389 = 0;
      v454 = v1154;
      v455 = 0;
      v381 = (v1154 + 335) & 0xFFFFFFFFFFFFFFC0;
      v394 = v318;
      v384 = (v318 * v639 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1154 = (((v1154 + 335) | 0x38) + v384) & 0xFFFFFFFFFFFFFFC0;
      v382 = *(v403 + 358);
      v383 = 0;
      v385 = &v701;
      v386 = &v702;
      v318 = &v703;
      v387 = &v704;
      v388 = &v705;
      v373 = 32;
      v370 = 2;
      v369 = v1148;
    }

    *v388 = v1148;
    *v387 = 4;
    *v318 = 1;
    *v386 = v381;
    v406 = v369;
    v413 = v382;
    *v385 = v384;
    v403 = &xmmword_29D2F2000;
    LODWORD(v318) = v394;
    v407 = v668;
    v411 = v374;
    v410 = v366;
    v408 = v449;
    v409 = v448;
    v412 = v389;
    v358 = v447;
    v397 = v446;
    goto LABEL_533;
  }

  v119 = v1169;
  if (v1169 && !v1162 && v1161 == 2)
  {
    v120 = v1167;
    v121 = v1170;
    v122 = v1176;
    v123 = v1148;
    v660 = 16 * v1170;
    v124 = v1149;
    v656 = v1153[(((v660 + 63 + v1153[1]) & 0xFFFFFFFFFFFFFFC0) >= v1149) + 1];
    v658 = ((v660 + 63 + v1153[1]) & 0xFFFFFFFFFFFFFFC0) >= v1149;
    v1153[(((v660 + 63 + v1153[1]) & 0xFFFFFFFFFFFFFFC0) >= v1149) + 1] = (v656 + v660 + 63) & 0xFFFFFFFFFFFFFFC0;
    v654 = 4 * v121;
    v125 = 4 * v121 + 63;
    v126 = v1154;
    v648 = v1153[(((v1153[1] + v125) & 0xFFFFFFFFFFFFFFC0) >= v124) + 1];
    v650 = ((v1153[1] + v125) & 0xFFFFFFFFFFFFFFC0) >= v124;
    v1153[(((v1153[1] + v125) & 0xFFFFFFFFFFFFFFC0) >= v124) + 1] = (v648 + v125) & 0xFFFFFFFFFFFFFFC0;
    v646 = 36 * v121;
    v127 = 36 * v121 + 63;
    v642 = v1153[(((v1153[1] + v127) & 0xFFFFFFFFFFFFFFC0) >= v124) + 1];
    v644 = ((v1153[1] + v127) & 0xFFFFFFFFFFFFFFC0) >= v124;
    v1153[(((v1153[1] + v127) & 0xFFFFFFFFFFFFFFC0) >= v124) + 1] = (v642 + v127) & 0xFFFFFFFFFFFFFFC0;
    v652 = v126;
    v640 = 8 * v120;
    v637 = (v640 + v126 + 63) & 0xFFFFFFFFFFFFFFC0;
    v634 = 8 * v119;
    v663 = v122;
    v632 = (8 * v119 + v637 + 63) & 0xFFFFFFFFFFFFFFC0;
    v128 = (v122 + v632 + 63) & 0xFFFFFFFFFFFFFFC0;
    v117 = 0x100000004;
  }

  else
  {
    v123 = 0;
    v658 = 0;
    v656 = 0;
    LODWORD(v660) = 0;
    v650 = 0;
    v648 = 0;
    v654 = 0;
    v644 = 0;
    v642 = 0;
    v646 = 0;
    v652 = 0;
    LODWORD(v640) = 0;
    v637 = 0;
    v634 = 0;
    v632 = 0;
    v663 = 0;
    v128 = v1154;
    v120 = v1167;
  }

  v630 = v117;
  v145 = v120 >= 0x800001 || v119 >= 0x101;
  v146 = 2;
  if (v145)
  {
    v146 = 3;
  }

  if (v120 >= 0x801 || v119 >= 0x11)
  {
    v148 = v146;
  }

  else
  {
    v148 = 1;
  }

  v149 = v120 << v148;
  v150 = (v120 << v148) + 63;
  v628 = v128;
  v151 = v150 + v128;
  v622 = (v150 + v128) & 0xFFFFFFFFFFFFFFC0;
  if (v118 != 1)
  {
    v531 = v120 << v148;
    v199 = v1178;
    v200 = v120 - 1;
    v201 = (v1178 + v120 - 1) / v1178;
    v202 = v1149;
    v203 = ((v1153[3] + v150) & 0xFFFFFFFFFFFFFFC0) >= v1149;
    v204 = &v1153[(((v1153[3] + v150) & 0xFFFFFFFFFFFFFFC0) >= v1149) + 1];
    v205 = v204[2];
    v204[2] = (v205 + v150) & 0xFFFFFFFFFFFFFFC0;
    v206 = v201 << v148;
    v692 = ((v151 | 0x3E) + (v201 << v148)) & 0xFFFFFFFFFFFFFFC0;
    v207 = v1160;
    v557 = v206;
    if ((v1160 & 0x100) != 0)
    {
      v227 = ((v120 + 2047) >> 1) & 0x7FFFFC00;
      v549 = v227 + 1024;
      v215 = 4 * v120;
      v228 = 4 * v120 + 63;
      v219 = ((v1153[3] + v228) & 0xFFFFFFFFFFFFFFC0) >= v202;
      v218 = v1153[(((v1153[3] + v228) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3];
      v1153[(((v1153[3] + v228) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3] = (v218 + v228) & 0xFFFFFFFFFFFFFFC0;
      v217 = ((v1153[3] + v228) & 0xFFFFFFFFFFFFFFC0) >= v202;
      v216 = v1153[(((v1153[3] + v228) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3];
      v1153[(((v1153[3] + v228) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3] = (v216 + v228) & 0xFFFFFFFFFFFFFFC0;
      v229 = v227 + 1087;
      v214 = ((v1153[3] + v229) & 0xFFFFFFFFFFFFFFC0) >= v202;
      v213 = v1153[(((v1153[3] + v229) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3];
      v1153[(((v1153[3] + v229) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3] = (v213 + v229) & 0xFFFFFFFFFFFFFFC0;
      v208 = ((v120 + 0x3FFF) >> 11) & 0x1FFFF8;
      v230 = v208 + 63;
      v210 = ((v1153[3] + v230) & 0xFFFFFFFFFFFFFFC0) >= v202;
      v209 = v1153[(((v1153[3] + v230) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3];
      v1153[(((v1153[3] + v230) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3] = (v209 + v230) & 0xFFFFFFFFFFFFFFC0;
      v212 = v1148;
      v211 = 1;
    }

    else
    {
      v208 = 0;
      v209 = 0;
      v210 = 0;
      v211 = 0;
      v212 = 0;
      v549 = 0;
      v213 = 0;
      v214 = 0;
      v215 = 0;
      v216 = 0;
      v217 = 0;
      v218 = 0;
      v219 = 0;
    }

    v231 = 4 * v201;
    v537 = v209;
    v535 = v210;
    if ((v207 & 0x80) == 0)
    {
      v602 = 0;
      LODWORD(v606) = 0;
      v600 = 0;
      v232 = 0;
      v233 = 0;
      v594 = 0;
      v592 = 0;
      v234 = 0;
      v612 = 0;
      v235 = 0;
      v604 = 0;
      v598 = 0;
      v596 = 0;
      v236 = 0;
      v590 = 0;
      v237 = 0;
      v608 = 0;
      v238 = 0;
      v239 = 0;
      v240 = 0;
      v241 = 0;
      v524 = 0;
      v242 = 0;
LABEL_471:
      v542 = v213;
      v544 = v216;
      v548 = v218;
      v560 = v123;
      v347 = v231 + 63;
      v626 = v215;
      v624 = v219;
      v556 = v211;
      v554 = v205;
      v552 = v203;
      v620 = v233;
      v618 = v234;
      v546 = v208;
      v540 = v214;
      v534 = 4 * v201;
      v616 = v239;
      v685 = v236;
      v614 = v238;
      v676 = v240;
      v667 = v241;
      v530 = v242;
      v610 = v237;
      v528 = v235;
      v164 = v212;
      if ((~v207 & 0x280) != 0)
      {
        v520 = v692;
        v348 = &xmmword_29D2F2000;
        v523 = 0x100000004;
        v516 = v1148;
        v518 = 4 * v201;
        v692 = (v347 + v692) & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v518 = 0;
        v520 = 0;
        v516 = 0;
        v523 = 0;
        v348 = &xmmword_29D2F2000;
      }

      v582 = v217;
      v349 = v201;
      v586 = (v201 + 1) << 7;
      v350 = v692 + v586 + 63;
      v584 = v350 & 0xFFFFFFFFFFFFFFC0;
      v351 = AGX::BVHDescriptor::maxInnerNodeCount(v1155);
      v184 = 0;
      v566 = 0;
      v190 = 0;
      v182 = 0;
      v568 = 0;
      v564 = 0;
      if (v120 <= 1)
      {
        v352 = 1;
      }

      else
      {
        v352 = v120;
      }

      v353 = 28 * v352;
      v354 = 40 * v351 + 24 * (v352 + v349);
      if (v353 <= v354)
      {
        v353 = v354;
      }

      v578 = v353;
      v572 = ((v350 | 0x3C) + v353) & 0xFFFFFFFFFFFFFFC0;
      v574 = (v572 + 79) & 0xFFFFFFFFFFFFFFC0;
      v580 = (v347 + v574) & 0xFFFFFFFFFFFFFFC0;
      v576 = 24 * v349;
      v1154 = (24 * v349 + v580 + 63) & 0xFFFFFFFFFFFFFFC0;
      v188 = 0;
      v187 = *(v348 + 358);
      v561 = 1;
      v570 = 16;
      v158 = v1148;
      v177 = v232;
      v588 = v232;
      v171 = v622;
      v181 = v531;
      v172 = v531;
      v191 = 0;
      v152 = v560;
      v163 = v556;
      v170 = v557;
      v173 = v554;
      v174 = v552;
      v165 = v549;
      v169 = v548;
      v160 = v546;
      v168 = v544;
      v166 = v542;
      v167 = v540;
      v161 = v537;
      v162 = v535;
      v159 = v534;
      v186 = v530;
      v189 = v528;
      v154 = v524;
      v185 = v523;
      v156 = v520;
      v155 = v518;
      v157 = v516;
      goto LABEL_480;
    }

    v239 = 2 * v120;
    v247 = 2 * v120 + 63;
    v669 = ((v1153[3] + v247) & 0xFFFFFFFFFFFFFFC0) >= v202;
    v248 = &v1153[(((v1153[3] + v247) & 0xFFFFFFFFFFFFFFC0) >= v202) + 1];
    v677 = v248[2];
    v248[2] = (v677 + v247) & 0xFFFFFFFFFFFFFFC0;
    v249 = 36 * (2 * v201 - 1);
    if ((v207 & 0x200) != 0)
    {
      v252 = (v249 + v692 + 63) & 0xFFFFFFFFFFFFFFC0;
      v237 = 1;
      v608 = 4;
      if ((v207 & 0x100) != 0)
      {
        goto LABEL_362;
      }
    }

    else
    {
      v250 = v249 + 63;
      v237 = ((v1153[3] + v250) & 0xFFFFFFFFFFFFFFC0) >= v202;
      v251 = &v1153[(((v1153[3] + v250) & 0xFFFFFFFFFFFFFFC0) >= v202) + 1];
      v252 = v692;
      v253 = v251[2];
      v251[2] = (v253 + v250) & 0xFFFFFFFFFFFFFFC0;
      v692 = v253;
      v608 = 1;
      if ((v207 & 0x100) != 0)
      {
LABEL_362:
        v602 = 0;
        LODWORD(v606) = 0;
        v600 = 0;
        v232 = 0;
        v233 = 0;
        v594 = 0;
        v592 = 0;
        v234 = 0;
        v612 = 0;
        v235 = 0;
        v604 = 0;
        v598 = 0;
        v596 = 0;
        v242 = 0;
        v524 = 1;
        v238 = v1148;
        v590 = v692;
        v692 = v252;
LABEL_470:
        v236 = 36 * (2 * v201 - 1);
        v240 = v677;
        v241 = v669;
        goto LABEL_471;
      }
    }

    v344 = ((v120 + 1023) >> 8) & 0xFFFFFC;
    if (96 * ((v120 + 511) >> 9) > v344)
    {
      v344 = 96 * ((v120 + 511) >> 9);
    }

    v604 = v344;
    v345 = v344 + 63;
    v598 = v1153[(((v1153[3] + v345) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3];
    v596 = ((v1153[3] + v345) & 0xFFFFFFFFFFFFFFC0) >= v202;
    v1153[(((v1153[3] + v345) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3] = (v598 + v345) & 0xFFFFFFFFFFFFFFC0;
    if (v199 >= 0x200)
    {
      v199 = 512;
    }

    v145 = __CFADD__(v199, v200);
    v346 = 2 * ((v199 + v200) / v199);
    if (v145)
    {
      v346 = 2;
    }

    v606 = 1440 * v346;
    v602 = v1153[((((v606 | 0x3F) + v1153[3]) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3];
    v600 = (((v606 | 0x3F) + v1153[3]) & 0xFFFFFFFFFFFFFFC0) >= v202;
    v1153[((((v606 | 0x3F) + v1153[3]) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3] = ((v606 | 0x3F) + v602) & 0xFFFFFFFFFFFFFFC0;
    v592 = v1153[(((v1153[3] + v231 + 63) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3];
    v594 = ((v1153[3] + v231 + 63) & 0xFFFFFFFFFFFFFFC0) >= v202;
    v1153[(((v1153[3] + v231 + 63) & 0xFFFFFFFFFFFFFFC0) >= v202) + 3] = (v592 + v231 + 63) & 0xFFFFFFFFFFFFFFC0;
    v242 = 0x100000004;
    v590 = v692;
    v232 = v1148;
    v233 = 1;
    v234 = 4 * v201;
    v612 = v252;
    v238 = v1148;
    v524 = 1;
    v692 = (v252 + 399) & 0xFFFFFFFFFFFFFFC0;
    v235 = 336;
    goto LABEL_470;
  }

  v152 = v123;
  v153 = AGX::BVHDescriptor::maxInnerNodeCount(v1155);
  v602 = 0;
  LODWORD(v606) = 0;
  v600 = 0;
  v620 = 0;
  v594 = 0;
  v592 = 0;
  v618 = 0;
  v604 = 0;
  v598 = 0;
  v596 = 0;
  v685 = 0;
  v590 = 0;
  v610 = 0;
  v608 = 0;
  v614 = 0;
  v616 = 0;
  v676 = 0;
  v667 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v576 = 0;
  v580 = 0;
  v158 = 0;
  v159 = 0;
  v574 = 0;
  v570 = 0;
  v572 = 0;
  v578 = 0;
  v584 = 0;
  LODWORD(v586) = 0;
  v692 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v626 = 0;
  v168 = 0;
  v582 = 0;
  v169 = 0;
  v624 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v561 = 0;
  if (v120 <= v153)
  {
    v175 = v153;
  }

  else
  {
    v175 = v120;
  }

  v176 = v151 | 0x38;
  v177 = 0;
  v564 = 24 * v175;
  v178 = (v176 + 24 * v175) & 0xFFFFFFFFFFFFFFC0;
  v179 = v153;
  v180 = 3 * v153;
  v181 = v149;
  v182 = 8 * v180;
  v568 = v178;
  v183 = (8 * v180 + v178 + 63) & 0xFFFFFFFFFFFFFFC0;
  v184 = 16 * v179;
  v566 = v183;
  v612 = (16 * v179 + v183 + 63) & 0xFFFFFFFFFFFFFFC0;
  v1154 = (v612 + 111) & 0xFFFFFFFFFFFFFFC0;
  v185 = 0;
  v186 = 0x100000004;
  v187 = 0;
  v188 = 0x100000004;
  v588 = v1148;
  v189 = 48;
  v190 = v1148;
  v191 = v622;
LABEL_480:
  v1010 = v191;
  v1011 = v564;
  v1015 = v568;
  v1016 = v182;
  v1020 = v566;
  v1021 = v184;
  v1024 = __PAIR64__(v174, v561);
  v1025 = v173;
  v1026 = v172;
  v1030 = v628;
  v1031 = v181;
  v1035 = v171;
  v1036 = v170;
  v1040 = v169;
  v1045 = v168;
  v1050 = v166;
  v1051 = v165;
  v1055 = v161;
  v1056 = v160;
  v1060 = v692;
  v1061 = v586;
  v1065 = v584;
  v1066 = v578;
  v1070 = v572;
  v1071 = v570;
  v1075 = v574;
  v1076 = v159;
  v1080 = v580;
  v1081 = v576;
  v1083 = v157;
  v1085 = v156;
  v1086 = v155;
  v1089 = __PAIR64__(v667, v154);
  v1090 = v676;
  v1091 = v616;
  v1094 = __PAIR64__(v610, v608);
  v1095 = v590;
  v1096 = v685;
  v1100 = v598;
  v1101 = v604;
  v1105 = v602;
  v1106 = v606;
  v1110 = v592;
  v1037 = 0;
  v1008 = v190;
  v1009 = v188;
  v1012 = 0;
  v1013 = v190;
  v1014 = v188;
  v1017 = 0;
  v1018 = v190;
  v1019 = v188;
  v1022 = 0;
  v1023 = v158;
  v1027 = 0;
  v1028 = v1148;
  v1029 = 0x100000004;
  v1032 = 0;
  v1033 = v158;
  v1034 = v187;
  v1038 = v164;
  v1039 = __PAIR64__(v624, v163);
  v1041 = v626;
  v1042 = 0;
  v1043 = v164;
  v1044 = __PAIR64__(v582, v163);
  v1046 = v626;
  v1047 = 0;
  v1048 = v164;
  v1049 = __PAIR64__(v167, v163);
  v1052 = 0;
  v1053 = v164;
  v1054 = __PAIR64__(v162, v163);
  v1057 = 0;
  v1058 = v158;
  v1059 = v187;
  v1062 = 0;
  v1063 = v158;
  v1064 = v187;
  v1067 = 0;
  v1068 = v158;
  v1069 = v187;
  v1072 = 0;
  v1073 = v158;
  v1074 = v187;
  v1077 = 0;
  v1078 = v158;
  v1079 = v187;
  v1082 = 0;
  v1084 = v185;
  v1087 = 0;
  v1088 = v614;
  v1092 = 0;
  v1093 = v614;
  v1097 = 0;
  v1098 = v177;
  v1099 = __PAIR64__(v596, v620);
  v1102 = 0;
  v1103 = v177;
  v1104 = __PAIR64__(v600, v620);
  v1107 = 0;
  v1108 = v177;
  v1109 = __PAIR64__(v594, v620);
  v1111 = v618;
  v1112 = 0;
  v1113 = v588;
  v1114 = v186;
  v1115 = v612;
  v1116 = v189;
  v1117 = 0;
  v1118 = v152;
  LODWORD(v1119) = 0;
  HIDWORD(v1119) = v658;
  v1120 = v656;
  v1121 = v660;
  v1122 = 0;
  v1123 = v152;
  LODWORD(v1124) = 0;
  HIDWORD(v1124) = v650;
  v1125 = v648;
  v1126 = v654;
  v1127 = 0;
  v1128 = v152;
  LODWORD(v1129) = 0;
  HIDWORD(v1129) = v644;
  v1130 = v642;
  v1131 = v646;
  v1132 = 0;
  v1133 = v152;
  v1134 = v630;
  v1135 = v652;
  v1136 = v640;
  v1137 = 0;
  v1138 = v152;
  v1139 = v630;
  v1140 = v637;
  v1141 = v634;
  v1142 = 0;
  v1143 = v152;
  v1144 = v630;
  v1145 = v632;
  v1146 = v663;
  v355 = &v1008;
  v1147 = 0x200000000;
LABEL_534:
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildAndEncodeRiaBvh(*(v679 + 96), v1155, v1148, v355, v680, v681, v682, v683);
  objc_autoreleasePoolPop(context);
}

- (void)writeTimestampWithGranularity:(int64_t)a3 intoHeap:(id)a4 atIndex:(unint64_t)a5
{
  if (!HIDWORD(a5))
  {
    v5 = a5;
    if ([a4 count] >= a5)
    {
      impl = self->_impl;
      if (impl[5864])
      {
        *&v10 = a4;
        DWORD2(v10) = v5;
        std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100]((impl + 5840), &v10);
        if (a3 == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(impl);

          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(impl);
        }
      }

      else
      {
        *&v10 = a4;
        DWORD2(v10) = v5;
        std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100]((impl + 5816), &v10);
      }
    }
  }
}

- (void)copyTextureMappingsFromTexture:(id)a3 toTexture:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v6 = *(self->_legacy_blit_context + 1);
  v7 = v6[485];
  v6[486] = v7;
  if (a6)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = &a5[v13];
      var1_low = LODWORD(v15->var1);
      var2 = v15->var2;
      v21 = *&v15->var3.var0;
      var4 = v15->var4;
      v22 = v15->var3.var2;
      var5 = v15->var5;
      legacy_blit_context = self->_legacy_blit_context;
      v23 = *&v15->var0.var0.var0;
      v24 = v15->var0.var0.var2;
      v25 = *&v15->var0.var1.var0;
      v26 = v15->var0.var1.var2;
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(legacy_blit_context, a3, &v23, var1_low, var2, 0, 0, 0, 0, a4, &v21, var4, var5, 1u, 0);
      v13 = v14++;
    }

    while (v13 < a6);
    v6 = *(self->_legacy_blit_context + 1);
    v7 = v6[485];
  }

  v6[487] = v7;
}

- (void)copyTextureMappingsFromTexture:(id)a3 sourceSlices:(const unint64_t *)a4 sourceLevels:(const unint64_t *)a5 sourceOrigins:(id *)a6 sourceSizes:(id *)a7 numSizes:(unint64_t)a8 toTexture:(id)a9 destinationSlices:(const unint64_t *)a10 destinationLevels:(const unint64_t *)a11 destinationOrigins:(id *)a12
{
  legacy_blit_context = self->_legacy_blit_context;
  v13 = legacy_blit_context[1];
  v14 = v13[485];
  v13[486] = v14;
  if (a8)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = v21;
      v24 = &a6[v21];
      v30 = *&v24->var0;
      var2 = v24->var2;
      v25 = &a7[v21];
      v32 = *&v25->var0;
      v26 = v21;
      v27 = LODWORD(a5[v26]);
      v28 = a4[v26];
      v33 = v25->var2;
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(legacy_blit_context, a3, &v30, v27, v28, 0, 0, 0, 0, a9, &a12[v23], a11[v26], a10[v26], 1u, 0);
      v21 = v22++;
    }

    while (v21 < a8);
    v13 = *(self->_legacy_blit_context + 1);
    v14 = v13[485];
  }

  v13[487] = v14;
}

- (void)updateTextureMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v6 = *(self->_legacy_blit_context + 1);
  v7 = v6[485];
  v6[486] = v7;
  if (a6)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = &a5[v12];
      v15 = *&v14->var3;
      v16 = *&v14->var1.var0.var1;
      v20[0] = *&v14->var0;
      v20[1] = v16;
      v17 = *&v14->var1.var1.var0;
      v21 = *&v14->var1.var1.var2;
      v22 = v15;
      v20[2] = v17;
      legacy_blit_context = self->_legacy_blit_context;
      if (LODWORD(v20[0]))
      {
        AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(legacy_blit_context, a3, v20 + 2, DWORD2(v21), v15, v20[0], 0, 0, 0, 0, 0, 0, 0, 1u, 0);
      }

      else
      {
        AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(legacy_blit_context, a3, v20 + 2, DWORD2(v21), v15, 0, 0, 0, 0, 0, 0, 0, 0, 1u, [*(a4 + *MEMORY[0x29EDC5618]) gpuAddress] + *(&v22 + 1) * *(*(a3 + 74) + 236));
      }

      v12 = v13++;
    }

    while (v12 < a6);
    v6 = *(self->_legacy_blit_context + 1);
    v7 = v6[485];
  }

  v6[487] = v7;
}

- (void)updateTextureMappings:(id)a3 numRegions:(unint64_t)a4 regions:(id *)a5 levels:(const unint64_t *)a6 slices:(const unint64_t *)a7 heap:(id)a8 rangeModes:(const unint64_t *)a9 rangeOffsets:(unint64_t *)a10
{
  legacy_blit_context = self->_legacy_blit_context;
  v11 = legacy_blit_context[1];
  v12 = v11[485];
  v11[486] = v12;
  v13 = a4;
  if (a4)
  {
    do
    {
      v23 = *a6++;
      v22 = v23;
      v25 = *a7++;
      v24 = v25;
      v27 = *a9;
      a9 = (a9 + 4);
      v26 = v27;
      if (v27)
      {
        AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(legacy_blit_context, a3, a5, v22, v24, v26, 0, 0, 0, 0, 0, 0, 0, 1u, 0);
      }

      else
      {
        v19 = legacy_blit_context;
        v20 = *a10;
        v21 = [*(a8 + *MEMORY[0x29EDC5618]) gpuAddress] + v20 * *(*(a3 + 74) + 236);
        legacy_blit_context = v19;
        AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(v19, a3, a5, v22, v24, 0, 0, 0, 0, 0, 0, 0, 0, 1u, v21);
      }

      ++a10;
      ++a5;
      --v13;
    }

    while (v13);
    v11 = *(self->_legacy_blit_context + 1);
    v12 = v11[485];
  }

  v11[487] = v12;
}

- (AGXG18PFamilyComputeContext_mtlnext)initWithCommandBufferForQueueSparseOperation:(id)a3 allocator:(id)a4
{
  v16.receiver = self;
  v16.super_class = AGXG18PFamilyComputeContext_mtlnext;
  v5 = [(IOGPUMetal4ComputeCommandEncoder *)&v16 initWithCommandAllocator:a4];
  if (v5)
  {
    *(v5 + 14) = [a3 device];
    v6 = *(a3 + 13);
    *(v6 + 20) = 1;
    v7 = *(v6 + 16);
    v8 = [a3 protectionOptions];
    v9 = [a3 device];
    v10 = *(*(v5 + 14) + 848);
    if (*(v10 + 15792) >> 3 < 0x551uLL)
    {
      v13 = 0;
    }

    else
    {
      os_unfair_lock_lock((v10 + 15804));
      v11 = *(v10 + 15800);
      if (v11)
      {
        v12 = v11 - 1;
        *(v10 + 15800) = v12;
        v13 = *(v10 + 8 * v12 + 15808);
        os_unfair_lock_unlock((v10 + 15804));
        if (v13)
        {
          bzero(v13, *(v10 + 15792));
          goto LABEL_8;
        }
      }

      else
      {
        os_unfair_lock_unlock((v10 + 15804));
      }

      v13 = malloc_type_calloc(*(v10 + 15792), 1uLL, 0x689CC946uLL);
    }

LABEL_8:
    *(v5 + 9) = v13;
    *(v5 + 11) = v13 + 5880;
    *(v5 + 10) = 0;
    *(v5 + 12) = 0;
    if (v13)
    {
      v17[0] = v9;
      v17[1] = a3;
      v17[2] = v5;
      v25 = 1;
      v26[0] = 0;
      v26[1] = 0;
      v27 = v7;
      v28 = 1;
      v29 = 0;
      v30 = 0;
      v31 = 1;
      v32 = [0 usedForRaytracingEmulation];
      v18 = 1;
      v19 = 0;
      v20 = v7;
      v21 = 0;
      v22 = 1;
      v23 = v8;
      v24 = 0;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::ComputeContext<AGX::HAL300::EncoderComputeServiceConfigB>(v13, v26, v17);
      v14 = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::BlitDispatchContext(*(v5 + 11), *(v5 + 9), 0, 0, 1);
      *(v14 + 4896) = 0;
      *(v14 + 4960) = 0;
      *(v14 + 4968) = 0;
      *(v14 + 4912) = 0u;
      *(v14 + 4928) = 0u;
      *v14 = &unk_2A23F7410;
      *(v14 + 4992) = *(*(v14 + 8) + 1872);
      *(v14 + 5000) = 0;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  if ((a4 + 68) > 0x1E)
  {
    v6 = impl[568];
    v7 = (a4 + 37);
    v5 = (v6 + 8 * v7 + 1272);
  }

  else
  {
    v5 = (*(impl[567] + 24) + *(impl[567] + 4) + 8 * (a4 + 68));
    v6 = impl[568];
    v7 = (a4 + 37);
  }

  *v5 = a3;
  *(v6 + 8 * v7 + 1576) = 0;
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  v11 = a5;
  v12 = a4;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (!AGX::BlitUtil::requireLegacyBlit<true>(a3))
  {
    blit_context = self->_blit_context;
    v38 = *&a6->var0.var2;
    v40 = *&a6->var0.var0;
    v41 = v38;
    v42 = *&a6->var1.var1;
    AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::fillTexture(blit_context, a3, v12, v11, &v40, a7, a8);
    return;
  }

  if (self)
  {
    bvh_builder = self->_bvh_builder;
    if (bvh_builder && self->_bvhFlushOnSplit)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
      self->_bvhFlushOnSplit = 0;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
    v17 = self->_blit_context;
    if (v17)
    {
      v17[1192] = 0;
      v17[2348] = 0;
    }
  }

  legacy_blit_context = self->_legacy_blit_context;
  *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
  v19 = *&a6->var0.var2;
  v40 = *&a6->var0.var0;
  v41 = v19;
  v42 = *&a6->var1.var1;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillTexture(legacy_blit_context, a3, v12, v11, &v40, a7, a8);
  v20 = self->_impl;
  v21 = v20[6];
  if (!*(v21 + 1240) || !*(v21 + 1248))
  {
    v22 = v20[85];
    if (!v22)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v20 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v22 = v20[85];
    }

    v23 = v22 + 16;
    if ((v22 + 16) <= v20[84])
    {
      goto LABEL_18;
    }

    v39 = AGX::DataBufferAllocator<44ul>::growNoInline(v20 + 3, 19, 0);
    v22 = v20[85];
    if (!v39)
    {
      goto LABEL_19;
    }

    v23 = v22 + 16;
    if ((v22 + 16) <= v20[84])
    {
LABEL_18:
      v20[86] = v23;
LABEL_19:
      v20[85] = v22 + 16;
      goto LABEL_20;
    }

LABEL_34:
    abort();
  }

LABEL_20:
  IOGPUResourceListAddResource();
  v24 = self->_legacy_blit_context;
  *(v24[1] + 1948) = *(v24[1] + 1940);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v24, 1, v25, v26, v27, v28);
  v29 = v24[27];
  if (v29)
  {
    LODWORD(v29) = *(v29 + 528);
  }

  v30 = v24[26];
  if (v30)
  {
    LODWORD(v30) = *(v30 + 528);
  }

  if (v29 + v30)
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v24, 0);
    v31 = v24[1];
    LODWORD(v40) = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v31 + 24, &v40);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v24, 1, v32, v33, v34, v35);
  }

  v36 = self->_impl;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v36);
}

- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5
{
  length = a4.length;
  location = a4.location;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (!AGX::BlitUtil::requireLegacyBlit<true>(0))
  {
    blit_context = self->_blit_context;
    v34 = a5;
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(blit_context + 1, a3, *(a3 + *MEMORY[0x29EDC5638] + 72) + location, 0, 0, length, &v34, 4uLL);
    return;
  }

  if (self)
  {
    bvh_builder = self->_bvh_builder;
    if (bvh_builder && self->_bvhFlushOnSplit)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
      self->_bvhFlushOnSplit = 0;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
    v12 = self->_blit_context;
    if (v12)
    {
      v12[1192] = 0;
      v12[2348] = 0;
    }
  }

  legacy_blit_context = self->_legacy_blit_context;
  *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
  v33 = a5;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillBuffer(legacy_blit_context, a3, location, length, &v33, 4uLL);
  v14 = self->_impl;
  v15 = v14[6];
  if (!*(v15 + 1240) || !*(v15 + 1248))
  {
    v16 = v14[85];
    if (!v16)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v16 = v14[85];
    }

    v17 = v16 + 16;
    if ((v16 + 16) <= v14[84])
    {
      goto LABEL_18;
    }

    v32 = AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 3, 19, 0);
    v16 = v14[85];
    if (!v32)
    {
      goto LABEL_19;
    }

    v17 = v16 + 16;
    if ((v16 + 16) <= v14[84])
    {
LABEL_18:
      v14[86] = v17;
LABEL_19:
      v14[85] = v16 + 16;
      goto LABEL_20;
    }

LABEL_34:
    abort();
  }

LABEL_20:
  IOGPUResourceListAddResource();
  v18 = self->_legacy_blit_context;
  *(v18[1] + 1948) = *(v18[1] + 1940);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v18, 1, v19, v20, v21, v22);
  v23 = v18[27];
  if (v23)
  {
    LODWORD(v23) = *(v23 + 528);
  }

  v24 = v18[26];
  if (v24)
  {
    LODWORD(v24) = *(v24 + 528);
  }

  if (v23 + v24)
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v18, 0);
    v25 = v18[1];
    v35 = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v25 + 24, &v35);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v18, 1, v26, v27, v28, v29);
  }

  v30 = self->_impl;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v30);
}

- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v8 = a4.var1;
  v9 = a4.var0;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  blit_context = self->_blit_context;
  v13 = *blit_context;
  v14 = *(*blit_context + 168);
  v15 = v14 + 196;
  if ((v14 + 196) <= *(*blit_context + 160))
  {
    goto LABEL_8;
  }

  v45 = AGX::DataBufferAllocator<44ul>::growNoInline(v13 + 3, 3, 0);
  v14 = v13[21];
  if (v45)
  {
    v15 = v14 + 196;
    if ((v14 + 196) > v13[20])
    {
      abort();
    }

LABEL_8:
    v13[22] = v15;
  }

  v49 = v13[23];
  v13[21] = v14 + 196;
  v16 = *[v8 tensorExtentsInternal];
  v17 = *[var1 tensorExtentsInternal];
  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v14[193] = v18;
  v14[194] = v16;
  v14[195] = v17;
  v50 = v14;
  if (v16)
  {
    v47 = blit_context;
    v48 = a5;
    v19 = 0;
    v20 = v16;
    v21 = v14 + 64;
    v22 = 1;
    v23 = 1;
    for (i = [v8 tensorExtentsInternal]; ; i = objc_msgSend(v8, "tensorExtentsInternal", v46))
    {
      v25 = *(i + 8 * v19 + 8);
      if (v25)
      {
        *(v21 - 32) = *([v9 tensorExtentsInternal] + 8 * v19 + 8);
        v23 *= v25;
        v21[32] = v23;
        *v21 = *(*(a3 + 41) + 8 * v19 + 192);
        v22 *= v25;
      }

      ++v19;
      ++v21;
      if (v20 == v19)
      {
        break;
      }
    }
  }

  else
  {
    if (*(*(a3 + 41) + 337))
    {
      return;
    }

    v46 = v17;
    v47 = blit_context;
    v48 = a5;
    v22 = 1;
    v50[194] = 1;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v50[193] = v18;
    *v50 = 0;
    *(v50 + 64) = 1;
    *(v50 + 32) = 1;
  }

  if (v46)
  {
    v26 = 0;
    v27 = v46;
    v28 = v50 + 96;
    v29 = 1;
    v31 = v47;
    v30 = v48;
    do
    {
      v32 = *([var1 tensorExtentsInternal] + 8 * v26 + 8);
      if (v32)
      {
        *(v28 - 32) = *([var0 tensorExtentsInternal] + 8 * v26 + 8);
        v29 *= v32;
        v28[32] = v29;
        *v28 = *(v48[41] + 8 * v26 + 192);
      }

      ++v26;
      ++v28;
    }

    while (v27 != v26);
    v33 = a3;
  }

  else
  {
    v31 = v47;
    v30 = v48;
    v33 = a3;
    if (*(v48[41] + 337))
    {
      return;
    }

    v50[195] = 1;
    v44 = v50[193];
    if (v44 <= 1)
    {
      v44 = 1;
    }

    v50[193] = v44;
    *(v50 + 16) = 0;
    *(v50 + 80) = 1;
    *(v50 + 48) = 1;
  }

  v34 = AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[*(v33[41] + 24)];
  v50[192] = v34;
  v54 = 103;
  v56 = 0;
  v57 = 0;
  __p = 0;
  v53 = &unk_2A23F7488;
  v58 = 0;
  TensorBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTensorBlitPipeline(*(v31[7] + 848), &v53);
  v36 = *(*(TensorBlitPipeline + 16) + 4064);
  v37 = v31[6];
  v38 = (*(v37 + 24) + *(v37 + 4));
  *v38 = *v33[41] + *(v33[41] + 32) * v34;
  v38[1] = *v30[41] + *(v30[41] + 32) * v34;
  v38[2] = v50 + v49;
  v39 = *v31;
  *(v39 + 2060) = *(*v31 + 2060) | 2;
  v40 = *(v39 + 4536);
  *(v39 + 4536) = v37;
  v41 = *(v39 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v39, TensorBlitPipeline);
  v61 = v22;
  v42 = vdupq_n_s64(1uLL);
  if (v22 >= v36)
  {
    v43 = v36;
  }

  else
  {
    v43 = v22;
  }

  v62 = v42;
  v59 = v43;
  v60 = v42;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(v39, 22, &v61, &v59);
  if (*(v39 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v39, 22, 0, 0, 0);
  }

  if (v41)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v39, v41);
  }

  if (v40)
  {
    *(v39 + 4536) = v40;
  }

  v53 = &unk_2A23F74C8;
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }
}

- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4
{
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<false>(0))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    *(*(self->_legacy_blit_context + 1) + 1944) = *(*(self->_legacy_blit_context + 1) + 1940);
    v8 = self->_impl;
    v9 = v8[6];
    if (*(v9 + 1240) && *(v9 + 1248))
    {
      goto LABEL_20;
    }

    v10 = v8[85];
    if (!v10)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v8 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v10 = v8[85];
    }

    v11 = v10 + 16;
    if ((v10 + 16) <= v8[84])
    {
      goto LABEL_18;
    }

    v25 = AGX::DataBufferAllocator<44ul>::growNoInline(v8 + 3, 19, 0);
    v10 = v8[85];
    if (!v25)
    {
      goto LABEL_19;
    }

    v11 = v10 + 16;
    if ((v10 + 16) <= v8[84])
    {
LABEL_18:
      v8[86] = v11;
LABEL_19:
      v8[85] = v10 + 16;
LABEL_20:
      IOGPUResourceListAddResource();
      legacy_blit_context = self->_legacy_blit_context;
      *(legacy_blit_context[1] + 1948) = *(legacy_blit_context[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(legacy_blit_context, 1, v13, v14, v15, v16);
      v17 = legacy_blit_context[27];
      if (v17)
      {
        LODWORD(v17) = *(v17 + 528);
      }

      v18 = legacy_blit_context[26];
      if (v18)
      {
        LODWORD(v18) = *(v18 + 528);
      }

      if (v17 + v18)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(legacy_blit_context, 0);
        v19 = legacy_blit_context[1];
        v26 = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v19 + 24, &v26);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(legacy_blit_context, 1, v20, v21, v22, v23);
      }

      v24 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v24);
      return;
    }

LABEL_34:
    abort();
  }
}

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  v6 = a6;
  length = a4.length;
  location = a4.location;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<false>(0))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCopyICBWithTA(legacy_blit_context, *(a5 + 52), v6, *(a3 + 52), location, length, *(a3 + 102) == 0);
    v16 = self->_impl;
    v17 = v16[6];
    if (*(v17 + 1240) && *(v17 + 1248))
    {
      goto LABEL_20;
    }

    v18 = v16[85];
    if (!v18)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v16 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v18 = v16[85];
    }

    v19 = v18 + 16;
    if ((v18 + 16) <= v16[84])
    {
      goto LABEL_18;
    }

    v33 = AGX::DataBufferAllocator<44ul>::growNoInline(v16 + 3, 19, 0);
    v18 = v16[85];
    if (!v33)
    {
      goto LABEL_19;
    }

    v19 = v18 + 16;
    if ((v18 + 16) <= v16[84])
    {
LABEL_18:
      v16[86] = v19;
LABEL_19:
      v16[85] = v18 + 16;
LABEL_20:
      IOGPUResourceListAddResource();
      v20 = self->_legacy_blit_context;
      *(v20[1] + 1948) = *(v20[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v20, 1, v21, v22, v23, v24);
      v25 = v20[27];
      if (v25)
      {
        LODWORD(v25) = *(v25 + 528);
      }

      v26 = v20[26];
      if (v26)
      {
        LODWORD(v26) = *(v26 + 528);
      }

      if (v25 + v26)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v20, 0);
        v27 = v20[1];
        v34 = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v27 + 24, &v34);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v20, 1, v28, v29, v30, v31);
      }

      v32 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v32);
      return;
    }

LABEL_34:
    abort();
  }
}

- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<false>(0))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitResetICBWithTA(legacy_blit_context, *(a3 + 52), location, length, *(a3 + 102) == 0);
    v12 = self->_impl;
    v13 = v12[6];
    if (*(v13 + 1240) && *(v13 + 1248))
    {
      goto LABEL_20;
    }

    v14 = v12[85];
    if (!v14)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v12 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v14 = v12[85];
    }

    v15 = v14 + 16;
    if ((v14 + 16) <= v12[84])
    {
      goto LABEL_18;
    }

    v29 = AGX::DataBufferAllocator<44ul>::growNoInline(v12 + 3, 19, 0);
    v14 = v12[85];
    if (!v29)
    {
      goto LABEL_19;
    }

    v15 = v14 + 16;
    if ((v14 + 16) <= v12[84])
    {
LABEL_18:
      v12[86] = v15;
LABEL_19:
      v12[85] = v14 + 16;
LABEL_20:
      IOGPUResourceListAddResource();
      v16 = self->_legacy_blit_context;
      *(v16[1] + 1948) = *(v16[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v16, 1, v17, v18, v19, v20);
      v21 = v16[27];
      if (v21)
      {
        LODWORD(v21) = *(v21 + 528);
      }

      v22 = v16[26];
      if (v22)
      {
        LODWORD(v22) = *(v22 + 528);
      }

      if (v21 + v22)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v16, 0);
        v23 = v16[1];
        v30 = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v23 + 24, &v30);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v16, 1, v24, v25, v26, v27);
      }

      v28 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v28);
      return;
    }

LABEL_34:
    abort();
  }
}

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<true>(a3))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::optimizeContentsForUncompressedAccess(legacy_blit_context, a3, v6, v5);
    v13 = self->_impl;
    v14 = v13[6];
    if (*(v14 + 1240) && *(v14 + 1248))
    {
      goto LABEL_20;
    }

    v15 = v13[85];
    if (!v15)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v13 + 3, 19, 0))
      {
        goto LABEL_36;
      }

      v15 = v13[85];
    }

    v16 = v15 + 16;
    if ((v15 + 16) <= v13[84])
    {
      goto LABEL_18;
    }

    v31 = AGX::DataBufferAllocator<44ul>::growNoInline(v13 + 3, 19, 0);
    v15 = v13[85];
    if (!v31)
    {
      goto LABEL_19;
    }

    v16 = v15 + 16;
    if ((v15 + 16) <= v13[84])
    {
LABEL_18:
      v13[86] = v16;
LABEL_19:
      v13[85] = v15 + 16;
LABEL_20:
      IOGPUResourceListAddResource();
      v17 = self->_legacy_blit_context;
      *(v17[1] + 1948) = *(v17[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v17, 1, v18, v19, v20, v21);
      v22 = v17[27];
      if (v22)
      {
        LODWORD(v22) = *(v22 + 528);
      }

      v23 = v17[26];
      if (v23)
      {
        LODWORD(v23) = *(v23 + 528);
      }

      if (v22 + v23)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v17, 0);
        v24 = v17[1];
        v32 = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v24 + 24, &v32);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v17, 1, v25, v26, v27, v28);
      }

      v29 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v29);
      return;
    }

LABEL_36:
    abort();
  }

  v30 = self->_blit_context;

  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::optimizeContentsForUncompressedAccess(v30, a3, v6, v5);
}

- (void)optimizeContentsForCPUAccess:(id)a3
{
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<true>(a3))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    v9 = *(a3 + 74);
    if (!*(v9 + 48) && *(v9 + 584))
    {
      v28 = *(v9 + 396) & 0xFF00;
      if ((*(v9 + 396) & 0x10000) != 0 || v28 == 1024)
      {
        if (v28 == 1024)
        {
          v29 = 6 * *(v9 + 392);
        }

        else
        {
          v29 = *(v9 + 392);
        }

        if (!v29)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v29 = 1;
      }

      v33 = *(v9 + 108);
      if (v33)
      {
        for (i = 0; i != v29; ++i)
        {
          for (j = 0; j != v33; ++j)
          {
            v36 = *(v9 + 584);
            if (v36 && *(v36 + 1304) > j && !*(v9 + 57))
            {
              AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::optimizeContentsForUncompressedAccess(legacy_blit_context, a3, i, j);
            }
          }
        }
      }
    }

LABEL_15:
    v10 = self->_impl;
    v11 = v10[6];
    if (*(v11 + 1240) && *(v11 + 1248))
    {
      goto LABEL_21;
    }

    v12 = v10[85];
    if (!v12)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v10 + 3, 19, 0))
      {
        goto LABEL_71;
      }

      v12 = v10[85];
    }

    v13 = v12 + 16;
    if ((v12 + 16) <= v10[84])
    {
      goto LABEL_19;
    }

    v41 = AGX::DataBufferAllocator<44ul>::growNoInline(v10 + 3, 19, 0);
    v12 = v10[85];
    if (!v41)
    {
      goto LABEL_20;
    }

    v13 = v12 + 16;
    if ((v12 + 16) <= v10[84])
    {
LABEL_19:
      v10[86] = v13;
LABEL_20:
      v10[85] = v12 + 16;
LABEL_21:
      IOGPUResourceListAddResource();
      v14 = self->_legacy_blit_context;
      *(v14[1] + 1948) = *(v14[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v14, 1, v15, v16, v17, v18);
      v19 = v14[27];
      if (v19)
      {
        LODWORD(v19) = *(v19 + 528);
      }

      v20 = v14[26];
      if (v20)
      {
        LODWORD(v20) = *(v20 + 528);
      }

      if (v19 + v20)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v14, 0);
        v21 = v14[1];
        v42 = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v21 + 24, &v42);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v14, 1, v22, v23, v24, v25);
      }

      v26 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v26);
      return;
    }

LABEL_71:
    abort();
  }

  v27 = *(a3 + 74);
  if (*(v27 + 48) || !*(v27 + 584))
  {
    return;
  }

  v30 = self->_blit_context;
  v31 = *(v27 + 396) & 0xFF00;
  if ((*(v27 + 396) & 0x10000) != 0 || v31 == 1024)
  {
    if (v31 == 1024)
    {
      v32 = 6 * *(v27 + 392);
    }

    else
    {
      v32 = *(v27 + 392);
    }

    if (!v32)
    {
      return;
    }
  }

  else
  {
    v32 = 1;
  }

  v37 = *(v27 + 108);
  if (v37)
  {
    for (k = 0; k != v32; ++k)
    {
      for (m = 0; m != v37; ++m)
      {
        v40 = *(v27 + 584);
        if (v40 && *(v40 + 1304) > m && !*(v27 + 57))
        {
          AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::optimizeContentsForUncompressedAccess(v30, a3, k, m);
        }
      }
    }
  }
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<true>(a3))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    v13 = *(a3 + 74);
    if (!*&v13[6] || (v13[5].i8[0] & 2) != 0)
    {
      v14 = v13[73];
      if (*&v14 && *(*&v14 + 1304) > v5 && !v13[7].i8[1])
      {
        v15 = v13[17].i32[0] >> (v13[18].i8[0] + v5);
        v16 = v15 <= 1 ? 1 : v15;
        v17 = *(*&v13[26] + 24);
        if (v17)
        {
          v18 = 0;
          v19 = vmax_u32(vshl_u32(v13[16], vneg_s32(vdup_n_s32(v13[18].i32[0] + v5))), 0x100000001);
          v20.i64[0] = v19.u32[0];
          v20.i64[1] = v19.u32[1];
          v48 = v20;
          do
          {
            v54 = 0uLL;
            v55 = 0;
            v52 = 0uLL;
            v53 = 0;
            v50 = v48;
            v51 = v16;
            AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToTextureImpl(legacy_blit_context, a3, v18, v6, v5, v54.i8, a3, v18, v6, v5, v52.i8, &v50);
            ++v18;
          }

          while (v17 != v18);
        }
      }
    }

    v21 = self->_impl;
    v22 = v21[6];
    if (*(v22 + 1240) && *(v22 + 1248))
    {
      goto LABEL_31;
    }

    v23 = v21[85];
    if (!v23)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v21 + 3, 19, 0))
      {
        goto LABEL_56;
      }

      v23 = v21[85];
    }

    v24 = v23 + 16;
    if ((v23 + 16) <= v21[84])
    {
      goto LABEL_29;
    }

    v47 = AGX::DataBufferAllocator<44ul>::growNoInline(v21 + 3, 19, 0);
    v23 = v21[85];
    if (!v47)
    {
      goto LABEL_30;
    }

    v24 = v23 + 16;
    if ((v23 + 16) <= v21[84])
    {
LABEL_29:
      v21[86] = v24;
LABEL_30:
      v21[85] = v23 + 16;
LABEL_31:
      IOGPUResourceListAddResource();
      v25 = self->_legacy_blit_context;
      *(v25[1] + 1948) = *(v25[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v25, 1, v26, v27, v28, v29);
      v30 = v25[27];
      if (v30)
      {
        LODWORD(v30) = *(v30 + 528);
      }

      v31 = v25[26];
      if (v31)
      {
        LODWORD(v31) = *(v31 + 528);
      }

      if (v30 + v31)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v25, 0);
        v32 = v25[1];
        v54.i32[0] = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v32 + 24, &v54);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v25, 1, v33, v34, v35, v36);
      }

      v37 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v37);
      return;
    }

LABEL_56:
    abort();
  }

  v38 = self->_blit_context;
  v39 = *(a3 + 74);
  if (!*&v39[6] || (v39[5].i8[0] & 2) != 0)
  {
    v40 = v39[73];
    if (*&v40 && *(*&v40 + 1304) > v5 && !v39[7].i8[1])
    {
      v41 = v39[17].i32[0] >> (v39[18].i8[0] + v5);
      v42 = v41 <= 1 ? 1 : v41;
      v43 = *(*&v39[26] + 24);
      if (v43)
      {
        v44 = 0;
        v45 = vmax_u32(vshl_u32(v39[16], vneg_s32(vdup_n_s32(v39[18].i32[0] + v5))), 0x100000001);
        v46.i64[0] = v45.u32[0];
        v46.i64[1] = v45.u32[1];
        v49 = v46;
        do
        {
          v54 = 0uLL;
          v55 = 0;
          v52 = 0uLL;
          v53 = 0;
          v50 = v49;
          v51 = v42;
          AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToTextureImpl(v38, a3, v44, v6, v5, &v54, a3, v44, v6, v5, &v52, &v50);
          ++v44;
        }

        while (v43 != v44);
      }
    }
  }
}

- (void)optimizeContentsForGPUAccess:(id)a3
{
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<true>(a3))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::optimizeContentsForCompressedAccess(legacy_blit_context, a3);
    v9 = self->_impl;
    v10 = v9[6];
    if (*(v10 + 1240) && *(v10 + 1248))
    {
      goto LABEL_20;
    }

    v11 = v9[85];
    if (!v11)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 3, 19, 0))
      {
        goto LABEL_59;
      }

      v11 = v9[85];
    }

    v12 = v11 + 16;
    if ((v11 + 16) <= v9[84])
    {
      goto LABEL_18;
    }

    v39 = AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 3, 19, 0);
    v11 = v9[85];
    if (!v39)
    {
      goto LABEL_19;
    }

    v12 = v11 + 16;
    if ((v11 + 16) <= v9[84])
    {
LABEL_18:
      v9[86] = v12;
LABEL_19:
      v9[85] = v11 + 16;
LABEL_20:
      IOGPUResourceListAddResource();
      v13 = self->_legacy_blit_context;
      *(v13[1] + 1948) = *(v13[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v13, 1, v14, v15, v16, v17);
      v18 = v13[27];
      if (v18)
      {
        LODWORD(v18) = *(v18 + 528);
      }

      v19 = v13[26];
      if (v19)
      {
        LODWORD(v19) = *(v19 + 528);
      }

      if (v18 + v19)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v13, 0);
        v20 = v13[1];
        v47.i32[0] = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v20 + 24, &v47);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v13, 1, v21, v22, v23, v24);
      }

      v25 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v25);
      return;
    }

LABEL_59:
    abort();
  }

  v26 = self->_blit_context;
  v27 = *(a3 + 74);
  if ((!*(v27 + 48) || (*(v27 + 40) & 2) != 0) && *(v27 + 584))
  {
    v28 = *(v27 + 396) & 0xFF00;
    if ((*(v27 + 396) & 0x10000) != 0 || v28 == 1024)
    {
      if (v28 == 1024)
      {
        v29 = 6 * *(v27 + 392);
      }

      else
      {
        v29 = *(v27 + 392);
      }

      v40 = v29;
      if (!v29)
      {
        return;
      }
    }

    else
    {
      v40 = 1;
    }

    v41 = *(v27 + 108);
    if (v41)
    {
      v30 = 0;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          v32 = *(v27 + 584);
          if (v32 && *(v32 + 1304) > i && !*(v27 + 57))
          {
            v33 = *(v27 + 136) >> (*(v27 + 144) + i);
            v34 = v33 <= 1 ? 1 : v33;
            v35 = *(*(*(a3 + 74) + 208) + 24);
            if (v35)
            {
              v36 = 0;
              v37 = vmax_u32(vshl_u32(*(v27 + 128), vneg_s32(vdup_n_s32(*(v27 + 144) + i))), 0x100000001);
              v38.i64[0] = v37.u32[0];
              v38.i64[1] = v37.u32[1];
              v42 = v38;
              do
              {
                v47 = 0uLL;
                v48 = 0;
                v45 = 0uLL;
                v46 = 0;
                v43 = v42;
                v44 = v34;
                AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToTextureImpl(v26, a3, v36, v30, i, &v47, a3, v36, v30, i, &v45, &v43);
                ++v36;
              }

              while (v35 != v36);
            }
          }
        }

        ++v30;
      }

      while (v30 != v40);
    }
  }
}

- (void)fillBuffer:(id)a3 range:(_NSRange)a4 value:(unsigned __int8)a5
{
  length = a4.length;
  location = a4.location;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (!AGX::BlitUtil::requireLegacyBlit<true>(0))
  {
    blit_context = self->_blit_context;
    HIBYTE(v33) = a5;
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(blit_context + 1, a3, *(a3 + *MEMORY[0x29EDC5638] + 72) + location, 0, 0, length, &v33 + 1, 1uLL);
    return;
  }

  if (self)
  {
    bvh_builder = self->_bvh_builder;
    if (bvh_builder && self->_bvhFlushOnSplit)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
      self->_bvhFlushOnSplit = 0;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
    v12 = self->_blit_context;
    if (v12)
    {
      v12[1192] = 0;
      v12[2348] = 0;
    }
  }

  legacy_blit_context = self->_legacy_blit_context;
  *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
  LOBYTE(v33) = a5;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillBuffer(legacy_blit_context, a3, location, length, &v33, 1uLL);
  v14 = self->_impl;
  v15 = v14[6];
  if (!*(v15 + 1240) || !*(v15 + 1248))
  {
    v16 = v14[85];
    if (!v16)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v16 = v14[85];
    }

    v17 = v16 + 16;
    if ((v16 + 16) <= v14[84])
    {
      goto LABEL_18;
    }

    v32 = AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 3, 19, 0);
    v16 = v14[85];
    if (!v32)
    {
      goto LABEL_19;
    }

    v17 = v16 + 16;
    if ((v16 + 16) <= v14[84])
    {
LABEL_18:
      v14[86] = v17;
LABEL_19:
      v14[85] = v16 + 16;
      goto LABEL_20;
    }

LABEL_34:
    abort();
  }

LABEL_20:
  IOGPUResourceListAddResource();
  v18 = self->_legacy_blit_context;
  *(v18[1] + 1948) = *(v18[1] + 1940);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v18, 1, v19, v20, v21, v22);
  v23 = v18[27];
  if (v23)
  {
    LODWORD(v23) = *(v23 + 528);
  }

  v24 = v18[26];
  if (v24)
  {
    LODWORD(v24) = *(v24 + 528);
  }

  if (v23 + v24)
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v18, 0);
    v25 = v18[1];
    v34 = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v25 + 24, &v34);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v18, 1, v26, v27, v28, v29);
  }

  v30 = self->_impl;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v30);
}

- (void)generateMipmapsForTexture:(id)a3
{
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<true>(a3))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::generateMipmapsForTexture(legacy_blit_context, a3);
    v9 = self->_impl;
    v10 = v9[6];
    if (*(v10 + 1240) && *(v10 + 1248))
    {
      goto LABEL_20;
    }

    v11 = v9[85];
    if (!v11)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 3, 19, 0))
      {
        goto LABEL_69;
      }

      v11 = v9[85];
    }

    v12 = v11 + 16;
    if ((v11 + 16) <= v9[84])
    {
      goto LABEL_18;
    }

    v39 = AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 3, 19, 0);
    v11 = v9[85];
    if (!v39)
    {
      goto LABEL_19;
    }

    v12 = v11 + 16;
    if ((v11 + 16) <= v9[84])
    {
LABEL_18:
      v9[86] = v12;
LABEL_19:
      v9[85] = v11 + 16;
LABEL_20:
      IOGPUResourceListAddResource();
      v13 = self->_legacy_blit_context;
      *(v13[1] + 1948) = *(v13[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v13, 1, v14, v15, v16, v17);
      v18 = v13[27];
      if (v18)
      {
        LODWORD(v18) = *(v18 + 528);
      }

      v19 = v13[26];
      if (v19)
      {
        LODWORD(v19) = *(v19 + 528);
      }

      if (v18 + v19)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v13, 0);
        v20 = v13[1];
        v56[0] = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v20 + 24, v56);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v13, 1, v21, v22, v23, v24);
      }

      v25 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v25);
      return;
    }

LABEL_69:
    abort();
  }

  v26 = *(a3 + 74);
  if (!*(v26 + 168))
  {
    v27 = *(v26 + 32);
    v28 = (v27 - 624) > 0x1A || ((1 << (v27 - 112)) & 0x400000F) == 0;
    if (v28 && (v27 - 550) >= 2 && (*(*(v26 + 208) + 60) & 3) != 0)
    {
      v29 = self->_blit_context;
      v49 = *(v26 + 180);
      v50 = *(v26 + 176);
      v48 = *(v26 + 184);
      v30 = *(v26 + 24);
      if (v30 != 7)
      {
        v30 = 2;
      }

      v43 = v30;
      v44 = *(v26 + 32);
      v31 = *(v26 + 108);
      v41 = *(v26 + 160);
      v42 = *(v26 + 152);
      v57[0] = 1;
      {
        LOBYTE(v56[0]) = 0;
        findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", v56);
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v56[0];
      }

      v40 = v31 - 1;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
      {
        v32 = *(v26 + 584);
        if (v32)
        {
          if (*(v32 + 1304))
          {
            v57[0] |= 8u;
          }
        }
      }

      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
      }

      if (v31 != 1)
      {
        v33 = 0;
        v47 = (v26 + 396);
        do
        {
          v34 = 0;
          v45 = v33++;
          if (*(v26 + 136) >> (*(v26 + 144) + v33) <= 1u)
          {
            v35 = 1;
          }

          else
          {
            v35 = *(v26 + 136) >> (*(v26 + 144) + v33);
          }

          v46 = v33;
          while (1)
          {
            v36 = *v47 & 0xFF00;
            if ((*v47 & 0x10000) != 0 || v36 == 1024)
            {
              break;
            }

            if (v34)
            {
              goto LABEL_49;
            }

LABEL_62:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v56, v26, v43, v44, *(v26 + 40), *(v26 + 56), *(v26 + 324), v34, v45, 0, 0, v42, v41, 0, v50, v49, v48, 0, 0);
            v33 = v46;
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v53, v26, v43, v44, *(v26 + 40), *(v26 + 56), *(v26 + 324), v34, v46, 0, 0, v42, v41, 0, v50, v49, v48, 0, 0);
            v38 = 0;
            do
            {
              v51[0] = vmax_u32(vshl_u32(v54, vdup_lane_s32(vneg_s32(v55), 0)), 0x100000001);
              v51[1] = 0;
              v51[2] = 0;
              v52 = v38;
              AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMTextureToTexture(v29 + 1, a3, v53, a3, v56, v57, v38++, v51);
            }

            while (v35 != v38);
            AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v53);
            AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v56);
            ++v34;
          }

          if (v36 == 1024)
          {
            v37 = 6 * *(v26 + 392);
          }

          else
          {
            v37 = *(v26 + 392);
          }

          if (v34 < v37)
          {
            goto LABEL_62;
          }

LABEL_49:
          ;
        }

        while (v33 != v40);
      }
    }
  }
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v14 = a6;
  v41 = a4;
  v42 = a5;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    v40 = a6;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
    v14 = v40;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (!AGX::BlitUtil::requireLegacyBlit<true>(a8))
  {
    blit_context = self->_blit_context;
    v45 = *&a11->var0;
    var2 = a11->var2;
    v43 = *&a7->var0;
    v44 = a7->var2;
    AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToTexture(blit_context, a8, a9, a10, &v45, &v43, a3, v41, v42, v14, a12);
    return;
  }

  if (self)
  {
    bvh_builder = self->_bvh_builder;
    if (bvh_builder && self->_bvhFlushOnSplit)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
      self->_bvhFlushOnSplit = 0;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
    v19 = self->_blit_context;
    if (v19)
    {
      v19[1192] = 0;
      v19[2348] = 0;
    }
  }

  legacy_blit_context = self->_legacy_blit_context;
  *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
  v45 = *&a11->var0;
  var2 = a11->var2;
  v43 = *&a7->var0;
  v44 = a7->var2;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToTexture(legacy_blit_context, a8, a9, a10, &v45, v43.i32, a3, v41, v42, v14, a12);
  v21 = self->_impl;
  v22 = v21[6];
  if (!*(v22 + 1240) || !*(v22 + 1248))
  {
    v23 = v21[85];
    if (!v23)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v21 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v23 = v21[85];
    }

    v24 = v23 + 16;
    if ((v23 + 16) <= v21[84])
    {
      goto LABEL_18;
    }

    v39 = AGX::DataBufferAllocator<44ul>::growNoInline(v21 + 3, 19, 0);
    v23 = v21[85];
    if (!v39)
    {
      goto LABEL_19;
    }

    v24 = v23 + 16;
    if ((v23 + 16) <= v21[84])
    {
LABEL_18:
      v21[86] = v24;
LABEL_19:
      v21[85] = v23 + 16;
      goto LABEL_20;
    }

LABEL_34:
    abort();
  }

LABEL_20:
  IOGPUResourceListAddResource();
  v25 = self->_legacy_blit_context;
  *(v25[1] + 1948) = *(v25[1] + 1940);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v25, 1, v26, v27, v28, v29);
  v30 = v25[27];
  if (v30)
  {
    LODWORD(v30) = *(v30 + 528);
  }

  v31 = v25[26];
  if (v31)
  {
    LODWORD(v31) = *(v31 + 528);
  }

  if (v30 + v31)
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v25, 0);
    v32 = v25[1];
    v45.i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v32 + 24, &v45);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v25, 1, v33, v34, v35, v36);
  }

  v37 = self->_impl;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v37);
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v13 = a6;
  v42 = a5;
  v17 = a9;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    v41 = a6;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
    v17 = a9;
    v13 = v41;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (!AGX::BlitUtil::requireLegacyBlit<true>(a8))
  {
    blit_context = self->_blit_context;
    v45 = *&a11->var0;
    var2 = a11->var2;
    v43 = *&a7->var0;
    v44 = a7->var2;
    AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToTexture(blit_context, a8, v17, a10, &v45, &v43, a3, a4, v42, v13, 0);
    return;
  }

  if (self)
  {
    bvh_builder = self->_bvh_builder;
    if (bvh_builder && self->_bvhFlushOnSplit)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
      self->_bvhFlushOnSplit = 0;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
    v20 = self->_blit_context;
    if (v20)
    {
      v20[1192] = 0;
      v20[2348] = 0;
    }
  }

  legacy_blit_context = self->_legacy_blit_context;
  *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
  v45 = *&a11->var0;
  var2 = a11->var2;
  v43 = *&a7->var0;
  v44 = a7->var2;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToTexture(legacy_blit_context, a8, v17, a10, &v45, v43.i32, a3, a4, v42, v13, 0);
  v22 = self->_impl;
  v23 = v22[6];
  if (!*(v23 + 1240) || !*(v23 + 1248))
  {
    v24 = v22[85];
    if (!v24)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v22 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v24 = v22[85];
    }

    v25 = v24 + 16;
    if ((v24 + 16) <= v22[84])
    {
      goto LABEL_18;
    }

    v40 = AGX::DataBufferAllocator<44ul>::growNoInline(v22 + 3, 19, 0);
    v24 = v22[85];
    if (!v40)
    {
      goto LABEL_19;
    }

    v25 = v24 + 16;
    if ((v24 + 16) <= v22[84])
    {
LABEL_18:
      v22[86] = v25;
LABEL_19:
      v22[85] = v24 + 16;
      goto LABEL_20;
    }

LABEL_34:
    abort();
  }

LABEL_20:
  IOGPUResourceListAddResource();
  v26 = self->_legacy_blit_context;
  *(v26[1] + 1948) = *(v26[1] + 1940);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v26, 1, v27, v28, v29, v30);
  v31 = v26[27];
  if (v31)
  {
    LODWORD(v31) = *(v31 + 528);
  }

  v32 = v26[26];
  if (v32)
  {
    LODWORD(v32) = *(v32 + 528);
  }

  if (v31 + v32)
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v26, 0);
    v33 = v26[1];
    v45.i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v33 + 24, &v45);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v26, 1, v34, v35, v36, v37);
  }

  v38 = self->_impl;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v38);
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  v7 = a7;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<true>(0))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToBuffer(legacy_blit_context, a5, a6, a3, a4, v7);
    v17 = self->_impl;
    v18 = v17[6];
    if (*(v18 + 1240) && *(v18 + 1248))
    {
      goto LABEL_20;
    }

    v19 = v17[85];
    if (!v19)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v17 + 3, 19, 0))
      {
        goto LABEL_36;
      }

      v19 = v17[85];
    }

    v20 = v19 + 16;
    if ((v19 + 16) <= v17[84])
    {
      goto LABEL_18;
    }

    v38 = AGX::DataBufferAllocator<44ul>::growNoInline(v17 + 3, 19, 0);
    v19 = v17[85];
    if (!v38)
    {
      goto LABEL_19;
    }

    v20 = v19 + 16;
    if ((v19 + 16) <= v17[84])
    {
LABEL_18:
      v17[86] = v20;
LABEL_19:
      v17[85] = v19 + 16;
LABEL_20:
      IOGPUResourceListAddResource();
      v21 = self->_legacy_blit_context;
      *(v21[1] + 1948) = *(v21[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v21, 1, v22, v23, v24, v25);
      v26 = v21[27];
      if (v26)
      {
        LODWORD(v26) = *(v26 + 528);
      }

      v27 = v21[26];
      if (v27)
      {
        LODWORD(v27) = *(v27 + 528);
      }

      if (v26 + v27)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v21, 0);
        v28 = v21[1];
        v39 = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v28 + 24, &v39);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v21, 1, v29, v30, v31, v32);
      }

      v33 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v33);
      return;
    }

LABEL_36:
    abort();
  }

  v34 = self->_blit_context;
  v35 = *MEMORY[0x29EDC5638];
  v36 = *(a5 + v35 + 72) + a6;
  v37 = *(a3 + v35 + 72) + a4;

  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyBufferToBufferImpl(v34, a5, v36, a3, v37, v7);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v12 = a8;
  v15 = a5;
  v16 = a4;
  v20 = a11;
  v19 = a12;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    v22 = a4;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
    v16 = v22;
    v12 = a8;
    v19 = a12;
    v20 = a11;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (!AGX::BlitUtil::requireLegacyBlit<true>(a3))
  {
    blit_context = self->_blit_context;
    v48 = *&a6->var0;
    var2 = a6->var2;
    v46 = *&a7->var0;
    v47 = a7->var2;
    AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToBuffer(blit_context, v12, a9, a10, v20, a3, v16, v15, &v48, &v46, v19);
    return;
  }

  if (self)
  {
    bvh_builder = self->_bvh_builder;
    if (bvh_builder && self->_bvhFlushOnSplit)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
      self->_bvhFlushOnSplit = 0;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
    v25 = self->_blit_context;
    if (v25)
    {
      v25[1192] = 0;
      v25[2348] = 0;
    }
  }

  legacy_blit_context = self->_legacy_blit_context;
  *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
  v48 = *&a6->var0;
  var2 = a6->var2;
  v46 = *&a7->var0;
  v47 = a7->var2;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToBuffer(legacy_blit_context, v12, a9, a10, v20, a3, v16, v15, &v48, v46.i32, v19);
  v27 = self->_impl;
  v28 = v27[6];
  if (!*(v28 + 1240) || !*(v28 + 1248))
  {
    v29 = v27[85];
    if (!v29)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v27 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v29 = v27[85];
    }

    v30 = v29 + 16;
    if ((v29 + 16) <= v27[84])
    {
      goto LABEL_18;
    }

    v45 = AGX::DataBufferAllocator<44ul>::growNoInline(v27 + 3, 19, 0);
    v29 = v27[85];
    if (!v45)
    {
      goto LABEL_19;
    }

    v30 = v29 + 16;
    if ((v29 + 16) <= v27[84])
    {
LABEL_18:
      v27[86] = v30;
LABEL_19:
      v27[85] = v29 + 16;
      goto LABEL_20;
    }

LABEL_34:
    abort();
  }

LABEL_20:
  IOGPUResourceListAddResource();
  v31 = self->_legacy_blit_context;
  *(v31[1] + 1948) = *(v31[1] + 1940);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v31, 1, v32, v33, v34, v35);
  v36 = v31[27];
  if (v36)
  {
    LODWORD(v36) = *(v36 + 528);
  }

  v37 = v31[26];
  if (v37)
  {
    LODWORD(v37) = *(v37 + 528);
  }

  if (v36 + v37)
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v31, 0);
    v38 = v31[1];
    v48.i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v38 + 24, &v48);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v31, 1, v39, v40, v41, v42);
  }

  v43 = self->_impl;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v43);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  v11 = a8;
  v14 = a5;
  v15 = a4;
  v18 = a11;
  v19 = a9;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
    v11 = a8;
    v19 = a9;
    v18 = a11;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (!AGX::BlitUtil::requireLegacyBlit<true>(a3))
  {
    blit_context = self->_blit_context;
    v46 = *&a6->var0;
    var2 = a6->var2;
    v44 = *&a7->var0;
    v45 = a7->var2;
    AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToBuffer(blit_context, v11, v19, a10, v18, a3, v15, v14, &v46, &v44, 0);
    return;
  }

  if (self)
  {
    bvh_builder = self->_bvh_builder;
    if (bvh_builder && self->_bvhFlushOnSplit)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
      self->_bvhFlushOnSplit = 0;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
    v23 = self->_blit_context;
    if (v23)
    {
      v23[1192] = 0;
      v23[2348] = 0;
    }
  }

  legacy_blit_context = self->_legacy_blit_context;
  *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
  v46 = *&a6->var0;
  var2 = a6->var2;
  v44 = *&a7->var0;
  v45 = a7->var2;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToBuffer(legacy_blit_context, v11, v19, a10, v18, a3, v15, v14, &v46, v44.i32, 0);
  v25 = self->_impl;
  v26 = v25[6];
  if (!*(v26 + 1240) || !*(v26 + 1248))
  {
    v27 = v25[85];
    if (!v27)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v25 + 3, 19, 0))
      {
        goto LABEL_34;
      }

      v27 = v25[85];
    }

    v28 = v27 + 16;
    if ((v27 + 16) <= v25[84])
    {
      goto LABEL_18;
    }

    v43 = AGX::DataBufferAllocator<44ul>::growNoInline(v25 + 3, 19, 0);
    v27 = v25[85];
    if (!v43)
    {
      goto LABEL_19;
    }

    v28 = v27 + 16;
    if ((v27 + 16) <= v25[84])
    {
LABEL_18:
      v25[86] = v28;
LABEL_19:
      v25[85] = v27 + 16;
      goto LABEL_20;
    }

LABEL_34:
    abort();
  }

LABEL_20:
  IOGPUResourceListAddResource();
  v29 = self->_legacy_blit_context;
  *(v29[1] + 1948) = *(v29[1] + 1940);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v29, 1, v30, v31, v32, v33);
  v34 = v29[27];
  if (v34)
  {
    LODWORD(v34) = *(v34 + 528);
  }

  v35 = v29[26];
  if (v35)
  {
    LODWORD(v35) = *(v35 + 528);
  }

  if (v34 + v35)
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v29, 0);
    v36 = v29[1];
    v46.i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v36 + 24, &v46);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v29, 1, v37, v38, v39, v40);
  }

  v41 = self->_impl;

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v41);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v11 = a8;
  v72 = a5;
  v13 = a4;
  v14 = a3;
  v15 = self;
  v16 = a10;
  v17 = a9;
  v18 = 0x2A179C000uLL;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    v20 = a4;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = v15->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, v15->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 2292) == 1 && !*(impl + 4976))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, (impl + 5544), (impl + 5552), (impl + 5560));
    }

    v15->_bvhBarrierBeforeStages = 0;
    v15->_bvhFlushNeedsReasourceAliasCFI = 0;
    v17 = a9;
    v13 = v20;
    v16 = a10;
    v11 = a8;
    v14 = a3;
    v18 = 0x2A179C000uLL;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)v15 createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<true>(v14) || AGX::BlitUtil::requireLegacyBlit<true>(v11))
  {
    if (v15)
    {
      bvh_builder = v15->_bvh_builder;
      if (bvh_builder && v15->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        v15->_bvhFlushOnSplit = 0;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(v15->_impl);
      blit_context = v15->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = v15->_legacy_blit_context;
    *(*(legacy_blit_context + 8) + 1944) = *(*(legacy_blit_context + 8) + 1940);
    v83 = *a11;
    v79 = *&a6->var0;
    var2 = a6->var2;
    v75 = *&a7->var0;
    v77 = a7->var2;
    v25 = v14[74];
    v26 = v11[74];
    if (*(*(v25 + 208) + 24) >= *(*(v26 + 208) + 24))
    {
      v27 = *(*(v26 + 208) + 24);
    }

    else
    {
      v27 = *(*(v25 + 208) + 24);
    }

    if (v27)
    {
      v74 = v15;
      v28 = *(v25 + 32);
      v29 = *(v26 + 32);
      v30 = v28 == 261;
      v31 = v29 == 260;
      v32 = v29 == 261;
      v33 = v28 == 260;
      if (v30 >= v31)
      {
        v34 = v31;
      }

      else
      {
        v34 = v30;
      }

      if (v32 >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v32;
      }

      do
      {
        v89 = *&v83.var0;
        v90 = v83.var2;
        v87 = v79;
        v88 = var2;
        v85 = v75;
        v86 = v77;
        v36 = legacy_blit_context;
        AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToTextureImpl(legacy_blit_context, v11, v34, v17, v16, v89.i8, v14, v35, v13, v72, v87.i8, &v85);
        legacy_blit_context = v36;
        ++v34;
        ++v35;
        --v27;
      }

      while (v27);
      v15 = v74;
      v18 = 0x2A179C000;
    }

    v37 = *(v18 + 1164);
    v38 = *(&v15->super.super.super.super.super.isa + v37);
    v39 = v38[6];
    if (*(v39 + 1240) && *(v39 + 1248))
    {
      goto LABEL_33;
    }

    v40 = v38[85];
    if (!v40)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v38 + 3, 19, 0))
      {
        goto LABEL_58;
      }

      v40 = v38[85];
    }

    v41 = v40 + 16;
    if ((v40 + 16) <= v38[84])
    {
      goto LABEL_31;
    }

    v70 = AGX::DataBufferAllocator<44ul>::growNoInline(v38 + 3, 19, 0);
    v40 = v38[85];
    if (!v70)
    {
      goto LABEL_32;
    }

    v41 = v40 + 16;
    if ((v40 + 16) <= v38[84])
    {
LABEL_31:
      v38[86] = v41;
LABEL_32:
      v38[85] = v40 + 16;
LABEL_33:
      IOGPUResourceListAddResource();
      v42 = v15->_legacy_blit_context;
      *(v42[1] + 1948) = *(v42[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v42, 1, v43, v44, v45, v46);
      v47 = v42[27];
      if (v47)
      {
        LODWORD(v47) = *(v47 + 528);
      }

      v48 = v42[26];
      if (v48)
      {
        LODWORD(v48) = *(v48 + 528);
      }

      if (v47 + v48)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v42, 0);
        v49 = v42[1];
        v89.i32[0] = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v49 + 24, &v89);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v42, 1, v50, v51, v52, v53);
      }

      v54 = *(&v15->super.super.super.super.super.isa + v37);

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v54);
      return;
    }

LABEL_58:
    abort();
  }

  v55 = v15->_blit_context;
  v84 = *a11;
  v80 = *&a6->var0;
  v82 = a6->var2;
  v76 = *&a7->var0;
  v78 = a7->var2;
  v56 = v14[74];
  v57 = v11[74];
  if (*(*(v56 + 208) + 24) >= *(*(v57 + 208) + 24))
  {
    v58 = *(*(v57 + 208) + 24);
  }

  else
  {
    v58 = *(*(v56 + 208) + 24);
  }

  if (v58)
  {
    v59 = v17;
    v60 = v16;
    v61 = v13;
    v62 = *(v56 + 32);
    v63 = *(v57 + 32);
    v64 = v62 == 261;
    v65 = v63 == 260;
    v66 = v63 == 261;
    v67 = v62 == 260;
    if (v64 >= v65)
    {
      v68 = v65;
    }

    else
    {
      v68 = v64;
    }

    if (v66 >= v67)
    {
      v69 = v67;
    }

    else
    {
      v69 = v66;
    }

    do
    {
      v89 = *&v84.var0;
      v90 = v84.var2;
      v87 = v80;
      v88 = v82;
      v85 = v76;
      v86 = v78;
      AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::copyTextureToTextureImpl(v55, v11, v68++, v59, v60, &v89, v14, v69++, v61, v72, &v87, &v85);
      --v58;
    }

    while (v58);
  }
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  v128 = a8;
  v129 = a5;
  v130 = a7;
  v131 = a4;
  if (self && (self->_bvhBarrierBeforeStages & 0x10000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self createBlitContextIfNeeded];
  if (AGX::BlitUtil::requireLegacyBlit<true>(a3) || AGX::BlitUtil::requireLegacyBlit<true>(a6))
  {
    if (self)
    {
      bvh_builder = self->_bvh_builder;
      if (bvh_builder && self->_bvhFlushOnSplit)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(bvh_builder);
        self->_bvhFlushOnSplit = 0;
      }

      v14.n128_f64[0] = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::suspendComputePass(self->_impl);
      blit_context = self->_blit_context;
      if (blit_context)
      {
        blit_context[1192] = 0;
        blit_context[2348] = 0;
      }
    }

    legacy_blit_context = self->_legacy_blit_context;
    *(legacy_blit_context[1] + 1944) = *(legacy_blit_context[1] + 1940);
    AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToTexture(legacy_blit_context, a6, v130, v128, a3, v131, v129, a9, v14, a10);
    v18 = self->_impl;
    v19 = v18[6];
    if (*(v19 + 1240) && *(v19 + 1248))
    {
      goto LABEL_21;
    }

    v20 = v18[85];
    if (!v20)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v18 + 3, 19, 0))
      {
        goto LABEL_158;
      }

      v20 = v18[85];
    }

    v21 = v20 + 16;
    if ((v20 + 16) <= v18[84])
    {
      goto LABEL_19;
    }

    v116 = AGX::DataBufferAllocator<44ul>::growNoInline(v18 + 3, 19, 0);
    v20 = v18[85];
    if (!v116)
    {
      goto LABEL_20;
    }

    v21 = v20 + 16;
    if ((v20 + 16) <= v18[84])
    {
LABEL_19:
      v18[86] = v21;
LABEL_20:
      v18[85] = v20 + 16;
LABEL_21:
      IOGPUResourceListAddResource();
      v22 = self->_legacy_blit_context;
      *(v22[1] + 1948) = *(v22[1] + 1940);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v22, 1, v23, v24, v25, v26);
      v27 = v22[27];
      if (v27)
      {
        LODWORD(v27) = *(v27 + 528);
      }

      v28 = v22[26];
      if (v28)
      {
        LODWORD(v28) = *(v28 + 528);
      }

      if (v27 + v28)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v22, 0);
        v29 = v22[1];
        LODWORD(v140) = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v29 + 24, &v140);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v22, 1, v30, v31, v32, v33);
      }

      v34 = self->_impl;

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::resumeComputePass(v34);
      return;
    }

LABEL_158:
    abort();
  }

  v35 = *(a3 + 74);
  v36 = *(a6 + 74);
  if (*(v35 + 236))
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v36 + 236) == 0;
  }

  v38 = self->_blit_context;
  v39 = *(*(v35 + 208) + 24);
  if (*(*(v36 + 208) + 24) < v39)
  {
    v39 = *(*(v36 + 208) + 24);
  }

  v122 = v39;
  v40 = *(v36 + 32);
  v41 = *(v35 + 32);
  v43 = v40 == 260 && v41 == 261;
  v45 = v41 == 260 && v40 == 261;
  v120 = v45;
  v121 = v43;
  v132 = a3;
  if (v37 && *(v35 + 396) == *(v36 + 396))
  {
    v117 = *(v36 + 584) != 0;
    v123 = self->_blit_context;
    v46 = *(v35 + 584);
    v192 = 0;
    v193 = &v192;
    v14.n128_u64[0] = 0x2020000000;
    v194 = 0x2020000000;
    v195 = 0;
    v187[0] = MEMORY[0x29EDCA5F8];
    v187[1] = 3221225472;
    v188 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_3;
    v189 = &unk_29F341AF0;
    v190 = &v192;
    v191 = 1;
    if (v122)
    {
      v47 = a10 == 0;
    }

    else
    {
      v47 = 1;
    }

    if (!v47)
    {
      v48 = 0;
      do
      {
        v49 = v128;
        v50 = v129;
        v51 = a10;
        do
        {
          v140 = a6;
          LODWORD(v141) = v48 + v121;
          HIDWORD(v141) = v130;
          LODWORD(v142) = v49;
          v174 = a3;
          LODWORD(v175) = v48 + v120;
          HIDWORD(v175) = v131;
          LODWORD(v176) = v50;
          v188(v187, &v140, &v174);
          ++v50;
          ++v49;
          --v51;
        }

        while (v51);
        ++v48;
      }

      while (v48 != v122);
    }

    if (v46)
    {
      v183[0] = MEMORY[0x29EDCA5F8];
      v183[1] = 3221225472;
      v184 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_4;
      v185 = &unk_29F341B18;
      v186 = &v192;
      if (v122)
      {
        if (a10)
        {
          for (i = 0; i != v122; ++i)
          {
            v53 = v128;
            v54 = v129;
            v55 = a10;
            do
            {
              v140 = a6;
              LODWORD(v141) = i + v121;
              HIDWORD(v141) = v130;
              LODWORD(v142) = v53;
              v174 = a3;
              LODWORD(v175) = i + v120;
              HIDWORD(v175) = v131;
              LODWORD(v176) = v54;
              v184(v183, &v140, &v174);
              ++v54;
              ++v53;
              --v55;
            }

            while (v55);
          }
        }
      }
    }

    v118 = v46;
    v56 = v122 * a9 * *(v193 + 6);
    v174 = 0;
    v175 = &v174;
    v176 = 0x4812000000;
    v177 = __Block_byref_object_copy__433;
    v178 = __Block_byref_object_dispose__434;
    v179 = &unk_29D31B497;
    v182 = 0;
    __src = 0;
    v181 = 0;
    if (v56)
    {
      operator new();
    }

    v168[0] = MEMORY[0x29EDCA5F8];
    v168[1] = 3221225472;
    v169 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_436;
    v170 = &unk_29F341B60;
    v173 = 1;
    v171 = &__block_literal_global_430;
    v172 = &v174;
    if (v122 && a9 && a10)
    {
      v57 = 0;
      do
      {
        v58 = 0;
        v59 = v57 + v121;
        v124 = v57;
        v60 = v57 + v120;
        do
        {
          v61 = v128;
          v62 = v129;
          v63 = a10;
          do
          {
            v140 = a6;
            LODWORD(v141) = v59;
            HIDWORD(v141) = v58 + v130;
            LODWORD(v142) = v61;
            v153 = a3;
            LODWORD(v154) = v60;
            HIDWORD(v154) = v58 + v131;
            LODWORD(v155) = v62;
            v169(v168, &v140, &v153);
            ++v62;
            ++v61;
            --v63;
          }

          while (v63);
          ++v58;
        }

        while (v58 != a9);
        v57 = v124 + 1;
      }

      while (v124 + 1 != v122);
    }

    if (v118)
    {
      v162[0] = MEMORY[0x29EDCA5F8];
      v162[1] = 3221225472;
      v163 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2_437;
      v164 = &unk_29F341B60;
      v167 = 1;
      v166 = &v174;
      v165 = &__block_literal_global_430;
      if (v122)
      {
        if (a9 && a10)
        {
          v64 = 0;
          do
          {
            v65 = 0;
            v66 = v64 + v121;
            v125 = v64;
            v67 = v64 + v120;
            do
            {
              v68 = v128;
              v69 = v129;
              v70 = a10;
              do
              {
                v140 = a6;
                LODWORD(v141) = v66;
                HIDWORD(v141) = v65 + v130;
                LODWORD(v142) = v68;
                v153 = a3;
                LODWORD(v154) = v67;
                HIDWORD(v154) = v65 + v131;
                LODWORD(v155) = v69;
                v163(v162, &v140, &v153);
                ++v69;
                ++v68;
                --v70;
              }

              while (v70);
              ++v65;
            }

            while (v65 != a9);
            v64 = v125 + 1;
          }

          while (v125 + 1 != v122);
        }
      }
    }

    v71 = v175[6];
    v72 = v175[7];
    v73 = 126 - 2 * __clz(v72 - v71);
    if (v72 == v71)
    {
      v74 = 0;
    }

    else
    {
      v74 = v73;
    }

    v75 = std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*,false>(v71, v72, v74, 1, v14);
    v77 = v175[6];
    v76 = v175[7];
    if (v77 == v76)
    {
      v79 = a3;
    }

    else
    {
      v78 = v175[6];
      v79 = a3;
      do
      {
        v80 = *v78++;
        v75 = v80;
        *v77 = v80;
        if (v78 != v76)
        {
          v81 = v77->n128_u64[1];
          do
          {
            if (v81 != v78->n128_u64[0])
            {
              break;
            }

            v81 = v78->n128_u64[1];
            v77->n128_u64[1] = v81;
            ++v78;
          }

          while (v78 != v76);
        }

        ++v77;
      }

      while (v78 != v76);
      if (v77 != v175[7])
      {
        v175[7] = v77;
      }
    }

    v153 = 0;
    v154 = &v153;
    v155 = 0x4812000000;
    v156 = __Block_byref_object_copy__438;
    v157 = __Block_byref_object_dispose__439;
    v158 = &unk_29D31B497;
    v160 = 0;
    v161 = 0;
    __p = 0;
    v140 = MEMORY[0x29EDCA5F8];
    v141 = 3221225472;
    v142 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2_444;
    v143 = &unk_29F341BA8;
    v149 = &v153;
    v150 = v123;
    v151 = v117;
    v152 = 1;
    v146 = &__block_literal_global_443;
    v147 = &__block_literal_global_430;
    v148 = &v174;
    v144 = a6;
    v145 = v79;
    if (v122 && a9 && a10)
    {
      v93 = 0;
      do
      {
        v94 = 0;
        v95 = v93 + v121;
        v127 = v93;
        v96 = v93 + v120;
        do
        {
          v97 = v128;
          v98 = v129;
          v99 = a10;
          do
          {
            v133 = a6;
            LODWORD(v134) = v95;
            HIDWORD(v134) = v94 + v130;
            LODWORD(v135) = v97;
            *&v196 = a3;
            DWORD2(v196) = v96;
            HIDWORD(v196) = v94 + v131;
            LODWORD(v197) = v98;
            v142(&v140, &v133, &v196);
            ++v98;
            ++v97;
            --v99;
          }

          while (v99);
          ++v94;
        }

        while (v94 != a9);
        v93 = v127 + 1;
      }

      while (v127 + 1 != v122);
    }

    v100 = v154[6];
    v101 = v154[7];
    v102 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 3));
    if (v101 == v100)
    {
      v103 = 0;
    }

    else
    {
      v103 = v102;
    }

    std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*,false>(v100, v101, v103, 1, v75);
    v104 = v154;
    v105 = v154[6];
    v106 = v154[7];
    v107 = v105;
    if (v105 != v106)
    {
      do
      {
        v108 = *v105;
        v107[2] = v105[2];
        *v107 = v108;
        v105 += 3;
        if (v105 != v106)
        {
          v109 = *v107;
          v110 = v107[1];
          v111 = v107[2];
          do
          {
            if (v111 + v109 != *v105 || v111 + v110 != v105[1])
            {
              break;
            }

            v111 += v105[2];
            v107[2] = v111;
            v105 += 3;
          }

          while (v105 != v106);
        }

        v107 += 3;
      }

      while (v105 != v106);
      v104 = v154;
      v105 = v154[6];
      v106 = v154[7];
    }

    if (v107 != v106)
    {
      v104[7] = v107;
      v106 = v104[7];
    }

    if (v105 != v106)
    {
      v133 = MEMORY[0x29EDCA5F8];
      v134 = 3221225472;
      v135 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_3_445;
      v136 = &unk_29F341BD0;
      v138 = a3;
      v139 = v123;
      v137 = a6;
      v113 = v104[6];
      if (v113[1] <= *v113)
      {
        if (v106 != v113)
        {
          do
          {
            v115 = *(v106 - 3);
            v197 = *(v106 - 1);
            v196 = v115;
            v135(&v133, &v196);
            v106 -= 3;
          }

          while (v106 != v154[6]);
        }
      }

      else if (v113 != v106)
      {
        do
        {
          v114 = *v113;
          v197 = v113[2];
          v196 = v114;
          v135(&v133, &v196);
          v113 += 3;
        }

        while (v113 != v154[7]);
      }
    }

    _Block_object_dispose(&v153, 8);
    if (__p)
    {
      v160 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v174, 8);
    if (__src)
    {
      v181 = __src;
      operator delete(__src);
    }

    _Block_object_dispose(&v192, 8);
  }

  else
  {
    v140 = MEMORY[0x29EDCA5F8];
    v141 = 3221225472;
    v142 = ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2;
    v143 = &unk_29F341AC8;
    v145 = a3;
    v146 = v38;
    v144 = a6;
    if (v122)
    {
      v82 = a9 == 0;
    }

    else
    {
      v82 = 1;
    }

    if (!v82 && a10 != 0)
    {
      v84 = 0;
      do
      {
        v85 = 0;
        v86 = v84 + v121;
        v119 = v84;
        v87 = v84 + v120;
        do
        {
          v88 = v85 + v130;
          v126 = v85;
          v89 = v85 + v131;
          v90 = v128;
          v91 = v129;
          v92 = a10;
          do
          {
            v174 = a6;
            v175 = __PAIR64__(v88, v86);
            LODWORD(v176) = v90;
            v153 = v132;
            v154 = __PAIR64__(v89, v87);
            LODWORD(v155) = v91;
            v142(&v140, &v174, &v153);
            ++v91;
            ++v90;
            --v92;
          }

          while (v92);
          v85 = v126 + 1;
        }

        while (v126 + 1 != a9);
        v84 = v119 + 1;
      }

      while (v119 + 1 != v122);
    }
  }
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  v7 = [a3 width];
  v8 = [a3 height];
  v9 = [a3 depth];
  v54 = v9;
  v55 = v8;
  v10 = [a4 width];
  v11 = [a4 height];
  v12 = [a4 depth];
  v13 = 0;
  v52 = v12;
  v53 = v11;
  v14 = &v53;
  v15 = &v52;
  v16 = &v53;
  v17 = &v52;
  v18 = v9 > v12;
  if (v9 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v9;
  }

  if (v9 <= v12)
  {
    v20 = v11;
  }

  else
  {
    v20 = v8;
  }

  if (v18)
  {
    v21 = v10;
  }

  else
  {
    v21 = v7;
  }

  if (v18)
  {
    v22 = v7;
  }

  else
  {
    v17 = &v54;
    v22 = v10;
  }

  v23 = v18;
  if (!v18)
  {
    v16 = &v55;
  }

  if (v8 <= v11)
  {
    v24 = v19;
  }

  else
  {
    v24 = v9;
  }

  if (v8 <= v11)
  {
    v25 = v20;
  }

  else
  {
    v25 = v8;
  }

  if (v8 <= v11)
  {
    v26 = v21;
  }

  else
  {
    v26 = v10;
  }

  if (v8 <= v11)
  {
    v27 = v23;
  }

  else
  {
    v22 = v7;
    v27 = 1;
  }

  if (v8 <= v11)
  {
    v28 = v17;
  }

  else
  {
    v28 = &v52;
  }

  if (v8 <= v11)
  {
    v29 = v16;
  }

  else
  {
    v29 = &v53;
  }

  if (v7 <= v10)
  {
    v30 = v24;
  }

  else
  {
    v30 = v9;
  }

  if (v7 <= v10)
  {
    v31 = v25;
  }

  else
  {
    v31 = v8;
  }

  if (v7 <= v10)
  {
    v32 = v26;
  }

  else
  {
    v32 = v10;
  }

  if (v7 <= v10)
  {
    v14 = v29;
  }

  v33 = *v14;
  if (v7 <= v10)
  {
    v34 = v22;
  }

  else
  {
    v34 = v7;
  }

  if (v7 <= v10)
  {
    v15 = v28;
  }

  v35 = *v15;
  if (v7 <= v10)
  {
    v36 = v27;
  }

  else
  {
    v36 = 1;
  }

  while (v34 > v32 || v31 > v33 || v30 > v35)
  {
    v34 >>= 1;
    v31 >>= 1;
    ++v13;
    v30 >>= 1;
  }

  if (v36)
  {
    v37 = v13;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = v13;
  }

  v39 = [a3 mipmapLevelCount] - v37;
  v40 = [a4 mipmapLevelCount] - v38;
  if (v39 >= v40)
  {
    v41 = a4;
  }

  else
  {
    v41 = a3;
  }

  if (v39 >= v40)
  {
    v42 = v38;
  }

  else
  {
    v42 = v37;
  }

  v43 = [v41 mipmapLevelCount] - v42;
  v44 = [a3 arrayLength];
  if (([a3 textureType] - 5) >= 2)
  {
    v45 = 1;
  }

  else
  {
    v45 = 6;
  }

  v46 = v45 * v44;
  v47 = [a4 arrayLength];
  if (([a4 textureType] - 5) >= 2)
  {
    v48 = 1;
  }

  else
  {
    v48 = 6;
  }

  if (v46 >= v48 * v47)
  {
    v49 = a4;
  }

  else
  {
    v49 = a3;
  }

  v50 = [v49 arrayLength];
  if (([v49 textureType] - 5) >= 2)
  {
    v51 = 1;
  }

  else
  {
    v51 = 6;
  }

  [(AGXG18PFamilyComputeContext_mtlnext *)self copyFromTexture:a3 sourceSlice:0 sourceLevel:v37 toTexture:a4 destinationSlice:0 destinationLevel:v38 sliceCount:v51 * v50 levelCount:v43, v52, v53];
}

- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4
{
  v4 = *(self->_impl + 613);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a3 + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v4, v5);
}

- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4
{
  if ((a4 & 0x20000000) != 0)
  {
    self->_bvhFlushOnSplit = 1;
  }

  impl = self->_impl;
  v5 = *(impl + 612);
  if (!v5)
  {
    operator new();
  }

  AGX::FenceList::insertFence(v5, *(a3 + *MEMORY[0x29EDC5610]));
  *(impl + 2304) = 1;
}

- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 options:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  if ((a3 & 0xFFFFFFFFDFFFFFFFLL) != 0)
  {
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, (a5 >> 1) & 1, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }
  }

  if ((v7 & 0x20000000) != 0)
  {
    if (self->_bvh_builder)
    {
      self->_bvhBarrierBeforeStages |= a4;
      if ((v5 & 2) != 0)
      {
        self->_bvhFlushNeedsReasourceAliasCFI = 1;
      }
    }
  }

  blit_context = self->_blit_context;
  if (blit_context)
  {
    blit_context[1192] = 0;
    blit_context[2348] = 0;
  }
}

- (void)barrierAfterStages:(unint64_t)a3 beforeQueueStages:(unint64_t)a4 options:(unint64_t)a5
{
  if ((a3 & 0x20000000) != 0)
  {
    self->_bvhFlushOnSplit = 1;
  }

  AGX::BarrierTracker::addFrontFacingBarrier(self->_impl + 2028, a3, a4, a5);
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 options:(unint64_t)a5
{
  impl = self->_impl;
  if (AGX::BarrierTracker::addBackFacingBarrier((impl + 2028), a3, a4, a5))
  {
    v7 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, (impl + 3), 4, 0, 0, 0, &v7);
    v6 = impl[97];
    *v6 = 1610744318;
    impl[97] = v6 + 1;
  }
}

- (void)filterCounterRangeWithFirstBatch:(unsigned int)a3 lastBatch:(unsigned int)a4 filterIndex:(unsigned int)a5
{
  impl = self->_impl;
  impl[483] = a3;
  impl[484] = a4;
}

- (void)endEncoding
{
  impl = self->_impl;
  v4.i64[0] = *(impl + 2044);
  v4.i64[1] = v4.i64[0];
  *(impl + 2028) = vorrq_s8(*(impl + 2028), v4);
  *(impl + 2060) = vorr_s8(*(impl + 2060), vdup_lane_s32(vorr_s8(vdup_lane_s32(*v4.i8, 1), *v4.i8), 0));
  if (self->_bvh_builder)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endComputePass(impl, 0, 22);
  v5 = self->_impl;
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
    v5 = self->_impl;
  }

  v5[87] = 0;
  *(v5 + 42) = 0u;
  *(v5[6] + 1232) = 0u;
  blit_context = self->_blit_context;
  if (blit_context)
  {
    blit_context[1192] = 0;
    blit_context[2348] = 0;
  }

  v7.receiver = self;
  v7.super_class = AGXG18PFamilyComputeContext_mtlnext;
  [(IOGPUMetal4ComputeCommandEncoder *)&v7 endEncoding];
  [(AGXG18PFamilyComputeContext_mtlnext *)self destroyImpl];
}

- (void)setComputePipelineState:(id)a3
{
  impl = self->_impl;
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(impl, a3 + 112);
  *(impl + 2305) = 1;
}

- (void)setArgumentTable:(id)a3
{
  impl = self->_impl;
  if (impl[294] != a3)
  {
    v5 = a3;
    v6 = impl[294];
    if (v6 != v5)
    {
      v7 = v5;

      impl[294] = v7;
    }

    if (a3)
    {
      v8 = *(a3 + 4);
    }

    else
    {
      v8 = 0;
    }

    impl[567] = v8;
  }
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4
{
  if (self && (self->_bvhBarrierBeforeStages & 0x8000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  v8 = self->_impl;
  v8[5864] = 1;
  *(v8 + 486) = *(v8 + 485);
  *(v8 + 515) |= 1u;
  v9 = 0;
  v10 = a4;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeCommandsInBufferCommon(v8, a3, &v9);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (self && (self->_bvhBarrierBeforeStages & 0x8000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  v9 = self->_impl;
  v9[5864] = 1;
  v10 = *(v9 + 485);
  *(v9 + 486) = v10;
  *(v9 + 515) |= 1u;
  if (length)
  {
    v11[0] = 1;
    v11[2] = location;
    v11[3] = location + length - 1;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeCommandsInBufferCommon(v9, a3, v11);
    v9 = self->_impl;
    v10 = *(v9 + 485);
  }

  *(v9 + 487) = v10;
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3
{
  if (self && (self->_bvhBarrierBeforeStages & 0x8000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  v6 = self->_impl;
  v6[5864] = 1;
  *(v6 + 486) = *(v6 + 485);
  *(v6 + 515) |= 1u;
  v7 = *(v6 + 292);
  if (*(v6 + 573) == 1 && *(v6 + 1244) || (v6[5600] & 1) != 0 || (v8 = *(v7 + 16), *(v8 + 4088) != 1) || (*(v7 + 346) & 1) != 0 || *(v8 + 3916) || *(v8 + 3912))
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelWithImprovedIndirectCommon(v6, a3);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeIndirectKernelWithThreadgroupOptimization(v6, a3, 1, v9);
  }

  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4
{
  if (self && (self->_bvhBarrierBeforeStages & 0x8000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  v8 = self->_impl;
  v8[5864] = 1;
  *(v8 + 486) = *(v8 + 485);
  if (a4->var1 * a4->var0 * a4->var2 <= *(*(v8 + 292) + 456))
  {
    v9 = *&a4->var0;
    var2 = a4->var2;
    *(v8 + 515) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadgroupsIndirectInternal(v8, a3, &v9);
    *(self->_impl + 487) = *(self->_impl + 485);
  }
}

- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4
{
  impl = self->_impl;
  impl[524] = a3;
  impl[525] = a4;
  impl[526] = 1;
  *(impl + 699) |= 0x4000000uLL;
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  if (self && (self->_bvhBarrierBeforeStages & 0x8000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  v8 = self->_impl;
  v8[5864] = 1;
  *(v8 + 486) = *(v8 + 485);
  if (a4->var1 * a4->var0 * a4->var2 <= *(*(v8 + 292) + 456))
  {
    v11 = *&a3->var0;
    var2 = a3->var2;
    v9 = *&a4->var0;
    v10 = a4->var2;
    *(v8 + 515) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(v8, 22, &v11, &v9);
    *(self->_impl + 487) = *(self->_impl + 485);
  }
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  if (self && (self->_bvhBarrierBeforeStages & 0x8000000) != 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(self->_bvh_builder);
    impl = self->_impl;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(impl, 22, self->_bvhFlushNeedsReasourceAliasCFI, 0, 0);
    *(impl + 2306) = 0;
    if (*(impl + 573) == 1 && !*(impl + 1244))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(impl, 22, impl + 693, impl + 694, impl + 695);
    }

    self->_bvhBarrierBeforeStages = 0;
    self->_bvhFlushNeedsReasourceAliasCFI = 0;
  }

  v8 = self->_impl;
  v8[5864] = 1;
  *(v8 + 486) = *(v8 + 485);
  if (a4->var1 * a4->var0 * a4->var2 <= *(*(v8 + 292) + 456))
  {
    v11 = *&a4->var0;
    var2 = a4->var2;
    v9 = *&a3->var0;
    v10 = a3->var2;
    *(v8 + 515) |= 1u;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelCommonImpl(v8, &v11, &v9);
    *(self->_impl + 487) = *(self->_impl + 485);
  }
}

- (void)dealloc
{
  [(AGXG18PFamilyComputeContext_mtlnext *)self destroyImpl];
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyComputeContext_mtlnext;
  [(IOGPUMetal4ComputeCommandEncoder *)&v3 dealloc];
}

- (void)destroyImpl
{
  if (!self->_impl)
  {
    return;
  }

  blit_context = self->_blit_context;
  if (blit_context)
  {
    v4 = blit_context[6];
    if (v4)
    {
      free(*(v4 + 24));
      MEMORY[0x29ED520D0](v4, 0x1010C405FE342ADLL);
    }

    self->_blit_context = 0;
  }

  legacy_blit_context = self->_legacy_blit_context;
  if (legacy_blit_context)
  {
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContextGen2(legacy_blit_context);
    self->_legacy_blit_context = 0;
  }

  bvh_builder = self->_bvh_builder;
  if (bvh_builder)
  {
    v7 = *(*bvh_builder + 848);
    free(*(bvh_builder[4] + 24));
    v8 = bvh_builder[4];
    if (v8)
    {
      os_unfair_lock_lock(v7 + 3971);
      os_unfair_lock_opaque = v7[3970]._os_unfair_lock_opaque;
      if (os_unfair_lock_opaque > 0xF)
      {
        os_unfair_lock_unlock(v7 + 3971);
        free(v8);
        v10 = bvh_builder[34];
        if (!v10)
        {
LABEL_13:
          v11 = bvh_builder[31];
          if (!v11)
          {
LABEL_15:
            v12 = bvh_builder[28];
            if (v12)
            {
              bvh_builder[29] = v12;
              operator delete(v12);
            }

            v13 = bvh_builder[25];
            if (v13)
            {
              bvh_builder[26] = v13;
              operator delete(v13);
            }

            v14 = bvh_builder[22];
            if (v14)
            {
              bvh_builder[23] = v14;
              operator delete(v14);
            }

            v15 = bvh_builder[19];
            if (v15)
            {
              bvh_builder[20] = v15;
              operator delete(v15);
            }

            v16 = bvh_builder[16];
            if (v16)
            {
              bvh_builder[17] = v16;
              operator delete(v16);
            }

            v17 = bvh_builder[13];
            if (v17)
            {
              bvh_builder[14] = v17;
              operator delete(v17);
            }

            v18 = bvh_builder[10];
            if (v18)
            {
              bvh_builder[11] = v18;
              operator delete(v18);
            }

            v19 = bvh_builder[7];
            if (v19)
            {
              bvh_builder[8] = v19;
              operator delete(v19);
            }

            self->_bvh_builder = 0;
            goto LABEL_32;
          }

LABEL_14:
          bvh_builder[32] = v11;
          operator delete(v11);
          goto LABEL_15;
        }

LABEL_90:
        v57 = bvh_builder[35];
        v58 = v10;
        if (v57 != v10)
        {
          do
          {
            v57 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(v57 - 41);
          }

          while (v57 != v10);
          v58 = bvh_builder[34];
        }

        bvh_builder[35] = v10;
        operator delete(v58);
        v11 = bvh_builder[31];
        if (!v11)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v7[3970]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
      *&v7[2 * os_unfair_lock_opaque + 3972]._os_unfair_lock_opaque = v8;
      os_unfair_lock_unlock(v7 + 3971);
    }

    v10 = bvh_builder[34];
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_90;
  }

LABEL_32:
  impl = self->_impl;
  if (impl[2069] == 1)
  {
    v21 = *(impl + 513);
    v22 = *(impl + 514);
    v23 = v21 | v22;
    if (*(impl + 2052))
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }

    v26 = v23 != 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = *(impl + 612);
  if (v27)
  {
    for (i = *(v27 + 512); i; *(v27 + 512) = i)
    {
      v29 = *(v27 + 520);
      v30 = *(v27 + 8 * __clz(__rbit64(i)));
      os_unfair_lock_lock((v29 + 16));
      *v30 = *v29;
      *v29 = v30;
      os_unfair_lock_unlock((v29 + 16));
      i = (*(v27 + 512) - 1) & *(v27 + 512);
    }

    MEMORY[0x29ED520D0](v27, 0x1020C40C758419CLL);
  }

  v31 = *(impl + 613);
  if (v31)
  {
    for (j = *(v31 + 512); j; *(v31 + 512) = j)
    {
      v33 = *(v31 + 520);
      v34 = *(v31 + 8 * __clz(__rbit64(j)));
      os_unfair_lock_lock((v33 + 16));
      *v34 = *v33;
      *v33 = v34;
      os_unfair_lock_unlock((v33 + 16));
      j = (*(v31 + 512) - 1) & *(v31 + 512);
    }

    MEMORY[0x29ED520D0](v31, 0x1020C40C758419CLL);
  }

  v35 = *(impl + 621);
  if (v35)
  {
    v36 = v35[8];
    if (v36)
    {
      do
      {
        v37 = *v36;
        operator delete(v36);
        v36 = v37;
      }

      while (v37);
    }

    v38 = v35[6];
    v35[6] = 0;
    if (v38)
    {
      operator delete(v38);
    }

    v39 = v35[3];
    if (v39)
    {
      do
      {
        v40 = *v39;
        operator delete(v39);
        v39 = v40;
      }

      while (v40);
    }

    v41 = v35[1];
    v35[1] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    MEMORY[0x29ED520D0](v35, 0x10A0C40B4CCAB04);
  }

  v42 = *(impl + 730);
  if (v42)
  {
    *(impl + 731) = v42;
    operator delete(v42);
  }

  v43 = *(impl + 727);
  if (v43)
  {
    *(impl + 728) = v43;
    operator delete(v43);
  }

  v44 = *(impl + 704);
  if (v44)
  {
    v45 = *(impl + 705);
    v46 = *(impl + 704);
    if (v45 != v44)
    {
      do
      {
        v47 = *(v45 - 24);
        if (v47)
        {
          *(v45 - 16) = v47;
          operator delete(v47);
        }

        v45 -= 64;
      }

      while (v45 != v44);
      v46 = *(impl + 704);
    }

    *(impl + 705) = v44;
    operator delete(v46);
  }

  v48 = *(impl + 701);
  if (v48)
  {
    *(impl + 702) = v48;
    operator delete(v48);
  }

  std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::~deque[abi:nn200100]((impl + 5392));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(impl + 626));

  v49 = *(impl + 259);
  if (v49)
  {
    free(*v49);
    MEMORY[0x29ED520D0](v49, 0x1020C4014030ADELL);
  }

  v50 = *(impl + 228);
  v51 = *(impl + 229);
  if (v50 != v51)
  {
    do
    {
      v52 = *v50++;
      free(v52);
    }

    while (v50 != v51);
    v50 = *(impl + 228);
  }

  if (v50)
  {
    *(impl + 229) = v50;
    operator delete(v50);
  }

  allocator = self->_allocator;
  if (allocator)
  {
    *(allocator->_impl + 16) = 0;
  }

  self->_impl = 0;
  command_buffer = self->_command_buffer;
  v55 = !v26;
  if (!command_buffer)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
    [(AGXG18PFamilyCommandBuffer_mtlnext *)command_buffer encodeSyncComputeWithBackFacingBarrierSrcMask:v24 BackFacingBarrierDstMask:v25 FrontFacingBarrierSrcMask:v24 FrontFacingBarrierDstMask:v25];
  }

  v56 = self->_allocator;
}

- (AGXG18PFamilyComputeContext_mtlnext)initWithCommandBuffer:(id)a3 allocator:(id)a4 enableStateLoaderProgramTracking:(BOOL)a5
{
  self->_allocator = a4;
  v20.receiver = self;
  v20.super_class = AGXG18PFamilyComputeContext_mtlnext;
  v8 = [(IOGPUMetal4ComputeCommandEncoder *)&v20 initWithCommandAllocator:a4];
  v9 = v8;
  if (v8)
  {
    v19.receiver = v8;
    v19.super_class = AGXG18PFamilyComputeContext_mtlnext;
    [(_MTL4CommandEncoder *)&v19 setCommandBuffer:a3];
    *(v9 + 112) = [a3 device];
    *(v9 + 64) = a3;
    v10 = *(a3 + 13);
    *(v10 + 20) = 1;
    v11 = *(v10 + 16);
    v12 = [a3 protectionOptions];
    v13 = [a3 device];
    v14 = *(a4 + 22);
    *(v14 + 16) = 1;
    v15 = *(v14 + 8);
    bzero(v15, 0x16F8uLL);
    *(v9 + 72) = v15;
    *(v9 + 80) = 0;
    *(v9 + 88) = 0;
    *(v9 + 96) = 0;
    v16 = *(v9 + 104);
    v17 = *(v9 + 72);
    v21[0] = v13;
    v21[1] = a3;
    v21[2] = v9;
    v29 = 0;
    v30[0] = 0;
    v30[1] = 0;
    v31 = v11;
    v32 = 1;
    v33 = 0;
    v34 = 0;
    v35 = 1;
    v36 = a5;
    v37 = [0 usedForRaytracingEmulation];
    v22 = 1;
    v23 = 0;
    v24 = v11;
    v25 = 0;
    v26 = 1;
    v27 = v12;
    v28 = a5;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::ComputeContext<AGX::HAL300::EncoderComputeServiceConfigB>(v17, v30, v21);
    *(v9 + 120) = 0;
    *(v9 + 128) = 0;
    *(v9 + 129) = 0;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginComputePass(*(v9 + 72), 0, 22);
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }
  }

  return v9;
}

@end