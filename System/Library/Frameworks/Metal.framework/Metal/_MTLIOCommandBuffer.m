@interface _MTLIOCommandBuffer
- (BOOL)isCommitted;
- (_MTLIOCommandBuffer)initWithQueue:(id)a3;
- (_MTLIOCommandBuffer)initWithQueue:(id)a3 resourceList:(id)a4 retained:(BOOL)a5;
- (id).cxx_construct;
- (id)getReusableScratchBuffer:(unint64_t)a3;
- (void)addBarrier;
- (void)addCompletedHandler:(id)a3;
- (void)commit;
- (void)copyStatusToBuffer:(id)a3 offset:(unint64_t)a4;
- (void)dealloc;
- (void)didCompleteWithStatus:(int64_t)a3;
- (void)enqueue;
- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7;
- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 dstOrigin:(id *)a9 handle:(id)a10 handleOffset:(unint64_t)a11;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11;
- (void)pushDebugGroup:(id)a3;
- (void)reuseActiveScratchBuffers;
- (void)signalEvent:(id)a3 value:(unint64_t)a4;
- (void)tryCancel;
- (void)waitForEvent:(id)a3 value:(unint64_t)a4;
- (void)waitUntilCompleted;
@end

@implementation _MTLIOCommandBuffer

- (_MTLIOCommandBuffer)initWithQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = _MTLIOCommandBuffer;
  v4 = [(_MTLObjectWithLabel *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->_queue = v5;
    dispatch_semaphore_wait(v5[8], 0xFFFFFFFFFFFFFFFFLL);
    v4->_status = 0;
    v4->_currentStagingBuffer = 0;
    v4->_currentStagingBufferRemainingBytes = 0;
    v4->_currentStagingBufferOffset = 0;
    v4->commandList = 0;
  }

  return v4;
}

- (_MTLIOCommandBuffer)initWithQueue:(id)a3 resourceList:(id)a4 retained:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = _MTLIOCommandBuffer;
  v8 = [(_MTLObjectWithLabel *)&v11 init];
  if (v8)
  {
    v9 = a3;
    v8->_queue = v9;
    dispatch_semaphore_wait(v9[8], 0xFFFFFFFFFFFFFFFFLL);
    v8->_status = 0;
    v8->_completedCallbacksDone = 0;
    v8->_mutex.__sig = 850045863;
    *&v8->_mutex.__opaque[48] = 0;
    *&v8->_mutex.__opaque[32] = 0u;
    *&v8->_mutex.__opaque[16] = 0u;
    *v8->_mutex.__opaque = 0u;
    v8->_cond.__sig = 1018212795;
    *v8->_cond.__opaque = 0u;
    *&v8->_cond.__opaque[16] = 0u;
    *&v8->_cond.__opaque[32] = 0;
    v8->_pendingCommands = 0;
    v8->_currentStagingBuffer = 0;
    v8->_currentStagingBufferRemainingBytes = 0;
    v8->_currentStagingBufferOffset = 0;
    [(_MTLIOCommandBuffer *)v8 createCommandListWithResourcePool:a4];
    v8->_resourceList = MTLResourceListPoolCreateResourceList(a4);
    v8->_retained = a5;
    v8->_enqueued = 0;
    v8->_activeScratchBuffers.var0 = v8->_activeScratchBuffers.__begin_;
    v8->_poolScratchBuffers.var0 = v8->_poolScratchBuffers.__begin_;
    if (MTLTraceEnabled())
    {
      [(_MTLIOCommandBuffer *)v8 globalTraceObjectID];
      [a3 globalTraceObjectID];
      [objc_msgSend(a3 "device")];
      kdebug_trace();
    }
  }

  return v8;
}

- (BOOL)isCommitted
{
  commandList = self->commandList;
  if (commandList)
  {
    LOBYTE(commandList) = commandList->var7;
  }

  return commandList & 1;
}

- (void)addCompletedHandler:(id)a3
{
  if (a3)
  {
    p_completedDispatchListTail = &self->_completedDispatchListTail;
    v6 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    v7 = _Block_copy(a3);
    *v6 = 0;
    *(v6 + 1) = v7;
    v8 = *p_completedDispatchListTail;
    if (*p_completedDispatchListTail)
    {
      v9 = 104;
    }

    else
    {
      v8 = p_completedDispatchListTail;
      v9 = 96;
    }

    v8->var0 = v6;
    *(&self->super.super.isa + v9) = v6;
  }
}

