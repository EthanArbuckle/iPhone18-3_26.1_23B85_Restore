@interface AGXG18PFamilyRenderContext
- (AGXG18PFamilyRenderContext)initWithCommandBuffer:(id)a3 descriptor:(id)a4 subEncoderIndex:(unint64_t)a5 framebuffer:(void *)a6;
- (BOOL)setMTLCounterSampleLocationWithBuffer:(id)a3 startIndex:(unsigned int)a4 endIndex:(unsigned int)a5 dm:(unsigned int)a6;
- (BOOL)setMTLCounterSampleLocationWithBuffer:(id)a3 vertexStartIndex:(unsigned int)a4 vertexEndIndex:(unsigned int)a5 fragmentStartIndex:(unsigned int)a6 fragmentEndIndex:(unsigned int)a7;
- (void)addSplitHandler:(id)a3;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)dealloc;
- (void)deferredEndEncoding:(id)a3;
- (void)destroyImpl;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5 withCondition:(int64_t)a6;
- (void)dispatchThreadsPerTile:(id *)a3 withCondition:(int64_t)a4;
- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9;
- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8;
- (void)drawMeshThreadgroups:(id *)a3;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7;
- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)filterCounterRangeWithFirstBatch:(unsigned int)a3 lastBatch:(unsigned int)a4 filterIndex:(unsigned int)a5;
- (void)resetTileCondition;
- (void)setAlphaTestReferenceValue:(float)a3;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorAttachmentMap:(id)a3;
- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7;
- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7 atIndex:(unint64_t)a8;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthCleared;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6;
- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setLineWidth:(float)a3;
- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setPointSize:(float)a3;
- (void)setPrimitiveRestartEnabled:(BOOL)a3;
- (void)setPrimitiveRestartEnabled:(BOOL)a3 index:(unint64_t)a4;
- (void)setProvokingVertexMode:(unint64_t)a3;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilCleared;
- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4;
- (void)setStencilReferenceValue:(unsigned int)a3;
- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6;
- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5;
- (void)setTessellationFactorScale:(float)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4;
- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setViewport:(id *)a3;
- (void)setViewportTransformEnabled:(BOOL)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)updateFence:(id)a3 afterStages:(unint64_t)a4;
- (void)useHeap:(id)a3;
- (void)useHeap:(id)a3 stages:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6;
- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4;
@end

@implementation AGXG18PFamilyRenderContext

- (void)setColorAttachmentMap:(id)a3
{
  impl = self->_impl;
  if (a3)
  {
    impl[79376] = [a3 getPhysicalIndexForLogicalIndex:0];
    impl[79377] = [a3 getPhysicalIndexForLogicalIndex:1];
    impl[79378] = [a3 getPhysicalIndexForLogicalIndex:2];
    impl[79379] = [a3 getPhysicalIndexForLogicalIndex:3];
    impl[79380] = [a3 getPhysicalIndexForLogicalIndex:4];
    impl[79381] = [a3 getPhysicalIndexForLogicalIndex:5];
    impl[79382] = [a3 getPhysicalIndexForLogicalIndex:6];
    v5 = [a3 getPhysicalIndexForLogicalIndex:7];
  }

  else
  {
    *(impl + 19844) = 50462976;
    *(impl + 39690) = 1284;
    impl[79382] = 6;
    v5 = 7;
  }

  impl[79383] = v5;

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVirtualMapping(impl, 0, 1);
}

- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4 stages:(unint64_t)a5
{
  v5 = a5;
  if (a5)
  {
    impl = self->_impl;
    if ((a4 + 67) > 0x1E)
    {
      v12 = impl[6137] + 8 * (a4 + 36);
      *(v12 + 40) = a3;
      v11 = (v12 + 352);
    }

    else
    {
      v10 = (impl[6136] + 8 * (a4 + 67));
      *v10 = a3;
      v11 = v10 + 31;
    }

    *v11 = 0;
    *(impl + 54136) = 1;
    if ((a5 & 2) == 0)
    {
LABEL_3:
      if ((a5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v13 = self->_impl;
  if ((a4 + 67) > 0x1E)
  {
    v16 = v13[9130] + 8 * (a4 + 36);
    *(v16 + 48) = a3;
    v15 = (v16 + 360);
  }

  else
  {
    v14 = (v13[9129] + 8 * (a4 + 67));
    *v14 = a3;
    v15 = v14 + 31;
  }

  *v15 = 0;
  *(v13 + 78080) = 1;
  if ((a5 & 4) == 0)
  {
LABEL_4:
    if ((a5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  v17 = self->_impl;
  if ((a4 + 67) > 0x1E)
  {
    v20 = v17[2694];
    v21 = v20 + 8 * (a4 + 36);
    *(v21 + 48) = a3;
    v19 = (v21 + 360);
  }

  else
  {
    v18 = (v17[2693] + 8 * (a4 + 67));
    *v18 = a3;
    v19 = v18 + 31;
    v20 = v17[2694];
  }

  *v19 = 0;
  *(v20 + 8 * a4 + 816) = a3;
  if ((a5 & 8) == 0)
  {
LABEL_5:
    if ((a5 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_19:
  v22 = self->_impl;
  v23 = v22[3495];
  if (!v23)
  {
    v27 = self->_impl;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(v22[3499]);
    v27[3495] = v23;
  }

  (*(*v23 + 152))(v23, a3, a4);
  if ((v5 & 0x10) != 0)
  {
LABEL_22:
    v24 = self->_impl;
    v25 = v24[3495];
    if (!v25)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(v24[3499]);
      v24[3495] = v25;
    }

    v26 = *(*v25 + 160);

    v26();
  }
}

- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  impl = self->_impl;
  v10 = impl[3495];
  if (v10)
  {
    length_low = LODWORD(a6.length);
    if (LODWORD(a6.length))
    {
LABEL_3:
      v12 = *(v10 + 8);
      location = a6.location;
      do
      {
        if (*a3)
        {
          v16 = *a5;
          v17 = *a4;
          v18 = v12[234];
          v19 = *(v18 + 848);
          v20 = *a3 + 48;
          v22 = *(*a3 + 4);
          v21 = *(*a3 + 5);
          v30[0] = *v20;
          v30[1] = v22;
          v30[2] = v21;
          if (v20[71] < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v20 + 6), *(v20 + 7));
          }

          else
          {
            v23 = *(v20 + 3);
            __p.__r_.__value_.__r.__words[2] = *(v20 + 8);
            *&__p.__r_.__value_.__l.__data_ = v23;
          }

          *(&v30[0] + 1) = __PAIR64__(v16, v17);
          Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v19, v30, v18, 0);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(*(v10 + 8) + 1896))
          {
LABEL_17:
            MTLResourceListAddResource();
          }
        }

        else
        {
          Sampler = 0;
          if (v12[237])
          {
            goto LABEL_17;
          }
        }

        if (Sampler)
        {
          v25 = *&Sampler->_impl.desc.var1;
        }

        else
        {
          v25 = 0;
        }

        v26 = 32 * location;
        *(*(v10 + 42696) + v26 + 16888) = v25;
        v14 = *(v10 + 42696);
        if ((~*(v14 + 16880 + v26 + 8) & 0x6000000000000000) == 0)
        {
          *(v14 + 16880 + 32 * location + 16) = *&Sampler->_impl.var0;
          v14 = *(v10 + 42696);
LABEL_5:
          p_impl = &Sampler->_impl;
          if (LODWORD(Sampler[1].super._device))
          {
            p_impl = LODWORD(Sampler[1].super._device);
          }

          goto LABEL_7;
        }

        if (Sampler)
        {
          goto LABEL_5;
        }

        p_impl = 0;
LABEL_7:
        *(v14 + 32 * location + 16880) = p_impl;
        v12 = *(v10 + 8);
        v12[(location > 0x3F) + 9790] |= 1 << location;
        v12[9810] |= 0x4000000uLL;
        ++a4;
        ++a5;
        ++location;
        ++a3;
        --length_low;
      }

      while (length_low);
    }
  }

  else
  {
    v27 = a6.location;
    length = a6.length;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    LODWORD(a6.location) = v27;
    v10 = v29;
    impl[3495] = v29;
    length_low = length;
    if (length)
    {
      goto LABEL_3;
    }
  }
}

- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = a6;
  v7 = a3;
  impl = self->_impl;
  v9 = impl[3495];
  if (!v9)
  {
    v10 = a5;
    v11 = a4;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v7 = a3;
    a4 = v11;
    a5 = v10;
    impl[3495] = v9;
  }

  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramSamplerWithLODOverride(v9, v7, v6, a4, a5);
}

- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  impl = self->_impl;
  v6 = impl[3495];
  if (v6)
  {
    length_low = LODWORD(a4.length);
    if (LODWORD(a4.length))
    {
LABEL_3:
      v8 = *(v6 + 8);
      for (i = a4.location; ; ++i)
      {
        v12 = *a3;
        if (*(v8 + 1896))
        {
          MTLResourceListAddResource();
        }

        v13 = v12 ? v12[15] : 0;
        v14 = 32 * i;
        *(*(v6 + 42696) + v14 + 16888) = v13;
        v10 = *(v6 + 42696);
        if ((~*(v10 + 16880 + v14 + 8) & 0x6000000000000000) == 0)
        {
          break;
        }

        if (v12)
        {
          goto LABEL_5;
        }

        v11 = 0;
LABEL_7:
        *(v10 + 32 * i + 16880) = v11;
        v8 = *(v6 + 8);
        *(v8 + 8 * (i > 0x3F) + 78320) |= 1 << i;
        *(v8 + 78480) |= 0x4000000uLL;
        ++a3;
        if (!--length_low)
        {
          return;
        }
      }

      *(v10 + 16880 + 32 * i + 16) = *(v12 + 8);
      v10 = *(v6 + 42696);
LABEL_5:
      v11 = (v12 + 6);
      if (*(v12 + 36))
      {
        v11 = *(v12 + 36);
      }

      goto LABEL_7;
    }
  }

  else
  {
    location = a4.location;
    LODWORD(length_low) = a4.length;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    LODWORD(a4.location) = location;
    v6 = v16;
    impl[3495] = v16;
    length_low = length_low;
    if (length_low)
    {
      goto LABEL_3;
    }
  }
}

- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  impl = self->_impl;
  v7 = impl[3495];
  if (!v7)
  {
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v7 = v13;
    impl[3495] = v13;
  }

  if (*(*(v7 + 8) + 1896))
  {
    MTLResourceListAddResource();
  }

  if (a3)
  {
    v8 = *(a3 + 15);
  }

  else
  {
    v8 = 0;
  }

  v9 = 32 * v4;
  *(*(v7 + 42696) + v9 + 16888) = v8;
  v10 = *(v7 + 42696);
  if ((~*(v10 + 16880 + v9 + 8) & 0x6000000000000000) != 0)
  {
    if (!a3)
    {
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    *(v10 + 16880 + 32 * v4 + 16) = *(a3 + 8);
    v10 = *(v7 + 42696);
  }

  v11 = a3 + 48;
  if (*(a3 + 36))
  {
    v11 = *(a3 + 36);
  }

LABEL_13:
  *(v10 + 32 * v4 + 16880) = v11;
  v12 = *(v7 + 8);
  *(v12 + 8 * ((v4 & 0xFFFFFFC0) != 0) + 78320) |= 1 << v4;
  *(v12 + 78480) |= 0x4000000uLL;
}

- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4
{
  location = a4.location;
  impl = self->_impl;
  v7 = impl[3495];
  if (v7)
  {
    length_low = LODWORD(a4.length);
    if (!LODWORD(a4.length))
    {
      return;
    }
  }

  else
  {
    length = a4.length;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v11 = length;
    v7 = v12;
    impl[3495] = v12;
    length_low = v11;
    if (!v11)
    {
      return;
    }
  }

  do
  {
    v9 = *a3++;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,true>(v7, v9, location++, v7 + 24048);
    --length_low;
  }

  while (length_low);
}

- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  impl = self->_impl;
  v7 = impl[3495];
  if (!v7)
  {
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v5 = a3;
    impl[3495] = v7;
  }

  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,true>(v7, v5, v4, v7 + 24048);
}

- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  location = a5.location;
  impl = self->_impl;
  v9 = impl[3495];
  if (v9)
  {
    length_low = LODWORD(a5.length);
    if (!LODWORD(a5.length))
    {
      return;
    }
  }

  else
  {
    length = a5.length;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v15 = length;
    v9 = v16;
    impl[3495] = v16;
    length_low = v15;
    if (!v15)
    {
      return;
    }
  }

  do
  {
    v12 = *a3++;
    v11 = v12;
    v13 = *a4++;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(v9, v11, v13, location++, v9 + 24048);
    --length_low;
  }

  while (length_low);
}

- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  v5 = impl[3495];
  if (!v5)
  {
    v14 = a4;
    v15 = a3;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    a3 = v15;
    LODWORD(a4) = v14;
    impl[3495] = v5;
  }

  v6 = &v5[a4];
  v7 = v6[5828];
  v8 = v5[1];
  v9 = v6[5898];
  v10 = v7 + a3;
  if (a4 >= 0x1F)
  {
    v13 = v5[5338] + 8 * (a4 - 31);
    *(v13 + 40) = v10;
    *(v13 + 352) = v9 + a3;
  }

  else
  {
    v11 = v5[5337];
    v12 = v11 + 8 * a4;
    *v12 = v10;
    *(v12 + 248) = v9 + a3;
    *(v12 + 17640) = *(v11 + 4 * a4 + 17516);
  }

  *(v8 + 8 * (a4 > 0x3F) + 78288) |= 1 << a4;
  *(v8 + 78480) |= 0x4000000uLL;
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  impl = self->_impl;
  v9 = impl[3495];
  if (!v9)
  {
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v7 = a3;
    impl[3495] = v9;
  }

  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(v9, v7, a4, v5, v9 + 24048);
}

- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  impl = self->_impl;
  v8 = impl[3495];
  if (!v8)
  {
    v23 = a3;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    a3 = v23;
    v8 = v24;
    impl[3495] = v24;
  }

  v9 = v8[1];
  v10 = (a4 + 15) | 0xF;
  v11 = v9[21] + v10;
  if (v11 <= v9[20])
  {
    goto LABEL_4;
  }

  v25 = a3;
  v26 = AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 3, 3, 0);
  a3 = v25;
  if (v26)
  {
    v11 = v9[21] + v10;
    if (v11 > v9[20])
    {
      abort();
    }

LABEL_4:
    v9[22] = v11;
  }

  v12 = v8[1];
  v13 = ((*(v12 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v13[*(v12 + 184)];
  *(v12 + 168) = &v13[(a4 + 15) & 0xFFFFFFFFFFFFFFF0];
  memcpy(v13, a3, a4);
  v15 = v8[1];
  v16 = *(*(v15 + 48) + 224);
  v17 = *MEMORY[0x29EDC5638];
  v18 = v5 & 0x3F;
  if (v5 < 0x23)
  {
    v8[v18 + 5793] = 0;
  }

  v19 = v16 + v17;
  *(v15 + 8 * (v5 > 0x3F) + 78288) |= 1 << v18;
  *(v15 + 78480) |= 0x4000000uLL;
  if (v5 >= 0x1F)
  {
    *(v8[5338] + 8 * (v5 - 31) + 40) = v14;
    v8[v5 + 5339] = v19;
  }

  else
  {
    v20 = v8[5337];
    v21 = v5 & 0x1F;
    v22 = v20 + v21 * 8;
    v8[v21 + 5339] = v19;
    *(v20 + 4 * (v5 & 0x1F) + 17516) = a4;
    *v22 = v14;
    *(v22 + 17640) = a4;
    *(v22 + 17644) = v14 >> 8;
  }
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  v5 = impl[3495];
  if (!v5)
  {
    v6 = a3;
    v7 = a4;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    LODWORD(a4) = v7;
    LODWORD(a3) = v6;
    impl[3495] = v5;
  }

  *(*(v5 + 19000) + 4 * a4 + 804) = a3;
}

- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  impl = self->_impl;
  v10 = impl[3495];
  if (v10)
  {
    length_low = LODWORD(a6.length);
    if (LODWORD(a6.length))
    {
LABEL_3:
      v12 = *(v10 + 8);
      location = a6.location;
      do
      {
        if (*a3)
        {
          v16 = *a5;
          v17 = *a4;
          v18 = v12[234];
          v19 = *(v18 + 848);
          v20 = *a3 + 48;
          v22 = *(*a3 + 4);
          v21 = *(*a3 + 5);
          v30[0] = *v20;
          v30[1] = v22;
          v30[2] = v21;
          if (v20[71] < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v20 + 6), *(v20 + 7));
          }

          else
          {
            v23 = *(v20 + 3);
            __p.__r_.__value_.__r.__words[2] = *(v20 + 8);
            *&__p.__r_.__value_.__l.__data_ = v23;
          }

          *(&v30[0] + 1) = __PAIR64__(v16, v17);
          Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v19, v30, v18, 0);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(*(v10 + 8) + 1896))
          {
LABEL_17:
            MTLResourceListAddResource();
          }
        }

        else
        {
          Sampler = 0;
          if (v12[237])
          {
            goto LABEL_17;
          }
        }

        if (Sampler)
        {
          v25 = *&Sampler->_impl.desc.var1;
        }

        else
        {
          v25 = 0;
        }

        v26 = 32 * location;
        *(*(v10 + 18992) + v26 + 16888) = v25;
        v14 = *(v10 + 18992);
        if ((~*(v14 + 16880 + v26 + 8) & 0x6000000000000000) == 0)
        {
          *(v14 + 16880 + 32 * location + 16) = *&Sampler->_impl.var0;
          v14 = *(v10 + 18992);
LABEL_5:
          p_impl = &Sampler->_impl;
          if (LODWORD(Sampler[1].super._device))
          {
            p_impl = LODWORD(Sampler[1].super._device);
          }

          goto LABEL_7;
        }

        if (Sampler)
        {
          goto LABEL_5;
        }

        p_impl = 0;
LABEL_7:
        *(v14 + 32 * location + 16880) = p_impl;
        v12 = *(v10 + 8);
        v12[(location > 0x3F) + 9778] |= 1 << location;
        v12[9810] |= 0x10000uLL;
        ++a4;
        ++a5;
        ++location;
        ++a3;
        --length_low;
      }

      while (length_low);
    }
  }

  else
  {
    v27 = a6.location;
    length = a6.length;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    LODWORD(a6.location) = v27;
    v10 = v29;
    impl[3495] = v29;
    length_low = length;
    if (length)
    {
      goto LABEL_3;
    }
  }
}

- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = a6;
  v7 = a3;
  impl = self->_impl;
  v9 = impl[3495];
  if (!v9)
  {
    v10 = a5;
    v11 = a4;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v7 = a3;
    a4 = v11;
    a5 = v10;
    impl[3495] = v9;
  }

  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramSamplerWithLODOverride(v9, v7, v6, a4, a5);
}

- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  impl = self->_impl;
  v6 = impl[3495];
  if (v6)
  {
    length_low = LODWORD(a4.length);
    if (LODWORD(a4.length))
    {
LABEL_3:
      v8 = *(v6 + 8);
      for (i = a4.location; ; ++i)
      {
        v12 = *a3;
        if (*(v8 + 1896))
        {
          MTLResourceListAddResource();
        }

        v13 = v12 ? v12[15] : 0;
        v14 = 32 * i;
        *(*(v6 + 18992) + v14 + 16888) = v13;
        v10 = *(v6 + 18992);
        if ((~*(v10 + 16880 + v14 + 8) & 0x6000000000000000) == 0)
        {
          break;
        }

        if (v12)
        {
          goto LABEL_5;
        }

        v11 = 0;
LABEL_7:
        *(v10 + 32 * i + 16880) = v11;
        v8 = *(v6 + 8);
        *(v8 + 8 * (i > 0x3F) + 78224) |= 1 << i;
        *(v8 + 78480) |= 0x10000uLL;
        ++a3;
        if (!--length_low)
        {
          return;
        }
      }

      *(v10 + 16880 + 32 * i + 16) = *(v12 + 8);
      v10 = *(v6 + 18992);
LABEL_5:
      v11 = (v12 + 6);
      if (*(v12 + 36))
      {
        v11 = *(v12 + 36);
      }

      goto LABEL_7;
    }
  }

  else
  {
    location = a4.location;
    LODWORD(length_low) = a4.length;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    LODWORD(a4.location) = location;
    v6 = v16;
    impl[3495] = v16;
    length_low = length_low;
    if (length_low)
    {
      goto LABEL_3;
    }
  }
}

- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  impl = self->_impl;
  v7 = impl[3495];
  if (!v7)
  {
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v7 = v13;
    impl[3495] = v13;
  }

  if (*(*(v7 + 8) + 1896))
  {
    MTLResourceListAddResource();
  }

  if (a3)
  {
    v8 = *(a3 + 15);
  }

  else
  {
    v8 = 0;
  }

  v9 = 32 * v4;
  *(*(v7 + 18992) + v9 + 16888) = v8;
  v10 = *(v7 + 18992);
  if ((~*(v10 + 16880 + v9 + 8) & 0x6000000000000000) != 0)
  {
    if (!a3)
    {
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    *(v10 + 16880 + 32 * v4 + 16) = *(a3 + 8);
    v10 = *(v7 + 18992);
  }

  v11 = a3 + 48;
  if (*(a3 + 36))
  {
    v11 = *(a3 + 36);
  }

LABEL_13:
  *(v10 + 32 * v4 + 16880) = v11;
  v12 = *(v7 + 8);
  *(v12 + 8 * ((v4 & 0xFFFFFFC0) != 0) + 78224) |= 1 << v4;
  *(v12 + 78480) |= 0x10000uLL;
}

- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4
{
  location = a4.location;
  impl = self->_impl;
  v7 = impl[3495];
  if (v7)
  {
    length_low = LODWORD(a4.length);
    if (!LODWORD(a4.length))
    {
      return;
    }
  }

  else
  {
    length = a4.length;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v11 = length;
    v7 = v12;
    impl[3495] = v12;
    length_low = v11;
    if (!v11)
    {
      return;
    }
  }

  do
  {
    v9 = *a3++;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,true>(v7, v9, location++, v7 + 72);
    --length_low;
  }

  while (length_low);
}

- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  impl = self->_impl;
  v7 = impl[3495];
  if (!v7)
  {
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v5 = a3;
    impl[3495] = v7;
  }

  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,true>(v7, v5, v4, v7 + 72);
}

- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  location = a5.location;
  impl = self->_impl;
  v9 = impl[3495];
  if (v9)
  {
    length_low = LODWORD(a5.length);
    if (!LODWORD(a5.length))
    {
      return;
    }
  }

  else
  {
    length = a5.length;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v15 = length;
    v9 = v16;
    impl[3495] = v16;
    length_low = v15;
    if (!v15)
    {
      return;
    }
  }

  do
  {
    v12 = *a3++;
    v11 = v12;
    v13 = *a4++;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(v9, v11, v13, location++, v9 + 72);
    --length_low;
  }

  while (length_low);
}

- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  v5 = impl[3495];
  if (!v5)
  {
    v14 = a4;
    v15 = a3;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    a3 = v15;
    LODWORD(a4) = v14;
    impl[3495] = v5;
  }

  v6 = v5[1];
  v7 = &v5[a4];
  v8 = v7[2865];
  v9 = v7[2935];
  v10 = v8 + a3;
  if (a4 >= 0x1F)
  {
    v13 = v5[2375] + 8 * (a4 - 31);
    *(v13 + 40) = v10;
    *(v13 + 352) = v9 + a3;
  }

  else
  {
    v11 = v5[2374];
    v12 = v11 + 8 * a4;
    *v12 = v10;
    *(v12 + 248) = v9 + a3;
    *(v12 + 17640) = *(v11 + 4 * a4 + 17516);
  }

  *(v6 + 8 * (a4 > 0x3F) + 78192) |= 1 << a4;
  *(v6 + 78480) |= 0x10000uLL;
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  impl = self->_impl;
  v9 = impl[3495];
  if (!v9)
  {
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v7 = a3;
    impl[3495] = v9;
  }

  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(v9, v7, a4, v5, v9 + 72);
}

- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  impl = self->_impl;
  v8 = impl[3495];
  if (!v8)
  {
    v23 = a3;
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    a3 = v23;
    v8 = v24;
    impl[3495] = v24;
  }

  v9 = v8[1];
  v10 = (a4 + 15) | 0xF;
  v11 = v9[21] + v10;
  if (v11 <= v9[20])
  {
    goto LABEL_4;
  }

  v25 = a3;
  v26 = AGX::DataBufferAllocator<44ul>::growNoInline(v9 + 3, 3, 0);
  a3 = v25;
  if (v26)
  {
    v11 = v9[21] + v10;
    if (v11 > v9[20])
    {
      abort();
    }

LABEL_4:
    v9[22] = v11;
  }

  v12 = v8[1];
  v13 = ((*(v12 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v13[*(v12 + 184)];
  *(v12 + 168) = &v13[(a4 + 15) & 0xFFFFFFFFFFFFFFF0];
  memcpy(v13, a3, a4);
  v15 = v8[1];
  v16 = *(*(v15 + 48) + 224);
  v17 = *MEMORY[0x29EDC5638];
  v18 = v5 & 0x3F;
  if (v5 < 0x23)
  {
    v8[v18 + 2830] = 0;
  }

  v19 = v16 + v17;
  *(v15 + 8 * (v5 > 0x3F) + 78192) |= 1 << v18;
  *(v15 + 78480) |= 0x10000uLL;
  if (v5 >= 0x1F)
  {
    *(v8[2375] + 8 * (v5 - 31) + 40) = v14;
    v8[v5 + 2376] = v19;
  }

  else
  {
    v20 = v8[2374];
    v21 = v5 & 0x1F;
    v22 = v20 + v21 * 8;
    *v22 = v14;
    *(v20 + 4 * (v5 & 0x1F) + 17516) = a4;
    v8[v21 + 2376] = v19;
    *(v22 + 17640) = a4;
    *(v22 + 17644) = v14 >> 8;
  }
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  impl = self->_impl;
  v12 = *a5;
  v11 = *a6;
  v7 = impl[3495];
  if (v7)
  {
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = *(v8 + 3946) == 0;
      v10 = 56;
      if (!v9)
      {
        v10 = 57;
      }
    }

    else
    {
      v10 = 57;
    }

    impl[9933] |= 1 << v10;
    v14 = v12;
    v13 = v11;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBuffer(v7, a3, a4, &v14, &v13);
  }
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  impl = self->_impl;
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  v6 = impl[3495];
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

    impl[9933] |= 1 << v9;
    v15 = v12;
    v14 = v11;
    v13 = v10;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreads(v6, &v15, &v14, &v13);
  }
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  impl = self->_impl;
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  v6 = impl[3495];
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

    impl[9933] |= 1 << v9;
    v15 = v12;
    v14 = v11;
    v13 = v10;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroups(v6, &v15, &v14, &v13);
  }
}

- (void)drawMeshThreadgroups:(id *)a3
{
  v3 = *(self->_impl + 3495);
  if (v3)
  {
    v4 = *(v3[1] + 30352);
    v5 = *(v4 + 872);
    v6 = *(v4 + 880);
    v7 = *(v4 + 884);
    v8 = *(v4 + 892);
    v11 = *a3;
    v10[0] = v5;
    v10[1] = HIDWORD(v5);
    v10[2] = v6;
    v9[0] = v7;
    v9[1] = HIDWORD(v7);
    v9[2] = v8;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroups(v3, &v11, v10, v9);
  }
}

- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v7 = [(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation];
  impl = self->_impl;
  v9 = impl[3495];
  if (v7)
  {
    if (!v9)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
      impl[3495] = v9;
    }

    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAccelerationStructure<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,AGXG18PFamilyRayTracingAccelerationStructureSW>(v9, a3, v4, v9 + 24048);
  }

  else
  {
    if (!v9)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
      impl[3495] = v9;
    }

    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAccelerationStructure<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,AGXG18PFamilyRayTracingAccelerationStructure>(v9, a3, v4, v9 + 24048);
  }
}

- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v7 = [(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation];
  impl = self->_impl;
  v9 = impl[3495];
  if (v7)
  {
    if (!v9)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
      impl[3495] = v9;
    }

    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAccelerationStructure<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,AGXG18PFamilyRayTracingAccelerationStructureSW>(v9, a3, v4, v9 + 72);
  }

  else
  {
    if (!v9)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
      impl[3495] = v9;
    }

    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAccelerationStructure<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,AGXG18PFamilyRayTracingAccelerationStructure>(v9, a3, v4, v9 + 72);
  }
}

- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v7 = [(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation];
  impl = self->_impl;
  if (!v7)
  {
    if (v4 <= 0x22)
    {
      impl[(v4 & 0x3F) + 3149] = 0;
    }

    if (a3)
    {
      v9 = *(a3 + 90);
      if (v4 <= 0x1E)
      {
        goto LABEL_6;
      }

LABEL_11:
      v11 = (impl[2694] + 8 * (v4 - 31) + 48);
      v10 = v4;
      goto LABEL_12;
    }

LABEL_14:
    if (v4 >= 0x1F)
    {
      v37 = impl[2694] + 8 * (v4 - 31);
      *(v37 + 48) = 0;
      *(v37 + 360) = 0;
      v38 = &impl[v4];
      v38[3184] = 0;
      v38[3254] = 0;
    }

    else
    {
      v20 = impl[2693];
      v21 = v4 & 0x1F;
      v22 = (v20 + v21 * 8);
      *v22 = 0;
      v22[31] = 0;
      v23 = &impl[v21];
      v23[3184] = 0;
      v23[3254] = 0;
      *(v20 + 4 * (v4 & 0x1F) + 17516) = 0;
      v22[2205] = 0;
    }

    return;
  }

  if (v4 <= 0x22)
  {
    impl[(v4 & 0x3F) + 3149] = 0;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v9 = *(a3 + 84);
  if (v4 > 0x1E)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = v4 & 0x1F;
  v11 = (impl[2693] + 8 * v10);
LABEL_12:
  *v11 = v9;
  v12 = [a3 buffer];
  v13 = MEMORY[0x29EDC5638];
  v14 = *(v12 + *MEMORY[0x29EDC5638] + 8);
  v15 = *([a3 buffer] + *v13 + 24);
  v16 = *([a3 buffer] + *v13 + 16);
  v17 = &impl[v10];
  v17[3184] = v14;
  v17[3254] = v15;
  if (v4 >= 0x1F)
  {
    *(impl[2694] + 8 * (v4 - 31) + 360) = v15;
  }

  else
  {
    v18 = impl[2693];
    v19 = v18 + 8 * v10;
    *(v18 + 4 * v10 + 17516) = v16;
    *(v19 + 248) = v15;
    *(v19 + 17640) = v16;
    *(v19 + 17644) = v14 >> 8;
  }

  v24 = [a3 buffer];
  v17[2695] = v24 + *v13;
  v25 = impl[336];
  v26 = v25[2].i64[1];
  if (*(v26 + 480) != 1)
  {
    goto LABEL_25;
  }

  v27 = v25[3];
  v28 = v25[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v27), vceqzq_s64(v28))))) & 1) == 0)
  {
    goto LABEL_25;
  }

  v29 = v24 + *v13;
  if ((*(v29 + 23) & 0x10) != 0)
  {
    v29 = *v29;
  }

  v30 = *v29;
  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = *(v30 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v30), vceqzq_s64(v31))))) & 1) == 0)
  {
LABEL_25:
    v30 = 0;
LABEL_26:
    v35 = 0;
    goto LABEL_27;
  }

  v32 = vandq_s8(v31, v28);
  v33 = v32.u64[1];
  if (v32.i64[1])
  {
    v34 = 3;
  }

  else
  {
    v33 = v32.i64[0];
    if (v32.i64[0])
    {
      v34 = 2;
    }

    else
    {
      v39 = vandq_s8(*v30, v27);
      v33 = v39.u64[1];
      if (v39.i64[1])
      {
        v34 = 1;
      }

      else
      {
        v34 = 0;
        v30 = 0;
        v35 = 0;
        v33 = v39.i64[0];
        if (!v39.i64[0])
        {
          goto LABEL_27;
        }
      }
    }
  }

  v40 = &v25->i8[8 * v34];
  v41 = __clz(v33) ^ 0x3F;
  v30 = (*(v40 + 10) >> v41) & 1;
  v35 = (*(v40 + 14) >> v41) & 1;
