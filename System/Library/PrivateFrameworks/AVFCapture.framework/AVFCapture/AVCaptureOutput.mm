@interface AVCaptureOutput
+ (id)allOutputSubclasses;
+ (id)availableVideoCodecTypesForSourceDevice:(id)device sourceFormat:(id)format outputDimensions:(id)Dimensions fileType:(id)type videoCodecTypesAllowList:(id)list;
+ (id)supportedProResCodecTypes;
+ (id)supportedProResRawCodecTypes;
+ (int64_t)dataDroppedReasonFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
+ (void)initialize;
- (AVCaptureConnection)connectionWithMediaType:(AVMediaType)mediaType;
- (AVMetadataObject)transformedMetadataObjectForMetadataObject:(AVMetadataObject *)metadataObject connection:(AVCaptureConnection *)connection;
- (BOOL)isDeferredStartEnabled;
- (CGRect)metadataOutputRectOfInterestForRect:(CGRect)rectInOutputCoordinates;
- (CGRect)rectForMetadataOutputRectOfInterest:(CGRect)rectInMetadataOutputCoordinates;
- (CGSize)outputSizeForSourceFormat:(id)format;
- (NSArray)connections;
- (id)_inputForConnection:(id)connection;
- (id)_recommendedAudioOutputSettingsForConnection:(id)connection sourceSettings:(id)settings fileType:(id)type spatialAudioChannelLayoutTag:(unsigned int)tag;
- (id)_recommendedVideoOutputSettingsForConnection:(id)connection sourceSettings:(id)settings videoCodec:(id)codec isIris:(BOOL)iris outputFileURL:(id)l;
- (id)addConnection:(id)connection error:(id *)error;
- (id)firstEnabledConnectionForMediaType:(id)type;
- (id)initSubclass;
- (id)liveConnections;
- (id)recommendedCinematicAudioOutputSettingsForConnection:(id)connection fileType:(id)type isProResCapture:(BOOL)capture;
- (id)recommendedOutputSettingsForConnection:(id)connection sourceSettings:(id)settings videoCodecType:(id)type fileType:(id)fileType isIris:(BOOL)iris outputFileURL:(id)l spatialAudioChannelLayoutTag:(unsigned int)tag;
- (id)sinkID;
- (unsigned)requiredOutputFormatForConnection:(id)connection;
- (void)attachToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)bumpChangeSeed;
- (void)dealloc;
- (void)detachFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)getTransform:(CGAffineTransform *)transform mirroredOut:(BOOL *)out rollAdjustmentOut:(double *)adjustmentOut forConnection:(id)connection;
- (void)handleCenterStageActiveChangedForDevice:(id)device;
- (void)handleChangedActiveFormat:(id)format forDevice:(id)device;
- (void)handleChangedDynamicAspectRatio:(id)ratio forFormat:(id)format;
- (void)handleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)performBlockOnSessionNotifyingThread:(id)thread;
- (void)performFigCaptureSessionOperationSafelyUsingBlock:(id)block;
- (void)removeConnection:(id)connection;
- (void)setDeferredStartEnabled:(BOOL)enabled;
- (void)setSession:(id)session;
- (void)updateMetadataTransformForSourceFormat:(id)format aspectRatio:(id)ratio;
@end

@implementation AVCaptureOutput

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (id)initSubclass
{
  v8.receiver = self;
  v8.super_class = AVCaptureOutput;
  v2 = [(AVCaptureOutput *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVCaptureOutputInternal);
    v2->_outputInternal = v3;
    if (!v3)
    {

      v2 = 0;
    }

    if (AVCaptureSessionIsLaunchPrewarmingEnabled())
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = [v4 stringWithFormat:@"<%@>", NSStringFromClass(v5)];
    }

    else
    {
      v6 = AVIdentifierForObject(v2);
    }

    [(AVCaptureOutput *)v2 setSinkID:v6];
  }

  return v2;
}

- (void)bumpChangeSeed
{
  [(AVCaptureOutput *)self willChangeValueForKey:@"changeSeed"];
  ++self->_outputInternal->changeSeed;

  [(AVCaptureOutput *)self didChangeValueForKey:@"changeSeed"];
}

- (NSArray)connections
{
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_outputInternal->connections];
  objc_sync_exit(outputInternal);
  return v4;
}

+ (id)allOutputSubclasses
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:11];
}

- (id)sinkID
{
  v2 = self->_outputInternal->sinkID;

  return v2;
}

- (BOOL)isDeferredStartEnabled
{
  selfCopy = self;
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  LOBYTE(selfCopy) = selfCopy->_outputInternal->deferredStartEnabled;
  objc_sync_exit(outputInternal);
  return selfCopy;
}

+ (id)supportedProResCodecTypes
{
  v2 = *MEMORY[0x1E6987CC8];
  v5[0] = *MEMORY[0x1E6987CD0];
  v5[1] = v2;
  v3 = *MEMORY[0x1E6987CC0];
  v5[2] = *MEMORY[0x1E6987CB8];
  v5[3] = v3;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
}

+ (id)supportedProResRawCodecTypes
{
  v2 = *MEMORY[0x1E6987CE0];
  v4[0] = *MEMORY[0x1E6987CD8];
  v4[1] = v2;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setSession:(id)session
{
  outputInternal = self->_outputInternal;
  if (outputInternal->session != session)
  {
    v6 = [session isEqual:?];
    outputInternal = self->_outputInternal;
    if ((v6 & 1) == 0)
    {
      isRunning = [(AVCaptureSession *)outputInternal->session isRunning];
      outputInternal = self->_outputInternal;
      if (!isRunning)
      {
        isBeingConfigured = [(AVCaptureSession *)outputInternal->session isBeingConfigured];
        outputInternal = self->_outputInternal;
        if (!isBeingConfigured)
        {
          if (outputInternal->figCaptureSession)
          {
            [(AVCaptureOutput *)self detachFromFigCaptureSession:?];
            outputInternal = self->_outputInternal;
          }
        }
      }
    }
  }

  outputInternal->session = session;
}

- (void)performFigCaptureSessionOperationSafelyUsingBlock:(id)block
{
  figCaptureSessionSyncQueue = self->_outputInternal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AVCaptureOutput_performFigCaptureSessionOperationSafelyUsingBlock___block_invoke;
  v4[3] = &unk_1E786F078;
  v4[4] = self;
  v4[5] = block;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

- (void)performBlockOnSessionNotifyingThread:(id)thread
{
  if ([-[AVCaptureOutput session](self "session")])
  {
    Main = CFRunLoopGetMain();
    FigRunLoopMode = AVCaptureGetFigRunLoopMode();
    v6 = *MEMORY[0x1E695E8D0];
    v9[0] = FigRunLoopMode;
    v9[1] = v6;
    CFRunLoopPerformBlock(Main, [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2], thread);
    v7 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v7);
  }

  else
  {
    v8 = *(thread + 2);

    v8(thread);
  }
}

- (void)attachToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  figCaptureSessionSyncQueue = self->_outputInternal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__AVCaptureOutput_attachToFigCaptureSession___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = session;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

const void *__45__AVCaptureOutput_attachToFigCaptureSession___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 16);
  if (result != v4)
  {
    if (v4)
    {
      __45__AVCaptureOutput_attachToFigCaptureSession___block_invoke_cold_1();
    }

    *(v3 + 16) = result;
    if (result)
    {
      CFRetain(result);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 attachSafelyToFigCaptureSession:v6];
  }

  return result;
}

- (void)detachFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  figCaptureSessionSyncQueue = self->_outputInternal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AVCaptureOutput_detachFromFigCaptureSession___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = session;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

