@interface ActivationLockViewController
- (ActivationLockViewController)initWithTokenChallengers:(id)challengers authenticator:(id)authenticator;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (StartPreflightNavigationCoordinator)coordinator;
- (id)activeTokenChallenger;
- (id)moveToNextLockedTokenChallenger;
- (id)transitionTable;
- (void)_setHandlerForNextButton;
- (void)_setHandlerForSkipButton;
- (void)_showAlertWithTitle:(id)title message:(id)message actionTitle:(id)actionTitle;
- (void)_skipActivateTapped;
- (void)_startActivateTapped;
- (void)fetchPasswordScreen;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)resetState;
- (void)setupRemoteUIController;
- (void)showUnknownErrorAlertWithCode:(int64_t)code;
- (void)showUserAuthErrorAlert;
- (void)transitionToState:(int64_t)state;
- (void)viewDidLoad;
@end

@implementation ActivationLockViewController

- (ActivationLockViewController)initWithTokenChallengers:(id)challengers authenticator:(id)authenticator
{
  challengersCopy = challengers;
  authenticatorCopy = authenticator;
  if (![challengersCopy count])
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
  v9 = challengersCopy;
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
        localizedComponentMap = [(ActivationLockViewController *)self localizedComponentMap];
        localizedComponentsMap = [v14 localizedComponentsMap];
        [localizedComponentMap addEntriesFromDictionary:localizedComponentsMap];
      }

      v11 = [v9 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v11);
  }

  localizedComponentMap2 = [(ActivationLockViewController *)self localizedComponentMap];
  v18 = [localizedComponentMap2 count];

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

          spcs = [*(*(&v54 + 1) + 8 * j) spcs];
          [v19 addObjectsFromArray:spcs];
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

  localizedComponentMap3 = [(ActivationLockViewController *)self localizedComponentMap];
  v29 = [localizedComponentMap3 count];

  if (v29 < 2)
  {
    v27 = handleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10000C8D4();
    }

LABEL_28:
    selfCopy = 0;
    goto LABEL_34;
  }

  localizedComponentMap4 = [(ActivationLockViewController *)self localizedComponentMap];
  allValues = [localizedComponentMap4 allValues];
  v32 = [allValues componentsJoinedByString:@"\n"];

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
    v44 = v43 = authenticatorCopy;
    v45 = [v44 localizedStringForKey:@"START_ACTIVATION_BUTTON_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
    [v42 setTitle:v45 forState:0];

    [v42 addTarget:v41 action:"_startActivateTapped" forControlEvents:64];
    buttonTray = [(ActivationLockViewController *)v41 buttonTray];
    [buttonTray addButton:v42];

    v47 = +[OBLinkTrayButton linkButton];
    v48 = +[NSBundle mainBundle];
    v49 = [v48 localizedStringForKey:@"SKIP_ACTIVATION_BUTTON_TITLE" value:&stru_100018C40 table:@"StartPreflightPlugin-Release"];
    [v47 setTitle:v49 forState:0];

    [v47 addTarget:v41 action:"_skipActivateTapped" forControlEvents:64];
    buttonTray2 = [(ActivationLockViewController *)v41 buttonTray];
    [buttonTray2 addButton:v47];

    [(ActivationLockViewController *)v41 setTokenChallengers:v9];
    [(ActivationLockViewController *)v41 setAuthenticator:v43];
    [(ActivationLockViewController *)v41 resetState];

    authenticatorCopy = v43;
    v32 = v52;
  }

  self = v41;

  selfCopy = self;
LABEL_34:

  return selfCopy;
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
  navigationController = [(ActivationLockViewController *)self navigationController];
  [navigationController setDelegate:self];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllers = [controllerCopy viewControllers];
  v7 = [NSMutableArray arrayWithArray:viewControllers];

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
        [controllerCopy setViewControllers:v7 animated:0];
      }
    }

    else
    {
    }
  }
}

- (id)activeTokenChallenger
{
  activeTokenChallengerIndex = [(ActivationLockViewController *)self activeTokenChallengerIndex];
  tokenChallengers = [(ActivationLockViewController *)self tokenChallengers];
  if (activeTokenChallengerIndex >= [tokenChallengers count])
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

    tokenChallengers2 = [(ActivationLockViewController *)self tokenChallengers];
    v6 = [tokenChallengers2 objectAtIndexedSubscript:{-[ActivationLockViewController activeTokenChallengerIndex](self, "activeTokenChallengerIndex")}];
  }

  return v6;
}

- (id)moveToNextLockedTokenChallenger
{
  do
  {
    v3 = [(ActivationLockViewController *)self activeTokenChallengerIndex]+ 1;
    [(ActivationLockViewController *)self setActiveTokenChallengerIndex:v3];
    tokenChallengers = [(ActivationLockViewController *)self tokenChallengers];
    v5 = [tokenChallengers count];

    if (v3 >= v5)
    {
      activeTokenChallenger3 = 0;
      goto LABEL_7;
    }

    activeTokenChallenger = [(ActivationLockViewController *)self activeTokenChallenger];
    isTokenUnlocked = [activeTokenChallenger isTokenUnlocked];
  }

  while ((isTokenUnlocked & 1) != 0);
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeTokenChallenger2 = [(ActivationLockViewController *)self activeTokenChallenger];
    v12 = 138412290;
    v13 = activeTokenChallenger2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Moved to next locked token: %@", &v12, 0xCu);
  }

  activeTokenChallenger3 = [(ActivationLockViewController *)self activeTokenChallenger];
LABEL_7:

  return activeTokenChallenger3;
}

