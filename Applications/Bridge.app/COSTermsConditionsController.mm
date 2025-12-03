@interface COSTermsConditionsController
- (BOOL)holdBeforeDisplaying;
- (COSBuddyControllerDelegate)delegate;
- (COSTermsConditionsController)init;
- (UIViewController)viewController;
- (double)waitScreenPushGracePeriod;
- (id)localizedWaitScreenDescription;
- (id)offlineLicenseController;
- (id)offlineWarrantyController;
- (id)termsEventWithDocumentationID:(id)d data:(id)data;
- (void)_cleanupLoader;
- (void)_popObjectModelAnimated:(BOOL)animated;
- (void)_presentDisagreeConfirmationAlert;
- (void)_showTermsFromRequest:(id)request;
- (void)buddyTCSubController:(id)controller didFinishWithAgree:(BOOL)agree;
- (void)dealloc;
- (void)endPerformancePhases;
- (void)enteredCompatibilityState:(id)state;
- (void)handleOnlineTermsAndConditionsResponse:(id)response forRequest:(id)request error:(id)error;
- (void)loader:(id)loader didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal;
- (void)markTermsAsAcceptedWithTermsEvent:(id)event;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion;
- (void)offlineTermsResponse:(id)response;
- (void)presentConfirmationAlertWithTitle:(id)title message:(id)message okButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle termsEvent:(id)event;
- (void)queryGizmoForShowWarrantySentinel;
- (void)requestOnlineTermsAndConditions;
- (void)retrieveOfflineTerms;
- (void)setDelegate:(id)delegate;
- (void)warrantySentinelResponse:(id)response;
@end

@implementation COSTermsConditionsController

- (COSTermsConditionsController)init
{
  v3.receiver = self;
  v3.super_class = COSTermsConditionsController;
  return [(COSTermsConditionsController *)&v3 init];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSTermsConditionsController;
  [(COSTermsConditionsController *)&v4 dealloc];
}

