@interface MPSCaptureCommandEncoder
- (MPSCaptureCommandEncoder)initWithCommandEncoder:(id)a3 captureContext:(id)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setComputePipelineState:(id)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
@end

@implementation MPSCaptureCommandEncoder

- (MPSCaptureCommandEncoder)initWithCommandEncoder:(id)a3 captureContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPSCaptureCommandEncoder;
  v9 = [(MPSCaptureCommandEncoder *)&v12 init];
  v10 = objc_autoreleasePoolPush();
  objc_storeStrong(&v9->_encoder, a3);
  objc_storeStrong(&v9->_captureContext, a4);
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

- (id)forwardingTargetForSelector:(SEL)a3
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

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v18 = a3;
  v8 = [(MPSGraphCaptureContext *)self->_captureContext constantBufferName:?];
  v9 = v8;
  encoderContext = self->_encoderContext;
  if (v8)
  {
    v11 = v8;
    MPSEncoderContext::addBindingsIfNeeded(encoderContext, a5);
    v12 = *encoderContext + 32 * a5;
    *(v12 + 16) = 1;
    v13 = *(v12 + 24);
    *(v12 + 24) = v11;
    v14 = v11;

    *(v12 + 8) = a4;
  }

  else
  {
    v15 = v18;
    MPSEncoderContext::addBindingsIfNeeded(encoderContext, a5);
    v16 = *(*encoderContext + 32 * a5);
    *(*encoderContext + 32 * a5) = v15;
    v14 = v15;

    v17 = *encoderContext + 32 * a5;
    *(v17 + 8) = a4;
    *(v17 + 16) = 0;
  }

  [(MTLComputeCommandEncoder *)self->_encoder setBuffer:v18 offset:a4 atIndex:a5];
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [MPSGraphCaptureContext dataWithBytes:"dataWithBytes:length:" length:?];
  encoderContext = self->_encoderContext;
  v11 = v9;
  MPSEncoderContext::addBindingsIfNeeded(encoderContext, a5);
  v12 = *encoderContext + 32 * a5;
  *(v12 + 16) = 1;
  v13 = *(v12 + 24);
  *(v12 + 24) = v11;
  v14 = v11;

  *(v12 + 8) = 0;
  [(MTLComputeCommandEncoder *)self->_encoder setBytes:a3 length:a4 atIndex:a5];
}

- (void)setComputePipelineState:(id)a3
{
  objc_storeStrong(self->_encoderContext + 3, a3);
  v5 = a3;
  [(MTLComputeCommandEncoder *)self->_encoder setComputePipelineState:?];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  encoderContext = self->_encoderContext;
  v6 = *(encoderContext + 4);
  v7 = *(encoderContext + 5);
  v8 = v7 - v6;
  v9 = (v7 - v6) >> 3;
  if (v9 > a4)
  {
    goto LABEL_18;
  }

  v10 = a4 + 1;
  v11 = a4 + 1 - v9;
  if (a4 + 1 > v9)
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
    v17 = a4;
    v18 = a3;
    bzero(*(encoderContext + 5), v16);
    a3 = v18;
    a4 = v17;
    v14 = v7 + v15;
    goto LABEL_14;
  }

  if (a4 + 1 < v9)
  {
    v14 = v6 + 8 * v10;
LABEL_14:
    *(encoderContext + 5) = v14;
  }

  if (v9 < a4)
  {
    v19 = a4;
    v20 = a3;
    bzero((v6 + v8), 8 * a4 - v8);
    a3 = v20;
    a4 = v19;
  }

  *(v6 + 8 * a4) = 0;
LABEL_18:
  *(v6 + 8 * a4) = a3;
  encoder = self->_encoder;

  [MTLComputeCommandEncoder setThreadgroupMemoryLength:"setThreadgroupMemoryLength:atIndex:" atIndex:?];
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"ThreadsPerThreadgroup";
  v7 = MTLSizeToNSArray(a4);
  v13[1] = @"ThreadgroupsPerGrid";
  v14[0] = v7;
  v8 = MTLSizeToNSArray(a3);
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(MPSGraphCaptureContext *)self->_captureContext createNodeWithDispatchInfo:v9 encoderContext:self->_encoderContext];
  encoder = self->_encoder;
  v12 = *a3;
  v11 = *a4;
  [(MTLComputeCommandEncoder *)encoder dispatchThreadgroups:&v12 threadsPerThreadgroup:&v11];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v6 = a3;
  v7 = a4;
  abort();
}

@end