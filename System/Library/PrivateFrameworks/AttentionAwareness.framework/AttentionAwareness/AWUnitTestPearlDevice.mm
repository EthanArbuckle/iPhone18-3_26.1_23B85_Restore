@interface AWUnitTestPearlDevice
+ (id)sharedAVFoundationSession;
+ (id)sharedDevice;
- (AWUnitTestPearlDevice)init;
- (BKDevicePearlDelegate)delegate;
- (id)createPresenceDetectOperationWithError:(id *)error;
- (void)deliverPearlDeviceEvent:(int64_t)event;
- (void)deliverPearlDeviceState:(int64_t)state;
- (void)getStatsWithBlock:(id)block;
- (void)resetStats;
- (void)setCarPlayConnected:(BOOL)connected;
- (void)setCarplayStateChangedCallback:(id)callback;
- (void)setDisplayCallback:(id)callback;
- (void)setDisplayState:(BOOL)state;
- (void)setPearlErrorState:(BOOL)state;
- (void)setSampleState:(BOOL)state deliverEvent:(BOOL)event;
- (void)setSmartCoverCallback:(id)callback;
- (void)setSmartCoverClosed:(BOOL)closed;
@end

@implementation AWUnitTestPearlDevice

- (BKDevicePearlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setPearlErrorState:(BOOL)state
{
  stateCopy = state;
  v27 = *MEMORY[0x1E69E9840];
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

      v12 = "clear";
      if (stateCopy)
      {
        v12 = "set";
      }

      *buf = 134218242;
      v22 = v7;
      v23 = 2080;
      *v24 = v12;
      v13 = "%13.5f: UNIT TEST: %s SAMPLER ERROR";
      v14 = v5;
      v15 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
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

        v16 = "clear";
        *buf = 136315906;
        v22 = *&v8;
        v23 = 1024;
        if (stateCopy)
        {
          v16 = "set";
        }

        *v24 = 922;
        *&v24[4] = 2048;
        *&v24[6] = v11;
        v25 = 2080;
        v26 = v16;
        v13 = "%30s:%-4d: %13.5f: UNIT TEST: %s SAMPLER ERROR";
        v14 = v5;
        v15 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_24:

        break;
      }
    }
  }

  awQueue = self->_awQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__AWUnitTestPearlDevice_setPearlErrorState___block_invoke;
  v19[3] = &unk_1E7F37FC8;
  v19[4] = self;
  v20 = stateCopy;
  dispatch_sync(awQueue, v19);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __44__AWUnitTestPearlDevice_setPearlErrorState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 81) = v1;
  v2 = *(a1 + 32);
  if (*(v2 + 81) == 1)
  {
    [*(v2 + 40) awSetFaceDetectError:1];
    v2 = *(a1 + 32);
    v1 = *(a1 + 40);
  }

  v4 = *(v2 + 72);

  return [v4 setErrorState:v1 & 1];
}

- (void)setCarplayStateChangedCallback:(id)callback
{
  callbackCopy = callback;
  awQueue = self->_awQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AWUnitTestPearlDevice_setCarplayStateChangedCallback___block_invoke;
  v7[3] = &unk_1E7F37F78;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(awQueue, v7);
}

void __56__AWUnitTestPearlDevice_setCarplayStateChangedCallback___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2 = MEMORY[0x1BFB0D030](*(a1 + 40));
  [v1 addObject:v2];
}

- (void)setCarPlayConnected:(BOOL)connected
{
  connectedCopy = connected;
  v27 = *MEMORY[0x1E69E9840];
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

      v12 = "DISCONNECTED";
      if (connectedCopy)
      {
        v12 = "CONNECTED";
      }

      *buf = 134218242;
      v22 = v7;
      v23 = 2080;
      *v24 = v12;
      v13 = "%13.5f: UNIT TEST: set CarPlay connected state: %s";
      v14 = v5;
      v15 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
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

        v16 = "DISCONNECTED";
        *buf = 136315906;
        v22 = *&v8;
        v23 = 1024;
        if (connectedCopy)
        {
          v16 = "CONNECTED";
        }

        *v24 = 898;
        *&v24[4] = 2048;
        *&v24[6] = v11;
        v25 = 2080;
        v26 = v16;
        v13 = "%30s:%-4d: %13.5f: UNIT TEST: set CarPlay connected state: %s";
        v14 = v5;
        v15 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_24:

        break;
      }
    }
  }

  awQueue = self->_awQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__AWUnitTestPearlDevice_setCarPlayConnected___block_invoke;
  v19[3] = &unk_1E7F37FC8;
  v19[4] = self;
  v20 = connectedCopy;
  dispatch_sync(awQueue, v19);
  v18 = *MEMORY[0x1E69E9840];
}

