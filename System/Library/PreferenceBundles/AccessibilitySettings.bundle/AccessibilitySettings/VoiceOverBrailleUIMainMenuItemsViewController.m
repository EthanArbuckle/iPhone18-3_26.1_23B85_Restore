@interface VoiceOverBrailleUIMainMenuItemsViewController
- (BOOL)isItemEnabled:(id)a3;
- (id)identifierForItem:(id)a3;
- (id)itemAfterTogglingEnabledState:(id)a3;
- (id)itemsFromPreferences;
- (id)titleForItem:(id)a3;
- (void)updateItemsInPreferences:(id)a3;
@end

@implementation VoiceOverBrailleUIMainMenuItemsViewController

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIMainMenuItems];

  return v3;
}

- (void)updateItemsInPreferences:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchBrailleUIMainMenuItems:v3];
}

- (id)titleForItem:(id)a3
{
  v3 = [(VoiceOverBrailleUIMainMenuItemsViewController *)self identifierForItem:a3];
  v4 = settingsLocString(v3, @"BrailleUI");

  return v4;
}

- (id)identifierForItem:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ID"];
  v4 = [v3 integerValue];

  if ((v4 - 1) > 6)
  {
    return @"UNKNOWN_MAIN_MENU_ITEM";
  }

  else
  {
    return *(&off_2587E8 + (v4 - 1));
  }
}

- (BOOL)isItemEnabled:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"enabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)itemAfterTogglingEnabledState:(id)a3
{
  v4 = a3;
  LODWORD(self) = [(VoiceOverBrailleUIMainMenuItemsViewController *)self isItemEnabled:v4];
  v5 = [v4 mutableCopy];

  v6 = [NSNumber numberWithBool:self ^ 1];
  [v5 setObject:v6 forKeyedSubscript:@"enabled"];

  return v5;
}

@end