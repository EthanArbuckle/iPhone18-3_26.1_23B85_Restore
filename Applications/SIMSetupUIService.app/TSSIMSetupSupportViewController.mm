@interface TSSIMSetupSupportViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelButtonTapped;
- (void)_deactivate;
- (void)_presentFirstController:(id)controller isRemoteSignup:(BOOL)signup;
- (void)_presentIdentityShareViewController;
- (void)_presentPolicyRejectionViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)screenLockDidUpdate:(BOOL)update;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)userDidTapCancel;
- (void)viewDidLoad;
@end

@implementation TSSIMSetupSupportViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  _remoteViewControllerProxy = [(TSSIMSetupSupportViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWallpaperTunnelActive:0];
  [_remoteViewControllerProxy setWallpaperStyle:1 withDuration:0.0];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:0];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  userInfo = [contextCopy userInfo];
  v10 = +[NSMutableDictionary dictionary];
  options = self->_options;
  self->_options = v10;

  v12 = self->_options;
  v13 = TSUserInfoForceDualSIMSetupKey;
  v14 = [userInfo objectForKeyedSubscript:TSUserInfoForceDualSIMSetupKey];
  [(NSMutableDictionary *)v12 setValue:v14 forKey:v13];

  v15 = self->_options;
  v16 = TSUserInfoFlowTypeKey;
  v17 = [userInfo objectForKeyedSubscript:TSUserInfoFlowTypeKey];
  [(NSMutableDictionary *)v15 setValue:v17 forKey:v16];

  v18 = self->_options;
  v19 = TSUserInfoWebsheetURLKey;
  v20 = [userInfo objectForKeyedSubscript:TSUserInfoWebsheetURLKey];
  [(NSMutableDictionary *)v18 setValue:v20 forKey:v19];

  v21 = self->_options;
  v22 = TSUserInfoWebsheetPostdataKey;
  v23 = [userInfo objectForKeyedSubscript:TSUserInfoWebsheetPostdataKey];
  [(NSMutableDictionary *)v21 setValue:v23 forKey:v22];

  v24 = self->_options;
  v25 = TSUserInfoConfirmationCodeRequiredKey;
  v26 = [userInfo objectForKeyedSubscript:TSUserInfoConfirmationCodeRequiredKey];
  [(NSMutableDictionary *)v24 setValue:v26 forKey:v25];

  v27 = self->_options;
  v28 = TSUserInfoWebsheetRequestTypeKey;
  v29 = [userInfo objectForKeyedSubscript:TSUserInfoWebsheetRequestTypeKey];
  [(NSMutableDictionary *)v27 setValue:v29 forKey:v28];

  v30 = self->_options;
  v31 = TSUserInfoEidKey;
  v32 = [userInfo objectForKeyedSubscript:TSUserInfoEidKey];
  [(NSMutableDictionary *)v30 setValue:v32 forKey:v31];

  v33 = self->_options;
  v34 = TSUserInfoImeiKey;
  v35 = [userInfo objectForKeyedSubscript:TSUserInfoImeiKey];
  [(NSMutableDictionary *)v33 setValue:v35 forKey:v34];

  v36 = self->_options;
  v37 = TSUserInfoImei2Key;
  v38 = [userInfo objectForKeyedSubscript:TSUserInfoImei2Key];
  [(NSMutableDictionary *)v36 setValue:v38 forKey:v37];

  v39 = self->_options;
  v40 = TSUserInfoMeidKey;
  v41 = [userInfo objectForKeyedSubscript:TSUserInfoMeidKey];
  [(NSMutableDictionary *)v39 setValue:v41 forKey:v40];

  v42 = self->_options;
  v43 = TSUserInfoCarrierNameKey;
  v44 = [userInfo objectForKeyedSubscript:TSUserInfoCarrierNameKey];
  [(NSMutableDictionary *)v42 setValue:v44 forKey:v43];

  v45 = self->_options;
  v46 = TSUserInfoSubscriptionContextKey;
  v47 = [userInfo objectForKeyedSubscript:TSUserInfoSubscriptionContextKey];
  [(NSMutableDictionary *)v45 setValue:v47 forKey:v46];

  v48 = self->_options;
  v49 = TSUserInfoRequireSetupDebugKey;
  v50 = [userInfo objectForKeyedSubscript:TSUserInfoRequireSetupDebugKey];
  [(NSMutableDictionary *)v48 setValue:v50 forKey:v49];

  v51 = self->_options;
  v52 = TSUserInfoPlanLaunchOptionLiveIDKey;
  v53 = [userInfo objectForKeyedSubscript:TSUserInfoPlanLaunchOptionLiveIDKey];
  [(NSMutableDictionary *)v51 setValue:v53 forKey:v52];

  v54 = self->_options;
  v55 = TSUserInfoPlanIccidKey;
  v56 = [userInfo objectForKeyedSubscript:TSUserInfoPlanIccidKey];
  [(NSMutableDictionary *)v54 setValue:v56 forKey:v55];

  v57 = self->_options;
  v58 = TSUserInfoSkipIntroPaneForWebsheetFlowKey;
  v59 = [userInfo objectForKeyedSubscript:TSUserInfoSkipIntroPaneForWebsheetFlowKey];
  [(NSMutableDictionary *)v57 setValue:v59 forKey:v58];

  v60 = self->_options;
  v61 = TSUserInfoIccidKey;
  v62 = [userInfo objectForKeyedSubscript:TSUserInfoIccidKey];
  [(NSMutableDictionary *)v60 setValue:v62 forKey:v61];

  v63 = self->_options;
  v64 = TSUserInfoPhoneNumberKey;
  v65 = [userInfo objectForKeyedSubscript:TSUserInfoPhoneNumberKey];
  [(NSMutableDictionary *)v63 setValue:v65 forKey:v64];

  v66 = self->_options;
  v67 = TSUserInfoWaitForServiceKey;
  v68 = [userInfo objectForKeyedSubscript:TSUserInfoWaitForServiceKey];
  [(NSMutableDictionary *)v66 setValue:v68 forKey:v67];

  v69 = self->_options;
  v70 = TSUserInfoFallbackToActivationCodeKey;
  v71 = [userInfo objectForKeyedSubscript:TSUserInfoFallbackToActivationCodeKey];
  [(NSMutableDictionary *)v69 setValue:v71 forKey:v70];

  v72 = self->_options;
  v73 = TSUserInfoIgnoreTransportKey;
  v74 = [userInfo objectForKeyedSubscript:TSUserInfoIgnoreTransportKey];
  [(NSMutableDictionary *)v72 setValue:v74 forKey:v73];

  v75 = self->_options;
  v76 = TSUserInfoExternalizedContextKey;
  v77 = [userInfo objectForKeyedSubscript:TSUserInfoExternalizedContextKey];
  [(NSMutableDictionary *)v75 setValue:v77 forKey:v76];

  v78 = self->_options;
  v79 = TSUserInfoIsLocalConvertKey;
  v80 = [userInfo objectForKeyedSubscript:TSUserInfoIsLocalConvertKey];
  [(NSMutableDictionary *)v78 setValue:v80 forKey:v79];

  v81 = self->_options;
  v82 = [userInfo objectForKeyedSubscript:v79];
  [(NSMutableDictionary *)v81 setValue:v82 forKey:v79];

  v83 = self->_options;
  v84 = TSUserInfoHasLocalPlanKey;
  v85 = [userInfo objectForKeyedSubscript:TSUserInfoHasLocalPlanKey];
  [(NSMutableDictionary *)v83 setValue:v85 forKey:v84];

  v86 = self->_options;
  v87 = TSUserInfoHostViewControllerKey;
  v88 = [userInfo objectForKeyedSubscript:TSUserInfoHostViewControllerKey];
  [(NSMutableDictionary *)v86 setValue:v88 forKey:v87];

  v89 = self->_options;
  v90 = TSUserInfoIsSecureIntentRequiredKey;
  v91 = [userInfo objectForKeyedSubscript:TSUserInfoIsSecureIntentRequiredKey];
  [(NSMutableDictionary *)v89 setValue:v91 forKey:v90];

  v92 = self->_options;
  v93 = TSUserInfoIsDtoEvaluationRequiredKey;
  v94 = [userInfo objectForKeyedSubscript:TSUserInfoIsDtoEvaluationRequiredKey];
  [(NSMutableDictionary *)v92 setValue:v94 forKey:v93];

  v95 = self->_options;
  v96 = TSUserInfoPlanDescriptorKey;
  v97 = [userInfo objectForKeyedSubscript:TSUserInfoPlanDescriptorKey];
  [(NSMutableDictionary *)v95 setValue:v97 forKey:v96];

  v98 = self->_options;
  v99 = TSUserInfoProximitySetupStateKey;
  v100 = [userInfo objectForKeyedSubscript:TSUserInfoProximitySetupStateKey];
  [(NSMutableDictionary *)v98 setValue:v100 forKey:v99];

  v101 = self->_options;
  v102 = TSUserInfoMessageSessionKey;
  v103 = [userInfo objectForKeyedSubscript:TSUserInfoMessageSessionKey];
  [(NSMutableDictionary *)v101 setValue:v103 forKey:v102];

  v104 = self->_options;
  v105 = TSUserInfoSourceOSVersionKey;
  v106 = [userInfo objectForKeyedSubscript:TSUserInfoSourceOSVersionKey];
  [(NSMutableDictionary *)v104 setValue:v106 forKey:v105];

  v107 = self->_options;
  v108 = TSUserInfoHasTransferablePlanKey;
  v109 = [userInfo objectForKeyedSubscript:TSUserInfoHasTransferablePlanKey];
  [(NSMutableDictionary *)v107 setValue:v109 forKey:v108];

  v110 = userInfo;
  if (([userInfo isEqualToDictionary:self->_options] & 1) == 0)
  {
    v128 = _remoteViewControllerProxy;
    v129 = completionCopy;
    v130 = contextCopy;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    allKeys = [userInfo allKeys];
    v112 = [allKeys countByEnumeratingWithState:&v131 objects:v141 count:16];
    if (v112)
    {
      v113 = v112;
      v114 = *v132;
      do
      {
        for (i = 0; i != v113; i = i + 1)
        {
          if (*v132 != v114)
          {
            objc_enumerationMutation(allKeys);
          }

          v116 = *(*(&v131 + 1) + 8 * i);
          allKeys2 = [(NSMutableDictionary *)self->_options allKeys];
          v118 = [allKeys2 containsObject:v116];

          if ((v118 & 1) == 0)
          {
            v119 = sub_10000C1BC();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
            {
              v120 = [v110 objectForKeyedSubscript:v116];
              *buf = 138412802;
              v136 = v116;
              v137 = 2112;
              v138 = v120;
              v139 = 2080;
              v140 = "[TSSIMSetupSupportViewController configureWithContext:completion:]";
              _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, "[I] sanitized user option: {%@ : %@} @%s", buf, 0x20u);
            }
          }
        }

        v113 = [allKeys countByEnumeratingWithState:&v131 objects:v141 count:16];
      }

      while (v113);
    }

    completionCopy = v129;
    contextCopy = v130;
    _remoteViewControllerProxy = v128;
  }

  v121 = [[TSScreenLockObserver alloc] initWithDelegate:self];
  screenLockObserver = self->_screenLockObserver;
  self->_screenLockObserver = v121;

  v123 = [SSRemoteAlertMonitor alloc];
  v124 = +[NSBundle mainBundle];
  bundleIdentifier = [v124 bundleIdentifier];
  v126 = [(SSRemoteAlertMonitor *)v123 initWithBundleID:bundleIdentifier dismissHandler:&stru_10001C980];
  remoteAlertMonitor = self->_remoteAlertMonitor;
  self->_remoteAlertMonitor = v126;

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!completionCopy)
  {
    v8 = sub_10000C1BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000F67C();
    }

    completionCopy = &stru_10001C9A0;
  }

  v9 = TSUserInfoFlowTypeKey;
  v10 = [(NSMutableDictionary *)self->_options valueForKey:TSUserInfoFlowTypeKey];
  if ([v10 intValue] == 28)
  {

LABEL_8:
    [(TSSIMSetupSupportViewController *)self _presentIdentityShareViewController];
    goto LABEL_9;
  }

  v11 = [(NSMutableDictionary *)self->_options valueForKey:v9];
  intValue = [v11 intValue];

  if (intValue == 6)
  {
    goto LABEL_8;
  }

  v13 = [(NSMutableDictionary *)self->_options valueForKey:v9];
  intValue2 = [v13 intValue];

  options = self->_options;
  if (intValue2 == 10)
  {
    v16 = options;
    v17 = TSUserInfoExternalizedContextKey;
    v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:TSUserInfoExternalizedContextKey];

    if (v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = [(NSMutableDictionary *)self->_options mutableCopy];
      v70 = 0;
      v71 = &v70;
      v72 = 0x2050000000;
      v33 = qword_100025E20;
      v73 = qword_100025E20;
      if (!qword_100025E20)
      {
        location[0] = _NSConcreteStackBlock;
        location[1] = 3221225472;
        location[2] = sub_10000E310;
        location[3] = &unk_10001CA18;
        location[4] = &v70;
        sub_10000E310(location);
        v33 = v71[3];
      }

      v34 = v33;
      _Block_object_dispose(&v70, 8);
      v35 = objc_alloc_init(v33);
      laContext = self->_laContext;
      self->_laContext = v35;

      externalizedContext = [(LAContext *)self->_laContext externalizedContext];
      [(NSMutableDictionary *)v19 setObject:externalizedContext forKeyedSubscript:v17];

      v38 = sub_10000C1BC();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10000F77C();
      }
    }

    v39 = [TSSIMSetupFlow flowWithOptions:v19];
    setupFlow = self->_setupFlow;
    self->_setupFlow = v39;

    [(TSSIMSetupFlow *)self->_setupFlow setDelegate:self];
    objc_initWeak(location, self);
    v41 = self->_setupFlow;
    v26 = v66;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10000D510;
    v66[3] = &unk_10001C8E8;
    objc_copyWeak(&v68, location);
    v67 = completionCopy;
    [(TSSIMSetupFlow *)v41 firstViewController:v66];
    v27 = v67;
    goto LABEL_25;
  }

  v20 = [(NSMutableDictionary *)options valueForKey:v9];
  intValue3 = [v20 intValue];

  v22 = self->_options;
  if (intValue3 == 20)
  {
    v19 = v22;
    v23 = [TSSIMSetupFlow flowWithOptions:v19];
    v24 = self->_setupFlow;
    self->_setupFlow = v23;

    [(TSSIMSetupFlow *)self->_setupFlow setDelegate:self];
    objc_initWeak(location, self);
    v25 = self->_setupFlow;
    v26 = v63;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10000D5F8;
    v63[3] = &unk_10001C8E8;
    objc_copyWeak(&v65, location);
    v64 = completionCopy;
    [(TSSIMSetupFlow *)v25 firstViewController:v63];
    v27 = v64;
LABEL_25:

    objc_destroyWeak(v26 + 5);
    objc_destroyWeak(location);

    goto LABEL_11;
  }

  v28 = [(NSMutableDictionary *)v22 valueForKey:v9];
  intValue4 = [v28 intValue];

  if (intValue4 == 12)
  {
    v30 = [TSSIMSetupFlow flowWithOptions:self->_options];
    v31 = self->_setupFlow;
    self->_setupFlow = v30;

    [(TSSIMSetupFlow *)self->_setupFlow setDelegate:self];
    v32 = self->_setupFlow;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10000D6E0;
    v62[3] = &unk_10001C9C8;
    v62[4] = self;
    [(TSSIMSetupFlow *)v32 firstViewController:v62];
    goto LABEL_9;
  }

  v42 = [(NSMutableDictionary *)self->_options valueForKey:v9];
  intValue5 = [v42 intValue];
  v44 = TSFlowTypeActivationPolicyMismatch;

  if (v44 == intValue5)
  {
    [(TSSIMSetupSupportViewController *)self _presentPolicyRejectionViewController];
    goto LABEL_9;
  }

  v45 = [(NSMutableDictionary *)self->_options valueForKey:v9];
  if ([v45 intValue] == 13)
  {
    goto LABEL_35;
  }

  v46 = [(NSMutableDictionary *)self->_options valueForKey:v9];
  if ([v46 intValue] == 3)
  {
LABEL_34:

LABEL_35:
LABEL_36:
    v49 = [TSSIMSetupFlow flowWithOptions:self->_options];
    v50 = self->_setupFlow;
    self->_setupFlow = v49;

    [(TSSIMSetupFlow *)self->_setupFlow setDelegate:self];
    v51 = self->_setupFlow;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10000D6EC;
    v60[3] = &unk_10001C9F0;
    v60[4] = self;
    v61 = completionCopy;
    [(TSSIMSetupFlow *)v51 firstViewController:v60];

    goto LABEL_11;
  }

  v47 = [(NSMutableDictionary *)self->_options valueForKey:v9];
  if ([v47 intValue] == 18)
  {
LABEL_33:

    goto LABEL_34;
  }

  v48 = [(NSMutableDictionary *)self->_options valueForKey:v9];
  if ([v48 intValue] == 21)
  {

    goto LABEL_33;
  }

  v52 = [(NSMutableDictionary *)self->_options valueForKey:v9];
  intValue6 = [v52 intValue];

  if (intValue6 == 27)
  {
    goto LABEL_36;
  }

  v53 = [TSSIMSetupFlow flowWithOptions:self->_options];
  v54 = self->_setupFlow;
  self->_setupFlow = v53;

  [(TSSIMSetupFlow *)self->_setupFlow setDelegate:self];
  firstViewController = [(TSSIMSetupFlow *)self->_setupFlow firstViewController];
  if (!firstViewController)
  {
    v58 = sub_10000C1BC();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_10000F6FC();
    }

    [(TSSIMSetupSupportViewController *)self _deactivate];
    goto LABEL_10;
  }

  v56 = firstViewController;
  v57 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:v9];
  -[TSSIMSetupSupportViewController _presentFirstController:isRemoteSignup:](self, "_presentFirstController:isRemoteSignup:", v56, [v57 intValue] == 7);

