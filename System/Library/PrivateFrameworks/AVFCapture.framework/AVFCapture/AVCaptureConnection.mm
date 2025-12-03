@interface AVCaptureConnection
+ (AVCaptureConnection)connectionWithInputPort:(AVCaptureInputPort *)port videoPreviewLayer:(AVCaptureVideoPreviewLayer *)layer;
+ (AVCaptureConnection)connectionWithInputPorts:(NSArray *)ports output:(AVCaptureOutput *)output;
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_videoMaxFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_videoMinFrameDuration;
- (AVCaptureConnection)initWithInputPort:(AVCaptureInputPort *)port videoPreviewLayer:(AVCaptureVideoPreviewLayer *)layer;
- (AVCaptureConnection)initWithInputPorts:(NSArray *)ports output:(AVCaptureOutput *)output;
- (AVCaptureVideoOrientation)videoOrientation;
- (BOOL)_outputIsPreviewSizedVideoDataOutput;
- (BOOL)_updateCameraIntrinsicMatrixDeliverySupported;
- (BOOL)enablesVideoStabilizationWhenAvailable;
- (BOOL)isLive;
- (BOOL)isLivePhotoMetadataWritingSupported;
- (BOOL)isTrulyDisabled;
- (BOOL)isVideoMaxFrameDurationSupported;
- (BOOL)isVideoMinFrameDurationSupported;
- (BOOL)isVideoRetainedBufferCountHintSupported;
- (BOOL)isVideoRotationAngleSupported:(CGFloat)videoRotationAngle;
- (BOOL)isVideoStabilizationEnabled;
- (BOOL)isVideoStabilizationSupported;
- (BOOL)sourcesFromExternalCamera;
- (CMTime)videoMaxFrameDuration;
- (CMTime)videoMinFrameDuration;
- (NSArray)audioChannels;
- (NSArray)inputPorts;
- (float)getAvgAudioLevelForChannel:(id)channel;
- (float)getPeakAudioLevelForChannel:(id)channel;
- (id)description;
- (id)figCaptureConnectionConfigurationForSessionPreset:(id)preset allConnections:(id)connections;
- (id)mediaType;
- (id)session;
- (id)supportedVideoMirroringMethodsForMovieRecording;
- (int)videoRetainedBufferCountHint;
- (int64_t)_resolveActiveVideoStabilizationMode:(int64_t)mode format:(id)format;
- (unint64_t)_indexOfAudioLevelChannel:(id)channel;
- (unsigned)clientRetainedBufferCount;
- (void)_handleChangedActiveFormat:(id)format forDevice:(id)device formatMediaType:(id)type;
- (void)_setVideoMinFrameDuration:(id *)duration;
- (void)_setVideoMirrored:(BOOL)mirrored;
- (void)_setVideoRotationAngle:(double)angle;
- (void)_updateActiveVideoStabilizationMode:(int64_t)mode bumpChangeSeed:(BOOL)seed;
- (void)_updateMaxScaleAndCropFactorForFormat:(id)format;
- (void)_updatePropertiesForFormat:(id)format;
- (void)_updateSupportedVideoMirroringMethodsForMovieRecording;
- (void)_updateVideoGreenGhostMitigationSupported;
- (void)_updateZoomSmoothingSupported;
- (void)bumpChangeSeed;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCameraIntrinsicMatrixDeliveryEnabled:(BOOL)cameraIntrinsicMatrixDeliveryEnabled;
- (void)setEnabled:(BOOL)enabled;
- (void)setEnablesVideoStabilizationWhenAvailable:(BOOL)enablesVideoStabilizationWhenAvailable;
- (void)setLivePhotoMetadataWritingEnabled:(BOOL)enabled;
- (void)setPreferredVideoStabilizationMode:(AVCaptureVideoStabilizationMode)preferredVideoStabilizationMode;
- (void)setVideoDeviceOrientationCorrectionEnabled:(BOOL)enabled;
- (void)setVideoGreenGhostMitigationEnabled:(BOOL)enabled;
- (void)setVideoMaxFrameDuration:(CMTime *)videoMaxFrameDuration;
- (void)setVideoMinFrameDuration:(CMTime *)videoMinFrameDuration;
- (void)setVideoMirrored:(BOOL)videoMirrored;
- (void)setVideoMirroringMethodForMovieRecording:(int64_t)recording;
- (void)setVideoOrientation:(AVCaptureVideoOrientation)videoOrientation;
- (void)setVideoRetainedBufferCountHint:(int)hint;
- (void)setVideoScaleAndCropFactor:(CGFloat)videoScaleAndCropFactor;
- (void)setVideoZoomSmoothingEnabled:(BOOL)enabled;
- (void)setupInternalStorage;
- (void)setupObservers;
- (void)teardownObservers;
- (void)updateAudioChannelsArray;
- (void)updateAudioLevelsArray;
@end

@implementation AVCaptureConnection

- (void)setupInternalStorage
{
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  inputPorts = self->_internal->inputPorts;
  v4 = [(NSMutableArray *)inputPorts countByEnumeratingWithState:&v59 objects:v58 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v60;
    v7 = *MEMORY[0x1E69875A0];
    v8 = *MEMORY[0x1E6987608];
    v52 = *MEMORY[0x1E69875D0];
    v9 = *MEMORY[0x1E69875C0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v60 != v6)
        {
          objc_enumerationMutation(inputPorts);
        }

        v11 = *(*(&v59 + 1) + 8 * i);
        if ([objc_msgSend(v11 "mediaType")])
        {
          v12 = 56;
        }

        else if ([objc_msgSend(v11 "mediaType")])
        {
          v12 = 96;
        }

        else if ([objc_msgSend(v11 "mediaType")])
        {
          v12 = 104;
        }

        else if (AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined() && ([objc_msgSend(v11 "mediaType")] & 1) != 0)
        {
          v12 = 112;
        }

        else if ([objc_msgSend(v11 "mediaType")])
        {
          v12 = 120;
        }

        else if ([objc_msgSend(v11 "mediaType")])
        {
          v12 = 128;
        }

        else if ([objc_msgSend(v11 "mediaType")])
        {
          v12 = 136;
        }

        else
        {
          if (![objc_msgSend(v11 "mediaType")])
          {
            continue;
          }

          v12 = 144;
        }

        *(&self->_internal->super.isa + v12) = v11;
      }

      v5 = [(NSMutableArray *)inputPorts countByEnumeratingWithState:&v59 objects:v58 count:16];
    }

    while (v5);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  inputPorts = [(AVCaptureConnection *)self inputPorts];
  v14 = [(NSArray *)inputPorts countByEnumeratingWithState:&v54 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v55;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(inputPorts);
        }

        input = [*(*(&v54 + 1) + 8 * j) input];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          device = [input device];
          goto LABEL_36;
        }
      }

      v15 = [(NSArray *)inputPorts countByEnumeratingWithState:&v54 objects:v53 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  device = 0;
  input = 0;
LABEL_36:
  self->_internal->sourceDeviceInput = input;
  self->_internal->sourceDevice = device;
  self->_internal->enabled = 1;
  self->_internal->active = 1;
  [objc_msgSend(objc_msgSend(device "activeFormat")];
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
  if (IsPackedBayerRaw)
  {
    BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCaptureProResRawVDORotationAndMirroringSupported");
  }

  else
  {
    BoolAnswer = 0;
  }

  output = [(AVCaptureConnection *)self output];
  videoPreviewLayer = [(AVCaptureConnection *)self videoPreviewLayer];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && self->_internal->videoInputPort || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && ((IsPackedBayerRaw ^ 1 | BoolAnswer) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    v24 = objc_opt_isKindOfClass() | (videoPreviewLayer != 0);
  }

  self->_internal->videoMirroringSupported = v24 & 1;
  self->_internal->videoMirrored = 0;
  self->_internal->automaticallyAdjustsVideoMirroring = 0;
  if (videoPreviewLayer)
  {
    self->_internal->automaticallyAdjustsVideoMirroring = 1;
    self->_internal->videoMirrored = [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
    self->_internal->videoMirrored |= [(AVCaptureConnection *)self sourcesFromExternalCamera];
  }

  self->_internal->supportedVideoMirroringMethodsForMovieRecording = &unk_1F1CEA488;
  self->_internal->videoMirroringMethodForMovieRecording = 0;
  self->_internal->videoRotationSupported = self->_internal->videoMirroringSupported;
  mediaType = [(AVCaptureConnection *)self mediaType];
  v26 = *MEMORY[0x1E6987608];
  if (([mediaType isEqualToString:*MEMORY[0x1E6987608]] & 1) != 0 || (v28 = -[AVCaptureConnection mediaType](self, "mediaType"), v29 = objc_msgSend(v28, "isEqualToString:", *MEMORY[0x1E69875C0]), v27 = 0.0, v29))
  {
    [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
    [(AVCaptureConnection *)self sourcesFromExternalCamera];
    v30 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
    v27 = 0.0;
    if (v30)
    {
      if ([(AVCaptureConnection *)self sourcesFromFrontFacingCamera]&& ([(AVCaptureConnection *)self sourcesFromFrontFacingCamera], [(AVCaptureConnection *)self sourcesFromExternalCamera], !FigCaptureCameraRequires180DegreesRotation()))
      {
        v27 = 270.0;
      }

      else
      {
        v27 = 90.0;
      }
    }
  }

  self->_internal->videoRotationAngle = v27;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v31 = [device hasMediaType:v26];
  }

  else
  {
    v31 = 0;
  }

  self->_internal->videoDeviceOrientationCorrectionSupported = v31;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    v32 = 0.0;
    if ((IsPackedBayerRaw & objc_opt_isKindOfClass() & 1) == 0)
    {
      [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
      [(AVCaptureConnection *)self sourcesFromExternalCamera];
      v49 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
      sourcesFromFrontFacingCamera = [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
      if (v49)
      {
        if (sourcesFromFrontFacingCamera)
        {
          [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
          [(AVCaptureConnection *)self sourcesFromExternalCamera];
          if (!FigCaptureCameraRequires180DegreesRotation())
          {
            v32 = 180.0;
          }
        }
      }

      else
      {
        if (!sourcesFromFrontFacingCamera || [(AVCaptureConnection *)self sourcesFromExternalCamera]|| FigCaptureFrontCameraRotationAngle() != 90)
        {
          goto LABEL_67;
        }

        v32 = 270.0;
      }
    }

    self->_internal->videoRotationAngle = v32;
  }

LABEL_67:
  internal = self->_internal;
  v34 = MEMORY[0x1E6960C70];
  v35 = *MEMORY[0x1E6960C70];
  *&internal->videoMinFrameDuration.value = *MEMORY[0x1E6960C70];
  v36 = *(v34 + 16);
  internal->videoMinFrameDuration.epoch = v36;
  v37 = self->_internal;
  *&v37->videoMaxFrameDuration.value = v35;
  v37->videoMaxFrameDuration.epoch = v36;
  self->_internal->videoScaleAndCropFactor = 1.0;
  self->_internal->videoMaxScaleAndCropFactor = 1.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    input2 = [(AVCaptureInputPort *)self->_internal->videoInputPort input];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions([objc_msgSend(-[AVCaptureInput device](input2 "device")]);
      v40 = vcvts_n_f32_s32(Dimensions.width, 4uLL);
      v41 = vcvts_n_f32_s32(Dimensions.height, 4uLL);
      if (v40 >= v41)
      {
        v40 = v41;
      }

      self->_internal->videoMaxScaleAndCropFactor = v40;
    }
  }

  self->_internal->videoRetainedBufferCountHint = 0;
  self->_internal->preferredVideoStabilizationMode = 0;
  v42 = self->_internal;
  if (v42->audioInputPort)
  {
    self->_internal->audioChannels = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    [(AVCaptureConnection *)self updateAudioChannelsArray];
    goto LABEL_75;
  }

  if (v42->videoInputPort)
  {
    if (AVGestaltGetBoolAnswer(@"AVGQCaptureMFOStabilizationIsAlwaysOn"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(AVCaptureConnection *)self isVideoStabilizationSupported])
        {
          self->_internal->preferredVideoStabilizationMode = 1;
          if ([(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->sourceDevice activeFormat] isVideoStabilizationModeSupported:1])
          {
            self->_internal->activeVideoStabilizationMode = 1;
          }
        }
      }
    }

    v51 = self->_internal;
    if (!v51->preferredVideoStabilizationMode)
    {
      if (!v51->videoPreviewLayerWeakReference)
      {
        if (![(AVCaptureConnection *)self _outputIsPreviewSizedVideoDataOutput])
        {
          goto LABEL_75;
        }

        v51 = self->_internal;
      }

      if ([(AVCaptureDeviceFormat *)[(AVCaptureDevice *)v51->sourceDevice activeFormat] isVideoStabilizationModeSupported:4])
      {
        [(AVCaptureConnection *)self setPreferredVideoStabilizationMode:4];
      }
    }
  }

LABEL_75:
  self->_internal->cameraIntrinsicMatrixDeliverySupported = 0;
  self->_internal->cameraIntrinsicMatrixDeliveryEnabled = 0;
  self->_internal->livePhotoMetadataWritingEnabled = 0;
  self->_internal->debugMetadataSidecarFileEnabled = 0;
  self->_internal->videoZoomSmoothingSupported = 0;
  self->_internal->videoZoomSmoothingEnabled = 0;
  self->_internal->videoGreenGhostMitigationSupported = 0;
  self->_internal->videoGreenGhostMitigationEnabled = 0;
  if (AVCaptureSessionIsLaunchPrewarmingEnabled())
  {
    v43 = objc_alloc(MEMORY[0x1E696AEC0]);
    v44 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](self "inputPorts")];
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    sinkID = [(AVCaptureOutput *)output sinkID];
    if (!sinkID)
    {
      sinkID = [(AVCaptureVideoPreviewLayer *)videoPreviewLayer sinkID];
    }

    v48 = [v43 initWithFormat:@"(%@ -> <%@> -> %@)", v44, v46, sinkID];
  }

  else
  {
    v48 = AVIdentifierForObject(self);
  }

  self->_internal->connectionID = v48;
}

- (void)_updateVideoGreenGhostMitigationSupported
{
  [(AVCaptureConnection *)self output];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(AVCaptureOutput *)[(AVCaptureConnection *)self output] isSpatialVideoCaptureEnabled]^ 1;
  }

  else
  {
    v3 = 0;
  }

  activeVideoStabilizationMode = self->_internal->activeVideoStabilizationMode;
  if (activeVideoStabilizationMode == 3 || activeVideoStabilizationMode == 5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  mediaType = [(AVCaptureConnection *)self mediaType];
  v8 = [mediaType isEqualToString:*MEMORY[0x1E6987608]];
  v9 = [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->sourceDevice activeFormat] isVideoGreenGhostMitigationSupported]& v8 & v6;
  if (self->_internal->videoGreenGhostMitigationSupported != v9)
  {
    [(AVCaptureConnection *)self willChangeValueForKey:@"videoGreenGhostMitigationSupported"];
    self->_internal->videoGreenGhostMitigationSupported = v9;
    if (!v9 && self->_internal->videoGreenGhostMitigationEnabled)
    {
      [(AVCaptureConnection *)self willChangeValueForKey:@"videoGreenGhostMitigationEnabled"];
      self->_internal->videoGreenGhostMitigationEnabled = 0;
      [(AVCaptureConnection *)self didChangeValueForKey:@"videoGreenGhostMitigationEnabled"];
    }

    [(AVCaptureConnection *)self didChangeValueForKey:@"videoGreenGhostMitigationSupported"];
  }
}

