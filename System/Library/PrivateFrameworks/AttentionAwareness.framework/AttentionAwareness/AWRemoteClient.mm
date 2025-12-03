@interface AWRemoteClient
- (AWRemoteClient)initWithProxy:(id)proxy connection:(id)connection clientConfig:(id)config clientIndex:(int)index clientId:(id)id scheduler:(id)scheduler error:(id *)error;
- (BOOL)_interestedInHIDEvent:(__IOHIDEvent *)event mask:(unint64_t)mask metadata:(id *)metadata senderID:(__IOHIDService *)d displayUUID:(id)iD;
- (BOOL)_setClientConfig:(id)config shouldReset:(BOOL)reset error:(id *)error;
- (BOOL)canDeliverPollingEvent;
- (BOOL)shouldInitBeSent;
- (id)description;
- (unint64_t)_activeEventMask;
- (unint64_t)nextAttentionLostTime:(BOOL *)time;
- (unint64_t)nextSampleTime;
- (unint64_t)nextTimerForTime:(unint64_t)time;
- (void)_resetAttentionLostTimer;
- (void)cancelFaceDetectStreamWithReply:(id)reply;
- (void)deliverEvent:(id)event;
- (void)deliverNotification:(unint64_t)notification;
- (void)deliverPollEventType:(unint64_t)type event:(id)event;
- (void)getLastEvent:(id)event;
- (void)initializeClientState;
- (void)invalidate;
- (void)invalidateWithHandler:(id)handler;
- (void)invalidateWithoutQueue;
- (void)notifyClientOfStreamingEvent:(id)event;
- (void)notifyEvent:(unint64_t)event timestamp:(unint64_t)timestamp metadata:(id *)metadata;
- (void)notifyHIDEvent:(__IOHIDEvent *)event mask:(unint64_t)mask timestamp:(unint64_t)timestamp senderID:(__IOHIDService *)d displayUUID:(id)iD;
- (void)pingWithReply:(id)reply;
- (void)pollWithTimeout:(unint64_t)timeout reply:(id)reply;
- (void)reevaluateConfig;
- (void)resetAttentionLostTimerWithReply:(id)reply;
- (void)setClientConfig:(id)config shouldReset:(BOOL)reset reply:(id)reply;
- (void)streamFaceDetectEventsWithReply:(id)reply;
- (void)updateDeadlinesForTime:(unint64_t)time;
- (void)updateEventTimesForMask:(unint64_t)mask timestamp:(unint64_t)timestamp;
@end

@implementation AWRemoteClient

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__AWRemoteClient_invalidate__block_invoke;
  block[3] = &unk_1E7F38038;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __28__AWRemoteClient_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__AWRemoteClient_invalidate__block_invoke_2;
  v3[3] = &unk_1E7F38038;
  v3[4] = v1;
  return [v1 invalidateWithHandler:v3];
}

- (void)initializeClientState
{
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_clientIndex != -1)
  {
    goto LABEL_2;
  }

  v11 = +[AWPersistentDataManager sharedManager];
  connection = self->_connection;
  v32 = 0;
  v13 = [v11 openWithConnection:connection error:&v32];
  v7 = v32;
  self->_clientIndex = v13;

  if (v7)
  {
    if (currentLogLevel >= 3)
    {
      v8 = _AALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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

        identifier = self->_identifier;
        *buf = 134218498;
        v34 = v15;
        v35 = 2112;
        *v36 = identifier;
        *&v36[8] = 2112;
        *&v36[10] = v7;
        v25 = "%13.5f: %@ failed to obtain index for persistent data access: %@";
        v26 = v8;
        v27 = 32;
LABEL_31:
        _os_log_error_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (currentLogLevel < 7)
  {
    goto LABEL_2;
  }

  v16 = _AALog();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_26;
  }

  v17 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(i - 1) == 47; ++i)
  {
    v17 = i;
LABEL_21:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_21;
  }

  v19 = absTimeNS();
  if (v19 == -1)
  {
    v20 = INFINITY;
  }

  else
  {
    v20 = v19 / 1000000000.0;
  }

  v21 = self->_identifier;
  clientIndex = self->_clientIndex;
  *buf = 136316162;
  v34 = *&v17;
  v35 = 1024;
  *v36 = 143;
  *&v36[4] = 2048;
  *&v36[6] = v20;
  *&v36[14] = 2112;
  *&v36[16] = v21;
  v37 = 1024;
  v38 = clientIndex;
  _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ obtained index %d for persistent data access", buf, 0x2Cu);
LABEL_26:

LABEL_2:
  v3 = +[AWPersistentDataManager sharedManager];
  v4 = self->_connection;
  v5 = self->_clientIndex;
  v31 = 0;
  v6 = [v3 clientStateWithConnection:v4 index:v5 error:&v31];
  v7 = v31;
  self->_clientState = v6;

  if (v7 && currentLogLevel >= 3)
  {
    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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

      v23 = self->_identifier;
      v24 = self->_clientIndex;
      *buf = 134218754;
      v34 = v10;
      v35 = 2112;
      *v36 = v23;
      *&v36[8] = 1024;
      *&v36[10] = v24;
      *&v36[14] = 2112;
      *&v36[16] = v7;
      v25 = "%13.5f: %@ failed to obtain persistent client state for index %d: %@";
      v26 = v8;
      v27 = 38;
      goto LABEL_31;
    }

LABEL_32:

LABEL_33:
    self->_clientIndex = -1;
    v29 = malloc_type_calloc(1uLL, 0x48uLL, 0x100004052436E4DuLL);
    self->_clientState = v29;
    if (!v29)
    {
      __assert_rtn("[AWRemoteClient initializeClientState]", "RemoteClient.m", 163, "_clientState");
    }
  }

  else if (v7)
  {
    goto LABEL_33;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (unint64_t)nextSampleTime
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_activateMotionDetect)
  {
    clientState = self->_clientState;
    samplingInterval = self->_samplingInterval;
  }

  else
  {
    samplingInterval = self->_samplingInterval;
    if (!samplingInterval || (clientState = self->_clientState, !clientState->var9) && !self->_sampleWhileAbsent)
    {
      result = -1;
      goto LABEL_31;
    }
  }

  var2 = clientState->var2;
  samplingDelay = self->_samplingDelay;
  v7 = var2 + samplingDelay;
  if (var2 + samplingDelay >= 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = -2;
  }

  if (__CFADD__(var2, samplingDelay))
  {
    v8 = -2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(AWScheduler *)self->_scheduler nextSamplingTimeForSamplingInterval:samplingInterval];
  if (currentLogLevel < 7)
  {
    goto LABEL_28;
  }

  v10 = _AALog();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_27;
  }

  v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(i - 1) == 47; ++i)
  {
    v11 = i;
LABEL_18:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_18;
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

  identifier = self->_identifier;
  if (v9 == -1)
  {
    v17 = INFINITY;
  }

  else
  {
    v17 = v9 / 1000000000.0;
  }

  v19 = 136316418;
  v20 = v11;
  v21 = 1024;
  v22 = 1079;
  v23 = 2048;
  v24 = v15;
  v25 = 2112;
  v26 = identifier;
  v27 = 2048;
  v28 = v8 / 1000000000.0;
  v29 = 2048;
  v30 = v17;
  _os_log_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ delayedTime %13.5f nextSampleTime %13.5f", &v19, 0x3Au);
LABEL_27:

LABEL_28:
  if (v8 <= v9)
  {
    result = v9;
  }

  else
  {
    result = v8;
  }

LABEL_31:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)_activeEventMask
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = 64;
  if (self->_clientState->var9)
  {
    v3 = 56;
  }

  return *(&self->super.isa + v3);
}

- (id)description
{
  v40 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v41 = NSStringFromClass(v3);
  samplingInterval = self->_samplingInterval;
  if (samplingInterval == -1)
  {
    v5 = INFINITY;
  }

  else
  {
    v5 = samplingInterval / 1000000000.0;
  }

  samplingDelay = self->_samplingDelay;
  if (samplingDelay == -1)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = samplingDelay / 1000000000.0;
  }

  identifier = self->_identifier;
  sampleWhileAbsent = self->_sampleWhileAbsent;
  retroactiveTimeoutMode = self->_retroactiveTimeoutMode;
  pollingFilter = self->_pollingFilter;
  continuousFaceDetectMode = self->_continuousFaceDetectMode;
  unityStream = self->_unityStream;
  activateEyeRelief = self->_activateEyeRelief;
  activateAttentionDetection = self->_activateAttentionDetection;
  activateMotionDetect = self->_activateMotionDetect;
  v39 = [(NSArray *)self->_attentionLostTimeoutsSec componentsJoinedByString:@", "];
  nonSampledAttentionLostTimeout = self->_nonSampledAttentionLostTimeout;
  if (nonSampledAttentionLostTimeout == -1)
  {
    v17 = INFINITY;
  }

  else
  {
    v17 = nonSampledAttentionLostTimeout / 1000000000.0;
  }

  if (self->_nonSampledAttentionLostTimeoutEnable)
  {
    v18 = "true";
  }

  else
  {
    v18 = "false";
  }

  if (activateMotionDetect)
  {
    v19 = "true";
  }

  else
  {
    v19 = "false";
  }

  v36 = v18;
  v37 = v19;
  if (activateAttentionDetection)
  {
    v20 = "true";
  }

  else
  {
    v20 = "false";
  }

  if (activateEyeRelief)
  {
    v21 = "true";
  }

  else
  {
    v21 = "false";
  }

  v34 = v21;
  v35 = v20;
  if (unityStream)
  {
    v22 = "true";
  }

  else
  {
    v22 = "false";
  }

  v33 = v22;
  if (continuousFaceDetectMode)
  {
    v23 = "true";
  }

  else
  {
    v23 = "false";
  }

  if (pollingFilter)
  {
    v24 = "true";
  }

  else
  {
    v24 = "false";
  }

  if (retroactiveTimeoutMode)
  {
    v25 = "true";
  }

  else
  {
    v25 = "false";
  }

  if (sampleWhileAbsent)
  {
    v26 = "true";
  }

  else
  {
    v26 = "false";
  }

  v27 = getNotificationMaskDescription(self->_notificationMask);
  v28 = getEventMaskDescription(self->_eventMask);
  v29 = getEventMaskDescription(self->_attentionLostEventMask);
  keyboardDisplayUUIDs = self->_keyboardDisplayUUIDs;
  v31 = [v40 stringWithFormat:@"<%@: %p> (identifier: %@ samplingInterval: %13.5f samplingDelay: %13.5f sampleWhileAbsent: %s retroactiveTimeoutMode: %s pollingFilter: %s continuousFaceDetectMode: %s unityStream: %s activateEyeRelief: %s activateAttentionDetection: %s activateMotionDetection: %s activatePersonDetection: %s attentionLostTimeouts: %@ nonSampledAttentionLostTimeoutEnabled %s nonSampledAttentionLostTimeout %13.5f notificationMask %@ mask %@ attentionLostEventMask %@ digitizerDisplayUUIDs %@ buttonDisplayUUIDs %@ keyboardDisplayUUIDs %@ tagIndex %llu)", v41, self, identifier, *&v5, *&v7, v26, v25, v24, v23, v33, v34, v35, v37, "false", v39, v36, *&v17, v27, v28, v29, self->_digitizerDisplayUUIDs, self->_buttonDisplayUUIDs, keyboardDisplayUUIDs, self->_tagIndex];

  return v31;
}

