@interface PasswordSharingStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC18SharingViewService34PasswordSharingStartViewController)initWithContentView:(id)view;
- (void)configureUIElementsDefault;
- (void)configureUIElementsForHotspot;
- (void)handleAllowButtonPressed:(id)pressed;
- (void)handleDismissButtonPressed:(id)pressed;
- (void)handleTapOutsideView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PasswordSharingStartViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006B68C();
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PasswordSharingStartViewController;
  [(SVSBaseViewController *)&v4 viewDidAppear:appear];
  if ([self->super._mainController autoGrant])
  {
    if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(PasswordSharingStartViewController *)self handleAllowButtonPressed:0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7.receiver = self;
  v7.super_class = PasswordSharingStartViewController;
  [(PasswordSharingStartViewController *)&v7 viewDidDisappear:disappearCopy];
  mainController = self->super._mainController;
  self->super._mainController = 0;

  v6 = *(&self->_peerDisplayName + 1);
  *(&self->_peerDisplayName + 1) = 0;
}

- (_TtC18SharingViewService34PasswordSharingStartViewController)initWithContentView:(id)view
{
  *&self->presenter[OBJC_IVAR____TtC18SharingViewService34PasswordSharingStartViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService34PasswordSharingStartViewController_type] = 0;
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService34PasswordSharingStartViewController_activityIndicatorTitle];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PasswordSharingStartViewController();
  return [(PasswordSharingStartViewController *)&v7 initWithContentView:view];
}

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:1];
}

- (void)handleDismissButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)handleAllowButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:0];

  if (![self->super._mainController touchDelayActive] || (objc_msgSend(self->super._mainController, "autoGrant") & 1) != 0)
  {
    [*(&self->_acceptButton + 1) setHidden:0];
    [*(&self->_acceptButton + 1) startAnimating];
    [*(&self->_imageView + 1) setHidden:0];
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setHidden:1];
    testMode = [self->super._mainController testMode];
    if (testMode <= 5)
    {
      if (((1 << testMode) & 0x16) != 0)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1000FE934;
        v8[3] = &unk_100195A70;
        v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
        selfCopy = self;
        v7 = v9;
        dispatch_source_set_event_handler(v7, v8);
        SFDispatchTimerSet();
        dispatch_resume(v7);

        goto LABEL_17;
      }

      if (((1 << testMode) & 0x28) != 0)
      {
        [self->super._mainController showDoneUI:4294960596];
        goto LABEL_17;
      }
    }

    [self->super._mainController _sessionStart];
    goto LABEL_17;
  }

  if (dword_1001BE938 <= 50 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_17:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  view = [touch view];
  view2 = [recognizerCopy view];

  return view == view2;
}

- (void)configureUIElementsForHotspot
{
  if (!*(&self->_dispatchQueue + 1) || [self->super._mainController testMode] == 4 || objc_msgSend(self->super._mainController, "testMode") == 5)
  {
    v3 = @"John Appleseed";
  }

  else
  {
    v3 = *(&self->_dispatchQueue + 1);
  }

  v20 = v3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"HOTSPOT_SHARING_ACTIVITY" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_activityIndicatorView + 1) setText:v5];

  v13 = sub_100127B60(@"HOTSPOT_SHARING_DETAIL_FORMAT", v6, v7, v8, v9, v10, v11, v12, v20);
  [*(&self->_activityLabel + 1) setText:v13];

  v14 = [UIImage imageNamed:@"Hotspot.png"];
  [*(&self->_infoLabel + 1) setImage:v14];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"HOTSPOT_SHARING_TITLE" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_progressView + 1) setText:v16];

  v17 = *(&self->super._didReactivateContainerViewAfterLayingOut + 1);
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"HOTSPOT_SHARING_BUTTON" value:&stru_100195CA8 table:@"Localizable"];
  [v17 setTitle:v19 forState:0];
}

- (void)configureUIElementsDefault
{
  CFStringGetTypeID();
  v3 = CFDictionaryGetTypedValue();
  if (!v3 && dword_1001BE938 <= 50 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = SFIsGreenTeaDevice();
  v5 = @"WIFI_SHARING_TITLE";
  if (v4)
  {
    v5 = @"WIFI_SHARING_TITLE_WLAN";
  }

  v6 = v5;
  if ([self->super._mainController testMode] == 2 || objc_msgSend(self->super._mainController, "testMode") == 6)
  {
    v7 = SFIsGreenTeaDevice();
    v8 = @"WIFI_SHARING_DETAIL_FORMAT";
    if (v7)
    {
      v8 = @"WIFI_SHARING_DETAIL_FORMAT_WLAN";
    }

    v16 = v8;
    if (BYTE1(self->_titleLabel) == 1)
    {
      v17 = [NSString stringWithFormat:@"%@_DEVICE", v16];

      v16 = v17;
    }

    sub_100127B60(v16, v9, v10, v11, v12, v13, v14, v15, @"WiFiNetwork");
    v39 = LABEL_15:;
    goto LABEL_16;
  }

  if ([self->super._mainController testMode] == 7)
  {

    v16 = +[NSBundle mainBundle];
    v39 = [(__CFString *)v16 localizedStringForKey:@"WIFI_SHARING_DETAIL_LONG" value:&stru_100195CA8 table:@"Localizable"];
    v6 = @"WIFI_SHARING_TITLE_LONG";
  }

  else
  {
    v25 = *(&self->_dispatchQueue + 1);
    v26 = SFIsGreenTeaDevice();
    if (v3)
    {
      v27 = v25 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v30 = @"WIFI_SHARING_DETAIL_FORMAT";
      if (v26)
      {
        v30 = @"WIFI_SHARING_DETAIL_FORMAT_WLAN";
      }

      v16 = v30;
      if (BYTE1(self->_titleLabel) == 1)
      {
        v38 = [NSString stringWithFormat:@"%@_DEVICE", v16];

        v16 = v38;
      }

      sub_100127B60(v16, v31, v32, v33, v34, v35, v36, v37, v3);
      goto LABEL_15;
    }

    v28 = @"WIFI_SHARING_DETAIL_GENERIC";
    if (v26)
    {
      v28 = @"WIFI_SHARING_DETAIL_GENERIC_WLAN";
    }

    v29 = v28;
    v16 = +[NSBundle mainBundle];
    v39 = [(__CFString *)v16 localizedStringForKey:v29 value:&stru_100195CA8 table:@"Localizable"];
  }

LABEL_16:

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"WIFI_SHARING_ACTIVITY" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_activityIndicatorView + 1) setText:v19];

  [*(&self->_activityLabel + 1) setText:v39];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:v6 value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_progressView + 1) setText:v21];

  v22 = *(&self->super._didReactivateContainerViewAfterLayingOut + 1);
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"WIFI_SHARING_BUTTON" value:&stru_100195CA8 table:@"Localizable"];
  [v22 setTitle:v24 forState:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PasswordSharingStartViewController;
  [(SVSBaseViewController *)&v8 viewWillAppear:appear];
  _remoteViewControllerProxy = [self->super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  if ([self->super._mainController hotspot])
  {
    [(PasswordSharingStartViewController *)self configureUIElementsForHotspot];
  }

  else
  {
    [(PasswordSharingStartViewController *)self configureUIElementsDefault];
  }

  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v5 setDelegate:self];
  [v5 setNumberOfTapsRequired:1];
  [v5 setCancelsTouchesInView:0];
  view = [(PasswordSharingStartViewController *)self view];
  [view addGestureRecognizer:v5];

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end