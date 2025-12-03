@interface ATXFeedbackStateBuilder
- (ATXFeedbackStateBuilder)initWithABGroup:(id)group assetVersion:(int64_t)version;
- (id)finish;
- (void)finish;
- (void)recordPrediction:(id)prediction actionHash:(unint64_t)hash totalScore:(float)score scoreInputs:(const float *)inputs isMediumConfidenceForBlendingLayer:(BOOL)layer isHighConfidenceForBlendingLayer:(BOOL)blendingLayer;
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

- (ATXFeedbackStateBuilder)initWithABGroup:(id)group assetVersion:(int64_t)version
{
  groupCopy = group;
  if (!groupCopy)
  {
    [ATXFeedbackStateBuilder initWithABGroup:assetVersion:];
  }

  v14.receiver = self;
  v14.super_class = ATXFeedbackStateBuilder;
  v7 = [(ATXFeedbackStateBuilder *)&v14 init];
  if (v7)
  {
    uTF8String = [groupCopy UTF8String];
    v9 = strlen(uTF8String);
    v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v9 + 32];
    data = v7->_data;
    v7->_data = v10;

    mutableBytes = [(NSMutableData *)v7->_data mutableBytes];
    *mutableBytes = 466107951;
    *(mutableBytes + 8) = version;
    *(mutableBytes + 16) = 0x33C00000000;
    *(mutableBytes + 24) = v9;
    *(mutableBytes + 28) = 0;
    memcpy([(NSMutableData *)v7->_data mutableBytes]+ 32, uTF8String, v9);
    v7->_finished = 0;
  }

  return v7;
}

- (void)recordPrediction:(id)prediction actionHash:(unint64_t)hash totalScore:(float)score scoreInputs:(const float *)inputs isMediumConfidenceForBlendingLayer:(BOOL)layer isHighConfidenceForBlendingLayer:(BOOL)blendingLayer
{
  predictionCopy = prediction;
  scoreCopy = score;
  if (self->_finished)
  {
    [ATXFeedbackStateBuilder recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:];
    if (inputs)
    {
      goto LABEL_3;
    }
  }

  else if (inputs)
  {
    goto LABEL_3;
  }

  [ATXFeedbackStateBuilder recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:];
LABEL_3:
  ++self->_predictionCount;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ATXCacheAppendString(self->_data, predictionCopy);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [ATXFeedbackStateBuilder recordPrediction:actionHash:totalScore:scoreInputs:isMediumConfidenceForBlendingLayer:isHighConfidenceForBlendingLayer:];
    }

    ATXCacheAppendInteger(self->_data, [predictionCopy integerValue]);
  }

  ATXCacheAppendFloats(self->_data, &scoreCopy, 1);
  ATXCacheAppendFloats(self->_data, inputs, 828);
  ATXCacheAppendUnsignedInteger(self->_data, hash);
  ATXCacheAppendBoolean(self->_data, layer);
  ATXCacheAppendBoolean(self->_data, blendingLayer);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"!_finished" object:? file:? lineNumber:? description:?];
}

@end