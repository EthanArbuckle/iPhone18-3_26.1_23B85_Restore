@interface SOUIServiceViewController
- (BOOL)_checkScreenLockStatus;
- (SOUIServiceViewController)init;
- (int)_preferredStatusBarVisibility;
- (void)_cancelAuthorization;
- (void)_dismiss;
- (void)_extensionCleanup;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)connectToDaemonWithXpcEndpoint:(id)endpoint requestInfo:(id)info;
- (void)extensionCleanupWithCompletion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion;
- (void)viewControllerDidCancel:(id)cancel;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SOUIServiceViewController

- (SOUIServiceViewController)init
{
  v3 = sub_100002204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SOUIServiceViewController init]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = SOUIServiceViewController;
  return [(SOUIServiceViewController *)&v5 init];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100002204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100004DE0();
  }

  [(SOUIServiceViewController *)self _checkScreenLockStatus];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_100002204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[SOUIServiceViewController configureWithContext:completion:]";
    v21 = 2114;
    v22 = contextCopy;
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s context: %{public}@ on %@", buf, 0x20u);
  }

  xpcEndpoint = [contextCopy xpcEndpoint];
  userInfo = [contextCopy userInfo];
  [(SOUIServiceViewController *)self connectToDaemonWithXpcEndpoint:xpcEndpoint requestInfo:userInfo];

  _remoteViewControllerProxy = [(SOUIServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];

  _remoteViewControllerProxy2 = [(SOUIServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setDismissalAnimationStyle:1];

  _remoteViewControllerProxy3 = [(SOUIServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy3 setAllowsAlertStacking:1];

  _remoteViewControllerProxy4 = [(SOUIServiceViewController *)self _remoteViewControllerProxy];
  view = [(SOUIServiceViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [_remoteViewControllerProxy4 setLaunchingInterfaceOrientation:{objc_msgSend(windowScene, "interfaceOrientation")}];

  v18.receiver = self;
  v18.super_class = SOUIServiceViewController;
  [(SOUIServiceViewController *)&v18 configureWithContext:contextCopy completion:completionCopy];
}

- (void)connectToDaemonWithXpcEndpoint:(id)endpoint requestInfo:(id)info
{
  endpointCopy = endpoint;
  infoCopy = info;
  v9 = sub_100002204();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316163;
    v69 = "[SOUIServiceViewController connectToDaemonWithXpcEndpoint:requestInfo:]";
    v70 = 2114;
    v71 = endpointCopy;
    v72 = 2160;
    v73 = 1752392040;
    v74 = 2117;
    v75 = infoCopy;
    v76 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s xpcEndpoint: %{public}@, requestInfo: %{sensitive, mask.hash}@ on %@", buf, 0x34u);
  }

  objc_storeStrong(&self->_xpcDaemonEndpoint, endpoint);
  v10 = [[SOUIDaemonConnection alloc] initWithViewController:self];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v10;

  if (self->_daemonConnection)
  {
    if (infoCopy)
    {
      goto LABEL_5;
    }

LABEL_11:
    v18 = [sub_100002F9C() parameterErrorWithMessage:@"no requestInfo for UI service"];
    [(SOUIServiceViewController *)self authorization:0 didCompleteWithCredential:0 error:v18];
LABEL_22:

    goto LABEL_23;
  }

  v17 = sub_100002204();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100004E68();
  }

  if (!infoCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (![(SOUIServiceViewController *)self _checkScreenLockStatus])
  {
    v12 = [infoCopy valueForKey:@"extensionBundleIdentifier"];
    v13 = [infoCopy valueForKey:@"httpHeaders"];
    v14 = [infoCopy valueForKey:@"httpBody"];
    v15 = [infoCopy valueForKey:@"url"];
    v63 = v14;
    v64 = v13;
    v58 = v15;
    if (v15)
    {
      v16 = [NSURL URLWithString:v15];
    }

    else
    {
      v16 = 0;
    }

    v59 = v12;
    v62 = [infoCopy valueForKey:@"realm"];
    v61 = [infoCopy valueForKey:@"extensionData"];
    v65 = [infoCopy valueForKey:@"callerBundleIdentifier"];
    v56 = [infoCopy valueForKey:@"auditTokenData"];
    v60 = [infoCopy valueForKey:@"requestedOperation"];
    v55 = [infoCopy valueForKey:@"authorizationOptions"];
    v19 = [infoCopy valueForKey:@"useInternalExtensions"];
    bOOLValue = [v19 BOOLValue];

    v21 = [infoCopy valueForKey:@"cfNetworkInterception"];
    bOOLValue2 = [v21 BOOLValue];

    v22 = [infoCopy valueForKey:@"callerManaged"];
    bOOLValue3 = [v22 BOOLValue];

    v23 = [infoCopy valueForKey:@"callerTeamIdentifier"];
    v24 = [infoCopy valueForKey:@"localizedCallerDisplayName"];
    v25 = [infoCopy valueForKey:@"enableUserInteraction"];
    bOOLValue4 = [v25 BOOLValue];

    v26 = [infoCopy valueForKey:@"impersonationBundleIdentifier"];
    v27 = [infoCopy valueForKey:@"screenLockedBehavior"];
    self->_screenLockedBehavior = [v27 integerValue];

    v28 = [infoCopy valueForKey:@"identifier"];
    v29 = [infoCopy valueForKey:@"showOnCoverScreen"];
    self->_showOnCoverScreen = [v29 BOOLValue];

    v30 = +[SOExtensionManager sharedInstance];
    v31 = v30;
    v54 = v24;
    if (bOOLValue)
    {
      [v30 loadInternalExtension];
    }

    else
    {
      [v30 loadExtensionWithBundleIdentifier:v59];
    }
    v32 = ;
    extension = self->_extension;
    self->_extension = v32;

    v34 = sub_100002204();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      localizedExtensionDisplayName = [(SOExtension *)self->_extension localizedExtensionDisplayName];
      *buf = 138543362;
      v69 = localizedExtensionDisplayName;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "loadedExtensionWithBundleIdentifier: extension = %{public}@", buf, 0xCu);
    }

    v57 = endpointCopy;

    v36 = self->_extension;
    if (v36)
    {
      v37 = v28;
      [(SOExtension *)v36 saveDelegate:self forRequestIdentifier:v28];
      v38 = objc_alloc_init(SOAuthorizationRequestParameters);
      [v38 setIdentifier:v28];
      v50 = v16;
      [v38 setUrl:v16];
      [v38 setHttpHeaders:v64];
      [v38 setHttpBody:v63];
      [v38 setRealm:v62];
      [v38 setExtensionData:v61];
      [v38 setCallerBundleIdentifier:v65];
      [v38 setRequestedOperation:v60];
      v39 = v55;
      [v38 setAuthorizationOptions:v55];
      [v38 setCfNetworkInterception:bOOLValue2];
      [v38 setCallerManaged:bOOLValue3];
      v40 = v23;
      [v38 setCallerTeamIdentifier:v23];
      v41 = v24;
      [v38 setLocalizedCallerDisplayName:v24];
      v42 = v56;
      [v38 setAuditTokenData:v56];
      [v38 setEnableUserInteraction:bOOLValue4];
      [v38 setImpersonationBundleIdentifier:v26];
      v43 = self->_extension;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_10000307C;
      v66[3] = &unk_10000C3F8;
      v66[4] = self;
      v67 = v38;
      v44 = v37;
      v45 = v38;
      v46 = v64;
      v47 = v45;
      v48 = v43;
      v16 = v50;
      [(SOExtension *)v48 requestAuthorizationViewControllerWithCompletion:v66];
    }

    else
    {
      v47 = [sub_100002F9C() internalErrorWithMessage:@"No active AppSSO IdP extension"];
      selfCopy2 = self;
      v44 = v28;
      [(SOUIServiceViewController *)selfCopy2 authorization:v28 didCompleteWithCredential:0 error:v47];
      v46 = v64;
      v39 = v55;
      v42 = v56;
      v40 = v23;
      v41 = v54;
    }

    v18 = v59;
    endpointCopy = v57;
    goto LABEL_22;
  }

LABEL_23:
}

- (void)viewDidLoad
{
  v3 = sub_100002204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[SOUIServiceViewController viewDidLoad]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = SOUIServiceViewController;
  [(SOUIServiceViewController *)&v7 viewDidLoad];
  v4 = +[UIColor clearColor];
  view = [(SOUIServiceViewController *)self view];
  [view setBackgroundColor:v4];

  view2 = [(SOUIServiceViewController *)self view];
  [view2 setHidden:1];
}

- (int)_preferredStatusBarVisibility
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  v5 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  view = [(SOUIServiceViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v9 = [windowScene interfaceOrientation] - 3;

  return v5 != 1 && v9 < 2;
}

- (BOOL)_checkScreenLockStatus
{
  if (!SBSGetScreenLockStatus())
  {
    return 0;
  }

  if (self->_showOnCoverScreen || [sub_100003660() isInternalBuild])
  {
    v9 = sub_100002204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100004F04();
    }

    v8 = 0;
  }

  else
  {
    screenLockedBehavior = self->_screenLockedBehavior;
    v4 = sub_100002204();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (screenLockedBehavior == 2)
    {
      if (v5)
      {
        sub_100004ED0();
      }

      v6 = sub_100002F9C();
      v7 = -5;
    }

    else
    {
      if (v5)
      {
        sub_100004E9C();
      }

      v6 = sub_100002F9C();
      v7 = -3;
    }

    v9 = [v6 errorWithCode:v7];
    [(SOUIServiceViewController *)self authorization:0 didCompleteWithCredential:0 error:v9];
    v8 = 1;
  }

  return v8;
}

- (void)_dismiss
{
  v3 = sub_100002204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOUIServiceViewController _dismiss]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  extensionViewController = self->_extensionViewController;
  self->_extensionViewController = 0;

  if (self->_extension)
  {
    v5 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v6 = sub_100003934;
  }

  else
  {
    v7 = sub_100002204();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100004F40();
    }

    v5 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v6 = sub_1000038D4;
  }

  v5[2] = v6;
  v5[3] = &unk_10000C420;
  v5[4] = self;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_extensionCleanup
{
  v3 = sub_100002204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    v7 = 136315650;
    v8 = "[SOUIServiceViewController _extensionCleanup]";
    v9 = 2114;
    v10 = extension;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@ on %@", &v7, 0x20u);
  }

  v5 = self->_extension;
  if (v5)
  {
    [(SOExtension *)v5 unload];
    v6 = self->_extension;
    self->_extension = 0;
  }
}

