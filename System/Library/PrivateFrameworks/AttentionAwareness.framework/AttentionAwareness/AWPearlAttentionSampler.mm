@interface AWPearlAttentionSampler
- (AWPearlAttentionSampler)initWithOptions:(id)options;
- (id)createNewSamplingOperation;
- (id)initForUnitTest:(BOOL)test useAVFoundation:(BOOL)foundation;
- (int)currentState;
- (unint64_t)minimumAttentionSamplerErrorRetryTime;
- (unint64_t)nextSampleTimeForSamplingInterval:(unint64_t)interval ignoreDisplayState:(BOOL)state;
- (void)cameraActivityNotification:(int)notification data:(id *)data forOperation:(id)operation;
- (void)cancelFaceDetect:(id)detect;
- (void)cancelStalledTimer;
- (void)faceDetectStalled:(id)stalled;
- (void)finishingFaceDetect:(id)detect;
- (void)pearlAttentionSamplerErrorOccurred;
- (void)startStalledTimerForOperation:(id)operation;
- (void)updateSamplingDeadline:(unint64_t)deadline forClient:(id)client;
- (void)updateSuppressedMaskWithDisplayState:(BOOL)state smartCoverClosed:(BOOL)closed carPlayConnected:(BOOL)connected;
@end

@implementation AWPearlAttentionSampler

- (int)currentState
{
  dispatch_assert_queue_V2(self->super._queue);
  if (!self->_displayState && !self->_currentOptions.AWAttentionSamplerActivateMotionDetection)
  {
    return 4;
  }

  v4.receiver = self;
  v4.super_class = AWPearlAttentionSampler;
  return [(AWAttentionSampler *)&v4 currentState];
}

- (void)cancelStalledTimer
{
  dispatch_assert_queue_V2(self->super._queue);
  operationStalledTimer = self->_operationStalledTimer;
  if (operationStalledTimer)
  {
    dispatch_source_cancel(operationStalledTimer);
    v4 = self->_operationStalledTimer;
    self->_operationStalledTimer = 0;
  }
}

- (unint64_t)minimumAttentionSamplerErrorRetryTime
{
  dispatch_assert_queue_V2(self->super._queue);
  lastErrorTime = self->_lastErrorTime;
  v4 = lastErrorTime + 1000000000;
  if (lastErrorTime + 1000000000 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = -2;
  }

  if (lastErrorTime < 0xFFFFFFFFC4653600)
  {
    return v4;
  }

  else
  {
    return -2;
  }
}

- (id)createNewSamplingOperation
{
  if (self->_useAVFoundation)
  {
    v3 = off_1E7F37050;
  }

  else
  {
    v3 = &off_1E7F37098;
  }

  v4 = [objc_alloc(*v3) initWithQueue:self->super._queue forUnitTest:self->_unitTest];
  [v4 setDelegate:self];

  return v4;
}

- (void)cameraActivityNotification:(int)notification data:(id *)data forOperation:(id)operation
{
  v88 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  if (currentLogLevel == 5)
  {
    v9 = _AALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
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

      *buf = 134218240;
      v83 = v11;
      v84 = 1024;
      *v85 = notification;
      v16 = "%13.5f: cameraActivityNotification %u received";
      v17 = v9;
      v18 = 18;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v9 = _AALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v12 = i;
        }

        else if (!*(i - 1))
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

          *buf = 136315906;
          v83 = *&v12;
          v84 = 1024;
          *v85 = 706;
          *&v85[4] = 2048;
          *&v85[6] = v15;
          *&v85[14] = 1024;
          *&v85[16] = notification;
          v16 = "%30s:%-4d: %13.5f: cameraActivityNotification %u received";
          v17 = v9;
          v18 = 34;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if (notification > 2)
  {
    if (notification != 3)
    {
      if (notification != 4)
      {
        goto LABEL_136;
      }

      if (currentLogLevel == 5)
      {
        v22 = _AALog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = absTimeNS();
          if (v23 == -1)
          {
            v24 = INFINITY;
          }

          else
          {
            v24 = v23 / 1000000000.0;
          }

          var1 = data->var1;
          *buf = 134218240;
          v83 = v24;
          v84 = 1024;
          *v85 = var1;
          v46 = "%13.5f: Device state %d received";
          v47 = v22;
          v48 = 18;
LABEL_114:
          _os_log_impl(&dword_1BB2EF000, v47, OS_LOG_TYPE_DEFAULT, v46, buf, v48);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
          goto LABEL_116;
        }

        v22 = _AALog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v31 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
          for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++j)
          {
            if (*(j - 1) == 47)
            {
              v31 = j;
            }

            else if (!*(j - 1))
            {
              v37 = absTimeNS();
              if (v37 == -1)
              {
                v38 = INFINITY;
              }

              else
              {
                v38 = v37 / 1000000000.0;
              }

              v71 = data->var1;
              *buf = 136315906;
              v83 = *&v31;
              v84 = 1024;
              *v85 = 799;
              *&v85[4] = 2048;
              *&v85[6] = v38;
              *&v85[14] = 1024;
              *&v85[16] = v71;
              v46 = "%30s:%-4d: %13.5f: Device state %d received";
              v47 = v22;
              v48 = 34;
              goto LABEL_114;
            }
          }
        }
      }

