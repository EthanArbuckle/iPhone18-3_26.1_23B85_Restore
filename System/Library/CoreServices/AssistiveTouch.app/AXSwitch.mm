@interface AXSwitch
- (BOOL)hasSelectAction;
- (BOOL)hasStepAction;
@end

@implementation AXSwitch

- (BOOL)hasStepAction
{
  v3 = [(AXSwitch *)self action]== 104 || [(AXSwitch *)self action]== 105;
  v4 = +[AXSettings sharedInstance];
  assistiveTouchLongPressEnabled = [v4 assistiveTouchLongPressEnabled];

  v6 = assistiveTouchLongPressEnabled | v3;
  if (assistiveTouchLongPressEnabled && !v3)
  {
    v6 = [(AXSwitch *)self longPressAction]== 104 || [(AXSwitch *)self longPressAction]== 105;
  }

  return v6 & 1;
}

- (BOOL)hasSelectAction
{
  v3 = [(AXSwitch *)self action]== 103 || [(AXSwitch *)self action]== 109;
  v4 = +[AXSettings sharedInstance];
  assistiveTouchLongPressEnabled = [v4 assistiveTouchLongPressEnabled];

  v6 = assistiveTouchLongPressEnabled | v3;
  if (assistiveTouchLongPressEnabled && !v3)
  {
    v6 = [(AXSwitch *)self longPressAction]== 103 || [(AXSwitch *)self longPressAction]== 109;
  }

  return v6 & 1;
}

@end