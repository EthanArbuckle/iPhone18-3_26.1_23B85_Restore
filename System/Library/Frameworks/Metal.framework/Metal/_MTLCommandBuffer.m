@interface _MTLCommandBuffer
+ (void)initialize;
- (BOOL)commitAndWaitUntilSubmitted;
- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)a3;
- (NSArray)logs;
- (NSDictionary)profilingResults;
- (NSError)error;
- (NSMutableDictionary)userDictionary;
- (id)accelerationStructureCommandEncoder;
- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDescriptor:(id)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)progressTrackingBlitCommandEncoder;
- (id)progressTrackingComputeCommandEncoder;
- (id)progressTrackingRenderCommandEncoder;
- (unint64_t)getAndIncrementNumEncoders;
- (void)__waitUntilCompletedAsync:(id)a3;
- (void)__waitUntilScheduledAsync:(id)a3;
- (void)_addRetainedObject:(id)a3;
- (void)addCompletedHandler:(id)a3;
- (void)addScheduledHandler:(id)a3;
- (void)addSynchronizationNotification:(id)a3;
- (void)commit;
- (void)commitAndReset;
- (void)configWithCommandBufferDescriptor:(id)a3;
- (void)dealloc;
- (void)debugBufferContentsWithLength:(unint64_t *)a3;
- (void)didCompleteWithStartTime:(unint64_t)a3 endTime:(unint64_t)a4 error:(id)a5;
- (void)didScheduleWithStartTime:(unint64_t)a3 endTime:(unint64_t)a4 error:(id)a5;
- (void)enqueue;
- (void)executeSynchronizationNotifications:(int)a3;
- (void)executeSynchronizationNotifications:(int)a3 scope:(unint64_t)a4 resources:(const void *)a5 count:(unint64_t)a6;
- (void)initProgressTracking;
- (void)presentDrawable:(id)a3;
- (void)presentDrawable:(id)a3 afterMinimumDuration:(double)a4;
- (void)presentDrawable:(id)a3 atTime:(double)a4;
- (void)presentDrawable:(id)a3 options:(id)a4;
- (void)processEncoderInfos;
- (void)pushDebugGroup:(id)a3;
- (void)setLogs:(id)a3;
- (void)signalCommandBufferAvailable;
- (void)waitUntilCompleted;
- (void)waitUntilScheduled;
@end

@implementation _MTLCommandBuffer

- (void)enqueue
{
  if (!self->_status || [(_MTLCommandBuffer *)&self->_status enqueue:a2])
  {
    if (self->_profilingEnabled)
    {
      self->_enqueueTime = mach_absolute_time();
    }

    [(MTLCommandQueue *)self->_queue enqueueCommandBuffer:self];
    self->_status = 1;
  }
}

- (void)dealloc
{
  if (MEMORY[0x1EEE88930] && !self->_didComplete)
  {
    FPCommandBufferCompleted();
  }

  error = self->_error;
  if (error)
  {

    self->_error = 0;
  }

  pthread_cond_destroy(&self->_completedCond);
  pthread_cond_destroy(&self->_scheduledCond);
  pthread_mutex_lock(&self->_mutex);
  MTLDispatchListApply(self->_swiftConcurrencyScheduledWaiters);
  self->_swiftConcurrencyScheduledWaitersTail = 0;
  self->_swiftConcurrencyScheduledWaiters = 0;
  MTLDispatchListApply(self->_swiftConcurrencyCompletedWaiters);
  self->_swiftConcurrencyCompletedWaitersTail = 0;
  self->_swiftConcurrencyCompletedWaiters = 0;
  pthread_mutex_unlock(&self->_mutex);
  pthread_mutex_destroy(&self->_mutex);
  scheduledDispatchList = self->_scheduledDispatchList;
  if (scheduledDispatchList)
  {
    MTLDispatchListApply(scheduledDispatchList);
    self->_scheduledDispatchList = 0;
    self->_scheduledDispatchListTail = 0;
  }

  completedDispatchList = self->_completedDispatchList;
  if (completedDispatchList)
  {
    MTLDispatchListApply(completedDispatchList);
    self->_completedDispatchList = 0;
    self->_completedDispatchListTail = 0;
  }

  [(_MTLCommandBuffer *)self executeSynchronizationNotifications:3];
  if (!self->_status)
  {
    [(_MTLCommandBuffer *)self signalCommandBufferAvailable];
  }

  if (self->_progressBuffer)
  {
    v6 = *([(MTLCommandQueue *)self->_queue device]+ 320);
    objc_sync_enter(v6);
    [*(-[MTLCommandQueue device](self->_queue "device") + 320)];
    objc_sync_exit(v6);

    self->_progressBuffer = 0;
  }

  self->_encoderInfos = 0;
  if (self->_privateData)
  {
    [(MTLCommandQueue *)self->_queue releasePrivateData:&self->_privateData privateDataOffset:self->_privateDataOffset];
  }

  perfSampleHandlerBlock = self->_perfSampleHandlerBlock;
  if (perfSampleHandlerBlock)
  {
    _Block_release(perfSampleHandlerBlock);
  }

  self->_retainedObjects = 0;
  v8.receiver = self;
  v8.super_class = _MTLCommandBuffer;
  [(_MTLObjectWithLabel *)&v8 dealloc];
}

