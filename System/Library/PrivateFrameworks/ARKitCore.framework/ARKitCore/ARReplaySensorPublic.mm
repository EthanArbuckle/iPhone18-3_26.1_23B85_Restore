@interface ARReplaySensorPublic
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime;
- (ARReplaySensorDelegate)replaySensorDelegate;
- (ARReplaySensorPublic)initWithDataFromFile:(id)file;
- (ARReplaySensorPublic)initWithSequenceURL:(id)l manualReplay:(BOOL)replay synchronousMode:(BOOL)mode;
- (ARReplaySensorPublic)initWithSequenceURL:(id)l replayMode:(int64_t)mode;
- (ARSensorDelegate)delegate;
- (ARSession)session;
- (BOOL)isEqual:(id)equal;
- (BOOL)readNextFrameFromStream:(id)stream forWrapper:(id)wrapper;
- (CGSize)imageResolution;
- (double)_getMinFrameDurationForStream:(id)stream;
- (double)currentTime;
- (id)_cameraCalibrationDataForStream:(id)stream timestamp:(double)timestamp;
- (id)_mainVideoStringID:(id)d;
- (id)_populateCalibrationStream:(id)stream timestamp:(double)timestamp;
- (id)_streamIdentifierForCaptureDeviceType:(id)type position:(int64_t)position;
- (id)availableVideoFormatForDeviceType:(id)type position:(int64_t)position;
- (id)customDataForTimestamp:(double)timestamp;
- (id)getItemsFromStream:(id)stream upToMovieTime:(double)time converter:(id)converter;
- (id)getItemsFromStream:(id)stream upToMovieTime:(double)time metadataClass:(Class)class;
- (id)getNextWrappedImageDataForReplay;
- (id)getNextWrappedItemsFromStream:(id)stream converter:(id)converter;
- (id)getWrappedItemsFromPixelBufferStream:(id)stream upToMovieTime:(double)time converter:(id)converter;
- (id)getWrappedItemsFromStream:(id)stream upToMovieTime:(double)time converter:(id)converter;
- (id)getWrappedItemsFromStream:(id)stream upToMovieTime:(double)time withBlock:(id)block;
- (id)imageDataToReplayForTimestamp:(double)timestamp;
- (id)keyedArchiveConverter:(Class)converter;
- (id)keyedArchiveConverterForClasses:(id)classes;
- (id)metadataWrapperConverter:(Class)converter;
- (id)peekNextWrappedImageDataForAllRequiredStreams;
- (id)peekNextWrappedImageDataForStreamIdentifier:(id)identifier;
- (void)_appendCalibrationData:(id)data streamIdentifier:(id)identifier;
- (void)_appendVisionDataToImageData:(id)data streamIdentifier:(id)identifier;
- (void)_didOutputSensorData:(id)data;
- (void)_endReplay;
- (void)_populateDepthDataForImageData:(id)data;
- (void)_populateDeviceOrientationIfNeededOnImageData:(id)data fromDeviceOrientationData:(id)orientationData accelerometerData:(id)accelerometerData streamIdentifier:(id)identifier;
- (void)_replaySensorFinishedReplayingData;
- (void)advance;
- (void)advanceFrame;
- (void)dealloc;
- (void)endInterruption;
- (void)failWithError:(id)error;
- (void)interrupt;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReplay;
- (void)readAndVendCMDatasUntil:(double)until;
- (void)readAndVendCVADepthTOFsUntil:(double)until;
- (void)readAndVendCVAUserEventsUntil:(double)until;
- (void)readFileMetadata;
- (void)setImageIndex:(int)index;
- (void)start;
- (void)startReplayIfNeeded;
- (void)stop;
- (void)tick;
@end

@implementation ARReplaySensorPublic

- (ARReplaySensorPublic)initWithDataFromFile:(id)file
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:file];
  v5 = [(ARReplaySensorPublic *)self initWithSequenceURL:v4 replayMode:0];

  return v5;
}

- (ARReplaySensorPublic)initWithSequenceURL:(id)l manualReplay:(BOOL)replay synchronousMode:(BOOL)mode
{
  if (replay)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  mode = [(ARReplaySensorPublic *)self initWithSequenceURL:l replayMode:v5, mode];

  return mode;
}

- (ARReplaySensorPublic)initWithSequenceURL:(id)l replayMode:(int64_t)mode
{
  v160 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v150 = 0;
  v7 = [objc_alloc(MEMORY[0x1E698BEC0]) initWithFileURL:lCopy error:&v150];
  v8 = v150;
  if (v7)
  {
    v149.receiver = self;
    v149.super_class = ARReplaySensorPublic;
    v9 = [(ARReplaySensorPublic *)&v149 init];
    if (!v9)
    {
LABEL_89:
      self = v9;
      selfCopy = self;
      goto LABEL_90;
    }

    v10 = objc_opt_new();
    v11 = *(v9 + 48);
    *(v9 + 48) = v10;

    [*(v9 + 48) setRecordingFormat:3];
    lastPathComponent = [lCopy lastPathComponent];
    [*(v9 + 48) setFileName:lastPathComponent];

    *(v9 + 63) = replayModeByApplyingUserDefaultOverrides(mode);
    v13 = [lCopy copy];
    v14 = *(v9 + 57);
    *(v9 + 57) = v13;

    objc_storeStrong(v9 + 10, v7);
    *(v9 + 71) = 0;
    v9[427] = 1;
    getAllStreams = [*(v9 + 10) getAllStreams];
    v16 = [getAllStreams mutableCopy];

    v17 = *MEMORY[0x1E698BEF0];
    [v16 removeObject:*MEMORY[0x1E698BEF0]];
    array = [MEMORY[0x1E695DF70] array];
    v19 = *(v9 + 74);
    *(v9 + 74) = array;

    array2 = [MEMORY[0x1E695DF70] array];
    v21 = *(v9 + 72);
    *(v9 + 72) = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    v23 = *(v9 + 73);
    *(v9 + 73) = array3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v25 = *(v9 + 51);
    *(v9 + 51) = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v27 = *(v9 + 52);
    *(v9 + 52) = dictionary2;

    v28 = [*(v9 + 10) containsMetadataStream:*MEMORY[0x1E698BF00]];
    if (v28)
    {
      LOBYTE(v28) = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replaySensor.replayVisionData"];
    }

    v9[426] = v28;
    v29 = [*(v9 + 10) containsStream:v17];
    v141 = v8;
    v143 = v7;
    if (v29)
    {
      LOBYTE(v29) = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replaySensor.replayPearlDepthData"];
    }

    v9[424] = v29;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v30 = v16;
    v31 = [v30 countByEnumeratingWithState:&v145 objects:v151 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v146;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v146 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v145 + 1) + 8 * i);
          array4 = [MEMORY[0x1E695DF70] array];
          [*(v9 + 51) setObject:array4 forKeyedSubscript:v35];

          array5 = [MEMORY[0x1E695DF70] array];
          [*(v9 + 52) setObject:array5 forKeyedSubscript:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v145 objects:v151 count:16];
      }

      while (v32);
    }

    v9[425] = 0;
    v38 = [v9 _mainVideoStringID:v30];
    v39 = *(v9 + 67);
    *(v9 + 67) = v38;

    v40 = [MEMORY[0x1E695DFD8] setWithArray:v30];
    v41 = *(v9 + 17);
    *(v9 + 17) = v40;

    v42 = MEMORY[0x1E695DFD8];
    getAllMetadataStreams = [*(v9 + 10) getAllMetadataStreams];
    v44 = [v42 setWithArray:getAllMetadataStreams];
    v45 = *(v9 + 18);
    *(v9 + 18) = v44;

    [v9 readFileMetadata];
    v46 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.arreplaysensor.timerQueue");
    v47 = *(v9 + 5);
    *(v9 + 5) = v46;

    v9[72] = 0;
    if (objc_opt_respondsToSelector())
    {
      [v9 performSelector:sel__subscribeToBackgroundNotifications];
    }

    v48 = buf;
    if (*(v9 + 63) == 3)
    {
      v49 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.session.replay.filepath"];
      v9[8] = v49 != 0;

      if (v9[8])
      {
        [v9 advanceToFrameIndex:{+[ARKitUserDefaults integerForKey:](ARKitUserDefaults, "integerForKey:", @"com_apple_arkit_replay_filepath_advanceToFrame"}];
        [ARKitUserDefaults floatForKey:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"];
        [v9 setAdvanceFramesPerSecondMultiplier:?];
        appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
        [appleGlobalDomain addObserver:v9 forKeyPath:@"com_apple_arkit_replay_filepath_advanceToFrame" options:1 context:0];
        [appleGlobalDomain addObserver:v9 forKeyPath:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier" options:1 context:0];
        v51 = _ARLogSensor_5();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          *buf = 138543618;
          v153 = v53;
          v154 = 2048;
          selfCopy2 = v9;
          _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using manual command line mode.", buf, 0x16u);
        }
      }
    }

    else
    {
      v9[8] = 0;
    }

    v9[88] = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replay.display.synchronization.marker", v141, v143];
    *(v9 + 12) = [ARKitUserDefaults integerForKey:@"com.apple.arkit.replay.display.synchronization.marker.frameCount"];
    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.replaySensor.cropFrames"])
    {
      [v9 imageResolution];
      if (v59 == 1920.0 && v58 == 1440.0)
      {
        v60 = [[ARImageCroppingTechnique alloc] initWithCroppedImageSize:1920.0, 1080.0];
        v61 = *(v9 + 16);
        *(v9 + 16) = v60;

        *(v9 + 600) = xmmword_1C25C84C0;
        v62 = _ARLogSensor_5();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          v65 = *(v9 + 75);
          v66 = *(v9 + 76);
          *buf = 138544130;
          v153 = v64;
          v154 = 2048;
          selfCopy2 = v9;
          v156 = 2048;
          v157 = v65;
          v158 = 2048;
          v159 = v66;
          _os_log_impl(&dword_1C241C000, v62, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Frames will be cropped to %.0f x %.0f", buf, 0x2Au);
        }
      }
    }

    v67 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.jasper.replayFramerate"];
    if (v67)
    {
      v68 = [MEMORY[0x1E696AD98] numberWithInteger:v67];
      [*(v9 + 10) setDepthOutputFrameRate:v68];

      v69 = _ARLogSensor_5();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = objc_opt_class();
        v71 = NSStringFromClass(v70);
        depthOutputFrameRate = [*(v9 + 10) depthOutputFrameRate];
        *buf = 138543874;
        v153 = v71;
        v154 = 2048;
        selfCopy2 = v9;
        v156 = 2112;
        v157 = depthOutputFrameRate;
        _os_log_impl(&dword_1C241C000, v69, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting jasper replay rate to: %@ fps", buf, 0x20u);
      }
    }

    *(v9 + 30) = 0;
    v73 = @"JasperCamera";
    v74 = *MEMORY[0x1E6990C88];
    if ([*(v9 + 10) containsStream:v73] & 1) != 0 || (objc_msgSend(*(v9 + 10), "containsStream:", v74))
    {
      v75 = 1;
    }

    else
    {
      if (([*(v9 + 10) containsMetadataStream:*MEMORY[0x1E698BEF8]] & 1) == 0 && (objc_msgSend(*(v9 + 10), "containsMetadataStream:", *MEMORY[0x1E698BF28]) & 1) == 0 && !objc_msgSend(*(v9 + 10), "containsMetadataStream:", *MEMORY[0x1E698BF30]))
      {
LABEL_43:
        if (!ARDeviceSupportsJasper())
        {
          goto LABEL_76;
        }

        grabJasperExtrinsics = [*(v9 + 10) grabJasperExtrinsics];
        v77 = grabJasperExtrinsics;
        if (grabJasperExtrinsics)
        {
          v78 = [grabJasperExtrinsics objectForKeyedSubscript:*(v9 + 67)];
          v79 = v78;
          if (v78)
          {
            v80 = ARMatrix4x3FromNSData(v78);
            *(v9 + 66) = v81;
            *(v9 + 32) = v80;
            *(v9 + 70) = v82;
            *(v9 + 74) = v83;
            *(v9 + 34) = v84;
            *(v9 + 36) = v85;
            *(v9 + 78) = v86;
            *(v9 + 38) = v87;
          }

          if (ARDeviceSupportsUltraWideCamera())
          {
            v88 = [v9 _streamIdentifierForCaptureDeviceType:*MEMORY[0x1E6986948] position:1];
            v89 = [v77 objectForKeyedSubscript:v88];

            if (v89)
            {
              v90 = ARMatrix4x3FromNSData(v89);
              *(v9 + 82) = v91;
              *(v9 + 40) = v90;
              *(v9 + 86) = v92;
              *(v9 + 42) = v93;
              *(v9 + 90) = v94;
              *(v9 + 44) = v95;
              *(v9 + 94) = v96;
              v79 = v89;
              *(v9 + 46) = v97;
            }

            else
            {
              v79 = 0;
            }

            v48 = buf;
          }
        }

        else
        {
          v98 = v74;
          if (ARShouldUseLogTypeError_onceToken_4 != -1)
          {
            [ARReplaySensorPublic initWithSequenceURL:replayMode:];
          }

          v99 = ARShouldUseLogTypeError_internalOSVersion_4;
          v100 = _ARLogSensor_5();
          v79 = v100;
          if (v99 == 1)
          {
            v74 = v98;
            if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_60;
            }

            v101 = objc_opt_class();
            v102 = NSStringFromClass(v101);
            *buf = 138543618;
            v153 = v102;
            v154 = 2048;
            selfCopy2 = v9;
            v103 = "%{public}@ <%p>: Unable to get extrinsics to TOF sensor.";
            v104 = v79;
            v105 = OS_LOG_TYPE_ERROR;
          }

          else
          {
            v74 = v98;
            if (!os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
            {
              goto LABEL_60;
            }

            v106 = objc_opt_class();
            v102 = NSStringFromClass(v106);
            *buf = 138543618;
            v153 = v102;
            v154 = 2048;
            selfCopy2 = v9;
            v103 = "Error: %{public}@ <%p>: Unable to get extrinsics to TOF sensor.";
            v104 = v79;
            v105 = OS_LOG_TYPE_INFO;
          }

          _os_log_impl(&dword_1C241C000, v104, v105, v103, buf, 0x16u);
        }

LABEL_60:

        if ([*(v9 + 10) grabSWToWExtrinsics:v9 + 176])
        {
LABEL_75:

LABEL_76:
          v134 = _ARLogSensor_5();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
          {
            v135 = objc_opt_class();
            v136 = NSStringFromClass(v135);
            v137 = NSStringFromARReplayMode(*(v9 + 63));
            *buf = 138544130;
            v153 = v136;
            v154 = 2048;
            selfCopy2 = v9;
            v156 = 2112;
            v157 = v137;
            v158 = 2112;
            v159 = lCopy;
            _os_log_impl(&dword_1C241C000, v134, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Initialized: ReplayMode: %@, URL:%@", buf, 0x2Au);
          }

          [*(v9 + 48) setRecordedSensorTypes:*(v9 + 62)];
          [*(v9 + 48) setArkitVersion:*(v9 + 60)];
          [*(v9 + 48) setOsVersion:*(v9 + 59)];
          [*(v9 + 48) setDeviceModel:*(v9 + 58)];
          v138 = *(v9 + 30);
          if (v9[425] == 1)
          {
            v8 = v142;
            v7 = v144;
            if (v138 == 1)
            {
              v139 = 6;
              goto LABEL_87;
            }

            if (v138 == 2)
            {
              v139 = 7;
LABEL_87:
              [*(v9 + 48) setRecordingFormat:v139];
            }
          }

          else
          {
            v8 = v142;
            v7 = v144;
            if (v138 == 1)
            {
              v139 = 4;
              goto LABEL_87;
            }

            if (v138 == 2)
            {
              v139 = 5;
              goto LABEL_87;
            }
          }

          [ARSessionMetrics recordReplayMetrics:*(v9 + 48)];

          goto LABEL_89;
        }

        v107 = v74;
        if (ARShouldUseLogTypeError_onceToken_4 != -1)
        {
          [ARReplaySensorPublic initWithSequenceURL:replayMode:];
        }

        v108 = ARShouldUseLogTypeError_internalOSVersion_4;
        v109 = _ARLogSensor_5();
        v110 = v109;
        if (v108 == 1)
        {
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v111 = objc_opt_class();
            v112 = NSStringFromClass(v111);
            *buf = 138543618;
            v153 = v112;
            v154 = 2048;
            selfCopy2 = v9;
            v113 = "%{public}@ <%p>: Unable to get extrinsics from ultrawide to wide, using default hardcoded extrinsics";
            v114 = v110;
            v115 = OS_LOG_TYPE_ERROR;
LABEL_68:
            _os_log_impl(&dword_1C241C000, v114, v115, v113, buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
        {
          v116 = objc_opt_class();
          v112 = NSStringFromClass(v116);
          *buf = 138543618;
          v153 = v112;
          v154 = 2048;
          selfCopy2 = v9;
          v113 = "Error: %{public}@ <%p>: Unable to get extrinsics from ultrawide to wide, using default hardcoded extrinsics";
          v114 = v110;
          v115 = OS_LOG_TYPE_INFO;
          goto LABEL_68;
        }

        deviceString = [*(v9 + 10) deviceString];
        v74 = v107;
        if (deviceString && ([*(v9 + 10) deviceString], v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "isEqualToString:", @"ST2")))
        {
          v118 = ARST2UltrawideToWideExtrinsics();
          *(v9 + 46) = v119;
          *(v9 + 22) = v118;
          *(v9 + 50) = v120;
          *(v9 + 54) = v121;
          *(v9 + 24) = v122;
          *(v9 + 26) = v123;
          *(v9 + 58) = v124;
          *(v9 + 28) = v125;
        }

        else
        {
          ARUltrawideToWideExtrinsics();
          *(v9 + 46) = v126;
          *(v9 + 22) = v127;
          *(v9 + 50) = v128;
          *(v9 + 54) = v129;
          *(v9 + 24) = v130;
          *(v9 + 26) = v131;
          *(v9 + 58) = v132;
          *(v9 + 28) = v133;
          if (!deviceString)
          {
LABEL_74:

            goto LABEL_75;
          }
        }

        goto LABEL_74;
      }

      v75 = 2;
    }

    *(v9 + 30) = v75;
    goto LABEL_43;
  }

  v54 = _ARLogSensor_5();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    *buf = 138544130;
    v153 = v56;
    v154 = 2048;
    selfCopy2 = self;
    v156 = 2112;
    v157 = lCopy;
    v158 = 2112;
    v159 = v8;
    _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create MOVStreamReader from URL: %@. Error: %@", buf, 0x2Au);
  }

  selfCopy = 0;
LABEL_90:

  return selfCopy;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v11 = v5;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  [(ARReplaySensorPublic *)self _endReplay];
  if (self->_manualCommandLineMode)
  {
    appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
    [appleGlobalDomain removeObserver:self forKeyPath:@"com_apple_arkit_replay_filepath_advanceToFrame"];
    [appleGlobalDomain removeObserver:self forKeyPath:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"];
  }

  CVPixelBufferRelease(self->_depthFloat32PixelBuffer);
  CVPixelBufferRelease(self->_synchronizationMarker);
  CVPixelBufferPoolRelease(self->_synchronizationMarkerPool);
  synchronizationTransferSession = self->_synchronizationTransferSession;
  if (synchronizationTransferSession)
  {
    VTPixelTransferSessionInvalidate(synchronizationTransferSession);
    v8 = self->_synchronizationTransferSession;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9.receiver = self;
  v9.super_class = ARReplaySensorPublic;
  [(ARReplaySensorPublic *)&v9 dealloc];
}

- (id)_mainVideoStringID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  firstObject = [dCopy firstObject];
  if ([dCopy count] >= 2 && ((objc_msgSend(firstObject, "isEqualToString:", @"JasperCamera") & 1) != 0 || objc_msgSend(firstObject, "isEqualToString:", *MEMORY[0x1E6990C88])))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = dCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = *MEMORY[0x1E6990C80];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 isEqualToString:{v10, v15}])
          {
            v13 = v12;

            self->_usingST2Recording = 1;
            firstObject = v13;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return firstObject;
}

- (id)availableVideoFormatForDeviceType:(id)type position:(int64_t)position
{
  v24 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = [(ARReplaySensorPublic *)self _streamIdentifierForCaptureDeviceType:typeCopy position:position];
  if ([(NSSet *)self->_availableVideoStreams containsObject:v7])
  {
    [(MOVReaderInterface *)self->_reader getSizeForStream:v7];
    v9 = v8;
    v11 = v10;
    v12 = [(MOVReaderInterface *)self->_reader getOutputPixelFormatForStream:v7];
    if ([typeCopy isEqualToString:*MEMORY[0x1E6986948]])
    {
      v13 = &unk_1F4258E30;
    }

    else
    {
      v13 = &unk_1F4258E48;
    }

    v14 = [[ARVideoFormat alloc] initWithImageResolution:position captureDevicePosition:typeCopy captureDeviceType:v13 frameRatesByPowerUsage:v12 pixelFormat:v9, v11];
LABEL_6:
    v15 = v14;
    goto LABEL_13;
  }

  if ([(NSSet *)self->_availableVideoStreams count]== 1 && ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(typeCopy))
  {
    v16 = _ARLogSensor_5();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v20 = 138543618;
      v21 = v18;
      v22 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: stream identifier not found in the recording, please use new recording format.", &v20, 0x16u);
    }

    v14 = [[ARVideoFormat alloc] initWithImageResolution:position captureDevicePosition:typeCopy captureDeviceType:self->_imageResolution.width, self->_imageResolution.height];
    goto LABEL_6;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: start", buf, 0x16u);
  }

  replayQueue = self->_replayQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__ARReplaySensorPublic_start__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_sync(replayQueue, block);
}

