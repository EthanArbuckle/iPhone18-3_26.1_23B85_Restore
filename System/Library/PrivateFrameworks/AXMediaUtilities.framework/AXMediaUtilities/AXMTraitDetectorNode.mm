@interface AXMTraitDetectorNode
- (BOOL)validateVisionKitSoftLinkSymbols;
- (id)_blurValueForVisionObservation:(id)a3;
- (id)_brightnessValueForVisionObservation:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
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

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = AXMTraitDetectorNode;
  [(AXMEvaluationNode *)&v26 evaluate:v6 metrics:v7];
  v8 = objc_autoreleasePoolPush();
  if ([(AXMTraitDetectorNode *)self shouldEvaluateColorInformation])
  {
    [(AXMTraitDetectorNode *)self _evaluateColorInformation:v6];
  }

  v9 = [v6 visionImageRequestHandler];
  if (v9)
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
    v14 = [v9 performRequests:v13 error:&v25];
    v15 = v25;
    if (v14)
    {
      v16 = [v12 results];
      v17 = [v16 firstObject];
      v18 = [(AXMTraitDetectorNode *)self _blurValueForVisionObservation:v17];

      if (v18)
      {
        [v18 floatValue];
        v20 = v19;
        [v6 size];
        v22 = v21;
        LODWORD(v21) = v20;
        v24 = [AXMVisionFeature featureWithVisionRequest:v12 blurValue:v21 canvasSize:v22, v23];
        [v6 appendFeature:v24];
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

- (id)_brightnessValueForVisionObservation:(id)a3
{
  v3 = a3;
  getVNImageBrightnessObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AD98];
    [v3 brightness];
    v5 = [v4 numberWithFloat:?];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  getVNImageScoreObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 exposureScore];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_blurValueForVisionObservation:(id)a3
{
  v3 = a3;
  getVNImageBlurObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696AD98];
    [v3 blurMeasure];
    v5 = [v4 numberWithFloat:?];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  getVNImageScoreObservationClass();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 blurScore];
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