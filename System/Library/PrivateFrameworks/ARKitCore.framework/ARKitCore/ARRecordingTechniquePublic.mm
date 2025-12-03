@interface ARRecordingTechniquePublic
- (ARRecordingTechniqueDelegate)recordingTechniqueDelegate;
- (ARRecordingTechniquePublic)initWithFileURL:(id)l recordingSensorDataTypes:(unint64_t)types startImmediately:(BOOL)immediately recordCollaborationData:(BOOL)data;
- (id)createFileMetadata;
- (id)processData:(id)data;
- (void)_fail:(id)_fail;
- (void)_finish:(id)_finish;
- (void)_finishRecording;
- (void)_startRecording;
- (void)dealloc;
- (void)didFailWithError:(id)error;
- (void)didFinishRecording;
- (void)finishRecording;
- (void)isReadyToRecord;
- (void)processTimeSensitiveNSCoderObject:(id)object withTimestamp:(double)timestamp metadataID:(id)d;
- (void)recordAddedAnchor:(id)anchor;
- (void)recordCollaborationData:(id)data localSession:(BOOL)session;
- (void)recordCustomData:(id)data forTimestamp:(double)timestamp;
- (void)recordRemovedAnchor:(id)anchor;
- (void)removeTemporaryVideoFile;
- (void)setParentImageSensorSettings:(id)settings;
- (void)setupCustomTrack;
- (void)setupSensorTracks;
- (void)startRecording;
- (void)writeAudioData:(id)data;
- (void)writeImageData:(id)data;
- (void)writePearlDepthData:(id)data withTimestamp:(double)timestamp fromCaptureDevice:(id)device;
- (void)writeResultData:(id)data withTimestamp:(double)timestamp;
- (void)writeSensorData:(id)data;
- (void)writeTimeOfFlightData:(id)data;
@end

@implementation ARRecordingTechniquePublic

- (ARRecordingTechniquePublic)initWithFileURL:(id)l recordingSensorDataTypes:(unint64_t)types startImmediately:(BOOL)immediately recordCollaborationData:(BOOL)data
{
  immediatelyCopy = immediately;
  v71 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v63.receiver = self;
  v63.super_class = ARRecordingTechniquePublic;
  v11 = [(ARTechnique *)&v63 init];
  v12 = v11;
  if (v11)
  {
    v11->_recordCollaborationData = data;
    v11->_recordPearlDepthData = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.recordingTechnique.recordPearlDepthData"];
    v13 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.session.record.filepath"];
    v14 = v13;
    if (v13)
    {
      if ([v13 isAbsolutePath])
      {
        v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
      }

      else
      {
        v17 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
        lastObject = [v17 lastObject];

        v19 = MEMORY[0x1E695DFF8];
        v20 = [lastObject stringByAppendingPathComponent:v14];
        v15 = [v19 fileURLWithPath:v20];

        lCopy = lastObject;
      }

      if (_ARLogSession_onceToken_0 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v21 = _ARLogSession_logObj_0;
      if (os_log_type_enabled(_ARLogSession_logObj_0, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        absoluteString = [v15 absoluteString];
        *buf = 138543874;
        v66 = v24;
        v67 = 2048;
        v68 = v12;
        v69 = 2112;
        v70 = absoluteString;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Setting recording URL to %@", buf, 0x20u);
      }

      v16 = 0;
    }

    else if (lCopy)
    {
      v16 = 0;
      v15 = lCopy;
    }

    else
    {
      v59 = MEMORY[0x1E695DFF8];
      v60 = NSTemporaryDirectory();
      v61 = [v60 stringByAppendingPathComponent:@"movie.mov"];
      v15 = [v59 fileURLWithPath:v61];

      v16 = 1;
    }

    if ([v15 isFileURL])
    {
      uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
      v64 = *MEMORY[0x1E695DBF0];
      v26 = v64;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      [uRLByDeletingLastPathComponent resourceValuesForKeys:v27 error:0];
      v28 = v15;
      v29 = v14;
      v30 = v16;
      typesCopy = types;
      v33 = v32 = immediatelyCopy;
      v34 = [v33 objectForKeyedSubscript:v26];
      bOOLValue = [v34 BOOLValue];

      v36 = v32;
      v37 = typesCopy;
      v38 = v30;
      v14 = v29;
      v15 = v28;

      if (bOOLValue)
      {
        objc_storeStrong(&v12->_outputFileURL, v28);
        v12->_sensorDataTypes = v37;
        v39 = ARCreateFixedPriorityDispatchQueueWithQOS("com.apple.arkit.arrecordingpublictechnique.mainqueue");
        recordingQueue = v12->_recordingQueue;
        v12->_recordingQueue = v39;

        v41 = dispatch_queue_attr_make_initially_inactive(0);
        v42 = dispatch_queue_create("com.apple.arkit.arrecordingpublictechnique.runningqueue", v41);
        timeSensitiveQueue = v12->_timeSensitiveQueue;
        v12->_timeSensitiveQueue = v42;

        dispatch_set_target_queue(v12->_timeSensitiveQueue, v12->_recordingQueue);
        v12->_state = 0;
        v12->_sessionSourceTime = -1.0;
        v44 = objc_opt_new();
        lastRecordedTimestamps = v12->_lastRecordedTimestamps;
        v12->_lastRecordedTimestamps = v44;

        v46 = objc_opt_new();
        knownVIOSessionIDs = v12->_knownVIOSessionIDs;
        v12->_knownVIOSessionIDs = v46;

        v12->_shouldSaveVideoInPhotosLibrary = v38;
        if (objc_opt_respondsToSelector())
        {
          [(ARRecordingTechniquePublic *)v12 performSelector:sel__subscribeToBackgroundNotifications];
        }

        if (v36)
        {
          [(ARRecordingTechniquePublic *)v12 startRecording];
        }

        goto LABEL_21;
      }
    }

    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v49 = ARShouldUseLogTypeError_internalOSVersion_15;
    v50 = _ARLogTechnique_11();
    v51 = v50;
    if (v49 == 1)
    {
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138543874;
        v66 = v53;
        v67 = 2048;
        v68 = v12;
        v69 = 2112;
        v70 = v15;
        v54 = "%{public}@ <%p>: Recording fileURL is not writable: %@";
        v55 = v51;
        v56 = OS_LOG_TYPE_ERROR;
LABEL_29:
        _os_log_impl(&dword_1C241C000, v55, v56, v54, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v57 = objc_opt_class();
      v53 = NSStringFromClass(v57);
      *buf = 138543874;
      v66 = v53;
      v67 = 2048;
      v68 = v12;
      v69 = 2112;
      v70 = v15;
      v54 = "Error: %{public}@ <%p>: Recording fileURL is not writable: %@";
      v55 = v51;
      v56 = OS_LOG_TYPE_INFO;
      goto LABEL_29;
    }

    v48 = 0;
    goto LABEL_31;
  }

  v15 = lCopy;
LABEL_21:
  v48 = v12;
LABEL_31:

  return v48;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pearlFixedPointUnsigned13_3PixelBuffer);
  [(ARRecordingTechniquePublic *)self setState:4];
  timeSensitiveQueue = self->_timeSensitiveQueue;
  if (timeSensitiveQueue)
  {
    dispatch_activate(timeSensitiveQueue);
  }

  v4.receiver = self;
  v4.super_class = ARRecordingTechniquePublic;
  [(ARRecordingTechniquePublic *)&v4 dealloc];
}

- (void)setParentImageSensorSettings:(id)settings
{
  v23 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  objc_storeStrong(&self->_parentImageSensorSettings, settings);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = settingsCopy;
  settings = [settingsCopy settings];
  v7 = [settings countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(settings);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        videoFormat = [v11 videoFormat];
        captureDevicePosition = [videoFormat captureDevicePosition];

        if (captureDevicePosition == 2)
        {
          metaData = [v11 metaData];

          sensorDataTypes = self->_sensorDataTypes;
          if (metaData)
          {
            sensorDataTypes |= 0x10uLL;
            self->_sensorDataTypes = sensorDataTypes;
          }

          v16 = sensorDataTypes | 0x21;
        }

        else
        {
          v16 = self->_sensorDataTypes | 1;
        }

        self->_sensorDataTypes = v16;
      }

      v8 = [settings countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)startRecording
{
  objc_initWeak(&location, self);
  recordingQueue = self->_recordingQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__ARRecordingTechniquePublic_startRecording__block_invoke;
  v4[3] = &unk_1E817BD88;
  objc_copyWeak(&v5, &location);
  dispatch_async(recordingQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__ARRecordingTechniquePublic_startRecording__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startRecording];
}

- (void)recordCustomData:(id)data forTimestamp:(double)timestamp
{
  dataCopy = data;
  if (self->_expectCustomData)
  {
    objc_initWeak(&location, self);
    timeSensitiveQueue = self->_timeSensitiveQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__ARRecordingTechniquePublic_recordCustomData_forTimestamp___block_invoke;
    v8[3] = &unk_1E817C740;
    objc_copyWeak(v10, &location);
    v9 = dataCopy;
    v10[1] = *&timestamp;
    dispatch_async(timeSensitiveQueue, v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __60__ARRecordingTechniquePublic_recordCustomData_forTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained processTimeSensitiveNSCoderObject:*(a1 + 32) withTimestamp:@"mdta/com.apple.arkit.customdata" metadataID:*(a1 + 48)];
}

- (void)finishRecording
{
  objc_initWeak(&location, self);
  timeSensitiveQueue = self->_timeSensitiveQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__ARRecordingTechniquePublic_finishRecording__block_invoke;
  v4[3] = &unk_1E817BD88;
  objc_copyWeak(&v5, &location);
  dispatch_async(timeSensitiveQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__ARRecordingTechniquePublic_finishRecording__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishRecording];
}

- (void)removeTemporaryVideoFile
{
  v28 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([(NSURL *)self->_outputFileURL checkResourceIsReachableAndReturnError:0])
  {
    outputFileURL = self->_outputFileURL;
    v19 = 0;
    [defaultManager removeItemAtURL:outputFileURL error:&v19];
    v5 = v19;
    if (v5)
    {
      v6 = v5;
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v7 = ARShouldUseLogTypeError_internalOSVersion_15;
      v8 = _ARLogTechnique_11();
      v9 = v8;
      if (v7 == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = self->_outputFileURL;
          localizedDescription = [v6 localizedDescription];
          *buf = 138544130;
          v21 = v11;
          v22 = 2048;
          selfCopy2 = self;
          v24 = 2112;
          v25 = v12;
          v26 = 2112;
          v27 = localizedDescription;
          v14 = "%{public}@ <%p>: Could not remove temporary file at %@: %@";
          v15 = v9;
          v16 = OS_LOG_TYPE_ERROR;
LABEL_10:
          _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v11 = NSStringFromClass(v17);
        v18 = self->_outputFileURL;
        localizedDescription = [v6 localizedDescription];
        *buf = 138544130;
        v21 = v11;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = localizedDescription;
        v14 = "Error: %{public}@ <%p>: Could not remove temporary file at %@: %@";
        v15 = v9;
        v16 = OS_LOG_TYPE_INFO;
        goto LABEL_10;
      }
    }
  }
}

- (void)_fail:(id)_fail
{
  v21 = *MEMORY[0x1E69E9840];
  _failCopy = _fail;
  v5 = _ARLogTechnique_11();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [_failCopy description];
    v15 = 138543874;
    v16 = v7;
    v17 = 2048;
    selfCopy = self;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Recording failed: %@", &v15, 0x20u);
  }

  [(ARRecordingTechniquePublic *)self setState:4];
  delegate = [(ARTechnique *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(ARTechnique *)self delegate];
    [delegate2 technique:self didFailWithError:_failCopy];
  }

  recordingTechniqueDelegate = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    recordingTechniqueDelegate2 = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
    [recordingTechniqueDelegate2 technique:self didFinishWithResult:_failCopy];
  }

  dispatch_activate(self->_timeSensitiveQueue);
}

- (void)_finish:(id)_finish
{
  v16 = *MEMORY[0x1E69E9840];
  _finishCopy = _finish;
  objc_storeStrong(&self->_finishedError, _finish);
  if (_finishCopy)
  {
    [(ARRecordingTechniquePublic *)self _fail:_finishCopy];
  }

  else
  {
    v6 = _ARLogTechnique_11();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = 138543618;
      v13 = v8;
      v14 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Recording successful", &v12, 0x16u);
    }

    [(ARRecordingTechniquePublic *)self setState:4];
    recordingTechniqueDelegate = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      recordingTechniqueDelegate2 = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
      [recordingTechniqueDelegate2 technique:self didFinishWithResult:0];
    }
  }
}

