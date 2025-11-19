@interface AWScheduler
+ (id)sharedMotionDetectScheduler;
+ (id)sharedScheduler;
+ (id)sharedUnitTestScheduler;
- (AWScheduler)initWithOptions:(id)a3;
- (AWSchedulerObserver)observer;
- (BOOL)canActiveOperationBeEnded;
- (BOOL)canRunMotionDetect;
- (BOOL)shouldActivateAttentionDetectForStreaming;
- (BOOL)shouldActivateAttentionDetectionForSampling;
- (BOOL)shouldActivateEyeReliefForStreaming;
- (BOOL)shouldActivateMotionDetectForSampling;
- (id)addStreamingClient:(id)a3 withIdentifier:(id)a4;
- (id)cancelFaceDetectStream:(id)a3 withIdentifier:(id)a4;
- (id)description;
- (id)resetInterruptedStreamingClientWithIdentifier:(id)a3;
- (id)streamFaceDetectEvents;
- (unint64_t)nextSamplingTimeForSamplingInterval:(unint64_t)a3;
- (void)addClient:(id)a3;
- (void)armEvents;
- (void)handleNotification:(unint64_t)a3;
- (void)processHIDEvent:(__IOHIDEvent *)a3 mask:(unint64_t)a4 timestamp:(unint64_t)a5 senderID:(__IOHIDService *)a6 displayUUID:(id)a7;
- (void)reevaluate;
- (void)removeInvalidClientsWithConnection:(id)a3;
- (void)removeStreamingClientwithIdentifier:(id)a3;
- (void)setClientAsInterrupted:(id)a3 forKey:(id)a4;
@end

@implementation AWScheduler

- (void)armEvents
{
  v62 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = absTimeNS();
  v4 = [(AWScheduler *)self shouldActivateAttentionDetectionForSampling];
  if (v4)
  {
    v5 = 0;
  }

  else if ([(AWScheduler *)self shouldActivateMotionDetectForSampling])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  [(AWAttentionSampler *)self->_attentionSampler startDeadlineComputation];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_clients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v46 objects:v61 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v46 + 1) + 8 * i) updateDeadlinesForTime:v3];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v46 objects:v61 count:16];
    }

    while (v8);
  }

  [(AWAttentionSampler *)self->_attentionSampler finishDeadlineComputationWithOptions:v5 | v4];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = self->_clients;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v42 objects:v60 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    v15 = -1;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v42 + 1) + 8 * j) nextTimerForTime:{v3, v42}];
        if (v17 < v15)
        {
          v15 = v17;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v42 objects:v60 count:16];
    }

    while (v13);

    if (v15 != -1)
    {
      v18 = absTimeNS();
      if (v15 >= v18 || currentLogLevel < 7)
      {
        goto LABEL_52;
      }

      v20 = _AALog();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v21 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++k)
      {
        if (*(k - 1) == 47)
        {
          v21 = k;
        }

        else if (!*(k - 1))
        {
          v28 = absTimeNS();
          if (v28 == -1)
          {
            v29 = INFINITY;
          }

          else
          {
            v29 = v28 / 1000000000.0;
          }

          *buf = 136316162;
          v51 = v21;
          v52 = 1024;
          v53 = 454;
          v54 = 2048;
          v55 = v29;
          v56 = 2112;
          v57 = self;
          v58 = 2048;
          v59 = v15 / 1000000000.0;
          _os_log_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ next deadline %13.5f IN THE PAST!", buf, 0x30u);
LABEL_51:

LABEL_52:
          v33 = v15 - v18;
          if (v15 < v18)
          {
            v33 = 0;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          timer = self->_timer;
          v36 = dispatch_time(0, v34);
          dispatch_source_set_timer(timer, v36, 0xFFFFFFFFFFFFFFFFLL, 0);
          if (currentLogLevel >= 7)
          {
            v23 = _AALog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v37 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
              for (m = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++m)
              {
                if (*(m - 1) == 47)
                {
                  v37 = m;
                }

                else if (!*(m - 1))
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

                  *buf = 136316162;
                  v51 = v37;
                  v52 = 1024;
                  v53 = 460;
                  v54 = 2048;
                  v55 = v40;
                  v56 = 2112;
                  v57 = self;
                  v58 = 2048;
                  v59 = v15 / 1000000000.0;
                  v30 = "%30s:%-4d: %13.5f: %@ scheduled timer for %13.5f";
                  v31 = v23;
                  v32 = 48;
                  goto LABEL_69;
                }
              }
            }

LABEL_70:
          }

          goto LABEL_71;
        }
      }
    }
  }

  else
  {
  }

  if (currentLogLevel >= 7)
  {
    v23 = _AALog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    v24 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
    for (n = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++n)
    {
      if (*(n - 1) == 47)
      {
        v24 = n;
      }

      else if (!*(n - 1))
      {
        v26 = absTimeNS();
        if (v26 == -1)
        {
          v27 = INFINITY;
        }

        else
        {
          v27 = v26 / 1000000000.0;
        }

        *buf = 136315906;
        v51 = v24;
        v52 = 1024;
        v53 = 447;
        v54 = 2048;
        v55 = v27;
        v56 = 2112;
        v57 = self;
        v30 = "%30s:%-4d: %13.5f: %@ no timer to schedule, waiting for next event";
        v31 = v23;
        v32 = 38;
LABEL_69:
        _os_log_impl(&dword_1BB2EF000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
        goto LABEL_70;
      }
    }
  }

LABEL_71:
  v41 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldActivateAttentionDetectionForSampling
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  clients = self->_clients;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AWScheduler_shouldActivateAttentionDetectionForSampling__block_invoke;
  v12[3] = &unk_1E7F373B8;
  v12[4] = &v13;
  [(NSMutableArray *)clients enumerateObjectsUsingBlock:v12];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
  {
    v4 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v6 = absTimeNS();
  if (v6 == -1)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = v6 / 1000000000.0;
  }

  v8 = *(v14 + 6);
  *buf = 136315906;
  v18 = v4;
  v19 = 1024;
  v20 = 773;
  v21 = 2048;
  v22 = v7;
  v23 = 1024;
  v24 = v8;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %d active AttentionDetect clients", buf, 0x22u);
LABEL_13:

LABEL_14:
  v9 = *(v14 + 6) > 0;
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)shouldActivateMotionDetectForSampling
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  clients = self->_clients;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__AWScheduler_shouldActivateMotionDetectForSampling__block_invoke;
  v12[3] = &unk_1E7F373B8;
  v12[4] = &v13;
  [(NSMutableArray *)clients enumerateObjectsUsingBlock:v12];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
  {
    v4 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v6 = absTimeNS();
  if (v6 == -1)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = v6 / 1000000000.0;
  }

  v8 = *(v14 + 6);
  *buf = 136315906;
  v18 = v4;
  v19 = 1024;
  v20 = 818;
  v21 = 2048;
  v22 = v7;
  v23 = 1024;
  v24 = v8;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %d active motion detect clients", buf, 0x22u);
