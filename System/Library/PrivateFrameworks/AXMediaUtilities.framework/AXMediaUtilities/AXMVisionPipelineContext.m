@interface AXMVisionPipelineContext
+ (AXMVisionPipelineContext)contextWithSourceParameters:(id)a3 options:(id)a4;
- (AXMVisionPipelineContext)initWithCoder:(id)a3;
- (AXMVisionPipelineContext)initWithSourceParameters:(id)a3 options:(id)a4;
- (AXMVisionResult)result;
- (AXMetricContainer)pipelineMetric;
- (BOOL)_addSignificantEventFeatureGateIfNeededToFeature:(id)a3 category:(id)a4 minimumConfidence:(double)a5;
- (CGSize)size;
- (VNImageRequestHandler)visionImageRequestHandler;
- (id)_makeRequestHandlerForInput:(id)a3 options:(id)a4;
- (id)description;
- (id)generateFileNameForImageWithPrefix:(id)a3 extension:(id)a4;
- (id)generateImageRepresentation;
- (id)sceneObservation;
- (id)visionImageRequestHandlerWithOptions:(id)a3;
- (void)_commonInitWithDiagnosticsEnabled:(BOOL)a3;
- (void)addAuxiliaryDetector:(id)a3;
- (void)addEvaluatedFeatureType:(unint64_t)a3;
- (void)addResultHandler:(id)a3;
- (void)appendFeature:(id)a3;
- (void)createSceneObservationIfNilWithBlock:(id)a3;
- (void)didFinishProcessingContext;
- (void)encodeWithCoder:(id)a3;
- (void)produceImage:(id)a3;
- (void)setEquivalenceToken:(id)a3;
- (void)setUserContext:(id)a3;
- (void)willBeginProcessingContext;
@end

@implementation AXMVisionPipelineContext

+ (AXMVisionPipelineContext)contextWithSourceParameters:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AXMVisionPipelineContext alloc] initWithSourceParameters:v6 options:v5];

  return v7;
}

- (AXMVisionPipelineContext)initWithSourceParameters:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = AXMVisionPipelineContext;
  v9 = [(AXMVisionPipelineContext *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v11 = _SequenceIDCounter++;
    v9->_sequenceID = v11;
    objc_storeStrong(&v9->_sourceParameters, a3);
    v12 = [v7 objectForKeyedSubscript:@"sourceProvidesResults"];
    v10->_sourceProvidesOwnResults = [v12 BOOLValue];

    [(AXMVisionPipelineContext *)v10 setAnalysisOptions:v8];
    v13 = [v7 objectForKeyedSubscript:@"diagnosticsEnabled"];
    v14 = [v13 BOOLValue];

    [(AXMVisionPipelineContext *)v10 _commonInitWithDiagnosticsEnabled:v14];
  }

  return v10;
}

- (void)_commonInitWithDiagnosticsEnabled:(BOOL)a3
{
  v3 = a3;
  self->_shouldCallCompletionHandlersForEmptyResultSet = 1;
  v5 = [MEMORY[0x1E695DF70] array];
  resultHandlers = self->_resultHandlers;
  self->_resultHandlers = v5;

  v7 = [MEMORY[0x1E695DF70] array];
  detectedSceneClassifications = self->_detectedSceneClassifications;
  self->_detectedSceneClassifications = v7;

  v9 = [MEMORY[0x1E695DF70] array];
  features = self->_features;
  self->_features = v9;

  v11 = [MEMORY[0x1E695DFA8] set];
  evaluatedFeatureTypes = self->_evaluatedFeatureTypes;
  self->_evaluatedFeatureTypes = v11;

  v13 = [MEMORY[0x1E695DEC8] array];
  effectiveTextDetectionLocales = self->_effectiveTextDetectionLocales;
  self->_effectiveTextDetectionLocales = v13;

  v15 = objc_alloc(MEMORY[0x1E6988798]);
  v16 = MEMORY[0x1E696AEC0];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = [v16 stringWithFormat:@"Pipeline-%ld", v17];
  v19 = [v15 initWithName:v18 measurementsEnabled:v3 orEnabledByEnvironmentVariables:&unk_1F240B3A0];
  metricSession = self->_metricSession;
  self->_metricSession = v19;

  v21 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v22 = dispatch_queue_create("com.apple.accessibility.sceneobservation", v21);
  sceneObservationQueue = self->_sceneObservationQueue;
  self->_sceneObservationQueue = v22;

  v24 = [MEMORY[0x1E695DF70] array];
  mediaAnalysisDetectedSceneClassifications = self->_mediaAnalysisDetectedSceneClassifications;
  self->_mediaAnalysisDetectedSceneClassifications = v24;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sequenceID = self->_sequenceID;
  sourceParameters = self->_sourceParameters;
  v6 = [(AXMVisionPipelineContext *)self error];
  v7 = [v3 stringWithFormat:@"AXMVisionPipelineContext<%p>: seqID:%lu source params: %@. error: %@", self, sequenceID, sourceParameters, v6];

  return v7;
}

