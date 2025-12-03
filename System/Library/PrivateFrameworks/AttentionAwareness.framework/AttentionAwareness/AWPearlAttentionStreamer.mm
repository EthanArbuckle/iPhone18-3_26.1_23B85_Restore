@interface AWPearlAttentionStreamer
- (id)cancelEventStream;
- (id)initForUnitTest:(BOOL)test queue:(id)queue;
- (id)streamEventWithBlock:(id)block options:(id)options operationStartFailedBlock:(id)failedBlock;
- (void)operation:(id)operation faceDetectStateChanged:(id)changed;
- (void)operation:(id)operation finishedWithReason:(int64_t)reason;
- (void)sendNotification:(unint64_t)notification;
- (void)setDisplayState:(BOOL)state;
- (void)setNotificationHandler:(id)handler;
- (void)setSmartCoverState:(BOOL)state;
@end

@implementation AWPearlAttentionStreamer

- (void)operation:(id)operation finishedWithReason:(int64_t)reason
{
  v24 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  dispatch_assert_queue_V2(self->_queue);
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

      v18 = 134218498;
      v19 = v9;
      v20 = 2112;
      *v21 = operationCopy;
      *&v21[8] = 2080;
      *&v21[10] = getEndReasonDescriptions(reason);
      v14 = "%13.5f: Operation %@ cancelled due to reason: %s";
      v15 = v7;
      v16 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, &v18, v16);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
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

          v18 = 136316162;
          v19 = *&v10;
          v20 = 1024;
          *v21 = 483;
          *&v21[4] = 2048;
          *&v21[6] = v13;
          *&v21[14] = 2112;
          *&v21[16] = operationCopy;
          v22 = 2080;
          EndReasonDescriptions = getEndReasonDescriptions(reason);
          v14 = "%30s:%-4d: %13.5f: Operation %@ cancelled due to reason: %s";
          v15 = v7;
          v16 = 48;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if ((reason & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(AWPearlAttentionStreamer *)self sendNotification:1];
    self->_attentionStreamerRunning = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)operation:(id)operation faceDetectStateChanged:(id)changed
{
  v97 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_queue);
  v69 = 0u;
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  faceDetected = [changedCopy faceDetected];
  pitch = [changedCopy pitch];
  v9 = [changedCopy yaw];
  roll = [changedCopy roll];
  orientation = [changedCopy orientation];
  if ((orientation - 1) >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = orientation;
  }

  v62 = v12;
  distance = [changedCopy distance];
  eyeReliefStatus = [changedCopy eyeReliefStatus];
  v15 = 0;
  v16 = 1;
  if (eyeReliefStatus <= 2)
  {
    if (eyeReliefStatus != 1 && eyeReliefStatus != 2)
    {
      goto LABEL_12;
    }
  }

  else if (eyeReliefStatus != 3 && eyeReliefStatus != 4 && eyeReliefStatus != 5)
  {
    goto LABEL_12;
  }

  v16 = 0;
  v15 = eyeReliefStatus;
LABEL_12:
  v60 = v16;
  faceDetectionScore = [changedCopy faceDetectionScore];
  [faceDetectionScore floatValue];
  v19 = v18;
  *(&v69 + 2) = v18;

  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  if (currentLogLevel < 7)
  {
    goto LABEL_28;
  }

  v20 = _AALog();
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_27;
  }

  v59 = operationCopy;
  v21 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; *(i - 1) == 47; ++i)
  {
    v21 = i;
LABEL_19:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_19;
  }

  v23 = absTimeNS();
  v57 = v9;
  v58 = pitch;
  if (v23 == -1)
  {
    v24 = INFINITY;
  }

  else
  {
    v24 = v23 / 1000000000.0;
  }

  pendingPresenceOperation = self->_pendingPresenceOperation;
  if (faceDetected)
  {
    v26 = "FACE FOUND";
  }

  else
  {
    v26 = "FACE NOT FOUND";
  }

  getFaceDetectOrientationDescription(v62);
  v28 = v27 = self;
  getEyeReliefFaceStateDescription(v15);
  v29 = v56 = v15;
  *buf = 136318466;
  v74 = *&v21;
  v75 = 1024;
  *v76 = 434;
  *&v76[4] = 2048;
  *&v76[6] = v24;
  *&v76[14] = 2112;
  *&v76[16] = v27;
  v77 = 2048;
  operationCopy = v59;
  v78 = v59;
  v79 = 2048;
  v80 = pendingPresenceOperation;
  v81 = 2080;
  v82 = v26;
  v83 = 2112;
  v9 = v57;
  pitch = v58;
  v84 = v58;
  v85 = 2112;
  v86 = v57;
  v87 = 2112;
  v88 = roll;
  v89 = 2112;
  v90 = v28;
  v91 = 2112;
  v92 = distance;
  v93 = 2112;
  v94 = v29;
  v95 = 2048;
  v96 = v19;
  _os_log_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %@ yaw: %@ roll: %@ orientation: %@ distance: %@ eyeReliefFaceState:%@ faceDetectionScore: %f", buf, 0x8Au);

  v15 = v56;
  self = v27;
