@interface AXMVisionPipelineContext
+ (AXMVisionPipelineContext)contextWithSourceParameters:(id)parameters options:(id)options;
- (AXMVisionPipelineContext)initWithCoder:(id)coder;
- (AXMVisionPipelineContext)initWithSourceParameters:(id)parameters options:(id)options;
- (AXMVisionResult)result;
- (AXMetricContainer)pipelineMetric;
- (BOOL)_addSignificantEventFeatureGateIfNeededToFeature:(id)feature category:(id)category minimumConfidence:(double)confidence;
- (CGSize)size;
- (VNImageRequestHandler)visionImageRequestHandler;
- (id)_makeRequestHandlerForInput:(id)input options:(id)options;
- (id)description;
- (id)generateFileNameForImageWithPrefix:(id)prefix extension:(id)extension;
- (id)generateImageRepresentation;
- (id)sceneObservation;
- (id)visionImageRequestHandlerWithOptions:(id)options;
- (void)_commonInitWithDiagnosticsEnabled:(BOOL)enabled;
- (void)addAuxiliaryDetector:(id)detector;
- (void)addEvaluatedFeatureType:(unint64_t)type;
- (void)addResultHandler:(id)handler;
- (void)appendFeature:(id)feature;
- (void)createSceneObservationIfNilWithBlock:(id)block;
- (void)didFinishProcessingContext;
- (void)encodeWithCoder:(id)coder;
- (void)produceImage:(id)image;
- (void)setEquivalenceToken:(id)token;
- (void)setUserContext:(id)context;
- (void)willBeginProcessingContext;
@end

@implementation AXMVisionPipelineContext

+ (AXMVisionPipelineContext)contextWithSourceParameters:(id)parameters options:(id)options
{
  optionsCopy = options;
  parametersCopy = parameters;
  v7 = [[AXMVisionPipelineContext alloc] initWithSourceParameters:parametersCopy options:optionsCopy];

  return v7;
}

- (AXMVisionPipelineContext)initWithSourceParameters:(id)parameters options:(id)options
{
  parametersCopy = parameters;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = AXMVisionPipelineContext;
  v9 = [(AXMVisionPipelineContext *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v11 = _SequenceIDCounter++;
    v9->_sequenceID = v11;
    objc_storeStrong(&v9->_sourceParameters, parameters);
    v12 = [parametersCopy objectForKeyedSubscript:@"sourceProvidesResults"];
    v10->_sourceProvidesOwnResults = [v12 BOOLValue];

    [(AXMVisionPipelineContext *)v10 setAnalysisOptions:optionsCopy];
    v13 = [parametersCopy objectForKeyedSubscript:@"diagnosticsEnabled"];
    bOOLValue = [v13 BOOLValue];

    [(AXMVisionPipelineContext *)v10 _commonInitWithDiagnosticsEnabled:bOOLValue];
  }

  return v10;
}

- (void)_commonInitWithDiagnosticsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_shouldCallCompletionHandlersForEmptyResultSet = 1;
  array = [MEMORY[0x1E695DF70] array];
  resultHandlers = self->_resultHandlers;
  self->_resultHandlers = array;

  array2 = [MEMORY[0x1E695DF70] array];
  detectedSceneClassifications = self->_detectedSceneClassifications;
  self->_detectedSceneClassifications = array2;

  array3 = [MEMORY[0x1E695DF70] array];
  features = self->_features;
  self->_features = array3;

  v11 = [MEMORY[0x1E695DFA8] set];
  evaluatedFeatureTypes = self->_evaluatedFeatureTypes;
  self->_evaluatedFeatureTypes = v11;

  array4 = [MEMORY[0x1E695DEC8] array];
  effectiveTextDetectionLocales = self->_effectiveTextDetectionLocales;
  self->_effectiveTextDetectionLocales = array4;

  v15 = objc_alloc(MEMORY[0x1E6988798]);
  v16 = MEMORY[0x1E696AEC0];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = [v16 stringWithFormat:@"Pipeline-%ld", v17];
  v19 = [v15 initWithName:v18 measurementsEnabled:enabledCopy orEnabledByEnvironmentVariables:&unk_1F240B3A0];
  metricSession = self->_metricSession;
  self->_metricSession = v19;

  v21 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v22 = dispatch_queue_create("com.apple.accessibility.sceneobservation", v21);
  sceneObservationQueue = self->_sceneObservationQueue;
  self->_sceneObservationQueue = v22;

  array5 = [MEMORY[0x1E695DF70] array];
  mediaAnalysisDetectedSceneClassifications = self->_mediaAnalysisDetectedSceneClassifications;
  self->_mediaAnalysisDetectedSceneClassifications = array5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sequenceID = self->_sequenceID;
  sourceParameters = self->_sourceParameters;
  error = [(AXMVisionPipelineContext *)self error];
  v7 = [v3 stringWithFormat:@"AXMVisionPipelineContext<%p>: seqID:%lu source params: %@. error: %@", self, sequenceID, sourceParameters, error];

  return v7;
}

