@interface AVAssetWriter
+ (AVAssetWriter)assetWriterWithURL:(NSURL *)outputURL fileType:(AVFileType)outputFileType error:(NSError *)outError;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)_errorForOSStatus:(int)a3;
- (AVAssetWriter)initWithContentType:(UTType *)outputContentType;
- (AVAssetWriter)initWithFileType:(id)a3 error:(id *)a4;
- (AVAssetWriter)initWithURL:(NSURL *)outputURL fileType:(AVFileType)outputFileType error:(NSError *)outError;
- (AVAssetWriterHelper)_helper;
- (AVAssetWriterStatus)status;
- (AVFileType)outputFileType;
- (AVFileTypeProfile)outputFileTypeProfile;
- (BOOL)_initInternalObject;
- (BOOL)_setHelper:(id)a3 ifCurrentHelper:(id)a4 withBlock:(id)a5;
- (BOOL)_supportsSampleReferencesReturningError:(id *)a3;
- (BOOL)canAddInput:(AVAssetWriterInput *)input;
- (BOOL)canAddInputGroup:(AVAssetWriterInputGroup *)inputGroup;
- (BOOL)canApplyOutputSettings:(NSDictionary *)outputSettings forMediaType:(AVMediaType)mediaType;
- (BOOL)isDefunct;
- (BOOL)isVirtualCaptureCardSupported;
- (BOOL)producesCombinableFragments;
- (BOOL)requiresInProcessOperation;
- (BOOL)shouldOptimizeForNetworkUse;
- (BOOL)usesVirtualCaptureCard;
- (CGAffineTransform)preferredTransform;
- (CMTime)initialMovieFragmentInterval;
- (CMTime)initialSegmentStartTime;
- (CMTime)movieFragmentInterval;
- (CMTime)overallDurationHint;
- (CMTime)preferredOutputSegmentInterval;
- (CMTimeScale)movieTimeScale;
- (NSArray)availableMediaTypes;
- (NSArray)inputGroups;
- (NSArray)inputs;
- (NSArray)metadata;
- (NSError)error;
- (NSInteger)initialMovieFragmentSequenceNumber;
- (NSString)description;
- (NSURL)directoryForTemporaryFiles;
- (NSURL)outputURL;
- (float)preferredRate;
- (float)preferredVolume;
- (id)delegate;
- (void)_transitionToFailedStatusWithError:(id)a3;
- (void)addInput:(AVAssetWriterInput *)input;
- (void)addInputGroup:(AVAssetWriterInputGroup *)inputGroup;
- (void)cancelWriting;
- (void)dealloc;
- (void)declareKeyPathDependenciesWithRegistry:(id)a3;
- (void)endSessionAtSourceTime:(CMTime *)endTime;
- (void)finishWritingWithCompletionHandler:(void *)handler;
- (void)flush;
- (void)flushSegment;
- (void)setDelegate:(id)delegate;
- (void)setDirectoryForTemporaryFiles:(NSURL *)directoryForTemporaryFiles;
- (void)setInitialMovieFragmentInterval:(CMTime *)initialMovieFragmentInterval;
- (void)setInitialMovieFragmentSequenceNumber:(NSInteger)initialMovieFragmentSequenceNumber;
- (void)setInitialSegmentStartTime:(CMTime *)initialSegmentStartTime;
- (void)setMetadata:(NSArray *)metadata;
- (void)setMovieFragmentInterval:(CMTime *)movieFragmentInterval;
- (void)setMovieTimeScale:(CMTimeScale)movieTimeScale;
- (void)setOutputFileTypeProfile:(AVFileTypeProfile)outputFileTypeProfile;
- (void)setOverallDurationHint:(CMTime *)overallDurationHint;
- (void)setPreferredOutputSegmentInterval:(CMTime *)preferredOutputSegmentInterval;
- (void)setPreferredRate:(float)a3;
- (void)setPreferredTransform:(CGAffineTransform *)a3;
- (void)setPreferredVolume:(float)a3;
- (void)setProducesCombinableFragments:(BOOL)producesCombinableFragments;
- (void)setRequiresInProcessOperation:(BOOL)a3;
- (void)setShouldOptimizeForNetworkUse:(BOOL)shouldOptimizeForNetworkUse;
- (void)setUsesVirtualCaptureCard:(BOOL)a3;
- (void)setWritesSinglePassUsingPredeterminedFileSize:(int64_t)a3 mediaDataSize:(int64_t)a4;
- (void)startSessionAtSourceTime:(CMTime *)startTime;
@end