- (void)_cancelAuthorization
{
  v3 = sub_100002204();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    v7 = 136315650;
    v8 = "[SOUIServiceViewController _cancelAuthorization]";
    v9 = 2112;
    v10 = extension;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s extension = %@ on %@", &v7, 0x20u);
  }

  [(SOExtension *)self->_extension cancelAuthorization:self->_requestThatPresentedViewController completion:&stru_10000C488];
  requestThatPresentedViewController = self->_requestThatPresentedViewController;
  v6 = [sub_100002F9C() errorWithCode:-2];
  [(SOUIServiceViewController *)self authorization:requestThatPresentedViewController didCompleteWithCredential:0 error:v6];
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v5 = sub_100002204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[SOUIServiceViewController handleButtonActions:]";
    v8 = 2114;
    v9 = actionsCopy;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v6, 0x20u);
  }

  [(SOUIServiceViewController *)self _cancelAuthorization];
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion
{
  hintsCopy = hints;
  completionCopy = completion;
  v9 = sub_100002204();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    extensionViewController = self->_extensionViewController;
    *buf = 136315906;
    v29 = "[SOUIServiceViewController presentAuthorizationViewControllerWithHints:requestIdentifier:completion:]";
    v30 = 2114;
    v31 = extensionViewController;
    v32 = 2114;
    v33 = hintsCopy;
    v34 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s extension viewController = %{public}@, hints = %{public}@ on %@", buf, 0x2Au);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000040D8;
  v26[3] = &unk_10000C4B0;
  v11 = completionCopy;
  v27 = v11;
  v12 = objc_retainBlock(v26);
  buf[0] = 0;
  if (SBSGetScreenLockStatus() && (buf[0] || !self->_showOnCoverScreen && ([sub_100003660() isInternalBuild] & 1) == 0))
  {
    v13 = sub_100002204();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000050A4();
    }

    v14 = [sub_100002F9C() errorWithCode:-8 subcode:1 message:@"presentation of authorization view controller was denied because the device screen is locked"];
    goto LABEL_18;
  }

  v15 = self->_extensionViewController;
  if (!v15)
  {
    v22 = sub_100002F9C();
    v23 = @"no extension authorization view controller";
LABEL_17:
    v14 = [v22 internalErrorWithMessage:v23];
LABEL_18:
    v21 = v14;
    (v12[2])(v12, 0, v14);
    goto LABEL_19;
  }

  childViewControllers = [(SOUIServiceViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (v15 == lastObject)
  {
    v22 = sub_100002F9C();
    v23 = @"extension authorization view controller already presented";
    goto LABEL_17;
  }

  view = [(SOUIServiceViewController *)self view];
  [view setHidden:0];

  v19 = [[SOUIAuthorizationViewController alloc] initWithExtensionViewController:self->_extensionViewController hints:hintsCopy presentViewControllerCompletion:v11];
  [v19 setDelegate:self];
  v20 = sub_100002204();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000050D8();
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000040F0;
  v24[3] = &unk_10000C420;
  v25 = v19;
  v21 = v19;
  [(SOUIServiceViewController *)self presentViewController:v21 animated:1 completion:v24];

LABEL_19:
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  v9 = sub_100002204();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v13 = "[SOUIServiceViewController authorization:didCompleteWithCredential:error:]";
    v14 = 2114;
    v15 = credentialCopy;
    v16 = 2114;
    v17 = errorCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s credential: %{public}@, %{public}@ on %@", buf, 0x2Au);
  }

  daemonConnection = self->_daemonConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004298;
  v11[3] = &unk_10000C4D8;
  v11[4] = self;
  [(SOUIDaemonConnection *)daemonConnection authorizationDidCompleteWithCredential:credentialCopy error:errorCopy completion:v11];
  [(SOUIServiceViewController *)self _dismiss];
}

