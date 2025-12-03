@interface AVCaptureStillImageOutput
+ (NSData)jpegStillImageNSDataRepresentation:(CMSampleBufferRef)jpegSampleBuffer;
+ (__CFDictionary)_copyAttachmentsAndPropagateFaceRegionsToExifAuxDictionaryForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
+ (id)jpegStillImageNSDataRepresentationForSurface:(__IOSurface *)surface size:(unint64_t)size metadata:(id)metadata;
+ (unint64_t)maxStillImageJPEGDataSize;
+ (void)initialize;
- (AVCaptureStillImageOutput)init;
- (BOOL)_bracketedSettingsAreValid:(id)valid fromConnection:(id)connection exceptionReason:(id *)reason;
- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason;
- (CGSize)outputSizeForSourceFormat:(id)format;
- (CGSize)previewImageSize;
- (NSArray)availableImageDataCodecTypes;
- (NSUInteger)maxBracketedCaptureStillImageCount;
- (id)_figCaptureStillImageSettingsForBracketedCaptureSettingsArray:(id)array fromConnection:(id)connection;
- (id)_figCaptureStillImageSettingsForConnection:(id)connection;
- (id)addConnection:(id)connection error:(id *)error;
- (id)firstActiveConnection;
- (void)_setStillImageStabilizationAutomaticallyEnabled:(BOOL)enabled;
- (void)_updateCameraSensorOrientationCompensationSupportedForDevice:(id)device;
- (void)_updateLensStabilizationDuringBracketedCaptureSupportedForDevice:(id)device;
- (void)_updateMaxBracketedStillImageCaptureCountForSourceFormat:(id)format;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)captureStillImageAsynchronouslyFromConnection:(AVCaptureConnection *)connection completionHandler:(void *)handler;
- (void)captureStillImageBracketAsynchronouslyFromConnection:(AVCaptureConnection *)connection withSettingsArray:(NSArray *)settings completionHandler:(void *)handler;
- (void)captureStillImageSurfaceAsynchronouslyFromConnection:(id)connection completionHandler:(id)handler;
- (void)clearPreparedBracketIfNeeded;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)handleBackgroundBlurActiveChangedForDevice:(id)device;
- (void)handleBackgroundReplacementActiveChangedForDevice:(id)device;
- (void)handleCenterStageActiveChangedForDevice:(id)device;
- (void)handleChangedActiveFormat:(id)format forDevice:(id)device;
- (void)handleNotification:(id)notification payload:(id)payload;
- (void)handleNotificationForPrepareRequest:(id)request withPayload:(id)payload;
- (void)handleNotificationForRequest:(id)request withPayload:(id)payload imageIsEV0:(BOOL *)v0;
- (void)handleStudioLightingActiveChangedForDevice:(id)device;
- (void)prepareToCaptureStillImageBracketFromConnection:(AVCaptureConnection *)connection withSettingsArray:(NSArray *)settings completionHandler:(void *)handler;
- (void)removeConnection:(id)connection;
- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)setAutomaticallyEnablesStillImageStabilizationWhenAvailable:(BOOL)automaticallyEnablesStillImageStabilizationWhenAvailable;
- (void)setCameraSensorOrientationCompensationEnabled:(BOOL)enabled;
- (void)setHighResolutionStillImageOutputEnabled:(BOOL)highResolutionStillImageOutputEnabled;
- (void)setLensStabilizationDuringBracketedCaptureEnabled:(BOOL)lensStabilizationDuringBracketedCaptureEnabled;
- (void)setOutputSettings:(NSDictionary *)outputSettings;
- (void)setShutterSound:(unsigned int)sound;
- (void)updateSISSupportedForSourceDevice:(id)device;
@end

@implementation AVCaptureStillImageOutput

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    AVCaptureInitializeShutterSoundSuppressedByAirpodStemClickStorageOnce();
  }
}

- (AVCaptureStillImageOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureStillImageOutput;
  initSubclass = [(AVCaptureOutput *)&v5 initSubclass];
  if (initSubclass)
  {
    v3 = objc_alloc_init(AVCaptureStillImageOutputInternal);
    initSubclass->_internal = v3;
    if (v3)
    {
      initSubclass->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
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
  v3.super_class = AVCaptureStillImageOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)updateSISSupportedForSourceDevice:(id)device
{
  v5 = [objc_msgSend(device "activeFormat")];
  internal = self->_internal;
  if (internal->SISSupported == v5)
  {
    return;
  }

  v7 = v5;
  if (!internal->SISSupported)
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_6:
    SISEnabled = internal->SISEnabled;
    goto LABEL_7;
  }

  v8 = internal->SISEnabled;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_4:
  SISEnabled = 0;
LABEL_7:
  v10 = [device deviceType] == @"AVCaptureDeviceTypeBuiltInDualCamera" && v7;
  [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"stillImageStabilizationSupported"];
  if (v8 == SISEnabled)
  {
    self->_internal->SISSupported = v7;
    self->_internal->bravoImageFusionSupported = v10;
  }

  else
  {
    [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"automaticallyEnablesStillImageStabilizationWhenAvailable"];
    self->_internal->SISSupported = v7;
    self->_internal->bravoImageFusionSupported = v10;
    [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"automaticallyEnablesStillImageStabilizationWhenAvailable"];
  }

  [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"stillImageStabilizationSupported"];
}

- (void)clearPreparedBracketIfNeeded
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = self->_internal;
  if (v4->preparedBracket.imageCount)
  {
    if (v4->imageDataFormatType != v4->preparedBracket.outputFormat || (Dimensions = CMVideoFormatDescriptionGetDimensions([objc_msgSend(-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{*MEMORY[0x1E6987608]), "sourceDevice"), "activeFormat"), "formatDescription"}]), v4 = self->_internal, *&v4->preparedBracket.outputWidth != Dimensions))
    {
      *&v4->preparedBracket.outputWidth = 0;
      *&v4->preparedBracket.imageCount = 0;
    }
  }

  objc_sync_exit(internal);
}

- (id)addConnection:(id)connection error:(id *)error
{
  v8.receiver = self;
  v8.super_class = AVCaptureStillImageOutput;
  v5 = [(AVCaptureOutput *)&v8 addConnection:connection error:error];
  sourceDevice = [v5 sourceDevice];
  [(AVCaptureStillImageOutput *)self updateSISSupportedForSourceDevice:sourceDevice];
  [(AVCaptureStillImageOutput *)self _setStillImageStabilizationAutomaticallyEnabled:[(AVCaptureStillImageOutput *)self automaticallyEnablesStillImageStabilizationWhenAvailable]];
  -[AVCaptureStillImageOutput _updateMaxBracketedStillImageCaptureCountForSourceFormat:](self, "_updateMaxBracketedStillImageCaptureCountForSourceFormat:", [sourceDevice activeFormat]);
  [(AVCaptureStillImageOutput *)self _updateLensStabilizationDuringBracketedCaptureSupportedForDevice:sourceDevice];
  [(AVCaptureStillImageOutput *)self _updateCameraSensorOrientationCompensationSupportedForDevice:sourceDevice];
  return v5;
}

- (void)removeConnection:(id)connection
{
  [(AVCaptureStillImageOutput *)self _setStillImageStabilizationAutomaticallyEnabled:0];
  v5.receiver = self;
  v5.super_class = AVCaptureStillImageOutput;
  [(AVCaptureOutput *)&v5 removeConnection:connection];
  [(AVCaptureStillImageOutput *)self updateSISSupportedForSourceDevice:0];
  [(AVCaptureStillImageOutput *)self _updateMaxBracketedStillImageCaptureCountForSourceFormat:0];
  [(AVCaptureStillImageOutput *)self _updateLensStabilizationDuringBracketedCaptureSupportedForDevice:0];
}

