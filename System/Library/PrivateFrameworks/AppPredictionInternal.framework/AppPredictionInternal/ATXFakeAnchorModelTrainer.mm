@interface ATXFakeAnchorModelTrainer
- (ATXFakeAnchorModelTrainer)init;
- (id)trainAnchorModel:(id)a3;
- (void)setTrainingResultsForAnchor:(id)a3 results:(id)a4;
@end

@implementation ATXFakeAnchorModelTrainer

- (ATXFakeAnchorModelTrainer)init
{
  v9.receiver = self;
  v9.super_class = ATXFakeAnchorModelTrainer;
  v2 = [(ATXFakeAnchorModelTrainer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_trained = 0;
    v4 = objc_opt_new();
    trainedAnchors = v3->_trainedAnchors;
    v3->_trainedAnchors = v4;

    v6 = objc_opt_new();
    trainingResultsForAnchor = v3->_trainingResultsForAnchor;
    v3->_trainingResultsForAnchor = v6;
  }

  return v3;
}

- (id)trainAnchorModel:(id)a3
{
  self->_trained = 1;
  trainedAnchors = self->_trainedAnchors;
  v5 = a3;
  v6 = [v5 anchorTypeString];
  [(NSMutableArray *)trainedAnchors addObject:v6];

  trainingResultsForAnchor = self->_trainingResultsForAnchor;
  v8 = [v5 anchorTypeString];

  v9 = [(NSMutableDictionary *)trainingResultsForAnchor objectForKey:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = v10;

  return v10;
}

- (void)setTrainingResultsForAnchor:(id)a3 results:(id)a4
{
  trainingResultsForAnchor = self->_trainingResultsForAnchor;
  v6 = a4;
  v7 = [a3 anchorTypeString];
  [(NSMutableDictionary *)trainingResultsForAnchor setObject:v6 forKey:v7];
}

@end