LABEL_13:

LABEL_14:
  v9 = *(v14 + 6) > 0;
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __52__AWScheduler_shouldActivateMotionDetectForSampling__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isStreamingClient] & 1) == 0 && objc_msgSend(v3, "activateMotionDetect") && (objc_msgSend(v3, "invalid") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void __58__AWScheduler_shouldActivateAttentionDetectionForSampling__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isStreamingClient] & 1) == 0 && objc_msgSend(v3, "activateAttentionDetection") && (objc_msgSend(v3, "invalid") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p> (identifier: %@)", v5, self, self->_identifier];

  return v6;
}

- (AWSchedulerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (BOOL)canRunMotionDetect
{
  if ([(AWAttentionSampler *)self->_attentionSampler currentState]== 1 || [(AWScheduler *)self shouldActivateAttentionDetectionForSampling])
  {
    return 0;
  }

  return [(AWScheduler *)self shouldActivateMotionDetectForSampling];
}

- (BOOL)shouldActivateEyeReliefForStreaming
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  streamingClients = self->_streamingClients;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__AWScheduler_shouldActivateEyeReliefForStreaming__block_invoke;
  v12[3] = &unk_1E7F37800;
  v12[4] = &v13;
  [(NSMutableDictionary *)streamingClients enumerateKeysAndObjectsUsingBlock:v12];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
  {
    v4 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v6 = absTimeNS();
  if (v6 == -1)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = v6 / 1000000000.0;
  }

  v8 = *(v14 + 6);
  *buf = 136315906;
  v18 = v4;
  v19 = 1024;
  v20 = 804;
  v21 = 2048;
  v22 = v7;
  v23 = 1024;
  v24 = v8;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %d active eyeRelief client", buf, 0x22u);
LABEL_13:

LABEL_14:
  v9 = *(v14 + 6) > 0;
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __50__AWScheduler_shouldActivateEyeReliefForStreaming__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 activateEyeRelief] && (objc_msgSend(v4, "invalid") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (BOOL)shouldActivateAttentionDetectForStreaming
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  streamingClients = self->_streamingClients;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AWScheduler_shouldActivateAttentionDetectForStreaming__block_invoke;
  v12[3] = &unk_1E7F37800;
  v12[4] = &v13;
  [(NSMutableDictionary *)streamingClients enumerateKeysAndObjectsUsingBlock:v12];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
  {
    v4 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v6 = absTimeNS();
  if (v6 == -1)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = v6 / 1000000000.0;
  }

  v8 = *(v14 + 6);
  *buf = 136315906;
  v18 = v4;
  v19 = 1024;
  v20 = 788;
  v21 = 2048;
  v22 = v7;
  v23 = 1024;
  v24 = v8;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %d active AD clients", buf, 0x22u);
LABEL_13:

LABEL_14:
  v9 = *(v14 + 6) > 0;
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __56__AWScheduler_shouldActivateAttentionDetectForStreaming__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 activateAttentionDetection] && (objc_msgSend(v4, "invalid") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)setClientAsInterrupted:(id)a3 forKey:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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

      v15 = [v6 identifier];
      *v23 = 134218242;
      *&v23[4] = v10;
      *&v23[12] = 2112;
      *&v23[14] = v15;
      v16 = "%13.5f: Adding client %@ to the interrupted clients list";
      v17 = v8;
      v18 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, v23, v18);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

          v15 = [v6 identifier];
          *v23 = 136315906;
          *&v23[4] = v11;
          *&v23[12] = 1024;
          *&v23[14] = 754;
          *&v23[18] = 2048;
          *&v23[20] = v14;
          *&v23[28] = 2112;
          *&v23[30] = v15;
          v16 = "%30s:%-4d: %13.5f: Adding client %@ to the interrupted clients list";
          v17 = v8;
          v18 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  [(NSMutableDictionary *)self->_streamingClients removeObjectForKey:v7, *v23, *&v23[16], *&v23[24], v24];
  [(NSMutableDictionary *)self->_interruptedStreamingClients setObject:v6 forKey:v7];
  attentionStreamer = self->_attentionStreamer;
  v20 = [v6 identifier];
  [v6 streamingDuration];
  -[AWAttentionStreamer logStreamComplete:identifier:duration:ERActivated:](attentionStreamer, "logStreamComplete:identifier:duration:ERActivated:", 128, v20, v21, [v6 activateEyeRelief]);

  [v6 setStreamingDuration:0.0];
  v22 = *MEMORY[0x1E69E9840];
}

