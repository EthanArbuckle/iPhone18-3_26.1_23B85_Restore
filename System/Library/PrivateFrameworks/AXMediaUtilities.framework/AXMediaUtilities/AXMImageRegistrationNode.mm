@interface AXMImageRegistrationNode
- (BOOL)validateVisionKitSoftLinkSymbols;
- (id)_translationalImageRegistrationRequestForInput:(id)a3;
- (void)_recordTransposition:(CGPoint)a3;
- (void)_resetImageRegistration;
- (void)_resetTranspositionHistory;
- (void)evaluate:(id)a3 metrics:(id)a4;
- (void)nodeInitialize;
@end

@implementation AXMImageRegistrationNode

- (void)nodeInitialize
{
  v3.receiver = self;
  v3.super_class = AXMImageRegistrationNode;
  [(AXMEvaluationNode *)&v3 nodeInitialize];
  [(AXMImageRegistrationNode *)self _resetTranspositionHistory];
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNTranslationalImageRegistrationRequestClass())
  {
    if (getVNImageTranslationAlignmentObservationClass())
    {
      v19.receiver = self;
      v19.super_class = AXMImageRegistrationNode;
      return [(AXMVisionEngineNode *)&v19 validateVisionKitSoftLinkSymbols];
    }

    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMImageRegistrationNode *)v4 validateVisionKitSoftLinkSymbols:v12];
    }
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMImageRegistrationNode *)v4 validateVisionKitSoftLinkSymbols:v5];
    }
  }

  return 0;
}

- (id)_translationalImageRegistrationRequestForInput:(id)a3
{
  v3 = a3;
  v4 = [v3 inputType];
  switch(v4)
  {
    case 2:
      v13 = objc_alloc(getVNTranslationalImageRegistrationRequestClass());
      v6 = [v3 URL];
      v7 = [v13 initWithTargetedImageURL:v6 options:MEMORY[0x1E695E0F8]];
      goto LABEL_7;
    case 1:
      v8 = objc_alloc(getVNTranslationalImageRegistrationRequestClass());
      v6 = [v3 pixelBuffer];
      v9 = [v6 pixelBuffer];
      v10 = [v3 pixelBuffer];
      v11 = [v10 orientation];
      v12 = [v8 initWithTargetedCVPixelBuffer:v9 orientation:v11 options:MEMORY[0x1E695E0F8]];

LABEL_8:
      goto LABEL_10;
    case 0:
      v5 = objc_alloc(getVNTranslationalImageRegistrationRequestClass());
      v6 = [v3 ciImage];
      v7 = [v5 initWithTargetedCIImage:v6 options:MEMORY[0x1E695E0F8]];
LABEL_7:
      v12 = v7;
      goto LABEL_8;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = AXMImageRegistrationNode;
  [(AXMEvaluationNode *)&v39 evaluate:v6 metrics:v7];
  v8 = objc_autoreleasePoolPush();
  objc_storeStrong(&self->_previousInput, self->_currentInput);
  v9 = [v6 sourceInput];
  currentInput = self->_currentInput;
  self->_currentInput = v9;

  if (self->_previousInput)
  {
    v11 = [v6 sequenceRequestManager];
    v12 = [v11 sequenceRequestHandler];

    if (!v12)
    {
      v18 = AXMediaLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(AXMImageRegistrationNode *)v18 evaluate:v19 metrics:v20, v21, v22, v23, v24, v25];
      }

      goto LABEL_22;
    }

    v13 = [(AXMImageRegistrationNode *)self _translationalImageRegistrationRequestForInput:self->_currentInput];
    if (v13)
    {
      v14 = [(AXMPipelineContextInput *)self->_previousInput inputType];
      if (v14 == 1)
      {
        v41[0] = v13;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
        v27 = [(AXMPipelineContextInput *)self->_previousInput pixelBuffer];
        v28 = [v27 pixelBuffer];
        v29 = [(AXMPipelineContextInput *)self->_previousInput pixelBuffer];
        v38 = 0;
        v30 = [v12 performRequests:v36 onCVPixelBuffer:v28 orientation:objc_msgSend(v29 error:{"orientation"), &v38}];
        v18 = v38;

        if (v30)
        {
LABEL_16:
          v31 = [v13 results];
          v32 = [v31 firstObject];
          getVNImageTranslationAlignmentObservationClass();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v34 = [v13 results];
            v35 = [v34 firstObject];

            if (v35)
            {
              [v35 alignmentTransform];
            }

            [(AXMImageRegistrationNode *)self _recordTransposition:0.0, 0.0];
          }

          [v6 setImageRegistrationState:self->_registrationState];
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }

LABEL_12:
        v26 = AXMediaLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [AXMTraitDetectorNode evaluate:v18 metrics:v26];
        }

        goto LABEL_21;
      }

      if (!v14)
      {
        v40 = v13;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
        v16 = [(AXMPipelineContextInput *)self->_previousInput ciImage];
        v37 = 0;
        v17 = [v12 performRequests:v15 onCIImage:v16 error:&v37];
        v18 = v37;

        if (v17)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    v18 = 0;
    goto LABEL_12;
  }

  [(AXMImageRegistrationNode *)self _resetTranspositionHistory];
