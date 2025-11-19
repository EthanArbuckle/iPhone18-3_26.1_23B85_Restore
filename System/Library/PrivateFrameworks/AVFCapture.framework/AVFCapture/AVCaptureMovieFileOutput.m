@interface AVCaptureMovieFileOutput
+ (BOOL)consolidateMovieFragmentsInFile:(id)a3 error:(id *)a4;
+ (BOOL)updateMovieMetadataInFile:(id)a3 withMetadata:(id)a4 error:(id *)a5;
+ (void)initialize;
- (AVCaptureMovieFileOutput)init;
- (BOOL)_isProResRawRecordingAndAWBIsNotLockedForWrapper:(id)a3;
- (BOOL)_totalNANDBandwidthAllowed:(id)a3 videoCodecType:(id)a4;
- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4;
- (BOOL)isDepthCaptureEnabled;
- (BOOL)isMultiCamClientCompositingSupported;
- (BOOL)isRecording;
- (BOOL)isRecordingPaused;
- (BOOL)isSpatialVideoCaptureEnabled;
- (BOOL)isSpatialVideoCaptureSupported;
- (BOOL)isTrueVideoCaptureEnabled;
- (BOOL)isVirtualCaptureCardSupported;
- (BOOL)recordingInProgress;
- (BOOL)recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection:(AVCaptureConnection *)connection;
- (BOOL)usesVirtualCaptureCard;
- (CGSize)outputSizeForSourceFormat:(id)a3;
- (NSArray)availableVideoCodecTypes;
- (NSArray)metadata;
- (NSArray)supportedOutputSettingsKeysForConnection:(AVCaptureConnection *)connection;
- (NSDictionary)outputSettingsForConnection:(AVCaptureConnection *)connection;
- (id)_avErrorUserInfoDictionaryForError:(int)a3 wrapper:(id)a4 payload:(id)a5;
- (id)_delegateWrapperForSettingsID:(int64_t)a3;
- (id)addConnection:(id)a3 error:(id *)a4;
- (id)bravoCameraSelectionBehaviorForRecording;
- (id)connectionMediaTypes;
- (id)outputFileURL;
- (int)_invokeClientCompositingCallbackForSettingsID:(int64_t)a3 compositingData:(id)a4;
- (int)_stopRecording;
- (void)_cleanupDelegateWrappers:(id)a3;
- (void)_cleanupDelegateWrappersPendingDidStopRecordingUnregistration;
- (void)_propagateBravoSwitchingBehaviorWhenRecording;
- (void)_removeRecordingDelegateWrapper:(id)a3;
- (void)_startRecording:(id)a3;
- (void)_updateAvailableVideoCodecTypesForSourceDevice:(id)a3;
- (void)_updateBravoCameraSelectionBehaviorForSourceDevice:(id)a3;
- (void)_updateDepthDataDeliverySupportedForSourceDevice:(id)a3;
- (void)_updateSpatialVideoCaptureSupportedForSourceDevice:(id)a3;
- (void)_updateSupportedPropertiesForSourceDevice:(id)a3;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)handleChangedActiveFormat:(id)a3 forDevice:(id)a4;
- (void)handleDidDropFrameWhileRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4;
- (void)handleDidPauseRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4;
- (void)handleDidResumeRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4;
- (void)handleDidStartRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4;
- (void)handleDidStopRecordingNotificationForMomentCaptureWrapper:(id)a3 withPayload:(id)a4 demoof:(BOOL)a5 addMetadata:(BOOL)a6;
- (void)handleDidStopRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4 demoof:(BOOL)a5 addMetadata:(BOOL)a6;
- (void)handleNotification:(id)a3 payload:(id)a4;
- (void)handleVideoStabilizationModeChangedForConnection:(id)a3;
- (void)pauseRecording;
- (void)removeConnection:(id)a3;
- (void)resumeRecording;
- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)setBravoCameraSelectionBehaviorForRecording:(id)a3;
- (void)setConnectionsActive:(BOOL)a3;
- (void)setDepthCaptureEnabled:(BOOL)a3;
- (void)setMetadata:(NSArray *)metadata;
- (void)setMovieFragmentInterval:(CMTime *)movieFragmentInterval;
- (void)setMultiCamClientCompositingEnabled:(BOOL)a3;
- (void)setMultiCamClientCompositingPrimaryConnection:(id)a3 secondaryConnection:(id)a4;
- (void)setOutputSettings:(NSDictionary *)outputSettings forConnection:(AVCaptureConnection *)connection;
- (void)setPrimaryConstituentDeviceSwitchingBehaviorForRecording:(AVCapturePrimaryConstituentDeviceSwitchingBehavior)switchingBehavior restrictedSwitchingBehaviorConditions:(AVCapturePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions)restrictedSwitchingBehaviorConditions;
- (void)setPrimaryConstituentDeviceSwitchingBehaviorForRecordingEnabled:(BOOL)primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled;
- (void)setRecordsVideoOrientationAndMirroringChanges:(BOOL)doRecordChanges asMetadataTrackForConnection:(AVCaptureConnection *)connection;
- (void)setSpatialVideoCaptureEnabled:(BOOL)a3;
- (void)setTrueVideoCaptureEnabled:(BOOL)a3;
- (void)setUsesVirtualCaptureCard:(BOOL)a3;
- (void)startRecordingMovieWithSettings:(id)a3 delegate:(id)a4;
- (void)startRecordingToOutputFileURL:(id)a3 recordingDelegate:(id)a4;
- (void)stopRecording;
@end

@implementation AVCaptureMovieFileOutput

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (AVCaptureMovieFileOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureMovieFileOutput;
  v2 = [(AVCaptureFileOutput *)&v5 initSubclass];
  if (v2)
  {
    v3 = objc_alloc_init(AVCaptureMovieFileOutputInternal);
    v2->_internal = v3;
    if (v3)
    {
      v2->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v2];
      v2->_internal->greenTeaLogger = ct_green_tea_logger_create();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = self->_internal->recordingDelegatesArray;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v11 = *MEMORY[0x1E698FAC8];
    v6 = *MEMORY[0x1E698FD48];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 pendingDidStopRecordingUnregistrationCaptureSession])
        {
          v9 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
          [v9 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:v11 object:{objc_msgSend(v8, "pendingDidStopRecordingUnregistrationCaptureSession")}];
          [v9 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:v6 object:{objc_msgSend(v8, "pendingDidStopRecordingUnregistrationCaptureSession")}];
          [v8 setPendingDidStopRecordingUnregistrationCaptureSession:0];
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v4);
  }

  v12.receiver = self;
  v12.super_class = AVCaptureMovieFileOutput;
  [(AVCaptureFileOutput *)&v12 dealloc];
}

- (id)connectionMediaTypes
{
  v2 = [MEMORY[0x1E695DF70] arrayWithObjects:{*MEMORY[0x1E6987608], *MEMORY[0x1E69875A0], 0}];
  if (AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined())
  {
    [v2 addObject:*MEMORY[0x1E69875D0]];
  }

  [v2 addObject:*MEMORY[0x1E69875C0]];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4
{
  v5 = a3;
  v7 = [a3 mediaType];
  if (([-[AVCaptureMovieFileOutput connectionMediaTypes](self "connectionMediaTypes")] & 1) == 0)
  {
    goto LABEL_46;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6987608]])
  {
    v54 = 0u;
    v55 = 0u;
    v8 = [(AVCaptureMovieFileOutput *)self isMultiCamClientCompositingEnabled]? 2 : 1;
    v56 = 0uLL;
    v57 = 0uLL;
    v9 = [(AVCaptureOutput *)self connections];
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v54 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = v5;
      v13 = a4;
      v14 = 0;
      v15 = *v55;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v55 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v14 += [objc_msgSend(*(*(&v54 + 1) + 8 * i) "mediaType")];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v54 objects:v53 count:16];
      }

      while (v11);
      v17 = v14 == v8;
      a4 = v13;
      v5 = v12;
      if (v17)
      {
        goto LABEL_16;
      }
    }
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69875A0]])
  {
    if ([(AVCaptureOutput *)self connectionWithMediaType:v7])
    {
LABEL_16:
      v18 = 2;
      goto LABEL_47;
    }

    return 1;
  }

  v19 = *MEMORY[0x1E69875D0];
  if (![v7 isEqualToString:*MEMORY[0x1E69875D0]])
  {
    if (![v7 isEqualToString:*MEMORY[0x1E69875C0]])
    {
      return 1;
    }

    if ([(AVCaptureMovieFileOutput *)self isDepthCaptureEnabled])
    {
      if ([(AVCaptureOutput *)self connectionWithMediaType:v7])
      {
        goto LABEL_16;
      }

      if ([objc_msgSend(objc_msgSend(v5 "sourceDevice")])
      {
        return 1;
      }

      v18 = 5;
LABEL_47:
      v34 = AVCaptureOutputConnectionFailureReasonString(v18, self, v5);
LABEL_48:
      v33 = 0;
      *a4 = v34;
      return v33;
    }

LABEL_46:
    v18 = 1;
    goto LABEL_47;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [v5 inputPorts];
  v39 = [obj countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (!v39)
  {
    return 1;
  }

  v36 = v5;
  v37 = a4;
  v20 = 0;
  v40 = *v50;
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v50 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v49 + 1) + 8 * v21);
      v23 = [v22 input];
      if (v20)
      {
        if (v23 != v20)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v20 = v23;
      }

      v41 = v21;
      v42 = v20;
      [v22 input];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v24 = [(AVCaptureOutput *)self connections];
        v25 = [(NSArray *)v24 countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v45;
LABEL_30:
          v28 = 0;
          while (1)
          {
            if (*v45 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v44 + 1) + 8 * v28);
            if ([objc_msgSend(v29 "mediaType")])
            {
              v30 = [objc_msgSend(v29 "inputPorts")];
              [v30 input];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = [v30 input];
                if (v31 != [v22 input])
                {
                  break;
                }
              }
            }

            if (v26 == ++v28)
            {
              v26 = [(NSArray *)v24 countByEnumeratingWithState:&v44 objects:v43 count:16];
              if (v26)
              {
                goto LABEL_30;
              }

              goto LABEL_38;
            }
          }

LABEL_50:
          v34 = AVCaptureOutputConnectionFailureReasonString(4, self, v36);
          a4 = v37;
          goto LABEL_48;
        }
      }

LABEL_38:
      v20 = v42;
      v21 = v41 + 1;
    }

    while (v41 + 1 != v39);
    v32 = [obj countByEnumeratingWithState:&v49 objects:v48 count:16];
    v33 = 1;
    v39 = v32;
    if (v32)
    {
      continue;
    }

    return v33;
  }
}

