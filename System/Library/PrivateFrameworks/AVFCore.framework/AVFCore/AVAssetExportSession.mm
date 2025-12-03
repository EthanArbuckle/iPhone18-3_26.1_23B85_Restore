@interface AVAssetExportSession
+ (AVAssetExportSession)exportSessionWithAsset:(AVAsset *)asset presetName:(NSString *)presetName;
+ (NSArray)exportPresetsCompatibleWithAsset:(AVAsset *)asset;
+ (int64_t)estimatedOutputFileLengthForPreset:(id)preset duration:(id *)duration properties:(id)properties;
+ (void)determineCompatibilityOfExportPreset:(NSString *)presetName withAsset:(AVAsset *)asset outputFileType:(AVFileType)outputFileType completionHandler:(void *)handler;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minVideoFrameDuration;
- (AVAssetExportSession)initWithAsset:(AVAsset *)asset presetName:(NSString *)presetName;
- (AVAssetExportSession)initWithAsset:(id)asset presetName:(id)name resumableSessionName:(id)sessionName directoryForTemporaryFiles:(id)files;
- (AVAssetTrackGroupOutputHandling)audioTrackGroupHandling;
- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (BOOL)allowsAppleOnlySWAV1Decode;
- (BOOL)allowsParallelizedExport;
- (BOOL)canPerformMultiplePassesOverSourceMediaData;
- (BOOL)isDefunct;
- (BOOL)maximizePowerEfficiency;
- (BOOL)preserveSyncFrames;
- (BOOL)shouldOptimizeForNetworkUse;
- (CMTime)maxDuration;
- (CMTimeRange)timeRange;
- (id)description;
- (id)makeLookupableSpatialVideoConfigurations:(id)configurations;
- (void)AVExportSessionExportAsynchronouslyCompletionHandler;
- (void)dealloc;
- (void)determineCompatibleFileTypesWithCompletionHandler:(void *)handler;
- (void)estimateMaximumDurationWithCompletionHandler:(void *)handler;
- (void)estimateOutputFileLengthWithCompletionHandler:(void *)handler;
- (void)exportAsynchronouslyWithCompletionHandler:(void *)handler;
- (void)setAllowsAppleOnlySWAV1Decode:(BOOL)decode;
- (void)setAllowsParallelizedExport:(BOOL)allowsParallelizedExport;
- (void)setAudioMix:(AVAudioMix *)audioMix;
- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (void)setAudioTrackGroupHandling:(AVAssetTrackGroupOutputHandling)audioTrackGroupHandling;
- (void)setCanPerformMultiplePassesOverSourceMediaData:(BOOL)canPerformMultiplePassesOverSourceMediaData;
- (void)setDirectoryForTemporaryFiles:(NSURL *)directoryForTemporaryFiles;
- (void)setFileLengthLimit:(uint64_t)fileLengthLimit;
- (void)setMetadata:(NSArray *)metadata;
- (void)setMetadataItemFilter:(AVMetadataItemFilter *)metadataItemFilter;
- (void)setMinVideoFrameDuration:(id *)duration;
- (void)setOutputFileType:(AVFileType)outputFileType;
- (void)setOutputURL:(NSURL *)outputURL;
- (void)setPreserveSyncFrames:(BOOL)frames;
- (void)setResumableSessionName:(id)name;
- (void)setShouldOptimizeForNetworkUse:(BOOL)shouldOptimizeForNetworkUse;
- (void)setTimeRange:(CMTimeRange *)timeRange;
- (void)setVideoComposition:(AVVideoComposition *)videoComposition;
- (void)setVideoFrameRateConversionAlgorithm:(id)algorithm;
- (void)stopResumableExport;
@end

@implementation AVAssetExportSession

+ (NSArray)exportPresetsCompatibleWithAsset:(AVAsset *)asset
{
  if ([(AVAsset *)asset _figAsset])
  {

    return MEMORY[0x1EEDCD120]();
  }

  else
  {
    v3 = MEMORY[0x1E695DEC8];

    return [v3 array];
  }
}