LABEL_27:

LABEL_28:
  LOBYTE(v64) = faceDetected;
  memset_pattern16(v68, &unk_1BB32B2C0, 0x40uLL);
  *&v67 = v15;
  [distance doubleValue];
  *(&v66 + 1) = v30;
  [pitch doubleValue];
  *(&v64 + 1) = v31;
  [v9 doubleValue];
  *&v65 = v32;
  [roll doubleValue];
  *(&v65 + 1) = v33;
  *&v66 = v62;
  if (!self->_eyeReliefStarted)
  {
    goto LABEL_54;
  }

  if (v60)
  {
    if (currentLogLevel >= 3)
    {
      v34 = _AALog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
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

        *buf = 134217984;
        v74 = v36;
        _os_log_error_impl(&dword_1BB2EF000, v34, OS_LOG_TYPE_ERROR, "%13.5f: Invalid eyeRelief frame handed up to this layer. Don't pass this up", buf, 0xCu);
      }

      goto LABEL_60;
    }

    goto LABEL_61;
  }

  if (currentLogLevel == 5)
  {
    v37 = v15;
    v38 = v9;
    v39 = _AALog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = absTimeNS();
      if (v40 == -1)
      {
        v41 = INFINITY;
      }

      else
      {
        v41 = v40 / 1000000000.0;
      }

      v48 = getEyeReliefFaceStateDescription(v37);
      *buf = 134218498;
      v74 = v41;
      v75 = 2112;
      *v76 = distance;
      *&v76[8] = 2112;
      *&v76[10] = v48;
      _os_log_impl(&dword_1BB2EF000, v39, OS_LOG_TYPE_DEFAULT, "%13.5f: Distance from EyeRelief network: %@ EyeReliefState: %@", buf, 0x20u);
    }

LABEL_52:

    v9 = v38;
    if (self->_eyeReliefStarted)
    {
      goto LABEL_53;
    }

LABEL_54:
    v50 = 1;
  }

  else
  {
    if (currentLogLevel >= 6)
    {
      v42 = v15;
      v38 = v9;
      v39 = _AALog();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      selfCopy = self;
      v43 = roll;
      v44 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v44 = j;
        }

        else if (!*(j - 1))
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

          v49 = getEyeReliefFaceStateDescription(v42);
          *buf = 136316162;
          v74 = *&v44;
          v75 = 1024;
          *v76 = 460;
          *&v76[4] = 2048;
          *&v76[6] = v47;
          *&v76[14] = 2112;
          *&v76[16] = distance;
          v77 = 2112;
          v78 = v49;
          _os_log_impl(&dword_1BB2EF000, v39, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: Distance from EyeRelief network: %@ EyeReliefState: %@", buf, 0x30u);

          roll = v43;
          self = selfCopy;
          goto LABEL_52;
        }
      }
    }