- (void)setupObservers
{
  internal = self->_internal;
  if (!internal->hasActiveObservers)
  {
    internal->hasActiveObservers = 1;
    v4 = self->_internal;
    sourceDevice = v4->sourceDevice;
    if (sourceDevice)
    {
      [(AVCaptureDevice *)sourceDevice addObserver:self forKeyPath:@"activeFormat" options:3 context:AVCaptureConnectionDeviceActiveFormatChangedContext];
      [(AVCaptureDevice *)self->_internal->sourceDevice addObserver:self forKeyPath:@"activeDepthDataFormat" options:3 context:AVCaptureConnectionDeviceActiveDepthDataFormatChangedContext];
      v4 = self->_internal;
    }

    if (v4->audioInputPort)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      [(AVCaptureConnection *)self updateAudioChannelsArray];
    }

    else if (v4->videoInputPort && v4->sourceDevice)
    {
      output = [(AVCaptureConnection *)self output];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(AVCaptureOutput *)output addObserver:self forKeyPath:@"livePhotoCaptureEnabled" options:3 context:AVCaptureConnectionLivePhotoEnabledChangedContext];
      }

      [(AVCaptureConnection *)self _updatePropertiesForFormat:[(AVCaptureDevice *)self->_internal->sourceDevice activeFormat]];
    }

    else if (v4->pointCloudDataInputPort)
    {
      v11 = v4->sourceDevice;
      if (v11)
      {
        [(AVCaptureDevice *)v11 addObserver:self forKeyPath:@"timeOfFlightProjectorMode" options:3 context:AVCaptureConnectionDeviceTimeOfFlightProjectorModeChangedContext];
      }
    }

    output2 = [(AVCaptureConnection *)self output];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AVCaptureOutput *)output2 addObserver:self forKeyPath:@"spatialVideoCaptureEnabled" options:3 context:AVCaptureConnectionSpatialVideoCaptureEnabledChangedContext];
      v7 = [-[AVCaptureConnection sourceDeviceInput](self "sourceDeviceInput")];
      [v7 addObserver:self forKeyPath:@"videoFrameDurationLocked" options:3 context:AVCaptureDeviceVideoFrameDurationLockedChangedContext];
      v8 = [-[AVCaptureConnection sourceDeviceInput](self "sourceDeviceInput")];
      v9 = AVCaptureDeviceFollowingExternalSyncDeviceChangedContext;

      [v8 addObserver:self forKeyPath:@"followingExternalSyncDevice" options:3 context:v9];
    }
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BOOL)sourcesFromExternalCamera
{
  if ([(NSString *)[(AVCaptureDevice *)self->_internal->sourceDevice deviceType] isEqualToString:@"AVCaptureDeviceTypeExternal"])
  {
    return 1;
  }

  deviceType = [(AVCaptureDevice *)self->_internal->sourceDevice deviceType];

  return [(NSString *)deviceType isEqualToString:@"AVCaptureDeviceTypeContinuityCamera"];
}

- (NSArray)inputPorts
{
  v2 = self->_internal->inputPorts;

  return v2;
}

- (id)mediaType
{
  internal = self->_internal;
  result = internal->videoInputPort;
  if (result)
  {
    return [result mediaType];
  }

  result = internal->audioInputPort;
  if (result)
  {
    return [result mediaType];
  }

  result = internal->metadataInputPort;
  if (result)
  {
    return [result mediaType];
  }

  result = internal->metadataItemInputPort;
  if (result)
  {
    return [result mediaType];
  }

  result = internal->depthDataInputPort;
  if (result)
  {
    return [result mediaType];
  }

  result = internal->visionDataInputPort;
  if (result)
  {
    return [result mediaType];
  }

  result = internal->pointCloudDataInputPort;
  if (result)
  {
    return [result mediaType];
  }

  result = internal->cameraCalibrationDataInputPort;
  if (result)
  {
    return [result mediaType];
  }

  return result;
}

- (BOOL)_updateCameraIntrinsicMatrixDeliverySupported
{
  [(AVCaptureConnection *)self output];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  activeVideoStabilizationMode = self->_internal->activeVideoStabilizationMode;
  v5 = activeVideoStabilizationMode > 6;
  v6 = (1 << activeVideoStabilizationMode) & 0x51;
  if (v5 || v6 == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = isKindOfClass;
  }

  mediaType = [(AVCaptureConnection *)self mediaType];
  v10 = [mediaType isEqualToString:*MEMORY[0x1E6987608]];
  isCameraIntrinsicMatrixDeliverySupported = [(AVCaptureDevice *)self->_internal->sourceDevice isCameraIntrinsicMatrixDeliverySupported];
  [-[NSArray lastObject](-[AVCaptureDeviceFormat videoSupportedFrameRateRanges](-[AVCaptureDevice activeFormat](self->_internal->sourceDevice "activeFormat")];
  v13 = (v12 <= 120.0) & isCameraIntrinsicMatrixDeliverySupported & v10 & v8;
  if (self->_internal->cameraIntrinsicMatrixDeliverySupported == v13)
  {
    return 0;
  }

  [(AVCaptureConnection *)self willChangeValueForKey:@"cameraIntrinsicMatrixDeliverySupported"];
  self->_internal->cameraIntrinsicMatrixDeliverySupported = v13;
  if (v13 || !self->_internal->cameraIntrinsicMatrixDeliveryEnabled)
  {
    v14 = 0;
  }

  else
  {
    [(AVCaptureConnection *)self willChangeValueForKey:@"cameraIntrinsicMatrixDeliveryEnabled"];
    self->_internal->cameraIntrinsicMatrixDeliveryEnabled = 0;
    [(AVCaptureConnection *)self didChangeValueForKey:@"cameraIntrinsicMatrixDeliveryEnabled"];
    v14 = 1;
  }

  [(AVCaptureConnection *)self didChangeValueForKey:@"cameraIntrinsicMatrixDeliverySupported"];
  return v14;
}

- (void)_updateSupportedVideoMirroringMethodsForMovieRecording
{
  array = [MEMORY[0x1E695DF70] array];
  output = [(AVCaptureConnection *)self output];
  if (self->_internal->videoMirroringSupported)
  {
    v5 = output;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [array addObject:&unk_1F1CE9DA0];
      if ((self->_internal->activeVideoStabilizationMode & 0xFFFFFFFFFFFFFFFBLL) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      [array addObject:&unk_1F1CE9DB8];
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [array addObject:&unk_1F1CE9DA0];
      isLivePhotoCaptureEnabled = [(AVCaptureOutput *)v5 isLivePhotoCaptureEnabled];
      isIrisVideoStabilizationSupported = [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->sourceDevice activeFormat] isIrisVideoStabilizationSupported];
      if (isLivePhotoCaptureEnabled)
      {
        if (isIrisVideoStabilizationSupported)
        {
          goto LABEL_8;
        }
      }
    }
  }

LABEL_9:
  if (![array count])
  {
    [array addObject:&unk_1F1CE9D88];
  }

  if (([array isEqual:self->_internal->supportedVideoMirroringMethodsForMovieRecording] & 1) == 0)
  {
    if ([array containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->_internal->videoMirroringMethodForMovieRecording)}])
    {
      videoMirroringMethodForMovieRecording = self->_internal->videoMirroringMethodForMovieRecording;
    }

    else
    {
      videoMirroringMethodForMovieRecording = [objc_msgSend(array "firstObject")];
    }

    [(AVCaptureConnection *)self willChangeValueForKey:@"supportedVideoMirroringMethodsForMovieRecording"];

    self->_internal->supportedVideoMirroringMethodsForMovieRecording = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array];
    if (videoMirroringMethodForMovieRecording != self->_internal->videoMirroringMethodForMovieRecording)
    {
      [(AVCaptureConnection *)self willChangeValueForKey:@"videoMirroringMethodForMovieRecording"];
      self->_internal->videoMirroringMethodForMovieRecording = videoMirroringMethodForMovieRecording;
      [(AVCaptureConnection *)self didChangeValueForKey:@"videoMirroringMethodForMovieRecording"];
    }

    [(AVCaptureConnection *)self didChangeValueForKey:@"supportedVideoMirroringMethodsForMovieRecording"];
  }
}

- (void)_updateZoomSmoothingSupported
{
  [(AVCaptureConnection *)self output];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    [(AVCaptureConnection *)self output];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  activeVideoStabilizationMode = self->_internal->activeVideoStabilizationMode;
  if (activeVideoStabilizationMode == 3 || activeVideoStabilizationMode == 5)
  {
    v6 = isKindOfClass;
  }

  else
  {
    v6 = 0;
  }

  mediaType = [(AVCaptureConnection *)self mediaType];
  v8 = [mediaType isEqualToString:*MEMORY[0x1E6987608]];
  v9 = [(AVCaptureDevice *)self->_internal->sourceDevice isVideoZoomSmoothingSupported]& v6 & v8;
  if (self->_internal->videoZoomSmoothingSupported != v9)
  {
    [(AVCaptureConnection *)self willChangeValueForKey:@"videoZoomSmoothingSupported"];
    self->_internal->videoZoomSmoothingSupported = v9;
    if (!v9 && self->_internal->videoZoomSmoothingEnabled)
    {
      [(AVCaptureConnection *)self willChangeValueForKey:@"videoZoomSmoothingEnabled"];
      self->_internal->videoZoomSmoothingEnabled = 0;
      [(AVCaptureConnection *)self didChangeValueForKey:@"videoZoomSmoothingEnabled"];
    }

    [(AVCaptureConnection *)self didChangeValueForKey:@"videoZoomSmoothingSupported"];
  }
}

- (BOOL)isLive
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  inputPorts = [(AVCaptureConnection *)self inputPorts];
  v4 = [(NSArray *)inputPorts countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(inputPorts);
      }

      isEnabled = [*(*(&v11 + 1) + 8 * v7) isEnabled];
      if (!isEnabled)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)inputPorts countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v5)
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
    isEnabled = [(AVCaptureConnection *)self isEnabled];
    if (isEnabled)
    {
      LOBYTE(isEnabled) = [(AVCaptureConnection *)self isActive];
    }
  }

  return isEnabled;
}

- (BOOL)isVideoStabilizationSupported
{
  internal = self->_internal;
  if (internal->videoPreviewLayerWeakReference)
  {
    activeFormat = [(AVCaptureDevice *)internal->sourceDevice activeFormat];

    LOBYTE(v4) = [(AVCaptureDeviceFormat *)activeFormat isVideoStabilizationModeSupported:4];
  }

  else
  {
    mediaType = [(AVCaptureConnection *)self mediaType];
    v4 = [mediaType isEqualToString:*MEMORY[0x1E6987608]];
    if (v4)
    {
      sourceDevice = self->_internal->sourceDevice;

      LOBYTE(v4) = [(AVCaptureDevice *)sourceDevice isVideoStabilizationSupported];
    }
  }

  return v4;
}

- (AVCaptureVideoOrientation)videoOrientation
{
  [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)self sourcesFromExternalCamera];
  v3 = FigCaptureCameraRequires180DegreesRotation();
  [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)self sourcesFromExternalCamera];
  v4 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
  videoRotationAngle = self->_internal->videoRotationAngle;
  if (v4)
  {
    if (videoRotationAngle == 90.0)
    {
      if ([(AVCaptureConnection *)self sourcesFromFrontFacingCamera])
      {
        v6 = (([(AVCaptureConnection *)self sourcesFromExternalCamera]| v3) & 1) == 0;
        v7 = AVCaptureVideoOrientationPortrait;
        goto LABEL_18;
      }

      return 1;
    }

    if (videoRotationAngle == 270.0)
    {
      if ([(AVCaptureConnection *)self sourcesFromFrontFacingCamera])
      {
        v9 = (([(AVCaptureConnection *)self sourcesFromExternalCamera]| v3) & 1) == 0;
        v10 = AVCaptureVideoOrientationPortrait;
        goto LABEL_27;
      }

      return 2;
    }

    if (videoRotationAngle == 180.0)
    {
      v6 = v3 == 0;
LABEL_17:
      v7 = AVCaptureVideoOrientationLandscapeRight;
LABEL_18:
      if (v6)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }

    if (videoRotationAngle != 0.0)
    {
      return 1;
    }

    v9 = v3 == 0;
  }

  else
  {
    if (videoRotationAngle == 0.0)
    {
      return 1;
    }

    if (videoRotationAngle == 180.0)
    {
      return 2;
    }

    if (videoRotationAngle == 270.0)
    {
      if (![(AVCaptureConnection *)self sourcesFromFrontFacingCamera])
      {
        return 3;
      }

      v6 = ![(AVCaptureConnection *)self sourcesFromExternalCamera];
      goto LABEL_17;
    }

    if (videoRotationAngle != 90.0)
    {
      return 1;
    }

    if (![(AVCaptureConnection *)self sourcesFromFrontFacingCamera])
    {
      return 4;
    }

    v9 = ![(AVCaptureConnection *)self sourcesFromExternalCamera];
  }

  v10 = AVCaptureVideoOrientationLandscapeRight;
LABEL_27:
  if (v9)
  {
    return v10;
  }

  else
  {
    return v10 + 1;
  }
}

- (BOOL)isTrulyDisabled
{
  if (![(AVCaptureConnection *)self isActive])
  {
    return 1;
  }

  if (-[AVCaptureConnection isEnabled](self, "isEnabled") && ([-[NSArray firstObject](-[AVCaptureConnection inputPorts](self "inputPorts")] & 1) != 0)
  {
    return 0;
  }

  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  [(AVCaptureConnection *)self output];
  return [v4 containsObject:objc_opt_class()];
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal->hasActiveObservers)
  {
    [(AVCaptureConnection *)self teardownObservers];
    internal = self->_internal;
  }

  v4 = self->_internal;
  audioChannels = v4->audioChannels;
  if (audioChannels)
  {
    [(NSMutableArray *)audioChannels makeObjectsPerformSelector:sel_invalidate];

    v4 = self->_internal;
  }

  v6.receiver = self;
  v6.super_class = AVCaptureConnection;
  [(AVCaptureConnection *)&v6 dealloc];
}

- (void)updateAudioChannelsArray
{
  internal = self->_internal;
  objc_sync_enter(internal);
  formatDescription = [(AVCaptureInputPort *)self->_internal->audioInputPort formatDescription];
  if (!formatDescription)
  {
    v7 = 0;
    mChannelsPerFrame = 1;
    goto LABEL_19;
  }

  mChannelsPerFrame = CMAudioFormatDescriptionGetStreamBasicDescription(formatDescription)->mChannelsPerFrame;
  if (mChannelsPerFrame != 6)
  {
    v7 = 0;
    goto LABEL_19;
  }

  [(AVCaptureConnection *)self output];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    spatialAudioChannelLayoutTag = [(AVCaptureOutput *)[(AVCaptureConnection *)self output] spatialAudioChannelLayoutTag];
    v7 = spatialAudioChannelLayoutTag;
    if (spatialAudioChannelLayoutTag == 6619138)
    {
      mChannelsPerFrame = 2;
      goto LABEL_19;
    }

    if (spatialAudioChannelLayoutTag == 12451844)
    {
      mChannelsPerFrame = 4;
      goto LABEL_19;
    }

    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14[0] = 67109120;
    v14[1] = v7;
    v12 = v14;
    v10 = _os_log_send_and_compose_impl();
    v13 = 0;
    LOBYTE(v12) = 0;
    FigCapturePleaseFileRadar();
    free(v10);
  }

  else
  {
    [(AVCaptureConnection *)self output];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [-[AVCaptureConnection sourceDeviceInput](self "sourceDeviceInput")];
      if (v8 == 2)
      {
        v7 = 6619138;
      }

      else
      {
        v7 = 0;
      }

      if (v8 == 2)
      {
        mChannelsPerFrame = 2;
      }

      else
      {
        mChannelsPerFrame = 6;
      }

      goto LABEL_19;
    }
  }

  v7 = 0;
  mChannelsPerFrame = 6;
