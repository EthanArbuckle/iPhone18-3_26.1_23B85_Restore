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
  v3 = [(ASTMotionTrackingSettingsController *)self eyeTracker];

  if (!v3)
  {
    objc_opt_class();
    v4 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 objectForKeyedSubscript:@"AX_EYE_TRACKER_KEY"];
    [(ASTMotionTrackingSettingsController *)self setEyeTracker:v6];
  }

  v7 = [(ASTMotionTrackingSettingsController *)self motionTrackingSettingsHelper];

  if (!v7)
  {
    v8 = [ASTMotionTrackingSettingsHelper alloc];
    v9 = [(ASTMotionTrackingSettingsController *)self eyeTracker];
    v10 = [(ASTMotionTrackingSettingsHelper *)v8 initWithEyeTracker:v9];
    [(ASTMotionTrackingSettingsController *)self setMotionTrackingSettingsHelper:v10];
  }

  v11 = OBJC_IVAR___PSListController__specifiers;
  v12 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v12)
  {
    v13 = [objc_allocWithZone(NSMutableArray) init];
    v14 = [(ASTMotionTrackingSettingsController *)self motionTrackingSettingsHelper];
    v15 = [v14 specifiers];
    [v13 axSafelyAddObjectsFromArray:v15];

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
    v4 = [(ASTMotionTrackingSettingsController *)self showingAutoHideSettings];

    if ((v4 & 1) == 0)
    {
      v5 = [(ASTMotionTrackingSettingsController *)self motionTrackingSettingsHelper];
      v6 = [v5 autoHideTimeoutAndSliderContiguousSpecs];
      [(ASTMotionTrackingSettingsController *)self insertContiguousSpecifiers:v6 afterSpecifierID:@"AutoHideSwitchSpecifierKey" animated:1];

      v7 = self;
      v8 = 1;
LABEL_11:

      [(ASTMotionTrackingSettingsController *)v7 setShowingAutoHideSettings:v8];
      return;
    }
  }

  else
  {
  }

  v12 = +[AXSettings sharedInstance];
  if (([v12 assistiveTouchEyeTrackingAutoHideEnabled] & 1) == 0)
  {
    v9 = [(ASTMotionTrackingSettingsController *)self showingAutoHideSettings];

    if (!v9)
    {
      return;
    }

    v10 = [(ASTMotionTrackingSettingsController *)self motionTrackingSettingsHelper];
    v11 = [v10 autoHideTimeoutAndSliderContiguousSpecs];
    [(ASTMotionTrackingSettingsController *)self removeContiguousSpecifiers:v11 animated:1];

    v7 = self;
    v8 = 0;
    goto LABEL_11;
  }
}

@end