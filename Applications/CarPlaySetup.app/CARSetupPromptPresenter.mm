@interface CARSetupPromptPresenter
- (CARSetupPromptPresenter)initWithPresentingViewController:(id)a3;
- (UIViewController)presentingViewController;
- (void)_dismissFromGenericFlow;
- (void)_presentGenericViewController:(id)a3;
- (void)_presentPromptViewController:(id)a3;
- (void)promptDirector:(id)a3 wantsToCheckForSoftwareUpdatesWithCompletionHandler:(id)a4;
- (void)promptDirector:(id)a3 wantsToPresentAllowWhileLockedPromptForVehicleName:(id)a4 responseHandler:(id)a5;
- (void)promptDirector:(id)a3 wantsToPresentAssetProgressPromptForVehicleName:(id)a4 progressReporter:(id)a5 cancelHandler:(id)a6;
- (void)promptDirector:(id)a3 wantsToPresentAssetReadyPromptForVehicleName:(id)a4 appClipIDs:(id)a5 confirmationHandler:(id)a6;
- (void)promptDirector:(id)a3 wantsToPresentAssetReadySoonPromptForVehicleName:(id)a4 confirmationHandler:(id)a5;
- (void)promptDirector:(id)a3 wantsToPresentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)a4 declineVariant:(unint64_t)a5 responseHandler:(id)a6;
- (void)promptDirector:(id)a3 wantsToPresentAssetUnavailablePromptWithDescription:(id)a4 responseHandler:(id)a5;
- (void)promptDirector:(id)a3 wantsToPresentBluetoothConfirmationPromptForVehicleName:(id)a4 numericCode:(id)a5 responseHandler:(id)a6;
- (void)promptDirector:(id)a3 wantsToPresentBluetoothContactsSyncPromptWithResponseHandler:(id)a4;
- (void)promptDirector:(id)a3 wantsToPresentEnhancedIntegrationPromptForVehicleName:(id)a4 responseHandler:(id)a5;
- (void)promptDirector:(id)a3 wantsToPresentSetupCarKeysPromptForVehicleName:(id)a4 carKeyInfo:(id)a5 cancelHandler:(id)a6;
- (void)promptDirector:(id)a3 wantsToPresentUseWirelessPromptWithWirelessEnablement:(unint64_t)a4 declineVariant:(unint64_t)a5 responseHandler:(id)a6;
- (void)promptDirectorWantsToPresentWaitingOnMessaging:(id)a3;
- (void)promptDirectorWantsToPresentWaitingOnStartSession:(id)a3;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
@end

@implementation CARSetupPromptPresenter

- (CARSetupPromptPresenter)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CARSetupPromptPresenter;
  v5 = [(CARSetupPromptPresenter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
    v7 = [[CARSetupPromptDirector alloc] initWithPresenter:v6];
    promptDirector = v6->_promptDirector;
    v6->_promptDirector = v7;
  }

  return v6;
}

- (void)_presentPromptViewController:(id)a3
{
  v4 = a3;
  v5 = [(CARSetupPromptPresenter *)self proxNavigationController];

  v6 = CARSetupLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "pushing prox card view controller: %@", &v10, 0xCu);
    }

    v8 = [(CARSetupPromptPresenter *)self proxNavigationController];
    [v8 pushViewController:v4 animated:1];
  }

  else
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "starting prox card presentation for view controller: %@", &v10, 0xCu);
    }

    v9 = [(CARSetupPromptPresenter *)self presentingViewController];
    v8 = [v9 presentProxCardFlowWithDelegate:self initialViewController:v4];

    [(CARSetupPromptPresenter *)self setProxNavigationController:v8];
  }
}