- (BOOL)commitAndWaitUntilSubmitted
{
  self->_wakeOnCommit = 0;
  [(_MTLCommandBuffer *)self commit];
  queue = self->_queue;

  return [(MTLCommandQueue *)queue submitCommandBuffer:self];
}

- (void)commit
{
  if (self->_status >= 2)
  {
    [(_MTLCommandBuffer *)self commit:a2];
  }

  if (self->_currentCommandEncoder)
  {
    [(_MTLCommandBuffer *)self commit:a2];
  }

  [(MTLCommandQueue *)self->_queue setPrivateData:self->_privateData privateDataOffset:self->_privateDataOffset logState:self->_logState];
  [(_MTLCommandBuffer *)self executeSynchronizationNotifications:2];
  if (!self->_status)
  {
    [(MTLCommandQueue *)self->_queue enqueueCommandBuffer:self];
    self->_status = 1;
  }

  if (self->_profilingEnabled)
  {
    self->_commitTime = mach_absolute_time();
  }

  if (MEMORY[0x1EEE88928])
  {
    FPCommandBufferCommitted();
  }

  queue = self->_queue;
  wakeOnCommit = self->_wakeOnCommit;

  [(MTLCommandQueue *)queue commitCommandBuffer:self wake:wakeOnCommit];
}

- (void)signalCommandBufferAvailable
{
  if (self->_needsCommandBufferSemaphoreSignal)
  {
    self->_needsCommandBufferSemaphoreSignal = 0;
    dispatch_semaphore_signal(*(self->_queue + 26));
  }
}

- (NSError)error
{
  v2 = self->_error;

  return v2;
}

- (void)waitUntilScheduled
{
  pthread_mutex_lock(&self->_mutex);
  while (!self->_scheduledCallbacksDone)
  {
    pthread_cond_wait(&self->_scheduledCond, &self->_mutex);
  }

  pthread_mutex_unlock(&self->_mutex);
}

+ (void)initialize
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v2) = info.numer;
    LODWORD(v3) = info.denom;
    *&time_scale = v2 / v3 * 0.000000001;
  }
}

- (NSMutableDictionary)userDictionary
{
  result = self->_userDictionary;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_userDictionary = result;
  }

  return result;
}

