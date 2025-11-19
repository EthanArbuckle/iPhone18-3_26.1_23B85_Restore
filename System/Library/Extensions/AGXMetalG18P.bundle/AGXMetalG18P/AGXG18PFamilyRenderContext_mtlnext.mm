@interface AGXG18PFamilyRenderContext_mtlnext
+ (BOOL)mergeRenderEncoders:(const void *)a3 count:(unint64_t)a4 options:(id)a5 commitFeedback:(id)a6 queue:(id)a7 error:(id *)a8;
- (AGXG18PFamilyRenderContext_mtlnext)initWithCommandBuffer:(id)a3 allocator:(id)a4 descriptor:(id)a5 options:(unint64_t)a6 enableStateLoaderProgramTracking:(BOOL)a7;
- (id).cxx_construct;
- (uint64_t)initWithCommandBuffer:allocator:descriptor:options:enableStateLoaderProgramTracking:;
- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 options:(unint64_t)a5;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 options:(unint64_t)a5;
- (void)dealloc;
- (void)destroyImpl;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)initWithCommandBuffer:allocator:descriptor:options:enableStateLoaderProgramTracking:;
- (void)setArgumentTable:(id)a3 atStages:(unint64_t)a4;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorAttachmentMap:(id)a3;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setLineWidth:(float)a3;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4;
- (void)setStencilReferenceValue:(unsigned int)a3;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4;
- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4;
- (void)writeTimestampWithGranularity:(int64_t)a3 afterStage:(unint64_t)a4 intoHeap:(id)a5 atIndex:(unint64_t)a6;
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

- (void)setColorAttachmentMap:(id)a3
{
  impl = self->_impl;
  if (a3)
  {
    impl[11368] = [a3 getPhysicalIndexForLogicalIndex:0];
    impl[11369] = [a3 getPhysicalIndexForLogicalIndex:1];
    impl[11370] = [a3 getPhysicalIndexForLogicalIndex:2];
    impl[11371] = [a3 getPhysicalIndexForLogicalIndex:3];
    impl[11372] = [a3 getPhysicalIndexForLogicalIndex:4];
    impl[11373] = [a3 getPhysicalIndexForLogicalIndex:5];
    impl[11374] = [a3 getPhysicalIndexForLogicalIndex:6];
    v5 = [a3 getPhysicalIndexForLogicalIndex:7];
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

- (void)writeTimestampWithGranularity:(int64_t)a3 afterStage:(unint64_t)a4 intoHeap:(id)a5 atIndex:(unint64_t)a6
{
  if (!HIDWORD(a6))
  {
    v6 = a6;
    v8 = a4;
    if ([a5 count] >= a6)
    {
      v10 = v8 & 0x19;
      v11 = v8 & 6;
      impl = self->_impl;
      if (impl[5401])
      {
        if (v10)
        {
          *&v14 = a5;
          DWORD2(v14) = v6;
          std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100]((impl + 11496), &v14);
        }

        if (v11)
        {
          v13 = 11544;
LABEL_12:
          *&v14 = a5;
          DWORD2(v14) = v6;
          std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](&impl[v13], &v14);
        }
      }

      else
      {
        if (v10)
        {
          *&v14 = a5;
          DWORD2(v14) = v6;
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

- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    impl = self->_impl;
    v7 = MEMORY[0x29EDC5610];
    do
    {
      v9 = __clz(__rbit64(v4));
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

          AGX::FenceList::insertFence(v8, *(a3 + *v7));
        }
      }

      v4 &= ~(1 << v9);
    }

    while (v4);
  }
}

- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    impl = self->_impl;
    v7 = MEMORY[0x29EDC5610];
    do
    {
      v9 = __clz(__rbit64(v4));
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

          AGX::FenceList::insertFence(v8, *(a3 + *v7));
        }
      }

      v4 &= ~(1 << v9);
    }

    while (v4);
  }
}

- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 options:(unint64_t)a5
{
  impl = self->_impl;
  {
    v16 = a5;
    v21 = a3;
    v23 = a4;
    LOBYTE(a3) = v21;
    LOBYTE(a4) = v23;
    LOBYTE(a5) = v16;
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
      LOBYTE(a5) = v16;
      LOBYTE(a3) = v21;
      LOBYTE(a4) = v23;
    }
  }

  {
    v22 = a5;
    v24 = a4;
    v19 = a3;
    LOBYTE(a5) = v22;
    LOBYTE(a4) = v24;
    LOBYTE(a3) = v19;
    if (v20)
    {
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh = 1;
      LOBYTE(a5) = v22;
      LOBYTE(a4) = v24;
      LOBYTE(a3) = v19;
    }
  }

  if (a4)
  {
    v6 = 1;
    v7 = a4 & 6;
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = ((a4 & 0x18) != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh;
    v7 = a4 & 6;
    if (a3)
    {
LABEL_5:
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = ((a3 & 0x18) != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::hw_mesh;
LABEL_8:
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = a3 & 6;
  v11 = v8 ^ 1;
  if ((a3 & 6) != 0)
  {
    v11 = 0;
  }

  if (v11 & 1) == 0 && (v9)
  {
    v12 = (v10 != 0) & AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::memoryBarrier(unsigned long,unsigned long,eAGXBarrierVisibility)::supports_after_fragment;
    if ((a5 & 2) != 0)
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
      if ((a3 & 6) != 0)
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

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 options:(unint64_t)a5
{
  impl = self->_impl;
  if (AGX::BarrierTracker::addBackFacingBarrier((impl + 507), a3, a4, a5))
  {
    AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier((impl + 6), 0);
    ++impl[2638];
    v6 = *(impl + 9);
    *v6 = 553648510;
    *(impl + 9) = v6 + 1;
  }
}

- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4
{
  impl = self->_impl;
  v6 = a4;
  if (a3 == 1)
  {
    v7 = impl[1060];
    *(v7 + 740) = a4;
    v4.i32[0] = a4;
    v8 = vcnt_s8(v4);
    v8.i16[0] = vaddlv_u8(v8);
    *(v7 + 736) = v8.i32[0];
    v6 = v8.i32[0];
  }

  else
  {
    v9 = impl[1060];
    *(v9 + 736) = a4;
    *(v9 + 740) = ~(-1 << a4);
  }

  *(impl + 1854) = v6;
  v10 = impl[1309];
  impl[1309] = v10 | 0x40;
  impl[1271] |= 0x80uLL;
  v11 = impl[959];
  if (v11)
  {
    v12 = *(v11 + 4112);
    *(impl + 1506) = impl[753] & 0xF0E3FF00 | v12 & 0xF1C00FF;
    *(impl + 1508) = impl[754] & 0xFFFFFFF8 | (v6 - 1) & 7;
    *(impl + 1509) = HIDWORD(v12);
    *(impl + 1507) = 0;
    impl[1309] = v10 | 0x44;
  }

  v13 = impl[662];
  if (v13)
  {
    v14 = v13[1];
    v15 = 8 * v6;
    v16 = v15 + 15;
    v17 = (v15 + 15) | 0xF;
    v18 = v14[21] + v17;
    if (v18 > v14[20])
    {
      v31 = AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 3, 3, 0);
      v15 = 8 * v6;
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
        *(v13[131] + 948) = v6;
        *(v26 + 668) = v6;
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

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5
{
  impl = self->_impl;
  impl[486] = impl[485];
  v7 = *&a3->var0;
  var2 = a3->var2;
  v8 = *&a4->var0.var2;
  v9[0] = *&a4->var0.var0;
  v9[1] = v8;
  v9[2] = *&a4->var1.var1;
  v10 = v7;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWarpedThreads(impl, &v10, v9, a5 | 0x100000000);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  impl = self->_impl;
  impl[486] = impl[485];
  v6 = *&a3->var0;
  var2 = a3->var2;
  v7 = *&a4->var0.var2;
  v8[0] = *&a4->var0.var0;
  v8[1] = v7;
  v8[2] = *&a4->var1.var1;
  v9 = v6;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWarpedThreads(impl, &v9, v8, 0);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)setLineWidth:(float)a3
{
  impl = self->_impl;
  if (impl[1846] != a3)
  {
    impl[1846] = a3;
    *(impl + 1309) |= 0x100000000000uLL;
  }
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  impl = self->_impl;
  v5 = 0.0;
  if (a3 >= 0.0)
  {
    v5 = a3;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  if (v5 > a4)
  {
    v5 = a4;
  }

  if (v5 != *(impl + 1486) || a4 != *(impl + 1487))
  {
    *(impl + 1486) = v5;
    *(impl + 1487) = a4;
    v6 = v5 != 0.0;
    if (a4 != 1.0)
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

- (void)dispatchThreadsPerTile:(id *)a3
{
  impl = self->_impl;
  impl[486] = impl[485];
  v8 = *a3;
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

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  impl = self->_impl;
  v8 = impl[662];
  if (v8)
  {
    var0 = a4->var0;
    var1 = a4->var1;
    var2 = a4->var2;
    v12 = a5->var0;
    v13 = a5->var1;
    v14 = a5->var2;
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
        *(v21 + 72) = a3;
        v8[136] = 0;
        v23[0] = var0;
        v23[1] = var1;
        v23[2] = var2;
        v22[0] = v12;
        v22[1] = v13;
        v22[2] = v14;
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBufferCommon(v8, a3, v23, v22);
      }
    }
  }
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  impl = self->_impl;
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
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

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  impl = self->_impl;
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
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

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4
{
  impl = self->_impl;
  impl[486] = impl[485];
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeCommandsInBufferCommon(impl);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  impl = self->_impl;
  v6 = impl[485];
  impl[486] = v6;
  if (LODWORD(a4.length))
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeCommandsInBufferCommon(impl);
    impl = self->_impl;
    v6 = impl[485];
  }

  impl[487] = v6;
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7
{
  v8 = a6;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 144) = vaddq_s64(vdupq_n_s64(a7), xmmword_29D2F2530);
    *(impl + 537) = 0u;
  }

  if ((*(impl + 7401) & 1) == 0)
  {
    *(impl + 7401) = 1;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), impl + 10088, 0);
  if (*(*(impl + 299) + 4907) == 1)
  {
    v14 = 0x114u >> a3;
    if (a3 >= 9)
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

  if (a4 == 1)
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
  v18 = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDrawIndirect[a3];
  if (v14)
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  *(impl + 9) = v17 + 32;
  *(v17 + 8) = BYTE4(a5) | (v18 + (a4 << 17)) & 0xFFEEFF00 | v19 | 0x100000;
  *(v17 + 12) = a5;
  *(v17 + 16) = WORD2(a7);
  *(v17 + 20) = a7 & 0xFFFFFFFC;
  *(v17 + 24) = v8 - 1;
  *(v17 + 28) = BYTE5(a5);
  ++*(impl + 485);
  *(impl + 1960) = 0;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4
{
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    v8 = *(impl + 1060);
    *(v8 + 152) = a4 + 12;
    *(impl + 1075) = 0;
    if (impl[7256] == 1)
    {
      v9 = 0;
      *(v8 + 144) = a4 + 8;
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

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  *(impl + 1433) |= 0x80uLL;
  v13 = a4 & 0xFFFF00000000 | AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDrawIndirect[a3];
  v14 = *(impl + 9);
  *(impl + 9) = v14 + 12;
  *v14 = v13;
  *(v14 + 8) = a4 & 0xFFFFFFFC;
  ++*(impl + 485);
  impl[1960] = 0;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v10 = a8;
  v13 = a4;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 160) = a10;
    v17 = *(impl + 21);
    v18 = v17 + 2;
    if ((v17 + 2) > *(impl + 20))
    {
      v28 = a7;
      v29 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v17 = *(impl + 21);
      if (!v29)
      {
        LODWORD(a7) = v28;
        goto LABEL_4;
      }

      v18 = v17 + 2;
      LODWORD(a7) = v28;
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
    *v17 = a9;
    v17[1] = a10;
    v21 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    *(impl + 1075) = v21;
    *(impl + 1074) = v21;
  }

  v22 = (a7 + 3) >> 2;
  if ((impl[7401] & 1) == 0)
  {
    impl[7401] = 1;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  if (*(*(impl + 299) + 4907) == 1)
  {
    v23 = 0x114u >> a3;
    if (a3 >= 9)
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

  if (a5 == 1)
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

  *(v26 + 8) = BYTE4(a6) | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a3] + (a5 << 17)) & 0xFFEEFF00 | v27 | 0x100000;
  *(v26 + 12) = a6;
  *(v26 + 16) = v13;
  *(v26 + 20) = v10;
  *(v26 + 24) = a9;
  *(v26 + 28) = v22 - 1;
  *(v26 + 32) = BYTE5(a6);
  *(impl + 9) = v26 + 36;
  ++*(impl + 485);
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v13 >>= 1;
      }

      else if (a3 == 2)
      {
        --v13;
      }

      goto LABEL_36;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v13 >>= 2;
      goto LABEL_36;
    }

LABEL_30:
    v13 -= 2;
    goto LABEL_36;
  }

  if (a3 == 8)
  {
    v13 = ((v13 - 4) >> 1) + 1;
    goto LABEL_36;
  }

  if (a3 == 9)
  {
LABEL_33:
    v13 /= 3u;
  }

LABEL_36:
  *(impl + 489) += v13 * v10;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  v8 = a8;
  v11 = a4;
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
      v26 = a7;
      v27 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v15 = *(impl + 21);
      if (!v27)
      {
        LODWORD(a7) = v26;
        goto LABEL_4;
      }

      v16 = v15 + 1;
      LODWORD(a7) = v26;
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

  v20 = (a7 + 3) >> 2;
  if ((impl[7401] & 1) == 0)
  {
    impl[7401] = 1;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  if (*(*(impl + 299) + 4907) == 1)
  {
    v21 = 0x114u >> a3;
    if (a3 >= 9)
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

  if (a5 == 1)
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

  *(v24 + 8) = BYTE4(a6) | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a3] + (a5 << 17)) & 0xFFEEFF00 | v25 | 0x100000;
  *(v24 + 12) = a6;
  *(v24 + 16) = v11;
  *(v24 + 20) = v8;
  *(v24 + 24) = 0;
  *(v24 + 28) = v20 - 1;
  *(v24 + 32) = BYTE5(a6);
  *(impl + 9) = v24 + 36;
  ++*(impl + 485);
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v11 >>= 1;
      }

      else if (a3 == 2)
      {
        --v11;
      }

      goto LABEL_36;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v11 >>= 2;
      goto LABEL_36;
    }

LABEL_30:
    v11 -= 2;
    goto LABEL_36;
  }

  if (a3 == 8)
  {
    v11 = ((v11 - 4) >> 1) + 1;
    goto LABEL_36;
  }

  if (a3 == 9)
  {
LABEL_33:
    v11 /= 3u;
  }

LABEL_36:
  *(impl + 489) += v11 * v8;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7
{
  v9 = a4;
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
      v24 = a7;
      v25 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v13 = *(impl + 21);
      if (!v25)
      {
        LODWORD(a7) = v24;
        goto LABEL_4;
      }

      v14 = v13 + 1;
      LODWORD(a7) = v24;
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

  v18 = (a7 + 3) >> 2;
  if ((impl[7401] & 1) == 0)
  {
    impl[7401] = 1;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  if (*(*(impl + 299) + 4907) == 1)
  {
    v19 = 0x114u >> a3;
    if (a3 >= 9)
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

  if (a5 == 1)
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

  *(v22 + 8) = BYTE4(a6) | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a3] + (a5 << 17)) & 0xFFEEFF00 | v23 | 0x100000;
  *(v22 + 12) = a6;
  *(v22 + 16) = v9;
  *(v22 + 20) = 1;
  *(v22 + 28) = v18 - 1;
  *(v22 + 32) = BYTE5(a6);
  *(impl + 9) = v22 + 36;
  ++*(impl + 485);
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v9 >>= 1;
      }

      else if (a3 == 2)
      {
        --v9;
      }

      goto LABEL_36;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v9 >>= 2;
      goto LABEL_36;
    }

LABEL_30:
    v9 -= 2;
    goto LABEL_36;
  }

  if (a3 == 8)
  {
    v9 = ((v9 - 4) >> 1) + 1;
    goto LABEL_36;
  }

  if (a3 == 9)
  {
LABEL_33:
    v9 /= 3u;
  }

LABEL_36:
  *(impl + 489) += v9;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (impl[7256])
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  if (((*(*(impl + 959) + 2480) | *(*(impl + 959) + 2432)) & 0x700000000000) != 0)
  {
    *(impl + 1261) |= 0x700000000000uLL;
    *(impl + 1309) |= 0x40uLL;
    *(*(impl + 1060) + 160) = a7;
    v14 = *(impl + 21);
    v15 = v14 + 2;
    if ((v14 + 2) > *(impl + 20))
    {
      v21 = a7;
      v22 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v14 = *(impl + 21);
      if (!v22)
      {
        LODWORD(a7) = v21;
        goto LABEL_7;
      }

      v15 = v14 + 2;
      LODWORD(a7) = v21;
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
    *v14 = v13;
    v14[1] = a7;
    v18 = *(*(impl + 6) + 224) + *MEMORY[0x29EDC5638];
    *(impl + 1075) = v18;
    *(impl + 1074) = v18;
  }

  if (impl[7401] == 1)
  {
    impl[7401] = 0;
    *(impl + 1309) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  LODWORD(v19) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[a3] & 0xFFFEFFFF;
  DWORD1(v19) = v8;
  *(&v19 + 1) = __PAIR64__(v9, v7);
  v20 = *(impl + 9);
  *v20 = v19;
  *(impl + 9) = v20 + 1;
  ++*(impl + 485);
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v8 >>= 1;
      }

      else if (a3 == 2)
      {
        --v8;
      }

      goto LABEL_26;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v8 >>= 2;
      goto LABEL_26;
    }

LABEL_20:
    v8 -= 2;
    goto LABEL_26;
  }

  if (a3 == 8)
  {
    v8 = ((v8 - 4) >> 1) + 1;
    goto LABEL_26;
  }

  if (a3 == 9)
  {
LABEL_23:
    v8 /= 3u;
  }