- (void)_presentGenericViewController:(id)a3
{
  v4 = a3;
  v5 = [(CARSetupPromptPresenter *)self proxNavigationController];

  if (v5)
  {
    [(CARSetupPromptPresenter *)self setProxNavigationController:0];
    v6 = [(CARSetupPromptPresenter *)self presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];

    v7 = CARSetupLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismissing prox card presentation", buf, 2u);
    }
  }

  v8 = [(CARSetupPromptPresenter *)self genericNavigationController];

  v9 = CARSetupLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "pushing prox card view controller: %@", buf, 0xCu);
    }

    v11 = [(CARSetupPromptPresenter *)self genericNavigationController];
    [(CARSetupNavigationController *)v11 pushViewController:v4 animated:1];
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "starting generic card presentation for view controller: %@", buf, 0xCu);
    }

    v11 = [[CARSetupNavigationController alloc] initWithRootViewController:v4];
    [(CARSetupPromptPresenter *)self setGenericNavigationController:v11];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001C28;
    v13[3] = &unk_100010350;
    v13[4] = self;
    [(CARSetupNavigationController *)v11 setDismissHandler:v13];
    v12 = [(CARSetupPromptPresenter *)self presentingViewController];
    [v12 presentViewController:v11 animated:1 completion:0];
  }
}

- (void)promptDirector:(id)a3 wantsToPresentBluetoothConfirmationPromptForVehicleName:(id)a4 numericCode:(id)a5 responseHandler:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001D04;
  v11[3] = &unk_100010378;
  v12 = a6;
  v9 = v12;
  v10 = [CARSetupPrompts bluetoothConfirmationPromptForVehicleName:a4 numericCode:a5 responseHandler:v11];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v10];
}

- (void)promptDirector:(id)a3 wantsToPresentBluetoothContactsSyncPromptWithResponseHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001EA0;
  v7[3] = &unk_100010378;
  v8 = a4;
  v5 = v8;
  v6 = [CARSetupPrompts bluetoothContactsSyncPromptWithResponseHandler:v7];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v6];
}

- (void)promptDirectorWantsToPresentWaitingOnMessaging:(id)a3
{
  v4 = +[CARSetupPrompts waitingOnMessagingPrompt];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v4];
}

- (void)promptDirector:(id)a3 wantsToPresentAllowWhileLockedPromptForVehicleName:(id)a4 responseHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000021F4;
  v9[3] = &unk_100010378;
  v10 = a5;
  v7 = v10;
  v8 = [CARSetupPrompts allowWhileLockedPromptForVehicleName:a4 responseHandler:v9];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v8];
}

- (void)promptDirector:(id)a3 wantsToPresentUseWirelessPromptWithWirelessEnablement:(unint64_t)a4 declineVariant:(unint64_t)a5 responseHandler:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000255C;
  v11[3] = &unk_100010378;
  v12 = a6;
  v9 = v12;
  v10 = [CARSetupPrompts useWirelessPromptWithWirelessEnablement:a4 declineVariant:a5 responseHandler:v11];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v10];
}

- (void)promptDirectorWantsToPresentWaitingOnStartSession:(id)a3
{
  v4 = +[CARSetupPrompts waitingOnStartSessionPrompt];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v4];
}

- (void)promptDirector:(id)a3 wantsToPresentEnhancedIntegrationPromptForVehicleName:(id)a4 responseHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000275C;
  v9[3] = &unk_100010378;
  v10 = a5;
  v7 = v10;
  v8 = [CARSetupPrompts enhancedIntegrationPromptForVehicleName:a4 responseHandler:v9];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v8];
}

- (void)promptDirector:(id)a3 wantsToPresentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)a4 declineVariant:(unint64_t)a5 responseHandler:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002AC4;
  v11[3] = &unk_100010378;
  v12 = a6;
  v9 = v12;
  v10 = [CARSetupPrompts assetSupportingUseWirelessPromptWithWirelessEnablement:a4 declineVariant:a5 responseHandler:v11];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v10];
}

