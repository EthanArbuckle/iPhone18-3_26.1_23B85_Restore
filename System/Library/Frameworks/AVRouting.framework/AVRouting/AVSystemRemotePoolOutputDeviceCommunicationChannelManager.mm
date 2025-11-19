@interface AVSystemRemotePoolOutputDeviceCommunicationChannelManager
+ (id)sharedSystemRemotePool;
+ (id)sharedSystemRemotePoolImpl;
- (AVSystemRemotePoolOutputDeviceCommunicationChannelManager)initWithDeviceID:(id)a3;
- (id)_initializeIfNeededAndGetSystemRemotePool;
- (void)_didCloseCommChannelWithUUID:(__CFString *)a3 forDeviceWithID:(__CFString *)a4;
- (void)_didReceiveData:(__CFData *)a3 fromDeviceWithID:(__CFString *)a4 fromChannelWithUUID:(__CFString *)a5;
- (void)dealloc;
- (void)openCommunicationChannelWithOptions:(id)a3 completionHandler:(id)a4;
@end

@implementation AVSystemRemotePoolOutputDeviceCommunicationChannelManager

- (void)dealloc
{
  outputContext = self->_outputContext;
  if (outputContext && [(AVOutputContext *)outputContext figRoutingContext])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v4 = *MEMORY[0x1E69AF480];
    [(AVOutputContext *)self->_outputContext figRoutingContext];
    FigNotificationCenterRemoveWeakListener();
    v5 = *MEMORY[0x1E69AF468];
    [(AVOutputContext *)self->_outputContext figRoutingContext];
    FigNotificationCenterRemoveWeakListener();
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  communicationChannelsForUUIDs = self->_communicationChannelsForUUIDs;
  if (communicationChannelsForUUIDs)
  {
    CFRelease(communicationChannelsForUUIDs);
  }

  v8.receiver = self;
  v8.super_class = AVSystemRemotePoolOutputDeviceCommunicationChannelManager;
  [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)&v8 dealloc];
}

+ (id)sharedSystemRemotePoolImpl
{
  v2 = AVDefaultRoutingContextFactory();
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_sharedSystemRemotePoolImpl__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = v2;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __87__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_sharedSystemRemotePoolImpl__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) copySystemRemotePoolContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

+ (id)sharedSystemRemotePool
{
  v2 = [[AVOutputContext alloc] initWithOutputContextImpl:+[AVSystemRemotePoolOutputDeviceCommunicationChannelManager sharedSystemRemotePoolImpl]];

  return v2;
}

- (id)_initializeIfNeededAndGetSystemRemotePool
{
  CMNotificationCenterGetDefaultLocalCenter();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__initializeIfNeededAndGetSystemRemotePool__block_invoke;
  block[3] = &unk_1E794EEE0;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  v4 = v11[5];
  if (v4)
  {
    if ([v4 figRoutingContext])
    {
      if (*(v17 + 24) == 1)
      {
        [(AVOutputContext *)self->_outputContext figRoutingContext];
        v5 = *MEMORY[0x1E69AF480];
        if (!FigNotificationCenterAddWeakListener())
        {
          [(AVOutputContext *)self->_outputContext figRoutingContext];
          v6 = *MEMORY[0x1E69AF468];
          FigNotificationCenterAddWeakListener();
        }
      }
    }
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v7;
}

void *__102__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__initializeIfNeededAndGetSystemRemotePool__block_invoke(void *result)
{
  v1 = result;
  v2 = *(result[4] + 24);
  if (!v2)
  {
    result = +[AVSystemRemotePoolOutputDeviceCommunicationChannelManager sharedSystemRemotePool];
    *(v1[4] + 24) = result;
    *(*(v1[5] + 8) + 24) = 1;
    v2 = *(v1[4] + 24);
  }

  *(*(v1[6] + 8) + 40) = v2;
  return result;
}

- (void)openCommunicationChannelWithOptions:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)self parentOutputDevice];
  v8 = [a3 objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionCancelIfAuthRequired"];
  v9 = [a3 objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionCorrelationID"];
  v10 = [a3 objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionInitiator"];
  if (dword_1ED6F6B68)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v7 && (v12 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)self _initializeIfNeededAndGetSystemRemotePool]) != 0)
  {
    v13 = v12;
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = v14;
    if (v9)
    {
      [v14 setObject:v9 forKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionCorrelationID"];
    }

    if (v10)
    {
      [v15 setObject:v10 forKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionInitiator"];
    }

    if ([v8 BOOLValue])
    {
      [v15 setObject:v8 forKeyedSubscript:@"AVOutputContextAddOutputDeviceCancelIfAuthRequiredKey"];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __115__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_openCommunicationChannelWithOptions_completionHandler___block_invoke;
    v20[3] = &unk_1E794EF08;
    v20[4] = a3;
    v20[5] = v9;
    v20[6] = v13;
    v20[7] = self;
    v20[8] = a4;
    [v13 addOutputDevice:v7 options:v15 completionHandler:v20];
  }

  else
  {
    v16 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
    (*(a4 + 2))(a4, 0, v16, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __115__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_openCommunicationChannelWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ([a2 status] != 2)
  {
    [a2 cancellationReason];
    v9 = 0;
    Mutable = 0;
    v10 = 0;
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v5 = MEMORY[0x1E6961760];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionControlType"];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqualToString:@"AVOutputDeviceCommunicationChannelControlTypeDirect"])
    {
      v8 = 2;
    }

    else
    {
      if (![v7 isEqualToString:@"AVOutputDeviceCommunicationChannelControlTypeRelayed"])
      {
        goto LABEL_9;
      }

      v8 = 1;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E6961778], [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8]);
  }

LABEL_9:
  v11 = *v5;
  v12 = *(a1 + 40);
  if (v12)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6961768], v12);
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961770], v11);
  v13 = *MEMORY[0x1E69623D0];
  FigCFDictionarySetInt32();
  if (dword_1ED6F6B68)
  {
    v31 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = [*(a1 + 48) figRoutingContext];
  v16 = *(*(a1 + 56) + 16);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v17)
  {
    v9 = -12782;
LABEL_18:
    AVLocalizedErrorWithUnderlyingOSStatus(v9, 0);
    goto LABEL_19;
  }

  v18 = v17(v15, v16, Mutable, &cf);
  if (v18)
  {
    v9 = v18;
    goto LABEL_18;
  }

  if (cf)
  {
    v19 = [AVSystemRemotePoolOutputDeviceCommunicationChannelImpl alloc];
    v20 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelImpl *)v19 initWithDeviceID:*(*(a1 + 56) + 16) channelUUID:cf outputContext:*(a1 + 48)];
    v10 = [[AVOutputDeviceCommunicationChannel alloc] initWithOutputDeviceCommunicationChannelImpl:v20];

    v21 = *(a1 + 56);
    v22 = *(v21 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_openCommunicationChannelWithOptions_completionHandler___block_invoke_11;
    block[3] = &unk_1E794E908;
    block[5] = v10;
    block[6] = cf;
    block[4] = v21;
    av_readwrite_dispatch_queue_write(v22, block);
    v9 = 0;
    goto LABEL_20;
  }

  AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
  v9 = 0;
