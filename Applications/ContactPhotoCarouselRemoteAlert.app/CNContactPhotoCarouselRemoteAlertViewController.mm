@interface CNContactPhotoCarouselRemoteAlertViewController
- (void)_flowDidDismiss;
- (void)avatarPosterEditorFromFlowManager:(id)manager didUpdateContact:(id)contact withVisualIdentity:(id)identity;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
@end

@implementation CNContactPhotoCarouselRemoteAlertViewController

- (void)avatarPosterEditorFromFlowManager:(id)manager didUpdateContact:(id)contact withVisualIdentity:(id)identity
{
  contactCopy = contact;
  canSendResponse = [(BSAction *)self->_action canSendResponse];
  if (contactCopy && canSendResponse)
  {
    v14 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:contactCopy requiringSecureCoding:1 error:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = objc_alloc_init(BSMutableSettings);
      [v10 setObject:v8 forSetting:0];
      action = self->_action;
      v12 = [BSActionResponse responseWithInfo:v10];
      [(BSAction *)action sendResponse:v12];
    }

    else
    {
      v10 = CNUILogRemoteAlert();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v9 localizedDescription];
        *buf = 138412290;
        v16 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not encode response contact: %@", buf, 0xCu);
      }
    }
  }
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001628;
  v7[3] = &unk_1000081E8;
  v7[4] = self;
  handlerCopy = handler;
  v6 = handlerCopy;
  [controller dismissViewControllerAnimated:1 completion:v7];
}

- (void)sender:(id)sender presentViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setModalPresentationStyle:0];
  [(CNContactPhotoCarouselRemoteAlertViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_flowDidDismiss
{
  _remoteViewControllerProxy = [(CNContactPhotoCarouselRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v32 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Preparing for activation with context: %p", buf, 0xCu);
  }

  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"mode"];
  integerValue = [v10 integerValue];

  userInfo2 = [contextCopy userInfo];
  v13 = [userInfo2 objectForKeyedSubscript:@"contactData"];

  if ((*(CNIsDataEmpty + 16))(CNIsDataEmpty, v13))
  {
    v14 = CNUILogRemoteAlert();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Contact data is missing for a request", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v30 = 0;
    v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v30];
    v16 = v30;
    requestContact = self->_requestContact;
    self->_requestContact = v15;

    if (self->_requestContact)
    {
      v18 = +[CNUIContactsEnvironment currentEnvironment];
      inProcessContactStore = [v18 inProcessContactStore];

      v20 = [[CNSNaPSetupFlowManager alloc] initWithPresenterDelegate:self contactStore:inProcessContactStore mode:integerValue];
      flowManager = self->_flowManager;
      self->_flowManager = v20;

      [(CNSNaPSetupFlowManager *)self->_flowManager setDelegate:self];
      userInfo3 = [contextCopy userInfo];
      v23 = [userInfo3 objectForKeyedSubscript:@"isEditing"];
      bOOLValue = [v23 BOOLValue];

      v25 = dispatch_time(0, 100000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001ADC;
      block[3] = &unk_1000081C0;
      block[4] = self;
      v29 = bOOLValue;
      dispatch_after(v25, &_dispatch_main_q, block);
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      v26 = CNUILogRemoteAlert();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v16 localizedDescription];
        *buf = 138412290;
        v32 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not unarchive contact for a request: %@", buf, 0xCu);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Configuring with context: %p", &v14, 0xCu);
  }

  v9 = [(CNContactPhotoCarouselRemoteAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100008198];
  [v9 setAllowsAlertStacking:1];
  actions = [contextCopy actions];
  anyObject = [actions anyObject];
  action = self->_action;
  self->_action = anyObject;

  if (!self->_action)
  {
    v13 = CNUILogRemoteAlert();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "A response action is missing", &v14, 2u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end