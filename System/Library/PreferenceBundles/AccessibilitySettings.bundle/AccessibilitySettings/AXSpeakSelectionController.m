@interface AXSpeakSelectionController
- (id)highlightWord:(id)a3;
- (id)quickSpeakEnabled:(id)a3;
- (id)specifiers;
- (void)_reloadQuickSpeakHighlightSpecifier;
- (void)loadView;
- (void)setQuickSpeakEnabled:(id)a3 specifier:(id)a4;
@end

@implementation AXSpeakSelectionController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AXSpeakSelectionController *)self loadSpecifiersFromPlistName:@"SpeakSelectionSettings" target:self];
    [(AXSpeakSelectionController *)self setAllSpecifiersUnsearchable:v5];
    v6 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
    *&self->AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)quickSpeakEnabled:(id)a3
{
  v3 = _AXSQuickSpeakEnabled() != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setQuickSpeakEnabled:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];

  _AXSQuickSpeakSetEnabled();
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
  v3 = [(AXSpeakSelectionController *)self specifierForID:@"QuickSpeakHighlight"];
  [(AXSpeakSelectionController *)self reloadSpecifier:v3];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = AXSpeakSelectionController;
  [(AXSpeakSelectionController *)&v4 loadView];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_reloadQuickSpeakHighlightSpecifier" name:kAXSQuickSpeakHighlightTextEnabledNotification object:0];
}

@end