- (void)_resetAttentionLostTimer
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = absTimeNS();
  [(AWRemoteClient *)self updateEventTimesForMask:0 timestamp:v3];
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

      identifier = self->_identifier;
      if (v3 == -1)
      {
        v12 = INFINITY;
      }

      else
      {
        v12 = v3 / 1000000000.0;
      }

      v19 = 134218498;
      v20 = v6;
      v21 = 2112;
      *v22 = identifier;
      *&v22[8] = 2048;
      *&v22[10] = v12;
      v13 = "%13.5f: reset attention lost timeout for %@ at %13.5f";
      v14 = v4;
      v15 = 32;
LABEL_25:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
    }

LABEL_26:

    goto LABEL_27;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
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

          v16 = self->_identifier;
          if (v3 == -1)
          {
            v17 = INFINITY;
          }

          else
          {
            v17 = v3 / 1000000000.0;
          }

          v19 = 136316162;
          v20 = *&v7;
          v21 = 1024;
          *v22 = 952;
          *&v22[4] = 2048;
          *&v22[6] = v10;
          *&v22[14] = 2112;
          *&v22[16] = v16;
          v23 = 2048;
          v24 = v17;
          v13 = "%30s:%-4d: %13.5f: reset attention lost timeout for %@ at %13.5f";
          v14 = v4;
          v15 = 48;
          goto LABEL_25;
        }
      }
    }

    goto LABEL_26;
  }

LABEL_27:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)cancelFaceDetectStreamWithReply:(id)reply
{
  v19[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__585;
  v16 = __Block_byref_object_dispose__586;
  v17 = 0;
  if (self->_continuousFaceDetectMode)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AWRemoteClient_cancelFaceDetectStreamWithReply___block_invoke;
    block[3] = &unk_1E7F37F00;
    block[4] = self;
    block[5] = &v12;
    dispatch_sync(queue, block);
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @" Client is not running in streaming mode";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v8 = [v6 errorWithDomain:*MEMORY[0x1E696A798] code:13 userInfo:v7];
    v9 = v13[5];
    v13[5] = v8;
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v13[5]);
  }

  _Block_object_dispose(&v12, 8);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __50__AWRemoteClient_cancelFaceDetectStreamWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) cancelFaceDetectStream:*(a1 + 32) withIdentifier:*(*(a1 + 32) + 224)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)streamFaceDetectEventsWithReply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__585;
  v22 = __Block_byref_object_dispose__586;
  v23 = 0;
  if (self->_activateAttentionDetection || self->_activateEyeRelief)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AWRemoteClient_streamFaceDetectEventsWithReply___block_invoke_2;
    block[3] = &unk_1E7F37F00;
    block[4] = self;
    block[5] = &v18;
    dispatch_sync(queue, block);
  }

  else
  {
    if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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

        identifier = self->_identifier;
        *buf = 134218242;
        v27 = v14;
        v28 = 2112;
        v29 = identifier;
        _os_log_error_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_ERROR, "%13.5f: Client does not want any metadata, not starting a stream for client %@", buf, 0x16u);
      }
    }

    v7 = self->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__AWRemoteClient_streamFaceDetectEventsWithReply___block_invoke;
    v17[3] = &unk_1E7F38038;
    v17[4] = self;
    dispatch_sync(v7, v17);
    v8 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25 = @" No metadata selected";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v10 = [v8 errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v9];
    v11 = v19[5];
    v19[5] = v10;
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v19[5]);
  }

  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __50__AWRemoteClient_streamFaceDetectEventsWithReply___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) streamFaceDetectEvents];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)notifyClientOfStreamingEvent:(id)event
{
  v31 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_25;
  }

  metadataType = [eventCopy metadataType];
  if (metadataType <= 1)
  {
    if (!metadataType)
    {
      if (currentLogLevel < 3)
      {
        goto LABEL_33;
      }

      v9 = _AALog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
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

      identifier = self->_identifier;
      *v30 = 134218242;
      *&v30[4] = v17;
      *&v30[12] = 2112;
      *&v30[14] = identifier;
      v27 = "%13.5f: Unknown metadata type received, not passing it to client %@";
      goto LABEL_55;
    }

    if (metadataType != 1 || self->_activateAttentionDetection)
    {
      goto LABEL_25;
    }

    if (currentLogLevel >= 3)
    {
      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

        v29 = self->_identifier;
        *v30 = 134218242;
        *&v30[4] = v11;
        *&v30[12] = 2112;
        *&v30[14] = v29;
        v27 = "%13.5f: AD metadata received, not passing it to client %@";
        goto LABEL_55;
      }

LABEL_32:
    }
  }

  else
  {
    if (metadataType != 2)
    {
      if (metadataType != 3)
      {
        if (metadataType != 5 || currentLogLevel < 3)
        {
          goto LABEL_25;
        }

        v6 = _AALog();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        v7 = absTimeNS();
        if (v7 == -1)
        {
          v8 = INFINITY;
        }

        else
        {
          v8 = v7 / 1000000000.0;
        }

        *v30 = 134217984;
        *&v30[4] = v8;
        v23 = "%13.5f: Combined metadata received, passing it up to client since we can't separate it";
        v24 = v6;
        v25 = 12;
        goto LABEL_50;
      }

      if (currentLogLevel >= 3)
      {
        v6 = _AALog();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
LABEL_24:

          goto LABEL_25;
        }

        v20 = absTimeNS();
        if (v20 == -1)
        {
          v21 = INFINITY;
        }

        else
        {
          v21 = v20 / 1000000000.0;
        }

        v22 = self->_identifier;
        *v30 = 134218242;
        *&v30[4] = v21;
        *&v30[12] = 2112;
        *&v30[14] = v22;
        v23 = "%13.5f: Invalid metadata type received, not passing it to client %@";
        v24 = v6;
        v25 = 22;
LABEL_50:
        _os_log_error_impl(&dword_1BB2EF000, v24, OS_LOG_TYPE_ERROR, v23, v30, v25);
        goto LABEL_24;
      }

LABEL_25:
      if (self->_unityStream)
      {
        v9 = [(AWScheduler *)self->_scheduler cancelFaceDetectStream:self withIdentifier:self->_clientId];
        if (v9 && currentLogLevel >= 3)
        {
          v14 = _AALog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

            *v30 = 134218242;
            *&v30[4] = v19;
            *&v30[12] = 2112;
            *&v30[14] = v9;
            _os_log_error_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_ERROR, "%13.5f: Error %@ received when cancelling the stream", v30, 0x16u);
          }
        }
      }

      else
      {
        v9 = 0;
      }

      [(AWFrameworkClient *)self->_proxy notifyStreamingEvent:eventCopy, *v30, *&v30[16], v31];
      goto LABEL_32;
    }

    if (self->_activateEyeRelief)
    {
      goto LABEL_25;
    }

    if (currentLogLevel >= 3)
    {
      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

        v28 = self->_identifier;
        *v30 = 134218242;
        *&v30[4] = v13;
        *&v30[12] = 2112;
        *&v30[14] = v28;
        v27 = "%13.5f: ER metadata received, not passing it to client %@";
LABEL_55:
        _os_log_error_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_ERROR, v27, v30, 0x16u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

LABEL_33:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)pingWithReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__AWRemoteClient_pingWithReply___block_invoke;
  v7[3] = &unk_1E7F37F78;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_sync(queue, v7);
}

uint64_t __32__AWRemoteClient_pingWithReply___block_invoke(uint64_t a1)
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

  v3 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(i - 1) == 47; ++i)
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

  v7 = [*(*(a1 + 32) + 184) identifier];
  v10 = 136315906;
  v11 = v3;
  v12 = 1024;
  v13 = 1362;
  v14 = 2048;
  v15 = v6;
  v16 = 2112;
  v17 = v7;
  _os_log_impl(&dword_1BB2EF000, v2, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ is alive", &v10, 0x26u);

LABEL_13:
LABEL_14:
  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)nextTimerForTime:(unint64_t)time
{
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  attentionSampler = [(AWScheduler *)self->_scheduler attentionSampler];
  if (!-[AWRemoteClient _isSamplingClient](self, "_isSamplingClient") || [attentionSampler currentState] != 2)
  {
    v27 = -1;
    updateDeadline(&v27, [(AWRemoteClient *)self nextAttentionLostTime:0], self->_identifier, "[self nextAttentionLostTime:NULL]", 1311);
    clientState = self->_clientState;
    if (clientState->var7)
    {
      if (!clientState->var8 && !clientState->var10)
      {
        var6 = clientState->var6;
        v11 = var6 + 2000000000;
        if (var6 + 2000000000 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v11 = -2;
        }

        if (var6 < 0xFFFFFFFF88CA6C00)
        {
          v12 = v11;
        }

        else
        {
          v12 = -2;
        }

        updateDeadline(&v27, v12, self->_identifier, "computeDeadline(_clientState->pollingStartTime, MAX_POLL_INITIALIZED_DELAY)", 1319);
      }

      if ([(AWRemoteClient *)self _isSamplingClient])
      {
        minimumAttentionSamplerErrorRetryTime = [attentionSampler minimumAttentionSamplerErrorRetryTime];
        if (minimumAttentionSamplerErrorRetryTime > time)
        {
          updateDeadline(&v27, minimumAttentionSamplerErrorRetryTime, self->_identifier, "minErrorRetryTime", 1329);
        }
      }

      updateDeadline(&v27, self->_clientState->var7, self->_identifier, "_clientState->pollingDeadline", 1334);
    }

    if (![(AWRemoteClient *)self _isSamplingClient])
    {
      goto LABEL_31;
    }

    nextSampleTime = [(AWRemoteClient *)self nextSampleTime];
    if ([attentionSampler currentState] != 3 && nextSampleTime > time && objc_msgSend(attentionSampler, "currentState") != 4 || self->_sampleWhileAbsent || self->_activateMotionDetect)
    {
      updateDeadline(&v27, nextSampleTime, self->_identifier, "nextSampleTime", 1350);
      goto LABEL_31;
    }

    if (currentLogLevel < 7)
    {
      goto LABEL_31;
    }

    v16 = _AALog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v17 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v17 = i;
      }

      else if (!*(i - 1))
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

        identifier = self->_identifier;
        *buf = 136315906;
        v29 = v17;
        v30 = 1024;
        v31 = 1343;
        v32 = 2048;
        v33 = v25;
        v34 = 2112;
        v35 = identifier;
        _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ ignoring next sampling deadline since the sampler state is absent", buf, 0x26u);
LABEL_51:

LABEL_31:
        v15 = v27;
        goto LABEL_46;
      }
    }
  }

  if (currentLogLevel < 7)
  {
    goto LABEL_45;
  }

  v6 = _AALog();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_44;
  }

  v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(j - 1) == 47; ++j)
  {
    v7 = j;
LABEL_10:
    ;
  }

  if (*(j - 1))
  {
    goto LABEL_10;
  }

  v19 = absTimeNS();
  if (v19 == -1)
  {
    v20 = INFINITY;
  }

  else
  {
    v20 = v19 / 1000000000.0;
  }

  v21 = self->_identifier;
  *buf = 136315906;
  v29 = v7;
  v30 = 1024;
  v31 = 1302;
  v32 = 2048;
  v33 = v20;
  v34 = 2112;
  v35 = v21;
  _os_log_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ doesn't need to be scheduled since the sampler is initializing", buf, 0x26u);
