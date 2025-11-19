@interface AVFoundationOperation
- (AVFoundationOperation)initWithQueue:(id)a3 forUnitTest:(BOOL)a4;
- (BOOL)createAVFoundationOperation;
- (BOOL)isOperationActive;
- (id)cancelActiveOperation:(id)a3;
- (void)SessionDidStartRunningNotification:(id)a3;
- (void)SessionRuntimeErrorNotification:(id)a3;
- (void)SessionWasInterruptedNotification:(id)a3;
- (void)fakeDataForDemoMode;
- (void)receiveMetadata:(id)a3 type:(id)a4;
- (void)receiveNotificationOfName:(id)a3 notification:(id)a4;
- (void)sendDeviceEvent:(int)a3;
- (void)sendDeviceState:(int)a3;
- (void)sendFaceDetectStateChangeMetadata:(AWFaceDetectMetadata *)a3;
- (void)sendOperationEndReason:(int)a3;
- (void)setDelegate:(id)a3;
- (void)startPresenceDetectOperation:(id)a3;
- (void)timeoutOccurred;
@end

@implementation AVFoundationOperation

- (void)fakeDataForDemoMode
{
  *v5 = 1;
  *&v7 = 0;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  *&v5[8] = vdupq_n_s64(0x4066800000000000uLL);
  *&v5[24] = 0x4066800000000000;
  v6 = 1uLL;
  *(&v7 + 1) = 1;
  memset_pattern16(&v8, &unk_1BB32B2C0, 0x40uLL);
  v3[8] = v12;
  v3[9] = v13;
  v3[10] = v14;
  v4 = v15;
  v3[4] = v8;
  v3[5] = v9;
  v3[6] = v10;
  v3[7] = v11;
  v3[0] = *v5;
  v3[1] = *&v5[16];
  v3[2] = 1uLL;
  v3[3] = v7;
  [(AVFoundationOperation *)self sendFaceDetectStateChangeMetadata:v3];
}

- (void)sendDeviceState:(int)a3
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = a3;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:4 data:v3 forOperation:self];
}

- (void)sendDeviceEvent:(int)a3
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = a3;
  self->_deviceEvent = a3;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:3 data:v3 forOperation:self];
}

- (void)sendOperationEndReason:(int)a3
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = a3;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:2 data:v3 forOperation:self];
}

- (void)sendFaceDetectStateChangeMetadata:(AWFaceDetectMetadata *)a3
{
  v3 = *&a3->var11;
  v8[8] = *&a3->var9;
  v8[9] = v3;
  v8[10] = *&a3->var12.origin.y;
  height = a3->var12.size.height;
  v4 = *&a3->var8[4];
  v8[4] = *a3->var8;
  v8[5] = v4;
  v5 = *&a3->var8[12];
  v8[6] = *&a3->var8[8];
  v8[7] = v5;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0;
  v8[1] = v6;
  v7 = *&a3->var6;
  v8[2] = *&a3->var4;
  v8[3] = v7;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:1 data:v8 forOperation:self];
}

- (void)timeoutOccurred
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(AVFoundationOperation *)self cancelActiveOperation:@"Operation timed out"];

  [(AVFoundationOperation *)self sendOperationEndReason:4];
}

- (void)SessionWasInterruptedNotification:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);

  [(AVFoundationOperation *)self sendOperationEndReason:3];
}

- (void)SessionDidStartRunningNotification:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  [(AVFoundationOperation *)self sendDeviceState:2];
  [(AVFoundationOperation *)self sendDeviceEvent:1];
  self->_operationState = 2;
}

- (void)SessionRuntimeErrorNotification:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
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

      v12 = [v4 userInfo];
      *v18 = 134218242;
      *&v18[4] = v7;
      *&v18[12] = 2112;
      *&v18[14] = v12;
      v13 = "%13.5f: Runtime error received: %@";
      v14 = v5;
      v15 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, v18, v15);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
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

          v12 = [v4 userInfo];
          *v18 = 136315906;
          *&v18[4] = v8;
          *&v18[12] = 1024;
          *&v18[14] = 338;
          *&v18[18] = 2048;
          *&v18[20] = v11;
          *&v18[28] = 2112;
          *&v18[30] = v12;
          v13 = "%30s:%-4d: %13.5f: Runtime error received: %@";
          v14 = v5;
          v15 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  [(AVFoundationOperation *)self sendDeviceState:5, *v18, *&v18[16], *&v18[24], v19];
  v16 = [(AVFoundationOperation *)self cancelActiveOperation:@"Runtime error"];

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)createAVFoundationOperation
{
  AVFoundationEngine = self->_AVFoundationEngine;
  if (!AVFoundationEngine)
  {
    v4 = +[AVFoundationEngine sharedEngine];
    v5 = self->_AVFoundationEngine;
    self->_AVFoundationEngine = v4;

    AVFoundationEngine = self->_AVFoundationEngine;
  }

  AWAttentionSamplerActivateAttentionDetection = self->_currentOptions.AWAttentionSamplerActivateAttentionDetection;
  AWAttentionSamplerActivatePersonDetection = self->_currentOptions.AWAttentionSamplerActivatePersonDetection;
  identifier = self->_identifier;

  return [AVFoundationEngine registerForOperation:self activateAttentionDetection:AWAttentionSamplerActivateAttentionDetection activateEyeRelief:0 activatePersonDetection:AWAttentionSamplerActivatePersonDetection identifier:identifier];
}