- (void)waitForEvent:(id)a3 value:(unint64_t)a4
{
  if (a3)
  {
    v12 = 2;
    v13 = 0;
    *&v7 = MTLIOCommandList::addCommand(self->commandList, &v12).n128_u64[0];
    v9 = v8;
    v10 = [(_MTLIOCommandQueue *)self->_queue eventSignalListener];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42___MTLIOCommandBuffer_waitForEvent_value___block_invoke;
    v11[3] = &unk_1E6EEA6C8;
    v11[4] = self;
    v11[5] = v9;
    [a3 notifyListener:v10 atValue:a4 block:v11];
    if (self->_retained)
    {
      MTLResourceListAddResource(self->_resourceList, a3);
    }

    if (MTLTraceEnabled())
    {
      [(_MTLIOCommandBuffer *)self globalTraceObjectID];
      kdebug_trace();
    }
  }
}

- (void)signalEvent:(id)a3 value:(unint64_t)a4
{
  v6 = 3;
  v7 = a3;
  v8 = a4;
  MTLIOCommandList::addCommand(self->commandList, &v6);
  if (self->_retained)
  {
    MTLResourceListAddResource(self->_resourceList, a3);
  }

  if (MTLTraceEnabled())
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];

    kdebug_trace();
  }
}

- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6
{
  v11 = [a5 stagingBufferSize:a4 offset:{a6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v12 = v11;
  if (self->_currentStagingBufferRemainingBytes >= v11)
  {
    if (!v11)
    {
      v21 = 0;
      goto LABEL_13;
    }

    currentStagingBuffer = self->_currentStagingBuffer;
LABEL_6:
    currentStagingBufferOffset = self->_currentStagingBufferOffset;
    v21 = currentStagingBuffer;
    v22 = currentStagingBufferOffset;
    v23 = [-[MTLIOScratchBuffer buffer](currentStagingBuffer "buffer")] + currentStagingBufferOffset;
LABEL_13:
    self->_currentStagingBufferOffset += v12;
    self->_currentStagingBufferRemainingBytes -= v12;
    v17 = 0;
    v18 = a5;
    v19 = a6;
    v24 = v12;
    v25 = a3;
    v20 = a4;
    *&v26 = 0;
    MTLIOCommandList::addCommand(self->commandList, &v17);
    if (self->_retained)
    {
      MTLResourceListAddResource(self->_resourceList, a5);
    }

    if (MTLTraceEnabled())
    {
      [(_MTLIOCommandBuffer *)self globalTraceObjectID];
      [a5 globalTraceObjectID];

      kdebug_trace();
    }

    return;
  }

  currentStagingBuffer = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v11];
  if (currentStagingBuffer)
  {
LABEL_3:
    self->_currentStagingBufferRemainingBytes = [-[MTLIOScratchBuffer buffer](currentStagingBuffer "buffer")];
    self->_currentStagingBufferOffset = 0;
    self->_currentStagingBuffer = currentStagingBuffer;
    goto LABEL_6;
  }

  v15 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v12];
  currentStagingBuffer = v15;
  if (v15 && [-[MTLIOScratchBuffer buffer](v15 "buffer")] >= v12)
  {
    MTLResourceListAddResource(self->_resourceList, currentStagingBuffer);

    goto LABEL_3;
  }

  commandList = self->commandList;
  os_unfair_lock_lock(&commandList->var5);
  commandList->var6 = 1;

  os_unfair_lock_unlock(&commandList->var5);
}

- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v13 = [a3 storageMode];
  v25 = a6;
  v14 = [a6 stagingBufferSize:a5 offset:a7];
  v15 = v13 == 2;
  if (v13 == 2)
  {
    v16 = a5;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + v14;
  if (self->_currentStagingBufferRemainingBytes >= v16 + v14)
  {
    v19 = a7;
    if (!v17)
    {
      *&v28 = 0;
      goto LABEL_16;
    }

    v23 = a4;
    currentStagingBuffer = self->_currentStagingBuffer;
LABEL_9:
    currentStagingBufferOffset = self->_currentStagingBufferOffset;
    *&v28 = currentStagingBuffer;
    *(&v28 + 1) = currentStagingBufferOffset;
    *&v29 = [-[MTLIOScratchBuffer buffer](currentStagingBuffer buffer] + currentStagingBufferOffset;
    a4 = v24;
LABEL_16:
    self->_currentStagingBufferOffset += v17;
    self->_currentStagingBufferRemainingBytes -= v17;
    LODWORD(v26) = 0;
    *(&v26 + 1) = v25;
    *&v27 = v19;
    *(&v29 + 1) = v17;
    *(&v27 + 1) = a5;
    *&v30 = [a3 contents] + a4;
    *(&v30 + 1) = a3;
    *&v31 = a4;
    BYTE9(v31) = v15;
    MTLIOCommandList::addCommand(self->commandList, &v26);
    if (self->_retained)
    {
      MTLResourceListAddResource(self->_resourceList, a3);
      MTLResourceListAddResource(self->_resourceList, v25);
    }

    if (MTLTraceEnabled())
    {
      [(_MTLIOCommandBuffer *)self globalTraceObjectID];
      [v25 globalTraceObjectID];

      kdebug_trace();
    }

    return;
  }

  v23 = a4;
  currentStagingBuffer = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v17];
  if (currentStagingBuffer)
  {
LABEL_6:
    v19 = a7;
    self->_currentStagingBufferRemainingBytes = [-[MTLIOScratchBuffer buffer](currentStagingBuffer "buffer")];
    self->_currentStagingBufferOffset = 0;
    self->_currentStagingBuffer = currentStagingBuffer;
    goto LABEL_9;
  }

  v21 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v17];
  currentStagingBuffer = v21;
  if (v21 && [-[MTLIOScratchBuffer buffer](v21 "buffer")] >= v17)
  {
    MTLResourceListAddResource(self->_resourceList, currentStagingBuffer);

    goto LABEL_6;
  }

  commandList = self->commandList;
  os_unfair_lock_lock(&commandList->var5);
  commandList->var6 = 1;

  os_unfair_lock_unlock(&commandList->var5);
}

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 dstOrigin:(id *)a9 handle:(id)a10 handleOffset:(unint64_t)a11
{
  v12 = *a6;
  v11 = *a9;
  [(_MTLIOCommandBuffer *)self loadTexture:a3 slice:a4 level:a5 size:&v12 sourceBytesPerRow:a7 sourceBytesPerImage:a8 destinationOrigin:&v11 sourceHandle:a10 sourceHandleOffset:a11];
}

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11
{
  v27 = a8;
  v25 = a4;
  v40 = 0;
  v41 = 0;
  v24 = a9;
  v29 = *&a9->var0;
  *&v30 = 0;
  v38 = *&a6->var0;
  v39 = 1;
  *&v26 = a5;
  *(&v26 + 1) = a7;
  MTLCalculateSourceBufferSizeAndAlignment(a3, &v29, &v38, a5, a7, &v41, &v40);
  if (a6->var2)
  {
    for (i = 0; i < a6->var2; ++i)
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v32 = 0u;
      memset(v33, 0, sizeof(v33));
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      v15 = [a10 stagingBufferSize:v41 offset:{a11, v24, v25, v26, v27}];
      v16 = v41 + v15;
      v17 = v41 + v15 + v40;
      if (self->_currentStagingBufferRemainingBytes >= v17)
      {
        currentStagingBuffer = self->_currentStagingBuffer;
        if (v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        currentStagingBuffer = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v16 + v40];
        if (!currentStagingBuffer)
        {
          v19 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v17];
          currentStagingBuffer = v19;
          if (!v19 || [-[MTLIOScratchBuffer buffer](v19 "buffer")] < v17)
          {

            commandList = self->commandList;
            os_unfair_lock_lock(&commandList->var5);
            commandList->var6 = 1;
            os_unfair_lock_unlock(&commandList->var5);
            return;
          }

          MTLResourceListAddResource(self->_resourceList, currentStagingBuffer);
        }

        self->_currentStagingBufferRemainingBytes = [-[MTLIOScratchBuffer buffer](currentStagingBuffer "buffer")];
        self->_currentStagingBufferOffset = 0;
        self->_currentStagingBuffer = currentStagingBuffer;
        if (v16)
        {
LABEL_11:
          v20 = (self->_currentStagingBufferOffset + v40 - 1) / v40 * v40;
          *&v31 = currentStagingBuffer;
          *(&v31 + 1) = v20;
          v21 = [-[MTLIOScratchBuffer buffer](currentStagingBuffer "buffer")];
          *&v32 = v21 + *(&v31 + 1);
          goto LABEL_12;
        }
      }

      *&v31 = 0;
LABEL_12:
      self->_currentStagingBufferOffset += v17;
      self->_currentStagingBufferRemainingBytes -= v17;
      LODWORD(v29) = 1;
      *(&v29 + 1) = a10;
      *&v30 = a11;
      *(&v30 + 1) = v41;
      *(&v32 + 1) = v16;
      *&v33[0] = a3;
      v22 = i + v24->var2;
      *(v33 + 8) = *&v24->var0;
      *(&v33[1] + 1) = v22;
      v36 = v26;
      v37 = v27;
      v34 = *&a6->var0;
      *&v35 = 1;
      *(&v35 + 1) = v25;
      MTLIOCommandList::addCommand(self->commandList, &v29);
      a11 += v27;
    }
  }

  if (self->_retained)
  {
    MTLResourceListAddResource(self->_resourceList, a3);
    MTLResourceListAddResource(self->_resourceList, a10);
  }

  if (MTLTraceEnabled())
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];
    [a10 globalTraceObjectID];
    kdebug_trace();
  }
}

