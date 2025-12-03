@interface AWSampleLogger
+ (id)sharedLogger;
+ (void)client:(id)client attentionStateChange:(BOOL)change;
+ (void)client:(id)client event:(id)event;
+ (void)client:(id)client pollEventType:(unint64_t)type event:(id)event;
- (AWSampleLogger)init;
- (void)_logFeatureEnablement;
- (void)_outputPowerLog;
- (void)outputPowerLog;
- (void)powerLogName:(id)name event:(id)event;
- (void)sampleStartedWithDeadline:(unint64_t)deadline;
- (void)sampleSucceeded;
- (void)shouldSample:(BOOL)sample;
- (void)streamingCompleteWithidentifier:(id)withidentifier duration:(unint64_t)duration ERActivated:(BOOL)activated;
- (void)updateDataForClient:(id)client deadline:(unint64_t)deadline;
@end

@implementation AWSampleLogger

- (void)sampleSucceeded
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  ++self->_samplesSucceeded;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_outstandingClientLogData;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v16 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_addedClientLogData containsObject:v8, v16]& 1) == 0)
        {
          [v8 setSampleSucceeded:1];
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v16 objects:v30 count:16];
    }

    while (v5);
  }

  if (currentLogLevel < 7)
  {
    goto LABEL_23;
  }

  v9 = _AALog();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_22;
  }

  v10 = MEMORY[0x1E695E0F8];
  v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
  for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; *(j - 1) == 47; ++j)
  {
    v11 = j;
LABEL_17:
    ;
  }

  if (*(j - 1))
  {
    goto LABEL_17;
  }

  v13 = absTimeNS();
  if (v13 == -1)
  {
    v14 = INFINITY;
  }

  else
  {
    v14 = v13 / 1000000000.0;
  }

  *buf = 136316162;
  v21 = v11;
  v22 = 1024;
  v23 = 319;
  v24 = 2048;
  v25 = v14;
  v26 = 2112;
  v27 = @"com.apple.AttentionAwareness.sampleSucceeded";
  v28 = 2112;
  v29 = v10;
  _os_log_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", buf, 0x30u);
LABEL_22:

LABEL_23:
  AnalyticsSendEvent();
  v15 = *MEMORY[0x1E69E9840];
}