- (AXMVisionPipelineContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = AXMVisionPipelineContext;
  v5 = [(AXMVisionPipelineContext *)&v26 init];
  if (v5)
  {
    -[AXMVisionPipelineContext _commonInitWithDiagnosticsEnabled:](v5, "_commonInitWithDiagnosticsEnabled:", [coderCopy decodeBoolForKey:@"diagnosticsEnabled"]);
    v6 = AXMSecureCodingClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sourceparams"];

    if (v7)
    {
      objc_storeStrong(&v5->_sourceParameters, v7);
    }

    v8 = AXMSecureCodingClasses();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"features"];

    if (v9)
    {
      objc_storeStrong(&v5->_features, v9);
    }

    v10 = AXMSecureCodingClasses();
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"evaluatedFeatureTypes"];

    if (v11)
    {
      objc_storeStrong(&v5->_evaluatedFeatureTypes, v11);
    }

    v12 = AXMSecureCodingClasses();
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"analysisOptions"];
    [(AXMVisionPipelineContext *)v5 setAnalysisOptions:v13];

    v14 = AXMSecureCodingClasses();
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"appliedImageOrientation"];
    [(AXMVisionPipelineContext *)v5 setAppliedImageOrientation:v15];

    v16 = AXMSecureCodingClasses();
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"error"];
    error = v5->_error;
    v5->_error = v17;

    v5->_sequenceID = [coderCopy decodeIntegerForKey:@"sequenceID"];
    v19 = AXMSecureCodingClasses();
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"userContext"];
    userContext = v5->_userContext;
    v5->_userContext = v20;

    v22 = AXMSecureCodingClasses();
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"EffectiveTextDetectionLocales"];
    effectiveTextDetectionLocales = v5->_effectiveTextDetectionLocales;
    v5->_effectiveTextDetectionLocales = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  metricSession = [(AXMVisionPipelineContext *)self metricSession];
  [coderCopy encodeBool:objc_msgSend(metricSession forKey:{"measurementsEnabled"), @"diagnosticsEnabled"}];

  analysisOptions = [(AXMVisionPipelineContext *)self analysisOptions];
  [coderCopy encodeObject:analysisOptions forKey:@"analysisOptions"];

  [coderCopy encodeObject:self->_sourceParameters forKey:@"sourceparams"];
  features = [(AXMVisionPipelineContext *)self features];
  [coderCopy encodeObject:features forKey:@"features"];

  evaluatedFeatureTypes = [(AXMVisionPipelineContext *)self evaluatedFeatureTypes];
  [coderCopy encodeObject:evaluatedFeatureTypes forKey:@"evaluatedFeatureTypes"];

  error = [(AXMVisionPipelineContext *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  appliedImageOrientation = [(AXMVisionPipelineContext *)self appliedImageOrientation];
  [coderCopy encodeObject:appliedImageOrientation forKey:@"appliedImageOrientation"];

  [coderCopy encodeInteger:self->_sequenceID forKey:@"sequenceID"];
  userContext = [(AXMVisionPipelineContext *)self userContext];
  [coderCopy encodeObject:userContext forKey:@"userContext"];

  effectiveTextDetectionLocales = [(AXMVisionPipelineContext *)self effectiveTextDetectionLocales];
  [coderCopy encodeObject:effectiveTextDetectionLocales forKey:@"EffectiveTextDetectionLocales"];
}

- (CGSize)size
{
  sourceInput = self->_sourceInput;
  if (sourceInput)
  {
    [(AXMPipelineContextInput *)sourceInput size];
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_makeRequestHandlerForInput:(id)input options:(id)options
{
  inputCopy = input;
  optionsCopy = MEMORY[0x1E695E0F8];
  if (options)
  {
    optionsCopy = options;
  }

  v8 = optionsCopy;
  inputType = [inputCopy inputType];
  if (inputType > 1)
  {
    if (inputType != 2)
    {
      if (inputType != 3)
      {
        goto LABEL_15;
      }

      v15 = [AXMPhotoAssetData alloc];
      phAssetLocalIdentifier = [inputCopy phAssetLocalIdentifier];
      photoLibraryURL = [inputCopy photoLibraryURL];
      ciImage = [(AXMPhotoAssetData *)v15 initWithImageAssetLocalIdentifier:phAssetLocalIdentifier photoLibraryURL:photoLibraryURL allowsNetworkAccess:1 needsImageData:1];

      v18 = objc_alloc(MEMORY[0x1E695F658]);
      imageData = [(AXMPhotoAssetData *)ciImage imageData];
      pixelBuffer2 = [v18 initWithData:imageData];

      v14 = [objc_alloc(getVNImageRequestHandlerClass()) initWithCIImage:pixelBuffer2 options:v8];
      goto LABEL_10;
    }

    v22 = objc_alloc(getVNImageRequestHandlerClass());
    ciImage = [inputCopy URL];
    v21 = [v22 initWithURL:ciImage options:v8];
LABEL_13:
    v4 = v21;
    goto LABEL_14;
  }

  if (!inputType)
  {
    v20 = objc_alloc(getVNImageRequestHandlerClass());
    ciImage = [inputCopy ciImage];
    v21 = [v20 initWithCIImage:ciImage options:v8];
    goto LABEL_13;
  }

  if (inputType != 1)
  {
    goto LABEL_15;
  }

  v10 = objc_alloc(getVNImageRequestHandlerClass());
  ciImage = [inputCopy pixelBuffer];
  pixelBuffer = [(AXMPhotoAssetData *)ciImage pixelBuffer];
  pixelBuffer2 = [inputCopy pixelBuffer];
  v14 = [v10 initWithCVPixelBuffer:pixelBuffer orientation:objc_msgSend(pixelBuffer2 options:{"orientation"), v8}];
LABEL_10:
  v4 = v14;

LABEL_14:
LABEL_15:

  return v4;
}

- (VNImageRequestHandler)visionImageRequestHandler
{
  visionImageRequestHandler = self->_visionImageRequestHandler;
  if (!visionImageRequestHandler)
  {
    v4 = [(AXMVisionPipelineContext *)self _makeRequestHandlerForInput:self->_sourceInput options:0];
    v5 = self->_visionImageRequestHandler;
    self->_visionImageRequestHandler = v4;

    visionImageRequestHandler = self->_visionImageRequestHandler;
  }

  return visionImageRequestHandler;
}

- (id)visionImageRequestHandlerWithOptions:(id)options
{
  sourceInput = self->_sourceInput;
  if (sourceInput)
  {
    v6 = [(AXMVisionPipelineContext *)self _makeRequestHandlerForInput:sourceInput options:options];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)createSceneObservationIfNilWithBlock:(id)block
{
  blockCopy = block;
  sceneObservationQueue = self->_sceneObservationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AXMVisionPipelineContext_createSceneObservationIfNilWithBlock___block_invoke;
  v7[3] = &unk_1E7A1C678;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(sceneObservationQueue, v7);
}

void __65__AXMVisionPipelineContext_createSceneObservationIfNilWithBlock___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48))
  {
    v3 = (*(*(a1 + 40) + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;
  }
}

- (id)sceneObservation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  sceneObservationQueue = self->_sceneObservationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AXMVisionPipelineContext_sceneObservation__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sceneObservationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setUserContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = AXMSecureCodingClasses();
    v7 = [v6 containsObject:objc_opt_class()];

    if ((v7 & 1) == 0)
    {
      v8 = AXMediaLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(AXMVisionPipelineContext *)contextCopy setUserContext:v8];
      }
    }
  }

  userContext = self->_userContext;
  p_userContext = &self->_userContext;
  if (userContext != contextCopy)
  {
    objc_storeStrong(p_userContext, context);
  }
}