- (void)copyStatusToBuffer:(id)a3 offset:(unint64_t)a4
{
  v7 = [a3 contents];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49___MTLIOCommandBuffer_copyStatusToBuffer_offset___block_invoke;
  v12[3] = &unk_1E6EEA6F0;
  v12[4] = self;
  v12[5] = v7 + a4;
  v8 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  v9 = _Block_copy(v12);
  v8->var0 = 0;
  completedDispatchListTail = self->_completedDispatchListTail;
  if (completedDispatchListTail)
  {
    v11 = 104;
  }

  else
  {
    completedDispatchListTail = &self->_completedDispatchListTail;
    v11 = 96;
  }

  completedDispatchListTail->var0 = v8;
  *(&self->super.super.isa + v11) = v8;
  v8->var1 = v9;
  if (self->_retained)
  {
    MTLResourceListAddResource(self->_resourceList, a3);
  }
}

- (void)commit
{
  [(_MTLIOCommandBuffer *)self clearScratchBufferLists];
  if (self->_enqueued)
  {
    p_cmdCvar = &self->_queue->cmdCvar;
  }

  else
  {
    p_cmdCvar = 0;
  }

  MTLIOCommandList::commit(self->commandList, p_cmdCvar);
  if (!self->_enqueued)
  {
    [(_MTLIOCommandQueue *)self->_queue commit:self];
  }

  if (MTLTraceEnabled())
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];

    kdebug_trace();
  }
}

- (void)enqueue
{
  if (!self->_enqueued)
  {
    self->_enqueued = 1;
    [(_MTLIOCommandQueue *)self->_queue commit:self];
  }
}

- (void)waitUntilCompleted
{
  pthread_mutex_lock(&self->_mutex);
  while (!self->_completedCallbacksDone)
  {
    pthread_cond_wait(&self->_cond, &self->_mutex);
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (void)didCompleteWithStatus:(int64_t)a3
{
  dispatch_semaphore_signal(self->_queue->_commandBufferSemaphore);
  self->_status = a3;
  completedDispatchList = self->_completedDispatchList;
  if (completedDispatchList)
  {
    do
    {
      var0 = completedDispatchList->var0;
      (*(completedDispatchList->var1 + 2))();
      _Block_release(completedDispatchList->var1);
      free(completedDispatchList);
      completedDispatchList = var0;
    }

    while (var0);
  }

  self->_completedDispatchList = 0;
  self->_completedDispatchListTail = 0;
  pthread_mutex_lock(&self->_mutex);
  self->_completedCallbacksDone = 1;
  pthread_cond_broadcast(&self->_cond);
  pthread_mutex_unlock(&self->_mutex);
  commandList = self->commandList;
  if (commandList)
  {
    MTLIOCommandList::~MTLIOCommandList(commandList);
    MEMORY[0x1865FF210]();
  }

  self->commandList = 0;
  resourceList = self->_resourceList;
  if (resourceList)
  {
    [(MTLResourceList *)resourceList releaseAllObjectsAndReset];
    MTLResourceListRelease(&self->_resourceList->super.isa);
    self->_resourceList = 0;
  }

  [(_MTLIOCommandQueue *)self->_queue kickAllocatorCleanupQueue];
  if (MTLTraceEnabled())
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];

    kdebug_trace();
  }
}

- (void)tryCancel
{
  commandList = self->commandList;
  os_unfair_lock_lock(&commandList->var5);
  commandList->var6 = 1;

  os_unfair_lock_unlock(&commandList->var5);
}

- (void)addBarrier
{
  v3[0] = 4;
  [(_MTLIOCommandBuffer *)self reuseActiveScratchBuffers:MTLIOCommandList::addCommand(self->commandList];
  if (MTLTraceEnabled())
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];

    kdebug_trace();
  }
}