@implementation AVAssetWriter

+ (AVAssetWriter)assetWriterWithURL:(NSURL *)outputURL fileType:(AVFileType)outputFileType error:(NSError *)outError
{
  v5 = [objc_alloc(objc_opt_class()) initWithURL:outputURL fileType:outputFileType error:outError];

  return v5;
}

- (AVAssetWriter)initWithURL:(NSURL *)outputURL fileType:(AVFileType)outputFileType error:(NSError *)outError
{
  v31.receiver = self;
  v31.super_class = AVAssetWriter;
  v9 = [(AVAssetWriter *)&v31 init];
  v10 = v9;
  if (!outputURL)
  {
    v15 = v9;
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = "outputURL != nil";
LABEL_16:
    v29 = v23;
    v26 = @"invalid parameter not satisfying: %s";
    goto LABEL_17;
  }

  if (![(NSURL *)outputURL isFileURL])
  {
    v24 = v10;
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = "[outputURL isFileURL]";
    goto LABEL_16;
  }

  if (!outputFileType)
  {
    v25 = v10;
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = "outputFileType != nil";
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  if (![(AVAssetWriter *)v10 _initInternalObject])
  {
    goto LABEL_9;
  }

  v30 = 0;
  v11 = [AVMediaFileType _mediaFileTypeWithFileTypeIdentifier:outputFileType exceptionReason:&v30];
  if (!v11)
  {
    v28 = v10;
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v26 = v30;
LABEL_17:
    v27 = [v21 exceptionWithName:v22 reason:AVMethodExceptionReasonWithObjectAndSelector(v10 userInfo:{a2, v26, v16, v17, v18, v19, v20, v29), 0}];
    objc_exception_throw(v27);
  }

  v10->_internal->helper = [[AVAssetWriterUnknownHelper alloc] initWithURL:outputURL fileType:v11];
  internal = v10->_internal;
  helper = internal->helper;
  if (helper)
  {
    [(AVAssetWriterHelper *)helper setWeakReferenceToAssetWriter:internal->weakReference];
    goto LABEL_10;
  }

LABEL_9:

  v10 = 0;
LABEL_10:
  if (outError)
  {
    *outError = 0;
  }

  return v10;
}

- (AVAssetWriter)initWithContentType:(UTType *)outputContentType
{
  v28.receiver = self;
  v28.super_class = AVAssetWriter;
  v5 = [(AVAssetWriter *)&v28 init];
  v6 = v5;
  if (!outputContentType)
  {
    v11 = v5;
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v19 = AVMethodExceptionReasonWithObjectAndSelector(v6, a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, "outputContentType != nil");
    goto LABEL_11;
  }

  if (v5)
  {
    if (![(AVAssetWriter *)v5 _initInternalObject])
    {
      goto LABEL_7;
    }

    v27 = 0;
    v7 = [AVMediaFileType _mediaFileTypeWithFileTypeIdentifier:[(UTType *)outputContentType identifier] exceptionReason:&v27];
    if (v7)
    {
      v6->_internal->helper = [[AVAssetWriterUnknownHelper alloc] initWithURL:0 fileType:v7];
      internal = v6->_internal;
      helper = internal->helper;
      if (helper)
      {
        [(AVAssetWriterHelper *)helper setWeakReferenceToAssetWriter:internal->weakReference];
        return v6;
      }

LABEL_7:

      return 0;
    }

    v20 = v6;
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v19 = AVMethodExceptionReasonWithObjectAndSelector(v6, a2, v27, v21, v22, v23, v24, v25, v26);
LABEL_11:
    objc_exception_throw([v12 exceptionWithName:v13 reason:v19 userInfo:0]);
  }

  return v6;
}

- (AVAssetWriter)initWithFileType:(id)a3 error:(id *)a4
{
  v30.receiver = self;
  v30.super_class = AVAssetWriter;
  v7 = [(AVAssetWriter *)&v30 init];
  v8 = v7;
  if (!a3)
  {
    v13 = v7;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v21 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, @"invalid parameter not satisfying: %s", v16, v17, v18, v19, v20, "outputFileType != nil");
    goto LABEL_13;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  if (![(AVAssetWriter *)v7 _initInternalObject])
  {
    goto LABEL_7;
  }

  v29 = 0;
  v9 = [AVMediaFileType _mediaFileTypeWithFileTypeIdentifier:a3 exceptionReason:&v29];
  if (!v9)
  {
    v22 = v8;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v21 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, v29, v23, v24, v25, v26, v27, v28);
LABEL_13:
    objc_exception_throw([v14 exceptionWithName:v15 reason:v21 userInfo:0]);
  }

  v8->_internal->helper = [[AVAssetWriterUnknownHelper alloc] initWithURL:0 fileType:v9];
  internal = v8->_internal;
  helper = internal->helper;
  if (helper)
  {
    [(AVAssetWriterHelper *)helper setWeakReferenceToAssetWriter:internal->weakReference];
    goto LABEL_8;
  }

LABEL_7:

  v8 = 0;
LABEL_8:
  if (a4)
  {
    *a4 = 0;
  }

  return v8;
}

