@interface AVCaptureMetadataOutput
+ (id)_metadataConstantValueToName:(id)name;
+ (void)initialize;
- (AVCaptureMetadataOutput)init;
- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason;
- (BOOL)isAppClipCodeMetadataSupported;
- (BOOL)isAttentionDetectionSupported;
- (BOOL)isFaceOcclusionDetectionSupported;
- (BOOL)isFaceTrackingSupported;
- (BOOL)isHeadMetadataSupported;
- (BOOL)isHumanHandMetadataSupported;
- (BOOL)isOfflineVideoStabilizationMotionMetadataSupported;
- (BOOL)isSceneClassificationMetadataSupported;
- (BOOL)isSynchronizationEnabled;
- (BOOL)isTextRegionMetadataSupported;
- (BOOL)isVideoPreviewHistogramMetadataSupported;
- (CGRect)rectOfInterest;
- (NSArray)availableMetadataObjectTypes;
- (NSArray)metadataObjectTypes;
- (NSArray)requiredMetadataObjectTypesForCinematicVideoCapture;
- (float)motionToWakeTargetFrameRate;
- (float)objectDetectionTargetFrameRate;
- (id)_metadataIdentifiers;
- (id)_newEmitTimerForSynchronizedMetadataCollections:(id)collections;
- (id)metadataIdentifiersForMetadataObjectTypes:(id)types;
- (id)metadataObjectTypesForMetadataIdentifiers:(id)identifiers;
- (id)metadataObjectTypesSupportingZeroFrameDelaySynchronization;
- (id)supportedMetadataObjectTypesForFrameRateControl;
- (unint64_t)maxSynchronizationFrameDelay;
- (void)_emitCollections:(id)collections;
- (void)_emitSyncedCollections:(id)collections;
- (void)_flushSynchronizedMetadataCollectionsQueue;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)operation;
- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_processSynchronizationWithCollections:(id)collections withCorrespondingMetadataObjectTypes:(id)types;
- (void)_removeMetadataObjectTypeFromMetadataObjectTypes:(id)types;
- (void)_removeMetadataObjectTypesFromMetadataObjectTypes:(id)types;
- (void)_updateLocalQueue:(localQueueOpaque *)queue;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue;
- (void)_updateSynchronizationEnabledStatus;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)setAppClipCodeMetadataObjectTypeAvailable:(BOOL)available;
- (void)setAttentionDetectionEnabled:(BOOL)enabled;
- (void)setAttentionForFaceIDReadinessRequired:(BOOL)required;
- (void)setDelegateOverride:(id)override delegateOverrideCallbackQueue:(id)queue;
- (void)setEmitsEmptyObjectDetectionMetadata:(BOOL)metadata;
- (void)setFaceOcclusionDetectionEnabled:(BOOL)enabled;
- (void)setFaceTrackingFailureFieldOfViewModifier:(float)modifier;
- (void)setFaceTrackingMaxFaces:(int64_t)faces;
- (void)setFaceTrackingMetadataObjectTypesAvailable:(BOOL)available;
- (void)setFaceTrackingNetworkFailureThresholdMultiplier:(float)multiplier;
- (void)setFaceTrackingPlusEnabled:(BOOL)enabled;
- (void)setFaceTrackingSuspended:(BOOL)suspended;
- (void)setFaceTrackingUsesFaceRecognition:(BOOL)recognition;
- (void)setHeadMetadataObjectTypesAvailable:(BOOL)available;
- (void)setHumanHandMetadataObjectTypeAvailable:(BOOL)available;
- (void)setMaxSynchronizationFrameDelay:(unint64_t)delay;
- (void)setMetadataObjectTypes:(NSArray *)metadataObjectTypes;
- (void)setMetadataObjectsDelegate:(id)objectsDelegate queue:(dispatch_queue_t)objectsCallbackQueue;
- (void)setOfflineVideoStabilizationMotionMetadataObjectTypesAvailable:(BOOL)available;
- (void)setPeriocularForFaceIDReadinessEnabled:(BOOL)enabled;
- (void)setRectOfInterest:(CGRect)rectOfInterest;
- (void)setSceneClassificationMetadataObjectTypeAvailable:(BOOL)available;
- (void)setSynchronizationEnabled:(BOOL)enabled;
- (void)setTargetFrameRate:(float)rate forMetadataObjectType:(id)type;
- (void)setTextRegionMetadataObjectTypeAvailable:(BOOL)available;
- (void)setVideoPreviewHistogramMetadataObjectTypesAvailable:(BOOL)available;
@end

@implementation AVCaptureMetadataOutput

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (AVCaptureMetadataOutput)init
{
  v10.receiver = self;
  v10.super_class = AVCaptureMetadataOutput;
  initSubclass = [(AVCaptureOutput *)&v10 initSubclass];
  if (initSubclass)
  {
    v3 = objc_alloc_init(AVCaptureMetadataOutputInternal);
    initSubclass->_internal = v3;
    if (v3)
    {
      v3->rectOfInterest.origin.x = 0.0;
      v3->rectOfInterest.origin.y = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      v3->rectOfInterest.size = _Q0;
      initSubclass->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
    }

    else
    {

      return 0;
    }
  }

  return initSubclass;
}

- (NSArray)metadataObjectTypes
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureMetadataOutputCapturesFacesByDefault") && !self->_internal->metadataObjectTypes && [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "isFaceDetectionSupported"}])
  {
    v8 = @"face";
    return [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  else
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    metadataObjectTypes = self->_internal->metadataObjectTypes;
    if (metadataObjectTypes)
    {
      array = [(NSArray *)metadataObjectTypes copy];
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    v3 = array;
    objc_sync_exit(internal);
  }

  return v3;
}

- (BOOL)isVideoPreviewHistogramMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991490];

  return [v2 containsObject:v3];
}

- (BOOL)isAppClipCodeMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991478];

  return [v2 containsObject:v3];
}

- (BOOL)isTextRegionMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991480];

  return [v2 containsObject:v3];
}

- (BOOL)isHeadMetadataSupported
{
  v2 = [(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()];
  v3 = [-[AVCaptureConnection sourceDevice](v2 "sourceDevice")];
  if ([v3 containsObject:*MEMORY[0x1E6991470]])
  {
    return 1;
  }

  v4 = [-[AVCaptureConnection sourceDevice](v2 "sourceDevice")];
  if ([v4 containsObject:*MEMORY[0x1E6960370]])
  {
    return 1;
  }

  v6 = [-[AVCaptureConnection sourceDevice](v2 "sourceDevice")];
  v7 = *MEMORY[0x1E6960380];

  return [v6 containsObject:v7];
}

- (NSArray)availableMetadataObjectTypes
{
  v3 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];

  return [(AVCaptureMetadataOutput *)self metadataObjectTypesForMetadataIdentifiers:v3];
}

