@interface _MTLCommandQueue
- (BOOL)_submitAvailableCommandBuffers;
- (BOOL)getPrivateDataAndOffset:(id *)a3 privateDataOffset:(unint64_t *)a4;
- (BOOL)submitCommandBuffer:(id)a3;
- (_MTLCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4;
- (_MTLCommandQueue)initWithDevice:(id)a3 maxCommandBufferCount:(unint64_t)a4;
- (id)commandBufferWithDescriptor:(id)a3;
- (id)formattedDescription:(unint64_t)a3;
- (void)addPerfSampleHandler:(id)a3;
- (void)commandBufferDidComplete:(id)a3 startTime:(unint64_t)a4 completionTime:(unint64_t)a5 error:(id)a6;
- (void)completeCommandBuffers:(id *)a3 count:(unint64_t)a4;
- (void)dealloc;
- (void)enqueueCommandBuffer:(id)a3;
- (void)setLabel:(id)a3;
- (void)setSubmissionQueue:(id)a3;
@end

@implementation _MTLCommandQueue

- (BOOL)_submitAvailableCommandBuffers
{
  v23 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_pendingQueueLock);
  v3 = [(NSMutableArray *)self->_pendingQueue count];
  if (v3)
  {
    v4 = 0;
    while ([-[NSMutableArray objectAtIndex:](self->_pendingQueue objectAtIndex:{v4), "isCommitted"}])
    {
      if (v3 == ++v4)
      {
        pthread_mutex_unlock(&self->_pendingQueueLock);
        v4 = v3;
        goto LABEL_8;
      }
    }

    pthread_mutex_unlock(&self->_pendingQueueLock);
    if (!v4)
    {
      goto LABEL_30;
    }

LABEL_8:
    v20 = v3;
    v18 = self;
    v19 = v4;
    do
    {
      pthread_mutex_lock(&self->_pendingQueueLock);
      v5 = 0;
      while (1)
      {
        v6 = [(NSMutableArray *)self->_pendingQueue objectAtIndex:v5];
        if (*(v6 + 504) == 1)
        {
          break;
        }

        if (v4 == ++v5)
        {
          v7 = 0;
          v8 = v4;
          goto LABEL_14;
        }
      }

      v7 = *(v6 + 552);
      v8 = v5 + 1;
LABEL_14:
      pthread_mutex_lock(&self->_submittedQueueLock);
      v21 = [(NSMutableArray *)self->_submittedQueue count];
      if (v8 >= 0x81)
      {
        v9 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
      }

      else
      {
        v9 = v22;
      }

      [(NSMutableArray *)self->_pendingQueue getObjects:v9 range:0, v8];
      v10 = 0;
      do
      {
        v11 = *&v9[8 * v10++];
      }

      while (v8 != v10);
      [(NSMutableArray *)self->_submittedQueue replaceObjectsInRange:v21 withObjectsFromArray:0 range:self->_pendingQueue, 0, v8];
      [(NSMutableArray *)self->_pendingQueue removeObjectsInRange:0, v8];
      pthread_mutex_unlock(&self->_submittedQueueLock);
      pthread_mutex_unlock(&self->_pendingQueueLock);
      if (self->_executionEnabled)
      {
        [(_MTLCommandQueue *)self submitCommandBuffers:v9 count:v8];
      }

      else
      {
        [(_MTLCommandQueue *)self completeCommandBuffers:v9 count:v8];
      }

      v12 = 0;
      do
      {
      }

      while (v8 != v12);
      if (v9 != v22)
      {
        free(v9);
      }

      for (; v7; --v7)
      {
        dispatch_semaphore_wait(self->_presentScheduledSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 -= v8;
    }

    while (v4);
    v13 = v19;
    v3 = v20;
    v14 = v18;
  }

  else
  {
    pthread_mutex_unlock(&self->_pendingQueueLock);
LABEL_30:
    v14 = 0;
    v13 = 0;
  }

  v15 = v13 == v3;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)dealloc
{
  commandQueueEventSource = self->_commandQueueEventSource;
  if (commandQueueEventSource)
  {
    dispatch_source_cancel(commandQueueEventSource);
    dispatch_release(self->_commandQueueEventSource);
  }

  commandQueueDispatch = self->_commandQueueDispatch;
  if (commandQueueDispatch)
  {
    dispatch_release(commandQueueDispatch);
  }

  self->_commandQueueDispatch = 0;
  completionQueueDispatch = self->_completionQueueDispatch;
  if (completionQueueDispatch)
  {
    dispatch_release(completionQueueDispatch);
  }

  self->_completionQueueDispatch = 0;

  self->_pendingQueue = 0;
  self->_submittedQueue = 0;
  dispatch_release(self->_submittedGroup);
  dispatch_release(self->_commandBufferSemaphore);
  pthread_mutex_destroy(&self->_submittedQueueLock);
  pthread_mutex_destroy(&self->_pendingQueueLock);
  [(_MTLDevice *)self->_dev _decrementCommandQueueCount];
  [(_MTLDevice *)self->_dev _decrementAcquireCount];

  self->_dev = 0;
  perfSampleHandlerBlock = self->_perfSampleHandlerBlock;
  if (perfSampleHandlerBlock)
  {
    _Block_release(perfSampleHandlerBlock);
  }

  presentScheduledSemaphore = self->_presentScheduledSemaphore;
  if (presentScheduledSemaphore)
  {
    dispatch_release(presentScheduledSemaphore);
    self->_presentScheduledSemaphore = 0;
  }

  privateDataTable = self->_privateDataTable;
  if (privateDataTable)
  {

    self->_privateDataTable = 0;
  }

  v9.receiver = self;
  v9.super_class = _MTLCommandQueue;
  [(_MTLObjectWithLabel *)&v9 dealloc];
}

- (_MTLCommandQueue)initWithDevice:(id)a3 maxCommandBufferCount:(unint64_t)a4
{
  v7 = objc_alloc_init(MTLCommandQueueDescriptor);
  [(MTLCommandQueueDescriptor *)v7 setMaxCommandBufferCount:a4];

  return [(_MTLCommandQueue *)self initWithDevice:a3 descriptor:v7];
}

- (_MTLCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4
{
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  _MTLMessageContextBegin_(v39, "[_MTLCommandQueue initWithDevice:descriptor:]", 141, a3, 13, "Command Queue Creation Validation");
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [_MTLIOCommandQueue initWithDevice:a3 descriptor:v39];
    }
  }

  else
  {
    _MTLMessageContextPush_(v39, 4, @"device must not be nil.", v7, v8, v9, v10, v11, v35);
  }

  if (![a4 maxCommandBufferCount])
  {
    [_MTLIOCommandQueue initWithDevice:a4 descriptor:v39];
  }

  if ([a4 qosLevel] && objc_msgSend(a4, "qosLevel") != 1 && objc_msgSend(a4, "qosLevel") != 2 && objc_msgSend(a4, "qosLevel") != 3 && objc_msgSend(a4, "qosLevel") != 4)
  {
    [_MTLCommandQueue initWithDevice:a4 descriptor:v39];
  }

  if ([a3 _rateLimitQueueCreation] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_MTLCommandQueue initWithDevice:descriptor:];
  }

  v38.receiver = self;
  v38.super_class = _MTLCommandQueue;
  v12 = [(_MTLObjectWithLabel *)&v38 init];
  if (v12)
  {
    *(v12 + 54) = getpid();
    *(v12 + 4) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v12 + 5) = objc_alloc_init(MEMORY[0x1E695DF70]);
    pthread_mutex_init((v12 + 48), 0);
    pthread_mutex_init((v12 + 112), 0);
    *(v12 + 22) = dispatch_group_create();
    v12[345] = 1;
    v13 = dispatch_semaphore_create([a4 maxCommandBufferCount]);
    *(v12 + 26) = v13;
    if (!v13)
    {
      _MTLMessageContextPush_(v39, 4, @"cannot create command-buffer counting semaphore", v14, v15, v16, v17, v18, v35);
    }

    *(v12 + 38) = [a4 maxCommandBufferCount];
    *(v12 + 39) = [a4 qosLevel];
    *(v12 + 40) = [a4 commitQueue];
    v12[328] = [a4 commitSynchronously];
    *(v12 + 42) = [a4 completionQueue];
    v12[344] = [a4 disableCrossQueueHazardTracking];
    v12[347] = [a4 isOpenGLQueue];
    if ([a4 commitQueue])
    {
      v19 = [a4 commitQueue];
      *(v12 + 23) = v19;
      dispatch_retain(v19);
    }

    if ([a4 completionQueue])
    {
      v20 = [a4 completionQueue];
      *(v12 + 24) = v20;
      dispatch_retain(v20);
    }

    v12[376] = [a4 commitsWithQoS];
    v21 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    if (!*(v12 + 23))
    {
      *(v12 + 23) = dispatch_queue_create("com.Metal.CommandQueueDispatch", v21);
    }

    if (!*(v12 + 24))
    {
      *(v12 + 24) = dispatch_queue_create("com.Metal.CompletionQueueDispatch", v21);
    }

    dispatch_release(v21);
    v22 = dispatch_source_create(MEMORY[0x1E69E96B0], 0, 0, *(v12 + 23));
    *(v12 + 25) = v22;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3052000000;
    v37[3] = __Block_byref_object_copy__14;
    v37[4] = __Block_byref_object_dispose__14;
    v37[5] = v12;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __46___MTLCommandQueue_initWithDevice_descriptor___block_invoke;
    handler[3] = &unk_1E6EEB598;
    handler[4] = v37;
    dispatch_source_set_event_handler(v22, handler);
    dispatch_resume(*(v12 + 25));
    v23 = a3;
    *(v12 + 3) = v23;
    [v23 _incrementCommandQueueCount];
    [*(v12 + 3) _incrementAcquireCount];
    v12[256] = 0;
    *(v12 + 33) = 0;
    *(v12 + 34) = 0;
    *(v12 + 36) = 0;
    atomic_store(0, v12 + 70);
    if ([a4 logState])
    {
      v24 = [a4 logState];
    }

    else
    {
      v25 = *(v12 + 3);
      if (!v25[45])
      {
        v26 = 0;
        goto LABEL_33;
      }

      if (![v25 defaultLogState])
      {
        [*(v12 + 3) initDefaultLogState];
      }

      v24 = [*(v12 + 3) defaultLogState];
    }

    v26 = v24;
LABEL_33:
    *(v12 + 31) = v26;
    *(v12 + 37) = 0;
    v27 = dispatch_semaphore_create(0);
    *(v12 + 44) = v27;
    if (!v27)
    {
      _MTLMessageContextPush_(v39, 4, @"cannot create presentation semaphore", v28, v29, v30, v31, v32, v35);
    }

    if (initWithDevice_descriptor__onceToken != -1)
    {
      [_MTLCommandQueue initWithDevice:descriptor:];
    }

    v33 = [a4 commitSynchronously];
    v12[360] = (v33 | initWithDevice_descriptor__force_immediate_submission_on_commit_thread) & 1;
    *(v12 + 46) = objc_alloc_init(MTLPrivateDataTable);
    _Block_object_dispose(v37, 8);
  }

  _MTLMessageContextEnd(v39);
  return v12;
}

