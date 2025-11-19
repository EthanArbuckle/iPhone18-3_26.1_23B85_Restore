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
- (void)setTouchAccommodationsAllowsSwipeGesturesToBypass:(BOOL)a3;
- (void)setTouchAccommodationsEnabled:(BOOL)a3;
- (void)setTouchAccommodationsHoldDuration:(double)a3;
- (void)setTouchAccommodationsHoldDurationEnabled:(BOOL)a3;
- (void)setTouchAccommodationsIgnoreRepeatDuration:(double)a3;
- (void)setTouchAccommodationsIgnoreRepeatEnabled:(BOOL)a3;
- (void)setTouchAccommodationsTapActivationMethod:(int64_t)a3;
- (void)setTouchAccommodationsTapActivationTimeout:(double)a3;
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

- (void)setTouchAccommodationsEnabled:(BOOL)a3
{
  v3 = a3;
  [(AXUISettingsTouchAccommodationsController_AXSettings *)self setShouldIgnoreNextEnabledChangedNotification:1];
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsEnabled:v3];
}

- (BOOL)touchAccommodationsEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsEnabled];

  return v3;
}

- (BOOL)touchAccommodationsAreConfigured
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsAreConfigured];

  return v3;
}

- (BOOL)touchAccommodationsHoldDurationEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsHoldDurationEnabled];

  return v3;
}

- (void)setTouchAccommodationsHoldDurationEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsHoldDurationEnabled:v3];
}

- (BOOL)touchAccommodationsIgnoreRepeatEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsIgnoreRepeatEnabled];

  return v3;
}

- (void)setTouchAccommodationsIgnoreRepeatEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsIgnoreRepeatEnabled:v3];
}

- (BOOL)touchAccommodationsAllowsSwipeGesturesToBypass
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsAllowsSwipeGesturesToBypass];

  return v3;
}

- (void)setTouchAccommodationsAllowsSwipeGesturesToBypass:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsAllowsSwipeGesturesToBypass:v3];
}

- (double)touchAccommodationsHoldDuration
{
  v2 = +[AXSettings sharedInstance];
  [v2 touchAccommodationsHoldDuration];
  v4 = v3;

  return v4;
}

- (void)setTouchAccommodationsHoldDuration:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsHoldDuration:a3];
}

- (double)touchAccommodationsIgnoreRepeatDuration
{
  v2 = +[AXSettings sharedInstance];
  [v2 touchAccommodationsIgnoreRepeatDuration];
  v4 = v3;

  return v4;
}

- (void)setTouchAccommodationsIgnoreRepeatDuration:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsIgnoreRepeatDuration:a3];
}

- (double)touchAccommodationsTapActivationTimeout
{
  v2 = +[AXSettings sharedInstance];
  [v2 touchAccommodationsTapActivationTimeout];
  v4 = v3;

  return v4;
}

- (void)setTouchAccommodationsTapActivationTimeout:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsTapActivationTimeout:a3];
}

- (int64_t)touchAccommodationsTapActivationMethod
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsTapActivationMethod];

  return v3;
}

- (void)setTouchAccommodationsTapActivationMethod:(int64_t)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setTouchAccommodationsTapActivationMethod:a3];
}

@end