@interface AVAssetWriterInput
+ (AVAssetWriterInput)assetWriterInputWithMediaType:(AVMediaType)mediaType outputSettings:(NSDictionary *)outputSettings;
+ (AVAssetWriterInput)assetWriterInputWithMediaType:(AVMediaType)mediaType outputSettings:(NSDictionary *)outputSettings sourceFormatHint:(CMFormatDescriptionRef)sourceFormatHint;
- (AVAssetWriterInput)initWithMediaType:(AVMediaType)mediaType outputSettings:(NSDictionary *)outputSettings sourceFormatHint:(CMFormatDescriptionRef)sourceFormatHint;
- (AVAssetWriterInputHelper)_helper;
- (AVAssetWriterInputMediaDataLocation)mediaDataLocation;
- (AVAssetWriterInputPassDescription)currentPassDescription;
- (AVMediaType)mediaType;
- (AVOutputSettings)_outputSettingsObject;
- (BOOL)_appendPixelBuffer:(__CVBuffer *)a3 withPresentationTime:(id *)a4;
- (BOOL)_appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)a3 withPresentationTime:(id *)a4;
- (BOOL)_markAsFinishedCalled;
- (BOOL)_prepareForWritingWithFigAssetWriter:(OpaqueFigAssetWriter *)a3 mediaFileType:(id)a4 error:(id *)a5;
- (BOOL)_prepareToFinishWritingReturningError:(id *)a3;
- (BOOL)appendSampleBuffer:(CMSampleBufferRef)sampleBuffer;
- (BOOL)canAddTrackAssociationWithTrackOfInput:(AVAssetWriterInput *)input type:(NSString *)trackAssociationType;
- (BOOL)canPerformMultiplePasses;
- (BOOL)expectsMediaDataInRealTime;
- (BOOL)isReadyForMoreMediaData;
- (BOOL)marksOutputTrackAsEnabled;
- (BOOL)maximizePowerEfficiency;
- (BOOL)performsMultiPassEncodingIfSupported;
- (BOOL)writesMediaDataToBeginningOfFile;
- (CGAffineTransform)transform;
- (CGSize)naturalSize;
- (CMFormatDescriptionRef)sourceFormatHint;
- (CMTime)preferredMediaChunkDuration;
- (CMTimeScale)mediaTimeScale;
- (NSArray)metadata;
- (NSDictionary)_sourcePixelBufferAttributes;
- (NSDictionary)_trackReferences;
- (NSDictionary)outputSettings;
- (NSInteger)preferredMediaChunkAlignment;
- (NSString)description;
- (NSString)extendedLanguageTag;
- (NSString)languageCode;
- (NSURL)sampleReferenceBaseURL;
- (__CVPixelBufferPool)_pixelBufferPool;
- (float)preferredVolume;
- (id)associatedInputsWithTrackAssociationType:(id)a3;
- (id)availableTrackAssociationTypes;
- (int)outputTrackID;
- (int64_t)_appendCaption:(id)a3 error:(id *)a4;
- (int64_t)_appendCaptionGroup:(id)a3 error:(id *)a4;
- (int64_t)_appendSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (int64_t)_status;
- (int64_t)layer;
- (int64_t)numberOfAppendFailures;
- (int64_t)preferredMediaChunkSize;
- (signed)_alternateGroupID;
- (signed)_provisionalAlternateGroupID;
- (void)_didStartInitialSession;
- (void)_prepareToEndSession;
- (void)_setAlternateGroupID:(signed __int16)a3;
- (void)_setHelper:(id)a3;
- (void)_setProvisionalAlternateGroupID:(signed __int16)a3;
- (void)_setSourcePixelBufferAttributes:(id)a3;
- (void)_setWeakReferenceToAssetWriter:(id)a3;
- (void)_tellAssetWriterToTransitionToFailedStatusWithError:(id)a3;
- (void)_transitionToTerminalStatus:(int64_t)a3;
- (void)addTrackAssociationWithTrackOfInput:(AVAssetWriterInput *)input type:(NSString *)trackAssociationType;
- (void)dealloc;
- (void)declareKeyPathDependenciesWithRegistry:(id)a3;
- (void)markAsFinished;
- (void)markCurrentPassAsFinished;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)requestMediaDataWhenReadyOnQueue:(dispatch_queue_t)queue usingBlock:(void *)block;
- (void)respondToEachPassDescriptionOnQueue:(dispatch_queue_t)queue usingBlock:(dispatch_block_t)block;
- (void)setExpectsMediaDataInRealTime:(BOOL)expectsMediaDataInRealTime;
- (void)setExtendedLanguageTag:(NSString *)extendedLanguageTag;
- (void)setLanguageCode:(NSString *)languageCode;
- (void)setLayer:(int64_t)a3;
- (void)setMarksOutputTrackAsEnabled:(BOOL)marksOutputTrackAsEnabled;
- (void)setMaximizePowerEfficiency:(BOOL)a3;
- (void)setMediaDataLocation:(AVAssetWriterInputMediaDataLocation)mediaDataLocation;
- (void)setMediaTimeScale:(CMTimeScale)mediaTimeScale;
- (void)setMetadata:(NSArray *)metadata;
- (void)setNaturalSize:(CGSize)naturalSize;
- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)performsMultiPassEncodingIfSupported;
- (void)setPreferredMediaChunkAlignment:(NSInteger)preferredMediaChunkAlignment;
- (void)setPreferredMediaChunkDuration:(CMTime *)preferredMediaChunkDuration;
- (void)setPreferredMediaChunkSize:(int64_t)a3;
- (void)setPreferredVolume:(float)preferredVolume;
- (void)setSampleReferenceBaseURL:(NSURL *)sampleReferenceBaseURL;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)setWritesMediaDataToBeginningOfFile:(BOOL)a3;
- (void)stopRequestingMediaData;
@end

