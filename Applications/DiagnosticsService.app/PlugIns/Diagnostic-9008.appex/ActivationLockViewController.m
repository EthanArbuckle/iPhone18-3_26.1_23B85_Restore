@interface ActivationLockViewController
- (ActivationLockViewController)initWithTokenChallengers:(id)a3 authenticator:(id)a4;
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (StartPreflightNavigationCoordinator)coordinator;
- (id)activeTokenChallenger;
- (id)moveToNextLockedTokenChallenger;
- (id)transitionTable;
- (void)_setHandlerForNextButton;
- (void)_setHandlerForSkipButton;
- (void)_showAlertWithTitle:(id)a3 message:(id)a4 actionTitle:(id)a5;
- (void)_skipActivateTapped;
- (void)_startActivateTapped;
- (void)fetchPasswordScreen;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)resetState;
- (void)setupRemoteUIController;
- (void)showUnknownErrorAlertWithCode:(int64_t)a3;
- (void)showUserAuthErrorAlert;
- (void)transitionToState:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation ActivationLockViewController

- (ActivationLockViewController)initWithTokenChallengers:(id)a3 authenticator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    v27 = handleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10000C910();
    }

    goto LABEL_28;
  }

  v8 = +[NSMutableDictionary dictionary];
  [(ActivationLockViewController *)self setLocalizedComponentMap:v8];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        v15 = [(ActivationLockViewController *)self localizedComponentMap];
        v16 = [v14 localizedComponentsMap];
        [v15 addEntriesFromDictionary:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v11);
  }

  v17 = [(ActivationLockViewController *)self localizedComponentMap];
  v18 = [v17 count];

  if (v18 == 1)
  {
    v19 = +[NSMutableArray array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v20 = v9;
    v21 = [v20 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v55;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v55 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v54 + 1) + 8 * j) spcs];
          [v19 addObjectsFromArray:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v22);
    }

    if ([v19 count] == 1)
    {
      v26 = [v19 objectAtIndexedSubscript:0];
    }

    else
    {
      v26 = &stru_100018C40;
    }

    v27 = [CRLocalization localizedStringWithFormat:@"SINGLE_ACTIVATION_LOCK_TITLE_%@" component:[CRDeviceMap getComponentTypeWithSPC:v26]];
    v38 = +[NSBundle mainBundle];
    v39 = [v38 localizedStringForKey:@"SINGLE_OWNER_SINGLE_ACTIVATION_LOCK_TEXT" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];

    v32 = 0;
    goto LABEL_31;
  }

  v28 = [(ActivationLockViewController *)self localizedComponentMap];
  v29 = [v28 count];

  if (v29 < 2)
  {
    v27 = handleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10000C8D4();
    }

