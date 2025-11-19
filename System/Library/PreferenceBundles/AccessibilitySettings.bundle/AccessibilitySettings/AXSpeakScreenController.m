@interface AXSpeakScreenController
- (id)highlightWord:(id)a3;
- (id)showSpeechController:(id)a3;
- (id)speakThisEnabled:(id)a3;
- (id)specifiers;
- (id)speechControllerDoubleTapActionSummary:(id)a3;
- (id)speechControllerIdleOpacitySummary:(id)a3;
- (id)speechControllerLongPressActionSummary:(id)a3;
- (void)_reloadQuickSpeakHighlightSpecifier;
- (void)loadView;
- (void)setShowSpeechController:(id)a3 specifier:(id)a4;
- (void)setSpeakThisEnabled:(id)a3 specifier:(id)a4;
@end

@implementation AXSpeakScreenController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AXSpeakScreenController *)self loadSpecifiersFromPlistName:@"SpeakScreenSettings" target:self];
    [(AXSpeakScreenController *)self setAllSpecifiersUnsearchable:v5];
    v6 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
    *&self->AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)speakThisEnabled:(id)a3
{
  v3 = _AXSSpeakThisEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setSpeakThisEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  [v4 BOOLValue];
  _AXSSetSpeakThisEnabled();
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 showSpeechController];

    if (v7)
    {
      v8 = +[SpeakThisServices sharedInstance];
      [v8 showSpeechController:&__block_literal_global_72];
    }
  }
}

void __57__AXSpeakScreenController_setSpeakThisEnabled_specifier___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__SpeechController_setSpeakThisEnabled_specifier___block_invoke_cold_1(v2, v3);
    }
  }
}

- (id)showSpeechController:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 showSpeechController]);

  return v4;
}

- (void)setShowSpeechController:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setShowSpeechController:v4];
}

- (id)speechControllerLongPressActionSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXLocalizedTitleForSpeechControllerAction([v3 speechControllerLongPressAction]);

  return v4;
}

- (id)speechControllerDoubleTapActionSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXLocalizedTitleForSpeechControllerAction([v3 speechControllerDoubleTapAction]);

  return v4;
}

- (id)speechControllerIdleOpacitySummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 speechControllerIdleOpacity];
  v4 = AXFormatFloatWithPercentage();

  return v4;
}

- (id)highlightWord:(id)a3
{
  if (_AXSQuickSpeakHighlightTextEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)_reloadQuickSpeakHighlightSpecifier
{
  v3 = [(AXSpeakScreenController *)self specifierForID:@"QuickSpeakHighlight"];
  [(AXSpeakScreenController *)self reloadSpecifier:v3];
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = AXSpeakScreenController;
  [(AXSpeakScreenController *)&v14 loadView];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_reloadQuickSpeakHighlightSpecifier" name:kAXSQuickSpeakHighlightTextEnabledNotification object:0];

  objc_initWeak(&location, self);
  v4 = +[AXSettings sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __35__AXSpeakScreenController_loadView__block_invoke;
  v11[3] = &unk_255388;
  objc_copyWeak(&v12, &location);
  [v4 registerUpdateBlock:v11 forRetrieveSelector:"speechControllerDoubleTapAction" withListener:self];

  objc_destroyWeak(&v12);
  v5 = +[AXSettings sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __35__AXSpeakScreenController_loadView__block_invoke_2;
  v9[3] = &unk_255388;
  objc_copyWeak(&v10, &location);
  [v5 registerUpdateBlock:v9 forRetrieveSelector:"speechControllerLongPressAction" withListener:self];

  objc_destroyWeak(&v10);
  v6 = +[AXSettings sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __35__AXSpeakScreenController_loadView__block_invoke_3;
  v7[3] = &unk_255388;
  objc_copyWeak(&v8, &location);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:"speechControllerIdleOpacity" withListener:self];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __35__AXSpeakScreenController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierForID:@"SpeechControllerDoubleTapAction"];
  [WeakRetained reloadSpecifier:v1];
}

void __35__AXSpeakScreenController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierForID:@"SpeechControllerLongPressAction"];
  [WeakRetained reloadSpecifier:v1];
}

void __35__AXSpeakScreenController_loadView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierForID:@"SpeechControllerIdleOpacity"];
  [WeakRetained reloadSpecifier:v1];
}

@end