- (id)processData:(id)data
{
  dataCopy = data;
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    v5 = dataCopy;
    v6 = v5;
    if ([v5 conformsToProtocol:&unk_1F426CEB8])
    {
      v6 = [v5 copy];
    }

    objc_initWeak(&location, self);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      originalImage = [v7 originalImage];
      v9 = [originalImage copy];

      recordingQueue = self->_recordingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__ARRecordingTechniquePublic_processData___block_invoke;
      block[3] = &unk_1E817BDB0;
      objc_copyWeak(&v33, &location);
      v32 = v9;
      v11 = v9;
      dispatch_async(recordingQueue, block);

      objc_destroyWeak(&v33);
LABEL_12:
      v19 = v5;
      objc_destroyWeak(&location);

      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      timeSensitiveQueue = self->_timeSensitiveQueue;
      v13 = v28;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __42__ARRecordingTechniquePublic_processData___block_invoke_2;
      v28[3] = &unk_1E817BDB0;
      objc_copyWeak(&v30, &location);
      v29 = v6;
      dispatch_async(timeSensitiveQueue, v28);
      v14 = v29;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v6;
        v17 = self->_recordingQueue;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __42__ARRecordingTechniquePublic_processData___block_invoke_3;
        v25[3] = &unk_1E817BDB0;
        objc_copyWeak(&v27, &location);
        v26 = v16;
        v18 = v16;
        dispatch_async(v17, v25);

        v15 = &v27;
        goto LABEL_11;
      }

      if (![v6 conformsToProtocol:&unk_1F426CE58])
      {
        goto LABEL_12;
      }

      v21 = self->_recordingQueue;
      v13 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __42__ARRecordingTechniquePublic_processData___block_invoke_4;
      v22[3] = &unk_1E817BDB0;
      objc_copyWeak(&v24, &location);
      v23 = v6;
      dispatch_async(v21, v22);
      v14 = v23;
    }

    v15 = (v13 + 5);
LABEL_11:
    objc_destroyWeak(v15);
    goto LABEL_12;
  }

LABEL_13:

  return dataCopy;
}

void __42__ARRecordingTechniquePublic_processData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeImageData:*(a1 + 32)];
}

void __42__ARRecordingTechniquePublic_processData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeAudioData:*(a1 + 32)];
}

void __42__ARRecordingTechniquePublic_processData___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeTimeOfFlightData:*(a1 + 32)];
}

