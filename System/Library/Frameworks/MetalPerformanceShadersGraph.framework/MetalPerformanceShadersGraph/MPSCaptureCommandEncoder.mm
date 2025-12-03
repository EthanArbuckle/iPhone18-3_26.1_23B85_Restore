@interface MPSCaptureCommandEncoder
- (MPSCaptureCommandEncoder)initWithCommandEncoder:(id)encoder captureContext:(id)context;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
@end

@implementation MPSCaptureCommandEncoder

- (MPSCaptureCommandEncoder)initWithCommandEncoder:(id)encoder captureContext:(id)context
{
  encoderCopy = encoder;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MPSCaptureCommandEncoder;
  v9 = [(MPSCaptureCommandEncoder *)&v12 init];
  v10 = objc_autoreleasePoolPush();
  objc_storeStrong(&v9->_encoder, encoder);
  objc_storeStrong(&v9->_captureContext, context);
  operator new();
}

- (void)dealloc
{
  encoderContext = self->_encoderContext;
  if (encoderContext)
  {
    v4 = encoderContext[4];
    if (v4)
    {
      encoderContext[5] = v4;
      operator delete(v4);
    }

    v5 = *encoderContext;
    if (*encoderContext)
    {
      v6 = encoderContext[1];
      v7 = *encoderContext;
      if (v6 != v5)
      {
        do
        {

          v8 = *(v6 - 4);
          v6 -= 4;
        }

        while (v6 != v5);
        v7 = *encoderContext;
      }

      encoderContext[1] = v5;
      operator delete(v7);
    }

    MEMORY[0x1E12E5B90](encoderContext, 0xB0C40D8961893);
  }

  self->_encoderContext = 0;
  v9.receiver = self;
  v9.super_class = MPSCaptureCommandEncoder;
  [(MPSCaptureCommandEncoder *)&v9 dealloc];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_encoder;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v8 = [(MPSGraphCaptureContext *)self->_captureContext constantBufferName:?];
  v9 = v8;
  encoderContext = self->_encoderContext;
  if (v8)
  {
    v11 = v8;
    MPSEncoderContext::addBindingsIfNeeded(encoderContext, index);
    v12 = *encoderContext + 32 * index;
    *(v12 + 16) = 1;
    v13 = *(v12 + 24);
    *(v12 + 24) = v11;
    v14 = v11;

    *(v12 + 8) = offset;
  }

  else
  {
    v15 = bufferCopy;
    MPSEncoderContext::addBindingsIfNeeded(encoderContext, index);
    v16 = *(*encoderContext + 32 * index);
    *(*encoderContext + 32 * index) = v15;
    v14 = v15;

    v17 = *encoderContext + 32 * index;
    *(v17 + 8) = offset;
    *(v17 + 16) = 0;
  }

  [(MTLComputeCommandEncoder *)self->_encoder setBuffer:bufferCopy offset:offset atIndex:index];
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v9 = [MPSGraphCaptureContext dataWithBytes:"dataWithBytes:length:" length:?];
  encoderContext = self->_encoderContext;
  v11 = v9;
  MPSEncoderContext::addBindingsIfNeeded(encoderContext, index);
  v12 = *encoderContext + 32 * index;
  *(v12 + 16) = 1;
  v13 = *(v12 + 24);
  *(v12 + 24) = v11;
  v14 = v11;

  *(v12 + 8) = 0;
  [(MTLComputeCommandEncoder *)self->_encoder setBytes:bytes length:length atIndex:index];
}

- (void)setComputePipelineState:(id)state
{
  objc_storeStrong(self->_encoderContext + 3, state);
  stateCopy = state;
  [(MTLComputeCommandEncoder *)self->_encoder setComputePipelineState:?];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  encoderContext = self->_encoderContext;
  v6 = *(encoderContext + 4);
  v7 = *(encoderContext + 5);
  v8 = v7 - v6;
  v9 = (v7 - v6) >> 3;
  if (v9 > index)
  {
    goto LABEL_18;
  }

  v10 = index + 1;
  v11 = index + 1 - v9;
  if (index + 1 > v9)
  {
    v12 = *(encoderContext + 6);
    if (v11 > (v12 - v7) >> 3)
    {
      if (!(v10 >> 61))
      {
        v13 = v12 - v6;
        if (v13 >> 2 > v10)
        {
          v10 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v15 = 8 * v11;
    v16 = 8 * v11;
    indexCopy = index;
    lengthCopy = length;
    bzero(*(encoderContext + 5), v16);
    length = lengthCopy;
    index = indexCopy;
    v14 = v7 + v15;
    goto LABEL_14;
  }

  if (index + 1 < v9)
  {
    v14 = v6 + 8 * v10;
LABEL_14:
    *(encoderContext + 5) = v14;
  }

  if (v9 < index)
  {
    indexCopy2 = index;
    lengthCopy2 = length;
    bzero((v6 + v8), 8 * index - v8);
    length = lengthCopy2;
    index = indexCopy2;
  }

  *(v6 + 8 * index) = 0;
LABEL_18:
  *(v6 + 8 * index) = length;
  encoder = self->_encoder;

  [MTLComputeCommandEncoder setThreadgroupMemoryLength:"setThreadgroupMemoryLength:atIndex:" atIndex:?];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"ThreadsPerThreadgroup";
  v7 = MTLSizeToNSArray(threadgroup);
  v13[1] = @"ThreadgroupsPerGrid";
  v14[0] = v7;
  v8 = MTLSizeToNSArray(threadgroups);
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(MPSGraphCaptureContext *)self->_captureContext createNodeWithDispatchInfo:v9 encoderContext:self->_encoderContext];
  encoder = self->_encoder;
  v12 = *threadgroups;
  v11 = *threadgroup;
  [(MTLComputeCommandEncoder *)encoder dispatchThreadgroups:&v12 threadsPerThreadgroup:&v11];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  abort();
}

@end