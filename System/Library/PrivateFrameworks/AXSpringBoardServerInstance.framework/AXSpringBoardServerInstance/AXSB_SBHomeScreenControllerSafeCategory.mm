@interface AXSB_SBHomeScreenControllerSafeCategory
- (void)iconManager:(id)a3 launchIconForIconView:(id)a4 withActions:(id)a5 modifierFlags:(int64_t)a6;
@end

@implementation AXSB_SBHomeScreenControllerSafeCategory

- (void)iconManager:(id)a3 launchIconForIconView:(id)a4 withActions:(id)a5 modifierFlags:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[AXSpringBoardServerSideAppManager sharedInstance];
  if ([v13 _isDockIconView:v11])
  {
    v14 = [v13 _bundleIdentifierForIconView:v11];
    v15 = [v13 _appWithIdentifier:v14];
    v16 = [v13 dockIconActivationMode];
    switch(v16)
    {
      case 1:
        if ([v13 canLaunchAsPinnedApplicationForIconView:v11])
        {
          v17 = v13;
          v18 = v15;
          v19 = 1;
          goto LABEL_12;
        }

        break;
      case 2:
        if ([v13 canLaunchAsPinnedApplicationForIconView:v11])
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
        if ([v13 canLaunchAsFloatingApplicationForIconView:v11])
        {
          [v13 launchFloatingApplication:v15];
LABEL_17:
          [v13 setDockIconActivationMode:0];

          goto LABEL_18;
        }

        v20 = [v13 delegate];
        [v20 didFailToFloatAppForSideAppManager:v13];
LABEL_16:

        goto LABEL_17;
      default:
        v22.receiver = self;
        v22.super_class = AXSB_SBHomeScreenControllerSafeCategory;
        [(AXSB_SBHomeScreenControllerSafeCategory *)&v22 iconManager:v10 launchIconForIconView:v11 withActions:v12 modifierFlags:a6];
        goto LABEL_17;
    }

    v20 = [v13 delegate];
    [v20 didFailToPinAppForSideAppManager:v13];
    goto LABEL_16;
  }

  v21.receiver = self;
  v21.super_class = AXSB_SBHomeScreenControllerSafeCategory;
  [(AXSB_SBHomeScreenControllerSafeCategory *)&v21 iconManager:v10 launchIconForIconView:v11 withActions:v12 modifierFlags:a6];
LABEL_18:
}

@end