const void *__47__AVCaptureOutput_detachFromFigCaptureSession___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 16);
  if (result)
  {
    if (*(a1 + 40) != result)
    {
      __47__AVCaptureOutput_detachFromFigCaptureSession___block_invoke_cold_1();
    }

    CFRelease(result);
    *(*(*(a1 + 32) + 8) + 16) = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 detachSafelyFromFigCaptureSession:v4];
  }

  return result;
}

- (void)handleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  figCaptureSessionSyncQueue = self->_outputInternal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVCaptureOutput_handleServerConnectionDeathForFigCaptureSession___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = session;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

- (unsigned)requiredOutputFormatForConnection:(id)connection
{
  if (![(AVCaptureOutput *)self hasRequiredOutputFormatForConnection:connection])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"requiredOutputFormatForConnection: failed since this output has no required output format for that connection." userInfo:0]);
  }

  return 0;
}

- (AVCaptureConnection)connectionWithMediaType:(AVMediaType)mediaType
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  connections = [(AVCaptureOutput *)self connections];
  result = [(NSArray *)connections countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(connections);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        inputPorts = [v9 inputPorts];
        v11 = [inputPorts countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(inputPorts);
              }

              if ([objc_msgSend(*(*(&v16 + 1) + 8 * v14) "mediaType")])
              {
                return v9;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [inputPorts countByEnumeratingWithState:&v16 objects:v15 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSArray *)connections countByEnumeratingWithState:&v21 objects:v20 count:16];
      result = 0;
    }

    while (v6);
  }

  return result;
}

- (id)_inputForConnection:(id)connection
{
  memset(v5, 0, sizeof(v5));
  result = [objc_msgSend(connection "inputPorts")];
  if (result)
  {
    return [**(&v5[0] + 1) input];
  }

  return result;
}

- (AVMetadataObject)transformedMetadataObjectForMetadataObject:(AVMetadataObject *)metadataObject connection:(AVCaptureConnection *)connection
{
  if (![(NSArray *)[(AVCaptureOutput *)self connections] containsObject:connection])
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v15);
    }

    NSLog(&cfstr_SuppressingExc.isa, v15);
    return 0;
  }

  input = [(AVMetadataObject *)metadataObject input];
  if (input != [(AVCaptureOutput *)self _inputForConnection:connection])
  {
    return 0;
  }

  originalMetadataObject = [(AVMetadataObject *)metadataObject originalMetadataObject];
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  v10 = self->_outputInternal;
  v11 = *&v10->metadataTransform.c;
  v19 = *&v10->metadataTransform.a;
  v20 = v11;
  v21 = *&v10->metadataTransform.tx;
  isVideoMirrored = [(AVCaptureConnection *)connection isVideoMirrored];
  v13 = self->_outputInternal;
  v14 = isVideoMirrored && v13->physicallyMirrorsVideo;
  rollAdjustment = v13->rollAdjustment;
  objc_sync_exit(outputInternal);
  v18[0] = v19;
  v18[1] = v20;
  v18[2] = v21;
  return [AVMetadataObject derivedMetadataObjectFromMetadataObject:originalMetadataObject withTransform:v18 isVideoMirrored:v14 rollAdjustment:rollAdjustment];
}

- (CGRect)metadataOutputRectOfInterestForRect:(CGRect)rectInOutputCoordinates
{
  height = rectInOutputCoordinates.size.height;
  width = rectInOutputCoordinates.size.width;
  y = rectInOutputCoordinates.origin.y;
  x = rectInOutputCoordinates.origin.x;
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  v9 = self->_outputInternal;
  v10 = *&v9->metadataTransform.c;
  *&v12.a = *&v9->metadataTransform.a;
  *&v12.c = v10;
  *&v12.tx = *&v9->metadataTransform.tx;
  objc_sync_exit(outputInternal);
  v11 = v12;
  CGAffineTransformInvert(&v12, &v11);
  v11 = v12;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  return CGRectApplyAffineTransform(v13, &v11);
}

- (CGRect)rectForMetadataOutputRectOfInterest:(CGRect)rectInMetadataOutputCoordinates
{
  height = rectInMetadataOutputCoordinates.size.height;
  width = rectInMetadataOutputCoordinates.size.width;
  y = rectInMetadataOutputCoordinates.origin.y;
  x = rectInMetadataOutputCoordinates.origin.x;
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  v9 = self->_outputInternal;
  v10 = *&v9->metadataTransform.c;
  *&v11.a = *&v9->metadataTransform.a;
  *&v11.c = v10;
  *&v11.tx = *&v9->metadataTransform.tx;
  objc_sync_exit(outputInternal);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  return CGRectApplyAffineTransform(v12, &v11);
}

- (void)setDeferredStartEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(AVCaptureOutput *)self isDeferredStartSupported]|| !enabledCopy)
  {
    outputInternal = self->_outputInternal;
    objc_sync_enter(outputInternal);
    v7 = self->_outputInternal;
    if (v7->deferredStartEnabled != enabledCopy)
    {
      v7->deferredStartEnabled = enabledCopy;
      [(AVCaptureOutput *)self bumpChangeSeed];
    }

    objc_sync_exit(outputInternal);
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

- (void)updateMetadataTransformForSourceFormat:(id)format aspectRatio:(id)ratio
{
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  sensorDimensions = [format sensorDimensions];
  [(AVCaptureOutput *)self outputSizeForSourceFormat:format];
  v10 = v9;
  v12 = v11;
  isMountedInPortraitOrientation = [format isMountedInPortraitOrientation];
  if (isMountedInPortraitOrientation)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (isMountedInPortraitOrientation)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  v16 = *MEMORY[0x1E695F060] == sensorDimensions;
  v17 = *(MEMORY[0x1E695F060] + 8) == SHIDWORD(sensorDimensions);
  if (v16 && v17)
  {
    v18 = v14;
  }

  else
  {
    v18 = SHIDWORD(sensorDimensions);
  }

  if (v16 && v17)
  {
    v19 = v15;
  }

  else
  {
    v19 = sensorDimensions;
  }

  vtScalingMode = [format vtScalingMode];
  if (format)
  {
    firstObject = -[AVCaptureOutput connectionWithMediaType:](self, "connectionWithMediaType:", [format mediaType]);
  }

  else
  {
    firstObject = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  }

  v22 = firstObject;
  self->_outputInternal->physicallyMirrorsVideo = [(AVCaptureOutput *)self appliesMirroringWithPhysicalFlipForConnection:firstObject];
  v41 = *(MEMORY[0x1E695EFD0] + 16);
  v42 = *MEMORY[0x1E695EFD0];
  *&v47.a = *MEMORY[0x1E695EFD0];
  *&v47.c = v41;
  v40 = *(MEMORY[0x1E695EFD0] + 32);
  *&v47.tx = v40;
  if (ratio)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions([format formatDescription]);
    [objc_msgSend(format "figCaptureSourceVideoFormat")];
    v25 = AVCaptureConvertDimensionsForAspectRatio(Dimensions, ratio, v24);
    v15 = v25;
    v14 = SHIDWORD(v25);
    if (([-[AVCaptureConnection sourceDevice](v22 "sourceDevice")] & 1) == 0)
    {
      v26 = v19 / v18;
      v27 = v15 / v14;
      v28 = v27 <= v26;
      if (v27 != v26)
      {
        v29 = v26 / v27;
        v30 = v27 / v26;
        if (v28)
        {
          v30 = v29;
        }

        v31 = fmax(v30, 1.0);
        CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
        *&t1.a = v42;
        *&t1.c = v41;
        *&t1.tx = v40;
        CGAffineTransformConcat(&v47, &t1, &t2);
        CGAffineTransformMakeScale(&t1, v31, v31);
        v44 = v47;
        CGAffineTransformConcat(&t2, &v44, &t1);
        v47 = t2;
        CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
        v44 = v47;
        CGAffineTransformConcat(&t2, &v44, &t1);
        v47 = t2;
        vtScalingMode = *MEMORY[0x1E69840E8];
      }
    }
  }

  memset(&t2, 0, sizeof(t2));
  [(AVCaptureConnection *)v22 sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)v22 sourcesFromExternalCamera];
  v32 = [(AVCaptureOutput *)self appliesOrientationWithPhysicalRotationForConnection:v22];
  [(AVCaptureConnection *)v22 videoRotationAngle];
  v34 = v33;
  v35 = self->_outputInternal;
  physicallyMirrorsVideo = v35->physicallyMirrorsVideo;
  isVideoMirrored = [(AVCaptureConnection *)v22 isVideoMirrored];
  AVCaptureVideoTransformForCaptureDevice(vtScalingMode, v32, v34, &v35->rollAdjustment, 0, 0, &t2, v19, v18, v15, v14, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), physicallyMirrorsVideo, isVideoMirrored);
  v38 = self->_outputInternal;
  v44 = v47;
  v43 = t2;
  CGAffineTransformConcat(&t1, &v44, &v43);
  v39 = *&t1.c;
  *&v38->metadataTransform.a = *&t1.a;
  *&v38->metadataTransform.c = v39;
  *&v38->metadataTransform.tx = *&t1.tx;
  objc_sync_exit(outputInternal);
}