- (id)addConnection:(id)a3 error:(id *)a4
{
  v7 = [a3 mediaType];
  v8 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:v7];
  v12.receiver = self;
  v12.super_class = AVCaptureMovieFileOutput;
  v9 = [(AVCaptureOutput *)&v12 addConnection:a3 error:a4];
  if (v9)
  {
    if ([v7 isEqual:*MEMORY[0x1E6987608]])
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      -[AVCaptureMovieFileOutput _updateSupportedPropertiesForSourceDevice:](self, "_updateSupportedPropertiesForSourceDevice:", [v9 sourceDevice]);
    }
  }

  return v9;
}

- (void)removeConnection:(id)a3
{
  if ([(NSMutableArray *)self->_internal->connectionsThatRecordVideoOrientationAndMirroringChangesAsMetadataTrack containsObject:?])
  {
    [(NSMutableArray *)self->_internal->connectionsThatRecordVideoOrientationAndMirroringChangesAsMetadataTrack removeObject:a3];
  }

  v5 = [a3 mediaType];
  v6 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:v5];
  if (a3 && (multiCamClientCompositingPrimaryConnection = self->_internal->multiCamClientCompositingPrimaryConnection, multiCamClientCompositingPrimaryConnection == a3))
  {

    self->_internal->multiCamClientCompositingPrimaryConnection = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = self;
  v12.super_class = AVCaptureMovieFileOutput;
  [(AVCaptureOutput *)&v12 removeConnection:a3];
  v9 = [v5 isEqual:*MEMORY[0x1E6987608]];
  if (v6 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    -[AVCaptureMovieFileOutput _updateSupportedPropertiesForSourceDevice:](self, "_updateSupportedPropertiesForSourceDevice:", [-[AVCaptureOutput firstEnabledConnectionForMediaType:](self firstEnabledConnectionForMediaType:{v5), "sourceDevice"}]);
  }
}

- (BOOL)recordingInProgress
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = [(NSMutableArray *)v2->_internal->recordingDelegatesArray count]!= 0;
  objc_sync_exit(internal);
  return v2;
}

- (BOOL)isRecording
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->recording;
  objc_sync_exit(internal);
  return v2;
}

- (BOOL)isRecordingPaused
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->paused;
  objc_sync_exit(internal);
  return v2;
}

- (void)pauseRecording
{
  if ([-[AVCaptureOutput session](self "session")])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __42__AVCaptureMovieFileOutput_pauseRecording__block_invoke;
    v4[3] = &unk_1E786F360;
    v4[4] = self;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v4];
  }

  else
  {
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_3 != -1)
    {
      [AVCaptureMovieFileOutput pauseRecording];
    }

    v3 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_3;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A917C000, v3, OS_LOG_TYPE_DEFAULT, "Can't pause recording because the capture session is not running.", buf, 2u);
    }
  }
}

uint64_t __42__AVCaptureMovieFileOutput_pauseRecording__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(result + 32) sinkID];
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v4)
    {

      return v4(a2, v3);
    }

    else
    {
      v5 = *MEMORY[0x1E698FC40];
      v6 = &unk_1F1CEA070;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (void)resumeRecording
{
  if (([-[AVCaptureOutput session](self "session")] & 1) == 0)
  {
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_3 != -1)
    {
      [AVCaptureMovieFileOutput pauseRecording];
    }

    v3 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_3;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A917C000, v3, OS_LOG_TYPE_DEFAULT, "Can't resume recording because the capture session is not running.", buf, 2u);
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AVCaptureMovieFileOutput_resumeRecording__block_invoke;
  v4[3] = &unk_1E786F360;
  v4[4] = self;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v4];
}

uint64_t __43__AVCaptureMovieFileOutput_resumeRecording__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(result + 32) sinkID];
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v4)
    {

      return v4(a2, v3);
    }

    else
    {
      v5 = *MEMORY[0x1E698FC40];
      v6 = &unk_1F1CEA070;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (id)outputFileURL
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [-[NSMutableArray lastObject](self->_internal->recordingDelegatesArray "lastObject")];
  objc_sync_exit(internal);

  return v4;
}

- (void)startRecordingToOutputFileURL:(id)a3 recordingDelegate:(id)a4
{
  if (!a3)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
LABEL_17:
    v17 = AVMethodExceptionReasonWithObjectAndSelector();
    v18 = v13;
    v19 = v14;
    goto LABEL_18;
  }

  if ([a3 isFileURL])
  {
    if (a4)
    {
      v7 = [(AVCaptureOutput *)self liveConnections];
      if ([v7 count])
      {
        v22 = 0;
        v8 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
        if (!v8 || (v9 = v8, -[AVCaptureMovieFileOutput outputSizeForSourceFormat:](self, "outputSizeForSourceFormat:", [-[AVCaptureConnection sourceDevice](v8 "sourceDevice")]), (AVCaptureMovieFileURLIsValidForConnection(v9, v10, v11, a3, &v22) & 1) != 0))
        {
          if (([a3 isEqual:{-[AVCaptureMovieFileOutput outputFileURL](self, "outputFileURL")}] & 1) == 0)
          {
            v12 = +[AVCaptureFileOutputDelegateWrapper wrapperWithURL:delegate:settingsID:connections:](AVCaptureFileOutputDelegateWrapper, "wrapperWithURL:delegate:settingsID:connections:", a3, a4, +[AVCaptureMovieFileOutput uniqueID], v7);
            if (!-[AVCaptureMovieFileOutput _totalNANDBandwidthAllowed:videoCodecType:](self, "_totalNANDBandwidthAllowed:videoCodecType:", a3, self->_internal->videoCodec) || AVGestaltGetBoolAnswer(@"AVGQCaptureCheckIfFileAlreadyExistForMFO") && ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) != 0)
            {
              [AVCaptureMovieFileOutput startRecordingToOutputFileURL:recordingDelegate:];
            }

            else
            {
              [(AVCaptureFileOutputDelegateWrapper *)v12 setMetadata:[(AVCaptureMovieFileOutput *)self metadata]];
              [(AVCaptureFileOutputDelegateWrapper *)v12 setTrueVideoCaptureEnabled:[(AVCaptureMovieFileOutput *)self isTrueVideoCaptureEnabled]];
              [(AVCaptureMovieFileOutput *)self _startRecording:v12];
            }
          }

          return;
        }

        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D940];
      }

      else
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D940];
      }
    }

    else
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D940];
    }

    goto LABEL_17;
  }

  v15 = MEMORY[0x1E695DF30];
  v16 = *MEMORY[0x1E695D940];
  v21 = a3;
  v17 = AVMethodExceptionReasonWithObjectAndSelector();
  v18 = v15;
  v19 = v16;
LABEL_18:
  v20 = [v18 exceptionWithName:v19 reason:v17 userInfo:{0, v21}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v20);
  }

  NSLog(&cfstr_SuppressingExc.isa, v20);
}

- (void)stopRecording
{
  [(AVCaptureMovieFileOutput *)self _stopRecording];
  v3 = [(AVCaptureOutput *)self session];

  [v3 movieFileOutputStoppedRecording:self];
}

- (void)setMovieFragmentInterval:(CMTime *)movieFragmentInterval
{
  flags = movieFragmentInterval->flags;
  if ((flags & 0x1D) == 1)
  {
    time1 = *movieFragmentInterval;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2) > 0)
    {
LABEL_5:
      internal = self->_internal;
      epoch = movieFragmentInterval->epoch;
      *&internal->movieFragmentInterval.value = *&movieFragmentInterval->value;
      internal->movieFragmentInterval.epoch = epoch;
      return;
    }

    flags = movieFragmentInterval->flags;
  }

  if ((flags & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (NSArray)availableVideoCodecTypes
{
  v2 = self->_internal->availableVideoCodecs;

  return v2;
}

- (NSArray)supportedOutputSettingsKeysForConnection:(AVCaptureConnection *)connection
{
  if (![(AVCaptureConnection *)connection isEqual:[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]]])
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = [MEMORY[0x1E695DF70] arrayWithObjects:{*MEMORY[0x1E6987CB0], 0}];
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureMFOVideoSettingsSupportCompressionProperties"))
  {
    [v3 addObject:*MEMORY[0x1E6987D30]];
  }

  v4 = MEMORY[0x1E695DEC8];

  return [v4 arrayWithArray:v3];
}

- (id)bravoCameraSelectionBehaviorForRecording
{
  internal = self->_internal;
  primaryConstituentDeviceSwitchingBehavior = internal->primaryConstituentDeviceSwitchingBehavior;
  if (primaryConstituentDeviceSwitchingBehavior == 2)
  {
    v4 = AVCaptureBravoCameraSelectionBehaviorEvaluatesOnZoomChange;
  }

  else if (primaryConstituentDeviceSwitchingBehavior == 1)
  {
    v4 = AVCaptureBravoCameraSelectionBehaviorEvaluatesContinuously;
  }

  else if (internal->deviceSupportsConstituentDeviceSwitching)
  {
    v4 = AVCaptureBravoCameraSelectionBehaviorEvaluatesNever;
  }

  else
  {
    v4 = AVCaptureBravoCameraSelectionBehaviorUnsupported;
  }

  return *v4;
}

- (void)setBravoCameraSelectionBehaviorForRecording:(id)a3
{
  if ([a3 isEqualToString:@"AVCaptureBravoCameraSelectionBehaviorEvaluatesContinuously"])
  {
    v5 = self;
    v6 = 1;
  }

  else
  {
    if ([a3 isEqualToString:@"AVCaptureBravoCameraSelectionBehaviorEvaluatesOnZoomChange"])
    {
      v5 = self;
      v6 = 2;
      v7 = 7;
      goto LABEL_6;
    }

    if (![a3 isEqualToString:@"AVCaptureBravoCameraSelectionBehaviorEvaluatesNever"])
    {
      return;
    }

    v5 = self;
    v6 = 3;
  }

  v7 = 0;
LABEL_6:

  [(AVCaptureMovieFileOutput *)v5 setPrimaryConstituentDeviceSwitchingBehaviorForRecording:v6 restrictedSwitchingBehaviorConditions:v7];
}

- (void)setPrimaryConstituentDeviceSwitchingBehaviorForRecordingEnabled:(BOOL)primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled
{
  internal = self->_internal;
  if (!primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled || internal->deviceSupportsConstituentDeviceSwitching)
  {
    if (internal->primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled != primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled)
    {
      internal->primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled = primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled;

      [(AVCaptureMovieFileOutput *)self _propagateBravoSwitchingBehaviorWhenRecording];
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }
}

- (void)setPrimaryConstituentDeviceSwitchingBehaviorForRecording:(AVCapturePrimaryConstituentDeviceSwitchingBehavior)switchingBehavior restrictedSwitchingBehaviorConditions:(AVCapturePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions)restrictedSwitchingBehaviorConditions
{
  internal = self->_internal;
  if (switchingBehavior == AVCapturePrimaryConstituentDeviceSwitchingBehaviorUnsupported)
  {
    if (!internal->deviceSupportsConstituentDeviceSwitching)
    {
      goto LABEL_13;
    }

LABEL_7:
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    goto LABEL_8;
  }

  if (!internal->deviceSupportsConstituentDeviceSwitching)
  {
    goto LABEL_7;
  }

  if (switchingBehavior == AVCapturePrimaryConstituentDeviceSwitchingBehaviorRestricted)
  {
    if (restrictedSwitchingBehaviorConditions >= 8)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
LABEL_8:
      v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v10);
      }

      NSLog(&cfstr_SuppressingExc.isa, v10);
      return;
    }
  }

  else if (restrictedSwitchingBehaviorConditions)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    goto LABEL_8;
  }

