@interface AVFoundationUnitTestSession
- (AVFoundationUnitTestSession)init;
- (BOOL)cancelUnitTestStream;
- (BOOL)startUnitTestStream:(id)stream options:(id)options;
- (void)AVFoundationDeliverStreamingEvent;
- (void)initializeStreamingTimer;
- (void)setErrorState:(BOOL)state;
@end

@implementation AVFoundationUnitTestSession

- (void)setErrorState:(BOOL)state
{
  v28 = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __45__AVFoundationUnitTestSession_setErrorState___block_invoke;
  v20[3] = &unk_1E7F37FC8;
  v20[4] = self;
  stateCopy = state;
  dispatch_sync(queue, v20);
  if (currentLogLevel == 5)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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

      errorState = self->_errorState;
      *buf = 134218498;
      if (errorState)
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      v23 = v7;
      v24 = 2112;
      *v25 = self;
      *&v25[8] = 2080;
      *&v25[10] = v13;
      v14 = "%13.5f: UNIT TEST: %@ setting error state to %s";
      v15 = v5;
      v16 = 32;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v8 = i;
      }

      else if (!*(i - 1))
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

        v17 = "false";
        v18 = self->_errorState;
        *buf = 136316162;
        if (v18)
        {
          v17 = "true";
        }

        v23 = *&v8;
        v24 = 1024;
        *v25 = 691;
        *&v25[4] = 2048;
        *&v25[6] = v11;
        *&v25[14] = 2112;
        *&v25[16] = self;
        v26 = 2080;
        v27 = v17;
        v14 = "%30s:%-4d: %13.5f: UNIT TEST: %@ setting error state to %s";
        v15 = v5;
        v16 = 48;
LABEL_24:
        _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_25:

        break;
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)cancelUnitTestStream
{
  dispatch_source_cancel(self->_streamingTimer);
  streamingTimer = self->_streamingTimer;
  self->_streamingTimer = 0;

  return 1;
}

- (BOOL)startUnitTestStream:(id)stream options:(id)options
{
  v31 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__AVFoundationUnitTestSession_startUnitTestStream_options___block_invoke;
  v20[3] = &unk_1E7F37F00;
  v20[4] = self;
  v20[5] = &v21;
  dispatch_sync(queue, v20);
  v7 = *(v22 + 24);
  if (v7 == 1)
  {
    if (currentLogLevel == 5)
    {
      v8 = _AALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = absTimeNS();
        if (v9 == -1)
        {
          v10 = INFINITY;
        }

        else
        {
          v10 = v9 / 1000000000.0;
        }

        *buf = 134217984;
        v26 = v10;
        v15 = "%13.5f: UNIT TEST: Not starting an AVFoundation streaming operation because of error state";
        v16 = v8;
        v17 = 12;
LABEL_21:
        _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }

LABEL_22:

      goto LABEL_23;
    }

    if (currentLogLevel >= 6)
    {
      v8 = _AALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v11 = i;
          }

          else if (!*(i - 1))
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

            *buf = 136315650;
            v26 = *&v11;
            v27 = 1024;
            v28 = 670;
            v29 = 2048;
            v30 = v14;
            v15 = "%30s:%-4d: %13.5f: UNIT TEST: Not starting an AVFoundation streaming operation because of error state";
            v16 = v8;
            v17 = 28;
            goto LABEL_21;
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    [(AVFoundationUnitTestSession *)self initializeStreamingTimer];
  }

LABEL_23:
  _Block_object_dispose(&v21, 8);

  v18 = *MEMORY[0x1E69E9840];
  return v7 ^ 1;
}

