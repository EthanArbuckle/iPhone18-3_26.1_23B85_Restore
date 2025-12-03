@interface AVAssetWriterHelper
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)initialMovieFragmentInterval;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)initialSegmentStartTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)movieFragmentInterval;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overallDurationHint;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredOutputSegmentInterval;
- (AVAssetWriterDelegate)delegate;
- (AVAssetWriterHelper)initWithConfigurationState:(id)state;
- (AVMediaFileType)mediaFileType;
- (BOOL)_canApplyOutputSettings:(id)settings forMediaType:(id)type sourceFormat:(opaqueCMFormatDescription *)format exceptionReason:(id *)reason;
- (BOOL)_canApplyTrackReferences:(id)references exceptionReason:(id *)reason;
- (BOOL)_transitionToClientInitiatedTerminalStatus:(int64_t)status;
- (BOOL)canApplyOutputSettings:(id)settings forMediaType:(id)type;
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
- (void)addInput:(id)input;
- (void)addInputGroup:(id)group;
- (void)dealloc;
- (void)endSessionAtSourceTime:(id *)time;
- (void)finishWriting;
- (void)finishWritingWithCompletionHandler:(id)handler;
- (void)flush;
- (void)flushSegment;
- (void)setDelegate:(id)delegate;
- (void)setDirectoryForTemporaryFiles:(id)files;
- (void)setInitialMovieFragmentInterval:(id *)interval;
- (void)setInitialMovieFragmentSequenceNumber:(int64_t)number;
- (void)setInitialSegmentStartTime:(id *)time;
- (void)setMetadata:(id)metadata;
- (void)setMovieFragmentInterval:(id *)interval;
- (void)setMovieTimeScale:(int)scale;
- (void)setOutputFileTypeProfile:(id)profile;
- (void)setOverallDurationHint:(id *)hint;
- (void)setPreferredOutputSegmentInterval:(id *)interval;
- (void)setPreferredRate:(float)rate;
- (void)setPreferredTransform:(CGAffineTransform *)transform;
- (void)setPreferredVolume:(float)volume;
- (void)setProducesCombinableFragments:(BOOL)fragments;
- (void)setRequiresInProcessOperation:(BOOL)operation;
- (void)setShouldOptimizeForNetworkUse:(BOOL)use;
- (void)setSinglePassFileSize:(int64_t)size;
- (void)setSinglePassMediaDataSize:(int64_t)size;
- (void)setUsesVirtualCaptureCard:(BOOL)card;
- (void)startSessionAtSourceTime:(id *)time;
- (void)startWriting;
- (void)transitionToFailedStatusWithError:(id)error;
@end

@implementation AVAssetWriterHelper

- (AVAssetWriterHelper)initWithConfigurationState:(id)state
{
  v15.receiver = self;
  v15.super_class = AVAssetWriterHelper;
  v5 = [(AVAssetWriterHelper *)&v15 init];
  v6 = objc_opt_class();
  AVRequireConcreteObject(v5, a2, v6);
  if (!state)
  {
    v8 = v5;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "configurationState != nil"), 0}];
    objc_exception_throw(v14);
  }

  if (v5)
  {
    v5->_configurationState = state;
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
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState URL];
}

- (AVMediaFileType)mediaFileType
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState mediaFileType];
}

- (NSArray)availableMediaTypes
{
  supportedMediaTypes = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] supportedMediaTypes];

  return [(NSSet *)supportedMediaTypes allObjects];
}

- (int64_t)status
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (AVAssetWriterDelegate)delegate
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState delegate];
}

- (void)setDelegate:(id)delegate
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
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

- (void)setMovieFragmentInterval:(id *)interval
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
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

- (void)setInitialMovieFragmentInterval:(id *)interval
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
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

- (void)setOverallDurationHint:(id *)hint
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (BOOL)shouldOptimizeForNetworkUse
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState shouldOptimizeForNetworkUse];
}

- (void)setShouldOptimizeForNetworkUse:(BOOL)use
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSURL)directoryForTemporaryFiles
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState directoryForTemporaryFiles];
}

- (void)setDirectoryForTemporaryFiles:(id)files
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (int)movieTimeScale
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState movieTimeScale];
}

- (void)setMovieTimeScale:(int)scale
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSArray)metadata
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState metadataItems];
}