LABEL_13:
  primaryConstituentDeviceSwitchingBehavior = internal->primaryConstituentDeviceSwitchingBehavior;
  primaryConstituentDeviceRestrictedSwitchingBehaviorConditions = internal->primaryConstituentDeviceRestrictedSwitchingBehaviorConditions;
  if (primaryConstituentDeviceSwitchingBehavior != switchingBehavior || primaryConstituentDeviceRestrictedSwitchingBehaviorConditions != restrictedSwitchingBehaviorConditions)
  {
    if (primaryConstituentDeviceSwitchingBehavior != switchingBehavior)
    {
      [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"primaryConstituentDeviceSwitchingBehavior"];
    }

    if (primaryConstituentDeviceRestrictedSwitchingBehaviorConditions == restrictedSwitchingBehaviorConditions)
    {
      self->_internal->primaryConstituentDeviceSwitchingBehavior = switchingBehavior;
      self->_internal->primaryConstituentDeviceRestrictedSwitchingBehaviorConditions = restrictedSwitchingBehaviorConditions;
      [(AVCaptureMovieFileOutput *)self _propagateBravoSwitchingBehaviorWhenRecording];
    }

    else
    {
      [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"primaryConstituentDeviceRestrictedSwitchingBehaviorConditions"];
      self->_internal->primaryConstituentDeviceSwitchingBehavior = switchingBehavior;
      self->_internal->primaryConstituentDeviceRestrictedSwitchingBehaviorConditions = restrictedSwitchingBehaviorConditions;
      [(AVCaptureMovieFileOutput *)self _propagateBravoSwitchingBehaviorWhenRecording];
      [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"primaryConstituentDeviceRestrictedSwitchingBehaviorConditions"];
    }

    if (primaryConstituentDeviceSwitchingBehavior != switchingBehavior)
    {

      [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"primaryConstituentDeviceSwitchingBehavior"];
    }
  }
}

- (void)_propagateBravoSwitchingBehaviorWhenRecording
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = self->_internal;
  if (v4->recording)
  {
    v7 = 0;
    LOBYTE(v7) = v4->primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled;
    v8 = *&v4->primaryConstituentDeviceSwitchingBehavior;
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:20];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__AVCaptureMovieFileOutput__propagateBravoSwitchingBehaviorWhenRecording__block_invoke;
    v6[3] = &unk_1E786EFA8;
    v6[4] = self;
    v6[5] = v5;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v6];
  }

  objc_sync_exit(internal);
}

uint64_t __73__AVCaptureMovieFileOutput__propagateBravoSwitchingBehaviorWhenRecording__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = *(v3 + 40);
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *MEMORY[0x1E698FBC8];

      return v8(a2, v4, v9, v5);
    }
  }

  return result;
}

- (void)setOutputSettings:(NSDictionary *)outputSettings forConnection:(AVCaptureConnection *)connection
{
  v7 = *MEMORY[0x1E6987608];
  if (![(AVCaptureConnection *)connection isEqual:[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]]])
  {
    return;
  }

  if (outputSettings && ![(NSDictionary *)outputSettings count])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:{-[AVCaptureMovieFileOutput supportedOutputSettingsKeysForConnection:](self, "supportedOutputSettingsKeysForConnection:", connection)}];
    if (outputSettings)
    {
      v9 = [(NSDictionary *)outputSettings allKeys];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    v10 = [MEMORY[0x1E695DFA8] setWithArray:v9];
    [v10 minusSet:v8];
    if ([v10 count])
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
    }

    else
    {
      v13 = [(NSDictionary *)outputSettings objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
      if (!v13 || [(NSArray *)[(AVCaptureMovieFileOutput *)self availableVideoCodecTypes] containsObject:v13])
      {
        if (outputSettings)
        {
          v17 = 0;
          v14 = [MEMORY[0x1E6988190] _videoOutputSettingsWithVideoSettingsDictionary:outputSettings exceptionReason:&v17];
          if (!v14)
          {
            v11 = MEMORY[0x1E695DF30];
            v12 = *MEMORY[0x1E695D940];
            goto LABEL_19;
          }

          outputSettings = v14;
          if (([-[NSDictionary compatibleMediaTypes](v14 "compatibleMediaTypes")] & 1) == 0)
          {
            v11 = MEMORY[0x1E695DF30];
            v12 = *MEMORY[0x1E695D940];
            goto LABEL_19;
          }
        }

        self->_internal->videoCodec = v13;
        v15 = [(NSDictionary *)outputSettings outputSettingsDictionary];
        self->_internal->videoCompressionProperties = [objc_msgSend(v15 objectForKeyedSubscript:{*MEMORY[0x1E6987D30]), "copy"}];
        return;
      }

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
    }
  }

LABEL_19:
  v16 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v16);
  }

  NSLog(&cfstr_SuppressingExc.isa, v16);
}

- (NSDictionary)outputSettingsForConnection:(AVCaptureConnection *)connection
{
  if (![(NSArray *)[(AVCaptureOutput *)self connections] containsObject:connection])
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v16);
    }

    NSLog(&cfstr_SuppressingExc.isa, v16);
    return MEMORY[0x1E695E0F8];
  }

  v5 = [(AVCaptureConnection *)connection mediaType];
  if ([v5 isEqualToString:*MEMORY[0x1E6987608]])
  {
    videoCodec = self->_internal->videoCodec;
    if (!videoCodec)
    {
      videoCodec = [(NSArray *)[(AVCaptureMovieFileOutput *)self availableVideoCodecTypes] firstObject];
    }

    if ([objc_msgSend(-[AVCaptureOutput session](self "session")] && (v7 = objc_msgSend(-[AVCaptureConnection sourceDevice](connection, "sourceDevice"), "activeFormat")) != 0)
    {
      v8 = v7;
      MediaSubType = CMFormatDescriptionGetMediaSubType([v7 formatDescription]);
      v10 = [v8 previewDimensions];
      if ([-[AVCaptureConnection sourceDevice](connection "sourceDevice")])
      {
        v11 = [-[AVCaptureConnection sourceDevice](connection "sourceDevice")];
        [objc_msgSend(v8 "figCaptureSourceVideoFormat")];
        v10 = AVCaptureConvertDimensionsForAspectRatio(v10, v11, v12);
      }

      v13 = *MEMORY[0x1E6987DD0];
      v25[0] = *MEMORY[0x1E6966130];
      v26[0] = [MEMORY[0x1E696AD98] numberWithInt:MediaSubType];
      v25[1] = *MEMORY[0x1E6966208];
      v26[1] = [MEMORY[0x1E696AD98] numberWithInt:v10];
      v25[2] = *MEMORY[0x1E69660B8];
      v14 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v10)];
      v25[3] = *MEMORY[0x1E6987DC8];
      v26[2] = v14;
      v26[3] = v13;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
    }

    else
    {
      v15 = 0;
    }

    LODWORD(v22) = -65536;
    v17 = [(AVCaptureOutput *)self recommendedOutputSettingsForConnection:connection sourceSettings:v15 videoCodecType:videoCodec fileType:*MEMORY[0x1E69874C0] isIris:0 outputFileURL:0 spatialAudioChannelLayoutTag:v22];
    if (videoCodec)
    {
      videoCompressionProperties = self->_internal->videoCompressionProperties;
      if (videoCompressionProperties)
      {
        v23 = *MEMORY[0x1E6987D30];
        v24 = videoCompressionProperties;
        v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v24, &v23, 1)}];
        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v17, 1uLL);
        [DeepCopy mfo_addEntriesFromDictionaryWithRecursion:v20];
        return DeepCopy;
      }
    }

    return v17;
  }

  LODWORD(v22) = -65536;
  return [(AVCaptureOutput *)self recommendedOutputSettingsForConnection:connection sourceSettings:0 videoCodecType:0 fileType:*MEMORY[0x1E69874C0] isIris:0 outputFileURL:0 spatialAudioChannelLayoutTag:v22];
}

- (NSArray)metadata
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = self->_internal->metadata;
  objc_sync_exit(internal);
  return v4;
}

- (void)setMetadata:(NSArray *)metadata
{
  internal = self->_internal;
  objc_sync_enter(internal);

  self->_internal->metadata = [(NSArray *)metadata copy];
  v6 = self->_internal;
  if (v6->recording)
  {
    v7 = [MEMORY[0x1E6987FE0] figMetadataPropertyFromMetadataItems:v6->metadata];
    if (!v7)
    {
      v9 = *MEMORY[0x1E6987700];
      v10 = *MEMORY[0x1E6971F90];
      v22[0] = *MEMORY[0x1E6971F88];
      v8 = v22[0];
      v22[1] = v10;
      v11 = MEMORY[0x1E695E0F0];
      v23[0] = v9;
      v23[1] = MEMORY[0x1E695E0F0];
      v24[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v12 = *MEMORY[0x1E6987708];
      v20[0] = v8;
      v20[1] = v10;
      v21[0] = v12;
      v21[1] = v11;
      v24[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v13 = *MEMORY[0x1E69876F8];
      v18[0] = v8;
      v18[1] = v10;
      v19[0] = v13;
      v19[1] = v11;
      v24[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v14 = *MEMORY[0x1E6987710];
      v16[0] = v8;
      v16[1] = v10;
      v17[0] = v14;
      v17[1] = v11;
      v24[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__AVCaptureMovieFileOutput_setMetadata___block_invoke;
    v15[3] = &unk_1E786EFA8;
    v15[4] = self;
    v15[5] = v7;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v15];
  }

  objc_sync_exit(internal);
}

uint64_t __40__AVCaptureMovieFileOutput_setMetadata___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = *(v3 + 40);
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *MEMORY[0x1E698FBD0];

      return v8(a2, v4, v9, v5);
    }
  }

  return result;
}

+ (BOOL)updateMovieMetadataInFile:(id)a3 withMetadata:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  [MEMORY[0x1E6987FE0] figMetadataPropertyFromMetadataItems:a4];
  v6 = FigMetadataRewriterDictionaryCreateFromFigMetadataPropertyArray();
  v7 = FigRewriteMetadata();
  if (v6)
  {
    CFRelease(v6);
  }

  if (a5 && v7)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
  }

  return v7 == 0;
}

