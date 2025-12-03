@interface ATXFakeAnchorModelTrainer
- (ATXFakeAnchorModelTrainer)init;
- (id)trainAnchorModel:(id)model;
- (void)setTrainingResultsForAnchor:(id)anchor results:(id)results;
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

- (id)trainAnchorModel:(id)model
{
  self->_trained = 1;
  trainedAnchors = self->_trainedAnchors;
  modelCopy = model;
  anchorTypeString = [modelCopy anchorTypeString];
  [(NSMutableArray *)trainedAnchors addObject:anchorTypeString];

  trainingResultsForAnchor = self->_trainingResultsForAnchor;
  anchorTypeString2 = [modelCopy anchorTypeString];

  v9 = [(NSMutableDictionary *)trainingResultsForAnchor objectForKey:anchorTypeString2];

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

- (void)setTrainingResultsForAnchor:(id)anchor results:(id)results
{
  trainingResultsForAnchor = self->_trainingResultsForAnchor;
  resultsCopy = results;
  anchorTypeString = [anchor anchorTypeString];
  [(NSMutableDictionary *)trainingResultsForAnchor setObject:resultsCopy forKey:anchorTypeString];
}

@end