- (void)_updateSynchronizationEnabledStatus
{
  v3 = [MEMORY[0x1E695DFA8] setWithArray:{-[AVCaptureMetadataOutput metadataObjectTypes](self, "metadataObjectTypes")}];
  if ([(AVCaptureMetadataOutput *)self metadataObjectTypesSupportingZeroFrameDelaySynchronization])
  {
    [v3 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", -[AVCaptureMetadataOutput metadataObjectTypesSupportingZeroFrameDelaySynchronization](self, "metadataObjectTypesSupportingZeroFrameDelaySynchronization"))}];
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  synchronizationEnabled = self->_internal->synchronizationEnabled;
  if ([(NSArray *)[(AVCaptureMetadataOutput *)self metadataObjectTypes] count]== 1)
  {
    synchronizationEnabledByClient = 0;
    v7 = self->_internal;
  }

  else
  {
    v8 = [v3 count];
    v7 = self->_internal;
    if (v8)
    {
      synchronizationEnabledByClient = v7->synchronizationEnabledByClient;
    }

    else
    {
      synchronizationEnabledByClient = 1;
    }
  }

  v7->synchronizationEnabled = synchronizationEnabledByClient;
  v9 = self->_internal->synchronizationEnabled;
  objc_sync_exit(internal);
  if (synchronizationEnabled != v9)
  {

    [(AVCaptureMetadataOutput *)self _flushSynchronizedMetadataCollectionsQueue];
  }
}

- (id)metadataObjectTypesSupportingZeroFrameDelaySynchronization
{
  v3 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiersForZeroFrameDelaySynchronization"}];

  return [(AVCaptureMetadataOutput *)self metadataObjectTypesForMetadataIdentifiers:v3];
}

- (id)_metadataIdentifiers
{
  metadataObjectTypes = [(AVCaptureMetadataOutput *)self metadataObjectTypes];

  return [(AVCaptureMetadataOutput *)self metadataIdentifiersForMetadataObjectTypes:metadataObjectTypes];
}

- (CGRect)rectOfInterest
{
  internal = self->_internal;
  x = internal->rectOfInterest.origin.x;
  y = internal->rectOfInterest.origin.y;
  width = internal->rectOfInterest.size.width;
  height = internal->rectOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (float)objectDetectionTargetFrameRate
{
  v3 = [(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()];
  v4 = MEMORY[0x1E695DFA8];
  v5 = [-[AVCaptureConnection sourceDevice](v3 "sourceDevice")];
  v6 = [v4 setWithArray:{-[AVCaptureMetadataOutput metadataObjectTypesForMetadataIdentifiers:](self, "metadataObjectTypesForMetadataIdentifiers:", objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x1E6990410]))}];
  v7 = [MEMORY[0x1E695DFA8] setWithArray:{-[AVCaptureMetadataOutput metadataObjectTypes](self, "metadataObjectTypes")}];
  [v7 intersectSet:v6];
  v8 = [MEMORY[0x1E695DFA8] setWithArray:{-[NSDictionary allKeys](self->_internal->targetFrameRateByMetadataObjectType, "allKeys")}];
  [v8 intersectSet:v6];
  v9 = [v8 isEqualToSet:v7];
  result = 0.0;
  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      v14 = &unk_1F1CEA6B0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if (v14 <= [(NSDictionary *)self->_internal->targetFrameRateByMetadataObjectType objectForKeyedSubscript:v16])
          {
            v14 = [(NSDictionary *)self->_internal->targetFrameRateByMetadataObjectType objectForKeyedSubscript:v16];
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = &unk_1F1CEA6B0;
    }

    [v14 floatValue];
  }

  return result;
}

- (float)motionToWakeTargetFrameRate
{
  v2 = [(NSDictionary *)self->_internal->targetFrameRateByMetadataObjectType objectForKeyedSubscript:@"MotionToWake"];

  [v2 floatValue];
  return result;
}

- (void)_flushSynchronizedMetadataCollectionsQueue
{
  internal = self->_internal;
  objc_sync_enter(internal);

  self->_internal->synchronizedMetadataCollectionsQueue = 0;

  objc_sync_exit(internal);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureMetadataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setMetadataObjectsDelegate:(id)objectsDelegate queue:(dispatch_queue_t)objectsCallbackQueue
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    objectsCallbackQueue = 0;
  }

  [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"metadataObjectsDelegate"];
  v8 = 0;
  if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setClientDelegate:objectsDelegate clientCallbackQueue:objectsCallbackQueue exceptionReason:&v8])
  {
    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"metadataObjectsDelegate"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"metadataObjectsDelegate"];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (id)metadataObjectTypesForMetadataIdentifiers:(id)identifiers
{
  array = [MEMORY[0x1E695DF70] array];
  if (metadataObjectTypesForMetadataIdentifiers__sMetadataIdentifierToMetadataConstantDictionaryOnceToken != -1)
  {
    [AVCaptureMetadataOutput metadataObjectTypesForMetadataIdentifiers:];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [identifiers countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(identifiers);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [metadataObjectTypesForMetadataIdentifiers__sMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
        internal = self->_internal;
        if (internal->faceTrackingMetadataObjectTypesAvailable && v11 == 0)
        {
          v14 = [metadataObjectTypesForMetadataIdentifiers__sFaceTrackingMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        else
        {
          v14 = v11;
        }

        if (internal->offlineVideoStabilizationMotionMetadataObjectTypesAvailable && v14 == 0)
        {
          v14 = [metadataObjectTypesForMetadataIdentifiers__sOfflineVideoStabilizationMotionMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->videoPreviewHistogramMetadataObjectTypesAvailable && v14 == 0)
        {
          v14 = [metadataObjectTypesForMetadataIdentifiers__sVideoPreviewHistogramMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->appClipCodeObjectTypeAvailable && v14 == 0)
        {
          v14 = [metadataObjectTypesForMetadataIdentifiers__sAppClipCodeMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->textRegionObjectTypeAvailable && v14 == 0)
        {
          v14 = [metadataObjectTypesForMetadataIdentifiers__sTextRegionMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->sceneClassificationObjectTypeAvailable && v14 == 0)
        {
          v14 = [metadataObjectTypesForMetadataIdentifiers__sSceneClassificationMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->headObjectTypesAvailable && v14 == 0)
        {
          v14 = [metadataObjectTypesForMetadataIdentifiers__sHeadMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->humanHandObjectTypeAvailable && v14 == 0)
        {
          v14 = [metadataObjectTypesForMetadataIdentifiers__sHumanHandMetadataIdentifierToMetadataConstantDictionary objectForKeyedSubscript:v10];
        }

        if (v14)
        {
          [array addObject:?];
        }
      }

      v7 = [identifiers countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v7);
  }

  return array;
}

id __69__AVCaptureMetadataOutput_metadataObjectTypesForMetadataIdentifiers___block_invoke()
{
  v0 = *MEMORY[0x1E69877B8];
  v27[0] = *MEMORY[0x1E69877B0];
  v27[1] = v0;
  v28[0] = @"face";
  v28[1] = @"humanBody";
  v27[2] = @"mdta/com.apple.quicktime.detected-human-full-body";
  v27[3] = @"mdta/com.apple.quicktime.detected-cat-head";
  v28[2] = @"humanFullBody";
  v28[3] = @"catHead";
  v27[4] = *MEMORY[0x1E69877A0];
  v27[5] = @"mdta/com.apple.quicktime.detected-dog-head";
  v28[4] = @"catBody";
  v28[5] = @"dogHead";
  v1 = *MEMORY[0x1E69877C0];
  v27[6] = *MEMORY[0x1E69877A8];
  v27[7] = v1;
  v28[6] = @"dogBody";
  v28[7] = @"salientObject";
  v27[8] = @"mdta/com.apple.quicktime.detected-machine-readable-code.UPCE";
  v27[9] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code39";
  v28[8] = @"org.gs1.UPC-E";
  v28[9] = @"org.iso.Code39";
  v27[10] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code39Checksum";
  v27[11] = @"mdta/com.apple.quicktime.detected-machine-readable-code.EAN13";
  v28[10] = @"org.iso.Code39Mod43";
  v28[11] = @"org.gs1.EAN-13";
  v27[12] = @"mdta/com.apple.quicktime.detected-machine-readable-code.EAN8";
  v27[13] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code93";
  v28[12] = @"org.gs1.EAN-8";
  v28[13] = @"com.intermec.Code93";
  v27[14] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code128";
  v27[15] = @"mdta/com.apple.quicktime.detected-machine-readable-code.QR";
  v28[14] = @"org.iso.Code128";
  v28[15] = @"org.iso.QRCode";
  v27[16] = @"mdta/com.apple.quicktime.detected-machine-readable-code.PDF417";
  v27[17] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Aztec";
  v28[16] = @"org.iso.PDF417";
  v28[17] = @"org.iso.Aztec";
  v27[18] = @"mdta/com.apple.quicktime.detected-machine-readable-code.DataMatrix";
  v27[19] = @"mdta/com.apple.quicktime.detected-machine-readable-code.I2of5";
  v28[18] = @"org.iso.DataMatrix";
  v28[19] = @"org.ansi.Interleaved2of5";
  v27[20] = @"mdta/com.apple.quicktime.detected-machine-readable-code.ITF14";
  v27[21] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Codabar";
  v28[20] = @"org.gs1.ITF14";
  v28[21] = @"Codabar";
  v27[22] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBar";
  v27[23] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBarExpanded";
  v28[22] = @"org.gs1.GS1DataBar";
  v28[23] = @"org.gs1.GS1DataBarExpanded";
  v27[24] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBarLimited";
  v27[25] = @"mdta/com.apple.quicktime.detected-machine-readable-code.MicroQR";
  v28[24] = @"org.gs1.GS1DataBarLimited";
  v28[25] = @"org.iso.MicroQR";
  v27[26] = @"mdta/com.apple.quicktime.detected-machine-readable-code.MicroPDF417";
  v27[27] = @"mdta/com.apple.quicktime.eye-relief-status";
  v28[26] = @"org.iso.MicroPDF417";
  v28[27] = @"EyeReliefStatus";
  v27[28] = @"mdta/com.apple.quicktime.faceid-readiness";
  v27[29] = @"mdta/com.apple.quicktime.motion-to-wake";
  v28[28] = @"FaceIDReadiness";
  v28[29] = @"MotionToWake";
  metadataObjectTypesForMetadataIdentifiers__sMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:30];
  v2 = metadataObjectTypesForMetadataIdentifiers__sMetadataIdentifierToMetadataConstantDictionary;
  v25 = *MEMORY[0x1E69629E8];
  v26 = @"trackedFaces";
  metadataObjectTypesForMetadataIdentifiers__sFaceTrackingMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v3 = metadataObjectTypesForMetadataIdentifiers__sFaceTrackingMetadataIdentifierToMetadataConstantDictionary;
  v23 = *MEMORY[0x1E69629D8];
  v24 = @"offlineVideoStabilizationMotion";
  metadataObjectTypesForMetadataIdentifiers__sOfflineVideoStabilizationMotionMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v4 = metadataObjectTypesForMetadataIdentifiers__sOfflineVideoStabilizationMotionMetadataIdentifierToMetadataConstantDictionary;
  v21 = @"mdta/com.apple.quicktime.video-preview-histogram";
  v22 = @"videoPreviewHistogram";
  metadataObjectTypesForMetadataIdentifiers__sVideoPreviewHistogramMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v5 = metadataObjectTypesForMetadataIdentifiers__sVideoPreviewHistogramMetadataIdentifierToMetadataConstantDictionary;
  v19 = @"mdta/com.apple.quicktime.detected-machine-readable-code.AppClipCode";
  v20 = @"com.apple.AppClipCode";
  metadataObjectTypesForMetadataIdentifiers__sAppClipCodeMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v6 = metadataObjectTypesForMetadataIdentifiers__sAppClipCodeMetadataIdentifierToMetadataConstantDictionary;
  v17 = @"mdta/com.apple.quicktime.detected-text-region";
  v18 = @"textRegion";
  metadataObjectTypesForMetadataIdentifiers__sTextRegionMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v7 = metadataObjectTypesForMetadataIdentifiers__sTextRegionMetadataIdentifierToMetadataConstantDictionary;
  v15 = @"mdta/com.apple.quicktime.scene-classification";
  v16 = @"sceneClassification";
  metadataObjectTypesForMetadataIdentifiers__sSceneClassificationMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v8 = metadataObjectTypesForMetadataIdentifiers__sSceneClassificationMetadataIdentifierToMetadataConstantDictionary;
  v13[0] = @"mdta/com.apple.quicktime.detected-human-head";
  v13[1] = @"mdta/com.apple.quicktime.detected-cat-head";
  v14[0] = @"humanHead";
  v14[1] = @"catHead";
  v13[2] = @"mdta/com.apple.quicktime.detected-dog-head";
  v14[2] = @"dogHead";
  metadataObjectTypesForMetadataIdentifiers__sHeadMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v9 = metadataObjectTypesForMetadataIdentifiers__sHeadMetadataIdentifierToMetadataConstantDictionary;
  v11 = @"mdta/com.apple.quicktime.detected-human-hand";
  v12 = @"humanHand";
  metadataObjectTypesForMetadataIdentifiers__sHumanHandMetadataIdentifierToMetadataConstantDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  return metadataObjectTypesForMetadataIdentifiers__sHumanHandMetadataIdentifierToMetadataConstantDictionary;
}

- (void)setMetadataObjectTypes:(NSArray *)metadataObjectTypes
{
  if (metadataObjectTypes)
  {
    availableMetadataObjectTypes = [(AVCaptureMetadataOutput *)self availableMetadataObjectTypes];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(NSArray *)metadataObjectTypes countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(metadataObjectTypes);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (![(NSArray *)availableMetadataObjectTypes containsObject:v10])
          {
            v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, v10}];
            if (AVCaptureShouldThrowForAPIViolations())
            {
              objc_exception_throw(v13);
            }

            NSLog(&cfstr_SuppressingExc.isa, v13);
            return;
          }
        }

        v7 = [(NSArray *)metadataObjectTypes countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v12 = self->_internal->metadataObjectTypes;
  if (v12 == metadataObjectTypes || [(NSArray *)v12 isEqualToArray:metadataObjectTypes])
  {
    objc_sync_exit(internal);
  }

  else
  {

    self->_internal->metadataObjectTypes = [(NSArray *)metadataObjectTypes copy];
    objc_sync_exit(internal);
    [(AVCaptureMetadataOutput *)self _updateSynchronizationEnabledStatus];
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (NSArray)requiredMetadataObjectTypesForCinematicVideoCapture
{
  v3[0] = @"face";
  v3[1] = @"humanBody";
  v3[2] = @"catHead";
  v3[3] = @"catBody";
  v3[4] = @"dogHead";
  v3[5] = @"dogBody";
  v3[6] = @"salientObject";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
}

- (id)metadataIdentifiersForMetadataObjectTypes:(id)types
{
  if (metadataIdentifiersForMetadataObjectTypes__sMetadataConstantToMetadataIdentifierDictionaryOnceToken != -1)
  {
    [AVCaptureMetadataOutput metadataIdentifiersForMetadataObjectTypes:];
  }

  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [types countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(types);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [metadataIdentifiersForMetadataObjectTypes__sMetadataConstantToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
        internal = self->_internal;
        if (internal->faceTrackingMetadataObjectTypesAvailable && v11 == 0)
        {
          v14 = [metadataIdentifiersForMetadataObjectTypes__sFaceTrackingMetadataConstantToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        else
        {
          v14 = v11;
        }

        if (internal->offlineVideoStabilizationMotionMetadataObjectTypesAvailable && v14 == 0)
        {
          v14 = [metadataIdentifiersForMetadataObjectTypes__sOfflineVideoStabilizationMotionMetadataConstantToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->videoPreviewHistogramMetadataObjectTypesAvailable && v14 == 0)
        {
          v14 = [metadataIdentifiersForMetadataObjectTypes__sVideoPreviewHistogramMetadataConstantsToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->appClipCodeObjectTypeAvailable && v14 == 0)
        {
          v14 = [metadataIdentifiersForMetadataObjectTypes__sAppClipCodeMetadataConstantToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->textRegionObjectTypeAvailable && v14 == 0)
        {
          v14 = [metadataIdentifiersForMetadataObjectTypes__sTextRegionMetadataConstantToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->sceneClassificationObjectTypeAvailable && v14 == 0)
        {
          v14 = [metadataIdentifiersForMetadataObjectTypes__sSceneClassificationMetadataConstantToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->headObjectTypesAvailable && v14 == 0)
        {
          v14 = [metadataIdentifiersForMetadataObjectTypes__sHeadMetadataConstantToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
          internal = self->_internal;
        }

        if (internal->humanHandObjectTypeAvailable && v14 == 0)
        {
          v14 = [metadataIdentifiersForMetadataObjectTypes__sHumanHandMetadataConstantToMetadataIdentifierDictionary objectForKeyedSubscript:v10];
        }

        if (v14)
        {
          [array addObject:?];
        }
      }

      v7 = [types countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v7);
  }

  return array;
}

id __69__AVCaptureMetadataOutput_metadataIdentifiersForMetadataObjectTypes___block_invoke()
{
  v0 = *MEMORY[0x1E69877B0];
  v30[0] = @"face";
  v30[1] = @"humanBody";
  v1 = *MEMORY[0x1E69877B8];
  v31[0] = v0;
  v31[1] = v1;
  v30[2] = @"humanFullBody";
  v30[3] = @"catBody";
  v2 = *MEMORY[0x1E69877A0];
  v31[2] = @"mdta/com.apple.quicktime.detected-human-full-body";
  v31[3] = v2;
  v3 = *MEMORY[0x1E69877A8];
  v30[4] = @"dogBody";
  v30[5] = @"salientObject";
  v4 = *MEMORY[0x1E69877C0];
  v31[4] = v3;
  v31[5] = v4;
  v30[6] = @"catHead";
  v30[7] = @"dogHead";
  v31[6] = @"mdta/com.apple.quicktime.detected-cat-head";
  v31[7] = @"mdta/com.apple.quicktime.detected-dog-head";
  v30[8] = @"org.gs1.UPC-E";
  v30[9] = @"org.iso.Code39";
  v31[8] = @"mdta/com.apple.quicktime.detected-machine-readable-code.UPCE";
  v31[9] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code39";
  v30[10] = @"org.iso.Code39Mod43";
  v30[11] = @"org.gs1.EAN-13";
  v31[10] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code39Checksum";
  v31[11] = @"mdta/com.apple.quicktime.detected-machine-readable-code.EAN13";
  v30[12] = @"org.gs1.EAN-8";
  v30[13] = @"com.intermec.Code93";
  v31[12] = @"mdta/com.apple.quicktime.detected-machine-readable-code.EAN8";
  v31[13] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code93";
  v30[14] = @"org.iso.Code128";
  v30[15] = @"org.iso.QRCode";
  v31[14] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Code128";
  v31[15] = @"mdta/com.apple.quicktime.detected-machine-readable-code.QR";
  v30[16] = @"org.iso.PDF417";
  v30[17] = @"org.iso.Aztec";
  v31[16] = @"mdta/com.apple.quicktime.detected-machine-readable-code.PDF417";
  v31[17] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Aztec";
  v30[18] = @"org.iso.DataMatrix";
  v30[19] = @"org.ansi.Interleaved2of5";
  v31[18] = @"mdta/com.apple.quicktime.detected-machine-readable-code.DataMatrix";
  v31[19] = @"mdta/com.apple.quicktime.detected-machine-readable-code.I2of5";
  v30[20] = @"org.gs1.ITF14";
  v30[21] = @"Codabar";
  v31[20] = @"mdta/com.apple.quicktime.detected-machine-readable-code.ITF14";
  v31[21] = @"mdta/com.apple.quicktime.detected-machine-readable-code.Codabar";
  v30[22] = @"org.gs1.GS1DataBar";
  v30[23] = @"org.gs1.GS1DataBarExpanded";
  v31[22] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBar";
  v31[23] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBarExpanded";
  v30[24] = @"org.gs1.GS1DataBarLimited";
  v30[25] = @"org.iso.MicroQR";
  v31[24] = @"mdta/com.apple.quicktime.detected-machine-readable-code.GS1DataBarLimited";
  v31[25] = @"mdta/com.apple.quicktime.detected-machine-readable-code.MicroQR";
  v30[26] = @"org.iso.MicroPDF417";
  v30[27] = @"EyeReliefStatus";
  v31[26] = @"mdta/com.apple.quicktime.detected-machine-readable-code.MicroPDF417";
  v31[27] = @"mdta/com.apple.quicktime.eye-relief-status";
  v30[28] = @"FaceIDReadiness";
  v30[29] = @"MotionToWake";
  v31[28] = @"mdta/com.apple.quicktime.faceid-readiness";
  v31[29] = @"mdta/com.apple.quicktime.motion-to-wake";
  metadataIdentifiersForMetadataObjectTypes__sMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:30];
  v5 = metadataIdentifiersForMetadataObjectTypes__sMetadataConstantToMetadataIdentifierDictionary;
  v28 = @"trackedFaces";
  v29 = *MEMORY[0x1E69629E8];
  metadataIdentifiersForMetadataObjectTypes__sFaceTrackingMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v6 = metadataIdentifiersForMetadataObjectTypes__sFaceTrackingMetadataConstantToMetadataIdentifierDictionary;
  v26 = @"offlineVideoStabilizationMotion";
  v27 = *MEMORY[0x1E69629D8];
  metadataIdentifiersForMetadataObjectTypes__sOfflineVideoStabilizationMotionMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v7 = metadataIdentifiersForMetadataObjectTypes__sOfflineVideoStabilizationMotionMetadataConstantToMetadataIdentifierDictionary;
  v24 = @"videoPreviewHistogram";
  v25 = @"mdta/com.apple.quicktime.video-preview-histogram";
  metadataIdentifiersForMetadataObjectTypes__sVideoPreviewHistogramMetadataConstantsToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v8 = metadataIdentifiersForMetadataObjectTypes__sVideoPreviewHistogramMetadataConstantsToMetadataIdentifierDictionary;
  v22 = @"com.apple.AppClipCode";
  v23 = @"mdta/com.apple.quicktime.detected-machine-readable-code.AppClipCode";
  metadataIdentifiersForMetadataObjectTypes__sAppClipCodeMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v9 = metadataIdentifiersForMetadataObjectTypes__sAppClipCodeMetadataConstantToMetadataIdentifierDictionary;
  v20 = @"textRegion";
  v21 = @"mdta/com.apple.quicktime.detected-text-region";
  metadataIdentifiersForMetadataObjectTypes__sTextRegionMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v10 = metadataIdentifiersForMetadataObjectTypes__sTextRegionMetadataConstantToMetadataIdentifierDictionary;
  v18 = @"sceneClassification";
  v19 = @"mdta/com.apple.quicktime.scene-classification";
  metadataIdentifiersForMetadataObjectTypes__sSceneClassificationMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v11 = metadataIdentifiersForMetadataObjectTypes__sSceneClassificationMetadataConstantToMetadataIdentifierDictionary;
  v16[0] = @"humanHead";
  v16[1] = @"catHead";
  v17[0] = @"mdta/com.apple.quicktime.detected-human-head";
  v17[1] = @"mdta/com.apple.quicktime.detected-cat-head";
  v16[2] = @"dogHead";
  v17[2] = @"mdta/com.apple.quicktime.detected-dog-head";
  metadataIdentifiersForMetadataObjectTypes__sHeadMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v12 = metadataIdentifiersForMetadataObjectTypes__sHeadMetadataConstantToMetadataIdentifierDictionary;
  v14 = @"humanHand";
  v15 = @"mdta/com.apple.quicktime.detected-human-hand";
  metadataIdentifiersForMetadataObjectTypes__sHumanHandMetadataConstantToMetadataIdentifierDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  return metadataIdentifiersForMetadataObjectTypes__sHumanHandMetadataConstantToMetadataIdentifierDictionary;
}

- (void)setRectOfInterest:(CGRect)rectOfInterest
{
  height = rectOfInterest.size.height;
  width = rectOfInterest.size.width;
  y = rectOfInterest.origin.y;
  x = rectOfInterest.origin.x;
  if (!CGRectEqualToRect(self->_internal->rectOfInterest, rectOfInterest))
  {
    internal = self->_internal;
    internal->rectOfInterest.origin.x = x;
    internal->rectOfInterest.origin.y = y;
    internal->rectOfInterest.size.width = width;
    internal->rectOfInterest.size.height = height;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason
{
  if (![objc_msgSend(connection "mediaType")])
  {
    v7 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v7 = 2;
LABEL_5:
    v8 = AVCaptureOutputConnectionFailureReasonString(v7, self, connection);
    result = 0;
    *reason = v8;
    return result;
  }

  return 1;
}

- (BOOL)isFaceTrackingSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E69629E8];

  return [v2 containsObject:v3];
}

- (void)setFaceTrackingMetadataObjectTypesAvailable:(BOOL)available
{
  availableCopy = available;
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    if (self->_internal->faceTrackingMetadataObjectTypesAvailable != availableCopy)
    {
      [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
      self->_internal->faceTrackingMetadataObjectTypesAvailable = availableCopy;
      if (!availableCopy)
      {
        [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"trackedFaces"];
      }

      [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
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
  }
}

- (void)setFaceTrackingMaxFaces:(int64_t)faces
{
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingMaxFaces != faces)
    {
      internal->faceTrackingMaxFaces = faces;

      [(AVCaptureOutput *)self bumpChangeSeed];
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

- (void)setFaceTrackingUsesFaceRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingUsesFaceRecognition != recognitionCopy)
    {
      internal->faceTrackingUsesFaceRecognition = recognitionCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
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

- (void)setFaceTrackingPlusEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingPlusEnabled != enabledCopy)
    {
      internal->faceTrackingPlusEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
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

- (void)setFaceTrackingNetworkFailureThresholdMultiplier:(float)multiplier
{
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingNetworkFailureThresholdMultiplier != multiplier)
    {
      internal->faceTrackingNetworkFailureThresholdMultiplier = multiplier;

      [(AVCaptureOutput *)self bumpChangeSeed];
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

- (void)setFaceTrackingSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  if ([(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    internal = self->_internal;
    if (internal->faceTrackingSuspended != suspendedCopy)
    {
      internal->faceTrackingSuspended = suspendedCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
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

- (void)setFaceTrackingFailureFieldOfViewModifier:(float)modifier
{
  if (![(AVCaptureMetadataOutput *)self isFaceTrackingSupported])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_12;
  }

  v6 = modifier <= 1.0 && modifier >= 0.0;
  if (modifier != -1.0 && !v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
LABEL_12:
    v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
    return;
  }

  internal = self->_internal;
  if (internal->faceTrackingFailureFieldOfViewModifier != modifier)
  {
    internal->faceTrackingFailureFieldOfViewModifier = modifier;

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)isAttentionDetectionSupported
{
  sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()] sourceDevice];

  return [sourceDevice isAttentionDetectionSupported];
}

- (void)setAttentionDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCaptureMetadataOutput *)self isAttentionDetectionSupported])
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
    if (internal->attentionDetectionEnabled != enabledCopy)
    {
      internal->attentionDetectionEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setPeriocularForFaceIDReadinessEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(NSArray *)[(AVCaptureMetadataOutput *)self availableMetadataObjectTypes] containsObject:@"FaceIDReadiness"])
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
    if (internal->periocularForFaceIDReadinessEnabled != enabledCopy)
    {
      internal->periocularForFaceIDReadinessEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setAttentionForFaceIDReadinessRequired:(BOOL)required
{
  requiredCopy = required;
  if (required && ![(NSArray *)[(AVCaptureMetadataOutput *)self availableMetadataObjectTypes] containsObject:@"FaceIDReadiness"])
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
    if (internal->attentionForFaceIDReadinessRequired != requiredCopy)
    {
      internal->attentionForFaceIDReadinessRequired = requiredCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (BOOL)isFaceOcclusionDetectionSupported
{
  sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()] sourceDevice];

  return [sourceDevice isFaceOcclusionDetectionSupported];
}

- (void)setFaceOcclusionDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && ![(AVCaptureMetadataOutput *)self isFaceOcclusionDetectionSupported])
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
    if (internal->faceOcclusionDetectionEnabled != enabledCopy)
    {
      internal->faceOcclusionDetectionEnabled = enabledCopy;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (id)supportedMetadataObjectTypesForFrameRateControl
{
  v3 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataIdentifiersForFrameRateControl"}];

  return [(AVCaptureMetadataOutput *)self metadataObjectTypesForMetadataIdentifiers:v3];
}

- (void)setTargetFrameRate:(float)rate forMetadataObjectType:(id)type
{
  if ([-[AVCaptureMetadataOutput supportedMetadataObjectTypesForFrameRateControl](self "supportedMetadataObjectTypesForFrameRateControl")])
  {
    targetFrameRateByMetadataObjectType = self->_internal->targetFrameRateByMetadataObjectType;
    if (targetFrameRateByMetadataObjectType)
    {
      dictionary = [(NSDictionary *)targetFrameRateByMetadataObjectType mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v11 = dictionary;
    if (rate <= 0.0)
    {
      v12 = 0;
    }

    else
    {
      *&v9 = rate;
      v12 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    }

    [(NSDictionary *)v11 setObject:v12 forKeyedSubscript:type];
    v13 = self->_internal->targetFrameRateByMetadataObjectType;
    if (v11 != v13 && ![(NSDictionary *)v13 isEqualToDictionary:v11])
    {

      self->_internal->targetFrameRateByMetadataObjectType = [(NSDictionary *)v11 copy];

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
  }
}

- (BOOL)isOfflineVideoStabilizationMotionMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E69629D8];

  return [v2 containsObject:v3];
}

- (void)setOfflineVideoStabilizationMotionMetadataObjectTypesAvailable:(BOOL)available
{
  availableCopy = available;
  if ([(AVCaptureMetadataOutput *)self isOfflineVideoStabilizationMotionMetadataSupported])
  {
    if (self->_internal->offlineVideoStabilizationMotionMetadataObjectTypesAvailable != availableCopy)
    {
      [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
      self->_internal->offlineVideoStabilizationMotionMetadataObjectTypesAvailable = availableCopy;
      if (!availableCopy)
      {
        [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"offlineVideoStabilizationMotion"];
      }

      [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
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
  }
}

- (void)setVideoPreviewHistogramMetadataObjectTypesAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isVideoPreviewHistogramMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->videoPreviewHistogramMetadataObjectTypesAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->videoPreviewHistogramMetadataObjectTypesAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"videoPreviewHistogram"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (void)setAppClipCodeMetadataObjectTypeAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isAppClipCodeMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->appClipCodeObjectTypeAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->appClipCodeObjectTypeAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"com.apple.AppClipCode"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (void)setTextRegionMetadataObjectTypeAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isTextRegionMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->textRegionObjectTypeAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->textRegionObjectTypeAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"textRegion"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (BOOL)isSceneClassificationMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991488];

  return [v2 containsObject:v3];
}

- (void)setSceneClassificationMetadataObjectTypeAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isSceneClassificationMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->sceneClassificationObjectTypeAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->sceneClassificationObjectTypeAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"sceneClassification"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (void)setHeadMetadataObjectTypesAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isHeadMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->headObjectTypesAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->headObjectTypesAvailable = availableCopy;
    if (!availableCopy)
    {
      v6[0] = @"humanHead";
      v6[1] = @"catHead";
      v6[2] = @"dogHead";
      -[AVCaptureMetadataOutput _removeMetadataObjectTypesFromMetadataObjectTypes:](self, "_removeMetadataObjectTypesFromMetadataObjectTypes:", [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3]);
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (BOOL)isHumanHandMetadataSupported
{
  v2 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{AVMediaTypeForMetadataObjects()), "sourceDevice"), "supportedMetadataObjectIdentifiers"}];
  v3 = *MEMORY[0x1E6991468];

  return [v2 containsObject:v3];
}

- (void)setHumanHandMetadataObjectTypeAvailable:(BOOL)available
{
  availableCopy = available;
  if (available && ![(AVCaptureMetadataOutput *)self isHumanHandMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->humanHandObjectTypeAvailable != availableCopy)
  {
    [(AVCaptureMetadataOutput *)self willChangeValueForKey:@"availableMetadataObjectTypes"];
    self->_internal->humanHandObjectTypeAvailable = availableCopy;
    if (!availableCopy)
    {
      [(AVCaptureMetadataOutput *)self _removeMetadataObjectTypeFromMetadataObjectTypes:@"humanHand"];
    }

    [(AVCaptureMetadataOutput *)self didChangeValueForKey:@"availableMetadataObjectTypes"];
  }
}

- (void)setEmitsEmptyObjectDetectionMetadata:(BOOL)metadata
{
  internal = self->_internal;
  if (internal->emitsEmptyObjectDetectionMetadata != metadata)
  {
    internal->emitsEmptyObjectDetectionMetadata = metadata;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (BOOL)isSynchronizationEnabled
{
  selfCopy = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(selfCopy) = selfCopy->_internal->synchronizationEnabledByClient;
  objc_sync_exit(internal);
  return selfCopy;
}

- (void)setSynchronizationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = self->_internal;
  if (v6->synchronizationEnabledByClient == enabledCopy)
  {
    objc_sync_exit(internal);

    [(AVCaptureMetadataOutput *)self _updateSynchronizationEnabledStatus];
  }

  else
  {
    v6->synchronizationEnabledByClient = enabledCopy;
    objc_sync_exit(internal);
    [(AVCaptureMetadataOutput *)self _updateSynchronizationEnabledStatus];
    if (!enabledCopy)
    {

      [(AVCaptureMetadataOutput *)self _flushSynchronizedMetadataCollectionsQueue];
    }
  }
}

- (unint64_t)maxSynchronizationFrameDelay
{
  internal = self->_internal;
  objc_sync_enter(internal);
  maxSynchronizationFrameDelay = self->_internal->maxSynchronizationFrameDelay;
  objc_sync_exit(internal);
  return maxSynchronizationFrameDelay;
}

- (void)setMaxSynchronizationFrameDelay:(unint64_t)delay
{
  internal = self->_internal;
  objc_sync_enter(internal);
  self->_internal->maxSynchronizationFrameDelay = delay;

  objc_sync_exit(internal);
}

+ (id)_metadataConstantValueToName:(id)name
{
  if (_metadataConstantValueToName__sMetadataConstantToMetadataNameDictionaryOnceToken != -1)
  {
    +[AVCaptureMetadataOutput _metadataConstantValueToName:];
  }

  result = [_metadataConstantValueToName__sMetadataConstantToMetadataNameDictionary objectForKeyedSubscript:name];
  if (!result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not mapped! Please file a radar against %s", name, FigCaptureGetFrameworkRadarComponentName()];
  }

  return result;
}

id __56__AVCaptureMetadataOutput__metadataConstantValueToName___block_invoke()
{
  v1[0] = @"face";
  v1[1] = @"humanHead";
  v2[0] = @"AVMetadataObjectTypeFace";
  v2[1] = @"AVMetadataObjectTypeHumanHead";
  v1[2] = @"humanBody";
  v1[3] = @"humanFullBody";
  v2[2] = @"AVMetadataObjectTypeHumanBody";
  v2[3] = @"AVMetadataObjectTypeHumanFullBody";
  v1[4] = @"humanHand";
  v1[5] = @"dogHead";
  v2[4] = @"AVMetadataObjectTypeHumanHand";
  v2[5] = @"AVMetadataObjectTypeDogHead";
  v1[6] = @"dogBody";
  v1[7] = @"catHead";
  v2[6] = @"AVMetadataObjectTypeDogBody";
  v2[7] = @"AVMetadataObjectTypeCatHead";
  v1[8] = @"catBody";
  v1[9] = @"salientObject";
  v2[8] = @"AVMetadataObjectTypeCatBody";
  v2[9] = @"AVMetadataObjectTypeSalientObject";
  v1[10] = @"saliencyHeatMap";
  v1[11] = @"trackedFaces";
  v2[10] = @"AVMetadataObjectTypeSaliencyHeatMap";
  v2[11] = @"AVMetadataObjectTypeTrackedFaces";
  v1[12] = @"org.gs1.UPC-E";
  v1[13] = @"org.iso.Code39";
  v2[12] = @"AVMetadataObjectTypeUPCECode";
  v2[13] = @"AVMetadataObjectTypeCode39Code";
  v1[14] = @"org.iso.Code39Mod43";
  v1[15] = @"org.gs1.EAN-13";
  v2[14] = @"AVMetadataObjectTypeCode39Mod43Code";
  v2[15] = @"AVMetadataObjectTypeEAN13Code";
  v1[16] = @"org.gs1.EAN-8";
  v1[17] = @"com.intermec.Code93";
  v2[16] = @"AVMetadataObjectTypeEAN8Code";
  v2[17] = @"AVMetadataObjectTypeCode93Code";
  v1[18] = @"org.iso.Code128";
  v1[19] = @"org.iso.QRCode";
  v2[18] = @"AVMetadataObjectTypeCode128Code";
  v2[19] = @"AVMetadataObjectTypeQRCode";
  v1[20] = @"org.iso.PDF417";
  v1[21] = @"org.iso.Aztec";
  v2[20] = @"AVMetadataObjectTypePDF417Code";
  v2[21] = @"AVMetadataObjectTypeAztecCode";
  v1[22] = @"org.iso.DataMatrix";
  v1[23] = @"org.ansi.Interleaved2of5";
  v2[22] = @"AVMetadataObjectTypeDataMatrixCode";
  v2[23] = @"AVMetadataObjectTypeInterleaved2of5Code";
  v1[24] = @"org.gs1.ITF14";
  v1[25] = @"offlineVideoStabilizationMotion";
  v2[24] = @"AVMetadataObjectTypeITF14Code";
  v2[25] = @"AVMetadataObjectTypeOfflineVideoStabilizationMotion";
  v1[26] = @"videoPreviewHistogram";
  v1[27] = @"com.apple.AppClipCode";
  v2[26] = @"AVMetadataObjectTypeVideoPreviewHistogram";
  v2[27] = @"AVMetadataObjectTypeAppClipCode";
  v1[28] = @"textRegion";
  v1[29] = @"sceneClassification";
  v2[28] = @"AVMetadataObjectTypeTextRegion";
  v2[29] = @"AVMetadataObjectTypeSceneClassification";
  _metadataConstantValueToName__sMetadataConstantToMetadataNameDictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:30];
  return _metadataConstantValueToName__sMetadataConstantToMetadataNameDictionary;
}

- (void)_removeMetadataObjectTypeFromMetadataObjectTypes:(id)types
{
  internal = self->_internal;
  objc_sync_enter(internal);
  metadataObjectTypes = self->_internal->metadataObjectTypes;
  if ([(NSArray *)metadataObjectTypes containsObject:types])
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:metadataObjectTypes];
    [(NSArray *)v7 removeObject:types];
    self->_internal->metadataObjectTypes = v7;
  }

  objc_sync_exit(internal);
}

- (void)_removeMetadataObjectTypesFromMetadataObjectTypes:(id)types
{
  internal = self->_internal;
  objc_sync_enter(internal);
  metadataObjectTypes = self->_internal->metadataObjectTypes;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:metadataObjectTypes];
  [(NSArray *)v7 removeObjectsInArray:types];
  v8 = [(NSArray *)v7 count];
  if (v8 != [(NSArray *)metadataObjectTypes count])
  {
    self->_internal->metadataObjectTypes = v7;
  }

  objc_sync_exit(internal);
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  [(AVCaptureMetadataOutput *)self _flushSynchronizedMetadataCollectionsQueue];
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:mdo_notificationHandler name:*MEMORY[0x1E698FE48] object:session flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:mdo_notificationHandler name:*MEMORY[0x1E698FE40] object:session flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureMetadataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:session];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  [(AVCaptureMetadataOutput *)self _flushSynchronizedMetadataCollectionsQueue];
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:mdo_notificationHandler name:*MEMORY[0x1E698FE48] object:session];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:mdo_notificationHandler name:*MEMORY[0x1E698FE40] object:session];
  v6.receiver = self;
  v6.super_class = AVCaptureMetadataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:session];
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  if ([objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([notification isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCaptureMetadataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([notification isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCaptureMetadataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)queue
{
  v5 = self->_internal->weakReference;
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_internal->delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", queue, [MessageReceiver copy]);
}

void __46__AVCaptureMetadataOutput__updateRemoteQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) referencedObject];
  if (v7)
  {
    v8 = v7;
    if (a2 == -16665)
    {
      [*(v7[2] + 8) releaseRemoteQueueReceiver];
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
    [(AVCaptureMetadataOutput *)self _processSampleBuffer:operation->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)queue
{
  v5 = self->_internal->weakReference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AVCaptureMetadataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786F260;
  v6[4] = v5;
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_internal->delegateCallbackHelper, "updateLocalQueue:handler:", queue, [v6 copy]);
}

void __45__AVCaptureMetadataOutput__updateLocalQueue___block_invoke(uint64_t a1, __int128 *a2)
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
    [(AVCaptureMetadataOutput *)self _processSampleBuffer:*(&message->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = [(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()];
  v6 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](v5 "inputPorts")];
  v201 = self->_internal->metadataObjectTypes;
  objc_sync_exit(internal);
  if (!-[AVCaptureConnection isLive](v5, "isLive") || ![-[AVCaptureOutput session](self "session")] || (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) != 0)
  {
    goto LABEL_248;
  }

  array = [MEMORY[0x1E695DF70] array];
  sourcesFromFrontFacingCamera = [(AVCaptureConnection *)v5 sourcesFromFrontFacingCamera];
  v8 = v5;
  v9 = sourcesFromFrontFacingCamera;
  v194 = v8;
  [(AVCaptureConnection *)v8 sourcesFromExternalCamera];
  LOBYTE(v10) = 0;
  if (AVCapturePlatformMountsCamerasInLandscapeOrientation() && v9)
  {
    v10 = FigCaptureCameraRequires180DegreesRotation() ^ 1;
  }

  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v11 = [objc_msgSend(objc_msgSend(v6 "device")];
  }

  else
  {
    v11 = 0;
  }

  bufferCopy6 = buffer;
  v13 = CMGetAttachment(buffer, *MEMORY[0x1E6990D10], 0);
  v14 = MEMORY[0x1E6960C70];
  if (!v13)
  {
    goto LABEL_157;
  }

  v15 = v13;
  v191 = v11;
  v192 = v10;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  a = *v14;
  b_high = *(v14 + 12);
  b_low = *(v14 + 8);
  c = *(v14 + 16);
  v288 = 0u;
  v289 = 0u;
  v290 = 0u;
  v291 = 0u;
  v215 = [v15 countByEnumeratingWithState:&v288 objects:&v294 count:16];
  if (!v215)
  {
    v209 = b_high;
    v69 = 1;
    goto LABEL_128;
  }

  array2 = 0;
  v214 = *v289;
  v213 = *MEMORY[0x1E6991140];
  v212 = *MEMORY[0x1E6990EC0];
  v211 = *MEMORY[0x1E6990E98];
  v205 = *MEMORY[0x1E6990E90];
  v204 = *MEMORY[0x1E6990EA0];
  v203 = *MEMORY[0x1E6990E70];
  v202 = *MEMORY[0x1E6990E80];
  v199 = *MEMORY[0x1E6990EB8];
  v197 = *MEMORY[0x1E6990EB0];
  v195 = *MEMORY[0x1E6990E78];
  v193 = *MEMORY[0x1E6990E88];
  v190 = *MEMORY[0x1E6990EA8];
  v206 = v15;
  v207 = v17;
  do
  {
    v20 = 0;
    do
    {
      if (*v289 != v214)
      {
        objc_enumerationMutation(v15);
      }

      v217 = v20;
      v21 = *(*(&v288 + 1) + 8 * v20);
      v22 = [objc_msgSend(v15 objectForKeyedSubscript:{v21), "objectForKeyedSubscript:", v213}];
      v23 = [objc_msgSend(v15 objectForKeyedSubscript:{v21), "objectForKeyedSubscript:", v212}];
      if (v22)
      {
        memset(&v229, 0, 24);
        [v22 longLongValue];
        v24 = FigHostTimeToNanoseconds();
        CMTimeMake(&v229, v24, 1000000000);
        if ((b_high & 1) == 0 || (*&time1.a = *&v229.a, time1.c = v229.c, time2.a = a, *&time2.b = __PAIR64__(b_high, b_low), time2.c = c, CMTimeCompare(&time1, &time2) < 0))
        {
          a = v229.a;
          b_high = HIDWORD(v229.b);
          b_low = LODWORD(v229.b);
          c = v229.c;
        }
      }

      if (![v21 isEqualToString:v211])
      {
        if ([v21 isEqualToString:v205])
        {
          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v276 = 0u;
          v31 = [v23 countByEnumeratingWithState:&v276 objects:&v275 count:16];
          if (!v31)
          {
            v30 = @"humanBody";
            goto LABEL_119;
          }

          v32 = v31;
          v33 = b_high;
          v34 = *v277;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v277 != v34)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataHumanBodyObject humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataHumanBodyObject, "humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v276 + 1) + 8 * i), v6, v22)}];
            }

            v32 = [v23 countByEnumeratingWithState:&v276 objects:&v275 count:16];
          }

          while (v32);
          v30 = @"humanBody";
        }

        else if ([v21 isEqualToString:v204])
        {
          v274 = 0u;
          v273 = 0u;
          v272 = 0u;
          v271 = 0u;
          v36 = [v23 countByEnumeratingWithState:&v271 objects:v270 count:16];
          if (!v36)
          {
            v30 = @"humanFullBody";
            goto LABEL_119;
          }

          v37 = v36;
          v33 = b_high;
          v38 = *v272;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v272 != v38)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataHumanFullBodyObject humanFullBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataHumanFullBodyObject, "humanFullBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v271 + 1) + 8 * j), v6, v22)}];
            }

            v37 = [v23 countByEnumeratingWithState:&v271 objects:v270 count:16];
          }

          while (v37);
          v30 = @"humanFullBody";
        }

        else if ([v21 isEqualToString:v203])
        {
          v269 = 0u;
          v268 = 0u;
          v267 = 0u;
          v266 = 0u;
          v40 = [v23 countByEnumeratingWithState:&v266 objects:v265 count:16];
          if (!v40)
          {
            v30 = @"catBody";
            goto LABEL_119;
          }

          v41 = v40;
          v33 = b_high;
          v42 = *v267;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v267 != v42)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataCatBodyObject catBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataCatBodyObject, "catBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v266 + 1) + 8 * k), v6, v22)}];
            }

            v41 = [v23 countByEnumeratingWithState:&v266 objects:v265 count:16];
          }

          while (v41);
          v30 = @"catBody";
        }

        else if ([v21 isEqualToString:v202])
        {
          v264 = 0u;
          v263 = 0u;
          v262 = 0u;
          v261 = 0u;
          v44 = [v23 countByEnumeratingWithState:&v261 objects:v260 count:16];
          if (!v44)
          {
            v30 = @"dogBody";
            goto LABEL_119;
          }

          v45 = v44;
          v33 = b_high;
          v46 = *v262;
          do
          {
            for (m = 0; m != v45; ++m)
            {
              if (*v262 != v46)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataDogBodyObject dogBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataDogBodyObject, "dogBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v261 + 1) + 8 * m), v6, v22)}];
            }

            v45 = [v23 countByEnumeratingWithState:&v261 objects:v260 count:16];
          }

          while (v45);
          v30 = @"dogBody";
        }

        else if ([v21 isEqualToString:v199])
        {
          v259 = 0u;
          v258 = 0u;
          v257 = 0u;
          v256 = 0u;
          v48 = [v23 countByEnumeratingWithState:&v256 objects:v255 count:16];
          if (!v48)
          {
            v30 = @"salientObject";
            goto LABEL_119;
          }

          v49 = v48;
          v33 = b_high;
          v50 = *v257;
          do
          {
            for (n = 0; n != v49; ++n)
            {
              if (*v257 != v50)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataSalientObject salientObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataSalientObject, "salientObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v256 + 1) + 8 * n), v6, v22)}];
            }

            v49 = [v23 countByEnumeratingWithState:&v256 objects:v255 count:16];
          }

          while (v49);
          v30 = @"salientObject";
        }

        else if ([v21 isEqualToString:v197])
        {
          v254 = 0u;
          v253 = 0u;
          v252 = 0u;
          v251 = 0u;
          v52 = [v23 countByEnumeratingWithState:&v251 objects:v250 count:16];
          if (!v52)
          {
            v30 = @"humanHead";
            goto LABEL_119;
          }

          v53 = v52;
          v33 = b_high;
          v54 = *v252;
          do
          {
            for (ii = 0; ii != v53; ++ii)
            {
              if (*v252 != v54)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataHumanHeadObject humanHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataHumanHeadObject, "humanHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v251 + 1) + 8 * ii), v6, v22)}];
            }

            v53 = [v23 countByEnumeratingWithState:&v251 objects:v250 count:16];
          }

          while (v53);
          v30 = @"humanHead";
        }

        else if ([v21 isEqualToString:v195])
        {
          v249 = 0u;
          v248 = 0u;
          v247 = 0u;
          v246 = 0u;
          v56 = [v23 countByEnumeratingWithState:&v246 objects:v245 count:16];
          if (!v56)
          {
            v30 = @"catHead";
            goto LABEL_119;
          }

          v57 = v56;
          v33 = b_high;
          v58 = *v247;
          do
          {
            for (jj = 0; jj != v57; ++jj)
            {
              if (*v247 != v58)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataCatHeadObject catHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataCatHeadObject, "catHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v246 + 1) + 8 * jj), v6, v22)}];
            }

            v57 = [v23 countByEnumeratingWithState:&v246 objects:v245 count:16];
          }

          while (v57);
          v30 = @"catHead";
        }

        else if ([v21 isEqualToString:v193])
        {
          v244 = 0u;
          v243 = 0u;
          v242 = 0u;
          v241 = 0u;
          v60 = [v23 countByEnumeratingWithState:&v241 objects:v240 count:16];
          if (!v60)
          {
            v30 = @"dogHead";
            goto LABEL_119;
          }

          v61 = v60;
          v33 = b_high;
          v62 = *v242;
          do
          {
            for (kk = 0; kk != v61; ++kk)
            {
              if (*v242 != v62)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataDogHeadObject dogHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataDogHeadObject, "dogHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v241 + 1) + 8 * kk), v6, v22)}];
            }

            v61 = [v23 countByEnumeratingWithState:&v241 objects:v240 count:16];
          }

          while (v61);
          v30 = @"dogHead";
        }

        else
        {
          if (![v21 isEqualToString:v190])
          {
            goto LABEL_120;
          }

          v239 = 0u;
          v238 = 0u;
          v237 = 0u;
          v236 = 0u;
          v64 = [v23 countByEnumeratingWithState:&v236 objects:v235 count:16];
          if (!v64)
          {
            v30 = @"humanHand";
            goto LABEL_119;
          }

          v65 = v64;
          v33 = b_high;
          v66 = *v237;
          do
          {
            for (mm = 0; mm != v65; ++mm)
            {
              if (*v237 != v66)
              {
                objc_enumerationMutation(v23);
              }

              [v16 addObject:{+[AVMetadataHumanHandObject humanHandObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:](AVMetadataHumanHandObject, "humanHandObjectWithFigEmbeddedCaptureDeviceObjectDictionary:input:timeStamp:", *(*(&v236 + 1) + 8 * mm), v6, v22)}];
            }

            v65 = [v23 countByEnumeratingWithState:&v236 objects:v235 count:16];
          }

          while (v65);
          v30 = @"humanHand";
        }

        b_high = v33;
        v17 = v207;
LABEL_118:
        v15 = v206;
        goto LABEL_119;
      }

      array2 = [MEMORY[0x1E695DF70] array];
      v284 = 0u;
      v285 = 0u;
      v286 = 0u;
      v287 = 0u;
      v25 = [v23 countByEnumeratingWithState:&v284 objects:&v280 count:16];
      if (v25)
      {
        v26 = v25;
        v208 = b_high;
        v27 = *v285;
        do
        {
          for (nn = 0; nn != v26; ++nn)
          {
            if (*v285 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v29 = [AVMetadataFaceObject faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:*(*(&v284 + 1) + 8 * nn) input:v6 timeStamp:v22];
            [v16 addObject:v29];
            [array2 addObject:v29];
          }

          v26 = [v23 countByEnumeratingWithState:&v284 objects:&v280 count:16];
        }

        while (v26);
        v30 = @"face";
        v17 = v207;
        b_high = v208;
        goto LABEL_118;
      }

      v30 = @"face";
LABEL_119:
      [v17 addObject:v30];
LABEL_120:
      v20 = v217 + 1;
    }

    while (v217 + 1 != v215);
    v68 = [v15 countByEnumeratingWithState:&v288 objects:&v294 count:16];
    v215 = v68;
  }

  while (v68);
  v209 = b_high;
  v69 = array2 == 0;
  bufferCopy6 = buffer;
LABEL_128:
  v70 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D18], 0);
  if (v70)
  {
    v71 = v70;
    if ([v70 intValue])
    {
      v233 = 0u;
      v234 = 0u;
      v231 = 0u;
      v232 = 0u;
      v72 = [v16 countByEnumeratingWithState:&v231 objects:v230 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v232;
        do
        {
          for (i1 = 0; i1 != v73; ++i1)
          {
            if (*v232 != v74)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v231 + 1) + 8 * i1) setDetectionSource:{objc_msgSend(v71, "intValue")}];
          }

          v73 = [v16 countByEnumeratingWithState:&v231 objects:v230 count:16];
        }

        while (v73);
      }
    }
  }

  if ((v192 | v191))
  {
    v76 = FigCaptureFrontCameraRotationAngle();
    array3 = [MEMORY[0x1E695DF70] array];
    v79 = *MEMORY[0x1E695EFD0];
    v78 = *(MEMORY[0x1E695EFD0] + 16);
    *&v229.a = *MEMORY[0x1E695EFD0];
    *&v229.c = v78;
    v80 = *(MEMORY[0x1E695EFD0] + 32);
    *&v229.tx = v80;
    if (v76 == 90)
    {
      *&time1.a = xmmword_1A92AB9F0;
      time1.c = 1.0;
      time1.d = 0.0;
      time1.tx = 0.0;
    }

    else
    {
      if (v76)
      {
        if (v76 == -90)
        {
          *&time1.b = xmmword_1A92AB9D0;
          *&time1.d = xmmword_1A92AB9E0;
          time1.a = 0.0;
          time1.ty = 0.0;
          goto LABEL_145;
        }

        goto LABEL_146;
      }

      time1.a = -1.0;
      time1.b = 0.0;
      *&time1.d = xmmword_1A92AB9C0;
      time1.c = 0.0;
    }

    time1.ty = 1.0;
LABEL_145:
    *&time2.a = v79;
    *&time2.c = v78;
    *&time2.tx = v80;
    CGAffineTransformConcat(&v229, &time2, &time1);
LABEL_146:
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v81 = [v16 countByEnumeratingWithState:&v223 objects:v222 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v224;
      do
      {
        for (i2 = 0; i2 != v82; ++i2)
        {
          if (*v224 != v83)
          {
            objc_enumerationMutation(v16);
          }

          originalMetadataObject = [*(*(&v223 + 1) + 8 * i2) originalMetadataObject];
          time1 = v229;
          [array3 addObject:{+[AVMetadataObject derivedMetadataObjectFromMetadataObject:withTransform:isVideoMirrored:rollAdjustment:](AVMetadataObject, "derivedMetadataObjectFromMetadataObject:withTransform:isVideoMirrored:rollAdjustment:", originalMetadataObject, &time1, 0, (v76 + 180))}];
        }

        v82 = [v16 countByEnumeratingWithState:&v223 objects:v222 count:16];
      }

      while (v82);
    }

    v16 = array3;
  }

  bufferCopy6 = buffer;
  v86 = [MEMORY[0x1E695DFD8] setWithObjects:{@"face", @"humanBody", @"humanFullBody", @"catBody", @"dogBody", @"salientObject", @"humanHead", @"catHead", @"dogHead", @"humanHand", 0}];
  v87 = [MEMORY[0x1E695DFA8] setWithArray:v201];
  [v87 intersectSet:v86];
  v229.a = a;
  *&v229.b = __PAIR64__(v209, b_low);
  v229.c = c;
  v88 = [AVMetadataObjectCollection collectionWithTime:&v229 metadataObjectTypes:v17 handledMetadataObjectTypes:v87 metadataObjects:v16];

  if (v88)
  {
    [array addObject:v88];
  }

  if (!v69)
  {
    goto LABEL_173;
  }

LABEL_157:
  previousTwoCMTimesByDetectorType = selfCopy->_internal->previousTwoCMTimesByDetectorType;
  if (!CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D38], 0))
  {
    goto LABEL_173;
  }

  v90 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D30], 0);
  v91 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v280 = 0u;
  v281 = 0u;
  v282 = 0u;
  v283 = 0u;
  v92 = [v90 countByEnumeratingWithState:&v280 objects:&v294 count:16];
  if (!v92)
  {
    memset(&v275, 0, sizeof(v275));
LABEL_170:
    avcmdo_nextTimeForDetector(previousTwoCMTimesByDetectorType, @"AVMetadataDetectorLegacyFaces", &v275);
    goto LABEL_171;
  }

  v93 = v92;
  v218 = previousTwoCMTimesByDetectorType;
  v94 = 0;
  v95 = *v281;
  v96 = *MEMORY[0x1E6991140];
  do
  {
    for (i3 = 0; i3 != v93; ++i3)
    {
      if (*v281 != v95)
      {
        objc_enumerationMutation(v90);
      }

      v98 = *(*(&v280 + 1) + 8 * i3);
      v99 = [v98 objectForKeyedSubscript:v96];
      if (!v94)
      {
        v94 = v99;
      }

      [v91 addObject:{+[AVMetadataFaceObject faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:input:timeStamp:](AVMetadataFaceObject, "faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:input:timeStamp:", v98, v6, v99)}];
    }

    v93 = [v90 countByEnumeratingWithState:&v280 objects:&v294 count:16];
  }

  while (v93);
  memset(&v275, 0, sizeof(v275));
  previousTwoCMTimesByDetectorType = v218;
  if (!v94)
  {
    goto LABEL_170;
  }

  [v94 longLongValue];
  v100 = FigHostTimeToNanoseconds();
  CMTimeMake(&v275, v100, 1000000000);
  v270[0] = v275;
  avcmdo_addCMTimeToHistoryForDetector(v218, &v270[0].value, @"AVMetadataDetectorLegacyFaces");
LABEL_171:
  bufferCopy6 = buffer;
  v101 = [MEMORY[0x1E695DFD8] setWithObject:@"face"];
  v270[0] = v275;
  v102 = [AVMetadataObjectCollection collectionWithTime:v270 metadataObjectTypes:v101 handledMetadataObjectTypes:v101 metadataObjects:v91];

  if (v102)
  {
    [array addObject:v102];
  }

LABEL_173:
  v103 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D78], 0);
  v104 = 0x1E695D000uLL;
  if (v103)
  {
    v105 = v103;
    memset(&v294, 0, sizeof(v294));
    CMSampleBufferGetPresentationTimeStamp(&v294, bufferCopy6);
    v106 = [MEMORY[0x1E695DFD8] setWithObject:@"trackedFaces"];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v275.value = [AVMetadataTrackedFacesObject trackedFacesWithTime:&v280 faceTrackingDictionary:v105 input:v6];
    v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v108 = [AVMetadataObjectCollection collectionWithTime:&v280 metadataObjectTypes:v106 handledMetadataObjectTypes:v106 metadataObjects:v107];
    if (v108)
    {
      [array addObject:v108];
    }
  }

  v109 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D50], 0);
  if (v109)
  {
    v110 = v109;
    memset(&v294, 0, sizeof(v294));
    CMSampleBufferGetPresentationTimeStamp(&v294, bufferCopy6);
    v111 = [MEMORY[0x1E695DFD8] setWithObject:@"offlineVideoStabilizationMotion"];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v275.value = [AVMetadataOfflineVideoStabilizationMotionObject offlineVideoStabilizationMotionObjectWithTime:&v280 motionDictionary:v110 input:v6];
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v113 = [AVMetadataObjectCollection collectionWithTime:&v280 metadataObjectTypes:v111 handledMetadataObjectTypes:v111 metadataObjects:v112];
    if (v113)
    {
      [array addObject:v113];
    }
  }

  v114 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D20], 0);
  if (v114)
  {
    v115 = v114;
    memset(&v294, 0, sizeof(v294));
    CMSampleBufferGetPresentationTimeStamp(&v294, bufferCopy6);
    v116 = [MEMORY[0x1E695DFD8] setWithObject:@"EyeReliefStatus"];
    v117 = [objc_msgSend(v115 objectForKeyedSubscript:{*MEMORY[0x1E6991248]), "intValue"}];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    bufferCopy6 = buffer;
    v275.value = [AVMetadataEyeReliefStatusObject eyeReliefStatusObjectWithEyeReliefStatus:v117 input:v6 time:&v280 optionalInfoDict:v115];
    v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v119 = [AVMetadataObjectCollection collectionWithTime:&v280 metadataObjectTypes:v116 handledMetadataObjectTypes:v116 metadataObjects:v118];
    if (v119)
    {
      [array addObject:v119];
    }
  }

  v120 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D28], 0);
  if (v120)
  {
    v121 = v120;
    memset(&v294, 0, sizeof(v294));
    CMSampleBufferGetPresentationTimeStamp(&v294, bufferCopy6);
    v122 = [MEMORY[0x1E695DFD8] setWithObject:@"FaceIDReadiness"];
    v123 = [v121 objectForKeyedSubscript:*MEMORY[0x1E6991258]];
    v124 = [v121 objectForKeyedSubscript:*MEMORY[0x1E6991250]];
    v125 = [v121 objectForKeyedSubscript:*MEMORY[0x1E6991260]];
    bOOLValue = [v123 BOOLValue];
    intValue = [v124 intValue];
    intValue2 = [v125 intValue];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v129 = bOOLValue;
    bufferCopy6 = buffer;
    v275.value = [AVMetadataFaceIDReadinessObject faceIDReadinessObjectWithReady:v129 coachingStatus:intValue userEngagementStatus:intValue2 input:v6 time:&v280];
    v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v131 = [AVMetadataObjectCollection collectionWithTime:&v280 metadataObjectTypes:v122 handledMetadataObjectTypes:v122 metadataObjects:v130];
    v132 = selfCopy;
    if (v131)
    {
      [array addObject:v131];
    }
  }

  else
  {
    v132 = selfCopy;
  }

  v133 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990D48], 0);
  if (v133)
  {
    v134 = v133;
    memset(&v294, 0, sizeof(v294));
    CMSampleBufferGetPresentationTimeStamp(&v294, bufferCopy6);
    v135 = [MEMORY[0x1E695DFD8] setWithObject:@"MotionToWake"];
    v136 = [objc_msgSend(v134 objectForKeyedSubscript:{*MEMORY[0x1E6991268]), "intValue"}];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v275.value = [AVMetadataMotionToWakeObject motionToWakeObjectWithDetectedMotion:v136 input:v6 time:&v280];
    v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v138 = [AVMetadataObjectCollection collectionWithTime:&v280 metadataObjectTypes:v135 handledMetadataObjectTypes:v135 metadataObjects:v137];
    if (v138)
    {
      [array addObject:v138];
    }
  }

  v216 = v132->_internal->previousTwoCMTimesByDetectorType;
  if (CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990CF0], 0))
  {
    v270[0].value = *MEMORY[0x1E6960C70];
    flags = *(MEMORY[0x1E6960C70] + 12);
    v270[0].timescale = *(MEMORY[0x1E6960C70] + 8);
    epoch = *(MEMORY[0x1E6960C70] + 16);
    v219 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v141 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v142 = CMGetAttachment(bufferCopy6, *MEMORY[0x1E6990CE8], 0);
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v283 = 0u;
    v143 = v142;
    v144 = [v142 countByEnumeratingWithState:&v280 objects:&v294 count:16];
    if (v144)
    {
      v145 = v144;
      v146 = *v281;
      do
      {
        for (i4 = 0; i4 != v145; ++i4)
        {
          if (*v281 != v146)
          {
            objc_enumerationMutation(v143);
          }

          v148 = [AVMetadataMachineReadableCodeObject machineReadableCodeObjectWithFigEmbeddedCaptureDeviceMachineReadableCodeDictionary:*(*(&v280 + 1) + 8 * i4) input:v6];
          v149 = v148;
          if ((flags & 1) == 0)
          {
            if (v148)
            {
              [(AVMetadataObject *)v148 time];
              flags = v275.flags;
              epoch = v275.epoch;
            }

            else
            {
              epoch = 0;
              flags = 0;
              memset(&v275, 0, sizeof(v275));
            }

            v270[0].value = v275.value;
            v270[0].timescale = v275.timescale;
            v275.flags = flags;
            v275.epoch = epoch;
            avcmdo_addCMTimeToHistoryForDetector(v216, &v275.value, @"AVMetadataDetectorBarcodes");
          }

          [v219 addObject:v149];
          [v141 addObject:{-[AVMetadataObject type](v149, "type")}];
        }

        v145 = [v143 countByEnumeratingWithState:&v280 objects:&v294 count:16];
      }

      while (v145);
    }

    if ((flags & 1) == 0)
    {
      avcmdo_nextTimeForDetector(v216, @"AVMetadataDetectorBarcodes", &v275);
      v270[0].value = v275.value;
      flags = v275.flags;
      v270[0].timescale = v275.timescale;
      epoch = v275.epoch;
    }

    v150 = [MEMORY[0x1E695DFD8] setWithObjects:{@"org.gs1.UPC-E", @"org.iso.Code39", @"org.iso.Code39Mod43", @"org.gs1.EAN-13", @"org.gs1.EAN-8", @"com.intermec.Code93", @"org.iso.Code128", @"org.iso.PDF417", @"org.iso.QRCode", @"org.iso.Aztec", @"org.ansi.Interleaved2of5", @"org.gs1.ITF14", @"org.iso.DataMatrix", @"Codabar", @"org.gs1.GS1DataBar", @"org.gs1.GS1DataBarExpanded", @"org.gs1.GS1DataBarLimited", @"org.iso.MicroQR", @"org.iso.MicroPDF417", 0}];
    v151 = [MEMORY[0x1E695DFA8] setWithArray:v201];
    [v151 intersectSet:v150];
    v275.value = v270[0].value;
    v275.timescale = v270[0].timescale;
    v275.flags = flags;
    v275.epoch = epoch;
    v152 = [AVMetadataObjectCollection collectionWithTime:&v275 metadataObjectTypes:v141 handledMetadataObjectTypes:v151 metadataObjects:v219];

    v132 = selfCopy;
    v104 = 0x1E695D000uLL;
    if (v152)
    {
      [array addObject:v152];
    }
  }

  bufferCopy10 = buffer;
  v154 = CMGetAttachment(buffer, *MEMORY[0x1E6990D80], 0);
  if (v154)
  {
    v155 = v154;
    memset(&v294, 0, sizeof(v294));
    CMSampleBufferGetPresentationTimeStamp(&v294, buffer);
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v156 = [AVMetadataVideoPreviewHistogramObject videoPreviewHistogramObjectWithLumaHistogramData:v155 input:v6 time:&v280];
    v157 = [MEMORY[0x1E695DFD8] setWithObject:@"videoPreviewHistogram"];
    v275.value = v156;
    v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    bufferCopy10 = buffer;
    v159 = [AVMetadataObjectCollection collectionWithTime:&v280 metadataObjectTypes:v157 handledMetadataObjectTypes:v157 metadataObjects:v158];
    if (v159)
    {
      [array addObject:v159];
    }
  }

  v220 = v132->_internal->previousTwoCMTimesByDetectorType;
  if (CMGetAttachment(bufferCopy10, *MEMORY[0x1E698F8C0], 0))
  {
    v270[0].value = *MEMORY[0x1E6960C70];
    v160 = *(MEMORY[0x1E6960C70] + 12);
    v270[0].timescale = *(MEMORY[0x1E6960C70] + 8);
    v161 = *(MEMORY[0x1E6960C70] + 16);
    v162 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v163 = CMGetAttachment(bufferCopy10, *MEMORY[0x1E698F8B8], 0);
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v283 = 0u;
    v164 = [v163 countByEnumeratingWithState:&v280 objects:&v294 count:16];
    if (v164)
    {
      v165 = v164;
      v166 = *v281;
      do
      {
        for (i5 = 0; i5 != v165; ++i5)
        {
          if (*v281 != v166)
          {
            objc_enumerationMutation(v163);
          }

          v168 = [AVMetadataMachineReadableCodeObject machineReadableCodeObjectWithAppClipCodeDictionary:*(*(&v280 + 1) + 8 * i5) input:v6];
          if (v168)
          {
            v169 = v168;
            if ((v160 & 1) == 0)
            {
              [(AVMetadataObject *)v168 time];
              v270[0].value = v275.value;
              v160 = v275.flags;
              v270[0].timescale = v275.timescale;
              v161 = v275.epoch;
              avcmdo_addCMTimeToHistoryForDetector(v220, &v275.value, @"AVMetadataDetectorAppClipCodes");
            }

            [v162 addObject:v169];
          }
        }

        v165 = [v163 countByEnumeratingWithState:&v280 objects:&v294 count:16];
      }

      while (v165);
    }

    if ((v160 & 1) == 0)
    {
      avcmdo_nextTimeForDetector(v220, @"AVMetadataDetectorAppClipCodes", &v275);
      v270[0].value = v275.value;
      v160 = v275.flags;
      v270[0].timescale = v275.timescale;
      v161 = v275.epoch;
    }

    v170 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.AppClipCode"];
    v275.value = v270[0].value;
    v275.timescale = v270[0].timescale;
    v275.flags = v160;
    v275.epoch = v161;
    v171 = [AVMetadataObjectCollection collectionWithTime:&v275 metadataObjectTypes:v170 handledMetadataObjectTypes:v170 metadataObjects:v162];

    v132 = selfCopy;
    bufferCopy10 = buffer;
    v104 = 0x1E695D000;
    if (v171)
    {
      [array addObject:v171];
    }
  }

  v221 = v132->_internal->previousTwoCMTimesByDetectorType;
  if (CMGetAttachment(bufferCopy10, *MEMORY[0x1E6990D70], 0))
  {
    v172 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v270[0].value = *MEMORY[0x1E6960C70];
    v173 = *(MEMORY[0x1E6960C70] + 12);
    v270[0].timescale = *(MEMORY[0x1E6960C70] + 8);
    v174 = *(MEMORY[0x1E6960C70] + 16);
    v175 = CMGetAttachment(bufferCopy10, *MEMORY[0x1E6990D68], 0);
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v283 = 0u;
    v176 = [v175 countByEnumeratingWithState:&v280 objects:&v294 count:16];
    if (v176)
    {
      v177 = v176;
      v178 = *v281;
      do
      {
        for (i6 = 0; i6 != v177; ++i6)
        {
          if (*v281 != v178)
          {
            objc_enumerationMutation(v175);
          }

          v180 = [AVMetadataTextRegionObject textRegionObjectWithDictionary:*(*(&v280 + 1) + 8 * i6) input:v6];
          if (v180)
          {
            v181 = v180;
            [v172 addObject:v180];
            if ((v173 & 1) == 0)
            {
              [(AVMetadataObject *)v181 time];
              v270[0].value = v275.value;
              v173 = v275.flags;
              v270[0].timescale = v275.timescale;
              v174 = v275.epoch;
              avcmdo_addCMTimeToHistoryForDetector(v221, &v275.value, @"AVMetadataDetectorTextRegions");
            }
          }
        }

        v177 = [v175 countByEnumeratingWithState:&v280 objects:&v294 count:16];
      }

      while (v177);
    }

    if ((v173 & 1) == 0)
    {
      avcmdo_nextTimeForDetector(v221, @"AVMetadataDetectorTextRegions", &v275);
      v270[0].value = v275.value;
      v173 = v275.flags;
      v270[0].timescale = v275.timescale;
      v174 = v275.epoch;
    }

    v182 = [MEMORY[0x1E695DFD8] setWithObject:@"textRegion"];
    v275.value = v270[0].value;
    v275.timescale = v270[0].timescale;
    v275.flags = v173;
    v275.epoch = v174;
    v183 = [AVMetadataObjectCollection collectionWithTime:&v275 metadataObjectTypes:v182 handledMetadataObjectTypes:v182 metadataObjects:v172];

    v132 = selfCopy;
    bufferCopy10 = buffer;
    v104 = 0x1E695D000uLL;
    if (v183)
    {
      [array addObject:v183];
    }
  }

  v184 = CMGetAttachment(bufferCopy10, *MEMORY[0x1E6990D60], 0);
  if (v184)
  {
    v185 = v184;
    memset(&v294, 0, sizeof(v294));
    CMSampleBufferGetPresentationTimeStamp(&v294, bufferCopy10);
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v186 = [AVMetadataSceneClassificationObject sceneClassificationObjectWithConfidences:v185 input:v6 time:&v280];
    v187 = [MEMORY[0x1E695DFD8] setWithObject:@"sceneClassification"];
    v275.value = v186;
    v188 = [*(v104 + 3784) arrayWithObjects:&v275 count:1];
    v280 = *&v294.value;
    *&v281 = v294.epoch;
    v189 = [AVMetadataObjectCollection collectionWithTime:&v280 metadataObjectTypes:v187 handledMetadataObjectTypes:v187 metadataObjects:v188];
    v5 = v194;
    if (v189)
    {
      [array addObject:v189];
    }
  }

  else
  {
    v5 = v194;
  }

  if ([array count])
  {
    if (v132->_internal->synchronizationEnabled)
    {
      [(AVCaptureMetadataOutput *)v132 _processSynchronizationWithCollections:array withCorrespondingMetadataObjectTypes:[(AVCaptureMetadataOutput *)v132 metadataObjectTypesForMetadataIdentifiers:CMGetAttachment(buffer, *MEMORY[0x1E6990C78], 0)]];
    }

    else
    {
      [(AVCaptureMetadataOutput *)v132 _emitCollections:array];
    }
  }

