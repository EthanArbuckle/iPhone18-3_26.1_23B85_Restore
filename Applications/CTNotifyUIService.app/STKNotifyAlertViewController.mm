@interface STKNotifyAlertViewController
- (BOOL)validateAction:(id)action;
- (id)alertText;
@end

@implementation STKNotifyAlertViewController

- (BOOL)validateAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)alertText
{
  v21.receiver = self;
  v21.super_class = STKNotifyAlertViewController;
  alertText = [(STKTextAlertViewController *)&v21 alertText];
  if (!alertText)
  {
    sessionAction = [(STKBaseAlertViewController *)self sessionAction];
    sessionData = [sessionAction sessionData];
    notifyType = [sessionData notifyType];

    v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v8 = v7;
    if ((notifyType - 2) > 3)
    {
      v9 = @"SIMTK_SMS_MESSAGE_SENT";
    }

    else
    {
      v9 = *(&off_100018630 + (notifyType - 2));
    }

    alertText = [v7 localizedStringForKey:v9 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  sessionAction2 = [(STKBaseAlertViewController *)self sessionAction];
  sessionData2 = [sessionAction2 sessionData];
  simLabel = [sessionData2 simLabel];

  if (simLabel)
  {
    sessionAction3 = [(STKBaseAlertViewController *)self sessionAction];
    sessionData3 = [sessionAction3 sessionData];
    simLabel2 = [sessionData3 simLabel];
    v16 = simLabel2;
    v17 = &stru_100018670;
    if (alertText)
    {
      v17 = alertText;
    }

    v18 = [NSString stringWithFormat:@"(%@) %@", simLabel2, v17];
  }

  else
  {
    v19 = &stru_100018670;
    if (alertText)
    {
      v19 = alertText;
    }

    v18 = [NSString stringWithFormat:@"%@", v19];
  }

  return v18;
}

@end