- (void)setSubmissionQueue:(id)a3
{
  commandQueueEventSource = self->_commandQueueEventSource;
  if (commandQueueEventSource)
  {
    dispatch_source_cancel(commandQueueEventSource);
    dispatch_release(self->_commandQueueEventSource);
  }

  commandQueueDispatch = self->_commandQueueDispatch;
  if (commandQueueDispatch)
  {
    dispatch_release(commandQueueDispatch);
  }

  dispatch_retain(a3);
  self->_commandQueueDispatch = a3;
  v7 = dispatch_source_create(MEMORY[0x1E69E96B0], 0, 0, a3);
  self->_commandQueueEventSource = v7;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = __Block_byref_object_copy__14;
  v9[4] = __Block_byref_object_dispose__14;
  v9[5] = self;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39___MTLCommandQueue_setSubmissionQueue___block_invoke;
  handler[3] = &unk_1E6EEB598;
  handler[4] = v9;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_commandQueueEventSource);
  _Block_object_dispose(v9, 8);
}

- (id)formattedDescription:(unint64_t)a3
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = [(_MTLObjectWithLabel *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = _MTLCommandQueue;
  v8 = [(_MTLCommandQueue *)&v15 description];
  v16[0] = v5;
  v16[1] = @"label =";
  v9 = @"<none>";
  if (v6)
  {
    v9 = v6;
  }

  v16[2] = v9;
  v16[3] = v5;
  v16[4] = @"device =";
  v10 = [-[_MTLCommandQueue device](self "device")];
  v11 = @"<null>";
  if (v10)
  {
    v11 = v10;
  }

  v16[5] = v11;
  v12 = [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 6), "componentsJoinedByString:", @" "];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)commandBufferWithDescriptor:(id)a3
{
  if ([a3 retainedReferences])
  {
    v5 = [(_MTLCommandQueue *)self commandBuffer];
  }

  else
  {
    v5 = [(_MTLCommandQueue *)self commandBufferWithUnretainedReferences];
  }

  v6 = v5;
  [v5 setErrorOptions:{objc_msgSend(a3, "errorOptions")}];
  return v6;
}