- (void)setupRemoteUIController
{
  v3 = objc_opt_new();
  [(ActivationLockViewController *)self setRemoteUIController:v3];

  remoteUIController = [(ActivationLockViewController *)self remoteUIController];
  [remoteUIController setDelegate:self];

  navigationController = [(ActivationLockViewController *)self navigationController];
  remoteUIController2 = [(ActivationLockViewController *)self remoteUIController];
  [remoteUIController2 setHostViewController:navigationController];

  v7 = +[RUIStyle setupAssistantStyle];
  remoteUIController3 = [(ActivationLockViewController *)self remoteUIController];
  [remoteUIController3 setStyle:v7];

  remoteUIController4 = [(ActivationLockViewController *)self remoteUIController];
  localizedComponentMap = [(ActivationLockViewController *)self localizedComponentMap];
  [remoteUIController4 registerPartsInfoViewWithComponentsMap:localizedComponentMap];

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
  activeTokenChallenger = [(ActivationLockViewController *)self activeTokenChallenger];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002F04;
  v4[3] = &unk_1000187D0;
  v4[4] = self;
  [activeTokenChallenger fetchPasswordWithCompletion:v4];
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
  tokenChallengers = [(ActivationLockViewController *)self tokenChallengers];
  v5 = [tokenChallengers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(tokenChallengers);
        }

        [*(*(&v9 + 1) + 8 * v8) setIsTokenUnlocked:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [tokenChallengers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(ActivationLockViewController *)self transitionToState:5];
}

- (void)_showAlertWithTitle:(id)title message:(id)message actionTitle:(id)actionTitle
{
  actionTitleCopy = actionTitle;
  v10 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v9 = [UIAlertAction actionWithTitle:actionTitleCopy style:0 handler:0];

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

- (void)showUnknownErrorAlertWithCode:(int64_t)code
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
  remoteUIController = [(ActivationLockViewController *)self remoteUIController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003574;
  v5[3] = &unk_100018888;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v4 = [remoteUIController setHandlerForElementsMatching:&stru_100018810 handler:v5];

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

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  controllerCopy = controller;
  modelCopy = model;
  v10 = modelCopy;
  if (!signal)
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

  if (*signal != 2)
  {
    if (*signal == 1)
    {
      clientInfo = [modelCopy clientInfo];
      v12 = [clientInfo objectForKeyedSubscript:@"status"];

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
          selfCopy3 = self;
          v25 = 0;
          goto LABEL_37;
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_27:

          activeTokenChallenger = [(ActivationLockViewController *)self activeTokenChallenger];
          [activeTokenChallenger setIsTokenUnlocked:1];

          selfCopy3 = self;
          v25 = 5;
LABEL_37:
          [(ActivationLockViewController *)selfCopy3 transitionToState:v25, *v27];
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
          selfCopy3 = self;
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

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
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

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request
{
  errorCopy = error;
  requestCopy = request;
  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[ActivationLockViewController remoteUIController:didFinishLoadWithError:forRequest:]";
    v16 = 2112;
    v17 = errorCopy;
    v18 = 2112;
    v19 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: error: %@. request: %@", &v14, 0x20u);
  }

  if (errorCopy)
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD40();
    }

    if ([(ActivationLockViewController *)self state]== 4)
    {
      [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-103];
      selfCopy2 = self;
      v12 = 2;
LABEL_10:
      [(ActivationLockViewController *)selfCopy2 transitionToState:v12];
      goto LABEL_14;
    }

    if ([(ActivationLockViewController *)self state]== 1)
    {
      [(ActivationLockViewController *)self showUnknownErrorAlertWithCode:-102];
      selfCopy2 = self;
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
    state = [(ActivationLockViewController *)self state];
    v10 = 2048;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reset state from %ld to %ld", &v8, 0x16u);
  }

  [(ActivationLockViewController *)self setState:0];
  [(ActivationLockViewController *)self setActiveTokenChallengerIndex:-1];
  moveToNextLockedTokenChallenger = [(ActivationLockViewController *)self moveToNextLockedTokenChallenger];
  buttonTray = [(ActivationLockViewController *)self buttonTray];
  [buttonTray showButtonsAvailable];

  navigationController = [(ActivationLockViewController *)self navigationController];
  v7 = [navigationController popToViewController:self animated:1];

  [(ActivationLockViewController *)self setRemoteUIController:0];
}

- (void)transitionToState:(int64_t)state
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218240;
    state = [(ActivationLockViewController *)self state];
    v22 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Transitioning state from %ld to %ld", &v20, 0x16u);
  }

  transitionTable = [(ActivationLockViewController *)self transitionTable];
  v7 = [NSNumber numberWithInteger:[(ActivationLockViewController *)self state]];
  v8 = [transitionTable objectForKeyedSubscript:v7];

  if (v8 && (+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", state), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 containsObject:v9], v9, (v10 & 1) != 0))
  {
    [(ActivationLockViewController *)self setState:state];
    buttonTray = [(ActivationLockViewController *)self buttonTray];
    if ((state | 4) == 5)
    {
      [buttonTray showButtonsBusy];
      v12 = 1;
    }

    else
    {
      [buttonTray showButtonsAvailable];
      v12 = 0;
    }

    remoteUIController = [(ActivationLockViewController *)self remoteUIController];
    displayedPages = [remoteUIController displayedPages];
    lastObject = [displayedPages lastObject];
    [lastObject setLoading:v12];

    if (state == 5)
    {
      moveToNextLockedTokenChallenger = [(ActivationLockViewController *)self moveToNextLockedTokenChallenger];

      if (moveToNextLockedTokenChallenger)
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

        coordinator = [(ActivationLockViewController *)self coordinator];
        [coordinator moveToNextViewController];
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