- (void)handleChangedActiveFormat:(id)format forDevice:(id)device
{
  dynamicAspectRatio = [device dynamicAspectRatio];

  [(AVCaptureOutput *)self updateMetadataTransformForSourceFormat:format aspectRatio:dynamicAspectRatio];
}

- (void)handleChangedDynamicAspectRatio:(id)ratio forFormat:(id)format
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    [(AVCaptureOutput *)self updateMetadataTransformForSourceFormat:format aspectRatio:ratio];
  }
}

- (CGSize)outputSizeForSourceFormat:(id)format
{
  formatDescription = [format formatDescription];
  if (formatDescription)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);
    width = Dimensions.width;
    height = Dimensions.height;
  }

  else
  {
    height = 0.0;
    width = 0.0;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)addConnection:(id)connection error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [(AVCaptureOutput *)self willChangeValueForKey:@"connections"];
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  if (([(NSMutableArray *)self->_outputInternal->connections containsObject:connection]& 1) != 0)
  {
    connection = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    }
  }

  else
  {
    [(NSMutableArray *)self->_outputInternal->connections addObject:connection];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    inputPorts = [connection inputPorts];
    v9 = [inputPorts countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v9)
    {
      v10 = *v20;
LABEL_8:
      v11 = 0;
      while (1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(inputPorts);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        [v12 input];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [inputPorts countByEnumeratingWithState:&v19 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_8;
          }

          goto LABEL_21;
        }
      }

      mediaType = [v12 mediaType];
      if ([mediaType isEqualToString:*MEMORY[0x1E6987608]])
      {
        v14 = [objc_msgSend(connection "sourceDevice")];
        v15 = [objc_msgSend(connection "sourceDevice")];
      }

      else
      {
        mediaType2 = [v12 mediaType];
        if (![mediaType2 isEqualToString:*MEMORY[0x1E69875C0]])
        {
          goto LABEL_21;
        }

        v14 = [objc_msgSend(connection "sourceDevice")];
        v15 = [objc_msgSend(connection "sourceDevice")];
      }

      [(AVCaptureOutput *)self updateMetadataTransformForSourceFormat:v14 aspectRatio:v15];
    }
  }

LABEL_21:
  objc_sync_exit(outputInternal);
  [(AVCaptureOutput *)self didChangeValueForKey:@"connections"];
  return connection;
}

- (void)removeConnection:(id)connection
{
  [(AVCaptureOutput *)self willChangeValueForKey:@"connections"];
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  if ([(NSMutableArray *)self->_outputInternal->connections containsObject:connection])
  {
    [(NSMutableArray *)self->_outputInternal->connections removeObject:connection];
  }

  objc_sync_exit(outputInternal);

  [(AVCaptureOutput *)self didChangeValueForKey:@"connections"];
}

- (id)firstEnabledConnectionForMediaType:(id)type
{
  connections = [(AVCaptureOutput *)self connections];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(NSArray *)connections countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v23;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(connections);
      }

      v9 = *(*(&v22 + 1) + 8 * i);
      if ([v9 isEnabled])
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        inputPorts = [v9 inputPorts];
        v11 = [inputPorts countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
LABEL_9:
          v14 = 0;
          while (1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(inputPorts);
            }

            if ([objc_msgSend(*(*(&v17 + 1) + 8 * v14) "mediaType")])
            {
              return v9;
            }

            if (v12 == ++v14)
            {
              v12 = [inputPorts countByEnumeratingWithState:&v17 objects:v16 count:16];
              if (v12)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }
      }
    }

    v6 = [(NSArray *)connections countByEnumeratingWithState:&v22 objects:v21 count:16];
    v9 = 0;
    if (v6)
    {
      continue;
    }

    return v9;
  }
}

