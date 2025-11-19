@interface VNRecognizeDocumentsRequest
+ (id)supportedRecognitionLanguagesForTextRecognitionLevel:(int64_t)a3 revision:(unint64_t)a4 error:(id *)a5;
- (BOOL)detectionOnly;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)keepResourcesLoaded;
- (BOOL)usesAlternateLineGrouping;
- (BOOL)usesFormFieldDetection;
- (BOOL)usesLanguageCorrection;
- (BOOL)usesLanguageDetection;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (NSArray)customWords;
- (NSArray)recognitionLanguages;
- (VNRecognizeDocumentsRequest)initWithFrameAnalysisSpacing:(id *)a3 trackingLevelBlockType:(unint64_t)a4 completionHandler:(id)a5;
- (float)minimumTextHeight;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)sequencedRequestPreviousObservationsKey;
- (id)supportedRecognitionLanguagesAndReturnError:(id *)a3;
- (int64_t)recognitionLevel;
- (unint64_t)_CRImageReaderRevisionForRevision:(unint64_t)a3;
- (unint64_t)maximumCandidateCount;
- (void)setCustomWords:(id)a3;
- (void)setDetectionOnly:(BOOL)a3;
- (void)setKeepResourcesLoaded:(BOOL)a3;
- (void)setMaximumCandidateCount:(unint64_t)a3;
- (void)setMinimumTextHeight:(float)a3;
- (void)setRecognitionLanguages:(id)a3;
- (void)setRecognitionLevel:(int64_t)a3;
- (void)setUsesAlternateLineGrouping:(BOOL)a3;
- (void)setUsesFormFieldDetection:(BOOL)a3;
- (void)setUsesLanguageCorrection:(BOOL)a3;
- (void)setUsesLanguageDetection:(BOOL)a3;
@end

@implementation VNRecognizeDocumentsRequest

- (id)supportedRecognitionLanguagesAndReturnError:(id *)a3
{
  v4 = [(VNRecognizeDocumentsRequest *)self newDefaultDetectorOptionsForRequestRevision:[(VNRequest *)self resolvedRevision] session:0];
  v5 = [VNCRImageReaderDetector supportedLanguagesForProcessOptions:v4 error:a3];

  return v5;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v20 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v20 forRevision:a3 loadedInSession:v10 error:a5];
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

      v15 = [(VNRequest *)self detectorProgressHandler];
      v16 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v17 = [v11 processUsingQualityOfServiceClass:v16 options:v12 regionOfInterest:self warningRecorder:a5 error:v15 progressHandler:?];
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
  v16 = [(VNRequest *)&v17 sequencedRequestPreviousObservationsKey];
  v15 = [(VNRecognizeDocumentsRequest *)self recognitionLanguages];
  v4 = _sequenceKeyComponentForArray(v15);
  v5 = [(VNRecognizeDocumentsRequest *)self customWords];
  v6 = _sequenceKeyComponentForArray(v5);
  v7 = [(VNRecognizeDocumentsRequest *)self recognitionLevel];
  v8 = [(VNRecognizeDocumentsRequest *)self usesLanguageCorrection];
  v9 = [(VNRecognizeDocumentsRequest *)self usesLanguageDetection];
  v10 = [(VNRecognizeDocumentsRequest *)self usesAlternateLineGrouping];
  v11 = [(VNRecognizeDocumentsRequest *)self usesFormFieldDetection];
  [(VNRecognizeDocumentsRequest *)self minimumTextHeight];
  v13 = [v3 initWithFormat:@"%@:%@:%p:%ld:%d:%d:%d:%d:%f", v16, v4, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (unint64_t)maximumCandidateCount
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 maximumCandidateCount];

  return v3;
}

- (void)setMaximumCandidateCount:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setMaximumCandidateCount:a3];
}

- (BOOL)detectionOnly
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 detectionOnly];

  return v3;
}

- (void)setDetectionOnly:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setDetectionOnly:v3];
}

- (BOOL)keepResourcesLoaded
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 keepResourcesLoaded];

  return v3;
}

- (void)setKeepResourcesLoaded:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setKeepResourcesLoaded:v3];
}

- (float)minimumTextHeight
{
  v2 = [(VNRequest *)self configuration];
  [v2 minimumTextHeight];
  v4 = v3;

  return v4;
}

- (void)setMinimumTextHeight:(float)a3
{
  v5 = [(VNRequest *)self configuration];
  *&v4 = a3;
  [v5 setMinimumTextHeight:v4];
}

- (BOOL)usesFormFieldDetection
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 usesFormFieldDetection];

  return v3;
}

- (void)setUsesFormFieldDetection:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setUsesFormFieldDetection:v3];
}

- (BOOL)usesAlternateLineGrouping
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 usesAlternateLineGrouping];

  return v3;
}

- (void)setUsesAlternateLineGrouping:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setUsesAlternateLineGrouping:v3];
}

- (BOOL)usesLanguageDetection
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 automaticallyDetectsLanguage];

  return v3;
}

- (void)setUsesLanguageDetection:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setAutomaticallyDetectsLanguage:v3];
}

- (BOOL)usesLanguageCorrection
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 usesLanguageCorrection];

  return v3;
}

- (void)setUsesLanguageCorrection:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setUsesLanguageCorrection:v3];
}

- (int64_t)recognitionLevel
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 recognitionLevel];

  return v3;
}

- (void)setRecognitionLevel:(int64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setRecognitionLevel:a3];
}

