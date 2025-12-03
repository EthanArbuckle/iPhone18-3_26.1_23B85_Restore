@interface BiokitOperation
- (BiokitOperation)initWithQueue:(id)queue forUnitTest:(BOOL)test;
- (id)cancelActiveOperation:(id)operation;
- (void)device:(id)device pearlEventOccurred:(int64_t)occurred;
- (void)device:(id)device pearlStateChanged:(int64_t)changed;
- (void)operation:(id)operation faceDetectStateChanged:(id)changed;
- (void)operation:(id)operation finishedWithReason:(int64_t)reason;
- (void)operation:(id)operation motionDetectStateChanged:(id)changed;
- (void)startPresenceDetectOperation:(id)operation;
@end

@implementation BiokitOperation

- (void)device:(id)device pearlStateChanged:(int64_t)changed
{
  v20 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
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

      LODWORD(v18[0]) = 134218498;
      *(v18 + 4) = v9;
      WORD6(v18[0]) = 2112;
      *(v18 + 14) = self;
      WORD3(v18[1]) = 2080;
      *(&v18[1] + 1) = getDeviceStateDescription(changed);
      v14 = "%13.5f: %@ pearlStateChanged %s";
      v15 = v7;
      v16 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, v18, v16);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
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

          LODWORD(v18[0]) = 136316162;
          *(v18 + 4) = v10;
          WORD6(v18[0]) = 1024;
          *(v18 + 14) = 415;
          WORD1(v18[1]) = 2048;
          *(&v18[1] + 4) = v13;
          WORD6(v18[1]) = 2112;
          *(&v18[1] + 14) = self;
          WORD3(v18[2]) = 2080;
          *(&v18[2] + 1) = getDeviceStateDescription(changed);
          v14 = "%30s:%-4d: %13.5f: %@ pearlStateChanged %s";
          v15 = v7;
          v16 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  LODWORD(v18[0]) = changed;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:4 data:v18 forOperation:self];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)device:(id)device pearlEventOccurred:(int64_t)occurred
{
  v24 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
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

      DeviceEventDescription = getDeviceEventDescription(occurred);
      pendingPresenceOperation = self->_pendingPresenceOperation;
      LODWORD(v22[0]) = 134219010;
      *(v22 + 4) = v9;
      WORD6(v22[0]) = 2112;
      *(v22 + 14) = self;
      WORD3(v22[1]) = 2080;
      *(&v22[1] + 1) = DeviceEventDescription;
      LOWORD(v22[2]) = 2048;
      *(&v22[2] + 2) = pendingPresenceOperation;
      WORD5(v22[2]) = 2080;
      *(&v22[2] + 12) = getOperationStateDescription([(BKFaceDetectOperation *)pendingPresenceOperation state]);
      v16 = "%13.5f: %@ pearlEventOccurred %s, current operation %p state %s";
      v17 = v7;
      v18 = 52;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, v22, v18);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
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

          v19 = getDeviceEventDescription(occurred);
          v20 = self->_pendingPresenceOperation;
          LODWORD(v22[0]) = 136316674;
          *(v22 + 4) = v10;
          WORD6(v22[0]) = 1024;
          *(v22 + 14) = 403;
          WORD1(v22[1]) = 2048;
          *(&v22[1] + 4) = v13;
          WORD6(v22[1]) = 2112;
          *(&v22[1] + 14) = self;
          WORD3(v22[2]) = 2080;
          *(&v22[2] + 1) = v19;
          LOWORD(v22[3]) = 2048;
          *(&v22[3] + 2) = v20;
          WORD5(v22[3]) = 2080;
          *(&v22[3] + 12) = getOperationStateDescription([(BKFaceDetectOperation *)v20 state]);
          v16 = "%30s:%-4d: %13.5f: %@ pearlEventOccurred %s, current operation %p state %s";
          v17 = v7;
          v18 = 68;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  LODWORD(v22[0]) = occurred;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:3 data:v22 forOperation:self];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)operation:(id)operation finishedWithReason:(int64_t)reason
{
  v32 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  dispatch_assert_queue_V2(self->_queue);
  v7 = MEMORY[0x1E696AEC0];
  pendingPresenceOperation = self->_pendingPresenceOperation;
  [(BKFaceDetectOperation *)pendingPresenceOperation timeout];
  v10 = [v7 stringWithFormat:@"operation %p currentOperation %p (timeout %13.5f) finishedWithReason %s", operationCopy, pendingPresenceOperation, v9, getEndReasonDescriptions(reason)];
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

      *buf = 134218498;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      *&buf[24] = v10;
      v18 = "%13.5f: %@ %@";
      v19 = v11;
      v20 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v14 = i;
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

          *buf = 136316162;
          *&buf[4] = v14;
          *&buf[12] = 1024;
          *&buf[14] = 385;
          *&buf[18] = 2048;
          *&buf[20] = v17;
          *&buf[28] = 2112;
          *&buf[30] = self;
          *&buf[38] = 2112;
          *&buf[40] = v10;
          v18 = "%30s:%-4d: %13.5f: %@ %@";
          v19 = v11;
          v20 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(buf, 0, sizeof(buf));
  *buf = reason;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:2 data:buf forOperation:self];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)operation:(id)operation faceDetectStateChanged:(id)changed
{
  v60 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_queue);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *&v46 = 0;
  v47 = 0u;
  *&v43 = 0;
  LODWORD(changed) = [changedCopy faceDetected];
  pitch = [changedCopy pitch];
  v9 = [changedCopy yaw];
  roll = [changedCopy roll];
  distance = [changedCopy distance];
  orientation = [changedCopy orientation];
  if ((orientation - 1) >= 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = orientation;
  }

  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  if (currentLogLevel == 5)
  {
    v14 = _AALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v40 = distance;
      v15 = absTimeNS();
      v41 = pitch;
      v36 = v9;
      v16 = operationCopy;
      if (v15 == -1)
      {
        v17 = INFINITY;
      }

      else
      {
        v17 = v15 / 1000000000.0;
      }

      pendingPresenceOperation = self->_pendingPresenceOperation;
      if (changed)
      {
        v23 = "FACE FOUND";
      }

      else
      {
        v23 = "FACE NOT FOUND";
      }

      getFaceDetectOrientationDescription(v13);
      changed = v38 = changed;
      faceDetectionScore = [changedCopy faceDetectionScore];
      *buf = 134220290;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = v16;
      *&buf[32] = 2048;
      *&buf[34] = pendingPresenceOperation;
      *&buf[42] = 2080;
      *&buf[44] = v23;
      *&buf[52] = 2112;
      pitch = v41;
      *&buf[54] = v41;
      *&buf[62] = 2112;
      v9 = v36;
      *&buf[64] = v36;
      *&buf[72] = 2112;
      *&buf[74] = roll;
      *&buf[82] = 2112;
      *&buf[84] = changed;
      *&buf[92] = 2112;
      *&buf[94] = faceDetectionScore;
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, "%13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %@ yaw: %@ roll: %@ orientation: %@ faceDetectionScore: %@", buf, 0x66u);

      operationCopy = v16;
      LOBYTE(changed) = v38;