+ (BOOL)consolidateMovieFragmentsInFile:(id)a3 error:(id *)a4
{
  if (!a4)
  {
    return FigConsolidateMovieFragments() == 0;
  }

  *a4 = 0;
  v5 = FigConsolidateMovieFragments();
  if (!v5)
  {
    return 1;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v5 userInfo:0];
  result = 0;
  *a4 = v6;
  return result;
}

- (BOOL)recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection:(AVCaptureConnection *)connection
{
  if (connection)
  {
    return [(NSMutableArray *)self->_internal->connectionsThatRecordVideoOrientationAndMirroringChangesAsMetadataTrack containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)setRecordsVideoOrientationAndMirroringChanges:(BOOL)doRecordChanges asMetadataTrackForConnection:(AVCaptureConnection *)connection
{
  if (connection)
  {
    v6 = doRecordChanges;
    if ([(NSArray *)[(AVCaptureOutput *)self connections] containsObject:connection])
    {
      v7 = [(AVCaptureConnection *)connection mediaType];
      if ([v7 isEqualToString:*MEMORY[0x1E6987608]])
      {
        if ([(AVCaptureConnection *)connection isVideoOrientationSupported])
        {
          if ([(AVCaptureConnection *)connection isVideoMirroringSupported])
          {
            if ([(NSMutableArray *)self->_internal->connectionsThatRecordVideoOrientationAndMirroringChangesAsMetadataTrack containsObject:connection])
            {
              if (!v6)
              {
                connectionsThatRecordVideoOrientationAndMirroringChangesAsMetadataTrack = self->_internal->connectionsThatRecordVideoOrientationAndMirroringChangesAsMetadataTrack;

                [(NSMutableArray *)connectionsThatRecordVideoOrientationAndMirroringChangesAsMetadataTrack removeObject:connection];
              }
            }

            else if (v6)
            {
              v17 = self->_internal->connectionsThatRecordVideoOrientationAndMirroringChangesAsMetadataTrack;

              [(NSMutableArray *)v17 addObject:connection];
            }

            return;
          }

          v14 = MEMORY[0x1E695DF30];
          v15 = *MEMORY[0x1E695D940];
          v18 = connection;
        }

        else
        {
          v14 = MEMORY[0x1E695DF30];
          v15 = *MEMORY[0x1E695D940];
          v18 = connection;
        }
      }

      else
      {
        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
        v18 = connection;
      }
    }

    else
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v18 = connection;
    }

    v11 = AVMethodExceptionReasonWithObjectAndSelector();
    v12 = v14;
    v13 = v15;
  }

  else
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = AVMethodExceptionReasonWithObjectAndSelector();
    v12 = v9;
    v13 = v10;
  }

  v16 = [v12 exceptionWithName:v13 reason:v11 userInfo:{0, v18}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v16);
  }

  NSLog(&cfstr_SuppressingExc.isa, v16);
}

- (void)startRecordingMovieWithSettings:(id)a3 delegate:(id)a4
{
  v11 = 0;
  if (!a3 || !self || !-[NSArray containsObject:](-[AVCaptureMovieFileOutput availableVideoCodecTypes](self, "availableVideoCodecTypes"), "containsObject:", [a3 videoCodecType]) || !objc_msgSend(a3, "movieFileURL") || !objc_msgSend(objc_msgSend(a3, "movieFileURL"), "isFileURL") || !a4 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([a3 isAutoSpatialOverCaptureEnabled])
  {
    if (!v7 || ![-[AVCaptureConnection sourceDevice](v7 "sourceDevice")] || !objc_msgSend(a3, "spatialOverCaptureMovieFileURL") || (objc_msgSend(objc_msgSend(a3, "spatialOverCaptureMovieFileURL"), "isFileURL") & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_15:
    -[AVCaptureMovieFileOutput outputSizeForSourceFormat:](self, "outputSizeForSourceFormat:", [-[AVCaptureConnection sourceDevice](v7 "sourceDevice")]);
    if (!AVCaptureMovieFileURLIsValidForConnection(v7, v8, v9, [a3 movieFileURL], &v11))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v7)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (![-[AVCaptureOutput liveConnections](self "liveConnections")])
  {
LABEL_30:
    [AVCaptureMovieFileOutput startRecordingMovieWithSettings:delegate:];
    return;
  }

LABEL_17:
  if (v11)
  {
    goto LABEL_30;
  }

  v10 = [AVMomentCaptureMovieFileOutputDelegateWrapper wrapperWithSettings:a3 delegate:a4 connections:[(AVCaptureOutput *)self liveConnections]];
  if (!-[AVCaptureMovieFileOutput _totalNANDBandwidthAllowed:videoCodecType:](self, "_totalNANDBandwidthAllowed:videoCodecType:", [a3 movieFileURL], objc_msgSend(a3, "videoCodecType")) || AVGestaltGetBoolAnswer(@"AVGQCaptureCheckIfFileAlreadyExistForMFO") && (objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), "fileExistsAtPath:", objc_msgSend(objc_msgSend(a3, "movieFileURL"), "path")) & 1) != 0)
  {
    [AVCaptureMovieFileOutput startRecordingToOutputFileURL:recordingDelegate:];
  }

  else
  {
    [(AVCaptureMovieFileOutput *)self _startRecording:v10];
  }
}

- (id)_avErrorUserInfoDictionaryForError:(int)a3 wrapper:(id)a4 payload:(id)a5
{
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [a5 objectForKeyedSubscript:*MEMORY[0x1E698FCC8]];
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6987420]];
  }

  v11 = 1;
  if (a3 > -16412)
  {
    if (a3 == -16411)
    {
      v15 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E698FA98]), "BOOLValue"}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = a4;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = [a4 outputFileURL];
      }

      else
      {
        v18 = [v16 spatialOverCaptureMovieFileURL];
      }

      v12 = v18;
      v13 = MEMORY[0x1E696A998];
      goto LABEL_25;
    }

    if (a3 == -16405)
    {
      v11 = 2;
    }
  }

  else
  {
    if (a3 == -16413)
    {
      v14 = MEMORY[0x1E696B098];
      if (self)
      {
        [(AVCaptureFileOutput *)self maxRecordedDuration];
      }

      else
      {
        memset(v21, 0, sizeof(v21));
      }

      v12 = [v14 valueWithCMTime:v21];
      v13 = MEMORY[0x1E6987428];
      goto LABEL_25;
    }

    if (a3 == -16412)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[AVCaptureFileOutput maxRecordedFileSize](self, "maxRecordedFileSize", 1)}];
      v13 = MEMORY[0x1E69873E0];
LABEL_25:
      [v9 setObject:v12 forKeyedSubscript:*v13];
      v11 = 1;
    }
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  [v9 setObject:v19 forKeyedSubscript:*MEMORY[0x1E6987418]];
  return v9;
}

- (CGSize)outputSizeForSourceFormat:(id)a3
{
  if ([objc_msgSend(-[AVCaptureOutput session](self "session")])
  {
    v5 = [a3 previewDimensions];
    v6 = v5;
    v7 = SHIDWORD(v5);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVCaptureMovieFileOutput;
    [(AVCaptureOutput *)&v8 outputSizeForSourceFormat:a3];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAC0] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAC8] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FD48] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAB0] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAB8] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAA8] object:a3 flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureMovieFileOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:a3];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableArray *)self->_internal->recordingDelegatesArray reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isTrueVideoCaptureEnabled])
        {
          [v10 setPendingDidStopRecordingUnregistrationCaptureSession:a3];
          v11 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  objc_sync_exit(internal);
  v12 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v12 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAC0] object:a3];
  if ((v11 & 1) == 0)
  {
    [v12 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAC8] object:a3];
    [v12 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FD48] object:a3];
  }

  [v12 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAB0] object:a3];
  [v12 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAB8] object:a3];
  [v12 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAA8] object:a3];
  v13.receiver = self;
  v13.super_class = AVCaptureMovieFileOutput;
  [(AVCaptureOutput *)&v13 detachSafelyFromFigCaptureSession:a3];
}

- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = [(NSMutableArray *)self->_internal->recordingDelegatesArray copy];
  objc_sync_exit(internal);

  [(AVCaptureMovieFileOutput *)self _cleanupDelegateWrappers:v5];
}

- (void)_cleanupDelegateWrappersPendingDidStopRecordingUnregistration
{
  v3 = [MEMORY[0x1E695DF70] array];
  internal = self->_internal;
  objc_sync_enter(internal);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  recordingDelegatesArray = self->_internal->recordingDelegatesArray;
  v6 = [(NSMutableArray *)recordingDelegatesArray countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(recordingDelegatesArray);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 pendingDidStopRecordingUnregistrationCaptureSession])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)recordingDelegatesArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  objc_sync_exit(internal);
  [(AVCaptureMovieFileOutput *)self _cleanupDelegateWrappers:v3];
}

- (void)_cleanupDelegateWrappers:(id)a3
{
  if ([a3 count])
  {
    v5 = dispatch_queue_create("com.apple.avfoundation.capture.moviefileoutput.cleanupQueue", 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__AVCaptureMovieFileOutput__cleanupDelegateWrappers___block_invoke;
    v6[3] = &unk_1E786EAA8;
    v6[4] = a3;
    v6[5] = self;
    dispatch_async(v5, v6);
  }
}

uint64_t __53__AVCaptureMovieFileOutput__cleanupDelegateWrappers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E698FC40];
  v14 = &unk_1F1CEA040;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
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

        [*(a1 + 40) handleDidStopRecordingNotificationForWrapper:*(*(&v9 + 1) + 8 * v7++) withPayload:v2 demoof:1 addMetadata:1];
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)_removeRecordingDelegateWrapper:(id)a3
{
  [(NSMutableArray *)self->_internal->recordingDelegatesArray removeObject:?];
  if ([a3 pendingDidStopRecordingUnregistrationCaptureSession])
  {
    v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FAC8] object:{objc_msgSend(a3, "pendingDidStopRecordingUnregistrationCaptureSession")}];
    [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:mfoNotificationHandler name:*MEMORY[0x1E698FD48] object:{objc_msgSend(a3, "pendingDidStopRecordingUnregistrationCaptureSession")}];
    [a3 setPendingDidStopRecordingUnregistrationCaptureSession:0];
  }

  v6 = [(NSMutableArray *)self->_internal->recordingDelegatesArray firstObject];
  v7 = [v6 isRecording];
  v8 = [v6 isPaused];
  internal = self->_internal;
  if (internal->recording != v7)
  {
    [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"recording"];
    internal = self->_internal;
  }

  if (internal->paused != v8)
  {
    [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"paused"];
    self->_internal->paused = v8;
    [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"paused"];
    internal = self->_internal;
  }

  if (internal->recording != v7)
  {
    internal->recording = v7;

    [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"recording"];
  }
}