- (NSArray)customWords
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 customWords];

  return v3;
}

- (void)setCustomWords:(id)a3
{
  v5 = [a3 copy];
  v4 = [(VNRequest *)self configuration];
  [v4 setCustomWords:v5];
}

- (NSArray)recognitionLanguages
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 recognitionLanguages];

  return v3;
}

- (void)setRecognitionLanguages:(id)a3
{
  v5 = [a3 copy];
  v4 = [(VNRequest *)self configuration];
  [v4 setRecognitionLanguages:v5];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNRecognizeDocumentsRequest *)self detectionOnly];
  if (v5 == [v4 detectionOnly] && (v6 = -[VNRecognizeDocumentsRequest maximumCandidateCount](self, "maximumCandidateCount"), v6 == objc_msgSend(v4, "maximumCandidateCount")) && (-[VNRecognizeDocumentsRequest recognitionLanguages](self, "recognitionLanguages"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "recognitionLanguages"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToArray:", v8), v8, v7, (v9 & 1) != 0) && (-[VNRecognizeDocumentsRequest customWords](self, "customWords"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "customWords"), v11 = objc_claimAutoreleasedReturnValue(), v12 = VisionCoreEquivalentOrNilUnorderedArrays(), v11, v10, (v12 & 1) != 0) && (v13 = -[VNRecognizeDocumentsRequest recognitionLevel](self, "recognitionLevel"), v13 == objc_msgSend(v4, "recognitionLevel")) && (v14 = -[VNRecognizeDocumentsRequest usesLanguageCorrection](self, "usesLanguageCorrection"), v14 == objc_msgSend(v4, "usesLanguageCorrection")) && (v15 = -[VNRecognizeDocumentsRequest usesLanguageDetection](self, "usesLanguageDetection"), v15 == objc_msgSend(v4, "automaticallyDetectsLanguage")) && (v16 = -[VNRecognizeDocumentsRequest usesAlternateLineGrouping](self, "usesAlternateLineGrouping"), v16 == objc_msgSend(v4, "usesAlternateLineGrouping")) && (v17 = -[VNRecognizeDocumentsRequest usesFormFieldDetection](self, "usesFormFieldDetection"), v17 == objc_msgSend(v4, "usesFormFieldDetection")) && (-[VNRecognizeDocumentsRequest minimumTextHeight](self, "minimumTextHeight"), v19 = v18, objc_msgSend(v4, "minimumTextHeight"), v19 == v20))
  {
    v23.receiver = self;
    v23.super_class = VNRecognizeDocumentsRequest;
    v21 = [(VNImageBasedRequest *)&v23 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNCRImageReaderForDocumentsDetectorType";
    v5 = @"VNCRImageReaderForDocumentsDetectorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v25.receiver = self;
  v25.super_class = VNRecognizeDocumentsRequest;
  v6 = [(VNRequest *)&v25 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = v6;
  if (a3 == 1)
  {
    [v6 setObject:self forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_OriginatingRequest"];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest recognitionLevel](self, "recognitionLevel") != 0}];
    [v7 setObject:v8 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_FastRecognition"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRecognizeDocumentsRequest maximumCandidateCount](self, "maximumCandidateCount")}];
    [v7 setObject:v9 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_MaximumCandidatesCount"];

    v10 = [(VNRecognizeDocumentsRequest *)self recognitionLanguages];
    [v7 setObject:v10 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_RecognitionLanguages"];

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

    v19 = [(VNRecognizeDocumentsRequest *)self customWords];
    [v7 setObject:v19 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_CustomWords"];

    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeDocumentsRequest detectionOnly](self, "detectionOnly")}];
    [v7 setObject:v20 forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_DetectionOnly"];

    v21 = [(VNRecognizeDocumentsRequest *)self inputTextBlocks];

    if (v21)
    {
      v22 = [(VNRecognizeDocumentsRequest *)self inputTextBlocks];
      [v7 setObject:v22 forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_TextObservationsToRecognize"];
    }

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRequest maximumProcessingDimensionOnTheLongSide](self, "maximumProcessingDimensionOnTheLongSide")}];
    [v7 setObject:v23 forKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_MaximumProcessingDimensionOnTheLongSide"];
  }

  return v7;
}

- (unint64_t)_CRImageReaderRevisionForRevision:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (VNRecognizeDocumentsRequest)initWithFrameAnalysisSpacing:(id *)a3 trackingLevelBlockType:(unint64_t)a4 completionHandler:(id)a5
{
  v13 = *a3;
  v12.receiver = self;
  v12.super_class = VNRecognizeDocumentsRequest;
  v6 = [(VNStatefulRequest *)&v12 initWithFrameAnalysisSpacing:&v13 completionHandler:a5];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69D9DA0]);
    if (a4 == 8)
    {
      v8 = 2;
    }

    else
    {
      v8 = a4 == 4;
    }

    v9 = [v7 initWithTrackingLevel:v8];
    trackingSession = v6->_trackingSession;
    v6->_trackingSession = v9;
  }

  return v6;
}

+ (id)supportedRecognitionLanguagesForTextRecognitionLevel:(int64_t)a3 revision:(unint64_t)a4 error:(id *)a5
{
  v8 = objc_alloc_init(a1);
  if ([v8 setRevision:a4 error:a5])
  {
    [v8 setRecognitionLevel:a3];
    v9 = [v8 supportedRecognitionLanguagesAndReturnError:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end