- (id)liveConnections
{
  connections = [(AVCaptureOutput *)self connections];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](connections, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSArray *)connections countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(connections);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isLive])
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSArray *)connections countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)_recommendedVideoOutputSettingsForConnection:(id)connection sourceSettings:(id)settings videoCodec:(id)codec isIris:(BOOL)iris outputFileURL:(id)l
{
  irisCopy = iris;
  sourceDevice = [connection sourceDevice];
  activeFormat = [sourceDevice activeFormat];
  v13 = MEMORY[0x1E6987CE8];
  if (codec && ![codec isEqual:*MEMORY[0x1E6987CE8]])
  {
    goto LABEL_10;
  }

  v14 = [sourceDevice AVVideoSettingsForSessionPreset:{objc_msgSend(-[AVCaptureOutput session](self, "session"), "sessionPreset")}];
  if (!v14)
  {
    goto LABEL_10;
  }

  dictionary2 = v14;
  v16 = [-[AVCaptureOutput session](self "session")];
  if (activeFormat)
  {
    [activeFormat defaultActiveMinFrameDurationForSessionPreset:v16];
    if (sourceDevice)
    {
LABEL_6:
      [sourceDevice activeVideoMinFrameDuration];
      goto LABEL_9;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (sourceDevice)
    {
      goto LABEL_6;
    }
  }

  memset(&time2, 0, sizeof(time2));
LABEL_9:
  if (!CMTimeCompare(&time1, &time2))
  {
    return dictionary2;
  }

LABEL_10:
  selfCopy = self;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v151 = *v13;
  if (!codec)
  {
    codec = *v13;
  }

  v18 = [objc_msgSend(settings objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
  settingsCopy = [objc_msgSend(settings objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
  if (sourceDevice)
  {
    [sourceDevice activeVideoMinFrameDuration];
    [sourceDevice activeVideoMinFrameDuration];
    v20 = v165 / v161;
  }

  else
  {
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v162 = 0;
    v163 = 0;
    v20 = NAN;
    v161 = 0;
  }

  v21 = *MEMORY[0x1E6987DC8];
  v22 = [settings objectForKeyedSubscript:*MEMORY[0x1E6987DC8]];
  if (v18)
  {
    v23 = settingsCopy == 0;
  }

  else
  {
    v23 = 1;
  }

  v147 = v22;
  if (v23)
  {
    if ([activeFormat figCaptureSourceVideoFormat])
    {
      Dimensions = [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
    }

    else
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions([activeFormat formatDescription]);
    }

    v25 = Dimensions;
    if ([objc_msgSend(activeFormat "supportedDynamicAspectRatios")])
    {
      dynamicAspectRatio = [sourceDevice dynamicAspectRatio];
      v149 = dictionary;
      v27 = sourceDevice;
      codecCopy = codec;
      v29 = irisCopy;
      v30 = v18;
      v31 = settingsCopy;
      settingsCopy = settings;
      v32 = dynamicAspectRatio;
      [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
      v33 = v32;
      settings = settingsCopy;
      LODWORD(settingsCopy) = v31;
      LODWORD(v18) = v30;
      irisCopy = v29;
      codec = codecCopy;
      sourceDevice = v27;
      dictionary = v149;
      v25 = AVCaptureConvertDimensionsForAspectRatio(v25, v33, v34);
    }

    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = v25;
    }

    if (settingsCopy)
    {
      settingsCopy = settingsCopy;
    }

    else
    {
      settingsCopy = HIDWORD(v25);
    }
  }

  if ([activeFormat isPhotoFormat])
  {
    maxH264PhotoDimensions = [sourceDevice maxH264PhotoDimensions];
  }

  else
  {
    maxH264PhotoDimensions = [sourceDevice maxH264VideoDimensions];
  }

  v36 = maxH264PhotoDimensions;
  [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
  v142 = v21;
  v141 = irisCopy;
  settingsCopy2 = settings;
  if ((FigCapturePixelFormatIsPackedBayerRaw() & 1) == 0 && (v18 > v36 || settingsCopy > SHIDWORD(v36)))
  {
    v169.width = v18;
    v169.height = settingsCopy;
    v171.size.width = v36;
    v171.size.height = SHIDWORD(v36);
    v171.origin.x = 0.0;
    v171.origin.y = 0.0;
    v170 = AVMakeRectWithAspectRatioInsideRect(v169, v171);
    v18 = vcvtmd_s64_f64(v170.size.width) & 0xFFFFFFFE;
    settingsCopy = vcvtmd_s64_f64(v170.size.height) & 0xFFFFFFFE;
    v147 = *MEMORY[0x1E6987DE0];
  }

  [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
  IsTenBit = FigCapturePixelFormatIsTenBit();
  v150 = v18 * settingsCopy;
  v38 = v20 <= 60.0 || (v18 * settingsCopy) < 0x7E9000;
  v144 = v38;
  v39 = FigCapturePlatformIdentifier() > 5;
  v40 = [codec isEqualToString:v151];
  v41 = MEMORY[0x1E6987CF0];
  if ((v40 & 1) == 0)
  {
    v42 = *MEMORY[0x1E6987CF0];
    if (![codec isEqualToString:*MEMORY[0x1E6987CF0]])
    {
      goto LABEL_211;
    }
  }

  v139 = v39 && v144;
  v44 = v18 > 1919 && settingsCopy > 1079;
  v46 = v18 > 640 && settingsCopy > 480;
  v47 = v20 > 30.0 && v46;
  v145 = ((v18 + 15) >> 4) * ((settingsCopy + 15) >> 4);
  if ([sourceDevice minMacroblocksForHighProfileUpTo30fps] && objc_msgSend(sourceDevice, "minMacroblocksForHighProfileAbove30fps"))
  {
    if (v145 >= [sourceDevice minMacroblocksForHighProfileUpTo30fps] && v20 <= 30.0)
    {
      v48 = v44 || v47;
      v49 = 1;
      goto LABEL_75;
    }

    minMacroblocksForHighProfileAbove30fps = [sourceDevice minMacroblocksForHighProfileAbove30fps];
    v49 = v20 > 30.0 && v145 >= minMacroblocksForHighProfileAbove30fps;
  }

  else
  {
    v49 = 0;
  }

  v48 = v44 || v47;
  if (!v48 && !v49)
  {
LABEL_87:
    v60 = fmin(v20, 120.0) * 11.3999996 / 30.0;
    if (v20 <= 120.0)
    {
      v62 = v60;
    }

    else
    {
      v61 = v60 + (v20 + -120.0) * 0.0900000254;
      v62 = v61;
    }

    if ([codec isEqualToString:*v41])
    {
      v62 = v62 * 0.8;
      [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6987C50]];
    }

    [dictionary setObject:*MEMORY[0x1E6987DA8] forKeyedSubscript:*MEMORY[0x1E6987DB8]];
    goto LABEL_133;
  }

LABEL_75:
  [dictionary setObject:*MEMORY[0x1E6987DB0] forKeyedSubscript:*MEMORY[0x1E6987DB8]];
  [dictionary setObject:*MEMORY[0x1E6987D60] forKeyedSubscript:*MEMORY[0x1E6987D68]];
  [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6987C50]];
  if (v49)
  {
    LODWORD(time1.epoch) = 1110337126;
    *&time1.value = xmmword_1A92AB698;
    *&time2.value = xmmword_1A92AB6AC;
    LODWORD(time2.epoch) = 1109576909;
    v159 = xmmword_1A92AB6C0;
    v160 = 1106640896;
    if ([sourceDevice usesQuantizationScalingMatrix_H264_Steep_16] && objc_msgSend(codec, "isEqualToString:", v151))
    {
      [dictionary setObject:&unk_1F1CE99F8 forKeyedSubscript:*MEMORY[0x1E69837E8]];
      for (i = 0; i != 20; i += 4)
      {
        v53 = *(&time1.value + i) * 0.95;
        *(&time1.value + i) = v53;
        v54 = *(&time2.value + i) * 0.9;
        *(&time2.value + i) = v54;
        v55 = *(&v159 + i) * 0.9;
        *(&v159 + i) = v55;
      }
    }

    v158 = 1103961784;
    v157 = xmmword_1A92AB6E8;
    v155 = xmmword_1A92AB6FC;
    v156 = 1100674499;
    if ([sourceDevice hevcTurboModeVersion] < 1)
    {
      v57 = 959447.126;
      LODWORD(v56) = 1100166726;
    }

    else
    {
      v158 = 1103155219;
      *(&v155 + 1) = 0x412B74BC40C2511ALL;
      v156 = 1100065171;
      v57 = 618764.626;
      LODWORD(v56) = 1099587864;
    }

    if (v139)
    {
      *(&v155 + 1) = v57;
      v156 = LODWORD(v56);
    }

    v63 = [codec isEqualToString:{*v41, v57, v56}];
    v64 = &unk_1A92AB6D4;
    if (v63)
    {
      p_time1 = &unk_1A92AB6D4;
    }

    else
    {
      p_time1 = &time1;
    }

    p_time2 = &time2;
    if (v63)
    {
      v67 = &v157;
    }

    else
    {
      v67 = &time2;
    }

    if (!v63)
    {
      v64 = &time1;
    }

    if (v145 >= 3600)
    {
      v68 = 8160;
    }

    else
    {
      v68 = 3600;
    }

    if (v145 >= 3600)
    {
      v69 = 3600;
    }

    else
    {
      v69 = 0;
    }

    if (v145 >= 3600)
    {
      p_time1 = v64;
    }

    else
    {
      v67 = p_time1;
    }

    v70 = &v155;
    if (v63)
    {
      p_time2 = &v157;
    }

    else
    {
      v70 = &v159;
    }

    if (v145 >= 8160)
    {
      v71 = 32400;
    }

    else
    {
      v71 = v68;
    }

    if (v145 >= 8160)
    {
      v72 = 8160;
    }

    else
    {
      v72 = v69;
    }

    if (v145 >= 8160)
    {
      v73 = v70;
    }

    else
    {
      v73 = v67;
    }

    if (v145 >= 8160)
    {
      p_time1 = p_time2;
    }

    v74 = (v20 / 30.0);
    if (v74)
    {
      if (v74 > 7)
      {
        v78 = (v20 / 240.0) * *&p_time1->epoch;
        v79 = (v20 / 240.0) * v73[4];
        goto LABEL_132;
      }

      v74 = 32 - __clz(v74);
    }

    v75 = flt_1A92AB710[v74];
    v76 = flt_1A92AB710[v74 + 1] - v75;
    v77 = v20 - v75;
    v78 = *(&p_time1->value + v74) + (((*(&p_time1->value + v74 + 1) - *(&p_time1->value + v74)) / v76) * v77);
    v79 = v73[v74] + (((v73[v74 + 1] - v73[v74]) / v76) * v77);
LABEL_132:
    v62 = v78 + (((v79 - v78) / (v71 - v72)) * (v145 - v72));
    goto LABEL_133;
  }

  if (!v48)
  {
    goto LABEL_87;
  }

  if (v44)
  {
    v58 = v20;
    if (v20 > 60.0)
    {
      v59 = (v58 + -60.0) * 0.193666681 + 12.5;
    }

    else if (v20 <= 30.0)
    {
      v59 = fmin(v58, 30.0) * 8.19999981 / 30.0;
    }

    else
    {
      v59 = (v58 + -30.0) * 0.14333334 + 8.19999981;
    }

    v137 = v59;
    v62 = (((v150 * -0.00000034899) + 8.9237) / 8.2) * v137;
    if ([sourceDevice usesQuantizationScalingMatrix_H264_Steep_16] && objc_msgSend(codec, "isEqualToString:", v151))
    {
      [dictionary setObject:&unk_1F1CE99F8 forKeyedSubscript:*MEMORY[0x1E69837E8]];
      v135 = v62;
      v136 = 0.9;
      goto LABEL_265;
    }
  }

  else
  {
    v133 = fmin(v20, 120.0) * 8.19999981 / 30.0;
    if (v20 <= 120.0)
    {
      v62 = v133;
    }

    else
    {
      v134 = v133 + (v20 + -120.0) * 0.0899999936;
      v62 = v134;
    }

    if ([sourceDevice usesQuantizationScalingMatrix_H264_Steep_16] && objc_msgSend(codec, "isEqualToString:", v151))
    {
      [dictionary setObject:&unk_1F1CE99F8 forKeyedSubscript:*MEMORY[0x1E69837E8]];
      v135 = v62;
      v136 = 0.95;
LABEL_265:
      v62 = v135 * v136;
    }
  }

LABEL_133:
  if (IsTenBit)
  {
    v80 = v62 * 1.1;
    v81 = v80;
  }

  else
  {
    v81 = v62;
  }

  if (sourceDevice)
  {
    [sourceDevice activeVideoMaxFrameDuration];
    [sourceDevice activeVideoMaxFrameDuration];
    v82 = v154 / v153;
  }

  else
  {
    v82 = NAN;
  }

  v83 = ((v81 * v18) * settingsCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(AVCaptureOutput *)selfCopy isSpatialVideoCaptureEnabled])
    {
      v84 = v83 + v83;
    }

    else
    {
      if (![(AVCaptureOutput *)selfCopy isMultiCamClientCompositingEnabled])
      {
        goto LABEL_145;
      }

      v84 = v83 * 1.12;
    }

    LODWORD(v83) = llround(v84);
  }

LABEL_145:
  v85 = [MEMORY[0x1E696AD98] numberWithInt:v83];
  v86 = *MEMORY[0x1E6987C60];
  [dictionary setObject:v85 forKeyedSubscript:*MEMORY[0x1E6987C60]];
  v87 = *MEMORY[0x1E6987D78];
  [dictionary setObject:&unk_1F1CE9A10 forKeyedSubscript:*MEMORY[0x1E6987D78]];
  v42 = *v41;
  if (![codec isEqualToString:*v41])
  {
    goto LABEL_158;
  }

  if ((v139 & 1) == 0)
  {
    if ([sourceDevice hevcAllowBFramesForHighCTUCount])
    {
      v98 = v20 <= 30.0 || v150 < 2073601;
      v99 = [MEMORY[0x1E696AD98] numberWithBool:v98];
      [dictionary setObject:v99 forKeyedSubscript:*MEMORY[0x1E6987C50]];
      if (!v98)
      {
        goto LABEL_150;
      }

      goto LABEL_148;
    }

    if (v20 > 30.0 && (v20 > 120.0 || v150 >= 2073601))
    {
      v90 = [MEMORY[0x1E696AD98] numberWithBool:0];
      v89 = *MEMORY[0x1E6987C50];
      goto LABEL_149;
    }
  }

  v88 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [dictionary setObject:v88 forKeyedSubscript:*MEMORY[0x1E6987C50]];
LABEL_148:
  v89 = *MEMORY[0x1E6983520];
  v90 = MEMORY[0x1E695E118];
LABEL_149:
  [dictionary setObject:v90 forKeyedSubscript:v89];
LABEL_150:
  if (FigCapturePlatformIdentifier() >= 6)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6983728]];
  }

  if (![objc_msgSend(settingsCopy2 objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}])
  {
    [objc_msgSend(activeFormat "figCaptureSourceVideoFormat")];
  }

  if ([sourceDevice isMotionCompensatedTemporalFilteringSupported] && FigCapturePixelFormatIs420() && (v20 * v150) <= 290300000.0)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6983858]];
  }

