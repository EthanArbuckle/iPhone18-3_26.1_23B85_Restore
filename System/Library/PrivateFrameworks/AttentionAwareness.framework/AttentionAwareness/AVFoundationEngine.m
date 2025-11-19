@interface AVFoundationEngine
+ (id)sharedEngine;
- (AVFoundationEngine)initWithQueue:(id)a3;
- (BOOL)isOperationActive:(id)a3;
- (BOOL)unregisterForOperation:(id)a3;
- (id)startOperationForReceiver:(id)a3 reply:(id)a4;
- (void)_startSession;
- (void)_stopSession;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 forMetadataObjectTypes:(id)a5 fromConnection:(id)a6;
- (void)handleNotification:(id)a3 notification:(id)a4;
- (void)setupNotificationsForCenter;
@end

@implementation AVFoundationEngine

- (void)_stopSession
{
  dispatch_assert_queue_V2(self->_sessionQueue);
  [(AVCaptureSession *)self->_session stopRunning];
  self->_sessionRunning = 0;
}

- (void)_startSession
{
  dispatch_assert_queue_V2(self->_sessionQueue);
  [(AVCaptureSession *)self->_session startRunning];
  self->_sessionRunning = 1;
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 forMetadataObjectTypes:(id)a5 fromConnection:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_spoofedNotification)
  {
    [(AVFoundationEngine *)self handleNotification:*MEMORY[0x1E6986A90] notification:0];
    self->_spoofedNotification = 1;
  }

  v10 = [v8 count];
  if (!v9 || v10)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v8;
    v18 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v11);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          receivers = self->_receivers;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __99__AVFoundationEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke_68;
          v25[3] = &unk_1E7F378A0;
          v25[4] = v22;
          v25[5] = self;
          [(NSMutableDictionary *)receivers enumerateKeysAndObjectsUsingBlock:v25];
        }

        v19 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * j);
          v17 = self->_receivers;
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __99__AVFoundationEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke;
          v30[3] = &unk_1E7F378A0;
          v30[4] = v16;
          v30[5] = self;
          [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v30];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __99__AVFoundationEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 receiver];
  if ([v4 activateAttentionDetection])
  {
    v6 = *MEMORY[0x1E6986FE8];
    if (*(a1 + 32) == *MEMORY[0x1E6986FE8])
    {
      if ([v4 running])
      {
        if ((*(*(a1 + 40) + 85) & 1) == 0)
        {
          v7 = _AALog();
          v8 = _AALog();
          v9 = os_signpost_id_generate(v8);

          if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v7, OS_SIGNPOST_EVENT, v9, "AA - Received frame of face detect data", &unk_1BB32C3F2, buf, 2u);
          }

          *(*(a1 + 40) + 85) = 1;
        }

        [v5 receiveMetadata:0 type:v6];
      }
    }
  }

  if ([v4 activateEyeRelief])
  {
    v10 = *MEMORY[0x1E6986FE0];
    if (*(a1 + 32) == *MEMORY[0x1E6986FE0])
    {
      if ([v4 running])
      {
        if ((*(*(a1 + 40) + 85) & 1) == 0)
        {
          v11 = _AALog();
          v12 = _AALog();
          v13 = os_signpost_id_generate(v12);

          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
          {
            *v14 = 0;
            _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v11, OS_SIGNPOST_EVENT, v13, "AA - Received frame of EyeRelief data", &unk_1BB32C3F2, v14, 2u);
          }

          *(*(a1 + 40) + 85) = 1;
        }

        [v5 receiveMetadata:0 type:v10];
      }
    }
  }
}

