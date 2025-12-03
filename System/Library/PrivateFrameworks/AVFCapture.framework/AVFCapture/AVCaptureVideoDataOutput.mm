@interface AVCaptureVideoDataOutput
- (AVCaptureVideoDataOutput)init;
- (BOOL)_updateVideoSettingsForConnection:(id)connection connectionBeingAdded:(BOOL)added;
- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason;
- (BOOL)preparesCellularRadioForNetworkConnection;
- (CGSize)outputSizeForSourceFormat:(id)format;
- (CMTime)minFrameDuration;
- (NSArray)availableVideoCVPixelFormatTypes;
- (NSArray)availableVideoCodecTypesForAssetWriterWithOutputFileType:(AVFileType)outputFileType;
- (NSDictionary)recommendedVideoSettingsForAssetWriterWithOutputFileType:(AVFileType)outputFileType;
- (NSDictionary)recommendedVideoSettingsForVideoCodecType:(AVVideoCodecType)videoCodecType assetWriterOutputFileType:(AVFileType)outputFileType;
- (NSDictionary)recommendedVideoSettingsForVideoCodecType:(AVVideoCodecType)videoCodecType assetWriterOutputFileType:(AVFileType)outputFileType outputFileURL:(NSURL *)outputFileURL;
- (NSDictionary)videoSettings;
- (id)addConnection:(id)connection error:(id *)error;
- (id)fullyPopulatedVideoSettingsForSettingsDictionary:(id)dictionary connection:(id)connection;
- (id)getTransformedDetectedObjectsInfoFromSampleBuffer:(opaqueCMSampleBuffer *)buffer connection:(id)connection;
- (id)outputScalingModeForSourceFormat:(id)format;
- (id)recommendedMovieMetadataForVideoCodecType:(id)type assetWriterOutputFileType:(id)fileType;
- (id)supportedAssetWriterOutputFileTypes;
- (id)supportedVideoSettingsKeys;
- (id)vettedVideoSettingsForSettingsDictionary:(id)dictionary connection:(id)connection;
- (int)recommendedMediaTimeScaleForAssetWriter;
- (unsigned)requiredOutputFormatForConnection:(id)connection;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation;
- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_setMinFrameDuration:(id *)duration;
- (void)_updateAvailableVideoCVPixelFormatTypesForConnection:(id)connection;
- (void)_updateDeliversPreviewSizedOutputBuffersForConnection:(id)connection sessionPreset:(id)preset;
- (void)_updateLocalQueue:(localQueueOpaque *)queue;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)handleChangedActiveFormat:(id)format forDevice:(id)device;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeConnection:(id)connection;
- (void)setAllLossyVideoCVPixelFormatTypesEnabled:(BOOL)enabled;
- (void)setAlwaysDiscardsLateVideoFrames:(BOOL)alwaysDiscardsLateVideoFrames;
- (void)setAutomaticallyConfiguresOutputBufferDimensions:(BOOL)automaticallyConfiguresOutputBufferDimensions;
- (void)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue;
- (void)setDeliversPreviewSizedOutputBuffers:(BOOL)deliversPreviewSizedOutputBuffers;
- (void)setMinFrameDuration:(CMTime *)minFrameDuration;
- (void)setPreparesCellularRadioForNetworkConnection:(BOOL)connection;
- (void)setPreservesDynamicHDRMetadata:(BOOL)metadata;
- (void)setRequestedBufferAttachments:(id)attachments;
- (void)setSampleBufferDelegate:(id)sampleBufferDelegate queue:(dispatch_queue_t)sampleBufferCallbackQueue;
- (void)setSceneStabilityMetadataEnabled:(BOOL)enabled;
- (void)setVideoSettings:(NSDictionary *)videoSettings;
- (void)setVideoSettingsAspectRatioOverrideEnabled:(BOOL)enabled;
- (void)setVideoSettingsDimensionsOverrideEnabled:(BOOL)enabled;
- (void)updateClientVideoSettingsForAspectRatio:(id)ratio;
@end

@implementation AVCaptureVideoDataOutput

- (AVCaptureVideoDataOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureVideoDataOutput;
  initSubclass = [(AVCaptureOutput *)&v5 initSubclass];
  if (initSubclass)
  {
    v3 = objc_alloc_init(AVCaptureVideoDataOutputInternal);
    initSubclass->_internal = v3;
    if (v3)
    {
      initSubclass->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
      [(AVCaptureVideoDataOutput *)initSubclass _updateAvailableVideoCVPixelFormatTypesForConnection:0];
    }

    else
    {

      return 0;
    }
  }

  return initSubclass;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureVideoDataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setSampleBufferDelegate:(id)sampleBufferDelegate queue:(dispatch_queue_t)sampleBufferCallbackQueue
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    sampleBufferCallbackQueue = 0;
  }

  [(AVCaptureVideoDataOutput *)self willChangeValueForKey:@"sampleBufferDelegate"];
  v8 = 0;
  if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setClientDelegate:sampleBufferDelegate clientCallbackQueue:sampleBufferCallbackQueue exceptionReason:&v8])
  {
    [(AVCaptureVideoDataOutput *)self didChangeValueForKey:@"sampleBufferDelegate"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureVideoDataOutput *)self didChangeValueForKey:@"sampleBufferDelegate"];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (NSArray)availableVideoCVPixelFormatTypes
{
  v2 = self->_internal->availableVideoCVPixelFormatTypes;

  return v2;
}

- (id)outputScalingModeForSourceFormat:(id)format
{
  result = [(NSDictionary *)self->_internal->clientVideoSettings objectForKeyedSubscript:*MEMORY[0x1E6987DC8]];
  if (!result)
  {
    if ([(AVCaptureVideoDataOutput *)self deliversPreviewSizedOutputBuffers])
    {
      v6 = MEMORY[0x1E6987DD0];
      return *v6;
    }

    vtScalingMode = [format vtScalingMode];
    if ([vtScalingMode isEqualToString:*MEMORY[0x1E69840F8]])
    {
      v6 = MEMORY[0x1E6987DE0];
      return *v6;
    }

    if ([vtScalingMode isEqualToString:*MEMORY[0x1E69840E8]])
    {
      return *MEMORY[0x1E6987DD8];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setVideoSettingsDimensionsOverrideEnabled:(BOOL)enabled
{
  self->_internal->videoSettingsDimensionsOverrideEnabledByClient = enabled;
  internal = self->_internal;
  if (internal->videoSettingsDimensionsOverrideEnabled != enabled)
  {
    internal->videoSettingsDimensionsOverrideEnabled = enabled;
    v6 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
    v7 = [-[AVCaptureOutput session](self "session")];

    [(AVCaptureVideoDataOutput *)self _updateDeliversPreviewSizedOutputBuffersForConnection:v6 sessionPreset:v7];
  }
}

- (void)setVideoSettingsAspectRatioOverrideEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCaptureVideoDataOutput *)self isVideoSettingsAspectRatioOverrideSupported])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    internal = self->_internal;
    if (internal->videoSettingsAspectRatioOverrideEnabled != enabledCopy)
    {
      internal->videoSettingsAspectRatioOverrideEnabled = enabledCopy;
    }
  }
}

- (void)setSceneStabilityMetadataEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCaptureVideoDataOutput *)self isSceneStabilityMetadataSupported])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    internal = self->_internal;
    if (internal->sceneStabilityMetadataEnabled != enabledCopy)
    {
      internal->sceneStabilityMetadataEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setRequestedBufferAttachments:(id)attachments
{
  requestedBufferAttachments = self->_internal->requestedBufferAttachments;
  if (requestedBufferAttachments != attachments)
  {

    self->_internal->requestedBufferAttachments = [attachments copy];
  }
}

- (void)setAllLossyVideoCVPixelFormatTypesEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (internal->allLossyVideoCVPixelFormatTypesEnabled != enabled)
  {
    internal->allLossyVideoCVPixelFormatTypesEnabled = enabled;
    v6 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];

    [(AVCaptureVideoDataOutput *)self _updateAvailableVideoCVPixelFormatTypesForConnection:v6];
  }
}

- (id)fullyPopulatedVideoSettingsForSettingsDictionary:(id)dictionary connection:(id)connection
{
  v7 = [(AVCaptureVideoDataOutput *)self vettedVideoSettingsForSettingsDictionary:0 connection:?];
  v8 = [(AVCaptureVideoDataOutput *)self vettedVideoSettingsForSettingsDictionary:dictionary connection:connection];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
  [v9 addEntriesFromDictionary:v8];
  v10 = *MEMORY[0x1E6987DC8];
  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6987DC8]];
  v12 = *MEMORY[0x1E6987DD0];
  if ([v11 isEqual:*MEMORY[0x1E6987DD0]] && (objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", v10), "isEqual:", v12) & 1) == 0)
  {
    [v9 setObject:0 forKeyedSubscript:v10];
  }

  return v9;
}

- (id)vettedVideoSettingsForSettingsDictionary:(id)dictionary connection:(id)connection
{
  sourceDevice = [connection sourceDevice];
  v8 = sourceDevice;
  if (dictionary)
  {
    if (self->_internal->deliversPreviewSizedOutputBuffers && (v9 = *MEMORY[0x1E6987DC8], ![dictionary objectForKeyedSubscript:*MEMORY[0x1E6987DC8]]))
    {
      v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
      [v10 setObject:*MEMORY[0x1E6987DD0] forKeyedSubscript:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = *MEMORY[0x1E6966130];
    v12 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6966130]];
    if (v12 && ![(NSArray *)self->_internal->availableVideoCVPixelFormatTypes containsObject:v12])
    {
      if (!v10)
      {
        v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
      }

      activeFormat = [v8 activeFormat];
      if (activeFormat)
      {
        MediaSubType = CMFormatDescriptionGetMediaSubType([activeFormat formatDescription]);
      }

      else
      {
        MediaSubType = 0;
      }

      if (!-[NSArray containsObject:](self->_internal->availableVideoCVPixelFormatTypes, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:MediaSubType]))
      {
        MediaSubType = [-[NSArray firstObject](self->_internal->availableVideoCVPixelFormatTypes "firstObject")];
      }

      [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", MediaSubType), v11}];
    }

    v33 = *MEMORY[0x1E6966208];
    v34 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6966208]];
    v35 = *MEMORY[0x1E69660B8];
    v36 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
    if (v34)
    {
      v37 = v36 == 0;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_89;
    }

    v38 = v36;
    activeFormat2 = [v8 activeFormat];
    if (!activeFormat2)
    {
      goto LABEL_89;
    }

    v40 = activeFormat2;
    v69 = v33;
    v70 = v35;
    _videoOrientation = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] _videoOrientation];
    [connection sourcesFromFrontFacingCamera];
    [connection sourcesFromExternalCamera];
    if (AVCapturePlatformMountsCamerasInLandscapeOrientation())
    {
      v42 = -1;
      v43 = v40;
    }

    else
    {
      v43 = v40;
      [objc_msgSend(v40 "figCaptureSourceVideoFormat")];
      IsSensorMountedInPortraitOrientation = AVCaptureIsSensorMountedInPortraitOrientation(v44);
      v42 = -3;
      if (IsSensorMountedInPortraitOrientation)
      {
        v42 = -1;
      }
    }

    v46 = _videoOrientation + v42;
    Dimensions = CMVideoFormatDescriptionGetDimensions([v43 formatDescription]);
    [v34 floatValue];
    v49 = v48;
    v50 = v48;
    [v38 floatValue];
    v52 = v51;
    v53 = v51;
    if ([v8 dynamicAspectRatio] && !self->_internal->videoSettingsAspectRatioOverrideEnabled)
    {
      dynamicDimensions = [v8 dynamicDimensions];
      dynamicDimensions2 = [v8 dynamicDimensions];
      v56 = SHIDWORD(dynamicDimensions2);
      if (v46 >= 2)
      {
        v57 = SHIDWORD(dynamicDimensions2);
      }

      else
      {
        v57 = dynamicDimensions;
      }

      if (v46 >= 2)
      {
        v56 = dynamicDimensions;
      }

      v58 = v53;
      dynamicDimensions3 = v50;
      if (!AVCaptureOutputDimensionsHaveSameAspectRatio(v56, v57, v50, v53))
      {
        dynamicDimensions3 = [v8 dynamicDimensions];
        dynamicDimensions4 = [v8 dynamicDimensions];
        v58 = v46 >= 2 ? SHIDWORD(dynamicDimensions4) : dynamicDimensions3;
        if (v46 < 2)
        {
          dynamicDimensions3 = SHIDWORD(dynamicDimensions4);
        }
      }

LABEL_84:
      if (dynamicDimensions3 != v50 || v58 != v53)
      {
        if (!v10)
        {
          v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
        }

        [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", dynamicDimensions3), v69}];
        [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v58), v70}];
      }

LABEL_89:
      if (v10)
      {
        dictionaryCopy = v10;
      }

      else
      {
        dictionaryCopy = dictionary;
      }

      return [objc_msgSend(MEMORY[0x1E6988190] videoOutputSettingsWithVideoSettingsDictionary:{dictionaryCopy), "outputSettingsDictionary"}];
    }

    width = Dimensions.width;
    height = Dimensions.height;
    if (self->_internal->videoSettingsAspectRatioOverrideEnabled && (v58 = v53, dynamicDimensions3 = v50, width == height))
    {
      if (self->_internal->videoSettingsAspectRatioOverrideEnabled)
      {
LABEL_64:
        HaveValidAspectRatio = vdo_dimensionsHaveValidAspectRatio(dynamicDimensions3, v58);
        goto LABEL_73;
      }
    }

    else
    {
      v64 = (v49 <= v52) ^ (width > height);
      if (v64)
      {
        v58 = v53;
      }

      else
      {
        v58 = v50;
      }

      if (v64)
      {
        dynamicDimensions3 = v50;
      }

      else
      {
        dynamicDimensions3 = v53;
      }

      if (self->_internal->videoSettingsAspectRatioOverrideEnabled)
      {
        goto LABEL_64;
      }
    }

    HaveValidAspectRatio = AVCaptureOutputDimensionsHaveSameAspectRatio(Dimensions.width, Dimensions.height, dynamicDimensions3, v58);
