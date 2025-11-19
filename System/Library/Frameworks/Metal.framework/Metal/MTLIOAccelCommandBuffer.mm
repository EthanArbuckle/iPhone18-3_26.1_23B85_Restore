@interface MTLIOAccelCommandBuffer
- (MTLIOAccelCommandBuffer)initWithQueue:(id)a3 retainedReferences:(BOOL)a4 synchronousDebugMode:(BOOL)a5;
- (void)_debugBytes:(const char *)a3 length:(unint64_t)a4 output_type:(unsigned int)a5;
- (void)_encodePurgedResources;
- (void)_reserveKernelCommandBufferSpace:(unint64_t)a3;
- (void)addPurgedHeap:(id)a3;
- (void)addPurgedResource:(id)a3;
- (void)commit;
- (void)commitAndReset;
- (void)dealloc;
- (void)didCompleteWithStartTime:(unint64_t)a3 endTime:(unint64_t)a4 error:(id)a5;
- (void)encodeConditionalAbortEvent:(id)a3;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeSubmitSleepMS:(unsigned int)a3;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)getCurrentKernelCommandBufferPointer:(void *)a3 end:(void *)a4;
- (void)getCurrentKernelCommandBufferStart:(void *)a3 current:(void *)a4 end:(void *)a5;
- (void)kernelCommandCollectTimeStamp;
- (void)kprintfBytes:(const char *)a3 length:(unint64_t)a4;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setCurrentCommandEncoder:(id)a3;
- (void)setCurrentSegmentListPointer:(void *)a3;
- (void)setLabel:(id)a3;
- (void)setProtectionOptions:(unint64_t)a3;
- (void)validate;
@end

@implementation MTLIOAccelCommandBuffer

- (MTLIOAccelCommandBuffer)initWithQueue:(id)a3 retainedReferences:(BOOL)a4 synchronousDebugMode:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v14.receiver = self;
  v14.super_class = MTLIOAccelCommandBuffer;
  v8 = [_MTLCommandBuffer initWithQueue:sel_initWithQueue_retainedReferences_synchronousDebugMode_ retainedReferences:? synchronousDebugMode:?];
  if (v8)
  {
    v9 = *(a3 + 49);
    v8->_device = v9;
    MTLAtomicIncrement(v9 + 187);
    Storage = MTLIOAccelCommandBufferStoragePoolCreateStorage(*(v8->_device + 88), v6);
    v8->_storage = Storage;
    if (Storage)
    {
      if (v5)
      {
        v8->_commitAndResetSem = dispatch_semaphore_create(1);
      }

      [(MTLDevice *)v8->_device deviceRef];
      NextGlobalTraceID = IOAccelDeviceGetNextGlobalTraceID();
      v8->super._globalTraceObjectID = NextGlobalTraceID;
      v8->_storage->var23 = NextGlobalTraceID;
      if (**MEMORY[0x1E69A8488])
      {
        globalTraceObjectID = v8->super._globalTraceObjectID;
        IOAccelDeviceTraceEvent();
      }
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)setLabel:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTLIOAccelCommandBuffer;
  [(_MTLObjectWithLabel *)&v7 setLabel:?];
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
  MTLAtomicDecrement(self->_device + 187);
  storage = self->_storage;
  if (storage)
  {
    MTLIOAccelCommandBufferStorageDealloc(storage);
  }

  commitAndResetSem = self->_commitAndResetSem;
  if (commitAndResetSem)
  {
    dispatch_release(commitAndResetSem);
  }

  self->_device = 0;
  self->_purgedResources = 0;
  v5.receiver = self;
  v5.super_class = MTLIOAccelCommandBuffer;
  [(_MTLCommandBuffer *)&v5 dealloc];
}

- (void)getCurrentKernelCommandBufferStart:(void *)a3 current:(void *)a4 end:(void *)a5
{
  storage = self->_storage;
  if (a3)
  {
    *a3 = storage->var4;
  }

  if (a4)
  {
    *a4 = storage->var5;
  }

  if (a5)
  {
    *a5 = storage->var6;
  }
}

- (void)getCurrentKernelCommandBufferPointer:(void *)a3 end:(void *)a4
{
  storage = self->_storage;
  if (a3)
  {
    *a3 = storage->var5;
  }

  if (a4)
  {
    *a4 = storage->var6;
  }
}