LABEL_53:
    v50 = 5;
  }

  *(&v67 + 1) = v50;
  v51 = [AWFaceDetectAttentionEvent alloc];
  v52 = absTimeNS();
  if (v52 == -1)
  {
    v53 = INFINITY;
  }

  else
  {
    v53 = v52 / 1000000000.0;
  }

  v34 = [(AWFaceDetectAttentionEvent *)v51 initWithTimestamp:0 tagIndex:&v64 faceMetadata:v53, v56];
  callbackBlock = self->_callbackBlock;
  if (callbackBlock)
  {
    callbackBlock[2](callbackBlock, v34);
  }

LABEL_60:

LABEL_61:
  v55 = *MEMORY[0x1E69E9840];
}

- (void)setDisplayState:(BOOL)state
{
  v30 = *MEMORY[0x1E69E9840];
  displayOn = self->_displayOn;
  if (displayOn != state)
  {
    stateCopy = state;
    self->_displayOn = state;
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

        v13 = "OFF";
        if (stateCopy)
        {
          v13 = "ON";
        }

        v24 = 134218242;
        v25 = v8;
        v26 = 2080;
        *v27 = v13;
        v14 = "%13.5f: Display state changed to %s";
        v15 = v6;
        v16 = 22;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    LOBYTE(displayOn) = state;
    if (currentLogLevel >= 6)
    {
      v6 = _AALog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
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

          v17 = "OFF";
          v24 = 136315906;
          v25 = *&v9;
          v26 = 1024;
          if (stateCopy)
          {
            v17 = "ON";
          }

          *v27 = 377;
          *&v27[4] = 2048;
          *&v27[6] = v12;
          v28 = 2080;
          v29 = v17;
          v14 = "%30s:%-4d: %13.5f: Display state changed to %s";
          v15 = v6;
          v16 = 38;
LABEL_24:
          _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v16);
LABEL_25:

          LOBYTE(displayOn) = self->_displayOn;
          break;
        }
      }
    }
  }

  if (!displayOn && self->_attentionStreamerRunning)
  {
    cancelEventStream = [(AWPearlAttentionStreamer *)self cancelEventStream];
    (*(self->_notificationBlock + 2))(self->_notificationBlock, 1, v19, v20, v21, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setSmartCoverState:(BOOL)state
{
  v30 = *MEMORY[0x1E69E9840];
  smartCoverClosed = self->_smartCoverClosed;
  if (smartCoverClosed != state)
  {
    self->_smartCoverClosed = state;
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

        v12 = "Opened";
        if (self->_smartCoverClosed)
        {
          v12 = "Closed";
        }

        v24 = 134218242;
        v25 = v7;
        v26 = 2080;
        *v27 = v12;
        v13 = "%13.5f: Smart cover state changed to %s";
        v14 = v5;
        v15 = 22;
LABEL_27:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, &v24, v15);
      }
    }

    else
    {
      smartCoverClosed = state;
      if (currentLogLevel < 6)
      {
        goto LABEL_2;
      }

      v5 = _AALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
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

            v16 = self->_smartCoverClosed;
            v24 = 136315906;
            if (v16)
            {
              v17 = "Closed";
            }

            else
            {
              v17 = "Opened";
            }

            v25 = *&v8;
            v26 = 1024;
            *v27 = 359;
            *&v27[4] = 2048;
            *&v27[6] = v11;
            v28 = 2080;
            v29 = v17;
            v13 = "%30s:%-4d: %13.5f: Smart cover state changed to %s";
            v14 = v5;
            v15 = 38;
            goto LABEL_27;
          }
        }
      }
    }

    if (!self->_smartCoverClosed)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_2:
  if (!smartCoverClosed)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (self->_attentionStreamerRunning)
  {
    cancelEventStream = [(AWPearlAttentionStreamer *)self cancelEventStream];
    (*(self->_notificationBlock + 2))(self->_notificationBlock, 1, v19, v20, v21, v22);
  }

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)sendNotification:(unint64_t)notification
{
  notificationBlock = self->_notificationBlock;
  if (notificationBlock)
  {
    notificationBlock[2](notificationBlock, notification);
  }
}