LABEL_28:
      distance = v40;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (currentLogLevel >= 6)
  {
    v14 = _AALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v35 = operationCopy;
      v18 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v18 = i;
        }

        else if (!*(i - 1))
        {
          v40 = distance;
          v20 = absTimeNS();
          v42 = pitch;
          v37 = v9;
          if (v20 == -1)
          {
            v21 = INFINITY;
          }

          else
          {
            v21 = v20 / 1000000000.0;
          }

          v25 = self->_pendingPresenceOperation;
          if (changed)
          {
            v26 = "FACE FOUND";
          }

          else
          {
            v26 = "FACE NOT FOUND";
          }

          v27 = getFaceDetectOrientationDescription(v13);
          [changedCopy faceDetectionScore];
          changed = v39 = changed;
          *buf = 136317954;
          *&buf[4] = v18;
          *&buf[12] = 1024;
          *&buf[14] = 355;
          *&buf[18] = 2048;
          *&buf[20] = v21;
          *&buf[28] = 2112;
          *&buf[30] = self;
          *&buf[38] = 2048;
          operationCopy = v35;
          *&buf[40] = v35;
          *&buf[48] = 2048;
          *&buf[50] = v25;
          *&buf[58] = 2080;
          *&buf[60] = v26;
          *&buf[68] = 2112;
          pitch = v42;
          *&buf[70] = v42;
          *&buf[78] = 2112;
          v9 = v37;
          *&buf[80] = v37;
          *&buf[88] = 2112;
          *&buf[90] = roll;
          *&buf[98] = 2112;
          *&buf[100] = v27;
          *&buf[108] = 2112;
          *&buf[110] = changed;
          _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %@ yaw: %@ roll: %@ orientation: %@ faceDetectionScore: %@", buf, 0x76u);

          LOBYTE(changed) = v39;
          goto LABEL_28;
        }
      }
    }

    goto LABEL_29;
  }

