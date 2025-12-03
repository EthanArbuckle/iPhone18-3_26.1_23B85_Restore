@interface RCUserActivity
- (BOOL)requiresDismissalAtEndOfCapture;
- (BOOL)transitionToActivityType:(int64_t)type subType:(int64_t)subType withDisplayModel:(id)model;
@end

@implementation RCUserActivity

- (BOOL)transitionToActivityType:(int64_t)type subType:(int64_t)subType withDisplayModel:(id)model
{
  modelCopy = model;
  [(RCUserActivity *)self setActivityType:type];
  [(RCUserActivity *)self setSubActivityType:subType];
  [(RCUserActivity *)self setDisplayModel:modelCopy];

  return 1;
}

- (BOOL)requiresDismissalAtEndOfCapture
{
  activityType = [(RCUserActivity *)self activityType];
  subActivityType = [(RCUserActivity *)self subActivityType];

  return [RCUserActivity requiresDismissalAtEndOfCaptureForActivityType:activityType subActivityType:subActivityType];
}

@end