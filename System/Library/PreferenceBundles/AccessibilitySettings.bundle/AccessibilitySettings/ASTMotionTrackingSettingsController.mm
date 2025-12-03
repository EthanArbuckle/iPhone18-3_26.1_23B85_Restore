@interface ASTMotionTrackingSettingsController
- (ASTMotionTrackingSettingsController)init;
- (id)specifiers;
- (void)updateSpecifiersForAutoHideSettingsChange;
@end

@implementation ASTMotionTrackingSettingsController

- (ASTMotionTrackingSettingsController)init
{
  v10.receiver = self;
  v10.super_class = ASTMotionTrackingSettingsController;
  v2 = [(ASTMotionTrackingSettingsController *)&v10 init];
  if (v2)
  {
    v3 = +[AXSettings sharedInstance];
    v2->_showingAutoHideSettings = [v3 assistiveTouchEyeTrackingAutoHideEnabled];

    objc_initWeak(&location, v2);
    v4 = +[AXSettings sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __43__ASTMotionTrackingSettingsController_init__block_invoke;
    v7[3] = &unk_255388;
    objc_copyWeak(&v8, &location);
    [v4 registerUpdateBlock:v7 forRetrieveSelector:"assistiveTouchEyeTrackingAutoHideEnabled" withListener:v2];

    objc_destroyWeak(&v8);
    v5 = v2;
    objc_destroyWeak(&location);
  }

  return v2;
}

void __43__ASTMotionTrackingSettingsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSpecifiersForAutoHideSettingsChange];
}

- (id)specifiers
{
  eyeTracker = [(ASTMotionTrackingSettingsController *)self eyeTracker];

  if (!eyeTracker)
  {
    objc_opt_class();
    userInfo = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 objectForKeyedSubscript:@"AX_EYE_TRACKER_KEY"];
    [(ASTMotionTrackingSettingsController *)self setEyeTracker:v6];
  }

  motionTrackingSettingsHelper = [(ASTMotionTrackingSettingsController *)self motionTrackingSettingsHelper];

  if (!motionTrackingSettingsHelper)
  {
    v8 = [ASTMotionTrackingSettingsHelper alloc];
    eyeTracker2 = [(ASTMotionTrackingSettingsController *)self eyeTracker];
    v10 = [(ASTMotionTrackingSettingsHelper *)v8 initWithEyeTracker:eyeTracker2];
    [(ASTMotionTrackingSettingsController *)self setMotionTrackingSettingsHelper:v10];
  }

  v11 = OBJC_IVAR___PSListController__specifiers;
  v12 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v12)
  {
    v13 = [objc_allocWithZone(NSMutableArray) init];
    motionTrackingSettingsHelper2 = [(ASTMotionTrackingSettingsController *)self motionTrackingSettingsHelper];
    specifiers = [motionTrackingSettingsHelper2 specifiers];
    [v13 axSafelyAddObjectsFromArray:specifiers];

    v16 = [v13 copy];
    v17 = *&self->AXUISettingsBaseListController_opaque[v11];
    *&self->AXUISettingsBaseListController_opaque[v11] = v16;

    v12 = *&self->AXUISettingsBaseListController_opaque[v11];
  }

  return v12;
}

- (void)updateSpecifiersForAutoHideSettingsChange
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 assistiveTouchEyeTrackingAutoHideEnabled])
  {
    showingAutoHideSettings = [(ASTMotionTrackingSettingsController *)self showingAutoHideSettings];

    if ((showingAutoHideSettings & 1) == 0)
    {
      motionTrackingSettingsHelper = [(ASTMotionTrackingSettingsController *)self motionTrackingSettingsHelper];
      autoHideTimeoutAndSliderContiguousSpecs = [motionTrackingSettingsHelper autoHideTimeoutAndSliderContiguousSpecs];
      [(ASTMotionTrackingSettingsController *)self insertContiguousSpecifiers:autoHideTimeoutAndSliderContiguousSpecs afterSpecifierID:@"AutoHideSwitchSpecifierKey" animated:1];

      selfCopy2 = self;
      v8 = 1;
LABEL_11:

      [(ASTMotionTrackingSettingsController *)selfCopy2 setShowingAutoHideSettings:v8];
      return;
    }
  }

  else
  {
  }

  v12 = +[AXSettings sharedInstance];
  if (([v12 assistiveTouchEyeTrackingAutoHideEnabled] & 1) == 0)
  {
    showingAutoHideSettings2 = [(ASTMotionTrackingSettingsController *)self showingAutoHideSettings];

    if (!showingAutoHideSettings2)
    {
      return;
    }

    motionTrackingSettingsHelper2 = [(ASTMotionTrackingSettingsController *)self motionTrackingSettingsHelper];
    autoHideTimeoutAndSliderContiguousSpecs2 = [motionTrackingSettingsHelper2 autoHideTimeoutAndSliderContiguousSpecs];
    [(ASTMotionTrackingSettingsController *)self removeContiguousSpecifiers:autoHideTimeoutAndSliderContiguousSpecs2 animated:1];

    selfCopy2 = self;
    v8 = 0;
    goto LABEL_11;
  }
}

@end