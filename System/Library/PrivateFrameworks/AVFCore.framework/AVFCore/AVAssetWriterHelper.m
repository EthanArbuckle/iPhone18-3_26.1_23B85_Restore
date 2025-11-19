@interface AVAssetWriterHelper
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)initialMovieFragmentInterval;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)initialSegmentStartTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieFragmentInterval;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overallDurationHint;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredOutputSegmentInterval;
- (AVAssetWriterDelegate)delegate;
- (AVAssetWriterHelper)initWithConfigurationState:(id)a3;
- (AVMediaFileType)mediaFileType;
- (BOOL)_canApplyOutputSettings:(id)a3 forMediaType:(id)a4 sourceFormat:(opaqueCMFormatDescription *)a5 exceptionReason:(id *)a6;
- (BOOL)_canApplyTrackReferences:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_transitionToClientInitiatedTerminalStatus:(int64_t)a3;
- (BOOL)canApplyOutputSettings:(id)a3 forMediaType:(id)a4;
- (BOOL)isVirtualCaptureCardSupported;
- (BOOL)producesCombinableFragments;
- (BOOL)requiresInProcessOperation;
- (BOOL)shouldOptimizeForNetworkUse;
- (BOOL)usesVirtualCaptureCard;
- (CGAffineTransform)preferredTransform;
- (NSArray)availableMediaTypes;
- (NSArray)inputGroups;
- (NSArray)inputs;
- (NSArray)metadata;
- (NSString)outputFileTypeProfile;
- (NSURL)directoryForTemporaryFiles;
- (NSURL)outputURL;
- (float)preferredRate;
- (float)preferredVolume;
- (int)movieTimeScale;
- (int64_t)initialMovieFragmentSequenceNumber;
- (int64_t)singlePassFileSize;
- (int64_t)singlePassMediaDataSize;
- (int64_t)status;
- (void)addInput:(id)a3;
- (void)addInputGroup:(id)a3;
- (void)dealloc;
- (void)endSessionAtSourceTime:(id *)a3;
- (void)finishWriting;
- (void)finishWritingWithCompletionHandler:(id)a3;
- (void)flush;
- (void)flushSegment;
- (void)setDelegate:(id)a3;
- (void)setDirectoryForTemporaryFiles:(id)a3;
- (void)setInitialMovieFragmentInterval:(id *)a3;
- (void)setInitialMovieFragmentSequenceNumber:(int64_t)a3;
- (void)setInitialSegmentStartTime:(id *)a3;
- (void)setMetadata:(id)a3;
- (void)setMovieFragmentInterval:(id *)a3;
- (void)setMovieTimeScale:(int)a3;
- (void)setOutputFileTypeProfile:(id)a3;
- (void)setOverallDurationHint:(id *)a3;
- (void)setPreferredOutputSegmentInterval:(id *)a3;
- (void)setPreferredRate:(float)a3;
- (void)setPreferredTransform:(CGAffineTransform *)a3;
- (void)setPreferredVolume:(float)a3;
- (void)setProducesCombinableFragments:(BOOL)a3;
- (void)setRequiresInProcessOperation:(BOOL)a3;
- (void)setShouldOptimizeForNetworkUse:(BOOL)a3;
- (void)setSinglePassFileSize:(int64_t)a3;
- (void)setSinglePassMediaDataSize:(int64_t)a3;
- (void)setUsesVirtualCaptureCard:(BOOL)a3;
- (void)startSessionAtSourceTime:(id *)a3;
- (void)startWriting;
- (void)transitionToFailedStatusWithError:(id)a3;
@end

@implementation AVAssetWriterHelper

- (AVAssetWriterHelper)initWithConfigurationState:(id)a3
{
  v15.receiver = self;
  v15.super_class = AVAssetWriterHelper;
  v5 = [(AVAssetWriterHelper *)&v15 init];
  v6 = objc_opt_class();
  AVRequireConcreteObject(v5, a2, v6);
  if (!a3)
  {
    v8 = v5;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "configurationState != nil"), 0}];
    objc_exception_throw(v14);
  }

  if (v5)
  {
    v5->_configurationState = a3;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterHelper;
  [(AVAssetWriterHelper *)&v3 dealloc];
}

- (NSURL)outputURL
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 URL];
}

- (AVMediaFileType)mediaFileType
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 mediaFileType];
}

- (NSArray)availableMediaTypes
{
  v2 = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] supportedMediaTypes];

  return [(NSSet *)v2 allObjects];
}

- (int64_t)status
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (AVAssetWriterDelegate)delegate
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 delegate];
}

- (void)setDelegate:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieFragmentInterval
{
  result = [(AVAssetWriterHelper *)self configurationState];
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result movieFragmentInterval];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setMovieFragmentInterval:(id *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)initialMovieFragmentInterval
{
  result = [(AVAssetWriterHelper *)self configurationState];
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result initialMovieFragmentInterval];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setInitialMovieFragmentInterval:(id *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overallDurationHint
{
  result = [(AVAssetWriterHelper *)self configurationState];
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result overallDurationHint];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setOverallDurationHint:(id *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)shouldOptimizeForNetworkUse
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 shouldOptimizeForNetworkUse];
}