LABEL_73:
    if (!HaveValidAspectRatio || dynamicDimensions3 > width || v58 > height)
    {
      v71.receiver = self;
      v71.super_class = AVCaptureVideoDataOutput;
      [(AVCaptureOutput *)&v71 outputSizeForSourceFormat:v43];
      dynamicDimensions3 = v65;
      v58 = v66;
    }

    if (v46 <= 1)
    {
      if (width != height || !self->_internal->videoSettingsAspectRatioOverrideEnabled)
      {
        v67 = dynamicDimensions3;
      }

      else
      {
        v67 = v58;
      }

      if (width != height || !self->_internal->videoSettingsAspectRatioOverrideEnabled)
      {
        dynamicDimensions3 = v58;
      }

      v58 = v67;
    }

    goto LABEL_84;
  }

  result = [sourceDevice activeFormat];
  if (result)
  {
    v16 = result;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(AVCaptureVideoDataOutput *)self outputSizeForSourceFormat:v16];
    dynamicDimensions5 = v18;
    v21 = v20;
    if ([v8 dynamicAspectRatio])
    {
      dynamicDimensions5 = [v8 dynamicDimensions];
      v21 = ([v8 dynamicDimensions] >> 32);
    }

    _videoOrientation2 = [connection _videoOrientation];
    [connection sourcesFromFrontFacingCamera];
    [connection sourcesFromExternalCamera];
    if (AVCapturePlatformMountsCamerasInLandscapeOrientation())
    {
      v23 = -1;
    }

    else
    {
      [objc_msgSend(v16 "figCaptureSourceVideoFormat")];
      if (AVCaptureIsSensorMountedInPortraitOrientation(v24))
      {
        v23 = -1;
      }

      else
      {
        v23 = -3;
      }
    }

    v25 = *MEMORY[0x1E6966130];
    v26 = [-[NSDictionary objectForKeyedSubscript:](self->_internal->clientVideoSettings objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}];
    if (!v26)
    {
      v26 = CMFormatDescriptionGetMediaSubType([v16 formatDescription]);
    }

    v27 = _videoOrientation2 + v23;
    if (!-[NSArray containsObject:](self->_internal->availableVideoCVPixelFormatTypes, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v26]))
    {
      v26 = [-[NSArray firstObject](self->_internal->availableVideoCVPixelFormatTypes "firstObject")];
    }

    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v26), v25}];
    if (v27 >= 2)
    {
      v28 = dynamicDimensions5;
    }

    else
    {
      v28 = v21;
    }

    if (v27 >= 2)
    {
      dynamicDimensions5 = v21;
    }

    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
    [dictionary setObject:v29 forKeyedSubscript:*MEMORY[0x1E6966208]];
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:dynamicDimensions5];
    [dictionary setObject:v30 forKeyedSubscript:*MEMORY[0x1E69660B8]];
    v31 = [(AVCaptureVideoDataOutput *)self outputScalingModeForSourceFormat:v16];
    if (v31)
    {
      [dictionary setObject:v31 forKeyedSubscript:*MEMORY[0x1E6987DC8]];
    }

    v32 = MEMORY[0x1E695DF20];

    return [v32 dictionaryWithDictionary:dictionary];
  }

  return result;
}

- (NSDictionary)videoSettings
{
  v2 = self->_internal->videoSettings;

  return v2;
}

- (id)supportedVideoSettingsKeys
{
  videoSettingsDimensionsOverrideEnabled = self->_internal->videoSettingsDimensionsOverrideEnabled;
  v4 = MEMORY[0x1E695DFD8];
  v5 = *MEMORY[0x1E6966130];
  if (videoSettingsDimensionsOverrideEnabled)
  {
    return [MEMORY[0x1E695DFD8] setWithObjects:{v5, *MEMORY[0x1E6966208], *MEMORY[0x1E69660B8], 0}];
  }

  return [v4 setWithObject:v5];
}

- (void)setVideoSettings:(NSDictionary *)videoSettings
{
  v5 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
  if (![(NSDictionary *)videoSettings count])
  {
    goto LABEL_34;
  }

  v6 = [MEMORY[0x1E695DFD8] setWithArray:{-[NSDictionary allKeys](videoSettings, "allKeys")}];
  v7 = [MEMORY[0x1E695DFA8] setWithSet:{-[AVCaptureVideoDataOutput supportedVideoSettingsKeys](self, "supportedVideoSettingsKeys")}];
  [v7 intersectSet:v6];
  v8 = [v7 count];
  if (v8 < [v6 count])
  {
    v9 = [MEMORY[0x1E695DFA8] setWithSet:v6];
    [v9 minusSet:v7];
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_1 != -1)
    {
      [AVCaptureVideoDataOutput setVideoSettings:];
    }

    v10 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_1;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      allObjects = [v9 allObjects];
      _os_log_impl(&dword_1A917C000, v10, OS_LOG_TYPE_DEFAULT, "*** [AVCaptureVideoDataOutput setVideoSettings:] - videoSettings dictionary contains one or more unsupported (ignored) keys: %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    allObjects2 = [v7 allObjects];
    v13 = [allObjects2 countByEnumeratingWithState:&v52 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(allObjects2);
          }

          [(NSDictionary *)dictionary setObject:[(NSDictionary *)videoSettings objectForKeyedSubscript:*(*(&v52 + 1) + 8 * i)] forKeyedSubscript:*(*(&v52 + 1) + 8 * i)];
        }

        v14 = [allObjects2 countByEnumeratingWithState:&v52 objects:v51 count:16];
      }

      while (v14);
    }

    videoSettings = dictionary;
  }

  v17 = [(NSDictionary *)videoSettings objectForKeyedSubscript:*MEMORY[0x1E6966130]];
  if (v17 && ![(NSArray *)[(AVCaptureVideoDataOutput *)self availableVideoCVPixelFormatTypes] containsObject:v17])
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
LABEL_42:
    v39 = [v37 exceptionWithName:v38 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v39);
    }

    NSLog(&cfstr_SuppressingExc.isa, v39);
    return;
  }

  v18 = [(NSDictionary *)videoSettings objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  if (v18 && ![(NSArray *)[(AVCaptureVideoDataOutput *)self availableVideoCodecTypes] containsObject:v18])
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    goto LABEL_42;
  }

  v19 = *MEMORY[0x1E6966208];
  v20 = [(NSDictionary *)videoSettings objectForKeyedSubscript:*MEMORY[0x1E6966208]];
  v21 = *MEMORY[0x1E69660B8];
  v22 = [(NSDictionary *)videoSettings objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
  if (!self->_internal->videoSettingsDimensionsOverrideEnabled || (v20 | v22) == 0)
  {
    goto LABEL_34;
  }

  v24 = v22;
  if (v20 && ([v20 intValue] & 1) != 0)
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    goto LABEL_42;
  }

  if (!v24)
  {
    goto LABEL_45;
  }

  if ([v24 intValue])
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    goto LABEL_42;
  }

  if (!v20)
  {
LABEL_45:
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    goto LABEL_42;
  }

  internal = self->_internal;
  if (internal->deliversPreviewSizedOutputBuffers && (![v20 isEqualToNumber:{-[NSDictionary objectForKeyedSubscript:](internal->videoSettings, "objectForKeyedSubscript:", v19)}] || (objc_msgSend(v24, "isEqualToNumber:", -[NSDictionary objectForKeyedSubscript:](self->_internal->videoSettings, "objectForKeyedSubscript:", v21)) & 1) == 0))
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    goto LABEL_42;
  }

  v26 = [-[AVCaptureConnection sourceDevice](v5 "sourceDevice")];
  if (v26)
  {
    v27 = v26;
    v50.receiver = self;
    v50.super_class = AVCaptureVideoDataOutput;
    [(AVCaptureOutput *)&v50 outputSizeForSourceFormat:v26];
    v29 = v28;
    v31 = v30;
    _videoOrientation = [(AVCaptureConnection *)v5 _videoOrientation];
    [(AVCaptureConnection *)v5 sourcesFromFrontFacingCamera];
    [(AVCaptureConnection *)v5 sourcesFromExternalCamera];
    if (AVCapturePlatformMountsCamerasInLandscapeOrientation())
    {
      v33 = -1;
    }

    else
    {
      [objc_msgSend(v27 "figCaptureSourceVideoFormat")];
      IsSensorMountedInPortraitOrientation = AVCaptureIsSensorMountedInPortraitOrientation(v40);
      v33 = -3;
      if (IsSensorMountedInPortraitOrientation)
      {
        v33 = -1;
      }
    }

    v42 = _videoOrientation + v33;
    if (v42 >= 2)
    {
      v43 = v20;
    }

    else
    {
      v43 = v24;
    }

    if (v42 >= 2)
    {
      v20 = v24;
    }

    [v43 floatValue];
    v45 = v44;
    [v20 floatValue];
    v46 = v45;
    v48 = v47;
    v49 = self->_internal;
    if (!v49->videoSettingsDimensionsOverrideEnabledByClient && (v29 < v46 || v31 < v48))
    {
      v37 = MEMORY[0x1E695DF30];
      v38 = *MEMORY[0x1E695D940];
      goto LABEL_42;
    }

    if (v49->videoSettingsAspectRatioOverrideEnabled)
    {
      if (!vdo_dimensionsHaveValidAspectRatio(v46, v48))
      {
        v37 = MEMORY[0x1E695DF30];
        v38 = *MEMORY[0x1E695D940];
        goto LABEL_42;
      }
    }

    else if ([-[AVCaptureConnection sourceDevice](v5 "sourceDevice")])
    {
      if (!AVCaptureOutputDimensionsHaveSameAspectRatio([-[AVCaptureConnection sourceDevice](v5 "sourceDevice")], (objc_msgSend(-[AVCaptureConnection sourceDevice](v5, "sourceDevice"), "dynamicDimensions") >> 32), v46, v48))
      {
        v37 = MEMORY[0x1E695DF30];
        v38 = *MEMORY[0x1E695D940];
        goto LABEL_42;
      }
    }

    else if (!AVCaptureOutputDimensionsHaveSameAspectRatio(v29, v31, v46, v48))
    {
      v37 = MEMORY[0x1E695DF30];
      v38 = *MEMORY[0x1E695D940];
      goto LABEL_42;
    }
  }