LABEL_27:
  v36 = (v26 + 8 * (v4 > 0x3F));
  v36[4] = v36[4] & ~(1 << v4) | (v30 << v4);
  v36[24] = v36[24] & ~(1 << v4) | (v35 << v4);
  v36[44] &= ~(1 << v4);
  if (impl[337])
  {

    MTLResourceListAddResource();
  }
}

- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v7 = [(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation];
  impl = self->_impl;
  v9 = impl + 9129;
  if (!v7)
  {
    if (v4 <= 0x22)
    {
      impl[(v4 & 0x3F) + 9725] = 0;
    }

    if (!a3)
    {
      goto LABEL_12;
    }

    if (v4 > 0x1E)
    {
      v13 = (impl[9130] + 8 * (v4 - 31) + 48);
      v12 = v4;
    }

    else
    {
      v12 = v4 & 0x1F;
      v13 = (*v9 + 8 * v12);
    }

    *v13 = *(a3 + 90);
    v26 = [a3 buffer];
    v27 = MEMORY[0x29EDC5638];
    v28 = *(v26 + *MEMORY[0x29EDC5638] + 8);
    v29 = *([a3 buffer] + *v27 + 24);
    v30 = *([a3 buffer] + *v27 + 16);
    v31 = &impl[v12];
    v31[9585] = v28;
    v31[9655] = v29;
    if (v4 >= 0x1F)
    {
      *(impl[9130] + 8 * (v4 - 31) + 360) = v29;
    }

    else
    {
      v32 = *v9 + 8 * v12;
      *(*v9 + 4 * v12 + 17516) = v30;
      *(v32 + 248) = v29;
      *(v32 + 17640) = v30;
      *(v32 + 17644) = v28 >> 8;
    }

    v47 = [a3 buffer];
    v31[9131] = v47 + *v27;
    v48 = impl[251];
    v49 = v48[2].i64[1];
    if (*(v49 + 480) == 1)
    {
      v50 = v48[3];
      v51 = v48[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v50), vceqzq_s64(v51))))))
      {
        v52 = v47 + *v27;
        if ((*(v52 + 23) & 0x10) != 0)
        {
          v52 = *v52;
        }

        v53 = *v52;
        if (!v53)
        {
          goto LABEL_45;
        }

        v54 = *(v53 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v53), vceqzq_s64(v54))))))
        {
          v55 = vandq_s8(v54, v51);
          v56 = v55.u64[1];
          if (v55.i64[1])
          {
            v57 = 3;
          }

          else
          {
            v56 = v55.i64[0];
            if (v55.i64[0])
            {
              v57 = 2;
            }

            else
            {
              v62 = vandq_s8(*v53, v50);
              v56 = v62.u64[1];
              if (v62.i64[1])
              {
                v57 = 1;
              }

              else
              {
                v57 = 0;
                v53 = 0;
                v58 = 0;
                v56 = v62.i64[0];
                if (!v62.i64[0])
                {
                  goto LABEL_46;
                }
              }
            }
          }

          v65 = &v48->i8[8 * v57];
          v66 = __clz(v56) ^ 0x3F;
          v53 = (*(v65 + 10) >> v66) & 1;
          v58 = (*(v65 + 14) >> v66) & 1;
LABEL_46:
          v59 = (v49 + 8 * (v4 > 0x3F));
          v59[2] = v59[2] & ~(1 << v4) | (v53 << v4);
          v59[22] = v59[22] & ~(1 << v4) | (v58 << v4);
          v59[42] &= ~(1 << v4);
          if (impl[237])
          {
            MTLResourceListAddResource();
          }

          goto LABEL_48;
        }
      }
    }

    v53 = 0;
LABEL_45:
    v58 = 0;
    goto LABEL_46;
  }

  if (v4 <= 0x22)
  {
    impl[(v4 & 0x3F) + 9725] = 0;
  }

  if (a3)
  {
    if (v4 > 0x1E)
    {
      v11 = (impl[9130] + 8 * (v4 - 31) + 48);
      v10 = v4;
    }

    else
    {
      v10 = v4 & 0x1F;
      v11 = (*v9 + 8 * v10);
    }

    *v11 = *(a3 + 84);
    v19 = [a3 buffer];
    v20 = MEMORY[0x29EDC5638];
    v21 = *(v19 + *MEMORY[0x29EDC5638] + 8);
    v22 = *([a3 buffer] + *v20 + 24);
    v23 = *([a3 buffer] + *v20 + 16);
    v24 = &impl[v10];
    v24[9585] = v21;
    v24[9655] = v22;
    if (v4 >= 0x1F)
    {
      *(impl[9130] + 8 * (v4 - 31) + 360) = v22;
    }

    else
    {
      v25 = *v9 + 8 * v10;
      *(*v9 + 4 * v10 + 17516) = v23;
      *(v25 + 248) = v22;
      *(v25 + 17640) = v23;
      *(v25 + 17644) = v21 >> 8;
    }

    v33 = [a3 buffer];
    v24[9131] = v33 + *v20;
    v34 = impl[251];
    v35 = v34[2].i64[1];
    if (*(v35 + 480) == 1)
    {
      v36 = v34[3];
      v37 = v34[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v36), vceqzq_s64(v37))))))
      {
        v38 = v33 + *v20;
        if ((*(v38 + 23) & 0x10) != 0)
        {
          v38 = *v38;
        }

        v39 = *v38;
        if (!v39)
        {
          goto LABEL_31;
        }

        v40 = *(v39 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v39), vceqzq_s64(v40))))))
        {
          v41 = vandq_s8(v40, v37);
          v42 = v41.u64[1];
          if (v41.i64[1])
          {
            v43 = 3;
LABEL_59:
            v63 = &v34->i8[8 * v43];
            v64 = __clz(v42) ^ 0x3F;
            v39 = (*(v63 + 10) >> v64) & 1;
            v44 = (*(v63 + 14) >> v64) & 1;
            goto LABEL_32;
          }

          v42 = v41.i64[0];
          if (v41.i64[0])
          {
            v43 = 2;
            goto LABEL_59;
          }

          v61 = vandq_s8(*v39, v36);
          v42 = v61.u64[1];
          if (v61.i64[1])
          {
            v43 = 1;
            goto LABEL_59;
          }

          v43 = 0;
          v39 = 0;
          v44 = 0;
          v42 = v61.i64[0];
          if (v61.i64[0])
          {
            goto LABEL_59;
          }

LABEL_32:
          v45 = (v35 + 8 * (v4 > 0x3F));
          v45[2] = v45[2] & ~(1 << v4) | (v39 << v4);
          v45[22] = v45[22] & ~(1 << v4) | (v44 << v4);
          v45[42] &= ~(1 << v4);
          if (impl[237])
          {
            MTLResourceListAddResource();
          }

          v46 = *(a3 + 43);
          os_unfair_lock_lock(v46 + 194);
          os_unfair_lock_assert_owner((*(a3 + 43) + 776));
          os_unfair_lock_unlock(v46 + 194);
LABEL_48:
          [a3 buffer];
          goto LABEL_49;
        }
      }
    }

    v39 = 0;
LABEL_31:
    v44 = 0;
    goto LABEL_32;
  }

LABEL_12:
  impl[v4 + 9131] = 0;
  if (v4 >= 0x1F)
  {
    v17 = impl[9130] + 8 * (v4 - 31);
    *(v17 + 48) = 0;
    *(v17 + 360) = 0;
    v18 = &impl[v4];
    v18[9585] = 0;
    v18[9655] = 0;
  }

  else
  {
    v14 = *v9;
    v15 = (*v9 + 8 * v4);
    *v15 = 0;
    v16 = &impl[v4];
    v16[9585] = 0;
    v15[31] = 0;
    v16[9655] = 0;
    *(v14 + 4 * v4 + 17516) = 0;
    v15[2205] = 0;
  }

LABEL_49:
  v60 = &impl[v4 > 0x3F];
  v60[9798] |= 1 << v4;
  v60[9804] |= 1 << v4;
  impl[9810] |= 0x3000000000uLL;
}

- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v7 = [(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation];
  impl = self->_impl;
  v9 = impl + 6136;
  if (!v7)
  {
    if (v4 <= 0x22)
    {
      impl[(v4 & 0x3F) + 6732] = 0;
    }

    if (!a3)
    {
      goto LABEL_12;
    }

    if (v4 > 0x1E)
    {
      v13 = (impl[6137] + 8 * (v4 - 31) + 40);
      v12 = v4;
    }

    else
    {
      v12 = v4 & 0x1F;
      v13 = (*v9 + 8 * v12);
    }

    *v13 = *(a3 + 90);
    v26 = [a3 buffer];
    v27 = MEMORY[0x29EDC5638];
    v28 = *(v26 + *MEMORY[0x29EDC5638] + 8);
    v29 = *([a3 buffer] + *v27 + 24);
    v30 = *([a3 buffer] + *v27 + 16);
    v31 = &impl[v12];
    v31[6592] = v28;
    v31[6662] = v29;
    if (v4 >= 0x1F)
    {
      *(impl[6137] + 8 * (v4 - 31) + 352) = v29;
    }

    else
    {
      v32 = *v9 + 8 * v12;
      *(*v9 + 4 * v12 + 17516) = v30;
      *(v32 + 248) = v29;
      *(v32 + 17640) = v30;
      *(v32 + 17644) = v28 >> 8;
    }

    v47 = [a3 buffer];
    v31[6138] = v47 + *v27;
    v48 = impl[251];
    v49 = v48[2].i64[1];
    if (*(v49 + 480) == 1)
    {
      v50 = v48[3];
      v51 = v48[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v50), vceqzq_s64(v51))))))
      {
        v52 = v47 + *v27;
        if ((*(v52 + 23) & 0x10) != 0)
        {
          v52 = *v52;
        }

        v53 = *v52;
        if (!v53)
        {
          goto LABEL_45;
        }

        v54 = *(v53 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v53), vceqzq_s64(v54))))))
        {
          v55 = vandq_s8(v54, v51);
          v56 = v55.u64[1];
          if (v55.i64[1])
          {
            v57 = 3;
          }

          else
          {
            v56 = v55.i64[0];
            if (v55.i64[0])
            {
              v57 = 2;
            }

            else
            {
              v62 = vandq_s8(*v53, v50);
              v56 = v62.u64[1];
              if (v62.i64[1])
              {
                v57 = 1;
              }

              else
              {
                v57 = 0;
                v53 = 0;
                v58 = 0;
                v56 = v62.i64[0];
                if (!v62.i64[0])
                {
                  goto LABEL_46;
                }
              }
            }
          }

          v65 = &v48->i8[8 * v57];
          v66 = __clz(v56) ^ 0x3F;
          v53 = (*(v65 + 10) >> v66) & 1;
          v58 = (*(v65 + 14) >> v66) & 1;
LABEL_46:
          v59 = (v49 + 8 * (v4 > 0x3F));
          *v59 = *v59 & ~(1 << v4) | (v53 << v4);
          v59[20] = v59[20] & ~(1 << v4) | (v58 << v4);
          v59[40] &= ~(1 << v4);
          if (impl[237])
          {
            MTLResourceListAddResource();
          }

          goto LABEL_48;
        }
      }
    }

    v53 = 0;
LABEL_45:
    v58 = 0;
    goto LABEL_46;
  }

  if (v4 <= 0x22)
  {
    impl[(v4 & 0x3F) + 6732] = 0;
  }

  if (a3)
  {
    if (v4 > 0x1E)
    {
      v11 = (impl[6137] + 8 * (v4 - 31) + 40);
      v10 = v4;
    }

    else
    {
      v10 = v4 & 0x1F;
      v11 = (*v9 + 8 * v10);
    }

    *v11 = *(a3 + 84);
    v19 = [a3 buffer];
    v20 = MEMORY[0x29EDC5638];
    v21 = *(v19 + *MEMORY[0x29EDC5638] + 8);
    v22 = *([a3 buffer] + *v20 + 24);
    v23 = *([a3 buffer] + *v20 + 16);
    v24 = &impl[v10];
    v24[6592] = v21;
    v24[6662] = v22;
    if (v4 >= 0x1F)
    {
      *(impl[6137] + 8 * (v4 - 31) + 352) = v22;
    }

    else
    {
      v25 = *v9 + 8 * v10;
      *(*v9 + 4 * v10 + 17516) = v23;
      *(v25 + 248) = v22;
      *(v25 + 17640) = v23;
      *(v25 + 17644) = v21 >> 8;
    }

    v33 = [a3 buffer];
    v24[6138] = v33 + *v20;
    v34 = impl[251];
    v35 = v34[2].i64[1];
    if (*(v35 + 480) == 1)
    {
      v36 = v34[3];
      v37 = v34[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v36), vceqzq_s64(v37))))))
      {
        v38 = v33 + *v20;
        if ((*(v38 + 23) & 0x10) != 0)
        {
          v38 = *v38;
        }

        v39 = *v38;
        if (!v39)
        {
          goto LABEL_31;
        }

        v40 = *(v39 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v39), vceqzq_s64(v40))))))
        {
          v41 = vandq_s8(v40, v37);
          v42 = v41.u64[1];
          if (v41.i64[1])
          {
            v43 = 3;
LABEL_59:
            v63 = &v34->i8[8 * v43];
            v64 = __clz(v42) ^ 0x3F;
            v39 = (*(v63 + 10) >> v64) & 1;
            v44 = (*(v63 + 14) >> v64) & 1;
            goto LABEL_32;
          }

          v42 = v41.i64[0];
          if (v41.i64[0])
          {
            v43 = 2;
            goto LABEL_59;
          }

          v61 = vandq_s8(*v39, v36);
          v42 = v61.u64[1];
          if (v61.i64[1])
          {
            v43 = 1;
            goto LABEL_59;
          }

          v43 = 0;
          v39 = 0;
          v44 = 0;
          v42 = v61.i64[0];
          if (v61.i64[0])
          {
            goto LABEL_59;
          }

LABEL_32:
          v45 = (v35 + 8 * (v4 > 0x3F));
          *v45 = *v45 & ~(1 << v4) | (v39 << v4);
          v45[20] = v45[20] & ~(1 << v4) | (v44 << v4);
          v45[40] &= ~(1 << v4);
          if (impl[237])
          {
            MTLResourceListAddResource();
          }

          v46 = *(a3 + 43);
          os_unfair_lock_lock(v46 + 194);
          os_unfair_lock_assert_owner((*(a3 + 43) + 776));
          os_unfair_lock_unlock(v46 + 194);
LABEL_48:
          [a3 buffer];
          goto LABEL_49;
        }
      }
    }

    v39 = 0;
LABEL_31:
    v44 = 0;
    goto LABEL_32;
  }

LABEL_12:
  impl[v4 + 6138] = 0;
  if (v4 >= 0x1F)
  {
    v17 = impl[6137] + 8 * (v4 - 31);
    *(v17 + 40) = 0;
    *(v17 + 352) = 0;
    v18 = &impl[v4];
    v18[6592] = 0;
    v18[6662] = 0;
  }

  else
  {
    v14 = *v9;
    v15 = (*v9 + 8 * v4);
    *v15 = 0;
    v16 = &impl[v4];
    v16[6592] = 0;
    v15[31] = 0;
    v16[6662] = 0;
    *(v14 + 4 * v4 + 17516) = 0;
    v15[2205] = 0;
  }

LABEL_49:
  v60 = &impl[v4 > 0x3F];
  v60[9762] |= 1 << v4;
  v60[9768] |= 1 << v4;
  impl[9810] |= 0xC0uLL;
}

- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v19[1] = *MEMORY[0x29EDCA608];
  v8 = [(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation];
  if (v8)
  {
    MEMORY[0x2A1C7C4A8](v8);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = v19 - v10;
    if (length)
    {
      v12 = (v19 - v10);
      v13 = length;
      do
      {
        v14 = *a3++;
        *v12++ = [v14 visibleFunctionTable];
        --v13;
      }

      while (v13);
    }

    [(AGXG18PFamilyRenderContext *)self setMeshVisibleFunctionTables:v11 withBufferRange:location, length];
  }

  else
  {
    for (; length; --length)
    {
      v15 = *a3;
      impl = self->_impl;
      v17 = impl[3495];
      if (!v17)
      {
        v18 = *a3;
        std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
        v15 = v18;
        impl[3495] = v17;
      }

      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setIntersectionFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(v17, v15, location, v17 + 24048);
      LODWORD(location) = location + 1;
      ++a3;
    }
  }
}

- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation])
  {
    v7 = [a3 visibleFunctionTable];

    [(AGXG18PFamilyRenderContext *)self setMeshVisibleFunctionTable:v7 atBufferIndex:a4];
  }

  else
  {
    impl = self->_impl;
    v9 = impl[3495];
    if (!v9)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
      impl[3495] = v9;
    }

    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setIntersectionFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(v9, a3, a4, v9 + 24048);
  }
}

- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v19[1] = *MEMORY[0x29EDCA608];
  v8 = [(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation];
  if (v8)
  {
    MEMORY[0x2A1C7C4A8](v8);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = v19 - v10;
    if (length)
    {
      v12 = (v19 - v10);
      v13 = length;
      do
      {
        v14 = *a3++;
        *v12++ = [v14 visibleFunctionTable];
        --v13;
      }

      while (v13);
    }

    [(AGXG18PFamilyRenderContext *)self setObjectVisibleFunctionTables:v11 withBufferRange:location, length];
  }

  else
  {
    for (; length; --length)
    {
      v15 = *a3;
      impl = self->_impl;
      v17 = impl[3495];
      if (!v17)
      {
        v18 = *a3;
        std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
        v15 = v18;
        impl[3495] = v17;
      }

      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setIntersectionFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(v17, v15, location, v17 + 72);
      LODWORD(location) = location + 1;
      ++a3;
    }
  }
}

- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation])
  {
    v7 = [a3 visibleFunctionTable];

    [(AGXG18PFamilyRenderContext *)self setObjectVisibleFunctionTable:v7 atBufferIndex:a4];
  }

  else
  {
    impl = self->_impl;
    v9 = impl[3495];
    if (!v9)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
      impl[3495] = v9;
    }

    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setIntersectionFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(v9, a3, a4, v9 + 72);
  }
}

- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = AGXG18PFamilyRenderContext;
    [(IOGPUMetalRenderCommandEncoder *)&v9 setTileIntersectionFunctionTables:a3 withBufferRange:location, length];
  }

  else
  {
    for (; length; --length)
    {
      v8 = *a3++;
      AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTileProgramIntersectionFunctionTable(self->_impl + 2664, v8, location);
      LODWORD(location) = location + 1;
    }
  }
}

- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation])
  {
    v8.receiver = self;
    v8.super_class = AGXG18PFamilyRenderContext;
    [(IOGPUMetalRenderCommandEncoder *)&v8 setTileIntersectionFunctionTable:a3 atBufferIndex:a4];
  }

  else
  {
    v7 = self->_impl + 2664;

    AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTileProgramIntersectionFunctionTable(v7, a3, a4);
  }
}

- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = AGXG18PFamilyRenderContext;
    [(IOGPUMetalRenderCommandEncoder *)&v9 setFragmentIntersectionFunctionTables:a3 withBufferRange:location, length];
  }

  else
  {
    for (; length; --length)
    {
      v8 = *a3++;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setFragmentProgramIntersectionFunctionTable(self->_impl, v8, location);
      LODWORD(location) = location + 1;
    }
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation])
  {
    v8.receiver = self;
    v8.super_class = AGXG18PFamilyRenderContext;
    [(IOGPUMetalRenderCommandEncoder *)&v8 setFragmentIntersectionFunctionTable:a3 atBufferIndex:a4];
  }

  else
  {
    impl = self->_impl;

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setFragmentProgramIntersectionFunctionTable(impl, a3, a4);
  }
}

- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = AGXG18PFamilyRenderContext;
    [(IOGPUMetalRenderCommandEncoder *)&v9 setVertexIntersectionFunctionTables:a3 withBufferRange:location, length];
  }

  else
  {
    for (; length; --length)
    {
      v8 = *a3++;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramIntersectionFunctionTable(self->_impl, v8, location);
      LODWORD(location) = location + 1;
    }
  }
}

- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation])
  {
    v8.receiver = self;
    v8.super_class = AGXG18PFamilyRenderContext;
    [(IOGPUMetalRenderCommandEncoder *)&v8 setVertexIntersectionFunctionTable:a3 atBufferIndex:a4];
  }

  else
  {
    impl = self->_impl;

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramIntersectionFunctionTable(impl, a3, a4);
  }
}

- (void)setMeshVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3;
      impl = self->_impl;
      v10 = impl[3495];
      if (!v10)
      {
        v11 = *a3;
        std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
        v8 = v11;
        impl[3495] = v10;
      }

      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVisibleFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(v10, v8, location++, v10 + 24048);
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  impl = self->_impl;
  v7 = impl[3495];
  if (!v7)
  {
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v5 = a3;
    impl[3495] = v7;
  }

  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVisibleFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(v7, v5, v4, v7 + 24048);
}

- (void)setObjectVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3;
      impl = self->_impl;
      v10 = impl[3495];
      if (!v10)
      {
        v11 = *a3;
        std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
        v8 = v11;
        impl[3495] = v10;
      }

      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVisibleFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(v10, v8, location++, v10 + 72);
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  impl = self->_impl;
  v7 = impl[3495];
  if (!v7)
  {
    std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(impl[3499]);
    v5 = a3;
    impl[3495] = v7;
  }

  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVisibleFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(v7, v5, v4, v7 + 72);
}

- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTileProgramVisibleFunctionTable(self->_impl + 333, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setFragmentProgramVisibleFunctionTable(self->_impl, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramVisibleFunctionTable(self->_impl, v8, location++);
      --length;
    }

    while (length);
  }
}

- (BOOL)setMTLCounterSampleLocationWithBuffer:(id)a3 vertexStartIndex:(unsigned int)a4 vertexEndIndex:(unsigned int)a5 fragmentStartIndex:(unsigned int)a6 fragmentEndIndex:(unsigned int)a7
{
  if (a3)
  {
    impl = self->_impl;
    v9 = *(impl + 237);
    *(impl + 19644) = a4;
    *(impl + 19645) = a5;
    *(impl + 19646) = a6;
    *(impl + 19647) = a7;
    v10 = AGX::CounterSamplingContextGen1::validateSampleIndex(a3, impl + 19644);
    v11 = AGX::CounterSamplingContextGen1::validateSampleIndex(a3, impl + 19645);
    v12 = AGX::CounterSamplingContextGen1::validateSampleIndex(a3, impl + 19646);
    v13 = AGX::CounterSamplingContextGen1::validateSampleIndex(a3, impl + 19647);
    if ((v10 & 1) != 0 || (v11 & 1) != 0 || (v12 & 1) != 0 || v13)
    {
      v13 = AGX::CounterSamplingContextGen1::setCounterSampleBuffer((impl + 78568), a3);
      if (v13)
      {
        if (*(impl + 9821))
        {
          if (v9)
          {
            MTLResourceListAddResource();
          }

          IOGPUResourceListAddResource();
        }

        LOBYTE(v13) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)setMTLCounterSampleLocationWithBuffer:(id)a3 startIndex:(unsigned int)a4 endIndex:(unsigned int)a5 dm:(unsigned int)a6
{
  v15 = *MEMORY[0x29EDCA608];
  fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Please use setMTLCounterSampleLocationWithBuffer:vertexStartIndex:vertexEndIndex:fragmentStartIndex:fragmentEndIndex:\n", "agxa_render_objc.mm", 1324, "[AGXG18PFamilyRenderContext setMTLCounterSampleLocationWithBuffer:startIndex:endIndex:dm:]");
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v10 = "agxa_render_objc.mm";
    v11 = 1024;
    v12 = 1324;
    v13 = 2080;
    v14 = "[AGXG18PFamilyRenderContext setMTLCounterSampleLocationWithBuffer:startIndex:endIndex:dm:]";
    _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Please use setMTLCounterSampleLocationWithBuffer:vertexStartIndex:vertexEndIndex:fragmentStartIndex:fragmentEndIndex:\n", buf, 0x1Cu);
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "agxa_render_objc.mm";
    v11 = 1024;
    v12 = 1324;
    v13 = 2080;
    v14 = "[AGXG18PFamilyRenderContext setMTLCounterSampleLocationWithBuffer:startIndex:endIndex:dm:]";
    _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Please use setMTLCounterSampleLocationWithBuffer:vertexStartIndex:vertexEndIndex:fragmentStartIndex:fragmentEndIndex:\n", buf, 0x1Cu);
  }

  [(AGXG18PFamilyRenderContext *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (void)filterCounterRangeWithFirstBatch:(unsigned int)a3 lastBatch:(unsigned int)a4 filterIndex:(unsigned int)a5
{
  impl = self->_impl;
  impl[483] = a3;
  impl[484] = a4;
}

- (void)addSplitHandler:(id)a3
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3052000000;
  v4[3] = __Block_byref_object_copy__7684;
  v4[4] = __Block_byref_object_dispose__7685;
  v4[5] = self;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __46__AGXG18PFamilyRenderContext_addSplitHandler___block_invoke;
  v3[3] = &unk_29F342140;
  v3[4] = a3;
  v3[5] = v4;
  _Block_copy(v3);
  operator new();
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  impl = self->_impl;
  v6 = 4 * a5;
  *(impl[2694] + v6 + 672) = a4 ^ 0x80000000;
  *(impl[9130] + v6 + 736) = a4 ^ 0x80000000;
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4 withRenderTargetArrayIndex:(unsigned int)a5 withCondition:(int64_t)a6
{
  impl = self->_impl;
  v9 = *&a3->var0;
  var2 = a3->var2;
  v7 = *&a4->var0.var2;
  v8[0] = *&a4->var0.var0;
  v8[1] = v7;
  v8[2] = *&a4->var1.var1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWarpedThreads(impl, &v9, v8, a5 | 0x100000000, a6);
}

- (void)dispatchThreadsPerTile:(id *)a3 withCondition:(int64_t)a4
{
  impl = self->_impl;
  v8 = *a3;
  v5 = impl[299];
  memset(v9, 0, sizeof(v9));
  v6 = *(v5 + 3568);
  *&v7 = v6;
  *(&v7 + 1) = HIDWORD(v6);
  v10 = v7;
  v11 = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsImpl<false>(impl, &v8, v9, 1uLL, 0, a4);
}

- (void)resetTileCondition
{
  impl = self->_impl;
  v3 = impl[299];
  memset(v9, 0, sizeof(v9));
  v4 = *(v3 + 3568);
  *&v5 = v4;
  *(&v5 + 1) = HIDWORD(v4);
  v10 = v5;
  v11 = 1;
  v6 = *(v3 + 4932);
  *&v5 = v6;
  *(&v5 + 1) = HIDWORD(v6);
  v7 = v5;
  v8 = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsImpl<false>(impl, &v7, v9, 1uLL, 0, 3);
  impl[9810] |= 0x3BuLL;
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
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWarpedThreads(impl, &v10, v9, a5 | 0x100000000, 0);
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
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWarpedThreads(impl, &v9, v8, 0, 0);
  *(self->_impl + 487) = *(self->_impl + 485);
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
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsImpl<false>(impl, &v8, v9, 1uLL, 0, 0);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length_low = LODWORD(a6.length);
  if (LODWORD(a6.length))
  {
    location = a6.location;
    impl = self->_impl;
    while (*a3)
    {
      v13 = impl[3331];
      v14 = *(v13 + 848);
      v15 = *a4;
      v16 = *a5;
      v17 = *a3 + 48;
      v19 = *(*a3 + 4);
      v18 = *(*a3 + 5);
      v23[0] = *v17;
      v23[1] = v19;
      v23[2] = v18;
      if (v17[71] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v17 + 6), *(v17 + 7));
      }

      else
      {
        v20 = *(v17 + 3);
        __p.__r_.__value_.__r.__words[2] = *(v17 + 8);
        *&__p.__r_.__value_.__l.__data_ = v20;
      }

      *(&v23[0] + 1) = __PAIR64__(v16, v15);
      Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v14, v23, v13, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!impl[337])
        {
          goto LABEL_15;
        }

LABEL_14:
        MTLResourceListAddResource();
        goto LABEL_15;
      }

      if (impl[337])
      {
        goto LABEL_14;
      }

LABEL_15:
      v22 = location;
      if (Sampler)
      {
        p_impl = &Sampler->_impl;
        *(impl[2693] + 32 * location + 16888) = *&Sampler->_impl.desc.var1;
        if (LODWORD(Sampler[1].super._device))
        {
          p_impl = LODWORD(Sampler[1].super._device);
        }
      }

      else
      {
        p_impl = 0;
        *(impl[2693] + 32 * location + 16888) = 0;
      }

      ++location;
      *(impl[2693] + 32 * v22 + 16880) = p_impl;
      ++a5;
      ++a4;
      ++a3;
      if (!--length_low)
      {
        return;
      }
    }

    Sampler = 0;
    if (!impl[337])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }
}

- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = a6;
  impl = self->_impl;
  if (a3)
  {
    v8 = impl[3331];
    v9 = *(v8 + 848);
    v10 = *(a3 + 4);
    v17[0] = *(a3 + 3);
    v17[1] = v10;
    v17[2] = *(a3 + 5);
    if (*(a3 + 119) < 0)
    {
      v12 = a5;
      v13 = a4;
      std::string::__init_copy_ctor_external(&__p, *(a3 + 12), *(a3 + 13));
      a4 = v13;
      a5 = v12;
    }

    else
    {
      __p = *(a3 + 4);
    }

    *(v17 + 2) = a4;
    *(v17 + 3) = a5;
    Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v9, v17, v8, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    Sampler = 0;
  }

  if (impl[337])
  {
    MTLResourceListAddResource();
  }

  if (Sampler)
  {
    p_impl = &Sampler->_impl;
    v15 = impl + 2693;
    v16 = v6;
    *(impl[2693] + 32 * v6 + 16888) = *&Sampler->_impl.desc.var1;
    if (LODWORD(Sampler[1].super._device))
    {
      p_impl = LODWORD(Sampler[1].super._device);
    }
  }

  else
  {
    p_impl = 0;
    v15 = impl + 2693;
    v16 = v6;
    *(impl[2693] + 32 * v6 + 16888) = 0;
  }

  *(*v15 + 32 * v16 + 16880) = p_impl;
}

- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  impl = self->_impl;
  if (LODWORD(a4.length) && impl[337])
  {
    length_low = LODWORD(a4.length);
    v9 = a3;
    do
    {
      if (*v9)
      {
        MTLResourceListAddResource();
      }

      ++v9;
      --length_low;
    }

    while (length_low);
  }

  if (length)
  {
    v10 = length;
    do
    {
      v11 = *v6;
      if (*v6)
      {
        v11 += 6;
        *(impl[2693] + 32 * location + 16888) = v11[9];
        if (*(v11 + 24))
        {
          v11 = *(v11 + 24);
        }
      }

      else
      {
        *(impl[2693] + 32 * location + 16888) = 0;
      }

      *(impl[2693] + 32 * location++ + 16880) = v11;
      ++v6;
      --v10;
    }

    while (v10);
  }
}

- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  impl = self->_impl;
  if (impl[337])
  {
    MTLResourceListAddResource();
  }

  if (a3)
  {
    v7 = a3 + 48;
    v8 = impl + 2693;
    v9 = v4;
    *(impl[2693] + 32 * v4 + 16888) = *(a3 + 15);
    if (*(a3 + 36))
    {
      v7 = *(a3 + 36);
    }
  }

  else
  {
    v7 = 0;
    v8 = impl + 2693;
    v9 = v4;
    *(impl[2693] + 32 * v4 + 16888) = 0;
  }

  *(*v8 + 32 * v9 + 16880) = v7;
}

- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4
{
  LODWORD(v4) = a4.length;
  location = a4.location;
  v6 = a3;
  impl = self->_impl;
  if (LODWORD(a4.length) && impl[337])
  {
    length_low = LODWORD(a4.length);
    v9 = a3;
    do
    {
      if (*v9)
      {
        MTLResourceListAddResource();
      }

      ++v9;
      --length_low;
    }

    while (length_low);
  }

  if (v4)
  {
    v10 = impl + 2765;
    v4 = v4;
    v11 = MEMORY[0x29EDC5638];
    v12 = location;
    for (i = 3 * location; ; i += 3)
    {
      v27 = *v6;
      if (*v6)
      {
        break;
      }

      v14 = v12 << 7;
      v15 = impl[2693] + v14;
      v16 = v12;
      bzero((v15 + 496), 0x38uLL);
      v17 = 0;
      *(v15 + 544) = 0;
      v18 = impl[2693];
      v19 = v18 + 8 * (v12 > 0x3F);
      *(v19 + 17888) &= ~(1 << v12);
      *(v19 + 17904) &= ~(1 << v12);
      v20 = *(impl[3331] + 848);
      v21 = v18 + v14;
      v22 = *(v20 + 16496);
      *(v21 + 560) = *(v20 + 16480);
      *(v21 + 576) = v22;
      v23 = *(impl[3331] + 848);
      v24 = impl[2693] + v14;
      v25 = *(v23 + 16528);
      *(v24 + 592) = *(v23 + 16512);
      *(v24 + 608) = v25;
      v26 = impl[2693];
LABEL_10:
      *(v26 + (v16 << 7) + 552) = v17;
      ++v12;
      ++v6;
      if (!--v4)
      {
        return;
      }
    }

    v28 = v27[74];
    v29 = v12 << 7;
    v30 = impl[2693] + v29;
    v31 = *(v28 + 432);
    *(v30 + 560) = *(v28 + 416);
    *(v30 + 576) = v31;
    v32 = impl[2693] + v29;
    v33 = *(v28 + 464);
    *(v32 + 592) = *(v28 + 448);
    *(v32 + 608) = v33;
    v34 = v27[74];
    if (v34)
    {
      v35 = *(v34 + 592);
      v34 = *(v34 + 600);
    }

    else
    {
      v35 = 0;
    }

    v36 = impl[336];
    v37 = v36[2].i64[1];
    if (*(v37 + 480) == 1)
    {
      v38 = v36[3];
      v39 = v36[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v38), vceqzq_s64(v39))))))
      {
        v40 = v27 + *v11;
        if ((*(v40 + 23) & 0x10) != 0)
        {
          v40 = *v40;
        }

        v41 = *v40;
        if (!v41)
        {
          goto LABEL_24;
        }

        v42 = *(v41 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v41), vceqzq_s64(v42))))))
        {
          v43 = vandq_s8(v42, v39);
          v44 = v43.u64[1];
          if (v43.i64[1])
          {
            v45 = 3;
LABEL_37:
            v56 = &v36->i8[8 * v45];
            v57 = __clz(v44) ^ 0x3F;
            v41 = (*(v56 + 10) >> v57) & 1;
            v46 = (*(v56 + 14) >> v57) & 1;
            goto LABEL_25;
          }

          v44 = v43.i64[0];
          if (v43.i64[0])
          {
            v45 = 2;
            goto LABEL_37;
          }

          v55 = vandq_s8(*v41, v38);
          v44 = v55.u64[1];
          if (v55.i64[1])
          {
            v45 = 1;
            goto LABEL_37;
          }

          v45 = 0;
          v41 = 0;
          v46 = 0;
          v44 = v55.i64[0];
          if (v55.i64[0])
          {
            goto LABEL_37;
          }

LABEL_25:
          v47 = v12 > 0x3F;
          v48 = (v37 + 8 * v47);
          v49 = 1 << v12;
          v48[10] = v48[10] & ~(1 << v12) | (v41 << v12);
          v48[30] = v48[30] & ~(1 << v12) | (v46 << v12);
          v48[50] &= ~(1 << v12);
          v10[i] = v27 + *v11;
          if (v35)
          {
            v35 += *v11;
          }

          v10[i + 1] = v35;
          if (v34)
          {
            v34 += *v11;
          }

          v16 = v12;
          v10[i + 2] = v34;
          v50 = impl[2693] + (v12 << 7);
          v51 = *(v28 + 72);
          v52 = *(v28 + 88);
          v53 = *(v28 + 104);
          *(v50 + 544) = *(v28 + 120);
          *(v50 + 512) = v52;
          *(v50 + 528) = v53;
          *(v50 + 496) = v51;
          v26 = impl[2693];
          *(v26 + 8 * v47 + 17888) |= v49;
          v54 = *(v28 + 584);
          if (v54)
          {
            v54 = *(v54 + 1304) != 0;
          }

          *(v26 + 17904 + 8 * v47) = *(v26 + 17904 + 8 * v47) & ~v49 | (v54 << (v12 & 0x3F));
          v17 = *(v27[74] + 120);
          goto LABEL_10;
        }
      }
    }

    v41 = 0;
LABEL_24:
    v46 = 0;
    goto LABEL_25;
  }
}

- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  if (!a3)
  {
    v9 = a4;
    v10 = a4 << 7;
    v11 = impl[2693] + v10;
    v12 = a4;
    bzero((v11 + 496), 0x38uLL);
    v13 = 0;
    *(v11 + 544) = 0;
    v14 = impl[2693];
    v15 = v14 + 8 * (v12 > 0x3F);
    *(v15 + 17888) &= ~(1 << v12);
    *(v15 + 17904) &= ~(1 << v12);
    v16 = *(impl[3331] + 848);
    v17 = v14 + v10;
    v18 = *(v16 + 16496);
    *(v17 + 560) = *(v16 + 16480);
    *(v17 + 576) = v18;
    v19 = *(impl[3331] + 848);
    v20 = impl[2693] + v10;
    v21 = *(v19 + 16528);
    *(v20 + 592) = *(v19 + 16512);
    *(v20 + 608) = v21;
    goto LABEL_26;
  }

  v6 = *(a3 + 74);
  if (v6)
  {
    v7 = *(v6 + 592);
    v8 = *(v6 + 600);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v22 = impl[336];
  v23 = v22[2].i64[1];
  v24 = MEMORY[0x29EDC5638];
  if (*(v23 + 480) != 1)
  {
    goto LABEL_14;
  }

  v25 = v22[3];
  v26 = v22[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v26))))) & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = a3 + *MEMORY[0x29EDC5638];
  if ((v27[23] & 0x10) != 0)
  {
    v27 = *v27;
  }

  v28 = *v27;
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = *(v28 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v28), vceqzq_s64(v29))))) & 1) == 0)
  {
LABEL_14:
    v28 = 0;
LABEL_15:
    v33 = 0;
    goto LABEL_16;
  }

  v30 = vandq_s8(v29, v26);
  v31 = v30.u64[1];
  if (v30.i64[1])
  {
    v32 = 3;
LABEL_32:
    v51 = &v22->i8[8 * v32];
    v52 = __clz(v31) ^ 0x3F;
    v28 = (*(v51 + 10) >> v52) & 1;
    v33 = (*(v51 + 14) >> v52) & 1;
    goto LABEL_16;
  }

  v31 = v30.i64[0];
  if (v30.i64[0])
  {
    v32 = 2;
    goto LABEL_32;
  }

  v50 = vandq_s8(*v28, v25);
  v31 = v50.u64[1];
  if (v50.i64[1])
  {
    v32 = 1;
    goto LABEL_32;
  }

  v32 = 0;
  v28 = 0;
  v33 = 0;
  v31 = v50.i64[0];
  if (v50.i64[0])
  {
    goto LABEL_32;
  }

LABEL_16:
  v34 = a4 > 0x3F;
  v35 = (v23 + 8 * v34);
  v36 = 1 << a4;
  v35[10] = v35[10] & ~(1 << a4) | (v28 << a4);
  v35[30] = v35[30] & ~(1 << a4) | (v33 << a4);
  v35[50] &= ~(1 << a4);
  v37 = 3 * a4;
  v38 = impl + 2765;
  impl[(3 * a4) + 2765] = a3 + *v24;
  if (v7)
  {
    v7 += *v24;
  }

  v38[v37 + 1] = v7;
  if (v8)
  {
    v39 = v8 + *v24;
  }

  else
  {
    v39 = 0;
  }

  v38[v37 + 2] = v39;
  v9 = a4;
  v40 = impl[2693] + (a4 << 7);
  v41 = *(v6 + 72);
  v42 = *(v6 + 88);
  v43 = *(v6 + 104);
  *(v40 + 544) = *(v6 + 120);
  *(v40 + 512) = v42;
  *(v40 + 528) = v43;
  *(v40 + 496) = v41;
  v44 = impl[2693];
  *(v44 + 8 * v34 + 17888) |= v36;
  v45 = *(v6 + 584);
  if (v45)
  {
    v45 = *(v45 + 1304) != 0;
  }

  *(v44 + 17904 + 8 * v34) = *(v44 + 17904 + 8 * v34) & ~v36 | (v45 << (a4 & 0x3F));
  v46 = v44 + (a4 << 7);
  v47 = *(v6 + 432);
  *(v46 + 560) = *(v6 + 416);
  *(v46 + 576) = v47;
  v48 = impl[2693] + (a4 << 7);
  v49 = *(v6 + 464);
  *(v48 + 592) = *(v6 + 448);
  *(v48 + 608) = v49;
  if (impl[337])
  {
    MTLResourceListAddResource();
  }

  v13 = *(*(a3 + 74) + 120);
LABEL_26:
  *(impl[2693] + (v9 << 7) + 552) = v13;
}

- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a3;
  impl = self->_impl;
  if (LODWORD(a5.length) && impl[337])
  {
    length_low = LODWORD(a5.length);
    v11 = a3;
    do
    {
      if (*v11)
      {
        MTLResourceListAddResource();
      }

      ++v11;
      --length_low;
    }

    while (length_low);
  }

  if (length)
  {
    v12 = impl + 3184;
    v13 = impl + 3254;
    v14 = length;
    v15 = MEMORY[0x29EDC5638];
    v16 = location;
    while (1)
    {
      if (v16 <= 0x22)
      {
        impl[v16 + 3149] = 0;
      }

      v20 = *v8;
      if (!*v8)
      {
        if (v16 > 0x1E)
        {
          v44 = impl[2694] + 8 * (v16 - 31);
          *(v44 + 48) = 0;
          v33 = (v44 + 360);
          v31 = v16;
        }

        else
        {
          v31 = v16;
          v32 = (impl[2693] + 8 * v16);
          *v32 = 0;
          v33 = v32 + 31;
        }

        *v33 = 0;
        v12[v31] = 0;
        v13[v31] = 0;
        if (location <= 0x1E)
        {
          v45 = impl[2693];
          *(v45 + 4 * location + 17516) = 0;
          *(v45 + 8 * location + 17640) = 0;
        }

        goto LABEL_12;
      }

      v21 = &v20[*v15];
      v22 = *(v21 + 1);
      v23 = *(v21 + 3);
      v24 = *a4 + v22;
      v25 = v23 + *a4;
      if (v16 >= 0x1F)
      {
        v34 = impl[2694] + 8 * (v16 - 31);
        *(v34 + 48) = v24;
        *(v34 + 360) = v25;
        v12[v16] = v22;
        v13[v16] = v23;
      }

      else
      {
        v26 = *(v21 + 4);
        v27 = impl[2693];
        v28 = v16;
        v29 = (v27 + v28 * 8);
        *v29 = v24;
        v12[v28] = v22;
        v29[31] = v25;
        v13[v28] = v23;
        *(v27 + 4 * v16 + 17516) = v26;
        v30 = (v27 + v28 * 8 + 17640);
        *v30 = v26;
        v30[1] = v22 >> 8;
      }

      impl[v16 + 2695] = &v20[*v15];
      v35 = impl[336];
      v36 = v35[2].i64[1];
      if (*(v36 + 480) != 1)
      {
        break;
      }

      v37 = v35[3];
      v38 = v35[4];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v37), vceqzq_s64(v38))))) & 1) == 0)
      {
        break;
      }

      v39 = &v20[*v15];
      if ((*(v39 + 23) & 0x10) != 0)
      {
        v39 = *v39;
      }

      v17 = *v39;
      if (!v17)
      {
        goto LABEL_10;
      }

      v40 = *(v17 + 16);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v17), vceqzq_s64(v40))))) & 1) == 0)
      {
        break;
      }

      v41 = vandq_s8(v40, v38);
      v42 = v41.u64[1];
      if (v41.i64[1])
      {
        v43 = 3;
LABEL_37:
        v47 = &v35->i8[8 * v43];
        v48 = __clz(v42) ^ 0x3F;
        v17 = (*(v47 + 10) >> v48) & 1;
        v18 = (*(v47 + 14) >> v48) & 1;
        goto LABEL_11;
      }

      v42 = v41.i64[0];
      if (v41.i64[0])
      {
        v43 = 2;
        goto LABEL_37;
      }

      v46 = vandq_s8(*v17, v37);
      v42 = v46.u64[1];
      if (v46.i64[1])
      {
        v43 = 1;
        goto LABEL_37;
      }

      v43 = 0;
      v17 = 0;
      v18 = 0;
      v42 = v46.i64[0];
      if (v46.i64[0])
      {
        goto LABEL_37;
      }

LABEL_11:
      v19 = (v36 + 8 * (v16 > 0x3F));
      v19[4] = v19[4] & ~(1 << v16) | (v17 << v16);
      v19[24] = v19[24] & ~(1 << v16) | (v18 << v16);
      v19[44] &= ~(1 << v16);
LABEL_12:
      ++v16;
      ++a4;
      ++v8;
      if (!--v14)
      {
        return;
      }
    }

    v17 = 0;
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }
}

- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  v5 = &impl[a4];
  v6 = *(v5 + 3184);
  v7 = *(v5 + 3254);
  v8 = v6 + a3;
  if (a4 >= 0x1F)
  {
    v11 = impl[2694] + 8 * (a4 - 31);
    *(v11 + 48) = v8;
    *(v11 + 360) = v7 + a3;
  }

  else
  {
    v9 = impl[2693];
    v10 = v9 + 8 * a4;
    *v10 = v8;
    *(v10 + 248) = v7 + a3;
    *(v10 + 17640) = *(v9 + 4 * a4 + 17516);
  }
}

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  impl = self->_impl;
  if (a5 <= 0x22)
  {
    impl[(a5 & 0x3F) + 3149] = 0;
  }

  if (a3)
  {
    v6 = MEMORY[0x29EDC5638];
    v7 = a3 + *MEMORY[0x29EDC5638];
    v8 = v7[2];
    v9 = v7[3];
    v10 = v7[1];
    v11 = &impl[a5];
    v11[3184] = v10;
    v11[3254] = v9;
    v12 = v10 + a4;
    if (a5 >= 0x1F)
    {
      v19 = impl[2694] + 8 * (a5 - 31);
      *(v19 + 48) = v12;
      *(v19 + 360) = v9 + a4;
    }

    else
    {
      v13 = impl[2693];
      v14 = v13 + 8 * a5;
      *v14 = v12;
      *(v13 + 4 * a5 + 17516) = v8;
      *(v14 + 248) = v9 + a4;
      *(v14 + 17640) = v8;
      *(v14 + 17644) = v10 >> 8;
    }

    impl[a5 + 2695] = a3 + *v6;
    v20 = impl[336];
    v21 = v20[2].i64[1];
    if (*(v21 + 480) == 1)
    {
      v22 = v20[3];
      v23 = v20[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))))
      {
        v24 = a3 + *v6;
        if ((v24[23] & 0x10) != 0)
        {
          v24 = *v24;
        }

        v25 = *v24;
        if (!v25)
        {
          goto LABEL_18;
        }

        v26 = *(v25 + 16);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v26))))))
        {
          v27 = vandq_s8(v26, v23);
          v28 = v27.u64[1];
          if (v27.i64[1])
          {
            v29 = 3;
          }

          else
          {
            v28 = v27.i64[0];
            if (v27.i64[0])
            {
              v29 = 2;
            }

            else
            {
              v34 = vandq_s8(*v25, v22);
              v28 = v34.u64[1];
              if (v34.i64[1])
              {
                v29 = 1;
              }

              else
              {
                v29 = 0;
                v25 = 0;
                v30 = 0;
                v28 = v34.i64[0];
                if (!v34.i64[0])
                {
                  goto LABEL_19;
                }
              }
            }
          }

          v35 = &v20->i8[8 * v29];
          v36 = __clz(v28) ^ 0x3F;
          v25 = (*(v35 + 10) >> v36) & 1;
          v30 = (*(v35 + 14) >> v36) & 1;
LABEL_19:
          v31 = (v21 + 8 * (a5 > 0x3F));
          v31[4] = v31[4] & ~(1 << a5) | (v25 << a5);
          v31[24] = v31[24] & ~(1 << a5) | (v30 << a5);
          v31[44] &= ~(1 << a5);
          if (impl[337])
          {
            MTLResourceListAddResource();
          }

          return;
        }
      }
    }

    v25 = 0;
LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  if (a5 >= 0x1F)
  {
    v32 = impl[2694] + 8 * (a5 - 31);
    *(v32 + 48) = 0;
    *(v32 + 360) = 0;
    v33 = &impl[a5];
    v33[3184] = 0;
    v33[3254] = 0;
  }

  else
  {
    v15 = impl[2693];
    v16 = a5 & 0x1F;
    v17 = (v15 + v16 * 8);
    *v17 = 0;
    v17[31] = 0;
    v18 = &impl[v16];
    v18[3184] = 0;
    v18[3254] = 0;
    *(v15 + 4 * (a5 & 0x1F) + 17516) = 0;
    v17[2205] = 0;
  }
}

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  impl = self->_impl;
  v8 = a4 + 15;
  v9 = impl[335];
  v10 = (a4 + 15) | 0xF;
  v11 = v9[22] + v10;
  if (v11 > v9[21])
  {
    v19 = a3;
    v20 = AGX::DataBufferAllocator<44ul>::growNoInline(impl[335], 4, 0);
    a3 = v19;
    if (!v20)
    {
      goto LABEL_3;
    }

    v11 = v9[22] + v10;
    if (v11 > v9[21])
    {
      abort();
    }
  }

  v9[23] = v11;