- (BOOL)_initInternalObject
{
  v3 = objc_alloc_init(AVAssetWriterInternal);
  self->_internal = v3;
  if (v3)
  {
    self->_internal->weakReference = [[AVWeakReference alloc] initWithReferencedObject:self];
    v6.receiver = self;
    v6.super_class = AVAssetWriter;
    v4 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@ helper read/write queue", -[AVAssetWriter description](&v6, sel_description)), "UTF8String"];
    self->_internal->helperReadWriteQueue = av_readwrite_dispatch_queue_create(v4);
    self->_internal->keyPathDependencyManager = [[AVKeyPathDependencyManager alloc] initWithDependencyHost:self];
    [(AVKeyPathDependencyManager *)self->_internal->keyPathDependencyManager dependencyHostIsFullyInitialized];
  }

  return v3 != 0;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    [(AVKeyPathDependencyManager *)internal->keyPathDependencyManager cancelAllCallbacks];

    internal = self->_internal;
    helperReadWriteQueue = internal->helperReadWriteQueue;
    if (helperReadWriteQueue)
    {
      dispatch_release(helperReadWriteQueue);
      internal = self->_internal;
    }
  }

  v5.receiver = self;
  v5.super_class = AVAssetWriter;
  [(AVAssetWriter *)&v5 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, outputURL = %@, outputFileType = %@>", NSStringFromClass(v4), self, -[AVAssetWriter outputURL](self, "outputURL"), -[AVAssetWriter outputFileType](self, "outputFileType")];
}

