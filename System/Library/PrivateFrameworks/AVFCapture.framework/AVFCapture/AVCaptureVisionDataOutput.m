@interface AVCaptureVisionDataOutput
- (AVCaptureVisionDataOutput)init;
- (BOOL)_isPropertySupported:(id)a3;
- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4;
- (id)addConnection:(id)a3 error:(id *)a4;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)a3;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)a3;
- (void)_initializeClientVisiblePropertiesForSourceDevice:(id)a3;
- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_updateLocalQueue:(localQueueOpaque *)a3;
- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)handleChangedActiveFormat:(id)a3 forDevice:(id)a4;
- (void)removeConnection:(id)a3;
- (void)setDelegate:(id)a3 callbackQueue:(id)a4;
- (void)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4;
- (void)setDynamicThresholdingEnabled:(BOOL)a3;
- (void)setFeatureBinningEnabled:(BOOL)a3;
- (void)setFeatureMatchingDescriptorSize:(unint64_t)a3;
- (void)setFeatureMatchingEnabled:(BOOL)a3;
- (void)setFeatureOrientationAssignmentEnabled:(BOOL)a3;
- (void)setGaussianPyramidBaseOctaveDownscalingFactor:(float)a3;
- (void)setGaussianPyramidOctavesCount:(unint64_t)a3;
- (void)setHammingDistanceThreshold:(unint64_t)a3;
- (void)setKeypointDetectionFlowType:(unint64_t)a3;
- (void)setKeypointDetectionThreshold:(float)a3;
- (void)setLaccConfigAndMetadata:(id)a3;
- (void)setMaxBurstDuration:(id *)a3;
- (void)setMaxKeypointsCount:(unint64_t)a3;
- (void)setMinBurstFrameDuration:(id *)a3;
- (void)setMinFrameDuration:(id *)a3;
- (void)setOrientationDistanceThreshold:(float)a3;
- (void)setRuntimeUpdates:(id)a3;
- (void)setSigmaDistanceThreshold:(float)a3;
- (void)setSquareDistanceDisparityFraction:(float)a3;
- (void)setSubPixelThreshold:(unint64_t)a3;
- (void)triggerBurst;
@end

@implementation AVCaptureVisionDataOutput

- (AVCaptureVisionDataOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureVisionDataOutput;
  v2 = [(AVCaptureOutput *)&v5 initSubclass];
  if (v2)
  {
    v3 = objc_alloc_init(AVCaptureVisionDataOutputInternal);
    v2->_internal = v3;
    if (v3)
    {
      v2->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v2];
      [(AVCaptureVisionDataOutput *)v2 _initializeClientVisiblePropertiesForSourceDevice:0];
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
  v3.receiver = self;
  v3.super_class = AVCaptureVisionDataOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setDelegate:(id)a3 callbackQueue:(id)a4
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    a4 = 0;
  }

  [(AVCaptureVisionDataOutput *)self willChangeValueForKey:@"delegate"];
  v8 = 0;
  if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setClientDelegate:a3 clientCallbackQueue:a4 exceptionReason:&v8])
  {
    [(AVCaptureVisionDataOutput *)self didChangeValueForKey:@"delegate"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureVisionDataOutput *)self didChangeValueForKey:@"delegate"];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (void)setMinFrameDuration:(id *)a3
{
  v5 = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:@"visn"] sourceDevice];
  v6 = v5;
  var0 = a3->var0;
  var2 = a3->var2;
  var1 = a3->var1;
  if (var2)
  {
    var3 = a3->var3;
  }

  else
  {
    if (!v5)
    {
      var2 = 0;
      var3 = 0;
      var1 = 0;
      var0 = 0;
      goto LABEL_17;
    }

    [v5 activeVideoMinFrameDuration];
    var3 = v18.epoch;
    var0 = v18.value;
    var2 = v18.flags;
    var1 = v18.timescale;
    if ((v18.flags & 1) == 0)
    {
LABEL_17:
      internal = self->_internal;
      v18.timescale = var1;
      v18.flags = var2;
      v18.epoch = var3;
      minFrameDuration = internal->minFrameDuration;
      v18.value = var0;
      if (CMTimeCompare(&v18, &minFrameDuration))
      {
        v13 = self->_internal;
        v14 = *&a3->var0;
        v13->minFrameDuration.epoch = a3->var3;
        *&v13->minFrameDuration.value = v14;
        [(AVCaptureOutput *)self bumpChangeSeed];
      }

      return;
    }
  }

  memset(&v18, 0, sizeof(v18));
  v9 = [v6 activeFormat];
  if (v9)
  {
    [v9 lowestSupportedVideoFrameDuration];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  memset(&minFrameDuration, 0, sizeof(minFrameDuration));
  v10 = [v6 activeFormat];
  if (v10)
  {
    [v10 highestSupportedVideoFrameDuration];
  }

  else
  {
    memset(&minFrameDuration, 0, sizeof(minFrameDuration));
  }

  time1.timescale = var1;
  time1.flags = var2;
  time1.epoch = var3;
  time2 = v18;
  time1.value = var0;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    time1.timescale = var1;
    time1.flags = var2;
    time1.epoch = var3;
    time2 = minFrameDuration;
    time1.value = var0;
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      goto LABEL_17;
    }
  }

  v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