- (void)didCompleteWithStartTime:(unint64_t)a3 endTime:(unint64_t)a4 error:(id)a5
{
  if (self->super._profilingEnabled)
  {
    self->super._submitToHardwareTime = *self->_submitToHardwareTimeStampPointer;
  }

  v6.receiver = self;
  v6.super_class = MTLIOAccelCommandBuffer;
  [(_MTLCommandBuffer *)&v6 didCompleteWithStartTime:a3 endTime:a4 error:a5];
  MTLIOAccelCommandBufferStorageDealloc(&self->_storage->var0);
  self->_storage = 0;
}

- (void)setCurrentSegmentListPointer:(void *)a3
{
  storage = self->_storage;
  storage->var11 = a3;
  storage->var12 = (a3 + 24);
}

- (void)validate
{
  if (self->super._status >= 2)
  {
    [(MTLIOAccelCommandBuffer *)self validate:a2];
  }

  if (self->super._currentCommandEncoder)
  {
    [(MTLIOAccelCommandBuffer *)self validate:a2];
  }
}

- (void)commit
{
  if ([(_MTLCommandBuffer *)self isProfilingEnabled])
  {
    [(MTLIOAccelCommandBuffer *)self kernelCommandCollectTimeStamp];
  }

  if (self->_purgedResources)
  {
    [(MTLIOAccelCommandBuffer *)self _encodePurgedResources];
  }

  MTLIOAccelCommandBufferStorageFinalizeShmemHeader(self->_storage, v3, v4, v5, v6, v7, v8, v9);
  if (**MEMORY[0x1E69A8488])
  {
    globalTraceObjectID = self->super._globalTraceObjectID;
    IOAccelDeviceTraceEvent();
  }

  v11.receiver = self;
  v11.super_class = MTLIOAccelCommandBuffer;
  [(_MTLCommandBuffer *)&v11 commit];
}

- (void)commitAndReset
{
  dispatch_semaphore_wait(self->_commitAndResetSem, 0xFFFFFFFFFFFFFFFFLL);
  if ([(_MTLCommandBuffer *)self isProfilingEnabled])
  {
    [(MTLIOAccelCommandBuffer *)self kernelCommandCollectTimeStamp];
  }

  if (self->_purgedResources)
  {
    [(MTLIOAccelCommandBuffer *)self _encodePurgedResources];
  }

  MTLIOAccelCommandBufferStorageFinalizeShmemHeader(self->_storage, v3, v4, v5, v6, v7, v8, v9);
  v13.receiver = self;
  v13.super_class = MTLIOAccelCommandBuffer;
  [(_MTLCommandBuffer *)&v13 commitAndReset];
  v10 = *(self->_device + 88);
  v12.receiver = self;
  v12.super_class = MTLIOAccelCommandBuffer;
  v11 = [(_MTLCommandBuffer *)&v12 retainedReferences];
  self->_storage = MTLIOAccelCommandBufferStoragePoolCreateStorage(v10, v11);
  dispatch_semaphore_signal(self->_commitAndResetSem);
}

- (void)kernelCommandCollectTimeStamp
{
  storage = self->_storage;
  var5 = storage->var5;
  if (&storage->var6[-var5] <= 0xF)
  {
    MTLIOAccelCommandBufferStorageGrowKernelCommandBuffer(storage, 16);
    storage = self->_storage;
    var5 = storage->var5;
  }

  MTLIOAccelCommandBufferStorageBeginSegment(storage, var5, v2, v3, v4, v5, v6, v7);
  *var5 = 0x1000000002;
  self->_submitToHardwareTimeStampPointer = (var5 + 8);
  self->_storage->var5 = (var5 + 16);
  v11 = self->_storage;

  MTLIOAccelCommandBufferStorageEndSegment(v11);
}

- (void)setCurrentCommandEncoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTLIOAccelCommandBuffer;
  [(_MTLCommandBuffer *)&v7 setCurrentCommandEncoder:?];
  if (**MEMORY[0x1E69A8488])
  {
    globalTraceObjectID = self->super._globalTraceObjectID;
    [a3 globalTraceObjectID];
    getpid();
    IOAccelDeviceTraceEvent();
  }

  storage = self->_storage;
  if (storage)
  {
    storage->var20 = a3;
  }
}

