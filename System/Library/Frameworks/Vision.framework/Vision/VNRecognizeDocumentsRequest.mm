@interface VNRecognizeDocumentsRequest
+ (id)supportedRecognitionLanguagesForTextRecognitionLevel:(int64_t)level revision:(unint64_t)revision error:(id *)error;
- (BOOL)detectionOnly;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)keepResourcesLoaded;
- (BOOL)usesAlternateLineGrouping;
- (BOOL)usesFormFieldDetection;
- (BOOL)usesLanguageCorrection;
- (BOOL)usesLanguageDetection;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSArray)customWords;
- (NSArray)recognitionLanguages;
- (VNRecognizeDocumentsRequest)initWithFrameAnalysisSpacing:(id *)spacing trackingLevelBlockType:(unint64_t)type completionHandler:(id)handler;
- (float)minimumTextHeight;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)sequencedRequestPreviousObservationsKey;
- (id)supportedRecognitionLanguagesAndReturnError:(id *)error;
- (int64_t)recognitionLevel;
- (unint64_t)_CRImageReaderRevisionForRevision:(unint64_t)revision;
- (unint64_t)maximumCandidateCount;
- (void)setCustomWords:(id)words;
- (void)setDetectionOnly:(BOOL)only;
- (void)setKeepResourcesLoaded:(BOOL)loaded;
- (void)setMaximumCandidateCount:(unint64_t)count;
- (void)setMinimumTextHeight:(float)height;
- (void)setRecognitionLanguages:(id)languages;
- (void)setRecognitionLevel:(int64_t)level;
- (void)setUsesAlternateLineGrouping:(BOOL)grouping;
- (void)setUsesFormFieldDetection:(BOOL)detection;
- (void)setUsesLanguageCorrection:(BOOL)correction;
- (void)setUsesLanguageDetection:(BOOL)detection;
@end

@implementation VNRecognizeDocumentsRequest

