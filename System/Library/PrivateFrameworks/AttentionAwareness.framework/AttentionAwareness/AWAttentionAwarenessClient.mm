@interface AWAttentionAwarenessClient
- (AWAttentionAwarenessClient)init;
- (AWAttentionAwarenessConfiguration)configuration;
- (AWAttentionEvent)lastEvent;
- (BOOL)_invokeRequiringClient:(BOOL)client error:(id *)error block:(id)block;
- (BOOL)cancelFaceDetectStreamWithError:(id *)error;
- (BOOL)cancelPollForAttentionWithError:(id *)error;
- (BOOL)invalidateRemoteClientWithError:(id *)error;
- (BOOL)invalidateWithError:(id *)error;
- (BOOL)invokeRequiringClient:(BOOL)client error:(id *)error block:(id)block;
- (BOOL)pollForAttentionWithTimeout:(double)timeout event:(id *)event error:(id *)error;
- (BOOL)pollForAttentionWithTimeout:(double)timeout queue:(id)queue block:(id)block error:(id *)error;
- (BOOL)resumeWithError:(id *)error;
- (BOOL)setConfiguration:(id)configuration shouldReset:(BOOL)reset error:(id *)error;
- (BOOL)suspendWithError:(id *)error;
- (id)connect:(BOOL)connect;
- (id)startStream;
- (void)notify:(unint64_t)notify;
- (void)notifyEvent:(id)event;
- (void)notifyPollEventType:(unint64_t)type event:(id)event;
- (void)notifyStreamingEvent:(id)event;
- (void)serviceInterrupted;
- (void)setEventHandlerWithQueue:(id)queue block:(id)block;
- (void)setEventStreamerWithQueue:(id)queue block:(id)block;
- (void)setNotificationHandlerWithQueue:(id)queue block:(id)block;
- (void)setUnitTestMode:(BOOL)mode;
@end

@implementation AWAttentionAwarenessClient

- (AWAttentionAwarenessClient)init
{
  v11.receiver = self;
  v11.super_class = AWAttentionAwarenessClient;
  v2 = [(AWAttentionAwarenessClient *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_suspensionCount = 1;
    v4 = awQueue(0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_alloc_init(AWAttentionAwarenessConfiguration);
    configuration = v3->_configuration;
    v3->_configuration = v6;

    v3->_clientIndex = -1;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    clientId = v3->_clientId;
    v3->_clientId = uUID;
  }

  return v3;
}

- (AWAttentionAwarenessConfiguration)configuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2313;
  v10 = __Block_byref_object_dispose__2314;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AWAttentionAwarenessClient_configuration__block_invoke;
  v5[3] = &unk_1E7F37F00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __43__AWAttentionAwarenessClient_configuration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)serviceInterrupted
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AWAttentionAwarenessClient_serviceInterrupted__block_invoke;
  block[3] = &unk_1E7F38038;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__AWAttentionAwarenessClient_serviceInterrupted__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AWAttentionAwarenessClient_serviceInterrupted__block_invoke_2;
  v9[3] = &unk_1E7F37E88;
  v2 = [v10 _invokeRequiringClient:1 error:&v11 block:v9];
  v3 = v11;
  if ((v2 & 1) == 0 && currentLogLevel >= 3)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      v8 = [*(*(a1 + 32) + 96) identifier];
      *buf = 134218498;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_1BB2EF000, v4, OS_LOG_TYPE_ERROR, "%13.5f: XPC interruption: %@ failed to ping remote client: %@", buf, 0x20u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

id __48__AWAttentionAwarenessClient_serviceInterrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2313;
  v11 = __Block_byref_object_dispose__2314;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AWAttentionAwarenessClient_serviceInterrupted__block_invoke_3;
  v6[3] = &unk_1E7F37FF0;
  v6[4] = *(a1 + 32);
  v6[5] = &v7;
  [v3 pingWithReply:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__AWAttentionAwarenessClient_serviceInterrupted__block_invoke_3(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    __assert_rtn("[AWAttentionAwarenessClient serviceInterrupted]_block_invoke_3", "FrameworkClient.m", 711, "alive");
  }

  if (currentLogLevel == 5)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = absTimeNS();
      if (v4 == -1)
      {
        v5 = INFINITY;
      }

      else
      {
        v5 = v4 / 1000000000.0;
      }

      v10 = [*(*(a1 + 32) + 96) identifier];
      *v18 = 134218242;
      *&v18[4] = v5;
      *&v18[12] = 2112;
      *&v18[14] = v10;
      v11 = "%13.5f: %@ remote client is alive";
      v12 = v3;
      v13 = 22;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, v18, v13);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_22;
    }

    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/FrameworkClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/FrameworkClient.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v6 = i;
        }

        else if (!*(i - 1))
        {
          v8 = absTimeNS();
          if (v8 == -1)
          {
            v9 = INFINITY;
          }

          else
          {
            v9 = v8 / 1000000000.0;
          }

          v10 = [*(*(a1 + 32) + 96) identifier];
          *v18 = 136315906;
          *&v18[4] = v6;
          *&v18[12] = 1024;
          *&v18[14] = 713;
          *&v18[18] = 2048;
          *&v18[20] = v9;
          *&v18[28] = 2112;
          *&v18[30] = v10;
          v11 = "%30s:%-4d: %13.5f: %@ remote client is alive";
          v12 = v3;
          v13 = 38;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_22:
  if ([*(*(a1 + 32) + 96) continuousFaceDetectMode])
  {
    v14 = [*(a1 + 32) startStream];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setUnitTestMode:(BOOL)mode
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AWAttentionAwarenessClient_setUnitTestMode___block_invoke;
  v4[3] = &unk_1E7F37FC8;
  modeCopy = mode;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

uint64_t __46__AWAttentionAwarenessClient_setUnitTestMode___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 104))
  {
    *(v2 + 104) = v1;
  }

  return result;
}