+ (void)determineCompatibilityOfExportPreset:(NSString *)presetName withAsset:(AVAsset *)asset outputFileType:(AVFileType)outputFileType completionHandler:(void *)handler
{
  if (!handler)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"handler cannot be nil", asset, outputFileType, 0, v6, v7, v17), 0}];
    objc_exception_throw(v16);
  }

  _figAsset = [(AVAsset *)asset _figAsset];
  if (_figAsset)
  {
    v12 = _figAsset;
    v13 = [handler copy];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() & 1;

    MEMORY[0x1EEDCD0F8](presetName, v12, v14, outputFileType, AVExportSessionDetermineCompatibilityOfExportPresetCompletionHandler, v13);
  }

  else
  {
    v15 = *(handler + 2);

    v15(handler, 0);
  }
}

+ (AVAssetExportSession)exportSessionWithAsset:(AVAsset *)asset presetName:(NSString *)presetName
{
  v4 = [[self alloc] initWithAsset:asset presetName:presetName];

  return v4;
}

- (void)estimateMaximumDurationWithCompletionHandler:(void *)handler
{
  if (!handler)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"completionHandler is nil", v3, v4, v5, v6, v7, v11), 0}];
    objc_exception_throw(v10);
  }

  figExportSession = self->_exportSession->figExportSession;
  v9 = [handler copy];

  MEMORY[0x1EEDCD108](figExportSession, AVExportSessionEstimateMaximumDurationCompletionHandler, v9);
}

+ (int64_t)estimatedOutputFileLengthForPreset:(id)preset duration:(id *)duration properties:(id)properties
{
  if (FigAssetExportSessionGetEstimatedOutputFileLength())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (void)estimateOutputFileLengthWithCompletionHandler:(void *)handler
{
  if (!handler)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"handler cannot be nil", v3, v4, v5, v6, v7, v11), 0}];
    objc_exception_throw(v10);
  }

  figExportSession = self->_exportSession->figExportSession;
  v9 = [handler copy];

  MEMORY[0x1EEDCD110](figExportSession, AVExportSessionEstimateOutputFileLengthCompletionHandler, v9);
}

- (AVAssetExportSession)initWithAsset:(id)asset presetName:(id)name resumableSessionName:(id)sessionName directoryForTemporaryFiles:(id)files
{
  if (sessionName && files)
  {
    v8 = [(AVAssetExportSession *)self initWithAsset:asset presetName:name];
    v9 = v8;
    if (v8)
    {
      [(AVAssetExportSession *)v8 setResumableSessionName:sessionName];
      [(AVAssetExportSession *)v9 setDirectoryForTemporaryFiles:files];
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

- (AVAssetExportSession)initWithAsset:(AVAsset *)asset presetName:(NSString *)presetName
{
  v9.receiver = self;
  v9.super_class = AVAssetExportSession;
  v6 = [(AVAssetExportSession *)&v9 init];
  if (v6)
  {
    if (asset && presetName && ([(NSString *)presetName isEqualToString:@"AVAssetExportPresetPassthrough"]|| FigExportSettingsForExportPreset()) && (v7 = objc_alloc_init(AVAssetExportSessionInternal), (v6->_exportSession = v7) != 0) && (v7->videoComposition = 0, [(AVAsset *)asset _figAsset]) && (objc_opt_class(), objc_opt_isKindOfClass(), [(AVAsset *)asset _hasResourceLoaderDelegate], !FigAssetExportSessionCreateWithAsset()))
    {
      v6->_exportSession->asset = asset;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  exportSession = self->_exportSession;
  if (exportSession)
  {
    figExportSession = exportSession->figExportSession;
    if (figExportSession)
    {
      CFRelease(figExportSession);
      exportSession = self->_exportSession;
    }

    v5 = self->_exportSession;
    figVideoCompositor = v5->figVideoCompositor;
    if (figVideoCompositor)
    {
      CFRelease(figVideoCompositor);
      v5 = self->_exportSession;
    }
  }

  v7.receiver = self;
  v7.super_class = AVAssetExportSession;
  [(AVAssetExportSession *)&v7 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, asset = %@, presetName = %@, outputFileType = %@", NSStringFromClass(v4), self, self->_exportSession->asset, -[AVAssetExportSession presetName](self, "presetName"), -[AVAssetExportSession outputFileType](self, "outputFileType")];
}

- (void)determineCompatibleFileTypesWithCompletionHandler:(void *)handler
{
  if (!handler)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"handler cannot be nil", v3, v4, v5, v6, v7, v12), 0}];
    objc_exception_throw(v11);
  }

  v9 = [handler copy];
  figExportSession = self->_exportSession->figExportSession;

  MEMORY[0x1EEDCD100](figExportSession, AVExportSessionDetermineCompatibilityOfFileTypesCompletionHandler, v9);
}

- (void)setOutputFileType:(AVFileType)outputFileType
{
  if ([(AVAssetExportSession *)self status])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = @"Cannot alter output file type attribute on an AVAssetExportSession after an export has started.";
    goto LABEL_8;
  }

  if (!outputFileType)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Cannot set outputFileType to nil";
    goto LABEL_8;
  }

  if (FigAssetExportSessionSetProperty() == -16972)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Invalid output file type";
LABEL_8:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v13, v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }
}

