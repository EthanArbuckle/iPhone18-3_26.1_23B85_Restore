@interface MTLIOAccelIndirectCommandBuffer
- (MTLIOAccelIndirectCommandBuffer)initWithBuffer:(id)a3 descriptor:(id)a4 maxCommandCount:(unint64_t)a5;
- (void)dealloc;
- (void)getHeader:(void *)a3 headerSize:(unint64_t *)a4;
- (void)resetWithRange:(_NSRange)a3;
@end

@implementation MTLIOAccelIndirectCommandBuffer

- (MTLIOAccelIndirectCommandBuffer)initWithBuffer:(id)a3 descriptor:(id)a4 maxCommandCount:(unint64_t)a5
{
  if (a3)
  {
    v15.receiver = self;
    v15.super_class = MTLIOAccelIndirectCommandBuffer;
    v8 = [(MTLIOAccelResource *)&v15 initWithResource:?];
    v8->_privateICBuffer = a3;
    v8->_maxCommandCount = a5;
    v8->_privateIndirectRenderEncoder = 0;
    v8->_privateIndirectComputeEncoder = 0;
    v8->_descriptor = [a4 copy];
    v8->_internalHeader.size = v8->_maxCommandCount;
    v8->_internalHeader.commandTypes = [a4 commandTypes];
    v8->_internalHeader.headerSize = 56;
    v8->_internalHeader.inheritBuffers = [a4 inheritBuffers];
    v8->_internalHeader.inheritPipelineState = [a4 inheritPipelineState];
    v8->_internalHeader.maxFragmentBufferBindCount = [a4 maxFragmentBufferBindCount];
    v8->_internalHeader.maxVertexBufferBindCount = [a4 maxVertexBufferBindCount];
    v8->_internalHeader.maxKernelBufferBindCount = [a4 maxKernelBufferBindCount];
    v8->_internalHeader.maxObjectBufferBindCount = [a4 maxObjectBufferBindCount];
    v8->_internalHeader.maxMeshBufferBindCount = [a4 maxMeshBufferBindCount];
    v8->_internalHeader.supportRayTracing = [a4 supportRayTracing];
    v8->_internalHeader.supportDynamicAttributeStride = [a4 supportDynamicAttributeStride];
    v8->_internalHeader.maxKernelThreadgroupMemoryBindCount = [a4 maxKernelThreadgroupMemoryBindCount];
    v8->_internalHeader.maxObjectThreadgroupMemoryBindCount = [a4 maxObjectThreadgroupMemoryBindCount];
    v8->_internalHeader.maxScissorRectCount = [a4 maxScissorRectCount];
    v8->_internalHeader.maxViewportCount = [a4 maxViewportCount];
    v8->_internalHeader.inheritDepthStencilState = [a4 inheritDepthStencilState];
    v8->_internalHeader.inheritDepthBias = [a4 inheritDepthBias];
    v8->_internalHeader.inheritStencilReferenceValues = [a4 inheritStencilReferenceValues];
    v8->_internalHeader.inheritDepthClipMode = [a4 inheritDepthClipMode];
    v8->_internalHeader.inheritCullMode = [a4 inheritCullMode];
    v8->_internalHeader.inheritFrontFacingWinding = [a4 inheritFrontFacingWinding];
    v8->_internalHeader.inheritTriangleFillMode = [a4 inheritTriangleFillMode];
    v8->_internalHeader.inheritDepthTestBounds = [a4 inheritDepthTestBounds];
    v8->_internalHeader.inheritScissorRects = [a4 inheritScissorRects];
    v8->_internalHeader.inheritViewports = [a4 inheritViewports];
    v8->_internalHeader.inheritBlendColor = [a4 inheritBlendColor];
    v8->_internalHeader.allowOverrideRenderStates = [a4 allowOverrideRenderStates];
    v9 = [a3 storageMode];
    v10 = 0;
    if (v9 != 2)
    {
      v10 = *&v8->super._anon_50[32];
    }

    v11 = [a4 commandTypes];
    privateICBuffer = v8->_privateICBuffer;
    if ((v11 & 0x60) != 0)
    {
      v8->_privateIndirectComputeEncoder = [v10 newIndirectComputeCommandEncoderWithBuffer:privateICBuffer];
      v13 = 2;
    }

    else
    {
      v8->_privateIndirectRenderEncoder = [v10 newIndirectRenderCommandEncoderWithBuffer:privateICBuffer];
      v13 = 1;
    }

    v8->_commandBufferType = v13;
  }

  else
  {

    return 0;
  }

  return v8;
}

- (void)getHeader:(void *)a3 headerSize:(unint64_t *)a4
{
  if (a3)
  {
    *a3 = &self->_internalHeader;
  }

  if (a4)
  {
    *a4 = 56;
  }
}

- (void)resetWithRange:(_NSRange)a3
{
  if (a3.location < a3.location + a3.length)
  {
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v3;
    v21 = v9;
    v22 = v10;
    length = a3.length;
    location = a3.location;
    do
    {
      privateIndirectRenderEncoder = self->_privateIndirectRenderEncoder;
      if (!privateIndirectRenderEncoder)
      {
        privateIndirectRenderEncoder = self->_privateIndirectComputeEncoder;
      }

      [-[MTLIndirectRenderCommandEncoder objectAtIndexedSubscript:](privateIndirectRenderEncoder objectAtIndexedSubscript:{location++, v15, v16, v17, v18, v19, v20, v21, v22), "reset"}];
      --length;
    }

    while (length);
  }
}

- (void)dealloc
{
  privateIndirectComputeEncoder = self->_privateIndirectComputeEncoder;
  if (privateIndirectComputeEncoder)
  {
  }

  privateIndirectRenderEncoder = self->_privateIndirectRenderEncoder;
  if (privateIndirectRenderEncoder)
  {
  }

  v5.receiver = self;
  v5.super_class = MTLIOAccelIndirectCommandBuffer;
  [(MTLIOAccelResource *)&v5 dealloc];
}

@end