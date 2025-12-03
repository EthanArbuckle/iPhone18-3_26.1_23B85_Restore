@interface PHCallViewController
+ (double)_bottomBarBottomMarginForView:(id)view;
+ (double)_yOffsetForLoweredButtons;
+ (double)homeButtonOffsetForView:(id)view;
- (BOOL)isPresentingCustomMessageController;
- (BOOL)shouldShowActionTypeSendToVoicemail;
- (CGRect)sourceRectForDeclineWithMessagePopover;
- (CGRect)sourceRectForDeclineWithReminderPopover;
- (PHAlertController)failureAlertController;
- (PHCallViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PHInCallRootViewControllerProtocol)inCallRootViewController;
- (TUSenderIdentityClient)senderIdentityClient;
- (UIImage)frontmostCallProviderIcon;
- (id)gameControllerResponder;
- (id)imageForItemInBar:(id)bar withActionType:(int64_t)type;
- (void)activateProviderInBackgroundForCall:(id)call;
- (void)activateProviderInBackgroundWithBundleID:(id)d;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)configureDeclineWithMoreButton:(id)button forIncomingCall:(id)call;
- (void)configureDeclineWithReminderButton:(id)button declineWithMessageButton:(id)messageButton forIncomingCall:(id)call;
- (void)handleDismissedCallDisplayStyle;
- (void)obtainDismissalAssertionIfNeeded;
- (void)providersChangedForProviderManager:(id)manager;
- (void)punchOutToVoIPApplicationForCurrentCall;
- (void)releaseDismissalAssertion;
- (void)releaseDismissalAssertionIfNeeded;
- (void)setCurrentState:(unsigned __int16)state;
- (void)setStatusBarHidden:(BOOL)hidden withDuration:(double)duration;
- (void)showErrorAlertWithTitle:(id)title message:(id)message;
- (void)showErrorAlertWithTitle:(id)title message:(id)message alternateButton:(id)button alternateButtonURL:(id)l otherButton:(id)otherButton otherButtonURL:(id)rL;
- (void)transitionToIdleAfterDelay;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PHCallViewController

- (void)obtainDismissalAssertionIfNeeded
{
  if ([(PHCallViewController *)self needsDismissalAssertion])
  {
    dismissalAssertionReason = [objc_opt_class() dismissalAssertionReason];

    if (dismissalAssertionReason)
    {
      dismissalAssertionReason2 = [objc_opt_class() dismissalAssertionReason];
      [PHInCallRootViewController obtainDismissalAssertionForReason:dismissalAssertionReason2];
    }
  }
}

- (PHCallViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = PHCallViewController;
  v4 = [(PHCallViewController *)&v11 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_currentState = 0;
    v6 = objc_alloc_init(NSCache);
    punchoutImageCache = v5->_punchoutImageCache;
    v5->_punchoutImageCache = v6;

    v8 = objc_alloc_init(TUCallProviderManager);
    providerManager = v5->_providerManager;
    v5->_providerManager = v8;

    [(TUCallProviderManager *)v5->_providerManager addDelegate:v5 queue:&_dispatch_main_q];
  }

  return v5;
}