- (AVAssetWriterHelper)_helper
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  helperReadWriteQueue = self->_internal->helperReadWriteQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__AVAssetWriter__helper__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(helperReadWriteQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __24__AVAssetWriter__helper__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_setHelper:(id)a3 ifCurrentHelper:(id)a4 withBlock:(id)a5
{
  v8 = self;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  [(AVAssetWriter *)self willChangeValueForKey:@"helper"];
  helperReadWriteQueue = v8->_internal->helperReadWriteQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AVAssetWriter__setHelper_ifCurrentHelper_withBlock___block_invoke;
  v11[3] = &unk_1E7463710;
  v11[4] = a4;
  v11[5] = v8;
  v11[6] = a3;
  v11[7] = a5;
  v11[8] = &v12;
  av_readwrite_dispatch_queue_write(helperReadWriteQueue, v11);
  [(AVAssetWriter *)v8 didChangeValueForKey:@"helper"];
  LOBYTE(v8) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__54__AVAssetWriter__setHelper_ifCurrentHelper_withBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(*(a1 + 40) + 8) + 16);
  if (v2 == result && *(a1 + 48) != v2)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(*(a1 + 56));
      result = *(*(*(a1 + 40) + 8) + 16);
    }

    [result setWeakReferenceToAssetWriter:0];

    *(*(*(a1 + 40) + 8) + 16) = *(a1 + 48);
    result = [*(*(*(a1 + 40) + 8) + 16) setWeakReferenceToAssetWriter:*(*(*(a1 + 40) + 8) + 8)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  return result;
}

- (NSURL)outputURL
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 outputURL];
}

- (AVFileType)outputFileType
{
  v2 = [(AVAssetWriterHelper *)[(AVAssetWriter *)self _helper] mediaFileType];

  return [(AVMediaFileType *)v2 UTI];
}

- (NSArray)availableMediaTypes
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 availableMediaTypes];
}

- (BOOL)_supportsSampleReferencesReturningError:(id *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(AVAssetWriterHelper *)[(AVAssetWriter *)self _helper] mediaFileType];
  v5 = [(AVMediaFileType *)v4 supportsSampleReferences];
  v6 = v5;
  if (a3 && !v5)
  {
    v8 = @"AVErrorFileTypeKey";
    v9[0] = [(AVMediaFileType *)v4 UTI];
    *a3 = AVLocalizedError(@"AVFoundationErrorDomain", -11854, [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1]);
  }

  return v6;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  if ([a3 isEqualToString:@"helper"])
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AVAssetWriter;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, a3);
}

- (void)declareKeyPathDependenciesWithRegistry:(id)a3
{
  [a3 valueForKey:@"status" dependsOnValueAtKeyPath:{AVTwoPartKeyPathMake(@"helper", @"status"}];
  v4 = AVTwoPartKeyPathMake(@"helper", @"error");

  [a3 valueForKey:@"error" dependsOnValueAtKeyPath:v4];
}

- (AVAssetWriterStatus)status
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 status];
}

- (NSError)error
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 error];
}

- (id)delegate
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 delegate];
}

- (void)setDelegate:(id)delegate
{
  [(AVAssetWriterHelper *)[(AVAssetWriter *)self _helper] setDelegate:delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v4 = *MEMORY[0x1E6960C68];
    v5 = *(MEMORY[0x1E6960C68] + 16);
    [(AVAssetWriter *)self setMovieFragmentInterval:&v4];
  }
}

- (CMTime)movieFragmentInterval
{
  result = [(AVAssetWriter *)self _helper];
  if (result)
  {

    return [(CMTime *)result movieFragmentInterval];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)setMovieFragmentInterval:(CMTime *)movieFragmentInterval
{
  time1 = *movieFragmentInterval;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "CMTIME_COMPARE_INLINE(interval, >=, kCMTimeZero)"), 0}];
    objc_exception_throw(v12);
  }

  v11 = [(AVAssetWriter *)self _helper];
  time1 = *movieFragmentInterval;
  [(AVAssetWriterHelper *)v11 setMovieFragmentInterval:&time1];
}