LABEL_116:
      if (data->var1 == 5)
      {
        [(AWPearlAttentionSampler *)self pearlAttentionSamplerErrorOccurred];
      }

      goto LABEL_136;
    }

    if (currentLogLevel == 5)
    {
      v26 = _AALog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
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

        v49 = data->var1;
        *buf = 134218240;
        v83 = v28;
        v84 = 1024;
        *v85 = v49;
        v50 = "%13.5f: Device event %d received";
        v51 = v26;
        v52 = 18;
LABEL_120:
        _os_log_impl(&dword_1BB2EF000, v51, OS_LOG_TYPE_DEFAULT, v50, buf, v52);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
        goto LABEL_122;
      }

      v26 = _AALog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v33 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++k)
        {
          if (*(k - 1) == 47)
          {
            v33 = k;
          }

          else if (!*(k - 1))
          {
            v39 = absTimeNS();
            if (v39 == -1)
            {
              v40 = INFINITY;
            }

            else
            {
              v40 = v39 / 1000000000.0;
            }

            v72 = data->var1;
            *buf = 136315906;
            v83 = *&v33;
            v84 = 1024;
            *v85 = 777;
            *&v85[4] = 2048;
            *&v85[6] = v40;
            *&v85[14] = 1024;
            *&v85[16] = v72;
            v50 = "%30s:%-4d: %13.5f: Device event %d received";
            v51 = v26;
            v52 = 34;
            goto LABEL_120;
          }
        }
      }
    }

LABEL_122:
    v73 = data->var1;
    if (data->var1 == 4)
    {
      selfCopy3 = self;
      v75 = 4;
    }

    else if (v73 == 3)
    {
      selfCopy3 = self;
      v75 = 5;
    }

    else
    {
      if (v73 != 2)
      {
        goto LABEL_136;
      }

      selfCopy3 = self;
      v75 = 3;
    }

    [(AWPearlAttentionSampler *)selfCopy3 updateFaceState:v75];
    goto LABEL_136;
  }

  if (notification == 1)
  {
    if (data->var0.var0)
    {
      v25 = 5;
    }

    else
    {
      v25 = 4;
    }

    [(AWPearlAttentionSampler *)self updateFaceState:v25 withFaceMetadata:data];
  }

  else if (notification == 2)
  {
    if (currentLogLevel == 5)
    {
      v19 = _AALog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
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

        v41 = data->var1;
        *buf = 134218240;
        v83 = v21;
        v84 = 1024;
        *v85 = v41;
        v42 = "%13.5f: Operation end reason %d received";
        v43 = v19;
        v44 = 18;
LABEL_80:
        _os_log_impl(&dword_1BB2EF000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
        goto LABEL_82;
      }

      v19 = _AALog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v29 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (m = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++m)
        {
          if (*(m - 1) == 47)
          {
            v29 = m;
          }

          else if (!*(m - 1))
          {
            v35 = absTimeNS();
            if (v35 == -1)
            {
              v36 = INFINITY;
            }

            else
            {
              v36 = v35 / 1000000000.0;
            }

            v53 = data->var1;
            *buf = 136315906;
            v83 = *&v29;
            v84 = 1024;
            *v85 = 718;
            *&v85[4] = 2048;
            *&v85[6] = v36;
            *&v85[14] = 1024;
            *&v85[16] = v53;
            v42 = "%30s:%-4d: %13.5f: Operation end reason %d received";
            v43 = v19;
            v44 = 34;
            goto LABEL_80;
          }
        }
      }
    }

