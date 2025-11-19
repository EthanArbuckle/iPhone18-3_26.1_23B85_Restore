@interface ZoomController
+ (void)setZoomEnabled:(BOOL)a3;
+ (void)setZoomEnabled:(BOOL)a3 initialFocusRect:(CGRect)a4 contextId:(unsigned int)a5;
- (BOOL)zoomScalePointerIsAllowed;
- (ZoomController)init;
- (id)specifiers;
- (id)zoomAlwaysUseWindowZoomForTyping:(id)a3;
- (id)zoomFilterSummary:(id)a3;
- (id)zoomKeyboardShortcutsSettingsSummary:(id)a3;
- (id)zoomLensModeSummary:(id)a3;
- (id)zoomScalePointerEnabled:(id)a3;
- (id)zoomShouldFollowFocus:(id)a3;
- (id)zoomShowWhileMirroring:(id)a3;
- (id)zoomSlugSettingsSummary:(id)a3;
- (id)zoomTouchEnabled:(id)a3;
- (id)zoomTrackpadGestureEnabled:(id)a3;
- (void)_updateOptionsFooterText:(BOOL)a3;
- (void)_zoomTouchEnabledChange;
- (void)dealloc;
- (void)setZoomAlwaysUseWindowZoomForTyping:(id)a3 specifier:(id)a4;
- (void)setZoomScalePointerEnabled:(id)a3 specifier:(id)a4;
- (void)setZoomShouldFollowFocus:(id)a3 specifier:(id)a4;
- (void)setZoomShowWhileMirroring:(id)a3 specifier:(id)a4;
- (void)setZoomTouchEnabled:(id)a3 specifier:(id)a4;
- (void)setZoomTrackpadGestureEnabled:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ZoomController

+ (void)setZoomEnabled:(BOOL)a3 initialFocusRect:(CGRect)a4 contextId:(unsigned int)a5
{
  v5 = a3;
  if (a5)
  {
    v7 = *&a5;
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v12 = +[AXBackBoardServer server];
    [v12 setZoomInitialFocusRect:v7 fromContext:{x, y, width, height}];
  }

  [a1 setZoomEnabled:{v5, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
}

+ (void)setZoomEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setZoomInStandby:0];

  _AXSZoomTouchSetEnabled();

  __AXSZoomTouchSetToggledByPreferenceSwitch(v3);
}

- (ZoomController)init
{
  v30.receiver = self;
  v30.super_class = ZoomController;
  v2 = [(ZoomController *)&v30 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _zoomTouchEnabledChange, kAXSZoomTouchEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_initWeak(&location, v2);
    v4 = +[AXSettings sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __22__ZoomController_init__block_invoke;
    v27[3] = &unk_255388;
    objc_copyWeak(&v28, &location);
    [v4 registerUpdateBlock:v27 forRetrieveSelector:"zoomPreferredCurrentLensMode" withListener:v2];

    objc_destroyWeak(&v28);
    v5 = +[AXSettings sharedInstance];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __22__ZoomController_init__block_invoke_2;
    v24[3] = &unk_255818;
    objc_copyWeak(&v26, &location);
    v6 = v2;
    v25 = v6;
    [v5 registerUpdateBlock:v24 forRetrieveSelector:"zoomCurrentLensEffect" withListener:v6];

    objc_destroyWeak(&v26);
    v7 = +[AXSettings sharedInstance];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __22__ZoomController_init__block_invoke_3;
    v21[3] = &unk_255818;
    objc_copyWeak(&v23, &location);
    v8 = v6;
    v22 = v8;
    [v7 registerUpdateBlock:v21 forRetrieveSelector:"zoomShouldShowSlug" withListener:v8];

    objc_destroyWeak(&v23);
    v9 = +[AXSettings sharedInstance];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = __22__ZoomController_init__block_invoke_4;
    v18 = &unk_255818;
    objc_copyWeak(&v20, &location);
    v10 = v8;
    v19 = v10;
    [v9 registerUpdateBlock:&v15 forRetrieveSelector:"zoomKeyboardShortcutsEnabled" withListener:v10];

    objc_destroyWeak(&v20);
    v11 = [AXSettings sharedInstance:v15];
    v12 = [v11 laserEnabled];

    if (v12)
    {
      v13 = +[AXPointerDeviceManager sharedInstance];
      [v13 addObserver:v10];
    }

    objc_destroyWeak(&location);
  }

  return v2;
}

void __22__ZoomController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __22__ZoomController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) specifierForKey:@"ZoomFilter"];
  [WeakRetained reloadSpecifier:v2 animated:1];
}

void __22__ZoomController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) specifierForKey:@"ZoomSlug"];
  [WeakRetained reloadSpecifier:v2 animated:1];
}