@implementation AVAssetWriterInput

+ (AVAssetWriterInput)assetWriterInputWithMediaType:(AVMediaType)mediaType outputSettings:(NSDictionary *)outputSettings
{
  v4 = [[a1 alloc] initWithMediaType:mediaType outputSettings:outputSettings];

  return v4;
}

+ (AVAssetWriterInput)assetWriterInputWithMediaType:(AVMediaType)mediaType outputSettings:(NSDictionary *)outputSettings sourceFormatHint:(CMFormatDescriptionRef)sourceFormatHint
{
  v5 = [[a1 alloc] initWithMediaType:mediaType outputSettings:outputSettings sourceFormatHint:sourceFormatHint];

  return v5;
}

- (AVAssetWriterInput)initWithMediaType:(AVMediaType)mediaType outputSettings:(NSDictionary *)outputSettings sourceFormatHint:(CMFormatDescriptionRef)sourceFormatHint
{
  v59.receiver = self;
  v59.super_class = AVAssetWriterInput;
  v9 = [(AVAssetWriterInput *)&v59 init];
  v10 = v9;
  if (!mediaType)
  {
    v37 = v9;
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v56 = "mediaType != nil";
    v26 = @"invalid parameter not satisfying: %s";
    goto LABEL_25;
  }

  if (v9)
  {
    v11 = objc_alloc_init(AVAssetWriterInputInternal);
    v10->_internal = v11;
    if (!v11)
    {
      goto LABEL_22;
    }

    CFRetain(v11);
    if (sourceFormatHint)
    {
      v12 = CMFormatDescriptionGetMediaType(sourceFormatHint);
      if (([AVMediaTypeFromCMMediaType() isEqualToString:mediaType] & 1) == 0)
      {
        v41 = v10;
        v42 = MEMORY[0x1E695DF30];
        v43 = *MEMORY[0x1E695D940];
        v44 = objc_opt_class();
        v38 = AVMethodExceptionReasonWithClassAndSelector(v44, a2, @"The media type of sourceFormatHint must match mediaType", v45, v46, v47, v48, v49, v56);
        v39 = v42;
        v40 = v43;
LABEL_26:
        objc_exception_throw([v39 exceptionWithName:v40 reason:v38 userInfo:0]);
      }

      if (v12 == 1986618469)
      {
        Dimensions = CMVideoFormatDescriptionGetDimensions(sourceFormatHint);
        if (Dimensions.width < 1 || Dimensions.height <= 0)
        {
          v55 = v10;
          v24 = MEMORY[0x1E695DF30];
          v25 = *MEMORY[0x1E695D940];
          v26 = @"Width and height of video format hint must be positive";
          goto LABEL_25;
        }
      }
    }

    if (outputSettings)
    {
      v58 = 0;
      v14 = [AVOutputSettings _outputSettingsWithOutputSettingsDictionary:outputSettings mediaType:mediaType exceptionReason:&v58];
      if (!v14)
      {
        v50 = v10;
        v24 = MEMORY[0x1E695DF30];
        v25 = *MEMORY[0x1E695D940];
        v26 = v58;
        goto LABEL_25;
      }

      v15 = v14;
      if (([objc_msgSend(v14 "compatibleMediaTypes")] & 1) == 0)
      {
        v51 = v10;
        v24 = MEMORY[0x1E695DF30];
        v25 = *MEMORY[0x1E695D940];
        v26 = @"Output settings must match supplied media type";
        goto LABEL_25;
      }

      v57 = 0;
      v16 = [v15 canFullySpecifyOutputFormatReturningReason:&v57];
      if (!sourceFormatHint && (v16 & 1) == 0)
      {
        v52 = v10;
        v24 = MEMORY[0x1E695DF30];
        v25 = *MEMORY[0x1E695D940];
        v26 = v57;
        goto LABEL_25;
      }

      v17 = [(NSDictionary *)outputSettings objectForKey:@"AVVideoScalingModeKey"];
      if (v17 && [v17 isEqualToString:@"AVVideoScalingModeFit"])
      {
        v54 = v10;
        v24 = MEMORY[0x1E695DF30];
        v25 = *MEMORY[0x1E695D940];
        v26 = @"AVAssetWriterInput does not currently support AVVideoScalingModeFit";
        goto LABEL_25;
      }

      if ([(NSDictionary *)outputSettings objectForKey:*MEMORY[0x1E6958338]])
      {
        v53 = v10;
        v24 = MEMORY[0x1E695DF30];
        v25 = *MEMORY[0x1E695D940];
        v26 = @"AVAssetWriterInput does not support AVSampleRateConverterAudioQualityKey";
        goto LABEL_25;
      }

      if ([(NSDictionary *)outputSettings objectForKey:@"AVVideoDecompressionPropertiesKey"])
      {
        v18 = v10;
        v24 = MEMORY[0x1E695DF30];
        v25 = *MEMORY[0x1E695D940];
        v26 = @"AVAssetWriterInput does not support AVVideoDecompressionPropertiesKey";
LABEL_25:
        v38 = AVMethodExceptionReasonWithObjectAndSelector(v10, a2, v26, v19, v20, v21, v22, v23, v56);
        v39 = v24;
        v40 = v25;
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
    }

    v10->_internal->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v10];
    v10->_internal->keyPathDependencyManager = [[AVKeyPathDependencyManager alloc] initWithDependencyHost:v10];
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    v29 = [objc_msgSend(v27 stringWithFormat:@"<%@: %p> helper queue", NSStringFromClass(v28), v10), "UTF8String"];
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10->_internal->helperQueue = dispatch_queue_create(v29, v30);
    v10->_internal->numberOfAppendFailures = 0;
    v10->_internal->markAsFinishedCalled = 0;
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = [objc_msgSend(v31 stringWithFormat:@"<%@: %p> number of append failures read/write queue", NSStringFromClass(v32), v10), "UTF8String"];
    v10->_internal->appendFailureReadWriteQueue = av_readwrite_dispatch_queue_create(v33);
    v10->_internal->helper = [[AVAssetWriterInputUnknownHelper alloc] initWithMediaType:mediaType outputSettings:v15 sourceFormatHint:sourceFormatHint];
    internal = v10->_internal;
    helper = internal->helper;
    if (helper)
    {
      [(AVAssetWriterInputHelper *)helper setWeakReferenceToAssetWriterInput:internal->weakReference];
      [(AVKeyPathDependencyManager *)v10->_internal->keyPathDependencyManager dependencyHostIsFullyInitialized];
    }

    else
    {
LABEL_22:

      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    [(AVKeyPathDependencyManager *)internal->keyPathDependencyManager cancelAllCallbacks];

    v4 = self->_internal;
    if (v4->passDescriptionResponder)
    {
      [(AVAssetWriterInput *)self removeObserver:self forKeyPath:@"currentPassDescription" context:@"AVAssetWriterInputCurrentPassDescriptionChangeContext"];
      v4 = self->_internal;
    }

    v5 = self->_internal;
    helperQueue = v5->helperQueue;
    if (helperQueue)
    {
      dispatch_release(helperQueue);
    }

    appendFailureReadWriteQueue = v5->appendFailureReadWriteQueue;
    if (appendFailureReadWriteQueue)
    {
      dispatch_release(appendFailureReadWriteQueue);
    }

    CFRelease(self->_internal);
    internal = self->_internal;
  }

  v8.receiver = self;
  v8.super_class = AVAssetWriterInput;
  [(AVAssetWriterInput *)&v8 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, mediaType = %@, outputSettings = %@>", NSStringFromClass(v4), self, -[AVAssetWriterInput mediaType](self, "mediaType"), -[AVAssetWriterInput outputSettings](self, "outputSettings")];
}

- (AVAssetWriterInputHelper)_helper
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  helperQueue = self->_internal->helperQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AVAssetWriterInput__helper__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(helperQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __29__AVAssetWriterInput__helper__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setWeakReferenceToAssetWriter:(id)a3
{
  v5 = a3;

  self->_internal->weakReferenceToAssetWriter = a3;
}

- (void)_tellAssetWriterToTransitionToFailedStatusWithError:(id)a3
{
  v4 = [(AVWeakReference *)[(AVAssetWriterInput *)self _weakReferenceToAssetWriter] referencedObject];

  [v4 _transitionToFailedStatusWithError:a3];
}

- (int64_t)_status
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 status];
}

- (void)_setHelper:(id)a3
{
  helperQueue = self->_internal->helperQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__AVAssetWriterInput__setHelper___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = a3;
  v4[5] = self;
  dispatch_sync(helperQueue, v4);
}

void *__33__AVAssetWriterInput__setHelper___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(*(a1 + 40) + 8) + 16);
  if (v2 != result)
  {
    [result setWeakReferenceToAssetWriterInput:0];

    *(*(*(a1 + 40) + 8) + 16) = *(a1 + 32);
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);

    return [v5 setWeakReferenceToAssetWriterInput:v6];
  }

  return result;
}

