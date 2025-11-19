@interface PHCallViewController
+ (double)_bottomBarBottomMarginForView:(id)a3;
+ (double)_yOffsetForLoweredButtons;
+ (double)homeButtonOffsetForView:(id)a3;
- (BOOL)isPresentingCustomMessageController;
- (BOOL)shouldShowActionTypeSendToVoicemail;
- (CGRect)sourceRectForDeclineWithMessagePopover;
- (CGRect)sourceRectForDeclineWithReminderPopover;
- (PHAlertController)failureAlertController;
- (PHCallViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PHInCallRootViewControllerProtocol)inCallRootViewController;
- (TUSenderIdentityClient)senderIdentityClient;
- (UIImage)frontmostCallProviderIcon;
- (id)gameControllerResponder;
- (id)imageForItemInBar:(id)a3 withActionType:(int64_t)a4;
- (void)activateProviderInBackgroundForCall:(id)a3;
- (void)activateProviderInBackgroundWithBundleID:(id)a3;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)configureDeclineWithMoreButton:(id)a3 forIncomingCall:(id)a4;
- (void)configureDeclineWithReminderButton:(id)a3 declineWithMessageButton:(id)a4 forIncomingCall:(id)a5;
- (void)handleDismissedCallDisplayStyle;
- (void)obtainDismissalAssertionIfNeeded;
- (void)providersChangedForProviderManager:(id)a3;
- (void)punchOutToVoIPApplicationForCurrentCall;
- (void)releaseDismissalAssertion;
- (void)releaseDismissalAssertionIfNeeded;
- (void)setCurrentState:(unsigned __int16)a3;
- (void)setStatusBarHidden:(BOOL)a3 withDuration:(double)a4;
- (void)showErrorAlertWithTitle:(id)a3 message:(id)a4;
- (void)showErrorAlertWithTitle:(id)a3 message:(id)a4 alternateButton:(id)a5 alternateButtonURL:(id)a6 otherButton:(id)a7 otherButtonURL:(id)a8;
- (void)transitionToIdleAfterDelay;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PHCallViewController

- (void)obtainDismissalAssertionIfNeeded
{
  if ([(PHCallViewController *)self needsDismissalAssertion])
  {
    v2 = [objc_opt_class() dismissalAssertionReason];

    if (v2)
    {
      v3 = [objc_opt_class() dismissalAssertionReason];
      [PHInCallRootViewController obtainDismissalAssertionForReason:v3];
    }
  }
}