- (void)addResultHandler:(id)handler
{
  if (handler)
  {
    resultHandlers = self->_resultHandlers;
    v4 = MEMORY[0x1B2700900](handler, a2);
    [(NSMutableArray *)resultHandlers addObject:v4];
  }
}

- (void)produceImage:(id)image
{
  imageCopy = image;
  v11 = imageCopy;
  if (imageCopy)
  {
    sourceParameters = self->_sourceParameters;
    v17 = 0;
    v13 = (*(imageCopy + 2))(imageCopy, sourceParameters, &v17);
    v14 = v17;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  if (!(v14 | v13))
  {
    v14 = _AXMMakeError(0, @"A creation node must return a valid image", v5, v6, v7, v8, v9, v10, v16);
  }

  if (v14)
  {
    [(AXMVisionPipelineContext *)self errorOccurred:v14];
  }

  else if (v13)
  {
    objc_storeStrong(&self->_sourceInput, v13);
  }

  v15 = self->_sourceParameters;
  self->_sourceParameters = 0;
}

- (void)appendFeature:(id)feature
{
  featureCopy = feature;
  userContext = [(AXMVisionPipelineContext *)self userContext];
  [featureCopy setUserContext:userContext];

  features = [(AXMVisionPipelineContext *)self features];
  [features addObject:featureCopy];

  featureType = [featureCopy featureType];

  [(AXMVisionPipelineContext *)self addEvaluatedFeatureType:featureType];
}

- (void)addEvaluatedFeatureType:(unint64_t)type
{
  evaluatedFeatureTypes = [(AXMVisionPipelineContext *)self evaluatedFeatureTypes];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [evaluatedFeatureTypes addObject:v4];
}

- (BOOL)_addSignificantEventFeatureGateIfNeededToFeature:(id)feature category:(id)category minimumConfidence:(double)confidence
{
  v17[2] = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  categoryCopy = category;
  classificationLabel = [featureCopy classificationLabel];
  if (![classificationLabel isEqualToString:categoryCopy])
  {

    goto LABEL_5;
  }

  [featureCopy confidence];
  v11 = v10;

  if (v11 <= confidence)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v16[0] = @"MinimumConfidence";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:confidence];
  v16[1] = @"ClassifierLabel";
  v17[0] = v12;
  v17[1] = categoryCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [featureCopy addFeatureGate:@"Taboo Filter" userInfo:v13];

  v14 = 1;
LABEL_6:

  return v14;
}