- (AVMediaType)mediaType
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 mediaType];
}

- (AVOutputSettings)_outputSettingsObject
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 outputSettings];
}

- (NSDictionary)outputSettings
{
  v2 = [(AVAssetWriterInput *)self _outputSettingsObject];

  return [(AVOutputSettings *)v2 outputSettingsDictionary];
}

- (CMFormatDescriptionRef)sourceFormatHint
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 sourceFormatHint];
}

- (int)outputTrackID
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 trackID];
}

- (NSArray)metadata
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 metadata];
}

- (void)setMetadata:(NSArray *)metadata
{
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setMetadata:metadata];
}

- (CGAffineTransform)transform
{
  result = [(AVAssetWriterInput *)self _helper];
  if (result)
  {

    return [(CGAffineTransform *)result transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = [(AVAssetWriterInput *)self _helper];
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [(AVAssetWriterInputHelper *)v4 setTransform:v6];
}

- (CMTimeScale)mediaTimeScale
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 mediaTimeScale];
}

- (void)setMediaTimeScale:(CMTimeScale)mediaTimeScale
{
  if (mediaTimeScale < 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "mediaTimeScale >= 0"), 0}];
    objc_exception_throw(v10);
  }

  v8 = *&mediaTimeScale;
  v9 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v9 setMediaTimeScale:v8];
}