- (void)setOutputSettings:(NSDictionary *)outputSettings
{
  self->_internal->outputSettings = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:outputSettings];
  v5 = [(NSDictionary *)outputSettings objectForKeyedSubscript:*MEMORY[0x1E6966130]];
  v6 = [(NSDictionary *)outputSettings objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v7 = [(NSDictionary *)outputSettings objectForKeyedSubscript:*MEMORY[0x1E6987DC0]];
  if (!v5)
  {
    if (!v6)
    {
LABEL_8:
      self->_internal->jpegQualitySpecified = 0;
      if (!v7)
      {
LABEL_24:

        [(AVCaptureStillImageOutput *)self clearPreparedBracketIfNeeded];
        return;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_internal->imageDataFormatType == 1785750887)
        {
          [v7 floatValue];
          if (v9 >= 0.0 && v9 <= 1.0)
          {
            self->_internal->jpegQualitySpecified = 1;
            self->_internal->jpegQuality = v9;
            goto LABEL_24;
          }

          v11 = MEMORY[0x1E695DF30];
          v12 = *MEMORY[0x1E695D940];
        }

        else
        {
          v11 = MEMORY[0x1E695DF30];
          v12 = *MEMORY[0x1E695D940];
        }
      }

      else
      {
        v11 = MEMORY[0x1E695DF30];
        v12 = *MEMORY[0x1E695D940];
      }

      goto LABEL_21;
    }

    if (![(NSArray *)[(AVCaptureStillImageOutput *)self availableImageDataCodecTypes] containsObject:v6])
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v19 = v6;
LABEL_21:
      v15 = AVMethodExceptionReasonWithObjectAndSelector();
      v16 = v11;
      v17 = v12;
      goto LABEL_22;
    }

    intValue = AVOSTypeForString();
LABEL_7:
    self->_internal->imageDataFormatType = intValue;
    goto LABEL_8;
  }

  if ([(NSArray *)[(AVCaptureStillImageOutput *)self availableImageDataCVPixelFormatTypes] containsObject:v5])
  {
    intValue = [v5 intValue];
    goto LABEL_7;
  }

  v13 = MEMORY[0x1E695DF30];
  v14 = *MEMORY[0x1E695D940];
  [v5 intValue];
  v19 = AVStringForOSType();
  intValue2 = [v5 intValue];
  v15 = AVMethodExceptionReasonWithObjectAndSelector();
  v16 = v13;
  v17 = v14;
LABEL_22:
  v18 = [v16 exceptionWithName:v17 reason:v15 userInfo:{0, v19, intValue2}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v18);
  }

  NSLog(&cfstr_SuppressingExc.isa, v18);
}

