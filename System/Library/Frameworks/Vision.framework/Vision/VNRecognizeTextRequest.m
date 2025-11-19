@interface VNRecognizeTextRequest
+ (NSArray)supportedRecognitionLanguagesForTextRecognitionLevel:(VNRequestTextRecognitionLevel)recognitionLevel revision:(NSUInteger)requestRevision error:(NSError *)error;
- (BOOL)automaticallyDetectsLanguage;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)keepResourcesLoaded;
- (BOOL)usesLanguageCorrection;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (NSArray)customWords;
- (NSArray)recognitionLanguages;
- (NSArray)supportedRecognitionLanguagesAndReturnError:(NSError *)error;
- (VNRequestTextRecognitionLevel)recognitionLevel;
- (float)minimumTextHeight;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)sequencedRequestPreviousObservationsKey;
- (unint64_t)_CRImageReaderRevisionForRevision:(unint64_t)a3;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setAutomaticallyDetectsLanguage:(BOOL)automaticallyDetectsLanguage;
- (void)setCustomWords:(NSArray *)customWords;
- (void)setKeepResourcesLoaded:(BOOL)a3;
- (void)setMinimumTextHeight:(float)minimumTextHeight;
- (void)setRecognitionLanguages:(NSArray *)recognitionLanguages;
- (void)setRecognitionLevel:(VNRequestTextRecognitionLevel)recognitionLevel;
- (void)setUsesLanguageCorrection:(BOOL)usesLanguageCorrection;
@end

@implementation VNRecognizeTextRequest

- (NSArray)supportedRecognitionLanguagesAndReturnError:(NSError *)error
{
  v5 = [(VNRequest *)self resolvedRevision];
  v6 = [(VNRecognizeTextRequest *)self newDefaultDetectorOptionsForRequestRevision:v5 session:0];
  if (v5 == 1)
  {
    v7 = &unk_1F19C20F8;
  }

  else
  {
    v7 = [VNCRImageReaderDetector supportedLanguagesForProcessOptions:v6 error:error];
  }

  return v7;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v19 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v19;
    if (v11)
    {
      v20[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v14 = [(VNRequest *)self detectorProgressHandler];
      v15 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v11 processUsingQualityOfServiceClass:v15 options:v12 regionOfInterest:self warningRecorder:a5 error:v14 progressHandler:?];
      v17 = v16 != 0;
      if (v16)
      {
        [(VNRequest *)self setResults:v16];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15.receiver = self;
  v15.super_class = VNRecognizeTextRequest;
  v4 = [(VNRequest *)&v15 sequencedRequestPreviousObservationsKey];
  v5 = [(VNRecognizeTextRequest *)self recognitionLanguages];
  v6 = _sequenceKeyComponentForArray(v5);
  v7 = [(VNRecognizeTextRequest *)self customWords];
  v8 = _sequenceKeyComponentForArray(v7);
  v9 = [(VNRecognizeTextRequest *)self recognitionLevel];
  v10 = [(VNRecognizeTextRequest *)self usesLanguageCorrection];
  v11 = [(VNRecognizeTextRequest *)self automaticallyDetectsLanguage];
  [(VNRecognizeTextRequest *)self minimumTextHeight];
  v13 = [v3 initWithFormat:@"%@:%@:%p:%ld:%d:%d:%f", v4, v6, v8, v9, v10, v11, v12];

  return v13;
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

- (void)setMinimumTextHeight:(float)minimumTextHeight
{
  v5 = [(VNRequest *)self configuration];
  *&v4 = minimumTextHeight;
  [v5 setMinimumTextHeight:v4];
}

- (BOOL)automaticallyDetectsLanguage
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 automaticallyDetectsLanguage];

  return v3;
}

- (void)setAutomaticallyDetectsLanguage:(BOOL)automaticallyDetectsLanguage
{
  v3 = automaticallyDetectsLanguage;
  v4 = [(VNRequest *)self configuration];
  [v4 setAutomaticallyDetectsLanguage:v3];
}

- (BOOL)usesLanguageCorrection
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 usesLanguageCorrection];

  return v3;
}

- (void)setUsesLanguageCorrection:(BOOL)usesLanguageCorrection
{
  v3 = usesLanguageCorrection;
  v4 = [(VNRequest *)self configuration];
  [v4 setUsesLanguageCorrection:v3];
}

- (VNRequestTextRecognitionLevel)recognitionLevel
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 recognitionLevel];

  return v3;
}

- (void)setRecognitionLevel:(VNRequestTextRecognitionLevel)recognitionLevel
{
  v4 = [(VNRequest *)self configuration];
  [v4 setRecognitionLevel:recognitionLevel];
}

- (NSArray)customWords
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 customWords];

  return v3;
}

- (void)setCustomWords:(NSArray *)customWords
{
  v5 = [(NSArray *)customWords copy];
  v4 = [(VNRequest *)self configuration];
  [v4 setCustomWords:v5];
}

- (NSArray)recognitionLanguages
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 recognitionLanguages];

  return v3;
}