- (void)setOutputURL:(NSURL *)outputURL
{
  if ([(AVAssetExportSession *)self status])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = @"Cannot alter output URL attribute on an AVAssetExportSession after an export has started.";
    goto LABEL_8;
  }

  if (!outputURL)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Cannot set outputURL to nil";
LABEL_8:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v13, v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }

  FigAssetExportSessionSetProperty();
}

- (void)AVExportSessionExportAsynchronouslyCompletionHandler
{
  exportSession = self->_exportSession;
  handler = exportSession->handler;
  if (handler)
  {
    exportSession->handler = 0;
    (handler)[2](handler, a2);
  }
}

- (void)exportAsynchronouslyWithCompletionHandler:(void *)handler
{
  if ([(AVAssetExportSession *)self status]>= AVAssetExportSessionStatusWaiting)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v19 = @"Cannot call exportAsynchronouslyWithCompletionHandler: more than once.";
    goto LABEL_23;
  }

  if (![(AVAssetExportSession *)self outputURL])
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v19 = @"outputURL cannot be nil";
    goto LABEL_23;
  }

  v22 = 0;
  selfCopy = self;
  FigAssetExportSessionCopyProperty();
  v12 = 1;
  if ([(AVAssetExportSession *)self resumableSessionName]&& !cf)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v19 = @"directoryForTemporaryFiles must be specified for a resumable exportSession";
    goto LABEL_23;
  }

  v13 = v22;
  if (v22 != 0)
  {
LABEL_8:
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  customVideoCompositorSession = self->_exportSession->customVideoCompositorSession;
  if (customVideoCompositorSession)
  {
    v12 = [(AVCustomVideoCompositorSession *)customVideoCompositorSession commitCustomVideoCompositorPropertiesAndReturnError:&v22];
    v13 = v22;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:
  if (!v13)
  {
    if (handler)
    {
      selfCopy2 = self;
      self->_exportSession->handler = [handler copy];
    }

    v16 = FigAssetExportSessionExportAsynchronously();
    if (v16 == -16972)
    {
      v17 = MEMORY[0x1E695DF30];
      v18 = *MEMORY[0x1E695D930];
      v19 = @"Invalid output file type";
    }

    else
    {
      if (v16 != -16974)
      {
        goto LABEL_17;
      }

      v17 = MEMORY[0x1E695DF30];
      v18 = *MEMORY[0x1E695D930];
      v19 = @"outputFileType cannot be nil";
    }

LABEL_23:
    v20 = [v17 exceptionWithName:v18 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v19, v6, v7, v8, v9, v10, cf), 0}];
    objc_exception_throw(v20);
  }

LABEL_13:
  FigAssetExportSessionSetProperty();
  if (handler)
  {
    (*(handler + 2))(handler);
  }

LABEL_17:
}

- (void)stopResumableExport
{
  if ([(AVAssetExportSession *)self resumableSessionName])
  {
    figExportSession = self->_exportSession->figExportSession;

    MEMORY[0x1EEDCD150](figExportSession);
  }
}

- (CMTimeRange)timeRange
{
  v4 = MEMORY[0x1E6960CA8];
  v5 = *(MEMORY[0x1E6960CA8] + 16);
  *&retstr->start.value = *MEMORY[0x1E6960CA8];
  *&retstr->start.epoch = v5;
  *&retstr->duration.timescale = *(v4 + 32);
  FigAssetExportSessionCopyProperty();
  return 0;
}

- (void)setTimeRange:(CMTimeRange *)timeRange
{
  if ([(AVAssetExportSession *)self status])
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter time range attribute on an AVAssetExportSession after an export has started.", v6, v7, v8, v9, v10, v15.start.value), 0}];
    objc_exception_throw(v14);
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = *&timeRange->start.epoch;
  *&v15.start.value = *&timeRange->start.value;
  *&v15.start.epoch = v12;
  *&v15.duration.timescale = *&timeRange->duration.timescale;
  v13 = CMTimeRangeCopyAsDictionary(&v15, v11);
  FigAssetExportSessionSetProperty();
  if (v13)
  {
    CFRelease(v13);
  }
}