LABEL_19:
  self->_internal->spatialAudioChannelLayoutTagForChannelLevels = v7;
  if ([(NSMutableArray *)self->_internal->audioChannels count:v12]!= mChannelsPerFrame)
  {
    [(AVCaptureConnection *)self willChangeValueForKey:@"audioChannels"];
    while ([(NSMutableArray *)self->_internal->audioChannels count]< mChannelsPerFrame)
    {
      v11 = [[AVCaptureAudioChannel alloc] initWithConnection:self];
      [(NSMutableArray *)self->_internal->audioChannels addObject:v11];
    }

    while ([(NSMutableArray *)self->_internal->audioChannels count]> mChannelsPerFrame)
    {
      [-[NSMutableArray lastObject](self->_internal->audioChannels "lastObject")];
      [(NSMutableArray *)self->_internal->audioChannels removeLastObject];
    }

    [(AVCaptureConnection *)self didChangeValueForKey:@"audioChannels"];
  }

  objc_sync_exit(internal);
}

- (BOOL)_outputIsPreviewSizedVideoDataOutput
{
  output = [(AVCaptureConnection *)self output];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(AVCaptureOutput *)output deliversPreviewSizedOutputBuffers];
}

- (void)bumpChangeSeed
{
  [(AVCaptureConnection *)self willChangeValueForKey:@"changeSeed"];
  ++self->_internal->changeSeed;

  [(AVCaptureConnection *)self didChangeValueForKey:@"changeSeed"];
}

- (id)supportedVideoMirroringMethodsForMovieRecording
{
  v2 = self->_internal->supportedVideoMirroringMethodsForMovieRecording;

  return v2;
}

- (id)session
{
  if (self->_internal->outputWeakReference)
  {
    output = [(AVCaptureConnection *)self output];
  }

  else
  {
    output = [(AVCaptureConnection *)self videoPreviewLayer];
  }

  return [(AVCaptureOutput *)output session];
}

+ (AVCaptureConnection)connectionWithInputPorts:(NSArray *)ports output:(AVCaptureOutput *)output
{
  v4 = [objc_alloc(objc_opt_class()) initWithInputPorts:ports output:output];

  return v4;
}

+ (AVCaptureConnection)connectionWithInputPort:(AVCaptureInputPort *)port videoPreviewLayer:(AVCaptureVideoPreviewLayer *)layer
{
  v4 = [objc_alloc(objc_opt_class()) initWithInputPort:port videoPreviewLayer:layer];

  return v4;
}

- (AVCaptureConnection)initWithInputPorts:(NSArray *)ports output:(AVCaptureOutput *)output
{
  v9.receiver = self;
  v9.super_class = AVCaptureConnection;
  v6 = [(AVCaptureConnection *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVCaptureConnectionInternal);
    v6->_internal = v7;
    if (ports && output && v7)
    {
      v6->_internal->inputPorts = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:ports];
      v6->_internal->outputWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:output];
      [(AVCaptureConnection *)v6 setupInternalStorage];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (AVCaptureConnection)initWithInputPort:(AVCaptureInputPort *)port videoPreviewLayer:(AVCaptureVideoPreviewLayer *)layer
{
  v6 = [(AVCaptureConnection *)self init];
  if (v6)
  {
    v7 = objc_alloc_init(AVCaptureConnectionInternal);
    v6->_internal = v7;
    if (port && layer && v7)
    {
      v6->_internal->inputPorts = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{port, 0}];
      v6->_internal->videoPreviewLayerWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:layer];
      [(AVCaptureConnection *)v6 setupInternalStorage];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (id)description
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  inputPorts = [(AVCaptureConnection *)self inputPorts];
  v3 = [(NSArray *)inputPorts countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    string = 0;
    v6 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(inputPorts);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if (!string)
        {
          string = [MEMORY[0x1E696AD60] string];
        }

        input = [v8 input];
        v10 = objc_opt_class();
        objc_msgSend(string, "appendFormat:", @"(%@: %p"), NSStringFromClass(v10), input;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [string appendFormat:@" %@", objc_msgSend(objc_msgSend(input, "device"), "localizedName")];
        }

        [string appendString:@""]);
      }

      v4 = [(NSArray *)inputPorts countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    string = 0;
  }

  if ([(AVCaptureConnection *)self output])
  {
    v11 = MEMORY[0x1E696AD60];
    [(AVCaptureConnection *)self output];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    output = [(AVCaptureConnection *)self output];
  }

  else
  {
    if (![(AVCaptureConnection *)self videoPreviewLayer])
    {
      v16 = 0;
      goto LABEL_19;
    }

    v11 = MEMORY[0x1E696AEC0];
    [(AVCaptureConnection *)self videoPreviewLayer];
    v15 = objc_opt_class();
    v13 = NSStringFromClass(v15);
    output = [(AVCaptureConnection *)self videoPreviewLayer];
  }

  v16 = [v11 stringWithFormat:@"%@: %p", v13, output];
LABEL_19:
  v17 = MEMORY[0x1E696AEC0];
  v18 = objc_opt_class();
  return [v17 stringWithFormat:@"<%@: %p %@ -> (%@) [type:%@][enabled:%u][active:%u]>", NSStringFromClass(v18), self, string, v16, -[AVCaptureConnection mediaType](self, "mediaType"), -[AVCaptureConnection isEnabled](self, "isEnabled"), -[AVCaptureConnection isActive](self, "isActive")];
}

- (void)teardownObservers
{
  internal = self->_internal;
  if (!internal->hasActiveObservers)
  {
    return;
  }

  internal->hasActiveObservers = 0;
  sourceDevice = self->_internal->sourceDevice;
  if (sourceDevice)
  {
    [(AVCaptureDevice *)sourceDevice removeObserver:self forKeyPath:@"activeFormat" context:AVCaptureConnectionDeviceActiveFormatChangedContext];
    [(AVCaptureDevice *)self->_internal->sourceDevice removeObserver:self forKeyPath:@"activeDepthDataFormat" context:AVCaptureConnectionDeviceActiveDepthDataFormatChangedContext];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v5 = self->_internal;
  if (v5->videoInputPort && v5->sourceDevice)
  {
    if (v5->hasVideoMinFrameDurationObserver)
    {
      v5->hasVideoMinFrameDurationObserver = 0;
      [(AVCaptureDevice *)self->_internal->sourceDevice removeObserver:self forKeyPath:@"activeVideoMinFrameDuration" context:AVCaptureConnectionDeviceActiveMinFrameDurationChangedContext];
    }

    output = [(AVCaptureConnection *)self output];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v7 = AVCaptureConnectionLivePhotoEnabledChangedContext;
    v8 = @"livePhotoCaptureEnabled";
    v9 = output;
    goto LABEL_13;
  }

  if (v5->pointCloudDataInputPort)
  {
    v9 = v5->sourceDevice;
    if (v9)
    {
      v7 = AVCaptureConnectionDeviceTimeOfFlightProjectorModeChangedContext;
      v8 = @"timeOfFlightProjectorMode";
LABEL_13:
      [v9 removeObserver:self forKeyPath:v8 context:v7];
    }
  }

LABEL_14:
  output2 = [(AVCaptureConnection *)self output];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVCaptureOutput *)output2 removeObserver:self forKeyPath:@"spatialVideoCaptureEnabled" context:AVCaptureConnectionSpatialVideoCaptureEnabledChangedContext];
    v11 = [-[AVCaptureConnection sourceDeviceInput](self "sourceDeviceInput")];
    [v11 removeObserver:self forKeyPath:@"videoFrameDurationLocked" context:AVCaptureDeviceVideoFrameDurationLockedChangedContext];
    v12 = [-[AVCaptureConnection sourceDeviceInput](self "sourceDeviceInput")];
    v13 = AVCaptureDeviceFollowingExternalSyncDeviceChangedContext;

    [v12 removeObserver:self forKeyPath:@"followingExternalSyncDevice" context:v13];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (internal->enabled != enabled)
  {
    internal->enabled = enabled;
    [(AVCaptureConnection *)self bumpChangeSeed];
  }
}

- (NSArray)audioChannels
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_internal->audioChannels];
  objc_sync_exit(internal);
  return v4;
}

- (void)updateAudioLevelsArray
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (UpTimeNanoseconds > self->_internal->lastGetAudioLevelsTime + 10000000)
  {
    v4 = UpTimeNanoseconds;
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__4;
    v12 = __Block_byref_object_dispose__4;
    v13 = 0;
    v5 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](self "inputPorts")];
    output = [(AVCaptureConnection *)self output];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__AVCaptureConnection_updateAudioLevelsArray__block_invoke;
    v7[3] = &unk_1E786EA80;
    v7[4] = v5;
    v7[5] = &v8;
    [(AVCaptureOutput *)output performFigCaptureSessionOperationSafelyUsingBlock:v7];

    self->_internal->audioChannelLevels = v9[5];
    self->_internal->lastGetAudioLevelsTime = v4;
    _Block_object_dispose(&v8, 8);
  }
}

uint64_t __45__AVCaptureConnection_updateAudioLevelsArray__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(result + 32);
    v4 = *(*(result + 40) + 8);
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = VTable + 16;
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *MEMORY[0x1E698FA40];
      v9 = *MEMORY[0x1E695E480];

      return v7(a2, v3, v8, v9, v4 + 40);
    }
  }

  return result;
}

- (unint64_t)_indexOfAudioLevelChannel:(id)channel
{
  v4 = [(NSMutableArray *)self->_internal->audioChannels indexOfObject:channel];
  if (v4 < [(NSMutableArray *)self->_internal->audioChannels count])
  {
    internal = self->_internal;
    if (internal->spatialAudioChannelLayoutTagForChannelLevels == 12451844 && [(NSArray *)internal->audioChannelLevels count]== 12)
    {
      v4 += 2;
    }
  }

  return v4;
}

- (float)getAvgAudioLevelForChannel:(id)channel
{
  internal = self->_internal;
  objc_sync_enter(internal);
  if (!self->_internal->audioChannels)
  {
    goto LABEL_6;
  }

  [(AVCaptureConnection *)self updateAudioLevelsArray];
  if (!self->_internal->audioChannelLevels)
  {
    goto LABEL_6;
  }

  v6 = [(AVCaptureConnection *)self _indexOfAudioLevelChannel:channel];
  if (2 * v6 >= [(NSArray *)self->_internal->audioChannelLevels count])
  {
    FigDebugAssert3();
LABEL_6:
    v8 = -120.0;
    goto LABEL_7;
  }

  [-[NSArray objectAtIndexedSubscript:](self->_internal->audioChannelLevels "objectAtIndexedSubscript:"floatValue"")];
  v8 = v7;
LABEL_7:
  objc_sync_exit(internal);
  return v8;
}

- (float)getPeakAudioLevelForChannel:(id)channel
{
  internal = self->_internal;
  objc_sync_enter(internal);
  if (!self->_internal->audioChannels)
  {
    goto LABEL_6;
  }

  [(AVCaptureConnection *)self updateAudioLevelsArray];
  if (!self->_internal->audioChannelLevels)
  {
    goto LABEL_6;
  }

  v6 = [(AVCaptureConnection *)self _indexOfAudioLevelChannel:channel];
  if (2 * v6 >= [(NSArray *)self->_internal->audioChannelLevels count])
  {
    FigDebugAssert3();
LABEL_6:
    v8 = -120.0;
    goto LABEL_7;
  }

  [-[NSArray objectAtIndexedSubscript:](self->_internal->audioChannelLevels objectAtIndexedSubscript:{(2 * v6) | 1), "floatValue"}];
  v8 = v7;
LABEL_7:
  objc_sync_exit(internal);
  return v8;
}

- (void)setVideoMirrored:(BOOL)videoMirrored
{
  v3 = videoMirrored;
  if (![(AVCaptureConnection *)self isVideoMirroringSupported])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    goto LABEL_5;
  }

  if ([(AVCaptureConnection *)self automaticallyAdjustsVideoMirroring])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
LABEL_5:
    v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
    return;
  }

  internal = self->_internal;
  if (internal->videoMirrored != v3)
  {
    internal->videoMirrored = v3;
    output = [(AVCaptureConnection *)self output];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {

      [(AVCaptureOutput *)output bumpChangeSeed];
    }

    else if (AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(AVCaptureOutput *)output recordingInProgress])
        {
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __40__AVCaptureConnection_setVideoMirrored___block_invoke;
          v10[3] = &unk_1E786EF58;
          v10[4] = self;
          v11 = v3;
          [(AVCaptureOutput *)output performFigCaptureSessionOperationSafelyUsingBlock:v10];
        }
      }
    }
  }
}

uint64_t __40__AVCaptureConnection_setVideoMirrored___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(*(result + 32) + 8) + 272);
    v4 = [MEMORY[0x1E696AD98] numberWithBool:*(result + 40)];
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = VTable + 16;
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = *MEMORY[0x1E698FE78];

      return v7(a2, v3, v8, v4);
    }
  }

  return result;
}

- (void)_setVideoMirrored:(BOOL)mirrored
{
  [(AVCaptureConnection *)self willChangeValueForKey:@"videoMirrored"];
  self->_internal->videoMirrored = mirrored;

  [(AVCaptureConnection *)self didChangeValueForKey:@"videoMirrored"];
}

- (BOOL)isVideoRotationAngleSupported:(CGFloat)videoRotationAngle
{
  if (videoRotationAngle == 0.0)
  {
    return 1;
  }

  if (!self->_internal->videoRotationSupported)
  {
    return 0;
  }

  v4 = videoRotationAngle == 90.0;
  if (videoRotationAngle == 180.0)
  {
    v4 = 1;
  }

  return videoRotationAngle == 270.0 || v4;
}

- (void)_setVideoRotationAngle:(double)angle
{
  if ([(AVCaptureConnection *)self isVideoRotationAngleSupported:?])
  {
    internal = self->_internal;
    if (internal->videoRotationAngle != angle)
    {
      internal->videoRotationAngle = angle;
      output = [(AVCaptureConnection *)self output];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [(AVCaptureOutput *)output updateVideoSettingsForConnection:self];

        [(AVCaptureOutput *)output bumpChangeSeed];
      }

      else if (AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined())
      {
        if (objc_opt_class(), (objc_opt_isKindOfClass()) && ([(AVCaptureOutput *)output recordingInProgress]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __46__AVCaptureConnection__setVideoRotationAngle___block_invoke;
          v8[3] = &unk_1E786F288;
          v8[4] = self;
          *&v8[5] = angle;
          [(AVCaptureOutput *)output performFigCaptureSessionOperationSafelyUsingBlock:v8];
        }
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, *&angle}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

uint64_t __46__AVCaptureConnection__setVideoRotationAngle___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(*(result + 32) + 8) + 272);
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(result + 40)];
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = VTable + 16;
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = *MEMORY[0x1E698FE80];

      return v7(a2, v3, v8, v4);
    }
  }

  return result;
}