LABEL_28:
    v40 = 0;
    goto LABEL_34;
  }

  v30 = [(ActivationLockViewController *)self localizedComponentMap];
  v31 = [v30 allValues];
  v32 = [v31 componentsJoinedByString:@"\n"];

  v33 = [v9 count];
  v34 = +[NSBundle mainBundle];
  v35 = v34;
  if (v33 < 2)
  {
    v27 = [v34 localizedStringForKey:@"SINGLE_OWNER_MULTI_ACTIVATION_LOCK_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];

    v36 = +[NSBundle mainBundle];
    v19 = v36;
    v37 = @"SINGLE_OWNER_MULTI_ACTIVATION_LOCK_TEXT";
  }

  else
  {
    v27 = [v34 localizedStringForKey:@"MULTI_OWNER_MULTI_ACTIVATION_LOCK_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];

    v36 = +[NSBundle mainBundle];
    v19 = v36;
    v37 = @"MULTI_OWNER_MULTI_ACTIVATION_LOCK_TEXT";
  }

  v39 = [v36 localizedStringForKey:v37 value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
LABEL_31:

  v53.receiver = self;
  v53.super_class = ActivationLockViewController;
  v41 = [(OBBoldSubtitleController *)&v53 initWithTitle:v27 subtitle:v32 detailText:v39 symbolName:@"lock.circle"];
  if (v41)
  {
    v42 = +[OBBoldTrayButton boldButton];
    +[NSBundle mainBundle];
    v52 = v32;
    v44 = v43 = v7;
    v45 = [v44 localizedStringForKey:@"START_ACTIVATION_BUTTON_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
    [v42 setTitle:v45 forState:0];

    [v42 addTarget:v41 action:"_startActivateTapped" forControlEvents:64];
    v46 = [(ActivationLockViewController *)v41 buttonTray];
    [v46 addButton:v42];

    v47 = +[OBLinkTrayButton linkButton];
    v48 = +[NSBundle mainBundle];
    v49 = [v48 localizedStringForKey:@"SKIP_ACTIVATION_BUTTON_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
    [v47 setTitle:v49 forState:0];

    [v47 addTarget:v41 action:"_skipActivateTapped" forControlEvents:64];
    v50 = [(ActivationLockViewController *)v41 buttonTray];
    [v50 addButton:v47];

    [(ActivationLockViewController *)v41 setTokenChallengers:v9];
    [(ActivationLockViewController *)v41 setAuthenticator:v43];
    [(ActivationLockViewController *)v41 resetState];

    v7 = v43;
    v32 = v52;
  }

  self = v41;

  v40 = self;
LABEL_34:

  return v40;
}

- (void)viewDidLoad
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ActivationLockViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = ActivationLockViewController;
  [(ActivationLockViewController *)&v5 viewDidLoad];
  v4 = [(ActivationLockViewController *)self navigationController];
  [v4 setDelegate:self];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a3;
  v6 = [v5 viewControllers];
  v7 = [NSMutableArray arrayWithArray:v6];

  if ([v7 count] >= 2)
  {
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 1}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = handleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "removing second-to-last RUI Page", v12, 2u);
        }

        [v7 removeObjectAtIndex:{objc_msgSend(v7, "count") - 2}];
        [v5 setViewControllers:v7 animated:0];
      }
    }

    else
    {
    }
  }
}

- (id)activeTokenChallenger
{
  v3 = [(ActivationLockViewController *)self activeTokenChallengerIndex];
  v4 = [(ActivationLockViewController *)self tokenChallengers];
  if (v3 >= [v4 count])
  {

    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000C94C(self);
    }

    v6 = 0;
  }

  else
  {
    [(ActivationLockViewController *)self activeTokenChallengerIndex];

    v5 = [(ActivationLockViewController *)self tokenChallengers];
    v6 = [v5 objectAtIndexedSubscript:{-[ActivationLockViewController activeTokenChallengerIndex](self, "activeTokenChallengerIndex")}];
  }

  return v6;
}

- (id)moveToNextLockedTokenChallenger
{
  do
  {
    v3 = [(ActivationLockViewController *)self activeTokenChallengerIndex]+ 1;
    [(ActivationLockViewController *)self setActiveTokenChallengerIndex:v3];
    v4 = [(ActivationLockViewController *)self tokenChallengers];
    v5 = [v4 count];

    if (v3 >= v5)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v6 = [(ActivationLockViewController *)self activeTokenChallenger];
    v7 = [v6 isTokenUnlocked];
  }

  while ((v7 & 1) != 0);
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ActivationLockViewController *)self activeTokenChallenger];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Moved to next locked token: %@", &v12, 0xCu);
  }

  v10 = [(ActivationLockViewController *)self activeTokenChallenger];
LABEL_7:

  return v10;
}

- (void)setupRemoteUIController
{
  v3 = objc_opt_new();
  [(ActivationLockViewController *)self setRemoteUIController:v3];

  v4 = [(ActivationLockViewController *)self remoteUIController];
  [v4 setDelegate:self];

  v5 = [(ActivationLockViewController *)self navigationController];
  v6 = [(ActivationLockViewController *)self remoteUIController];
  [v6 setHostViewController:v5];

  v7 = +[RUIStyle setupAssistantStyle];
  v8 = [(ActivationLockViewController *)self remoteUIController];
  [v8 setStyle:v7];

  v9 = [(ActivationLockViewController *)self remoteUIController];
  v10 = [(ActivationLockViewController *)self localizedComponentMap];
  [v9 registerPartsInfoViewWithComponentsMap:v10];

  [(ActivationLockViewController *)self _setHandlerForSkipButton];

  [(ActivationLockViewController *)self _setHandlerForNextButton];
}