- (CGSize)naturalSize
{
  v2 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v2 naturalSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setNaturalSize:(CGSize)naturalSize
{
  if (naturalSize.width < 0.0 || (height = naturalSize.height, naturalSize.height < 0.0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "naturalSize.width >= 0.0 && naturalSize.height >= 0.0"), 0}];
    objc_exception_throw(v11);
  }

  width = naturalSize.width;
  v10 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v10 setNaturalSize:width, height];
}

- (NSString)languageCode
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 languageCode];
}

- (void)setLanguageCode:(NSString *)languageCode
{
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setLanguageCode:languageCode];
}

- (NSString)extendedLanguageTag
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 extendedLanguageTag];
}

- (void)setExtendedLanguageTag:(NSString *)extendedLanguageTag
{
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setExtendedLanguageTag:extendedLanguageTag];
}

- (BOOL)marksOutputTrackAsEnabled
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 marksOutputTrackAsEnabled];
}

- (void)setMarksOutputTrackAsEnabled:(BOOL)marksOutputTrackAsEnabled
{
  v3 = marksOutputTrackAsEnabled;
  if ([(AVAssetWriterInputHelper *)[(AVAssetWriterInput *)self _helper] alternateGroupID])
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot set marksOutputTrackAsEnabled of the receiver in an input group", v6, v7, v8, v9, v10, v13), 0}];
    objc_exception_throw(v12);
  }

  v11 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v11 setMarksOutputTrackAsEnabled:v3];
}

- (float)preferredVolume
{
  v2 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v2 preferredVolume];
  return result;
}

- (void)setPreferredVolume:(float)preferredVolume
{
  v4 = [(AVAssetWriterInput *)self _helper];
  *&v5 = preferredVolume;

  [(AVAssetWriterInputHelper *)v4 setPreferredVolume:v5];
}

- (int64_t)layer
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 layer];
}

- (void)setLayer:(int64_t)a3
{
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setLayer:a3];
}

- (signed)_alternateGroupID
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 alternateGroupID];
}

- (void)_setAlternateGroupID:(signed __int16)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setAlternateGroupID:v3];
}

- (signed)_provisionalAlternateGroupID
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 provisionalAlternateGroupID];
}

- (void)_setProvisionalAlternateGroupID:(signed __int16)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setProvisionalAlternateGroupID:v3];
}

- (NSDictionary)_trackReferences
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 trackReferences];
}

