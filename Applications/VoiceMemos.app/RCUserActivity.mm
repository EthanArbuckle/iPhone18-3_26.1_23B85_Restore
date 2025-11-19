@interface RCUserActivity
- (BOOL)requiresDismissalAtEndOfCapture;
- (BOOL)transitionToActivityType:(int64_t)a3 subType:(int64_t)a4 withDisplayModel:(id)a5;
@end

@implementation RCUserActivity

- (BOOL)transitionToActivityType:(int64_t)a3 subType:(int64_t)a4 withDisplayModel:(id)a5
{
  v8 = a5;
  [(RCUserActivity *)self setActivityType:a3];
  [(RCUserActivity *)self setSubActivityType:a4];
  [(RCUserActivity *)self setDisplayModel:v8];

  return 1;
}

- (BOOL)requiresDismissalAtEndOfCapture
{
  v3 = [(RCUserActivity *)self activityType];
  v4 = [(RCUserActivity *)self subActivityType];

  return [RCUserActivity requiresDismissalAtEndOfCaptureForActivityType:v3 subActivityType:v4];
}

@end