- (void)setMetadata:(id)metadata
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
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

- (void)setPreferredTransform:(CGAffineTransform *)transform
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (float)preferredVolume
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState preferredVolume];
  return result;
}

- (void)setPreferredVolume:(float)volume
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (float)preferredRate
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState preferredRate];
  return result;
}

- (void)setPreferredRate:(float)rate
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
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

- (void)setPreferredOutputSegmentInterval:(id *)interval
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
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

- (void)setInitialSegmentStartTime:(id *)time
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSString)outputFileTypeProfile
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState outputFileTypeProfile];
}

- (void)setOutputFileTypeProfile:(id)profile
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (int64_t)initialMovieFragmentSequenceNumber
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState initialMovieFragmentSequenceNumber];
}

- (void)setInitialMovieFragmentSequenceNumber:(int64_t)number
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (BOOL)producesCombinableFragments
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState producesCombinableFragments];
}

- (void)setProducesCombinableFragments:(BOOL)fragments
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (BOOL)isVirtualCaptureCardSupported
{
  outputURL = [(AVAssetWriterHelper *)self outputURL];
  if (outputURL)
  {
    LOBYTE(outputURL) = MEMORY[0x19A8C96B0]() != 0;
  }

  return outputURL;
}

- (BOOL)usesVirtualCaptureCard
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState usesVirtualCaptureCard];
}

- (void)setUsesVirtualCaptureCard:(BOOL)card
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (BOOL)requiresInProcessOperation
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState requiresInProcessOperation];
}

- (void)setRequiresInProcessOperation:(BOOL)operation
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (int64_t)singlePassFileSize
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState singlePassFileSize];
}

- (void)setSinglePassFileSize:(int64_t)size
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (int64_t)singlePassMediaDataSize
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState singlePassMediaDataSize];
}

- (void)setSinglePassMediaDataSize:(int64_t)size
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSArray)inputs
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState inputs];
}

- (NSArray)inputGroups
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  return [(AVAssetWriterConfigurationState *)configurationState inputGroups];
}

- (BOOL)_canApplyOutputSettings:(id)settings forMediaType:(id)type sourceFormat:(opaqueCMFormatDescription *)format exceptionReason:(id *)reason
{
  v25 = 0;
  if (![(NSArray *)[(AVAssetWriterHelper *)self availableMediaTypes] containsObject:type])
  {
    v12 = MEMORY[0x1E696AEC0];
    typeCopy = type;
    v13 = @"media type %@ is not allowed for this asset writer";
    goto LABEL_9;
  }

  if (settings)
  {
    if (![type isEqualToString:@"vide"] || (objc_msgSend(settings, "willYieldCompressedSamples") & 1) != 0)
    {
      LODWORD(v11) = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] supportsOutputSettings:settings reason:&v25];
      if (!v11)
      {
        goto LABEL_11;
      }

      if (([objc_msgSend(settings "compatibleMediaTypes")] & 1) == 0)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output settings must match supplied media type.  Media type %@ is not compatible with output settings %@.", type, objc_msgSend(settings, "outputSettingsDictionary"), v24];
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
    v11 = [v12 stringWithFormat:v13, typeCopy, v23, v24];
    goto LABEL_10;
  }

  mediaFileType = [(AVAssetWriterHelper *)self mediaFileType];
  v16 = [(AVMediaFileType *)mediaFileType UTI];
  if (![(NSString *)v16 isEqualToString:@"com.apple.quicktime-movie"])
  {
    v17 = [(NSString *)v16 isEqualToString:@"com.apple.quicktime-audio"];
    if (!format && !v17)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"In order to perform passthrough to file type %@, please provide a format hint in the AVAssetWriterInput initializer", v16, v23, v24];
      goto LABEL_10;
    }
  }

  if (AVAssetWriterCanAddPassthroughInputWithMediaTypeToAssetWriterWithFileType(type, mediaFileType))
  {
    if (format && ![(AVMediaFileType *)mediaFileType supportsFormat:format])
    {
      v19 = MEMORY[0x1E696AEC0];
      MediaSubType = CMFormatDescriptionGetMediaSubType(format);
      v11 = [v19 stringWithFormat:@"AVAssetWriter does not support passthrough of media with type '%@' and subtype '%@' to file type %@", type, AVStringForOSType(MediaSubType), v16];
      goto LABEL_10;
    }

LABEL_18:
    LOBYTE(v11) = 1;
    goto LABEL_11;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVAssetWriter does not support passthrough for media type %@ to file type %@.", type, v16];
  v25 = v18;
  if (([type isEqualToString:@"vide"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"auxv") & 1) != 0 || (LODWORD(v11) = objc_msgSend(type, "isEqualToString:", @"soun"), v11))
  {
    v11 = [v18 stringByAppendingString:@"  Please specify a non-nil output settings dictionary."];
    goto LABEL_10;
  }

LABEL_11:
  if (reason)
  {
    *reason = v25;
  }

  return v11;
}