- (CMTime)preferredMediaChunkDuration
{
  result = [(AVAssetWriterInput *)self _helper];
  if (result)
  {

    return [(CMTime *)result preferredMediaChunkDuration];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)setPreferredMediaChunkDuration:(CMTime *)preferredMediaChunkDuration
{
  if ((preferredMediaChunkDuration->flags & 1) != 0 && (preferredMediaChunkDuration->flags & 0x1D) != 1)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"media chunk duration must be numeric.  See CMTIME_IS_NUMERIC";
    goto LABEL_7;
  }

  if (preferredMediaChunkDuration->value < 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"media chunk duration must be a positive value";
LABEL_7:
    v13 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v12, v3, v4, v5, v6, v7, v14), 0}];
    objc_exception_throw(v13);
  }

  v9 = [(AVAssetWriterInput *)self _helper];
  v14 = *&preferredMediaChunkDuration->value;
  epoch = preferredMediaChunkDuration->epoch;
  [(AVAssetWriterInputHelper *)v9 setPreferredMediaChunkDuration:&v14];
}

- (NSInteger)preferredMediaChunkAlignment
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 preferredMediaChunkAlignment];
}

- (void)setPreferredMediaChunkAlignment:(NSInteger)preferredMediaChunkAlignment
{
  if (preferredMediaChunkAlignment < 0)
  {
    [AVAssetWriterInput setPreferredMediaChunkAlignment:];
  }

  v5 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v5 setPreferredMediaChunkAlignment:preferredMediaChunkAlignment];
}

- (int64_t)preferredMediaChunkSize
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 preferredMediaChunkSize];
}

- (void)setPreferredMediaChunkSize:(int64_t)a3
{
  if (a3 < 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "preferredMediaChunkSize >= 0"), 0}];
    objc_exception_throw(v10);
  }

  v9 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v9 setPreferredMediaChunkSize:a3];
}

- (BOOL)writesMediaDataToBeginningOfFile
{
  v2 = [(AVAssetWriterInput *)self mediaDataLocation];

  return [(NSString *)v2 isEqualToString:@"AVAssetWriterInputMediaDataLocationBeforeMainMediaDataNotInterleaved"];
}

- (void)setWritesMediaDataToBeginningOfFile:(BOOL)a3
{
  if (a3)
  {
    v3 = @"AVAssetWriterInputMediaDataLocationBeforeMainMediaDataNotInterleaved";
  }

  else
  {
    v3 = @"AVAssetWriterInputMediaDataLocationInterleavedWithMainMediaData";
  }

  [(AVAssetWriterInput *)self setMediaDataLocation:v3];
}

- (AVAssetWriterInputMediaDataLocation)mediaDataLocation
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 mediaDataLocation];
}

- (void)setMediaDataLocation:(AVAssetWriterInputMediaDataLocation)mediaDataLocation
{
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setMediaDataLocation:mediaDataLocation];
}

- (NSURL)sampleReferenceBaseURL
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 sampleReferenceBaseURL];
}

- (void)setSampleReferenceBaseURL:(NSURL *)sampleReferenceBaseURL
{
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setSampleReferenceBaseURL:sampleReferenceBaseURL];
}

- (__CVPixelBufferPool)_pixelBufferPool
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 pixelBufferPool];
}

- (NSDictionary)_sourcePixelBufferAttributes
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 sourcePixelBufferAttributes];
}

- (void)_setSourcePixelBufferAttributes:(id)a3
{
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setSourcePixelBufferAttributes:a3];
}

- (BOOL)_prepareForWritingWithFigAssetWriter:(OpaqueFigAssetWriter *)a3 mediaFileType:(id)a4 error:(id *)a5
{
  v15 = 0;
  v9 = [(AVAssetWriterInputHelper *)[(AVAssetWriterInput *)self _helper] outputSettings];
  v10 = v9;
  if (!v9 || (LODWORD(v11) = [(AVOutputSettings *)v9 encoderIsAvailableOnCurrentSystemReturningError:&v15], v11))
  {
    v11 = [AVFigAssetWriterTrack assetWriterTrackWithFigAssetWriter:a3 mediaType:[(AVAssetWriterInput *)self mediaType] mediaFileType:a4 formatSpecification:[AVFormatSpecification formatSpecificationWithOutputSettings:v10 sourceFormatDescription:[(AVAssetWriterInput *)self sourceFormatHint]] sourcePixelBufferAttributes:[(AVAssetWriterInput *)self _sourcePixelBufferAttributes] multiPass:[(AVAssetWriterInput *)self performsMultiPassEncodingIfSupported] attachedAdaptor:[(AVAssetWriterInput *)self _attachedAdaptor] error:&v15];
    if (v11)
    {
      v12 = v11;
      v11 = [[AVAssetWriterInputWritingHelper alloc] initWithConfigurationState:[(AVAssetWriterInputHelper *)[(AVAssetWriterInput *)self _helper] configurationState] assetWriterTrack:v11 error:&v15];
      if (v11)
      {
        v13 = v11;

        self->_internal->assetWriterTrack = v12;
        [(AVAssetWriterInput *)self _setHelper:v13];

        LOBYTE(v11) = [(AVAssetWriterInputHelper *)[(AVAssetWriterInput *)self _helper] status]== 1;
      }
    }
  }

  if (a5 && (v11 & 1) == 0)
  {
    *a5 = v15;
  }

  return v11;
}

