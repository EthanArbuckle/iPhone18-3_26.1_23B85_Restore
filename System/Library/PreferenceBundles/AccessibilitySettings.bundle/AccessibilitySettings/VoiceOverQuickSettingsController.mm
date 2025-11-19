@interface VoiceOverQuickSettingsController
- (BOOL)isItemEnabled:(id)a3;
- (id)identifierForItem:(id)a3;
- (id)itemAfterTogglingEnabledState:(id)a3;
- (id)itemsFromPreferences;
- (id)titleForItem:(id)a3;
- (void)updateItemsInPreferences:(id)a3;
@end

@implementation VoiceOverQuickSettingsController

- (id)itemsFromPreferences
{
  v2 = +[VOSSettingsHelper sharedInstance];
  v3 = [v2 userSettingsItems];

  return v3;
}

- (void)updateItemsInPreferences:(id)a3
{
  v3 = a3;
  v4 = +[VOSSettingsHelper sharedInstance];
  [v4 saveUserSettingsItems:v3];
}

- (id)titleForItem:(id)a3
{
  v3 = a3;
  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [v3 objectForKey:@"Item"];

  v6 = [v4 nameForItem:v5];

  return v6;
}

- (id)identifierForItem:(id)a3
{
  v3 = a3;
  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [v3 objectForKey:@"Item"];

  v6 = [v4 identifierForItem:v5];

  return v6;
}

- (BOOL)isItemEnabled:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Included"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)itemAfterTogglingEnabledState:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKeyedSubscript:@"Included"];

  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 BOOLValue] ^ 1);
  [v4 setObject:v6 forKeyedSubscript:@"Included"];

  return v4;
}

@end