- (void)warrantySentinelResponse:(id)response
{
  responseCopy = response;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  delegate = [(COSTermsConditionsController *)self delegate];
  nextControllerAfterHold = [delegate nextControllerAfterHold];

  if (nextControllerAfterHold == self)
  {
    userInfo = [responseCopy userInfo];
    v10 = [userInfo objectForKey:PBBridgeWarrantySentinelExistsKey];
    self->_warrantySentinelExists = [v10 BOOLValue];

    v11 = +[UIApplication sharedApplication];
    activeWatch = [v11 activeWatch];

    v12 = [activeWatch valueForProperty:NRDevicePropertyPairingID];
    v13 = [activeWatch valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    userInfo2 = [responseCopy userInfo];
    v15 = [userInfo2 objectForKey:PBBridgeGizmoAppleLanguagesKey];

    userInfo3 = [responseCopy userInfo];
    v17 = [userInfo3 objectForKey:PBBridgeGizmoAppleLocaleKey];

    if (!v17)
    {
      v17 = @"en_US";
    }

    v29 = v13;
    v30 = v12;
    v18 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences" pairingID:v12 pairingDataStore:v13];
    v28 = v15;
    [v18 setObject:v15 forKey:@"AppleLanguages"];
    [v18 setObject:v17 forKey:@"AppleLocale"];
    v19 = [NSLocale componentsFromLocaleIdentifier:v17];
    v20 = +[NSLocale currentLocale];
    localeIdentifier = [v20 localeIdentifier];
    v22 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100106D18;
    v33[3] = &unk_10026BEE0;
    v23 = v19;
    v34 = v23;
    v24 = v22;
    v35 = v24;
    v25 = objc_retainBlock(v33);
    if ((v25[2])(v25, NSLocaleLanguageCode) && (v25[2])(v25, NSLocaleScriptCode) && (v25[2])(v25, NSLocaleCountryCode) && (v25[2])(v25, NSLocaleVariantCode))
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100106DA4;
      v31[3] = &unk_10026BF08;
      v32 = v18;
      v26 = objc_retainBlock(v31);
      CFPreferencesAppSynchronize(kCFPreferencesAnyApplication);
      (v26[2])(v26, @"AppleICUForce12HourTime");
      (v26[2])(v26, @"AppleICUForce24HourTime");
    }

    synchronize = [v18 synchronize];
    [(COSTermsConditionsController *)self requestOnlineTermsAndConditions];
  }

  else
  {
    activeWatch = pbb_setupflow_log();
    if (os_log_type_enabled(activeWatch, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v37 = 84;
      v38 = 2080;
      v39 = "[COSTermsConditionsController warrantySentinelResponse:]";
      _os_log_impl(&_mh_execute_header, activeWatch, OS_LOG_TYPE_DEFAULT, "%d %s: Ignoring callback because no longer top controller", buf, 0x12u);
    }
  }
}

- (void)offlineTermsResponse:(id)response
{
  responseCopy = response;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  delegate = [(COSTermsConditionsController *)self delegate];
  nextControllerAfterHold = [delegate nextControllerAfterHold];

  userInfo = pbb_setupflow_log();
  v9 = os_log_type_enabled(userInfo, OS_LOG_TYPE_DEFAULT);
  if (nextControllerAfterHold == self)
  {
    if (v9)
    {
      LOWORD(v30[0]) = 0;
      _os_log_impl(&_mh_execute_header, userInfo, OS_LOG_TYPE_DEFAULT, "Handling offline terms response", v30, 2u);
    }

    userInfo = [responseCopy userInfo];
    v10 = PBBridgeOfflineTermsLicenseKey;
    v11 = [userInfo objectForKeyedSubscript:PBBridgeOfflineTermsLicenseKey];
    v12 = [(COSTermsConditionsController *)self termsEventWithDocumentationID:v10 data:v11];
    offlineLicense = self->_offlineLicense;
    self->_offlineLicense = v12;

    v14 = [userInfo objectForKeyedSubscript:PBBridgeOfflineTermsMultitermsKey];
    v15 = [(COSTermsConditionsController *)self termsEventWithDocumentationID:v10 data:v14];
    offlineMultiterms = self->_offlineMultiterms;
    self->_offlineMultiterms = v15;

    v17 = [userInfo objectForKeyedSubscript:PBBridgeOfflineTermsWarrantyKey];
    v18 = [(COSTermsConditionsController *)self termsEventWithDocumentationID:v10 data:v17];
    offlineWarranty = self->_offlineWarranty;
    self->_offlineWarranty = v18;

    if (self->_offlineMultiterms)
    {
      v20 = objc_alloc_init(RUILoader);
      loader = self->_loader;
      self->_loader = v20;

      v22 = self->_loader;
      v23 = objc_opt_new();
      [(RUILoader *)v22 setStyle:v23];

      [(RUILoader *)self->_loader setDelegate:self];
      v24 = self->_loader;
      WeakRetained = [(NRTermsEvent *)self->_offlineMultiterms termsText];
      v26 = +[NSBundle mainBundle];
      resourceURL = [v26 resourceURL];
      [(RUILoader *)v24 loadXMLUIWithData:WeakRetained baseURL:resourceURL];
    }

    else
    {
      offlineLicenseController = [(COSTermsConditionsController *)self offlineLicenseController];
      viewController = self->_viewController;
      self->_viewController = offlineLicenseController;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained buddyControllerReleaseHold:self];
    }

    [(COSTermsConditionsController *)self endPerformancePhases];
  }

  else if (v9)
  {
    v30[0] = 67109378;
    v30[1] = 143;
    v31 = 2080;
    v32 = "[COSTermsConditionsController offlineTermsResponse:]";
    _os_log_impl(&_mh_execute_header, userInfo, OS_LOG_TYPE_DEFAULT, "%d %s: Ignoring callback because no longer top controller", v30, 0x12u);
  }
}