- (void)setVideoOrientation:(AVCaptureVideoOrientation)videoOrientation
{
  if ([(AVCaptureConnection *)self isVideoOrientationSupported])
  {
    [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
    [(AVCaptureConnection *)self sourcesFromExternalCamera];
    v5 = FigCaptureCameraRequires180DegreesRotation();
    [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
    [(AVCaptureConnection *)self sourcesFromExternalCamera];
    if (AVCapturePlatformMountsCamerasInLandscapeOrientation())
    {
      v6 = 0.0;
      if (videoOrientation > AVCaptureVideoOrientationPortraitUpsideDown)
      {
        if (videoOrientation == AVCaptureVideoOrientationLandscapeRight)
        {
          v6 = 180.0;
          if (!v5)
          {
            v6 = 0.0;
          }

          goto LABEL_33;
        }

        if (videoOrientation != AVCaptureVideoOrientationLandscapeLeft)
        {
          goto LABEL_33;
        }

        v7 = v5 == 0;
        v6 = 180.0;
        v8 = 0.0;
      }

      else
      {
        if (videoOrientation != AVCaptureVideoOrientationPortrait)
        {
          if (videoOrientation == AVCaptureVideoOrientationPortraitUpsideDown)
          {
            if ([(AVCaptureConnection *)self sourcesFromFrontFacingCamera])
            {
              v7 = (([(AVCaptureConnection *)self sourcesFromExternalCamera]| v5) & 1) == 0;
              v6 = 90.0;
              v8 = 270.0;
              goto LABEL_23;
            }

            v6 = 270.0;
          }

LABEL_33:

          [(AVCaptureConnection *)self _setVideoRotationAngle:v6];
          return;
        }

        if (![(AVCaptureConnection *)self sourcesFromFrontFacingCamera])
        {
          v6 = 90.0;
          goto LABEL_33;
        }

        v7 = (([(AVCaptureConnection *)self sourcesFromExternalCamera]| v5) & 1) == 0;
        v6 = 270.0;
        v8 = 90.0;
      }
    }

    else if (videoOrientation == AVCaptureVideoOrientationLandscapeLeft)
    {
      if (![(AVCaptureConnection *)self sourcesFromFrontFacingCamera])
      {
        v6 = 90.0;
        goto LABEL_33;
      }

      v7 = ![(AVCaptureConnection *)self sourcesFromExternalCamera];
      v6 = 270.0;
      v8 = 90.0;
    }

    else
    {
      if (videoOrientation != AVCaptureVideoOrientationLandscapeRight)
      {
        v6 = 0.0;
        if (videoOrientation == AVCaptureVideoOrientationPortraitUpsideDown)
        {
          v6 = 180.0;
        }

        goto LABEL_33;
      }

      if (![(AVCaptureConnection *)self sourcesFromFrontFacingCamera])
      {
        v6 = 270.0;
        goto LABEL_33;
      }

      v7 = ![(AVCaptureConnection *)self sourcesFromExternalCamera];
      v6 = 90.0;
      v8 = 270.0;
    }

LABEL_23:
    if (!v7)
    {
      v6 = v8;
    }

    goto LABEL_33;
  }

  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
}

- (BOOL)isVideoMinFrameDurationSupported
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionFrameRatePropertiesAreDeprecated"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"AVCaptureDevice activeFormat.videoSupportedFrameRateRanges");
    }
  }

  return self->_internal->videoInputPort != 0;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_videoMinFrameDuration
{
  v4 = *&self->var1;
  if (*(v4 + 96))
  {
    if (*(v4 + 180))
    {
      v7 = *(v4 + 168);
      retstr->var3 = *(v4 + 184);
      *&retstr->var0 = v7;
    }

    else
    {
      self = *(v4 + 24);
      if (self)
      {

        return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self activeVideoMinFrameDuration];
      }

      else
      {
        retstr->var0 = 0;
        *&retstr->var1 = 0;
        retstr->var3 = 0;
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    v6 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v6 + 16);
  }

  return self;
}

- (CMTime)videoMinFrameDuration
{
  result = AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionFrameRatePropertiesAreDeprecated");
  if (result)
  {
    v7 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    result = [v7 isEqualToString:@"YES"];
    if ((result & 1) == 0)
    {
      result = [v7 isEqualToString:@"yes"];
      if ((result & 1) == 0)
      {
        result = [v7 isEqualToString:@"1"];
        if ((result & 1) == 0)
        {
          v8 = objc_opt_class();
          v9 = NSStringFromSelector(a3);
          NSLog(&cfstr_Warning0xXIsDe.isa, v8, self, v9, @"AVCaptureDevice activeVideoMinFrameDuration");
        }
      }
    }
  }

  if (self)
  {

    return [(AVCaptureConnection *)self _videoMinFrameDuration];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)_setVideoMinFrameDuration:(id *)duration
{
  internal = self->_internal;
  if (internal->videoInputPort)
  {
    v6 = *&duration->var0;
    internal->videoMinFrameDuration.epoch = duration->var3;
    *&internal->videoMinFrameDuration.value = v6;
    if (duration->var2)
    {
      memset(&v18, 0, sizeof(v18));
      activeFormat = [(AVCaptureDevice *)self->_internal->sourceDevice activeFormat];
      if (activeFormat)
      {
        [(AVCaptureDeviceFormat *)activeFormat lowestSupportedVideoFrameDuration];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      time1 = *duration;
      time2 = v18;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        *duration = v18;
      }

      memset(&time1, 0, sizeof(time1));
      activeFormat2 = [(AVCaptureDevice *)self->_internal->sourceDevice activeFormat];
      if (activeFormat2)
      {
        [(AVCaptureDeviceFormat *)activeFormat2 highestSupportedVideoFrameDuration];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time2 = *duration;
      v15 = time1;
      if (CMTimeCompare(&time2, &v15) < 1)
      {
        goto LABEL_20;
      }

      *&duration->var0 = *&time1.value;
      epoch = time1.epoch;
    }

    else
    {
      activeFormat3 = [(AVCaptureDevice *)self->_internal->sourceDevice activeFormat];
      v8 = [-[AVCaptureOutput session](-[AVCaptureConnection output](self "output")];
      if (activeFormat3)
      {
        [(AVCaptureDeviceFormat *)activeFormat3 defaultActiveMinFrameDurationForSessionPreset:v8];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      *&duration->var0 = *&v18.value;
      epoch = v18.epoch;
    }

    duration->var3 = epoch;
LABEL_20:
    memset(&v18, 0, sizeof(v18));
    sourceDevice = self->_internal->sourceDevice;
    if (sourceDevice)
    {
      [(AVCaptureDevice *)sourceDevice activeVideoMinFrameDuration];
    }

    time1 = v18;
    time2 = *duration;
    if (CMTimeCompare(&time1, &time2))
    {
      v14 = self->_internal->sourceDevice;
      time1 = *duration;
      [(AVCaptureDevice *)v14 _setActiveVideoMinFrameDuration:&time1];
    }

    return;
  }

  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
}

- (void)setVideoMinFrameDuration:(CMTime *)videoMinFrameDuration
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionFrameRatePropertiesAreDeprecated"))
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v6 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"1") & 1) == 0)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v7, self, v8, @"AVCaptureDevice setActiveVideoMinFrameDuration");
    }
  }

  v9 = *&videoMinFrameDuration->value;
  epoch = videoMinFrameDuration->epoch;
  [(AVCaptureConnection *)self _setVideoMinFrameDuration:&v9];
}

- (BOOL)isVideoMaxFrameDurationSupported
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionFrameRatePropertiesAreDeprecated"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"AVCaptureDevice activeFormat.videoSupportedFrameRateRanges");
    }
  }

  return self->_internal->videoInputPort != 0;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_videoMaxFrameDuration
{
  v4 = *&self->var1;
  if (*(v4 + 96))
  {
    if (*(v4 + 204))
    {
      v7 = *(v4 + 192);
      retstr->var3 = *(v4 + 208);
      *&retstr->var0 = v7;
    }

    else
    {
      self = *(v4 + 24);
      if (self)
      {

        return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self activeVideoMaxFrameDuration];
      }

      else
      {
        retstr->var0 = 0;
        *&retstr->var1 = 0;
        retstr->var3 = 0;
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    v6 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v6 + 16);
  }

  return self;
}

- (CMTime)videoMaxFrameDuration
{
  result = AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionFrameRatePropertiesAreDeprecated");
  if (result)
  {
    v7 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    result = [v7 isEqualToString:@"YES"];
    if ((result & 1) == 0)
    {
      result = [v7 isEqualToString:@"yes"];
      if ((result & 1) == 0)
      {
        result = [v7 isEqualToString:@"1"];
        if ((result & 1) == 0)
        {
          v8 = objc_opt_class();
          v9 = NSStringFromSelector(a3);
          NSLog(&cfstr_Warning0xXIsDe.isa, v8, self, v9, @"AVCaptureDevice activeVideoMaxFrameDuration");
        }
      }
    }
  }

  if (self)
  {

    return [(AVCaptureConnection *)self _videoMaxFrameDuration];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)setVideoMaxFrameDuration:(CMTime *)videoMaxFrameDuration
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionFrameRatePropertiesAreDeprecated"))
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v6 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"1") & 1) == 0)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v7, self, v8, @"AVCaptureDevice setActiveVideoMaxFrameDuration");
    }
  }

  internal = self->_internal;
  if (internal->videoInputPort)
  {
    v10 = *&videoMaxFrameDuration->value;
    internal->videoMaxFrameDuration.epoch = videoMaxFrameDuration->epoch;
    *&internal->videoMaxFrameDuration.value = v10;
    if (videoMaxFrameDuration->flags)
    {
      memset(&v22, 0, sizeof(v22));
      activeFormat = [(AVCaptureDevice *)self->_internal->sourceDevice activeFormat];
      if (activeFormat)
      {
        [(AVCaptureDeviceFormat *)activeFormat highestSupportedVideoFrameDuration];
      }

      else
      {
        memset(&v22, 0, sizeof(v22));
      }

      time1 = *videoMaxFrameDuration;
      time2 = v22;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        *videoMaxFrameDuration = v22;
      }

      memset(&time1, 0, sizeof(time1));
      activeFormat2 = [(AVCaptureDevice *)self->_internal->sourceDevice activeFormat];
      if (activeFormat2)
      {
        [(AVCaptureDeviceFormat *)activeFormat2 lowestSupportedVideoFrameDuration];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time2 = *videoMaxFrameDuration;
      v19 = time1;
      if ((CMTimeCompare(&time2, &v19) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      *&videoMaxFrameDuration->value = *&time1.value;
      epoch = time1.epoch;
    }

    else
    {
      activeFormat3 = [(AVCaptureDevice *)self->_internal->sourceDevice activeFormat];
      v12 = [-[AVCaptureOutput session](-[AVCaptureConnection output](self "output")];
      if (activeFormat3)
      {
        [(AVCaptureDeviceFormat *)activeFormat3 defaultActiveMaxFrameDurationForSessionPreset:v12];
      }

      else
      {
        memset(&v22, 0, sizeof(v22));
      }

      *&videoMaxFrameDuration->value = *&v22.value;
      epoch = v22.epoch;
    }

    videoMaxFrameDuration->epoch = epoch;
LABEL_25:
    memset(&v22, 0, sizeof(v22));
    sourceDevice = self->_internal->sourceDevice;
    if (sourceDevice)
    {
      [(AVCaptureDevice *)sourceDevice activeVideoMaxFrameDuration];
    }

    time1 = v22;
    time2 = *videoMaxFrameDuration;
    if (CMTimeCompare(&time1, &time2))
    {
      v18 = self->_internal->sourceDevice;
      time1 = *videoMaxFrameDuration;
      [(AVCaptureDevice *)v18 _setActiveVideoMaxFrameDuration:&time1];
    }

    return;
  }

  v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v13);
  }

  NSLog(&cfstr_SuppressingExc.isa, v13);
}

- (void)setVideoScaleAndCropFactor:(CGFloat)videoScaleAndCropFactor
{
  if (videoScaleAndCropFactor >= 1.0)
  {
    [(AVCaptureConnection *)self videoMaxScaleAndCropFactor];
    if (v7 >= videoScaleAndCropFactor)
    {
      self->_internal->videoScaleAndCropFactor = videoScaleAndCropFactor;
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
  }

  v8 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (void)_updateMaxScaleAndCropFactorForFormat:(id)format
{
  [(AVCaptureConnection *)self output];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([(AVCaptureConnection *)self output], objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([format formatDescription]);
    v6 = vcvts_n_f32_s32(Dimensions.width, 4uLL);
    v7 = vcvts_n_f32_s32(Dimensions.height, 4uLL);
    if (v6 >= v7)
    {
      v6 = v7;
    }

    v8 = v6;
    if (self->_internal->videoMaxScaleAndCropFactor != v6)
    {
      [(AVCaptureConnection *)self willChangeValueForKey:@"videoMaxScaleAndCropFactor"];
      self->_internal->videoMaxScaleAndCropFactor = v8;
      [(AVCaptureConnection *)self didChangeValueForKey:@"videoMaxScaleAndCropFactor"];
      if (self->_internal->videoScaleAndCropFactor > self->_internal->videoMaxScaleAndCropFactor)
      {
        [(AVCaptureConnection *)self willChangeValueForKey:@"videoScaleAndCropFactor"];
        self->_internal->videoScaleAndCropFactor = self->_internal->videoMaxScaleAndCropFactor;

        [(AVCaptureConnection *)self didChangeValueForKey:@"videoScaleAndCropFactor"];
      }
    }
  }
}

- (BOOL)isVideoStabilizationEnabled
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionCinematicVISAwareAPIsAreAvailable"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"[AVCaptureConnnection activeVideoStabilizationMode]");
    }
  }

  return self->_internal->videoStabilizationEnabled;
}

- (BOOL)enablesVideoStabilizationWhenAvailable
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionCinematicVISAwareAPIsAreAvailable"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"[AVCaptureConnnection preferredVideoStabilizationMode]");
    }
  }

  return self->_internal->preferredVideoStabilizationMode == 1;
}

- (void)setEnablesVideoStabilizationWhenAvailable:(BOOL)enablesVideoStabilizationWhenAvailable
{
  v3 = enablesVideoStabilizationWhenAvailable;
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionCinematicVISAwareAPIsAreAvailable"))
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v6 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"1") & 1) == 0)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v7, self, v8, @"[AVCaptureConnnection setPreferredVideoStabilizationMode:]");
    }
  }

  if ([(AVCaptureConnection *)self isVideoStabilizationSupported])
  {
    internal = self->_internal;
    if (internal->preferredVideoStabilizationMode != v3)
    {
      internal->preferredVideoStabilizationMode = v3;
      v10 = [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->sourceDevice activeFormat] isVideoStabilizationModeSupported:1];
      v11 = self->_internal;
      v12 = v10 && v11->preferredVideoStabilizationMode == 1;
      if (v11->videoStabilizationEnabled != v12)
      {
        if ([(AVCaptureConnection *)self isLive])
        {
          [(AVCaptureOutput *)[(AVCaptureConnection *)self output] bumpChangeSeed];
        }

        [(AVCaptureConnection *)self willChangeValueForKey:@"videoStabilizationEnabled"];
        self->_internal->videoStabilizationEnabled = v12;
        [(AVCaptureConnection *)self didChangeValueForKey:@"videoStabilizationEnabled"];
        [(AVCaptureConnection *)self willChangeValueForKey:@"activeVideoStabilizationMode"];
        self->_internal->activeVideoStabilizationMode = v3;
        [(AVCaptureConnection *)self didChangeValueForKey:@"activeVideoStabilizationMode"];

        [(AVCaptureConnection *)self _updateCameraIntrinsicMatrixDeliverySupported];
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
  }
}