void __42__ARRecordingTechniquePublic_processData___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeSensorData:*(a1 + 32)];
}

- (void)recordCollaborationData:(id)data localSession:(BOOL)session
{
  sessionCopy = session;
  v36 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (ARInternalOSBuild() && self->_recordCollaborationData)
  {
    if (![(ARRecordingTechniquePublic *)self allowedToWrite])
    {
      v7 = _ARLogTechnique_11();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
LABEL_27:

        goto LABEL_28;
      }

      v14 = objc_opt_class();
      v10 = NSStringFromClass(v14);
      *buf = 138543618;
      v31 = v10;
      v32 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping collaboration data which arrives while recording isn't running.", buf, 0x16u);
LABEL_26:

      goto LABEL_27;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llX", objc_msgSend(dataCopy, "vioSessionID")];
    v8 = [v7 length];
    if (v8 >= 8)
    {
      v9 = 8;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 substringToIndex:v9];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(dataCopy, "vioSessionID")}];
    v12 = [(NSMutableSet *)self->_knownVIOSessionIDs containsObject:v11];
    if (sessionCopy)
    {
      if ((v12 & 1) == 0)
      {
        [(NSMutableSet *)self->_knownVIOSessionIDs addObject:v11];
        v13 = [objc_alloc(MEMORY[0x1E698BEB8]) initWithEventType:7 timestamp:CACurrentMediaTime()];
        [v13 setPeerDisplayName:v10];
        [v13 setSessionID:v11];
        [(MOVWriterInterface *)self->_writer processCVAUserEvent:v13];
      }

      goto LABEL_25;
    }

    if ((v12 & 1) == 0)
    {
      [(NSMutableSet *)self->_knownVIOSessionIDs addObject:v11];
      v15 = [objc_alloc(MEMORY[0x1E698BEB8]) initWithEventType:5 timestamp:CACurrentMediaTime()];
      [v15 setPeerDisplayName:v10];
      [(MOVWriterInterface *)self->_writer processCVAUserEvent:v15];
      v16 = [objc_alloc(MEMORY[0x1E698BEB8]) initWithEventType:11 timestamp:CACurrentMediaTime()];
      [v16 setPeerDisplayName:v10];
      [v16 setSessionID:v11];
      [(MOVWriterInterface *)self->_writer processCVAUserEvent:v16];
    }

    v29 = 0;
    v17 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v29];
    v18 = v29;
    if (v18)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v19 = ARShouldUseLogTypeError_internalOSVersion_15;
      v20 = _ARLogTechnique_11();
      v21 = v20;
      if (v19 == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138543874;
          v31 = v23;
          v32 = 2048;
          selfCopy3 = self;
          v34 = 2112;
          v35 = v18;
          v24 = "%{public}@ <%p>: Error encoding collaboration data during recording: %@";
          v25 = v21;
          v26 = OS_LOG_TYPE_ERROR;
LABEL_23:
          _os_log_impl(&dword_1C241C000, v25, v26, v24, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v23 = NSStringFromClass(v28);
        *buf = 138543874;
        v31 = v23;
        v32 = 2048;
        selfCopy3 = self;
        v34 = 2112;
        v35 = v18;
        v24 = "Error: %{public}@ <%p>: Error encoding collaboration data during recording: %@";
        v25 = v21;
        v26 = OS_LOG_TYPE_INFO;
        goto LABEL_23;
      }
    }

    else
    {
      v21 = objc_opt_new();
      vioData = [dataCopy vioData];
      [v21 setData:vioData];

      [v21 setAdditionalData:v17];
      [v21 setTimestamp:CACurrentMediaTime()];
      [v21 setIsSent:0];
      -[NSObject setType:](v21, "setType:", [dataCopy vioDataType]);
      [v21 setSourcePeerDisplayName:v10];
      [(MOVWriterInterface *)self->_writer processCMData:v21];
    }

LABEL_25:
    goto LABEL_26;
  }

LABEL_28:
}