- (id)termsEventWithDocumentationID:(id)d data:(id)data
{
  if (data)
  {
    dataCopy = data;
    dCopy = d;
    v7 = +[UIApplication sharedApplication];
    activeWatch = [v7 activeWatch];

    v9 = [activeWatch valueForProperty:NRDevicePropertyPairingID];
    v10 = [[NRTermsEvent alloc] initWithDeviceID:v9];
    [v10 setTermsText:dataCopy];

    [v10 setDocumentationID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)offlineLicenseController
{
  offlineLicenseVC = self->_offlineLicenseVC;
  if (!offlineLicenseVC)
  {
    v4 = [BuddySimpleTCController alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_10026E598 table:@"Localizable"];
    v7 = [(BuddySimpleTCController *)v4 initWithTitle:v6 content:self->_offlineLicense];
    v8 = self->_offlineLicenseVC;
    self->_offlineLicenseVC = v7;

    [(BuddySimpleTCController *)self->_offlineLicenseVC setDelegate:self];
    offlineLicenseVC = self->_offlineLicenseVC;
  }

  return offlineLicenseVC;
}

- (id)offlineWarrantyController
{
  offlineWarrantyVC = self->_offlineWarrantyVC;
  if (!offlineWarrantyVC)
  {
    v4 = [BuddySimpleTCController alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"WARRANTY" value:&stru_10026E598 table:@"Localizable"];
    v7 = [(BuddySimpleTCController *)v4 initWithTitle:v6 content:self->_offlineWarranty];
    v8 = self->_offlineWarrantyVC;
    self->_offlineWarrantyVC = v7;

    [(BuddySimpleTCController *)self->_offlineWarrantyVC setDelegate:self];
    offlineWarrantyVC = self->_offlineWarrantyVC;
  }

  return offlineWarrantyVC;
}

- (void)requestOnlineTermsAndConditions
{
  v3 = +[UIApplication sharedApplication];
  activeWatch = [v3 activeWatch];

  v5 = [[COSAAGenericTermsUIRequest alloc] initWithGizmoDevice:activeWatch showWarranty:self->_warrantySentinelExists];
  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _bridgeConciseDebugDescription = [activeWatch _bridgeConciseDebugDescription];
    *buf = 138412290;
    v11 = _bridgeConciseDebugDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting online T&Cs for device: (%@)", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010752C;
  v8[3] = &unk_10026BF30;
  objc_copyWeak(&v9, buf);
  [(COSAAGenericTermsUIRequest *)v5 performRequestWithHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)handleOnlineTermsAndConditionsResponse:(id)response forRequest:(id)request error:(id)error
{
  responseCopy = response;
  requestCopy = request;
  errorCopy = error;
  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = responseCopy;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Online T&Cs request callback called with response (%@); error: (%@)", buf, 0x16u);
  }

  v12 = responseCopy;
  responseData = [v12 responseData];
  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107784;
  block[3] = &unk_10026A9A0;
  objc_copyWeak(&v23, buf);
  v19 = errorCopy;
  v20 = v12;
  v21 = responseData;
  v22 = requestCopy;
  v14 = requestCopy;
  v15 = responseData;
  v16 = v12;
  v17 = errorCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)_showTermsFromRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(RUILoader);
  loader = self->_loader;
  self->_loader = v5;

  v7 = self->_loader;
  v8 = objc_opt_new();
  [(RUILoader *)v7 setStyle:v8];

  [(RUILoader *)self->_loader setDelegate:self];
  v9 = self->_loader;
  termsText = [(NRTermsEvent *)self->_onlineTerms termsText];
  urlRequest = [requestCopy urlRequest];

  v11 = [urlRequest URL];
  [(RUILoader *)v9 loadXMLUIWithData:termsText baseURL:v11];
}

- (void)retrieveOfflineTerms
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"offlineTermsResponse:" name:PBBridgeOfflineTermsNotification object:0];

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting offline terms", v7, 2u);
  }

  v5 = +[UIApplication sharedApplication];
  bridgeController = [v5 bridgeController];
  [bridgeController queryGizmoForOfflineTerms];
}