- (void)setShouldOptimizeForNetworkUse:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSURL)directoryForTemporaryFiles
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 directoryForTemporaryFiles];
}

- (void)setDirectoryForTemporaryFiles:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int)movieTimeScale
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 movieTimeScale];
}

- (void)setMovieTimeScale:(int)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSArray)metadata
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 metadataItems];
}

- (void)setMetadata:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (CGAffineTransform)preferredTransform
{
  result = [(AVAssetWriterHelper *)self configurationState];
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
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (float)preferredVolume
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v2 preferredVolume];
  return result;
}

- (void)setPreferredVolume:(float)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (float)preferredRate
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v2 preferredRate];
  return result;
}

- (void)setPreferredRate:(float)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredOutputSegmentInterval
{
  result = [(AVAssetWriterHelper *)self configurationState];
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result preferredOutputSegmentInterval];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setPreferredOutputSegmentInterval:(id *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)initialSegmentStartTime
{
  result = [(AVAssetWriterHelper *)self configurationState];
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result initialSegmentStartTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setInitialSegmentStartTime:(id *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSString)outputFileTypeProfile
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 outputFileTypeProfile];
}

- (void)setOutputFileTypeProfile:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int64_t)initialMovieFragmentSequenceNumber
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 initialMovieFragmentSequenceNumber];
}

- (void)setInitialMovieFragmentSequenceNumber:(int64_t)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)producesCombinableFragments
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 producesCombinableFragments];
}

- (void)setProducesCombinableFragments:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)isVirtualCaptureCardSupported
{
  v2 = [(AVAssetWriterHelper *)self outputURL];
  if (v2)
  {
    LOBYTE(v2) = MEMORY[0x19A8C96B0]() != 0;
  }

  return v2;
}

- (BOOL)usesVirtualCaptureCard
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 usesVirtualCaptureCard];
}

- (void)setUsesVirtualCaptureCard:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)requiresInProcessOperation
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 requiresInProcessOperation];
}

- (void)setRequiresInProcessOperation:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int64_t)singlePassFileSize
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 singlePassFileSize];
}

- (void)setSinglePassFileSize:(int64_t)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int64_t)singlePassMediaDataSize
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 singlePassMediaDataSize];
}

- (void)setSinglePassMediaDataSize:(int64_t)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSArray)inputs
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 inputs];
}

- (NSArray)inputGroups
{
  v2 = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)v2 inputGroups];
}

- (BOOL)_canApplyOutputSettings:(id)a3 forMediaType:(id)a4 sourceFormat:(opaqueCMFormatDescription *)a5 exceptionReason:(id *)a6
{
  v25 = 0;
  if (![(NSArray *)[(AVAssetWriterHelper *)self availableMediaTypes] containsObject:a4])
  {
    v12 = MEMORY[0x1E696AEC0];
    v22 = a4;
    v13 = @"media type %@ is not allowed for this asset writer";
    goto LABEL_9;
  }

  if (a3)
  {
    if (![a4 isEqualToString:@"vide"] || (objc_msgSend(a3, "willYieldCompressedSamples") & 1) != 0)
    {
      LODWORD(v11) = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] supportsOutputSettings:a3 reason:&v25];
      if (!v11)
      {
        goto LABEL_11;
      }

      if (([objc_msgSend(a3 "compatibleMediaTypes")] & 1) == 0)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output settings must match supplied media type.  Media type %@ is not compatible with output settings %@.", a4, objc_msgSend(a3, "outputSettingsDictionary"), v24];
LABEL_10:
        v14 = v11;
        LOBYTE(v11) = 0;
        v25 = v14;
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = @"AVAssetWriter currently does not support writing uncompressed video in a specific format.";
LABEL_9:
    v11 = [v12 stringWithFormat:v13, v22, v23, v24];
    goto LABEL_10;
  }

  v15 = [(AVAssetWriterHelper *)self mediaFileType];
  v16 = [(AVMediaFileType *)v15 UTI];
  if (![(NSString *)v16 isEqualToString:@"com.apple.quicktime-movie"])
  {
    v17 = [(NSString *)v16 isEqualToString:@"com.apple.quicktime-audio"];
    if (!a5 && !v17)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"In order to perform passthrough to file type %@, please provide a format hint in the AVAssetWriterInput initializer", v16, v23, v24];
      goto LABEL_10;
    }
  }

  if (AVAssetWriterCanAddPassthroughInputWithMediaTypeToAssetWriterWithFileType(a4, v15))
  {
    if (a5 && ![(AVMediaFileType *)v15 supportsFormat:a5])
    {
      v19 = MEMORY[0x1E696AEC0];
      MediaSubType = CMFormatDescriptionGetMediaSubType(a5);
      v11 = [v19 stringWithFormat:@"AVAssetWriter does not support passthrough of media with type '%@' and subtype '%@' to file type %@", a4, AVStringForOSType(MediaSubType), v16];
      goto LABEL_10;
    }

LABEL_18:
    LOBYTE(v11) = 1;
    goto LABEL_11;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVAssetWriter does not support passthrough for media type %@ to file type %@.", a4, v16];
  v25 = v18;
  if (([a4 isEqualToString:@"vide"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"auxv") & 1) != 0 || (LODWORD(v11) = objc_msgSend(a4, "isEqualToString:", @"soun"), v11))
  {
    v11 = [v18 stringByAppendingString:@"  Please specify a non-nil output settings dictionary."];
    goto LABEL_10;
  }

LABEL_11:
  if (a6)
  {
    *a6 = v25;
  }

  return v11;
}