- (void)handleDidStartRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!a3 || (isKindOfClass & 1) == 0)
  {
    [a3 isRecording];
    if ([a3 isRecording])
    {
      return;
    }

    v8 = [a3 delegateStorage];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __86__AVCaptureMovieFileOutput_handleDidStartRecordingNotificationForWrapper_withPayload___block_invoke_2;
    v13 = &unk_1E786FBA0;
    v14 = a3;
    v15 = self;
    v16 = a4;
    v9 = &v10;
    goto LABEL_9;
  }

  if ([a3 isRecording])
  {
    [a3 spatialOverCaptureMovieFileURL];
  }

  if (([a3 isRecording] & 1) == 0)
  {
    v8 = [a3 delegateStorage];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __86__AVCaptureMovieFileOutput_handleDidStartRecordingNotificationForWrapper_withPayload___block_invoke;
    v20 = &unk_1E786FBA0;
    v21 = a3;
    v22 = a4;
    v23 = self;
    v9 = &v17;
LABEL_9:
    [v8 invokeDelegateCallbackWithBlock:{v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  }
}

uint64_t __86__AVCaptureMovieFileOutput_handleDidStartRecordingNotificationForWrapper_withPayload___block_invoke(id *a1, void *a2)
{
  [a1[4] setRecording:1];
  v4 = [objc_msgSend(a1[5] objectForKeyedSubscript:{*MEMORY[0x1E698FA80]), "intValue"}];
  v5 = [objc_msgSend(a1[5] objectForKeyedSubscript:{*MEMORY[0x1E698FA78]), "intValue"}];
  v6 = [objc_msgSend(a1[5] objectForKeyedSubscript:{*MEMORY[0x1E698FA90]), "BOOLValue"}];
  if ([objc_msgSend(a1[5] objectForKeyedSubscript:{*MEMORY[0x1E698FFC0]), "BOOLValue"}])
  {
    v7 = [a1[4] spatialOverCaptureMovieFileURL];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[AVMomentCaptureMovieRecordingResolvedSettings movieRecordingResolvedSettingsWithUniqueID:torchEnabled:movieURL:spatialOverCaptureURL:movieDimensions:](AVMomentCaptureMovieRecordingResolvedSettings, "movieRecordingResolvedSettingsWithUniqueID:torchEnabled:movieURL:spatialOverCaptureURL:movieDimensions:", [a1[4] settingsID], v6, objc_msgSend(a1[4], "outputFileURL"), v7, v4 | (v5 << 32));
  [a1[4] setResolvedSettings:v8];
  v9 = *(a1[6] + 4);
  objc_sync_enter(v9);
  v10 = [a1[4] isRecording];
  v11 = a1[6];
  if (*(v11[4] + 89) != v10)
  {
    [v11 willChangeValueForKey:@"recording"];
    *(*(a1[6] + 4) + 89) = [a1[4] isRecording];
    [a1[6] didChangeValueForKey:@"recording"];
  }

  if (objc_opt_respondsToSelector())
  {
    [a2 captureOutput:a1[6] didBeginMovieCaptureForResolvedSettings:v8];
  }

  return objc_sync_exit(v9);
}

uint64_t __86__AVCaptureMovieFileOutput_handleDidStartRecordingNotificationForWrapper_withPayload___block_invoke_2(id *a1, void *a2)
{
  [a1[4] setRecording:1];
  v4 = *(a1[5] + 4);
  objc_sync_enter(v4);
  v5 = [a1[4] isRecording];
  v6 = a1[5];
  if (*(v6[4] + 89) != v5)
  {
    [v6 willChangeValueForKey:@"recording"];
    *(*(a1[5] + 4) + 89) = [a1[4] isRecording];
    [a1[5] didChangeValueForKey:@"recording"];
  }

  objc_sync_exit(v4);
  if (objc_opt_respondsToSelector())
  {
    memset(&v15, 0, sizeof(v15));
    CMTimeMakeFromDictionary(&v15, [a1[6] objectForKeyedSubscript:*MEMORY[0x1E698FA88]]);
    v7 = a1[5];
    v8 = [a1[4] outputFileURL];
    v9 = [a1[4] connections];
    v14 = v15;
    return [a2 captureOutput:v7 didStartRecordingToOutputFileAtURL:v8 startPTS:&v14 fromConnections:v9];
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v11 = a1[5];
      v12 = [a1[4] outputFileURL];
      v13 = [a1[4] connections];

      return [a2 captureOutput:v11 didStartRecordingToOutputFileAtURL:v12 fromConnections:v13];
    }
  }

  return result;
}

- (void)handleDidStopRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4 demoof:(BOOL)a5 addMetadata:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (a3 && (isKindOfClass & 1) != 0)
  {

    [(AVCaptureMovieFileOutput *)self handleDidStopRecordingNotificationForMomentCaptureWrapper:a3 withPayload:a4 demoof:v7 addMetadata:v6];
  }

  else
  {
    v12 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FC40]), "intValue"}];
    v13 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FCB8]];
    v14 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FCB0]];
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v14, @"AVCaptureOutputNotificationInfoVideoPreviewFrameSurface", v13, @"AVCaptureOutputNotificationInfoVideoPreviewFrameSurfaceSize", 0}];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __104__AVCaptureMovieFileOutput_handleDidStopRecordingNotificationForWrapper_withPayload_demoof_addMetadata___block_invoke;
      v26[3] = &unk_1E786EAA8;
      v26[4] = self;
      v26[5] = v16;
      [(AVCaptureOutput *)self performBlockOnSessionNotifyingThread:v26];
    }

    v25 = 0;
    if (v7)
    {
      +[AVCaptureMovieFileOutput consolidateMovieFragmentsInFile:error:](AVCaptureMovieFileOutput, "consolidateMovieFragmentsInFile:error:", [a3 outputFileURL], &v25);
      a4 = [a4 mutableCopy];
      v17 = [MEMORY[0x1E696AD98] numberWithBool:v25 == 0];
      [a4 setObject:v17 forKeyedSubscript:*MEMORY[0x1E698FCC8]];
    }

    v18 = [(AVCaptureMovieFileOutput *)self metadata];
    if (v6 && !v25)
    {
      v19 = v18;
      if (([objc_msgSend(a3 "metadata")] & 1) == 0)
      {
        +[AVCaptureMovieFileOutput updateMovieMetadataInFile:withMetadata:error:](AVCaptureMovieFileOutput, "updateMovieMetadataInFile:withMetadata:error:", [a3 outputFileURL], v19, &v25);
      }
    }

    if (v12)
    {
      if (v12 == -15439)
      {
        v23 = *MEMORY[0x1E696A278];
        v24 = @"AWB needs to be locked for this configuration. Please set AVCaptureWhiteBalanceModeLocked on AVCaptureDevice.";
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v20 = AVLocalizedError();
      }

      else
      {
        [(AVCaptureMovieFileOutput *)self _avErrorUserInfoDictionaryForError:v12 wrapper:a3 payload:a4];
        v20 = AVLocalizedErrorWithUnderlyingOSStatus();
      }

      v25 = v20;
    }

    v21 = [a3 delegateStorage];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __104__AVCaptureMovieFileOutput_handleDidStopRecordingNotificationForWrapper_withPayload_demoof_addMetadata___block_invoke_2;
    v22[3] = &unk_1E786FBC8;
    v22[4] = self;
    v22[5] = a3;
    v22[6] = a4;
    v22[7] = v25;
    [v21 invokeDelegateCallbackWithBlock:v22];
  }
}

uint64_t __104__AVCaptureMovieFileOutput_handleDidStopRecordingNotificationForWrapper_withPayload_demoof_addMetadata___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 postNotificationName:@"AVCaptureMovieFileOutputRecordingCompletedNotification" object:v3 userInfo:v4];
}

uint64_t __104__AVCaptureMovieFileOutput_handleDidStopRecordingNotificationForWrapper_withPayload_demoof_addMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 32);
  objc_sync_enter(v4);
  [*(a1 + 32) _removeRecordingDelegateWrapper:*(a1 + 40)];
  objc_sync_exit(v4);
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E698FC00]];
    if (v5)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    }

    else
    {
      v6 = 0;
    }

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) outputFileURL];
    v14 = [*(a1 + 40) connections];
    v15 = *(a1 + 56);

    return [a2 captureOutput:v12 didFinishRecordingToOutputFileAtURL:v13 debugMetadataSidecarFileURL:v6 fromConnections:v14 error:v15];
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) outputFileURL];
      v10 = [*(a1 + 40) connections];
      v11 = *(a1 + 56);

      return [a2 captureOutput:v8 didFinishRecordingToOutputFileAtURL:v9 fromConnections:v10 error:v11];
    }
  }

  return result;
}

- (void)handleDidStopRecordingNotificationForMomentCaptureWrapper:(id)a3 withPayload:(id)a4 demoof:(BOOL)a5 addMetadata:(BOOL)a6
{
  v6 = a5;
  v7 = a4;
  v10 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FC40]), "intValue"}];
  v11 = [objc_msgSend(v7 objectForKeyedSubscript:{*MEMORY[0x1E698FA98]), "BOOLValue"}];
  v12 = v11;
  if (v11)
  {
    v13 = [a3 spatialOverCaptureMovieFileURL];
  }

  else
  {
    v13 = [a3 outputFileURL];
  }

  v14 = v13;
  v19 = 0;
  if (v6)
  {
    [AVCaptureMovieFileOutput consolidateMovieFragmentsInFile:v13 error:&v19];
    v7 = [v7 mutableCopy];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v19 == 0];
    [v7 setObject:v15 forKeyedSubscript:*MEMORY[0x1E698FCC8]];
  }

  if (v10)
  {
    [(AVCaptureMovieFileOutput *)self _avErrorUserInfoDictionaryForError:v10 wrapper:a3 payload:v7];
    v19 = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  v16 = [a3 delegateStorage];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __117__AVCaptureMovieFileOutput_handleDidStopRecordingNotificationForMomentCaptureWrapper_withPayload_demoof_addMetadata___block_invoke;
  v17[3] = &unk_1E786FBF0;
  v18 = v12;
  v17[4] = self;
  v17[5] = a3;
  v17[6] = v7;
  v17[7] = v14;
  v17[8] = v19;
  [v16 invokeDelegateCallbackWithBlock:v17];
}