LABEL_44:

LABEL_45:
  v15 = -1;
LABEL_46:

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)updateDeadlinesForTime:(unint64_t)time
{
  v103 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  attentionSampler = [(AWScheduler *)self->_scheduler attentionSampler];
  v95 = 0;
  v6 = [(AWRemoteClient *)self nextAttentionLostTime:&v95];
  if (currentLogLevel < 7)
  {
    goto LABEL_26;
  }

  v7 = _AALog();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(i - 1) == 47; ++i)
  {
    v8 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v10 = absTimeNS();
  if (v10 == -1)
  {
    v11 = INFINITY;
  }

  else
  {
    v11 = v10 / 1000000000.0;
  }

  if (time == -1)
  {
    v12 = INFINITY;
  }

  else
  {
    v12 = time / 1000000000.0;
  }

  var7 = self->_clientState->var7;
  if (var7 == -1)
  {
    v14 = INFINITY;
  }

  else
  {
    v14 = var7 / 1000000000.0;
  }

  if (v6 == -1)
  {
    v15 = INFINITY;
  }

  else
  {
    v15 = v6 / 1000000000.0;
  }

  identifier = self->_identifier;
  v17 = v95;
  AttentionSamplerStateDescription = getAttentionSamplerStateDescription([attentionSampler currentState]);
  lastPositiveDetectTime = [attentionSampler lastPositiveDetectTime];
  if (lastPositiveDetectTime == -1)
  {
    v20 = INFINITY;
  }

  else
  {
    v20 = lastPositiveDetectTime / 1000000000.0;
  }

  buf[0] = 136317442;
  *&buf[1] = v8;
  LOWORD(buf[3]) = 1024;
  *(&buf[3] + 2) = 1118;
  HIWORD(buf[4]) = 2048;
  *&buf[5] = v11;
  LOWORD(buf[7]) = 2112;
  *(&buf[7] + 2) = identifier;
  HIWORD(buf[9]) = 2048;
  *&buf[10] = v12;
  LOWORD(buf[12]) = 2048;
  *(&buf[12] + 2) = v14;
  HIWORD(buf[14]) = 2048;
  *&buf[15] = v15;
  LOWORD(buf[17]) = 1024;
  *(&buf[17] + 2) = v17;
  HIWORD(buf[18]) = 2080;
  *&buf[19] = AttentionSamplerStateDescription;
  LOWORD(buf[21]) = 2048;
  *(&buf[21] + 2) = v20;
  _os_log_impl(&dword_1BB2EF000, v7, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ now %13.5f pollingDeadline %13.5f attentionLostTime %13.5f shouldSample %d samplerState %s lastPos %13.5f", buf, 0x5Eu);
LABEL_25:

LABEL_26:
  var10 = self->_clientState->var10;
  if (!self->_activateMotionDetect)
  {
    if (!self->_clientState->var10)
    {
      if (self->_continuousFaceDetectMode)
      {
        goto LABEL_45;
      }

      currentState = [attentionSampler currentState];
      clientState = self->_clientState;
      if (currentState == 1)
      {
        clientState->var10 = 1;
        selfCopy2 = self;
        v23 = 1;
        goto LABEL_43;
      }

      if (!clientState->var10)
      {
        goto LABEL_45;
      }
    }

    if (self->_continuousFaceDetectMode || [attentionSampler currentState] != 3 && objc_msgSend(attentionSampler, "currentState") != 5)
    {
      goto LABEL_45;
    }

    self->_clientState->var10 = 0;
    selfCopy2 = self;
    v23 = 2;
LABEL_43:
    [(AWRemoteClient *)selfCopy2 deliverNotification:v23];
    goto LABEL_45;
  }

  if (self->_clientState->var10)
  {
    goto LABEL_28;
  }

  if ([(AWScheduler *)self->_scheduler canRunMotionDetect])
  {
    if (self->_clientState->var10)
    {
LABEL_28:
      if (-[AWScheduler canRunMotionDetect](self->_scheduler, "canRunMotionDetect") && ([attentionSampler currentState] == 3 || objc_msgSend(attentionSampler, "currentState") == 5))
      {
        [(AWRemoteClient *)self deliverNotification:16];
        self->_clientState->var10 = 0;
      }
    }
  }

  else
  {
    [(AWRemoteClient *)self deliverNotification:8];
    self->_clientState->var10 = 1;
  }

LABEL_45:
  v26 = self->_clientState;
  if (v26->var7)
  {
    if (!v26->var8)
    {
      if (![(AWRemoteClient *)self _isSamplingClient])
      {
        goto LABEL_101;
      }

      isMatchOrEnrollOperationRunning = [(AWScheduler *)self->_scheduler isMatchOrEnrollOperationRunning];
      if ([attentionSampler currentState] == 3 || objc_msgSend(attentionSampler, "currentState") == 4 || isMatchOrEnrollOperationRunning)
      {
        var6 = self->_clientState->var6;
        v29 = var6 + 2000000000;
        if (var6 + 2000000000 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v29 = -2;
        }

        if (var6 < 0xFFFFFFFF88CA6C00)
        {
          v30 = v29;
        }

        else
        {
          v30 = -2;
        }

        if (v30 >= time)
        {
          if ([(AWRemoteClient *)self shouldInitBeSent])
          {
            if (isMatchOrEnrollOperationRunning)
            {
              goto LABEL_81;
            }

            goto LABEL_101;
          }
        }

        else
        {
          if (currentLogLevel == 5)
          {
            v31 = _AALog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
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

              buf[0] = 134217984;
              *&buf[1] = v33;
              v38 = "%13.5f: timed out waiting for poll initialization; sending event now";
              v39 = v31;
              v40 = 12;
LABEL_79:
              _os_log_impl(&dword_1BB2EF000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
            }

            goto LABEL_80;
          }

          if (currentLogLevel >= 6)
          {
            v31 = _AALog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v34 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
              for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++j)
              {
                if (*(j - 1) == 47)
                {
                  v34 = j;
                }

                else if (!*(j - 1))
                {
                  v36 = absTimeNS();
                  if (v36 == -1)
                  {
                    v37 = INFINITY;
                  }

                  else
                  {
                    v37 = v36 / 1000000000.0;
                  }

                  buf[0] = 136315650;
                  *&buf[1] = v34;
                  LOWORD(buf[3]) = 1024;
                  *(&buf[3] + 2) = 1179;
                  HIWORD(buf[4]) = 2048;
                  *&buf[5] = v37;
                  v38 = "%30s:%-4d: %13.5f: timed out waiting for poll initialization; sending event now";
                  v39 = v31;
                  v40 = 28;
                  goto LABEL_79;
                }
              }
            }

LABEL_80:

            if (isMatchOrEnrollOperationRunning)
            {
LABEL_81:
              if (currentLogLevel == 5)
              {
                v41 = _AALog();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = absTimeNS();
                  if (v42 == -1)
                  {
                    v43 = INFINITY;
                  }

                  else
                  {
                    v43 = v42 / 1000000000.0;
                  }

                  buf[0] = 134217984;
                  *&buf[1] = v43;
                  v48 = "%13.5f: Match or enroll operation underway, send init to polling clients immediately";
                  v49 = v41;
                  v50 = 12;
LABEL_99:
                  _os_log_impl(&dword_1BB2EF000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
                }

                goto LABEL_100;
              }

              if (currentLogLevel >= 6)
              {
                v41 = _AALog();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
                  for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++k)
                  {
                    if (*(k - 1) == 47)
                    {
                      v44 = k;
                    }

                    else if (!*(k - 1))
                    {
                      v46 = absTimeNS();
                      if (v46 == -1)
                      {
                        v47 = INFINITY;
                      }

                      else
                      {
                        v47 = v46 / 1000000000.0;
                      }

                      buf[0] = 136315650;
                      *&buf[1] = v44;
                      LOWORD(buf[3]) = 1024;
                      *(&buf[3] + 2) = 1193;
                      HIWORD(buf[4]) = 2048;
                      *&buf[5] = v47;
                      v48 = "%30s:%-4d: %13.5f: Match or enroll operation underway, send init to polling clients immediately";
                      v49 = v41;
                      v50 = 28;
                      goto LABEL_99;
                    }
                  }
                }

LABEL_100:
              }
            }
          }

LABEL_101:
          [(AWRemoteClient *)self deliverPollEventType:1 event:0];
          self->_clientState->var8 = 1;
        }
      }
    }

    v51 = self->_clientState;
    if (v51->var7 <= time)
    {
      v51->var6 = 0;
      v51->var7 = 0;
    }
  }

  if (![(AWRemoteClient *)self _isSamplingClient])
  {
    if (v6 <= time)
    {
      [(AWRemoteClient *)self notifyEvent:1 timestamp:time];
    }

    goto LABEL_134;
  }

  if ([attentionSampler currentState] == 5)
  {
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
    v97 = 0u;
    v98 = 0u;
    memset(buf, 0, sizeof(buf));
    LOBYTE(buf[0]) = [attentionSampler lastFaceMetadataValid];
    [attentionSampler lastPitch];
    *&buf[2] = v52;
    [attentionSampler lastYaw];
    *&buf[4] = v53;
    [attentionSampler lastRoll];
    *&buf[6] = v54;
    *&buf[8] = [attentionSampler lastOrientation];
    [attentionSampler lastDistance];
    *&buf[10] = v55;
    *&buf[12] = [attentionSampler lastFaceState];
    *&buf[14] = [attentionSampler lastMetadataType];
    memset(&buf[16], 0, 32);
    v97 = 0u;
    v98 = 0u;
    *&v99 = [attentionSampler lastMotionResult];
    [attentionSampler lastFaceDetectionScore];
    DWORD2(v99) = v56;
    *&v100 = [attentionSampler lastPersonID];
    [attentionSampler lastFaceBounds];
    v57 = 0;
    *(&v100 + 1) = v58;
    *&v101 = v59;
    *(&v101 + 1) = v60;
    v102 = v61;
    do
    {
      lastMotionData = [attentionSampler lastMotionData];
      v63 = [lastMotionData objectAtIndexedSubscript:v57];
      [v63 floatValue];
      buf[v57 + 16] = v64;

      ++v57;
    }

    while (v57 != 16);
    -[AWRemoteClient notifyEvent:timestamp:metadata:](self, "notifyEvent:timestamp:metadata:", 128, [attentionSampler lastPositiveDetectTime], buf);
    goto LABEL_116;
  }

  if (v95 != 1 || [attentionSampler currentState] == 3 || objc_msgSend(attentionSampler, "currentState") == 4 || self->_clientState->var10)
  {
    [(AWRemoteClient *)self notifyEvent:1 timestamp:time];
    goto LABEL_116;
  }

  if (v95 == 1 && v6 <= time)
  {
    if (currentLogLevel < 7)
    {
      goto LABEL_181;
    }

    v89 = _AALog();
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_180;
    }

    v90 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
    for (m = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++m)
    {
      if (*(m - 1) == 47)
      {
        v90 = m;
      }

      else if (!*(m - 1))
      {
        v92 = absTimeNS();
        if (v92 == -1)
        {
          v93 = INFINITY;
        }

        else
        {
          v93 = v92 / 1000000000.0;
        }

        v94 = self->_identifier;
        buf[0] = 136315906;
        *&buf[1] = v90;
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = 1247;
        HIWORD(buf[4]) = 2048;
        *&buf[5] = v93;
        LOWORD(buf[7]) = 2112;
        *(&buf[7] + 2) = v94;
        _os_log_impl(&dword_1BB2EF000, v89, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ scheduling single shot", buf, 0x26u);
LABEL_180:

LABEL_181:
        [attentionSampler updateSamplingDeadline:0 forClient:self];
        break;
      }
    }
  }

