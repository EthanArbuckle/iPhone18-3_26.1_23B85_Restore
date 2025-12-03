@interface AXUISettingsTouchAccommodationsAllowSwipeGesturesController_AXSettings
- (BOOL)touchAccommodationsAllowsSwipeGesturesToBypass;
- (double)touchAccommodationsSwipeGestureMinimumDistance;
- (void)setTouchAccommodationsAllowsSwipeGesturesToBypass:(BOOL)bypass;
- (void)setTouchAccommodationsSwipeGestureMinimumDistance:(double)distance;
@end

@implementation AXUISettingsTouchAccommodationsAllowSwipeGesturesController_AXSettings

- (BOOL)touchAccommodationsAllowsSwipeGesturesToBypass
{
  v2 = +[AXSettings sharedInstance];
  touchAccommodationsAllowsSwipeGesturesToBypass = [v2 touchAccommodationsAllowsSwipeGesturesToBypass];

  return touchAccommodationsAllowsSwipeGesturesToBypass;
}

- (void)setTouchAccommodationsAllowsSwipeGesturesToBypass:(BOOL)bypass
{
  bypassCopy = bypass;
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsAllowsSwipeGesturesToBypass:bypassCopy];
}

- (double)touchAccommodationsSwipeGestureMinimumDistance
{
  v2 = +[AXSettings sharedInstance];
  [v2 touchAccommodationsSwipeGestureMinimumDistance];
  v4 = v3;

  return v4;
}

- (void)setTouchAccommodationsSwipeGestureMinimumDistance:(double)distance
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsSwipeGestureMinimumDistance:distance];
}

@end