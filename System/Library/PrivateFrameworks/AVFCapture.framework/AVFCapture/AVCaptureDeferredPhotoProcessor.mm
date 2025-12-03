@interface AVCaptureDeferredPhotoProcessor
+ (id)sharedPhotoProcessor;
+ (void)initialize;
- (AVCaptureDeferredPhotoProcessor)initWithApplicationIDOverride:(id)override;
- (BOOL)_getValueForBooleanProperty:(__CFString *)property;
- (BOOL)cancelProcessingForPhotoProxy:(id)proxy error:(id *)error;
- (NSArray)persistentlyStoredDeferredPhotoProxies;
- (id)_processingRequestForCaptureRequestIdentifier:(id)identifier;
- (id)prettyPrintDescriptionForContainer:(id)container;
- (int)_establishServerConnection;
- (int)_executeBlockOnProcessorQueueSync:(id)sync;
- (int)_handleProcessorQueueBlockError:(int)error;
- (void)_dispatchFailureCallbacks:(unsigned int)callbacks forProcessingRequest:(id)request error:(id)error;
- (void)_establishServerConnection;
- (void)_handleDidFinishProcessingPhotoProxyNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_handleNotification:(__CFString *)notification payload:(id)payload;
- (void)_handleServerConnectionDiedAndRequestsWillBeReenqueued;
- (void)_handleServerConnectionDiedSendingClientNotification:(BOOL)notification;
- (void)_handleWillAbortProcessingDueToPriorityInversion;
- (void)_handleWillBeginProcessingPhotoProxyNotificationWithPayload:(id)payload forRequest:(id)request;
- (void)_processPhotoProxy:(id)proxy queuePosition:(id)position delegate:(id)delegate delegateQueue:(id)queue;
- (void)_reenqueueRequestsAfterPriorityInversion;
- (void)_resetFigCaptureDeferredPhotoProcessor;
- (void)_setFigCaptureDeferredPhotoProcessor:(OpaqueFigCaptureDeferredPhotoProcessor *)processor;
- (void)cancelAllPrewarming;
- (void)dealloc;
- (void)deletePersistentStorageForPhotoProxy:(id)proxy;
- (void)prewarmWithSettings:(id)settings;
- (void)processPhotoProxy:(id)proxy queuePosition:(id)position delegate:(id)delegate;
- (void)processPhotoProxy:(id)proxy queuePosition:(id)position delegate:(id)delegate delegateQueue:(id)queue;
- (void)setPaused:(BOOL)paused;
@end

@implementation AVCaptureDeferredPhotoProcessor

- (void)_resetFigCaptureDeferredPhotoProcessor
{
  dispatch_assert_queue_V2(self->_processorQueue);

  [(AVCaptureDeferredPhotoProcessor *)self _setFigCaptureDeferredPhotoProcessor:0];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedPhotoProcessor
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementDeferredPhotoProcessor))
  {
    if (sharedPhotoProcessor_sInstanceOnceToken != -1)
    {
      +[AVCaptureDeferredPhotoProcessor sharedPhotoProcessor];
    }

    return sInstance;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
    return 0;
  }
}

AVCaptureDeferredPhotoProcessor *__55__AVCaptureDeferredPhotoProcessor_sharedPhotoProcessor__block_invoke()
{
  result = [[AVCaptureDeferredPhotoProcessor alloc] initWithApplicationIDOverride:0];
  sInstance = result;
  return result;
}

- (AVCaptureDeferredPhotoProcessor)initWithApplicationIDOverride:(id)override
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementDeferredPhotoProcessor))
  {
    v10.receiver = self;
    v10.super_class = AVCaptureDeferredPhotoProcessor;
    v4 = [(AVCaptureDeferredPhotoProcessor *)&v10 init];
    if (v4)
    {
      v4->_weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v4];
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4->_processorQueue = dispatch_queue_create("com.apple.avfoundation.deferredphotoprocessor.queue", v5);
      v4->_requests = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_requestsLock = FigSimpleMutexCreate();
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4->_processPhotoProxyQueue = dispatch_queue_create("com.apple.avfoundation.deferredphotoprocessor.processphoto.queue", v6);
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4->_reenqueuePhotoProxyQueue = dispatch_queue_create("com.apple.avfoundation.deferredphotoprocessor.reenqueueproxyphoto.queue", v7);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
    return 0;
  }

  return v4;
}

- (void)dealloc
{
  processorQueue = self->_processorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVCaptureDeferredPhotoProcessor_dealloc__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_sync(processorQueue, block);

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = AVCaptureDeferredPhotoProcessor;
  [(AVCaptureDeferredPhotoProcessor *)&v4 dealloc];
}

