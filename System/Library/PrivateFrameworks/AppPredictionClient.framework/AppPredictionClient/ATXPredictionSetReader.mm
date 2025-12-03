@interface ATXPredictionSetReader
+ (id)actionReader:(id)reader;
+ (id)bundleIdReader:(id)reader;
- (ATXPredictionSetReader)initWithData:(id)data predictedItemClass:(Class)class;
- (id)_scoredPredictionFromData:(id)data score:(float)score;
- (id)readScoredPredictionsWithLimit:(int)limit filterPredicate:(id)predicate;
@end

@implementation ATXPredictionSetReader

- (ATXPredictionSetReader)initWithData:(id)data predictedItemClass:(Class)class
{
  dataCopy = data;
  if (!dataCopy)
  {
    [ATXPredictionSetReader initWithData:a2 predictedItemClass:self];
  }

  v21.receiver = self;
  v21.super_class = ATXPredictionSetReader;
  v8 = [(ATXPredictionSetReader *)&v21 init];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = [MEMORY[0x1E69C5CE0] decompress:dataCopy];
  data = v8->_data;
  v8->_data = v9;

  if ([(NSData *)v8->_data length]>= 8)
  {
    v8->_predictedItemClass = class;
    bytes = [(NSData *)v8->_data bytes];
    v13 = bytes;
    v14 = *bytes;
    if (*bytes > -362938750)
    {
      if (v14 != -362938749)
      {
        if (v14 == -218895609)
        {
          v16 = bytes[1];
          v8->_predictionCount = v16;
          if (v16 < 0)
          {
            v20 = __atxlog_handle_default();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [ATXPredictionSetReader initWithData:v20 predictedItemClass:?];
            }

            goto LABEL_5;
          }

          v17 = (bytes + 2);
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    else if (v14 != -1813681383 && v14 != -1789354849)
    {
LABEL_16:
      v18 = __atxlog_handle_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ATXPredictionSetReader initWithData:v13 predictedItemClass:v18];
      }
    }

    v17 = 0;
    v8->_predictionCount = 0;
LABEL_20:
    v8->_perPredictionDataStart = v17;
LABEL_21:
    v11 = v8;
    goto LABEL_22;
  }

LABEL_5:
  v11 = 0;
LABEL_22:

  return v11;
}

+ (id)bundleIdReader:(id)reader
{
  readerCopy = reader;
  v4 = [[ATXPredictionSetReader alloc] initWithData:readerCopy predictedItemClass:objc_opt_class()];

  return v4;
}

+ (id)actionReader:(id)reader
{
  readerCopy = reader;
  v4 = [[ATXPredictionSetReader alloc] initWithData:readerCopy predictedItemClass:objc_opt_class()];

  return v4;
}

- (id)_scoredPredictionFromData:(id)data score:(float)score
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  predictedItemClass = self->_predictedItemClass;
  if (predictedItemClass == objc_opt_class())
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
    if (v11)
    {
      goto LABEL_5;
    }

    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXPredictionSetReader *)self _scoredPredictionFromData:dataCopy score:v11];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self->_predictedItemClass;
    v20 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v9 fromData:dataCopy error:&v20];
    v11 = v20;
    objc_autoreleasePoolPop(v8);
    if (v10)
    {

      v11 = v10;
LABEL_5:
      v12 = [ATXScoredPrediction alloc];
      *&v13 = score;
      v14 = [(ATXScoredPrediction *)v12 initWithPredictedItem:v11 score:v13];
      goto LABEL_12;
    }

    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromClass(self->_predictedItemClass);
      *buf = 138412802;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      v25 = 2112;
      v26 = v11;
      _os_log_fault_impl(&dword_1BF549000, v15, OS_LOG_TYPE_FAULT, "%@ - error unarchiving action with predictedItemClass: %@, err: %@", buf, 0x20u);
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (id)readScoredPredictionsWithLimit:(int)limit filterPredicate:(id)predicate
{
  predicateCopy = predicate;
  perPredictionDataStart = self->_perPredictionDataStart;
  bytes = [(NSData *)self->_data bytes];
  v8 = [(NSData *)self->_data length];
  if (self->_predictionCount >= limit)
  {
    predictionCount = limit;
  }

  else
  {
    predictionCount = self->_predictionCount;
  }

  v10 = predictionCount & ~(predictionCount >> 31);
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  if (predictionCount >= 1 && self->_predictionCount >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = ATXCacheReadData(&perPredictionDataStart, bytes + v8);
      __dst = 0;
      ATXCacheReadFloats(&perPredictionDataStart, bytes + v8, &__dst, 1);
      LODWORD(v15) = __dst;
      v16 = [(ATXPredictionSetReader *)self _scoredPredictionFromData:v14 score:v15];
      if (v16)
      {
        if (!predicateCopy || [predicateCopy evaluateWithObject:v16])
        {
          [v11 addObject:v16];
          if ([v11 count] >= v10)
          {
            break;
          }
        }
      }

      objc_autoreleasePoolPop(v13);
      if (++v12 >= self->_predictionCount)
      {
        goto LABEL_14;
      }
    }

    objc_autoreleasePoolPop(v13);
  }

LABEL_14:

  return v11;
}

- (void)initWithData:(uint64_t)a1 predictedItemClass:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXPredictionSet.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"data"}];
}

- (void)initWithData:(int *)a1 predictedItemClass:(NSObject *)a2 .cold.2(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Invalid prediction count: %i", v3, 8u);
}

- (void)initWithData:(int *)a1 predictedItemClass:(NSObject *)a2 .cold.3(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Unrecognized magic number: %u", v3, 8u);
}

- (void)_scoredPredictionFromData:(NSObject *)a3 score:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_fault_impl(&dword_1BF549000, a3, OS_LOG_TYPE_FAULT, "%@ - error decoding app UTF-8 data: %@", &v7, 0x16u);
}

@end