- (void)recordAddedAnchor:(id)anchor
{
  v25 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  if (ARInternalOSBuild())
  {
    if (![(ARRecordingTechniquePublic *)self allowedToWrite])
    {
      v6 = _ARLogTechnique_11();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = objc_opt_class();
      v5 = NSStringFromClass(v15);
      *buf = 138543618;
      v20 = v5;
      v21 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping added anchor data which arrives while recording isn't running.", buf, 0x16u);
LABEL_16:

      goto LABEL_17;
    }

    v18 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:anchorCopy requiringSecureCoding:1 error:&v18];
    v6 = v18;
    if (v6)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v7 = ARShouldUseLogTypeError_internalOSVersion_15;
      v8 = _ARLogTechnique_11();
      v9 = v8;
      if (v7 == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138543874;
          v20 = v11;
          v21 = 2048;
          selfCopy3 = self;
          v23 = 2112;
          v24 = v6;
          v12 = "%{public}@ <%p>: Error encoding anchor data during recording: %@";
          v13 = v9;
          v14 = OS_LOG_TYPE_ERROR;
LABEL_14:
          _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v11 = NSStringFromClass(v17);
        *buf = 138543874;
        v20 = v11;
        v21 = 2048;
        selfCopy3 = self;
        v23 = 2112;
        v24 = v6;
        v12 = "Error: %{public}@ <%p>: Error encoding anchor data during recording: %@";
        v13 = v9;
        v14 = OS_LOG_TYPE_INFO;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = objc_opt_new();
      [v9 setAnchorData:v5];
      [v9 setEventType:4];
      identifier = [anchorCopy identifier];
      [v9 setUuid:identifier];

      [v9 setTimestamp:CACurrentMediaTime()];
      [(MOVWriterInterface *)self->_writer processCVAUserEvent:v9];
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (void)recordRemovedAnchor:(id)anchor
{
  v25 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  if (ARInternalOSBuild())
  {
    if (![(ARRecordingTechniquePublic *)self allowedToWrite])
    {
      v6 = _ARLogTechnique_11();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = objc_opt_class();
      v5 = NSStringFromClass(v15);
      *buf = 138543618;
      v20 = v5;
      v21 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping removed anchor data which arrives while recording isn't running.", buf, 0x16u);
LABEL_16:

      goto LABEL_17;
    }

    v18 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:anchorCopy requiringSecureCoding:1 error:&v18];
    v6 = v18;
    if (v6)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v7 = ARShouldUseLogTypeError_internalOSVersion_15;
      v8 = _ARLogTechnique_11();
      v9 = v8;
      if (v7 == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138543874;
          v20 = v11;
          v21 = 2048;
          selfCopy3 = self;
          v23 = 2112;
          v24 = v6;
          v12 = "%{public}@ <%p>: Error encoding anchor data during recording: %@";
          v13 = v9;
          v14 = OS_LOG_TYPE_ERROR;
LABEL_14:
          _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v11 = NSStringFromClass(v17);
        *buf = 138543874;
        v20 = v11;
        v21 = 2048;
        selfCopy3 = self;
        v23 = 2112;
        v24 = v6;
        v12 = "Error: %{public}@ <%p>: Error encoding anchor data during recording: %@";
        v13 = v9;
        v14 = OS_LOG_TYPE_INFO;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = objc_opt_new();
      [v9 setAnchorData:v5];
      [v9 setEventType:13];
      identifier = [anchorCopy identifier];
      [v9 setUuid:identifier];

      [v9 setTimestamp:CACurrentMediaTime()];
      [(MOVWriterInterface *)self->_writer processCVAUserEvent:v9];
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (void)_startRecording
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ([(ARRecordingTechniquePublic *)self state])
  {
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Attempted to start recording more than once";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v4 = ARErrorWithCodeAndUserInfo(1001, v3);
    [(ARRecordingTechniquePublic *)self _fail:v4];
  }

  else
  {
    v5 = _ARLogTechnique_11();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = v7;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Starting recording", &buf, 0x16u);
    }

    [(ARRecordingTechniquePublic *)self removeTemporaryVideoFile];
    v8 = objc_alloc(MEMORY[0x1E698BEC8]);
    outputFileURL = self->_outputFileURL;
    createFileMetadata = [(ARRecordingTechniquePublic *)self createFileMetadata];
    v11 = [v8 initWithFileURL:outputFileURL expectedFrameRate:createFileMetadata fileSummary:self->_recordingQueue callbackQueue:60.0];
    writer = self->_writer;
    self->_writer = v11;

    [(MOVWriterInterface *)self->_writer setInterface_delegate:self];
    makeDeviceString = [MEMORY[0x1E698BEC8] makeDeviceString];
    [(MOVWriterInterface *)self->_writer setDeviceString:makeDeviceString];

    CMTimeMake(&v15, 5, 1);
    v14 = self->_writer;
    buf = v15;
    [(MOVWriterInterface *)v14 setMovieFragmentInterval:&buf];
    [(ARRecordingTechniquePublic *)self setupSensorTracks];
    [(ARRecordingTechniquePublic *)self setupCustomTrack];
    [(ARRecordingTechniquePublic *)self setState:1];
  }
}

- (void)setupSensorTracks
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
  currentOrientation = [v3 currentOrientation];

  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  ARVideoTransformForDeviceOrientation(currentOrientation, &v59);
  writer = self->_writer;
  *asbd = v59;
  *&asbd[16] = v60;
  *&asbd[32] = v61;
  [(MOVWriterInterface *)writer setVideoTransform:asbd];
  parentImageSensorSettings = self->_parentImageSensorSettings;
  if (parentImageSensorSettings)
  {
    selfCopy = self;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    settings = [(ARParentImageSensorSettings *)parentImageSensorSettings settings];
    v8 = [settings countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v56;
      v12 = *MEMORY[0x1E6986930];
      framesPerSecond = -1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(settings);
          }

          v14 = *(*(&v55 + 1) + 8 * i);
          videoFormat = [v14 videoFormat];
          v16 = videoFormat;
          if (videoFormat)
          {
            deviceFormat = [videoFormat deviceFormat];
            isVisionDataDeliverySupported = [deviceFormat isVisionDataDeliverySupported];

            v10 |= isVisionDataDeliverySupported;
            captureDeviceType = [v16 captureDeviceType];
            v20 = [captureDeviceType isEqualToString:v12];

            if (v20)
            {
              framesPerSecond = [v16 framesPerSecond];
            }

            else if ([v14 isEnabled])
            {
              captureDeviceType2 = [v16 captureDeviceType];
              v22 = ARStreamIdentifierForDeviceTypeAndPosition(captureDeviceType2, [v16 captureDevicePosition]);

              [(MOVWriterInterface *)selfCopy->_writer registerStreamID:v22 withConfigObject:0];
              [(MOVWriterInterface *)selfCopy->_writer registerMetadataID:v22];
            }
          }
        }

        v9 = [settings countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
      framesPerSecond = -1;
    }

    self = selfCopy;
  }

  else
  {
    [(MOVWriterInterface *)self->_writer registerStreamID:@"mdta/com.apple.arkit.stream.arimagedata" withConfigObject:0];
    [(MOVWriterInterface *)self->_writer registerMetadataID:@"mdta/com.apple.arkit.arimagedata"];
    v10 = 0;
    framesPerSecond = -1;
  }

  if (self->_recordPearlDepthData && (self->_sensorDataTypes & 0x20) != 0)
  {
    [(MOVWriterInterface *)self->_writer registerCVADepthIR];
  }

  if ([(ARRecordingTechniquePublic *)self expectAudioData])
  {
    if ([MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E69875A0]] == 3)
    {
      *asbd = 0x40E5888000000000;
      *&asbd[24] = xmmword_1C25C8B40;
      *&asbd[8] = xmmword_1C25C8B50;
      formatDescriptionOut = 0;
      CMAudioFormatDescriptionCreate(0, asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
      v23 = self->_writer;
      v24 = formatDescriptionOut;
      [MEMORY[0x1E69AD978] audioNoneEncoderConfig];
      v26 = v25 = self;
      [(MOVWriterInterface *)v23 addTrackForStreamWithIdentifier:@"mdta/com.apple.arkit.stream.araudio" formatDescription:v24 recordingConfiguration:v26];

      self = v25;
      CFRelease(formatDescriptionOut);
    }

    else
    {
      v27 = _ARLogTechnique_11();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *asbd = 138543618;
        *&asbd[4] = v29;
        *&asbd[12] = 2048;
        *&asbd[14] = self;
        _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not add audio track since user has not granted microphone access to the app.", asbd, 0x16u);
      }
    }
  }

  [(MOVWriterInterface *)self->_writer registerAccelerometer];
  [(MOVWriterInterface *)self->_writer registerGyro];
  if ((self->_sensorDataTypes & 0x400) != 0)
  {
    [(MOVWriterInterface *)self->_writer registerCompass];
  }

  [(MOVWriterInterface *)self->_writer registerDeviceMotion];
  if ((self->_sensorDataTypes & 0x40) != 0)
  {
    [(MOVWriterInterface *)self->_writer registerLocation];
  }

  [(MOVWriterInterface *)self->_writer registerCVACameraCalibrationData];
  if ((+[ARWorldTrackingConfiguration backdropCameraOverride]== 0) | v10 & 1)
  {
    [(MOVWriterInterface *)self->_writer registerCVAFeatureBuffer];
  }

  if (ARDeviceSupportsJasper())
  {
    [(MOVWriterInterface *)self->_writer setDepthTOFTrackName:*MEMORY[0x1E698BF28]];
    [(MOVWriterInterface *)self->_writer registerCVADepthTOF];
    if (framesPerSecond >= 1)
    {
      v30 = self->_writer;
      v62 = *MEMORY[0x1E698BF20];
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v63 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v33 = *MEMORY[0x1E698BEF8];
      v53 = 0;
      LOBYTE(v30) = [(MOVWriterInterface *)v30 setTrackMetadata:v32 forMetadataStream:v33 error:&v53];
      v34 = v53;

      if (v30)
      {
        goto LABEL_54;
      }

      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v42 = ARShouldUseLogTypeError_internalOSVersion_15;
      v43 = _ARLogTechnique_11();
      v38 = v43;
      if (v42 == 1)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          *asbd = 138543874;
          *&asbd[4] = v45;
          *&asbd[12] = 2048;
          *&asbd[14] = self;
          *&asbd[22] = 2112;
          *&asbd[24] = v34;
          v46 = "%{public}@ <%p>: Unable to set jasper FPS metadata: %@";
          v47 = v38;
          v48 = OS_LOG_TYPE_ERROR;
LABEL_52:
          _os_log_impl(&dword_1C241C000, v47, v48, v46, asbd, 0x20u);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v50 = objc_opt_class();
        v45 = NSStringFromClass(v50);
        *asbd = 138543874;
        *&asbd[4] = v45;
        *&asbd[12] = 2048;
        *&asbd[14] = self;
        *&asbd[22] = 2112;
        *&asbd[24] = v34;
        v46 = "Error: %{public}@ <%p>: Unable to set jasper FPS metadata: %@";
        v47 = v38;
        v48 = OS_LOG_TYPE_INFO;
        goto LABEL_52;
      }

LABEL_53:

      goto LABEL_54;
    }

    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v35 = ARShouldUseLogTypeError_internalOSVersion_15;
    v36 = _ARLogTechnique_11();
    v34 = v36;
    if (v35 == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *asbd = 138543618;
        *&asbd[4] = v38;
        *&asbd[12] = 2048;
        *&asbd[14] = self;
        v39 = "%{public}@ <%p>: Unable to get jasper FPS metadata";
        v40 = v34;
        v41 = OS_LOG_TYPE_ERROR;
LABEL_49:
        _os_log_impl(&dword_1C241C000, v40, v41, v39, asbd, 0x16u);
        goto LABEL_53;
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v49 = objc_opt_class();
      v38 = NSStringFromClass(v49);
      *asbd = 138543618;
      *&asbd[4] = v38;
      *&asbd[12] = 2048;
      *&asbd[14] = self;
      v39 = "Error: %{public}@ <%p>: Unable to get jasper FPS metadata";
      v40 = v34;
      v41 = OS_LOG_TYPE_INFO;
      goto LABEL_49;
    }