- (void)waitUntilCompleted
{
  pthread_mutex_lock(&self->_mutex);
  while (!self->_completedCallbacksDone)
  {
    pthread_cond_wait(&self->_completedCond, &self->_mutex);
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (void)initProgressTracking
{
  if (!self->_encoderInfos)
  {
    self->_encoderInfos = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (!self->_progressBuffer && self->_needsFrameworkAssistedErrorTracking)
  {
    [-[MTLCommandQueue device](self->_queue "device")];
    v3 = *([(MTLCommandQueue *)self->_queue device]+ 320);
    objc_sync_enter(v3);
    v4 = [*(-[MTLCommandQueue device](self->_queue "device") + 320)];
    self->_progressBuffer = v4;
    if (v4)
    {
      [*(-[MTLCommandQueue device](self->_queue "device") + 320)];
    }

    objc_sync_exit(v3);
    if (!self->_progressBuffer)
    {
      self->_progressBuffer = [-[MTLCommandQueue device](self->_queue "device")];
    }
  }
}

- (id)progressTrackingBlitCommandEncoder
{
  self->_creatingProgressEncoder = 1;
  result = [(_MTLCommandBuffer *)self blitCommandEncoder];
  self->_creatingProgressEncoder = 0;
  return result;
}

- (id)progressTrackingRenderCommandEncoder
{
  self->_creatingProgressEncoder = 1;
  v3 = objc_opt_new();
  v4 = [(_MTLCommandBuffer *)self renderCommandEncoderWithDescriptor:v3];

  self->_creatingProgressEncoder = 0;
  return v4;
}

- (id)progressTrackingComputeCommandEncoder
{
  self->_creatingProgressEncoder = 1;
  result = [(_MTLCommandBuffer *)self computeCommandEncoder];
  self->_creatingProgressEncoder = 0;
  return result;
}

- (void)processEncoderInfos
{
  if (self->_encoderInfos)
  {
    if (self->_needsFrameworkAssistedErrorTracking)
    {
      if (self->_progressOffset)
      {
        v3 = 0;
        do
        {
          v4 = [(NSMutableArray *)self->_encoderInfos objectAtIndexedSubscript:v3 >> 1];
          [v4 setErrorState:3];
          v5 = *([(MTLBuffer *)self->_progressBuffer contents]+ 4 * v3);
          v6 = [(MTLBuffer *)self->_progressBuffer contents];
          if (v5 == -1)
          {
            v7 = *(v6 + 4 * (v3 + 1));
            [v4 setErrorState:2];
            if (v7 == -1)
            {
              [v4 setErrorState:1];
            }
          }

          v3 += 2;
        }

        while (v3 < self->_progressOffset);
      }
    }

    else
    {

      [(_MTLCommandBuffer *)self getDriverEncoderInfoData:?];
    }
  }
}

- (id)formattedDescription:(unint64_t)a3
{
  v16[12] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = [(_MTLObjectWithLabel *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = _MTLCommandBuffer;
  v8 = [(_MTLCommandBuffer *)&v15 description];
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
  v10 = [-[_MTLCommandBuffer device](self "device")];
  v11 = @"<null>";
  if (!v10)
  {
    v10 = @"<null>";
  }

  v16[5] = v10;
  v16[6] = v5;
  v16[7] = @"commandQueue =";
  if (self->_queue)
  {
    v11 = [(MTLCommandQueue *)self->_queue formattedDescription:a3 + 4];
  }

  v16[8] = v11;
  v16[9] = v5;
  v16[10] = @"retainedReferences =";
  v16[11] = [MEMORY[0x1E696AD98] numberWithBool:self->_retainedReferences];
  v12 = [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 12), "componentsJoinedByString:", @" "];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)commitAndReset
{
  currentCommandEncoder = self->_currentCommandEncoder;
  self->_currentCommandEncoder = 0;
  scheduledDispatchList = self->_scheduledDispatchList;
  v21 = currentCommandEncoder;
  self->_scheduledDispatchList = 0;
  self->_scheduledDispatchListTail = 0;
  completedDispatchList = self->_completedDispatchList;
  self->_completedDispatchList = 0;
  v19 = completedDispatchList;
  self->_completedDispatchListTail = 0;
  swiftConcurrencyScheduledWaitersTail = self->_swiftConcurrencyScheduledWaitersTail;
  swiftConcurrencyScheduledWaiters = self->_swiftConcurrencyScheduledWaiters;
  self->_swiftConcurrencyScheduledWaiters = 0;
  self->_swiftConcurrencyScheduledWaitersTail = 0;
  swiftConcurrencyCompletedWaitersTail = self->_swiftConcurrencyCompletedWaitersTail;
  v15 = swiftConcurrencyCompletedWaitersTail;
  swiftConcurrencyCompletedWaiters = self->_swiftConcurrencyCompletedWaiters;
  self->_swiftConcurrencyCompletedWaiters = 0;
  self->_swiftConcurrencyCompletedWaitersTail = 0;
  [(_MTLCommandBuffer *)self commit];
  [(_MTLCommandBuffer *)self waitUntilCompleted];
  status = self->_status;
  self->_status = 0;
  self->_error = 0;
  self->_scheduledCallbacksDone = 0;
  self->_completedCallbacksDone = 0;
  v6 = mach_absolute_time();
  if (self->_profilingEnabled)
  {
    self->_creationTime = v6;
  }

  if (MEMORY[0x1EEE88930] && !self->_didComplete)
  {
    v6 = FPCommandBufferCompleted();
  }

  self->_didComplete = 0;
  if (MEMORY[0x1EEE88938])
  {
    v6 = FPCommandBufferCreated();
  }

  self->_currentCommandEncoder = v21;
  self->_scheduledDispatchList = scheduledDispatchList;
  self->_scheduledDispatchListTail = scheduledDispatchList;
  self->_completedDispatchList = v19;
  self->_completedDispatchListTail = v19;
  self->_swiftConcurrencyScheduledWaiters = swiftConcurrencyScheduledWaiters;
  self->_swiftConcurrencyScheduledWaitersTail = swiftConcurrencyScheduledWaitersTail;
  self->_swiftConcurrencyCompletedWaiters = swiftConcurrencyCompletedWaiters;
  self->_swiftConcurrencyCompletedWaitersTail = v15;
  if (status != 4)
  {
    [(_MTLCommandBuffer *)v6 commitAndReset:v7];
  }
}

- (void)addScheduledHandler:(id)a3
{
  if (self->_status >= 2)
  {
    [(_MTLCommandBuffer *)self addScheduledHandler:a2, a3, v3, v4, v5, v6, v7, v10];
  }

  MTLDispatchListAppendBlock(&self->_scheduledDispatchList, &self->_scheduledDispatchListTail, a3);
}

- (void)presentDrawable:(id)a3 options:(id)a4
{
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(_MTLCommandBuffer *)a3 presentDrawable:v11 options:v12, v13, v14, v15, v16, v17, v29];
    }

    v18 = objc_opt_respondsToSelector();
    if ((v18 & 1) == 0)
    {
      [(_MTLCommandBuffer *)v18 presentDrawable:v19 options:v20, v21, v22, v23, v24, v25, v29];
    }
  }

  else
  {
    [(_MTLCommandBuffer *)self presentDrawable:a2 options:0, a4, v4, v5, v6, v7, v29];
  }

  if (!a4)
  {
    [(_MTLCommandBuffer *)v18 presentDrawable:v19 options:v20, v21, v22, v23, v24, v25, v29];
  }

  v26 = [a4 copy];
  v27 = [v26 objectForKeyedSubscript:@"enableFIFO"];
  if (objc_opt_respondsToSelector())
  {
    v28 = [v27 BOOLValue];
  }

  else
  {
    v28 = 0;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __45___MTLCommandBuffer_presentDrawable_options___block_invoke;
  v31[3] = &unk_1E6EED3E0;
  v31[4] = a3;
  v31[5] = v26;
  v32 = v28;
  v31[6] = self;
  [(_MTLCommandBuffer *)self addScheduledHandler:v31];
  self->_hasPresent = 1;
  if ((v28 & 1) == 0)
  {
    ++self->_numPresentWaits;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __45___MTLCommandBuffer_presentDrawable_options___block_invoke_2;
    v30[3] = &unk_1E6EED408;
    v30[4] = self;
    [a3 addPresentScheduledHandler:v30];
  }
}

- (void)presentDrawable:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v5 = _MTLShouldRemapPresent();
  if (v5)
  {
    v23[0] = @"enableFIFO";
    v23[1] = @"presentationMode";
    v24[0] = MEMORY[0x1E695E118];
    v24[1] = &unk_1EF4CFD80;
    v23[2] = @"presentTimeInterval";
    v24[2] = &unk_1EF4CFDF8;
    -[_MTLCommandBuffer presentDrawable:options:](self, "presentDrawable:options:", a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3]);
  }

  else
  {
    if (a3)
    {
      if (MTLFailureTypeGetEnabled(1uLL))
      {
        [(_MTLCommandBuffer *)a3 presentDrawable:v13, v14, v15, v16, v17, v18, v19, v21[0]];
      }
    }

    else
    {
      [(_MTLCommandBuffer *)v5 presentDrawable:v6, v7, v8, v9, v10, v11, v12, v21[0]];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __37___MTLCommandBuffer_presentDrawable___block_invoke;
    v22[3] = &unk_1E6EEB9C0;
    v22[4] = a3;
    v22[5] = self;
    [(_MTLCommandBuffer *)self addScheduledHandler:v22];
    self->_hasPresent = 1;
    ++self->_numPresentWaits;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37___MTLCommandBuffer_presentDrawable___block_invoke_2;
    v21[3] = &unk_1E6EED408;
    v21[4] = self;
    [a3 addPresentScheduledHandler:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)presentDrawable:(id)a3 atTime:(double)a4
{
  v27[3] = *MEMORY[0x1E69E9840];
  v7 = _MTLShouldRemapPresent();
  if (v7)
  {
    v26[0] = @"enableFIFO";
    v26[1] = @"presentationMode";
    v27[0] = MEMORY[0x1E695E118];
    v27[1] = &unk_1EF4CFD98;
    v26[2] = @"presentTimeInterval";
    v27[2] = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    -[_MTLCommandBuffer presentDrawable:options:](self, "presentDrawable:options:", a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3]);
  }

  else
  {
    if (a3)
    {
      if (MTLFailureTypeGetEnabled(1uLL))
      {
        [(_MTLCommandBuffer *)a3 presentDrawable:v15 atTime:v16, v17, v18, v19, v20, v21, v23];
      }
    }

    else
    {
      [(_MTLCommandBuffer *)v7 presentDrawable:v8 atTime:v9, v10, v11, v12, v13, v14, v23];
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __44___MTLCommandBuffer_presentDrawable_atTime___block_invoke;
    v25[3] = &unk_1E6EED430;
    *&v25[6] = a4;
    v25[4] = a3;
    v25[5] = self;
    [(_MTLCommandBuffer *)self addScheduledHandler:v25];
    self->_hasPresent = 1;
    ++self->_numPresentWaits;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __44___MTLCommandBuffer_presentDrawable_atTime___block_invoke_2;
    v24[3] = &unk_1E6EED408;
    v24[4] = self;
    [a3 addPresentScheduledHandler:v24];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)presentDrawable:(id)a3 afterMinimumDuration:(double)a4
{
  v27[3] = *MEMORY[0x1E69E9840];
  v7 = _MTLShouldRemapPresent();
  if (v7)
  {
    v26[0] = @"enableFIFO";
    v26[1] = @"presentationMode";
    v27[0] = MEMORY[0x1E695E118];
    v27[1] = &unk_1EF4CFDB0;
    v26[2] = @"presentTimeInterval";
    v27[2] = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    -[_MTLCommandBuffer presentDrawable:options:](self, "presentDrawable:options:", a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3]);
  }

  else
  {
    if (a3)
    {
      if (MTLFailureTypeGetEnabled(1uLL))
      {
        [(_MTLCommandBuffer *)a3 presentDrawable:v15 afterMinimumDuration:v16, v17, v18, v19, v20, v21, v23];
      }
    }

    else
    {
      [(_MTLCommandBuffer *)v7 presentDrawable:v8 afterMinimumDuration:v9, v10, v11, v12, v13, v14, v23];
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58___MTLCommandBuffer_presentDrawable_afterMinimumDuration___block_invoke;
    v25[3] = &unk_1E6EED430;
    *&v25[6] = a4;
    v25[4] = a3;
    v25[5] = self;
    [(_MTLCommandBuffer *)self addScheduledHandler:v25];
    self->_hasPresent = 1;
    ++self->_numPresentWaits;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58___MTLCommandBuffer_presentDrawable_afterMinimumDuration___block_invoke_2;
    v24[3] = &unk_1E6EED408;
    v24[4] = self;
    [a3 addPresentScheduledHandler:v24];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)__waitUntilScheduledAsync:(id)a3
{
  pthread_mutex_lock(&self->_mutex);
  if (self->_scheduledCallbacksDone)
  {
    pthread_mutex_unlock(&self->_mutex);
    v5 = *(a3 + 2);

    v5(a3, self);
  }

  else
  {
    MTLDispatchListAppendBlock(&self->_swiftConcurrencyScheduledWaiters, &self->_swiftConcurrencyScheduledWaitersTail, a3);

    pthread_mutex_unlock(&self->_mutex);
  }
}

- (void)addCompletedHandler:(id)a3
{
  if (self->_status >= 2)
  {
    [(_MTLCommandBuffer *)self addCompletedHandler:a2, a3, v3, v4, v5, v6, v7, v10];
  }

  MTLDispatchListAppendBlock(&self->_completedDispatchList, &self->_completedDispatchListTail, a3);
}

- (void)__waitUntilCompletedAsync:(id)a3
{
  pthread_mutex_lock(&self->_mutex);
  if (self->_completedCallbacksDone)
  {
    pthread_mutex_unlock(&self->_mutex);
    v5 = *(a3 + 2);

    v5(a3, self);
  }

  else
  {
    MTLDispatchListAppendBlock(&self->_swiftConcurrencyCompletedWaiters, &self->_swiftConcurrencyCompletedWaitersTail, a3);

    pthread_mutex_unlock(&self->_mutex);
  }
}

- (void)didScheduleWithStartTime:(unint64_t)a3 endTime:(unint64_t)a4 error:(id)a5
{
  [(_MTLCommandBuffer *)self didSchedule:a3 error:a5];
  self->_kernelStartTime = a3;
  self->_kernelEndTime = a4;
  if (a5)
  {
    self->_error = a5;
    __dmb(0xBu);
    self->_status = 5;
    v9 = [(NSError *)self->_error localizedDescription];
    MTLReportFailure(4, "[_MTLCommandBuffer didScheduleWithStartTime:endTime:error:]", 1070, @"Execution of the command buffer was aborted due to an error during execution. %@", v10, v11, v12, v13, v9);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_MTLCommandBuffer didScheduleWithStartTime:? endTime:? error:?];
    }
  }

  else
  {
    self->_status = 3;
  }

  if (MEMORY[0x1EEE88940])
  {
    FPCommandBufferScheduled();
  }

  if (self->_scheduledDispatchList)
  {
    if (MTLTraceEnabled())
    {
      globalTraceObjectID = self->_globalTraceObjectID;
      kdebug_trace();
    }

    MTLDispatchListApply(self->_scheduledDispatchList);
    if (MTLTraceEnabled())
    {
      v15 = self->_globalTraceObjectID;
      kdebug_trace();
    }

    self->_scheduledDispatchList = 0;
    self->_scheduledDispatchListTail = 0;
  }

  pthread_mutex_lock(&self->_mutex);
  self->_scheduledCallbacksDone = 1;
  pthread_cond_broadcast(&self->_scheduledCond);
  MTLDispatchListApply(self->_swiftConcurrencyScheduledWaiters);
  self->_swiftConcurrencyScheduledWaitersTail = 0;
  self->_swiftConcurrencyScheduledWaiters = 0;
  pthread_mutex_unlock(&self->_mutex);
}

- (void)didCompleteWithStartTime:(unint64_t)a3 endTime:(unint64_t)a4 error:(id)a5
{
  if (self->_profilingEnabled)
  {
    self->_completionHandlerExecutionTime = mach_absolute_time();
  }

  self->_gpuStartTime = a3;
  self->_gpuEndTime = a4;
  if (!self->_error)
  {
    if (a5)
    {
      if (self->_errorOptions)
      {
        [(_MTLCommandBuffer *)self processEncoderInfos];
        v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a5, "userInfo")}];
        [v9 setObject:self->_encoderInfos forKeyedSubscript:@"MTLCommandBufferEncoderInfoErrorKey"];
        v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(a5 code:"domain") userInfo:{objc_msgSend(a5, "code"), v9}];
      }

      else
      {
        v10 = a5;
      }

      self->_error = v10;
      __dmb(0xBu);
      self->_status = 5;
      v11 = [(NSError *)self->_error localizedDescription];
      MTLReportFailure(4, "[_MTLCommandBuffer didCompleteWithStartTime:endTime:error:]", 1210, @"Execution of the command buffer was aborted due to an error during execution. %@", v12, v13, v14, v15, v11);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [_MTLCommandBuffer didScheduleWithStartTime:? endTime:? error:?];
      }
    }

    else
    {
      self->_status = 4;
    }
  }

  if (self->_StatEnabled)
  {
    [(_MTLCommandBuffer *)self runPerfCounterCallbackWithBlock:self->_perfSampleHandlerBlock];
  }

  logState = self->_logState;
  if (logState)
  {
    [(MTLLogState *)logState decodeLog];
  }

  if (self->_privateData)
  {
    [(MTLCommandQueue *)self->_queue releasePrivateData:&self->_privateData privateDataOffset:self->_privateDataOffset];
  }

  if (MEMORY[0x1EEE88930])
  {
    FPCommandBufferCompleted();
    self->_didComplete = 1;
  }

  if (self->_completedDispatchList)
  {
    if (MTLTraceEnabled())
    {
      globalTraceObjectID = self->_globalTraceObjectID;
      kdebug_trace();
    }

    MTLDispatchListApply(self->_completedDispatchList);
    if (MTLTraceEnabled())
    {
      v18 = self->_globalTraceObjectID;
      kdebug_trace();
    }

    self->_completedDispatchList = 0;
    self->_completedDispatchListTail = 0;
  }

  retainedObjects = self->_retainedObjects;
  if (retainedObjects)
  {

    self->_retainedObjects = 0;
  }

  [(_MTLCommandBuffer *)self signalCommandBufferAvailable];
  pthread_mutex_lock(&self->_mutex);
  self->_completedCallbacksDone = 1;
  pthread_cond_broadcast(&self->_completedCond);
  MTLDispatchListApply(self->_swiftConcurrencyCompletedWaiters);
  self->_swiftConcurrencyCompletedWaitersTail = 0;
  self->_swiftConcurrencyCompletedWaiters = 0;
  pthread_mutex_unlock(&self->_mutex);
}