- (void)notifyStreamingEvent:(id)event
{
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v5 = _AALog();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/FrameworkClient.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/FrameworkClient.m"; *(i - 1) == 47; ++i)
  {
    v6 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v8 = absTimeNS();
  if (v8 == -1)
  {
    v9 = INFINITY;
  }

  else
  {
    v9 = v8 / 1000000000.0;
  }

  identifier = [(AWAttentionAwarenessConfiguration *)self->_configuration identifier];
  *buf = 136315906;
  v16 = v6;
  v17 = 1024;
  v18 = 645;
  v19 = 2048;
  v20 = v9;
  v21 = 2112;
  v22 = identifier;
  _os_log_impl(&dword_1BB2EF000, v5, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: Delivering event to client %@", buf, 0x26u);

LABEL_13:
LABEL_14:
  if (![(AWAttentionAwarenessConfiguration *)self->_configuration unityStream]|| !self->_eventDelivered)
  {
    if (self->_clientStreamingBlock)
    {
      queue = self->_queue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__AWAttentionAwarenessClient_notifyStreamingEvent___block_invoke;
      v13[3] = &unk_1E7F38060;
      v13[4] = self;
      v14 = eventCopy;
      dispatch_async(queue, v13);
      self->_eventDelivered = 1;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __51__AWAttentionAwarenessClient_notifyStreamingEvent___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 88))
  {
    v2 = MEMORY[0x1BFB0D030]();
    v3 = *(*(a1 + 32) + 80);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__AWAttentionAwarenessClient_notifyStreamingEvent___block_invoke_2;
    v5[3] = &unk_1E7F37F78;
    v7 = v2;
    v6 = *(a1 + 40);
    v4 = v2;
    dispatch_async(v3, v5);
  }
}

- (void)notifyPollEventType:(unint64_t)type event:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AWAttentionAwarenessClient_notifyPollEventType_event___block_invoke;
  block[3] = &unk_1E7F37FA0;
  v10 = eventCopy;
  typeCopy = type;
  block[4] = self;
  v8 = eventCopy;
  dispatch_async(queue, block);
}

void __56__AWAttentionAwarenessClient_notifyPollEventType_event___block_invoke(void *a1)
{
  v1 = *(a1[4] + 16);
  if (v1)
  {
    v6 = v1;
    if (a1[6] == 1)
    {
      v3 = 1;
    }

    else
    {
      v4 = a1[4];
      v5 = *(v4 + 16);
      *(v4 + 16) = 0;

      v3 = a1[6];
    }

    [v6 notifyPollEventType:v3 event:a1[5]];
  }
}

- (void)notifyEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AWAttentionAwarenessClient_notifyEvent___block_invoke;
  v7[3] = &unk_1E7F38060;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

void __42__AWAttentionAwarenessClient_notifyEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    [*(a1 + 40) updateWithConfig:*(v1 + 96)];
    v3 = [*(a1 + 40) eventMask];
    v4 = v3 != 1;
    v5 = *(a1 + 32);
    if (*(v5 + 72) && *(v5 + 64) && (v3 == 1 || (*(v5 + 112) & 1) == 0))
    {
      v6 = MEMORY[0x1BFB0D030]();
      v7 = *(*(a1 + 32) + 64);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__AWAttentionAwarenessClient_notifyEvent___block_invoke_2;
      v9[3] = &unk_1E7F37F78;
      v11 = v6;
      v10 = *(a1 + 40);
      v8 = v6;
      dispatch_async(v7, v9);

      v5 = *(a1 + 32);
    }

    *(v5 + 112) = v4;
  }
}