LABEL_248:
}

- (void)_processSynchronizationWithCollections:(id)collections withCorrespondingMetadataObjectTypes:(id)types
{
  if (self->_internal->synchronizationEnabled && [collections count])
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    synchronizedMetadataCollectionsQueue = self->_internal->synchronizedMetadataCollectionsQueue;
    if (!synchronizedMetadataCollectionsQueue)
    {
      self->_internal->synchronizedMetadataCollectionsQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
      synchronizedMetadataCollectionsQueue = self->_internal->synchronizedMetadataCollectionsQueue;
    }

    v9 = synchronizedMetadataCollectionsQueue;
    objc_sync_exit(internal);
    if ([types count])
    {
      v10 = [MEMORY[0x1E695DFA8] setWithArray:{-[AVCaptureMetadataOutput metadataObjectTypesSupportingZeroFrameDelaySynchronization](self, "metadataObjectTypesSupportingZeroFrameDelaySynchronization")}];
      [v10 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", types)}];
    }

    else
    {
      v10 = 0;
    }

    v21 = 0uLL;
    v11 = [collections objectAtIndexedSubscript:0];
    if (v11)
    {
      [v11 time];
    }

    else
    {
      v21 = 0uLL;
    }

    v12 = [(NSMutableArray *)v9 count];
    if ([(NSMutableArray *)v9 count])
    {
      v19 = v10;
      v13 = 0;
      while (1)
      {
        v14 = [(NSMutableArray *)v9 objectAtIndexedSubscript:v13, v19];
        v15 = v14;
        if (v14)
        {
          [v14 time];
          v16 = (v20.flags & 0x1F) == 3;
        }

        else
        {
          v16 = 0;
          memset(&v20, 0, sizeof(v20));
        }

        if (v16 || (BYTE12(v21) & 0x1F) == 3)
        {
          memset(&time1, 0, sizeof(time1));
          lhs = v20;
          *&rhs.value = v21;
          rhs.epoch = 0;
          CMTimeSubtract(&time, &lhs, &rhs);
          CMTimeAbsoluteValue(&time1, &time);
          CMTimeMake(&time, 1, 1000000000);
          lhs = time1;
          if (CMTimeCompare(&lhs, &time) <= 0)
          {
            break;
          }
        }

        time1 = v20;
        *&time.value = v21;
        time.epoch = 0;
        if (!CMTimeCompare(&time1, &time))
        {
          break;
        }

        if (v15)
        {
          [v15 time];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        *&time.value = v21;
        time.epoch = 0;
        if (CMTimeCompare(&time1, &time) >= 1)
        {
          v12 = v13;
LABEL_29:
          v10 = v19;
          goto LABEL_30;
        }

        if (++v13 >= [(NSMutableArray *)v9 count])
        {
          goto LABEL_29;
        }
      }

      [v15 skipMetadataObjectTypes:v19];
      [v15 addCollections:collections];
      if ([v15 readyToEmit])
      {
        [(AVCaptureMetadataOutput *)self _emitSyncedCollections:v15];
        [(NSMutableArray *)v9 removeObject:v15];
      }
    }

    else
    {
LABEL_30:
      if (v12 != -1)
      {
        v17 = [[AVCaptureSynchronizedMetadataCollections alloc] initWithMetadataCollections:collections expectedMetadataObjectTypes:[(AVCaptureMetadataOutput *)self metadataObjectTypes]];
        v18 = [(AVCaptureMetadataOutput *)self _newEmitTimerForSynchronizedMetadataCollections:v17];
        [(AVCaptureSynchronizedMetadataCollections *)v17 setEmitTimer:v18];

        [(AVCaptureSynchronizedMetadataCollections *)v17 skipMetadataObjectTypes:v10];
        if ([(AVCaptureSynchronizedMetadataCollections *)v17 readyToEmit])
        {
          [(AVCaptureMetadataOutput *)self _emitSyncedCollections:v17];
        }

        else
        {
          [(NSMutableArray *)v9 insertObject:v17 atIndex:v12];
        }

        if ([(NSMutableArray *)v9 count]> self->_internal->maxSynchronizationFrameDelay)
        {
          [(AVCaptureMetadataOutput *)self _emitSyncedCollections:[(NSMutableArray *)v9 objectAtIndexedSubscript:0]];
          [(NSMutableArray *)v9 removeObjectAtIndex:0];
        }
      }
    }
  }
}

- (id)_newEmitTimerForSynchronizedMetadataCollections:(id)collections
{
  internal = self->_internal;
  if (!internal->maxSynchronizationFrameDelay)
  {
    return 0;
  }

  activeCallbackQueue = [(AVCaptureDataOutputDelegateCallbackHelper *)internal->delegateCallbackHelper activeCallbackQueue];
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, activeCallbackQueue);
  sourceDevice = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()] sourceDevice];
  if (sourceDevice)
  {
    [sourceDevice activeVideoMaxFrameDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = CMTimeGetSeconds(&time) * self->_internal->maxSynchronizationFrameDelay;
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  dispatch_source_set_timer(v7, v10, 0xFFFFFFFFFFFFFFFFLL, (v9 * 0.1 * 1000000000.0));
  objc_initWeak(&time, collections);
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__AVCaptureMetadataOutput__newEmitTimerForSynchronizedMetadataCollections___block_invoke;
  v12[3] = &unk_1E7875D90;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &time);
  dispatch_source_set_event_handler(v7, v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  objc_destroyWeak(&time);
  return v7;
}

id __75__AVCaptureMetadataOutput__newEmitTimerForSynchronizedMetadataCollections___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  result = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v4 = result;
    if (result)
    {
      [Weak _emitSyncedCollections:result];
      v5 = Weak[2];
      objc_sync_enter(v5);
      [*(Weak[2] + 136) removeObject:v4];

      return objc_sync_exit(v5);
    }
  }

  return result;
}