- (NSArray)persistentlyStoredDeferredPhotoProxies
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x3052000000;
  v46 = __Block_byref_object_copy__8;
  v47 = __Block_byref_object_dispose__8;
  v48 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __73__AVCaptureDeferredPhotoProcessor_persistentlyStoredDeferredPhotoProxies__block_invoke;
  v42[3] = &unk_1E7875930;
  v42[4] = self;
  v42[5] = &v43;
  if ([(AVCaptureDeferredPhotoProcessor *)self _executeBlockOnProcessorQueueSync:v42])
  {
    v29 = 0;
  }

  else
  {
    v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v44[5], "count")}];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v44[5];
    v2 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v2)
    {
      v24 = *v39;
      v23 = *MEMORY[0x1E698F9E8];
      v22 = *MEMORY[0x1E698F9F0];
      v21 = *MEMORY[0x1E698FA00];
      v28 = *MEMORY[0x1E698FA08];
      v27 = *MEMORY[0x1E698F9F8];
      v3 = *MEMORY[0x1E698FA10];
      do
      {
        v4 = 0;
        v25 = v2;
        do
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v38 + 1) + 8 * v4);
          v6 = [v5 objectForKeyedSubscript:v23];
          v7 = [v5 objectForKeyedSubscript:v22];
          v8 = [v5 objectForKeyedSubscript:v21];
          v26 = v4;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v33 objects:v32 count:16];
          if (v9)
          {
            v10 = *v34;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v34 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v33 + 1) + 8 * i);
                memset(&v31, 0, sizeof(v31));
                CMTimeMakeFromDictionary(&v31, [v12 objectForKeyedSubscript:v28]);
                v13 = [v12 objectForKeyedSubscript:v27];
                v14 = [v12 objectForKeyedSubscript:v3];
                v15 = [AVCaptureDeferredPhotoProxy alloc];
                unsignedIntValue = [v14 unsignedIntValue];
                v30 = v31;
                v17 = [(AVCaptureDeferredPhotoProxy *)v15 initWithApplicationIdentifier:v6 captureRequestIdentifier:v7 photoIdentifier:v13 timestamp:&v30 expectedPhotoProcessingFlags:unsignedIntValue];
                [(NSArray *)v29 addObject:v17];
              }

              v9 = [v8 countByEnumeratingWithState:&v33 objects:v32 count:16];
            }

            while (v9);
          }

          v4 = v26 + 1;
        }

        while (v26 + 1 != v25);
        v2 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
      }

      while (v2);
    }

    v44[5] = 0;
  }

  if (v29)
  {
    v18 = v29;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v43, 8);
  return v18;
}

uint64_t __73__AVCaptureDeferredPhotoProcessor_persistentlyStoredDeferredPhotoProxies__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v4 = v3(v2);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 40) = v4;
  return 0;
}

- (void)processPhotoProxy:(id)proxy queuePosition:(id)position delegate:(id)delegate
{
  processPhotoProxyQueue = self->_processPhotoProxyQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__AVCaptureDeferredPhotoProcessor_processPhotoProxy_queuePosition_delegate___block_invoke;
  v6[3] = &unk_1E7875958;
  v6[4] = self;
  v6[5] = proxy;
  v6[6] = position;
  v6[7] = delegate;
  dispatch_sync(processPhotoProxyQueue, v6);
}

- (void)processPhotoProxy:(id)proxy queuePosition:(id)position delegate:(id)delegate delegateQueue:(id)queue
{
  processPhotoProxyQueue = self->_processPhotoProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__AVCaptureDeferredPhotoProcessor_processPhotoProxy_queuePosition_delegate_delegateQueue___block_invoke;
  block[3] = &unk_1E7875980;
  block[4] = self;
  block[5] = proxy;
  block[6] = position;
  block[7] = delegate;
  block[8] = queue;
  dispatch_sync(processPhotoProxyQueue, block);
}

- (void)_processPhotoProxy:(id)proxy queuePosition:(id)position delegate:(id)delegate delegateQueue:(id)queue
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  if (proxy)
  {
    FigSimpleMutexLock();
    requests = self->_requests;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __91__AVCaptureDeferredPhotoProcessor__processPhotoProxy_queuePosition_delegate_delegateQueue___block_invoke;
    v23[3] = &unk_1E78759A8;
    v23[4] = proxy;
    v23[5] = &v24;
    [(NSMutableArray *)requests enumerateObjectsUsingBlock:v23];
    if (v25[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [[AVCaptureDeferredPhotoProcessingRequest alloc] initWithPhotoProxy:proxy delegate:delegate delegateQueue:queue qosClass:qos_class_self()];
    }

    else
    {
      v12 = [(NSMutableArray *)self->_requests objectAtIndexedSubscript:?];
      [(NSMutableArray *)self->_requests removeObjectAtIndex:v25[3]];
      [(AVCaptureDeferredPhotoProcessingRequest *)v12 addDelegate:delegate];
      qosClass = [(AVCaptureDeferredPhotoProcessingRequest *)v12 qosClass];
      if (qosClass < qos_class_self())
      {
        [(AVCaptureDeferredPhotoProcessingRequest *)v12 setQosClass:qos_class_self()];
      }
    }

    v15 = [position isEqualToString:@"Head"];
    v16 = self->_requests;
    if (v15)
    {
      [(NSMutableArray *)v16 insertObject:v12 atIndex:0];
    }

    else
    {
      [(NSMutableArray *)v16 addObject:v12];
    }

    requestsWillBeReenqueued = self->_requestsWillBeReenqueued;
    FigSimpleMutexUnlock();
    if (dword_1ED806860)
    {
      v22 = 0;
      v21 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!requestsWillBeReenqueued)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __91__AVCaptureDeferredPhotoProcessor__processPhotoProxy_queuePosition_delegate_delegateQueue___block_invoke_120;
      v20[3] = &unk_1E78759D0;
      v20[4] = self;
      v20[5] = proxy;
      v20[6] = position;
      v19 = [(AVCaptureDeferredPhotoProcessor *)self _executeBlockOnProcessorQueueSync:v20];
      if (v19)
      {
        if (v19 == -16823)
        {
          [(AVCaptureDeferredPhotoProcessor *)self _handleWillAbortProcessingDueToPriorityInversion];
        }

        else
        {
          [(AVCaptureDeferredPhotoProcessor *)self _dispatchFailureCallbacks:3 forProcessingRequest:v12 error:AVLocalizedErrorWithUnderlyingOSStatus()];
        }
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __91__AVCaptureDeferredPhotoProcessor__processPhotoProxy_queuePosition_delegate_delegateQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [a2 photoProxies];
  result = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if ([objc_msgSend(v12 "captureRequestIdentifier")])
        {
          if ([objc_msgSend(v12 "persistentStorageUUID")])
          {
            *(*(*(a1 + 40) + 8) + 24) = a3;
            *a4 = 1;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      result = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __91__AVCaptureDeferredPhotoProcessor__processPhotoProxy_queuePosition_delegate_delegateQueue___block_invoke_120(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) captureRequestIdentifier];
  v4 = [*(a1 + 40) persistentStorageUUID];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) photoLibraryThumbnailDimensions];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v2, v3, v4, v5, v6, 0);
}