void __29__ARReplaySensorPublic_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareForReplay];
  *(*(a1 + 32) + 72) = 1;
  *(*(a1 + 32) + 73) = 0;
  [*(a1 + 32) startReplayIfNeeded];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 sensorDidStart:*(a1 + 32)];
  }
}

- (void)stop
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: stop", buf, 0x16u);
  }

  replayQueue = self->_replayQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__ARReplaySensorPublic_stop__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_async(replayQueue, block);
}

uint64_t __28__ARReplaySensorPublic_stop__block_invoke(uint64_t result)
{
  *(*(result + 32) + 72) = 0;
  *(*(result + 32) + 73) = 1;
  return result;
}

- (void)interrupt
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: interrupt", buf, 0x16u);
  }

  replayQueue = self->_replayQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ARReplaySensorPublic_interrupt__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_sync(replayQueue, block);
}

void __33__ARReplaySensorPublic_interrupt__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72) == 1)
  {
    *(v1 + 73) = 1;
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 sensorDidPause:*(a1 + 32)];
    }
  }
}

- (void)endInterruption
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: endInterruption", buf, 0x16u);
  }

  replayQueue = self->_replayQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ARReplaySensorPublic_endInterruption__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_sync(replayQueue, block);
}

void __39__ARReplaySensorPublic_endInterruption__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[72] == 1)
  {
    [v2 prepareForReplay];
    [*(a1 + 32) startReplayIfNeeded];
    *(*(a1 + 32) + 73) = 0;
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 sensorDidRestart:*(a1 + 32)];
    }
  }
}

- (void)advanceFrame
{
  if (self->_running)
  {
    if (self->_replayMode)
    {
      block[5] = v2;
      block[6] = v3;
      replayQueue = self->_replayQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__ARReplaySensorPublic_advanceFrame__block_invoke;
      block[3] = &unk_1E817BFE8;
      block[4] = self;
      dispatch_sync(replayQueue, block);
    }
  }
}