- (void)setRecognitionLanguages:(NSArray *)recognitionLanguages
{
  v5 = [(NSArray *)recognitionLanguages copy];
  v4 = [(VNRequest *)self configuration];
  [v4 setRecognitionLanguages:v5];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNRecognizeTextRequest *)self recognitionLanguages];
  v6 = [v4 recognitionLanguages];
  v7 = [v5 isEqualToArray:v6];

  if (v7 & 1) != 0 && (-[VNRecognizeTextRequest customWords](self, "customWords"), v8 = objc_claimAutoreleasedReturnValue(), [v4 customWords], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEquivalentOrNilUnorderedArrays(), v9, v8, (v10) && (v11 = -[VNRecognizeTextRequest recognitionLevel](self, "recognitionLevel"), v11 == objc_msgSend(v4, "recognitionLevel")) && (v12 = -[VNRecognizeTextRequest usesLanguageCorrection](self, "usesLanguageCorrection"), v12 == objc_msgSend(v4, "usesLanguageCorrection")) && (v13 = -[VNRecognizeTextRequest automaticallyDetectsLanguage](self, "automaticallyDetectsLanguage"), v13 == objc_msgSend(v4, "automaticallyDetectsLanguage")) && (-[VNRecognizeTextRequest minimumTextHeight](self, "minimumTextHeight"), v15 = v14, objc_msgSend(v4, "minimumTextHeight"), v15 == v16))
  {
    v19.receiver = self;
    v19.super_class = VNRecognizeTextRequest;
    v17 = [(VNImageBasedRequest *)&v19 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v17.receiver = self;
  v17.super_class = VNRecognizeTextRequest;
  v6 = [(VNRequest *)&v17 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  if (a3 - 1 <= 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeTextRequest recognitionLevel](self, "recognitionLevel") != VNRequestTextRecognitionLevelAccurate}];
    [v6 setObject:v7 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_FastRecognition"];

    [v6 setObject:&unk_1F19C1990 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_MaximumCandidatesCount"];
    v8 = [(VNRecognizeTextRequest *)self recognitionLanguages];
    [v6 setObject:v8 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_RecognitionLanguages"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRecognizeTextRequest _CRImageReaderRevisionForRevision:](self, "_CRImageReaderRevisionForRevision:", a3)}];
    [v6 setObject:v9 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_CRImageReaderRevisionKey"];

    [v6 setObject:self forKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_OriginatingRequest"];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeTextRequest usesLanguageCorrection](self, "usesLanguageCorrection") ^ 1}];
    [v6 setObject:v10 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_DisableLanguageCorrection"];

    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeTextRequest automaticallyDetectsLanguage](self, "automaticallyDetectsLanguage")}];
    [v6 setObject:v11 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesLanguageDetection"];

    v12 = MEMORY[0x1E696AD98];
    [(VNRecognizeTextRequest *)self minimumTextHeight];
    v13 = [v12 numberWithFloat:?];
    [v6 setObject:v13 forKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_MinimumTextHeight"];

    v14 = [(VNRecognizeTextRequest *)self customWords];
    [v6 setObject:v14 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_CustomWords"];

    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesCoreMode"];
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_SkipVerticalText"];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeTextRequest keepResourcesLoaded](self, "keepResourcesLoaded")}];
    [v6 setObject:v15 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_KeepResourcesLoaded"];
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v7.receiver = self;
    v7.super_class = VNRecognizeTextRequest;
    [(VNImageBasedRequest *)&v7 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VNRecognizeTextRequest *)v4 recognitionLanguages];
      [(VNRecognizeTextRequest *)self setRecognitionLanguages:v5];

      v6 = [(VNRecognizeTextRequest *)v4 customWords];
      [(VNRecognizeTextRequest *)self setCustomWords:v6];

      [(VNRecognizeTextRequest *)self setRecognitionLevel:[(VNRecognizeTextRequest *)v4 recognitionLevel]];
      [(VNRecognizeTextRequest *)self setUsesLanguageCorrection:[(VNRecognizeTextRequest *)v4 usesLanguageCorrection]];
      [(VNRecognizeTextRequest *)self setAutomaticallyDetectsLanguage:[(VNRecognizeTextRequest *)v4 automaticallyDetectsLanguage]];
      [(VNRecognizeTextRequest *)v4 minimumTextHeight];
      [(VNRecognizeTextRequest *)self setMinimumTextHeight:?];
      [(VNRecognizeTextRequest *)self setKeepResourcesLoaded:[(VNRecognizeTextRequest *)v4 keepResourcesLoaded]];
    }
  }
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 - 1 > 2)
  {
    if (a4)
    {
      [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
      *a4 = v4 = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = @"VNCRImageReaderDetectorType";
    v5 = @"VNCRImageReaderDetectorType";
  }

  return v4;
}

- (unint64_t)_CRImageReaderRevisionForRevision:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A6050110[a3 - 1];
  }
}

+ (NSArray)supportedRecognitionLanguagesForTextRecognitionLevel:(VNRequestTextRecognitionLevel)recognitionLevel revision:(NSUInteger)requestRevision error:(NSError *)error
{
  v8 = objc_alloc_init(a1);
  if ([v8 setRevision:requestRevision error:error])
  {
    [v8 setRecognitionLevel:recognitionLevel];
    v9 = [v8 supportedRecognitionLanguagesAndReturnError:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end