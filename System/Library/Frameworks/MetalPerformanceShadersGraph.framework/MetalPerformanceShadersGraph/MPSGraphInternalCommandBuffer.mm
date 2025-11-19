@interface MPSGraphInternalCommandBuffer
- (BOOL)respondsToSelector:(SEL)a3;
- (MPSCommandBufferDescriptor)mpsCommandBufferDescriptor;
- (MPSGraphInternalCommandBuffer)initWithMPSCommandBuffer:(id)a3 executableExecutionDescriptor:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)commit;
- (void)commitAndContinue;
- (void)forwardInvocation:(id)a3;
@end

@implementation MPSGraphInternalCommandBuffer

- (MPSGraphInternalCommandBuffer)initWithMPSCommandBuffer:(id)a3 executableExecutionDescriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MPSGraphInternalCommandBuffer;
  v9 = [(MPSCommandBuffer *)&v13 initWithCommandBuffer:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_original, a3);
    objc_storeStrong(&v10->_executableExecutionDescriptor, a4);
    v10->_commandBufferIndex = 0;
    v11 = v10;
  }

  return v10;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MPSGraphInternalCommandBuffer;
  return [(MPSCommandBuffer *)&v6 respondsToSelector:a3];
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 selector];
  if (objc_opt_respondsToSelector())
  {
    [v4 invokeWithTarget:self->_original];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MPSGraphInternalCommandBuffer;
    [(MPSGraphInternalCommandBuffer *)&v5 forwardInvocation:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = MPSGraphInternalCommandBuffer;
  v5 = [(MPSGraphInternalCommandBuffer *)&v7 methodSignatureForSelector:?];
  if (v5)
  {
  }

  else
  {
    v5 = [(MPSCommandBuffer *)self->_original methodSignatureForSelector:a3];
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