LABEL_82:
    if (self->_currentOperation == operationCopy)
    {
      v54 = data->var1;
      if (data->var1 == 4)
      {
        [(SamplingOperation *)operationCopy Timeout];
        if (v55 != 0.0)
        {
          [(AWAttentionSampler *)self setLastPollTimeoutTime:absTimeNS()];
        }

        v54 = data->var1;
      }

      if (v54 == 1)
      {
        cameraActivityNotification_data_forOperation__operationEndFailureCount = 0;
      }

      else if (++cameraActivityNotification_data_forOperation__operationEndFailureCount < 6)
      {
        [(AWPearlAttentionSampler *)self updateFaceState:4];
      }

      else
      {
        cameraActivityNotification_data_forOperation__operationEndFailureCount = 0;
        [(AWPearlAttentionSampler *)self pearlAttentionSamplerErrorOccurred];
      }

      if (self->_useAVFoundation && data->var1 == 3)
      {
        v56 = [(SamplingOperation *)self->_currentOperation cancelActiveOperation:@"Interruption cancellation"];
      }

      currentOperation = self->_currentOperation;
      self->_currentOperation = 0;

      [(AWPearlAttentionSampler *)self setCurrentState:0];
      v58 = MEMORY[0x1E696AEC0];
      v59 = self->_currentOperation;
      [(SamplingOperation *)v59 Timeout];
      v61 = [v58 stringWithFormat:@"operation %p currentOperation %p (timeout %13.5f)", operationCopy, v59, v60];
      stateChangedCallback = [(AWAttentionSampler *)self stateChangedCallback];
      (stateChangedCallback)[2](stateChangedCallback, v61);
    }

    finishingOperation = self->_finishingOperation;
    if (!finishingOperation || finishingOperation == operationCopy)
    {
      goto LABEL_135;
    }

    if (currentLogLevel == 5)
    {
      v64 = _AALog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = absTimeNS();
        if (v65 == -1)
        {
          v66 = INFINITY;
        }

        else
        {
          v66 = v65 / 1000000000.0;
        }

        v76 = self->_finishingOperation;
        *buf = 134218754;
        v83 = v66;
        v84 = 2112;
        *v85 = self;
        *&v85[8] = 2048;
        *&v85[10] = operationCopy;
        *&v85[18] = 2048;
        *&v85[20] = v76;
        v77 = "%13.5f: %@ unexpected finish for operation %p, expecting operation %p";
        v78 = v64;
        v79 = 42;
LABEL_133:
        _os_log_impl(&dword_1BB2EF000, v78, OS_LOG_TYPE_DEFAULT, v77, buf, v79);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_135:
        self->_finishingOperation = 0;

        goto LABEL_136;
      }

      v64 = _AALog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v67 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (n = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++n)
        {
          if (*(n - 1) == 47)
          {
            v67 = n;
          }

          else if (!*(n - 1))
          {
            v69 = absTimeNS();
            if (v69 == -1)
            {
              v70 = INFINITY;
            }

            else
            {
              v70 = v69 / 1000000000.0;
            }

            v80 = self->_finishingOperation;
            *buf = 136316418;
            v83 = *&v67;
            v84 = 1024;
            *v85 = 769;
            *&v85[4] = 2048;
            *&v85[6] = v70;
            *&v85[14] = 2112;
            *&v85[16] = self;
            *&v85[24] = 2048;
            *&v85[26] = operationCopy;
            v86 = 2048;
            v87 = v80;
            v77 = "%30s:%-4d: %13.5f: %@ unexpected finish for operation %p, expecting operation %p";
            v78 = v64;
            v79 = 58;
            goto LABEL_133;
          }
        }
      }
    }

    finishingOperation = self->_finishingOperation;
    goto LABEL_135;
  }