- (void)setPreferredVideoStabilizationMode:(AVCaptureVideoStabilizationMode)preferredVideoStabilizationMode
{
  if ((preferredVideoStabilizationMode + 1) >= 8)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, preferredVideoStabilizationMode}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    internal = self->_internal;
    if (internal->preferredVideoStabilizationMode != preferredVideoStabilizationMode)
    {
      internal->preferredVideoStabilizationMode = preferredVideoStabilizationMode;
      v5 = [(AVCaptureConnection *)self _resolveActiveVideoStabilizationMode:preferredVideoStabilizationMode format:[(AVCaptureDevice *)self->_internal->sourceDevice activeFormat]];

      [(AVCaptureConnection *)self _updateActiveVideoStabilizationMode:v5 bumpChangeSeed:1];
    }
  }
}

- (void)setCameraIntrinsicMatrixDeliveryEnabled:(BOOL)cameraIntrinsicMatrixDeliveryEnabled
{
  v3 = cameraIntrinsicMatrixDeliveryEnabled;
  if (cameraIntrinsicMatrixDeliveryEnabled && ![(AVCaptureConnection *)self isCameraIntrinsicMatrixDeliverySupported])
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
    if (internal->cameraIntrinsicMatrixDeliveryEnabled != v3)
    {
      internal->cameraIntrinsicMatrixDeliveryEnabled = v3;
      if ([(AVCaptureConnection *)self isLive])
      {

        [(AVCaptureConnection *)self bumpChangeSeed];
      }
    }
  }
}

- (BOOL)isVideoRetainedBufferCountHintSupported
{
  [(AVCaptureConnection *)self output];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (int)videoRetainedBufferCountHint
{
  if ([(AVCaptureConnection *)self isVideoRetainedBufferCountHintSupported])
  {
    return self->_internal->videoRetainedBufferCountHint;
  }

  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
  return 0;
}

- (void)setVideoRetainedBufferCountHint:(int)hint
{
  if ([(AVCaptureConnection *)self isVideoRetainedBufferCountHintSupported])
  {
    internal = self->_internal;
    if (internal->videoRetainedBufferCountHint != hint)
    {
      internal->videoRetainedBufferCountHint = hint;
      if ([(AVCaptureConnection *)self isLive])
      {
        output = [(AVCaptureConnection *)self output];

        [(AVCaptureOutput *)output bumpChangeSeed];
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (BOOL)isLivePhotoMetadataWritingSupported
{
  mediaType = [(AVCaptureConnection *)self mediaType];
  v4 = [mediaType isEqualToString:*MEMORY[0x1E6987608]];
  if (v4)
  {
    [(AVCaptureConnection *)self output];
    objc_opt_class();
    LOBYTE(v4) = objc_opt_isKindOfClass();
  }

  return v4 & 1;
}

- (void)setLivePhotoMetadataWritingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(AVCaptureConnection *)self isLivePhotoMetadataWritingSupported])
  {
    internal = self->_internal;
    if (internal->livePhotoMetadataWritingEnabled != enabledCopy)
    {
      internal->livePhotoMetadataWritingEnabled = enabledCopy;
      if ([(AVCaptureConnection *)self isLive])
      {
        output = [(AVCaptureConnection *)self output];

        [(AVCaptureOutput *)output bumpChangeSeed];
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (void)setVideoMirroringMethodForMovieRecording:(int64_t)recording
{
  if (-[NSArray containsObject:](self->_internal->supportedVideoMirroringMethodsForMovieRecording, "containsObject:", [MEMORY[0x1E696AD98] numberWithInteger:?]))
  {
    internal = self->_internal;
    if (internal->videoMirroringMethodForMovieRecording != recording)
    {
      internal->videoMirroringMethodForMovieRecording = recording;

      [(AVCaptureConnection *)self bumpChangeSeed];
    }
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
}

- (void)setVideoZoomSmoothingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(AVCaptureConnection *)self isVideoZoomSmoothingSupported])
  {
    internal = self->_internal;
    if (internal->videoZoomSmoothingEnabled != enabledCopy)
    {
      internal->videoZoomSmoothingEnabled = enabledCopy;

      [(AVCaptureConnection *)self bumpChangeSeed];
    }
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
}

- (void)setVideoGreenGhostMitigationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCaptureConnection *)self isVideoGreenGhostMitigationSupported])
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
    if (internal->videoGreenGhostMitigationEnabled != enabledCopy)
    {
      internal->videoGreenGhostMitigationEnabled = enabledCopy;

      [(AVCaptureConnection *)self bumpChangeSeed];
    }
  }
}

- (void)setVideoDeviceOrientationCorrectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCaptureConnection *)self isVideoDeviceOrientationCorrectionSupported])
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
    if (internal->videoDeviceOrientationCorrectionEnabled != enabledCopy)
    {
      internal->videoDeviceOrientationCorrectionEnabled = enabledCopy;

      [(AVCaptureConnection *)self bumpChangeSeed];
    }
  }
}

- (void)_handleChangedActiveFormat:(id)format forDevice:(id)device formatMediaType:(id)type
{
  context = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DFA8] set];
  v35 = [MEMORY[0x1E695DFA8] set];
  v33 = [MEMORY[0x1E695DFA8] set];
  [objc_msgSend(format "figCaptureSourceVideoFormat")];
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
  [(AVCaptureConnection *)self output];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (AVGestaltGetBoolAnswer(@"AVGQCaptureProResRawVDORotationAndMirroringSupported") & 1) == 0)
  {
    internal = self->_internal;
    if (IsPackedBayerRaw)
    {
      if (internal->videoRotationSupported)
      {
        [(AVCaptureConnection *)self willChangeValueForKey:@"supportsVideoOrientation"];
        self->_internal->videoRotationSupported = 0;
        [(AVCaptureConnection *)self didChangeValueForKey:@"supportsVideoOrientation"];
        internal = self->_internal;
      }

      if (!internal->videoMirroringSupported)
      {
        goto LABEL_13;
      }

      v11 = 0;
    }

    else
    {
      if (!internal->videoRotationSupported)
      {
        [(AVCaptureConnection *)self willChangeValueForKey:@"supportsVideoOrientation"];
        self->_internal->videoRotationSupported = 1;
        [(AVCaptureConnection *)self didChangeValueForKey:@"supportsVideoOrientation"];
        internal = self->_internal;
      }

      if (internal->videoMirroringSupported)
      {
        goto LABEL_13;
      }

      v11 = 1;
    }

    [(AVCaptureConnection *)self willChangeValueForKey:@"supportsVideoMirroring"];
    self->_internal->videoMirroringSupported = v11;
    [(AVCaptureConnection *)self didChangeValueForKey:@"supportsVideoMirroring"];
  }

LABEL_13:
  v34 = v8;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [(AVCaptureConnection *)self inputPorts];
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v53 count:16];
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  v14 = *v55;
  v15 = *MEMORY[0x1E69875C0];
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v55 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v54 + 1) + 8 * i);
      [(AVCaptureConnection *)self output];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [type isEqualToString:v15])
      {
        [v35 addObject:{-[AVCaptureConnection output](self, "output")}];
      }

      if ([objc_msgSend(v17 "input")] == device && objc_msgSend(-[AVCaptureConnection mediaType](self, "mediaType"), "isEqual:", type))
      {
        [v34 addObject:{objc_msgSend(v17, "input")}];
        if ([(AVCaptureConnection *)self output])
        {
          output = [(AVCaptureConnection *)self output];
          v19 = v35;
        }

        else
        {
          if (![(AVCaptureConnection *)self videoPreviewLayer])
          {
            continue;
          }

          output = [(AVCaptureConnection *)self videoPreviewLayer];
          v19 = v33;
        }

        [v19 addObject:output];
      }
    }

    v13 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v53 count:16];
  }

  while (v13);