uint64_t __117__AVCaptureMovieFileOutput_handleDidStopRecordingNotificationForMomentCaptureWrapper_withPayload_demoof_addMetadata___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 32);
  objc_sync_enter(v4);
  v5 = *(a1 + 40);
  if (*(a1 + 72) == 1)
  {
    [v5 setDidFinishWritingSpatialOverCaptureMovieCallbackFired:1];
  }

  else
  {
    [v5 setDidFinishWritingMovieCallbackFired:1];
  }

  if ([*(a1 + 40) didFinishWritingMovieCallbackFired] && objc_msgSend(*(a1 + 40), "didFinishWritingSpatialOverCaptureMovieCallbackFired"))
  {
    [*(a1 + 32) _removeRecordingDelegateWrapper:*(a1 + 40)];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v4);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v8 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E698FCB0]];
    v9 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E698FC00]];
    if (v9)
    {
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 40);
    if (*(a1 + 72) == 1)
    {
      v12 = [v11 spatialOverCaptureMovieMetadata];
    }

    else
    {
      v12 = [v11 metadata];
    }

    v13 = +[AVMomentCaptureMovie movieWithResolvedSettings:outputFileURL:movieMetadata:](AVMomentCaptureMovie, "movieWithResolvedSettings:outputFileURL:movieMetadata:", [*(a1 + 40) resolvedSettings], *(a1 + 56), v12);
    v14 = v13;
    if (v10)
    {
      [(AVMomentCaptureMovie *)v13 _setDebugMetadataSidecarFileURL:v10];
    }

    if (v8)
    {
      pixelBufferOut.value = 0;
      if (!CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v8, 0, &pixelBufferOut))
      {
        [(AVMomentCaptureMovie *)v14 _setPreviewPixelBuffer:pixelBufferOut.value];
        if (pixelBufferOut.value)
        {
          CFRelease(pixelBufferOut.value);
        }
      }
    }

    v15 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E698FAA0]];
    if (v15)
    {
      memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
      CMTimeMakeFromDictionary(&pixelBufferOut, v15);
      v16 = pixelBufferOut;
      [(AVMomentCaptureMovie *)v14 _setDuration:&v16];
    }

    result = [a2 captureOutput:*(a1 + 32) didFinishWritingMovie:v14 error:*(a1 + 64)];
  }

  if (v6)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [a2 captureOutput:*(a1 + 32) didFinishMovieCaptureForResolvedSettings:objc_msgSend(*(a1 + 40) error:{"resolvedSettings"), *(a1 + 64)}];
    }
  }

  return result;
}

- (void)handleDidPauseRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4
{
  [a3 isRecording];
  v6 = [a3 delegateStorage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__AVCaptureMovieFileOutput_handleDidPauseRecordingNotificationForWrapper_withPayload___block_invoke;
  v7[3] = &unk_1E786FC18;
  v7[4] = self;
  v7[5] = a3;
  [v6 invokeDelegateCallbackWithBlock:v7];
}

uint64_t __86__AVCaptureMovieFileOutput_handleDidPauseRecordingNotificationForWrapper_withPayload___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    [a2 captureOutput:*(a1 + 32) didPauseRecordingToOutputFileAtURL:objc_msgSend(*(a1 + 40) fromConnections:{"outputFileURL"), objc_msgSend(*(a1 + 40), "connections")}];
  }

  [*(a1 + 40) setPaused:1];
  v4 = *(*(a1 + 32) + 32);
  objc_sync_enter(v4);
  v5 = *(*(*(a1 + 32) + 32) + 90);
  if (v5 != [*(a1 + 40) isPaused])
  {
    [*(a1 + 32) willChangeValueForKey:@"paused"];
    *(*(*(a1 + 32) + 32) + 90) = [*(a1 + 40) isPaused];
    [*(a1 + 32) didChangeValueForKey:@"paused"];
  }

  return objc_sync_exit(v4);
}

- (void)handleDidResumeRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4
{
  [a3 isRecording];
  [a3 isPaused];
  v6 = [a3 delegateStorage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__AVCaptureMovieFileOutput_handleDidResumeRecordingNotificationForWrapper_withPayload___block_invoke;
  v7[3] = &unk_1E786FC18;
  v7[4] = self;
  v7[5] = a3;
  [v6 invokeDelegateCallbackWithBlock:v7];
}

uint64_t __87__AVCaptureMovieFileOutput_handleDidResumeRecordingNotificationForWrapper_withPayload___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    [a2 captureOutput:*(a1 + 32) didResumeRecordingToOutputFileAtURL:objc_msgSend(*(a1 + 40) fromConnections:{"outputFileURL"), objc_msgSend(*(a1 + 40), "connections")}];
  }

  [*(a1 + 40) setPaused:0];
  v4 = *(*(a1 + 32) + 32);
  objc_sync_enter(v4);
  v5 = *(*(*(a1 + 32) + 32) + 90);
  if (v5 != [*(a1 + 40) isPaused])
  {
    [*(a1 + 32) willChangeValueForKey:@"paused"];
    *(*(*(a1 + 32) + 32) + 90) = [*(a1 + 40) isPaused];
    [*(a1 + 32) didChangeValueForKey:@"paused"];
  }

  return objc_sync_exit(v4);
}

- (void)handleDidDropFrameWhileRecordingNotificationForWrapper:(id)a3 withPayload:(id)a4
{
  v7 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FC40]), "intValue"}];
  if (v7)
  {
    [(AVCaptureMovieFileOutput *)self _avErrorUserInfoDictionaryForError:v7 wrapper:a3 payload:a4];
    v8 = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  else
  {
    v8 = 0;
  }

  v9 = [a3 delegateStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__AVCaptureMovieFileOutput_handleDidDropFrameWhileRecordingNotificationForWrapper_withPayload___block_invoke;
  v10[3] = &unk_1E786FBA0;
  v10[4] = self;
  v10[5] = v8;
  v10[6] = a3;
  [v9 invokeDelegateCallbackWithBlock:v10];
}

uint64_t __95__AVCaptureMovieFileOutput_handleDidDropFrameWhileRecordingNotificationForWrapper_withPayload___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (dword_1ED806920)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [a2 captureOutput:*(a1 + 32) didDropFrameWhileRecordingToOutputFileAtURL:objc_msgSend(*(a1 + 48) fromConnections:"outputFileURL" error:{v6, v7), objc_msgSend(*(a1 + 48), "connections"), *(a1 + 40)}];
  }

  return result;
}

- (void)handleNotification:(id)a3 payload:(id)a4
{
  v7 = *MEMORY[0x1E698FD48];
  v8 = [a3 isEqual:*MEMORY[0x1E698FD48]];
  if (([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}] & 1) != 0 || v8)
  {
    v9 = -[AVCaptureMovieFileOutput _delegateWrapperForSettingsID:](self, "_delegateWrapperForSettingsID:", [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCE0]), "longLongValue"}]);
    if ((v9 != 0) | v8 & 1)
    {
      v10 = v9;
      if (dword_1ED806920)
      {
        v15 = 0;
        v14 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if ([a3 isEqualToString:{*MEMORY[0x1E698FAC0], v12, v13}])
      {
        [(AVCaptureMovieFileOutput *)self handleDidStartRecordingNotificationForWrapper:v10 withPayload:a4];
      }

      else if ([a3 isEqualToString:*MEMORY[0x1E698FAC8]])
      {
        [(AVCaptureMovieFileOutput *)self handleDidStopRecordingNotificationForWrapper:v10 withPayload:a4 demoof:0 addMetadata:0];
      }

      else if ([a3 isEqualToString:v7])
      {
        [(AVCaptureMovieFileOutput *)self _cleanupDelegateWrappersPendingDidStopRecordingUnregistration];
      }

      else if ([a3 isEqualToString:*MEMORY[0x1E698FAB0]])
      {
        [(AVCaptureMovieFileOutput *)self handleDidPauseRecordingNotificationForWrapper:v10 withPayload:a4];
      }

      else if ([a3 isEqualToString:*MEMORY[0x1E698FAB8]])
      {
        [(AVCaptureMovieFileOutput *)self handleDidResumeRecordingNotificationForWrapper:v10 withPayload:a4];
      }

      else if ([a3 isEqualToString:*MEMORY[0x1E698FAA8]])
      {
        [(AVCaptureMovieFileOutput *)self handleDidDropFrameWhileRecordingNotificationForWrapper:v10 withPayload:a4];
      }
    }
  }
}

- (BOOL)_totalNANDBandwidthAllowed:(id)a3 videoCodecType:(id)a4
{
  v7 = [(AVCaptureOutput *)self session];

  return [v7 requestNANDBandwidthToStartMovieFileRecording:self outputFileURL:a3 videoCodecType:a4];
}

