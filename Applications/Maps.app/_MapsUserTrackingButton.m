@interface _MapsUserTrackingButton
- (int64_t)_activityIndicatorStyle;
@end

@implementation _MapsUserTrackingButton

- (int64_t)_activityIndicatorStyle
{
  v2 = [(_MapsUserTrackingButton *)self theme];
  v3 = [v2 activityIndicatorStyle];

  return v3;
}

@end