- (BOOL)cancelProcessingForPhotoProxy:(id)proxy error:(id *)error
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__AVCaptureDeferredPhotoProcessor_cancelProcessingForPhotoProxy_error___block_invoke;
  v8[3] = &unk_1E78759F8;
  v8[4] = self;
  v8[5] = proxy;
  v5 = [(AVCaptureDeferredPhotoProcessor *)self _executeBlockOnProcessorQueueSync:v8];
  v6 = v5;
  if (error && v5)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  return v6 == 0;
}

uint64_t __71__AVCaptureDeferredPhotoProcessor_cancelProcessingForPhotoProxy_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) captureRequestIdentifier];
  v4 = [*(a1 + 40) persistentStorageUUID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v2, v3, v4);
}

- (void)deletePersistentStorageForPhotoProxy:(id)proxy
{
  if (dword_1ED806860)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__AVCaptureDeferredPhotoProcessor_deletePersistentStorageForPhotoProxy___block_invoke;
  v8[3] = &unk_1E78759F8;
  v8[4] = self;
  v8[5] = proxy;
  [(AVCaptureDeferredPhotoProcessor *)self _executeBlockOnProcessorQueueSync:v8, v6, v7];
}

uint64_t __72__AVCaptureDeferredPhotoProcessor_deletePersistentStorageForPhotoProxy___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) captureRequestIdentifier];
  v4 = [*(a1 + 40) persistentStorageUUID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v2, v3, v4);
}

- (id)prettyPrintDescriptionForContainer:(id)container
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__AVCaptureDeferredPhotoProcessor_prettyPrintDescriptionForContainer___block_invoke;
  v5[3] = &unk_1E7875A20;
  v5[5] = container;
  v5[6] = &v6;
  v5[4] = self;
  [(AVCaptureDeferredPhotoProcessor *)self _executeBlockOnProcessorQueueSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __70__AVCaptureDeferredPhotoProcessor_prettyPrintDescriptionForContainer___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v4)
  {
    v5 = v4(v3, v2);
  }

  else
  {
    v5 = 0;
  }

  *(*(a1[6] + 8) + 40) = v5;
  return 0;
}

uint64_t __55__AVCaptureDeferredPhotoProcessor_prewarmWithSettings___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 24);
  v3 = a1[6];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v2, v1, v3);
}

- (void)cancelAllPrewarming
{
  if (dword_1ED806860)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_1_10();
  }
}

uint64_t __54__AVCaptureDeferredPhotoProcessor_cancelAllPrewarming__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

- (void)setPaused:(BOOL)paused
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__AVCaptureDeferredPhotoProcessor_setPaused___block_invoke;
  v3[3] = &unk_1E7875A70;
  v3[4] = self;
  pausedCopy = paused;
  [(AVCaptureDeferredPhotoProcessor *)self _executeBlockOnProcessorQueueSync:v3];
}

uint64_t __45__AVCaptureDeferredPhotoProcessor_setPaused___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v3)
  {
    return 4294954514;
  }

  v4 = *MEMORY[0x1E698F9D8];

  return v3(v1, v4, v2);
}

