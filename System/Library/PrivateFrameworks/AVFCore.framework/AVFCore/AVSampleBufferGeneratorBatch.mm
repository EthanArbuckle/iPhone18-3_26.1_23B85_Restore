@interface AVSampleBufferGeneratorBatch
- (AVSampleBufferGeneratorBatch)initWithGenerator:(id)generator;
- (BOOL)isOpenToRequests;
- (opaqueCMSampleBuffer)createAndAddSampleBufferForRequest:(id)request error:(id *)error;
- (void)cancel;
- (void)dealloc;
- (void)makeDataReadyWithCompletionHandler:(void *)completionHandler;
@end

@implementation AVSampleBufferGeneratorBatch

- (AVSampleBufferGeneratorBatch)initWithGenerator:(id)generator
{
  v17.receiver = self;
  v17.super_class = AVSampleBufferGeneratorBatch;
  v5 = [(AVSampleBufferGeneratorBatch *)&v17 init];
  v11 = v5;
  if (v5)
  {
    if (!generator)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "generator != nil"), 0}];
      objc_exception_throw(v16);
    }

    v5->_sampleGenerator = generator;
    _figSampleGenerator = [generator _figSampleGenerator];
    v13 = *(CMBaseObjectGetVTable() + 16);
    if (*v13 >= 2uLL)
    {
      v14 = v13[4];
      if (v14)
      {
        v14(_figSampleGenerator, *MEMORY[0x1E695E480], &v11->_sampleGeneratorBatch);
      }
    }

    v11->_openToRequests = 1;
    v11->_completionHandler = 0;
    v11->_stateMutex = FigSimpleMutexCreate();
  }

  return v11;
}

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  sampleGeneratorBatch = self->_sampleGeneratorBatch;
  if (sampleGeneratorBatch)
  {
    CFRelease(sampleGeneratorBatch);
  }

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = AVSampleBufferGeneratorBatch;
  [(AVSampleBufferGeneratorBatch *)&v4 dealloc];
}

- (BOOL)isOpenToRequests
{
  FigSimpleMutexLock();
  openToRequests = self->_openToRequests;
  FigSimpleMutexUnlock();
  return openToRequests;
}

- (opaqueCMSampleBuffer)createAndAddSampleBufferForRequest:(id)request error:(id *)error
{
  v17 = 0;
  sampleGeneratorBatch = self->_sampleGeneratorBatch;
  v7 = [objc_msgSend(request "startCursor")];
  preferredMinSampleCount = [request preferredMinSampleCount];
  maxSampleCount = [request maxSampleCount];
  direction = [request direction];
  v11 = [objc_msgSend(request "limitCursor")];
  _figSampleGeneratorReadPolicy = [request _figSampleGeneratorReadPolicy];
  _figSampleGeneratorReadFlags = [request _figSampleGeneratorReadFlags];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v15 = v14(sampleGeneratorBatch, v7, preferredMinSampleCount, maxSampleCount, direction, v11, _figSampleGeneratorReadPolicy, _figSampleGeneratorReadFlags, AVSampleBufferGenerator_remapSampleBufferTiming, request, 0, &v17);
    if (!error)
    {
      return v17;
    }
  }

  else
  {
    v15 = -12782;
    if (!error)
    {
      return v17;
    }
  }

  if (v15)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v15, 0);
  }

  return v17;
}

- (void)makeDataReadyWithCompletionHandler:(void *)completionHandler
{
  FigSimpleMutexLock();
  if (!self->_openToRequests)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"makeDataReadyWithCompletionHandler should only be called once.", v6, v7, v8, v9, v10, v16[0]), 0}];
    objc_exception_throw(v15);
  }

  self->_openToRequests = 0;
  FigSimpleMutexUnlock();
  self->_completionHandler = [completionHandler copy];
  if (sAVSampleBufferGeneratorBatch_SetupOnce != -1)
  {
    [AVSampleBufferGeneratorBatch makeDataReadyWithCompletionHandler:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVSampleBufferGeneratorBatch_makeDataReadyWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(sAVSampleBufferGeneratorBatch_DispatchQueue, block);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  sampleGeneratorBatch = self->_sampleGeneratorBatch;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v12)
  {
    v13 = -12782;
    goto LABEL_8;
  }

  v13 = v12(sampleGeneratorBatch);
  if (v13)
  {
LABEL_8:
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__AVSampleBufferGeneratorBatch_makeDataReadyWithCompletionHandler___block_invoke_3;
    v16[3] = &unk_1E7460C00;
    v16[4] = self;
    dispatch_sync(sAVSampleBufferGeneratorBatch_DispatchQueue, v16);
    v14 = AVLocalizedErrorWithUnderlyingOSStatus(v13, 0);
    (*(completionHandler + 2))(completionHandler, v14);
  }
}

dispatch_queue_t __67__AVSampleBufferGeneratorBatch_makeDataReadyWithCompletionHandler___block_invoke()
{
  sAVSampleBufferGeneratorBatch_PendingCompletion = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.avfoundation.avsamplebuffergenerator.batch-ready-notifications", v0);
  sAVSampleBufferGeneratorBatch_DispatchQueue = result;
  return result;
}

- (void)cancel
{
  FigSimpleMutexLock();
  self->_openToRequests = 0;
  FigSimpleMutexUnlock();
  sampleGeneratorBatch = self->_sampleGeneratorBatch;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {

    v4(sampleGeneratorBatch);
  }
}

uint64_t __AVSampleBufferGeneratorBatch_BatchCompleted_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _completionHandler];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v5(v3, v4 + 24);
  }

  v6 = sAVSampleBufferGeneratorBatch_PendingCompletion;
  v7 = *(a1 + 32);

  return [v6 removeObject:v7];
}

@end