LABEL_26:
  *(impl + 489) += v8 * v7;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (impl[7256])
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
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
    *v13 = v12;
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

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  LODWORD(v18) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[a3] & 0xFFFEFFFF;
  DWORD1(v18) = v7;
  *(&v18 + 1) = __PAIR64__(v8, v6);
  v19 = *(impl + 9);
  *v19 = v18;
  *(impl + 9) = v19 + 1;
  ++*(impl + 485);
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v7 >>= 1;
      }

      else if (a3 == 2)
      {
        --v7;
      }

      goto LABEL_26;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v7 >>= 2;
      goto LABEL_26;
    }

LABEL_20:
    v7 -= 2;
    goto LABEL_26;
  }

  if (a3 == 8)
  {
    v7 = ((v7 - 4) >> 1) + 1;
    goto LABEL_26;
  }

  if (a3 == 9)
  {
LABEL_23:
    v7 /= 3u;
  }

LABEL_26:
  *(impl + 489) += v7 * v6;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  if (impl[7256])
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
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
    *v11 = v10;
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

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(impl, *(impl + 959), *(impl + 960), *(impl + 1059), *(impl + 1218), (impl + 10088), 0);
  DWORD2(v16) = 1;
  LODWORD(v16) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[a3] & 0xFFFEFFFF;
  DWORD1(v16) = v5;
  HIDWORD(v16) = v6;
  v17 = *(impl + 9);
  *v17 = v16;
  *(impl + 9) = v17 + 1;
  ++*(impl + 485);
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v5 >>= 1;
      }

      else if (a3 == 2)
      {
        --v5;
      }

      goto LABEL_26;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v5 >>= 2;
      goto LABEL_26;
    }