void __99__AVFoundationEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke_68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 receiver];
  if ([v4 activateAttentionDetection])
  {
    v6 = [*(a1 + 32) type];
    v7 = v6;
    v8 = *MEMORY[0x1E6986FE8];
    if (v6 == *MEMORY[0x1E6986FE8])
    {
      v9 = [v4 running];

      if (v9)
      {
        if ((*(*(a1 + 40) + 85) & 1) == 0)
        {
          v10 = _AALog();
          v11 = _AALog();
          v12 = os_signpost_id_generate(v11);

          if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v10, OS_SIGNPOST_EVENT, v12, "AA - Received frame of face detect data", &unk_1BB32C3F2, buf, 2u);
          }

          *(*(a1 + 40) + 85) = 1;
        }

        [v5 receiveMetadata:*(a1 + 32) type:v8];
      }
    }

    else
    {
    }
  }

  if ([v4 activateEyeRelief])
  {
    v13 = [*(a1 + 32) type];
    v14 = v13;
    v15 = *MEMORY[0x1E6986FE0];
    if (v13 == *MEMORY[0x1E6986FE0])
    {
      v16 = [v4 running];

      if (v16)
      {
        if ((*(*(a1 + 40) + 85) & 1) == 0)
        {
          v17 = _AALog();
          v18 = _AALog();
          v19 = os_signpost_id_generate(v18);

          if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
          {
            *v20 = 0;
            _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v17, OS_SIGNPOST_EVENT, v19, "AA - Received frame of EyeRelief data", &unk_1BB32C3F2, v20, 2u);
          }

          *(*(a1 + 40) + 85) = 1;
        }

        [v5 receiveMetadata:*(a1 + 32) type:v15];
      }
    }

    else
    {
    }
  }
}

- (void)handleNotification:(id)a3 notification:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  receivers = self->_receivers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AVFoundationEngine_handleNotification_notification___block_invoke;
  v11[3] = &unk_1E7F37878;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(NSMutableDictionary *)receivers enumerateKeysAndObjectsUsingBlock:v11];
}

void __54__AVFoundationEngine_handleNotification_notification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 receiver];
  if ([*(a1 + 32) isEqual:*MEMORY[0x1E6986B28]])
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AVFoundationEngine_handleNotification_notification___block_invoke_2;
    block[3] = &unk_1E7F38038;
    block[4] = v5;
    dispatch_async(v6, block);
  }

  [v4 receiveNotificationOfName:*(a1 + 32) notification:*(a1 + 48)];
}

uint64_t __54__AVFoundationEngine_handleNotification_notification___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 32) isRunning];
  if ((result & 1) == 0)
  {
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
        v10 = "%13.5f: Session was interrupted before it got started, calling stop on the session immediately";
        v11 = v3;
        v12 = 12;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, v10, v14, v12);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        result = [*(a1 + 32) _stopSession];
        goto LABEL_23;
      }

      v3 = _AALog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m"; ; ++i)
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
            *&v14[14] = 409;
            *&v14[18] = 2048;
            *&v14[20] = v9;
            v10 = "%30s:%-4d: %13.5f: Session was interrupted before it got started, calling stop on the session immediately";
            v11 = v3;
            v12 = 28;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setupNotificationsForCenter
{
  objc_initWeak(&location, self);
  notificationCenter = self->_notificationCenter;
  v4 = *MEMORY[0x1E6986B20];
  session = self->_session;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke;
  v31[3] = &unk_1E7F37850;
  objc_copyWeak(&v32, &location);
  v6 = [(NSNotificationCenter *)notificationCenter addObserverForName:v4 object:session queue:0 usingBlock:v31];
  v7 = self->_notificationCenter;
  v8 = *MEMORY[0x1E6986A90];
  v9 = self->_session;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_3;
  v29[3] = &unk_1E7F37850;
  objc_copyWeak(&v30, &location);
  v10 = [(NSNotificationCenter *)v7 addObserverForName:v8 object:v9 queue:0 usingBlock:v29];
  v11 = self->_notificationCenter;
  v12 = *MEMORY[0x1E6986A98];
  v13 = self->_session;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_2_64;
  v27[3] = &unk_1E7F37850;
  objc_copyWeak(&v28, &location);
  v14 = [(NSNotificationCenter *)v11 addObserverForName:v12 object:v13 queue:0 usingBlock:v27];
  v15 = self->_notificationCenter;
  v16 = *MEMORY[0x1E6986B28];
  v17 = self->_session;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_2_66;
  v25[3] = &unk_1E7F37850;
  objc_copyWeak(&v26, &location);
  v18 = [(NSNotificationCenter *)v15 addObserverForName:v16 object:v17 queue:0 usingBlock:v25];
  v19 = self->_notificationCenter;
  v20 = *MEMORY[0x1E6986AA8];
  v21 = self->_session;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_4;
  v23[3] = &unk_1E7F37850;
  objc_copyWeak(&v24, &location);
  v22 = [(NSNotificationCenter *)v19 addObserverForName:v20 object:v21 queue:0 usingBlock:v23];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _getQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_2;
  v7[3] = &unk_1E7F37910;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (currentLogLevel == 5)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = absTimeNS();
      if (v5 == -1)
      {
        v6 = INFINITY;
      }

      else
      {
        v6 = v5 / 1000000000.0;
      }

      *buf = 134217984;
      v22 = v6;
      v11 = "%13.5f: Session STARTED running!";
      v12 = v4;
      v13 = 12;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v7 = i;
        }

        else if (!*(i - 1))
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

          *buf = 136315650;
          v22 = *&v7;
          v23 = 1024;
          v24 = 367;
          v25 = 2048;
          v26 = v10;
          v11 = "%30s:%-4d: %13.5f: Session STARTED running!";
          v12 = v4;
          v13 = 28;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = [WeakRetained _getQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_63;
  v18[3] = &unk_1E7F37910;
  objc_copyWeak(&v20, (a1 + 32));
  v19 = v3;
  v16 = v3;
  dispatch_async(v15, v18);

  objc_destroyWeak(&v20);
  v17 = *MEMORY[0x1E69E9840];
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_2_64(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (currentLogLevel == 5)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = absTimeNS();
      if (v5 == -1)
      {
        v6 = INFINITY;
      }

      else
      {
        v6 = v5 / 1000000000.0;
      }

      *buf = 134217984;
      v22 = v6;
      v11 = "%13.5f: Session STOPPED running!";
      v12 = v4;
      v13 = 12;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v7 = i;
        }

        else if (!*(i - 1))
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

          *buf = 136315650;
          v22 = *&v7;
          v23 = 1024;
          v24 = 374;
          v25 = 2048;
          v26 = v10;
          v11 = "%30s:%-4d: %13.5f: Session STOPPED running!";
          v12 = v4;
          v13 = 28;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = [WeakRetained _getQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_65;
  v18[3] = &unk_1E7F37910;
  objc_copyWeak(&v20, (a1 + 32));
  v19 = v3;
  v16 = v3;
  dispatch_async(v15, v18);

  objc_destroyWeak(&v20);
  v17 = *MEMORY[0x1E69E9840];
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_2_66(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _getQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_3_67;
  v7[3] = &unk_1E7F37910;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _getQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_5;
  v7[3] = &unk_1E7F37910;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleNotification:*MEMORY[0x1E6986AA8] notification:*(a1 + 32)];
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_3_67(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleNotification:*MEMORY[0x1E6986B28] notification:*(a1 + 32)];
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleNotification:*MEMORY[0x1E6986A98] notification:*(a1 + 32)];
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleNotification:*MEMORY[0x1E6986A90] notification:*(a1 + 32)];
}