- (void)handleNotification:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (a3 == 4 || a3 == 1)
  {
    streamingClients = self->_streamingClients;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__AWScheduler_handleNotification___block_invoke;
    v6[3] = &unk_1E7F37390;
    v6[4] = self;
    v6[5] = a3;
    [(NSMutableDictionary *)streamingClients enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __34__AWScheduler_handleNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v5 invalid] & 1) == 0)
  {
    [v5 notifyStreamingClientOfInterruption:*(a1 + 40)];
    [*(a1 + 32) calculateTimeDelta:objc_msgSend(v5 endTime:"streamingStartTime") timebase:{mach_continuous_time(), *(*(a1 + 32) + 64)}];
    [v5 setStreamingDuration:?];
    [*(a1 + 32) setClientAsInterrupted:v5 forKey:v6];
    [v5 invalidateWithoutQueue];
  }
}

- (id)cancelFaceDetectStream:(id)a3 withIdentifier:(id)a4
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (![(AWAttentionStreamer *)self->_attentionStreamer isStreamerRunningWithMask:128])
  {
    if (currentLogLevel == 5)
    {
      v11 = _AALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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

        *v64 = 134217984;
        *&v64[4] = v13;
        v20 = "%13.5f: Not stopping streamer as it isn't running currently";
        v21 = v11;
        v22 = 12;
LABEL_37:
        _os_log_impl(&dword_1BB2EF000, v21, OS_LOG_TYPE_DEFAULT, v20, v64, v22);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_39:
        v28 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696A798];
        v66 = *MEMORY[0x1E696A578];
        v67[0] = @" Streamer not running";
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:{1, *v64, *&v64[16], *&v64[24]}];
        v31 = [v28 errorWithDomain:v29 code:3 userInfo:v30];

        goto LABEL_91;
      }

      v11 = _AALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v14 = i;
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

            *v64 = 136315650;
            *&v64[4] = v14;
            *&v64[12] = 1024;
            *&v64[14] = 672;
            *&v64[18] = 2048;
            *&v64[20] = v19;
            v20 = "%30s:%-4d: %13.5f: Not stopping streamer as it isn't running currently";
            v21 = v11;
            v22 = 28;
            goto LABEL_37;
          }
        }
      }
    }

    goto LABEL_39;
  }

  if ([(NSMutableDictionary *)self->_streamingClients count]> 1)
  {
    goto LABEL_45;
  }

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

      *v64 = 134217984;
      *&v64[4] = v10;
      v25 = "%13.5f: Stopping the streamer as there are no active streaming clients";
      v26 = v8;
      v27 = 12;
LABEL_42:
      _os_log_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_DEFAULT, v25, v64, v27);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_44;
    }

    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v16 = j;
        }

        else if (!*(j - 1))
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

          *v64 = 136315650;
          *&v64[4] = v16;
          *&v64[12] = 1024;
          *&v64[14] = 679;
          *&v64[18] = 2048;
          *&v64[20] = v24;
          v25 = "%30s:%-4d: %13.5f: Stopping the streamer as there are no active streaming clients";
          v26 = v8;
          v27 = 28;
          goto LABEL_42;
        }
      }
    }
  }

LABEL_44:
  v31 = [(AWAttentionStreamer *)self->_attentionStreamer cancelEventStreamWithMask:128, *v64, *&v64[8], *&v64[24]];
  if (v31)
  {
    goto LABEL_91;
  }

LABEL_45:
  -[AWScheduler calculateTimeDelta:endTime:timebase:](self, "calculateTimeDelta:endTime:timebase:", [v6 streamingStartTime], mach_continuous_time(), *&self->_timebase);
  [v6 setStreamingDuration:?];
  [(AWScheduler *)self setClientAsInterrupted:v6 forKey:v7];
  if (currentLogLevel == 5)
  {
    v32 = _AALog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = absTimeNS();
      if (v33 == -1)
      {
        v34 = INFINITY;
      }

      else
      {
        v34 = v33 / 1000000000.0;
      }

      v39 = [(NSMutableDictionary *)self->_streamingClients count];
      v40 = [(NSMutableDictionary *)self->_streamingClients allValues];
      *v64 = 134218498;
      *&v64[4] = v34;
      *&v64[12] = 2048;
      *&v64[14] = v39;
      *&v64[22] = 2112;
      *&v64[24] = v40;
      v41 = "%13.5f: %lu streaming clients: %@";
      v42 = v32;
      v43 = 32;
LABEL_63:
      _os_log_impl(&dword_1BB2EF000, v42, OS_LOG_TYPE_DEFAULT, v41, v64, v43);
    }