- (BOOL)canApplyOutputSettings:(id)a3 forMediaType:(id)a4
{
  if (a3)
  {
    v6 = [AVOutputSettings _outputSettingsWithOutputSettingsDictionary:a3 mediaType:a4 exceptionReason:0];
    if (v6)
    {

      LOBYTE(v6) = [(AVAssetWriterHelper *)self _canApplyOutputSettings:v6 forMediaType:a4 sourceFormat:0 exceptionReason:0];
    }
  }

  else
  {
    v7 = [(AVAssetWriterHelper *)self mediaFileType];

    LOBYTE(v6) = AVAssetWriterCanAddPassthroughInputWithMediaTypeToAssetWriterWithFileType(a4, v7);
  }

  return v6;
}

- (BOOL)_canApplyTrackReferences:(id)a3 exceptionReason:(id *)a4
{
  v6 = [a3 count];
  if (v6)
  {
    v7 = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] UTI];
    if (![(NSString *)v7 isEqualToString:@"com.apple.quicktime-movie"]&& ![(NSString *)v7 isEqualToString:@"com.apple.quicktime-audio"]&& ![(NSString *)v7 isEqualToString:@"com.apple.m4a-audio"]&& ![(NSString *)v7 isEqualToString:@"com.apple.m4v-video"]&& ![(NSString *)v7 isEqualToString:@"public.3gpp"]&& ![(NSString *)v7 isEqualToString:@"public.mpeg-4"])
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"output file type %@ does not support track associations", -[AVMediaFileType UTI](-[AVAssetWriterHelper mediaFileType](self, "mediaFileType"), "UTI")];
      v8 = 0;
      if (!a4)
      {
        return v8;
      }

      goto LABEL_10;
    }

    v6 = 0;
  }

  v8 = 1;
  if (a4)
  {
LABEL_10:
    *a4 = v6;
  }

  return v8;
}

- (void)addInput:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (void)addInputGroup:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (void)startWriting
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = [(AVAssetWriterHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (void)startSessionAtSourceTime:(id *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (void)endSessionAtSourceTime:(id *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (void)finishWriting
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = [(AVAssetWriterHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (void)finishWritingWithCompletionHandler:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)_transitionToClientInitiatedTerminalStatus:(int64_t)a3
{
  v5 = [(AVWeakReference *)[(AVAssetWriterHelper *)self weakReferenceToAssetWriter] referencedObject];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [[AVAssetWriterClientInitiatedTerminalHelper alloc] initWithConfigurationState:[(AVAssetWriterHelper *)self configurationState] terminalStatus:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__AVAssetWriterHelper__transitionToClientInitiatedTerminalStatus___block_invoke;
  v10[3] = &unk_1E7460FA8;
  v10[4] = self;
  v10[5] = a3;
  v8 = [v6 _setHelper:v7 ifCurrentHelper:self withBlock:v10];

  return v8;
}

uint64_t __66__AVAssetWriterHelper__transitionToClientInitiatedTerminalStatus___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) inputs];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _transitionToTerminalStatus:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)transitionToFailedStatusWithError:(id)a3
{
  v5 = [(AVWeakReference *)[(AVAssetWriterHelper *)self weakReferenceToAssetWriter] referencedObject];
  if (v5)
  {
    v6 = v5;
    v7 = [[AVAssetWriterFailedTerminalHelper alloc] initWithConfigurationState:[(AVAssetWriterHelper *)self configurationState] terminalError:a3];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__AVAssetWriterHelper_transitionToFailedStatusWithError___block_invoke;
    v8[3] = &unk_1E7460C00;
    v8[4] = self;
    [v6 _setHelper:v7 ifCurrentHelper:self withBlock:v8];
  }
}

uint64_t __57__AVAssetWriterHelper_transitionToFailedStatusWithError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) inputs];
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) _transitionToTerminalStatus:3];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)flush
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = [(AVAssetWriterHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (void)flushSegment
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = [(AVAssetWriterHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

@end