- (id)customDataForTimestamp:(double)timestamp
{
  v4 = timestamp - self->_recordTimestampToMovieTimestampDifference;
  customDataClasses = [(ARReplaySensorPublic *)self customDataClasses];
  v6 = [(ARReplaySensorPublic *)self keyedArchiveConverterForClasses:customDataClasses];
  v7 = [(ARReplaySensorPublic *)self getItemsFromStream:@"mdta/com.apple.arkit.customdata" upToMovieTime:v6 converter:v4];
  lastObject = [v7 lastObject];

  return lastObject;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"com_apple_arkit_replay_filepath_advanceToFrame"])
  {
    [ARKitUserDefaults removeCachedObjectForKey:@"com_apple_arkit_replay_filepath_advanceToFrame"];
    [(ARReplaySensorPublic *)self advanceToFrameIndex:[ARKitUserDefaults integerForKey:@"com_apple_arkit_replay_filepath_advanceToFrame"]];
  }

  else if ([pathCopy isEqualToString:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"])
  {
    [ARKitUserDefaults removeCachedObjectForKey:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"];
    [ARKitUserDefaults floatForKey:@"com_apple_arkit_replay_filepath_advanceFramesPerSecondMultiplier"];
    [(ARReplaySensorPublic *)self setAdvanceFramesPerSecondMultiplier:?];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ARReplaySensorPublic;
    [(ARReplaySensorPublic *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    sequenceURL = self->_sequenceURL;
    v7 = (sequenceURL == v5[57] || [(NSURL *)sequenceURL isEqual:?]) && self->_replayMode == v5[63];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prepareForReplay
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([(NSSet *)self->_availableVideoStreams count]== 1)
  {
    [v3 addObject:self->_mainVideoStreamIdentifier];
    goto LABEL_19;
  }

  v59 = v3;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  settings = [(ARParentImageSensorSettings *)self->_parentImageSensorSettings settings];
  v6 = [settings countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = *v66;
  v9 = *MEMORY[0x1E6986930];
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v66 != v8)
      {
        objc_enumerationMutation(settings);
      }

      v11 = *(*(&v65 + 1) + 8 * i);
      videoFormat = [v11 videoFormat];
      v13 = videoFormat;
      if (videoFormat)
      {
        captureDeviceType = [videoFormat captureDeviceType];
        v15 = [captureDeviceType isEqualToString:v9];

        if ((v15 & 1) == 0)
        {
          if ([v11 isEnabled])
          {
            captureDeviceType2 = [v13 captureDeviceType];
            v17 = -[ARReplaySensorPublic _streamIdentifierForCaptureDeviceType:position:](selfCopy, "_streamIdentifierForCaptureDeviceType:position:", captureDeviceType2, [v13 captureDevicePosition]);

            if ([(ARReplaySensorPublic *)selfCopy _allStreamsAreAvailable:v17])
            {
              [v59 addObject:v17];

              goto LABEL_13;
            }

            v25 = ARErrorWithCodeAndUserInfo(101, 0);
            if (ARShouldUseLogTypeError_onceToken_4 != -1)
            {
              [ARReplaySensorPublic initWithSequenceURL:replayMode:];
            }

            v3 = v59;
            v49 = ARShouldUseLogTypeError_internalOSVersion_4;
            v50 = _ARLogSensor_5();
            v51 = v50;
            if (v49 == 1)
            {
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v52 = objc_opt_class();
                v53 = NSStringFromClass(v52);
                *buf = 138544130;
                *&buf[4] = v53;
                *&buf[12] = 2048;
                *&buf[14] = selfCopy;
                *&buf[22] = 2112;
                v70 = v17;
                v71 = 2112;
                v72 = v25;
                v54 = "%{public}@ <%p>: Recording doesn't have all the required (%@) video streams: %@";
                v55 = v51;
                v56 = OS_LOG_TYPE_ERROR;
LABEL_43:
                _os_log_impl(&dword_1C241C000, v55, v56, v54, buf, 0x2Au);
              }
            }

            else if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v58 = objc_opt_class();
              v53 = NSStringFromClass(v58);
              *buf = 138544130;
              *&buf[4] = v53;
              *&buf[12] = 2048;
              *&buf[14] = selfCopy;
              *&buf[22] = 2112;
              v70 = v17;
              v71 = 2112;
              v72 = v25;
              v54 = "Error: %{public}@ <%p>: Recording doesn't have all the required (%@) video streams: %@";
              v55 = v51;
              v56 = OS_LOG_TYPE_INFO;
              goto LABEL_43;
            }

            [(ARReplaySensorPublic *)selfCopy failWithError:v25];
            goto LABEL_45;
          }
        }
      }

LABEL_13:
    }

    v7 = [settings countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_15:

  self = selfCopy;
  v3 = v59;
  if (!selfCopy->_parentImageSensorSettings)
  {
    v18 = _ARLogSensor_5();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = selfCopy;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: No image sensor settings defined, adding all available streams", buf, 0x16u);
    }

    allObjects = [(NSSet *)selfCopy->_availableVideoStreams allObjects];
    [v59 addObjectsFromArray:allObjects];
  }

LABEL_19:
  objc_storeStrong(&self->_videoStreamsToReplay, v3);
  startTime = self->_startTime;
  reader = self->_reader;
  if (startTime == 0.0)
  {
    v64 = 0;
    *buf = *MEMORY[0x1E6960CC0];
    *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
    [(MOVReaderInterface *)reader resetReaderTo:buf error:&v64];
    v24 = v64;
  }

  else
  {
    [(ARReplaySensorPublic *)self currentCMTime];
    v63 = 0;
    [(MOVReaderInterface *)reader resetReaderTo:buf error:&v63];
    v24 = v63;
  }

  v25 = v24;
  [(MOVReaderInterface *)self->_reader duration];
  v27 = v26;
  v28 = objc_opt_new();
  nextWrappedImageDataForStreamIdentifierMap = self->_nextWrappedImageDataForStreamIdentifierMap;
  self->_nextWrappedImageDataForStreamIdentifierMap = v28;

  v30 = objc_opt_new();
  metadataCache = self->_metadataCache;
  self->_metadataCache = v30;

  settings = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForAllRequiredStreams];
  v13 = [settings objectForKeyedSubscript:self->_mainVideoStreamIdentifier];
  data = [v13 data];
  [data timestamp];
  v34 = v33;
  [v13 timestamp];
  self->_recordTimestampToMovieTimestampDifference = v34 - v35;

  if (startTime == 0.0)
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __40__ARReplaySensorPublic_prepareForReplay__block_invoke;
    v60[3] = &unk_1E817C038;
    v61 = v13;
    v62 = v27;
    v36 = MEMORY[0x1C691B4C0](v60);
    replaySensorDelegate = [(ARReplaySensorPublic *)self replaySensorDelegate];
    (v36)[2](v36, replaySensorDelegate);

    traceReplaySensorDelegate = [(ARReplaySensorPublic *)self traceReplaySensorDelegate];
    (v36)[2](v36, traceReplaySensorDelegate);
  }

  if (v25)
  {
    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v39 = ARShouldUseLogTypeError_internalOSVersion_4;
    v40 = _ARLogSensor_5();
    v41 = v40;
    if (v39 == 1)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        *buf = 138543874;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v70 = v25;
        v44 = "%{public}@ <%p>: Error reseting reader: %@";
        v45 = v41;
        v46 = OS_LOG_TYPE_ERROR;
        goto LABEL_39;
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v57 = objc_opt_class();
      v43 = NSStringFromClass(v57);
      *buf = 138543874;
      *&buf[4] = v43;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v70 = v25;
      v44 = "Error: %{public}@ <%p>: Error reseting reader: %@";
      v45 = v41;
      v46 = OS_LOG_TYPE_INFO;
LABEL_39:
      _os_log_impl(&dword_1C241C000, v45, v46, v44, buf, 0x20u);
    }

    [(ARReplaySensorPublic *)self failWithError:v25];
  }

  else
  {
    v17 = _ARLogSensor_5();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *buf = 138543618;
      *&buf[4] = v48;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reset reader", buf, 0x16u);
    }

LABEL_45:
  }
}

void __40__ARReplaySensorPublic_prepareForReplay__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) data];
    [v4 timestamp];
    v6 = v5;

    v7 = v6 + *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__ARReplaySensorPublic_prepareForReplay__block_invoke_2;
    block[3] = &unk_1E817C010;
    v9 = v3;
    v10 = v6;
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)startReplayIfNeeded
{
  if (!self->_replayStarted)
  {
    self->_replayStarted = 1;
    [(ARReplaySensorPublic *)self setImageIndex:0];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    self->_startTime = v4;

    self->_tick = 0;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, self->_replayQueue);
    timer = self->_timer;
    self->_timer = v5;

    dispatch_source_set_timer(self->_timer, 0, 0x7F2815uLL, 0);
    objc_initWeak(&location, self);
    v7 = self->_timer;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__ARReplaySensorPublic_startReplayIfNeeded__block_invoke;
    v8[3] = &unk_1E817BD88;
    objc_copyWeak(&v9, &location);
    dispatch_source_set_event_handler(v7, v8);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __43__ARReplaySensorPublic_startReplayIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tick];
}

- (double)currentTime
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v5 = v4 - self->_startTime;

  return v5;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime
{
  [(ARReplaySensorPublic *)self currentTime];

  return CMTimeMakeWithSeconds(retstr, v4, 1000);
}

- (void)_endReplay
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: endReplay", &v10, 0x16u);
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v7 = self->_timer;
    self->_timer = 0;
  }

  metadataCache = self->_metadataCache;
  self->_metadataCache = 0;

  atomic_store(1u, &self->_finishedReplaying);
  depthContainer = self->_depthContainer;
  self->_depthContainer = 0;
}

uint64_t __54__ARReplaySensorPublic_wrappedImageDataOrderedByTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)tick
{
  if (self->_running && !self->_interrupted)
  {
    if (self->_replayMode != 3 || [(ARReplaySensorPublic *)self targetFrameIndex]< 0 || (v3 = [(ARReplaySensorPublic *)self imageIndex], [(ARReplaySensorPublic *)self targetFrameIndex]>= v3))
    {
      ++self->_tick;
      [(ARReplaySensorPublic *)self currentTime];
      v5 = v4;
      kdebug_trace();
      if (self->_replayMode == 1)
      {
        [(ARReplaySensorPublic *)self advance];

        kdebug_trace();
      }

      else
      {
        peekNextWrappedImageDataForAllRequiredStreams = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForAllRequiredStreams];
        v19 = peekNextWrappedImageDataForAllRequiredStreams;
        if (peekNextWrappedImageDataForAllRequiredStreams && [peekNextWrappedImageDataForAllRequiredStreams count] && (objc_msgSend(v19, "objectForKeyedSubscript:", self->_mainVideoStreamIdentifier), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
        {
          if (self->_replayMode)
          {
            v8 = [v19 objectForKeyedSubscript:self->_mainVideoStreamIdentifier];
            data = [v8 data];
            captureFramesPerSecond = [data captureFramesPerSecond];
            [(ARReplaySensorPublic *)self advanceFramesPerSecondMultiplier];
            v12 = v11;
            v13 = v11 == 0.0;
            v14 = 1.0;
            if (!v13)
            {
              v14 = v12;
            }

            v15 = v14 * captureFramesPerSecond;

            v16 = (120.0 / v15);
            if (v16 <= 1)
            {
              v16 = 1;
            }

            if (!(self->_tick % v16))
            {
              [(ARReplaySensorPublic *)self advance];
            }
          }

          else
          {
            while (1)
            {
              v17 = [(ARReplaySensorPublic *)self imageDataToReplayForTimestamp:v5];
              v18 = [v17 count];

              if (!v18)
              {
                break;
              }

              [(ARReplaySensorPublic *)self advance];
            }
          }
        }

        else
        {
          [(ARReplaySensorPublic *)self _endReplay];
          [(ARReplaySensorPublic *)self _replaySensorFinishedReplayingData];
        }

        kdebug_trace();
      }
    }
  }
}

- (void)advance
{
  v155 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  getNextWrappedImageDataForReplay = [(ARReplaySensorPublic *)self getNextWrappedImageDataForReplay];
  if (![getNextWrappedImageDataForReplay count])
  {
    [(ARReplaySensorPublic *)self _endReplay];
    [(ARReplaySensorPublic *)self _replaySensorFinishedReplayingData];
    kdebug_trace();
    goto LABEL_78;
  }

  v4 = [getNextWrappedImageDataForReplay objectForKeyedSubscript:self->_mainVideoStreamIdentifier];
  v114 = getNextWrappedImageDataForReplay;
  allValues = [getNextWrappedImageDataForReplay allValues];
  v6 = [(ARReplaySensorPublic *)self wrappedImageDataOrderedByTime:allValues];

  v112 = v6;
  lastObject = [v6 lastObject];
  [lastObject timestamp];
  v9 = v8;

  croppingTechnique = self->_croppingTechnique;
  if (croppingTechnique && v4)
  {
    data = [v4 data];
    v12 = [(ARImageCroppingTechnique *)croppingTechnique processData:data];
    [v4 setData:v12];
  }

  v13 = [(MOVReaderInterface *)self->_reader resolvedAccelStreamName:0];
  [(ARReplaySensorPublic *)self getItemsFromStream:v13 upToMovieTime:objc_opt_class() metadataClass:v9];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v14 = v146 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v143 objects:v154 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v144;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v144 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v143 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        [v19 timestamp];
        v22 = v21;
        [(ARReplaySensorPublic *)self recordingTimeToReplayTimeOffset];
        [v19 setTimestamp:v22 + v23];
        [v19 timestamp];
        kdebug_trace();
        [(ARReplaySensorPublic *)self _didOutputSensorData:v19];
        [v19 timestamp];
        kdebug_trace();
        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v143 objects:v154 count:16];
    }

    while (v16);
  }

  v24 = [(MOVReaderInterface *)self->_reader resolvedGyroStreamName:0];

  [(ARReplaySensorPublic *)self getItemsFromStream:v24 upToMovieTime:objc_opt_class() metadataClass:v9];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = v142 = 0u;
  v25 = [obj countByEnumeratingWithState:&v139 objects:v153 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v140;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v140 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v139 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        [v29 timestamp];
        v32 = v31;
        [(ARReplaySensorPublic *)self recordingTimeToReplayTimeOffset];
        [v29 setTimestamp:v32 + v33];
        [v29 timestamp];
        kdebug_trace();
        [(ARReplaySensorPublic *)self _didOutputSensorData:v29];
        [v29 timestamp];
        kdebug_trace();
        objc_autoreleasePoolPop(v30);
      }

      v26 = [obj countByEnumeratingWithState:&v139 objects:v153 count:16];
    }

    while (v26);
  }

  v34 = [(MOVReaderInterface *)self->_reader resolvedDeviceMotionStreamName:0];

  [(ARReplaySensorPublic *)self getItemsFromStream:v34 upToMovieTime:objc_opt_class() metadataClass:v9];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v35 = v138 = 0u;
  v36 = [v35 countByEnumeratingWithState:&v135 objects:v152 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v136;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v136 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v135 + 1) + 8 * k);
        v41 = objc_autoreleasePoolPush();
        [v40 timestamp];
        v43 = v42;
        [(ARReplaySensorPublic *)self recordingTimeToReplayTimeOffset];
        [v40 setTimestamp:v43 + v44];
        [v40 timestamp];
        kdebug_trace();
        [(ARReplaySensorPublic *)self _didOutputSensorData:v40];
        [v40 timestamp];
        kdebug_trace();
        objc_autoreleasePoolPop(v41);
      }

      v37 = [v35 countByEnumeratingWithState:&v135 objects:v152 count:16];
    }

    while (v37);
  }

  v116 = v35;
  v117 = v14;
  v113 = v4;

  v45 = [(MOVReaderInterface *)self->_reader resolvedLocationStreamName:0];

  v111 = v45;
  [(ARReplaySensorPublic *)self getItemsFromStream:v45 upToMovieTime:objc_opt_class() metadataClass:v9];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v118 = v134 = 0u;
  v123 = [v118 countByEnumeratingWithState:&v131 objects:v151 count:16];
  if (v123)
  {
    v121 = *v132;
    do
    {
      for (m = 0; m != v123; m = m + 1)
      {
        if (*v132 != v121)
        {
          objc_enumerationMutation(v118);
        }

        v47 = *(*(&v131 + 1) + 8 * m);
        v48 = objc_autoreleasePoolPush();
        [v47 timestamp];
        v50 = v49;
        [(ARReplaySensorPublic *)self recordingTimeToReplayTimeOffset];
        [v47 setTimestamp:v50 + v51];
        kdebug_trace();
        [v47 timestamp];
        location = [v47 location];
        [location coordinate];
        location2 = [v47 location];
        [location2 coordinate];
        location3 = [v47 location];
        [location3 horizontalAccuracy];
        kdebug_trace();

        [(ARReplaySensorPublic *)self _didOutputSensorData:v47];
        kdebug_trace();
        kdebug_trace();
        objc_autoreleasePoolPop(v48);
      }

      v123 = [v118 countByEnumeratingWithState:&v131 objects:v151 count:16];
    }

    while (v123);
  }

  if (self->_displaySynchronizationMarker)
  {
    data2 = [v113 data];
    if (data2)
    {
      v56 = data2;
      data3 = [v113 data];
      pixelBuffer = [data3 pixelBuffer];

      if (pixelBuffer)
      {
        if (self->_synchronizationMarker)
        {
          goto LABEL_58;
        }

        data4 = [v113 data];
        [data4 imageResolution];
        v61 = v60;
        data5 = [v113 data];
        [data5 imageResolution];
        ARCreateSynchronizationMarker(v61, v63, &self->_synchronizationMarker);

        data6 = [v113 data];
        [data6 imageResolution];
        LODWORD(data4) = v65;
        data7 = [v113 data];
        [data7 imageResolution];
        LODWORD(data5) = v67;
        data8 = [v113 data];
        PixelFormatType = CVPixelBufferGetPixelFormatType([data8 pixelBuffer]);
        LODWORD(data4) = ar_pixelBufferPoolCreateNew(data4, data5, PixelFormatType, &self->_synchronizationMarkerPool);

        if (!data4)
        {
LABEL_48:
          if (!VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_synchronizationTransferSession))
          {
            goto LABEL_58;
          }

          if (ARShouldUseLogTypeError_onceToken_4 != -1)
          {
            [ARReplaySensorPublic initWithSequenceURL:replayMode:];
          }

          v79 = ARShouldUseLogTypeError_internalOSVersion_4;
          v80 = _ARLogGeneral_1();
          v81 = v80;
          if (v79 == 1)
          {
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              v82 = objc_opt_class();
              v83 = NSStringFromClass(v82);
              *buf = 138543618;
              *&buf[4] = v83;
              v149 = 2048;
              selfCopy4 = self;
              v84 = "%{public}@ <%p>: Could not create transfer session";
              v85 = v81;
              v86 = OS_LOG_TYPE_ERROR;
LABEL_56:
              _os_log_impl(&dword_1C241C000, v85, v86, v84, buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            v87 = objc_opt_class();
            v83 = NSStringFromClass(v87);
            *buf = 138543618;
            *&buf[4] = v83;
            v149 = 2048;
            selfCopy4 = self;
            v84 = "Error: %{public}@ <%p>: Could not create transfer session";
            v85 = v81;
            v86 = OS_LOG_TYPE_INFO;
            goto LABEL_56;
          }

LABEL_58:
          if (self->_displaySynchronizationMarkerFrames >= [(ARReplaySensorPublic *)self imageIndex])
          {
            *buf = 0;
            CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_synchronizationMarkerPool, buf);
            VTPixelTransferSessionTransferImage(self->_synchronizationTransferSession, self->_synchronizationMarker, *buf);
            v88 = *buf;
            data9 = [v113 data];
            [data9 setPixelBuffer:v88];

            CVPixelBufferRelease(*buf);
          }

          goto LABEL_60;
        }

        if (ARShouldUseLogTypeError_onceToken_4 != -1)
        {
          [ARReplaySensorPublic initWithSequenceURL:replayMode:];
        }

        v70 = ARShouldUseLogTypeError_internalOSVersion_4;
        v71 = _ARLogGeneral_1();
        v72 = v71;
        if (v70 == 1)
        {
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v73 = objc_opt_class();
            v74 = NSStringFromClass(v73);
            *buf = 138543618;
            *&buf[4] = v74;
            v149 = 2048;
            selfCopy4 = self;
            v75 = "%{public}@ <%p>: Could not create pixel buffer pool";
            v76 = v72;
            v77 = OS_LOG_TYPE_ERROR;
LABEL_46:
            _os_log_impl(&dword_1C241C000, v76, v77, v75, buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v78 = objc_opt_class();
          v74 = NSStringFromClass(v78);
          *buf = 138543618;
          *&buf[4] = v74;
          v149 = 2048;
          selfCopy4 = self;
          v75 = "Error: %{public}@ <%p>: Could not create pixel buffer pool";
          v76 = v72;
          v77 = OS_LOG_TYPE_INFO;
          goto LABEL_46;
        }

        goto LABEL_48;
      }
    }
  }