LABEL_116:
  v65 = self->_clientState->var7;
  if (!v65)
  {
    goto LABEL_134;
  }

  if (currentLogLevel < 7)
  {
    goto LABEL_133;
  }

  v66 = _AALog();
  if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_132;
  }

  v67 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  v68 = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  while (2)
  {
    if (*(v68 - 1) == 47)
    {
      v67 = v68;
      goto LABEL_124;
    }

    if (*(v68 - 1))
    {
LABEL_124:
      ++v68;
      continue;
    }

    break;
  }

  v69 = absTimeNS();
  if (v69 == -1)
  {
    v70 = INFINITY;
  }

  else
  {
    v70 = v69 / 1000000000.0;
  }

  v71 = self->_identifier;
  v72 = self->_clientState->var7;
  if (v72 == -1)
  {
    v73 = INFINITY;
  }

  else
  {
    v73 = v72 / 1000000000.0;
  }

  buf[0] = 136316162;
  *&buf[1] = v67;
  LOWORD(buf[3]) = 1024;
  *(&buf[3] + 2) = 1255;
  HIWORD(buf[4]) = 2048;
  *&buf[5] = v70;
  LOWORD(buf[7]) = 2112;
  *(&buf[7] + 2) = v71;
  HIWORD(buf[9]) = 2048;
  *&buf[10] = v73;
  _os_log_impl(&dword_1BB2EF000, v66, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ scheduling poll with deadline %13.5f", buf, 0x30u);
LABEL_132:

  v65 = self->_clientState->var7;
LABEL_133:
  [attentionSampler updateSamplingDeadline:v65 forClient:self];
LABEL_134:
  nextSampleTime = [(AWRemoteClient *)self nextSampleTime];
  if (currentLogLevel < 7)
  {
    goto LABEL_150;
  }

  v75 = _AALog();
  if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_149;
  }

  v76 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  v77 = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  while (2)
  {
    if (*(v77 - 1) == 47)
    {
      v76 = v77;
      goto LABEL_141;
    }

    if (*(v77 - 1))
    {
LABEL_141:
      ++v77;
      continue;
    }

    break;
  }

  v78 = absTimeNS();
  if (v78 == -1)
  {
    v79 = INFINITY;
  }

  else
  {
    v79 = v78 / 1000000000.0;
  }

  v80 = self->_identifier;
  if (nextSampleTime == -1)
  {
    v81 = INFINITY;
  }

  else
  {
    v81 = nextSampleTime / 1000000000.0;
  }

  buf[0] = 136316162;
  *&buf[1] = v76;
  LOWORD(buf[3]) = 1024;
  *(&buf[3] + 2) = 1271;
  HIWORD(buf[4]) = 2048;
  *&buf[5] = v79;
  LOWORD(buf[7]) = 2112;
  *(&buf[7] + 2) = v80;
  HIWORD(buf[9]) = 2048;
  *&buf[10] = v81;
  _os_log_impl(&dword_1BB2EF000, v75, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ nextSampleTime %13.5f", buf, 0x30u);
LABEL_149:

LABEL_150:
  if (nextSampleTime > time)
  {
    goto LABEL_165;
  }

  if (currentLogLevel < 7)
  {
    goto LABEL_164;
  }

  v82 = _AALog();
  if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_163;
  }

  v83 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  v84 = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  while (2)
  {
    if (*(v84 - 1) == 47)
    {
      v83 = v84;
      goto LABEL_158;
    }

    if (*(v84 - 1))
    {
LABEL_158:
      ++v84;
      continue;
    }

    break;
  }

  v85 = absTimeNS();
  if (v85 == -1)
  {
    v86 = INFINITY;
  }

  else
  {
    v86 = v85 / 1000000000.0;
  }

  v87 = self->_identifier;
  buf[0] = 136315906;
  *&buf[1] = v83;
  LOWORD(buf[3]) = 1024;
  *(&buf[3] + 2) = 1275;
  HIWORD(buf[4]) = 2048;
  *&buf[5] = v86;
  LOWORD(buf[7]) = 2112;
  *(&buf[7] + 2) = v87;
  _os_log_impl(&dword_1BB2EF000, v82, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ scheduling single shot", buf, 0x26u);
LABEL_163:

LABEL_164:
  [attentionSampler updateSamplingDeadline:0 forClient:self];
LABEL_165:

  v88 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldInitBeSent
{
  v17 = *MEMORY[0x1E69E9840];
  attentionSampler = [(AWScheduler *)self->_scheduler attentionSampler];
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

      *v16 = 134218240;
      *&v16[4] = v5;
      *&v16[12] = 2048;
      *&v16[14] = [attentionSampler samplingSuppressedMask];
      v10 = "%13.5f: Sampling suppression mask: %01llX";
      v11 = v3;
      v12 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, v10, v16, v12);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
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

          *v16 = 136315906;
          *&v16[4] = v6;
          *&v16[12] = 1024;
          *&v16[14] = 1088;
          *&v16[18] = 2048;
          *&v16[20] = v9;
          *&v16[28] = 2048;
          *&v16[30] = [attentionSampler samplingSuppressedMask];
          v10 = "%30s:%-4d: %13.5f: Sampling suppression mask: %01llX";
          v11 = v3;
          v12 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v13 = ([attentionSampler samplingSuppressedMask] & 4) != 0 || (objc_msgSend(attentionSampler, "samplingSuppressedMask") & 2) != 0 || (objc_msgSend(attentionSampler, "samplingSuppressedMask") & 1) == 0;

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)nextAttentionLostTime:(BOOL *)time
{
  v59 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (currentLogLevel < 7)
  {
    goto LABEL_20;
  }

  v5 = _AALog();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

  v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(i - 1) == 47; ++i)
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

  clientState = self->_clientState;
  var1 = clientState->var1;
  if (var1 == -1)
  {
    v12 = INFINITY;
  }

  else
  {
    v12 = var1 / 1000000000.0;
  }

  identifier = self->_identifier;
  var9 = clientState->var9;
  var0 = clientState->var0;
  if (var0 == -1)
  {
    v16 = INFINITY;
  }

  else
  {
    v16 = var0 / 1000000000.0;
  }

  *buf = 136316674;
  v46 = v6;
  v47 = 1024;
  v48 = 1000;
  v49 = 2048;
  v50 = v9;
  v51 = 2112;
  v52 = identifier;
  v53 = 1024;
  v54 = var9;
  v55 = 2048;
  v56 = v12;
  v57 = 2048;
  v58 = v16;
  _os_log_impl(&dword_1BB2EF000, v5, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ lastState %d lastPos %13.5f lastNegTO %13.5f", buf, 0x40u);
LABEL_19:

LABEL_20:
  if (time)
  {
    *time = 0;
  }

  v17 = self->_clientState;
  if (!v17->var1)
  {
    goto LABEL_49;
  }

  if (!v17->var9 || ![(NSArray *)self->_attentionLostTimeoutsSec count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = self->_attentionLostTimeoutsSec;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v41;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v40 + 1) + 8 * j) doubleValue];
          v34 = self->_clientState;
          if (v34->var0 < v33)
          {
            v35 = v34->var1;
            v36 = (v33 * 1000000000.0);
            if (v33 > 1.84467441e19)
            {
              v36 = -1;
            }

            v37 = v35 + v36;
            if (v35 + v36 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v37 = -2;
            }

            if (__CFADD__(v35, v36))
            {
              v27 = -2;
            }

            else
            {
              v27 = v37;
            }

            goto LABEL_58;
          }

          if (self->_retroactiveTimeoutMode)
          {
            [(AWRemoteClient *)self notifyEvent:1 timestamp:absTimeNS() metadata:0];
          }
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_49:
    v27 = -1;
    goto LABEL_58;
  }

  v18 = [(NSArray *)self->_attentionLostTimeoutsSec objectAtIndexedSubscript:0];
  [v18 doubleValue];
  if (v19 > 1.84467441e19)
  {
    v20 = -1;
  }

  else
  {
    v20 = (v19 * 1000000000.0);
  }

  samplingInterval = self->_samplingInterval;
  if (samplingInterval)
  {
    if (time)
    {
      samplingDelay = self->_samplingDelay;
      v23 = v20 >= samplingDelay;
      v24 = v20 - samplingDelay;
      if (v23)
      {
        *time = v24 % samplingInterval == 0;
      }
    }
  }

  v25 = self->_clientState->var1;
  v26 = v25 + v20;
  if (v25 + v20 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v26 = -2;
  }

  if (__CFADD__(v25, v20))
  {
    v27 = -2;
  }

  else
  {
    v27 = v26;
  }