- (void)sampleStartedWithDeadline:(unint64_t)deadline
{
  v30[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  ++self->_samplesRequested;
  if (!deadline)
  {
    if (currentLogLevel < 7)
    {
      goto LABEL_29;
    }

    v10 = _AALog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v11 = MEMORY[0x1E695E0F8];
    v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v12 = i;
      }

      else if (!*(i - 1))
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

        v19 = 136316162;
        v20 = v12;
        v21 = 1024;
        v22 = 304;
        v23 = 2048;
        v24 = v17;
        v25 = 2112;
        v26 = @"com.apple.AttentionAwareness.singleShotRequested";
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", &v19, 0x30u);
LABEL_28:

LABEL_29:
        AnalyticsSendEvent();
        goto LABEL_30;
      }
    }
  }

  ++self->_pollsRequested;
  v29 = @"deadline";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:deadline];
  v30[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];

  if (currentLogLevel < 7)
  {
    goto LABEL_25;
  }

  v7 = _AALog();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_24;
  }

  v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
  for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; *(j - 1) == 47; ++j)
  {
    v8 = j;
LABEL_9:
    ;
  }

  if (*(j - 1))
  {
    goto LABEL_9;
  }

  v14 = absTimeNS();
  if (v14 == -1)
  {
    v15 = INFINITY;
  }

  else
  {
    v15 = v14 / 1000000000.0;
  }

  v19 = 136316162;
  v20 = v8;
  v21 = 1024;
  v22 = 299;
  v23 = 2048;
  v24 = v15;
  v25 = 2112;
  v26 = @"com.apple.AttentionAwareness.pollRequested";
  v27 = 2112;
  v28 = v6;
  _os_log_impl(&dword_1BB2EF000, v7, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", &v19, 0x30u);
LABEL_24:

LABEL_25:
  AnalyticsSendEvent();

LABEL_30:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)shouldSample:(BOOL)sample
{
  sampleCopy = sample;
  v59 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  location = &self->_outstandingClientLogData;
  obj = self->_outstandingClientLogData;
  v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    v39 = *v43;
    do
    {
      v7 = 0;
      v40 = v5;
      do
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * v7);
        if (([(NSMutableSet *)self->_addedClientLogData containsObject:v8, location]& 1) != 0)
        {
          goto LABEL_21;
        }

        v9 = absTimeNS();
        v10 = v9 - [v8 samplingStartTime];
        [v8 setCumulativeSamplingTime:{objc_msgSend(v8, "cumulativeSamplingTime") + v10}];
        [v8 setSamplingStartTime:0];
        v56[0] = @"identifier";
        identifier = [v8 identifier];
        v57[0] = identifier;
        v56[1] = @"samplingInterval";
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "samplingInterval")}];
        v57[1] = v12;
        v56[2] = @"pollingClient";
        v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "pollingClient")}];
        v57[2] = v13;
        v56[3] = @"sampleSucceeded";
        v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "sampleSucceeded")}];
        v57[3] = v14;
        v56[4] = @"sampleDuration";
        0xF4240 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10 / 0xF4240];
        v57[4] = 0xF4240;
        v56[5] = @"activateMotionDetect";
        v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "activateMotionDetect")}];
        v57[5] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:6];

        if (currentLogLevel < 7)
        {
          goto LABEL_20;
        }

        v18 = _AALog();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v19 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; *(i - 1) == 47; ++i)
        {
          v19 = i;
LABEL_14:
          ;
        }

        if (*(i - 1))
        {
          goto LABEL_14;
        }

        v21 = absTimeNS();
        if (v21 == -1)
        {
          v22 = INFINITY;
        }

        else
        {
          v22 = v21 / 1000000000.0;
        }

        *buf = 136316162;
        v47 = v19;
        v48 = 1024;
        v49 = 260;
        v50 = 2048;
        v51 = v22;
        v52 = 2112;
        v53 = @"com.apple.AttentionAwareness.clientSamplingEnded";
        v54 = 2112;
        v55 = v17;
        _os_log_impl(&dword_1BB2EF000, v18, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", buf, 0x30u);
LABEL_19:

LABEL_20:
        AnalyticsSendEvent();

        v6 = v39;
        v5 = v40;
LABEL_21:
        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v5);
  }

  outstandingClientLogData = self->_outstandingClientLogData;
  v24 = outstandingClientLogData;
  objc_storeStrong(location, self->_addedClientLogData);
  objc_storeStrong(&self->_addedClientLogData, outstandingClientLogData);
  [(NSMutableSet *)self->_addedClientLogData removeAllObjects];
  samplingStartTime = self->_samplingStartTime;
  if (sampleCopy)
  {
    if (!samplingStartTime)
    {
      self->_samplingStartTime = absTimeNS();
      if (currentLogLevel >= 7)
      {
        v26 = _AALog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
          for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; ; ++j)
          {
            if (*(j - 1) == 47)
            {
              v27 = j;
            }

            else if (!*(j - 1))
            {
              v34 = absTimeNS();
              if (v34 == -1)
              {
                v35 = INFINITY;
              }

              else
              {
                v35 = v34 / 1000000000.0;
              }

              *buf = 136316162;
              v47 = v27;
              v48 = 1024;
              v49 = 277;
              v50 = 2048;
              v51 = v35;
              v52 = 2112;
              v53 = @"com.apple.AttentionAwareness.sampleStarted";
              v54 = 2112;
              v55 = MEMORY[0x1E695E0F8];
              goto LABEL_52;
            }
          }
        }

LABEL_53:
      }