LABEL_60:
  allKeys = [v114 allKeys];
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __31__ARReplaySensorPublic_advance__block_invoke;
  v129[3] = &unk_1E817C080;
  v91 = v114;
  v130 = v91;
  v92 = [allKeys sortedArrayUsingComparator:v129];

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v124 = v92;
  v93 = [v124 countByEnumeratingWithState:&v125 objects:v147 count:16];
  v94 = v116;
  if (v93)
  {
    v95 = v93;
    v96 = *v126;
    v120 = *MEMORY[0x1E6986948];
    v115 = *MEMORY[0x1E6986950];
    do
    {
      v97 = 0;
      v122 = v95;
      do
      {
        if (*v126 != v96)
        {
          objc_enumerationMutation(v124);
        }

        v98 = *(*(&v125 + 1) + 8 * v97);
        v99 = objc_autoreleasePoolPush();
        v100 = [v91 objectForKeyedSubscript:v98];
        data10 = [v100 data];
        v102 = data10;
        if (data10 && [data10 pixelBuffer])
        {
          v103 = v96;
          v104 = v91;
          [(ARReplaySensorPublic *)self _appendCalibrationData:v102 streamIdentifier:v98];
          [(ARReplaySensorPublic *)self _appendVisionDataToImageData:v102 streamIdentifier:v98];
          [(ARReplaySensorPublic *)self _populateDepthDataForImageData:v102];
          lastObject2 = [v94 lastObject];
          lastObject3 = [v117 lastObject];
          [(ARReplaySensorPublic *)self _populateDeviceOrientationIfNeededOnImageData:v102 fromDeviceOrientationData:lastObject2 accelerometerData:lastObject3 streamIdentifier:v98];

          [ARImageSensor registerSignPostForImageData:v102];
          [v102 timestamp];
          kdebug_trace();
          cameraType = [v102 cameraType];
          v108 = [cameraType isEqualToString:v120];

          if (v108)
          {
            if (ARMatrix4x3IsZero(*self->_anon_b0, *&self->_anon_b0[16], *&self->_anon_b0[32], *&self->_anon_b0[48]))
            {
              ARWideToUltrawideExtrinsicsForOldRecordings();
            }

            v94 = v116;
            v91 = v104;
            [v102 addExtrinsicMatrix:v115 toDeviceType:?];
          }

          else
          {
            v94 = v116;
            v91 = v104;
          }

          v96 = v103;
          [(ARReplaySensorPublic *)self _didOutputSensorData:v102];
          [v102 timestamp];
          kdebug_trace();
          v95 = v122;
        }

        objc_autoreleasePoolPop(v99);
        ++v97;
      }

      while (v95 != v97);
      v95 = [v124 countByEnumeratingWithState:&v125 objects:v147 count:16];
    }

    while (v95);
  }

  [(ARReplaySensorPublic *)self sourceTimestampForMovieTimestamp:v9];
  v110 = v109;
  if (ARDeviceSupportsJasper())
  {
    [(ARReplaySensorPublic *)self readAndVendCVADepthTOFsUntil:v110];
  }

  [(ARReplaySensorPublic *)self readAndVendCMDatasUntil:v110];
  [(ARReplaySensorPublic *)self readAndVendCVAUserEventsUntil:v110];
  kdebug_trace();

  getNextWrappedImageDataForReplay = v114;
LABEL_78:
}

uint64_t __31__ARReplaySensorPublic_advance__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 data];
  [v9 timestamp];
  v11 = v10;
  v12 = [v8 data];
  [v12 timestamp];
  v14 = v13;

  if (v11 >= v14)
  {
    v16 = [v7 data];
    [v16 timestamp];
    v18 = v17;
    v19 = [v8 data];
    [v19 timestamp];
    v15 = v18 > v20;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (void)_populateDeviceOrientationIfNeededOnImageData:(id)data fromDeviceOrientationData:(id)orientationData accelerometerData:(id)accelerometerData streamIdentifier:(id)identifier
{
  dataCopy = data;
  orientationDataCopy = orientationData;
  accelerometerDataCopy = accelerometerData;
  identifierCopy = identifier;
  if (![dataCopy deviceOrientation])
  {
    if (orientationDataCopy)
    {
      deviceMotion = [orientationDataCopy deviceMotion];
      [deviceMotion gravity];
      v16 = v15;
      v18 = v17;
    }

    else
    {
      if (!accelerometerDataCopy)
      {
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        reader = self->_reader;
        if (reader)
        {
          [(MOVReaderInterface *)reader transformForStream:identifierCopy];
        }

        cameraPosition = [dataCopy cameraPosition];
        v24[0] = v25;
        v24[1] = v26;
        v24[2] = v27;
        v21 = ARDeviceOrientationForCameraPositionAndVideoTransform(cameraPosition, v24);
        goto LABEL_16;
      }

      [accelerometerDataCopy acceleration];
      v16 = v19;
      v18 = v20;
    }

    if (fabs(v16) <= fabs(v18))
    {
      if (v18 <= 0.0)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }

    else if (v16 <= 0.0)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

LABEL_16:
    [dataCopy setDeviceOrientation:v21];
  }
}

- (id)_populateCalibrationStream:(id)stream timestamp:(double)timestamp
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableDictionary *)self->_calibrationBuffer objectForKeyedSubscript:stream];
  if ([(MOVReaderInterface *)self->_reader containsMetadataStream:*MEMORY[0x1E698BEE8]])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allValues = [(NSMutableDictionary *)self->_calibrationBuffer allValues];
    v8 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          lastObject = [v13 lastObject];
          [lastObject timestamp];
          if (v11 <= v15)
          {
            lastObject2 = [v13 lastObject];
            [lastObject2 timestamp];
            v11 = v17;
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v18 = v11 + 0.00000011920929;
    if (v11 + 0.00000011920929 <= timestamp)
    {
      while (1)
      {
        [v6 removeAllObjects];
        grabNextCVACameraCalibrationData = [(MOVReaderInterface *)self->_reader grabNextCVACameraCalibrationData];
        if (![grabNextCVACameraCalibrationData count])
        {
          break;
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v20 = grabNextCVACameraCalibrationData;
        v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v33;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v33 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v32 + 1) + 8 * j);
              calibrationBuffer = self->_calibrationBuffer;
              streamID = [v25 streamID];
              v28 = [(NSMutableDictionary *)calibrationBuffer objectForKeyedSubscript:streamID];
              [v28 addObject:v25];

              [v25 timestamp];
              if (v11 <= v29)
              {
                [v25 timestamp];
                v11 = v30;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v22);
        }

        v18 = v11 + 0.00000011920929;
        if (v11 + 0.00000011920929 > timestamp)
        {
          goto LABEL_27;
        }
      }
    }
  }

LABEL_27:

  return v6;
}

- (id)_cameraCalibrationDataForStream:(id)stream timestamp:(double)timestamp
{
  streamCopy = stream;
  v7 = objc_autoreleasePoolPush();
  v8 = [(ARReplaySensorPublic *)self _populateCalibrationStream:streamCopy timestamp:timestamp];
  if (![v8 count])
  {
    goto LABEL_4;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__ARReplaySensorPublic__cameraCalibrationDataForStream_timestamp___block_invoke;
  v16[3] = &__block_descriptor_40_e41_B32__0__CVACameraCalibrationData_8Q16_B24l;
  *&v16[4] = timestamp;
  v9 = [v8 indexOfObjectPassingTest:v16];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 removeAllObjects];
LABEL_4:

    objc_autoreleasePoolPop(v7);
    v10 = 0;
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v13 = v9;
  v10 = [v8 objectAtIndexedSubscript:v9];
  [v8 removeObjectsInRange:{0, v13}];
  [v10 timestamp];
  v15 = v14 + -0.00000011920929;

  objc_autoreleasePoolPop(v7);
  if (v15 > timestamp)
  {
    goto LABEL_5;
  }

  v10 = v10;
  v11 = v10;
LABEL_6:

  return v11;
}

