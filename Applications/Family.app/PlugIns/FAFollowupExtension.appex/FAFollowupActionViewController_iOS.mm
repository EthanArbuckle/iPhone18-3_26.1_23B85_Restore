@interface FAFollowupActionViewController_iOS
- (id)_urlEndpointForFollowpItem;
- (void)_beginLoadingFamilyCircleUI;
- (void)handleAKAction:(id)action completion:(id)completion;
- (void)handleActionWithURL:(id)l;
- (void)handleActionWithURLKey:(id)key completion:(id)completion;
@end

@implementation FAFollowupActionViewController_iOS

- (void)handleActionWithURLKey:(id)key completion:(id)completion
{
  objc_storeStrong(&self->_urlEndpoint, key);
  completionCopy = completion;
  completionCopy[2](completionCopy, 0);
}

- (void)handleAKAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = actionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleAKAction called with context: %@", buf, 0xCu);
  }

  akAction = [actionCopy akAction];
  v10 = [akAction isEqualToString:AKActionContinue];

  if (v10)
  {
    _urlEndpointForFollowpItem = [(FAFollowupActionViewController_iOS *)self _urlEndpointForFollowpItem];
    urlEndpoint = self->_urlEndpoint;
    self->_urlEndpoint = _urlEndpointForFollowpItem;

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000015F0;
    v13[3] = &unk_100004198;
    v14 = completionCopy;
    [FAFollowupManager teardownFollowUpWithContext:actionCopy completion:v13];
  }
}

- (void)handleActionWithURL:(id)l
{
  lCopy = l;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = 0;
  [v4 openSensitiveURL:lCopy withOptions:0 error:&v7];

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
    followupItem = [(FAFollowupActionViewController *)self followupItem];
    userInfo = [followupItem userInfo];
    v9 = [userInfo objectForKeyedSubscript:AKFollowUpIDMSDataKey];

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

    followupItem2 = [(FAFollowupActionViewController *)self followupItem];
    uniqueIdentifier = [followupItem2 uniqueIdentifier];
    [FAFollowupManager tearDownFollowupItemWithIdentifier:uniqueIdentifier completion:0];

    [(FAFollowupActionViewController_iOS *)self finishProcessing];
  }
}

- (id)_urlEndpointForFollowpItem
{
  followupItem = [(FAFollowupActionViewController *)self followupItem];
  actions = [followupItem actions];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = actions;
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
        userInfo = [v10 userInfo];
        v12 = [userInfo objectForKeyedSubscript:v8];

        if (v12)
        {
          userInfo2 = [v10 userInfo];
          v13 = [userInfo2 objectForKeyedSubscript:v8];

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