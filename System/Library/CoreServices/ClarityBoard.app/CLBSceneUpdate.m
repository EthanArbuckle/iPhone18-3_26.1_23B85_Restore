@interface CLBSceneUpdate
+ (id)_applicationForScene:(id)a3;
+ (id)_sceneForApplication:(id)a3;
+ (id)trackStartOfActivationForApplication:(id)a3;
- (CLBSceneUpdate)initWithApplication:(id)a3 activationMetricsInfo:(id)a4;
- (CLBSceneUpdate)initWithRequest:(id)a3 displayStyle:(int64_t)a4 activationMetricsInfo:(id)a5;
- (CLBSceneUpdate)initWithScene:(id)a3;
- (id)_initWithApplication:(id)a3 request:(id)a4 scene:(id)a5 displayStyle:(int64_t)a6 activationMetricsInfo:(id)a7 createIfNeeded:(BOOL)a8;
- (id)performUpdate;
- (void)_updateContext:(id)a3 withActivationMetricsInfo:(id)a4;
- (void)_updateDisplayStyleForSettings:(id)a3;
@end

@implementation CLBSceneUpdate

- (id)_initWithApplication:(id)a3 request:(id)a4 scene:(id)a5 displayStyle:(int64_t)a6 activationMetricsInfo:(id)a7 createIfNeeded:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (v17 || ([CLBSceneUpdate _sceneForApplication:v15], (v17 = objc_claimAutoreleasedReturnValue()) != 0) || a8)
  {
    v23.receiver = self;
    v23.super_class = CLBSceneUpdate;
    v19 = [(CLBSceneUpdate *)&v23 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_appInfo, a3);
      objc_storeStrong(&v20->_request, a4);
      objc_storeStrong(&v20->_scene, v17);
      v20->_displayStyle = a6;
      objc_storeStrong(&v20->_activationMetricsInfo, a7);
    }

    v21 = v20;
  }

  else
  {

    v21 = 0;
  }

  return v21;
}

- (CLBSceneUpdate)initWithScene:(id)a3
{
  v4 = a3;
  v5 = [CLBSceneUpdate _applicationForScene:v4];
  v6 = v5;
  if (v5)
  {
    v7 = -[CLBSceneUpdate _initWithApplication:request:scene:displayStyle:activationMetricsInfo:createIfNeeded:](self, "_initWithApplication:request:scene:displayStyle:activationMetricsInfo:createIfNeeded:", v5, 0, v4, [v5 displayStyle], 0, 0);
  }

  else
  {
    v8 = +[CLFLog commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1002848F0(v4, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (CLBSceneUpdate)initWithApplication:(id)a3 activationMetricsInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[CLBSceneUpdate _initWithApplication:request:scene:displayStyle:activationMetricsInfo:createIfNeeded:](self, "_initWithApplication:request:scene:displayStyle:activationMetricsInfo:createIfNeeded:", v7, 0, 0, [v7 displayStyle], v6, 1);

  return v8;
}

- (CLBSceneUpdate)initWithRequest:(id)a3 displayStyle:(int64_t)a4 activationMetricsInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 application];
  v11 = [(CLBSceneUpdate *)self _initWithApplication:v10 request:v9 scene:0 displayStyle:a4 activationMetricsInfo:v8 createIfNeeded:1];

  return v11;
}

- (id)performUpdate
{
  if (!self->_scene)
  {
    v3 = [qword_100336870 sceneManager];
    v4 = [v3 workspace];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000171DC;
    v37[3] = &unk_1002FCAE0;
    v37[4] = self;
    v5 = [v4 createScene:v37];
    scene = self->_scene;
    self->_scene = v5;
  }

  v7 = [(CLBOpenApplicationRequest *)self->_request pptActivationContext];
  v8 = [(CLBOpenApplicationRequest *)self->_request systemCompletion];
  if (([(FBScene *)self->_scene isActive]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(CLBOpenApplicationRequest *)self->_request systemRequest];
    v11 = [v10 options];
    v12 = [v11 dictionary];
    v13 = [v12 bs_safeDictionaryForKey:FBSOpenApplicationOptionKeyDebuggingOptions];

    if ([v13 count])
    {
      v14 = 0;
    }

    else
    {
      v14 = v7 == 0;
    }

    if (v14 && v8 == 0)
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
      v36 = v8;
      [v9 setCompletion:v35];
      [v7 prepareExecutionContext:v9];
    }
  }

  v22 = self->_scene;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000174E4;
  v32[3] = &unk_1002FCB30;
  v32[4] = self;
  v33 = v7;
  v34 = v9;
  v23 = v9;
  v24 = v7;
  [(FBScene *)v22 performUpdate:v32];
  if (v8 && !v23)
  {
    v8[2](v8, 0);
  }

  request = self->_request;
  self->_request = 0;

  activationMetricsInfo = self->_activationMetricsInfo;
  self->_activationMetricsInfo = 0;

  v27 = self->_scene;
  v28 = v27;

  return v27;
}