- (void)promptDirector:(id)a3 wantsToPresentAssetProgressPromptForVehicleName:(id)a4 progressReporter:(id)a5 cancelHandler:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [CARSetupAssetProgressViewController alloc];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100002C80;
  v16 = &unk_1000103C8;
  v17 = self;
  v18 = v8;
  v11 = v8;
  v12 = [v10 initWithProgressReporter:v9 cancelHandler:&v13];

  [(CARSetupPromptPresenter *)self _presentGenericViewController:v12, v13, v14, v15, v16, v17];
}

- (void)promptDirector:(id)a3 wantsToPresentAssetUnavailablePromptWithDescription:(id)a4 responseHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [CARSetupAssetUnavailableViewController alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002DB4;
  v12[3] = &unk_100010378;
  v13 = v7;
  v10 = v7;
  v11 = [v9 initWithDescription:v8 responseHandler:v12];

  [(CARSetupPromptPresenter *)self _presentGenericViewController:v11];
}

- (void)promptDirector:(id)a3 wantsToPresentAssetReadyPromptForVehicleName:(id)a4 appClipIDs:(id)a5 confirmationHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  v10 = CARSetupLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "app feature enabled, app IDs: %{public}@", buf, 0xCu);
  }

  if (v8 && [v8 count])
  {
    v11 = [[CARSetupAppClipsView alloc] initWithAppClipIdentifiers:v8];
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  v12 = [CARSetupAssetReadyViewController alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003044;
  v15[3] = &unk_1000103A0;
  v16 = v9;
  v13 = v9;
  v14 = [v12 initWithAppsView:v11 doneHandler:v15];
  [(CARSetupPromptPresenter *)self _presentGenericViewController:v14];
}

- (void)promptDirector:(id)a3 wantsToPresentAssetReadySoonPromptForVehicleName:(id)a4 confirmationHandler:(id)a5
{
  v6 = a5;
  v7 = [CARSetupAssetReadySoonViewController alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003188;
  v10[3] = &unk_1000103A0;
  v11 = v6;
  v8 = v6;
  v9 = [v7 initWithDoneHandler:v10];
  [(CARSetupPromptPresenter *)self _presentGenericViewController:v9];
}

- (void)promptDirector:(id)a3 wantsToPresentSetupCarKeysPromptForVehicleName:(id)a4 carKeyInfo:(id)a5 cancelHandler:(id)a6
{
  v9 = a6;
  v10 = [CARSetupPassConfiguration passConfigurationFromDigitalCarKeyInfo:a5 vehicleName:a4];
  v11 = objc_alloc_init(PKPaymentService);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000032FC;
  v13[3] = &unk_100010418;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [PKVehicleInitiatedPairingViewController vehicleInitiatedPairingViewControllerForConfiguration:v10 paymentService:v11 completion:v13];
}

- (void)promptDirector:(id)a3 wantsToCheckForSoftwareUpdatesWithCompletionHandler:(id)a4
{
  v6 = a4;
  v4 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 openSensitiveURL:v4 withOptions:&__NSDictionary0__struct];

  if (v6)
  {
    v6[2]();
  }
}

- (void)proxCardFlowWillPresent
{
  v2 = CARSetupLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "prox card flow will present", v3, 2u);
  }
}

- (void)proxCardFlowDidDismiss
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "prox card flow did dismiss", v6, 2u);
  }

  v4 = [(CARSetupPromptPresenter *)self proxNavigationController];

  if (v4)
  {
    v5 = [(CARSetupPromptPresenter *)self promptDirector];
    [v5 presenterDidDismiss];

    [(CARSetupPromptPresenter *)self setProxNavigationController:0];
  }
}

- (void)_dismissFromGenericFlow
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "generic flow did dismiss", v6, 2u);
  }

  v4 = [(CARSetupPromptPresenter *)self genericNavigationController];

  if (v4)
  {
    v5 = [(CARSetupPromptPresenter *)self promptDirector];
    [v5 presenterDidDismiss];

    [(CARSetupPromptPresenter *)self setGenericNavigationController:0];
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end