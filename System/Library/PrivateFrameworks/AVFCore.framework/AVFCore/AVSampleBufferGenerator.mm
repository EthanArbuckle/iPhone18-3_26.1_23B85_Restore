@interface AVSampleBufferGenerator
+ (void)notifyOfDataReadyForSampleBuffer:(CMSampleBufferRef)sbuf completionHandler:(void *)completionHandler;
- (AVSampleBufferGenerator)initWithAsset:(AVAsset *)asset timebase:(CMTimebaseRef)timebase;
- (AVSampleBufferGeneratorBatch)makeBatch;
- (CMSampleBufferRef)createSampleBufferForRequest:(AVSampleBufferRequest *)request addingToBatch:(AVSampleBufferGeneratorBatch *)batch error:(NSError *)outError;
- (CMSampleBufferRef)createSampleBufferForRequest:(AVSampleBufferRequest *)request error:(NSError *)outError;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation AVSampleBufferGenerator

- (AVSampleBufferGenerator)initWithAsset:(AVAsset *)asset timebase:(CMTimebaseRef)timebase
{
  v13.receiver = self;
  v13.super_class = AVSampleBufferGenerator;
  result = [(AVSampleBufferGenerator *)&v13 init];
  if (result)
  {
    v7 = result;
    v8 = [(AVAsset *)asset _figAsset];
    v9 = [(AVAsset *)asset _copyFormatReader];
    v10 = objc_alloc_init(AVSampleBufferGeneratorInternal);
    v7->_generator = v10;
    if (v10 && (CFRetain(v10), asset) && (v7->_generator ? (v11 = v8 == 0) : (v11 = 1), !v11 ? (v12 = v9 == 0) : (v12 = 1), !v12))
    {
      v7->_generator->weakReferenceToAsset = [(AVAsset *)asset _weakReference];
      if (timebase)
      {
        CFRetain(timebase);
      }

      v7->_generator->timebase = timebase;
      FigSampleGeneratorRemoteCreateForFormatReader();
      if (!v7->_generator->figSampleGenerator)
      {

        v7 = 0;
      }
    }

    else
    {

      v7 = 0;
      result = 0;
      if (!v9)
      {
        return result;
      }
    }

    CFRelease(v9);
    return v7;
  }

  return result;
}

- (void)dealloc
{
  generator = self->_generator;
  if (generator)
  {

    v4 = self->_generator;
    if (v4->timebase)
    {
      CFRelease(v4->timebase);
      v4 = self->_generator;
    }

    if (v4->figSampleGenerator)
    {
      CFRelease(v4->figSampleGenerator);
      v4 = self->_generator;
    }

    CFRelease(v4);
  }

  v5.receiver = self;
  v5.super_class = AVSampleBufferGenerator;
  [(AVSampleBufferGenerator *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVSampleBufferGenerator alloc];
  v5 = [(AVWeakReference *)self->_generator->weakReferenceToAsset referencedObject];
  timebase = self->_generator->timebase;

  return [(AVSampleBufferGenerator *)v4 initWithAsset:v5 timebase:timebase];
}

- (AVSampleBufferGeneratorBatch)makeBatch
{
  v2 = [[AVSampleBufferGeneratorBatch alloc] initWithGenerator:self];

  return v2;
}

- (CMSampleBufferRef)createSampleBufferForRequest:(AVSampleBufferRequest *)request error:(NSError *)outError
{
  if (!request)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", outError, v4, v5, v6, v7, "request != nil"), 0}];
    objc_exception_throw(v21);
  }

  v22 = 0;
  figSampleGenerator = self->_generator->figSampleGenerator;
  v11 = [(AVSampleCursor *)[(AVSampleBufferRequest *)request startCursor] _figSampleCursor];
  v12 = [(AVSampleBufferRequest *)request preferredMinSampleCount];
  v13 = [(AVSampleBufferRequest *)request maxSampleCount];
  v14 = [(AVSampleBufferRequest *)request direction];
  v15 = [(AVSampleCursor *)[(AVSampleBufferRequest *)request limitCursor] _figSampleCursor];
  v16 = [(AVSampleBufferRequest *)request _figSampleGeneratorReadPolicy];
  v17 = [(AVSampleBufferRequest *)request _figSampleGeneratorReadFlags];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v18)
  {
    v19 = v18(figSampleGenerator, v11, v12, v13, v14, v15, v16, v17, AVSampleBufferGenerator_remapSampleBufferTiming, request, 0, &v22);
    if (!outError)
    {
      return v22;
    }
  }

  else
  {
    v19 = -12782;
    if (!outError)
    {
      return v22;
    }
  }

  if (v19)
  {
    *outError = AVLocalizedErrorWithUnderlyingOSStatus(v19, 0);
  }

  return v22;
}

- (CMSampleBufferRef)createSampleBufferForRequest:(AVSampleBufferRequest *)request addingToBatch:(AVSampleBufferGeneratorBatch *)batch error:(NSError *)outError
{
  if (!request)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", batch, outError, v5, v6, v7, "request != nil");
    goto LABEL_13;
  }

  if (!batch)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v17 = @"batch cannot be nil";
LABEL_12:
    v16 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, v17, batch, outError, v5, v6, v7, v18);