- (void)_didStartInitialSession
{
  v2 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v2 didStartInitialSession];
}

- (void)_prepareToEndSession
{
  v2 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v2 prepareToEndSession];
}

- (BOOL)_prepareToFinishWritingReturningError:(id *)a3
{
  v4 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v4 prepareToFinishWritingReturningError:a3];
}

- (void)_transitionToTerminalStatus:(int64_t)a3
{
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 transitionToAndReturnTerminalHelperWithTerminalStatus:a3];
}

- (void)declareKeyPathDependenciesWithRegistry:(id)a3
{
  [a3 valueForKey:@"canPerformMultiplePasses" dependsOnValueAtKeyPath:{AVTwoPartKeyPathMake(@"helper", @"canPerformMultiplePasses"}];
  [a3 valueForKey:@"currentPassDescription" dependsOnValueAtKeyPath:{AVTwoPartKeyPathMake(@"helper", @"currentPassDescription"}];
  [a3 valueForKey:@"readyForMoreMediaData" dependsOnValueAtKeyPath:{AVTwoPartKeyPathMake(@"helper", @"readyForMoreMediaData"}];
  [a3 valueForKey:@"status" dependsOnValueAtKeyPath:{AVTwoPartKeyPathMake(@"helper", @"status"}];
  v4 = AVTwoPartKeyPathMake(@"helper", @"pixelBufferPool");

  [a3 valueForKey:@"pixelBufferPool" dependsOnValueAtKeyPath:v4];
}

- (BOOL)isReadyForMoreMediaData
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 isReadyForMoreMediaData];
}

- (BOOL)expectsMediaDataInRealTime
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 expectsMediaDataInRealTime];
}

- (void)setExpectsMediaDataInRealTime:(BOOL)expectsMediaDataInRealTime
{
  v3 = expectsMediaDataInRealTime;
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setExpectsMediaDataInRealTime:v3];
}

- (BOOL)maximizePowerEfficiency
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 maximizePowerEfficiency];
}

- (void)setMaximizePowerEfficiency:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setMaximizePowerEfficiency:v3];
}

- (BOOL)performsMultiPassEncodingIfSupported
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 performsMultiPassEncodingIfSupported];
}

- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)performsMultiPassEncodingIfSupported
{
  v3 = performsMultiPassEncodingIfSupported;
  v4 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v4 setPerformsMultiPassEncodingIfSupported:v3];
}

- (BOOL)canPerformMultiplePasses
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 canPerformMultiplePasses];
}

- (AVAssetWriterInputPassDescription)currentPassDescription
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 currentPassDescription];
}

- (void)respondToEachPassDescriptionOnQueue:(dispatch_queue_t)queue usingBlock:(dispatch_block_t)block
{
  if (!queue)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = "queue != NULL";
LABEL_10:
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", block, v4, v5, v6, v7, v20);
    goto LABEL_14;
  }

  if (!block)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = "block != nil";
    goto LABEL_10;
  }

  v12 = [(AVAssetWriterInput *)self _helper];
  v24 = 0;
  if (![(AVAssetWriterInputHelper *)v12 canStartRespondingToEachPassDescriptionReturningReason:&v24])
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v22 = v24;
LABEL_13:
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, v22, v13, v14, v15, v16, v17, v23);
LABEL_14:
    objc_exception_throw([v18 exceptionWithName:v19 reason:v21 userInfo:0]);
  }

  if (self->_internal->passDescriptionResponder)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v22 = @"cannot be called more than once.";
    goto LABEL_13;
  }

  self->_internal->passDescriptionResponder = [[AVAssetWriterInputPassDescriptionResponder alloc] initWithCallbackQueue:queue block:block];
  [(AVAssetWriterInput *)self addObserver:self forKeyPath:@"currentPassDescription" options:0 context:@"AVAssetWriterInputCurrentPassDescriptionChangeContext"];
  if ([(AVAssetWriterInputHelper *)v12 shouldRespondToInitialPassDescription])
  {
    [(AVAssetWriterInputPassDescriptionResponder *)self->_internal->passDescriptionResponder respondToNewPassDescription:[(AVAssetWriterInput *)self currentPassDescription]];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"AVAssetWriterInputCurrentPassDescriptionChangeContext")
  {
    passDescriptionResponder = self->_internal->passDescriptionResponder;
    v7 = [(AVAssetWriterInput *)self currentPassDescription:a3];

    [(AVAssetWriterInputPassDescriptionResponder *)passDescriptionResponder respondToNewPassDescription:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVAssetWriterInput;
    [(AVAssetWriterInput *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)requestMediaDataWhenReadyOnQueue:(dispatch_queue_t)queue usingBlock:(void *)block
{
  if (!queue)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "queue != NULL";
    goto LABEL_8;
  }

  if (!block)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "block != nil";
LABEL_8:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", block, v4, v5, v6, v7, v13), 0}];
    objc_exception_throw(v14);
  }

  v10 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v10 requestMediaDataWhenReadyOnQueue:queue usingBlock:block];
}

