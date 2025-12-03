@interface SSSApplication
- (BOOL)runTest:(id)test options:(id)options;
- (id)_actionInActions:(id)actions ofClass:(Class)class;
- (id)_documentUpdateActionInActions:(id)actions;
- (id)_imageIdentifierActionInActions:(id)actions;
- (id)_metadataUpdateActionInActions:(id)actions;
- (id)_pptTestInfos;
- (id)_preheatActionInActions:(id)actions;
- (id)_screenshotActionInActions:(id)actions;
- (void)_handlePlatformSpecificActions:(id)actions forScene:(id)scene withTransitionContext:(id)context;
@end

@implementation SSSApplication

- (id)_pptTestInfos
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 pathForResource:@"testDefinitions" ofType:@"plist"];

  v16 = v3;
  v4 = [NSArray arrayWithContentsOfFile:v3];
  v5 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"testName"];
        v13 = [v11 objectForKey:@"sssNumberOfRequiredScreenshots"];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &off_1000BE588;
        }

        [v5 setObject:v14 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  _pptTestInfos = [(SSSApplication *)self _pptTestInfos];
  v9 = [_pptTestInfos objectForKeyedSubscript:testCopy];
  if (v9)
  {
    v10 = objc_alloc_init(SSUIService);
    [v10 _runPPTNamed:testCopy numberOfRequiredScreenshots:{objc_msgSend(v9, "unsignedIntegerValue")}];
    v11 = dispatch_time(0, 100000000);
    dispatch_after(v11, &_dispatch_main_q, &stru_1000BA040);

    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SSSApplication;
    v12 = [(SSSApplication *)&v14 runTest:testCopy options:optionsCopy];
  }

  return v12;
}

- (id)_actionInActions:(id)actions ofClass:(Class)class
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  actionsCopy = actions;
  v5 = [actionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_screenshotActionInActions:(id)actions
{
  actionsCopy = actions;
  v5 = [(SSSApplication *)self _actionInActions:actionsCopy ofClass:objc_opt_class()];

  return v5;
}

- (id)_imageIdentifierActionInActions:(id)actions
{
  actionsCopy = actions;
  v5 = [(SSSApplication *)self _actionInActions:actionsCopy ofClass:objc_opt_class()];

  return v5;
}

- (id)_metadataUpdateActionInActions:(id)actions
{
  actionsCopy = actions;
  v5 = [(SSSApplication *)self _actionInActions:actionsCopy ofClass:objc_opt_class()];

  return v5;
}

- (id)_documentUpdateActionInActions:(id)actions
{
  actionsCopy = actions;
  v5 = [(SSSApplication *)self _actionInActions:actionsCopy ofClass:objc_opt_class()];

  return v5;
}

- (id)_preheatActionInActions:(id)actions
{
  actionsCopy = actions;
  v5 = [(SSSApplication *)self _actionInActions:actionsCopy ofClass:objc_opt_class()];

  return v5;
}

- (void)_handlePlatformSpecificActions:(id)actions forScene:(id)scene withTransitionContext:(id)context
{
  actionsCopy = actions;
  v7 = [(SSSApplication *)self _screenshotActionInActions:actionsCopy];
  if (v7)
  {
    v8 = _SSSignpostLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SendScreenshot", "", buf, 2u);
    }

    v9 = os_log_create("com.apple.screenshotservices", "Performance");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "END SendScreenshot", buf, 2u);
    }

    info = [v7 info];
    v11 = [info objectForSetting:1];

    if (v11)
    {
      sssAppDelegate = [(SSSApplication *)self sssAppDelegate];
      viewControllerManager = [sssAppDelegate viewControllerManager];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10000FEE8;
      v46[3] = &unk_1000BA068;
      v47 = v7;
      [viewControllerManager receiveEnvironmentDescription:v11 completion:v46];
    }
  }

  v14 = [(SSSApplication *)self _imageIdentifierActionInActions:actionsCopy];
  v15 = v14;
  if (v14)
  {
    info2 = [v14 info];
    v17 = [info2 objectForSetting:2];

    if (v17)
    {
      v18 = os_log_create("com.apple.screenshotservices", "XPC");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        loggableDescription = [v17 loggableDescription];
        *buf = 138412290;
        v49 = loggableDescription;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Service received image identifier update %@", buf, 0xCu);
      }

      v20 = +[SSSScreenshotManager sharedScreenshotManager];
      [v20 processImageIdentifierUpdate:v17];
    }
  }

  v21 = [(SSSApplication *)self _metadataUpdateActionInActions:actionsCopy];
  v22 = v21;
  if (v21)
  {
    info3 = [v21 info];
    v24 = [info3 objectForSetting:5];

    if (v24)
    {
      v25 = os_log_create("com.apple.screenshotservices", "XPC");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        loggableDescription2 = [v24 loggableDescription];
        *buf = 138412290;
        v49 = loggableDescription2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Service received metadata update %@", buf, 0xCu);
      }

      v27 = +[SSSScreenshotManager sharedScreenshotManager];
      [v27 processEnvironmentElementMetadataUpdate:v24];
    }

    v28 = objc_alloc_init(BSMutableSettings);
    [v28 setFlag:BSSettingFlagForBool() forSetting:8];
    v29 = [BSActionResponse responseWithInfo:v28];
    [v22 sendResponse:v29];
  }

  v30 = [(SSSApplication *)self _documentUpdateActionInActions:actionsCopy];
  v31 = v30;
  if (v30)
  {
    info4 = [v30 info];
    v33 = [info4 objectForSetting:6];

    if (v33)
    {
      v34 = os_log_create("com.apple.screenshotservices", "XPC");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        loggableDescription3 = [v33 loggableDescription];
        *buf = 138412290;
        v49 = loggableDescription3;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Service received document update %@", buf, 0xCu);
      }

      v36 = +[SSSScreenshotManager sharedScreenshotManager];
      [v36 processEnvironmentElementDocumentUpdate:v33];
    }
  }

  v37 = [(SSSApplication *)self _preheatActionInActions:actionsCopy];
  v38 = v37;
  if (v37)
  {
    info5 = [v37 info];
    v40 = [info5 objectForSetting:9];
    integerValue = [v40 integerValue];

    v42 = os_log_create("com.apple.screenshotservices", "XPC");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v49 = integerValue;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Service received preheat request for presentation mode: %td", buf, 0xCu);
    }

    sssAppDelegate2 = [(SSSApplication *)self sssAppDelegate];
    viewControllerManager2 = [sssAppDelegate2 viewControllerManager];
    [viewControllerManager2 preheatWithPresentationMode:integerValue];

    v45 = +[BSActionResponse response];
    [v38 sendResponse:v45];
  }
}

@end