- (void)_startActivateTapped
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ActivationLockViewController _startActivateTapped]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(ActivationLockViewController *)self setupRemoteUIController];
  [(ActivationLockViewController *)self fetchPasswordScreen];
}

- (void)fetchPasswordScreen
{
  [(ActivationLockViewController *)self transitionToState:1];
  v3 = [(ActivationLockViewController *)self activeTokenChallenger];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002F04;
  v4[3] = &unk_1000187D0;
  v4[4] = self;
  [v3 fetchPasswordWithCompletion:v4];
}

- (void)_skipActivateTapped
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ActivationLockViewController _skipActivateTapped]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(ActivationLockViewController *)self tokenChallengers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setIsTokenUnlocked:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(ActivationLockViewController *)self transitionToState:5];
}

- (void)_showAlertWithTitle:(id)a3 message:(id)a4 actionTitle:(id)a5
{
  v8 = a5;
  v10 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];

  [v10 addAction:v9];
  [(ActivationLockViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)showUserAuthErrorAlert
{
  v6 = +[NSBundle mainBundle];
  v3 = [v6 localizedStringForKey:@"AUTH_ERROR_ALERT_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AUTH_ERROR_ALERT_ACTION" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
  [(ActivationLockViewController *)self _showAlertWithTitle:v3 message:0 actionTitle:v5];
}

- (void)showUnknownErrorAlertWithCode:(int64_t)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000CA08();
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"UNKNOWN_ERROR_ALERT_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"UNKNOWN_ERROR_ALERT_MESSAGE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"UNKNOWN_ERROR_ALERT_ACTION" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
  [(ActivationLockViewController *)self _showAlertWithTitle:v6 message:v8 actionTitle:v10];
}

- (void)_setHandlerForNextButton
{
  objc_initWeak(&location, self);
  v3 = [(ActivationLockViewController *)self remoteUIController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003574;
  v5[3] = &unk_100018888;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v4 = [v3 setHandlerForElementsMatching:&stru_100018810 handler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_setHandlerForSkipButton
{
  objc_initWeak(&location, self);
  remoteUIController = self->_remoteUIController;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003AF8;
  v5[3] = &unk_1000188D0;
  objc_copyWeak(&v6, &location);
  v4 = [(RemoteUIController *)remoteUIController setHandlerForElementsMatching:&stru_1000188A8 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a5)
  {
LABEL_11:
    v18 = handleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD04();
    }

    [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-101];
    goto LABEL_39;
  }

  if (*a5 != 2)
  {
    if (*a5 == 1)
    {
      v11 = [v9 clientInfo];
      v12 = [v11 objectForKeyedSubscript:@"status"];

      v13 = handleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 138412290;
        *&v27[4] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Got dismiss action with status %@", v27, 0xCu);
      }

      if (!v12)
      {
        [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-304];
LABEL_38:

        goto LABEL_39;
      }

      if ([(ActivationLockViewController *)self state]== 1)
      {
        v14 = [v12 isEqualToString:@"0"];
        v15 = handleForCategory();
        v16 = v15;
        if (!v14)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10000CC94();
          }

          [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-303];
          v24 = self;
          v25 = 0;
          goto LABEL_37;
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_27:

          v23 = [(ActivationLockViewController *)self activeTokenChallenger];
          [v23 setIsTokenUnlocked:1];

          v24 = self;
          v25 = 5;
LABEL_37:
          [(ActivationLockViewController *)v24 transitionToState:v25, *v27];
          goto LABEL_38;
        }

        *v27 = 0;
        v17 = "Token has already been unlocked";
      }

      else
      {
        if ([(ActivationLockViewController *)self state]!= 4)
        {
          v26 = handleForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10000CBA4(self);
          }

          [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-100];
          [(ActivationLockViewController *)self resetState];
          goto LABEL_38;
        }

        v21 = [v12 isEqualToString:@"0"];
        v22 = handleForCategory();
        v16 = v22;
        if (!v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10000CC24();
          }

          [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-303];
          v24 = self;
          v25 = 2;
          goto LABEL_37;
        }

        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *v27 = 0;
        v17 = "Token unlocked";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, v27, 2u);
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v19 = handleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Got push action", v27, 2u);
  }

  if ([(ActivationLockViewController *)self state]== 1)
  {
    [(ActivationLockViewController *)self transitionToState:2];
  }

  else
  {
    v20 = handleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10000CB24(self);
    }

    [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-100];
    [(ActivationLockViewController *)self resetState];
  }

