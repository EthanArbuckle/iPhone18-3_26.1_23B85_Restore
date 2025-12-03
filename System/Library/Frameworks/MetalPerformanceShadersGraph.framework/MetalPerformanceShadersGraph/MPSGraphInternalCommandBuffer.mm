@interface MPSGraphInternalCommandBuffer
- (BOOL)respondsToSelector:(SEL)selector;
- (MPSCommandBufferDescriptor)mpsCommandBufferDescriptor;
- (MPSGraphInternalCommandBuffer)initWithMPSCommandBuffer:(id)buffer executableExecutionDescriptor:(id)descriptor;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)commit;
- (void)commitAndContinue;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MPSGraphInternalCommandBuffer

- (MPSGraphInternalCommandBuffer)initWithMPSCommandBuffer:(id)buffer executableExecutionDescriptor:(id)descriptor
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v13.receiver = self;
  v13.super_class = MPSGraphInternalCommandBuffer;
  v9 = [(MPSCommandBuffer *)&v13 initWithCommandBuffer:bufferCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_original, buffer);
    objc_storeStrong(&v10->_executableExecutionDescriptor, descriptor);
    v10->_commandBufferIndex = 0;
    v11 = v10;
  }

  return v10;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MPSGraphInternalCommandBuffer;
  return [(MPSCommandBuffer *)&v6 respondsToSelector:selector];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:self->_original];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MPSGraphInternalCommandBuffer;
    [(MPSGraphInternalCommandBuffer *)&v5 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = MPSGraphInternalCommandBuffer;
  v5 = [(MPSGraphInternalCommandBuffer *)&v7 methodSignatureForSelector:?];
  if (v5)
  {
  }

  else
  {
    v5 = [(MPSCommandBuffer *)self->_original methodSignatureForSelector:selector];
  }

  return v5;
}

- (void)commitAndContinue
{
  if (!self->_commandBufferIndex)
  {
    profilingBitmap = self->_executableExecutionDescriptor->_profilingBitmap;
    if ((profilingBitmap & 4) != 0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __50__MPSGraphInternalCommandBuffer_commitAndContinue__block_invoke;
      v7[3] = &unk_1E86D4B20;
      v7[4] = self;
      [(MPSGraphInternalCommandBuffer *)self addScheduledHandler:v7];
      profilingBitmap = self->_executableExecutionDescriptor->_profilingBitmap;
    }

    if (profilingBitmap)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
      [(NSMutableDictionary *)self->_executableExecutionDescriptor->_profilingDictionary setObject:v4 forKeyedSubscript:@"MPSGRAPH_PROFILING_BEFORE_FIRST_COMMIT_TIMESTAMP"];
    }
  }

  [(MPSCommandBuffer *)self->_original commitAndContinue];
  commandBufferIndex = self->_commandBufferIndex;
  if (!commandBufferIndex)
  {
    if ((self->_executableExecutionDescriptor->_profilingBitmap & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
      [(NSMutableDictionary *)self->_executableExecutionDescriptor->_profilingDictionary setObject:v6 forKeyedSubscript:@"MPSGRAPH_PROFILING_AFTER_FIRST_COMMIT_TIMESTAMP"];

      commandBufferIndex = self->_commandBufferIndex;
    }

    else
    {
      commandBufferIndex = 0;
    }
  }

  self->_commandBufferIndex = commandBufferIndex + 1;
}

void __50__MPSGraphInternalCommandBuffer_commitAndContinue__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
  [*(*(*(a1 + 32) + 80) + 40) setObject:? forKeyedSubscript:?];
}

- (void)commit
{
  if (!self->_commandBufferIndex)
  {
    profilingBitmap = self->_executableExecutionDescriptor->_profilingBitmap;
    if ((profilingBitmap & 4) != 0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __39__MPSGraphInternalCommandBuffer_commit__block_invoke;
      v7[3] = &unk_1E86D4B20;
      v7[4] = self;
      [(MPSGraphInternalCommandBuffer *)self addScheduledHandler:v7];
      profilingBitmap = self->_executableExecutionDescriptor->_profilingBitmap;
    }

    if (profilingBitmap)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
      [(NSMutableDictionary *)self->_executableExecutionDescriptor->_profilingDictionary setObject:v4 forKeyedSubscript:@"MPSGRAPH_PROFILING_BEFORE_FIRST_COMMIT_TIMESTAMP"];
    }
  }

  [(MPSCommandBuffer *)self->_original commit];
  commandBufferIndex = self->_commandBufferIndex;
  if (!commandBufferIndex)
  {
    if ((self->_executableExecutionDescriptor->_profilingBitmap & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
      [(NSMutableDictionary *)self->_executableExecutionDescriptor->_profilingDictionary setObject:v6 forKeyedSubscript:@"MPSGRAPH_PROFILING_AFTER_FIRST_COMMIT_TIMESTAMP"];

      commandBufferIndex = self->_commandBufferIndex;
    }

    else
    {
      commandBufferIndex = 0;
    }
  }

  self->_commandBufferIndex = commandBufferIndex + 1;
}

void __39__MPSGraphInternalCommandBuffer_commit__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
  [*(*(*(a1 + 32) + 80) + 40) setObject:? forKeyedSubscript:?];
}

- (MPSCommandBufferDescriptor)mpsCommandBufferDescriptor
{
  result = self->_original;
  if (result)
  {
    return [(MPSCommandBufferDescriptor *)result mpsCommandBufferDescriptor];
  }

  retstr->encoderCount = 0;
  retstr->producedValues = 0;
  retstr->numberOfCommitsMade = 0;
  return result;
}

@end