LABEL_20:
    v5 -= 2;
    goto LABEL_26;
  }

  if (a3 == 8)
  {
    v5 = ((v5 - 4) >> 1) + 1;
    goto LABEL_26;
  }

  if (a3 == 9)
  {
LABEL_23:
    v5 /= 3u;
  }

LABEL_26:
  *(impl + 489) += v5;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  impl = self->_impl;
  v4 = impl[299];
  if ((*(v4 + 5909) & 2) != 0)
  {
    *(v4 + 6120) = a3;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        *(v4 + 5904) |= 0x200u;
        *(v4 + 5896) &= 0xFFFFFDFFFFFFFDFFLL;
        goto LABEL_12;
      }

      if (a3 != 3)
      {
        goto LABEL_14;
      }

      v5 = *(v4 + 5904) | 0x200;
    }

    else
    {
      if (!a3)
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

      if (a3 != 1)
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
  if (a3 != 1)
  {
    v9 = 0;
  }

  *(impl + (v9 >> 3) + 11456) |= 1 << (v9 & 4);
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  impl = self->_impl;
  v4 = impl[299];
  if (*(v4 + 5909))
  {
    *(v4 + 6112) = a3;
    if (a3 <= 1)
    {
      if (!a3)
      {
        *(v4 + 5904) &= ~0x100u;
        LODWORD(v9) = *(v4 + 5896) & 0xFFFFFEFF;
        HIDWORD(v9) = (*(v4 + 5896) | 0x10000000100uLL) >> 32;
        *(v4 + 5896) = v9;
        v7 = *(v4 + 5372) | 2;
        goto LABEL_14;
      }

      if (a3 != 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a3 == 2)
      {
        *(v4 + 5904) |= 0x100u;
        *(v4 + 5896) &= 0xFFFFFEFFFFFFFEFFLL;
LABEL_13:
        v7 = *(v4 + 5372) & 0xFFFD;
LABEL_14:
        *(v4 + 5372) = v7;
        goto LABEL_15;
      }

      if (a3 == 3)
      {
        v5 = *(v4 + 5904) | 0x100;
        goto LABEL_12;
      }

      if (a3 != 5)
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
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v8 = 0;
  }

  *(impl + (v8 >> 3) + 11456) |= 1 << (v8 & 3);
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  impl = self->_impl;
  *(impl + 3626) = a4 >> 3;
  *(impl + 1494) = ((a3 != 0) << 15) | ((a3 == 1) << 14) | *(impl + 1494) & 0xFFFF3FFF;
  *(impl + 1499) = *(impl + 1499) & 0x1FFFF | ((a4 >> 3) << 17);
  *(impl + 1309) |= 0x100000000000uLL;
  if (a3 && (impl[7254] & 1) != 0)
  {
    *(impl + 1433) |= 0x10000uLL;
    v6 = *(impl + 57);
    if ((v6 + 1) > *(impl + 56))
    {
      v9 = a3;
      v10 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 12, 0);
      a3 = v9;
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
        a3 = v9;
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

  v8 = impl[7255] | (a3 != 0);
  impl[7255] = v8;
  if ((v8 & 1) != 0 && (impl[10480] & 2) != 0)
  {
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(impl + 299), v4, *(impl + 239), *(impl + 251), 64);
    *(impl + 2620) &= ~2u;
  }
}

- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4
{
  impl = self->_impl;
  v5 = vmin_u32(__PAIR64__(a4, a3), 0xFF000000FFLL);
  *(impl + 902) = v5;
  *(impl + 5980) = vorr_s8((*(impl + 5980) & 0xFFFFFF00FFFFFF00), v5);
  *(impl + 1309) |= 0x100000000000uLL;
}

- (void)setStencilReferenceValue:(unsigned int)a3
{
  impl = self->_impl;
  if (a3 >= 0xFF)
  {
    v4 = 255;
  }

  else
  {
    v4 = a3;
  }

  *(impl + 1804) = v4;
  *(impl + 1805) = v4;
  *(impl + 5980) = vorr_s8((*(impl + 5980) & 0xFFFFFF00FFFFFF00), vdup_n_s32(v4));
  *(impl + 1309) |= 0x100000000000uLL;
}

- (void)setDepthStencilState:(id)a3
{
  impl = self->_impl;
  v16[0] = 0xFFFFFF1C00E007;
  v18 = 0;
  v16[1] = 0;
  v17 = 0uLL;
  v20 = -1;
  if (a3)
  {
    v4 = (a3 + 24);
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

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  impl = self->_impl;
  v7 = impl[1219];
  v7[219] = a3;
  v7[220] = a4;
  v7[221] = a5;
  v7[222] = a6;
  impl[1309] |= 0x1000000000uLL;
  impl[1307] |= 1uLL;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindStatelessPsoMetadataArgumentBuffer(impl, 0, impl[961] != 0);
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  impl = self->_impl;
  *(impl + 901) = a3;
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
    *(impl + 1492) = *(impl + 1800) & 3 | ((a3 & 1) << 16) | *(impl + 1492) & 0xFFFEFFFC;
    *(impl + 1309) = v6 | 0x2100000000000;
  }
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  impl = self->_impl;
  if (*(impl + 922) != a3)
  {
    *(impl + 1309) |= 0x100000000000uLL;
  }

  *(impl + 922) = a3;
  *(impl + 5980) = vorr_s8((*(impl + 5980) & 0xFFF3FFFFFFF3FFFFLL), vdup_n_s32((a3 & 3) << 18));
  v4 = 82;
  if (a3 != 1)
  {
    v4 = 0;
  }

  *&impl[((v4 >> 3) & 8) + 11456] |= 1 << (v4 & 0x3E);
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissors((impl + 756), a3, a4);
  impl[1309] |= 0x200000000000uLL;
}

- (void)setScissorRect:(id *)a3
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissors((impl + 756), a3, 1u);
  impl[1309] |= 0x200000000000uLL;
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  impl = self->_impl;
  if (impl[1796] != a3 || impl[1797] != a4 || impl[1798] != a5)
  {
    impl[1796] = a3;
    impl[1797] = a4;
    impl[1798] = a5;
    v6 = *(impl + 1309);
    if (a3 == 0.0 && a4 == 0.0)
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

- (void)setDepthClipMode:(unint64_t)a3
{
  impl = self->_impl;
  impl[924] = a3;
  v4 = impl[746] & 0xFFFFF3FF | ((((1024 << a3) >> 10) & 3) << 10);
  v5 = a3 == 1;
  v6 = *(impl + 6852);
  *(impl + 6852) = v5;
  *(impl + 1492) = v4;
  v7 = impl[1309];
  if (v6 != v5)
  {
    v7 |= 0xC0200000000000uLL;
  }

  impl[1309] = v7 | 0x2000000000000;
  impl[(a3 == 1) + 1432] |= 1uLL;
}

- (void)setCullMode:(unint64_t)a3
{
  impl = self->_impl;
  impl[900] = a3;
  *(impl + 1492) = a3 & 3 | ((impl[901] & 1) << 16) | impl[746] & 0xFFFEFFFC;
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

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v4 = a4;
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setViewports((impl + 756), a3, a4, *(impl[299] + 4906));
  impl[1309] |= 0x81200000000000uLL;
  if (v4 >= 2)
  {
    impl[1433] |= 0x80000000uLL;
  }
}

- (void)setViewport:(id *)a3
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setViewports((impl + 756), a3, 1u, *(impl[299] + 4906));
  impl[1309] |= 0x81200000000000uLL;
}

- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5
{
  v5 = a5;
  if (a5)
  {
    impl = self->_impl;
    v10 = impl[1060] + 8 * (a4 + 36);
    *(v10 + 40) = a3;
    *(v10 + 352) = 0;
    *(impl + 8804) = 1;
    if ((a5 & 2) == 0)
    {
LABEL_3:
      if ((a5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = self->_impl;
  v12 = v11[1219] + 8 * (a4 + 36);
  *(v12 + 48) = a3;
  *(v12 + 360) = 0;
  *(v11 + 10076) = 1;
  if ((a5 & 4) == 0)
  {
LABEL_4:
    if ((a5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_9:
  v13 = self->_impl;
  if ((a4 + 67) > 0x1E)
  {
    v15 = v13[450];
    v16 = (a4 + 36);
    v14 = (v15 + 8 * v16 + 48);
  }

  else
  {
    v14 = (*(v13[449] + 24) + *(v13[449] + 4) + 8 * (a4 + 67));
    v15 = v13[450];
    v16 = (a4 + 36);
  }

  *v14 = a3;
  *(v15 + 8 * v16 + 360) = 0;
  *(v15 + 8 * a4 + 816) = a3;
  if ((a5 & 8) == 0)
  {
LABEL_5:
    if ((a5 & 0x10) == 0)
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

  (*(*v18 + 152))(v18, a3, a4);
  if ((v5 & 0x10) != 0)
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

- (void)setRenderPipelineState:(id)a3
{
  impl = self->_impl;
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setRenderPipelineStateCommon(impl, a3 + 240);
  *(impl + 5403) = 1;
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  impl = self->_impl;
  v6 = 4 * a5;
  *(impl[450] + v6 + 672) = a4 ^ 0x80000000;
  *(impl[1219] + v6 + 736) = a4 ^ 0x80000000;
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  v5 = impl[662];
  if (!v5)
  {
    v6 = a3;
    v7 = a4;
    v5 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(impl[666]);
    LODWORD(a4) = v7;
    LODWORD(a3) = v6;
    impl[662] = v5;
  }

  *(*(v5 + 1048) + 4 * a4 + 804) = a3;
}

- (void)setArgumentTable:(id)a3 atStages:(unint64_t)a4
{
  v4 = a4;
  if (a4)
  {
    impl = self->_impl;
    if (impl[964] != a3)
    {
      v8 = a3;
      v9 = impl[964];
      if (v9 != v8)
      {
        v10 = v8;

        impl[964] = v10;
      }

      if (a3)
      {
        v11 = *(a3 + 4);
      }

      else
      {
        v11 = 0;
      }

      impl[1059] = v11;
      impl[963] = -1;
    }
  }

  if ((v4 & 2) != 0)
  {
    v12 = self->_impl;
    if (v12[1102] != a3)
    {
      v13 = a3;
      v14 = v12[1102];
      if (v14 != v13)
      {
        v15 = v13;

        v12[1102] = v15;
      }

      if (a3)
      {
        v16 = *(a3 + 4);
      }

      else
      {
        v16 = 0;
      }

      v12[1218] = v16;
      v12[1101] = -1;
    }
  }

  if ((v4 & 4) != 0)
  {
    v17 = self->_impl;
    if (v17[343] != a3)
    {
      v18 = a3;
      v19 = v17[343];
      if (v19 != v18)
      {
        v20 = v18;

        v17[343] = v20;
      }

      if (a3)
      {
        v21 = *(a3 + 4);
      }

      else
      {
        v21 = 0;
      }

      v17[449] = v21;
      v17[342] = -1;
    }
  }

  if ((v4 & 8) != 0)
  {
    v22 = self->_impl;
    v23 = v22[662];
    if (!v23)
    {
      v23 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(v22[666]);
      v22[662] = v23;
    }

    (*(*v23 + 168))(v23, a3);
  }

  if ((v4 & 0x10) != 0)
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

- (AGXG18PFamilyRenderContext_mtlnext)initWithCommandBuffer:(id)a3 allocator:(id)a4 descriptor:(id)a5 options:(unint64_t)a6 enableStateLoaderProgramTracking:(BOOL)a7
{
  LODWORD(v157) = a7;
  v177 = *MEMORY[0x29EDCA608];
  v161 = 0;
  v162 = 0;
  [a5 validate:objc_msgSend(a3 width:"device") height:{&v162, &v161}];
  v160.receiver = self;
  v160.super_class = AGXG18PFamilyRenderContext_mtlnext;
  v12 = [(IOGPUMetal4RenderCommandEncoder *)&v160 initWithCommandAllocator:a4];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_100;
  }

  v159.receiver = v12;
  v159.super_class = AGXG18PFamilyRenderContext_mtlnext;
  [(_MTL4CommandEncoder *)&v159 setCommandBuffer:a3];
  v13->_options = a6;
  v13->_command_buffer = a3;
  v13->_allocator = a4;
  v13->_mergeable = (a6 & 3) != 0;
  v13->_device = [a3 device];
  v156 = [a5 _descriptorPrivate];
  if (v162 && v161)
  {
    v14 = *(a4 + 22);
    impl = v13->_device->_impl;
    if (!v13->_mergeable)
    {
      *(v14 + 40) = 1;
      v16 = *(v14 + 32);
      bzero(v16, 0x1980uLL);
      v13->_framebuffer = v16;
      *v176 = &unk_2A23F92C8;
      *&v176[8] = a4;
      *&v176[24] = v176;
      v167 = &v164;
      v17 = &unk_2A23F92C8;
LABEL_12:
      block = v16;
      v164 = v17;
      v165 = a4;
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

      AGX::FramebufferDriverConfigGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfigGen3_3(&block, v156, *(v13->_device->_impl + 4237), impl[8229] & 0x1F);
      AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3(v13->_framebuffer, v13->_device, *(a3 + 13), &block, v162, v161, 0);
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
    *&v176[8] = a4;
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

  v19 = *(a4 + 22);
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
    *&v176[8] = a4;
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
  *&v176[8] = a4;
  *&v176[24] = v176;
  v167 = &v164;
  v22 = &unk_2A23F9358;
LABEL_34:
  block = v21;
  v164 = v22;
  v165 = a4;
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
    v143 = *(a3 + 1443);
    if (v143)
    {
      *(a3 + 1444) = v143;
      operator delete(v143);
    }

    v144 = *(a3 + 1440);
    if (v144)
    {
      *(a3 + 1441) = v144;
      operator delete(v144);
      v145 = *(a3 + 1437);
      if (!v145)
      {
LABEL_181:
        v146 = *(a3 + 1434);
        if (!v146)
        {
LABEL_186:

          v147 = *(a3 + 956);
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

          *(a3 + 956) = 0;

          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextB>::~PointerWithOnDemandObjectCreation(a3 + 662);
          std::function<void ()(void *)>::~function(a4);
          std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::~function(v151);
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextB>::~PointerWithOnDemandObjectCreation(a3 + 636);
          std::function<void ()(void *)>::~function(v154);
          std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::~function(v157);
          *(a3 + 449) = 0;

          AGX::CommonUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~CommonUSCStateLoader(a6);
          AGX::HAL300::ContextCommon::~ContextCommon(a3);
          _Unwind_Resume(v142);
        }

LABEL_185:
        *(a3 + 1435) = v146;
        operator delete(v146);
        goto LABEL_186;
      }
    }

    else
    {
      v145 = *(a3 + 1437);
      if (!v145)
      {
        goto LABEL_181;
      }
    }

    *(a3 + 1438) = v145;
    operator delete(v145);
    v146 = *(a3 + 1434);
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
  v155 = *(a4 + 22);
  framebuffer = v13->_framebuffer;
  v26 = [a3 globalTraceObjectID];
  v27 = [(_MTL4CommandEncoder *)v13 globalTraceObjectID];
  v28 = [a3 protectionOptions];
  v152 = *(a3 + 13);
  v29 = [a3 commandBufferStorage];
  v30 = [a3 privateData];
  v149 = [a3 privateDataOffset];
  *&v31 = v152;
  *(&v31 + 1) = v29;
  *&v32 = v26;
  *(&v32 + 1) = v27;
  v33 = v13->_impl;
  v34 = (v33 + 1896);
  *v176 = device;
  *&v176[16] = v31;
  v35 = device->_impl + 7008;
  block = MEMORY[0x29EDCA5F8];
  v164 = 3221225472;
  v165 = ___ZN3AGX20RenderUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfigNSt3__15arrayIjLm4EEE_block_invoke;
  p_block = &__block_descriptor_56_e5_v8__0l;
  v168 = 0;
  v169 = 0;
  v167 = v35;
  v150 = v30;
  if (AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&,std::array<unsigned int,4ul>)::once != -1)
  {
    v153 = v32;
    dispatch_once(&AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&,std::array<unsigned int,4ul>)::once, &block);
    v32 = v153;
  }

  v36 = *&v176[16];
  *v33 = *&v176[8];
  *(v33 + 16) = v29;
  *(v33 + 24) = &AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  v37 = v33 + 24;
  *(v33 + 32) = device;
  *(v33 + 40) = v29;
  v38 = *(v29 + 768);
  *(v33 + 1824) = 0;
  *(v33 + 1840) = 0;
  *(v33 + 1832) = 0;
  *(v33 + 1848) = 0;
  *(v33 + 1864) = v28;
  *(v33 + 48) = v38;
  *(v33 + 56) = v29 + 144;
  *(v33 + 1856) = *(v29 + 784);
  *(v33 + 1880) = v29;
  *(v33 + 1888) = v29 + 64;
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
  *v34 = *(v29 + 728);
  *(v33 + 1912) = v29 + 144;
  *(v33 + 1968) = *(v29 + 48);
  *(v33 + 1976) = *(v29 + 56);
  *(v33 + 1924) = v27;
  *(v33 + 1932) = 0xFFFFFFFF00000000;
  *(v33 + 1956) = 0;
  *(v33 + 1960) = 1;
  *(v33 + 2072) = a6 & ((a6 & 2) == 0);
  *(v33 + 2073) = ((a6 & 2) >> 1) & (a6 ^ 1);
  *(v33 + 2074) = ((a6 & 2) != 0) | a6 & 1;
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
  v165 = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke;
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
  v165 = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke;
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
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ClipRectContextGen3(v33 + 6048, framebuffer[892], framebuffer[893], v156, v33 + 5404);
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
  *(v33 + 10545) = *(v156 + 184);
  *(v33 + 10548) = 1;
  AGX::RenderCounterSamplingContextGen1::RenderCounterSamplingContextGen1((v33 + 10560), v156);
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
  *(v33 + 11400) = v149;
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
  *(v33 + 7254) = *(v156 + 192) == 0;
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
  if (!*(v156 + 88))
  {
    v124 = 0;
  }

  *(v33 + 11456 + ((v124 >> 3) & 8)) |= 1 << (v124 & 0x3F);
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateResourceGroupUsage(v123, *(v33 + 2008), v122);
  if (*(v156 + 48) >= 2uLL)
  {
    *(v33 + 11464) |= 0x40000000uLL;
  }

  v125 = *(v156 + 168);
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
  v5 = *(*(a1 + 8) + 176);
  v6 = v3;
  std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v5 + 128, &v6);
}

+ (BOOL)mergeRenderEncoders:(const void *)a3 count:(unint64_t)a4 options:(id)a5 commitFeedback:(id)a6 queue:(id)a7 error:(id *)a8
{
  *(a7 + 28) = *(a7 + 27);
  v10 = 0x2A179C000uLL;
  v106 = a7;
  if (a4)
  {
    v11 = 0;
    LODWORD(v12) = 0;
    v13 = vdupq_n_s64(4uLL);
    v104 = v13;
    do
    {
      v15 = *(a3[v11] + 16);
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
          if (v12 >= a4)
          {
            break;
          }

          v22 = *(a3[v12] + 16);
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
        v24 = a7 + 216;
        v25 = *(a7 + 28);
        v26 = *(a7 + 29);
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

          a7 = v106;
          v10 = 0x2A179C000uLL;
          v13 = v104;
        }

        *(v24 + 1) = i64;
      }

      LODWORD(v12) = v12 + 1;
      v11 = v12;
    }

    while (v12 < a4);
  }

  v34 = 0x2A179C000uLL;
  *(a7 + 25) = *(a7 + 24);
  v138[0] = 0;
  v138[1] = v138;
  v138[2] = 0x2020000000;
  v139 = 0;
  if (!a4)
  {
    goto LABEL_162;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    v37 = a3[v35];
    if (!*&v37[*(v10 + 1032)])
    {
      v101 = *(v34 + 1036);
      v143 = v37;
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](a7 + v101, &v143);
      v10 = 0x2A179C000;
      goto LABEL_158;
    }

    v133[0] = MEMORY[0x29EDCA5F8];
    v133[1] = 3221225472;
    v134 = __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke;
    v135 = &__block_descriptor_48_e44__RenderMergeNode____RenderContextB_B_12__0I8l;
    v136 = a4;
    v137 = a3;
    v131[0] = 0;
    v131[1] = v131;
    v131[2] = 0x2020000000;
    v132 = 0;
    v123[0] = MEMORY[0x29EDCA5F8];
    v123[1] = 3221225472;
    v124 = __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke_2;
    v125 = &unk_29F342188;
    v129 = a4;
    v130 = a3;
    v126 = a7;
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
    v117 = a4;
    v118 = a3;
    v113 = a7;
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
    a7 = v106;
    if (v35 >= a4)
    {
LABEL_162:
      v102 = [a7 noMergeCommit:? count:? options:? commitFeedback:? error:?];
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