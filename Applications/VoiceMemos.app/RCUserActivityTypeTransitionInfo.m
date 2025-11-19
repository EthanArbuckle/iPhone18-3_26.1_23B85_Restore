@interface RCUserActivityTypeTransitionInfo
- (RCUserActivityTypeTransitionInfo)initWithToActivityType:(int64_t)a3 toSubType:(int64_t)a4 fromActivityType:(int64_t)a5 fromSubType:(int64_t)a6 displayModel:(id)a7 waveformDataSource:(id)a8 composition:(id)a9;
@end

@implementation RCUserActivityTypeTransitionInfo

- (RCUserActivityTypeTransitionInfo)initWithToActivityType:(int64_t)a3 toSubType:(int64_t)a4 fromActivityType:(int64_t)a5 fromSubType:(int64_t)a6 displayModel:(id)a7 waveformDataSource:(id)a8 composition:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v21.receiver = self;
  v21.super_class = RCUserActivityTypeTransitionInfo;
  v18 = [(RCUserActivityTypeTransitionInfo *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(RCUserActivityTypeTransitionInfo *)v18 setToActivityType:a3];
    [(RCUserActivityTypeTransitionInfo *)v19 setToSubType:a4];
    [(RCUserActivityTypeTransitionInfo *)v19 setFromActivityType:a5];
    [(RCUserActivityTypeTransitionInfo *)v19 setFromSubType:a6];
    [(RCUserActivityTypeTransitionInfo *)v19 setDisplayModel:v15];
    [(RCUserActivityTypeTransitionInfo *)v19 setWaveformDataSource:v16];
    [(RCUserActivityTypeTransitionInfo *)v19 setComposition:v17];
  }

  return v19;
}

@end