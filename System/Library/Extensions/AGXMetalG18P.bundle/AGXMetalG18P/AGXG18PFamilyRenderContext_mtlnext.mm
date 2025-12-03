@interface AGXG18PFamilyRenderContext_mtlnext
+ (BOOL)mergeRenderEncoders:(const void *)encoders count:(unint64_t)count options:(id)options commitFeedback:(id)feedback queue:(id)queue error:(id *)error;
- (AGXG18PFamilyRenderContext_mtlnext)initWithCommandBuffer:(id)buffer allocator:(id)allocator descriptor:(id)descriptor options:(unint64_t)options enableStateLoaderProgramTracking:(BOOL)tracking;
- (id).cxx_construct;
- (uint64_t)initWithCommandBuffer:allocator:descriptor:options:enableStateLoaderProgramTracking:;
- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages options:(unint64_t)options;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages options:(unint64_t)options;
- (void)dealloc;
- (void)destroyImpl;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)initWithCommandBuffer:allocator:descriptor:options:enableStateLoaderProgramTracking:;
- (void)setArgumentTable:(id)table atStages:(unint64_t)stages;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorAttachmentMap:(id)map;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setLineWidth:(float)width;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue;
- (void)setStencilReferenceValue:(unsigned int)value;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index stages:(unint64_t)stages;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages;
- (void)writeTimestampWithGranularity:(int64_t)granularity afterStage:(unint64_t)stage intoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation AGXG18PFamilyRenderContext_mtlnext

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 24) = 0;
  return self;
}

- (void)setColorAttachmentMap:(id)map
{
  impl = self->_impl;
  if (map)
  {
    impl[11368] = [map getPhysicalIndexForLogicalIndex:0];
    impl[11369] = [map getPhysicalIndexForLogicalIndex:1];
    impl[11370] = [map getPhysicalIndexForLogicalIndex:2];
    impl[11371] = [map getPhysicalIndexForLogicalIndex:3];
    impl[11372] = [map getPhysicalIndexForLogicalIndex:4];
    impl[11373] = [map getPhysicalIndexForLogicalIndex:5];
    impl[11374] = [map getPhysicalIndexForLogicalIndex:6];
    v5 = [map getPhysicalIndexForLogicalIndex:7];
  }

  else
  {
    *(impl + 2842) = 50462976;
    *(impl + 5686) = 1284;
    impl[11374] = 6;
    v5 = 7;
  }

  impl[11375] = v5;

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVirtualMapping(impl, 0, 1);
}

- (void)writeTimestampWithGranularity:(int64_t)granularity afterStage:(unint64_t)stage intoHeap:(id)heap atIndex:(unint64_t)index
{
  if (!HIDWORD(index))
  {
    indexCopy = index;
    stageCopy = stage;
    if ([heap count] >= index)
    {
      v10 = stageCopy & 0x19;
      v11 = stageCopy & 6;
      impl = self->_impl;
      if (impl[5401])
      {
        if (v10)
        {
          *&v14 = heap;
          DWORD2(v14) = indexCopy;
          std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100]((impl + 11496), &v14);
        }

        if (v11)
        {
          v13 = 11544;
LABEL_12:
          *&v14 = heap;
          DWORD2(v14) = indexCopy;
          std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](&impl[v13], &v14);
        }
      }

      else
      {
        if (v10)
        {
          *&v14 = heap;
          DWORD2(v14) = indexCopy;
          std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100]((impl + 11472), &v14);
        }

        if (v11)
        {
          v13 = 11520;
          goto LABEL_12;
        }
      }
    }
  }
}

- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages
{
  if (stages)
  {
    stagesCopy = stages;
    impl = self->_impl;
    v7 = MEMORY[0x29EDC5610];
    do
    {
      v9 = __clz(__rbit64(stagesCopy));
      if ((1 << v9) <= 0x10)
      {
        v10 = 1 << (1 << v9);
        if ((v10 & 0x10102) != 0)
        {
          v11 = 0;
          if (impl[237])
          {
            goto LABEL_12;
          }

          goto LABEL_3;
        }

        if ((v10 & 0x14) != 0)
        {
          v11 = 1;
          if (impl[237])
          {
LABEL_12:
            MTLResourceListAddResource();
          }

LABEL_3:
          v8 = impl[v11 + 1313];
          if (!v8)
          {
            operator new();
          }

          AGX::FenceList::insertFence(v8, *(fence + *v7));
        }
      }

      stagesCopy &= ~(1 << v9);
    }

    while (stagesCopy);
  }
}

- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages
{
  if (stages)
  {
    stagesCopy = stages;
    impl = self->_impl;
    v7 = MEMORY[0x29EDC5610];
    do
    {
      v9 = __clz(__rbit64(stagesCopy));
      if ((1 << v9) <= 0x10)
      {
        v10 = 1 << (1 << v9);
        if ((v10 & 0x10102) != 0)
        {
          v11 = 0;
          if (impl[237])
          {
            goto LABEL_12;
          }

          goto LABEL_3;
        }

        if ((v10 & 0x14) != 0)
        {
          v11 = 1;
          if (impl[237])
          {
LABEL_12:
            MTLResourceListAddResource();
          }

LABEL_3:
          v8 = impl[v11 + 1311];
          if (!v8)
          {
            operator new();
          }

          AGX::FenceList::insertFence(v8, *(fence + *v7));
        }
      }

      stagesCopy &= ~(1 << v9);
    }

    while (stagesCopy);
  }
}

- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages options:(unint64_t)options
{
  impl = self->_impl;
  {
    optionsCopy = options;
    stagesCopy = stages;
    encoderStagesCopy = encoderStages;
    LOBYTE(stages) = stagesCopy;
    LOBYTE(encoderStages) = encoderStagesCopy;
    LOBYTE(options) = optionsCopy;
    if (v17)
    {
      if ([*(impl + 234) supportsRenderMemoryBarrier])
      {
        v18 = 1;
      }

      else
      {
        v18 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isAfterFragmentMemoryBarrierSupported();
      }

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::supports_after_fragment = v18;
      LOBYTE(options) = optionsCopy;
      LOBYTE(stages) = stagesCopy;
      LOBYTE(encoderStages) = encoderStagesCopy;
    }
  }

  {
    optionsCopy2 = options;
    encoderStagesCopy2 = encoderStages;
    stagesCopy2 = stages;
    LOBYTE(options) = optionsCopy2;
    LOBYTE(encoderStages) = encoderStagesCopy2;
    LOBYTE(stages) = stagesCopy2;
    if (v20)
    {
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh = 1;
      LOBYTE(options) = optionsCopy2;
      LOBYTE(encoderStages) = encoderStagesCopy2;
      LOBYTE(stages) = stagesCopy2;
    }
  }

  if (encoderStages)
  {
    v6 = 1;
    v7 = encoderStages & 6;
    if (stages)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = ((encoderStages & 0x18) != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh;
    v7 = encoderStages & 6;
    if (stages)
    {
LABEL_5:
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = ((stages & 0x18) != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh;
LABEL_8:
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = stages & 6;
  v11 = v8 ^ 1;
  if ((stages & 6) != 0)
  {
    v11 = 0;
  }

  if (v11 & 1) == 0 && (v9)
  {
    v12 = (v10 != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::supports_after_fragment;
    if ((options & 2) != 0)
    {
      if (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh == 1)
      {
        if (*(impl + 624))
        {
          AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::patchVDMControlStreamAndReset(impl + 4936, *(impl + 1340), *(impl + 1341), impl + 2638);
        }

        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier(impl + 24, 0);
        v13 = 0;
        ++*(impl + 2638);
        v14 = *(impl + 9);
        *v14 = 553650558;
        *(impl + 9) = v14 + 1;
        if (v12)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v13 = 0;
        if (((v10 != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::supports_after_fragment) != 0)
        {
LABEL_30:

          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(impl, impl + 1309, 16, 0);
          return;
        }
      }
    }

    else
    {
      if ((stages & 6) != 0)
      {
        v8 = 0;
      }

      v13 = v8 & v6;
      if (((v10 != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::supports_after_fragment) != 0)
      {
        goto LABEL_30;
      }
    }

    if (v13)
    {
      if (*(impl + 624))
      {
        AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::patchVDMControlStreamAndReset(impl + 4936, *(impl + 1340), *(impl + 1341), impl + 2638);
      }

      AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier(impl + 24, 0);
      ++*(impl + 2638);
      v15 = *(impl + 9);
      *v15 = 553650528;
      *(impl + 9) = v15 + 1;
    }
  }
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages options:(unint64_t)options
{
  impl = self->_impl;
  if (AGX::BarrierTracker::addBackFacingBarrier((impl + 507), stages, beforeStages, options))
  {
    AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier((impl + 6), 0);
    ++impl[2638];
    v6 = *(impl + 9);
    *v6 = 553648510;
    *(impl + 9) = v6 + 1;
  }
}

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
{
  impl = self->_impl;
  valueCopy = value;
  if (mode == 1)
  {
    v7 = impl[1060];
    *(v7 + 740) = value;
    v4.i32[0] = value;
    v8 = vcnt_s8(v4);
    v8.i16[0] = vaddlv_u8(v8);
    *(v7 + 736) = v8.i32[0];
    valueCopy = v8.i32[0];
  }

  else
  {
    v9 = impl[1060];
    *(v9 + 736) = value;
    *(v9 + 740) = ~(-1 << value);
  }

  *(impl + 1854) = valueCopy;
  v10 = impl[1309];
  impl[1309] = v10 | 0x40;
  impl[1271] |= 0x80uLL;
  v11 = impl[959];
  if (v11)
  {
    v12 = *(v11 + 4112);
    *(impl + 1506) = impl[753] & 0xF0E3FF00 | v12 & 0xF1C00FF;
    *(impl + 1508) = impl[754] & 0xFFFFFFF8 | (valueCopy - 1) & 7;
    *(impl + 1509) = HIDWORD(v12);
    *(impl + 1507) = 0;
    impl[1309] = v10 | 0x44;
  }

  v13 = impl[662];
  if (v13)
  {
    v14 = v13[1];
    v15 = 8 * valueCopy;
    v16 = v15 + 15;
    v17 = (v15 + 15) | 0xF;
    v18 = v14[21] + v17;
    if (v18 > v14[20])
    {
      v31 = AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 3, 3, 0);
      v15 = 8 * valueCopy;
      if (!v31)
      {
LABEL_9:
        v19 = v16 & 0xFFFFFFFF0;
        v20 = v13[1];
        v21 = ((*(v20 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = *(v20 + 184);
        *(v20 + 168) = &v21[v19];
        memcpy(v21, v14 + 1323, v15);
        v23 = v13[1];
        v24 = *(*(v23 + 48) + 224);
        v25 = *MEMORY[0x29EDC5638];
        *(v23 + 10280) |= 0x400000000000000uLL;
        *(v23 + 10472) |= 0x4000000uLL;
        v26 = v13[260];
        *(v26 + 256) = &v21[v22];
        v13[288] = v24 + v25;
        *(v13[131] + 948) = valueCopy;
        *(v26 + 668) = valueCopy;
        v27 = v13[5];
        if (v27)
        {
          v28 = *(v27 + 3880);
          v29 = *(v27 + 3888);
          v30 = *(v23 + 7416);
          *(v23 + 6024) = *(v23 + 6024) & 0xF0E3FF00 | v28 & 0xF1C00FF;
          *(v23 + 6032) = *(v23 + 6032) & 0xFFFFFFF8 | (v30 - 1) & 7;
          *(v23 + 6036) = HIDWORD(v28);
          *(v23 + 6028) = v29;
          *(v23 + 10472) |= 4uLL;
        }

        return;
      }

      v18 = v14[21] + v17;
      if (v18 > v14[20])
      {
        abort();
      }
    }

    v14[22] = v18;
    goto LABEL_9;
  }
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index
{
  impl = self->_impl;
  impl[486] = impl[485];
  v7 = *&tile->var0;
  var2 = tile->var2;
  v8 = *&region->var0.var2;
  v9[0] = *&region->var0.var0;
  v9[1] = v8;
  v9[2] = *&region->var1.var1;
  v10 = v7;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWarpedThreads(impl, &v10, v9, index | 0x100000000);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  impl = self->_impl;
  impl[486] = impl[485];
  v6 = *&tile->var0;
  var2 = tile->var2;
  v7 = *&region->var0.var2;
  v8[0] = *&region->var0.var0;
  v8[1] = v7;
  v8[2] = *&region->var1.var1;
  v9 = v6;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWarpedThreads(impl, &v9, v8, 0);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)setLineWidth:(float)width
{
  impl = self->_impl;
  if (impl[1846] != width)
  {
    impl[1846] = width;
    *(impl + 1309) |= 0x100000000000uLL;
  }
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  impl = self->_impl;
  maxBoundCopy = 0.0;
  if (bound >= 0.0)
  {
    maxBoundCopy = bound;
  }

  if (maxBound > 1.0)
  {
    maxBound = 1.0;
  }

  if (maxBoundCopy > maxBound)
  {
    maxBoundCopy = maxBound;
  }

  if (maxBoundCopy != *(impl + 1486) || maxBound != *(impl + 1487))
  {
    *(impl + 1486) = maxBoundCopy;
    *(impl + 1487) = maxBound;
    v6 = maxBoundCopy != 0.0;
    if (maxBound != 1.0)
    {
      v6 = 1;
    }

    if (impl[7197] == v6)
    {
      v7 = *(impl + 1309);
      if (!v6)
      {
LABEL_13:
        *(impl + 1309) = v7 & 0xFFFF7FFFFFFFFFFFLL;
        return;
      }
    }

    else
    {
      if (v6)
      {
        v8 = 0x1000000;
      }

      else
      {
        v8 = 0;
      }

      *(impl + 1494) = *(impl + 1494) & 0xFEFFFFFF | v8;
      v7 = *(impl + 1309) | 0x100000000000;
      impl[7197] = v6;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    *(impl + 1309) = v7 | 0x800000000000;
    *(impl + 1433) |= 4uLL;
    *(impl + 3588) |= 1u;
  }
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  impl = self->_impl;
  impl[486] = impl[485];
  v8 = *tile;
  v5 = *(impl + 299);
  memset(v9, 0, sizeof(v9));
  v6 = *(v5 + 3568);
  *&v7 = v6;
  *(&v7 + 1) = HIDWORD(v6);
  v10 = v7;
  v11 = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsImpl<false>(impl, &v8, v9, 1uLL, 0);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  impl = self->_impl;
  v8 = impl[662];
  if (v8)
  {
    var0 = threadgroup->var0;
    var1 = threadgroup->var1;
    var2 = threadgroup->var2;
    v12 = meshThreadgroup->var0;
    v13 = meshThreadgroup->var1;
    v14 = meshThreadgroup->var2;
    v15 = v8[4];
    if (v15)
    {
      v16 = *(v15 + 3946);
      v17 = 0x100000000000000;
      if (v16)
      {
        v17 = 0x200000000000000;
      }

      v18 = impl[1432] | v17;
    }

    else
    {
      LOBYTE(v16) = MEMORY[0xF6A];
      v18 = impl[1432] | 0x200000000000000;
    }

    impl[1432] = v18;
    if (v16)
    {
      goto LABEL_11;
    }

    v19 = *(*(v8[1] + 7688) + 24);
    if (v19)
    {
      v19 = *(v19 + 3948);
    }

    if (var1 * var0 * var2 <= v19)
    {
LABEL_11:
      v20 = *(*(v8[1] + 7688) + 32);
      if (v20)
      {
        v20 = *(v20 + 4036);
      }

      if (v13 * v12 * v14 <= v20)
      {
        v23[3] = v5;
        v23[4] = v6;
        v21 = v8[131];
        *(v21 + 384) = 0;
        *(v21 + 72) = buffer;
        v8[136] = 0;
        v23[0] = var0;
        v23[1] = var1;
        v23[2] = var2;
        v22[0] = v12;
        v22[1] = v13;
        v22[2] = v14;
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBufferCommon(v8, buffer, v23, v22);
      }
    }
  }
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  impl = self->_impl;
  v12 = *threads;
  v11 = *threadgroup;
  v10 = *meshThreadgroup;
  v6 = impl[662];
  if (v6)
  {
    v7 = v6[4];
    if (v7)
    {
      v8 = *(v7 + 3946) == 0;
      v9 = 56;
      if (!v8)
      {
        v9 = 57;
      }
    }

    else
    {
      v9 = 57;
    }

    impl[1432] |= 1 << v9;
    v15 = v12;
    v14 = v11;
    v13 = v10;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreads(v6, &v15, &v14, &v13);
  }
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  impl = self->_impl;
  v12 = *threadgroups;
  v11 = *threadgroup;
  v10 = *meshThreadgroup;
  v6 = impl[662];
  if (v6)
  {
    v7 = v6[4];
    if (v7)
    {
      v8 = *(v7 + 3946) == 0;
      v9 = 56;
      if (!v8)
      {
        v9 = 57;
      }
    }

    else
    {
      v9 = 57;
    }

    impl[1432] |= 1 << v9;
    v15 = v12;
    v14 = v11;
    v13 = v10;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroups(v6, &v15, &v14, &v13);
  }
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  impl = self->_impl;
  impl[486] = impl[485];
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeCommandsInBufferCommon(impl);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  impl = self->_impl;
  v6 = impl[485];
  impl[486] = v6;
  if (LODWORD(range.length))
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeCommandsInBufferCommon(impl);
    impl = self->_impl;
    v6 = impl[485];
  }

  impl[487] = v6;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer
{
  lengthCopy = length;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 144) = vaddq_s64(vdupq_n_s64(indirectBuffer), xmmword_29D2F2530);
    *(impl + 537) = 0u;
  }

  if ((*(impl + 7401) & 1) == 0)
  {
    *(impl + 7401) = 1;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, primitives);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), impl + 10088, 0);
  if (*(*(impl + 299) + 4907) == 1)
  {
    v14 = 0x114u >> primitives;
    if (primitives >= 9)
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = *(impl + 7403);
  }

  LODWORD(v15) = *(impl + 1851);
  if (v15 >= 0xFFFF)
  {
    v16 = 0xFFFF;
  }

  else
  {
    v16 = *(impl + 1851);
  }

  if (type == 1)
  {
    v15 = v15;
  }

  else
  {
    v15 = v16;
  }

  v17 = *(impl + 9);
  *v17 = (v15 << 32) | 0x40000001;
  *(impl + 1433) |= 0x80uLL;
  v18 = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDrawIndirect[primitives];
  if (v14)
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  *(impl + 9) = v17 + 32;
  *(v17 + 8) = BYTE4(buffer) | (v18 + (type << 17)) & 0xFFEEFF00 | v19 | 0x100000;
  *(v17 + 12) = buffer;
  *(v17 + 16) = WORD2(indirectBuffer);
  *(v17 + 20) = indirectBuffer & 0xFFFFFFFC;
  *(v17 + 24) = lengthCopy - 1;
  *(v17 + 28) = BYTE5(buffer);
  ++*(impl + 485);
  *(impl + 1960) = 0;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer
{
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    v8 = *(impl + 1060);
    *(v8 + 152) = buffer + 12;
    *(impl + 1075) = 0;
    if (impl[7256] == 1)
    {
      v9 = 0;
      *(v8 + 144) = buffer + 8;
LABEL_7:
      *(impl + 1074) = v9;
      goto LABEL_8;
    }

    v10 = *(impl + 21);
    v11 = v10 + 1;
    if ((v10 + 1) > *(impl + 20))
    {
      v15 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v10 = *(impl + 21);
      if (!v15)
      {
        goto LABEL_6;
      }

      v11 = v10 + 1;
      if ((v10 + 1) > *(impl + 20))
      {
        abort();
      }
    }

    *(impl + 22) = v11;
LABEL_6:
    v12 = v10 + *(impl + 23);
    *v10 = 0;
    *(impl + 21) = v10 + 1;
    *(*(impl + 1060) + 144) = v12;
    v9 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    goto LABEL_7;
  }

LABEL_8:
  if (impl[7401] == 1)
  {
    impl[7401] = 0;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, primitives);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  *(impl + 1433) |= 0x80uLL;
  v13 = buffer & 0xFFFF00000000 | AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDrawIndirect[primitives];
  v14 = *(impl + 9);
  *(impl + 9) = v14 + 12;
  *v14 = v13;
  *(v14 + 8) = buffer & 0xFFFFFFFC;
  ++*(impl + 485);
  impl[1960] = 0;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  instanceCountCopy = instanceCount;
  countCopy = count;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 160) = instance;
    v17 = *(impl + 21);
    v18 = v17 + 2;
    if ((v17 + 2) > *(impl + 20))
    {
      lengthCopy = length;
      v29 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v17 = *(impl + 21);
      if (!v29)
      {
        LODWORD(length) = lengthCopy;
        goto LABEL_4;
      }

      v18 = v17 + 2;
      LODWORD(length) = lengthCopy;
      if ((v17 + 2) > *(impl + 20))
      {
        abort();
      }
    }

    *(impl + 22) = v18;
LABEL_4:
    v19 = v17 + *(impl + 23);
    *(impl + 21) = v17 + 2;
    v20 = *(impl + 1060);
    *(v20 + 144) = v19;
    *(v20 + 152) = v19 + 4;
    *v17 = vertex;
    v17[1] = instance;
    v21 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    *(impl + 1075) = v21;
    *(impl + 1074) = v21;
  }

  v22 = (length + 3) >> 2;
  if ((impl[7401] & 1) == 0)
  {
    impl[7401] = 1;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, primitives);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  if (*(*(impl + 299) + 4907) == 1)
  {
    v23 = 0x114u >> primitives;
    if (primitives >= 9)
    {
      LOBYTE(v23) = 0;
    }
  }

  else
  {
    LOBYTE(v23) = impl[7403];
  }

  LODWORD(v24) = *(impl + 1851);
  if (v24 >= 0xFFFF)
  {
    v25 = 0xFFFF;
  }

  else
  {
    v25 = *(impl + 1851);
  }

  if (type == 1)
  {
    v24 = v24;
  }

  else
  {
    v24 = v25;
  }

  v26 = *(impl + 9);
  *v26 = (v24 << 32) | 0x40000001;
  if (v23)
  {
    v27 = 0x10000;
  }

  else
  {
    v27 = 0;
  }

  *(v26 + 8) = BYTE4(buffer) | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[primitives] + (type << 17)) & 0xFFEEFF00 | v27 | 0x100000;
  *(v26 + 12) = buffer;
  *(v26 + 16) = countCopy;
  *(v26 + 20) = instanceCountCopy;
  *(v26 + 24) = vertex;
  *(v26 + 28) = v22 - 1;
  *(v26 + 32) = BYTE5(buffer);
  *(impl + 9) = v26 + 36;
  ++*(impl + 485);
  if (primitives <= 5)
  {
    if (primitives <= 2)
    {
      if (primitives == 1)
      {
        countCopy >>= 1;
      }

      else if (primitives == 2)
      {
        --countCopy;
      }

      goto LABEL_36;
    }

    if (primitives != 3)
    {
      if (primitives != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (primitives <= 7)
  {
    if (primitives != 6)
    {
      countCopy >>= 2;
      goto LABEL_36;
    }

LABEL_30:
    countCopy -= 2;
    goto LABEL_36;
  }

  if (primitives == 8)
  {
    countCopy = ((countCopy - 4) >> 1) + 1;
    goto LABEL_36;
  }

  if (primitives == 9)
  {
LABEL_33:
    countCopy /= 3u;
  }

LABEL_36:
  *(impl + 489) += countCopy * instanceCountCopy;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount
{
  instanceCountCopy = instanceCount;
  countCopy = count;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 160) = 0;
    v15 = *(impl + 21);
    v16 = v15 + 1;
    if ((v15 + 1) > *(impl + 20))
    {
      lengthCopy = length;
      v27 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v15 = *(impl + 21);
      if (!v27)
      {
        LODWORD(length) = lengthCopy;
        goto LABEL_4;
      }

      v16 = v15 + 1;
      LODWORD(length) = lengthCopy;
      if ((v15 + 1) > *(impl + 20))
      {
        abort();
      }
    }

    *(impl + 22) = v16;
LABEL_4:
    v17 = v15 + *(impl + 23);
    *(impl + 21) = v15 + 1;
    v18 = *(impl + 1060);
    *(v18 + 144) = v17;
    *(v18 + 152) = v17 + 4;
    *v15 = 0;
    v19 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    *(impl + 1075) = v19;
    *(impl + 1074) = v19;
  }

  v20 = (length + 3) >> 2;
  if ((impl[7401] & 1) == 0)
  {
    impl[7401] = 1;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, primitives);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  if (*(*(impl + 299) + 4907) == 1)
  {
    v21 = 0x114u >> primitives;
    if (primitives >= 9)
    {
      LOBYTE(v21) = 0;
    }
  }

  else
  {
    LOBYTE(v21) = impl[7403];
  }

  LODWORD(v22) = *(impl + 1851);
  if (v22 >= 0xFFFF)
  {
    v23 = 0xFFFF;
  }

  else
  {
    v23 = *(impl + 1851);
  }

  if (type == 1)
  {
    v22 = v22;
  }

  else
  {
    v22 = v23;
  }

  v24 = *(impl + 9);
  *v24 = (v22 << 32) | 0x40000001;
  if (v21)
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  *(v24 + 8) = BYTE4(buffer) | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[primitives] + (type << 17)) & 0xFFEEFF00 | v25 | 0x100000;
  *(v24 + 12) = buffer;
  *(v24 + 16) = countCopy;
  *(v24 + 20) = instanceCountCopy;
  *(v24 + 24) = 0;
  *(v24 + 28) = v20 - 1;
  *(v24 + 32) = BYTE5(buffer);
  *(impl + 9) = v24 + 36;
  ++*(impl + 485);
  if (primitives <= 5)
  {
    if (primitives <= 2)
    {
      if (primitives == 1)
      {
        countCopy >>= 1;
      }

      else if (primitives == 2)
      {
        --countCopy;
      }

      goto LABEL_36;
    }

    if (primitives != 3)
    {
      if (primitives != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (primitives <= 7)
  {
    if (primitives != 6)
    {
      countCopy >>= 2;
      goto LABEL_36;
    }

LABEL_30:
    countCopy -= 2;
    goto LABEL_36;
  }

  if (primitives == 8)
  {
    countCopy = ((countCopy - 4) >> 1) + 1;
    goto LABEL_36;
  }

  if (primitives == 9)
  {
LABEL_33:
    countCopy /= 3u;
  }

LABEL_36:
  *(impl + 489) += countCopy * instanceCountCopy;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length
{
  countCopy = count;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 160) = 0;
    v13 = *(impl + 21);
    v14 = v13 + 1;
    if ((v13 + 1) > *(impl + 20))
    {
      lengthCopy = length;
      v25 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v13 = *(impl + 21);
      if (!v25)
      {
        LODWORD(length) = lengthCopy;
        goto LABEL_4;
      }

      v14 = v13 + 1;
      LODWORD(length) = lengthCopy;
      if ((v13 + 1) > *(impl + 20))
      {
        abort();
      }
    }

    *(impl + 22) = v14;
LABEL_4:
    v15 = v13 + *(impl + 23);
    *(impl + 21) = v13 + 1;
    v16 = *(impl + 1060);
    *(v16 + 144) = v15;
    *(v16 + 152) = v15 + 4;
    *v13 = 0;
    v17 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    *(impl + 1075) = v17;
    *(impl + 1074) = v17;
  }

  v18 = (length + 3) >> 2;
  if ((impl[7401] & 1) == 0)
  {
    impl[7401] = 1;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, primitives);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  if (*(*(impl + 299) + 4907) == 1)
  {
    v19 = 0x114u >> primitives;
    if (primitives >= 9)
    {
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = impl[7403];
  }

  LODWORD(v20) = *(impl + 1851);
  if (v20 >= 0xFFFF)
  {
    v21 = 0xFFFF;
  }

  else
  {
    v21 = *(impl + 1851);
  }

  if (type == 1)
  {
    v20 = v20;
  }

  else
  {
    v20 = v21;
  }

  v22 = *(impl + 9);
  *v22 = (v20 << 32) | 0x40000001;
  if (v19)
  {
    v23 = 0x10000;
  }

  else
  {
    v23 = 0;
  }

  *(v22 + 8) = BYTE4(buffer) | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[primitives] + (type << 17)) & 0xFFEEFF00 | v23 | 0x100000;
  *(v22 + 12) = buffer;
  *(v22 + 16) = countCopy;
  *(v22 + 20) = 1;
  *(v22 + 28) = v18 - 1;
  *(v22 + 32) = BYTE5(buffer);
  *(impl + 9) = v22 + 36;
  ++*(impl + 485);
  if (primitives <= 5)
  {
    if (primitives <= 2)
    {
      if (primitives == 1)
      {
        countCopy >>= 1;
      }

      else if (primitives == 2)
      {
        --countCopy;
      }

      goto LABEL_36;
    }

    if (primitives != 3)
    {
      if (primitives != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (primitives <= 7)
  {
    if (primitives != 6)
    {
      countCopy >>= 2;
      goto LABEL_36;
    }

LABEL_30:
    countCopy -= 2;
    goto LABEL_36;
  }

  if (primitives == 8)
  {
    countCopy = ((countCopy - 4) >> 1) + 1;
    goto LABEL_36;
  }

  if (primitives == 9)
  {
LABEL_33:
    countCopy /= 3u;
  }

LABEL_36:
  *(impl + 489) += countCopy;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  instanceCountCopy = instanceCount;
  countCopy = count;
  startCopy = start;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (impl[7256])
  {
    startCopy2 = start;
  }

  else
  {
    startCopy2 = 0;
  }

  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 160) = instance;
    v14 = *(impl + 21);
    v15 = v14 + 2;
    if ((v14 + 2) > *(impl + 20))
    {
      instanceCopy = instance;
      v22 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v14 = *(impl + 21);
      if (!v22)
      {
        LODWORD(instance) = instanceCopy;
        goto LABEL_7;
      }

      v15 = v14 + 2;
      LODWORD(instance) = instanceCopy;
      if ((v14 + 2) > *(impl + 20))
      {
        abort();
      }
    }

    *(impl + 22) = v15;
LABEL_7:
    v16 = v14 + *(impl + 23);
    *(impl + 21) = v14 + 2;
    v17 = *(impl + 1060);
    *(v17 + 144) = v16;
    *(v17 + 152) = v16 + 4;
    *v14 = startCopy2;
    v14[1] = instance;
    v18 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    *(impl + 1075) = v18;
    *(impl + 1074) = v18;
  }

  if (impl[7401] == 1)
  {
    impl[7401] = 0;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, primitives);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  LODWORD(v19) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[primitives] & 0xFFFEFFFF;
  DWORD1(v19) = countCopy;
  *(&v19 + 1) = __PAIR64__(startCopy, instanceCountCopy);
  v20 = *(impl + 9);
  *v20 = v19;
  *(impl + 9) = v20 + 1;
  ++*(impl + 485);
  if (primitives <= 5)
  {
    if (primitives <= 2)
    {
      if (primitives == 1)
      {
        countCopy >>= 1;
      }

      else if (primitives == 2)
      {
        --countCopy;
      }

      goto LABEL_26;
    }

    if (primitives != 3)
    {
      if (primitives != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (primitives <= 7)
  {
    if (primitives != 6)
    {
      countCopy >>= 2;
      goto LABEL_26;
    }

LABEL_20:
    countCopy -= 2;
    goto LABEL_26;
  }

  if (primitives == 8)
  {
    countCopy = ((countCopy - 4) >> 1) + 1;
    goto LABEL_26;
  }

  if (primitives == 9)
  {
LABEL_23:
    countCopy /= 3u;
  }

LABEL_26:
  *(impl + 489) += countCopy * instanceCountCopy;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  instanceCountCopy = instanceCount;
  countCopy = count;
  startCopy = start;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (impl[7256])
  {
    startCopy2 = start;
  }

  else
  {
    startCopy2 = 0;
  }

  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 160) = 0;
    v13 = *(impl + 21);
    v14 = v13 + 2;
    if ((v13 + 2) > *(impl + 20))
    {
      v20 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v13 = *(impl + 21);
      if (!v20)
      {
        goto LABEL_7;
      }

      v14 = v13 + 2;
      if ((v13 + 2) > *(impl + 20))
      {
        abort();
      }
    }

    *(impl + 22) = v14;
LABEL_7:
    v15 = v13 + *(impl + 23);
    *(impl + 21) = v13 + 2;
    v16 = *(impl + 1060);
    *(v16 + 144) = v15;
    *(v16 + 152) = v15 + 4;
    *v13 = startCopy2;
    v13[1] = 0;
    v17 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    *(impl + 1075) = v17;
    *(impl + 1074) = v17;
  }

  if (impl[7401] == 1)
  {
    impl[7401] = 0;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, primitives);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  LODWORD(v18) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[primitives] & 0xFFFEFFFF;
  DWORD1(v18) = countCopy;
  *(&v18 + 1) = __PAIR64__(startCopy, instanceCountCopy);
  v19 = *(impl + 9);
  *v19 = v18;
  *(impl + 9) = v19 + 1;
  ++*(impl + 485);
  if (primitives <= 5)
  {
    if (primitives <= 2)
    {
      if (primitives == 1)
      {
        countCopy >>= 1;
      }

      else if (primitives == 2)
      {
        --countCopy;
      }

      goto LABEL_26;
    }

    if (primitives != 3)
    {
      if (primitives != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (primitives <= 7)
  {
    if (primitives != 6)
    {
      countCopy >>= 2;
      goto LABEL_26;
    }

LABEL_20:
    countCopy -= 2;
    goto LABEL_26;
  }

  if (primitives == 8)
  {
    countCopy = ((countCopy - 4) >> 1) + 1;
    goto LABEL_26;
  }

  if (primitives == 9)
  {
LABEL_23:
    countCopy /= 3u;
  }

LABEL_26:
  *(impl + 489) += countCopy * instanceCountCopy;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  countCopy = count;
  startCopy = start;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (impl[7256])
  {
    startCopy2 = start;
  }

  else
  {
    startCopy2 = 0;
  }

  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 160) = 0;
    v11 = *(impl + 21);
    v12 = v11 + 2;
    if ((v11 + 2) > *(impl + 20))
    {
      v18 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v11 = *(impl + 21);
      if (!v18)
      {
        goto LABEL_7;
      }

      v12 = v11 + 2;
      if ((v11 + 2) > *(impl + 20))
      {
        abort();
      }
    }

    *(impl + 22) = v12;
LABEL_7:
    v13 = v11 + *(impl + 23);
    *(impl + 21) = v11 + 2;
    v14 = *(impl + 1060);
    *(v14 + 144) = v13;
    *(v14 + 152) = v13 + 4;
    *v11 = startCopy2;
    v11[1] = 0;
    v15 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    *(impl + 1075) = v15;
    *(impl + 1074) = v15;
  }

  if (impl[7401] == 1)
  {
    impl[7401] = 0;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, primitives);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  DWORD2(v16) = 1;
  LODWORD(v16) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[primitives] & 0xFFFEFFFF;
  DWORD1(v16) = countCopy;
  HIDWORD(v16) = startCopy;
  v17 = *(impl + 9);
  *v17 = v16;
  *(impl + 9) = v17 + 1;
  ++*(impl + 485);
  if (primitives <= 5)
  {
    if (primitives <= 2)
    {
      if (primitives == 1)
      {
        countCopy >>= 1;
      }

      else if (primitives == 2)
      {
        --countCopy;
      }

      goto LABEL_26;
    }

    if (primitives != 3)
    {
      if (primitives != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (primitives <= 7)
  {
    if (primitives != 6)
    {
      countCopy >>= 2;
      goto LABEL_26;
    }

LABEL_20:
    countCopy -= 2;
    goto LABEL_26;
  }

  if (primitives == 8)
  {
    countCopy = ((countCopy - 4) >> 1) + 1;
    goto LABEL_26;
  }

  if (primitives == 9)
  {
LABEL_23:
    countCopy /= 3u;
  }

LABEL_26:
  *(impl + 489) += countCopy;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)setStencilStoreAction:(unint64_t)action
{
  impl = self->_impl;
  v4 = impl[299];
  if ((*(v4 + 5909) & 2) != 0)
  {
    *(v4 + 6120) = action;
    if (action > 1)
    {
      if (action == 2)
      {
        *(v4 + 5904) |= 0x200u;
        *(v4 + 5896) &= 0xFFFFFDFFFFFFFDFFLL;
        goto LABEL_12;
      }

      if (action != 3)
      {
        goto LABEL_14;
      }

      v5 = *(v4 + 5904) | 0x200;
    }

    else
    {
      if (!action)
      {
        *(v4 + 5904) &= ~0x200u;
        LODWORD(v7) = *(v4 + 5896) & 0xFFFFFDFF;
        HIDWORD(v7) = (*(v4 + 5896) | 0x20000000200uLL) >> 32;
        *(v4 + 5896) = v7;
        v8 = *(v4 + 5372) | 8;
LABEL_13:
        *(v4 + 5372) = v8;
        goto LABEL_14;
      }

      if (action != 1)
      {
        goto LABEL_14;
      }

      v5 = *(v4 + 5904) & 0xFFFFFDFF;
    }

    *(v4 + 5904) = v5;
    LODWORD(v6) = *(v4 + 5896) | 0x200;
    HIDWORD(v6) = (*(v4 + 5896) & 0xFFFFFDFFFFFFFDFFLL) >> 32;
    *(v4 + 5896) = v6;
LABEL_12:
    v8 = *(v4 + 5372) & 0xFFF7;
    goto LABEL_13;
  }

LABEL_14:
  v9 = 68;
  if (action != 1)
  {
    v9 = 0;
  }

  *(impl + (v9 >> 3) + 11456) |= 1 << (v9 & 4);
}

- (void)setDepthStoreAction:(unint64_t)action
{
  impl = self->_impl;
  v4 = impl[299];
  if (*(v4 + 5909))
  {
    *(v4 + 6112) = action;
    if (action <= 1)
    {
      if (!action)
      {
        *(v4 + 5904) &= ~0x100u;
        LODWORD(v9) = *(v4 + 5896) & 0xFFFFFEFF;
        HIDWORD(v9) = (*(v4 + 5896) | 0x10000000100uLL) >> 32;
        *(v4 + 5896) = v9;
        v7 = *(v4 + 5372) | 2;
        goto LABEL_14;
      }

      if (action != 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (action == 2)
      {
        *(v4 + 5904) |= 0x100u;
        *(v4 + 5896) &= 0xFFFFFEFFFFFFFEFFLL;
LABEL_13:
        v7 = *(v4 + 5372) & 0xFFFD;
LABEL_14:
        *(v4 + 5372) = v7;
        goto LABEL_15;
      }

      if (action == 3)
      {
        v5 = *(v4 + 5904) | 0x100;
        goto LABEL_12;
      }

      if (action != 5)
      {
        goto LABEL_15;
      }
    }

    v5 = *(v4 + 5904) & 0xFFFFFEFF;
LABEL_12:
    *(v4 + 5904) = v5;
    LODWORD(v6) = *(v4 + 5896) | 0x100;
    HIDWORD(v6) = (*(v4 + 5896) & 0xFFFFFEFFFFFFFEFFLL) >> 32;
    *(v4 + 5896) = v6;
    goto LABEL_13;
  }

LABEL_15:
  v8 = 67;
  if ((action & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v8 = 0;
  }

  *(impl + (v8 >> 3) + 11456) |= 1 << (v8 & 3);
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  impl = self->_impl;
  *(impl + 3626) = offset >> 3;
  *(impl + 1494) = ((mode != 0) << 15) | ((mode == 1) << 14) | *(impl + 1494) & 0xFFFF3FFF;
  *(impl + 1499) = *(impl + 1499) & 0x1FFFF | ((offset >> 3) << 17);
  *(impl + 1309) |= 0x100000000000uLL;
  if (mode && (impl[7254] & 1) != 0)
  {
    *(impl + 1433) |= 0x10000uLL;
    v6 = *(impl + 57);
    if ((v6 + 1) > *(impl + 56))
    {
      modeCopy = mode;
      v10 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 12, 0);
      mode = modeCopy;
      v6 = *(impl + 57);
      if (v10)
      {
        v11 = v6 + 1;
        if (v11 > *(impl + 56))
        {
          abort();
        }

        *(impl + 58) = v11;
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveVisibilityClearDatabufferSpace(impl);
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::finalizeVisibilityClear(impl);
        *v4.i64 = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVisibilityClear(impl);
        v6 = *(impl + 57);
        mode = modeCopy;
      }
    }

    else
    {
      *(impl + 58) = v6 + 1;
    }

    *v6 = 2 * *(impl + 3626);
    *(impl + 57) = v6 + 1;
    v7 = *(impl + 1812) + 1;
    *(impl + 1812) = v7;
    *(*(impl + 904) + 8) = v7;
  }

  v8 = impl[7255] | (mode != 0);
  impl[7255] = v8;
  if ((v8 & 1) != 0 && (impl[10480] & 2) != 0)
  {
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(impl + 299), v4, *(impl + 239), *(impl + 251), 64);
    *(impl + 2620) &= ~2u;
  }
}

- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue
{
  impl = self->_impl;
  v5 = vmin_u32(__PAIR64__(referenceValue, value), 0xFF000000FFLL);
  *(impl + 902) = v5;
  *(impl + 5980) = vorr_s8((*(impl + 5980) & 0xFFFFFF00FFFFFF00), v5);
  *(impl + 1309) |= 0x100000000000uLL;
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  impl = self->_impl;
  if (value >= 0xFF)
  {
    valueCopy = 255;
  }

  else
  {
    valueCopy = value;
  }

  *(impl + 1804) = valueCopy;
  *(impl + 1805) = valueCopy;
  *(impl + 5980) = vorr_s8((*(impl + 5980) & 0xFFFFFF00FFFFFF00), vdup_n_s32(valueCopy));
  *(impl + 1309) |= 0x100000000000uLL;
}

- (void)setDepthStencilState:(id)state
{
  impl = self->_impl;
  v16[0] = 0xFFFFFF1C00E007;
  v18 = 0;
  v16[1] = 0;
  v17 = 0uLL;
  v20 = -1;
  if (state)
  {
    v4 = (state + 24);
  }

  else
  {
    __p[0] = 0xFFFFFF1C00E007;
    v15 = 0;
    __p[1] = 0;
    v14 = 0uLL;
    v16[0] = 0xFFFFFF1C00E007;
    std::string::operator=(&v16[1], &__p[1]);
    LODWORD(v18) = v15;
    v19 = 0x720000000000000;
    v20 = 0xE0000000E000000;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[1]);
    }

    v4 = v16;
  }

  v5 = v4[6];
  *(impl + 755) = v5;
  v6 = *(impl + 1494) & 0xFFF7FFFF | (((*(v4 + 10) >> 19) & 1) << 19);
  *(impl + 1494) = v6;
  *(impl + 1494) = v6 & 0xFFFBFFFF | (((*(v4 + 10) >> 18) & 1) << 18);
  v7 = *(impl + 1495) & 0xFFDFFFFF | (((*(v4 + 11) >> 21) & 1) << 21);
  *(impl + 1495) = v7;
  *(impl + 1495) = v7 & 0xF8FFFFFF | ((HIBYTE(*(v4 + 11)) & 7) << 24);
  v8 = *(impl + 1496) & 0xFFDFFFFF | (((*(v4 + 11) >> 21) & 1) << 21);
  *(impl + 1496) = v8;
  *(impl + 1496) = v8 & 0xF8FFFFFF | ((HIBYTE(*(v4 + 11)) & 7) << 24);
  *(impl + 5988) = v5;
  v9 = *(impl + 960);
  if (v9)
  {
    v10 = *(v9 + 3925);
  }

  else
  {
    v10 = 3;
  }

  if ((v10 - 1) < 2 && (*(*(*(impl + 234) + 848) + 16456) & 0x8000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (*(impl + 751) >> 28)
  {
    LOBYTE(v10) = v11;
  }

  *(impl + 751) = vorr_s8(vdup_n_s32((v10 & 3) << 22), (*(impl + 751) & 0xFF3FFFFFFF3FFFFFLL));
  *(impl + 1309) |= 0x100000000000uLL;
  v12 = *(v4 + 16);
  *(impl + 3589) = v12;
  *(impl + 3588) |= v12;
  *(impl + 3590) = *(v4 + 17);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[1]);
  }
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  impl = self->_impl;
  v7 = impl[1219];
  v7[219] = red;
  v7[220] = green;
  v7[221] = blue;
  v7[222] = alpha;
  impl[1309] |= 0x1000000000uLL;
  impl[1307] |= 1uLL;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindStatelessPsoMetadataArgumentBuffer(impl, 0, impl[961] != 0);
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  impl = self->_impl;
  *(impl + 901) = winding;
  v4 = *(impl + 1502) >> 28;
  if (v4)
  {
    v5 = (v4 - 5) > 1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    *(*(impl + 1219) + 904) = 0;
    *(impl + 5988) = *(impl + 755);
    *(impl + 5980) = vbsl_s8(0xFFFFFF00FFFFFF00, *(impl + 5980), *(impl + 7216));
    v6 = *(impl + 1309);
    *(impl + 1492) = *(impl + 1800) & 3 | ((winding & 1) << 16) | *(impl + 1492) & 0xFFFEFFFC;
    *(impl + 1309) = v6 | 0x2100000000000;
  }
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  impl = self->_impl;
  if (*(impl + 922) != mode)
  {
    *(impl + 1309) |= 0x100000000000uLL;
  }

  *(impl + 922) = mode;
  *(impl + 5980) = vorr_s8((*(impl + 5980) & 0xFFF3FFFFFFF3FFFFLL), vdup_n_s32((mode & 3) << 18));
  v4 = 82;
  if (mode != 1)
  {
    v4 = 0;
  }

  *&impl[((v4 >> 3) & 8) + 11456] |= 1 << (v4 & 0x3E);
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissors((impl + 756), rects, count);
  impl[1309] |= 0x200000000000uLL;
}

- (void)setScissorRect:(id *)rect
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissors((impl + 756), rect, 1u);
  impl[1309] |= 0x200000000000uLL;
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  impl = self->_impl;
  if (impl[1796] != bias || impl[1797] != scale || impl[1798] != clamp)
  {
    impl[1796] = bias;
    impl[1797] = scale;
    impl[1798] = clamp;
    v6 = *(impl + 1309);
    if (bias == 0.0 && scale == 0.0)
    {
      *(impl + 1309) = v6 & 0xFFFFBFFFFFFFFFFFLL;
    }

    else
    {
      *(impl + 1309) = v6 | 0x400000000000;
      *(impl + 1433) |= 2uLL;
    }
  }
}

- (void)setDepthClipMode:(unint64_t)mode
{
  impl = self->_impl;
  impl[924] = mode;
  v4 = impl[746] & 0xFFFFF3FF | ((((1024 << mode) >> 10) & 3) << 10);
  v5 = mode == 1;
  v6 = *(impl + 6852);
  *(impl + 6852) = v5;
  *(impl + 1492) = v4;
  v7 = impl[1309];
  if (v6 != v5)
  {
    v7 |= 0xC0200000000000uLL;
  }

  impl[1309] = v7 | 0x2000000000000;
  impl[(mode == 1) + 1432] |= 1uLL;
}

- (void)setCullMode:(unint64_t)mode
{
  impl = self->_impl;
  impl[900] = mode;
  *(impl + 1492) = mode & 3 | ((impl[901] & 1) << 16) | impl[746] & 0xFFFEFFFC;
  impl[1309] |= 0x2000000000000uLL;
  {
    v6 = impl;
    impl = v6;
    if (v5)
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA(void)const::enable_gin1149_swwa = 1;
      impl = v6;
    }
  }

  if (*(v4 + 3536) == 1)
  {
    impl[1309] |= 0x1000000000000uLL;
  }
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  countCopy = count;
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setViewports((impl + 756), viewports, count, *(impl[299] + 4906));
  impl[1309] |= 0x81200000000000uLL;
  if (countCopy >= 2)
  {
    impl[1433] |= 0x80000000uLL;
  }
}

- (void)setViewport:(id *)viewport
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setViewports((impl + 756), viewport, 1u, *(impl[299] + 4906));
  impl[1309] |= 0x81200000000000uLL;
}

- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index stages:(unint64_t)stages
{
  stagesCopy = stages;
  if (stages)
  {
    impl = self->_impl;
    v10 = impl[1060] + 8 * (index + 36);
    *(v10 + 40) = i;
    *(v10 + 352) = 0;
    *(impl + 8804) = 1;
    if ((stages & 2) == 0)
    {
LABEL_3:
      if ((stages & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((stages & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = self->_impl;
  v12 = v11[1219] + 8 * (index + 36);
  *(v12 + 48) = i;
  *(v12 + 360) = 0;
  *(v11 + 10076) = 1;
  if ((stages & 4) == 0)
  {
LABEL_4:
    if ((stages & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_9:
  v13 = self->_impl;
  if ((index + 67) > 0x1E)
  {
    v15 = v13[450];
    v16 = (index + 36);
    v14 = (v15 + 8 * v16 + 48);
  }

  else
  {
    v14 = (*(v13[449] + 24) + *(v13[449] + 4) + 8 * (index + 67));
    v15 = v13[450];
    v16 = (index + 36);
  }

  *v14 = i;
  *(v15 + 8 * v16 + 360) = 0;
  *(v15 + 8 * index + 816) = i;
  if ((stages & 8) == 0)
  {
LABEL_5:
    if ((stages & 0x10) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_13:
  v17 = self->_impl;
  v18 = v17[662];
  if (!v18)
  {
    v22 = self->_impl;
    v18 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(v17[666]);
    v22[662] = v18;
  }

  (*(*v18 + 152))(v18, i, index);
  if ((stagesCopy & 0x10) != 0)
  {
LABEL_16:
    v19 = self->_impl;
    v20 = v19[662];
    if (!v20)
    {
      v20 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(v19[666]);
      v19[662] = v20;
    }

    v21 = *(*v20 + 160);

    v21();
  }
}

- (void)endEncoding
{
  impl = self->_impl;
  v4.i64[0] = *(impl + 2044);
  v4.i64[1] = v4.i64[0];
  *(impl + 2028) = vorrq_s8(*(impl + 2028), v4);
  *(impl + 2060) = vorr_s8(*(impl + 2060), vdup_lane_s32(vorr_s8(vdup_lane_s32(*v4.i8, 1), *v4.i8), 0));
  if ((impl[2074] & 1) == 0)
  {
    if (impl[2077])
    {
      v5 = 0;
    }

    else
    {
      v5 = impl[2078];
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::endRenderPassCommon(impl, v5 & 1, 1, 1);
    if (impl[2077] == 1)
    {
      goto LABEL_6;
    }

    if (impl[2078])
    {
      goto LABEL_9;
    }

    if (impl[2074] != 1)
    {
LABEL_6:
      if ((*(*(impl + 299) + 4956) & 1) == 0)
      {
LABEL_9:
        v6 = *(impl + 1433);
        v7 = (*(impl + 234) + 856);
        atomic_fetch_or(v7, *(impl + 1432));
        atomic_fetch_or(v7 + 1, v6);
        *(impl + 5) = 0;
        *(impl + 6) = 0;
        *(impl + 7) = 0;
        *impl = 0;
        *(impl + 1896) = 0u;
        goto LABEL_10;
      }
    }

    else if ((impl[2073] & 1) == 0 || *(*(impl + 299) + 4956) != 1)
    {
      goto LABEL_9;
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeDepthCopy(impl);
    goto LABEL_9;
  }

LABEL_10:
  v8.receiver = self;
  v8.super_class = AGXG18PFamilyRenderContext_mtlnext;
  [(IOGPUMetal4RenderCommandEncoder *)&v8 endEncoding];
  [(AGXG18PFamilyRenderContext_mtlnext *)self destroyImpl];
}

- (void)setRenderPipelineState:(id)state
{
  impl = self->_impl;
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setRenderPipelineStateCommon(impl, state + 240);
  *(impl + 5403) = 1;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  impl = self->_impl;
  v6 = 4 * index;
  *(impl[450] + v6 + 672) = offset ^ 0x80000000;
  *(impl[1219] + v6 + 736) = offset ^ 0x80000000;
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  impl = self->_impl;
  v5 = impl[662];
  if (!v5)
  {
    lengthCopy = length;
    indexCopy = index;
    v5 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(impl[666]);
    LODWORD(index) = indexCopy;
    LODWORD(length) = lengthCopy;
    impl[662] = v5;
  }

  *(*(v5 + 1048) + 4 * index + 804) = length;
}

- (void)setArgumentTable:(id)table atStages:(unint64_t)stages
{
  stagesCopy = stages;
  if (stages)
  {
    impl = self->_impl;
    if (impl[964] != table)
    {
      tableCopy = table;
      v9 = impl[964];
      if (v9 != tableCopy)
      {
        v10 = tableCopy;

        impl[964] = v10;
      }

      if (table)
      {
        v11 = *(table + 4);
      }

      else
      {
        v11 = 0;
      }

      impl[1059] = v11;
      impl[963] = -1;
    }
  }

  if ((stagesCopy & 2) != 0)
  {
    v12 = self->_impl;
    if (v12[1102] != table)
    {
      tableCopy2 = table;
      v14 = v12[1102];
      if (v14 != tableCopy2)
      {
        v15 = tableCopy2;

        v12[1102] = v15;
      }

      if (table)
      {
        v16 = *(table + 4);
      }

      else
      {
        v16 = 0;
      }

      v12[1218] = v16;
      v12[1101] = -1;
    }
  }

  if ((stagesCopy & 4) != 0)
  {
    v17 = self->_impl;
    if (v17[343] != table)
    {
      tableCopy3 = table;
      v19 = v17[343];
      if (v19 != tableCopy3)
      {
        v20 = tableCopy3;

        v17[343] = v20;
      }

      if (table)
      {
        v21 = *(table + 4);
      }

      else
      {
        v21 = 0;
      }

      v17[449] = v21;
      v17[342] = -1;
    }
  }

  if ((stagesCopy & 8) != 0)
  {
    v22 = self->_impl;
    v23 = v22[662];
    if (!v23)
    {
      v23 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(v22[666]);
      v22[662] = v23;
    }

    (*(*v23 + 168))(v23, table);
  }

  if ((stagesCopy & 0x10) != 0)
  {
    v24 = self->_impl;
    v25 = v24[662];
    if (!v25)
    {
      v25 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(v24[666]);
      v24[662] = v25;
    }

    v26 = *(*v25 + 176);

    v26();
  }
}

- (void)dealloc
{
  [(AGXG18PFamilyRenderContext_mtlnext *)self destroyImpl];
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyRenderContext_mtlnext;
  [(IOGPUMetal4RenderCommandEncoder *)&v3 dealloc];
}

- (void)destroyImpl
{
  p_framebuffer_wrapper = &self->_framebuffer_wrapper;
  if (self->_framebuffer_wrapper.__ptr_)
  {
    ptr = self->_framebuffer_wrapper.__ptr_;
    f = self->_framebuffer_wrapper.__deleter_.__f_.__f_;
    if (!f)
    {
      goto LABEL_18;
    }

    (*(*f + 48))(f, &ptr);
    p_framebuffer_wrapper->__ptr_ = 0;
    self->_framebuffer = 0;
  }

  v5 = self->_impl_wrapper.__ptr_;
  if (!v5)
  {
    return;
  }

  if (*(v5 + 2069) == 1)
  {
    v6 = *(v5 + 513);
    v7 = *(v5 + 514);
    v8 = v6 | v7;
    if (*(v5 + 2052))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    v11 = v8 != 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  ptr = self->_impl_wrapper.__ptr_;
  v12 = self->_impl_wrapper.__deleter_.__f_.__f_;
  if (!v12)
  {
LABEL_18:
    v13 = std::__throw_bad_function_call[abi:nn200100]();
    [(AGXG18PFamilyRenderContext_mtlnext *)v13 initWithCommandBuffer:v14 allocator:v15 descriptor:v16 options:v17 enableStateLoaderProgramTracking:v18, v19];
    return;
  }

  (*(*v12 + 48))(v12, &ptr);
  self->_impl_wrapper.__ptr_ = 0;
  self->_impl = 0;

  if (v11)
  {
    [(AGXG18PFamilyCommandBuffer_mtlnext *)self->_command_buffer encodeSyncComputeWithBackFacingBarrierSrcMask:v9 BackFacingBarrierDstMask:v10 FrontFacingBarrierSrcMask:v9 FrontFacingBarrierDstMask:v10];
  }
}

- (AGXG18PFamilyRenderContext_mtlnext)initWithCommandBuffer:(id)buffer allocator:(id)allocator descriptor:(id)descriptor options:(unint64_t)options enableStateLoaderProgramTracking:(BOOL)tracking
{
  LODWORD(v157) = tracking;
  v177 = *MEMORY[0x29EDCA608];
  v161 = 0;
  v162 = 0;
  [descriptor validate:objc_msgSend(buffer width:"device") height:{&v162, &v161}];
  v160.receiver = self;
  v160.super_class = AGXG18PFamilyRenderContext_mtlnext;
  v12 = [(IOGPUMetal4RenderCommandEncoder *)&v160 initWithCommandAllocator:allocator];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_100;
  }

  v159.receiver = v12;
  v159.super_class = AGXG18PFamilyRenderContext_mtlnext;
  [(_MTL4CommandEncoder *)&v159 setCommandBuffer:buffer];
  v13->_options = options;
  v13->_command_buffer = buffer;
  v13->_allocator = allocator;
  v13->_mergeable = (options & 3) != 0;
  v13->_device = [buffer device];
  _descriptorPrivate = [descriptor _descriptorPrivate];
  if (v162 && v161)
  {
    v14 = *(allocator + 22);
    impl = v13->_device->_impl;
    if (!v13->_mergeable)
    {
      *(v14 + 40) = 1;
      v16 = *(v14 + 32);
      bzero(v16, 0x1980uLL);
      v13->_framebuffer = v16;
      *v176 = &unk_2A23F92C8;
      *&v176[8] = allocator;
      *&v176[24] = v176;
      v167 = &v164;
      v17 = &unk_2A23F92C8;
LABEL_12:
      block = v16;
      v164 = v17;
      allocatorCopy2 = allocator;
      std::unique_ptr<AGX::HAL300::Framebuffer,std::function<void ()(AGX::HAL300::Framebuffer*)>>::operator=[abi:nn200100](&v13->_framebuffer_wrapper, &block);
      v18 = block;
      block = 0;
      if (v18)
      {
        v174[0] = v18;
        if (!v167)
        {
          goto LABEL_177;
        }

        (*(*v167 + 48))(v167, v174);
      }

      if (v167 == &v164)
      {
        (*(*v167 + 32))(v167);
      }

      else if (v167)
      {
        (*(*v167 + 40))();
      }

      if (*&v176[24] == v176)
      {
        (*(**&v176[24] + 32))(*&v176[24]);
        if (!v13->_framebuffer)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (*&v176[24])
        {
          (*(**&v176[24] + 40))();
        }

        if (!v13->_framebuffer)
        {
          goto LABEL_26;
        }
      }

      AGX::FramebufferDriverConfigGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfigGen3_3(&block, _descriptorPrivate, *(v13->_device->_impl + 4237), impl[8229] & 0x1F);
      AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3(v13->_framebuffer, v13->_device, *(buffer + 13), &block, v162, v161, 0);
      goto LABEL_26;
    }

    v15 = *(v14 + 136);
    if (*(v14 + 128) == v15)
    {
      block = malloc_type_malloc(*(v14 + 112), 0x77703FACuLL);
      if (!block)
      {
        v16 = 0;
        goto LABEL_9;
      }

      *(v14 + 120) += *(v14 + 112);
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v14 + 128, &block);
      v15 = *(v14 + 136);
    }

    v16 = *(v15 - 8);
    *(v14 + 136) = v15 - 8;
LABEL_9:
    bzero(v16, 0x1980uLL);
    v13->_framebuffer = v16;
    *v176 = &unk_2A23F9280;
    *&v176[8] = allocator;
    *&v176[24] = v176;
    v167 = &v164;
    v17 = &unk_2A23F9280;
    goto LABEL_12;
  }

LABEL_26:
  if (!v13->_framebuffer)
  {
    goto LABEL_100;
  }

  v19 = *(allocator + 22);
  if (v13->_mergeable)
  {
    v20 = *(v19 + 96);
    if (*(v19 + 88) == v20)
    {
      block = malloc_type_malloc(*(v19 + 72), 0x77703FACuLL);
      if (!block)
      {
        v21 = 0;
        goto LABEL_32;
      }

      *(v19 + 80) += *(v19 + 72);
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v19 + 88, &block);
      v20 = *(v19 + 96);
    }

    v21 = *(v20 - 8);
    *(v19 + 96) = v20 - 8;
LABEL_32:
    bzero(v21, 0x2D80uLL);
    v13->_impl = v21;
    *v176 = &unk_2A23F9310;
    *&v176[8] = allocator;
    *&v176[24] = v176;
    v167 = &v164;
    v22 = &unk_2A23F9310;
    goto LABEL_34;
  }

  *(v19 + 16) = 1;
  v21 = *(v19 + 8);
  bzero(v21, 0x2D80uLL);
  v13->_impl = v21;
  *v176 = &unk_2A23F9358;
  *&v176[8] = allocator;
  *&v176[24] = v176;
  v167 = &v164;
  v22 = &unk_2A23F9358;
LABEL_34:
  block = v21;
  v164 = v22;
  allocatorCopy2 = allocator;
  std::unique_ptr<AGX::HAL300::RenderContextB,std::function<void ()(AGX::HAL300::RenderContextB*)>>::operator=[abi:nn200100](&v13->_impl_wrapper, &block);
  v23 = block;
  block = 0;
  if (!v23)
  {
    goto LABEL_37;
  }

  v174[0] = v23;
  if (!v167)
  {
LABEL_177:
    v142 = std::__throw_bad_function_call[abi:nn200100]();
    v143 = *(buffer + 1443);
    if (v143)
    {
      *(buffer + 1444) = v143;
      operator delete(v143);
    }

    v144 = *(buffer + 1440);
    if (v144)
    {
      *(buffer + 1441) = v144;
      operator delete(v144);
      v145 = *(buffer + 1437);
      if (!v145)
      {
LABEL_181:
        v146 = *(buffer + 1434);
        if (!v146)
        {
LABEL_186:

          v147 = *(buffer + 956);
          if (v147)
          {
            do
            {
              v148 = *v147;
              operator delete(v147);
              v147 = v148;
            }

            while (v148);
          }

          *(buffer + 956) = 0;

          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextB>::~PointerWithOnDemandObjectCreation(buffer + 662);
          std::function<void ()(void *)>::~function(allocator);
          std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::~function(v151);
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextB>::~PointerWithOnDemandObjectCreation(buffer + 636);
          std::function<void ()(void *)>::~function(v154);
          std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::~function(v157);
          *(buffer + 449) = 0;

          AGX::CommonUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~CommonUSCStateLoader(options);
          AGX::HAL300::ContextCommon::~ContextCommon(buffer);
          _Unwind_Resume(v142);
        }

LABEL_185:
        *(buffer + 1435) = v146;
        operator delete(v146);
        goto LABEL_186;
      }
    }

    else
    {
      v145 = *(buffer + 1437);
      if (!v145)
      {
        goto LABEL_181;
      }
    }

    *(buffer + 1438) = v145;
    operator delete(v145);
    v146 = *(buffer + 1434);
    if (!v146)
    {
      goto LABEL_186;
    }

    goto LABEL_185;
  }

  (*(*v167 + 48))(v167, v174);
LABEL_37:
  if (v167 == &v164)
  {
    (*(*v167 + 32))(v167);
  }

  else if (v167)
  {
    (*(*v167 + 40))();
  }

  if (*&v176[24] == v176)
  {
    (*(**&v176[24] + 32))(*&v176[24]);
    if (v13->_impl)
    {
      goto LABEL_45;
    }

LABEL_100:
    [(AGXG18PFamilyRenderContext_mtlnext *)v13 destroyImpl];

    return 0;
  }

  if (*&v176[24])
  {
    (*(**&v176[24] + 40))();
  }

  if (!v13->_impl)
  {
    goto LABEL_100;
  }

LABEL_45:
  device = v13->_device;
  v155 = *(allocator + 22);
  framebuffer = v13->_framebuffer;
  globalTraceObjectID = [buffer globalTraceObjectID];
  globalTraceObjectID2 = [(_MTL4CommandEncoder *)v13 globalTraceObjectID];
  protectionOptions = [buffer protectionOptions];
  v152 = *(buffer + 13);
  commandBufferStorage = [buffer commandBufferStorage];
  privateData = [buffer privateData];
  privateDataOffset = [buffer privateDataOffset];
  *&v31 = v152;
  *(&v31 + 1) = commandBufferStorage;
  *&v32 = globalTraceObjectID;
  *(&v32 + 1) = globalTraceObjectID2;
  v33 = v13->_impl;
  v34 = (v33 + 1896);
  *v176 = device;
  *&v176[16] = v31;
  v35 = device->_impl + 7008;
  block = MEMORY[0x29EDCA5F8];
  v164 = 3221225472;
  allocatorCopy2 = ___ZN3AGX20RenderUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfigNSt3__15arrayIjLm4EEE_block_invoke;
  p_block = &__block_descriptor_56_e5_v8__0l;
  v168 = 0;
  v169 = 0;
  v167 = v35;
  v150 = privateData;
  if (AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&,std::array<unsigned int,4ul>)::once != -1)
  {
    v153 = v32;
    dispatch_once(&AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&,std::array<unsigned int,4ul>)::once, &block);
    v32 = v153;
  }

  v36 = *&v176[16];
  *v33 = *&v176[8];
  *(v33 + 16) = commandBufferStorage;
  *(v33 + 24) = &AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  v37 = v33 + 24;
  *(v33 + 32) = device;
  *(v33 + 40) = commandBufferStorage;
  v38 = *(commandBufferStorage + 768);
  *(v33 + 1824) = 0;
  *(v33 + 1840) = 0;
  *(v33 + 1832) = 0;
  *(v33 + 1848) = 0;
  *(v33 + 1864) = protectionOptions;
  *(v33 + 48) = v38;
  *(v33 + 56) = commandBufferStorage + 144;
  *(v33 + 1856) = *(commandBufferStorage + 784);
  *(v33 + 1880) = commandBufferStorage;
  *(v33 + 1888) = commandBufferStorage + 64;
  *(v33 + 1920) = 0;
  *(v33 + 1961) = 0;
  *(v33 + 1992) = v32;
  *(v33 + 2008) = v36 + 24;
  *(v33 + 2016) = 0;
  *(v33 + 2024) = 0;
  *(v33 + 2028) = 0u;
  *(v33 + 2044) = 0u;
  *(v33 + 2053) = 0u;
  *(v33 + 2069) = 1;
  *(v33 + 1872) = device;
  *v34 = *(commandBufferStorage + 728);
  *(v33 + 1912) = commandBufferStorage + 144;
  *(v33 + 1968) = *(commandBufferStorage + 48);
  *(v33 + 1976) = *(commandBufferStorage + 56);
  *(v33 + 1924) = globalTraceObjectID2;
  *(v33 + 1932) = 0xFFFFFFFF00000000;
  *(v33 + 1956) = 0;
  *(v33 + 1960) = 1;
  *(v33 + 2072) = options & ((options & 2) == 0);
  *(v33 + 2073) = ((options & 2) >> 1) & (options ^ 1);
  *(v33 + 2074) = ((options & 2) != 0) | options & 1;
  *(v33 + 2075) = 0;
  *(v33 + 2080) = v155;
  v39 = device->_impl;
  v40 = *(v39 + 7092);
  *(v33 + 2088) = ((((96 * (*(v39 + 7056) / v40) + 367) & 0xFFFFFFE0) + 127) & 0xFFFFFF80) * v40 + 128;
  *(v33 + 2096) = 1792 * v40 + 3456;
  _ZF = v40 == 1;
  if (v40 == 1)
  {
    v42 = 736;
  }

  else
  {
    v42 = 736 * v40 + 736;
  }

  v43 = (v42 + 63) & 0x1FFFFFFC0;
  *(v33 + 2104) = v43;
  LODWORD(v44) = 1664 * v40 + 2048;
  if (_ZF)
  {
    v44 = 1664;
  }

  else
  {
    v44 = v44;
  }

  *(v33 + 2112) = v43 + v44;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::RenderUSCStateLoader(v33 + 2120, v39, framebuffer, v157);
  *(v33 + 2392) = framebuffer;
  v45 = *(v33 + 1912);
  v46 = *(*(v33 + 1872) + 848);
  *(v33 + 2504) = v46;
  *(v33 + 2512) = v33;
  *(v33 + 2520) = framebuffer;
  *(v33 + 2528) = v33 + 2120;
  *(v33 + 2536) = v37;
  v47 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(v33 + 2544, v46, *(v46 + 7184));
  *(v33 + 2648) = v45;
  *(v33 + 2656) = 0;
  *(v47 + 48) = 0;
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  *v47 = 0u;
  v48 = *(v33 + 1872);
  v49 = *(v33 + 2008);
  v50 = *(v33 + 1896);
  v51 = *(v33 + 1912);
  v52 = *(v33 + 1904);
  *(v33 + 2664) = framebuffer;
  *(v33 + 2672) = v33 + 2120;
  *(v33 + 2680) = v37;
  *(v33 + 2688) = v49;
  *(v33 + 2696) = v50;
  *(v33 + 2704) = v51;
  *(v33 + 2712) = v52;
  *(v33 + 2736) = -1;
  *(v33 + 2744) = 0u;
  *(v33 + 2760) = -1;
  *(v33 + 3600) = v33 + 2752;
  *(v33 + 3944) = v33 + 2424;
  *(v33 + 3984) = v48;
  *(v33 + 3992) = v33 + 7544;
  *(v33 + 4000) = v33 + 2400;
  *(v33 + 4012) = 0;
  *(v33 + 4016) = *(v33 + 1992);
  *(v33 + 3424) = *(v33 + 3592);
  *(v33 + 3432) = v33 + 2752;
  LODWORD(v50) = framebuffer[1234];
  *(v33 + 3576) = ((framebuffer[1233] + framebuffer[892] - 1) & -framebuffer[1233]) / framebuffer[1233];
  *(v33 + 3580) = ((v50 + framebuffer[893] - 1) & -v50) / v50;
  *(v33 + 3424) = 0x80000000;
  *(v33 + 3564) = framebuffer[1536];
  v53 = *(v48 + 848);
  *(v33 + 2720) = v53 + 13360;
  *(v33 + 2728) = v53 + 14912;
  *(v33 + 4032) = framebuffer;
  *(v33 + 4040) = v33 + 2120;
  *(v33 + 4048) = v51;
  *(v33 + 4056) = v52;
  *(v33 + 4064) = v33 + 7544;
  *(v33 + 4072) = xmmword_29D2F2500;
  *(v33 + 4928) = v33 + 2424;
  v54 = *(v33 + 1912);
  v55 = *(v33 + 1904);
  v56 = *(*(v33 + 1872) + 848);
  *(v33 + 4936) = v33 + 2120;
  *(v33 + 4944) = v54;
  *(v33 + 4952) = v55;
  *(v33 + 4960) = v37;
  *(v33 + 4984) = 0u;
  *(v33 + 5008) = 0u;
  *(v33 + 5000) = 0;
  block = MEMORY[0x29EDCA5F8];
  v164 = 3221225472;
  allocatorCopy2 = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke;
  p_block = &__block_descriptor_40_e5_v8__0l;
  v167 = v56;
  if (AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVDMPatchUpVariant(AGX::HAL300::Device *)::execute_indirect_stateless_shaders_pred != -1)
  {
    dispatch_once(&AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVDMPatchUpVariant(AGX::HAL300::Device *)::execute_indirect_stateless_shaders_pred, &block);
  }

  v57 = v56[2070];
  v58 = AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVDMPatchUpVariant(AGX::HAL300::Device *)::execute_indirect_pipeline;
  *(v57 + 52) = 1;
  v59 = HIDWORD(*v57);
  v60 = *(v57 + 8);
  v61 = HIDWORD(*v57);
  v62 = v58[10];
  if (*v57 > v62)
  {
    v62 = *v57;
  }

  v63 = *(v57 + 16);
  *v57 = v62;
  if (v59 <= v58[11])
  {
    v59 = v58[11];
  }

  v64 = *(v57 + 24);
  *(v57 + 4) = v59;
  v65 = v58[12];
  if (v60 > v65)
  {
    v65 = v60;
  }

  *(v57 + 8) = v65;
  v66 = v58[13];
  if (v61 > v66)
  {
    v66 = v61;
  }

  *(v57 + 12) = v66;
  v67 = v58[14];
  if (v63 > v67)
  {
    v67 = v63;
  }

  v68 = *(v57 + 32);
  *(v57 + 16) = v67;
  v69 = v58[15];
  if (SHIDWORD(v63) > v69)
  {
    v69 = HIDWORD(v63);
  }

  *(v57 + 20) = v69;
  v70 = v58[16];
  if (v64 > v70)
  {
    v70 = v64;
  }

  *(v57 + 24) = v70;
  v71 = v58[17];
  if (v68 > v71)
  {
    v71 = v68;
  }

  *(v57 + 32) = v71;
  v72 = v56[2073];
  *(v72 + 52) = 1;
  v73 = *(v72 + 16);
  v74 = v58[10];
  v75 = HIDWORD(*v72);
  v76 = *(v72 + 8);
  v77 = HIDWORD(*v72);
  if (*v72 > v74)
  {
    v74 = *v72;
  }

  v78 = *(v72 + 24);
  *v72 = v74;
  v79 = v58[11];
  if (v75 > v79)
  {
    v79 = v75;
  }

  v80 = *(v72 + 32);
  *(v72 + 4) = v79;
  v81 = v58[12];
  if (v76 > v81)
  {
    v81 = v76;
  }

  *(v72 + 8) = v81;
  v82 = v58[13];
  if (v77 > v82)
  {
    v82 = v77;
  }

  *(v72 + 12) = v82;
  v83 = v58[14];
  if (v73 > v83)
  {
    v83 = v73;
  }

  *(v72 + 16) = v83;
  v84 = v58[15];
  if (SHIDWORD(v73) > v84)
  {
    v84 = HIDWORD(v73);
  }

  *(v72 + 20) = v84;
  v85 = v58[16];
  if (v78 > v85)
  {
    v85 = v78;
  }

  *(v72 + 24) = v85;
  v86 = v58[17];
  if (v80 > v86)
  {
    v86 = v80;
  }

  *(v72 + 32) = v86;
  *(v33 + 4968) = v58;
  block = MEMORY[0x29EDCA5F8];
  v164 = 3221225472;
  allocatorCopy2 = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke;
  p_block = &__block_descriptor_40_e5_v8__0l;
  v167 = v56;
  if (AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getRangeExecutionVariant(AGX::HAL300::Device *)::execute_indirect_stateless_shaders_pred != -1)
  {
    dispatch_once(&AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getRangeExecutionVariant(AGX::HAL300::Device *)::execute_indirect_stateless_shaders_pred, &block);
  }

  *(v33 + 4976) = AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getRangeExecutionVariant(AGX::HAL300::Device *)::range_execution_pipeline;
  *(v33 + 5024) = &unk_2A23F8A50;
  *(v33 + 5032) = v33;
  *(v33 + 5048) = v33 + 5024;
  *(v33 + 5056) = &unk_2A23F8AE8;
  *(v33 + 5064) = v33;
  *(v33 + 5080) = v33 + 5056;
  *&v176[24] = v176;
  *v176 = &unk_2A23F8A50;
  *&v176[8] = v33;
  v175 = v174;
  v174[0] = &unk_2A23F8AE8;
  v174[1] = v33;
  *(v33 + 5120) = 0;
  *(v33 + 5152) = 0;
  *(v33 + 5088) = 0;
  p_block = &block;
  block = &unk_2A23F8A50;
  v164 = v33;
  v87 = &block;
  if ((v33 + 5096) == &block || (std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#1}>,AGX::HAL300::HWTessellationContextB * ()(void)>::__clone(&block, (v33 + 5096)), (*(*p_block + 32))(p_block), p_block = *(v33 + 5120), v87 = p_block, *(v33 + 5120) = v33 + 5096, v87 == &block))
  {
    (*(*v87 + 32))(v87);
    v88 = v175;
    if (!v175)
    {
LABEL_98:
      p_block = v88;
      goto LABEL_102;
    }
  }

  else
  {
    if (v87)
    {
      (*(*v87 + 40))(v87);
    }

    v88 = v175;
    if (!v175)
    {
      goto LABEL_98;
    }
  }

  if (v88 != v174)
  {
    v88 = (*(*v88 + 16))(v88);
    goto LABEL_98;
  }

  p_block = &block;
  (*(*v88 + 24))(v88, &block);
LABEL_102:
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](&block, v33 + 5128);
  if (p_block == &block)
  {
    (*(*p_block + 32))(p_block);
  }

  else if (p_block)
  {
    (*(*p_block + 40))();
  }

  if (v175 == v174)
  {
    (*(*v175 + 32))(v175);
  }

  else if (v175)
  {
    (*(*v175 + 40))();
  }

  if (*&v176[24] == v176)
  {
    (*(**&v176[24] + 32))(*&v176[24]);
  }

  else if (*&v176[24])
  {
    (*(**&v176[24] + 40))();
  }

  *(v33 + 5160) = 0;
  *(v33 + 5168) = 0xC000000000000000;
  *(v33 + 5176) = 0u;
  *(v33 + 5192) = 0;
  *(v33 + 5200) = 0;
  *(v33 + 5216) = 0;
  *(v33 + 5208) = 0;
  *(v33 + 5224) = *(*(*(v33 + 1872) + 848) + 17212);
  *(v33 + 5232) = &unk_2A23F8B30;
  *(v33 + 5240) = v33;
  *(v33 + 5256) = v33 + 5232;
  *(v33 + 5264) = &unk_2A23F9238;
  *(v33 + 5272) = v33;
  *(v33 + 5288) = v33 + 5264;
  v173 = v172;
  v172[0] = &unk_2A23F8B30;
  v172[1] = v33;
  v171 = v170;
  v170[0] = &unk_2A23F9238;
  v170[1] = v33;
  *(v33 + 5328) = 0;
  *(v33 + 5360) = 0;
  *(v33 + 5296) = 0;
  p_block = &block;
  block = &unk_2A23F8B30;
  v164 = v33;
  v89 = &block;
  if ((v33 + 5304) == &block || (std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::{lambda(void)#2}>,AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::__clone(&block, (v33 + 5304)), (*(*p_block + 32))(p_block), p_block = *(v33 + 5328), v89 = p_block, *(v33 + 5328) = v33 + 5304, v89 == &block))
  {
    (*(*v89 + 32))(v89);
  }

  else if (v89)
  {
    (*(*v89 + 40))(v89);
  }

  v90 = v171;
  if (!v171)
  {
    goto LABEL_122;
  }

  if (v171 != v170)
  {
    v90 = (*(*v171 + 16))();
LABEL_122:
    p_block = v90;
    goto LABEL_124;
  }

  p_block = &block;
  (*(*v171 + 24))();
LABEL_124:
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](&block, v33 + 5336);
  if (p_block == &block)
  {
    (*(*p_block + 32))(p_block);
  }

  else if (p_block)
  {
    (*(*p_block + 40))();
  }

  if (v171 == v170)
  {
    (*(*v171 + 32))(v171);
  }

  else if (v171)
  {
    (*(*v171 + 40))();
  }

  if (v173 == v172)
  {
    (*(*v173 + 32))(v173);
  }

  else if (v173)
  {
    (*(*v173 + 40))();
  }

  *(v33 + 5376) = 0;
  *(v33 + 5384) = 0;
  *(v33 + 5392) = 0;
  *(v33 + 5396) = 0;
  *(v33 + 5400) = 0;
  *(v33 + 5402) = 0;
  v91 = *(framebuffer + 892);
  *(v33 + 5404) = 12288;
  *(v33 + 5536) = 0;
  *(v33 + 5408) = vand_s8(vshr_n_u32(vadd_s32(v91, -1), 5uLL), 0x300000003);
  v92 = vmul_f32(vcvt_f32_u32(v91), 0x3F0000003F000000);
  *(v33 + 5540) = v92.i32[0];
  *(v33 + 5544) = v92;
  *(v33 + 5552) = -v92.f32[1];
  *(v33 + 5556) = 0x3F80000000000000;
  *(v33 + 5924) = 768;
  *(v33 + 5944) = 0x3F80000000000000;
  *(v33 + 5952) = 1024;
  *(v33 + 5964) = 0x48000800000;
  *(v33 + 5988) = 0xE0000000E000000;
  *(v33 + 5996) = 0;
  *(v33 + 5972) = xmmword_29D2F2550;
  *(v33 + 6000) = xmmword_29D2F2560;
  *(v33 + 6016) = 0xC28000000000000;
  *(v33 + 6024) = 0u;
  *(v33 + 6040) |= 0xE0000000E000000uLL;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ClipRectContextGen3(v33 + 6048, framebuffer[892], framebuffer[893], _descriptorPrivate, v33 + 5404);
  *(v33 + 7160) = 1;
  *(v33 + 7200) = 0u;
  *(v33 + 7216) = 0u;
  *(v33 + 7254) = 1;
  *(v33 + 7260) = 0;
  *(v33 + 7272) = 0;
  *(v33 + 7280) = 0;
  *(v33 + 7344) = 0;
  *(v33 + 7376) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v33 + 7384) = _D0;
  *(v33 + 7392) = 0;
  *(v33 + 7400) = 1;
  *(v33 + 7403) = 1;
  *(v33 + 7404) = -1;
  *(v33 + 7412) = 0;
  *(v33 + 7416) = 1;
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(v33 + 7440, *(*(v33 + 1872) + 848), *(*(*(v33 + 1872) + 848) + 7184));
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(v33 + 7544, *(*(v33 + 1872) + 848), *(*(*(v33 + 1872) + 848) + 7192));
  *(v33 + 7648) = 0;
  *(v33 + 7696) = 0;
  *(v33 + 7704) = -1;
  *(v33 + 7712) = 0u;
  *(v33 + 7728) = -1;
  *(v33 + 8452) = 1065353216;
  *(v33 + 8456) = 0x100000001;
  *(v33 + 8480) = v33 + 7720;
  *(v33 + 8808) = -1;
  *(v33 + 8816) = 0u;
  *(v33 + 8832) = -1;
  *(v33 + 9716) = -3229614080;
  *(v33 + 9724) = 1065353216;
  *(v33 + 9752) = v33 + 8824;
  *(v33 + 10472) = 0;
  *(v33 + 10480) = 0;
  *(v33 + 10536) = 0;
  *(v33 + 10545) = *(_descriptorPrivate + 184);
  *(v33 + 10548) = 1;
  AGX::RenderCounterSamplingContextGen1::RenderCounterSamplingContextGen1((v33 + 10560), _descriptorPrivate);
  v97 = *(*(*(v33 + 1872) + 848) + 6241);
  v98 = *(*(*(v33 + 1872) + 848) + 6242);
  *(v33 + 10740) = 0;
  *(v33 + 10752) = 0u;
  *(v33 + 10768) = 0u;
  *(v33 + 10784) = 0u;
  *(v33 + 10800) = 0u;
  *(v33 + 10816) = 0u;
  *(v33 + 10832) = 0u;
  *(v33 + 10848) = 0u;
  *(v33 + 10864) = 0u;
  *(v33 + 10880) = 0u;
  *(v33 + 10896) = 0u;
  *(v33 + 10912) = 0u;
  *(v33 + 10928) = 0u;
  *(v33 + 10944) = 0u;
  *(v33 + 10960) = 0u;
  *(v33 + 10976) = 0u;
  *(v33 + 10992) = 0u;
  *(v33 + 11008) = 0u;
  *(v33 + 11024) = 0u;
  *(v33 + 11040) = 0u;
  *(v33 + 11056) = 0u;
  *(v33 + 11072) = 0u;
  if (v97)
  {
    v99 = 68;
  }

  else
  {
    v99 = 4;
  }

  if (v98)
  {
    v100 = 128;
  }

  else
  {
    v100 = 0;
  }

  *(v33 + 10736) = v100 | v99;
  *(v33 + 11088) = 0xFFFFFFFF00000001;
  *(v33 + 11096) = 1610612736;
  *(v33 + 11104) = 0uLL;
  *(v33 + 11120) = 0uLL;
  *(v33 + 11136) = 0uLL;
  *&v101 = -1;
  *(&v101 + 1) = -1;
  *(v33 + 11152) = v101;
  *(v33 + 11168) = v101;
  *(v33 + 11184) = v101;
  *(v33 + 11200) = -1;
  *(v33 + 11208) = 0xFFFFFFFF00000001;
  *(v33 + 11216) = 1610612736;
  *(v33 + 11224) = 0uLL;
  *(v33 + 11240) = 0uLL;
  *(v33 + 11256) = 0uLL;
  *(v33 + 11272) = v101;
  *(v33 + 11288) = v101;
  *(v33 + 11304) = v101;
  *(v33 + 11320) = -1;
  *(v33 + 11360) = 0;
  *(v33 + 11344) = 0uLL;
  *(v33 + 11328) = 0uLL;
  *(v33 + 11361) = 0x7060504030201;
  *(v33 + 11369) = 67305985;
  *(v33 + 11373) = 1541;
  *(v33 + 11375) = 7;
  *(v33 + 11384) = 257;
  *(v33 + 11386) = 1;
  *(v33 + 11392) = v150;
  *(v33 + 11400) = privateDataOffset;
  *(v33 + 11408) = 0uLL;
  *(v33 + 11456) = xmmword_29D2F1F00;
  *(v33 + 11616) = 0;
  *(v33 + 11600) = 0uLL;
  *(v33 + 11472) = 0uLL;
  *(v33 + 11488) = 0uLL;
  *(v33 + 11504) = 0uLL;
  *(v33 + 11520) = 0uLL;
  *(v33 + 11536) = 0uLL;
  *(v33 + 11552) = 0uLL;
  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addAPIResources(*(v33 + 2392), *(v33 + 1896), *(v33 + 1904));
  v102 = *(v33 + 2392);
  *(v33 + 7176) = *(v102 + 5368);
  *(v33 + 6004) = *(v33 + 6004) & 0x199FFFFF | 0x200000;
  *(v33 + 6016) &= 0xFFFE0000;
  *(v33 + 6008) |= 0xC0000000C00000uLL;
  v103 = *(v33 + 10472);
  *(v33 + 6024) &= 0xFF1EFFFF;
  *(v33 + 10472) = v103 | 0x5F500000000004;
  *(v33 + 10480) = 5;
  *(v33 + 10584) = 0u;
  *(v33 + 10600) = 0u;
  *(v33 + 10616) = 0u;
  *(v33 + 10632) = 0u;
  *(v33 + 10648) = 0u;
  *(v33 + 10664) = 0u;
  *(v33 + 10680) = 0u;
  *(v33 + 10696) = 0u;
  *(v33 + 7254) = *(_descriptorPrivate + 192) == 0;
  *(v33 + 7256) = *(*(*(v33 + 1872) + 848) + 16950) > 0xAu;
  v104 = *(v33 + 8480);
  *(v104 + 664) = *(v33 + 8472);
  *(v104 + 672) = v104;
  v105 = *(v33 + 9752);
  *(v105 + 672) = *(v33 + 9744);
  *(v105 + 680) = v105;
  v106 = *(v102 + 3576);
  if (!v106)
  {
    goto LABEL_150;
  }

  v107 = v105 + 672;
  if (v106 >= 4)
  {
    v109 = 0;
    v110 = (v102 + 3584);
    v108 = v106 & 0xFFFFFFFC;
    v111 = vdupq_n_s32(0x3D800000u);
    do
    {
      v178 = vld2q_f32(v110);
      v110 += 8;
      v179.val[0] = vmulq_f32(vcvtq_f32_u32(v178.val[0]), v111);
      v179.val[1] = vmulq_f32(vcvtq_f32_u32(v178.val[1]), v111);
      v112 = (v107 + 4 * (v109 & 0xFFFFFFF8));
      vst2q_f32(v112, v179);
      v109 += 8;
    }

    while (((2 * v106) & 0x1FFFFFFF8) != v109);
    if (v108 == v106)
    {
      goto LABEL_150;
    }
  }

  else
  {
    v108 = 0;
  }

  v113 = v106 - v108;
  v114 = 2 * v108;
  v115 = (v102 + 8 * v108 + 3584);
  v116 = vdup_n_s32(0x3D800000u);
  do
  {
    v117 = *v115++;
    *(v107 + 4 * (v114 & 0xFFFFFFFE)) = vmul_f32(vcvt_f32_u32(v117), v116);
    v114 += 2;
    --v113;
  }

  while (v113);
LABEL_150:
  *(v33 + 10456) |= 0x40uLL;
  v118 = *(v33 + 9752);
  *(v118 + 736) = 0x80000000;
  *(v118 + 912) = *(v102 + 6144);
  v119 = *(v33 + 3600);
  v120 = *(v102 + 6280);
  *(v119 + 40) = *(v102 + 6296);
  *(v119 + 24) = v120;
  v121 = *(v33 + 9752);
  v122 = *(v102 + 6280);
  *(v121 + 40) = *(v102 + 6296);
  *(v121 + 24) = v122;
  v123 = *(v33 + 2392);
  *(*(v33 + 8480) + 744) = *(v123 + 6328) > 1u;
  v124 = 91;
  if (!*(_descriptorPrivate + 88))
  {
    v124 = 0;
  }

  *(v33 + 11456 + ((v124 >> 3) & 8)) |= 1 << (v124 & 0x3F);
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateResourceGroupUsage(v123, *(v33 + 2008), v122);
  if (*(_descriptorPrivate + 48) >= 2uLL)
  {
    *(v33 + 11464) |= 0x40000000uLL;
  }

  v125 = *(_descriptorPrivate + 168);
  if (v125)
  {
    if (*v34)
    {
      MTLResourceListAddResource();
    }

    *(v33 + 10536) = v125;
    *(v33 + 11464) |= 0x100000000uLL;
  }

  v126 = *(*(v33 + 1872) + 848);
  *(v33 + 10520) = v126 + 13360;
  *(v33 + 10528) = v126 + 14912;
  v127 = *(v33 + 2392);
  v128 = v127[1536];
  v129 = v127[1537];
  v130 = v127[1538];
  v131 = (v128 + 0xFFFF) >> 16;
  if (v129)
  {
    v132 = v129 + 64;
  }

  else
  {
    v132 = 0;
  }

  v133 = (v132 + 0xFFFF) >> 16;
  v134 = (v130 + 0xFFFF) >> 16;
  v135 = v131 + v134 + v133;
  v136 = ((v132 + 4095) >> 12) + ((v128 + 4095) >> 12) + ((v130 + 4095) >> 12);
  if (*(*(v33 + 7600) + 16999))
  {
    v137 = 11;
  }

  else
  {
    v137 = 6;
  }

  if (v137 >= 8)
  {
    v138 = 8;
  }

  else
  {
    v138 = v137;
  }

  *(v33 + 2400) = v138 * v135 + v137 * v136;
  *(v33 + 2404) = v135 + v136;
  *(v33 + 2408) = v135;
  *(v33 + 2412) = v131;
  *(v33 + 2416) = v133;
  *(v33 + 2420) = v134;
  *(*(v33 + 9752) + 908) = (v127[892] + v127[1233] - 1) / v127[1233];
  *(v33 + 1940) = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::beginRenderPass(v13->_impl);
  v139 = v13->_impl;
  if ((*(v139 + 2075) & 1) != 0 || (*(v139 + 2076) & 1) == 0 && (*(v139 + 2074) != 1 || *(v139 + 2072) == 1))
  {
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateDatabufferResources(v139[299], v139 + 3);
  }

  v140 = v13->_allocator;
  return v13;
}

- (uint64_t)initWithCommandBuffer:allocator:descriptor:options:enableStateLoaderProgramTracking:
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F9280;
  a2[1] = v2;
  return result;
}

- (void)initWithCommandBuffer:allocator:descriptor:options:enableStateLoaderProgramTracking:
{
  v3 = *a2;
  free(*(*a2 + 6384));
  v4 = *(v3 + 6304);
  if (v4)
  {
  }

  AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(v3);
  v5 = *(*(self + 8) + 176);
  v6 = v3;
  std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v5 + 128, &v6);
}

+ (BOOL)mergeRenderEncoders:(const void *)encoders count:(unint64_t)count options:(id)options commitFeedback:(id)feedback queue:(id)queue error:(id *)error
{
  *(queue + 28) = *(queue + 27);
  v10 = 0x2A179C000uLL;
  queueCopy = queue;
  if (count)
  {
    v11 = 0;
    LODWORD(v12) = 0;
    v13 = vdupq_n_s64(4uLL);
    v104 = v13;
    do
    {
      v15 = *(encoders[v11] + 16);
      if (v15)
      {
        v16 = *(v15 + 2392);
        v17 = v16[378];
        v18 = v16[379];
        v19 = v16[380];
        v20 = v16[381];
        v21 = v16[382];
        do
        {
          v12 = (v12 + 1);
          if (v12 >= count)
          {
            break;
          }

          v22 = *(encoders[v12] + 16);
          v23 = *(v22 + 2392);
          v17 = vbslq_s8(vceqq_s64(v23[378], v13), v17, v23[378]);
          v18 = vbslq_s8(vceqq_s64(v23[379], v13), v18, v23[379]);
          v19 = vbslq_s8(vceqq_s64(v23[380], v13), v19, v23[380]);
          v20 = vbslq_s8(vceqq_s64(v23[381], v13), v20, v23[381]);
          v21 = vbslq_s8(vceqq_s64(v23[382], v13), v21, v23[382]);
          if (*(v22 + 2077))
          {
            break;
          }
        }

        while ((*(v22 + 2078) & 1) != 0 || *(v22 + 2074) == 1 && (*(v22 + 2073) & 1) == 0);
        v24 = queue + 216;
        v25 = *(queue + 28);
        v26 = *(queue + 29);
        if (v25 < v26)
        {
          *v25 = v17;
          v25[1] = v18;
          v25[2] = v19;
          v25[3] = v20;
          i64 = v25[5].i64;
          v25[4] = v21;
        }

        else
        {
          v27 = *v24;
          v28 = 0xCCCCCCCCCCCCCCCDLL * ((v25->i64 - *v24) >> 4);
          v29 = v28 + 1;
          if (v28 + 1 > 0x333333333333333)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v30 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v27) >> 4);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0x199999999999999)
          {
            v31 = 0x333333333333333;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            if (v31 <= 0x333333333333333)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v32 = (16 * ((v25->i64 - *v24) >> 4));
          *v32 = v17;
          v32[1] = v18;
          v32[2] = v19;
          v32[3] = v20;
          v32[4] = v21;
          i64 = 80 * v28 + 80;
          v33 = 80 * v28 - (v25 - v27);
          memcpy(v32 - (v25 - v27), v27, v25 - v27);
          *v24 = v33;
          *(v24 + 1) = i64;
          *(v24 + 2) = 0;
          if (v27)
          {
            operator delete(v27);
          }

          queue = queueCopy;
          v10 = 0x2A179C000uLL;
          v13 = v104;
        }

        *(v24 + 1) = i64;
      }

      LODWORD(v12) = v12 + 1;
      v11 = v12;
    }

    while (v12 < count);
  }

  v34 = 0x2A179C000uLL;
  *(queue + 25) = *(queue + 24);
  v138[0] = 0;
  v138[1] = v138;
  v138[2] = 0x2020000000;
  v139 = 0;
  if (!count)
  {
    goto LABEL_162;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    v37 = encoders[v35];
    if (!*&v37[*(v10 + 1032)])
    {
      v101 = *(v34 + 1036);
      v143 = v37;
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](queue + v101, &v143);
      v10 = 0x2A179C000;
      goto LABEL_158;
    }

    v133[0] = MEMORY[0x29EDCA5F8];
    v133[1] = 3221225472;
    v134 = __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke;
    v135 = &__block_descriptor_48_e44__RenderMergeNode____RenderContextB_B_12__0I8l;
    countCopy = count;
    encodersCopy = encoders;
    v131[0] = 0;
    v131[1] = v131;
    v131[2] = 0x2020000000;
    v132 = 0;
    v123[0] = MEMORY[0x29EDCA5F8];
    v123[1] = 3221225472;
    v124 = __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke_2;
    v125 = &unk_29F342188;
    countCopy2 = count;
    encodersCopy2 = encoders;
    queueCopy2 = queue;
    v127 = v131;
    v128 = v138;
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    v110[0] = MEMORY[0x29EDCA5F8];
    v110[1] = 3221225472;
    v111 = __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke_3;
    v112 = &unk_29F3421B0;
    countCopy3 = count;
    encodersCopy3 = encoders;
    queueCopy3 = queue;
    v114 = &v119;
    v115 = v131;
    v116 = v138;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke(v133, v36, &v154);
LABEL_30:
    if (v156)
    {
      break;
    }

    v38 = v155;
    v152 = 0;
    v148 = 0;
    v143 = v155;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v153 = IOGPUMetalResidencySetListCreate();
    if (!(v124)(v123, v36))
    {
      break;
    }

    v140 = 0;
    v141 = 0;
    v142 = 0;
    (v134)(&v140, v133, v36);
    if (v142)
    {
      break;
    }

    v39 = 0;
    v108 = (v38 + 7440);
    while (1)
    {
      v109 = v36 + v39;
      v40 = v141;
      v41 = v143;
      if (v143 == v141 || *(v141 + 10548) <= 1u && IOGPUResourceListMergeLists() && (IOGPUMetalCommandBufferStorageMergeResidencySetList() & 1) != 0)
      {
        v42 = 1;
        if (v40[2077])
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      if (v39)
      {
        break;
      }

      v42 = 0;
      *&v144 = v41;
      v109 = v36;
      if (v40[2077])
      {
        goto LABEL_48;
      }

LABEL_42:
      if ((v40[2078] & 1) == 0 && (v40[2074] != 1 || v40[2073] == 1))
      {
LABEL_48:
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitSWEndOfTileIfNeeded(v40);
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::appendSubEncoderToChain(v40, &v143);
        v43 = 1;
        goto LABEL_51;
      }

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::appendSubEncoderToChain(v40, &v143);
      if (!v42)
      {
        v43 = 0;
        goto LABEL_51;
      }

      v140 = 0;
      v141 = 0;
      v142 = 0;
      (v134)(&v140, v133, (v36 + v39++ + 1));
      if (v142)
      {
        goto LABEL_161;
      }
    }

    v43 = 0;
    --v109;
LABEL_51:
    if (v109 > v36)
    {
      IOGPUMetalCommandBufferStorageFinalizeResidencySetList();
    }

    IOGPUMetalResidencySetListDestroy();
    v107 = v43;
    v44 = *(v38 + 10544);
    v105 = *(v38 + 2392);
    if (v109 > v36)
    {
      v46 = *v108;
      v45 = *(v38 + 7456);
      v47 = v145;
      *(v38 + 7440) = vmaxq_s32(*v108, v145);
      v48 = v146;
      *(v38 + 7456) = vmaxq_s32(v45, v146);
      v49 = *(v38 + 7472);
      v50 = v147;
      *(v38 + 7472) = vmaxq_s32(v49, v147);
      v51 = v148;
      v52 = *(v38 + 7488);
      if (v52 <= v148)
      {
        v53 = v148;
      }

      else
      {
        v53 = *(v38 + 7488);
      }

      *(v38 + 7488) = v53;
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v47, v46), vcgtq_s32(v48, v45)))) & 1) != 0 || ((vaddvq_s32(vandq_s8(vcgtq_s32(v50, v49), xmmword_29D2F1960)) & 0xF) == 0 ? (v54 = v52 < v51) : (v54 = 1), v54))
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v108, *(v38 + 7664) + 320, 1);
      }

      v55 = *(v38 + 7544);
      v56 = v149;
      v57 = v150;
      v59 = *(v38 + 7560);
      v58 = *(v38 + 7576);
      v60 = vmaxq_s32(v59, v150);
      *(v38 + 7544) = vmaxq_s32(v55, v149);
      *(v38 + 7560) = v60;
      v61 = v151;
      *(v38 + 7576) = vmaxq_s32(v58, v151);
      v62 = v152;
      v63 = *(v38 + 7592);
      if (v63 <= v152)
      {
        v64 = v152;
      }

      else
      {
        v64 = *(v38 + 7592);
      }

      *(v38 + 7592) = v64;
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v56, v55), vcgtq_s32(v57, v59)))) & 1) != 0 || (vaddvq_s32(vandq_s8(vcgtq_s32(v61, v58), xmmword_29D2F1960)) & 0xF) != 0 || v63 < v62)
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v38 + 7544, *(v38 + 7664) + 1360, 0);
      }

      v65 = (v36 + 1);
      do
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        (v134)(&v140, v133, v65);
        v66 = v141;
        v67 = *(v141 + 10488);
        if (v67)
        {
          v68 = *(v38 + 10488);
          if (!v68)
          {
            operator new();
          }

          AGX::FenceList::merge(v68, v67);
        }

        v69 = v66[1313];
        if (v69)
        {
          v70 = *(v38 + 10504);
          if (!v70)
          {
            operator new();
          }

          AGX::FenceList::merge(v70, v69);
        }

        v71 = v66[1312];
        if (v71)
        {
          v72 = *(v38 + 10496);
          if (!v72)
          {
            operator new();
          }

          AGX::FenceList::merge(v72, v71);
        }

        v73 = v66[1314];
        if (v73)
        {
          v74 = *(v38 + 10512);
          if (!v74)
          {
            operator new();
          }

          AGX::FenceList::merge(v74, v73);
        }

        v75 = v66[1434];
        v76 = v66[1435];
        while (v75 != v76)
        {
          v77 = *(v38 + 11496);
          v78 = *(v38 + 11504);
          if (v77 != v78)
          {
            while (*v77 != *v75 || *(v77 + 8) != *(v75 + 8))
            {
              v77 += 16;
              if (v77 == v78)
              {
                goto LABEL_90;
              }
            }
          }

          if (v77 == v78)
          {
LABEL_90:
            std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](v38 + 11496, v75);
          }

          v75 += 16;
        }

        v80 = v66[1437];
        v81 = v66[1438];
        while (v80 != v81)
        {
          v82 = *(v38 + 11496);
          v83 = *(v38 + 11504);
          if (v82 != v83)
          {
            while (*v82 != *v80 || *(v82 + 8) != *(v80 + 8))
            {
              v82 += 16;
              if (v82 == v83)
              {
                goto LABEL_103;
              }
            }
          }

          if (v82 == v83)
          {
LABEL_103:
            std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](v38 + 11496, v80);
          }

          v80 += 16;
        }

        v85 = v66[1440];
        v86 = v66[1441];
        while (v85 != v86)
        {
          v87 = *(v38 + 11544);
          v88 = *(v38 + 11552);
          if (v87 != v88)
          {
            while (*v87 != *v85 || *(v87 + 8) != *(v85 + 8))
            {
              v87 += 16;
              if (v87 == v88)
              {
                goto LABEL_116;
              }
            }
          }

          if (v87 == v88)
          {
LABEL_116:
            std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](v38 + 11544, v85);
          }

          v85 += 16;
        }

        v90 = v66[1443];
        v91 = v66[1444];
        while (v90 != v91)
        {
          v92 = *(v38 + 11544);
          v93 = *(v38 + 11552);
          if (v92 != v93)
          {
            while (*v92 != *v90 || *(v92 + 8) != *(v90 + 8))
            {
              v92 += 16;
              if (v92 == v93)
              {
                goto LABEL_129;
              }
            }
          }

          if (v92 == v93)
          {
LABEL_129:
            std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](v38 + 11544, v90);
          }

          v90 += 16;
        }

        v44 |= *(v141 + 10544);
        v65 = (v65 + 1);
      }

      while (v65 <= v109);
    }

    if (v44)
    {
      v95 = 0;
      v96 = v105;
    }

    else
    {
      v96 = v105;
      v95 = *(v105 + 4959);
    }

    if ((*(v96 + 5000) & 0xFFFFFFFFFF80) != 0)
    {
      *(v96 + 4976) = *(v96 + 4976) & 0xFFFFFFFFFFFFFFFELL | v95;
    }

    v97 = v144;
    v98 = *(v144 + 72);
    *(v144 + 72) = v98 + 1;
    *v98 = *(v97 + 5172);
    *(v38 + 2077) = 1;
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::endRenderPassCommon(v38, 0, 0, 0);
    if (*(v38 + 2077) == 1)
    {
LABEL_147:
      if (*(*(v38 + 2392) + 4956))
      {
        goto LABEL_148;
      }
    }

    else if ((*(v38 + 2078) & 1) == 0)
    {
      if (*(v38 + 2074) != 1)
      {
        goto LABEL_147;
      }

      if ((*(v38 + 2073) & 1) != 0 && *(*(v38 + 2392) + 4956) == 1)
      {
LABEL_148:
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeDepthCopy(v38);
      }
    }

    v99 = *(v38 + 11464);
    v100 = (*(v38 + 1872) + 856);
    atomic_fetch_or(v100, *(v38 + 11456));
    atomic_fetch_or(v100 + 1, v99);
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *v38 = 0;
    *(v38 + 1896) = 0u;
    if (!(v111)(v110, v109, v107))
    {
      break;
    }

    if ((v107 & 1) == 0)
    {
      v36 = v109 + 1;
      v154 = 0;
      v155 = 0;
      v156 = 0;
      (v134)(&v154, v133, v36);
      goto LABEL_30;
    }

    LODWORD(v36) = *(v120 + 6);
    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(v131, 8);
    v10 = 0x2A179C000;
    v34 = 0x2A179C000;
LABEL_158:
    v35 = (v36 + 1);
    v36 = v35;
    queue = queueCopy;
    if (v35 >= count)
    {
LABEL_162:
      v102 = [queue noMergeCommit:? count:? options:? commitFeedback:? error:?];
      goto LABEL_163;
    }
  }

LABEL_161:
  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(v131, 8);
  v102 = 0;
LABEL_163:
  _Block_object_dispose(v138, 8);
  return v102;
}

@end