void __22__ZoomController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) specifierForKey:@"ZoomKeyboardShortcuts"];
  [WeakRetained reloadSpecifier:v2 animated:1];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[AXPointerDeviceManager sharedInstance];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ZoomController;
  [(ZoomController *)&v5 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(ZoomController *)self loadSpecifiersFromPlistName:@"ZoomSettings" target:self];
    v6 = [v5 mutableCopy];

    v7 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v8 = PSIDKey;
    [v7 setProperty:@"ZoomPreferredMaxZoomLevel" forKey:PSIDKey];
    [v6 addObject:v7];
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 laserEnabled];

    if (v10)
    {
      v11 = +[AXPointerDeviceManager sharedInstance];
      v12 = [v11 connectedDevices];
      v13 = [v12 count];

      if (v13)
      {
        v14 = settingsLocString(@"ZoomPointerGroupTitle", @"Accessibility-hello");
        v31 = [PSSpecifier groupSpecifierWithName:v14];

        v15 = settingsLocString(@"ZoomScalePointerDescription", @"Accessibility-hello");
        v30 = PSFooterTextGroupKey;
        [v31 setProperty:v15 forKey:?];

        [v6 addObject:v31];
        v16 = settingsLocString(@"ZoomPanOptions", @"Accessibility-hello");
        v29 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:"zoomPanOptionDescription:" detail:objc_opt_class() cell:2 edit:0];

        [v29 setProperty:@"ZoomPanningStyle" forKey:v8];
        [v6 addObject:v29];
        v17 = settingsLocString(@"ZoomScalePointer", @"Accessibility-hello");
        v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"setZoomScalePointerEnabled:specifier:" get:"zoomScalePointerEnabled:" detail:0 cell:6 edit:0];

        v19 = [NSNumber numberWithBool:[(ZoomController *)self zoomScalePointerIsAllowed]];
        [v18 setProperty:v19 forKey:PSEnabledKey];

        [v18 setProperty:@"ZoomAdjustPointerSize" forKey:v8];
        [v6 addObject:v18];
        v20 = +[PSSpecifier emptyGroupSpecifier];
        v21 = settingsLocString(@"ZoomTrackpadGestureDescription", @"Accessibility-hello");
        [v20 setProperty:v21 forKey:v30];

        [v6 addObject:v20];
        v22 = settingsLocString(@"ZoomTrackpadGesture", @"Accessibility-hello");
        v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setZoomTrackpadGestureEnabled:specifier:" get:"zoomTrackpadGestureEnabled:" detail:0 cell:6 edit:0];

        [v23 setProperty:@"ZoomWithTrackpad" forKey:v8];
        [v6 addObject:v23];
      }
    }

    objc_storeStrong(&self->AXUISettingsBaseListController_opaque[v3], v6);
    v24 = [(ZoomController *)self specifierForID:@"ZoomAlwaysUseWindowZoomForTyping"];
    [(ZoomController *)self setLeaveKeyboardUnzoomedSpecifier:v24];

    v25 = +[AXSettings sharedInstance];
    v26 = [v25 zoomShouldFollowFocus];

    if ((v26 & 1) == 0)
    {
      v27 = [(ZoomController *)self leaveKeyboardUnzoomedSpecifier];
      [v6 removeObject:v27];

      [(ZoomController *)self _updateOptionsFooterText:0];
    }

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ZoomController;
  [(ZoomController *)&v6 viewDidLoad];
  v3 = [(ZoomController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsZoomLabeledSliderCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ZoomController;
  [(ZoomController *)&v4 viewWillAppear:a3];
  [(ZoomController *)self reloadSpecifiers];
}

- (void)setZoomScalePointerEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSPointerScaleWithZoomLevelSetEnabled(v4);
}

- (id)zoomScalePointerEnabled:(id)a3
{
  if ([(ZoomController *)self zoomScalePointerIsAllowed])
  {
    v3 = [NSNumber numberWithUnsignedChar:_AXSPointerScaleWithZoomLevelEnabled()];
  }

  else
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (BOOL)zoomScalePointerIsAllowed
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 zoomPreferredCurrentLensMode];
  v4 = [v3 isEqualToString:AXZoomLensModeWindowAnchored];

  return v4 ^ 1;
}

- (void)setZoomTrackpadGestureEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomTrackpadGestureEnabled:v4];
}

- (id)zoomTrackpadGestureEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 zoomTrackpadGestureEnabled]);

  return v4;
}

- (void)_zoomTouchEnabledChange
{
  v3 = [(ZoomController *)self specifierForKey:@"ZoomTouchEnabled"];
  [(ZoomController *)self reloadSpecifier:v3];
}

