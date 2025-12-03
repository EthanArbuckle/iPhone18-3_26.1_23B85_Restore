@interface ATXAppPredictorPredictionChunks
- (ATXAppPredictorPredictionChunks)initWithPredictionSetChunk:(id)chunk feedbackStateChunk:(id)stateChunk;
- (id)chunkArray;
- (id)joinChunks;
@end

@implementation ATXAppPredictorPredictionChunks

- (ATXAppPredictorPredictionChunks)initWithPredictionSetChunk:(id)chunk feedbackStateChunk:(id)stateChunk
{
  chunkCopy = chunk;
  stateChunkCopy = stateChunk;
  v9 = stateChunkCopy;
  selfCopy = 0;
  if (chunkCopy && stateChunkCopy)
  {
    v14.receiver = self;
    v14.super_class = ATXAppPredictorPredictionChunks;
    v11 = [(ATXAppPredictorPredictionChunks *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_predictionSetChunk, chunk);
      objc_storeStrong(p_isa + 2, stateChunk);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)chunkArray
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:self->_predictionSetChunk];
  v4 = v3;
  if (self->_feedbackStateChunk)
  {
    [v3 addObject:?];
  }

  return v4;
}

- (id)joinChunks
{
  chunkArray = [(ATXAppPredictorPredictionChunks *)self chunkArray];
  v3 = ATXCacheFileJoinChunks();

  return v3;
}

@end