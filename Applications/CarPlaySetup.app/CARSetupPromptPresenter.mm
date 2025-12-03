@interface CARSetupPromptPresenter
- (CARSetupPromptPresenter)initWithPresentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (void)_dismissFromGenericFlow;
- (void)_presentGenericViewController:(id)controller;
- (void)_presentPromptViewController:(id)controller;
- (void)promptDirector:(id)director wantsToCheckForSoftwareUpdatesWithCompletionHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentAllowWhileLockedPromptForVehicleName:(id)name responseHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentAssetProgressPromptForVehicleName:(id)name progressReporter:(id)reporter cancelHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentAssetReadyPromptForVehicleName:(id)name appClipIDs:(id)ds confirmationHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentAssetReadySoonPromptForVehicleName:(id)name confirmationHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentAssetUnavailablePromptWithDescription:(id)description responseHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentBluetoothConfirmationPromptForVehicleName:(id)name numericCode:(id)code responseHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentBluetoothContactsSyncPromptWithResponseHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentEnhancedIntegrationPromptForVehicleName:(id)name responseHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentSetupCarKeysPromptForVehicleName:(id)name carKeyInfo:(id)info cancelHandler:(id)handler;
- (void)promptDirector:(id)director wantsToPresentUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler;
- (void)promptDirectorWantsToPresentWaitingOnMessaging:(id)messaging;
- (void)promptDirectorWantsToPresentWaitingOnStartSession:(id)session;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
@end

@implementation CARSetupPromptPresenter

- (CARSetupPromptPresenter)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CARSetupPromptPresenter;
  v5 = [(CARSetupPromptPresenter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
    v7 = [[CARSetupPromptDirector alloc] initWithPresenter:v6];
    promptDirector = v6->_promptDirector;
    v6->_promptDirector = v7;
  }

  return v6;
}

- (void)_presentPromptViewController:(id)controller
{
  controllerCopy = controller;
  proxNavigationController = [(CARSetupPromptPresenter *)self proxNavigationController];

  v6 = CARSetupLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (proxNavigationController)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "pushing prox card view controller: %@", &v10, 0xCu);
    }

    proxNavigationController2 = [(CARSetupPromptPresenter *)self proxNavigationController];
    [proxNavigationController2 pushViewController:controllerCopy animated:1];
  }

  else
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "starting prox card presentation for view controller: %@", &v10, 0xCu);
    }

    presentingViewController = [(CARSetupPromptPresenter *)self presentingViewController];
    proxNavigationController2 = [presentingViewController presentProxCardFlowWithDelegate:self initialViewController:controllerCopy];

    [(CARSetupPromptPresenter *)self setProxNavigationController:proxNavigationController2];
  }
}

- (void)_presentGenericViewController:(id)controller
{
  controllerCopy = controller;
  proxNavigationController = [(CARSetupPromptPresenter *)self proxNavigationController];

  if (proxNavigationController)
  {
    [(CARSetupPromptPresenter *)self setProxNavigationController:0];
    presentingViewController = [(CARSetupPromptPresenter *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    v7 = CARSetupLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismissing prox card presentation", buf, 2u);
    }
  }

  genericNavigationController = [(CARSetupPromptPresenter *)self genericNavigationController];

  v9 = CARSetupLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (genericNavigationController)
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "pushing prox card view controller: %@", buf, 0xCu);
    }

    genericNavigationController2 = [(CARSetupPromptPresenter *)self genericNavigationController];
    [(CARSetupNavigationController *)genericNavigationController2 pushViewController:controllerCopy animated:1];
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "starting generic card presentation for view controller: %@", buf, 0xCu);
    }

    genericNavigationController2 = [[CARSetupNavigationController alloc] initWithRootViewController:controllerCopy];
    [(CARSetupPromptPresenter *)self setGenericNavigationController:genericNavigationController2];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001C28;
    v13[3] = &unk_100010350;
    v13[4] = self;
    [(CARSetupNavigationController *)genericNavigationController2 setDismissHandler:v13];
    presentingViewController2 = [(CARSetupPromptPresenter *)self presentingViewController];
    [presentingViewController2 presentViewController:genericNavigationController2 animated:1 completion:0];
  }
}

- (void)promptDirector:(id)director wantsToPresentBluetoothConfirmationPromptForVehicleName:(id)name numericCode:(id)code responseHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001D04;
  v11[3] = &unk_100010378;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = [CARSetupPrompts bluetoothConfirmationPromptForVehicleName:name numericCode:code responseHandler:v11];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v10];
}

- (void)promptDirector:(id)director wantsToPresentBluetoothContactsSyncPromptWithResponseHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001EA0;
  v7[3] = &unk_100010378;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = [CARSetupPrompts bluetoothContactsSyncPromptWithResponseHandler:v7];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v6];
}

- (void)promptDirectorWantsToPresentWaitingOnMessaging:(id)messaging
{
  v4 = +[CARSetupPrompts waitingOnMessagingPrompt];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v4];
}

