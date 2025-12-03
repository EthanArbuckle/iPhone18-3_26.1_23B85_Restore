@interface PHRegistrationViewController
+ (BOOL)_shouldShowAuthKitSignIn;
+ (BOOL)shouldShowRegistration;
+ (id)_inProgressRegisteringNonPhoneAccount;
- (PHRegistrationViewController)init;
- (void)_handleRegistrarCompletion:(BOOL)completion errorAlertController:(id)controller;
- (void)_keyboardWillAppear:(id)appear;
- (void)_keyboardWillDisappear:(id)disappear;
- (void)_registrationStatusChanged:(id)changed;
- (void)_registrationTimedOut:(id)out;
- (void)_startListeningForKeyboardNotifications;
- (void)_stopListeningToKeyboardNotifications;
- (void)dealloc;
- (void)registrationViewSignInPhoneAccount:(id)account;
- (void)tapToSignInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PHRegistrationViewController

+ (BOOL)shouldShowRegistration
{
  v2 = PHPreferencesGetValue();
  bOOLValue = [v2 BOOLValue];

  if (bOOLValue & 1) != 0 || [UIApp showsTelephonyCalls] && (objc_msgSend(UIApp, "telephonyCallingIsAvailable") & 1) != 0 || objc_msgSend(UIApp, "showsFaceTimeVideo") && (objc_msgSend(UIApp, "faceTimeVideoIsAvailable"))
  {
    return 0;
  }

  if (+[PHRegistrationViewController _shouldShowAuthKitSignIn])
  {
    return 1;
  }

  v6 = +[PHRegistrationViewController _inProgressRegisteringNonPhoneAccount];
  v4 = v6 != 0;

  return v4;
}

+ (BOOL)_shouldShowAuthKitSignIn
{
  v2 = +[IMAccountController sharedInstance];
  v3 = +[IMService facetimeService];
  v4 = [v2 accountsForService:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) registrationStatus] == 5)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

+ (id)_inProgressRegisteringNonPhoneAccount
{
  v2 = +[IMAccountController sharedInstance];
  v3 = +[IMService facetimeService];
  v4 = [v2 accountsForService:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        accountType = [v9 accountType];
        registrationStatus = [v9 registrationStatus];
        if (registrationStatus != 5 && accountType != 2 && (registrationStatus - 2) <= 2)
        {
          v6 = v9;
          goto LABEL_14;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

LABEL_14:

  return v6;
}

- (PHRegistrationViewController)init
{
  v25.receiver = self;
  v25.super_class = PHRegistrationViewController;
  v2 = [(PHRegistrationViewController *)&v25 init];
  if (v2)
  {
    v3 = [[PHRegistrationView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(PHRegistrationView *)v3 setRegistrationDelegate:v2];
    [(PHRegistrationViewController *)v2 setView:v3];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = +[IMAccountController sharedInstance];
    v5 = +[IMService facetimeService];
    v6 = [v4 accountsForService:v5];

    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v21 + 1) + 8 * v10) accountType] == 2)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v11 = objc_alloc_init(CUTWeakLinkClass());
      akSignInVC = v2->_akSignInVC;
      v2->_akSignInVC = v11;

      [(AKTapToSignInViewController *)v2->_akSignInVC setUsesDarkMode:1];
      [(AKTapToSignInViewController *)v2->_akSignInVC setDelegate:v2];
      v6 = objc_alloc_init(CUTWeakLinkClass());
      [v6 setPresentingViewController:v2];
      v13 = objc_alloc_init(CUTWeakLinkClass());
      aa_primaryAppleAccount = [v13 aa_primaryAppleAccount];
      username = [aa_primaryAppleAccount username];
      if ([username length])
      {
        [v6 setUsername:username];
      }

      [(AKTapToSignInViewController *)v2->_akSignInVC setContext:v6];
      view = [(AKTapToSignInViewController *)v2->_akSignInVC view];
      [(PHRegistrationView *)v3 setAuthKitSignInView:view];

      v17 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.facetime"];
      privacyLinkController = v2->_privacyLinkController;
      v2->_privacyLinkController = v17;

      [(PHRegistrationViewController *)v2 addChildViewController:v2->_privacyLinkController];
      view2 = [(OBPrivacyLinkController *)v2->_privacyLinkController view];
      [(PHRegistrationView *)v3 setPrivacyLinkView:view2];

      [(OBPrivacyLinkController *)v2->_privacyLinkController didMoveToParentViewController:v2];
    }

    [(PHRegistrationView *)v3 layoutSubviews];
  }

  return v2;
}