- (NSArray)availableImageDataCodecTypes
{
  result = availableImageDataCodecTypes_availableTypes;
  if (!availableImageDataCodecTypes_availableTypes)
  {
    v3 = objc_alloc(MEMORY[0x1E695DEC8]);
    result = [v3 initWithObjects:{*MEMORY[0x1E6987D00], 0}];
    availableImageDataCodecTypes_availableTypes = result;
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

- (void)handleChangedActiveFormat:(id)format forDevice:(id)device
{
  [(AVCaptureStillImageOutput *)self updateSISSupportedForSourceDevice:device];
  [(AVCaptureStillImageOutput *)self _setStillImageStabilizationAutomaticallyEnabled:[(AVCaptureStillImageOutput *)self automaticallyEnablesStillImageStabilizationWhenAvailable]];
  [(AVCaptureStillImageOutput *)self _updateMaxBracketedStillImageCaptureCountForSourceFormat:format];
  [(AVCaptureStillImageOutput *)self _updateLensStabilizationDuringBracketedCaptureSupportedForDevice:device];
  [(AVCaptureStillImageOutput *)self clearPreparedBracketIfNeeded];
  v7.receiver = self;
  v7.super_class = AVCaptureStillImageOutput;
  [(AVCaptureOutput *)&v7 handleChangedActiveFormat:format forDevice:device];
}

- (void)handleCenterStageActiveChangedForDevice:(id)device
{
  activeFormat = [device activeFormat];

  [(AVCaptureStillImageOutput *)self _updateMaxBracketedStillImageCaptureCountForSourceFormat:activeFormat];
}

- (void)handleBackgroundBlurActiveChangedForDevice:(id)device
{
  activeFormat = [device activeFormat];

  [(AVCaptureStillImageOutput *)self _updateMaxBracketedStillImageCaptureCountForSourceFormat:activeFormat];
}

- (void)handleStudioLightingActiveChangedForDevice:(id)device
{
  activeFormat = [device activeFormat];

  [(AVCaptureStillImageOutput *)self _updateMaxBracketedStillImageCaptureCountForSourceFormat:activeFormat];
}

- (void)handleBackgroundReplacementActiveChangedForDevice:(id)device
{
  activeFormat = [device activeFormat];

  [(AVCaptureStillImageOutput *)self _updateMaxBracketedStillImageCaptureCountForSourceFormat:activeFormat];
}

- (CGSize)previewImageSize
{
  internal = self->_internal;
  width = internal->previewImageSize.width;
  height = internal->previewImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setAutomaticallyEnablesStillImageStabilizationWhenAvailable:(BOOL)automaticallyEnablesStillImageStabilizationWhenAvailable
{
  if ([(AVCaptureStillImageOutput *)self isStillImageStabilizationSupported])
  {
    self->_internal->SISEnabled = automaticallyEnablesStillImageStabilizationWhenAvailable;
    automaticallyEnablesStillImageStabilizationWhenAvailable = [(AVCaptureStillImageOutput *)self automaticallyEnablesStillImageStabilizationWhenAvailable];

    [(AVCaptureStillImageOutput *)self _setStillImageStabilizationAutomaticallyEnabled:automaticallyEnablesStillImageStabilizationWhenAvailable];
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

- (void)setHighResolutionStillImageOutputEnabled:(BOOL)highResolutionStillImageOutputEnabled
{
  internal = self->_internal;
  if (internal->highResStillEnabled != highResolutionStillImageOutputEnabled)
  {
    internal->highResStillEnabled = highResolutionStillImageOutputEnabled;
    v5 = [(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]];
    if (v5)
    {
      v6 = v5;
      -[AVCaptureStillImageOutput _updateMaxBracketedStillImageCaptureCountForSourceFormat:](self, "_updateMaxBracketedStillImageCaptureCountForSourceFormat:", [-[AVCaptureConnection sourceDevice](v5 "sourceDevice")]);
      v7 = [-[AVCaptureConnection sourceDevice](v6 "sourceDevice")];
      v8 = [-[AVCaptureConnection sourceDevice](v6 "sourceDevice")];

      [(AVCaptureOutput *)self updateMetadataTransformForSourceFormat:v7 aspectRatio:v8];
    }
  }
}

- (void)setShutterSound:(unsigned int)sound
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementShutterSoundManipulation))
  {
    self->_internal->shutterSoundID = sound;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (void)setCameraSensorOrientationCompensationEnabled:(BOOL)enabled
{
  internal = self->_internal;
  if (enabled && !internal->cameraSensorOrientationCompensationSupported)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {
    internal->cameraSensorOrientationCompensationAutomaticallyEnabled = 0;
    v4 = self->_internal;
    if (v4->cameraSensorOrientationCompensationEnabled != enabled)
    {
      v4->cameraSensorOrientationCompensationEnabled = enabled;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (id)firstActiveConnection
{
  liveConnections = [(AVCaptureOutput *)self liveConnections];

  return [liveConnections firstObject];
}

- (id)_figCaptureStillImageSettingsForConnection:(id)connection
{
  atomic_fetch_add_explicit(&_figCaptureStillImageSettingsForConnection__gSettingsID, 1uLL, memory_order_relaxed);
  v5 = objc_alloc(MEMORY[0x1E698F7F8]);
  v6 = [v5 initWithSettingsID:_figCaptureStillImageSettingsForConnection__gSettingsID];
  sourceDevice = [connection sourceDevice];
  activeFormat = [sourceDevice activeFormat];
  v9 = activeFormat;
  if (self->_internal->highResStillEnabled && ([activeFormat supportsHighResolutionStillImageOutput] & 1) != 0)
  {
    v10 = 0;
    Dimensions = 0;
    v12 = 1;
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([v9 formatDescription]);
    v12 = 0;
    v10 = HIDWORD(*&Dimensions);
  }

  [objc_msgSend(objc_msgSend(objc_msgSend(connection "sourceDevice")];
  IsSensorMountedInPortraitOrientation = AVCaptureIsSensorMountedInPortraitOrientation(v13);
  if (IsSensorMountedInPortraitOrientation)
  {
    v15 = AVCaptureFlippedDimensions(Dimensions.width | (v10 << 32));
    v10 = HIDWORD(v15);
    Dimensions = v15;
  }

  [v6 setOutputFormat:self->_internal->imageDataFormatType];
  if ([v6 outputFormat] == 1785750887)
  {
    v16 = 1785096550;
  }

  else
  {
    v16 = 0;
  }

  [v6 setOutputFileType:v16];
  [v6 setOutputWidth:Dimensions];
  [v6 setOutputHeight:v10];
  [v6 setOriginalOutputDimensions:{objc_msgSend(v6, "outputDimensions")}];
  [v6 setOutputMirroring:{objc_msgSend(connection, "isVideoMirrored")}];
  [connection videoRotationAngle];
  [v6 setOutputRotationDegrees:v17];
  v18 = 0;
  internal = self->_internal;
  if (internal->previewImageSize.width > 0.0)
  {
    v18 = internal->previewImageSize.height > 0.0;
  }

  [v6 setPreviewEnabled:v18];
  if ([v6 previewEnabled])
  {
    v20 = self->_internal;
    width = v20->previewImageSize.width;
    height = v20->previewImageSize.height;
    outputWidth = [v6 outputWidth];
    outputHeight = [v6 outputHeight];
    if (v12)
    {
      highResolutionStillImageDimensions = [v9 highResolutionStillImageDimensions];
      if (IsSensorMountedInPortraitOrientation)
      {
        highResolutionStillImageDimensions = AVCaptureFlippedDimensions(highResolutionStillImageDimensions);
      }

      v26 = highResolutionStillImageDimensions;
      v27 = SHIDWORD(highResolutionStillImageDimensions);
    }

    else
    {
      v26 = outputWidth;
      v27 = outputHeight;
    }

    if (v26 <= width && v27 <= height)
    {
      [v6 setPreviewWidth:v26];
      v31 = v27;
    }

    else
    {
      v29 = v26 / v27;
      v30 = width / height;
      if (vabds_f32(v29, v30) >= 0.01)
      {
        v49.origin.x = 0.0;
        v49.origin.y = 0.0;
        v32 = v27;
        v49.size.width = width;
        v49.size.height = height;
        v48 = AVMakeRectWithAspectRatioInsideRect(*&v26, v49);
        v33 = v48.size.height;
        *&v48.origin.x = v48.size.width * 0.5;
        [v6 setPreviewWidth:2 * llroundf(*&v48.origin.x)];
        v34 = v33 * 0.5;
        v31 = 2 * llroundf(v34);
      }

      else
      {
        [v6 setPreviewWidth:width];
        v31 = height;
      }
    }

    [v6 setPreviewHeight:v31];
    [v6 setPreviewFormat:875704422];
    [v6 setPreviewMirroring:{objc_msgSend(v6, "outputMirroring")}];
    [v6 setPreviewRotationDegrees:{objc_msgSend(v6, "outputRotationDegrees")}];
  }

  [v6 setNoiseReductionEnabled:self->_internal->noiseReductionEnabled];
  [connection videoScaleAndCropFactor];
  *&v35 = v35;
  [v6 setScaleFactor:v35];
  [v6 setShutterSound:self->_internal->shutterSoundID];
  [v6 setFlashMode:{objc_msgSend(sourceDevice, "flashMode")}];
  [v6 setWideColorMode:2];
  if (self->_internal->bravoImageFusionSupported)
  {
    [v6 setBravoImageFusionMode:2];
  }

  if ([(AVCaptureStillImageOutput *)self automaticallyEnablesStillImageStabilizationWhenAvailable])
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  [v6 setQualityPrioritization:v36];
  [v6 setClientQualityPrioritization:{objc_msgSend(v6, "qualityPrioritization")}];
  sourceDeviceInput = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDeviceInput];
  if ([sourceDevice isCenterStageActive])
  {
    isCenterStageAllowed = [sourceDeviceInput isCenterStageAllowed];
  }

  else
  {
    isCenterStageAllowed = 0;
  }

  if ([sourceDevice isBackgroundBlurActive])
  {
    isBackgroundBlurAllowed = [sourceDeviceInput isBackgroundBlurAllowed];
  }

  else
  {
    isBackgroundBlurAllowed = 0;
  }

  if ([sourceDevice isStudioLightingActive])
  {
    isStudioLightingAllowed = [sourceDeviceInput isStudioLightingAllowed];
  }

  else
  {
    isStudioLightingAllowed = 0;
  }

  isBackgroundReplacementActive = [sourceDevice isBackgroundReplacementActive];
  if (isBackgroundReplacementActive)
  {
    isBackgroundReplacementActive = [sourceDeviceInput isBackgroundReplacementAllowed];
  }

  if (((isCenterStageAllowed | isBackgroundBlurAllowed | isStudioLightingAllowed) & 1) != 0 || isBackgroundReplacementActive)
  {
    [v6 setQualityPrioritization:1];
  }

  if ([v9 videoHDRFlavor] == 2 && (objc_msgSend(v6, "qualityPrioritization") > 1 || objc_msgSend(v6, "HDRMode")))
  {
    if ([sourceDevice isVideoHDREnabled])
    {
      if ([sourceDevice isVideoHDRSuspended])
      {
        v43 = 0;
      }

      else
      {
        v43 = 2;
      }
    }

    else
    {
      v43 = 0;
    }

    [v6 setHDRMode:v43];
  }

  v44 = self->_internal;
  if (v44->jpegQualitySpecified)
  {
    v46 = *MEMORY[0x1E69837E0];
    *&v42 = v44->jpegQuality;
    v47 = [MEMORY[0x1E696AD98] numberWithFloat:{v42, v46}];
    [v6 setVtCompressionProperties:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v47, &v46, 1)}];
  }

  return v6;
}

- (void)captureStillImageAsynchronouslyFromConnection:(AVCaptureConnection *)connection completionHandler:(void *)handler
{
  if (handler)
  {
    if ([-[AVCaptureOutput liveConnections](self "liveConnections")])
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v8 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A917C000, v8, OS_LOG_TYPE_INFO, "Take a photo", buf, 2u);
        }
      }

      *buf = 0;
      v15 = buf;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __93__AVCaptureStillImageOutput_captureStillImageAsynchronouslyFromConnection_completionHandler___block_invoke;
      v13[3] = &unk_1E786F770;
      v13[4] = self;
      v13[5] = connection;
      v13[6] = handler;
      v13[7] = buf;
      [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v13];
      if ((v15[24] & 1) == 0)
      {
        v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
        objc_exception_throw(v12);
      }

      _Block_object_dispose(buf, 8);
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

  v11 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

uint64_t __93__AVCaptureStillImageOutput_captureStillImageAsynchronouslyFromConnection_completionHandler___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 56) + 8) + 24) = a2 != 0;
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) _figCaptureStillImageSettingsForConnection:*(result + 40)];
    [v4 setPayloadType:0];
    v5 = +[AVCaptureStillImageRequest request];
    [v5 setSettingsID:{objc_msgSend(v4, "settingsID")}];
    [v5 setSbufCompletionBlock:*(v3 + 48)];
    [v5 setShutterSoundID:*(*(*(v3 + 32) + 16) + 72)];
    v6 = *(*(v3 + 32) + 16);
    objc_sync_enter(v6);
    [*(*(*(v3 + 32) + 16) + 16) addObject:v5];
    objc_sync_exit(v6);
    v7 = [*(v3 + 32) sinkID];
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v8)
    {

      return v8(a2, v7, v4);
    }

    else
    {
      v9 = *MEMORY[0x1E698FC40];
      v10 = &unk_1F1CE9FF8;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (void)captureStillImageSurfaceAsynchronouslyFromConnection:(id)connection completionHandler:(id)handler
{
  if (handler)
  {
    if ([-[AVCaptureOutput liveConnections](self "liveConnections")])
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v8 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A917C000, v8, OS_LOG_TYPE_INFO, "Take a photo", buf, 2u);
        }
      }

      *buf = 0;
      v15 = buf;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __100__AVCaptureStillImageOutput_captureStillImageSurfaceAsynchronouslyFromConnection_completionHandler___block_invoke;
      v13[3] = &unk_1E786F770;
      v13[4] = self;
      v13[5] = connection;
      v13[6] = handler;
      v13[7] = buf;
      [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v13];
      if ((v15[24] & 1) == 0)
      {
        v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
        objc_exception_throw(v12);
      }

      _Block_object_dispose(buf, 8);
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

  v11 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

