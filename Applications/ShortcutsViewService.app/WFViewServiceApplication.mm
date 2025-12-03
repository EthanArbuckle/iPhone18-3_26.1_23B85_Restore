@interface WFViewServiceApplication
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)bannerSourceForPresentable:(id)presentable;
- (void)_handlePlatformSpecificActions:(id)actions forScene:(id)scene withTransitionContext:(id)context;
- (void)workflowStatusWorkflowDidFinishWithSuccess:(BOOL)success;
- (void)workflowStatusWorkflowWillBeginRunningWithAttribution:(id)attribution context:(id)context;
@end

@implementation WFViewServiceApplication

- (id)bannerSourceForPresentable:(id)presentable
{
  requesterIdentifier = [presentable requesterIdentifier];
  v4 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:requesterIdentifier];

  return v4;
}

- (void)workflowStatusWorkflowDidFinishWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = sub_100001568();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[WFViewServiceApplication workflowStatusWorkflowDidFinishWithSuccess:]";
    v15 = 1024;
    v16 = successCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s workflowDidFinishWithSuccess: %i", buf, 0x12u);
  }

  lastPresentedStatus = [(WFViewServiceApplication *)self lastPresentedStatus];
  if (successCopy)
  {
    v7 = dispatch_time(0, 1000000000);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000015BC;
    v11[3] = &unk_1000103C0;
    v11[4] = self;
    v12 = lastPresentedStatus;
    dispatch_after(v7, &_dispatch_main_q, v11);
  }

  else
  {
    v8 = [(WFViewServiceApplication *)self bannerSourceForPresentable:lastPresentedStatus];
    requestIdentifier = [lastPresentedStatus requestIdentifier];
    v10 = [v8 revokePresentableWithRequestIdentifier:requestIdentifier reason:@"done" animated:1 userInfo:&__NSDictionary0__struct error:0];
  }
}

- (void)workflowStatusWorkflowWillBeginRunningWithAttribution:(id)attribution context:(id)context
{
  attributionCopy = attribution;
  contextCopy = context;
  v8 = sub_100001568();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[WFViewServiceApplication workflowStatusWorkflowWillBeginRunningWithAttribution:context:]";
    v18 = 2112;
    v19 = attributionCopy;
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s workflowWillBeginRunningWithAttribution: %@ context: %@", buf, 0x20u);
  }

  v9 = [[WFApertureStatusViewController alloc] initWithRunningContext:contextCopy attribution:attributionCopy];
  objc_storeStrong(&self->_lastPresentedStatus, v9);
  v10 = [(WFViewServiceApplication *)self bannerSourceForPresentable:v9];
  postOptions = [(WFApertureStatusViewController *)v9 postOptions];
  v15 = 0;
  v12 = [v10 postPresentable:v9 options:1 userInfo:postOptions error:&v15];
  v13 = v15;

  if ((v12 & 1) == 0)
  {
    v14 = sub_100001568();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[WFViewServiceApplication workflowStatusWorkflowWillBeginRunningWithAttribution:context:]";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Failed to post banner: %@", buf, 0x16u);
    }
  }
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];

  v8 = [v6 initWithName:@"Main" sessionRole:role];

  return v8;
}

- (void)_handlePlatformSpecificActions:(id)actions forScene:(id)scene withTransitionContext:(id)context
{
  actionsCopy = actions;
  sceneCopy = scene;
  contextCopy = context;
  activeConnection = [(WFViewServiceApplication *)self activeConnection];

  if (activeConnection)
  {
    info = sub_100001568();
    if (os_log_type_enabled(info, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[WFViewServiceApplication _handlePlatformSpecificActions:forScene:withTransitionContext:]";
      _os_log_impl(&_mh_execute_header, info, OS_LOG_TYPE_DEFAULT, "%s View service application already has an active connection, dropping incoming connection", buf, 0xCu);
    }
  }

  else
  {
    allObjects = [actionsCopy allObjects];
    firstObject = [allObjects firstObject];
    info = [firstObject info];

    v15 = [info objectForSetting:0];
    if (v15)
    {
      v16 = objc_alloc_init(NSXPCListenerEndpoint);
      [v16 _setEndpoint:v15];
      v17 = [[NSXPCConnection alloc] initWithListenerEndpoint:v16];
      [v17 setExportedObject:self];
      v18 = WFWorkflowStatusXPCInterface();
      [v17 setExportedInterface:v18];

      objc_initWeak(&location, self);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100001CD4;
      v24[3] = &unk_100010398;
      objc_copyWeak(&v25, &location);
      [v17 setInterruptionHandler:v24];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100001D98;
      v22[3] = &unk_100010398;
      objc_copyWeak(&v23, &location);
      [v17 setInvalidationHandler:v22];
      [v17 resume];
      [(WFViewServiceApplication *)self setActiveConnection:v17];
      v19 = WFWorkflowStatusHostXPCInterface();
      [v17 setRemoteObjectInterface:v19];

      remoteObjectProxy = [v17 remoteObjectProxy];
      [remoteObjectProxy workflowStatusHostBeginConnection];

      v21 = sub_100001568();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = "[WFViewServiceApplication _handlePlatformSpecificActions:forScene:withTransitionContext:]";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Opened XPC connection to incoming endpoint", buf, 0xCu);
      }

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = sub_100001568();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v28 = "[WFViewServiceApplication _handlePlatformSpecificActions:forScene:withTransitionContext:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Received a BSAction, but it was missing an endpoint", buf, 0xCu);
      }
    }
  }
}

@end