LABEL_64:

    goto LABEL_65;
  }

  if (currentLogLevel >= 6)
  {
    v32 = _AALog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v35 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++k)
      {
        if (*(k - 1) == 47)
        {
          v35 = k;
        }

        else if (!*(k - 1))
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

          v44 = [(NSMutableDictionary *)self->_streamingClients count];
          v40 = [(NSMutableDictionary *)self->_streamingClients allValues];
          *v64 = 136316162;
          *&v64[4] = v35;
          *&v64[12] = 1024;
          *&v64[14] = 691;
          *&v64[18] = 2048;
          *&v64[20] = v38;
          *&v64[28] = 2048;
          *&v64[30] = v44;
          *&v64[38] = 2112;
          v65 = v40;
          v41 = "%30s:%-4d: %13.5f: %lu streaming clients: %@";
          v42 = v32;
          v43 = 48;
          goto LABEL_63;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_65:
  v45 = [(AWAttentionStreamer *)self->_attentionStreamer getStreamerOptionsWithMask:128, *v64, *&v64[8], *&v64[24], *&v64[32], v65];
  v46 = [(AWScheduler *)self shouldActivateAttentionDetectForStreaming];
  v47 = [(AWScheduler *)self shouldActivateEyeReliefForStreaming];
  v48 = v47;
  if (v46 != (v45 & 0x100) >> 8 || ((v47 ^ v45) & 1) != 0)
  {
    if (currentLogLevel == 5)
    {
      v49 = _AALog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = absTimeNS();
        if (v50 == -1)
        {
          v51 = INFINITY;
        }

        else
        {
          v51 = v50 / 1000000000.0;
        }

        *v64 = 134217984;
        *&v64[4] = v51;
        v56 = "%13.5f: Streaming options have changed, cancelling current operation and starting a new one with updated options";
        v57 = v49;
        v58 = 12;
LABEL_85:
        _os_log_impl(&dword_1BB2EF000, v57, OS_LOG_TYPE_DEFAULT, v56, v64, v58);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_87:
        v59 = [(AWAttentionStreamer *)self->_attentionStreamer cancelEventStreamWithMask:128, *v64, *&v64[8], *&v64[24]];
        v60 = 256;
        if (!v46)
        {
          v60 = 0;
        }

        v61 = [(AWScheduler *)self streamFaceDetectEventsWithOptions:v60 | v48];
        goto LABEL_90;
      }

      v49 = _AALog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v52 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (m = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++m)
        {
          if (*(m - 1) == 47)
          {
            v52 = m;
          }

          else if (!*(m - 1))
          {
            v54 = absTimeNS();
            if (v54 == -1)
            {
              v55 = INFINITY;
            }

            else
            {
              v55 = v54 / 1000000000.0;
            }

            *v64 = 136315650;
            *&v64[4] = v52;
            *&v64[12] = 1024;
            *&v64[14] = 704;
            *&v64[18] = 2048;
            *&v64[20] = v55;
            v56 = "%30s:%-4d: %13.5f: Streaming options have changed, cancelling current operation and starting a new one with updated options";
            v57 = v49;
            v58 = 28;
            goto LABEL_85;
          }
        }
      }
    }

    goto LABEL_87;
  }

LABEL_90:
  v31 = 0;
LABEL_91:

  v62 = *MEMORY[0x1E69E9840];

  return v31;
}

void __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v6 invalid] & 1) == 0)
  {
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

        v14 = [v6 identifier];
        *v19 = 134218242;
        *&v19[4] = v9;
        *&v19[12] = 2112;
        *&v19[14] = v14;
        v15 = "%13.5f: Removing client %@ from streaming clients list";
        v16 = v7;
        v17 = 22;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, v19, v17);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        [*(*(a1 + 32) + 32) removeObjectForKey:{v5, *v19, *&v19[16], *&v19[24], v20}];
        [v6 invalidateWithoutQueue];
        goto LABEL_23;
      }

      v7 = _AALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

            v14 = [v6 identifier];
            *v19 = 136315906;
            *&v19[4] = v10;
            *&v19[12] = 1024;
            *&v19[14] = 593;
            *&v19[18] = 2048;
            *&v19[20] = v13;
            *&v19[28] = 2112;
            *&v19[30] = v14;
            v15 = "%30s:%-4d: %13.5f: Removing client %@ from streaming clients list";
            v16 = v7;
            v17 = 38;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  v18 = *MEMORY[0x1E69E9840];
}

void __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_2;
  v6[3] = &unk_1E7F37340;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_70(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (currentLogLevel >= 3)
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

        v8 = 134218242;
        v9 = v7;
        v10 = 2112;
        v11 = v3;
        _os_log_error_impl(&dword_1BB2EF000, v4, OS_LOG_TYPE_ERROR, "%13.5f: Error %@ when starting streaming operation from BioKit", &v8, 0x16u);
      }
    }

    [*(*(a1 + 32) + 32) enumerateKeysAndObjectsUsingBlock:*(a1 + 40)];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    if ([v6 metadataType] == 2 || objc_msgSend(v6, "metadataType") == 5)
    {
      v7 = _AALog();
      v8 = _AALog();
      v9 = os_signpost_id_generate(v8);

      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        *v11 = 0;
        _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v7, OS_SIGNPOST_EVENT, v9, "AA: Streaming event received", &unk_1BB32C3F2, v11, 2u);
      }
    }
  }

  v10 = v4;
  if (([v10 invalid] & 1) == 0)
  {
    [v10 notifyClientOfStreamingEvent:*(a1 + 32)];
  }
}

- (id)streamFaceDetectEvents
{
  v3 = [(AWScheduler *)self shouldActivateAttentionDetectForStreaming];
  v4 = [(AWScheduler *)self shouldActivateEyeReliefForStreaming];
  v5 = 256;
  if (!v3)
  {
    v5 = 0;
  }

  return [(AWScheduler *)self streamFaceDetectEventsWithOptions:v5 | v4];
}

- (void)removeStreamingClientwithIdentifier:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_streamingClients objectForKey:v4];
  if (!v5)
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

      *v31 = 134218242;
      *&v31[4] = v8;
      *&v31[12] = 2112;
      *&v31[14] = v5;
      v13 = "%13.5f: Trying to remove streaming client %@";
      v14 = v6;
      v15 = 22;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, v31, v15);
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
      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

          *v31 = 136315906;
          *&v31[4] = v9;
          *&v31[12] = 1024;
          *&v31[14] = 551;
          *&v31[18] = 2048;
          *&v31[20] = v12;
          *&v31[28] = 2112;
          *&v31[30] = v5;
          v13 = "%30s:%-4d: %13.5f: Trying to remove streaming client %@";
          v14 = v6;
          v15 = 38;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_22:
  v16 = [(AWScheduler *)self cancelFaceDetectStream:v5 withIdentifier:v4, *v31, *&v31[16], *&v31[24], v32];
  v17 = [(NSMutableDictionary *)self->_streamingClients objectForKey:v4];

  if (v17)
  {
    [(NSMutableDictionary *)self->_streamingClients removeObjectForKey:v4];
  }