LABEL_9:
  [(TSScreenLockObserver *)self->_screenLockObserver registerForLockNotifications];
LABEL_10:
  completionCopy->invoke(completionCopy);
LABEL_11:
}

- (void)handleButtonActions:(id)actions
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000D7E0;
  v3[3] = &unk_10001C778;
  v3[4] = self;
  [actions enumerateObjectsUsingBlock:v3];
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v5 = sub_10000C1BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F8F8(completed, v5);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D960;
  v6[3] = &unk_10001C7A0;
  v6[4] = self;
  [(TSSIMSetupSupportViewController *)self dismissViewControllerWithTransition:7 completion:v6];
}

- (void)userDidTapCancel
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000DB0C;
  v2[3] = &unk_10001C7A0;
  v2[4] = self;
  [(TSSIMSetupSupportViewController *)self dismissViewControllerWithTransition:7 completion:v2];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = TSSIMSetupSupportViewController;
  [(TSSIMSetupSupportViewController *)&v8 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  navigationController = [(TSSIMSetupSupportViewController *)self navigationController];
  view = [navigationController view];
  [view setBackgroundColor:v3];

  v6 = +[UINavigationBar appearance];
  [v6 _setHidesShadow:1];

  if ((+[TSUtilities isSolariumEnabled]& 1) == 0)
  {
    v7 = +[UINavigationBar appearance];
    [v7 setTranslucent:0];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (+[SSServiceUtilities isPad])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_presentFirstController:(id)controller isRemoteSignup:(BOOL)signup
{
  signupCopy = signup;
  controllerCopy = controller;
  v11 = [[UINavigationController alloc] initWithRootViewController:controllerCopy];

  [v11 setNavigationBarColor];
  [v11 setModalTransitionStyle:0];
  if (signupCopy)
  {
    [v11 setOverrideUserInterfaceStyle:2];
    [v11 setModalPresentationStyle:1];
    navigationBar = [v11 navigationBar];
    BPSApplyStyleToNavBar();
  }

  else if (+[SSServiceUtilities isPad])
  {
    navigationItem = [v11 navigationItem];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Cellular Data Account" value:&stru_10001CA70 table:@"Localizable"];
    [navigationItem setTitle:v10];

    [v11 setModalPresentationStyle:2];
  }

  [(TSSIMSetupSupportViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_presentPolicyRejectionViewController
{
  presentedViewController = [(TSSIMSetupSupportViewController *)self presentedViewController];

  if (presentedViewController)
  {

    [(TSSIMSetupSupportViewController *)self _deactivate];
  }

  else
  {
    v4 = [TSSIMSetupFlow flowWithOptions:self->_options];
    setupFlow = self->_setupFlow;
    self->_setupFlow = v4;

    [(TSSIMSetupFlow *)self->_setupFlow setDelegate:self];
    v6 = self->_setupFlow;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000DEC0;
    v7[3] = &unk_10001C9C8;
    v7[4] = self;
    [(TSSIMSetupFlow *)v6 firstViewController:v7];
  }
}

- (void)_presentIdentityShareViewController
{
  presentedViewController = [(TSSIMSetupSupportViewController *)self presentedViewController];

  if (presentedViewController)
  {

    [(TSSIMSetupSupportViewController *)self _deactivate];
  }

  else
  {
    v4 = [TSSIMSetupFlow flowWithOptions:self->_options];
    setupFlow = self->_setupFlow;
    self->_setupFlow = v4;

    [(TSSIMSetupFlow *)self->_setupFlow setDelegate:self];
    v6 = self->_setupFlow;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000E044;
    v7[3] = &unk_10001C9C8;
    v7[4] = self;
    [(TSSIMSetupFlow *)v6 firstViewController:v7];
  }
}

- (void)_deactivate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E16C;
  block[3] = &unk_10001C7A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cancelButtonTapped
{
  [(TSSIMSetupSupportViewController *)self dismissViewControllerWithTransition:7 completion:0];

  [(TSSIMSetupSupportViewController *)self _deactivate];
}

- (void)screenLockDidUpdate:(BOOL)update
{
  if (update)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:TSNotificationUserCanceled object:TSNotificationUserCanceledReason_ScreenLockEvent];

    [(TSSIMSetupSupportViewController *)self _cancelButtonTapped];
  }
}

@end