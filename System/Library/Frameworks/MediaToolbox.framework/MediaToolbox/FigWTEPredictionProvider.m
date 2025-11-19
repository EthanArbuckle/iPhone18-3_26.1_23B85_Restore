@interface FigWTEPredictionProvider
- (FigWTEPredictionProvider)initWithError:(id *)a3;
- (id)copyWTEPredictionStats;
- (void)dealloc;
- (void)servicePredictionProvider:(id)a3 didUpdateServicePredictions:(id)a4;
- (void)withPredictionProviderMutex:(id)a3;
@end

@implementation FigWTEPredictionProvider

- (void)withPredictionProviderMutex:(id)a3
{
  v3 = a3;
  if (FigSimpleMutexLock())
  {
    [FigWTEPredictionProvider withPredictionProviderMutex:];
  }

  v3[2]();
  if (FigSimpleMutexUnlock())
  {
    [FigWTEPredictionProvider withPredictionProviderMutex:];
  }
}

- (void)servicePredictionProvider:(id)a3 didUpdateServicePredictions:(id)a4
{
  v5 = a4;
  v6 = [v5 count];
  if (v6)
  {
    v7 = [v5 objectAtIndexedSubscript:v6 - 1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__FigWTEPredictionProvider_servicePredictionProvider_didUpdateServicePredictions___block_invoke;
    v9[3] = &unk_1E7491400;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [(FigWTEPredictionProvider *)self withPredictionProviderMutex:v9];
  }
}

void __82__FigWTEPredictionProvider_servicePredictionProvider_didUpdateServicePredictions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 24);
  v4 = (v2 + 24);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
    v6 = [*(*(a1 + 32) + 24) predictedStartTime];
    [v6 timeIntervalSinceNow];
    *(*(a1 + 32) + 32) = (v7 * 1000.0);

    ++*(*(a1 + 32) + 40);
  }
}

- (id)copyWTEPredictionStats
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__FigWTEPredictionProvider_copyWTEPredictionStats__block_invoke;
  v5[3] = &unk_1E74913D8;
  v5[4] = self;
  v5[5] = &v6;
  [(FigWTEPredictionProvider *)self withPredictionProviderMutex:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (FigWTEPredictionProvider)initWithError:(id *)a3
{
  v11.receiver = self;
  v11.super_class = FigWTEPredictionProvider;
  cf = 0;
  v4 = [(FigWTEPredictionProvider *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E6985B28]);
    predictionProvider = v4->predictionProvider;
    v4->predictionProvider = v5;

    v7 = v4->predictionProvider;
    if (!v7 || ([(WISServicePredictionProvider *)v7 setDelegate:v4], [(WISServicePredictionProvider *)v4->predictionProvider startWithCompletionHandler:&__block_literal_global_301], v8 = FigReentrantMutexCreate(), (v4->predictionProviderMutex = v8) == 0))
    {
      FigCreateErrorForOSStatus(4294954510, &cf);
    }
  }

  v9 = cf;
  if (cf)
  {
    v9 = CFRetain(cf);
  }

  *a3 = v9;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

- (void)dealloc
{
  [(WISServicePredictionProvider *)self->predictionProvider stopWithCompletionHandler:&__block_literal_global_303];
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = FigWTEPredictionProvider;
  [(FigWTEPredictionProvider *)&v3 dealloc];
}

void __50__FigWTEPredictionProvider_copyWTEPredictionStats__block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(*(a1 + 32) + 24);
    if (v2)
    {
      v3 = [v2 predictedStartTime];
      OUTLINED_FUNCTION_9_54();

      v4 = [MEMORY[0x1E696AD98] numberWithLong:*(*(a1 + 32) + 32)];
      OUTLINED_FUNCTION_9_54();

      [OUTLINED_FUNCTION_1_146() predictedDuration];
      v6 = [v4 numberWithUnsignedLongLong:1000 * v5];
      OUTLINED_FUNCTION_9_54();

      v7 = [v6 numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_1_146(), "servicePredictionType")}];
      OUTLINED_FUNCTION_9_54();

      [OUTLINED_FUNCTION_1_146() predictionConfidence];
      v8 = [OUTLINED_FUNCTION_4_111() numberWithInt:?];
      OUTLINED_FUNCTION_9_54();

      [OUTLINED_FUNCTION_1_146() startTimeConfidence];
      v9 = [OUTLINED_FUNCTION_4_111() numberWithInt:?];
      OUTLINED_FUNCTION_9_54();

      [OUTLINED_FUNCTION_1_146() durationConfidence];
      v10 = [OUTLINED_FUNCTION_4_111() numberWithInt:?];
      OUTLINED_FUNCTION_9_54();

      v11 = [v10 numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_1_146(), "servicePredictionSource")}];
      OUTLINED_FUNCTION_9_54();

      v12 = *(a1 + 32);
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v14 = [MEMORY[0x1E696AD98] numberWithInt:*(v12 + 40)];
      [v13 setValue:v14 forKey:@"numberOfPredictions"];
    }
  }
}

- (void)withPredictionProviderMutex:.cold.1()
{
  OUTLINED_FUNCTION_187();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_403();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)withPredictionProviderMutex:.cold.2()
{
  OUTLINED_FUNCTION_187();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_403();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end