LABEL_58:
  v38 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)pollWithTimeout:(unint64_t)timeout reply:(id)reply
{
  v16[1] = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  replyCopy = reply;
  if (connectionHasEntitlement(connection, @"com.apple.private.attentionawareness.poll"))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AWRemoteClient_pollWithTimeout_reply___block_invoke;
    block[3] = &unk_1E7F37F50;
    block[4] = self;
    block[5] = timeout;
    dispatch_sync(queue, block);
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A798];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @" Client not entitled to use pollWithTimeout";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v9 errorWithDomain:v10 code:1 userInfo:v11];
    (replyCopy)[2](replyCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __40__AWRemoteClient_pollWithTimeout_reply___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
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

        v22 = *(*(a1 + 32) + 200);
        *v37 = 134218242;
        *&v37[4] = v7;
        *&v37[12] = 2112;
        *&v37[14] = v22;
        v23 = "%13.5f: cancelling polling for client %@ with";
        v24 = v5;
        v25 = 22;
LABEL_52:
        _os_log_impl(&dword_1BB2EF000, v24, OS_LOG_TYPE_DEFAULT, v23, v37, v25);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_54:
        *(*(*(a1 + 32) + 168) + 56) = 0;
        *(*(*(a1 + 32) + 168) + 48) = 0;
        goto LABEL_55;
      }

      v5 = _AALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v10 = i;
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

            v34 = *(*(a1 + 32) + 200);
            *v37 = 136315906;
            *&v37[4] = v10;
            *&v37[12] = 1024;
            *&v37[14] = 980;
            *&v37[18] = 2048;
            *&v37[20] = v21;
            *&v37[28] = 2112;
            *&v37[30] = v34;
            v23 = "%30s:%-4d: %13.5f: cancelling polling for client %@ with";
            v24 = v5;
            v25 = 38;
            goto LABEL_52;
          }
        }
      }
    }

    goto LABEL_54;
  }

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

      v14 = *(a1 + 40);
      v15 = *(*(a1 + 32) + 200);
      if (v14 == -1)
      {
        v16 = INFINITY;
      }

      else
      {
        v16 = v14 / 1000000000.0;
      }

      *v37 = 134218498;
      *&v37[4] = v4;
      *&v37[12] = 2112;
      *&v37[14] = v15;
      *&v37[22] = 2048;
      *&v37[24] = v16;
      v17 = "%13.5f: polling for client %@ with timeout %13.5f";
      v18 = v2;
      v19 = 32;
LABEL_42:
      _os_log_impl(&dword_1BB2EF000, v18, OS_LOG_TYPE_DEFAULT, v17, v37, v19);
    }

LABEL_43:

    goto LABEL_44;
  }

  if (currentLogLevel >= 6)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v8 = j;
        }

        else if (!*(j - 1))
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

          v26 = *(a1 + 40);
          v27 = *(*(a1 + 32) + 200);
          if (v26 == -1)
          {
            v28 = INFINITY;
          }

          else
          {
            v28 = v26 / 1000000000.0;
          }

          *v37 = 136316162;
          *&v37[4] = v8;
          *&v37[12] = 1024;
          *&v37[14] = 973;
          *&v37[18] = 2048;
          *&v37[20] = v13;
          *&v37[28] = 2112;
          *&v37[30] = v27;
          *&v37[38] = 2048;
          v38 = v28;
          v17 = "%30s:%-4d: %13.5f: polling for client %@ with timeout %13.5f";
          v18 = v2;
          v19 = 48;
          goto LABEL_42;
        }
      }
    }

    goto LABEL_43;
  }

LABEL_44:
  *(*(*(a1 + 32) + 168) + 48) = absTimeNS();
  v29 = *(a1 + 40);
  v30 = *(*(a1 + 32) + 168);
  v31 = *(v30 + 48);
  v32 = v31 + v29;
  if ((v31 + v29) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v32 = -2;
  }

  if (__CFADD__(v31, v29))
  {
    v33 = -2;
  }

  else
  {
    v33 = v32;
  }

  *(v30 + 56) = v33;
  *(*(*(a1 + 32) + 168) + 64) = 0;
LABEL_55:
  result = [*(*(a1 + 32) + 16) armEvents];
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)resetAttentionLostTimerWithReply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AWRemoteClient_resetAttentionLostTimerWithReply___block_invoke;
  block[3] = &unk_1E7F38038;
  block[4] = self;
  replyCopy = reply;
  dispatch_sync(queue, block);
  replyCopy[2](replyCopy, 0);
}

uint64_t __51__AWRemoteClient_resetAttentionLostTimerWithReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetAttentionLostTimer];
  v2 = *(*(a1 + 32) + 16);

  return [v2 armEvents];
}

- (void)getLastEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__AWRemoteClient_getLastEvent___block_invoke;
  v7[3] = &unk_1E7F37F78;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync(queue, v7);
}

uint64_t __31__AWRemoteClient_getLastEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 176))
  {
    v3 = *(v2 + 168);
    v4 = *(v3 + 24);
    v5 = *(v3 + 40);
    if (v4 | v5)
    {
      v6 = *(v3 + 32);
      switch(v5)
      {
        case 128:
          v7 = [[AWFaceDetectAttentionEvent alloc] initWithTimestamp:v6 tagIndex:0 faceMetadata:v4];
          goto LABEL_12;
        case 32:
          v7 = [[AWRemoteAttentionEvent alloc] initWithTimestamp:v6 tagIndex:0 remoteMetadata:v4];
          goto LABEL_12;
        case 1:
          v7 = [[AWAttentionLostEvent alloc] initWithTimestamp:v6 tagIndex:v4 attentionLostTimeout:*v3];
LABEL_12:
          v8 = *(a1 + 32);
          v9 = *(v8 + 176);
          *(v8 + 176) = v7;

          v10 = *(*(a1 + 32) + 176);
          goto LABEL_13;
      }

      if ((v5 & 0xFFF) != 0)
      {
        v7 = [[AWAttentionEvent alloc] initWithTimestamp:v6 tagIndex:v5 eventMask:v4];
        goto LABEL_12;
      }
    }

    v7 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v11 = *(*(a1 + 40) + 16);

  return v11();
}