- (void)pushDebugGroup:(id)a3
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->_device deviceRef];
    [(_MTLCommandBuffer *)self globalTraceObjectID];
    [a3 cStringUsingEncoding:1];
    IOAccelDeviceTraceObjectLabel();
  }

  v5.receiver = self;
  v5.super_class = MTLIOAccelCommandBuffer;
  [(_MTLCommandBuffer *)&v5 pushDebugGroup:a3];
}

- (void)popDebugGroup
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->_device deviceRef];
    [(_MTLCommandBuffer *)self globalTraceObjectID];
    IOAccelDeviceTraceEvent();
  }

  v3.receiver = self;
  v3.super_class = MTLIOAccelCommandBuffer;
  [(_MTLCommandBuffer *)&v3 popDebugGroup];
}

- (void)_reserveKernelCommandBufferSpace:(unint64_t)a3
{
  storage = self->_storage;
  result = storage->var5;
  var6 = storage->var6;
  v8 = result;
  if (var6 - result < a3)
  {
    [(MTLIOAccelCommandBuffer *)self growKernelCommandBuffer:a3];
    [(MTLIOAccelCommandBuffer *)self getCurrentKernelCommandBufferPointer:&v8 end:&var6];
    result = v8;
    storage = self->_storage;
  }

  storage->var5 = result + a3;
  return result;
}

- (void)_debugBytes:(const char *)a3 length:(unint64_t)a4 output_type:(unsigned int)a5
{
  v9 = (a4 + 19) & 0xFFFFFFFC;
  v10 = [(MTLIOAccelCommandBuffer *)self _reserveKernelCommandBufferSpace:(a4 + 19) & 0xFFFFFFFFFFFFFFFCLL];
  v11 = v10;
  *v10 = 0;
  v10[1] = v9;
  v10[2] = a5;
  v10[3] = a4;
  memcpy(v10 + 4, a3, a4);
  MTLIOAccelCommandBufferStorageBeginKernelCommands(self->_storage, v11, v12, v13, v14, v15, v16, v17);
  storage = self->_storage;

  MTLIOAccelCommandBufferStorageEndKernelCommands(storage, v11 + v9);
}

- (void)kprintfBytes:(const char *)a3 length:(unint64_t)a4
{
  [(MTLIOAccelCommandBuffer *)self commitEncoder];

  [(MTLIOAccelCommandBuffer *)self _debugBytes:a3 length:a4 output_type:0];
}