LABEL_23:
  objc_autoreleasePoolPop(v8);
}

- (void)_resetTranspositionHistory
{
  self->_fillingHistoryBuffer = 1;
  self->_transpositionHistoryLastRecordedIndex = 0;
  self->_transpositionHistoryCircularBuffer[8] = 0u;
  self->_transpositionHistoryCircularBuffer[9] = 0u;
  self->_transpositionHistoryCircularBuffer[6] = 0u;
  self->_transpositionHistoryCircularBuffer[7] = 0u;
  self->_transpositionHistoryCircularBuffer[4] = 0u;
  self->_transpositionHistoryCircularBuffer[5] = 0u;
  self->_transpositionHistoryCircularBuffer[2] = 0u;
  self->_transpositionHistoryCircularBuffer[3] = 0u;
  self->_transpositionHistoryCircularBuffer[0] = 0u;
  self->_transpositionHistoryCircularBuffer[1] = 0u;
  self->_registrationState = 0;
}

- (void)_resetImageRegistration
{
  previousInput = self->_previousInput;
  self->_previousInput = 0;

  currentInput = self->_currentInput;
  self->_currentInput = 0;

  [(AXMImageRegistrationNode *)self _resetTranspositionHistory];
}

- (void)_recordTransposition:(CGPoint)a3
{
  v3 = (self->_transpositionHistoryLastRecordedIndex + 1) % 0xA;
  self->_transpositionHistoryLastRecordedIndex = v3;
  self->_transpositionHistoryCircularBuffer[v3] = a3;
  fillingHistoryBuffer = self->_fillingHistoryBuffer;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = !fillingHistoryBuffer;
  }

  if (v5)
  {
    if (fillingHistoryBuffer)
    {
      v6 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    self->_fillingHistoryBuffer = 0;
  }

  v7 = 0;
  v8 = 0.0;
  do
  {
    v9 = &self->_transpositionHistoryCircularBuffer[v7];
    v11 = vld2q_f64(&v9->x);
    v11.val[0] = vsqrtq_f64(vmlaq_f64(vmulq_f64(v11.val[1], v11.val[1]), v11.val[0], v11.val[0]));
    v8 = v8 + v11.val[0].f64[0] + v11.val[0].f64[1];
    v7 += 2;
  }

  while (v7 != 10);
  v10 = v8 / 10.0;
  if (v10 >= 30.0)
  {
    if (v10 >= 70.0)
    {
      if (v10 >= 300.0)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = 5;
  }

LABEL_17:
  self->_registrationState = v6;
}

@end