void __49__AVFoundationEngine_setupNotificationsForCenter__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleNotification:*MEMORY[0x1E6986B20] notification:*(a1 + 32)];
}

- (id)startOperationForReceiver:(id)a3 reply:(id)a4
{
  v78[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__1031;
  v57[4] = __Block_byref_object_dispose__1032;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__1031;
  v55[4] = __Block_byref_object_dispose__1032;
  v56 = [MEMORY[0x1E695DF70] array];
  receivers = self->_receivers;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __54__AVFoundationEngine_startOperationForReceiver_reply___block_invoke;
  v54[3] = &unk_1E7F377D8;
  v54[4] = self;
  v54[5] = &v67;
  v54[6] = &v63;
  [(NSMutableDictionary *)receivers enumerateKeysAndObjectsUsingBlock:v54];
  v9 = [(NSMutableDictionary *)self->_receivers objectForKey:v6];
  v10 = [v9 running];

  if (v10)
  {
    v11 = v68;
    v12 = *(v68 + 24);
    v13 = v64;
    if (self->_shouldRunEyeRelief == v12 && self->_shouldRunAttentionDetect == *(v64 + 24))
    {
      [(NSMutableDictionary *)self->_receivers removeObjectForKey:v6];
      v14 = MEMORY[0x1E696ABC0];
      v77 = *MEMORY[0x1E696A578];
      v78[0] = @" Client already started an operation with the same options";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
      v16 = [v14 errorWithDomain:*MEMORY[0x1E696A798] code:17 userInfo:v15];

      goto LABEL_17;
    }

    self->_shouldRunEyeRelief = v12;
    self->_shouldRunAttentionDetect = *(v13 + 24);
    *(v60 + 24) = 1;
    goto LABEL_15;
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v17 = self->_receivers;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __54__AVFoundationEngine_startOperationForReceiver_reply___block_invoke_2;
  v49[3] = &unk_1E7F37800;
  v49[4] = &v50;
  [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v49];
  if (*(v51 + 24) == 1)
  {
    if (self->_shouldRunEyeRelief == *(v68 + 24) && self->_shouldRunAttentionDetect == *(v64 + 24))
    {
      if (currentLogLevel == 5)
      {
        v18 = _AALog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = absTimeNS();
          if (v19 == -1)
          {
            v20 = INFINITY;
          }

          else
          {
            v20 = v19 / 1000000000.0;
          }

          *buf = 134218242;
          v72 = v20;
          v73 = 2112;
          *v74 = v6;
          v29 = "%13.5f: Session that is already running has the same options that was requested by %@, not restarting session";
          v30 = v18;
          v31 = 22;
LABEL_34:
          _os_log_impl(&dword_1BB2EF000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
LABEL_36:
          v32 = [(NSMutableDictionary *)self->_receivers objectForKey:v6];
          [v32 setRunning:1];
          sessionQueue = self->_sessionQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __54__AVFoundationEngine_startOperationForReceiver_reply___block_invoke_54;
          block[3] = &unk_1E7F37A20;
          block[4] = self;
          v48 = v57;
          v47 = v7;
          dispatch_async(sessionQueue, block);
          v34 = [v32 receiver];
          [v34 receiveNotificationOfName:*MEMORY[0x1E6986A90] notification:0];

          _Block_object_dispose(&v50, 8);
          goto LABEL_16;
        }

        v18 = _AALog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m"; ; ++i)
          {
            if (*(i - 1) == 47)
            {
              v25 = i;
            }

            else if (!*(i - 1))
            {
              v27 = absTimeNS();
              if (v27 == -1)
              {
                v28 = INFINITY;
              }

              else
              {
                v28 = v27 / 1000000000.0;
              }

              *buf = 136315906;
              v72 = *&v25;
              v73 = 1024;
              *v74 = 266;
              *&v74[4] = 2048;
              *&v74[6] = v28;
              v75 = 2112;
              v76 = v6;
              v29 = "%30s:%-4d: %13.5f: Session that is already running has the same options that was requested by %@, not restarting session";
              v30 = v18;
              v31 = 38;
              goto LABEL_34;
            }
          }
        }
      }

      goto LABEL_36;
    }

    *(v60 + 24) = 1;
  }

  _Block_object_dispose(&v50, 8);
  v11 = v68;
  v13 = v64;
LABEL_15:
  self->_shouldRunEyeRelief = *(v11 + 24);
  self->_shouldRunAttentionDetect = *(v13 + 24);
  v21 = self->_sessionQueue;
  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = __54__AVFoundationEngine_startOperationForReceiver_reply___block_invoke_2_58;
  v38 = &unk_1E7F37828;
  v41 = &v59;
  v39 = self;
  v42 = &v67;
  v43 = v55;
  v44 = &v63;
  v45 = v57;
  v40 = v7;
  dispatch_async(v21, &v35);
  v22 = [(NSMutableDictionary *)self->_receivers objectForKey:v6, v35, v36, v37, v38, v39];
  [v22 setRunning:1];

LABEL_16:
  v16 = 0;
LABEL_17:
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);

  v23 = *MEMORY[0x1E69E9840];

  return v16;
}