LABEL_136:

  v81 = *MEMORY[0x1E69E9840];
}

- (void)updateSamplingDeadline:(unint64_t)deadline forClient:(id)client
{
  v28 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  dispatch_assert_queue_V2(self->super._queue);
  if (!self->_displayState && ([clientCopy activateMotionDetect] & 1) == 0)
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

        if (deadline == -1)
        {
          v15 = INFINITY;
        }

        else
        {
          v15 = deadline / 1000000000.0;
        }

        identifier = [clientCopy identifier];
        *buf = 134218754;
        v23 = v10;
        v24 = 2112;
        *v25 = self;
        *&v25[8] = 2048;
        *&v25[10] = v15;
        *&v25[18] = 2112;
        *&v25[20] = identifier;
        v17 = "%13.5f: %@ ignoring sample with deadline %13.5f for client %@ since sampling is disabled";
        v18 = v8;
        v19 = 42;
LABEL_29:
        _os_log_impl(&dword_1BB2EF000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
        goto LABEL_4;
      }

      v8 = _AALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

            if (deadline == -1)
            {
              v20 = INFINITY;
            }

            else
            {
              v20 = deadline / 1000000000.0;
            }

            identifier = [clientCopy identifier];
            *buf = 136316418;
            v23 = *&v11;
            v24 = 1024;
            *v25 = 698;
            *&v25[4] = 2048;
            *&v25[6] = v14;
            *&v25[14] = 2112;
            *&v25[16] = self;
            *&v25[24] = 2048;
            *&v25[26] = v20;
            v26 = 2112;
            v27 = identifier;
            v17 = "%30s:%-4d: %13.5f: %@ ignoring sample with deadline %13.5f for client %@ since sampling is disabled";
            v18 = v8;
            v19 = 58;
            goto LABEL_29;
          }
        }
      }
    }

    goto LABEL_4;
  }

  v21.receiver = self;
  v21.super_class = AWPearlAttentionSampler;
  [(AWAttentionSampler *)&v21 updateSamplingDeadline:deadline forClient:clientCopy];
LABEL_4:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateSuppressedMaskWithDisplayState:(BOOL)state smartCoverClosed:(BOOL)closed carPlayConnected:(BOOL)connected
{
  connectedCopy = connected;
  closedCopy = closed;
  stateCopy = state;
  dispatch_assert_queue_V2(self->super._queue);
  v9 = [(AWAttentionSampler *)self samplingSuppressedMask]& 0xFFFFFFFFFFFFFFFBLL;
  v10 = 4;
  if (!connectedCopy)
  {
    v10 = 0;
  }

  [(AWAttentionSampler *)self setSamplingSuppressedMask:v9 | v10];
  v11 = [(AWAttentionSampler *)self samplingSuppressedMask]& 0xFFFFFFFFFFFFFFFDLL;
  v12 = 2;
  if (!closedCopy)
  {
    v12 = 0;
  }

  [(AWAttentionSampler *)self setSamplingSuppressedMask:v11 | v12];
  v13 = [(AWAttentionSampler *)self samplingSuppressedMask]& 0xFFFFFFFFFFFFFFFELL | !stateCopy;

  [(AWAttentionSampler *)self setSamplingSuppressedMask:v13];
}

- (void)startStalledTimerForOperation:(id)operation
{
  operationCopy = operation;
  dispatch_assert_queue_V2(self->super._queue);
  if (!self->_operationStalledTimer)
  {
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->super._queue);
    operationStalledTimer = self->_operationStalledTimer;
    self->_operationStalledTimer = v5;

    v7 = self->_operationStalledTimer;
    v8 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v9 = self->_operationStalledTimer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AWPearlAttentionSampler_startStalledTimerForOperation___block_invoke;
    v10[3] = &unk_1E7F38060;
    v10[4] = self;
    v11 = operationCopy;
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_operationStalledTimer);
  }
}