- (void)promptDirector:(id)director wantsToPresentAllowWhileLockedPromptForVehicleName:(id)name responseHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000021F4;
  v9[3] = &unk_100010378;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = [CARSetupPrompts allowWhileLockedPromptForVehicleName:name responseHandler:v9];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v8];
}

- (void)promptDirector:(id)director wantsToPresentUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000255C;
  v11[3] = &unk_100010378;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = [CARSetupPrompts useWirelessPromptWithWirelessEnablement:enablement declineVariant:variant responseHandler:v11];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v10];
}

- (void)promptDirectorWantsToPresentWaitingOnStartSession:(id)session
{
  v4 = +[CARSetupPrompts waitingOnStartSessionPrompt];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v4];
}

- (void)promptDirector:(id)director wantsToPresentEnhancedIntegrationPromptForVehicleName:(id)name responseHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000275C;
  v9[3] = &unk_100010378;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = [CARSetupPrompts enhancedIntegrationPromptForVehicleName:name responseHandler:v9];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v8];
}

- (void)promptDirector:(id)director wantsToPresentAssetSupportingUseWirelessPromptWithWirelessEnablement:(unint64_t)enablement declineVariant:(unint64_t)variant responseHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002AC4;
  v11[3] = &unk_100010378;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = [CARSetupPrompts assetSupportingUseWirelessPromptWithWirelessEnablement:enablement declineVariant:variant responseHandler:v11];
  [(CARSetupPromptPresenter *)self _presentPromptViewController:v10];
}

- (void)promptDirector:(id)director wantsToPresentAssetProgressPromptForVehicleName:(id)name progressReporter:(id)reporter cancelHandler:(id)handler
{
  handlerCopy = handler;
  reporterCopy = reporter;
  v10 = [CARSetupAssetProgressViewController alloc];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100002C80;
  v16 = &unk_1000103C8;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = [v10 initWithProgressReporter:reporterCopy cancelHandler:&v13];

  [(CARSetupPromptPresenter *)self _presentGenericViewController:v12, v13, v14, v15, v16, selfCopy];
}

- (void)promptDirector:(id)director wantsToPresentAssetUnavailablePromptWithDescription:(id)description responseHandler:(id)handler
{
  handlerCopy = handler;
  descriptionCopy = description;
  v9 = [CARSetupAssetUnavailableViewController alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002DB4;
  v12[3] = &unk_100010378;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [v9 initWithDescription:descriptionCopy responseHandler:v12];

  [(CARSetupPromptPresenter *)self _presentGenericViewController:v11];
}

- (void)promptDirector:(id)director wantsToPresentAssetReadyPromptForVehicleName:(id)name appClipIDs:(id)ds confirmationHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  v10 = CARSetupLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = dsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "app feature enabled, app IDs: %{public}@", buf, 0xCu);
  }

  if (dsCopy && [dsCopy count])
  {
    v11 = [[CARSetupAppClipsView alloc] initWithAppClipIdentifiers:dsCopy];
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
  v16 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v12 initWithAppsView:v11 doneHandler:v15];
  [(CARSetupPromptPresenter *)self _presentGenericViewController:v14];
}

- (void)promptDirector:(id)director wantsToPresentAssetReadySoonPromptForVehicleName:(id)name confirmationHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [CARSetupAssetReadySoonViewController alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003188;
  v10[3] = &unk_1000103A0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [v7 initWithDoneHandler:v10];
  [(CARSetupPromptPresenter *)self _presentGenericViewController:v9];
}

- (void)promptDirector:(id)director wantsToPresentSetupCarKeysPromptForVehicleName:(id)name carKeyInfo:(id)info cancelHandler:(id)handler
{
  handlerCopy = handler;
  v10 = [CARSetupPassConfiguration passConfigurationFromDigitalCarKeyInfo:info vehicleName:name];
  v11 = objc_alloc_init(PKPaymentService);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000032FC;
  v13[3] = &unk_100010418;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [PKVehicleInitiatedPairingViewController vehicleInitiatedPairingViewControllerForConfiguration:v10 paymentService:v11 completion:v13];
}

- (void)promptDirector:(id)director wantsToCheckForSoftwareUpdatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 openSensitiveURL:v4 withOptions:&__NSDictionary0__struct];

  if (handlerCopy)
  {
    handlerCopy[2]();
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

  proxNavigationController = [(CARSetupPromptPresenter *)self proxNavigationController];

  if (proxNavigationController)
  {
    promptDirector = [(CARSetupPromptPresenter *)self promptDirector];
    [promptDirector presenterDidDismiss];

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

  genericNavigationController = [(CARSetupPromptPresenter *)self genericNavigationController];

  if (genericNavigationController)
  {
    promptDirector = [(CARSetupPromptPresenter *)self promptDirector];
    [promptDirector presenterDidDismiss];

    [(CARSetupPromptPresenter *)self setGenericNavigationController:0];
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end