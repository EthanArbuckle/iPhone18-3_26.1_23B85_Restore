@interface FMCongestionContextState
- (FMCongestionContextState)initWithStartTime:(id)a3 subscriptionID:(id)a4;
@end

@implementation FMCongestionContextState

- (FMCongestionContextState)initWithStartTime:(id)a3 subscriptionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = FMCongestionContextState;
  v8 = [(FMContextState *)&v18 initWithStartTime:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subscriptionID, a4);
    v10 = objc_alloc_init(NSMutableArray);
    prevCells = v9->_prevCells;
    v9->_prevCells = v10;

    v12 = objc_alloc_init(NSMutableArray);
    activeCongestionAreas = v9->_activeCongestionAreas;
    v9->_activeCongestionAreas = v12;

    v14 = objc_alloc_init(NSMutableArray);
    congestionPredictions = v9->_congestionPredictions;
    v9->_congestionPredictions = v14;

    v16 = v9;
  }

  return v9;
}

@end