@interface _MTLIOCommandBuffer
- (BOOL)isCommitted;
- (_MTLIOCommandBuffer)initWithQueue:(id)queue;
- (_MTLIOCommandBuffer)initWithQueue:(id)queue resourceList:(id)list retained:(BOOL)retained;
- (id).cxx_construct;
- (id)getReusableScratchBuffer:(unint64_t)buffer;
- (void)addBarrier;
- (void)addCompletedHandler:(id)handler;
- (void)commit;
- (void)copyStatusToBuffer:(id)buffer offset:(unint64_t)offset;
- (void)dealloc;
- (void)didCompleteWithStatus:(int64_t)status;
- (void)enqueue;
- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset;
- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image dstOrigin:(id *)origin handle:(id)self0 handleOffset:(unint64_t)self1;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1;
- (void)pushDebugGroup:(id)group;
- (void)reuseActiveScratchBuffers;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)tryCancel;
- (void)waitForEvent:(id)event value:(unint64_t)value;
- (void)waitUntilCompleted;
@end

@implementation _MTLIOCommandBuffer

- (_MTLIOCommandBuffer)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = _MTLIOCommandBuffer;
  v4 = [(_MTLObjectWithLabel *)&v7 init];
  if (v4)
  {
    queueCopy = queue;
    v4->_queue = queueCopy;
    dispatch_semaphore_wait(queueCopy[8], 0xFFFFFFFFFFFFFFFFLL);
    v4->_status = 0;
    v4->_currentStagingBuffer = 0;
    v4->_currentStagingBufferRemainingBytes = 0;
    v4->_currentStagingBufferOffset = 0;
    v4->commandList = 0;
  }

  return v4;
}

