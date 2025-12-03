@interface ATXGuardedActionPredictionContainerData
- (ATXGuardedActionPredictionContainerData)initWithScoredAction:(id)action slotSet:(id)set score:(float)score;
@end

@implementation ATXGuardedActionPredictionContainerData

- (ATXGuardedActionPredictionContainerData)initWithScoredAction:(id)action slotSet:(id)set score:(float)score
{
  actionCopy = action;
  setCopy = set;
  v14.receiver = self;
  v14.super_class = ATXGuardedActionPredictionContainerData;
  v11 = [(ATXGuardedActionPredictionContainerData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scoredAction, action);
    objc_storeStrong(&v12->_slotSet, set);
    v12->_score = score;
  }

  return v12;
}

@end