- (BOOL)_isProResRawRecordingAndAWBIsNotLockedForWrapper:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 connections];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    v8 = *MEMORY[0x1E6987608];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v10 "mediaType")])
        {
          v11 = [objc_msgSend(v10 "sourceDevice")];
          if (v11)
          {
            CMFormatDescriptionGetMediaSubType([v11 formatDescription]);
            if (FigCapturePixelFormatIsPackedBayerRaw())
            {
              v6 |= [objc_msgSend(v10 "sourceDevice")] != 0;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_startRecording:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  if ([(AVCaptureMovieFileOutput *)self _isProResRawRecordingAndAWBIsNotLockedForWrapper:a3])
  {
    v63 = *MEMORY[0x1E698FC40];
    v64 = &unk_1F1CEA058;
    -[AVCaptureMovieFileOutput handleDidStopRecordingNotificationForWrapper:withPayload:demoof:addMetadata:](self, "handleDidStopRecordingNotificationForWrapper:withPayload:demoof:addMetadata:", a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1], 0, 0);
    v62 = 0;
    v61 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    obj = self->_internal;
    objc_sync_enter(obj);
    [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"outputFileURL"];
    [(NSMutableArray *)self->_internal->recordingDelegatesArray addObject:a3];
    [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"outputFileURL"];
    if ([objc_msgSend(-[AVCaptureOutput session](self "session")])
    {
      v7 = [objc_msgSend(a3 "connections")];
      v8 = [v7 mediaType];
      if ([v8 isEqual:*MEMORY[0x1E69875A0]])
      {
        v9 = objc_alloc_init(MEMORY[0x1E698F758]);
        [v9 setSettingsID:{objc_msgSend(a3, "settingsID")}];
        [v9 setOutputURL:{objc_msgSend(a3, "outputFileURL")}];
        v10 = *MEMORY[0x1E6987468];
        [v9 setOutputFileType:*MEMORY[0x1E6987468]];
        [(AVCaptureFileOutput *)self maxRecordedDuration];
        *buf = v58;
        *&buf[16] = v59;
        [v9 setMaxDuration:buf];
        [v9 setMaxFileSize:{-[AVCaptureFileOutput maxRecordedFileSize](self, "maxRecordedFileSize")}];
        [v9 setMinFreeDiskSpaceLimit:{-[AVCaptureFileOutput minFreeDiskSpaceLimit](self, "minFreeDiskSpaceLimit")}];
        LODWORD(v38) = -65536;
        [v9 setAudioSettings:{-[AVCaptureOutput recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:](self, "recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:", v7, 0, 0, v10, 0, 0, v38)}];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E698F7B0]);
      [v9 setSettingsID:{objc_msgSend(a3, "settingsID")}];
      [v9 setOutputURL:{objc_msgSend(a3, "outputFileURL")}];
      v42 = *MEMORY[0x1E69874C0];
      [v9 setOutputFileType:?];
      [(AVCaptureFileOutput *)self maxRecordedDuration];
      *buf = v56;
      *&buf[16] = v57;
      [v9 setMaxDuration:buf];
      [v9 setMaxFileSize:{-[AVCaptureFileOutput maxRecordedFileSize](self, "maxRecordedFileSize")}];
      [v9 setMinFreeDiskSpaceLimit:{-[AVCaptureFileOutput minFreeDiskSpaceLimit](self, "minFreeDiskSpaceLimit")}];
      [(AVCaptureMovieFileOutput *)self movieFragmentInterval];
      *buf = v54;
      *&buf[16] = v55;
      [v9 setMovieFragmentInterval:buf];
      [v9 setMovieLevelMetadata:{objc_msgSend(MEMORY[0x1E6987FE0], "figMetadataPropertyFromMetadataItems:", objc_msgSend(a3, "metadata"))}];
      [v9 setSendPreviewIOSurface:self->_internal->sendLastVideoPreviewFrame];
      [v9 setUsesVirtualCaptureCard:self->_internal->usesVirtualCaptureCard];
      internal = self->_internal;
      if (internal->primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled)
      {
        buf[3] = 0;
        *&buf[1] = 0;
        buf[0] = 1;
        *&buf[4] = *&internal->primaryConstituentDeviceSwitchingBehavior;
        [v9 setBravoCameraSelectionConfigurationForRecording:buf];
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v12 = [a3 connections];
      v13 = [v12 countByEnumeratingWithState:&v50 objects:v49 count:16];
      v14 = MEMORY[0x1E6987608];
      if (v13)
      {
        v39 = v9;
        v15 = self;
        v16 = *v51;
        v17 = *MEMORY[0x1E6987608];
LABEL_13:
        v18 = 0;
        while (1)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v50 + 1) + 8 * v18);
          v20 = [objc_msgSend(v19 "mediaType")];
          if ([(AVCaptureMovieFileOutput *)v15 isMultiCamClientCompositingEnabled])
          {
            if (((v19 == [(AVCaptureMovieFileOutput *)v15 multiCamClientCompositingPrimaryConnection]) & v20) != 0)
            {
              goto LABEL_23;
            }
          }

          else if (v20)
          {
LABEL_23:
            v21 = [v19 isVideoMirrored];
            self = v15;
            v9 = v39;
            v14 = MEMORY[0x1E6987608];
            [v39 setVideoMirrored:v21];
            [v19 videoRotationAngle];
            [v39 setVideoRotationDegrees:v22];
            [v39 setRecordVideoOrientationAndMirroringChanges:{-[AVCaptureMovieFileOutput recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection:](v15, "recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection:", v19)}];
            if (v5)
            {
              [v39 setSpatialOverCaptureMovieURL:{objc_msgSend(v5, "spatialOverCaptureMovieFileURL")}];
              [v39 setSpatialOverCaptureMovieLevelMetadata:{objc_msgSend(MEMORY[0x1E6987FE0], "figMetadataPropertyFromMetadataItems:", objc_msgSend(v5, "spatialOverCaptureMovieMetadata"))}];
              if ([v5 videoCodecType])
              {
                if (([objc_msgSend(v5 "videoCodecType")] & 1) == 0)
                {

                  v15->_internal->videoCodec = [objc_msgSend(v5 "videoCodecType")];
                  v15->_internal->videoCompressionProperties = 0;
                }
              }
            }

            v23 = [v19 isDebugMetadataSidecarFileEnabled];
            if (v23)
            {
              [objc_msgSend(a3 "delegateStorage")];
              if (objc_opt_respondsToSelector())
              {
                LOBYTE(v23) = 1;
              }

              else
              {
                [objc_msgSend(a3 "delegateStorage")];
                LOBYTE(v23) = objc_opt_respondsToSelector();
              }
            }

            [v39 setDebugMetadataSidecarFileEnabled:v23 & 1];
            [v39 setVideoSettings:{-[AVCaptureMovieFileOutput outputSettingsForConnection:](v15, "outputSettingsForConnection:", v19)}];
            v24 = [objc_msgSend(v19 "sourceDevice")];
            if (v24)
            {
              CMFormatDescriptionGetMediaSubType([v24 formatDescription]);
              v41 = FigCapturePixelFormatIs422();
              goto LABEL_35;
            }

            break;
          }

          if (v13 == ++v18)
          {
            v13 = [v12 countByEnumeratingWithState:&v50 objects:v49 count:16];
            if (v13)
            {
              goto LABEL_13;
            }

            v41 = 0;
            self = v15;
            v9 = v39;
            v14 = MEMORY[0x1E6987608];
            goto LABEL_35;
          }
        }
      }

      v41 = 0;
LABEL_35:
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v25 = [a3 connections];
      v26 = [v25 countByEnumeratingWithState:&v45 objects:v44 count:16];
      if (v26)
      {
        v27 = v9;
        v28 = self;
        v29 = 0;
        v30 = v14;
        v31 = *v46;
        v32 = *MEMORY[0x1E69875A0];
        v33 = *v30;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(v25);
            }

            v35 = *(*(&v45 + 1) + 8 * i);
            if ([objc_msgSend(v35 "mediaType")])
            {
              [v27 setAudioSettings:{-[AVCaptureMovieFileOutput outputSettingsForConnection:](v28, "outputSettingsForConnection:", v35)}];
              if ([objc_msgSend(v35 "sourceDeviceInput")] == 2)
              {
                [v27 setCinematicAudioSettings:{-[AVCaptureOutput recommendedCinematicAudioOutputSettingsForConnection:fileType:isProResCapture:](v28, "recommendedCinematicAudioOutputSettingsForConnection:fileType:isProResCapture:", v35, v42, v41)}];
              }
            }

            v29 |= [objc_msgSend(v35 "mediaType")];
          }

          v26 = [v25 countByEnumeratingWithState:&v45 objects:v44 count:16];
        }

        while (v26);
        v9 = v27;
        if (v29)
        {
          self = v28;
          CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
          v37 = CTGreenTeaOsLogHandle;
          if (CTGreenTeaOsLogHandle && os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A917C000, v37, OS_LOG_TYPE_INFO, "Record a video", buf, 2u);
          }
        }

        else
        {
          self = v28;
        }
      }
    }

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __44__AVCaptureMovieFileOutput__startRecording___block_invoke;
    v43[3] = &unk_1E786EFA8;
    v43[4] = self;
    v43[5] = v9;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v43];

    objc_sync_exit(obj);
  }
}

uint64_t __44__AVCaptureMovieFileOutput__startRecording___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = *(v3 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {

      return v6(a2, v4, v5);
    }

    else
    {
      v7 = *MEMORY[0x1E698FC40];
      v8 = &unk_1F1CEA070;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (int)_stopRecording
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__AVCaptureMovieFileOutput__stopRecording__block_invoke;
  v3[3] = &unk_1E786F360;
  v3[4] = self;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v3];
  return 0;
}

uint64_t __42__AVCaptureMovieFileOutput__stopRecording__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(result + 32) sinkID];
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v4)
    {

      return v4(a2, v3);
    }

    else
    {
      v5 = *MEMORY[0x1E698FC40];
      v6 = &unk_1F1CEA070;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (void)handleChangedActiveFormat:(id)a3 forDevice:(id)a4
{
  [(AVCaptureMovieFileOutput *)self _updateSupportedPropertiesForSourceDevice:a4];
  v7.receiver = self;
  v7.super_class = AVCaptureMovieFileOutput;
  [(AVCaptureOutput *)&v7 handleChangedActiveFormat:a3 forDevice:a4];
}

- (void)handleVideoStabilizationModeChangedForConnection:(id)a3
{
  if ([(NSArray *)[(AVCaptureOutput *)self connections] containsObject:a3])
  {
    v5 = [a3 mediaType];
    if ([v5 isEqualToString:*MEMORY[0x1E6987608]])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [a3 inputPorts];
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            [v11 input];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [objc_msgSend(v11 "input")];
              if (v12)
              {
                [(AVCaptureMovieFileOutput *)self _updateSpatialVideoCaptureSupportedForSourceDevice:v12];
              }

              goto LABEL_14;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_14:
  v13.receiver = self;
  v13.super_class = AVCaptureMovieFileOutput;
  [(AVCaptureOutput *)&v13 handleVideoStabilizationModeChangedForConnection:a3];
}

- (void)_updateSupportedPropertiesForSourceDevice:(id)a3
{
  [(AVCaptureMovieFileOutput *)self _updateAvailableVideoCodecTypesForSourceDevice:?];
  [(AVCaptureMovieFileOutput *)self _updateBravoCameraSelectionBehaviorForSourceDevice:a3];
  [(AVCaptureMovieFileOutput *)self _updateDepthDataDeliverySupportedForSourceDevice:a3];

  [(AVCaptureMovieFileOutput *)self _updateSpatialVideoCaptureSupportedForSourceDevice:a3];
}

- (void)_updateAvailableVideoCodecTypesForSourceDevice:(id)a3
{
  v4 = [objc_opt_class() availableVideoCodecTypesForSourceDevice:a3 sourceFormat:0 outputDimensions:0 fileType:*MEMORY[0x1E69874C0] videoCodecTypesAllowList:0];
  v5 = v4;
  internal = self->_internal;
  if (internal->videoCodec)
  {
    v7 = [v4 containsObject:?];
    internal = self->_internal;
    if ((v7 & 1) == 0)
    {

      self->_internal->videoCodec = 0;
      internal = self->_internal;
    }
  }

  if (([v5 isEqual:internal->availableVideoCodecs] & 1) == 0)
  {
    [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"availableVideoCodecTypes"];

    self->_internal->availableVideoCodecs = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];

    [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"availableVideoCodecTypes"];
  }
}

- (void)setConnectionsActive:(BOOL)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(AVCaptureOutput *)self connections];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x1E69875C0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 mediaType];
        v13 = v3;
        if (v12 == v9)
        {
          v13 = self->_internal->streamingDepthSupported & v3;
        }

        [v11 _setActive:v13];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_updateDepthDataDeliverySupportedForSourceDevice:(id)a3
{
  v4 = [objc_msgSend(a3 "activeFormat")];
  internal = self->_internal;
  if (internal->streamingDepthSupported != v4)
  {
    v6 = v4;
    internal->streamingDepthSupported = v4;
    v7 = *MEMORY[0x1E69875C0];
    if ([(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E69875C0]])
    {
      v8 = [(AVCaptureOutput *)self connectionWithMediaType:v7];

      [(AVCaptureConnection *)v8 _setActive:v6];
    }
  }
}

- (BOOL)isDepthCaptureEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->depthCaptureEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (void)setDepthCaptureEnabled:(BOOL)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  self->_internal->depthCaptureEnabled = a3;

  objc_sync_exit(internal);
}