- (CMTime)maxDuration
{
  *retstr = **&MEMORY[0x1E6960C70];
  FigAssetExportSessionCopyProperty();
  return 0;
}

- (void)setMinVideoFrameDuration:(id *)duration
{
  if ([(AVAssetExportSession *)self status])
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = @"Cannot alter min frame duration attribute on an AVAssetExportSession after an export has started.";
    goto LABEL_10;
  }

  if ((duration->var2 & 0x1D) != 1)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"Cannot set non-numeric min video frame duration.";
    goto LABEL_10;
  }

  time1 = *duration;
  v17 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &v17) <= 0)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"Min video frame duration must be greater than zero.";
LABEL_10:
    v16 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v15, v6, v7, v8, v9, v10, v17.value), 0}];
    objc_exception_throw(v16);
  }

  v11 = *MEMORY[0x1E695E480];
  time1 = *duration;
  v12 = CMTimeCopyAsDictionary(&time1, v11);
  FigAssetExportSessionSetProperty();
  if (v12)
  {
    CFRelease(v12);
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minVideoFrameDuration
{
  *retstr = **&MEMORY[0x1E6960C70];
  FigAssetExportSessionCopyProperty();
  return 0;
}

- (void)setVideoFrameRateConversionAlgorithm:(id)algorithm
{
  if ([(AVAssetExportSession *)self status])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = @"Cannot alter max frame duration attribute on an AVAssetExportSession after an export has started.";
    goto LABEL_11;
  }

  if (([algorithm isEqualToString:@"AVVideoFrameRateConversionAlgorithmFast"] & 1) == 0 && (objc_msgSend(algorithm, "isEqualToString:", @"AVVideoFrameRateConversionAlgorithmPrecise") & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Invalid frame rate conversion algorithm.";
LABEL_11:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v13, v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }

  if (![algorithm isEqualToString:@"AVVideoFrameRateConversionAlgorithmFast"])
  {
    [algorithm isEqualToString:@"AVVideoFrameRateConversionAlgorithmPrecise"];
  }

  FigAssetExportSessionSetProperty();
}

- (void)setPreserveSyncFrames:(BOOL)frames
{
  if ([(AVAssetExportSession *)self status])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter preserve sync frame attribute on an AVAssetExportSession after an export has started.", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }

  FigAssetExportSessionSetProperty();
}

- (BOOL)preserveSyncFrames
{
  v3 = *MEMORY[0x1E695E4C0];
  FigAssetExportSessionCopyProperty();
  return *MEMORY[0x1E695E4D0] == v3;
}

- (void)setMetadata:(NSArray *)metadata
{
  if ([(AVAssetExportSession *)self status])
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter metadata attribute on an AVAssetExportSession after an export has started.", v6, v7, v8, v9, v10, v13), 0}];
    objc_exception_throw(v12);
  }

  if (metadata)
  {
    v14 = 0;
    metadata = [AVMetadataItem _metadataArrayWithSmartDeferredLoadingForMetadataArray:metadata error:&v14];
    if (!metadata && [v14 code] == -11999)
    {
      objc_exception_throw([objc_msgSend(v14 "userInfo")]);
    }
  }

  [AVMetadataItem _figMetadataPropertyFromMetadataItems:metadata];
  if (!FigAssetExportSessionSetProperty())
  {
    v11 = self->_exportSession->metadata;
    if (v11 != metadata)
    {

      self->_exportSession->metadata = [(NSArray *)metadata copy];
    }
  }
}

- (void)setMetadataItemFilter:(AVMetadataItemFilter *)metadataItemFilter
{
  if ([(AVAssetExportSession *)self status])
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter metadataItemFilter attribute on an AVAssetExportSession after an export has started.", v6, v7, v8, v9, v10, v13), 0}];
    objc_exception_throw(v12);
  }

  [(AVMetadataItemFilter *)metadataItemFilter allowList];
  if (!FigAssetExportSessionSetProperty())
  {
    v11 = self->_exportSession->metadataItemFilter;
    if (v11 != metadataItemFilter)
    {

      self->_exportSession->metadataItemFilter = metadataItemFilter;
    }
  }
}

