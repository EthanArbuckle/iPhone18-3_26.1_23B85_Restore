@interface ATXPredictionSetBuilder
- (ATXPredictionSetBuilder)init;
- (id)finish;
- (void)finish;
- (void)recordPrediction:(id)a3 score:(float)a4;
@end

@implementation ATXPredictionSetBuilder

- (id)finish
{
  if (self->_finished)
  {
    [(ATXPredictionSetBuilder *)a2 finish];
  }

  self->_finished = 1;
  predictionCount = self->_predictionCount;
  *([(NSMutableData *)self->_data mutableBytes]+ 4) = predictionCount;
  v4 = [MEMORY[0x1E69C5CE0] fastCompress:self->_data];
  data = self->_data;
  self->_data = 0;

  return v4;
}

- (ATXPredictionSetBuilder)init
{
  v6.receiver = self;
  v6.super_class = ATXPredictionSetBuilder;
  v2 = [(ATXPredictionSetBuilder *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8];
    data = v2->_data;
    v2->_data = v3;

    *[(NSMutableData *)v2->_data mutableBytes]= 4076071687;
    v2->_finished = 0;
  }

  return v2;
}

- (void)recordPrediction:(id)a3 score:(float)a4
{
  v7 = a3;
  v13 = a4;
  if (self->_finished)
  {
    [ATXPredictionSetBuilder recordPrediction:a2 score:self];
  }

  ++self->_predictionCount;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = objc_autoreleasePoolPush();
  if (isKindOfClass)
  {
    v10 = [v7 dataUsingEncoding:4];
  }

  else
  {
    v12 = 0;
    v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v12];
    v11 = v12;
    if (!v10)
    {
      [(ATXPredictionSetBuilder *)a2 recordPrediction:v11 score:?];
    }
  }

  objc_autoreleasePoolPop(v9);
  ATXCacheAppendData(self->_data, v10);
  ATXCacheAppendFloats(self->_data, &v13, 1);
}

- (void)recordPrediction:(uint64_t)a1 score:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXPredictionSet.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"!_finished"}];
}

- (void)recordPrediction:(uint64_t)a3 score:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ATXPredictionSet.m" lineNumber:62 description:{@"Archiving error: %@", a3}];
}

- (void)finish
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXPredictionSet.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"!_finished"}];
}

@end