LABEL_3:
  v12 = impl[335];
  v13 = ((*(v12 + 176) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v13[*(v12 + 192)];
  *(v12 + 176) = &v13[v8 & 0xFFFFFFFFFFFFFFF0];
  memcpy(v13, a3, a4);
  v15 = *(*(impl[335] + 24) + 288) + *MEMORY[0x29EDC5638];
  v16 = &impl[v5];
  if (v5 > 0x22 || (v16[3149] = 0, v5 >= 0x1F))
  {
    *(impl[2694] + 8 * (v5 - 31) + 48) = v14;
    v16[2695] = v15;
  }

  else
  {
    v17 = impl[2693];
    v18 = v17 + 8 * v5;
    *v18 = v14;
    *(v17 + 4 * v5 + 17516) = a4;
    impl[v5 + 2695] = v15;
    *(v18 + 17640) = a4;
    *(v18 + 17644) = v14 >> 8;
  }
}

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
{
  v16 = a9;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  v18 = *(impl + 6137);
  *(impl + 9934) |= 0x8000uLL;
  *(v18 + 716) = a3;
  *(v18 + 680) = a4 != 0;
  *(impl + 9772) |= 0x20uLL;
  *(impl + 9810) |= 0x40uLL;
  v19 = *(impl + 3469);
  if (!v19)
  {
    v19 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(*(impl + 3473));
    v16 = a9;
    *(impl + 3469) = v19;
  }

  (*(*v19 + 40))(v19, a3, a4, a5, a6, a7, a8, v16);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
{
  v18 = a9;
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  *(impl + 9934) |= 0x8000uLL;
  v20 = *(impl + 6137);
  v20[179] = a3;
  v20[170] = a6 != 0;
  v20[168] = a11;
  *(impl + 9772) |= 0x20uLL;
  *(impl + 9810) |= 0x40uLL;
  v21 = *(impl + 3469);
  if (!v21)
  {
    v22 = a8;
    v21 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(*(impl + 3473));
    a8 = v22;
    v18 = a9;
    *(impl + 3469) = v21;
  }

  (*(*v21 + 32))(v21, a3, a4, a5, a6, a7, a8, v18, __PAIR64__(a11, a10));
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
{
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  v14 = *(impl + 6137);
  *(impl + 9934) |= 0x8000uLL;
  *(v14 + 716) = a3;
  *(v14 + 680) = a4 != 0;
  *(impl + 9772) |= 0x20uLL;
  *(impl + 9810) |= 0x40uLL;
  v15 = *(impl + 3469);
  if (!v15)
  {
    v15 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(*(impl + 3473));
    *(impl + 3469) = v15;
  }

  (*(*v15 + 40))(v15, a3, a4, a5, 0, 0, a6, a7);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
{
  impl = self->_impl;
  *(impl + 486) = *(impl + 485);
  *(impl + 9934) |= 0x8000uLL;
  v16 = *(impl + 6137);
  v16[179] = a3;
  v16[170] = a6 != 0;
  v16[168] = a9;
  *(impl + 9772) |= 0x20uLL;
  *(impl + 9810) |= 0x40uLL;
  v17 = *(impl + 3469);
  if (!v17)
  {
    v18 = a8;
    v17 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(*(impl + 3473));
    LODWORD(a8) = v18;
    *(impl + 3469) = v17;
  }

  (*(*v17 + 32))(v17, a3, a4, a5, a6, a7, 0, 0, __PAIR64__(a9, a8));
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5
{
  impl = self->_impl;
  v6 = impl[3469];
  if (!v6)
  {
    v6 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(impl[3473]);
    impl[3469] = v6;
  }

  v7 = *(*v6 + 16);

  v7();
}

- (void)setTessellationFactorScale:(float)a3
{
  impl = self->_impl;
  v4 = impl[3469];
  if (!v4)
  {
    v6 = a3;
    v4 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(impl[3473]);
    a3 = v6;
    impl[3469] = v4;
  }

  v5 = *(*v4 + 24);

  v5(*&a3);
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  impl = self->_impl;
  if (AGX::BarrierTracker::addBackFacingBarrier((impl + 507), a3, a4, 1))
  {
    AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveVertexBarrier((impl + 6), 0);
    ++impl[19640];
    v5 = *(impl + 9);
    *v5 = 553648510;
    *(impl + 9) = v5 + 1;
  }
}

- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4
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
          v8 = impl[v11 + 9814];
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

- (void)updateFence:(id)a3 afterStages:(unint64_t)a4
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
          v8 = impl[v11 + 9812];
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

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  v68 = a8;
  v70 = a6;
  impl = self->_impl;
  impl[121].i32[2] = impl[121].i32[1];
  v11 = MEMORY[0x29EDC5638];
  v12 = *MEMORY[0x29EDC5638];
  v13 = a5 + v12;
  v14 = *(a5 + v12 + 8);
  v15 = *(a5 + v12 + 16);
  if (impl[1880].i64[1] == a5)
  {
    v28 = *MEMORY[0x29EDC5638];
    goto LABEL_29;
  }

  if ((v15 & 0x7FFFFFFF80) != 0 && (v15 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v18 = impl[125].i64[1];
    if (*(v18[2].i64[1] + 480) == 1)
    {
      v19 = v18[3];
      v20 = v18[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))))
      {
        v21 = (a5 + v12);
        if ((v15 & 0x1000000000000000) != 0)
        {
          v21 = *v13;
        }

        v22 = *v21;
        if (v22)
        {
          v23 = *v22;
          v24 = v22[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v22), vceqzq_s64(v24))))))
          {
            v25 = vandq_s8(v24, v20);
            v26 = v25.u64[1];
            if (v25.i64[1])
            {
              v27 = 3;
              goto LABEL_22;
            }

            v26 = v25.i64[0];
            if (v25.i64[0])
            {
              v27 = 2;
              goto LABEL_22;
            }

            v29 = vandq_s8(v23, v19);
            v26 = v29.u64[1];
            if (v29.i64[1])
            {
              v27 = 1;
              goto LABEL_22;
            }

            v26 = v29.i64[0];
            if (v29.i64[0])
            {
              v27 = 0;
LABEL_22:
              v30 = &v18->i8[8 * v27];
              v31 = *(v30 + 10);
              v32 = 1 << (__clz(v26) ^ 0x3Fu);
              v33 = (v32 & v31) != 0;
              if ((v32 & (*(v30 + 14) | v31)) != 0)
              {
                v34 = a5 + v12;
                if ((v15 & 0x1000000000000000) != 0)
                {
                  v34 = *v13;
                }

                v72 = v34;
                v73 = (v14 + 127) & 0xFFFFFFFFFFFFFF80;
                v74 = v15 >> 7;
                v75 = 1;
                v76 = v33;
                ResourceTracker<_ResourceGroupBinding>::addResource(v18, &v72, *(v13 + 12), 1);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (impl[118].i64[1])
  {
    MTLResourceListAddResource();
  }

  impl[1880].i64[1] = a5;
  v28 = *v11;
  v12 = *v11;
LABEL_29:
  v35 = &impl[1879].i8[1];
  v36 = *(a7 + v12 + 8);
  if (impl[1881].i64[0] == a7)
  {
    goto LABEL_56;
  }

  v37 = a7 + v28;
  v38 = *(v37 + 2);
  if ((v38 & 0x7FFFFFFF80) != 0 && (v38 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v40 = impl[125].i64[1];
    if (*(v40[2].i64[1] + 480) == 1)
    {
      v41 = v40[3];
      v42 = v40[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v41), vceqzq_s64(v42))))))
      {
        v43 = (a7 + v28);
        if ((v38 & 0x1000000000000000) != 0)
        {
          v43 = *v37;
        }

        v44 = *v43;
        if (v44)
        {
          v45 = *v44;
          v46 = v44[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v44), vceqzq_s64(v46))))))
          {
            v47 = vandq_s8(v46, v42);
            v48 = v47.u64[1];
            if (v47.i64[1])
            {
              v49 = 3;
              goto LABEL_49;
            }

            v48 = v47.i64[0];
            if (v47.i64[0])
            {
              v49 = 2;
              goto LABEL_49;
            }

            v50 = vandq_s8(v45, v41);
            v48 = v50.u64[1];
            if (v50.i64[1])
            {
              v49 = 1;
              goto LABEL_49;
            }

            v48 = v50.i64[0];
            if (v50.i64[0])
            {
              v49 = 0;
LABEL_49:
              v51 = &v40->i8[8 * v49];
              v52 = *(v51 + 10);
              v53 = 1 << (__clz(v48) ^ 0x3Fu);
              v54 = (v53 & v52) != 0;
              if ((v53 & (*(v51 + 14) | v52)) != 0)
              {
                v55 = (*(v37 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
                v56 = a7 + v28;
                if ((v38 & 0x1000000000000000) != 0)
                {
                  v56 = *v37;
                }

                v72 = v56;
                v73 = v55;
                v74 = v38 >> 7;
                v75 = 65;
                v76 = v54;
                ResourceTracker<_ResourceGroupBinding>::addResource(v40, &v72, *(v37 + 12), 65);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (impl[118].i64[1])
  {
    MTLResourceListAddResource();
  }

  impl[1881].i64[0] = a7;
LABEL_56:
  v57 = v36 + v68;
  if (((*(impl[1896].i64[0] + 2480) | *(impl[1896].i64[0] + 2432)) & 0x700000000000) != 0)
  {
    v58 = a7 + *v11;
    impl[4881].i64[0] |= 0x700000000000uLL;
    impl[4905].i64[0] |= 0x40uLL;
    *(impl[3068].i64[1] + 144) = vaddq_s64(vdupq_n_s64(v57), xmmword_29D2F2530);
    impl[3091] = vdupq_n_s64(v58);
  }

  if ((*v35 & 1) == 0)
  {
    *v35 = 1;
    impl[4905].i64[0] |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(impl, impl[1896].i64[0], impl[1896].i64[1], impl[3068].i64[0], impl[4564].i64[1], impl[4881].i64, 0);
  if (*(impl[149].i64[1] + 4907) == 1)
  {
    v59 = 0x114u >> a3;
    if (a3 >= 9)
    {
      LOBYTE(v59) = 0;
    }
  }

  else
  {
    LOBYTE(v59) = impl[1879].i8[3];
  }

  LODWORD(v60) = impl[1879].i32[1];
  if (v60 >= 0xFFFF)
  {
    v61 = 0xFFFF;
  }

  else
  {
    v61 = impl[1879].u32[1];
  }

  if (a4 == 1)
  {
    v60 = v60;
  }

  else
  {
    v60 = v61;
  }

  v62 = impl[4].i64[1];
  *v62 = (v60 << 32) | 0x40000001;
  impl[4967].i64[0] |= 0x80uLL;
  if (v59)
  {
    v63 = 0x10000;
  }

  else
  {
    v63 = 0;
  }

  v64 = v14 + v70;
  v65 = v70 & 0xFFFFFFFC;
  v66 = BYTE4(v64) | v63 | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDrawIndirect[a3] + (a4 << 17)) & 0xFFEEFF00 | 0x100000;
  if ((v15 & 0xFFFFFFFFFFFFFFLL) <= v65)
  {
    v67 = -1;
  }

  else
  {
    v67 = ((v15 - v65 + 3) >> 2) - 1;
  }

  impl[4].i64[1] = v62 + 32;
  *(v62 + 8) = v66;
  *(v62 + 12) = v64;
  *(v62 + 16) = WORD2(v57);
  *(v62 + 20) = v57 & 0xFFFFFFFC;
  *(v62 + 24) = v67;
  *(v62 + 28) = BYTE5(v64);
  ++impl[121].i32[1];
  impl[122].i8[8] = 0;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v5 = a5;
  impl = self->_impl;
  v10 = MEMORY[0x29EDC5638];
  *(impl + 486) = *(impl + 485);
  v11 = *v10;
  v12 = a4 + v11;
  v13 = *(a4 + v11 + 8);
  if (*(impl + 3762) == a4)
  {
    goto LABEL_28;
  }

  v14 = *(v12 + 2);
  if ((v14 & 0x7FFFFFFF80) != 0 && (v14 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v16 = *(impl + 251);
    if (*(v16[2].i64[1] + 480) == 1)
    {
      v17 = v16[3];
      v18 = v16[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v17), vceqzq_s64(v18))))))
      {
        v19 = (a4 + v11);
        if ((v14 & 0x1000000000000000) != 0)
        {
          v19 = *v12;
        }

        v20 = *v19;
        if (v20)
        {
          v21 = *v20;
          v22 = v20[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v20), vceqzq_s64(v22))))))
          {
            v23 = vandq_s8(v22, v18);
            v24 = v23.u64[1];
            if (v23.i64[1])
            {
              v25 = 3;
              goto LABEL_21;
            }

            v24 = v23.i64[0];
            if (v23.i64[0])
            {
              v25 = 2;
              goto LABEL_21;
            }

            v26 = vandq_s8(v21, v17);
            v24 = v26.u64[1];
            if (v26.i64[1])
            {
              v25 = 1;
              goto LABEL_21;
            }

            v24 = v26.i64[0];
            if (v26.i64[0])
            {
              v25 = 0;
LABEL_21:
              v27 = &v16->i8[8 * v25];
              v28 = *(v27 + 10);
              v29 = 1 << (__clz(v24) ^ 0x3Fu);
              v30 = (v29 & v28) != 0;
              if ((v29 & (*(v27 + 14) | v28)) != 0)
              {
                v31 = a4 + v11;
                if ((v14 & 0x1000000000000000) != 0)
                {
                  v31 = *v12;
                }

                v42[0] = v31;
                v42[1] = (v13 + 127) & 0xFFFFFFFFFFFFFF80;
                v43 = v14 >> 7;
                v44 = 65;
                v45 = v30;
                ResourceTracker<_ResourceGroupBinding>::addResource(v16, v42, *(v12 + 12), 65);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (*(impl + 237))
  {
    MTLResourceListAddResource();
  }

  *(impl + 3762) = a4;
  v10 = MEMORY[0x29EDC5638];
  v11 = *MEMORY[0x29EDC5638];
LABEL_28:
  v32 = v13 + v5;
  if (((*(*(impl + 3792) + 2480) | *(*(impl + 3792) + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_35;
  }

  v33 = a4 + v11;
  *(impl + 9762) |= 0x700000000000uLL;
  *(impl + 9810) |= 0x40uLL;
  v34 = *(impl + 6137);
  *(v34 + 152) = v32 + 12;
  *(impl + 6183) = v33;
  if (impl[29920] != 1)
  {
    v35 = *(impl + 21);
    v36 = v35 + 1;
    if ((v35 + 1) > *(impl + 20))
    {
      v40 = v10;
      v41 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 24, 3, 0);
      v35 = *(impl + 21);
      if (!v41)
      {
        v10 = v40;
        goto LABEL_33;
      }

      v36 = v35 + 1;
      v10 = v40;
      if ((v35 + 1) > *(impl + 20))
      {
        abort();
      }
    }

    *(impl + 22) = v36;
LABEL_33:
    v37 = v35 + *(impl + 23);
    *v35 = 0;
    *(impl + 21) = v35 + 1;
    *(*(impl + 6137) + 144) = v37;
    v33 = (*(*(impl + 6) + 224) + *v10);
    goto LABEL_34;
  }

  *(v34 + 144) = v32 + 8;
LABEL_34:
  *(impl + 6182) = v33;
LABEL_35:
  if (impl[30065] == 1)
  {
    impl[30065] = 0;
    *(impl + 9810) |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(impl, *(impl + 3792), *(impl + 3793), *(impl + 6136), *(impl + 9129), (impl + 78096), 0);
  *(impl + 9934) |= 0x80uLL;
  v38 = v32 & 0xFFFF00000000 | AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDrawIndirect[a3];
  v39 = *(impl + 9);
  *(impl + 9) = v39 + 12;
  *v39 = v38;
  *(v39 + 8) = v32 & 0xFFFFFFFC;
  ++*(impl + 485);
  impl[1960] = 0;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v10 = a8;
  v11 = a7;
  v60 = a4;
  impl = self->_impl;
  impl[121].i32[2] = impl[121].i32[1];
  v15 = MEMORY[0x29EDC5638];
  v16 = *MEMORY[0x29EDC5638];
  v17 = a6 + v16;
  v18 = *(a6 + v16 + 8);
  v19 = *(a6 + v16 + 16);
  if (impl[1880].i64[1] == a6)
  {
    goto LABEL_28;
  }

  v21 = *(a6 + v16 + 8);
  if ((v19 & 0x7FFFFFFF80) != 0 && (v19 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v23 = impl[125].i64[1];
    if (*(v23[2].i64[1] + 480) == 1)
    {
      v24 = v23[3];
      v25 = v23[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v24), vceqzq_s64(v25))))))
      {
        v26 = (a6 + v16);
        if ((v19 & 0x1000000000000000) != 0)
        {
          v26 = *v17;
        }

        v27 = *v26;
        if (v27)
        {
          v28 = *v27;
          v29 = v27[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v27), vceqzq_s64(v29))))))
          {
            v30 = vandq_s8(v29, v25);
            v31 = v30.u64[1];
            if (v30.i64[1])
            {
              v32 = 3;
              goto LABEL_21;
            }

            v31 = v30.i64[0];
            if (v30.i64[0])
            {
              v32 = 2;
              goto LABEL_21;
            }

            v33 = vandq_s8(v28, v24);
            v31 = v33.u64[1];
            if (v33.i64[1])
            {
              v32 = 1;
              goto LABEL_21;
            }

            v31 = v33.i64[0];
            if (v33.i64[0])
            {
              v32 = 0;
LABEL_21:
              v34 = &v23->i8[8 * v32];
              v35 = *(v34 + 10);
              v36 = 1 << (__clz(v31) ^ 0x3Fu);
              v37 = (v36 & v35) != 0;
              if ((v36 & (*(v34 + 14) | v35)) != 0)
              {
                v38 = a6 + v16;
                if ((v19 & 0x1000000000000000) != 0)
                {
                  v38 = *v17;
                }

                v61[0] = v38;
                v61[1] = (v21 + 127) & 0xFFFFFFFFFFFFFF80;
                v62 = v19 >> 7;
                v63 = 1;
                v64 = v37;
                ResourceTracker<_ResourceGroupBinding>::addResource(v23, v61, *(v17 + 12), 1);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (impl[118].i64[1])
  {
    MTLResourceListAddResource();
  }

  impl[1880].i64[1] = a6;
  v18 = v21;
  v15 = MEMORY[0x29EDC5638];
LABEL_28:
  v39 = a9;
  if (((*(impl[1896].i64[0] + 2480) | *(impl[1896].i64[0] + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_32;
  }

  impl[4881].i64[0] |= 0x700000000000uLL;
  impl[4905].i64[0] |= 0x40uLL;
  *(impl[3068].i64[1] + 160) = a10;
  v40 = impl[10].i64[1];
  v41 = v40 + 2;
  if ((v40 + 2) > impl[10].i64[0])
  {
    v57 = v18;
    v58 = AGX::DataBufferAllocator<44ul>::growNoInline(&impl[1].u64[1], 3, 0);
    v40 = impl[10].i64[1];
    if (!v58)
    {
      v18 = v57;
      v15 = MEMORY[0x29EDC5638];
      v39 = a9;
      goto LABEL_31;
    }

    v41 = v40 + 2;
    v18 = v57;
    v15 = MEMORY[0x29EDC5638];
    v39 = a9;
    if ((v40 + 2) > impl[10].i64[0])
    {
      abort();
    }
  }

  impl[11].i64[0] = v41;
LABEL_31:
  v42 = v40 + impl[11].i64[1];
  impl[10].i64[1] = (v40 + 2);
  v43 = impl[3068].i64[1];
  *(v43 + 144) = v42;
  *(v43 + 152) = v42 + 4;
  *v40 = v39;
  v40[1] = a10;
  impl[3091] = vdupq_n_s64(*(impl[3].i64[0] + 224) + *v15);
LABEL_32:
  v44 = v11 & 0xFFFFFFFC;
  v45 = v18 + v11;
  if ((impl[1879].i8[1] & 1) == 0)
  {
    impl[1879].i8[1] = 1;
    impl[4905].i64[0] |= 1uLL;
  }

  v46 = v19 & 0xFFFFFFFFFFFFFFLL;
  v47 = ((v19 - v44 + 3) >> 2) - 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(impl, impl[1896].i64[0], impl[1896].i64[1], impl[3068].i64[0], impl[4564].i64[1], impl[4881].i64, 0);
  if (*(impl[149].i64[1] + 4907) == 1)
  {
    v48 = 0x114u >> a3;
    if (a3 >= 9)
    {
      LOBYTE(v48) = 0;
    }
  }

  else
  {
    LOBYTE(v48) = impl[1879].i8[3];
  }

  v49 = v60;
  LODWORD(v50) = impl[1879].i32[1];
  if (v50 >= 0xFFFF)
  {
    v51 = 0xFFFF;
  }

  else
  {
    v51 = impl[1879].u32[1];
  }

  if (a5 == 1)
  {
    v50 = v50;
  }

  else
  {
    v50 = v51;
  }

  v52 = impl[4].i64[1];
  *v52 = (v50 << 32) | 0x40000001;
  if (v48)
  {
    v53 = 0x10000;
  }

  else
  {
    v53 = 0;
  }

  v54 = BYTE4(v45) | v53 | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a3] + (a5 << 17)) & 0xFFEEFF00 | 0x100000;
  if (v46 <= v44)
  {
    v55 = -1;
  }

  else
  {
    v55 = v47;
  }

  *(v52 + 8) = v54;
  *(v52 + 12) = v45;
  *(v52 + 16) = v60;
  *(v52 + 20) = v10;
  *(v52 + 24) = a9;
  *(v52 + 28) = v55;
  *(v52 + 32) = BYTE5(v45);
  impl[4].i64[1] = v52 + 36;
  ++impl[121].i32[1];
  if (a3 <= 5)
  {
    v56 = self;
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v49 = v60 >> 1;
      }

      else if (a3 == 2)
      {
        v49 = v60 - 1;
      }

      goto LABEL_66;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v56 = self;
  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v49 = v60 >> 2;
      goto LABEL_66;
    }

LABEL_60:
    v49 = v60 - 2;
    goto LABEL_66;
  }

  if (a3 == 8)
  {
    v49 = ((v60 - 4) >> 1) + 1;
    goto LABEL_66;
  }

  if (a3 == 9)
  {
LABEL_63:
    v49 = v60 / 3;
  }

LABEL_66:
  impl[122].i32[1] += v49 * v10;
  *(v56->_impl + 487) = *(v56->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a4;
  impl = self->_impl;
  impl[121].i32[2] = impl[121].i32[1];
  v14 = MEMORY[0x29EDC5638];
  v15 = *MEMORY[0x29EDC5638];
  v16 = a6 + v15;
  v17 = *(a6 + v15 + 8);
  v18 = *(a6 + v15 + 16);
  if (impl[1880].i64[1] == a6)
  {
    goto LABEL_28;
  }

  v55 = *(a6 + v15 + 8);
  if ((v18 & 0x7FFFFFFF80) != 0 && (v18 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v21 = impl[125].i64[1];
    if (*(v21[2].i64[1] + 480) == 1)
    {
      v22 = v21[3];
      v23 = v21[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))))
      {
        v24 = (a6 + v15);
        if ((v18 & 0x1000000000000000) != 0)
        {
          v24 = *v16;
        }

        v25 = *v24;
        if (v25)
        {
          v26 = *v25;
          v27 = v25[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v27))))))
          {
            v28 = vandq_s8(v27, v23);
            v29 = v28.u64[1];
            if (v28.i64[1])
            {
              v30 = 3;
              goto LABEL_21;
            }

            v29 = v28.i64[0];
            if (v28.i64[0])
            {
              v30 = 2;
              goto LABEL_21;
            }

            v31 = vandq_s8(v26, v22);
            v29 = v31.u64[1];
            if (v31.i64[1])
            {
              v30 = 1;
              goto LABEL_21;
            }

            v29 = v31.i64[0];
            if (v31.i64[0])
            {
              v30 = 0;
LABEL_21:
              v32 = &v21->i8[8 * v30];
              v33 = *(v32 + 10);
              v34 = 1 << (__clz(v29) ^ 0x3Fu);
              v35 = (v34 & v33) != 0;
              if ((v34 & (*(v32 + 14) | v33)) != 0)
              {
                v36 = a6 + v15;
                if ((v18 & 0x1000000000000000) != 0)
                {
                  v36 = *v16;
                }

                v57[0] = v36;
                v57[1] = (v55 + 127) & 0xFFFFFFFFFFFFFF80;
                v58 = v18 >> 7;
                v59 = 1;
                v60 = v35;
                ResourceTracker<_ResourceGroupBinding>::addResource(v21, v57, *(v16 + 12), 1);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (impl[118].i64[1])
  {
    MTLResourceListAddResource();
  }

  impl[1880].i64[1] = a6;
  v17 = v55;
  v14 = MEMORY[0x29EDC5638];
LABEL_28:
  if (((*(impl[1896].i64[0] + 2480) | *(impl[1896].i64[0] + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_32;
  }

  impl[4881].i64[0] |= 0x700000000000uLL;
  impl[4905].i64[0] |= 0x40uLL;
  *(impl[3068].i64[1] + 160) = 0;
  v37 = impl[10].i64[1];
  v38 = v37 + 1;
  if ((v37 + 1) > impl[10].i64[0])
  {
    v53 = v17;
    v54 = AGX::DataBufferAllocator<44ul>::growNoInline(&impl[1].u64[1], 3, 0);
    v37 = impl[10].i64[1];
    if (!v54)
    {
      v17 = v53;
      v14 = MEMORY[0x29EDC5638];
      goto LABEL_31;
    }

    v38 = v37 + 1;
    v17 = v53;
    v14 = MEMORY[0x29EDC5638];
    if ((v37 + 1) > impl[10].i64[0])
    {
      abort();
    }
  }

  impl[11].i64[0] = v38;
LABEL_31:
  v39 = v37 + impl[11].i64[1];
  impl[10].i64[1] = (v37 + 1);
  v40 = impl[3068].i64[1];
  *(v40 + 144) = v39;
  *(v40 + 152) = v39 + 4;
  *v37 = 0;
  impl[3091] = vdupq_n_s64(*(impl[3].i64[0] + 224) + *v14);
LABEL_32:
  v41 = v9 & 0xFFFFFFFC;
  v42 = v17 + v9;
  if ((impl[1879].i8[1] & 1) == 0)
  {
    impl[1879].i8[1] = 1;
    impl[4905].i64[0] |= 1uLL;
  }

  v43 = v18 & 0xFFFFFFFFFFFFFFLL;
  v44 = ((v18 - v41 + 3) >> 2) - 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(impl, impl[1896].i64[0], impl[1896].i64[1], impl[3068].i64[0], impl[4564].i64[1], impl[4881].i64, 0);
  if (*(impl[149].i64[1] + 4907) == 1)
  {
    v45 = 0x114u >> a3;
    if (a3 >= 9)
    {
      LOBYTE(v45) = 0;
    }
  }

  else
  {
    LOBYTE(v45) = impl[1879].i8[3];
  }

  LODWORD(v46) = impl[1879].i32[1];
  if (v46 >= 0xFFFF)
  {
    v47 = 0xFFFF;
  }

  else
  {
    v47 = impl[1879].u32[1];
  }

  if (a5 == 1)
  {
    v46 = v46;
  }

  else
  {
    v46 = v47;
  }

  v48 = impl[4].i64[1];
  *v48 = (v46 << 32) | 0x40000001;
  if (v45)
  {
    v49 = 0x10000;
  }

  else
  {
    v49 = 0;
  }

  v50 = BYTE4(v42) | v49 | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a3] + (a5 << 17)) & 0xFFEEFF00 | 0x100000;
  if (v43 <= v41)
  {
    v51 = -1;
  }

  else
  {
    v51 = v44;
  }

  *(v48 + 8) = v50;
  *(v48 + 12) = v42;
  *(v48 + 16) = v10;
  *(v48 + 20) = v8;
  *(v48 + 24) = 0;
  *(v48 + 28) = v51;
  *(v48 + 32) = BYTE5(v42);
  impl[4].i64[1] = v48 + 36;
  ++impl[121].i32[1];
  if (a3 <= 5)
  {
    v52 = self;
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v10 >>= 1;
      }

      else if (a3 == 2)
      {
        --v10;
      }

      goto LABEL_66;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v52 = self;
  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v10 >>= 2;
      goto LABEL_66;
    }

LABEL_60:
    v10 -= 2;
    goto LABEL_66;
  }

  if (a3 == 8)
  {
    v10 = ((v10 - 4) >> 1) + 1;
    goto LABEL_66;
  }

  if (a3 == 9)
  {
LABEL_63:
    v10 /= 3u;
  }

LABEL_66:
  impl[122].i32[1] += v10 * v8;
  *(v52->_impl + 487) = *(v52->_impl + 485);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  v7 = a7;
  v9 = a4;
  impl = self->_impl;
  impl[121].i32[2] = impl[121].i32[1];
  v13 = MEMORY[0x29EDC5638];
  v14 = *MEMORY[0x29EDC5638];
  v15 = a6 + v14;
  v16 = *(a6 + v14 + 8);
  v17 = *(a6 + v14 + 16);
  if (impl[1880].i64[1] == a6)
  {
    goto LABEL_28;
  }

  v53 = *(a6 + v14 + 8);
  if ((v17 & 0x7FFFFFFF80) != 0 && (v17 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v20 = impl[125].i64[1];
    if (*(v20[2].i64[1] + 480) == 1)
    {
      v21 = v20[3];
      v22 = v20[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v21), vceqzq_s64(v22))))))
      {
        v23 = (a6 + v14);
        if ((v17 & 0x1000000000000000) != 0)
        {
          v23 = *v15;
        }

        v24 = *v23;
        if (v24)
        {
          v25 = *v24;
          v26 = v24[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v24), vceqzq_s64(v26))))))
          {
            v27 = vandq_s8(v26, v22);
            v28 = v27.u64[1];
            if (v27.i64[1])
            {
              v29 = 3;
              goto LABEL_21;
            }

            v28 = v27.i64[0];
            if (v27.i64[0])
            {
              v29 = 2;
              goto LABEL_21;
            }

            v30 = vandq_s8(v25, v21);
            v28 = v30.u64[1];
            if (v30.i64[1])
            {
              v29 = 1;
              goto LABEL_21;
            }

            v28 = v30.i64[0];
            if (v30.i64[0])
            {
              v29 = 0;
LABEL_21:
              v31 = &v20->i8[8 * v29];
              v32 = *(v31 + 10);
              v33 = 1 << (__clz(v28) ^ 0x3Fu);
              v34 = (v33 & v32) != 0;
              if ((v33 & (*(v31 + 14) | v32)) != 0)
              {
                v35 = a6 + v14;
                if ((v17 & 0x1000000000000000) != 0)
                {
                  v35 = *v15;
                }

                v54[0] = v35;
                v54[1] = (v53 + 127) & 0xFFFFFFFFFFFFFF80;
                v55 = v17 >> 7;
                v56 = 1;
                v57 = v34;
                ResourceTracker<_ResourceGroupBinding>::addResource(v20, v54, *(v15 + 12), 1);
              }
            }
          }
        }
      }
    }
  }

  IOGPUResourceListAddResource();
  if (impl[118].i64[1])
  {
    MTLResourceListAddResource();
  }

  impl[1880].i64[1] = a6;
  v16 = v53;
  v13 = MEMORY[0x29EDC5638];
LABEL_28:
  if (((*(impl[1896].i64[0] + 2480) | *(impl[1896].i64[0] + 2432)) & 0x700000000000) == 0)
  {
    goto LABEL_32;
  }

  impl[4881].i64[0] |= 0x700000000000uLL;
  impl[4905].i64[0] |= 0x40uLL;
  *(impl[3068].i64[1] + 160) = 0;
  v36 = impl[10].i64[1];
  v37 = v36 + 1;
  if ((v36 + 1) > impl[10].i64[0])
  {
    v51 = v16;
    v52 = AGX::DataBufferAllocator<44ul>::growNoInline(&impl[1].u64[1], 3, 0);
    v36 = impl[10].i64[1];
    if (!v52)
    {
      v16 = v51;
      v13 = MEMORY[0x29EDC5638];
      goto LABEL_31;
    }

    v37 = v36 + 1;
    v16 = v51;
    v13 = MEMORY[0x29EDC5638];
    if ((v36 + 1) > impl[10].i64[0])
    {
      abort();
    }
  }

  impl[11].i64[0] = v37;
LABEL_31:
  v38 = v36 + impl[11].i64[1];
  impl[10].i64[1] = (v36 + 1);
  v39 = impl[3068].i64[1];
  *(v39 + 144) = v38;
  *(v39 + 152) = v38 + 4;
  *v36 = 0;
  impl[3091] = vdupq_n_s64(*(impl[3].i64[0] + 224) + *v13);
LABEL_32:
  v40 = v7 & 0xFFFFFFFC;
  v41 = v16 + v7;
  if ((impl[1879].i8[1] & 1) == 0)
  {
    impl[1879].i8[1] = 1;
    impl[4905].i64[0] |= 1uLL;
  }

  v42 = v17 & 0xFFFFFFFFFFFFFFLL;
  v43 = ((v17 - v40 + 3) >> 2) - 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(impl, impl[1896].i64[0], impl[1896].i64[1], impl[3068].i64[0], impl[4564].i64[1], impl[4881].i64, 0);
  if (*(impl[149].i64[1] + 4907) == 1)
  {
    v44 = 0x114u >> a3;
    if (a3 >= 9)
    {
      LOBYTE(v44) = 0;
    }
  }

  else
  {
    LOBYTE(v44) = impl[1879].i8[3];
  }

  LODWORD(v45) = impl[1879].i32[1];
  if (v45 >= 0xFFFF)
  {
    v46 = 0xFFFF;
  }

  else
  {
    v46 = impl[1879].u32[1];
  }

  if (a5 == 1)
  {
    v45 = v45;
  }

  else
  {
    v45 = v46;
  }

  v47 = impl[4].i64[1];
  *v47 = (v45 << 32) | 0x40000001;
  if (v44)
  {
    v48 = 0x10000;
  }

  else
  {
    v48 = 0;
  }

  v49 = BYTE4(v41) | v48 | (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeIndexedDraw[a3] + (a5 << 17)) & 0xFFEEFF00 | 0x100000;
  if (v42 <= v40)
  {
    v50 = -1;
  }

  else
  {
    v50 = v43;
  }

  *(v47 + 8) = v49;
  *(v47 + 12) = v41;
  *(v47 + 16) = v9;
  *(v47 + 20) = 1;
  *(v47 + 28) = v50;
  *(v47 + 32) = BYTE5(v41);
  impl[4].i64[1] = v47 + 36;
  ++impl[121].i32[1];
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

      goto LABEL_66;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

    goto LABEL_63;
  }

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v9 >>= 2;
      goto LABEL_66;
    }

LABEL_60:
    v9 -= 2;
    goto LABEL_66;
  }

  if (a3 == 8)
  {
    v9 = ((v9 - 4) >> 1) + 1;
    goto LABEL_66;
  }

  if (a3 == 9)
  {
LABEL_63:
    v9 /= 3u;
  }