- (_MTLIOCommandBuffer)initWithQueue:(id)queue resourceList:(id)list retained:(BOOL)retained
{
  v11.receiver = self;
  v11.super_class = _MTLIOCommandBuffer;
  v8 = [(_MTLObjectWithLabel *)&v11 init];
  if (v8)
  {
    queueCopy = queue;
    v8->_queue = queueCopy;
    dispatch_semaphore_wait(queueCopy[8], 0xFFFFFFFFFFFFFFFFLL);
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
    [(_MTLIOCommandBuffer *)v8 createCommandListWithResourcePool:list];
    v8->_resourceList = MTLResourceListPoolCreateResourceList(list);
    v8->_retained = retained;
    v8->_enqueued = 0;
    v8->_activeScratchBuffers.var0 = v8->_activeScratchBuffers.__begin_;
    v8->_poolScratchBuffers.var0 = v8->_poolScratchBuffers.__begin_;
    if (MTLTraceEnabled())
    {
      [(_MTLIOCommandBuffer *)v8 globalTraceObjectID];
      [queue globalTraceObjectID];
      [objc_msgSend(queue "device")];
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

- (void)addCompletedHandler:(id)handler
{
  if (handler)
  {
    p_completedDispatchListTail = &self->_completedDispatchListTail;
    v6 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    v7 = _Block_copy(handler);
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

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  if (event)
  {
    v12 = 2;
    v13 = 0;
    *&v7 = MTLIOCommandList::addCommand(self->commandList, &v12).n128_u64[0];
    v9 = v8;
    eventSignalListener = [(_MTLIOCommandQueue *)self->_queue eventSignalListener];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42___MTLIOCommandBuffer_waitForEvent_value___block_invoke;
    v11[3] = &unk_1E6EEA6C8;
    v11[4] = self;
    v11[5] = v9;
    [event notifyListener:eventSignalListener atValue:value block:v11];
    if (self->_retained)
    {
      MTLResourceListAddResource(self->_resourceList, event);
    }

    if (MTLTraceEnabled())
    {
      [(_MTLIOCommandBuffer *)self globalTraceObjectID];
      kdebug_trace();
    }
  }
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  v6 = 3;
  eventCopy = event;
  valueCopy = value;
  MTLIOCommandList::addCommand(self->commandList, &v6);
  if (self->_retained)
  {
    MTLResourceListAddResource(self->_resourceList, event);
  }

  if (MTLTraceEnabled())
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];

    kdebug_trace();
  }
}

- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset
{
  v11 = [handle stagingBufferSize:size offset:{offset, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
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
    handleCopy = handle;
    offsetCopy = offset;
    v24 = v12;
    bytesCopy = bytes;
    sizeCopy = size;
    *&v26 = 0;
    MTLIOCommandList::addCommand(self->commandList, &v17);
    if (self->_retained)
    {
      MTLResourceListAddResource(self->_resourceList, handle);
    }

    if (MTLTraceEnabled())
    {
      [(_MTLIOCommandBuffer *)self globalTraceObjectID];
      [handle globalTraceObjectID];

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

- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset
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
  storageMode = [buffer storageMode];
  handleCopy = handle;
  v14 = [handle stagingBufferSize:size offset:handleOffset];
  v15 = storageMode == 2;
  if (storageMode == 2)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = 0;
  }

  v17 = sizeCopy + v14;
  if (self->_currentStagingBufferRemainingBytes >= sizeCopy + v14)
  {
    handleOffsetCopy2 = handleOffset;
    if (!v17)
    {
      *&v28 = 0;
      goto LABEL_16;
    }

    offsetCopy2 = offset;
    currentStagingBuffer = self->_currentStagingBuffer;
LABEL_9:
    currentStagingBufferOffset = self->_currentStagingBufferOffset;
    *&v28 = currentStagingBuffer;
    *(&v28 + 1) = currentStagingBufferOffset;
    *&v29 = [-[MTLIOScratchBuffer buffer](currentStagingBuffer buffer] + currentStagingBufferOffset;
    offset = v24;
LABEL_16:
    self->_currentStagingBufferOffset += v17;
    self->_currentStagingBufferRemainingBytes -= v17;
    LODWORD(v26) = 0;
    *(&v26 + 1) = handleCopy;
    *&v27 = handleOffsetCopy2;
    *(&v29 + 1) = v17;
    *(&v27 + 1) = size;
    *&v30 = [buffer contents] + offset;
    *(&v30 + 1) = buffer;
    *&v31 = offset;
    BYTE9(v31) = v15;
    MTLIOCommandList::addCommand(self->commandList, &v26);
    if (self->_retained)
    {
      MTLResourceListAddResource(self->_resourceList, buffer);
      MTLResourceListAddResource(self->_resourceList, handleCopy);
    }

    if (MTLTraceEnabled())
    {
      [(_MTLIOCommandBuffer *)self globalTraceObjectID];
      [handleCopy globalTraceObjectID];

      kdebug_trace();
    }

    return;
  }

  offsetCopy2 = offset;
  currentStagingBuffer = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v17];
  if (currentStagingBuffer)
  {
LABEL_6:
    handleOffsetCopy2 = handleOffset;
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

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image dstOrigin:(id *)origin handle:(id)self0 handleOffset:(unint64_t)self1
{
  v12 = *size;
  v11 = *origin;
  [(_MTLIOCommandBuffer *)self loadTexture:texture slice:slice level:level size:&v12 sourceBytesPerRow:row sourceBytesPerImage:image destinationOrigin:&v11 sourceHandle:handle sourceHandleOffset:offset];
}

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1
{
  imageCopy = image;
  sliceCopy = slice;
  v40 = 0;
  v41 = 0;
  originCopy = origin;
  v29 = *&origin->var0;
  *&v30 = 0;
  v38 = *&size->var0;
  v39 = 1;
  *&v26 = level;
  *(&v26 + 1) = row;
  MTLCalculateSourceBufferSizeAndAlignment(texture, &v29, &v38, level, row, &v41, &v40);
  if (size->var2)
  {
    for (i = 0; i < size->var2; ++i)
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
      v15 = [handle stagingBufferSize:v41 offset:{offset, originCopy, sliceCopy, v26, imageCopy}];
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
      *(&v29 + 1) = handle;
      *&v30 = offset;
      *(&v30 + 1) = v41;
      *(&v32 + 1) = v16;
      *&v33[0] = texture;
      v22 = i + originCopy->var2;
      *(v33 + 8) = *&originCopy->var0;
      *(&v33[1] + 1) = v22;
      v36 = v26;
      v37 = imageCopy;
      v34 = *&size->var0;
      *&v35 = 1;
      *(&v35 + 1) = sliceCopy;
      MTLIOCommandList::addCommand(self->commandList, &v29);
      offset += imageCopy;
    }
  }

  if (self->_retained)
  {
    MTLResourceListAddResource(self->_resourceList, texture);
    MTLResourceListAddResource(self->_resourceList, handle);
  }

  if (MTLTraceEnabled())
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];
    [handle globalTraceObjectID];
    kdebug_trace();
  }
}

- (void)copyStatusToBuffer:(id)buffer offset:(unint64_t)offset
{
  contents = [buffer contents];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49___MTLIOCommandBuffer_copyStatusToBuffer_offset___block_invoke;
  v12[3] = &unk_1E6EEA6F0;
  v12[4] = self;
  v12[5] = contents + offset;
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
    MTLResourceListAddResource(self->_resourceList, buffer);
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

- (void)didCompleteWithStatus:(int64_t)status
{
  dispatch_semaphore_signal(self->_queue->_commandBufferSemaphore);
  self->_status = status;
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

- (void)pushDebugGroup:(id)group
{
  if (group)
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

- (id)getReusableScratchBuffer:(unint64_t)buffer
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

  while ([-[__end_ buffer](p_poolScratchBuffers->__begin_[v20] "buffer")] < buffer)
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
  selfCopy = self;
  self->_currentStagingBufferRemainingBytes = [-[MTLIOScratchBuffer buffer](self->_currentStagingBuffer "buffer")];
  selfCopy->_currentStagingBufferOffset = 0;
  p_poolScratchBuffers = &selfCopy->_poolScratchBuffers;
  var0 = selfCopy->_poolScratchBuffers.var0;
  selfCopy = (selfCopy + 240);
  std::vector<objc_object  {objcproto18MTLIOScratchBuffer}*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<objc_object  {objcproto18MTLIOScratchBuffer}*>,objc_object  {objcproto18MTLIOScratchBuffer}*>(p_poolScratchBuffers, var0, selfCopy->super.super.isa, selfCopy->super._label, (selfCopy->super._label - selfCopy->super.super.isa) >> 3);
  selfCopy->super._label = selfCopy->super.super.isa;
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