uint64_t __100__AVCaptureStillImageOutput_captureStillImageSurfaceAsynchronouslyFromConnection_completionHandler___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 56) + 8) + 24) = a2 != 0;
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) _figCaptureStillImageSettingsForConnection:*(result + 40)];
    [v4 setPayloadType:1];
    v5 = +[AVCaptureStillImageRequest request];
    [v5 setSettingsID:{objc_msgSend(v4, "settingsID")}];
    [v5 setIosurfaceCompletionBlock:*(v3 + 48)];
    [v5 setShutterSoundID:*(*(*(v3 + 32) + 16) + 72)];
    v6 = *(*(v3 + 32) + 16);
    objc_sync_enter(v6);
    [*(*(*(v3 + 32) + 16) + 16) addObject:v5];
    objc_sync_exit(v6);
    v7 = [*(v3 + 32) sinkID];
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v8)
    {

      return v8(a2, v7, v4);
    }

    else
    {
      v9 = *MEMORY[0x1E698FC40];
      v10 = &unk_1F1CE9FF8;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (NSUInteger)maxBracketedCaptureStillImageCount
{
  internal = self->_internal;
  objc_sync_enter(internal);
  maxBracketedCaptureCount = self->_internal->maxBracketedCaptureCount;
  objc_sync_exit(internal);
  return maxBracketedCaptureCount;
}

- (void)setLensStabilizationDuringBracketedCaptureEnabled:(BOOL)lensStabilizationDuringBracketedCaptureEnabled
{
  if ([(AVCaptureStillImageOutput *)self isLensStabilizationDuringBracketedCaptureSupported])
  {
    self->_internal->lensStabilizationDuringBracketedCaptureEnabled = lensStabilizationDuringBracketedCaptureEnabled;
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

- (void)prepareToCaptureStillImageBracketFromConnection:(AVCaptureConnection *)connection withSettingsArray:(NSArray *)settings completionHandler:(void *)handler
{
  if (!handler)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
LABEL_8:
    v14 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v14);
    }

    NSLog(&cfstr_SuppressingExc.isa, v14);
    return;
  }

  if (([-[AVCaptureOutput liveConnections](self "liveConnections")] & 1) == 0)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    goto LABEL_8;
  }

  v10 = [(NSArray *)settings count];
  if (v10 > [(AVCaptureStillImageOutput *)self maxBracketedCaptureStillImageCount])
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __113__AVCaptureStillImageOutput_prepareToCaptureStillImageBracketFromConnection_withSettingsArray_completionHandler___block_invoke;
    v23[3] = &unk_1E786F798;
    v23[4] = handler;
    v11 = v23;
LABEL_5:
    [(AVCaptureOutput *)self performBlockOnSessionNotifyingThread:v11];
    return;
  }

  v22 = 0;
  if (![(AVCaptureStillImageOutput *)self _bracketedSettingsAreValid:settings fromConnection:connection exceptionReason:&v22])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    goto LABEL_8;
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v16 = [(AVCaptureStillImageOutput *)self _figCaptureStillImageSettingsForBracketedCaptureSettingsArray:settings fromConnection:connection];
  v17 = [(AVCaptureStillImageOutput *)self _preparedForBracketedCaptureWithSettings:v16];
  objc_sync_exit(internal);
  if (v17)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __113__AVCaptureStillImageOutput_prepareToCaptureStillImageBracketFromConnection_withSettingsArray_completionHandler___block_invoke_2;
    v21[3] = &unk_1E786F798;
    v21[4] = handler;
    v11 = v21;
    goto LABEL_5;
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__AVCaptureStillImageOutput_prepareToCaptureStillImageBracketFromConnection_withSettingsArray_completionHandler___block_invoke_3;
  v18[3] = &unk_1E786F7C0;
  v18[6] = handler;
  v18[7] = v19;
  v18[4] = self;
  v18[5] = v16;
  v18[8] = a2;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v18];
  _Block_object_dispose(v19, 8);
}

