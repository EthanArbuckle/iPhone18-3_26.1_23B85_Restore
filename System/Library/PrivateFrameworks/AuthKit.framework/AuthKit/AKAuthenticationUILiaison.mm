@interface AKAuthenticationUILiaison
+ (AKAuthenticationUILiaison)sharedInstance;
- (AKAuthenticationUILiaison)init;
- (BOOL)_isBackgroundClient:(id)client eligibleForForegroundAuthenticationWithContext:(id)context;
- (id)_notificationDictionaryForClient:(id)client context:(id)context needFullUI:(BOOL)i;
- (id)_optionsForCreatingUserNotificationWithTitle:(id)title message:(id)message defaultButton:(id)button alternateButton:(id)alternateButton serviceType:(int64_t)type;
- (id)_stringByAppendingBlameIfNecessary:(id)necessary withContext:(id)context client:(id)client;
- (void)_performBlockWithClient:(id)client context:(id)context requireFullUICapability:(BOOL)capability allowRedirectToSettings:(BOOL)settings block:(id)block;
- (void)activateProximitySession:(id)session client:(id)client context:(id)context completion:(id)completion;
- (void)dismissBasicLoginUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)dismissKeepUsingUIForContext:(id)context client:(id)client withCompletion:(id)completion;
- (void)dismissNativeRecoveryUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)dismissProximityPairingUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)dismissSecondFactorUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)dismissServerProvidedUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)fetchUICapableContext:(id)context client:(id)client completion:(id)completion;
- (void)presentBasicLoginUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)presentBiometricOrPasscodeValidationForContext:(id)context client:(id)client completion:(id)completion;
- (void)presentFidoAuthForContext:(id)context fidoContext:(id)fidoContext client:(id)client completion:(id)completion;
- (void)presentKeepUsingUIForContext:(id)context client:(id)client appleID:(id)d completion:(id)completion;
- (void)presentLoginAlertForContext:(id)context client:(id)client withAlertDetails:(id)details completion:(id)completion;
- (void)presentNativeRecoveryUIForContext:(id)context recoveryContext:(id)recoveryContext client:(id)client completion:(id)completion;
- (void)presentProximityBroadcastUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)presentProximityPairingUIForContext:(id)context client:(id)client event:(id)event completion:(id)completion;
- (void)presentProximityPairingUIForContext:(id)context client:(id)client verificationCode:(id)code completion:(id)completion;
- (void)presentProximityPinCodeUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)presentSecondFactorAlertForContext:(id)context client:(id)client withAlertDetails:(id)details completion:(id)completion;
- (void)presentSecondFactorUIForContext:(id)context client:(id)client completion:(id)completion;
- (void)presentServerProvidedUIForContext:(id)context client:(id)client withConfiguration:(id)configuration completion:(id)completion;
- (void)promptForAppleIDSettingsRedirectWithContext:(id)context client:(id)client needFullUI:(BOOL)i completion:(id)completion;
- (void)showProximityErrorForContext:(id)context client:(id)client completion:(id)completion;
@end

@implementation AKAuthenticationUILiaison

+ (AKAuthenticationUILiaison)sharedInstance
{
  v5 = &unk_100374800;
  location = 0;
  objc_storeStrong(&location, &stru_100323E60);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003747F8;

  return v2;
}