- (void)_appendVisionDataToImageData:(id)data streamIdentifier:(id)identifier
{
  v70 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  if (self->_shouldReplayVisionData)
  {
    v8 = [(NSMutableDictionary *)self->_featureBuffers objectForKeyedSubscript:identifierCopy];
    v52 = identifierCopy;
    if (v8)
    {
      v51 = dataCopy;
      [dataCopy timestamp];
      v10 = v9;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      allValues = [(NSMutableDictionary *)self->_featureBuffers allValues];
      v12 = [allValues countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v59;
        v15 = 0.0;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v59 != v14)
            {
              objc_enumerationMutation(allValues);
            }

            v17 = *(*(&v58 + 1) + 8 * i);
            lastObject = [v17 lastObject];
            [lastObject timestamp];
            if (v15 <= v19)
            {
              lastObject2 = [v17 lastObject];
              [lastObject2 timestamp];
              v15 = v21;
            }
          }

          v13 = [allValues countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v13);
      }

      else
      {
        v15 = 0.0;
      }

      while (1)
      {
        v31 = v15 + 0.00000011920929;
        if (v15 + 0.00000011920929 > v10)
        {
          break;
        }

        v32 = objc_autoreleasePoolPush();
        [v8 removeAllObjects];
        grabNextFeatureBuffer = [(MOVReaderInterface *)self->_reader grabNextFeatureBuffer];
        if (![grabNextFeatureBuffer count])
        {

          objc_autoreleasePoolPop(v32);
          break;
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v34 = grabNextFeatureBuffer;
        v35 = [v34 countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v55;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v55 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v54 + 1) + 8 * j);
              featureBuffers = self->_featureBuffers;
              sourceStreamID = [v39 sourceStreamID];
              v42 = [(NSMutableDictionary *)featureBuffers objectForKeyedSubscript:sourceStreamID];
              [v42 addObject:v39];

              [v39 timestamp];
              if (v15 <= v43)
              {
                [v39 timestamp];
                v15 = v44;
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v54 objects:v62 count:16];
          }

          while (v36);
        }

        objc_autoreleasePoolPop(v32);
      }

      dataCopy = v51;
      if ([v8 count])
      {
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __70__ARReplaySensorPublic__appendVisionDataToImageData_streamIdentifier___block_invoke;
        v53[3] = &__block_descriptor_40_e33_B32__0__CVAFeatureBuffer_8Q16_B24l;
        *&v53[4] = v10;
        v46 = [v8 indexOfObjectPassingTest:v53];
        if (v46 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v8 removeAllObjects];
        }

        else
        {
          v47 = v46;
          v48 = [v8 objectAtIndexedSubscript:v46];
          [v8 removeObjectsInRange:{0, v47}];
          [v48 timestamp];
          if (v10 >= v49 + -0.00000011920929)
          {
            getPixelBufferCopy = [v48 getPixelBufferCopy];
            [v51 setVisionData:getPixelBufferCopy];
            CVPixelBufferRelease(getPixelBufferCopy);
          }
        }
      }

      goto LABEL_43;
    }

    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic _appendVisionDataToImageData:streamIdentifier:];
    }

    v22 = ARShouldUseLogTypeError_internalOSVersion_4;
    v23 = _ARLogGeneral_1();
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        NSStringFromClass(v25);
        v27 = v26 = dataCopy;
        *buf = 138543874;
        v65 = v27;
        v66 = 2048;
        selfCopy2 = self;
        v68 = 2114;
        v69 = identifierCopy;
        v28 = "%{public}@ <%p>: Missing feature buffers queue for stream '%{public}@', not appending vision data";
        v29 = v24;
        v30 = OS_LOG_TYPE_ERROR;
LABEL_34:
        _os_log_impl(&dword_1C241C000, v29, v30, v28, buf, 0x20u);

        dataCopy = v26;
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v45 = objc_opt_class();
      NSStringFromClass(v45);
      v27 = v26 = dataCopy;
      *buf = 138543874;
      v65 = v27;
      v66 = 2048;
      selfCopy2 = self;
      v68 = 2114;
      v69 = identifierCopy;
      v28 = "Error: %{public}@ <%p>: Missing feature buffers queue for stream '%{public}@', not appending vision data";
      v29 = v24;
      v30 = OS_LOG_TYPE_INFO;
      goto LABEL_34;
    }

LABEL_43:
    identifierCopy = v52;
  }
}

- (void)_appendCalibrationData:(id)data streamIdentifier:(id)identifier
{
  v43 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  if (ARDeviceSupportsJasper())
  {
    isBackUltraWide = [dataCopy isBackUltraWide];
    v10 = 256;
    if (isBackUltraWide)
    {
      v10 = 320;
    }

    v11 = 272;
    if (isBackUltraWide)
    {
      v11 = 336;
    }

    v12 = 288;
    if (isBackUltraWide)
    {
      v12 = 352;
    }

    v13 = 304;
    if (isBackUltraWide)
    {
      v13 = 368;
    }

    [dataCopy addExtrinsicMatrix:*MEMORY[0x1E6986930] toDeviceType:{*(&self->super.isa + v10), *(&self->super.isa + v11), *(&self->super.isa + v12), *(&self->super.isa + v13)}];
  }

  [dataCopy timestamp];
  v14 = [(ARReplaySensorPublic *)self _cameraCalibrationDataForStream:identifierCopy timestamp:?];

  if (v14)
  {
    calibrationData = [v14 calibrationData];
    [dataCopy setCalibrationData:calibrationData];

    calibrationData2 = [dataCopy calibrationData];

    if (!calibrationData2)
    {
      [dataCopy extrinsicMatrixToDeviceType:*MEMORY[0x1E6986930]];
      [v14 setExtrinsicMatrix:?];
      v17 = [MEMORY[0x1E698C160] ar_initWithCVACameraCalibrationData:v14];
      [dataCopy setAdCameraCalibration:v17];

      adCameraCalibration = [dataCopy adCameraCalibration];

      if (!adCameraCalibration)
      {
        v19 = _ARLogSensor_5();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *v42 = 138543618;
          *&v42[4] = v21;
          *&v42[12] = 2048;
          *&v42[14] = self;
          _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CVACameraCalibrationData from recording is missing some info.", v42, 0x16u);
        }
      }
    }
  }

  calibrationData3 = [dataCopy calibrationData];
  if (calibrationData3)
  {
    goto LABEL_18;
  }

  adCameraCalibration2 = [dataCopy adCameraCalibration];

  if (!adCameraCalibration2)
  {
    v24 = _ARLogSensor_5();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *v42 = 138543618;
      *&v42[4] = v26;
      *&v42[12] = 2048;
      *&v42[14] = self;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missing calibration from recording, attempting to use hardcoded calibrations", v42, 0x16u);
    }

    cameraType = [dataCopy cameraType];
    v28 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(cameraType);

    if (v28)
    {
      deviceString = [(MOVReaderInterface *)self->_reader deviceString];
      if (deviceString && (-[MOVReaderInterface deviceString](self->_reader, "deviceString"), v4 = objc_claimAutoreleasedReturnValue(), [v4 isEqualToString:@"ST2"]))
      {
        calibrationData3 = ARST2JasperWideCameraCalibration();
      }

      else
      {
        calibrationData3 = ARJasperWideCameraCalibration();
        if (!deviceString)
        {
          goto LABEL_29;
        }
      }

LABEL_29:
      [calibrationData3 cameraToPlatformTransform];
      [dataCopy addExtrinsicMatrix:*MEMORY[0x1E6986930] toDeviceType:?];
      v30 = [MEMORY[0x1E698C160] ar_calibrationWithImageData:dataCopy adCalibrationData:calibrationData3];
      if (v30)
      {
        v31 = dataCopy;
        v32 = v30;
LABEL_40:
        [v31 setAdCameraCalibration:{v32, *v42, *&v42[16], v43}];

LABEL_18:
        goto LABEL_26;
      }

      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        [ARReplaySensorPublic initWithSequenceURL:replayMode:];
      }

      v33 = ARShouldUseLogTypeError_internalOSVersion_4;
      v34 = _ARLogGeneral_1();
      v35 = v34;
      if (v33 == 1)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *v42 = 138543618;
          *&v42[4] = v37;
          *&v42[12] = 2048;
          *&v42[14] = self;
          v38 = "%{public}@ <%p>: failed to create image adjusted calibration data";
          v39 = v35;
          v40 = OS_LOG_TYPE_ERROR;
LABEL_38:
          _os_log_impl(&dword_1C241C000, v39, v40, v38, v42, 0x16u);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v37 = NSStringFromClass(v41);
        *v42 = 138543618;
        *&v42[4] = v37;
        *&v42[12] = 2048;
        *&v42[14] = self;
        v38 = "Error: %{public}@ <%p>: failed to create image adjusted calibration data";
        v39 = v35;
        v40 = OS_LOG_TYPE_INFO;
        goto LABEL_38;
      }

      v31 = dataCopy;
      v32 = calibrationData3;
      goto LABEL_40;
    }
  }

LABEL_26:
}

- (void)_populateDepthDataForImageData:(id)data
{
  v47 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self->_shouldReplayPearlDepthData)
  {
    v5 = self->_depthContainer;
    [dataCopy timestamp];
    v7 = v6;
    [(CVADepthIR *)v5 timestamp];
    if (v8 + 0.00000011920929 <= v7)
    {
      do
      {
        v9 = objc_autoreleasePoolPush();
        grabNextDepthIR = [(MOVReaderInterface *)self->_reader grabNextDepthIR];
        if (![grabNextDepthIR count])
        {

          objc_autoreleasePoolPop(v9);
          goto LABEL_8;
        }

        lastObject = [grabNextDepthIR lastObject];

        objc_autoreleasePoolPop(v9);
        [lastObject timestamp];
        v5 = lastObject;
      }

      while (v12 + 0.00000011920929 <= v7);
      if (lastObject)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_8:
    lastObject = v5;
    if (!v5)
    {
LABEL_35:

      goto LABEL_36;
    }

LABEL_9:
    [lastObject timestamp];
    if (v7 < v13 + -0.00000011920929)
    {
      objc_storeStrong(&self->_depthContainer, lastObject);
      goto LABEL_35;
    }

    depthContainer = self->_depthContainer;
    self->_depthContainer = 0;

    dataBuffer = [lastObject dataBuffer];
    attachmentMode = kCVAttachmentMode_ShouldNotPropagate;
    v16 = CVBufferCopyAttachment(dataBuffer, *MEMORY[0x1E69914F0], &attachmentMode);
    if (v16)
    {
      depthFloat32PixelBuffer = self->_depthFloat32PixelBuffer;
      if (!depthFloat32PixelBuffer)
      {
        v26 = *MEMORY[0x1E695E480];
        Width = CVPixelBufferGetWidth(dataBuffer);
        Height = CVPixelBufferGetHeight(dataBuffer);
        v29 = CVPixelBufferCreate(v26, Width, Height, 0x66646570u, 0, &self->_depthFloat32PixelBuffer);
        if (v29)
        {
          v30 = v29;
          if (ARShouldUseLogTypeError_onceToken_4 != -1)
          {
            [ARReplaySensorPublic initWithSequenceURL:replayMode:];
          }

          v31 = ARShouldUseLogTypeError_internalOSVersion_4;
          v32 = _ARLogGeneral_1();
          v18 = v32;
          if (v31 == 1)
          {
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_33;
            }

            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            *buf = 138543874;
            v42 = v34;
            v43 = 2048;
            selfCopy4 = self;
            v45 = 1024;
            v46 = v30;
            v35 = "%{public}@ <%p>: Failed to create float32-formatted pixel buffer for transcoding depth frames, CVReturn=%d";
            v36 = v18;
            v37 = OS_LOG_TYPE_ERROR;
          }

          else
          {
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              goto LABEL_33;
            }

            v39 = objc_opt_class();
            v34 = NSStringFromClass(v39);
            *buf = 138543874;
            v42 = v34;
            v43 = 2048;
            selfCopy4 = self;
            v45 = 1024;
            v46 = v30;
            v35 = "Error: %{public}@ <%p>: Failed to create float32-formatted pixel buffer for transcoding depth frames, CVReturn=%d";
            v36 = v18;
            v37 = OS_LOG_TYPE_INFO;
          }

          _os_log_impl(&dword_1C241C000, v36, v37, v35, buf, 0x1Cu);

          goto LABEL_33;
        }

        depthFloat32PixelBuffer = self->_depthFloat32PixelBuffer;
      }

      if (!ARConvertFixedPointUnsigned13_3ToDepthFloat32Buffer(dataBuffer, depthFloat32PixelBuffer))
      {
LABEL_34:

        goto LABEL_35;
      }

      v18 = [objc_alloc(MEMORY[0x1E6987198]) initWithPixelBuffer:self->_depthFloat32PixelBuffer depthMetadataDictionary:v16];
      [dataCopy setDepthData:v18];
LABEL_33:

      goto LABEL_34;
    }

    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v19 = ARShouldUseLogTypeError_internalOSVersion_4;
    v20 = _ARLogGeneral_1();
    v18 = v20;
    if (v19 == 1)
    {
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543618;
      v42 = v22;
      v43 = 2048;
      selfCopy4 = self;
      v23 = "%{public}@ <%p>: Failed to retrieve depth metadata dictionary from depth pixel buffer's attachments";
      v24 = v18;
      v25 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      v38 = objc_opt_class();
      v22 = NSStringFromClass(v38);
      *buf = 138543618;
      v42 = v22;
      v43 = 2048;
      selfCopy4 = self;
      v23 = "Error: %{public}@ <%p>: Failed to retrieve depth metadata dictionary from depth pixel buffer's attachments";
      v24 = v18;
      v25 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v24, v25, v23, buf, 0x16u);

    goto LABEL_33;
  }

LABEL_36:
}

