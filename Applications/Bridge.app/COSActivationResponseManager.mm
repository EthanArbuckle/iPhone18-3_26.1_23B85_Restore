@interface COSActivationResponseManager
- (COSSetupController)setupController;
- (id)viewControllerForAlertPresentation;
- (void)awaitActivationWhileHoldingFlow:(BOOL)flow;
- (void)clearActivationState;
- (void)loader:(id)loader didFailWithError:(id)error;
- (void)loader:(id)loader didReceiveHTTPResponse:(id)response;
- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal;
- (void)objectModel:(id)model elementDidChange:(id)change;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion;
- (void)objectModelPressedBack:(id)back;
- (void)presentFlow;
- (void)setAwaitingActivation:(BOOL)activation;
@end

@implementation COSActivationResponseManager

- (void)loader:(id)loader didFailWithError:(id)error
{
  loaderCopy = loader;
  errorCopy = error;
  v7 = pbb_activation_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10018AC34(loaderCopy, errorCopy, v7);
  }
}

- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal
{
  loaderCopy = loader;
  modelCopy = model;
  v10 = pbb_activation_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412802;
    v25 = loaderCopy;
    v26 = 2112;
    v27 = modelCopy;
    v28 = 1024;
    signalCopy = signal;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receivedObj %@ %@ %d", &v24, 0x1Cu);
  }

  rootObjectModel = self->_rootObjectModel;
  if (rootObjectModel)
  {
    visiblePage = [(RUIObjectModel *)rootObjectModel visiblePage];
    view = [visiblePage view];
    [view setAlpha:1.0];

    visiblePage2 = [(RUIObjectModel *)self->_rootObjectModel visiblePage];
    view2 = [visiblePage2 view];
    [view2 setUserInteractionEnabled:1];

    WeakRetained = objc_loadWeakRetained(&self->_setupController);
    [WeakRetained showBusyIndicator:1];
  }

  defaultPages = [modelCopy defaultPages];
  v18 = [defaultPages count];

  if (v18)
  {
    objc_storeStrong(&self->_currentObjectModel, model);
    if (self->_rootObjectModel)
    {
      if (signal == 3)
      {
        v19 = objc_loadWeakRetained(&self->_setupController);
        [v19 popRUIObject:self->_rootObjectModel animated:0];

        objc_storeStrong(&self->_rootObjectModel, model);
        [(RUIObjectModel *)self->_rootObjectModel setDelegate:self];
        v20 = objc_loadWeakRetained(&self->_setupController);
        [v20 pushRUIObject:self->_rootObjectModel animated:0 completion:0];

        goto LABEL_16;
      }

      [modelCopy setDelegate:self];
      bridgeController = objc_loadWeakRetained(&self->_setupController);
      [bridgeController pushRUIObject:modelCopy animated:1 completion:&stru_10026C130];
    }

    else
    {
      objc_storeStrong(&self->_rootObjectModel, model);
      [(RUIObjectModel *)self->_rootObjectModel setDelegate:self];
      v21 = pbb_activation_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Stashing the AL Controller, we'll show it when Setup is ready.", &v24, 2u);
      }

      self->_hasStashedALFlow = 1;
      v22 = +[NSNotificationCenter defaultCenter];
      [v22 postNotificationName:@"COSActivationResponseManagerStashedALFlowNotification" object:0];

      if (self->_awaitingActivation)
      {
        [(COSActivationResponseManager *)self presentFlow];
        goto LABEL_16;
      }

      bridgeController = [UIApp bridgeController];
      [bridgeController beganWaitingForPresentationOfActivationEvent];
    }
  }

LABEL_16:
}

- (void)loader:(id)loader didReceiveHTTPResponse:(id)response
{
  loaderCopy = loader;
  responseCopy = response;
  v7 = pbb_activation_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = loaderCopy;
    v10 = 2112;
    v11 = responseCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didReceiveHTTPResponse %@ %@", &v8, 0x16u);
  }
}