LABEL_54:
      AnalyticsSendEvent();
    }
  }

  else if (samplingStartTime)
  {
    v29 = absTimeNS() - self->_samplingStartTime + self->_cumulativeSamplingTime;
    self->_samplingStartTime = 0;
    self->_cumulativeSamplingTime = v29;
    if (currentLogLevel >= 7)
    {
      v26 = _AALog();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v30 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
      for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; ; ++k)
      {
        if (*(k - 1) == 47)
        {
          v30 = k;
        }

        else if (!*(k - 1))
        {
          v32 = absTimeNS();
          if (v32 == -1)
          {
            v33 = INFINITY;
          }

          else
          {
            v33 = v32 / 1000000000.0;
          }

          *buf = 136316162;
          v47 = v30;
          v48 = 1024;
          v49 = 287;
          v50 = 2048;
          v51 = v33;
          v52 = 2112;
          v53 = @"com.apple.AttentionAwareness.sampleEnded";
          v54 = 2112;
          v55 = MEMORY[0x1E695E0F8];
LABEL_52:
          _os_log_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", buf, 0x30u);
          goto LABEL_53;
        }
      }
    }

    goto LABEL_54;
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)updateDataForClient:(id)client deadline:(unint64_t)deadline
{
  v37[3] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  if (deadline)
  {
    samplingInterval = 0;
  }

  else
  {
    samplingInterval = [clientCopy samplingInterval];
  }

  identifier = [clientCopy identifier];
  v37[0] = identifier;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:samplingInterval];
  v37[1] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:deadline != 0];
  v37[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];

  v12 = [(NSMutableDictionary *)self->_clientLogData objectForKeyedSubscript:v11];
  if (!v12)
  {
    v12 = objc_alloc_init(AWSampleLogData);
    identifier2 = [clientCopy identifier];
    [(AWSampleLogData *)v12 setIdentifier:identifier2];

    [(AWSampleLogData *)v12 setSamplingInterval:samplingInterval];
    [(AWSampleLogData *)v12 setPollingClient:deadline != 0];
    -[AWSampleLogData setActivateMotionDetect:](v12, "setActivateMotionDetect:", [clientCopy activateMotionDetect]);
    [(NSMutableDictionary *)self->_clientLogData setObject:v12 forKeyedSubscript:v11];
  }

  [(AWSampleLogData *)v12 setSampleSucceeded:0];
  if ([(AWSampleLogData *)v12 samplingStartTime])
  {
    goto LABEL_21;
  }

  [(AWSampleLogData *)v12 setSamplingStartTime:absTimeNS()];
  v35[0] = @"identifier";
  identifier3 = [(AWSampleLogData *)v12 identifier];
  v36[0] = identifier3;
  v35[1] = @"samplingInterval";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AWSampleLogData samplingInterval](v12, "samplingInterval")}];
  v36[1] = v15;
  v35[2] = @"pollingClient";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AWSampleLogData pollingClient](v12, "pollingClient")}];
  v36[2] = v16;
  v35[3] = @"pollingDeadline";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:deadline];
  v36[3] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];

  if (currentLogLevel < 7)
  {
    goto LABEL_20;
  }

  v19 = _AALog();
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

  v20 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; *(i - 1) == 47; ++i)
  {
    v20 = i;
LABEL_14:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_14;
  }

  v22 = absTimeNS();
  if (v22 == -1)
  {
    v23 = INFINITY;
  }

  else
  {
    v23 = v22 / 1000000000.0;
  }

  v25 = 136316162;
  v26 = v20;
  v27 = 1024;
  v28 = 232;
  v29 = 2048;
  v30 = v23;
  v31 = 2112;
  v32 = @"com.apple.AttentionAwareness.clientSamplingStarted";
  v33 = 2112;
  v34 = v18;
  _os_log_impl(&dword_1BB2EF000, v19, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", &v25, 0x30u);
LABEL_19:

LABEL_20:
  AnalyticsSendEvent();

LABEL_21:
  [(NSMutableSet *)self->_addedClientLogData addObject:v12];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)powerLogName:(id)name event:(id)event
{
  nameCopy = name;
  eventCopy = event;
  powerLogQueue = self->_powerLogQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__AWSampleLogger_powerLogName_event___block_invoke;
  v11[3] = &unk_1E7F38060;
  v12 = nameCopy;
  v13 = eventCopy;
  v9 = eventCopy;
  v10 = nameCopy;
  dispatch_async(powerLogQueue, v11);
}