void __45__AWUnitTestPearlDevice_setCarPlayConnected___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(&v14 + 1) + 8 * v6))
        {
          v7 = MEMORY[0x1BFB0D030]();
          v8 = dispatch_get_global_queue(0, 0);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __45__AWUnitTestPearlDevice_setCarPlayConnected___block_invoke_2;
          v11[3] = &unk_1E7F37B48;
          v12 = v7;
          v13 = *(a1 + 40);
          v9 = v7;
          dispatch_async(v8, v11);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setSmartCoverCallback:(id)callback
{
  callbackCopy = callback;
  awQueue = self->_awQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AWUnitTestPearlDevice_setSmartCoverCallback___block_invoke;
  v7[3] = &unk_1E7F37F78;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(awQueue, v7);
}

void __47__AWUnitTestPearlDevice_setSmartCoverCallback___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  v2 = MEMORY[0x1BFB0D030](*(a1 + 40));
  [v1 addObject:v2];
}

- (void)setSmartCoverClosed:(BOOL)closed
{
  closedCopy = closed;
  v27 = *MEMORY[0x1E69E9840];
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

      v12 = "OPEN";
      if (closedCopy)
      {
        v12 = "CLOSED";
      }

      *buf = 134218242;
      v22 = v7;
      v23 = 2080;
      *v24 = v12;
      v13 = "%13.5f: UNIT TEST: set SMART COVER %s";
      v14 = v5;
      v15 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
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

        v16 = "OPEN";
        *buf = 136315906;
        v22 = *&v8;
        v23 = 1024;
        if (closedCopy)
        {
          v16 = "CLOSED";
        }

        *v24 = 860;
        *&v24[4] = 2048;
        *&v24[6] = v11;
        v25 = 2080;
        v26 = v16;
        v13 = "%30s:%-4d: %13.5f: UNIT TEST: set SMART COVER %s";
        v14 = v5;
        v15 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_24:

        break;
      }
    }
  }

  awQueue = self->_awQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__AWUnitTestPearlDevice_setSmartCoverClosed___block_invoke;
  v19[3] = &unk_1E7F37FC8;
  v19[4] = self;
  v20 = closedCopy;
  dispatch_sync(awQueue, v19);
  v18 = *MEMORY[0x1E69E9840];
}

void __45__AWUnitTestPearlDevice_setSmartCoverClosed___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(&v14 + 1) + 8 * v6))
        {
          v7 = MEMORY[0x1BFB0D030]();
          v8 = dispatch_get_global_queue(0, 0);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __45__AWUnitTestPearlDevice_setSmartCoverClosed___block_invoke_2;
          v11[3] = &unk_1E7F37B48;
          v12 = v7;
          v13 = *(a1 + 40);
          v9 = v7;
          dispatch_async(v8, v11);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDisplayCallback:(id)callback
{
  callbackCopy = callback;
  awQueue = self->_awQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AWUnitTestPearlDevice_setDisplayCallback___block_invoke;
  v7[3] = &unk_1E7F37F78;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(awQueue, v7);
}

void __44__AWUnitTestPearlDevice_setDisplayCallback___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = MEMORY[0x1BFB0D030](*(a1 + 40));
  [v1 addObject:v2];
}

- (void)setDisplayState:(BOOL)state
{
  stateCopy = state;
  v27 = *MEMORY[0x1E69E9840];
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

      v12 = "DISPLAY OFF";
      if (stateCopy)
      {
        v12 = "DISPLAY ON";
      }

      *buf = 134218242;
      v22 = v7;
      v23 = 2080;
      *v24 = v12;
      v13 = "%13.5f: UNIT TEST: set %s";
      v14 = v5;
      v15 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
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

        v16 = "DISPLAY OFF";
        *buf = 136315906;
        v22 = *&v8;
        v23 = 1024;
        if (stateCopy)
        {
          v16 = "DISPLAY ON";
        }

        *v24 = 829;
        *&v24[4] = 2048;
        *&v24[6] = v11;
        v25 = 2080;
        v26 = v16;
        v13 = "%30s:%-4d: %13.5f: UNIT TEST: set %s";
        v14 = v5;
        v15 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_24:

        break;
      }
    }
  }

  awQueue = self->_awQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__AWUnitTestPearlDevice_setDisplayState___block_invoke;
  v19[3] = &unk_1E7F37FC8;
  v19[4] = self;
  v20 = stateCopy;
  dispatch_sync(awQueue, v19);
  v18 = *MEMORY[0x1E69E9840];
}