- (id)supportedRecognitionLanguagesAndReturnError:(id *)error
{
  v4 = [(VNRecognizeDocumentsRequest *)self newDefaultDetectorOptionsForRequestRevision:[(VNRequest *)self resolvedRevision] session:0];
  v5 = [VNCRImageReaderDetector supportedLanguagesForProcessOptions:v4 error:error];

  return v5;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v20 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v20 forRevision:revision loadedInSession:session error:error];
    v12 = v20;
    if (v11)
    {
      v21[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      trackingSession = self->_trackingSession;
      if (trackingSession)
      {
        [v12 setObject:trackingSession forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_CRImageReaderTrackingSession"];
      }

      detectorProgressHandler = [(VNRequest *)self detectorProgressHandler];
      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v17 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:detectorProgressHandler progressHandler:?];
      v18 = v17 != 0;
      if (v17)
      {
        [(VNRequest *)self setResults:v17];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17.receiver = self;
  v17.super_class = VNRecognizeDocumentsRequest;
  sequencedRequestPreviousObservationsKey = [(VNRequest *)&v17 sequencedRequestPreviousObservationsKey];
  recognitionLanguages = [(VNRecognizeDocumentsRequest *)self recognitionLanguages];
  v4 = _sequenceKeyComponentForArray(recognitionLanguages);
  customWords = [(VNRecognizeDocumentsRequest *)self customWords];
  v6 = _sequenceKeyComponentForArray(customWords);
  recognitionLevel = [(VNRecognizeDocumentsRequest *)self recognitionLevel];
  usesLanguageCorrection = [(VNRecognizeDocumentsRequest *)self usesLanguageCorrection];
  usesLanguageDetection = [(VNRecognizeDocumentsRequest *)self usesLanguageDetection];
  usesAlternateLineGrouping = [(VNRecognizeDocumentsRequest *)self usesAlternateLineGrouping];
  usesFormFieldDetection = [(VNRecognizeDocumentsRequest *)self usesFormFieldDetection];
  [(VNRecognizeDocumentsRequest *)self minimumTextHeight];
  v13 = [v3 initWithFormat:@"%@:%@:%p:%ld:%d:%d:%d:%d:%f", sequencedRequestPreviousObservationsKey, v4, v6, recognitionLevel, usesLanguageCorrection, usesLanguageDetection, usesAlternateLineGrouping, usesFormFieldDetection, v12];

  return v13;
}

- (unint64_t)maximumCandidateCount
{
  configuration = [(VNRequest *)self configuration];
  maximumCandidateCount = [configuration maximumCandidateCount];

  return maximumCandidateCount;
}

- (void)setMaximumCandidateCount:(unint64_t)count
{
  configuration = [(VNRequest *)self configuration];
  [configuration setMaximumCandidateCount:count];
}

- (BOOL)detectionOnly
{
  configuration = [(VNRequest *)self configuration];
  detectionOnly = [configuration detectionOnly];

  return detectionOnly;
}

- (void)setDetectionOnly:(BOOL)only
{
  onlyCopy = only;
  configuration = [(VNRequest *)self configuration];
  [configuration setDetectionOnly:onlyCopy];
}

- (BOOL)keepResourcesLoaded
{
  configuration = [(VNRequest *)self configuration];
  keepResourcesLoaded = [configuration keepResourcesLoaded];

  return keepResourcesLoaded;
}

- (void)setKeepResourcesLoaded:(BOOL)loaded
{
  loadedCopy = loaded;
  configuration = [(VNRequest *)self configuration];
  [configuration setKeepResourcesLoaded:loadedCopy];
}

- (float)minimumTextHeight
{
  configuration = [(VNRequest *)self configuration];
  [configuration minimumTextHeight];
  v4 = v3;

  return v4;
}

- (void)setMinimumTextHeight:(float)height
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = height;
  [configuration setMinimumTextHeight:v4];
}

- (BOOL)usesFormFieldDetection
{
  configuration = [(VNRequest *)self configuration];
  usesFormFieldDetection = [configuration usesFormFieldDetection];

  return usesFormFieldDetection;
}

- (void)setUsesFormFieldDetection:(BOOL)detection
{
  detectionCopy = detection;
  configuration = [(VNRequest *)self configuration];
  [configuration setUsesFormFieldDetection:detectionCopy];
}

- (BOOL)usesAlternateLineGrouping
{
  configuration = [(VNRequest *)self configuration];
  usesAlternateLineGrouping = [configuration usesAlternateLineGrouping];

  return usesAlternateLineGrouping;
}

- (void)setUsesAlternateLineGrouping:(BOOL)grouping
{
  groupingCopy = grouping;
  configuration = [(VNRequest *)self configuration];
  [configuration setUsesAlternateLineGrouping:groupingCopy];
}

- (BOOL)usesLanguageDetection
{
  configuration = [(VNRequest *)self configuration];
  automaticallyDetectsLanguage = [configuration automaticallyDetectsLanguage];

  return automaticallyDetectsLanguage;
}

- (void)setUsesLanguageDetection:(BOOL)detection
{
  detectionCopy = detection;
  configuration = [(VNRequest *)self configuration];
  [configuration setAutomaticallyDetectsLanguage:detectionCopy];
}

- (BOOL)usesLanguageCorrection
{
  configuration = [(VNRequest *)self configuration];
  usesLanguageCorrection = [configuration usesLanguageCorrection];

  return usesLanguageCorrection;
}

- (void)setUsesLanguageCorrection:(BOOL)correction
{
  correctionCopy = correction;
  configuration = [(VNRequest *)self configuration];
  [configuration setUsesLanguageCorrection:correctionCopy];
}

- (int64_t)recognitionLevel
{
  configuration = [(VNRequest *)self configuration];
  recognitionLevel = [configuration recognitionLevel];

  return recognitionLevel;
}

- (void)setRecognitionLevel:(int64_t)level
{
  configuration = [(VNRequest *)self configuration];
  [configuration setRecognitionLevel:level];
}

- (NSArray)customWords
{
  configuration = [(VNRequest *)self configuration];
  customWords = [configuration customWords];

  return customWords;
}

- (void)setCustomWords:(id)words
{
  v5 = [words copy];
  configuration = [(VNRequest *)self configuration];
  [configuration setCustomWords:v5];
}

- (NSArray)recognitionLanguages
{
  configuration = [(VNRequest *)self configuration];
  recognitionLanguages = [configuration recognitionLanguages];

  return recognitionLanguages;
}

- (void)setRecognitionLanguages:(id)languages
{
  v5 = [languages copy];
  configuration = [(VNRequest *)self configuration];
  [configuration setRecognitionLanguages:v5];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  detectionOnly = [(VNRecognizeDocumentsRequest *)self detectionOnly];
  if (detectionOnly == [configurationCopy detectionOnly] && (v6 = -[VNRecognizeDocumentsRequest maximumCandidateCount](self, "maximumCandidateCount"), v6 == objc_msgSend(configurationCopy, "maximumCandidateCount")) && (-[VNRecognizeDocumentsRequest recognitionLanguages](self, "recognitionLanguages"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "recognitionLanguages"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToArray:", v8), v8, v7, (v9 & 1) != 0) && (-[VNRecognizeDocumentsRequest customWords](self, "customWords"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "customWords"), v11 = objc_claimAutoreleasedReturnValue(), v12 = VisionCoreEquivalentOrNilUnorderedArrays(), v11, v10, (v12 & 1) != 0) && (v13 = -[VNRecognizeDocumentsRequest recognitionLevel](self, "recognitionLevel"), v13 == objc_msgSend(configurationCopy, "recognitionLevel")) && (v14 = -[VNRecognizeDocumentsRequest usesLanguageCorrection](self, "usesLanguageCorrection"), v14 == objc_msgSend(configurationCopy, "usesLanguageCorrection")) && (v15 = -[VNRecognizeDocumentsRequest usesLanguageDetection](self, "usesLanguageDetection"), v15 == objc_msgSend(configurationCopy, "automaticallyDetectsLanguage")) && (v16 = -[VNRecognizeDocumentsRequest usesAlternateLineGrouping](self, "usesAlternateLineGrouping"), v16 == objc_msgSend(configurationCopy, "usesAlternateLineGrouping")) && (v17 = -[VNRecognizeDocumentsRequest usesFormFieldDetection](self, "usesFormFieldDetection"), v17 == objc_msgSend(configurationCopy, "usesFormFieldDetection")) && (-[VNRecognizeDocumentsRequest minimumTextHeight](self, "minimumTextHeight"), v19 = v18, objc_msgSend(configurationCopy, "minimumTextHeight"), v19 == v20))
  {
    v23.receiver = self;
    v23.super_class = VNRecognizeDocumentsRequest;
    v21 = [(VNImageBasedRequest *)&v23 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNCRImageReaderForDocumentsDetectorType";
    v5 = @"VNCRImageReaderForDocumentsDetectorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v25.receiver = self;
  v25.super_class = VNRecognizeDocumentsRequest;
  v6 = [(VNRequest *)&v25 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = v6;
  if (revision == 1)
  {
    [v6 setObject:self forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_OriginatingRequest"];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest recognitionLevel](self, "recognitionLevel") != 0}];
    [v7 setObject:v8 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_FastRecognition"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRecognizeDocumentsRequest maximumCandidateCount](self, "maximumCandidateCount")}];
    [v7 setObject:v9 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_MaximumCandidatesCount"];

    recognitionLanguages = [(VNRecognizeDocumentsRequest *)self recognitionLanguages];
    [v7 setObject:recognitionLanguages forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_RecognitionLanguages"];

    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest usesLanguageDetection](self, "usesLanguageDetection")}];
    [v7 setObject:v11 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesLanguageDetection"];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest usesAlternateLineGrouping](self, "usesAlternateLineGrouping")}];
    [v7 setObject:v12 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesAlternateLineGrouping"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRecognizeDocumentsRequest _CRImageReaderRevisionForRevision:](self, "_CRImageReaderRevisionForRevision:", 1)}];
    [v7 setObject:v13 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_CRImageReaderRevisionKey"];

    [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesCoreMode"];
    [v7 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_SkipVerticalText"];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest keepResourcesLoaded](self, "keepResourcesLoaded")}];
    [v7 setObject:v14 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_KeepResourcesLoaded"];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest usesFormFieldDetection](self, "usesFormFieldDetection")}];
    [v7 setObject:v15 forKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_UsesFormFieldDetection"];

    [v7 setObject:self forKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_OriginatingRequest"];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest usesLanguageCorrection](self, "usesLanguageCorrection") ^ 1}];
    [v7 setObject:v16 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_DisableLanguageCorrection"];

    v17 = MEMORY[0x1E696AD98];
    [(VNRecognizeDocumentsRequest *)self minimumTextHeight];
    v18 = [v17 numberWithFloat:?];
    [v7 setObject:v18 forKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_MinimumTextHeight"];

    customWords = [(VNRecognizeDocumentsRequest *)self customWords];
    [v7 setObject:customWords forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_CustomWords"];

    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest detectionOnly](self, "detectionOnly")}];
    [v7 setObject:v20 forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_DetectionOnly"];

    inputTextBlocks = [(VNRecognizeDocumentsRequest *)self inputTextBlocks];

    if (inputTextBlocks)
    {
      inputTextBlocks2 = [(VNRecognizeDocumentsRequest *)self inputTextBlocks];
      [v7 setObject:inputTextBlocks2 forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_TextObservationsToRecognize"];
    }

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRequest maximumProcessingDimensionOnTheLongSide](self, "maximumProcessingDimensionOnTheLongSide")}];
    [v7 setObject:v23 forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_MaximumProcessingDimensionOnTheLongSide"];
  }

  return v7;
}

- (unint64_t)_CRImageReaderRevisionForRevision:(unint64_t)revision
{
  if (revision == 1)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (VNRecognizeDocumentsRequest)initWithFrameAnalysisSpacing:(id *)spacing trackingLevelBlockType:(unint64_t)type completionHandler:(id)handler
{
  v13 = *spacing;
  v12.receiver = self;
  v12.super_class = VNRecognizeDocumentsRequest;
  v6 = [(VNStatefulRequest *)&v12 initWithFrameAnalysisSpacing:&v13 completionHandler:handler];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69D9DA0]);
    if (type == 8)
    {
      v8 = 2;
    }

    else
    {
      v8 = type == 4;
    }

    v9 = [v7 initWithTrackingLevel:v8];
    trackingSession = v6->_trackingSession;
    v6->_trackingSession = v9;
  }

  return v6;
}

+ (id)supportedRecognitionLanguagesForTextRecognitionLevel:(int64_t)level revision:(unint64_t)revision error:(id *)error
{
  v8 = objc_alloc_init(self);
  if ([v8 setRevision:revision error:error])
  {
    [v8 setRecognitionLevel:level];
    v9 = [v8 supportedRecognitionLanguagesAndReturnError:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end