- (id)cancelEventStream
{
  v16[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_attentionStreamerRunning)
  {
    v3 = self->_pendingPresenceOperation;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AWPearlAttentionStreamer_cancelEventStream__block_invoke;
    block[3] = &unk_1E7F38060;
    v13 = v3;
    selfCopy = self;
    v4 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    pendingPresenceOperation = self->_pendingPresenceOperation;
    self->_pendingPresenceOperation = 0;

    self->_attentionStreamerRunning = 0;
    callbackBlock = self->_callbackBlock;
    self->_callbackBlock = 0;

    self->_eyeReliefStarted = 0;
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @" Attention streamer not running";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v8 errorWithDomain:v9 code:3 userInfo:v4];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

void __45__AWPearlAttentionStreamer_cancelEventStream__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cancel];
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

      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v17 = 134218498;
      v18 = v4;
      v19 = 2112;
      *v20 = v9;
      *&v20[8] = 2048;
      *&v20[10] = v10;
      v11 = "%13.5f: %@ cancelled presence operation %p";
      v12 = v2;
      v13 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
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
          v14 = *(a1 + 40);
          v17 = 136316162;
          v18 = *&v5;
          v19 = 1024;
          *v20 = 314;
          *&v20[4] = 2048;
          *&v20[6] = v8;
          *&v20[14] = 2112;
          *&v20[16] = v14;
          v21 = 2048;
          v22 = v15;
          v11 = "%30s:%-4d: %13.5f: %@ cancelled presence operation %p";
          v12 = v2;
          v13 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
}