- (BOOL)_interestedInHIDEvent:(__IOHIDEvent *)event mask:(unint64_t)mask metadata:(id *)metadata senderID:(__IOHIDService *)d displayUUID:(id)iD
{
  iDCopy = iD;
  dispatch_assert_queue_V2(self->_queue);
  v12 = 1;
  if (mask <= 8 && ((1 << mask) & 0x114) != 0)
  {
    eventMask = self->_eventMask;
    if ((eventMask & 8) != 0)
    {
      if (![(NSSet *)self->_digitizerDisplayUUIDs count])
      {
        goto LABEL_17;
      }

      digitizerDisplayUUIDs = self->_digitizerDisplayUUIDs;
      if (!iDCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if ((eventMask & 2) == 0)
      {
        if ((eventMask & 4) != 0 && [(NSSet *)self->_keyboardDisplayUUIDs count])
        {
          digitizerDisplayUUIDs = self->_keyboardDisplayUUIDs;
          if (iDCopy)
          {
            if (![(NSSet *)digitizerDisplayUUIDs containsObject:iDCopy])
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          goto LABEL_15;
        }

LABEL_17:
        metadata->var1.var0 = d;
        metadata->var1.var1 = iDCopy;
        goto LABEL_19;
      }

      if (![(NSSet *)self->_buttonDisplayUUIDs count])
      {
        goto LABEL_17;
      }

      digitizerDisplayUUIDs = self->_buttonDisplayUUIDs;
      if (!iDCopy)
      {
LABEL_15:
        v15 = @"builtIn";
LABEL_16:
        if (![(NSSet *)digitizerDisplayUUIDs containsObject:v15])
        {
LABEL_18:
          v12 = 0;
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    v15 = iDCopy;
    goto LABEL_16;
  }

LABEL_19:

  return v12;
}

- (void)notifyHIDEvent:(__IOHIDEvent *)event mask:(unint64_t)mask timestamp:(unint64_t)timestamp senderID:(__IOHIDService *)d displayUUID:(id)iD
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if ([(AWRemoteClient *)self _interestedInHIDEvent:event mask:mask metadata:v10 senderID:d displayUUID:iD])
  {
    [(AWRemoteClient *)self notifyEvent:mask timestamp:timestamp metadata:v10];
  }
}

- (BOOL)canDeliverPollingEvent
{
  if (self->_pollingFilter)
  {
    return ![(AWScheduler *)self->_scheduler isDeviceOnLockScreen:v2];
  }

  else
  {
    return 1;
  }
}

- (void)notifyEvent:(unint64_t)event timestamp:(unint64_t)timestamp metadata:(id *)metadata
{
  v73 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(AWRemoteClient *)self _activeEventMask]& event;
  if (v9 <= 3)
  {
    if (!v9)
    {
      goto LABEL_99;
    }

    if (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_20;
      }

LABEL_9:
      if (!metadata)
      {
        __assert_rtn("[AWRemoteClient notifyEvent:timestamp:metadata:]", "RemoteClient.m", 614, "metadata != NULL");
      }

      v10 = [AWDigitizerButtonKeyboardAttentionEvent alloc];
      if (timestamp == -1)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = timestamp / 1000000000.0;
      }

      v13 = [(AWDigitizerButtonKeyboardAttentionEvent *)v10 initWithTimestamp:self->_tagIndex tagIndex:v9 eventMask:metadata digitizerButtonKeyboardMetadata:v11];
      goto LABEL_73;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v12 = self->_attentionLostTimeoutsSec;
    v18 = [(NSArray *)v12 countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (!v18)
    {
      goto LABEL_98;
    }

    v20 = v18;
    v21 = *v57;
    if (timestamp == -1)
    {
      v22 = INFINITY;
    }

    else
    {
      v22 = timestamp / 1000000000.0;
    }

    v23 = 0x1EDC16000uLL;
    v24 = 0x1EDC16000uLL;
    *&v19 = 136315906;
    v55 = v19;
LABEL_30:
    v25 = 0;
LABEL_31:
    if (*v57 != v21)
    {
      objc_enumerationMutation(v12);
    }

    [*(*(&v56 + 1) + 8 * v25) doubleValue];
    v27 = v26;
    clientState = self->_clientState;
    var1 = clientState->var1;
    v30 = (v26 * 1000000000.0);
    if (v26 > 1.84467441e19)
    {
      v30 = -1;
    }

    v31 = var1 + v30;
    if (var1 + v30 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v31 = -2;
    }

    if (__CFADD__(var1, v30))
    {
      v32 = -2;
    }

    else
    {
      v32 = v31;
    }

    if (v32 > timestamp)
    {
      goto LABEL_62;
    }

    if (clientState->var9)
    {
      clientState->var9 = 0;
      [v23 + 1736 client:self attentionStateChange:0];
      retroactiveTimeoutMode = self->_retroactiveTimeoutMode;
    }

    else
    {
      var0 = clientState->var0;
      retroactiveTimeoutMode = self->_retroactiveTimeoutMode;
      if (var0 >= v27 && !self->_retroactiveTimeoutMode)
      {
        goto LABEL_62;
      }
    }

    if (!retroactiveTimeoutMode)
    {
      goto LABEL_61;
    }

    if (*(v24 + 2416) < 7)
    {
      goto LABEL_60;
    }

    v34 = _AALog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v35 = v23;
    v36 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v36 = i;
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

        *buf = v55;
        v61 = v36;
        v62 = 1024;
        v63 = 575;
        v64 = 2048;
        v65 = v40;
        v66 = 2048;
        v67 = v27;
        _os_log_impl(&dword_1BB2EF000, v34, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: Setting up retroactive timeout mode for %13.5f timeout value", buf, 0x26u);
        v23 = v35;
        v24 = 0x1EDC16000;
LABEL_59:

LABEL_60:
        self->_retroactiveTimeoutMode = 0;
LABEL_61:
        self->_clientState->var0 = v27;
        v41 = [[AWAttentionLostEvent alloc] initWithTimestamp:self->_tagIndex tagIndex:v22 attentionLostTimeout:v27];
        [(AWRemoteClient *)self deliverEvent:v41];

LABEL_62:
        if (++v25 == v20)
        {
          v20 = [(NSArray *)v12 countByEnumeratingWithState:&v56 objects:v72 count:16];
          if (!v20)
          {
            goto LABEL_98;
          }

          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }
  }

  if (v9 <= 31)
  {
    if (v9 != 4 && v9 != 8)
    {
LABEL_20:
      v14 = [AWAttentionEvent alloc];
      if (timestamp == -1)
      {
        v15 = INFINITY;
      }

      else
      {
        v15 = timestamp / 1000000000.0;
      }

      v13 = [(AWAttentionEvent *)v14 initWithTimestamp:self->_tagIndex tagIndex:v9 eventMask:v15];
      goto LABEL_73;
    }

    goto LABEL_9;
  }

  if (v9 == 32)
  {
    if (!metadata)
    {
      __assert_rtn("[AWRemoteClient notifyEvent:timestamp:metadata:]", "RemoteClient.m", 606, "metadata != NULL");
    }

    v16 = [AWRemoteAttentionEvent alloc];
    if (timestamp == -1)
    {
      v17 = INFINITY;
    }

    else
    {
      v17 = timestamp / 1000000000.0;
    }

    v13 = [(AWRemoteAttentionEvent *)v16 initWithTimestamp:self->_tagIndex tagIndex:metadata remoteMetadata:v17];
LABEL_73:
    v12 = v13;
    if (v13 && !self->_clientState->var9)
    {
      [(AWRemoteClient *)self deliverEvent:v13];
      goto LABEL_92;
    }

    goto LABEL_75;
  }

  if (v9 != 128)
  {
    goto LABEL_20;
  }

  if (!metadata)
  {
    __assert_rtn("[AWRemoteClient notifyEvent:timestamp:metadata:]", "RemoteClient.m", 598, "metadata != NULL");
  }

  if (!self->_nonSampledAttentionLostTimeoutEnable || !self->_clientState->var11)
  {
    v42 = [AWFaceDetectAttentionEvent alloc];
    if (timestamp == -1)
    {
      v43 = INFINITY;
    }

    else
    {
      v43 = timestamp / 1000000000.0;
    }

    v13 = [(AWFaceDetectAttentionEvent *)v42 initWithTimestamp:self->_tagIndex tagIndex:metadata faceMetadata:v43];
    goto LABEL_73;
  }

  v12 = 0;
LABEL_75:
  if (currentLogLevel < 7)
  {
    goto LABEL_92;
  }

  v44 = _AALog();
  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_91;
  }

  v45 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(j - 1) == 47; ++j)
  {
    v45 = j;
LABEL_82:
    ;
  }

  if (*(j - 1))
  {
    goto LABEL_82;
  }

  v47 = absTimeNS();
  if (v47 == -1)
  {
    v48 = INFINITY;
  }

  else
  {
    v48 = v47 / 1000000000.0;
  }

  identifier = self->_identifier;
  v50 = getEventMaskDescription(v9);
  v51 = v50;
  if (timestamp == -1)
  {
    v52 = INFINITY;
  }

  else
  {
    v52 = timestamp / 1000000000.0;
  }

  *buf = 136316418;
  v61 = v45;
  v62 = 1024;
  v63 = 634;
  v64 = 2048;
  v65 = v48;
  v66 = 2112;
  v67 = *&identifier;
  v68 = 2112;
  v69 = v50;
  v70 = 2048;
  v71 = v52;
  _os_log_impl(&dword_1BB2EF000, v44, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: bump client %@ timestamp with %@ at %13.5f", buf, 0x3Au);

LABEL_91:
LABEL_92:
  if (self->_clientState->var7)
  {
    if ([(AWRemoteClient *)self canDeliverPollingEvent])
    {
      [(AWRemoteClient *)self deliverPollEventType:2 event:v12];
      v53 = self->_clientState;
      v53->var6 = 0;
      v53->var7 = 0;
      self->_filteredPollingEventDelivered = 1;
    }

    else if (!self->_clientState->var8)
    {
      [(AWRemoteClient *)self deliverPollEventType:1 event:0];
      self->_clientState->var8 = 1;
    }
  }

  [(AWRemoteClient *)self updateEventTimesForMask:v9 timestamp:timestamp];
LABEL_98:

LABEL_99:
  v54 = *MEMORY[0x1E69E9840];
}

- (void)updateEventTimesForMask:(unint64_t)mask timestamp:(unint64_t)timestamp
{
  v31 = *MEMORY[0x1E69E9840];
  clientState = self->_clientState;
  var1 = clientState->var1;
  if (var1 <= timestamp)
  {
    var1 = timestamp;
  }

  clientState->var1 = var1;
  if ((mask & 0x80) != 0)
  {
    goto LABEL_28;
  }

  if (currentLogLevel < 7)
  {
    goto LABEL_20;
  }

  v9 = _AALog();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

  v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; *(i - 1) == 47; ++i)
  {
    v10 = i;
LABEL_11:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_11;
  }

  v12 = absTimeNS();
  if (v12 == -1)
  {
    v13 = INFINITY;
  }

  else
  {
    v13 = v12 / 1000000000.0;
  }

  if (timestamp == -1)
  {
    v14 = INFINITY;
  }

  else
  {
    v14 = timestamp / 1000000000.0;
  }

  v15 = getEventMaskDescription(mask);
  v21 = 136316162;
  v22 = v10;
  v23 = 1024;
  v24 = 518;
  v25 = 2048;
  v26 = v13;
  v27 = 2048;
  v28 = v14;
  v29 = 2112;
  v30 = v15;
  _os_log_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: Last HID Event %13.5f, %@", &v21, 0x30u);

LABEL_19:
  clientState = self->_clientState;
LABEL_20:
  clientState->var11 = 0;
  if (clientState->var2 < timestamp)
  {
    clientState->var2 = timestamp;
    if (self->_nonSampledAttentionLostTimeoutEnable)
    {
      if (self->_nonSampledAttentionTimerResumed)
      {
        dispatch_suspend(self->_nonSampledAttentionTimer);
      }

      nonSampledAttentionTimer = self->_nonSampledAttentionTimer;
      nonSampledAttentionLostTimeout = self->_nonSampledAttentionLostTimeout;
      if (nonSampledAttentionLostTimeout > 1.84467441e19)
      {
        v18 = -1;
      }

      else
      {
        v18 = (nonSampledAttentionLostTimeout * 1000000000.0);
      }

      v19 = dispatch_time(0, v18);
      dispatch_source_set_timer(nonSampledAttentionTimer, v19, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      dispatch_resume(self->_nonSampledAttentionTimer);
      self->_nonSampledAttentionTimerResumed = 1;
      clientState = self->_clientState;
    }
  }

LABEL_28:
  if (!clientState->var9 && !clientState->var11)
  {
    clientState->var9 = 1;
    [AWSampleLogger client:self attentionStateChange:1];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)deliverPollEventType:(unint64_t)type event:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
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

      identifier = self->_identifier;
      *v20 = 134218754;
      *&v20[4] = v9;
      *&v20[12] = 2112;
      *&v20[14] = identifier;
      *&v20[22] = 2080;
      *&v20[24] = getPollEventTypeDescription(type);
      *&v20[32] = 2112;
      *&v20[34] = eventCopy;
      v15 = "%13.5f: notify polling client %@ of %s %@";
      v16 = v7;
      v17 = 42;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, v20, v17);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
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

          v18 = self->_identifier;
          *v20 = 136316418;
          *&v20[4] = v10;
          *&v20[12] = 1024;
          *&v20[14] = 506;
          *&v20[18] = 2048;
          *&v20[20] = v13;
          *&v20[28] = 2112;
          *&v20[30] = v18;
          *&v20[38] = 2080;
          *&v20[40] = getPollEventTypeDescription(type);
          LOWORD(v21) = 2112;
          *(&v21 + 2) = eventCopy;
          v15 = "%30s:%-4d: %13.5f: notify polling client %@ of %s %@";
          v16 = v7;
          v17 = 58;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  [(AWFrameworkClient *)self->_proxy notifyPollEventType:type event:eventCopy, *v20, *&v20[16], *&v20[24], *&v20[32], v21];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)deliverEvent:(id)event
{
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
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

      identifier = self->_identifier;
      v21 = 134218498;
      v22 = v7;
      v23 = 2112;
      *v24 = identifier;
      *&v24[8] = 2112;
      *&v24[10] = eventCopy;
      v13 = "%13.5f: notify client %@ of %@";
      v14 = v5;
      v15 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, &v21, v15);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
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

          v16 = self->_identifier;
          v21 = 136316162;
          v22 = *&v8;
          v23 = 1024;
          *v24 = 494;
          *&v24[4] = 2048;
          *&v24[6] = v11;
          *&v24[14] = 2112;
          *&v24[16] = v16;
          v25 = 2112;
          v26 = eventCopy;
          v13 = "%30s:%-4d: %13.5f: notify client %@ of %@";
          v14 = v5;
          v15 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  lastEvent = self->_lastEvent;
  self->_lastEvent = eventCopy;
  v18 = eventCopy;

  self->_clientState->var5 = [(AWAttentionEvent *)v18 eventMask];
  self->_clientState->var4 = [(AWAttentionEvent *)v18 tagIndex];
  [(AWAttentionEvent *)v18 timestamp];
  self->_clientState->var3 = v19;
  [(AWFrameworkClient *)self->_proxy notifyEvent:v18];
  [AWSampleLogger client:self event:v18];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)deliverNotification:(unint64_t)notification
{
  v21 = *MEMORY[0x1E69E9840];
  if ((self->_notificationMask & notification) != 0)
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

        identifier = self->_identifier;
        v13 = getNotificationMaskDescription(notification);
        *v19 = 134218498;
        *&v19[4] = v7;
        *&v19[12] = 2112;
        *&v19[14] = identifier;
        *&v19[22] = 2112;
        *&v19[24] = v13;
        v14 = "%13.5f: notify client %@ of %@";
        v15 = v5;
        v16 = 32;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, v19, v16);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        [(AWFrameworkClient *)self->_proxy notify:notification, *v19, *&v19[16], *&v19[24], *&v19[32], v20];
        goto LABEL_23;
      }

      v5 = _AALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
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

            v17 = self->_identifier;
            v13 = getNotificationMaskDescription(notification);
            *v19 = 136316162;
            *&v19[4] = v8;
            *&v19[12] = 1024;
            *&v19[14] = 487;
            *&v19[18] = 2048;
            *&v19[20] = v11;
            *&v19[28] = 2112;
            *&v19[30] = v17;
            *&v19[38] = 2112;
            v20 = v13;
            v14 = "%30s:%-4d: %13.5f: notify client %@ of %@";
            v15 = v5;
            v16 = 48;
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

