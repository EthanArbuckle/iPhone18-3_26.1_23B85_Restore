@interface AWUnitTestFaceDetectOperation
- (AWUnitTestFaceDetectOperation)init;
- (AWUnitTestPearlDevice)unitTestDevice;
- (BOOL)startStreamWithError:(id *)error;
- (BOOL)startWithError:(id *)error;
- (int64_t)state;
- (void)awDeliverFaceFound;
- (void)awDeliverStreamingEvent;
- (void)awFinishWithReason:(int64_t)reason;
- (void)awSetFaceDetectError:(BOOL)error;
- (void)awSetFaceFound;
- (void)cancel;
- (void)dealloc;
- (void)setErrorState:(BOOL)state;
- (void)startWithReply:(id)reply;
@end

@implementation AWUnitTestFaceDetectOperation

- (AWUnitTestPearlDevice)unitTestDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDevice);

  return WeakRetained;
}

- (void)awSetFaceDetectError:(BOOL)error
{
  awQueue = self->_awQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__AWUnitTestFaceDetectOperation_awSetFaceDetectError___block_invoke;
  v4[3] = &unk_1E7F37FC8;
  v4[4] = self;
  errorCopy = error;
  dispatch_sync(awQueue, v4);
}

uint64_t __54__AWUnitTestFaceDetectOperation_awSetFaceDetectError___block_invoke(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(result + 40);
  *(*(result + 32) + 122) = v1;
  if (v1 == 1)
  {
    v2 = result;
    result = [*(result + 32) mode];
    if (result != 1)
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

          v10 = *(v2 + 32);
          *v17 = 134218240;
          *&v17[4] = v5;
          *&v17[12] = 2048;
          *&v17[14] = v10;
          v11 = "%13.5f: UNIT TEST: delivering error for operation %p";
          v12 = v3;
          v13 = 22;
LABEL_21:
          _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, v17, v13);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
LABEL_23:
          v15 = [AWUnitTestPearlDevice sharedDevice:*v17];
          [v15 deliverPearlDeviceState:5];

          result = [*(v2 + 32) awFinishWithReason:3];
          goto LABEL_24;
        }

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

              v14 = *(v2 + 32);
              *v17 = 136315906;
              *&v17[4] = v6;
              *&v17[12] = 1024;
              *&v17[14] = 600;
              *&v17[18] = 2048;
              *&v17[20] = v9;
              *&v17[28] = 2048;
              *&v17[30] = v14;
              v11 = "%30s:%-4d: %13.5f: UNIT TEST: delivering error for operation %p";
              v12 = v3;
              v13 = 38;
              goto LABEL_21;
            }
          }
        }
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)awSetFaceFound
{
  awQueue = self->_awQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AWUnitTestFaceDetectOperation_awSetFaceFound__block_invoke;
  block[3] = &unk_1E7F38038;
  block[4] = self;
  dispatch_sync(awQueue, block);
}

uint64_t __47__AWUnitTestFaceDetectOperation_awSetFaceFound__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
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
      *v16 = 134218240;
      *&v16[4] = v4;
      *&v16[12] = 2048;
      *&v16[14] = v9;
      v10 = "%13.5f: UNIT TEST: delivering face present event for operation %p";
      v11 = v2;
      v12 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, v10, v16, v12);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
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

          v13 = *(a1 + 32);
          *v16 = 136315906;
          *&v16[4] = v5;
          *&v16[12] = 1024;
          *&v16[14] = 589;
          *&v16[18] = 2048;
          *&v16[20] = v8;
          *&v16[28] = 2048;
          *&v16[30] = v13;
          v10 = "%30s:%-4d: %13.5f: UNIT TEST: delivering face present event for operation %p";
          v11 = v2;
          v12 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  result = [*(a1 + 32) awDeliverFaceFound];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)cancel
{
  awQueue = self->_awQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AWUnitTestFaceDetectOperation_cancel__block_invoke;
  block[3] = &unk_1E7F38038;
  block[4] = self;
  dispatch_sync(awQueue, block);
}