- (BOOL)getPrivateDataAndOffset:(id *)a3 privateDataOffset:(unint64_t *)a4
{
  privateDataTable = self->_privateDataTable;
  v7 = [(_MTLCommandQueue *)self device];

  return [(MTLPrivateDataTable *)privateDataTable getPrivateDataAndOffset:v7 privateData:a3 privateDataOffset:a4];
}

- (void)enqueueCommandBuffer:(id)a3
{
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(_MTLCommandQueue *)a3 enqueueCommandBuffer:v10, v11, v12, v13, v14, v15, v16, v26];
    }

    v17 = [(_MTLCommandQueue *)self device];
    v18 = [a3 device];
    if (v17 != v18)
    {
      [(_MTLCommandQueue *)v18 enqueueCommandBuffer:v19, v20, v21, v22, v23, v24, v25, v26];
    }

    pthread_mutex_lock(&self->_pendingQueueLock);
    [(NSMutableArray *)self->_pendingQueue addObject:a3];

    pthread_mutex_unlock(&self->_pendingQueueLock);
  }

  else
  {
    [(_MTLCommandQueue *)self enqueueCommandBuffer:a2, 0, v3, v4, v5, v6, v7, v26];
  }
}

- (void)completeCommandBuffers:(id *)a3 count:(unint64_t)a4
{
  v7 = mach_absolute_time();
  if (a4)
  {
    v15 = v7;
    do
    {
      v16 = *a3;
      if (*a3)
      {
        if (MTLFailureTypeGetEnabled(1uLL))
        {
          [_MTLCommandQueue completeCommandBuffers:v16 count:?];
        }

        v17 = [(_MTLCommandQueue *)self device];
        v18 = [v16 device];
        if (v17 != v18)
        {
          [(_MTLCommandQueue *)v18 completeCommandBuffers:v19 count:v20, v21, v22, v23, v24, v25];
        }
      }

      else
      {
        [(_MTLCommandQueue *)v7 completeCommandBuffers:v8 count:v9, v10, v11, v12, v13, v14];
      }

      commandQueueDispatch = self->_commandQueueDispatch;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49___MTLCommandQueue_completeCommandBuffers_count___block_invoke;
      block[3] = &unk_1E6EEB298;
      block[4] = v16;
      block[5] = v15;
      dispatch_async(commandQueueDispatch, block);
      v27 = self->_commandQueueDispatch;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __49___MTLCommandQueue_completeCommandBuffers_count___block_invoke_2;
      v28[3] = &unk_1E6EEAD68;
      v28[4] = self;
      v28[5] = v16;
      v28[6] = v15;
      dispatch_async(v27, v28);
      ++a3;
      --a4;
    }

    while (a4);
  }
}