- (void)_updateOptionsFooterText:(BOOL)a3
{
  v3 = a3;
  v8 = [(ZoomController *)self specifierForID:@"ZoomOptionsGroup"];
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 zoomShouldFollowFocus];

  if ((v6 & 1) == 0)
  {
    [v8 removePropertyForKey:PSFooterTextGroupKey];
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = settingsLocString(@"ZOOM_USE_WINDOW_FOR_TYPING_INSTRUCTIONS", @"ZoomSettings");
  [v8 setProperty:v7 forKey:PSFooterTextGroupKey];

  if (v3)
  {
LABEL_5:
    [(ZoomController *)self reloadSpecifier:v8 animated:1];
  }

LABEL_6:
}

- (id)zoomTouchEnabled:(id)a3
{
  v3 = _AXSZoomTouchEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setZoomTouchEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(ZoomController *)self cellForSpecifierID:@"ZoomTouchEnabled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 control];
    [v7 bounds];
    [v7 convertRect:0 toView:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v7 window];
    [v16 convertRect:0 toWindow:{v9, v11, v13, v15}];

    v17 = [v7 window];
    AXUIConvertRectFromScreenToContextSpace();
    x = v18;
    y = v20;
    width = v22;
    height = v24;

    v26 = [v7 window];
    v27 = [v26 _contextId];
  }

  else
  {
    v27 = 0;
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v28 = [v5 BOOLValue];
  if (v28)
  {
    [ZoomController setZoomEnabled:1 initialFocusRect:v27 contextId:x, y, width, height];
  }

  else
  {
    v29 = v28;
    v30 = [(ZoomController *)self parentController];
    if (v30 && (v31 = v30, [(ZoomController *)self parentController], v32 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v32, v31, (isKindOfClass & 1) != 0))
    {
      v34 = [(ZoomController *)self parentController];
      v35 = settingsLocString(@"CONFIRM_ZOT_REMOVAL", @"Accessibility");
      v36 = kAXSZoomTouchEnabledByiTunesPreference;
      LOBYTE(v41) = v29;
      v37 = [(ZoomController *)self view:_NSConcreteStackBlock];
      v38 = [v37 window];
      [v34 confirmDisablingWithString:v35 forKey:v36 confirmedBlock:&v40 canceledBlock:&v39 inWindow:v38];
    }

    else
    {
      [ZoomController setZoomEnabled:0];
    }
  }
}

void __48__ZoomController_setZoomTouchEnabled_specifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _zoomTouchEnabledSpecifier];
  [v2 setProperty:&__kCFBooleanTrue forKey:PSValueKey];
  [*(a1 + 32) reloadSpecifier:v2];
}

- (id)zoomShouldFollowFocus:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 zoomShouldFollowFocus]);

  return v4;
}

- (void)setZoomShouldFollowFocus:(id)a3 specifier:(id)a4
{
  v5 = a3;
  [(ZoomController *)self beginUpdates];
  v6 = [v5 BOOLValue];
  v7 = +[AXSettings sharedInstance];
  [v7 setZoomShouldFollowFocus:v6];

  LODWORD(v6) = [v5 BOOLValue];
  v8 = [(ZoomController *)self leaveKeyboardUnzoomedSpecifier];
  if (v6)
  {
    v9 = [(ZoomController *)self specifierForID:@"ZoomShouldFollowFocus"];
    [(ZoomController *)self insertSpecifier:v8 afterSpecifier:v9 animated:1];
  }

  else
  {
    [(ZoomController *)self removeSpecifier:v8 animated:1];

    v8 = +[AXSettings sharedInstance];
    [v8 setZoomAlwaysUseWindowedZoomForTyping:0];
  }

  [(ZoomController *)self _updateOptionsFooterText:1];

  [(ZoomController *)self endUpdates];
}

- (id)zoomAlwaysUseWindowZoomForTyping:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 zoomAlwaysUseWindowedZoomForTyping]);

  return v4;
}

- (void)setZoomAlwaysUseWindowZoomForTyping:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomAlwaysUseWindowedZoomForTyping:v4];
}

- (id)zoomShowWhileMirroring:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 zoomShowWhileMirroring]);

  return v4;
}

- (void)setZoomShowWhileMirroring:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomShowWhileMirroring:v4];
}

- (id)zoomLensModeSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomPreferredCurrentLensMode];

  v5 = AXLocalizedTitleForZoomLensMode(v4);

  return v5;
}

- (id)zoomFilterSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomCurrentLensEffect];

  v5 = AXUILocalizedTitleForZoomLensEffect();

  return v5;
}

- (id)zoomSlugSettingsSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomShouldShowSlug];

  if (v4)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  return settingsLocString(v5, @"Accessibility");
}

- (id)zoomKeyboardShortcutsSettingsSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomKeyboardShortcutsEnabled];

  if (v4)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  return settingsLocString(v5, @"Accessibility");
}

@end