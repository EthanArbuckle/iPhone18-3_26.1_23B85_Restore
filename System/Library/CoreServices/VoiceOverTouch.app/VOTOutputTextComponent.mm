@interface VOTOutputTextComponent
- (void)_handlePerformAction:(id)action;
- (void)handleEvent:(id)event;
@end

@implementation VOTOutputTextComponent

- (void)handleEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy objectForIndex:1];
  unsignedIntValue = [v4 unsignedIntValue];

  if (unsignedIntValue == 6)
  {
    [(VOTOutputTextComponent *)self _handlePerformAction:eventCopy];
  }
}

- (void)_handlePerformAction:(id)action
{
  actionCopy = action;
  v7 = [actionCopy objectForIndex:14];
  v5 = [objc_allocWithZone(AXIndexMap) init];
  [v5 setObject:v7 forIndex:14];
  v6 = [actionCopy objectForIndex:13];

  [v5 setObject:v6 forIndex:13];
  [(VOTOutputComponent *)self notifyActionComplete:v5];
}

@end