- (AXMVisionPipelineContext)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = AXMVisionPipelineContext;
  v5 = [(AXMVisionPipelineContext *)&v26 init];
  if (v5)
  {
    -[AXMVisionPipelineContext _commonInitWithDiagnosticsEnabled:](v5, "_commonInitWithDiagnosticsEnabled:", [v4 decodeBoolForKey:@"diagnosticsEnabled"]);
    v6 = AXMSecureCodingClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sourceparams"];

    if (v7)
    {
      objc_storeStrong(&v5->_sourceParameters, v7);
    }

    v8 = AXMSecureCodingClasses();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"features"];

    if (v9)
    {
      objc_storeStrong(&v5->_features, v9);
    }

    v10 = AXMSecureCodingClasses();
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"evaluatedFeatureTypes"];

    if (v11)
    {
      objc_storeStrong(&v5->_evaluatedFeatureTypes, v11);
    }

    v12 = AXMSecureCodingClasses();
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"analysisOptions"];
    [(AXMVisionPipelineContext *)v5 setAnalysisOptions:v13];

    v14 = AXMSecureCodingClasses();
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"appliedImageOrientation"];
    [(AXMVisionPipelineContext *)v5 setAppliedImageOrientation:v15];

    v16 = AXMSecureCodingClasses();
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"error"];
    error = v5->_error;
    v5->_error = v17;

    v5->_sequenceID = [v4 decodeIntegerForKey:@"sequenceID"];
    v19 = AXMSecureCodingClasses();
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"userContext"];
    userContext = v5->_userContext;
    v5->_userContext = v20;

    v22 = AXMSecureCodingClasses();
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"EffectiveTextDetectionLocales"];
    effectiveTextDetectionLocales = v5->_effectiveTextDetectionLocales;
    v5->_effectiveTextDetectionLocales = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionPipelineContext *)self metricSession];
  [v4 encodeBool:objc_msgSend(v5 forKey:{"measurementsEnabled"), @"diagnosticsEnabled"}];

  v6 = [(AXMVisionPipelineContext *)self analysisOptions];
  [v4 encodeObject:v6 forKey:@"analysisOptions"];

  [v4 encodeObject:self->_sourceParameters forKey:@"sourceparams"];
  v7 = [(AXMVisionPipelineContext *)self features];
  [v4 encodeObject:v7 forKey:@"features"];

  v8 = [(AXMVisionPipelineContext *)self evaluatedFeatureTypes];
  [v4 encodeObject:v8 forKey:@"evaluatedFeatureTypes"];

  v9 = [(AXMVisionPipelineContext *)self error];
  [v4 encodeObject:v9 forKey:@"error"];

  v10 = [(AXMVisionPipelineContext *)self appliedImageOrientation];
  [v4 encodeObject:v10 forKey:@"appliedImageOrientation"];

  [v4 encodeInteger:self->_sequenceID forKey:@"sequenceID"];
  v11 = [(AXMVisionPipelineContext *)self userContext];
  [v4 encodeObject:v11 forKey:@"userContext"];

  v12 = [(AXMVisionPipelineContext *)self effectiveTextDetectionLocales];
  [v4 encodeObject:v12 forKey:@"EffectiveTextDetectionLocales"];
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

- (id)_makeRequestHandlerForInput:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695E0F8];
  if (a4)
  {
    v7 = a4;
  }

  v8 = v7;
  v9 = [v6 inputType];
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_15;
      }

      v15 = [AXMPhotoAssetData alloc];
      v16 = [v6 phAssetLocalIdentifier];
      v17 = [v6 photoLibraryURL];
      v11 = [(AXMPhotoAssetData *)v15 initWithImageAssetLocalIdentifier:v16 photoLibraryURL:v17 allowsNetworkAccess:1 needsImageData:1];

      v18 = objc_alloc(MEMORY[0x1E695F658]);
      v19 = [(AXMPhotoAssetData *)v11 imageData];
      v13 = [v18 initWithData:v19];

      v14 = [objc_alloc(getVNImageRequestHandlerClass()) initWithCIImage:v13 options:v8];
      goto LABEL_10;
    }

    v22 = objc_alloc(getVNImageRequestHandlerClass());
    v11 = [v6 URL];
    v21 = [v22 initWithURL:v11 options:v8];