- (unint64_t)nextSampleTimeForSamplingInterval:(unint64_t)interval ignoreDisplayState:(BOOL)state
{
  stateCopy = state;
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  if (([(AWAttentionSampler *)self samplingSuppressedMask]& 1) != 0 && !stateCopy)
  {
    result = -1;
    goto LABEL_34;
  }

  lastTriggerTime = [(AWAttentionSampler *)self lastTriggerTime];
  lastPollTimeoutTime = [(AWAttentionSampler *)self lastPollTimeoutTime];
  if (lastTriggerTime <= lastPollTimeoutTime)
  {
    v10 = lastPollTimeoutTime;
  }

  else
  {
    v10 = lastTriggerTime;
  }

  v11 = v10 + interval;
  if (v10 + interval >= 0xFFFFFFFFFFFFFFFELL)
  {
    v11 = -2;
  }

  if (__CFADD__(v10, interval))
  {
    v12 = -2;
  }

  else
  {
    v12 = v11;
  }

  minimumAttentionSamplerErrorRetryTime = [(AWPearlAttentionSampler *)self minimumAttentionSamplerErrorRetryTime];
  if (currentLogLevel < 7)
  {
    goto LABEL_31;
  }

  v14 = _AALog();
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_30;
  }

  v15 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; *(i - 1) == 47; ++i)
  {
    v15 = i;
LABEL_19:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_19;
  }

  v17 = absTimeNS();
  if (v17 == -1)
  {
    v18 = INFINITY;
  }

  else
  {
    v18 = v17 / 1000000000.0;
  }

  if (v10 == -1)
  {
    v19 = INFINITY;
  }

  else
  {
    v19 = v10 / 1000000000.0;
  }

  if (minimumAttentionSamplerErrorRetryTime == -1)
  {
    v20 = INFINITY;
  }

  else
  {
    v20 = minimumAttentionSamplerErrorRetryTime / 1000000000.0;
  }

  v22 = 136316674;
  v23 = v15;
  v24 = 1024;
  v25 = 562;
  v26 = 2048;
  v27 = v18;
  v28 = 2112;
  selfCopy = self;
  v30 = 2048;
  v31 = v19;
  v32 = 2048;
  v33 = v12 / 1000000000.0;
  v34 = 2048;
  v35 = v20;
  _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ lastTriggerTime %13.5f nextTriggerTime %13.5f minErrorRetryTime %13.5f", &v22, 0x44u);
LABEL_30:

LABEL_31:
  if (v12 <= minimumAttentionSamplerErrorRetryTime)
  {
    result = minimumAttentionSamplerErrorRetryTime;
  }

  else
  {
    result = v12;
  }

LABEL_34:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)pearlAttentionSamplerErrorOccurred
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  self->_lastErrorTime = absTimeNS();
  [(AWPearlAttentionSampler *)self setCurrentState:1];
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

      *v15 = 134218498;
      *&v15[4] = v5;
      *&v15[12] = 2112;
      *&v15[14] = self;
      *&v15[22] = 2112;
      *&v15[24] = @"Pearl attention sampler error!";
      v10 = "%13.5f: %@ %@";
      v11 = v3;
      v12 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, v10, v15, v12);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

          *v15 = 136316162;
          *&v15[4] = v6;
          *&v15[12] = 1024;
          *&v15[14] = 480;
          *&v15[18] = 2048;
          *&v15[20] = v9;
          *&v15[28] = 2112;
          *&v15[30] = self;
          *&v15[38] = 2112;
          v16 = @"Pearl attention sampler error!";
          v10 = "%30s:%-4d: %13.5f: %@ %@";
          v11 = v3;
          v12 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v13 = [(AWAttentionSampler *)self stateChangedCallback:*v15];
  (v13)[2](v13, @"Pearl attention sampler error!");

  v14 = *MEMORY[0x1E69E9840];
}

- (void)cancelFaceDetect:(id)detect
{
  detectCopy = detect;
  dispatch_assert_queue_V2(self->super._queue);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    v5 = [(SamplingOperation *)currentOperation cancelActiveOperation:detectCopy];
    v6 = self->_currentOperation;
    self->_currentOperation = 0;

    [(AWPearlAttentionSampler *)self setCurrentState:0];
    [(AWPearlAttentionSampler *)self cancelStalledTimer];
  }
}

