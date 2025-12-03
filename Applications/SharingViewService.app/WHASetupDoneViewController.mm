@interface WHASetupDoneViewController
- (void)handleActionButton:(id)button;
- (void)handleDismissButton:(id)button;
- (void)handleReportBugButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WHASetupDoneViewController

- (void)handleReportBugButton:(id)button
{
  buttonCopy = button;
  v25[0] = @"Classification";
  v25[1] = @"ComponentID";
  v26[0] = @"Serious Bug";
  v26[1] = @"768684";
  v25[2] = @"ComponentName";
  v25[3] = @"ComponentVersion";
  v26[2] = @"Proximity Setup";
  v26[3] = @"all";
  v25[4] = @"ExtensionIdentifiers";
  v25[5] = @"Reproducibility";
  v26[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v26[5] = @"I Didn't Try";
  v25[6] = @"Title";
  if (*(&self->_status + 1))
  {
    v19 = *(&self->_status + 1);
  }

  else
  {
    v19 = *(&self->_infoLabel + 1);
  }

  v5 = NSPrintF();
  v26[6] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:7, v19];

  v7 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = [NSURLQueryItem queryItemWithName:v13 value:v14];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v16 setQueryItems:v7];
  v17 = UIApp;
  v18 = [v16 URL];
  [v17 openURL:v18 withCompletionHandler:0];

  if (dword_1001BF408 <= 50 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)handleActionButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = *(&self->_infoLabel + 1) - 301000;
  if (v5 > 0xF)
  {
    v7 = @"prefs:root";
    v6 = 5;
  }

  else
  {
    v6 = dword_100170F90[v5];
    v7 = *(&off_100195B88 + v5);
  }

  mainController = self->super._mainController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100133054;
  v9[3] = &unk_100195AC0;
  v10 = v7;
  [mainController dismiss:v6 completion:v9];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = WHASetupDoneViewController;
  [(WHASetupDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v30.receiver = self;
  v30.super_class = WHASetupDoneViewController;
  [(SVSBaseViewController *)&v30 viewWillAppear:appearCopy];
  v12 = *(&self->_infoLabel + 1);
  if (v12 <= 301004)
  {
    if (v12)
    {
      if (v12 == 301000)
      {
        v23 = sub_10012794C(@"Localizable", @"WIFI_NOT_CONNECTED_TITLE");
        [*(&self->_reportBugButton + 1) setText:v23];

        v17 = @"WIFI_NOT_CONNECTED_DETAIL_WHA";
      }

      else
      {
        if (v12 != 301004)
        {
          goto LABEL_22;
        }

        v16 = sub_10012794C(@"Localizable", @"WIFI_INCOMPATIBLE_TITLE");
        [*(&self->_reportBugButton + 1) setText:v16];

        v17 = @"WIFI_INCOMPATIBLE_DETAIL_WHA";
      }

      v13 = sub_10012794C(@"Localizable", v17);
      [*(&self->_titleLabel + 1) setText:v13];
LABEL_20:

      goto LABEL_21;
    }

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"WHA_SUCCESS_TITLE" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_reportBugButton + 1) setText:v19];

    v20 = *(&self->super._didReactivateContainerViewAfterLayingOut + 1);
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"DONE" value:&stru_100195CA8 table:@"Localizable"];
    [v20 setTitle:v22 forState:0];
  }

  else
  {
    if ((v12 - 301005) > 0xA)
    {
      goto LABEL_22;
    }

    if (((1 << (v12 + 51)) & 0x425) == 0)
    {
      if (v12 == 301006)
      {
        v24 = sub_10012794C(@"Localizable", @"ICLOUD_INCOMPATIBLE_TITLE");
        [*(&self->_reportBugButton + 1) setText:v24];

        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"ICLOUD_INCOMPATIBLE_DETAIL_WHA" value:&stru_100195CA8 table:@"Localizable"];
        [*(&self->_titleLabel + 1) setText:v14];
        goto LABEL_19;
      }

      if (v12 == 301011)
      {
        v13 = [UIImage imageNamed:@"iCloudIcon.png"];
        v14 = +[UIScreen mainScreen];
        [v14 scale];
        v15 = [v13 _applicationIconImageForFormat:2 precomposed:1 scale:?];
        [*(&self->_doneButton + 1) setImage:v15];

LABEL_19:
        goto LABEL_20;
      }

LABEL_22:
      v26 = sub_100127B60(@"SETUP_FAILED_FORMAT", v5, v6, v7, v8, v9, v10, v11, *(&self->_infoLabel + 1));
      [*(&self->_reportBugButton + 1) setText:v26];

      v27 = *(&self->super._didReactivateContainerViewAfterLayingOut + 1);
      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"OK_BUTTON_TITLE" value:&stru_100195CA8 table:@"Localizable"];
      [v27 setTitle:v29 forState:0];

      [*(&self->_imageView + 1) setHidden:IsAppleInternalBuild() == 0];
    }
  }

LABEL_21:
  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end