@interface STKSetupCallAlertViewController
- (BOOL)validateAction:(id)a3;
- (id)alertText;
- (id)newBottomBar;
- (void)dial:(id)a3;
- (void)dismiss:(id)a3;
@end

@implementation STKSetupCallAlertViewController

- (BOOL)validateAction:(id)a3
{
  v3 = a3;
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
  v8 = [(STKSetupCallAlertViewController *)self view];
  [v8 bounds];
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

- (void)dismiss:(id)a3
{
  v4 = [(STKBaseAlertViewController *)self sessionAction];
  [v4 sendResponse:3];

  [(STKTextAlertViewController *)self dismiss];
}

- (void)dial:(id)a3
{
  v4 = [(STKBaseAlertViewController *)self sessionAction];
  v5 = [v4 sessionData];
  v7 = [v5 phoneNumber];

  if (v7)
  {
    v6 = [(STKBaseAlertViewController *)self sessionAction];
    [v6 sendResponse:0];
  }

  [(STKTextAlertViewController *)self dismiss];
}

- (id)alertText
{
  v28.receiver = self;
  v28.super_class = STKSetupCallAlertViewController;
  v3 = [(STKTextAlertViewController *)&v28 alertText];
  if (!v3)
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = [v4 currentCalls];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(STKBaseAlertViewController *)self sessionAction];
      v8 = [v7 sessionData];
      v9 = [v8 isHighPriority];

      v10 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
      v11 = v10;
      if (v9)
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

    v3 = [v10 localizedStringForKey:v12 value:&stru_100018670 table:@"SIMToolkitUI"];
  }

  v13 = [(STKBaseAlertViewController *)self sessionAction];
  v14 = [v13 sessionData];
  v15 = [v14 simLabel];

  if (v15)
  {
    v16 = [(STKBaseAlertViewController *)self sessionAction];
    v17 = [v16 sessionData];
    v18 = [v17 simLabel];
    v19 = v18;
    v20 = &stru_100018670;
    if (v3)
    {
      v20 = v3;
    }

    v21 = [NSString stringWithFormat:@"(%@) %@", v18, v20];
  }

  else
  {
    v22 = &stru_100018670;
    if (v3)
    {
      v22 = v3;
    }

    v21 = [NSString stringWithFormat:@"%@", v22];
  }

  v23 = [(STKBaseAlertViewController *)self sessionAction];
  v24 = [v23 sessionData];
  v25 = [v24 phoneNumber];

  if (v25)
  {
    v26 = [v21 stringByAppendingFormat:@"\n%@", v25];

    v21 = v26;
  }

  return v21;
}

@end