LABEL_39:
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ActivationLockViewController remoteUIController:shouldLoadRequest:redirectResponse:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  return 0;
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[ActivationLockViewController remoteUIController:didFinishLoadWithError:forRequest:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: error: %@. request: %@", &v14, 0x20u);
  }

  if (v7)
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD40();
    }

    if ([(ActivationLockViewController *)self state]== 4)
    {
      [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-103];
      v11 = self;
      v12 = 2;
LABEL_10:
      [(ActivationLockViewController *)v11 transitionToState:v12];
      goto LABEL_14;
    }

    if ([(ActivationLockViewController *)self state]== 1)
    {
      [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-102];
      v11 = self;
      v12 = 0;
      goto LABEL_10;
    }

    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD7C(self);
    }

    [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-100];
    [(ActivationLockViewController *)self resetState];
  }

LABEL_14:
}

- (id)transitionTable
{
  v4[0] = &off_1000194C8;
  v4[1] = &off_1000194E0;
  v5[0] = &off_100019610;
  v5[1] = &off_100019628;
  v4[2] = &off_100019510;
  v4[3] = &off_100019528;
  v5[2] = &off_100019640;
  v5[3] = &off_100019658;
  v4[4] = &off_100019540;
  v4[5] = &off_1000194F8;
  v5[4] = &off_100019670;
  v5[5] = &off_100019688;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (void)resetState
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = [(ActivationLockViewController *)self state];
    v10 = 2048;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reset state from %ld to %ld", &v8, 0x16u);
  }

  [(ActivationLockViewController *)self setState:0];
  [(ActivationLockViewController *)self setActiveTokenChallengerIndex:-1];
  v4 = [(ActivationLockViewController *)self moveToNextLockedTokenChallenger];
  v5 = [(ActivationLockViewController *)self buttonTray];
  [v5 showButtonsAvailable];

  v6 = [(ActivationLockViewController *)self navigationController];
  v7 = [v6 popToViewController:self animated:1];

  [(ActivationLockViewController *)self setRemoteUIController:0];
}

- (void)transitionToState:(int64_t)a3
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218240;
    v21 = [(ActivationLockViewController *)self state];
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Transitioning state from %ld to %ld", &v20, 0x16u);
  }

  v6 = [(ActivationLockViewController *)self transitionTable];
  v7 = [NSNumber numberWithInteger:[(ActivationLockViewController *)self state]];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8 && (+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a3), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 containsObject:v9], v9, (v10 & 1) != 0))
  {
    [(ActivationLockViewController *)self setState:a3];
    v11 = [(ActivationLockViewController *)self buttonTray];
    if ((a3 | 4) == 5)
    {
      [v11 showButtonsBusy];
      v12 = 1;
    }

    else
    {
      [v11 showButtonsAvailable];
      v12 = 0;
    }

    v14 = [(ActivationLockViewController *)self remoteUIController];
    v15 = [v14 displayedPages];
    v16 = [v15 lastObject];
    [v16 setLoading:v12];

    if (a3 == 5)
    {
      v17 = [(ActivationLockViewController *)self moveToNextLockedTokenChallenger];

      if (v17)
      {
        [(ActivationLockViewController *)self fetchPasswordScreen];
      }

      else
      {
        v18 = handleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No more token left", &v20, 2u);
        }

        v19 = [(ActivationLockViewController *)self coordinator];
        [v19 moveToNextViewController];
      }
    }
  }

  else
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000CDFC(self);
    }

    [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-100];
    [(ActivationLockViewController *)self resetState];
  }
}

- (StartPreflightNavigationCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end