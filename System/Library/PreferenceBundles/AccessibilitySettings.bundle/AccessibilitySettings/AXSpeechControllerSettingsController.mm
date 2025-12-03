@interface AXSpeechControllerSettingsController
- (id)showSpeechController:(id)controller;
- (id)specifiers;
- (id)speechControllerDoubleTapActionSummary:(id)summary;
- (id)speechControllerIdleOpacitySummary:(id)summary;
- (id)speechControllerLongPressActionSummary:(id)summary;
- (void)loadView;
- (void)setShowSpeechController:(id)controller specifier:(id)specifier;
@end

@implementation AXSpeechControllerSettingsController

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = AXSpeechControllerSettingsController;
  [(AXSpeechControllerSettingsController *)&v13 loadView];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __48__AXSpeechControllerSettingsController_loadView__block_invoke;
  v10[3] = &unk_255388;
  objc_copyWeak(&v11, &location);
  [v3 registerUpdateBlock:v10 forRetrieveSelector:"speechControllerDoubleTapAction" withListener:self];

  objc_destroyWeak(&v11);
  v4 = +[AXSettings sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __48__AXSpeechControllerSettingsController_loadView__block_invoke_2;
  v8[3] = &unk_255388;
  objc_copyWeak(&v9, &location);
  [v4 registerUpdateBlock:v8 forRetrieveSelector:"speechControllerLongPressAction" withListener:self];

  objc_destroyWeak(&v9);
  v5 = +[AXSettings sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __48__AXSpeechControllerSettingsController_loadView__block_invoke_3;
  v6[3] = &unk_255388;
  objc_copyWeak(&v7, &location);
  [v5 registerUpdateBlock:v6 forRetrieveSelector:"speechControllerIdleOpacity" withListener:self];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__AXSpeechControllerSettingsController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierForID:@"SpeechControllerDoubleTapAction"];
  [WeakRetained reloadSpecifier:v1];
}

void __48__AXSpeechControllerSettingsController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierForID:@"SpeechControllerLongPressAction"];
  [WeakRetained reloadSpecifier:v1];
}

void __48__AXSpeechControllerSettingsController_loadView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierForID:@"SpeechControllerIdleOpacity"];
  [WeakRetained reloadSpecifier:v1];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AXSpeechControllerSettingsController *)self loadSpecifiersFromPlistName:@"SpeechControllerSettings" target:self];
    [(AXSpeechControllerSettingsController *)self setAllSpecifiersUnsearchable:v5];
    v6 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
    *&self->AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)showSpeechController:(id)controller
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 showSpeechController]);

  return v4;
}

- (void)setShowSpeechController:(id)controller specifier:(id)specifier
{
  bOOLValue = [controller BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setShowSpeechController:bOOLValue];
}

- (id)speechControllerLongPressActionSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXLocalizedTitleForSpeechControllerAction([v3 speechControllerLongPressAction]);

  return v4;
}

- (id)speechControllerDoubleTapActionSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXLocalizedTitleForSpeechControllerAction([v3 speechControllerDoubleTapAction]);

  return v4;
}

- (id)speechControllerIdleOpacitySummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  [v3 speechControllerIdleOpacity];
  v4 = AXFormatFloatWithPercentage();

  return v4;
}

@end