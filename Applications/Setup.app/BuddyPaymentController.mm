@interface BuddyPaymentController
+ (void)setupAssistantExpressProvisioningContext:(id)context;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (id)_createPaymentControllerWithContext:(id)context;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation BuddyPaymentController

- (id)_createPaymentControllerWithContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = objc_alloc(sub_1001CD3FC());
  v4 = [v3 initWithSetupAssistantContext:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  oslog[1] = a2;
  capabilities = [(BuddyPaymentController *)self capabilities];
  v3 = [(BYCapabilities *)capabilities supportsApplePay]^ 1;

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v16;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Hardware does not support Apple Pay, skipping", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    return 0;
  }

  else
  {
    buddyPreferences = [(BuddyPaymentController *)selfCopy buddyPreferences];
    v7 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"Payment2Presented"];

    v14 = v7 & 1;
    chronicle = [(BuddyPaymentController *)selfCopy chronicle];
    v9 = [(BYChronicle *)chronicle entryForFeature:1];
    v10 = [v9 createdOnCurrentMajorVersion] ^ 1;

    v13 = v10 & 1;
    if (v14 & 1) == 0 || (v13)
    {
      return 1;
    }

    else
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sub_100075A38(v20, v14 & 1, v13 & 1);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Skipping Apple Pay because it was already presented (%d) and we did not cross a major OS boundary (%d)", v20, 0xEu);
      }

      objc_storeStrong(&v12, 0);
      return 0;
    }
  }
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001CD8B4;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyPaymentController *)self buddyPreferences:a2];
  [(BYPreferencesController *)v2 removeObjectForKey:@"Payment2Presented"];
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, flow);
  sub_1001CEF18();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BuddyPaymentController *)selfCopy setShouldSuppressSpinner:1];
  }

  paymentController = [(BuddyPaymentController *)selfCopy paymentController];
  v4 = [(PKPaymentSetupAssistantController *)paymentController isFollowupNeededReturningRequirements:0];

  flowSkipController = [(BuddyPaymentController *)selfCopy flowSkipController];
  if (v4)
  {
    [(BYFlowSkipController *)flowSkipController didSkipFlow:BYFlowSkipIdentifierApplePay];

    paneFeatureAnalyticsManager = [(BuddyPaymentController *)selfCopy paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanFalse forFeature:15];
  }

  else
  {
    [(BYFlowSkipController *)flowSkipController didCompleteFlow:BYFlowSkipIdentifierApplePay];

    paneFeatureAnalyticsManager = [(BuddyPaymentController *)selfCopy paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanTrue forFeature:15];
  }

  buddyPreferences = [(BuddyPaymentController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"Payment2Presented"];

  buddyPreferences2 = [(BuddyPaymentController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences2 setObject:&__kCFBooleanTrue forKey:@"ApplePayOnBoardingPresented"];

  delegate = [(BuddyPaymentController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

+ (void)setupAssistantExpressProvisioningContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = objc_alloc_init(BYBuddyDaemonGeneralClient);
  fetchAuthenticationContextForApplePay = [v13 fetchAuthenticationContextForApplePay];
  externalizedContext = [fetchAuthenticationContextForApplePay externalizedContext];

  v11 = [objc_alloc(sub_1001CE248()) initWithSetupAssistant:1];
  [v11 setExternalizedContext:externalizedContext];
  v10 = [objc_alloc(sub_1001CE92C()) initWithSetupAssistantContext:v11];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001CF1A0;
  v8 = &unk_10032EA30;
  v9 = location[0];
  [v10 expressSetupProvisioningContext:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&externalizedContext, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end