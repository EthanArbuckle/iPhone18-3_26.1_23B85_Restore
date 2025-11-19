@interface SearchResultsMapViewController
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
@end

@implementation SearchResultsMapViewController

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_100245E04(v6);
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v9 = a3;
  v10 = self;
  sub_100245FB4(v9);
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100246160(v5);
}

@end