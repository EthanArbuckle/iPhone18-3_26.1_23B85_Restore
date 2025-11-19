@interface _MTLIOCommandQueue
- (_MTLIOCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4;
- (id)commandBuffer;
- (id)commandBufferWithUnretainedReferences;
- (void)commit:(id)a3;
- (void)dealloc;
- (void)didComplete:(id)a3 withStatus:(int64_t)a4;
- (void)enqueueBarrier;
- (void)kickAllocatorCleanupQueue;
- (void)launchIOWorkerThreads;
- (void)returnActiveScratchBuffersToPool;
@end

@implementation _MTLIOCommandQueue

- (_MTLIOCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  _MTLMessageContextBegin_(v23, "[_MTLIOCommandQueue initWithDevice:descriptor:]", 1335, a3, 33, "IO Command Queue Creation Validation");
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [_MTLIOCommandQueue initWithDevice:a3 descriptor:v23];
    }
  }

  else
  {
    _MTLMessageContextPush_(v23, 4, @"device must not be nil.", v7, v8, v9, v10, v11, v22.receiver);
  }

  if (![a4 maxCommandBufferCount])
  {
    [_MTLIOCommandQueue initWithDevice:a4 descriptor:v23];
  }

  v22.receiver = self;
  v22.super_class = _MTLIOCommandQueue;
  v12 = [(_MTLObjectWithLabel *)&v22 init];
  if (v12)
  {
    v12->_device = a3;
    v12->_gpuEvent = [a3 newSharedEvent];
    v12->_gpuQueue = [a3 newCommandQueueWithMaxCommandBufferCount:0x7FFFFFFFFFFFFF80];
    v12->_eventSignalListener = objc_opt_new();
    v13 = [a4 priority];
    if (v13 == 1)
    {
      v14 = 17;
    }

    else
    {
      v14 = 33;
    }

    if (v13 == 2)
    {
      v15 = QOS_CLASS_BACKGROUND;
    }

    else
    {
      v15 = v14;
    }

    v16 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], v15, 0);
    v12->_commitQueue = dispatch_queue_create("com.Metal.IOCommandQueueDispatch", v16);
    v17 = dispatch_queue_attr_make_with_qos_class(0, v15, 0);
    v12->_followonQueue = dispatch_queue_create("com.Metal.IOCommandQueueFollowon", v17);
    dispatch_release(v16);
    dispatch_release(v17);
    v12->_commandBufferSemaphore = dispatch_semaphore_create([a4 maxCommandBufferCount]);
    v12->_completeQueueMutex.__sig = 850045863;
    *v12->_completeQueueMutex.__opaque = 0u;
    *&v12->_completeQueueMutex.__opaque[16] = 0u;
    *&v12->_completeQueueMutex.__opaque[32] = 0u;
    *&v12->_completeQueueMutex.__opaque[48] = 0;
    v12->_completeQueue = objc_opt_new();
    if ([a4 scratchBufferAllocator])
    {
      v18 = [a4 scratchBufferAllocator];
    }

    else
    {
      v18 = [[_MTLIOScratchBufferAllocator alloc] initWithDevice:v12->_device];
    }

    v12->_scratchBufferAllocator = v18;
    v12->_usesPooledScratchBufferAllocator = [a4 scratchBufferAllocator] == 0;
    v12->cmdCvar.__sig = 1018212795;
    *v12->cmdCvar.__opaque = 0u;
    *&v12->cmdCvar.__opaque[16] = 0u;
    *&v12->cmdCvar.__opaque[32] = 0;
    v12->cmdMutex.__sig = 850045863;
    *v12->cmdMutex.__opaque = 0u;
    *&v12->cmdMutex.__opaque[16] = 0u;
    *&v12->cmdMutex.__opaque[32] = 0u;
    *&v12->cmdMutex.__opaque[48] = 0;
    v12->_type = [a4 type];
    if ([a4 maxCommandsInFlight])
    {
      v19 = [a4 maxCommandsInFlight];
      if (v19 >= [a3 maxIOCommandsInFlight])
      {
        v20 = [a3 maxIOCommandsInFlight];
      }

      else
      {
        v20 = [a4 maxCommandsInFlight];
      }
    }

    else
    {
      v20 = [a3 maxIOCommandsInFlight] >> 1;
    }

    v12->_maxWorkerThreads = v20;
    v12->_resourceListPool = [a3 akIOResourceListPool];
    v12->_priority = [a4 priority];
    v12->_commandList.activeq.tqh_first = 0;
    v12->_commandList.activeq.tqh_last = &v12->_commandList.activeq.tqh_first;
    v12->_commandList.cond = &v12->cmdCvar;
    v12->_commandList.queue = v12;
    v12->_commandList.lock = &v12->cmdMutex;
    v12->_commandList.exit = 0;
    [(_MTLIOCommandQueue *)v12 launchIOWorkerThreads];
  }

  _MTLMessageContextEnd(v23);
  return v12;
}