- (CMTime)initialMovieFragmentInterval
{
  result = [(AVAssetWriter *)self _helper];
  if (result)
  {

    return [(CMTime *)result initialMovieFragmentInterval];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)setInitialMovieFragmentInterval:(CMTime *)initialMovieFragmentInterval
{
  time1 = *initialMovieFragmentInterval;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "CMTIME_COMPARE_INLINE(interval, >=, kCMTimeZero)"), 0}];
    objc_exception_throw(v12);
  }

  v11 = [(AVAssetWriter *)self _helper];
  time1 = *initialMovieFragmentInterval;
  [(AVAssetWriterHelper *)v11 setInitialMovieFragmentInterval:&time1];
}

- (CMTime)overallDurationHint
{
  result = [(AVAssetWriter *)self _helper];
  if (result)
  {

    return [(CMTime *)result overallDurationHint];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)setOverallDurationHint:(CMTime *)overallDurationHint
{
  flags = overallDurationHint->flags;
  if ((flags & 0x1D) == 1)
  {
    time1 = *overallDurationHint;
    time2 = **&MEMORY[0x1E6960CC0];
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    flags = overallDurationHint->flags;
  }

  if (flags)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "(CMTIME_IS_NUMERIC(hint) && CMTIME_COMPARE_INLINE(hint, >=, kCMTimeZero)) || CMTIME_IS_INVALID(hint)"), 0}];
    objc_exception_throw(v13);
  }

LABEL_5:
  v12 = [(AVAssetWriter *)self _helper];
  time1 = *overallDurationHint;
  [(AVAssetWriterHelper *)v12 setOverallDurationHint:&time1];
}

- (BOOL)shouldOptimizeForNetworkUse
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 shouldOptimizeForNetworkUse];
}

- (void)setShouldOptimizeForNetworkUse:(BOOL)shouldOptimizeForNetworkUse
{
  v3 = shouldOptimizeForNetworkUse;
  v4 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v4 setShouldOptimizeForNetworkUse:v3];
}

- (NSURL)directoryForTemporaryFiles
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 directoryForTemporaryFiles];
}

- (void)setDirectoryForTemporaryFiles:(NSURL *)directoryForTemporaryFiles
{
  v4 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v4 setDirectoryForTemporaryFiles:directoryForTemporaryFiles];
}

- (CMTimeScale)movieTimeScale
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 movieTimeScale];
}

- (void)setMovieTimeScale:(CMTimeScale)movieTimeScale
{
  if (movieTimeScale < 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "movieTimeScale >= 0"), 0}];
    objc_exception_throw(v10);
  }

  v8 = *&movieTimeScale;
  v9 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v9 setMovieTimeScale:v8];
}

- (CGAffineTransform)preferredTransform
{
  result = [(AVAssetWriter *)self _helper];
  if (result)
  {

    return [(CGAffineTransform *)result preferredTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setPreferredTransform:(CGAffineTransform *)a3
{
  v4 = [(AVAssetWriter *)self _helper];
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [(AVAssetWriterHelper *)v4 setPreferredTransform:v6];
}

- (float)preferredVolume
{
  v2 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v2 preferredVolume];
  return result;
}

- (void)setPreferredVolume:(float)a3
{
  v4 = [(AVAssetWriter *)self _helper];
  *&v5 = a3;

  [(AVAssetWriterHelper *)v4 setPreferredVolume:v5];
}

- (float)preferredRate
{
  v2 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v2 preferredRate];
  return result;
}

- (void)setPreferredRate:(float)a3
{
  v4 = [(AVAssetWriter *)self _helper];
  *&v5 = a3;

  [(AVAssetWriterHelper *)v4 setPreferredRate:v5];
}

- (CMTime)preferredOutputSegmentInterval
{
  result = [(AVAssetWriter *)self _helper];
  if (result)
  {

    return [(CMTime *)result preferredOutputSegmentInterval];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)setPreferredOutputSegmentInterval:(CMTime *)preferredOutputSegmentInterval
{
  v4 = [(AVAssetWriter *)self _helper];
  v5 = *preferredOutputSegmentInterval;
  [(AVAssetWriterHelper *)v4 setPreferredOutputSegmentInterval:&v5];
}

- (CMTime)initialSegmentStartTime
{
  result = [(AVAssetWriter *)self _helper];
  if (result)
  {

    return [(CMTime *)result initialSegmentStartTime];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)setInitialSegmentStartTime:(CMTime *)initialSegmentStartTime
{
  v4 = [(AVAssetWriter *)self _helper];
  v5 = *initialSegmentStartTime;
  [(AVAssetWriterHelper *)v4 setInitialSegmentStartTime:&v5];
}

- (AVFileTypeProfile)outputFileTypeProfile
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 outputFileTypeProfile];
}

- (void)setOutputFileTypeProfile:(AVFileTypeProfile)outputFileTypeProfile
{
  v4 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v4 setOutputFileTypeProfile:outputFileTypeProfile];
}

