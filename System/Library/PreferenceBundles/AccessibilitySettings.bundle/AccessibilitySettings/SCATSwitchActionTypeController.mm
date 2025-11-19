@interface SCATSwitchActionTypeController
- (SCATSwitchActionTypeController)initWithSwitch:(id)a3;
- (id)actionStringForLongPress:(BOOL)a3;
- (id)controllerForLongPress:(BOOL)a3;
@end

@implementation SCATSwitchActionTypeController

- (SCATSwitchActionTypeController)initWithSwitch:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCATSwitchActionTypeController;
  v5 = [(SCATSwitchActionTypeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SCATSwitchActionTypeController *)v5 setStoredSwitch:v4];
  }

  return v6;
}

- (id)actionStringForLongPress:(BOOL)a3
{
  v4 = [(SCATSwitchActionTypeController *)self storedSwitch];
  v5 = v4;
  if (a3)
  {
    v6 = [v4 longPressAction];
  }

  else
  {
    v6 = [v4 action];
  }

  v7 = v6;

  if (v7)
  {
    SCATLocStringForAction();
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v8 = ;

  return v8;
}

- (id)controllerForLongPress:(BOOL)a3
{
  v3 = a3;
  v5 = [SCATSwitchActionsController alloc];
  v6 = [(SCATSwitchActionTypeController *)self storedSwitch];
  v7 = [(SCATSwitchActionsController *)v5 initWithSwitch:v6];

  v8 = AXParameterizedLocalizedString();
  [(SCATSwitchActionsController *)v7 setTitle:v8];

  [(SCATSwitchActionsController *)v7 setSelectLongPress:v3];

  return v7;
}

@end