- (void)pushDebugGroup:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLIOCommandBuffer *)isKindOfClass pushDebugGroup:v9, v10, v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    [(_MTLIOCommandBuffer *)self pushDebugGroup:a2, 0, v3, v4, v5, v6, v7, v16];
  }
}

- (void)dealloc
{
  commandList = self->commandList;
  if (commandList)
  {
    MTLIOCommandList::~MTLIOCommandList(commandList);
    MEMORY[0x1865FF210]();
  }

  pthread_cond_destroy(&self->_cond);
  pthread_mutex_destroy(&self->_mutex);

  [(_MTLIOCommandBuffer *)self clearScratchBufferLists];
  resourceList = self->_resourceList;
  if (resourceList)
  {
    [(MTLResourceList *)resourceList releaseAllObjectsAndReset];
    MTLResourceListRelease(&self->_resourceList->super.isa);
    self->_resourceList = 0;
  }

  v5.receiver = self;
  v5.super_class = _MTLIOCommandBuffer;
  [(_MTLObjectWithLabel *)&v5 dealloc];
}

- (id)getReusableScratchBuffer:(unint64_t)a3
{
  currentStagingBuffer = self->_currentStagingBuffer;
  if (currentStagingBuffer)
  {
    p_activeScratchBuffers = &self->_activeScratchBuffers;
    var0 = self->_activeScratchBuffers.var0;
    var1 = self->_activeScratchBuffers.var1;
    if (var0 >= var1)
    {
      v10 = var0 - p_activeScratchBuffers->__begin_;
      if ((v10 + 1) >> 61)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v11 = var1 - p_activeScratchBuffers->__begin_;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&self->_activeScratchBuffers, v13);
      }

      v14 = (8 * v10);
      *v14 = currentStagingBuffer;
      v9 = (8 * v10 + 8);
      v15 = (self->_activeScratchBuffers.var0 - p_activeScratchBuffers->__begin_);
      v16 = (v14 - v15);
      memcpy((v14 - v15), p_activeScratchBuffers->__begin_, v15);
      begin = p_activeScratchBuffers->__begin_;
      p_activeScratchBuffers->__begin_ = v16;
      self->_activeScratchBuffers.var0 = v9;
      self->_activeScratchBuffers.var1 = 0;
      if (begin)
      {
        operator delete(begin);
      }
    }

    else
    {
      *var0 = currentStagingBuffer;
      v9 = var0 + 1;
    }

    self->_activeScratchBuffers.var0 = v9;
  }

  p_poolScratchBuffers = &self->_poolScratchBuffers;
  v19 = self->_poolScratchBuffers.var0 - self->_poolScratchBuffers.__begin_;
  if (!v19)
  {
    return 0;
  }

  v20 = 0;
  v21 = v19 >> 3;
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  while ([-[__end_ buffer](p_poolScratchBuffers->__begin_[v20] "buffer")] < a3)
  {
    ++v20;
    if (!--v22)
    {
      return 0;
    }
  }

  v24 = p_poolScratchBuffers->var0;
  v25 = &p_poolScratchBuffers->__begin_[v20];
  v23 = *v25;
  v26 = v24 - p_poolScratchBuffers->__begin_ - v20 * 8;
  v27 = v26 - 8;
  if (v25 + 1 != v24)
  {
    memmove(v25, v25 + 1, v26 - 8);
  }

  p_poolScratchBuffers->var0 = (v25 + v27);
  return v23;
}

- (void)reuseActiveScratchBuffers
{
  v2 = self;
  self->_currentStagingBufferRemainingBytes = [-[MTLIOScratchBuffer buffer](self->_currentStagingBuffer "buffer")];
  v2->_currentStagingBufferOffset = 0;
  p_poolScratchBuffers = &v2->_poolScratchBuffers;
  var0 = v2->_poolScratchBuffers.var0;
  v2 = (v2 + 240);
  std::vector<objc_object  {objcproto18MTLIOScratchBuffer}*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<objc_object  {objcproto18MTLIOScratchBuffer}*>,objc_object  {objcproto18MTLIOScratchBuffer}*>(p_poolScratchBuffers, var0, v2->super.super.isa, v2->super._label, (v2->super._label - v2->super.super.isa) >> 3);
  v2->super._label = v2->super.super.isa;
}

- (id).cxx_construct
{
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 30) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 33) = 0;
  return self;
}

@end