- (void)setClientConfig:(id)config shouldReset:(BOOL)reset reply:(id)reply
{
  configCopy = config;
  replyCopy = reply;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__585;
  v20 = __Block_byref_object_dispose__586;
  v21 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__AWRemoteClient_setClientConfig_shouldReset_reply___block_invoke;
  v12[3] = &unk_1E7F37608;
  v12[4] = self;
  v11 = configCopy;
  resetCopy = reset;
  v13 = v11;
  v14 = &v16;
  dispatch_sync(queue, v12);
  replyCopy[2](replyCopy, v17[5]);

  _Block_object_dispose(&v16, 8);
}

uint64_t __52__AWRemoteClient_setClientConfig_shouldReset_reply___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  [v2 _setClientConfig:v3 shouldReset:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
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

      v13 = *(a1 + 32);
      *buf = 134218242;
      v22 = v8;
      v23 = 2112;
      *v24 = v13;
      v14 = "%13.5f: updated config %@";
      v15 = v6;
      v16 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
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

          v17 = *(a1 + 32);
          *buf = 136315906;
          v22 = *&v9;
          v23 = 1024;
          *v24 = 477;
          *&v24[4] = 2048;
          *&v24[6] = v12;
          v25 = 2112;
          v26 = v17;
          v14 = "%30s:%-4d: %13.5f: updated config %@";
          v15 = v6;
          v16 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  result = [*(*(a1 + 32) + 16) armEvents];
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)reevaluateConfig
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(AWRemoteClient *)self description];
  [(AWRemoteClient *)self _setClientConfig:self->_lastConfig shouldReset:1 error:0];
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

      *v15 = 134218498;
      *&v15[4] = v6;
      *&v15[12] = 2112;
      *&v15[14] = self;
      *&v15[22] = 2112;
      *&v15[24] = v3;
      v11 = "%13.5f: reevaluated config %@, old config %@";
      v12 = v4;
      v13 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, v15, v13);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
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

          *v15 = 136316162;
          *&v15[4] = v7;
          *&v15[12] = 1024;
          *&v15[14] = 466;
          *&v15[18] = 2048;
          *&v15[20] = v10;
          *&v15[28] = 2112;
          *&v15[30] = self;
          *&v15[38] = 2112;
          v16 = v3;
          v11 = "%30s:%-4d: %13.5f: reevaluated config %@, old config %@";
          v12 = v4;
          v13 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  [(AWScheduler *)self->_scheduler armEvents:*v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setClientConfig:(id)config shouldReset:(BOOL)reset error:(id *)error
{
  resetCopy = reset;
  v91 = *MEMORY[0x1E69E9840];
  configCopy = config;
  dispatch_assert_queue_V2(self->_queue);
  if (([configCopy validateWithError:error] & 1) == 0)
  {
    if (currentLogLevel >= 3)
    {
      v20 = _AALog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v59 = absTimeNS();
        if (v59 == -1)
        {
          v60 = INFINITY;
        }

        else
        {
          v60 = v59 / 1000000000.0;
        }

        identifier = self->_identifier;
        *buf = 134218498;
        v86 = v60;
        v87 = 2112;
        v88 = identifier;
        v89 = 2112;
        v90 = configCopy;
        _os_log_error_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_ERROR, "%13.5f: client %@ attempting to set invalid config %@", buf, 0x20u);
      }
    }

    goto LABEL_38;
  }

  if ([configCopy sampleWhileAbsent] && (connectionHasEntitlement(self->_connection, @"com.apple.private.attentionawareness.samplewhileabsent") & 1) == 0)
  {
    if (currentLogLevel >= 3)
    {
      v21 = _AALog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v62 = absTimeNS();
        if (v62 == -1)
        {
          v63 = INFINITY;
        }

        else
        {
          v63 = v62 / 1000000000.0;
        }

        v68 = self->_identifier;
        *buf = 134218242;
        v86 = v63;
        v87 = 2112;
        v88 = v68;
        _os_log_error_impl(&dword_1BB2EF000, v21, OS_LOG_TYPE_ERROR, "%13.5f: client %@ not entitled to use sampleWhileAbsent", buf, 0x16u);
      }
    }

    if (!error)
    {
      goto LABEL_38;
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A798];
    v83 = *MEMORY[0x1E696A578];
    v84 = @" Client not entitled to use sampleWhileAbsent";
    v24 = MEMORY[0x1E695DF20];
    v25 = &v84;
    v26 = &v83;
    goto LABEL_37;
  }

  if ([configCopy continuousFaceDetectMode] && (connectionHasEntitlement(self->_connection, @"com.apple.private.attentionawareness.continuousFaceDetect") & 1) == 0)
  {
    if (currentLogLevel >= 3)
    {
      v27 = _AALog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v64 = absTimeNS();
        if (v64 == -1)
        {
          v65 = INFINITY;
        }

        else
        {
          v65 = v64 / 1000000000.0;
        }

        v71 = self->_identifier;
        *buf = 134218242;
        v86 = v65;
        v87 = 2112;
        v88 = v71;
        _os_log_error_impl(&dword_1BB2EF000, v27, OS_LOG_TYPE_ERROR, "%13.5f: client %@ not entitled to use continuousFaceDetectMode", buf, 0x16u);
      }
    }

    if (!error)
    {
      goto LABEL_38;
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A798];
    v81 = *MEMORY[0x1E696A578];
    v82 = @" Client not entitled to use continuousFaceDetectMode";
    v24 = MEMORY[0x1E695DF20];
    v25 = &v82;
    v26 = &v81;
    goto LABEL_37;
  }

  if ([configCopy activateMotionDetect] && (connectionHasEntitlement(self->_connection, @"com.apple.private.attentionawareness.motionDetect") & 1) == 0)
  {
    if (currentLogLevel >= 3)
    {
      v28 = _AALog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v66 = absTimeNS();
        if (v66 == -1)
        {
          v67 = INFINITY;
        }

        else
        {
          v67 = v66 / 1000000000.0;
        }

        v72 = self->_identifier;
        *buf = 134218242;
        v86 = v67;
        v87 = 2112;
        v88 = v72;
        _os_log_error_impl(&dword_1BB2EF000, v28, OS_LOG_TYPE_ERROR, "%13.5f: client %@ not entitled to use motionDetect", buf, 0x16u);
      }
    }

    if (!error)
    {
      goto LABEL_38;
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A798];
    v79 = *MEMORY[0x1E696A578];
    v80 = @" Client not entitled to use motionDetect";
    v24 = MEMORY[0x1E695DF20];
    v25 = &v80;
    v26 = &v79;
    goto LABEL_37;
  }

  if ([configCopy activateMotionDetect] && (MGGetBoolAnswer() & 1) == 0)
  {
    if (currentLogLevel >= 3)
    {
      v29 = _AALog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
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

        *buf = 134217984;
        v86 = v70;
        _os_log_error_impl(&dword_1BB2EF000, v29, OS_LOG_TYPE_ERROR, "%13.5f: Platform doesn't support motion detection capability", buf, 0xCu);
      }
    }

    if (!error)
    {
      goto LABEL_38;
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A798];
    v77 = *MEMORY[0x1E696A578];
    v78 = @" Platform doesn't support Motion detect";
    v24 = MEMORY[0x1E695DF20];
    v25 = &v78;
    v26 = &v77;
LABEL_37:
    v30 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
    *error = [v22 errorWithDomain:v23 code:1 userInfo:v30];