uint64_t __113__AVCaptureStillImageOutput_prepareToCaptureStillImageBracketFromConnection_withSettingsArray_completionHandler___block_invoke(uint64_t a1)
{
  AVLocalizedError();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __113__AVCaptureStillImageOutput_prepareToCaptureStillImageBracketFromConnection_withSettingsArray_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 56) + 8) + 24) = a2 != 0;
  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    objc_exception_throw(v9);
  }

  v4 = *(*(a1 + 32) + 16);
  objc_sync_enter(v4);
  [*(*(*(a1 + 32) + 16) + 96) addObject:{+[AVCapturePrepareBracketRequest prepareBracketRequestWithCompletionBlock:settings:](AVCapturePrepareBracketRequest, "prepareBracketRequestWithCompletionBlock:settings:", *(a1 + 48), *(a1 + 40))}];
  objc_sync_exit(v4);
  v5 = [*(a1 + 32) sinkID];
  v6 = *(a1 + 40);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v7)
  {

    return v7(a2, v5, v6);
  }

  else
  {
    v10 = *MEMORY[0x1E698FC40];
    v11 = &unk_1F1CE9FF8;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

- (void)captureStillImageBracketAsynchronouslyFromConnection:(AVCaptureConnection *)connection withSettingsArray:(NSArray *)settings completionHandler:(void *)handler
{
  if (handler)
  {
    if ([-[AVCaptureOutput liveConnections](self "liveConnections")])
    {
      v9 = [(NSArray *)settings count];
      if (v9 > [(AVCaptureStillImageOutput *)self maxBracketedCaptureStillImageCount])
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __118__AVCaptureStillImageOutput_captureStillImageBracketAsynchronouslyFromConnection_withSettingsArray_completionHandler___block_invoke;
        v22[3] = &unk_1E786F7E8;
        v22[4] = settings;
        v22[5] = handler;
        [(AVCaptureOutput *)self performBlockOnSessionNotifyingThread:v22];
        return;
      }

      v21 = 0;
      if ([(AVCaptureStillImageOutput *)self _bracketedSettingsAreValid:settings fromConnection:connection exceptionReason:&v21])
      {
        internal = self->_internal;
        objc_sync_enter(internal);
        v14 = [(AVCaptureStillImageOutput *)self _figCaptureStillImageSettingsForBracketedCaptureSettingsArray:settings fromConnection:connection];
        [(AVCaptureStillImageOutput *)self _preparedForBracketedCaptureWithSettings:v14];
        objc_sync_exit(internal);
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 0;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __118__AVCaptureStillImageOutput_captureStillImageBracketAsynchronouslyFromConnection_withSettingsArray_completionHandler___block_invoke_2;
        v16[3] = &unk_1E786F810;
        v16[7] = handler;
        v16[8] = &v17;
        v16[4] = self;
        v16[5] = v14;
        v16[6] = settings;
        [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v16];
        if ((v18[3] & 1) == 0)
        {
          v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
          objc_exception_throw(v15);
        }

        _Block_object_dispose(&v17, 8);
        return;
      }

      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
    }

    else
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
  }

  v12 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
}

uint64_t __118__AVCaptureStillImageOutput_captureStillImageBracketAsynchronouslyFromConnection_withSettingsArray_completionHandler___block_invoke(uint64_t a1)
{
  AVLocalizedError();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))();
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __118__AVCaptureStillImageOutput_captureStillImageBracketAsynchronouslyFromConnection_withSettingsArray_completionHandler___block_invoke_2(uint64_t result, uint64_t a2)
{
  *(*(*(result + 64) + 8) + 24) = a2 != 0;
  if (*(*(*(result + 64) + 8) + 24) == 1)
  {
    v3 = result;
    v4 = *(*(result + 32) + 16);
    objc_sync_enter(v4);
    v5 = 0;
    v6 = *(*(*(v3 + 32) + 16) + 72);
    while ([*(v3 + 40) bracketImageCount] > v5)
    {
      v7 = +[AVCaptureStillImageRequest request];
      [v7 setSettingsID:{objc_msgSend(*(v3 + 40), "settingsID")}];
      [v7 setBracketedCaptureCompletionBlock:*(v3 + 56)];
      [v7 setBracketedSettings:{objc_msgSend(*(v3 + 48), "objectAtIndexedSubscript:", v5)}];
      [v7 setShutterSoundID:v6];
      ++v5;
      [*(*(*(v3 + 32) + 16) + 16) addObject:v7];
      v6 = 0;
    }

    objc_sync_exit(v4);
    v8 = [*(v3 + 32) sinkID];
    v9 = *(v3 + 40);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v10)
    {

      return v10(a2, v8, v9);
    }

    else
    {
      v11 = *MEMORY[0x1E698FC40];
      v12 = &unk_1F1CE9FF8;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

- (BOOL)_bracketedSettingsAreValid:(id)valid fromConnection:(id)connection exceptionReason:(id *)reason
{
  v9 = [valid count];
  if (v9 > [(AVCaptureStillImageOutput *)self maxBracketedCaptureStillImageCount])
  {
    LOBYTE(v10) = 0;
    v11 = @"Bracketed capture settings array exceeds -maxBracketedCaptureStillImageCount";
    goto LABEL_62;
  }

  v10 = [valid count];
  if (!v10)
  {
    v11 = @"Bracketed capture settings array contains 0 elements";
    goto LABEL_62;
  }

  [valid objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v10) = 0;
    v11 = @"Bracketed capture settings array may only contain AVCaptureBracketedStillImageSettings objects";
    goto LABEL_62;
  }

  v12 = objc_opt_class();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = [valid countByEnumeratingWithState:&v58 objects:v57 count:16];
  if (!v13)
  {
LABEL_13:
    sourceDevice = [connection sourceDevice];
    activeFormat = [sourceDevice activeFormat];
    if (v12 != objc_opt_class())
    {
      if (v12 == objc_opt_class())
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = [valid countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v47;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v47 != v33)
              {
                objc_enumerationMutation(valid);
              }

              v35 = *(*(&v46 + 1) + 8 * i);
              [v35 exposureTargetBias];
              if (v36 != 3.4028e38)
              {
                [v35 exposureTargetBias];
                v38 = v37;
                [sourceDevice minExposureTargetBias];
                if (v38 < v39 || ([v35 exposureTargetBias], v41 = v40, objc_msgSend(sourceDevice, "maxExposureTargetBias"), v41 > v42))
                {
                  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ contains an out of range exposure target bias. Use AVCaptureDevice -minExposureTargetBias / -maxExposureTargetBias", v35];
                  goto LABEL_60;
                }
              }
            }

            v32 = [valid countByEnumeratingWithState:&v46 objects:v45 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }
      }

      goto LABEL_15;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v19 = [valid countByEnumeratingWithState:&v53 objects:v52 count:16];
    if (!v19)
    {
      goto LABEL_44;
    }

    v20 = v19;
    v21 = *v54;
LABEL_20:
    v22 = 0;
    while (1)
    {
      if (*v54 != v21)
      {
        objc_enumerationMutation(valid);
      }

      v23 = *(*(&v53 + 1) + 8 * v22);
      [v23 ISO];
      if (v24 != 3.4028e38)
      {
        [v23 ISO];
        v26 = v25;
        [activeFormat minISO];
        if (v26 < v27 || ([v23 ISO], v29 = v28, objc_msgSend(activeFormat, "maxISO"), v29 > v30))
        {
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ contains an out of range ISO value. Use AVCaptureDeviceFormat -minISO / -maxISO", v23];
LABEL_60:
          v11 = v43;
          goto LABEL_61;
        }
      }

      if (v23)
      {
        [v23 exposureDuration];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      memset(&time2, 0, sizeof(time2));
      if (CMTimeCompare(&time1, &time2))
      {
        break;
      }

LABEL_42:
      if (v20 == ++v22)
      {
        v20 = [valid countByEnumeratingWithState:&v53 objects:v52 count:16];
        if (v20)
        {
          goto LABEL_20;
        }

LABEL_44:
        if (([sourceDevice isExposureModeSupported:3] & 1) == 0)
        {
          LOBYTE(v10) = 0;
          v11 = @"Source device does not support manual exposure bracketed capture. Use AVCaptureDevice -isExposureModeSupported: with AVCaptureExposureModeCustom";
          goto LABEL_62;
        }

LABEL_15:
        v11 = 0;
        LOBYTE(v10) = 1;
        goto LABEL_62;
      }
    }

    if (v23)
    {
      [v23 exposureDuration];
      if (activeFormat)
      {
LABEL_32:
        [activeFormat minExposureDuration];
        goto LABEL_35;
      }
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      if (activeFormat)
      {
        goto LABEL_32;
      }
    }

    memset(&time2, 0, sizeof(time2));
LABEL_35:
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      goto LABEL_59;
    }

    if (v23)
    {
      [v23 exposureDuration];
      if (activeFormat)
      {
LABEL_38:
        [activeFormat maxExposureDuration];
        goto LABEL_41;
      }
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      if (activeFormat)
      {
        goto LABEL_38;
      }
    }

    memset(&time2, 0, sizeof(time2));
LABEL_41:
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
LABEL_59:
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ contains an out of range exposure duration. Use AVCaptureDeviceFormat -minExposureDuration / -maxExposureDuration", v23];
      goto LABEL_60;
    }

    goto LABEL_42;
  }

  v14 = v13;
  v15 = *v59;
  v11 = @"All elements in the bracketed capture settings array must be of the same class";
