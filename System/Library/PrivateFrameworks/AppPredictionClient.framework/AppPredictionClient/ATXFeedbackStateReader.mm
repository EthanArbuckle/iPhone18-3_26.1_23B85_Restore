@interface ATXFeedbackStateReader
+ (id)numberKeyWithData:(id)a3;
+ (id)stringKeyWithData:(id)a3;
- (ATXFeedbackStateReader)initWithData:(id)a3 predictedItemKeyClass:(Class)a4;
- (void)enumerateApps:(id)a3;
@end

@implementation ATXFeedbackStateReader

+ (id)stringKeyWithData:(id)a3
{
  v3 = a3;
  v4 = [[ATXFeedbackStateReader alloc] initWithData:v3 predictedItemKeyClass:objc_opt_class()];

  return v4;
}

+ (id)numberKeyWithData:(id)a3
{
  v3 = a3;
  v4 = [[ATXFeedbackStateReader alloc] initWithData:v3 predictedItemKeyClass:objc_opt_class()];

  return v4;
}

- (ATXFeedbackStateReader)initWithData:(id)a3 predictedItemKeyClass:(Class)a4
{
  v6 = a3;
  if (!v6)
  {
    [ATXFeedbackStateReader initWithData:predictedItemKeyClass:];
  }

  v23.receiver = self;
  v23.super_class = ATXFeedbackStateReader;
  v7 = [(ATXFeedbackStateReader *)&v23 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

  v7->_predictedItemKeyClass = a4;
  v9 = [MEMORY[0x1E69C5CE0] decompress:v6];
  data = v8->_data;
  v8->_data = v9;

  if ([(NSData *)v8->_data length]< 0x20)
  {
    goto LABEL_5;
  }

  v12 = [(NSData *)v8->_data bytes];
  v13 = [(NSData *)v8->_data bytes];
  if (*v12 == 2146895485)
  {
    goto LABEL_15;
  }

  if (*v12 != 466107951)
  {
    v20 = __atxlog_handle_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXFeedbackStateReader initWithData:v12 predictedItemKeyClass:v20];
    }

LABEL_15:
    v19 = 0;
    v8->_predictionCount = 0;
    goto LABEL_16;
  }

  if (*(v12 + 20) == 828)
  {
    v14 = *(v12 + 16);
    v8->_predictionCount = v14;
    if (v14 < 0)
    {
      v22 = __atxlog_handle_default();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ATXFeedbackStateReader initWithData:v22 predictedItemKeyClass:?];
      }

      goto LABEL_5;
    }

    v15 = v13;
    v8->_assetVersion = *(v12 + 8);
    if ([(NSData *)v8->_data length]>= *(v12 + 24) + 32)
    {
      v16 = v15 + 32;
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v16 length:*(v12 + 24) encoding:4];
      abGroup = v8->_abGroup;
      v8->_abGroup = v17;

      v19 = (v16 + *(v12 + 24));
LABEL_16:
      v8->_perPredictionDataStart = v19;
LABEL_17:
      v11 = v8;
      goto LABEL_18;
    }
  }

LABEL_5:
  v11 = 0;
LABEL_18:

  return v11;
}

- (void)enumerateApps:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  data = self->_data;
  perPredictionDataStart = self->_perPredictionDataStart;
  v6 = [(NSData *)data bytes];
  v7 = [(NSData *)self->_data length];
  __dst = 0.0;
  v21 = 0;
  if (self->_predictionCount >= 1)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0x1E696A000uLL;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      predictedItemKeyClass = self->_predictedItemKeyClass;
      if (predictedItemKeyClass == objc_opt_class())
      {
        break;
      }

      v13 = self->_predictedItemKeyClass;
      if (v13 == objc_opt_class())
      {
        v15 = [*(v10 + 3480) numberWithInteger:{ATXCacheReadInteger(&perPredictionDataStart, v6 + v8)}];
        goto LABEL_8;
      }

      v14 = 0;
LABEL_9:
      ATXCacheReadFloats(&perPredictionDataStart, v6 + v8, &__dst, 1);
      ATXCacheReadFloats(&perPredictionDataStart, v6 + v8, v24, 828);
      UnsignedInteger = ATXCacheReadUnsignedInteger(&perPredictionDataStart, v6 + v8);
      Boolean = ATXCacheReadBoolean(&perPredictionDataStart, v6 + v8);
      v18 = ATXCacheReadBoolean(&perPredictionDataStart, v6 + v8);
      if (v14)
      {
        v4[2](v4, &v21, v14, UnsignedInteger, v24, Boolean, v18, __dst);
      }

      v19 = v21;

      objc_autoreleasePoolPop(v11);
      v20 = v19 == 1;
      v10 = 0x1E696A000;
      if (!v20 && ++v9 < self->_predictionCount)
      {
        continue;
      }

      goto LABEL_13;
    }

    v15 = ATXCacheReadString(&perPredictionDataStart, v6 + v8);
LABEL_8:
    v14 = v15;
    goto LABEL_9;
  }

LABEL_13:
}

- (void)initWithData:predictedItemKeyClass:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)initWithData:(int *)a1 predictedItemKeyClass:(NSObject *)a2 .cold.2(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Feedback: Invalid app count: %i", v3, 8u);
}

- (void)initWithData:(int *)a1 predictedItemKeyClass:(NSObject *)a2 .cold.3(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Feedback: Unrecognized magic number: %u", v3, 8u);
}

@end