LABEL_30:
  if ([-[AVCaptureConnection mediaType](self "mediaType")])
  {
    [(AVCaptureConnection *)self _updatePropertiesForFormat:format];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = [v34 countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v50;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v50 != v22)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v49 + 1) + 8 * j) handleChangedActiveFormat:format forDevice:device];
      }

      v21 = [v34 countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v21);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = [v35 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v45;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v35);
        }

        [*(*(&v44 + 1) + 8 * k) handleChangedActiveFormat:format forDevice:device];
      }

      v25 = [v35 countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v25);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = [v33 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v40;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v39 + 1) + 8 * m) handleChangedActiveFormat:format forDevice:device];
      }

      v29 = [v33 countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v29);
  }

  objc_autoreleasePoolPop(context);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v11 = [change objectForKeyedSubscript:*MEMORY[0x1E696A500]];
  v12 = *MEMORY[0x1E696A4F0];
  v13 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (AVCaptureConnectionDeviceActiveFormatChangedContext == context || AVCaptureConnectionDeviceActiveDepthDataFormatChangedContext == context)
  {
    v15 = [change objectForKeyedSubscript:v12];
    v16 = MEMORY[0x1E6987608];
    if (AVCaptureConnectionDeviceActiveFormatChangedContext != context)
    {
      v16 = MEMORY[0x1E69875C0];
    }

    v17 = *v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    [(AVCaptureConnection *)self _handleChangedActiveFormat:v18 forDevice:object formatMediaType:v17];
  }

  else if (AVCaptureConnectionDeviceActiveMinFrameDurationChangedContext == context)
  {
    memset(&v30, 0, sizeof(v30));
    memset(&v29, 0, sizeof(v29));
    [v13 getValue:&v30];
    [v11 getValue:&v29];
    activeVideoStabilizationMode = self->_internal->activeVideoStabilizationMode;
    v20 = activeVideoStabilizationMode > 5;
    v21 = (1 << activeVideoStabilizationMode) & 0x2C;
    if (!v20 && v21 != 0)
    {
      time1 = v30;
      time2 = v29;
      if (CMTimeCompare(&time1, &time2))
      {
        if ([(AVCaptureDevice *)self->_internal->sourceDevice isActiveVideoMinFrameDurationSet])
        {
          [(AVCaptureConnection *)self bumpChangeSeed];
        }
      }
    }
  }

  else if (AVCaptureConnectionLivePhotoEnabledChangedContext == context)
  {
    if (([v13 isEqual:v11] & 1) == 0)
    {

      [(AVCaptureConnection *)self _updateSupportedVideoMirroringMethodsForMovieRecording];
    }
  }

  else if (AVCaptureConnectionDeviceTimeOfFlightProjectorModeChangedContext == context)
  {
    if (([v13 isEqual:v11] & 1) == 0)
    {

      [(AVCaptureConnection *)self bumpChangeSeed];
    }
  }

  else if (AVCaptureConnectionSpatialVideoCaptureEnabledChangedContext == context)
  {
    sourceDeviceInput = [(AVCaptureConnection *)self sourceDeviceInput];

    [sourceDeviceInput updateSupportedProperties];
  }

  else if (AVCaptureDeviceVideoFrameDurationLockedChangedContext == context || AVCaptureDeviceFollowingExternalSyncDeviceChangedContext == context)
  {
    output = [(AVCaptureConnection *)self output];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [-[AVCaptureConnection sourceDeviceInput](self "sourceDeviceInput")];

      [(AVCaptureOutput *)output handleChangedMSGPulseDurationForDevice:v24];
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = AVCaptureConnection;
    [(AVCaptureConnection *)&v26 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

- (id)figCaptureConnectionConfigurationForSessionPreset:(id)preset allConnections:(id)connections
{
  if (![(AVCaptureConnection *)self isActive])
  {
    return 0;
  }

  mediaType = [(AVCaptureConnection *)self mediaType];
  firstObject = [(NSMutableArray *)self->_internal->inputPorts firstObject];
  [firstObject input];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = [objc_msgSend(firstObject "input")];
    if (![v10 isConnected] || (objc_msgSend(v10, "isSoonToBeDisconnected") & 1) != 0)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v138 = *MEMORY[0x1E6987608];
  if ([mediaType isEqualToString:?])
  {
    v11 = objc_alloc_init(MEMORY[0x1E698F858]);
    v135 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v11;
    goto LABEL_73;
  }

  v136 = *MEMORY[0x1E69875A0];
  if ([mediaType isEqualToString:?])
  {
    v17 = objc_alloc_init(MEMORY[0x1E698F738]);
    if (isKindOfClass)
    {
      v129 = v17;
      v130 = mediaType;
      presetCopy = preset;
      v134 = firstObject;
      [(AVCaptureConnection *)self output];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v18 = [connections countByEnumeratingWithState:&v159 objects:v158 count:16];
        if (!v18)
        {
          return 0;
        }

        v19 = v18;
        v20 = *v160;
LABEL_15:
        v21 = 0;
        while (1)
        {
          if (*v160 != v20)
          {
            objc_enumerationMutation(connections);
          }

          v22 = *(*(&v159 + 1) + 8 * v21);
          if (v22 != self)
          {
            v23 = [objc_msgSend(*(*(&v159 + 1) + 8 * v21) "inputPorts")];
            [v23 input];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [objc_msgSend(v23 "input")];
              output = [(AVCaptureConnection *)self output];
              output2 = [(AVCaptureConnection *)v22 output];
              v27 = [-[AVCaptureConnection mediaType](v22 "mediaType")];
              isConnected = [v24 isConnected];
              if (output == output2 && v27 && (isConnected & 1) != 0)
              {
                break;
              }
            }
          }

          if (v19 == ++v21)
          {
            v19 = [connections countByEnumeratingWithState:&v159 objects:v158 count:16];
            v11 = 0;
            if (v19)
            {
              goto LABEL_15;
            }

            return v11;
          }
        }
      }

      input = [v134 input];
      [v129 setAudioCaptureMode:{objc_msgSend(v10, "fallbackAudioCaptureModeIfApplicableForCurrentRoute:", objc_msgSend(input, "audioCaptureMode"))}];
      [v129 setWindNoiseRemovalEnabled:{objc_msgSend(input, "isWindNoiseRemovalEnabled")}];
      if ([v129 audioCaptureMode] == 2)
      {
        [(AVCaptureConnection *)self output];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v129 setSpatialAudioChannelLayoutTag:{-[AVCaptureOutput spatialAudioChannelLayoutTag](-[AVCaptureConnection output](self, "output"), "spatialAudioChannelLayoutTag")}];
        }
      }

      if ([v129 audioCaptureMode] == 6)
      {
        sourceDevicePosition = [v134 sourceDevicePosition];
LABEL_52:
        mediaType = v130;
        preset = presetCopy;
      }

      else
      {
        [v129 setBuiltInMicrophonePosition:0];
        preset = presetCopy;
        if ([v129 audioCaptureMode] == 3)
        {
          sourceDevicePosition = 1;
          mediaType = v130;
        }

        else
        {
          mediaType = v130;
          if ([v129 audioCaptureMode] != 4 && objc_msgSend(v129, "audioCaptureMode") != 7)
          {
            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v106 = [connections countByEnumeratingWithState:&v154 objects:v153 count:16];
            if (v106)
            {
              v107 = v106;
              v108 = *v155;
              while (2)
              {
                for (i = 0; i != v107; ++i)
                {
                  if (*v155 != v108)
                  {
                    objc_enumerationMutation(connections);
                  }

                  v110 = *(*(&v154 + 1) + 8 * i);
                  if (([objc_msgSend(v110 "mediaType")] & 1) == 0)
                  {
                    v111 = [objc_msgSend(v110 "inputPorts")];
                    [v111 input];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v112 = [objc_msgSend(v111 "input")];
                      if ([v112 isConnected])
                      {
                        sourceDevicePosition = [v112 position];
                        goto LABEL_52;
                      }
                    }
                  }
                }

                v107 = [connections countByEnumeratingWithState:&v154 objects:v153 count:16];
                mediaType = v130;
                preset = presetCopy;
                if (v107)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_63;
          }

          sourceDevicePosition = 2;
        }
      }

      [v129 setBuiltInMicrophonePosition:sourceDevicePosition];
LABEL_63:
      if ([-[AVCaptureConnection session](self "session")])
      {
        [v129 setBuiltInMicrophoneRequiredSampleRate:48000.0];
      }

      v135 = 0;
      v11 = v129;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      firstObject = v134;
      goto LABEL_73;
    }

    v135 = 0;
    v13 = 0;
    v14 = 0;
LABEL_31:
    v15 = 0;
    v16 = 0;
    v11 = v17;
    goto LABEL_73;
  }

  if ([mediaType isEqualToString:AVMediaTypeForMetadataObjects()])
  {
    v11 = objc_alloc_init(MEMORY[0x1E698F838]);
    [(AVCaptureConnection *)self output];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      output3 = [(AVCaptureConnection *)self output];
      [v11 setMetadataIdentifiers:{-[AVCaptureOutput _metadataIdentifiers](output3, "_metadataIdentifiers")}];
      [(AVCaptureOutput *)output3 rectOfInterest];
      [v11 setMetadataRectOfInterest:?];
      [v11 setFaceTrackingMaxFaces:{-[AVCaptureOutput faceTrackingMaxFaces](output3, "faceTrackingMaxFaces")}];
      [v11 setFaceTrackingUsesFaceRecognition:{-[AVCaptureOutput isFaceTrackingUsingFaceRecognition](output3, "isFaceTrackingUsingFaceRecognition")}];
      [v11 setFaceTrackingPlusEnabled:{-[AVCaptureOutput isFaceTrackingPlusEnabled](output3, "isFaceTrackingPlusEnabled")}];
      [v11 setFaceTrackingSuspended:{-[AVCaptureOutput isFaceTrackingSuspended](output3, "isFaceTrackingSuspended")}];
      [(AVCaptureOutput *)output3 faceTrackingNetworkFailureThresholdMultiplier];
      [v11 setFaceTrackingNetworkFailureThresholdMultiplier:?];
      [(AVCaptureOutput *)output3 faceTrackingFailureFieldOfViewModifier];
      [v11 setFaceTrackingFailureFieldOfViewModifier:?];
      [v11 setAttentionDetectionEnabled:{-[AVCaptureOutput isAttentionDetectionEnabled](output3, "isAttentionDetectionEnabled")}];
      [v11 setPeriocularForFaceIDReadinessEnabled:{-[AVCaptureOutput isPeriocularForFaceIDReadinessEnabled](output3, "isPeriocularForFaceIDReadinessEnabled")}];
      [v11 setAttentionForFaceIDReadinessRequired:{-[AVCaptureOutput isAttentionForFaceIDReadinessRequired](output3, "isAttentionForFaceIDReadinessRequired")}];
      [v11 setFaceOcclusionDetectionEnabled:{-[AVCaptureOutput isFaceOcclusionDetectionEnabled](output3, "isFaceOcclusionDetectionEnabled")}];
      [(AVCaptureOutput *)output3 objectDetectionTargetFrameRate];
      [v11 setObjectDetectionTargetFrameRate:?];
      [(AVCaptureOutput *)output3 motionToWakeTargetFrameRate];
      [v11 setMotionToWakeTargetFrameRate:?];
      [v11 setEmitsEmptyObjectDetectionMetadata:{-[AVCaptureOutput emitsEmptyObjectDetectionMetadata](output3, "emitsEmptyObjectDetectionMetadata")}];
    }

    v135 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    mediaType = *MEMORY[0x1E69875D8];
    goto LABEL_73;
  }

  if (!AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined() || ![mediaType isEqualToString:*MEMORY[0x1E69875D0]])
  {
    if ([mediaType isEqualToString:*MEMORY[0x1E69875C0]])
    {
      v11 = objc_alloc_init(MEMORY[0x1E698F828]);
      v135 = 0;
      v13 = 0;
      v14 = 0;
      v16 = 0;
      v15 = v11;
      goto LABEL_73;
    }

    if (![mediaType isEqualToString:@"visn"])
    {
      if ([mediaType isEqualToString:@"pcld"])
      {
        v13 = objc_alloc_init(MEMORY[0x1E698F848]);
        [v13 setProjectorMode:{objc_msgSend(v10, "timeOfFlightProjectorMode")}];
        v135 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v11 = v13;
      }

      else if ([mediaType isEqualToString:@"cacd"])
      {
        v11 = objc_alloc_init(MEMORY[0x1E698F740]);
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v135 = v11;
      }

      else
      {
        v135 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v11 = 0;
      }

      goto LABEL_73;
    }

    v17 = objc_alloc_init(MEMORY[0x1E698F860]);
    v14 = v17;
    v135 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  presetCopy2 = preset;
  v30 = mediaType;
  v31 = firstObject;
  v11 = objc_alloc_init(MEMORY[0x1E698F830]);
  formatDescriptionOut.value = 0;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  inputPorts = self->_internal->inputPorts;
  v33 = [(NSMutableArray *)inputPorts countByEnumeratingWithState:&v149 objects:v148 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v150;
    v36 = *MEMORY[0x1E695E480];
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v150 != v35)
        {
          objc_enumerationMutation(inputPorts);
        }

        value = formatDescriptionOut.value;
        formatDescription = [*(*(&v149 + 1) + 8 * j) formatDescription];
        if (value)
        {
          CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions(v36, value, formatDescription, &formatDescriptionOut);
          CFRelease(value);
        }

        else
        {
          formatDescriptionOut.value = CFRetain(formatDescription);
        }
      }

      v34 = [(NSMutableArray *)inputPorts countByEnumeratingWithState:&v149 objects:v148 count:16];
    }

    while (v34);
  }

  [v11 setFormatDescription:formatDescriptionOut.value];
  firstObject = v31;
  [v11 setClock:{objc_msgSend(objc_msgSend(v31, "input"), "clock")}];
  [v31 input];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = 1;
    mediaType = v30;
    preset = presetCopy2;
  }

  else
  {
    [v31 input];
    objc_opt_class();
    mediaType = v30;
    preset = presetCopy2;
    if ((objc_opt_isKindOfClass() & 1) == 0 || [objc_msgSend(objc_msgSend(objc_msgSend(v31 "input")] != v138)
    {
      goto LABEL_70;
    }

    v40 = 3;
  }

  [v11 setSourceSubType:v40];
LABEL_70:
  if (formatDescriptionOut.value)
  {
    CFRelease(formatDescriptionOut.value);
  }

  v135 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
LABEL_73:
  [v11 setConnectionID:self->_internal->connectionID];
  [v11 setMediaType:AVOSTypeForString()];
  v43 = mediaType;
  if ([firstObject isEnabled])
  {
    enabled = self->_internal->enabled;
  }

  else
  {
    enabled = 0;
  }

  [v11 setEnabled:enabled];
  [v11 setSourceConfiguration:{objc_msgSend(firstObject, "figCaptureSourceConfigurationForSessionPreset:", preset)}];
  sourceDeviceType = [firstObject sourceDeviceType];
  wideAngleCameraSourcesFromUltraWide = [(AVCaptureDevice *)self->_internal->sourceDevice wideAngleCameraSourcesFromUltraWide];
  v47 = &unk_1F1CE9DE8;
  if (wideAngleCameraSourcesFromUltraWide)
  {
    v47 = &unk_1F1CE9DD0;
  }

  *&v163[0] = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
  *&v163[1] = @"AVCaptureDeviceTypeBuiltInTelephotoCamera";
  formatDescriptionOut.value = v47;
  *&formatDescriptionOut.timescale = &unk_1F1CE9E00;
  *&v163[2] = @"AVCaptureDeviceTypeBuiltInDualCamera";
  *&v163[3] = @"AVCaptureDeviceTypeBuiltInUltraWideCamera";
  formatDescriptionOut.epoch = &unk_1F1CE9E18;
  v165 = &unk_1F1CE9E30;
  *&v163[4] = @"AVCaptureDeviceTypeBuiltInDualWideCamera";
  *&v163[5] = @"AVCaptureDeviceTypeBuiltInTripleCamera";
  v166 = &unk_1F1CE9E48;
  v167 = &unk_1F1CE9E60;
  v48 = &unk_1F1CE9E90;
  if (wideAngleCameraSourcesFromUltraWide)
  {
    v48 = &unk_1F1CE9E78;
  }

  *&v163[6] = @"AVCaptureDeviceTypeBuiltInTrueDepthCamera";
  *&v163[7] = @"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera";
  v168 = v48;
  v169 = &unk_1F1CE9EA8;
  *&v163[8] = @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera";
  *&v163[9] = @"AVCaptureDeviceTypeDeskViewCamera";
  v170 = &unk_1F1CE9EC0;
  v171 = &unk_1F1CE9ED8;
  v49 = &unk_1F1CE9F08;
  if (wideAngleCameraSourcesFromUltraWide)
  {
    v49 = &unk_1F1CE9EF0;
  }

  *&v163[10] = @"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera";
  *&v163[11] = @"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera";
  v172 = v49;
  v173 = &unk_1F1CE9F20;
  *&v163[12] = @"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera";
  *&v163[13] = @"AVCaptureDeviceTypeExternal";
  v174 = &unk_1F1CE9F38;
  v175 = &unk_1F1CE9F50;
  *&v163[14] = @"AVCaptureDeviceTypeContinuityCamera";
  v176 = &unk_1F1CE9F68;
  [v11 setUnderlyingDeviceType:{objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &formatDescriptionOut, v163, 15), "objectForKeyedSubscript:", sourceDeviceType), "intValue")}];
  internal = self->_internal;
  if (internal->outputWeakReference)
  {
    v51 = v14;
    output4 = [(AVCaptureConnection *)self output];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = objc_alloc_init(MEMORY[0x1E698F800]);
      if (AVGestaltGetBoolAnswer(@"AVGQCaptureZeroShutterLagAutomaticallyEnabled") && [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->sourceDevice activeFormat] isZeroShutterLagSupported])
      {
        [v53 setZeroShutterLagEnabled:1];
      }

      goto LABEL_87;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([preset isEqualToString:@"AVCaptureSessionPresetVoicemailGreeting"])
      {
        v53 = objc_alloc_init(MEMORY[0x1E698F760]);
        v54 = 0;
      }

      else
      {
        v54 = objc_alloc_init(MEMORY[0x1E698F7B8]);
        v84 = output4;
        activeVideoStabilizationMode = self->_internal->activeVideoStabilizationMode;
        sourceConfiguration = [v11 sourceConfiguration];
        v87 = activeVideoStabilizationMode;
        output4 = v84;
        [v16 setVideoStabilizationMethod:{avcaptureVideoStabilizationModeToFigCaptureVideoStabilizationMethod(v87, sourceConfiguration)}];
        v53 = v54;
      }

      [v16 setLivePhotoMetadataWritingEnabled:self->_internal->livePhotoMetadataWritingEnabled];
      if (v43 == v138)
      {
        if (v16)
        {
          v55 = [(AVCaptureOutput *)output4 outputSettingsForConnection:self];
          v56 = [v55 objectForKeyedSubscript:*MEMORY[0x1E6987E08]];
          v57 = [v55 objectForKeyedSubscript:*MEMORY[0x1E6987D70]];
          if (v56)
          {
            v58 = v57;
            if (v57)
            {
              [v16 setOutputWidth:{objc_msgSend(v56, "intValue")}];
              [v16 setOutputHeight:{objc_msgSend(v58, "intValue")}];
            }
          }
        }
      }

      if (avcc_frontCameraPhysicalMirroringFollowsCameraAppPreference_onceToken != -1)
      {
        [AVCaptureConnection figCaptureConnectionConfigurationForSessionPreset:allConnections:];
      }

      [v16 setPhysicalMirroringForMovieRecordingEnabled:self->_internal->videoMirroringMethodForMovieRecording == 2];
      [v16 setZoomSmoothingEnabled:{-[AVCaptureConnection isVideoZoomSmoothingEnabled](self, "isVideoZoomSmoothingEnabled")}];
      [v16 setVideoGreenGhostMitigationEnabled:{-[AVCaptureConnection isVideoGreenGhostMitigationEnabled](self, "isVideoGreenGhostMitigationEnabled")}];
      [v16 setStereoVideoCaptureEnabled:{-[AVCaptureOutput isSpatialVideoCaptureEnabled](output4, "isSpatialVideoCaptureEnabled")}];
      if ([v16 stereoVideoCaptureEnabled])
      {
        [v16 setVideoGreenGhostMitigationEnabled:0];
      }

      [v54 setTrueVideoCaptureEnabled:{-[AVCaptureOutput isTrueVideoCaptureEnabled](output4, "isTrueVideoCaptureEnabled")}];
      [v54 setMultiCamClientCompositingEnabled:{-[AVCaptureOutput isMultiCamClientCompositingEnabled](output4, "isMultiCamClientCompositingEnabled")}];
      if ([v54 multiCamClientCompositingEnabled])
      {
        [v54 setMultiCamClientCompositingPrimaryConnectionID:{objc_msgSend(-[AVCaptureOutput multiCamClientCompositingPrimaryConnection](output4, "multiCamClientCompositingPrimaryConnection"), "connectionID")}];
      }

      goto LABEL_111;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v94 = v16;
        v95 = v11;
        v53 = objc_alloc_init(MEMORY[0x1E698F778]);
        formatDescription2 = [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_internal->sourceDevice activeDepthDataFormat] formatDescription];
        Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription2);
        LODWORD(v98) = Dimensions;
        v99 = HIDWORD(Dimensions);
        companionSettingsVideoDataOutput = [(AVCaptureOutput *)output4 companionSettingsVideoDataOutput];
        if (companionSettingsVideoDataOutput)
        {
          v101 = companionSettingsVideoDataOutput;
          if (([objc_msgSend(companionSettingsVideoDataOutput connectionWithMediaType:{v138), "isTrulyDisabled"}] & 1) == 0)
          {
            videoSettings = [v101 videoSettings];
            [objc_msgSend(videoSettings objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "floatValue"}];
            v123 = v122;
            [objc_msgSend(videoSettings objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "floatValue"}];
            if (v123 != 0.0 && v124 != 0.0)
            {
              v125 = v124;
              if (!AVCaptureOutputDimensionsHaveSameAspectRatio(v98, v99, v123, v124))
              {
                LODWORD(v98) = AVCaptureOutputFitAspectInsideDimensions(v98, v99, v123 / v125, 2.0, 2.0);
                LODWORD(v99) = v126;
              }
            }
          }
        }

        MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescription2);
        _videoOrientation = [(AVCaptureConnection *)self _videoOrientation];
        if ((_videoOrientation - 1) >= 2)
        {
          v104 = v98;
        }

        else
        {
          v104 = v99;
        }

        if ((_videoOrientation - 1) >= 2)
        {
          v98 = v99;
        }

        else
        {
          v98 = v98;
        }

        [v15 setOutputWidth:v104];
        [v15 setOutputHeight:v98];
        [v15 setOutputFormat:MediaSubType];
        [(AVCaptureConnection *)self videoRotationAngle];
        [v15 setRotationDegrees:v105];
        [v15 setMirroringEnabled:self->_internal->videoMirrored];
        v11 = v95;
        [v15 setVideoStabilizationMethod:{avcaptureVideoStabilizationModeToFigCaptureVideoStabilizationMethod(self->_internal->activeVideoStabilizationMode, objc_msgSend(v95, "sourceConfiguration"))}];
        [v15 setRetainedBufferCount:{-[AVCaptureConnection clientRetainedBufferCount](self, "clientRetainedBufferCount")}];
        [v53 setDiscardsLateDepthData:{-[AVCaptureOutput alwaysDiscardsLateDepthData](output4, "alwaysDiscardsLateDepthData")}];
        [v53 setFilteringEnabled:{-[AVCaptureOutput isFilteringEnabled](output4, "isFilteringEnabled")}];
        v16 = v94;
        goto LABEL_111;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v59 = MEMORY[0x1E698F750];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = objc_alloc_init(MEMORY[0x1E698F818]);
              [v53 setFilters:{-[AVCaptureOutput filters](output4, "filters")}];
              if ([(AVCaptureOutput *)output4 smartStyles])
              {
                v133 = v53;
                v137 = v16;
                v139 = v11;
                v67 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(-[AVCaptureOutput smartStyles](output4, "smartStyles"), "count")}];
                v143 = 0u;
                v144 = 0u;
                v145 = 0u;
                v146 = 0u;
                smartStyles = [(AVCaptureOutput *)output4 smartStyles];
                v69 = [smartStyles countByEnumeratingWithState:&v143 objects:v142 count:16];
                if (v69)
                {
                  v70 = v69;
                  v71 = *v144;
                  do
                  {
                    for (k = 0; k != v70; ++k)
                    {
                      if (*v144 != v71)
                      {
                        objc_enumerationMutation(smartStyles);
                      }

                      v73 = *(*(&v143 + 1) + 8 * k);
                      v74 = MEMORY[0x1E698F7E0];
                      cast = [v73 cast];
                      [v73 intensity];
                      v77 = v76;
                      [v73 toneBias];
                      v79 = v78;
                      [v73 colorBias];
                      LODWORD(v81) = v80;
                      LODWORD(v82) = v77;
                      LODWORD(v83) = v79;
                      [v67 addObject:{objc_msgSend(v74, "styleWithCast:intensity:toneBias:colorBias:", cast, v82, v83, v81)}];
                    }

                    v70 = [smartStyles countByEnumeratingWithState:&v143 objects:v142 count:16];
                  }

                  while (v70);
                }

                v53 = v133;
                [v133 setSmartStyles:v67];
                v16 = v137;
                v11 = v139;
              }

              [(AVCaptureOutput *)output4 thumbnailSize];
              [v53 setThumbnailSize:?];
              goto LABEL_111;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = objc_alloc_init(MEMORY[0x1E698F820]);
              if (output4)
              {
                [(AVCaptureOutput *)output4 minFrameDuration];
              }

              else
              {
                memset(&formatDescriptionOut, 0, sizeof(formatDescriptionOut));
              }

              v127 = 1.0 / CMTimeGetSeconds(&formatDescriptionOut);
              *&v127 = v127;
              [v53 setMaxFrameRate:v127];
              if (output4)
              {
                [(AVCaptureOutput *)output4 minBurstFrameDuration];
              }

              else
              {
                memset(&formatDescriptionOut, 0, sizeof(formatDescriptionOut));
              }

              v128 = 1.0 / CMTimeGetSeconds(&formatDescriptionOut);
              *&v128 = v128;
              [v53 setMaxBurstFrameRate:v128];
              if (output4)
              {
                [(AVCaptureOutput *)output4 maxBurstDuration];
              }

              else
              {
                memset(&v141[1], 0, 24);
              }

              formatDescriptionOut = *&v141[1];
              [v53 setMaxBurstDuration:&formatDescriptionOut];
              [v53 setGaussianPyramidOctavesCount:{-[AVCaptureOutput gaussianPyramidOctavesCount](output4, "gaussianPyramidOctavesCount")}];
              [(AVCaptureOutput *)output4 gaussianPyramidBaseOctaveDownscalingFactor];
              [v53 setGaussianPyramidBaseOctaveDownscalingFactor:?];
              [v53 setMaxKeypointsCount:{-[AVCaptureOutput maxKeypointsCount](output4, "maxKeypointsCount")}];
              [(AVCaptureOutput *)output4 keypointDetectionThreshold];
              [v53 setKeypointDetectionThreshold:?];
              [v53 setFeatureBinningEnabled:{-[AVCaptureOutput isFeatureBinningEnabled](output4, "isFeatureBinningEnabled")}];
              [v53 setFeatureOrientationAssignmentEnabled:{-[AVCaptureOutput isFeatureOrientationAssignmentEnabled](output4, "isFeatureOrientationAssignmentEnabled")}];
              [v53 setDynamicThresholdingEnabled:{-[AVCaptureOutput isDynamicThresholdingEnabled](output4, "isDynamicThresholdingEnabled")}];
              [v53 setKeypointDetectionFlowType:{-[AVCaptureOutput keypointDetectionFlowType](output4, "keypointDetectionFlowType")}];
              [v53 setSubPixelThreshold:{-[AVCaptureOutput subPixelThreshold](output4, "subPixelThreshold")}];
              [v53 setFeatureMatchingEnabled:{-[AVCaptureOutput isFeatureMatchingEnabled](output4, "isFeatureMatchingEnabled")}];
              [v53 setFeatureMatchingDescriptorSize:{-[AVCaptureOutput featureMatchingDescriptorSize](output4, "featureMatchingDescriptorSize")}];
              [(AVCaptureOutput *)output4 orientationDistanceThreshold];
              [v53 setOrientationDistanceThreshold:?];
              [(AVCaptureOutput *)output4 sigmaDistanceThreshold];
              [v53 setSigmaDistanceThreshold:?];
              [(AVCaptureOutput *)output4 squareDistanceDisparityFraction];
              [v53 setSquareDistanceDisparityFraction:?];
              [v53 setHammingDistanceThreshold:{-[AVCaptureOutput hammingDistanceThreshold](output4, "hammingDistanceThreshold")}];
              [v53 setLaccConfigAndMetadata:{-[AVCaptureOutput laccConfigAndMetadata](output4, "laccConfigAndMetadata")}];
              clientRetainedBufferCount = [(AVCaptureConnection *)self clientRetainedBufferCount];
              v115 = v51;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v53 = objc_alloc_init(MEMORY[0x1E698F768]);
                  [v53 setDiscardsLateCameraCalibrationData:{-[AVCaptureOutput alwaysDiscardsLateCameraCalibrationData](output4, "alwaysDiscardsLateCameraCalibrationData")}];
                  [(AVCaptureConnection *)self videoRotationAngle];
                  [v135 setRotationDegrees:v120];
                  [v135 setMirroringEnabled:self->_internal->videoMirrored];
                }

                else
                {
                  v53 = 0;
                }

                goto LABEL_111;
              }

              v113 = objc_alloc_init(MEMORY[0x1E698F7C0]);
              [v113 setDiscardsLatePointCloudData:{-[AVCaptureOutput alwaysDiscardsLatePointCloudData](output4, "alwaysDiscardsLatePointCloudData")}];
              clientRetainedBufferCount = [(AVCaptureConnection *)self clientRetainedBufferCount];
              v115 = v13;
              v53 = v113;
            }

            [v115 setRetainedBufferCount:clientRetainedBufferCount];