void __37__AWSampleLogger_powerLogName_event___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
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
      v10 = *(a1 + 40);
      *buf = 134218498;
      v27 = v4;
      v28 = 2112;
      *v29 = v9;
      *&v29[8] = 2112;
      *&v29[10] = v10;
      v11 = "%13.5f: PowerLog %@ %@";
      v12 = v2;
      v13 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; ; ++i)
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

          v14 = *(a1 + 32);
          v15 = *(a1 + 40);
          *buf = 136316162;
          v27 = *&v5;
          v28 = 1024;
          *v29 = 183;
          *&v29[4] = 2048;
          *&v29[6] = v8;
          *&v29[14] = 2112;
          *&v29[16] = v14;
          v30 = 2112;
          v31 = v15;
          v11 = "%30s:%-4d: %13.5f: PowerLog %@ %@";
          v12 = v2;
          v13 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.AttentionAwareness.PowerLog.%@", *(a1 + 32)];
  v17 = *(a1 + 40);
  if (currentLogLevel <= 6)
  {
    goto LABEL_34;
  }

  v18 = _AALog();
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_33;
  }

  v19 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
  for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; *(j - 1) == 47; ++j)
  {
    v19 = j;
LABEL_28:
    ;
  }

  if (*(j - 1))
  {
    goto LABEL_28;
  }

  v21 = absTimeNS();
  if (v21 == -1)
  {
    v22 = INFINITY;
  }

  else
  {
    v22 = v21 / 1000000000.0;
  }

  *buf = 136316162;
  v27 = *&v19;
  v28 = 1024;
  *v29 = 185;
  *&v29[4] = 2048;
  *&v29[6] = v22;
  *&v29[14] = 2112;
  *&v29[16] = v16;
  v30 = 2112;
  v31 = v17;
  _os_log_impl(&dword_1BB2EF000, v18, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", buf, 0x30u);
LABEL_33:

LABEL_34:
  AnalyticsSendEvent();

  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  PLLogTimeSensitiveRegisteredEvent();

  v25 = *MEMORY[0x1E69E9840];
}

- (void)outputPowerLog
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AWSampleLogger_outputPowerLog__block_invoke;
  block[3] = &unk_1E7F38038;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_outputPowerLog
{
  v42 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = [(NSMutableDictionary *)self->_clientLogData allValues];
  v3 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
  v4 = 0x1E696A000uLL;
  v5 = 0x1E695D000uLL;
  if (v3)
  {
    v6 = v3;
    v7 = *v32;
    v8 = @"client";
    do
    {
      v9 = 0;
      v28 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        if ([v10 cumulativeSamplingTime])
        {
          if ([v10 pollingClient])
          {
            v39[0] = v8;
            identifier = [v10 identifier];
            v39[1] = @"cumulativeSamplingTimeMS";
            v40[0] = identifier;
            v12 = [*(v4 + 3480) numberWithUnsignedLongLong:{objc_msgSend(v10, "cumulativeSamplingTime") / 0xF4240uLL}];
            v40[1] = v12;
            v13 = [*(v5 + 3872) dictionaryWithObjects:v40 forKeys:v39 count:2];
            [(AWSampleLogger *)selfCopy powerLogName:@"PollingAggregation" event:v13];
          }

          else
          {
            v37[0] = v8;
            identifier = [v10 identifier];
            v38[0] = identifier;
            v37[1] = @"samplingRateMS";
            v14 = v7;
            v15 = v8;
            v12 = [*(v4 + 3480) numberWithUnsignedLongLong:{objc_msgSend(v10, "samplingInterval") / 0xF4240uLL}];
            v38[1] = v12;
            v37[2] = @"cumulativeSamplingTimeMS";
            v13 = [*(v4 + 3480) numberWithUnsignedLongLong:{objc_msgSend(v10, "cumulativeSamplingTime") / 0xF4240uLL}];
            v38[2] = v13;
            [*(v5 + 3872) dictionaryWithObjects:v38 forKeys:v37 count:3];
            v16 = v4;
            v18 = v17 = v5;
            [(AWSampleLogger *)selfCopy powerLogName:@"SamplingAggregation" event:v18];

            v5 = v17;
            v4 = v16;
            v8 = v15;
            v7 = v14;
            v6 = v28;
          }

          [v10 setCumulativeSamplingTime:0];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v6);
  }

  v35[0] = @"cumulativeSamplingTimeMS";
  v19 = selfCopy;
  [*(v4 + 3480) numberWithUnsignedLongLong:selfCopy->_cumulativeSamplingTime / 0xF4240];
  v21 = v20 = v4;
  v36[0] = v21;
  v35[1] = @"pollsRequested";
  v22 = [*(v20 + 3480) numberWithUnsignedLongLong:selfCopy->_pollsRequested];
  v36[1] = v22;
  v35[2] = @"singleShotsRequested";
  v23 = [*(v20 + 3480) numberWithUnsignedLongLong:v19->_samplesRequested - v19->_pollsRequested];
  v36[2] = v23;
  v35[3] = @"positiveOutcomes";
  v24 = [*(v20 + 3480) numberWithUnsignedLongLong:selfCopy->_samplesSucceeded];
  v36[3] = v24;
  v35[4] = @"negativeOutcomes";
  v25 = [*(v20 + 3480) numberWithUnsignedLongLong:v19->_samplesRequested - v19->_samplesSucceeded];
  v36[4] = v25;
  v26 = [*(v5 + 3872) dictionaryWithObjects:v36 forKeys:v35 count:5];
  [(AWSampleLogger *)selfCopy powerLogName:@"ServiceAggregation" event:v26];

  *&selfCopy->_cumulativeSamplingTime = 0u;
  *&selfCopy->_pollsRequested = 0u;
  v27 = *MEMORY[0x1E69E9840];
}

- (void)streamingCompleteWithidentifier:(id)withidentifier duration:(unint64_t)duration ERActivated:(BOOL)activated
{
  activatedCopy = activated;
  v30 = *MEMORY[0x1E69E9840];
  withidentifierCopy = withidentifier;
  dispatch_assert_queue_V2(self->_queue);
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

      v22 = 134218754;
      v23 = v11;
      v24 = 2048;
      *v25 = duration;
      *&v25[8] = 2112;
      *&v25[10] = withidentifierCopy;
      *&v25[18] = 1024;
      *&v25[20] = activatedCopy;
      v16 = "%13.5f: Streaming complete. duration: %llu identifier: %@ ERActivated: %d";
      v17 = v9;
      v18 = 38;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, &v22, v18);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v9 = _AALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; ; ++i)
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

          v22 = 136316418;
          v23 = *&v12;
          v24 = 1024;
          *v25 = 116;
          *&v25[4] = 2048;
          *&v25[6] = v15;
          *&v25[14] = 2048;
          *&v25[16] = duration;
          v26 = 2112;
          v27 = withidentifierCopy;
          v28 = 1024;
          v29 = activatedCopy;
          v16 = "%30s:%-4d: %13.5f: Streaming complete. duration: %llu identifier: %@ ERActivated: %d";
          v17 = v9;
          v18 = 54;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v19 = xpc_dictionary_create(0, 0, 0);
  uTF8String = [withidentifierCopy UTF8String];
  xpc_dictionary_set_int64(v19, "StreamingInterval", duration);
  xpc_dictionary_set_string(v19, "identifier", uTF8String);
  xpc_dictionary_set_BOOL(v19, "ERActivated", activatedCopy);
  analytics_send_event();

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_logFeatureEnablement
{
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v2 = *MEMORY[0x1E6986E48];
  if (AVGestaltGetBoolAnswer())
  {
    v3 = _AXSAttentionAwarenessFeaturesEnabled();
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "FeatureEnabled", v3 != 0);
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

        v16 = 134218240;
        v17 = v7;
        v18 = 1024;
        v19 = v3 != 0;
        v12 = "%13.5f: Logging Attention Aware Features enabled: %d";
        v13 = v5;
        v14 = 18;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        analytics_send_event();

        goto LABEL_23;
      }

      v5 = _AALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; ; ++i)
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
            v19 = 107;
            v20 = 2048;
            v21 = v11;
            v22 = 1024;
            v23 = v3 != 0;
            v12 = "%30s:%-4d: %13.5f: Logging Attention Aware Features enabled: %d";
            v13 = v5;
            v14 = 34;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
}

