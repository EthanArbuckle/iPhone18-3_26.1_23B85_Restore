@interface AVFigCommChannelUUIDCommunicationChannelManager
- (AVFigCommChannelUUIDCommunicationChannelManager)initWithRoutingContext:(OpaqueFigRoutingContext *)a3;
- (AVOutputContextCommunicationChannel)outgoingCommunicationChannel;
- (id)openCommunicationChannelWithOptions:(id)a3 error:(id *)a4;
- (void)_didReceiveData:(__CFData *)a3 fromCommChannelUUID:(__CFString *)a4;
- (void)dealloc;
- (void)didCloseCommChannelUUID:(__CFString *)a3;
@end

@implementation AVFigCommChannelUUIDCommunicationChannelManager

- (void)dealloc
{
  weakObserver = self->_weakObserver;
  if (weakObserver)
  {
    v4 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVCommChannelDidReceiveData name:*MEMORY[0x1E69AF480] object:self->_routingContext];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVCommChannelDidClose name:*MEMORY[0x1E69AF468] object:self->_routingContext];
    weakObserver = self->_weakObserver;
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  routingContext = self->_routingContext;
  if (routingContext)
  {
    CFRelease(routingContext);
  }

  outgoingCommChannelUUID = self->_outgoingCommChannelUUID;
  if (outgoingCommChannelUUID)
  {
    CFRelease(outgoingCommChannelUUID);
  }

  communicationChannelsForUUIDs = self->_communicationChannelsForUUIDs;
  if (communicationChannelsForUUIDs)
  {
    CFRelease(communicationChannelsForUUIDs);
  }

  v9.receiver = self;
  v9.super_class = AVFigCommChannelUUIDCommunicationChannelManager;
  [(AVFigCommChannelUUIDCommunicationChannelManager *)&v9 dealloc];
}

- (AVOutputContextCommunicationChannel)outgoingCommunicationChannel
{
  v27[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  cf = 0;
  v26 = *MEMORY[0x1E6961770];
  v27[0] = *MEMORY[0x1E6961760];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  routingContext = self->_routingContext;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 112);
  if (!v6)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v7 = *(VTable + 16) + 112;
  v8 = v6(routingContext, v3, &cf);
  v9 = cf;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = cf == 0;
  }

  if (v10)
  {
    v12 = 0;
    v13 = 0;
    if (!cf)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = [AVFigCommChannelUUIDOutputContextCommunicationChannelImpl alloc];
  v12 = [(AVFigCommChannelUUIDOutputContextCommunicationChannelImpl *)v11 initWithRoutingContext:self->_routingContext commChannelUUID:cf];
  v13 = [[AVOutputContextCommunicationChannel alloc] initWithOutputContextCommunicationChannelImpl:v12];
  ivarAccessQueue = self->_ivarAccessQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__AVFigCommChannelUUIDCommunicationChannelManager_outgoingCommunicationChannel__block_invoke;
  v18[3] = &unk_1E794EA18;
  v18[6] = &v20;
  v18[7] = cf;
  v18[4] = self;
  v18[5] = v13;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v18);
  v9 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v9);
  }

LABEL_9:

  v15 = v21[5];
  _Block_object_dispose(&v20, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __79__AVFigCommChannelUUIDCommunicationChannelManager_outgoingCommunicationChannel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 40) = CFDictionaryGetValue(*(v2 + 40), v3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(v2 + 40));
    v5 = *(a1 + 56);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *(*(a1 + 32) + 32) = v5;
    CFDictionarySetValue(MutableCopy, *(a1 + 56), *(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    *(*(*(a1 + 48) + 8) + 40) = *(a1 + 40);
    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }
}

- (id)openCommunicationChannelWithOptions:(id)a3 error:(id *)a4
{
  cf[22] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v8 = *MEMORY[0x1E6961760];
  v9 = [a3 objectForKeyedSubscript:@"AVOutputContextCommunicationChannelOptionControlType"];
  v10 = v9;
  if (v9)
  {
    if ([v9 isEqualToString:@"AVOutputContextCommunicationChannelControlTypeDirect"])
    {
      v11 = 2;
    }

    else
    {
      if (![v10 isEqualToString:@"AVOutputContextCommunicationChannelControlTypeRelayed"])
      {
        goto LABEL_7;
      }

      v11 = 1;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E6961778], [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11]);
  }