- (void)launchIOWorkerThreads
{
  if (self->_maxWorkerThreads)
  {
    v3 = MEMORY[0x1E69E9820];
    v4 = 1;
    do
    {
      commitQueue = self->_commitQueue;
      block[0] = v3;
      block[1] = 3221225472;
      block[2] = __43___MTLIOCommandQueue_launchIOWorkerThreads__block_invoke;
      block[3] = &unk_1E6EEA858;
      block[4] = self;
      dispatch_async(commitQueue, block);
    }

    while (self->_maxWorkerThreads > v4++);
  }
}

- (void)didComplete:(id)a3 withStatus:(int64_t)a4
{
  [a3 didCompleteWithStatus:a4];
  pthread_mutex_lock(&self->_completeQueueMutex);
  [(NSMutableArray *)self->_completeQueue removeObject:a3];

  pthread_mutex_unlock(&self->_completeQueueMutex);
}

- (id)commandBuffer
{
  v2 = [[_MTLIOCommandBuffer alloc] initWithQueue:self resourceList:self->_resourceListPool retained:1];

  return v2;
}

- (id)commandBufferWithUnretainedReferences
{
  v2 = [[_MTLIOCommandBuffer alloc] initWithQueue:self resourceList:self->_resourceListPool retained:0];

  return v2;
}

- (void)commit:(id)a3
{
  pthread_mutex_lock(&self->_completeQueueMutex);
  [(NSMutableArray *)self->_completeQueue addObject:a3];
  pthread_mutex_unlock(&self->_completeQueueMutex);
  v5 = malloc_type_malloc(0x20uLL, 0x10A00406D7A97B0uLL);
  *(v5 + 1) = a3;
  *v5 = 0;
  MTLIOCommandQueueCommandListEnqueueCommand(&self->_commandList, v5);
  if (self->_type == 1)
  {

    [(_MTLIOCommandQueue *)self enqueueBarrier];
  }
}

- (void)enqueueBarrier
{
  v3 = malloc_type_malloc(0x20uLL, 0x10A00406D7A97B0uLL);
  *(v3 + 1) = 0;
  *v3 = 1;
  MTLIOCommandQueueCommandListEnqueueCommand(&self->_commandList, v3);

  [(_MTLIOCommandQueue *)self returnActiveScratchBuffersToPool];
}

- (void)returnActiveScratchBuffersToPool
{
  if (self->_usesPooledScratchBufferAllocator)
  {
    [(MTLIOScratchBufferAllocator *)self->_scratchBufferAllocator returnActiveScratchBuffersToPool];
  }
}

- (void)kickAllocatorCleanupQueue
{
  if (self->_usesPooledScratchBufferAllocator)
  {
    [(MTLIOScratchBufferAllocator *)self->_scratchBufferAllocator kickCleanupQueue];
  }
}

- (void)dealloc
{
  MTLIOCommandQueueCommandListDestroy(&self->_commandList);
  commitQueue = self->_commitQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___MTLIOCommandQueue_dealloc__block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = self;
  dispatch_barrier_sync(commitQueue, block);
  dispatch_barrier_sync(self->_followonQueue, &__block_literal_global_19);

  dispatch_release(self->_commitQueue);
  dispatch_release(self->_followonQueue);
  dispatch_release(self->_commandBufferSemaphore);
  pthread_mutex_destroy(&self->_completeQueueMutex);

  v4.receiver = self;
  v4.super_class = _MTLIOCommandQueue;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (void)initWithDevice:(void *)a1 descriptor:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  if (([a1 conformsToProtocol:&unk_1EF502428] & 1) == 0)
  {
    _MTLMessageContextPush_(a2, 8, @"device is not a MTLDevice.", v3, v4, v5, v6, v7, v8);
  }
}

@end