- (void)notify:(unint64_t)notify
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__AWAttentionAwarenessClient_notify___block_invoke;
  v4[3] = &unk_1E7F37F50;
  v4[4] = self;
  v4[5] = notify;
  dispatch_async(queue, v4);
}

void __37__AWAttentionAwarenessClient_notify___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0 && *(v1 + 56))
  {
    if (*(v1 + 48))
    {
      v3 = MEMORY[0x1BFB0D030]();
      v4 = *(*(a1 + 32) + 48);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __37__AWAttentionAwarenessClient_notify___block_invoke_2;
      v7[3] = &unk_1E7F37F28;
      v5 = *(a1 + 40);
      v8 = v3;
      v9 = v5;
      v6 = v3;
      dispatch_async(v4, v7);
    }
  }
}

- (BOOL)invalidateWithError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2313;
  v13 = __Block_byref_object_dispose__2314;
  v14 = 0;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AWAttentionAwarenessClient_invalidateWithError___block_invoke;
  v8[3] = &unk_1E7F37F00;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);
  v5 = v10[5];
  if (error && v5)
  {
    *error = v5;
    v5 = v10[5];
  }

  v6 = v5 == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __50__AWAttentionAwarenessClient_invalidateWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    v3 = *(v1 + 48);
    *(v1 + 48) = 0;

    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = 0;

    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    *(v8 + 72) = 0;

    v10 = *(a1 + 32);
    if (*(v10 + 32))
    {
      if (![*(v10 + 96) continuousFaceDetectMode])
      {
LABEL_6:
        *(*(a1 + 32) + 40) = 1;
        return;
      }

      v10 = *(a1 + 32);
    }

    v11 = *(*(a1 + 40) + 8);
    obj = *(v11 + 40);
    [v10 invalidateRemoteClientWithError:&obj];
    objc_storeStrong((v11 + 40), obj);
    goto LABEL_6;
  }
}

- (BOOL)suspendWithError:(id *)error
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AWAttentionAwarenessClient_suspendWithError___block_invoke;
  v4[3] = &unk_1E7F37E88;
  v4[4] = self;
  return [(AWAttentionAwarenessClient *)self invokeRequiringClient:0 error:error block:v4];
}

id __47__AWAttentionAwarenessClient_suspendWithError___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v4 + 1;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v8[1] = v1;
    v9 = v2;
    v7 = *(a1 + 32);
    v8[0] = 0;
    [v7 invalidateRemoteClientWithError:v8];
    v5 = v8[0];
  }

  return v5;
}

- (BOOL)invalidateRemoteClientWithError:(id *)error
{
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__AWAttentionAwarenessClient_invalidateRemoteClientWithError___block_invoke;
  v6[3] = &unk_1E7F37E88;
  v6[4] = self;
  return [(AWAttentionAwarenessClient *)self _invokeRequiringClient:1 error:error block:v6];
}