- (AKAuthenticationUILiaison)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = AKAuthenticationUILiaison;
  v11 = [(AKAuthenticationUILiaison *)&v9 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    v2 = +[AKAccountManager sharedInstance];
    accountManager = v11->_accountManager;
    v11->_accountManager = v2;
    _objc_release(accountManager);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AKUIWorkQueue", v8);
    clientUIWorkQueue = v11->_clientUIWorkQueue;
    v11->_clientUIWorkQueue = v4;
    _objc_release(clientUIWorkQueue);
    _objc_release(v8);
  }

  v7 = _objc_retain(v11);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)fetchUICapableContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, client);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v9 = selfCopy;
  v7 = v16;
  v8 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001237C0;
  v13 = &unk_100323E88;
  v14 = _objc_retain(v15);
  [(AKAuthenticationUILiaison *)v9 _performBlockWithClient:v7 context:v8 requireFullUICapability:1 allowRedirectToSettings:1 block:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)presentKeepUsingUIForContext:(id)context client:(id)client appleID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v20 = 0;
  objc_storeStrong(&v20, client);
  v19 = 0;
  objc_storeStrong(&v19, d);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v11 = selfCopy;
  v9 = v20;
  v10 = location[0];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100123CA4;
  v15 = &unk_100323EB0;
  v17 = _objc_retain(v18);
  v16 = _objc_retain(v19);
  [(AKAuthenticationUILiaison *)v11 _performBlockWithClient:v9 context:v10 requireFullUICapability:1 allowRedirectToSettings:1 block:?];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissKeepUsingUIForContext:(id)context client:(id)client withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17 = 0;
  objc_storeStrong(&v17, client);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v9 = selfCopy;
  v7 = v17;
  v8 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001240D0;
  v14 = &unk_100323E88;
  v15 = _objc_retain(v16);
  [(AKAuthenticationUILiaison *)v9 _performBlockWithClient:v7 context:v8 requireFullUICapability:1 allowRedirectToSettings:0 block:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)presentBasicLoginUIForContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v21 = 0;
  objc_storeStrong(&v21, client);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  [AKCAAuthPromptReporter reportPromptByClient:v21 withContext:location[0]];
  if (([AKAutoBugCapture shouldCapturePromptBugForContext:location[0]]& 1) != 0)
  {
    v8 = AKBugCaptureSubTypePasswordPrompt;
    bundleID = [v21 bundleID];
    v9 = [AKAutoBugCapture userInfoFromContext:location[0]];
    [AKAutoBugCapture triggerAutoBugCaptureWithSubType:v8 andBundleID:bundleID userInfo:?];
    _objc_release(v9);
    _objc_release(bundleID);
  }

  v7 = selfCopy;
  v5 = v21;
  v6 = location[0];
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1001245FC;
  v17 = &unk_100323EB0;
  v19 = _objc_retain(v20);
  v18 = _objc_retain(selfCopy);
  [(AKAuthenticationUILiaison *)v7 _performBlockWithClient:v5 context:v6 requireFullUICapability:0 allowRedirectToSettings:1 block:&v13];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIForContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17 = 0;
  objc_storeStrong(&v17, client);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v9 = selfCopy;
  v7 = v17;
  v8 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100124E80;
  v14 = &unk_100323E88;
  v15 = _objc_retain(v16);
  [(AKAuthenticationUILiaison *)v9 _performBlockWithClient:v7 context:v8 requireFullUICapability:0 allowRedirectToSettings:0 block:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertForContext:(id)context client:(id)client withAlertDetails:(id)details completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, client);
  v21 = 0;
  objc_storeStrong(&v21, details);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  v11 = selfCopy;
  v9 = v22;
  v10 = location[0];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1001254FC;
  v16 = &unk_100323F50;
  v19 = _objc_retain(v20);
  v17 = _objc_retain(selfCopy);
  v18 = _objc_retain(v21);
  [(AKAuthenticationUILiaison *)v11 _performBlockWithClient:v9 context:v10 requireFullUICapability:0 allowRedirectToSettings:0 block:?];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorUIForContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17 = 0;
  objc_storeStrong(&v17, client);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v10 = selfCopy;
  v7 = v17;
  v8 = location[0];
  _isFullUICapabilityRequiredFor2FA = [(AKAuthenticationUILiaison *)selfCopy _isFullUICapabilityRequiredFor2FA];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100125E18;
  v14 = &unk_100323E88;
  v15 = _objc_retain(v16);
  [(AKAuthenticationUILiaison *)v10 _performBlockWithClient:v7 context:v8 requireFullUICapability:_isFullUICapabilityRequiredFor2FA allowRedirectToSettings:1 block:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissSecondFactorUIForContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, client);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v10 = selfCopy;
  v7 = v18;
  v8 = location[0];
  _isFullUICapabilityRequiredFor2FA = [(AKAuthenticationUILiaison *)selfCopy _isFullUICapabilityRequiredFor2FA];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10012623C;
  v15 = &unk_100323E88;
  v16 = _objc_retain(v17);
  [(AKAuthenticationUILiaison *)v10 _performBlockWithClient:v7 context:v8 requireFullUICapability:_isFullUICapabilityRequiredFor2FA allowRedirectToSettings:0 block:?];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorAlertForContext:(id)context client:(id)client withAlertDetails:(id)details completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, client);
  v21 = 0;
  objc_storeStrong(&v21, details);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  v12 = selfCopy;
  v9 = v22;
  v10 = location[0];
  _isFullUICapabilityRequiredFor2FA = [(AKAuthenticationUILiaison *)selfCopy _isFullUICapabilityRequiredFor2FA];
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1001266C0;
  v17 = &unk_100323EB0;
  v19 = _objc_retain(v20);
  v18 = _objc_retain(v21);
  [(AKAuthenticationUILiaison *)v12 _performBlockWithClient:v9 context:v10 requireFullUICapability:_isFullUICapabilityRequiredFor2FA allowRedirectToSettings:0 block:?];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)presentServerProvidedUIForContext:(id)context client:(id)client withConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v31 = 0;
  objc_storeStrong(&v31, client);
  v30 = 0;
  objc_storeStrong(&v30, configuration);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v28 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] client:v31 eventName:@"com.apple.authkit.serverUIStart" error:0];
  v9 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
  [v9 sendEvent:v28];
  _objc_release(v9);
  v27 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] client:v31 eventName:@"com.apple.authkit.serverUIFinish" error:0];
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_100126D60;
  v24 = &unk_100323F78;
  v25 = _objc_retain(v29);
  v26 = objc_retainBlock(&v20);
  v12 = selfCopy;
  v10 = v31;
  v11 = location[0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100126E54;
  v16 = &unk_100323F50;
  v19 = _objc_retain(v26);
  v17 = _objc_retain(v27);
  v18 = _objc_retain(v30);
  [(AKAuthenticationUILiaison *)v12 _performBlockWithClient:v10 context:v11 requireFullUICapability:1 allowRedirectToSettings:1 block:?];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissServerProvidedUIForContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17 = 0;
  objc_storeStrong(&v17, client);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v9 = selfCopy;
  v7 = v17;
  v8 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100127520;
  v14 = &unk_100323E88;
  v15 = _objc_retain(v16);
  [(AKAuthenticationUILiaison *)v9 _performBlockWithClient:v7 context:v8 requireFullUICapability:1 allowRedirectToSettings:0 block:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)presentNativeRecoveryUIForContext:(id)context recoveryContext:(id)recoveryContext client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v31 = 0;
  objc_storeStrong(&v31, recoveryContext);
  v30 = 0;
  objc_storeStrong(&v30, client);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v28 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] client:v30 eventName:@"com.apple.authkit.nativeRecoveryStart" error:0];
  v9 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
  [v9 sendEvent:v28];
  _objc_release(v9);
  v27 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] client:v30 eventName:@"com.apple.authkit.nativeRecoveryFinish" error:0];
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_100127D04;
  v24 = &unk_100323FC8;
  v25 = _objc_retain(v29);
  v26 = objc_retainBlock(&v20);
  v12 = selfCopy;
  v10 = v30;
  v11 = location[0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100127DD4;
  v16 = &unk_100323F50;
  v19 = _objc_retain(v26);
  v17 = _objc_retain(v27);
  v18 = _objc_retain(v31);
  [(AKAuthenticationUILiaison *)v12 _performBlockWithClient:v10 context:v11 requireFullUICapability:1 allowRedirectToSettings:1 block:?];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissNativeRecoveryUIForContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, client);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v9 = selfCopy;
  v7 = v16;
  v8 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001284E8;
  v13 = &unk_100323E88;
  v14 = _objc_retain(v15);
  [(AKAuthenticationUILiaison *)v9 _performBlockWithClient:v7 context:v8 requireFullUICapability:1 allowRedirectToSettings:1 block:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)presentBiometricOrPasscodeValidationForContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, client);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = 1;
  v15 = 1;
  v9 = selfCopy;
  v7 = v18;
  v8 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100128B74;
  v13 = &unk_100323E88;
  v14 = _objc_retain(v17);
  [(AKAuthenticationUILiaison *)v9 _performBlockWithClient:v7 context:v8 requireFullUICapability:1 allowRedirectToSettings:1 block:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)presentFidoAuthForContext:(id)context fidoContext:(id)fidoContext client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v20 = 0;
  objc_storeStrong(&v20, fidoContext);
  v19 = 0;
  objc_storeStrong(&v19, client);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v11 = selfCopy;
  v9 = v19;
  v10 = location[0];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100128FD0;
  v15 = &unk_100323EB0;
  v17 = _objc_retain(v18);
  v16 = _objc_retain(v20);
  [(AKAuthenticationUILiaison *)v11 _performBlockWithClient:v9 context:v10 requireFullUICapability:1 allowRedirectToSettings:1 block:?];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)presentProximityBroadcastUIForContext:(id)context client:(id)client completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, client);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001293F0;
  v12 = &unk_100321FF0;
  v13 = _objc_retain(v15);
  v14 = [v7 proxyWithErrorHandler:?];
  [v14 presentProximityBroadcastUIForContext:location[0] completion:v15];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)presentProximityPairingUIForContext:(id)context client:(id)client event:(id)event completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v24 = 0;
  objc_storeStrong(&v24, client);
  v23 = 0;
  objc_storeStrong(&v23, event);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if (sub_1001773DC(0))
  {
    sub_100177BB4();
  }

  v6 = objc_opt_class();
  v21 = sub_10012974C(v6, v23);
  v7 = v24;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1001297DC;
  v18 = &unk_100321FF0;
  v19 = _objc_retain(v22);
  v20 = [v7 proxyWithErrorHandler:&v14];
  v9 = v20;
  v8 = location[0];
  password = [v21 password];
  [v9 presentProximityPairingUIForContext:v8 verificationCode:? completion:?];
  _objc_release(password);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)presentProximityPairingUIForContext:(id)context client:(id)client verificationCode:(id)code completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, client);
  v17 = 0;
  objc_storeStrong(&v17, code);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v9 = v18;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100129A8C;
  v13 = &unk_100321FF0;
  v14 = _objc_retain(v16);
  v15 = [v9 proxyWithErrorHandler:?];
  [v15 presentProximityPairingUIForContext:location[0] verificationCode:v17 completion:v16];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)presentProximityPinCodeUIForContext:(id)context client:(id)client completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, client);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100129D14;
  v12 = &unk_100321FF0;
  v13 = _objc_retain(v15);
  v14 = [v7 proxyWithErrorHandler:?];
  [v14 presentProximityPinCodeUIForContext:location[0] completion:v15];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissProximityPairingUIForContext:(id)context client:(id)client completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, client);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v7 = v16;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100129FA0;
  v12 = &unk_100321FF0;
  v13 = _objc_retain(v15);
  v14 = [v7 proxyWithErrorHandler:?];
  [v14 dismissProximityPairingUIForContext:location[0] completion:v15];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)activateProximitySession:(id)session client:(id)client context:(id)context completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v12 = 0;
  objc_storeStrong(&v12, client);
  v11 = 0;
  objc_storeStrong(&v11, context);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v9 = [v12 proxyWithErrorHandler:&stru_100323FE8];
  [v9 activateProximitySession:location[0] context:v11 completion:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)showProximityErrorForContext:(id)context client:(id)client completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v9 = 0;
  objc_storeStrong(&v9, client);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = [v9 proxyWithErrorHandler:&stru_100324008];
  [v7 showProximityErrorForContext:location[0] completion:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_performBlockWithClient:(id)client context:(id)context requireFullUICapability:(BOOL)capability allowRedirectToSettings:(BOOL)settings block:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v108 = 0;
  objc_storeStrong(&v108, context);
  capabilityCopy = capability;
  settingsCopy = settings;
  v105 = 0;
  objc_storeStrong(&v105, block);
  if (getenv("__AKSYNCBUBBLE"))
  {
    v104 = _AKLogSystem();
    v103 = 16;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      log = v104;
      type = v103;
      sub_10001CEEC(v102);
      _os_log_error_impl(&_mh_execute_header, log, type, "In Sync Bubble. UI is not supported.", v102, 2u);
    }

    objc_storeStrong(&v104, 0);
    queue = selfCopy->_clientUIWorkQueue;
    v96 = _NSConcreteStackBlock;
    v97 = -1073741824;
    v98 = 0;
    v99 = sub_10012B104;
    v100 = &unk_100320EC8;
    v101 = _objc_retain(v105);
    dispatch_async(queue, &v96);
    v95 = 1;
    objc_storeStrong(&v101, 0);
  }

  else if ((+[AAFDeviceInfo deviceIsAudioAccessory]& 1) != 0)
  {
    v94 = _AKLogSystem();
    v93 = 16;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v28 = v94;
      v29 = v93;
      sub_10001CEEC(v92);
      _os_log_error_impl(&_mh_execute_header, v28, v29, "Attempted to show UI on HomePod, AuthKit does not support HomePod UI!", v92, 2u);
    }

    objc_storeStrong(&v94, 0);
    clientUIWorkQueue = selfCopy->_clientUIWorkQueue;
    v86 = _NSConcreteStackBlock;
    v87 = -1073741824;
    v88 = 0;
    v89 = sub_10012B180;
    v90 = &unk_100320EC8;
    v91 = _objc_retain(v105);
    dispatch_async(clientUIWorkQueue, &v86);
    v95 = 1;
    objc_storeStrong(&v91, 0);
  }

  else if ([v108 authenticationType] == 1)
  {
    v85 = _AKLogSystem();
    v84 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v113, v108);
      _os_log_error_impl(&_mh_execute_header, v85, v84, "Context specifies that auth must be forced silent: %@", v113, 0xCu);
    }

    objc_storeStrong(&v85, 0);
    v26 = selfCopy->_clientUIWorkQueue;
    v78 = _NSConcreteStackBlock;
    v79 = -1073741824;
    v80 = 0;
    v81 = sub_10012B1FC;
    v82 = &unk_100320EC8;
    v83 = _objc_retain(v105);
    dispatch_async(v26, &v78);
    v95 = 1;
    objc_storeStrong(&v83, 0);
  }

  else
  {
    _capabilityForUIDisplay = [v108 _capabilityForUIDisplay];
    if (_capabilityForUIDisplay)
    {
      v24 = 1;
      if (_capabilityForUIDisplay != 1)
      {
        v24 = _capabilityForUIDisplay == 4;
      }

      v68 = v24;
      if (v24)
      {
        v67 = _AKLogSystem();
        v66 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v67;
          v23 = v66;
          sub_10001CEEC(v65);
          _os_log_impl(&_mh_execute_header, v22, v23, "Context cannot display full UI.", v65, 2u);
        }

        objc_storeStrong(&v67, 0);
      }

      if ([v108 _performUIOutOfProcess])
      {
        v64 = _AKLogSystem();
        v63 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v64;
          v21 = v63;
          sub_10001CEEC(v62);
          _os_log_impl(&_mh_execute_header, v20, v21, "Context requires out-of-process UI.", v62, 2u);
        }

        objc_storeStrong(&v64, 0);
      }

      if ([v108 isContextEligibleForPasscodeAuth])
      {
        [v108 setPasscodeOnlyPolicy:1];
      }

      _performUIOutOfProcess = 1;
      if (!v68)
      {
        _performUIOutOfProcess = [v108 _performUIOutOfProcess];
      }

      v61 = _performUIOutOfProcess & 1;
      _performUIOutOfProcess2 = [v108 _performUIOutOfProcess];
      if ((_performUIOutOfProcess & 1) != 0 && [(AKAuthenticationUILiaison *)selfCopy _isBackgroundClient:location[0] eligibleForForegroundAuthenticationWithContext:v108])
      {
        v59 = _AKLogSystem();
        v58 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v59;
          v18 = v58;
          sub_10001CEEC(v57);
          _os_log_impl(&_mh_execute_header, v17, v18, "[non-visionOS] Falling back to standard proxied foreground authentication", v57, 2u);
        }

        objc_storeStrong(&v59, 0);
        v56 = _AKLogSystem();
        v55 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          sub_1000194D4(v111, location[0]);
          _os_log_debug_impl(&_mh_execute_header, v56, v55, "Allowing BG process %@ to perform proxied FG auth.", v111, 0xCu);
        }

        objc_storeStrong(&v56, 0);
        v61 = capabilityCopy;
      }

      if (v61)
      {
        if (!selfCopy->_surrogateManager)
        {
          v7 = [AKAuthenticationSurrogateManager alloc];
          v8 = [(AKAuthenticationSurrogateManager *)v7 initWithDelegate:selfCopy];
          surrogateManager = selfCopy->_surrogateManager;
          selfCopy->_surrogateManager = v8;
          _objc_release(surrogateManager);
          v43 = +[AKAuthenticationTrafficController sharedInstance];
          [(AKAuthenticationTrafficController *)v43 setSurrogateManager:selfCopy->_surrogateManager];
          objc_storeStrong(&v43, 0);
        }

        if ([(AKAuthenticationSurrogateManager *)selfCopy->_surrogateManager hasRegisteredSurrogateForContext:v108])
        {
          [(AKAuthenticationSurrogateManager *)selfCopy->_surrogateManager performUIWorkWithSurrogateContext:v108 uiWorkBlock:v105];
        }

        else if (_performUIOutOfProcess2)
        {
          v42 = _AKLogSystem();
          v41 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v42;
            v13 = v41;
            sub_10001CEEC(v40);
            _os_log_impl(&_mh_execute_header, v12, v13, "Out-of-process auth, no registered UI surrogate yet...", v40, 2u);
          }

          objc_storeStrong(&v42, 0);
          [(AKAuthenticationSurrogateManager *)selfCopy->_surrogateManager waitForRemoteViewServiceWithContext:v108 client:location[0] uiWorkBlock:v105];
        }

        else
        {
          v39 = _AKLogSystem();
          v38 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v39;
            v11 = v38;
            sub_10001CEEC(v37);
            _os_log_impl(&_mh_execute_header, v10, v11, "Background auth requires settings redirect, no registered UI surrogate yet...", v37, 2u);
          }

          objc_storeStrong(&v39, 0);
          [(AKAuthenticationSurrogateManager *)selfCopy->_surrogateManager waitForSettingsWithContext:v108 client:location[0] requireFullUICapability:capabilityCopy allowRedirectToSettings:settingsCopy uiWorkBlock:v105];
        }

        v95 = 0;
      }

      else
      {
        v54 = _AKLogSystem();
        v53 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v54;
          v16 = v53;
          sub_10001CEEC(v52);
          _os_log_impl(&_mh_execute_header, v15, v16, "Client is capable of displaying UI, no surrogate required...", v52, 2u);
        }

        objc_storeStrong(&v54, 0);
        v14 = selfCopy->_clientUIWorkQueue;
        v44 = _NSConcreteStackBlock;
        v45 = -1073741824;
        v46 = 0;
        v47 = sub_10012B2F4;
        v48 = &unk_100324030;
        v51 = _objc_retain(v105);
        v49 = _objc_retain(location[0]);
        v50 = _objc_retain(v108);
        dispatch_async(v14, &v44);
        v95 = 1;
        objc_storeStrong(&v50, 0);
        objc_storeStrong(&v49, 0);
        objc_storeStrong(&v51, 0);
      }
    }

    else
    {
      oslog = _AKLogSystem();
      v75 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v112, v108);
        _os_log_error_impl(&_mh_execute_header, oslog, v75, "Context %@ has AKAppleIDAuthenticationUICapabilityUnknown.", v112, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v25 = selfCopy->_clientUIWorkQueue;
      v69 = _NSConcreteStackBlock;
      v70 = -1073741824;
      v71 = 0;
      v72 = sub_10012B278;
      v73 = &unk_100320EC8;
      v74 = _objc_retain(v105);
      dispatch_async(v25, &v69);
      v95 = 1;
      objc_storeStrong(&v74, 0);
    }
  }

  objc_storeStrong(&v105, 0);
  objc_storeStrong(&v108, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isBackgroundClient:(id)client eligibleForForegroundAuthenticationWithContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v23 = 0;
  objc_storeStrong(&v23, context);
  v8 = +[MCProfileConnection sharedConnection];
  v9 = [v8 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];
  _objc_release(v8);
  v22 = v9;
  if (v9 == 2)
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v29, location[0]);
      _os_log_error_impl(&_mh_execute_header, v21, v20, "Client %@ is being permitted to run FG auth, because iCloud settings are inaccessible.", v29, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    v25 = 1;
    v19 = 1;
  }

  else if ([v23 _isForcedEligibleForForegroundAuthentication] == 1)
  {
    v25 = 1;
    v19 = 1;
  }

  else if ([v23 _isProxyingForApp])
  {
    if ([location[0] isPermittedToProxy])
    {
      v15 = 0;
      v6 = 0;
      if (![location[0] isPermittedToProxyInitialAuth])
      {
        username = [v23 username];
        v15 = 1;
        v5 = 1;
        if (username)
        {
          v5 = [v23 isUsernameEditable] == 1;
        }

        v6 = v5;
      }

      if (v15)
      {
        _objc_release(username);
      }

      if (v6)
      {
        oslog = _AKLogSystem();
        v13 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v27, location[0]);
          _os_log_impl(&_mh_execute_header, oslog, v13, "Client %@ cannot proxy without specifying an immutable Apple ID.", v27, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v25 = 0;
        v19 = 1;
      }

      else
      {
        v12 = 0;
        _proxiedAppBundleID = [v23 _proxiedAppBundleID];
        if (_proxiedAppBundleID)
        {
          if ([AKClient isAppWithBundleIDForeground:_proxiedAppBundleID])
          {
            v12 = 1;
          }

          else
          {
            v10 = _AKLogSystem();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000194D4(v26, _proxiedAppBundleID);
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring FG proxying request because %@ is not currently foreground.", v26, 0xCu);
            }

            objc_storeStrong(&v10, 0);
            v12 = 0;
          }
        }

        else
        {
          v12 = 1;
        }

        v25 = v12;
        v19 = 1;
        objc_storeStrong(&_proxiedAppBundleID, 0);
      }
    }

    else
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v28, location[0]);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "Client %@ is not permitted to use _isProxyingForApp. Falling back to BG behavior.", v28, 0xCu);
      }

      objc_storeStrong(&v18, 0);
      v25 = 0;
      v19 = 1;
    }
  }

  else
  {
    v25 = 0;
    v19 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v25 & 1;
}