- (void)objectModel:(id)model elementDidChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  v7 = pbb_activation_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = modelCopy;
    v17 = 2112;
    v18 = changeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "elementDidChange %@ %@", &v15, 0x16u);
  }

  name = [changeCopy name];
  v9 = [name isEqualToString:@"tryAgain"];

  if (v9)
  {
    v10 = pbb_activation_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retry Activation button pressed", &v15, 2u);
    }

    bridgeController = [UIApp bridgeController];
    [bridgeController tellGizmoToRetryActivation];

    bridgeController2 = [UIApp bridgeController];
    [bridgeController2 tellGizmoToKeepAliveForActivationEvent];
  }

  else
  {
    name2 = [changeCopy name];
    v14 = [name2 isEqualToString:@"reset"];

    if (v14)
    {
      [UIApp resetSetupFlowAnimated:1 forEvent:48];
    }
  }
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion
{
  modelCopy = model;
  linkCopy = link;
  methodCopy = method;
  completionCopy = completion;
  v14 = pbb_activation_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v36 = modelCopy;
    v37 = 2112;
    v38 = linkCopy;
    v39 = 2112;
    v40 = methodCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "pressedLink (%@) (%@) (%@)", buf, 0x20u);
  }

  clientInfo = [modelCopy clientInfo];
  v16 = [clientInfo objectForKeyedSubscript:@"elementIdForiCloudAppleId"];

  if (![(__CFString *)v16 length])
  {

    v16 = @"login";
  }

  v17 = [modelCopy rowForFormField:v16];
  if (v17)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    [v17 populatePostbackDictionary:v18];
  }

  lowercaseString = [methodCopy lowercaseString];
  v20 = [lowercaseString isEqualToString:@"post"];

  if (v20)
  {
    postbackData = [modelCopy postbackData];
  }

  else
  {
    postbackData = 0;
  }

  v22 = pbb_activation_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = linkCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "loading URL: %@", buf, 0xCu);
  }

  v34 = methodCopy;

  v23 = [[NSMutableURLRequest alloc] initWithURL:linkCopy cachePolicy:1 timeoutInterval:240.0];
  v24 = v23;
  if (postbackData)
  {
    [v23 setHTTPBody:postbackData];
    [v24 setHTTPMethod:@"POST"];
    [v24 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    v25 = pbb_activation_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sending Request", buf, 2u);
    }
  }

  bridgeController = [UIApp bridgeController];
  [bridgeController sendProxyActivationWithCustomRequest:v24];

  bridgeController2 = [UIApp bridgeController];
  [bridgeController2 tellGizmoToKeepAliveForActivationEvent];

  rootObjectModel = self->_rootObjectModel;
  if (rootObjectModel)
  {
    visiblePage = [(RUIObjectModel *)rootObjectModel visiblePage];
    view = [visiblePage view];
    [view setAlpha:0.65];

    visiblePage2 = [(RUIObjectModel *)self->_rootObjectModel visiblePage];
    view2 = [visiblePage2 view];
    [view2 setUserInteractionEnabled:0];

    WeakRetained = objc_loadWeakRetained(&self->_setupController);
    [WeakRetained showBusyIndicator:1];

    self->_hasStashedALFlow = 0;
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)objectModelPressedBack:(id)back
{
  backCopy = back;
  v5 = pbb_activation_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = backCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "objectModelPressedBack %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  [WeakRetained popRUIObject:backCopy animated:1];
}

- (void)setAwaitingActivation:(BOOL)activation
{
  if (activation)
  {

    [(COSActivationResponseManager *)self awaitActivationWhileHoldingFlow:0];
  }

  else
  {
    v4 = pbb_activation_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No longer awaiting activation", v5, 2u);
    }

    self->_isFlowOnHold = 0;
    self->_awaitingActivation = 0;
  }
}

- (void)awaitActivationWhileHoldingFlow:(BOOL)flow
{
  flowCopy = flow;
  v5 = pbb_activation_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = flowCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Awaiting Activation while holding: %d", v6, 8u);
  }

  self->_isFlowOnHold = flowCopy;
  self->_awaitingActivation = 1;
  if (self->_rootObjectModel)
  {
    [(COSActivationResponseManager *)self presentFlow];
  }
}

- (void)presentFlow
{
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Present Flow for Activation Lock", buf, 2u);
  }

  self->_didPresentFlow = 1;
  if (self->_isFlowOnHold)
  {
    WeakRetained = objc_loadWeakRetained(&self->_setupController);
    [WeakRetained blockGoingBackFromCurrentController];
  }

  v5 = objc_loadWeakRetained(&self->_setupController);
  rootObjectModel = self->_rootObjectModel;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011107C;
  v7[3] = &unk_1002682F0;
  v7[4] = self;
  [v5 pushRUIObject:rootObjectModel animated:1 completion:v7];
}

- (id)viewControllerForAlertPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  navigationController = [WeakRetained navigationController];
  topViewController = [navigationController topViewController];

  return topViewController;
}

- (void)clearActivationState
{
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[COSActivationResponseManager clearActivationState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(RUIObjectModel *)self->_rootObjectModel setDelegate:0];
  rootObjectModel = self->_rootObjectModel;
  self->_rootObjectModel = 0;

  [(RUIObjectModel *)self->_currentObjectModel setDelegate:0];
  currentObjectModel = self->_currentObjectModel;
  self->_currentObjectModel = 0;

  *&self->_awaitingActivation = 0;
}

- (COSSetupController)setupController
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);

  return WeakRetained;
}

@end