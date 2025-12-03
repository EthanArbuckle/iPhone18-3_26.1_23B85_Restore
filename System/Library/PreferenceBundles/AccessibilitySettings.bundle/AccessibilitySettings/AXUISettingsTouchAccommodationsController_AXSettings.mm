@interface AXUISettingsTouchAccommodationsController_AXSettings
- (AXUISettingsTouchAccommodationsController_AXSettings)init;
- (BOOL)touchAccommodationsAllowsSwipeGesturesToBypass;
- (BOOL)touchAccommodationsAreConfigured;
- (BOOL)touchAccommodationsEnabled;
- (BOOL)touchAccommodationsHoldDurationEnabled;
- (BOOL)touchAccommodationsIgnoreRepeatEnabled;
- (double)touchAccommodationsHoldDuration;
- (double)touchAccommodationsIgnoreRepeatDuration;
- (double)touchAccommodationsTapActivationTimeout;
- (int64_t)touchAccommodationsTapActivationMethod;
- (void)setTouchAccommodationsAllowsSwipeGesturesToBypass:(BOOL)bypass;
- (void)setTouchAccommodationsEnabled:(BOOL)enabled;
- (void)setTouchAccommodationsHoldDuration:(double)duration;
- (void)setTouchAccommodationsHoldDurationEnabled:(BOOL)enabled;
- (void)setTouchAccommodationsIgnoreRepeatDuration:(double)duration;
- (void)setTouchAccommodationsIgnoreRepeatEnabled:(BOOL)enabled;
- (void)setTouchAccommodationsTapActivationMethod:(int64_t)method;
- (void)setTouchAccommodationsTapActivationTimeout:(double)timeout;
@end

@implementation AXUISettingsTouchAccommodationsController_AXSettings

- (AXUISettingsTouchAccommodationsController_AXSettings)init
{
  v9.receiver = self;
  v9.super_class = AXUISettingsTouchAccommodationsController_AXSettings;
  v2 = [(AXUISettingsTouchAccommodationsController_AXSettings *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __60__AXUISettingsTouchAccommodationsController_AXSettings_init__block_invoke;
    v6[3] = &unk_255388;
    objc_copyWeak(&v7, &location);
    v4 = objc_loadWeakRetained(&location);
    [v3 registerUpdateBlock:v6 forRetrieveSelector:"touchAccommodationsEnabled" withListener:v4];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setTouchAccommodationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(AXUISettingsTouchAccommodationsController_AXSettings *)self setShouldIgnoreNextEnabledChangedNotification:1];
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsEnabled:enabledCopy];
}

- (BOOL)touchAccommodationsEnabled
{
  v2 = +[AXSettings sharedInstance];
  touchAccommodationsEnabled = [v2 touchAccommodationsEnabled];

  return touchAccommodationsEnabled;
}

- (BOOL)touchAccommodationsAreConfigured
{
  v2 = +[AXSettings sharedInstance];
  touchAccommodationsAreConfigured = [v2 touchAccommodationsAreConfigured];

  return touchAccommodationsAreConfigured;
}

- (BOOL)touchAccommodationsHoldDurationEnabled
{
  v2 = +[AXSettings sharedInstance];
  touchAccommodationsHoldDurationEnabled = [v2 touchAccommodationsHoldDurationEnabled];

  return touchAccommodationsHoldDurationEnabled;
}

- (void)setTouchAccommodationsHoldDurationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsHoldDurationEnabled:enabledCopy];
}

- (BOOL)touchAccommodationsIgnoreRepeatEnabled
{
  v2 = +[AXSettings sharedInstance];
  touchAccommodationsIgnoreRepeatEnabled = [v2 touchAccommodationsIgnoreRepeatEnabled];

  return touchAccommodationsIgnoreRepeatEnabled;
}

- (void)setTouchAccommodationsIgnoreRepeatEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsIgnoreRepeatEnabled:enabledCopy];
}

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

- (double)touchAccommodationsHoldDuration
{
  v2 = +[AXSettings sharedInstance];
  [v2 touchAccommodationsHoldDuration];
  v4 = v3;

  return v4;
}

- (void)setTouchAccommodationsHoldDuration:(double)duration
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsHoldDuration:duration];
}

- (double)touchAccommodationsIgnoreRepeatDuration
{
  v2 = +[AXSettings sharedInstance];
  [v2 touchAccommodationsIgnoreRepeatDuration];
  v4 = v3;

  return v4;
}

- (void)setTouchAccommodationsIgnoreRepeatDuration:(double)duration
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsIgnoreRepeatDuration:duration];
}

- (double)touchAccommodationsTapActivationTimeout
{
  v2 = +[AXSettings sharedInstance];
  [v2 touchAccommodationsTapActivationTimeout];
  v4 = v3;

  return v4;
}

- (void)setTouchAccommodationsTapActivationTimeout:(double)timeout
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsTapActivationTimeout:timeout];
}

- (int64_t)touchAccommodationsTapActivationMethod
{
  v2 = +[AXSettings sharedInstance];
  touchAccommodationsTapActivationMethod = [v2 touchAccommodationsTapActivationMethod];

  return touchAccommodationsTapActivationMethod;
}

- (void)setTouchAccommodationsTapActivationMethod:(int64_t)method
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsTapActivationMethod:method];
}

@end