LABEL_34:

  self->_internal->clientVideoSettings = [(NSDictionary *)videoSettings copy];
  if (SettingsArePassthru(videoSettings))
  {
    v34 = 0;
  }

  else
  {
    v34 = videoSettings;
  }

  v35 = [(AVCaptureVideoDataOutput *)self fullyPopulatedVideoSettingsForSettingsDictionary:v34 connection:v5];
  if (v35 != self->_internal->videoSettings)
  {
    v36 = v35;
    if (([(NSDictionary *)v35 isEqual:?]& 1) == 0)
    {

      self->_internal->videoSettings = [(NSDictionary *)v36 copy];
      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (id)supportedAssetWriterOutputFileTypes
{
  v2 = *MEMORY[0x1E69874B8];
  v4[0] = *MEMORY[0x1E69874C0];
  v4[1] = v2;
  v4[2] = *MEMORY[0x1E6987480];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
}

- (NSDictionary)recommendedVideoSettingsForAssetWriterWithOutputFileType:(AVFileType)outputFileType
{
  supportedAssetWriterOutputFileTypes = [(AVCaptureVideoDataOutput *)self supportedAssetWriterOutputFileTypes];
  if ([supportedAssetWriterOutputFileTypes containsObject:outputFileType])
  {
    v6 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:*MEMORY[0x1E6987608]];
    if ([v6 isLive])
    {
      LODWORD(v9) = -65536;
      return -[AVCaptureOutput recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:](self, "recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:", v6, -[AVCaptureVideoDataOutput videoSettings](self, "videoSettings"), [objc_msgSend(objc_opt_class() availableVideoCodecTypesForSourceDevice:objc_msgSend(v6 sourceFormat:"sourceDevice") outputDimensions:0 fileType:0 videoCodecTypesAllowList:outputFileType, 0), "firstObject"], outputFileType, 0, 0, v9);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, supportedAssetWriterOutputFileTypes}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  return 0;
}

- (NSArray)availableVideoCodecTypesForAssetWriterWithOutputFileType:(AVFileType)outputFileType
{
  supportedAssetWriterOutputFileTypes = [(AVCaptureVideoDataOutput *)self supportedAssetWriterOutputFileTypes];
  if (([supportedAssetWriterOutputFileTypes containsObject:outputFileType] & 1) == 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, supportedAssetWriterOutputFileTypes}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
    return MEMORY[0x1E695E0F0];
  }

  v6 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:*MEMORY[0x1E6987608]];
  if (![v6 isLive])
  {
    return MEMORY[0x1E695E0F0];
  }

  v7 = objc_opt_class();
  sourceDevice = [v6 sourceDevice];

  return [v7 availableVideoCodecTypesForSourceDevice:sourceDevice sourceFormat:0 outputDimensions:0 fileType:outputFileType videoCodecTypesAllowList:0];
}

- (NSDictionary)recommendedVideoSettingsForVideoCodecType:(AVVideoCodecType)videoCodecType assetWriterOutputFileType:(AVFileType)outputFileType
{
  supportedAssetWriterOutputFileTypes = [(AVCaptureVideoDataOutput *)self supportedAssetWriterOutputFileTypes];
  if (([supportedAssetWriterOutputFileTypes containsObject:outputFileType] & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v15 = supportedAssetWriterOutputFileTypes;
LABEL_6:
    v13 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, v15}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
    return 0;
  }

  v8 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:*MEMORY[0x1E6987608]];
  if ([v8 isLive])
  {
    v9 = [objc_opt_class() availableVideoCodecTypesForSourceDevice:objc_msgSend(v8 sourceFormat:"sourceDevice") outputDimensions:0 fileType:0 videoCodecTypesAllowList:outputFileType, 0];
    if ([v9 containsObject:videoCodecType])
    {
      LODWORD(v14) = -65536;
      return [(AVCaptureOutput *)self recommendedOutputSettingsForConnection:v8 sourceSettings:[(AVCaptureVideoDataOutput *)self videoSettings] videoCodecType:videoCodecType fileType:outputFileType isIris:0 outputFileURL:0 spatialAudioChannelLayoutTag:v14];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v15 = v9;
    goto LABEL_6;
  }

  return 0;
}

- (NSDictionary)recommendedVideoSettingsForVideoCodecType:(AVVideoCodecType)videoCodecType assetWriterOutputFileType:(AVFileType)outputFileType outputFileURL:(NSURL *)outputFileURL
{
  if (([-[AVCaptureVideoDataOutput supportedAssetWriterOutputFileTypes](self "supportedAssetWriterOutputFileTypes")] & 1) == 0)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
LABEL_10:
    v17 = [v15 exceptionWithName:v16 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v17);
    }

    NSLog(&cfstr_SuppressingExc.isa, v17);
    return 0;
  }

  v9 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:*MEMORY[0x1E6987608]];
  v10 = v9;
  v19 = 0;
  if (v9)
  {
    -[AVCaptureVideoDataOutput outputSizeForSourceFormat:](self, "outputSizeForSourceFormat:", [objc_msgSend(v9 "sourceDevice")]);
    if ((AVCaptureMovieFileURLIsValidForConnection(v10, v11, v12, outputFileURL, &v19) & 1) == 0)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      goto LABEL_10;
    }
  }

  if ([v10 isLive])
  {
    if ([objc_msgSend(objc_opt_class() availableVideoCodecTypesForSourceDevice:objc_msgSend(v10 sourceFormat:"sourceDevice") outputDimensions:0 fileType:0 videoCodecTypesAllowList:outputFileType, 0), "containsObject:", videoCodecType])
    {
      videoSettings = [(AVCaptureVideoDataOutput *)self videoSettings];
      LODWORD(v18) = -65536;
      return [(AVCaptureOutput *)self recommendedOutputSettingsForConnection:v10 sourceSettings:videoSettings videoCodecType:videoCodecType fileType:outputFileType isIris:0 outputFileURL:outputFileURL spatialAudioChannelLayoutTag:v18, v19];
    }

    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    goto LABEL_10;
  }

  return 0;
}