LABEL_54:
  }

  if (ARInternalOSBuild())
  {
    [(MOVWriterInterface *)self->_writer registerCVAUserEvent];
    if (self->_recordCollaborationData)
    {
      [(MOVWriterInterface *)self->_writer registerCMData];
    }
  }
}

- (void)setupCustomTrack
{
  if (self->_expectCustomData)
  {
    [(MOVWriterInterface *)self->_writer registerMetadataID:@"mdta/com.apple.arkit.customdata"];
  }
}

- (id)createFileMetadata
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sensorDataTypes];
  [v3 setObject:v4 forKeyedSubscript:@"mdta/com.apple.arkit.arsensordatatypeinformation"];

  v5 = AROSVersionString();
  [v3 setObject:v5 forKeyedSubscript:@"mdta/com.apple.arkit.osversion"];

  v6 = ARVersionStringForIdentifier(@"com.apple.ARKit");
  [v3 setObject:v6 forKeyedSubscript:@"mdta/com.apple.arkit.arkitversion"];

  [v3 setObject:self->_customUserData forKeyedSubscript:@"mdta/com.apple.arkit.customuserdata"];

  return v3;
}

- (void)writeTimeOfFlightData:(id)data
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    if (![(ARRecordingTechniquePublic *)self allowedToWrite])
    {
      Class = object_getClass(dataCopy);
      v11 = NSStringFromClass(Class);
      [dataCopy timestamp];
      *buf = 0;
      v6 = v11;
      [v6 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v6, "length"), 0}];

      *buf = 0;
      [@"NotStart" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotStart", "length"), 0}];
      kdebug_trace();
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v12 = ARShouldUseLogTypeError_internalOSVersion_15;
      v13 = _ARLogTechnique_11();
      v9 = v13;
      if (v12 == 1)
      {
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138544130;
        *&buf[4] = v15;
        v31 = 2048;
        selfCopy4 = self;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v6;
        v17 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v18 = v9;
        v19 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }

        v20 = objc_opt_class();
        v15 = NSStringFromClass(v20);
        v16 = NSStringFromSelector(a2);
        *buf = 138544130;
        *&buf[4] = v15;
        v31 = 2048;
        selfCopy4 = self;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v6;
        v17 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v18 = v9;
        v19 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v18, v19, v17, buf, 0x2Au);

      goto LABEL_22;
    }

    v6 = dataCopy;
    v7 = objc_alloc(MEMORY[0x1E698BEA0]);
    pointCloudData = [v6 pointCloudData];
    [v6 timestamp];
    v9 = [v7 initWithAVPointCloudData:pointCloudData timestamp:?];

    if (v9)
    {
      [(MOVWriterInterface *)self->_writer processCVADepthTOF:v9];
LABEL_22:

      goto LABEL_23;
    }

    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic writeTimeOfFlightData:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_15;
    v22 = _ARLogTechnique_11();
    v23 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138543618;
        *&buf[4] = v25;
        v31 = 2048;
        selfCopy4 = self;
        v26 = "%{public}@ <%p>: Failed to make CVADepthTOF for pointCloudData";
        v27 = v23;
        v28 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_1C241C000, v27, v28, v26, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v25 = NSStringFromClass(v29);
      *buf = 138543618;
      *&buf[4] = v25;
      v31 = 2048;
      selfCopy4 = self;
      v26 = "Error: %{public}@ <%p>: Failed to make CVADepthTOF for pointCloudData";
      v27 = v23;
      v28 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)writeSensorData:(id)data
{
  v38 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    if ([(ARRecordingTechniquePublic *)self allowedToWrite])
    {
      v6 = objc_opt_class();
      v7 = ARMetadataIdentifierForARSensorDataClass(v6, 1);
      if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [dataCopy appendToWriter:self->_writer];
LABEL_24:

        goto LABEL_25;
      }

      Class = object_getClass(dataCopy);
      v20 = NSStringFromClass(Class);
      [dataCopy timestamp];
      *buf = 0;
      v12 = v20;
      [v12 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:[v12 length], 0];

      *buf = 0;
      [@"BadClass" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"BadClass", "length"), 0}];
      kdebug_trace();
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v21 = ARShouldUseLogTypeError_internalOSVersion_15;
      v22 = _ARLogTechnique_11();
      v14 = v22;
      if (v21 == 1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = NSStringFromSelector(a2);
          *buf = 138544130;
          *&buf[4] = v24;
          v32 = 2048;
          selfCopy4 = self;
          v34 = 2112;
          v35 = v25;
          v36 = 2112;
          v37 = v12;
          v26 = "%{public}@ <%p>: Tried to call %@ with %@ which we don't have support for";
          v27 = v14;
          v28 = OS_LOG_TYPE_ERROR;
LABEL_21:
          _os_log_impl(&dword_1C241C000, v27, v28, v26, buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v24 = NSStringFromClass(v30);
        v25 = NSStringFromSelector(a2);
        *buf = 138544130;
        *&buf[4] = v24;
        v32 = 2048;
        selfCopy4 = self;
        v34 = 2112;
        v35 = v25;
        v36 = 2112;
        v37 = v12;
        v26 = "Error: %{public}@ <%p>: Tried to call %@ with %@ which we don't have support for";
        v27 = v14;
        v28 = OS_LOG_TYPE_INFO;
        goto LABEL_21;
      }

LABEL_22:

      goto LABEL_23;
    }

    v8 = object_getClass(dataCopy);
    v9 = NSStringFromClass(v8);
    [dataCopy timestamp];
    *buf = 0;
    v7 = v9;
    [v7 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:[v7 length], 0];

    *buf = 0;
    [@"NotStart" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotStart", "length"), 0}];
    kdebug_trace();
    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_15;
    v11 = _ARLogTechnique_11();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        *buf = 138544130;
        *&buf[4] = v14;
        v32 = 2048;
        selfCopy4 = self;
        v34 = 2112;
        v35 = v15;
        v36 = 2112;
        v37 = v7;
        v16 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v17 = v12;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, buf, 0x2Au);

        goto LABEL_22;
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v14 = NSStringFromClass(v29);
      v15 = NSStringFromSelector(a2);
      *buf = 138544130;
      *&buf[4] = v14;
      v32 = 2048;
      selfCopy4 = self;
      v34 = 2112;
      v35 = v15;
      v36 = 2112;
      v37 = v7;
      v16 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
      v17 = v12;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_25:
}