- (void)readAndVendCMDatasUntil:(double)until
{
  v46 = *MEMORY[0x1E69E9840];
  if ([(MOVReaderInterface *)self->_reader containsMetadataStream:*MEMORY[0x1E698BEE0]])
  {
    lastObject = [(NSMutableArray *)self->_cmDataBuffer lastObject];
    [lastObject timestamp];
    v7 = v6;
    while (1)
    {

      if (v7 >= until)
      {
        goto LABEL_16;
      }

      grabNextCMData = [(MOVReaderInterface *)self->_reader grabNextCMData];
      if (![grabNextCMData count])
      {
        break;
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      lastObject = grabNextCMData;
      v9 = [lastObject countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v36;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(lastObject);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            [v13 timestamp];
            if (v14 > v7)
            {
              [(NSMutableArray *)self->_cmDataBuffer addObject:v13];
              [v13 timestamp];
              v7 = v15;
            }
          }

          v10 = [lastObject countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v10);
      }
    }

LABEL_16:
    if (![(NSMutableArray *)self->_cmDataBuffer count])
    {
      return;
    }

    *&v16 = 138543874;
    v33 = v16;
    while (1)
    {
      firstObject = [(NSMutableArray *)self->_cmDataBuffer firstObject];
      [firstObject timestamp];
      if (v18 > until)
      {

        return;
      }

      [(NSMutableArray *)self->_cmDataBuffer removeObjectAtIndex:0];
      if (([firstObject isSent] & 1) == 0)
      {
        break;
      }

LABEL_31:

      if (![(NSMutableArray *)self->_cmDataBuffer count])
      {
        return;
      }
    }

    additionalData = [firstObject additionalData];
    v20 = MEMORY[0x1E696ACD0];
    v21 = objc_opt_class();
    v34 = 0;
    v22 = [v20 ar_unarchivedObjectOfClass:v21 fromData:additionalData error:&v34];
    v23 = v34;
    if (v23)
    {
      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        [ARReplaySensorPublic initWithSequenceURL:replayMode:];
      }

      v24 = ARShouldUseLogTypeError_internalOSVersion_4;
      v25 = _ARLogSensor_5();
      session = v25;
      if (v24 == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = v33;
          v40 = v28;
          v41 = 2048;
          selfCopy2 = self;
          v43 = 2112;
          v44 = v23;
          v29 = session;
          v30 = OS_LOG_TYPE_ERROR;
          v31 = "%{public}@ <%p>: Replay sensor could not decode collaboration data: %@";
LABEL_29:
          _os_log_impl(&dword_1C241C000, v29, v30, v31, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v28 = NSStringFromClass(v32);
        *buf = v33;
        v40 = v28;
        v41 = 2048;
        selfCopy2 = self;
        v43 = 2112;
        v44 = v23;
        v29 = session;
        v30 = OS_LOG_TYPE_INFO;
        v31 = "Error: %{public}@ <%p>: Replay sensor could not decode collaboration data: %@";
        goto LABEL_29;
      }
    }

    else
    {
      session = [(ARReplaySensorPublic *)self session];
      [session updateWithCollaborationData:v22];
    }

    goto LABEL_31;
  }
}

- (void)readAndVendCVADepthTOFsUntil:(double)until
{
  v42 = *MEMORY[0x1E69E9840];
  lastObject = [(NSMutableArray *)self->_cvaDepthTOFBuffer lastObject];
  [lastObject timestamp];
  v7 = v6;
  while (1)
  {

    if (v7 >= until)
    {
      break;
    }

    grabNextDepthTOF = [(MOVReaderInterface *)self->_reader grabNextDepthTOF];
    if (![grabNextDepthTOF count])
    {

      break;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    lastObject = grabNextDepthTOF;
    v9 = [lastObject countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(lastObject);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          [v13 timestamp];
          if (v14 > v7)
          {
            [(NSMutableArray *)self->_cvaDepthTOFBuffer addObject:v13];
            [v13 timestamp];
            v7 = v15;
          }
        }

        v10 = [lastObject countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v10);
    }
  }

  if (![(NSMutableArray *)self->_cvaDepthTOFBuffer count])
  {
    return;
  }

  while (1)
  {
    v16 = objc_autoreleasePoolPush();
    firstObject = [(NSMutableArray *)self->_cvaDepthTOFBuffer firstObject];
    [firstObject timestamp];
    if (v18 > until)
    {
      break;
    }

    [(NSMutableArray *)self->_cvaDepthTOFBuffer removeObjectAtIndex:0];
    projectorMode = [firstObject projectorMode];
    if ((projectorMode - 1) >= 3)
    {
      v20 = 0;
    }

    else
    {
      v20 = projectorMode;
    }

    v21 = [ARPointCloudSensorData alloc];
    pointCloud = [firstObject pointCloud];
    [firstObject timestamp];
    v23 = [(ARPointCloudSensorData *)v21 initWithPointCloudData:pointCloud projectorMode:v20 timestamp:?];

    if (!v23)
    {
      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        [ARReplaySensorPublic initWithSequenceURL:replayMode:];
      }

      v24 = ARShouldUseLogTypeError_internalOSVersion_4;
      v25 = _ARLogSensor_5();
      v26 = v25;
      if (v24 == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = 138543618;
          v38 = v28;
          v39 = 2048;
          selfCopy2 = self;
          v29 = v26;
          v30 = OS_LOG_TYPE_ERROR;
          v31 = "%{public}@ <%p>: Replay sensor couldn't not decode PointCloudSensor data";
          goto LABEL_29;
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v28 = NSStringFromClass(v32);
        *buf = 138543618;
        v38 = v28;
        v39 = 2048;
        selfCopy2 = self;
        v29 = v26;
        v30 = OS_LOG_TYPE_INFO;
        v31 = "Error: %{public}@ <%p>: Replay sensor couldn't not decode PointCloudSensor data";
LABEL_29:
        _os_log_impl(&dword_1C241C000, v29, v30, v31, buf, 0x16u);
      }

      goto LABEL_31;
    }

    [ARDepthSensor registerSignPostForPointCloudData:v23];
    [(ARReplaySensorPublic *)self _didOutputSensorData:v23];
LABEL_31:

    objc_autoreleasePoolPop(v16);
    if (![(NSMutableArray *)self->_cvaDepthTOFBuffer count])
    {
      return;
    }
  }

  objc_autoreleasePoolPop(v16);
}

- (void)readAndVendCVAUserEventsUntil:(double)until
{
  v51 = *MEMORY[0x1E69E9840];
  if ([(MOVReaderInterface *)self->_reader containsMetadataStream:*MEMORY[0x1E698BF08]])
  {
    lastObject = [(NSMutableArray *)self->_userEventBuffer lastObject];
    [lastObject timestamp];
    v7 = v6;
    while (1)
    {

      if (v7 >= until)
      {
        goto LABEL_16;
      }

      grabNextUserEvent = [(MOVReaderInterface *)self->_reader grabNextUserEvent];
      if (![grabNextUserEvent count])
      {
        break;
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      lastObject = grabNextUserEvent;
      v9 = [lastObject countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v41;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v41 != v11)
            {
              objc_enumerationMutation(lastObject);
            }

            v13 = *(*(&v40 + 1) + 8 * i);
            [v13 timestamp];
            if (v14 > v7)
            {
              [(NSMutableArray *)self->_userEventBuffer addObject:v13];
              [v13 timestamp];
              v7 = v15;
            }
          }

          v10 = [lastObject countByEnumeratingWithState:&v40 objects:v50 count:16];
        }

        while (v10);
      }
    }

LABEL_16:
    if (![(NSMutableArray *)self->_userEventBuffer count])
    {
      return;
    }

    *&v16 = 138543874;
    v37 = v16;
    while (1)
    {
      firstObject = [(NSMutableArray *)self->_userEventBuffer firstObject];
      [firstObject timestamp];
      if (v18 > until)
      {

        return;
      }

      [(NSMutableArray *)self->_userEventBuffer removeObjectAtIndex:0];
      if ([firstObject eventType] == 4)
      {
        break;
      }

      if ([firstObject eventType] == 13)
      {
        anchorData = [firstObject anchorData];
        v32 = MEMORY[0x1E696ACD0];
        v33 = objc_opt_class();
        v38 = 0;
        v22 = [v32 ar_unarchivedObjectOfClass:v33 fromData:anchorData error:&v38];
        v23 = v38;
        if (!v23)
        {
          session = [(ARReplaySensorPublic *)self session];
          [session removeAnchor:v22];
          goto LABEL_40;
        }

        if (ARShouldUseLogTypeError_onceToken_4 != -1)
        {
          [ARReplaySensorPublic initWithSequenceURL:replayMode:];
        }

        v34 = ARShouldUseLogTypeError_internalOSVersion_4;
        v35 = _ARLogSensor_5();
        session = v35;
        if (v34 == 1)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
LABEL_25:
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            *buf = v37;
            v45 = v28;
            v46 = 2048;
            selfCopy2 = self;
            v48 = 2112;
            v49 = v23;
            v29 = session;
            v30 = OS_LOG_TYPE_ERROR;
            v31 = "%{public}@ <%p>: Replay sensor could not decode anchor data: %@";
            goto LABEL_39;
          }

LABEL_40:

          goto LABEL_41;
        }

        if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

LABEL_38:
        v36 = objc_opt_class();
        v28 = NSStringFromClass(v36);
        *buf = v37;
        v45 = v28;
        v46 = 2048;
        selfCopy2 = self;
        v48 = 2112;
        v49 = v23;
        v29 = session;
        v30 = OS_LOG_TYPE_INFO;
        v31 = "Error: %{public}@ <%p>: Replay sensor could not decode anchor data: %@";
LABEL_39:
        _os_log_impl(&dword_1C241C000, v29, v30, v31, buf, 0x20u);

        goto LABEL_40;
      }

LABEL_41:

      if (![(NSMutableArray *)self->_userEventBuffer count])
      {
        return;
      }
    }

    anchorData = [firstObject anchorData];
    v20 = MEMORY[0x1E696ACD0];
    v21 = objc_opt_class();
    v39 = 0;
    v22 = [v20 ar_unarchivedObjectOfClass:v21 fromData:anchorData error:&v39];
    v23 = v39;
    if (!v23)
    {
      session = [(ARReplaySensorPublic *)self session];
      [session addAnchor:v22];
      goto LABEL_40;
    }

    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v24 = ARShouldUseLogTypeError_internalOSVersion_4;
    v25 = _ARLogSensor_5();
    session = v25;
    if (v24 == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }
}

- (id)keyedArchiveConverter:(Class)converter
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:converter];
  v5 = [(ARReplaySensorPublic *)self keyedArchiveConverterForClasses:v4];

  return v5;
}

- (id)keyedArchiveConverterForClasses:(id)classes
{
  classesCopy = classes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ARReplaySensorPublic_keyedArchiveConverterForClasses___block_invoke;
  v8[3] = &unk_1E817C0E8;
  v9 = classesCopy;
  selfCopy = self;
  v5 = classesCopy;
  v6 = MEMORY[0x1C691B4C0](v8);

  return v6;
}

id __56__ARReplaySensorPublic_keyedArchiveConverterForClasses___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ARApprovedDecoderClasses();
  v5 = [v4 mutableCopy];

  [v5 unionSet:*(a1 + 32)];
  v22 = 0;
  v6 = [MEMORY[0x1E696ACD0] ar_unarchivedObjectOfClasses:v5 fromData:v3 error:&v22];

  v7 = v22;
  if (!v6)
  {
    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_4;
    v9 = _ARLogSensor_5();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        *buf = 138544130;
        v24 = v12;
        v25 = 2048;
        v26 = v13;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v7;
        v15 = "%{public}@ <%p>: Replay sensor could not unpack %@, %@";
        v16 = v10;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v12 = NSStringFromClass(v18);
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138544130;
      v24 = v12;
      v25 = 2048;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v7;
      v15 = "Error: %{public}@ <%p>: Replay sensor could not unpack %@, %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }

  return v6;
}

- (id)metadataWrapperConverter:(Class)converter
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__ARReplaySensorPublic_metadataWrapperConverter___block_invoke;
  v5[3] = &unk_1E817C110;
  v5[4] = self;
  v5[5] = converter;
  v3 = MEMORY[0x1C691B4C0](v5, a2);

  return v3;
}

id __49__ARReplaySensorPublic_metadataWrapperConverter___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [[v3 alloc] initWithMetadataWrapper:v4];

  if (v5)
  {
    v6 = v5;
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError_onceToken_4 != -1)
  {
    [ARReplaySensorPublic _appendVisionDataToImageData:streamIdentifier:];
  }

  v7 = ARShouldUseLogTypeError_internalOSVersion_4;
  v8 = _ARLogSensor_5();
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v21 = 138543874;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v14 = "%{public}@ <%p>: Replay sensor could not unpack %@";
      v15 = v9;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v11 = NSStringFromClass(v17);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = 138543874;
    v22 = v11;
    v23 = 2048;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    v14 = "Error: %{public}@ <%p>: Replay sensor could not unpack %@";
    v15 = v9;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

LABEL_12:

  return v5;
}

- (id)peekNextWrappedImageDataForAllRequiredStreams
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_videoStreamsToReplay;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForStreamIdentifier:*(*(&v11 + 1) + 8 * v7++), v11];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  nextWrappedImageDataForStreamIdentifierMap = self->_nextWrappedImageDataForStreamIdentifierMap;

  return nextWrappedImageDataForStreamIdentifierMap;
}

