@interface ATXAppPredictorPredictionChunks
- (ATXAppPredictorPredictionChunks)initWithPredictionSetChunk:(id)a3 feedbackStateChunk:(id)a4;
- (id)chunkArray;
- (id)joinChunks;
@end

@implementation ATXAppPredictorPredictionChunks

- (ATXAppPredictorPredictionChunks)initWithPredictionSetChunk:(id)a3 feedbackStateChunk:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = ATXAppPredictorPredictionChunks;
    v11 = [(ATXAppPredictorPredictionChunks *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_predictionSetChunk, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
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
  v2 = [(ATXAppPredictorPredictionChunks *)self chunkArray];
  v3 = ATXCacheFileJoinChunks();

  return v3;
}

@end