- (void)enteredCompatibilityState:(id)state
{
  userInfo = [state userInfo];
  v5 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryCompatibilityStateKey];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Terms Controller: Entered Compatibility State: %d", v9, 8u);
  }

  if (unsignedIntValue >= 3u)
  {
    [(COSTermsConditionsController *)self queryGizmoForShowWarrantySentinel];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];
  }
}

- (void)queryGizmoForShowWarrantySentinel
{
  v3 = +[COSBackupManager sharedBackupManager];
  deviceNameToRestore = [v3 deviceNameToRestore];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"warrantySentinelResponse:" name:PBBridgeWarrantySentinelNotification object:0];

  v5 = +[UIApplication sharedApplication];
  bridgeController = [v5 bridgeController];
  [bridgeController queryGizmoForShowWarrantySentinelAndRestoreDeviceName:deviceNameToRestore];
}

- (void)endPerformancePhases
{
  if (PBLogPerformanceMetrics())
  {
    holdActivityIdentifier = [(COSTermsConditionsController *)self holdActivityIdentifier];
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v3 endMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
    v5 = v4;

    [PBBridgeCAReporter pushTimingForTypeNamed:holdActivityIdentifier withValue:v5];
    v6 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v6 endMacroActivity:@"COSPostWristChoiceUserWaitPhase" beginTime:CFAbsoluteTimeGetCurrent()];
    v8 = v7;

    [PBBridgeCAReporter pushTimingForTypeNamed:@"COSPostWristChoiceUserWaitPhase" withValue:v8];
  }
}

- (BOOL)holdBeforeDisplaying
{
  if (PBLogPerformanceMetrics())
  {
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    holdActivityIdentifier = [(COSTermsConditionsController *)self holdActivityIdentifier];
    [v3 beginMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
  }

  return 1;
}

- (UIViewController)viewController
{
  viewController = self->_viewController;
  if (!viewController)
  {
    v4 = pbb_setupflow_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Terms Controller has no viewController assigned yet", v6, 2u);
    }

    viewController = self->_viewController;
  }

  return viewController;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification;
  [v4 addObserver:self selector:"enteredCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  compatibilityState = [v6 compatibilityState];

  if (compatibilityState < 3)
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Terms Controller has begun observing for Compatibility State Changes", v10, 2u);
    }
  }

  else
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:v5 object:0];

    [(COSTermsConditionsController *)self queryGizmoForShowWarrantySentinel];
  }
}

- (void)markTermsAsAcceptedWithTermsEvent:(id)event
{
  eventCopy = event;
  if (self->_warrantySentinelExists)
  {
    v5 = +[UIApplication sharedApplication];
    bridgeController = [v5 bridgeController];
    [bridgeController tellGizmoToDeleteWarrantySentinel];
  }

  if (eventCopy)
  {
    v7 = +[UIApplication sharedApplication];
    WeakRetained = [v7 activeWatch];

    v9 = [WeakRetained valueForProperty:NRDevicePropertyPairingID];
    v10 = objc_alloc_init(NRTermsAcknowledgementRegistry);
    [eventCopy updateEventDate];
    [eventCopy setEventType:4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001084D8;
    v11[3] = &unk_1002684A8;
    v11[4] = self;
    [v10 add:eventCopy forDeviceID:v9 withCompletion:v11];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained buddyControllerDone:self];
  }
}

- (void)presentConfirmationAlertWithTitle:(id)title message:(id)message okButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle termsEvent:(id)event
{
  eventCopy = event;
  cancelButtonTitleCopy = cancelButtonTitle;
  buttonTitleCopy = buttonTitle;
  v15 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v16 = [UIAlertAction actionWithTitle:cancelButtonTitleCopy style:1 handler:0];

  [v15 addAction:v16];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100108764;
  v22[3] = &unk_10026BF58;
  v22[4] = self;
  v23 = eventCopy;
  v17 = eventCopy;
  v18 = [UIAlertAction actionWithTitle:buttonTitleCopy style:0 handler:v22];

  [v15 addAction:v18];
  v19 = pbb_setupflow_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Presenting 'confirmation' alert", v21, 2u);
  }

  viewController = [(COSTermsConditionsController *)self viewController];
  [viewController presentViewController:v15 animated:1 completion:&stru_10026BF78];
}

- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal
{
  modelCopy = model;
  defaultPages = [modelCopy defaultPages];
  v10 = [defaultPages count];

  if (v10 && ([modelCopy setDelegate:self], !self->_viewController))
  {
    defaultPages2 = [modelCopy defaultPages];
    v15 = [defaultPages2 objectAtIndex:0];
    viewController = self->_viewController;
    self->_viewController = v15;

    objc_storeStrong(&self->_rootObjectModel, model);
    v17 = pbb_setupflow_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v21[0] = 67109120;
      v21[1] = [WeakRetained buddyControllerIsBeingHeldOff:self];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Terms controller being held: %d", v21, 8u);
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    [v19 buddyControllerReleaseHold:self];
  }

  else
  {
    if (!self->_objectModels)
    {
      v11 = objc_alloc_init(NSMutableArray);
      objectModels = self->_objectModels;
      self->_objectModels = v11;
    }

    if (signal == 4)
    {
      [(COSTermsConditionsController *)self _popObjectModelAnimated:1];
    }

    else if (signal == 2)
    {
      _navigationController = [(COSTermsConditionsController *)self _navigationController];
      [modelCopy presentInParentViewController:_navigationController animated:1 completion:&stru_10026BF98];

      [(NSMutableArray *)self->_objectModels addObject:modelCopy];
    }
  }

  [(COSTermsConditionsController *)self _cleanupLoader];
  [(RUIPage *)self->_loadingPage setLoading:0];
  loadingPage = self->_loadingPage;
  self->_loadingPage = 0;
}

- (void)loader:(id)loader didFinishLoadWithError:(id)error forRequest:(id)request
{
  loaderCopy = loader;
  errorCopy = error;
  requestCopy = request;
  linkPressLoadCompletion = self->_linkPressLoadCompletion;
  if (linkPressLoadCompletion)
  {
    linkPressLoadCompletion[2](linkPressLoadCompletion, errorCopy == 0, errorCopy);
    v12 = self->_linkPressLoadCompletion;
    self->_linkPressLoadCompletion = 0;
  }

  if (errorCopy)
  {
    v13 = pbb_setupflow_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10018AB50(errorCopy, v13);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = [WeakRetained buddyControllerIsBeingHeldOff:self];

    if (v15)
    {
      v16 = pbb_setupflow_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10018ABC8(v16);
      }

      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 buddyControllerReleaseHold:self];
    }

    [(RUIPage *)self->_loadingPage setLoading:0];
    loadingPage = self->_loadingPage;
    self->_loadingPage = 0;

    [(COSTermsConditionsController *)self _cleanupLoader];
  }
}

- (void)_cleanupLoader
{
  [(RUILoader *)self->_loader cancel];
  [(RUILoader *)self->_loader setDelegate:0];
  loader = self->_loader;
  self->_loader = 0;
}

