@interface BuddyPaymentController
+ (void)setupAssistantExpressProvisioningContext:(id)a3;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (id)_createPaymentControllerWithContext:(id)a3;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
@end

@implementation BuddyPaymentController

- (id)_createPaymentControllerWithContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(sub_1001CD3FC());
  v4 = [v3 initWithSetupAssistantContext:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)controllerNeedsToRun
{
  v18 = self;
  oslog[1] = a2;
  v2 = [(BuddyPaymentController *)self capabilities];
  v3 = [(BYCapabilities *)v2 supportsApplePay]^ 1;

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
    v6 = [(BuddyPaymentController *)v18 buddyPreferences];
    v7 = [(BYPreferencesController *)v6 BOOLForKey:@"Payment2Presented"];

    v14 = v7 & 1;
    v8 = [(BuddyPaymentController *)v18 chronicle];
    v9 = [(BYChronicle *)v8 entryForFeature:1];
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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001CD8B4;
  v8 = &unk_10032AFD0;
  v9 = v12;
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

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  sub_1001CEF18();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BuddyPaymentController *)v11 setShouldSuppressSpinner:1];
  }

  v3 = [(BuddyPaymentController *)v11 paymentController];
  v4 = [(PKPaymentSetupAssistantController *)v3 isFollowupNeededReturningRequirements:0];

  v5 = [(BuddyPaymentController *)v11 flowSkipController];
  if (v4)
  {
    [(BYFlowSkipController *)v5 didSkipFlow:BYFlowSkipIdentifierApplePay];

    v6 = [(BuddyPaymentController *)v11 paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)v6 recordActionWithValue:&__kCFBooleanFalse forFeature:15];
  }

  else
  {
    [(BYFlowSkipController *)v5 didCompleteFlow:BYFlowSkipIdentifierApplePay];

    v6 = [(BuddyPaymentController *)v11 paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)v6 recordActionWithValue:&__kCFBooleanTrue forFeature:15];
  }

  v7 = [(BuddyPaymentController *)v11 buddyPreferences];
  [(BYPreferencesController *)v7 setObject:&__kCFBooleanTrue forKey:@"Payment2Presented"];

  v8 = [(BuddyPaymentController *)v11 buddyPreferences];
  [(BYPreferencesController *)v8 setObject:&__kCFBooleanTrue forKey:@"ApplePayOnBoardingPresented"];

  v9 = [(BuddyPaymentController *)v11 delegate];
  [(BFFFlowItemDelegate *)v9 flowItemDone:v11];

  objc_storeStrong(location, 0);
}

+ (void)setupAssistantExpressProvisioningContext:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = objc_alloc_init(BYBuddyDaemonGeneralClient);
  v3 = [v13 fetchAuthenticationContextForApplePay];
  v12 = [v3 externalizedContext];

  v11 = [objc_alloc(sub_1001CE248()) initWithSetupAssistant:1];
  [v11 setExternalizedContext:v12];
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
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end