- (void)writeImageData:(id)data
{
  v56 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    allowedToWrite = [(ARRecordingTechniquePublic *)self allowedToWrite];
    [dataCopy timestamp];
    if (allowedToWrite)
    {
      kdebug_trace();
      if ([(ARRecordingTechniquePublic *)self state]== 1 && self->_writerReady)
      {
        [dataCopy timestamp];
        self->_sessionSourceTime = v7;
        [(ARRecordingTechniquePublic *)self setState:2];
        dispatch_activate(self->_timeSensitiveQueue);
        v8 = _ARLogTechnique_11();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138543618;
          *&buf[4] = v10;
          *&buf[12] = 2048;
          *&buf[14] = self;
          _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Writer is now running", buf, 0x16u);
        }
      }

      cameraType = [dataCopy cameraType];
      v12 = ARStreamIdentifierForDeviceTypeAndPosition(cameraType, [dataCopy cameraPosition]);

      v13 = v12;
      v14 = v13;
      if (self->_parentImageSensorSettings)
      {
        v15 = v13;
      }

      else
      {
        v15 = @"mdta/com.apple.arkit.stream.arimagedata";

        v28 = @"mdta/com.apple.arkit.arimagedata";
        v14 = v28;
      }

      [(MOVWriterInterface *)self->_writer processNSCoderObject:dataCopy metadataID:v14];
      if ([dataCopy visionData])
      {
        v29 = objc_alloc(MEMORY[0x1E698BEA8]);
        visionData = [dataCopy visionData];
        [dataCopy timestamp];
        v31 = [v29 initWithPixelBufferRef:visionData timestamp:v15 streamID:?];
        [(MOVWriterInterface *)self->_writer processCVAFeatureBuffer:v31];
      }

      v52 = 0uLL;
      v53 = 0;
      v32 = MEMORY[0x1E698BEC8];
      [dataCopy timestamp];
      [v32 cmTimeFromTimestamp:?];
      v55 = 0u;
      memset(buf, 0, sizeof(buf));
      [dataCopy cameraIntrinsics];
      *&buf[8] = v33;
      *&buf[24] = v34;
      *buf = v35;
      *&buf[16] = v36;
      DWORD2(v55) = v37;
      *&v55 = v38;
      writer = self->_writer;
      pixelBuffer = [dataCopy pixelBuffer];
      [dataCopy exposureDuration];
      v50 = v52;
      v51 = v53;
      [(MOVWriterInterface *)writer processPixelBuffer:pixelBuffer withTimeStamp:&v50 intrinsics:buf exposureTime:v15 streamID:?];
      if (self->_recordPearlDepthData)
      {
        depthData = [dataCopy depthData];

        if (depthData)
        {
          depthData2 = [dataCopy depthData];
          [dataCopy depthDataTimestamp];
          v44 = v43;
          captureDevice = [dataCopy captureDevice];
          [(ARRecordingTechniquePublic *)self writePearlDepthData:depthData2 withTimestamp:captureDevice fromCaptureDevice:v44];
        }
      }

      calibrationData = [dataCopy calibrationData];

      if (calibrationData)
      {
        v47 = objc_alloc(MEMORY[0x1E698BE90]);
        calibrationData2 = [dataCopy calibrationData];
        [dataCopy timestamp];
        v49 = [v47 initWithAVCameraCalibrationData:calibrationData2 timestamp:v15 streamID:?];

        [(MOVWriterInterface *)self->_writer processCVACameraCalibrationData:v49];
      }

      [dataCopy timestamp];
      kdebug_trace();

      goto LABEL_27;
    }

    *buf = 0;
    [@"ARImageData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"ARImageData", "length"), 0}];
    *buf = 0;
    [@"NotStart" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotStart", "length"), 0}];
    kdebug_trace();
    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v16 = ARShouldUseLogTypeError_internalOSVersion_15;
    v17 = _ARLogTechnique_11();
    v15 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        Class = object_getClass(dataCopy);
        v22 = NSStringFromClass(Class);
        *buf = 138544130;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        *&buf[24] = v20;
        LOWORD(v55) = 2112;
        *(&v55 + 2) = v22;
        v23 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v24 = v15;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_1C241C000, v24, v25, v23, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v19 = NSStringFromClass(v26);
      v20 = NSStringFromSelector(a2);
      v27 = object_getClass(dataCopy);
      v22 = NSStringFromClass(v27);
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      *&buf[24] = v20;
      LOWORD(v55) = 2112;
      *(&v55 + 2) = v22;
      v23 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
      v24 = v15;
      v25 = OS_LOG_TYPE_INFO;
      goto LABEL_17;
    }

LABEL_27:
  }
}

- (void)writePearlDepthData:(id)data withTimestamp:(double)timestamp fromCaptureDevice:(id)device
{
  v49[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dispatch_assert_queue_V2(self->_recordingQueue);
  depthDataMap = [dataCopy depthDataMap];
  if (!depthDataMap)
  {
    v14 = _ARLogTechnique_11();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v17 = NSStringFromClass(v21);
      v42 = 138543618;
      v43 = v17;
      v44 = 2048;
      selfCopy7 = self;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Depth data has NULL depthDataMap, not writing Pearl frame", &v42, 0x16u);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v9 = depthDataMap;
  pearlFixedPointUnsigned13_3PixelBuffer = self->_pearlFixedPointUnsigned13_3PixelBuffer;
  if (!pearlFixedPointUnsigned13_3PixelBuffer)
  {
    v22 = *MEMORY[0x1E695E480];
    Width = CVPixelBufferGetWidth(depthDataMap);
    Height = CVPixelBufferGetHeight(v9);
    v48 = *MEMORY[0x1E69660D8];
    v49[0] = MEMORY[0x1E695E0F8];
    v25 = CVPixelBufferCreate(v22, Width, Height, 0x31332E33u, [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1], &self->_pearlFixedPointUnsigned13_3PixelBuffer);
    if (v25)
    {
      v26 = v25;
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v27 = ARShouldUseLogTypeError_internalOSVersion_15;
      v28 = _ARLogTechnique_11();
      v14 = v28;
      if (v27 == 1)
      {
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v42 = 138543874;
        v43 = v30;
        v44 = 2048;
        selfCopy7 = self;
        v46 = 1024;
        v47 = v26;
        v31 = "%{public}@ <%p>: Failed to create 13_3 pixel buffer for transcoding Pearl data, CVReturn=%d";
        v32 = v14;
        v33 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          goto LABEL_36;
        }

        v39 = objc_opt_class();
        v30 = NSStringFromClass(v39);
        v42 = 138543874;
        v43 = v30;
        v44 = 2048;
        selfCopy7 = self;
        v46 = 1024;
        v47 = v26;
        v31 = "Error: %{public}@ <%p>: Failed to create 13_3 pixel buffer for transcoding Pearl data, CVReturn=%d";
        v32 = v14;
        v33 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v32, v33, v31, &v42, 0x1Cu);

      goto LABEL_36;
    }

    pearlFixedPointUnsigned13_3PixelBuffer = self->_pearlFixedPointUnsigned13_3PixelBuffer;
  }

  if (ARConvertDepthFloatingPointBufferToFixedPointUnsigned13_3Buffer(v9, pearlFixedPointUnsigned13_3PixelBuffer))
  {
    v11 = self->_pearlFixedPointUnsigned13_3PixelBuffer;
    v12 = *MEMORY[0x1E69914F0];
    v13 = ARDepthRepresentationDictionary(dataCopy);
    CVBufferSetAttachment(v11, v12, v13, kCVAttachmentMode_ShouldPropagate);
    v14 = [objc_alloc(MEMORY[0x1E698BE98]) initWithPixelBufferRef:self->_pearlFixedPointUnsigned13_3PixelBuffer timestamp:timestamp];
    if (!v14)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v34 = ARShouldUseLogTypeError_internalOSVersion_15;
      v35 = _ARLogTechnique_11();
      v17 = v35;
      if (v34 == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v19 = NSStringFromClass(v36);
          v42 = 138543618;
          v43 = v19;
          v44 = 2048;
          selfCopy7 = self;
          v20 = "%{public}@ <%p>: Failed to create CVADepthIR wrapper for writing depth data";
          goto LABEL_24;
        }

LABEL_35:

        goto LABEL_36;
      }

      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v40 = objc_opt_class();
      v19 = NSStringFromClass(v40);
      v42 = 138543618;
      v43 = v19;
      v44 = 2048;
      selfCopy7 = self;
      v20 = "Error: %{public}@ <%p>: Failed to create CVADepthIR wrapper for writing depth data";
LABEL_33:
      v37 = v17;
      v38 = OS_LOG_TYPE_INFO;
      goto LABEL_34;
    }

    if (([(MOVWriterInterface *)self->_writer processCVADepthIR:v14]& 1) == 0)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v15 = ARShouldUseLogTypeError_internalOSVersion_15;
      v16 = _ARLogTechnique_11();
      v17 = v16;
      if (v15 == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v42 = 138543618;
          v43 = v19;
          v44 = 2048;
          selfCopy7 = self;
          v20 = "%{public}@ <%p>: Failed to write a CVADepthIR instance";
LABEL_24:
          v37 = v17;
          v38 = OS_LOG_TYPE_ERROR;
LABEL_34:
          _os_log_impl(&dword_1C241C000, v37, v38, v20, &v42, 0x16u);

          goto LABEL_35;
        }

        goto LABEL_35;
      }

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v41 = objc_opt_class();
      v19 = NSStringFromClass(v41);
      v42 = 138543618;
      v43 = v19;
      v44 = 2048;
      selfCopy7 = self;
      v20 = "Error: %{public}@ <%p>: Failed to write a CVADepthIR instance";
      goto LABEL_33;
    }