- (BOOL)_getValueForBooleanProperty:(__CFString *)property
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVCaptureDeferredPhotoProcessor__getValueForBooleanProperty___block_invoke;
  v5[3] = &unk_1E7875A98;
  v5[5] = &v6;
  v5[6] = property;
  v5[4] = self;
  [(AVCaptureDeferredPhotoProcessor *)self _executeBlockOnProcessorQueueSync:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__AVCaptureDeferredPhotoProcessor__getValueForBooleanProperty___block_invoke(void *a1)
{
  v2 = *MEMORY[0x1E695E4C0];
  v7 = *MEMORY[0x1E695E4C0];
  v3 = *(a1[4] + 24);
  v4 = a1[6];
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v3, v4, *MEMORY[0x1E695E480], &v7);
    v2 = v7;
  }

  *(*(a1[5] + 8) + 24) = v2 == *MEMORY[0x1E695E4D0];
  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

- (int)_executeBlockOnProcessorQueueSync:(id)sync
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  processorQueue = self->_processorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVCaptureDeferredPhotoProcessor__executeBlockOnProcessorQueueSync___block_invoke;
  block[3] = &unk_1E7875AC0;
  block[5] = sync;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(processorQueue, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_setFigCaptureDeferredPhotoProcessor:(OpaqueFigCaptureDeferredPhotoProcessor *)processor
{
  dispatch_assert_queue_V2(self->_processorQueue);
  processor = self->_processor;
  if (processor != processor)
  {
    if (processor)
    {
      [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_weakReference, avcdpp_NotificationCallback, 0, self->_processor}];
      v6 = self->_processor;
      if (v6)
      {
        CFRelease(v6);
        self->_processor = 0;
      }
    }

    if (processor)
    {
      self->_processor = CFRetain(processor);
      v7 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      weakReference = self->_weakReference;

      [v7 addListenerWithWeakReference:weakReference callback:avcdpp_NotificationCallback name:0 object:processor flags:0];
    }
  }
}

- (int)_establishServerConnection
{
  dispatch_assert_queue_V2(self->_processorQueue);
  v3 = *MEMORY[0x1E695E4C0];
  v7 = *MEMORY[0x1E695E4C0];
  processor = self->_processor;
  if (processor)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(processor, *MEMORY[0x1E698F9E0], *MEMORY[0x1E695E480], &v7);
      v3 = v7;
    }

    if (v3 != *MEMORY[0x1E695E4D0])
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v3 == *MEMORY[0x1E695E4D0])
  {
LABEL_7:
    [(AVCaptureDeferredPhotoProcessor *)self _handleServerConnectionDiedSendingClientNotification:0, v7];
  }

  [(AVCaptureDeferredPhotoProcessor *)self _establishServerConnection];
  return v8;
}

- (int)_handleProcessorQueueBlockError:(int)error
{
  errorCopy = error;
  if ((error + 16159) > 7)
  {
    goto LABEL_8;
  }

  if (((1 << (error + 31)) & 0xF5) != 0)
  {
LABEL_3:
    [(AVCaptureDeferredPhotoProcessor *)self _resetFigCaptureDeferredPhotoProcessor];
    if (errorCopy == -16825)
    {
      return errorCopy;
    }

    goto LABEL_4;
  }

  if (error != -16156)
  {
LABEL_8:
    if (error != -12785 && error != -16822)
    {
      return errorCopy;
    }

    goto LABEL_3;
  }

LABEL_4:
  if (dword_1ED806860)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return -16825;
}

- (id)_processingRequestForCaptureRequestIdentifier:(id)identifier
{
  FigSimpleMutexLock();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  requests = self->_requests;
  v6 = [(NSMutableArray *)requests countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(requests);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(objc_msgSend(v10 "photoProxies")])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)requests countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t __63__AVCaptureDeferredPhotoProcessor__handleNotification_payload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _handleServerConnectionDiedAndRequestsWillBeReenqueued];
  }

  else
  {
    return [v2 _handleServerConnectionDiedSendingClientNotification:1];
  }
}

- (void)_handleWillBeginProcessingPhotoProxyNotificationWithPayload:(id)payload forRequest:(id)request
{
  FigSimpleMutexLock();
  [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 1}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  requestCopy = request;
  obj = [request delegatesStorage];
  v15 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v15)
  {
    v14 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = v6;
        v7 = *(*(&v27 + 1) + 8 * v6);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        photoProxies = [requestCopy photoProxies];
        v9 = [photoProxies countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(photoProxies);
              }

              v24[0] = 0;
              v24[1] = v24;
              v24[2] = 0x3052000000;
              v24[3] = __Block_byref_object_copy__8;
              v24[4] = __Block_byref_object_dispose__8;
              v25 = 0;
              v25 = *(*(&v20 + 1) + 8 * v12);
              v18[0] = MEMORY[0x1E69E9820];
              v18[1] = 3221225472;
              v18[2] = __106__AVCaptureDeferredPhotoProcessor__handleWillBeginProcessingPhotoProxyNotificationWithPayload_forRequest___block_invoke;
              v18[3] = &unk_1E7875AE8;
              v18[4] = requestCopy;
              v18[5] = self;
              v18[6] = v24;
              [v7 invokeDelegateCallbackWithBlock:v18];
              _Block_object_dispose(v24, 8);
              ++v12;
            }

            while (v10 != v12);
            v10 = [photoProxies countByEnumeratingWithState:&v20 objects:v19 count:16];
          }

          while (v10);
        }

        v6 = v16 + 1;
      }

      while (v16 + 1 != v15);
      v15 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v15);
  }

  FigSimpleMutexUnlock();
}