- (void)_addRetainedObject:(id)a3
{
  retainedObjects = self->_retainedObjects;
  if (!retainedObjects)
  {
    retainedObjects = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_retainedObjects = retainedObjects;
  }

  [(NSMutableArray *)retainedObjects addObject:a3];
}

- (NSDictionary)profilingResults
{
  v7[10] = *MEMORY[0x1E69E9840];
  if (self->_profilingEnabled)
  {
    v6[0] = @"MTLCommandBufferCreationTime";
    v7[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_creationTime];
    v6[1] = @"MTLCommandBufferEnqueueTime";
    v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_enqueueTime];
    v6[2] = @"MTLCommandBufferCommitTime";
    v7[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commitTime];
    v6[3] = @"MTLCommandBufferSubmitToKernelTime";
    v7[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_submitToKernelTime];
    v6[4] = @"MTLCommandBufferKernelScheduledTime";
    v7[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kernelEndTime];
    v6[5] = @"MTLCommandBufferSubmitToHWTime";
    v7[5] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_submitToHardwareTime];
    v6[6] = @"MTLCommandBufferCompletionInterruptTime";
    v7[6] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_completionInterruptTime];
    v6[7] = @"MTLCommandBufferKernelCompleteTime";
    v7[7] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_gpuEndTime];
    v6[8] = @"MTLCommandBufferCompletionHandlerEnqueueTime";
    v7[8] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_completionHandlerEnqueueTime];
    v6[9] = @"MTLCommandBufferCompletionHandlerExecutionTime";
    v7[9] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_completionHandlerExecutionTime];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:10];
    self->_profilingResults = v3;
    result = v3;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)getAndIncrementNumEncoders
{
  numEncoders = self->_numEncoders;
  self->_numEncoders = numEncoders + 1;
  return numEncoders;
}

