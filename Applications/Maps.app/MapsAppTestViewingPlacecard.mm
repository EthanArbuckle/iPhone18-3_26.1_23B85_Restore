@interface MapsAppTestViewingPlacecard
- (BOOL)runTest;
- (void)placecardDidPresent;
@end

@implementation MapsAppTestViewingPlacecard

- (void)placecardDidPresent
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestMaximizePlaceCardAnimated:1];

  options = [(MapsAppTest *)self options];
  v5 = [options objectForKeyedSubscript:@"duration"];
  [v5 doubleValue];
  v7 = v6;

  v8 = dispatch_time(0, (v7 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009F3764;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  [(MapsAppTestPlacecardChrome *)self setPlacecardChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestViewingPlacecard;
  return [(MapsAppTestPlacecardChrome *)&v4 runTest];
}

@end