- (void)finishingFaceDetect:(id)detect
{
  v27 = *MEMORY[0x1E69E9840];
  detectCopy = detect;
  dispatch_assert_queue_V2(self->super._queue);
  currentOperation = self->_currentOperation;
  if (!currentOperation)
  {
    goto LABEL_24;
  }

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

      v13 = self->_currentOperation;
      v21 = 134218754;
      v22 = v8;
      v23 = 2112;
      *v24 = self;
      *&v24[8] = 2048;
      *&v24[10] = v13;
      *&v24[18] = 2112;
      *&v24[20] = detectCopy;
      v14 = "%13.5f: %@ finishing presence operation %p (%@)";
      v15 = v6;
      v16 = 42;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, &v21, v16);
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
      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

          v17 = self->_currentOperation;
          v21 = 136316418;
          v22 = *&v9;
          v23 = 1024;
          *v24 = 277;
          *&v24[4] = 2048;
          *&v24[6] = v12;
          *&v24[14] = 2112;
          *&v24[16] = self;
          *&v24[24] = 2048;
          *&v24[26] = v17;
          v25 = 2112;
          v26 = detectCopy;
          v14 = "%30s:%-4d: %13.5f: %@ finishing presence operation %p (%@)";
          v15 = v6;
          v16 = 58;
          goto LABEL_20;
        }
      }
    }
  }

  currentOperation = self->_currentOperation;
LABEL_22:
  objc_storeStrong(&self->_finishingOperation, currentOperation);
  v18 = self->_currentOperation;
  self->_currentOperation = 0;

  if ([(SamplingOperation *)self->_finishingOperation operationBackend]== 2)
  {
    v19 = [(SamplingOperation *)self->_finishingOperation cancelActiveOperation:@"Finish"];
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)faceDetectStalled:(id)stalled
{
  v29 = *MEMORY[0x1E69E9840];
  stalledCopy = stalled;
  dispatch_assert_queue_V2(self->super._queue);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"operation %p currentOperation %p faceDetectStalled", stalledCopy, self->_currentOperation];
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

      *buf = 134218498;
      v24 = v8;
      v25 = 2112;
      *v26 = self;
      *&v26[8] = 2112;
      *&v26[10] = v5;
      v13 = "%13.5f: %@ %@";
      v14 = v6;
      v15 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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
          v24 = *&v9;
          v25 = 1024;
          *v26 = 250;
          *&v26[4] = 2048;
          *&v26[6] = v12;
          *&v26[14] = 2112;
          *&v26[16] = self;
          v27 = 2112;
          v28 = v5;
          v13 = "%30s:%-4d: %13.5f: %@ %@";
          v14 = v6;
          v15 = 48;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if (self->_currentOperation == stalledCopy)
  {
    [(AWPearlAttentionSampler *)self updateFaceState:4];
    [(AWPearlAttentionSampler *)self cancelFaceDetect:v5];
    stateChangedCallback = [(AWAttentionSampler *)self stateChangedCallback];
    (stateChangedCallback)[2](stateChangedCallback, v5);
  }

  else
  {
    queue = self->super._queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AWPearlAttentionSampler_faceDetectStalled___block_invoke;
    block[3] = &unk_1E7F37C10;
    v20 = stalledCopy;
    v21 = v5;
    selfCopy = self;
    dispatch_async(queue, block);

    stateChangedCallback = v20;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __45__AWPearlAttentionSampler_faceDetectStalled___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cancelActiveOperation:*(a1 + 40)];
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

      v10 = *(a1 + 48);
      v11 = *(a1 + 32);
      v18 = 134218498;
      v19 = v5;
      v20 = 2112;
      *v21 = v10;
      *&v21[8] = 2048;
      *&v21[10] = v11;
      v12 = "%13.5f: %@ cancelled stalled presence operation %p";
      v13 = v3;
      v14 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

          v15 = *(a1 + 48);
          v16 = *(a1 + 32);
          v18 = 136316162;
          v19 = *&v6;
          v20 = 1024;
          *v21 = 266;
          *&v21[4] = 2048;
          *&v21[6] = v9;
          *&v21[14] = 2112;
          *&v21[16] = v15;
          v22 = 2048;
          v23 = v16;
          v12 = "%30s:%-4d: %13.5f: %@ cancelled stalled presence operation %p";
          v13 = v3;
          v14 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
}