void __41__AWUnitTestPearlDevice_setDisplayState___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(&v14 + 1) + 8 * v6))
        {
          v7 = MEMORY[0x1BFB0D030]();
          v8 = dispatch_get_global_queue(0, 0);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __41__AWUnitTestPearlDevice_setDisplayState___block_invoke_2;
          v11[3] = &unk_1E7F37B48;
          v12 = v7;
          v13 = *(a1 + 40);
          v9 = v7;
          dispatch_async(v8, v11);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setSampleState:(BOOL)state deliverEvent:(BOOL)event
{
  stateCopy = state;
  v30 = *MEMORY[0x1E69E9840];
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

      v14 = "FACE NOT FOUND";
      if (stateCopy)
      {
        v14 = "FACE FOUND";
      }

      *buf = 134218242;
      v25 = v9;
      v26 = 2080;
      *v27 = v14;
      v15 = "%13.5f: UNIT TEST: set %s";
      v16 = v7;
      v17 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v7 = _AALog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

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

        v18 = "FACE NOT FOUND";
        *buf = 136315906;
        v25 = *&v10;
        v26 = 1024;
        if (stateCopy)
        {
          v18 = "FACE FOUND";
        }

        *v27 = 809;
        *&v27[4] = 2048;
        *&v27[6] = v13;
        v28 = 2080;
        v29 = v18;
        v15 = "%30s:%-4d: %13.5f: UNIT TEST: set %s";
        v16 = v7;
        v17 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_24:

        break;
      }
    }
  }

  awQueue = self->_awQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53__AWUnitTestPearlDevice_setSampleState_deliverEvent___block_invoke;
  v21[3] = &unk_1E7F37B20;
  v21[4] = self;
  v22 = stateCopy;
  eventCopy = event;
  dispatch_sync(awQueue, v21);
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __53__AWUnitTestPearlDevice_setSampleState_deliverEvent___block_invoke(uint64_t result)
{
  *(*(result + 32) + 80) = *(result + 40);
  v1 = *(result + 32);
  if ((*(v1 + 81) & 1) == 0 && *(v1 + 80) == 1 && *(result + 41) == 1)
  {
    return [*(v1 + 40) awSetFaceFound];
  }

  return result;
}

- (void)resetStats
{
  awQueue = self->_awQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AWUnitTestPearlDevice_resetStats__block_invoke;
  block[3] = &unk_1E7F38038;
  block[4] = self;
  dispatch_sync(awQueue, block);
}

uint64_t __35__AWUnitTestPearlDevice_resetStats__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  return result;
}

- (void)getStatsWithBlock:(id)block
{
  blockCopy = block;
  awQueue = self->_awQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AWUnitTestPearlDevice_getStatsWithBlock___block_invoke;
  v7[3] = &unk_1E7F37F78;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(awQueue, v7);
}

uint64_t __43__AWUnitTestPearlDevice_getStatsWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v1 + 16);
  v4 = *(v2 + 8);
  v7 = *(v2 + 24);
  v6 = v4;
  return v3(v1, &v6);
}