LABEL_30:
  LOBYTE(v43) = changed;
  *(&v46 + 1) = 1;
  [pitch doubleValue];
  *(&v43 + 1) = v28;
  [v9 doubleValue];
  *&v44 = v29;
  [roll doubleValue];
  *(&v44 + 1) = v30;
  *&v45 = v13;
  [distance doubleValue];
  *(&v45 + 1) = v31;
  faceDetectionScore2 = [changedCopy faceDetectionScore];
  [faceDetectionScore2 floatValue];
  DWORD2(v51) = v33;

  memset_pattern16(&v47, &unk_1BB32B2C0, 0x40uLL);
  *&v51 = 0;
  v56 = v51;
  v57 = v52;
  v58 = v53;
  v59 = v54;
  *&buf[64] = v47;
  *&buf[80] = v48;
  *&buf[96] = v49;
  *&buf[112] = v50;
  *buf = v43;
  *&buf[16] = v44;
  *&buf[32] = v45;
  *&buf[48] = v46;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:1 data:buf forOperation:self];

  v34 = *MEMORY[0x1E69E9840];
}

- (void)operation:(id)operation motionDetectStateChanged:(id)changed
{
  v57 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_queue);
  v8 = _AALog();
  v9 = _AALog();
  v10 = os_signpost_id_generate(v9);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v8, OS_SIGNPOST_EVENT, v10, "AA: Motion detect success", &unk_1BB32C3F2, buf, 2u);
  }

  *buf = 1;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v47 = 0u;
  v48 = 0u;
  memset(&buf[8], 0, 48);
  *&buf[56] = 3;
  v49 = 0u;
  v50 = 0;
  motionDetectState = [changedCopy motionDetectState];
  if (motionDetectState == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * (motionDetectState == 2);
  }

  *&v47 = v12;
  if (v12)
  {
    memset_pattern16(&v43, &unk_1BB32B2C0, 0x40uLL);
    goto LABEL_13;
  }

  motionMatrix = [changedCopy motionMatrix];

  if (!motionMatrix)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_34;
    }

    v34 = _AALog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
LABEL_41:

      goto LABEL_34;
    }

    v35 = absTimeNS();
    if (v35 == -1)
    {
      v36 = INFINITY;
    }

    else
    {
      v36 = v35 / 1000000000.0;
    }

    *v51 = 134217984;
    v52 = v36;
    v39 = "%13.5f: MotionMatrix is nil";
LABEL_48:
    _os_log_error_impl(&dword_1BB2EF000, v34, OS_LOG_TYPE_ERROR, v39, v51, 0xCu);
    goto LABEL_41;
  }

  motionMatrix2 = [changedCopy motionMatrix];
  v15 = [motionMatrix2 count];

  if (v15 != 16)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_34;
    }

    v34 = _AALog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v37 = absTimeNS();
    if (v37 == -1)
    {
      v38 = INFINITY;
    }

    else
    {
      v38 = v37 / 1000000000.0;
    }

    *v51 = 134217984;
    v52 = v38;
    v39 = "%13.5f: Motion matrix is of invalid length, not sending this to client";
    goto LABEL_48;
  }

  for (i = 0; i != 16; ++i)
  {
    motionMatrix3 = [changedCopy motionMatrix];
    v18 = [motionMatrix3 objectAtIndexedSubscript:i];

    [v18 floatValue];
    *(&v43 + i) = v19;
  }