- (void)setFileLengthLimit:(uint64_t)fileLengthLimit
{
  if ([(AVAssetExportSession *)self status])
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter output file length limit attribute on an AVAssetExportSession after an export has started.", v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }

  [MEMORY[0x1E696AD98] numberWithLongLong:fileLengthLimit];

  FigAssetExportSessionSetProperty();
}

- (BOOL)maximizePowerEfficiency
{
  cf = *MEMORY[0x1E695E4C0];
  FigAssetExportSessionCopyProperty();
  v2 = *MEMORY[0x1E695E4D0];
  if (cf)
  {
    CFRelease(cf);
  }

  return v2 == cf;
}

- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  FigAssetExportSessionCopyProperty();
  if (FigCFEqual())
  {
    v2 = &AVAudioTimePitchAlgorithmSpectral;
    return *v2;
  }

  if (FigCFEqual())
  {
    v2 = &AVAudioTimePitchAlgorithmTimeDomain;
    return *v2;
  }

  if (FigCFEqual())
  {
    v2 = &AVAudioTimePitchAlgorithmVarispeed;
    return *v2;
  }

  if (FigCFEqual())
  {
    return @"LowQualityZeroLatency";
  }

  else
  {
    return 0;
  }
}

- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  if ([(AVAssetExportSession *)self status])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot alter audio time pitch algorithm attribute on an AVAssetExportSession after an export has started.", v6, v7, v8, v9, v10, v25);
    v15 = v12;
    v16 = v13;
    goto LABEL_8;
  }

  valid = AVGetValidAudioTimePitchAlgorithms();
  if (([valid containsObject:audioTimePitchAlgorithm] & 1) == 0)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = [objc_msgSend(valid "allObjects")];
    v14 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"audioTimePitchAlgorithm must be one of: %@", v20, v21, v22, v23, v24, v19);
    v15 = v17;
    v16 = v18;
LABEL_8:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v14 userInfo:0]);
  }

  AVAssetExportSessionGetFigRemakerAudioTimePitchAlgorithmForAudioTimePitchAlgorithm(audioTimePitchAlgorithm);

  FigAssetExportSessionSetProperty();
}

- (void)setAudioMix:(AVAudioMix *)audioMix
{
  v41 = *MEMORY[0x1E69E9840];
  if ([(AVAssetExportSession *)self status])
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D930];
    v26 = @"Cannot alter audio mix attribute on an AVAssetExportSession after an export has started.";
    selfCopy = self;
    v28 = a2;
LABEL_18:
    v29 = [v24 exceptionWithName:v25 reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy userInfo:{v28, v26, v6, v7, v8, v9, v10, v30), 0}];
    objc_exception_throw(v29);
  }

  if (self->_exportSession->audioMix != audioMix)
  {
    inputParameters = [(AVAudioMix *)audioMix inputParameters];
    v12 = [(NSArray *)inputParameters count];
    v13 = *MEMORY[0x1E695E480];
    v14 = FigAssetExportSessionProperty_GetAudioMix_CFDictionaryValueCallBacks();
    theDict = CFDictionaryCreateMutable(v13, v12, 0, v14);
    if (theDict)
    {
      v31 = a2;
      v32 = audioMix;
      selfCopy2 = self;
      valid = AVGetValidAudioTimePitchAlgorithms();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = [(NSArray *)inputParameters countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v15)
      {
        goto LABEL_15;
      }

      v16 = v15;
      v17 = *v37;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(inputParameters);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          audioTimePitchAlgorithm = [v19 audioTimePitchAlgorithm];
          if (audioTimePitchAlgorithm && ([valid containsObject:audioTimePitchAlgorithm] & 1) == 0)
          {
            v24 = MEMORY[0x1E695DF30];
            v25 = *MEMORY[0x1E695D940];
            v30 = [objc_msgSend(valid "allObjects")];
            v26 = @"audioTimePitchAlgorithm must be one of: %@";
            selfCopy = selfCopy2;
            v28 = v31;
            goto LABEL_18;
          }

          v21 = MEMORY[0x19A8C83B0](v13, 32, 0x1060040FFDA0B6DLL, 0);
          if (v21)
          {
            v22 = v21;
            trackID = [v19 trackID];
            *v22 = 0;
            v22[2] = [v19 audioTapProcessor];
            v22[1] = AVAssetExportSessionGetFigRemakerAudioTimePitchAlgorithmForAudioTimePitchAlgorithm(audioTimePitchAlgorithm);
            v22[3] = [v19 _audioVolumeCurve];
            CFDictionaryAddValue(theDict, trackID, v22);
          }
        }

        v16 = [(NSArray *)inputParameters countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (!v16)
        {
LABEL_15:
          FigAssetExportSessionSetProperty();
          CFRelease(theDict);

          selfCopy2->_exportSession->audioMix = [(AVAudioMix *)v32 copy];
          return;
        }
      }
    }
  }
}

