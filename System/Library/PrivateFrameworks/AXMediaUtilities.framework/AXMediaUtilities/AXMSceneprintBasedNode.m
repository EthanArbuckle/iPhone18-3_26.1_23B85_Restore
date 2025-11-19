@interface AXMSceneprintBasedNode
- (void)evaluate:(id)a3 metrics:(id)a4;
@end

@implementation AXMSceneprintBasedNode

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = AXMSceneprintBasedNode;
  [(AXMEvaluationNode *)&v16 evaluate:v6 metrics:v7];
  v8 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__AXMSceneprintBasedNode_evaluate_metrics___block_invoke;
  v11[3] = &unk_1E7A1DEE0;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v9 createSceneObservationIfNilWithBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v8);
}

id __43__AXMSceneprintBasedNode_evaluate_metrics___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (getVNCreateSceneprintRequestClass())
  {
    v2 = objc_alloc_init(getVNCreateSceneprintRequestClass());
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [WeakRetained evaluateRequests:v4 withContext:*(a1 + 32) requestHandlerOptions:0 metrics:*(a1 + 40) error:0];

    v5 = [v2 results];
    v6 = [v5 firstObject];
  }

  else
  {
    v2 = AXMediaLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __43__AXMSceneprintBasedNode_evaluate_metrics___block_invoke_cold_1(v2);
    }

    v6 = 0;
  }

  return v6;
}

@end