void __59__AVFoundationUnitTestSession_startUnitTestStream_options___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 43);
  if (currentLogLevel == 5)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = absTimeNS();
      if (v3 == -1)
      {
        v4 = INFINITY;
      }

      else
      {
        v4 = v3 / 1000000000.0;
      }

      v9 = *(a1 + 32);
      v10 = "false";
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }

      if (*(v9 + 43))
      {
        v10 = "true";
      }

      v19 = 134218754;
      v20 = v4;
      v21 = 2112;
      *v22 = v9;
      *&v22[8] = 2080;
      *&v22[10] = v11;
      *&v22[18] = 2080;
      *&v22[20] = v10;
      v12 = "%13.5f: UNIT TEST: startUnitTestStream called for %@, localErrorState: %s _errorState: %s";
      v13 = v2;
      v14 = 42;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (currentLogLevel >= 6)
  {
    v2 = _AALog();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v5 = i;
      }

      else if (!*(i - 1))
      {
        v7 = absTimeNS();
        if (v7 == -1)
        {
          v8 = INFINITY;
        }

        else
        {
          v8 = v7 / 1000000000.0;
        }

        v15 = *(a1 + 32);
        v16 = "false";
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          v17 = "true";
        }

        else
        {
          v17 = "false";
        }

        if (*(v15 + 43))
        {
          v16 = "true";
        }

        v19 = 136316418;
        v20 = *&v5;
        v21 = 1024;
        *v22 = 665;
        *&v22[4] = 2048;
        *&v22[6] = v8;
        *&v22[14] = 2112;
        *&v22[16] = v15;
        *&v22[24] = 2080;
        *&v22[26] = v17;
        v23 = 2080;
        v24 = v16;
        v12 = "%30s:%-4d: %13.5f: UNIT TEST: startUnitTestStream called for %@, localErrorState: %s _errorState: %s";
        v13 = v2;
        v14 = 58;
LABEL_29:
        _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v19, v14);
LABEL_30:

        break;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)AVFoundationDeliverStreamingEvent
{
  v15 = *MEMORY[0x1E69E9840];
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

      *v14 = 134217984;
      *&v14[4] = v5;
      v10 = "%13.5f: UNIT TEST: Delivering streaming event for AVFoundation";
      v11 = v3;
      v12 = 12;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, v10, v14, v12);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m"; ; ++i)
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

          *v14 = 136315650;
          *&v14[4] = v6;
          *&v14[12] = 1024;
          *&v14[14] = 649;
          *&v14[18] = 2048;
          *&v14[20] = v9;
          v10 = "%30s:%-4d: %13.5f: UNIT TEST: Delivering streaming event for AVFoundation";
          v11 = v3;
          v12 = 28;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  [(AVFoundationUnitTestEventReceiving *)self->_delegate receiveStreamingEvent:*v14];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)initializeStreamingTimer
{
  objc_initWeak(&location, self);
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  streamingTimer = self->_streamingTimer;
  self->_streamingTimer = v3;

  v5 = self->_streamingTimer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AVFoundationUnitTestSession_initializeStreamingTimer__block_invoke;
  v6[3] = &unk_1E7F37AF8;
  objc_copyWeak(&v7, &location);
  dispatch_source_set_event_handler(v5, v6);
  dispatch_source_set_timer(self->_streamingTimer, 0, 0x1DCD6500uLL, 0x3B9ACA00uLL);
  dispatch_resume(self->_streamingTimer);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__AVFoundationUnitTestSession_initializeStreamingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained AVFoundationDeliverStreamingEvent];
}

- (AVFoundationUnitTestSession)init
{
  v26 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AVFoundationUnitTestSession;
  v2 = [(AVFoundationUnitTestSession *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AttentionAwareness.AVFoundationUnitTestSession", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    delegate = v2->_delegate;
    v2->_delegate = 0;

    eventDeliveryQueue = v2->_eventDeliveryQueue;
    v2->_eventDeliveryQueue = 0;

    *&v2->_currentOptions.AWAttentionStreamerActivateEyeRelief = 0;
    v2->_errorState = 0;
  }

  if (currentLogLevel == 5)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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

      *buf = 134218242;
      v21 = v9;
      v22 = 2112;
      *v23 = v2;
      v14 = "%13.5f: UNIT TEST: Initializing AVFoundationUnitTestSession %@";
      v15 = v7;
      v16 = 22;
LABEL_21:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (currentLogLevel >= 6)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v10 = i;
        }

        else if (!*(i - 1))
        {
          v12 = absTimeNS();
          if (v12 == -1)
          {
            v13 = INFINITY;
          }

          else
          {
            v13 = v12 / 1000000000.0;
          }

          *buf = 136315906;
          v21 = *&v10;
          v22 = 1024;
          *v23 = 631;
          *&v23[4] = 2048;
          *&v23[6] = v13;
          v24 = 2112;
          v25 = v2;
          v14 = "%30s:%-4d: %13.5f: UNIT TEST: Initializing AVFoundationUnitTestSession %@";
          v15 = v7;
          v16 = 38;
          goto LABEL_21;
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

@end