- (void)_emitSyncedCollections:(id)collections
{
  [collections setEmitTimer:0];
  metadataCollections = [collections metadataCollections];

  [(AVCaptureMetadataOutput *)self _emitCollections:metadataCollections];
}

- (void)_emitCollections:(id)collections
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = [(AVCaptureOutput *)self connectionWithMediaType:AVMediaTypeForMetadataObjects()];
  objc_sync_exit(internal);
  if (-[AVCaptureConnection isLive](v6, "isLive") && [-[AVCaptureOutput session](self "session")])
  {
    [(AVCaptureMetadataOutput *)self _emitCollections:collections, v6, &self->_internal];
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

- (uint64_t)_emitCollections:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [objc_msgSend(a1 "session")];
  if ((result & 1) == 0)
  {
    v9 = [*(*a4 + 8) activeDelegate];
    if (objc_opt_respondsToSelector())
    {

      return [v9 captureOutput:a1 didOutputMetadataObjectCollections:a2 fromConnection:a3];
    }

    else if (objc_opt_respondsToSelector())
    {
      v10 = avcmdo_allMetadataObjectsInCollections(a2);
      v11 = avcmdo_allMetadataObjectTypesInCollections(a2);

      return [v9 captureOutput:a1 didOutputMetadataObjects:v10 forMetadataObjectTypes:v11 fromConnection:a3];
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v12 = avcmdo_allMetadataObjectsInCollections(a2);

        return [v9 captureOutput:a1 didOutputMetadataObjects:v12 fromConnection:a3];
      }
    }
  }

  return result;
}

@end