LABEL_111:
            [v53 setSinkID:{-[AVCaptureOutput sinkID](output4, "sinkID")}];
            goto LABEL_112;
          }

          v53 = objc_alloc_init(MEMORY[0x1E698F790]);
          [v53 setIrisMovieCaptureEnabled:{-[AVCaptureOutput isLivePhotoCaptureEnabled](output4, "isLivePhotoCaptureEnabled")}];
          if ([v53 irisMovieCaptureEnabled])
          {
            [v53 setIrisMovieCaptureSuspended:{-[AVCaptureOutput isLivePhotoCaptureSuspended](output4, "isLivePhotoCaptureSuspended")}];
            [v53 setPreservesIrisMovieCaptureSuspendedOnSessionStop:{-[AVCaptureOutput preservesLivePhotoCaptureSuspendedOnSessionStop](output4, "preservesLivePhotoCaptureSuspendedOnSessionStop")}];
            if (output4)
            {
              [(AVCaptureOutput *)output4 livePhotoMovieDuration];
              formatDescriptionOut = v147[1];
              [v53 setIrisMovieDuration:&formatDescriptionOut];
              [(AVCaptureOutput *)output4 livePhotoMovieVideoFrameDuration];
            }

            else
            {
              memset(&formatDescriptionOut, 0, sizeof(formatDescriptionOut));
              [v53 setIrisMovieDuration:&formatDescriptionOut];
              memset(v147, 0, sizeof(v147));
            }

            formatDescriptionOut = v147[0];
            [v53 setIrisMovieVideoFrameDuration:&formatDescriptionOut];
            [v53 setIrisMovieAutoTrimMethod:{-[AVCaptureOutput isLivePhotoAutoTrimmingEnabled](output4, "isLivePhotoAutoTrimmingEnabled")}];
            if (v16)
            {
              livePhotoMovieDimensions = [(AVCaptureOutput *)output4 livePhotoMovieDimensions];
              v117 = HIDWORD(livePhotoMovieDimensions);
              [v16 setOutputWidth:livePhotoMovieDimensions];
              [v16 setOutputHeight:v117];
              [objc_msgSend(v11 "sourceConfiguration")];
              [v16 setVideoStabilizationMethod:0];
            }
          }

          if (([v43 isEqual:v138] & 1) == 0 && (objc_msgSend(v53, "irisMovieCaptureEnabled") & 1) == 0)
          {
            [v11 setEnabled:0];
          }

          [v53 setIrisPreparedSettings:{-[AVCaptureOutput figCaptureIrisPreparedSettings](output4, "figCaptureIrisPreparedSettings")}];
          [v53 setOptimizesImagesForOfflineVideoStabilization:{-[AVCaptureOutput optimizesImagesForOfflineVideoStabilization](output4, "optimizesImagesForOfflineVideoStabilization")}];
          [v53 setDepthDataDeliveryEnabled:{-[AVCaptureOutput isDepthDataDeliveryEnabled](output4, "isDepthDataDeliveryEnabled")}];
          [v53 setPortraitEffectsMatteDeliveryEnabled:{-[AVCaptureOutput isPortraitEffectsMatteDeliveryEnabled](output4, "isPortraitEffectsMatteDeliveryEnabled")}];
          if ([-[AVCaptureOutput enabledSemanticSegmentationMatteTypes](output4 "enabledSemanticSegmentationMatteTypes")])
          {
            [v53 setEnabledSemanticSegmentationMatteURNs:{AVSemanticSegmentationCMPhotoURNsForMatteTypes(-[AVCaptureOutput enabledSemanticSegmentationMatteTypes](output4, "enabledSemanticSegmentationMatteTypes"))}];
          }

          [v53 setFilterRenderingEnabled:{-[AVCaptureOutput isFilterRenderingEnabled](output4, "isFilterRenderingEnabled")}];
          [v53 setBravoConstituentPhotoDeliveryEnabled:{-[AVCaptureOutput isVirtualDeviceConstituentPhotoDeliveryEnabled](output4, "isVirtualDeviceConstituentPhotoDeliveryEnabled")}];
          [v53 setMomentCaptureMovieRecordingEnabled:{-[AVCaptureOutput isMovieRecordingEnabled](output4, "isMovieRecordingEnabled")}];
          [v53 setSpatialOverCaptureEnabled:{-[AVCaptureOutput isSpatialOverCaptureEnabled](output4, "isSpatialOverCaptureEnabled")}];
          [v53 setDeferredProcessingEnabled:{-[AVCaptureOutput isAutoDeferredPhotoDeliveryEnabled](output4, "isAutoDeferredPhotoDeliveryEnabled")}];
          [v53 setDigitalFlashCaptureEnabled:{-[AVCaptureOutput isDigitalFlashCaptureEnabled](output4, "isDigitalFlashCaptureEnabled")}];
          [v53 setFocusPixelBlurScoreEnabled:{-[AVCaptureOutput isFocusPixelBlurScoreEnabled](output4, "isFocusPixelBlurScoreEnabled")}];
          [v53 setPreviewQualityAdjustedPhotoFilterRenderingEnabled:{-[AVCaptureOutput isPreviewQualityAdjustedPhotoFilterRenderingEnabled](output4, "isPreviewQualityAdjustedPhotoFilterRenderingEnabled")}];
          [v53 setIntelligentDistortionCorrectionEnabled:{-[AVCaptureOutput isContentAwareDistortionCorrectionEnabled](output4, "isContentAwareDistortionCorrectionEnabled")}];
          [v53 setDemosaicedRawEnabled:{-[AVCaptureOutput isAppleProRAWEnabled](output4, "isAppleProRAWEnabled")}];
          maxPhotoQualityPrioritization = [(AVCaptureOutput *)output4 maxPhotoQualityPrioritization];
          if ([(AVCaptureOutput *)output4 isDepthDataDeliveryEnabled]&& maxPhotoQualityPrioritization == 3)
          {
            if (AVGestaltGetBoolAnswer(@"AVGQCaptureDepthWithDeepFusionSupported"))
            {
              maxPhotoQualityPrioritization = 3;
            }

            else
            {
              maxPhotoQualityPrioritization = 2;
            }
          }

          [v53 setMaxQualityPrioritization:maxPhotoQualityPrioritization];
          [v53 setFastCapturePrioritizationEnabled:{-[AVCaptureOutput isFastCapturePrioritizationEnabled](output4, "isFastCapturePrioritizationEnabled")}];
          [v53 setZeroShutterLagEnabled:{-[AVCaptureOutput isZeroShutterLagEnabled](output4, "isZeroShutterLagEnabled")}];
          [v53 setUltraHighResolutionZeroShutterLagSupportEnabled:{-[AVCaptureOutput isUltraHighResolutionZeroShutterLagSupportEnabled](output4, "isUltraHighResolutionZeroShutterLagSupportEnabled")}];
          [v53 setResponsiveCaptureEnabled:{-[AVCaptureOutput isResponsiveCaptureEnabled](output4, "isResponsiveCaptureEnabled")}];
          [v53 setSemanticStyleRenderingEnabled:{-[AVCaptureOutput isSemanticStyleRenderingEnabled](output4, "isSemanticStyleRenderingEnabled")}];
          [v53 setConstantColorEnabled:{-[AVCaptureOutput isConstantColorEnabled](output4, "isConstantColorEnabled")}];
          [v53 setConstantColorClippingRecoveryEnabled:{-[AVCaptureOutput isConstantColorClippingRecoveryEnabled](output4, "isConstantColorClippingRecoveryEnabled")}];
          [v53 setConstantColorSaturationBoostEnabled:{-[AVCaptureOutput isConstantColorSaturationBoostEnabled](output4, "isConstantColorSaturationBoostEnabled")}];
          if (avcc_frontCameraPhysicalMirroringFollowsCameraAppPreference_onceToken != -1)
          {
            [AVCaptureConnection figCaptureConnectionConfigurationForSessionPreset:allConnections:];
          }

          [v16 setPhysicalMirroringForMovieRecordingEnabled:self->_internal->videoMirroringMethodForMovieRecording == 2];
          [v53 setMaxPhotoDimensions:{-[AVCaptureOutput maxPhotoDimensions](output4, "maxPhotoDimensions")}];
          [v53 setExifFocalLengthsByZoomFactor:{-[AVCaptureOutput exifFocalLengthsByZoomFactor](output4, "exifFocalLengthsByZoomFactor")}];
          [v53 setStereoPhotoCaptureEnabled:{-[AVCaptureOutput isSpatialPhotoCaptureEnabled](output4, "isSpatialPhotoCaptureEnabled")}];
          [v53 setApplyStandardSmartStyleForStillsWhenNoStyleRequested:{-[AVCaptureDeviceFormat isApplyStandardSmartStyleForStillsWhenNoStyleRequestedSupported](-[AVCaptureDevice activeFormat](self->_internal->sourceDevice, "activeFormat"), "isApplyStandardSmartStyleForStillsWhenNoStyleRequestedSupported")}];
          [v53 setMultiCamClientCompositingEnabled:{-[AVCaptureOutput isMultiCamClientCompositingEnabled](output4, "isMultiCamClientCompositingEnabled")}];
          if ([v53 multiCamClientCompositingEnabled])
          {
            [v53 setMultiCamClientCompositingPrimaryConnectionID:{objc_msgSend(-[AVCaptureOutput multiCamClientCompositingPrimaryConnection](output4, "multiCamClientCompositingPrimaryConnection"), "connectionID")}];
          }