- (id)streamEventWithBlock:(id)block options:(id)options operationStartFailedBlock:(id)failedBlock
{
  var0 = options.var0;
  v66[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  failedBlockCopy = failedBlock;
  dispatch_assert_queue_V2(self->_queue);
  if (![(AWPearlAttentionStreamer *)self isAttentionAwareFeaturesEnabled])
  {
    if (currentLogLevel >= 3)
    {
      v16 = _AALog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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

        *buf = 134217984;
        v56 = v24;
        _os_log_error_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_ERROR, "%13.5f: User has AttentionAware features off, cannot start streaming operation with Pearl", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v65 = *MEMORY[0x1E696A578];
    v66[0] = @" Attention Aware Features turned OFF";
    v13 = MEMORY[0x1E695DF20];
    v14 = v66;
    v15 = &v65;
    goto LABEL_16;
  }

  if (!self->_displayOn)
  {
    if (currentLogLevel >= 3)
    {
      v17 = _AALog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

        *buf = 134217984;
        v56 = v29;
        _os_log_error_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_ERROR, "%13.5f: Display OFF, not starting attention stream", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v63 = *MEMORY[0x1E696A578];
    v64 = @" Display OFF";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v64;
    v15 = &v63;
    goto LABEL_16;
  }

  if (self->_smartCoverClosed)
  {
    if (currentLogLevel >= 3)
    {
      v10 = _AALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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

        *buf = 134217984;
        v56 = v33;
        _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: Smart cover closed, not starting attention stream", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v61 = *MEMORY[0x1E696A578];
    v62 = @" Smart cover closed";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v62;
    v15 = &v61;
LABEL_16:
    v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    v19 = [v11 errorWithDomain:v12 code:1 userInfo:v18];
LABEL_17:

    goto LABEL_18;
  }

  if (self->_matchOrEnrollOperationActive)
  {
    if (currentLogLevel >= 3)
    {
      v22 = _AALog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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
        v56 = v35;
        _os_log_error_impl(&dword_1BB2EF000, v22, OS_LOG_TYPE_ERROR, "%13.5f: Match or enroll operation underway, not starting attention stream", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v59 = *MEMORY[0x1E696A578];
    v60 = @" Match or enroll operation ongoing";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v60;
    v15 = &v59;
    goto LABEL_16;
  }

  if (!self->_attentionStreamerRunning)
  {
    goto LABEL_67;
  }

  if (!var0 || self->_eyeReliefStarted)
  {
    v19 = 0;
    goto LABEL_18;
  }

  if (currentLogLevel == 5)
  {
    v25 = _AALog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
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

      *buf = 134217984;
      v56 = v27;
      v38 = "%13.5f: Cancelling current stream and starting one with EyeRelief";
      v39 = v25;
      v40 = 12;
LABEL_64:
      _os_log_impl(&dword_1BB2EF000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
    }

LABEL_65:

    goto LABEL_66;
  }

  if (currentLogLevel >= 6)
  {
    v25 = _AALog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v30 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v30 = i;
        }

        else if (!*(i - 1))
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

          *buf = 136315650;
          v56 = *&v30;
          v57 = 1024;
          LODWORD(v58[0]) = 246;
          WORD2(v58[0]) = 2048;
          *(v58 + 6) = v37;
          v38 = "%30s:%-4d: %13.5f: Cancelling current stream and starting one with EyeRelief";
          v39 = v25;
          v40 = 28;
          goto LABEL_64;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_66:
  cancelEventStream = [(AWPearlAttentionStreamer *)self cancelEventStream];
LABEL_67:
  [(BKDevicePearl *)self->_pearlDevice setQueue:self->_queue];
  [(BKDevicePearl *)self->_pearlDevice setDelegate:self];
  pearlDevice = self->_pearlDevice;
  v54 = 0;
  v43 = [(BKDevicePearl *)pearlDevice createPresenceDetectOperationWithError:&v54];
  v19 = v54;
  pendingPresenceOperation = self->_pendingPresenceOperation;
  self->_pendingPresenceOperation = v43;

  v45 = self->_pendingPresenceOperation;
  if (v45)
  {
    [(BKFaceDetectOperation *)v45 setDelegate:self];
    [(BKFaceDetectOperation *)self->_pendingPresenceOperation setQueue:self->_queue];
    [(BKFaceDetectOperation *)self->_pendingPresenceOperation setMode:1];
    [(BKFaceDetectOperation *)self->_pendingPresenceOperation setEyeRelief:var0];
    if (blockCopy)
    {
      v46 = MEMORY[0x1BFB0D030](blockCopy);
      callbackBlock = self->_callbackBlock;
      self->_callbackBlock = v46;
    }

    v48 = self->_pendingPresenceOperation;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __83__AWPearlAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke;
    v52[3] = &unk_1E7F37408;
    v52[4] = self;
    v53 = failedBlockCopy;
    [(BKFaceDetectOperation *)v48 startWithReply:v52];
    v49 = v53;
    v18 = v19;

    v19 = v18;
    goto LABEL_17;
  }

  if (currentLogLevel >= 3)
  {
    v18 = _AALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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

      *buf = 134218242;
      v56 = v51;
      v57 = 2112;
      v58[0] = v19;
      _os_log_error_impl(&dword_1BB2EF000, v18, OS_LOG_TYPE_ERROR, "%13.5f: Creating presence detect operation failed with error: %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_18:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __83__AWPearlAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
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

        v27 = *(a1 + 32);
        v28 = *(v27 + 16);
        *buf = 134218754;
        v48 = v11;
        v49 = 2112;
        *v50 = v27;
        *&v50[8] = 2048;
        *&v50[10] = v28;
        *&v50[18] = 2112;
        *&v50[20] = v5;
        v29 = "%13.5f: %@ failed to start presence operation %p: %@ for streaming";
        v30 = v9;
        v31 = 42;
LABEL_47:
        _os_log_impl(&dword_1BB2EF000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_49:
        *(*(a1 + 32) + 48) = 0;
        *(*(a1 + 32) + 64) = 0;
        v40 = *(a1 + 32);
        v41 = *(v40 + 32);
        *(v40 + 32) = 0;

        v42 = *(*(a1 + 32) + 56);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __83__AWPearlAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke_34;
        v44[3] = &unk_1E7F37F78;
        v46 = *(a1 + 40);
        v45 = v5;
        dispatch_async(v42, v44);

        goto LABEL_50;
      }

      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
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

            v38 = *(a1 + 32);
            v39 = *(v38 + 16);
            *buf = 136316418;
            v48 = *&v14;
            v49 = 1024;
            *v50 = 289;
            *&v50[4] = 2048;
            *&v50[6] = v19;
            *&v50[14] = 2112;
            *&v50[16] = v38;
            *&v50[24] = 2048;
            *&v50[26] = v39;
            v51 = 2112;
            v52 = v5;
            v29 = "%30s:%-4d: %13.5f: %@ failed to start presence operation %p: %@ for streaming";
            v30 = v9;
            v31 = 58;
            goto LABEL_47;
          }
        }
      }
    }

    goto LABEL_49;
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

      v20 = *(a1 + 32);
      v21 = *(v20 + 16);
      v22 = [v21 eyeRelief];
      v23 = "without";
      *buf = 134218754;
      v49 = 2112;
      v48 = v8;
      if (v22)
      {
        v23 = "with";
      }

      *v50 = v20;
      *&v50[8] = 2048;
      *&v50[10] = v21;
      *&v50[18] = 2080;
      *&v50[20] = v23;
      v24 = "%13.5f: %@ presence operation %p successfully started for streaming %s eyeRelief";
      v25 = v6;
      v26 = 42;
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (currentLogLevel >= 6)
  {
    v6 = _AALog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
    for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++j)
    {
      if (*(j - 1) == 47)
      {
        v12 = j;
      }

      else if (!*(j - 1))
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

        v32 = *(a1 + 32);
        v33 = *(v32 + 16);
        v34 = [v33 eyeRelief];
        *buf = 136316418;
        v35 = "without";
        v48 = *&v12;
        v49 = 1024;
        *v50 = 276;
        if (v34)
        {
          v35 = "with";
        }

        *&v50[4] = 2048;
        *&v50[6] = v17;
        *&v50[14] = 2112;
        *&v50[16] = v32;
        *&v50[24] = 2048;
        *&v50[26] = v33;
        v51 = 2080;
        v52 = v35;
        v24 = "%30s:%-4d: %13.5f: %@ presence operation %p successfully started for streaming %s eyeRelief";
        v25 = v6;
        v26 = 58;
LABEL_40:
        _os_log_impl(&dword_1BB2EF000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
LABEL_41:

        break;
      }
    }
  }

  *(*(a1 + 32) + 48) = 1;
  v36 = [*(*(a1 + 32) + 16) eyeRelief];
  v37 = *(a1 + 32);
  if (v36)
  {
    *(v37 + 64) = 1;
  }

  else
  {
    *(v37 + 64) = 0;
  }

LABEL_50:

  v43 = *MEMORY[0x1E69E9840];
}

- (void)setNotificationHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    __assert_rtn("[AWPearlAttentionStreamer setNotificationHandler:]", "PearlAttentionStreamer.m", 199, "notificationBlock != nil");
  }

  v7 = handlerCopy;
  v5 = MEMORY[0x1BFB0D030]();
  notificationBlock = self->_notificationBlock;
  self->_notificationBlock = v5;
}

- (id)initForUnitTest:(BOOL)test queue:(id)queue
{
  queueCopy = queue;
  v38.receiver = self;
  v38.super_class = AWPearlAttentionStreamer;
  v8 = [(AWPearlAttentionStreamer *)&v38 init];
  v9 = v8;
  if (!v8)
  {
LABEL_11:
    v20 = v9;
    goto LABEL_12;
  }

  v8->_unitTest = test;
  if (test)
  {
    +[AWUnitTestPearlDevice sharedDevice];
  }

  else
  {
    getPearlDevice();
  }
  v10 = ;
  pearlDevice = v9->_pearlDevice;
  v9->_pearlDevice = v10;

  objc_storeStrong(&v9->_queue, queue);
  if (v9->_pearlDevice)
  {
    notificationBlock = v9->_notificationBlock;
    v9->_notificationBlock = 0;

    v9->_attentionStreamerRunning = 0;
    callbackBlock = v9->_callbackBlock;
    v9->_callbackBlock = 0;

    v9->_eyeReliefStarted = 0;
    v9->_matchOrEnrollOperationActive = 0;
    objc_initWeak(&location, v9);
    predicate = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke;
    block[3] = &unk_1E7F37910;
    v14 = v9;
    v34 = v14;
    objc_copyWeak(&v35, &location);
    dispatch_once(&predicate, block);
    [v14 setIsAttentionAwareFeaturesEnabled:_AXSAttentionAwarenessFeaturesEnabled() != 0];
    if (v9->_unitTest)
    {
      *(v14 + 40) = 1;
      unitTestDevice = [v14 unitTestDevice];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_11;
      v31[3] = &unk_1E7F37B98;
      v16 = v14;
      v32 = v16;
      [unitTestDevice setDisplayCallback:v31];

      unitTestDevice2 = [v16 unitTestDevice];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_3;
      v29[3] = &unk_1E7F37B98;
      v30 = v16;
      [unitTestDevice2 setSmartCoverCallback:v29];
      v18 = &v32;
      v19 = &v30;
    }

    else
    {
      queue = v9->_queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_5;
      handler[3] = &unk_1E7F37BC0;
      v22 = v14;
      v28 = v22;
      notify_register_dispatch("com.apple.BiometricKit.activeOperation", v14 + 21, queue, handler);
      v18 = &v28;
      v23 = v9->_queue;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_15;
      v25[3] = &unk_1E7F38038;
      v19 = &v26;
      v26 = v22;
      dispatch_async(v23, v25);
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v20 = 0;
LABEL_12:

  return v20;
}

void __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_2;
  v4[3] = &unk_1E7F373E0;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  notify_register_dispatch("com.apple.AttentionAwareness.SupportedEventsChanged", (v2 + 68), v3, v4);

  objc_destroyWeak(&v6);
}

void __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_11(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_2_12;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

void __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_4;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

uint64_t __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_5(uint64_t a1, int token)
{
  v23 = *MEMORY[0x1E69E9840];
  state64 = 0;
  result = notify_get_state(token, &state64);
  v4 = *(a1 + 32);
  if (state64 - 1 > 1)
  {
    *(v4 + 88) = 0;
  }

  else
  {
    *(v4 + 88) = 1;
    result = *(a1 + 32);
    if (*(result + 48) == 1)
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

          *buf = 134217984;
          v18 = v7;
          v12 = "%13.5f: Match or enroll operation initiated when a stream was running, cancelling stream and sending a notification to clients";
          v13 = v5;
          v14 = 12;
LABEL_22:
          _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
LABEL_24:
          [result sendNotification:1];
          result = [*(a1 + 32) cancelEventStream];
          goto LABEL_25;
        }

        v5 = _AALog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
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

              *buf = 136315650;
              v18 = *&v8;
              v19 = 1024;
              v20 = 174;
              v21 = 2048;
              v22 = v11;
              v12 = "%30s:%-4d: %13.5f: Match or enroll operation initiated when a stream was running, cancelling stream and sending a notification to clients";
              v13 = v5;
              v14 = 28;
              goto LABEL_22;
            }
          }
        }
      }

      result = *(a1 + 32);
      goto LABEL_24;
    }
  }

LABEL_25:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = BKSHIDServicesIsSmartCoverClosed() != 0;

  return [v1 setSmartCoverState:v2];
}

void __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsAttentionAwareFeaturesEnabled:_AXSAttentionAwarenessFeaturesEnabled() != 0];
  if (currentLogLevel < 7)
  {
    goto LABEL_16;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_15;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; *(i - 1) == 47; ++i)
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

  v8 = [WeakRetained isAttentionAwareFeaturesEnabled];
  v9 = "OFF";
  *v12 = 136315906;
  *&v12[4] = v4;
  *&v12[12] = 1024;
  *&v12[14] = 134;
  if (v8)
  {
    v9 = "ON";
  }

  *&v12[18] = 2048;
  *&v12[20] = v7;
  v13 = 2080;
  v14 = v9;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: User toggled the Attention Aware Features flag to %s", v12, 0x26u);
LABEL_15:

LABEL_16:
  if (([WeakRetained isAttentionAwareFeaturesEnabled] & 1) == 0)
  {
    if ([WeakRetained attentionStreamerRunning])
    {
      v10 = [*(a1 + 32) cancelEventStream];
    }

    [WeakRetained sendNotification:4];
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end