- (void)encodeSubmitSleepMS:(unsigned int)a3
{
  [(MTLIOAccelCommandBuffer *)self commitEncoder];
  v5 = [(MTLIOAccelCommandBuffer *)self _reserveKernelCommandBufferSpace:16];
  v6 = v5;
  *v5 = 0x1000000003;
  v5[2] = a3;
  v5[3] = 0;
  MTLIOAccelCommandBufferStorageBeginKernelCommands(self->_storage, v5, v7, v8, v9, v10, v11, v12);
  storage = self->_storage;

  MTLIOAccelCommandBufferStorageEndKernelCommands(storage, v6 + 16);
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4
{
  if (self->super._currentCommandEncoder)
  {
    [(MTLIOAccelCommandBuffer *)self encodeSignalEvent:a2 value:a3, a4, v4, v5, v6, v7, v18];
  }

  [(MTLIOAccelCommandBuffer *)self commitEncoder];
  v11 = [(MTLIOAccelCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *(v11 + 2) = 0;
  *(v11 + 1) = 0;
  *v11 = [a3 encodeKernelSignalEventCommandArgs:v11 + 2 value:a4];
  v11[1] = 24;
  MTLIOAccelCommandBufferStorageBeginKernelCommands(self->_storage, v11, v12, v13, v14, v15, v16, v17);
  MTLIOAccelCommandBufferStorageEndKernelCommands(self->_storage, v11 + 24);
  if (self->super._retainedReferences)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:a3];
  }
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4
{
  if (self->super._currentCommandEncoder)
  {
    [(MTLIOAccelCommandBuffer *)self encodeWaitForEvent:a2 value:a3, a4, v4, v5, v6, v7, v18];
  }

  [(MTLIOAccelCommandBuffer *)self commitEncoder];
  v11 = [(MTLIOAccelCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *(v11 + 2) = 0;
  *(v11 + 1) = 0;
  *v11 = [a3 encodeKernelWaitEventCommandArgs:v11 + 2 value:a4];
  v11[1] = 24;
  MTLIOAccelCommandBufferStorageBeginKernelCommands(self->_storage, v11, v12, v13, v14, v15, v16, v17);
  MTLIOAccelCommandBufferStorageEndKernelCommands(self->_storage, v11 + 24);
  if (self->super._retainedReferences)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:a3];
  }
}

- (void)encodeConditionalAbortEvent:(id)a3
{
  if (self->super._currentCommandEncoder)
  {
    [(MTLIOAccelCommandBuffer *)self encodeConditionalAbortEvent:a2, a3, v3, v4, v5, v6, v7, v17];
  }

  [(MTLIOAccelCommandBuffer *)self commitEncoder];
  v10 = [(MTLIOAccelCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *(v10 + 2) = 0;
  *(v10 + 1) = 0;
  *v10 = [a3 encodeConditionalEventAbortCommandArgs:v10 + 2];
  v10[1] = 24;
  MTLIOAccelCommandBufferStorageBeginKernelCommands(self->_storage, v10, v11, v12, v13, v14, v15, v16);
  MTLIOAccelCommandBufferStorageEndKernelCommands(self->_storage, v10 + 24);
  if (self->super._retainedReferences)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:a3];
  }
}

- (void)setProtectionOptions:(unint64_t)a3
{
  if (self->super._currentCommandEncoder)
  {
    [(MTLIOAccelCommandBuffer *)self setProtectionOptions:a2, a3, v3, v4, v5, v6, v7, v19];
  }

  [(MTLIOAccelCommandBuffer *)self commitEncoder];
  self->_protectionOptions = a3;
  v10 = [(MTLIOAccelCommandBuffer *)self _reserveKernelCommandBufferSpace:16];
  v11 = v10;
  *v10 = 0x100000000ALL;
  v10[1] = a3;
  MTLIOAccelCommandBufferStorageBeginKernelCommands(self->_storage, v10, v12, v13, v14, v15, v16, v17);
  storage = self->_storage;

  MTLIOAccelCommandBufferStorageEndKernelCommands(storage, v11 + 16);
}

- (void)addPurgedResource:(id)a3
{
  purgedResources = self->_purgedResources;
  if (!purgedResources)
  {
    purgedResources = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_purgedResources = purgedResources;
  }

  [(NSMutableSet *)purgedResources addObject:a3];
}

- (void)addPurgedHeap:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    purgedResources = self->_purgedResources;
    if (!purgedResources)
    {
      purgedResources = objc_alloc_init(MEMORY[0x1E695DFA8]);
      self->_purgedResources = purgedResources;
    }

    v6 = *(a3 + 7);

    [(NSMutableSet *)purgedResources addObject:v6];
  }
}

- (void)_encodePurgedResources
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = 4 * [(NSMutableSet *)self->_purgedResources count]+ 12;
  v4 = [(MTLIOAccelCommandBuffer *)self _reserveKernelCommandBufferSpace:v3];
  *v4 = 9;
  v4[1] = v3;
  v19 = v3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  purgedResources = self->_purgedResources;
  v6 = [(NSMutableSet *)purgedResources countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v13 = v6;
    v14 = 0;
    v15 = *v21;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(purgedResources);
        }

        v14 = v17 + 1;
        v4[v17++ + 3] = *(*(*(&v20 + 1) + 8 * v16++) + 80);
      }

      while (v13 != v16);
      v13 = [(NSMutableSet *)purgedResources countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v4[2] = v14;
  MTLIOAccelCommandBufferStorageBeginKernelCommands(self->_storage, v4, v7, v8, v9, v10, v11, v12);
  MTLIOAccelCommandBufferStorageEndKernelCommands(self->_storage, v4 + v19);

  self->_purgedResources = 0;
  v18 = *MEMORY[0x1E69E9840];
}

@end