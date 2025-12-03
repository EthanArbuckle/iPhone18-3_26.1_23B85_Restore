@interface PasswordSharingDoneViewController
- (_TtC18SharingViewService33PasswordSharingDoneViewController)initWithContentView:(id)view;
- (void)configureUIElementsDefault;
- (void)configureUIElementsForHotspot;
- (void)handleDismissButton:(id)button;
- (void)handleReportBugButton:(id)button;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PasswordSharingDoneViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100028118();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100028848(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = PasswordSharingDoneViewController;
  [(PasswordSharingDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (_TtC18SharingViewService33PasswordSharingDoneViewController)initWithContentView:(id)view
{
  *&self->presenter[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_type] = 2;
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model];
  done = type metadata accessor for PasswordSharingDoneViewController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 12) = 0;
  v8.receiver = self;
  v8.super_class = done;
  return [(PasswordSharingDoneViewController *)&v8 initWithContentView:view];
}

- (void)handleReportBugButton:(id)button
{
  hotspot = [self->super._mainController hotspot];
  v5 = @"WiFi";
  if (hotspot)
  {
    v5 = @"Hotspot";
  }

  v20 = v5;
  v21 = *(&self->_titleLabel + 1);
  v6 = NSPrintF();
  v27[0] = @"Classification";
  v27[1] = @"ComponentID";
  v28[0] = @"Serious Bug";
  v28[1] = @"886090";
  v27[2] = @"ComponentName";
  v27[3] = @"ComponentVersion";
  v28[2] = @"WiFi Password Sharing";
  v28[3] = @"all";
  v27[4] = @"ExtensionIdentifiers";
  v27[5] = @"Reproducibility";
  v28[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v28[5] = @"I Didn't Try";
  v27[6] = @"Title";
  v28[6] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:7, v20, v21];
  v8 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [NSURLQueryItem queryItemWithName:v14 value:v15];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v17 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v17 setQueryItems:v8];
  v18 = UIApp;
  v19 = [v17 URL];
  [v18 openURL:v19 withCompletionHandler:0];

  if (dword_1001BE938 <= 50 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController ensureStoppedWithDismiss:1 reason:5];
}

- (void)configureUIElementsForHotspot
{
  if (*(&self->_titleLabel + 1))
  {
    v3 = [NSMutableString stringWithString:@"HOTSPOT_SHARING_FAILED_DETAIL"];
    if (IsAppleInternalBuild())
    {
      [v3 appendString:@"_FORMAT"];
    }

    v4 = [UIImage imageNamed:@"AlertCircle.png"];
    v5 = +[UIColor systemRedColor];
    v6 = [v4 _flatImageWithColor:v5];
    [*(&self->_doneButton + 1) setImage:v6];

    if (IsAppleInternalBuild())
    {
      v14 = sub_100127B60(v3, v7, v8, v9, v10, v11, v12, v13, *(&self->_titleLabel + 1));
      [*(&self->_imageView + 1) setText:v14];
    }

    else
    {
      v14 = +[NSBundle mainBundle];
      v24 = [v14 localizedStringForKey:v3 value:&stru_100195CA8 table:@"Localizable"];
      [*(&self->_imageView + 1) setText:v24];
    }

    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"HOTSPOT_SHARING_FAILED_TITLE" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_reportBugButton + 1) setText:v26];

    v27 = *(&self->super._didReactivateContainerViewAfterLayingOut + 1);
    v23 = +[NSBundle mainBundle];
    v28 = [v23 localizedStringForKey:@"OK_BUTTON_TITLE" value:&stru_100195CA8 table:@"Localizable"];
    [v27 setTitle:v28 forState:0];
  }

  else
  {
    v15 = [UIImage imageNamed:@"DoneCheck.png"];
    v16 = +[UIColor systemBlueColor];
    v17 = [v15 _flatImageWithColor:v16];
    [*(&self->_doneButton + 1) setImage:v17];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"HOTSPOT_SHARING_SUCCESS_DETAIL" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_imageView + 1) setText:v19];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"COMPLETE" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_reportBugButton + 1) setText:v21];

    v22 = *(&self->super._didReactivateContainerViewAfterLayingOut + 1);
    v3 = +[NSBundle mainBundle];
    v23 = [v3 localizedStringForKey:@"DONE" value:&stru_100195CA8 table:@"Localizable"];
    [v22 setTitle:v23 forState:0];
  }

  v29 = *(&self->_infoLabel + 1);

  [v29 setHidden:1];
}

- (void)configureUIElementsDefault
{
  if (*(&self->_titleLabel + 1))
  {
    v3 = [NSMutableString stringWithString:@"WIFI_SHARING_FAILED_DETAIL"];
    if (IsAppleInternalBuild())
    {
      [v3 appendString:@"_FORMAT"];
    }

    if (SFIsGreenTeaDevice())
    {
      [v3 appendString:@"_WLAN"];
    }

    v4 = [UIImage imageNamed:@"AlertCircle.png"];
    v5 = +[UIColor systemRedColor];
    v6 = [v4 _flatImageWithColor:v5];
    [*(&self->_doneButton + 1) setImage:v6];

    if (IsAppleInternalBuild())
    {
      v14 = sub_100127B60(v3, v7, v8, v9, v10, v11, v12, v13, *(&self->_titleLabel + 1));
      [*(&self->_imageView + 1) setText:v14];
    }

    else
    {
      v14 = +[NSBundle mainBundle];
      v21 = [v14 localizedStringForKey:v3 value:&stru_100195CA8 table:@"Localizable"];
      [*(&self->_imageView + 1) setText:v21];
    }

    v19 = @"OK_BUTTON_TITLE";
    v20 = @"WIFI_SHARING_FAILED_TITLE";
  }

  else
  {
    v3 = [NSMutableString stringWithString:@"WIFI_SHARING_SUCCESS_DETAIL"];
    if (SFIsGreenTeaDevice())
    {
      [v3 appendString:@"_WLAN"];
    }

    v15 = [UIImage imageNamed:@"DoneCheck.png"];
    v16 = +[UIColor systemBlueColor];
    v17 = [v15 _flatImageWithColor:v16];
    [*(&self->_doneButton + 1) setImage:v17];

    v14 = +[NSBundle mainBundle];
    v18 = [v14 localizedStringForKey:v3 value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_imageView + 1) setText:v18];

    v19 = @"DONE";
    v20 = @"COMPLETE";
  }

  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:v20 value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_reportBugButton + 1) setText:v23];

  v24 = *(&self->super._didReactivateContainerViewAfterLayingOut + 1);
  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:v19 value:&stru_100195CA8 table:@"Localizable"];
  [v24 setTitle:v26 forState:0];

  if (IsAppleInternalBuild() && *(&self->_status + 1) > 0.0)
  {
    text = [*(&self->_imageView + 1) text];
    v28 = [text stringByAppendingFormat:@" (internal: Duration = %f)", *(&self->_status + 1)];
    [*(&self->_imageView + 1) setText:v28];
  }

  v29 = *(&self->_infoLabel + 1);

  [v29 setHidden:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = PasswordSharingDoneViewController;
  [(SVSBaseViewController *)&v6 viewWillAppear:appearCopy];
  if ([self->super._mainController hotspot])
  {
    [(PasswordSharingDoneViewController *)self configureUIElementsForHotspot];
  }

  else
  {
    [(PasswordSharingDoneViewController *)self configureUIElementsDefault];
  }

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end