LABEL_24:
  v18 = [(NSMutableDictionary *)self->_interruptedStreamingClients objectForKey:v4];
  if (v18)
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

        v26 = [v18 identifier];
        *v31 = 134218242;
        *&v31[4] = v21;
        *&v31[12] = 2112;
        *&v31[14] = v26;
        v27 = "%13.5f: Removing client %@ from the list of interrupted clients";
        v28 = v19;
        v29 = 22;
LABEL_43:
        _os_log_impl(&dword_1BB2EF000, v28, OS_LOG_TYPE_DEFAULT, v27, v31, v29);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_45:
        [(NSMutableDictionary *)self->_interruptedStreamingClients removeObjectForKey:v4, *v31, *&v31[8], *&v31[24]];
        goto LABEL_46;
      }

      v19 = _AALog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++j)
        {
          if (*(j - 1) == 47)
          {
            v22 = j;
          }

          else if (!*(j - 1))
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

            v26 = [v18 identifier];
            *v31 = 136315906;
            *&v31[4] = v22;
            *&v31[12] = 1024;
            *&v31[14] = 564;
            *&v31[18] = 2048;
            *&v31[20] = v25;
            *&v31[28] = 2112;
            *&v31[30] = v26;
            v27 = "%30s:%-4d: %13.5f: Removing client %@ from the list of interrupted clients";
            v28 = v19;
            v29 = 38;
            goto LABEL_43;
          }
        }
      }
    }

    goto LABEL_45;
  }

LABEL_46:

  v30 = *MEMORY[0x1E69E9840];
}

- (id)addStreamingClient:(id)a3 withIdentifier:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[AWScheduler addStreamingClient:withIdentifier:]", "Scheduler.m", 518, "client");
  }

  v8 = v7;
  v9 = [(NSMutableDictionary *)self->_streamingClients objectForKey:v7];

  if (!v9)
  {
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

        *v42 = 134218242;
        *&v42[4] = v17;
        *&v42[12] = 2112;
        *&v42[14] = v6;
        v22 = "%13.5f: Creating new streaming client %@";
        v23 = v15;
        v24 = 22;
LABEL_27:
        _os_log_impl(&dword_1BB2EF000, v23, OS_LOG_TYPE_DEFAULT, v22, v42, v24);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_29:
        [(NSMutableDictionary *)self->_streamingClients setObject:v6 forKey:v8, *v42, *&v42[16], *&v42[24]];
        [(AWScheduler *)self addClient:v6];
        [v6 setStreamingDuration:0.0];
        [v6 setStreamingStartTime:mach_continuous_time()];
        v14 = 0;
        goto LABEL_30;
      }

      v15 = _AALog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v18 = i;
          }

          else if (!*(i - 1))
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

            *v42 = 136315906;
            *&v42[4] = v18;
            *&v42[12] = 1024;
            *&v42[14] = 530;
            *&v42[18] = 2048;
            *&v42[20] = v21;
            *&v42[28] = 2112;
            *&v42[30] = v6;
            v22 = "%30s:%-4d: %13.5f: Creating new streaming client %@";
            v23 = v15;
            v24 = 38;
            goto LABEL_27;
          }
        }
      }
    }

    goto LABEL_29;
  }

  if (currentLogLevel >= 3)
  {
    v10 = _AALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = absTimeNS();
      if (v25 == -1)
      {
        v26 = INFINITY;
      }

      else
      {
        v26 = v25 / 1000000000.0;
      }

      *v42 = 134217984;
      *&v42[4] = v26;
      _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: Client already added to the list of streaming clients, don't add it again", v42, 0xCu);
    }
  }

  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A798];
  v44 = *MEMORY[0x1E696A578];
  v45[0] = @" Client already active";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v14 = [v11 errorWithDomain:v12 code:37 userInfo:v13];

LABEL_30:
  if (currentLogLevel == 5)
  {
    v27 = _AALog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = absTimeNS();
      if (v28 == -1)
      {
        v29 = INFINITY;
      }

      else
      {
        v29 = v28 / 1000000000.0;
      }

      v34 = [(NSMutableDictionary *)self->_streamingClients count];
      v35 = [(NSMutableDictionary *)self->_streamingClients allValues];
      *v42 = 134218498;
      *&v42[4] = v29;
      *&v42[12] = 2048;
      *&v42[14] = v34;
      *&v42[22] = 2112;
      *&v42[24] = v35;
      v36 = "%13.5f: %lu streaming clients: %@";
      v37 = v27;
      v38 = 32;
LABEL_48:
      _os_log_impl(&dword_1BB2EF000, v37, OS_LOG_TYPE_DEFAULT, v36, v42, v38);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_50;
    }

    v27 = _AALog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v30 = j;
        }

        else if (!*(j - 1))
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

          v39 = [(NSMutableDictionary *)self->_streamingClients count];
          v35 = [(NSMutableDictionary *)self->_streamingClients allValues];
          *v42 = 136316162;
          *&v42[4] = v30;
          *&v42[12] = 1024;
          *&v42[14] = 540;
          *&v42[18] = 2048;
          *&v42[20] = v33;
          *&v42[28] = 2048;
          *&v42[30] = v39;
          *&v42[38] = 2112;
          v43 = v35;
          v36 = "%30s:%-4d: %13.5f: %lu streaming clients: %@";
          v37 = v27;
          v38 = 48;
          goto LABEL_48;
        }
      }
    }
  }