- (id)peekNextWrappedImageDataForStreamIdentifier:(id)identifier
{
  v78 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap objectForKeyedSubscript:identifierCopy];

  if (v5)
  {
    lastObject = [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap objectForKeyedSubscript:identifierCopy];
    goto LABEL_44;
  }

  v75 = **&MEMORY[0x1E6960CC0];
  reader = self->_reader;
  v74 = 0;
  v8 = [(MOVReaderInterface *)reader copyNextFrameForStream:identifierCopy timestamp:&v75 error:&v74];
  v9 = v74;
  v10 = v9;
  if (v8)
  {
    time = v75;
    Seconds = CMTimeGetSeconds(&time);
    v12 = identifierCopy;
    v13 = v12;
    if ([(NSSet *)self->_availableVideoStreams count]== 1)
    {
      v13 = v12;
      if (![(NSSet *)self->_availableMetadataStreams containsObject:v12])
      {
        v13 = @"mdta/com.apple.arkit.arimagedata";
      }
    }

    v14 = [(ARReplaySensorPublic *)self keyedArchiveConverter:objc_opt_class()];
    v15 = [(ARReplaySensorPublic *)self getWrappedItemsFromStream:v13 upToMovieTime:v14 converter:Seconds];
    lastObject = [v15 lastObject];

    if (!lastObject)
    {
      v73 = v10;
      lastObject = objc_opt_new();
      v16 = CVBufferCopyAttachments(v8, kCVAttachmentMode_ShouldPropagate);
      [lastObject setTimestamp:Seconds];
      v17 = [[ARImageData alloc] initWithDictionary:v16];
      v18 = AVCaptureDeviceTypeFromStreamIdentifier(v12);
      [(ARImageData *)v17 setCameraType:v18];

      [(ARImageData *)v17 setCameraPosition:AVCaptureDevicePositionFromStreamIdentifier(v12)];
      [(ARImageData *)v17 setCaptureFramesPerSecond:llround(self->_nominalFrameRate)];
      if (self->_usingST2Recording && (v19 = *MEMORY[0x1E6990D40], [(__CFDictionary *)v16 objectForKey:*MEMORY[0x1E6990D40]], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        v21 = [(__CFDictionary *)v16 objectForKey:v19];

        v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E6990FC8]];
        v23 = v22;
        if (v22)
        {
          [v22 doubleValue];
          [(ARImageData *)v17 setExposureDuration:?];
        }

        v72 = v23;
        [(ARImageData *)v17 cameraIntrinsics];
        if (ARMatrix3x3IsZero(v24, v25, v26))
        {
          [(ARImageData *)v17 cameraType];
          v28 = v27 = v21;
          v29 = *MEMORY[0x1E6986948];

          _ZF = v28 == v29;
          v21 = v27;
          if (_ZF)
          {
            v31 = [v27 objectForKey:*MEMORY[0x1E6991150]];
            if (v31)
            {
              v70 = v31;
              v32 = [v31 objectForKeyedSubscript:@"Width"];
              intValue = [v32 intValue];

              v34 = (intValue / 640.0);
              *&v35 = v34 * 245.391312;
              v36 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_n_f64(xmmword_1C25C84D0, v34)));
              *&v37 = v35;
              LODWORD(v38) = 0;
              HIDWORD(v38) = v35;
              __asm { FMOV            V3.2S, #1.0 }

              [(ARImageData *)v17 setCameraIntrinsics:v37, v38, v36];
              v43 = _ARLogSensor_5();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v44 = objc_opt_class();
                v45 = NSStringFromClass(v44);
                LODWORD(time.value) = 138543874;
                *(&time.value + 4) = v45;
                LOWORD(time.flags) = 2048;
                *(&time.flags + 2) = self;
                HIWORD(time.epoch) = 2048;
                v77 = v17;
                _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Falling back to hardcoded intrinsics for UW for %p.", &time, 0x20u);
              }

              v21 = v27;
              v31 = v70;
            }
          }
        }

        v46 = [v21 objectForKeyedSubscript:*MEMORY[0x1E6990EC8]];
        v47 = [v21 objectForKeyedSubscript:*MEMORY[0x1E6990ED0]];
        v48 = v47;
        if (v46 && v47)
        {
          [v46 floatValue];
          v50 = v49;
          [v48 floatValue];
          *&v52 = log2f(v50 / v51);
          [(ARImageData *)v17 setExposureTargetOffset:v52];
        }

        v69 = v48;
        v71 = v46;
        v53 = [v21 objectForKeyedSubscript:*MEMORY[0x1E6991048]];
        v54 = v53;
        if (v53)
        {
          [v53 floatValue];
          [(ARImageData *)v17 setISO:?];
        }

        v55 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69910F8]];
        v56 = v55;
        if (v55)
        {
          [v55 floatValue];
          [(ARImageData *)v17 setSignalToNoiseRatio:?];
        }
      }

      else
      {
        v21 = v16;
      }

      [lastObject setData:v17];

      v10 = v73;
    }

    data = [lastObject data];
    [data setPixelBuffer:v8];

    v65 = CACurrentMediaTime();
    data2 = [lastObject data];
    [data2 setCurrentCaptureTimestamp:v65];

    CVPixelBufferRelease(v8);
    [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap setObject:lastObject forKeyedSubscript:v12];
    goto LABEL_42;
  }

  if (v9)
  {
    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v57 = ARShouldUseLogTypeError_internalOSVersion_4;
    v58 = _ARLogGeneral_1();
    v13 = v58;
    if (v57 == 1)
    {
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        LODWORD(time.value) = 138543874;
        *(&time.value + 4) = v60;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = self;
        HIWORD(time.epoch) = 2112;
        v77 = v10;
        v61 = "%{public}@ <%p>: Could not copyNextFrameForStream: %@";
        v62 = v13;
        v63 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_1C241C000, v62, v63, v61, &time, 0x20u);
      }
    }

    else if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v67 = objc_opt_class();
      v60 = NSStringFromClass(v67);
      LODWORD(time.value) = 138543874;
      *(&time.value + 4) = v60;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2112;
      v77 = v10;
      v61 = "Error: %{public}@ <%p>: Could not copyNextFrameForStream: %@";
      v62 = v13;
      v63 = OS_LOG_TYPE_INFO;
      goto LABEL_40;
    }

    lastObject = 0;
LABEL_42:

    goto LABEL_43;
  }

  lastObject = 0;
LABEL_43:

LABEL_44:

  return lastObject;
}

- (id)getNextWrappedImageDataForReplay
{
  v39 = *MEMORY[0x1E69E9840];
  peekNextWrappedImageDataForAllRequiredStreams = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForAllRequiredStreams];
  if ([(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap count])
  {
    [(ARReplaySensorPublic *)self currentTime];
    v5 = v4;
    v6 = [(ARReplaySensorPublic *)self imageDataToReplayForTimestamp:?];
    v7 = [v6 mutableCopy];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allKeys = [v7 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v27;
      *&v10 = 138544130;
      v24 = v10;
      v25 = allKeys;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap setObject:0 forKeyedSubscript:v14, v24];
          if (self->_replayMode)
          {
            v15 = 1;
          }

          else
          {
            v16 = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForStreamIdentifier:v14];
            if (!v16)
            {
              goto LABEL_17;
            }

            v17 = 0;
            do
            {
              [v16 timestamp];
              if (v18 > v5)
              {
                break;
              }

              [v7 setObject:v16 forKeyedSubscript:v14];
              [(NSMutableDictionary *)self->_nextWrappedImageDataForStreamIdentifierMap setObject:0 forKeyedSubscript:v14];
              v19 = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForStreamIdentifier:v14];

              ++v17;
              v16 = v19;
            }

            while (v19);
            if (v17)
            {
              v20 = _ARLogSensor_5();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = objc_opt_class();
                v22 = NSStringFromClass(v21);
                *buf = v24;
                v31 = v22;
                v32 = 2048;
                selfCopy = self;
                v34 = 1024;
                v35 = v17;
                v36 = 2112;
                v37 = v14;
                _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Skipped %u replay frames of type: %@", buf, 0x26u);

                allKeys = v25;
              }

              v15 = v17 + 1;
            }

            else
            {
LABEL_17:
              v15 = 1;
            }
          }

          if ([v14 isEqualToString:self->_mainVideoStreamIdentifier])
          {
            [(ARReplaySensorPublic *)self setImageIndex:[(ARReplaySensorPublic *)self imageIndex]+ v15];
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)getItemsFromStream:(id)stream upToMovieTime:(double)time converter:(id)converter
{
  v5 = [(ARReplaySensorPublic *)self getWrappedItemsFromStream:stream upToMovieTime:converter converter:time];
  v6 = [v5 valueForKey:@"data"];

  return v6;
}

- (id)getItemsFromStream:(id)stream upToMovieTime:(double)time metadataClass:(Class)class
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ARReplaySensorPublic_getItemsFromStream_upToMovieTime_metadataClass___block_invoke;
  v8[3] = &unk_1E817C138;
  v8[4] = self;
  v8[5] = class;
  v5 = [(ARReplaySensorPublic *)self getWrappedItemsFromStream:stream upToMovieTime:v8 withBlock:time];
  v6 = [v5 valueForKey:@"data"];

  return v6;
}

id __71__ARReplaySensorPublic_getItemsFromStream_upToMovieTime_metadataClass___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v15 = 0.0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 40) grabNextFromReader:*(*(a1 + 32) + 80) timestamp:{&v15, 0}];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = objc_opt_new();
        [v9 setTimestamp:v15];
        [v9 setData:v8];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (BOOL)readNextFrameFromStream:(id)stream forWrapper:(id)wrapper
{
  v45 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  wrapperCopy = wrapper;
  v38 = **&MEMORY[0x1E6960CC0];
  reader = self->_reader;
  v37 = 0;
  v9 = [(MOVReaderInterface *)reader copyNextFrameForStream:streamCopy timestamp:&v38 error:&v37];
  v10 = v37;
  if (!v9)
  {
    if ([(MOVReaderInterface *)self->_reader hasReachedEndOfStream:streamCopy])
    {
      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        [ARReplaySensorPublic initWithSequenceURL:replayMode:];
      }

      v18 = ARShouldUseLogTypeError_internalOSVersion_4;
      v19 = _ARLogSensor_5();
      v20 = v19;
      if (v18 == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          [wrapperCopy timestamp];
          LODWORD(time.value) = 138544130;
          *(&time.value + 4) = v22;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = self;
          HIWORD(time.epoch) = 2112;
          v40 = streamCopy;
          v41 = 2048;
          v42 = v23;
          v24 = "%{public}@ <%p>: Replay sensor reached end of stream %@ at %lf";
          v25 = v20;
          v26 = OS_LOG_TYPE_ERROR;
LABEL_18:
          v33 = 42;
LABEL_22:
          _os_log_impl(&dword_1C241C000, v25, v26, v24, &time, v33);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v22 = NSStringFromClass(v31);
        [wrapperCopy timestamp];
        LODWORD(time.value) = 138544130;
        *(&time.value + 4) = v22;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = self;
        HIWORD(time.epoch) = 2112;
        v40 = streamCopy;
        v41 = 2048;
        v42 = v32;
        v24 = "Error: %{public}@ <%p>: Replay sensor reached end of stream %@ at %lf";
        v25 = v20;
        v26 = OS_LOG_TYPE_INFO;
        goto LABEL_18;
      }

LABEL_23:

      goto LABEL_24;
    }

    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARReplaySensorPublic initWithSequenceURL:replayMode:];
    }

    v27 = ARShouldUseLogTypeError_internalOSVersion_4;
    v28 = _ARLogSensor_5();
    v20 = v28;
    if (v27 == 1)
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v29 = objc_opt_class();
      v22 = NSStringFromClass(v29);
      [wrapperCopy timestamp];
      LODWORD(time.value) = 138544386;
      *(&time.value + 4) = v22;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2112;
      v40 = streamCopy;
      v41 = 2048;
      v42 = v30;
      v43 = 2112;
      v44 = v10;
      v24 = "%{public}@ <%p>: Replay sensor couldn't get frame for stream %@ at %lf: %@";
      v25 = v20;
      v26 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v34 = objc_opt_class();
      v22 = NSStringFromClass(v34);
      [wrapperCopy timestamp];
      LODWORD(time.value) = 138544386;
      *(&time.value + 4) = v22;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = self;
      HIWORD(time.epoch) = 2112;
      v40 = streamCopy;
      v41 = 2048;
      v42 = v35;
      v43 = 2112;
      v44 = v10;
      v24 = "Error: %{public}@ <%p>: Replay sensor couldn't get frame for stream %@ at %lf: %@";
      v25 = v20;
      v26 = OS_LOG_TYPE_INFO;
    }

    v33 = 52;
    goto LABEL_22;
  }

  time = v38;
  [wrapperCopy setTimestamp:CMTimeGetSeconds(&time)];
  data = [wrapperCopy data];

  if (!data)
  {
    v12 = CVBufferCopyAttachments(v9, kCVAttachmentMode_ShouldPropagate);
    v13 = [[ARImageData alloc] initWithDictionary:v12];
    v14 = AVCaptureDeviceTypeFromStreamIdentifier(streamCopy);
    [(ARImageData *)v13 setCameraType:v14];

    [(ARImageData *)v13 setCameraPosition:AVCaptureDevicePositionFromStreamIdentifier(streamCopy)];
    [(ARImageData *)v13 setCaptureFramesPerSecond:llround(self->_nominalFrameRate)];
    [wrapperCopy setData:v13];
  }

  v15 = CACurrentMediaTime();
  data2 = [wrapperCopy data];
  [data2 setCurrentCaptureTimestamp:v15];

  data3 = [wrapperCopy data];
  [data3 setPixelBuffer:v9];

  CVPixelBufferRelease(v9);