uint64_t __106__AVCaptureDeferredPhotoProcessor__handleWillBeginProcessingPhotoProxyNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (([objc_msgSend(*(*(*(a1 + 48) + 8) + 40) "deferredPhotoIdentifier")] & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 40) = -[AVCaptureDeferredPhotoProxy initWithDeferredPhotoIdentifier:]([AVCaptureDeferredPhotoProxy alloc], "initWithDeferredPhotoIdentifier:", [*(a1 + 32) originalDeferredPhotoIdentifier]);
    }

    v5 = *(a1 + 40);
    v6 = *(*(*(a1 + 48) + 8) + 40);

    return [a2 processor:v5 willBeginProcessingPhotoProxy:v6];
  }

  return result;
}

- (void)_handleDidFinishProcessingPhotoProxyNotificationWithPayload:(id)payload forRequest:(id)request
{
  v6 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698F910]), "intValue"}];
  if (v6)
  {
    v48 = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  else
  {
    v48 = 0;
  }

  cf = [payload objectForKeyedSubscript:*MEMORY[0x1E698F990]];
  v47 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698F998]), "unsignedIntegerValue"}];
  v46 = [payload objectForKeyedSubscript:*MEMORY[0x1E698F938]];
  v73 = **&MEMORY[0x1E6960C70];
  v7 = [payload objectForKeyedSubscript:*MEMORY[0x1E698F978]];
  if (v7)
  {
    CMTimeMakeFromDictionary(&v73, v7);
  }

  v45 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698F940]), "unsignedLongValue"}];
  v44 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698F948]), "intValue"}];
  v50 = [payload objectForKeyedSubscript:*MEMORY[0x1E698F9B0]];
  v43 = [payload objectForKeyedSubscript:*MEMORY[0x1E698F960]];
  v8 = [payload objectForKeyedSubscript:*MEMORY[0x1E698F8F8]];
  v9 = [payload objectForKeyedSubscript:*MEMORY[0x1E698F950]];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3052000000;
  v70 = __Block_byref_object_copy__8;
  v71 = __Block_byref_object_dispose__8;
  v72 = 0;
  FigSimpleMutexLock();
  requestCopy = request;
  payloadCopy = payload;
  if (v6)
  {
    v10 = [objc_msgSend(request "photoProxies")];
LABEL_18:
    v68[5] = v10;
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    photoProxies = [request photoProxies];
    v12 = [photoProxies countByEnumeratingWithState:&v63 objects:v62 count:16];
    if (v12)
    {
      v13 = *v64;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v64 != v13)
          {
            objc_enumerationMutation(photoProxies);
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          deferredPhotoIdentifier = [v15 deferredPhotoIdentifier];
          if ([deferredPhotoIdentifier isEqualToString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@/%@", v8, v9)}])
          {
            v10 = v15;
            request = requestCopy;
            goto LABEL_18;
          }
        }

        v12 = [photoProxies countByEnumeratingWithState:&v63 objects:v62 count:16];
        request = requestCopy;
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  photoProxies2 = [request photoProxies];
  [photoProxies2 removeObject:v68[5]];
  [request setFiredPhotoCallbacksCount:{objc_msgSend(request, "firedPhotoCallbacksCount") + 1}];
  requestCopy2 = request;
  expectedPhotoProcessingFlags = [v68[5] expectedPhotoProcessingFlags];
  firedPhotoCallbacksCount = [request firedPhotoCallbacksCount];
  if (firedPhotoCallbacksCount == [request expectedPhotoCount])
  {
    [(NSMutableArray *)self->_requests removeObject:request];
    [request setFiredCallbackFlags:{objc_msgSend(request, "firedCallbackFlags") | 2}];
  }

  if (([objc_msgSend(v68[5] "deferredPhotoIdentifier")] & 1) == 0)
  {

    v20 = -[AVCaptureDeferredPhotoProxy initWithDeferredPhotoIdentifier:]([AVCaptureDeferredPhotoProxy alloc], "initWithDeferredPhotoIdentifier:", [request originalDeferredPhotoIdentifier]);
    v68[5] = v20;
  }

  v21 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F900]];
  v41 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F908]];
  v22 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F970]];
  v40 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F968]];
  v23 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F930]];
  v39 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F928]];
  v24 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F988]];
  v38 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F980]];
  v25 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F9A8]];
  v37 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F9A0]];
  v26 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F920]];
  v36 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E698F918]];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  delegatesStorage = [requestCopy delegatesStorage];
  v28 = [delegatesStorage countByEnumeratingWithState:&v58 objects:v57 count:16];
  if (v28)
  {
    v34 = *v59;
    obj = delegatesStorage;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v59 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v58 + 1) + 8 * j);
        if (cf)
        {
          CFRetain(cf);
        }

        if (v50)
        {
          CFRetain(v50);
        }

        if (v21)
        {
          CFRetain(v21);
        }

        if (v22)
        {
          CFRetain(v22);
        }

        if (v23)
        {
          CFRetain(v23);
        }

        if (v24)
        {
          CFRetain(v24);
        }

        if (v25)
        {
          CFRetain(v25);
        }

        if (v26)
        {
          CFRetain(v26);
        }

        v31 = v68[5];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __106__AVCaptureDeferredPhotoProcessor__handleDidFinishProcessingPhotoProxyNotificationWithPayload_forRequest___block_invoke;
        v52[3] = &unk_1E7875B10;
        v53 = v73;
        v54 = v44;
        v55 = v45;
        v52[16] = v47;
        v52[17] = v50;
        v52[4] = v43;
        v52[5] = v46;
        v52[18] = v21;
        v52[19] = v22;
        v52[6] = v41;
        v52[7] = v40;
        v52[20] = v23;
        v52[21] = v24;
        v52[8] = v39;
        v52[9] = v38;
        v52[22] = v25;
        v52[23] = v26;
        v52[10] = v37;
        v52[11] = v36;
        v56 = expectedPhotoProcessingFlags;
        v52[14] = &v67;
        v52[15] = cf;
        v52[12] = v48;
        v52[13] = self;
        [v30 invokeDelegateCallbackWithBlock:v52];
      }

      v28 = [obj countByEnumeratingWithState:&v58 objects:v57 count:16];
    }

    while (v28);
  }

  FigSimpleMutexUnlock();

  _Block_object_dispose(&v67, 8);
}

