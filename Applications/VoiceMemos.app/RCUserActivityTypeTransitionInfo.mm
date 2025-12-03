@interface RCUserActivityTypeTransitionInfo
- (RCUserActivityTypeTransitionInfo)initWithToActivityType:(int64_t)type toSubType:(int64_t)subType fromActivityType:(int64_t)activityType fromSubType:(int64_t)fromSubType displayModel:(id)model waveformDataSource:(id)source composition:(id)composition;
@end

@implementation RCUserActivityTypeTransitionInfo

- (RCUserActivityTypeTransitionInfo)initWithToActivityType:(int64_t)type toSubType:(int64_t)subType fromActivityType:(int64_t)activityType fromSubType:(int64_t)fromSubType displayModel:(id)model waveformDataSource:(id)source composition:(id)composition
{
  modelCopy = model;
  sourceCopy = source;
  compositionCopy = composition;
  v21.receiver = self;
  v21.super_class = RCUserActivityTypeTransitionInfo;
  v18 = [(RCUserActivityTypeTransitionInfo *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(RCUserActivityTypeTransitionInfo *)v18 setToActivityType:type];
    [(RCUserActivityTypeTransitionInfo *)v19 setToSubType:subType];
    [(RCUserActivityTypeTransitionInfo *)v19 setFromActivityType:activityType];
    [(RCUserActivityTypeTransitionInfo *)v19 setFromSubType:fromSubType];
    [(RCUserActivityTypeTransitionInfo *)v19 setDisplayModel:modelCopy];
    [(RCUserActivityTypeTransitionInfo *)v19 setWaveformDataSource:sourceCopy];
    [(RCUserActivityTypeTransitionInfo *)v19 setComposition:compositionCopy];
  }

  return v19;
}

@end