- (void)setAudioTrackGroupHandling:(AVAssetTrackGroupOutputHandling)audioTrackGroupHandling
{
  if ([(AVAssetExportSession *)self status])
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter output audioTrackGroupHandling attribute on an AVAssetExportSession after an export has started.", v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:audioTrackGroupHandling];
  FigAssetExportSessionSetProperty();
  self->_exportSession->audioTrackGroupHandling = audioTrackGroupHandling;
}

- (id)makeLookupableSpatialVideoConfigurations:(id)configurations
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [configurations countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(configurations);
        }

        v10 = [[AVLookupableSpatialVideoConfiguration alloc] initWithSpatialVideoConfiguration:*(*(&v12 + 1) + 8 * v9)];
        -[AVLookupableSpatialVideoConfiguration setLookupID:](v10, "setLookupID:", [MEMORY[0x1E696AD98] numberWithInt:v8]);
        [array addObject:v10];
        v8 = (v8 + 1);
        ++v9;
      }

      while (v6 != v9);
      v6 = [configurations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setVideoComposition:(AVVideoComposition *)videoComposition
{
  if ([(AVAssetExportSession *)self status])
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = @"Cannot alter video composition attribute on an AVAssetExportSession after an export has started.";
    goto LABEL_19;
  }

  if (self->_exportSession->videoComposition == videoComposition)
  {
    return;
  }

  if (videoComposition)
  {
    *&v28 = 0;
    if (![(AVVideoComposition *)videoComposition _isValidReturningExceptionReason:&v28])
    {
      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D940];
      v24 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"%@", v11, v12, v13, v14, v15, v28);
      goto LABEL_20;
    }

    if ([(AVVideoComposition *)videoComposition instructions])
    {
      [(AVVideoComposition *)videoComposition renderScale];
      if (v16 == 1.0)
      {
        goto LABEL_7;
      }

      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D940];
      v23 = @"renderScale must be 1.0 when used with AVAssetExportSession.";
    }

    else
    {
      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D940];
      v23 = @"video composition must have composition instructions";
    }

LABEL_19:
    v24 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, v23, v6, v7, v8, v9, v10, v25);
LABEL_20:
    objc_exception_throw([v21 exceptionWithName:v22 reason:v24 userInfo:0]);
  }

LABEL_7:
  v17 = [(AVVideoComposition *)videoComposition copy];
  v50 = 0;
  v51 = 0;
  [v17 setLookupableSpatialVideoConfigurations:{-[AVAssetExportSession makeLookupableSpatialVideoConfigurations:](self, "makeLookupableSpatialVideoConfigurations:", objc_msgSend(v17, "spatialVideoConfigurations"))}];
  [v17 _copyFigVideoCompositor:&v51 andSession:&v50 recyclingSession:self->_exportSession->customVideoCompositorSession forFigRemaker:1 error:0];
  v31 = 0u;
  v32 = 0u;
  if (v17)
  {
    [v17 frameDuration];
  }

  else
  {
    *cf = 0uLL;
    v27 = 0;
  }

  v28 = *cf;
  v29 = v27;
  _serializableInstructions = [v17 _serializableInstructions];
  LOBYTE(v31) = [v17 _hasLayerAsAuxiliaryTrack];
  *(&v31 + 1) = [v17 _auxiliaryTrackLayer];
  *&v32 = v51;
  BYTE8(v32) = [v17 _hasPostProcessingLayers];
  _postProcessingRootLayer = [v17 _postProcessingRootLayer];
  _postProcessingVideoLayers = [v17 _postProcessingVideoLayers];
  [v17 renderSize];
  v35 = v18;
  v36 = v19;
  colorPrimaries = [v17 colorPrimaries];
  colorYCbCrMatrix = [v17 colorYCbCrMatrix];
  colorTransferFunction = [v17 colorTransferFunction];
  _auxiliaryTrackID = [v17 _auxiliaryTrackID];
  sourceTrackIDForFrameTiming = [v17 sourceTrackIDForFrameTiming];
  v42 = avAssetExportSession_IsVideoCompositionValidForAssetWithTimeRange;
  v43 = avAssetExportSession_VideoCompositionOutputColorPropertiesWithCustomCompositor;
  v44 = avAssetExportSession_CustomVideoCompositorSessionGetAndClearClientError;
  sourceSampleDataTrackIDs = [v17 sourceSampleDataTrackIDs];
  v46 = AVVideoCompositionSerializeSourceTrackWindows([v17 sourceVideoTrackWindowsForTrackIDs]);
  v47 = AVVideoCompositionSerializeSourceTrackWindows([v17 sourceSampleDataTrackWindowsForTrackIDs]);
  outputBufferDescription = [v17 outputBufferDescription];
  SerializableArray = AVLookupableSpatialVideoConfigurationMakeSerializableArray([v17 lookupableSpatialVideoConfigurations]);
  FigAssetExportSessionVideoCompositionCreate();
  if (v51)
  {
    CFRelease(v51);
  }

  if (!FigAssetExportSessionSetProperty())
  {

    self->_exportSession->videoComposition = v17;
    v20 = self->_exportSession->customVideoCompositorSession;
    self->_exportSession->customVideoCompositorSession = v50;
  }
}