LABEL_158:
  [dictionary setObject:&unk_1F1CE9A28 forKeyedSubscript:*MEMORY[0x1E6983710]];
  [dictionary setObject:&unk_1F1CE9A40 forKeyedSubscript:*MEMORY[0x1E69836F0]];
  v138 = v86;
  if ([codec isEqualToString:v42])
  {
    if (v20 <= 30.0)
    {
      if (v150 <= 2764800)
      {
        goto LABEL_185;
      }

      v100 = MEMORY[0x1E696AD98];
      *&v91 = v20;
    }

    else
    {
      if (v144)
      {
        v92 = *MEMORY[0x1E6983570];
        v93 = &unk_1F1CE9A58;
LABEL_184:
        [dictionary setObject:v93 forKeyedSubscript:v92];
        goto LABEL_185;
      }

      v100 = MEMORY[0x1E696AD98];
      *&v91 = v20 * 0.25;
    }

    v93 = [v100 numberWithFloat:v91];
    v92 = *MEMORY[0x1E6983570];
    goto LABEL_184;
  }

  v94 = MEMORY[0x1E6987C70];
  if (v20 > 30.0)
  {
    [dictionary setObject:&unk_1F1CE9A58 forKeyedSubscript:*MEMORY[0x1E6987C70]];
  }

  if (v150 > 2764800)
  {
    v95 = llroundf(v20);
    v92 = *v94;
    if (vabds_f32(v20, v82) < 0.5 && v95 == 24)
    {
      v93 = &unk_1F1CE9A70;
    }

    else
    {
      v93 = &unk_1F1CE9A28;
    }

    goto LABEL_184;
  }