LABEL_66:
  impl[122].i32[1] += v9;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  impl = self->_impl;
  impl[121].i32[2] = impl[121].i32[1];
  if (impl[1870].i8[0])
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  if (((*(impl[1896].i64[0] + 2480) | *(impl[1896].i64[0] + 2432)) & 0x700000000000) != 0)
  {
    impl[4881].i64[0] |= 0x700000000000uLL;
    impl[4905].i64[0] |= 0x40uLL;
    *(impl[3068].i64[1] + 160) = a7;
    v14 = impl[10].i64[1];
    v15 = v14 + 2;
    if ((v14 + 2) > impl[10].i64[0])
    {
      v21 = a7;
      v20 = AGX::DataBufferAllocator<44ul>::growNoInline(&impl[1].u64[1], 3, 0);
      v14 = impl[10].i64[1];
      if (!v20)
      {
        LODWORD(a7) = v21;
        goto LABEL_7;
      }

      v15 = v14 + 2;
      LODWORD(a7) = v21;
      if ((v14 + 2) > impl[10].i64[0])
      {
        abort();
      }
    }

    impl[11].i64[0] = v15;
LABEL_7:
    v16 = v14 + impl[11].i64[1];
    impl[10].i64[1] = (v14 + 2);
    v17 = impl[3068].i64[1];
    *(v17 + 144) = v16;
    *(v17 + 152) = v16 + 4;
    *v14 = v13;
    v14[1] = a7;
    impl[3091] = vdupq_n_s64(*(impl[3].i64[0] + 224) + *MEMORY[0x29EDC5638]);
  }

  if (impl[1879].i8[1] == 1)
  {
    impl[1879].i8[1] = 0;
    impl[4905].i64[0] |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(impl, impl[1896].i64[0], impl[1896].i64[1], impl[3068].i64[0], impl[4564].i64[1], impl[4881].i64, 0);
  LODWORD(v18) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[a3] & 0xFFFEFFFF;
  DWORD1(v18) = v8;
  *(&v18 + 1) = __PAIR64__(v9, v7);
  v19 = impl[4].i64[1];
  *v19 = v18;
  impl[4].i64[1] = (v19 + 1);
  ++impl[121].i32[1];
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
  impl[122].i32[1] += v8 * v7;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  impl = self->_impl;
  impl[121].i32[2] = impl[121].i32[1];
  if (impl[1870].i8[0])
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  if (((*(impl[1896].i64[0] + 2480) | *(impl[1896].i64[0] + 2432)) & 0x700000000000) != 0)
  {
    impl[4881].i64[0] |= 0x700000000000uLL;
    impl[4905].i64[0] |= 0x40uLL;
    *(impl[3068].i64[1] + 160) = 0;
    v13 = impl[10].i64[1];
    v14 = v13 + 2;
    if ((v13 + 2) > impl[10].i64[0])
    {
      v19 = AGX::DataBufferAllocator<44ul>::growNoInline(&impl[1].u64[1], 3, 0);
      v13 = impl[10].i64[1];
      if (!v19)
      {
        goto LABEL_7;
      }

      v14 = v13 + 2;
      if ((v13 + 2) > impl[10].i64[0])
      {
        abort();
      }
    }

    impl[11].i64[0] = v14;
LABEL_7:
    v15 = v13 + impl[11].i64[1];
    impl[10].i64[1] = (v13 + 2);
    v16 = impl[3068].i64[1];
    *(v16 + 144) = v15;
    *(v16 + 152) = v15 + 4;
    *v13 = v12;
    v13[1] = 0;
    impl[3091] = vdupq_n_s64(*(impl[3].i64[0] + 224) + *MEMORY[0x29EDC5638]);
  }

  if (impl[1879].i8[1] == 1)
  {
    impl[1879].i8[1] = 0;
    impl[4905].i64[0] |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(impl, impl[1896].i64[0], impl[1896].i64[1], impl[3068].i64[0], impl[4564].i64[1], impl[4881].i64, 0);
  LODWORD(v17) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[a3] & 0xFFFEFFFF;
  DWORD1(v17) = v7;
  *(&v17 + 1) = __PAIR64__(v8, v6);
  v18 = impl[4].i64[1];
  *v18 = v17;
  impl[4].i64[1] = (v18 + 1);
  ++impl[121].i32[1];
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
  impl[122].i32[1] += v7 * v6;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  impl = self->_impl;
  impl[121].i32[2] = impl[121].i32[1];
  if (impl[1870].i8[0])
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (((*(impl[1896].i64[0] + 2480) | *(impl[1896].i64[0] + 2432)) & 0x700000000000) != 0)
  {
    impl[4881].i64[0] |= 0x700000000000uLL;
    impl[4905].i64[0] |= 0x40uLL;
    *(impl[3068].i64[1] + 160) = 0;
    v11 = impl[10].i64[1];
    v12 = v11 + 2;
    if ((v11 + 2) > impl[10].i64[0])
    {
      v17 = AGX::DataBufferAllocator<44ul>::growNoInline(&impl[1].u64[1], 3, 0);
      v11 = impl[10].i64[1];
      if (!v17)
      {
        goto LABEL_7;
      }

      v12 = v11 + 2;
      if ((v11 + 2) > impl[10].i64[0])
      {
        abort();
      }
    }

    impl[11].i64[0] = v12;
LABEL_7:
    v13 = v11 + impl[11].i64[1];
    impl[10].i64[1] = (v11 + 2);
    v14 = impl[3068].i64[1];
    *(v14 + 144) = v13;
    *(v14 + 152) = v13 + 4;
    *v11 = v10;
    v11[1] = 0;
    impl[3091] = vdupq_n_s64(*(impl[3].i64[0] + 224) + *MEMORY[0x29EDC5638]);
  }

  if (impl[1879].i8[1] == 1)
  {
    impl[1879].i8[1] = 0;
    impl[4905].i64[0] |= 1uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(impl, a3);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(impl, impl[1896].i64[0], impl[1896].i64[1], impl[3068].i64[0], impl[4564].i64[1], impl[4881].i64, 0);
  DWORD2(v15) = 1;
  LODWORD(v15) = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::PrimitiveTypeToVDMCTRLTypeNonIndexedDraw[a3] & 0xFFFEFFFF;
  DWORD1(v15) = v5;
  HIDWORD(v15) = v6;
  v16 = impl[4].i64[1];
  *v16 = v15;
  impl[4].i64[1] = (v16 + 1);
  ++impl[121].i32[1];
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
  impl[122].i32[1] += v5;
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)setStencilCleared
{
  impl = self->_impl;
  if ((impl[3730] & 4) == 0)
  {
    v3 = impl[299];
    *(v3 + 5370) |= 4u;
    v4 = *(v3 + 5892) & 0xFFFFFDFF;
    *(v3 + 5892) = v4;
    v5 = *(v3 + 5896);
    v6 = *(v3 + 5904);
    v7 = *(v3 + 5908) & ~(v5 | *(v3 + 5900) | v6);
    *(v3 + 5908) = v7;
    v8 = v7 | v5;
    *(v3 + 4897) = (v8 & v4) != 0;
    *(v3 + 4904) = (v8 & ~v4) != 0;
    *(v3 + 2986) = (*(v3 + 4952) & v7 | v6) != 0;
  }
}

- (void)setDepthCleared
{
  impl = self->_impl;
  if ((impl[3730] & 1) == 0)
  {
    v3 = impl[299];
    *(v3 + 5370) |= 1u;
    v4 = *(v3 + 5892) & 0xFFFFFEFF;
    *(v3 + 5892) = v4;
    v5 = *(v3 + 5896);
    v6 = *(v3 + 5904);
    v7 = *(v3 + 5908) & ~(v5 | *(v3 + 5900) | v6);
    *(v3 + 5908) = v7;
    v8 = v7 | v5;
    *(v3 + 4897) = (v8 & v4) != 0;
    *(v3 + 4904) = (v8 & ~v4) != 0;
    *(v3 + 2986) = (*(v3 + 4952) & v7 | v6) != 0;
  }
}

- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  impl = self->_impl;
  v11 = 0uLL;
  if (a3)
  {
    v12 = *(a3 + 74);
    if (v12)
    {
      v11 = *(v12 + 592);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *(impl + 299);
  v14 = *(impl + 237);
  v15 = *(impl + 251);
  *(v13 + 6224) = a3;
  *(v13 + 6232) = v11;
  *(v13 + 6256) = v12;
  v16 = *(v12 + 208);
  v17 = *(v16 + 24);
  if (*(v12 + 236))
  {
    v18 = v17 >= 2 && *(v16 + 80) != 0;
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v12, a4, 0, v8, v18);
    v20 = 0;
    *(v13 + 6168) = GPUVirtualAddress;
    v21 = *(v13 + 6256);
    v22 = *(v21 + 208);
    if (*(v22 + 24) >= 2u)
    {
      v20 = *(v22 + 80) != 0;
    }

    v23 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v21, v7, v20);
    v25 = 6184;
  }

  else
  {
    v26 = v17 >= 2 && *(v16 + 80) != 0;
    v23 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v12, a4, a6, v8, v26);
    v25 = 6168;
  }

  *(v13 + v25) = v23;
  *(v13 + 6196) = 1;
  if (v14)
  {
    MTLResourceListAddResource();
  }

  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(v15, *(v13 + 6224), 12, v24);
  IOGPUResourceListAddResource();
  if (*(v13 + 6232))
  {
    IOGPUResourceListAddResource();
  }

  if (*(v13 + 6240))
  {
    IOGPUResourceListAddResource();
  }

  v27 = *(v12 + 584);
  if (v27 && *(v27 + 1304) > v7)
  {
    v28 = *(v12 + 208);
    v29 = *(v28 + 24) >= 2u && *(v28 + 80) != 0;
    *(v13 + 6320) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v27 + 648 * v29, v9, v7, v8, 0);
  }

  if (!*(*(impl + 239) + 520))
  {
    if ((*(*(impl + 299) + 4957) & 1) != 0 || *(impl + 28060) == 1)
    {
      fwrite("Failed to satisfy render split.\n", 0x20uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(impl, impl + 9810, 0, 1);
  }
}

- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  impl = self->_impl;
  v11 = 0uLL;
  if (a3)
  {
    v12 = *(a3 + 74);
    if (v12)
    {
      v11 = *(v12 + 592);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *(impl + 299);
  v14 = *(impl + 237);
  v15 = *(impl + 251);
  *(v13 + 6200) = a3;
  *(v13 + 6208) = v11;
  *(v13 + 6248) = v12;
  if (*(v12 + 236))
  {
    *(v13 + 6160) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v12, a4, 0, a5, 0);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(v13 + 6248), v7, v8);
    v18 = 6176;
  }

  else
  {
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v12, a4, a6, a5, 0);
    v18 = 6160;
  }

  *(v13 + v18) = GPUVirtualAddress;
  *(v13 + 6192) = 1;
  if (v14)
  {
    MTLResourceListAddResource();
  }

  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(v15, *(v13 + 6200), 12, v17);
  IOGPUResourceListAddResource();
  if (*(v13 + 6208))
  {
    IOGPUResourceListAddResource();
  }

  if (*(v13 + 6216))
  {
    IOGPUResourceListAddResource();
  }

  v19 = *(v12 + 584);
  if (v19 && *(v19 + 1304) > v7)
  {
    *(v13 + 6312) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v19, v9, v7, v8, 0);
  }

  if (!*(*(impl + 239) + 520))
  {
    if ((*(*(impl + 299) + 4957) & 1) != 0 || *(impl + 28060) == 1)
    {
      fwrite("Failed to satisfy render split.\n", 0x20uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(impl, impl + 9810, 0, 1);
  }
}

- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 yInvert:(BOOL)a7 atIndex:(unint64_t)a8
{
  impl = self->_impl;
  v9 = 0uLL;
  if (a3)
  {
    v10 = *(a3 + 74);
    if (v10)
    {
      v9 = *(v10 + 592);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = impl[299];
  v12 = impl[237];
  *&v11[2 * a8 + 876] = v10;
  v13 = v11 + 808;
  *&v11[2 * (3 * a8) + 808] = a3;
  v14 = 3 * a8 + 1;
  *&v11[2 * v14 + 808] = v9;
  v15 = 3 * a8 + 2;
  *&v11[2 * v15 + 808] = *(&v9 + 1);
  v11[1238] |= 1 << a8;
  AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::configurePBE(v11, v10, a5, a6, a4, &v11[a8 + 102], a8, 1, (v11[1242] & (1 << a8)) != 0, a7, (v11[1478] & (1 << a8)) != 0);
  IOGPUResourceListAddResource();
  if (*&v13[2 * v14])
  {
    IOGPUResourceListAddResource();
  }

  if (*&v13[2 * v15])
  {
    IOGPUResourceListAddResource();
  }

  if (v12)
  {
    MTLResourceListAddResource();
  }

  if (!*(impl[239] + 520))
  {
    if ((*(impl[299] + 4957) & 1) != 0 || *(impl + 28060) == 1)
    {
      fwrite("Failed to satisfy render split.\n", 0x20uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(impl, impl + 9810, 0, 1);
  }
}

- (void)setStencilResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  impl = self->_impl;
  v10 = 0uLL;
  if (a3)
  {
    v11 = *(a3 + 74);
    if (v11)
    {
      v10 = *(v11 + 592);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *(impl + 299);
  v13 = *(impl + 237);
  v14 = *(impl + 251);
  *(v12 + 6224) = a3;
  *(v12 + 6232) = v10;
  *(v12 + 6256) = v11;
  v15 = *(v11 + 208);
  v16 = *(v15 + 24);
  if (*(v11 + 236))
  {
    v17 = v16 >= 2 && *(v15 + 80) != 0;
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v11, a4, 0, v7, v17);
    v19 = 0;
    *(v12 + 6168) = GPUVirtualAddress;
    v20 = *(v12 + 6256);
    v21 = *(v20 + 208);
    if (*(v21 + 24) >= 2u)
    {
      v19 = *(v21 + 80) != 0;
    }

    v22 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v20, v6, v19);
    v24 = 6184;
  }

  else
  {
    v25 = v16 >= 2 && *(v15 + 80) != 0;
    v22 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v11, a4, a6, v7, v25);
    v24 = 6168;
  }

  *(v12 + v24) = v22;
  *(v12 + 6196) = 1;
  if (v13)
  {
    MTLResourceListAddResource();
  }

  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(v14, *(v12 + 6224), 12, v23);
  IOGPUResourceListAddResource();
  if (*(v12 + 6232))
  {
    IOGPUResourceListAddResource();
  }

  if (*(v12 + 6240))
  {
    IOGPUResourceListAddResource();
  }

  v26 = *(v11 + 584);
  if (v26 && *(v26 + 1304) > v6)
  {
    v27 = *(v11 + 208);
    v28 = *(v27 + 24) >= 2u && *(v27 + 80) != 0;
    *(v12 + 6320) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v26 + 648 * v28, v8, v6, v7, 0);
  }

  if (!*(*(impl + 239) + 520))
  {
    if ((*(*(impl + 299) + 4957) & 1) != 0 || *(impl + 28060) == 1)
    {
      fwrite("Failed to satisfy render split.\n", 0x20uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(impl, impl + 9810, 0, 1);
  }
}

- (void)setDepthResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  impl = self->_impl;
  v10 = 0uLL;
  if (a3)
  {
    v11 = *(a3 + 74);
    if (v11)
    {
      v10 = *(v11 + 592);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *(impl + 299);
  v13 = *(impl + 237);
  v14 = *(impl + 251);
  *(v12 + 6200) = a3;
  *(v12 + 6208) = v10;
  *(v12 + 6248) = v11;
  if (*(v11 + 236))
  {
    *(v12 + 6160) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v11, a4, 0, a5, 0);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(v12 + 6248), v6, v7);
    v17 = 6176;
  }

  else
  {
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v11, a4, a6, a5, 0);
    v17 = 6160;
  }

  *(v12 + v17) = GPUVirtualAddress;
  *(v12 + 6192) = 1;
  if (v13)
  {
    MTLResourceListAddResource();
  }

  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(v14, *(v12 + 6200), 12, v16);
  IOGPUResourceListAddResource();
  if (*(v12 + 6208))
  {
    IOGPUResourceListAddResource();
  }

  if (*(v12 + 6216))
  {
    IOGPUResourceListAddResource();
  }

  v18 = *(v11 + 584);
  if (v18 && *(v18 + 1304) > v6)
  {
    *(v12 + 6312) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v18, v8, v6, v7, 0);
  }

  if (!*(*(impl + 239) + 520))
  {
    if ((*(*(impl + 299) + 4957) & 1) != 0 || *(impl + 28060) == 1)
    {
      fwrite("Failed to satisfy render split.\n", 0x20uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(impl, impl + 9810, 0, 1);
  }
}

- (void)setColorResolveTexture:(id)a3 slice:(unint64_t)a4 depthPlane:(unint64_t)a5 level:(unint64_t)a6 atIndex:(unint64_t)a7
{
  impl = self->_impl;
  v8 = 0uLL;
  if (a3)
  {
    v9 = *(a3 + 74);
    if (v9)
    {
      v8 = *(v9 + 592);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = impl[299];
  v11 = impl[237];
  *&v10[2 * a7 + 876] = v9;
  v12 = v10 + 808;
  *&v10[2 * (3 * a7) + 808] = a3;
  v13 = 3 * a7 + 1;
  *&v10[2 * v13 + 808] = v8;
  v14 = 3 * a7 + 2;
  *&v10[2 * v14 + 808] = *(&v8 + 1);
  v10[1238] |= 1 << a7;
  AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::configurePBE(v10, v9, a5, a6, a4, &v10[a7 + 102], a7, 1, (v10[1242] & (1 << a7)) != 0, (v10[1241] & (1 << a7)) != 0, (v10[1478] & (1 << a7)) != 0);
  IOGPUResourceListAddResource();
  if (*&v12[2 * v13])
  {
    IOGPUResourceListAddResource();
  }

  if (*&v12[2 * v14])
  {
    IOGPUResourceListAddResource();
  }

  if (v11)
  {
    MTLResourceListAddResource();
  }

  if (!*(impl[239] + 520))
  {
    if (*(impl[299] + 4957) & 1) != 0 || (*(impl + 28060))
    {
      v15 = impl[246] - impl[248];
      *(v15 + 140) = 1;
      if ((*(v15 + 136) & 4) != 0)
      {
        *impl[1] = 1;
      }
    }

    else
    {

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(impl, impl + 9810, 0, 1);
    }
  }
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

  *(impl + (v9 >> 3) + 79464) |= 1 << (v9 & 4);
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

  *(impl + (v8 >> 3) + 79464) |= 1 << (v8 & 3);
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  impl = self->_impl;
  *(impl + 14958) = a4 >> 3;
  *(impl + 7160) = ((a3 != 0) << 15) | ((a3 == 1) << 14) | *(impl + 7160) & 0xFFFF3FFF;
  *(impl + 7165) = *(impl + 7165) & 0x1FFFF | ((a4 >> 3) << 17);
  *(impl + 9810) |= 0x100000000000uLL;
  if (a3 && (impl[29918] & 1) != 0)
  {
    *(impl + 9934) |= 0x10000uLL;
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
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::finalizeVisibilityClear(impl);
        *v4.i64 = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitVisibilityClear(impl);
        v6 = *(impl + 57);
        a3 = v9;
      }
    }

    else
    {
      *(impl + 58) = v6 + 1;
    }

    *v6 = 2 * *(impl + 14958);
    *(impl + 57) = v6 + 1;
    v7 = *(impl + 7478) + 1;
    *(impl + 7478) = v7;
    *(*(impl + 3737) + 8) = v7;
  }

  v8 = impl[29919] | (a3 != 0);
  impl[29919] = v8;
  if ((v8 & 1) != 0 && (impl[78488] & 2) != 0)
  {
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(impl + 299), v4, *(impl + 239), *(impl + 251), 64);
    *(impl + 19622) &= ~2u;
  }
}

- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4
{
  impl = self->_impl;
  v5 = vmin_u32(__PAIR64__(a4, a3), 0xFF000000FFLL);
  *(impl + 3735) = v5;
  *(impl + 28644) = vorr_s8((*(impl + 28644) & 0xFFFFFF00FFFFFF00), v5);
  *(impl + 9810) |= 0x100000000000uLL;
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

  v5 = vdup_n_s32(v4);
  *(impl + 3735) = v5;
  *(impl + 28644) = vorr_s8((*(impl + 28644) & 0xFFFFFF00FFFFFF00), v5);
  *(impl + 9810) |= 0x100000000000uLL;
}

- (void)setDepthStencilState:(id)a3
{
  impl = self->_impl;
  v19[0] = 0xFFFFFF1C00E007;
  v21 = 0;
  v19[1] = 0;
  v20 = 0uLL;
  v23 = -1;
  if (a3)
  {
    v4 = (a3 + 24);
  }

  else
  {
    __p[0] = 0xFFFFFF1C00E007;
    v18 = 0;
    __p[1] = 0;
    v17 = 0uLL;
    v19[0] = 0xFFFFFF1C00E007;
    std::string::operator=(&v19[1], &__p[1]);
    LODWORD(v21) = v18;
    v22 = 0x720000000000000;
    v23 = 0xE0000000E000000;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[1]);
    }

    v4 = v19;
  }

  v5 = v4[6];
  *(impl + 3588) = v5;
  v6 = *(impl + 7161);
  v7 = *(impl + 7160) & 0xFFF7FFFF | (((*(v4 + 10) >> 19) & 1) << 19);
  *(impl + 7160) = v7;
  *(impl + 7160) = v7 & 0xFFFBFFFF | (((*(v4 + 10) >> 18) & 1) << 18);
  v8 = v6 & 0xFFDFFFFF | (((*(v4 + 11) >> 21) & 1) << 21);
  *(impl + 7161) = v8;
  *(impl + 7161) = v8 & 0xF8FFFFFF | ((HIBYTE(*(v4 + 11)) & 7) << 24);
  v9 = *(impl + 7162) & 0xFFDFFFFF | (((*(v4 + 11) >> 21) & 1) << 21);
  *(impl + 7162) = v9;
  *(impl + 7162) = v9 & 0xF8FFFFFF | ((HIBYTE(*(v4 + 11)) & 7) << 24);
  *(impl + 28652) = v5;
  v10 = *(impl + 3793);
  if (v10)
  {
    v11 = *(v10 + 3925);
  }

  else
  {
    v11 = 3;
  }

  if ((v11 - 1) < 2 && (*(*(*(impl + 234) + 848) + 16456) & 0x8000) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (*(impl + 3584) >> 28)
  {
    LOBYTE(v11) = v12;
  }

  v13 = vorr_s8(vdup_n_s32((v11 & 3) << 22), (*(impl + 3584) & 0xFF3FFFFFFF3FFFFFLL));
  v14 = *(impl + 9810);
  *(impl + 3584) = v13;
  *(impl + 9810) = v14 | 0x100000000000;
  v15 = *(v4 + 16);
  *(impl + 14921) = v15;
  *(impl + 14920) |= v15;
  *(impl + 14922) = *(v4 + 17);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }
}

- (void)setPrimitiveRestartEnabled:(BOOL)a3 index:(unint64_t)a4
{
  v4 = self->_impl + 28672;
  v4[1395] = a3;
  *(v4 + 349) = a4;
}

- (void)setPrimitiveRestartEnabled:(BOOL)a3
{
  v3 = self->_impl + 28672;
  v3[1395] = a3;
  *(v3 + 349) = -1;
}

- (void)setProvokingVertexMode:(unint64_t)a3
{
  impl = self->_impl;
  v4 = impl[9810];
  impl[9810] = v4 | 0x2000000000001;
  if (impl[3793])
  {
    impl[9810] = v4 | 0x2001000000003;
    impl[9808] |= 0x400uLL;
  }

  if (a3 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (!a3)
  {
    v5 = 0;
  }

  *(impl + 7518) = v5;
  *(impl + 7158) = impl[3579] & 0xFFFFFE7F | (((((v5 << 7) + 128) >> 7) & 3) << 7);
  *(impl[9130] + 916) = a3 == 2;
}

- (void)setViewportTransformEnabled:(BOOL)a3
{
  impl = self->_impl;
  impl[9810] |= 0x2000000000000uLL;
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 64;
  }

  *(impl + 7158) = impl[3579] & 0xFFFFFFBF | v4;
}

- (void)setPointSize:(float)a3
{
  impl = self->_impl;
  if (impl[7513] != a3)
  {
    impl[7513] = a3;
    *(impl + 9810) |= 0x100000000000uLL;
  }
}

- (void)setAlphaTestReferenceValue:(float)a3
{
  impl = self->_impl;
  *(impl[9130] + 900) = a3;
  impl[9810] |= 0x1000000000uLL;
  impl[9808] |= 8uLL;
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  impl = self->_impl;
  v7 = impl[9130];
  v7[219] = a3;
  v7[220] = a4;
  v7[221] = a5;
  v7[222] = a6;
  impl[9810] |= 0x1000000000uLL;
  impl[9808] |= 1uLL;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindStatelessPsoMetadataArgumentBuffer(impl, 0, impl[3794] != 0);
}

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  impl = self->_impl;
  if (LODWORD(a6.length))
  {
    v10 = a6.location;
    for (i = LODWORD(a6.length); i; --i)
    {
      if (*a3)
      {
        v14 = impl[234];
        v15 = *(v14 + 848);
        v16 = *a4;
        v17 = *a5;
        v18 = *a3 + 48;
        v20 = *(*a3 + 4);
        v19 = *(*a3 + 5);
        v35[0] = *v18;
        v35[1] = v20;
        v35[2] = v19;
        if (v18[71] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v18 + 6), *(v18 + 7));
        }

        else
        {
          v21 = *(v18 + 3);
          __p.__r_.__value_.__r.__words[2] = *(v18 + 8);
          *&__p.__r_.__value_.__l.__data_ = v21;
        }

        *(&v35[0] + 1) = __PAIR64__(v17, v16);
        Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v15, v35, v14, 0);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (!impl[237])
          {
            goto LABEL_16;
          }

LABEL_15:
          MTLResourceListAddResource();
          goto LABEL_16;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        if (impl[237])
        {
          goto LABEL_15;
        }
      }

      else
      {
        Sampler = 0;
        if (impl[237])
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      if (Sampler)
      {
        v23 = *&Sampler->_impl.desc.var1;
      }

      else
      {
        v23 = 0;
      }

      v24 = 32 * v10;
      v25 = v10;
      *(impl[9129] + v24 + 16888) = v23;
      v12 = impl[9129];
      if ((~*(v12 + 16880 + v24 + 8) & 0x6000000000000000) == 0)
      {
        *(v12 + 16880 + 32 * v10 + 16) = *&Sampler->_impl.var0;
        v12 = impl[9129];
LABEL_4:
        p_impl = &Sampler->_impl;
        if (LODWORD(Sampler[1].super._device))
        {
          p_impl = LODWORD(Sampler[1].super._device);
        }

        goto LABEL_6;
      }

      if (Sampler)
      {
        goto LABEL_4;
      }

      p_impl = 0;
LABEL_6:
      ++v10;
      *(v12 + 32 * v25 + 16880) = p_impl;
      ++a5;
      ++a4;
      ++a3;
    }
  }

  v26 = length + location;
  if (length + location == 128)
  {
    v27 = -1;
  }

  else
  {
    v27 = ~(-1 << (length + location));
  }

  if (v26 < 0x40)
  {
    v28 = ~(-1 << (length + location));
  }

  else
  {
    v28 = -1;
  }

  if (v26 >= 0x40)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v30 = -1 << location;
  if (location < 0x40)
  {
    v30 = -1;
  }

  v31 = -1 << location;
  if (location >= 0x40)
  {
    v31 = 0;
  }

  v32 = impl[9803];
  impl[9802] |= v28 & v31;
  impl[9803] = v32 | v29 & v30;
  impl[9810] |= 0x1000000000uLL;
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = a6;
  impl = self->_impl;
  if (!a3)
  {
    goto LABEL_15;
  }

  v8 = impl[234];
  v9 = *(v8 + 848);
  v10 = *(a3 + 4);
  v19[0] = *(a3 + 3);
  v19[1] = v10;
  v19[2] = *(a3 + 5);
  if (*(a3 + 119) < 0)
  {
    v11 = a5;
    v12 = a4;
    std::string::__init_copy_ctor_external(&__p, *(a3 + 12), *(a3 + 13));
    a4 = v12;
    a5 = v11;
  }

  else
  {
    __p = *(a3 + 4);
  }

  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v9, v19, v8, 0);
  v14 = Sampler;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_15:
    p_impl = 0;
    v16 = v6;
    *(impl[9129] + 32 * v6 + 16888) = 0;
    v18 = impl[9129];
    goto LABEL_16;
  }

  if (!Sampler)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  p_impl = &v14->_impl;
  v16 = v6;
  v17 = 32 * v6;
  *(impl[9129] + v17 + 16888) = *&v14->_impl.desc.var1;
  v18 = impl[9129];
  if ((~*(v18 + 16880 + v17 + 8) & 0x6000000000000000) == 0)
  {
    *(v18 + 16880 + 32 * v6 + 16) = *&v14->_impl.var0;
    v18 = impl[9129];
  }

  if (LODWORD(v14[1].super._device))
  {
    p_impl = LODWORD(v14[1].super._device);
  }

LABEL_16:
  *(v18 + 32 * v16 + 16880) = p_impl;
  impl[((v6 & 0xFFFFFFC0) != 0) + 9802] |= 1 << v6;
  impl[9810] |= 0x1000000000uLL;
}

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  impl = self->_impl;
  if (LODWORD(a4.length) && impl[237])
  {
    length_low = LODWORD(a4.length);
    v9 = a3;
    do
    {
      if (*v9)
      {
        MTLResourceListAddResource();
      }

      ++v9;
      --length_low;
    }

    while (length_low);
  }

  if (length)
  {
    v10 = length;
    v11 = location;
    while (1)
    {
      v13 = *v6;
      v14 = *v6 ? v13[15] : 0;
      v15 = 32 * v11;
      *(impl[9129] + v15 + 16888) = v14;
      v12 = impl[9129];
      if ((~*(v12 + 16880 + v15 + 8) & 0x6000000000000000) == 0)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_10;
      }

LABEL_12:
      *(v12 + 32 * v11++ + 16880) = v13;
      ++v6;
      if (!--v10)
      {
        goto LABEL_19;
      }
    }

    *(v12 + 16880 + 32 * v11 + 16) = *(v13 + 8);
    v12 = impl[9129];
LABEL_10:
    v13 += 6;
    if (*(v13 + 24))
    {
      v13 = *(v13 + 24);
    }

    goto LABEL_12;
  }

LABEL_19:
  v16 = length + location;
  if (length + location == 128)
  {
    v17 = -1;
  }

  else
  {
    v17 = ~(-1 << (length + location));
  }

  if (v16 < 0x40)
  {
    v18 = ~(-1 << (length + location));
  }

  else
  {
    v18 = -1;
  }

  if (v16 >= 0x40)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = -1 << location;
  if (location < 0x40)
  {
    v20 = -1;
  }

  v21 = -1 << location;
  if (location >= 0x40)
  {
    v21 = 0;
  }

  v22 = impl[9803];
  impl[9802] |= v18 & v21;
  impl[9803] = v22 | v19 & v20;
  impl[9810] |= 0x1000000000uLL;
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  impl = self->_impl;
  if (a3)
  {
    if (impl[237])
    {
      MTLResourceListAddResource();
    }

    v7 = a3 + 48;
    v8 = v4;
    v9 = 32 * v4;
    *(impl[9129] + v9 + 16888) = *(a3 + 15);
    v10 = impl[9129];
    if ((~*(v10 + 16880 + v9 + 8) & 0x6000000000000000) == 0)
    {
      *(v10 + 16880 + 32 * v4 + 16) = *(a3 + 8);
      v10 = impl[9129];
    }

    if (*(a3 + 36))
    {
      v7 = *(a3 + 36);
    }
  }

  else
  {
    v7 = 0;
    v8 = a4;
    *(impl[9129] + 32 * a4 + 16888) = 0;
    v10 = impl[9129];
  }

  *(v10 + 32 * v8 + 16880) = v7;
  impl[((v4 & 0xFFFFFFC0) != 0) + 9802] |= 1 << v4;
  impl[9810] |= 0x1000000000uLL;
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  impl = self->_impl;
  if (LODWORD(a4.length) && *(impl + 237))
  {
    length_low = LODWORD(a4.length);
    v9 = a3;
    do
    {
      if (*v9)
      {
        MTLResourceListAddResource();
      }

      ++v9;
      --length_low;
    }

    while (length_low);
  }

  if (length)
  {
    v10 = length;
    v11 = location;
    do
    {
      v12 = *v6++;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<false,true>(impl, (impl + 54144), v12, v11++);
      --v10;
    }

    while (v10);
  }

  v13 = length + location;
  v14 = -1 << (length + location);
  if (length + location == 128)
  {
    v15 = -1;
  }

  else
  {
    v15 = ~(-1 << (length + location));
  }

  if (v13 < 0x40)
  {
    v16 = ~v14;
  }

  else
  {
    v16 = -1;
  }

  if (v13 >= 0x40)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = -1 << location;
  if (location < 0x40)
  {
    v18 = -1;
  }

  v19 = -1 << location;
  if (location >= 0x40)
  {
    v19 = 0;
  }

  *(impl + 9800) |= v16 & v19;
  *(impl + 9801) |= v17 & v18;
  if (v13 == 128)
  {
    v20 = -1;
  }

  else
  {
    v20 = ~(-1 << v13);
  }

  if (v13 < 0x40)
  {
    v21 = ~v14;
  }

  else
  {
    v21 = -1;
  }

  if (v13 >= 0x40)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  *(impl + 9806) |= v21 & v19;
  *(impl + 9810) |= 0x5000000000uLL;
  v23 = vdupq_n_s64(0x10uLL);
  v23.i64[0] = v22 & v18;
  *(impl + 78456) = vorrq_s8(*(impl + 78456), v23);
}

- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6
{
  v6 = a6;
  v8 = a4;
  impl = self->_impl;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<false,true>(impl, (impl + 6768), a3, a4);
  if (a5)
  {
    v11 = *(a5 + 15);
  }

  else
  {
    v11 = 0;
  }

  v12 = 32 * v6;
  *(impl[9129] + v12 + 16888) = v11;
  v13 = impl[9129];
  if ((~*(v13 + 16880 + v12 + 8) & 0x6000000000000000) != 0)
  {
    if (!a5)
    {
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    *(v13 + 16880 + 32 * v6 + 16) = *(a5 + 8);
    v13 = impl[9129];
  }

  v14 = a5 + 48;
  if (*(a5 + 36))
  {
    v14 = *(a5 + 36);
  }

LABEL_9:
  *(v13 + 32 * v6 + 16880) = v14;
  if (a3)
  {
    if (impl[237])
    {
      MTLResourceListAddResource();
      if (impl[237])
      {
        MTLResourceListAddResource();
      }
    }
  }

  v15 = &impl[v8 > 0x3F];
  v15[9800] |= 1 << v8;
  v15[9806] |= 1 << v8;
  impl[((v6 & 0xFFFFFFC0) != 0) + 9802] |= 1 << v6;
  impl[9810] |= 0x5000000000uLL;
}

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  impl = self->_impl;
  if (a3)
  {
    if (impl[237])
    {
      v6 = a3;
      MTLResourceListAddResource();
      a3 = v6;
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<false,true>(impl, (impl + 6768), a3, v4);
    v7 = 1 << v4;
  }

  else
  {
    v8 = 8 * (a4 > 0x3F);
    v9 = (*(impl[251] + 40) + v8);
    v7 = 1 << a4;
    v9[8] &= ~(1 << a4);
    v9[28] &= ~(1 << a4);
    v9[48] &= ~(1 << a4);
    impl[(3 * a4) + 9201] = 0;
    impl[(3 * a4 + 1) + 9201] = 0;
    impl[(3 * a4 + 2) + 9201] = 0;
    v10 = a4 << 7;
    v11 = impl[9129] + v10;
    bzero((v11 + 496), 0x38uLL);
    *(v11 + 544) = 0;
    v12 = impl[9129];
    v13 = v12 + v8;
    *(v13 + 17888) = *(v12 + v8 + 17888) & ~v7;
    *(v13 + 17904) = *(v12 + v8 + 17904) & ~v7;
    v14 = *(impl[234] + 848);
    v15 = v12 + v10;
    v16 = *(v14 + 16496);
    *(v15 + 560) = *(v14 + 16480);
    *(v15 + 576) = v16;
    v17 = *(impl[234] + 848);
    v18 = impl[9129] + v10;
    v19 = *(v17 + 16528);
    *(v18 + 592) = *(v17 + 16512);
    *(v18 + 608) = v19;
    *(impl[9129] + v10 + 552) = 0;
  }

  v20 = &impl[v4 > 0x3F];
  v20[9800] |= v7;
  v20[9806] |= v7;
  impl[9810] |= 0x5000000000uLL;
  impl[9808] |= 0x10uLL;
}

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a3;
  impl = self->_impl;
  v10 = impl + 9798;
  if (LODWORD(a5.length) && impl[237])
  {
    length_low = LODWORD(a5.length);
    v12 = a3;
    do
    {
      if (*v12)
      {
        MTLResourceListAddResource();
      }

      ++v12;
      --length_low;
    }

    while (length_low);
  }

  if (length)
  {
    v13 = impl + 9129;
    v14 = impl + 9585;
    v15 = impl + 9655;
    v16 = impl + 9131;
    v17 = length;
    v18 = MEMORY[0x29EDC5638];
    v19 = location;
    while (1)
    {
      if (location <= 0x22)
      {
        impl[location + 9725] = 0;
      }

      v23 = *v8;
      if (!*v8)
      {
        v16[v19] = 0;
        if (v19 < 0x1F)
        {
          v20 = *v13;
          v21 = v19;
          v22 = (*v13 + v21 * 8);
          *v22 = 0;
          v14[v21] = 0;
          v22[31] = 0;
          v15[v21] = 0;
          *(v20 + 4 * v19 + 17516) = 0;
          v22[2205] = 0;
        }

        else
        {
          v33 = impl[9130] + 8 * (v19 - 31);
          *(v33 + 48) = 0;
          *(v33 + 360) = 0;
          v14[v19] = 0;
          v15[v19] = 0;
        }

        goto LABEL_10;
      }

      v24 = &v23[*v18];
      v25 = *(v24 + 1);
      v28 = v24 + 16;
      v26 = *(v24 + 2);
      v27 = *(v28 + 1);
      v29 = *a4;
      v30 = *a4 + v25;
      if (v19 > 0x1E)
      {
        v34 = impl[9130] + 8 * (v19 - 31);
        *(v34 + 48) = v30;
        v32 = (v34 + 360);
      }

      else
      {
        v31 = (*v13 + 8 * v19);
        *v31 = v30;
        v32 = v31 + 31;
      }

      *v32 = v27 + v29;
      v14[v19] = v25;
      v15[v19] = v27;
      if (location <= 0x1E)
      {
        v35 = *v13;
        *(*v13 + 4 * location + 17516) = v26;
        v36 = (v35 + 8 * location + 17640);
        *v36 = v26;
        v36[1] = v25 >> 8;
      }

      v16[v19] = &v23[*v18];
      v37 = impl[251];
      v38 = v37[2].i64[1];
      if (*(v38 + 480) != 1)
      {
        break;
      }

      v39 = v37[3];
      v40 = v37[4];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v39), vceqzq_s64(v40))))) & 1) == 0)
      {
        break;
      }

      v41 = &v23[*v18];
      if ((*(v41 + 23) & 0x10) != 0)
      {
        v41 = *v41;
      }

      v42 = *v41;
      if (!v42)
      {
        goto LABEL_30;
      }

      v43 = *(v42 + 16);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v42), vceqzq_s64(v43))))) & 1) == 0)
      {
        break;
      }

      v44 = vandq_s8(v43, v40);
      v45 = v44.u64[1];
      if (v44.i64[1])
      {
        v46 = 3;
LABEL_37:
        v50 = &v37->i8[8 * v46];
        v51 = __clz(v45) ^ 0x3F;
        v42 = (*(v50 + 10) >> v51) & 1;
        v47 = (*(v50 + 14) >> v51) & 1;
        goto LABEL_31;
      }

      v45 = v44.i64[0];
      if (v44.i64[0])
      {
        v46 = 2;
        goto LABEL_37;
      }

      v49 = vandq_s8(*v42, v39);
      v45 = v49.u64[1];
      if (v49.i64[1])
      {
        v46 = 1;
        goto LABEL_37;
      }

      v46 = 0;
      v42 = 0;
      v47 = 0;
      v45 = v49.i64[0];
      if (v49.i64[0])
      {
        goto LABEL_37;
      }

LABEL_31:
      v48 = (v38 + 8 * (v19 > 0x3F));
      v48[2] = v48[2] & ~(1 << v19) | (v42 << v19);
      v48[22] = v48[22] & ~(1 << v19) | (v47 << v19);
      v48[42] &= ~(1 << v19);
LABEL_10:
      ++v19;
      ++a4;
      ++v8;
      if (!--v17)
      {
        goto LABEL_38;
      }
    }

    v42 = 0;
LABEL_30:
    v47 = 0;
    goto LABEL_31;
  }

LABEL_38:
  v52 = length + location;
  v53 = -1 << (length + location);
  if (length + location == 128)
  {
    v54 = -1;
  }

  else
  {
    v54 = ~(-1 << (length + location));
  }

  if (v52 < 0x40)
  {
    v55 = ~v53;
  }

  else
  {
    v55 = -1;
  }

  if (v52 >= 0x40)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0;
  }

  v57 = -1 << location;
  if (location >= 0x40)
  {
    v57 = 0;
  }

  v58 = *v10 | v55 & v57;
  v59 = -1 << location;
  if (location < 0x40)
  {
    v59 = -1;
  }

  v60 = impl[9799] | v56 & v59;
  *v10 = v58;
  impl[9799] = v60;
  if (v52 == 128)
  {
    v61 = -1;
  }

  else
  {
    v61 = ~(-1 << v52);
  }

  if (v52 < 0x40)
  {
    v62 = ~v53;
  }

  else
  {
    v62 = -1;
  }

  if (v52 >= 0x40)
  {
    v63 = v61;
  }

  else
  {
    v63 = 0;
  }

  v64 = impl[9805] | v63 & v59;
  impl[9804] |= v62 & v57;
  impl[9805] = v64;
  impl[9810] |= 0x3000000000uLL;
}

- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  v5 = &impl[a4];
  v6 = v5[9655];
  v7 = v5[9585] + a3;
  if (a4 >= 0x1F)
  {
    v10 = impl[9130] + 8 * (a4 - 31);
    *(v10 + 48) = v7;
    *(v10 + 360) = v6 + a3;
  }

  else
  {
    v8 = impl[9129];
    v9 = v8 + 8 * a4;
    *v9 = v7;
    *(v9 + 248) = v6 + a3;
    *(v9 + 17640) = *(v8 + 4 * a4 + 17516);
  }

  impl[(a4 > 0x3F) + 9798] |= 1 << a4;
  impl[9810] |= 0x1000000000uLL;
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  impl = self->_impl;
  v7 = impl + 9129;
  if (a5 <= 0x22)
  {
    impl[(a5 & 0x3F) + 9725] = 0;
  }

  if (!a3)
  {
    impl[a5 + 9131] = 0;
    if (a5 >= 0x1F)
    {
      v33 = impl[9130] + 8 * (a5 - 31);
      *(v33 + 48) = 0;
      *(v33 + 360) = 0;
      v34 = &impl[a5];
      v34[9585] = 0;
      v34[9655] = 0;
    }

    else
    {
      v17 = *v7;
      v18 = (v17 + 8 * a5);
      *v18 = 0;
      v19 = &impl[a5];
      v19[9585] = 0;
      v18[31] = 0;
      v19[9655] = 0;
      *(v17 + 4 * a5 + 17516) = 0;
      v18[2205] = 0;
    }

    goto LABEL_22;
  }

  v8 = MEMORY[0x29EDC5638];
  v9 = a3 + *MEMORY[0x29EDC5638];
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[1];
  v13 = &impl[a5];
  v13[9585] = v12;
  v13[9655] = v11;
  v14 = v12 + a4;
  if (a5 >= 0x1F)
  {
    v20 = impl[9130] + 8 * (a5 - 31);
    *(v20 + 48) = v14;
    *(v20 + 360) = v11 + a4;
  }

  else
  {
    v15 = *v7;
    v16 = v15 + 8 * a5;
    *v16 = v14;
    *(v15 + 4 * a5 + 17516) = v10;
    *(v16 + 248) = v11 + a4;
    *(v16 + 17640) = v10;
    *(v16 + 17644) = v12 >> 8;
  }

  impl[a5 + 9131] = a3 + *v8;
  v21 = impl[251];
  v22 = v21[2].i64[1];
  if (*(v22 + 480) != 1)
  {
    goto LABEL_17;
  }

  v23 = v21[3];
  v24 = v21[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v23), vceqzq_s64(v24))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v25 = a3 + *v8;
  if ((v25[23] & 0x10) != 0)
  {
    v25 = *v25;
  }

  v26 = *v25;
  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = *(v26 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v26), vceqzq_s64(v27))))) & 1) == 0)
  {
LABEL_17:
    v26 = 0;
LABEL_18:
    v31 = 0;
    goto LABEL_19;
  }

  v28 = vandq_s8(v27, v24);
  v29 = v28.u64[1];
  if (v28.i64[1])
  {
    v30 = 3;
  }

  else
  {
    v29 = v28.i64[0];
    if (v28.i64[0])
    {
      v30 = 2;
    }

    else
    {
      v36 = vandq_s8(*v26, v23);
      v29 = v36.u64[1];
      if (v36.i64[1])
      {
        v30 = 1;
      }

      else
      {
        v30 = 0;
        v26 = 0;
        v31 = 0;
        v29 = v36.i64[0];
        if (!v36.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v37 = &v21->i8[8 * v30];
  v38 = __clz(v29) ^ 0x3F;
  v26 = (*(v37 + 10) >> v38) & 1;
  v31 = (*(v37 + 14) >> v38) & 1;
LABEL_19:
  v32 = (v22 + 8 * (a5 > 0x3F));
  v32[2] = v32[2] & ~(1 << a5) | (v26 << a5);
  v32[22] = v32[22] & ~(1 << a5) | (v31 << a5);
  v32[42] &= ~(1 << a5);
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

LABEL_22:
  v35 = &impl[v5 > 0x3F];
  v35[9798] |= 1 << v5;
  v35[9804] |= 1 << v5;
  impl[9810] |= 0x3000000000uLL;
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  impl = self->_impl;
  v8 = a4 + 15;
  v9 = (a4 + 15) | 0xF;
  v10 = impl[25];
  v11 = v10 + v9;
  if (v10 + v9 <= impl[24])
  {
LABEL_2:
    impl[26] = v11;
    goto LABEL_3;
  }

  v23 = a3;
  v24 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 3, 4, 0);
  v10 = impl[25];
  if (v24)
  {
    v11 = v10 + v9;
    a3 = v23;
    if (v10 + v9 > impl[24])
    {
      abort();
    }

    goto LABEL_2;
  }

  a3 = v23;
LABEL_3:
  v12 = impl + 9129;
  v13 = v8 & 0xFFFFFFFFFFFFFFF0;
  v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[impl[27]];
  impl[25] = &v14[v13];
  memcpy(v14, a3, a4);
  v16 = *(impl[6] + 288);
  v17 = *MEMORY[0x29EDC5638];
  v18 = v5 & 0x3F;
  if (v5 < 0x23)
  {
    impl[v18 + 9725] = 0;
  }

  v19 = v16 + v17;
  impl[(v5 > 0x3F) + 9798] |= 1 << v18;
  impl[9810] |= 0x1000000000uLL;
  if (v5 >= 0x1F)
  {
    *(impl[9130] + 8 * (v5 - 31) + 48) = v15;
    impl[v5 + 9131] = v19;
  }

  else
  {
    v20 = *v12;
    v21 = v5 & 0x1F;
    v22 = *v12 + v21 * 8;
    impl[v21 + 9131] = v19;
    *(v20 + 4 * (v5 & 0x1F) + 17516) = a4;
    *v22 = v15;
    *(v22 + 17640) = a4;
    *(v22 + 17644) = v15 >> 8;
  }
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  impl = self->_impl;
  if (*(impl + 3755) != a3)
  {
    *(impl + 9810) |= 0x100000000000uLL;
  }

  *(impl + 3755) = a3;
  *(impl + 28644) = vorr_s8((*(impl + 28644) & 0xFFF3FFFFFFF3FFFFLL), vdup_n_s32((a3 & 3) << 18));
  v4 = 82;
  if (a3 != 1)
  {
    v4 = 0;
  }

  *&impl[((v4 >> 3) & 8) + 79464] |= 1 << (v4 & 0x3E);
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissors((impl + 3589), a3, a4);
  impl[9810] |= 0x200000000000uLL;
}

- (void)setScissorRect:(id *)a3
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissors((impl + 3589), a3, 1u);
  impl[9810] |= 0x200000000000uLL;
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  impl = self->_impl;
  v5 = (impl + 28608);
  v6 = 0.0;
  if (a3 >= 0.0)
  {
    v6 = a3;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  if (v6 > a4)
  {
    v6 = a4;
  }

  if (v6 != *v5 || a4 != *(impl + 7153))
  {
    v7 = (impl + 78480);
    *v5 = v6;
    v5[1] = a4;
    v8 = v6 != 0.0;
    if (a4 != 1.0)
    {
      v8 = 1;
    }

    if (*(v5 + 1253) == v8)
    {
      v9 = *v7;
      if (!v8)
      {
LABEL_13:
        *v7 = v9 & 0xFFFF7FFFFFFFFFFFLL;
        return;
      }
    }

    else
    {
      if (v8)
      {
        v10 = 0x1000000;
      }

      else
      {
        v10 = 0;
      }

      *(v5 + 8) = v5[8] & 0xFEFFFFFF | v10;
      v9 = *v7 | 0x100000000000;
      *(v5 + 1253) = v8;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    *v7 = v9 | 0x800000000000;
    v7[124] |= 4uLL;
    *(v5 + 616) |= 1u;
  }
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  impl = self->_impl;
  v6 = impl + 7462;
  if (impl[7462] != a3 || impl[7463] != a4 || impl[7464] != a5)
  {
    v7 = (impl + 19620);
    *v6 = a3;
    v6[1] = a4;
    v6[2] = a5;
    v8 = *v7;
    if (a3 == 0.0 && a4 == 0.0)
    {
      *v7 = v8 & 0xFFFFBFFFFFFFFFFFLL;
    }

    else
    {
      *v7 = v8 | 0x400000000000;
      v7[124] |= 2uLL;
    }
  }
}

- (void)setLineWidth:(float)a3
{
  impl = self->_impl;
  if (impl[7512] != a3)
  {
    impl[7512] = a3;
    *(impl + 9810) |= 0x100000000000uLL;
  }
}

- (void)setDepthClipMode:(unint64_t)a3
{
  impl = self->_impl;
  impl[3757] = a3;
  *(impl + 7158) = impl[3579] & 0xFFFFF3FF | ((((1024 << a3) >> 10) & 3) << 10);
  v4 = a3 == 1;
  v5 = *(impl + 29516);
  *(impl + 29516) = v4;
  if (v5 == v4)
  {
    v6 = impl[9810];
  }

  else
  {
    v6 = impl[9810] | 0xC0200000000000;
  }

  impl[9810] = v6 | 0x2000000000000;
  impl[(a3 == 1) + 9933] |= 1uLL;
}

- (void)setCullMode:(unint64_t)a3
{
  impl = self->_impl;
  impl[3733] = a3;
  *(impl + 7158) = a3 & 3 | ((impl[3734] & 1) << 16) | impl[3579] & 0xFFFEFFFC;
  impl[9810] |= 0x2000000000000uLL;
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
    impl[9810] |= 0x1000000000000uLL;
  }
}

- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4
{
  impl = self->_impl;
  v6 = impl + 28688;
  v7 = *(impl + 6137);
  if (a3 == 1)
  {
    *(v7 + 740) = a4;
    v4.i32[0] = a4;
    v8 = vcnt_s8(v4);
    v8.i16[0] = vaddlv_u8(v8);
    *(v7 + 736) = v8.i32[0];
    LODWORD(a4) = v8.i32[0];
  }

  else
  {
    *(v7 + 736) = a4;
    *(v7 + 740) = ~(-1 << a4);
  }

  *(impl + 7520) = a4;
  v9 = *(impl + 9810);
  *(impl + 9810) = v9 | 0x40;
  *(impl + 9772) |= 0x80uLL;
  v10 = *(impl + 3792);
  if (v10)
  {
    v11 = *(v10 + 4112);
    v12 = HIDWORD(v11);
    LODWORD(v11) = *v6 & 0xF0E3FF00 | v11 & 0xF1C00FF;
    *(impl + 7174) = *(impl + 7174) & 0xFFFFFFF8 | (a4 - 1) & 7;
    *(impl + 7175) = v12;
    *v6 = v11;
    *(impl + 9810) = v9 | 0x44;
  }

  v13 = *(impl + 3495);
  if (v13)
  {
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAmplificationCount(v13, a4, 0);
  }
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  impl = self->_impl;
  *(impl + 3734) = a3;
  v4 = *(impl + 7168) >> 28;
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
    *(*(impl + 9130) + 904) = 0;
    *(impl + 28652) = *(impl + 3588);
    v6 = *(impl + 9810);
    v7 = *(impl + 7466);
    *(impl + 28644) = vbsl_s8(0xFFFFFF00FFFFFF00, *(impl + 28644), *(impl + 29880));
    *(impl + 7158) = v7 & 3 | ((a3 & 1) << 16) | *(impl + 7158) & 0xFFFEFFFC;
    *(impl + 9810) = v6 | 0x2100000000000;
  }
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v4 = a4;
  impl = self->_impl;
  v6 = (impl + 9728);
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setViewports((impl + 3589), a3, a4, *(impl[299] + 4906));
  *(v6 + 82) |= 0x81200000000000uLL;
  if (v4 >= 2)
  {
    *(v6 + 206) |= 0x80000000uLL;
  }
}

- (void)setViewport:(id *)a3
{
  impl = self->_impl;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setViewports((impl + 3589), a3, 1u, *(impl[299] + 4906));
  impl[9810] |= 0x81200000000000uLL;
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  impl = self->_impl;
  impl[486] = impl[485];
  if (*(impl + 237))
  {
    MTLResourceListAddResource();
  }

  v8 = *MEMORY[0x29EDC5638];
  v9 = a4 + v8;
  v10 = *(a4 + v8 + 16);
  if ((v10 & 0x7FFFFFFF80) != 0 && (v10 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v12 = *(impl + 251);
    if (*(v12[2].i64[1] + 480) == 1)
    {
      v13 = v12[3];
      v14 = v12[4];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v13), vceqzq_s64(v14))))))
      {
        v15 = (a4 + v8);
        if ((v10 & 0x1000000000000000) != 0)
        {
          v15 = *v9;
        }

        v16 = *v15;
        if (v16)
        {
          v17 = *v16;
          v18 = v16[1];
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v16), vceqzq_s64(v18))))))
          {
            v19 = vandq_s8(v18, v14);
            v20 = v19.u64[1];
            if (v19.i64[1])
            {
              v21 = 3;
            }

            else
            {
              v20 = v19.i64[0];
              if (v19.i64[0])
              {
                v21 = 2;
              }

              else
              {
                v22 = vandq_s8(v17, v13);
                v20 = v22.u64[1];
                if (v22.i64[1])
                {
                  v21 = 1;
                }

                else
                {
                  v20 = v22.i64[0];
                  if (!v22.i64[0])
                  {
                    goto LABEL_26;
                  }

                  v21 = 0;
                }
              }
            }

            v23 = &v12->i8[8 * v21];
            v24 = *(v23 + 10);
            v25 = 1 << (__clz(v20) ^ 0x3Fu);
            v26 = (v25 & v24) != 0;
            if ((v25 & (*(v23 + 14) | v24)) != 0)
            {
              v27 = (*(v9 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
              v28 = a4 + v8;
              if ((v10 & 0x1000000000000000) != 0)
              {
                v28 = *v9;
              }

              v29[0] = v28;
              v29[1] = v27;
              v30 = v10 >> 7;
              v31 = 65;
              v32 = v26;
              ResourceTracker<_ResourceGroupBinding>::addResource(v12, v29, *(v9 + 12), 65);
            }
          }
        }
      }
    }
  }

LABEL_26:
  IOGPUResourceListAddResource();
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::executeCommandsInBufferCommon(impl);
  *(self->_impl + 487) = *(self->_impl + 485);
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  impl = self->_impl;
  v6 = impl[485];
  impl[486] = v6;
  if (LODWORD(a4.length))
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::executeCommandsInBufferCommon(impl);
    impl = self->_impl;
    v6 = impl[485];
  }

  impl[487] = v6;
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    if (*(self->_impl + 237))
    {
      do
      {
        if (*a3)
        {
          MTLResourceListAddResource();
          IOGPUResourceListAddResource();
        }

        ++a3;
        --v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        if (*a3)
        {
          IOGPUResourceListAddResource();
        }

        ++a3;
        --v4;
      }

      while (v4);
    }
  }
}

- (void)useResidencySet:(id)a3
{
  if (*(self->_impl + 237))
  {
    if (!a3)
    {
      return;
    }

    MTLResourceListAddResource();
  }

  else if (!a3)
  {
    return;
  }

  IOGPUResourceListAddResource();
}

- (void)useHeap:(id)a3
{
  impl = self->_impl;
  if ([a3 type] == 2)
  {
    for (i = *(a3 + 7); i != *(a3 + 8); i += 8)
    {
      if (impl[237])
      {
        MTLResourceListAddResource();
      }

      IOGPUResourceListAddResource();
    }
  }

  else if (a3)
  {
    if (impl[237])
    {
      MTLResourceListAddResource();
    }

    IOGPUResourceListAddResource();
  }
}

- (void)useHeap:(id)a3 stages:(unint64_t)a4
{
  impl = self->_impl;
  if ([a3 type] == 2)
  {
    for (i = *(a3 + 7); i != *(a3 + 8); i += 8)
    {
      if (impl[237])
      {
        MTLResourceListAddResource();
      }

      IOGPUResourceListAddResource();
    }
  }

  else if (a3)
  {
    if (impl[237])
    {
      MTLResourceListAddResource();
    }

    IOGPUResourceListAddResource();
  }
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  v17 = a5;
  v6 = a4;
  impl = self->_impl;
  if (a4)
  {
    v9 = 0;
    v10 = MEMORY[0x29EDC5638];
    do
    {
      v11 = a3[v9];
      if (v11 && *(v11 + *v10 + 16) >> 61 == 3)
      {
        v12 = v11[39];
        IOGPUResourceListAddResource();
        v14 = *(v12 + 64);
        v13 = *(v12 + 72);
        while (v14 != v13)
        {
          if (*v14)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v14);
            IOGPUResourceListAddResource();
          }

          v14 += 2;
        }
      }

      ++v9;
    }

    while (v9 != v6);
  }

  if ((v17 & 5) != 0)
  {
    v15 = 5;
  }

  else
  {
    v15 = 0;
  }

  if ((v17 & 2) != 0)
  {
    v16 = 13;
  }

  else
  {
    v16 = v15;
  }

  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(impl, a3, v6, v5, 5, v16);
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  if ((a4 & 5) != 0)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  if ((a4 & 2) != 0)
  {
    v6 = 13;
  }

  else
  {
    v6 = v5;
  }

  if (a3)
  {
    impl = self->_impl;
    if (*(a3 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v9 = *(a3 + 39);
      IOGPUResourceListAddResource();
      v10 = *(v9 + 64);
      v11 = *(v9 + 72);
      while (v10 != v11)
      {
        if (*v10)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v10);
          IOGPUResourceListAddResource();
        }

        v10 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(impl, a3, v4, 5, v6);
  }
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6
{
  v7 = a6 & 1;
  if ((a6 & 0x18) != 0)
  {
    v7 = 1;
  }

  v8 = v7 | 4;
  if ((a6 & 6) == 0)
  {
    v8 = v7;
  }

  v9 = v8 | 2;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = v7 | 0xC;
  if ((a6 & 6) != 0)
  {
    v11 = 1;
  }

  else
  {
    v10 = v9;
    v11 = 0;
  }

  if ((a5 & 5) == 0)
  {
    v7 = 0;
  }

  if ((((a5 & 5) != 0) & v11) != 0)
  {
    v7 |= 4u;
  }

  if ((a5 & 2) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a4)
  {
    v14 = 0;
    impl = self->_impl;
    v22 = a4;
    v16 = a4;
    v17 = MEMORY[0x29EDC5638];
    do
    {
      v18 = a3[v14];
      if (v18 && *(v18 + *v17 + 16) >> 61 == 3)
      {
        v19 = v18[39];
        IOGPUResourceListAddResource();
        v21 = *(v19 + 64);
        v20 = *(v19 + 72);
        while (v21 != v20)
        {
          if (*v21)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v21);
            IOGPUResourceListAddResource();
          }

          v21 += 2;
        }
      }

      ++v14;
    }

    while (v14 != v16);

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(impl, a3, v22, v6, v12, v12);
  }
}

- (void)useResource:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v6 = a5 & 1;
  if ((a5 & 0x18) != 0)
  {
    v6 = 1;
  }

  v7 = v6 | 4;
  if ((a5 & 6) == 0)
  {
    v7 = v6;
  }

  v8 = v7 | 2;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = v6 | 0xC;
  if ((a5 & 6) != 0)
  {
    v10 = 1;
  }

  else
  {
    v9 = v8;
    v10 = 0;
  }

  if ((a4 & 5) == 0)
  {
    v6 = 0;
  }

  if ((((a4 & 5) != 0) & v10) != 0)
  {
    v6 |= 4u;
  }

  if ((a4 & 2) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a3)
  {
    impl = self->_impl;
    if (*(a3 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v14 = *(a3 + 39);
      IOGPUResourceListAddResource();
      v15 = *(v14 + 64);
      v16 = *(v14 + 72);
      while (v15 != v16)
      {
        if (*v15)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v15);
          IOGPUResourceListAddResource();
        }

        v15 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(impl, a3, v5, v11, v11);
  }
}

- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  impl = self->_impl;
  if (LODWORD(a6.length))
  {
    v10 = a6.location;
    for (i = LODWORD(a6.length); i; --i)
    {
      if (*a3)
      {
        v14 = impl[234];
        v15 = *(v14 + 848);
        v16 = *a4;
        v17 = *a5;
        v18 = *a3 + 48;
        v20 = *(*a3 + 4);
        v19 = *(*a3 + 5);
        v35[0] = *v18;
        v35[1] = v20;
        v35[2] = v19;
        if (v18[71] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v18 + 6), *(v18 + 7));
        }

        else
        {
          v21 = *(v18 + 3);
          __p.__r_.__value_.__r.__words[2] = *(v18 + 8);
          *&__p.__r_.__value_.__l.__data_ = v21;
        }

        *(&v35[0] + 1) = __PAIR64__(v17, v16);
        Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v15, v35, v14, 0);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (!impl[237])
          {
            goto LABEL_16;
          }

LABEL_15:
          MTLResourceListAddResource();
          goto LABEL_16;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        if (impl[237])
        {
          goto LABEL_15;
        }
      }

      else
      {
        Sampler = 0;
        if (impl[237])
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      if (Sampler)
      {
        v23 = *&Sampler->_impl.desc.var1;
      }

      else
      {
        v23 = 0;
      }

      v24 = 32 * v10;
      v25 = v10;
      *(impl[6136] + v24 + 16888) = v23;
      v12 = impl[6136];
      if ((~*(v12 + 16880 + v24 + 8) & 0x6000000000000000) == 0)
      {
        *(v12 + 16880 + 32 * v10 + 16) = *&Sampler->_impl.var0;
        v12 = impl[6136];
LABEL_4:
        p_impl = &Sampler->_impl;
        if (LODWORD(Sampler[1].super._device))
        {
          p_impl = LODWORD(Sampler[1].super._device);
        }

        goto LABEL_6;
      }

      if (Sampler)
      {
        goto LABEL_4;
      }

      p_impl = 0;
LABEL_6:
      ++v10;
      *(v12 + 32 * v25 + 16880) = p_impl;
      ++a5;
      ++a4;
      ++a3;
    }
  }

  v26 = length + location;
  if (length + location == 128)
  {
    v27 = -1;
  }

  else
  {
    v27 = ~(-1 << (length + location));
  }

  if (v26 < 0x40)
  {
    v28 = ~(-1 << (length + location));
  }

  else
  {
    v28 = -1;
  }

  if (v26 >= 0x40)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v30 = -1 << location;
  if (location < 0x40)
  {
    v30 = -1;
  }

  v31 = -1 << location;
  if (location >= 0x40)
  {
    v31 = 0;
  }

  v32 = impl[9767];
  impl[9766] |= v28 & v31;
  impl[9767] = v32 | v29 & v30;
  impl[9810] |= 0x40uLL;
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = a6;
  impl = self->_impl;
  if (!a3)
  {
    goto LABEL_15;
  }

  v8 = impl[234];
  v9 = *(v8 + 848);
  v10 = *(a3 + 4);
  v19[0] = *(a3 + 3);
  v19[1] = v10;
  v19[2] = *(a3 + 5);
  if (*(a3 + 119) < 0)
  {
    v11 = a5;
    v12 = a4;
    std::string::__init_copy_ctor_external(&__p, *(a3 + 12), *(a3 + 13));
    a4 = v12;
    a5 = v11;
  }

  else
  {
    __p = *(a3 + 4);
  }

  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v9, v19, v8, 0);
  v14 = Sampler;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_15:
    p_impl = 0;
    v16 = v6;
    *(impl[6136] + 32 * v6 + 16888) = 0;
    v18 = impl[6136];
    goto LABEL_16;
  }

  if (!Sampler)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  p_impl = &v14->_impl;
  v16 = v6;
  v17 = 32 * v6;
  *(impl[6136] + v17 + 16888) = *&v14->_impl.desc.var1;
  v18 = impl[6136];
  if ((~*(v18 + 16880 + v17 + 8) & 0x6000000000000000) == 0)
  {
    *(v18 + 16880 + 32 * v6 + 16) = *&v14->_impl.var0;
    v18 = impl[6136];
  }

  if (LODWORD(v14[1].super._device))
  {
    p_impl = LODWORD(v14[1].super._device);
  }

LABEL_16:
  *(v18 + 32 * v16 + 16880) = p_impl;
  impl[((v6 & 0xFFFFFFC0) != 0) + 9766] |= 1 << v6;
  impl[9810] |= 0x40uLL;
}

- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  impl = self->_impl;
  if (LODWORD(a4.length) && impl[237])
  {
    length_low = LODWORD(a4.length);
    v9 = a3;
    do
    {
      if (*v9)
      {
        MTLResourceListAddResource();
      }

      ++v9;
      --length_low;
    }

    while (length_low);
  }

  if (length)
  {
    v10 = length;
    v11 = location;
    while (1)
    {
      v13 = *v6;
      v14 = *v6 ? v13[15] : 0;
      v15 = 32 * v11;
      *(impl[6136] + v15 + 16888) = v14;
      v12 = impl[6136];
      if ((~*(v12 + 16880 + v15 + 8) & 0x6000000000000000) == 0)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_10;
      }

LABEL_12:
      *(v12 + 32 * v11++ + 16880) = v13;
      ++v6;
      if (!--v10)
      {
        goto LABEL_19;
      }
    }

    *(v12 + 16880 + 32 * v11 + 16) = *(v13 + 8);
    v12 = impl[6136];
LABEL_10:
    v13 += 6;
    if (*(v13 + 24))
    {
      v13 = *(v13 + 24);
    }

    goto LABEL_12;
  }

LABEL_19:
  v16 = length + location;
  if (length + location == 128)
  {
    v17 = -1;
  }

  else
  {
    v17 = ~(-1 << (length + location));
  }

  if (v16 < 0x40)
  {
    v18 = ~(-1 << (length + location));
  }

  else
  {
    v18 = -1;
  }

  if (v16 >= 0x40)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = -1 << location;
  if (location < 0x40)
  {
    v20 = -1;
  }

  v21 = -1 << location;
  if (location >= 0x40)
  {
    v21 = 0;
  }

  v22 = impl[9767];
  impl[9766] |= v18 & v21;
  impl[9767] = v22 | v19 & v20;
  impl[9810] |= 0x40uLL;
}

- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  impl = self->_impl;
  if (a3)
  {
    if (impl[237])
    {
      MTLResourceListAddResource();
    }

    v7 = a3 + 48;
    v8 = v4;
    v9 = 32 * v4;
    *(impl[6136] + v9 + 16888) = *(a3 + 15);
    v10 = impl[6136];
    if ((~*(v10 + 16880 + v9 + 8) & 0x6000000000000000) == 0)
    {
      *(v10 + 16880 + 32 * v4 + 16) = *(a3 + 8);
      v10 = impl[6136];
    }

    if (*(a3 + 36))
    {
      v7 = *(a3 + 36);
    }
  }

  else
  {
    v7 = 0;
    v8 = a4;
    *(impl[6136] + 32 * a4 + 16888) = 0;
    v10 = impl[6136];
  }

  *(v10 + 32 * v8 + 16880) = v7;
  impl[((v4 & 0xFFFFFFC0) != 0) + 9766] |= 1 << v4;
  impl[9810] |= 0x40uLL;
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v5 = a3;
  impl = self->_impl;
  v73 = impl + 9764;
  if (LODWORD(a4.length) && impl[237])
  {
    length_low = LODWORD(a4.length);
    v8 = a3;
    do
    {
      if (*v8)
      {
        MTLResourceListAddResource();
      }

      ++v8;
      --length_low;
    }

    while (length_low);
  }

  v74 = length;
  if (length)
  {
    v9 = length;
    v10 = impl + 6208;
    v11 = MEMORY[0x29EDC5638];
    v12 = location;
    v13 = 3 * location;
    v76 = impl;
    do
    {
      v28 = *v5;
      if (*v5)
      {
        v29 = v28[74];
        if (v29)
        {
          v30 = *(v29 + 592);
          v29 = *(v29 + 600);
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
        v29 = 0;
      }

      v31 = impl[251];
      v32 = v31[2].i64[1];
      if (*(v32 + 480) != 1 || (v33 = v31[3], v34 = v31[4], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v33), vceqzq_s64(v34))))) & 1) == 0))
      {
LABEL_24:
        v36 = 0;
LABEL_25:
        v41 = 0;
        goto LABEL_26;
      }

      v35 = v28 + *v11;
      if ((*(v35 + 23) & 0x10) != 0)
      {
        v35 = *v35;
      }

      v36 = *v35;
      if (!v36)
      {
        goto LABEL_25;
      }

      v37 = *(v36 + 16);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v36), vceqzq_s64(v37))))) & 1) == 0)
      {
        goto LABEL_24;
      }

      v38 = vandq_s8(v37, v34);
      v39 = v38.u64[1];
      if (v38.i64[1])
      {
        v40 = 3;
      }

      else
      {
        v39 = v38.i64[0];
        if (v38.i64[0])
        {
          v40 = 2;
        }

        else
        {
          v57 = vandq_s8(*v36, v33);
          v39 = v57.u64[1];
          if (v57.i64[1])
          {
            v40 = 1;
          }

          else
          {
            v40 = 0;
            v36 = 0;
            v41 = 0;
            v39 = v57.i64[0];
            if (!v57.i64[0])
            {
              goto LABEL_26;
            }
          }
        }
      }

      v58 = &v31->i8[8 * v40];
      v59 = __clz(v39) ^ 0x3F;
      v36 = (*(v58 + 10) >> v59) & 1;
      v41 = (*(v58 + 14) >> v59) & 1;
LABEL_26:
      v42 = v12 > 0x3F;
      v43 = (v32 + 8 * v42);
      v44 = 1 << v12;
      v43[6] = v43[6] & ~(1 << v12) | (v36 << v12);
      v43[26] = v43[26] & ~(1 << v12) | (v41 << v12);
      v43[46] &= ~(1 << v12);
      if (!v28)
      {
        v10[v13] = 0;
        if (!v30)
        {
          goto LABEL_29;
        }

LABEL_28:
        v30 += *v11;
        goto LABEL_29;
      }

      v10[v13] = v28 + *v11;
      if (v30)
      {
        goto LABEL_28;
      }