- (void)awDeliverFaceFound
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_awQueue);
  if (self->_finished)
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

        v16 = 134218240;
        v17 = v5;
        v18 = 2048;
        *v19 = self;
        v12 = "%13.5f: UNIT TEST: face found for already finished operation %p";
        v13 = v3;
        v14 = 22;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_25:
        v15 = *MEMORY[0x1E69E9840];
        return;
      }

      v3 = _AALog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
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

            v16 = 136315906;
            v17 = *&v8;
            v18 = 1024;
            *v19 = 570;
            *&v19[4] = 2048;
            *&v19[6] = v11;
            v20 = 2048;
            selfCopy = self;
            v12 = "%30s:%-4d: %13.5f: UNIT TEST: face found for already finished operation %p";
            v13 = v3;
            v14 = 38;
            goto LABEL_23;
          }
        }
      }
    }

    goto LABEL_25;
  }

  v6 = +[AWUnitTestPearlDevice sharedDevice];
  [v6 deliverPearlDeviceEvent:3];

  v7 = *MEMORY[0x1E69E9840];

  [(AWUnitTestFaceDetectOperation *)self awFinishWithReason:1];
}

- (void)awFinishWithReason:(int64_t)reason
{
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_awQueue);
  if (self->_finished)
  {
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

        *buf = 134218498;
        v19 = v7;
        v20 = 2080;
        *v21 = getEndReasonDescriptions(reason);
        *&v21[8] = 2048;
        *&v21[10] = self;
        v13 = "%13.5f: UNIT TEST: %s for already finished operation %p";
        v14 = v5;
        v15 = 32;
LABEL_21:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }

LABEL_22:

      goto LABEL_23;
    }

    if (currentLogLevel >= 6)
    {
      v5 = _AALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m"; ; ++i)
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

            *buf = 136316162;
            v19 = *&v9;
            v20 = 1024;
            *v21 = 545;
            *&v21[4] = 2048;
            *&v21[6] = v12;
            *&v21[14] = 2080;
            *&v21[16] = getEndReasonDescriptions(reason);
            v22 = 2048;
            selfCopy = self;
            v13 = "%30s:%-4d: %13.5f: UNIT TEST: %s for already finished operation %p";
            v14 = v5;
            v15 = 48;
            goto LABEL_21;
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    self->_finished = 1;
    dispatch_source_cancel(self->_awInitTimer);
    dispatch_source_cancel(self->_deadlineTimer);
    queue = [(BKOperation *)self queue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__AWUnitTestFaceDetectOperation_awFinishWithReason___block_invoke;
    v17[3] = &unk_1E7F37F50;
    v17[4] = self;
    v17[5] = reason;
    dispatch_async(queue, v17);

    dispatch_source_cancel(self->_streamingTimer);
  }

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
}

void __52__AWUnitTestFaceDetectOperation_awFinishWithReason___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
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

      EndReasonDescriptions = getEndReasonDescriptions(*(a1 + 40));
      v10 = *(a1 + 32);
      *v20 = 134218498;
      *&v20[4] = v4;
      *&v20[12] = 2080;
      *&v20[14] = EndReasonDescriptions;
      *&v20[22] = 2048;
      *&v20[24] = v10;
      v11 = "%13.5f: UNIT TEST: delivering %s for operation %p";
      v12 = v2;
      v13 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, v20, v13);
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

          v14 = getEndReasonDescriptions(*(a1 + 40));
          v15 = *(a1 + 32);
          *v20 = 136316162;
          *&v20[4] = v5;
          *&v20[12] = 1024;
          *&v20[14] = 553;
          *&v20[18] = 2048;
          *&v20[20] = v8;
          *&v20[28] = 2080;
          *&v20[30] = v14;
          *&v20[38] = 2048;
          v21 = v15;
          v11 = "%30s:%-4d: %13.5f: UNIT TEST: delivering %s for operation %p";
          v12 = v2;
          v13 = 48;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  v16 = [*(a1 + 32) delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [*(a1 + 32) delegate];
    [v18 operation:*(a1 + 32) finishedWithReason:*(a1 + 40)];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)startWithReply:(id)reply
{
  replyCopy = reply;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__AWUnitTestFaceDetectOperation_startWithReply___block_invoke;
  v17[3] = &unk_1E7F37F78;
  v17[4] = self;
  v5 = replyCopy;
  v18 = v5;
  v6 = MEMORY[0x1BFB0D030](v17);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __48__AWUnitTestFaceDetectOperation_startWithReply___block_invoke_2;
  v14 = &unk_1E7F37F78;
  selfCopy = self;
  v16 = v5;
  v7 = v5;
  v8 = MEMORY[0x1BFB0D030](&v11);
  v9 = dispatch_get_global_queue(0, 0);
  if ([(BKFaceDetectOperation *)self mode:v11]== 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  dispatch_async(v9, v10);
}

void __48__AWUnitTestFaceDetectOperation_startWithReply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 startWithError:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

void __48__AWUnitTestFaceDetectOperation_startWithReply___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 startStreamWithError:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

- (void)awDeliverStreamingEvent
{
  v29 = *MEMORY[0x1E69E9840];
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

      *buf = 134217984;
      v24 = v5;
      v10 = "%13.5f: UNIT TEST: Delivering streaming event";
      v11 = v3;
      v12 = 12;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

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

          *buf = 136315650;
          v24 = *&v6;
          v25 = 1024;
          v26 = 499;
          v27 = 2048;
          v28 = v9;
          v10 = "%30s:%-4d: %13.5f: UNIT TEST: Delivering streaming event";
          v11 = v3;
          v12 = 28;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  v13 = objc_alloc(MEMORY[0x1E698F3A0]);
  eyeRelief = [(BKFaceDetectOperation *)self eyeRelief];
  if (eyeRelief)
  {
    v15 = 100.0;
  }

  else
  {
    v15 = 0.0;
  }

  [v13 setEyeReliefStatus:eyeRelief];
  *&v16 = v15;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  [v13 setDistance:v17];

  queue = [(BKOperation *)self queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__AWUnitTestFaceDetectOperation_awDeliverStreamingEvent__block_invoke;
  v21[3] = &unk_1E7F38060;
  v21[4] = self;
  v22 = v13;
  v19 = v13;
  dispatch_sync(queue, v21);

  v20 = *MEMORY[0x1E69E9840];
}

void __56__AWUnitTestFaceDetectOperation_awDeliverStreamingEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 operation:*(a1 + 32) faceDetectStateChanged:*(a1 + 40)];
  }
}

