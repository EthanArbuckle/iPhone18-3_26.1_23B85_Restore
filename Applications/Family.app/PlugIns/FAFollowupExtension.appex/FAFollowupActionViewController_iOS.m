@interface FAFollowupActionViewController_iOS
- (id)_urlEndpointForFollowpItem;
- (void)_beginLoadingFamilyCircleUI;
- (void)handleAKAction:(id)a3 completion:(id)a4;
- (void)handleActionWithURL:(id)a3;
- (void)handleActionWithURLKey:(id)a3 completion:(id)a4;
@end

@implementation FAFollowupActionViewController_iOS

- (void)handleActionWithURLKey:(id)a3 completion:(id)a4
{
  objc_storeStrong(&self->_urlEndpoint, a3);
  v5 = a4;
  v5[2](v5, 0);
}

- (void)handleAKAction:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleAKAction called with context: %@", buf, 0xCu);
  }

  v9 = [v6 akAction];
  v10 = [v9 isEqualToString:AKActionContinue];

  if (v10)
  {
    v11 = [(FAFollowupActionViewController_iOS *)self _urlEndpointForFollowpItem];
    urlEndpoint = self->_urlEndpoint;
    self->_urlEndpoint = v11;

    v7[2](v7, 0);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000015F0;
    v13[3] = &unk_100004198;
    v14 = v7;
    [FAFollowupManager teardownFollowUpWithContext:v6 completion:v13];
  }
}

- (void)handleActionWithURL:(id)a3
{
  v3 = a3;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = 0;
  [v4 openSensitiveURL:v3 withOptions:0 error:&v7];

  v5 = v7;
  if (v5)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100001BB0(v5);
    }
  }
}

- (void)_beginLoadingFamilyCircleUI
{
  if (self->_urlEndpoint)
  {
    v3 = [[FACircleStateController alloc] initWithPresenter:self];
    circleStateController = self->_circleStateController;
    self->_circleStateController = v3;

    v5 = [FACircleContext alloc];
    v6 = [v5 initWithEventType:FACircleEventTypeURLEndpoint];
    [v6 setUrlEndpoint:self->_urlEndpoint];
    v7 = [(FAFollowupActionViewController *)self followupItem];
    v8 = [v7 userInfo];
    v9 = [v8 objectForKeyedSubscript:AKFollowUpIDMSDataKey];

    if (v9)
    {
      v16 = @"requestParameters";
      v17 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [v6 setAdditionalParameters:v10];
    }

    v11 = self->_circleStateController;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000018BC;
    v15[3] = &unk_1000041C0;
    v15[4] = self;
    [(FACircleStateController *)v11 performOperationWithContext:v6 completion:v15];
  }

  else
  {
    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100001C38(v12);
    }

    v13 = [(FAFollowupActionViewController *)self followupItem];
    v14 = [v13 uniqueIdentifier];
    [FAFollowupManager tearDownFollowupItemWithIdentifier:v14 completion:0];

    [(FAFollowupActionViewController_iOS *)self finishProcessing];
  }
}

- (id)_urlEndpointForFollowpItem
{
  v2 = [(FAFollowupActionViewController *)self followupItem];
  v3 = [v2 actions];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = AKFollowUpURLKey;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 userInfo];
        v12 = [v11 objectForKeyedSubscript:v8];

        if (v12)
        {
          v14 = [v10 userInfo];
          v13 = [v14 objectForKeyedSubscript:v8];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end