- (void)setMinBurstFrameDuration:(id *)a3
{
  v5 = [(AVCaptureConnection *)[(AVCaptureOutput *)self connectionWithMediaType:@"visn"] sourceDevice];
  v6 = v5;
  var0 = a3->var0;
  var2 = a3->var2;
  var1 = a3->var1;
  if (var2)
  {
    var3 = a3->var3;
  }

  else
  {
    if (!v5)
    {
      var2 = 0;
      var3 = 0;
      var1 = 0;
      var0 = 0;
      goto LABEL_17;
    }

    [v5 activeVideoMinFrameDuration];
    var3 = v17.epoch;
    var0 = v17.value;
    var2 = v17.flags;
    var1 = v17.timescale;
    if ((v17.flags & 1) == 0)
    {
LABEL_17:
      internal = self->_internal;
      v17.timescale = var1;
      v17.flags = var2;
      v17.epoch = var3;
      minBurstFrameDuration = internal->minBurstFrameDuration;
      v17.value = var0;
      if (CMTimeCompare(&v17, &minBurstFrameDuration))
      {
        v13 = self->_internal;
        v13->minBurstFrameDuration.value = var0;
        v13->minBurstFrameDuration.timescale = var1;
        v13->minBurstFrameDuration.flags = var2;
        v13->minBurstFrameDuration.epoch = var3;
        [(AVCaptureOutput *)self bumpChangeSeed];
      }

      return;
    }
  }

  memset(&v17, 0, sizeof(v17));
  v9 = [v6 activeFormat];
  if (v9)
  {
    [v9 lowestSupportedVideoFrameDuration];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  memset(&minBurstFrameDuration, 0, sizeof(minBurstFrameDuration));
  v10 = [v6 activeFormat];
  if (v10)
  {
    [v10 highestSupportedVideoFrameDuration];
  }

  else
  {
    memset(&minBurstFrameDuration, 0, sizeof(minBurstFrameDuration));
  }

  time1.timescale = var1;
  time1.flags = var2;
  time1.epoch = var3;
  time2 = v17;
  time1.value = var0;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    time1.timescale = var1;
    time1.flags = var2;
    time1.epoch = var3;
    time2 = minBurstFrameDuration;
    time1.value = var0;
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      goto LABEL_17;
    }
  }

  v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