uint64_t __62__AWAttentionAwarenessClient_invalidateRemoteClientWithError___block_invoke(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  *(*(a1 + 32) + 108) = -1;
  [AWServiceManager removeObserver:*(a1 + 32)];
  return 0;
}

- (BOOL)cancelFaceDetectStreamWithError:(id *)error
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__AWAttentionAwarenessClient_cancelFaceDetectStreamWithError___block_invoke;
  v4[3] = &unk_1E7F37E88;
  v4[4] = self;
  return [(AWAttentionAwarenessClient *)self invokeRequiringClient:1 error:error block:v4];
}

id __62__AWAttentionAwarenessClient_cancelFaceDetectStreamWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2313;
  v15 = __Block_byref_object_dispose__2314;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__AWAttentionAwarenessClient_cancelFaceDetectStreamWithError___block_invoke_2;
  v10[3] = &unk_1E7F37D00;
  v10[4] = &v11;
  [v3 cancelFaceDetectStreamWithReply:v10];
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = 0;

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (BOOL)resumeWithError:(id *)error
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AWAttentionAwarenessClient_resumeWithError___block_invoke;
  v4[3] = &unk_1E7F37E88;
  v4[4] = self;
  return [(AWAttentionAwarenessClient *)self invokeRequiringClient:0 error:error block:v4];
}

id __46__AWAttentionAwarenessClient_resumeWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 96) continuousFaceDetectMode])
  {
    if (a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 32) connect:0];
      if (!v4)
      {
        v4 = [*(a1 + 32) startStream];
      }
    }

    v8 = v4;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = v6 - 1;
      *(v5 + 32) = v7;
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [*(a1 + 32) connect:0];
      }
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A798];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = @" Cannot resume client if it isn't already suspended";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v8 = [v9 errorWithDomain:v10 code:34 userInfo:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)startStream
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2313;
  v14 = __Block_byref_object_dispose__2314;
  v15 = 0;
  self->_eventDelivered = 0;
  remoteClientProxy = self->_remoteClientProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__AWAttentionAwarenessClient_startStream__block_invoke;
  v9[3] = &unk_1E7F37D00;
  v9[4] = &v10;
  v3 = [(NSXPCProxyCreating *)remoteClientProxy synchronousRemoteObjectProxyWithErrorHandler:v9];
  v4 = v3;
  v5 = v11[5];
  if (!v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__AWAttentionAwarenessClient_startStream__block_invoke_2;
    v8[3] = &unk_1E7F37D00;
    v8[4] = &v10;
    [v3 streamFaceDetectEventsWithReply:v8];
    v5 = v11[5];
  }

  v6 = v5;

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)connect:(BOOL)connect
{
  dispatch_assert_queue_V2(self->_queue);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__AWAttentionAwarenessClient_connect___block_invoke;
  v7[3] = &unk_1E7F37ED8;
  v7[4] = self;
  connectCopy = connect;
  v5 = [AWServiceManager invokeWithService:v7];

  return v5;
}

id __38__AWAttentionAwarenessClient_connect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2313;
  v18 = __Block_byref_object_dispose__2314;
  v19 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  v6 = *(v4 + 108);
  v7 = *(v4 + 120);
  v8 = *(v4 + 104);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__AWAttentionAwarenessClient_connect___block_invoke_2;
  v12[3] = &unk_1E7F37EB0;
  v12[4] = v4;
  v12[5] = &v14;
  v13 = *(a1 + 40);
  LOBYTE(v11) = [v5 continuousFaceDetectMode];
  [v3 addClient:v4 clientConfig:v5 clientIndex:v6 clientId:v7 unitTestMode:v8 reply:v12 subscribeForStreamingEvents:v11];
  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __38__AWAttentionAwarenessClient_connect___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  v10 = [*(*(a1 + 32) + 96) continuousFaceDetectMode];
  if (v9 && (v10 & 1) != 0 || (objc_storeStrong((*(a1 + 32) + 24), a2), *(*(a1 + 32) + 108) = a3, v9))
  {
    if (currentLogLevel >= 3)
    {
      v11 = _AALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = absTimeNS();
        if (v13 == -1)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = v13 / 1000000000.0;
        }

        v15 = 134218242;
        v16 = v14;
        v17 = 2112;
        v18 = v9;
        _os_log_error_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_ERROR, "%13.5f: client resume failed: %@", &v15, 0x16u);
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else if ((*(a1 + 48) & 1) == 0)
  {
    [AWServiceManager addObserver:*(a1 + 32)];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)cancelPollForAttentionWithError:(id *)error
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__AWAttentionAwarenessClient_cancelPollForAttentionWithError___block_invoke;
  v4[3] = &unk_1E7F37E88;
  v4[4] = self;
  return [(AWAttentionAwarenessClient *)self invokeRequiringClient:1 error:error block:v4];
}