LABEL_7:
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961770], v8);
  if (dword_1ED6F6B88)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingContext = self->_routingContext;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v14)
  {
    v15 = -12782;
    goto LABEL_15;
  }

  v15 = v14(routingContext, Mutable, cf);
  if (v15)
  {
LABEL_15:
    v20 = AVLocalizedErrorWithUnderlyingOSStatus(v15, 0);
    goto LABEL_16;
  }

  if (cf[0])
  {
    v16 = [AVFigCommChannelUUIDOutputContextCommunicationChannelImpl alloc];
    v17 = [(AVFigCommChannelUUIDOutputContextCommunicationChannelImpl *)v16 initWithRoutingContext:self->_routingContext commChannelUUID:cf[0]];
    v18 = [[AVOutputContextCommunicationChannel alloc] initWithOutputContextCommunicationChannelImpl:v17];
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__AVFigCommChannelUUIDCommunicationChannelManager_openCommunicationChannelWithOptions_error___block_invoke;
    block[3] = &unk_1E794E908;
    block[5] = v18;
    block[6] = cf[0];
    block[4] = self;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
    v20 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v20 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
LABEL_16:
  v17 = 0;
  v18 = 0;
  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!v18)
  {
    *a4 = v20;
  }

LABEL_19:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = v18;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void __93__AVFigCommChannelUUIDCommunicationChannelManager_openCommunicationChannelWithOptions_error___block_invoke(uint64_t a1)
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

- (void)_didReceiveData:(__CFData *)a3 fromCommChannelUUID:(__CFString *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  if (a4)
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__AVFigCommChannelUUIDCommunicationChannelManager__didReceiveData_fromCommChannelUUID___block_invoke;
    block[3] = &unk_1E794EA40;
    block[4] = self;
    block[5] = &v10;
    block[6] = a4;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    v7 = [(AVFigCommChannelUUIDCommunicationChannelManager *)self parentOutputContextImpl];
    [(AVFigRoutingContextOutputContextImpl *)v7 communicationChannelManager:self didReceiveData:a3 fromCommunicationChannel:v11[5]];
    v8 = v11[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v10, 8);
}

void __87__AVFigCommChannelUUIDCommunicationChannelManager__didReceiveData_fromCommChannelUUID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(*(*(a1 + 32) + 40), *(a1 + 48));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[AVFigCommChannelUUIDOutputContextCommunicationChannelImpl alloc] initWithRoutingContext:*(*(a1 + 32) + 16) commChannelUUID:*(a1 + 48)];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1 + 32) + 40));
    *(*(*(a1 + 40) + 8) + 40) = [[AVOutputContextCommunicationChannel alloc] initWithOutputContextCommunicationChannelImpl:v5];
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

- (void)didCloseCommChannelUUID:(__CFString *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  if (a3)
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AVFigCommChannelUUIDCommunicationChannelManager_didCloseCommChannelUUID___block_invoke;
    block[3] = &unk_1E794EA40;
    block[4] = self;
    block[5] = &v8;
    block[6] = a3;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    v5 = [(AVFigCommChannelUUIDCommunicationChannelManager *)self parentOutputContextImpl];
    [(AVFigRoutingContextOutputContextImpl *)v5 communicationChannelManager:self didCloseCommunicationChannel:v9[5]];
    v6 = v9[5];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v8, 8);
}

void __75__AVFigCommChannelUUIDCommunicationChannelManager_didCloseCommChannelUUID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CFDictionaryGetValue(*(*(a1 + 32) + 40), *(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(*(a1 + 32) + 40));
    CFDictionaryRemoveValue(MutableCopy, *(a1 + 48));
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    if (*(a1 + 48) == v4 && v4 != 0)
    {
      CFRelease(v4);
      *(*(a1 + 32) + 32) = 0;
      v3 = *(a1 + 32);
    }

    v6 = *(v3 + 40);
    *(v3 + 40) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }

  else
  {
    v7 = [[AVFigCommChannelUUIDOutputContextCommunicationChannelImpl alloc] initWithRoutingContext:*(*(a1 + 32) + 16) commChannelUUID:*(a1 + 48)];
    *(*(*(a1 + 40) + 8) + 40) = [[AVOutputContextCommunicationChannel alloc] initWithOutputContextCommunicationChannelImpl:v7];
  }
}

- (AVFigCommChannelUUIDCommunicationChannelManager)initWithRoutingContext:(OpaqueFigRoutingContext *)a3
{
  OUTLINED_FUNCTION_5();
  [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v16.receiver = v3;
  v16.super_class = AVFigCommChannelUUIDCommunicationChannelManager;
  v5 = [(AVFigCommChannelUUIDCommunicationChannelManager *)&v16 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if (!v4)
  {
    v14 = 0;
    v5->_routingContext = 0;
    goto LABEL_6;
  }

  v7 = CFRetain(v4);
  v6[2] = v7;
  if (!v7)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_6;
  }

  v6[3] = av_readwrite_dispatch_queue_create("com.apple.avfoundation.communication-channel-manager");
  v6[5] = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v6];
  v6[6] = v8;
  v11 = OUTLINED_FUNCTION_0(v8, v9, v8, v10, *MEMORY[0x1E69AF480], v6[2]);
  OUTLINED_FUNCTION_0(v11, v12, v6[6], v13, *MEMORY[0x1E69AF468], v6[2]);
  v14 = v6;
LABEL_6:

  return v14;
}

@end