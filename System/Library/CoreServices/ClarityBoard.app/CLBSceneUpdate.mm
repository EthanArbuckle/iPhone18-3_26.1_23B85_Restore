@interface CLBSceneUpdate
+ (id)_applicationForScene:(id)scene;
+ (id)_sceneForApplication:(id)application;
+ (id)trackStartOfActivationForApplication:(id)application;
- (CLBSceneUpdate)initWithApplication:(id)application activationMetricsInfo:(id)info;
- (CLBSceneUpdate)initWithRequest:(id)request displayStyle:(int64_t)style activationMetricsInfo:(id)info;
- (CLBSceneUpdate)initWithScene:(id)scene;
- (id)_initWithApplication:(id)application request:(id)request scene:(id)scene displayStyle:(int64_t)style activationMetricsInfo:(id)info createIfNeeded:(BOOL)needed;
- (id)performUpdate;
- (void)_updateContext:(id)context withActivationMetricsInfo:(id)info;
- (void)_updateDisplayStyleForSettings:(id)settings;
@end

@implementation CLBSceneUpdate

- (id)_initWithApplication:(id)application request:(id)request scene:(id)scene displayStyle:(int64_t)style activationMetricsInfo:(id)info createIfNeeded:(BOOL)needed
{
  applicationCopy = application;
  requestCopy = request;
  sceneCopy = scene;
  infoCopy = info;
  if (sceneCopy || ([CLBSceneUpdate _sceneForApplication:applicationCopy], (sceneCopy = objc_claimAutoreleasedReturnValue()) != 0) || needed)
  {
    v23.receiver = self;
    v23.super_class = CLBSceneUpdate;
    v19 = [(CLBSceneUpdate *)&v23 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_appInfo, application);
      objc_storeStrong(&v20->_request, request);
      objc_storeStrong(&v20->_scene, sceneCopy);
      v20->_displayStyle = style;
      objc_storeStrong(&v20->_activationMetricsInfo, info);
    }

    v21 = v20;
  }

  else
  {

    v21 = 0;
  }

  return v21;
}