LABEL_7:
  v16 = 0;
  while (1)
  {
    if (*v59 != v15)
    {
      objc_enumerationMutation(valid);
    }

    if (objc_opt_class() != v12)
    {
      break;
    }

    if (v14 == ++v16)
    {
      v14 = [valid countByEnumeratingWithState:&v58 objects:v57 count:16];
      if (!v14)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

LABEL_61:
  LOBYTE(v10) = 0;
LABEL_62:
  if (reason)
  {
    *reason = v11;
  }

  return v10;
}

- (id)_figCaptureStillImageSettingsForBracketedCaptureSettingsArray:(id)array fromConnection:(id)connection
{
  v6 = [(AVCaptureStillImageOutput *)self _figCaptureStillImageSettingsForConnection:connection];
  [v6 setFlashMode:0];
  [v6 setHDRMode:0];
  v7 = 1;
  [v6 setQualityPrioritization:1];
  [v6 setLensStabilizationDuringBracketEnabled:{-[AVCaptureStillImageOutput isLensStabilizationDuringBracketedCaptureEnabled](self, "isLensStabilizationDuringBracketedCaptureEnabled")}];
  [array firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v24 = 0;
  }

  else
  {
    [array firstObject];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    if (v24)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  [v6 setBracketType:v7 imageCount:{objc_msgSend(array, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [array countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v29;
    do
    {
      v13 = 0;
      v14 = 24 * v11;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(array);
        }

        v15 = *(*(&v28 + 1) + 8 * v13);
        if (isKindOfClass)
        {
          arrayCopy = array;
          exposureDurations = [v6 exposureDurations];
          if (v15)
          {
            [v15 exposureDuration];
          }

          else
          {
            v25 = 0uLL;
            v26 = 0;
          }

          v21 = exposureDurations + v14;
          *(v21 + 16) = v26;
          *v21 = v25;
          [v15 ISO];
          v19 = v22;
          iSOs = [v6 ISOs];
          array = arrayCopy;
        }

        else
        {
          if ((v24 & 1) == 0)
          {
            goto LABEL_19;
          }

          [*(*(&v28 + 1) + 8 * v13) exposureTargetBias];
          v19 = v18;
          iSOs = [v6 exposureTargetBiases];
        }

        *(iSOs + 4 * v11) = v19;
LABEL_19:
        ++v11;
        ++v13;
        v14 += 24;
      }

      while (v10 != v13);
      v10 = [array countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)_updateMaxBracketedStillImageCaptureCountForSourceFormat:(id)format
{
  if (format)
  {
    sourceDeviceInput = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDeviceInput];
    device = [sourceDeviceInput device];
    if ([device isCenterStageActive])
    {
      isCenterStageAllowed = [sourceDeviceInput isCenterStageAllowed];
    }

    else
    {
      isCenterStageAllowed = 0;
    }

    if ([device isBackgroundBlurActive])
    {
      isBackgroundBlurAllowed = [sourceDeviceInput isBackgroundBlurAllowed];
    }

    else
    {
      isBackgroundBlurAllowed = 0;
    }

    if ([device isStudioLightingActive])
    {
      isStudioLightingAllowed = [sourceDeviceInput isStudioLightingAllowed];
    }

    else
    {
      isStudioLightingAllowed = 0;
    }

    isBackgroundReplacementActive = [device isBackgroundReplacementActive];
    if (isBackgroundReplacementActive)
    {
      LOBYTE(isBackgroundReplacementActive) = [sourceDeviceInput isBackgroundReplacementAllowed];
    }

    if (((isCenterStageAllowed | isBackgroundBlurAllowed) | (isStudioLightingAllowed | isBackgroundReplacementActive)))
    {
      v7 = 0;
    }

    else
    {
      v7 = 8;
    }
  }

  else
  {
    v7 = 0;
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  if (v7 != self->_internal->maxBracketedCaptureCount)
  {
    [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"maxBracketedCaptureStillImageCount"];
    self->_internal->maxBracketedCaptureCount = v7;
    [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"maxBracketedCaptureStillImageCount"];
  }

  objc_sync_exit(internal);
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:sioNotificationHandler name:*MEMORY[0x1E698FE70] object:session flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:sioNotificationHandler name:*MEMORY[0x1E698FE60] object:session flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:sioNotificationHandler name:*MEMORY[0x1E698FE68] object:session flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:sioNotificationHandler name:*MEMORY[0x1E698FE58] object:session flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureStillImageOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:session];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 removeListenerWithWeakReference:weakReference callback:sioNotificationHandler name:*MEMORY[0x1E698FE70] object:session];
  [v5 removeListenerWithWeakReference:weakReference callback:sioNotificationHandler name:*MEMORY[0x1E698FE60] object:session];
  [v5 removeListenerWithWeakReference:weakReference callback:sioNotificationHandler name:*MEMORY[0x1E698FE68] object:session];
  [v5 removeListenerWithWeakReference:weakReference callback:sioNotificationHandler name:*MEMORY[0x1E698FE58] object:session];
  v7.receiver = self;
  v7.super_class = AVCaptureStillImageOutput;
  [(AVCaptureOutput *)&v7 detachSafelyFromFigCaptureSession:session];
}

- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v15 = *MEMORY[0x1E698FC40];
  v16 = &unk_1F1CE9FE0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  stillImageRequests = self->_internal->stillImageRequests;
  v7 = [(NSMutableArray *)stillImageRequests countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(stillImageRequests);
        }

        [(AVCaptureStillImageOutput *)self handleNotificationForRequest:*(*(&v11 + 1) + 8 * i) withPayload:v5 imageIsEV0:0];
      }

      v7 = [(NSMutableArray *)stillImageRequests countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_internal->stillImageRequests removeAllObjects];
  objc_sync_exit(internal);
}

- (void)_setStillImageStabilizationAutomaticallyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:*MEMORY[0x1E6987608]] sourceDevice];

  [sourceDevice _setStillImageStabilizationAutomaticallyEnabled:enabledCopy];
}

- (void)_updateLensStabilizationDuringBracketedCaptureSupportedForDevice:(id)device
{
  if ([device isLensStabilizationSupported])
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    v5 = self->_internal->maxBracketedCaptureCount != 0;
    objc_sync_exit(internal);
  }

  else
  {
    v5 = 0;
  }

  if (self->_internal->lensStabilizationDuringBracketedCaptureSupported != v5)
  {
    [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"lensStabilizationDuringBracketedCaptureSupported"];
    self->_internal->lensStabilizationDuringBracketedCaptureSupported = v5;
    [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"lensStabilizationDuringBracketedCaptureSupported"];
    if (!v5 && self->_internal->lensStabilizationDuringBracketedCaptureEnabled)
    {
      [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"lensStabilizationDuringBracketedCaptureEnabled"];
      self->_internal->lensStabilizationDuringBracketedCaptureEnabled = 0;

      [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"lensStabilizationDuringBracketedCaptureEnabled"];
    }
  }
}