void __106__AVCaptureDeferredPhotoProcessor__handleDidFinishProcessingPhotoProxyNotificationWithPayload_forRequest___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 120))
  {
    v4 = [AVCapturePhoto alloc];
    v5 = *(a1 + 120);
    v6 = *(a1 + 128);
    v7 = [AVCapturePhoto AVFileTypeFromFigCaptureStillImageSettingsFileType:*(a1 + 216) codec:*(a1 + 220) unresolvedSettings:0];
    v8 = *(a1 + 32);
    v9 = *(a1 + 136);
    v10 = *(a1 + 144);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 152);
    v14 = *(a1 + 160);
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v17 = *(a1 + 168);
    v18 = *(a1 + 176);
    v19 = *(a1 + 184);
    v20 = *(a1 + 80);
    v21 = *(a1 + 88);
    v22 = *(a1 + 224);
    v58 = *(a1 + 192);
    v59 = *(a1 + 208);
    LODWORD(v45) = v22;
    v23 = [(AVCapturePhoto *)v4 initWithTimestamp:&v58 photoSurface:v5 photoSurfaceSize:v6 processedFileType:v7 previewPhotoSurface:0 embeddedThumbnailSourceSurface:v9 photoLibraryThumbnails:v8 metadata:v10 depthDataSurface:v11 depthMetadataDictionary:v13 portraitEffectsMatteSurface:v12 portraitEffectsMatteMetadataDictionary:v14 hairSegmentationMatteSurface:v15 hairSegmentationMatteMetadataDictionary:v17 skinSegmentationMatteSurface:v16 skinSegmentationMatteMetadataDictionary:v18 teethSegmentationMatteSurface:v20 teethSegmentationMatteMetadataDictionary:v19 glassesSegmentationMatteSurface:v21 glassesSegmentationMatteMetadataDictionary:0 constantColorConfidenceMapSurface:0 constantColorMetadataDictionary:0 captureRequest:0 bracketSettings:1 sequenceCount:1 photoCount:v45 expectedPhotoProcessingFlags:@"AVCaptureDeviceTypeBuiltInDualCamera" sourceDeviceType:?];
  }

  else
  {
    v23 = 0;
  }

  v24 = [*(a1 + 96) userInfo];
  v25 = [v24 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (dword_1ED806860)
  {
    v26 = v25;
    v61 = 0;
    v60 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = v61;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v60))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v30 = [*(*(*(a1 + 112) + 8) + 40) deferredPhotoIdentifier];
      v31 = [v26 code];
      v32 = avcdpp_failureReasonStringForErrorStatus([v26 code]);
      v33 = [v26 code];
      v46 = 136316419;
      v47 = "[AVCaptureDeferredPhotoProcessor _handleDidFinishProcessingPhotoProxyNotificationWithPayload:forRequest:]_block_invoke";
      v34 = "";
      v48 = 2113;
      v49 = v30;
      v50 = 2048;
      if (v33 == -16821)
      {
        v34 = " (deferredmediad has exited due to a camera launch)";
      }

      v51 = v23;
      v52 = 1024;
      v53 = v31;
      v54 = 2114;
      v55 = v32;
      v56 = 2080;
      v57 = v34;
      LODWORD(v44) = 58;
      v43 = &v46;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 processor:*(a1 + 104) didFinishProcessingPhotoProxy:*(*(*(a1 + 112) + 8) + 40) finalPhoto:v23 error:{*(a1 + 96), v43, v44}];

  v35 = *(a1 + 120);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = *(a1 + 136);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(a1 + 144);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = *(a1 + 152);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *(a1 + 160);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(a1 + 168);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(a1 + 176);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(a1 + 184);
  if (v42)
  {
    CFRelease(v42);
  }
}

- (void)_handleWillAbortProcessingDueToPriorityInversion
{
  FigSimpleMutexLock();
  if (!self->_requestsWillBeReenqueued)
  {
    self->_requestsWillBeReenqueued = 1;
  }

  FigSimpleMutexUnlock();
}