LABEL_185:
  memset(&time1, 0, sizeof(time1));
  if (!activeFormat)
  {
    v102 = NAN;
    goto LABEL_257;
  }

  [activeFormat lowestSupportedVideoFrameDuration];
  v102 = time1.timescale / time1.value;
  if (v102 < v20)
  {
LABEL_257:
    [AVCaptureOutput _recommendedVideoOutputSettingsForConnection:sourceSettings:videoCodec:isIris:outputFileURL:];
  }

  *&v101 = v102;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v101), @"MaximumRealTimeFrameRate"}];
  output = [connection output];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v141)
  {
    memset(&time2, 0, sizeof(time2));
    if (output)
    {
      [output livePhotoMovieVideoFrameDuration];
      v104 = time2.timescale / time2.value;
      if (v104 >= v20)
      {
LABEL_191:
        v105 = MEMORY[0x1E695E118];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", 0.6), v87}];
        [dictionary setObject:*MEMORY[0x1E6987DB0] forKeyedSubscript:*MEMORY[0x1E6987DB8]];
        if ([codec isEqualToString:v42])
        {
          [dictionary removeObjectForKey:*MEMORY[0x1E6983520]];
        }

        v106 = [codec isEqualToString:v42];
        v107 = MEMORY[0x1E695E110];
        if (v106)
        {
          v108 = v105;
        }

        else
        {
          v108 = MEMORY[0x1E695E110];
        }

        [dictionary setObject:v108 forKeyedSubscript:*MEMORY[0x1E6987C50]];
        *&v109 = v104;
        v110 = [MEMORY[0x1E696AD98] numberWithFloat:v109];
        [dictionary setObject:v110 forKeyedSubscript:*MEMORY[0x1E6987D40]];
        [dictionary setObject:v107 forKeyedSubscript:*MEMORY[0x1E6987978]];
        if ([activeFormat isIrisVideoStabilizationSupported])
        {
          v111 = 1307;
        }

        else
        {
          v111 = 1388;
        }

        if ([codec isEqualToString:v151])
        {
          [dictionary setObject:&unk_1F1CE99F8 forKeyedSubscript:*MEMORY[0x1E69837E8]];
        }

        v112 = v111 * v145;
        v113 = [codec isEqualToString:v42];
        v114 = vcvtpd_u64_f64(v112 * 0.75);
        if (!v113)
        {
          v114 = v112;
        }

        if (v114 <= 0xF4240)
        {
          v115 = 1000000;
        }

        else
        {
          v115 = v114;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v115), v138}];
        goto LABEL_207;
      }
    }

    else
    {
      v104 = NAN;
    }

    [AVCaptureOutput _recommendedVideoOutputSettingsForConnection:sourceSettings:videoCodec:isIris:outputFileURL:];
    goto LABEL_191;
  }

LABEL_207:
  if ([sourceDevice isVariableFrameRateVideoCaptureEnabled])
  {
    if ([activeFormat isVariableFrameRateVideoCaptureSupported])
    {
      *&v116 = v20;
      v117 = [MEMORY[0x1E696AD98] numberWithFloat:v116];
      [dictionary setObject:v117 forKeyedSubscript:*MEMORY[0x1E6983658]];
      if (v150 >= 0x7E9000)
      {
        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69837C0]];
      }
    }
  }

LABEL_211:
  if ([codec isEqualToString:v42])
  {
    [dictionary removeObjectForKey:*MEMORY[0x1E6987D68]];
    v118 = MEMORY[0x1E6983FA0];
    if (IsTenBit)
    {
      v118 = MEMORY[0x1E6983F78];
    }

    [dictionary setObject:*v118 forKeyedSubscript:*MEMORY[0x1E6987DB8]];
    if ([sourceDevice isHEVCRelaxedAverageBitRateTargetSupported])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6983810]];
    }
  }

  v119 = selfCopy;
  if ([objc_msgSend(objc_opt_class() "supportedProResCodecTypes")])
  {
    v120 = (((flt_1A92AB668[v150 > 2073600] * v18) * settingsCopy) * v20);
    output2 = [connection output];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v123 = objc_opt_isKindOfClass();
    lCopy = l;
    if ((isKindOfClass & 1) == 0 && (v123 & 1) == 0)
    {
      goto LABEL_224;
    }

    if (isKindOfClass)
    {
      lCopy = [output2 outputFileURL];
    }

    if (lCopy && FigFileIsFileOnExternalStorageDevice())
    {
      v125 = 3040000000;
    }

    else
    {
LABEL_224:
      v125 = 760000000;
    }

    if (v120 >= v125)
    {
      v126 = v125;
    }

    else
    {
      v126 = v120;
    }

    v119 = selfCopy;
    if ([codec isEqualToString:*MEMORY[0x1E6987CC0]])
    {
      [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69837C0]];
      v127 = [MEMORY[0x1E696AD98] numberWithLongLong:v126];
      [dictionary setObject:v127 forKeyedSubscript:*MEMORY[0x1E6987C60]];
    }
  }

  if (([objc_msgSend(objc_opt_class() "supportedProResCodecTypes")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_opt_class(), "supportedProResRawCodecTypes"), "containsObject:", codec))
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69837A8]];
  }

  if (([codec isEqualToString:v42] & 1) != 0 || objc_msgSend(codec, "isEqualToString:", v151))
  {
    [dictionary setObject:&unk_1F1CE9A88 forKeyedSubscript:*MEMORY[0x1E69837C8]];
  }

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69837F0]];
  *&v128 = v20;
  v129 = [MEMORY[0x1E696AD98] numberWithFloat:v128];
  [dictionary setObject:v129 forKeyedSubscript:*MEMORY[0x1E6987D40]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && -[AVCaptureOutput preservesDynamicHDRMetadata](v119, "preservesDynamicHDRMetadata") && (AVCaptureColorSpaceIsHDR([sourceDevice activeColorSpace]) || objc_msgSend(sourceDevice, "isVideoHDREnabled")))
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69837B8]];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary2 setObject:codec forKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v130 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  [dictionary2 setObject:v130 forKeyedSubscript:*MEMORY[0x1E6987E08]];
  v131 = [MEMORY[0x1E696AD98] numberWithInt:settingsCopy];
  [dictionary2 setObject:v131 forKeyedSubscript:*MEMORY[0x1E6987D70]];
  if (v147)
  {
    [dictionary2 setObject:v147 forKeyedSubscript:v142];
  }

  if ([dictionary count])
  {
    [dictionary2 setObject:dictionary forKeyedSubscript:*MEMORY[0x1E6987D30]];
  }

  return dictionary2;
}

- (id)_recommendedAudioOutputSettingsForConnection:(id)connection sourceSettings:(id)settings fileType:(id)type spatialAudioChannelLayoutTag:(unsigned int)tag
{
  v6 = *&tag;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = [-[AVCaptureOutput session](self "session")];
  v13 = v12;
  if (v6 != -65536 && (v6 == 12451844) != (v6 != 6619138))
  {
    [AVCaptureOutput _recommendedAudioOutputSettingsForConnection:sourceSettings:fileType:spatialAudioChannelLayoutTag:];
  }

  if (v6 == 12451844 || v6 == 6619138)
  {
    if (!settings)
    {
      if (v6 == 12451844)
      {
        v30 = 1634754915;
      }

      else
      {
        v30 = 1633772320;
      }

      if (v12)
      {
        v31 = 1819304813;
      }

      else
      {
        v31 = v30;
      }

      memset(&sizeOut[4], 0, 28);
      *sizeOut = v6;
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v31];
      [dictionary setObject:v32 forKeyedSubscript:*MEMORY[0x1E69582B0]];
      [dictionary setObject:&unk_1F1CE9AA0 forKeyedSubscript:*MEMORY[0x1E6958348]];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
      [dictionary setObject:v33 forKeyedSubscript:*MEMORY[0x1E6958300]];
      v34 = [MEMORY[0x1E695DEF0] dataWithBytes:sizeOut length:32];
      [dictionary setObject:v34 forKeyedSubscript:*MEMORY[0x1E6958258]];
      if (v13)
      {
        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69582E8]];
        [dictionary setObject:&unk_1F1CE9AB8 forKeyedSubscript:*MEMORY[0x1E69582C8]];
        v35 = MEMORY[0x1E695E110];
        [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69582D0]];
        [dictionary setObject:v35 forKeyedSubscript:*MEMORY[0x1E69582F0]];
        if (v6 != 12451844)
        {
          return dictionary;
        }
      }

      else
      {
        if (v6 != 12451844)
        {
          return dictionary;
        }

        [dictionary setObject:&unk_1F1CE9AD0 forKeyedSubscript:*MEMORY[0x1E69582A8]];
        [dictionary setObject:&unk_1F1CE9AE8 forKeyedSubscript:*MEMORY[0x1E6958260]];
      }

      v36 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      v37 = MEMORY[0x1E69582A0];