- (NSInteger)initialMovieFragmentSequenceNumber
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 initialMovieFragmentSequenceNumber];
}

- (void)setInitialMovieFragmentSequenceNumber:(NSInteger)initialMovieFragmentSequenceNumber
{
  if (initialMovieFragmentSequenceNumber <= 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "0 < sequenceNumber"), 0}];
    objc_exception_throw(v10);
  }

  v9 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v9 setInitialMovieFragmentSequenceNumber:initialMovieFragmentSequenceNumber];
}

- (BOOL)producesCombinableFragments
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 producesCombinableFragments];
}

- (void)setProducesCombinableFragments:(BOOL)producesCombinableFragments
{
  v3 = producesCombinableFragments;
  v4 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v4 setProducesCombinableFragments:v3];
}

- (BOOL)isVirtualCaptureCardSupported
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 isVirtualCaptureCardSupported];
}

- (BOOL)usesVirtualCaptureCard
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 usesVirtualCaptureCard];
}

- (void)setUsesVirtualCaptureCard:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v4 setUsesVirtualCaptureCard:v3];
}

- (BOOL)requiresInProcessOperation
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 requiresInProcessOperation];
}

- (void)setRequiresInProcessOperation:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v4 setRequiresInProcessOperation:v3];
}

- (void)setWritesSinglePassUsingPredeterminedFileSize:(int64_t)a3 mediaDataSize:(int64_t)a4
{
  if (a3 <= 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "fileSize > 0";
    goto LABEL_8;
  }

  if (a4 <= 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "mediaDataSize > 0";
LABEL_8:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a4, v4, v5, v6, v7, v13), 0}];
    objc_exception_throw(v14);
  }

  [(AVAssetWriterHelper *)[(AVAssetWriter *)self _helper] setSinglePassFileSize:a3];
  v10 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v10 setSinglePassMediaDataSize:a4];
}

- (NSArray)inputs
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 inputs];
}

- (NSArray)inputGroups
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 inputGroups];
}

- (BOOL)canApplyOutputSettings:(NSDictionary *)outputSettings forMediaType:(AVMediaType)mediaType
{
  v6 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v6 canApplyOutputSettings:outputSettings forMediaType:mediaType];
}

- (BOOL)canAddInput:(AVAssetWriterInput *)input
{
  if (!input)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "input != nil"), 0}];
    objc_exception_throw(v11);
  }

  v9 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v9 canAddInput:input];
}

- (void)addInput:(AVAssetWriterInput *)input
{
  if (!input)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "input != nil"), 0}];
    objc_exception_throw(v10);
  }

  v9 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v9 addInput:input];
}

- (BOOL)canAddInputGroup:(AVAssetWriterInputGroup *)inputGroup
{
  if (!inputGroup)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "inputGroup != nil"), 0}];
    objc_exception_throw(v11);
  }

  v9 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v9 canAddInputGroup:inputGroup];
}

- (void)addInputGroup:(AVAssetWriterInputGroup *)inputGroup
{
  if (!inputGroup)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "inputGroup != nil"), 0}];
    objc_exception_throw(v10);
  }

  v9 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v9 addInputGroup:inputGroup];
}

