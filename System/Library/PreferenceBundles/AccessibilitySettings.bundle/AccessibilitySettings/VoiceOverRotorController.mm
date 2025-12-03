@interface VoiceOverRotorController
- (BOOL)isItemEnabled:(id)enabled;
- (id)itemAfterTogglingEnabledState:(id)state;
- (id)titleForItem:(id)item;
@end

@implementation VoiceOverRotorController

- (id)titleForItem:(id)item
{
  v4 = [item objectForKey:@"RotorItem"];
  v5 = [(VoiceOverRotorController *)self stringForSearchRotorItem:v4];

  return v5;
}

- (BOOL)isItemEnabled:(id)enabled
{
  v3 = [enabled objectForKey:@"Enabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)itemAfterTogglingEnabledState:(id)state
{
  v3 = [state mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"Enabled"];
  bOOLValue = [v4 BOOLValue];

  v6 = [NSNumber numberWithInt:bOOLValue ^ 1];
  [v3 setObject:v6 forKeyedSubscript:@"Enabled"];

  return v3;
}

@end