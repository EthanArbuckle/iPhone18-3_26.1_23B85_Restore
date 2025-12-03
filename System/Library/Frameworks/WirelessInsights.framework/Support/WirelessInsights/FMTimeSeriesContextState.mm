@interface FMTimeSeriesContextState
- (FMTimeSeriesContextState)initWithStartTime:(id)time contextUUID:(id)d subscriptionID:(id)iD homePLMN:(id)n;
@end

@implementation FMTimeSeriesContextState

- (FMTimeSeriesContextState)initWithStartTime:(id)time contextUUID:(id)d subscriptionID:(id)iD homePLMN:(id)n
{
  dCopy = d;
  iDCopy = iD;
  nCopy = n;
  v29.receiver = self;
  v29.super_class = FMTimeSeriesContextState;
  v14 = [(FMContextState *)&v29 initWithStartTime:time];
  if (v14)
  {
    v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    objc_storeStrong(&v14->_contextUUID, d);
    objc_storeStrong(&v14->_subscriptionID, iD);
    objc_storeStrong(&v14->_homePLMN, n);
    v16 = objc_alloc_init(NSMutableArray);
    events = v14->_events;
    v14->_events = v16;

    v18 = objc_alloc_init(NSMutableArray);
    cellChanges = v14->_cellChanges;
    v14->_cellChanges = v18;

    curSignalStrengthBars = v14->_curSignalStrengthBars;
    v14->_curSignalStrengthBars = 0;

    curRegistrationState = v14->_curRegistrationState;
    v14->_curRegistrationState = 0;

    v22 = objc_alloc_init(NSMutableDictionary);
    activeAnomalies = v14->_activeAnomalies;
    v14->_activeAnomalies = v22;

    mostRecentPredictions = v14->_mostRecentPredictions;
    v14->_mostRecentPredictions = &__NSArray0__struct;

    v25 = objc_alloc_init(NSMutableArray);
    activePredictions = v14->_activePredictions;
    v14->_activePredictions = v25;

    [(FMTimeSeriesContextState *)v14 setEventsLastChangedTimestamp:v15];
    [(FMTimeSeriesContextState *)v14 setLastPredictionsTimestamp:v15];
    v27 = v14;
  }

  return v14;
}

@end