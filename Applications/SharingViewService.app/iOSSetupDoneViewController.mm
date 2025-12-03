@interface iOSSetupDoneViewController
- (void)handleDismissButton:(id)button;
- (void)handleReportBugButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation iOSSetupDoneViewController

- (void)handleReportBugButton:(id)button
{
  v23[0] = @"Classification";
  v23[1] = @"ComponentID";
  v24[0] = @"Serious Bug";
  v24[1] = @"768684";
  v23[2] = @"ComponentName";
  v23[3] = @"ComponentVersion";
  v24[2] = @"Proximity Setup";
  v24[3] = @"all";
  v23[4] = @"ExtensionIdentifiers";
  v23[5] = @"Keywords";
  v24[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v24[5] = @"758122";
  v24[6] = @"I Didn't Try";
  v23[6] = @"Reproducibility";
  v23[7] = @"Title";
  v17 = *(&self->_doneButton + 1);
  v3 = NSPrintF();
  v24[7] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:8, v17];

  v5 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [NSURLQueryItem queryItemWithName:v11 value:v12];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v14 setQueryItems:v5];
  v15 = UIApp;
  v16 = [v14 URL];
  [v15 openURL:v16 withCompletionHandler:0];

  if (dword_1001BE6C8 <= 50 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = iOSSetupDoneViewController;
  [(iOSSetupDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v30.receiver = self;
  v30.super_class = iOSSetupDoneViewController;
  [(SVSBaseViewController *)&v30 viewWillAppear:appearCopy];
  if (*(&self->_doneButton + 1))
  {
    v5 = NSErrorToOSStatus();
    v13 = sub_100127B60(@"SETUP_FAILED_FORMAT", v6, v7, v8, v9, v10, v11, v12, v5);
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v13];

    if (IsAppleInternalBuild())
    {
      v29 = *(&self->_doneButton + 1);
      v14 = NSPrintF();
      [*(&self->_titleLabel + 1) setText:{v14, v29}];
    }

    else
    {
      [*(&self->_titleLabel + 1) setHidden:1];
    }
  }

  else
  {
    v15 = [self->super.super._mainController otherDeviceClassCode] - 1;
    if (v15 > 6)
    {
      v16 = @"_IPHONE";
    }

    else
    {
      v16 = off_100195818[v15];
    }

    v17 = [@"IOS_SETUP_FINISH_TITLE" stringByAppendingString:v16];
    v18 = sub_10012794C(@"Localizable", v17);
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v18];

    myAppleID = [self->super.super._mainController myAppleID];
    v20 = [myAppleID length];
    v21 = @"IOS_SETUP_FINISH_INFO";
    if (!v20)
    {
      v21 = @"IOS_SETUP_FINISH_INFO_NO_ID";
    }

    v22 = v21;

    v23 = [self->super.super._mainController otherDeviceClassCode] - 1;
    if (v23 > 6)
    {
      v24 = @"_IPHONE";
    }

    else
    {
      v24 = off_100195818[v23];
    }

    v25 = [(__CFString *)v22 stringByAppendingString:v24];

    v26 = sub_10012794C(@"Localizable", v25);
    [*(&self->_titleLabel + 1) setText:v26];
  }

  if (IsAppleInternalBuild())
  {
    v27 = *(&self->_doneButton + 1) == 0;
  }

  else
  {
    v27 = 1;
  }

  [*(&self->_infoLabel + 1) setHidden:v27];
  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end