void __54__AVFoundationEngine_startOperationForReceiver_reply___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(a1[5] + 8) + 24) |= [v4 activateEyeRelief];
  if (*(a1[4] + 83) == 1)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    *(*(a1[6] + 8) + 24) |= [v4 activateAttentionDetection];
  }
}

uint64_t __54__AVFoundationEngine_startOperationForReceiver_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 running];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t __54__AVFoundationEngine_startOperationForReceiver_reply___block_invoke_54(uint64_t result)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 86) & 1) == 0)
  {
    v1 = result;
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E696A798];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Session was not Running";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v2 errorWithDomain:v3 code:1 userInfo:v4];
    v6 = *(*(v1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(*(v1 + 48) + 8) + 40);
    result = (*(*(v1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __54__AVFoundationEngine_startOperationForReceiver_reply___block_invoke_2_58(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
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

        *buf = 134217984;
        *&buf[4] = v4;
        v9 = "%13.5f: Options have changed, restarting AVFCapture session with new options";
        v10 = v2;
        v11 = 12;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        [*(a1 + 32) _stopSession];
        goto LABEL_23;
      }

      v2 = _AALog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m"; ; ++i)
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

            *buf = 136315650;
            *&buf[4] = v5;
            *&buf[12] = 1024;
            *&buf[14] = 297;
            *&buf[18] = 2048;
            *&buf[20] = v8;
            v9 = "%30s:%-4d: %13.5f: Options have changed, restarting AVFCapture session with new options";
            v10 = v2;
            v11 = 28;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(*(*(a1 + 64) + 8) + 40) addObject:*MEMORY[0x1E6986FE0]];
  }

  v12 = *(*(*(a1 + 72) + 8) + 24);
  v13 = *(*(a1 + 32) + 48);
  v14 = [v13 isAttentionDetectionSupported];
  if (v12 == 1)
  {
    if (v14)
    {
      [v13 setAttentionDetectionEnabled:1];
    }

    [*(*(*(a1 + 64) + 8) + 40) addObject:*MEMORY[0x1E6986FE8]];
  }

  else
  {
    if (v14)
    {
      [v13 setAttentionDetectionEnabled:0];
    }
  }

  if (currentLogLevel == 5)
  {
    v15 = _AALog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = absTimeNS();
      if (v16 == -1)
      {
        v17 = INFINITY;
      }

      else
      {
        v17 = v16 / 1000000000.0;
      }

      v22 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218242;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      v23 = "%13.5f: Asking for metadata types: %@";
      v24 = v15;
      v25 = 22;
LABEL_50:
      _os_log_impl(&dword_1BB2EF000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_52;
    }

    v15 = _AALog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v18 = j;
        }

        else if (!*(j - 1))
        {
          v20 = absTimeNS();
          if (v20 == -1)
          {
            v21 = INFINITY;
          }

          else
          {
            v21 = v20 / 1000000000.0;
          }

          v26 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 136315906;
          *&buf[4] = v18;
          *&buf[12] = 1024;
          *&buf[14] = 316;
          *&buf[18] = 2048;
          *&buf[20] = v21;
          *&buf[28] = 2112;
          *&buf[30] = v26;
          v23 = "%30s:%-4d: %13.5f: Asking for metadata types: %@";
          v24 = v15;
          v25 = 38;
          goto LABEL_50;
        }
      }
    }
  }