- (void)_updateCameraSensorOrientationCompensationSupportedForDevice:(id)device
{
  figCaptureSourceAttributes = [device figCaptureSourceAttributes];
  v5 = [objc_msgSend(figCaptureSourceAttributes objectForKeyedSubscript:{*MEMORY[0x1E69900E8]), "intValue"}];
  v6 = v5 != 0;
  internal = self->_internal;
  cameraSensorOrientationCompensationSupported = internal->cameraSensorOrientationCompensationSupported;
  cameraSensorOrientationCompensationEnabled = internal->cameraSensorOrientationCompensationEnabled;
  cameraSensorOrientationCompensationAutomaticallyEnabled = internal->cameraSensorOrientationCompensationAutomaticallyEnabled;
  if (v5)
  {
    v11 = cameraSensorOrientationCompensationEnabled;
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = cameraSensorOrientationCompensationEnabled;
  }

  v13 = cameraSensorOrientationCompensationEnabled != v6;
  if (cameraSensorOrientationCompensationAutomaticallyEnabled)
  {
    v14 = v5 != 0;
  }

  else
  {
    v14 = v11;
  }

  if (cameraSensorOrientationCompensationAutomaticallyEnabled)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  if (cameraSensorOrientationCompensationSupported != v6)
  {
    [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"cameraSensorOrientationCompensationSupported"];
    self->_internal->cameraSensorOrientationCompensationSupported = v6;
  }

  if (v15)
  {
    [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"cameraSensorOrientationCompensationEnabled"];
    self->_internal->cameraSensorOrientationCompensationEnabled = v14;
    [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"cameraSensorOrientationCompensationEnabled"];
  }

  if (cameraSensorOrientationCompensationSupported != v6)
  {

    [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"cameraSensorOrientationCompensationSupported"];
  }
}

- (CGSize)outputSizeForSourceFormat:(id)format
{
  if ([(AVCaptureStillImageOutput *)self isHighResolutionStillImageOutputEnabled])
  {
    highResolutionStillImageDimensions = [format highResolutionStillImageDimensions];
    v6 = highResolutionStillImageDimensions;
    v7 = SHIDWORD(highResolutionStillImageDimensions);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVCaptureStillImageOutput;
    [(AVCaptureOutput *)&v8 outputSizeForSourceFormat:format];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)handleNotificationForRequest:(id)request withPayload:(id)payload imageIsEV0:(BOOL *)v0
{
  v8 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FC40]), "intValue"}];
  [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FC38]), "intValue"}];
  if (v8)
  {
    v9 = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  else
  {
    v9 = 0;
  }

  if ([request sbufCompletionBlock])
  {
    v10 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FCD0]];
    if (v10)
    {
      v11 = [objc_msgSend(CMGetAttachment(v10 *MEMORY[0x1E696D9B0]];
      if (v0)
      {
        *v0 = v11 == 4;
      }
    }

    else if (!v9)
    {
      AVLocalizedError();
    }

    v20 = *([request sbufCompletionBlock] + 16);

    v20();
  }

  else if ([request iosurfaceCompletionBlock])
  {
    v12 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FCF8]];
    v13 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FD00]), "unsignedIntegerValue"}];
    [payload objectForKeyedSubscript:*MEMORY[0x1E698FCB0]];
    [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCB8]), "unsignedIntegerValue"}];
    v14 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FC70]];
    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
      if (v15)
      {
        v16 = [objc_msgSend(v15 objectForKeyedSubscript:{*MEMORY[0x1E696D988]), "intValue"}];
        if (v0)
        {
          *v0 = v16 == 4;
        }
      }
    }

    if (v13)
    {
      v17 = v12 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17 && v9 == 0)
    {
      AVLocalizedError();
    }

    v19 = *([request iosurfaceCompletionBlock] + 16);

    v19();
  }

  else if ([request bracketedCaptureCompletionBlock])
  {
    v21 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FCD0]];
    if (!(v21 | v9))
    {
      v9 = AVLocalizedError();
    }

    bracketedCaptureCompletionBlock = [request bracketedCaptureCompletionBlock];
    bracketedSettings = [request bracketedSettings];
    v24 = *(bracketedCaptureCompletionBlock + 16);

    v24(bracketedCaptureCompletionBlock, v21, bracketedSettings, v9);
  }
}

- (void)handleNotificationForPrepareRequest:(id)request withPayload:(id)payload
{
  v6 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FC40]), "intValue"}];
  [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FC38]), "intValue"}];
  if (v6)
  {
    AVLocalizedErrorWithUnderlyingOSStatus();
  }

  if ([request completionBlock])
  {
    v7 = *([request completionBlock] + 16);

    v7();
  }
}

- (void)handleNotification:(id)notification payload:(id)payload
{
  if (![objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    return;
  }

  if (![notification isEqualToString:*MEMORY[0x1E698FE70]])
  {
    if ([notification isEqualToString:*MEMORY[0x1E698FE60]])
    {
      [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"capturingStillImage"];
      self->_internal->isCapturingPhoto = 0;
      if (self->_internal->SISActive)
      {
        [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"stillImageStabilizationActive"];
        self->_internal->SISActive = 0;
        [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"stillImageStabilizationActive"];
      }

      [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"capturingStillImage"];
      return;
    }

    if ([notification isEqualToString:*MEMORY[0x1E698FE68]])
    {
      v17 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCE0]), "longLongValue"}];
      internal = self->_internal;
      objc_sync_enter(internal);
      if ([(NSMutableArray *)self->_internal->stillImageRequests count])
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        stillImageRequests = self->_internal->stillImageRequests;
        v20 = [(NSMutableArray *)stillImageRequests countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v20)
        {
          v21 = 0;
          v22 = *v48;
          obj = internal;
LABEL_28:
          v23 = 0;
          v36 = v21 + v20;
          while (1)
          {
            if (*v48 != v22)
            {
              objc_enumerationMutation(stillImageRequests);
            }

            v24 = *(*(&v47 + 1) + 8 * v23);
            if ([v24 settingsID] == v17)
            {
              break;
            }

            ++v21;
            if (v20 == ++v23)
            {
              v20 = [(NSMutableArray *)stillImageRequests countByEnumeratingWithState:&v47 objects:v46 count:16];
              v21 = v36;
              internal = obj;
              if (v20)
              {
                goto LABEL_28;
              }

              goto LABEL_34;
            }
          }

          v34 = v24;
          [(NSMutableArray *)self->_internal->stillImageRequests removeObjectAtIndex:v21];
          objc_sync_exit(obj);
          if (!v34)
          {
            return;
          }

          v45 = 0;
          [(AVCaptureStillImageOutput *)self handleNotificationForRequest:v34 withPayload:payload imageIsEV0:&v45];
          if (v45 == 1)
          {
            v35 = self->_internal;
            objc_sync_enter(v35);
            [(NSMutableArray *)self->_internal->stillImageRequests insertObject:v34 atIndex:0];
            objc_sync_exit(v35);
          }

LABEL_51:

          return;
        }
      }