id __62__AWAttentionAwarenessClient_cancelPollForAttentionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  if (v4)
  {
    [v4 cancel];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2313;
  v14 = __Block_byref_object_dispose__2314;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__AWAttentionAwarenessClient_cancelPollForAttentionWithError___block_invoke_2;
  v9[3] = &unk_1E7F37D00;
  v9[4] = &v10;
  [v3 pollWithTimeout:0 reply:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)pollForAttentionWithTimeout:(double)timeout event:(id *)event error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2313;
  v31 = __Block_byref_object_dispose__2314;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v9 = dispatch_queue_create("com.apple.AttentionAwareness.clientSynchronousPollQueue", 0);
  v10 = dispatch_semaphore_create(0);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __70__AWAttentionAwarenessClient_pollForAttentionWithTimeout_event_error___block_invoke;
  v19 = &unk_1E7F37E60;
  v21 = &v27;
  v22 = &v23;
  v11 = v10;
  v20 = v11;
  if (![(AWAttentionAwarenessClient *)self pollForAttentionWithTimeout:v9 queue:&v16 block:error error:timeout])
  {
    goto LABEL_5;
  }

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v24 + 24) == 1)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A578];
      v34[0] = @" Polling was cancelled";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:{1, v16, v17, v18, v19}];
      *error = [v12 errorWithDomain:*MEMORY[0x1E696A798] code:89 userInfo:v13];

LABEL_5:
      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (event)
    {
      *event = v28[5];
    }

    LOBYTE(error) = 1;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  v14 = *MEMORY[0x1E69E9840];
  return error;
}

void __70__AWAttentionAwarenessClient_pollForAttentionWithTimeout_event_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ((a2 - 2) < 2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    if (a2 == 1)
    {
      goto LABEL_7;
    }

    v7 = v6;
    if (a2 == 4)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v6 = v7;
LABEL_7:
}

- (BOOL)pollForAttentionWithTimeout:(double)timeout queue:(id)queue block:(id)block error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy)
  {
    __assert_rtn("[AWAttentionAwarenessClient pollForAttentionWithTimeout:queue:block:error:]", "FrameworkClient.m", 279, "queue");
  }

  v12 = blockCopy;
  if (!blockCopy)
  {
    __assert_rtn("[AWAttentionAwarenessClient pollForAttentionWithTimeout:queue:block:error:]", "FrameworkClient.m", 280, "block");
  }

  timeoutCopy = 3153600000.0;
  if (timeout <= 3153600000.0)
  {
    timeoutCopy = timeout;
  }

  if (timeoutCopy > 1.84467441e19)
  {
    v14 = -1;
  }

  else
  {
    v14 = (timeoutCopy * 1000000000.0);
  }

  if (v14 <= 0)
  {
    if (!error)
    {
      v17 = 0;
      goto LABEL_17;
    }

    v19 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33[0] = @" Timeout less than 0 is invalid";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v19 errorWithDomain:*MEMORY[0x1E696A798] code:34 userInfo:v16];
    *error = v17 = 0;
  }

  else
  {
    v15 = [[AWClientPollWaiter alloc] initWithClient:self timeout:v14 queue:queueCopy block:blockCopy];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__AWAttentionAwarenessClient_pollForAttentionWithTimeout_queue_block_error___block_invoke;
    v24[3] = &unk_1E7F37E38;
    v24[4] = self;
    v16 = v15;
    v25 = v16;
    v26 = &v28;
    v27 = v14;
    v17 = [(AWAttentionAwarenessClient *)self invokeRequiringClient:1 error:error block:v24];
    if (!v17)
    {
      if (*(v29 + 24) == 1)
      {
        queue = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__AWAttentionAwarenessClient_pollForAttentionWithTimeout_queue_block_error___block_invoke_3;
        block[3] = &unk_1E7F38060;
        block[4] = self;
        v23 = v16;
        dispatch_sync(queue, block);
      }

      [(AWClientPollWaiter *)v16 invalidate];
    }

    _Block_object_dispose(&v28, 8);
  }

LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

id __76__AWAttentionAwarenessClient_pollForAttentionWithTimeout_queue_block_error___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = *(v4 + 16);
  v5 = (v4 + 16);
  if (v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @" Polling already going on";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v9 = [v7 errorWithDomain:*MEMORY[0x1E696A798] code:36 userInfo:v8];
  }

  else
  {
    objc_storeStrong(v5, *(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2313;
    v18 = __Block_byref_object_dispose__2314;
    v19 = 0;
    v10 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__AWAttentionAwarenessClient_pollForAttentionWithTimeout_queue_block_error___block_invoke_2;
    v13[3] = &unk_1E7F37D00;
    v13[4] = &v14;
    [v3 pollWithTimeout:v10 reply:v13];
    v9 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

void __76__AWAttentionAwarenessClient_pollForAttentionWithTimeout_queue_block_error___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  if (v3 == v2)
  {
    *(v1 + 16) = 0;
  }
}

- (void)setEventStreamerWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy)
  {
    __assert_rtn("[AWAttentionAwarenessClient setEventStreamerWithQueue:block:]", "FrameworkClient.m", 263, "queue");
  }

  if (!blockCopy)
  {
    __assert_rtn("[AWAttentionAwarenessClient setEventStreamerWithQueue:block:]", "FrameworkClient.m", 264, "block");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AWAttentionAwarenessClient_setEventStreamerWithQueue_block___block_invoke;
  block[3] = &unk_1E7F37E10;
  block[4] = self;
  v12 = queueCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = queueCopy;
  dispatch_sync(queue, block);
}

uint64_t __62__AWAttentionAwarenessClient_setEventStreamerWithQueue_block___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.AttentionAwareness.clientStreamingQueue", 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  dispatch_set_target_queue(*(*(a1 + 32) + 80), *(a1 + 40));
  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (void)setEventHandlerWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy)
  {
    __assert_rtn("[AWAttentionAwarenessClient setEventHandlerWithQueue:block:]", "FrameworkClient.m", 248, "queue");
  }

  if (!blockCopy)
  {
    __assert_rtn("[AWAttentionAwarenessClient setEventHandlerWithQueue:block:]", "FrameworkClient.m", 249, "block");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AWAttentionAwarenessClient_setEventHandlerWithQueue_block___block_invoke;
  block[3] = &unk_1E7F37E10;
  block[4] = self;
  v12 = queueCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = queueCopy;
  dispatch_sync(queue, block);
}