- (void)stopRequestingMediaData
{
  v2 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v2 stopRequestingMediaData];
}

- (int64_t)_appendSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v6 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v6 appendSampleBuffer:a3 error:a4];
}

- (BOOL)appendSampleBuffer:(CMSampleBufferRef)sampleBuffer
{
  if (!sampleBuffer)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "sampleBuffer != NULL");
    v27 = v24;
    v28 = v25;
    goto LABEL_14;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sampleBuffer);
  if (FormatDescription)
  {
    v12 = FormatDescription;
    v13 = [(AVAssetWriterInput *)self mediaType];
    MediaType = CMFormatDescriptionGetMediaType(v12);
    v15 = AVMediaTypeFromCMMediaType(MediaType);
    if (([v15 isEqualToString:v13] & 1) == 0 && (!objc_msgSend(v15, "isEqualToString:", @"vide") || !-[NSString isEqualToString:](v13, "isEqualToString:", @"auxv")))
    {
      v29 = MEMORY[0x1E695DF30];
      v30 = *MEMORY[0x1E695D940];
      v26 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Media type of sample buffer must match receiver's media type (%@)", v16, v17, v18, v19, v20, v13);
      v27 = v29;
LABEL_13:
      v28 = v30;
LABEL_14:
      objc_exception_throw([v27 exceptionWithName:v28 reason:v26 userInfo:0]);
    }
  }

  v40 = 0;
  v21 = [(AVAssetWriterInput *)self _appendSampleBuffer:sampleBuffer error:&v40];
  if (v21 == 1)
  {
    if ([v40 code] != -11999)
    {
      [(AVAssetWriterInput *)self _tellAssetWriterToTransitionToFailedStatusWithError:v40];
      appendFailureReadWriteQueue = self->_internal->appendFailureReadWriteQueue;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __41__AVAssetWriterInput_appendSampleBuffer___block_invoke;
      v39[3] = &unk_1E7460C00;
      v39[4] = self;
      av_readwrite_dispatch_queue_write_async(appendFailureReadWriteQueue, v39);
      return v21 == 0;
    }

    v31 = [objc_msgSend(v40 "userInfo")];
    v32 = MEMORY[0x1E695DF30];
    v30 = [v31 name];
    v33 = [v31 reason];
    v26 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot append sample buffer: %@", v34, v35, v36, v37, v38, v33);
    v27 = v32;
    goto LABEL_13;
  }

  return v21 == 0;
}

- (BOOL)_appendPixelBuffer:(__CVBuffer *)a3 withPresentationTime:(id *)a4
{
  v7 = [(AVAssetWriterInput *)self _helper];
  v12 = *a4;
  v8 = [(AVAssetWriterInputHelper *)v7 appendPixelBuffer:a3 withPresentationTime:&v12];
  if (!v8)
  {
    appendFailureReadWriteQueue = self->_internal->appendFailureReadWriteQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__AVAssetWriterInput__appendPixelBuffer_withPresentationTime___block_invoke;
    v11[3] = &unk_1E7460C00;
    v11[4] = self;
    av_readwrite_dispatch_queue_write_async(appendFailureReadWriteQueue, v11);
  }

  return v8;
}

- (BOOL)_appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)a3 withPresentationTime:(id *)a4
{
  v7 = [(AVAssetWriterInput *)self _helper];
  v12 = *a4;
  v8 = [(AVAssetWriterInputHelper *)v7 appendTaggedPixelBufferGroup:a3 withPresentationTime:&v12];
  if (!v8)
  {
    appendFailureReadWriteQueue = self->_internal->appendFailureReadWriteQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__AVAssetWriterInput__appendTaggedPixelBufferGroup_withPresentationTime___block_invoke;
    v11[3] = &unk_1E7460C00;
    v11[4] = self;
    av_readwrite_dispatch_queue_write_async(appendFailureReadWriteQueue, v11);
  }

  return v8;
}