- (void)dealloc
{
  [(PHRegistrationViewController *)self _stopListeningToKeyboardNotifications];
  v3.receiver = self;
  v3.super_class = PHRegistrationViewController;
  [(PHRegistrationViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = PHRegistrationViewController;
  [(PHRegistrationViewController *)&v14 viewWillAppear:appear];
  [(PHRegistrationViewController *)self _startListeningForKeyboardNotifications];
  v4 = +[PHRegistrationViewController _inProgressRegisteringNonPhoneAccount];
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031A34;
    block[3] = &unk_10010AD48;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_100031A7C;
    v11 = sub_100031A8C;
    v12 = objc_alloc_init(CNFAccountRegistrar);
    v5 = v8[5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100031A94;
    v6[3] = &unk_10010B458;
    v6[4] = self;
    v6[5] = &v7;
    [v5 continueRegistrationForAccount:v4 completionBlock:v6];
    _Block_object_dispose(&v7, 8);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PHRegistrationViewController;
  [(PHRegistrationViewController *)&v4 viewWillDisappear:disappear];
  [(PHRegistrationViewController *)self _stopListeningToKeyboardNotifications];
}

- (void)tapToSignInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  controllerCopy = controller;
  resultsCopy = results;
  errorCopy = error;
  v11 = sub_100003B9C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C49FC();
  }

  if (errorCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031EE0;
    block[3] = &unk_10010AD48;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v12 = sub_100003B9C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4A30(errorCopy, v12);
    }
  }

  else
  {
    v13 = sub_100003B9C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C4AA8();
    }

    if (qword_1001269F0 != -1)
    {
      sub_1000C4ADC();
    }

    if (qword_100126A00 != -1)
    {
      sub_1000C4B04();
    }

    v14 = [resultsCopy objectForKey:qword_1001269E8];
    v15 = [resultsCopy objectForKey:qword_1001269F8];
    v16 = v15;
    if (v14 && v15)
    {
      v17 = sub_100003B9C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C4B6C();
      }

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100032020;
      v30[3] = &unk_10010AD48;
      v30[4] = self;
      dispatch_async(&_dispatch_main_q, v30);
      v18 = sub_100003B9C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C4BA0();
      }

      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = sub_100031A7C;
      v28 = sub_100031A8C;
      v29 = [[CNFAccountRegistrar alloc] initWithServiceType:0 presentationViewController:self];
      v19 = v25[5];
      v20 = +[IMServiceImpl facetimeService];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100032068;
      v23[3] = &unk_10010B458;
      v23[4] = self;
      v23[5] = &v24;
      [v19 registerAccountWithUsername:v14 password:v16 service:v20 completionBlock:v23];

      _Block_object_dispose(&v24, 8);
    }

    else
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100032078;
      v22[3] = &unk_10010AD48;
      v22[4] = self;
      dispatch_async(&_dispatch_main_q, v22);
      v21 = sub_100003B9C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000C4B2C();
      }
    }
  }
}

- (void)_handleRegistrarCompletion:(BOOL)completion errorAlertController:(id)controller
{
  completionCopy = completion;
  controllerCopy = controller;
  v7 = sub_100003B9C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C4BD4();
  }

  if (completionCopy)
  {
    v8 = sub_100003B9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C4C3C();
    }

    completionBlock = [(PHRegistrationViewController *)self completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [(PHRegistrationViewController *)self completionBlock];
      completionBlock2[2](completionBlock2, 1);
    }
  }

  else if (controllerCopy)
  {
    v11 = sub_100003B9C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C4C08();
    }

    [(PHRegistrationViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003222C;
  block[3] = &unk_10010AD48;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)registrationViewSignInPhoneAccount:(id)account
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "View requested phone account to register", buf, 2u);
  }

  v5 = +[IMAccountController sharedInstance];
  v6 = +[IMService facetimeService];
  v7 = [v5 accountsForService:v6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    v12 = IMAccountRegistrationStatusChangedNotification;
    *&v9 = 138412290;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 accountType] == 2)
        {
          v15 = sub_100003B9C();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v26 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Registering this acount: %@", buf, 0xCu);
          }

          v16 = [NSTimer scheduledTimerWithTimeInterval:self target:"_registrationTimedOut:" selector:0 userInfo:0 repeats:180.0];
          [(PHRegistrationViewController *)self setRegistrationTimeout:v16];

          v17 = +[NSNotificationCenter defaultCenter];
          [v17 addObserver:self selector:"_registrationStatusChanged:" name:v12 object:0];

          v18 = dispatch_get_global_queue(21, 0);
          IDSRegistrationControlEnableRegistrationType();
        }
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }
}