LABEL_50:
  v40 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)resetInterruptedStreamingClientWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_interruptedStreamingClients objectForKey:v4];
  if (v5)
  {
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

        v13 = [v5 identifier];
        *v19 = 134218242;
        *&v19[4] = v8;
        *&v19[12] = 2112;
        *&v19[14] = v13;
        v14 = "%13.5f: Interrupted streaming client %@ restarting";
        v15 = v6;
        v16 = 22;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, v19, v16);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        [(NSMutableDictionary *)self->_interruptedStreamingClients removeObjectForKey:v4, *v19, *&v19[16], *&v19[24], v20];
        [(NSMutableDictionary *)self->_streamingClients setObject:v5 forKey:v4];
        [v5 setStreamingDuration:0.0];
        [v5 setStreamingStartTime:mach_continuous_time()];
        goto LABEL_23;
      }

      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

            v13 = [v5 identifier];
            *v19 = 136315906;
            *&v19[4] = v9;
            *&v19[12] = 1024;
            *&v19[14] = 497;
            *&v19[18] = 2048;
            *&v19[20] = v12;
            *&v19[28] = 2112;
            *&v19[30] = v13;
            v14 = "%30s:%-4d: %13.5f: Interrupted streaming client %@ restarting";
            v15 = v6;
            v16 = 38;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (unint64_t)nextSamplingTimeForSamplingInterval:(unint64_t)a3
{
  v5 = [(AWScheduler *)self shouldActivateMotionDetectForSampling]&& ![(AWScheduler *)self shouldActivateAttentionDetectionForSampling];
  attentionSampler = self->_attentionSampler;

  return [(AWAttentionSampler *)attentionSampler nextSampleTimeForSamplingInterval:a3 ignoreDisplayState:v5];
}

- (void)reevaluate
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) reevaluateConfig];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)processHIDEvent:(__IOHIDEvent *)a3 mask:(unint64_t)a4 timestamp:(unint64_t)a5 senderID:(__IOHIDService *)a6 displayUUID:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_clients;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * v17++) notifyHIDEvent:a3 mask:a4 timestamp:a5 senderID:a6 displayUUID:{v12, v19}];
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(AWScheduler *)self armEvents];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeInvalidClientsWithConnection:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableArray *)self->_clients count];
  if (!v5)
  {
    goto LABEL_29;
  }

  v7 = v5;
  v8 = 0;
  *&v6 = 136315906;
  v25 = v6;
  v9 = v5;
  do
  {
    v10 = [(NSMutableArray *)self->_clients objectAtIndex:v8, v25];
    if (([v10 invalid] & 1) != 0 || (objc_msgSend(v10, "connection"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == v4))
    {
      if (currentLogLevel == 5)
      {
        v12 = _AALog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

          *buf = 134218242;
          v27 = v14;
          v28 = 2112;
          *v29 = v10;
          v19 = v12;
          v20 = "%13.5f: Removing client: %@";
          v21 = 22;
LABEL_23:
          _os_log_impl(&dword_1BB2EF000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
LABEL_25:
          v22 = [v10 clientId];
          [(AWScheduler *)self removeStreamingClientwithIdentifier:v22];

          [v10 invalidateWithHandler:0];
          [(NSMutableArray *)self->_clients removeObjectAtIndex:v8--];
          --v9;
          goto LABEL_26;
        }

        v12 = _AALog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
          {
            if (*(i - 1) == 47)
            {
              v15 = i;
            }

            else if (!*(i - 1))
            {
              v17 = absTimeNS();
              if (v17 == -1)
              {
                v18 = INFINITY;
              }

              else
              {
                v18 = v17 / 1000000000.0;
              }

              *buf = v25;
              v27 = *&v15;
              v28 = 1024;
              *v29 = 350;
              *&v29[4] = 2048;
              *&v29[6] = v18;
              v30 = 2112;
              v31 = v10;
              v19 = v12;
              v20 = "%30s:%-4d: %13.5f: Removing client: %@";
              v21 = 38;
              goto LABEL_23;
            }
          }
        }
      }

      goto LABEL_25;
    }

LABEL_26:

    ++v8;
  }

  while (v8 < v9);
  if (v7 != v9)
  {
    v23 = [(AWScheduler *)self observer];
    [v23 clientCountChangedFrom:v7 to:v9 forScheduler:self];

    [(AWScheduler *)self armEvents];
  }

LABEL_29:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addClient:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!v4)
  {
    __assert_rtn("[AWScheduler addClient:]", "Scheduler.m", 314, "client");
  }

  v5 = [(NSMutableArray *)self->_clients count];
  [(NSMutableArray *)self->_clients addObject:v4];
  v6 = [(AWScheduler *)self observer];
  [v6 clientCountChangedFrom:v5 to:-[NSMutableArray count](self->_clients forScheduler:{"count"), self}];

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

      v14 = [(NSMutableArray *)self->_clients count];
      *v30 = 134218498;
      *&v30[4] = v9;
      *&v30[12] = 2112;
      *&v30[14] = self;
      *&v30[22] = 2048;
      *&v30[24] = v14;
      v15 = "%13.5f: %@ %lu clients";
      v16 = v7;
      v17 = 32;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, v30, v17);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_41;
    }

    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

          v18 = [(NSMutableArray *)self->_clients count];
          *v30 = 136316162;
          *&v30[4] = v10;
          *&v30[12] = 1024;
          *&v30[14] = 321;
          *&v30[18] = 2048;
          *&v30[20] = v13;
          *&v30[28] = 2112;
          *&v30[30] = self;
          *&v30[38] = 2048;
          v31 = v18;
          v15 = "%30s:%-4d: %13.5f: %@ %lu clients";
          v16 = v7;
          v17 = 48;
          goto LABEL_20;
        }
      }
    }
  }

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

      *v30 = 134218242;
      *&v30[4] = v21;
      *&v30[12] = 2112;
      *&v30[14] = v4;
      v26 = "%13.5f: New client: %@";
      v27 = v19;
      v28 = 22;