- (NSArray)metadata
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 metadata];
}

- (void)setMetadata:(NSArray *)metadata
{
  if (metadata)
  {
    v5 = 0;
    v4 = [AVMetadataItem _metadataArrayWithSmartDeferredLoadingForMetadataArray:metadata error:&v5];
    if (v4)
    {
      [(AVAssetWriterHelper *)[(AVAssetWriter *)self _helper] setMetadata:v4];
    }

    else if ([v5 code] == -11999)
    {
      objc_exception_throw([objc_msgSend(v5 "userInfo")]);
    }
  }
}

- (void)startSessionAtSourceTime:(CMTime *)startTime
{
  if ((startTime->flags & 0x1D) != 1)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "CMTIME_IS_NUMERIC(startTime)"), 0}];
    objc_exception_throw(v10);
  }

  v9 = [(AVAssetWriter *)self _helper];
  v11 = *startTime;
  [(AVAssetWriterHelper *)v9 startSessionAtSourceTime:&v11];
}

- (void)endSessionAtSourceTime:(CMTime *)endTime
{
  if ((endTime->flags & 0x1D) != 1)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "CMTIME_IS_NUMERIC(endTime)"), 0}];
    objc_exception_throw(v10);
  }

  v9 = [(AVAssetWriter *)self _helper];
  v11 = *endTime;
  [(AVAssetWriterHelper *)v9 endSessionAtSourceTime:&v11];
}

- (void)cancelWriting
{
  v2 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v2 cancelWriting];
}

- (void)finishWritingWithCompletionHandler:(void *)handler
{
  if (!handler)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "handler != nil"), 0}];
    objc_exception_throw(v10);
  }

  v9 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v9 finishWritingWithCompletionHandler:handler];
}

+ (id)_errorForOSStatus:(int)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a3 == -17698)
  {
    v4 = *MEMORY[0x1E696A278];
    v5[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot append tagged buffer group due to mismatch between video layer IDs in tagged buffer group and value of kVTCompressionPropertyKey_MVHEVCVideoLayerIDs in the AVVideoCompressionPropertiesKey sub-dictionary of the input's outputSettings"];
    return AVLocalizedErrorWithUnderlyingOSStatus(-17698, [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
  }

  else if (a3)
  {
    if (a3 == -12785)
    {

      return AVLocalizedError(@"AVFoundationErrorDomain", -11847, 0);
    }

    else
    {

      return AVLocalizedErrorWithUnderlyingOSStatus(a3, 0);
    }
  }

  else
  {
    return 0;
  }
}

- (void)_transitionToFailedStatusWithError:(id)a3
{
  v4 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v4 transitionToFailedStatusWithError:a3];
}

- (void)flush
{
  v2 = [(AVAssetWriter *)self _helper];

  [(AVAssetWriterHelper *)v2 flush];
}

- (void)flushSegment
{
  [(AVAssetWriter *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = @"-flushSegment can be called only if the delegate method to output segment data is implemented.";
LABEL_9:
    v12 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v11, v4, v5, v6, v7, v8, v13.value), 0}];
    objc_exception_throw(v12);
  }

  memset(&v15, 0, sizeof(v15));
  if (self)
  {
    [(AVAssetWriter *)self preferredOutputSegmentInterval];
  }

  time1 = v15;
  v13 = **&MEMORY[0x1E6960C68];
  if (CMTimeCompare(&time1, &v13))
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = @"-flushSegment can be called only if the value of the preferredOutputSegmentInterval property is kCMTimeIndefinite.";
    goto LABEL_9;
  }

  [(AVAssetWriterHelper *)[(AVAssetWriter *)self _helper] flushSegment];
}

- (BOOL)isDefunct
{
  v2 = [(AVAssetWriter *)self _helper];

  return [(AVAssetWriterHelper *)v2 _isDefunct];
}

@end