- (void)deliverPearlDeviceState:(int64_t)state
{
  queue = [(AWUnitTestPearlDevice *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AWUnitTestPearlDevice_deliverPearlDeviceState___block_invoke;
  v6[3] = &unk_1E7F37F50;
  v6[4] = self;
  v6[5] = state;
  dispatch_async(queue, v6);
}

void __49__AWUnitTestPearlDevice_deliverPearlDeviceState___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

      DeviceStateDescription = getDeviceStateDescription(*(a1 + 40));
      *v19 = 134218242;
      *&v19[4] = v4;
      *&v19[12] = 2080;
      *&v19[14] = DeviceStateDescription;
      v10 = "%13.5f: UNIT TEST: delivering %s state";
      v11 = v2;
      v12 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, v10, v19, v12);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
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

          v13 = getDeviceStateDescription(*(a1 + 40));
          *v19 = 136315906;
          *&v19[4] = v5;
          *&v19[12] = 1024;
          *&v19[14] = 771;
          *&v19[18] = 2048;
          *&v19[20] = v8;
          *&v19[28] = 2080;
          *&v19[30] = v13;
          v10 = "%30s:%-4d: %13.5f: UNIT TEST: delivering %s state";
          v11 = v2;
          v12 = 38;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  v14 = [*(a1 + 32) delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [*(a1 + 32) delegate];
    v17 = +[AWUnitTestPearlDevice sharedDevice];
    [v16 device:v17 pearlStateChanged:*(a1 + 40)];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)deliverPearlDeviceEvent:(int64_t)event
{
  queue = [(AWUnitTestPearlDevice *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AWUnitTestPearlDevice_deliverPearlDeviceEvent___block_invoke;
  v6[3] = &unk_1E7F37F50;
  v6[4] = self;
  v6[5] = event;
  dispatch_async(queue, v6);
}

void __49__AWUnitTestPearlDevice_deliverPearlDeviceEvent___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
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

      DeviceEventDescription = getDeviceEventDescription(*(a1 + 40));
      v10 = *(a1 + 32);
      v11 = v10[12];
      v12 = [v10 delegate];
      *v24 = 134218754;
      *&v24[4] = v4;
      *&v24[12] = 2080;
      *&v24[14] = DeviceEventDescription;
      *&v24[22] = 2112;
      *&v24[24] = v11;
      *&v24[32] = 2112;
      *&v24[34] = v12;
      v13 = "%13.5f: UNIT TEST: delivering %s event on queue %@ to %@";
      v14 = v2;
      v15 = 42;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, v24, v15);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
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

          v16 = getDeviceEventDescription(*(a1 + 40));
          v17 = *(a1 + 32);
          v18 = v17[12];
          v12 = [v17 delegate];
          *v24 = 136316418;
          *&v24[4] = v5;
          *&v24[12] = 1024;
          *&v24[14] = 760;
          *&v24[18] = 2048;
          *&v24[20] = v8;
          *&v24[28] = 2080;
          *&v24[30] = v16;
          *&v24[38] = 2112;
          *&v24[40] = v18;
          LOWORD(v25) = 2112;
          *(&v25 + 2) = v12;
          v13 = "%30s:%-4d: %13.5f: UNIT TEST: delivering %s event on queue %@ to %@";
          v14 = v2;
          v15 = 58;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  v19 = [*(a1 + 32) delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [*(a1 + 32) delegate];
    v22 = +[AWUnitTestPearlDevice sharedDevice];
    [v21 device:v22 pearlEventOccurred:*(a1 + 40)];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)createPresenceDetectOperationWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1630;
  v11 = __Block_byref_object_dispose__1631;
  v12 = 0;
  awQueue = self->_awQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__AWUnitTestPearlDevice_createPresenceDetectOperationWithError___block_invoke;
  v6[3] = &unk_1E7F37F00;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(awQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __64__AWUnitTestPearlDevice_createPresenceDetectOperationWithError___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 8);
  v2 = objc_alloc_init(AWUnitTestFaceDetectOperation);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 40) + 8) + 40) setUnitTestDevice:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) setErrorState:*(*(a1 + 32) + 81)];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = (*(a1 + 32) + 40);

  objc_storeStrong(v6, v5);
}

- (AWUnitTestPearlDevice)init
{
  v14.receiver = self;
  v14.super_class = AWUnitTestPearlDevice;
  v2 = [(AWUnitTestPearlDevice *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AttentionAwareness.AWUnitTestPearlDevice", 0);
    awQueue = v2->_awQueue;
    v2->_awQueue = v3;

    v2->_sampleStatsPtr = &v2->_sampleStats;
    v2->_pearlError = 0;
    array = [MEMORY[0x1E695DF70] array];
    displayCallbacks = v2->_displayCallbacks;
    v2->_displayCallbacks = array;

    array2 = [MEMORY[0x1E695DF70] array];
    smarCoverCallbacks = v2->_smarCoverCallbacks;
    v2->_smarCoverCallbacks = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    carplayCallbacks = v2->_carplayCallbacks;
    v2->_carplayCallbacks = array3;

    v11 = objc_alloc_init(AVFoundationUnitTestSession);
    AVFoundationSession = v2->_AVFoundationSession;
    v2->_AVFoundationSession = v11;
  }

  return v2;
}

+ (id)sharedAVFoundationSession
{
  v2 = +[AWUnitTestPearlDevice sharedDevice];
  aVFoundationSession = [v2 AVFoundationSession];

  return aVFoundationSession;
}

+ (id)sharedDevice
{
  if (sharedDevice_onceToken != -1)
  {
    dispatch_once(&sharedDevice_onceToken, &__block_literal_global_183);
  }

  v3 = sharedDevice_device;

  return v3;
}

uint64_t __37__AWUnitTestPearlDevice_sharedDevice__block_invoke()
{
  v0 = objc_alloc_init(AWUnitTestPearlDevice);
  v1 = sharedDevice_device;
  sharedDevice_device = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end