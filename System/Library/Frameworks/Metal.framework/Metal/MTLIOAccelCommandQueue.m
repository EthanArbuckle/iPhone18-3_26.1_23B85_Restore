@interface MTLIOAccelCommandQueue
- (BOOL)_setGPUPriority:(unint64_t)a3 backgroundPriority:(unint64_t)a4;
- (BOOL)setBackgroundGPUPriority:(unint64_t)a3;
- (BOOL)setBackgroundGPUPriority:(unint64_t)a3 offset:(unsigned __int16)a4;
- (BOOL)setGPUPriority:(unint64_t)a3;
- (MTLIOAccelCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4;
- (void)dealloc;
- (void)setCompletionQueue:(id)a3;
- (void)setLabel:(id)a3;
- (void)submitCommandBuffers:(const void *)a3 count:(unint64_t)a4;
@end

@implementation MTLIOAccelCommandQueue

- (MTLIOAccelCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4
{
  v11.receiver = self;
  v11.super_class = MTLIOAccelCommandQueue;
  v5 = [(_MTLCommandQueue *)&v11 initWithDevice:a3 descriptor:a4];
  if (v5)
  {
    v5->_device = a3;
    [a3 sharedRef];
    qosLevel_low = LODWORD(v5->super._qosLevel);
    v7 = IOAccelCommandQueueCreateWithQoS();
    v5->_commandQueue = v7;
    if (v7)
    {
      completionQueueDispatch = v5->super._completionQueueDispatch;
      IOAccelCommandQueueSetDispatchQueue();
      v5->_priority = 1;
      v5->_backgroundPriority = 3;
      commandQueue = v5->_commandQueue;
      v5->super._globalTraceObjectID = IOAccelCommandQueueGetGlobalTraceObjectID();
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)setLabel:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTLIOAccelCommandQueue;
  [(_MTLCommandQueue *)&v7 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->_device deviceRef];
    globalTraceObjectID = self->super._globalTraceObjectID;
    labelTraceID = self->super._labelTraceID;
    [a3 cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

- (void)dealloc
{
  commandQueue = self->_commandQueue;
  IOAccelCommandQueueRelease();

  v4.receiver = self;
  v4.super_class = MTLIOAccelCommandQueue;
  [(_MTLCommandQueue *)&v4 dealloc];
}

- (void)setCompletionQueue:(id)a3
{
  completionQueueDispatch = self->super._completionQueueDispatch;
  if (completionQueueDispatch)
  {
    dispatch_release(completionQueueDispatch);
  }

  self->super._completionQueueDispatch = a3;
  dispatch_retain(a3);
  commandQueue = self->_commandQueue;
  v7 = self->super._completionQueueDispatch;

  IOAccelCommandQueueSetDispatchQueue();
}

- (BOOL)_setGPUPriority:(unint64_t)a3 backgroundPriority:(unint64_t)a4
{
  commandQueue = self->_commandQueue;
  v8 = IOAccelCommandQueueSetPriorityAndBackground();
  if (!v8)
  {
    self->_priority = a3;
    self->_backgroundPriority = a4;
  }

  return v8 == 0;
}

- (BOOL)setGPUPriority:(unint64_t)a3
{
  validateGPUPriority(a3, 0, a3, v3, v4, v5, v6, v7);
  backgroundPriority = self->_backgroundPriority;

  return [(MTLIOAccelCommandQueue *)self _setGPUPriority:a3 backgroundPriority:backgroundPriority];
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)a3
{
  if (a3 >= 6)
  {
    MTLReportFailure(0, "validateGPUPriority", 121, @"priority (%d) is not a valid MTLGPUPriority", v3, v4, v5, v6, a3);
  }

  priority = self->_priority;

  return [(MTLIOAccelCommandQueue *)self _setGPUPriority:priority backgroundPriority:a3];
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)a3 offset:(unsigned __int16)a4
{
  if (a3 >= 6)
  {
    MTLReportFailure(0, "validateGPUPriority", 121, @"priority (%d) is not a valid MTLGPUPriority", v4, v5, v6, v7, a3);
  }

  priority = self->_priority;

  return [(MTLIOAccelCommandQueue *)self _setGPUPriority:priority backgroundPriority:a3];
}

- (void)submitCommandBuffers:(const void *)a3 count:(unint64_t)a4
{
  aBlock[5] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](self);
  v8 = (&v24 - ((v7 + 23) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, v7 + 8);
  v25 = v8;
  v8[1] = a4;
  if (a4)
  {
    v27 = MEMORY[0x1E69E9820];
    v26 = __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke;
    v9 = v25 + 3;
    v10 = a4;
    do
    {
      v11 = *a3;
      v12 = *(*a3 + 77);
      *(v9 - 1) = *(*(v12 + 32) + 48);
      *v9 = *(*(v12 + 64) + 48);
      aBlock[0] = v27;
      aBlock[1] = 3221225472;
      aBlock[2] = v26;
      aBlock[3] = &unk_1E6EEBAA0;
      aBlock[4] = v11;
      v13 = _Block_copy(aBlock);
      *(v9 + 1) = v13;
      v11[80] = v13;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke_2;
      v31[3] = &unk_1E6EEBAC8;
      v31[4] = v11;
      v31[5] = self;
      v14 = _Block_copy(v31);
      *(v9 + 3) = v14;
      v11[81] = v14;
      if ([v11 isProfilingEnabled])
      {
        [v11 kernelSubmitTime];
      }

      if (**MEMORY[0x1E69A8488])
      {
        [objc_msgSend(v11 "commandQueue")];
        [objc_msgSend(v11 "device")];
        [objc_msgSend(v11 "commandQueue")];
        [v11 globalTraceObjectID];
        IOAccelDeviceTraceEvent();
      }

      v9 += 6;
      ++a3;
      --v10;
    }

    while (v10);
  }

  commandQueue = self->_commandQueue;
  v16 = IOAccelCommandQueueSubmitCommandBuffers();
  if (v16)
  {
    if (v16 == 268435459)
    {
      v17 = 15;
    }

    else
    {
      v17 = 1;
    }

    if (v16 == -536870174)
    {
      v18 = 7;
    }

    else
    {
      v18 = v17;
    }

    if (a4)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = (v25 + 4);
      do
      {
        commandQueueDispatch = self->super._commandQueueDispatch;
        block[0] = v19;
        block[1] = 3221225472;
        block[2] = __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke_3;
        block[3] = &unk_1E6EEBAF0;
        v22 = *v20;
        v20 = (v20 + 24);
        v29 = v22;
        v30 = v18;
        dispatch_async(commandQueueDispatch, block);
        --a4;
      }

      while (a4);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (**MEMORY[0x1E69A8488])
  {
    [*(a1 + 32) globalTraceObjectID];
    IOAccelDeviceTraceEvent();
  }

  if (a4)
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithIOAccelError:a4];
    [*(a1 + 32) didScheduleWithStartTime:a2 endTime:a3 error:v9];
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 didScheduleWithStartTime:a2 endTime:a3 error:0];
  }
}

void __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (**MEMORY[0x1E69A8488])
  {
    [*(a1 + 32) globalTraceObjectID];
    IOAccelDeviceTraceEvent();
  }

  if (a4)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithIOAccelError:a4];
    [*(a1 + 40) commandBufferDidComplete:*(a1 + 32) startTime:a2 completionTime:a3 error:v10];
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v8 commandBufferDidComplete:v9 startTime:a2 completionTime:a3 error:0];
  }
}

void __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 32));
  v3 = *(a1 + 40);

  _Block_release(v3);
}

@end