LABEL_39:
      _os_log_impl(&dword_1BB2EF000, v27, OS_LOG_TYPE_DEFAULT, v26, v30, v28);
    }

LABEL_40:

    goto LABEL_41;
  }

  if (currentLogLevel >= 6)
  {
    v19 = _AALog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v22 = j;
        }

        else if (!*(j - 1))
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

          *v30 = 136315906;
          *&v30[4] = v22;
          *&v30[12] = 1024;
          *&v30[14] = 322;
          *&v30[18] = 2048;
          *&v30[20] = v25;
          *&v30[28] = 2112;
          *&v30[30] = v4;
          v26 = "%30s:%-4d: %13.5f: New client: %@";
          v27 = v19;
          v28 = 38;
          goto LABEL_39;
        }
      }
    }

    goto LABEL_40;
  }

LABEL_41:
  [(AWScheduler *)self armEvents:*v30];

  v29 = *MEMORY[0x1E69E9840];
}

- (BOOL)canActiveOperationBeEnded
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 &= [*(*(&v11 + 1) + 8 * i) canOperationBeEndedForClient];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (AWScheduler)initWithOptions:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v70.receiver = self;
  v70.super_class = AWScheduler;
  v5 = [(AWScheduler *)&v70 init];
  if (v5)
  {
    if (!v4)
    {
      goto LABEL_38;
    }

    v6 = [v4 valueForKey:@"identifier"];
    v7 = v6 == 0;

    if (v7)
    {
      goto LABEL_38;
    }

    v8 = [v4 valueForKey:@"allowFaceDetect"];
    v9 = v8 == 0;

    if (v9)
    {
      goto LABEL_38;
    }

    v10 = [v4 valueForKey:@"allowHIDEvents"];
    v11 = v10 == 0;

    if (v11)
    {
      goto LABEL_38;
    }

    v12 = [v4 valueForKey:@"allowMotionDetect"];
    v13 = v12 == 0;

    if (v13 || ([v4 valueForKey:@"initForUnitTest"], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v15))
    {
LABEL_38:
      v58 = 0;
      goto LABEL_37;
    }

    v16 = [v4 valueForKey:@"identifier"];
    v17 = *(v5 + 11);
    *(v5 + 11) = v16;

    v18 = [v4 objectForKeyedSubscript:@"allowFaceDetect"];
    v5[73] = [v18 BOOLValue];

    v19 = [v4 objectForKeyedSubscript:@"allowHIDEvents"];
    v5[74] = [v19 BOOLValue];

    v20 = [v4 objectForKeyedSubscript:@"allowMotionDetect"];
    v5[75] = [v20 BOOLValue];

    v21 = [v4 objectForKeyedSubscript:@"initForUnitTest"];
    v5[76] = [v21 BOOLValue];

    v22 = awQueue(1);
    v23 = *(v5 + 1);
    *(v5 + 1) = v22;

    v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v5 + 1));
    v25 = *(v5 + 2);
    *(v5 + 2) = v24;

    v26 = *(v5 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __31__AWScheduler_initWithOptions___block_invoke;
    handler[3] = &unk_1E7F38038;
    v27 = v5;
    v69 = v27;
    dispatch_source_set_event_handler(v26, handler);
    dispatch_resume(*(v5 + 2));
    v28 = [MEMORY[0x1E695DF70] array];
    v29 = *(v27 + 3);
    *(v27 + 3) = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = *(v27 + 4);
    *(v27 + 4) = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = *(v27 + 5);
    *(v27 + 5) = v32;

    mach_timebase_info(v27 + 8);
    objc_initWeak(&location, v27);
    if ((v5[76] & 1) != 0 || MGGetBoolAnswer())
    {
      v27[72] = 0;
      if (currentLogLevel == 5)
      {
        v34 = _AALog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
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

          v41 = "BiometricKit";
          v42 = *(v5 + 11);
          if (v27[72])
          {
            v41 = "AVFoundation";
          }

          *buf = 134218498;
          v74 = v36;
          v75 = 2080;
          *v76 = v41;
          *&v76[8] = 2112;
          *&v76[10] = v42;
          v43 = "%13.5f: Using %s for Pearl operations for %@";
          v44 = v34;
          v45 = 32;
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      if (currentLogLevel >= 6)
      {
        v34 = _AALog();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v37 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v37 = i;
          }

          else if (!*(i - 1))
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

            v46 = "BiometricKit";
            v47 = *(v5 + 11);
            if (v27[72])
            {
              v46 = "AVFoundation";
            }

            *buf = 136316162;
            v74 = *&v37;
            v75 = 1024;
            *v76 = 179;
            *&v76[4] = 2048;
            *&v76[6] = v40;
            *&v76[14] = 2080;
            *&v76[16] = v46;
            v77 = 2112;
            v78 = v47;
            v43 = "%30s:%-4d: %13.5f: Using %s for Pearl operations for %@";
            v44 = v34;
            v45 = 48;
LABEL_32:
            _os_log_impl(&dword_1BB2EF000, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
LABEL_33:

            break;
          }
        }
      }

      v71[0] = @"unitTest";
      v48 = [MEMORY[0x1E696AD98] numberWithBool:v5[76]];
      v72[0] = v48;
      v71[1] = @"useAVFoundation";
      v49 = [MEMORY[0x1E696AD98] numberWithBool:v27[72]];
      v72[1] = v49;
      v71[2] = @"eventMask";
      v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:128];
      v72[2] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:3];

      v52 = [[AWAttentionSampler alloc] initWithOptions:v51];
      v53 = *(v27 + 6);
      *(v27 + 6) = v52;

      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __31__AWScheduler_initWithOptions___block_invoke_47;
      v65[3] = &unk_1E7F372C8;
      objc_copyWeak(&v66, &location);
      [*(v27 + 6) setStateChangedCallback:v65];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __31__AWScheduler_initWithOptions___block_invoke_49;
      v63[3] = &unk_1E7F372F0;
      objc_copyWeak(&v64, &location);
      [*(v27 + 6) setOperationEndableCallback:v63];
      v54 = [[AWAttentionStreamer alloc] initWithOptions:v51];
      v56 = *(v27 + 7);
      v55 = (v27 + 56);
      *v55 = v54;

      v57 = *v55;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __31__AWScheduler_initWithOptions___block_invoke_2;
      v61[3] = &unk_1E7F37318;
      objc_copyWeak(&v62, &location);
      [(AWAttentionStreamer *)v57 setNotificationHandler:v61 withMask:128];
      objc_destroyWeak(&v62);
      objc_destroyWeak(&v64);
      objc_destroyWeak(&v66);
    }

    objc_destroyWeak(&location);
  }

  v58 = v5;