- (BOOL)submitCommandBuffer:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  commandQueueDispatch = self->_commandQueueDispatch;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40___MTLCommandQueue_submitCommandBuffer___block_invoke;
  v6[3] = &unk_1E6EEB430;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(commandQueueDispatch, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)commandBufferDidComplete:(id)a3 startTime:(unint64_t)a4 completionTime:(unint64_t)a5 error:(id)a6
{
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(_MTLCommandQueue *)a3 commandBufferDidComplete:v13 startTime:v14 completionTime:v15 error:v16, v17, v18, v19, v30];
    }

    v20 = [(_MTLCommandQueue *)self device];
    v21 = [a3 device];
    if (v20 != v21)
    {
      [(_MTLCommandQueue *)v21 commandBufferDidComplete:v22 startTime:v23 completionTime:v24 error:v25, v26, v27, v28, v30];
    }
  }

  else
  {
    [(_MTLCommandQueue *)self commandBufferDidComplete:a2 startTime:0 completionTime:a4 error:a5, a6, v6, v7, v30];
  }

  [a3 didCompleteWithStartTime:a4 endTime:a5 error:a6];
  pthread_mutex_lock(&self->_submittedQueueLock);
  [(NSMutableArray *)self->_submittedQueue removeObject:a3];
  pthread_mutex_unlock(&self->_submittedQueueLock);
  submittedGroup = self->_submittedGroup;

  dispatch_group_leave(submittedGroup);
}