LABEL_34:
      v25 = internal;
    }

    else
    {
      if (![notification isEqualToString:*MEMORY[0x1E698FE58]])
      {
        return;
      }

      v26 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCE0]), "longLongValue"}];
      obja = self->_internal;
      objc_sync_enter(obja);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      prepareRequests = self->_internal->prepareRequests;
      v28 = [(NSMutableArray *)prepareRequests countByEnumeratingWithState:&v41 objects:v40 count:16];
      v37 = 16;
      if (v28)
      {
        v29 = 0;
        v30 = *v42;
LABEL_38:
        v31 = 0;
        v32 = v29;
        v29 += v28;
        while (1)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(prepareRequests);
          }

          v33 = *(*(&v41 + 1) + 8 * v31);
          if ([objc_msgSend(v33 settings] == v26)
          {
            break;
          }

          ++v32;
          if (v28 == ++v31)
          {
            v28 = [(NSMutableArray *)prepareRequests countByEnumeratingWithState:&v41 objects:v40 count:16];
            if (v28)
            {
              goto LABEL_38;
            }

            goto LABEL_44;
          }
        }

        v34 = v33;
        [(*(&self->super.super.isa + v37))[12] removeObjectAtIndex:v32];
        (*(&self->super.super.isa + v37))[19] = [objc_msgSend(v34 "settings")];
        (*(&self->super.super.isa + v37))[20] = [objc_msgSend(v34 "settings")];
        (*(&self->super.super.isa + v37))[21] = [objc_msgSend(v34 "settings")];
        (*(&self->super.super.isa + v37))[22] = [objc_msgSend(v34 "settings")];
        objc_sync_exit(obja);
        if (!v34)
        {
          return;
        }

        [(AVCaptureStillImageOutput *)self handleNotificationForPrepareRequest:v34 withPayload:payload];
        goto LABEL_51;
      }

LABEL_44:
      v25 = obja;
    }

    objc_sync_exit(v25);
    return;
  }

  v7 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCE0]), "longLongValue"}];
  v8 = self->_internal;
  objc_sync_enter(v8);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = self->_internal->stillImageRequests;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v52 objects:v51 count:16];
  if (v10)
  {
    v11 = *v53;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        if ([v13 settingsID] == v7)
        {
          shutterSoundID = [v13 shutterSoundID];
          objc_sync_exit(v8);
          if (shutterSoundID)
          {
            AVCaptureStillImageOutputPlayShutterSound(self, shutterSoundID, 0);
          }

          goto LABEL_20;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v52 objects:v51 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  objc_sync_exit(v8);
LABEL_20:
  [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"capturingStillImage"];
  v15 = [payload objectForKeyedSubscript:*MEMORY[0x1E6990018]];
  if (v15)
  {
    v16 = v15;
    [(AVCaptureStillImageOutput *)self willChangeValueForKey:@"stillImageStabilizationActive"];
    self->_internal->SISActive = [v16 BOOLValue];
    [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"stillImageStabilizationActive"];
  }

  self->_internal->isCapturingPhoto = 1;
  [(AVCaptureStillImageOutput *)self didChangeValueForKey:@"capturingStillImage"];
}

+ (unint64_t)maxStillImageJPEGDataSize
{
  if (maxStillImageJPEGDataSize_onceToken != -1)
  {
    +[AVCaptureStillImageOutput maxStillImageJPEGDataSize];
  }

  return maxStillImageJPEGDataSize_maxDataSize;
}

CMVideoDimensions __54__AVCaptureStillImageOutput_maxStillImageJPEGDataSize__block_invoke()
{
  if ((AVCaptureIsRunningInMediaserverd() & 1) == 0)
  {
    result = FigCaptureSourceRemoteMaxStillImageJPEGDataSize();
LABEL_9:
    maxStillImageJPEGDataSize_maxDataSize = result;
    return result;
  }

  v0 = [(NSArray *)[[AVCaptureDevice defaultDeviceWithMediaType:?]] lastObject];
  if (v0)
  {
    result = CMVideoFormatDescriptionGetDimensions([v0 formatDescription]);
    v2 = HIDWORD(*&result);
  }

  else
  {
    LODWORD(v2) = 2448;
    result = 3264;
  }

  if (result.width >= 1 && v2 >= 1)
  {
    result = ((2 * result.width * v2) / 3uLL);
    goto LABEL_9;
  }

  return result;
}

+ (NSData)jpegStillImageNSDataRepresentation:(CMSampleBufferRef)jpegSampleBuffer
{
  if (jpegSampleBuffer)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(jpegSampleBuffer);
    if (CMFormatDescriptionGetMediaSubType(FormatDescription) == 1785750887)
    {
      DataBuffer = CMSampleBufferGetDataBuffer(jpegSampleBuffer);
      if (DataBuffer)
      {
        blockBufferOut = 0;
        v7 = *MEMORY[0x1E695E480];
        if (CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], DataBuffer, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut) || (totalLengthOut = 0, dataPointerOut = 0, CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, &totalLengthOut, &dataPointerOut)))
        {
          EXIFJPEGData = 0;
        }

        else
        {
          v8 = CFDataCreateWithBytesNoCopy(v7, dataPointerOut, totalLengthOut, *MEMORY[0x1E695E498]);
          v9 = [self _copyAttachmentsAndPropagateFaceRegionsToExifAuxDictionaryForSampleBuffer:jpegSampleBuffer];
          EXIFJPEGData = CGImageCreateEXIFJPEGData();
          v11 = EXIFJPEGData;
          if (v9)
          {
            CFRelease(v9);
          }

          if (v8)
          {
            CFRelease(v8);
          }
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        return EXIFJPEGData;
      }

      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D940];
    }

    else
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
  }

  v14 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v14);
  }

  NSLog(&cfstr_SuppressingExc.isa, v14);
  return 0;
}

+ (id)jpegStillImageNSDataRepresentationForSurface:(__IOSurface *)surface size:(unint64_t)size metadata:(id)metadata
{
  if (surface && size)
  {
    CFRetain(surface);
    IOSurfaceLock(surface, 1u, 0);
    BaseAddress = IOSurfaceGetBaseAddress(surface);
    v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], BaseAddress, size, *MEMORY[0x1E695E498]);
    EXIFJPEGData = CGImageCreateEXIFJPEGData();
    v10 = EXIFJPEGData;
    if (v8)
    {
      CFRelease(v8);
    }

    IOSurfaceUnlock(surface, 1u, 0);
    CFRelease(surface);
  }

  else
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v11);
    }

    NSLog(&cfstr_SuppressingExc.isa, v11);
    return 0;
  }

  return EXIFJPEGData;
}

+ (__CFDictionary)_copyAttachmentsAndPropagateFaceRegionsToExifAuxDictionaryForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v3 = *MEMORY[0x1E695E480];
  v4 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], buffer, 1u);
  v5 = v4;
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"FaceRegions");
    if (Value)
    {
      v7 = Value;
      v8 = *MEMORY[0x1E696D8B0];
      if (!CFDictionaryGetValue(v5, *MEMORY[0x1E696D8B0]))
      {
        Mutable = CFDictionaryCreateMutable(v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v10 = Mutable;
          CFDictionarySetValue(Mutable, v8, v7);
          Count = CFDictionaryGetCount(v5);
          MutableCopy = CFDictionaryCreateMutableCopy(v3, Count, v5);
          CFDictionarySetValue(MutableCopy, v8, v10);
          CFRelease(v10);
          CFRelease(v5);
          return MutableCopy;
        }
      }
    }
  }

  return v5;
}

@end