LABEL_13:
    v4 = v21;
    goto LABEL_14;
  }

  if (!v9)
  {
    v20 = objc_alloc(getVNImageRequestHandlerClass());
    v11 = [v6 ciImage];
    v21 = [v20 initWithCIImage:v11 options:v8];
    goto LABEL_13;
  }

  if (v9 != 1)
  {
    goto LABEL_15;
  }

  v10 = objc_alloc(getVNImageRequestHandlerClass());
  v11 = [v6 pixelBuffer];
  v12 = [(AXMPhotoAssetData *)v11 pixelBuffer];
  v13 = [v6 pixelBuffer];
  v14 = [v10 initWithCVPixelBuffer:v12 orientation:objc_msgSend(v13 options:{"orientation"), v8}];
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

- (id)visionImageRequestHandlerWithOptions:(id)a3
{
  sourceInput = self->_sourceInput;
  if (sourceInput)
  {
    v6 = [(AXMVisionPipelineContext *)self _makeRequestHandlerForInput:sourceInput options:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)createSceneObservationIfNilWithBlock:(id)a3
{
  v4 = a3;
  sceneObservationQueue = self->_sceneObservationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AXMVisionPipelineContext_createSceneObservationIfNilWithBlock___block_invoke;
  v7[3] = &unk_1E7A1C678;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setUserContext:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = AXMSecureCodingClasses();
    v7 = [v6 containsObject:objc_opt_class()];

    if ((v7 & 1) == 0)
    {
      v8 = AXMediaLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(AXMVisionPipelineContext *)v5 setUserContext:v8];
      }
    }
  }

  userContext = self->_userContext;
  p_userContext = &self->_userContext;
  if (userContext != v5)
  {
    objc_storeStrong(p_userContext, a3);
  }
}

- (void)addResultHandler:(id)a3
{
  if (a3)
  {
    resultHandlers = self->_resultHandlers;
    v4 = MEMORY[0x1B2700900](a3, a2);
    [(NSMutableArray *)resultHandlers addObject:v4];
  }
}

- (void)produceImage:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    sourceParameters = self->_sourceParameters;
    v17 = 0;
    v13 = (*(v4 + 2))(v4, sourceParameters, &v17);
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

- (void)appendFeature:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionPipelineContext *)self userContext];
  [v4 setUserContext:v5];

  v6 = [(AXMVisionPipelineContext *)self features];
  [v6 addObject:v4];

  v7 = [v4 featureType];

  [(AXMVisionPipelineContext *)self addEvaluatedFeatureType:v7];
}

- (void)addEvaluatedFeatureType:(unint64_t)a3
{
  v5 = [(AXMVisionPipelineContext *)self evaluatedFeatureTypes];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 addObject:v4];
}

- (BOOL)_addSignificantEventFeatureGateIfNeededToFeature:(id)a3 category:(id)a4 minimumConfidence:(double)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 classificationLabel];
  if (![v9 isEqualToString:v8])
  {

    goto LABEL_5;
  }

  [v7 confidence];
  v11 = v10;

  if (v11 <= a5)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v16[0] = @"MinimumConfidence";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v16[1] = @"ClassifierLabel";
  v17[0] = v12;
  v17[1] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v7 addFeatureGate:@"Taboo Filter" userInfo:v13];

  v14 = 1;
LABEL_6:

  return v14;
}

- (void)setEquivalenceToken:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionPipelineContext *)self result];
  [v5 setEquivalenceToken:v4];
}