- (void)setEquivalenceToken:(id)token
{
  tokenCopy = token;
  result = [(AXMVisionPipelineContext *)self result];
  [result setEquivalenceToken:tokenCopy];
}

- (AXMVisionResult)result
{
  if (!self->_result)
  {
    _init = [[AXMVisionResult alloc] _init];
    v4 = self->_result;
    self->_result = _init;

    features = [(AXMVisionPipelineContext *)self features];
    [(AXMVisionResult *)self->_result setFeatures:features];

    effectiveTextDetectionLocales = [(AXMVisionPipelineContext *)self effectiveTextDetectionLocales];
    [(AXMVisionResult *)self->_result setEffectiveTextDetectionLocales:effectiveTextDetectionLocales];

    evaluatedFeatureTypes = [(AXMVisionPipelineContext *)self evaluatedFeatureTypes];
    [(AXMVisionResult *)self->_result setEvaluatedFeatureTypes:evaluatedFeatureTypes];

    appliedImageOrientation = [(AXMVisionPipelineContext *)self appliedImageOrientation];
    [(AXMVisionResult *)self->_result setAppliedImageOrientation:appliedImageOrientation];

    metricSession = [(AXMVisionPipelineContext *)self metricSession];
    [(AXMVisionResult *)self->_result setMetricSession:metricSession];

    [(AXMVisionResult *)self->_result setImageRegistrationState:[(AXMVisionPipelineContext *)self imageRegistrationState]];
    userContext = [(AXMVisionPipelineContext *)self userContext];
    [(AXMVisionResult *)self->_result setUserContext:userContext];

    analysisOptions = [(AXMVisionPipelineContext *)self analysisOptions];
    includeImageInResult = [analysisOptions includeImageInResult];

    if (includeImageInResult)
    {
      generateImageRepresentation = [(AXMVisionPipelineContext *)self generateImageRepresentation];
      [(AXMVisionResult *)self->_result setImage:generateImageRepresentation];
    }
  }

  v14 = self->_result;

  return v14;
}