- (id)recommendedMovieMetadataForVideoCodecType:(id)type assetWriterOutputFileType:(id)fileType
{
  supportedAssetWriterOutputFileTypes = [(AVCaptureVideoDataOutput *)self supportedAssetWriterOutputFileTypes];
  if ([supportedAssetWriterOutputFileTypes containsObject:fileType])
  {
    v8 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:*MEMORY[0x1E6987608]];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3052000000;
    v24 = __Block_byref_object_copy__3;
    v25 = __Block_byref_object_dispose__3;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__3;
    v19 = __Block_byref_object_dispose__3;
    v20 = 0;
    if ((AVCaptureVideoCodecTypeIsProResRaw(type) & 1) != 0 && [v8 isLive])
    {
      v9 = +[AVCaptureOutput availableVideoCodecTypesForSourceDevice:sourceFormat:outputDimensions:fileType:videoCodecTypesAllowList:](AVCaptureVideoDataOutput, "availableVideoCodecTypesForSourceDevice:sourceFormat:outputDimensions:fileType:videoCodecTypesAllowList:", [v8 sourceDevice], 0, 0, fileType, 0);
      if (([v9 containsObject:type] & 1) == 0)
      {
        v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, v9}];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v10);
        }

        goto LABEL_11;
      }

      if ([objc_msgSend(v8 "sourceDevice")])
      {
        v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v10);
        }

LABEL_11:
        NSLog(&cfstr_SuppressingExc.isa, v10);
        v12 = 0;
LABEL_14:
        _Block_object_dispose(&v15, 8);
        _Block_object_dispose(&v21, 8);
        return v12;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __96__AVCaptureVideoDataOutput_recommendedMovieMetadataForVideoCodecType_assetWriterOutputFileType___block_invoke;
      v14[3] = &unk_1E786F210;
      v14[4] = self;
      v14[5] = &v15;
      v14[6] = &v21;
      [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v14];
    }

    v12 = v22[5];
    goto LABEL_14;
  }

  v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, supportedAssetWriterOutputFileTypes}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
  return 0;
}

id *__96__AVCaptureVideoDataOutput_recommendedMovieMetadataForVideoCodecType_assetWriterOutputFileType___block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [result[4] sinkID];
    v5 = *(v3[5] + 1);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(a2, v4, *MEMORY[0x1E698FE88], *MEMORY[0x1E695E480], v5 + 40);
    }

    result = AVCaptureCreateAVAssetWriterCompatibleMovieMetadata(*(*(v3[5] + 1) + 40));
    *(*(v3[6] + 1) + 40) = result;
  }

  return result;
}

- (int)recommendedMediaTimeScaleForAssetWriter
{
  v40 = 0;
  v4 = *MEMORY[0x1E6960C70];
  v39.epoch = *(MEMORY[0x1E6960C70] + 16);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  *&v39.value = v4;
  obj = [(AVCaptureOutput *)self liveConnections];
  v24 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (!v24)
  {
    goto LABEL_28;
  }

  v23 = *v36;
  v5 = *MEMORY[0x1E6987608];
  do
  {
    v6 = 0;
    do
    {
      if (*v36 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = v6;
      v7 = *(*(&v35 + 1) + 8 * v6);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      inputPorts = [v7 inputPorts];
      v9 = [inputPorts countByEnumeratingWithState:&v30 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
LABEL_8:
        v12 = 0;
        while (1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(inputPorts);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          if ([objc_msgSend(v13 "mediaType")])
          {
            [v13 input];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              input = [v13 input];
              device = [input device];
              if (device)
              {
                [device activeVideoMinFrameDuration];
              }

              else
              {
                memset(&time1, 0, sizeof(time1));
              }

              FigCaptureFrameRateFromCMTime();
              v3 = v3 & 0xFFFFFFFF00000000 | v16;
              FigCaptureSimplifiedLeastCommonMultiple();
              device2 = [input device];
              if (device2)
              {
                [device2 activeVideoMaxFrameDuration];
              }

              else
              {
                memset(&time1, 0, sizeof(time1));
              }

              FigCaptureFrameRateFromCMTime();
              v2 = v2 & 0xFFFFFFFF00000000 | v18;
              FigCaptureSimplifiedLeastCommonMultiple();
              device3 = [input device];
              if (device3)
              {
                [device3 activeVideoMinFrameDuration];
              }

              else
              {
                memset(&time1, 0, sizeof(time1));
              }

              time2 = v39;
              CMTimeMinimum(&v39, &time1, &time2);
              if (v40 == 120000)
              {
                break;
              }
            }
          }

          if (v10 == ++v12)
          {
            v10 = [inputPorts countByEnumeratingWithState:&v30 objects:v29 count:16];
            if (v10)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v6 = v25 + 1;
    }

    while (v25 + 1 != v24);
    v24 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
  }

  while (v24);
  if (v40 <= 599)
  {
LABEL_28:
    CMTimeMake(&time1, 1, 600);
    FigCaptureFrameRateFromCMTime();
    FigCaptureSimplifiedLeastCommonMultiple();
  }

  memset(&time1, 0, sizeof(time1));
  CMTimeMake(&time1, 1, 120);
  time2 = v39;
  v26 = time1;
  if (CMTimeCompare(&time2, &v26) >= 1)
  {
    v20 = 600;
  }

  else
  {
    v20 = 2400;
  }

  if (v40 <= v20)
  {
    return v20;
  }

  else
  {
    return v40;
  }
}

- (CMTime)minFrameDuration
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVDOFrameRatePropertiesAreDeprecated"))
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v6 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"1") & 1) == 0)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a3);
      NSLog(&cfstr_Warning0xXIsDe.isa, v7, self, v8, @"AVCaptureDevice activeVideoMinFrameDuration");
    }
  }

  internal = self->_internal;
  epoch = internal->deprecatedMinFrameDuration.epoch;
  *&retstr->value = *&internal->deprecatedMinFrameDuration.value;
  retstr->epoch = epoch;
  result = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:*MEMORY[0x1E6987608]];
  if (result)
  {

    return [(CMTime *)result _videoMinFrameDuration];
  }

  return result;
}

- (void)_setMinFrameDuration:(id *)duration
{
  v5 = [(AVCaptureOutput *)self firstEnabledConnectionForMediaType:*MEMORY[0x1E6987608]];
  if (v5)
  {
    v6 = v5;
    v10 = *&duration->var0;
    var3 = duration->var3;
    [v5 _setVideoMinFrameDuration:&v10];
    internal = self->_internal;
    [v6 _videoMinFrameDuration];
    *&internal->deprecatedMinFrameDuration.value = v10;
    internal->deprecatedMinFrameDuration.epoch = var3;
  }

  else
  {
    v8 = self->_internal;
    v9 = duration->var3;
    *&v8->deprecatedMinFrameDuration.value = *&duration->var0;
    v8->deprecatedMinFrameDuration.epoch = v9;
  }
}