- (AWSampleLogger)init
{
  v21.receiver = self;
  v21.super_class = AWSampleLogger;
  v2 = [(AWSampleLogger *)&v21 init];
  if (v2)
  {
    v3 = awQueue(1);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_create("com.apple.AttentionAwareness.PowerLog", 0);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = *(v2 + 3);
    *(v2 + 3) = dictionary;

    v9 = [MEMORY[0x1E695DFA8] set];
    v10 = *(v2 + 4);
    *(v2 + 4) = v9;

    v11 = [MEMORY[0x1E695DFA8] set];
    v12 = *(v2 + 5);
    *(v2 + 5) = v11;

    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1));
    v14 = *(v2 + 6);
    *(v2 + 6) = v13;

    v15 = *(v2 + 6);
    v16 = dispatch_time(0, 3600000000000);
    dispatch_source_set_timer(v15, v16, 0x34630B8A000uLL, 0x6FC23AC00uLL);
    v17 = *(v2 + 6);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __22__AWSampleLogger_init__block_invoke;
    handler[3] = &unk_1E7F38038;
    v20 = v2;
    dispatch_source_set_event_handler(v17, handler);
    dispatch_resume(*(v2 + 6));
  }

  return v2;
}

uint64_t __22__AWSampleLogger_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _outputPowerLog];
  v2 = *(a1 + 32);

  return [v2 _logFeatureEnablement];
}

