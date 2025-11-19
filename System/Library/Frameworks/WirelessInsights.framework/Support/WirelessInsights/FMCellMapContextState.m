@interface FMCellMapContextState
- (FMCellMapContextState)initWithStartTime:(id)a3 subscriptionID:(id)a4;
@end

@implementation FMCellMapContextState

- (FMCellMapContextState)initWithStartTime:(id)a3 subscriptionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = FMCellMapContextState;
  v8 = [(FMContextState *)&v17 initWithStartTime:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subscriptionID, a4);
    lastRegistrationState = v9->_lastRegistrationState;
    v9->_lastRegistrationState = 0;

    lastCellMapNodeObjectID = v9->_lastCellMapNodeObjectID;
    v9->_lastCellMapNodeObjectID = 0;

    lastGCI = v9->_lastGCI;
    v9->_lastGCI = 0;

    v13 = objc_alloc_init(NSMutableArray);
    pastPredictions = v9->_pastPredictions;
    v9->_pastPredictions = v13;

    v15 = v9;
  }

  return v9;
}

@end