LABEL_13:
  if (currentLogLevel == 5)
  {
    v20 = _AALog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = absTimeNS();
      if (v21 == -1)
      {
        v22 = INFINITY;
      }

      else
      {
        v22 = v21 / 1000000000.0;
      }

      pendingPresenceOperation = self->_pendingPresenceOperation;
      v28 = getMotionEventTypeDescription(v12);
      *v51 = 134220290;
      v52 = v22;
      v53 = 2112;
      *v54 = self;
      *&v54[8] = 2048;
      *&v54[10] = operationCopy;
      *&v54[18] = 2048;
      *&v54[20] = pendingPresenceOperation;
      *&v54[28] = 2080;
      *&v54[30] = "FACE FOUND";
      *&v54[38] = 2048;
      *&v54[40] = 0;
      *&v54[48] = 2048;
      *&v54[50] = 0;
      *&v54[58] = 2048;
      *&v54[60] = 0;
      *&v54[68] = 2112;
      *&v54[70] = @"Unknown";
      *&v54[78] = 2112;
      *&v54[80] = v28;
      v29 = "%13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %f yaw: %f roll: %f orientation: %@ motionResult: %@";
      v30 = v20;
      v31 = 102;
LABEL_31:
      _os_log_impl(&dword_1BB2EF000, v30, OS_LOG_TYPE_DEFAULT, v29, v51, v31);
    }

LABEL_32:

    goto LABEL_33;
  }

  if (currentLogLevel >= 6)
  {
    v20 = _AALog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v23 = j;
        }

        else if (!*(j - 1))
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

          v32 = self->_pendingPresenceOperation;
          v28 = getMotionEventTypeDescription(v12);
          *v51 = 136317954;
          v52 = *&v23;
          v53 = 1024;
          *v54 = 310;
          *&v54[4] = 2048;
          *&v54[6] = v26;
          *&v54[14] = 2112;
          *&v54[16] = self;
          *&v54[24] = 2048;
          *&v54[26] = operationCopy;
          *&v54[34] = 2048;
          *&v54[36] = v32;
          *&v54[44] = 2080;
          *&v54[46] = "FACE FOUND";
          *&v54[54] = 2048;
          *&v54[56] = 0;
          *&v54[64] = 2048;
          *&v54[66] = 0;
          *&v54[74] = 2048;
          *&v54[76] = 0;
          *&v54[84] = 2112;
          *&v54[86] = @"Unknown";
          v55 = 2112;
          v56 = v28;
          v29 = "%30s:%-4d: %13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %f yaw: %f roll: %f orientation: %@ motionResult: %@";
          v30 = v20;
          v31 = 118;
          goto LABEL_31;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  v40[8] = v47;
  v40[9] = v48;
  v40[10] = v49;
  v41 = v50;
  v40[4] = v43;
  v40[5] = v44;
  v40[6] = v45;
  v40[7] = v46;
  v40[0] = *buf;
  v40[1] = *&buf[16];
  v40[2] = *&buf[32];
  v40[3] = *&buf[48];
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:1 data:v40 forOperation:self];
LABEL_34:

  v33 = *MEMORY[0x1E69E9840];
}

- (id)cancelActiveOperation:(id)operation
{
  v31 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
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

      *buf = 134218242;
      v26 = v7;
      v27 = 2112;
      *v28 = operationCopy;
      v12 = "%13.5f: cancelActiveOperation called with info %@";
      v13 = v5;
      v14 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
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
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
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

          *buf = 136315906;
          v26 = *&v8;
          v27 = 1024;
          *v28 = 223;
          *&v28[4] = 2048;
          *&v28[6] = v11;
          v29 = 2112;
          v30 = operationCopy;
          v12 = "%30s:%-4d: %13.5f: cancelActiveOperation called with info %@";
          v13 = v5;
          v14 = 38;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  pendingPresenceOperation = self->_pendingPresenceOperation;
  if (pendingPresenceOperation)
  {
    v16 = pendingPresenceOperation;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__BiokitOperation_cancelActiveOperation___block_invoke;
    block[3] = &unk_1E7F37C10;
    v22 = v16;
    selfCopy = self;
    v24 = operationCopy;
    v17 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v18 = self->_pendingPresenceOperation;
    self->_pendingPresenceOperation = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

void __41__BiokitOperation_cancelActiveOperation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
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
      v11 = *(a1 + 48);
      v19 = 134218754;
      v20 = v4;
      v21 = 2112;
      *v22 = v9;
      *&v22[8] = 2048;
      *&v22[10] = v10;
      *&v22[18] = 2112;
      *&v22[20] = v11;
      v12 = "%13.5f: %@ cancelled presence operation %p (%@)";
      v13 = v2;
      v14 = 42;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v19, v14);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
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

          v16 = *(a1 + 32);
          v15 = *(a1 + 40);
          v17 = *(a1 + 48);
          v19 = 136316418;
          v20 = *&v5;
          v21 = 1024;
          *v22 = 230;
          *&v22[4] = 2048;
          *&v22[6] = v8;
          *&v22[14] = 2112;
          *&v22[16] = v15;
          *&v22[24] = 2048;
          *&v22[26] = v16;
          v23 = 2112;
          v24 = v17;
          v12 = "%30s:%-4d: %13.5f: %@ cancelled presence operation %p (%@)";
          v13 = v2;
          v14 = 58;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)startPresenceDetectOperation:(id)operation
{
  operationCopy = operation;
  pendingPresenceOperation = self->_pendingPresenceOperation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__BiokitOperation_startPresenceDetectOperation___block_invoke;
  v7[3] = &unk_1E7F37408;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [(BKFaceDetectOperation *)pendingPresenceOperation startWithReply:v7];
}

