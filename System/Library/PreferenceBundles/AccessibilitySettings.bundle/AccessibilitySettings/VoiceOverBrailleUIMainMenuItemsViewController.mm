@interface VoiceOverBrailleUIMainMenuItemsViewController
- (BOOL)isItemEnabled:(id)enabled;
- (id)identifierForItem:(id)item;
- (id)itemAfterTogglingEnabledState:(id)state;
- (id)itemsFromPreferences;
- (id)titleForItem:(id)item;
- (void)updateItemsInPreferences:(id)preferences;
@end

@implementation VoiceOverBrailleUIMainMenuItemsViewController

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  voiceOverTouchBrailleUIMainMenuItems = [v2 voiceOverTouchBrailleUIMainMenuItems];

  return voiceOverTouchBrailleUIMainMenuItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverTouchBrailleUIMainMenuItems:preferencesCopy];
}

- (id)titleForItem:(id)item
{
  v3 = [(VoiceOverBrailleUIMainMenuItemsViewController *)self identifierForItem:item];
  v4 = settingsLocString(v3, @"BrailleUI");

  return v4;
}

- (id)identifierForItem:(id)item
{
  v3 = [item objectForKeyedSubscript:@"ID"];
  integerValue = [v3 integerValue];

  if ((integerValue - 1) > 6)
  {
    return @"UNKNOWN_MAIN_MENU_ITEM";
  }

  else
  {
    return *(&off_2587E8 + (integerValue - 1));
  }
}

- (BOOL)isItemEnabled:(id)enabled
{
  v3 = [enabled objectForKeyedSubscript:@"enabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)itemAfterTogglingEnabledState:(id)state
{
  stateCopy = state;
  LODWORD(self) = [(VoiceOverBrailleUIMainMenuItemsViewController *)self isItemEnabled:stateCopy];
  v5 = [stateCopy mutableCopy];

  v6 = [NSNumber numberWithBool:self ^ 1];
  [v5 setObject:v6 forKeyedSubscript:@"enabled"];

  return v5;
}

@end