@interface ATXGuardedActionPredictionContainerData
- (ATXGuardedActionPredictionContainerData)initWithScoredAction:(id)a3 slotSet:(id)a4 score:(float)a5;
@end

@implementation ATXGuardedActionPredictionContainerData

- (ATXGuardedActionPredictionContainerData)initWithScoredAction:(id)a3 slotSet:(id)a4 score:(float)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ATXGuardedActionPredictionContainerData;
  v11 = [(ATXGuardedActionPredictionContainerData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scoredAction, a3);
    objc_storeStrong(&v12->_slotSet, a4);
    v12->_score = a5;
  }

  return v12;
}

@end