- (void)_handleServerConnectionDiedSendingClientNotification:(BOOL)notification
{
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_processorQueue);
  FigSimpleMutexLock();
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_requests];
  [(NSMutableArray *)self->_requests removeAllObjects];
  FigSimpleMutexUnlock();
  v6 = AVLocalizedErrorWithUnderlyingOSStatus();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [(AVCaptureDeferredPhotoProcessor *)self _dispatchFailureCallbacks:3 forProcessingRequest:*(*(&v16 + 1) + 8 * v10++) error:v6];
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v8);
  }

  [(AVCaptureDeferredPhotoProcessor *)self _resetFigCaptureDeferredPhotoProcessor];
  if (notificationCopy)
  {
    v11 = AVLocalizedError();
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = @"AVCaptureDeferredPhotoProcessorCriticalErrorKey";
    v14 = v11;
    [defaultCenter postNotificationName:@"AVCaptureDeferredPhotoProcessorCriticalErrorNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}];
  }
}

- (void)_handleServerConnectionDiedAndRequestsWillBeReenqueued
{
  dispatch_assert_queue_V2(self->_processorQueue);
  [(AVCaptureDeferredPhotoProcessor *)self _resetFigCaptureDeferredPhotoProcessor];
  processPhotoProxyQueue = self->_processPhotoProxyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__AVCaptureDeferredPhotoProcessor__handleServerConnectionDiedAndRequestsWillBeReenqueued__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_sync(processPhotoProxyQueue, block);
}

- (void)_reenqueueRequestsAfterPriorityInversion
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [AVCaptureDeferredPhotoProcessor _reenqueueRequestsAfterPriorityInversion];
  }

  FigSimpleMutexLock();
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_requests];
  [(NSMutableArray *)self->_requests removeAllObjects];
  self->_requestsWillBeReenqueued = 0;
  FigSimpleMutexUnlock();
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_137];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        FigSimpleMutexLock();
        v10 = [objc_msgSend(v9 "photoProxies")];
        FigSimpleMutexUnlock();
        qosClass = [v9 qosClass];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __75__AVCaptureDeferredPhotoProcessor__reenqueueRequestsAfterPriorityInversion__block_invoke_2;
        block[3] = &unk_1E786EFD0;
        block[4] = v9;
        block[5] = self;
        block[6] = v10;
        v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qosClass, 0, block);
        dispatch_async(self->_reenqueuePhotoProxyQueue, v12);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v6);
  }
}

uint64_t __75__AVCaptureDeferredPhotoProcessor__reenqueueRequestsAfterPriorityInversion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 qosClass];
  if (v5 == [a3 qosClass])
  {
    return 0;
  }

  v7 = [a2 qosClass];
  if (v7 > [a3 qosClass])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t __75__AVCaptureDeferredPhotoProcessor__reenqueueRequestsAfterPriorityInversion__block_invoke_2(uint64_t a1)
{
  if (dword_1ED806860)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 32) delegatesStorage];
  result = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) _processPhotoProxy:*(a1 + 48) queuePosition:@"Tail" delegate:objc_msgSend(*(*(&v11 + 1) + 8 * v7) delegateQueue:{"delegate"), objc_msgSend(*(*(&v11 + 1) + 8 * v7), "delegateQueue")}];
        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)_dispatchFailureCallbacks:(unsigned int)callbacks forProcessingRequest:(id)request error:(id)error
{
  firedCallbackFlags = [request firedCallbackFlags];
  if ((((firedCallbackFlags & 2) == 0) & (callbacks >> 1)) != 0)
  {
    v10 = callbacks & ((firedCallbackFlags & 1) == 0) | 2;
  }

  else
  {
    v10 = callbacks & ((firedCallbackFlags & 1) == 0);
  }

  FigSimpleMutexLock();
  [request setFiredCallbackFlags:{v10 | objc_msgSend(request, "firedCallbackFlags")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [request delegatesStorage];
  v11 = [obj countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __88__AVCaptureDeferredPhotoProcessor__dispatchFailureCallbacks_forProcessingRequest_error___block_invoke;
        v17[3] = &unk_1E7875B58;
        v18 = v10;
        v17[4] = request;
        v17[5] = self;
        v17[6] = error;
        [v15 invokeDelegateCallbackWithBlock:v17];
      }

      v12 = [obj countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->_requests removeObject:request];
  FigSimpleMutexUnlock();
}

void __88__AVCaptureDeferredPhotoProcessor__dispatchFailureCallbacks_forProcessingRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(*(a1 + 32) "photoProxies")];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v3;
  v22 = [v3 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v22)
  {
    v21 = *v45;
    v19 = *MEMORY[0x1E696AA08];
    p_vtable = AVCaptureConnection.vtable;
    do
    {
      v5 = 0;
      do
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v44 + 1) + 8 * v5);
        if (*(a1 + 56) & 1) != 0 && (objc_opt_respondsToSelector())
        {
          [a2 processor:*(a1 + 40) willBeginProcessingPhotoProxy:v6];
        }

        if ((*(a1 + 56) & 2) != 0)
        {
          v25 = [objc_msgSend(*(a1 + 48) "userInfo")];
          v7 = [*(a1 + 32) expectedPhotoCount];
          if (v7 > [*(a1 + 32) firedPhotoCallbacksCount])
          {
            v8 = 0;
            v24 = v6;
            do
            {
              if (*(p_vtable + 536))
              {
                v42 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v10 = v42;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v11 = v10;
                }

                else
                {
                  v11 = v10 & 0xFFFFFFFE;
                }

                if (v11)
                {
                  v27 = [v6 deferredPhotoIdentifier];
                  v26 = [v25 code];
                  v12 = p_vtable;
                  v13 = avcdpp_failureReasonStringForErrorStatus([v25 code]);
                  v14 = [*(a1 + 32) expectedPhotoCount];
                  v15 = [*(a1 + 32) firedPhotoCallbacksCount];
                  v29 = 136316418;
                  v30 = "[AVCaptureDeferredPhotoProcessor _dispatchFailureCallbacks:forProcessingRequest:error:]_block_invoke";
                  v31 = 2114;
                  v32 = v27;
                  v33 = 1024;
                  v34 = v26;
                  v35 = 2114;
                  v36 = v13;
                  p_vtable = v12;
                  v37 = 1024;
                  v38 = v8 + 1;
                  v6 = v24;
                  v39 = 1024;
                  v40 = v14 - v15;
                  LODWORD(v18) = 50;
                  v17 = &v29;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [a2 processor:*(a1 + 40) didFinishProcessingPhotoProxy:v6 finalPhoto:0 error:{*(a1 + 48), v17, v18}];
              ++v8;
              v16 = [*(a1 + 32) expectedPhotoCount];
            }

            while (v8 < (v16 - [*(a1 + 32) firedPhotoCallbacksCount]));
          }
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v22);
  }
}