- (id)_notificationDictionaryForClient:(id)client context:(id)context needFullUI:(BOOL)i
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v92 = 0;
  objc_storeStrong(&v92, context);
  iCopy = i;
  username = [v92 username];
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  if ([v92 needsCredentialRecovery] == 1)
  {
    v74 = [NSBundle bundleWithIdentifier:?];
    v5 = [NSBundle localizedStringForKey:v74 value:"localizedStringForKey:value:table:" table:@"FORGOT_PASSWORD_ALERT_RESET_BUTTON"];
    v6 = v86;
    v86 = v5;
    _objc_release(v6);
    _objc_release(v74);
    v7 = [AKDevice deviceSpecificLocalizedStringWithKey:@"FORGOT_PASSWORD_ALERT_MESSAGE_REBRAND"];
    v8 = v88;
    v88 = v7;
    _objc_release(v8);
    v75 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v9 = [(NSBundle *)v75 localizedStringForKey:@"FORGOT_PASSWORD_ALERT_CANCEL_BUTTON" value:&stru_100330538 table:@"Localizable"];
    v10 = v87;
    v87 = v9;
    _objc_release(v10);
    _objc_release(v75);
    v76 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v11 = [(NSBundle *)v76 localizedStringForKey:@"FORGOT_PASSWORD_ALERT_TITLE" value:&stru_100330538 table:@"Localizable"];
    v12 = v89;
    v89 = v11;
    _objc_release(v12);
    _objc_release(v76);
  }

  else
  {
    v72 = [NSBundle bundleWithIdentifier:?];
    v13 = [NSBundle localizedStringForKey:v72 value:"localizedStringForKey:value:table:" table:@"PASSWORD_ALERT_SETTINGS_BUTTON"];
    v14 = v87;
    v87 = v13;
    _objc_release(v14);
    _objc_release(v72);
    v73 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v15 = [(NSBundle *)v73 localizedStringForKey:@"PASSWORD_ALERT_CANCEL_BUTTON" value:&stru_100330538 table:@"Localizable"];
    v16 = v86;
    v86 = v15;
    _objc_release(v16);
    _objc_release(v73);
    if (username)
    {
      if (iCopy)
      {
        v61 = [NSBundle bundleWithIdentifier:?];
        v25 = [NSBundle localizedStringForKey:v61 value:"localizedStringForKey:value:table:" table:@"CONTINUE_AUTH_ALERT_TITLE_REBRAND"];
        v26 = v89;
        v89 = v25;
        _objc_release(v26);
        _objc_release(v61);
        v64 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
        v63 = [(NSBundle *)v64 localizedStringForKey:@"CONTINUE_AUTH_ALERT_MESSAGE" value:&stru_100330538 table:@"Localizable"];
        v62 = [AKUsernameFormatter formattedUsernameFromUsername:username];
        v27 = [NSString stringWithFormat:v63, v62];
        v28 = v88;
        v88 = v27;
        _objc_release(v28);
        _objc_release(v62);
        _objc_release(v63);
        _objc_release(v64);
      }

      else
      {
        v70 = +[AKDevice currentDevice];
        isMultiUserMode = [v70 isMultiUserMode];
        _objc_release(v70);
        if (isMultiUserMode)
        {
          v69 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
          v17 = [(NSBundle *)v69 localizedStringForKey:@"PASSCODE_ALERT_TITLE_WITH_USERNAME" value:&stru_100330538 table:@"Localizable"];
          v18 = v89;
          v89 = v17;
          _objc_release(v18);
          _objc_release(v69);
          [v92 serviceType];
          v19 = AKSharedDevicePasscodePromptAlertMessageWithServiceType();
          v20 = v88;
          v88 = v19;
          _objc_release(v20);
        }

        else
        {
          v65 = [NSBundle bundleWithIdentifier:?];
          v21 = [NSBundle localizedStringForKey:v65 value:"localizedStringForKey:value:table:" table:@"PASSWORD_ALERT_TITLE_WITH_USERNAME_REBRAND"];
          v22 = v89;
          v89 = v21;
          _objc_release(v22);
          _objc_release(v65);
          v68 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
          v67 = [(NSBundle *)v68 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_WITH_USERNAME" value:&stru_100330538 table:@"Localizable"];
          v66 = [AKUsernameFormatter formattedUsernameFromUsername:username];
          v23 = [NSString stringWithFormat:v67, v66];
          v24 = v88;
          v88 = v23;
          _objc_release(v24);
          _objc_release(v66);
          _objc_release(v67);
          _objc_release(v68);
        }
      }
    }

    else
    {
      v59 = [NSBundle bundleWithIdentifier:?];
      v29 = [NSBundle localizedStringForKey:v59 value:"localizedStringForKey:value:table:" table:@"PASSWORD_ALERT_TITLE_REBRAND"];
      v30 = v89;
      v89 = v29;
      _objc_release(v30);
      _objc_release(v59);
      v60 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v31 = [(NSBundle *)v60 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_REBRAND" value:&stru_100330538 table:@"Localizable"];
      v32 = v88;
      v88 = v31;
      _objc_release(v32);
      _objc_release(v60);
    }
  }

  _proxiedAppBundleID = [v92 _proxiedAppBundleID];
  _objc_release(_proxiedAppBundleID);
  if (_proxiedAppBundleID)
  {
    v85 = _AKLogSystem();
    v84 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      _proxiedAppBundleID2 = [v92 _proxiedAppBundleID];
      bundleID = [location[0] bundleID];
      sub_10012C66C(v96, _proxiedAppBundleID2, bundleID);
      _os_log_impl(&_mh_execute_header, v85, v84, "Client %{public}@ requested authentication (via %{public}@).", v96, 0x16u);
      _objc_release(bundleID);
      _objc_release(_proxiedAppBundleID2);
    }

    objc_storeStrong(&v85, 0);
  }

  else
  {
    v83 = _AKLogSystem();
    v82 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      bundleID2 = [location[0] bundleID];
      sub_1000333DC(v95, bundleID2);
      _os_log_impl(&_mh_execute_header, v83, v82, "Client %{public}@ requested authentication.", v95, 0xCu);
      _objc_release(bundleID2);
    }

    objc_storeStrong(&v83, 0);
  }

  v33 = [(AKAuthenticationUILiaison *)selfCopy _stringByAppendingBlameIfNecessary:v88 withContext:v92 client:location[0]];
  v34 = v88;
  v88 = v33;
  _objc_release(v34);
  v81 = -[AKAuthenticationUILiaison _optionsForCreatingUserNotificationWithTitle:message:defaultButton:alternateButton:serviceType:](selfCopy, "_optionsForCreatingUserNotificationWithTitle:message:defaultButton:alternateButton:serviceType:", v89, v88, v87, v86, [v92 serviceType]);
  if (username)
  {
    v80 = 0;
    v79 = 0;
    v53 = +[AKDevice currentDevice];
    isMultiUserMode2 = [v53 isMultiUserMode];
    _objc_release(v53);
    if (isMultiUserMode2)
    {
      v49 = [NSBundle bundleWithIdentifier:?];
      v35 = [NSBundle localizedStringForKey:v49 value:"localizedStringForKey:value:table:" table:@"PASSCODE_ALERT_TITLE_LOCKSCREEN"];
      v36 = v80;
      v80 = v35;
      _objc_release(v36);
      _objc_release(v49);
      v50 = selfCopy;
      v52 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v51 = [(NSBundle *)v52 localizedStringForKey:@"PASSCODE_ALERT_MESSAGE_LOCKSCREEN" value:&stru_100330538 table:@"Localizable"];
      v37 = [AKAuthenticationUILiaison _stringByAppendingBlameIfNecessary:v50 withContext:"_stringByAppendingBlameIfNecessary:withContext:client:" client:?];
      v38 = v79;
      v79 = v37;
      _objc_release(v38);
      _objc_release(v51);
      _objc_release(v52);
    }

    else
    {
      v45 = [NSBundle bundleWithIdentifier:?];
      v39 = [NSBundle localizedStringForKey:v45 value:"localizedStringForKey:value:table:" table:@"PASSWORD_ALERT_TITLE_LOCKSCREEN_REBRAND"];
      v40 = v80;
      v80 = v39;
      _objc_release(v40);
      _objc_release(v45);
      v46 = selfCopy;
      v48 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v47 = [(NSBundle *)v48 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_LOCKSCREEN_REBRAND" value:&stru_100330538 table:@"Localizable"];
      v41 = [AKAuthenticationUILiaison _stringByAppendingBlameIfNecessary:v46 withContext:"_stringByAppendingBlameIfNecessary:withContext:client:" client:?];
      v42 = v79;
      v79 = v41;
      _objc_release(v42);
      _objc_release(v47);
      _objc_release(v48);
    }

    [v81 setObject:v80 forKeyedSubscript:SBUserNotificationLockScreenAlertHeaderKey];
    [v81 setObject:v79 forKeyedSubscript:SBUserNotificationLockScreenAlertMessageKey];
    objc_storeStrong(&v79, 0);
    objc_storeStrong(&v80, 0);
  }

  v44 = _objc_retain(v81);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&username, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(location, 0);

  return v44;
}