- (void)_popObjectModelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NSMutableArray *)self->_objectModels count])
  {
    lastObject = [(NSMutableArray *)self->_objectModels lastObject];
    displayedPages = [lastObject displayedPages];
    v6 = [displayedPages count];
    _navigationController = [(COSTermsConditionsController *)self _navigationController];
    v8 = v6 - 1;
    if (v8 >= 0)
    {
      do
      {
        v9 = [displayedPages objectAtIndexedSubscript:v8];
        topViewController = [_navigationController topViewController];

        if (topViewController == v9)
        {
          if (v8)
          {
            v11 = 0;
          }

          else
          {
            v11 = animatedCopy;
          }

          v12 = [_navigationController popViewControllerAnimated:v11];
        }
      }

      while (v8-- > 0);
    }

    [(NSMutableArray *)self->_objectModels removeLastObject];
  }
}

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  modelCopy = model;
  buttonCopy = button;
  if ([buttonCopy isEqualToString:@"agree"])
  {
    if (self->_didAgree)
    {
      if (self->_appearingFromBackNavigation)
      {
        v9 = pbb_setupflow_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "User has already agreed to terms, advancing.", v19, 2u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained buddyControllerDone:self];

        self->_appearingFromBackNavigation = 0;
      }

      goto LABEL_25;
    }

    self->_didAgree = 1;
    if (self->_onlineTerms)
    {
      clientInfo = [modelCopy clientInfo];
      navigationController = [clientInfo objectForKey:@"agreeDialogTitle"];
      v13 = [clientInfo objectForKey:@"agreeDialogText"];
      v14 = [clientInfo objectForKey:@"agreeDialogOK"];
      v15 = [clientInfo objectForKey:@"agreeDialogCancel"];
      v16 = v15;
      if (v13 && v14 && v15)
      {
        [(COSTermsConditionsController *)self presentConfirmationAlertWithTitle:navigationController message:v13 okButtonTitle:v14 cancelButtonTitle:v15 termsEvent:self->_onlineTerms];
      }

      else
      {
        v18 = pbb_setupflow_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "User agreed to terms with no confirmation", buf, 2u);
        }

        [(COSTermsConditionsController *)self markTermsAsAcceptedWithTermsEvent:self->_onlineTerms];
      }

      goto LABEL_24;
    }

    [(COSTermsConditionsController *)self buddyTCSubController:self->_viewController didFinishWithAgree:1];
LABEL_25:
    [(COSTermsConditionsController *)self _cleanupLoader];
    goto LABEL_26;
  }

  if ([buttonCopy isEqualToString:@"disagree"])
  {
    [(COSTermsConditionsController *)self _presentDisagreeConfirmationAlert];
    goto LABEL_25;
  }

  if ([buttonCopy isEqualToString:@"iOSTerms"])
  {
    offlineLicenseController = [(COSTermsConditionsController *)self offlineLicenseController];
LABEL_18:
    clientInfo = offlineLicenseController;
    navigationController = [(UIViewController *)self->_viewController navigationController];
    [navigationController pushViewController:clientInfo animated:1];
LABEL_24:

    goto LABEL_25;
  }

  if ([buttonCopy isEqualToString:@"iOSWarranty"])
  {
    offlineLicenseController = [(COSTermsConditionsController *)self offlineWarrantyController];
    goto LABEL_18;
  }