- (void)setMinFrameDuration:(CMTime *)minFrameDuration
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVDOFrameRatePropertiesAreDeprecated"))
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v6 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"1") & 1) == 0)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v7, self, v8, @"AVCaptureDevice setActiveVideoMinFrameDuration");
    }
  }

  v9 = *&minFrameDuration->value;
  epoch = minFrameDuration->epoch;
  [(AVCaptureVideoDataOutput *)self _setMinFrameDuration:&v9];
}

- (void)setAlwaysDiscardsLateVideoFrames:(BOOL)alwaysDiscardsLateVideoFrames
{
  internal = self->_internal;
  if (internal->alwaysDiscardsLateVideoFrames != alwaysDiscardsLateVideoFrames)
  {
    internal->alwaysDiscardsLateVideoFrames = alwaysDiscardsLateVideoFrames;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setAutomaticallyConfiguresOutputBufferDimensions:(BOOL)automaticallyConfiguresOutputBufferDimensions
{
  internal = self->_internal;
  if (internal->automaticallyConfiguresOutputBufferDimensions != automaticallyConfiguresOutputBufferDimensions)
  {
    internal->automaticallyConfiguresOutputBufferDimensions = automaticallyConfiguresOutputBufferDimensions;
    v6 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
    v7 = [-[AVCaptureOutput session](self "session")];

    [(AVCaptureVideoDataOutput *)self _updateDeliversPreviewSizedOutputBuffersForConnection:v6 sessionPreset:v7];
  }
}

- (void)setDeliversPreviewSizedOutputBuffers:(BOOL)deliversPreviewSizedOutputBuffers
{
  internal = self->_internal;
  if (internal->automaticallyConfiguresOutputBufferDimensions)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (internal->deliversPreviewSizedOutputBuffers != deliversPreviewSizedOutputBuffers)
  {
    internal->deliversPreviewSizedOutputBuffers = deliversPreviewSizedOutputBuffers;
    v6 = *MEMORY[0x1E6987608];
    [(AVCaptureVideoDataOutput *)self _updateAvailableVideoCVPixelFormatTypesForConnection:[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]]];
    if ([(AVCaptureVideoDataOutput *)self updateVideoSettingsForConnection:[(AVCaptureOutput *)self connectionWithMediaType:v6]])
    {

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (BOOL)preparesCellularRadioForNetworkConnection
{
  if (self->_internal->preparesCellularRadioForNetworkConnectionSetByClient)
  {
    return self->_internal->preparesCellularRadioForNetworkConnection;
  }

  v3 = AVCaptureClientPreferencesDomain();
  if (([(__CFString *)v3 isEqualToString:@"com.tencent.xin"]& 1) == 0 && ![(__CFString *)v3 isEqualToString:@"com.tencent.xinWeChat"])
  {
    if (([(__CFString *)v3 isEqualToString:@"com.google.paisa"]& 1) != 0)
    {
      return 1;
    }

    return self->_internal->preparesCellularRadioForNetworkConnection;
  }

  [(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper clientDelegate];
  v4 = objc_opt_class();
  if (([NSStringFromClass(v4) isEqual:@"CameraScannerView"]& 1) == 0)
  {
    return self->_internal->preparesCellularRadioForNetworkConnection;
  }

  return 1;
}

- (void)setPreparesCellularRadioForNetworkConnection:(BOOL)connection
{
  connectionCopy = connection;
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementVDOPreparesCellularRadioForMRC))
  {
    self->_internal->preparesCellularRadioForNetworkConnectionSetByClient = 1;
    internal = self->_internal;
    if (internal->preparesCellularRadioForNetworkConnection != connectionCopy)
    {
      internal->preparesCellularRadioForNetworkConnection = connectionCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setPreservesDynamicHDRMetadata:(BOOL)metadata
{
  internal = self->_internal;
  if (internal->preservesDynamicHDRMetadata != metadata)
  {
    v8 = v3;
    v9 = v4;
    internal->preservesDynamicHDRMetadata = metadata;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__AVCaptureVideoDataOutput_setPreservesDynamicHDRMetadata___block_invoke;
    v6[3] = &unk_1E786EF58;
    v6[4] = self;
    metadataCopy = metadata;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v6];
  }
}

uint64_t __59__AVCaptureVideoDataOutput_setPreservesDynamicHDRMetadata___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:*(v3 + 40)];
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *MEMORY[0x1E698FE90];

      return v8(a2, v4, v9, v5);
    }
  }

  return result;
}

- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason
{
  mediaType = [connection mediaType];
  if (![mediaType isEqualToString:*MEMORY[0x1E6987608]])
  {
    v8 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v8 = 2;
LABEL_5:
    v9 = AVCaptureOutputConnectionFailureReasonString(v8, self, connection);
    result = 0;
    *reason = v9;
    return result;
  }

  return 1;
}

- (id)addConnection:(id)connection error:(id *)error
{
  internal = self->_internal;
  if (internal->deprecatedMinFrameDuration.flags)
  {
    v12 = *&internal->deprecatedMinFrameDuration.value;
    epoch = internal->deprecatedMinFrameDuration.epoch;
    [connection _setVideoMinFrameDuration:&v12];
    v8 = self->_internal;
    if (connection)
    {
      [connection _videoMinFrameDuration];
    }

    else
    {
      v12 = 0uLL;
      epoch = 0;
    }

    *&v8->deprecatedMinFrameDuration.value = v12;
    v8->deprecatedMinFrameDuration.epoch = epoch;
  }

  [connection addObserver:self forKeyPath:@"videoMirrored" options:3 context:AVCaptureOutputVideoMirroredChangedContext_0];
  [connection addObserver:self forKeyPath:@"videoOrientation" options:3 context:AVCaptureOutputVideoOrientationChangedContext_0];
  session = [(AVCaptureOutput *)self session];
  [session addObserver:self forKeyPath:@"sessionPreset" options:3 context:AVCaptureOutputSessionPresetChangedContext];
  -[AVCaptureVideoDataOutput _updateDeliversPreviewSizedOutputBuffersForConnection:sessionPreset:](self, "_updateDeliversPreviewSizedOutputBuffersForConnection:sessionPreset:", connection, [-[AVCaptureOutput session](self "session")]);
  [(AVCaptureVideoDataOutput *)self _updateAvailableVideoCVPixelFormatTypesForConnection:connection];
  [(AVCaptureVideoDataOutput *)self _updateVideoSettingsForConnection:connection connectionBeingAdded:1];
  v11.receiver = self;
  v11.super_class = AVCaptureVideoDataOutput;
  return [(AVCaptureOutput *)&v11 addConnection:connection error:error];
}

- (void)removeConnection:(id)connection
{
  [(AVCaptureVideoDataOutput *)self _updateAvailableVideoCVPixelFormatTypesForConnection:0];
  [connection removeObserver:self forKeyPath:@"videoMirrored" context:AVCaptureOutputVideoMirroredChangedContext_0];
  [connection removeObserver:self forKeyPath:@"videoOrientation" context:AVCaptureOutputVideoOrientationChangedContext_0];
  [-[AVCaptureOutput session](self "session")];
  -[AVCaptureVideoDataOutput _updateDeliversPreviewSizedOutputBuffersForConnection:sessionPreset:](self, "_updateDeliversPreviewSizedOutputBuffersForConnection:sessionPreset:", 0, [-[AVCaptureOutput session](self "session")]);
  v5.receiver = self;
  v5.super_class = AVCaptureVideoDataOutput;
  [(AVCaptureOutput *)&v5 removeConnection:connection];
}

- (CGSize)outputSizeForSourceFormat:(id)format
{
  if ([(AVCaptureVideoDataOutput *)self deliversPreviewSizedOutputBuffers])
  {
    previewDimensions = [format previewDimensions];
    v6 = previewDimensions;
    v7 = SHIDWORD(previewDimensions);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVCaptureVideoDataOutput;
    [(AVCaptureOutput *)&v8 outputSizeForSourceFormat:format];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (unsigned)requiredOutputFormatForConnection:(id)connection
{
  if ([(AVCaptureVideoDataOutput *)self hasRequiredOutputFormatForConnection:?])
  {
    v5 = [(NSDictionary *)self->_internal->clientVideoSettings objectForKeyedSubscript:*MEMORY[0x1E6966130]];

    return [v5 intValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AVCaptureVideoDataOutput;
    return [(AVCaptureOutput *)&v7 requiredOutputFormatForConnection:connection];
  }
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [-[NSArray firstObject](-[AVCaptureOutput connections](self "connections")];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -> %@", objc_msgSend(v5, "localizedName"), self];
  self->_internal->frameCounter = [objc_alloc(MEMORY[0x1E698F780]) initWithTitle:v6];
  [(FigCaptureFrameCounter *)self->_internal->frameCounter start];
  v7 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v7 addListenerWithWeakReference:weakReference callback:vdo_notificationHandler name:*MEMORY[0x1E698FE48] object:session flags:0];
  [v7 addListenerWithWeakReference:weakReference callback:vdo_notificationHandler name:*MEMORY[0x1E698FE40] object:session flags:0];
  v9.receiver = self;
  v9.super_class = AVCaptureVideoDataOutput;
  [(AVCaptureOutput *)&v9 attachSafelyToFigCaptureSession:session];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  [(FigCaptureFrameCounter *)self->_internal->frameCounter stop];

  self->_internal->frameCounter = 0;
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vdo_notificationHandler name:*MEMORY[0x1E698FE48] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vdo_notificationHandler name:*MEMORY[0x1E698FE40] object:session];
  v6.receiver = self;
  v6.super_class = AVCaptureVideoDataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:session];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (AVCaptureOutputVideoMirroredChangedContext_0 != context)
  {
    if (AVCaptureOutputVideoOrientationChangedContext_0 != context)
    {
      if (AVCaptureOutputSessionPresetChangedContext == context)
      {
        v11 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
        v12 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

        [(AVCaptureVideoDataOutput *)self _updateDeliversPreviewSizedOutputBuffersForConnection:v11 sessionPreset:v12];
      }

      return;
    }

    [(AVCaptureVideoDataOutput *)self updateVideoSettingsForConnection:[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608], object, change]];
  }

  v8 = [objc_msgSend(object "sourceDevice")];
  v9 = [objc_msgSend(object "sourceDevice")];

  [(AVCaptureOutput *)self updateMetadataTransformForSourceFormat:v8 aspectRatio:v9];
}

- (void)handleChangedActiveFormat:(id)format forDevice:(id)device
{
  v7 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
  [(AVCaptureVideoDataOutput *)self _updateAvailableVideoCVPixelFormatTypesForConnection:v7];
  -[AVCaptureVideoDataOutput _updateDeliversPreviewSizedOutputBuffersForConnection:sessionPreset:](self, "_updateDeliversPreviewSizedOutputBuffersForConnection:sessionPreset:", v7, [-[AVCaptureOutput session](self "session")]);
  v8.receiver = self;
  v8.super_class = AVCaptureVideoDataOutput;
  [(AVCaptureOutput *)&v8 handleChangedActiveFormat:format forDevice:device];
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  if ([objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([notification isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCaptureVideoDataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([notification isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCaptureVideoDataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue
{
  v5 = self->_internal->weakReference;
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_internal->delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", queue, [MessageReceiver copy]);
}

void __47__AVCaptureVideoDataOutput__updateRemoteQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) referencedObject];
  if (v7)
  {
    v8 = v7;
    if (a2 == -16665)
    {
      [*(v7[2] + 88) releaseRemoteQueueReceiver];
    }

    else if (!a2)
    {
      [v7 _handleRemoteQueueOperation:a3];
    }
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation
{
  if (operation->var0 == 3)
  {
    [(AVCaptureVideoDataOutput *)self _processSampleBuffer:operation->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)queue
{
  v5 = self->_internal->weakReference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AVCaptureVideoDataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786F260;
  v6[4] = v5;
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_internal->delegateCallbackHelper, "updateLocalQueue:handler:", queue, [v6 copy]);
}

void __46__AVCaptureVideoDataOutput__updateLocalQueue___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    v8 = *(a2 + 4);
    [v5 _handleLocalQueueMessage:&v7];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message
{
  if (message->var0 == 3)
  {
    [(AVCaptureVideoDataOutput *)self _processSampleBuffer:*(&message->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  activeDelegate = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper activeDelegate];
  if (![(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper delegateOverride])
  {
    CMRemoveAttachment(buffer, *MEMORY[0x1E69914F8]);
    CMRemoveAttachment(buffer, *MEMORY[0x1E6991500]);
    CMRemoveAttachment(buffer, *MEMORY[0x1E6991130]);
  }

  firstObject = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  if ([firstObject isLive] && objc_msgSend(-[AVCaptureOutput session](self, "session"), "isRunning") && (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) == 0)
  {
    if (CMSampleBufferGetImageBuffer(buffer))
    {
      if (objc_opt_respondsToSelector())
      {
        memset(&v9, 0, sizeof(v9));
        CMSampleBufferGetPresentationTimeStamp(&v9, buffer);
        frameCounter = self->_internal->frameCounter;
        v8 = v9;
        [(FigCaptureFrameCounter *)frameCounter incrementWithPTS:&v8];
        [activeDelegate captureOutput:self didOutputSampleBuffer:buffer fromConnection:firstObject];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [activeDelegate captureOutput:self didDropSampleBuffer:buffer fromConnection:firstObject];
    }
  }
}

- (void)_updateAvailableVideoCVPixelFormatTypesForConnection:(id)connection
{
  array = [MEMORY[0x1E695DF70] array];
  v6 = [objc_msgSend(connection "sourceDevice")];
  if (!v6)
  {
LABEL_7:
    [array addObjectsFromArray:&unk_1F1CEA3F8];
    goto LABEL_12;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType([v6 formatDescription]);
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
  if (MediaSubType == 2016686642)
  {
    [array addObject:&unk_1F1CE9C38];
  }

  else if (MediaSubType != 2016686640)
  {
    if (IsPackedBayerRaw)
    {
      if ([(AVCaptureVideoDataOutput *)self deliversPreviewSizedOutputBuffers])
      {
        v9 = &unk_1F1CE9C38;
      }

      else
      {
        v9 = &unk_1F1CE9C50;
      }

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  [array addObject:&unk_1F1CE9C08];
  if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    v9 = &unk_1F1CE9C20;
LABEL_11:
    [array addObject:v9];
  }

LABEL_12:
  if (!FigCapturePlatformSupportsUniversalCompression())
  {
    goto LABEL_35;
  }

  selfCopy = self;
  v10 = FigCapturePlatformSupportsUniversalLossyCompression();
  array2 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = array;
  v13 = [array countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v13)
  {
    goto LABEL_34;
  }

  v14 = v13;
  v15 = *v24;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v12);
      }

      intValue = [*(*(&v23 + 1) + 8 * i) intValue];
      if (intValue <= 1111970368)
      {
        if (intValue == 875704422)
        {
          v18 = 641230384;
          v19 = 758670896;
          v20 = &unk_1F1CEA428;
        }

        else
        {
          if (intValue != 875704438)
          {
            continue;
          }

          v18 = 641234480;
          v19 = 758674992;
          v20 = &unk_1F1CEA410;
        }
      }

      else
      {
        switch(intValue)
        {
          case 1111970369:
            v19 = 759318337;
            v18 = 641877825;
            v20 = &unk_1F1CEA440;
            break;
          case 2016686640:
            v18 = 645428784;
            v19 = 762869296;
            v20 = &unk_1F1CEA458;
            break;
          case 2016686642:
            v18 = 645428786;
            v19 = 762869298;
            v20 = &unk_1F1CEA470;
            break;
          default:
            continue;
        }
      }

      [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v18)}];
      if (v10)
      {
        [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v19)}];
        if (selfCopy->_internal->allLossyVideoCVPixelFormatTypesEnabled)
        {
          [array2 addObjectsFromArray:v20];
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v23 objects:v22 count:16];
  }

  while (v14);
LABEL_34:
  array = v12;
  [v12 addObjectsFromArray:array2];
  self = selfCopy;
LABEL_35:
  if (([array isEqual:self->_internal->availableVideoCVPixelFormatTypes] & 1) == 0)
  {
    [(AVCaptureVideoDataOutput *)self willChangeValueForKey:@"availableVideoCVPixelFormatTypes"];

    self->_internal->availableVideoCVPixelFormatTypes = [array copy];
    [(AVCaptureVideoDataOutput *)self didChangeValueForKey:@"availableVideoCVPixelFormatTypes"];
  }
}

- (void)_updateDeliversPreviewSizedOutputBuffersForConnection:(id)connection sessionPreset:(id)preset
{
  internal = self->_internal;
  if (internal->videoSettingsDimensionsOverrideEnabled)
  {
    v8 = [(NSDictionary *)internal->clientVideoSettings objectForKeyedSubscript:*MEMORY[0x1E6966208]];
    internal = self->_internal;
    if (v8)
    {
      if ([(NSDictionary *)internal->clientVideoSettings objectForKeyedSubscript:*MEMORY[0x1E69660B8]])
      {
        deliversPreviewSizedOutputBuffers = 0;
        goto LABEL_11;
      }

      internal = self->_internal;
    }
  }

  if (internal->automaticallyConfiguresOutputBufferDimensions)
  {
    [(AVCaptureOutput *)self session];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      deliversPreviewSizedOutputBuffers = [objc_msgSend(objc_msgSend(objc_msgSend(connection "sourceDevice")];
    }

    else
    {
      deliversPreviewSizedOutputBuffers = [preset isEqualToString:@"AVCaptureSessionPresetPhoto"];
    }
  }

  else
  {
    deliversPreviewSizedOutputBuffers = internal->deliversPreviewSizedOutputBuffers;
  }

LABEL_11:
  v10 = deliversPreviewSizedOutputBuffers & 1;
  if (self->_internal->deliversPreviewSizedOutputBuffers == (deliversPreviewSizedOutputBuffers & 1))
  {

    [(AVCaptureVideoDataOutput *)self updateVideoSettingsForConnection:connection];
  }

  else
  {
    [(AVCaptureVideoDataOutput *)self willChangeValueForKey:@"deliversPreviewSizedOutputBuffers"];
    self->_internal->deliversPreviewSizedOutputBuffers = v10;
    [(AVCaptureVideoDataOutput *)self updateVideoSettingsForConnection:connection];
    [(AVCaptureVideoDataOutput *)self didChangeValueForKey:@"deliversPreviewSizedOutputBuffers"];
    v11 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];

    [(AVCaptureVideoDataOutput *)self _updateAvailableVideoCVPixelFormatTypesForConnection:v11];
  }
}

- (void)updateClientVideoSettingsForAspectRatio:(id)ratio
{
  v5 = *MEMORY[0x1E6966208];
  v6 = [(NSDictionary *)self->_internal->clientVideoSettings objectForKeyedSubscript:*MEMORY[0x1E6966208]];
  v7 = *MEMORY[0x1E69660B8];
  v8 = [(NSDictionary *)self->_internal->clientVideoSettings objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    intValue = [v6 intValue];
    intValue2 = [v10 intValue];
    v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_internal->clientVideoSettings];
    v14 = v13;
    if (ratio && !self->_internal->videoSettingsAspectRatioOverrideEnabled)
    {
      v16 = AVCaptureConvertDimensionsForAspectRatio(intValue | (intValue2 << 32), ratio, NAN);
      v17 = HIDWORD(v16);
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v16), v5}];
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v17];
    }

    else
    {
      [v13 setObject:0 forKeyedSubscript:v5];
      v15 = 0;
    }

    [v14 setObject:v15 forKeyedSubscript:v7];

    self->_internal->clientVideoSettings = v14;
  }
}

- (void)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    queueCopy = 0;
  }

  else
  {
    queueCopy = queue;
  }

  v9 = 0;
  if (![(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setDelegateOverride:override delegateOverrideCallbackQueue:queueCopy exceptionReason:&v9])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (id)getTransformedDetectedObjectsInfoFromSampleBuffer:(opaqueCMSampleBuffer *)buffer connection:(id)connection
{
  if (buffer)
  {
    if (connection)
    {
      if ([(NSArray *)[(AVCaptureOutput *)self connections] containsObject:connection])
      {

        return AVCaptureGetTransformedDetectedObjectsInfo(buffer, connection, self);
      }

      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
    }

    else
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
  }

  v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v10);
  }

  NSLog(&cfstr_SuppressingExc.isa, v10);
  return 0;
}

- (BOOL)_updateVideoSettingsForConnection:(id)connection connectionBeingAdded:(BOOL)added
{
  if (added)
  {
    goto LABEL_4;
  }

  if (!connection)
  {
LABEL_9:
    LOBYTE(v6) = 0;
    return v6;
  }

  v6 = [(NSArray *)[(AVCaptureOutput *)self connections] containsObject:connection];
  if (v6)
  {
LABEL_4:
    clientVideoSettings = self->_internal->clientVideoSettings;
    if (SettingsArePassthru(clientVideoSettings))
    {
      v8 = 0;
    }

    else
    {
      v8 = clientVideoSettings;
    }

    v9 = [(AVCaptureVideoDataOutput *)self fullyPopulatedVideoSettingsForSettingsDictionary:v8 connection:connection];
    if (v9 != self->_internal->videoSettings)
    {
      v10 = v9;
      if (([(NSDictionary *)v9 isEqual:?]& 1) == 0)
      {
        [(AVCaptureVideoDataOutput *)self willChangeValueForKey:@"videoSettings"];

        self->_internal->videoSettings = [(NSDictionary *)v10 copy];
        [(AVCaptureVideoDataOutput *)self didChangeValueForKey:@"videoSettings"];
        LOBYTE(v6) = 1;
        return v6;
      }
    }

    goto LABEL_9;
  }

  return v6;
}

@end