- (void)setMaxBurstDuration:(id *)a3
{
  var0 = a3->var0;
  var2 = a3->var2;
  var1 = a3->var1;
  if (var2)
  {
    var3 = a3->var3;
  }

  else
  {
    CMTimeMake(&time1, 2, 1);
    var0 = time1.value;
    var2 = time1.flags;
    var1 = time1.timescale;
    var3 = time1.epoch;
  }

  if ((var2 & 0x1D) == 1 && (time1.value = var0, time1.timescale = var1, time1.flags = var2, time1.epoch = var3, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) > 0))
  {
    internal = self->_internal;
    time1.timescale = var1;
    time1.flags = var2;
    time1.epoch = var3;
    time2 = internal->maxBurstDuration;
    time1.value = var0;
    if (CMTimeCompare(&time1, &time2))
    {
      v7 = self->_internal;
      v7->maxBurstDuration.value = var0;
      v7->maxBurstDuration.timescale = var1;
      v7->maxBurstDuration.flags = var2;
      v7->maxBurstDuration.epoch = var3;
      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (void)setGaussianPyramidOctavesCount:(unint64_t)a3
{
  if (a3)
  {
    internal = self->_internal;
    if (internal->gaussianPyramidOctavesCount != a3)
    {
      internal->gaussianPyramidOctavesCount = a3;

      [(AVCaptureOutput *)self bumpChangeSeed];
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

- (void)setGaussianPyramidBaseOctaveDownscalingFactor:(float)a3
{
  if (a3 >= 1.0)
  {
    internal = self->_internal;
    if (internal->gaussianPyramidBaseOctaveDownscalingFactor != a3)
    {
      internal->gaussianPyramidBaseOctaveDownscalingFactor = a3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }

  else
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }
}

- (void)setMaxKeypointsCount:(unint64_t)a3
{
  if (a3)
  {
    internal = self->_internal;
    if (internal->maxKeypointsCount != a3)
    {
      internal->maxKeypointsCount = a3;

      [(AVCaptureOutput *)self bumpChangeSeed];
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

- (void)setFeatureBinningEnabled:(BOOL)a3
{
  internal = self->_internal;
  if (internal->featureBinningEnabled != a3)
  {
    internal->featureBinningEnabled = a3;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setFeatureOrientationAssignmentEnabled:(BOOL)a3
{
  internal = self->_internal;
  if (internal->featureOrientationAssignmentEnabled != a3)
  {
    internal->featureOrientationAssignmentEnabled = a3;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setDynamicThresholdingEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3 && ![(AVCaptureVisionDataOutput *)self isDynamicThresholdingSupported])
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
    if (internal->dynamicThresholdingEnabled != v3)
    {
      internal->dynamicThresholdingEnabled = v3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setKeypointDetectionFlowType:(unint64_t)a3
{
  if (a3 && ![(AVCaptureVisionDataOutput *)self isKeypointDetectionFlowTypeSupported:a3])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, a3}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    internal = self->_internal;
    if (internal->keypointDetectionFlowType != a3)
    {
      internal->keypointDetectionFlowType = a3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setSubPixelThreshold:(unint64_t)a3
{
  if (a3 && ![(AVCaptureVisionDataOutput *)self isSubPixelThresholdSupported])
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
    if (internal->subPixelThreshold != a3)
    {
      internal->subPixelThreshold = a3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setFeatureMatchingEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3 && ![(AVCaptureVisionDataOutput *)self isFeatureMatchingSupported])
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
    if (internal->featureMatchingEnabled != v3)
    {
      internal->featureMatchingEnabled = v3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setFeatureMatchingDescriptorSize:(unint64_t)a3
{
  if (a3 && ![(AVCaptureVisionDataOutput *)self isFeatureMatchingSupported])
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
    if (internal->featureMatchingDescriptorSize != a3)
    {
      internal->featureMatchingDescriptorSize = a3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setOrientationDistanceThreshold:(float)a3
{
  if (a3 == 0.0 || [(AVCaptureVisionDataOutput *)self isOrientationDistanceThresholdSupported])
  {
    internal = self->_internal;
    if (internal->orientationDistanceThreshold != a3)
    {
      internal->orientationDistanceThreshold = a3;

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

- (void)setSigmaDistanceThreshold:(float)a3
{
  if (a3 == 0.0 || [(AVCaptureVisionDataOutput *)self isSigmaDistanceThresholdSupported])
  {
    internal = self->_internal;
    if (internal->sigmaDistanceThreshold != a3)
    {
      internal->sigmaDistanceThreshold = a3;

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

- (void)setSquareDistanceDisparityFraction:(float)a3
{
  if (a3 == 0.0 || [(AVCaptureVisionDataOutput *)self isSquareDistanceDisparityFractionSupported])
  {
    internal = self->_internal;
    if (internal->squareDistanceDisparityFraction != a3)
    {
      internal->squareDistanceDisparityFraction = a3;

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

- (void)setHammingDistanceThreshold:(unint64_t)a3
{
  if (a3 && ![(AVCaptureVisionDataOutput *)self isHammingDistanceThresholdSupported])
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
    if (internal->hammingDistanceThreshold != a3)
    {
      internal->hammingDistanceThreshold = a3;

      [(AVCaptureOutput *)self bumpChangeSeed];
    }
  }
}

- (void)setLaccConfigAndMetadata:(id)a3
{
  if (a3 && ![(AVCaptureVisionDataOutput *)self isLACCConfigAndMetadataSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (self->_internal->laccConfigAndMetadata != a3 && ([a3 isEqualToData:?] & 1) == 0)
  {

    self->_internal->laccConfigAndMetadata = [a3 copy];

    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setKeypointDetectionThreshold:(float)a3
{
  internal = self->_internal;
  if (internal->keypointDetectionThreshold != a3)
  {
    v8 = v3;
    v9 = v4;
    internal->keypointDetectionThreshold = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__AVCaptureVisionDataOutput_setKeypointDetectionThreshold___block_invoke;
    v6[3] = &unk_1E786F338;
    v6[4] = self;
    v7 = a3;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v6];
  }
}

uint64_t __59__AVCaptureVisionDataOutput_setKeypointDetectionThreshold___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    LODWORD(v5) = *(v3 + 40);
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *MEMORY[0x1E698FEB8];

      return v9(a2, v4, v10, v6);
    }
  }

  return result;
}

- (void)setRuntimeUpdates:(id)a3
{
  if ([(AVCaptureVisionDataOutput *)self areRuntimeUpdatesSupported])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__AVCaptureVisionDataOutput_setRuntimeUpdates___block_invoke;
    v6[3] = &unk_1E786EFA8;
    v6[4] = self;
    v6[5] = a3;
    [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v6];
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

uint64_t __47__AVCaptureVisionDataOutput_setRuntimeUpdates___block_invoke(uint64_t result, uint64_t a2)
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
      v9 = *MEMORY[0x1E698FEC0];

      return v8(a2, v4, v9, v5);
    }
  }

  return result;
}

- (void)triggerBurst
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__AVCaptureVisionDataOutput_triggerBurst__block_invoke;
  v2[3] = &unk_1E786F360;
  v2[4] = self;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v2];
}

uint64_t __41__AVCaptureVisionDataOutput_triggerBurst__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(result + 32) sinkID];
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 16);
    result = VTable + 16;
    v6 = *(v5 + 152);
    if (v6)
    {

      return v6(a2, v3);
    }
  }

  return result;
}

- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4
{
  if (![objc_msgSend(a3 "mediaType")])
  {
    v7 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v7 = 2;
LABEL_5:
    v8 = AVCaptureOutputConnectionFailureReasonString(v7, self, a3);
    result = 0;
    *a4 = v8;
    return result;
  }

  return 1;
}

- (id)addConnection:(id)a3 error:(id *)a4
{
  v8.receiver = self;
  v8.super_class = AVCaptureVisionDataOutput;
  v6 = [(AVCaptureOutput *)&v8 addConnection:a3 error:a4];
  if ([objc_msgSend(a3 "mediaType")])
  {
    -[AVCaptureVisionDataOutput _initializeClientVisiblePropertiesForSourceDevice:](self, "_initializeClientVisiblePropertiesForSourceDevice:", [v6 sourceDevice]);
  }

  return v6;
}

- (void)removeConnection:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVCaptureVisionDataOutput;
  [(AVCaptureOutput *)&v4 removeConnection:a3];
  [(AVCaptureVisionDataOutput *)self _initializeClientVisiblePropertiesForSourceDevice:0];
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:vsndo_notificationHandler name:*MEMORY[0x1E698FE48] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:vsndo_notificationHandler name:*MEMORY[0x1E698FE40] object:a3 flags:0];
  v7.receiver = self;
  v7.super_class = AVCaptureVisionDataOutput;
  [(AVCaptureOutput *)&v7 attachSafelyToFigCaptureSession:a3];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vsndo_notificationHandler name:*MEMORY[0x1E698FE48] object:a3];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vsndo_notificationHandler name:*MEMORY[0x1E698FE40] object:a3];
  v6.receiver = self;
  v6.super_class = AVCaptureVisionDataOutput;
  [(AVCaptureOutput *)&v6 detachSafelyFromFigCaptureSession:a3];
}

- (void)setDelegateOverride:(id)a3 delegateOverrideCallbackQueue:(id)a4
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v9 = 0;
  if (![(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setDelegateOverride:a3 delegateOverrideCallbackQueue:v7 exceptionReason:&v9])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (void)handleChangedActiveFormat:(id)a3 forDevice:(id)a4
{
  if ([a3 isVisionDataDeliverySupported])
  {
    [(AVCaptureVisionDataOutput *)self _initializeClientVisiblePropertiesForSourceDevice:a4];
  }

  v7.receiver = self;
  v7.super_class = AVCaptureVisionDataOutput;
  [(AVCaptureOutput *)&v7 handleChangedActiveFormat:a3 forDevice:a4];
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqual:", -[AVCaptureOutput sinkID](self, "sinkID")}])
  {
    if ([a3 isEqualToString:*MEMORY[0x1E698FE48]])
    {
      v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FE38]];

      [(AVCaptureVisionDataOutput *)self _updateRemoteQueue:v7];
    }

    else if ([a3 isEqualToString:*MEMORY[0x1E698FE40]])
    {
      v8 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FBB8]];

      [(AVCaptureVisionDataOutput *)self _updateLocalQueue:v8];
    }
  }
}

- (void)_initializeClientVisiblePropertiesForSourceDevice:(id)a3
{
  [-[AVCaptureOutput session](self "session")];
  memset(&v16[1], 0, sizeof(CMTime));
  if (a3)
  {
    [a3 activeVideoMinFrameDuration];
  }

  v16[0] = v16[1];
  [(AVCaptureVisionDataOutput *)self setMinFrameDuration:v16];
  v16[0] = v16[1];
  [(AVCaptureVisionDataOutput *)self setMinBurstFrameDuration:v16];
  CMTimeMake(&v15, 2, 1);
  v16[0] = v15;
  [(AVCaptureVisionDataOutput *)self setMaxBurstDuration:v16];
  [(AVCaptureVisionDataOutput *)self setGaussianPyramidOctavesCount:4];
  LODWORD(v5) = 2.0;
  [(AVCaptureVisionDataOutput *)self setGaussianPyramidBaseOctaveDownscalingFactor:v5];
  [(AVCaptureVisionDataOutput *)self setMaxKeypointsCount:5000];
  [(AVCaptureVisionDataOutput *)self setFeatureBinningEnabled:0];
  [(AVCaptureVisionDataOutput *)self setFeatureOrientationAssignmentEnabled:1];
  LODWORD(v6) = 1110704128;
  [(AVCaptureVisionDataOutput *)self setKeypointDetectionThreshold:v6];
  [(AVCaptureVisionDataOutput *)self setDynamicThresholdingEnabled:0];
  [(AVCaptureVisionDataOutput *)self setKeypointDetectionFlowType:[(AVCaptureVisionDataOutput *)self isKeypointDetectionFlowTypeSupported:1]];
  if ([(AVCaptureVisionDataOutput *)self isSubPixelThresholdSupported])
  {
    v7 = 9;
  }

  else
  {
    v7 = 0;
  }

  [(AVCaptureVisionDataOutput *)self setSubPixelThreshold:v7];
  [(AVCaptureVisionDataOutput *)self setFeatureMatchingEnabled:0];
  [(AVCaptureVisionDataOutput *)self setFeatureMatchingDescriptorSize:[(AVCaptureVisionDataOutput *)self isFeatureMatchingSupported]];
  v8 = [(AVCaptureVisionDataOutput *)self isOrientationDistanceThresholdSupported];
  LODWORD(v9) = 20.0;
  if (!v8)
  {
    *&v9 = 0.0;
  }

  [(AVCaptureVisionDataOutput *)self setOrientationDistanceThreshold:v9];
  v10 = [(AVCaptureVisionDataOutput *)self isSigmaDistanceThresholdSupported];
  LODWORD(v11) = 0.5;
  if (!v10)
  {
    *&v11 = 0.0;
  }

  [(AVCaptureVisionDataOutput *)self setSigmaDistanceThreshold:v11];
  v12 = [(AVCaptureVisionDataOutput *)self isSquareDistanceDisparityFractionSupported];
  LODWORD(v13) = 1045220557;
  if (!v12)
  {
    *&v13 = 0.0;
  }

  [(AVCaptureVisionDataOutput *)self setSquareDistanceDisparityFraction:v13];
  if ([(AVCaptureVisionDataOutput *)self isHammingDistanceThresholdSupported])
  {
    v14 = 180;
  }

  else
  {
    v14 = 0;
  }

  [(AVCaptureVisionDataOutput *)self setHammingDistanceThreshold:v14];
  [-[AVCaptureOutput session](self "session")];
}

- (void)_updateRemoteQueue:(remoteQueueReceiverOpaque *)a3
{
  v5 = self->_internal->weakReference;
  MessageReceiver = FigRemoteOperationReceiverCreateMessageReceiver();
  -[AVCaptureDataOutputDelegateCallbackHelper updateRemoteQueueReceiver:handler:](self->_internal->delegateCallbackHelper, "updateRemoteQueueReceiver:handler:", a3, [MessageReceiver copy]);
}

void __48__AVCaptureVisionDataOutput__updateRemoteQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
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

- (void)_handleRemoteQueueOperation:(FigRemoteOperation *)a3
{
  if (a3->var0 == 3)
  {
    [(AVCaptureVisionDataOutput *)self _processSampleBuffer:a3->var4.var4.var0];
  }
}

- (void)_updateLocalQueue:(localQueueOpaque *)a3
{
  v5 = self->_internal->weakReference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AVCaptureVisionDataOutput__updateLocalQueue___block_invoke;
  v6[3] = &unk_1E786F260;
  v6[4] = v5;
  -[AVCaptureDataOutputDelegateCallbackHelper updateLocalQueue:handler:](self->_internal->delegateCallbackHelper, "updateLocalQueue:handler:", a3, [v6 copy]);
}

void __47__AVCaptureVisionDataOutput__updateLocalQueue___block_invoke(uint64_t a1, __int128 *a2)
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

- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)a3
{
  if (a3->var0 == 3)
  {
    [(AVCaptureVisionDataOutput *)self _processSampleBuffer:*(&a3->var0 + 1)];
  }
}

- (void)_processSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper activeDelegate];
  v6 = [(NSArray *)[(AVCaptureOutput *)self connections] firstObject];
  if ([v6 isLive] && objc_msgSend(-[AVCaptureOutput session](self, "session"), "isRunning") && (objc_msgSend(-[AVCaptureOutput session](self, "session"), "isInterrupted") & 1) == 0)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetPresentationTimeStamp(&v11, a3);
    if (ImageBuffer)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = CMGetAttachment(a3, @"VisionDataCameraIntrinsicMatrix", 0);
        if (v8)
        {
          CMSetAttachment(ImageBuffer, @"VisionDataCameraIntrinsicMatrix", v8, 1u);
        }

        v10 = v11;
        [v5 visionDataOutput:self didOutputVisionDataPixelBuffer:ImageBuffer timestamp:&v10 connection:v6];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v9 = [AVCaptureOutput dataDroppedReasonFromSampleBuffer:a3];
      v10 = v11;
      [v5 visionDataOutput:self didDropVisionDataPixelBufferForTimestamp:&v10 connection:v6 reason:v9];
    }
  }
}

- (BOOL)_isPropertySupported:(id)a3
{
  v4 = [-[AVCaptureConnection sourceDevice](-[AVCaptureOutput connectionWithMediaType:](self connectionWithMediaType:{@"visn", "sourceDevice"), "supportedVisionDataProperties"}];

  return [v4 containsObject:a3];
}

@end