LABEL_37:

  v59 = *MEMORY[0x1E69E9840];
  return v58;
}

uint64_t __31__AWScheduler_initWithOptions___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v2 = _AALog();
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v3 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
  {
    v3 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v5 = absTimeNS();
  if (v5 == -1)
  {
    v6 = INFINITY;
  }

  else
  {
    v6 = v5 / 1000000000.0;
  }

  v7 = *(a1 + 32);
  v10 = 136315906;
  v11 = v3;
  v12 = 1024;
  v13 = 120;
  v14 = 2048;
  v15 = v6;
  v16 = 2112;
  v17 = v7;
  _os_log_impl(&dword_1BB2EF000, v2, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ timer fired", &v10, 0x26u);
LABEL_13:

LABEL_14:
  result = [*(a1 + 32) armEvents];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __31__AWScheduler_initWithOptions___block_invoke_47(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
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

      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v17 = 134218498;
      v18 = v6;
      v19 = 2112;
      *v20 = WeakRetained;
      *&v20[8] = 2112;
      *&v20[10] = v3;
      v12 = "%13.5f: %@ attentionSampler state change (%@)";
      v13 = v4;
      v14 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

          WeakRetained = objc_loadWeakRetained((a1 + 32));
          v17 = 136316162;
          v18 = *&v7;
          v19 = 1024;
          *v20 = 192;
          *&v20[4] = 2048;
          *&v20[6] = v10;
          *&v20[14] = 2112;
          *&v20[16] = WeakRetained;
          v21 = 2112;
          v22 = v3;
          v12 = "%30s:%-4d: %13.5f: %@ attentionSampler state change (%@)";
          v13 = v4;
          v14 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 armEvents];

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __31__AWScheduler_initWithOptions___block_invoke_49(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained canActiveOperationBeEnded];

  return v2;
}

void __31__AWScheduler_initWithOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleNotification:a2];
}

+ (id)sharedUnitTestScheduler
{
  if (sharedUnitTestScheduler_onceToken != -1)
  {
    dispatch_once(&sharedUnitTestScheduler_onceToken, &__block_literal_global_25);
  }

  v3 = sharedUnitTestScheduler_unitTestScheduler;

  return v3;
}

void __38__AWScheduler_sharedUnitTestScheduler__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"initForUnitTest";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v9[0] = v0;
  v8[1] = @"allowFaceDetect";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v9[1] = v1;
  v8[2] = @"allowHIDEvents";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v9[2] = v2;
  v8[3] = @"allowMotionDetect";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v8[4] = @"identifier";
  v9[3] = v3;
  v9[4] = @"Unit test scheduler";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  v5 = [[AWScheduler alloc] initWithOptions:v4];
  v6 = sharedUnitTestScheduler_unitTestScheduler;
  sharedUnitTestScheduler_unitTestScheduler = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)sharedMotionDetectScheduler
{
  if (sharedMotionDetectScheduler_onceToken != -1)
  {
    dispatch_once(&sharedMotionDetectScheduler_onceToken, &__block_literal_global_20);
  }

  v3 = sharedMotionDetectScheduler_motionDetectScheduler;

  return v3;
}

void __42__AWScheduler_sharedMotionDetectScheduler__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"initForUnitTest";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v9[0] = v0;
  v8[1] = @"allowFaceDetect";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v9[1] = v1;
  v8[2] = @"allowHIDEvents";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v9[2] = v2;
  v8[3] = @"allowMotionDetect";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v8[4] = @"identifier";
  v9[3] = v3;
  v9[4] = @"Motion detect scheduler";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  v5 = [[AWScheduler alloc] initWithOptions:v4];
  v6 = sharedMotionDetectScheduler_motionDetectScheduler;
  sharedMotionDetectScheduler_motionDetectScheduler = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)sharedScheduler
{
  if (sharedScheduler_onceToken != -1)
  {
    dispatch_once(&sharedScheduler_onceToken, &__block_literal_global);
  }

  v3 = sharedScheduler_scheduler;

  return v3;
}

void __30__AWScheduler_sharedScheduler__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"initForUnitTest";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v9[0] = v0;
  v8[1] = @"allowFaceDetect";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v9[1] = v1;
  v8[2] = @"allowHIDEvents";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v9[2] = v2;
  v8[3] = @"allowMotionDetect";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v8[4] = @"identifier";
  v9[3] = v3;
  v9[4] = @"Face detect scheduler";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  v5 = [[AWScheduler alloc] initWithOptions:v4];
  v6 = sharedScheduler_scheduler;
  sharedScheduler_scheduler = v5;

  v7 = *MEMORY[0x1E69E9840];
}

@end