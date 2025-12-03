@interface BroadwayActivationStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BroadwayActivationStartViewController)initWithCoder:(id)coder;
- (void)animationDidComplete;
- (void)animationDidStart;
- (void)handleActivateButton:(id)button;
- (void)handleCompletedIfReady;
- (void)handleDismissButton:(id)button;
- (void)handleTapOutsideView:(id)view;
- (void)prepareForRetry;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BroadwayActivationStartViewController

- (void)animationDidComplete
{
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  BYTE1(self->_activationResult) = 1;

  [(BroadwayActivationStartViewController *)self handleCompletedIfReady];
}

- (void)animationDidStart
{
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:1];
}

- (void)handleCompletedIfReady
{
  if ((self->_activationResult & 0x10000) == 0)
  {
    if (*(&self->_activationStarted + 1) == 999 || (self->_activationResult & 0x100) == 0)
    {
      if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      BYTE2(self->_activationResult) = 1;
      mainController = self->super._mainController;
      v4 = *(&self->_activationStarted + 1);

      [mainController showCompletedUI:v4];
    }
  }
}

- (void)handleActivateButton:(id)button
{
  buttonCopy = button;
  if ((BYTE1(self->_activationCode) & 1) == 0)
  {
    if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    BYTE1(self->_activationCode) = 1;
    [*(&self->_dismissButton + 1) setHidden:1];
    [*(&self->_activateButton + 1) setHidden:0];
    [*(&self->_activityLabel + 1) startAnimating];
    containerView = [(SVSBaseViewController *)self containerView];
    [containerView setSwipeDismissible:0];

    if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
    {
      v9 = *(&self->_activityIndicatorView + 1);
      LogPrintF();
    }

    if ([self->super._mainController test] && objc_msgSend(self->super._mainController, "forcedActivationResult") != 999)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100121238;
      handler[3] = &unk_100195A70;
      v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      selfCopy = self;
      sharedInstance = v12;
      dispatch_source_set_event_handler(sharedInstance, handler);
      SFDispatchTimerSet();
      dispatch_resume(sharedInstance);
    }

    else
    {
      sharedInstance = [(objc_class *)off_1001BF058() sharedInstance];
      physicalCard = [self->super._mainController physicalCard];
      v8 = *(&self->_activityIndicatorView + 1);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100121298;
      v10[3] = &unk_100195610;
      v10[4] = self;
      [sharedInstance activatePhysicalCard:physicalCard withActivationCode:v8 forFeatureIdentifier:2 completion:v10];
    }
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (BYTE1(self->_activationCode))
  {
    return 0;
  }

  recognizerCopy = recognizer;
  view = [touch view];
  view2 = [recognizerCopy view];

  v4 = view == view2;
  return v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = BroadwayActivationStartViewController;
  [(BroadwayActivationStartViewController *)&v6 viewDidDisappear:disappearCopy];
  [*(&self->_cardViewHeight + 1) removeAnimationObserver:self];
  v5 = *(&self->_cardViewHeight + 1);
  *(&self->_cardViewHeight + 1) = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = BroadwayActivationStartViewController;
  [(SVSBaseViewController *)&v14 viewDidAppear:appear];
  if (BYTE1(self->_activationResult) == 1)
  {
    [(BroadwayActivationStartViewController *)self handleActivateButton:0];
  }

  else
  {
    physicalCard = [self->super._mainController physicalCard];
    nameOnCard = [physicalCard nameOnCard];
    v6 = [nameOnCard length];

    if (v6)
    {
      physicalCard2 = [self->super._mainController physicalCard];
      nameOnCard2 = [physicalCard2 nameOnCard];
      v9 = nameOnCard2;
      if (nameOnCard2)
      {
        v10 = sub_1001218CC(nameOnCard2);
      }

      else
      {
        v11 = objc_opt_new();
        v10 = sub_1001218CC(v11);
      }

      [*(&self->_cardViewHeight + 1) setModelContents:v10];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100121AD4;
    v13[3] = &unk_100195AC0;
    v13[4] = self;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100121B30;
    v12[3] = &unk_1001957D0;
    v12[4] = self;
    [UIView animateWithDuration:65538 delay:v13 options:v12 animations:1.5 completion:0.7];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v25.receiver = self;
  v25.super_class = BroadwayActivationStartViewController;
  [(SVSBaseViewController *)&v25 viewWillAppear:appearCopy];
  if ((self->_activationResult & 0x100) == 0)
  {
    _remoteViewControllerProxy = [self->super._mainController _remoteViewControllerProxy];
    [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

    userInfo = [self->super._mainController userInfo];
    CFStringGetTypeID();
    v7 = CFDictionaryGetTypedValue();
    v8 = *(&self->_activityIndicatorView + 1);
    *(&self->_activityIndicatorView + 1) = v7;

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
    [v9 setDelegate:self];
    [v9 setNumberOfTapsRequired:1];
    [v9 setCancelsTouchesInView:0];
    view = [(BroadwayActivationStartViewController *)self view];
    [view addGestureRecognizer:v9];

    containerView = [(SVSBaseViewController *)self containerView];
    [containerView setSwipeDismissible:1];

    v12 = SFFontForTextStyleWithAdditionalSymbolicTraits();
    [*(&self->_cardView + 1) setFont:v12];

    [*(&self->_cardView + 1) setAdjustsFontForContentSizeCategory:0];
    v13 = SFFontForTextStyleWithAdditionalSymbolicTraits();
    titleLabel = [*(&self->_dismissButton + 1) titleLabel];
    [titleLabel setFont:v13];

    titleLabel2 = [*(&self->_dismissButton + 1) titleLabel];
    [titleLabel2 setAdjustsFontForContentSizeCategory:0];

    v16 = +[UIColor systemExtraLightGrayColor];
    [*(&self->_dismissButton + 1) setBackgroundColor:v16];

    v17 = SFFontForTextStyleWithAdditionalSymbolicTraits();
    [*(&self->_progressView + 1) setFont:v17];

    [*(&self->_progressView + 1) setAdjustsFontForContentSizeCategory:0];
    if (_UISolariumEnabled())
    {
      v18 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
      [*(&self->_dismissButton + 1) setConfiguration:v18];
      [*(&self->_titleLabel + 1) setConfiguration:v18];
    }

    [*(&self->_cardView + 1) setAlpha:0.0];
    [*(&self->_dismissButton + 1) setAlpha:0.0];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 URLForResource:@"Broadway" withExtension:@"mov"];

    v21 = +[NSBundle mainBundle];
    v22 = [v21 URLForResource:@"Broadway" withExtension:@"scnz"];

    [*(&self->_cardViewHeight + 1) addAnimationObserver:self];
    if (SFDeviceModelCodeGet() == 1)
    {
      [*(&self->_cardViewHeight + 1) _setContinuousCornerRadius:34.0];
    }

    [*(&self->_cardViewHeight + 1) setVideoURL:v20 sceneURL:v22];
    [(SVSCardContainerView *)self->super._containerView frame];
    CGRectGetWidth(v26);
    [*(&self->_cardViewHeight + 1) videoSizePoints];
    [(SVSCardContainerView *)self->super._containerView frame];
    CGRectGetHeight(v27);
    [*(&self->_cardViewHeight + 1) videoSizePoints];
    [*(&self->_cardViewHeight + 1) videoSizePoints];
    [*(&self->_cardViewHeight + 1) videoSizePoints];
    UISizeRoundToViewScale();
    v24 = v23;
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setConstant:?];
    [*(&self->_cardViewWidth + 1) setConstant:v24];
    [*(&self->_cardViewHeight + 1) setPaused:0];
    if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)prepareForRetry
{
  BYTE1(self->_activationCode) = 0;
  *(&self->_activationStarted + 1) = 999;
  BYTE2(self->_activationResult) = 0;
}

- (BroadwayActivationStartViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BroadwayActivationStartViewController;
  result = [(BroadwayActivationStartViewController *)&v4 initWithCoder:coder];
  if (result)
  {
    *(&result->_activationStarted + 1) = 999;
  }

  return result;
}

@end