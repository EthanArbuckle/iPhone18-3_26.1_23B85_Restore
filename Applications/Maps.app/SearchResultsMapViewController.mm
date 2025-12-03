@interface SearchResultsMapViewController
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
@end

@implementation SearchResultsMapViewController

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  viewCopy = view;
  selfCopy = self;
  sub_100245E04(viewCopy);
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  viewCopy = view;
  selfCopy = self;
  sub_100245FB4(viewCopy);
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  selfCopy = self;
  sub_100246160(viewCopy);
}

@end