- (void)setErrorState:(BOOL)state
{
  awQueue = self->_awQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AWUnitTestFaceDetectOperation_setErrorState___block_invoke;
  v4[3] = &unk_1E7F37FC8;
  v4[4] = self;
  stateCopy = state;
  dispatch_sync(awQueue, v4);
}

- (BOOL)startStreamWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
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

      eyeRelief = [(BKFaceDetectOperation *)self eyeRelief];
      v13 = "without";
      if (eyeRelief)
      {
        v13 = "with";
      }

      *buf = 134218242;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      v14 = "%13.5f: UNIT TEST: Starting stream %s eyeRelief";
      v15 = v5;
      v16 = 22;
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

        eyeRelief2 = [(BKFaceDetectOperation *)self eyeRelief];
        v18 = "without";
        *buf = 136315906;
        *&buf[4] = v8;
        *&buf[12] = 1024;
        *&buf[14] = 459;
        if (eyeRelief2)
        {
          v18 = "with";
        }

        *&buf[18] = 2048;
        *&buf[20] = v11;
        v31 = 2080;
        v32 = v18;
        v14 = "%30s:%-4d: %13.5f: UNIT TEST: Starting stream %s eyeRelief";
        v15 = v5;
        v16 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_24:

        break;
      }
    }
  }

  dispatch_activate(self->_awInitTimer);
  dispatch_activate(self->_deadlineTimer);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  awQueue = self->_awQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AWUnitTestFaceDetectOperation_startStreamWithError___block_invoke;
  block[3] = &unk_1E7F37F00;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(awQueue, block);
  v20 = *(*&buf[8] + 24);
  if (v20)
  {
    queue = [(BKOperation *)self queue];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__AWUnitTestFaceDetectOperation_startStreamWithError___block_invoke_2;
    v26[3] = &unk_1E7F38038;
    v26[4] = self;
    dispatch_sync(queue, v26);

    v22 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = @" Pearl is in error state";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *error = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v23];
  }

  else
  {
    dispatch_source_set_timer(self->_streamingTimer, 0, 0x1DCD6500uLL, 0x3B9ACA00uLL);
    dispatch_resume(self->_streamingTimer);
  }

  _Block_object_dispose(buf, 8);
  v24 = *MEMORY[0x1E69E9840];
  return v20 ^ 1;
}

void __54__AWUnitTestFaceDetectOperation_startStreamWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 operation:*(a1 + 32) finishedWithReason:3];
  }
}

