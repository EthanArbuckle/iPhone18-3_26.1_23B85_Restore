@interface CNContactPhotoCarouselRemoteAlertViewController
- (void)_flowDidDismiss;
- (void)avatarPosterEditorFromFlowManager:(id)a3 didUpdateContact:(id)a4 withVisualIdentity:(id)a5;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
@end

@implementation CNContactPhotoCarouselRemoteAlertViewController

- (void)avatarPosterEditorFromFlowManager:(id)a3 didUpdateContact:(id)a4 withVisualIdentity:(id)a5
{
  v6 = a4;
  v7 = [(BSAction *)self->_action canSendResponse];
  if (v6 && v7)
  {
    v14 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
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
        v13 = [v9 localizedDescription];
        *buf = 138412290;
        v16 = v13;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not encode response contact: %@", buf, 0xCu);
      }
    }
  }
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001628;
  v7[3] = &unk_1000081E8;
  v7[4] = self;
  v8 = a5;
  v6 = v8;
  [a4 dismissViewControllerAnimated:1 completion:v7];
}

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  [v5 setModalPresentationStyle:0];
  [(CNContactPhotoCarouselRemoteAlertViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_flowDidDismiss
{
  v2 = [(CNContactPhotoCarouselRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v2 dismiss];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Preparing for activation with context: %p", buf, 0xCu);
  }

  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"mode"];
  v11 = [v10 integerValue];

  v12 = [v6 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"contactData"];

  if ((*(CNIsDataEmpty + 16))(CNIsDataEmpty, v13))
  {
    v14 = CNUILogRemoteAlert();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Contact data is missing for a request", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7);
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
      v19 = [v18 inProcessContactStore];

      v20 = [[CNSNaPSetupFlowManager alloc] initWithPresenterDelegate:self contactStore:v19 mode:v11];
      flowManager = self->_flowManager;
      self->_flowManager = v20;

      [(CNSNaPSetupFlowManager *)self->_flowManager setDelegate:self];
      v22 = [v6 userInfo];
      v23 = [v22 objectForKeyedSubscript:@"isEditing"];
      v24 = [v23 BOOLValue];

      v25 = dispatch_time(0, 100000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001ADC;
      block[3] = &unk_1000081C0;
      block[4] = self;
      v29 = v24;
      dispatch_after(v25, &_dispatch_main_q, block);
      if (v7)
      {
        v7[2](v7);
      }
    }

    else
    {
      v26 = CNUILogRemoteAlert();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v16 localizedDescription];
        *buf = 138412290;
        v32 = v27;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not unarchive contact for a request: %@", buf, 0xCu);
      }

      if (v7)
      {
        v7[2](v7);
      }
    }
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Configuring with context: %p", &v14, 0xCu);
  }

  v9 = [(CNContactPhotoCarouselRemoteAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100008198];
  [v9 setAllowsAlertStacking:1];
  v10 = [v6 actions];
  v11 = [v10 anyObject];
  action = self->_action;
  self->_action = v11;

  if (!self->_action)
  {
    v13 = CNUILogRemoteAlert();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "A response action is missing", &v14, 2u);
    }
  }

  if (v7)
  {
    v7[2](v7);
  }
}

@end