LABEL_36:
  }
}

- (void)writeAudioData:(id)data
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dispatch_assert_queue_V2(self->_timeSensitiveQueue);
  [dataCopy timestamp];
  v7 = v6;
  if ([(ARRecordingTechniquePublic *)self finished])
  {
    goto LABEL_19;
  }

  if ([(ARRecordingTechniquePublic *)self state]!= 2)
  {
    *buf = 0;
    [@"ARAudioData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"ARAudioData", "length"), 0}];
    *buf = 0;
    [@"NotRunning" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotRunning", "length"), 0}];
    kdebug_trace();
    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v19 = ARShouldUseLogTypeError_internalOSVersion_15;
    v20 = _ARLogTechnique_11();
    v8 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v10 = NSStringFromClass(v21);
        v11 = NSStringFromSelector(a2);
        Class = object_getClass(dataCopy);
        v13 = NSStringFromClass(Class);
        *buf = 138544130;
        *&buf[4] = v10;
        v27 = 2048;
        selfCopy3 = self;
        v29 = 2112;
        v30 = v11;
        v31 = 2112;
        v32 = v13;
        v15 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v16 = v8;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_16:
        v18 = 42;
LABEL_17:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, v18);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v10 = NSStringFromClass(v23);
      v11 = NSStringFromSelector(a2);
      v24 = object_getClass(dataCopy);
      v13 = NSStringFromClass(v24);
      *buf = 138544130;
      *&buf[4] = v10;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v13;
      v15 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
      v16 = v8;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_16;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (self->_expectAudioData)
  {
    if (v7 >= self->_sessionSourceTime)
    {
      -[MOVWriterInterface appendAudioBuffer:forStream:](self->_writer, "appendAudioBuffer:forStream:", [dataCopy sampleBuffer], @"mdta/com.apple.arkit.stream.araudio");
      goto LABEL_19;
    }

    *buf = 0;
    [@"ARAudioData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"ARAudioData", "length"), 0}];
    *buf = 0;
    [@"OldData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"OldData", "length"), 0}];
    kdebug_trace();
    v8 = _ARLogTechnique_11();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = object_getClass(dataCopy);
    v13 = NSStringFromClass(v12);
    sessionSourceTime = self->_sessionSourceTime;
    *buf = 138544642;
    *&buf[4] = v10;
    v27 = 2048;
    selfCopy3 = self;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v13;
    v33 = 2048;
    v34 = v7;
    v35 = 2048;
    v36 = sessionSourceTime;
    v15 = "%{public}@ <%p>: %@ for %@ metadata with timestamp %f < _sessionSourceTime %f, dropping";
    v16 = v8;
    v17 = OS_LOG_TYPE_DEBUG;
    v18 = 62;
    goto LABEL_17;
  }

  *buf = 0;
  [@"ARAudioData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"ARAudioData", "length"), 0}];
  *buf = 0;
  [@"AudioOff" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"AudioOff", "length"), 0}];
  kdebug_trace();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__ARRecordingTechniquePublic_writeAudioData___block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  if (writeAudioData__onceToken != -1)
  {
    dispatch_once(&writeAudioData__onceToken, block);
  }

LABEL_19:
}

void __45__ARRecordingTechniquePublic_writeAudioData___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (ARShouldUseLogTypeError_onceToken_15 != -1)
  {
    [ARRecordingTechniquePublic writeTimeOfFlightData:];
  }

  v2 = ARShouldUseLogTypeError_internalOSVersion_15;
  v3 = _ARLogTechnique_11();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v8 = "%{public}@ <%p>: You turned on audio data but we're not recording it because it wasn't turned on when you started recording.";
      v9 = v4;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v9, v10, v8, &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v6 = NSStringFromClass(v11);
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v6;
    v15 = 2048;
    v16 = v12;
    v8 = "Error: %{public}@ <%p>: You turned on audio data but we're not recording it because it wasn't turned on when you started recording.";
    v9 = v4;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)writeResultData:(id)data withTimestamp:(double)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [dataCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(dataCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = ARMetadataIdentifierForARRecordableResultsClass(v12);
        [(ARRecordingTechniquePublic *)self processTimeSensitiveNSCoderObject:v11 withTimestamp:v13 metadataID:timestamp];

        ++v10;
      }

      while (v8 != v10);
      v8 = [dataCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)processTimeSensitiveNSCoderObject:(id)object withTimestamp:(double)timestamp metadataID:(id)d
{
  v63 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  dCopy = d;
  dispatch_assert_queue_V2(self->_timeSensitiveQueue);
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    if ([(ARRecordingTechniquePublic *)self state]!= 2)
    {
      Class = object_getClass(objectCopy);
      v12 = NSStringFromClass(Class);
      *buf = 0;
      [v12 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}];
      *buf = 0;
      [@"NotRunning" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotRunning", "length"), 0}];
      kdebug_trace();
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v24 = ARShouldUseLogTypeError_internalOSVersion_15;
      v25 = _ARLogTechnique_11();
      v13 = v25;
      if (v24 == 1)
      {
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v26 = objc_opt_class();
        v15 = NSStringFromClass(v26);
        v16 = NSStringFromSelector(a2);
        v27 = object_getClass(objectCopy);
        v18 = NSStringFromClass(v27);
        *buf = 138544130;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v56 = v16;
        v57 = 2112;
        v58 = v18;
        v20 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v21 = v13;
        v22 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }

        v33 = objc_opt_class();
        v15 = NSStringFromClass(v33);
        v16 = NSStringFromSelector(a2);
        v34 = object_getClass(objectCopy);
        v18 = NSStringFromClass(v34);
        *buf = 138544130;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v56 = v16;
        v57 = 2112;
        v58 = v18;
        v20 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v21 = v13;
        v22 = OS_LOG_TYPE_INFO;
      }

      v35 = 42;
LABEL_20:
      _os_log_impl(&dword_1C241C000, v21, v22, v20, buf, v35);

LABEL_21:
      goto LABEL_22;
    }

    if (self->_sessionSourceTime > timestamp)
    {
      v11 = object_getClass(objectCopy);
      v12 = NSStringFromClass(v11);
      *buf = 0;
      [v12 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}];
      *buf = 0;
      [@"OldData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"OldData", "length"), 0}];
      kdebug_trace();
      v13 = _ARLogTechnique_11();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v17 = object_getClass(objectCopy);
        v18 = NSStringFromClass(v17);
        sessionSourceTime = self->_sessionSourceTime;
        *buf = 138544642;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v56 = v16;
        v57 = 2112;
        v58 = v18;
        v59 = 2048;
        timestampCopy2 = timestamp;
        v61 = 2048;
        v62 = sessionSourceTime;
        v20 = "%{public}@ <%p>: %@ for %@ metadata with timestamp %f < _sessionSourceTime %f, dropping";
        v21 = v13;
        v22 = OS_LOG_TYPE_DEBUG;
LABEL_19:
        v35 = 62;
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    v28 = [(NSMutableDictionary *)self->_lastRecordedTimestamps objectForKeyedSubscript:dCopy];
    [v28 doubleValue];
    v30 = v29;

    if (v30 + 2.22044605e-16 >= timestamp)
    {
      v36 = object_getClass(objectCopy);
      v12 = NSStringFromClass(v36);
      *buf = 0;
      [v12 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}];
      *buf = 0;
      [@"TimeDupe" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"TimeDupe", "length"), 0}];
      kdebug_trace();
      v13 = _ARLogTechnique_11();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v37 = objc_opt_class();
        v15 = NSStringFromClass(v37);
        v16 = NSStringFromSelector(a2);
        v38 = object_getClass(objectCopy);
        v18 = NSStringFromClass(v38);
        *buf = 138544642;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v56 = v16;
        v57 = 2112;
        v58 = v18;
        v59 = 2048;
        timestampCopy2 = timestamp;
        v61 = 2048;
        v62 = v30;
        v20 = "%{public}@ <%p>: %@ for %@ metadata with timestamp %f <= lastTimestamp %f, dropping";
        v21 = v13;
        v22 = OS_LOG_TYPE_INFO;
        goto LABEL_19;
      }