- (void)_updateSpatialVideoCaptureSupportedForSourceDevice:(id)a3
{
  v5 = [objc_msgSend(a3 "activeFormat")];
  v6 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
  if (v6)
  {
    v7 = [(AVCaptureConnection *)v6 activeVideoStabilizationMode];
    if (v7 > 5 || ((1 << v7) & 0x2C) == 0)
    {
      v5 = 0;
    }
  }

  v9 = [a3 isVideoFrameDurationLocked];
  v10 = [a3 isFollowingExternalSyncDevice];
  internal = self->_internal;
  v12 = v5 & ~(v10 | v9) & 1;
  if (internal->spatialVideoCaptureSupported != v12)
  {
    objc_sync_enter(self->_internal);
    if (v12)
    {
      objc_sync_exit(internal);
      [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"spatialVideoCaptureSupported"];
      [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"stereoVideoCaptureSupported"];
    }

    else
    {
      spatialVideoCaptureEnabled = self->_internal->spatialVideoCaptureEnabled;
      objc_sync_exit(internal);
      [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"spatialVideoCaptureSupported"];
      [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"stereoVideoCaptureSupported"];
      if (spatialVideoCaptureEnabled)
      {
        v14 = @"spatialVideoCaptureEnabled";
        [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"spatialVideoCaptureEnabled"];
        v15 = @"stereoVideoCaptureEnabled";
        [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"stereoVideoCaptureEnabled"];
        [(AVCaptureMovieFileOutput *)self setSpatialVideoCaptureEnabled:0];
        v16 = self->_internal;
        objc_sync_enter(v16);
        self->_internal->spatialVideoCaptureSupported = 0;
        objc_sync_exit(v16);
        [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"spatialVideoCaptureSupported"];
        [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"stereoVideoCaptureSupported"];
LABEL_14:
        [(AVCaptureMovieFileOutput *)self didChangeValueForKey:v14];

        [(AVCaptureMovieFileOutput *)self didChangeValueForKey:v15];
        return;
      }
    }

    v17 = self->_internal;
    objc_sync_enter(v17);
    self->_internal->spatialVideoCaptureSupported = v12;
    objc_sync_exit(v17);
    v15 = @"stereoVideoCaptureSupported";
    v14 = @"spatialVideoCaptureSupported";
    goto LABEL_14;
  }
}

- (BOOL)isSpatialVideoCaptureSupported
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->spatialVideoCaptureSupported;
  objc_sync_exit(internal);
  return v2;
}

- (BOOL)isSpatialVideoCaptureEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->spatialVideoCaptureEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (void)setSpatialVideoCaptureEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureMovieFileOutput *)self isSpatialVideoCaptureSupported]|| !v3)
  {
    v6 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
    if (v6)
    {
      [-[AVCaptureConnection sourceDevice](v6 "sourceDevice")];
    }

    internal = self->_internal;
    objc_sync_enter(internal);
    v8 = self->_internal;
    if (v8->spatialVideoCaptureEnabled != v3)
    {
      v8->spatialVideoCaptureEnabled = v3;
      [(AVCaptureOutput *)self bumpChangeSeed];
    }

    objc_sync_exit(internal);
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (BOOL)isMultiCamClientCompositingSupported
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQ6HD7ZNZD33DG7SG4DOHIPW4SUQ");
  if (BoolAnswer)
  {
    [(AVCaptureOutput *)self session];
    objc_opt_class();
    LOBYTE(BoolAnswer) = objc_opt_isKindOfClass();
  }

  return BoolAnswer & 1;
}

- (void)setMultiCamClientCompositingEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3 && ![(AVCaptureMovieFileOutput *)self isMultiCamClientCompositingSupported])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
  }

  else
  {
    [(AVCaptureOutput *)self session];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(AVCaptureMovieFileOutput *)self isMultiCamClientCompositingEnabled]!= v3)
      {
        self->_internal->multiCamClientCompositingEnabled = v3;
        if (!v3)
        {

          self->_internal->multiCamClientCompositingPrimaryConnection = 0;
        }

        [(AVCaptureOutput *)self bumpChangeSeed];
      }

      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (void)setMultiCamClientCompositingPrimaryConnection:(id)a3 secondaryConnection:(id)a4
{
  if (a3 | a4 && ![(AVCaptureMovieFileOutput *)self isMultiCamClientCompositingSupported])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
  }

  else if ([(AVCaptureMovieFileOutput *)self isMultiCamClientCompositingEnabled])
  {
    if ([(NSArray *)[(AVCaptureOutput *)self connections] containsObject:a3])
    {
      if ([(NSArray *)[(AVCaptureOutput *)self connections] containsObject:a4])
      {
        v7 = [a3 mediaType];
        v8 = *MEMORY[0x1E6987608];
        if ([v7 isEqual:*MEMORY[0x1E6987608]])
        {
          if ([objc_msgSend(a4 "mediaType")])
          {
            if ([(AVCaptureMovieFileOutput *)self multiCamClientCompositingPrimaryConnection]!= a3)
            {

              self->_internal->multiCamClientCompositingPrimaryConnection = a3;
              -[AVCaptureMovieFileOutput _updateSupportedPropertiesForSourceDevice:](self, "_updateSupportedPropertiesForSourceDevice:", [a3 sourceDevice]);

              [(AVCaptureOutput *)self bumpChangeSeed];
            }

            return;
          }

          v9 = MEMORY[0x1E695DF30];
          v10 = *MEMORY[0x1E695D940];
        }

        else
        {
          v9 = MEMORY[0x1E695DF30];
          v10 = *MEMORY[0x1E695D940];
        }
      }

      else
      {
        v9 = MEMORY[0x1E695DF30];
        v10 = *MEMORY[0x1E695D940];
      }
    }

    else
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
  }

  v11 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

- (int)_invokeClientCompositingCallbackForSettingsID:(int64_t)a3 compositingData:(id)a4
{
  v6 = [(AVCaptureMovieFileOutput *)self _delegateWrapperForSettingsID:a3];
  v7 = [v6 delegateStorage];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__AVCaptureMovieFileOutput__invokeClientCompositingCallbackForSettingsID_compositingData___block_invoke;
  v9[3] = &unk_1E786FBA0;
  v9[4] = self;
  v9[5] = v6;
  v9[6] = a4;
  [v7 invokeDelegateCallbackWithBlock:v9 synchronouslyIfDelegateQueueIsQueue:{objc_msgSend(objc_msgSend(v6, "delegateStorage"), "delegateQueue")}];
  return 0;
}

uint64_t __90__AVCaptureMovieFileOutput__invokeClientCompositingCallbackForSettingsID_compositingData___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) outputFileURL];
    v6 = *(a1 + 48);

    return [a2 captureOutput:v4 readyForClientCompositingForOutputFileAtURL:v5 compositingData:v6];
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v14 = 0;
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) outputFileURL];
      ImageBuffer = CMSampleBufferGetImageBuffer([*(a1 + 48) primarySampleBuffer]);
      CMSampleBufferGetPresentationTimeStamp(&v13, [*(a1 + 48) primarySampleBuffer]);
      v11 = CMSampleBufferGetImageBuffer([*(a1 + 48) secondarySampleBuffer]);
      CMSampleBufferGetPresentationTimeStamp(&v12, [*(a1 + 48) secondarySampleBuffer]);
      [a2 captureOutput:v8 readyForClientCompositingForOutputFileAtURL:v9 primaryPixelBuffer:ImageBuffer primaryPTS:&v13 secondaryPixelBuffer:v11 secondaryPTS:&v12 outputPixelBuffer:CMSampleBufferGetImageBuffer(objc_msgSend(*(a1 + 48) compositeMetadata:{"outputSampleBuffer")), &v14}];
      return [*(a1 + 48) setCompositingMetadata:v14];
    }
  }

  return result;
}

- (id)_delegateWrapperForSettingsID:(int64_t)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = [(NSMutableArray *)self->_internal->recordingDelegatesArray copy];
  objc_sync_exit(internal);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if ([v11 settingsID] == a3)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (BOOL)isVirtualCaptureCardSupported
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v3 = +[AVVirtualCaptureCard isVirtualCaptureCardSupported];
  objc_sync_exit(internal);
  return v3;
}

- (BOOL)usesVirtualCaptureCard
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->usesVirtualCaptureCard;
  objc_sync_exit(internal);
  return v2;
}

- (void)setUsesVirtualCaptureCard:(BOOL)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  if ([(AVCaptureMovieFileOutput *)self isVirtualCaptureCardSupported])
  {
    self->_internal->usesVirtualCaptureCard = a3;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  objc_sync_exit(internal);
}

- (BOOL)isTrueVideoCaptureEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->trueVideoCaptureEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (void)setTrueVideoCaptureEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureMovieFileOutput *)self isTrueVideoCaptureSupported]|| !v3)
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    v7 = self->_internal;
    if (v7->trueVideoCaptureEnabled != v3)
    {
      v7->trueVideoCaptureEnabled = v3;
      [(AVCaptureOutput *)self bumpChangeSeed];
    }

    objc_sync_exit(internal);
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (void)_updateBravoCameraSelectionBehaviorForSourceDevice:(id)a3
{
  if ([a3 isVirtualDevice])
  {
    v5 = [objc_msgSend(a3 "constituentDevices")] > 1;
  }

  else
  {
    v5 = 0;
  }

  internal = self->_internal;
  if (internal->deviceSupportsConstituentDeviceSwitching != v5)
  {
    internal->deviceSupportsConstituentDeviceSwitching = v5;
    if (v5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (v5)
    {
      v8 = 7;
    }

    else
    {
      v8 = 0;
    }

    [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"bravoCameraSelectionBehaviorForRecording"];
    [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled"];
    [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"primaryConstituentDeviceSwitchingBehaviorForRecording"];
    [(AVCaptureMovieFileOutput *)self willChangeValueForKey:@"primaryConstituentDeviceRestrictedSwitchingBehaviorConditions"];
    self->_internal->primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled = v5;
    self->_internal->primaryConstituentDeviceSwitchingBehavior = v7;
    self->_internal->primaryConstituentDeviceRestrictedSwitchingBehaviorConditions = v8;
    [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"primaryConstituentDeviceRestrictedSwitchingBehaviorConditions"];
    [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"primaryConstituentDeviceSwitchingBehaviorForRecording"];
    [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"primaryConstituentDeviceSwitchingBehaviorForRecordingEnabled"];

    [(AVCaptureMovieFileOutput *)self didChangeValueForKey:@"bravoCameraSelectionBehaviorForRecording"];
  }
}

- (uint64_t)startRecordingToOutputFileURL:recordingDelegate:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  *v2 = *MEMORY[0x1E698FC40];
  *v0 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  return OUTLINED_FUNCTION_0_3([MEMORY[0x1E695DF20] dictionaryWithObjects:v0 forKeys:v1 count:1]);
}

- (void)startRecordingMovieWithSettings:delegate:.cold.2()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v0);
  }

  NSLog(&cfstr_SuppressingExc.isa, v0);
}

@end