LABEL_58:
      [dictionary setObject:v36 forKeyedSubscript:*v37];
      return dictionary;
    }

    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    goto LABEL_17;
  }

  if (v6 != -65536)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected spatial audio channel layout tag 0x%08x", v6];
LABEL_17:
    v29 = [v27 exceptionWithName:v28 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v29);
    }

    NSLog(&cfstr_SuppressingExc.isa, v29);
    return 0;
  }

  v14 = [objc_msgSend(objc_msgSend(connection "inputPorts")];
  v15 = [objc_msgSend(connection "sourceDevice")];
  [objc_msgSend(v15 objectForKeyedSubscript:{*MEMORY[0x1E6990300]), "doubleValue"}];
  if (v16 == 0.0)
  {
    dyld_get_program_sdk_version_token();
    FigCaptureSourceDefaultAudioSampleRateForClientSDKVersionToken();
  }

  v17 = v16;
  *sizeOut = 0;
  [objc_msgSend(v15 objectForKeyedSubscript:{*MEMORY[0x1E6990318]), "doubleValue"}];
  v19 = v18;
  LODWORD(v20) = [objc_msgSend(v15 objectForKeyedSubscript:{*MEMORY[0x1E6990310]), "intValue"}];
  if (v14)
  {
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v14);
    if (StreamBasicDescription)
    {
      v22 = StreamBasicDescription;
      mSampleRate = StreamBasicDescription->mSampleRate;
      mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
      if ([objc_msgSend(connection "sourceDevice")] == 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = mChannelsPerFrame;
      }

      mBitsPerChannel = v22->mBitsPerChannel;
    }

    else
    {
      v25 = 1;
      mBitsPerChannel = 16;
      mSampleRate = v17;
    }

    ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(v14, sizeOut);
  }

  else
  {
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    category = [mEMORY[0x1E6958460] category];
    if (([category isEqualToString:*MEMORY[0x1E6958060]] & 1) != 0 || objc_msgSend(category, "isEqualToString:", *MEMORY[0x1E6958078]))
    {
      inputNumberOfChannels = [mEMORY[0x1E6958460] inputNumberOfChannels];
      v41 = 0;
      if (inputNumberOfChannels <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = inputNumberOfChannels;
      }
    }

    else
    {
      v41 = 1;
      v25 = 1;
    }

    if (![-[AVCaptureOutput session](self "session")] || ((v41 | objc_msgSend(-[AVCaptureOutput session](self, "session"), "automaticallyConfiguresApplicationAudioSession")) & 1) != 0 || (objc_msgSend(mEMORY[0x1E6958460], "sampleRate"), v43 == 0.0))
    {
      ChannelLayout = 0;
      mBitsPerChannel = 16;
      mSampleRate = v17;
    }

    else
    {
      [mEMORY[0x1E6958460] sampleRate];
      mSampleRate = v44;
      ChannelLayout = 0;
      mBitsPerChannel = 16;
    }
  }

  if (v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v25;
  }

  if (v19 == 0.0)
  {
    v19 = mSampleRate;
  }

  if (v13)
  {
    v19 = 48000.0;
LABEL_52:
    v45 = 1819304813;
    v46 = [MEMORY[0x1E696AD98] numberWithInt:mBitsPerChannel];
    [dictionary setObject:v46 forKeyedSubscript:*MEMORY[0x1E69582C8]];
    v47 = MEMORY[0x1E695E110];
    [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69582D0]];
    v48 = *MEMORY[0x1E69582E8];
LABEL_53:
    [dictionary setObject:v47 forKeyedSubscript:v48];
    v49 = *MEMORY[0x1E69582F0];
    v50 = dictionary;
    v51 = v47;
LABEL_54:
    [v50 setObject:v51 forKeyedSubscript:v49];
    goto LABEL_55;
  }

  if ([type isEqualToString:*MEMORY[0x1E69874D0]])
  {
    goto LABEL_52;
  }

  if (([type isEqualToString:*MEMORY[0x1E6987460]] & 1) != 0 || objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E6987458]))
  {
    v45 = 1819304813;
    v56 = [MEMORY[0x1E696AD98] numberWithInt:mBitsPerChannel];
    [dictionary setObject:v56 forKeyedSubscript:*MEMORY[0x1E69582C8]];
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69582D0]];
    v48 = *MEMORY[0x1E69582E8];
    v47 = MEMORY[0x1E695E110];
    goto LABEL_53;
  }

  v45 = 1633772320;
  if (([type isEqualToString:*MEMORY[0x1E69874C0]] & 1) == 0 && (objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E69874B8]) & 1) == 0 && (objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E6987448]) & 1) == 0 && (objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E6987480]) & 1) == 0 && (objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E6987478]) & 1) == 0 && !objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E6987488]))
  {
    if ([type isEqualToString:*MEMORY[0x1E6987468]])
    {
      v20 = 1;
      v45 = 1935764850;
      v19 = 8000.0;
    }

    goto LABEL_55;
  }

  v57 = [objc_msgSend(v15 objectForKeyedSubscript:{*MEMORY[0x1E6990308]), "intValue"}];
  if (v20 >= 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = v20;
  }

  if (v57)
  {
    v58 = v57;
    v59 = 0;
LABEL_74:
    intValue = 0xFFFFFFFFLL;
    goto LABEL_75;
  }

  if (v19 != v17)
  {
    goto LABEL_55;
  }

  v58 = [objc_msgSend(v15 objectForKeyedSubscript:{*MEMORY[0x1E69902F0]), "intValue"}];
  v59 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69902F8]];
  if (![v59 isEqualToString:*MEMORY[0x1E6958018]])
  {
    goto LABEL_74;
  }

  v62 = [v15 objectForKeyedSubscript:*MEMORY[0x1E6990320]];
  if (!v62)
  {
    goto LABEL_74;
  }

  intValue = [v62 intValue];
LABEL_75:
  if (v58 >= 1)
  {
    v61 = [MEMORY[0x1E696AD98] numberWithInt:v58];
    [dictionary setObject:v61 forKeyedSubscript:*MEMORY[0x1E6958290]];
  }

  if (v59)
  {
    [dictionary setObject:v59 forKeyedSubscript:*MEMORY[0x1E6958298]];
  }

  if (intValue != -1)
  {
    v51 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
    v49 = *MEMORY[0x1E6958268];
    v50 = dictionary;
    goto LABEL_54;
  }

LABEL_55:
  v52 = [MEMORY[0x1E696AD98] numberWithInt:v45];
  [dictionary setObject:v52 forKeyedSubscript:*MEMORY[0x1E69582B0]];
  v53 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [dictionary setObject:v53 forKeyedSubscript:*MEMORY[0x1E6958348]];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:v20];
  [dictionary setObject:v54 forKeyedSubscript:*MEMORY[0x1E6958300]];
  if (v20 == v25 && ChannelLayout)
  {
    v36 = [MEMORY[0x1E695DEF0] dataWithBytes:ChannelLayout length:*sizeOut];
    v37 = MEMORY[0x1E6958258];
    goto LABEL_58;
  }

  return dictionary;
}