void __48__BiokitOperation_startPresenceDetectOperation___block_invoke(uint64_t a1, int a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    if (currentLogLevel >= 3)
    {
      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

        v29 = *(a1 + 32);
        v30 = *(v29 + 32);
        *buf = 134218754;
        v34 = v28;
        v35 = 2112;
        *v36 = v29;
        *&v36[8] = 2048;
        *&v36[10] = v30;
        *&v36[18] = 2112;
        *&v36[20] = v5;
        _os_log_error_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_ERROR, "%13.5f: %@ failed to start presence operation %p: %@", buf, 0x2Au);
      }
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v31 = *MEMORY[0x1E696A578];
    v32 = @" Unable to start presence detect operation";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v14 = [v12 errorWithDomain:v13 code:3 userInfo:v6];

    v5 = v14;
LABEL_25:

    goto LABEL_26;
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

      v19 = *(a1 + 32);
      v20 = *(v19 + 32);
      *buf = 134218498;
      v34 = v8;
      v35 = 2112;
      *v36 = v19;
      *&v36[8] = 2048;
      *&v36[10] = v20;
      v21 = "%13.5f: %@ presence operation %p successfully started";
      v22 = v6;
      v23 = 32;
LABEL_24:
      _os_log_impl(&dword_1BB2EF000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }

    goto LABEL_25;
  }

  if (currentLogLevel >= 6)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
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

          v24 = *(a1 + 32);
          v25 = *(v24 + 32);
          *buf = 136316162;
          v34 = *&v15;
          v35 = 1024;
          *v36 = 206;
          *&v36[4] = 2048;
          *&v36[6] = v18;
          *&v36[14] = 2112;
          *&v36[16] = v24;
          *&v36[24] = 2048;
          *&v36[26] = v25;
          v21 = "%30s:%-4d: %13.5f: %@ presence operation %p successfully started";
          v22 = v6;
          v23 = 48;
          goto LABEL_24;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  (*(*(a1 + 40) + 16))();

  v26 = *MEMORY[0x1E69E9840];
}

- (BiokitOperation)initWithQueue:(id)queue forUnitTest:(BOOL)test
{
  testCopy = test;
  v33 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = BiokitOperation;
  v8 = [(BiokitOperation *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    if (testCopy)
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

    [(BKDevicePearl *)v9->_pearlDevice setQueue:v9->_queue];
    [(BKDevicePearl *)v9->_pearlDevice setDelegate:v9];
    v9->_timeout = 0.0;
  }

  if (testCopy)
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

        v19 = v9->_pearlDevice;
        *buf = 134218242;
        v28 = v14;
        v29 = 2112;
        *v30 = v19;
        v20 = "%13.5f: Unit test device %@ created";
        v21 = v12;
        v22 = 22;
LABEL_25:
        _os_log_impl(&dword_1BB2EF000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }

LABEL_26:

      goto LABEL_27;
    }

    if (currentLogLevel >= 6)
    {
      v12 = _AALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlBioKitInterface.m"; ; ++i)
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

            v23 = v9->_pearlDevice;
            *buf = 136315906;
            v28 = *&v15;
            v29 = 1024;
            *v30 = 158;
            *&v30[4] = 2048;
            *&v30[6] = v18;
            v31 = 2112;
            v32 = v23;
            v20 = "%30s:%-4d: %13.5f: Unit test device %@ created";
            v21 = v12;
            v22 = 38;
            goto LABEL_25;
          }
        }
      }

      goto LABEL_26;
    }
  }

LABEL_27:

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

@end