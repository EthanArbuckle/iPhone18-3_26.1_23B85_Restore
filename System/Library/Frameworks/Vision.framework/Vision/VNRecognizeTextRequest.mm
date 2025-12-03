@interface VNRecognizeTextRequest
+ (NSArray)supportedRecognitionLanguagesForTextRecognitionLevel:(VNRequestTextRecognitionLevel)recognitionLevel revision:(NSUInteger)requestRevision error:(NSError *)error;
- (BOOL)automaticallyDetectsLanguage;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)keepResourcesLoaded;
- (BOOL)usesLanguageCorrection;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSArray)customWords;
- (NSArray)recognitionLanguages;
- (NSArray)supportedRecognitionLanguagesAndReturnError:(NSError *)error;
- (VNRequestTextRecognitionLevel)recognitionLevel;
- (float)minimumTextHeight;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)sequencedRequestPreviousObservationsKey;
- (unint64_t)_CRImageReaderRevisionForRevision:(unint64_t)revision;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setAutomaticallyDetectsLanguage:(BOOL)automaticallyDetectsLanguage;
- (void)setCustomWords:(NSArray *)customWords;
- (void)setKeepResourcesLoaded:(BOOL)loaded;
- (void)setMinimumTextHeight:(float)minimumTextHeight;
- (void)setRecognitionLanguages:(NSArray *)recognitionLanguages;
- (void)setRecognitionLevel:(VNRequestTextRecognitionLevel)recognitionLevel;
- (void)setUsesLanguageCorrection:(BOOL)usesLanguageCorrection;
@end

@implementation VNRecognizeTextRequest

- (NSArray)supportedRecognitionLanguagesAndReturnError:(NSError *)error
{
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  v6 = [(VNRecognizeTextRequest *)self newDefaultDetectorOptionsForRequestRevision:resolvedRevision session:0];
  if (resolvedRevision == 1)
  {
    v7 = &unk_1F19C20F8;
  }

  else
  {
    v7 = [VNCRImageReaderDetector supportedLanguagesForProcessOptions:v6 error:error];
  }

  return v7;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v19 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v19 forRevision:revision loadedInSession:session error:error];
    v12 = v19;
    if (v11)
    {
      v20[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      detectorProgressHandler = [(VNRequest *)self detectorProgressHandler];
      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v16 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:detectorProgressHandler progressHandler:?];
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
  sequencedRequestPreviousObservationsKey = [(VNRequest *)&v15 sequencedRequestPreviousObservationsKey];
  recognitionLanguages = [(VNRecognizeTextRequest *)self recognitionLanguages];
  v6 = _sequenceKeyComponentForArray(recognitionLanguages);
  customWords = [(VNRecognizeTextRequest *)self customWords];
  v8 = _sequenceKeyComponentForArray(customWords);
  recognitionLevel = [(VNRecognizeTextRequest *)self recognitionLevel];
  usesLanguageCorrection = [(VNRecognizeTextRequest *)self usesLanguageCorrection];
  automaticallyDetectsLanguage = [(VNRecognizeTextRequest *)self automaticallyDetectsLanguage];
  [(VNRecognizeTextRequest *)self minimumTextHeight];
  v13 = [v3 initWithFormat:@"%@:%@:%p:%ld:%d:%d:%f", sequencedRequestPreviousObservationsKey, v6, v8, recognitionLevel, usesLanguageCorrection, automaticallyDetectsLanguage, v12];

  return v13;
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

- (void)setMinimumTextHeight:(float)minimumTextHeight
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = minimumTextHeight;
  [configuration setMinimumTextHeight:v4];
}

- (BOOL)automaticallyDetectsLanguage
{
  configuration = [(VNRequest *)self configuration];
  automaticallyDetectsLanguage = [configuration automaticallyDetectsLanguage];

  return automaticallyDetectsLanguage;
}

- (void)setAutomaticallyDetectsLanguage:(BOOL)automaticallyDetectsLanguage
{
  v3 = automaticallyDetectsLanguage;
  configuration = [(VNRequest *)self configuration];
  [configuration setAutomaticallyDetectsLanguage:v3];
}

- (BOOL)usesLanguageCorrection
{
  configuration = [(VNRequest *)self configuration];
  usesLanguageCorrection = [configuration usesLanguageCorrection];

  return usesLanguageCorrection;
}

- (void)setUsesLanguageCorrection:(BOOL)usesLanguageCorrection
{
  v3 = usesLanguageCorrection;
  configuration = [(VNRequest *)self configuration];
  [configuration setUsesLanguageCorrection:v3];
}

- (VNRequestTextRecognitionLevel)recognitionLevel
{
  configuration = [(VNRequest *)self configuration];
  recognitionLevel = [configuration recognitionLevel];

  return recognitionLevel;
}

- (void)setRecognitionLevel:(VNRequestTextRecognitionLevel)recognitionLevel
{
  configuration = [(VNRequest *)self configuration];
  [configuration setRecognitionLevel:recognitionLevel];
}

- (NSArray)customWords
{
  configuration = [(VNRequest *)self configuration];
  customWords = [configuration customWords];

  return customWords;
}

