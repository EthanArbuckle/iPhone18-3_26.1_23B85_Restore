@interface AXSB_SBHomeScreenControllerSafeCategory
- (void)iconManager:(id)manager launchIconForIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags;
@end

@implementation AXSB_SBHomeScreenControllerSafeCategory

- (void)iconManager:(id)manager launchIconForIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags
{
  managerCopy = manager;
  viewCopy = view;
  actionsCopy = actions;
  v13 = +[AXSpringBoardServerSideAppManager sharedInstance];
  if ([v13 _isDockIconView:viewCopy])
  {
    v14 = [v13 _bundleIdentifierForIconView:viewCopy];
    v15 = [v13 _appWithIdentifier:v14];
    dockIconActivationMode = [v13 dockIconActivationMode];
    switch(dockIconActivationMode)
    {
      case 1:
        if ([v13 canLaunchAsPinnedApplicationForIconView:viewCopy])
        {
          v17 = v13;
          v18 = v15;
          v19 = 1;
          goto LABEL_12;
        }

        break;
      case 2:
        if ([v13 canLaunchAsPinnedApplicationForIconView:viewCopy])
        {
          v17 = v13;
          v18 = v15;
          v19 = 0;
LABEL_12:
          [v17 launchPinnedApplication:v18 onLeadingSide:v19];
          goto LABEL_17;
        }

        break;
      case 3:
        if ([v13 canLaunchAsFloatingApplicationForIconView:viewCopy])
        {
          [v13 launchFloatingApplication:v15];
LABEL_17:
          [v13 setDockIconActivationMode:0];

          goto LABEL_18;
        }

        delegate = [v13 delegate];
        [delegate didFailToFloatAppForSideAppManager:v13];
LABEL_16:

        goto LABEL_17;
      default:
        v22.receiver = self;
        v22.super_class = AXSB_SBHomeScreenControllerSafeCategory;
        [(AXSB_SBHomeScreenControllerSafeCategory *)&v22 iconManager:managerCopy launchIconForIconView:viewCopy withActions:actionsCopy modifierFlags:flags];
        goto LABEL_17;
    }

    delegate = [v13 delegate];
    [delegate didFailToPinAppForSideAppManager:v13];
    goto LABEL_16;
  }

  v21.receiver = self;
  v21.super_class = AXSB_SBHomeScreenControllerSafeCategory;
  [(AXSB_SBHomeScreenControllerSafeCategory *)&v21 iconManager:managerCopy launchIconForIconView:viewCopy withActions:actionsCopy modifierFlags:flags];
LABEL_18:
}

@end