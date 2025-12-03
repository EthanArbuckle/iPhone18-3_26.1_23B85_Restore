@interface VoiceOverQuickSettingsController
- (BOOL)isItemEnabled:(id)enabled;
- (id)identifierForItem:(id)item;
- (id)itemAfterTogglingEnabledState:(id)state;
- (id)itemsFromPreferences;
- (id)titleForItem:(id)item;
- (void)updateItemsInPreferences:(id)preferences;
@end

@implementation VoiceOverQuickSettingsController

- (id)itemsFromPreferences
{
  v2 = +[VOSSettingsHelper sharedInstance];
  userSettingsItems = [v2 userSettingsItems];

  return userSettingsItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[VOSSettingsHelper sharedInstance];
  [v4 saveUserSettingsItems:preferencesCopy];
}

- (id)titleForItem:(id)item
{
  itemCopy = item;
  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [itemCopy objectForKey:@"Item"];

  v6 = [v4 nameForItem:v5];

  return v6;
}

- (id)identifierForItem:(id)item
{
  itemCopy = item;
  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [itemCopy objectForKey:@"Item"];

  v6 = [v4 identifierForItem:v5];

  return v6;
}

- (BOOL)isItemEnabled:(id)enabled
{
  v3 = [enabled objectForKeyedSubscript:@"Included"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)itemAfterTogglingEnabledState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy mutableCopy];
  v5 = [stateCopy objectForKeyedSubscript:@"Included"];

  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 BOOLValue] ^ 1);
  [v4 setObject:v6 forKeyedSubscript:@"Included"];

  return v4;
}

@end