- (PHCallViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = PHCallViewController;
  v4 = [(PHCallViewController *)&v11 initWithNibName:a3 bundle:a4];
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
  v2 = [(PHCallViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setCurrentState:(unsigned __int16)a3
{
  self->_currentState = a3;
  if ([(PHCallViewController *)self currentState]!= 1)
  {
    return;
  }

  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 incomingCall];
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v5 = +[TUCallCenter sharedInstance];
    v17 = [v5 incomingVideoCall];

    if (!v17)
    {
      v17 = 0;
      goto LABEL_7;
    }
  }

  v6 = +[TUMetadataClientController sharedInstance];
  [v6 updateMetadataForCall:v17];

LABEL_7:
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 delegate];
  v9 = [v8 currentInCallScene];
  v10 = [v9 delegate];
  v11 = [v10 callAnalyticsLogger];
  v12 = +[UIApplication sharedApplication];
  v13 = [v12 delegate];
  v14 = [v13 currentInCallScene];
  v15 = [v14 presentationMode];
  v16 = +[ICSPreferences sharedPreferences];
  [v11 createAnalyticsViewForCall:v17 initialPresentationMode:v15 bannersEnabled:{objc_msgSend(v16, "hasBannersEnabled")}];
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

- (void)configureDeclineWithMoreButton:(id)a3 forIncomingCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PHCallViewController *)self isPresentingCustomMessageController])
  {
    v8 = [(PHCallViewController *)self declineWithMessageController];

    if (!v6 || v8)
    {
      goto LABEL_11;
    }
  }

  else if (!v6)
  {
    goto LABEL_11;
  }

  v9 = [v6 menu];
  if (v9)
  {
    v10 = [v6 menu];
    v11 = [v10 children];
    v12 = [v11 count];

    if (v12 <= 1)
    {
      v13 = objc_opt_new();
      v14 = +[TUCallCenter sharedInstance];
      v38 = [v13 makeWithCallCenter:v14];

      v15 = [[PHDeclineWithMessageController alloc] initWithIncomingCall:v7 customMessagePresentingViewController:self declineCallService:v38];
      [(PHCallViewController *)self setDeclineWithMessageController:v15];

      v16 = [(PHCallViewController *)self declineWithMessageController];
      v39 = [v16 declineMessageMenu];

      if (v39)
      {
        v17 = +[UIColor whiteColor];
        v43[0] = v17;
        v18 = +[UIColor clearColor];
        v43[1] = v18;
        v19 = [NSArray arrayWithObjects:v43 count:2];
        v36 = [UIImage tpImageForSymbolType:97 textStyle:UIFontTextStyleTitle2 scale:1 paletteColors:v19 isStaticSize:0];

        v20 = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [v20 localizedStringForKey:@"SEND_MESSAGE" value:&stru_100361FD0 table:@"BottomBar"];
        v22 = [v39 identifier];
        v23 = [v39 children];
        v35 = [UIMenu menuWithTitle:v21 image:v36 identifier:v22 options:32 children:v23];

        v24 = [v6 menu];
        v25 = [v24 children];
        v37 = [v25 mutableCopy];

        [v37 insertObject:v35 atIndex:0];
        v26 = [v6 menu];
        v27 = [v26 title];
        v28 = [v6 menu];
        v29 = [v28 image];
        v30 = [v6 menu];
        v31 = [v30 identifier];
        v32 = [v6 menu];
        v33 = +[UIMenu menuWithTitle:image:identifier:options:children:](UIMenu, "menuWithTitle:image:identifier:options:children:", v27, v29, v31, [v32 options], v37);

        [v6 setMenu:v33];
        objc_initWeak(&location, v7);
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100055BA4;
        v40[3] = &unk_100357018;
        objc_copyWeak(&v41, &location);
        v34 = [UIAction actionWithHandler:v40];
        [v6 addAction:v34 forControlEvents:0x4000];

        objc_destroyWeak(&v41);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_11:
}

- (void)configureDeclineWithReminderButton:(id)a3 declineWithMessageButton:(id)a4 forIncomingCall:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (!TUCallScreeningEnabledM3() || ![(PHCallViewController *)self isPresentingCustomMessageController]|| ([(PHCallViewController *)self declineWithMessageController], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    if (v16)
    {
      [PHDeclineWithReminderController configureButton:v16 forIncomingCall:v9 presenter:self];
    }

    if (v8)
    {
      v11 = objc_opt_new();
      v12 = +[TUCallCenter sharedInstance];
      v13 = [v11 makeWithCallCenter:v12];

      v14 = [[PHDeclineWithMessageController alloc] initWithIncomingCall:v9 customMessagePresentingViewController:self declineCallService:v13];
      [(PHCallViewController *)self setDeclineWithMessageController:v14];

      v15 = [(PHCallViewController *)self declineWithMessageController];
      [v15 configureDeclineMessageForButton:v8];
    }
  }
}

- (CGRect)sourceRectForDeclineWithMessagePopover
{
  v3 = [(PHCallViewController *)self bottomBar];
  [v3 frameForControlWithActionType:9];
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
    v15 = [(PHCallViewController *)self bottomBar];
    [v15 frameForControlWithActionType:12];
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
    v20 = [(PHCallViewController *)self bottomBar];
    [v20 frameForControlWithActionType:30];
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
  v2 = [(PHCallViewController *)self bottomBar];
  [v2 frameForControlWithActionType:13];
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

- (void)setStatusBarHidden:(BOOL)a3 withDuration:(double)a4
{
  v5 = a3;
  v6 = [(PHCallViewController *)self inCallRootViewController];
  [v6 setStatusBarHidden:v5 withDuration:a4];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHCallViewController;
  [(PHCallViewController *)&v4 viewDidDisappear:a3];
  [(PHCallViewController *)self handleDismissedCallDisplayStyle];
}

- (void)handleDismissedCallDisplayStyle
{
  v3 = [(PHCallViewController *)self presentedViewController];
  v4 = [v3 presentingViewController];

  if (v4 == self)
  {
    v5 = [(PHCallViewController *)self presentedViewController];
    [v5 dismissViewControllerAnimated:0 completion:0];
  }

  v6 = [(PHCallViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(PHCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(PHCallViewController *)self releaseDismissalAssertionIfNeeded];
}

- (void)showErrorAlertWithTitle:(id)a3 message:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];
  v10 = [IMUserNotification userNotificationWithIdentifier:@"InCallService" title:v6 message:v5 defaultButton:v8 alternateButton:0 otherButton:0];

  [v10 setShowInLockScreen:1];
  v9 = +[IMUserNotificationCenter sharedInstance];
  [v9 addUserNotification:v10 listener:0];
}

- (void)showErrorAlertWithTitle:(id)a3 message:(id)a4 alternateButton:(id)a5 alternateButtonURL:(id)a6 otherButton:(id)a7 otherButtonURL:(id)a8
{
  v13 = a6;
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];
  v21 = [IMUserNotification userNotificationWithIdentifier:@"InCallService" title:v18 message:v17 defaultButton:v20 alternateButton:v16 otherButton:v15];

  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100056380;
  v29 = &unk_100357040;
  v30 = v13;
  v31 = v14;
  v22 = v14;
  v23 = v13;
  v24 = objc_retainBlock(&v26);
  [v21 setShowInLockScreen:{1, v26, v27, v28, v29}];
  v25 = +[IMUserNotificationCenter sharedInstance];
  [v25 addUserNotification:v21 listener:0 completionHandler:v24];
}

- (BOOL)shouldShowActionTypeSendToVoicemail
{
  v2 = +[ICSApplicationServices sharedInstance];
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 incomingCall];

  v5 = [v2 accountManager];
  v6 = [v5 accounts];
  if ([v6 count])
  {
    v7 = [v4 model];
    if ([v7 supportsSendingToVoicemail] && (objc_msgSend(v4, "isRTT") & 1) == 0)
    {
      v8 = [v4 isTTY] ^ 1;
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

+ (double)homeButtonOffsetForView:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if (+[PHUIConfiguration pipStatusBarPadding]== 5)
  {
    v5 = [v3 safeAreaLayoutGuide];
    [v5 layoutFrame];
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

+ (double)_bottomBarBottomMarginForView:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100056690;
  v8[3] = &unk_100357068;
  v9 = a3;
  v10 = a1;
  v4 = qword_1003B0C60;
  v5 = v9;
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
  v2 = [objc_opt_class() dismissalAssertionReason];

  if (v2)
  {
    v3 = [objc_opt_class() dismissalAssertionReason];
    [PHInCallRootViewController releaseDismissalAssertionForReason:v3];
  }
}

- (UIImage)frontmostCallProviderIcon
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 frontmostAudioOrVideoCall];

  if (!v4)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v5 = [v4 provider];
  v6 = [(PHCallViewController *)self punchoutImageCache];
  v7 = [v5 identifier];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v10 = [v5 iconTemplateImageData];

    if (!v10)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v11 = [UIImage alloc];
    v12 = [v5 iconTemplateImageData];
    v13 = [v11 initWithData:v12];

    if (v13)
    {
      v25.width = 40.0;
      v25.height = 40.0;
      UIGraphicsBeginImageContextWithOptions(v25, 0, 0.0);
      [v13 drawInRect:{0.0, 0.0, 40.0, 40.0}];
      v9 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v14 = sub_100004F84();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v15)
        {
          v16 = [v5 identifier];
          v20 = 138412546;
          v21 = v9;
          v22 = 2112;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding punchout image (%@) to cache for key: %@", &v20, 0x16u);
        }

        v14 = [(PHCallViewController *)self punchoutImageCache];
        v17 = [v5 identifier];
        [v14 setObject:v9 forKey:v17];

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
      v14 = sub_100004F84();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v18 = "[WARN] Could not generate image from iconTemplateImageData from provider";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v18, &v20, 2u);
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

- (void)activateProviderInBackgroundForCall:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_after(v6, &_dispatch_main_q, v8);
}

- (void)activateProviderInBackgroundWithBundleID:(id)a3
{
  v3 = a3;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Punching out to app with bundle identifier %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(_LSOpenConfiguration);
  v8 = FBSOpenApplicationOptionKeyActivateSuspended;
  v9 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v5 setFrontBoardOptions:v6];

  v7 = +[LSApplicationWorkspace defaultWorkspace];
  [v7 openApplicationWithBundleIdentifier:v3 configuration:v5 completionHandler:&stru_100357150];
}

- (id)imageForItemInBar:(id)a3 withActionType:(int64_t)a4
{
  if (a4 == 31)
  {
    v6 = [(PHCallViewController *)self frontmostCallProviderIcon:a3];
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
    v3 = self;
  }

  else
  {
    v4 = [(PHCallViewController *)self inCallRootViewController];
    v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___CNKGameControllerResponder];

    if (v5)
    {
      v3 = [(PHCallViewController *)self inCallRootViewController];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = a3;
  v5 = [(PHCallViewController *)self providerManager];
  v6 = [v4 isEqual:v5];

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
    v8 = [(PHCallViewController *)self providerManager];
    v9 = [v8 providers];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          v15 = [(PHCallViewController *)self punchoutImageCache];
          v16 = [v14 identifier];
          [v15 removeObjectForKey:v16];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  if (a4 == 4)
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