- (void)viewControllerDidCancel:(id)cancel
{
  v4 = sub_100002204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    extensionViewController = self->_extensionViewController;
    v6 = 136315650;
    v7 = "[SOUIServiceViewController viewControllerDidCancel:]";
    v8 = 2114;
    v9 = extensionViewController;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s extensionViewController = %{public}@ on %@", &v6, 0x20u);
  }

  if (self->_extensionViewController)
  {
    [(SOUIServiceViewController *)self _cancelAuthorization];
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v4 = sub_100002204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOUIServiceViewController viewServiceDidTerminateWithError:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  requestThatPresentedViewController = self->_requestThatPresentedViewController;
  v6 = [sub_100002F9C() errorWithCode:-3 message:@"connection to extension interrupted"];
  [(SOUIServiceViewController *)self authorization:requestThatPresentedViewController didCompleteWithCredential:0 error:v6];
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  completionCopy = completion;
  authorizationCopy = authorization;
  v8 = sub_100002204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    v10 = 136315650;
    v11 = "[SOUIServiceViewController finishAuthorization:completion:]";
    v12 = 2112;
    v13 = extension;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s extension = %@ on %@", &v10, 0x20u);
  }

  [(SOExtension *)self->_extension finishAuthorization:authorizationCopy completion:completionCopy];
}

- (void)extensionCleanupWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000051C4(self);
  }

  [(SOUIServiceViewController *)self _extensionCleanup];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

@end