- (void)setCustomWords:(NSArray *)customWords
{
  v5 = [(NSArray *)customWords copy];
  configuration = [(VNRequest *)self configuration];
  [configuration setCustomWords:v5];
}

- (NSArray)recognitionLanguages
{
  configuration = [(VNRequest *)self configuration];
  recognitionLanguages = [configuration recognitionLanguages];

  return recognitionLanguages;
}

- (void)setRecognitionLanguages:(NSArray *)recognitionLanguages
{
  v5 = [(NSArray *)recognitionLanguages copy];
  configuration = [(VNRequest *)self configuration];
  [configuration setRecognitionLanguages:v5];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  recognitionLanguages = [(VNRecognizeTextRequest *)self recognitionLanguages];
  recognitionLanguages2 = [configurationCopy recognitionLanguages];
  v7 = [recognitionLanguages isEqualToArray:recognitionLanguages2];

  if (v7 & 1) != 0 && (-[VNRecognizeTextRequest customWords](self, "customWords"), v8 = objc_claimAutoreleasedReturnValue(), [configurationCopy customWords], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEquivalentOrNilUnorderedArrays(), v9, v8, (v10) && (v11 = -[VNRecognizeTextRequest recognitionLevel](self, "recognitionLevel"), v11 == objc_msgSend(configurationCopy, "recognitionLevel")) && (v12 = -[VNRecognizeTextRequest usesLanguageCorrection](self, "usesLanguageCorrection"), v12 == objc_msgSend(configurationCopy, "usesLanguageCorrection")) && (v13 = -[VNRecognizeTextRequest automaticallyDetectsLanguage](self, "automaticallyDetectsLanguage"), v13 == objc_msgSend(configurationCopy, "automaticallyDetectsLanguage")) && (-[VNRecognizeTextRequest minimumTextHeight](self, "minimumTextHeight"), v15 = v14, objc_msgSend(configurationCopy, "minimumTextHeight"), v15 == v16))
  {
    v19.receiver = self;
    v19.super_class = VNRecognizeTextRequest;
    v17 = [(VNImageBasedRequest *)&v19 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v17.receiver = self;
  v17.super_class = VNRecognizeTextRequest;
  v6 = [(VNRequest *)&v17 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  if (revision - 1 <= 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeTextRequest recognitionLevel](self, "recognitionLevel") != VNRequestTextRecognitionLevelAccurate}];
    [v6 setObject:v7 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_FastRecognition"];

    [v6 setObject:&unk_1F19C1990 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_MaximumCandidatesCount"];
    recognitionLanguages = [(VNRecognizeTextRequest *)self recognitionLanguages];
    [v6 setObject:recognitionLanguages forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_RecognitionLanguages"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRecognizeTextRequest _CRImageReaderRevisionForRevision:](self, "_CRImageReaderRevisionForRevision:", revision)}];
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

    customWords = [(VNRecognizeTextRequest *)self customWords];
    [v6 setObject:customWords forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_CustomWords"];

    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesCoreMode"];
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_SkipVerticalText"];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRecognizeTextRequest keepResourcesLoaded](self, "keepResourcesLoaded")}];
    [v6 setObject:v15 forKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_KeepResourcesLoaded"];
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v7.receiver = self;
    v7.super_class = VNRecognizeTextRequest;
    [(VNImageBasedRequest *)&v7 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recognitionLanguages = [(VNRecognizeTextRequest *)requestCopy recognitionLanguages];
      [(VNRecognizeTextRequest *)self setRecognitionLanguages:recognitionLanguages];

      customWords = [(VNRecognizeTextRequest *)requestCopy customWords];
      [(VNRecognizeTextRequest *)self setCustomWords:customWords];

      [(VNRecognizeTextRequest *)self setRecognitionLevel:[(VNRecognizeTextRequest *)requestCopy recognitionLevel]];
      [(VNRecognizeTextRequest *)self setUsesLanguageCorrection:[(VNRecognizeTextRequest *)requestCopy usesLanguageCorrection]];
      [(VNRecognizeTextRequest *)self setAutomaticallyDetectsLanguage:[(VNRecognizeTextRequest *)requestCopy automaticallyDetectsLanguage]];
      [(VNRecognizeTextRequest *)requestCopy minimumTextHeight];
      [(VNRecognizeTextRequest *)self setMinimumTextHeight:?];
      [(VNRecognizeTextRequest *)self setKeepResourcesLoaded:[(VNRecognizeTextRequest *)requestCopy keepResourcesLoaded]];
    }
  }
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision - 1 > 2)
  {
    if (error)
    {
      [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
      *error = v4 = 0;
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

- (unint64_t)_CRImageReaderRevisionForRevision:(unint64_t)revision
{
  if (revision - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A6050110[revision - 1];
  }
}

+ (NSArray)supportedRecognitionLanguagesForTextRecognitionLevel:(VNRequestTextRecognitionLevel)recognitionLevel revision:(NSUInteger)requestRevision error:(NSError *)error
{
  v8 = objc_alloc_init(self);
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