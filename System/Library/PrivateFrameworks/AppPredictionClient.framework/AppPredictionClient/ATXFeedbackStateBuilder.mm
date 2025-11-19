@interface ATXFeedbackStateBuilder
- (ATXFeedbackStateBuilder)initWithABGroup:(id)a3 assetVersion:(int64_t)a4;
- (id)finish;
- (void)finish;
- (void)recordPrediction:(id)a3 actionHash:(unint64_t)a4 totalScore:(float)a5 scoreInputs:(const float *)a6 isMediumConfidenceForBlendingLayer:(BOOL)a7 isHighConfidenceForBlendingLayer:(BOOL)a8;
@end

@implementation ATXFeedbackStateBuilder

- (id)finish
{
  if (self->_finished)
  {
    [ATXFeedbackStateBuilder finish];
  }

  self->_finished = 1;
  predictionCount = self->_predictionCount;
  *([(NSMutableData *)self->_data mutableBytes]+ 16) = predictionCount;
  v4 = [MEMORY[0x1E69C5CE0] fastCompress:self->_data];
  data = self->_data;
  self->_data = 0;

  return v4;
}

- (ATXFeedbackStateBuilder)initWithABGroup:(id)a3 assetVersion:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    [ATXFeedbackStateBuilder initWithABGroup:assetVersion:];
  }

  v14.receiver = self;
  v14.super_class = ATXFeedbackStateBuilder;
  v7 = [(ATXFeedbackStateBuilder *)&v14 init];
  if (v7)
  {
    v8 = [v6 UTF8String];
    v9 = strlen(v8);
    v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v9 + 32];
    data = v7->_data;
    v7->_data = v10;

    v12 = [(NSMutableData *)v7->_data mutableBytes];
    *v12 = 466107951;
    *(v12 + 8) = a4;
    *(v12 + 16) = 0x33C00000000;
    *(v12 + 24) = v9;
    *(v12 + 28) = 0;
    memcpy([(NSMutableData *)v7->_data mutableBytes]+ 32, v8, v9);
    v7->_finished = 0;
  }

  return v7;
}

- (void)recordPrediction:(id)a3 actionHash:(unint64_t)a4 totalScore:(float)a5 scoreInputs:(const float *)a6 isMediumConfidenceForBlendingLayer:(BOOL)a7 isHighConfidenceForBlendingLayer:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  if (self->_finished)
  {
    [ATXFeedbackStateBuilder recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:];
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else if (a6)
  {
    goto LABEL_3;
  }

  [ATXFeedbackStateBuilder recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:];
LABEL_3:
  ++self->_predictionCount;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ATXCacheAppendString(self->_data, v14);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [ATXFeedbackStateBuilder recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:];
    }

    ATXCacheAppendInteger(self->_data, [v14 integerValue]);
  }

  ATXCacheAppendFloats(self->_data, &v15, 1);
  ATXCacheAppendFloats(self->_data, a6, 828);
  ATXCacheAppendUnsignedInteger(self->_data, a4);
  ATXCacheAppendBoolean(self->_data, a7);
  ATXCacheAppendBoolean(self->_data, a8);
}

- (void)initWithABGroup:assetVersion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"abGroup" object:? file:? lineNumber:? description:?];
}

- (void)recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"!_finished" object:? file:? lineNumber:? description:?];
}

- (void)recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"scoreInputs" object:? file:? lineNumber:? description:?];
}

- (void)recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:.cold.3()
{
  OUTLINED_FUNCTION_5();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  __break(1u);
}

- (void)finish
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"!_finished" object:? file:? lineNumber:? description:?];
}

@end