LABEL_52:
  [*(*(a1 + 32) + 48) setMetadataObjectTypes:*(*(*(a1 + 64) + 8) + 40)];
  v27 = *(*(a1 + 32) + 24);
  v28 = *(*(a1 + 80) + 8);
  obj = *(v28 + 40);
  v29 = [v27 lockForConfiguration:&obj];
  objc_storeStrong((v28 + 40), obj);
  if (v29)
  {
    CMTimeMake(&v50, 1, 15);
    v30 = *(*(a1 + 32) + 24);
    *buf = v50;
    [v30 setActiveVideoMinFrameDuration:buf];
    CMTimeMake(&v49, 1, 15);
    v31 = *(*(a1 + 32) + 24);
    *buf = v49;
    [v31 setActiveVideoMaxFrameDuration:buf];
    [*(*(a1 + 32) + 24) unlockForConfiguration];
    *(*(a1 + 32) + 85) = 0;
    v32 = _AALog();
    v33 = _AALog();
    v34 = os_signpost_id_generate(v33);

    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v32, OS_SIGNPOST_EVENT, v34, "AA - Calling startRunning", &unk_1BB32C3F2, buf, 2u);
    }

    result = [*(a1 + 32) _startSession];
  }

  else
  {
    if (currentLogLevel >= 3)
    {
      v36 = _AALog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v45 = absTimeNS();
        if (v45 == -1)
        {
          v46 = INFINITY;
        }

        else
        {
          v46 = v45 / 1000000000.0;
        }

        v47 = *(*(a1 + 32) + 24);
        v48 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 134218498;
        *&buf[4] = v46;
        *&buf[12] = 2112;
        *&buf[14] = v47;
        *&buf[22] = 2112;
        *&buf[24] = v48;
        _os_log_error_impl(&dword_1BB2EF000, v36, OS_LOG_TYPE_ERROR, "%13.5f: Could not lock configuration for device %@ error: %@", buf, 0x20u);
      }
    }

    v37 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A798];
    v52 = *MEMORY[0x1E696A578];
    v53 = @"Could not lock device configuration to set frame rate";
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v40 = [v37 errorWithDomain:v38 code:16 userInfo:v39];
    v41 = *(*(a1 + 80) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    v43 = *(*(*(a1 + 80) + 8) + 40);
    result = (*(*(a1 + 40) + 16))();
  }

  v44 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isOperationActive:(id)a3
{
  if (!self->_session)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)self->_receivers objectForKey:a3];
  v4 = [v3 running];

  return v4;
}

