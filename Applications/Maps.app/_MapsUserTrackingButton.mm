@interface _MapsUserTrackingButton
- (int64_t)_activityIndicatorStyle;
@end

@implementation _MapsUserTrackingButton

- (int64_t)_activityIndicatorStyle
{
  theme = [(_MapsUserTrackingButton *)self theme];
  activityIndicatorStyle = [theme activityIndicatorStyle];

  return activityIndicatorStyle;
}

@end