@interface AXMTraitDetectorNode
- (BOOL)validateVisionKitSoftLinkSymbols;
- (id)_blurValueForVisionObservation:(id)observation;
- (id)_brightnessValueForVisionObservation:(id)observation;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
- (void)nodeInitialize;
@end

@implementation AXMTraitDetectorNode

- (void)nodeInitialize
{
  v3.receiver = self;
  v3.super_class = AXMTraitDetectorNode;
  [(AXMEvaluationNode *)&v3 nodeInitialize];
  self->_shouldEvaluateColorInformation = 0;
  self->_colorDistanceTheshold = 5.0;
  self->_sampleFrequency = 4;
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNImageScoreObservationClass())
  {
    if (getVNImageBrightnessObservationClass())
    {
      if (getVNImageBlurObservationClass())
      {
        v5.receiver = self;
        v5.super_class = AXMTraitDetectorNode;
        return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
      }

      v4 = AXMediaLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [AXMTraitDetectorNode validateVisionKitSoftLinkSymbols];
      }
    }

    else
    {
      v4 = AXMediaLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [AXMTraitDetectorNode validateVisionKitSoftLinkSymbols];
      }
    }
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AXMTraitDetectorNode validateVisionKitSoftLinkSymbols];
    }
  }

  return 0;
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v32[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v26.receiver = self;
  v26.super_class = AXMTraitDetectorNode;
  [(AXMEvaluationNode *)&v26 evaluate:evaluateCopy metrics:metricsCopy];
  v8 = objc_autoreleasePoolPush();
  if ([(AXMTraitDetectorNode *)self shouldEvaluateColorInformation])
  {
    [(AXMTraitDetectorNode *)self _evaluateColorInformation:evaluateCopy];
  }

  visionImageRequestHandler = [evaluateCopy visionImageRequestHandler];
  if (visionImageRequestHandler)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v10 = getVNImageBlurScoreRequestClass_softClass;
    v31 = getVNImageBlurScoreRequestClass_softClass;
    if (!getVNImageBlurScoreRequestClass_softClass)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __getVNImageBlurScoreRequestClass_block_invoke;
      v27[3] = &unk_1E7A1C700;
      v27[4] = &v28;
      __getVNImageBlurScoreRequestClass_block_invoke(v27);
      v10 = v29[3];
    }

    v11 = v10;
    _Block_object_dispose(&v28, 8);
    v12 = objc_alloc_init(v10);
    v32[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v25 = 0;
    v14 = [visionImageRequestHandler performRequests:v13 error:&v25];
    v15 = v25;
    if (v14)
    {
      results = [v12 results];
      firstObject = [results firstObject];
      v18 = [(AXMTraitDetectorNode *)self _blurValueForVisionObservation:firstObject];

      if (v18)
      {
        [v18 floatValue];
        v20 = v19;
        [evaluateCopy size];
        v22 = v21;
        LODWORD(v21) = v20;
        v24 = [AXMVisionFeature featureWithVisionRequest:v12 blurValue:v21 canvasSize:v22, v23];
        [evaluateCopy appendFeature:v24];
      }
    }

    else
    {
      v18 = AXMediaLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AXMTraitDetectorNode evaluate:v15 metrics:v18];
      }
    }
  }

  else
  {
    v15 = AXMediaLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AXMTraitDetectorNode evaluate:metrics:];
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (id)_brightnessValueForVisionObservation:(id)observation
{
  observationCopy = observation;
  getVNImageBrightnessObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AD98];
    [observationCopy brightness];
    exposureScore = [v4 numberWithFloat:?];
LABEL_5:
    v6 = exposureScore;
    goto LABEL_7;
  }

  getVNImageScoreObservationClass();
  if (objc_opt_isKindOfClass())
  {
    exposureScore = [observationCopy exposureScore];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_blurValueForVisionObservation:(id)observation
{
  observationCopy = observation;
  getVNImageBlurObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AD98];
    [observationCopy blurMeasure];
    blurScore = [v4 numberWithFloat:?];
LABEL_5:
    v6 = blurScore;
    goto LABEL_7;
  }

  getVNImageScoreObservationClass();
  if (objc_opt_isKindOfClass())
  {
    blurScore = [observationCopy blurScore];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)evaluate:(uint64_t)a1 metrics:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not evaluate: %@", &v2, 0xCu);
}

@end