- (void)prewarmWithSettings:(id)settings
{
  if (FigCaptureDeferredPhotoProcessorIsAllowedToPrewarm())
  {
    captureSettings = [settings captureSettings];
    if (captureSettings)
    {
      v6 = captureSettings;
      serializedProcessingSettings = [settings serializedProcessingSettings];
      if (serializedProcessingSettings)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __55__AVCaptureDeferredPhotoProcessor_prewarmWithSettings___block_invoke;
        v9[3] = &unk_1E78759D0;
        v9[4] = self;
        v9[5] = v6;
        v9[6] = serializedProcessingSettings;
        [(AVCaptureDeferredPhotoProcessor *)self _executeBlockOnProcessorQueueSync:v9];
      }
    }
  }

  else if (dword_1ED806860)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_1_10();
  }
}

uint64_t __69__AVCaptureDeferredPhotoProcessor__executeBlockOnProcessorQueueSync___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_0_7([*(a1 + 32) _establishServerConnection]);
  if (!v2)
  {
    v3 = (*(*(a1 + 40) + 16))();
    OUTLINED_FUNCTION_0_7(v3);
  }

  result = [*(a1 + 32) _handleProcessorQueueBlockError:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_handleNotification:(__CFString *)notification payload:(id)payload
{
  FigSimpleMutexLock();
  requestsWillBeReenqueued = self->_requestsWillBeReenqueued;
  FigSimpleMutexUnlock();
  if (FigCFEqual())
  {
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    processorQueue = self->_processorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AVCaptureDeferredPhotoProcessor__handleNotification_payload___block_invoke;
    block[3] = &unk_1E786EE40;
    v32 = requestsWillBeReenqueued;
    block[4] = self;
    dispatch_sync(processorQueue, block);
    goto LABEL_15;
  }

  v8 = [payload objectForKeyedSubscript:*MEMORY[0x1E698F8F8]];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [(AVCaptureDeferredPhotoProcessor *)self _processingRequestForCaptureRequestIdentifier:v8];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  if (FigCFEqual())
  {
    selfCopy = self;
    v12 = [payload objectForKeyedSubscript:*MEMORY[0x1E698F958]];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v12;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [AVCaptureDeferredPhotoProxy alloc];
          v19 = -[AVCaptureDeferredPhotoProxy initWithDeferredPhotoIdentifier:](v18, "initWithDeferredPhotoIdentifier:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v9, v17]);
          [v11 addProxy:v19];
        }

        v14 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v14);
    }

    [(AVCaptureDeferredPhotoProcessor *)selfCopy _handleWillBeginProcessingPhotoProxyNotificationWithPayload:payload forRequest:v11];
    goto LABEL_15;
  }

  if (!FigCFEqual())
  {
LABEL_15:
    OUTLINED_FUNCTION_2_4();
    return;
  }

  if ([objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698F910]), "intValue"}] == -16823)
  {
    if (requestsWillBeReenqueued)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_2_4();

    [v20 _handleWillAbortProcessingDueToPriorityInversion];
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    [v22 _handleDidFinishProcessingPhotoProxyNotificationWithPayload:? forRequest:?];
  }
}

- (void)_establishServerConnection
{
  v4 = FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor();
  *a2 = v4;
  if (!v4)
  {
    [self _setFigCaptureDeferredPhotoProcessor:0];
  }
}

@end