- (void)receiveNotificationOfName:(id)a3 notification:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
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

      *v19 = 134218242;
      *&v19[4] = v10;
      *&v19[12] = 2112;
      *&v19[14] = v6;
      v15 = "%13.5f: Notification %@ received";
      v16 = v8;
      v17 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, v19, v17);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
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

          *v19 = 136315906;
          *&v19[4] = v11;
          *&v19[12] = 1024;
          *&v19[14] = 281;
          *&v19[18] = 2048;
          *&v19[20] = v14;
          *&v19[28] = 2112;
          *&v19[30] = v6;
          v15 = "%30s:%-4d: %13.5f: Notification %@ received";
          v16 = v8;
          v17 = 38;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if ([v6 isEqualToString:{*MEMORY[0x1E6986B20], *v19, *&v19[16], *&v19[24], v20}])
  {
    [(AVFoundationOperation *)self SessionRuntimeErrorNotification:v7];
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E6986A90]])
  {
    [(AVFoundationOperation *)self SessionDidStartRunningNotification:v7];
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E6986A98]])
  {
    [(AVFoundationOperation *)self SessionDidStopRunningNotification:v7];
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E6986B28]])
  {
    [(AVFoundationOperation *)self SessionWasInterruptedNotification:v7];
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E6986AA8]])
  {
    [(AVFoundationOperation *)self SessionInterruptionEndedNotification:v7];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)receiveMetadata:(id)a3 type:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  LODWORD(v40) = 0;
  *(&v40 + 3) = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  if (*MEMORY[0x1E6986FE8] == v7)
  {
    v8 = v6;
    v9 = v8;
    if (v8 && [v8 hasPayingAttention] && (!objc_msgSend(v9, "hasPayingAttention") || objc_msgSend(v9, "payingAttention")) && objc_msgSend(v9, "hasPayingAttention", 0, 0, 0, 0, 0, 0, 0, 0, 0, v40) && objc_msgSend(v9, "payingAttention"))
    {
      v10 = 0;
      v11 = 0;
      if ([v9 hasPitchAngle])
      {
        [v9 pitchAngle];
        v11 = v12;
      }

      if ([v9 hasYawAngle])
      {
        [v9 yawAngle];
        v10 = v13;
      }

      v14 = 0;
      v15 = 0;
      if ([v9 hasRollAngle])
      {
        [v9 rollAngle];
        v15 = v16;
      }

      if ([v9 hasDistance])
      {
        [v9 distance];
        v14 = v17;
      }

      if ([v9 hasOrientation])
      {
        v18 = [v9 orientation];
        if ((v18 - 1) >= 4)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }
      }

      else
      {
        v19 = 0;
      }

      v21 = 0.0;
      if ([v9 hasConfidence])
      {
        [v9 confidence];
        v21 = v22 * 100.0;
      }

      if (currentLogLevel == 5)
      {
        v23 = _AALog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
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

          v30 = getFaceDetectOrientationDescription(v19);
          *buf = 134219778;
          *&buf[4] = v25;
          *&buf[12] = 2112;
          *&buf[14] = self;
          *&buf[22] = 2080;
          *&buf[24] = "FACE FOUND";
          *&buf[32] = 2048;
          *&buf[34] = v11;
          *&buf[42] = 2048;
          *&buf[44] = v10;
          *&buf[52] = 2048;
          *&buf[54] = v15;
          *&buf[62] = 2112;
          *&buf[64] = v30;
          *&buf[72] = 2048;
          *&buf[74] = v21;
          v31 = "%13.5f: Received metadata in %@ faceDetectStateChanged %s pitch: %f yaw: %f roll: %f orientation: %@ faceDetectionScore: %f";
          v32 = v23;
          v33 = 82;
LABEL_44:
          _os_log_impl(&dword_1BB2EF000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
LABEL_46:

          buf[0] = 1;
          *&buf[1] = v40;
          *&buf[4] = *(&v40 + 3);
          *&buf[8] = v11;
          *&buf[16] = v10;
          *&buf[24] = v15;
          *&buf[32] = v19;
          *&buf[40] = v14;
          *&buf[80] = v36;
          *&buf[96] = v37;
          v42 = v38;
          v43 = v39;
          *&buf[48] = xmmword_1BB32B2A0;
          *&buf[64] = v35;
          v44 = v21;
          v45 = 0u;
          memset(v46, 0, sizeof(v46));
          [(AVFoundationOperation *)self sendFaceDetectStateChangeMetadata:buf];
          [(AVFoundationOperation *)self sendDeviceEvent:3];
          [(AVFoundationOperation *)self sendOperationEndReason:1];
          v34 = [(AVFoundationOperation *)self cancelActiveOperation:@"Face found"];
          goto LABEL_22;
        }

        v23 = _AALog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v26 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
          {
            if (*(i - 1) == 47)
            {
              v26 = i;
            }

            else if (!*(i - 1))
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

              v30 = getFaceDetectOrientationDescription(v19);
              *buf = 136317442;
              *&buf[4] = v26;
              *&buf[12] = 1024;
              *&buf[14] = 234;
              *&buf[18] = 2048;
              *&buf[20] = v29;
              *&buf[28] = 2112;
              *&buf[38] = 2080;
              *&buf[30] = self;
              *&buf[40] = "FACE FOUND";
              *&buf[48] = 2048;
              *&buf[50] = v11;
              *&buf[58] = 2048;
              *&buf[60] = v10;
              *&buf[68] = 2048;
              *&buf[70] = v15;
              *&buf[78] = 2112;
              *&buf[80] = v30;
              *&buf[88] = 2048;
              *&buf[90] = v21;
              v31 = "%30s:%-4d: %13.5f: Received metadata in %@ faceDetectStateChanged %s pitch: %f yaw: %f roll: %f orientation: %@ faceDetectionScore: %f";
              v32 = v23;
              v33 = 98;
              goto LABEL_44;
            }
          }
        }
      }

      goto LABEL_46;
    }
  }

  [(AVFoundationOperation *)self sendDeviceEvent:2, v35, v36, v37, v38, v39, v40];
