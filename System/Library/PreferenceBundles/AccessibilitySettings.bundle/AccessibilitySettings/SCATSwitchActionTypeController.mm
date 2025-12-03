@interface SCATSwitchActionTypeController
- (SCATSwitchActionTypeController)initWithSwitch:(id)switch;
- (id)actionStringForLongPress:(BOOL)press;
- (id)controllerForLongPress:(BOOL)press;
@end

@implementation SCATSwitchActionTypeController

- (SCATSwitchActionTypeController)initWithSwitch:(id)switch
{
  switchCopy = switch;
  v8.receiver = self;
  v8.super_class = SCATSwitchActionTypeController;
  v5 = [(SCATSwitchActionTypeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SCATSwitchActionTypeController *)v5 setStoredSwitch:switchCopy];
  }

  return v6;
}

- (id)actionStringForLongPress:(BOOL)press
{
  storedSwitch = [(SCATSwitchActionTypeController *)self storedSwitch];
  v5 = storedSwitch;
  if (press)
  {
    longPressAction = [storedSwitch longPressAction];
  }

  else
  {
    longPressAction = [storedSwitch action];
  }

  v7 = longPressAction;

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

- (id)controllerForLongPress:(BOOL)press
{
  pressCopy = press;
  v5 = [SCATSwitchActionsController alloc];
  storedSwitch = [(SCATSwitchActionTypeController *)self storedSwitch];
  v7 = [(SCATSwitchActionsController *)v5 initWithSwitch:storedSwitch];

  v8 = AXParameterizedLocalizedString();
  [(SCATSwitchActionsController *)v7 setTitle:v8];

  [(SCATSwitchActionsController *)v7 setSelectLongPress:pressCopy];

  return v7;
}

@end