- (BOOL)shouldOptimizeForNetworkUse
{
  v3 = *MEMORY[0x1E695E4C0];
  FigAssetExportSessionCopyProperty();
  return *MEMORY[0x1E695E4D0] == v3;
}

- (void)setShouldOptimizeForNetworkUse:(BOOL)shouldOptimizeForNetworkUse
{
  if ([(AVAssetExportSession *)self status])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter optimize for network use attribute on an AVAssetExportSession after an export has started.", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }

  FigAssetExportSessionSetProperty();
}

- (BOOL)allowsParallelizedExport
{
  v3 = *MEMORY[0x1E695E4C0];
  FigAssetExportSessionCopyProperty();
  return *MEMORY[0x1E695E4D0] == v3;
}

- (void)setAllowsParallelizedExport:(BOOL)allowsParallelizedExport
{
  if ([(AVAssetExportSession *)self status])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter export parallelization attribute on an AVAssetExportSession after an export has started.", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }

  FigAssetExportSessionSetProperty();
}

- (BOOL)allowsAppleOnlySWAV1Decode
{
  v3 = *MEMORY[0x1E695E4C0];
  FigAssetExportSessionCopyProperty();
  return *MEMORY[0x1E695E4D0] == v3;
}

- (void)setAllowsAppleOnlySWAV1Decode:(BOOL)decode
{
  if ([(AVAssetExportSession *)self status])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter decodeSWAV1 attribute on an AVAssetExportSession after an export has started.", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }

  FigAssetExportSessionSetProperty();
}

- (BOOL)canPerformMultiplePassesOverSourceMediaData
{
  v3 = *MEMORY[0x1E695E4C0];
  FigAssetExportSessionCopyProperty();
  return *MEMORY[0x1E695E4D0] == v3;
}

- (void)setCanPerformMultiplePassesOverSourceMediaData:(BOOL)canPerformMultiplePassesOverSourceMediaData
{
  if ([(AVAssetExportSession *)self status])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter canPerformMultiplePassesOverSourceMediaData attribute on an AVAssetExportSession after an export has started.", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }

  FigAssetExportSessionSetProperty();
}

- (void)setDirectoryForTemporaryFiles:(NSURL *)directoryForTemporaryFiles
{
  if ([(AVAssetExportSession *)self status])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter directoryForTemporaryFiles attribute on an AVAssetExportSession after an export has started.", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }

  FigAssetExportSessionSetProperty();
}

- (void)setResumableSessionName:(id)name
{
  if ([(AVAssetExportSession *)self status])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot alter resumableSessionName attribute on an AVAssetExportSession after an export has started.", v5, v6, v7, v8, v9, v11), 0}];
    objc_exception_throw(v10);
  }

  FigAssetExportSessionSetProperty();
}

- (BOOL)isDefunct
{
  v8 = 0;
  figExportSession = self->_exportSession->figExportSession;
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(figExportSession, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

- (AVAssetTrackGroupOutputHandling)audioTrackGroupHandling
{
  if (FigAssetExportSessionCopyProperty())
  {
    return 0;
  }

  else
  {
    return [0 unsignedIntegerValue];
  }
}

@end