- (id)generateFileNameForImageWithPrefix:(id)prefix extension:(id)extension
{
  extensionCopy = extension;
  prefixCopy = prefix;
  [(AXMVisionPipelineContext *)self size];
  extensionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld-%ldx%ld.%@", prefixCopy, self->_sequenceID, v9, v8, extensionCopy];

  return extensionCopy;
}

- (id)generateImageRepresentation
{
  v27[2] = *MEMORY[0x1E69E9840];
  sourceInput = self->_sourceInput;
  if (sourceInput)
  {
    inputType = [(AXMPipelineContextInput *)sourceInput inputType];
    ciImage = 0;
    if (inputType > 1)
    {
      if (inputType == 2)
      {
        v21 = MEMORY[0x1E695F658];
        v22 = [(AXMPipelineContextInput *)self->_sourceInput URL];
        ciImage = [v21 imageWithContentsOfURL:v22];
      }

      else if (inputType == 3)
      {
        v15 = [AXMPhotoAssetData alloc];
        phAssetLocalIdentifier = [(AXMPipelineContextInput *)self->_sourceInput phAssetLocalIdentifier];
        photoLibraryURL = [(AXMPipelineContextInput *)self->_sourceInput photoLibraryURL];
        v18 = [(AXMPhotoAssetData *)v15 initWithImageAssetLocalIdentifier:phAssetLocalIdentifier photoLibraryURL:photoLibraryURL allowsNetworkAccess:1 needsImageData:1];

        v19 = objc_alloc(MEMORY[0x1E695F658]);
        imageData = [(AXMPhotoAssetData *)v18 imageData];
        ciImage = [v19 initWithData:imageData];
      }
    }

    else if (inputType)
    {
      if (inputType == 1)
      {
        v6 = *MEMORY[0x1E695F948];
        v27[0] = MEMORY[0x1E695E118];
        v7 = *MEMORY[0x1E695F9E0];
        v26[0] = v6;
        v26[1] = v7;
        v24 = *MEMORY[0x1E696DE78];
        v8 = MEMORY[0x1E696AD98];
        pixelBuffer = [(AXMPipelineContextInput *)self->_sourceInput pixelBuffer];
        v10 = [v8 numberWithUnsignedInt:{objc_msgSend(pixelBuffer, "orientation")}];
        v25 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v27[1] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

        v13 = MEMORY[0x1E695F658];
        pixelBuffer2 = [(AXMPipelineContextInput *)self->_sourceInput pixelBuffer];
        ciImage = [v13 imageWithCVPixelBuffer:objc_msgSend(pixelBuffer2 options:{"pixelBuffer"), v12}];
      }
    }

    else
    {
      ciImage = [(AXMPipelineContextInput *)self->_sourceInput ciImage];
    }
  }

  else
  {
    ciImage = 0;
  }

  return ciImage;
}

- (void)addAuxiliaryDetector:(id)detector
{
  detectorCopy = detector;
  auxiliaryDetectors = self->_auxiliaryDetectors;
  v8 = detectorCopy;
  if (!auxiliaryDetectors)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v7 = self->_auxiliaryDetectors;
    self->_auxiliaryDetectors = orderedSet;

    detectorCopy = v8;
    auxiliaryDetectors = self->_auxiliaryDetectors;
  }

  [(NSMutableOrderedSet *)auxiliaryDetectors addObject:detectorCopy];
}

- (AXMetricContainer)pipelineMetric
{
  piplelineMetric = self->_piplelineMetric;
  if (!piplelineMetric)
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(AXMVisionPipelineContext *)v4 pipelineMetric];
    }

    piplelineMetric = self->_piplelineMetric;
  }

  return piplelineMetric;
}

- (void)willBeginProcessingContext
{
  metricSession = [(AXMVisionPipelineContext *)self metricSession];
  v3 = [metricSession startMeasure:@"Pipeline"];
  piplelineMetric = self->_piplelineMetric;
  self->_piplelineMetric = v3;
}

- (void)didFinishProcessingContext
{
  v7 = *MEMORY[0x1E69E9840];
  metricSession = [self metricSession];
  generateReport = [metricSession generateReport];
  v5 = 138412290;
  v6 = generateReport;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "%@", &v5, 0xCu);
}

- (void)setUserContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_fault_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_FAULT, "userContext class %@ not in AXMSecureCodingClasses()", &v4, 0xCu);
}

@end