LABEL_22:

      goto LABEL_23;
    }

    v12 = objc_opt_new();
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:0];
    if (v13)
    {
      [v12 addObject:v13];
      memset(buf, 0, sizeof(buf));
      [MEMORY[0x1E698BEC8] cmTimeFromTimestamp:timestamp];
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
      [(NSMutableDictionary *)self->_lastRecordedTimestamps setObject:v31 forKeyedSubscript:dCopy];

      writer = self->_writer;
      v53 = *buf;
      v54 = *&buf[16];
      [(MOVWriterInterface *)writer appendMetadata:v12 withTimeStamp:&v53 toStream:dCopy];
      goto LABEL_22;
    }

    v39 = object_getClass(0);
    v15 = NSStringFromClass(v39);
    *buf = 0;
    [v15 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v15, "length"), 0}];
    *buf = 0;
    [@"Archive" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"Archive", "length"), 0}];
    kdebug_trace();
    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v40 = ARShouldUseLogTypeError_internalOSVersion_15;
    v41 = _ARLogTechnique_11();
    v42 = v41;
    if (v40 == 1)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        v46 = object_getClass(0);
        v47 = NSStringFromClass(v46);
        *buf = 138544130;
        *&buf[4] = v44;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v56 = v45;
        v57 = 2112;
        v58 = v47;
        v48 = "%{public}@ <%p>: Failed to archive data: %@ with %@";
        v49 = v42;
        v50 = OS_LOG_TYPE_ERROR;
LABEL_31:
        _os_log_impl(&dword_1C241C000, v49, v50, v48, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v51 = objc_opt_class();
      v44 = NSStringFromClass(v51);
      v45 = NSStringFromSelector(a2);
      v52 = object_getClass(0);
      v47 = NSStringFromClass(v52);
      *buf = 138544130;
      *&buf[4] = v44;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v56 = v45;
      v57 = 2112;
      v58 = v47;
      v48 = "Error: %{public}@ <%p>: Failed to archive data: %@ with %@";
      v49 = v42;
      v50 = OS_LOG_TYPE_INFO;
      goto LABEL_31;
    }

    goto LABEL_21;
  }

LABEL_23:
}

- (void)_finishRecording
{
  v25[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_timeSensitiveQueue);
  state = [(ARRecordingTechniquePublic *)self state];
  if (state <= 2)
  {
    if (!state)
    {
      v24 = *MEMORY[0x1E696A578];
      v25[0] = @"Attempted to finish without starting";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v15 = ARErrorWithCodeAndUserInfo(1001, v14);
      [(ARRecordingTechniquePublic *)self _fail:v15];

      return;
    }

    if (state == 1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (state == 3)
  {
    return;
  }

  if (state != 4)
  {
LABEL_11:
    [(ARRecordingTechniquePublic *)self setState:3];
    v6 = _ARLogTechnique_11();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v21 = v8;
      v22 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Finish requested", buf, 0x16u);
    }

    writer = self->_writer;
    v17 = 0;
    [(MOVWriterInterface *)writer finishWriting:&v17];
    v10 = v17;
    v11 = v10;
    if (v10)
    {
      v18 = *MEMORY[0x1E696AA08];
      v19 = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = ARErrorWithCodeAndUserInfo(1001, v12);
      [(ARRecordingTechniquePublic *)self _fail:v13];
    }

    return;
  }

  recordingTechniqueDelegate = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    recordingTechniqueDelegate2 = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
    [recordingTechniqueDelegate2 technique:self didFinishWithResult:self->_finishedError];
  }
}

- (void)isReadyToRecord
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  self->_writerReady = 1;
  v3 = _ARLogTechnique_11();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v9 = 138543618;
    v10 = v5;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Writer ready for recording", &v9, 0x16u);
  }

  recordingTechniqueDelegate = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    recordingTechniqueDelegate2 = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
    [recordingTechniqueDelegate2 recordingTechniqueDidBecomeReady:self];
  }
}

- (void)didFailWithError:(id)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  errorCopy = error;
  dispatch_assert_queue_V2(recordingQueue);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = errorCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v7 = ARErrorWithCodeAndUserInfo(1001, v6);
  [(ARRecordingTechniquePublic *)self _fail:v7];
}

- (void)didFinishRecording
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  if (self->_shouldSaveVideoInPhotosLibrary)
  {
    if (objc_opt_respondsToSelector())
    {
      outputFileURL = self->_outputFileURL;

      [(ARRecordingTechniquePublic *)self performSelector:sel__saveVideoInPhotosLibrary_ withObject:outputFileURL];
    }
  }

  else
  {
    v4 = _ARLogTechnique_11();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = self->_outputFileURL;
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      selfCopy = self;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Saved video to file at %@.", &v8, 0x20u);
    }

    [(ARRecordingTechniquePublic *)self _finish:0];
  }
}

- (ARRecordingTechniqueDelegate)recordingTechniqueDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingTechniqueDelegate);

  return WeakRetained;
}

@end