+ (id)trackStartOfActivationForApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleVersion];
  [v5 cStringUsingEncoding:4];

  v6 = [v4 shortVersionString];
  [v6 cStringUsingEncoding:4];

  v7 = [v4 bundleIdentifier];
  [v7 cStringUsingEncoding:4];

  v18 = 0;
  mach_continuous_time();
  +[NSDate timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [a1 _sceneForApplication:v4];
  v11 = v10;
  if (v10 && ([v10 isActive] & 1) != 0)
  {
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 bundleIdentifier];
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tracking start of activation for application: %@", buf, 0xCu);
    }

    alm_app_will_activate_with_details();
  }

  else
  {
    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 bundleIdentifier];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Tracking start of launch for application: %@", buf, 0xCu);
    }

    alm_app_will_launch_with_details_and_metrics_payload();
    alm_app_will_activate_with_signpost_id();
  }

  v16 = [[CLBActivationMetricsInfo alloc] initWithSignpostID:0 activationEventTime:v18 launchMetricsPayload:v9];

  return v16;
}

- (void)_updateContext:(id)a3 withActivationMetricsInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    [v7 activationEventTime];
    [v8 setUserLaunchEventTime:?];
    [v8 setSignpostID:{objc_msgSend(v7, "signpostID")}];
    v9 = [v7 launchMetricsPayload];
    [v8 setLaunchMetricsPayload:v9];
  }

  else
  {
    v9 = +[CLFLog commonLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100284968(self, v9);
    }
  }
}

- (void)_updateDisplayStyleForSettings:(id)a3
{
  v4 = a3;
  v5 = +[FBDisplayManager mainConfiguration];
  v6 = v5;
  displayStyle = self->_displayStyle;
  if (displayStyle == 1)
  {
    v8 = [v5 clb_displayConfigurationForNonClarityUIApp];
    [v4 setDisplayConfiguration:v8];
    v9 = sub_100006370();
    sub_100027FE0(v9, &v13);
    BSRectWithSize();
    [v4 setFrame:?];
  }

  else if (!displayStyle)
  {
    [v4 setDisplayConfiguration:v5];
    [v6 bounds];
    [v4 setFrame:?];
  }

  v10 = +[CLFLog commonLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(CLBApplicationInfo *)self->_appInfo bundleIdentifier];
    [v4 frame];
    v12 = NSStringFromCGRect(v18);
    *buf = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using scene frame for %@: %@", buf, 0x16u);
  }
}

+ (id)_sceneForApplication:(id)a3
{
  v3 = qword_100336870;
  v4 = a3;
  v5 = [v3 sceneManager];
  v6 = [v5 workspace];
  v7 = [v4 defaultSceneIdentifier];

  v8 = [v6 sceneWithIdentifier:v7];

  return v8;
}

+ (id)_applicationForScene:(id)a3
{
  v3 = [a3 definition];
  v4 = [v3 clientIdentity];
  v5 = [v4 processIdentity];
  v6 = [v5 embeddedApplicationIdentifier];

  v7 = [qword_100336870 appLibrary];
  v8 = [v7 installedApplicationWithBundleIdentifier:v6];

  return v8;
}

@end