- (void)pushDebugGroup:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLCommandBuffer *)isKindOfClass pushDebugGroup:v9, v10, v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    [(_MTLCommandBuffer *)self pushDebugGroup:a2, 0, v3, v4, v5, v6, v7, v16];
  }
}

- (void)addSynchronizationNotification:(id)a3
{
  v5 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  v6 = _Block_copy(a3);
  v5->var0 = 0;
  v5->var1 = v6;
  p_syncDispatchListTail = &self->_syncDispatchListTail;
  syncDispatchListTail = self->_syncDispatchListTail;
  if (syncDispatchListTail)
  {
    syncDispatchListTail->var0 = v5;
  }

  else
  {
    *p_syncDispatchListTail = v5;
    p_syncDispatchListTail = &self->_syncDispatchList;
  }

  *p_syncDispatchListTail = v5;
}

- (void)executeSynchronizationNotifications:(int)a3
{
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = a3;
  if (self->_syncDispatchList)
  {
    _doMTLSyncDispatch(self, &self->_syncDispatchList, &self->_syncDispatchListTail, v3);
  }
}

- (void)executeSynchronizationNotifications:(int)a3 scope:(unint64_t)a4 resources:(const void *)a5 count:(unint64_t)a6
{
  v6[1] = a4;
  v6[0] = a3;
  v6[2] = a5;
  v6[3] = a6;
  if (self->_syncDispatchList)
  {
    _doMTLSyncDispatch(self, &self->_syncDispatchList, &self->_syncDispatchListTail, v6);
  }
}