void __65__AWPearlAttentionSampler_triggerFaceDetectWithDeadline_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AWPearlAttentionSampler_triggerFaceDetectWithDeadline_options___block_invoke_2;
  v7[3] = &unk_1E7F38060;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __65__AWPearlAttentionSampler_triggerFaceDetectWithDeadline_options___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(result + 40) pearlAttentionSamplerErrorOccurred];
    v2 = *(v1 + 40);

    return [v2 updateFaceState:4];
  }

  return result;
}

- (id)initForUnitTest:(BOOL)test useAVFoundation:(BOOL)foundation
{
  testCopy = test;
  v34.receiver = self;
  v34.super_class = AWPearlAttentionSampler;
  v6 = [(AWAttentionSampler *)&v34 init];
  v7 = v6;
  if (v6)
  {
    v6->_useAVFoundation = foundation;
    v6->_unitTest = testCopy;
    currentOperation = v6->_currentOperation;
    v6->_currentOperation = 0;

    finishingOperation = v7->_finishingOperation;
    v7->_finishingOperation = 0;

    unitTestOperation = v7->_unitTestOperation;
    v7->_unitTestOperation = 0;

    v7->_signpostLogged = 0;
    v7->_enrollOrMatchOperationUnderway = 0;
    if (testCopy)
    {
      createNewSamplingOperation = [(AWPearlAttentionSampler *)v7 createNewSamplingOperation];
      v12 = v7->_unitTestOperation;
      v7->_unitTestOperation = createNewSamplingOperation;

      v7->_displayState = 1;
      [(AWAttentionSampler *)v7 setUnitTestMode];
      unitTestSampler = [(AWPearlAttentionSampler *)v7 unitTestSampler];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke;
      v32[3] = &unk_1E7F37B98;
      v14 = &v33;
      v15 = v7;
      v33 = v15;
      [unitTestSampler setDisplayCallback:v32];

      unitTestSampler2 = [(AWPearlAttentionSampler *)v15 unitTestSampler];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_3;
      v30[3] = &unk_1E7F37B98;
      v17 = &v31;
      v18 = v15;
      v31 = v18;
      [unitTestSampler2 setSmartCoverCallback:v30];

      unitTestSampler3 = [(AWPearlAttentionSampler *)v18 unitTestSampler];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_5;
      v28[3] = &unk_1E7F37B98;
      v29 = v18;
      [unitTestSampler3 setCarplayStateChangedCallback:v28];
    }

    else
    {
      v7->_carPlayConnected = 0;
      queue = v7->super._queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_7;
      block[3] = &unk_1E7F38038;
      v14 = &v27;
      v21 = v7;
      v27 = v21;
      dispatch_async(queue, block);
      v22 = v7->super._queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_8;
      handler[3] = &unk_1E7F37BC0;
      v17 = &v25;
      v25 = v21;
      notify_register_dispatch("com.apple.BiometricKit.activeOperation", v21 + 68, v22, handler);
    }
  }

  return v7;
}

void __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_2;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

void __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_4;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

void __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_5(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_6;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

uint64_t __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = BKSHIDServicesIsSmartCoverClosed() != 0;

  return [v1 setSmartCoverClosed:v2];
}

uint64_t __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_8(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  v4 = *(a1 + 32);
  if (state64 - 1 >= 2)
  {
    if (*(v4 + 276) != 1)
    {
      return result;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  *(v4 + 276) = v5;
  return result;
}

- (AWPearlAttentionSampler)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy)
  {
    selfCopy = [optionsCopy valueForKey:@"useAVFoundation"];

    if (selfCopy)
    {
      selfCopy = [v5 valueForKey:@"unitTest"];

      if (selfCopy)
      {
        v7 = [v5 valueForKey:@"unitTest"];
        bOOLValue = [v7 BOOLValue];

        v9 = [v5 valueForKey:@"useAVFoundation"];
        bOOLValue2 = [v9 BOOLValue];

        self = [(AWPearlAttentionSampler *)self initForUnitTest:bOOLValue useAVFoundation:bOOLValue2];
        selfCopy = self;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end