- (BOOL)startWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
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

      [(BKFaceDetectOperation *)self timeout];
      v27 = 134218496;
      v28 = v6;
      v29 = 2048;
      *v30 = self;
      *&v30[8] = 2048;
      *&v30[10] = v11;
      v12 = "%13.5f: UNIT TEST: start operation %p with timeout %f";
      v13 = v4;
      v14 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v27, v14);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m"; ; ++i)
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

          [(BKFaceDetectOperation *)self timeout];
          v27 = 136316162;
          v28 = *&v7;
          v29 = 1024;
          *v30 = 436;
          *&v30[4] = 2048;
          *&v30[6] = v10;
          *&v30[14] = 2048;
          *&v30[16] = self;
          v31 = 2048;
          v32 = v15;
          v12 = "%30s:%-4d: %13.5f: UNIT TEST: start operation %p with timeout %f";
          v13 = v4;
          v14 = 48;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  self->_started = 1;
  awInitTimer = self->_awInitTimer;
  v17 = dispatch_time(0, 500000000);
  dispatch_source_set_timer(awInitTimer, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(self->_awInitTimer);
  [(BKFaceDetectOperation *)self timeout];
  v19 = v18;
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDevice);
  sampleStatsPtr = [WeakRetained sampleStatsPtr];
  if (v19 == 0.0)
  {
    ++*(sampleStatsPtr + 16);

    v22 = 1000000000;
  }

  else
  {
    ++*(sampleStatsPtr + 8);

    v22 = (v19 * 1000000000.0);
  }

  deadlineTimer = self->_deadlineTimer;
  v24 = dispatch_time(0, v22);
  dispatch_source_set_timer(deadlineTimer, v24, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(self->_deadlineTimer);
  dispatch_activate(self->_streamingTimer);
  v25 = *MEMORY[0x1E69E9840];
  return 1;
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  awQueue = self->_awQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AWUnitTestFaceDetectOperation_state__block_invoke;
  v5[3] = &unk_1E7F37F00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(awQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__AWUnitTestFaceDetectOperation_state__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 121))
  {
    v2 = 4;
  }

  else
  {
    if (*(v1 + 120) != 1)
    {
      return result;
    }

    v2 = 2;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (void)dealloc
{
  awInitTimer = self->_awInitTimer;
  if (awInitTimer)
  {
    dispatch_source_cancel(awInitTimer);
  }

  deadlineTimer = self->_deadlineTimer;
  if (deadlineTimer)
  {
    dispatch_source_cancel(deadlineTimer);
  }

  streamingTimer = self->_streamingTimer;
  if (streamingTimer)
  {
    dispatch_source_cancel(streamingTimer);
  }

  v6.receiver = self;
  v6.super_class = AWUnitTestFaceDetectOperation;
  [(BKOperation *)&v6 dealloc];
}

- (AWUnitTestFaceDetectOperation)init
{
  v23.receiver = self;
  v23.super_class = AWUnitTestFaceDetectOperation;
  v2 = [(AWUnitTestFaceDetectOperation *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AttentionAwareness.AWUnitTestFaceDetectOperation", 0);
    v4 = *(v2 + 11);
    *(v2 + 11) = v3;

    objc_initWeak(&location, v2);
    v5 = MEMORY[0x1E69E9710];
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 11));
    v7 = *(v2 + 12);
    *(v2 + 12) = v6;

    v8 = *(v2 + 12);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __37__AWUnitTestFaceDetectOperation_init__block_invoke;
    handler[3] = &unk_1E7F37AF8;
    objc_copyWeak(&v21, &location);
    dispatch_source_set_event_handler(v8, handler);
    v9 = dispatch_source_create(v5, 0, 0, *(v2 + 11));
    v10 = *(v2 + 13);
    *(v2 + 13) = v9;

    v11 = *(v2 + 13);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37__AWUnitTestFaceDetectOperation_init__block_invoke_2;
    v18[3] = &unk_1E7F37AF8;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v11, v18);
    v12 = dispatch_source_create(v5, 0, 0, *(v2 + 11));
    v13 = *(v2 + 14);
    *(v2 + 14) = v12;

    v14 = *(v2 + 14);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __37__AWUnitTestFaceDetectOperation_init__block_invoke_3;
    v16[3] = &unk_1E7F37AF8;
    objc_copyWeak(&v17, &location);
    dispatch_source_set_event_handler(v14, v16);
    *(v2 + 122) = 0;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__AWUnitTestFaceDetectOperation_init__block_invoke(uint64_t a1)
{
  v2 = +[AWUnitTestPearlDevice sharedDevice];
  v3 = [v2 pearlError];

  v4 = +[AWUnitTestPearlDevice sharedDevice];
  v5 = v4;
  if (v3)
  {
    [v4 deliverPearlDeviceState:5];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained awFinishWithReason:3];
  }

  else
  {
    v6 = [v4 facePresent];

    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained awDeliverFaceFound];
    }

    else
    {
      WeakRetained = +[AWUnitTestPearlDevice sharedDevice];
      [WeakRetained deliverPearlDeviceEvent:2];
    }
  }
}

void __37__AWUnitTestFaceDetectOperation_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained awFinishWithReason:4];
}

void __37__AWUnitTestFaceDetectOperation_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained awDeliverStreamingEvent];
}

@end