LABEL_29:
      v10[v13 + 1] = v30;
      if (v29)
      {
        v29 += *v11;
      }

      v45 = ~v44;
      v10[v13 + 2] = v29;
      if (v28)
      {
        v46 = v28[74];
        v18 = v12;
        v47 = impl[6136] + (v12 << 7);
        v48 = *(v46 + 88);
        v49 = *(v46 + 104);
        v50 = *(v46 + 72);
        *(v47 + 544) = *(v46 + 120);
        *(v47 + 512) = v48;
        *(v47 + 528) = v49;
        *(v47 + 496) = v50;
        v51 = impl[6136];
        *(v51 + 8 * v42 + 17888) |= v44;
        v52 = *(v46 + 584);
        if (v52)
        {
          v52 = *(v52 + 1304) != 0;
        }

        *(v51 + 17904 + 8 * v42) = *(v51 + 17904 + 8 * v42) & v45 | (v52 << (v12 & 0x3F));
        v53 = v51 + (v12 << 7);
        v54 = *(v46 + 432);
        *(v53 + 560) = *(v46 + 416);
        *(v53 + 576) = v54;
        v55 = impl[6136] + (v12 << 7);
        v56 = *(v46 + 464);
        *(v55 + 592) = *(v46 + 448);
        *(v55 + 608) = v56;
        v19 = *(v28[74] + 120);
      }

      else
      {
        v14 = impl[6136] + (v12 << 7);
        v77 = v12 << 7;
        v15 = v10;
        v16 = v5;
        v17 = v9;
        bzero((v14 + 496), 0x38uLL);
        v9 = v17;
        v5 = v16;
        v10 = v15;
        impl = v76;
        v18 = v12;
        v19 = 0;
        *(v14 + 544) = 0;
        v20 = v76[6136];
        v21 = v20 + 8 * v42;
        *(v21 + 17888) &= v45;
        *(v21 + 17904) &= v45;
        v22 = *(v76[234] + 848);
        v23 = v20 + v77;
        v24 = *(v22 + 16496);
        *(v23 + 560) = *(v22 + 16480);
        *(v23 + 576) = v24;
        v25 = *(v76[234] + 848);
        v26 = v76[6136] + v77;
        v27 = *(v25 + 16528);
        *(v26 + 592) = *(v25 + 16512);
        *(v26 + 608) = v27;
      }

      *(impl[6136] + (v18 << 7) + 552) = v19;
      ++v12;
      ++v5;
      v13 += 3;
      --v9;
    }

    while (v9);
  }

  v60 = v74 + location;
  v61 = -1 << (v74 + location);
  if (v74 + location == 128)
  {
    v62 = -1;
  }

  else
  {
    v62 = ~(-1 << (v74 + location));
  }

  if (v60 < 0x40)
  {
    v63 = ~v61;
  }

  else
  {
    v63 = -1;
  }

  if (v60 >= 0x40)
  {
    v64 = v62;
  }

  else
  {
    v64 = 0;
  }

  v65 = -1 << location;
  if (location >= 0x40)
  {
    v65 = 0;
  }

  v66 = *v73 | v63 & v65;
  v67 = -1 << location;
  if (location < 0x40)
  {
    v67 = -1;
  }

  v68 = v73[1] | v64 & v67;
  *v73 = v66;
  v73[1] = v68;
  if (v60 == 128)
  {
    v69 = -1;
  }

  else
  {
    v69 = ~(-1 << v60);
  }

  if (v60 < 0x40)
  {
    v70 = ~v61;
  }

  else
  {
    v70 = -1;
  }

  if (v60 >= 0x40)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0;
  }

  v73[6] |= v70 & v65;
  v73[46] |= 0x140uLL;
  v72 = vdupq_n_s64(0x10uLL);
  v72.i64[0] = v71 & v67;
  *(v73 + 7) = vorrq_s8(*(v73 + 7), v72);
}

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  LODWORD(v4) = a4;
  impl = self->_impl;
  if (!a3)
  {
    v10 = a4 > 0x3F;
    v11 = (*(impl[251] + 40) + 8 * v10);
    v12 = 1 << a4;
    v11[6] &= ~(1 << a4);
    impl[(3 * a4 + 1) + 6208] = 0;
    v13 = v11[26] & ~(1 << a4);
    impl[(3 * a4) + 6208] = 0;
    v11[26] = v13;
    impl[(3 * a4 + 2) + 6208] = 0;
    v11[46] &= ~(1 << a4);
    v4 = a4;
    v14 = a4 << 7;
    v15 = impl[6136] + v14;
    bzero((v15 + 496), 0x38uLL);
    v16 = 0;
    *(v15 + 544) = 0;
    v17 = impl[6136];
    v18 = v17 + 8 * v10;
    *(v18 + 17888) &= ~v12;
    *(v18 + 17904) &= ~v12;
    v19 = *(impl[234] + 848);
    v20 = *(v19 + 16496);
    v21 = v17 + v14;
    *(v21 + 560) = *(v19 + 16480);
    *(v21 + 576) = v20;
    v22 = *(impl[234] + 848);
    v23 = impl[6136] + v14;
    v24 = *(v22 + 16528);
    *(v23 + 592) = *(v22 + 16512);
    *(v23 + 608) = v24;
    goto LABEL_26;
  }

  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  v7 = *(a3 + 74);
  if (v7)
  {
    v8 = *(v7 + 592);
    v9 = *(v7 + 600);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v25 = impl[251];
  v26 = v25[2].i64[1];
  v27 = MEMORY[0x29EDC5638];
  if (*(v26 + 480) != 1)
  {
    goto LABEL_16;
  }

  v28 = v25[3];
  v29 = v25[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v28), vceqzq_s64(v29))))) & 1) == 0)
  {
    goto LABEL_16;
  }

  v30 = a3 + *MEMORY[0x29EDC5638];
  if ((v30[23] & 0x10) != 0)
  {
    v30 = *v30;
  }

  v31 = *v30;
  if (!v31)
  {
    goto LABEL_17;
  }

  v32 = *(v31 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v31), vceqzq_s64(v32))))) & 1) == 0)
  {
LABEL_16:
    v31 = 0;
LABEL_17:
    v36 = 0;
    goto LABEL_18;
  }

  v33 = vandq_s8(v32, v29);
  v34 = v33.u64[1];
  if (v33.i64[1])
  {
    v35 = 3;
LABEL_32:
    v53 = &v25->i8[8 * v35];
    v54 = __clz(v34) ^ 0x3F;
    v31 = (*(v53 + 10) >> v54) & 1;
    v36 = (*(v53 + 14) >> v54) & 1;
    goto LABEL_18;
  }

  v34 = v33.i64[0];
  if (v33.i64[0])
  {
    v35 = 2;
    goto LABEL_32;
  }

  v52 = vandq_s8(*v31, v28);
  v34 = v52.u64[1];
  if (v52.i64[1])
  {
    v35 = 1;
    goto LABEL_32;
  }

  v35 = 0;
  v31 = 0;
  v36 = 0;
  v34 = v52.i64[0];
  if (v52.i64[0])
  {
    goto LABEL_32;
  }

LABEL_18:
  v10 = v4 > 0x3F;
  v37 = (v26 + 8 * v10);
  v12 = 1 << v4;
  v37[6] = v37[6] & ~(1 << v4) | (v31 << v4);
  v37[26] = v37[26] & ~(1 << v4) | (v36 << v4);
  v37[46] &= ~(1 << v4);
  v38 = impl + 6208;
  v39 = 3 * v4;
  impl[(3 * v4) + 6208] = a3 + *v27;
  if (v8)
  {
    v8 += *v27;
  }

  v38[v39 + 1] = v8;
  if (v9)
  {
    v40 = v9 + *v27;
  }

  else
  {
    v40 = 0;
  }

  v38[v39 + 2] = v40;
  v4 = v4;
  v41 = impl[6136] + (v4 << 7);
  v42 = *(v7 + 72);
  v43 = *(v7 + 88);
  v44 = *(v7 + 104);
  *(v41 + 544) = *(v7 + 120);
  *(v41 + 512) = v43;
  *(v41 + 528) = v44;
  *(v41 + 496) = v42;
  v45 = impl[6136];
  *(v45 + 8 * v10 + 17888) |= v12;
  v46 = *(v7 + 584);
  if (v46)
  {
    v46 = *(v46 + 1304) != 0;
  }

  *(v45 + 17904 + 8 * v10) = *(v45 + 17904 + 8 * v10) & ~v12 | (v46 << (v4 & 0x3F));
  v47 = v45 + (v4 << 7);
  v48 = *(v7 + 432);
  *(v47 + 560) = *(v7 + 416);
  *(v47 + 576) = v48;
  v49 = impl[6136] + (v4 << 7);
  v50 = *(v7 + 464);
  *(v49 + 592) = *(v7 + 448);
  *(v49 + 608) = v50;
  v16 = *(*(a3 + 74) + 120);
LABEL_26:
  *(impl[6136] + (v4 << 7) + 552) = v16;
  v51 = &impl[v10];
  v51[9764] |= v12;
  v51[9770] |= v12;
  impl[9810] |= 0x140uLL;
  impl[9772] |= 0x10uLL;
}

- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  impl = self->_impl;
  v6 = &impl[a5];
  v7 = v6[6662];
  v8 = v6[6592] + a3;
  if (a5 >= 0x1F)
  {
    v12 = impl[6137] + 8 * (a5 - 31);
    *(v12 + 40) = v8;
    *(v12 + 352) = v7 + a3;
  }

  else
  {
    v9 = impl[6136];
    v10 = v9 + 8 * a5;
    *v10 = v8;
    *(v10 + 248) = v7 + a3;
    v11 = v9 + 4 * a5;
    *(v10 + 17640) = *(v11 + 17516);
    *(v11 + 17392) = a4;
  }

  impl[(a5 > 0x3F) + 9762] |= 1 << a5;
  impl[9810] |= 0x40uLL;
}

- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  impl = self->_impl;
  v5 = &impl[a4];
  v6 = v5[6662];
  v7 = v5[6592] + a3;
  if (a4 >= 0x1F)
  {
    v11 = impl[6137] + 8 * (a4 - 31);
    *(v11 + 40) = v7;
    *(v11 + 352) = v6 + a3;
  }

  else
  {
    v8 = impl[6136];
    v9 = v8 + 8 * a4;
    *v9 = v7;
    *(v9 + 248) = v6 + a3;
    v10 = v8 + 4 * a4;
    *(v9 + 17640) = *(v10 + 17516);
    *(v10 + 17392) = 0;
  }

  impl[(a4 > 0x3F) + 9762] |= 1 << a4;
  impl[9810] |= 0x40uLL;
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v6 = a6;
  v7 = a5;
  impl = self->_impl;
  v10 = a4 + 15;
  v11 = (a4 + 15) | 0xF;
  v12 = impl[21];
  v13 = v12 + v11;
  if (v12 + v11 <= impl[20])
  {
LABEL_2:
    impl[22] = v13;
    goto LABEL_3;
  }

  v26 = a3;
  v27 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 3, 3, 0);
  v12 = impl[21];
  if (v27)
  {
    v13 = v12 + v11;
    a3 = v26;
    if (v12 + v11 > impl[20])
    {
      abort();
    }

    goto LABEL_2;
  }

  a3 = v26;
LABEL_3:
  v14 = impl + 6136;
  v15 = v10 & 0xFFFFFFFFFFFFFFF0;
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[impl[23]];
  impl[21] = &v16[v15];
  memcpy(v16, a3, a4);
  v18 = *(impl[6] + 224);
  v19 = *MEMORY[0x29EDC5638];
  v20 = v6 & 0x3F;
  if (v6 < 0x23)
  {
    impl[v20 + 6732] = 0;
  }

  v21 = v18 + v19;
  impl[(v6 > 0x3F) + 9762] |= 1 << v20;
  impl[9810] |= 0x40uLL;
  if (v6 >= 0x1F)
  {
    *(impl[6137] + 8 * (v6 - 31) + 40) = v17;
    impl[v6 + 6138] = v21;
  }

  else
  {
    v22 = *v14;
    v23 = v6 & 0x1F;
    v24 = *v14 + v23 * 8;
    impl[v23 + 6138] = v21;
    v25 = v22 + 4 * (v6 & 0x1F);
    *(v25 + 17392) = v7;
    *(v25 + 17516) = a4;
    *v24 = v17;
    *(v24 + 17640) = a4;
    *(v24 + 17644) = v17 >> 8;
  }
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  impl = self->_impl;
  v8 = a4 + 15;
  v9 = (a4 + 15) | 0xF;
  v10 = impl[21];
  v11 = v10 + v9;
  if (v10 + v9 <= impl[20])
  {
LABEL_2:
    impl[22] = v11;
    goto LABEL_3;
  }

  v24 = a3;
  v25 = AGX::DataBufferAllocator<44ul>::growNoInline(impl + 3, 3, 0);
  v10 = impl[21];
  if (v25)
  {
    v11 = v10 + v9;
    a3 = v24;
    if (v10 + v9 > impl[20])
    {
      abort();
    }

    goto LABEL_2;
  }

  a3 = v24;
LABEL_3:
  v12 = impl + 6136;
  v13 = v8 & 0xFFFFFFFFFFFFFFF0;
  v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[impl[23]];
  impl[21] = &v14[v13];
  memcpy(v14, a3, a4);
  v16 = *(impl[6] + 224);
  v17 = *MEMORY[0x29EDC5638];
  v18 = v5 & 0x3F;
  if (v5 < 0x23)
  {
    impl[v18 + 6732] = 0;
  }

  v19 = v16 + v17;
  impl[(v5 > 0x3F) + 9762] |= 1 << v18;
  impl[9810] |= 0x40uLL;
  if (v5 >= 0x1F)
  {
    *(impl[6137] + 8 * (v5 - 31) + 40) = v15;
    impl[v5 + 6138] = v19;
  }

  else
  {
    v20 = *v12;
    v21 = v5 & 0x1F;
    v22 = *v12 + v21 * 8;
    impl[v21 + 6138] = v19;
    v23 = v20 + 4 * (v5 & 0x1F);
    *(v23 + 17392) = 0;
    *(v23 + 17516) = a4;
    *v22 = v15;
    *(v22 + 17640) = a4;
    *(v22 + 17644) = v15 >> 8;
  }
}

