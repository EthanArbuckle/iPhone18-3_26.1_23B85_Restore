@interface AXMEvaluationNode
+ (BOOL)isANEDeviceAvailable;
+ (CGSize)preferredModelInputSize;
+ (void)configureForRunningOnANEIfPossibleWithRequest:(id)a3;
- (AXMEvaluationNode)initWithCoder:(id)a3;
- (BOOL)evaluateRequests:(id)a3 withContext:(id)a4 requestHandlerOptions:(id)a5 metrics:(id)a6 error:(id *)a7;
- (id)_diagnosticNameForRequests:(id)a3 metrics:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)nodeInitialize;
@end

@implementation AXMEvaluationNode

- (AXMEvaluationNode)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AXMEvaluationNode;
  v5 = [(AXMVisionEngineNode *)&v7 initWithCoder:v4];
  if (v5)
  {
    -[AXMEvaluationNode setPriority:](v5, "setPriority:", [v4 decodeIntegerForKey:@"priority"]);
    if (![(AXMEvaluationNode *)v5 priority])
    {
      -[AXMEvaluationNode setPriority:](v5, "setPriority:", [objc_opt_class() defaultPriority]);
    }

    [v4 decodeDoubleForKey:@"minimumConfidence"];
    [(AXMEvaluationNode *)v5 setMinimumConfidence:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXMEvaluationNode;
  v4 = a3;
  [(AXMVisionEngineNode *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[AXMEvaluationNode priority](self forKey:{"priority", v5.receiver, v5.super_class), @"priority"}];
  [(AXMEvaluationNode *)self minimumConfidence];
  [v4 encodeDouble:@"minimumConfidence" forKey:?];
}

- (void)nodeInitialize
{
  v3.receiver = self;
  v3.super_class = AXMEvaluationNode;
  [(AXMVisionEngineNode *)&v3 nodeInitialize];
  self->_priority = [objc_opt_class() defaultPriority];
  self->_effectivePriority = 0;
  self->_minimumConfidence = 0.0;
}

+ (CGSize)preferredModelInputSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)isANEDeviceAvailable
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = MLAllComputeDevicesSoft();
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;

          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 != 0;
}

+ (void)configureForRunningOnANEIfPossibleWithRequest:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = MLAllComputeDevicesSoft();
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    v7 = v4;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v12 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;

        v7 = v11;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);

  if (v7)
  {
    [v3 setComputeDevice:v7 forComputeStage:{*MEMORY[0x1E69848C8], v12}];
LABEL_13:
  }
}

- (BOOL)evaluateRequests:(id)a3 withContext:(id)a4 requestHandlerOptions:(id)a5 metrics:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = AXMediaLogCommon();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AE37B000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ImageCaptionGeneration", "", buf, 2u);
  }

  if (v14)
  {
    [v13 visionImageRequestHandlerWithOptions:v14];
  }

  else
  {
    [v13 visionImageRequestHandler];
  }
  v17 = ;
  if (v17)
  {
    [v12 enumerateObjectsUsingBlock:&__block_literal_global_27];
    *buf = 0;
    v32 = buf;
    v33 = 0x2020000000;
    v34 = 0;
    v18 = [(AXMEvaluationNode *)self _diagnosticNameForRequests:v12 metrics:v15];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __86__AXMEvaluationNode_evaluateRequests_withContext_requestHandlerOptions_metrics_error___block_invoke_2;
    v27[3] = &unk_1E7A1E3E8;
    v30 = buf;
    v28 = v17;
    v29 = v12;
    v19 = [v15 measure:v18 tryExecute:v27];

    if ((v32[24] & 1) == 0)
    {
      v20 = AXMediaLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AXMTraitDetectorNode evaluate:v19 metrics:v20];
      }

      if (a7)
      {
        v21 = v19;
        *a7 = v19;
      }
    }

    v22 = AXMediaLogCommon();
    if (os_signpost_enabled(v22))
    {
      *v26 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE37B000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ImageCaptionGeneration", "", v26, 2u);
    }

    v23 = v32[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v24 = AXMediaLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [AXMEvaluationNode evaluateRequests:v24 withContext:? requestHandlerOptions:? metrics:? error:?];
    }

    v23 = 0;
  }

  return v23 & 1;
}

id __86__AXMEvaluationNode_evaluateRequests_withContext_requestHandlerOptions_metrics_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  v4 = [v2 performRequests:v3 error:&v6];
  result = v6;
  *(*(a1[6] + 8) + 24) = v4;
  return result;
}

- (id)_diagnosticNameForRequests:(id)a3 metrics:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([a4 measurementsEnabled])
  {
    v6 = [MEMORY[0x1E696AD60] stringWithString:@"Vision:"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          [(__CFString *)v6 appendFormat:@"%@|", v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = @"VN PerformRequests";
  }

  return v6;
}

@end