- (AXMVisionResult)result
{
  if (!self->_result)
  {
    v3 = [[AXMVisionResult alloc] _init];
    v4 = self->_result;
    self->_result = v3;

    v5 = [(AXMVisionPipelineContext *)self features];
    [(AXMVisionResult *)self->_result setFeatures:v5];

    v6 = [(AXMVisionPipelineContext *)self effectiveTextDetectionLocales];
    [(AXMVisionResult *)self->_result setEffectiveTextDetectionLocales:v6];

    v7 = [(AXMVisionPipelineContext *)self evaluatedFeatureTypes];
    [(AXMVisionResult *)self->_result setEvaluatedFeatureTypes:v7];

    v8 = [(AXMVisionPipelineContext *)self appliedImageOrientation];
    [(AXMVisionResult *)self->_result setAppliedImageOrientation:v8];

    v9 = [(AXMVisionPipelineContext *)self metricSession];
    [(AXMVisionResult *)self->_result setMetricSession:v9];

    [(AXMVisionResult *)self->_result setImageRegistrationState:[(AXMVisionPipelineContext *)self imageRegistrationState]];
    v10 = [(AXMVisionPipelineContext *)self userContext];
    [(AXMVisionResult *)self->_result setUserContext:v10];

    v11 = [(AXMVisionPipelineContext *)self analysisOptions];
    v12 = [v11 includeImageInResult];

    if (v12)
    {
      v13 = [(AXMVisionPipelineContext *)self generateImageRepresentation];
      [(AXMVisionResult *)self->_result setImage:v13];
    }
  }

  v14 = self->_result;

  return v14;
}

- (id)generateFileNameForImageWithPrefix:(id)a3 extension:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AXMVisionPipelineContext *)self size];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld-%ldx%ld.%@", v7, self->_sequenceID, v9, v8, v6];

  return v10;
}

- (id)generateImageRepresentation
{
  v27[2] = *MEMORY[0x1E69E9840];
  sourceInput = self->_sourceInput;
  if (sourceInput)
  {
    v4 = [(AXMPipelineContextInput *)sourceInput inputType];
    v5 = 0;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v21 = MEMORY[0x1E695F658];
        v22 = [(AXMPipelineContextInput *)self->_sourceInput URL];
        v5 = [v21 imageWithContentsOfURL:v22];
      }

      else if (v4 == 3)
      {
        v15 = [AXMPhotoAssetData alloc];
        v16 = [(AXMPipelineContextInput *)self->_sourceInput phAssetLocalIdentifier];
        v17 = [(AXMPipelineContextInput *)self->_sourceInput photoLibraryURL];
        v18 = [(AXMPhotoAssetData *)v15 initWithImageAssetLocalIdentifier:v16 photoLibraryURL:v17 allowsNetworkAccess:1 needsImageData:1];

        v19 = objc_alloc(MEMORY[0x1E695F658]);
        v20 = [(AXMPhotoAssetData *)v18 imageData];
        v5 = [v19 initWithData:v20];
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        v6 = *MEMORY[0x1E695F948];
        v27[0] = MEMORY[0x1E695E118];
        v7 = *MEMORY[0x1E695F9E0];
        v26[0] = v6;
        v26[1] = v7;
        v24 = *MEMORY[0x1E696DE78];
        v8 = MEMORY[0x1E696AD98];
        v9 = [(AXMPipelineContextInput *)self->_sourceInput pixelBuffer];
        v10 = [v8 numberWithUnsignedInt:{objc_msgSend(v9, "orientation")}];
        v25 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v27[1] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

        v13 = MEMORY[0x1E695F658];
        v14 = [(AXMPipelineContextInput *)self->_sourceInput pixelBuffer];
        v5 = [v13 imageWithCVPixelBuffer:objc_msgSend(v14 options:{"pixelBuffer"), v12}];
      }
    }

    else
    {
      v5 = [(AXMPipelineContextInput *)self->_sourceInput ciImage];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addAuxiliaryDetector:(id)a3
{
  v4 = a3;
  auxiliaryDetectors = self->_auxiliaryDetectors;
  v8 = v4;
  if (!auxiliaryDetectors)
  {
    v6 = [MEMORY[0x1E695DFA0] orderedSet];
    v7 = self->_auxiliaryDetectors;
    self->_auxiliaryDetectors = v6;

    v4 = v8;
    auxiliaryDetectors = self->_auxiliaryDetectors;
  }

  [(NSMutableOrderedSet *)auxiliaryDetectors addObject:v4];
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
  v5 = [(AXMVisionPipelineContext *)self metricSession];
  v3 = [v5 startMeasure:@"Pipeline"];
  piplelineMetric = self->_piplelineMetric;
  self->_piplelineMetric = v3;
}

- (void)didFinishProcessingContext
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 metricSession];
  v4 = [v3 generateReport];
  v5 = 138412290;
  v6 = v4;
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