LABEL_38:
    v31 = 0;
    goto LABEL_39;
  }

  objc_storeStrong(&self->_lastConfig, config);
  self->_tagIndex = [configCopy tagIndex];
  self->_notificationMask = [configCopy notificationMask];
  self->_eventMask = [configCopy eventMask];
  p_eventMask = &self->_eventMask;
  self->_attentionLostEventMask = [configCopy attentionLostEventMask];
  p_attentionLostEventMask = &self->_attentionLostEventMask;
  self->_retroactiveTimeoutMode = [configCopy retroactiveTimeoutMode];
  self->_pollingFilter = [configCopy pollingFilter];
  self->_filteredPollingEventDelivered = 0;
  self->_continuousFaceDetectMode = [configCopy continuousFaceDetectMode];
  self->_unityStream = [configCopy unityStream];
  digitizerDisplayUUIDs = [configCopy digitizerDisplayUUIDs];
  digitizerDisplayUUIDs = self->_digitizerDisplayUUIDs;
  self->_digitizerDisplayUUIDs = digitizerDisplayUUIDs;

  keyboardDisplayUUIDs = [configCopy keyboardDisplayUUIDs];
  keyboardDisplayUUIDs = self->_keyboardDisplayUUIDs;
  self->_keyboardDisplayUUIDs = keyboardDisplayUUIDs;

  buttonDisplayUUIDs = [configCopy buttonDisplayUUIDs];
  buttonDisplayUUIDs = self->_buttonDisplayUUIDs;
  self->_buttonDisplayUUIDs = buttonDisplayUUIDs;

  [configCopy nonSampledAttentionLostTimeout];
  self->_nonSampledAttentionLostTimeout = v18;
  nonSampledAttentionLostTimeoutEnable = [configCopy nonSampledAttentionLostTimeoutEnable];
  self->_nonSampledAttentionLostTimeoutEnable = nonSampledAttentionLostTimeoutEnable;
  if (nonSampledAttentionLostTimeoutEnable && !self->_nonSampledAttentionTimer)
  {
    v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    nonSampledAttentionTimer = self->_nonSampledAttentionTimer;
    self->_nonSampledAttentionTimer = v34;

    v36 = self->_nonSampledAttentionTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __53__AWRemoteClient__setClientConfig_shouldReset_error___block_invoke;
    handler[3] = &unk_1E7F38038;
    handler[4] = self;
    dispatch_source_set_event_handler(v36, handler);
    v37 = self->_nonSampledAttentionTimer;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __53__AWRemoteClient__setClientConfig_shouldReset_error___block_invoke_41;
    v74[3] = &unk_1E7F38038;
    v74[4] = self;
    dispatch_source_set_cancel_handler(v37, v74);
    goto LABEL_41;
  }

  if (self->_nonSampledAttentionTimerResumed)
  {
    dispatch_suspend(self->_nonSampledAttentionTimer);
LABEL_41:
    self->_nonSampledAttentionTimerResumed = 0;
  }

  activateMotionDetect = [configCopy activateMotionDetect];
  self->_activateMotionDetect = activateMotionDetect;
  if (self->_continuousFaceDetectMode)
  {
    self->_activateAttentionDetection = [configCopy activateAttentionDetection];
  }

  else if (((self->_eventMask & 0x80) == 0) | activateMotionDetect & 1)
  {
    self->_activateAttentionDetection = 0;
  }

  else
  {
    self->_activateAttentionDetection = 1;
  }

  self->_activateEyeRelief = [configCopy activateEyeRelief];
  [configCopy samplingInterval];
  v40 = (v39 * 1000000000.0);
  if (v39 > 1.84467441e19)
  {
    v40 = -1;
  }

  self->_samplingInterval = v40;
  [configCopy samplingDelay];
  v42 = (v41 * 1000000000.0);
  if (v41 > 1.84467441e19)
  {
    v42 = -1;
  }

  self->_samplingDelay = v42;
  self->_sampleWhileAbsent = [configCopy sampleWhileAbsent];
  attentionLostTimeouts = [configCopy attentionLostTimeouts];
  v44 = [attentionLostTimeouts count];

  if (v44)
  {
    attentionLostTimeouts2 = [configCopy attentionLostTimeouts];
    allObjects = [attentionLostTimeouts2 allObjects];
    v47 = [allObjects sortedArrayUsingSelector:sel_compare_];
    attentionLostTimeoutsSec = self->_attentionLostTimeoutsSec;
    self->_attentionLostTimeoutsSec = v47;
  }

  else
  {
    [configCopy samplingInterval];
    if (v49 == 0.0)
    {
      attentionLostTimeouts2 = self->_attentionLostTimeoutsSec;
      self->_attentionLostTimeoutsSec = 0;
    }

    else
    {
      v50 = MEMORY[0x1E696AD98];
      [configCopy samplingInterval];
      attentionLostTimeouts2 = [v50 numberWithDouble:?];
      v76 = attentionLostTimeouts2;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      v52 = self->_attentionLostTimeoutsSec;
      self->_attentionLostTimeoutsSec = v51;
    }
  }

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __53__AWRemoteClient__setClientConfig_shouldReset_error___block_invoke_2;
  v73[3] = &unk_1E7F375E0;
  v73[4] = self;
  v53 = MEMORY[0x1BFB0D030](v73);
  (v53)[2](v53, &self->_eventMask);
  (v53)[2](v53, &self->_attentionLostEventMask);
  if (self->_activateMotionDetect && (deviceSupportsPearl() & 1) == 0)
  {
    self->_activateMotionDetect = 0;
  }

  v54 = *p_eventMask;
  if ((*p_eventMask & 1) == 0)
  {
    v54 |= 1uLL;
    *p_eventMask = v54;
  }

  v55 = *p_attentionLostEventMask;
  if ((*p_attentionLostEventMask & 1) == 0)
  {
    v55 |= 1uLL;
    *p_attentionLostEventMask = v55;
  }

  if (((v55 | v54) & 0x80) == 0)
  {
    self->_sampleWhileAbsent = 0;
    self->_samplingInterval = 0;
    self->_samplingDelay = 0;
  }

  v56 = [MEMORY[0x1E695DFA8] set];
  v57 = [v56 count];
  if (v57)
  {
    v57 = [MEMORY[0x1E695DFD8] setWithSet:v56];
  }

  allowedHIDEventsForRemoteEvent = self->_allowedHIDEventsForRemoteEvent;
  self->_allowedHIDEventsForRemoteEvent = v57;

  if (resetCopy)
  {
    [(AWRemoteClient *)self _resetAttentionLostTimer];
  }

  v31 = 1;
LABEL_39:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

void __53__AWRemoteClient__setClientConfig_shouldReset_error___block_invoke(uint64_t a1)
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

      v9 = *(a1 + 32);
      v10 = *(v9 + 200);
      v11 = *(v9 + 120);
      *v24 = 134218498;
      *&v24[4] = v4;
      *&v24[12] = 2112;
      *&v24[14] = v10;
      *&v24[22] = 2048;
      *&v24[24] = v11;
      v12 = "%13.5f: Delivering nonSampledAttentionLost Event for client %@. Timeout value: %13.5f";
      v13 = v2;
      v14 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, v24, v14);
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
      v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/RemoteClient.m"; ; ++i)
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
          v16 = *(v15 + 200);
          v17 = *(v15 + 120);
          *v24 = 136316162;
          *&v24[4] = v5;
          *&v24[12] = 1024;
          *&v24[14] = 333;
          *&v24[18] = 2048;
          *&v24[20] = v8;
          *&v24[28] = 2112;
          *&v24[30] = v16;
          *&v24[38] = 2048;
          v25 = v17;
          v12 = "%30s:%-4d: %13.5f: Delivering nonSampledAttentionLost Event for client %@. Timeout value: %13.5f";
          v13 = v2;
          v14 = 48;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  v18 = *(a1 + 32);
  v19 = [AWAttentionLostEvent alloc];
  v20 = absTimeNS();
  if (v20 == -1)
  {
    v21 = INFINITY;
  }

  else
  {
    v21 = v20 / 1000000000.0;
  }

  v22 = [(AWAttentionLostEvent *)v19 initWithTimestamp:*(*(a1 + 32) + 40) tagIndex:v21 attentionLostTimeout:*(*(a1 + 32) + 120), *v24, *&v24[16], *&v24[24], *&v24[32], v25];
  [v18 deliverEvent:v22];

  *(*(*(a1 + 32) + 168) + 67) = 1;
  *(*(*(a1 + 32) + 168) + 65) = 0;
  v23 = *MEMORY[0x1E69E9840];
}

void __53__AWRemoteClient__setClientConfig_shouldReset_error___block_invoke_41(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;
}

uint64_t __53__AWRemoteClient__setClientConfig_shouldReset_error___block_invoke_2(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("[AWRemoteClient _setClientConfig:shouldReset:error:]_block_invoke_2", "RemoteClient.m", 394, "eventMask");
  }

  v3 = [*(*(a1 + 32) + 16) attentionSampler];
  v4 = v3;
  if ((*a2 & 0x80) != 0)
  {
    v6 = v3;
    v3 = deviceSupportsPearl();
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v3 = [v6 unitTestSampling];
      v4 = v6;
      if ((v3 & 1) == 0)
      {
        *a2 &= ~0x80uLL;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)invalidateWithoutQueue
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__AWRemoteClient_invalidateWithoutQueue__block_invoke;
  v2[3] = &unk_1E7F38038;
  v2[4] = self;
  [(AWRemoteClient *)self invalidateWithHandler:v2];
}

- (void)invalidateWithHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_invalid)
  {
    self->_invalid = 1;
    if (self->_clientIndex == -1)
    {
      clientState = self->_clientState;
      if (clientState)
      {
        free(clientState);
        self->_clientState = 0;
      }
    }

    else
    {
      v5 = +[AWPersistentDataManager sharedManager];
      connection = self->_connection;
      clientIndex = self->_clientIndex;
      v19 = 0;
      v8 = [v5 closeWithConnection:connection index:clientIndex error:&v19];
      v9 = v19;

      if ((v8 & 1) == 0 && currentLogLevel >= 3)
      {
        v10 = _AALog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v15 = absTimeNS();
          if (v15 == -1)
          {
            v16 = INFINITY;
          }

          else
          {
            v16 = v15 / 1000000000.0;
          }

          identifier = self->_identifier;
          v18 = self->_clientIndex;
          *buf = 134218754;
          v21 = v16;
          v22 = 2112;
          v23 = identifier;
          v24 = 1024;
          v25 = v18;
          v26 = 2112;
          v27 = v9;
          _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: %@ failed to release persistent data index %d: %@", buf, 0x26u);
        }
      }

      self->_clientIndex = -1;
      self->_clientState = 0;
    }

    transaction = self->_transaction;
    if (transaction)
    {
      self->_transaction = 0;
    }

    nonSampledAttentionTimer = self->_nonSampledAttentionTimer;
    if (nonSampledAttentionTimer)
    {
      dispatch_source_cancel(nonSampledAttentionTimer);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (AWRemoteClient)initWithProxy:(id)proxy connection:(id)connection clientConfig:(id)config clientIndex:(int)index clientId:(id)id scheduler:(id)scheduler error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  connectionCopy = connection;
  configCopy = config;
  idCopy = id;
  schedulerCopy = scheduler;
  identifier = [configCopy identifier];

  if (identifier)
  {
    v38.receiver = self;
    v38.super_class = AWRemoteClient;
    v20 = [(AWRemoteClient *)&v38 init];
    if (v20)
    {
      v21 = awQueue(1);
      queue = v20->_queue;
      v20->_queue = v21;

      objc_storeStrong(&v20->_scheduler, scheduler);
      objc_storeStrong(&v20->_proxy, proxy);
      identifier2 = [configCopy identifier];
      identifier = v20->_identifier;
      v20->_identifier = identifier2;

      objc_storeStrong(&v20->_connection, connection);
      v20->_clientIndex = index;
      objc_storeStrong(&v20->_clientId, id);
      [(NSString *)v20->_identifier UTF8String];
      v25 = os_transaction_create();
      transaction = v20->_transaction;
      v20->_transaction = v25;

      [(AWRemoteClient *)v20 initializeClientState];
      if (![(AWRemoteClient *)v20 _setClientConfig:configCopy shouldReset:index == -1 error:error])
      {

        v20 = 0;
      }
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    if (currentLogLevel >= 3)
    {
      v28 = _AALog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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

        *buf = 134217984;
        v42 = v35;
        _os_log_error_impl(&dword_1BB2EF000, v28, OS_LOG_TYPE_ERROR, "%13.5f: denying attempt to create client with nil identifier", buf, 0xCu);
      }
    }

    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A798];
    v39 = *MEMORY[0x1E696A578];
    v40 = @" Not creating client with nil identifier";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *error = [v29 errorWithDomain:v30 code:22 userInfo:v31];

    selfCopy = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end