LABEL_13:
    objc_exception_throw([v14 exceptionWithName:v15 reason:v16 userInfo:0]);
  }

  if ([(AVSampleBufferGeneratorBatch *)batch _generator]!= self)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v17 = @"batch does not belong to this generator";
    goto LABEL_12;
  }

  if (![(AVSampleBufferGeneratorBatch *)batch isOpenToRequests])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v17 = @"createSampleBufferForRequest must only be called before makeDataReadyWithCompletionHandler.";
    goto LABEL_12;
  }

  return [(AVSampleBufferGeneratorBatch *)batch createAndAddSampleBufferForRequest:request error:outError];
}

+ (void)notifyOfDataReadyForSampleBuffer:(CMSampleBufferRef)sbuf completionHandler:(void *)completionHandler
{
  statusOut = 0;
  if (!CMSampleBufferDataIsReady(sbuf))
  {
    if (CMSampleBufferHasDataFailed(sbuf, &statusOut))
    {
      v7 = AVLocalizedErrorWithUnderlyingOSStatus(statusOut, 0);
      (*(completionHandler + 2))(completionHandler, 0, v7);
      return;
    }

    if (sAVSampleBufferGenerator_SetupOnce != -1)
    {
      +[AVSampleBufferGenerator notifyOfDataReadyForSampleBuffer:completionHandler:];
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = __Block_byref_object_copy__23;
    v24 = __Block_byref_object_dispose__23;
    v25 = [completionHandler copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__AVSampleBufferGenerator_notifyOfDataReadyForSampleBuffer_completionHandler___block_invoke_24;
    block[3] = &unk_1E7462AC0;
    block[4] = &v20;
    block[5] = sbuf;
    dispatch_sync(sAVSampleBufferGenerator_DispatchQueue, block);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    if (CMSampleBufferDataIsReady(sbuf))
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = __Block_byref_object_copy__23;
      v17 = __Block_byref_object_dispose__23;
      v18 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __78__AVSampleBufferGenerator_notifyOfDataReadyForSampleBuffer_completionHandler___block_invoke_2;
      v12[3] = &unk_1E7462AC0;
      v12[4] = &v13;
      v12[5] = sbuf;
      dispatch_sync(sAVSampleBufferGenerator_DispatchQueue, v12);
      v8 = v14[5];
      if (v8)
      {
        (*(v8 + 16))(v8, 1, 0);
      }
    }

    else
    {
      if (!CMSampleBufferHasDataFailed(sbuf, &statusOut))
      {
LABEL_16:

        _Block_object_dispose(&v20, 8);
        return;
      }

      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = __Block_byref_object_copy__23;
      v17 = __Block_byref_object_dispose__23;
      v18 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __78__AVSampleBufferGenerator_notifyOfDataReadyForSampleBuffer_completionHandler___block_invoke_3;
      v11[3] = &unk_1E7462AC0;
      v11[4] = &v13;
      v11[5] = sbuf;
      dispatch_sync(sAVSampleBufferGenerator_DispatchQueue, v11);
      v9 = v14[5];
      if (v9)
      {
        v10 = AVLocalizedErrorWithUnderlyingOSStatus(statusOut, 0);
        (*(v9 + 16))(v9, 0, v10);
      }
    }

    _Block_object_dispose(&v13, 8);
    goto LABEL_16;
  }

  v6 = *(completionHandler + 2);

  v6(completionHandler, 1, 0);
}

dispatch_queue_t __78__AVSampleBufferGenerator_notifyOfDataReadyForSampleBuffer_completionHandler___block_invoke()
{
  sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.avfoundation.avsamplebuffergenerator.data-ready-notifications", v0);
  sAVSampleBufferGenerator_DispatchQueue = result;
  return result;
}

void __78__AVSampleBufferGenerator_notifyOfDataReadyForSampleBuffer_completionHandler___block_invoke_2(uint64_t a1)
{
  if (CFDictionaryGetValueIfPresent(sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler, *(a1 + 40), (*(*(a1 + 32) + 8) + 40)))
  {
    v2 = *(*(*(a1 + 32) + 8) + 40);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler;
    v4 = *(a1 + 40);

    CFDictionaryRemoveValue(v3, v4);
  }
}

void __78__AVSampleBufferGenerator_notifyOfDataReadyForSampleBuffer_completionHandler___block_invoke_3(uint64_t a1)
{
  if (CFDictionaryGetValueIfPresent(sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler, *(a1 + 40), (*(*(a1 + 32) + 8) + 40)))
  {
    v2 = *(*(*(a1 + 32) + 8) + 40);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler;
    v4 = *(a1 + 40);

    CFDictionaryRemoveValue(v3, v4);
  }
}

void __AVSampleBufferGenerator_dataBecameReady_block_invoke(uint64_t a1)
{
  if (CFDictionaryGetValueIfPresent(sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler, *(a1 + 40), (*(*(a1 + 32) + 8) + 40)))
  {
    v2 = *(*(*(a1 + 32) + 8) + 40);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler;
    v4 = *(a1 + 40);

    CFDictionaryRemoveValue(v3, v4);
  }
}

void __AVSampleBufferGenerator_dataFailed_block_invoke(uint64_t a1)
{
  if (CFDictionaryGetValueIfPresent(sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler, *(a1 + 40), (*(*(a1 + 32) + 8) + 40)))
  {
    v2 = *(*(*(a1 + 32) + 8) + 40);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = sAVSampleBufferGenerator_CMSampleBufferToCompletionHandler;
    v4 = *(a1 + 40);

    CFDictionaryRemoveValue(v3, v4);
  }
}

@end