- (id)recommendedCinematicAudioOutputSettingsForConnection:(id)connection fileType:(id)type isProResCapture:(BOOL)capture
{
  captureCopy = capture;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [objc_msgSend(objc_msgSend(connection "inputPorts")];
  if (captureCopy)
  {
    v9 = 1819304813;
  }

  else
  {
    v9 = 1634754915;
  }

  if (v8)
  {
    CMAudioFormatDescriptionGetStreamBasicDescription(v8);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E69582B0]];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:4];
  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E6958300]];
  if (captureCopy)
  {
    [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69582F0]];
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69582E8]];
  }

  v16 = 0;
  v15 = 0;
  v18 = 0;
  v17 = 0;
  v14 = 12451844;
  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:32];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x1E6958258]];
  return dictionary;
}

- (id)recommendedOutputSettingsForConnection:(id)connection sourceSettings:(id)settings videoCodecType:(id)type fileType:(id)fileType isIris:(BOOL)iris outputFileURL:(id)l spatialAudioChannelLayoutTag:(unsigned int)tag
{
  if (!connection)
  {
    [AVCaptureOutput recommendedOutputSettingsForConnection:sourceSettings:videoCodecType:fileType:isIris:outputFileURL:spatialAudioChannelLayoutTag:];
    return 0;
  }

  irisCopy = iris;
  mediaType = [connection mediaType];
  if ([mediaType isEqualToString:*MEMORY[0x1E6987608]])
  {

    return [(AVCaptureOutput *)self _recommendedVideoOutputSettingsForConnection:connection sourceSettings:settings videoCodec:type isIris:irisCopy outputFileURL:l];
  }

  mediaType2 = [connection mediaType];
  if (![mediaType2 isEqualToString:*MEMORY[0x1E69875A0]])
  {
    return 0;
  }

  return [(AVCaptureOutput *)self _recommendedAudioOutputSettingsForConnection:connection sourceSettings:settings fileType:fileType spatialAudioChannelLayoutTag:tag];
}

+ (int64_t)dataDroppedReasonFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (!buffer)
  {
    return 0;
  }

  CMGetAttachment(buffer, *MEMORY[0x1E6960498], 0);
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 2;
  }

  if (FigCFEqual())
  {
    return 3;
  }

  return 0;
}

- (void)handleCenterStageActiveChangedForDevice:(id)device
{
  activeFormat = [device activeFormat];
  dynamicAspectRatio = [device dynamicAspectRatio];

  [(AVCaptureOutput *)self updateMetadataTransformForSourceFormat:activeFormat aspectRatio:dynamicAspectRatio];
}

- (void)getTransform:(CGAffineTransform *)transform mirroredOut:(BOOL *)out rollAdjustmentOut:(double *)adjustmentOut forConnection:(id)connection
{
  outputInternal = self->_outputInternal;
  objc_sync_enter(outputInternal);
  if (transform)
  {
    v12 = self->_outputInternal;
    v13 = *&v12->metadataTransform.a;
    v14 = *&v12->metadataTransform.tx;
    *&transform->c = *&v12->metadataTransform.c;
    *&transform->tx = v14;
    *&transform->a = v13;
  }

  if (out)
  {
    if ([connection isVideoMirrored])
    {
      physicallyMirrorsVideo = self->_outputInternal->physicallyMirrorsVideo;
    }

    else
    {
      physicallyMirrorsVideo = 0;
    }

    *out = physicallyMirrorsVideo;
  }

  if (adjustmentOut)
  {
    *adjustmentOut = self->_outputInternal->rollAdjustment;
  }

  objc_sync_exit(outputInternal);
}

+ (id)availableVideoCodecTypesForSourceDevice:(id)device sourceFormat:(id)format outputDimensions:(id)Dimensions fileType:(id)type videoCodecTypesAllowList:(id)list
{
  array = [MEMORY[0x1E695DF70] array];
  v14 = *MEMORY[0x1E69874C0];
  if (([type isEqual:*MEMORY[0x1E69874C0]] & 1) == 0 && (objc_msgSend(type, "isEqual:", *MEMORY[0x1E69874B8]) & 1) == 0 && (objc_msgSend(type, "isEqual:", *MEMORY[0x1E6987480]) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3();
    return array;
  }

  if (format || (format = [device activeFormat]) != 0)
  {
    [objc_msgSend(format "figCaptureSourceVideoFormat")];
    if (FigCapturePixelFormatIsTenBit())
    {
      v15 = FigCapturePixelFormatIs422();
    }

    else
    {
      v15 = 0;
    }

    IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
    v17 = IsPackedBayerRaw;
    if (v15 & 1) != 0 || (IsPackedBayerRaw)
    {
LABEL_30:
      isProResSupported = [device isProResSupported];
      if (isProResSupported)
      {
        if (v15)
        {
          isProResSupported = [self supportedProResCodecTypes];
          supportedProResRawCodecTypes = isProResSupported;
        }

        else if (v17)
        {
          supportedProResRawCodecTypes = [self supportedProResRawCodecTypes];
          isProResSupported = [device activeFormat];
          if (isProResSupported)
          {
            isProResSupported = [isProResSupported lowestSupportedVideoFrameDuration];
            if ((0 / 0) >= 120.0)
            {
              supportedProResRawCodecTypes = [supportedProResRawCodecTypes mutableCopy];
              isProResSupported = [supportedProResRawCodecTypes removeObject:*MEMORY[0x1E6987CE0]];
            }
          }
        }

        else
        {
          supportedProResRawCodecTypes = 0;
        }

        v34 = OUTLINED_FUNCTION_1_2(isProResSupported, v26, v27, v28, v29, v30, v31, v32, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, 0);
        if (v34)
        {
          v35 = v34;
          v36 = MEMORY[0];
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (MEMORY[0] != v36)
              {
                objc_enumerationMutation(supportedProResRawCodecTypes);
              }

              v38 = *(8 * i);
              if (list)
              {
                v39 = [list containsObject:*(8 * i)];
                if (!v39)
                {
                  continue;
                }
              }

              v39 = [array insertObject:v38 atIndex:0];
            }

            v35 = OUTLINED_FUNCTION_1_2(v39, v40, v41, v42, v43, v44, v45, v46, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v84);
          }

          while (v35);
        }
      }

      return array;
    }

    if (!HIDWORD(*&Dimensions) || !Dimensions.var0)
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions([format formatDescription]);
    }

    [objc_msgSend(objc_msgSend(format "videoSupportedFrameRateRanges")];
    v19 = v18;
    if (![device isHEVCSupported] || v19 * ((Dimensions.var1 + 15) / 16 * ((Dimensions.var0 + 15) / 16)) <= 1000000.0)
    {
      v20 = *MEMORY[0x1E6987CE8];
      if (list && ![list containsObject:*MEMORY[0x1E6987CE8]])
      {
        if (([type isEqual:v14] & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        [array addObject:v20];
        if (([type isEqual:v14] & 1) == 0)
        {
          goto LABEL_24;
        }

        if (!list)
        {
          v21 = *MEMORY[0x1E6987D00];
LABEL_23:
          [array addObject:v21];
          goto LABEL_24;
        }
      }

      v21 = *MEMORY[0x1E6987D00];
      if ([list containsObject:*MEMORY[0x1E6987D00]])
      {
        goto LABEL_23;
      }
    }

LABEL_24:
    if ([device isHEVCSupported])
    {
      v22 = MEMORY[0x1E6987CF0];
      if (!list || [list containsObject:*MEMORY[0x1E6987CF0]])
      {
        isHEVCPreferred = [device isHEVCPreferred];
        v24 = *v22;
        if (isHEVCPreferred)
        {
          [array insertObject:v24 atIndex:0];
        }

        else
        {
          [array addObject:v24];
        }
      }
    }

    goto LABEL_30;
  }

  return array;
}

@end