- (CLBSceneUpdate)initWithScene:(id)scene
{
  sceneCopy = scene;
  v5 = [CLBSceneUpdate _applicationForScene:sceneCopy];
  v6 = v5;
  if (v5)
  {
    v7 = -[CLBSceneUpdate _initWithApplication:request:scene:displayStyle:activationMetricsInfo:createIfNeeded:](self, "_initWithApplication:request:scene:displayStyle:activationMetricsInfo:createIfNeeded:", v5, 0, sceneCopy, [v5 displayStyle], 0, 0);
  }

  else
  {
    v8 = +[CLFLog commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1002848F0(sceneCopy, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (CLBSceneUpdate)initWithApplication:(id)application activationMetricsInfo:(id)info
{
  infoCopy = info;
  applicationCopy = application;
  v8 = -[CLBSceneUpdate _initWithApplication:request:scene:displayStyle:activationMetricsInfo:createIfNeeded:](self, "_initWithApplication:request:scene:displayStyle:activationMetricsInfo:createIfNeeded:", applicationCopy, 0, 0, [applicationCopy displayStyle], infoCopy, 1);

  return v8;
}

- (CLBSceneUpdate)initWithRequest:(id)request displayStyle:(int64_t)style activationMetricsInfo:(id)info
{
  infoCopy = info;
  requestCopy = request;
  application = [requestCopy application];
  v11 = [(CLBSceneUpdate *)self _initWithApplication:application request:requestCopy scene:0 displayStyle:style activationMetricsInfo:infoCopy createIfNeeded:1];

  return v11;
}

- (id)performUpdate
{
  if (!self->_scene)
  {
    sceneManager = [qword_100336870 sceneManager];
    workspace = [sceneManager workspace];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000171DC;
    v37[3] = &unk_1002FCAE0;
    v37[4] = self;
    v5 = [workspace createScene:v37];
    scene = self->_scene;
    self->_scene = v5;
  }

  pptActivationContext = [(CLBOpenApplicationRequest *)self->_request pptActivationContext];
  systemCompletion = [(CLBOpenApplicationRequest *)self->_request systemCompletion];
  if (([(FBScene *)self->_scene isActive]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    systemRequest = [(CLBOpenApplicationRequest *)self->_request systemRequest];
    options = [systemRequest options];
    dictionary = [options dictionary];
    v13 = [dictionary bs_safeDictionaryForKey:FBSOpenApplicationOptionKeyDebuggingOptions];

    if ([v13 count])
    {
      v14 = 0;
    }

    else
    {
      v14 = pptActivationContext == 0;
    }

    if (v14 && systemCompletion == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_alloc_init(FBMutableProcessExecutionContext);
      v16 = [v13 bs_safeArrayForKey:FBSDebugOptionKeyArguments];
      v17 = [v13 bs_safeDictionaryForKey:FBSDebugOptionKeyEnvironment];
      v18 = [v13 bs_safeStringForKey:FBSDebugOptionKeyStandardOutPath];
      v19 = [v13 bs_safeStringForKey:FBSDebugOptionKeyStandardErrorPath];
      v31 = [v13 bs_BOOLForKey:FBSDebugOptionKeyDisableASLR];
      v30 = [v13 bs_BOOLForKey:FBSDebugOptionKeyWaitForDebugger];
      if ([v16 count])
      {
        [v9 setArguments:v16];
      }

      if ([v17 count])
      {
        [v9 setEnvironment:v17];
      }

      if (v18)
      {
        v20 = [NSURL URLWithString:v18];
        [v9 setStandardOutputURL:v20];
      }

      if (v19)
      {
        v21 = [NSURL URLWithString:v19];
        [v9 setStandardErrorURL:v21];
      }

      [v9 setDisableASLR:v31];
      [v9 setWaitForDebugger:v30];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100017464;
      v35[3] = &unk_1002FCB08;
      v36 = systemCompletion;
      [v9 setCompletion:v35];
      [pptActivationContext prepareExecutionContext:v9];
    }
  }

  v22 = self->_scene;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000174E4;
  v32[3] = &unk_1002FCB30;
  v32[4] = self;
  v33 = pptActivationContext;
  v34 = v9;
  v23 = v9;
  v24 = pptActivationContext;
  [(FBScene *)v22 performUpdate:v32];
  if (systemCompletion && !v23)
  {
    systemCompletion[2](systemCompletion, 0);
  }

  request = self->_request;
  self->_request = 0;

  activationMetricsInfo = self->_activationMetricsInfo;
  self->_activationMetricsInfo = 0;

  v27 = self->_scene;
  v28 = v27;

  return v27;
}

+ (id)trackStartOfActivationForApplication:(id)application
{
  applicationCopy = application;
  bundleVersion = [applicationCopy bundleVersion];
  [bundleVersion cStringUsingEncoding:4];

  shortVersionString = [applicationCopy shortVersionString];
  [shortVersionString cStringUsingEncoding:4];

  bundleIdentifier = [applicationCopy bundleIdentifier];
  [bundleIdentifier cStringUsingEncoding:4];

  v18 = 0;
  mach_continuous_time();
  +[NSDate timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [self _sceneForApplication:applicationCopy];
  v11 = v10;
  if (v10 && ([v10 isActive] & 1) != 0)
  {
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [applicationCopy bundleIdentifier];
      *buf = 138412290;
      v20 = bundleIdentifier2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tracking start of activation for application: %@", buf, 0xCu);
    }

    alm_app_will_activate_with_details();
  }

  else
  {
    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier3 = [applicationCopy bundleIdentifier];
      *buf = 138412290;
      v20 = bundleIdentifier3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Tracking start of launch for application: %@", buf, 0xCu);
    }

    alm_app_will_launch_with_details_and_metrics_payload();
    alm_app_will_activate_with_signpost_id();
  }

  v16 = [[CLBActivationMetricsInfo alloc] initWithSignpostID:0 activationEventTime:v18 launchMetricsPayload:v9];

  return v16;
}

- (void)_updateContext:(id)context withActivationMetricsInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = contextCopy;
    [infoCopy activationEventTime];
    [v8 setUserLaunchEventTime:?];
    [v8 setSignpostID:{objc_msgSend(infoCopy, "signpostID")}];
    launchMetricsPayload = [infoCopy launchMetricsPayload];
    [v8 setLaunchMetricsPayload:launchMetricsPayload];
  }

  else
  {
    launchMetricsPayload = +[CLFLog commonLog];
    if (os_log_type_enabled(launchMetricsPayload, OS_LOG_TYPE_ERROR))
    {
      sub_100284968(self, launchMetricsPayload);
    }
  }
}

- (void)_updateDisplayStyleForSettings:(id)settings
{
  settingsCopy = settings;
  v5 = +[FBDisplayManager mainConfiguration];
  v6 = v5;
  displayStyle = self->_displayStyle;
  if (displayStyle == 1)
  {
    clb_displayConfigurationForNonClarityUIApp = [v5 clb_displayConfigurationForNonClarityUIApp];
    [settingsCopy setDisplayConfiguration:clb_displayConfigurationForNonClarityUIApp];
    v9 = sub_100006370();
    sub_100027FE0(v9, &v13);
    BSRectWithSize();
    [settingsCopy setFrame:?];
  }

  else if (!displayStyle)
  {
    [settingsCopy setDisplayConfiguration:v5];
    [v6 bounds];
    [settingsCopy setFrame:?];
  }

  v10 = +[CLFLog commonLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(CLBApplicationInfo *)self->_appInfo bundleIdentifier];
    [settingsCopy frame];
    v12 = NSStringFromCGRect(v18);
    *buf = 138412546;
    v15 = bundleIdentifier;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using scene frame for %@: %@", buf, 0x16u);
  }
}

+ (id)_sceneForApplication:(id)application
{
  v3 = qword_100336870;
  applicationCopy = application;
  sceneManager = [v3 sceneManager];
  workspace = [sceneManager workspace];
  defaultSceneIdentifier = [applicationCopy defaultSceneIdentifier];

  v8 = [workspace sceneWithIdentifier:defaultSceneIdentifier];

  return v8;
}

+ (id)_applicationForScene:(id)scene
{
  definition = [scene definition];
  clientIdentity = [definition clientIdentity];
  processIdentity = [clientIdentity processIdentity];
  embeddedApplicationIdentifier = [processIdentity embeddedApplicationIdentifier];

  appLibrary = [qword_100336870 appLibrary];
  v8 = [appLibrary installedApplicationWithBundleIdentifier:embeddedApplicationIdentifier];

  return v8;
}

@end