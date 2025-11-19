@interface STKNotifyAlertViewController
- (BOOL)validateAction:(id)a3;
- (id)alertText;
@end

@implementation STKNotifyAlertViewController

- (BOOL)validateAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)alertText
{
  v21.receiver = self;
  v21.super_class = STKNotifyAlertViewController;
  v3 = [(STKTextAlertViewController *)&v21 alertText];
  if (!v3)
  {
    v4 = [(STKBaseAlertViewController *)self sessionAction];
    v5 = [v4 sessionData];
    v6 = [v5 notifyType];

    v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v8 = v7;
    if ((v6 - 2) > 3)
    {
      v9 = @"SIMTK_SMS_MESSAGE_SENT";
    }

    else
    {
      v9 = *(&off_100018630 + (v6 - 2));
    }

    v3 = [v7 localizedStringForKey:v9 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  v10 = [(STKBaseAlertViewController *)self sessionAction];
  v11 = [v10 sessionData];
  v12 = [v11 simLabel];

  if (v12)
  {
    v13 = [(STKBaseAlertViewController *)self sessionAction];
    v14 = [v13 sessionData];
    v15 = [v14 simLabel];
    v16 = v15;
    v17 = &stru_100018670;
    if (v3)
    {
      v17 = v3;
    }

    v18 = [NSString stringWithFormat:@"(%@) %@", v15, v17];
  }

  else
  {
    v19 = &stru_100018670;
    if (v3)
    {
      v19 = v3;
    }

    v18 = [NSString stringWithFormat:@"%@", v19];
  }

  return v18;
}

@end