uint64_t __61__AWAttentionAwarenessClient_setEventHandlerWithQueue_block___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 40) & 1) == 0)
  {
    v2 = result;
    v3 = dispatch_queue_create("com.apple.AttentionAwareness.clientEventQueue", 0);
    v4 = *(v2 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    dispatch_set_target_queue(*(*(v2 + 32) + 64), *(v2 + 40));
    v6 = [*(v2 + 48) copy];
    v7 = *(v2 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

- (void)setNotificationHandlerWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy)
  {
    __assert_rtn("[AWAttentionAwarenessClient setNotificationHandlerWithQueue:block:]", "FrameworkClient.m", 233, "queue");
  }

  if (!blockCopy)
  {
    __assert_rtn("[AWAttentionAwarenessClient setNotificationHandlerWithQueue:block:]", "FrameworkClient.m", 234, "block");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AWAttentionAwarenessClient_setNotificationHandlerWithQueue_block___block_invoke;
  block[3] = &unk_1E7F37E10;
  block[4] = self;
  v12 = queueCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = queueCopy;
  dispatch_sync(queue, block);
}

uint64_t __68__AWAttentionAwarenessClient_setNotificationHandlerWithQueue_block___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 40) & 1) == 0)
  {
    v2 = result;
    v3 = dispatch_queue_create("com.apple.AttentionAwareness.clientNotificationQueue", 0);
    v4 = *(v2 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    dispatch_set_target_queue(*(*(v2 + 32) + 48), *(v2 + 40));
    v6 = [*(v2 + 48) copy];
    v7 = *(v2 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

id __65__AWAttentionAwarenessClient_resetAttentionLostTimeoutWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2313;
  v10 = __Block_byref_object_dispose__2314;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AWAttentionAwarenessClient_resetAttentionLostTimeoutWithError___block_invoke_2;
  v5[3] = &unk_1E7F37D00;
  v5[4] = &v6;
  [v2 resetAttentionLostTimerWithReply:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (AWAttentionEvent)lastEvent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2313;
  v9 = __Block_byref_object_dispose__2314;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__AWAttentionAwarenessClient_lastEvent__block_invoke;
  v4[3] = &unk_1E7F37DC8;
  v4[4] = self;
  v4[5] = &v5;
  [(AWAttentionAwarenessClient *)self invokeRequiringClient:1 error:0 block:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __39__AWAttentionAwarenessClient_lastEvent__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__AWAttentionAwarenessClient_lastEvent__block_invoke_2;
  v4[3] = &unk_1E7F37DA0;
  v4[4] = *(a1 + 40);
  [a2 getLastEvent:v4];
  [*(*(*(a1 + 40) + 8) + 40) updateWithConfig:*(*(a1 + 32) + 96)];
  return 0;
}

- (BOOL)invokeRequiringClient:(BOOL)client error:(id *)error block:(id)block
{
  blockCopy = block;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2313;
  v23 = __Block_byref_object_dispose__2314;
  v24 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AWAttentionAwarenessClient_invokeRequiringClient_error_block___block_invoke;
  block[3] = &unk_1E7F37D78;
  v16 = &v25;
  v17 = &v19;
  block[4] = self;
  clientCopy = client;
  v10 = blockCopy;
  v15 = v10;
  dispatch_sync(queue, block);
  if (error)
  {
    v11 = v20[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __64__AWAttentionAwarenessClient_invokeRequiringClient_error_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [*(a1 + 32) _invokeRequiringClient:v2 error:&obj block:*(a1 + 40)];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (BOOL)_invokeRequiringClient:(BOOL)client error:(id *)error block:(id)block
{
  clientCopy = client;
  v50[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidated)
  {
    v9 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v50[0] = @" Client is already invalid";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v11 = [v9 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v10];

    goto LABEL_3;
  }

  if (clientCopy)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__2313;
    v41 = __Block_byref_object_dispose__2314;
    v42 = 0;
    remoteClientProxy = self->_remoteClientProxy;
    if (remoteClientProxy)
    {
      v13 = MEMORY[0x1E69E9820];
      v35 = *MEMORY[0x1E696A250];
      v14 = 1;
      while (1)
      {
        v36[0] = v13;
        v36[1] = 3221225472;
        v36[2] = __65__AWAttentionAwarenessClient__invokeRequiringClient_error_block___block_invoke;
        v36[3] = &unk_1E7F37D00;
        v36[4] = &v37;
        v15 = [(NSXPCProxyCreating *)remoteClientProxy synchronousRemoteObjectProxyWithErrorHandler:v36];
        v11 = blockCopy[2](blockCopy, v15);
        if (v11)
        {
          break;
        }

        v16 = v38[5];
        if (!v16)
        {
          goto LABEL_38;
        }

        if (currentLogLevel >= 3)
        {
          v17 = _AALog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v22 = absTimeNS();
            if (v22 == -1)
            {
              v23 = INFINITY;
            }

            else
            {
              v23 = v22 / 1000000000.0;
            }

            v26 = v38[5];
            *buf = 134218242;
            v46 = v23;
            v47 = 2112;
            v48[0] = v26;
            _os_log_error_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_ERROR, "%13.5f: XPC proxy error: %@", buf, 0x16u);
          }

          v16 = v38[5];
        }

        domain = [v16 domain];
        if (domain != v35 || [v38[5] code] != 4099)
        {

LABEL_38:
          goto LABEL_39;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_38;
        }

        v19 = [(AWAttentionAwarenessClient *)self connect:1];
        if (currentLogLevel >= 3)
        {
          v20 = _AALog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v24 = absTimeNS();
            if (v24 == -1)
            {
              v25 = INFINITY;
            }

            else
            {
              v25 = v24 / 1000000000.0;
            }

            v27 = @"succeeded";
            if (v19)
            {
              v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed: %@", v19];
              v27 = v34;
            }

            *buf = 134218498;
            v46 = v25;
            v47 = 1024;
            LODWORD(v48[0]) = 1;
            WORD2(v48[0]) = 2112;
            *(v48 + 6) = v27;
            _os_log_error_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_ERROR, "%13.5f: XPC proxy invalid: reconnect %u %@", buf, 0x1Cu);
            if (v19)
            {
            }
          }
        }

        v21 = v38[5];
        v38[5] = 0;

        v14 = 0;
        remoteClientProxy = self->_remoteClientProxy;
        if (!remoteClientProxy)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_35:
      v31 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44 = @" Not connected to server";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v11 = [v31 errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:v32];

      if (!v11)
      {
LABEL_39:
        v33 = v38[5];
        if (v33)
        {
          v11 = v33;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    _Block_object_dispose(&v37, 8);

LABEL_3:
    if (!error)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v11 = blockCopy[2](blockCopy, 0);
  if (error)
  {
LABEL_33:
    v28 = v11;
    *error = v11;
  }

LABEL_34:

  v29 = *MEMORY[0x1E69E9840];
  return v11 == 0;
}

- (BOOL)setConfiguration:(id)configuration shouldReset:(BOOL)reset error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v9 = configurationCopy;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2313;
  v30 = __Block_byref_object_dispose__2314;
  v31 = 0;
  if (configurationCopy)
  {
    obj = 0;
    v10 = [configurationCopy validateWithError:&obj];
    objc_storeStrong(&v31, obj);
    if (v10)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__AWAttentionAwarenessClient_setConfiguration_shouldReset_error___block_invoke;
      block[3] = &unk_1E7F37D50;
      block[4] = self;
      v21 = v9;
      v22 = &v26;
      resetCopy = reset;
      v23 = &v32;
      dispatch_sync(queue, block);
    }
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37[0] = @" NIL identifer not allowed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v14 = [v12 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v13];
    v15 = v27[5];
    v27[5] = v14;
  }

  if (error)
  {
    v16 = v27[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v33 + 24);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void __65__AWAttentionAwarenessClient_setConfiguration_shouldReset_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 40) & 1) == 0)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;

    v5 = *(a1 + 32);
    if (v5[3])
    {
      v6 = *(*(a1 + 48) + 8);
      obj = *(v6 + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __65__AWAttentionAwarenessClient_setConfiguration_shouldReset_error___block_invoke_2;
      v13[3] = &unk_1E7F37D28;
      v13[4] = v5;
      v14 = *(a1 + 64);
      v7 = [v5 _invokeRequiringClient:1 error:&obj block:v13];
      objc_storeStrong((v6 + 40), obj);
      if (v7)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      else if (currentLogLevel >= 3)
      {
        v8 = _AALog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = absTimeNS();
          if (v10 == -1)
          {
            v11 = INFINITY;
          }

          else
          {
            v11 = v10 / 1000000000.0;
          }

          v12 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 134218242;
          v17 = v11;
          v18 = 2112;
          v19 = v12;
          _os_log_error_impl(&dword_1BB2EF000, v8, OS_LOG_TYPE_ERROR, "%13.5f: setClientConfig failed: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

id __65__AWAttentionAwarenessClient_setConfiguration_shouldReset_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2313;
  v13 = __Block_byref_object_dispose__2314;
  v14 = 0;
  v4 = *(*(a1 + 32) + 96);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__AWAttentionAwarenessClient_setConfiguration_shouldReset_error___block_invoke_3;
  v8[3] = &unk_1E7F37D00;
  v8[4] = &v9;
  [v3 setClientConfig:v4 shouldReset:v5 reply:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end