LABEL_19:
  v10 = 0;
LABEL_20:
  (*(*(a1 + 64) + 16))();
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (dword_1ED6F6B68)
  {
    v31 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v31;
    if (os_log_type_enabled(v23, type))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v33 = 136315650;
      v34 = "[AVSystemRemotePoolOutputDeviceCommunicationChannelManager openCommunicationChannelWithOptions:completionHandler:]_block_invoke_2";
      v35 = 2114;
      v36 = cf;
      v37 = 1024;
      v38 = v9;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __115__AVSystemRemotePoolOutputDeviceCommunicationChannelManager_openCommunicationChannelWithOptions_completionHandler___block_invoke_11(uint64_t a1)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1 + 32) + 40));
  CFDictionarySetValue(MutableCopy, *(a1 + 48), *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = MutableCopy;
  if (MutableCopy)
  {
    CFRetain(MutableCopy);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (MutableCopy)
  {

    CFRelease(MutableCopy);
  }
}

- (void)_didReceiveData:(__CFData *)a3 fromDeviceWithID:(__CFString *)a4 fromChannelWithUUID:(__CFString *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  if (a5 && [(NSString *)self->_deviceID isEqualToString:a4])
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __114__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__didReceiveData_fromDeviceWithID_fromChannelWithUUID___block_invoke;
    block[3] = &unk_1E794EA40;
    block[4] = self;
    block[5] = &v15;
    block[6] = a5;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)self parentOutputDevice:v12];
    [(AVOutputDevice *)v10 communicationChannelManager:self didReceiveData:a3 fromCommunicationChannel:v16[5]];
  }

  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x1E69E9840];
}

void __114__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__didReceiveData_fromDeviceWithID_fromChannelWithUUID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(*(*(a1 + 32) + 40), *(a1 + 48));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelImpl alloc] initWithDeviceID:*(*(a1 + 32) + 16) channelUUID:*(a1 + 48) outputContext:*(*(a1 + 32) + 24)];
    *(*(*(a1 + 40) + 8) + 40) = [[AVOutputDeviceCommunicationChannel alloc] initWithOutputDeviceCommunicationChannelImpl:v5];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1 + 32) + 40));
    CFDictionarySetValue(MutableCopy, *(a1 + 48), *(*(*(a1 + 40) + 8) + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

- (void)_didCloseCommChannelWithUUID:(__CFString *)a3 forDeviceWithID:(__CFString *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  if (a3 && [(NSString *)self->_deviceID isEqualToString:a4])
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__didCloseCommChannelWithUUID_forDeviceWithID___block_invoke;
    block[3] = &unk_1E794EA40;
    block[4] = self;
    block[5] = &v13;
    block[6] = a3;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)self parentOutputDevice:v10];
    [(AVOutputDevice *)v8 communicationChannelManager:self didCloseCommunicationChannel:v14[5]];
  }

  _Block_object_dispose(&v13, 8);
  v9 = *MEMORY[0x1E69E9840];
}

void __106__AVSystemRemotePoolOutputDeviceCommunicationChannelManager__didCloseCommChannelWithUUID_forDeviceWithID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(*(*(a1 + 32) + 40), *(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1 + 32) + 40));
    CFDictionaryRemoveValue(MutableCopy, *(a1 + 48));
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }

  else
  {
    v5 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelImpl alloc] initWithDeviceID:*(*(a1 + 32) + 16) channelUUID:*(a1 + 48) outputContext:*(*(a1 + 32) + 24)];
    *(*(*(a1 + 40) + 8) + 40) = [[AVOutputDeviceCommunicationChannel alloc] initWithOutputDeviceCommunicationChannelImpl:v5];
  }
}

- (AVSystemRemotePoolOutputDeviceCommunicationChannelManager)initWithDeviceID:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVSystemRemotePoolOutputDeviceCommunicationChannelManager;
  v4 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelManager *)&v8 init];
  if (v4 && (v5 = [a3 copy], (v4->_deviceID = v5) != 0))
  {
    v4->_outputContext = 0;
    v4->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.device-comm-channel-manager");
    v4->_communicationChannelsForUUIDs = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end