LABEL_87:
          [v53 setCameraSensorOrientationCompensationEnabled:{-[AVCaptureOutput isCameraSensorOrientationCompensationEnabled](output4, "isCameraSensorOrientationCompensationEnabled")}];
          goto LABEL_111;
        }

        v59 = MEMORY[0x1E698F7A8];
      }

      v53 = objc_alloc_init(v59);
      goto LABEL_111;
    }

    videoSettings2 = [(AVCaptureOutput *)output4 videoSettings];
    v53 = objc_alloc_init(MEMORY[0x1E698F808]);
    v89 = [objc_msgSend(videoSettings2 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
    v90 = [objc_msgSend(videoSettings2 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
    [v16 setOutputWidth:v89];
    [v16 setOutputHeight:v90];
    v91 = [videoSettings2 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
    if (v91)
    {
      v92 = v91;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject2 = v92;
LABEL_195:
        [v16 setOutputFormat:objc_msgSend(firstObject2, "unsignedIntValue")];
        goto LABEL_196;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject2 = [v92 firstObject];
        goto LABEL_195;
      }
    }

LABEL_196:
    [(AVCaptureConnection *)self videoRotationAngle];
    [v16 setRotationDegrees:v119];
    [v16 setMirroringEnabled:self->_internal->videoMirrored];
    [v16 setVideoStabilizationMethod:{avcaptureVideoStabilizationModeToFigCaptureVideoStabilizationMethod(self->_internal->activeVideoStabilizationMode, objc_msgSend(v11, "sourceConfiguration"))}];
    [v16 setDeviceOrientationCorrectionEnabled:{-[AVCaptureConnection isVideoDeviceOrientationCorrectionEnabled](self, "isVideoDeviceOrientationCorrectionEnabled")}];
    [v16 setZoomSmoothingEnabled:{-[AVCaptureConnection isVideoZoomSmoothingEnabled](self, "isVideoZoomSmoothingEnabled")}];
    [v16 setRetainedBufferCount:{-[AVCaptureConnection clientRetainedBufferCount](self, "clientRetainedBufferCount")}];
    [v16 setCameraIntrinsicMatrixDeliveryEnabled:self->_internal->cameraIntrinsicMatrixDeliveryEnabled];
    [v53 setDiscardsLateVideoFrames:{-[AVCaptureOutput alwaysDiscardsLateVideoFrames](output4, "alwaysDiscardsLateVideoFrames")}];
    [v53 setOptimizedForPreview:{-[AVCaptureOutput deliversPreviewSizedOutputBuffers](output4, "deliversPreviewSizedOutputBuffers")}];
    [v53 setSceneStabilityMetadataEnabled:{-[AVCaptureOutput isSceneStabilityMetadataEnabled](output4, "isSceneStabilityMetadataEnabled")}];
    [v53 setRequestedBufferAttachments:{-[AVCaptureOutput requestedBufferAttachments](output4, "requestedBufferAttachments")}];
    [v53 setPreparesCellularRadioForNetworkConnection:{-[AVCaptureOutput preparesCellularRadioForNetworkConnection](output4, "preparesCellularRadioForNetworkConnection")}];
    [v53 setPreservesDynamicHDRMetadata:{-[AVCaptureOutput preservesDynamicHDRMetadata](output4, "preservesDynamicHDRMetadata")}];
    goto LABEL_111;
  }

  if (!internal->videoPreviewLayerWeakReference)
  {
    v53 = 0;
    goto LABEL_113;
  }

  output4 = [(AVCaptureConnection *)self videoPreviewLayer];
  v53 = objc_alloc_init(MEMORY[0x1E698F810]);
  [v53 setSinkID:{-[AVCaptureOutput sinkID](output4, "sinkID")}];
  [v53 setDepthDataDeliveryEnabled:{-[AVCaptureOutput isDepthDataDeliveryEnabled](output4, "isDepthDataDeliveryEnabled")}];
  [v53 setFilterRenderingEnabled:{-[AVCaptureOutput isFilterRenderingEnabled](output4, "isFilterRenderingEnabled")}];
  [v53 setFilters:{-[AVCaptureOutput videoPreviewFilters](output4, "videoPreviewFilters")}];
  if ([-[AVCaptureConnection sourceDeviceInput](self "sourceDeviceInput")])
  {
    [v53 setDepthDataDeliveryEnabled:1];
    [v53 setFilterRenderingEnabled:1];
    v141[0] = [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffect"];
    [v53 setFilters:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v141, 1)}];
  }

  [v53 setPortraitAutoSuggestEnabled:{-[AVCaptureOutput isPortraitAutoSuggestEnabled](output4, "isPortraitAutoSuggestEnabled")}];
  [v16 setMirroringEnabled:self->_internal->videoMirrored];
  [v16 setVideoStabilizationMethod:{avcaptureVideoStabilizationModeToFigCaptureVideoStabilizationMethod(self->_internal->activeVideoStabilizationMode, objc_msgSend(v11, "sourceConfiguration"))}];
  [firstObject input];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(firstObject "input")];
    [v53 setPortraitLightingEffectStrength:?];
  }

  [v53 setSemanticStyleRenderingEnabled:{-[AVCaptureOutput isSemanticStyleRenderingEnabled](output4, "isSemanticStyleRenderingEnabled")}];
  if ([(AVCaptureOutput *)output4 semanticStyle])
  {
    semanticStyle = [(AVCaptureOutput *)output4 semanticStyle];
    v61 = MEMORY[0x1E698F7C8];
    [semanticStyle toneBias];
    v63 = v62;
    [semanticStyle warmthBias];
    LODWORD(v65) = v64;
    LODWORD(v66) = v63;
    [v53 setSemanticStyle:{objc_msgSend(v61, "semanticStyleWithToneBias:warmthBias:", v66, v65)}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v53 setPrimaryCaptureRectModificationEnabled:1];
    *&formatDescriptionOut.value = *MEMORY[0x1E695EFF8];
    v163[0] = 0.0;
    v140 = 0;
    [(AVCaptureConnection *)self sourcesFromFrontFacingCamera];
    [(AVCaptureConnection *)self sourcesFromExternalCamera];
    [(AVCaptureOutput *)output4 getPrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:AVCapturePlatformMountsCamerasInLandscapeOrientation() center:&formatDescriptionOut aspectRatio:v163 uniqueID:&v140];
    [v53 setPrimaryCaptureRectCenter:{*&formatDescriptionOut.value, *&formatDescriptionOut.timescale}];
    [v53 setPrimaryCaptureRectAspectRatio:v163[0]];
    [v53 setPrimaryCaptureRectUniqueID:v140];
  }

  [v53 setZoomPIPOverlayEnabled:{-[AVCaptureOutput isZoomPictureInPictureOverlayEnabled](output4, "isZoomPictureInPictureOverlayEnabled")}];
LABEL_112:
  [v53 setDeferredStartEnabled:{-[AVCaptureOutput isDeferredStartEnabled](output4, "isDeferredStartEnabled")}];
LABEL_113:
  [v11 setSinkConfiguration:v53];
  if ([objc_msgSend(v11 "sourceConfiguration")] == 2)
  {
    [(AVCaptureConnection *)self output];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || ([(AVCaptureConnection *)self output], objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v16 setVideoStabilizationMethod:5];
    }

    [objc_msgSend(v11 "sourceConfiguration")];
  }

  return v11;
}

- (void)_updateActiveVideoStabilizationMode:(int64_t)mode bumpChangeSeed:(BOOL)seed
{
  if (mode != -1)
  {
    internal = self->_internal;
    activeVideoStabilizationMode = internal->activeVideoStabilizationMode;
    if (activeVideoStabilizationMode != mode)
    {
      seedCopy = seed;
      if (mode <= 5 && ((1 << mode) & 0x2C) != 0)
      {
        if (internal->hasActiveObservers && !internal->hasVideoMinFrameDurationObserver)
        {
          internal->hasVideoMinFrameDurationObserver = 1;
          [(AVCaptureDevice *)self->_internal->sourceDevice addObserver:self forKeyPath:@"activeVideoMinFrameDuration" options:3 context:AVCaptureConnectionDeviceActiveMinFrameDurationChangedContext];
        }
      }

      else
      {
        v9 = activeVideoStabilizationMode > 5;
        v10 = (1 << activeVideoStabilizationMode) & 0x2C;
        v11 = v9 || v10 == 0;
        if (!v11 && internal->hasVideoMinFrameDurationObserver)
        {
          internal->hasVideoMinFrameDurationObserver = 0;
          [(AVCaptureDevice *)self->_internal->sourceDevice removeObserver:self forKeyPath:@"activeVideoMinFrameDuration" context:AVCaptureConnectionDeviceActiveMinFrameDurationChangedContext];
        }
      }

      [(AVCaptureConnection *)self willChangeValueForKey:@"videoStabilizationEnabled"];
      self->_internal->videoStabilizationEnabled = mode != 0;
      [(AVCaptureConnection *)self didChangeValueForKey:@"videoStabilizationEnabled"];
      [(AVCaptureConnection *)self willChangeValueForKey:@"activeVideoStabilizationMode"];
      self->_internal->activeVideoStabilizationMode = mode;
      [(AVCaptureConnection *)self didChangeValueForKey:@"activeVideoStabilizationMode"];
      [(AVCaptureConnection *)self _updateCameraIntrinsicMatrixDeliverySupported];
      [(AVCaptureConnection *)self _updateSupportedVideoMirroringMethodsForMovieRecording];
      [(AVCaptureConnection *)self _updateZoomSmoothingSupported];
      [(AVCaptureConnection *)self _updateVideoGreenGhostMitigationSupported];
      [(AVCaptureOutput *)[(AVCaptureConnection *)self output] handleVideoStabilizationModeChangedForConnection:self];
      if (seedCopy && [(AVCaptureConnection *)self isLive])
      {
        output = [(AVCaptureConnection *)self output];

        [(AVCaptureOutput *)output bumpChangeSeed];
      }
    }
  }
}

- (int64_t)_resolveActiveVideoStabilizationMode:(int64_t)mode format:(id)format
{
  [(AVCaptureConnection *)self output];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && !self->_internal->videoPreviewLayerWeakReference)
    {
      mode = 0;
      goto LABEL_24;
    }
  }

  if (mode != -1)
  {
    if (self->_internal->videoPreviewLayerWeakReference)
    {
      if (mode == 6)
      {
        v7 = 6;
        formatCopy2 = format;
        v10 = 6;
LABEL_15:
        if (![formatCopy2 isVideoStabilizationModeSupported:v10])
        {
          return 0;
        }

        return v7;
      }

      if (mode != 4)
      {
        return 0;
      }

LABEL_10:
      v7 = 4;
      formatCopy2 = format;
      v10 = 4;
      goto LABEL_15;
    }

LABEL_24:
    if ([format isVideoStabilizationModeSupported:mode])
    {
      return mode;
    }

    else
    {
      return 0;
    }
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([format formatDescription]);
  if (self->_internal->videoPreviewLayerWeakReference)
  {
    goto LABEL_10;
  }

  v11 = Dimensions;
  if ([format isVideoStabilizationModeSupported:5] && (objc_msgSend(-[AVCaptureConnection sourceDevice](self, "sourceDevice"), "isStabilizationAutoSelectionCinematicExtendedEnhancedEnabled") & 1) != 0)
  {
    return 5;
  }

  v7 = 3;
  if (([format isVideoStabilizationModeSupported:3] & 1) == 0)
  {
    if ([format isVideoStabilizationModeSupported:2])
    {
      if ((AVGestaltGetBoolAnswer(@"AVGQCaptureConnectionAlwaysSelectsStandardVISFor720p30") & (v11 == 0x2D000000500)) != 0)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return [format isVideoStabilizationModeSupported:1];
    }
  }

  return v7;
}

- (void)_updatePropertiesForFormat:(id)format
{
  [(AVCaptureConnection *)self _updateMaxScaleAndCropFactorForFormat:?];
  if ([(AVCaptureConnection *)self isVideoStabilizationSupported])
  {
    [(AVCaptureConnection *)self _updateActiveVideoStabilizationMode:[(AVCaptureConnection *)self _resolveActiveVideoStabilizationMode:self->_internal->preferredVideoStabilizationMode format:format] bumpChangeSeed:0];
  }

  [(AVCaptureConnection *)self _updateCameraIntrinsicMatrixDeliverySupported];
  [(AVCaptureConnection *)self _updateSupportedVideoMirroringMethodsForMovieRecording];
  [(AVCaptureConnection *)self _updateZoomSmoothingSupported];

  [(AVCaptureConnection *)self _updateVideoGreenGhostMitigationSupported];
}

- (unsigned)clientRetainedBufferCount
{
  if (!self->_internal->outputWeakReference)
  {
    return 0;
  }

  output = [(AVCaptureConnection *)self output];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    internal = self->_internal;
    result = internal->videoRetainedBufferCountHint;
    if (!result)
    {
      activeFormat = [(AVCaptureDevice *)internal->sourceDevice activeFormat];
      objc_opt_class();
      v7 = objc_opt_isKindOfClass() & 1;

      return avcc_defaultVideoRetainedBufferCount(activeFormat, v7);
    }

    return result;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = self->_internal->videoRetainedBufferCountHint;
  if (!result)
  {
    if (output)
    {
      [(AVCaptureOutput *)output minBurstFrameDuration];
      Seconds = CMTimeGetSeconds(&time);
      [(AVCaptureOutput *)output minFrameDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
      Seconds = CMTimeGetSeconds(&time);
      memset(&time, 0, sizeof(time));
    }

    v9 = 1.0 / Seconds;
    v10 = 1.0 / CMTimeGetSeconds(&time);
    v11 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](self "inputPorts")];
    if (v9 == 0.0)
    {
      v9 = v10;
    }

    [v11 requiredMaxFrameRate];
    FigCaptureFrameRateAsFloat();
    return (((v9 / v12) * avcc_defaultVideoRetainedBufferCount([(AVCaptureDevice *)self->_internal->sourceDevice activeFormat], 0)) + 0.5);
  }

  return result;
}

@end