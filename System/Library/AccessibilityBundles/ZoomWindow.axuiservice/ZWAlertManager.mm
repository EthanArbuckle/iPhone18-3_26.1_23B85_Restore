@interface ZWAlertManager
- (BOOL)_shouldShowZoomAlert;
- (void)showOrbZoomToggleOff;
- (void)showOrbZoomToggleOn;
- (void)showZoomDisabledAlertIfAppropriate;
- (void)showZoomEnabledAlertIfAppropriate;
@end

@implementation ZWAlertManager

- (void)showZoomEnabledAlertIfAppropriate
{
  if ([(ZWAlertManager *)self _shouldShowZoomAlert])
  {
    v3 = +[AXSettings sharedInstance];
    zoomShowedBanner = [v3 zoomShowedBanner];

    if ((zoomShowedBanner & 1) == 0)
    {
      v5 = +[AXUIDisplayManager sharedDisplayManager];
      currentAlertID = [(ZWAlertManager *)self currentAlertID];

      if (currentAlertID)
      {
        currentAlertID2 = [(ZWAlertManager *)self currentAlertID];
        v8 = +[ZWUIServer sharedInstance];
        [v5 hideAlertWithIdentifier:currentAlertID2 forService:v8];
      }

      v9 = ZWLocString(@"ZOOM_ENABLED_BANNER");
      v10 = +[ZWUIServer sharedInstance];
      v11 = [v5 showAlertWithText:v9 subtitleText:0 iconImage:0 type:0 priority:30 duration:v10 forService:2.0];
      [(ZWAlertManager *)self setCurrentAlertID:v11];
    }
  }

  v12 = +[AXSettings sharedInstance];
  [v12 setZoomShowedBanner:1];
}

- (void)showZoomDisabledAlertIfAppropriate
{
  if ([(ZWAlertManager *)self _shouldShowZoomAlert])
  {
    v3 = +[AXUIDisplayManager sharedDisplayManager];
    currentAlertID = [(ZWAlertManager *)self currentAlertID];

    if (currentAlertID)
    {
      currentAlertID2 = [(ZWAlertManager *)self currentAlertID];
      v6 = +[ZWUIServer sharedInstance];
      [v3 hideAlertWithIdentifier:currentAlertID2 forService:v6];
    }

    v7 = ZWLocString(@"ZOOM_DISABLED_BANNER");
    v8 = +[ZWUIServer sharedInstance];
    v9 = [v3 showAlertWithText:v7 subtitleText:0 iconImage:0 type:0 priority:30 duration:v8 forService:2.0];
    [(ZWAlertManager *)self setCurrentAlertID:v9];
  }

  v10 = +[AXSettings sharedInstance];
  [v10 setZoomShowedBanner:0];
}

- (BOOL)_shouldShowZoomAlert
{
  v2 = +[AXSettings sharedInstance];
  securePayAssertionActive = [v2 securePayAssertionActive];

  if (securePayAssertionActive)
  {
    v4 = AXLogAssertions();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Not processing zoom alert because secure pay mode active", v10, 2u);
    }

    return 0;
  }

  else
  {
    v6 = +[ZWCoalescedSettings sharedInstance];
    [v6 zoomFactor];
    if (v7 <= AXZoomMinimumZoomLevel)
    {
      zoomInStandby = 1;
    }

    else
    {
      v8 = +[ZWCoalescedSettings sharedInstance];
      zoomInStandby = [v8 zoomInStandby];
    }
  }

  return zoomInStandby;
}

- (void)showOrbZoomToggleOn
{
  v8 = +[AXUIDisplayManager sharedDisplayManager];
  currentAlertID = [(ZWAlertManager *)self currentAlertID];

  if (currentAlertID)
  {
    currentAlertID2 = [(ZWAlertManager *)self currentAlertID];
    v5 = +[ZWUIServer sharedInstance];
    [v8 hideAlertWithIdentifier:currentAlertID2 forService:v5];
  }

  v6 = +[ZWUIServer sharedInstance];
  v7 = [v8 showAlertWithText:@"Force Touch Zoom Enabled" subtitleText:0 iconImage:0 type:0 priority:30 duration:v6 forService:1.0];
  [(ZWAlertManager *)self setCurrentAlertID:v7];
}

- (void)showOrbZoomToggleOff
{
  v8 = +[AXUIDisplayManager sharedDisplayManager];
  currentAlertID = [(ZWAlertManager *)self currentAlertID];

  if (currentAlertID)
  {
    currentAlertID2 = [(ZWAlertManager *)self currentAlertID];
    v5 = +[ZWUIServer sharedInstance];
    [v8 hideAlertWithIdentifier:currentAlertID2 forService:v5];
  }

  v6 = +[ZWUIServer sharedInstance];
  v7 = [v8 showAlertWithText:@"Force Touch Zoom Disabled" subtitleText:0 iconImage:0 type:0 priority:30 duration:v6 forService:1.0];
  [(ZWAlertManager *)self setCurrentAlertID:v7];
}

@end