- (void)setRenderPipelineState:(id)a3
{
  impl = self->_impl;
  if (impl[237])
  {
    MTLResourceListAddResource();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setRenderPipelineStateCommon(impl, a3 + 240);
  *(impl + 28067) = 1;
}

- (void)deferredEndEncoding:(id)a3
{
  impl = self->_impl;
  [a3 _descriptorPrivate];
  v5 = *(impl + 299);
  v6 = v5[738].i32[1];
  v7 = v5[737].i32[0];
  v8 = v5[738].i32[0];
  v9 = v5[737].i32[1];
  LOWORD(v10) = v6 & ~(v8 | v7 | v9);
  if ((v6 & ~(v8 | v7 | v9)) == 0)
  {
    goto LABEL_12;
  }

  if ((v6 & ~(v8 | v7 | v9) & 0x100) != 0)
  {
    v5[764] = 0;
    v7 &= ~0x100u;
    v5[737].i32[0] = v7;
    v8 &= ~0x100u;
    v5[738].i32[0] = v8;
    v9 |= 0x100u;
    v5[737].i32[1] = v9;
    v5[671].i16[2] |= 2u;
    if ((v10 & 0x200) == 0)
    {
LABEL_4:
      v10 = v10;
      if (!v10)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & ~(v8 | v7 | v9) & 0x200) == 0)
  {
    goto LABEL_4;
  }

  v5[765] = 0;
  v7 &= ~0x200u;
  v5[737].i32[0] = v7;
  v8 &= ~0x200u;
  v5[738].i32[0] = v8;
  v9 |= 0x200u;
  v5[737].i32[1] = v9;
  v5[671].i16[2] |= 8u;
  v10 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_10:
    v12 = __clz(__rbit32(v10));
    v13 = 1 << v12;
    if (((1 << v12) & v6) != 0)
    {
      v5[v12 + 756] = 0;
      v5[195] = vand_s8(v5[195], vdup_n_s32(~(257 << v12)));
      v7 &= ~v13;
      v5[737].i32[0] = v7;
      v8 &= ~v13;
      v5[738].i32[0] = v8;
      v9 |= v13;
      v5[737].i32[1] = v9;
    }

    v11 = v13 == v10;
    v10 ^= v13;
  }

  while (!v11);
LABEL_12:
  v14 = self->_impl;
  if (v14[2077])
  {
LABEL_13:
    v15 = 0;
    goto LABEL_18;
  }

  if (v14[2078])
  {
    v15 = 1;
  }

  else
  {
    if (v14[2074] != 1)
    {
      goto LABEL_13;
    }

    v15 = v14[2073] ^ 1;
  }

LABEL_18:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(self->_impl, v15 & 1, 1, 1);
  if (v14[2077] == 1)
  {
    goto LABEL_19;
  }

  if ((v14[2078] & 1) == 0)
  {
    if (v14[2074] != 1)
    {
LABEL_19:
      if ((*(*(v14 + 299) + 4956) & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if ((v14[2073] & 1) != 0 && *(*(v14 + 299) + 4956) == 1)
    {
LABEL_20:
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeDepthCopy(v14);
    }
  }

LABEL_22:
  v16 = *(v14 + 9934);
  v17 = (*(v14 + 234) + 856);
  atomic_fetch_or(v17, *(v14 + 9933));
  atomic_fetch_or(v17 + 1, v16);
  *(v14 + 5) = 0;
  *(v14 + 6) = 0;
  *(v14 + 7) = 0;
  *v14 = 0;
  *(v14 + 1896) = 0u;
  self->_user_draw_token_offset = *(self->_impl + 488);

  [(AGXG18PFamilyRenderContext *)self destroyImpl];
}

- (void)endEncoding
{
  v3 = *MEMORY[0x29EDBB780];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    MTLReportFailure();
  }

  if (self->_impl && !self->parallelSubContext)
  {
    v4 = *(&self->super.super.super.super.super.isa + v3);
    if ([v4 disableDeferredEndEncoding] & 1) != 0 || (v4[760])
    {
      [(AGXG18PFamilyRenderContext *)self deferredEndEncoding:0];
    }

    else
    {
      [*(&self->super.super.super.super.super.isa + v3) setPreviousRenderCommandEncoder:self];
    }
  }

  v5.receiver = self;
  v5.super_class = AGXG18PFamilyRenderContext;
  [(IOGPUMetalCommandEncoder *)&v5 endEncoding];
}

- (void)destroyImpl
{
  v3 = *([(_MTLCommandEncoder *)self device]+ 848);
  impl = self->_impl;
  if (impl)
  {
    v5 = (impl + 78496);
    for (i = (impl + 30312); ; _Block_release(i[1]))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    *(impl + 9129) = 0;
    *(impl + 6136) = 0;
    v7 = *(impl + 9814);
    if (v7)
    {
      for (j = *(v7 + 512); j; *(v7 + 512) = j)
      {
        v9 = *(v7 + 520);
        v10 = *(v7 + 8 * __clz(__rbit64(j)));
        os_unfair_lock_lock((v9 + 16));
        *v10 = *v9;
        *v9 = v10;
        os_unfair_lock_unlock((v9 + 16));
        j = (*(v7 + 512) - 1) & *(v7 + 512);
      }

      MEMORY[0x29ED520D0](v7, 0x1020C40C758419CLL);
    }

    v11 = *v5;
    if (*v5)
    {
      for (k = *(v11 + 512); k; *(v11 + 512) = k)
      {
        v13 = *(v11 + 520);
        v14 = *(v11 + 8 * __clz(__rbit64(k)));
        os_unfair_lock_lock((v13 + 16));
        *v14 = *v13;
        *v13 = v14;
        os_unfair_lock_unlock((v13 + 16));
        k = (*(v11 + 512) - 1) & *(v11 + 512);
      }

      MEMORY[0x29ED520D0](v11, 0x1020C40C758419CLL);
    }

    v15 = *(impl + 9815);
    if (v15)
    {
      for (m = *(v15 + 512); m; *(v15 + 512) = m)
      {
        v17 = *(v15 + 520);
        v18 = *(v15 + 8 * __clz(__rbit64(m)));
        os_unfair_lock_lock((v17 + 16));
        *v18 = *v17;
        *v17 = v18;
        os_unfair_lock_unlock((v17 + 16));
        m = (*(v15 + 512) - 1) & *(v15 + 512);
      }

      MEMORY[0x29ED520D0](v15, 0x1020C40C758419CLL);
    }

    v19 = *(impl + 9813);
    if (v19)
    {
      for (n = *(v19 + 512); n; *(v19 + 512) = n)
      {
        v21 = *(v19 + 520);
        v22 = *(v19 + 8 * __clz(__rbit64(n)));
        os_unfair_lock_lock((v21 + 16));
        *v22 = *v21;
        *v21 = v22;
        os_unfair_lock_unlock((v21 + 16));
        n = (*(v19 + 512) - 1) & *(v19 + 512);
      }

      MEMORY[0x29ED520D0](v19, 0x1020C40C758419CLL);
    }

    v23 = *(impl + 9944);
    if (v23)
    {
      *(impl + 9945) = v23;
      operator delete(v23);
    }

    v24 = *(impl + 9941);
    if (v24)
    {
      *(impl + 9942) = v24;
      operator delete(v24);
    }

    v25 = *(impl + 9938);
    if (v25)
    {
      *(impl + 9939) = v25;
      operator delete(v25);
    }

    v26 = *(impl + 9935);
    if (v26)
    {
      *(impl + 9936) = v26;
      operator delete(v26);
    }

    v27 = *(impl + 3789);
    if (v27)
    {
      do
      {
        v28 = *v27;
        operator delete(v27);
        v27 = v28;
      }

      while (v28);
    }

    *(impl + 3789) = 0;

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWGeometryPipelineContextA>::~PointerWithOnDemandObjectCreation(impl + 3495);
    v29 = *(impl + 3494);
    if (v29 == impl + 27928)
    {
      (*(*v29 + 32))(v29);
    }

    else if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    v30 = *(impl + 3490);
    if (v30 == impl + 27896)
    {
      (*(*v30 + 32))(v30);
    }

    else if (v30)
    {
      (*(*v30 + 40))(v30);
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PointerWithOnDemandObjectCreation<AGX::HAL300::HWTessellationContextA>::~PointerWithOnDemandObjectCreation(impl + 3469);
    v31 = *(impl + 3468);
    if (v31 == impl + 27720)
    {
      (*(*v31 + 32))(v31);
    }

    else if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    v32 = *(impl + 3464);
    if (v32 == impl + 27688)
    {
      (*(*v32 + 32))(v32);
    }

    else if (v32)
    {
      (*(*v32 + 40))(v32);
    }

    *(impl + 2693) = 0;
    v33 = *(impl + 265);
    if (v33)
    {
      free(*v33);
      MEMORY[0x29ED520D0](v33, 0x1020C4014030ADELL);
    }

    v34 = *(impl + 228);
    v35 = *(impl + 229);
    if (v34 != v35)
    {
      do
      {
        v36 = *v34++;
        free(v36);
      }

      while (v34 != v35);
      v34 = *(impl + 228);
    }

    if (v34)
    {
      *(impl + 229) = v34;
      operator delete(v34);
    }

    v37 = self->_impl;
    if (v37)
    {
      os_unfair_lock_lock(v3 + 3951);
      os_unfair_lock_opaque = v3[3950]._os_unfair_lock_opaque;
      if (os_unfair_lock_opaque > 7)
      {
        os_unfair_lock_unlock(v3 + 3951);
        free(v37);
      }

      else
      {
        v3[3950]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
        *&v3[2 * os_unfair_lock_opaque + 3952]._os_unfair_lock_opaque = v37;
        os_unfair_lock_unlock(v3 + 3951);
      }
    }

    self->_impl = 0;
  }

  framebuffer = self->_framebuffer;
  if (framebuffer)
  {
    free(framebuffer[798]);
    v40 = framebuffer[788];
    if (v40)
    {
    }

    AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(framebuffer);
    v41 = self->_framebuffer;
    if (v41)
    {
      os_unfair_lock_lock(v3 + 4007);
      v42 = v3[4006]._os_unfair_lock_opaque;
      if (v42 > 7)
      {
        os_unfair_lock_unlock(v3 + 4007);
        free(v41);
      }

      else
      {
        v3[4006]._os_unfair_lock_opaque = v42 + 1;
        *&v3[2 * v42 + 4008]._os_unfair_lock_opaque = v41;
        os_unfair_lock_unlock(v3 + 4007);
      }
    }

    self->_framebuffer = 0;
  }
}

- (void)dealloc
{
  [(AGXG18PFamilyRenderContext *)self destroyImpl];
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyRenderContext;
  [(_MTLCommandEncoder *)&v3 dealloc];
}

- (AGXG18PFamilyRenderContext)initWithCommandBuffer:(id)a3 descriptor:(id)a4 subEncoderIndex:(unint64_t)a5 framebuffer:(void *)a6
{
  v198 = *MEMORY[0x29EDCA608];
  v10 = [a3 device];
  v184 = 0;
  v185 = 0;
  v180 = a6;
  if (!a6)
  {
    [a4 validate:v10 width:&v185 height:&v184];
  }

  v183.receiver = self;
  v183.super_class = AGXG18PFamilyRenderContext;
  v182 = [(IOGPUMetalCommandEncoder *)&v183 initWithCommandBuffer:a3];
  if (!v182)
  {
    goto LABEL_158;
  }

  v181 = [a4 _descriptorPrivate];
  if (*(v181 + 43) == 1)
  {
    v11 = v10[114];
    if (v11)
    {
      *&block = MEMORY[0x29EDCA5F8];
      *(&block + 1) = 3221225472;
      *&v187 = ___ZN13AGXATelemetry16disableTelemetryEv_block_invoke;
      *(&v187 + 1) = &__block_descriptor_40_e5_v8__0l;
      v188 = v10 + 107;
      dispatch_sync(v11, &block);
    }
  }

  v182->parallelSubContext = [a3 ownedByParallelEncoder];
  v12 = v10[106];
  if (!a6)
  {
    if (!v185 || !v184 || *(v12 + 16016) >> 7 < 0x33uLL)
    {
      goto LABEL_158;
    }

    os_unfair_lock_lock((v12 + 16028));
    v16 = *(v12 + 16024);
    if (v16)
    {
      v17 = v16 - 1;
      *(v12 + 16024) = v17;
      v18 = *(v12 + 8 * v17 + 16032);
      os_unfair_lock_unlock((v12 + 16028));
      if (v18)
      {
        v180 = v18;
        bzero(v18, *(v12 + 16016));
LABEL_156:
        AGX::FramebufferDriverConfigGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfigGen3_3(&block, v181, *(v10[106] + 16948), *(v12 + 16458) & 0x1F);
        AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3(v180, v10, *(a3 + 90), &block, v185, v184, 0);
        v182->_framebuffer = v180;
        goto LABEL_8;
      }
    }

    else
    {
      os_unfair_lock_unlock((v12 + 16028));
    }

    v180 = malloc_type_calloc(*(v12 + 16016), 1uLL, 0x689CC946uLL);
    if (!v180)
    {
      goto LABEL_158;
    }

    goto LABEL_156;
  }

LABEL_8:
  if (*(v12 + 15792) <= 0x13727uLL)
  {
    v182->_impl = 0;
    goto LABEL_158;
  }

  os_unfair_lock_lock((v12 + 15804));
  v13 = *(v12 + 15800);
  if (v13)
  {
    v14 = v13 - 1;
    *(v12 + 15800) = v14;
    v15 = *(v12 + 8 * v14 + 15808);
    os_unfair_lock_unlock((v12 + 15804));
    if (v15)
    {
      bzero(v15, *(v12 + 15792));
      p_impl = &v182->_impl;
      v182->_impl = v15;
      goto LABEL_20;
    }
  }

  else
  {
    os_unfair_lock_unlock((v12 + 15804));
  }

  v19 = malloc_type_calloc(*(v12 + 15792), 1uLL, 0x689CC946uLL);
  p_impl = &v182->_impl;
  v182->_impl = v19;
  if (!v19)
  {
LABEL_158:
    [(AGXG18PFamilyRenderContext *)v182 endEncoding];

    return 0;
  }

LABEL_20:
  v20 = *(a3 + 760);
  v21 = *(a3 + 90);
  v22 = [a3 globalTraceObjectID];
  v23 = [(IOGPUMetalCommandEncoder *)v182 globalTraceObjectID];
  parallelSubContext = v182->parallelSubContext;
  v25 = [a3 protectionOptions];
  v26 = [a3 commandBufferStorage];
  v27 = [a3 privateData];
  v176 = [a3 privateDataOffset];
  *&v28 = v10;
  *(&v28 + 1) = a3;
  *&v29 = v21;
  *(&v29 + 1) = v26;
  *&v30 = v22;
  *(&v30 + 1) = v23;
  v31 = *p_impl;
  v32 = *p_impl + 1896;
  *v197 = v28;
  *&v197[16] = v29;
  v33 = v10[106] + 7008;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 3221225472;
  *&v187 = ___ZN3AGX20RenderUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfigNSt3__15arrayIjLm4EEE_block_invoke;
  *(&v187 + 1) = &__block_descriptor_56_e5_v8__0l;
  v189 = 0;
  v190 = 0;
  v188 = v33;
  v177 = v27;
  if (AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&,std::array<unsigned int,4ul>)::once != -1)
  {
    v175 = v30;
    dispatch_once(&AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&,std::array<unsigned int,4ul>)::once, &block);
    v30 = v175;
  }

  v34 = *&v197[16];
  *v31 = *&v197[8];
  *(v31 + 16) = v26;
  *(v31 + 24) = &AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
  v35 = v31 + 24;
  *(v31 + 32) = v10;
  *(v31 + 40) = v26;
  v36 = *(v26 + 768);
  *(v31 + 1824) = 0;
  *(v31 + 1840) = 0;
  *(v31 + 1832) = 0;
  *(v31 + 1848) = 0;
  *(v31 + 1864) = v25;
  *(v31 + 48) = v36;
  *(v31 + 56) = v26 + 144;
  *(v31 + 1856) = *(v26 + 784);
  *(v31 + 1880) = v26;
  *(v31 + 1888) = v26 + 64;
  *(v31 + 1920) = 0;
  *(v31 + 1961) = 0;
  *(v32 + 96) = v30;
  *(v31 + 2008) = v34 + 24;
  *(v31 + 2016) = v182;
  *(v31 + 2024) = 0;
  *(v31 + 2028) = 0u;
  *(v31 + 2044) = 0u;
  *(v31 + 2053) = 0u;
  *(v31 + 2069) = 1;
  *(v31 + 1872) = v10;
  *v32 = *(v26 + 728);
  *(v31 + 1912) = v26 + 144;
  *(v31 + 1968) = *(v26 + 48);
  *(v31 + 1976) = *(v26 + 56);
  *(v31 + 1924) = v23;
  *(v31 + 1932) = 0xFFFFFFFF00000000;
  *(v31 + 1956) = 0;
  *(v31 + 1960) = 1;
  if (a5)
  {
    v37 = 0;
  }

  else
  {
    v37 = parallelSubContext;
  }

  *(v31 + 2072) = v37;
  *(v31 + 2073) = 0;
  *(v31 + 2074) = parallelSubContext;
  *(v32 + 179) = 0;
  *(v31 + 2080) = 0;
  v38 = v10[106];
  v39 = *(v38 + 7092);
  *(v31 + 2088) = ((((96 * (*(v38 + 7056) / v39) + 367) & 0xFFFFFFE0) + 127) & 0xFFFFFF80) * v39 + 128;
  *(v31 + 2096) = 1792 * v39 + 3456;
  _ZF = v39 == 1;
  if (v39 == 1)
  {
    v41 = 736;
  }

  else
  {
    v41 = 736 * v39 + 736;
  }

  v42 = (v41 + 63) & 0x1FFFFFFC0;
  *(v31 + 2104) = v42;
  LODWORD(v43) = 1664 * v39 + 2048;
  if (_ZF)
  {
    v43 = 1664;
  }

  else
  {
    v43 = v43;
  }

  *(v31 + 2112) = v42 + v43;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::RenderUSCStateLoader(v31 + 2120, v38, v180, v20);
  v174 = v32;
  *(v31 + 2392) = v180;
  v44 = *(v31 + 1912);
  v45 = *(*(v31 + 1872) + 848);
  *(v31 + 2504) = v45;
  *(v31 + 2512) = v31;
  *(v31 + 2520) = v180;
  *(v31 + 2528) = v31 + 2120;
  *(v31 + 2536) = v35;
  v46 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(v31 + 2544, v45, *(v45 + 7184));
  *(v31 + 2648) = v44;
  *(v31 + 2656) = 0;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  v47 = (v31 + 73032);
  *(v46 + 32) = 0u;
  v48 = (v31 + 49088);
  *(v46 + 48) = 0;
  v49 = *(v31 + 1872);
  v50 = *(v31 + 2008);
  v51 = *(v31 + 1896);
  v52 = *(v31 + 1912);
  v53 = *(v31 + 1904);
  v54 = *(v31 + 1992);
  v55 = *(v31 + 2000);
  *(v31 + 2664) = v180;
  *(v31 + 2672) = v31 + 2120;
  *(v31 + 2680) = v35;
  *(v31 + 2688) = v50;
  *(v31 + 2696) = v51;
  *(v31 + 2704) = v52;
  *(v31 + 2712) = v53;
  *(v31 + 2736) = -1;
  *(v31 + 2752) = xmmword_29D2F2500;
  *(v31 + 21496) = 0u;
  *(v31 + 21512) = 0u;
  *(v31 + 21480) = 0u;
  *(v31 + 21552) = v31 + 2752;
  *(v31 + 26608) = v31 + 2424;
  *(v31 + 26648) = v49;
  *(v31 + 26656) = v31 + 30208;
  *(v31 + 26664) = v31 + 2400;
  *(v31 + 26676) = 0;
  *(v31 + 26680) = v54;
  *(v31 + 26688) = v55;
  *(v31 + 21544) = v31 + 3592;
  v56 = *(v49 + 848);
  v57 = *(v56 + 16480);
  v58 = *(v56 + 16496);
  v59 = 560;
  block = v57;
  v187 = v58;
  do
  {
    v60 = (*(v31 + 21544) + v59);
    *v60 = block;
    v60[1] = v187;
    v59 += 128;
  }

  while (v59 != 16944);
  v61 = *(*(v31 + 26648) + 848);
  v62 = *(v61 + 16528);
  block = *(v61 + 16512);
  v187 = v62;
  for (i = 592; i != 16976; i += 128)
  {
    v64 = (*(v31 + 21544) + i);
    *v64 = block;
    v64[1] = v187;
  }

  v65 = *(v31 + 21552);
  *(v65 + 672) = *(v31 + 21544);
  *(v65 + 680) = v65;
  v66 = *(v31 + 2664);
  v67 = v66[1234];
  *(v65 + 824) = ((v66[1233] + v66[892] - 1) & -v66[1233]) / v66[1233];
  *(v65 + 828) = ((v67 + v66[893] - 1) & -v67) / v67;
  *(v65 + 672) = 0x80000000;
  *(v65 + 812) = v66[1536];
  v68 = *(*(v31 + 26648) + 848);
  *(v31 + 2720) = v68 + 13360;
  *(v31 + 2728) = v68 + 14912;
  v69 = *(v31 + 1912);
  v70 = *(v31 + 1904);
  *(v31 + 26696) = v180;
  *(v31 + 26704) = v31 + 2120;
  *(v31 + 26712) = v69;
  *(v31 + 26720) = v70;
  *(v31 + 26728) = v31 + 30208;
  *(v31 + 26736) = xmmword_29D2F2500;
  *(v31 + 27592) = v31 + 2424;
  v71 = *(*(v31 + 1872) + 848);
  *(v31 + 27600) = v31 + 2120;
  *(v31 + 27608) = v69;
  *(v31 + 27616) = v70;
  *(v31 + 27624) = v35;
  *(v31 + 27672) = 0u;
  *(v31 + 27664) = 0;
  *(v31 + 27648) = 0u;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 3221225472;
  *&v187 = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20getVDMPatchUpVariantEPNS1_6DeviceE_block_invoke;
  *(&v187 + 1) = &__block_descriptor_40_e5_v8__0l;
  v188 = v71;
  if (AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVDMPatchUpVariant(AGX::HAL300::Device *)::execute_indirect_stateless_shaders_pred != -1)
  {
    dispatch_once(&AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVDMPatchUpVariant(AGX::HAL300::Device *)::execute_indirect_stateless_shaders_pred, &block);
  }

  v72 = v71[2070];
  v73 = AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVDMPatchUpVariant(AGX::HAL300::Device *)::execute_indirect_pipeline;
  *(v72 + 52) = 1;
  v74 = HIDWORD(*v72);
  v75 = *(v72 + 8);
  v76 = HIDWORD(*v72);
  v77 = v73[10];
  if (*v72 > v77)
  {
    v77 = *v72;
  }

  v78 = *(v72 + 16);
  *v72 = v77;
  if (v74 <= v73[11])
  {
    v74 = v73[11];
  }

  v79 = *(v72 + 24);
  *(v72 + 4) = v74;
  v80 = v73[12];
  if (v75 > v80)
  {
    v80 = v75;
  }

  *(v72 + 8) = v80;
  v81 = v73[13];
  if (v76 > v81)
  {
    v81 = v76;
  }

  *(v72 + 12) = v81;
  v82 = v73[14];
  if (v78 > v82)
  {
    v82 = v78;
  }

  v83 = *(v72 + 32);
  *(v72 + 16) = v82;
  v84 = v73[15];
  if (SHIDWORD(v78) > v84)
  {
    v84 = HIDWORD(v78);
  }

  *(v72 + 20) = v84;
  v85 = v73[16];
  if (v79 > v85)
  {
    v85 = v79;
  }

  *(v72 + 24) = v85;
  v86 = v73[17];
  if (v83 > v86)
  {
    v86 = v83;
  }

  *(v72 + 32) = v86;
  v87 = v71[2073];
  *(v87 + 52) = 1;
  v88 = *(v87 + 16);
  v89 = v73[10];
  v90 = HIDWORD(*v87);
  v91 = *(v87 + 8);
  v92 = HIDWORD(*v87);
  if (*v87 > v89)
  {
    v89 = *v87;
  }

  v93 = *(v87 + 24);
  *v87 = v89;
  v94 = v73[11];
  if (v90 > v94)
  {
    v94 = v90;
  }

  v95 = *(v87 + 32);
  *(v87 + 4) = v94;
  v96 = v73[12];
  if (v91 > v96)
  {
    v96 = v91;
  }

  *(v87 + 8) = v96;
  v97 = v73[13];
  if (v92 > v97)
  {
    v97 = v92;
  }

  *(v87 + 12) = v97;
  v98 = v73[14];
  if (v88 > v98)
  {
    v98 = v88;
  }

  *(v87 + 16) = v98;
  v99 = v73[15];
  if (SHIDWORD(v88) > v99)
  {
    v99 = HIDWORD(v88);
  }

  *(v87 + 20) = v99;
  v100 = v73[16];
  if (v93 > v100)
  {
    v100 = v93;
  }

  *(v87 + 24) = v100;
  v101 = v73[17];
  if (v95 > v101)
  {
    v101 = v95;
  }

  *(v87 + 32) = v101;
  *(v31 + 27632) = v73;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 3221225472;
  *&v187 = ___ZN3AGX34RenderIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE24getRangeExecutionVariantEPNS1_6DeviceE_block_invoke;
  *(&v187 + 1) = &__block_descriptor_40_e5_v8__0l;
  v188 = v71;
  if (AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getRangeExecutionVariant(AGX::HAL300::Device *)::execute_indirect_stateless_shaders_pred != -1)
  {
    dispatch_once(&AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getRangeExecutionVariant(AGX::HAL300::Device *)::execute_indirect_stateless_shaders_pred, &block);
  }

  *(v31 + 27640) = AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getRangeExecutionVariant(AGX::HAL300::Device *)::range_execution_pipeline;
  *(v31 + 27688) = &unk_2A23F8220;
  *(v31 + 27696) = v31;
  *(v31 + 27712) = v31 + 27688;
  *(v31 + 27720) = &unk_2A23F82B8;
  *(v31 + 27728) = v31;
  *(v31 + 27744) = v31 + 27720;
  *&v197[24] = v197;
  *v197 = &unk_2A23F8220;
  *&v197[8] = v31;
  v196 = v195;
  v195[0] = &unk_2A23F82B8;
  v195[1] = v31;
  *(v31 + 27784) = 0;
  *(v31 + 27816) = 0;
  *(v31 + 27752) = 0;
  *(&v187 + 1) = &block;
  *&block = &unk_2A23F8220;
  *(&block + 1) = v31;
  p_block = &block;
  if ((v31 + 27760) == &block || (std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#1},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#1}>,AGX::HAL300::HWTessellationContextA * ()(void)>::__clone(&block, (v31 + 27760)), (*(**(&v187 + 1) + 32))(*(&v187 + 1)), *(&v187 + 1) = *(v31 + 27784), p_block = *(&v187 + 1), *(v31 + 27784) = v31 + 27760, p_block == &block))
  {
    (*(*p_block + 32))(p_block);
    v103 = v196;
    if (!v196)
    {
LABEL_80:
      *(&v187 + 1) = v103;
      goto LABEL_82;
    }
  }

  else
  {
    if (p_block)
    {
      (*(*p_block + 40))(p_block);
    }

    v103 = v196;
    if (!v196)
    {
      goto LABEL_80;
    }
  }

  if (v103 != v195)
  {
    v103 = (*(*v103 + 16))(v103);
    goto LABEL_80;
  }

  *(&v187 + 1) = &block;
  (*(*v103 + 24))(v103, &block);
LABEL_82:
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](&block, v31 + 27792);
  if (*(&v187 + 1) == &block)
  {
    (*(**(&v187 + 1) + 32))(*(&v187 + 1));
  }

  else if (*(&v187 + 1))
  {
    (*(**(&v187 + 1) + 40))();
  }

  if (v196 == v195)
  {
    (*(*v196 + 32))(v196);
  }

  else if (v196)
  {
    (*(*v196 + 40))();
  }

  if (*&v197[24] == v197)
  {
    (*(**&v197[24] + 32))(*&v197[24]);
  }

  else if (*&v197[24])
  {
    (*(**&v197[24] + 40))();
  }

  *(v31 + 27824) = 0;
  *(v31 + 27832) = 0xC000000000000000;
  *(v31 + 27840) = 0u;
  *(v31 + 27856) = 0;
  *(v31 + 27864) = 0;
  *(v31 + 27880) = 0;
  *(v31 + 27872) = 0;
  *(v31 + 27888) = *(*(*(v31 + 1872) + 848) + 17212);
  *(v31 + 27896) = &unk_2A23F8300;
  *(v31 + 27904) = v31;
  *(v31 + 27920) = v31 + 27896;
  *(v31 + 27928) = &unk_2A23F8A08;
  *(v31 + 27936) = v31;
  *(v31 + 27952) = v31 + 27928;
  v194 = v193;
  v193[0] = &unk_2A23F8300;
  v193[1] = v31;
  v192 = v191;
  v191[0] = &unk_2A23F8A08;
  v191[1] = v31;
  *(v31 + 27992) = 0;
  *(v31 + 28024) = 0;
  *(v31 + 27960) = 0;
  *(&v187 + 1) = &block;
  *&block = &unk_2A23F8300;
  *(&block + 1) = v31;
  v104 = &block;
  if ((v31 + 27968) == &block || (std::__function::__func<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#2},std::allocator<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::{lambda(void)#2}>,AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::__clone(&block, (v31 + 27968)), (*(**(&v187 + 1) + 32))(*(&v187 + 1)), *(&v187 + 1) = *(v31 + 27992), v104 = *(&v187 + 1), *(v31 + 27992) = v31 + 27968, v104 == &block))
  {
    (*(*v104 + 32))(v104);
    v105 = v192;
    if (!v192)
    {
LABEL_103:
      *(&v187 + 1) = v105;
      goto LABEL_105;
    }
  }

  else
  {
    if (v104)
    {
      (*(*v104 + 40))(v104);
    }

    v105 = v192;
    if (!v192)
    {
      goto LABEL_103;
    }
  }

  if (v105 != v191)
  {
    v105 = (*(*v105 + 16))(v105);
    goto LABEL_103;
  }

  *(&v187 + 1) = &block;
  (*(*v105 + 24))(v105, &block);
LABEL_105:
  std::__function::__value_func<void ()(void *)>::swap[abi:nn200100](&block, v31 + 28000);
  if (*(&v187 + 1) == &block)
  {
    (*(**(&v187 + 1) + 32))(*(&v187 + 1));
    v106 = 0x2A179C000uLL;
    v107 = v180;
  }

  else
  {
    v106 = 0x2A179C000;
    v107 = v180;
    if (*(&v187 + 1))
    {
      (*(**(&v187 + 1) + 40))();
    }
  }

  if (v192 == v191)
  {
    (*(*v192 + 32))(v192);
  }

  else if (v192)
  {
    (*(*v192 + 40))();
  }

  if (v194 == v193)
  {
    (*(*v194 + 32))(v194);
  }

  else if (v194)
  {
    (*(*v194 + 40))();
  }

  *(v31 + 28040) = 0;
  *(v31 + 28048) = 0;
  *(v31 + 28056) = 0;
  *(v31 + 28060) = 0;
  *(v31 + 28064) = 0;
  *(v31 + 28066) = 0;
  v108 = v107[446];
  *(v31 + 28068) = 12288;
  *(v31 + 28200) = 0;
  *(v31 + 28072) = vand_s8(vshr_n_u32(vadd_s32(v108, -1), 5uLL), 0x300000003);
  v109 = vmul_f32(vcvt_f32_u32(v108), 0x3F0000003F000000);
  *(v31 + 28204) = v109.i32[0];
  *(v31 + 28208) = v109;
  *(v31 + 28216) = -v109.f32[1];
  *(v31 + 28220) = 0x3F80000000000000;
  *(v31 + 28588) = 768;
  *(v31 + 28608) = 0x3F80000000000000;
  *(v31 + 28616) = 1024;
  *(v31 + 28628) = 0x48000800000;
  *(v31 + 28652) = 0xE0000000E000000;
  *(v31 + 28660) = 0;
  *(v31 + 28636) = xmmword_29D2F2550;
  *(v31 + 28664) = xmmword_29D2F2560;
  *(v31 + 28680) = 0xC28000000000000;
  *(v31 + 28688) = 0u;
  *(v31 + 28704) |= 0xE0000000E000000uLL;
  AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ClipRectContextGen3(v31 + 28712, v107[446].u32[0], v107[446].u32[1], v181, v31 + 28068);
  *(v31 + 29824) = 1;
  *(v31 + 29864) = 0u;
  *(v31 + 29880) = 0u;
  *(v31 + 29918) = 1;
  *(v31 + 29924) = 0;
  *(v31 + 29936) = 0;
  *(v31 + 29944) = 0;
  *(v31 + 30008) = 0;
  *(v31 + 30040) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v31 + 30048) = _D0;
  *(v31 + 30056) = 0;
  *(v31 + 30064) = 1;
  *(v31 + 30067) = 1;
  *(v31 + 30068) = -1;
  *(v31 + 30076) = 0;
  *(v31 + 30080) = 1;
  v114 = *(*(v31 + 1872) + *(v106 + 1260));
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(v31 + 30104, v114, *(v114 + 7184));
  v115 = *(*(v31 + 1872) + *(v106 + 1260));
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(v31 + 30208, v115, *(v115 + 7192));
  *(v31 + 30312) = 0;
  *(v31 + 30360) = 0;
  *(v31 + 30368) = -1;
  *(v31 + 31116) = 1065353216;
  *(v31 + 30384) = xmmword_29D2F2500;
  *(v31 + 31120) = 0x100000001;
  *(v31 + 49056) = 0u;
  *(v31 + 49040) = 0u;
  *(v31 + 49024) = 0u;
  *v48 = v31 + 31136;
  *(v31 + 49096) = v31 + 30384;
  *(v31 + 54144) = -1;
  *(v31 + 54160) = xmmword_29D2F2500;
  *(v31 + 55052) = -3229614080;
  *(v31 + 55060) = 1065353216;
  *(v31 + 72968) = 0u;
  *(v31 + 72984) = 0u;
  *(v31 + 73000) = 0u;
  *v47 = v31 + 55080;
  *(v31 + 73040) = v31 + 54160;
  *(v31 + 78480) = 0;
  *(v31 + 78488) = 0;
  *(v31 + 78544) = 0;
  *(v31 + 78553) = *(v181 + 184);
  *(v31 + 78556) = 1;
  AGX::RenderCounterSamplingContextGen1::RenderCounterSamplingContextGen1((v31 + 78568), v181);
  v116 = *(*(*(v31 + 1872) + *(v106 + 1260)) + 6241);
  v117 = *(*(*(v31 + 1872) + *(v106 + 1260)) + 6242);
  *(v31 + 78752) = 0;
  *(v31 + 78748) = 0;
  *(v31 + 78760) = 0u;
  *(v31 + 78776) = 0u;
  *(v31 + 78792) = 0u;
  *(v31 + 78808) = 0u;
  *(v31 + 78824) = 0u;
  *(v31 + 78840) = 0u;
  *(v31 + 78856) = 0u;
  *(v31 + 78872) = 0u;
  *(v31 + 78888) = 0u;
  *(v31 + 78904) = 0u;
  *(v31 + 78920) = 0u;
  *(v31 + 78936) = 0u;
  *(v31 + 78952) = 0u;
  *(v31 + 78968) = 0u;
  *(v31 + 78984) = 0u;
  *(v31 + 79000) = 0u;
  *(v31 + 79016) = 0u;
  *(v31 + 79032) = 0u;
  *(v31 + 79048) = 0u;
  *(v31 + 79064) = 0u;
  *(v31 + 79080) = 0u;
  if (v116)
  {
    v118 = 68;
  }

  else
  {
    v118 = 4;
  }

  if (v117)
  {
    v119 = 128;
  }

  else
  {
    v119 = 0;
  }

  *(v31 + 78744) = v119 | v118;
  *(v31 + 79096) = 0xFFFFFFFF00000001;
  *(v31 + 79104) = 1610612736;
  *(v31 + 79112) = 0uLL;
  *(v31 + 79128) = 0uLL;
  *(v31 + 79144) = 0uLL;
  *&v120 = -1;
  *(&v120 + 1) = -1;
  *(v31 + 79160) = v120;
  *(v31 + 79176) = v120;
  *(v31 + 79192) = v120;
  *(v31 + 79208) = -1;
  *(v31 + 79216) = 0xFFFFFFFF00000001;
  *(v31 + 79224) = 1610612736;
  *(v31 + 79232) = 0uLL;
  *(v31 + 79248) = 0uLL;
  *(v31 + 79264) = 0uLL;
  *(v31 + 79280) = v120;
  *(v31 + 79296) = v120;
  *(v31 + 79312) = v120;
  *(v31 + 79328) = -1;
  *(v31 + 79368) = 0;
  *(v31 + 79336) = 0uLL;
  *(v31 + 79352) = 0uLL;
  *(v31 + 79369) = 0x7060504030201;
  *(v31 + 79377) = 67305985;
  *(v31 + 79381) = 1541;
  *(v31 + 79383) = 7;
  *(v31 + 79392) = 257;
  *(v31 + 79394) = 1;
  *(v31 + 79400) = v177;
  *(v31 + 79408) = v176;
  *(v31 + 79416) = 0uLL;
  *(v31 + 79464) = xmmword_29D2F1F00;
  *(v31 + 79624) = 0;
  *(v31 + 79608) = 0uLL;
  *(v31 + 79480) = 0uLL;
  *(v31 + 79496) = 0uLL;
  *(v31 + 79512) = 0uLL;
  *(v31 + 79528) = 0uLL;
  *(v31 + 79544) = 0uLL;
  *(v31 + 79560) = 0uLL;
  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addAPIResources(*(v31 + 2392), *(v31 + 1896), *(v31 + 1904));
  *(v31 + 29840) = *(*(v31 + 2392) + 5368);
  *(v31 + 28668) = *(v31 + 28668) & 0x199FFFFF | 0x200000;
  *(v31 + 28680) &= 0xFFFE0000;
  *(v31 + 28672) |= 0xC0000000C00000uLL;
  v121 = *(v31 + 78480);
  *(v31 + 28688) &= 0xFF1EFFFF;
  *(v31 + 78480) = v121 | 0x5F500000000004;
  *(v31 + 78488) = 5;
  *(v31 + 78592) = 0u;
  *(v31 + 78608) = 0u;
  *(v31 + 78624) = 0u;
  *(v31 + 78640) = 0u;
  *(v31 + 78656) = 0u;
  *(v31 + 78672) = 0u;
  *(v31 + 78688) = 0u;
  *(v31 + 78704) = 0u;
  *(v31 + 29918) = *(v181 + 192) == 0;
  v122 = *(v106 + 1260);
  v123 = *(*(v31 + 1872) + v122);
  *(v31 + 29920) = *(v123 + 16950) > 0xAu;
  v124 = *(v123 + 16496);
  block = *(v123 + 16480);
  v187 = v124;
  for (j = 560; j != 16944; j += 128)
  {
    v126 = (*v47 + j);
    v127 = block;
    *v126 = block;
    v128 = v187;
    v126[1] = v187;
    v129 = (*v48 + j);
    *v129 = v127;
    v129[1] = v128;
  }

  v130 = *(*(v31 + 1872) + v122);
  v131 = *(v130 + 16528);
  block = *(v130 + 16512);
  v187 = v131;
  for (k = 592; k != 16976; k += 128)
  {
    v133 = (*v47 + k);
    v134 = block;
    *v133 = block;
    v135 = v187;
    v133[1] = v187;
    v136 = (*v48 + k);
    *v136 = v134;
    v136[1] = v135;
  }

  v137 = *(v31 + 49096);
  *(v137 + 664) = *v48;
  *(v137 + 672) = v137;
  v138 = *(v31 + 73040);
  *(v138 + 672) = *v47;
  *(v138 + 680) = v138;
  v139 = *(v31 + 2392);
  v140 = *(v139 + 3576);
  if (!v140)
  {
    goto LABEL_135;
  }

  v141 = v138 + 672;
  if (v140 >= 4)
  {
    v143 = 0;
    v144 = (v139 + 3584);
    v142 = v140 & 0xFFFFFFFC;
    v145 = vdupq_n_s32(0x3D800000u);
    do
    {
      v199 = vld2q_f32(v144);
      v144 += 8;
      v200.val[0] = vmulq_f32(vcvtq_f32_u32(v199.val[0]), v145);
      v200.val[1] = vmulq_f32(vcvtq_f32_u32(v199.val[1]), v145);
      v146 = (v141 + 4 * (v143 & 0xFFFFFFF8));
      vst2q_f32(v146, v200);
      v143 += 8;
    }

    while (((2 * v140) & 0x1FFFFFFF8) != v143);
    if (v142 == v140)
    {
      goto LABEL_135;
    }
  }

  else
  {
    v142 = 0;
  }

  v147 = v140 - v142;
  v148 = 2 * v142;
  v149 = (v139 + 8 * v142 + 3584);
  v150 = vdup_n_s32(0x3D800000u);
  do
  {
    v151 = *v149++;
    *(v141 + 4 * (v148 & 0xFFFFFFFE)) = vmul_f32(vcvt_f32_u32(v151), v150);
    v148 += 2;
    --v147;
  }

  while (v147);
LABEL_135:
  *(v31 + 78464) |= 0x40uLL;
  v152 = *(v31 + 73040);
  *(v152 + 736) = 0x80000000;
  *(v152 + 912) = *(v139 + 6144);
  v153 = *(v31 + 21552);
  v154 = *(v139 + 6280);
  *(v153 + 40) = *(v139 + 6296);
  *(v153 + 24) = v154;
  v155 = *(v31 + 73040);
  v156 = *(v139 + 6280);
  *(v155 + 40) = *(v139 + 6296);
  *(v155 + 24) = v156;
  v157 = *(v31 + 2392);
  *(*(v31 + 49096) + 744) = *(v157 + 6328) > 1u;
  v158 = 91;
  if (!*(v181 + 88))
  {
    v158 = 0;
  }

  *(v31 + 79464 + ((v158 >> 3) & 8)) |= 1 << (v158 & 0x3F);
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateResourceGroupUsage(v157, *(v31 + 2008), v156);
  if (*(v181 + 48) >= 2uLL)
  {
    *(v31 + 79472) |= 0x40000000uLL;
  }

  v159 = *(v181 + 168);
  if (v159)
  {
    if (*v174)
    {
      MTLResourceListAddResource();
    }

    *(v31 + 78544) = v159;
    *(v31 + 79472) |= 0x100000000uLL;
  }

  v160 = *(*(v31 + 1872) + *(v106 + 1260));
  *(v31 + 78528) = v160 + 13360;
  *(v31 + 78536) = v160 + 14912;
  v161 = *(v31 + 2392);
  v162 = v161[1536];
  v163 = v161[1537];
  v164 = v161[1538];
  v165 = (v162 + 0xFFFF) >> 16;
  if (v163)
  {
    v166 = v163 + 64;
  }

  else
  {
    v166 = 0;
  }

  v167 = (v166 + 0xFFFF) >> 16;
  v168 = (v164 + 0xFFFF) >> 16;
  v169 = v165 + v168 + v167;
  v170 = ((v166 + 4095) >> 12) + ((v162 + 4095) >> 12) + ((v164 + 4095) >> 12);
  if (*(*(v31 + 30264) + 16999))
  {
    v171 = 11;
  }

  else
  {
    v171 = 6;
  }

  if (v171 >= 8)
  {
    v172 = 8;
  }

  else
  {
    v172 = v171;
  }

  *(v31 + 2400) = v172 * v169 + v171 * v170;
  *(v31 + 2404) = v169 + v170;
  *(v31 + 2408) = v169;
  *(v31 + 2412) = v165;
  *(v31 + 2416) = v167;
  *(v31 + 2420) = v168;
  *(*(v31 + 73040) + 908) = (v161[892] + v161[1233] - 1) / v161[1233];
  *(v31 + 1940) = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::beginRenderPass(*p_impl);
  if (!a5)
  {
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateDatabufferResources(*(*p_impl + 2392), (*p_impl + 24));
  }

  return v182;
}

uint64_t __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (*(result + 32) <= a2)
  {
    v4 = 0;
    v5 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *(*(result + 40) + 8 * a2);
    v5 = *(v4 + 128);
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v3;
  return result;
}

BOOL __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke_2(void *a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1[7];
  if (v3 > a2)
  {
    *(*(a1[5] + 8) + 24) = a2;
    v4 = *(*(a1[8] + 8 * *(*(a1[5] + 8) + 24)) + 128);
    v5 = (*(a1[4] + 216) + 80 * *(*(a1[6] + 8) + 24));
    if (*v5 != 4)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(*(v4 + 2392), *v5, 0);
    }

    v6 = v5[1];
    if (v6 != 4)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(*(v4 + 2392), v6, 1u);
    }

    v7 = v5[2];
    if (v7 != 4)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(*(v4 + 2392), v7, 2u);
    }

    v8 = v5[3];
    if (v8 != 4)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(*(v4 + 2392), v8, 3u);
    }

    v9 = v5[4];
    if (v9 != 4)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(*(v4 + 2392), v9, 4u);
    }

    v10 = v5[5];
    if (v10 != 4)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(*(v4 + 2392), v10, 5u);
    }

    v11 = v5[6];
    if (v11 != 4)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(*(v4 + 2392), v11, 6u);
    }

    v12 = v5[7];
    if (v12 != 4)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(*(v4 + 2392), v12, 7u);
    }

    v13 = v5[8];
    v14 = *(v4 + 2392);
    if (v13 == 4)
    {
LABEL_36:
      v20 = v5[9];
      if (v20 == 4)
      {
LABEL_53:
        AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(v14);
        return v3 > v2;
      }

      if ((*(v14 + 5909) & 2) != 0)
      {
        *(v14 + 6120) = v20;
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            *(v14 + 5904) |= 0x200u;
            *(v14 + 5896) &= 0xFFFFFDFFFFFFFDFFLL;
            goto LABEL_48;
          }

          if (v20 == 3)
          {
            v21 = *(v14 + 5904) | 0x200;
            goto LABEL_45;
          }
        }

        else
        {
          if (!v20)
          {
            *(v14 + 5904) &= ~0x200u;
            LODWORD(v23) = *(v14 + 5896) & 0xFFFFFDFF;
            HIDWORD(v23) = (*(v14 + 5896) | 0x20000000200uLL) >> 32;
            *(v14 + 5896) = v23;
            v24 = *(v14 + 5372) | 8;
LABEL_49:
            *(v14 + 5372) = v24;
            goto LABEL_50;
          }

          if (v20 == 1)
          {
            v21 = *(v14 + 5904) & 0xFFFFFDFF;
LABEL_45:
            *(v14 + 5904) = v21;
            LODWORD(v22) = *(v14 + 5896) | 0x200;
            HIDWORD(v22) = (*(v14 + 5896) & 0xFFFFFDFFFFFFFDFFLL) >> 32;
            *(v14 + 5896) = v22;
LABEL_48:
            v24 = *(v14 + 5372) & 0xFFF7;
            goto LABEL_49;
          }
        }
      }

LABEL_50:
      v18 = v20 == 1;
      v25 = 68;
      if (!v18)
      {
        v25 = 0;
      }

      *(v4 + (v25 >> 3) + 11456) |= 1 << (v25 & 4);
      goto LABEL_53;
    }

    if (*(v14 + 5909))
    {
      *(v14 + 6112) = v13;
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          *(v14 + 5904) |= 0x100u;
          *(v14 + 5896) &= 0xFFFFFEFFFFFFFEFFLL;
LABEL_31:
          v17 = *(v14 + 5372) & 0xFFFD;
LABEL_32:
          *(v14 + 5372) = v17;
          goto LABEL_33;
        }

        if (v13 == 3)
        {
          v15 = *(v14 + 5904) | 0x100;
          goto LABEL_30;
        }

        if (v13 != 5)
        {
          goto LABEL_33;
        }

LABEL_27:
        v15 = *(v14 + 5904) & 0xFFFFFEFF;
LABEL_30:
        *(v14 + 5904) = v15;
        LODWORD(v16) = *(v14 + 5896) | 0x100;
        HIDWORD(v16) = (*(v14 + 5896) & 0xFFFFFEFFFFFFFEFFLL) >> 32;
        *(v14 + 5896) = v16;
        goto LABEL_31;
      }

      if (!v13)
      {
        *(v14 + 5904) &= ~0x100u;
        LODWORD(v27) = *(v14 + 5896) & 0xFFFFFEFF;
        HIDWORD(v27) = (*(v14 + 5896) | 0x10000000100uLL) >> 32;
        *(v14 + 5896) = v27;
        v17 = *(v14 + 5372) | 2;
        goto LABEL_32;
      }

      if (v13 == 1)
      {
        goto LABEL_27;
      }
    }

LABEL_33:
    v18 = (v13 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v19 = 67;
    if (!v18)
    {
      v19 = 0;
    }

    *(v4 + (v19 >> 3) + 11456) |= 1 << (v19 & 3);
    goto LABEL_36;
  }

  return v3 > v2;
}

BOOL __99__AGXG18PFamilyRenderContext_mtlnext_mergeRenderEncoders_count_options_commitFeedback_queue_error___block_invoke_3(void *a1, unsigned int a2, char a3)
{
  v3 = a2;
  v4 = a1[8];
  if (v4 > a2)
  {
    *(*(a1[5] + 8) + 24) = a2;
    v7 = *(*(a1[6] + 8) + 24);
    if (v7 <= *(*(a1[5] + 8) + 24))
    {
      do
      {
        [*(a1[9] + 8 * v7++) releaseMergeableRender];
      }

      while (v7 <= *(*(a1[5] + 8) + 24));
      v7 = *(*(a1[6] + 8) + 24);
    }

    [*(a1[9] + 8 * v7) ioGPUResourceList];
    v8 = *(*(a1[6] + 8) + 24);
    v9 = v8 + 1;
    if (v8 + 1 <= *(*(a1[5] + 8) + 24))
    {
      do
      {
        [*(a1[9] + 8 * v9) ioGPUResourceList];
        IOGPUResourceListMergeLists();
        ++v9;
      }

      while (v9 <= *(*(a1[5] + 8) + 24));
      v8 = *(*(a1[6] + 8) + 24);
    }

    v10 = a1[4];
    v14 = *(a1[9] + 8 * v8);
    std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v10 + 192, &v14);
    v11 = *(*(a1[6] + 8) + 24) + 1;
    for (i = *(a1[5] + 8); v11 <= *(i + 24); i = *(a1[5] + 8))
    {
      [*(a1[9] + 8 * v11++) resetCommandBuffer];
    }

    if (a3)
    {
      ++*(*(a1[7] + 8) + 24);
    }
  }

  return v4 > v3;
}

@end