- (void)_registrationTimedOut:(id)out
{
  outCopy = out;
  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration timed out", v10, 2u);
  }

  [outCopy invalidate];
  [(PHRegistrationViewController *)self setRegistrationTimeout:0];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:IMAccountRegistrationStatusChangedNotification object:0];

  completionBlock = [(PHRegistrationViewController *)self completionBlock];

  if (completionBlock)
  {
    view = [(PHRegistrationViewController *)self view];
    [view setSigningIn:0];
    completionBlock2 = [(PHRegistrationViewController *)self completionBlock];
    completionBlock2[2](completionBlock2, 0);
  }
}

- (void)_startListeningForKeyboardNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_keyboardWillAppear:" name:UIKeyboardWillShowNotification object:0];
  [v3 addObserver:self selector:"_keyboardWillDisappear:" name:UIKeyboardWillHideNotification object:0];
}

- (void)_stopListeningToKeyboardNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillHideNotification object:0];
}

- (void)_keyboardWillAppear:(id)appear
{
  appearCopy = appear;
  view = [(PHRegistrationViewController *)self view];
  if (view)
  {
    userInfo = [appearCopy userInfo];
    v6 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    [v6 CGRectValue];
    v8 = v7;

    [view bounds];
    v10 = v9;
    [view contentSize];
    if (v8 > v10 - v11)
    {
      [view contentInset];
      [view setContentInset:?];
      [view contentSize];
      v13 = v12;
      [view bounds];
      v15 = v13 - v14;
      [view contentInset];
      [view setContentOffset:1 animated:{0.0, fabs(v16 + v15)}];
    }
  }
}

- (void)_keyboardWillDisappear:(id)disappear
{
  view = [(PHRegistrationViewController *)self view];
  if (view)
  {
    v4 = view;
    [view setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v4 setContentOffset:{CGPointZero.x, CGPointZero.y}];
    view = v4;
  }
}

- (void)_registrationStatusChanged:(id)changed
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registration status changed", buf, 2u);
  }

  v5 = +[IMAccountController sharedInstance];
  v6 = +[IMService facetimeService];
  v7 = [v5 accountsForService:v6];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  v11 = *v27;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      if ([v13 accountType] == 2)
      {
        registrationStatus = [v13 registrationStatus];
        v15 = registrationStatus;
        if (registrationStatus == 5)
        {
          v16 = sub_100003B9C();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Phone account is registered", buf, 2u);
          }
        }

        else
        {
          if (registrationStatus != -1)
          {
            continue;
          }

          v17 = sub_100003B9C();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Phone account failed registration", buf, 2u);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100032DEC;
          block[3] = &unk_10010AD48;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
        }

        v18 = sub_100003B9C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Registration status change handled", buf, 2u);
        }

        registrationTimeout = [(PHRegistrationViewController *)self registrationTimeout];
        [registrationTimeout invalidate];

        [(PHRegistrationViewController *)self setRegistrationTimeout:0];
        completionBlock = [(PHRegistrationViewController *)self completionBlock];

        if (completionBlock)
        {
          v21 = sub_100003B9C();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = @"NO";
            if (v15 == 5)
            {
              v22 = @"YES";
            }

            *buf = 138412290;
            v31 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Calling completion block with result: %@", buf, 0xCu);
          }

          completionBlock2 = [(PHRegistrationViewController *)self completionBlock];
          (completionBlock2)[2](completionBlock2, v15 == 5);
        }

        v24 = +[NSNotificationCenter defaultCenter];
        [v24 removeObserver:self name:IMAccountRegistrationStatusChangedNotification object:0];

        goto LABEL_29;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_29:
}

@end