LABEL_22:

  v20 = *MEMORY[0x1E69E9840];
}

- (id)cancelActiveOperation:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
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

      *v17 = 134218242;
      *&v17[4] = v7;
      *&v17[12] = 2112;
      *&v17[14] = v4;
      v12 = "%13.5f: cancelActiveOperation called with info %@";
      v13 = v5;
      v14 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, v17, v14);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
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

          *v17 = 136315906;
          *&v17[4] = v8;
          *&v17[12] = 1024;
          *&v17[14] = 150;
          *&v17[18] = 2048;
          *&v17[20] = v11;
          *&v17[28] = 2112;
          *&v17[30] = v4;
          v12 = "%30s:%-4d: %13.5f: cancelActiveOperation called with info %@";
          v13 = v5;
          v14 = 38;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if ([(AVFoundationOperation *)self isOperationActive:*v17])
  {
    [self->_AVFoundationEngine unregisterForOperation:self->_identifier];
  }

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)startPresenceDetectOperation:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  AVFoundationEngine = self->_AVFoundationEngine;
  identifier = self->_identifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__AVFoundationOperation_startPresenceDetectOperation___block_invoke;
  v14[3] = &unk_1E7F372A0;
  v7 = v4;
  v15 = v7;
  v8 = [AVFoundationEngine startOperationForReceiver:identifier reply:v14];
  if (!v8)
  {
    timeout = self->_timeout;
    if (timeout != 0.0)
    {
      v10 = dispatch_time(0, (timeout * 1000000000.0));
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__AVFoundationOperation_startPresenceDetectOperation___block_invoke_2;
      block[3] = &unk_1E7F37AF8;
      objc_copyWeak(&v13, &location);
      dispatch_after(v10, queue, block);
      objc_destroyWeak(&v13);
    }
  }

  (*(v7 + 2))(v7, v8);

  objc_destroyWeak(&location);
}

void __54__AVFoundationOperation_startPresenceDetectOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timeoutOccurred];
}

- (BOOL)isOperationActive
{
  dispatch_assert_queue_V2(self->_queue);
  AVFoundationEngine = self->_AVFoundationEngine;
  identifier = self->_identifier;

  return [AVFoundationEngine isOperationActive:identifier];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  delegate = self->_delegate;
  self->_delegate = v4;
}

- (AVFoundationOperation)initWithQueue:(id)a3 forUnitTest:(BOOL)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v26.receiver = self;
  v26.super_class = AVFoundationOperation;
  v8 = [(AVFoundationOperation *)&v26 init];
  if (v8)
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

        *buf = 134218242;
        v28 = v11;
        v29 = 2112;
        *v30 = v8;
        v16 = "%13.5f: AVFoundationOperation %@ initialized";
        v17 = v9;
        v18 = 22;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        objc_storeStrong(v8 + 1, a3);
        v8[40] = a4;
        v19 = *(v8 + 3);
        *(v8 + 3) = 0;
        *(v8 + 4) = 0;

        *(v8 + 41) = 0;
        *(v8 + 6) = 0x400000001;
        v20 = [MEMORY[0x1E696AD88] defaultCenter];
        v21 = *(v8 + 7);
        *(v8 + 7) = v20;

        v22 = *(v8 + 8);
        *(v8 + 8) = @"AVFoundationAttentionSampler";

        v23 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AttentionAwareness"];
        v8[72] = [v23 BOOLForKey:@"demoMode"];

        goto LABEL_23;
      }

      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
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
            v28 = *&v12;
            v29 = 1024;
            *v30 = 59;
            *&v30[4] = 2048;
            *&v30[6] = v15;
            v31 = 2112;
            v32 = v8;
            v16 = "%30s:%-4d: %13.5f: AVFoundationOperation %@ initialized";
            v17 = v9;
            v18 = 38;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

@end