- (id)computeCommandEncoderWithDescriptor:(id)a3
{
  v4 = [a3 dispatchType];

  return [(_MTLCommandBuffer *)self computeCommandEncoderWithDispatchType:v4];
}

- (void)debugBufferContentsWithLength:(unint64_t *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

- (id)accelerationStructureCommandEncoder
{
  if ([-[_MTLCommandBuffer device](self "device")])
  {
    v4 = [[_MTLSWRaytracingAccelerationStructureCommandEncoder alloc] initWithCommandBuffer:self];

    return v4;
  }

  else
  {
    [(_MTLCommandBuffer *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3
{
  if ([-[_MTLCommandBuffer device](self "device")])
  {
    v6 = [[_MTLSWRaytracingAccelerationStructureCommandEncoder alloc] initWithCommandBuffer:self descriptor:a3];

    return v6;
  }

  else
  {
    [(_MTLCommandBuffer *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)a3
{
  self->_wakeOnCommit = 0;
  [(_MTLCommandBuffer *)self commitWithDeadline:a3];
  queue = self->_queue;

  return [(MTLCommandQueue *)queue submitCommandBuffer:self];
}

- (NSArray)logs
{
  if (self->_logs)
  {
    return self->_logs;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)setLogs:(id)a3
{
  v5 = a3;

  self->_logs = a3;
}

- (void)configWithCommandBufferDescriptor:(id)a3
{
  if ([a3 logState])
  {
    logState = self->_logState;
    if (!logState)
    {
      [(MTLCommandQueue *)self->_queue getPrivateDataAndOffset:&self->_privateData privateDataOffset:&self->_privateDataOffset];
      logState = self->_logState;
    }

    v6 = [a3 logState];
    self->_logState = v6;
    self->_requiresBindingLogState = v6 != 0;
  }
}

- (void)initWithQueue:(uint64_t)a3 retainedReferences:(uint64_t)a4 synchronousDebugMode:(uint64_t)a5 .cold.2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MTLReportFailure(0, "[_MTLCommandBuffer initWithQueue:retainedReferences:synchronousDebugMode:]", 323, @"queue must not be nil.", a5, a6, a7, a8, v8);
}

- (void)presentDrawable:(uint64_t)a3 options:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF5055B8] & 1) == 0)
  {

    MTLReportFailure(1, "[_MTLCommandBuffer presentDrawable:options:]", 849, @"drawable is not a MTLDrawableSPI.", v9, v10, v11, v12, a9);
  }
}

- (void)presentDrawable:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF5037F0] & 1) == 0)
  {

    MTLReportFailure(1, "[_MTLCommandBuffer presentDrawable:]", 899, @"drawable is not a MTLDrawable.", v9, v10, v11, v12, a9);
  }
}

- (void)presentDrawable:(uint64_t)a3 atTime:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF5037F0] & 1) == 0)
  {

    MTLReportFailure(1, "[_MTLCommandBuffer presentDrawable:atTime:]", 932, @"drawable is not a MTLDrawable.", v9, v10, v11, v12, a9);
  }
}

- (void)presentDrawable:(uint64_t)a3 afterMinimumDuration:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF5037F0] & 1) == 0)
  {

    MTLReportFailure(1, "[_MTLCommandBuffer presentDrawable:afterMinimumDuration:]", 968, @"drawable is not a MTLDrawable.", v9, v10, v11, v12, a9);
  }
}

- (void)didScheduleWithStartTime:(id *)a1 endTime:error:.cold.1(id *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(*a1 "localizedDescription")];
  v3 = 136446210;
  v4 = v1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Execution of the command buffer was aborted due to an error during execution. %{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end