- (int64_t)_appendCaption:(id)a3 error:(id *)a4
{
  v10 = 0;
  v6 = [(AVAssetWriterInputHelper *)[(AVAssetWriterInput *)self _helper] appendCaption:a3 error:&v10];
  if (v6 == 1)
  {
    [(AVAssetWriterInput *)self _tellAssetWriterToTransitionToFailedStatusWithError:v10];
    if (a4)
    {
      *a4 = v10;
    }

    appendFailureReadWriteQueue = self->_internal->appendFailureReadWriteQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__AVAssetWriterInput__appendCaption_error___block_invoke;
    v9[3] = &unk_1E7460C00;
    v9[4] = self;
    av_readwrite_dispatch_queue_write_async(appendFailureReadWriteQueue, v9);
  }

  return v6;
}

- (int64_t)_appendCaptionGroup:(id)a3 error:(id *)a4
{
  v10 = 0;
  v6 = [(AVAssetWriterInputHelper *)[(AVAssetWriterInput *)self _helper] appendCaptionGroup:a3 error:&v10];
  if (v6 == 1)
  {
    [(AVAssetWriterInput *)self _tellAssetWriterToTransitionToFailedStatusWithError:v10];
    if (a4)
    {
      *a4 = v10;
    }

    appendFailureReadWriteQueue = self->_internal->appendFailureReadWriteQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__AVAssetWriterInput__appendCaptionGroup_error___block_invoke;
    v9[3] = &unk_1E7460C00;
    v9[4] = self;
    av_readwrite_dispatch_queue_write_async(appendFailureReadWriteQueue, v9);
  }

  return v6;
}

- (int64_t)numberOfAppendFailures
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  appendFailureReadWriteQueue = self->_internal->appendFailureReadWriteQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVAssetWriterInput_numberOfAppendFailures__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(appendFailureReadWriteQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)markAsFinished
{
  appendFailureReadWriteQueue = self->_internal->appendFailureReadWriteQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVAssetWriterInput_markAsFinished__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  av_readwrite_dispatch_queue_write(appendFailureReadWriteQueue, v5);
  passDescriptionResponder = self->_internal->passDescriptionResponder;
  if (passDescriptionResponder)
  {
    [(AVAssetWriterInputPassDescriptionResponder *)passDescriptionResponder stopRespondingToPassDescriptions];
  }

  [(AVAssetWriterInputHelper *)[(AVAssetWriterInput *)self _helper] markAsFinished];
}

- (BOOL)_markAsFinishedCalled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  appendFailureReadWriteQueue = self->_internal->appendFailureReadWriteQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVAssetWriterInput__markAsFinishedCalled__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(appendFailureReadWriteQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)markCurrentPassAsFinished
{
  v2 = [(AVAssetWriterInput *)self _helper];

  [(AVAssetWriterInputHelper *)v2 markCurrentPassAsFinished];
}

- (BOOL)canAddTrackAssociationWithTrackOfInput:(AVAssetWriterInput *)input type:(NSString *)trackAssociationType
{
  if (!input)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "input != nil";
    goto LABEL_8;
  }

  if (!trackAssociationType)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "trackAssociationType != nil";
LABEL_8:
    v15 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", trackAssociationType, v4, v5, v6, v7, v14), 0}];
    objc_exception_throw(v15);
  }

  v10 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v10 canAddTrackAssociationWithTrackOfInput:input type:trackAssociationType];
}

- (void)addTrackAssociationWithTrackOfInput:(AVAssetWriterInput *)input type:(NSString *)trackAssociationType
{
  if (!input)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "input != nil";
    goto LABEL_8;
  }

  if (!trackAssociationType)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "trackAssociationType != nil";
LABEL_8:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", trackAssociationType, v4, v5, v6, v7, v13), 0}];
    objc_exception_throw(v14);
  }

  [(AVAssetWriterInput *)self willChangeValueForKey:@"trackReferences"];
  [(AVAssetWriterInputHelper *)[(AVAssetWriterInput *)self _helper] addTrackAssociationWithTrackOfInput:input type:trackAssociationType];

  [(AVAssetWriterInput *)self didChangeValueForKey:@"trackReferences"];
}

- (id)availableTrackAssociationTypes
{
  v2 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v2 availableTrackAssociationTypes];
}

- (id)associatedInputsWithTrackAssociationType:(id)a3
{
  v4 = [(AVAssetWriterInput *)self _helper];

  return [(AVAssetWriterInputHelper *)v4 associatedInputsWithTrackAssociationType:a3];
}

- (uint64_t)setPreferredMediaChunkAlignment:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_10();
  return [v0 handleFailureInMethod:@"preferredMediaChunkAlignment >= 0" object:? file:? lineNumber:? description:?];
}

@end