- (BOOL)canApplyOutputSettings:(id)settings forMediaType:(id)type
{
  if (settings)
  {
    v6 = [AVOutputSettings _outputSettingsWithOutputSettingsDictionary:settings mediaType:type exceptionReason:0];
    if (v6)
    {

      LOBYTE(v6) = [(AVAssetWriterHelper *)self _canApplyOutputSettings:v6 forMediaType:type sourceFormat:0 exceptionReason:0];
    }
  }

  else
  {
    mediaFileType = [(AVAssetWriterHelper *)self mediaFileType];

    LOBYTE(v6) = AVAssetWriterCanAddPassthroughInputWithMediaTypeToAssetWriterWithFileType(type, mediaFileType);
  }

  return v6;
}

- (BOOL)_canApplyTrackReferences:(id)references exceptionReason:(id *)reason
{
  v6 = [references count];
  if (v6)
  {
    v7 = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] UTI];
    if (![(NSString *)v7 isEqualToString:@"com.apple.quicktime-movie"]&& ![(NSString *)v7 isEqualToString:@"com.apple.quicktime-audio"]&& ![(NSString *)v7 isEqualToString:@"com.apple.m4a-audio"]&& ![(NSString *)v7 isEqualToString:@"com.apple.m4v-video"]&& ![(NSString *)v7 isEqualToString:@"public.3gpp"]&& ![(NSString *)v7 isEqualToString:@"public.mpeg-4"])
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"output file type %@ does not support track associations", -[AVMediaFileType UTI](-[AVAssetWriterHelper mediaFileType](self, "mediaFileType"), "UTI")];
      v8 = 0;
      if (!reason)
      {
        return v8;
      }

      goto LABEL_10;
    }

    v6 = 0;
  }

  v8 = 1;
  if (reason)
  {
LABEL_10:
    *reason = v6;
  }

  return v8;
}

- (void)addInput:(id)input
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (void)addInputGroup:(id)group
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (void)startWriting
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, status), 0}];
  objc_exception_throw(v13);
}

- (void)startSessionAtSourceTime:(id *)time
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (void)endSessionAtSourceTime:(id *)time
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (void)finishWriting
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, status), 0}];
  objc_exception_throw(v13);
}

- (void)finishWritingWithCompletionHandler:(id)handler
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (BOOL)_transitionToClientInitiatedTerminalStatus:(int64_t)status
{
  referencedObject = [(AVWeakReference *)[(AVAssetWriterHelper *)self weakReferenceToAssetWriter] referencedObject];
  if (!referencedObject)
  {
    return 0;
  }

  v6 = referencedObject;
  v7 = [[AVAssetWriterClientInitiatedTerminalHelper alloc] initWithConfigurationState:[(AVAssetWriterHelper *)self configurationState] terminalStatus:status];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__AVAssetWriterHelper__transitionToClientInitiatedTerminalStatus___block_invoke;
  v10[3] = &unk_1E7460FA8;
  v10[4] = self;
  v10[5] = status;
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

- (void)transitionToFailedStatusWithError:(id)error
{
  referencedObject = [(AVWeakReference *)[(AVAssetWriterHelper *)self weakReferenceToAssetWriter] referencedObject];
  if (referencedObject)
  {
    v6 = referencedObject;
    v7 = [[AVAssetWriterFailedTerminalHelper alloc] initWithConfigurationState:[(AVAssetWriterHelper *)self configurationState] terminalError:error];
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
  status = [(AVAssetWriterHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, status), 0}];
  objc_exception_throw(v13);
}

- (void)flushSegment
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  status = [(AVAssetWriterHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, status), 0}];
  objc_exception_throw(v13);
}

@end