- (BOOL)unregisterForOperation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_receivers objectForKey:v4];

  if (!v5)
  {
    goto LABEL_24;
  }

  [(NSMutableDictionary *)self->_receivers removeObjectForKey:v4];
  if (currentLogLevel == 5)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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

      v13 = [(NSMutableDictionary *)self->_receivers allKeys];
      *buf = 134218498;
      v22 = v8;
      v23 = 2112;
      *v24 = v4;
      *&v24[8] = 2112;
      *&v24[10] = v13;
      v14 = "%13.5f: Unregistering receiver %@, remaining receivers: %@";
      v15 = v6;
      v16 = 32;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_22;
    }

    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationEngine.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v9 = i;
        }

        else if (!*(i - 1))
        {
          v11 = absTimeNS();
          if (v11 == -1)
          {
            v12 = INFINITY;
          }

          else
          {
            v12 = v11 / 1000000000.0;
          }

          v13 = [(NSMutableDictionary *)self->_receivers allKeys];
          *buf = 136316162;
          v22 = *&v9;
          v23 = 1024;
          *v24 = 162;
          *&v24[4] = 2048;
          *&v24[6] = v12;
          *&v24[14] = 2112;
          *&v24[16] = v4;
          v25 = 2112;
          v26 = v13;
          v14 = "%30s:%-4d: %13.5f: Unregistering receiver %@, remaining receivers: %@";
          v15 = v6;
          v16 = 48;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_22:
  if (![(NSMutableDictionary *)self->_receivers count])
  {
    sessionQueue = self->_sessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AVFoundationEngine_unregisterForOperation___block_invoke;
    block[3] = &unk_1E7F38038;
    block[4] = self;
    dispatch_async(sessionQueue, block);
    [(AVFoundationEngine *)self handleNotification:*MEMORY[0x1E6986A98] notification:0];
    self->_spoofedNotification = 0;
  }

LABEL_24:

  v18 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (AVFoundationEngine)initWithQueue:(id)a3
{
  v63[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v56.receiver = self;
  v56.super_class = AVFoundationEngine;
  v6 = [(AVFoundationEngine *)&v56 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_29;
  }

  objc_storeStrong(&v6->_queue, a3);
  v8 = dispatch_queue_create("com.apple.AttentionAwareness.AVCaptureSession", 0);
  sessionQueue = v7->_sessionQueue;
  v7->_sessionQueue = v8;

  v7->_sessionRunning = 0;
  *&v7->_shouldRunAttentionDetect = 0;
  v7->_shouldRunPersonDetection = 0;
  *&v7->_spoofedNotification = 0;
  v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AttentionAwareness"];
  v7->_demoMode = [v10 BOOLForKey:@"demoMode"];
  v11 = *MEMORY[0x1E69875D8];
  v63[0] = *MEMORY[0x1E6986910];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
  if (currentLogLevel == 5)
  {
    v13 = _AALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = absTimeNS();
      if (v14 == -1)
      {
        v15 = INFINITY;
      }

      else
      {
        v15 = v14 / 1000000000.0;
      }

      *buf = 134218498;
      v58 = v15;
      v59 = 2112;
      *v60 = v12;
      *&v60[8] = 2112;
      *&v60[10] = v11;
      v20 = "%13.5f: Looking for device of type %@ and media type %@";
      v21 = v13;
      v22 = 32;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_22;
    }

    v13 = _AALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationHelper.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/AVFoundationEngine/AVFoundationHelper.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v16 = i;
        }

        else if (!*(i - 1))
        {
          v18 = absTimeNS();
          if (v18 == -1)
          {
            v19 = INFINITY;
          }

          else
          {
            v19 = v18 / 1000000000.0;
          }

          *buf = 136316162;
          v58 = *&v16;
          v59 = 1024;
          *v60 = 28;
          *&v60[4] = 2048;
          *&v60[6] = v19;
          *&v60[14] = 2112;
          *&v60[16] = v12;
          v61 = 2112;
          v62 = v11;
          v20 = "%30s:%-4d: %13.5f: Looking for device of type %@ and media type %@";
          v21 = v13;
          v22 = 48;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_22:
  v23 = [MEMORY[0x1E69870A8] discoverySessionWithDeviceTypes:v12 mediaType:v11 position:0];
  v24 = [v23 devices];
  v25 = [v24 firstObject];

  device = v7->_device;
  v7->_device = v25;

  if (!v7->_device)
  {
    if (currentLogLevel >= 3)
    {
      v46 = _AALog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = absTimeNS();
        if (v47 == -1)
        {
          v48 = INFINITY;
        }

        else
        {
          v48 = v47 / 1000000000.0;
        }

        *buf = 134217984;
        v58 = v48;
        v55 = "%13.5f: Unable to obtain device for streaming";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v27 = objc_alloc_init(MEMORY[0x1E6987110]);
  session = v7->_session;
  v7->_session = v27;

  if (!v7->_session)
  {
    if (currentLogLevel >= 3)
    {
      v46 = _AALog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v49 = absTimeNS();
        if (v49 == -1)
        {
          v50 = INFINITY;
        }

        else
        {
          v50 = v49 / 1000000000.0;
        }

        *buf = 134217984;
        v58 = v50;
        v55 = "%13.5f: Unable to obtain session for streaming";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v29 = MEMORY[0x1E69870B0];
  v30 = v7->_device;
  v31 = [[v29 alloc] initWithDevice:v30 error:0];

  input = v7->_input;
  v7->_input = v31;

  if (![(AVCaptureSession *)v7->_session canAddInput:v7->_input])
  {
    if (currentLogLevel >= 3)
    {
      v46 = _AALog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v51 = absTimeNS();
        if (v51 == -1)
        {
          v52 = INFINITY;
        }

        else
        {
          v52 = v51 / 1000000000.0;
        }

        *buf = 134217984;
        v58 = v52;
        v55 = "%13.5f: Unable to add input to session";
        goto LABEL_55;
      }

LABEL_56:
    }

LABEL_57:

    v43 = 0;
    goto LABEL_30;
  }

  [(AVCaptureSession *)v7->_session addInput:v7->_input];
  queue = v7->_queue;
  v34 = v7;
  v35 = queue;
  v36 = objc_alloc_init(MEMORY[0x1E69870D0]);
  v37 = v36;
  if (v35)
  {
    [(AVCaptureMetadataOutput *)v36 setMetadataObjectsDelegate:v34 queue:v35];
  }

  metadataOutput = v34->_metadataOutput;
  v34->_metadataOutput = v37;

  if (![(AVCaptureSession *)v7->_session canAddOutput:v34->_metadataOutput])
  {
    if (currentLogLevel >= 3)
    {
      v46 = _AALog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v53 = absTimeNS();
        if (v53 == -1)
        {
          v54 = INFINITY;
        }

        else
        {
          v54 = v53 / 1000000000.0;
        }

        *buf = 134217984;
        v58 = v54;
        v55 = "%13.5f: Unable to add output to session";
LABEL_55:
        _os_log_error_impl(&dword_1BB2EF000, v46, OS_LOG_TYPE_ERROR, v55, buf, 0xCu);
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    goto LABEL_57;
  }

  [(AVCaptureSession *)v7->_session addOutput:v34->_metadataOutput];
  v39 = [MEMORY[0x1E696AD88] defaultCenter];
  notificationCenter = v34->_notificationCenter;
  v34->_notificationCenter = v39;

  [(AVFoundationEngine *)v34 setupNotificationsForCenter];
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  receivers = v34->_receivers;
  v34->_receivers = v41;

LABEL_29:
  v43 = v7;
LABEL_30:

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

+ (id)sharedEngine
{
  if (sharedEngine_onceToken != -1)
  {
    dispatch_once(&sharedEngine_onceToken, &__block_literal_global_1069);
  }

  v3 = sharedEngine_engine;

  return v3;
}

void __34__AVFoundationEngine_sharedEngine__block_invoke()
{
  v0 = [AVFoundationEngine alloc];
  v3 = awQueue(1);
  v1 = [(AVFoundationEngine *)v0 initWithQueue:v3];
  v2 = sharedEngine_engine;
  sharedEngine_engine = v1;
}

@end