LABEL_24:

  return v9 != 0;
}

- (double)_getMinFrameDurationForStream:(id)stream
{
  reader = self->_reader;
  if (reader)
  {
    [(MOVReaderInterface *)reader getMinFrameDurationForStream:stream];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (id)getWrappedItemsFromPixelBufferStream:(id)stream upToMovieTime:(double)time converter:(id)converter
{
  streamCopy = stream;
  v8 = objc_opt_new();
  [(ARReplaySensorPublic *)self _getMinFrameDurationForStream:streamCopy];
  v10 = v9;
  while (1)
  {
    v11 = objc_opt_new();
    if (![(ARReplaySensorPublic *)self readNextFrameFromStream:streamCopy forWrapper:v11])
    {
      break;
    }

    [v11 timestamp];
    v13 = v10 + v12;
    [v8 addObject:v11];

    if (v13 > time)
    {
      v14 = v8;
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (id)getWrappedItemsFromStream:(id)stream upToMovieTime:(double)time converter:(id)converter
{
  streamCopy = stream;
  converterCopy = converter;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__ARReplaySensorPublic_getWrappedItemsFromStream_upToMovieTime_converter___block_invoke;
  v14[3] = &unk_1E817C160;
  v14[4] = self;
  v15 = streamCopy;
  v16 = converterCopy;
  v10 = converterCopy;
  v11 = streamCopy;
  v12 = [(ARReplaySensorPublic *)self getWrappedItemsFromStream:v11 upToMovieTime:v14 withBlock:time];

  return v12;
}

- (id)getWrappedItemsFromStream:(id)stream upToMovieTime:(double)time withBlock:(id)block
{
  streamCopy = stream;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [(NSMutableDictionary *)self->_metadataCache objectForKeyedSubscript:streamCopy];
  if (!v11)
  {
    v11 = objc_opt_new();
    [(NSMutableDictionary *)self->_metadataCache setObject:v11 forKeyedSubscript:streamCopy];
  }

  do
  {
    if ([v11 count])
    {
      lastObject = [v11 lastObject];
      [lastObject timestamp];
      v14 = v13;

      if (v14 > time + 0.00000011920929)
      {
        break;
      }
    }

    v15 = blockCopy[2](blockCopy);
    [v11 addObjectsFromArray:v15];
    v16 = [v15 count];
  }

  while (v16);
  [(ARReplaySensorPublic *)self _getMinFrameDurationForStream:streamCopy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__ARReplaySensorPublic_getWrappedItemsFromStream_upToMovieTime_withBlock___block_invoke;
  v21[3] = &__block_descriptor_56_e41_B32__0__ARReplayMovieDataWrapper_8Q16_B24l;
  *&v21[4] = v17;
  *&v21[5] = time;
  *&v21[6] = v17 * 0.5;
  v18 = [v11 indexesOfObjectsPassingTest:v21];
  v19 = [v11 objectsAtIndexes:v18];
  [v11 removeObjectsAtIndexes:v18];

  objc_autoreleasePoolPop(v10);

  return v19;
}

BOOL __74__ARReplaySensorPublic_getWrappedItemsFromStream_upToMovieTime_withBlock___block_invoke(double *a1, void *a2)
{
  v3 = a1[5];
  [a2 timestamp];
  return vabdd_f64(v3, v4) <= a1[6];
}

- (id)getNextWrappedItemsFromStream:(id)stream converter:(id)converter
{
  v33 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  converterCopy = converter;
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v29 = *MEMORY[0x1E6960CA8];
  v30 = v8;
  v31 = *(MEMORY[0x1E6960CA8] + 32);
  v9 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v23 = streamCopy;
  if ([(MOVReaderInterface *)self->_reader containsMetadataStream:streamCopy])
  {
    streamCopy = [(MOVReaderInterface *)self->_reader grabNextMetadataOfStream:streamCopy timeRange:&v29, context, streamCopy];
  }

  else
  {
    streamCopy = 0;
  }

  *&time.value = v29;
  time.epoch = v30;
  Seconds = CMTimeGetSeconds(&time);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = streamCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = converterCopy[2](converterCopy, v17);
        if (v19)
        {
          v20 = objc_opt_new();
          [v20 setTimestamp:Seconds];
          [v20 setData:v19];
          [v9 addObject:v20];
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);

  return v9;
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  delegate = [(ARReplaySensorPublic *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ARReplaySensorPublic *)self delegate];
    [delegate2 sensor:self didFailWithError:errorCopy];
  }
}

- (void)_didOutputSensorData:(id)data
{
  dataCopy = data;
  delegate = [(ARReplaySensorPublic *)self delegate];
  [delegate sensor:self didOutputSensorData:dataCopy];
}

- (void)setImageIndex:(int)index
{
  v3 = *&index;
  self->_imageIndex = index;
  [(ARReplaySensorPublic *)self setNextFrameIndex:index];
  if (self->_manualCommandLineMode)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [ARKitUserDefaults setObject:v5 forKey:@"com_apple_arkit_replay_filepath_nextFrameIndex"];
  }
}

- (id)imageDataToReplayForTimestamp:(double)timestamp
{
  v26 = *MEMORY[0x1E69E9840];
  peekNextWrappedImageDataForAllRequiredStreams = [(ARReplaySensorPublic *)self peekNextWrappedImageDataForAllRequiredStreams];
  v6 = objc_opt_new();
  if ([peekNextWrappedImageDataForAllRequiredStreams count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [peekNextWrappedImageDataForAllRequiredStreams allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = *v22;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [peekNextWrappedImageDataForAllRequiredStreams objectForKeyedSubscript:v12];
        v14 = v13;
        if (!self->_replayMode)
        {
          [v13 timestamp];
          if (v19 > timestamp)
          {
            goto LABEL_15;
          }

LABEL_14:
          [v6 setObject:v14 forKeyedSubscript:v12];
          goto LABEL_15;
        }

        if ([v12 isEqualToString:self->_mainVideoStreamIdentifier])
        {
          goto LABEL_14;
        }

        v15 = [peekNextWrappedImageDataForAllRequiredStreams objectForKeyedSubscript:self->_mainVideoStreamIdentifier];
        if (v15)
        {
          [v14 timestamp];
          v17 = v16;
          [v15 timestamp];
          if (v17 <= v18)
          {
            [v6 setObject:v14 forKeyedSubscript:v12];
          }
        }

LABEL_15:
      }

      v9 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v9)
      {
LABEL_17:

        break;
      }
    }
  }

  return v6;
}

- (void)readFileMetadata
{
  v64 = *MEMORY[0x1E69E9840];
  self->_recordingFormatVersion = 0;
  grabSummary = [(MOVReaderInterface *)self->_reader grabSummary];
  v4 = [grabSummary objectForKey:@"mdta/com.apple.arkit.customuserdata"];
  customUserData = self->_customUserData;
  self->_customUserData = v4;

  [(MOVReaderInterface *)self->_reader metadataForMovie];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = v57 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v55;
    v10 = *MEMORY[0x1E698BED0];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(v6);
        }

        identifier = [*(*(&v54 + 1) + 8 * i) identifier];
        v13 = [identifier isEqualToString:v10];

        if (v13)
        {
          self->_recordingFormatVersion = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (self->_recordingFormatVersion == 1)
  {
    v14 = objc_opt_class();
    v15 = ARMetadataIdentifierForARSensorDataClass(v14, self->_recordingFormatVersion);
    v16 = [(MOVReaderInterface *)self->_reader metadataTrackForStream:v15];
    totalSampleDataLength = [v16 totalSampleDataLength];
    if (!v16 || totalSampleDataLength <= 0)
    {
      v18 = _ARLogSensor_5();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543618;
        v60 = v20;
        v61 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reverting back to legacy format for metadata stream names.", buf, 0x16u);
      }

      self->_recordingFormatVersion = 0;
    }
  }

  v21 = [grabSummary objectForKeyedSubscript:@"mdta/com.apple.arkit.arsensordatatypeinformation"];
  v22 = v21;
  if (!v21)
  {
    v48 = v6;
    v49 = grabSummary;
    self->_recordedSensorTypes = 1;
    getAllMetadataStreams = [(MOVReaderInterface *)self->_reader getAllMetadataStreams];
    v24 = objc_opt_class();
    v25 = ARMetadataIdentifierForARSensorDataClass(v24, self->_recordingFormatVersion);
    v26 = objc_opt_class();
    v27 = ARMetadataIdentifierForARSensorDataClass(v26, self->_recordingFormatVersion);
    v28 = objc_opt_class();
    v29 = ARMetadataIdentifierForARSensorDataClass(v28, self->_recordingFormatVersion);
    v30 = objc_opt_class();
    v31 = ARMetadataIdentifierForARSensorDataClass(v30, self->_recordingFormatVersion);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v32 = getAllMetadataStreams;
    v33 = [v32 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (!v33)
    {
      goto LABEL_36;
    }

    v34 = v33;
    v35 = *v51;
    while (1)
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v50 + 1) + 8 * j);
        if ([v37 isEqualToString:v25])
        {
          v38 = 2;
        }

        else if ([v37 isEqualToString:v27])
        {
          v38 = 4;
        }

        else if ([v37 isEqualToString:v29])
        {
          v38 = 8;
        }

        else
        {
          if (![v37 isEqualToString:v31])
          {
            continue;
          }

          v38 = 64;
        }

        self->_recordedSensorTypes |= v38;
      }

      v34 = [v32 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (!v34)
      {
LABEL_36:

        v6 = v48;
        grabSummary = v49;
        v22 = 0;
        goto LABEL_37;
      }
    }
  }

  self->_recordedSensorTypes = [v21 unsignedIntegerValue];
LABEL_37:
  v39 = [grabSummary objectForKeyedSubscript:*MEMORY[0x1E698BF48]];
  deviceModel = self->_deviceModel;
  self->_deviceModel = v39;

  v41 = [grabSummary objectForKeyedSubscript:@"mdta/com.apple.arkit.osversion"];
  osVersion = self->_osVersion;
  self->_osVersion = v41;

  v43 = [grabSummary objectForKeyedSubscript:@"mdta/com.apple.arkit.arkitversion"];
  arkitVersion = self->_arkitVersion;
  self->_arkitVersion = v43;

  [(MOVReaderInterface *)self->_reader getSizeForStream:self->_mainVideoStreamIdentifier];
  self->_imageResolution.width = v45;
  self->_imageResolution.height = v46;
  [(MOVReaderInterface *)self->_reader getFrameRateForStream:self->_mainVideoStreamIdentifier];
  self->_nominalFrameRate = v47;
}

- (void)_replaySensorFinishedReplayingData
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke;
  v6[3] = &unk_1E817C1A8;
  v6[4] = self;
  v3 = MEMORY[0x1C691B4C0](v6, a2);
  replaySensorDelegate = [(ARReplaySensorPublic *)self replaySensorDelegate];
  (v3)[2](v3, replaySensorDelegate);

  traceReplaySensorDelegate = [(ARReplaySensorPublic *)self traceReplaySensorDelegate];
  (v3)[2](v3, traceReplaySensorDelegate);
}

void __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke_2;
    v4[3] = &unk_1E817BEC8;
    v4[4] = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[ARQATracer isEnabled];
  v3 = _ARLogGeneral_1();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      *buf = 138543618;
      v17 = v6;
      v18 = 2048;
      v19 = v7;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Waiting 0.5 second for the QATracer to complete the last frame", buf, 0x16u);
    }

    v8 = dispatch_time(0, 500000000);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke_79;
    v14[3] = &unk_1E817BEC8;
    v9 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v9;
    dispatch_after(v8, MEMORY[0x1E69E96A0], v14);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138543874;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: replaySensorDelegate replaySensorDidFinishReplayingData (2): %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) replaySensorDidFinishReplayingData];
  }
}

uint64_t __58__ARReplaySensorPublic__replaySensorFinishedReplayingData__block_invoke_79(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _ARLogGeneral_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138543874;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: replaySensorDelegate replaySensorDidFinishReplayingData (1): %{public}@", &v8, 0x20u);
  }

  return [*(a1 + 40) replaySensorDidFinishReplayingData];
}

- (id)_streamIdentifierForCaptureDeviceType:(id)type position:(int64_t)position
{
  typeCopy = type;
  v7 = typeCopy;
  if (self->_usingST2Recording)
  {
    v8 = *MEMORY[0x1E6990C80];
    if (![v7 isEqualToString:*MEMORY[0x1E6986948]])
    {
      goto LABEL_11;
    }

    position2 = *MEMORY[0x1E6990C90];
    goto LABEL_10;
  }

  v8 = ARStreamIdentifierForDeviceTypeAndPosition(typeCopy, position);
  if ([v7 isEqualToString:*MEMORY[0x1E6986948]] && !-[ARReplaySensorPublic _allStreamsAreAvailable:](self, "_allStreamsAreAvailable:", v8))
  {
    position = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%ld", @"AVCaptureDeviceTypeBuiltInSuperWideAngleCamera", position];

    v8 = position;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6986930]] && !-[ARReplaySensorPublic _allStreamsAreAvailable:](self, "_allStreamsAreAvailable:", v8))
  {
    position2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%ld", @"JasperCamera", position];
LABEL_10:
    v11 = position2;

    v8 = v11;
  }

LABEL_11:

  return v8;
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ARReplaySensorDelegate)replaySensorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_replaySensorDelegate);

  return WeakRetained;
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end