+ (void)client:(id)client pollEventType:(unint64_t)type event:(id)event
{
  v31 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  eventCopy = event;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  configuration = [clientCopy configuration];
  identifier = [configuration identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"identifier"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:type];
  [dictionary setObject:v12 forKeyedSubscript:@"pollEventType"];

  if (type == 2)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(eventCopy, "eventMask")}];
    [dictionary setObject:v13 forKeyedSubscript:@"pollEventMask"];
  }

  v14 = dictionary;
  if (currentLogLevel < 7)
  {
    goto LABEL_16;
  }

  v15 = _AALog();
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_15;
  }

  v16 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; *(i - 1) == 47; ++i)
  {
    v16 = i;
LABEL_10:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_10;
  }

  v18 = absTimeNS();
  if (v18 == -1)
  {
    v19 = INFINITY;
  }

  else
  {
    v19 = v18 / 1000000000.0;
  }

  v21 = 136316162;
  v22 = v16;
  v23 = 1024;
  v24 = 351;
  v25 = 2048;
  v26 = v19;
  v27 = 2112;
  v28 = @"com.apple.AttentionAwareness.clientPollEvent";
  v29 = 2112;
  v30 = v14;
  _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", &v21, 0x30u);
LABEL_15:

LABEL_16:
  AnalyticsSendEvent();

  v20 = *MEMORY[0x1E69E9840];
}

+ (void)client:(id)client event:(id)event
{
  v29 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  eventCopy = event;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifier = [clientCopy identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"identifier"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(eventCopy, "eventMask")}];
  [dictionary setObject:v9 forKeyedSubscript:@"eventMask"];

  if ([eventCopy eventMask] == 1)
  {
    v10 = MEMORY[0x1E696AD98];
    [eventCopy attentionLostTimeout];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"attentionLostTimeout"];
  }

  v12 = dictionary;
  if (currentLogLevel < 7)
  {
    goto LABEL_16;
  }

  v13 = _AALog();
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_15;
  }

  v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; *(i - 1) == 47; ++i)
  {
    v14 = i;
LABEL_10:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_10;
  }

  v16 = absTimeNS();
  if (v16 == -1)
  {
    v17 = INFINITY;
  }

  else
  {
    v17 = v16 / 1000000000.0;
  }

  v19 = 136316162;
  v20 = v14;
  v21 = 1024;
  v22 = 339;
  v23 = 2048;
  v24 = v17;
  v25 = 2112;
  v26 = @"com.apple.AttentionAwareness.clientEvent";
  v27 = 2112;
  v28 = v12;
  _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", &v19, 0x30u);
LABEL_15:

LABEL_16:
  AnalyticsSendEvent();

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)client:(id)client attentionStateChange:(BOOL)change
{
  changeCopy = change;
  v28[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v6 = @"com.apple.AttentionAwareness.clientStateNegative";
  if (changeCopy)
  {
    v6 = @"com.apple.AttentionAwareness.clientStatePositive";
  }

  v7 = v6;
  v27 = @"identifier";
  identifier = [clientCopy identifier];
  v28[0] = identifier;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v10 = v9;
  if (currentLogLevel < 7)
  {
    goto LABEL_16;
  }

  v11 = _AALog();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_15;
  }

  v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/SampleLogger.m"; *(i - 1) == 47; ++i)
  {
    v12 = i;
LABEL_10:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_10;
  }

  v14 = absTimeNS();
  if (v14 == -1)
  {
    v15 = INFINITY;
  }

  else
  {
    v15 = v14 / 1000000000.0;
  }

  v17 = 136316162;
  v18 = v12;
  v19 = 1024;
  v20 = 326;
  v21 = 2048;
  v22 = v15;
  v23 = 2112;
  v24 = v7;
  v25 = 2112;
  v26 = v10;
  _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AnalyticsSendEvent(%@, %@)", &v17, 0x30u);
LABEL_15:

LABEL_16:
  AnalyticsSendEvent();

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    dispatch_once(&sharedLogger_onceToken, &__block_literal_global_2714);
  }

  v3 = sharedLogger_logger;

  return v3;
}

uint64_t __30__AWSampleLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(AWSampleLogger);
  v1 = sharedLogger_logger;
  sharedLogger_logger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end