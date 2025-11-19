@interface MTLIndirectCommandBufferDescriptor
- (BOOL)isEqual:(id)a3;
- (MTLIndirectCommandBufferDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MTLIndirectCommandBufferDescriptor

- (MTLIndirectCommandBufferDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLIndirectCommandBufferDescriptor;
  result = [(MTLIndirectCommandBufferDescriptor *)&v3 init];
  result->_state.inheritPipelineState = 0;
  result->_state.maxKernelThreadgroupMemoryBindCount = 31;
  result->_state.maxObjectThreadgroupMemoryBindCount = 0;
  *&result->_state.maxScissorRectCount = 0x101010101010101;
  *&result->_state.inheritDepthClipMode = 0x101010101010101;
  result->_state.allowOverrideRenderStates = 0;
  result->_state.supportColorAttachmentMapping = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[MTLIndirectCommandBufferDescriptor allocWithZone:?]];
  if (result)
  {
    v5 = *&self->_state.commandTypes;
    v6 = *&self->_state.maxVertexBufferBindCount;
    *(result + 40) = *&self->_state.maxKernelBufferBindCount;
    *(result + 24) = v6;
    *(result + 8) = v5;
    v7 = *&self->_state.maxObjectBufferBindCount;
    v8 = *&self->_state.maxObjectThreadgroupMemoryBindCount;
    v9 = *&self->_state.inheritCullMode;
    *(result + 104) = *&self->_state.resourceIndex;
    *(result + 88) = v9;
    *(result + 72) = v8;
    *(result + 56) = v7;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && memcmp(&self->_state, a3 + 8, 0x70uLL) == 0;
}

@end