- (void)setLabel:(id)a3
{
  v3.receiver = self;
  v3.super_class = _MTLCommandQueue;
  [(_MTLObjectWithLabel *)&v3 setLabel:a3];
}

- (void)addPerfSampleHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_release(self->_perfSampleHandlerBlock);
  self->_perfSampleHandlerBlock = v4;
}

- (void)enqueueCommandBuffer:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF505618] & 1) == 0)
  {

    MTLReportFailure(1, "[_MTLCommandQueue enqueueCommandBuffer:]", 472, @"commandBuffer is not a MTLCommandBuffer.", v9, v10, v11, v12, a9);
  }
}

- (void)completeCommandBuffers:(void *)a1 count:.cold.1(void *a1)
{
  if (([a1 conformsToProtocol:&unk_1EF505618] & 1) == 0)
  {
    MTLReportFailure(1, "[_MTLCommandQueue completeCommandBuffers:count:]", 603, @"commandBuffer is not a MTLCommandBuffer.", v1, v2, v3, v4, vars0);
  }
}

- (void)commitCommandBuffer:(uint64_t)a3 wake:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF505618] & 1) == 0)
  {

    MTLReportFailure(1, "[_MTLCommandQueue commitCommandBuffer:wake:]", 635, @"commandBuffer is not a MTLCommandBuffer.", v9, v10, v11, v12, a9);
  }
}

- (void)commandBufferDidComplete:(uint64_t)a3 startTime:(uint64_t)a4 completionTime:(uint64_t)a5 error:(uint64_t)a6 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF505618] & 1) == 0)
  {

    MTLReportFailure(1, "[_MTLCommandQueue commandBufferDidComplete:startTime:completionTime:error:]", 688, @"commandBuffer is not a MTLCommandBuffer.", v9, v10, v11, v12, a9);
  }
}

@end