- (BOOL)isPresentingCustomMessageController
{
  presentedViewController = [(PHCallViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setCurrentState:(unsigned __int16)state
{
  self->_currentState = state;
  if ([(PHCallViewController *)self currentState]!= 1)
  {
    return;
  }

  v3 = +[TUCallCenter sharedInstance];
  incomingCall = [v3 incomingCall];
  if (incomingCall)
  {
    incomingVideoCall = incomingCall;
  }

  else
  {
    v5 = +[TUCallCenter sharedInstance];
    incomingVideoCall = [v5 incomingVideoCall];

    if (!incomingVideoCall)
    {
      incomingVideoCall = 0;
      goto LABEL_7;
    }
  }

  v6 = +[TUMetadataClientController sharedInstance];
  [v6 updateMetadataForCall:incomingVideoCall];

LABEL_7:
  v7 = +[UIApplication sharedApplication];
  delegate = [v7 delegate];
  currentInCallScene = [delegate currentInCallScene];
  delegate2 = [currentInCallScene delegate];
  callAnalyticsLogger = [delegate2 callAnalyticsLogger];
  v12 = +[UIApplication sharedApplication];
  delegate3 = [v12 delegate];
  currentInCallScene2 = [delegate3 currentInCallScene];
  presentationMode = [currentInCallScene2 presentationMode];
  v16 = +[ICSPreferences sharedPreferences];
  [callAnalyticsLogger createAnalyticsViewForCall:incomingVideoCall initialPresentationMode:presentationMode bannersEnabled:{objc_msgSend(v16, "hasBannersEnabled")}];
}

- (void)transitionToIdleAfterDelay
{
  if ([(PHCallViewController *)self currentState]== 1)
  {
    v3 = 500000000;
  }

  else
  {
    v3 = 1000000000;
  }

  v4 = dispatch_time(0, v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055660;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)configureDeclineWithMoreButton:(id)button forIncomingCall:(id)call
{
  buttonCopy = button;
  callCopy = call;
  if ([(PHCallViewController *)self isPresentingCustomMessageController])
  {
    declineWithMessageController = [(PHCallViewController *)self declineWithMessageController];

    if (!buttonCopy || declineWithMessageController)
    {
      goto LABEL_11;
    }
  }

  else if (!buttonCopy)
  {
    goto LABEL_11;
  }

  menu = [buttonCopy menu];
  if (menu)
  {
    menu2 = [buttonCopy menu];
    children = [menu2 children];
    v12 = [children count];

    if (v12 <= 1)
    {
      v13 = objc_opt_new();
      v14 = +[TUCallCenter sharedInstance];
      v38 = [v13 makeWithCallCenter:v14];

      v15 = [[PHDeclineWithMessageController alloc] initWithIncomingCall:callCopy customMessagePresentingViewController:self declineCallService:v38];
      [(PHCallViewController *)self setDeclineWithMessageController:v15];

      declineWithMessageController2 = [(PHCallViewController *)self declineWithMessageController];
      declineMessageMenu = [declineWithMessageController2 declineMessageMenu];

      if (declineMessageMenu)
      {
        v17 = +[UIColor whiteColor];
        v43[0] = v17;
        v18 = +[UIColor clearColor];
        v43[1] = v18;
        v19 = [NSArray arrayWithObjects:v43 count:2];
        v36 = [UIImage tpImageForSymbolType:97 textStyle:UIFontTextStyleTitle2 scale:1 paletteColors:v19 isStaticSize:0];

        v20 = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [v20 localizedStringForKey:@"SEND_MESSAGE" value:&stru_100361FD0 table:@"BottomBar"];
        identifier = [declineMessageMenu identifier];
        children2 = [declineMessageMenu children];
        v35 = [UIMenu menuWithTitle:v21 image:v36 identifier:identifier options:32 children:children2];

        menu3 = [buttonCopy menu];
        children3 = [menu3 children];
        v37 = [children3 mutableCopy];

        [v37 insertObject:v35 atIndex:0];
        menu4 = [buttonCopy menu];
        title = [menu4 title];
        menu5 = [buttonCopy menu];
        image = [menu5 image];
        menu6 = [buttonCopy menu];
        identifier2 = [menu6 identifier];
        menu7 = [buttonCopy menu];
        v33 = +[UIMenu menuWithTitle:image:identifier:options:children:](UIMenu, "menuWithTitle:image:identifier:options:children:", title, image, identifier2, [menu7 options], v37);

        [buttonCopy setMenu:v33];
        objc_initWeak(&location, callCopy);
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100055BA4;
        v40[3] = &unk_100357018;
        objc_copyWeak(&v41, &location);
        v34 = [UIAction actionWithHandler:v40];
        [buttonCopy addAction:v34 forControlEvents:0x4000];

        objc_destroyWeak(&v41);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_11:
}

- (void)configureDeclineWithReminderButton:(id)button declineWithMessageButton:(id)messageButton forIncomingCall:(id)call
{
  buttonCopy = button;
  messageButtonCopy = messageButton;
  callCopy = call;
  if (!TUCallScreeningEnabledM3() || ![(PHCallViewController *)self isPresentingCustomMessageController]|| ([(PHCallViewController *)self declineWithMessageController], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    if (buttonCopy)
    {
      [PHDeclineWithReminderController configureButton:buttonCopy forIncomingCall:callCopy presenter:self];
    }

    if (messageButtonCopy)
    {
      v11 = objc_opt_new();
      v12 = +[TUCallCenter sharedInstance];
      v13 = [v11 makeWithCallCenter:v12];

      v14 = [[PHDeclineWithMessageController alloc] initWithIncomingCall:callCopy customMessagePresentingViewController:self declineCallService:v13];
      [(PHCallViewController *)self setDeclineWithMessageController:v14];

      declineWithMessageController = [(PHCallViewController *)self declineWithMessageController];
      [declineWithMessageController configureDeclineMessageForButton:messageButtonCopy];
    }
  }
}

- (CGRect)sourceRectForDeclineWithMessagePopover
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar frameForControlWithActionType:9];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  v32.origin.x = CGRectZero.origin.x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (CGRectEqualToRect(v29, v32))
  {
    bottomBar2 = [(PHCallViewController *)self bottomBar];
    [bottomBar2 frameForControlWithActionType:12];
    v5 = v16;
    v7 = v17;
    v9 = v18;
    v11 = v19;
  }

  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  v33.origin.x = CGRectZero.origin.x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  if (CGRectEqualToRect(v30, v33))
  {
    bottomBar3 = [(PHCallViewController *)self bottomBar];
    [bottomBar3 frameForControlWithActionType:30];
    v5 = v21;
    v7 = v22;
    v9 = v23;
    v11 = v24;
  }

  v25 = v5;
  v26 = v7;
  v27 = v9;
  v28 = v11;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)sourceRectForDeclineWithReminderPopover
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar frameForControlWithActionType:13];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setStatusBarHidden:(BOOL)hidden withDuration:(double)duration
{
  hiddenCopy = hidden;
  inCallRootViewController = [(PHCallViewController *)self inCallRootViewController];
  [inCallRootViewController setStatusBarHidden:hiddenCopy withDuration:duration];
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    v4 = objc_alloc_init(TUSenderIdentityClient);
    v5 = self->_senderIdentityClient;
    self->_senderIdentityClient = v4;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PHCallViewController;
  [(PHCallViewController *)&v4 viewDidDisappear:disappear];
  [(PHCallViewController *)self handleDismissedCallDisplayStyle];
}

- (void)handleDismissedCallDisplayStyle
{
  presentedViewController = [(PHCallViewController *)self presentedViewController];
  presentingViewController = [presentedViewController presentingViewController];

  if (presentingViewController == self)
  {
    presentedViewController2 = [(PHCallViewController *)self presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:0 completion:0];
  }

  presentedViewController3 = [(PHCallViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(PHCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(PHCallViewController *)self releaseDismissalAssertionIfNeeded];
}

- (void)showErrorAlertWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];
  v10 = [IMUserNotification userNotificationWithIdentifier:@"InCallService" title:titleCopy message:messageCopy defaultButton:v8 alternateButton:0 otherButton:0];

  [v10 setShowInLockScreen:1];
  v9 = +[IMUserNotificationCenter sharedInstance];
  [v9 addUserNotification:v10 listener:0];
}

- (void)showErrorAlertWithTitle:(id)title message:(id)message alternateButton:(id)button alternateButtonURL:(id)l otherButton:(id)otherButton otherButtonURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  otherButtonCopy = otherButton;
  buttonCopy = button;
  messageCopy = message;
  titleCopy = title;
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];
  v21 = [IMUserNotification userNotificationWithIdentifier:@"InCallService" title:titleCopy message:messageCopy defaultButton:v20 alternateButton:buttonCopy otherButton:otherButtonCopy];

  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100056380;
  v29 = &unk_100357040;
  v30 = lCopy;
  v31 = rLCopy;
  v22 = rLCopy;
  v23 = lCopy;
  v24 = objc_retainBlock(&v26);
  [v21 setShowInLockScreen:{1, v26, v27, v28, v29}];
  v25 = +[IMUserNotificationCenter sharedInstance];
  [v25 addUserNotification:v21 listener:0 completionHandler:v24];
}

- (BOOL)shouldShowActionTypeSendToVoicemail
{
  v2 = +[ICSApplicationServices sharedInstance];
  v3 = +[TUCallCenter sharedInstance];
  incomingCall = [v3 incomingCall];

  accountManager = [v2 accountManager];
  accounts = [accountManager accounts];
  if ([accounts count])
  {
    model = [incomingCall model];
    if ([model supportsSendingToVoicemail] && (objc_msgSend(incomingCall, "isRTT") & 1) == 0)
    {
      v8 = [incomingCall isTTY] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (double)homeButtonOffsetForView:(id)view
{
  viewCopy = view;
  v4 = 0.0;
  if (+[PHUIConfiguration pipStatusBarPadding]== 5)
  {
    safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    if (!CGRectIsEmpty(v17))
    {
      v14 = +[UIScreen mainScreen];
      [v14 bounds];
      v4 = v15 - (v9 + v13);
    }
  }

  return v4;
}

+ (double)_bottomBarBottomMarginForView:(id)view
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100056690;
  v8[3] = &unk_100357068;
  viewCopy = view;
  selfCopy = self;
  v4 = qword_1003B0C60;
  v5 = viewCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_1003B0C60, v8);
  }

  v6 = *&qword_1003B0C58;

  return v6;
}

+ (double)_yOffsetForLoweredButtons
{
  if (qword_1003B0C70 != -1)
  {
    sub_1002544BC();
  }

  return *&qword_1003B0C68;
}

- (void)releaseDismissalAssertionIfNeeded
{
  if (![(PHCallViewController *)self needsDismissalAssertion])
  {

    [(PHCallViewController *)self releaseDismissalAssertion];
  }
}

- (void)releaseDismissalAssertion
{
  dismissalAssertionReason = [objc_opt_class() dismissalAssertionReason];

  if (dismissalAssertionReason)
  {
    dismissalAssertionReason2 = [objc_opt_class() dismissalAssertionReason];
    [PHInCallRootViewController releaseDismissalAssertionForReason:dismissalAssertionReason2];
  }
}

- (UIImage)frontmostCallProviderIcon
{
  v3 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall = [v3 frontmostAudioOrVideoCall];

  if (!frontmostAudioOrVideoCall)
  {
    v9 = 0;
    goto LABEL_20;
  }

  provider = [frontmostAudioOrVideoCall provider];
  punchoutImageCache = [(PHCallViewController *)self punchoutImageCache];
  identifier = [provider identifier];
  v8 = [punchoutImageCache objectForKey:identifier];

  if (!v8)
  {
    iconTemplateImageData = [provider iconTemplateImageData];

    if (!iconTemplateImageData)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v11 = [UIImage alloc];
    iconTemplateImageData2 = [provider iconTemplateImageData];
    v13 = [v11 initWithData:iconTemplateImageData2];

    if (v13)
    {
      v25.width = 40.0;
      v25.height = 40.0;
      UIGraphicsBeginImageContextWithOptions(v25, 0, 0.0);
      [v13 drawInRect:{0.0, 0.0, 40.0, 40.0}];
      v9 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      punchoutImageCache2 = sub_100004F84();
      v15 = os_log_type_enabled(punchoutImageCache2, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v15)
        {
          identifier2 = [provider identifier];
          v20 = 138412546;
          v21 = v9;
          v22 = 2112;
          v23 = identifier2;
          _os_log_impl(&_mh_execute_header, punchoutImageCache2, OS_LOG_TYPE_DEFAULT, "Adding punchout image (%@) to cache for key: %@", &v20, 0x16u);
        }

        punchoutImageCache2 = [(PHCallViewController *)self punchoutImageCache];
        identifier3 = [provider identifier];
        [punchoutImageCache2 setObject:v9 forKey:identifier3];

        goto LABEL_18;
      }

      if (v15)
      {
        LOWORD(v20) = 0;
        v18 = "[WARN] Could not get image from current image context";
        goto LABEL_16;
      }
    }

    else
    {
      punchoutImageCache2 = sub_100004F84();
      if (os_log_type_enabled(punchoutImageCache2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v18 = "[WARN] Could not generate image from iconTemplateImageData from provider";
LABEL_16:
        _os_log_impl(&_mh_execute_header, punchoutImageCache2, OS_LOG_TYPE_DEFAULT, v18, &v20, 2u);
      }
    }

    v9 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v9 = v8;
LABEL_19:

LABEL_20:

  return v9;
}

- (void)punchOutToVoIPApplicationForCurrentCall
{
  v2 = dispatch_time(0, 250000000);

  dispatch_after(v2, &_dispatch_main_q, &stru_1003570A8);
}

- (void)activateProviderInBackgroundForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCallViewController: Requested background activation", buf, 2u);
  }

  v6 = dispatch_time(0, 250000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100056FB4;
  v8[3] = &unk_100357110;
  v9 = callCopy;
  selfCopy = self;
  v7 = callCopy;
  dispatch_after(v6, &_dispatch_main_q, v8);
}

- (void)activateProviderInBackgroundWithBundleID:(id)d
{
  dCopy = d;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Punching out to app with bundle identifier %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(_LSOpenConfiguration);
  v8 = FBSOpenApplicationOptionKeyActivateSuspended;
  v9 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v5 setFrontBoardOptions:v6];

  v7 = +[LSApplicationWorkspace defaultWorkspace];
  [v7 openApplicationWithBundleIdentifier:dCopy configuration:v5 completionHandler:&stru_100357150];
}

- (id)imageForItemInBar:(id)bar withActionType:(int64_t)type
{
  if (type == 31)
  {
    v6 = [(PHCallViewController *)self frontmostCallProviderIcon:bar];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)gameControllerResponder
{
  if ([(PHCallViewController *)self conformsToProtocol:&OBJC_PROTOCOL___CNKGameControllerResponder])
  {
    selfCopy = self;
  }

  else
  {
    inCallRootViewController = [(PHCallViewController *)self inCallRootViewController];
    v5 = [inCallRootViewController conformsToProtocol:&OBJC_PROTOCOL___CNKGameControllerResponder];

    if (v5)
    {
      selfCopy = [(PHCallViewController *)self inCallRootViewController];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  providerManager = [(PHCallViewController *)self providerManager];
  v6 = [managerCopy isEqual:providerManager];

  if (v6)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Call providers changed. Invalidating punchout image cache", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    providerManager2 = [(PHCallViewController *)self providerManager];
    providers = [providerManager2 providers];

    v10 = [providers countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(providers);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          punchoutImageCache = [(PHCallViewController *)self punchoutImageCache];
          identifier = [v14 identifier];
          [punchoutImageCache removeObjectForKey:identifier];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [providers countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  if (toStyle == 4)
  {
    [(PHCallViewController *)self handleDismissedCallDisplayStyle];
  }
}

- (PHInCallRootViewControllerProtocol)inCallRootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inCallRootViewController);

  return WeakRetained;
}

- (PHAlertController)failureAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_failureAlertController);

  return WeakRetained;
}

@end