- (id)_optionsForCreatingUserNotificationWithTitle:(id)title message:(id)message defaultButton:(id)button alternateButton:(id)alternateButton serviceType:(int64_t)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v17 = 0;
  objc_storeStrong(&v17, message);
  v16 = 0;
  objc_storeStrong(&v16, button);
  v15 = 0;
  objc_storeStrong(&v15, alternateButton);
  v14[1] = type;
  v12 = +[AKAlertHandler sharedInstance];
  v14[0] = [(AKAlertHandler *)v12 notificationDictionaryWithTitle:location[0] message:v17 defaultButton:v16 alternateButton:v15];
  _objc_release(v12);
  v13 = _objc_retain(v14[0]);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (id)_stringByAppendingBlameIfNecessary:(id)necessary withContext:(id)context client:(id)client
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, necessary);
  v26 = 0;
  objc_storeStrong(&v26, context);
  v25 = 0;
  objc_storeStrong(&v25, client);
  v21 = +[AKDevice currentDevice];
  isInternalBuild = [v21 isInternalBuild];
  _objc_release(v21);
  if (isInternalBuild)
  {
    v23 = 0;
    _proxiedAppName = [v26 _proxiedAppName];
    _objc_release(_proxiedAppName);
    if (_proxiedAppName)
    {
      v17 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v16 = [(NSBundle *)v17 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_PROXY_INTERNAL_BLAME" value:&stru_100330538 table:@"Localizable"];
      _proxiedAppName2 = [v26 _proxiedAppName];
      name = [v25 name];
      v5 = [NSString stringWithFormat:v16, _proxiedAppName2, name];
      v6 = v23;
      v23 = v5;
      _objc_release(v6);
      _objc_release(name);
      _objc_release(_proxiedAppName2);
      _objc_release(v16);
      _objc_release(v17);
    }

    else
    {
      v13 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
      v12 = [(NSBundle *)v13 localizedStringForKey:@"PASSWORD_ALERT_MESSAGE_INTERNAL_BLAME" value:&stru_100330538 table:@"Localizable"];
      name2 = [v25 name];
      v7 = [NSString stringWithFormat:v12, name2];
      v8 = v23;
      v23 = v7;
      _objc_release(v8);
      _objc_release(name2);
      _objc_release(v12);
      _objc_release(v13);
    }

    v28 = [location[0] stringByAppendingString:v23];
    v24 = 1;
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v28 = _objc_retain(location[0]);
    v24 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  v9 = v28;

  return v9;
}

- (void)promptForAppleIDSettingsRedirectWithContext:(id)context client:(id)client needFullUI:(BOOL)i completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, client);
  iCopy = i;
  v41 = 0;
  objc_storeStrong(&v41, completion);
  if ([location[0] shouldSkipSettingsLaunchAlert])
  {
    v40 = _AKLogSystem();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      log = v40;
      type = v39;
      sub_10001CEEC(v38);
      _os_log_impl(&_mh_execute_header, log, type, "Will not prompt user about redirect per auth context configuration.", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    (*(v41 + 2))(v41, 1, 0);
    v37 = 1;
  }

  else
  {
    v16 = +[AKDevice currentDevice];
    isBuddyFinished = [v16 isBuddyFinished];
    _objc_release(v16);
    if (isBuddyFinished)
    {
      v6 = AKBugCaptureSubTypeSettingsRedirect;
      bundleID = [v43 bundleID];
      v7 = [AKAutoBugCapture userInfoFromContext:location[0]];
      [AKAutoBugCapture triggerAutoBugCaptureWithSubType:v6 andBundleID:bundleID userInfo:?];
      _objc_release(v7);
      _objc_release(bundleID);
      v33 = +[AKAuthenticationTrafficController sharedInstance];
      v11 = v33;
      v9 = location[0];
      v10 = v43;
      v23 = _NSConcreteStackBlock;
      v24 = -1073741824;
      v25 = 0;
      v26 = sub_10012D058;
      v27 = &unk_100324080;
      v31 = _objc_retain(v41);
      v28 = _objc_retain(location[0]);
      v29 = _objc_retain(selfCopy);
      v30 = _objc_retain(v43);
      v32 = iCopy;
      [(AKAuthenticationTrafficController *)v11 uplevelAuthenticationForUIWithContext:v9 client:v10 completion:&v23];
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v33, 0);
      v37 = 0;
    }

    else
    {
      v36 = _AKLogSystem();
      v35 = 16;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v14 = v36;
        v15 = v35;
        sub_10001CEEC(v34);
        _os_log_error_impl(&_mh_execute_header, v14, v15, "In Buddy. UI is not supported.", v34, 2u);
      }

      objc_storeStrong(&v36, 0);
      v12 = v41;
      v13 = [NSError ak_errorWithCode:-7014];
      v12[2](v12, 0);
      _objc_release(v13);
      v37 = 1;
    }
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

@end