LABEL_26:
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion
{
  modelCopy = model;
  linkCopy = link;
  methodCopy = method;
  completionCopy = completion;
  v14 = pbb_setupflow_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [linkCopy absoluteString];
    *buf = 138412290;
    v49 = absoluteString;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Tapped URl: %@", buf, 0xCu);
  }

  v16 = objc_retainBlock(completionCopy);
  linkPressLoadCompletion = self->_linkPressLoadCompletion;
  self->_linkPressLoadCompletion = v16;

  if (!linkCopy || (-[RUILoader URL](self->_loader, "URL"), v18 = objc_claimAutoreleasedReturnValue(), [v18 absoluteURL], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(linkCopy, "absoluteURL"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqual:", v20), v20, v19, v18, (v21 & 1) == 0))
  {
    visiblePage = [modelCopy visiblePage];
    loadingPage = self->_loadingPage;
    self->_loadingPage = visiblePage;

    [(RUIPage *)self->_loadingPage setLoading:1];
    [(COSTermsConditionsController *)self _cleanupLoader];
    lowercaseString = [methodCopy lowercaseString];
    v25 = [lowercaseString isEqualToString:@"post"];

    if (v25)
    {
      postbackData = [modelCopy postbackData];
    }

    else
    {
      postbackData = 0;
    }

    v27 = [[NSMutableURLRequest alloc] initWithURL:linkCopy cachePolicy:1 timeoutInterval:30.0];
    v28 = v27;
    if (postbackData)
    {
      [v27 setHTTPBody:postbackData];
      [v28 setHTTPMethod:@"POST"];
      [v28 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    }

    v47 = methodCopy;
    if (self->_warrantySentinelExists)
    {
      [v28 setValue:@"true" forHTTPHeaderField:@"X-MMe-Show-Warranty"];
    }

    v29 = +[AADeviceInfo clientInfoHeader];
    [v28 setValue:v29 forHTTPHeaderField:@"X-MMe-Client-Info"];

    v30 = +[NSLocale currentLocale];
    v31 = [v30 objectForKey:NSLocaleCountryCode];
    uppercaseString = [v31 uppercaseString];
    [v28 setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

    v33 = +[NSLocale preferredLanguages];
    v34 = [v33 componentsJoinedByString:{@", "}];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = @"en";
    }

    [v28 addValue:v36 forHTTPHeaderField:@"X-MMe-Language"];

    v37 = +[UIApplication sharedApplication];
    activeWatch = [v37 activeWatch];

    v39 = [COSAAGenericTermsUIRequest clientInfoHeaderForDevice:activeWatch];
    v40 = +[COSAAGenericTermsUIRequest pairedClientInfoHeaderName];
    [v28 setValue:v39 forHTTPHeaderField:v40];

    v41 = [activeWatch valueForProperty:NRDevicePropertyModelNumber];
    v42 = +[COSAAGenericTermsUIRequest deviceModelHeaderName];
    [v28 setValue:v41 forHTTPHeaderField:v42];

    v43 = objc_alloc_init(RUILoader);
    loader = self->_loader;
    self->_loader = v43;

    v45 = self->_loader;
    v46 = objc_opt_new();
    [(RUILoader *)v45 setStyle:v46];

    [(RUILoader *)self->_loader setDelegate:self];
    [(RUILoader *)self->_loader loadXMLUIWithRequest:v28];

    methodCopy = v47;
  }
}

- (void)buddyTCSubController:(id)controller didFinishWithAgree:(BOOL)agree
{
  agreeCopy = agree;
  controllerCopy = controller;
  if (agreeCopy)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"AGREE_DIALOG_TITLE" value:&stru_10026E598 table:@"Localizable"];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"AGREE_DIALOG_TEXT" value:&stru_10026E598 table:@"Localizable"];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Localizable"];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"AGREE" value:&stru_10026E598 table:@"Localizable"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      content = [controllerCopy content];
    }

    else
    {
      content = 0;
    }

    [(COSTermsConditionsController *)self presentConfirmationAlertWithTitle:v7 message:v9 okButtonTitle:v13 cancelButtonTitle:v11 termsEvent:content];
  }

  else
  {
    [(COSTermsConditionsController *)self _presentDisagreeConfirmationAlert];
  }
}

- (void)_presentDisagreeConfirmationAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"DISAGREE_DIALOG_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"DISAGREE_DIALOG_TEXT" value:&stru_10026E598 table:@"Localizable"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DISAGREE_CANCEL_SETUP" value:&stru_10026E598 table:@"Localizable"];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:&stru_10026BFB8];
  [v7 addAction:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"DISAGREE_CONTINUE" value:&stru_10026E598 table:@"Localizable"];
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:0];
  [v7 addAction:v13];

  v14 = pbb_setupflow_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Presenting disagree confirmation alert", v16, 2u);
  }

  viewController = [(COSTermsConditionsController *)self viewController];
  [viewController presentViewController:v7 animated:1 completion:&stru_10026BFD8];
}

- (double)waitScreenPushGracePeriod
{
  v2 = +[COSInitialPropertyExchangeViewController controllerNeedsToRun];
  result = 5.0;
  if (v2)
  {
    return 3.0;
  }

  return result;
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TERMS_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end