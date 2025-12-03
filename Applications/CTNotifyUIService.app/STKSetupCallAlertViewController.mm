@interface STKSetupCallAlertViewController
- (BOOL)validateAction:(id)action;
- (id)alertText;
- (id)newBottomBar;
- (void)dial:(id)dial;
- (void)dismiss:(id)dismiss;
@end

@implementation STKSetupCallAlertViewController

- (BOOL)validateAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)newBottomBar
{
  v3 = [[TPBottomDoubleButtonBar alloc] initWithDefaultSizeForOrientation:{-[STKSetupCallAlertViewController interfaceOrientation](self, "interfaceOrientation")}];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  view = [(STKSetupCallAlertViewController *)self view];
  [view bounds];
  v10 = v9;
  [v3 bounds];
  v12 = v10 - v11;

  [v3 setFrame:{0.0, v12, v5, v7}];
  v13 = [TPButton alloc];
  v14 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v15 = [v14 localizedStringForKey:@"DISMISS_SIM_TOOLKIT" value:&stru_100018670 table:@"SIMToolkitUI"];
  v16 = [v13 initWithTitle:v15 icon:0 color:4 frame:{23.0, 24.0, 136.0, 47.0}];

  [v16 setBlursBackground:0];
  v17 = [UIColor colorWithRed:0.105882353 green:0.533333333 blue:0.91372549 alpha:1.0];
  [v16 setTitleColor:v17 forState:0];

  [v16 setAutoresizingMask:0];
  [v16 setContentMode:3];
  [v16 addTarget:self action:"dismiss:" forControlEvents:64];
  [v3 setButton:v16 andStyle:1];
  [v16 setTitleVerticalOffset:-1.0];
  v18 = [TPButton alloc];
  v19 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v20 = [v19 localizedStringForKey:@"DIAL" value:&stru_100018670 table:@"SIMToolkitUI"];
  v21 = [v18 initWithTitle:v20 icon:0 color:4 frame:{161.0, 24.0, 136.0, 47.0}];

  [v21 setBlursBackground:0];
  v22 = [UIColor colorWithRed:0.105882353 green:0.533333333 blue:0.91372549 alpha:1.0];
  [v21 setTitleColor:v22 forState:0];

  [v21 setAutoresizingMask:0];
  [v21 setContentMode:3];
  [v21 addTarget:self action:"dial:" forControlEvents:64];
  [v3 setButton2:v21 andStyle:1];
  [v21 setTitleVerticalOffset:-1.0];

  return v3;
}

- (void)dismiss:(id)dismiss
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  [sessionAction sendResponse:3];

  [(STKTextAlertViewController *)self dismiss];
}

- (void)dial:(id)dial
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  sessionData = [sessionAction sessionData];
  phoneNumber = [sessionData phoneNumber];

  if (phoneNumber)
  {
    sessionAction2 = [(STKBaseAlertViewController *)self sessionAction];
    [sessionAction2 sendResponse:0];
  }

  [(STKTextAlertViewController *)self dismiss];
}

- (id)alertText
{
  v28.receiver = self;
  v28.super_class = STKSetupCallAlertViewController;
  alertText = [(STKTextAlertViewController *)&v28 alertText];
  if (!alertText)
  {
    v4 = +[TUCallCenter sharedInstance];
    currentCalls = [v4 currentCalls];
    v6 = [currentCalls count];

    if (v6)
    {
      sessionAction = [(STKBaseAlertViewController *)self sessionAction];
      sessionData = [sessionAction sessionData];
      isHighPriority = [sessionData isHighPriority];

      v10 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v11 = v10;
      if (isHighPriority)
      {
        v12 = @"SIMTK_HIGH_PRIORITY_CALL_ALERT";
      }

      else
      {
        v12 = @"SIMTK_MEDIUM_PRIORITY_CALL_ALERT";
      }
    }

    else
    {
      v10 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v11 = v10;
      v12 = @"SIMTK_CALL_ALERT";
    }

    alertText = [v10 localizedStringForKey:v12 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  sessionAction2 = [(STKBaseAlertViewController *)self sessionAction];
  sessionData2 = [sessionAction2 sessionData];
  simLabel = [sessionData2 simLabel];

  if (simLabel)
  {
    sessionAction3 = [(STKBaseAlertViewController *)self sessionAction];
    sessionData3 = [sessionAction3 sessionData];
    simLabel2 = [sessionData3 simLabel];
    v19 = simLabel2;
    v20 = &stru_100018670;
    if (alertText)
    {
      v20 = alertText;
    }

    v21 = [NSString stringWithFormat:@"(%@) %@", simLabel2, v20];
  }

  else
  {
    v22 = &stru_100018670;
    if (alertText)
    {
      v22 = alertText;
    }

    v21 = [NSString stringWithFormat:@"%@", v22];
  }

  sessionAction4 = [(STKBaseAlertViewController *)self sessionAction];
  sessionData4 = [sessionAction4 sessionData];
  phoneNumber = [sessionData4 phoneNumber];

  if (phoneNumber)
  {
    v26 = [v21 stringByAppendingFormat:@"\n%@", phoneNumber];

    v21 = v26;
  }

  return v21;
}

@end